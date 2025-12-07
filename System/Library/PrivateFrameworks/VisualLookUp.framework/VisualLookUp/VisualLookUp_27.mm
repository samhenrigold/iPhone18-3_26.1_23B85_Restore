uint64_t sub_1D9BA3478(uint64_t a1)
{
  v69 = a1;
  v1 = sub_1D9C7D8DC();
  v70 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v72 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v71 = &v66 - v4;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v66 - v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v67 = &v66 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v66 = &v66 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v66 - v21;
  Context = type metadata accessor for VisualQueryContext(0);
  v24 = *(Context - 8);
  MEMORY[0x1EEE9AC00](Context);
  v26 = &v66 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(v69, v22, &unk_1ECB51B10, &qword_1D9C86550);
  if ((*(v24 + 48))(v22, 1, Context) == 1)
  {
    sub_1D99A6AE0(v22, &unk_1ECB51B10, &qword_1D9C86550);
    static Logger.argos.getter(v10);
    sub_1D9A3E0E0(v7);
    v27 = v70;
    v28 = *(v70 + 8);
    v28(v10, v1);
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E0AC();
    v31 = v1;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = 2;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1D9962000, v29, v30, "search mapToVLUUseCase set to default .VLUCameraFrame: nil queryContext", v33, 2u);
      MEMORY[0x1DA7405F0](v33, -1, -1);

      v28(v7, v31);
    }

    else
    {

      v28(v7, v1);
      v32 = 2;
    }

    goto LABEL_24;
  }

  v34 = v70;
  v31 = v1;
  sub_1D9BA45A0(v22, v26, type metadata accessor for VisualQueryContext);
  v35 = *(v26 + 7);
  if (v35 == 5)
  {
    v42 = v26[*(Context + 84)];
    if (v42 > 1)
    {
      v27 = v34;
      if (v42 != 2)
      {
        v45 = v66;
        static Logger.argos.getter(v66);
        v46 = v67;
        sub_1D9A3E0E0(v67);
        v47 = *(v34 + 8);
        v47(v45, v1);
        v48 = sub_1D9C7D8BC();
        v49 = sub_1D9C7E0AC();
        if (os_log_type_enabled(v48, v49))
        {
          v50 = swift_slowAlloc();
          *v50 = 0;
          _os_log_impl(&dword_1D9962000, v48, v49, "search mapToVLUUseCase set to .VLUScreenshotEager: nil cameraSearchMode", v50, 2u);
          MEMORY[0x1DA7405F0](v50, -1, -1);
        }

        v47(v46, v31);
        goto LABEL_23;
      }
    }

    else
    {
      v27 = v34;
      if (!v26[*(Context + 84)])
      {
        goto LABEL_19;
      }
    }

    v43 = sub_1D9C7E7DC();

    if (v43)
    {
LABEL_23:
      sub_1D9BA4608(v26, type metadata accessor for VisualQueryContext);
      v32 = 3;
      goto LABEL_24;
    }

    if (v42 == 2)
    {
      v44 = sub_1D9C7E7DC();

      if ((v44 & 1) == 0)
      {

        sub_1D9BA4608(v26, type metadata accessor for VisualQueryContext);
        v32 = 4;
        goto LABEL_24;
      }

      goto LABEL_23;
    }

LABEL_19:

    goto LABEL_23;
  }

  if (v35 != 3)
  {
    static Logger.argos.getter(v15);
    v36 = v68;
    sub_1D9A3E0E0(v68);
    v37 = *(v34 + 8);
    v37(v15, v31);
    v38 = sub_1D9C7D8BC();
    v39 = sub_1D9C7E0AC();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 134217984;
      *(v40 + 4) = v35;
      _os_log_impl(&dword_1D9962000, v38, v39, "search mapToVLUUseCase set to default .VLUCameraFrame: Unexpected imageType %ld", v40, 0xCu);
      v41 = v40;
      v36 = v68;
      MEMORY[0x1DA7405F0](v41, -1, -1);
    }

    v37(v36, v31);
  }

  sub_1D9BA4608(v26, type metadata accessor for VisualQueryContext);
  v32 = 2;
  v27 = v34;
LABEL_24:
  v52 = v71;
  v51 = v72;
  static Logger.argos.getter(v71);
  sub_1D9A3E0E0(v51);
  v53 = *(v27 + 8);
  v53(v52, v31);
  v54 = sub_1D9C7D8BC();
  v55 = sub_1D9C7E08C();
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v73 = v57;
    *v56 = 136315138;
    v58 = 0xD000000000000012;
    v59 = 0x80000001D9CA4B30;
    if (v32 != 3)
    {
      v58 = 0xD000000000000015;
      v59 = 0x80000001D9CA4B10;
    }

    if (v32 == 2)
    {
      v60 = 0x72656D6143554C56;
    }

    else
    {
      v60 = v58;
    }

    if (v32 == 2)
    {
      v61 = 0xEE00656D61724661;
    }

    else
    {
      v61 = v59;
    }

    v62 = sub_1D9A0E224(v60, v61, &v73);

    *(v56 + 4) = v62;
    _os_log_impl(&dword_1D9962000, v54, v55, "search VLUUseCase by queryContext: %s", v56, 0xCu);
    v63 = __swift_destroy_boxed_opaque_existential_0Tm(v57);
    MEMORY[0x1DA7405F0](v57, -1, -1, v63);
    MEMORY[0x1DA7405F0](v56, -1, -1);

    v64 = v72;
  }

  else
  {

    v64 = v51;
  }

  v53(v64, v31);
  return v32;
}

uint64_t objectdestroy_18Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t sub_1D9BA3D04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D9ADD09C;

  return sub_1D9B9ACC8(a1, v4, v5, v6, v7, v8, v9);
}

void sub_1D9BA3E1C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
  }
}

void sub_1D9BA3E60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {

    v4 = a4;
  }
}

uint64_t sub_1D9BA3EA4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB519D0, &unk_1D9C881A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroy_30Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 64) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v6 = *(v5 - 1);
  v7 = (v3 + v4 + *(v6 + 80)) & ~*(v6 + 80);
  v28 = (((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v29 = *(v6 + 80);
  v8 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));
  v9 = v0 + v3;
  Context = type metadata accessor for VisualQueryContext(0);
  if (!(*(*(Context - 1) + 48))(v9, 1, Context))
  {
    v27 = v2;

    v11 = Context[10];
    v12 = sub_1D9C7B80C();
    v13 = *(v12 - 8);
    v14 = *(v13 + 48);
    if (!v14(v9 + v11, 1, v12))
    {
      (*(v13 + 8))(v9 + v11, v12);
    }

    swift_unknownObjectRelease();
    v15 = Context[14];
    if (!v14(v9 + v15, 1, v12))
    {
      (*(v13 + 8))(v9 + v15, v12);
    }

    v2 = v27;
    v8 = (v28 + 15) & 0xFFFFFFFFFFFFFFF8;
  }

  v16 = v8 + 23;
  v17 = v0 + v7;

  v18 = v5[7];
  v19 = sub_1D9C7D3CC();
  v20 = *(*(v19 - 8) + 8);
  v20(v17 + v18, v19);
  v21 = v17 + v5[8];
  v22 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  if (!(*(*(v22 - 8) + 48))(v21, 1, v22))
  {

    v20(v21 + *(v22 + 28), v19);
  }

  v23 = v16 & 0xFFFFFFFFFFFFFFF8;
  v24 = v17 + v5[9];
  v25 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
  {
    v20(v24 + *(v25 + 20), v19);
  }

  if (*(v0 + v23 + 8) != 1)
  {
  }

  if (*(v0 + v23 + 152))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, v23 + 184, v2 | v29 | 7);
}

