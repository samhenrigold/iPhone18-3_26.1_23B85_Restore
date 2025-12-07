uint64_t type metadata accessor for CancellableStitcher(uint64_t a1)
{
  result = qword_1EE162278;
  if (!qword_1EE162278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD3E1AC0@<X0>(uint64_t a1@<X0>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v112 = a3;
  v119 = a1;
  v6 = type metadata accessor for CancellableStitcher(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v95 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = sub_1DD63F598();
  v114 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v122 = &v95 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v121 = &v95 - v11;
  v12 = sub_1DD63F4E8();
  v13 = *(v12 - 8);
  v117 = v12;
  v118 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v113 = (&v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v95 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v115 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v111 = &v95 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v95 - v23);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v95 - v26;
  sub_1DD3C4EB4();
  v28 = type metadata accessor for StitchableInteraction(0);
  if (!__swift_getEnumTagSinglePayload(v27, 1, v28))
  {
    sub_1DD5D624C(v119);
  }

  v126[0] = sub_1DD4D3D50(v29);
  sub_1DD3E0144(v126);
  if (!v4)
  {
    v30 = v126[0];
    v120 = sub_1DD3CC020();
    if (v120)
    {
      sub_1DD408BFC();
      v116 = v30 & 0xC000000000000001;
      v109 = v28;
      if ((v30 & 0xC000000000000001) != 0)
      {
        v31 = MEMORY[0x1E12B2C10](0, v30);
      }

      else
      {
      }

      v32 = v31;
      sub_1DD63F4F8();
      v33 = 0;
      v103 = v32;
      v34 = v117;
      v35 = v118;
      v36 = *(v118 + 88);
      v102 = v118 + 88;
      v101 = v36;
      if (v36(v17, v117) == *MEMORY[0x1E69CF8C8])
      {
        v37 = *(v35 + 96);
        v37(v17, v34);
        v38 = *v17;
        sub_1DD3C4EB4();
        sub_1DD3E2740(v30, v24);
        v40 = v39;
        sub_1DD390754(v24, &qword_1ECCDC1B0, &unk_1DD6454F0);
        v96 = v37;
        v97 = v35 + 96;
        v99 = v40;
        if (qword_1EE165FB0 != -1)
        {
LABEL_47:
          swift_once();
        }

        v108 = v30;
        v100 = v33;
        v52 = sub_1DD63F9F8();
        __swift_project_value_buffer(v52, qword_1EE16F068);
        v53 = v99;

        v54 = sub_1DD63F9D8();
        v55 = sub_1DD640368();

        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          v57 = swift_slowAlloc();
          v126[0] = v57;
          *v56 = 136315138;
          v58 = MEMORY[0x1E12B2430](v53, &type metadata for StitchedContactUserPrompt);
          v60 = v38;
          v61 = sub_1DD39565C(v58, v59, v126);

          *(v56 + 4) = v61;
          v38 = v60;
          _os_log_impl(&dword_1DD38D000, v54, v55, "user prompts: %s", v56, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v57);
          MEMORY[0x1E12B3DA0](v57, -1, -1);
          MEMORY[0x1E12B3DA0](v56, -1, -1);
        }

        v62 = v122;
        v33 = v123;
        v30 = v121;
        v63 = 0;
        v105 = *MEMORY[0x1E69CF930];
        v104 = (v114 + 104);
        v106 = (v114 + 8);
        v107 = v38;
        while (1)
        {
          if (v120 == v63)
          {
            v69 = a4;

            v123 = 0;
            v70 = v100;
            goto LABEL_43;
          }

          if (v116)
          {
            v64 = MEMORY[0x1E12B2C10](v63, v108);
          }

          else
          {
            if (v63 >= *(v108 + 16))
            {
              goto LABEL_46;
            }
          }

          if (__OFADD__(v63, 1))
          {
            __break(1u);
LABEL_46:
            __break(1u);
            goto LABEL_47;
          }

          v114 = v64;
          sub_1DD63F528();
          (*v104)(v62, v105, v33);
          sub_1DD3B2D1C();
          sub_1DD640098();
          sub_1DD640098();
          if (v126[0] == v124 && v126[1] == v125)
          {
            break;
          }

          v110 = sub_1DD640CD8();
          v66 = a4;
          v67 = v27;
          v68 = *v106;
          (*v106)(v62, v33);
          v68(v30, v33);
          v27 = v67;
          a4 = v66;
          v38 = v107;

          if (v110)
          {
            goto LABEL_38;
          }

          ++v63;
          v62 = v122;
          v33 = v123;
          v30 = v121;
        }

        v71 = v62;
        v72 = *v106;
        (*v106)(v71, v33);
        v72(v30, v33);

LABEL_38:

        v73 = v113;
        v74 = v100;
        sub_1DD63F4F8();
        v70 = v74;
        v75 = v118;
        if (v74)
        {

          goto LABEL_18;
        }

        v76 = v117;
        v69 = a4;
        if (v101(v73, v117) == *MEMORY[0x1E69CF8D0])
        {
          v96(v73, v76);
          v123 = *v73;
        }

        else
        {
          (*(v75 + 8))(v73, v76);
          v123 = 0;
        }

LABEL_43:
        v98 = v27;
        v77 = v99;

        v122 = sub_1DD3DEAA8(v119, v77, v27);
        v100 = v70;

        v78 = v127[1];
        v121 = *v127;
        v127 = v78;

        v79 = sub_1DD63F548();
        v119 = v80;
        v120 = v79;
        v81 = v111;
        sub_1DD3C4EB4();
        sub_1DD3C4EB4();
        v82 = type metadata accessor for StitchedContactData(0);
        v83 = v82[7];
        v84 = v69;
        __swift_storeEnumTagSinglePayload(v69 + v83, 1, 1, v109);
        v85 = v69 + v82[8];
        v85[6] = 0;
        *(v85 + 2) = 0;
        *v85 = 2;
        v87 = v82[9];
        v86 = v82[10];
        *(v69 + v86) = 0;
        v88 = v82[11];
        *(v84 + v88) = 0;
        v89 = v82[12];
        *(v84 + v89) = 0;
        v90 = v82[13];
        *(v84 + v90) = 0;
        v91 = v127;
        *v84 = v121;
        v84[1] = v91;
        v92 = v119;
        v84[2] = v120;
        v84[3] = v92;
        v84[4] = v122;
        sub_1DD3E7A30(v81, v84 + v83);
        *(v84 + v87) = v123;

        *(v84 + v86) = sub_1DD5DAE88() & 1;
        *(v84 + v88) = sub_1DD5DB06C();
        *(v84 + v89) = sub_1DD5DB1C4() & 1;
        *(v84 + v90) = sub_1DD5DB410() & 1;
        v93 = v115;
        v94 = sub_1DD5DB828(v115);

        sub_1DD390754(v93, &qword_1ECCDC1B0, &unk_1DD6454F0);
        sub_1DD390754(v81, &qword_1ECCDC1B0, &unk_1DD6454F0);
        v85[6] = BYTE6(v94);
        *(v85 + 2) = WORD2(v94);
        *v85 = v94;
        v50 = v98;
        return sub_1DD390754(v50, &qword_1ECCDC1B0, &unk_1DD6454F0);
      }

      (*(v35 + 8))(v17, v34);
    }

    else
    {
    }

    if (qword_1EE165FB0 != -1)
    {
      swift_once();
    }

    v41 = sub_1DD63F9F8();
    __swift_project_value_buffer(v41, qword_1EE16F068);
    sub_1DD3E7B48();
    v42 = sub_1DD63F9D8();
    v43 = sub_1DD640368();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v126[0] = v45;
      *v44 = 136315138;
      v46 = *v8;
      v47 = v8[1];

      sub_1DD3E7BA0(v8, type metadata accessor for CancellableStitcher);
      v48 = sub_1DD39565C(v46, v47, v126);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_1DD38D000, v42, v43, "cannot stitch task with no start event. taskId=%s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1E12B3DA0](v45, -1, -1);
      MEMORY[0x1E12B3DA0](v44, -1, -1);
    }

    else
    {

      sub_1DD3E7BA0(v8, type metadata accessor for CancellableStitcher);
    }

    sub_1DD3E6100();
    swift_allocError();
    *v49 = 2;
    swift_willThrow();
LABEL_18:
    v50 = v27;
    return sub_1DD390754(v50, &qword_1ECCDC1B0, &unk_1DD6454F0);
  }

  __break(1u);
  return result;
}

void sub_1DD3E2740(uint64_t a1, uint64_t (**a2)(uint64_t *, uint64_t))
{
  v323 = a2;
  v314 = sub_1DD63F5F8();
  v320 = *(v314 - 8);
  MEMORY[0x1EEE9AC00](v314 - 8);
  OUTLINED_FUNCTION_2_1();
  v307 = v5;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_18_0();
  v306 = v7;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_16_3();
  v313 = v9;
  v10 = OUTLINED_FUNCTION_6_2();
  v11 = type metadata accessor for CancellableStitcher(v10);
  v12 = OUTLINED_FUNCTION_3(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_2_1();
  v312 = v13;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_0();
  v301 = v15;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_16_3();
  v304 = v17;
  OUTLINED_FUNCTION_6_2();
  v297 = sub_1DD63F5E8();
  OUTLINED_FUNCTION_0();
  *&v319 = v18;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_2();
  v296 = v21 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  v23 = OUTLINED_FUNCTION_3(v22);
  MEMORY[0x1EEE9AC00](v23);
  v322 = &v295 - v24;
  v25 = OUTLINED_FUNCTION_6_2();
  v321 = type metadata accessor for StitchableInteraction(v25);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_2();
  v317 = v28 - v27;
  OUTLINED_FUNCTION_6_2();
  v29 = sub_1DD63F4E8();
  OUTLINED_FUNCTION_0();
  v336 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_2_1();
  v325 = v32;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_18_0();
  v318 = v34;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v295 - v36;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_18_0();
  v327 = v39;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_0();
  v329 = v41;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v295 - v43;
  v45 = MEMORY[0x1E69E7CC0];
  v343 = MEMORY[0x1E69E7CC0];
  v334 = a1;
  v46 = sub_1DD3CC020();
  v335 = v29;
  v332 = v37;
  if (!v46)
  {
LABEL_15:
    v58 = v327;
    v333 = *(v45 + 16);
    v334 = v45;
    v59 = v329;
    if (v333)
    {
      v60 = 0;
      OUTLINED_FUNCTION_46();
      v3 = (v45 + v61);
      v331 = (v62 + 11);
      LODWORD(v330) = *MEMORY[0x1E69CF8D0];
      v328 = v62 + 1;
      v324 = v62 + 12;
      v326 = MEMORY[0x1E69E7CC0];
      while (v60 < *(v45 + 16))
      {
        v63 = v336;
        (*(v336 + 16))(v59, &v3[*(v336 + 72) * v60], v29);
        v64 = (*(v63 + 88))(v59, v29);
        if (v64 == v330)
        {
          (*v324)(v59, v29);
          sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
          sub_1DD39638C(0, &qword_1EE166228, 0x1E696E880);
          v65 = sub_1DD63F568();
          v67 = v66;
          v2 = v337;
          v68 = sub_1DD6403D8();
          v337 = v2;
          if (v2)
          {

            sub_1DD3AD790(v65, v67);

            goto LABEL_32;
          }

          v69 = v68;
          sub_1DD3AD790(v65, v67);
          v58 = v327;
          if (v69)
          {

            v326 = sub_1DD5D6624(v69);
          }

          v45 = v334;
          v29 = v335;
          v37 = v332;
          v59 = v329;
        }

        else
        {
          (*v328)(v59, v29);
        }

        if (v333 == ++v60)
        {
          goto LABEL_27;
        }
      }

LABEL_147:
      __break(1u);
LABEL_148:
      __break(1u);
LABEL_149:
      __break(1u);
      goto LABEL_150;
    }

    v326 = MEMORY[0x1E69E7CC0];
LABEL_27:
    if (*(v326 + 16))
    {
      v70 = v325;
    }

    else
    {
      v71 = v322;
      sub_1DD3C4EB4();
      v72 = v321;
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v71, 1, v321);
      v70 = v325;
      if (EnumTagSinglePayload == 1)
      {
        sub_1DD390754(v71, &qword_1ECCDC1B0, &unk_1DD6454F0);
      }

      else
      {

        v74 = v317;
        sub_1DD3E63AC();
        v326 = *(v74 + *(v72 + 36));

        sub_1DD3E7BA0(v74, type metadata accessor for StitchableInteraction);
      }
    }

    if (!v333)
    {
      v320 = MEMORY[0x1E69E7CC0];
LABEL_142:

      OUTLINED_FUNCTION_24_2();
      return;
    }

    v75 = 0;
    v324 = (v45 + ((*(v336 + 80) + 32) & ~*(v336 + 80)));
    v76 = (v336 + 16);
    v331 = (v336 + 8);
    v323 = (v336 + 88);
    v321 = v336 + 96;
    LODWORD(v322) = *MEMORY[0x1E69CF8E8];
    v295 = v319 + 8;
    v311 = v320 + 11;
    v308 = v320 + 1;
    v315 = *MEMORY[0x1E69CF8F0];
    v303 = v320 + 12;
    v298 = v320 + 2;
    v320 = MEMORY[0x1E69E7CC0];
    v310 = *MEMORY[0x1E69CF8D8];
    v302 = *MEMORY[0x1E69CF8E0];
    v309 = *MEMORY[0x1E69CF960];
    *&v47 = 136315138;
    v319 = v47;
    *&v47 = 136315394;
    v305 = v47;
    v328 = (v336 + 16);
    while (1)
    {
      if (v75 >= *(v45 + 16))
      {
        goto LABEL_148;
      }

      v77 = *(v336 + 72);
      v329 = v75;
      v78 = *(v336 + 16);
      v78(v58, v324 + v77 * v75, v29);
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v79 = sub_1DD63F9F8();
      __swift_project_value_buffer(v79, qword_1EE16F068);
      v80 = OUTLINED_FUNCTION_40_2();
      v78(v80, v58, v29);
      v81 = sub_1DD63F9D8();
      v82 = sub_1DD640368();
      if (OUTLINED_FUNCTION_9_0(v82))
      {
        OUTLINED_FUNCTION_18_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_14_10();
        v83 = swift_slowAlloc();
        *v76 = OUTLINED_FUNCTION_37_4(v83).n128_u32[0];
        v78(v318, v37, v29);
        v84 = sub_1DD63FE38();
        v86 = v85;
        v330 = *v331;
        v330(v332, v29);
        v87 = sub_1DD39565C(v84, v86, &v338);
        v37 = v332;

        *(v76 + 4) = v87;
        v70 = v325;
        OUTLINED_FUNCTION_33_2(&dword_1DD38D000, v81, v82, "\n\n=====\nnew intent event content: %s\n");
        _os_log_impl(v88, v89, v90, v91, v92, v93);
        __swift_destroy_boxed_opaque_existential_1(v83);
        v58 = v327;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0](v94);
        v76 = v328;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0](v95);
      }

      else
      {

        v330 = *v331;
        v330(v37, v29);
      }

      v78(v70, v58, v29);
      v96 = (*v323)(v70, v29);
      v45 = v334;
      if (v96 != v322)
      {
        break;
      }

      v97 = OUTLINED_FUNCTION_10_13();
      v98(v97);
      v99 = sub_1DD3E54A8(*v70, v326);
      if (v102 != -1)
      {
        v103 = v102;
        v104 = v99;
        v105 = OUTLINED_FUNCTION_54_1(v100, v101, &v344, v99, v102);
        v337 = v2;
        if (v2)
        {
          v330(v58, v335);

          v289 = v104;
          v290 = v316;
          v291 = v317;
          v292 = v103;
LABEL_145:
          sub_1DD3E6340(v289, v290, v291, v292);
          OUTLINED_FUNCTION_24_2();

          return;
        }

        v107 = v105;
        v108 = v106;

        v109 = sub_1DD63F9D8();
        v3 = sub_1DD640368();

        if (os_log_type_enabled(v109, v3))
        {
          OUTLINED_FUNCTION_18_1();
          v110 = swift_slowAlloc();
          OUTLINED_FUNCTION_17_0();
          v111 = swift_slowAlloc();
          *v110 = OUTLINED_FUNCTION_37_4(v111).n128_u32[0];
          v112 = sub_1DD39565C(v107, v108, &v338);

          *(v110 + 4) = v112;
          _os_log_impl(&dword_1DD38D000, v109, v3, "%s", v110, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v111);
          v37 = v332;
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
          v58 = v327;
          OUTLINED_FUNCTION_13_0();
          MEMORY[0x1E12B3DA0]();
        }

        else
        {
        }

        OUTLINED_FUNCTION_5_13();
        swift_beginAccess();
        sub_1DD3BDF7C();
        v141 = v343[2];
        sub_1DD3BE140(v141);
        v142 = v343;
        v343[2] = v141 + 1;
        v143 = &v142[4 * v141];
        v144 = v316;
        v143[4] = v104;
        v143[5] = v144;
        v143[6] = v317;
        *(v143 + 56) = v103;
        v320 = v142;
        v343 = v142;
        swift_endAccess();

        v29 = v335;
        v330(v58, v335);
        v70 = v325;
        goto LABEL_75;
      }

      v139 = OUTLINED_FUNCTION_11_10();
      v140(v139);

      v70 = v325;
LABEL_76:
      v76 = v328;
      v178 = v329;
LABEL_114:
      v75 = v178 + 1;
      if (v333 == v75)
      {
        goto LABEL_142;
      }
    }

    OUTLINED_FUNCTION_74();
    if (!v122)
    {
      OUTLINED_FUNCTION_74();
      if (v122)
      {
        v123 = OUTLINED_FUNCTION_10_13();
        v124(v123);
        v125 = *v70;
        v126 = sub_1DD3E5358(*v70, v326);
        if (v129 == -1)
        {
          v192 = OUTLINED_FUNCTION_11_10();
          v193(v192);
        }

        else
        {
          v130 = v129;
          v316 = v125;
          v299 = v126;
          v131 = OUTLINED_FUNCTION_54_1(v127, v128, &v329, v126, v129);
          v337 = v2;
          if (v2)
          {
            v293 = OUTLINED_FUNCTION_11_10();
            v294(v293);

            v289 = v299;
            v290 = v300;
            v291 = v317;
            v292 = v130;
            goto LABEL_145;
          }

          v133 = v131;
          v134 = v132;

          v135 = sub_1DD63F9D8();
          v136 = sub_1DD640368();

          if (os_log_type_enabled(v135, v136))
          {
            OUTLINED_FUNCTION_18_1();
            v137 = swift_slowAlloc();
            OUTLINED_FUNCTION_17_0();
            v3 = swift_slowAlloc();
            *v137 = OUTLINED_FUNCTION_37_4(v3).n128_u32[0];
            v138 = sub_1DD39565C(v133, v134, &v338);

            *(v137 + 4) = v138;
            _os_log_impl(&dword_1DD38D000, v135, v136, "%s", v137, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v3);
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
            v70 = v325;
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
          }

          else
          {
          }

          OUTLINED_FUNCTION_5_13();
          swift_beginAccess();
          OUTLINED_FUNCTION_24_2();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v58 = v327;
          v76 = v328;
          if (isUniquelyReferenced_nonNull_native)
          {
            v197 = v320;
          }

          else
          {
            OUTLINED_FUNCTION_12();
            sub_1DD3BF440();
            v197 = isUniquelyReferenced_nonNull_native;
          }

          v199 = *(v197 + 16);
          v198 = *(v197 + 24);
          v200 = v317;
          if (v199 >= v198 >> 1)
          {
            OUTLINED_FUNCTION_15_9(v198);
            sub_1DD3BF440();
            v200 = v317;
            v197 = isUniquelyReferenced_nonNull_native;
          }

          *(v197 + 16) = v199 + 1;
          v201 = v197 + 32 * v199;
          v202 = v300;
          *(v201 + 32) = v299;
          *(v201 + 40) = v202;
          *(v201 + 48) = v200;
          *(v201 + 56) = v130;
          OUTLINED_FUNCTION_27_4(isUniquelyReferenced_nonNull_native, v195, v196, v197);

          v203 = OUTLINED_FUNCTION_11_10();
          v204(v203);
LABEL_112:
          v45 = v334;
        }

LABEL_113:
        v178 = v329;
        goto LABEL_114;
      }

      OUTLINED_FUNCTION_74();
      if (!v164)
      {
        v3 = v330;
        v330(v58, v29);
        (v3)(v70, v29);
        goto LABEL_113;
      }

      v165 = OUTLINED_FUNCTION_10_13();
      v166(v165);
      v167 = v320[2];
      if (v167)
      {
        v168 = &v320[4 * v167];
        if (!*(v168 + 24))
        {
          v211 = *v168;
          v212 = v168[1];
          OUTLINED_FUNCTION_5_13();
          v3 = v213;
          swift_beginAccess();
          v214 = *(v3 + 2);
          OUTLINED_FUNCTION_48_1();
          sub_1DD3E7AA0(v215, v216, v217, 0);
          if (v214)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              OUTLINED_FUNCTION_24_2();
              sub_1DD586A00();
              OUTLINED_FUNCTION_47_1(v285);
            }

            v3 = v320;
            v218 = v320[2];
            if (!v218)
            {
              goto LABEL_151;
            }

            v219 = v218 - 1;
            v220 = &v320[4 * v219];
            v221 = v220[4];
            v222 = v220[5];
            v223 = v220[6];
            v320[2] = v219;
            sub_1DD3E6354(v221, v222, v223, *(v220 + 56));
            v343 = v3;
          }

          swift_endAccess();
          v224 = v296;
          sub_1DD63F5B8();
          v225 = sub_1DD5DAC50(v211, v212, v224);
          v320 = v226;
          v228 = v227;
          LODWORD(v317) = v229;
          OUTLINED_FUNCTION_48_1();
          sub_1DD3E6354(v230, v231, v232, 0);
          OUTLINED_FUNCTION_16_0();
          v233(v224, v297);
          OUTLINED_FUNCTION_5_13();
          swift_beginAccess();
          v234 = v3;
          v235 = swift_isUniquelyReferenced_nonNull_native();
          if ((v235 & 1) == 0)
          {
            OUTLINED_FUNCTION_12();
            sub_1DD3BF440();
            v234 = v235;
          }

          v70 = v325;
          v58 = v327;
          v238 = v234;
          v240 = v234[2];
          v239 = v234[3];
          if (v240 >= v239 >> 1)
          {
            OUTLINED_FUNCTION_15_9(v239);
            sub_1DD3BF440();
            v238 = v235;
          }

          *(v238 + 16) = v240 + 1;
          v241 = v238 + 32 * v240;
          v242 = v320;
          *(v241 + 32) = v225;
          *(v241 + 40) = v242;
          *(v241 + 48) = v228;
          *(v241 + 56) = v317;
          OUTLINED_FUNCTION_27_4(v235, v236, v237, v238);

          v243 = OUTLINED_FUNCTION_11_10();
          v244(v243);
          goto LABEL_74;
        }
      }

      OUTLINED_FUNCTION_1_18();
      v169 = v304;
      sub_1DD3E7B48();
      v170 = sub_1DD63F9D8();
      v171 = sub_1DD640378();
      if (!OUTLINED_FUNCTION_29_2(v171))
      {

LABEL_111:
        OUTLINED_FUNCTION_0_26();
        sub_1DD3E7BA0(v169, v248);
        v58 = v327;
        v249 = OUTLINED_FUNCTION_11_10();
        v250(v249);
        v37 = v332;
        goto LABEL_112;
      }

      OUTLINED_FUNCTION_43_2();
      v172 = OUTLINED_FUNCTION_42_1();
      OUTLINED_FUNCTION_31_4(v172);
      OUTLINED_FUNCTION_0_26();
      sub_1DD3E7BA0(v169, v173);
      v174 = sub_1DD39565C(v82, v3, &v342);

      OUTLINED_FUNCTION_30_5();
      if (v175)
      {
        OUTLINED_FUNCTION_25_0(v175);
      }

      else
      {
        OUTLINED_FUNCTION_49_1();
      }

      v338 = v174;
      v339 = v3;
      v340 = v169;
      v341 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1D0, &qword_1DD645520);
      v245 = sub_1DD63FE38();
      v3 = sub_1DD39565C(v245, v246, &v342);

      *(v76 + 14) = v3;
      _os_log_impl(&dword_1DD38D000, v170, v58, "confirmation result with invalid offer. taskId=%s offer=%s", v76, 0x16u);
      OUTLINED_FUNCTION_41_1();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      v247 = OUTLINED_FUNCTION_8_6();
      MEMORY[0x1E12B3DA0](v247);

      goto LABEL_123;
    }

    v113 = OUTLINED_FUNCTION_10_13();
    v114(v113);
    v115 = v313;
    sub_1DD63F5D8();
    OUTLINED_FUNCTION_16_0();
    v116 = v314;
    v117(v115, v314);
    OUTLINED_FUNCTION_74();
    if (!v122)
    {
      OUTLINED_FUNCTION_16_0();
      v145(v115, v116);
LABEL_62:
      OUTLINED_FUNCTION_1_18();
      v146 = v312;
      sub_1DD3E7B48();

      v147 = sub_1DD63F9D8();
      v148 = sub_1DD640378();

      if (os_log_type_enabled(v147, v148))
      {
        v149 = OUTLINED_FUNCTION_43_2();
        v3 = swift_slowAlloc();
        v338 = v3;
        *v149 = v305;

        OUTLINED_FUNCTION_0_26();
        sub_1DD3E7BA0(v146, v150);
        v151 = OUTLINED_FUNCTION_15_0();
        v154 = sub_1DD39565C(v151, v152, v153);

        *(v149 + 4) = v154;
        *(v149 + 12) = 2080;
        v155 = v306;
        sub_1DD63F5D8();
        OUTLINED_FUNCTION_16_0();
        v156 = v314;
        v157(v307, v155, v314);
        sub_1DD63FE38();
        OUTLINED_FUNCTION_16_0();
        v158 = v155;
        v29 = v335;
        v159(v158, v156);
        v160 = OUTLINED_FUNCTION_15_0();
        v163 = sub_1DD39565C(v160, v161, v162);

        *(v149 + 14) = v163;
        _os_log_impl(&dword_1DD38D000, v147, v148, "disambiguation result is invalid. taskId=%s result=%s", v149, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v58 = v327;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {

        OUTLINED_FUNCTION_0_26();
        sub_1DD3E7BA0(v146, v176);
      }

      v177 = v58;
      goto LABEL_73;
    }

    OUTLINED_FUNCTION_16_0();
    v118(v115, v116);
    v120 = *v115;
    v119 = v115[1];
    sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
    sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
    v2 = v337;
    v121 = sub_1DD6403D8();
    if (v2)
    {

      sub_1DD3AD790(v120, v119);
      v337 = 0;
      goto LABEL_62;
    }

    v179 = v121;
    v337 = 0;
    if (!v121)
    {
      sub_1DD3AD790(v120, v119);
      goto LABEL_62;
    }

    v316 = v120;
    v317 = v119;
    v180 = v320[2];
    v169 = v301;
    v76 = v328;
    if (v180)
    {
      v181 = &v320[4 * v180];
      v58 = *v181;
      v182 = *(v181 + 24);
      if (v182 == 2)
      {

        OUTLINED_FUNCTION_5_13();
        swift_beginAccess();
        if (*(OUTLINED_FUNCTION_24_2() + 16))
        {
          v251 = swift_isUniquelyReferenced_nonNull_native();
          v37 = v332;
          if ((v251 & 1) == 0)
          {
            OUTLINED_FUNCTION_24_2();
            sub_1DD586A00();
            OUTLINED_FUNCTION_47_1(v288);
          }

          v252 = v320;
          v253 = v320[2];
          if (!v253)
          {
            goto LABEL_152;
          }

          v254 = v179;
          v255 = v253 - 1;
          v256 = &v320[4 * v255];
          v257 = v256[4];
          v258 = v256[5];
          v259 = v256[6];
          v320[2] = v255;
          v260 = v252;
          sub_1DD3E6354(v257, v258, v259, *(v256 + 56));
          v343 = v260;
          v179 = v254;
        }

        else
        {
          v37 = v332;
        }

        swift_endAccess();
        v275 = [v179 personHandle];
        if (v275)
        {
          v299 = sub_1DD3E79C0(v275);
          v277 = v276;
        }

        else
        {
          v299 = 0;
          v277 = 0;
        }

        OUTLINED_FUNCTION_5_13();
        swift_beginAccess();
        OUTLINED_FUNCTION_24_2();
        v268 = swift_isUniquelyReferenced_nonNull_native();
        v278 = v58;
        v3 = v179;
        if ((v268 & 1) == 0)
        {
          OUTLINED_FUNCTION_12();
          sub_1DD3BF440();
          v268 = OUTLINED_FUNCTION_47_1(v286);
        }

        v271 = v320;
        v280 = v320[2];
        v279 = v320[3];
        if (v280 >= v279 >> 1)
        {
          OUTLINED_FUNCTION_15_9(v279);
          sub_1DD3BF440();
          v271 = v268;
        }

        *(v271 + 16) = v280 + 1;
        v281 = v271 + 32 * v280;
        v282 = v299;
        *(v281 + 32) = v278;
        *(v281 + 40) = v282;
        *(v281 + 48) = v277;
        *(v281 + 56) = 2;
        goto LABEL_139;
      }

      if (v182 == 1)
      {

        OUTLINED_FUNCTION_5_13();
        swift_beginAccess();
        v183 = OUTLINED_FUNCTION_24_2();
        v184 = *(v183 + 16);
        v37 = v332;
        v300 = v58;
        if (v184)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_24_2();
            sub_1DD586A00();
            OUTLINED_FUNCTION_47_1(v287);
          }

          v185 = v320;
          v186 = v320[2];
          if (!v186)
          {
            goto LABEL_153;
          }

          v187 = v186 - 1;
          v188 = &v320[4 * v187];
          v189 = v188[4];
          v190 = v188[5];
          v191 = v188[6];
          v320[2] = v187;
          sub_1DD3E6354(v189, v190, v191, *(v188 + 56));
          v343 = v185;
        }

        else
        {
          v185 = v183;
        }

        swift_endAccess();
        v3 = v179;
        v264 = sub_1DD640568();
        v266 = v265;
        OUTLINED_FUNCTION_5_13();
        swift_beginAccess();
        v267 = v185;
        v268 = swift_isUniquelyReferenced_nonNull_native();
        if ((v268 & 1) == 0)
        {
          OUTLINED_FUNCTION_12();
          sub_1DD3BF440();
          v267 = v268;
        }

        v271 = v267;
        v272 = *(v267 + 16);
        v273 = *(v271 + 24);
        if (v272 >= v273 >> 1)
        {
          OUTLINED_FUNCTION_23_4(v273);
          sub_1DD3BF440();
          v271 = v268;
        }

        *(v271 + 16) = v272 + 1;
        v274 = v271 + 32 * v272;
        *(v274 + 32) = v300;
        *(v274 + 40) = v264;
        *(v274 + 48) = v266;
        *(v274 + 56) = 1;
LABEL_139:
        OUTLINED_FUNCTION_27_4(v268, v269, v270, v271);
        OUTLINED_FUNCTION_26_6();

        v58 = v327;
        v283 = OUTLINED_FUNCTION_11_10();
        v284(v283);
        goto LABEL_75;
      }
    }

    OUTLINED_FUNCTION_1_18();
    sub_1DD3E7B48();
    v205 = sub_1DD63F9D8();
    v206 = sub_1DD640378();
    if (!OUTLINED_FUNCTION_29_2(v206))
    {
      OUTLINED_FUNCTION_26_6();

      goto LABEL_111;
    }

    v300 = v179;
    OUTLINED_FUNCTION_43_2();
    v207 = OUTLINED_FUNCTION_42_1();
    OUTLINED_FUNCTION_31_4(v207);
    OUTLINED_FUNCTION_0_26();
    sub_1DD3E7BA0(v169, v208);
    v209 = sub_1DD39565C(v179, v3, &v342);

    OUTLINED_FUNCTION_30_5();
    if (v210)
    {
      OUTLINED_FUNCTION_25_0(v210);
    }

    else
    {
      OUTLINED_FUNCTION_49_1();
    }

    v338 = v209;
    v339 = v3;
    v340 = v169;
    v341 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1D0, &qword_1DD645520);
    v261 = sub_1DD63FE38();
    v3 = sub_1DD39565C(v261, v262, &v342);

    *(v76 + 14) = v3;
    _os_log_impl(&dword_1DD38D000, v205, v58, "disambiguation result with invalid offer. taskId=%s offer=%s", v76, 0x16u);
    OUTLINED_FUNCTION_41_1();
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    v263 = OUTLINED_FUNCTION_8_6();
    MEMORY[0x1E12B3DA0](v263);
    OUTLINED_FUNCTION_26_6();

LABEL_123:
    v58 = v327;
    v177 = v327;
    v29 = v335;
LABEL_73:
    v330(v177, v29);
    v70 = v325;
LABEL_74:
    v37 = v332;
LABEL_75:
    v45 = v334;
    goto LABEL_76;
  }

  v48 = v46;
  v338 = v45;
  sub_1DD42B6D0(0, v46 & ~(v46 >> 63), 0);
  if (v48 < 0)
  {
LABEL_150:
    __break(1u);
LABEL_151:
    __break(1u);
LABEL_152:
    __break(1u);
LABEL_153:
    __break(1u);
    return;
  }

  v49 = 0;
  v45 = v338;
  v50 = v334 & 0xC000000000000001;
  v51 = v334 & 0xFFFFFFFFFFFFFF8;
  v333 = v336 + 32;
  while (1)
  {
    v3 = (v49 + 1);
    if (__OFADD__(v49, 1))
    {
      __break(1u);
      goto LABEL_147;
    }

    if (v50)
    {
      v52 = v45;
      MEMORY[0x1E12B2C10](v49, v334);
    }

    else
    {
      if (v49 >= *(v51 + 16))
      {
        goto LABEL_149;
      }

      v52 = v45;
    }

    v2 = v337;
    sub_1DD63F4F8();
    v337 = v2;
    if (v2)
    {
      break;
    }

    v45 = v52;
    v338 = v52;
    v54 = *(v52 + 16);
    v53 = *(v52 + 24);
    if (v54 >= v53 >> 1)
    {
      sub_1DD42B6D0(v53 > 1, v54 + 1, 1);
      v45 = v338;
    }

    *(v45 + 16) = v54 + 1;
    OUTLINED_FUNCTION_46();
    v57 = v45 + v55 + *(v56 + 72) * v54;
    v29 = v335;
    (*(v56 + 32))(v57, v44, v335);
    ++v49;
    if (v3 == v48)
    {
      v37 = v332;
      goto LABEL_15;
    }
  }

LABEL_32:
}

uint64_t sub_1DD3E4118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v90 = a3;
  v95 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v89 - v8;
  v94 = type metadata accessor for StitchableInteraction(0);
  MEMORY[0x1EEE9AC00](v94);
  v92 = &v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v93 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1C8, qword_1DD64ADD0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v89 - v13;
  v15 = type metadata accessor for ContactResolverRunTimeData(0);
  sub_1DD3C4EB4();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBEE0, &unk_1DD645510);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, 1, v16);
  v99 = a1;
  v96 = v15;
  if (EnumTagSinglePayload == 1)
  {
    sub_1DD390754(v14, &qword_1ECCDC1C8, qword_1DD64ADD0);
    v18 = sub_1DD556FCC();
  }

  else
  {
    v18 = sub_1DD556FCC();
    sub_1DD390754(v14, &qword_1ECCDBEE0, &unk_1DD645510);
  }

  v19 = *(a2 + 16);
  v20 = (a2 + 56);
  v21 = v19;
  if (v19)
  {
    while (1)
    {
      v22 = *(v20 - 3);
      v23 = *(v20 - 2);
      v24 = *(v20 - 1);
      v25 = *v20;
      v97[0] = v22;
      v97[1] = v23;
      v97[2] = v24;
      v98 = v25;
      sub_1DD3E7AA0(v22, v23, v24, v25);
      if (sub_1DD3E4A04(v97, v18))
      {
        break;
      }

      sub_1DD3E6354(v22, v23, v24, v25);
      v20 += 32;
      if (!--v21)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:

    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = -1;
  }

  if (*(v99 + *(v96 + 48)) == 1 && !v19)
  {
    v26 = *(v99 + 296);
    if (*(v26 + 16) == 1)
    {
      sub_1DD3E6340(v22, v23, v24, v25);
      if (!*(v26 + 16))
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v96 = v4;
      v27 = *(type metadata accessor for ContactMatchRuntimeData(0) - 8);
      v28 = (v26 + ((*(v27 + 80) + 32) & ~*(v27 + 80)));
      v22 = *v28;
      v23 = v28[1];
      v29 = *(v28 + *(type metadata accessor for Contact(0) + 80));
      v30 = *(v29 + 16);
      if (v30)
      {
        v97[0] = MEMORY[0x1E69E7CC0];

        sub_1DD42A2D4(0, v30, 0, v31, v32, v33, v34);
        v35 = v97[0];
        v89 = v29;
        v36 = (v29 + 96);
        do
        {
          v37 = *(v36 - 1);
          v38 = *v36;
          v97[0] = v35;
          v39 = *(v35 + 16);
          v40 = *(v35 + 24);

          if (v39 >= v40 >> 1)
          {
            sub_1DD42A2D4(v40 > 1, v39 + 1, 1, v41, v42, v43, v44);
            v35 = v97[0];
          }

          *(v35 + 16) = v39 + 1;
          v45 = v35 + 16 * v39;
          *(v45 + 32) = v37;
          *(v45 + 40) = v38;
          v36 += 10;
          --v30;
        }

        while (v30);
      }

      else
      {

        v35 = MEMORY[0x1E69E7CC0];
      }

      v46 = v91;
      sub_1DD3C4EB4();
      v47 = v94;
      v48 = __swift_getEnumTagSinglePayload(v46, 1, v94);
      v49 = v92;
      if (v48 == 1)
      {

        sub_1DD390754(v46, &qword_1ECCDC1B0, &unk_1DD6454F0);
        if (qword_1EE165FB0 == -1)
        {
LABEL_22:
          v50 = sub_1DD63F9F8();
          __swift_project_value_buffer(v50, qword_1EE16F068);
          v51 = sub_1DD63F9D8();
          v52 = sub_1DD640368();
          if (os_log_type_enabled(v51, v52))
          {
            v53 = swift_slowAlloc();
            *v53 = 0;
            _os_log_impl(&dword_1DD38D000, v51, v52, "setting an abandoned implicit confirmation", v53, 2u);
            MEMORY[0x1E12B3DA0](v53, -1, -1);
          }

          v25 = 0;
          v24 = 3;
          goto LABEL_43;
        }

LABEL_46:
        swift_once();
        goto LABEL_22;
      }

      v90 = v35;
      v54 = v93;
      sub_1DD3E63AC();
      if (qword_1EE165FB0 != -1)
      {
        swift_once();
      }

      v55 = sub_1DD63F9F8();
      __swift_project_value_buffer(v55, qword_1EE16F068);
      sub_1DD3E7B48();

      v56 = v90;

      v57 = sub_1DD63F9D8();
      v58 = sub_1DD640368();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v97[0] = v91;
        *v59 = 136315650;
        v60 = MEMORY[0x1E12B2430](*(v49 + *(v47 + 36)), &type metadata for StitchablePerson);
        v61 = v49;
        v63 = v62;
        sub_1DD3E7BA0(v61, type metadata accessor for StitchableInteraction);
        v64 = sub_1DD39565C(v60, v63, v97);

        *(v59 + 4) = v64;
        *(v59 + 12) = 2080;
        *(v59 + 14) = sub_1DD39565C(v22, v23, v97);
        *(v59 + 22) = 2080;
        v54 = v93;
        v65 = MEMORY[0x1E12B2430](v56, MEMORY[0x1E69E6158]);
        v67 = sub_1DD39565C(v65, v66, v97);

        *(v59 + 24) = v67;
        v47 = v94;
        _os_log_impl(&dword_1DD38D000, v57, v58, "setting an implicit confirmation:\ninteraction people: %s\ncontact id: %s\ncontact handles: %s", v59, 0x20u);
        v68 = v91;
        swift_arrayDestroy();
        MEMORY[0x1E12B3DA0](v68, -1, -1);
        MEMORY[0x1E12B3DA0](v59, -1, -1);
      }

      else
      {

        sub_1DD3E7BA0(v49, type metadata accessor for StitchableInteraction);
      }

      v69 = 0;
      v70 = *(v54 + *(v47 + 36));
      v71 = *(v70 + 16);
      v72 = v70 - 32;
      v73 = MEMORY[0x1E69E7CC0];
LABEL_31:
      v74 = v72 + 80 * v69;
      while (v71 != v69)
      {
        if (v69 >= *(v70 + 16))
        {
          __break(1u);
          goto LABEL_45;
        }

        v75 = (v74 + 80);
        ++v69;
        v76 = *(v74 + 88);
        v74 += 80;
        if (v76)
        {
          v94 = v72;
          v77 = *v75;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD3BE2A4();
            v73 = v81;
          }

          v78 = *(v73 + 16);
          v79 = (v78 + 1);
          if (v78 >= *(v73 + 24) >> 1)
          {
            v92 = (v78 + 1);
            sub_1DD3BE2A4();
            v79 = v92;
            v73 = v82;
          }

          *(v73 + 16) = v79;
          v80 = v73 + 16 * v78;
          *(v80 + 32) = v77;
          *(v80 + 40) = v76;
          v54 = v93;
          v72 = v94;
          goto LABEL_31;
        }
      }

      v83 = sub_1DD41859C(v73);
      v84 = sub_1DD3E72FC(v90, v83);

      sub_1DD3E7BA0(v54, type metadata accessor for StitchableInteraction);
      v85 = v84[2];

      v25 = 0;
      if (v85)
      {
        v24 = 0;
      }

      else
      {
        v24 = 3;
      }
    }
  }

LABEL_43:
  v86 = v95;
  sub_1DD3E7B48();
  result = type metadata accessor for StitchedContactResolverRecommendation(0);
  v88 = v86 + *(result + 20);
  *v88 = v22;
  *(v88 + 8) = v23;
  *(v88 + 16) = v24;
  *(v88 + 24) = v25;
  return result;
}

uint64_t sub_1DD3E4A04(uint64_t *a1, uint64_t a2)
{
  v5 = type metadata accessor for Contact(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v80 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v19 = (&v80 - v18);
  v82 = *a1;
  v20 = *(a2 + 16);
  if (*(a1 + 24))
  {
    if (*(a1 + 24) == 1)
    {
      v21 = MEMORY[0x1E69E7CC0];
      if (v20)
      {
        v81 = v2;
        v84 = MEMORY[0x1E69E7CC0];
        sub_1DD42A2D4(0, v20, 0, v14, v15, v16, v17);
        v21 = v84;
        v22 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
        v23 = *(v6 + 72);
        do
        {
          sub_1DD3E7B48();
          v24 = *v11;
          v25 = v11[1];

          sub_1DD3E7BA0(v11, type metadata accessor for Contact);
          v84 = v21;
          v31 = *(v21 + 16);
          v30 = *(v21 + 24);
          if (v31 >= v30 >> 1)
          {
            sub_1DD42A2D4(v30 > 1, v31 + 1, 1, v26, v27, v28, v29);
            v21 = v84;
          }

          *(v21 + 16) = v31 + 1;
          v32 = v21 + 16 * v31;
          *(v32 + 32) = v24;
          *(v32 + 40) = v25;
          v22 += v23;
          --v20;
        }

        while (v20);
      }

      v20 = sub_1DD41859C(v21);
      v48 = v82;

      if (sub_1DD3E512C(v49, v20))
      {
        v50 = v48;
LABEL_48:
        v35 = sub_1DD3E5274(v50, v20);

        return v35 & 1;
      }

      goto LABEL_49;
    }

    v81 = v2;
    if (v20)
    {
      v83 = *(v13 + 80);
      v38 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
      v39 = *(v6 + 72);
      v40 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        sub_1DD3E7B48();
        v41 = *&v8[v83];

        sub_1DD3E7BA0(v8, type metadata accessor for Contact);
        v42 = *(v41 + 16);
        v43 = v40[2];
        if (__OFADD__(v43, v42))
        {
          break;
        }

        if (!swift_isUniquelyReferenced_nonNull_native() || v43 + v42 > (v40[3] >> 1))
        {
          sub_1DD3BEE1C();
          v40 = v44;
        }

        if (*(v41 + 16))
        {
          if (((v40[3] >> 1) - v40[2]) < v42)
          {
            goto LABEL_54;
          }

          swift_arrayInitWithCopy();

          if (v42)
          {
            v45 = v40[2];
            v46 = __OFADD__(v45, v42);
            v47 = v45 + v42;
            if (v46)
            {
              goto LABEL_55;
            }

            v40[2] = v47;
          }
        }

        else
        {

          if (v42)
          {
            goto LABEL_53;
          }
        }

        v38 += v39;
        if (!--v20)
        {
          goto LABEL_34;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
    }

    else
    {
      v40 = MEMORY[0x1E69E7CC0];
LABEL_34:
      v51 = v40[2];
      if (v51)
      {
        v84 = MEMORY[0x1E69E7CC0];
        sub_1DD42A2D4(0, v51, 0, v14, v15, v16, v17);
        v52 = v84;
        v53 = v40 + 12;
        do
        {
          v54 = *(v53 - 1);
          v55 = *v53;
          v84 = v52;
          v57 = *(v52 + 16);
          v56 = *(v52 + 24);

          if (v57 >= v56 >> 1)
          {
            sub_1DD42A2D4(v56 > 1, v57 + 1, 1, v58, v59, v60, v61);
            v52 = v84;
          }

          *(v52 + 16) = v57 + 1;
          v62 = v52 + 16 * v57;
          *(v62 + 32) = v54;
          *(v62 + 40) = v55;
          v53 += 10;
          --v51;
        }

        while (v51);
      }

      else
      {

        v52 = MEMORY[0x1E69E7CC0];
      }

      v20 = sub_1DD41859C(v52);
      if (qword_1EE165FB0 == -1)
      {
LABEL_42:
        v63 = sub_1DD63F9F8();
        __swift_project_value_buffer(v63, qword_1EE16F068);

        v64 = sub_1DD63F9D8();
        v65 = sub_1DD640368();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v67 = swift_slowAlloc();
          v84 = v67;
          *v66 = 136315138;
          v68 = sub_1DD640278();
          v70 = sub_1DD39565C(v68, v69, &v84);

          *(v66 + 4) = v70;
          _os_log_impl(&dword_1DD38D000, v64, v65, "recommendation handle values: %s", v66, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v67);
          MEMORY[0x1E12B3DA0](v67, -1, -1);
          MEMORY[0x1E12B3DA0](v66, -1, -1);
        }

        v71 = v82;

        v72 = sub_1DD63F9D8();
        v73 = sub_1DD640368();

        if (os_log_type_enabled(v72, v73))
        {
          v74 = swift_slowAlloc();
          v75 = swift_slowAlloc();
          v84 = v75;
          *v74 = 136315138;
          v76 = MEMORY[0x1E12B2430](v71, MEMORY[0x1E69E6158]);
          v78 = sub_1DD39565C(v76, v77, &v84);

          *(v74 + 4) = v78;
          _os_log_impl(&dword_1DD38D000, v72, v73, "prompt handle values: %s", v74, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v75);
          MEMORY[0x1E12B3DA0](v75, -1, -1);
          MEMORY[0x1E12B3DA0](v74, -1, -1);
        }

        if (*(v20 + 16))
        {
          v50 = v71;
          goto LABEL_48;
        }

LABEL_49:

        v35 = 0;
        return v35 & 1;
      }
    }

    swift_once();
    goto LABEL_42;
  }

  v33 = 0;
  v34 = a1[1];
  do
  {
    v35 = v20 != v33;
    if (v20 == v33)
    {
      break;
    }

    sub_1DD3E7B48();
    if (*v19 == v82 && v34 == v19[1])
    {
      sub_1DD3E7BA0(v19, type metadata accessor for Contact);
      v35 = 1;
      return v35 & 1;
    }

    ++v33;
    v37 = sub_1DD640CD8();
    sub_1DD3E7BA0(v19, type metadata accessor for Contact);
  }

  while ((v37 & 1) == 0);
  return v35 & 1;
}

uint64_t sub_1DD3E512C(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 16);
  v16 = result + 32;
  v6 = a2 + 56;
LABEL_2:
  if (v4 == v5)
  {
LABEL_14:

    return v4 == v5;
  }

  if (v4 < *(v3 + 16))
  {
    if (*(a2 + 16))
    {
      v7 = (v16 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1DD640E28();

      sub_1DD63FD28();
      v10 = sub_1DD640E78();
      v11 = ~(-1 << *(a2 + 32));
      while (1)
      {
        v12 = v10 & v11;
        if (((*(v6 + (((v10 & v11) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v10 & v11)) & 1) == 0)
        {
          break;
        }

        v13 = (*(a2 + 48) + 16 * v12);
        if (*v13 != v9 || v13[1] != v8)
        {
          v15 = sub_1DD640CD8();
          v10 = v12 + 1;
          if ((v15 & 1) == 0)
          {
            continue;
          }
        }

        ++v4;
        goto LABEL_2;
      }
    }

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1DD3E5274(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2 == 1)
  {
    result = sub_1DD558C68(a2);
    if (v5)
    {
      MEMORY[0x1EEE9AC00](result);
      v3 = sub_1DD450388();

      return v3;
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      return 1;
    }

    return sub_1DD3E7628(a1, a2);
  }

  return result;
}

uint64_t sub_1DD3E5358(uint64_t a1, uint64_t a2)
{
  v3 = sub_1DD63F5A8();
  v5 = v4;
  sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
  v8 = sub_1DD6403D8();
  sub_1DD3AD790(v3, v5);
  if (!v8)
  {
    return 0;
  }

  v9 = sub_1DD640568();
  v11 = v10;
  if (v10)
  {
    v6 = v9;
    v12 = (a2 + 40);
    v13 = *(a2 + 16) + 1;
    do
    {
      if (!--v13)
      {
        break;
      }

      if (*(v12 - 1) == v6 && v11 == *v12)
      {
        break;
      }

      v12 += 10;
    }

    while ((sub_1DD640CD8() & 1) == 0);
  }

  else
  {

    return 0;
  }

  return v6;
}

uint64_t sub_1DD3E54A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD63F5C8();
  v4 = v3;
  sub_1DD39638C(0, &qword_1EE1601E0, 0x1E696ACD0);
  v132 = sub_1DD39638C(0, qword_1EE166068, 0x1E696E940);
  v5 = sub_1DD6403F8();
  if (v5)
  {
    v6 = v5;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1DD3AD790(v2, v4);
  v7 = sub_1DD3CC020();
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  v10 = MEMORY[0x1E69E7CC0];
  while (v7 != v8)
  {
    if (v9)
    {
      v11 = MEMORY[0x1E12B2C10](v8, v6);
    }

    else
    {
      if (v8 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_83;
      }

      v11 = *(v6 + 8 * v8 + 32);
    }

    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
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
      OUTLINED_FUNCTION_0_2();
      swift_once();
LABEL_39:
      v44 = sub_1DD63F9F8();
      __swift_project_value_buffer(v44, qword_1EE16F068);

      v45 = sub_1DD63F9D8();
      v46 = sub_1DD640378();

      if (os_log_type_enabled(v45, v46))
      {
        OUTLINED_FUNCTION_18_1();
        v47 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v48 = swift_slowAlloc();
        v136[0] = v48;
        *v47 = 136315138;
        v49 = MEMORY[0x1E12B2430](v6, v132);
        v51 = v50;

        v52 = sub_1DD39565C(v49, v51, v136);

        *(v47 + 4) = v52;
        _os_log_impl(&dword_1DD38D000, v45, v46, "cannot make disambiguation prompt with <2 contactIds and <2 handleIds: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v48);
        v53 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v53);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      return 0;
    }

    v13 = v11;
    v14 = sub_1DD640568();
    v16 = v15;

    ++v8;
    if (v16)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12();
        sub_1DD3BE2A4();
        v10 = v20;
      }

      v18 = *(v10 + 16);
      v17 = *(v10 + 24);
      if (v18 >= v17 >> 1)
      {
        OUTLINED_FUNCTION_23_4(v17);
        sub_1DD3BE2A4();
        v10 = v21;
      }

      *(v10 + 16) = v18 + 1;
      v19 = v10 + 16 * v18;
      *(v19 + 32) = v14;
      *(v19 + 40) = v16;
      v8 = v12;
    }
  }

  v134 = sub_1DD3C6AF4(v10);

  v22 = 0;
  v131 = *MEMORY[0x1E69964B0];
  v135 = MEMORY[0x1E69E7CC0];
  while (v7 != v22)
  {
    if (v9)
    {
      v23 = MEMORY[0x1E12B2C10](v22, v6);
    }

    else
    {
      if (v22 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_85;
      }

      v23 = *(v6 + 8 * v22 + 32);
    }

    v24 = v23;
    v25 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      goto LABEL_84;
    }

    v26 = [v23 personHandle];
    if (v26 && (v27 = sub_1DD3E79C0(v26), v28))
    {
      v136[0] = v27;
      v136[1] = v28;
      sub_1DD3B7F10();

      if (sub_1DD6406D8())
      {
        v29 = sub_1DD63FDA8();
        v30 = (*(v131 + 16))(v131, v29);

        v31 = sub_1DD63FDD8();
        v130 = v32;
        swift_bridgeObjectRelease_n();

        v33 = v130;
      }

      else
      {
        sub_1DD39638C(0, qword_1EE165CF0, 0x1E695CF50);

        v34 = sub_1DD40B8E0();
        v31 = sub_1DD415480(v34);
        v33 = v35;
        swift_bridgeObjectRelease_n();

        if (!v33)
        {
          v31 = 0;
          v33 = 0xE000000000000000;
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_12();
        sub_1DD3BE2A4();
        v135 = v39;
      }

      v37 = *(v135 + 16);
      v36 = *(v135 + 24);
      if (v37 >= v36 >> 1)
      {
        OUTLINED_FUNCTION_15_9(v36);
        sub_1DD3BE2A4();
        v135 = v40;
      }

      *(v135 + 16) = v37 + 1;
      v38 = v135 + 16 * v37;
      *(v38 + 32) = v31;
      *(v38 + 40) = v33;
      v22 = v25;
    }

    else
    {

      ++v22;
    }
  }

  v41 = sub_1DD3C6AF4(v135);

  v42 = v134;
  if (*(v134 + 16) >= 2uLL)
  {

    v58 = *(a2 + 16);
    v59 = MEMORY[0x1E69E7CC0];
    if (v58)
    {
      v136[0] = MEMORY[0x1E69E7CC0];
      sub_1DD42A2D4(0, v58, 0, v54, v55, v56, v57);
      v59 = v136[0];
      v60 = (a2 + 40);
      do
      {
        v62 = *(v60 - 1);
        v61 = *v60;
        v136[0] = v59;
        v63 = *(v59 + 16);
        v64 = *(v59 + 24);

        if (v63 >= v64 >> 1)
        {
          sub_1DD42A2D4(v64 > 1, v63 + 1, 1, v65, v66, v67, v68);
          v59 = v136[0];
        }

        *(v59 + 16) = v63 + 1;
        v69 = v59 + 16 * v63;
        *(v69 + 32) = v62;
        *(v69 + 40) = v61;
        v60 += 10;
        --v58;
      }

      while (v58);
      v42 = v134;
    }

    v70 = sub_1DD41859C(v59);
    v71 = sub_1DD3E72FC(v42, v70);
    sub_1DD558C68(v71);
    OUTLINED_FUNCTION_55_1();
    if (v59 <= 1)
    {
    }

    else
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v72 = sub_1DD63F9F8();
      __swift_project_value_buffer(v72, qword_1EE16F068);

      v73 = sub_1DD63F9D8();
      v74 = sub_1DD640378();

      if (os_log_type_enabled(v73, v74))
      {
        OUTLINED_FUNCTION_18_1();
        v75 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v76 = swift_slowAlloc();
        v136[0] = v76;
        *v75 = 136315138;
        v77 = MEMORY[0x1E12B2430](v6, v132);
        v79 = v78;

        v80 = sub_1DD39565C(v77, v79, v136);

        *(v75 + 4) = v80;
        _os_log_impl(&dword_1DD38D000, v73, v74, "DisambiguationOffer people: %s", v75, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v76);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v42 = v134;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      v103 = sub_1DD63F9D8();
      v104 = sub_1DD640378();

      if (os_log_type_enabled(v103, v104))
      {
        OUTLINED_FUNCTION_18_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_14_10();
        v105 = swift_slowAlloc();
        v136[0] = v105;
        *v74 = 136315138;
        v106 = MEMORY[0x1E12B2430](a2, &type metadata for StitchablePerson);
        v108 = sub_1DD39565C(v106, v107, v136);

        *(v74 + 4) = v108;
        OUTLINED_FUNCTION_33_2(&dword_1DD38D000, v103, v104, "accepted people: %s");
        _os_log_impl(v109, v110, v111, v112, v113, v114);
        __swift_destroy_boxed_opaque_existential_1(v105);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v115 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v115);
      }
    }

    return v42;
  }

  else
  {
    v43 = *(v41 + 16);

    if (v43 <= 1)
    {

      if (qword_1EE165FB0 != -1)
      {
        goto LABEL_88;
      }

      goto LABEL_39;
    }

    v81 = 0;
    v82 = *(a2 + 16);
    v83 = MEMORY[0x1E69E7CC0];
LABEL_53:
    v84 = (a2 - 32 + 80 * v81);
    while (v82 != v81)
    {
      if (v81 >= v82)
      {
        goto LABEL_86;
      }

      v85 = v81 + 1;
      if (__OFADD__(v81, 1))
      {
        goto LABEL_87;
      }

      v22 = v84[11];
      v84 += 10;
      ++v81;
      if (v22)
      {
        v86 = *v84;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_12();
          sub_1DD3BE2A4();
          v83 = v90;
        }

        v88 = *(v83 + 16);
        v87 = *(v83 + 24);
        if (v88 >= v87 >> 1)
        {
          OUTLINED_FUNCTION_23_4(v87);
          sub_1DD3BE2A4();
          v83 = v91;
        }

        *(v83 + 16) = v88 + 1;
        v89 = v83 + 16 * v88;
        *(v89 + 32) = v86;
        *(v89 + 40) = v22;
        v81 = v85;
        goto LABEL_53;
      }
    }

    v92 = sub_1DD41859C(v83);
    v93 = sub_1DD3E72FC(v41, v92);
    sub_1DD558C68(v93);
    OUTLINED_FUNCTION_55_1();
    if (v22 <= 1)
    {
    }

    else
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v94 = sub_1DD63F9F8();
      __swift_project_value_buffer(v94, qword_1EE16F068);

      v95 = sub_1DD63F9D8();
      v96 = sub_1DD640378();

      if (os_log_type_enabled(v95, v96))
      {
        OUTLINED_FUNCTION_18_1();
        v97 = swift_slowAlloc();
        OUTLINED_FUNCTION_17_0();
        v98 = swift_slowAlloc();
        v136[0] = v98;
        *v97 = 136315138;
        v99 = MEMORY[0x1E12B2430](v6, v132);
        v101 = v100;

        v102 = sub_1DD39565C(v99, v101, v136);

        *(v97 + 4) = v102;
        _os_log_impl(&dword_1DD38D000, v95, v96, "DisambiguationOffer people: %s", v97, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v98);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      else
      {
      }

      v116 = sub_1DD63F9D8();
      v117 = sub_1DD640378();

      if (os_log_type_enabled(v116, v117))
      {
        OUTLINED_FUNCTION_18_1();
        swift_slowAlloc();
        OUTLINED_FUNCTION_14_10();
        v118 = swift_slowAlloc();
        v136[0] = v118;
        *v96 = 136315138;
        v119 = MEMORY[0x1E12B2430](a2, &type metadata for StitchablePerson);
        v121 = sub_1DD39565C(v119, v120, v136);

        *(v96 + 4) = v121;
        OUTLINED_FUNCTION_33_2(&dword_1DD38D000, v116, v117, "accepted people: %s");
        _os_log_impl(v122, v123, v124, v125, v126, v127);
        __swift_destroy_boxed_opaque_existential_1(v118);
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
        v128 = OUTLINED_FUNCTION_8_6();
        MEMORY[0x1E12B3DA0](v128);
      }
    }
  }

  return v41;
}