uint64_t sub_1D9BA43C4(uint64_t a1, void (*a2)(uint64_t, _OWORD *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B97BB4(a1, *(v2 + 16), v2 + 24, v2 + v6, v2 + v9, *(v2 + v10), *(v2 + v11), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v2 + ((((v11 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8), a2);
}

uint64_t sub_1D9BA4538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9BA45A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9BA4608(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_43Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 41) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  Context = type metadata accessor for VisualQueryContext(0);
  if (!(*(*(Context - 1) + 48))(v0 + v3, 1, Context))
  {
    v13 = v4;

    v7 = Context[10];
    v8 = sub_1D9C7B80C();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    swift_unknownObjectRelease();
    v11 = Context[14];
    if (!v10(v5 + v11, 1, v8))
    {
      (*(v9 + 8))(v5 + v11, v8);
    }

    v4 = v13;
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D9BA48CC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D9B9CB2C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), v1 + v4, *v5, *(v5 + 8));
}

unint64_t sub_1D9BA4978(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B9B280(a1, *(v1 + 16), (v1 + 24), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v8 + 8), *(v1 + v9), *(v1 + v9 + 8), *(v1 + v10), *(v1 + v11), *(v1 + v12), *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v1 + ((((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
}

void sub_1D9BA4AEC(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, void *a7, uint64_t (*a8)(char *), uint64_t a9, uint64_t a10)
{
  v240 = a8;
  v189 = a7;
  v182 = a6;
  v186 = a4;
  v187 = a5;
  v167 = a3;
  v179 = a2;
  v157 = type metadata accessor for ServerSearchResult(0);
  MEMORY[0x1EEE9AC00](v157);
  v158 = &v154 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0, &unk_1D9C9C160);
  MEMORY[0x1EEE9AC00](v175);
  v160 = (&v154 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v174 = (&v154 - v14);
  v15 = sub_1D9C7DA2C();
  v172 = *(v15 - 8);
  v173 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v170 = &v154 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v171 = sub_1D9C7DA4C();
  v169 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v168 = &v154 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v164 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v165 = v19;
  v166 = &v154 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v162 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v177 = v21;
  v178 = &v154 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v163 = &v154 - v23;
  v24 = sub_1D9C7D8DC();
  v180 = *(v24 - 8);
  v181 = v24;
  MEMORY[0x1EEE9AC00](v24);
  v161 = &v154 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v176 = &v154 - v27;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v183);
  v159 = &v154 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v154 - v30;
  v32 = sub_1D9C7DA7C();
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = (&v154 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  v36 = swift_allocObject();
  *(v36 + 16) = v240;
  *(v36 + 24) = a9;
  v37 = *(a10 + 144);
  *(v36 + 160) = *(a10 + 128);
  *(v36 + 176) = v37;
  *(v36 + 192) = *(a10 + 160);
  *(v36 + 208) = *(a10 + 176);
  v38 = *(a10 + 80);
  *(v36 + 96) = *(a10 + 64);
  *(v36 + 112) = v38;
  v39 = *(a10 + 112);
  *(v36 + 128) = *(a10 + 96);
  *(v36 + 144) = v39;
  v40 = *(a10 + 16);
  *(v36 + 32) = *a10;
  *(v36 + 48) = v40;
  v41 = *(a10 + 48);
  *(v36 + 64) = *(a10 + 32);
  *(v36 + 80) = v41;
  v188 = v36;
  v42 = a1[9];
  v236 = a1[8];
  v237 = v42;
  v238 = a1[10];
  v239 = *(a1 + 22);
  v43 = a1[5];
  v232 = a1[4];
  v233 = v43;
  v44 = a1[7];
  v234 = a1[6];
  v235 = v44;
  v45 = a1[1];
  v228 = *a1;
  v229 = v45;
  v46 = a1[3];
  v230 = a1[2];
  v231 = v46;
  v47 = v189[7];
  *v35 = v47;
  (*(v33 + 104))(v35, *MEMORY[0x1E69E8020], v32);
  v185 = a9;

  v184 = a10;
  sub_1D99BB40C(a10, &v216);
  v48 = v47;
  LOBYTE(v47) = sub_1D9C7DA9C();
  v50 = *(v33 + 8);
  v49 = v33 + 8;
  v50(v35, v32);
  if ((v47 & 1) == 0)
  {
    __break(1u);
    goto LABEL_25;
  }

  v224 = v236;
  v225 = v237;
  v226 = v238;
  v227 = v239;
  v220 = v232;
  v221 = v233;
  v222 = v234;
  v223 = v235;
  v216 = v228;
  v217 = v229;
  v218 = v230;
  v219 = v231;
  sub_1D9B67A68();
  v52 = *(v51 + 16);

  if (!v52)
  {
    sub_1D9AFCCA4();
    v69 = type metadata accessor for VisualSearchResultInternal(0);
    v70 = *(v69 + 24);
    v71 = sub_1D9C7CBEC();
    (*(*(v71 - 8) + 56))(&v31[v70], 1, 1, v71);
    v72 = *(v69 + 28);
    v73 = sub_1D9C7CF3C();
    (*(*(v73 - 8) + 56))(&v31[v72], 1, 1, v73);
    v74 = v237;
    *(v31 + 8) = v236;
    *(v31 + 9) = v74;
    *(v31 + 10) = v238;
    v75 = v239;
    v76 = v233;
    *(v31 + 4) = v232;
    *(v31 + 5) = v76;
    v77 = v235;
    *(v31 + 6) = v234;
    *(v31 + 7) = v77;
    v78 = v229;
    *v31 = v228;
    *(v31 + 1) = v78;
    v79 = v231;
    *(v31 + 2) = v230;
    *(v31 + 3) = v79;
    v80 = MEMORY[0x1E69E7CC0];
    *(v31 + 22) = v75;
    *(v31 + 23) = v80;
    swift_storeEnumTagMultiPayload();
    sub_1D99BB40C(&v228, &v216);
    sub_1D9B99130(v31, v240, v185, v184);
    sub_1D99A6AE0(v31, &unk_1ECB53570, &unk_1D9C9C2A0);
LABEL_16:

    return;
  }

  v53 = v189[3];

  sub_1D9C7D0BC();

  v54 = swift_allocObject();
  v55 = v237;
  *(v54 + 144) = v236;
  *(v54 + 160) = v55;
  *(v54 + 176) = v238;
  *(v54 + 192) = v239;
  v56 = v233;
  *(v54 + 80) = v232;
  *(v54 + 96) = v56;
  v57 = v235;
  *(v54 + 112) = v234;
  *(v54 + 128) = v57;
  v58 = v229;
  *(v54 + 16) = v228;
  *(v54 + 32) = v58;
  v59 = v231;
  *(v54 + 48) = v230;
  *(v54 + 64) = v59;
  v60 = v187;
  v61 = *&v187[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  sub_1D99BB40C(&v228, &v216);
  os_unfair_lock_lock(v61 + 4);
  v156 = OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled;
  v62 = v60[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v61 + 4);
  if (v62)
  {
    v49 = v176;
    static Logger.argos.getter(v176);
    if (qword_1EDD2C988 == -1)
    {
LABEL_5:
      v63 = v181;
      __swift_project_value_buffer(v181, qword_1EDD2C990);
      (*(v180 + 8))(v49, v63);
      v64 = sub_1D9C7D8BC();
      v65 = sub_1D9C7E0AC();
      if (os_log_type_enabled(v64, v65))
      {
        v66 = swift_slowAlloc();
        *v66 = 0;
        _os_log_impl(&dword_1D9962000, v64, v65, "performSearchForCamera(): canceled", v66, 2u);
        MEMORY[0x1DA7405F0](v66, -1, -1);
      }

      sub_1D9A0EEC0();
      v67 = swift_allocError();
      *v68 = 0;
      *v31 = v67;
      swift_storeEnumTagMultiPayload();
      sub_1D9B99130(v31, v240, v185, v184);
      sub_1D99A6AE0(v31, &unk_1ECB53570, &unk_1D9C9C2A0);

      goto LABEL_16;
    }

LABEL_25:
    swift_once();
    goto LABEL_5;
  }

  v155 = v53;
  v81 = *(v54 + 160);
  v224 = *(v54 + 144);
  v225 = v81;
  v226 = *(v54 + 176);
  v227 = *(v54 + 192);
  v82 = *(v54 + 96);
  v220 = *(v54 + 80);
  v221 = v82;
  v83 = *(v54 + 128);
  v222 = *(v54 + 112);
  v223 = v83;
  v84 = *(v54 + 32);
  v216 = *(v54 + 16);
  v217 = v84;
  v85 = *(v54 + 64);
  v218 = *(v54 + 48);
  v219 = v85;
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = swift_allocObject();
  v87[2] = v186;
  v87[3] = v86;
  v88 = v182;
  v87[4] = v54;
  v87[5] = v88;
  v89 = v188;
  v189 = v87;
  v87[6] = sub_1D9BA87A4;
  v87[7] = v89;
  swift_retain_n();
  sub_1D99BB40C(&v216, v214);

  v176 = v86;

  os_unfair_lock_lock(v61 + 4);
  v90 = v60[v156];
  os_unfair_lock_unlock(v61 + 4);
  if ((v90 & 1) == 0)
  {

    v101 = swift_allocObject();
    v240 = v101;
    v102 = v189;
    *(v101 + 16) = sub_1D9BA87C4;
    *(v101 + 24) = v102;
    v183 = *(v155 + 16);
    v103 = v163;
    sub_1D99AB100(v179, v163, &unk_1ECB51B10, &qword_1D9C86550);
    v104 = *(v162 + 80);
    v105 = (v104 + 16) & ~v104;
    v106 = (v177 + v105 + 7) & 0xFFFFFFFFFFFFFFF8;
    v107 = swift_allocObject();
    v108 = v107 + v105;
    v109 = v107;
    sub_1D9A0E758(v103, v108);
    v110 = v109 + v106;
    v185 = v109;
    v111 = v225;
    *(v110 + 128) = v224;
    *(v110 + 144) = v111;
    *(v110 + 160) = v226;
    *(v110 + 176) = v227;
    v112 = v221;
    *(v110 + 64) = v220;
    *(v110 + 80) = v112;
    v113 = v223;
    *(v110 + 96) = v222;
    *(v110 + 112) = v113;
    v114 = v217;
    *v110 = v216;
    *(v110 + 16) = v114;
    v115 = v219;
    *(v110 + 32) = v218;
    *(v110 + 48) = v115;
    v116 = (v109 + ((v106 + 191) & 0xFFFFFFFFFFFFFFF8));
    v117 = v240;
    *v116 = sub_1D9BA81C8;
    v116[1] = v117;
    v184 = *(v183 + 16);
    v118 = swift_allocObject();
    v186 = v118;
    swift_weakInit();
    v119 = v166;
    sub_1D9BA4538(v167, v166, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D99AB100(v179, v178, &unk_1ECB51B10, &qword_1D9C86550);
    v120 = (*(v164 + 80) + 240) & ~*(v164 + 80);
    v121 = (v165 + v104 + v120) & ~v104;
    v122 = swift_allocObject();
    *(v122 + 16) = v118;
    v123 = v187;
    *(v122 + 24) = v182;
    *(v122 + 32) = v123;
    v124 = v225;
    *(v122 + 184) = v224;
    *(v122 + 200) = v124;
    *(v122 + 216) = v226;
    v125 = v221;
    *(v122 + 120) = v220;
    *(v122 + 136) = v125;
    v126 = v223;
    *(v122 + 152) = v222;
    *(v122 + 168) = v126;
    v127 = v217;
    *(v122 + 56) = v216;
    *(v122 + 72) = v127;
    v128 = v219;
    *(v122 + 88) = v218;
    v129 = v185;
    *(v122 + 40) = sub_1D9BA858C;
    *(v122 + 48) = v129;
    *(v122 + 232) = v227;
    *(v122 + 104) = v128;
    sub_1D9BA45A0(v119, v122 + v120, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    sub_1D9A0E758(v178, v122 + v121);
    *&v204 = sub_1D9BA8FA4;
    *(&v204 + 1) = v122;
    *&v202 = MEMORY[0x1E69E9820];
    *(&v202 + 1) = 1107296256;
    *&v203 = sub_1D9A0A1E0;
    *(&v203 + 1) = &block_descriptor_156;
    v130 = _Block_copy(&v202);
    sub_1D99BB40C(&v216, v214);
    sub_1D99BB40C(&v216, v214);

    v131 = v187;

    v132 = v168;
    sub_1D9C7DA3C();
    *&v214[0] = MEMORY[0x1E69E7CC0];
    sub_1D9BA8340(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
    sub_1D9A0E83C();
    v133 = v170;
    v134 = v173;
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v132, v133, v130);
    _Block_release(v130);

    sub_1D9A0009C(&v216);
    (*(v172 + 8))(v133, v134);
    (*(v169 + 8))(v132, v171);

    goto LABEL_16;
  }

  v91 = v161;
  static Logger.argos.getter(v161);
  v92 = sub_1D9C7D8BC();
  v93 = sub_1D9C7E09C();
  if (os_log_type_enabled(v92, v93))
  {
    v94 = swift_slowAlloc();
    *v94 = 0;
    _os_log_impl(&dword_1D9962000, v92, v93, "searchCamera(): canceled", v94, 2u);
    v88 = v182;
    MEMORY[0x1DA7405F0](v94, -1, -1);
  }

  (*(v180 + 8))(v91, v181);
  sub_1D9A0EEC0();
  v95 = swift_allocError();
  *v96 = 0;
  v97 = v174;
  *v174 = v95;
  swift_storeEnumTagMultiPayload();
  sub_1D9AFCCA4();
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v99 = Strong;
    if (v88)
    {
      swift_beginAccess();
      v100 = *(v88 + 16);
    }

    else
    {
      v100 = MEMORY[0x1E69E7CC0];
    }

    swift_beginAccess();
    sub_1D9A19294(v100);
    swift_endAccess();
    v135 = v160;
    sub_1D99AB100(v97, v160, &qword_1ECB53DC0, &unk_1D9C9C160);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v136 = v159;
      *v159 = *v135;
      swift_storeEnumTagMultiPayload();
    }

    else
    {
      v137 = v158;
      sub_1D9BA45A0(v135, v158, type metadata accessor for ServerSearchResult);
      v138 = (v137 + *(v157 + 24));
      v139 = v138[1];
      *(v54 + 144) = *v138;
      *(v54 + 152) = v139;

      v140 = *(v54 + 160);
      v141 = *(v54 + 128);
      v210 = *(v54 + 144);
      v211 = v140;
      v142 = *(v54 + 160);
      v212 = *(v54 + 176);
      v143 = *(v54 + 96);
      v144 = *(v54 + 64);
      v206 = *(v54 + 80);
      v207 = v143;
      v145 = *(v54 + 96);
      v146 = *(v54 + 128);
      v208 = *(v54 + 112);
      v209 = v146;
      v147 = *(v54 + 32);
      v202 = *(v54 + 16);
      v203 = v147;
      v148 = *(v54 + 64);
      v150 = *(v54 + 16);
      v149 = *(v54 + 32);
      v204 = *(v54 + 48);
      v205 = v148;
      v151 = *(v54 + 176);
      v199 = v142;
      v200 = v151;
      v194 = v206;
      v195 = v145;
      v196 = v208;
      v197 = v141;
      v198 = v210;
      v190 = v150;
      v191 = v149;
      v213 = *(v54 + 192);
      v201 = *(v54 + 192);
      v192 = v204;
      v193 = v144;
      v152 = *(v99 + 64);
      sub_1D99BB40C(&v202, v214);
      v153 = v152;
      v136 = v159;
      sub_1D9B3BD0C(v137, &v190, v153, v159);
      v214[8] = v198;
      v214[9] = v199;
      v214[10] = v200;
      v215 = v201;
      v214[4] = v194;
      v214[5] = v195;
      v214[6] = v196;
      v214[7] = v197;
      v214[0] = v190;
      v214[1] = v191;
      v214[2] = v192;
      v214[3] = v193;
      sub_1D9A0009C(v214);
      sub_1D9BA4608(v137, type metadata accessor for ServerSearchResult);
    }

    sub_1D9B99130(v136, v240, v185, v184);

    sub_1D9A0009C(&v216);
    sub_1D99A6AE0(v136, &unk_1ECB53570, &unk_1D9C9C2A0);
  }

  else
  {
    sub_1D9A0009C(&v216);
  }

  sub_1D99A6AE0(v97, &qword_1ECB53DC0, &unk_1D9C9C160);
}

uint64_t sub_1D9BA5D18(uint64_t a1, double a2)
{
  v4 = sub_1D9C7D87C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [objc_allocWithZone(MEMORY[0x1E695F658]) initWithCVPixelBuffer_];
  v9 = [v8 imageByApplyingCGOrientation_];

  v10 = [objc_allocWithZone(MEMORY[0x1E695F620]) initWithOptions_];
  [v9 extent];
  v11 = [v10 createCGImage:v9 fromRect:?];
  if (v11)
  {
    v12 = v11;
    v13 = [objc_allocWithZone(MEMORY[0x1E695DF88]) init];
    sub_1D9C7D86C();
    sub_1D9C7D85C();
    (*(v5 + 8))(v7, v4);
    v14 = sub_1D9C7DC4C();

    v15 = CGImageDestinationCreateWithData(v13, v14, 1uLL, 0);

    if (v15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC8, &qword_1D9C99C98);
      inited = swift_initStackObject();
      v17 = MEMORY[0x1E696D338];
      *(inited + 16) = xmmword_1D9C85660;
      v18 = *v17;
      *(inited + 32) = v18;
      *(inited + 40) = a2;
      v19 = v18;
      sub_1D9A47654(inited);
      swift_setDeallocating();
      sub_1D99A6AE0(inited + 32, &qword_1ECB53DD0, &unk_1D9C99CA0);
      type metadata accessor for CFString(0);
      sub_1D9BA8340(&qword_1ECB50F70, type metadata accessor for CFString, &unk_1D9C85228);
      v20 = sub_1D9C7DB3C();

      CGImageDestinationAddImage(v15, v12, v20);
      if (CGImageDestinationFinalize(v15))
      {
        v21 = v13;
        v22 = sub_1D9C7B87C();

        return v22;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  return 0;
}

void sub_1D9BA6070(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char *a10, char *a11, unint64_t a12, uint64_t (*a13)(uint64_t), uint64_t a14, uint64_t a15)
{
  v281 = a6;
  v282 = a8;
  v275 = a5;
  v276 = a7;
  v308 = a4;
  v313 = a3;
  v392 = a1;
  v312 = a14;
  v314 = a12;
  v268 = type metadata accessor for ServerSearchResult(0);
  MEMORY[0x1EEE9AC00](v268);
  v269 = &v262 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0, &unk_1D9C9C160);
  MEMORY[0x1EEE9AC00](v274);
  v270 = (&v262 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v285 = (&v262 - v19);
  v20 = sub_1D9C7DA2C();
  v283 = *(v20 - 8);
  v284 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v279 = &v262 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v280 = sub_1D9C7DA4C();
  v278 = *(v280 - 8);
  MEMORY[0x1EEE9AC00](v280);
  v277 = &v262 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v272 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v273 = v24;
  v289 = &v262 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v295 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB53570, &unk_1D9C9C2A0);
  MEMORY[0x1EEE9AC00](v295);
  v286 = (&v262 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v26);
  v296 = (&v262 - v27);
  v28 = sub_1D9C7D8DC();
  v293 = *(v28 - 8);
  v294 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v271 = &v262 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v292 = &v262 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v288 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32 - 8);
  v307 = (&v262 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v34);
  v291 = &v262 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v287 = &v262 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v302 = &v262 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v301 = &v262 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v299 = &v262 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v309 = &v262 - v45;
  v290 = v46;
  MEMORY[0x1EEE9AC00](v47);
  v306 = &v262 - v48;
  v49 = sub_1D9C7DA7C();
  v50 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v52 = (&v262 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0));
  v53 = swift_allocObject();
  v297 = a13;
  *(v53 + 16) = a13;
  *(v53 + 24) = v312;
  v54 = *(a15 + 144);
  *(v53 + 160) = *(a15 + 128);
  *(v53 + 176) = v54;
  *(v53 + 192) = *(a15 + 160);
  *(v53 + 208) = *(a15 + 176);
  v55 = *(a15 + 80);
  *(v53 + 96) = *(a15 + 64);
  *(v53 + 112) = v55;
  v56 = *(a15 + 112);
  *(v53 + 128) = *(a15 + 96);
  *(v53 + 144) = v56;
  v57 = *(a15 + 16);
  *(v53 + 32) = *a15;
  *(v53 + 48) = v57;
  v58 = *(a15 + 48);
  *(v53 + 64) = *(a15 + 32);
  *(v53 + 80) = v58;
  v59 = *(a2 + 144);
  v388 = *(a2 + 128);
  v389 = v59;
  v390 = *(a2 + 160);
  v391 = *(a2 + 176);
  v60 = *(a2 + 80);
  v384 = *(a2 + 64);
  v385 = v60;
  v61 = *(a2 + 112);
  v386 = *(a2 + 96);
  v387 = v61;
  v62 = *(a2 + 16);
  v380 = *a2;
  v381 = v62;
  v63 = *(a2 + 48);
  v382 = *(a2 + 32);
  v383 = v63;
  v64 = v314;
  v65 = *(v314 + 56);
  *v52 = v65;
  v66 = *(v50 + 104);
  LODWORD(v304) = *MEMORY[0x1E69E8020];
  v305 = v50 + 104;
  v303 = v66;
  v66(v52);
  v67 = v49;

  v298 = a15;
  sub_1D99BB40C(a15, &v343);
  v68 = v65;
  LOBYTE(v65) = sub_1D9C7DA9C();
  v69 = *(v50 + 8);
  v69(v52, v67);
  if ((v65 & 1) == 0)
  {
    __break(1u);
    goto LABEL_63;
  }

  v300 = v68;
  v70 = v311;
  sub_1D9A723CC(v392);
  if (v70)
  {
LABEL_22:

    return;
  }

  v266 = 0;
  v267 = v53;
  v265 = *(v64 + 24);

  sub_1D9C7D0BC();

  v71 = v306;
  sub_1D99AB100(v313, v306, &unk_1ECB51B10, &qword_1D9C86550);
  Context = type metadata accessor for VisualQueryContext(0);
  v73 = *(Context - 8);
  v74 = *(v73 + 48);
  v310 = v73 + 48;
  v311 = v74;
  if ((v74)(v71, 1, Context) == 1)
  {
    sub_1D99A6AE0(v71, &unk_1ECB51B10, &qword_1D9C86550);
    v75 = v307;
  }

  else
  {
    v76 = *(v71 + 56);
    sub_1D9BA4608(v71, type metadata accessor for VisualQueryContext);
    v75 = v307;
    if (v76 == 3)
    {
      v77 = 0;
      goto LABEL_10;
    }
  }

  sub_1D99AB100(v313, v75, &unk_1ECB51B10, &qword_1D9C86550);
  if ((v311)(v75, 1, Context) == 1)
  {
    sub_1D99A6AE0(v75, &unk_1ECB51B10, &qword_1D9C86550);
    v77 = 1;
  }

  else
  {
    v78 = v75[7];
    sub_1D9BA4608(v75, type metadata accessor for VisualQueryContext);
    v77 = v78 != 5;
  }

LABEL_10:
  v79 = v300;
  *v52 = v300;
  v303(v52, v304, v67);
  v80 = v79;
  LOBYTE(v79) = sub_1D9C7DA9C();
  v69(v52, v67);
  if ((v79 & 1) == 0)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  LOBYTE(v319) = 0;
  v317 = 0u;
  v318 = 0u;
  LODWORD(v306) = v77;
  if (v77)
  {
    v81 = v309;
    sub_1D99AB100(v313, v309, &unk_1ECB51B10, &qword_1D9C86550);
    v351 = v388;
    v352 = v389;
    v353 = v390;
    v354 = v391;
    v347 = v384;
    v348 = v385;
    v349 = v386;
    v350 = v387;
    v343 = v380;
    v344 = v381;
    v345 = v382;
    v346 = v383;
    sub_1D99BB40C(&v380, &v329);
    sub_1D9BDB0A4(v81, &v343, v355);
    v367 = *(v355 + 8);
    v366 = *(&v355[1] + 1);
    v365 = *&v355[2];
    v307 = objc_opt_self();
    *(&v344 + 1) = &type metadata for EngagedRegionOfInterestEvent;
    *&v345 = &off_1F5535308;
    v82 = swift_allocObject();
    *&v343 = v82;
    v83 = v355[1];
    v82[1] = v355[0];
    v82[2] = v83;
    *(v82 + 41) = *(&v355[1] + 9);
    v84 = type metadata accessor for AnyVIAEvent();
    v263 = v84;
    v85 = objc_allocWithZone(v84);
    sub_1D99A17C8(&v343, v85 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(&v367, &v329);
    sub_1D99AB100(&v366, &v329, &qword_1ECB53DB8, &qword_1D9C99C90);
    sub_1D99AB100(&v365, &v329, &qword_1ECB53400, &qword_1D9C953C8);
    sub_1D9B1734C(&v367, &v329);
    sub_1D99AB100(&v366, &v329, &qword_1ECB53DB8, &qword_1D9C99C90);
    sub_1D99AB100(&v365, &v329, &qword_1ECB53400, &qword_1D9C953C8);
    v316.receiver = v85;
    v316.super_class = v84;
    v86 = objc_msgSendSuper2(&v316, sel_init);
    v87 = __swift_destroy_boxed_opaque_existential_0Tm(&v343);
    [v307 logEvent_];

    sub_1D9B172F8(&v367);
    sub_1D99A6AE0(&v366, &qword_1ECB53DB8, &qword_1D9C99C90);
    sub_1D99A6AE0(&v365, &qword_1ECB53400, &qword_1D9C953C8);
    v88 = v313;
    v89 = v309;
    sub_1D99AB100(v313, v309, &unk_1ECB51B10, &qword_1D9C86550);
    v90 = v299;
    sub_1D99AB100(v89, v299, &unk_1ECB51B10, &qword_1D9C86550);
    sub_1D9A9499C(v90, 0, &v356);
    v91 = v356;
    v93 = *(&v357 + 1);
    v92 = v357;
    v94 = v358;
    v264 = Context;
    v95 = v359;
    sub_1D99A6AE0(v89, &unk_1ECB51B10, &qword_1D9C86550);
    v364 = v357;
    *&v317 = v91;
    *(&v317 + 1) = v92;
    *&v318 = v93;
    *(&v318 + 1) = v94;
    LOBYTE(v319) = v95;
    *(&v344 + 1) = &type metadata for LocalSearchStartEvent;
    *&v345 = &off_1F55352D8;
    v96 = swift_allocObject();
    *&v343 = v96;
    v304 = v92;
    v305 = v91;
    *(v96 + 16) = v91;
    *(v96 + 24) = v92;
    v303 = v93;
    *(v96 + 32) = v93;
    *(v96 + 40) = v94;
    v97 = v94;
    LODWORD(v300) = v95;
    *(v96 + 48) = v95;
    v98 = v263;
    Context = v264;
    v99 = objc_allocWithZone(v263);
    sub_1D99A17C8(&v343, v99 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
    sub_1D9B1734C(&v364, &v329);
    v100 = v94;
    sub_1D9B1734C(&v364, &v329);
    v315.receiver = v99;
    v315.super_class = v98;
    v101 = v100;
    v102 = objc_msgSendSuper2(&v315, sel_init);
    v103 = __swift_destroy_boxed_opaque_existential_0Tm(&v343);
    [v307 logEvent_];

    sub_1D9B172F8(&v367);
    sub_1D99A6AE0(&v366, &qword_1ECB53DB8, &qword_1D9C99C90);
    sub_1D99A6AE0(&v365, &qword_1ECB53400, &qword_1D9C953C8);
    sub_1D9B172F8(&v364);
  }

  else
  {
    v304 = 0;
    v305 = 0;
    v303 = 0;
    v97 = 0;
    LODWORD(v300) = 0;
    v88 = v313;
  }

  v104 = v392;
  v105 = *(v314 + 16);
  v106 = v301;
  sub_1D99AB100(v88, v301, &unk_1ECB51B10, &qword_1D9C86550);
  if ((v311)(v106, 1, Context) == 1)
  {
    sub_1D99A6AE0(v106, &unk_1ECB51B10, &qword_1D9C86550);
    v107 = 0;
  }

  else
  {
    v108 = v106;
    v107 = *(v106 + *(Context + 48));
    swift_unknownObjectRetain();
    sub_1D9BA4608(v108, type metadata accessor for VisualQueryContext);
  }

  v109 = v88;
  v110 = v302;
  sub_1D99AB100(v109, v302, &unk_1ECB51B10, &qword_1D9C86550);
  v111 = (v311)(v110, 1, Context);
  v307 = a11;
  if (v111 == 1)
  {
    sub_1D99A6AE0(v110, &unk_1ECB51B10, &qword_1D9C86550);
    v112 = 0;
  }

  else
  {
    v112 = v110[7];
    sub_1D9BA4608(v110, type metadata accessor for VisualQueryContext);
  }

  v113 = swift_allocObject();
  v114 = *(v105 + 16);
  sub_1D99A17C8(v104, &v343);
  v115 = *(v105 + 24);
  type metadata accessor for SignalsExtractionProcessor();
  v116 = swift_allocObject();

  *(v116 + 104) = sub_1D9A43DE4(MEMORY[0x1E69E7CC0]);
  *(v116 + 112) = 0u;
  *(v116 + 128) = 0u;
  *(v116 + 144) = 0u;
  *(v116 + 40) = v114;
  sub_1D9979B9C(&v343, v116 + 48);
  type metadata accessor for TextDetectionRequestFactory();
  *(v116 + 16) = swift_allocObject();
  type metadata accessor for BarcodeDetectionRequestFactory();
  *(v116 + 24) = swift_allocObject();
  *(v116 + 88) = v115;
  type metadata accessor for ImageFingerprintRequestFactory();
  v117 = swift_allocObject();
  *(v117 + 16) = v114;
  *(v116 + 32) = v117;
  *(v116 + 96) = v107;
  v351 = v388;
  v352 = v389;
  v353 = v390;
  v354 = v391;
  v347 = v384;
  v348 = v385;
  v349 = v386;
  v350 = v387;
  v343 = v380;
  v344 = v381;
  v345 = v382;
  v346 = v383;
  swift_unknownObjectRetain();

  v118 = v266;
  sub_1D99B54E0(&v343, v308, 1, 1, 0, v112, v307, v113 + 16);
  if (v118)
  {

    swift_unknownObjectRelease();
    sub_1D9B9E760(v306, &v317);
    sub_1D9BA3E1C(v305, v304, v303, v97);
    swift_deallocUninitializedObject();
    goto LABEL_22;
  }

  v311 = v113;

  swift_unknownObjectRelease();
  sub_1D9B9E760(v306, &v317);
  sub_1D9BA3E1C(v305, v304, v303, v97);
  v119 = *&a10[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  os_unfair_lock_lock(v119 + 4);
  v120 = OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled;
  v121 = a10[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v119 + 4);
  if (v121)
  {
    v122 = v292;
    static Logger.argos.getter(v292);
    v123 = sub_1D9C7D8BC();
    v124 = sub_1D9C7E09C();
    if (os_log_type_enabled(v123, v124))
    {
      v125 = swift_slowAlloc();
      *v125 = 0;
      _os_log_impl(&dword_1D9962000, v123, v124, "performSearch(): canceled", v125, 2u);
      MEMORY[0x1DA7405F0](v125, -1, -1);
    }

    (*(v293 + 8))(v122, v294);
    sub_1D9A0EEC0();
    v126 = swift_allocError();
    *v127 = 0;
    v128 = v296;
    *v296 = v126;
    swift_storeEnumTagMultiPayload();
    sub_1D9B97D94(v128, v297, v312, v298, "search(): result.userFeedbackIntermediateResults = %s");
    sub_1D99A6AE0(v128, &unk_1ECB53570, &unk_1D9C9C2A0);

    goto LABEL_22;
  }

  v129 = v392[3];
  v130 = v392[4];
  __swift_project_boxed_opaque_existential_1(v392, v129);
  v131 = (*(v130 + 24))(v129, v130);
  v266 = 0;
  v132 = v131;
  v133 = sub_1D9BA5D18(v131, 0.6);
  v135 = v134;

  if (v135 >> 60 == 15)
  {
    sub_1D9AFCCA4();
    sub_1D9A0EEC0();
    v136 = swift_allocError();
    *v137 = 4;
    v138 = v296;
    *v296 = v136;
    swift_storeEnumTagMultiPayload();
    sub_1D9B97D94(v138, v297, v312, v298, "search(): result.userFeedbackIntermediateResults = %s");
    sub_1D99B3C44(v133, v135);
    sub_1D99A6AE0(v138, &unk_1ECB53570, &unk_1D9C9C2A0);

    goto LABEL_22;
  }

  v139 = v135 >> 62;
  v303 = v135;
  v304 = v133;
  v302 = a10;
  v305 = a9;
  if ((v135 >> 62) > 1)
  {
    if (v139 != 2)
    {
      v140 = 0;
      goto LABEL_39;
    }

    v142 = *(v133 + 16);
    v141 = *(v133 + 24);
    v143 = __OFSUB__(v141, v142);
    v140 = v141 - v142;
    if (!v143)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  else if (!v139)
  {
    v140 = BYTE6(v135);
LABEL_39:
    *&v343 = v140;
    v144 = sub_1D9C7E7AC();
    v146 = v145;
    *&v343 = 0;
    *(&v343 + 1) = 0xE000000000000000;
    sub_1D9C7E40C();

    *&v343 = 0xD000000000000021;
    *(&v343 + 1) = 0x80000001D9CABA30;
    MEMORY[0x1DA73DF90](v144, v146);

    sub_1D9C7B94C();

    v147 = v311;
    v148 = v311[10];
    v376 = v311[9];
    v377 = v148;
    v378 = v311[11];
    v379 = *(v311 + 24);
    v149 = v311[6];
    v372 = v311[5];
    v373 = v149;
    v150 = v311[8];
    v374 = v311[7];
    v375 = v150;
    v151 = v311[2];
    v368 = v311[1];
    v369 = v151;
    v152 = v311[4];
    v370 = v311[3];
    v371 = v152;
    v153 = swift_allocObject();
    v310 = v153;
    swift_weakInit();
    v154 = v287;
    sub_1D99AB100(v313, v287, &unk_1ECB51B10, &qword_1D9C86550);
    sub_1D99AB100(v154, v291, &unk_1ECB51B10, &qword_1D9C86550);
    v155 = (*(v288 + 80) + 48) & ~*(v288 + 80);
    v156 = v155 + v290;
    v157 = (v155 + v290) & 0xFFFFFFFFFFFFFFF8;
    v314 = *(v288 + 80);
    v158 = swift_allocObject();
    v158[2] = v305;
    v158[3] = v153;
    v159 = v307;
    v158[4] = v147;
    v158[5] = v159;
    v160 = v154;
    v161 = v158;
    sub_1D9A0E758(v160, v158 + v155);
    *(v161 + v156) = v306;
    v162 = v161 + v157;
    v163 = v267;
    *(v162 + 8) = sub_1D9BA90C0;
    *(v162 + 16) = v163;
    swift_retain_n();
    sub_1D99BB40C(&v368, &v343);

    os_unfair_lock_lock(v119 + 4);
    LODWORD(v163) = v302[v120];
    os_unfair_lock_unlock(v119 + 4);
    if (v163 == 1)
    {
      v164 = v271;
      static Logger.argos.getter(v271);
      v165 = sub_1D9C7D8BC();
      v166 = sub_1D9C7E09C();
      if (os_log_type_enabled(v165, v166))
      {
        v167 = swift_slowAlloc();
        *v167 = 0;
        _os_log_impl(&dword_1D9962000, v165, v166, "search(): canceled", v167, 2u);
        MEMORY[0x1DA7405F0](v167, -1, -1);
      }

      (*(v293 + 8))(v164, v294);
      sub_1D9A0EEC0();
      v168 = swift_allocError();
      *v169 = 0;
      v170 = v285;
      *v285 = v168;
      swift_storeEnumTagMultiPayload();
      sub_1D9AFCCA4();
      swift_beginAccess();
      Strong = swift_weakLoadStrong();
      v172 = v311;
      if (Strong)
      {
        v313 = Strong;
        v173 = v307;
        if (v307)
        {
          swift_beginAccess();
          v174 = v173[2];
        }

        else
        {
          v174 = MEMORY[0x1E69E7CC0];
        }

        swift_beginAccess();
        sub_1D9A19294(v174);
        swift_endAccess();
        v218 = v270;
        sub_1D99AB100(v170, v270, &qword_1ECB53DC0, &unk_1D9C9C160);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v301 = v161;
        if (EnumCaseMultiPayload == 1)
        {
          *v286 = *v218;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v220 = v269;
          sub_1D9BA45A0(v218, v269, type metadata accessor for ServerSearchResult);
          v221 = (v220 + *(v268 + 24));
          v222 = v221[1];
          *(v172 + 18) = *v221;
          *(v172 + 19) = v222;

          v223 = v172[10];
          v224 = v172[8];
          v337 = v172[9];
          v338 = v223;
          v225 = v172[10];
          v339 = v172[11];
          v226 = v172[6];
          v227 = v172[4];
          v333 = v172[5];
          v334 = v226;
          v228 = v172[6];
          v229 = v172[8];
          v335 = v172[7];
          v336 = v229;
          v230 = v172[2];
          v329 = v172[1];
          v330 = v230;
          v231 = v172[4];
          v233 = v172[1];
          v232 = v172[2];
          v331 = v172[3];
          v332 = v231;
          v234 = v172[11];
          v326 = v225;
          v327 = v234;
          v320 = v227;
          v321 = v333;
          v322 = v228;
          v323 = v335;
          v324 = v224;
          v325 = v337;
          v317 = v233;
          v318 = v232;
          v340 = *(v172 + 24);
          v328 = *(v172 + 24);
          v319 = v331;
          v235 = *(v313 + 64);
          sub_1D99BB40C(&v329, &v343);
          sub_1D9B3CCF0(v220, &v317, v235, v286);
          v351 = v325;
          v352 = v326;
          v353 = v327;
          v347 = v321;
          v348 = v322;
          v354 = v328;
          v349 = v323;
          v350 = v324;
          v343 = v317;
          v344 = v318;
          v345 = v319;
          v346 = v320;
          sub_1D9A0009C(&v343);
          sub_1D9BA4608(v220, type metadata accessor for ServerSearchResult);
        }

        if (v306)
        {
          v236 = v296;
          sub_1D99AB100(v286, v296, &unk_1ECB53570, &unk_1D9C9C2A0);
          v237 = v291;
          v238 = v309;
          sub_1D99AB100(v291, v309, &unk_1ECB51B10, &qword_1D9C86550);
          sub_1D9BDB568(v236, v238, v360);
          v363 = *(v360 + 8);
          v362 = *(&v360[1] + 1);
          v239 = objc_opt_self();
          *(&v344 + 1) = &type metadata for ResultEvent;
          *&v345 = &off_1F55352A8;
          v240 = swift_allocObject();
          *&v343 = v240;
          v241 = v360[1];
          *(v240 + 16) = v360[0];
          *(v240 + 32) = v241;
          *(v240 + 48) = v361;
          v242 = type metadata accessor for AnyVIAEvent();
          v243 = objc_allocWithZone(v242);
          sub_1D99A17C8(&v343, v243 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
          sub_1D9B1734C(&v363, &v329);
          sub_1D99AB100(&v362, &v329, &qword_1ECB53400, &qword_1D9C953C8);
          sub_1D9B1734C(&v363, &v329);
          sub_1D99AB100(&v362, &v329, &qword_1ECB53400, &qword_1D9C953C8);
          v342.receiver = v243;
          v342.super_class = v242;
          v244 = objc_msgSendSuper2(&v342, sel_init);
          [v239 logEvent_];

          sub_1D9B172F8(&v363);
          sub_1D99A6AE0(&v362, &qword_1ECB53400, &qword_1D9C953C8);
          v245 = v307;
          if (v307)
          {
            swift_beginAccess();
            v246 = v245[2];

            v247 = sub_1D99A7220(v237, 1, v246);
          }

          else
          {
            v247 = MEMORY[0x1E69E7CC0];
          }

          v309 = v247;
          v248 = *(v247 + 16);
          if (v248)
          {
            v249 = (v309 + 64);
            v314 = v239;
            do
            {
              v392 = v248;
              v250 = *(v249 - 4);
              v251 = *(v249 - 3);
              v253 = *(v249 - 2);
              v252 = *(v249 - 1);
              v254 = *v249;
              v249 += 40;
              *(&v344 + 1) = &type metadata for DurationEvent;
              *&v345 = &off_1F552D1E8;
              v255 = swift_allocObject();
              *&v343 = v255;
              *(v255 + 16) = v250;
              *(v255 + 24) = v251;
              *(v255 + 32) = v253;
              *(v255 + 40) = v252;
              *(v255 + 48) = v254;
              v256 = objc_allocWithZone(v242);
              sub_1D99A17C8(&v343, v256 + OBJC_IVAR____TtC12VisualLookUp11AnyVIAEvent_event);
              v341.receiver = v256;
              v341.super_class = v242;
              swift_bridgeObjectRetain_n();
              v257 = v252;
              v258 = v314;
              v259 = v257;
              v260 = objc_msgSendSuper2(&v341, &selRef_setFont_size_stop_reporting_threshold_);
              [v258 logEvent_];

              v248 = (v392 - 1);
            }

            while (v392 != 1);
          }

          sub_1D9B172F8(&v363);
          sub_1D99A6AE0(&v362, &qword_1ECB53400, &qword_1D9C953C8);
          v170 = v285;
        }

        v261 = v286;
        sub_1D9B97D94(v286, v297, v312, v298, "search(): result.userFeedbackIntermediateResults = %s");

        sub_1D99B3C44(v304, v303);
        sub_1D9A0009C(&v368);
        sub_1D99A6AE0(v261, &unk_1ECB53570, &unk_1D9C9C2A0);
        sub_1D99A6AE0(v170, &qword_1ECB53DC0, &unk_1D9C9C160);
      }

      else
      {
        sub_1D9A0009C(&v368);
        sub_1D99B3C44(v304, v303);

        sub_1D99A6AE0(v170, &qword_1ECB53DC0, &unk_1D9C9C160);
      }

      v217 = v291;
    }

    else
    {
      v175 = v314;
      v305 = ~v314;

      v176 = swift_allocObject();
      *(v176 + 16) = sub_1D9BA8114;
      *(v176 + 24) = v161;
      v177 = v176;
      v306 = v176;
      v300 = *(v265 + 16);
      v178 = v309;
      sub_1D99AB100(v313, v309, &unk_1ECB51B10, &qword_1D9C86550);
      v179 = (v175 + 16) & ~v175;
      v180 = v290 + 7;
      v301 = v161;
      v181 = (v290 + 7 + v179) & 0xFFFFFFFFFFFFFFF8;
      v182 = swift_allocObject();
      sub_1D9A0E758(v178, v182 + v179);
      v183 = v182 + v181;
      v312 = v182;
      v184 = v377;
      *(v183 + 128) = v376;
      *(v183 + 144) = v184;
      *(v183 + 160) = v378;
      *(v183 + 176) = v379;
      v185 = v373;
      *(v183 + 64) = v372;
      *(v183 + 80) = v185;
      v186 = v375;
      *(v183 + 96) = v374;
      *(v183 + 112) = v186;
      v187 = v369;
      *v183 = v368;
      *(v183 + 16) = v187;
      v188 = v371;
      *(v183 + 32) = v370;
      *(v183 + 48) = v188;
      v189 = (v182 + ((v181 + 191) & 0xFFFFFFFFFFFFFFF8));
      *v189 = sub_1D9BA81C8;
      v189[1] = v177;
      v309 = v300[2];
      v190 = swift_allocObject();
      v392 = v190;
      swift_weakInit();
      sub_1D9BA4538(v308, v289, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      sub_1D99AB100(v313, v299, &unk_1ECB51B10, &qword_1D9C86550);
      v191 = (*(v272 + 80) + 240) & ~*(v272 + 80);
      v192 = (v273 + v175 + v191) & v305;
      v193 = (v180 + v192) & 0xFFFFFFFFFFFFFFF8;
      v194 = (v193 + 23) & 0xFFFFFFFFFFFFFFF8;
      v195 = (v194 + 23) & 0xFFFFFFFFFFFFFFF8;
      v196 = swift_allocObject();
      v197 = v307;
      *(v196 + 16) = v190;
      *(v196 + 24) = v197;
      *(v196 + 32) = v302;
      v198 = v377;
      *(v196 + 184) = v376;
      *(v196 + 200) = v198;
      *(v196 + 216) = v378;
      v199 = v373;
      *(v196 + 120) = v372;
      *(v196 + 136) = v199;
      v200 = v375;
      *(v196 + 152) = v374;
      *(v196 + 168) = v200;
      v201 = v369;
      *(v196 + 56) = v368;
      *(v196 + 72) = v201;
      v202 = v371;
      *(v196 + 88) = v370;
      v203 = v312;
      *(v196 + 40) = sub_1D9BA81D0;
      *(v196 + 48) = v203;
      *(v196 + 232) = v379;
      *(v196 + 104) = v202;
      sub_1D9BA45A0(v289, v196 + v191, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
      sub_1D9A0E758(v299, v196 + v192);
      v204 = (v196 + v193);
      v205 = v303;
      v206 = v304;
      *v204 = v304;
      v204[1] = v205;
      v207 = (v196 + v194);
      v208 = v276;
      v210 = v281;
      v209 = v282;
      *v207 = v275;
      v207[1] = v210;
      v211 = (v196 + v195);
      *v211 = v208;
      v211[1] = v209;
      *&v331 = sub_1D9BA81E8;
      *(&v331 + 1) = v196;
      *&v329 = MEMORY[0x1E69E9820];
      *(&v329 + 1) = 1107296256;
      *&v330 = sub_1D9A0A1E0;
      *(&v330 + 1) = &block_descriptor_18;
      v314 = _Block_copy(&v329);
      sub_1D99BB40C(&v368, &v343);
      sub_1D99BB40C(&v368, &v343);

      v212 = v302;

      sub_1D99DF410(v206, v205);

      v213 = v277;
      sub_1D9C7DA3C();
      *&v343 = MEMORY[0x1E69E7CC0];
      sub_1D9BA8340(&qword_1EDD2C680, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
      sub_1D9A0E83C();
      v214 = v279;
      v215 = v284;
      sub_1D9C7E34C();
      v216 = v314;
      MEMORY[0x1DA73E300](0, v213, v214, v314);
      _Block_release(v216);

      v217 = v291;

      sub_1D99B3C44(v304, v205);
      sub_1D9A0009C(&v368);
      (*(v283 + 8))(v214, v215);
      (*(v278 + 8))(v213, v280);
    }

    sub_1D99A6AE0(v217, &unk_1ECB51B10, &qword_1D9C86550);

    goto LABEL_22;
  }

  LODWORD(v140) = HIDWORD(v133) - v133;
  if (!__OFSUB__(HIDWORD(v133), v133))
  {
    v140 = v140;
    goto LABEL_39;
  }

LABEL_64:
  __break(1u);
}

uint64_t sub_1D9BA8114(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  return sub_1D9B9C3AC(a1, v1[2], v1[3], v1[4], v1[5], v1 + v4, *(v1 + v4 + *(v3 + 64)), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v4 + *(v3 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

double sub_1D9BA81E8()
{
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v2 = (*(v1 + 80) + 240) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9AC9904(v0[2], v0[3], v0[4], v0[5], v0[6], (v0 + 7), v0 + v2, v0 + v5, *(v0 + v6), *(v0 + v6 + 8), *(v0 + v7), *(v0 + v7 + 8), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v7 + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D9BA8340(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9BA8388(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v4 = (*(v3 + 80) + 64) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B98660(a1, *(v1 + 16), v1 + 24, v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v1 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t sub_1D9BA84D4(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D9B9BC3C(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *v5, *(v5 + 8));
}

void *sub_1D9BA85BC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9B98D84(a1, *(v1 + 16), v1 + v4, v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), v1 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
}

uint64_t objectdestroy_33Tm_0()
{

  if (*(v0 + 40) != 1)
  {
  }

  if (*(v0 + 184))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 216, 7);
}

uint64_t objectdestroy_87Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  Context = type metadata accessor for VisualQueryContext(0);
  if (!(*(*(Context - 1) + 48))(v5, 1, Context))
  {

    v7 = Context[10];
    v8 = sub_1D9C7B80C();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    swift_unknownObjectRelease();
    v11 = Context[14];
    if (!v10(v5 + v11, 1, v8))
    {
      (*(v9 + 8))(v5 + v11, v8);
    }
  }

  if (*(v0 + v4 + 8) != 1)
  {
  }

  if (*(v0 + v4 + 152))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v4 + 191) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D9BA8A84(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, unint64_t, unint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v3 + ((v8 + 191) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return a3(a1, a2, v3 + v7, v3 + v8, v10, v11);
}

uint64_t objectdestroy_122Tm()
{
  v1 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v26 = *(*(v1 - 1) + 80);
  v2 = (v26 + 240) & ~v26;
  v3 = *(*(v1 - 1) + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v5 = *(v4 + 80);
  v25 = *(v4 + 64);

  if (*(v0 + 64) != 1)
  {
  }

  v6 = v2 + v3;

  if (*(v0 + 208))
  {
  }

  v7 = v6 + v5;

  v8 = v0 + v2;

  v9 = v1[7];
  v10 = sub_1D9C7D3CC();
  v11 = *(*(v10 - 8) + 8);
  v11(v8 + v9, v10);
  v12 = v8 + v1[8];
  v13 = type metadata accessor for Argos_Protos_Queryflow_ServerSearchConfig(0);
  if (!(*(*(v13 - 8) + 48))(v12, 1, v13))
  {

    v11(v12 + *(v13 + 28), v10);
  }

  v14 = v7 & ~v5;
  v15 = v8 + v1[9];
  v16 = type metadata accessor for Argos_Protos_Queryflow_UserFeedbackConfig(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v11(v15 + *(v16 + 20), v10);
  }

  v17 = v0 + v14;
  Context = type metadata accessor for VisualQueryContext(0);
  if (!(*(*(Context - 1) + 48))(v0 + v14, 1, Context))
  {

    v19 = Context[10];
    v20 = sub_1D9C7B80C();
    v21 = *(v20 - 8);
    v22 = *(v21 + 48);
    if (!v22(v17 + v19, 1, v20))
    {
      (*(v21 + 8))(v17 + v19, v20);
    }

    swift_unknownObjectRelease();
    v23 = Context[14];
    if (!v22(v17 + v23, 1, v20))
    {
      (*(v21 + 8))(v17 + v23, v20);
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, v14 + v25, v26 | v5 | 7);
}

uint64_t sub_1D9BA8FBC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, void *, char *, char *))
{
  v2 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v3 = (*(v2 + 80) + 240) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = *(v1 + 4);
  v9 = *(v1 + 5);
  v10 = *(v1 + 6);
  v11 = &v1[(v4 + *(v5 + 80)) & ~*(v5 + 80)];

  return a1(v6, v7, v8, v9, v10, v1 + 7, &v1[v3], v11);
}

uint64_t sub_1D9BA918C(uint64_t a1)
{
  result = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(319);
            if (v7 <= 0x3F)
            {
              result = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(319);
              if (v8 <= 0x3F)
              {
                result = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(319);
                if (v9 <= 0x3F)
                {
                  result = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(319);
                  if (v10 <= 0x3F)
                  {
                    result = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(319);
                    if (v11 <= 0x3F)
                    {
                      result = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule(319);
                      if (v12 <= 0x3F)
                      {
                        result = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule(319);
                        if (v13 <= 0x3F)
                        {
                          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
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

  return result;
}

void sub_1D9BA94CC(uint64_t a1)
{
  sub_1D9BA9610(319, &qword_1EDD2C528, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D9BA9610(319, &qword_1EDD2C4E0, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D9BA9610(319, &qword_1EDD2C4D8, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1D9C7D3CC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D9BA9610(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D9BA96FC(uint64_t a1)
{
  result = sub_1D9C7D3CC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9BA9830(uint64_t a1)
{
  sub_1D99EDA70(319, &unk_1EDD2C488, MEMORY[0x1E69E72F0]);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      sub_1D9BA9610(319, qword_1EDD2DB60, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D9BA9610(319, qword_1EDD2DAC8, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D9BA99CC(uint64_t a1)
{
  sub_1D9BA9610(319, &qword_1EDD2C5A0, type metadata accessor for Argos_Protos_Queryflow_Polygon, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9BA9AC8(uint64_t a1)
{
  sub_1D99EDA70(319, &qword_1EDD2C4A0, MEMORY[0x1E69E6448]);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9BA9B9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  result = sub_1D9C7D3CC();
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9BA9C3C(uint64_t a1)
{
  sub_1D9BA9610(319, &qword_1EDD2C4D8, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      sub_1D9BA9610(319, qword_1EDD2CFA8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9BA9D78(uint64_t a1)
{
  sub_1D9BA9610(319, &qword_1EDD2C4D8, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      sub_1D9BA9610(319, qword_1EDD2CFA8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9BA9EA4(uint64_t a1)
{
  sub_1D9BA9610(319, &qword_1EDD2C4E0, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1D9BAA024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1D9C7D3CC();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D9BAA0C8(uint64_t a1)
{
  sub_1D99EDA70(319, &qword_1EDD2C4C0, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1D9BA9610(319, &qword_1EDD2C4D8, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D9BA9610(319, &qword_1EDD2C4E0, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1D9C7D3CC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_118Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D9C7D3CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 24);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8, &unk_1D9C98580);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

void *__swift_store_extra_inhabitant_index_119Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = sub_1D9C7D3CC();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8, &unk_1D9C98580);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

void sub_1D9BAA484(uint64_t a1)
{
  sub_1D9BA9610(319, &qword_1EDD2C4D8, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      sub_1D9BA9610(319, qword_1EDD2CFA8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9BAA5B0(uint64_t a1)
{
  sub_1D9BA9610(319, &qword_1EDD2C4E0, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_127Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D9C7D3CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_128Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9C7D3CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D9BAA7EC(uint64_t a1)
{
  sub_1D9BA9610(319, &qword_1EDD2C4D8, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D9BA9610(319, &qword_1EDD2C4E0, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1D9C7D3CC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D9BAA900(uint64_t a1@<X8>)
{
  sub_1D9BBEFCC();
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 9) = v4 & 1;
}

void sub_1D9BAA944(uint64_t a2@<X8>)
{
  sub_1D9BBEFCC();
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 9) = v5 & 1;
}

uint64_t sub_1D9BAA97C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9A92004();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

unint64_t sub_1D9BAA9CC()
{
  result = qword_1EDD2ED80;
  if (!qword_1EDD2ED80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2ED80);
  }

  return result;
}

unint64_t sub_1D9BAAA24()
{
  result = qword_1ECB53DE8;
  if (!qword_1ECB53DE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECB53DF0, qword_1D9C9A228);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECB53DE8);
  }

  return result;
}

unint64_t sub_1D9BAAA8C()
{
  result = qword_1EDD2ED88;
  if (!qword_1EDD2ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2ED88);
  }

  return result;
}

unint64_t sub_1D9BAAAE4()
{
  result = qword_1EDD2ED78;
  if (!qword_1EDD2ED78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2ED78);
  }

  return result;
}

uint64_t sub_1D9BAAB38()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41AF0);
  __swift_project_value_buffer(v0, qword_1EDD41AF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_1D9C99CB0;
  v4 = v32 + v3;
  v5 = v32 + v3 + v1[14];
  *(v32 + v3) = 1;
  *v5 = "coarse_classification_domain_assignment_rule";
  *(v5 + 8) = 44;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADE8];
  v7 = sub_1D9C7D81C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v32 + v3 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "object_detection_domain_assignment_rule";
  *(v9 + 8) = 39;
  *(v9 + 16) = 2;
  v8();
  v10 = (v32 + v3 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "fusion_domain_assignment_rule";
  *(v11 + 1) = 29;
  v11[16] = 2;
  v8();
  v12 = (v32 + v3 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 5;
  *v13 = "url_match_domain_assignment_rule";
  *(v13 + 1) = 32;
  v13[16] = 2;
  v8();
  v14 = (v32 + v3 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 6;
  *v15 = "box_score_domain_assignment_rule";
  *(v15 + 1) = 32;
  v15[16] = 2;
  v8();
  v16 = (v32 + v3 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 8;
  *v17 = "overlap_region_domain_assignment_rule";
  *(v17 + 1) = 37;
  v17[16] = 2;
  v8();
  v18 = (v32 + v3 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 9;
  *v19 = "pets_head_torso_domain_assignment_rule";
  *(v19 + 1) = 38;
  v19[16] = 2;
  v8();
  v20 = (v32 + v3 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 10;
  *v21 = "nested_nature_region_domain_assignment_rule";
  *(v21 + 1) = 43;
  v21[16] = 2;
  v8();
  v22 = v32 + v3 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 11;
  *v22 = "geofence_domain_assignment_rule";
  *(v22 + 8) = 31;
  *(v22 + 16) = 2;
  v8();
  v23 = (v32 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "domain_prediction_domain_assignment_rule";
  *(v24 + 1) = 40;
  v24[16] = 2;
  v8();
  v25 = (v32 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 13;
  *v26 = "storefront_domain_assignment_rule";
  *(v26 + 1) = 33;
  v26[16] = 2;
  v8();
  v27 = (v32 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 14;
  *v28 = "custom_detection_domain_assignment_rule";
  *(v28 + 1) = 39;
  v28[16] = 2;
  v8();
  v29 = (v32 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 100;
  *v30 = "image_source_type";
  *(v30 + 1) = 17;
  v30[16] = 2;
  v8();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BAAFB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1D9BAB198(v5, a1, a2, a3);
        break;
      case 2:
        sub_1D9BAB748(v5, a1, a2, a3);
        break;
      case 3:
        sub_1D9BABD04(v5, a1, a2, a3);
        break;
      case 5:
        sub_1D9BAC2C0(v5, a1, a2, a3);
        break;
      case 6:
        sub_1D9BAC87C(v5, a1, a2, a3);
        break;
      case 8:
        sub_1D9BACE38(v5, a1, a2, a3);
        break;
      case 9:
        sub_1D9BAD3F4(v5, a1, a2, a3);
        break;
      case 10:
        sub_1D9BAD9B0(v5, a1, a2, a3);
        break;
      case 11:
        sub_1D9BADF6C(v5, a1, a2, a3);
        break;
      case 12:
        sub_1D9BAE528(v5, a1, a2, a3);
        break;
      case 13:
        sub_1D9BAEAE4(v5, a1, a2, a3);
        break;
      case 14:
        sub_1D9BAF0A0(v5, a1, a2, a3);
        break;
      case 100:
        sub_1D9BAF65C(a1, v5, a2, a3);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1D9BAB198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v41 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v40 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FA8, &qword_1D9C9C080);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100, &unk_1D9C99CC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100, &unk_1D9C99CC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }

    else
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FA8, &qword_1D9C9C080);
      v32 = v40;
      sub_1D9BBEE98(v16, v40, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }
  }

  v33 = v43;
  sub_1D9BBA588(&unk_1EDD2CA50, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule, &unk_1D9C9BB88);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FA8, &qword_1D9C9C080);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FA8, &qword_1D9C9C080);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FA8, &qword_1D9C9C080);
    return sub_1D99A6AE0(v33, &qword_1ECB53FA8, &qword_1D9C9C080);
  }

  else
  {
    v36 = v41;
    sub_1D9BBEE98(v33, v41, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FA8, &qword_1D9C9C080);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100, &unk_1D9C99CC0);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAB748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FB0, &qword_1D9C9C088);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100, &unk_1D9C99CC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100, &unk_1D9C99CC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FB0, &qword_1D9C9C088);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&unk_1EDD2CBC8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule, &unk_1D9C9BA20);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FB0, &qword_1D9C9C088);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FB0, &qword_1D9C9C088);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FB0, &qword_1D9C9C088);
    return sub_1D99A6AE0(v33, &qword_1ECB53FB0, &qword_1D9C9C088);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FB0, &qword_1D9C9C088);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100, &unk_1D9C99CC0);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BABD04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FB8, &qword_1D9C9C090);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100, &unk_1D9C99CC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100, &unk_1D9C99CC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FB8, &qword_1D9C9C090);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1EDD2E290, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule, &unk_1D9C9B750);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FB8, &qword_1D9C9C090);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FB8, &qword_1D9C9C090);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FB8, &qword_1D9C9C090);
    return sub_1D99A6AE0(v33, &qword_1ECB53FB8, &qword_1D9C9C090);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FB8, &qword_1D9C9C090);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100, &unk_1D9C99CC0);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAC2C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  matched = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(0);
  v6 = *(matched - 8);
  MEMORY[0x1EEE9AC00](matched);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FC0, &qword_1D9C9C098);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = matched;
  v27 = matched;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100, &unk_1D9C99CC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100, &unk_1D9C99CC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FC0, &qword_1D9C9C098);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1ECB53EF0, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule, &unk_1D9C9B5E8);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FC0, &qword_1D9C9C098);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FC0, &qword_1D9C9C098);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FC0, &qword_1D9C9C098);
    return sub_1D99A6AE0(v33, &qword_1ECB53FC0, &qword_1D9C9C098);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FC0, &qword_1D9C9C098);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100, &unk_1D9C99CC0);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAC87C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FC8, &qword_1D9C9C0A0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100, &unk_1D9C99CC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100, &unk_1D9C99CC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FC8, &qword_1D9C9C0A0);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&unk_1EDD2DDC8, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule, &unk_1D9C9B480);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FC8, &qword_1D9C9C0A0);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FC8, &qword_1D9C9C0A0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FC8, &qword_1D9C9C0A0);
    return sub_1D99A6AE0(v33, &qword_1ECB53FC8, &qword_1D9C9C0A0);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FC8, &qword_1D9C9C0A0);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100, &unk_1D9C99CC0);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BACE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FD0, &qword_1D9C9C0A8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100, &unk_1D9C99CC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100, &unk_1D9C99CC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FD0, &qword_1D9C9C0A8);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1EDD2CE98, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule, &unk_1D9C9B1B0);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FD0, &qword_1D9C9C0A8);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FD0, &qword_1D9C9C0A8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FD0, &qword_1D9C9C0A8);
    return sub_1D99A6AE0(v33, &qword_1ECB53FD0, &qword_1D9C9C0A8);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FD0, &qword_1D9C9C0A8);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100, &unk_1D9C99CC0);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAD3F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FD8, &qword_1D9C9C0B0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100, &unk_1D9C99CC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100, &unk_1D9C99CC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FD8, &qword_1D9C9C0B0);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1EDD2CDE0, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule, &unk_1D9C9B048);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FD8, &qword_1D9C9C0B0);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FD8, &qword_1D9C9C0B0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FD8, &qword_1D9C9C0B0);
    return sub_1D99A6AE0(v33, &qword_1ECB53FD8, &qword_1D9C9C0B0);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FD8, &qword_1D9C9C0B0);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100, &unk_1D9C99CC0);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAD9B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FE0, &qword_1D9C9C0B8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100, &unk_1D9C99CC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100, &unk_1D9C99CC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FE0, &qword_1D9C9C0B8);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&unk_1EDD2CB10, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule, &unk_1D9C9AEE0);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FE0, &qword_1D9C9C0B8);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FE0, &qword_1D9C9C0B8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FE0, &qword_1D9C9C0B8);
    return sub_1D99A6AE0(v33, &qword_1ECB53FE0, &qword_1D9C9C0B8);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FE0, &qword_1D9C9C0B8);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100, &unk_1D9C99CC0);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BADF6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FE8, &qword_1D9C9C0C0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100, &unk_1D9C99CC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100, &unk_1D9C99CC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FE8, &qword_1D9C9C0C0);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1EDD2DA60, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule, &unk_1D9C9AAA8);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FE8, &qword_1D9C9C0C0);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FE8, &qword_1D9C9C0C0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FE8, &qword_1D9C9C0C0);
    return sub_1D99A6AE0(v33, &qword_1ECB53FE8, &qword_1D9C9C0C0);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FE8, &qword_1D9C9C0C0);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100, &unk_1D9C99CC0);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAE528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FF0, &qword_1D9C9C0C8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100, &unk_1D9C99CC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100, &unk_1D9C99CC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FF0, &qword_1D9C9C0C8);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&unk_1EDD35368, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule, &unk_1D9C9A508);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FF0, &qword_1D9C9C0C8);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FF0, &qword_1D9C9C0C8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FF0, &qword_1D9C9C0C8);
    return sub_1D99A6AE0(v33, &qword_1ECB53FF0, &qword_1D9C9C0C8);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FF0, &qword_1D9C9C0C8);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100, &unk_1D9C99CC0);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAEAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53FF8, &qword_1D9C9C0D0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100, &unk_1D9C99CC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100, &unk_1D9C99CC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1D99A6AE0(v25, &qword_1ECB53FF8, &qword_1D9C9C0D0);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1EDD2CF40, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule, &unk_1D9C9AD78);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB53FF8, &qword_1D9C9C0D0);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB53FF8, &qword_1D9C9C0D0);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB53FF8, &qword_1D9C9C0D0);
    return sub_1D99A6AE0(v33, &qword_1ECB53FF8, &qword_1D9C9C0D0);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB53FF8, &qword_1D9C9C0D0);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100, &unk_1D9C99CC0);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAF0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a4;
  v46 = a2;
  v47 = a3;
  v5 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v41 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v38 - v11;
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v38 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54000, &qword_1D9C9C0D8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v43 = &v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v38 - v24;
  v42 = v6;
  v26 = *(v6 + 56);
  v45 = v5;
  v27 = v5;
  v28 = v26;
  (v26)(&v38 - v24, 1, 1, v27, v23);
  v39 = a1;
  sub_1D99AB100(a1, v12, &qword_1ECB51100, &unk_1D9C99CC0);
  v38 = v14;
  v29 = (*(v14 + 48))(v12, 1, v13);
  if (v29 == 1)
  {
    sub_1D99A6AE0(v12, &qword_1ECB51100, &unk_1D9C99CC0);
    v30 = v45;
    v31 = v13;
  }

  else
  {
    sub_1D9BBEE98(v12, v19, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    sub_1D9BBEE98(v19, v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    v31 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1D99A6AE0(v25, &qword_1ECB54000, &qword_1D9C9C0D8);
      v32 = v41;
      sub_1D9BBEE98(v16, v41, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
      sub_1D9BBEE98(v32, v25, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
      v30 = v45;
      v28(v25, 0, 1, v45);
    }

    else
    {
      sub_1D9BBEE38(v16, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v30 = v45;
    }
  }

  v33 = v43;
  sub_1D9BBA588(&qword_1EDD2CC78, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule, &unk_1D9C9A3A0);
  v34 = v44;
  sub_1D9C7D60C();
  if (v34)
  {
    return sub_1D99A6AE0(v25, &qword_1ECB54000, &qword_1D9C9C0D8);
  }

  sub_1D99AB100(v25, v33, &qword_1ECB54000, &qword_1D9C9C0D8);
  if ((*(v42 + 48))(v33, 1, v30) == 1)
  {
    sub_1D99A6AE0(v25, &qword_1ECB54000, &qword_1D9C9C0D8);
    return sub_1D99A6AE0(v33, &qword_1ECB54000, &qword_1D9C9C0D8);
  }

  else
  {
    v36 = v40;
    sub_1D9BBEE98(v33, v40, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
    if (v29 != 1)
    {
      sub_1D9C7D4DC();
    }

    sub_1D99A6AE0(v25, &qword_1ECB54000, &qword_1D9C9C0D8);
    v37 = v39;
    sub_1D99A6AE0(v39, &qword_1ECB51100, &unk_1D9C99CC0);
    sub_1D9BBEE98(v36, v37, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
    swift_storeEnumTagMultiPayload();
    return (*(v38 + 56))(v37, 0, 1, v31);
  }
}

uint64_t sub_1D9BAF65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0);
  sub_1D9A92004();
  return sub_1D9C7D4FC();
}

uint64_t sub_1D9BAF6D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  sub_1D99AB100(v6, &v19 - v11, &qword_1ECB51100, &unk_1D9C99CC0);
  v13 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v13 - 8) + 48))(v12, 1, v13) == 1)
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        sub_1D9BB0124(v6, a1, a2, a3);
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_1D9BB035C(v6, a1, a2, a3);
      }

      else
      {
        sub_1D9BB0594(v6, a1, a2, a3);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1D9BAFCB4(v6, a1, a2, a3);
      }

      else
      {
        sub_1D9BAFEEC(v6, a1, a2, a3);
      }
    }

    else
    {
      sub_1D9BAFA80(v6, a1, a2, a3);
    }

    goto LABEL_32;
  }

  if (EnumCaseMultiPayload > 8)
  {
    if (EnumCaseMultiPayload == 9)
    {
      sub_1D9BB0E74(v6, a1, a2, a3);
      if (v4)
      {
        return sub_1D9BBEE38(v12, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 10)
      {
        sub_1D9BB10AC(v6, a1, a2, a3);
        if (!v4)
        {
          goto LABEL_36;
        }

        return sub_1D9BBEE38(v12, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      }

      sub_1D9BB12E4(v6, a1, a2, a3);
      if (v4)
      {
        return sub_1D9BBEE38(v12, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      }
    }

LABEL_36:
    v5 = v4;
    sub_1D9BBEE38(v12, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload != 6)
  {
    if (EnumCaseMultiPayload == 7)
    {
      sub_1D9BB0A04(v6, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_36;
      }
    }

    else
    {
      sub_1D9BB0C3C(v6, a1, a2, a3);
      if (!v4)
      {
        goto LABEL_36;
      }
    }

    return sub_1D9BBEE38(v12, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  }

  sub_1D9BB07CC(v6, a1, a2, a3);
LABEL_32:
  result = sub_1D9BBEE38(v12, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  if (v4)
  {
    return result;
  }

  v5 = 0;
LABEL_2:
  v14 = v6 + *(type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0) + 20);
  v15 = *v14;
  if (!*v14)
  {
    return sub_1D9C7D3AC();
  }

  v16 = *(v14 + 8);
  v19 = v15;
  v20 = v16;
  sub_1D9A92004();
  result = sub_1D9C7D75C();
  if (!v5)
  {
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BAFA80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100, &unk_1D9C99CC0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100, &unk_1D9C99CC0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
    sub_1D9BBA588(&unk_1EDD2CA50, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule, &unk_1D9C9BB88);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BAFCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100, &unk_1D9C99CC0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100, &unk_1D9C99CC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
    sub_1D9BBA588(&unk_1EDD2CBC8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule, &unk_1D9C9BA20);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BAFEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100, &unk_1D9C99CC0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100, &unk_1D9C99CC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
    sub_1D9BBA588(&qword_1EDD2E290, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule, &unk_1D9C9B750);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB0124(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  matched = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](matched);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100, &unk_1D9C99CC0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100, &unk_1D9C99CC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
    sub_1D9BBA588(&qword_1ECB53EF0, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule, &unk_1D9C9B5E8);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB035C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100, &unk_1D9C99CC0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100, &unk_1D9C99CC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
    sub_1D9BBA588(&unk_1EDD2DDC8, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule, &unk_1D9C9B480);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB0594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100, &unk_1D9C99CC0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100, &unk_1D9C99CC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
    sub_1D9BBA588(&qword_1EDD2CE98, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule, &unk_1D9C9B1B0);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB07CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100, &unk_1D9C99CC0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100, &unk_1D9C99CC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
    sub_1D9BBA588(&qword_1EDD2CDE0, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule, &unk_1D9C9B048);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB0A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100, &unk_1D9C99CC0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100, &unk_1D9C99CC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
    sub_1D9BBA588(&unk_1EDD2CB10, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule, &unk_1D9C9AEE0);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB0C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100, &unk_1D9C99CC0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100, &unk_1D9C99CC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
    sub_1D9BBA588(&qword_1EDD2DA60, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule, &unk_1D9C9AAA8);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB0E74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100, &unk_1D9C99CC0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100, &unk_1D9C99CC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
    sub_1D9BBA588(&unk_1EDD35368, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule, &unk_1D9C9A508);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB10AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100, &unk_1D9C99CC0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100, &unk_1D9C99CC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
    sub_1D9BBA588(&qword_1EDD2CF40, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule, &unk_1D9C9AD78);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB12E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D99AB100(a1, v7, &qword_1ECB51100, &unk_1D9C99CC0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1D99A6AE0(v7, &qword_1ECB51100, &unk_1D9C99CC0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_1D9BBEE98(v7, v10, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
    sub_1D9BBA588(&qword_1EDD2CC78, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule, &unk_1D9C9A3A0);
    sub_1D9C7D80C();
    return sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
  }

  result = sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  __break(1u);
  return result;
}

uint64_t sub_1D9BB151C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = a2 + *(a1 + 20);
  *v5 = 0;
  *(v5 + 8) = 1;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB15F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB53FA0, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule, &unk_1D9C9BFB0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB1690(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2ED68, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule, &unk_1D9C9BFE8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB16FC(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1EDD2ED68, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule, &unk_1D9C9BFE8);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB177C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41B08);
  __swift_project_value_buffer(v0, qword_1EDD41B08);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C8CDC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "DEFAULT";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "STATIC_IMAGE";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "PAUSED_VIDEO_FRAME";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "CAMERA_FRAME";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "CAMERA_SCREENSHOT";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 5;
  *v18 = "CAMERA_STILL";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB1A68()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41850);
  __swift_project_value_buffer(v0, qword_1EDD41850);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "threshold";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "is_less_than";
  *(v11 + 8) = 12;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB1C84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1D9C7D4EC();
        break;
      case 2:
        sub_1D9C7D54C();
        break;
      case 1:
        sub_1D9C7D5CC();
        break;
    }
  }

  return result;
}

uint64_t sub_1D9BB1D30(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *(v4 + 8);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_1D9C7D7CC(), !v5))
  {
    if (!*(v4 + 16) || (result = sub_1D9C7D77C(), !v5))
    {
      if (*(v4 + 20) != 1 || (result = sub_1D9C7D74C(), !v5))
      {
        type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB1E10@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB1E8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54008, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE20);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB1F2C(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB1F98(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB2018()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD418B0);
  __swift_project_value_buffer(v0, qword_1EDD418B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "ontology_kg_id";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "threshold";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "exclude_descendants";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_less_than";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB2268(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
        sub_1D9C7D4EC();
      }
    }

    else if (result == 1)
    {
      sub_1D9C7D5CC();
    }

    else if (result == 2)
    {
      sub_1D9C7D54C();
    }
  }

  return result;
}

uint64_t sub_1D9BB232C(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *(v4 + 8);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_1D9C7D7CC(), !v5))
  {
    if (!*(v4 + 16) || (result = sub_1D9C7D77C(), !v5))
    {
      if (*(v4 + 20) != 1 || (result = sub_1D9C7D74C(), !v5))
      {
        if (*(v4 + 21) != 1 || (result = sub_1D9C7D74C(), !v5))
        {
          type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB2438@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 20) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB24B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54010, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCB8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB2554(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB25C0(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB2640()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD417F0);
  __swift_project_value_buffer(v0, qword_1EDD417F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 2;
  *v6 = "thresholds";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "allowlist_detector_thresholds";
  *(v10 + 8) = 29;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "denylist_detector_thresholds";
  *(v12 + 1) = 28;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "reject_domain";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB2894(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9C7D4CC();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4 || result == 5)
        {
          v6 = v3;
          type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
          sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
LABEL_5:
          v3 = v6;
          sub_1D9C7D5FC();
        }
      }

      else
      {
        if (result == 2)
        {
          v6 = v3;
          type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
          sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58);
          goto LABEL_5;
        }

        if (result == 3)
        {
          sub_1D9C7D4EC();
        }
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB2A48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58), result = sub_1D9C7D7FC(), !v4))
  {
    if (*(v3 + 24) != 1 || (result = sub_1D9C7D74C(), !v4))
    {
      if (!*(*(v3 + 8) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0), result = sub_1D9C7D7FC(), !v4))
      {
        if (!*(*(v3 + 16) + 16) || (type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0), result = sub_1D9C7D7FC(), !v4))
        {
          type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB2C50@<X0>(uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = v2;
  *(a2 + 16) = v2;
  *(a2 + 24) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB2CD0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54018, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule, &unk_1D9C9BB50);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB2D70(uint64_t a1)
{
  v2 = sub_1D9BBA588(&unk_1EDD2CA50, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule, &unk_1D9C9BB88);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB2DDC(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&unk_1EDD2CA50, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule, &unk_1D9C9BB88);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB2E5C()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41820);
  __swift_project_value_buffer(v0, qword_1EDD41820);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "thresholds";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "reject_domain";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "check_all_regions";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB3078(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9C7D4CC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 4 || result == 3)
      {
        sub_1D9C7D4EC();
      }

      else if (result == 2)
      {
        type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
        sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
        sub_1D9C7D5FC();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB3184(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0), result = sub_1D9C7D7FC(), !v4))
  {
    if (v3[8] != 1 || (result = sub_1D9C7D74C(), !v4))
    {
      if (v3[9] != 1 || (result = sub_1D9C7D74C(), !v4))
      {
        type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB32B8@<X0>(uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB3334(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54020, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule, &unk_1D9C9B9E8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB33D4(uint64_t a1)
{
  v2 = sub_1D9BBA588(&unk_1EDD2CBC8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule, &unk_1D9C9BA20);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB3440(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&unk_1EDD2CBC8, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule, &unk_1D9C9BA20);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB34C0()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71510);
  __swift_project_value_buffer(v0, qword_1ECB71510);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "thresholds";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "enable_location_check";
  *(v10 + 1) = 21;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB3690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58), result = sub_1D9C7D7FC(), !v4))
  {
    if (v3[8] != 1 || (result = sub_1D9C7D74C(), !v4))
    {
      type metadata accessor for Argos_Protos_Queryflow_NaturalLandmarkDomainAssignmentRule(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB382C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54028, type metadata accessor for Argos_Protos_Queryflow_NaturalLandmarkDomainAssignmentRule, &unk_1D9C9B880);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB38CC(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1ECB53F20, type metadata accessor for Argos_Protos_Queryflow_NaturalLandmarkDomainAssignmentRule, &unk_1D9C9B8B8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB3938(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1ECB53F20, type metadata accessor for Argos_Protos_Queryflow_NaturalLandmarkDomainAssignmentRule, &unk_1D9C9B8B8);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB39CC()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41988);
  __swift_project_value_buffer(v0, qword_1EDD41988);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 3;
  *v6 = "coarse_thresholds";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "detector_threshold";
  *(v10 + 1) = 18;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 4;
  *v11 = "reject_domain";
  *(v11 + 8) = 13;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB3BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      switch(result)
      {
        case 4:
          sub_1D9C7D4EC();
          break;
        case 3:
          type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
          sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58);
          sub_1D9C7D5FC();
          break;
        case 2:
          sub_1D9BB5EE4(a1, v5, a2, a3, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
          break;
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB3D14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9BB6100(v3, a1, a2, a3, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
  if (!v4)
  {
    if (*(*v3 + 16))
    {
      type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
      sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58);
      sub_1D9C7D7FC();
    }

    if (v3[8] == 1)
    {
      sub_1D9C7D74C();
    }

    type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BB3E4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1D9BB3F28(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54030, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule, &unk_1D9C9B718);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB3FC8(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2E290, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule, &unk_1D9C9B750);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB4034(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1EDD2E290, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule, &unk_1D9C9B750);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB40B4()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71528);
  __swift_project_value_buffer(v0, qword_1ECB71528);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C8CDC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "image_url_regexps";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "referral_url_regexps";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "coarse_thresholds";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "detector_thresholds";
  *(v14 + 1) = 19;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "only_for_whole_image";
  *(v16 + 1) = 20;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "reject_domain";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB4380(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9C7D4CC();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 3)
      {
        if (result == 4)
        {
          v6 = v3;
          type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
          sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
LABEL_18:
          v3 = v6;
          sub_1D9C7D5FC();
          goto LABEL_5;
        }

        if (result == 5 || result == 6)
        {
          sub_1D9C7D4EC();
        }
      }

      else
      {
        if (result != 1 && result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          v6 = v3;
          type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
          sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58);
          goto LABEL_18;
        }

        sub_1D9C7D57C();
      }

LABEL_5:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB4520(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  if (!*(*v4 + 16) || (result = sub_1D9C7D7AC(), !v5))
  {
    if (!*(*(v4 + 8) + 16) || (result = sub_1D9C7D7AC(), !v5))
    {
      v7 = v5;
      if (*(*(v4 + 16) + 16))
      {
        type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
        sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58);
        result = sub_1D9C7D7FC();
        if (v5)
        {
          return result;
        }

        v7 = 0;
      }

      if (*(*(v4 + 24) + 16))
      {
        type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
        sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
        v8 = v7;
        result = sub_1D9C7D7FC();
        if (v7)
        {
          return result;
        }
      }

      else
      {
        v8 = v7;
      }

      if (*(v4 + 32) != 1 || (result = sub_1D9C7D74C(), !v8))
      {
        if (*(v4 + 33) != 1 || (result = sub_1D9C7D74C(), !v8))
        {
          type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB471C@<X0>(uint64_t a2@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = v2;
  *(a2 + 16) = v2;
  *(a2 + 24) = v2;
  *(a2 + 32) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB479C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54038, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule, &unk_1D9C9B5B0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB483C(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1ECB53EF0, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule, &unk_1D9C9B5E8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB48A8(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1ECB53EF0, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule, &unk_1D9C9B5E8);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB4948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), unint64_t *a5, uint64_t (*a6)(uint64_t), uint64_t a7)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v7 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(0);
      sub_1D9BBA588(a5, a6, a7);
      sub_1D9C7D5FC();
    }

    else if (result == 2)
    {
      sub_1D9C7D4EC();
    }
  }

  return result;
}

uint64_t sub_1D9BB4A40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange(0), sub_1D9BBA588(&qword_1EDD2DE80, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange, &unk_1D9C9B318), result = sub_1D9C7D7FC(), !v4))
  {
    if (v3[8] != 1 || (result = sub_1D9C7D74C(), !v4))
    {
      type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB4BDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54040, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule, &unk_1D9C9B448);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB4C7C(uint64_t a1)
{
  v2 = sub_1D9BBA588(&unk_1EDD2DDC8, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule, &unk_1D9C9B480);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB4CE8(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&unk_1EDD2DDC8, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule, &unk_1D9C9B480);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB4D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BB4E38()
{
  result = MEMORY[0x1DA73DF90](0x726F6353786F422ELL, 0xEE0065676E615265);
  qword_1ECB71540 = 0xD000000000000033;
  *algn_1ECB71548 = 0x80000001D9CAC020;
  return result;
}

uint64_t sub_1D9BB4ED0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v9 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v10 = *(*v9 + 72);
  v11 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9C85EA0;
  v13 = (v12 + v11);
  v14 = v12 + v11 + v9[14];
  *v13 = 1;
  *v14 = a3;
  *(v14 + 8) = a4;
  *(v14 + 16) = 2;
  v15 = *MEMORY[0x1E69AADE8];
  v16 = sub_1D9C7D81C();
  v17 = *(*(v16 - 8) + 104);
  (v17)(v14, v15, v16);
  v18 = v13 + v10 + v9[14];
  *(v13 + v10) = 2;
  *v18 = a5;
  *(v18 + 1) = 13;
  v18[16] = 2;
  v17();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB5090(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1D9C7D54C();
    }
  }

  return result;
}

uint64_t sub_1D9BB5110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1D9C7D77C(), !v4))
  {
    if (!v3[1] || (result = sub_1D9C7D77C(), !v4))
    {
      type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB5214(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54048, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange, &unk_1D9C9B2E0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB52B4(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2DE80, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange, &unk_1D9C9B318);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB5320(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1EDD2DE80, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule.BoxScoreRange, &unk_1D9C9B318);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB539C(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BB5450()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41880);
  __swift_project_value_buffer(v0, qword_1EDD41880);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "detector_thresholds";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "iou_threshold";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "ioa_threshold";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "reject_domain";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB5698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9C7D4CC();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result > 2)
      {
        if (result == 3)
        {
          sub_1D9C7D4EC();
          goto LABEL_5;
        }

        if (result == 4)
        {
          goto LABEL_13;
        }
      }

      else
      {
        if (result != 1)
        {
          if (result != 2)
          {
            goto LABEL_5;
          }

LABEL_13:
          sub_1D9C7D54C();
          goto LABEL_5;
        }

        type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
        sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
        sub_1D9C7D5FC();
      }

LABEL_5:
      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB57CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0), result = sub_1D9C7D7FC(), !v4))
  {
    if (!*(v3 + 8) || (result = sub_1D9C7D77C(), !v4))
    {
      if (*(v3 + 16) != 1 || (result = sub_1D9C7D74C(), !v4))
      {
        if (!*(v3 + 12) || (result = sub_1D9C7D77C(), !v4))
        {
          type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(0);
          return sub_1D9C7D3AC();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB5920@<X0>(uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB599C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54050, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule, &unk_1D9C9B178);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB5A3C(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2CE98, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule, &unk_1D9C9B1B0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB5AA8(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1EDD2CE98, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule, &unk_1D9C9B1B0);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB5B28()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41868);
  __swift_project_value_buffer(v0, qword_1EDD41868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "coarse_thresholds";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "torso_threshold";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "head_threshold";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ioa_threshold";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB5D70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1D9BB69DC(a1, v5, a2, a3, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
        }

        else if (result == 4)
        {
          sub_1D9C7D54C();
        }
      }

      else if (result == 1)
      {
        type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
        sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58);
        sub_1D9C7D5FC();
      }

      else if (result == 2)
      {
        sub_1D9BB5EE4(a1, v5, a2, a3, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB5EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9BB5F9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58), result = sub_1D9C7D7FC(), !v4))
  {
    result = sub_1D9BB6100(v3, a1, a2, a3, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
    if (!v4)
    {
      sub_1D9BB6CB8(v3, a1, a2, a3, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule, 3);
      if (v3[2])
      {
        sub_1D9C7D77C();
      }

      type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB6100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double))
{
  v17[3] = a4;
  v17[0] = a2;
  v17[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8, &unk_1D9C98580);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - v8;
  v10 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a5(0, v12);
  sub_1D99AB100(a1 + *(v15 + 28), v9, &qword_1ECB510C8, &unk_1D9C98580);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1D99A6AE0(v9, &qword_1ECB510C8, &unk_1D9C98580);
  }

  sub_1D9BBEE98(v9, v14, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
  sub_1D9C7D80C();
  return sub_1D9BBEE38(v14, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
}

uint64_t sub_1D9BB6320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 8) = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 32);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1D9BB643C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54058, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule, &unk_1D9C9B010);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB64DC(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2CDE0, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule, &unk_1D9C9B048);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB6548(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1EDD2CDE0, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule, &unk_1D9C9B048);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB65C8()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41808);
  __swift_project_value_buffer(v0, qword_1EDD41808);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C86430;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "coarse_thresholds";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "detector_threshold";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "inner_detector_threshold";
  *(v12 + 1) = 24;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "ioa_threshold";
  *(v14 + 1) = 13;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "min_num_inner_objects";
  *(v15 + 8) = 21;
  *(v15 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB685C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1D9C7D4CC();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
          sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58);
          sub_1D9C7D5FC();
        }

        else if (result == 2)
        {
          sub_1D9BB69DC(a1, v5, a2, a3, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1D9BB6A94(a1, v5, a2, a3);
            break;
          case 4:
            sub_1D9C7D54C();
            break;
          case 5:
            sub_1D9C7D55C();
            break;
        }
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB69DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9BB6A94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9BB6B48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58), result = sub_1D9C7D7FC(), !v4))
  {
    result = sub_1D9BB6CB8(v3, a1, a2, a3, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule, 2);
    if (!v4)
    {
      sub_1D9BB6EDC(v3, a1, a2, a3);
      if (v3[2])
      {
        sub_1D9C7D77C();
      }

      if (v3[3])
      {
        sub_1D9C7D78C();
      }

      type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB6CB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, double), uint64_t a6)
{
  v18[2] = a6;
  v18[3] = a3;
  v18[5] = a4;
  v18[1] = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8, &unk_1D9C98580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v18 - v9;
  v11 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a5(0, v13);
  sub_1D99AB100(a1 + *(v16 + 32), v10, &qword_1ECB510C8, &unk_1D9C98580);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1D99A6AE0(v10, &qword_1ECB510C8, &unk_1D9C98580);
  }

  sub_1D9BBEE98(v10, v15, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
  sub_1D9C7D80C();
  return sub_1D9BBEE38(v15, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
}

uint64_t sub_1D9BB6EDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8, &unk_1D9C98580);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  sub_1D99AB100(a1 + *(v12 + 36), v7, &qword_1ECB510C8, &unk_1D9C98580);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB510C8, &unk_1D9C98580);
  }

  sub_1D9BBEE98(v7, v11, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
  sub_1D9C7D80C();
  return sub_1D9BBEE38(v11, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
}

uint64_t sub_1D9BB70F8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  *(a2 + 1) = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 32);
  v5 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), &a2[v4], 1, 1, v5);
  v6 = &a2[*(a1 + 36)];

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1D9BB7210(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54060, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule, &unk_1D9C9AEA8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB72B0(uint64_t a1)
{
  v2 = sub_1D9BBA588(&unk_1EDD2CB10, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule, &unk_1D9C9AEE0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB731C(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&unk_1EDD2CB10, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule, &unk_1D9C9AEE0);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB73BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1D9C7D77C(), !v4))
  {
    type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BB7484(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54068, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule, &unk_1D9C9AD40);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB7524(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2CF40, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule, &unk_1D9C9AD78);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB7590(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1EDD2CF40, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule, &unk_1D9C9AD78);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB760C(float *a1, float *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BB76D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D50C();
    }
  }

  return result;
}