unint64_t sub_1DD3E5FD4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DD640AA8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1DD3E6020(char a1)
{
  if (!a1)
  {
    return 0xD000000000000019;
  }

  if (a1 == 1)
  {
    return 0xD000000000000013;
  }

  return 0xD000000000000011;
}

unint64_t sub_1DD3E6098@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DD3E5FD4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1DD3E60C8@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1DD3E6020(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1DD3E6100()
{
  result = qword_1ECCDC1C0;
  if (!qword_1ECCDC1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC1C0);
  }

  return result;
}

unint64_t sub_1DD3E6184()
{
  result = qword_1EE165920[0];
  if (!qword_1EE165920[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE165920);
  }

  return result;
}

void *sub_1DD3E6208(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

uint64_t sub_1DD3E6284()
{
  OUTLINED_FUNCTION_18_7();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_7();
  v3 = OUTLINED_FUNCTION_15_0();
  v4(v3);
  return v0;
}

uint64_t sub_1DD3E62DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ContactResolverRunTimeData(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3E6340(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 != 0xFF)
  {
    return sub_1DD3E6354(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1DD3E6354(uint64_t a1, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 >= 2)
  {
    if (a4)
    {
      return result;
    }
  }

  else
  {
  }
}

uint64_t sub_1DD3E63AC()
{
  OUTLINED_FUNCTION_18_7();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_15_0();
  v3(v2);
  return v0;
}

void sub_1DD3E64B4(uint64_t *a1)
{
  v3 = a1[1];
  v4 = sub_1DD640CA8();
  if (v4 < v3)
  {
    v5 = v4;
    v6 = sub_1DD4D32E0(v3 / 2);
    v8[0] = v7;
    v8[1] = (v3 / 2);
    sub_1DD3E6780(v8, v9, a1, v5);
    if (v1)
    {
      if (v3 < -1)
      {
        __break(1u);
        goto LABEL_5;
      }
    }

    else if (v3 < -1)
    {
LABEL_12:
      __break(1u);
      return;
    }

    *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = 0;

    return;
  }

LABEL_5:
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v3)
  {
    sub_1DD3E6594(0, v3, 1, a1);
  }
}

void sub_1DD3E6594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v30 = sub_1DD63D078();
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - v11;
  v25 = a2;
  if (a3 != a2)
  {
    v13 = (v10 + 8);
    v31 = *a4;
    v14 = v31 + 8 * a3 - 8;
    v15 = a1 - a3;
    while (2)
    {
      v27 = v14;
      v28 = a3;
      v26 = v15;
      v16 = v14;
      do
      {

        sub_1DD63F508();
        v17 = v29;
        sub_1DD63F508();
        v18 = sub_1DD63CFC8();
        v19 = *v13;
        v20 = v17;
        v21 = v30;
        (*v13)(v20, v30);
        v19(v12, v21);

        if ((v18 & 1) == 0)
        {
          break;
        }

        if (!v31)
        {
          __break(1u);
          return;
        }

        v22 = *v16;
        *v16 = v16[1];
        v16[1] = v22;
        --v16;
      }

      while (!__CFADD__(v15++, 1));
      a3 = v28 + 1;
      v14 = v27 + 8;
      v15 = v26 - 1;
      if (v28 + 1 != v25)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD3E6780(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v108 = a1;
  v120 = sub_1DD63D078();
  MEMORY[0x1EEE9AC00](v120);
  v119 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v118 = &v106 - v9;
  v113 = a3;
  v10 = a3[1];
  if (v10 < 1)
  {
    v12 = MEMORY[0x1E69E7CC0];
LABEL_91:
    v120 = *v108;
    if (!v120)
    {
      goto LABEL_135;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v97 = v115;
LABEL_94:
      v98 = v12;
      v99 = (v12 + 16);
      for (i = *(v12 + 2); ; *v99 = i)
      {
        if (i < 2)
        {

          v115 = v97;
          return;
        }

        if (!*v113)
        {
          goto LABEL_132;
        }

        v101 = &v98[16 * i];
        v102 = *v101;
        v103 = &v99[2 * i];
        v104 = *(v103 + 1);
        sub_1DD3E6F84((*v113 + 8 * *v101), (*v113 + 8 * *v103), (*v113 + 8 * v104), v120);
        if (v97)
        {
          break;
        }

        if (v104 < v102)
        {
          goto LABEL_120;
        }

        if (i - 2 >= *v99)
        {
          goto LABEL_121;
        }

        *v101 = v102;
        *(v101 + 1) = v104;
        v105 = *v99 - i;
        if (*v99 < i)
        {
          goto LABEL_122;
        }

        i = *v99 - 1;
        sub_1DD4EC4E4(v103 + 16, v105, v103);
      }

      v115 = v97;
LABEL_104:

      return;
    }

LABEL_129:
    v97 = v115;
    v12 = sub_1DD4EC2B8();
    goto LABEL_94;
  }

  v106 = a4;
  v11 = 0;
  v117 = (v8 + 8);
  v12 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v13 = v11++;
    v109 = v13;
    if (v11 < v10)
    {
      v107 = v12;
      v14 = *v113 + 8 * v13;
      v110 = 8 * v13;
      v15 = v14 + 16;

      v16 = v118;
      sub_1DD63F508();
      v17 = v119;
      sub_1DD63F508();
      LODWORD(v112) = sub_1DD63CFC8();
      v18 = *v117;
      v19 = v17;
      v20 = v120;
      (*v117)(v19, v120);
      v111 = v18;
      (v18)(v16, v20);

      v21 = (v109 + 2);
      while (1)
      {
        v22 = v21;
        v23 = v11 + 1;
        if (v23 >= v10)
        {
          break;
        }

        v116 = v21;

        v24 = v23;
        v25 = v10;
        v26 = v118;
        sub_1DD63F508();
        v27 = v119;
        sub_1DD63F508();
        LOBYTE(v114) = sub_1DD63CFC8() & 1;
        LODWORD(v114) = v114;
        v28 = v27;
        v29 = v120;
        v30 = v111;
        (v111)(v28, v120);
        v31 = v26;
        v10 = v25;
        v11 = v24;
        v30(v31, v29);

        v22 = v116;
        v15 += 8;
        v21 = v116 + 1;
        if ((v112 & 1) != v114)
        {
          goto LABEL_9;
        }
      }

      v11 = v10;
LABEL_9:
      if (v112)
      {
        v13 = v109;
        if (v11 < v109)
        {
          goto LABEL_126;
        }

        if (v109 >= v11)
        {
          v12 = v107;
        }

        else
        {
          if (v10 >= v22)
          {
            v32 = v22;
          }

          else
          {
            v32 = v10;
          }

          v33 = 8 * v32 - 8;
          v34 = v11;
          v35 = v109;
          v12 = v107;
          v36 = v110;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v113;
              if (!*v113)
              {
                goto LABEL_133;
              }

              v38 = *(v37 + v36);
              *(v37 + v36) = *(v37 + v33);
              *(v37 + v33) = v38;
            }

            ++v35;
            v33 -= 8;
            v36 += 8;
          }

          while (v35 < v34);
        }
      }

      else
      {
        v12 = v107;
        v13 = v109;
      }
    }

    v39 = v113[1];
    if (v11 < v39)
    {
      if (__OFSUB__(v11, v13))
      {
        goto LABEL_125;
      }

      if (v11 - v13 < v106)
      {
        break;
      }
    }

LABEL_39:
    if (v11 < v13)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1DD3BEB7C();
      v12 = v95;
    }

    v51 = *(v12 + 2);
    v52 = v51 + 1;
    if (v51 >= *(v12 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v12 = v96;
    }

    *(v12 + 2) = v52;
    v53 = v12 + 32;
    v54 = &v12[16 * v51 + 32];
    *v54 = v109;
    *(v54 + 1) = v11;
    v116 = *v108;
    if (!v116)
    {
      goto LABEL_134;
    }

    if (v51)
    {
      while (1)
      {
        v55 = v52 - 1;
        v56 = &v53[16 * v52 - 16];
        v57 = &v12[16 * v52];
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v58 = *(v12 + 4);
          v59 = *(v12 + 5);
          v68 = __OFSUB__(v59, v58);
          v60 = v59 - v58;
          v61 = v68;
LABEL_59:
          if (v61)
          {
            goto LABEL_111;
          }

          v73 = *v57;
          v72 = *(v57 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_114;
          }

          v77 = *(v56 + 1);
          v78 = v77 - *v56;
          if (__OFSUB__(v77, *v56))
          {
            goto LABEL_117;
          }

          if (__OFADD__(v75, v78))
          {
            goto LABEL_119;
          }

          if (v75 + v78 >= v60)
          {
            if (v60 < v78)
            {
              v55 = v52 - 2;
            }

            goto LABEL_81;
          }

          goto LABEL_74;
        }

        if (v52 < 2)
        {
          goto LABEL_113;
        }

        v80 = *v57;
        v79 = *(v57 + 1);
        v68 = __OFSUB__(v79, v80);
        v75 = v79 - v80;
        v76 = v68;
LABEL_74:
        if (v76)
        {
          goto LABEL_116;
        }

        v82 = *v56;
        v81 = *(v56 + 1);
        v68 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v68)
        {
          goto LABEL_118;
        }

        if (v83 < v75)
        {
          goto LABEL_88;
        }

LABEL_81:
        if (v55 - 1 >= v52)
        {
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v113)
        {
          goto LABEL_131;
        }

        v87 = &v53[16 * v55 - 16];
        v88 = *v87;
        v89 = &v53[16 * v55];
        v90 = *(v89 + 1);
        v91 = v115;
        sub_1DD3E6F84((*v113 + 8 * *v87), (*v113 + 8 * *v89), (*v113 + 8 * v90), v116);
        v115 = v91;
        if (v91)
        {
          goto LABEL_104;
        }

        if (v90 < v88)
        {
          goto LABEL_106;
        }

        v92 = v12;
        v93 = *(v12 + 2);
        if (v55 > v93)
        {
          goto LABEL_107;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        if (v55 >= v93)
        {
          goto LABEL_108;
        }

        v52 = v93 - 1;
        sub_1DD4EC4E4(v89 + 16, v93 - 1 - v55, &v53[16 * v55]);
        *(v92 + 2) = v93 - 1;
        v94 = v93 > 2;
        v12 = v92;
        if (!v94)
        {
          goto LABEL_88;
        }
      }

      v62 = &v53[16 * v52];
      v63 = *(v62 - 8);
      v64 = *(v62 - 7);
      v68 = __OFSUB__(v64, v63);
      v65 = v64 - v63;
      if (v68)
      {
        goto LABEL_109;
      }

      v67 = *(v62 - 6);
      v66 = *(v62 - 5);
      v68 = __OFSUB__(v66, v67);
      v60 = v66 - v67;
      v61 = v68;
      if (v68)
      {
        goto LABEL_110;
      }

      v69 = *(v57 + 1);
      v70 = v69 - *v57;
      if (__OFSUB__(v69, *v57))
      {
        goto LABEL_112;
      }

      v68 = __OFADD__(v60, v70);
      v71 = v60 + v70;
      if (v68)
      {
        goto LABEL_115;
      }

      if (v71 >= v65)
      {
        v85 = *v56;
        v84 = *(v56 + 1);
        v68 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v68)
        {
          goto LABEL_123;
        }

        if (v60 < v86)
        {
          v55 = v52 - 2;
        }

        goto LABEL_81;
      }

      goto LABEL_59;
    }

LABEL_88:
    v10 = v113[1];
    if (v11 >= v10)
    {
      goto LABEL_91;
    }
  }

  v40 = v13 + v106;
  if (__OFADD__(v13, v106))
  {
    goto LABEL_127;
  }

  if (v40 >= v39)
  {
    v40 = v113[1];
  }

  if (v40 < v13)
  {
LABEL_128:
    __break(1u);
    goto LABEL_129;
  }

  if (v11 == v40)
  {
    goto LABEL_39;
  }

  v107 = v12;
  v116 = *v113;
  v41 = &v116[8 * v11 - 8];
  v42 = (v13 - v11);
  v110 = v40;
LABEL_32:
  v114 = v11;
  v111 = v42;
  v112 = v41;
  while (1)
  {

    v43 = v118;
    sub_1DD63F508();
    v44 = v119;
    sub_1DD63F508();
    v45 = sub_1DD63CFC8();
    v46 = *v117;
    v47 = v44;
    v48 = v120;
    (*v117)(v47, v120);
    v46(v43, v48);

    if ((v45 & 1) == 0)
    {
LABEL_37:
      v11 = v114 + 1;
      v41 = v112 + 8;
      v42 = v111 - 1;
      if (v114 + 1 == v110)
      {
        v11 = v110;
        v12 = v107;
        v13 = v109;
        goto LABEL_39;
      }

      goto LABEL_32;
    }

    if (!v116)
    {
      break;
    }

    v49 = *v41;
    *v41 = *(v41 + 1);
    *(v41 + 1) = v49;
    v41 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_37;
    }
  }

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
}

uint64_t sub_1DD3E6F84(char *a1, char *a2, char *a3, char *a4)
{
  v44 = sub_1DD63D078();
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v42 = &v36 - v10;
  v11 = (a2 - a1) / 8;
  v41 = (v12 + 8);
  v13 = (a3 - a2) / 8;
  if (v11 < v13)
  {
    sub_1DD3C2520(a1, (a2 - a1) / 8, a4);
    v14 = &a4[8 * v11];
    v39 = v14;
    for (i = a3; ; a3 = i)
    {
      if (a4 >= v14 || a2 >= a3)
      {
        a2 = a1;
        goto LABEL_28;
      }

      v45 = a1;

      v16 = v42;
      sub_1DD63F508();
      v17 = v43;
      sub_1DD63F508();
      v18 = sub_1DD63CFC8();
      v19 = *v41;
      v20 = v17;
      v21 = v44;
      (*v41)(v20, v44);
      v19(v16, v21);

      if ((v18 & 1) == 0)
      {
        break;
      }

      v22 = a2;
      v23 = v45;
      v24 = v45 == a2;
      a2 += 8;
      if (!v24)
      {
        goto LABEL_12;
      }

LABEL_13:
      a1 = v23 + 8;
      v14 = v39;
    }

    v22 = a4;
    v23 = v45;
    v24 = v45 == a4;
    a4 += 8;
    if (v24)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v23 = *v22;
    goto LABEL_13;
  }

  sub_1DD3C2520(a2, (a3 - a2) / 8, a4);
  v14 = &a4[8 * v13];
  v45 = a1;
  v37 = a4;
LABEL_15:
  a3 -= 8;
  v38 = a2 - 8;
  v39 = a2;
  while (v14 > a4 && a2 > a1)
  {
    v26 = v14;
    v14 -= 8;

    v27 = v42;
    sub_1DD63F508();
    v28 = v43;
    sub_1DD63F508();
    LODWORD(i) = sub_1DD63CFC8();
    v29 = *v41;
    v30 = v28;
    v31 = v44;
    (*v41)(v30, v44);
    v29(v27, v31);

    if (i)
    {
      v32 = v38;
      a4 = v37;
      a1 = v45;
      v14 = v26;
      a2 = v38;
      if (a3 + 8 != v39)
      {
        *a3 = *v38;
        a2 = v32;
      }

      goto LABEL_15;
    }

    if (v26 != a3 + 8)
    {
      *a3 = *v14;
    }

    a3 -= 8;
    a4 = v37;
    a2 = v39;
    a1 = v45;
  }

LABEL_28:
  v33 = (v14 - a4) / 8;
  if (a2 != a4 || a2 >= &a4[8 * v33])
  {
    memmove(a2, a4, 8 * v33);
  }

  return 1;
}

void *sub_1DD3E72FC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v12[6] = *MEMORY[0x1E69E9840];
  v12[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v12[3] = v12;
  v12[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = (&v12[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    sub_1DD57634C(0, v5, v6);
    sub_1DD3E749C(v6, v5, v3, a2);
    v8 = v7;
  }

  else
  {
    v10 = swift_slowAlloc();
    v8 = sub_1DD3E6208(v10, v5, sub_1DD3E7B2C);

    MEMORY[0x1E12B3DA0](v10, -1, -1);
  }

  return v8;
}

void sub_1DD3E749C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v24 = *(a3 + 16);
  v23 = a3 + 32;
  v7 = a4 + 56;
  while (1)
  {
    v21 = v5;
LABEL_3:
    if (v6 == v24)
    {
      goto LABEL_19;
    }

    if (v6 >= v24)
    {
      break;
    }

    if (__OFADD__(v6, 1))
    {
      goto LABEL_21;
    }

    v8 = (v23 + 16 * v6);
    v10 = *v8;
    v9 = v8[1];
    v25 = v6 + 1;
    sub_1DD640E28();

    sub_1DD63FD28();
    v11 = sub_1DD640E78();
    v12 = ~(-1 << *(a4 + 32));
    do
    {
      v13 = v11 & v12;
      v14 = (v11 & v12) >> 6;
      v15 = 1 << (v11 & v12);
      if ((v15 & *(v7 + 8 * v14)) == 0)
      {

        v6 = v25;
        goto LABEL_3;
      }

      v16 = (*(a4 + 48) + 16 * v13);
      if (*v16 == v10 && v16[1] == v9)
      {
        break;
      }

      v18 = sub_1DD640CD8();
      v11 = v13 + 1;
    }

    while ((v18 & 1) == 0);

    v19 = result[v14];
    result[v14] = v19 | v15;
    v6 = v25;
    if ((v19 & v15) != 0)
    {
      goto LABEL_3;
    }

    v5 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      __break(1u);
LABEL_19:

      sub_1DD515BB8(result, a2, v21, a4);
      return;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1DD3E7628(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = &v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    sub_1DD57634C(0, v5, v6);
    v7 = sub_1DD3E77B4(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = sub_1DD3E7940(v9, v5, sub_1DD3E7C2C);
    MEMORY[0x1E12B3DA0](v9, -1, -1);
  }

  return v7 & 1;
}

uint64_t sub_1DD3E77B4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v24 = *(a3 + 16);
  v22 = result;
  v23 = a3 + 32;
  v6 = a4 + 56;
LABEL_2:
  while (2)
  {
    while (2)
    {
      v7 = v5;
      if (v5 == v24)
      {
        return v7 != v24;
      }

      if (v5 >= v24)
      {
        __break(1u);
        goto LABEL_19;
      }

      if (__OFADD__(v5, 1))
      {
LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      v25 = v5 + 1;
      v8 = (v23 + 16 * v5);
      v10 = *v8;
      v9 = v8[1];
      sub_1DD640E28();

      sub_1DD63FD28();
      v11 = sub_1DD640E78();
      v12 = ~(-1 << *(a4 + 32));
      do
      {
        v13 = v11 & v12;
        v14 = (v11 & v12) >> 6;
        v15 = 1 << (v11 & v12);
        if ((v15 & *(v6 + 8 * v14)) == 0)
        {

          v5 = v25;
          goto LABEL_2;
        }

        v16 = (*(a4 + 48) + 16 * v13);
        if (*v16 == v10 && v16[1] == v9)
        {
          break;
        }

        v18 = sub_1DD640CD8();
        v11 = v13 + 1;
      }

      while ((v18 & 1) == 0);

      v19 = *(v22 + 8 * v14);
      *(v22 + 8 * v14) = v19 | v15;
      v5 = v25;
      if ((v19 & v15) != 0)
      {
        continue;
      }

      break;
    }

    v20 = v21 + 1;
    if (!__OFADD__(v21, 1))
    {
      ++v21;
      if (v20 != *(a4 + 16))
      {
        continue;
      }

      return v7 != v24;
    }

    break;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1DD3E7940(void *result, uint64_t a2, void (*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    a3(&v8, v6, a2);
    if (!v3)
    {
      v7 = v8;
    }

    return (v7 & 1);
  }

  return result;
}

uint64_t sub_1DD3E79C0(void *a1)
{
  v2 = [a1 value];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1DD63FDD8();

  return v3;
}

uint64_t sub_1DD3E7A30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1B0, &unk_1DD6454F0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DD3E7AA0(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if (a4 - 1 >= 2)
  {
    if (a4)
    {
      return v5;
    }
  }

  else
  {
  }
}

void sub_1DD3E7AFC(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1DD3E749C(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = v7;
  }
}

uint64_t sub_1DD3E7B48()
{
  OUTLINED_FUNCTION_18_7();
  v1(0);
  OUTLINED_FUNCTION_7();
  v2 = OUTLINED_FUNCTION_15_0();
  v3(v2);
  return v0;
}

uint64_t sub_1DD3E7BA0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_7();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1DD3E7BF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  result = sub_1DD3E77B4(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result & 1;
  }

  return result;
}

uint64_t sub_1DD3E7C50(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 81))
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

uint64_t sub_1DD3E7C90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 81) = 1;
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

    *(result + 81) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MakeStitchedDataError(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1DD3E7DFC(uint64_t a1)
{
  sub_1DD3E7EF0(319);
  if (v1 <= 0x3F)
  {
    sub_1DD63F4C8();
    if (v2 <= 0x3F)
    {
      sub_1DD3E7F48(319, &unk_1EE1632B8, &protocol descriptor for DESStorable);
      if (v3 <= 0x3F)
      {
        sub_1DD3E7F48(319, qword_1EE1615A0, &protocol descriptor for StitchedDataAnonymizable);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1DD3E7EF0(uint64_t a1)
{
  if (!qword_1EE1602F0)
  {
    type metadata accessor for RunTimeDataRecord(255);
    v1 = sub_1DD640178();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE1602F0);
    }
  }
}

uint64_t sub_1DD3E7F48(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_1DD3E7F9C(uint64_t a1)
{
  result = sub_1DD3E6100();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1DD3E7FC8()
{
  result = qword_1ECCDC1D8;
  if (!qword_1ECCDC1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECCDC1D8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_26_6()
{
  v2 = *(v0 - 312);
  v3 = *(v0 - 304);

  return sub_1DD3AD790(v2, v3);
}

uint64_t OUTLINED_FUNCTION_27_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 - 272) = a4;
  *(v4 - 72) = a4;

  return swift_endAccess();
}

BOOL OUTLINED_FUNCTION_29_2(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_31_4(uint64_t a1)
{
  *(v2 - 96) = a1;
  *v1 = *(v2 - 416);
}

uint64_t OUTLINED_FUNCTION_38_2(float a1)
{
  *v1 = a1;
}

uint64_t OUTLINED_FUNCTION_41_1()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_42_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_43_2()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_54_1@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t x0_0@<X0>, char a4@<W3>)
{
  *(a3 - 256) = a1;
  *(v5 - 304) = a2;

  return sub_1DD63255C(x0_0, a1, a2, a4);
}

uint64_t OUTLINED_FUNCTION_55_1()
{
}

uint64_t OUTLINED_FUNCTION_56_2()
{
  v3 = *(v0 + 56);

  return sub_1DD3E7BA0(v3, v1);
}

void sub_1DD3E8268(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1DD4EC70C();
    v3 = v4;
  }

  v5 = *(v3 + 16);
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v5;
  sub_1DD3EA188(v6);
  *a1 = v3;
}

uint64_t sub_1DD3E831C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DD63F9C8();
  v19 = *(v4 - 8);
  v20 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE166460 != -1)
  {
    swift_once();
  }

  v7 = qword_1EE16F0C0;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1DD643F90;
  v9 = sub_1DD6408F8();
  v11 = v10;
  *(v8 + 56) = MEMORY[0x1E69E6158];
  *(v8 + 64) = sub_1DD392BD8();
  *(v8 + 32) = v9;
  *(v8 + 40) = v11;
  sub_1DD63F998();

  v12 = *(a1 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v23 = MEMORY[0x1E69E7CC0];
    sub_1DD42B404(0, v12, 0);
    v13 = v23;
    v14 = (a1 + 32);
    do
    {
      v21 = *v14;

      sub_1DD3E85D8(&v21, v2, &v22);

      v15 = v22;
      v23 = v13;
      v17 = *(v13 + 16);
      v16 = *(v13 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1DD42B404(v16 > 1, v17 + 1, 1);
        v13 = v23;
      }

      *(v13 + 16) = v17 + 1;
      *(v13 + 8 * v17 + 32) = v15;
      ++v14;
      --v12;
    }

    while (v12);
  }

  sub_1DD6404C8();
  sub_1DD63F9A8();
  (*(v19 + 8))(v6, v20);
  return v13;
}

void sub_1DD3E85D8(uint64_t *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v145 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v154 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v150 = &v144 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v182 = &v144 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v144 - v12;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v163 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v147 = &v144 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v156 = &v144 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v165 = &v144 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v155 = &v144 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v149 = &v144 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v171 = &v144 - v24;
  v25 = *a1;
  if (qword_1EE165FB0 != -1)
  {
LABEL_81:
    swift_once();
  }

  v26 = sub_1DD63F9F8();
  v27 = __swift_project_value_buffer(v26, qword_1EE16F068);

  v151 = v27;
  v28 = sub_1DD63F9D8();
  v29 = sub_1DD640368();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 134217984;
    *(v30 + 4) = *(v25 + 16);

    _os_log_impl(&dword_1DD38D000, v28, v29, "Running contact de-duplication (starting with %ld candidates...", v30, 0xCu);
    MEMORY[0x1E12B3DA0](v30, -1, -1);
  }

  else
  {
  }

  v195[0] = v25;

  sub_1DD3E8268(v195);
  if (v4)
  {

    __break(1u);
  }

  else
  {
    v144 = 0;
    v194[10] = MEMORY[0x1E69E7CD0];
    v194[11] = MEMORY[0x1E69E7CD0];
    v25 = v155;
    v161 = *(v195[0] + 16);
    if (v161)
    {
      v160 = (a2 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_tokenizer);
      v162 = v195[0];
      v31 = a2 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_config;
      a2 = 0;
      v32 = *(v31 + *(type metadata accessor for ContactResolverConfig(0) + 60));
      v33 = v162;
      v153 = (*(v163 + 80) + 32) & ~*(v163 + 80);
      v159 = v162 + v153;
      v158 = v171 + 272;
      v148 = v165 + 272;
      HIDWORD(v157) = v32;
      LODWORD(v152) = v32 & 1;
      HIDWORD(v152) = v32 >> 8;
      v173 = *MEMORY[0x1E69964B0];
      v172 = v173 + 16;
      v4 = &qword_1ECCDBBE8;
      *&v34 = 136315138;
      v146 = v34;
      v169 = MEMORY[0x1E69E7CC0];
      v181 = v13;
      while (1)
      {
        if (a2 >= *(v33 + 16))
        {
          __break(1u);
          goto LABEL_81;
        }

        v35 = *(v163 + 72);
        v170 = a2;
        v168 = v35;
        v36 = v171;
        sub_1DD3EB3D0(v159 + v35 * a2, v171, &qword_1ECCDBBE8, &qword_1DD644470);
        v37 = v160[3];
        v38 = v160[4];
        v39 = __swift_project_boxed_opaque_existential_1(v160, v37);
        v40 = sub_1DD417B78(v39, 0, v36, v37, v38);
        v166 = type metadata accessor for Contact(0);
        v41 = (v36 + *(v166 + 88));
        v43 = *v41;
        v42 = v41[1];

        sub_1DD3EB41C(v43, v42);
        v185 = v40;
        sub_1DD56D9C4(v192, v40, v43, v42, v44, v45, v46, v47, v144, v145, v146, *(&v146 + 1), v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157, v158, v159, v160, v161, v162, v163, v164, v165, v166);
        v49 = v48;
        v50 = v192[1];
        v51 = v192[2];

        sub_1DD3EB430(v50, v51);
        v52 = *(v158 + *(v167 + 36));
        if (HIDWORD(v157) == 2)
        {
        }

        else
        {
          LOBYTE(v192[0]) = v152;
          BYTE1(v192[0]) = BYTE4(v152);
          v52 = sub_1DD3E96C4(v52, v192);
        }

        v53 = *(v52 + 16);
        v4 = &qword_1ECCDBBE8;
        if (v53)
        {
          v183 = v43;
          v184 = v42;
          v54 = *(v154 + 80);
          v164 = v52;
          v174 = (v54 + 32) & ~v54;
          v55 = (v52 + v174);
          v206 = *(v154 + 72);
          v187 = v53 - 1;
          v56 = MEMORY[0x1E69E7CC0];
          v57 = v185;
          while (1)
          {
            v186 = v55;
            sub_1DD3EB3D0(v55, v13, &qword_1ECCDBBD8, &unk_1DD645A90);
            memcpy(v194, v13, 0x4AuLL);
            v58 = v194[7];
            v59 = v194[8];
            v60 = HIBYTE(v194[8]) & 0xFLL;
            if ((v194[8] & 0x2000000000000000) == 0)
            {
              v60 = v194[7] & 0xFFFFFFFFFFFFLL;
            }

            v188 = v56;
            if (v60)
            {
              if (LOBYTE(v194[2]))
              {
                if (LOBYTE(v194[2]) == 1)
                {

                  v62 = v183;
                  v61 = v184;
                  sub_1DD3EB41C(v183, v184);

                  v63 = sub_1DD63FDA8();

                  v64 = (*(v173 + 16))(v173, v63);

                  v65 = sub_1DD63FDD8();
                  v180 = v66;

                  v67 = v61;
                  v68 = 0;
                  v69 = 0;
                  v70 = 0;
                  v71 = 2;
                  v72 = 1;
                  v73 = 0xE000000000000000;
                  v74 = 0xE000000000000000;
                  v75 = v58;
                  v76 = v59;
                  v58 = v65;
                  v59 = v180;
                }

                else
                {
                  sub_1DD3EB444();

                  v62 = v183;
                  v67 = v184;
                  sub_1DD3EB41C(v183, v184);

                  v83 = sub_1DD40B8E0();
                  v84 = sub_1DD415480(v83);
                  v68 = 0;
                  v69 = 0;
                  v70 = 0;
                  v75 = v58;
                  v58 = v85 ? v84 : 0;
                  v73 = 0xE000000000000000;
                  v76 = v59;
                  v59 = v85 ? v85 : 0xE000000000000000;
                  v72 = 2;
                  v74 = 0xE000000000000000;
                  v71 = 2;
                }
              }

              else
              {
                v192[0] = v194[7];
                v192[1] = v194[8];
                v191[0] = 64;
                v191[1] = 0xE100000000000000;

                sub_1DD3EB41C(v183, v184);
                sub_1DD3B7F10();

                if (sub_1DD6406D8())
                {
                  v78 = sub_1DD63FDA8();

                  v79 = (*(v173 + 16))(v173, v78);

                  v80 = sub_1DD63FDD8();
                  v82 = v81;

                  v68 = 0;
                  v72 = 0;
                  v69 = 0;
                  v70 = 0;
                  v71 = 2;
                  v73 = 0xE000000000000000;
                  v74 = 0xE000000000000000;
                  v75 = v58;
                  v76 = v59;
                  v58 = v80;
                  v59 = v82;
                }

                else
                {
                  sub_1DD3EB444();
                  v86 = sub_1DD40B8E0();
                  v87 = sub_1DD415480(v86);
                  v68 = 0;
                  v72 = 0;
                  v69 = 0;
                  v70 = 0;
                  v75 = v58;
                  v58 = v88 ? v87 : 0;
                  v73 = 0xE000000000000000;
                  v76 = v59;
                  v59 = v88 ? v88 : 0xE000000000000000;
                  v71 = 2;
                  v74 = 0xE000000000000000;
                }

                v62 = v183;
                v67 = v184;
                v57 = v185;
              }
            }

            else
            {
              LODWORD(v180) = BYTE1(v194[9]);
              v179 = LOBYTE(v194[9]);
              v177 = v194[6];
              v178 = v194[5];
              v176 = v194[3];
              v74 = v194[4];
              v175 = LOBYTE(v194[2]);
              v77 = v194[0];
              v73 = v194[1];

              v62 = v183;
              v67 = v184;
              sub_1DD3EB41C(v183, v184);
              sub_1DD3C6A40(v194, v192);
              v76 = v177;
              v75 = v178;
              v71 = v180;
              v72 = v175;
              v68 = v77;
              v69 = v176;
              v70 = v179;
            }

            v195[0] = v57;
            v195[1] = v62;
            v195[2] = v67;
            v195[3] = v68;
            v195[4] = v73;
            v196 = v72;
            *v197 = *v193;
            *&v197[3] = *&v193[3];
            v198 = v69;
            v199 = v74;
            v200 = v75;
            v201 = v76;
            v202 = v58;
            v203 = v59;
            v204 = v70;
            v205 = v71;
            sub_1DD56D46C();
            v90 = v89;
            memcpy(v192, v191, 0x62uLL);
            sub_1DD3EB488(v192);
            if (v90)
            {
              v13 = v181;
              sub_1DD3EB3D0(v181, v182, &qword_1ECCDBBD8, &unk_1DD645A90);
              v56 = v188;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                sub_1DD3BF510(0, *(v56 + 16) + 1, 1, v56);
                v56 = v93;
              }

              v57 = v185;
              v92 = *(v56 + 16);
              v91 = *(v56 + 24);
              if (v92 >= v91 >> 1)
              {
                sub_1DD3BF510(v91 > 1, v92 + 1, 1, v56);
                v56 = v94;
              }

              *(v56 + 16) = v92 + 1;
              sub_1DD3EB4B8(v182, v56 + v174 + v92 * v206, &qword_1ECCDBBD8, &unk_1DD645A90);
            }

            else
            {
              v13 = v181;
              v56 = v188;
              v57 = v185;
            }

            sub_1DD390754(v13, &qword_1ECCDBBD8, &unk_1DD645A90);
            if (!v187)
            {
              break;
            }

            --v187;
            v55 = &v186[v206];
          }

          sub_1DD3EB430(v183, v184);
          v95 = *(v56 + 16);
          if (!v95)
          {

            v116 = v147;
            sub_1DD3EB3D0(v171, v147, &qword_1ECCDBBE8, &qword_1DD644470);
            v117 = sub_1DD63F9D8();
            v118 = sub_1DD640368();
            if (os_log_type_enabled(v117, v118))
            {
              v119 = v116;
              v120 = swift_slowAlloc();
              v206 = swift_slowAlloc();
              v191[0] = v206;
              *v120 = v146;
              v121 = Contact.description.getter();
              v123 = v122;
              sub_1DD390754(v119, &qword_1ECCDBBE8, &qword_1DD644470);
              v124 = sub_1DD39565C(v121, v123, v191);

              *(v120 + 4) = v124;
              _os_log_impl(&dword_1DD38D000, v117, v118, "Ignoring already-seen candidate (no new applicable handles found): %s", v120, 0xCu);
              v125 = v206;
              __swift_destroy_boxed_opaque_existential_1(v206);
              MEMORY[0x1E12B3DA0](v125, -1, -1);
              MEMORY[0x1E12B3DA0](v120, -1, -1);
            }

            else
            {

              sub_1DD390754(v116, &qword_1ECCDBBE8, &qword_1DD644470);
            }

            v25 = v155;
            v33 = v162;
            v4 = &qword_1ECCDBBE8;
            goto LABEL_73;
          }

          sub_1DD3EB3D0(v171, v165, &qword_1ECCDBBE8, &qword_1DD644470);
          v190 = MEMORY[0x1E69E7CC0];

          sub_1DD42B518(0, v95, 0);
          v96 = v190;
          v188 = v56;
          v97 = v56 + v174;
          v98 = v95 - 1;
          v99 = v150;
          while (1)
          {
            sub_1DD3EB3D0(v97, v99, &qword_1ECCDBBD8, &unk_1DD645A90);
            memcpy(v191, v99, 0x4AuLL);
            sub_1DD3C6A40(v191, &v189);
            sub_1DD390754(v99, &qword_1ECCDBBD8, &unk_1DD645A90);
            v190 = v96;
            v101 = *(v96 + 16);
            v100 = *(v96 + 24);
            if (v101 >= v100 >> 1)
            {
              sub_1DD42B518(v100 > 1, v101 + 1, 1);
              v99 = v150;
              v96 = v190;
            }

            *(v96 + 16) = v101 + 1;
            memcpy((v96 + 80 * v101 + 32), v191, 0x4AuLL);
            if (!v98)
            {
              break;
            }

            --v98;
            v97 += v206;
          }

          v102 = v165;
          v103 = *(v166 + 80);
          v104 = v188;

          *(v102 + v103) = v96;
          v105 = *(v167 + 36);
          v106 = v148;

          *(v106 + v105) = v104;
          v107 = v102;
          v4 = &qword_1ECCDBBE8;
          sub_1DD3EB3D0(v107, v156, &qword_1ECCDBBE8, &qword_1DD644470);
          v108 = v169;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD3BEC44(0, *(v108 + 16) + 1, 1, v108);
            v108 = v136;
          }

          v25 = v155;
          v110 = *(v108 + 16);
          v109 = *(v108 + 24);
          v169 = v108;
          if (v110 >= v109 >> 1)
          {
            sub_1DD3BEC44(v109 > 1, v110 + 1, 1, v169);
            v169 = v137;
          }

          v111 = v169;
          *(v169 + 16) = v110 + 1;
          sub_1DD3EB4B8(v156, v111 + v153 + v110 * v168, &qword_1ECCDBBE8, &qword_1DD644470);
          sub_1DD390754(v165, &qword_1ECCDBBE8, &qword_1DD644470);
        }

        else
        {

          sub_1DD3EB430(v43, v42);
          if ((v49 & 1) == 0)
          {
            sub_1DD3EB3D0(v171, v25, &qword_1ECCDBBE8, &qword_1DD644470);
            v126 = sub_1DD63F9D8();
            v127 = v25;
            v128 = sub_1DD640368();
            if (os_log_type_enabled(v126, v128))
            {
              v129 = swift_slowAlloc();
              v206 = swift_slowAlloc();
              v192[0] = v206;
              *v129 = v146;
              v130 = Contact.description.getter();
              v132 = v131;
              sub_1DD390754(v127, &qword_1ECCDBBE8, &qword_1DD644470);
              v133 = sub_1DD39565C(v130, v132, v192);

              *(v129 + 4) = v133;
              _os_log_impl(&dword_1DD38D000, v126, v128, "Ignoring already-seen candidate (no applicable handles): %s", v129, 0xCu);
              v134 = v206;
              __swift_destroy_boxed_opaque_existential_1(v206);
              MEMORY[0x1E12B3DA0](v134, -1, -1);
              v135 = v129;
              v4 = &qword_1ECCDBBE8;
              MEMORY[0x1E12B3DA0](v135, -1, -1);
            }

            else
            {

              sub_1DD390754(v127, &qword_1ECCDBBE8, &qword_1DD644470);
            }

            v25 = v127;
            v33 = v162;
            goto LABEL_73;
          }

          sub_1DD3EB3D0(v171, v149, &qword_1ECCDBBE8, &qword_1DD644470);
          v112 = v169;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1DD3BEC44(0, *(v112 + 16) + 1, 1, v112);
            v112 = v138;
          }

          v114 = *(v112 + 16);
          v113 = *(v112 + 24);
          v169 = v112;
          if (v114 >= v113 >> 1)
          {
            sub_1DD3BEC44(v113 > 1, v114 + 1, 1, v169);
            v169 = v139;
          }

          v115 = v169;
          *(v169 + 16) = v114 + 1;
          sub_1DD3EB4B8(v149, v115 + v153 + v114 * v168, &qword_1ECCDBBE8, &qword_1DD644470);
        }

        v33 = v162;
LABEL_73:
        a2 = v170 + 1;
        sub_1DD390754(v171, &qword_1ECCDBBE8, &qword_1DD644470);
        if (a2 == v161)
        {

          v140 = v169;
          goto LABEL_76;
        }
      }
    }

    v140 = MEMORY[0x1E69E7CC0];
LABEL_76:

    v141 = sub_1DD63F9D8();
    v142 = sub_1DD640368();
    if (os_log_type_enabled(v141, v142))
    {
      v143 = swift_slowAlloc();
      *v143 = 134217984;
      *(v143 + 4) = *(v140 + 16);

      _os_log_impl(&dword_1DD38D000, v141, v142, "Got %ld candidates after de-duplication...", v143, 0xCu);
      MEMORY[0x1E12B3DA0](v143, -1, -1);
    }

    else
    {
    }

    *v145 = v140;
  }
}

uint64_t sub_1DD3E96C4(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBD8, &unk_1DD645A90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = 0;
  v14 = a2[1];
  v32 = *a2;
  v33 = v14;
  v15 = a1;
  v16 = *(a1 + 16);
  do
  {
    v17 = v13;
    if (v16 == v13)
    {
      break;
    }

    sub_1DD3EB3D0(v15 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13++, v12, &qword_1ECCDBBD8, &unk_1DD645A90);
    v18 = v12[16];
    sub_1DD390754(v12, &qword_1ECCDBBD8, &unk_1DD645A90);
  }

  while (v18 != v33);
  v19 = 0;
  v20 = MEMORY[0x1E69E7CC0];
  while (v16 != v19)
  {
    v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v22 = *(v5 + 72);
    sub_1DD3EB3D0(v15 + v21 + v22 * v19, v9, &qword_1ECCDBBD8, &unk_1DD645A90);
    if (!v32 && v16 == v17 || v9[16] == v33 || !v9[16])
    {
      sub_1DD3EB4B8(v9, v31, &qword_1ECCDBBD8, &unk_1DD645A90);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1DD42B5CC(0, *(v20 + 16) + 1, 1);
        v20 = v34;
      }

      v25 = *(v20 + 16);
      v24 = *(v20 + 24);
      v26 = v25 + 1;
      if (v25 >= v24 >> 1)
      {
        v29 = *(v20 + 16);
        v30 = v25 + 1;
        sub_1DD42B5CC((v24 > 1), v25 + 1, 1);
        v25 = v29;
        v26 = v30;
        v20 = v34;
      }

      ++v19;
      *(v20 + 16) = v26;
      sub_1DD3EB4B8(v31, v20 + v21 + v25 * v22, &qword_1ECCDBBD8, &unk_1DD645A90);
    }

    else
    {
      sub_1DD390754(v9, &qword_1ECCDBBD8, &unk_1DD645A90);
      ++v19;
    }
  }

  return v20;
}