uint64_t sub_1D9BB7740(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1D9C7D6FC(), !v4))
  {
    type metadata accessor for Argos_Protos_Queryflow_Polygon(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BB7814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54070, type metadata accessor for Argos_Protos_Queryflow_Polygon, &unk_1D9C9ABD8);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB78B4(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1ECB53E70, type metadata accessor for Argos_Protos_Queryflow_Polygon, &unk_1D9C9AC10);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB7920(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1ECB53E70, type metadata accessor for Argos_Protos_Queryflow_Polygon, &unk_1D9C9AC10);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB79B4()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD418C8);
  __swift_project_value_buffer(v0, qword_1EDD418C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C8CDC0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "reject_domain_if_missing_location";
  *(v6 + 8) = 33;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cell_config";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "cell_level";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "cell_levels";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 4;
  *v16 = "prerequisite_domain";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "country_config";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB7C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
LABEL_14:
          sub_1D9C7D4EC();
          break;
        case 5:
          sub_1D9C7D51C();
          break;
        case 6:
          sub_1D9BB7E40(a1, v5, a2, a3);
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 1:
          goto LABEL_14;
        case 2:
          sub_1D9BB7D8C(a1, v5, a2, a3);
          break;
        case 3:
          sub_1D9C7D55C();
          break;
      }
    }
  }
}