uint64_t sub_1DD3E9978()
{
  sub_1DD3EB504(v0 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_config);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_tokenizer));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for CandidateContactDeduplicator(uint64_t a1)
{
  result = qword_1EE161028;
  if (!qword_1EE161028)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DD3E9A40(uint64_t a1)
{
  result = type metadata accessor for ContactResolverConfig(319);
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

BOOL sub_1DD3E9AD8(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if ((sub_1DD57D274(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  if (v3 != 1)
  {
    v28[0] = v2;
    v28[1] = v3;
    if (v5 != 1)
    {
      v27[0] = v4;
      v27[1] = v5;
      v18 = OUTLINED_FUNCTION_15_0();
      sub_1DD3EB41C(v18, v19);
      v20 = OUTLINED_FUNCTION_11_0();
      sub_1DD3EB41C(v20, v21);
      v22 = OUTLINED_FUNCTION_15_0();
      sub_1DD3EB41C(v22, v23);
      v24 = static ContactSource.== infix(_:_:)(v28, v27);

      v25 = OUTLINED_FUNCTION_15_0();
      sub_1DD3EB430(v25, v26);
      return (v24 & 1) != 0;
    }

    v7 = OUTLINED_FUNCTION_15_0();
    sub_1DD3EB41C(v7, v8);
    sub_1DD3EB41C(v4, 1);
    v9 = OUTLINED_FUNCTION_15_0();
    sub_1DD3EB41C(v9, v10);

    goto LABEL_8;
  }

  sub_1DD3EB41C(v2, 1);
  if (v5 != 1)
  {
    v11 = OUTLINED_FUNCTION_11_0();
    sub_1DD3EB41C(v11, v12);
LABEL_8:
    v13 = OUTLINED_FUNCTION_15_0();
    sub_1DD3EB430(v13, v14);
    v15 = OUTLINED_FUNCTION_11_0();
    sub_1DD3EB430(v15, v16);
    return 0;
  }

  v6 = 1;
  sub_1DD3EB41C(v4, 1);
  sub_1DD3EB430(v2, 1);
  return v6;
}

uint64_t sub_1DD3E9C04(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = v8[1];
  v10 = v8[2];
  sub_1DD57F364(a1, *v8, a3, a4, a5, a6, a7, a8);
  if (v10 == 1)
  {
    return sub_1DD640E48();
  }

  sub_1DD640E48();
  if (v10)
  {
    MEMORY[0x1E12B3140](1);

    sub_1DD63FD28();
    v12 = v9;
    v13 = v10;
  }

  else
  {
    MEMORY[0x1E12B3140](0);
    v12 = v9;
    v13 = 0;
  }

  return sub_1DD3EB430(v12, v13);
}

uint64_t sub_1DD3E9CC0()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  sub_1DD640E28();
  sub_1DD57F364(v13, v2, v4, v5, v6, v7, v8, v9);
  if (v3 == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    sub_1DD640E48();
    if (v3)
    {
      MEMORY[0x1E12B3140](1);

      sub_1DD63FD28();
      v10 = v1;
      v11 = v3;
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      v10 = v1;
      v11 = 0;
    }

    sub_1DD3EB430(v10, v11);
  }

  return sub_1DD640E78();
}

uint64_t sub_1DD3E9D7C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  memcpy(__dst, a1 + 3, 0x4AuLL);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  memcpy(__src, a2 + 3, 0x4AuLL);
  v20[0] = v3;
  v20[1] = v4;
  v20[2] = v5;
  v19[0] = v6;
  v19[1] = v7;
  v19[2] = v8;

  v9 = OUTLINED_FUNCTION_11_0();
  sub_1DD3EB41C(v9, v10);

  sub_1DD3EB41C(v7, v8);
  LOBYTE(a2) = sub_1DD3E9AD8(v20, v19);
  v11 = v19[1];
  v12 = v19[2];

  sub_1DD3EB430(v11, v12);
  v13 = v20[1];
  v14 = v20[2];

  sub_1DD3EB430(v13, v14);
  if (a2)
  {
    memcpy(v18, __dst, 0x4AuLL);
    memcpy(v17, __src, sizeof(v17));
    v15 = static ContactHandle.== infix(_:_:)(v18);
    memcpy(v19, v17, 0x4AuLL);
    sub_1DD3C6A40(__dst, v20);
    sub_1DD3C6A40(__src, v20);
    sub_1DD3C6A9C(v19);
    memcpy(v20, v18, 0x4AuLL);
    sub_1DD3C6A9C(v20);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

void sub_1DD3E9EEC(void *a1, uint64_t a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v10 = v8[1];
  v11 = v8[2];
  sub_1DD57F364(a1, *v8, a3, a4, a5, a6, a7, a8);
  if (v11 == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    sub_1DD640E48();
    if (v11)
    {
      MEMORY[0x1E12B3140](1);

      sub_1DD63FD28();
      v12 = v10;
      v13 = v11;
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      v12 = v10;
      v13 = 0;
    }

    sub_1DD3EB430(v12, v13);
  }

  memcpy(v14, v8 + 3, sizeof(v14));
  ContactHandle.hash(into:)(a1);
}

uint64_t sub_1DD3E9FC0()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[1];
  v4 = v1[2];
  sub_1DD640E28();
  sub_1DD57F364(v15, v2, v5, v6, v7, v8, v9, v10);
  if (v4 == 1)
  {
    sub_1DD640E48();
  }

  else
  {
    sub_1DD640E48();
    if (v4)
    {
      MEMORY[0x1E12B3140](1);

      sub_1DD63FD28();
      v11 = v3;
      v12 = v4;
    }

    else
    {
      MEMORY[0x1E12B3140](0);
      v11 = v3;
      v12 = 0;
    }

    sub_1DD3EB430(v11, v12);
  }

  memcpy(__dst, v1 + 3, sizeof(__dst));
  ContactHandle.hash(into:)(v15);
  return sub_1DD640E78();
}

uint64_t sub_1DD3EA0A4(uint64_t a1)
{
  v10[9] = *v1;
  v11 = *(v1 + 8);
  sub_1DD640E28();
  sub_1DD3E9C04(v10, v2, v3, v4, v5, v6, v7, v8);
  return sub_1DD640E78();
}

uint64_t sub_1DD3EA100(uint64_t a1)
{
  v11 = *v1;
  v2 = *(v1 + 2);
  memcpy(__dst, v1 + 24, sizeof(__dst));
  sub_1DD640E28();
  v13 = v11;
  v14 = v2;
  sub_1DD3E9C04(v15, v3, v4, v5, v6, v7, v8, v9);
  ContactHandle.hash(into:)(v15);
  return sub_1DD640E78();
}

void sub_1DD3EA188(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1DD640CA8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
        v6 = sub_1DD640158();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1DD3EA558(v8, v9, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1DD3EA2D0(0, v2, 1, a1);
  }
}

void sub_1DD3EA2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v32 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v45 = &v32 - v14;
  v34 = a2;
  if (a3 != a2)
  {
    v15 = *a4;
    v16 = *(v13 + 72);
    v43 = v46 + 368;
    v44 = v45 + 368;
    v17 = v15 + v16 * (a3 - 1);
    v39 = -v16;
    v40 = v15;
    v18 = a1 - a3;
    v33 = v16;
    v19 = v15 + v16 * a3;
    v20 = &qword_1ECCDBBE8;
    v42 = v8;
    while (2)
    {
      v37 = v17;
      v38 = a3;
      v35 = v19;
      v36 = v18;
      v21 = v18;
      do
      {
        v22 = v45;
        sub_1DD3EB3D0(v19, v45, v20, &qword_1DD644470);
        v23 = v20;
        v24 = v46;
        sub_1DD3EB3D0(v17, v46, v23, &qword_1DD644470);
        v25 = *(v8 + 36);
        v26 = *(v44 + v25);
        v27 = *(v43 + v25);
        v28 = v24;
        v20 = v23;
        sub_1DD390754(v28, v23, &qword_1DD644470);
        sub_1DD390754(v22, v23, &qword_1DD644470);
        v29 = v26 < v27;
        v8 = v42;
        if (!v29)
        {
          break;
        }

        if (!v40)
        {
          __break(1u);
          return;
        }

        v30 = v41;
        sub_1DD3EB4B8(v19, v41, v23, &qword_1DD644470);
        swift_arrayInitWithTakeFrontToBack();
        sub_1DD3EB4B8(v30, v17, v23, &qword_1DD644470);
        v17 += v39;
        v19 += v39;
      }

      while (!__CFADD__(v21++, 1));
      a3 = v38 + 1;
      v17 = v37 + v33;
      v18 = v36 - 1;
      v19 = v35 + v33;
      if (v38 + 1 != v34)
      {
        continue;
      }

      break;
    }
  }
}

void sub_1DD3EA558(uint64_t *a1, uint64_t a2, uint64_t **a3, uint64_t a4)
{
  v122 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v128 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v124 = &v119 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v135 = &v119 - v9;
  MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v119 - v13;
  v130 = a3;
  v16 = a3[1];
  if (v16 < 1)
  {
    v18 = MEMORY[0x1E69E7CC0];
LABEL_108:
    v19 = *v122;
    if (!*v122)
    {
      goto LABEL_149;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v32 = v132;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_110:
      v133 = v18;
      v112 = v18 + 16;
      v113 = *(v18 + 2);
      while (v113 >= 2)
      {
        if (!*v130)
        {
          goto LABEL_146;
        }

        v114 = v32;
        v115 = &v133[16 * v113];
        v116 = *v115;
        v32 = &v112[2 * v113];
        v117 = *(v32 + 1);
        sub_1DD3EAEF0(*v130 + *(v128 + 72) * *v115, *v130 + *(v128 + 72) * *v32, *v130 + *(v128 + 72) * v117, v19);
        if (v114)
        {
          break;
        }

        if (v117 < v116)
        {
          goto LABEL_134;
        }

        if (v113 - 2 >= *v112)
        {
          goto LABEL_135;
        }

        *v115 = v116;
        *(v115 + 1) = v117;
        v118 = *v112 - v113;
        if (*v112 < v113)
        {
          goto LABEL_136;
        }

        v113 = *v112 - 1;
        sub_1DD4EC4E4(v32 + 16, v118, v32);
        *v112 = v113;
        v32 = 0;
      }

LABEL_118:

      return;
    }

LABEL_143:
    v18 = sub_1DD4EC2B8();
    goto LABEL_110;
  }

  v140 = v12;
  v120 = a4;
  v17 = 0;
  v138 = v15 + 368;
  v139 = v14;
  v137 = v14 + 368;
  v18 = MEMORY[0x1E69E7CC0];
  v136 = &v119 - v13;
  while (1)
  {
    v19 = v17;
    v20 = v17 + 1;
    v133 = v18;
    if (v17 + 1 >= v16)
    {
      v32 = v132;
    }

    else
    {
      v21 = *v130;
      v22 = *(v128 + 72);
      v23 = *v130 + v22 * v20;
      v127 = v16;
      sub_1DD3EB3D0(v23, v15, &qword_1ECCDBBE8, &qword_1DD644470);
      v24 = v20;
      v25 = v139;
      sub_1DD3EB3D0(v21 + v22 * v19, v139, &qword_1ECCDBBE8, &qword_1DD644470);
      v26 = *(v140 + 36);
      v27 = *&v138[v26];
      v125 = *(v137 + v26);
      v126 = v27;
      v28 = v25;
      v20 = v24;
      sub_1DD390754(v28, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v15, &qword_1ECCDBBE8, &qword_1DD644470);
      v29 = v127;
      v121 = v19;
      v30 = v19 + 2;
      v129 = v22;
      v31 = v21 + v22 * (v19 + 2);
      v32 = v132;
      while (1)
      {
        v33 = v30;
        v34 = v20 + 1;
        if (v34 >= v29)
        {
          break;
        }

        v132 = v32;
        LODWORD(v131) = v126 < v125;
        v35 = v136;
        v134 = v30;
        sub_1DD3EB3D0(v31, v136, &qword_1ECCDBBE8, &qword_1DD644470);
        v36 = v139;
        sub_1DD3EB3D0(v23, v139, &qword_1ECCDBBE8, &qword_1DD644470);
        v37 = *(v140 + 36);
        v38 = v34;
        v39 = *&v138[v37];
        v40 = *(v137 + v37);
        sub_1DD390754(v36, &qword_1ECCDBBE8, &qword_1DD644470);
        sub_1DD390754(v35, &qword_1ECCDBBE8, &qword_1DD644470);
        v33 = v134;
        v29 = v127;
        v41 = v39 < v40;
        v20 = v38;
        v42 = !v41;
        v43 = v131 ^ v42;
        v32 = v132;
        v31 += v129;
        v23 += v129;
        v30 = v134 + 1;
        if ((v43 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      v20 = v29;
LABEL_13:
      if (v126 >= v125)
      {
        v18 = v133;
        v15 = v136;
      }

      else
      {
        v19 = v121;
        if (v20 < v121)
        {
          goto LABEL_140;
        }

        if (v121 >= v20)
        {
          v18 = v133;
          v15 = v136;
          goto LABEL_36;
        }

        v44 = v29 >= v33 ? v33 : v29;
        v45 = v20;
        v46 = v129 * (v44 - 1);
        v47 = v129 * v44;
        v48 = v121 * v129;
        v131 = v45;
        v132 = v32;
        v18 = v133;
        v15 = v136;
        do
        {
          if (v19 != --v45)
          {
            v49 = *v130;
            if (!*v130)
            {
              goto LABEL_147;
            }

            sub_1DD3EB4B8(v49 + v48, v124, &qword_1ECCDBBE8, &qword_1DD644470);
            v50 = v48 < v46 || v49 + v48 >= v49 + v47;
            if (v50)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v48 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            sub_1DD3EB4B8(v124, v49 + v46, &qword_1ECCDBBE8, &qword_1DD644470);
            v18 = v133;
          }

          ++v19;
          v46 -= v129;
          v47 -= v129;
          v48 += v129;
        }

        while (v19 < v45);
        v20 = v131;
        v32 = v132;
      }

      v19 = v121;
    }

LABEL_36:
    v51 = v130[1];
    if (v20 < v51)
    {
      if (__OFSUB__(v20, v19))
      {
        goto LABEL_139;
      }

      if (v20 - v19 < v120)
      {
        break;
      }
    }

LABEL_55:
    if (v20 < v19)
    {
      goto LABEL_138;
    }

    v66 = swift_isUniquelyReferenced_nonNull_native();
    v131 = v20;
    if ((v66 & 1) == 0)
    {
      sub_1DD3BEB7C();
      v18 = v109;
    }

    v67 = *(v18 + 2);
    v68 = v67 + 1;
    if (v67 >= *(v18 + 3) >> 1)
    {
      sub_1DD3BEB7C();
      v18 = v110;
    }

    *(v18 + 2) = v68;
    v69 = v18 + 32;
    v70 = &v18[16 * v67 + 32];
    v71 = v131;
    *v70 = v19;
    v70[1] = v71;
    v134 = *v122;
    if (!v134)
    {
      goto LABEL_148;
    }

    if (v67)
    {
      v133 = v18;
      while (1)
      {
        v72 = v68 - 1;
        v73 = &v69[16 * v68 - 16];
        v74 = &v18[16 * v68];
        if (v68 >= 4)
        {
          break;
        }

        if (v68 == 3)
        {
          v75 = *(v18 + 4);
          v76 = *(v18 + 5);
          v85 = __OFSUB__(v76, v75);
          v77 = v76 - v75;
          v78 = v85;
LABEL_76:
          if (v78)
          {
            goto LABEL_125;
          }

          v90 = *v74;
          v89 = *(v74 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_128;
          }

          v94 = *(v73 + 1);
          v95 = v94 - *v73;
          if (__OFSUB__(v94, *v73))
          {
            goto LABEL_131;
          }

          if (__OFADD__(v92, v95))
          {
            goto LABEL_133;
          }

          if (v92 + v95 >= v77)
          {
            if (v77 < v95)
            {
              v72 = v68 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        if (v68 < 2)
        {
          goto LABEL_127;
        }

        v97 = *v74;
        v96 = *(v74 + 1);
        v85 = __OFSUB__(v96, v97);
        v92 = v96 - v97;
        v93 = v85;
LABEL_91:
        if (v93)
        {
          goto LABEL_130;
        }

        v99 = *v73;
        v98 = *(v73 + 1);
        v85 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v85)
        {
          goto LABEL_132;
        }

        if (v100 < v92)
        {
          goto LABEL_105;
        }

LABEL_98:
        if (v72 - 1 >= v68)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
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
          goto LABEL_142;
        }

        if (!*v130)
        {
          goto LABEL_145;
        }

        v104 = &v69[16 * v72 - 16];
        v105 = *v104;
        v106 = &v69[16 * v72];
        v107 = *(v106 + 1);
        sub_1DD3EAEF0(*v130 + *(v128 + 72) * *v104, *v130 + *(v128 + 72) * *v106, *v130 + *(v128 + 72) * v107, v134);
        if (v32)
        {
          goto LABEL_118;
        }

        if (v107 < v105)
        {
          goto LABEL_120;
        }

        v19 = 0;
        v32 = v69;
        v108 = *(v133 + 2);
        if (v72 > v108)
        {
          goto LABEL_121;
        }

        *v104 = v105;
        *(v104 + 1) = v107;
        if (v72 >= v108)
        {
          goto LABEL_122;
        }

        v68 = v108 - 1;
        sub_1DD4EC4E4(v106 + 16, v108 - 1 - v72, v106);
        v18 = v133;
        *(v133 + 2) = v108 - 1;
        v41 = v108 > 2;
        v69 = v32;
        v32 = 0;
        if (!v41)
        {
          goto LABEL_105;
        }
      }

      v79 = &v69[16 * v68];
      v80 = *(v79 - 8);
      v81 = *(v79 - 7);
      v85 = __OFSUB__(v81, v80);
      v82 = v81 - v80;
      if (v85)
      {
        goto LABEL_123;
      }

      v84 = *(v79 - 6);
      v83 = *(v79 - 5);
      v85 = __OFSUB__(v83, v84);
      v77 = v83 - v84;
      v78 = v85;
      if (v85)
      {
        goto LABEL_124;
      }

      v86 = *(v74 + 1);
      v87 = v86 - *v74;
      if (__OFSUB__(v86, *v74))
      {
        goto LABEL_126;
      }

      v85 = __OFADD__(v77, v87);
      v88 = v77 + v87;
      if (v85)
      {
        goto LABEL_129;
      }

      if (v88 >= v82)
      {
        v102 = *v73;
        v101 = *(v73 + 1);
        v85 = __OFSUB__(v101, v102);
        v103 = v101 - v102;
        if (v85)
        {
          goto LABEL_137;
        }

        if (v77 < v103)
        {
          v72 = v68 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_76;
    }

LABEL_105:
    v132 = v32;
    v17 = v131;
    v16 = v130[1];
    if (v131 >= v16)
    {
      goto LABEL_108;
    }
  }

  if (__OFADD__(v19, v120))
  {
    goto LABEL_141;
  }

  if (v19 + v120 >= v51)
  {
    v52 = v130[1];
  }

  else
  {
    v52 = (v19 + v120);
  }

  if (v52 < v19)
  {
LABEL_142:
    __break(1u);
    goto LABEL_143;
  }

  if (v20 == v52)
  {
    goto LABEL_55;
  }

  v131 = v20;
  v132 = v32;
  v53 = *v130;
  v54 = *(v128 + 72);
  v55 = *v130 + v54 * (v20 - 1);
  v56 = -v54;
  v121 = v19;
  v57 = v19 - v20;
  v134 = v53;
  v123 = v54;
  v58 = v53 + v20 * v54;
  v59 = v140;
  v125 = v52;
LABEL_46:
  v126 = v58;
  v127 = v57;
  v129 = v55;
  while (1)
  {
    sub_1DD3EB3D0(v58, v15, &qword_1ECCDBBE8, &qword_1DD644470);
    v60 = v139;
    sub_1DD3EB3D0(v55, v139, &qword_1ECCDBBE8, &qword_1DD644470);
    v61 = *(v59 + 36);
    v62 = *&v138[v61];
    v63 = *(v137 + v61);
    v64 = v60;
    v15 = v136;
    sub_1DD390754(v64, &qword_1ECCDBBE8, &qword_1DD644470);
    sub_1DD390754(v15, &qword_1ECCDBBE8, &qword_1DD644470);
    if (v62 >= v63)
    {
      v59 = v140;
LABEL_53:
      v55 = v129 + v123;
      v57 = v127 - 1;
      v58 = v126 + v123;
      if (++v131 == v125)
      {
        v20 = v125;
        v32 = v132;
        v18 = v133;
        v19 = v121;
        goto LABEL_55;
      }

      goto LABEL_46;
    }

    if (!v134)
    {
      break;
    }

    v65 = v135;
    sub_1DD3EB4B8(v58, v135, &qword_1ECCDBBE8, &qword_1DD644470);
    v59 = v140;
    swift_arrayInitWithTakeFrontToBack();
    sub_1DD3EB4B8(v65, v55, &qword_1ECCDBBE8, &qword_1DD644470);
    v55 += v56;
    v58 += v56;
    v50 = __CFADD__(v57++, 1);
    if (v50)
    {
      goto LABEL_53;
    }
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
}

void sub_1DD3EAEF0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = a4;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v45 - v9;
  v11 = *(v10 + 72);
  if (!v11)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  v12 = a2 - a1 == 0x8000000000000000 && v11 == -1;
  if (v12)
  {
    goto LABEL_61;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v11;
  v60 = a1;
  v59 = v57;
  v16 = v13 / v11;
  if (v15 >= v13 / v11)
  {
    v28 = v57;
    sub_1DD3C1BE8(a2, v13 / v11, v57);
    v29 = v28 + v16 * v11;
    v48 = v55 + 368;
    v49 = v54 + 368;
    v30 = -v11;
    v31 = v29;
    v46 = a1;
    v47 = -v11;
LABEL_37:
    v32 = a2 + v30;
    v33 = a3;
    v45 = v31;
    v51 = a2 + v30;
    while (1)
    {
      if (v29 <= v57)
      {
        v60 = a2;
        v58 = v31;
        goto LABEL_59;
      }

      if (a2 <= a1)
      {
        break;
      }

      v50 = v31;
      v34 = v33 + v30;
      v35 = v29 + v30;
      v36 = v54;
      sub_1DD3EB3D0(v29 + v30, v54, &qword_1ECCDBBE8, &qword_1DD644470);
      v37 = v32;
      v38 = v55;
      sub_1DD3EB3D0(v37, v55, &qword_1ECCDBBE8, &qword_1DD644470);
      v39 = *(v56 + 36);
      v40 = *(v49 + v39);
      v52 = *(v48 + v39);
      v53 = v40;
      sub_1DD390754(v38, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v36, &qword_1ECCDBBE8, &qword_1DD644470);
      if (v53 < v52)
      {
        v42 = v33 < a2 || v34 >= a2;
        a3 = v33 + v30;
        if (v42)
        {
          a2 = v51;
          swift_arrayInitWithTakeFrontToBack();
          v31 = v50;
          a1 = v46;
          v30 = v47;
        }

        else
        {
          v43 = v51;
          v31 = v50;
          v12 = v33 == a2;
          a2 = v51;
          a1 = v46;
          v30 = v47;
          if (!v12)
          {
            v44 = v50;
            swift_arrayInitWithTakeBackToFront();
            a2 = v43;
            v31 = v44;
          }
        }

        goto LABEL_37;
      }

      if (v33 < v29 || v34 >= v29)
      {
        swift_arrayInitWithTakeFrontToBack();
        v33 += v30;
        v29 += v30;
        v31 = v35;
        a1 = v46;
        v30 = v47;
        v32 = v51;
      }

      else
      {
        v31 = v29 + v30;
        v12 = v29 == v33;
        v33 += v30;
        v29 += v30;
        a1 = v46;
        v30 = v47;
        v32 = v51;
        if (!v12)
        {
          swift_arrayInitWithTakeBackToFront();
          v33 = v34;
          v29 = v35;
          v31 = v35;
        }
      }
    }

    v60 = a2;
    v58 = v45;
  }

  else
  {
    v17 = v57;
    sub_1DD3C1BE8(a1, (a2 - a1) / v11, v57);
    v53 = v17 + v15 * v11;
    v58 = v53;
    v51 = v55 + 368;
    v52 = v54 + 368;
    v50 = a3;
    while (v57 < v53 && a2 < a3)
    {
      v19 = v11;
      v20 = v54;
      sub_1DD3EB3D0(a2, v54, &qword_1ECCDBBE8, &qword_1DD644470);
      v21 = v55;
      sub_1DD3EB3D0(v57, v55, &qword_1ECCDBBE8, &qword_1DD644470);
      v22 = *(v56 + 36);
      v23 = *(v52 + v22);
      v24 = *(v51 + v22);
      sub_1DD390754(v21, &qword_1ECCDBBE8, &qword_1DD644470);
      sub_1DD390754(v20, &qword_1ECCDBBE8, &qword_1DD644470);
      v11 = v19;
      if (v23 >= v24)
      {
        v26 = v57 + v19;
        if (a1 < v57 || a1 >= v26)
        {
          swift_arrayInitWithTakeFrontToBack();
          a3 = v50;
        }

        else
        {
          a3 = v50;
          if (a1 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v59 = v26;
        v57 = v26;
      }

      else if (a1 < a2 || a1 >= a2 + v19)
      {
        swift_arrayInitWithTakeFrontToBack();
        a2 += v19;
        a3 = v50;
      }

      else
      {
        a3 = v50;
        if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v19;
      }

      a1 += v19;
      v60 = a1;
    }
  }

LABEL_59:
  sub_1DD4EC2FC(&v60, &v59, &v58);
}

uint64_t sub_1DD3EB3D0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return v4;
}

uint64_t sub_1DD3EB41C(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_1DD3EB430(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_1DD3EB444()
{
  result = qword_1EE165CF0[0];
  if (!qword_1EE165CF0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EE165CF0);
  }

  return result;
}

uint64_t sub_1DD3EB4B8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_3_0(a1, a2, a3, a4);
  OUTLINED_FUNCTION_7();
  v5 = OUTLINED_FUNCTION_15_0();
  v6(v5);
  return v4;
}

uint64_t sub_1DD3EB504(uint64_t a1)
{
  v2 = type metadata accessor for ContactResolverConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t get_enum_tag_for_layout_string_13SiriInference13ContactSourceOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1DD3EB59C(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 98))
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

uint64_t sub_1DD3EB5DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 98) = 1;
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

    *(result + 98) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DD3EB64C()
{
  result = qword_1EE1613A8;
  if (!qword_1EE1613A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE1613A8);
  }

  return result;
}

unint64_t sub_1DD3EB6A4()
{
  result = qword_1EE1614F8[0];
  if (!qword_1EE1614F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE1614F8);
  }

  return result;
}

uint64_t sub_1DD3EB760(uint64_t a1)
{
  sub_1DD3EBAA4(319, qword_1EE1620E8, type metadata accessor for HypocorismGenerator);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    sub_1DD3EBAA4(319, qword_1EE1617C8, type metadata accessor for MeCardContactGenerator);
    v2 = v4;
    if (v5 <= 0x3F)
    {
      sub_1DD3EBAA4(319, &qword_1EE163D80, type metadata accessor for RelationshipAliasGenerator);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        sub_1DD3EBBE4(319, &qword_1EE160DA8, &type metadata for TransliterationQueryExpander);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          sub_1DD3EBBE4(319, &qword_1EE161380, &type metadata for NormalizationQueryExpander);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            v2 = type metadata accessor for ContactsFrameworkMatcher(319);
            if (v12 <= 0x3F)
            {
              Expander = type metadata accessor for ThirdPartyContactMatcher(319);
              if (v14 > 0x3F)
              {
                return Expander;
              }

              sub_1DD3EBBE4(319, &qword_1EE1623F0, &type metadata for SRRSearchProvider);
              if (v15 > 0x3F)
              {
                return Expander;
              }

              Expander = type metadata accessor for PartialNameQueryExpander(319);
              if (v16 > 0x3F)
              {
                return Expander;
              }

              else
              {
                sub_1DD3EBAA4(319, qword_1EE162398, type metadata accessor for EmojiQueryExpander);
                v2 = v17;
                if (v18 <= 0x3F)
                {
                  v2 = type metadata accessor for AsrE3CandidateExpander(319);
                  if (v19 <= 0x3F)
                  {
                    v2 = type metadata accessor for CandidateContactDeduplicator(319);
                    if (v20 <= 0x3F)
                    {
                      v2 = type metadata accessor for ContactSignalProviders(319);
                      if (v21 <= 0x3F)
                      {
                        sub_1DD3EBAA4(319, &qword_1EE162FE0, type metadata accessor for E3Orchestrator);
                        v2 = v22;
                        if (v23 <= 0x3F)
                        {
                          sub_1DD3EBAA4(319, qword_1EE162F00, type metadata accessor for EuclidVectorDb);
                          v2 = v24;
                          if (v25 <= 0x3F)
                          {
                            sub_1DD3EBAA4(319, qword_1EE162288, type metadata accessor for EuclidEmbeddingApi);
                            v2 = v26;
                            if (v27 <= 0x3F)
                            {
                              swift_cvw_initStructMetadataWithLayoutString();
                              return 0;
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void sub_1DD3EBAA4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1DD6405F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DD3EBB20(uint64_t a1)
{
  type metadata accessor for RequestMatchSignalProvider(319);
  if (v1 <= 0x3F)
  {
    sub_1DD3EBBE4(319, qword_1EE161850, &type metadata for IsMeCardSignalProvider);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SiriRemembersContactSignalProvider(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DD3EBBE4(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1DD6405F8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1DD3EBC30()
{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_92();
  v27 = v2;
  v28 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
  v5 = OUTLINED_FUNCTION_51(v4);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_1();
  v25 = v8;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  v12 = 0;
  v29 = *(v1 + 16);
  v26 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v29 == v12)
    {

LABEL_14:
      OUTLINED_FUNCTION_86();
      return;
    }

    if (v12 >= *(v1 + 16))
    {
      break;
    }

    v13 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v14 = *(v7 + 72);
    sub_1DD3EB3D0(v1 + v13 + v14 * v12, v11, &qword_1ECCDBBE8, &qword_1DD644470);
    v15 = v27(v11);
    if (v0)
    {
      sub_1DD390754(v11, &qword_1ECCDBBE8, &qword_1DD644470);

      goto LABEL_14;
    }

    if (v15)
    {
      sub_1DD3EB4B8(v11, v25, &qword_1ECCDBBE8, &qword_1DD644470);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v17 = v26;
      v30 = v26;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v18 = OUTLINED_FUNCTION_26_2();
        sub_1DD42B4F8(v18, v19, v20);
        v17 = v30;
      }

      v22 = *(v17 + 16);
      v21 = *(v17 + 24);
      v23 = v22 + 1;
      if (v22 >= v21 >> 1)
      {
        v26 = v22 + 1;
        v24 = v22;
        sub_1DD42B4F8(v21 > 1, v22 + 1, 1);
        v23 = v26;
        v22 = v24;
        v17 = v30;
      }

      ++v12;
      *(v17 + 16) = v23;
      v26 = v17;
      sub_1DD3EB4B8(v25, v17 + v13 + v22 * v14, &qword_1ECCDBBE8, &qword_1DD644470);
    }

    else
    {
      sub_1DD390754(v11, &qword_1ECCDBBE8, &qword_1DD644470);
      ++v12;
    }
  }

  __break(1u);
}

void sub_1DD3EBE9C()
{
  OUTLINED_FUNCTION_92();
  v6 = v5;
  v23 = MEMORY[0x1E69E7CC0];
  sub_1DD3CC020();
  OUTLINED_FUNCTION_83_0();
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if (v2)
    {
      v7 = MEMORY[0x1E12B2C10](v4, v1);
    }

    else
    {
      if (v4 >= *(v20 + 16))
      {
        goto LABEL_16;
      }

      v7 = *(v1 + 8 * v4 + 32);
    }

    v8 = v7;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_108();
    v9 = v6();
    if (v0)
    {

      return;
    }

    if (v9)
    {
      v10 = sub_1DD640958();
      OUTLINED_FUNCTION_64_1(v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23);
      OUTLINED_FUNCTION_65_1();
      sub_1DD640968();
    }

    else
    {
    }

    ++v4;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1DD3EBFB8()
{
  OUTLINED_FUNCTION_92();
  v6 = v5;
  v21 = MEMORY[0x1E69E7CC0];
  sub_1DD3CC020();
  OUTLINED_FUNCTION_83_0();
  while (1)
  {
    if (v3 == v4)
    {

      return;
    }

    if (v2)
    {
      MEMORY[0x1E12B2C10](v4, v1);
    }

    else
    {
      if (v4 >= *(v18 + 16))
      {
        goto LABEL_16;
      }
    }

    if (__OFADD__(v4, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_108();
    v7 = v6();
    if (v0)
    {

      return;
    }

    if (v7)
    {
      v8 = sub_1DD640958();
      OUTLINED_FUNCTION_64_1(v8, v9, v10, v11, v12, v13, v14, v15, v16, v17, v18, v19, v20, v21);
      OUTLINED_FUNCTION_65_1();
      sub_1DD640968();
    }

    else
    {
    }

    ++v4;
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

void sub_1DD3EC0E0(uint64_t (*result)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = 0;
  v25 = *(a3 + 16);
  v6 = (a3 + 64);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v25 == v5)
    {
      goto LABEL_14;
    }

    if (v5 >= *(v4 + 16))
    {
      break;
    }

    v26 = v5;
    v8 = *(v6 - 4);
    v9 = *(v6 - 6);
    v10 = *(v6 - 2);
    v11 = *(v6 - 1);
    v12 = *v6;
    v27 = v8;
    v28 = v9;
    v29 = v10;
    v30 = v11;
    v31 = v12;
    v13 = result(&v27);
    if (v3)
    {

LABEL_14:

      return;
    }

    if (v13)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v32 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        OUTLINED_FUNCTION_36_2();
        v15 = OUTLINED_FUNCTION_26_2();
        sub_1DD42BD28(v15, v16, v17);
        v7 = v32;
      }

      v18 = *(v7 + 16);
      if (v18 >= *(v7 + 24) >> 1)
      {
        OUTLINED_FUNCTION_106();
        sub_1DD42BD28(v20, v21, v22);
        v3 = 0;
        v7 = v32;
      }

      *(v7 + 16) = v18 + 1;
      v19 = v7 + 40 * v18;
      *(v19 + 32) = v8;
      *(v19 + 40) = v9;
      *(v19 + 48) = v10;
      *(v19 + 56) = v11;
      *(v19 + 64) = v12;
      v4 = a3;
    }

    v6 += 5;
    v5 = v26 + 1;
  }

  __break(1u);
}

void sub_1DD3EC25C()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v4 = 0;
  v6 = *(v5 + 16);
  v7 = v5 + 32;
  v8 = MEMORY[0x1E69E7CC0];
  v18 = v2;
  while (1)
  {
    if (v6 == v4)
    {
      goto LABEL_14;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    sub_1DD3C2388(v7, v20);
    v9 = v3(v20);
    if (v0)
    {
      __swift_destroy_boxed_opaque_existential_1(v20);

LABEL_14:

      return;
    }

    if (v9)
    {
      sub_1DD3AA4A8(v20, v19);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = v8;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v11 = OUTLINED_FUNCTION_26_2();
        sub_1DD42C12C(v11, v12, v13);
        v8 = v21;
      }

      v14 = *(v8 + 16);
      if (v14 >= *(v8 + 24) >> 1)
      {
        OUTLINED_FUNCTION_57_2();
        sub_1DD42C12C(v15, v16, v17);
        v8 = v21;
      }

      *(v8 + 16) = v14 + 1;
      sub_1DD3AA4A8(v19, v8 + 40 * v14 + 32);
      v3 = v18;
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v20);
    }

    v7 += 40;
    ++v4;
  }

  __break(1u);
}

void sub_1DD3EC3B8()
{
  OUTLINED_FUNCTION_92();
  v3 = v2;
  v4 = 0;
  v22 = *(v5 + 16);
  v6 = (v5 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  v21 = v5;
  v20 = v2;
  while (1)
  {
    if (v22 == v4)
    {

      return;
    }

    if (v4 >= *(v1 + 16))
    {
      break;
    }

    v9 = *(v6 - 1);
    v8 = *v6;
    v23[0] = v9;
    v23[1] = v8;

    v10 = v3(v23);
    if (v0)
    {

      return;
    }

    if (v10)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v7;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v12 = OUTLINED_FUNCTION_26_2();
        sub_1DD42C1D8(v12, v13, v14);
        v7 = v24;
      }

      v15 = *(v7 + 16);
      if (v15 >= *(v7 + 24) >> 1)
      {
        OUTLINED_FUNCTION_57_2();
        sub_1DD42C1D8(v17, v18, v19);
        v7 = v24;
      }

      *(v7 + 16) = v15 + 1;
      v16 = v7 + 16 * v15;
      *(v16 + 32) = v9;
      *(v16 + 40) = v8;
      v1 = v21;
      v3 = v20;
    }

    else
    {
    }

    v6 += 2;
    ++v4;
  }

  __break(1u);
}

uint64_t sub_1DD3EC51C(uint64_t a1, uint64_t a2)
{
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v35 = v6;
  v31 = v2;
  v73 = MEMORY[0x1E69E7CC0];
  sub_1DD42BA08(0, v7, 0);
  v8 = v73;
  result = sub_1DD55B198();
  v12 = result;
  v13 = 0;
  v42 = a1 + 56;
  v32 = a1 + 64;
  v33 = v7;
  v34 = a1;
  if ((result & 0x8000000000000000) == 0)
  {
    while (v12 < 1 << *(a1 + 32))
    {
      v14 = v12 >> 6;
      if ((*(v42 + 8 * (v12 >> 6)) & (1 << v12)) == 0)
      {
        goto LABEL_26;
      }

      if (*(a1 + 36) != v10)
      {
        goto LABEL_27;
      }

      v41 = v11;
      v39 = v13;
      v40 = v10;
      v15 = (*(a1 + 48) + 16 * v12);
      v16 = v8;
      v17 = *v15;
      v18 = v15[1];
      v44[0] = 0;
      v44[1] = 0xE000000000000000;
      LOBYTE(v44[2]) = 0;
      v44[3] = 0;
      v44[4] = 0xE000000000000000;
      v44[5] = 0;
      v44[6] = 0xE000000000000000;
      v44[7] = v17;
      v44[8] = v18;
      v44[9] = 0;
      v44[10] = 0xE000000000000000;
      v44[11] = 0;
      v44[12] = 0xE000000000000000;
      v44[13] = 0;
      v44[14] = 0xE000000000000000;
      v44[15] = 0;
      v44[16] = 0xE000000000000000;
      v44[17] = 0;
      v44[18] = 0xE000000000000000;
      v44[19] = 0;
      v44[20] = 0xE000000000000000;
      memset(&v44[21], 0, 72);
      v44[30] = MEMORY[0x1E69E7CC0];
      LOBYTE(v44[31]) = 1;
      v44[32] = 0;
      v19 = v35;
      sub_1DD3FA93C(v38, &v35[*(v37 + 36)]);
      memcpy(v19, v44, 0x108uLL);
      v45[0] = 0;
      v45[1] = 0xE000000000000000;
      v46 = 0;
      v47 = 0;
      v48 = 0xE000000000000000;
      v49 = 0;
      v50 = 0xE000000000000000;
      v51 = v17;
      v8 = v16;
      v52 = v18;
      v53 = 0;
      v54 = 0xE000000000000000;
      v55 = 0;
      v56 = 0xE000000000000000;
      v57 = 0;
      v58 = 0xE000000000000000;
      v59 = 0;
      v60 = 0xE000000000000000;
      v61 = 0;
      v62 = 0xE000000000000000;
      v63 = 0;
      v64 = 0xE000000000000000;
      v69 = 0;
      v68 = 0u;
      v67 = 0u;
      v66 = 0u;
      v65 = 0u;
      v70 = MEMORY[0x1E69E7CC0];
      v71 = 1;
      v72 = 0;

      sub_1DD3C9478(v44, &v43);
      sub_1DD3C9580(v45);
      v73 = v16;
      v20 = *(v16 + 16);
      v21 = *(v8 + 24);
      if (v20 >= v21 >> 1)
      {
        sub_1DD42BA08((v21 > 1), v20 + 1, 1);
        v8 = v73;
      }

      *(v8 + 16) = v20 + 1;
      result = sub_1DD3EB4B8(v19, v8 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v20, &qword_1ECCDBC18, &unk_1DD6459A0);
      if (v41)
      {
        goto LABEL_31;
      }

      a1 = v34;
      v22 = 1 << *(v34 + 32);
      if (v12 >= v22)
      {
        goto LABEL_28;
      }

      v23 = *(v42 + 8 * v14);
      if ((v23 & (1 << v12)) == 0)
      {
        goto LABEL_29;
      }

      if (*(v34 + 36) != v40)
      {
        goto LABEL_30;
      }

      v24 = v23 & (-2 << (v12 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v12 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v25 = v8;
        v26 = v14 << 6;
        v27 = v14 + 1;
        v28 = (v32 + 8 * v14);
        while (v27 < (v22 + 63) >> 6)
        {
          v30 = *v28++;
          v29 = v30;
          v26 += 64;
          ++v27;
          if (v30)
          {
            result = sub_1DD3AA558(v12, v40, 0);
            v22 = __clz(__rbit64(v29)) + v26;
            goto LABEL_19;
          }
        }

        result = sub_1DD3AA558(v12, v40, 0);
LABEL_19:
        v8 = v25;
      }

      v13 = v39 + 1;
      if (v39 + 1 == v33)
      {
        return v8;
      }

      v11 = 0;
      v10 = *(a1 + 36);
      v12 = v22;
      if (v22 < 0)
      {
        break;
      }
    }
  }

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
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1DD3EC974@<X0>(void (*a1)(uint64_t *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v11 = a2;

    a1(&v11);
    if (v4)
    {

      __break(1u);
    }

    else
    {

      v8 = a3(0);
      return __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
    }
  }

  else
  {
    v10 = a3(0);
    return __swift_storeEnumTagSinglePayload(a4, 1, 1, v10);
  }

  return result;
}

void sub_1DD3ECA40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t (*a10)(uint64_t), uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_93();
  a19 = v21;
  a20 = v22;
  a10 = v23;
  v25 = v24;
  v26 = type metadata accessor for Contact(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_2();
  v30 = v29 - v28;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC268, &qword_1DD64CE00);
  OUTLINED_FUNCTION_3(v31);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v32);
  v34 = &a9 - v33;
  OUTLINED_FUNCTION_77();
  sub_1DD3EB3D0(v35, v36, v37, v38);
  v39 = 1;
  OUTLINED_FUNCTION_8(v34, 1, v26);
  if (v40)
  {
    goto LABEL_4;
  }

  sub_1DD3FAE44(v34, v30);
  a10(v30);
  if (!v20)
  {
    OUTLINED_FUNCTION_37_5();
    sub_1DD3FA798(v30, v41);
    v39 = 0;
LABEL_4:
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBBE8, &qword_1DD644470);
    __swift_storeEnumTagSinglePayload(v25, v39, 1, v42);
    OUTLINED_FUNCTION_86();
    return;
  }

  sub_1DD3FA798(v30, type metadata accessor for Contact);
  __break(1u);
}

uint64_t sub_1DD3ECBDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a1 + 16);
  v6 = *(a2 + 16);
  if (v6 >= v5)
  {
    v7 = *(a1 + 16);
  }

  else
  {
    v7 = *(a2 + 16);
  }

  v35 = MEMORY[0x1E69E7CC0];
  sub_1DD42B404(0, v7, 0);
  result = v35;
  v29 = a2;
  v31 = v6;
  v27 = v7;
  v28 = v5;
  v26 = a1;
  if (v7)
  {
    v9 = (a1 + 32);
    v10 = (a2 + 32);
    while (v5)
    {
      if (!v6)
      {
        goto LABEL_26;
      }

      v11 = result;
      v33 = v9;
      v12 = *v9;
      v13 = *v10;

      v14 = a3(v12, v13);
      if (v34)
      {
      }

      v15 = v14;

      result = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        sub_1DD42B404(v16 > 1, v17 + 1, 1);
        result = v11;
      }

      --v6;
      *(result + 16) = v17 + 1;
      *(result + 8 * v17 + 32) = v15;
      --v5;
      ++v10;
      v9 = v33 + 1;
      if (!--v7)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_12:
    v18 = v27;
    v30 = v29 + 32;
    while (v28 != v18)
    {
      if (v18 >= v28)
      {
        goto LABEL_27;
      }

      if (__OFADD__(v18, 1))
      {
        goto LABEL_28;
      }

      if (v31 == v18)
      {
        return result;
      }

      if (v18 >= v31)
      {
        goto LABEL_29;
      }

      v19 = result;
      v20 = *(v26 + 32 + 8 * v18);
      v21 = *(v30 + 8 * v18);

      v22 = a3(v20, v21);
      if (v34)
      {
      }

      v23 = v22;

      result = v19;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1DD42B404(v24 > 1, v25 + 1, 1);
        result = v19;
      }

      *(result + 16) = v25 + 1;
      *(result + 8 * v25 + 32) = v23;
      ++v18;
    }
  }

  return result;
}

uint64_t sub_1DD3ECE74(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a3 + 16);
  v9 = *(a4 + 16);
  if (v9 >= v8)
  {
    v10 = *(a3 + 16);
  }

  else
  {
    v10 = *(a4 + 16);
  }

  v37 = MEMORY[0x1E69E7CC0];
  sub_1DD42B404(0, v10, 0);
  result = v37;
  v30 = v9;
  v31 = v8;
  v28 = a4;
  v29 = v10;
  v27 = a3;
  if (v10)
  {
    v12 = (a3 + 32);
    v13 = (a4 + 32);
    v14 = v10;
    while (v8)
    {
      if (!v9)
      {
        goto LABEL_26;
      }

      v15 = result;
      v16 = *v13;
      v34 = *v12;
      v35 = v16;

      a1(&v36, &v34, &v33);
      if (v5)
      {
      }

      v17 = v36;
      result = v15;
      v37 = v15;
      v19 = *(v15 + 16);
      v18 = *(v15 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_1DD42B404(v18 > 1, v19 + 1, 1);
        result = v37;
      }

      --v9;
      *(result + 16) = v19 + 1;
      *(result + 8 * v19 + 32) = v17;
      --v8;
      ++v13;
      ++v12;
      --v14;
      v5 = 0;
      if (!v14)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_12:
    for (i = v29; v31 != i; i = v23 + 1)
    {
      if (i >= v31)
      {
        goto LABEL_27;
      }

      if (__OFADD__(i, 1))
      {
        goto LABEL_28;
      }

      if (v30 == i)
      {
        return result;
      }

      if (i >= v30)
      {
        goto LABEL_29;
      }

      v21 = result;
      v22 = *(v28 + 32 + 8 * i);
      v34 = *(v27 + 32 + 8 * i);
      v35 = v22;

      a1(&v36, &v34, &v33);
      if (v5)
      {
      }

      v5 = 0;
      v23 = i;

      v24 = v36;
      result = v21;
      v37 = v21;
      v25 = *(v21 + 16);
      v26 = *(result + 24);
      if (v25 >= v26 >> 1)
      {
        sub_1DD42B404(v26 > 1, v25 + 1, 1);
        result = v37;
      }

      *(result + 16) = v25 + 1;
      *(result + 8 * v25 + 32) = v24;
    }
  }

  return result;
}

void sub_1DD3ED110()
{
  OUTLINED_FUNCTION_18_4();
  v1 = v0;
  v3 = v2;
  v163 = v4;
  v5 = type metadata accessor for ContactResolverCache(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_1();
  v162 = v7;
  v8 = OUTLINED_FUNCTION_6_2();
  v171 = type metadata accessor for ContactResolverConfig(v8);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_1();
  v161 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1F8, &qword_1DD645948);
  OUTLINED_FUNCTION_3(v11);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_7_3();
  v158 = v13;
  v14 = OUTLINED_FUNCTION_6_2();
  v159 = type metadata accessor for StringTokenizer(v14);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_2_1();
  v160 = v16;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_0();
  v157 = v18;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_16_3();
  v169 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1F0, &qword_1DD645940);
  OUTLINED_FUNCTION_3(v21);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_7_3();
  v172 = v23;
  OUTLINED_FUNCTION_6_2();
  sub_1DD63D168();
  OUTLINED_FUNCTION_0();
  v175 = v25;
  v176 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_1();
  v156 = v26;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_0();
  v155 = v28;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v152 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1E0, &qword_1DD645930);
  OUTLINED_FUNCTION_3(v32);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v152 - v34;
  v177 = type metadata accessor for CandidateContactGenerator(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_2();
  v40 = v39 - v38;
  *(v39 - v38 + *(v37 + 56)) = 2;
  v41 = v3[1];
  if (v41)
  {
    sub_1DD58244C(v185);
    v41 = v185[0];
  }

  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_31_0();
  *(v42 - 16) = v3;
  sub_1DD3EC974(sub_1DD3FAD3C, v41, type metadata accessor for HypocorismGenerator, v35);

  sub_1DD3EB4B8(v35, v40, &qword_1ECCDC1E0, &qword_1DD645930);
  v43 = *(v3 + v5[11]);
  v170 = v5;
  v174 = v1;
  if (v43)
  {
    v44 = v43;
    v45 = [v44 contactRelations];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC248, &qword_1DD657600);
    sub_1DD640118();

    v46 = sub_1DD3CC020();

    if (v46)
    {
      if (qword_1EE165FB0 != -1)
      {
        OUTLINED_FUNCTION_0_2();
        swift_once();
      }

      v47 = sub_1DD63F9F8();
      OUTLINED_FUNCTION_130(v47, qword_1EE16F068);
      v48 = sub_1DD63F9D8();
      v49 = sub_1DD640368();
      v50 = OUTLINED_FUNCTION_27_5();
      if (os_log_type_enabled(v50, v51))
      {
        OUTLINED_FUNCTION_28();
        v52 = swift_slowAlloc();
        *v52 = 0;
        _os_log_impl(&dword_1DD38D000, v48, v49, "CandidateContactGenerator::init - meCard found in cache with valid contact relations set", v52, 2u);
        v1 = v174;
        v5 = v170;
        OUTLINED_FUNCTION_13_0();
        MEMORY[0x1E12B3DA0]();
      }

      v53 = v177;
      v54 = v177[5];
      (*(v175 + 16))(v31, v1 + *(v171 + 32), v176);
      sub_1DD5146A4(v44, v31, (v40 + v54));
      v55 = type metadata accessor for MeCardContactGenerator(0);
      v56 = v40 + v54;
      v57 = 0;
      goto LABEL_16;
    }
  }

  v53 = v177;
  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v58 = sub_1DD63F9F8();
  OUTLINED_FUNCTION_130(v58, qword_1EE16F068);
  v59 = sub_1DD63F9D8();
  v60 = sub_1DD640368();
  v61 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v61, v62))
  {
    OUTLINED_FUNCTION_28();
    v63 = swift_slowAlloc();
    OUTLINED_FUNCTION_13_4(v63);
    _os_log_impl(&dword_1DD38D000, v59, v60, "CandidateContactGenerator::init - meCard not found in cache or did not have valid contact relations set", v53, 2u);
    v53 = v177;
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
  }

  v64 = v53[5];
  v55 = type metadata accessor for MeCardContactGenerator(0);
  v56 = v40 + v64;
  v57 = 1;
LABEL_16:
  v65 = __swift_storeEnumTagSinglePayload(v56, v57, 1, v55);
  v66 = *v3;
  if (*v3)
  {
    sub_1DD58244C(v185);
    v66 = v185[0];
  }

  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_31_0();
  *(v67 - 16) = v1;
  *(v67 - 8) = v3;
  v68 = v172;
  sub_1DD3EC974(sub_1DD3FAD58, v66, type metadata accessor for RelationshipAliasGenerator, v172);

  sub_1DD3EB4B8(v68, v40 + v53[6], &qword_1ECCDC1F0, &qword_1DD645940);
  *(v40 + v53[8]) = *(v3 + v5[17]);
  v69 = (v3 + v5[16]);
  v70 = *v69;
  if (*v69)
  {
    v71 = v69[1];
  }

  else
  {
    v71 = 0;
  }

  v152 = v31;
  v72 = (v40 + v53[7]);
  *v72 = v70;
  v72[1] = v71;
  v167 = v5[8];
  sub_1DD3C2388(v3 + v167, v185);
  v172 = v5[15];
  v73 = v169;
  sub_1DD3FA93C(v3 + v172, v169);
  v74 = v5;
  v75 = *(v175 + 16);
  v164 = *(v171 + 32);
  v165 = v75;
  v76 = v155;
  v166 = v175 + 16;
  v75(v155, v174 + v164, v176);
  v154 = v3 + v74[7];
  v168 = v154[5];
  v77 = v40 + v53[9];
  sub_1DD3C2388(v185, v77);
  v171 = type metadata accessor for ContactsFrameworkMatcher(0);
  sub_1DD3FA93C(v73, v77 + *(v171 + 20));

  v79 = sub_1DD4F9BB8(v78);
  v173 = v3;
  v80 = v40;
  if ((v79 & 1) == 0)
  {
    v81 = sub_1DD63D118();
    OUTLINED_FUNCTION_117(v81, v82);
    *&v179 = 24938;
    *(&v179 + 1) = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    OUTLINED_FUNCTION_48_2();
    sub_1DD63FD48();
    OUTLINED_FUNCTION_105_0();
    v53 = v177;
    if ((v76 & 1) == 0)
    {
      v83 = sub_1DD63D118();
      OUTLINED_FUNCTION_117(v83, v84);
      *&v179 = 28523;
      *(&v179 + 1) = 0xE200000000000000;
      OUTLINED_FUNCTION_48_2();
      sub_1DD63FD48();
      OUTLINED_FUNCTION_105_0();
    }
  }

  v85 = v176;
  v86 = *(v175 + 8);
  v175 += 8;
  v155 = v86;
  v86(v76, v176);
  OUTLINED_FUNCTION_38_3();
  sub_1DD3FA798(v169, v87);
  __swift_destroy_boxed_opaque_existential_1(v185);
  v88 = v170;
  OUTLINED_FUNCTION_69_0();
  v89 = v173;
  v169 = *(v173 + v88[12]);
  v90 = v53[10];
  v153 = v80;
  v91 = v80 + v90;
  v92 = type metadata accessor for ThirdPartyContactMatcher(0);
  v93 = v172;
  sub_1DD3FA93C(v89 + v172, v91 + *(v92 + 20));
  v94 = v174;
  v95 = v164;
  v96 = v85;
  v97 = v165;
  v165(v91, v174 + v164, v96);
  *(v91 + *(type metadata accessor for SiriVocabularySearcher(0) + 20)) = v169;
  sub_1DD3C2388(v89 + v88[9], v185);
  v98 = v89 + v93;
  v99 = v153;
  v100 = v157;
  sub_1DD3FA93C(v98, v157);
  v101 = v156;
  v97(v156, v94 + v95, v176);
  v102 = v99 + v177[13];
  sub_1DD3C2388(v185, v102);
  sub_1DD3FA93C(v100, v102 + *(v171 + 20));
  if (sub_1DD4F9BB8(v169))
  {
    v103 = v173;
    v104 = v174;
  }

  else
  {
    v105 = sub_1DD63D118();
    OUTLINED_FUNCTION_117(v105, v106);
    *&v179 = 24938;
    *(&v179 + 1) = 0xE200000000000000;
    sub_1DD3B52B8();
    sub_1DD3B530C();
    OUTLINED_FUNCTION_48_2();
    sub_1DD63FD48();
    OUTLINED_FUNCTION_105_0();
    if ((v101 & 1) == 0)
    {
      v107 = sub_1DD63D118();
      OUTLINED_FUNCTION_117(v107, v108);
      *&v179 = 28523;
      *(&v179 + 1) = 0xE200000000000000;
      OUTLINED_FUNCTION_48_2();
      sub_1DD63FD48();
      OUTLINED_FUNCTION_105_0();
    }

    v103 = v173;
    v104 = v174;
  }

  v109 = v176;
  v155(v101, v176);
  OUTLINED_FUNCTION_38_3();
  sub_1DD3FA798(v100, v110);
  __swift_destroy_boxed_opaque_existential_1(v185);
  OUTLINED_FUNCTION_69_0();
  v111 = v154;
  v112 = v104;
  if (v154[2])
  {
    v113 = v152;
    v165(v152, v104 + v164, v109);
    OUTLINED_FUNCTION_5_14();
    v114 = v160;
    sub_1DD3FA93C(v103 + v172, v160);
    v115 = v158;
    sub_1DD4BE010(v113, v114, v158);
    v116 = 0;
    v117 = v170;
  }

  else
  {
    v116 = 1;
    v117 = v170;
    v114 = v160;
    v115 = v158;
  }

  Expander = type metadata accessor for EmojiQueryExpander(0);
  __swift_storeEnumTagSinglePayload(v115, v116, 1, Expander);
  sub_1DD3EB4B8(v115, v99 + v177[15], &qword_1ECCDC1F8, &qword_1DD645948);
  v119 = v99;
  if (v111[6] == 1)
  {
    v120 = v173;
    sub_1DD3C2388(v173 + v117[10], v185);
    sub_1DD3C2388(v120 + v167, &v185[5]);
  }

  else
  {
    memset(v185, 0, 80);
    v120 = v173;
  }

  v121 = v177;
  v176 = v177[22];
  memcpy((v119 + v177[11]), v185, 0x50uLL);
  v122 = v161;
  sub_1DD3FA93C(v112, v161);
  OUTLINED_FUNCTION_5_14();
  v175 = v123;
  v124 = v172;
  sub_1DD3FA93C(v120 + v172, v114);
  *(&v183 + 1) = v159;
  *&v184[0] = &off_1F58C2FE8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v182);
  sub_1DD3FAE44(v114, boxed_opaque_existential_1);
  type metadata accessor for CandidateContactDeduplicator(0);
  v126 = swift_allocObject();
  sub_1DD3FAE44(v122, v126 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_config);
  sub_1DD3AA4A8(&v182, v126 + OBJC_IVAR____TtC13SiriInference28CandidateContactDeduplicator_tokenizer);
  *(v119 + v121[17]) = v126;
  v127 = v162;
  sub_1DD3FA93C(v120, v162);
  sub_1DD3FA93C(v112, v122);
  v128 = v122;
  v129 = v176;
  sub_1DD3EE2E0(v127, v128, v119 + v121[18]);
  sub_1DD3FA93C(v120 + v124, v119 + v121[12]);
  sub_1DD3FA84C(v120 + v117[25], v119 + v121[19]);
  *(v119 + v121[20]) = *(v120 + v117[26]);
  v130 = (v120 + v117[27]);
  v131 = v130[1];
  v182 = *v130;
  v183 = v131;
  v133 = *v130;
  v132 = v130[1];
  v184[0] = v130[2];
  *(v184 + 9) = *(v130 + 41);
  v134 = (v119 + v121[21]);
  v135 = v182;
  *v134 = v133;
  v134[1] = v132;
  v134[2] = v130[2];
  *(v134 + 41) = *(v130 + 41);
  v136 = *(v120 + v117[22]);
  *(v119 + v121[23]) = v136;
  v137 = *(v120 + v117[21]);
  v138 = v121[24];
  v139 = v119;
  *(v119 + v138) = v137;
  *(v119 + v129) = 0;
  if (v135 == 1)
  {
    if (v136 && v137)
    {
      type metadata accessor for E3Orchestrator();
      OUTLINED_FUNCTION_18_9();
      v140 = swift_allocObject();
      *(v140 + 16) = v136;
      *(v140 + 24) = v137;
      *(v119 + v129) = v140;
      swift_retain_n();
      swift_retain_n();
      sub_1DD3FAD78(&v182, &v179);
    }

    else
    {
      type metadata accessor for EuclidVectorDb();
      OUTLINED_FUNCTION_18_9();
      swift_allocObject();

      sub_1DD3FAD78(&v182, &v179);
      v141 = sub_1DD4B97D4();
      type metadata accessor for EuclidEmbeddingApi();
      OUTLINED_FUNCTION_57();
      swift_allocObject();
      v142 = sub_1DD4BA174();
      type metadata accessor for E3Orchestrator();
      OUTLINED_FUNCTION_18_9();
      v140 = swift_allocObject();
      *(v140 + 16) = v141;
      *(v140 + 24) = v142;
      *(v119 + v129) = v140;
    }
  }

  else
  {

    sub_1DD3FAD78(&v182, &v179);
    v140 = 0;
  }

  v143 = v119 + v177[16];
  OUTLINED_FUNCTION_5_14();
  v144 = v173;
  sub_1DD3FA93C(v173 + v172, v143);
  v145 = type metadata accessor for AsrE3CandidateExpander(0);
  sub_1DD3C2388(v144 + v167, v143 + v145[5]);
  v146 = v130[2];
  v180 = v130[1];
  v147 = v180;
  v181[0] = v146;
  *(v181 + 9) = *(v130 + 41);
  v148 = *(v181 + 9);
  v179 = *v130;
  v149 = v145[7];
  v150 = (v143 + v145[6]);
  *v150 = v179;
  v150[1] = v147;
  v150[2] = v146;
  *(v150 + 41) = v148;
  *(v143 + v149) = v140;
  sub_1DD3FA93C(v139, v163);
  sub_1DD3FAD78(&v179, &v178);

  OUTLINED_FUNCTION_39_2();
  sub_1DD3FA798(v174, v151);
  OUTLINED_FUNCTION_43_3();
  sub_1DD3FA798(v139, type metadata accessor for CandidateContactGenerator);
  OUTLINED_FUNCTION_17();
}

uint64_t sub_1DD3EE01C@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(type metadata accessor for ContactResolverCache(0) + 60);
  v6 = type metadata accessor for HypocorismGenerator(0);
  sub_1DD3FA93C(a2 + v5, a3 + *(v6 + 20));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC260, &unk_1DD645B20);
  swift_allocObject();

  result = sub_1DD627AE8();
  *a3 = result;
  return result;
}

uint64_t sub_1DD3EE0C8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = sub_1DD63D168();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ContactResolverConfig(0);
  (*(v8 + 16))(v10, a2 + *(v11 + 32), v7);
  v12 = *(type metadata accessor for ContactResolverCache(0) + 60);
  v13 = type metadata accessor for RelationshipAliasGenerator(0);
  sub_1DD3FA93C(a3 + v12, a4 + *(v13 + 24));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC258, &qword_1DD645B18);
  swift_allocObject();

  *a4 = sub_1DD627AE8();
  v19[4] = sub_1DD63D118();
  v19[5] = v14;
  v19[2] = 45;
  v19[3] = 0xE100000000000000;
  v19[0] = 95;
  v19[1] = 0xE100000000000000;
  sub_1DD3B7F10();
  sub_1DD640678();

  v15 = sub_1DD63FE58();
  v17 = v16;

  result = (*(v8 + 8))(v10, v7);
  a4[1] = v15;
  a4[2] = v17;
  return result;
}

uint64_t sub_1DD3EE2E0@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v46 = type metadata accessor for SiriRemembersContactSignalProvider(0);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2();
  v8 = v7 - v6;
  v9 = sub_1DD63F308();
  OUTLINED_FUNCTION_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_1();
  v14 = v13;
  v15 = OUTLINED_FUNCTION_6_2();
  v16 = type metadata accessor for ContactResolverCache(v15);
  OUTLINED_FUNCTION_5_14();
  sub_1DD3FA93C(a1 + v17, a3);
  v47 = a1;
  v18 = *(a1 + v16[11]);
  if (v18)
  {
    v19 = v18;
    v20 = [v19 identifier];
    v21 = sub_1DD63FDD8();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0;
  }

  v43 = type metadata accessor for ContactSignalProviders(0);
  v45 = a3;
  v24 = (a3 + v43[5]);
  *v24 = v21;
  v24[1] = v23;
  v25 = *(v11 + 16);
  v25(v14, v47 + v16[6], v9);
  v40 = *a2;
  v41 = *&a2[*(type metadata accessor for ContactResolverConfig(0) + 52)];
  sub_1DD3EB3D0(v47 + v16[30], v48, &qword_1ECCDC250, &qword_1DD645B10);
  v26 = *(a2 + 2);
  v42 = *(a2 + 1);
  v27 = v8 + v46[7];
  *(v27 + 32) = 0;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  v25(v8, v14, v9);
  *(v8 + v46[5]) = v40;

  OUTLINED_FUNCTION_39_2();
  sub_1DD3FA798(a2, v28);
  (*(v11 + 8))(v14, v9);
  v29 = (v8 + v46[6]);
  if (v41 == 4)
  {
    v30 = xmmword_1DD6458E0;
  }

  else
  {
    if (v41 != 1)
    {
      *v29 = 0;
      v29[1] = 0;
      goto LABEL_10;
    }

    v30 = xmmword_1DD6458F0;
  }

  *v29 = v30;
LABEL_10:
  v31 = v26;
  v32 = v43[6];
  v33 = (v8 + v46[8]);
  sub_1DD3FADD4(v48, v27);
  *v33 = v42;
  v33[1] = v31;
  sub_1DD3FAE44(v8, v45 + v32);
  *(v45 + v43[7]) = *(v47 + v16[13]);
  v34 = v47 + v16[28];
  v35 = *v34;
  LOBYTE(v32) = *(v34 + 1);
  v36 = *(v34 + 2);
  v37 = *(v34 + 8);

  result = OUTLINED_FUNCTION_43_3();
  v39 = v45 + v43[8];
  *v39 = v35;
  *(v39 + 1) = v32;
  *(v39 + 2) = v36;
  *(v39 + 8) = v37;
  return result;
}

void sub_1DD3EE620()
{
  OUTLINED_FUNCTION_93();
  v820 = v1;
  v799 = v0;
  v779 = v2;
  v796 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1E8, &qword_1DD645938);
  OUTLINED_FUNCTION_3(v4);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_7_3();
  v770 = v6;
  v7 = OUTLINED_FUNCTION_6_2();
  v769 = type metadata accessor for MeCardContactGenerator(v7);
  OUTLINED_FUNCTION_0();
  v755 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v772 = v746 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_16_3();
  v756 = v12;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_16_3();
  v771 = v14;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_16_3();
  v754 = v16;
  v757 = v17;
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_16_3();
  v787 = v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1F0, &qword_1DD645940);
  OUTLINED_FUNCTION_3(v20);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_7_3();
  v768 = v22;
  v23 = OUTLINED_FUNCTION_6_2();
  v776 = type metadata accessor for RelationshipAliasGenerator(v23);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_1();
  v786 = v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC1F8, &qword_1DD645948);
  OUTLINED_FUNCTION_3(v26);
  OUTLINED_FUNCTION_4();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_7_3();
  v784 = v28;
  v29 = OUTLINED_FUNCTION_6_2();
  Expander = type metadata accessor for EmojiQueryExpander(v29);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_1();
  v785 = v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC200, &qword_1DD645998);
  v33 = OUTLINED_FUNCTION_3(v32);
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_2_1();
  v765 = v34;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_16_3();
  v780 = v36;
  v808 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDBC18, &unk_1DD6459A0);
  OUTLINED_FUNCTION_0();
  v809 = v37;
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_2_1();
  v761 = v39;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_18_0();
  v753 = v41;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_18_0();
  v804 = v43;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_18_0();
  v760 = v45;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_18_0();
  v759 = v47;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v48);
  OUTLINED_FUNCTION_16_3();
  v806 = v49;
  OUTLINED_FUNCTION_6_2();
  v790 = sub_1DD63F9C8();
  OUTLINED_FUNCTION_0();
  v793 = v50;
  MEMORY[0x1EEE9AC00](v51);
  OUTLINED_FUNCTION_2_1();
  v751 = v52;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_18_0();
  v767 = v54;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v55);
  OUTLINED_FUNCTION_16_3();
  v807 = v56;
  v57 = OUTLINED_FUNCTION_6_2();
  v58 = type metadata accessor for Signpost(v57);
  OUTLINED_FUNCTION_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_2_1();
  v747 = v60;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_18_0();
  v748 = v62;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v63);
  OUTLINED_FUNCTION_18_0();
  v782 = v64;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_18_0();
  v778 = v66;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_18_0();
  v777 = v68;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_18_0();
  v775 = v70;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_18_0();
  v774 = v72;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_18_0();
  v783 = v74;
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v75);
  v77 = v746 - v76;
  if (qword_1EE166460 != -1)
  {
LABEL_290:
    OUTLINED_FUNCTION_2_2();
    swift_once();
  }

  v78 = qword_1EE16F0C0;
  v79 = v77 + *(v58 + 20);
  *v79 = "ContactResolver.CandidateContactGenerator.generate";
  *(v79 + 8) = 50;
  *(v79 + 16) = 2;
  v80 = v78;
  sub_1DD63F9B8();
  v794 = v58;
  *(v77 + *(v58 + 24)) = v80;
  v81 = v80;
  sub_1DD6404D8();
  v801 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECCDFCE0, &unk_1DD645500);
  OUTLINED_FUNCTION_23_5();
  v82 = swift_allocObject();
  v792 = xmmword_1DD643F90;
  *(v82 + 16) = xmmword_1DD643F90;
  v83 = sub_1DD6408F8();
  v85 = v84;
  *(v82 + 56) = MEMORY[0x1E69E6158];
  v802 = sub_1DD392BD8();
  *(v82 + 64) = v802;
  *(v82 + 32) = v83;
  *(v82 + 40) = v85;
  v745 = v82;
  v744 = 2;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_119();
  v766 = v77;
  sub_1DD63F998();

  if (qword_1EE165FB0 != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v86 = sub_1DD63F9F8();
  v87 = __swift_project_value_buffer(v86, qword_1EE16F068);
  v88 = v779;

  v803 = v87;
  v89 = sub_1DD63F9D8();
  v90 = sub_1DD640368();
  v91 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = OUTLINED_FUNCTION_54();
    *v93 = 134217984;
    *(v93 + 4) = *(v88 + 16);

    _os_log_impl(&dword_1DD38D000, v89, v90, "generating matches from %ld queries", v93, 0xCu);
    v94 = OUTLINED_FUNCTION_15_10();
    MEMORY[0x1E12B3DA0](v94);
  }

  else
  {
  }

  v95 = v807;
  v96 = v81;
  sub_1DD63F9B8();
  sub_1DD6404D8();
  OUTLINED_FUNCTION_23_5();
  v97 = swift_allocObject();
  *(v97 + 16) = v792;
  v98 = 2;
  v99 = sub_1DD6408F8();
  v100 = v802;
  *(v97 + 56) = MEMORY[0x1E69E6158];
  *(v97 + 64) = v100;
  *(v97 + 32) = v99;
  *(v97 + 40) = v101;
  v745 = v97;
  v744 = 2;
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_80();
  sub_1DD63F998();

  sub_1DD3F336C(v796, v819);
  if (v820)
  {
    goto LABEL_292;
  }

  sub_1DD6404C8();
  OUTLINED_FUNCTION_80();
  sub_1DD63F9A8();
  v102 = *(v793 + 8);
  v793 += 8;
  v781 = v102;
  v102(v95, v790);
  v103 = *&v819[0];

  v104 = sub_1DD63F9D8();
  v105 = sub_1DD640368();

  v106 = os_log_type_enabled(v104, v105);
  v107 = &qword_1DD643000;
  v789 = v103;
  v795 = v96;
  if (v106)
  {
    v108 = OUTLINED_FUNCTION_54();
    v807 = OUTLINED_FUNCTION_62();
    *&v819[0] = v807;
    *v108 = 136315138;
    swift_getKeyPath();
    v109 = *(v103 + 16);
    if (v109)
    {
      v800 = v108;
      LODWORD(v805) = v105;
      *&v818[0] = MEMORY[0x1E69E7CC0];
      sub_1DD42B97C(0, v109, 0);
      v110 = *&v818[0];
      v111 = (v103 + 32);
      do
      {
        v815[0] = *v111;

        OUTLINED_FUNCTION_89();
        swift_getAtKeyPath();

        v112 = *&v812[0];
        *&v818[0] = v110;
        OUTLINED_FUNCTION_47_2();
        if (v114)
        {
          OUTLINED_FUNCTION_12_11(v113);
          OUTLINED_FUNCTION_57_2();
          sub_1DD42B97C(v116, v117, v118);
          v110 = *&v818[0];
        }

        OUTLINED_FUNCTION_114();
        *(v115 + 32) = v112;
        ++v111;
        --v109;
      }

      while (v109);

      LOBYTE(v105) = v805;
      v108 = v800;
    }

    else
    {

      v110 = MEMORY[0x1E69E7CC0];
    }

    v98 = MEMORY[0x1E12B2430](v110, MEMORY[0x1E69E6530]);
    v121 = v120;

    v122 = OUTLINED_FUNCTION_87_0();
    v124 = sub_1DD39565C(v122, v121, v123);

    *(v108 + 4) = v124;
    _os_log_impl(&dword_1DD38D000, v104, v105, "queries after initial expanders: %s", v108, 0xCu);
    v107 = v807;
    __swift_destroy_boxed_opaque_existential_1(v807);
    OUTLINED_FUNCTION_13_0();
    MEMORY[0x1E12B3DA0]();
    v125 = OUTLINED_FUNCTION_10_2();
    MEMORY[0x1E12B3DA0](v125);

    v119 = v799;
    v95 = v795;
  }

  else
  {
    v95 = v96;

    v119 = v799;
  }

  OUTLINED_FUNCTION_57();
  v126 = swift_allocObject();
  v798 = v126;
  *(v126 + 16) = v789;
  v127 = (v126 + 16);
  OUTLINED_FUNCTION_57();
  v128 = swift_allocObject();
  v788 = v128;
  *(v128 + 16) = MEMORY[0x1E69E7CC0];
  v764 = (v128 + 16);
  v129 = type metadata accessor for CandidateContactGenerator(0);
  v130 = *(v119 + *(v129 + 32));
  v797 = v129;
  v800 = v127;
  if (v130)
  {
    OUTLINED_FUNCTION_85_0();
    v131 = v783;
    OUTLINED_FUNCTION_16_6(v783 + v132);
    v133 = v95;

    v805 = v130;

    sub_1DD63F9B8();
    *(v131 + *(v98 + 24)) = v133;
    v134 = v133;
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v135 = swift_allocObject();
    OUTLINED_FUNCTION_52_2(v135);
    v136 = sub_1DD6408F8();
    v137 = v802;
    v135[7] = MEMORY[0x1E69E6158];
    v135[8] = v137;
    v135[4] = v136;
    v135[5] = v138;
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_9_8();
    v752 = v134;
    OUTLINED_FUNCTION_98();
    sub_1DD63F998();
    OUTLINED_FUNCTION_104_0();
    v139 = sub_1DD63F9D8();
    sub_1DD640368();
    v140 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v140, v141))
    {
      OUTLINED_FUNCTION_28();
      v142 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_4(v142);
      OUTLINED_FUNCTION_29_3();
      _os_log_impl(v143, v144, v145, v146, v147, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v148 = *v800;
    v149 = *(*v800 + 16);
    v150 = *v800 + 32;

    v151 = 0;
    v98 = MEMORY[0x1E69E7CC0];
    p_isa = &v780->isa;
    v763 = v148;
    v749 = v150;
    v750 = v149;
    while (v151 != v149)
    {
      sub_1DD408C00();
      v153 = *(v150 + 8 * v151);
      v758 = v151;
      v762 = v151 + 1;
      v807 = *(v153 + 16);

      v154 = 0;
      v791 = v98;
      while (1)
      {
        v155 = v806;
        if (v807 == v154)
        {
          break;
        }

        if (v154 >= *(v153 + 16))
        {
          __break(1u);
          goto LABEL_220;
        }

        OUTLINED_FUNCTION_107();
        v98 = v157 & ~v156;
        v134 = *(v158 + 72);
        v95 = &qword_1ECCDBC18;
        sub_1DD3EB3D0(v153 + v98 + v134 * v154, v155, &qword_1ECCDBC18, &unk_1DD6459A0);
        sub_1DD53C3D8(v155, p_isa);
        sub_1DD390754(v155, &qword_1ECCDBC18, &unk_1DD6459A0);
        OUTLINED_FUNCTION_8(p_isa, 1, v808);
        if (v159)
        {
          sub_1DD390754(p_isa, &qword_1ECCDC200, &qword_1DD645998);
          ++v154;
        }

        else
        {
          OUTLINED_FUNCTION_77();
          sub_1DD3EB4B8(v160, v161, v162, v163);
          v164 = v760;
          OUTLINED_FUNCTION_77();
          sub_1DD3EB4B8(v165, v166, v167, v168);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            OUTLINED_FUNCTION_26_2();
            sub_1DD3BF7FC();
            v791 = v173;
          }

          v171 = *(v791 + 16);
          v170 = *(v791 + 24);
          v95 = v171 + 1;
          if (v171 >= v170 >> 1)
          {
            OUTLINED_FUNCTION_1_0(v170);
            sub_1DD3BF7FC();
            v791 = v174;
          }

          ++v154;
          v172 = v791;
          *(v791 + 16) = v95;
          sub_1DD3EB4B8(v164, v172 + v98 + v171 * v134, &qword_1ECCDBC18, &unk_1DD6459A0);
          p_isa = &v780->isa;
        }
      }

      v175 = v791;
      if (*(v791 + 16))
      {
        sub_1DD58691C();
        sub_1DD587178();
        sub_1DD607914(v175);
      }

      else
      {
      }

      v151 = v762;
      v98 = MEMORY[0x1E69E7CC0];
      v150 = v749;
      v149 = v750;
    }

    v565 = v803;
    v566 = sub_1DD63F9D8();
    sub_1DD640368();
    OUTLINED_FUNCTION_115();
    if (os_log_type_enabled(v566, v567))
    {
      LODWORD(v806) = v565;
      v568 = v98;
      v569 = OUTLINED_FUNCTION_54();
      v791 = OUTLINED_FUNCTION_62();
      *&v819[0] = v791;
      v807 = v569;
      *v569 = 136315138;
      v570 = v800;
      OUTLINED_FUNCTION_113();
      swift_beginAccess();
      v571 = *v570;
      KeyPath = swift_getKeyPath();
      v572 = *(v571 + 16);
      if (v572)
      {
        v780 = v566;
        *&v818[0] = v568;

        v573 = v818;
        sub_1DD42A1D4(v572);
        OUTLINED_FUNCTION_72_1();
        do
        {
          v134 = *(&v566->isa + v571);
          v815[0] = v134;

          OUTLINED_FUNCTION_89();
          swift_getAtKeyPath();

          p_isa = *&v812[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v574 = OUTLINED_FUNCTION_13_9();
            sub_1DD42B97C(v574, v575, v576);
            v573 = *&v818[0];
          }

          OUTLINED_FUNCTION_46_0();
          if (v114)
          {
            v578 = OUTLINED_FUNCTION_12_11(v577);
            OUTLINED_FUNCTION_128(v578);
            v573 = *&v818[0];
          }

          OUTLINED_FUNCTION_50_3();
          --v572;
          v177 = v784;
        }

        while (v572);

        OUTLINED_FUNCTION_118();
        v566 = v780;
      }

      else
      {

        v573 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_118();
        v177 = v784;
      }

      MEMORY[0x1E12B2430](v573, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_61_1();
      v631 = OUTLINED_FUNCTION_87_0();
      sub_1DD39565C(v631, v134, v632);
      OUTLINED_FUNCTION_59_0();

      v98 = v807;
      *(v807 + 4) = v573;
      OUTLINED_FUNCTION_91();
      _os_log_impl(v633, v566, v634, v635, v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v791);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();

      v107 = v797;
      v127 = v800;
    }

    else
    {

      KeyPath = v799;
      v127 = v800;
      v107 = v797;
      p_isa = v795;
      v177 = v784;
    }

    sub_1DD6404C8();
    v178 = v783;
    sub_1DD63F9A8();

    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v178, v179);
  }

  else
  {
    OUTLINED_FUNCTION_59_0();

    p_isa = v95;
    KeyPath = v119;
    v177 = v784;
  }

  sub_1DD3EB3D0(KeyPath + *(v107 + 15), v177, &qword_1ECCDC1F8, &qword_1DD645948);
  OUTLINED_FUNCTION_8(v177, 1, Expander);
  if (v159)
  {
    sub_1DD390754(v177, &qword_1ECCDC1F8, &qword_1DD645948);
  }

  else
  {
    sub_1DD3FAE44(v177, v785);
    OUTLINED_FUNCTION_85_0();
    v180 = v774;
    OUTLINED_FUNCTION_16_6(v774 + v181);
    v182 = p_isa;
    sub_1DD63F9B8();
    *(v180 + *(v98 + 24)) = v182;
    v183 = v182;
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v184 = swift_allocObject();
    OUTLINED_FUNCTION_52_2(v184);
    v185 = sub_1DD6408F8();
    v186 = v802;
    v184[7] = MEMORY[0x1E69E6158];
    v184[8] = v186;
    v184[4] = v185;
    v184[5] = v187;
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_9_8();
    v807 = v183;
    OUTLINED_FUNCTION_62_1();
    sub_1DD63F998();
    OUTLINED_FUNCTION_104_0();
    v188 = sub_1DD63F9D8();
    v189 = sub_1DD640368();
    v190 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v190, v191))
    {
      OUTLINED_FUNCTION_28();
      v193 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_4(v193);
      OUTLINED_FUNCTION_29_3();
      _os_log_impl(v194, v195, v196, v197, v198, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    OUTLINED_FUNCTION_100(v127, &v810);
    v199 = v746;
    v98 = v798;
    MEMORY[0x1EEE9AC00](v200);
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_126(v201);
    v202 = OUTLINED_FUNCTION_56_3();
    sub_1DD604A9C(v202, v203, v204);
    OUTLINED_FUNCTION_68_0();
    *(v98 + 16) = v189;

    v205 = v803;
    v206 = sub_1DD63F9D8();
    sub_1DD640368();
    OUTLINED_FUNCTION_115();
    if (os_log_type_enabled(v206, v207))
    {
      LODWORD(v806) = v205;
      OUTLINED_FUNCTION_54();
      v208 = OUTLINED_FUNCTION_60();
      *&v819[0] = v208;
      v746[0] = 136315138;
      v209 = *v127;
      v98 = swift_getKeyPath();
      v210 = *(v209 + 16);
      if (v210)
      {
        v784 = v208;
        v791 = v746;
        v805 = v206;
        *&v818[0] = MEMORY[0x1E69E7CC0];

        v211 = v818;
        sub_1DD42B97C(0, v210, 0);
        OUTLINED_FUNCTION_72_1();
        do
        {
          v180 = *(v746 + v209);
          v815[0] = v180;

          OUTLINED_FUNCTION_89();
          swift_getAtKeyPath();

          *&v818[0] = v211;
          OUTLINED_FUNCTION_46_0();
          if (v114)
          {
            v213 = OUTLINED_FUNCTION_12_11(v212);
            OUTLINED_FUNCTION_128(v213);
            v211 = *&v818[0];
          }

          OUTLINED_FUNCTION_50_3();
          --v210;
        }

        while (v210);

        v206 = v805;
        v199 = v791;
        v208 = v784;
      }

      else
      {

        v211 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1E12B2430](v211, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_61_1();
      v214 = OUTLINED_FUNCTION_87_0();
      sub_1DD39565C(v214, v180, v215);
      OUTLINED_FUNCTION_59_0();

      *(v199 + 1) = v211;
      OUTLINED_FUNCTION_41_2(&dword_1DD38D000, "queries after EmojiQueryExpander: %s", v806);
      __swift_destroy_boxed_opaque_existential_1(v208);
      v216 = OUTLINED_FUNCTION_11_11();
      MEMORY[0x1E12B3DA0](v216);
      v217 = OUTLINED_FUNCTION_15_10();
      MEMORY[0x1E12B3DA0](v217);

      KeyPath = v799;
      v127 = v800;
      v107 = v797;
      p_isa = v795;
    }

    else
    {

      v107 = v797;
      KeyPath = v799;
    }

    sub_1DD6404C8();
    OUTLINED_FUNCTION_62_1();
    v218 = v774;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v218, v219);
    sub_1DD3FA798(v785, type metadata accessor for EmojiQueryExpander);
  }

  v220 = sub_1DD553818(v796);
  if (sub_1DD553C54(*(KeyPath + *(v107 + 20)), v220))
  {
    LODWORD(v806) = v220;
    OUTLINED_FUNCTION_85_0();
    v221 = v775;
    OUTLINED_FUNCTION_16_6(v775 + v222);
    v224 = v223;
    sub_1DD63F9B8();
    *(v221 + *(v98 + 24)) = v224;
    v225 = v224;
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v226 = swift_allocObject();
    OUTLINED_FUNCTION_52_2(v226);
    v227 = sub_1DD6408F8();
    v228 = v802;
    v226[7] = MEMORY[0x1E69E6158];
    v226[8] = v228;
    v226[4] = v227;
    v226[5] = v229;
    v745 = v226;
    OUTLINED_FUNCTION_9_8();
    OUTLINED_FUNCTION_62_1();
    sub_1DD63F998();
    OUTLINED_FUNCTION_73_0();

    v230 = v803;
    v231 = sub_1DD63F9D8();
    sub_1DD640368();
    OUTLINED_FUNCTION_115();
    v233 = os_log_type_enabled(v231, v232);
    v807 = v225;
    if (v233)
    {
      LODWORD(v791) = v230;
      v234 = OUTLINED_FUNCTION_54();
      v785 = OUTLINED_FUNCTION_62();
      *&v819[0] = v785;
      v805 = v234;
      LODWORD(v234->isa) = 136315138;
      OUTLINED_FUNCTION_113();
      swift_beginAccess();
      v235 = *v127;
      swift_getKeyPath();
      v236 = *(v235 + 16);
      if (v236)
      {
        v784 = v231;
        *&v818[0] = MEMORY[0x1E69E7CC0];

        v237 = v818;
        sub_1DD42B97C(0, v236, 0);
        OUTLINED_FUNCTION_72_1();
        do
        {
          v815[0] = *(v231 + v235);

          OUTLINED_FUNCTION_89();
          swift_getAtKeyPath();

          v238 = *&v812[0];
          *&v818[0] = v237;
          v240 = *(v237 + 2);
          v239 = *(v237 + 3);
          if (v240 >= v239 >> 1)
          {
            OUTLINED_FUNCTION_12_11(v239);
            OUTLINED_FUNCTION_57_2();
            sub_1DD42B97C(v241, v242, v243);
            v237 = *&v818[0];
          }

          *(v237 + 2) = v240 + 1;
          *(v237 + v240 + 4) = v238;
          OUTLINED_FUNCTION_112();
        }

        while (!v159);

        KeyPath = v799;
        v127 = v800;
        v231 = v784;
      }

      else
      {

        v237 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1E12B2430](v237, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_19_8();

      v255 = OUTLINED_FUNCTION_36_0();
      sub_1DD39565C(v255, v256, v257);
      OUTLINED_FUNCTION_105_0();
      v258 = v805;
      *(&v805->isa + 4) = v237;
      _os_log_impl(&dword_1DD38D000, v231, v791, "queries before PLUSQueryExpander: %s", v258, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v785);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {
    }

    memset(v819, 0, 48);
    v259 = KeyPath + *(v797 + 76);
    if (v806 == 1)
    {
      sub_1DD3FA84C(v259, v818);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC220, &qword_1DD645A68);
      OUTLINED_FUNCTION_14();
      v260 = sub_1DD63F8B8();
      OUTLINED_FUNCTION_0();
      v262 = v261;
      v263 = OUTLINED_FUNCTION_82_0();
      v264 = sub_1DD3ADF44(v263, 1);
      v266 = v265;
      v267 = MEMORY[0x1E69D2798];
    }

    else
    {
      sub_1DD3FA84C(v259, v818);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC220, &qword_1DD645A68);
      OUTLINED_FUNCTION_14();
      v260 = sub_1DD63F8B8();
      OUTLINED_FUNCTION_0();
      v262 = v268;
      v269 = OUTLINED_FUNCTION_82_0();
      v264 = sub_1DD3ADF44(v269, 1);
      v266 = v270;
      v267 = MEMORY[0x1E69D27A0];
    }

    (*(v262 + 104))(v266, *v267, v260);
    if (*(v264 + 16))
    {
      sub_1DD56C10C();
      v272 = v271;
      sub_1DD390754(v819, &qword_1ECCDC228, &unk_1DD645A70);
    }

    else
    {
      sub_1DD390754(v819, &qword_1ECCDC228, &unk_1DD645A70);

      v272 = MEMORY[0x1E69E7CD0];
    }

    v819[0] = v818[0];
    v819[1] = v818[1];
    *&v819[2] = *&v818[2];
    *(&v819[2] + 1) = v272;
    sub_1DD3EB3D0(v819, v812, &qword_1ECCDC228, &unk_1DD645A70);
    if (*(&v813 + 1))
    {
      v818[0] = v812[0];
      v818[1] = v812[1];
      v818[2] = v813;
      OUTLINED_FUNCTION_100(v127, &v811);
      MEMORY[0x1EEE9AC00](v273);
      OUTLINED_FUNCTION_126(&v743);
      v274 = OUTLINED_FUNCTION_56_3();
      sub_1DD604A9C(v274, v275, v276);
      OUTLINED_FUNCTION_68_0();
      *v127 = v260;

      sub_1DD3FA8CC(v818);
    }

    else
    {
      sub_1DD390754(v812, &qword_1ECCDC228, &unk_1DD645A70);
    }

    OUTLINED_FUNCTION_18_9();
    v277 = swift_allocObject();
    v278 = v798;
    *(v277 + 16) = sub_1DD3FAED0;
    *(v277 + 24) = v278;
    swift_retain_n();
    v98 = sub_1DD63F9D8();
    v279 = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v280 = swift_allocObject();
    *(v280 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v281 = swift_allocObject();
    OUTLINED_FUNCTION_54_2(v281);
    OUTLINED_FUNCTION_18_9();
    v282 = swift_allocObject();
    *(v282 + 16) = sub_1DD3FAEA0;
    *(v282 + 24) = v277;
    OUTLINED_FUNCTION_18_9();
    v283 = swift_allocObject();
    *(v283 + 16) = sub_1DD3FAEA4;
    *(v283 + 24) = v282;
    v284 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v285 = OUTLINED_FUNCTION_81_0(v284);
    sub_1DD3AE030(v285, 3);
    *v286 = sub_1DD3FAEC8;
    v286[1] = v280;
    v286[2] = sub_1DD3FAEC8;
    v286[3] = v281;
    v286[4] = sub_1DD3FAE9C;
    v286[5] = v283;

    LODWORD(v806) = v279;
    if (os_log_type_enabled(v98, v279))
    {
      v805 = v98;
      v287 = KeyPath;
      v98 = OUTLINED_FUNCTION_54();
      v791 = OUTLINED_FUNCTION_62();
      *&v818[0] = v791;
      *v98 = 136315138;
      v127 = v800;
      OUTLINED_FUNCTION_113();
      swift_beginAccess();
      v288 = *v127;
      swift_getKeyPath();
      v289 = *(v288 + 16);
      if (v289)
      {
        v785 = v98;
        *&v812[0] = MEMORY[0x1E69E7CC0];

        sub_1DD42A1D4(v289);
        v290 = *&v812[0];
        do
        {
          v814[0] = *(v288 + 32);

          swift_getAtKeyPath();

          v291 = v815[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            OUTLINED_FUNCTION_36_2();
            v292 = OUTLINED_FUNCTION_26_2();
            sub_1DD42B97C(v292, v293, v294);
            v290 = *&v812[0];
          }

          OUTLINED_FUNCTION_47_2();
          if (v114)
          {
            OUTLINED_FUNCTION_1_0(v295);
            OUTLINED_FUNCTION_57_2();
            sub_1DD42B97C(v297, v298, v299);
            v290 = *&v812[0];
          }

          OUTLINED_FUNCTION_114();
          *(v296 + 32) = v291;
          OUTLINED_FUNCTION_112();
        }

        while (!v159);

        KeyPath = v799;
        v127 = v800;
        v254 = v768;
        v98 = v785;
      }

      else
      {

        v290 = MEMORY[0x1E69E7CC0];
        KeyPath = v287;
        v254 = v768;
      }

      MEMORY[0x1E12B2430](v290, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_19_8();

      v300 = OUTLINED_FUNCTION_36_0();
      sub_1DD39565C(v300, v301, v302);
      OUTLINED_FUNCTION_105_0();
      *(v98 + 4) = v290;
      OUTLINED_FUNCTION_91();
      v303 = v805;
      _os_log_impl(v304, v805, v305, v306, v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v791);
      v307 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v307);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();

      v253 = v797;
    }

    else
    {

      v253 = v797;
      v254 = v768;
      v127 = v800;
    }

    sub_1DD6404C8();
    OUTLINED_FUNCTION_62_1();
    v308 = v775;
    sub_1DD63F9A8();
    sub_1DD390754(v819, &qword_1ECCDC228, &unk_1DD645A70);
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v308, v309);
    p_isa = v795;
  }

  else
  {
    v244 = sub_1DD63F9D8();
    sub_1DD640358();
    v245 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v245, v246))
    {
      OUTLINED_FUNCTION_28();
      v247 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_4(v247);
      OUTLINED_FUNCTION_29_3();
      _os_log_impl(v248, v249, v250, v251, v252, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    v253 = v797;
    v254 = v768;
  }

  sub_1DD3EB3D0(KeyPath + v253[6], v254, &qword_1ECCDC1F0, &qword_1DD645940);
  OUTLINED_FUNCTION_8(v254, 1, v776);
  if (v159)
  {
    sub_1DD390754(v254, &qword_1ECCDC1F0, &qword_1DD645940);
    v311 = v769;
    v310 = v770;
  }

  else
  {
    sub_1DD3FAE44(v254, v786);
    OUTLINED_FUNCTION_85_0();
    v312 = v777;
    OUTLINED_FUNCTION_16_6(v777 + v313);
    v314 = p_isa;
    sub_1DD63F9B8();
    *(v312 + *(v98 + 24)) = v314;
    v315 = v314;
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v316 = swift_allocObject();
    OUTLINED_FUNCTION_52_2(v316);
    v317 = sub_1DD6408F8();
    v318 = v802;
    v316[7] = MEMORY[0x1E69E6158];
    v316[8] = v318;
    v316[4] = v317;
    v316[5] = v319;
    OUTLINED_FUNCTION_97();
    OUTLINED_FUNCTION_9_8();
    v807 = v315;
    sub_1DD63F998();
    OUTLINED_FUNCTION_104_0();
    v320 = sub_1DD63F9D8();
    v321 = sub_1DD640368();
    v322 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v322, v323))
    {
      OUTLINED_FUNCTION_28();
      v325 = swift_slowAlloc();
      OUTLINED_FUNCTION_13_4(v325);
      OUTLINED_FUNCTION_29_3();
      _os_log_impl(v326, v327, v328, v329, v330, 2u);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    OUTLINED_FUNCTION_100(v127, v814);
    v331 = v798;
    MEMORY[0x1EEE9AC00](v332);
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_126(v333);
    v334 = OUTLINED_FUNCTION_56_3();
    sub_1DD604A9C(v334, v335, v336);
    OUTLINED_FUNCTION_68_0();
    v331[2] = v321;

    OUTLINED_FUNCTION_18_9();
    v337 = swift_allocObject();
    *(v337 + 16) = sub_1DD3FA828;
    *(v337 + 24) = v331;
    swift_retain_n();
    v338 = sub_1DD63F9D8();
    v339 = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v340 = swift_allocObject();
    *(v340 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v341 = swift_allocObject();
    OUTLINED_FUNCTION_54_2(v341);
    OUTLINED_FUNCTION_18_9();
    v342 = swift_allocObject();
    *(v342 + 16) = sub_1DD3FAEA0;
    *(v342 + 24) = v337;
    OUTLINED_FUNCTION_18_9();
    v343 = swift_allocObject();
    *(v343 + 16) = sub_1DD3FAEA4;
    *(v343 + 24) = v342;
    v344 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v345 = OUTLINED_FUNCTION_81_0(v344);
    sub_1DD3AE030(v345, 3);
    *v346 = sub_1DD3FAEC8;
    v346[1] = v340;
    v346[2] = sub_1DD3FAEC8;
    v346[3] = v341;
    v346[4] = sub_1DD3FAE9C;
    v346[5] = v343;

    LODWORD(v806) = v339;
    if (os_log_type_enabled(v338, v339))
    {
      v347 = v799;
      v348 = OUTLINED_FUNCTION_54();
      v805 = OUTLINED_FUNCTION_62();
      *&v819[0] = v805;
      *v348 = 136315138;
      v349 = *v127;
      swift_getKeyPath();
      v350 = *(v349 + 16);
      if (v350)
      {
        v791 = v348;
        *&v792 = v338;
        *&v818[0] = MEMORY[0x1E69E7CC0];

        v351 = v818;
        sub_1DD42A1D4(v350);
        OUTLINED_FUNCTION_72_1();
        do
        {
          v815[0] = *(v338 + v349);

          OUTLINED_FUNCTION_89();
          swift_getAtKeyPath();

          v352 = *&v812[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v353 = OUTLINED_FUNCTION_13_9();
            sub_1DD42B97C(v353, v354, v355);
            v351 = *&v818[0];
          }

          OUTLINED_FUNCTION_47_2();
          if (v114)
          {
            OUTLINED_FUNCTION_12_11(v356);
            OUTLINED_FUNCTION_57_2();
            sub_1DD42B97C(v358, v359, v360);
            v351 = *&v818[0];
          }

          OUTLINED_FUNCTION_114();
          *(v357 + 32) = v352;
          OUTLINED_FUNCTION_112();
        }

        while (!v159);

        KeyPath = v799;
        v348 = v791;
        v338 = v792;
      }

      else
      {

        v351 = MEMORY[0x1E69E7CC0];
        KeyPath = v347;
      }

      v361 = v805;
      MEMORY[0x1E12B2430](v351, MEMORY[0x1E69E6530]);
      v363 = v362;

      v364 = OUTLINED_FUNCTION_87_0();
      sub_1DD39565C(v364, v363, v365);
      OUTLINED_FUNCTION_105_0();
      *(v348 + 4) = v351;
      OUTLINED_FUNCTION_91();
      _os_log_impl(v366, v338, v367, v368, v348, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v361);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      v369 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v369);

      v253 = v797;
      v311 = v769;
      v310 = v770;
    }

    else
    {

      v253 = v797;
      v311 = v769;
      v310 = v770;
      KeyPath = v799;
    }

    sub_1DD6404C8();
    v98 = v777;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v98, v370);
    sub_1DD3FA798(v786, type metadata accessor for RelationshipAliasGenerator);
    p_isa = v795;
  }

  sub_1DD3EB3D0(KeyPath + v253[5], v310, &qword_1ECCDC1E8, &qword_1DD645938);
  OUTLINED_FUNCTION_8(v310, 1, v311);
  if (v159)
  {
    sub_1DD390754(v310, &qword_1ECCDC1E8, &qword_1DD645938);
  }

  else
  {
    v371 = v787;
    sub_1DD3FAE44(v310, v787);
    v372 = v794;
    v373 = v778;
    v374 = v778 + *(v794 + 20);
    *v374 = "ContactResolver.MeCardExpander";
    *(v374 + 8) = 30;
    *(v374 + 16) = 2;
    v375 = p_isa;
    sub_1DD63F9B8();
    *(v373 + *(v372 + 24)) = v375;
    v376 = v375;
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v377 = swift_allocObject();
    sub_1DD3AE030(v377, 1);
    v378 = sub_1DD6408F8();
    OUTLINED_FUNCTION_14_11(v378, v379);
    v744 = 2;
    OUTLINED_FUNCTION_22();
    v806 = v376;
    OUTLINED_FUNCTION_98();
    sub_1DD63F998();
    OUTLINED_FUNCTION_73_0();

    v380 = v754;
    sub_1DD3FA93C(v371, v754);
    sub_1DD3FA93C(v380, v771);
    v381 = (*(v755 + 80) + 16) & ~*(v755 + 80);
    v382 = swift_allocObject();
    sub_1DD3FAE44(v380, v382 + v381);
    OUTLINED_FUNCTION_18_9();
    v383 = swift_allocObject();
    *(v383 + 16) = sub_1DD3FA5F8;
    *(v383 + 24) = v382;
    v384 = v756;
    sub_1DD3FA93C(v371, v756);
    sub_1DD3FA93C(v384, v772);
    v385 = swift_allocObject();
    sub_1DD3FAE44(v384, v385 + v381);
    OUTLINED_FUNCTION_18_9();
    v386 = swift_allocObject();
    *(v386 + 16) = sub_1DD3FA700;
    *(v386 + 24) = v385;
    *&v792 = sub_1DD63F9D8();
    LODWORD(v807) = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v387 = swift_allocObject();
    *(v387 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v388 = swift_allocObject();
    *(v388 + 16) = 8;
    OUTLINED_FUNCTION_18_9();
    v389 = swift_allocObject();
    *(v389 + 16) = sub_1DD3FA610;
    *(v389 + 24) = v383;
    OUTLINED_FUNCTION_18_9();
    v390 = swift_allocObject();
    *(v390 + 16) = sub_1DD3FAEA4;
    *(v390 + 24) = v389;
    OUTLINED_FUNCTION_35_2();
    v391 = swift_allocObject();
    *(v391 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v392 = swift_allocObject();
    *(v392 + 16) = 8;
    OUTLINED_FUNCTION_18_9();
    v393 = swift_allocObject();
    *(v393 + 16) = sub_1DD3FAEA8;
    *(v393 + 24) = v386;
    OUTLINED_FUNCTION_18_9();
    v394 = swift_allocObject();
    *(v394 + 16) = sub_1DD3FAEA4;
    *(v394 + 24) = v393;
    v805 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v395 = swift_allocObject();
    sub_1DD3AE030(v395, 6);
    *v396 = sub_1DD3FAEC8;
    v396[1] = v387;
    v396[2] = sub_1DD3FAEC8;
    v396[3] = v388;
    v396[4] = sub_1DD3FAE9C;
    v396[5] = v390;
    v396[6] = sub_1DD3FAEC8;
    v396[7] = v391;
    v396[8] = sub_1DD3FAEC8;
    v396[9] = v392;
    v396[10] = sub_1DD3FAE9C;
    v396[11] = v394;

    v397 = v792;
    if (os_log_type_enabled(v792, v807))
    {
      v399 = swift_slowAlloc();
      *&v819[0] = swift_slowAlloc();
      *v399 = 136315394;
      v400 = v771;
      MEMORY[0x1E12B2430](*v771, &type metadata for MeCardContactGenerator.Relation);
      sub_1DD3FA798(v400, type metadata accessor for MeCardContactGenerator);
      v401 = OUTLINED_FUNCTION_111();
      v404 = sub_1DD39565C(v401, v402, v403);

      *(v399 + 4) = v404;
      *(v399 + 12) = 2080;
      v405 = v772;
      v406 = MEMORY[0x1E12B2430](*(v772 + 8), &type metadata for MeCardContactGenerator.Relation);
      v408 = v407;
      sub_1DD3FA798(v405, type metadata accessor for MeCardContactGenerator);
      v409 = sub_1DD39565C(v406, v408, v819);

      *(v399 + 14) = v409;
      _os_log_impl(&dword_1DD38D000, v397, v807, "running MeCardExpander. semanticRelations=%s customRelations=%s", v399, 0x16u);
      swift_arrayDestroy();
      v410 = OUTLINED_FUNCTION_11_11();
      MEMORY[0x1E12B3DA0](v410);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {

      sub_1DD3FA798(v772, type metadata accessor for MeCardContactGenerator);
      sub_1DD3FA798(v771, type metadata accessor for MeCardContactGenerator);
    }

    p_isa = v798;
    OUTLINED_FUNCTION_100(v800, v815);
    MEMORY[0x1EEE9AC00](v411);
    OUTLINED_FUNCTION_79_1();
    OUTLINED_FUNCTION_126(v412);
    v413 = OUTLINED_FUNCTION_56_3();
    sub_1DD604A9C(v413, v414, v415);
    OUTLINED_FUNCTION_68_0();
    p_isa[2] = 0;

    v416 = 32;
    OUTLINED_FUNCTION_18_9();
    v417 = swift_allocObject();
    *(v417 + 16) = sub_1DD3FAED0;
    *(v417 + 24) = p_isa;
    swift_retain_n();
    v418 = sub_1DD63F9D8();
    v419 = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v420 = swift_allocObject();
    *(v420 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v98 = swift_allocObject();
    OUTLINED_FUNCTION_54_2(v98);
    OUTLINED_FUNCTION_18_9();
    v421 = swift_allocObject();
    *(v421 + 16) = sub_1DD3FAEA0;
    *(v421 + 24) = v417;
    OUTLINED_FUNCTION_18_9();
    v422 = swift_allocObject();
    *(v422 + 16) = sub_1DD3FAEA4;
    *(v422 + 24) = v421;
    v423 = OUTLINED_FUNCTION_81_0(v805);
    sub_1DD3AE030(v423, 3);
    *v424 = sub_1DD3FAEC8;
    v424[1] = v420;
    v424[2] = sub_1DD3FAEC8;
    v424[3] = v98;
    v424[4] = sub_1DD3FAE9C;
    v424[5] = v422;

    LODWORD(v807) = v419;
    if (os_log_type_enabled(v418, v419))
    {
      v805 = v418;
      OUTLINED_FUNCTION_54();
      v425 = OUTLINED_FUNCTION_60();
      *&v819[0] = v425;
      MEMORY[0x20] = 136315138;
      v426 = *v800;
      KeyPath = swift_getKeyPath();
      v427 = *(v426 + 16);
      *&v792 = v425;
      if (v427)
      {
        v791 = 32;
        *&v818[0] = MEMORY[0x1E69E7CC0];

        v428 = v818;
        sub_1DD42A1D4(v427);
        OUTLINED_FUNCTION_72_1();
        do
        {
          v421 = *(v426 + 32);
          v817 = v421;

          swift_getAtKeyPath();

          p_isa = *&v812[0];
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v429 = OUTLINED_FUNCTION_13_9();
            sub_1DD42B97C(v429, v430, v431);
            v428 = *&v818[0];
          }

          OUTLINED_FUNCTION_46_0();
          if (v114)
          {
            v433 = OUTLINED_FUNCTION_12_11(v432);
            OUTLINED_FUNCTION_128(v433);
            v428 = *&v818[0];
          }

          OUTLINED_FUNCTION_50_3();
          --v427;
        }

        while (v427);

        OUTLINED_FUNCTION_118();
        v416 = v791;
      }

      else
      {

        v428 = MEMORY[0x1E69E7CC0];
        OUTLINED_FUNCTION_118();
      }

      MEMORY[0x1E12B2430](v428, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_61_1();
      v434 = OUTLINED_FUNCTION_87_0();
      sub_1DD39565C(v434, v421, v435);
      OUTLINED_FUNCTION_59_0();

      *(v416 + 4) = v428;
      v436 = v805;
      _os_log_impl(&dword_1DD38D000, v805, v807, "queries after MeCardExpander: %s", v416, 0xCu);
      v98 = v792;
      __swift_destroy_boxed_opaque_existential_1(v792);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
      v437 = OUTLINED_FUNCTION_15_10();
      MEMORY[0x1E12B3DA0](v437);

      v253 = v797;
    }

    else
    {

      KeyPath = v799;
      v253 = v797;
      p_isa = v795;
    }

    sub_1DD6404C8();
    v438 = v778;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v438, v439);
    sub_1DD3FA798(v787, type metadata accessor for MeCardContactGenerator);
  }

  v440 = (KeyPath + v253[7]);
  v441 = *v440;
  if (!*v440)
  {
    v496 = MEMORY[0x1E69E6158];
LABEL_160:
    v500 = p_isa;
    sub_1DD63F9B8();
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v501 = swift_allocObject();
    sub_1DD3AE030(v501, 1);
    v77 = v502;
    v503 = sub_1DD6408F8();
    v504 = v802;
    *(v77 + 24) = v496;
    *(v77 + 32) = v504;
    *v77 = v503;
    *(v77 + 8) = v505;
    OUTLINED_FUNCTION_97();
    v744 = 2;
    OUTLINED_FUNCTION_22();
    sub_1DD63F998();
    OUTLINED_FUNCTION_104_0();
    v506 = v799;
    sub_1DD3F4CFC(v788, v799, v796, v800);
    v820 = 0;
    sub_1DD6404C8();
    v95 = 2;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_49_2();
    v507();
    sub_1DD3EB3D0(v506 + *(v797 + 44), v818, &qword_1ECCDC208, &unk_1DD6459B0);
    v809 = v500;
    if (*(&v818[1] + 1))
    {
      memcpy(v819, v818, 0x50uLL);
      v508 = v500;
      sub_1DD63F9B8();
      sub_1DD6404D8();
      OUTLINED_FUNCTION_23_5();
      v509 = swift_allocObject();
      v77 = sub_1DD3AE030(v509, 1);
      v510 = sub_1DD6408F8();
      OUTLINED_FUNCTION_14_11(v510, v511);
      v744 = 2;
      OUTLINED_FUNCTION_22();
      OUTLINED_FUNCTION_75_0();
      sub_1DD63F998();
      OUTLINED_FUNCTION_73_0();

      v506 = v788;
      sub_1DD3F5198(v800, v788, v819);
      v820 = 0;
      sub_1DD6404C8();
      OUTLINED_FUNCTION_75_0();
      sub_1DD63F9A8();
      OUTLINED_FUNCTION_49_2();
      v512();
      sub_1DD3FA548(v819);
      v513 = v799;
    }

    else
    {
      sub_1DD390754(v818, &qword_1ECCDC208, &unk_1DD6459B0);
      v513 = v506;
    }

    v514 = v764;
    OUTLINED_FUNCTION_100(v764, v819);
    v515 = *v514;
    swift_getKeyPath();
    v58 = *(v515 + 16);

    v516 = 0;
    while (v58 != v516)
    {
      if (v516 >= *(v515 + 16))
      {
        __break(1u);
LABEL_289:
        __break(1u);
        goto LABEL_290;
      }

      OUTLINED_FUNCTION_101(v516);
      OUTLINED_FUNCTION_122();
      swift_getAtKeyPath();

      v516 = v506;
      if ((v817 & 1) == 0)
      {

        goto LABEL_168;
      }
    }

    v525 = sub_1DD63F9D8();
    sub_1DD640368();
    v526 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v526, v527))
    {
      OUTLINED_FUNCTION_28();
      v528 = swift_slowAlloc();
      OUTLINED_FUNCTION_84_0(v528);
      OUTLINED_FUNCTION_33_3();
      _os_log_impl(v529, v530, v531, v532, v533, v534);
      v535 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v535);
    }

    OUTLINED_FUNCTION_70_0();
    sub_1DD3F5664();
    v820 = 0;

    OUTLINED_FUNCTION_76_0();
    v77 = 32;
    OUTLINED_FUNCTION_18_9();
    v536 = swift_allocObject();
    OUTLINED_FUNCTION_74_0(v536);
    v506 = sub_1DD63F9D8();
    v95 = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v537 = swift_allocObject();
    *(v537 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v538 = swift_allocObject();
    OUTLINED_FUNCTION_45_1(v538);
    OUTLINED_FUNCTION_18_9();
    v539 = swift_allocObject();
    *(v539 + 16) = sub_1DD3FAEA0;
    *(v539 + 24) = v536;
    OUTLINED_FUNCTION_18_9();
    v540 = swift_allocObject();
    *(v540 + 16) = sub_1DD3FAEA4;
    *(v540 + 24) = v539;
    v541 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v542 = OUTLINED_FUNCTION_81_0(v541);
    sub_1DD3AE030(v542, 3);
    *v543 = sub_1DD3FAEC8;
    v543[1] = v537;
    v543[2] = sub_1DD3FAEC8;
    v543[3] = 32;
    v543[4] = sub_1DD3FAE9C;
    v543[5] = v540;

    LODWORD(v808) = v95;
    if (os_log_type_enabled(v506, v95))
    {
      OUTLINED_FUNCTION_54();
      v544 = OUTLINED_FUNCTION_60();
      *&v818[0] = v544;
      *v58 = 136315138;
      v95 = *v764;
      v77 = swift_getKeyPath();
      v545 = *(v95 + 16);
      if (v545)
      {
        v805 = v544;
        v806 = v58;
        v807 = v506;
        v817 = MEMORY[0x1E69E7CC0];

        sub_1DD42A1D4(v545);
        v546 = v817;
        do
        {
          v540 = *(v95 + 32);
          v816 = v540;

          OUTLINED_FUNCTION_120();
          swift_getAtKeyPath();

          if ((OUTLINED_FUNCTION_127() & 1) == 0)
          {
            OUTLINED_FUNCTION_36_2();
            v547 = OUTLINED_FUNCTION_26_2();
            sub_1DD42B97C(v547, v548, v549);
            v546 = v817;
          }

          OUTLINED_FUNCTION_78_0();
          if (v114)
          {
            OUTLINED_FUNCTION_1_0(v550);
            OUTLINED_FUNCTION_90();
            sub_1DD42B97C(v551, v552, v553);
            v546 = v817;
          }

          OUTLINED_FUNCTION_95();
        }

        while (!v159);

        v58 = v806;
        v506 = v807;
        v544 = v805;
      }

      else
      {

        v546 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1E12B2430](v546, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_61_1();
      sub_1DD39565C(v540, v77, v818);
      OUTLINED_FUNCTION_59_0();

      *(v58 + 4) = v546;
      OUTLINED_FUNCTION_41_2(&dword_1DD38D000, "matches after SearchByPartialName: %s", v808);
      __swift_destroy_boxed_opaque_existential_1(v544);
      v629 = OUTLINED_FUNCTION_11_11();
      MEMORY[0x1E12B3DA0](v629);
      v630 = OUTLINED_FUNCTION_15_10();
      MEMORY[0x1E12B3DA0](v630);

      v513 = v799;
    }

    else
    {
    }

LABEL_168:
    v517 = *v764;
    swift_getKeyPath();
    v58 = *(v517 + 16);

    v518 = 0;
    while (v58 != v518)
    {
      if (v518 >= *(v517 + 16))
      {
        goto LABEL_289;
      }

      OUTLINED_FUNCTION_101(v518);
      OUTLINED_FUNCTION_122();
      swift_getAtKeyPath();

      v518 = v506;
      if ((v817 & 1) == 0)
      {

        goto LABEL_173;
      }
    }

    v554 = sub_1DD63F9D8();
    sub_1DD640368();
    v555 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v555, v556))
    {
      OUTLINED_FUNCTION_28();
      v557 = swift_slowAlloc();
      OUTLINED_FUNCTION_84_0(v557);
      OUTLINED_FUNCTION_33_3();
      _os_log_impl(v558, v559, v560, v561, v562, v563);
      v564 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v564);
    }

    OUTLINED_FUNCTION_70_0();
    sub_1DD3F5874();
    v820 = 0;

    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_18_9();
    v579 = swift_allocObject();
    OUTLINED_FUNCTION_74_0(v579);
    v451 = sub_1DD63F9D8();
    v95 = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v580 = swift_allocObject();
    *(v580 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v581 = swift_allocObject();
    OUTLINED_FUNCTION_45_1(v581);
    OUTLINED_FUNCTION_18_9();
    v582 = swift_allocObject();
    *(v582 + 16) = sub_1DD3FAEA0;
    *(v582 + 24) = v579;
    OUTLINED_FUNCTION_18_9();
    v98 = swift_allocObject();
    *(v98 + 16) = sub_1DD3FAEA4;
    *(v98 + 24) = v582;
    v583 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v584 = OUTLINED_FUNCTION_81_0(v583);
    sub_1DD3AE030(v584, 3);
    *v585 = sub_1DD3FAEC8;
    v585[1] = v580;
    v585[2] = sub_1DD3FAEC8;
    v585[3] = 32;
    v585[4] = sub_1DD3FAE9C;
    v585[5] = v98;

    LODWORD(v808) = v95;
    if (!os_log_type_enabled(v451, v95))
    {

      goto LABEL_173;
    }

    OUTLINED_FUNCTION_54();
    v465 = OUTLINED_FUNCTION_60();
    *&v818[0] = v465;
    *v58 = 136315138;
    v95 = *v764;
    v134 = swift_getKeyPath();
    v586 = *(v95 + 16);
    if (!v586)
    {
      goto LABEL_241;
    }

    v805 = v465;
    v806 = v58;
    v807 = v451;
    v817 = MEMORY[0x1E69E7CC0];

    sub_1DD42A1D4(v586);
    v153 = v817;
    do
    {
      v98 = *(v95 + 32);
      v816 = v98;

      OUTLINED_FUNCTION_120();
      swift_getAtKeyPath();

      if ((OUTLINED_FUNCTION_127() & 1) == 0)
      {
        OUTLINED_FUNCTION_36_2();
        v587 = OUTLINED_FUNCTION_26_2();
        sub_1DD42B97C(v587, v588, v589);
        v153 = v817;
      }

      OUTLINED_FUNCTION_78_0();
      if (v114)
      {
        OUTLINED_FUNCTION_1_0(v590);
        OUTLINED_FUNCTION_90();
        sub_1DD42B97C(v591, v592, v593);
        v153 = v817;
      }

      OUTLINED_FUNCTION_95();
    }

    while (!v159);
LABEL_220:

    v58 = v806;
    v451 = v807;
    v465 = v805;
    goto LABEL_242;
  }

  v442 = v440[1];
  OUTLINED_FUNCTION_85_0();
  v443 = v782;
  OUTLINED_FUNCTION_16_6(v782 + v444);
  v446 = v445;
  v806 = v441;
  v807 = v442;
  sub_1DD3FA59C(v441, v442);
  sub_1DD63F9B8();
  *(v443 + *(v98 + 24)) = v446;
  v98 = v446;
  sub_1DD6404D8();
  OUTLINED_FUNCTION_23_5();
  v447 = swift_allocObject();
  sub_1DD3AE030(v447, 1);
  OUTLINED_FUNCTION_19_8();
  v448 = sub_1DD6408F8();
  OUTLINED_FUNCTION_14_11(v448, v449);
  OUTLINED_FUNCTION_9_8();
  v791 = v98;
  OUTLINED_FUNCTION_98();
  sub_1DD63F998();
  OUTLINED_FUNCTION_73_0();

  v450 = sub_1DD63F9D8();
  v451 = sub_1DD640368();
  v452 = OUTLINED_FUNCTION_27_5();
  if (os_log_type_enabled(v452, v453))
  {
    OUTLINED_FUNCTION_28();
    v454 = swift_slowAlloc();
    OUTLINED_FUNCTION_84_0(v454);
    OUTLINED_FUNCTION_33_3();
    _os_log_impl(v455, v456, v457, v458, v459, v460);
    v461 = OUTLINED_FUNCTION_10_2();
    MEMORY[0x1E12B3DA0](v461);
  }

  v462 = v800;
  OUTLINED_FUNCTION_100(v800, v812);
  v463 = *v462;
  v464 = *(*v462 + 16);
  v465 = MEMORY[0x1E69E7CC0];
  v466 = v765;
  if (!v464)
  {
    v487 = MEMORY[0x1E69E7CC0];
    v594 = v800;
LABEL_159:
    *v594 = v487;

    v497 = MEMORY[0x1E69E6158];
    p_isa = v795;
    sub_1DD6404C8();
    v498 = v782;
    sub_1DD63F9A8();

    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v498, v499);
    v496 = v497;
    goto LABEL_160;
  }

  *&v819[0] = MEMORY[0x1E69E7CC0];

  sub_1DD42A1BC(v464);
  v467 = 0;
  v468 = v463 + 32;
  v785 = v464;
  v786 = v463;
  v784 = (v463 + 32);
LABEL_137:
  v469 = v467;
  v787 = (v467 + 1);
  sub_1DD408C00();
  v134 = *(v468 + 8 * v469);
  v805 = *(v134 + 16);

  v58 = 0;
  *&v792 = v465;
  while (1)
  {
    v95 = v804;
    if (v805 == v58)
    {
      if (*(v792 + 16))
      {
        *&v818[0] = v134;
        sub_1DD607914(v792);
        v134 = *&v818[0];
      }

      else
      {
      }

      v465 = MEMORY[0x1E69E7CC0];
      v468 = v784;
      v487 = *&v819[0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_36_2();
        v488 = OUTLINED_FUNCTION_26_2();
        sub_1DD42B95C(v488, v489, v490);
        v487 = *&v819[0];
      }

      v492 = *(v487 + 16);
      v491 = *(v487 + 24);
      v451 = (v492 + 1);
      if (v492 >= v491 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v491);
        OUTLINED_FUNCTION_106();
        sub_1DD42B95C(v493, v494, v495);
        v487 = *&v819[0];
      }

      *(v487 + 16) = v451;
      *(v487 + 8 * v492 + 32) = v134;
      v467 = v787;
      if (v787 == v785)
      {

        v594 = v800;
        goto LABEL_159;
      }

      goto LABEL_137;
    }

    if (v58 >= *(v134 + 16))
    {
      break;
    }

    OUTLINED_FUNCTION_107();
    v98 = v471 & ~v470;
    v465 = *(v472 + 72);
    v451 = &qword_1ECCDBC18;
    sub_1DD3EB3D0(v134 + v98 + v465 * v58, v95, &qword_1ECCDBC18, &unk_1DD6459A0);
    sub_1DD5FD9DC(v95, v466);
    sub_1DD390754(v95, &qword_1ECCDBC18, &unk_1DD6459A0);
    OUTLINED_FUNCTION_8(v466, 1, v808);
    if (v159)
    {
      sub_1DD390754(v466, &qword_1ECCDC200, &qword_1DD645998);
      ++v58;
    }

    else
    {
      OUTLINED_FUNCTION_119();
      sub_1DD3EB4B8(v473, v474, v475, v476);
      OUTLINED_FUNCTION_119();
      sub_1DD3EB4B8(v477, v478, v479, v480);
      v481 = swift_isUniquelyReferenced_nonNull_native();
      if ((v481 & 1) == 0)
      {
        OUTLINED_FUNCTION_26_2();
        sub_1DD3BF7FC();
        *&v792 = v485;
      }

      v483 = *(v792 + 16);
      v482 = *(v792 + 24);
      if (v483 >= v482 >> 1)
      {
        OUTLINED_FUNCTION_1_0(v482);
        sub_1DD3BF7FC();
        *&v792 = v486;
      }

      ++v58;
      v484 = v792;
      *(v792 + 16) = v483 + 1;
      sub_1DD3EB4B8(v761, v484 + v98 + v483 * v465, &qword_1ECCDBC18, &unk_1DD6459A0);
      v466 = v765;
    }
  }

  __break(1u);