uint64_t sub_1D9BB7D8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
  sub_1D9BBA588(qword_1EDD2AB50, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig, &unk_1D9C9A940);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9BB7E40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig(0);
  sub_1D9BBA588(&qword_1ECB53E30, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig, &unk_1D9C9A7D8);
  return sub_1D9C7D60C();
}

uint64_t sub_1D9BB7EF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1D9C7D74C(), !v4))
  {
    result = sub_1D9BB8020(v3, a1, a2, a3);
    if (!v4)
    {
      if (*(v3 + 4))
      {
        sub_1D9C7D78C();
      }

      if (*(v3 + 16) == 1)
      {
        sub_1D9C7D74C();
      }

      if (*(*(v3 + 8) + 16))
      {
        sub_1D9C7D70C();
      }

      sub_1D9BB823C(v3, a1, a2, a3);
      type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB8020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DD8, &qword_1D9C99E98);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  sub_1D99AB100(a1 + *(v12 + 36), v7, &qword_1ECB53DD8, &qword_1D9C99E98);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB53DD8, &qword_1D9C99E98);
  }

  sub_1D9BBEE98(v7, v11, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
  sub_1D9BBA588(qword_1EDD2AB50, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig, &unk_1D9C9A940);
  sub_1D9C7D80C();
  return sub_1D9BBEE38(v11, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
}

uint64_t sub_1D9BB823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DE0, &unk_1D9C99EA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  sub_1D99AB100(a1 + *(v12 + 40), v7, &qword_1ECB53DE0, &unk_1D9C99EA0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1D99A6AE0(v7, &qword_1ECB53DE0, &unk_1D9C99EA0);
  }

  sub_1D9BBEE98(v7, v11, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
  sub_1D9BBA588(&qword_1ECB53E30, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig, &unk_1D9C9A7D8);
  sub_1D9C7D80C();
  return sub_1D9BBEE38(v11, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
}

uint64_t sub_1D9BB8458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 4) = 0;
  *(a2 + 8) = MEMORY[0x1E69E7CC0];
  *(a2 + 16) = 0;
  sub_1D9C7D3BC();
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 40);
  v7 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1D9BB8588(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54078, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule, &unk_1D9C9AA70);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB8628(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2DA60, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule, &unk_1D9C9AAA8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB8694(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1EDD2DA60, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule, &unk_1D9C9AAA8);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB8714()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000013, 0x80000001D9CAC320);
  qword_1ECB71568 = 0xD000000000000033;
  qword_1ECB71570 = 0x80000001D9CAC260;
  return result;
}