LABEL_241:

  v153 = MEMORY[0x1E69E7CC0];
LABEL_242:
  MEMORY[0x1E12B2430](v153, MEMORY[0x1E69E6530]);
  OUTLINED_FUNCTION_61_1();
  sub_1DD39565C(v98, v134, v818);
  OUTLINED_FUNCTION_59_0();

  *(v58 + 4) = v153;
  OUTLINED_FUNCTION_41_2(&dword_1DD38D000, "matches after SearchByHypocorism: %s", v808);
  __swift_destroy_boxed_opaque_existential_1(v465);
  v636 = OUTLINED_FUNCTION_11_11();
  MEMORY[0x1E12B3DA0](v636);
  v637 = OUTLINED_FUNCTION_15_10();
  MEMORY[0x1E12B3DA0](v637);

  v513 = v799;
LABEL_173:
  v519 = v797;
  v520 = type metadata accessor for ContactResolverConfig(0);
  if (*(v796 + v520[12]) == 1)
  {
    v521 = *v764;
    swift_getKeyPath();
    v522 = *(v521 + 16);

    v523 = 0;
    while (1)
    {
      if (v522 == v523)
      {

        goto LABEL_221;
      }

      if (v523 >= *(v521 + 16))
      {
        break;
      }

      v524 = (&v523->isa + 1);
      *&v818[0] = *(v521 + 8 * v523 + 32);

      OUTLINED_FUNCTION_122();
      swift_getAtKeyPath();

      v523 = v524;
      if ((v817 & 1) == 0)
      {

        if (*(v796 + v520[14]))
        {
          v628 = sub_1DD640CD8();

          if ((v628 & 1) == 0)
          {

LABEL_246:
            v519 = v797;
            goto LABEL_247;
          }

LABEL_222:
          v595 = sub_1DD63F9D8();
          sub_1DD640368();
          v596 = OUTLINED_FUNCTION_27_5();
          if (os_log_type_enabled(v596, v597))
          {
            OUTLINED_FUNCTION_28();
            *swift_slowAlloc() = 0;
            OUTLINED_FUNCTION_53_2();
            _os_log_impl(v598, v599, v600, v601, v602, v603);
            v604 = OUTLINED_FUNCTION_11_11();
            MEMORY[0x1E12B3DA0](v604);
          }

          OUTLINED_FUNCTION_111();
          sub_1DD3F5CA0();

          OUTLINED_FUNCTION_76_0();
          OUTLINED_FUNCTION_18_9();
          v605 = swift_allocObject();
          OUTLINED_FUNCTION_74_0(v605);
          v606 = sub_1DD63F9D8();
          v607 = sub_1DD640368();
          OUTLINED_FUNCTION_35_2();
          v608 = swift_allocObject();
          *(v608 + 16) = 32;
          OUTLINED_FUNCTION_35_2();
          v609 = swift_allocObject();
          OUTLINED_FUNCTION_45_1(v609);
          OUTLINED_FUNCTION_18_9();
          v610 = swift_allocObject();
          *(v610 + 16) = sub_1DD3FAEA0;
          *(v610 + 24) = v605;
          OUTLINED_FUNCTION_18_9();
          v611 = swift_allocObject();
          *(v611 + 16) = sub_1DD3FAEA4;
          *(v611 + 24) = v610;
          v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
          v613 = OUTLINED_FUNCTION_81_0(v612);
          sub_1DD3AE030(v613, 3);
          *v614 = sub_1DD3FAEC8;
          v614[1] = v608;
          v614[2] = sub_1DD3FAEC8;
          v614[3] = 32;
          v614[4] = sub_1DD3FAE9C;
          v614[5] = v611;

          if (os_log_type_enabled(v606, v607))
          {
            LODWORD(v807) = v607;
            OUTLINED_FUNCTION_54();
            v615 = OUTLINED_FUNCTION_60();
            *&v818[0] = v615;
            LODWORD(v522->isa) = 136315138;
            v616 = *v764;
            swift_getKeyPath();
            v617 = *(v616 + 16);
            if (v617)
            {
              v804 = v615;
              v805 = v522;
              v806 = v606;
              v808 = v520;
              v817 = MEMORY[0x1E69E7CC0];

              sub_1DD42A1D4(v617);
              v618 = 32;
              v619 = v817;
              do
              {
                v816 = *(v616 + v618);

                OUTLINED_FUNCTION_120();
                swift_getAtKeyPath();

                if ((OUTLINED_FUNCTION_127() & 1) == 0)
                {
                  OUTLINED_FUNCTION_36_2();
                  v620 = OUTLINED_FUNCTION_26_2();
                  sub_1DD42B97C(v620, v621, v622);
                  v619 = v817;
                }

                OUTLINED_FUNCTION_47_2();
                if (v114)
                {
                  OUTLINED_FUNCTION_1_0(v623);
                  OUTLINED_FUNCTION_57_2();
                  sub_1DD42B97C(v625, v626, v627);
                  v619 = v817;
                }

                OUTLINED_FUNCTION_114();
                *(v624 + 32) = v522;
                v618 += 8;
                --v617;
              }

              while (v617);

              v520 = v808;
              v522 = v805;
              v606 = v806;
              v615 = v804;
            }

            else
            {

              v619 = MEMORY[0x1E69E7CC0];
            }

            MEMORY[0x1E12B2430](v619, MEMORY[0x1E69E6530]);
            OUTLINED_FUNCTION_19_8();

            v638 = OUTLINED_FUNCTION_36_0();
            sub_1DD39565C(v638, v639, v640);
            OUTLINED_FUNCTION_105_0();
            *(&v522->isa + 4) = v619;
            OUTLINED_FUNCTION_41_2(&dword_1DD38D000, "matches after SearchByFoundInApps: %s", v807);
            __swift_destroy_boxed_opaque_existential_1(v615);
            OUTLINED_FUNCTION_13_0();
            MEMORY[0x1E12B3DA0]();
            v641 = OUTLINED_FUNCTION_15_10();
            MEMORY[0x1E12B3DA0](v641);
          }

          else
          {
          }

          v513 = v799;
          goto LABEL_246;
        }

LABEL_221:

        goto LABEL_222;
      }
    }

    __break(1u);
LABEL_292:

    sub_1DD6404C8();
    OUTLINED_FUNCTION_80();
    sub_1DD63F9A8();
    (*(v793 + 8))(v95, v790);
    __break(1u);
    return;
  }