uint64_t sub_1D9BB8788()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1ECB71578);
  __swift_project_value_buffer(v0, qword_1ECB71578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85E90;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "bloom_filter_data";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "num_of_hashes";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "hash_seed";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "num_of_bits";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB89D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 2)
    {
      if (result == 3 || result == 4)
      {
LABEL_2:
        sub_1D9C7D5DC();
      }
    }

    else if (result == 1)
    {
      sub_1D9C7D53C();
    }

    else if (result == 2)
    {
      goto LABEL_2;
    }
  }
}

uint64_t sub_1D9BB8A84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = *(v3 + 8);
  v7 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v7 != 2)
    {
      goto LABEL_10;
    }

    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
LABEL_8:
    if (v8 == v9)
    {
      goto LABEL_10;
    }

LABEL_9:
    result = sub_1D9C7D76C();
    if (v4)
    {
      return result;
    }

    goto LABEL_10;
  }

  if (v7)
  {
    v8 = v5;
    v9 = v5 >> 32;
    goto LABEL_8;
  }

  if ((v6 & 0xFF000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  if (!*(v3 + 16) || (result = sub_1D9C7D7DC(), !v4))
  {
    if (!*(v3 + 20) || (result = sub_1D9C7D7DC(), !v4))
    {
      if (!*(v3 + 24) || (result = sub_1D9C7D7DC(), !v4))
      {
        type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
        return sub_1D9C7D3AC();
      }
    }
  }

  return result;
}

uint64_t sub_1D9BB8BA0@<X0>(uint64_t a2@<X8>)
{
  *a2 = xmmword_1D9C87D50;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  return sub_1D9C7D3BC();
}

uint64_t sub_1D9BB8C2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54080, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig, &unk_1D9C9A908);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB8CCC(uint64_t a1)
{
  v2 = sub_1D9BBA588(qword_1EDD2AB50, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig, &unk_1D9C9A940);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB8D38(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(qword_1EDD2AB50, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig, &unk_1D9C9A940);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB8DB8()
{
  result = MEMORY[0x1DA73DF90](0xD000000000000016, 0x80000001D9CAC380);
  qword_1ECB71590 = 0xD000000000000033;
  *algn_1ECB71598 = 0x80000001D9CAC260;
  return result;
}

uint64_t sub_1D9BB8E4C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9C7D4CC();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Argos_Protos_Queryflow_Polygon(0);
        sub_1D9BBA588(&qword_1ECB53E70, type metadata accessor for Argos_Protos_Queryflow_Polygon, &unk_1D9C9AC10);
        sub_1D9C7D5FC();
      }

      result = sub_1D9C7D4CC();
    }
  }

  return result;
}

uint64_t sub_1D9BB8F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Argos_Protos_Queryflow_Polygon(0), sub_1D9BBA588(&qword_1ECB53E70, type metadata accessor for Argos_Protos_Queryflow_Polygon, &unk_1D9C9AC10), result = sub_1D9C7D7FC(), !v4))
  {
    type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BB9068(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54088, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig, &unk_1D9C9A7A0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB9108(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1ECB53E30, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig, &unk_1D9C9A7D8);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB9174(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1ECB53E30, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig, &unk_1D9C9A7D8);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB9208(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (((a5)(*a1, *a2, a3, a4) & 1) == 0)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BB92B4()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD418E0);
  __swift_project_value_buffer(v0, qword_1EDD418E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85EA0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "threshold";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB947C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D5CC();
    }

    else if (result == 2)
    {
      sub_1D9C7D54C();
    }
  }

  return result;
}

uint64_t sub_1D9BB9508(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v6 = *(v4 + 8);
  v7 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v7 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v7 || (result = sub_1D9C7D7CC(), !v5))
  {
    if (!*(v4 + 16) || (result = sub_1D9C7D77C(), !v5))
    {
      type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0);
      return sub_1D9C7D3AC();
    }
  }

  return result;
}

uint64_t sub_1D9BB960C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54090, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold, &unk_1D9C9A638);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB96AC(uint64_t a1)
{
  v2 = sub_1D9BBA588(&unk_1EDD2DC50, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold, &unk_1D9C9A670);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB9718(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&unk_1EDD2DC50, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold, &unk_1D9C9A670);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB9794(float *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v5 && (sub_1D9C7E7DC() & 1) == 0 || a1[4] != *(a2 + 16))
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BB9860()
{
  v0 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v0, qword_1EDD41F88);
  __swift_project_value_buffer(v0, qword_1EDD41F88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D9C85490;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "domain_thresholds";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1D9C7D81C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "detector_thresholds";
  *(v10 + 1) = 19;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "coarse_thresholds";
  *(v11 + 8) = 17;
  *(v11 + 16) = 2;
  v9();
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BB9A74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D9C7D4CC();
  if (!v3)
  {
    while (1)
    {
      if (v5)
      {
        return result;
      }

      if (result == 3)
      {
        v6 = v3;
        type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
        sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58);
        goto LABEL_5;
      }

      if (result == 2)
      {
        break;
      }

      if (result == 1)
      {
        v6 = v3;
        type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0);
        sub_1D9BBA588(&unk_1EDD2DC50, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold, &unk_1D9C9A670);
        goto LABEL_5;
      }

LABEL_6:
      result = sub_1D9C7D4CC();
    }

    v6 = v3;
    type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
    sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
LABEL_5:
    v3 = v6;
    sub_1D9C7D5FC();
    goto LABEL_6;
  }

  return result;
}

uint64_t sub_1D9BB9C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  if (*(*v3 + 16))
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold(0);
    sub_1D9BBA588(&unk_1EDD2DC50, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionNetThreshold, &unk_1D9C9A670);
    result = sub_1D9C7D7FC();
    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  if (*(v3[1] + 16))
  {
    type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
    sub_1D9BBA588(&qword_1EDD2D000, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold, &unk_1D9C9BCF0);
    v7 = v5;
    result = sub_1D9C7D7FC();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v7 = v5;
  }

  if (!*(v3[2] + 16) || (type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0), sub_1D9BBA588(&qword_1EDD2CD28, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold, &unk_1D9C9BE58), result = sub_1D9C7D7FC(), !v7))
  {
    type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BB9E38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB54098, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule, &unk_1D9C9A4D0);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BB9ED8(uint64_t a1)
{
  v2 = sub_1D9BBA588(&unk_1EDD35368, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule, &unk_1D9C9A508);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BB9F44(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&unk_1EDD35368, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule, &unk_1D9C9A508);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BB9FE4(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1D9C7D84C();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51070, &unk_1D9C8AED0);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51078, &unk_1D9C85650) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1D9C85660;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = sub_1D9C7D81C();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_1D9C7D82C();
}

uint64_t sub_1D9BBA154(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1D9C7D4CC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1D9C7D4EC();
    }
  }

  return result;
}

uint64_t sub_1D9BBA1C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*v3 != 1 || (result = sub_1D9C7D74C(), !v4))
  {
    type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule(0);
    return sub_1D9C7D3AC();
  }

  return result;
}