LABEL_247:
  if (*(v513 + *(v519 + 84)) == 1)
  {
    v808 = v520;
    v642 = v794;
    v643 = v748;
    OUTLINED_FUNCTION_16_6(v748 + *(v794 + 20));
    v644 = v809;
    sub_1DD63F9B8();
    *(v643 + *(v642 + 24)) = v644;
    v645 = v644;
    sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v646 = swift_allocObject();
    sub_1DD3AE030(v646, 1);
    v648 = v647;
    v649 = sub_1DD6408F8();
    v650 = v802;
    v648[3] = MEMORY[0x1E69E6158];
    v648[4] = v650;
    *v648 = v649;
    v648[1] = v651;
    OUTLINED_FUNCTION_9_8();
    v807 = v645;
    OUTLINED_FUNCTION_119();
    sub_1DD63F998();

    v652 = sub_1DD63F9D8();
    sub_1DD640368();
    v653 = OUTLINED_FUNCTION_27_5();
    if (os_log_type_enabled(v653, v654))
    {
      OUTLINED_FUNCTION_28();
      v655 = swift_slowAlloc();
      OUTLINED_FUNCTION_84_0(v655);
      OUTLINED_FUNCTION_33_3();
      _os_log_impl(v656, v657, v658, v659, v660, v661);
      v662 = OUTLINED_FUNCTION_10_2();
      MEMORY[0x1E12B3DA0](v662);
    }

    v663 = *v764;

    sub_1DD3C6CC8(v796, v779, v663);

    OUTLINED_FUNCTION_76_0();
    OUTLINED_FUNCTION_18_9();
    v666 = swift_allocObject();
    OUTLINED_FUNCTION_74_0(v666);
    v667 = sub_1DD63F9D8();
    v668 = sub_1DD640368();
    OUTLINED_FUNCTION_35_2();
    v669 = swift_allocObject();
    *(v669 + 16) = 32;
    OUTLINED_FUNCTION_35_2();
    v670 = swift_allocObject();
    OUTLINED_FUNCTION_54_2(v670);
    OUTLINED_FUNCTION_18_9();
    v671 = swift_allocObject();
    *(v671 + 16) = sub_1DD3FA504;
    *(v671 + 24) = v666;
    OUTLINED_FUNCTION_18_9();
    v672 = swift_allocObject();
    *(v672 + 16) = sub_1DD3FA514;
    *(v672 + 24) = v671;
    v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECCDC218, &qword_1DD650480);
    v674 = OUTLINED_FUNCTION_81_0(v673);
    sub_1DD3AE030(v674, 3);
    *v675 = sub_1DD3FA50C;
    v675[1] = v669;
    v675[2] = sub_1DD3FAEC8;
    v675[3] = v670;
    v675[4] = sub_1DD3FA51C;
    v675[5] = v672;

    if (os_log_type_enabled(v667, v668))
    {
      LODWORD(v806) = v668;
      v676 = OUTLINED_FUNCTION_54();
      v677 = OUTLINED_FUNCTION_62();
      *&v818[0] = v677;
      *v676 = 136315138;
      v678 = *v764;
      swift_getKeyPath();
      v679 = *(v678 + 16);
      if (v679)
      {
        v803 = v677;
        v804 = v676;
        v805 = v667;
        v817 = MEMORY[0x1E69E7CC0];

        sub_1DD42A1D4(v679);
        v680 = 32;
        v681 = v817;
        do
        {
          v682 = *(v678 + v680);
          v816 = v682;

          OUTLINED_FUNCTION_120();
          swift_getAtKeyPath();

          if ((OUTLINED_FUNCTION_127() & 1) == 0)
          {
            OUTLINED_FUNCTION_36_2();
            v683 = OUTLINED_FUNCTION_26_2();
            sub_1DD42B97C(v683, v684, v685);
            v681 = v817;
          }

          OUTLINED_FUNCTION_46_0();
          if (v114)
          {
            v687 = OUTLINED_FUNCTION_1_0(v686);
            OUTLINED_FUNCTION_128(v687);
            v681 = v817;
          }

          *(v681 + 16) = v682;
          *(v681 + 8 * v676 + 32) = v677;
          v680 += 8;
          --v679;
        }

        while (v679);

        v676 = v804;
        v667 = v805;
        v677 = v803;
      }

      else
      {

        v681 = MEMORY[0x1E69E7CC0];
      }

      MEMORY[0x1E12B2430](v681, MEMORY[0x1E69E6530]);
      OUTLINED_FUNCTION_19_8();

      v688 = OUTLINED_FUNCTION_36_0();
      sub_1DD39565C(v688, v689, v690);
      OUTLINED_FUNCTION_105_0();
      *(v676 + 4) = v681;
      OUTLINED_FUNCTION_91();
      _os_log_impl(v691, v667, v692, v693, v676, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v677);
      v694 = OUTLINED_FUNCTION_15_10();
      MEMORY[0x1E12B3DA0](v694);
      OUTLINED_FUNCTION_13_0();
      MEMORY[0x1E12B3DA0]();
    }

    else
    {
    }

    v664 = v799;
    v665 = v809;
    v520 = v808;
    sub_1DD6404C8();
    v695 = v748;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v695, v696);
    v519 = v797;
  }

  else
  {
    v664 = v513;
    v665 = v809;
  }

  v697 = *(v519 + 72);
  v698 = v764;

  v699 = v796;
  v700 = OUTLINED_FUNCTION_111();
  sub_1DD3F5FF4(v700, v701);
  OUTLINED_FUNCTION_59_0();

  *v698 = v664 + v697;

  sub_1DD3F6E14();
  v703 = v702;

  *v698 = v703;

  OUTLINED_FUNCTION_111();
  sub_1DD3F7210();
  OUTLINED_FUNCTION_59_0();

  *v698 = v664;

  v704 = v699 + v520[16];
  if (*v704)
  {
    v807 = *v704;
    v806 = *(v704 + 8);
    v705 = v794;
    v706 = v747;
    OUTLINED_FUNCTION_16_6(v747 + *(v794 + 20));
    v707 = v665;
    sub_1DD63F9B8();
    *(v706 + *(v705 + 24)) = v707;
    v708 = v707;
    v709 = sub_1DD6404D8();
    OUTLINED_FUNCTION_23_5();
    v710 = swift_allocObject();
    sub_1DD3AE030(v710, 1);
    OUTLINED_FUNCTION_19_8();
    v711 = sub_1DD6408F8();
    OUTLINED_FUNCTION_14_11(v711, v712);
    OUTLINED_FUNCTION_9_8();
    v808 = v708;
    OUTLINED_FUNCTION_121();
    sub_1DD63F998();
    OUTLINED_FUNCTION_73_0();

    v713 = *v698;
    v714 = *(*v698 + 16);
    v715 = MEMORY[0x1E69E7CC0];
    if (v714)
    {
      *&v818[0] = MEMORY[0x1E69E7CC0];

      sub_1DD42A1A4(v714);
      v664 = 32;
      v716 = *&v818[0];
      do
      {
        v717 = *(v713 + v664);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v718 = OUTLINED_FUNCTION_13_9();
          sub_1DD42B93C(v718, v719, v720);
          v716 = *&v818[0];
        }

        v722 = *(v716 + 16);
        v721 = *(v716 + 24);
        v709 = v722 + 1;
        if (v722 >= v721 >> 1)
        {
          OUTLINED_FUNCTION_12_11(v721);
          OUTLINED_FUNCTION_90();
          sub_1DD42B93C(v723, v724, v725);
          v716 = *&v818[0];
        }

        *(v716 + 16) = v709;
        *(v716 + 8 * v722 + 32) = v717;
        v664 += 8;
        --v714;
      }

      while (v714);

      v715 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v716 = MEMORY[0x1E69E7CC0];
    }

    *&v818[0] = v716;
    v726 = OUTLINED_FUNCTION_122();
    (v807)(v726);

    v727 = v817;
    v728 = *(v817 + 16);
    if (v728)
    {
      *&v818[0] = v715;
      v729 = v818;
      sub_1DD42A18C(v728);
      OUTLINED_FUNCTION_72_1();
      do
      {
        v730 = *(v727 + v664);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v731 = OUTLINED_FUNCTION_13_9();
          sub_1DD42B404(v731, v732, v733);
          v729 = *&v818[0];
        }

        OUTLINED_FUNCTION_78_0();
        if (v114)
        {
          OUTLINED_FUNCTION_12_11(v734);
          OUTLINED_FUNCTION_90();
          sub_1DD42B404(v735, v736, v737);
          v729 = *&v818[0];
        }

        *(v729 + 2) = v709;
        *(v729 + v715 + 4) = v730;
        OUTLINED_FUNCTION_112();
      }

      while (!v159);
    }

    else
    {

      v729 = MEMORY[0x1E69E7CC0];
    }

    *v764 = v729;

    sub_1DD6404C8();
    v738 = v747;
    sub_1DD63F9A8();
    OUTLINED_FUNCTION_0_27();
    sub_1DD3FA798(v738, v739);
  }

  sub_1DD3E831C(v740);

  sub_1DD6404C8();
  v741 = v766;
  sub_1DD63F9A8();
  OUTLINED_FUNCTION_0_27();
  sub_1DD3FA798(v741, v742);
  OUTLINED_FUNCTION_86();
}