uint64_t sub_1D9BBA2CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9BBA588(&qword_1ECB540A0, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule, &unk_1D9C9A368);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1D9BBA36C(uint64_t a1)
{
  v2 = sub_1D9BBA588(&qword_1EDD2CC78, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule, &unk_1D9C9A3A0);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1D9BBA3D8(uint64_t a1, uint64_t a2)
{
  sub_1D9BBA588(&qword_1EDD2CC78, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule, &unk_1D9C9A3A0);

  return sub_1D9C7D6AC();
}

uint64_t sub_1D9BBA454(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBA588(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9BBBD00(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8, &unk_1D9C98580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E30, &unk_1D9C8A400);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  if ((sub_1D9A1EA54(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v38 = v10;
  v39 = v7;
  v20 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  v42 = a2;
  v21 = *(v20 + 32);
  v22 = a1;
  v23 = *(v14 + 48);
  v40 = v20;
  v41 = v22;
  sub_1D99AB100(v22 + v21, v19, &qword_1ECB510C8, &unk_1D9C98580);
  sub_1D99AB100(v42 + v21, &v19[v23], &qword_1ECB510C8, &unk_1D9C98580);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v23], 1, v4) == 1)
    {
      sub_1D99A6AE0(v19, &qword_1ECB510C8, &unk_1D9C98580);
      goto LABEL_9;
    }

LABEL_7:
    v25 = v19;
LABEL_15:
    sub_1D99A6AE0(v25, &qword_1ECB51E30, &unk_1D9C8A400);
    goto LABEL_16;
  }

  sub_1D99AB100(v19, v13, &qword_1ECB510C8, &unk_1D9C98580);
  if (v24(&v19[v23], 1, v4) == 1)
  {
    sub_1D9BBEE38(v13, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    goto LABEL_7;
  }

  v26 = v39;
  sub_1D9BBEE98(&v19[v23], v39, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  v27 = sub_1D9BBD6FC(v13, v26);
  sub_1D9BBEE38(v26, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9BBEE38(v13, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D99A6AE0(v19, &qword_1ECB510C8, &unk_1D9C98580);
  if ((v27 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v28 = *(v40 + 36);
  v29 = *(v14 + 48);
  sub_1D99AB100(v41 + v28, v16, &qword_1ECB510C8, &unk_1D9C98580);
  v30 = v42 + v28;
  v31 = v42;
  sub_1D99AB100(v30, &v16[v29], &qword_1ECB510C8, &unk_1D9C98580);
  if (v24(v16, 1, v4) != 1)
  {
    v32 = v38;
    sub_1D99AB100(v16, v38, &qword_1ECB510C8, &unk_1D9C98580);
    if (v24(&v16[v29], 1, v4) != 1)
    {
      v35 = v39;
      sub_1D9BBEE98(&v16[v29], v39, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      v36 = sub_1D9BBD6FC(v32, v35);
      sub_1D9BBEE38(v35, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D9BBEE38(v32, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D99A6AE0(v16, &qword_1ECB510C8, &unk_1D9C98580);
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_1D9BBEE38(v32, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    goto LABEL_14;
  }

  if (v24(&v16[v29], 1, v4) != 1)
  {
LABEL_14:
    v25 = v16;
    goto LABEL_15;
  }

  sub_1D99A6AE0(v16, &qword_1ECB510C8, &unk_1D9C98580);
LABEL_19:
  if (*(v41 + 2) == *(v31 + 2) && *(v41 + 3) == *(v31 + 3))
  {
    sub_1D9C7D3CC();
    sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v33 = sub_1D9C7DC2C();
    return v33 & 1;
  }

LABEL_16:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1D9BBC288(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A1ECA4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 9) != *(a2 + 9))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBC354(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0 || a1[4] != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationLabelThreshold(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBC434(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8, &unk_1D9C98580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = (&v37 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E30, &unk_1D9C8A400);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v37 - v18;
  if ((sub_1D9A1EA54(*a1, *a2) & 1) == 0)
  {
    goto LABEL_16;
  }

  v38 = v10;
  v39 = v7;
  v20 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(0);
  v42 = a2;
  v21 = *(v20 + 28);
  v22 = a1;
  v23 = *(v14 + 48);
  v40 = v20;
  v41 = v22;
  sub_1D99AB100(v22 + v21, v19, &qword_1ECB510C8, &unk_1D9C98580);
  sub_1D99AB100(v42 + v21, &v19[v23], &qword_1ECB510C8, &unk_1D9C98580);
  v24 = *(v5 + 48);
  if (v24(v19, 1, v4) == 1)
  {
    if (v24(&v19[v23], 1, v4) == 1)
    {
      sub_1D99A6AE0(v19, &qword_1ECB510C8, &unk_1D9C98580);
      goto LABEL_9;
    }

LABEL_7:
    v25 = v19;
LABEL_15:
    sub_1D99A6AE0(v25, &qword_1ECB51E30, &unk_1D9C8A400);
    goto LABEL_16;
  }

  sub_1D99AB100(v19, v13, &qword_1ECB510C8, &unk_1D9C98580);
  if (v24(&v19[v23], 1, v4) == 1)
  {
    sub_1D9BBEE38(v13, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    goto LABEL_7;
  }

  v26 = v39;
  sub_1D9BBEE98(&v19[v23], v39, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  v27 = sub_1D9BBD6FC(v13, v26);
  sub_1D9BBEE38(v26, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D9BBEE38(v13, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
  sub_1D99A6AE0(v19, &qword_1ECB510C8, &unk_1D9C98580);
  if ((v27 & 1) == 0)
  {
    goto LABEL_16;
  }

LABEL_9:
  v28 = *(v40 + 32);
  v29 = *(v14 + 48);
  sub_1D99AB100(v41 + v28, v16, &qword_1ECB510C8, &unk_1D9C98580);
  v30 = v42 + v28;
  v31 = v42;
  sub_1D99AB100(v30, &v16[v29], &qword_1ECB510C8, &unk_1D9C98580);
  if (v24(v16, 1, v4) != 1)
  {
    v32 = v38;
    sub_1D99AB100(v16, v38, &qword_1ECB510C8, &unk_1D9C98580);
    if (v24(&v16[v29], 1, v4) != 1)
    {
      v35 = v39;
      sub_1D9BBEE98(&v16[v29], v39, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      v36 = sub_1D9BBD6FC(v32, v35);
      sub_1D9BBEE38(v35, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D9BBEE38(v32, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D99A6AE0(v16, &qword_1ECB510C8, &unk_1D9C98580);
      if ((v36 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_19;
    }

    sub_1D9BBEE38(v32, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
    goto LABEL_14;
  }

  if (v24(&v16[v29], 1, v4) != 1)
  {
LABEL_14:
    v25 = v16;
    goto LABEL_15;
  }

  sub_1D99A6AE0(v16, &qword_1ECB510C8, &unk_1D9C98580);
LABEL_19:
  if (*(v41 + 2) == *(v31 + 2))
  {
    sub_1D9C7D3CC();
    sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v33 = sub_1D9C7DC2C();
    return v33 & 1;
  }

LABEL_16:
  v33 = 0;
  return v33 & 1;
}

uint64_t sub_1D9BBC9AC(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A1ECA4(*a1, *a2) & 1) == 0 || *(a1 + 8) != *(a2 + 8) || *(a1 + 12) != *(a2 + 12) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBCA88(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A1EF04(*a1, *a2) & 1) == 0 || (sub_1D9A1EF04(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (sub_1D9A1EA54(*(a1 + 16), *(a2 + 16)) & 1) == 0 || (sub_1D9A1ECA4(*(a1 + 24), *(a2 + 24)) & 1) == 0 || *(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBCB84(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig(0);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DE0, &unk_1D9C99EA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = (&v41 - v8);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53F90, &qword_1D9C9C070);
  MEMORY[0x1EEE9AC00](v46);
  v10 = &v41 - v9;
  v11 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DD8, &qword_1D9C99E98);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53F98, &qword_1D9C9C078);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v41 - v19;
  if (*a1 != *a2)
  {
    goto LABEL_13;
  }

  v41 = v6;
  v43 = v10;
  v42 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  v21 = *(v42 + 36);
  v22 = *(v18 + 48);
  v44 = a1;
  sub_1D99AB100(&a1[v21], v20, &qword_1ECB53DD8, &qword_1D9C99E98);
  v23 = &a2[v21];
  v24 = a2;
  sub_1D99AB100(v23, &v20[v22], &qword_1ECB53DD8, &qword_1D9C99E98);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) == 1)
  {
    if (v25(&v20[v22], 1, v11) == 1)
    {
      sub_1D99A6AE0(v20, &qword_1ECB53DD8, &qword_1D9C99E98);
      goto LABEL_10;
    }

LABEL_7:
    v26 = &qword_1ECB53F98;
    v27 = &qword_1D9C9C078;
    v28 = v20;
LABEL_8:
    sub_1D99A6AE0(v28, v26, v27);
    goto LABEL_13;
  }

  sub_1D99AB100(v20, v17, &qword_1ECB53DD8, &qword_1D9C99E98);
  if (v25(&v20[v22], 1, v11) == 1)
  {
    sub_1D9BBEE38(v17, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
    goto LABEL_7;
  }

  sub_1D9BBEE98(&v20[v22], v14, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
  v29 = sub_1D9BBD28C(v17, v14);
  sub_1D9BBEE38(v14, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
  sub_1D9BBEE38(v17, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig);
  sub_1D99A6AE0(v20, &qword_1ECB53DD8, &qword_1D9C99E98);
  if ((v29 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_10:
  v30 = v44;
  if (*(v44 + 1) != *(a2 + 1) || (sub_1D9A31C70() & 1) == 0 || v30[16] != a2[16])
  {
    goto LABEL_13;
  }

  v33 = v43;
  v34 = *(v42 + 40);
  v35 = *(v46 + 48);
  sub_1D99AB100(&v30[v34], v43, &qword_1ECB53DE0, &unk_1D9C99EA0);
  sub_1D99AB100(&v24[v34], v33 + v35, &qword_1ECB53DE0, &unk_1D9C99EA0);
  v36 = v48;
  v37 = *(v47 + 48);
  if (v37(v33, 1, v48) == 1)
  {
    if (v37(v33 + v35, 1, v36) == 1)
    {
      sub_1D99A6AE0(v33, &qword_1ECB53DE0, &unk_1D9C99EA0);
LABEL_18:
      sub_1D9C7D3CC();
      sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v31 = sub_1D9C7DC2C();
      return v31 & 1;
    }

    goto LABEL_21;
  }

  v38 = v45;
  sub_1D99AB100(v33, v45, &qword_1ECB53DE0, &unk_1D9C99EA0);
  if (v37(v33 + v35, 1, v36) == 1)
  {
    sub_1D9BBEE38(v38, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
LABEL_21:
    v26 = &qword_1ECB53F90;
    v27 = &qword_1D9C9C070;
LABEL_22:
    v28 = v33;
    goto LABEL_8;
  }

  v39 = v41;
  sub_1D9BBEE98(v33 + v35, v41, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
  if ((sub_1D9A22554(*v38, *v39) & 1) == 0)
  {
    sub_1D9BBEE38(v39, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
    sub_1D9BBEE38(v38, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
    v26 = &qword_1ECB53DE0;
    v27 = &unk_1D9C99EA0;
    goto LABEL_22;
  }

  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v40 = sub_1D9C7DC2C();
  sub_1D9BBEE38(v39, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
  sub_1D9BBEE38(v38, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCountryConfig);
  sub_1D99A6AE0(v33, &qword_1ECB53DE0, &unk_1D9C99EA0);
  if (v40)
  {
    goto LABEL_18;
  }

LABEL_13:
  v31 = 0;
  return v31 & 1;
}

uint64_t sub_1D9BBD28C(uint64_t a1, uint64_t a2)
{
  if (!sub_1D99FBD74(*a1, *(a1 + 8), *a2, *(a2 + 8)) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule.GeoFenceCellConfig(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBD36C(uint64_t *a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB510C8, &unk_1D9C98580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v22 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E30, &unk_1D9C8A400);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if ((sub_1D9A1EA54(*a1, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  v14 = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(0);
  v15 = *(v14 + 28);
  v16 = a1;
  v17 = *(v11 + 48);
  v22 = v14;
  v23 = v16;
  sub_1D99AB100(v16 + v15, v13, &qword_1ECB510C8, &unk_1D9C98580);
  sub_1D99AB100(a2 + v15, &v13[v17], &qword_1ECB510C8, &unk_1D9C98580);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v10, &qword_1ECB510C8, &unk_1D9C98580);
    if (v18(&v13[v17], 1, v4) != 1)
    {
      sub_1D9BBEE98(&v13[v17], v7, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      v19 = sub_1D9BBD6FC(v10, v7);
      sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
      sub_1D99A6AE0(v13, &qword_1ECB510C8, &unk_1D9C98580);
      if ((v19 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold);
LABEL_7:
    sub_1D99A6AE0(v13, &qword_1ECB51E30, &unk_1D9C8A400);
    goto LABEL_10;
  }

  if (v18(&v13[v17], 1, v4) != 1)
  {
    goto LABEL_7;
  }

  sub_1D99A6AE0(v13, &qword_1ECB510C8, &unk_1D9C98580);
LABEL_9:
  if (*(v23 + 8) == *(a2 + 8))
  {
    sub_1D9C7D3CC();
    sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
    v20 = sub_1D9C7DC2C();
    return v20 & 1;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1D9BBD6FC(float *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1D9C7E7DC() & 1) == 0 || a1[4] != *(a2 + 16) || *(a1 + 20) != *(a2 + 20) || *(a1 + 21) != *(a2 + 21))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionLabelThreshold(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBD7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51100, &unk_1D9C99CC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51E40, &unk_1D9C8A420);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;
  v15 = *(v14 + 56);
  sub_1D99AB100(a1, &v24 - v12, &qword_1ECB51100, &unk_1D9C99CC0);
  sub_1D99AB100(a2, &v13[v15], &qword_1ECB51100, &unk_1D9C99CC0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D99AB100(v13, v10, &qword_1ECB51100, &unk_1D9C99CC0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1D9BBEE98(&v13[v15], v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      v19 = sub_1D9BBDC98(v10, v7);
      sub_1D9BBEE38(v7, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      sub_1D99A6AE0(v13, &qword_1ECB51100, &unk_1D9C99CC0);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_1D9BBEE38(v10, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
LABEL_6:
    sub_1D99A6AE0(v13, &qword_1ECB51E40, &unk_1D9C8A420);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D99A6AE0(v13, &qword_1ECB51100, &unk_1D9C99CC0);
LABEL_10:
  v20 = *(type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule(0) + 20);
  v21 = *(a1 + v20);
  v22 = a2 + v20;
  v23 = *(a2 + v20);
  if (*(v22 + 8) == 1)
  {
    if (v23 > 2)
    {
      if (v23 == 3)
      {
        if (v21 != 3)
        {
          goto LABEL_7;
        }
      }

      else if (v23 == 4)
      {
        if (v21 != 4)
        {
          goto LABEL_7;
        }
      }

      else if (v21 != 5)
      {
        goto LABEL_7;
      }

      goto LABEL_17;
    }

    if (v23)
    {
      if (v23 == 1)
      {
        if (v21 != 1)
        {
          goto LABEL_7;
        }
      }

      else if (v21 != 2)
      {
        goto LABEL_7;
      }

LABEL_17:
      sub_1D9C7D3CC();
      sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v17 = sub_1D9C7DC2C();
      return v17 & 1;
    }

    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else if (v21 == v23)
  {
    goto LABEL_17;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D9BBDBBC(uint64_t a1, uint64_t a2)
{
  if ((sub_1D9A1EA54(*a1, *a2) & 1) == 0 || (sub_1D9A1ECA4(*(a1 + 8), *(a2 + 8)) & 1) == 0 || (sub_1D9A1ECA4(*(a1 + 16), *(a2 + 16)) & 1) == 0 || *(a1 + 24) != *(a2 + 24))
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t sub_1D9BBDC98(uint64_t a1, uint64_t a2)
{
  v114 = a1;
  v93 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v93);
  v106 = &v90 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v94);
  v104 = (&v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v91 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v91);
  v105 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v103 = (&v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v102 = (&v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v100 = (&v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v99 = &v90 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v92);
  v101 = &v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  matched = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](matched - 8);
  v97 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v90 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v90);
  v98 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v95 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  MEMORY[0x1EEE9AC00](v22);
  v112 = (&v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v111 = (&v90 - v25);
  MEMORY[0x1EEE9AC00](v26);
  v113 = (&v90 - v27);
  MEMORY[0x1EEE9AC00](v28);
  v108 = (&v90 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v107 = (&v90 - v31);
  MEMORY[0x1EEE9AC00](v32);
  v34 = (&v90 - v33);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v90 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v110 = (&v90 - v39);
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v90 - v41;
  MEMORY[0x1EEE9AC00](v43);
  v45 = (&v90 - v44);
  MEMORY[0x1EEE9AC00](v46);
  v109 = (&v90 - v47);
  MEMORY[0x1EEE9AC00](v48);
  v50 = &v90 - v49;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53F88, &unk_1D9C9C060);
  MEMORY[0x1EEE9AC00](v51 - 8);
  v53 = &v90 - v52;
  v55 = *(v54 + 56);
  sub_1D9BBEDD4(v114, &v90 - v52);
  sub_1D9BBEDD4(a2, &v53[v55]);
  v56 = v53;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 8)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1D9BBEDD4(v53, v34);
        if (swift_getEnumCaseMultiPayload() == 6)
        {
          v60 = v100;
          sub_1D9BBEE98(&v53[v55], v100, type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule);
          v61 = sub_1D9BBC434(v34, v60);
          v62 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule;
          goto LABEL_46;
        }

        v81 = type metadata accessor for Argos_Protos_Queryflow_PetsHeadTorsoDomainAssignmentRule;
      }

      else if (EnumCaseMultiPayload == 7)
      {
        v34 = v107;
        sub_1D9BBEDD4(v53, v107);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v60 = v102;
          sub_1D9BBEE98(&v53[v55], v102, type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule);
          v61 = sub_1D9BBBD00(v34, v60);
          v62 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule;
LABEL_46:
          v73 = v62;
          sub_1D9BBEE38(v60, v62);
          v74 = v34;
          goto LABEL_49;
        }

        v81 = type metadata accessor for Argos_Protos_Queryflow_NestedNatureRegionDomainAssignmentRule;
      }

      else
      {
        v34 = v108;
        sub_1D9BBEDD4(v53, v108);
        if (swift_getEnumCaseMultiPayload() == 8)
        {
          v60 = v103;
          sub_1D9BBEE98(&v53[v55], v103, type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule);
          v61 = sub_1D9BBCB84(v34, v60);
          v62 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule;
          goto LABEL_46;
        }

        v81 = type metadata accessor for Argos_Protos_Queryflow_GeoFenceDomainAssignmentRule;
      }

LABEL_65:
      v70 = v81;
      v71 = v34;
      goto LABEL_66;
    }

    if (EnumCaseMultiPayload == 9)
    {
      v34 = v113;
      sub_1D9BBEDD4(v53, v113);
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v58 = v105;
        sub_1D9BBEE98(&v53[v55], v105, type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule);
        if (sub_1D9A255BC(*v34, *v58) & 1) != 0 && (sub_1D9A1ECA4(v34[1], *(v58 + 8)) & 1) != 0 && (sub_1D9A1EA54(v34[2], *(v58 + 16)))
        {
          sub_1D9C7D3CC();
          sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
          if (sub_1D9C7DC2C())
          {
            v59 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule;
            goto LABEL_41;
          }
        }

        v82 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule;
        goto LABEL_70;
      }

      v81 = type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule;
      goto LABEL_65;
    }

    if (EnumCaseMultiPayload == 10)
    {
      v34 = v111;
      sub_1D9BBEDD4(v53, v111);
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        v81 = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule;
        goto LABEL_65;
      }

      v67 = v104;
      sub_1D9BBEE98(&v53[v55], v104, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
      if (*v34 == *v67)
      {
        sub_1D9C7D3CC();
        sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v68 = sub_1D9C7DC2C();
        sub_1D9BBEE38(v67, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
        if (v68)
        {
          v69 = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule;
LABEL_75:
          v66 = v69;
          v65 = v34;
          goto LABEL_76;
        }
      }

      else
      {
        sub_1D9BBEE38(v67, type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule);
      }

      v88 = type metadata accessor for Argos_Protos_Queryflow_StorefrontDomainAssignmentRule;
    }

    else
    {
      v34 = v112;
      sub_1D9BBEDD4(v53, v112);
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        v81 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule;
        goto LABEL_65;
      }

      v80 = v106;
      sub_1D9BBEE98(&v53[v55], v106, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
      if (*v34 == *v80)
      {
        sub_1D9C7D3CC();
        sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v87 = sub_1D9C7DC2C();
        sub_1D9BBEE38(v80, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
        if (v87)
        {
          v69 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule;
          goto LABEL_75;
        }
      }

      else
      {
        sub_1D9BBEE38(v80, type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule);
      }

      v88 = type metadata accessor for Argos_Protos_Queryflow_CustomDetectionDomainAssignmentRule;
    }

    v85 = v88;
    v84 = v34;
    goto LABEL_81;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D9BBEDD4(v53, v42);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v70 = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule;
        v71 = v42;
        goto LABEL_66;
      }

      v72 = v97;
      sub_1D9BBEE98(&v53[v55], v97, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
      v61 = sub_1D9BBCA88(v42, v72);
      v73 = type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule;
      sub_1D9BBEE38(v72, type metadata accessor for Argos_Protos_Queryflow_UrlMatchDomainAssignmentRule);
      v74 = v42;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v34 = v110;
        sub_1D9BBEDD4(v53, v110);
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          v63 = &v53[v55];
          v64 = v101;
          sub_1D9BBEE98(v63, v101, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
          if ((sub_1D9A22814(*v34, *v64) & 1) != 0 && *(v34 + 8) == *(v64 + 8))
          {
            sub_1D9C7D3CC();
            sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
            if (sub_1D9C7DC2C())
            {
              sub_1D9BBEE38(v64, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
              v65 = v34;
              v66 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule;
LABEL_76:
              sub_1D9BBEE38(v65, v66);
              sub_1D9BBEE38(v56, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
              v61 = 1;
              return v61 & 1;
            }
          }

          sub_1D9BBEE38(v64, type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule);
          v84 = v34;
          v85 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule;
          goto LABEL_81;
        }

        v81 = type metadata accessor for Argos_Protos_Queryflow_BoxScoreDomainAssignmentRule;
        goto LABEL_65;
      }

      sub_1D9BBEDD4(v53, v37);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v70 = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule;
        v71 = v37;
        goto LABEL_66;
      }

      v78 = v99;
      sub_1D9BBEE98(&v53[v55], v99, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
      v61 = sub_1D9BBC9AC(v37, v78);
      v73 = type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule;
      sub_1D9BBEE38(v78, type metadata accessor for Argos_Protos_Queryflow_OverlapRegionDomainAssignmentRule);
      v74 = v37;
    }

LABEL_49:
    v79 = v73;
    goto LABEL_50;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D9BBEDD4(v53, v50);
    if (swift_getEnumCaseMultiPayload())
    {
      v70 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule;
      v71 = v50;
LABEL_66:
      sub_1D9BBEE38(v71, v70);
      goto LABEL_67;
    }

    v86 = v95;
    sub_1D9BBEE98(&v53[v55], v95, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
    v61 = sub_1D9BBDBBC(v50, v86);
    sub_1D9BBEE38(v86, type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule);
    v74 = v50;
    v79 = type metadata accessor for Argos_Protos_Queryflow_CoarseClassificationDomainAssignmentRule;
LABEL_50:
    sub_1D9BBEE38(v74, v79);
    sub_1D9BBEE38(v56, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
    return v61 & 1;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v34 = v109;
    sub_1D9BBEDD4(v53, v109);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v58 = v98;
      sub_1D9BBEE98(&v53[v55], v98, type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule);
      if ((sub_1D9A1ECA4(*v34, *v58) & 1) != 0 && *(v34 + 8) == *(v58 + 8) && *(v34 + 9) == *(v58 + 9))
      {
        sub_1D9C7D3CC();
        sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        if (sub_1D9C7DC2C())
        {
          v59 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule;
LABEL_41:
          v75 = v59;
          sub_1D9BBEE38(v58, v59);
          v65 = v34;
          v66 = v75;
          goto LABEL_76;
        }
      }

      v82 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule;
LABEL_70:
      v83 = v82;
      sub_1D9BBEE38(v58, v82);
      v84 = v34;
      v85 = v83;
LABEL_81:
      sub_1D9BBEE38(v84, v85);
      sub_1D9BBEE38(v56, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
      goto LABEL_82;
    }

    v81 = type metadata accessor for Argos_Protos_Queryflow_ObjectDetectionDomainAssignmentRule;
    goto LABEL_65;
  }

  v76 = v53;
  sub_1D9BBEDD4(v53, v45);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_1D9BBEE38(v45, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
LABEL_67:
    sub_1D99A6AE0(v53, &qword_1ECB53F88, &unk_1D9C9C060);
LABEL_82:
    v61 = 0;
    return v61 & 1;
  }

  v77 = v96;
  sub_1D9BBEE98(&v53[v55], v96, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
  v61 = sub_1D9BBD36C(v45, v77);
  sub_1D9BBEE38(v77, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
  sub_1D9BBEE38(v45, type metadata accessor for Argos_Protos_Queryflow_FusionDomainAssignmentRule);
  sub_1D9BBEE38(v76, type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule);
  return v61 & 1;
}

uint64_t sub_1D9BBEDD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_DomainAssignmentRule.OneOf_Rule(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9BBEE38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D9BBEE98(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9BBEF00(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1D9A255BC(*a1, *a2) & 1) == 0 || (sub_1D9A1ECA4(a1[1], a2[1]) & 1) == 0 || (sub_1D9A1EA54(a1[2], a2[2]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Argos_Protos_Queryflow_DomainPredictionDomainAssignmentRule(0);
  sub_1D9C7D3CC();
  sub_1D9BBA588(&qword_1ECB51088, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1D9C7DC2C() & 1;
}

uint64_t __swift_get_extra_inhabitant_index_136Tm(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1D9C7D3CC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *__swift_store_extra_inhabitant_index_137Tm(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1D9C7D3CC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1D9BBF194(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t (*a6)(uint64_t, uint64_t), uint64_t a7)
{
  sub_1D9BA9610(319, a4, a5, a6);
  if (v7 <= 0x3F)
  {
    sub_1D9C7D3CC();
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9BBF22C()
{
  qword_1ECB715B8 = MEMORY[0x1E69E7CC0];
  unk_1ECB715C0 = MEMORY[0x1E69E7CC0];
  qword_1ECB715C8 = MEMORY[0x1E69E7CC0];
  unk_1ECB715D0 = MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D9BBF248@<X0>(uint64_t *a2@<X8>)
{
  v4 = ~sub_1D9A75D94();
  type metadata accessor for CipherMLSimilarityClient();
  swift_allocObject();

  result = sub_1D9BCCF5C(v5, v4 & 1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = &off_1F5534D40;
  }

  return result;
}

uint64_t sub_1D9BBF2C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D9ADD448();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

uint64_t sub_1D9BBF2EC(uint64_t a1, void *a2, void (*a3)(void *))
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0, &unk_1D9C9C160);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v11 - v7);
  if (a2)
  {
    *v8 = a2;
    swift_storeEnumTagMultiPayload();
    v9 = a2;
  }

  else
  {
    sub_1D9BC0FC4(a1, &v11 - v7, type metadata accessor for ServerSearchResult);
    swift_storeEnumTagMultiPayload();
  }

  a3(v8);
  return sub_1D99A6AE0(v8, &qword_1ECB53DC0, &unk_1D9C9C160);
}

double sub_1D9BBF3F8(__int128 *a1, uint64_t a2, uint64_t a3, char *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v87 = a5;
  v88 = a6;
  v76 = a3;
  v73 = a2;
  v8 = sub_1D9C7DA2C();
  v82 = *(v8 - 8);
  v83 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v80 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = sub_1D9C7DA4C();
  v79 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v78 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v74 = *(v11 - 8);
  v12 = *(v74 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v75 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v72 = *(v13 - 8);
  v14 = *(v72 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v71 - v15;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0, &unk_1D9C9C160);
  MEMORY[0x1EEE9AC00](v86);
  v18 = (&v71 - v17);
  v85 = sub_1D9C7D8DC();
  v19 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v71 - v21;
  v23 = a1[9];
  v99 = a1[8];
  v100 = v23;
  v101 = a1[10];
  v102 = *(a1 + 22);
  v24 = a1[5];
  v95 = a1[4];
  v96 = v24;
  v25 = a1[7];
  v97 = a1[6];
  v98 = v25;
  v26 = a1[1];
  v91 = *a1;
  v92 = v26;
  v27 = a1[3];
  v93 = a1[2];
  v94 = v27;
  v28 = *&a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  os_unfair_lock_lock(v28 + 4);
  v77 = a4;
  LODWORD(a4) = a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v28 + 4);
  if (a4 == 1)
  {
    static Logger.argos.getter(v22);
    v29 = sub_1D9C7D8BC();
    v30 = sub_1D9C7E09C();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1D9962000, v29, v30, "encryptedSearchPEC(): canceled", v31, 2u);
      MEMORY[0x1DA7405F0](v31, -1, -1);
    }

    (*(v19 + 8))(v22, v85);
    sub_1D9A0EEC0();
    v32 = swift_allocError();
    *v33 = 0;
    *v18 = v32;
    swift_storeEnumTagMultiPayload();
    v87(v18);
    sub_1D99A6AE0(v18, &qword_1ECB53DC0, &unk_1D9C9C160);
  }

  else
  {
    v34 = v84;
    v71 = sub_1D9C1A6B0();
    v85 = v36;
    v37 = swift_allocObject();
    v38 = v88;
    *(v37 + 16) = v87;
    *(v37 + 24) = v38;
    v86 = v37;
    v39 = *(v34 + 16);
    sub_1D99AB100(v73, v16, &unk_1ECB51B10, &qword_1D9C86550);
    v40 = (*(v72 + 80) + 16) & ~*(v72 + 80);
    v41 = (v14 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = (v41 + 191) & 0xFFFFFFFFFFFFFFF8;
    v43 = swift_allocObject();
    sub_1D9A0E758(v16, v43 + v40);
    v44 = v43 + v41;
    v45 = v100;
    *(v44 + 128) = v99;
    *(v44 + 144) = v45;
    *(v44 + 160) = v101;
    *(v44 + 176) = v102;
    v46 = v96;
    *(v44 + 64) = v95;
    *(v44 + 80) = v46;
    v47 = v98;
    *(v44 + 96) = v97;
    *(v44 + 112) = v47;
    v48 = v92;
    *v44 = v91;
    *(v44 + 16) = v48;
    v49 = v94;
    *(v44 + 32) = v93;
    *(v44 + 48) = v49;
    v50 = (v43 + v42);
    v51 = v71;
    v52 = v85;
    *v50 = v71;
    v50[1] = v52;
    v53 = (v43 + ((v42 + 23) & 0xFFFFFFFFFFFFFFF8));
    *v53 = sub_1D9BC102C;
    v53[1] = v37;
    v87 = *(v39 + 16);
    v54 = swift_allocObject();
    swift_weakInit();
    v55 = v75;
    sub_1D9BC0FC4(v76, v75, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v56 = (*(v74 + 80) + 232) & ~*(v74 + 80);
    v57 = (v12 + v56 + 7) & 0xFFFFFFFFFFFFFFF8;
    v58 = swift_allocObject();
    v59 = v77;
    *(v58 + 16) = v54;
    *(v58 + 24) = v59;
    *(v58 + 32) = sub_1D9BC1308;
    *(v58 + 40) = v43;
    v60 = v100;
    *(v58 + 176) = v99;
    *(v58 + 192) = v60;
    *(v58 + 208) = v101;
    *(v58 + 224) = v102;
    v61 = v96;
    *(v58 + 112) = v95;
    *(v58 + 128) = v61;
    v62 = v98;
    *(v58 + 144) = v97;
    *(v58 + 160) = v62;
    v63 = v92;
    *(v58 + 48) = v91;
    *(v58 + 64) = v63;
    v64 = v94;
    *(v58 + 80) = v93;
    *(v58 + 96) = v64;
    sub_1D9BC0D8C(v55, v58 + v56);
    v65 = (v58 + v57);
    *v65 = v51;
    v65[1] = v52;
    v90[4] = sub_1D9BC1404;
    v90[5] = v58;
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 1107296256;
    v90[2] = sub_1D9A0A1E0;
    v90[3] = &block_descriptor_31;
    v66 = _Block_copy(v90);
    swift_unknownObjectRetain_n();
    sub_1D99BB40C(&v91, v89);
    swift_unknownObjectRetain();
    sub_1D99BB40C(&v91, v89);

    v67 = v59;

    v68 = v78;
    sub_1D9C7DA3C();
    v89[0] = MEMORY[0x1E69E7CC0];
    sub_1D9A0E7E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
    sub_1D9A0E83C();
    v69 = v80;
    v70 = v83;
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v68, v69, v66);
    _Block_release(v66);

    swift_unknownObjectRelease_n();
    (*(v82 + 8))(v69, v70);
    (*(v79 + 8))(v68, v81);
  }

  return result;
}

double sub_1D9BBFD5C(__int128 *a1, uint64_t a2, uint64_t a3, char *a4, void (*a5)(uint64_t *), uint64_t a6)
{
  v97 = a5;
  v98 = a6;
  v85 = a3;
  v92 = a2;
  v8 = sub_1D9C7DA2C();
  v90 = *(v8 - 8);
  v91 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v88 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = sub_1D9C7DA4C();
  v87 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v86 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  v82 = *(v11 - 8);
  v12 = *(v82 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v84 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550);
  v81 = *(v13 - 8);
  v14 = *(v81 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v83 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v77 - v16;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB53DC0, &unk_1D9C9C160);
  MEMORY[0x1EEE9AC00](v96);
  v19 = (&v77 - v18);
  v95 = sub_1D9C7D8DC();
  v20 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v77 - v22;
  v24 = a1[9];
  v109 = a1[8];
  v110 = v24;
  v111 = a1[10];
  v112 = *(a1 + 22);
  v25 = a1[5];
  v105 = a1[4];
  v106 = v25;
  v26 = a1[7];
  v107 = a1[6];
  v108 = v26;
  v27 = a1[1];
  v101 = *a1;
  v102 = v27;
  v28 = a1[3];
  v103 = a1[2];
  v104 = v28;
  v29 = *&a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession_lock];
  os_unfair_lock_lock(v29 + 4);
  v93 = a4;
  LODWORD(a4) = a4[OBJC_IVAR____TtC12VisualLookUp13CancelSession__isCanceled];
  os_unfair_lock_unlock(v29 + 4);
  if (a4 == 1)
  {
    static Logger.argos.getter(v23);
    v30 = sub_1D9C7D8BC();
    v31 = sub_1D9C7E09C();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D9962000, v30, v31, "encryptedSearchPIR(): canceled", v32, 2u);
      MEMORY[0x1DA7405F0](v32, -1, -1);
    }

    (*(v20 + 8))(v23, v95);
    sub_1D9A0EEC0();
    v33 = swift_allocError();
    *v34 = 0;
    *v19 = v33;
    swift_storeEnumTagMultiPayload();
    v97(v19);
    sub_1D99A6AE0(v19, &qword_1ECB53DC0, &unk_1D9C9C160);
  }

  else
  {
    v35 = v94;
    v80 = sub_1D9C1A6B0();
    v96 = v37;
    v38 = swift_allocObject();
    v39 = v98;
    *(v38 + 16) = v97;
    *(v38 + 24) = v39;
    v95 = v38;
    v78 = *(v35 + 16);
    sub_1D99AB100(v92, v17, &unk_1ECB51B10, &qword_1D9C86550);
    v40 = *(v81 + 80);
    v41 = (v40 + 16) & ~v40;
    v79 = v40 | 7;
    v81 = v14 + 7;
    v42 = (v14 + 7 + v41) & 0xFFFFFFFFFFFFFFF8;
    v43 = (v42 + 191) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 23) & 0xFFFFFFFFFFFFFFF8;
    v45 = swift_allocObject();
    sub_1D9A0E758(v17, v45 + v41);
    v46 = v45 + v42;
    v47 = v110;
    *(v46 + 128) = v109;
    *(v46 + 144) = v47;
    *(v46 + 160) = v111;
    *(v46 + 176) = v112;
    v48 = v106;
    *(v46 + 64) = v105;
    *(v46 + 80) = v48;
    v49 = v108;
    *(v46 + 96) = v107;
    *(v46 + 112) = v49;
    v50 = v102;
    *v46 = v101;
    *(v46 + 16) = v50;
    v51 = v104;
    *(v46 + 32) = v103;
    *(v46 + 48) = v51;
    v52 = v45;
    v53 = (v45 + v43);
    v54 = v80;
    v55 = v96;
    *v53 = v80;
    v53[1] = v55;
    v56 = (v45 + v44);
    *v56 = sub_1D9BC1688;
    v56[1] = v38;
    v97 = *(v78 + 16);
    v57 = swift_allocObject();
    v94 = v57;
    swift_weakInit();
    v58 = v84;
    sub_1D9BC0FC4(v85, v84, type metadata accessor for Argos_Protos_Queryflow_SearchConfig);
    v59 = v83;
    sub_1D99AB100(v92, v83, &unk_1ECB51B10, &qword_1D9C86550);
    v60 = (*(v82 + 80) + 232) & ~*(v82 + 80);
    v61 = (v12 + v40 + v60) & ~v40;
    v62 = (v81 + v61) & 0xFFFFFFFFFFFFFFF8;
    v63 = swift_allocObject();
    v64 = v93;
    *(v63 + 16) = v57;
    *(v63 + 24) = v64;
    *(v63 + 32) = sub_1D9BC0CB4;
    *(v63 + 40) = v52;
    v65 = v110;
    *(v63 + 176) = v109;
    *(v63 + 192) = v65;
    *(v63 + 208) = v111;
    *(v63 + 224) = v112;
    v66 = v106;
    *(v63 + 112) = v105;
    *(v63 + 128) = v66;
    v67 = v108;
    *(v63 + 144) = v107;
    *(v63 + 160) = v67;
    v68 = v102;
    *(v63 + 48) = v101;
    *(v63 + 64) = v68;
    v69 = v104;
    *(v63 + 80) = v103;
    *(v63 + 96) = v69;
    sub_1D9BC0D8C(v58, v63 + v60);
    sub_1D9A0E758(v59, v63 + v61);
    v70 = (v63 + v62);
    v71 = v96;
    *v70 = v54;
    v70[1] = v71;
    v100[4] = sub_1D9BC0DF0;
    v100[5] = v63;
    v100[0] = MEMORY[0x1E69E9820];
    v100[1] = 1107296256;
    v100[2] = sub_1D9A0A1E0;
    v100[3] = &block_descriptor_19;
    v72 = _Block_copy(v100);
    swift_unknownObjectRetain_n();
    sub_1D99BB40C(&v101, v99);
    swift_unknownObjectRetain();
    sub_1D99BB40C(&v101, v99);

    v73 = v93;

    v74 = v86;
    sub_1D9C7DA3C();
    v99[0] = MEMORY[0x1E69E7CC0];
    sub_1D9A0E7E4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB534D0, &qword_1D9C93AA0);
    sub_1D9A0E83C();
    v75 = v88;
    v76 = v91;
    sub_1D9C7E34C();
    MEMORY[0x1DA73E300](0, v74, v75, v72);
    _Block_release(v72);

    swift_unknownObjectRelease_n();
    (*(v90 + 8))(v75, v76);
    (*(v87 + 8))(v74, v89);
  }

  return result;
}

uint64_t sub_1D9BC0744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, void *), uint64_t a6, uint64_t (*a7)(uint64_t, uint64_t, _OWORD *, uint64_t))
{
  v13 = type metadata accessor for ServerSearchResult(0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a4 + 144);
  v33[8] = *(a4 + 128);
  v33[9] = v17;
  v33[10] = *(a4 + 160);
  v34 = *(a4 + 176);
  v18 = *(a4 + 80);
  v33[4] = *(a4 + 64);
  v33[5] = v18;
  v19 = *(a4 + 112);
  v33[6] = *(a4 + 96);
  v33[7] = v19;
  v20 = *(a4 + 16);
  v33[0] = *a4;
  v21 = *(a4 + 32);
  v22 = *(a4 + 48);
  v33[1] = v20;
  v33[2] = v21;
  v33[3] = v22;
  v23 = a7(a1, a3, v33, a2);
  v25 = v24;
  sub_1D99AB100(a1, v16, &qword_1ECB519C8, &unk_1D9C93AB0);
  v26 = (a1 + *(type metadata accessor for NetworkService.NetworkSearchResponse(0) + 24));
  *&v16[*(v14 + 28)] = v23;
  v27 = *v26;
  v28 = v26[1];
  v29 = &v16[*(v14 + 32)];
  *v29 = v27;
  *(v29 + 1) = v28;
  if (*(v25 + 16))
  {
    v30 = *(v25 + 32);
    v31 = v30;
  }

  else
  {
    v30 = 0;
  }

  a5(v16, v30);

  return sub_1D9BC0F68(v16);
}

uint64_t sub_1D9BC08F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(char *, void *))
{
  v15 = type metadata accessor for ServerSearchResult(0);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a7 + 144);
  v33[8] = *(a7 + 128);
  v33[9] = v19;
  v33[10] = *(a7 + 160);
  v34 = *(a7 + 176);
  v20 = *(a7 + 80);
  v33[4] = *(a7 + 64);
  v33[5] = v20;
  v21 = *(a7 + 112);
  v33[6] = *(a7 + 96);
  v33[7] = v21;
  v22 = *(a7 + 16);
  v33[0] = *a7;
  v23 = *(a7 + 32);
  v24 = *(a7 + 48);
  v33[1] = v22;
  v33[2] = v23;
  v33[3] = v24;
  v25 = sub_1D99DC2C8(a2, a6, v33, a5, a8, a9);
  v27 = v26;
  v28 = sub_1D9C7CBEC();
  (*(*(v28 - 8) + 56))(v18, 1, 1, v28);
  *&v18[*(v16 + 28)] = v25;
  v29 = &v18[*(v16 + 32)];
  *v29 = 0;
  *(v29 + 1) = 0xE000000000000000;
  if (*(v27 + 16))
  {
    v30 = *(v27 + 32);
    v31 = v30;
  }

  else
  {
    v30 = 0;
  }

  a10(v18, v30);

  return sub_1D9BC0F68(v18);
}

uint64_t sub_1D9BC0A9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, void (*a7)(char *, void *))
{
  v14 = type metadata accessor for ServerSearchResult(0);
  v15 = v14 - 8;
  MEMORY[0x1EEE9AC00](v14);
  v17 = v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a4 + 144);
  v32[8] = *(a4 + 128);
  v32[9] = v18;
  v32[10] = *(a4 + 160);
  v33 = *(a4 + 176);
  v19 = *(a4 + 80);
  v32[4] = *(a4 + 64);
  v32[5] = v19;
  v20 = *(a4 + 112);
  v32[6] = *(a4 + 96);
  v32[7] = v20;
  v21 = *(a4 + 16);
  v32[0] = *a4;
  v22 = *(a4 + 32);
  v23 = *(a4 + 48);
  v32[1] = v21;
  v32[2] = v22;
  v32[3] = v23;
  v24 = sub_1D99DDAC4(a1, a3, v32, a2, a5, a6);
  v26 = v25;
  v27 = sub_1D9C7CBEC();
  (*(*(v27 - 8) + 56))(v17, 1, 1, v27);
  *&v17[*(v15 + 28)] = v24;
  v28 = &v17[*(v15 + 32)];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  if (*(v26 + 16))
  {
    v29 = *(v26 + 32);
    v30 = v29;
  }

  else
  {
    v29 = 0;
  }

  a7(v17, v29);

  return sub_1D9BC0F68(v17);
}

uint64_t sub_1D9BC0C48()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D9BC0CB4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 191) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 23) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v2 + v8);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v9);

  return sub_1D9BC0A9C(a1, a2, v2 + v6, v2 + v7, v11, v12, v13);
}

uint64_t sub_1D9BC0D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1D9BC0DF0()
{
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v2 = (*(v1 + 80) + 232) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v5 = (v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1D9AC9F74(v0[2], v0[3], v0[4], v0[5], (v0 + 6), v0 + v2, v0 + v5, *v6, *(v6 + 1));
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t type metadata accessor for ServerSearchResult(uint64_t a1)
{
  result = qword_1EDD2B688;
  if (!qword_1EDD2B688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9BC0F68(uint64_t a1)
{
  v2 = type metadata accessor for ServerSearchResult(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D9BC0FC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_11Tm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  Context = type metadata accessor for VisualQueryContext(0);
  if (!(*(*(Context - 1) + 48))(v5, 1, Context))
  {

    v7 = Context[10];
    v8 = sub_1D9C7B80C();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    swift_unknownObjectRelease();
    v11 = Context[14];
    if (!v10(v5 + v11, 1, v8))
    {
      (*(v9 + 8))(v5 + v11, v8);
    }
  }

  if (*(v0 + v4 + 8) != 1)
  {
  }

  if (*(v0 + v4 + 152))
  {
  }

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, ((((v4 + 191) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

uint64_t sub_1D9BC1308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB51B10, &qword_1D9C86550) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1D9BC08F4(a1, a2, a3, a4, a5, v5 + v12, v5 + v13, *(v5 + ((v13 + 191) & 0xFFFFFFFFFFFFFFF8)), *(v5 + ((v13 + 191) & 0xFFFFFFFFFFFFFFF8) + 8), *(v5 + ((((v13 + 191) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)));
}

double sub_1D9BC1404()
{
  v1 = *(type metadata accessor for Argos_Protos_Queryflow_SearchConfig(0) - 8);
  v2 = (*(v1 + 80) + 232) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  v7 = (v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1D9AC9C50(v3, v4, v5, v6, (v0 + 48), v0 + v2, v8, v9);
}

void sub_1D9BC14D8(uint64_t a1)
{
  sub_1D9BC1564(319);
  if (v1 <= 0x3F)
  {
    sub_1D9BC15BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D9BC1564(uint64_t a1)
{
  if (!qword_1EDD2C2F0)
  {
    sub_1D9C7CBEC();
    v1 = sub_1D9C7E27C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD2C2F0);
    }
  }
}

void sub_1D9BC15BC(uint64_t a1)
{
  if (!qword_1EDD2A850)
  {
    sub_1D9BC1620();
    v1 = sub_1D9C7DBAC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDD2A850);
    }
  }
}

unint64_t sub_1D9BC1620()
{
  result = qword_1EDD2BE10;
  if (!qword_1EDD2BE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDD2BE10);
  }

  return result;
}

uint64_t sub_1D9BC1698(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D9BC1744(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      v9 = v7[7];
      v10 = v7[5];
      v43 = v7[6];
      v44 = v9;
      v11 = v7[7];
      v45[0] = v7[8];
      *(v45 + 13) = *(v7 + 141);
      v12 = v7[3];
      v13 = v7[1];
      v39 = v7[2];
      v40 = v12;
      v14 = v7[3];
      v15 = v7[5];
      v41 = v7[4];
      v42 = v15;
      v16 = v7[1];
      v38[0] = *v7;
      v38[1] = v16;
      v35 = v43;
      v36 = v11;
      v37[0] = v7[8];
      *(v37 + 13) = *(v7 + 141);
      v31 = v39;
      v32 = v14;
      v33 = v41;
      v34 = v10;
      v29 = v38[0];
      v30 = v13;
      sub_1D99AE054(v38, &v20);
      v17 = a1(&v29);
      if (v3)
      {
        break;
      }

      v4 = v17;
      v26 = v35;
      v27 = v36;
      v28[0] = v37[0];
      *(v28 + 13) = *(v37 + 13);
      v22 = v31;
      v23 = v32;
      v24 = v33;
      v25 = v34;
      v20 = v29;
      v21 = v30;
      sub_1D99AE0B0(&v20);
      v18 = v8-- == 0;
      v7 += 10;
      if ((v4 | v18))
      {
        return v4 & 1;
      }
    }

    v26 = v35;
    v27 = v36;
    v28[0] = v37[0];
    *(v28 + 13) = *(v37 + 13);
    v22 = v31;
    v23 = v32;
    v24 = v33;
    v25 = v34;
    v20 = v29;
    v21 = v30;
    sub_1D99AE0B0(&v20);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_1D9BC18D0(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = v6;
      v11[0] = *(v7 - 24);
      v9 = *v7;
      v12 = *(v7 - 1);
      v13 = v9;
      LOBYTE(v4) = (v3 != 0) | (a1)(v11, a2);
      if (v4)
      {
        break;
      }

      v6 = v8 - 1;
      v7 = (v7 + 40);
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_1D9BC1958(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 48);
    do
    {
      v8 = *v7;
      v9 = *(v7 - 1);
      v13[0] = *(v7 - 2);
      v13[1] = v9;
      v14 = v8;

      v10 = (a1)(v13);

      if (v3)
      {
        break;
      }

      v11 = v6-- == 0;
      v7 += 6;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D9BC1A0C(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

void sub_1D9BC1ABC(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  if (v9)
  {
    while (1)
    {
      v12 = v11;
LABEL_8:
      v13 = *(a3 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v9))));
      v14 = *(v13 + 4);
      v16[0] = *v13;
      v17 = v14;
      v15 = a1(v16);
      if (v3 || (v15 & 1) != 0)
      {
        break;
      }

      v9 &= v9 - 1;
      v11 = v12;
      if (!v9)
      {
        goto LABEL_5;
      }
    }

LABEL_12:
  }

  else
  {
LABEL_5:
    while (1)
    {
      v12 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v12 >= v10)
      {
        goto LABEL_12;
      }

      v9 = *(v6 + 8 * v12);
      ++v11;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

unint64_t sub_1D9BC1BF0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 32);
    v3 = v1 - 1;
    if (v1 != 1)
    {
      v4 = (a1 + 36);
      do
      {
        v5 = *v4++;
        v6 = v5;
        if (v2 < v5)
        {
          v2 = v6;
        }

        --v3;
      }

      while (v3);
    }

    v7 = LODWORD(v2);
  }

  else
  {
    v7 = 0;
  }

  return v7 | ((v1 == 0) << 32);
}

unint64_t sub_1D9BC1C48(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v2 = 0;
    return v2 | ((v1 == 0) << 32);
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 9)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFF8 | 1;
      v5 = vdupq_n_s32(v2);
      v6 = (a1 + 52);
      v7 = v3 & 0xFFFFFFFFFFFFFFF8;
      v8 = v5;
      do
      {
        v5 = vmaxq_s32(v5, v6[-1]);
        v8 = vmaxq_s32(v8, *v6);
        v6 += 2;
        v7 -= 8;
      }

      while (v7);
      v2 = vmaxvq_s32(vmaxq_s32(v5, v8));
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFF8))
      {
        return v2 | ((v1 == 0) << 32);
      }
    }

    else
    {
      v4 = 1;
    }

    v9 = v1 - v4;
    v10 = (a1 + 4 * v4 + 32);
    do
    {
      v12 = *v10++;
      v11 = v12;
      if (v2 <= v12)
      {
        v2 = v11;
      }

      --v9;
    }

    while (v9);
  }

  return v2 | ((v1 == 0) << 32);
}

unint64_t sub_1D9BC1CFC(unint64_t result)
{
  v1 = 1 << *(result + 32);
  v2 = -1;
  if (v1 < 64)
  {
    v2 = ~(-1 << v1);
  }

  v3 = v2 & *(result + 64);
  if (v3)
  {
    v4 = 0;
    v5 = __clz(__rbit64(v3));
    v6 = (v3 - 1) & v3;
    v7 = (v1 + 63) >> 6;
LABEL_9:
    v11 = *(result + 56);
    v12 = *(v11 + 4 * v5);
    if (!v6)
    {
      goto LABEL_11;
    }

    do
    {
      v13 = v4;
LABEL_15:
      v14 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v15 = (v13 << 8) | (4 * v14);
      if (v12 < *(v11 + v15))
      {
        v12 = *(v11 + v15);
      }
    }

    while (v6);
LABEL_11:
    while (1)
    {
      v13 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      if (v13 >= v7)
      {
        v16 = 0;
        v17 = LODWORD(v12);
        return v17 | (v16 << 32);
      }

      v6 = *(result + 64 + 8 * v13);
      ++v4;
      if (v6)
      {
        v4 = v13;
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = 0;
    v9 = 0;
    v7 = (v1 + 63) >> 6;
    while (v7 - 1 != v9)
    {
      v4 = v9 + 1;
      v10 = *(result + 72 + 8 * v9);
      v8 -= 64;
      ++v9;
      if (v10)
      {
        v6 = (v10 - 1) & v10;
        v5 = __clz(__rbit64(v10)) - v8;
        goto LABEL_9;
      }
    }

    v17 = 0;
    v16 = 1;
    return v17 | (v16 << 32);
  }

  return result;
}

uint64_t sub_1D9BC1E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540E0, &qword_1D9C93A78);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D99AB100(a3, v25 - v10, &unk_1ECB540E0, &qword_1D9C93A78);
  v12 = sub_1D9C7DFBC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D99A6AE0(v11, &unk_1ECB540E0, &qword_1D9C93A78);
  }

  else
  {
    sub_1D9C7DFAC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D9C7DF9C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D9C7DD2C() + 32;
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

      sub_1D99A6AE0(a3, &unk_1ECB540E0, &qword_1D9C93A78);

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

  sub_1D99A6AE0(a3, &unk_1ECB540E0, &qword_1D9C93A78);
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

uint64_t sub_1D9BC2120()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110, &qword_1D9C9C280);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9C902E0;
  *(v0 + 32) = sub_1D9C7DC7C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1D9C7DC7C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1D9C7DC7C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1D9C7DC7C();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1D9C7DC7C();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_1D9C7DC7C();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_1D9C7DC7C();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_1D9C7DC7C();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_1D9C7DC7C();
  *(v0 + 168) = v9;
  result = sub_1D9C7DC7C();
  *(v0 + 176) = result;
  *(v0 + 184) = v11;
  qword_1EDD417B8 = v0;
  return result;
}

uint64_t sub_1D9BC2260()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB54110, &qword_1D9C9C280);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D9C8CDB0;
  *(v0 + 32) = sub_1D9C7DC7C();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_1D9C7DC7C();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_1D9C7DC7C();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_1D9C7DC7C();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_1D9C7DC7C();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_1D9C7DC7C();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_1D9C7DC7C();
  *(v0 + 136) = v7;
  result = sub_1D9C7DC7C();
  *(v0 + 144) = result;
  *(v0 + 152) = v9;
  qword_1EDD417C0 = v0;
  return result;
}

id sub_1D9BC2378(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  if (*a3 != -1)
  {
    swift_once();
  }

  v5 = sub_1D9C7DF1C();

  return v5;
}

id VisualIntelligenceServiceCompatible.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id VisualIntelligenceServiceCompatible.init()()
{
  v1 = sub_1D9C7D8DC();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v32 = &v32 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540C0, &unk_1D9C93B70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v9 = type metadata accessor for VisualIntelligenceService.Options(0);
  v10 = (v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v33 = &v32 - v14;
  v36 = v0;
  *&v0[OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_cancellables] = MEMORY[0x1E69E7CD0];
  v15 = sub_1D9C7B80C();
  v16 = *(*(v15 - 8) + 56);
  v16(v8, 1, 1, v15);
  v17 = sub_1D9C7DA1C();
  v18 = *(*(v17 - 8) + 56);
  v18(v5, 1, 1, v17);
  v16(v12, 1, 1, v15);
  v19 = v10[7];
  v18(&v12[v19], 1, 1, v17);
  v20 = v32;
  v21 = &v12[v10[8]];
  sub_1D9B33644(v8, v12, &qword_1ECB51FD0, &unk_1D9C862F0);
  sub_1D9B33644(v5, &v12[v19], &unk_1ECB540C0, &unk_1D9C93B70);
  *v21 = 0;
  *(v21 + 1) = 0;
  v12[v10[9]] = 2;
  static Logger.argos.getter(v20);
  v22 = sub_1D9C7D8BC();
  v23 = sub_1D9C7E09C();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v37 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_1D9A0E224(7104878, 0xE300000000000000, &v37);
    *(v24 + 12) = 2080;
    v26 = sub_1D9A0E224(13669, 0xE200000000000000, &v37);

    *(v24 + 14) = v26;
    _os_log_impl(&dword_1D9962000, v22, v23, "mlEngineType = %s -> %s", v24, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v25, -1, -1);
    MEMORY[0x1DA7405F0](v24, -1, -1);
  }

  (*(v34 + 8))(v20, v35);
  sub_1D99A6AE0(v5, &unk_1ECB540C0, &unk_1D9C93B70);
  sub_1D99A6AE0(v8, &qword_1ECB51FD0, &unk_1D9C862F0);
  v27 = v33;
  sub_1D9BCCD70(v12, v33, type metadata accessor for VisualIntelligenceService.Options);
  v28 = _s12VisualLookUp0A19IntelligenceServiceC14serviceOptionsA2C0G0V_tcfC_0(v27);
  v29 = v36;
  *&v36[OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service] = v28;
  v30 = type metadata accessor for VisualIntelligenceServiceCompatible();
  v38.receiver = v29;
  v38.super_class = v30;
  return objc_msgSendSuper2(&v38, sel_init);
}

id VisualIntelligenceServiceCompatible.init(timeoutInterval:)(uint64_t a1)
{
  v3 = sub_1D9C7D8DC();
  v45 = *(v3 - 8);
  v46 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECB540C0, &unk_1D9C93B70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECB51FD0, &unk_1D9C862F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for VisualIntelligenceService.Options(0);
  v12 = (v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v43 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v44 = &v41 - v18;
  v47 = v1;
  *&v1[OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_cancellables] = MEMORY[0x1E69E7CD0];
  v19 = sub_1D9C7B80C();
  v20 = *(*(v19 - 8) + 56);
  v20(v10, 1, 1, v19);
  *v7 = a1;
  v21 = *MEMORY[0x1E69E7F48];
  v22 = sub_1D9C7DA1C();
  v23 = *(v22 - 8);
  (*(v23 + 104))(v7, v21, v22);
  v24 = *(v23 + 56);
  v24(v7, 0, 1, v22);
  v20(v16, 1, 1, v19);
  v25 = v12[7];
  v24(&v16[v25], 1, 1, v22);
  v26 = &v16[v12[8]];
  sub_1D9B33644(v10, v16, &qword_1ECB51FD0, &unk_1D9C862F0);
  v27 = &v16[v25];
  v28 = v42;
  sub_1D9B33644(v7, v27, &unk_1ECB540C0, &unk_1D9C93B70);
  *v26 = 0;
  *(v26 + 1) = 0;
  v16[v12[9]] = 2;
  static Logger.argos.getter(v28);
  v29 = sub_1D9C7D8BC();
  v30 = sub_1D9C7E09C();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v48 = v32;
    *v31 = 136315394;
    *(v31 + 4) = sub_1D9A0E224(7104878, 0xE300000000000000, &v48);
    *(v31 + 12) = 2080;
    v33 = sub_1D9A0E224(13669, 0xE200000000000000, &v48);

    *(v31 + 14) = v33;
    _os_log_impl(&dword_1D9962000, v29, v30, "mlEngineType = %s -> %s", v31, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA7405F0](v32, -1, -1);
    MEMORY[0x1DA7405F0](v31, -1, -1);
  }

  (*(v45 + 8))(v28, v46);
  sub_1D99A6AE0(v7, &unk_1ECB540C0, &unk_1D9C93B70);
  sub_1D99A6AE0(v10, &qword_1ECB51FD0, &unk_1D9C862F0);
  v34 = v44;
  sub_1D9BCCD70(v16, v44, type metadata accessor for VisualIntelligenceService.Options);
  v35 = v43;
  sub_1D9BCBDC4(v34, v43, type metadata accessor for VisualIntelligenceService.Options);
  v36 = _s12VisualLookUp0A19IntelligenceServiceC14serviceOptionsA2C0G0V_tcfC_0(v35);
  v37 = v47;
  *&v47[OBJC_IVAR____TtC12VisualLookUp35VisualIntelligenceServiceCompatible_service] = v36;
  v38 = type metadata accessor for VisualIntelligenceServiceCompatible();
  v49.receiver = v37;
  v49.super_class = v38;
  v39 = objc_msgSendSuper2(&v49, sel_init);
  sub_1D9BCCDD8(v34, type metadata accessor for VisualIntelligenceService.Options);
  return v39;
}