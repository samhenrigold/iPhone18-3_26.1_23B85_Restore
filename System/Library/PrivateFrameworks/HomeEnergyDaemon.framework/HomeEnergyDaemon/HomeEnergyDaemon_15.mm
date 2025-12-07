uint64_t sub_22B2BCF94()
{
  v1 = *(v0 + 656);
  v2 = *(v0 + 632);
  v3 = *(*(v0 + 640) + 8);
  v3(*(v0 + 648), v2);
  v3(v1, v2);
  v4 = *(v0 + 896);
  *(v0 + 904) = v4;
  *(v0 + 464) = v4;
  v5 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (swift_dynamicCast())
  {
    v6 = (*(*(v0 + 608) + 88))(*(v0 + 616), *(v0 + 600));
    if (v6 == *MEMORY[0x277D182D0])
    {
LABEL_3:

      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v7 = *(v0 + 712);
      v8 = *(v0 + 672);
      v9 = *(v0 + 664);
      v10 = __swift_project_value_buffer(v9, qword_28140BD10);
      swift_beginAccess();
      (*(v8 + 16))(v7, v10, v9);
      v11 = sub_22B36050C();
      v12 = sub_22B360D1C();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_22B116000, v11, v12, "[Dropbox] Access Token Expired. Refresh all tokens", v13, 2u);
        MEMORY[0x23188F650](v13, -1, -1);
      }

      v14 = *(v0 + 712);
      v15 = *(v0 + 672);
      v16 = *(v0 + 664);

      (*(v15 + 8))(v14, v16);
      v17 = swift_task_alloc();
      *(v0 + 912) = v17;
      *v17 = v0;
      v18 = sub_22B2BB794;
      goto LABEL_39;
    }

    if (v6 == *MEMORY[0x277D182D8])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v19 = *(v0 + 704);
      v20 = *(v0 + 672);
      v21 = *(v0 + 664);
      v22 = __swift_project_value_buffer(v21, qword_28140BD10);
      swift_beginAccess();
      (*(v20 + 16))(v19, v22, v21);
      v23 = sub_22B36050C();
      v24 = sub_22B360D1C();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22B116000, v23, v24, "[Dropbox] Subscription offboarded from server. Notify user", v25, 2u);
        MEMORY[0x23188F650](v25, -1, -1);
      }

      v26 = *(v0 + 704);
LABEL_20:
      v33 = *(v0 + 672);
      v34 = *(v0 + 664);

      (*(v33 + 8))(v26, v34);
      swift_willThrow();

      goto LABEL_35;
    }

    if (v6 == *MEMORY[0x277D182E0])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v27 = *(v0 + 688);
      v28 = *(v0 + 672);
      v29 = *(v0 + 664);
      v30 = __swift_project_value_buffer(v29, qword_28140BD10);
      swift_beginAccess();
      (*(v28 + 16))(v27, v30, v29);
      v23 = sub_22B36050C();
      v31 = sub_22B360D1C();
      if (os_log_type_enabled(v23, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_22B116000, v23, v31, "[Dropbox] Authorization Code expired. Notify user", v32, 2u);
        MEMORY[0x23188F650](v32, -1, -1);
      }

      v26 = *(v0 + 688);
      goto LABEL_20;
    }

    if (v6 == *MEMORY[0x277D182C0])
    {
      goto LABEL_3;
    }

    if (v6 == *MEMORY[0x277D182C8])
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v35 = *(v0 + 696);
      v36 = *(v0 + 672);
      v37 = *(v0 + 664);
      v38 = __swift_project_value_buffer(v37, qword_28140BD10);
      swift_beginAccess();
      (*(v36 + 16))(v35, v38, v37);
      v23 = sub_22B36050C();
      v39 = sub_22B360D1C();
      if (os_log_type_enabled(v23, v39))
      {
        v40 = swift_slowAlloc();
        *v40 = 0;
        _os_log_impl(&dword_22B116000, v23, v39, "[Dropbox] Refresh Token expired. Notify user", v40, 2u);
        MEMORY[0x23188F650](v40, -1, -1);
      }

      v26 = *(v0 + 696);
      goto LABEL_20;
    }

    (*(*(v0 + 608) + 8))(*(v0 + 616), *(v0 + 600));
  }

  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v41 = *(v0 + 680);
  v42 = *(v0 + 672);
  v43 = *(v0 + 664);
  v44 = __swift_project_value_buffer(v43, qword_28140BD10);
  swift_beginAccess();
  (*(v42 + 16))(v41, v44, v43);
  v45 = v4;
  v46 = sub_22B36050C();
  v47 = sub_22B360D1C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    *v48 = 138543362;
    v50 = v4;
    v51 = _swift_stdlib_bridgeErrorToNSError();
    *(v48 + 4) = v51;
    *v49 = v51;
    _os_log_impl(&dword_22B116000, v46, v47, "[Dropbox] Error refreshing authorization token %{public}@", v48, 0xCu);
    sub_22B123284(v49, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v49, -1, -1);
    MEMORY[0x23188F650](v48, -1, -1);
  }

  v52 = *(v0 + 680);
  v53 = *(v0 + 672);
  v54 = *(v0 + 664);

  (*(v53 + 8))(v52, v54);
  *(v0 + 472) = v4;
  v55 = v4;
  if (!swift_dynamicCast())
  {
    v17 = swift_task_alloc();
    *(v0 + 928) = v17;
    *v17 = v0;
    v18 = sub_22B2BBA58;
LABEL_39:
    v17[1] = v18;
    v58 = *(v0 + 552);
    v59 = *(v0 + 544);
    v60 = *(v0 + 536);
    v61 = *(v0 + 528);
    v62 = *(v0 + 520);
    v63 = *(v0 + 512);
    v65 = *(v0 + 480);
    v64 = *(v0 + 488);

    return sub_22B2B30B0(v65, v64, v63, v62, v61, v60, v59, v58);
  }

  (*(*(v0 + 584) + 8))(*(v0 + 592), *(v0 + 576));
  swift_willThrow();
LABEL_35:

  v56 = *(v0 + 8);

  return v56();
}

uint64_t sub_22B2BD8EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B2BDA78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22B2BDC04(uint64_t a1)
{
  v2[200] = v1;
  v2[199] = a1;
  v3 = sub_22B3602EC();
  v2[201] = v3;
  v2[202] = *(v3 - 8);
  v2[203] = swift_task_alloc();
  v4 = sub_22B3602FC();
  v2[204] = v4;
  v2[205] = *(v4 - 8);
  v2[206] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BA080, &unk_22B364280);
  v2[207] = swift_task_alloc();
  v5 = sub_22B35E0BC();
  v2[208] = v5;
  v2[209] = *(v5 - 8);
  v2[210] = swift_task_alloc();
  v6 = sub_22B35EE4C();
  v2[211] = v6;
  v2[212] = *(v6 - 8);
  v2[213] = swift_task_alloc();
  v2[214] = swift_task_alloc();
  v2[215] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v2[216] = swift_task_alloc();
  v2[217] = swift_task_alloc();
  v2[218] = swift_task_alloc();
  v2[219] = swift_task_alloc();
  v2[220] = swift_task_alloc();
  v2[221] = swift_task_alloc();
  v2[222] = swift_task_alloc();
  v7 = sub_22B35DE9C();
  v2[223] = v7;
  v2[224] = *(v7 - 8);
  v2[225] = swift_task_alloc();
  v2[226] = swift_task_alloc();
  v2[227] = swift_task_alloc();
  v2[228] = swift_task_alloc();
  v2[229] = swift_task_alloc();
  v2[230] = swift_task_alloc();
  v2[231] = swift_task_alloc();
  v2[232] = swift_task_alloc();
  v2[233] = swift_task_alloc();
  v2[234] = swift_task_alloc();
  v8 = sub_22B36052C();
  v2[235] = v8;
  v2[236] = *(v8 - 8);
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  v2[243] = swift_task_alloc();
  v2[244] = swift_task_alloc();
  v2[245] = swift_task_alloc();
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v2[248] = swift_task_alloc();
  v2[249] = swift_task_alloc();
  v2[250] = swift_task_alloc();
  v2[251] = swift_task_alloc();
  v2[252] = swift_task_alloc();
  v2[253] = swift_task_alloc();
  v2[254] = swift_task_alloc();
  v2[255] = swift_task_alloc();
  v2[256] = swift_task_alloc();
  v2[257] = swift_task_alloc();
  v2[258] = swift_task_alloc();
  v2[259] = swift_task_alloc();
  v2[260] = swift_task_alloc();
  v2[261] = swift_task_alloc();
  v2[262] = swift_task_alloc();
  v2[263] = swift_task_alloc();
  v9 = sub_22B36037C();
  v2[264] = v9;
  v2[265] = *(v9 - 8);
  v2[266] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2BE164, v1, 0);
}

uint64_t sub_22B2BE164()
{
  v334 = v0;
  v1 = v0[199];
  v0[198] = v1;
  v2 = v1;
  v3 = sub_22B35F14C();
  v0[267] = v4;
  if (!v4)
  {
    goto LABEL_24;
  }

  v5 = v3;
  v6 = v4;
  v7 = sub_22B35F06C();
  v0[268] = v8;
  if (!v8)
  {
LABEL_23:

LABEL_24:
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v25 = v0[243];
    v26 = v0[236];
    v27 = v0[235];
    v28 = v0[199];
    v29 = __swift_project_value_buffer(v27, qword_28140BD10);
    swift_beginAccess();
    (*(v26 + 16))(v25, v29, v27);
    v30 = v28;
    v31 = sub_22B36050C();
    v32 = sub_22B360D1C();
    v33 = os_log_type_enabled(v31, v32);
    v34 = v0[243];
    v35 = v0[236];
    v36 = v0[235];
    v37 = v0[199];
    if (v33)
    {
      v326 = v0[243];
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v333[0] = v39;
      *v38 = 136446210;
      v40 = sub_22B35F3AC();
      v42 = sub_22B1A7B20(v40, v41, v333);

      *(v38 + 4) = v42;

      _os_log_impl(&dword_22B116000, v31, v32, "[Dropbox] Failed to refresh AMI Data for %{public}s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x23188F650](v39, -1, -1);
      MEMORY[0x23188F650](v38, -1, -1);

      (*(v35 + 8))(v326, v36);
    }

    else
    {

      (*(v35 + 8))(v34, v36);
    }

    goto LABEL_30;
  }

  v9 = v7;
  v10 = v8;
  v11 = sub_22B35F0BC();
  v0[269] = v12;
  if (!v12)
  {
LABEL_22:

    goto LABEL_23;
  }

  v13 = v11;
  v14 = v12;
  v15 = sub_22B35F43C();
  v0[270] = v15;
  v0[271] = v16;
  v275 = v0;
  if (!v16)
  {
LABEL_21:

    goto LABEL_22;
  }

  v17 = v16;
  v325 = v15;
  v18 = sub_22B35F12C();
  v0[272] = v18;
  v0[273] = v19;
  if (!v19)
  {
LABEL_20:

    goto LABEL_21;
  }

  v20 = HIBYTE(v6) & 0xF;
  if ((v6 & 0x2000000000000000) == 0)
  {
    v20 = v5 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v21 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v21)
  {
    goto LABEL_19;
  }

  v22 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v22 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v22)
  {
LABEL_19:

    goto LABEL_20;
  }

  v302 = v18;
  v314 = v19;
  v23 = sub_22B35F14C();
  if (!v24)
  {
    sub_22B134CDC();
    v45 = swift_allocError();
    *v46 = 23;
    swift_willThrow();
    v52 = v0[199];
    v0[332] = v52;
    v0[331] = v45;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v327 = v52;
    v53 = v0[242];
    v54 = v0[236];
    v55 = v0[235];
    v56 = __swift_project_value_buffer(v275[235], qword_28140BD10);
    swift_beginAccess();
    v313 = *(v54 + 16);
    v315 = v56;
    v313(v53, v56, v55);
    v57 = v45;
    v58 = v45;
    v59 = sub_22B36050C();
    v60 = sub_22B360D1C();
    v61 = os_log_type_enabled(v59, v60);
    v62 = v275[242];
    v63 = v275[236];
    v64 = v275[235];
    if (v61)
    {
      v65 = v45;
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v333[0] = v68;
      *v66 = 136446466;
      v303 = v62;
      v69 = v327;
      v300 = v64;
      v70 = sub_22B35F3AC();
      v72 = v71;

      v73 = sub_22B1A7B20(v70, v72, v333);

      *(v66 + 4) = v73;
      *(v66 + 12) = 2114;
      v74 = v65;
      v75 = _swift_stdlib_bridgeErrorToNSError();
      *(v66 + 14) = v75;
      *v67 = v75;

      _os_log_impl(&dword_22B116000, v59, v60, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v66, 0x16u);
      sub_22B123284(v67, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v67, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v68);
      MEMORY[0x23188F650](v68, -1, -1);
      v76 = v66;
      v45 = v65;
      MEMORY[0x23188F650](v76, -1, -1);

      v77 = *(v63 + 8);
      v77(v303, v300);
    }

    else
    {

      v77 = *(v63 + 8);
      v77(v62, v64);
    }

    v78 = v275;
    v275[195] = v45;
    v79 = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    if (swift_dynamicCast())
    {
      v80 = (*(v275[205] + 88))(v275[206], v275[204]);
      if (v80 == *MEMORY[0x277D182D0])
      {
        goto LABEL_45;
      }

      if (v80 == *MEMORY[0x277D182D8])
      {
        v85 = v275[213];
        v86 = v275[212];
        v87 = v275[211];

        (*(v86 + 104))(v85, *MEMORY[0x277D07348], v87);
        v88 = v327;
        sub_22B35EE3C();
        (*(v86 + 8))(v85, v87);
        sub_22B35F39C();

        v88;
        v89 = swift_task_alloc();
        v275[333] = v89;
        *v89 = v275;
        v90 = sub_22B2CC1C8;
        goto LABEL_130;
      }

      if (v80 == *MEMORY[0x277D182E0] || v80 == *MEMORY[0x277D182C8])
      {
LABEL_45:

        if (qword_281408E18 != -1)
        {
          swift_once();
        }

        v81 = qword_28140BCA0;
        v275[334] = qword_28140BCA0;
        if (v81 && (v82 = sub_22B36081C(), v83 = [v81 dictionaryForKey_], v82, v83))
        {
          v84 = sub_22B3606EC();
        }

        else
        {
          v84 = sub_22B321AAC(MEMORY[0x277D84F90]);
        }

        v275[193] = v84;
        v91 = sub_22B35F3AC();
        sub_22B2AC400(v91, v92, v84, v275 + 68);

        if (v275[139])
        {
          v93 = MEMORY[0x277D83B88];
          if (swift_dynamicCast())
          {
            v94 = v275[192];
            v95 = v275[235];
            if (v94 < 10)
            {
              v313(v275[240], v315, v95);
              v96 = sub_22B36050C();
              v97 = sub_22B360D1C();
              v98 = os_log_type_enabled(v96, v97);
              v99 = v275[240];
              v100 = v275[235];
              if (v98)
              {
                v101 = swift_slowAlloc();
                v102 = swift_slowAlloc();
                v333[0] = v102;
                *v101 = 136315394;
                v103 = v327;
                v328 = v99;
                v104 = v103;
                v294 = v100;
                v105 = sub_22B35F3AC();
                v317 = v77;
                v107 = v106;

                v108 = sub_22B1A7B20(v105, v107, v333);

                *(v101 + 4) = v108;
                *(v101 + 12) = 2048;
                v109 = v94 + 1;
                *(v101 + 14) = v109;

                _os_log_impl(&dword_22B116000, v96, v97, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v101, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v102);
                v110 = v102;
                v78 = v275;
                MEMORY[0x23188F650](v110, -1, -1);
                MEMORY[0x23188F650](v101, -1, -1);

                v317(v328, v294);
              }

              else
              {

                v77(v99, v100);
                v109 = v94 + 1;
              }

              v155 = sub_22B35F3AC();
              v157 = v269;
              v78[155] = v93;
              v78[152] = v109;
              sub_22B172454(v78 + 76, v78 + 78);
              v270 = v78[193];
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v333[0] = v270;
              v160 = v78 + 156;
LABEL_75:
              sub_22B33F298(v160, v155, v157, isUniquelyReferenced_nonNull_native);

              v78[193] = v333[0];
              v161 = v78[334];
              if (v161)
              {
                v162 = sub_22B3606CC();
                v163 = sub_22B36081C();
                [v161 setObject:v162 forKey:v163];
              }

              goto LABEL_78;
            }

            v313(v275[241], v315, v95);
            v225 = sub_22B36050C();
            v226 = sub_22B360D1C();
            v227 = os_log_type_enabled(v225, v226);
            v228 = v275[241];
            v229 = v275[235];
            if (v227)
            {
              v324 = v77;
              v230 = swift_slowAlloc();
              v231 = swift_slowAlloc();
              v333[0] = v231;
              *v230 = 136315138;
              v232 = v327;
              v311 = v228;
              v233 = v327;
              v305 = v229;
              v234 = sub_22B35F3AC();
              v236 = v235;

              v237 = sub_22B1A7B20(v234, v236, v333);

              *(v230 + 4) = v237;

              _os_log_impl(&dword_22B116000, v225, v226, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v230, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v231);
              MEMORY[0x23188F650](v231, -1, -1);
              MEMORY[0x23188F650](v230, -1, -1);

              v324(v311, v305);
            }

            else
            {

              v77(v228, v229);
              v232 = v327;
            }

            v271 = v275[213];
            v272 = v275[212];
            v273 = v275[211];
            (*(v272 + 104))(v271, *MEMORY[0x277D07350], v273);
            v274 = v232;
            sub_22B35EE3C();
            (*(v272 + 8))(v271, v273);
            sub_22B35F39C();

            v274;
            v89 = swift_task_alloc();
            v275[335] = v89;
            *v89 = v275;
            v90 = sub_22B2CC67C;
LABEL_130:
            v89[1] = v90;

            return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
          }
        }

        else
        {
          sub_22B123284((v275 + 136), &unk_27D8BA950, &qword_22B364940);
        }

        v313(v275[239], v315, v275[235]);
        v142 = sub_22B36050C();
        v143 = sub_22B360D1C();
        v144 = os_log_type_enabled(v142, v143);
        v145 = v275[239];
        v146 = v275[235];
        if (v144)
        {
          v319 = v77;
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v333[0] = v148;
          *v147 = 136315138;
          v149 = v327;
          v330 = v145;
          v150 = v149;
          v307 = v146;
          v151 = sub_22B35F3AC();
          v153 = v152;

          v154 = sub_22B1A7B20(v151, v153, v333);

          *(v147 + 4) = v154;

          _os_log_impl(&dword_22B116000, v142, v143, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v147, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v148);
          MEMORY[0x23188F650](v148, -1, -1);
          MEMORY[0x23188F650](v147, -1, -1);

          v319(v330, v307);
        }

        else
        {

          v77(v145, v146);
        }

        v78 = v275;
        v155 = sub_22B35F3AC();
        v157 = v156;
        v275[143] = MEMORY[0x277D83B88];
        v275[140] = 1;
        sub_22B172454(v78 + 70, v78 + 72);
        v158 = v275[193];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v333[0] = v158;
        v160 = v275 + 144;
        goto LABEL_75;
      }

      (*(v275[205] + 8))(v275[206], v275[204]);
    }

    v275[194] = v45;
    v111 = v45;
    v112 = swift_dynamicCast();
    v113 = v275[235];
    if (v112)
    {
      v114 = v275[238];
      (*(v275[202] + 8))(v275[203], v275[201]);
      v313(v114, v315, v113);
      v115 = v45;
      v116 = v45;
      v117 = sub_22B36050C();
      v118 = sub_22B360D1C();
      v119 = os_log_type_enabled(v117, v118);
      v120 = v275[238];
      v121 = v275[235];
      if (v119)
      {
        v122 = swift_slowAlloc();
        v304 = v121;
        v123 = swift_slowAlloc();
        v301 = swift_slowAlloc();
        v333[0] = v301;
        *v122 = 136446466;
        v295 = v117;
        v124 = v327;
        v318 = v77;
        v329 = v120;
        v125 = sub_22B35F3AC();
        v127 = v126;

        v128 = sub_22B1A7B20(v125, v127, v333);

        *(v122 + 4) = v128;
        *(v122 + 12) = 2114;
        v129 = v45;
        v130 = _swift_stdlib_bridgeErrorToNSError();
        *(v122 + 14) = v130;
        *v123 = v130;

        v131 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_67:
        _os_log_impl(&dword_22B116000, v295, v118, v131, v122, 0x16u);
        sub_22B123284(v123, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v123, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v301);
        MEMORY[0x23188F650](v301, -1, -1);
        MEMORY[0x23188F650](v122, -1, -1);

        v318(v329, v304);
LABEL_69:
        v78 = v275;
LABEL_78:
        v164 = v78[332];
        swift_willThrow();

        v43 = v78[1];
        goto LABEL_31;
      }
    }

    else
    {
      v313(v275[237], v315, v275[235]);
      v132 = v45;
      v133 = v45;
      v117 = sub_22B36050C();
      v118 = sub_22B360D1C();
      v134 = os_log_type_enabled(v117, v118);
      v120 = v275[237];
      v121 = v275[235];
      if (v134)
      {
        v122 = swift_slowAlloc();
        v304 = v121;
        v123 = swift_slowAlloc();
        v301 = swift_slowAlloc();
        v333[0] = v301;
        *v122 = 136446466;
        v295 = v117;
        v135 = v327;
        v318 = v77;
        v329 = v120;
        v136 = sub_22B35F3AC();
        v138 = v137;

        v139 = sub_22B1A7B20(v136, v138, v333);

        *(v122 + 4) = v139;
        *(v122 + 12) = 2114;
        v140 = v45;
        v141 = _swift_stdlib_bridgeErrorToNSError();
        *(v122 + 14) = v141;
        *v123 = v141;

        v131 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_67;
      }
    }

    v77(v120, v121);
    goto LABEL_69;
  }

  v299 = v13;
  v312 = v24;
  v283 = v23;
  v306 = MEMORY[0x23188EEB0]();

  sub_22B36034C();
  v47 = v0[200];
  v48 = sub_22B36035C();
  v49 = v48;
  if (*(v47 + 117))
  {
    v316 = v48;
    v50 = v0[224];
    v290 = v0[222];
    v293 = v0[223];
    sub_22B36036C();
    if ((*(v50 + 48))(v290, 1, v293) == 1)
    {
      v51 = v0[222];
      (*(v0[265] + 8))(v0[266], v0[264]);
      sub_22B123284(v51, &qword_27D8BA340, &qword_22B363FB0);
      v49 = v316;
    }

    else
    {
      v291 = v0[232];
      v296 = v0[233];
      v165 = v0[223];
      v284 = v0[265];
      v287 = v0[264];
      v166 = v0[224];
      v279 = v275[234];
      v281 = v275[266];
      (*(v166 + 32))();
      sub_22B35F62C();
      sub_22B35DDCC();
      sub_22B35DE6C();
      sub_22B2EC1B8(&qword_28140B490, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
      v277 = sub_22B36074C();
      v167 = *(v166 + 8);
      v167(v291, v165);
      v167(v296, v165);
      v167(v279, v165);
      (*(v284 + 8))(v281, v287);
      v49 |= v277 ^ 1;
    }
  }

  else
  {
    (*(v0[265] + 8))(v0[266], v0[264]);
  }

  objc_autoreleasePoolPop(v306);
  v320 = v49;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v168 = v275[262];
  v169 = v275[236];
  v297 = v275[235];
  v308 = v275[199];
  v170 = __swift_project_value_buffer(v297, qword_28140BD10);
  v275[274] = v170;
  swift_beginAccess();
  v171 = *(v169 + 16);
  v275[275] = v171;
  v275[276] = (v169 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v288 = v170;
  v285 = v171;
  v171(v168, v170, v297);
  v172 = v308;
  v173 = sub_22B36050C();
  v282 = sub_22B360D2C();
  v174 = os_log_type_enabled(v173, v282);
  v309 = v275[262];
  v175 = v275[236];
  v298 = v275[235];
  v176 = v275[199];
  if (v174)
  {
    v177 = swift_slowAlloc();
    v278 = swift_slowAlloc();
    v333[0] = v278;
    *v177 = 136315394;
    v178 = sub_22B35F3AC();
    v280 = v175;
    v276 = v173;
    v180 = sub_22B1A7B20(v178, v179, v333);

    *(v177 + 4) = v180;

    *(v177 + 12) = 2080;
    v181 = v320;
    if (v320)
    {
      v182 = 0x64657269707865;
    }

    else
    {
      v182 = 0x64696C6176;
    }

    if (v320)
    {
      v183 = 0xE700000000000000;
    }

    else
    {
      v183 = 0xE500000000000000;
    }

    v184 = sub_22B1A7B20(v182, v183, v333);

    *(v177 + 14) = v184;
    _os_log_impl(&dword_22B116000, v276, v282, "[Dropbox] CKToken for %s: %s", v177, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v278, -1, -1);
    MEMORY[0x23188F650](v177, -1, -1);

    v185 = *(v280 + 8);
    v185(v309, v298);
  }

  else
  {

    v185 = *(v175 + 8);
    v185(v309, v298);
    v181 = v320;
  }

  v275[277] = v185;
  v310 = v185;
  if ((v181 & 1) != 0 || *(v275[200] + 115) == 1)
  {
    v186 = v275[199];
    v285(v275[261], v288, v275[235]);
    v187 = v186;
    swift_bridgeObjectRetain_n();
    v188 = v187;
    v189 = sub_22B36050C();
    v292 = sub_22B360D2C();
    v190 = os_log_type_enabled(v189, v292);
    v191 = v275[261];
    v321 = v275[235];
    v192 = v275[199];
    if (v190)
    {
      v193 = swift_slowAlloc();
      v286 = swift_slowAlloc();
      v333[0] = v286;
      *v193 = 136446466;
      v194 = sub_22B35F3AC();
      v289 = v191;
      v196 = sub_22B1A7B20(v194, v195, v333);

      *(v193 + 4) = v196;

      *(v193 + 12) = 2082;

      v197 = sub_22B1A7B20(v302, v314, v333);

      *(v193 + 14) = v197;

      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_22B116000, v189, v292, "[Dropbox] Refreshing ck token for %{public}s subscription: %{public}s", v193, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v286, -1, -1);
      MEMORY[0x23188F650](v193, -1, -1);

      v198 = v289;
    }

    else
    {

      swift_bridgeObjectRelease_n();

      v198 = v191;
    }

    v310(v198, v321);
    v322 = sub_22B35F3AC();
    v200 = v199;
    v275[278] = v199;
    sub_22B35F2CC();
    v201 = swift_task_alloc();
    v275[279] = v201;
    *v201 = v275;
    v201[1] = sub_22B2C0B1C;
    v202 = v275[221];
    v337 = v17;
    v338 = v202;
    v336 = v325;

    return sub_22B2B9260(v5, v6, v9, v10, v299, v14, v322, v200);
  }

  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v203 = qword_28140BCA0;
  v204 = v275;
  if (qword_28140BCA0 && (v205 = sub_22B36081C(), v206 = [v203 dictionaryForKey_], v205, v206))
  {
    v207 = sub_22B3606EC();
  }

  else
  {
    v207 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  v208 = sub_22B35F3AC();
  sub_22B2AC400(v208, v209, v207, v275 + 82);

  if (v275[167])
  {
    if (swift_dynamicCast())
    {
      v285(v275[258], v288, v275[235]);
      v210 = sub_22B36050C();
      v211 = sub_22B360D2C();
      v212 = os_log_type_enabled(v210, v211);
      v213 = v275[258];
      v214 = v275[235];
      if (v212)
      {
        v331 = v275[258];
        v215 = v275[199];
        v323 = v275[235];
        v216 = swift_slowAlloc();
        v217 = swift_slowAlloc();
        v333[0] = v217;
        *v216 = 136315138;
        v218 = v215;
        v219 = sub_22B35F3AC();
        v221 = v220;

        v204 = v275;
        v222 = sub_22B1A7B20(v219, v221, v333);

        *(v216 + 4) = v222;
        _os_log_impl(&dword_22B116000, v210, v211, "[Dropbox] Token is valid.Clearing UtilityExpiredAttempts for %s", v216, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v217);
        MEMORY[0x23188F650](v217, -1, -1);
        MEMORY[0x23188F650](v216, -1, -1);

        v224 = v323;
        v223 = v331;
      }

      else
      {

        v223 = v213;
        v224 = v214;
      }

      v310(v223, v224);
      v238 = sub_22B35F3AC();
      sub_22B2E641C(v238, v239, v204 + 66);

      sub_22B123284((v204 + 132), &unk_27D8BA950, &qword_22B364940);
      if (v203)
      {
        v240 = sub_22B3606CC();
        v241 = sub_22B36081C();
        [v203 setObject:v240 forKey:v241];
      }
    }
  }

  else
  {
    sub_22B123284((v275 + 164), &unk_27D8BA950, &qword_22B364940);
  }

  v242 = v204[199];
  v204[284] = v242;
  v204[283] = v312;
  v204[282] = 0;
  v243 = v204[200];
  v204[285] = v283;
  if (*(v243 + 113) == 1)
  {
    v332 = v242;
    v244 = v204[275];
    v245 = v204[274];
    v246 = v204[257];
    v247 = v204[235];

    v244(v246, v245, v247);
    v248 = sub_22B36050C();
    v249 = sub_22B360D1C();
    if (os_log_type_enabled(v248, v249))
    {
      v250 = swift_slowAlloc();
      *v250 = 0;
      _os_log_impl(&dword_22B116000, v248, v249, "********** WARNING INTERNAL TESTING FLAG IS SET **********: This should not appear in normal use, only occur in testing scenarios Check com.apple.EnergyKit defaults", v250, 2u);
      MEMORY[0x23188F650](v250, -1, -1);
    }

    v0 = v275;
    v251 = v275[277];
    v252 = v275[275];
    v253 = v275[274];
    v254 = v275[257];
    v255 = v275[256];
    v256 = v275[235];

    v251(v254, v256);
    v252(v255, v253, v256);
    v257 = sub_22B36050C();
    v258 = sub_22B360D2C();
    v259 = os_log_type_enabled(v257, v258);
    v260 = v275[277];
    v261 = v275[256];
    v262 = v275[235];
    if (v259)
    {
      v263 = swift_slowAlloc();
      *v263 = 0;
      _os_log_impl(&dword_22B116000, v257, v258, "[DropBox] Dropbox disabled. Enable it on DUT to fetch from server", v263, 2u);
      MEMORY[0x23188F650](v263, -1, -1);
    }

    v260(v261, v262);
LABEL_30:

    v43 = v0[1];
LABEL_31:

    return v43();
  }

  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v264 = qword_28140BDD0;
  v204[286] = qword_28140BDD0;
  v265 = v242;
  v266 = sub_22B35F04C();
  v268 = v267;

  v204[287] = v266;
  v204[288] = v268;

  return MEMORY[0x2822009F8](sub_22B2C2C04, v264, 0);
}

uint64_t sub_22B2C0B1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 2240) = a1;
  *(v4 + 2248) = v1;

  v5 = *(v3 + 1768);
  v6 = *(v3 + 1600);
  sub_22B123284(v5, &qword_27D8BA340, &qword_22B363FB0);

  if (v1)
  {
    v7 = sub_22B2CCBE8;
  }

  else
  {
    v7 = sub_22B2C0C9C;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_22B2C0C9C()
{
  v231 = v0;
  v1 = *(v0 + 2240);

  *(v0 + 1584) = v1;
  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v2 = qword_28140BCA0;
  if (qword_28140BCA0 && (v3 = sub_22B36081C(), v4 = [v2 dictionaryForKey_], v3, v4))
  {
    v5 = sub_22B3606EC();
  }

  else
  {
    v5 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  v6 = sub_22B35F3AC();
  sub_22B2AC400(v6, v7, v5, (v0 + 1024));

  if (*(v0 + 1048))
  {
    if (swift_dynamicCast())
    {
      (*(v0 + 2200))(*(v0 + 2080), *(v0 + 2192), *(v0 + 1880));
      v8 = sub_22B36050C();
      v9 = sub_22B360D2C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = *(v0 + 2240);
        v223 = *(v0 + 2080);
        v224 = *(v0 + 2216);
        v219 = *(v0 + 1880);
        v11 = swift_slowAlloc();
        v12 = swift_slowAlloc();
        v230[0] = v12;
        *v11 = 136315138;
        v13 = v10;
        v14 = sub_22B35F3AC();
        v16 = v15;

        v17 = sub_22B1A7B20(v14, v16, v230);

        *(v11 + 4) = v17;
        _os_log_impl(&dword_22B116000, v8, v9, "[Dropbox] Successful token refresh.Clearing UtilityExpiredAttempts for %s", v11, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v12);
        MEMORY[0x23188F650](v12, -1, -1);
        MEMORY[0x23188F650](v11, -1, -1);

        v224(v223, v219);
      }

      else
      {
        v18 = *(v0 + 2216);
        v19 = *(v0 + 2080);
        v20 = *(v0 + 1880);

        v18(v19, v20);
      }

      v21 = sub_22B35F3AC();
      sub_22B2E641C(v21, v22, (v0 + 1280));

      sub_22B123284(v0 + 1280, &unk_27D8BA950, &qword_22B364940);
      if (v2)
      {
        v23 = sub_22B3606CC();
        v24 = sub_22B36081C();
        [v2 setObject:v23 forKey:v24];
      }
    }
  }

  else
  {
    sub_22B123284(v0 + 1024, &unk_27D8BA950, &qword_22B364940);
  }

  v25 = *(v0 + 2240);
  v26 = sub_22B35F14C();
  v28 = v27;

  if (!v28)
  {
    sub_22B134CDC();
    v40 = swift_allocError();
    *v41 = 23;
    swift_willThrow();

    v42 = *(v0 + 2240);
    *(v0 + 2656) = v42;
    *(v0 + 2648) = v40;
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v43 = *(v0 + 1936);
    v44 = *(v0 + 1888);
    v45 = *(v0 + 1880);
    v46 = __swift_project_value_buffer(v45, qword_28140BD10);
    swift_beginAccess();
    v221 = v46;
    v217 = *(v44 + 16);
    v217(v43, v46, v45);
    v47 = v40;
    v48 = v40;
    v49 = sub_22B36050C();
    v50 = sub_22B360D1C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 1936);
    v53 = *(v0 + 1888);
    v54 = *(v0 + 1880);
    v212 = v42;
    if (v51)
    {
      v55 = swift_slowAlloc();
      v209 = v54;
      v56 = swift_slowAlloc();
      v204 = swift_slowAlloc();
      v230[0] = v204;
      *v55 = 136446466;
      v206 = v52;
      v57 = v42;
      v58 = sub_22B35F3AC();
      v60 = v59;

      v61 = sub_22B1A7B20(v58, v60, v230);

      *(v55 + 4) = v61;
      *(v55 + 12) = 2114;
      v62 = v40;
      v63 = _swift_stdlib_bridgeErrorToNSError();
      *(v55 + 14) = v63;
      *v56 = v63;

      _os_log_impl(&dword_22B116000, v49, v50, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v55, 0x16u);
      sub_22B123284(v56, &unk_27D8BAA90, &unk_22B362BC0);
      MEMORY[0x23188F650](v56, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v204);
      MEMORY[0x23188F650](v204, -1, -1);
      MEMORY[0x23188F650](v55, -1, -1);

      v64 = *(v53 + 8);
      v64(v206, v209);
    }

    else
    {

      v64 = *(v53 + 8);
      v64(v52, v54);
    }

    *(v0 + 1560) = v40;
    v87 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
    if (swift_dynamicCast())
    {
      v88 = (*(*(v0 + 1640) + 88))(*(v0 + 1648), *(v0 + 1632));
      if (v88 == *MEMORY[0x277D182D0])
      {
        goto LABEL_32;
      }

      if (v88 == *MEMORY[0x277D182D8])
      {
        v100 = *(v0 + 1704);
        v101 = *(v0 + 1696);
        v102 = *(v0 + 1688);

        (*(v101 + 104))(v100, *MEMORY[0x277D07348], v102);
        v103 = v212;
        sub_22B35EE3C();
        (*(v101 + 8))(v100, v102);
        sub_22B35F39C();

        v103;
        v104 = swift_task_alloc();
        *(v0 + 2664) = v104;
        *v104 = v0;
        v105 = sub_22B2CC1C8;
        goto LABEL_81;
      }

      if (v88 == *MEMORY[0x277D182E0] || v88 == *MEMORY[0x277D182C8])
      {
LABEL_32:

        if (qword_281408E18 != -1)
        {
          swift_once();
        }

        v89 = qword_28140BCA0;
        *(v0 + 2672) = qword_28140BCA0;
        if (v89 && (v90 = sub_22B36081C(), v91 = [v89 dictionaryForKey_], v90, v91))
        {
          v92 = sub_22B3606EC();
        }

        else
        {
          v92 = sub_22B321AAC(MEMORY[0x277D84F90]);
        }

        *(v0 + 1544) = v92;
        v106 = sub_22B35F3AC();
        sub_22B2AC400(v106, v107, v92, (v0 + 1088));

        if (*(v0 + 1112))
        {
          v108 = MEMORY[0x277D83B88];
          if (swift_dynamicCast())
          {
            v109 = *(v0 + 1536);
            v110 = *(v0 + 1880);
            if (v109 < 10)
            {
              v217(*(v0 + 1920), v221, v110);
              v111 = sub_22B36050C();
              v112 = sub_22B360D1C();
              v113 = os_log_type_enabled(v111, v112);
              v114 = *(v0 + 1920);
              v115 = *(v0 + 1880);
              if (v113)
              {
                v207 = *(v0 + 1880);
                v116 = swift_slowAlloc();
                v117 = swift_slowAlloc();
                v230[0] = v117;
                *v116 = 136315394;
                v118 = v212;
                v213 = v114;
                v119 = v118;
                v120 = sub_22B35F3AC();
                v122 = v121;

                v123 = v120;
                v108 = MEMORY[0x277D83B88];
                v124 = sub_22B1A7B20(v123, v122, v230);

                *(v116 + 4) = v124;
                *(v116 + 12) = 2048;
                v125 = v109 + 1;
                *(v116 + 14) = v125;

                _os_log_impl(&dword_22B116000, v111, v112, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v116, 0x16u);
                __swift_destroy_boxed_opaque_existential_0(v117);
                MEMORY[0x23188F650](v117, -1, -1);
                MEMORY[0x23188F650](v116, -1, -1);

                v64(v213, v207);
              }

              else
              {

                v64(v114, v115);
                v125 = v109 + 1;
              }

              v192 = sub_22B35F3AC();
              v194 = v193;
              *(v0 + 1240) = v108;
              *(v0 + 1216) = v125;
              sub_22B172454((v0 + 1216), (v0 + 1248));
              v195 = *(v0 + 1544);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v230[0] = v195;
              sub_22B33F298((v0 + 1248), v192, v194, isUniquelyReferenced_nonNull_native);
LABEL_68:

              *(v0 + 1544) = v230[0];
              v175 = *(v0 + 2672);
              if (v175)
              {
                v176 = sub_22B3606CC();
                v177 = sub_22B36081C();
                [v175 setObject:v176 forKey:v177];
              }

              goto LABEL_71;
            }

            v217(*(v0 + 1928), v221, v110);
            v179 = sub_22B36050C();
            v180 = sub_22B360D1C();
            v181 = os_log_type_enabled(v179, v180);
            v182 = *(v0 + 1928);
            v183 = *(v0 + 1880);
            if (v181)
            {
              v184 = swift_slowAlloc();
              v218 = v183;
              v185 = swift_slowAlloc();
              v230[0] = v185;
              *v184 = 136315138;
              v186 = v212;
              v211 = v182;
              v187 = v212;
              v229 = v64;
              v188 = sub_22B35F3AC();
              v190 = v189;

              v191 = sub_22B1A7B20(v188, v190, v230);

              *(v184 + 4) = v191;

              _os_log_impl(&dword_22B116000, v179, v180, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v184, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v185);
              MEMORY[0x23188F650](v185, -1, -1);
              MEMORY[0x23188F650](v184, -1, -1);

              v229(v211, v218);
            }

            else
            {

              v64(v182, v183);
              v186 = v212;
            }

            v197 = *(v0 + 1704);
            v198 = *(v0 + 1696);
            v199 = *(v0 + 1688);
            (*(v198 + 104))(v197, *MEMORY[0x277D07350], v199);
            v200 = v186;
            sub_22B35EE3C();
            (*(v198 + 8))(v197, v199);
            sub_22B35F39C();

            v200;
            v104 = swift_task_alloc();
            *(v0 + 2680) = v104;
            *v104 = v0;
            v105 = sub_22B2CC67C;
LABEL_81:
            v104[1] = v105;

            return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
          }
        }

        else
        {
          sub_22B123284(v0 + 1088, &unk_27D8BA950, &qword_22B364940);
        }

        v217(*(v0 + 1912), v221, *(v0 + 1880));
        v157 = sub_22B36050C();
        v158 = sub_22B360D1C();
        v159 = os_log_type_enabled(v157, v158);
        v160 = *(v0 + 1912);
        v161 = *(v0 + 1880);
        if (v159)
        {
          v162 = swift_slowAlloc();
          v163 = swift_slowAlloc();
          v230[0] = v163;
          *v162 = 136315138;
          v164 = v212;
          v215 = v160;
          v165 = v164;
          v228 = v64;
          v166 = sub_22B35F3AC();
          v168 = v167;

          v169 = sub_22B1A7B20(v166, v168, v230);

          *(v162 + 4) = v169;

          _os_log_impl(&dword_22B116000, v157, v158, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v162, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v163);
          MEMORY[0x23188F650](v163, -1, -1);
          MEMORY[0x23188F650](v162, -1, -1);

          v228(v215, v161);
        }

        else
        {

          v64(v160, v161);
        }

        v170 = sub_22B35F3AC();
        v172 = v171;
        *(v0 + 1144) = MEMORY[0x277D83B88];
        *(v0 + 1120) = 1;
        sub_22B172454((v0 + 1120), (v0 + 1152));
        v173 = *(v0 + 1544);
        v174 = swift_isUniquelyReferenced_nonNull_native();
        v230[0] = v173;
        sub_22B33F298((v0 + 1152), v170, v172, v174);
        goto LABEL_68;
      }

      (*(*(v0 + 1640) + 8))(*(v0 + 1648), *(v0 + 1632));
    }

    *(v0 + 1552) = v40;
    v126 = v40;
    v127 = swift_dynamicCast();
    v128 = *(v0 + 1880);
    if (v127)
    {
      v129 = *(v0 + 1904);
      (*(*(v0 + 1616) + 8))(*(v0 + 1624), *(v0 + 1608));
      v217(v129, v221, v128);
      v130 = v40;
      v131 = v40;
      v132 = sub_22B36050C();
      v133 = sub_22B360D1C();
      v134 = os_log_type_enabled(v132, v133);
      v135 = *(v0 + 1904);
      v136 = *(v0 + 1880);
      if (v134)
      {
        v227 = v64;
        v137 = swift_slowAlloc();
        v202 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        v230[0] = v208;
        *v137 = 136446466;
        v205 = v132;
        v138 = v212;
        v210 = v136;
        v214 = v135;
        v139 = sub_22B35F3AC();
        v141 = v140;

        v142 = sub_22B1A7B20(v139, v141, v230);

        *(v137 + 4) = v142;
        *(v137 + 12) = 2114;
        v143 = v40;
        v144 = _swift_stdlib_bridgeErrorToNSError();
        *(v137 + 14) = v144;
        v145 = v202;
        *v202 = v144;

        v146 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_61:
        _os_log_impl(&dword_22B116000, v205, v133, v146, v137, 0x16u);
        sub_22B123284(v145, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v145, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v208);
        MEMORY[0x23188F650](v208, -1, -1);
        MEMORY[0x23188F650](v137, -1, -1);

        v227(v214, v210);
LABEL_71:
        v178 = *(v0 + 2656);
        swift_willThrow();

        v94 = *(v0 + 8);
        goto LABEL_72;
      }
    }

    else
    {
      v217(*(v0 + 1896), v221, *(v0 + 1880));
      v147 = v40;
      v148 = v40;
      v132 = sub_22B36050C();
      v133 = sub_22B360D1C();
      v149 = os_log_type_enabled(v132, v133);
      v135 = *(v0 + 1896);
      v136 = *(v0 + 1880);
      if (v149)
      {
        v227 = v64;
        v137 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        v208 = swift_slowAlloc();
        v230[0] = v208;
        *v137 = 136446466;
        v205 = v132;
        v150 = v212;
        v210 = v136;
        v214 = v135;
        v151 = sub_22B35F3AC();
        v153 = v152;

        v154 = sub_22B1A7B20(v151, v153, v230);

        *(v137 + 4) = v154;
        *(v137 + 12) = 2114;
        v155 = v40;
        v156 = _swift_stdlib_bridgeErrorToNSError();
        *(v137 + 14) = v156;
        v145 = v203;
        *v203 = v156;

        v146 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_61;
      }
    }

    v64(v135, v136);
    goto LABEL_71;
  }

  if (sub_22B360BFC())
  {
    v29 = *(v0 + 2200);
    v30 = *(v0 + 2192);
    v31 = *(v0 + 2072);
    v32 = *(v0 + 1880);

    v29(v31, v30, v32);
    v33 = sub_22B36050C();
    v34 = sub_22B360D1C();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 2216);
    v37 = *(v0 + 2072);
    v225 = *(v0 + 1880);
    if (v35)
    {
      v220 = *(v0 + 2072);
      v38 = swift_slowAlloc();
      v216 = v36;
      v39 = swift_slowAlloc();
      v230[0] = v39;
      *v38 = 136315394;
      *(v38 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36DA60, v230);
      *(v38 + 12) = 2048;
      *(v38 + 14) = 995;

      _os_log_impl(&dword_22B116000, v33, v34, "[Dropbox] Task is cancelled at marker %s:%ld", v38, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x23188F650](v39, -1, -1);
      MEMORY[0x23188F650](v38, -1, -1);

      v216(v220, v225);
    }

    else
    {

      v36(v37, v225);
    }

    v93 = *(v0 + 2240);

LABEL_39:

    v94 = *(v0 + 8);
LABEL_72:

    return v94();
  }

  v65 = *(v0 + 2248);
  v66 = *(v0 + 2240);
  *(v0 + 2272) = v66;
  *(v0 + 2264) = v28;
  *(v0 + 2256) = v65;
  v67 = *(v0 + 1600);
  *(v0 + 2280) = v26;
  if (*(v67 + 113) == 1)
  {
    v226 = v66;
    v222 = *(v0 + 2200);
    v68 = *(v0 + 2192);
    v69 = *(v0 + 2056);
    v70 = *(v0 + 1880);

    v222(v69, v68, v70);
    v71 = sub_22B36050C();
    v72 = sub_22B360D1C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_22B116000, v71, v72, "********** WARNING INTERNAL TESTING FLAG IS SET **********: This should not appear in normal use, only occur in testing scenarios Check com.apple.EnergyKit defaults", v73, 2u);
      MEMORY[0x23188F650](v73, -1, -1);
    }

    v74 = *(v0 + 2216);
    v75 = *(v0 + 2200);
    v76 = *(v0 + 2192);
    v77 = *(v0 + 2056);
    v78 = *(v0 + 2048);
    v79 = *(v0 + 1880);

    v74(v77, v79);
    v75(v78, v76, v79);
    v80 = sub_22B36050C();
    v81 = sub_22B360D2C();
    v82 = os_log_type_enabled(v80, v81);
    v83 = *(v0 + 2216);
    v84 = *(v0 + 2048);
    v85 = *(v0 + 1880);
    if (v82)
    {
      v86 = swift_slowAlloc();
      *v86 = 0;
      _os_log_impl(&dword_22B116000, v80, v81, "[DropBox] Dropbox disabled. Enable it on DUT to fetch from server", v86, 2u);
      MEMORY[0x23188F650](v86, -1, -1);
    }

    v83(v84, v85);
    goto LABEL_39;
  }

  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  v95 = qword_28140BDD0;
  *(v0 + 2288) = qword_28140BDD0;
  v96 = v66;
  v97 = sub_22B35F04C();
  v99 = v98;

  *(v0 + 2296) = v97;
  *(v0 + 2304) = v99;

  return MEMORY[0x2822009F8](sub_22B2C2C04, v95, 0);
}

uint64_t sub_22B2C2C04()
{
  v1 = v0[282];
  sub_22B143598(v0[287], v0[288], 0);
  v0[289] = v2;
  v0[290] = v1;
  if (v1)
  {
    v3 = v0[200];

    v4 = sub_22B2CE068;
    v5 = v3;
  }

  else
  {
    v6 = v0[200];

    v4 = sub_22B2C2CC8;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22B2C2CC8()
{
  v1 = *(v0 + 1792);
  v2 = *(v0 + 1784);
  v3 = *(v0 + 1760);
  v4 = *(v0 + 2272);
  sub_22B35F30C();

  v5 = *(v1 + 48);
  *(v0 + 2328) = v5;
  *(v0 + 2336) = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  if (v5(v3, 1, v2) == 1)
  {
    v6 = *(v0 + 1864);
    v7 = *(v0 + 1792);
    v8 = *(v0 + 1784);
    v9 = *(v0 + 1760);
    sub_22B35DE6C();
    sub_22B35DDCC();
    (*(v7 + 8))(v6, v8);
    if (v5(v9, 1, v8) != 1)
    {
      sub_22B123284(*(v0 + 1760), &qword_27D8BA340, &qword_22B363FB0);
    }
  }

  else
  {
    (*(*(v0 + 1792) + 32))(*(v0 + 1848), *(v0 + 1760), *(v0 + 1784));
  }

  v10 = *(v0 + 1864);
  v11 = *(v0 + 1856);
  v12 = *(v0 + 1792);
  v13 = *(v0 + 1784);
  sub_22B35DE6C();
  sub_22B35DDCC();
  v14 = *(v12 + 8);
  *(v0 + 2344) = v14;
  *(v0 + 2352) = (v12 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v14(v11, v13);
  LOBYTE(v11) = sub_22B35DDEC();
  v14(v10, v13);
  if ((v11 & 1) != 0 && (*(*(v0 + 1600) + 114) & 1) == 0)
  {
    v50 = *(v0 + 1848);
    v51 = *(v0 + 1840);
    v52 = *(v0 + 1792);
    v53 = *(v0 + 1784);
    (*(v0 + 2200))(*(v0 + 2040), *(v0 + 2192), *(v0 + 1880));
    (*(v52 + 16))(v51, v50, v53);
    v54 = sub_22B36050C();
    v160 = sub_22B360D2C();
    v55 = os_log_type_enabled(v54, v160);
    v56 = *(v0 + 2216);
    v57 = *(v0 + 2040);
    v58 = *(v0 + 1880);
    v59 = *(v0 + 1840);
    v60 = *(v0 + 1784);
    if (v55)
    {
      v156 = *(v0 + 1880);
      v61 = swift_slowAlloc();
      v153 = v57;
      v62 = swift_slowAlloc();
      v164 = v62;
      *v61 = 136446210;
      sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v63 = sub_22B36131C();
      v147 = v56;
      v65 = sub_22B1A7B20(v63, v64, &v164);

      *(v61 + 4) = v65;
      v14(v59, v60);
      _os_log_impl(&dword_22B116000, v54, v160, "[DropBox] UsagePoint last updated under an hour ago at %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x23188F650](v62, -1, -1);
      MEMORY[0x23188F650](v61, -1, -1);

      v147(v153, v156);
    }

    else
    {
      v14(*(v0 + 1840), *(v0 + 1784));

      v56(v57, v58);
    }

    v66 = *(v0 + 2328);
    v67 = *(v0 + 1784);
    v68 = *(v0 + 1752);
    v69 = *(v0 + 2272);
    sub_22B35F34C();

    if (v66(v68, 1, v67) == 1)
    {
      v70 = *(v0 + 2344);
      v71 = *(v0 + 2328);
      v72 = *(v0 + 1864);
      v73 = *(v0 + 1784);
      v74 = *(v0 + 1752);
      sub_22B35DE6C();
      sub_22B35DDCC();
      v70(v72, v73);
      if (v71(v74, 1, v73) != 1)
      {
        sub_22B123284(*(v0 + 1752), &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    else
    {
      (*(*(v0 + 1792) + 32))(*(v0 + 1832), *(v0 + 1752), *(v0 + 1784));
    }

    v75 = *(v0 + 2344);
    v76 = *(v0 + 1864);
    v77 = *(v0 + 1856);
    v78 = *(v0 + 1784);
    sub_22B35DE6C();
    sub_22B35DDCC();
    v75(v77, v78);
    LOBYTE(v77) = sub_22B35DDEC();
    v75(v76, v78);
    if ((v77 & 1) != 0 && (*(*(v0 + 1600) + 114) & 1) == 0)
    {
      v113 = *(v0 + 1848);
      v114 = *(v0 + 1824);
      v115 = *(v0 + 1792);
      v116 = *(v0 + 1784);
      (*(v0 + 2200))(*(v0 + 2016), *(v0 + 2192), *(v0 + 1880));
      (*(v115 + 16))(v114, v113, v116);
      v117 = sub_22B36050C();
      v118 = sub_22B360D2C();
      v119 = os_log_type_enabled(v117, v118);
      v120 = *(v0 + 2344);
      v121 = *(v0 + 2216);
      v122 = *(v0 + 2016);
      v123 = *(v0 + 1880);
      v124 = *(v0 + 1824);
      v125 = *(v0 + 1784);
      if (v119)
      {
        v162 = *(v0 + 2016);
        v126 = swift_slowAlloc();
        v158 = v123;
        v127 = swift_slowAlloc();
        v164 = v127;
        *v126 = 136446210;
        sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v128 = sub_22B36131C();
        v149 = v121;
        v130 = sub_22B1A7B20(v128, v129, &v164);

        *(v126 + 4) = v130;
        v120(v124, v125);
        _os_log_impl(&dword_22B116000, v117, v118, "[DropBox] UsageSummary last updated under an hour ago at %{public}s", v126, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v127);
        MEMORY[0x23188F650](v127, -1, -1);
        MEMORY[0x23188F650](v126, -1, -1);

        v149(v162, v158);
      }

      else
      {
        v120(*(v0 + 1824), *(v0 + 1784));

        v121(v122, v123);
      }

      v131 = *(v0 + 2328);
      v132 = *(v0 + 1784);
      v133 = *(v0 + 1744);
      v134 = *(v0 + 2272);
      sub_22B35F36C();

      if (v131(v133, 1, v132) == 1)
      {
        v135 = *(v0 + 2344);
        v136 = *(v0 + 2328);
        v137 = *(v0 + 1864);
        v138 = *(v0 + 1784);
        v139 = *(v0 + 1744);
        sub_22B35DE6C();
        sub_22B35DDCC();
        v135(v137, v138);
        if (v136(v139, 1, v138) != 1)
        {
          sub_22B123284(*(v0 + 1744), &qword_27D8BA340, &qword_22B363FB0);
        }
      }

      else
      {
        (*(*(v0 + 1792) + 32))(*(v0 + 1816), *(v0 + 1744), *(v0 + 1784));
      }

      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v140 = *(v0 + 2184);
      v141 = *(v0 + 2168);
      v142 = swift_task_alloc();
      *(v0 + 2440) = v142;
      *v142 = v0;
      v142[1] = sub_22B2C5238;
      v143 = *(v0 + 2176);
      v144 = *(v0 + 2160);
      v145 = *(v0 + 1736);

      return sub_22B306350(v145, v143, v140, v144, v141);
    }

    else
    {
      v79 = *(v0 + 2200);
      v80 = *(v0 + 2192);
      v81 = *(v0 + 2008);
      v82 = *(v0 + 1880);
      v83 = *(v0 + 2272);
      v84 = sub_22B35F26C();
      v86 = v85;

      *(v0 + 2400) = v84;
      *(v0 + 2408) = v86;
      v79(v81, v80, v82);
      swift_bridgeObjectRetain_n();
      v87 = sub_22B36050C();
      v88 = sub_22B360D2C();
      if (os_log_type_enabled(v87, v88))
      {
        v89 = *(v0 + 2272);
        v90 = *(v0 + 2184);
        v91 = *(v0 + 2176);
        v151 = *(v0 + 2008);
        v154 = *(v0 + 2216);
        v148 = *(v0 + 1880);
        v161 = v84;
        v92 = swift_slowAlloc();
        v157 = v86;
        v93 = swift_slowAlloc();
        v164 = v93;
        *v92 = 136446466;
        v94 = v89;
        v95 = sub_22B35F3AC();
        v97 = v96;

        v98 = sub_22B1A7B20(v95, v97, &v164);

        *(v92 + 4) = v98;
        *(v92 + 12) = 2082;

        v99 = sub_22B1A7B20(v91, v90, &v164);

        *(v92 + 14) = v99;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_22B116000, v87, v88, "[Dropbox] Refreshing UsageSummary for %{public}s subscription: %{public}s", v92, 0x16u);
        swift_arrayDestroy();
        v100 = v93;
        v86 = v157;
        MEMORY[0x23188F650](v100, -1, -1);
        v101 = v92;
        v84 = v161;
        MEMORY[0x23188F650](v101, -1, -1);

        v154(v151, v148);
      }

      else
      {
        v102 = *(v0 + 2216);
        v103 = *(v0 + 2008);
        v104 = *(v0 + 1880);

        swift_bridgeObjectRelease_n();
        v102(v103, v104);
      }

      v105 = *(v0 + 2272);
      v106 = sub_22B35F3AC();
      v108 = v107;

      *(v0 + 2416) = v108;
      v109 = swift_task_alloc();
      *(v0 + 2424) = v109;
      *v109 = v0;
      v109[1] = sub_22B2C4980;
      v110 = *(v0 + 2280);
      v111 = *(v0 + 2264);
      v112 = *(v0 + 1832);

      return sub_22B2B0150(v110, v111, v112, v84, v86, 100, v106, v108);
    }
  }

  else
  {
    v15 = *(v0 + 2200);
    v16 = *(v0 + 2192);
    v17 = *(v0 + 2032);
    v18 = *(v0 + 1880);
    v19 = *(v0 + 2272);
    v20 = sub_22B35F24C();
    v22 = v21;

    *(v0 + 2360) = v20;
    *(v0 + 2368) = v22;
    v15(v17, v16, v18);
    swift_bridgeObjectRetain_n();
    v23 = sub_22B36050C();
    v24 = sub_22B360D2C();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 2272);
      v26 = *(v0 + 2184);
      v27 = *(v0 + 2176);
      v150 = *(v0 + 2032);
      v152 = *(v0 + 2216);
      v146 = *(v0 + 1880);
      v159 = v20;
      v28 = swift_slowAlloc();
      v155 = v22;
      v29 = swift_slowAlloc();
      v164 = v29;
      *v28 = 136446466;
      v30 = v25;
      v31 = sub_22B35F3AC();
      v33 = v32;

      v34 = sub_22B1A7B20(v31, v33, &v164);

      *(v28 + 4) = v34;
      *(v28 + 12) = 2082;

      v35 = sub_22B1A7B20(v27, v26, &v164);

      *(v28 + 14) = v35;
      swift_bridgeObjectRelease_n();
      _os_log_impl(&dword_22B116000, v23, v24, "[Dropbox] Refreshing UsagePoints for %{public}s subscription: %{public}s", v28, 0x16u);
      swift_arrayDestroy();
      v36 = v29;
      v22 = v155;
      MEMORY[0x23188F650](v36, -1, -1);
      v37 = v28;
      v20 = v159;
      MEMORY[0x23188F650](v37, -1, -1);

      v152(v150, v146);
    }

    else
    {
      v38 = *(v0 + 2216);
      v39 = *(v0 + 2032);
      v40 = *(v0 + 1880);

      swift_bridgeObjectRelease_n();
      v38(v39, v40);
    }

    v41 = *(v0 + 2272);
    v42 = sub_22B35F3AC();
    v44 = v43;

    *(v0 + 2376) = v44;
    v45 = swift_task_alloc();
    *(v0 + 2384) = v45;
    *v45 = v0;
    v45[1] = sub_22B2C3AF0;
    v46 = *(v0 + 2280);
    v47 = *(v0 + 2264);
    v48 = *(v0 + 1848);

    return sub_22B2AC578(v46, v47, v48, v20, v22, 5, v42, v44);
  }
}

uint64_t sub_22B2C3AF0()
{
  v2 = *v1;
  *(*v1 + 2392) = v0;

  if (v0)
  {
    v3 = *(v2 + 1600);

    v4 = sub_22B2CF4E8;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 1600);

    v4 = sub_22B2C3C48;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22B2C3C48(uint64_t a1)
{
  if (sub_22B360BFC())
  {
    v2 = *(v1 + 2200);
    v3 = *(v1 + 2192);
    v4 = *(v1 + 2024);
    v5 = *(v1 + 1880);

    v2(v4, v3, v5);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    v8 = os_log_type_enabled(v6, v7);
    v96 = *(v1 + 2360);
    v97 = *(v1 + 2368);
    v9 = *(v1 + 2272);
    v106 = *(v1 + 2216);
    v109 = *(v1 + 2344);
    v98 = *(v1 + 1880);
    v99 = *(v1 + 2024);
    v102 = *(v1 + 1784);
    v104 = *(v1 + 1848);
    if (v8)
    {
      v94 = *(v1 + 2312);
      v95 = *(v1 + 2272);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v113 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36DA60, &v113);
      *(v10 + 12) = 2048;
      *(v10 + 14) = 1070;

      _os_log_impl(&dword_22B116000, v6, v7, "[Dropbox] Task is cancelled at marker %s:%ld", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23188F650](v11, -1, -1);
      MEMORY[0x23188F650](v10, -1, -1);

      sub_22B12F174(v96, v97);
      v106(v99, v98);
      v109(v104, v102);
    }

    else
    {

      sub_22B12F174(v96, v97);

      v106(v99, v98);
      v109(v104, v102);
    }

    v21 = *(v1 + 8);

    return v21();
  }

  else
  {
    sub_22B12F174(*(v1 + 2360), *(v1 + 2368));
    v12 = *(v1 + 2328);
    v13 = *(v1 + 1784);
    v14 = *(v1 + 1752);
    v15 = *(v1 + 2272);
    sub_22B35F34C();

    if (v12(v14, 1, v13) == 1)
    {
      v16 = *(v1 + 2344);
      v17 = *(v1 + 2328);
      v18 = *(v1 + 1864);
      v19 = *(v1 + 1784);
      v20 = *(v1 + 1752);
      sub_22B35DE6C();
      sub_22B35DDCC();
      v16(v18, v19);
      if (v17(v20, 1, v19) != 1)
      {
        sub_22B123284(*(v1 + 1752), &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    else
    {
      (*(*(v1 + 1792) + 32))(*(v1 + 1832), *(v1 + 1752), *(v1 + 1784));
    }

    v23 = *(v1 + 2344);
    v24 = *(v1 + 1864);
    v25 = *(v1 + 1856);
    v26 = *(v1 + 1784);
    sub_22B35DE6C();
    sub_22B35DDCC();
    v23(v25, v26);
    LOBYTE(v25) = sub_22B35DDEC();
    v23(v24, v26);
    if ((v25 & 1) != 0 && (*(*(v1 + 1600) + 114) & 1) == 0)
    {
      v61 = *(v1 + 1848);
      v62 = *(v1 + 1824);
      v63 = *(v1 + 1792);
      v64 = *(v1 + 1784);
      (*(v1 + 2200))(*(v1 + 2016), *(v1 + 2192), *(v1 + 1880));
      (*(v63 + 16))(v62, v61, v64);
      v65 = sub_22B36050C();
      v66 = sub_22B360D2C();
      v67 = os_log_type_enabled(v65, v66);
      v68 = *(v1 + 2344);
      v69 = *(v1 + 2216);
      v70 = *(v1 + 2016);
      v71 = *(v1 + 1880);
      v72 = *(v1 + 1824);
      v73 = *(v1 + 1784);
      if (v67)
      {
        v111 = *(v1 + 2016);
        v74 = swift_slowAlloc();
        v108 = v71;
        v75 = swift_slowAlloc();
        v113 = v75;
        *v74 = 136446210;
        sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v76 = sub_22B36131C();
        v101 = v69;
        v78 = sub_22B1A7B20(v76, v77, &v113);

        *(v74 + 4) = v78;
        v68(v72, v73);
        _os_log_impl(&dword_22B116000, v65, v66, "[DropBox] UsageSummary last updated under an hour ago at %{public}s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v75);
        MEMORY[0x23188F650](v75, -1, -1);
        MEMORY[0x23188F650](v74, -1, -1);

        v101(v111, v108);
      }

      else
      {
        v68(*(v1 + 1824), *(v1 + 1784));

        v69(v70, v71);
      }

      v79 = *(v1 + 2328);
      v80 = *(v1 + 1784);
      v81 = *(v1 + 1744);
      v82 = *(v1 + 2272);
      sub_22B35F36C();

      if (v79(v81, 1, v80) == 1)
      {
        v83 = *(v1 + 2344);
        v84 = *(v1 + 2328);
        v85 = *(v1 + 1864);
        v86 = *(v1 + 1784);
        v87 = *(v1 + 1744);
        sub_22B35DE6C();
        sub_22B35DDCC();
        v83(v85, v86);
        if (v84(v87, 1, v86) != 1)
        {
          sub_22B123284(*(v1 + 1744), &qword_27D8BA340, &qword_22B363FB0);
        }
      }

      else
      {
        (*(*(v1 + 1792) + 32))(*(v1 + 1816), *(v1 + 1744), *(v1 + 1784));
      }

      if (qword_2814099B0 != -1)
      {
        swift_once();
      }

      v88 = *(v1 + 2184);
      v89 = *(v1 + 2168);
      v90 = swift_task_alloc();
      *(v1 + 2440) = v90;
      *v90 = v1;
      v90[1] = sub_22B2C5238;
      v91 = *(v1 + 2176);
      v92 = *(v1 + 2160);
      v93 = *(v1 + 1736);

      return sub_22B306350(v93, v91, v88, v92, v89);
    }

    else
    {
      v27 = *(v1 + 2200);
      v28 = *(v1 + 2192);
      v29 = *(v1 + 2008);
      v30 = *(v1 + 1880);
      v31 = *(v1 + 2272);
      v32 = sub_22B35F26C();
      v34 = v33;

      *(v1 + 2400) = v32;
      *(v1 + 2408) = v34;
      v27(v29, v28, v30);
      swift_bridgeObjectRetain_n();
      v35 = sub_22B36050C();
      v36 = sub_22B360D2C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = *(v1 + 2272);
        v38 = *(v1 + 2184);
        v39 = *(v1 + 2176);
        v103 = *(v1 + 2008);
        v105 = *(v1 + 2216);
        v100 = *(v1 + 1880);
        v110 = v32;
        v40 = swift_slowAlloc();
        v107 = v34;
        v41 = swift_slowAlloc();
        v113 = v41;
        *v40 = 136446466;
        v42 = v37;
        v43 = sub_22B35F3AC();
        v45 = v44;

        v46 = sub_22B1A7B20(v43, v45, &v113);

        *(v40 + 4) = v46;
        *(v40 + 12) = 2082;

        v47 = sub_22B1A7B20(v39, v38, &v113);

        *(v40 + 14) = v47;
        swift_bridgeObjectRelease_n();
        _os_log_impl(&dword_22B116000, v35, v36, "[Dropbox] Refreshing UsageSummary for %{public}s subscription: %{public}s", v40, 0x16u);
        swift_arrayDestroy();
        v48 = v41;
        v34 = v107;
        MEMORY[0x23188F650](v48, -1, -1);
        v49 = v40;
        v32 = v110;
        MEMORY[0x23188F650](v49, -1, -1);

        v105(v103, v100);
      }

      else
      {
        v50 = *(v1 + 2216);
        v51 = *(v1 + 2008);
        v52 = *(v1 + 1880);

        swift_bridgeObjectRelease_n();
        v50(v51, v52);
      }

      v53 = *(v1 + 2272);
      v54 = sub_22B35F3AC();
      v56 = v55;

      *(v1 + 2416) = v56;
      v57 = swift_task_alloc();
      *(v1 + 2424) = v57;
      *v57 = v1;
      v57[1] = sub_22B2C4980;
      v58 = *(v1 + 2280);
      v59 = *(v1 + 2264);
      v60 = *(v1 + 1832);

      return sub_22B2B0150(v58, v59, v60, v32, v34, 100, v54, v56);
    }
  }
}

uint64_t sub_22B2C4980()
{
  v2 = *v1;
  *(*v1 + 2432) = v0;

  if (v0)
  {
    v3 = *(v2 + 1600);

    v4 = sub_22B2D09A0;
    v5 = v3;
  }

  else
  {
    v6 = *(v2 + 1600);

    v4 = sub_22B2C4AD8;
    v5 = v6;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22B2C4AD8(uint64_t a1)
{
  v41 = v1;
  if (sub_22B360BFC())
  {
    v2 = *(v1 + 2200);
    v3 = *(v1 + 2192);
    v4 = *(v1 + 2000);
    v5 = *(v1 + 1880);

    v2(v4, v3, v5);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    v8 = os_log_type_enabled(v6, v7);
    v31 = *(v1 + 2400);
    v32 = *(v1 + 2408);
    v9 = *(v1 + 2272);
    v38 = *(v1 + 2216);
    v39 = *(v1 + 2344);
    v33 = *(v1 + 1880);
    v34 = *(v1 + 2000);
    v35 = *(v1 + 1832);
    v36 = *(v1 + 1784);
    v37 = *(v1 + 1848);
    if (v8)
    {
      v29 = *(v1 + 2312);
      v10 = swift_slowAlloc();
      v30 = v9;
      v11 = swift_slowAlloc();
      v40 = v11;
      *v10 = 136315394;
      *(v10 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36DA60, &v40);
      *(v10 + 12) = 2048;
      *(v10 + 14) = 1114;

      _os_log_impl(&dword_22B116000, v6, v7, "[Dropbox] Task is cancelled at marker %s:%ld", v10, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x23188F650](v11, -1, -1);
      MEMORY[0x23188F650](v10, -1, -1);

      sub_22B12F174(v31, v32);
      v38(v34, v33);
      v39(v35, v36);
      v39(v37, v36);
    }

    else
    {

      sub_22B12F174(v31, v32);

      v38(v34, v33);
      v39(v35, v36);
      v39(v37, v36);
    }

    v21 = *(v1 + 8);

    return v21();
  }

  else
  {
    sub_22B12F174(*(v1 + 2400), *(v1 + 2408));
    v12 = *(v1 + 2328);
    v13 = *(v1 + 1784);
    v14 = *(v1 + 1744);
    v15 = *(v1 + 2272);
    sub_22B35F36C();

    if (v12(v14, 1, v13) == 1)
    {
      v16 = *(v1 + 2344);
      v17 = *(v1 + 2328);
      v18 = *(v1 + 1864);
      v19 = *(v1 + 1784);
      v20 = *(v1 + 1744);
      sub_22B35DE6C();
      sub_22B35DDCC();
      v16(v18, v19);
      if (v17(v20, 1, v19) != 1)
      {
        sub_22B123284(*(v1 + 1744), &qword_27D8BA340, &qword_22B363FB0);
      }
    }

    else
    {
      (*(*(v1 + 1792) + 32))(*(v1 + 1816), *(v1 + 1744), *(v1 + 1784));
    }

    if (qword_2814099B0 != -1)
    {
      swift_once();
    }

    v23 = *(v1 + 2184);
    v24 = *(v1 + 2168);
    v25 = swift_task_alloc();
    *(v1 + 2440) = v25;
    *v25 = v1;
    v25[1] = sub_22B2C5238;
    v26 = *(v1 + 2176);
    v27 = *(v1 + 2160);
    v28 = *(v1 + 1736);

    return sub_22B306350(v28, v26, v23, v27, v24);
  }
}

uint64_t sub_22B2C5238()
{
  v1 = *(*v0 + 1600);

  return MEMORY[0x2822009F8](sub_22B2C5348, v1, 0);
}

uint64_t sub_22B2C5348()
{
  v151 = v0;
  v1 = *(v0 + 1736);
  v2 = (*(v0 + 2328))(v1, 1, *(v0 + 1784));
  sub_22B123284(v1, &qword_27D8BA340, &qword_22B363FB0);
  if (v2 == 1)
  {
LABEL_2:
    v3 = *(v0 + 2272);
    *(v0 + 2488) = v3;
    v4 = *(v0 + 2344);
    v5 = *(v0 + 1864);
    v6 = *(v0 + 1856);
    v7 = *(v0 + 1784);
    sub_22B35DE6C();
    sub_22B35DDCC();
    v4(v6, v7);
    LOBYTE(v6) = sub_22B35DDEC();
    v4(v5, v7);
    if ((v6 & 1) != 0 && (*(*(v0 + 1600) + 114) & 1) == 0)
    {
      v147 = v3;
      v70 = *(v0 + 2200);
      v71 = *(v0 + 2192);
      v72 = *(v0 + 1984);
      v73 = *(v0 + 1880);
      v74 = *(v0 + 1848);
      v75 = *(v0 + 1808);
      v76 = *(v0 + 1792);
      v77 = *(v0 + 1784);

      v70(v72, v71, v73);
      (*(v76 + 16))(v75, v74, v77);
      v78 = sub_22B36050C();
      v129 = sub_22B360D2C();
      v142 = v78;
      v79 = os_log_type_enabled(v78, v129);
      v80 = *(v0 + 2344);
      v81 = *(v0 + 2216);
      v82 = *(v0 + 1984);
      v146 = *(v0 + 1880);
      v83 = *(v0 + 1848);
      v84 = *(v0 + 1832);
      v85 = *(v0 + 1816);
      v86 = *(v0 + 1808);
      v87 = *(v0 + 1784);
      if (v79)
      {
        v123 = *(v0 + 2312);
        v126 = *(v0 + 1848);
        v88 = swift_slowAlloc();
        v124 = v81;
        v89 = swift_slowAlloc();
        v150[0] = v89;
        *v88 = 136446210;
        sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
        v90 = sub_22B36131C();
        v121 = v85;
        v92 = sub_22B1A7B20(v90, v91, v150);

        *(v88 + 4) = v92;

        v80(v86, v87);
        _os_log_impl(&dword_22B116000, v142, v129, "[DropBox] IntervalBlocks last updated under an hour ago at %{public}s", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v89);
        MEMORY[0x23188F650](v89, -1, -1);
        MEMORY[0x23188F650](v88, -1, -1);

        v124(v82, v146);
        v80(v121, v87);
        v80(v84, v87);
        v93 = v126;
      }

      else
      {

        v80(v86, v87);

        v81(v82, v146);
        v80(v85, v87);
        v80(v84, v87);
        v93 = v83;
      }

      v80(v93, v87);
    }

    else
    {
      v8 = v3;
      v9 = sub_22B35F28C();
      v11 = v10;

      *(v0 + 2496) = v9;
      *(v0 + 2504) = v11;
      v12 = v8;
      sub_22B35F41C();
      v14 = v13;

      *(v0 + 2512) = v14;
      if (v14)
      {
        v15 = *(v0 + 1672);
        v16 = *(v0 + 1664);
        v17 = *(v0 + 1656);
        sub_22B35E05C();
        if ((*(v15 + 48))(v17, 1, v16) != 1)
        {
          v94 = *(v0 + 2200);
          v95 = *(v0 + 2192);
          v96 = *(v0 + 1976);
          v97 = *(v0 + 1880);
          (*(*(v0 + 1672) + 32))(*(v0 + 1680), *(v0 + 1656), *(v0 + 1664));
          v94(v96, v95, v97);
          swift_bridgeObjectRetain_n();
          v98 = sub_22B36050C();
          v99 = sub_22B360D2C();
          v100 = os_log_type_enabled(v98, v99);
          v101 = *(v0 + 2216);
          v102 = *(v0 + 2184);
          if (v100)
          {
            v136 = *(v0 + 2176);
            v139 = *(v0 + 1880);
            v143 = *(v0 + 1976);
            v103 = swift_slowAlloc();
            v149 = v12;
            v150[0] = swift_slowAlloc();
            v104 = v150[0];
            *v103 = 136446466;
            v105 = v149;
            v106 = sub_22B35F3AC();
            v108 = v107;

            v109 = sub_22B1A7B20(v106, v108, v150);

            *(v103 + 4) = v109;
            *(v103 + 12) = 2082;

            v110 = sub_22B1A7B20(v136, v102, v150);

            *(v103 + 14) = v110;
            swift_bridgeObjectRelease_n();
            _os_log_impl(&dword_22B116000, v98, v99, "[Dropbox] Refreshing IntervalBlocks for %{public}s subscription: %{public}s", v103, 0x16u);
            swift_arrayDestroy();
            v111 = v104;
            v12 = v149;
            MEMORY[0x23188F650](v111, -1, -1);
            MEMORY[0x23188F650](v103, -1, -1);

            v101(v143, v139);
          }

          else
          {
            v113 = *(v0 + 1976);
            v114 = *(v0 + 1880);

            swift_bridgeObjectRelease_n();
            v101(v113, v114);
          }

          v115 = v12;
          sub_22B35F3AC();
          v117 = v116;

          *(v0 + 2520) = v117;
          v118 = swift_task_alloc();
          *(v0 + 2528) = v118;
          *v118 = v0;
          v118[1] = sub_22B2C73D8;
          v119 = *(v0 + 2312);
          v153 = *(v0 + 1680);
          v154 = v119;

          JUMPOUT(0x22B2E7924);
        }

        v147 = v12;
        v18 = *(v0 + 1656);

        sub_22B123284(v18, &unk_27D8BA080, &unk_22B364280);
      }

      else
      {
        v147 = v12;
      }

      v141 = v11;
      v145 = v9;
      (*(v0 + 2200))(*(v0 + 1952), *(v0 + 2192), *(v0 + 1880));
      swift_bridgeObjectRetain_n();
      v55 = sub_22B36050C();
      v56 = sub_22B360D2C();
      v57 = os_log_type_enabled(v55, v56);
      v138 = *(v0 + 2344);
      v137 = *(v0 + 2216);
      v58 = *(v0 + 2184);
      if (v57)
      {
        v120 = *(v0 + 2176);
        v125 = *(v0 + 1880);
        v134 = *(v0 + 1848);
        v130 = *(v0 + 1952);
        v132 = *(v0 + 1832);
        v127 = *(v0 + 1816);
        v59 = *(v0 + 1784);
        v122 = *(v0 + 2312);
        v60 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v150[0] = v61;
        *v60 = 136446466;
        v62 = v147;
        v63 = sub_22B35F3AC();
        v65 = v64;

        v66 = sub_22B1A7B20(v63, v65, v150);

        *(v60 + 4) = v66;
        *(v60 + 12) = 2082;

        v67 = sub_22B1A7B20(v120, v58, v150);

        *(v60 + 14) = v67;
        swift_bridgeObjectRelease_n();

        _os_log_impl(&dword_22B116000, v55, v56, "[Dropbox] Refreshing IntervalBlocks for %{public}s subscription: %{public}s failed due to invalid timezone", v60, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23188F650](v61, -1, -1);
        MEMORY[0x23188F650](v60, -1, -1);

        sub_22B12F174(v145, v141);
        v137(v130, v125);
        v138(v127, v59);
        v138(v132, v59);
        v138(v134, v59);

LABEL_30:

        v112 = *(v0 + 8);

        return v112();
      }

      v68 = *(v0 + 1880);
      v135 = *(v0 + 1848);
      v131 = *(v0 + 1952);
      v133 = *(v0 + 1832);
      v128 = *(v0 + 1816);
      v69 = *(v0 + 1784);

      sub_22B12F174(v9, v11);

      swift_bridgeObjectRelease_n();
      v137(v131, v68);
      v138(v128, v69);
      v138(v133, v69);
      v138(v135, v69);
    }

    goto LABEL_30;
  }

  v19 = *(v0 + 1720);
  v20 = *(v0 + 1696);
  v21 = *(v0 + 1688);
  v22 = *(v0 + 2272);
  v23 = sub_22B35F38C();
  v25 = v24;

  (*(v20 + 104))(v19, *MEMORY[0x277D07358], v21);
  v26 = sub_22B35EE3C();
  v28 = v27;
  (*(v20 + 8))(v19, v21);
  if (v23 == v26 && v25 == v28)
  {
  }

  else
  {
    v29 = sub_22B36134C();

    if ((v29 & 1) == 0)
    {
      goto LABEL_2;
    }
  }

  (*(v0 + 2200))(*(v0 + 1992), *(v0 + 2192), *(v0 + 1880));
  swift_bridgeObjectRetain_n();
  v30 = sub_22B36050C();
  v31 = sub_22B360D2C();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = *(v0 + 2272);
    v33 = *(v0 + 2184);
    v34 = *(v0 + 2176);
    v144 = *(v0 + 1992);
    v148 = *(v0 + 2216);
    v140 = *(v0 + 1880);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v150[0] = v36;
    *v35 = 136446466;
    v37 = v32;
    v38 = sub_22B35F3AC();
    v40 = v39;

    v41 = sub_22B1A7B20(v38, v40, v150);

    *(v35 + 4) = v41;
    *(v35 + 12) = 2082;

    v42 = sub_22B1A7B20(v34, v33, v150);

    *(v35 + 14) = v42;
    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_22B116000, v30, v31, "[Dropbox] Data present. Updating state from loading to loaded for %{public}s subscription: %{public}s", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v36, -1, -1);
    MEMORY[0x23188F650](v35, -1, -1);

    v148(v144, v140);
  }

  else
  {
    v43 = *(v0 + 2216);
    v44 = *(v0 + 1992);
    v45 = *(v0 + 1880);

    swift_bridgeObjectRelease_n();
    v43(v44, v45);
  }

  if (qword_28140B470 != -1)
  {
    swift_once();
  }

  v46 = *(v0 + 2272);
  v47 = sub_22B35F3AC();
  v49 = v48;

  *(v0 + 2448) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_22B3634B0;
  *(v50 + 32) = 0xD000000000000016;
  v51 = v50 + 32;
  *(v50 + 72) = MEMORY[0x277D837D0];
  *(v50 + 40) = 0x800000022B36CE20;
  *(v50 + 48) = 0;
  *(v50 + 56) = 0xE000000000000000;
  v52 = sub_22B321AAC(v50);
  *(v0 + 2456) = v52;
  swift_setDeallocating();
  sub_22B123284(v51, &unk_27D8BAD00, &qword_22B3656C0);
  swift_deallocClassInstance();
  v53 = swift_task_alloc();
  *(v0 + 2464) = v53;
  *v53 = v0;
  v53[1] = sub_22B2C64E8;

  return sub_22B2244D0(v47, v49, v52);
}

uint64_t sub_22B2C64E8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 2472) = v1;

  if (v1)
  {
    v5 = *(v4 + 1600);

    v6 = sub_22B2D1E68;
    v7 = v5;
  }

  else
  {
    v8 = *(v4 + 1600);

    *(v4 + 2480) = a1;
    v6 = sub_22B2C6674;
    v7 = v8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22B2C6674()
{
  v113 = v0;
  v1 = *(v0 + 2480);
  v2 = *(v0 + 2272);
  swift_beginAccess();
  *(v0 + 1584) = v1;

  v3 = *(v0 + 2480);
  *(v0 + 2488) = v3;
  v4 = *(v0 + 2344);
  v5 = *(v0 + 1864);
  v6 = *(v0 + 1856);
  v7 = *(v0 + 1784);
  sub_22B35DE6C();
  sub_22B35DDCC();
  v4(v6, v7);
  LOBYTE(v6) = sub_22B35DDEC();
  v4(v5, v7);
  if ((v6 & 1) != 0 && (*(*(v0 + 1600) + 114) & 1) == 0)
  {
    v110 = v3;
    v34 = *(v0 + 2200);
    v35 = *(v0 + 2192);
    v36 = *(v0 + 1984);
    v37 = *(v0 + 1880);
    v38 = *(v0 + 1848);
    v39 = *(v0 + 1808);
    v40 = *(v0 + 1792);
    v41 = *(v0 + 1784);

    v34(v36, v35, v37);
    (*(v40 + 16))(v39, v38, v41);
    v42 = sub_22B36050C();
    v94 = sub_22B360D2C();
    v106 = v42;
    v43 = os_log_type_enabled(v42, v94);
    v44 = *(v0 + 2344);
    v45 = *(v0 + 2216);
    v46 = *(v0 + 1984);
    v109 = *(v0 + 1880);
    v47 = *(v0 + 1848);
    v48 = *(v0 + 1832);
    v49 = *(v0 + 1816);
    v50 = *(v0 + 1808);
    v51 = *(v0 + 1784);
    if (v43)
    {
      v88 = *(v0 + 2312);
      v91 = *(v0 + 1848);
      v52 = swift_slowAlloc();
      v89 = v45;
      v53 = swift_slowAlloc();
      v112[0] = v53;
      *v52 = 136446210;
      sub_22B2EC1B8(&qword_28140B488, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v54 = sub_22B36131C();
      v86 = v49;
      v56 = sub_22B1A7B20(v54, v55, v112);

      *(v52 + 4) = v56;

      v44(v50, v51);
      _os_log_impl(&dword_22B116000, v106, v94, "[DropBox] IntervalBlocks last updated under an hour ago at %{public}s", v52, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x23188F650](v53, -1, -1);
      MEMORY[0x23188F650](v52, -1, -1);

      v89(v46, v109);
      v44(v86, v51);
      v44(v48, v51);
      v57 = v91;
    }

    else
    {

      v44(v50, v51);

      v45(v46, v109);
      v44(v49, v51);
      v44(v48, v51);
      v57 = v47;
    }

    v44(v57, v51);
  }

  else
  {
    v8 = v3;
    v9 = sub_22B35F28C();
    v11 = v10;

    *(v0 + 2496) = v9;
    *(v0 + 2504) = v11;
    v12 = v8;
    sub_22B35F41C();
    v14 = v13;

    *(v0 + 2512) = v14;
    if (v14)
    {
      v15 = *(v0 + 1672);
      v16 = *(v0 + 1664);
      v17 = *(v0 + 1656);
      sub_22B35E05C();
      if ((*(v15 + 48))(v17, 1, v16) != 1)
      {
        v58 = *(v0 + 2200);
        v59 = *(v0 + 2192);
        v60 = *(v0 + 1976);
        v61 = *(v0 + 1880);
        (*(*(v0 + 1672) + 32))(*(v0 + 1680), *(v0 + 1656), *(v0 + 1664));
        v58(v60, v59, v61);
        swift_bridgeObjectRetain_n();
        v62 = sub_22B36050C();
        v63 = sub_22B360D2C();
        v64 = os_log_type_enabled(v62, v63);
        v65 = *(v0 + 2216);
        v66 = *(v0 + 2184);
        if (v64)
        {
          v101 = *(v0 + 2176);
          v104 = *(v0 + 1880);
          v107 = *(v0 + 1976);
          v67 = swift_slowAlloc();
          v111 = v12;
          v112[0] = swift_slowAlloc();
          v68 = v112[0];
          *v67 = 136446466;
          v69 = v111;
          v70 = sub_22B35F3AC();
          v72 = v71;

          v73 = sub_22B1A7B20(v70, v72, v112);

          *(v67 + 4) = v73;
          *(v67 + 12) = 2082;

          v74 = sub_22B1A7B20(v101, v66, v112);

          *(v67 + 14) = v74;
          swift_bridgeObjectRelease_n();
          _os_log_impl(&dword_22B116000, v62, v63, "[Dropbox] Refreshing IntervalBlocks for %{public}s subscription: %{public}s", v67, 0x16u);
          swift_arrayDestroy();
          v75 = v68;
          v12 = v111;
          MEMORY[0x23188F650](v75, -1, -1);
          MEMORY[0x23188F650](v67, -1, -1);

          v65(v107, v104);
        }

        else
        {
          v78 = *(v0 + 1976);
          v79 = *(v0 + 1880);

          swift_bridgeObjectRelease_n();
          v65(v78, v79);
        }

        v80 = v12;
        sub_22B35F3AC();
        v82 = v81;

        *(v0 + 2520) = v82;
        v83 = swift_task_alloc();
        *(v0 + 2528) = v83;
        *v83 = v0;
        v83[1] = sub_22B2C73D8;
        v84 = *(v0 + 2312);
        v115 = *(v0 + 1680);
        v116 = v84;

        JUMPOUT(0x22B2E7924);
      }

      v110 = v12;
      v18 = *(v0 + 1656);

      sub_22B123284(v18, &unk_27D8BA080, &unk_22B364280);
    }

    else
    {
      v110 = v12;
    }

    v105 = v11;
    v108 = v9;
    (*(v0 + 2200))(*(v0 + 1952), *(v0 + 2192), *(v0 + 1880));
    swift_bridgeObjectRetain_n();
    v19 = sub_22B36050C();
    v20 = sub_22B360D2C();
    v21 = os_log_type_enabled(v19, v20);
    v103 = *(v0 + 2344);
    v102 = *(v0 + 2216);
    v22 = *(v0 + 2184);
    if (v21)
    {
      v85 = *(v0 + 2176);
      v90 = *(v0 + 1880);
      v99 = *(v0 + 1848);
      v95 = *(v0 + 1952);
      v97 = *(v0 + 1832);
      v92 = *(v0 + 1816);
      v23 = *(v0 + 1784);
      v87 = *(v0 + 2312);
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v112[0] = v25;
      *v24 = 136446466;
      v26 = v110;
      v27 = sub_22B35F3AC();
      v29 = v28;

      v30 = sub_22B1A7B20(v27, v29, v112);

      *(v24 + 4) = v30;
      *(v24 + 12) = 2082;

      v31 = sub_22B1A7B20(v85, v22, v112);

      *(v24 + 14) = v31;
      swift_bridgeObjectRelease_n();

      _os_log_impl(&dword_22B116000, v19, v20, "[Dropbox] Refreshing IntervalBlocks for %{public}s subscription: %{public}s failed due to invalid timezone", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23188F650](v25, -1, -1);
      MEMORY[0x23188F650](v24, -1, -1);

      sub_22B12F174(v108, v105);
      v102(v95, v90);
      v103(v92, v23);
      v103(v97, v23);
      v103(v99, v23);

      goto LABEL_17;
    }

    v32 = *(v0 + 1880);
    v100 = *(v0 + 1848);
    v96 = *(v0 + 1952);
    v98 = *(v0 + 1832);
    v93 = *(v0 + 1816);
    v33 = *(v0 + 1784);

    sub_22B12F174(v9, v11);

    swift_bridgeObjectRelease_n();
    v102(v96, v32);
    v103(v93, v33);
    v103(v98, v33);
    v103(v100, v33);
  }

LABEL_17:

  v76 = *(v0 + 8);

  return v76();
}

uint64_t sub_22B2C73D8(char a1, uint64_t a2)
{
  v4 = *v3;
  *(v4 + 177) = a1;
  *(v4 + 2536) = a2;
  *(v4 + 2544) = v2;

  if (v2)
  {
    v5 = *(v4 + 1600);

    v6 = sub_22B2C8760;
    v7 = v5;
  }

  else
  {
    v8 = *(v4 + 1600);

    v6 = sub_22B2C754C;
    v7 = v8;
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t sub_22B2C754C()
{
  v143 = v0;
  if (!*(v0 + 2536))
  {
    goto LABEL_7;
  }

  v1 = *(v0 + 1712);
  v2 = *(v0 + 1696);
  v3 = *(v0 + 1688);
  v4 = *(v0 + 2488);
  v5 = sub_22B35F38C();
  v7 = v6;

  (*(v2 + 104))(v1, *MEMORY[0x277D07358], v3);
  v8 = sub_22B35EE3C();
  v10 = v9;
  (*(v2 + 8))(v1, v3);
  if (v5 == v8 && v7 == v10)
  {
  }

  else
  {
    v12 = sub_22B36134C();

    if ((v12 & 1) == 0)
    {
LABEL_7:

      v13 = 0;
      goto LABEL_13;
    }
  }

  (*(v0 + 2200))(*(v0 + 1968), *(v0 + 2192), *(v0 + 1880));
  swift_bridgeObjectRetain_n();
  v14 = sub_22B36050C();
  v15 = sub_22B360D2C();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 2488);
    v17 = *(v0 + 2184);
    v18 = *(v0 + 2176);
    v133 = *(v0 + 1968);
    v138 = *(v0 + 2216);
    v128 = *(v0 + 1880);
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v142[0] = v20;
    *v19 = 136446466;
    v21 = v16;
    v22 = sub_22B35F3AC();
    v24 = v23;

    v25 = sub_22B1A7B20(v22, v24, v142);

    *(v19 + 4) = v25;
    *(v19 + 12) = 2082;

    v26 = sub_22B1A7B20(v18, v17, v142);

    *(v19 + 14) = v26;

    swift_bridgeObjectRelease_n();
    _os_log_impl(&dword_22B116000, v14, v15, "[Dropbox] Updating state from loading to loaded for %{public}s subscription: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23188F650](v20, -1, -1);
    MEMORY[0x23188F650](v19, -1, -1);

    v138(v133, v128);
  }

  else
  {
    v27 = *(v0 + 2216);
    v28 = *(v0 + 1968);
    v29 = *(v0 + 1880);

    swift_bridgeObjectRelease_n();
    v27(v28, v29);
  }

  v13 = 1;
LABEL_13:
  *(v0 + 178) = v13;
  v30 = *(v0 + 177);
  v31 = *(v0 + 2488);
  v32 = sub_22B35F02C();

  if ((v32 & 1) == 0 && v30)
  {
    if (v13)
    {
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v33 = *(v0 + 2488);
      v34 = sub_22B35F3AC();
      v36 = v35;

      *(v0 + 2552) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
      v37 = swift_allocObject();
      *(v37 + 16) = xmmword_22B3634C0;
      *(v37 + 32) = 0xD000000000000011;
      *(v37 + 40) = 0x800000022B36CEE0;
      v38 = MEMORY[0x277D839B0];
      *(v37 + 48) = 1;
      *(v37 + 72) = v38;
      *(v37 + 80) = 0xD000000000000016;
      *(v37 + 120) = MEMORY[0x277D837D0];
      *(v37 + 88) = 0x800000022B36CE20;
      *(v37 + 96) = 0;
      *(v37 + 104) = 0xE000000000000000;
      v39 = sub_22B321AAC(v37);
      *(v0 + 2560) = v39;
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BAD00, &qword_22B3656C0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v40 = swift_task_alloc();
      *(v0 + 2568) = v40;
      *v40 = v0;
      v41 = sub_22B2C9C60;
    }

    else
    {
      if (qword_28140B470 != -1)
      {
        swift_once();
      }

      v55 = *(v0 + 2488);
      v34 = sub_22B35F3AC();
      v36 = v56;

      *(v0 + 2584) = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_22B3634B0;
      *(v57 + 32) = 0xD000000000000011;
      v58 = v57 + 32;
      *(v57 + 40) = 0x800000022B36CEE0;
      *(v57 + 72) = MEMORY[0x277D839B0];
      *(v57 + 48) = 1;
      v39 = sub_22B321AAC(v57);
      *(v0 + 2592) = v39;
      swift_setDeallocating();
      sub_22B123284(v58, &unk_27D8BAD00, &qword_22B3656C0);
      swift_deallocClassInstance();
      v40 = swift_task_alloc();
      *(v0 + 2600) = v40;
      *v40 = v0;
      v41 = sub_22B2CA8D8;
    }

LABEL_29:
    v40[1] = v41;

    return sub_22B2244D0(v34, v36, v39);
  }

  if (v13)
  {
    if (qword_28140B470 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 2488);
    v34 = sub_22B35F3AC();
    v36 = v43;

    *(v0 + 2616) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA620, &unk_22B3656B0);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_22B3634B0;
    *(v44 + 32) = 0xD000000000000016;
    v45 = v44 + 32;
    *(v44 + 72) = MEMORY[0x277D837D0];
    *(v44 + 40) = 0x800000022B36CE20;
    *(v44 + 48) = 0;
    *(v44 + 56) = 0xE000000000000000;
    v39 = sub_22B321AAC(v44);
    *(v0 + 2624) = v39;
    swift_setDeallocating();
    sub_22B123284(v45, &unk_27D8BAD00, &qword_22B3656C0);
    swift_deallocClassInstance();
    v40 = swift_task_alloc();
    *(v0 + 2632) = v40;
    *v40 = v0;
    v41 = sub_22B2CB550;
    goto LABEL_29;
  }

  v46 = *(v0 + 2488);
  if ((sub_22B360BFC() & 1) == 0)
  {
    v60 = *(v0 + 2328);
    v61 = *(v0 + 1784);
    v62 = *(v0 + 1728);

    v63 = v46;
    sub_22B35F2AC();

    if (v60(v62, 1, v61) == 1)
    {
      v64 = *(v0 + 2504);
      v65 = *(v0 + 2496);
      v66 = *(v0 + 2344);
      v125 = *(v0 + 1832);
      v130 = *(v0 + 1848);
      v140 = v63;
      v67 = *(v0 + 1816);
      v68 = *(v0 + 1784);
      v135 = *(v0 + 1728);
      v69 = *(v0 + 1680);
      v70 = *(v0 + 1672);
      v71 = *(v0 + 1664);

      sub_22B12F174(v65, v64);
      (*(v70 + 8))(v69, v71);
      v66(v67, v68);
      v66(v125, v68);
      v66(v130, v68);
      sub_22B123284(v135, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v72 = *(v0 + 178);
      (*(*(v0 + 1792) + 32))(*(v0 + 1800), *(v0 + 1728), *(v0 + 1784));
      if (v72 == 1)
      {
        v73 = *(v0 + 2536);
        v119 = *(v0 + 2496);
        v121 = *(v0 + 2504);
        v74 = *(v0 + 2344);
        v75 = *(v0 + 1864);
        v136 = *(v0 + 1832);
        v141 = *(v0 + 1848);
        v115 = *(v0 + 1800);
        v117 = *(v0 + 2312);
        v76 = *(v0 + 1784);
        v126 = *(v0 + 1680);
        v131 = *(v0 + 1816);
        v77 = *(v0 + 1672);
        v123 = *(v0 + 1664);
        sub_22B35DE8C();
        sub_22B35DD3C();
        v79 = v78;
        v74(v75, v76);
        v80 = v63;
        v81 = sub_22B35F43C();
        v83 = v82;

        LOBYTE(v142[0]) = 1;
        *(v0 + 352) = 0;
        *(v0 + 360) = 1;
        *(v0 + 368) = 0u;
        *(v0 + 384) = 0u;
        *(v0 + 400) = 2;
        *(v0 + 408) = v81;
        *(v0 + 416) = v83;
        *(v0 + 424) = v73;
        *(v0 + 432) = 0;
        *(v0 + 440) = v79;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0;
        *(v0 + 464) = 1;
        *(v0 + 472) = 0;
        *(v0 + 480) = 0;
        *(v0 + 488) = 0;
        *(v0 + 496) = 1;
        *(v0 + 504) = 0;
        v84 = v142[0];
        *(v0 + 512) = v142[0];
        *(v0 + 520) = 0;
        *(v0 + 528) = 1;
        *(v0 + 536) = 0u;
        *(v0 + 552) = 0u;
        *(v0 + 568) = 2;
        *(v0 + 576) = v81;
        *(v0 + 584) = v83;
        *(v0 + 592) = v73;
        *(v0 + 600) = 0;
        *(v0 + 608) = v79;
        *(v0 + 616) = 0;
        *(v0 + 624) = 0;
        *(v0 + 632) = 1;
        *(v0 + 640) = 0;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0;
        *(v0 + 664) = 1;
        *(v0 + 672) = 0;
        *(v0 + 680) = v84;
        sub_22B2556F4(v0 + 352, v0 + 184);
        sub_22B2EC164(v0 + 520);
        v85 = *(v0 + 496);
        *(v0 + 816) = *(v0 + 480);
        *(v0 + 832) = v85;
        *(v0 + 848) = *(v0 + 512);
        v86 = *(v0 + 432);
        *(v0 + 752) = *(v0 + 416);
        *(v0 + 768) = v86;
        v87 = *(v0 + 464);
        *(v0 + 784) = *(v0 + 448);
        *(v0 + 800) = v87;
        v88 = *(v0 + 368);
        *(v0 + 688) = *(v0 + 352);
        *(v0 + 704) = v88;
        v89 = *(v0 + 400);
        *(v0 + 720) = *(v0 + 384);
        *(v0 + 736) = v89;
        nullsub_1();
        type metadata accessor for EnergyKitAnalyticsEvent();
        v90 = swift_allocObject();
        sub_22B23E8B0(v0 + 856);
        v91 = *(v0 + 1000);
        *(v0 + 144) = *(v0 + 984);
        *(v0 + 160) = v91;
        v92 = *(v0 + 936);
        *(v0 + 80) = *(v0 + 920);
        *(v0 + 96) = v92;
        v93 = *(v0 + 968);
        *(v0 + 112) = *(v0 + 952);
        *(v0 + 128) = v93;
        v94 = *(v0 + 872);
        *(v0 + 16) = *(v0 + 856);
        *(v0 + 32) = v94;
        v95 = *(v0 + 904);
        *(v0 + 48) = *(v0 + 888);
        *(v0 + 64) = v95;
        v96 = *(v0 + 784);
        *(v90 + 136) = *(v0 + 800);
        v97 = *(v0 + 832);
        *(v90 + 152) = *(v0 + 816);
        *(v90 + 168) = v97;
        v98 = *(v0 + 720);
        *(v90 + 72) = *(v0 + 736);
        v99 = *(v0 + 768);
        *(v90 + 88) = *(v0 + 752);
        *(v90 + 104) = v99;
        *(v90 + 120) = v96;
        v100 = *(v0 + 704);
        *(v90 + 24) = *(v0 + 688);
        *(v90 + 40) = v100;
        *(v90 + 16) = 4;
        *(v0 + 176) = *(v0 + 1016);
        *(v90 + 184) = *(v0 + 848);
        *(v90 + 56) = v98;
        sub_22B123284(v0 + 16, &unk_27D8BACF0, &qword_22B3662D0);
        sub_22B1A81C0(v90);

        sub_22B12F174(v119, v121);

        v74(v115, v76);
        (*(v77 + 8))(v126, v123);
        v74(v131, v76);
        v74(v136, v76);
        v74(v141, v76);

        goto LABEL_40;
      }

      v101 = *(v0 + 2504);
      v102 = *(v0 + 2496);
      v103 = *(v0 + 2344);
      v132 = *(v0 + 1832);
      v137 = *(v0 + 1848);
      v127 = *(v0 + 1816);
      v104 = *(v0 + 1800);
      v105 = *(v0 + 1784);
      v106 = *(v0 + 1680);
      v140 = v63;
      v107 = *(v0 + 1672);
      v108 = *(v0 + 1664);

      sub_22B12F174(v102, v101);
      v103(v104, v105);
      (*(v107 + 8))(v106, v108);
      v103(v127, v105);
      v103(v132, v105);
      v103(v137, v105);
    }

    v54 = v140;
    goto LABEL_39;
  }

  (*(v0 + 2200))(*(v0 + 1960), *(v0 + 2192), *(v0 + 1880));
  v47 = sub_22B36050C();
  v48 = sub_22B360D1C();
  v49 = os_log_type_enabled(v47, v48);
  v113 = *(v0 + 2504);
  v112 = *(v0 + 2496);
  v139 = *(v0 + 2344);
  v124 = *(v0 + 2216);
  v116 = *(v0 + 1880);
  v118 = *(v0 + 1960);
  v129 = *(v0 + 1832);
  v134 = *(v0 + 1848);
  v50 = *(v0 + 1784);
  v120 = *(v0 + 1680);
  v122 = *(v0 + 1816);
  v51 = *(v0 + 1672);
  v114 = *(v0 + 1664);
  if (v49)
  {
    v110 = *(v0 + 2312);
    v111 = v46;
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v142[0] = v53;
    *v52 = 136315394;
    *(v52 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36DA60, v142);
    *(v52 + 12) = 2048;
    *(v52 + 14) = 1221;

    _os_log_impl(&dword_22B116000, v47, v48, "[Dropbox] Task is cancelled at marker %s:%ld", v52, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v53);
    MEMORY[0x23188F650](v53, -1, -1);
    MEMORY[0x23188F650](v52, -1, -1);

    sub_22B12F174(v112, v113);
    v124(v118, v116);
    (*(v51 + 8))(v120, v114);
    v139(v122, v50);
    v139(v129, v50);
    v139(v134, v50);
    v54 = v111;
LABEL_39:

    goto LABEL_40;
  }

  sub_22B12F174(v112, v113);

  v124(v118, v116);
  (*(v51 + 8))(v120, v114);
  v139(v122, v50);
  v139(v129, v50);
  v139(v134, v50);

LABEL_40:

  v109 = *(v0 + 8);

  return v109();
}

uint64_t sub_22B2C8760()
{
  v165 = v0;
  v1 = *(v0 + 2504);
  v2 = *(v0 + 2496);
  v3 = *(v0 + 2344);
  v157 = *(v0 + 1832);
  v160 = *(v0 + 1848);
  v4 = *(v0 + 1816);
  v5 = *(v0 + 1784);
  v6 = *(v0 + 1680);
  v7 = *(v0 + 1672);
  v8 = *(v0 + 1664);

  sub_22B12F174(v2, v1);
  (*(v7 + 8))(v6, v8);
  v3(v4, v5);
  v3(v157, v5);
  v3(v160, v5);
  v9 = *(v0 + 2544);
  v10 = *(v0 + 2488);
  *(v0 + 2656) = v10;
  *(v0 + 2648) = v9;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 1936);
  v12 = *(v0 + 1888);
  v13 = *(v0 + 1880);
  v14 = __swift_project_value_buffer(v13, qword_28140BD10);
  swift_beginAccess();
  v156 = *(v12 + 16);
  v158 = v14;
  v156(v11, v14, v13);
  v15 = v9;
  v16 = v9;
  v17 = sub_22B36050C();
  v18 = sub_22B360D1C();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 1936);
  v21 = *(v0 + 1888);
  v22 = *(v0 + 1880);
  v152 = v10;
  if (v19)
  {
    v23 = swift_slowAlloc();
    v148 = v22;
    v24 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v164[0] = v143;
    *v23 = 136446466;
    v145 = v20;
    v25 = v10;
    v26 = sub_22B35F3AC();
    v28 = v27;

    v29 = sub_22B1A7B20(v26, v28, v164);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2114;
    v30 = v9;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v31;
    *v24 = v31;

    _os_log_impl(&dword_22B116000, v17, v18, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v23, 0x16u);
    sub_22B123284(v24, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v143);
    MEMORY[0x23188F650](v143, -1, -1);
    MEMORY[0x23188F650](v23, -1, -1);

    v32 = *(v21 + 8);
    v32(v145, v148);
  }

  else
  {

    v32 = *(v21 + 8);
    v32(v20, v22);
  }

  *(v0 + 1560) = v9;
  v33 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
LABEL_24:

    *(v0 + 1552) = v9;
    v63 = v9;
    v64 = swift_dynamicCast();
    v65 = *(v0 + 1880);
    if (v64)
    {
      v66 = *(v0 + 1904);
      (*(*(v0 + 1616) + 8))(*(v0 + 1624), *(v0 + 1608));
      v156(v66, v158, v65);
      v67 = v9;
      v68 = v9;
      v69 = sub_22B36050C();
      v70 = sub_22B360D1C();
      v71 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 1904);
      v73 = *(v0 + 1880);
      if (v71)
      {
        v161 = v32;
        v74 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v164[0] = v147;
        *v74 = 136446466;
        v144 = v69;
        v75 = v152;
        v154 = v72;
        v76 = sub_22B35F3AC();
        v149 = v73;
        v78 = v77;

        v79 = sub_22B1A7B20(v76, v78, v164);

        *(v74 + 4) = v79;
        *(v74 + 12) = 2114;
        v80 = v9;
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 14) = v81;
        v82 = v141;
        *v141 = v81;

        v83 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_29:
        _os_log_impl(&dword_22B116000, v144, v70, v83, v74, 0x16u);
        sub_22B123284(v82, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v82, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v147);
        MEMORY[0x23188F650](v147, -1, -1);
        MEMORY[0x23188F650](v74, -1, -1);

        v161(v154, v149);
LABEL_39:
        v116 = *(v0 + 2656);
        swift_willThrow();

        v117 = *(v0 + 8);

        return v117();
      }
    }

    else
    {
      v156(*(v0 + 1896), v158, *(v0 + 1880));
      v84 = v9;
      v85 = v9;
      v69 = sub_22B36050C();
      v70 = sub_22B360D1C();
      v86 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 1896);
      v73 = *(v0 + 1880);
      if (v86)
      {
        v161 = v32;
        v74 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v164[0] = v147;
        *v74 = 136446466;
        v144 = v69;
        v87 = v152;
        v154 = v72;
        v88 = sub_22B35F3AC();
        v149 = v73;
        v90 = v89;

        v91 = sub_22B1A7B20(v88, v90, v164);

        *(v74 + 4) = v91;
        *(v74 + 12) = 2114;
        v92 = v9;
        v93 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 14) = v93;
        v82 = v142;
        *v142 = v93;

        v83 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_29;
      }
    }

    v32(v72, v73);
    goto LABEL_39;
  }

  v34 = (*(*(v0 + 1640) + 88))(*(v0 + 1648), *(v0 + 1632));
  if (v34 != *MEMORY[0x277D182D0])
  {
    if (v34 == *MEMORY[0x277D182D8])
    {
      v39 = *(v0 + 1704);
      v40 = *(v0 + 1696);
      v41 = *(v0 + 1688);

      (*(v40 + 104))(v39, *MEMORY[0x277D07348], v41);
      v42 = v152;
      sub_22B35EE3C();
      (*(v40 + 8))(v39, v41);
      sub_22B35F39C();

      v42;
      v43 = swift_task_alloc();
      *(v0 + 2664) = v43;
      *v43 = v0;
      v44 = sub_22B2CC1C8;
      goto LABEL_48;
    }

    if (v34 != *MEMORY[0x277D182E0] && v34 != *MEMORY[0x277D182C8])
    {
      (*(*(v0 + 1640) + 8))(*(v0 + 1648), *(v0 + 1632));
      goto LABEL_24;
    }
  }

  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v35 = qword_28140BCA0;
  *(v0 + 2672) = qword_28140BCA0;
  if (v35 && (v36 = sub_22B36081C(), v37 = [v35 dictionaryForKey_], v36, v37))
  {
    v38 = sub_22B3606EC();
  }

  else
  {
    v38 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  *(v0 + 1544) = v38;
  v45 = sub_22B35F3AC();
  sub_22B2AC400(v45, v46, v38, (v0 + 1088));

  if (!*(v0 + 1112))
  {
    sub_22B123284(v0 + 1088, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v94 = MEMORY[0x277D83B88];
    v156(*(v0 + 1912), v158, *(v0 + 1880));
    v95 = sub_22B36050C();
    v96 = sub_22B360D1C();
    v97 = os_log_type_enabled(v95, v96);
    v98 = *(v0 + 1912);
    v159 = *(v0 + 1880);
    if (v97)
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v164[0] = v100;
      *v99 = 136315138;
      v101 = v152;
      v155 = v98;
      v102 = v101;
      v162 = v32;
      v103 = sub_22B35F3AC();
      v105 = v104;

      v106 = sub_22B1A7B20(v103, v105, v164);

      *(v99 + 4) = v106;

      _os_log_impl(&dword_22B116000, v95, v96, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      v107 = v100;
      v94 = MEMORY[0x277D83B88];
      MEMORY[0x23188F650](v107, -1, -1);
      MEMORY[0x23188F650](v99, -1, -1);

      v162(v155, v159);
    }

    else
    {

      v32(v98, v159);
    }

    v108 = sub_22B35F3AC();
    v110 = v109;
    *(v0 + 1144) = v94;
    *(v0 + 1120) = 1;
    sub_22B172454((v0 + 1120), (v0 + 1152));
    v111 = *(v0 + 1544);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164[0] = v111;
    sub_22B33F298((v0 + 1152), v108, v110, isUniquelyReferenced_nonNull_native);
    goto LABEL_36;
  }

  v47 = *(v0 + 1536);
  v48 = *(v0 + 1880);
  if (v47 < 10)
  {
    v156(*(v0 + 1920), v158, v48);
    v49 = sub_22B36050C();
    v50 = sub_22B360D1C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 1920);
    v53 = *(v0 + 1880);
    if (v51)
    {
      v146 = *(v0 + 1880);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v164[0] = v55;
      *v54 = 136315394;
      v56 = v152;
      v153 = v52;
      v57 = v56;
      v58 = sub_22B35F3AC();
      v60 = v59;

      v61 = sub_22B1A7B20(v58, v60, v164);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2048;
      v62 = v47 + 1;
      *(v54 + 14) = v62;

      _os_log_impl(&dword_22B116000, v49, v50, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x23188F650](v55, -1, -1);
      MEMORY[0x23188F650](v54, -1, -1);

      v32(v153, v146);
    }

    else
    {

      v32(v52, v53);
      v62 = v47 + 1;
    }

    v132 = sub_22B35F3AC();
    v134 = v133;
    *(v0 + 1240) = MEMORY[0x277D83B88];
    *(v0 + 1216) = v62;
    sub_22B172454((v0 + 1216), (v0 + 1248));
    v135 = *(v0 + 1544);
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v164[0] = v135;
    sub_22B33F298((v0 + 1248), v132, v134, v136);
LABEL_36:

    *(v0 + 1544) = v164[0];
    v113 = *(v0 + 2672);
    if (v113)
    {
      v114 = sub_22B3606CC();
      v115 = sub_22B36081C();
      [v113 setObject:v114 forKey:v115];
    }

    goto LABEL_39;
  }

  v156(*(v0 + 1928), v158, v48);
  v119 = sub_22B36050C();
  v120 = sub_22B360D1C();
  v121 = os_log_type_enabled(v119, v120);
  v122 = *(v0 + 1928);
  v123 = *(v0 + 1880);
  if (v121)
  {
    v124 = swift_slowAlloc();
    v151 = v123;
    v125 = swift_slowAlloc();
    v164[0] = v125;
    *v124 = 136315138;
    v126 = v152;
    v150 = v122;
    v127 = v152;
    v163 = v32;
    v128 = sub_22B35F3AC();
    v130 = v129;

    v131 = sub_22B1A7B20(v128, v130, v164);

    *(v124 + 4) = v131;

    _os_log_impl(&dword_22B116000, v119, v120, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v125);
    MEMORY[0x23188F650](v125, -1, -1);
    MEMORY[0x23188F650](v124, -1, -1);

    v163(v150, v151);
  }

  else
  {

    v32(v122, v123);
    v126 = v152;
  }

  v137 = *(v0 + 1704);
  v138 = *(v0 + 1696);
  v139 = *(v0 + 1688);
  (*(v138 + 104))(v137, *MEMORY[0x277D07350], v139);
  v140 = v126;
  sub_22B35EE3C();
  (*(v138 + 8))(v137, v139);
  sub_22B35F39C();

  v140;
  v43 = swift_task_alloc();
  *(v0 + 2680) = v43;
  *v43 = v0;
  v44 = sub_22B2CC67C;
LABEL_48:
  v43[1] = v44;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B2C9C60(uint64_t a1)
{
  v3 = *v2;
  v3[183] = v2;
  v3[184] = a1;
  v3[185] = v1;
  v3[322] = v1;

  if (v1)
  {
    v4 = v3[200];

    v5 = sub_22B2D332C;
    v6 = v4;
  }

  else
  {
    v7 = v3[200];

    v5 = sub_22B2C9DE8;
    v6 = v7;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_22B2C9DE8()
{
  v90 = v0;
  v1 = *(v0 + 1472);

  if (sub_22B360BFC())
  {
    (*(v0 + 2200))(*(v0 + 1960), *(v0 + 2192), *(v0 + 1880));
    v2 = sub_22B36050C();
    v3 = sub_22B360D1C();
    v4 = os_log_type_enabled(v2, v3);
    v63 = *(v0 + 2504);
    v62 = *(v0 + 2496);
    v86 = *(v0 + 2344);
    v74 = *(v0 + 2216);
    v66 = *(v0 + 1880);
    v68 = *(v0 + 1960);
    v78 = *(v0 + 1832);
    v82 = *(v0 + 1848);
    v5 = *(v0 + 1784);
    v70 = *(v0 + 1680);
    v72 = *(v0 + 1816);
    v6 = *(v0 + 1672);
    v64 = *(v0 + 1664);
    if (!v4)
    {

      sub_22B12F174(v62, v63);

      v74(v68, v66);
      (*(v6 + 8))(v70, v64);
      v86(v72, v5);
      v86(v78, v5);
      v86(v82, v5);

      goto LABEL_12;
    }

    v60 = *(v0 + 2312);
    v61 = v1;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v89 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36DA60, &v89);
    *(v7 + 12) = 2048;
    *(v7 + 14) = 1221;

    _os_log_impl(&dword_22B116000, v2, v3, "[Dropbox] Task is cancelled at marker %s:%ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23188F650](v8, -1, -1);
    MEMORY[0x23188F650](v7, -1, -1);

    sub_22B12F174(v62, v63);
    v74(v68, v66);
    (*(v6 + 8))(v70, v64);
    v86(v72, v5);
    v86(v78, v5);
    v86(v82, v5);
    v9 = v61;
  }

  else
  {
    v10 = *(v0 + 2328);
    v11 = *(v0 + 1784);
    v12 = *(v0 + 1728);

    v13 = v1;
    sub_22B35F2AC();

    if (v10(v12, 1, v11) == 1)
    {
      v14 = *(v0 + 2504);
      v15 = *(v0 + 2496);
      v16 = *(v0 + 2344);
      v75 = *(v0 + 1832);
      v79 = *(v0 + 1848);
      v87 = v13;
      v17 = *(v0 + 1816);
      v18 = *(v0 + 1784);
      v83 = *(v0 + 1728);
      v19 = *(v0 + 1680);
      v20 = *(v0 + 1672);
      v21 = *(v0 + 1664);

      sub_22B12F174(v15, v14);
      (*(v20 + 8))(v19, v21);
      v16(v17, v18);
      v16(v75, v18);
      v16(v79, v18);
      sub_22B123284(v83, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v22 = *(v0 + 178);
      (*(*(v0 + 1792) + 32))(*(v0 + 1800), *(v0 + 1728), *(v0 + 1784));
      if (v22 == 1)
      {
        v23 = *(v0 + 2536);
        v69 = *(v0 + 2496);
        v71 = *(v0 + 2504);
        v24 = *(v0 + 2344);
        v25 = *(v0 + 1864);
        v84 = *(v0 + 1832);
        v88 = *(v0 + 1848);
        v65 = *(v0 + 1800);
        v67 = *(v0 + 2312);
        v26 = *(v0 + 1784);
        v76 = *(v0 + 1680);
        v80 = *(v0 + 1816);
        v27 = *(v0 + 1672);
        v73 = *(v0 + 1664);
        sub_22B35DE8C();
        sub_22B35DD3C();
        v29 = v28;
        v24(v25, v26);
        v30 = v13;
        v31 = sub_22B35F43C();
        v33 = v32;

        *(v0 + 352) = 0;
        *(v0 + 360) = 1;
        *(v0 + 368) = 0u;
        *(v0 + 384) = 0u;
        *(v0 + 400) = 2;
        *(v0 + 408) = v31;
        *(v0 + 416) = v33;
        *(v0 + 424) = v23;
        *(v0 + 432) = 0;
        *(v0 + 440) = v29;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0;
        *(v0 + 464) = 1;
        *(v0 + 472) = 0;
        *(v0 + 480) = 0;
        *(v0 + 488) = 0;
        *(v0 + 496) = 1;
        *(v0 + 504) = 0;
        *(v0 + 512) = 1;
        *(v0 + 520) = 0;
        *(v0 + 528) = 1;
        *(v0 + 536) = 0u;
        *(v0 + 552) = 0u;
        *(v0 + 568) = 2;
        *(v0 + 576) = v31;
        *(v0 + 584) = v33;
        *(v0 + 592) = v23;
        *(v0 + 600) = 0;
        *(v0 + 608) = v29;
        *(v0 + 616) = 0;
        *(v0 + 624) = 0;
        *(v0 + 632) = 1;
        *(v0 + 640) = 0;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0;
        *(v0 + 664) = 1;
        *(v0 + 672) = 0;
        *(v0 + 680) = 1;
        sub_22B2556F4(v0 + 352, v0 + 184);
        sub_22B2EC164(v0 + 520);
        v34 = *(v0 + 496);
        *(v0 + 816) = *(v0 + 480);
        *(v0 + 832) = v34;
        *(v0 + 848) = *(v0 + 512);
        v35 = *(v0 + 432);
        *(v0 + 752) = *(v0 + 416);
        *(v0 + 768) = v35;
        v36 = *(v0 + 464);
        *(v0 + 784) = *(v0 + 448);
        *(v0 + 800) = v36;
        v37 = *(v0 + 368);
        *(v0 + 688) = *(v0 + 352);
        *(v0 + 704) = v37;
        v38 = *(v0 + 400);
        *(v0 + 720) = *(v0 + 384);
        *(v0 + 736) = v38;
        nullsub_1();
        type metadata accessor for EnergyKitAnalyticsEvent();
        v39 = swift_allocObject();
        sub_22B23E8B0(v0 + 856);
        v40 = *(v0 + 1000);
        *(v0 + 144) = *(v0 + 984);
        *(v0 + 160) = v40;
        v41 = *(v0 + 936);
        *(v0 + 80) = *(v0 + 920);
        *(v0 + 96) = v41;
        v42 = *(v0 + 968);
        *(v0 + 112) = *(v0 + 952);
        *(v0 + 128) = v42;
        v43 = *(v0 + 872);
        *(v0 + 16) = *(v0 + 856);
        *(v0 + 32) = v43;
        v44 = *(v0 + 904);
        *(v0 + 48) = *(v0 + 888);
        *(v0 + 64) = v44;
        v45 = *(v0 + 784);
        *(v39 + 136) = *(v0 + 800);
        v46 = *(v0 + 832);
        *(v39 + 152) = *(v0 + 816);
        *(v39 + 168) = v46;
        v47 = *(v0 + 720);
        *(v39 + 72) = *(v0 + 736);
        v48 = *(v0 + 768);
        *(v39 + 88) = *(v0 + 752);
        *(v39 + 104) = v48;
        *(v39 + 120) = v45;
        v49 = *(v0 + 704);
        *(v39 + 24) = *(v0 + 688);
        *(v39 + 40) = v49;
        *(v39 + 16) = 4;
        *(v0 + 176) = *(v0 + 1016);
        *(v39 + 184) = *(v0 + 848);
        *(v39 + 56) = v47;
        sub_22B123284(v0 + 16, &unk_27D8BACF0, &qword_22B3662D0);
        sub_22B1A81C0(v39);

        sub_22B12F174(v69, v71);

        v24(v65, v26);
        (*(v27 + 8))(v76, v73);
        v24(v80, v26);
        v24(v84, v26);
        v24(v88, v26);

        goto LABEL_12;
      }

      v50 = *(v0 + 2504);
      v51 = *(v0 + 2496);
      v52 = *(v0 + 2344);
      v81 = *(v0 + 1832);
      v85 = *(v0 + 1848);
      v77 = *(v0 + 1816);
      v53 = *(v0 + 1800);
      v54 = *(v0 + 1784);
      v55 = *(v0 + 1680);
      v87 = v13;
      v56 = *(v0 + 1672);
      v57 = *(v0 + 1664);

      sub_22B12F174(v51, v50);
      v52(v53, v54);
      (*(v56 + 8))(v55, v57);
      v52(v77, v54);
      v52(v81, v54);
      v52(v85, v54);
    }

    v9 = v87;
  }

LABEL_12:

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_22B2CA8D8(uint64_t a1)
{
  v3 = *v2;
  v3[186] = v2;
  v3[187] = a1;
  v3[188] = v1;
  v3[326] = v1;

  if (v1)
  {
    v4 = v3[200];

    v5 = sub_22B2D482C;
    v6 = v4;
  }

  else
  {
    v7 = v3[200];

    v5 = sub_22B2CAA60;
    v6 = v7;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_22B2CAA60()
{
  v90 = v0;
  v1 = *(v0 + 1496);

  if (sub_22B360BFC())
  {
    (*(v0 + 2200))(*(v0 + 1960), *(v0 + 2192), *(v0 + 1880));
    v2 = sub_22B36050C();
    v3 = sub_22B360D1C();
    v4 = os_log_type_enabled(v2, v3);
    v63 = *(v0 + 2504);
    v62 = *(v0 + 2496);
    v86 = *(v0 + 2344);
    v74 = *(v0 + 2216);
    v66 = *(v0 + 1880);
    v68 = *(v0 + 1960);
    v78 = *(v0 + 1832);
    v82 = *(v0 + 1848);
    v5 = *(v0 + 1784);
    v70 = *(v0 + 1680);
    v72 = *(v0 + 1816);
    v6 = *(v0 + 1672);
    v64 = *(v0 + 1664);
    if (!v4)
    {

      sub_22B12F174(v62, v63);

      v74(v68, v66);
      (*(v6 + 8))(v70, v64);
      v86(v72, v5);
      v86(v78, v5);
      v86(v82, v5);

      goto LABEL_12;
    }

    v60 = *(v0 + 2312);
    v61 = v1;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v89 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36DA60, &v89);
    *(v7 + 12) = 2048;
    *(v7 + 14) = 1221;

    _os_log_impl(&dword_22B116000, v2, v3, "[Dropbox] Task is cancelled at marker %s:%ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23188F650](v8, -1, -1);
    MEMORY[0x23188F650](v7, -1, -1);

    sub_22B12F174(v62, v63);
    v74(v68, v66);
    (*(v6 + 8))(v70, v64);
    v86(v72, v5);
    v86(v78, v5);
    v86(v82, v5);
    v9 = v61;
  }

  else
  {
    v10 = *(v0 + 2328);
    v11 = *(v0 + 1784);
    v12 = *(v0 + 1728);

    v13 = v1;
    sub_22B35F2AC();

    if (v10(v12, 1, v11) == 1)
    {
      v14 = *(v0 + 2504);
      v15 = *(v0 + 2496);
      v16 = *(v0 + 2344);
      v75 = *(v0 + 1832);
      v79 = *(v0 + 1848);
      v87 = v13;
      v17 = *(v0 + 1816);
      v18 = *(v0 + 1784);
      v83 = *(v0 + 1728);
      v19 = *(v0 + 1680);
      v20 = *(v0 + 1672);
      v21 = *(v0 + 1664);

      sub_22B12F174(v15, v14);
      (*(v20 + 8))(v19, v21);
      v16(v17, v18);
      v16(v75, v18);
      v16(v79, v18);
      sub_22B123284(v83, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v22 = *(v0 + 178);
      (*(*(v0 + 1792) + 32))(*(v0 + 1800), *(v0 + 1728), *(v0 + 1784));
      if (v22 == 1)
      {
        v23 = *(v0 + 2536);
        v69 = *(v0 + 2496);
        v71 = *(v0 + 2504);
        v24 = *(v0 + 2344);
        v25 = *(v0 + 1864);
        v84 = *(v0 + 1832);
        v88 = *(v0 + 1848);
        v65 = *(v0 + 1800);
        v67 = *(v0 + 2312);
        v26 = *(v0 + 1784);
        v76 = *(v0 + 1680);
        v80 = *(v0 + 1816);
        v27 = *(v0 + 1672);
        v73 = *(v0 + 1664);
        sub_22B35DE8C();
        sub_22B35DD3C();
        v29 = v28;
        v24(v25, v26);
        v30 = v13;
        v31 = sub_22B35F43C();
        v33 = v32;

        *(v0 + 352) = 0;
        *(v0 + 360) = 1;
        *(v0 + 368) = 0u;
        *(v0 + 384) = 0u;
        *(v0 + 400) = 2;
        *(v0 + 408) = v31;
        *(v0 + 416) = v33;
        *(v0 + 424) = v23;
        *(v0 + 432) = 0;
        *(v0 + 440) = v29;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0;
        *(v0 + 464) = 1;
        *(v0 + 472) = 0;
        *(v0 + 480) = 0;
        *(v0 + 488) = 0;
        *(v0 + 496) = 1;
        *(v0 + 504) = 0;
        *(v0 + 512) = 1;
        *(v0 + 520) = 0;
        *(v0 + 528) = 1;
        *(v0 + 536) = 0u;
        *(v0 + 552) = 0u;
        *(v0 + 568) = 2;
        *(v0 + 576) = v31;
        *(v0 + 584) = v33;
        *(v0 + 592) = v23;
        *(v0 + 600) = 0;
        *(v0 + 608) = v29;
        *(v0 + 616) = 0;
        *(v0 + 624) = 0;
        *(v0 + 632) = 1;
        *(v0 + 640) = 0;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0;
        *(v0 + 664) = 1;
        *(v0 + 672) = 0;
        *(v0 + 680) = 1;
        sub_22B2556F4(v0 + 352, v0 + 184);
        sub_22B2EC164(v0 + 520);
        v34 = *(v0 + 496);
        *(v0 + 816) = *(v0 + 480);
        *(v0 + 832) = v34;
        *(v0 + 848) = *(v0 + 512);
        v35 = *(v0 + 432);
        *(v0 + 752) = *(v0 + 416);
        *(v0 + 768) = v35;
        v36 = *(v0 + 464);
        *(v0 + 784) = *(v0 + 448);
        *(v0 + 800) = v36;
        v37 = *(v0 + 368);
        *(v0 + 688) = *(v0 + 352);
        *(v0 + 704) = v37;
        v38 = *(v0 + 400);
        *(v0 + 720) = *(v0 + 384);
        *(v0 + 736) = v38;
        nullsub_1();
        type metadata accessor for EnergyKitAnalyticsEvent();
        v39 = swift_allocObject();
        sub_22B23E8B0(v0 + 856);
        v40 = *(v0 + 1000);
        *(v0 + 144) = *(v0 + 984);
        *(v0 + 160) = v40;
        v41 = *(v0 + 936);
        *(v0 + 80) = *(v0 + 920);
        *(v0 + 96) = v41;
        v42 = *(v0 + 968);
        *(v0 + 112) = *(v0 + 952);
        *(v0 + 128) = v42;
        v43 = *(v0 + 872);
        *(v0 + 16) = *(v0 + 856);
        *(v0 + 32) = v43;
        v44 = *(v0 + 904);
        *(v0 + 48) = *(v0 + 888);
        *(v0 + 64) = v44;
        v45 = *(v0 + 784);
        *(v39 + 136) = *(v0 + 800);
        v46 = *(v0 + 832);
        *(v39 + 152) = *(v0 + 816);
        *(v39 + 168) = v46;
        v47 = *(v0 + 720);
        *(v39 + 72) = *(v0 + 736);
        v48 = *(v0 + 768);
        *(v39 + 88) = *(v0 + 752);
        *(v39 + 104) = v48;
        *(v39 + 120) = v45;
        v49 = *(v0 + 704);
        *(v39 + 24) = *(v0 + 688);
        *(v39 + 40) = v49;
        *(v39 + 16) = 4;
        *(v0 + 176) = *(v0 + 1016);
        *(v39 + 184) = *(v0 + 848);
        *(v39 + 56) = v47;
        sub_22B123284(v0 + 16, &unk_27D8BACF0, &qword_22B3662D0);
        sub_22B1A81C0(v39);

        sub_22B12F174(v69, v71);

        v24(v65, v26);
        (*(v27 + 8))(v76, v73);
        v24(v80, v26);
        v24(v84, v26);
        v24(v88, v26);

        goto LABEL_12;
      }

      v50 = *(v0 + 2504);
      v51 = *(v0 + 2496);
      v52 = *(v0 + 2344);
      v81 = *(v0 + 1832);
      v85 = *(v0 + 1848);
      v77 = *(v0 + 1816);
      v53 = *(v0 + 1800);
      v54 = *(v0 + 1784);
      v55 = *(v0 + 1680);
      v87 = v13;
      v56 = *(v0 + 1672);
      v57 = *(v0 + 1664);

      sub_22B12F174(v51, v50);
      v52(v53, v54);
      (*(v56 + 8))(v55, v57);
      v52(v77, v54);
      v52(v81, v54);
      v52(v85, v54);
    }

    v9 = v87;
  }

LABEL_12:

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_22B2CB550(uint64_t a1)
{
  v3 = *v2;
  v3[189] = v2;
  v3[190] = a1;
  v3[191] = v1;
  v3[330] = v1;

  if (v1)
  {
    v4 = v3[200];

    v5 = sub_22B2D5D2C;
    v6 = v4;
  }

  else
  {
    v7 = v3[200];

    v5 = sub_22B2CB6D8;
    v6 = v7;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

uint64_t sub_22B2CB6D8()
{
  v90 = v0;
  v1 = *(v0 + 1520);

  if (sub_22B360BFC())
  {
    (*(v0 + 2200))(*(v0 + 1960), *(v0 + 2192), *(v0 + 1880));
    v2 = sub_22B36050C();
    v3 = sub_22B360D1C();
    v4 = os_log_type_enabled(v2, v3);
    v63 = *(v0 + 2504);
    v62 = *(v0 + 2496);
    v86 = *(v0 + 2344);
    v74 = *(v0 + 2216);
    v66 = *(v0 + 1880);
    v68 = *(v0 + 1960);
    v78 = *(v0 + 1832);
    v82 = *(v0 + 1848);
    v5 = *(v0 + 1784);
    v70 = *(v0 + 1680);
    v72 = *(v0 + 1816);
    v6 = *(v0 + 1672);
    v64 = *(v0 + 1664);
    if (!v4)
    {

      sub_22B12F174(v62, v63);

      v74(v68, v66);
      (*(v6 + 8))(v70, v64);
      v86(v72, v5);
      v86(v78, v5);
      v86(v82, v5);

      goto LABEL_12;
    }

    v60 = *(v0 + 2312);
    v61 = v1;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v89 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_22B1A7B20(0xD000000000000013, 0x800000022B36DA60, &v89);
    *(v7 + 12) = 2048;
    *(v7 + 14) = 1221;

    _os_log_impl(&dword_22B116000, v2, v3, "[Dropbox] Task is cancelled at marker %s:%ld", v7, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x23188F650](v8, -1, -1);
    MEMORY[0x23188F650](v7, -1, -1);

    sub_22B12F174(v62, v63);
    v74(v68, v66);
    (*(v6 + 8))(v70, v64);
    v86(v72, v5);
    v86(v78, v5);
    v86(v82, v5);
    v9 = v61;
  }

  else
  {
    v10 = *(v0 + 2328);
    v11 = *(v0 + 1784);
    v12 = *(v0 + 1728);

    v13 = v1;
    sub_22B35F2AC();

    if (v10(v12, 1, v11) == 1)
    {
      v14 = *(v0 + 2504);
      v15 = *(v0 + 2496);
      v16 = *(v0 + 2344);
      v75 = *(v0 + 1832);
      v79 = *(v0 + 1848);
      v87 = v13;
      v17 = *(v0 + 1816);
      v18 = *(v0 + 1784);
      v83 = *(v0 + 1728);
      v19 = *(v0 + 1680);
      v20 = *(v0 + 1672);
      v21 = *(v0 + 1664);

      sub_22B12F174(v15, v14);
      (*(v20 + 8))(v19, v21);
      v16(v17, v18);
      v16(v75, v18);
      v16(v79, v18);
      sub_22B123284(v83, &qword_27D8BA340, &qword_22B363FB0);
    }

    else
    {
      v22 = *(v0 + 178);
      (*(*(v0 + 1792) + 32))(*(v0 + 1800), *(v0 + 1728), *(v0 + 1784));
      if (v22 == 1)
      {
        v23 = *(v0 + 2536);
        v69 = *(v0 + 2496);
        v71 = *(v0 + 2504);
        v24 = *(v0 + 2344);
        v25 = *(v0 + 1864);
        v84 = *(v0 + 1832);
        v88 = *(v0 + 1848);
        v65 = *(v0 + 1800);
        v67 = *(v0 + 2312);
        v26 = *(v0 + 1784);
        v76 = *(v0 + 1680);
        v80 = *(v0 + 1816);
        v27 = *(v0 + 1672);
        v73 = *(v0 + 1664);
        sub_22B35DE8C();
        sub_22B35DD3C();
        v29 = v28;
        v24(v25, v26);
        v30 = v13;
        v31 = sub_22B35F43C();
        v33 = v32;

        *(v0 + 352) = 0;
        *(v0 + 360) = 1;
        *(v0 + 368) = 0u;
        *(v0 + 384) = 0u;
        *(v0 + 400) = 2;
        *(v0 + 408) = v31;
        *(v0 + 416) = v33;
        *(v0 + 424) = v23;
        *(v0 + 432) = 0;
        *(v0 + 440) = v29;
        *(v0 + 448) = 0;
        *(v0 + 456) = 0;
        *(v0 + 464) = 1;
        *(v0 + 472) = 0;
        *(v0 + 480) = 0;
        *(v0 + 488) = 0;
        *(v0 + 496) = 1;
        *(v0 + 504) = 0;
        *(v0 + 512) = 1;
        *(v0 + 520) = 0;
        *(v0 + 528) = 1;
        *(v0 + 536) = 0u;
        *(v0 + 552) = 0u;
        *(v0 + 568) = 2;
        *(v0 + 576) = v31;
        *(v0 + 584) = v33;
        *(v0 + 592) = v23;
        *(v0 + 600) = 0;
        *(v0 + 608) = v29;
        *(v0 + 616) = 0;
        *(v0 + 624) = 0;
        *(v0 + 632) = 1;
        *(v0 + 640) = 0;
        *(v0 + 648) = 0;
        *(v0 + 656) = 0;
        *(v0 + 664) = 1;
        *(v0 + 672) = 0;
        *(v0 + 680) = 1;
        sub_22B2556F4(v0 + 352, v0 + 184);
        sub_22B2EC164(v0 + 520);
        v34 = *(v0 + 496);
        *(v0 + 816) = *(v0 + 480);
        *(v0 + 832) = v34;
        *(v0 + 848) = *(v0 + 512);
        v35 = *(v0 + 432);
        *(v0 + 752) = *(v0 + 416);
        *(v0 + 768) = v35;
        v36 = *(v0 + 464);
        *(v0 + 784) = *(v0 + 448);
        *(v0 + 800) = v36;
        v37 = *(v0 + 368);
        *(v0 + 688) = *(v0 + 352);
        *(v0 + 704) = v37;
        v38 = *(v0 + 400);
        *(v0 + 720) = *(v0 + 384);
        *(v0 + 736) = v38;
        nullsub_1();
        type metadata accessor for EnergyKitAnalyticsEvent();
        v39 = swift_allocObject();
        sub_22B23E8B0(v0 + 856);
        v40 = *(v0 + 1000);
        *(v0 + 144) = *(v0 + 984);
        *(v0 + 160) = v40;
        v41 = *(v0 + 936);
        *(v0 + 80) = *(v0 + 920);
        *(v0 + 96) = v41;
        v42 = *(v0 + 968);
        *(v0 + 112) = *(v0 + 952);
        *(v0 + 128) = v42;
        v43 = *(v0 + 872);
        *(v0 + 16) = *(v0 + 856);
        *(v0 + 32) = v43;
        v44 = *(v0 + 904);
        *(v0 + 48) = *(v0 + 888);
        *(v0 + 64) = v44;
        v45 = *(v0 + 784);
        *(v39 + 136) = *(v0 + 800);
        v46 = *(v0 + 832);
        *(v39 + 152) = *(v0 + 816);
        *(v39 + 168) = v46;
        v47 = *(v0 + 720);
        *(v39 + 72) = *(v0 + 736);
        v48 = *(v0 + 768);
        *(v39 + 88) = *(v0 + 752);
        *(v39 + 104) = v48;
        *(v39 + 120) = v45;
        v49 = *(v0 + 704);
        *(v39 + 24) = *(v0 + 688);
        *(v39 + 40) = v49;
        *(v39 + 16) = 4;
        *(v0 + 176) = *(v0 + 1016);
        *(v39 + 184) = *(v0 + 848);
        *(v39 + 56) = v47;
        sub_22B123284(v0 + 16, &unk_27D8BACF0, &qword_22B3662D0);
        sub_22B1A81C0(v39);

        sub_22B12F174(v69, v71);

        v24(v65, v26);
        (*(v27 + 8))(v76, v73);
        v24(v80, v26);
        v24(v84, v26);
        v24(v88, v26);

        goto LABEL_12;
      }

      v50 = *(v0 + 2504);
      v51 = *(v0 + 2496);
      v52 = *(v0 + 2344);
      v81 = *(v0 + 1832);
      v85 = *(v0 + 1848);
      v77 = *(v0 + 1816);
      v53 = *(v0 + 1800);
      v54 = *(v0 + 1784);
      v55 = *(v0 + 1680);
      v87 = v13;
      v56 = *(v0 + 1672);
      v57 = *(v0 + 1664);

      sub_22B12F174(v51, v50);
      v52(v53, v54);
      (*(v56 + 8))(v55, v57);
      v52(v77, v54);
      v52(v81, v54);
      v52(v85, v54);
    }

    v9 = v87;
  }

LABEL_12:

  v58 = *(v0 + 8);

  return v58();
}

uint64_t sub_22B2CC1C8()
{
  v2 = *v1;

  v3 = *(v2 + 2656);
  v4 = *(v2 + 1600);
  if (v0)
  {

    v5 = sub_22B2EC228;
  }

  else
  {

    v5 = sub_22B2CC31C;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B2CC31C()
{
  v1 = *(v0 + 2656);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22B2CC67C()
{
  v2 = *v1;

  v3 = *(v2 + 2656);
  v4 = *(v2 + 1600);
  if (v0)
  {

    v5 = sub_22B2EC22C;
  }

  else
  {

    v5 = sub_22B2CC7D0;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B2CC7D0(uint64_t a1)
{
  v2 = sub_22B35F3AC();
  sub_22B2E641C(v2, v3, (v1 + 1184));

  sub_22B123284(v1 + 1184, &unk_27D8BA950, &qword_22B364940);
  v4 = *(v1 + 2672);
  if (v4)
  {
    v5 = sub_22B3606CC();
    v6 = sub_22B36081C();
    [v4 setObject:v5 forKey:v6];
  }

  v7 = *(v1 + 2656);
  swift_willThrow();

  v8 = *(v1 + 8);

  return v8();
}

uint64_t sub_22B2CCBE8()
{
  v155 = v0;
  v1 = *(v0 + 2248);
  v2 = *(v0 + 1592);
  *(v0 + 2656) = v2;
  *(v0 + 2648) = v1;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 1936);
  v4 = *(v0 + 1888);
  v5 = *(v0 + 1880);
  v6 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  v148 = *(v4 + 16);
  v149 = v6;
  v148(v3, v6, v5);
  v7 = v1;
  v8 = v1;
  v9 = sub_22B36050C();
  v10 = sub_22B360D1C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1936);
  v13 = *(v0 + 1888);
  v14 = *(v0 + 1880);
  v144 = v2;
  if (v11)
  {
    v15 = swift_slowAlloc();
    v140 = v14;
    v16 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v154[0] = v135;
    *v15 = 136446466;
    v137 = v12;
    v17 = v2;
    v18 = sub_22B35F3AC();
    v20 = v19;

    v21 = sub_22B1A7B20(v18, v20, v154);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2114;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v23;
    *v16 = v23;

    _os_log_impl(&dword_22B116000, v9, v10, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v15, 0x16u);
    sub_22B123284(v16, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v135);
    MEMORY[0x23188F650](v135, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);

    v24 = *(v13 + 8);
    v24(v137, v140);
  }

  else
  {

    v24 = *(v13 + 8);
    v24(v12, v14);
  }

  *(v0 + 1560) = v1;
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
LABEL_24:

    *(v0 + 1552) = v1;
    v55 = v1;
    v56 = swift_dynamicCast();
    v57 = *(v0 + 1880);
    if (v56)
    {
      v58 = *(v0 + 1904);
      (*(*(v0 + 1616) + 8))(*(v0 + 1624), *(v0 + 1608));
      v148(v58, v149, v57);
      v59 = v1;
      v60 = v1;
      v61 = sub_22B36050C();
      v62 = sub_22B360D1C();
      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 1904);
      v65 = *(v0 + 1880);
      if (v63)
      {
        v151 = v24;
        v66 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v154[0] = v139;
        *v66 = 136446466;
        v136 = v61;
        v67 = v144;
        v146 = v64;
        v68 = sub_22B35F3AC();
        v141 = v65;
        v70 = v69;

        v71 = sub_22B1A7B20(v68, v70, v154);

        *(v66 + 4) = v71;
        *(v66 + 12) = 2114;
        v72 = v1;
        v73 = _swift_stdlib_bridgeErrorToNSError();
        *(v66 + 14) = v73;
        v74 = v133;
        *v133 = v73;

        v75 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_29:
        _os_log_impl(&dword_22B116000, v136, v62, v75, v66, 0x16u);
        sub_22B123284(v74, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v74, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v139);
        MEMORY[0x23188F650](v139, -1, -1);
        MEMORY[0x23188F650](v66, -1, -1);

        v151(v146, v141);
LABEL_39:
        v108 = *(v0 + 2656);
        swift_willThrow();

        v109 = *(v0 + 8);

        return v109();
      }
    }

    else
    {
      v148(*(v0 + 1896), v149, *(v0 + 1880));
      v76 = v1;
      v77 = v1;
      v61 = sub_22B36050C();
      v62 = sub_22B360D1C();
      v78 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 1896);
      v65 = *(v0 + 1880);
      if (v78)
      {
        v151 = v24;
        v66 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v154[0] = v139;
        *v66 = 136446466;
        v136 = v61;
        v79 = v144;
        v146 = v64;
        v80 = sub_22B35F3AC();
        v141 = v65;
        v82 = v81;

        v83 = sub_22B1A7B20(v80, v82, v154);

        *(v66 + 4) = v83;
        *(v66 + 12) = 2114;
        v84 = v1;
        v85 = _swift_stdlib_bridgeErrorToNSError();
        *(v66 + 14) = v85;
        v74 = v134;
        *v134 = v85;

        v75 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_29;
      }
    }

    v24(v64, v65);
    goto LABEL_39;
  }

  v26 = (*(*(v0 + 1640) + 88))(*(v0 + 1648), *(v0 + 1632));
  if (v26 != *MEMORY[0x277D182D0])
  {
    if (v26 == *MEMORY[0x277D182D8])
    {
      v31 = *(v0 + 1704);
      v32 = *(v0 + 1696);
      v33 = *(v0 + 1688);

      (*(v32 + 104))(v31, *MEMORY[0x277D07348], v33);
      v34 = v144;
      sub_22B35EE3C();
      (*(v32 + 8))(v31, v33);
      sub_22B35F39C();

      v34;
      v35 = swift_task_alloc();
      *(v0 + 2664) = v35;
      *v35 = v0;
      v36 = sub_22B2CC1C8;
      goto LABEL_48;
    }

    if (v26 != *MEMORY[0x277D182E0] && v26 != *MEMORY[0x277D182C8])
    {
      (*(*(v0 + 1640) + 8))(*(v0 + 1648), *(v0 + 1632));
      goto LABEL_24;
    }
  }

  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v27 = qword_28140BCA0;
  *(v0 + 2672) = qword_28140BCA0;
  if (v27 && (v28 = sub_22B36081C(), v29 = [v27 dictionaryForKey_], v28, v29))
  {
    v30 = sub_22B3606EC();
  }

  else
  {
    v30 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  *(v0 + 1544) = v30;
  v37 = sub_22B35F3AC();
  sub_22B2AC400(v37, v38, v30, (v0 + 1088));

  if (!*(v0 + 1112))
  {
    sub_22B123284(v0 + 1088, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v86 = MEMORY[0x277D83B88];
    v148(*(v0 + 1912), v149, *(v0 + 1880));
    v87 = sub_22B36050C();
    v88 = sub_22B360D1C();
    v89 = os_log_type_enabled(v87, v88);
    v90 = *(v0 + 1912);
    v150 = *(v0 + 1880);
    if (v89)
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v154[0] = v92;
      *v91 = 136315138;
      v93 = v144;
      v147 = v90;
      v94 = v93;
      v152 = v24;
      v95 = sub_22B35F3AC();
      v97 = v96;

      v98 = sub_22B1A7B20(v95, v97, v154);

      *(v91 + 4) = v98;

      _os_log_impl(&dword_22B116000, v87, v88, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      v99 = v92;
      v86 = MEMORY[0x277D83B88];
      MEMORY[0x23188F650](v99, -1, -1);
      MEMORY[0x23188F650](v91, -1, -1);

      v152(v147, v150);
    }

    else
    {

      v24(v90, v150);
    }

    v100 = sub_22B35F3AC();
    v102 = v101;
    *(v0 + 1144) = v86;
    *(v0 + 1120) = 1;
    sub_22B172454((v0 + 1120), (v0 + 1152));
    v103 = *(v0 + 1544);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154[0] = v103;
    sub_22B33F298((v0 + 1152), v100, v102, isUniquelyReferenced_nonNull_native);
    goto LABEL_36;
  }

  v39 = *(v0 + 1536);
  v40 = *(v0 + 1880);
  if (v39 < 10)
  {
    v148(*(v0 + 1920), v149, v40);
    v41 = sub_22B36050C();
    v42 = sub_22B360D1C();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 1920);
    v45 = *(v0 + 1880);
    if (v43)
    {
      v138 = *(v0 + 1880);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v154[0] = v47;
      *v46 = 136315394;
      v48 = v144;
      v145 = v44;
      v49 = v48;
      v50 = sub_22B35F3AC();
      v52 = v51;

      v53 = sub_22B1A7B20(v50, v52, v154);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2048;
      v54 = v39 + 1;
      *(v46 + 14) = v54;

      _os_log_impl(&dword_22B116000, v41, v42, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x23188F650](v47, -1, -1);
      MEMORY[0x23188F650](v46, -1, -1);

      v24(v145, v138);
    }

    else
    {

      v24(v44, v45);
      v54 = v39 + 1;
    }

    v124 = sub_22B35F3AC();
    v126 = v125;
    *(v0 + 1240) = MEMORY[0x277D83B88];
    *(v0 + 1216) = v54;
    sub_22B172454((v0 + 1216), (v0 + 1248));
    v127 = *(v0 + 1544);
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v154[0] = v127;
    sub_22B33F298((v0 + 1248), v124, v126, v128);
LABEL_36:

    *(v0 + 1544) = v154[0];
    v105 = *(v0 + 2672);
    if (v105)
    {
      v106 = sub_22B3606CC();
      v107 = sub_22B36081C();
      [v105 setObject:v106 forKey:v107];
    }

    goto LABEL_39;
  }

  v148(*(v0 + 1928), v149, v40);
  v111 = sub_22B36050C();
  v112 = sub_22B360D1C();
  v113 = os_log_type_enabled(v111, v112);
  v114 = *(v0 + 1928);
  v115 = *(v0 + 1880);
  if (v113)
  {
    v116 = swift_slowAlloc();
    v143 = v115;
    v117 = swift_slowAlloc();
    v154[0] = v117;
    *v116 = 136315138;
    v118 = v144;
    v142 = v114;
    v119 = v144;
    v153 = v24;
    v120 = sub_22B35F3AC();
    v122 = v121;

    v123 = sub_22B1A7B20(v120, v122, v154);

    *(v116 + 4) = v123;

    _os_log_impl(&dword_22B116000, v111, v112, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v116, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v117);
    MEMORY[0x23188F650](v117, -1, -1);
    MEMORY[0x23188F650](v116, -1, -1);

    v153(v142, v143);
  }

  else
  {

    v24(v114, v115);
    v118 = v144;
  }

  v129 = *(v0 + 1704);
  v130 = *(v0 + 1696);
  v131 = *(v0 + 1688);
  (*(v130 + 104))(v129, *MEMORY[0x277D07350], v131);
  v132 = v118;
  sub_22B35EE3C();
  (*(v130 + 8))(v129, v131);
  sub_22B35F39C();

  v132;
  v35 = swift_task_alloc();
  *(v0 + 2680) = v35;
  *v35 = v0;
  v36 = sub_22B2CC67C;
LABEL_48:
  v35[1] = v36;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B2CE068()
{
  v155 = v0;
  v1 = *(v0 + 2320);
  v2 = *(v0 + 2272);
  *(v0 + 2656) = v2;
  *(v0 + 2648) = v1;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 1936);
  v4 = *(v0 + 1888);
  v5 = *(v0 + 1880);
  v6 = __swift_project_value_buffer(v5, qword_28140BD10);
  swift_beginAccess();
  v148 = *(v4 + 16);
  v149 = v6;
  v148(v3, v6, v5);
  v7 = v1;
  v8 = v1;
  v9 = sub_22B36050C();
  v10 = sub_22B360D1C();
  v11 = os_log_type_enabled(v9, v10);
  v12 = *(v0 + 1936);
  v13 = *(v0 + 1888);
  v14 = *(v0 + 1880);
  v144 = v2;
  if (v11)
  {
    v15 = swift_slowAlloc();
    v140 = v14;
    v16 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v154[0] = v135;
    *v15 = 136446466;
    v137 = v12;
    v17 = v2;
    v18 = sub_22B35F3AC();
    v20 = v19;

    v21 = sub_22B1A7B20(v18, v20, v154);

    *(v15 + 4) = v21;
    *(v15 + 12) = 2114;
    v22 = v1;
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v23;
    *v16 = v23;

    _os_log_impl(&dword_22B116000, v9, v10, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v15, 0x16u);
    sub_22B123284(v16, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v16, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v135);
    MEMORY[0x23188F650](v135, -1, -1);
    MEMORY[0x23188F650](v15, -1, -1);

    v24 = *(v13 + 8);
    v24(v137, v140);
  }

  else
  {

    v24 = *(v13 + 8);
    v24(v12, v14);
  }

  *(v0 + 1560) = v1;
  v25 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
LABEL_24:

    *(v0 + 1552) = v1;
    v55 = v1;
    v56 = swift_dynamicCast();
    v57 = *(v0 + 1880);
    if (v56)
    {
      v58 = *(v0 + 1904);
      (*(*(v0 + 1616) + 8))(*(v0 + 1624), *(v0 + 1608));
      v148(v58, v149, v57);
      v59 = v1;
      v60 = v1;
      v61 = sub_22B36050C();
      v62 = sub_22B360D1C();
      v63 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 1904);
      v65 = *(v0 + 1880);
      if (v63)
      {
        v151 = v24;
        v66 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v154[0] = v139;
        *v66 = 136446466;
        v136 = v61;
        v67 = v144;
        v146 = v64;
        v68 = sub_22B35F3AC();
        v141 = v65;
        v70 = v69;

        v71 = sub_22B1A7B20(v68, v70, v154);

        *(v66 + 4) = v71;
        *(v66 + 12) = 2114;
        v72 = v1;
        v73 = _swift_stdlib_bridgeErrorToNSError();
        *(v66 + 14) = v73;
        v74 = v133;
        *v133 = v73;

        v75 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_29:
        _os_log_impl(&dword_22B116000, v136, v62, v75, v66, 0x16u);
        sub_22B123284(v74, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v74, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v139);
        MEMORY[0x23188F650](v139, -1, -1);
        MEMORY[0x23188F650](v66, -1, -1);

        v151(v146, v141);
LABEL_39:
        v108 = *(v0 + 2656);
        swift_willThrow();

        v109 = *(v0 + 8);

        return v109();
      }
    }

    else
    {
      v148(*(v0 + 1896), v149, *(v0 + 1880));
      v76 = v1;
      v77 = v1;
      v61 = sub_22B36050C();
      v62 = sub_22B360D1C();
      v78 = os_log_type_enabled(v61, v62);
      v64 = *(v0 + 1896);
      v65 = *(v0 + 1880);
      if (v78)
      {
        v151 = v24;
        v66 = swift_slowAlloc();
        v134 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v154[0] = v139;
        *v66 = 136446466;
        v136 = v61;
        v79 = v144;
        v146 = v64;
        v80 = sub_22B35F3AC();
        v141 = v65;
        v82 = v81;

        v83 = sub_22B1A7B20(v80, v82, v154);

        *(v66 + 4) = v83;
        *(v66 + 12) = 2114;
        v84 = v1;
        v85 = _swift_stdlib_bridgeErrorToNSError();
        *(v66 + 14) = v85;
        v74 = v134;
        *v134 = v85;

        v75 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_29;
      }
    }

    v24(v64, v65);
    goto LABEL_39;
  }

  v26 = (*(*(v0 + 1640) + 88))(*(v0 + 1648), *(v0 + 1632));
  if (v26 != *MEMORY[0x277D182D0])
  {
    if (v26 == *MEMORY[0x277D182D8])
    {
      v31 = *(v0 + 1704);
      v32 = *(v0 + 1696);
      v33 = *(v0 + 1688);

      (*(v32 + 104))(v31, *MEMORY[0x277D07348], v33);
      v34 = v144;
      sub_22B35EE3C();
      (*(v32 + 8))(v31, v33);
      sub_22B35F39C();

      v34;
      v35 = swift_task_alloc();
      *(v0 + 2664) = v35;
      *v35 = v0;
      v36 = sub_22B2CC1C8;
      goto LABEL_48;
    }

    if (v26 != *MEMORY[0x277D182E0] && v26 != *MEMORY[0x277D182C8])
    {
      (*(*(v0 + 1640) + 8))(*(v0 + 1648), *(v0 + 1632));
      goto LABEL_24;
    }
  }

  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v27 = qword_28140BCA0;
  *(v0 + 2672) = qword_28140BCA0;
  if (v27 && (v28 = sub_22B36081C(), v29 = [v27 dictionaryForKey_], v28, v29))
  {
    v30 = sub_22B3606EC();
  }

  else
  {
    v30 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  *(v0 + 1544) = v30;
  v37 = sub_22B35F3AC();
  sub_22B2AC400(v37, v38, v30, (v0 + 1088));

  if (!*(v0 + 1112))
  {
    sub_22B123284(v0 + 1088, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v86 = MEMORY[0x277D83B88];
    v148(*(v0 + 1912), v149, *(v0 + 1880));
    v87 = sub_22B36050C();
    v88 = sub_22B360D1C();
    v89 = os_log_type_enabled(v87, v88);
    v90 = *(v0 + 1912);
    v150 = *(v0 + 1880);
    if (v89)
    {
      v91 = swift_slowAlloc();
      v92 = swift_slowAlloc();
      v154[0] = v92;
      *v91 = 136315138;
      v93 = v144;
      v147 = v90;
      v94 = v93;
      v152 = v24;
      v95 = sub_22B35F3AC();
      v97 = v96;

      v98 = sub_22B1A7B20(v95, v97, v154);

      *(v91 + 4) = v98;

      _os_log_impl(&dword_22B116000, v87, v88, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v91, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v92);
      v99 = v92;
      v86 = MEMORY[0x277D83B88];
      MEMORY[0x23188F650](v99, -1, -1);
      MEMORY[0x23188F650](v91, -1, -1);

      v152(v147, v150);
    }

    else
    {

      v24(v90, v150);
    }

    v100 = sub_22B35F3AC();
    v102 = v101;
    *(v0 + 1144) = v86;
    *(v0 + 1120) = 1;
    sub_22B172454((v0 + 1120), (v0 + 1152));
    v103 = *(v0 + 1544);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v154[0] = v103;
    sub_22B33F298((v0 + 1152), v100, v102, isUniquelyReferenced_nonNull_native);
    goto LABEL_36;
  }

  v39 = *(v0 + 1536);
  v40 = *(v0 + 1880);
  if (v39 < 10)
  {
    v148(*(v0 + 1920), v149, v40);
    v41 = sub_22B36050C();
    v42 = sub_22B360D1C();
    v43 = os_log_type_enabled(v41, v42);
    v44 = *(v0 + 1920);
    v45 = *(v0 + 1880);
    if (v43)
    {
      v138 = *(v0 + 1880);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v154[0] = v47;
      *v46 = 136315394;
      v48 = v144;
      v145 = v44;
      v49 = v48;
      v50 = sub_22B35F3AC();
      v52 = v51;

      v53 = sub_22B1A7B20(v50, v52, v154);

      *(v46 + 4) = v53;
      *(v46 + 12) = 2048;
      v54 = v39 + 1;
      *(v46 + 14) = v54;

      _os_log_impl(&dword_22B116000, v41, v42, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v47);
      MEMORY[0x23188F650](v47, -1, -1);
      MEMORY[0x23188F650](v46, -1, -1);

      v24(v145, v138);
    }

    else
    {

      v24(v44, v45);
      v54 = v39 + 1;
    }

    v124 = sub_22B35F3AC();
    v126 = v125;
    *(v0 + 1240) = MEMORY[0x277D83B88];
    *(v0 + 1216) = v54;
    sub_22B172454((v0 + 1216), (v0 + 1248));
    v127 = *(v0 + 1544);
    v128 = swift_isUniquelyReferenced_nonNull_native();
    v154[0] = v127;
    sub_22B33F298((v0 + 1248), v124, v126, v128);
LABEL_36:

    *(v0 + 1544) = v154[0];
    v105 = *(v0 + 2672);
    if (v105)
    {
      v106 = sub_22B3606CC();
      v107 = sub_22B36081C();
      [v105 setObject:v106 forKey:v107];
    }

    goto LABEL_39;
  }

  v148(*(v0 + 1928), v149, v40);
  v111 = sub_22B36050C();
  v112 = sub_22B360D1C();
  v113 = os_log_type_enabled(v111, v112);
  v114 = *(v0 + 1928);
  v115 = *(v0 + 1880);
  if (v113)
  {
    v116 = swift_slowAlloc();
    v143 = v115;
    v117 = swift_slowAlloc();
    v154[0] = v117;
    *v116 = 136315138;
    v118 = v144;
    v142 = v114;
    v119 = v144;
    v153 = v24;
    v120 = sub_22B35F3AC();
    v122 = v121;

    v123 = sub_22B1A7B20(v120, v122, v154);

    *(v116 + 4) = v123;

    _os_log_impl(&dword_22B116000, v111, v112, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v116, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v117);
    MEMORY[0x23188F650](v117, -1, -1);
    MEMORY[0x23188F650](v116, -1, -1);

    v153(v142, v143);
  }

  else
  {

    v24(v114, v115);
    v118 = v144;
  }

  v129 = *(v0 + 1704);
  v130 = *(v0 + 1696);
  v131 = *(v0 + 1688);
  (*(v130 + 104))(v129, *MEMORY[0x277D07350], v131);
  v132 = v118;
  sub_22B35EE3C();
  (*(v130 + 8))(v129, v131);
  sub_22B35F39C();

  v132;
  v35 = swift_task_alloc();
  *(v0 + 2680) = v35;
  *v35 = v0;
  v36 = sub_22B2CC67C;
LABEL_48:
  v35[1] = v36;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B2CF4E8()
{
  v160 = v0;
  v1 = *(v0 + 2368);
  v2 = *(v0 + 2360);
  v3 = *(v0 + 2344);
  v4 = *(v0 + 1848);
  v5 = *(v0 + 1784);

  sub_22B12F174(v2, v1);
  v3(v4, v5);
  v6 = *(v0 + 2392);
  v7 = *(v0 + 2272);
  *(v0 + 2656) = v7;
  *(v0 + 2648) = v6;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 1936);
  v9 = *(v0 + 1888);
  v10 = *(v0 + 1880);
  v11 = __swift_project_value_buffer(v10, qword_28140BD10);
  swift_beginAccess();
  v153 = *(v9 + 16);
  v154 = v11;
  v153(v8, v11, v10);
  v12 = v6;
  v13 = v6;
  v14 = sub_22B36050C();
  v15 = sub_22B360D1C();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 1936);
  v18 = *(v0 + 1888);
  v19 = *(v0 + 1880);
  v149 = v7;
  if (v16)
  {
    v20 = swift_slowAlloc();
    v145 = v19;
    v21 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v159[0] = v140;
    *v20 = 136446466;
    v142 = v17;
    v22 = v7;
    v23 = sub_22B35F3AC();
    v25 = v24;

    v26 = sub_22B1A7B20(v23, v25, v159);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2114;
    v27 = v6;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v28;
    *v21 = v28;

    _os_log_impl(&dword_22B116000, v14, v15, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v20, 0x16u);
    sub_22B123284(v21, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v140);
    MEMORY[0x23188F650](v140, -1, -1);
    MEMORY[0x23188F650](v20, -1, -1);

    v29 = *(v18 + 8);
    v29(v142, v145);
  }

  else
  {

    v29 = *(v18 + 8);
    v29(v17, v19);
  }

  *(v0 + 1560) = v6;
  v30 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
LABEL_24:

    *(v0 + 1552) = v6;
    v60 = v6;
    v61 = swift_dynamicCast();
    v62 = *(v0 + 1880);
    if (v61)
    {
      v63 = *(v0 + 1904);
      (*(*(v0 + 1616) + 8))(*(v0 + 1624), *(v0 + 1608));
      v153(v63, v154, v62);
      v64 = v6;
      v65 = v6;
      v66 = sub_22B36050C();
      v67 = sub_22B360D1C();
      v68 = os_log_type_enabled(v66, v67);
      v69 = *(v0 + 1904);
      v70 = *(v0 + 1880);
      if (v68)
      {
        v156 = v29;
        v71 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v159[0] = v144;
        *v71 = 136446466;
        v141 = v66;
        v72 = v149;
        v151 = v69;
        v73 = sub_22B35F3AC();
        v146 = v70;
        v75 = v74;

        v76 = sub_22B1A7B20(v73, v75, v159);

        *(v71 + 4) = v76;
        *(v71 + 12) = 2114;
        v77 = v6;
        v78 = _swift_stdlib_bridgeErrorToNSError();
        *(v71 + 14) = v78;
        v79 = v138;
        *v138 = v78;

        v80 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_29:
        _os_log_impl(&dword_22B116000, v141, v67, v80, v71, 0x16u);
        sub_22B123284(v79, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v79, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v144);
        MEMORY[0x23188F650](v144, -1, -1);
        MEMORY[0x23188F650](v71, -1, -1);

        v156(v151, v146);
LABEL_39:
        v113 = *(v0 + 2656);
        swift_willThrow();

        v114 = *(v0 + 8);

        return v114();
      }
    }

    else
    {
      v153(*(v0 + 1896), v154, *(v0 + 1880));
      v81 = v6;
      v82 = v6;
      v66 = sub_22B36050C();
      v67 = sub_22B360D1C();
      v83 = os_log_type_enabled(v66, v67);
      v69 = *(v0 + 1896);
      v70 = *(v0 + 1880);
      if (v83)
      {
        v156 = v29;
        v71 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v159[0] = v144;
        *v71 = 136446466;
        v141 = v66;
        v84 = v149;
        v151 = v69;
        v85 = sub_22B35F3AC();
        v146 = v70;
        v87 = v86;

        v88 = sub_22B1A7B20(v85, v87, v159);

        *(v71 + 4) = v88;
        *(v71 + 12) = 2114;
        v89 = v6;
        v90 = _swift_stdlib_bridgeErrorToNSError();
        *(v71 + 14) = v90;
        v79 = v139;
        *v139 = v90;

        v80 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_29;
      }
    }

    v29(v69, v70);
    goto LABEL_39;
  }

  v31 = (*(*(v0 + 1640) + 88))(*(v0 + 1648), *(v0 + 1632));
  if (v31 != *MEMORY[0x277D182D0])
  {
    if (v31 == *MEMORY[0x277D182D8])
    {
      v36 = *(v0 + 1704);
      v37 = *(v0 + 1696);
      v38 = *(v0 + 1688);

      (*(v37 + 104))(v36, *MEMORY[0x277D07348], v38);
      v39 = v149;
      sub_22B35EE3C();
      (*(v37 + 8))(v36, v38);
      sub_22B35F39C();

      v39;
      v40 = swift_task_alloc();
      *(v0 + 2664) = v40;
      *v40 = v0;
      v41 = sub_22B2CC1C8;
      goto LABEL_48;
    }

    if (v31 != *MEMORY[0x277D182E0] && v31 != *MEMORY[0x277D182C8])
    {
      (*(*(v0 + 1640) + 8))(*(v0 + 1648), *(v0 + 1632));
      goto LABEL_24;
    }
  }

  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v32 = qword_28140BCA0;
  *(v0 + 2672) = qword_28140BCA0;
  if (v32 && (v33 = sub_22B36081C(), v34 = [v32 dictionaryForKey_], v33, v34))
  {
    v35 = sub_22B3606EC();
  }

  else
  {
    v35 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  *(v0 + 1544) = v35;
  v42 = sub_22B35F3AC();
  sub_22B2AC400(v42, v43, v35, (v0 + 1088));

  if (!*(v0 + 1112))
  {
    sub_22B123284(v0 + 1088, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v91 = MEMORY[0x277D83B88];
    v153(*(v0 + 1912), v154, *(v0 + 1880));
    v92 = sub_22B36050C();
    v93 = sub_22B360D1C();
    v94 = os_log_type_enabled(v92, v93);
    v95 = *(v0 + 1912);
    v155 = *(v0 + 1880);
    if (v94)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v159[0] = v97;
      *v96 = 136315138;
      v98 = v149;
      v152 = v95;
      v99 = v98;
      v157 = v29;
      v100 = sub_22B35F3AC();
      v102 = v101;

      v103 = sub_22B1A7B20(v100, v102, v159);

      *(v96 + 4) = v103;

      _os_log_impl(&dword_22B116000, v92, v93, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      v104 = v97;
      v91 = MEMORY[0x277D83B88];
      MEMORY[0x23188F650](v104, -1, -1);
      MEMORY[0x23188F650](v96, -1, -1);

      v157(v152, v155);
    }

    else
    {

      v29(v95, v155);
    }

    v105 = sub_22B35F3AC();
    v107 = v106;
    *(v0 + 1144) = v91;
    *(v0 + 1120) = 1;
    sub_22B172454((v0 + 1120), (v0 + 1152));
    v108 = *(v0 + 1544);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v159[0] = v108;
    sub_22B33F298((v0 + 1152), v105, v107, isUniquelyReferenced_nonNull_native);
    goto LABEL_36;
  }

  v44 = *(v0 + 1536);
  v45 = *(v0 + 1880);
  if (v44 < 10)
  {
    v153(*(v0 + 1920), v154, v45);
    v46 = sub_22B36050C();
    v47 = sub_22B360D1C();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 1920);
    v50 = *(v0 + 1880);
    if (v48)
    {
      v143 = *(v0 + 1880);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v159[0] = v52;
      *v51 = 136315394;
      v53 = v149;
      v150 = v49;
      v54 = v53;
      v55 = sub_22B35F3AC();
      v57 = v56;

      v58 = sub_22B1A7B20(v55, v57, v159);

      *(v51 + 4) = v58;
      *(v51 + 12) = 2048;
      v59 = v44 + 1;
      *(v51 + 14) = v59;

      _os_log_impl(&dword_22B116000, v46, v47, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v51, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x23188F650](v52, -1, -1);
      MEMORY[0x23188F650](v51, -1, -1);

      v29(v150, v143);
    }

    else
    {

      v29(v49, v50);
      v59 = v44 + 1;
    }

    v129 = sub_22B35F3AC();
    v131 = v130;
    *(v0 + 1240) = MEMORY[0x277D83B88];
    *(v0 + 1216) = v59;
    sub_22B172454((v0 + 1216), (v0 + 1248));
    v132 = *(v0 + 1544);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v159[0] = v132;
    sub_22B33F298((v0 + 1248), v129, v131, v133);
LABEL_36:

    *(v0 + 1544) = v159[0];
    v110 = *(v0 + 2672);
    if (v110)
    {
      v111 = sub_22B3606CC();
      v112 = sub_22B36081C();
      [v110 setObject:v111 forKey:v112];
    }

    goto LABEL_39;
  }

  v153(*(v0 + 1928), v154, v45);
  v116 = sub_22B36050C();
  v117 = sub_22B360D1C();
  v118 = os_log_type_enabled(v116, v117);
  v119 = *(v0 + 1928);
  v120 = *(v0 + 1880);
  if (v118)
  {
    v121 = swift_slowAlloc();
    v148 = v120;
    v122 = swift_slowAlloc();
    v159[0] = v122;
    *v121 = 136315138;
    v123 = v149;
    v147 = v119;
    v124 = v149;
    v158 = v29;
    v125 = sub_22B35F3AC();
    v127 = v126;

    v128 = sub_22B1A7B20(v125, v127, v159);

    *(v121 + 4) = v128;

    _os_log_impl(&dword_22B116000, v116, v117, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v121, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v122);
    MEMORY[0x23188F650](v122, -1, -1);
    MEMORY[0x23188F650](v121, -1, -1);

    v158(v147, v148);
  }

  else
  {

    v29(v119, v120);
    v123 = v149;
  }

  v134 = *(v0 + 1704);
  v135 = *(v0 + 1696);
  v136 = *(v0 + 1688);
  (*(v135 + 104))(v134, *MEMORY[0x277D07350], v136);
  v137 = v123;
  sub_22B35EE3C();
  (*(v135 + 8))(v134, v136);
  sub_22B35F39C();

  v137;
  v40 = swift_task_alloc();
  *(v0 + 2680) = v40;
  *v40 = v0;
  v41 = sub_22B2CC67C;
LABEL_48:
  v40[1] = v41;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B2D09A0()
{
  v161 = v0;
  v1 = *(v0 + 2408);
  v2 = *(v0 + 2400);
  v3 = *(v0 + 2344);
  v4 = *(v0 + 1848);
  v5 = *(v0 + 1832);
  v6 = *(v0 + 1784);

  sub_22B12F174(v2, v1);
  v3(v5, v6);
  v3(v4, v6);
  v7 = *(v0 + 2432);
  v8 = *(v0 + 2272);
  *(v0 + 2656) = v8;
  *(v0 + 2648) = v7;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v9 = *(v0 + 1936);
  v10 = *(v0 + 1888);
  v11 = *(v0 + 1880);
  v12 = __swift_project_value_buffer(v11, qword_28140BD10);
  swift_beginAccess();
  v154 = *(v10 + 16);
  v155 = v12;
  v154(v9, v12, v11);
  v13 = v7;
  v14 = v7;
  v15 = sub_22B36050C();
  v16 = sub_22B360D1C();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 1936);
  v19 = *(v0 + 1888);
  v20 = *(v0 + 1880);
  v150 = v8;
  if (v17)
  {
    v21 = swift_slowAlloc();
    v146 = v20;
    v22 = swift_slowAlloc();
    v141 = swift_slowAlloc();
    v160[0] = v141;
    *v21 = 136446466;
    v143 = v18;
    v23 = v8;
    v24 = sub_22B35F3AC();
    v26 = v25;

    v27 = sub_22B1A7B20(v24, v26, v160);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2114;
    v28 = v7;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 14) = v29;
    *v22 = v29;

    _os_log_impl(&dword_22B116000, v15, v16, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v21, 0x16u);
    sub_22B123284(v22, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v22, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v141);
    MEMORY[0x23188F650](v141, -1, -1);
    MEMORY[0x23188F650](v21, -1, -1);

    v30 = *(v19 + 8);
    v30(v143, v146);
  }

  else
  {

    v30 = *(v19 + 8);
    v30(v18, v20);
  }

  *(v0 + 1560) = v7;
  v31 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
LABEL_24:

    *(v0 + 1552) = v7;
    v61 = v7;
    v62 = swift_dynamicCast();
    v63 = *(v0 + 1880);
    if (v62)
    {
      v64 = *(v0 + 1904);
      (*(*(v0 + 1616) + 8))(*(v0 + 1624), *(v0 + 1608));
      v154(v64, v155, v63);
      v65 = v7;
      v66 = v7;
      v67 = sub_22B36050C();
      v68 = sub_22B360D1C();
      v69 = os_log_type_enabled(v67, v68);
      v70 = *(v0 + 1904);
      v71 = *(v0 + 1880);
      if (v69)
      {
        v157 = v30;
        v72 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v160[0] = v145;
        *v72 = 136446466;
        v142 = v67;
        v73 = v150;
        v152 = v70;
        v74 = sub_22B35F3AC();
        v147 = v71;
        v76 = v75;

        v77 = sub_22B1A7B20(v74, v76, v160);

        *(v72 + 4) = v77;
        *(v72 + 12) = 2114;
        v78 = v7;
        v79 = _swift_stdlib_bridgeErrorToNSError();
        *(v72 + 14) = v79;
        v80 = v139;
        *v139 = v79;

        v81 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_29:
        _os_log_impl(&dword_22B116000, v142, v68, v81, v72, 0x16u);
        sub_22B123284(v80, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v80, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v145);
        MEMORY[0x23188F650](v145, -1, -1);
        MEMORY[0x23188F650](v72, -1, -1);

        v157(v152, v147);
LABEL_39:
        v114 = *(v0 + 2656);
        swift_willThrow();

        v115 = *(v0 + 8);

        return v115();
      }
    }

    else
    {
      v154(*(v0 + 1896), v155, *(v0 + 1880));
      v82 = v7;
      v83 = v7;
      v67 = sub_22B36050C();
      v68 = sub_22B360D1C();
      v84 = os_log_type_enabled(v67, v68);
      v70 = *(v0 + 1896);
      v71 = *(v0 + 1880);
      if (v84)
      {
        v157 = v30;
        v72 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v160[0] = v145;
        *v72 = 136446466;
        v142 = v67;
        v85 = v150;
        v152 = v70;
        v86 = sub_22B35F3AC();
        v147 = v71;
        v88 = v87;

        v89 = sub_22B1A7B20(v86, v88, v160);

        *(v72 + 4) = v89;
        *(v72 + 12) = 2114;
        v90 = v7;
        v91 = _swift_stdlib_bridgeErrorToNSError();
        *(v72 + 14) = v91;
        v80 = v140;
        *v140 = v91;

        v81 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_29;
      }
    }

    v30(v70, v71);
    goto LABEL_39;
  }

  v32 = (*(*(v0 + 1640) + 88))(*(v0 + 1648), *(v0 + 1632));
  if (v32 != *MEMORY[0x277D182D0])
  {
    if (v32 == *MEMORY[0x277D182D8])
    {
      v37 = *(v0 + 1704);
      v38 = *(v0 + 1696);
      v39 = *(v0 + 1688);

      (*(v38 + 104))(v37, *MEMORY[0x277D07348], v39);
      v40 = v150;
      sub_22B35EE3C();
      (*(v38 + 8))(v37, v39);
      sub_22B35F39C();

      v40;
      v41 = swift_task_alloc();
      *(v0 + 2664) = v41;
      *v41 = v0;
      v42 = sub_22B2CC1C8;
      goto LABEL_48;
    }

    if (v32 != *MEMORY[0x277D182E0] && v32 != *MEMORY[0x277D182C8])
    {
      (*(*(v0 + 1640) + 8))(*(v0 + 1648), *(v0 + 1632));
      goto LABEL_24;
    }
  }

  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v33 = qword_28140BCA0;
  *(v0 + 2672) = qword_28140BCA0;
  if (v33 && (v34 = sub_22B36081C(), v35 = [v33 dictionaryForKey_], v34, v35))
  {
    v36 = sub_22B3606EC();
  }

  else
  {
    v36 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  *(v0 + 1544) = v36;
  v43 = sub_22B35F3AC();
  sub_22B2AC400(v43, v44, v36, (v0 + 1088));

  if (!*(v0 + 1112))
  {
    sub_22B123284(v0 + 1088, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v92 = MEMORY[0x277D83B88];
    v154(*(v0 + 1912), v155, *(v0 + 1880));
    v93 = sub_22B36050C();
    v94 = sub_22B360D1C();
    v95 = os_log_type_enabled(v93, v94);
    v96 = *(v0 + 1912);
    v156 = *(v0 + 1880);
    if (v95)
    {
      v97 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      v160[0] = v98;
      *v97 = 136315138;
      v99 = v150;
      v153 = v96;
      v100 = v99;
      v158 = v30;
      v101 = sub_22B35F3AC();
      v103 = v102;

      v104 = sub_22B1A7B20(v101, v103, v160);

      *(v97 + 4) = v104;

      _os_log_impl(&dword_22B116000, v93, v94, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v97, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v98);
      v105 = v98;
      v92 = MEMORY[0x277D83B88];
      MEMORY[0x23188F650](v105, -1, -1);
      MEMORY[0x23188F650](v97, -1, -1);

      v158(v153, v156);
    }

    else
    {

      v30(v96, v156);
    }

    v106 = sub_22B35F3AC();
    v108 = v107;
    *(v0 + 1144) = v92;
    *(v0 + 1120) = 1;
    sub_22B172454((v0 + 1120), (v0 + 1152));
    v109 = *(v0 + 1544);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v160[0] = v109;
    sub_22B33F298((v0 + 1152), v106, v108, isUniquelyReferenced_nonNull_native);
    goto LABEL_36;
  }

  v45 = *(v0 + 1536);
  v46 = *(v0 + 1880);
  if (v45 < 10)
  {
    v154(*(v0 + 1920), v155, v46);
    v47 = sub_22B36050C();
    v48 = sub_22B360D1C();
    v49 = os_log_type_enabled(v47, v48);
    v50 = *(v0 + 1920);
    v51 = *(v0 + 1880);
    if (v49)
    {
      v144 = *(v0 + 1880);
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v160[0] = v53;
      *v52 = 136315394;
      v54 = v150;
      v151 = v50;
      v55 = v54;
      v56 = sub_22B35F3AC();
      v58 = v57;

      v59 = sub_22B1A7B20(v56, v58, v160);

      *(v52 + 4) = v59;
      *(v52 + 12) = 2048;
      v60 = v45 + 1;
      *(v52 + 14) = v60;

      _os_log_impl(&dword_22B116000, v47, v48, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v52, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v53);
      MEMORY[0x23188F650](v53, -1, -1);
      MEMORY[0x23188F650](v52, -1, -1);

      v30(v151, v144);
    }

    else
    {

      v30(v50, v51);
      v60 = v45 + 1;
    }

    v130 = sub_22B35F3AC();
    v132 = v131;
    *(v0 + 1240) = MEMORY[0x277D83B88];
    *(v0 + 1216) = v60;
    sub_22B172454((v0 + 1216), (v0 + 1248));
    v133 = *(v0 + 1544);
    v134 = swift_isUniquelyReferenced_nonNull_native();
    v160[0] = v133;
    sub_22B33F298((v0 + 1248), v130, v132, v134);
LABEL_36:

    *(v0 + 1544) = v160[0];
    v111 = *(v0 + 2672);
    if (v111)
    {
      v112 = sub_22B3606CC();
      v113 = sub_22B36081C();
      [v111 setObject:v112 forKey:v113];
    }

    goto LABEL_39;
  }

  v154(*(v0 + 1928), v155, v46);
  v117 = sub_22B36050C();
  v118 = sub_22B360D1C();
  v119 = os_log_type_enabled(v117, v118);
  v120 = *(v0 + 1928);
  v121 = *(v0 + 1880);
  if (v119)
  {
    v122 = swift_slowAlloc();
    v149 = v121;
    v123 = swift_slowAlloc();
    v160[0] = v123;
    *v122 = 136315138;
    v124 = v150;
    v148 = v120;
    v125 = v150;
    v159 = v30;
    v126 = sub_22B35F3AC();
    v128 = v127;

    v129 = sub_22B1A7B20(v126, v128, v160);

    *(v122 + 4) = v129;

    _os_log_impl(&dword_22B116000, v117, v118, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v122, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v123);
    MEMORY[0x23188F650](v123, -1, -1);
    MEMORY[0x23188F650](v122, -1, -1);

    v159(v148, v149);
  }

  else
  {

    v30(v120, v121);
    v124 = v150;
  }

  v135 = *(v0 + 1704);
  v136 = *(v0 + 1696);
  v137 = *(v0 + 1688);
  (*(v136 + 104))(v135, *MEMORY[0x277D07350], v137);
  v138 = v124;
  sub_22B35EE3C();
  (*(v136 + 8))(v135, v137);
  sub_22B35F39C();

  v138;
  v41 = swift_task_alloc();
  *(v0 + 2680) = v41;
  *v41 = v0;
  v42 = sub_22B2CC67C;
LABEL_48:
  v41[1] = v42;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B2D1E68()
{
  v160 = v0;
  v1 = *(v0 + 2344);
  v2 = *(v0 + 1848);
  v3 = *(v0 + 1832);
  v4 = *(v0 + 1816);
  v5 = *(v0 + 1784);

  v1(v4, v5);
  v1(v3, v5);
  v1(v2, v5);
  v6 = *(v0 + 2472);
  v7 = *(v0 + 2272);
  *(v0 + 2656) = v7;
  *(v0 + 2648) = v6;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 1936);
  v9 = *(v0 + 1888);
  v10 = *(v0 + 1880);
  v11 = __swift_project_value_buffer(v10, qword_28140BD10);
  swift_beginAccess();
  v153 = *(v9 + 16);
  v154 = v11;
  v153(v8, v11, v10);
  v12 = v6;
  v13 = v6;
  v14 = sub_22B36050C();
  v15 = sub_22B360D1C();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 1936);
  v18 = *(v0 + 1888);
  v19 = *(v0 + 1880);
  v149 = v7;
  if (v16)
  {
    v20 = swift_slowAlloc();
    v145 = v19;
    v21 = swift_slowAlloc();
    v140 = swift_slowAlloc();
    v159[0] = v140;
    *v20 = 136446466;
    v142 = v17;
    v22 = v7;
    v23 = sub_22B35F3AC();
    v25 = v24;

    v26 = sub_22B1A7B20(v23, v25, v159);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2114;
    v27 = v6;
    v28 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v28;
    *v21 = v28;

    _os_log_impl(&dword_22B116000, v14, v15, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v20, 0x16u);
    sub_22B123284(v21, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v21, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v140);
    MEMORY[0x23188F650](v140, -1, -1);
    MEMORY[0x23188F650](v20, -1, -1);

    v29 = *(v18 + 8);
    v29(v142, v145);
  }

  else
  {

    v29 = *(v18 + 8);
    v29(v17, v19);
  }

  *(v0 + 1560) = v6;
  v30 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
LABEL_24:

    *(v0 + 1552) = v6;
    v60 = v6;
    v61 = swift_dynamicCast();
    v62 = *(v0 + 1880);
    if (v61)
    {
      v63 = *(v0 + 1904);
      (*(*(v0 + 1616) + 8))(*(v0 + 1624), *(v0 + 1608));
      v153(v63, v154, v62);
      v64 = v6;
      v65 = v6;
      v66 = sub_22B36050C();
      v67 = sub_22B360D1C();
      v68 = os_log_type_enabled(v66, v67);
      v69 = *(v0 + 1904);
      v70 = *(v0 + 1880);
      if (v68)
      {
        v156 = v29;
        v71 = swift_slowAlloc();
        v138 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v159[0] = v144;
        *v71 = 136446466;
        v141 = v66;
        v72 = v149;
        v151 = v69;
        v73 = sub_22B35F3AC();
        v146 = v70;
        v75 = v74;

        v76 = sub_22B1A7B20(v73, v75, v159);

        *(v71 + 4) = v76;
        *(v71 + 12) = 2114;
        v77 = v6;
        v78 = _swift_stdlib_bridgeErrorToNSError();
        *(v71 + 14) = v78;
        v79 = v138;
        *v138 = v78;

        v80 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_29:
        _os_log_impl(&dword_22B116000, v141, v67, v80, v71, 0x16u);
        sub_22B123284(v79, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v79, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v144);
        MEMORY[0x23188F650](v144, -1, -1);
        MEMORY[0x23188F650](v71, -1, -1);

        v156(v151, v146);
LABEL_39:
        v113 = *(v0 + 2656);
        swift_willThrow();

        v114 = *(v0 + 8);

        return v114();
      }
    }

    else
    {
      v153(*(v0 + 1896), v154, *(v0 + 1880));
      v81 = v6;
      v82 = v6;
      v66 = sub_22B36050C();
      v67 = sub_22B360D1C();
      v83 = os_log_type_enabled(v66, v67);
      v69 = *(v0 + 1896);
      v70 = *(v0 + 1880);
      if (v83)
      {
        v156 = v29;
        v71 = swift_slowAlloc();
        v139 = swift_slowAlloc();
        v144 = swift_slowAlloc();
        v159[0] = v144;
        *v71 = 136446466;
        v141 = v66;
        v84 = v149;
        v151 = v69;
        v85 = sub_22B35F3AC();
        v146 = v70;
        v87 = v86;

        v88 = sub_22B1A7B20(v85, v87, v159);

        *(v71 + 4) = v88;
        *(v71 + 12) = 2114;
        v89 = v6;
        v90 = _swift_stdlib_bridgeErrorToNSError();
        *(v71 + 14) = v90;
        v79 = v139;
        *v139 = v90;

        v80 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_29;
      }
    }

    v29(v69, v70);
    goto LABEL_39;
  }

  v31 = (*(*(v0 + 1640) + 88))(*(v0 + 1648), *(v0 + 1632));
  if (v31 != *MEMORY[0x277D182D0])
  {
    if (v31 == *MEMORY[0x277D182D8])
    {
      v36 = *(v0 + 1704);
      v37 = *(v0 + 1696);
      v38 = *(v0 + 1688);

      (*(v37 + 104))(v36, *MEMORY[0x277D07348], v38);
      v39 = v149;
      sub_22B35EE3C();
      (*(v37 + 8))(v36, v38);
      sub_22B35F39C();

      v39;
      v40 = swift_task_alloc();
      *(v0 + 2664) = v40;
      *v40 = v0;
      v41 = sub_22B2CC1C8;
      goto LABEL_48;
    }

    if (v31 != *MEMORY[0x277D182E0] && v31 != *MEMORY[0x277D182C8])
    {
      (*(*(v0 + 1640) + 8))(*(v0 + 1648), *(v0 + 1632));
      goto LABEL_24;
    }
  }

  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v32 = qword_28140BCA0;
  *(v0 + 2672) = qword_28140BCA0;
  if (v32 && (v33 = sub_22B36081C(), v34 = [v32 dictionaryForKey_], v33, v34))
  {
    v35 = sub_22B3606EC();
  }

  else
  {
    v35 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  *(v0 + 1544) = v35;
  v42 = sub_22B35F3AC();
  sub_22B2AC400(v42, v43, v35, (v0 + 1088));

  if (!*(v0 + 1112))
  {
    sub_22B123284(v0 + 1088, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v91 = MEMORY[0x277D83B88];
    v153(*(v0 + 1912), v154, *(v0 + 1880));
    v92 = sub_22B36050C();
    v93 = sub_22B360D1C();
    v94 = os_log_type_enabled(v92, v93);
    v95 = *(v0 + 1912);
    v155 = *(v0 + 1880);
    if (v94)
    {
      v96 = swift_slowAlloc();
      v97 = swift_slowAlloc();
      v159[0] = v97;
      *v96 = 136315138;
      v98 = v149;
      v152 = v95;
      v99 = v98;
      v157 = v29;
      v100 = sub_22B35F3AC();
      v102 = v101;

      v103 = sub_22B1A7B20(v100, v102, v159);

      *(v96 + 4) = v103;

      _os_log_impl(&dword_22B116000, v92, v93, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v96, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v97);
      v104 = v97;
      v91 = MEMORY[0x277D83B88];
      MEMORY[0x23188F650](v104, -1, -1);
      MEMORY[0x23188F650](v96, -1, -1);

      v157(v152, v155);
    }

    else
    {

      v29(v95, v155);
    }

    v105 = sub_22B35F3AC();
    v107 = v106;
    *(v0 + 1144) = v91;
    *(v0 + 1120) = 1;
    sub_22B172454((v0 + 1120), (v0 + 1152));
    v108 = *(v0 + 1544);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v159[0] = v108;
    sub_22B33F298((v0 + 1152), v105, v107, isUniquelyReferenced_nonNull_native);
    goto LABEL_36;
  }

  v44 = *(v0 + 1536);
  v45 = *(v0 + 1880);
  if (v44 < 10)
  {
    v153(*(v0 + 1920), v154, v45);
    v46 = sub_22B36050C();
    v47 = sub_22B360D1C();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v0 + 1920);
    v50 = *(v0 + 1880);
    if (v48)
    {
      v143 = *(v0 + 1880);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v159[0] = v52;
      *v51 = 136315394;
      v53 = v149;
      v150 = v49;
      v54 = v53;
      v55 = sub_22B35F3AC();
      v57 = v56;

      v58 = sub_22B1A7B20(v55, v57, v159);

      *(v51 + 4) = v58;
      *(v51 + 12) = 2048;
      v59 = v44 + 1;
      *(v51 + 14) = v59;

      _os_log_impl(&dword_22B116000, v46, v47, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v51, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x23188F650](v52, -1, -1);
      MEMORY[0x23188F650](v51, -1, -1);

      v29(v150, v143);
    }

    else
    {

      v29(v49, v50);
      v59 = v44 + 1;
    }

    v129 = sub_22B35F3AC();
    v131 = v130;
    *(v0 + 1240) = MEMORY[0x277D83B88];
    *(v0 + 1216) = v59;
    sub_22B172454((v0 + 1216), (v0 + 1248));
    v132 = *(v0 + 1544);
    v133 = swift_isUniquelyReferenced_nonNull_native();
    v159[0] = v132;
    sub_22B33F298((v0 + 1248), v129, v131, v133);
LABEL_36:

    *(v0 + 1544) = v159[0];
    v110 = *(v0 + 2672);
    if (v110)
    {
      v111 = sub_22B3606CC();
      v112 = sub_22B36081C();
      [v110 setObject:v111 forKey:v112];
    }

    goto LABEL_39;
  }

  v153(*(v0 + 1928), v154, v45);
  v116 = sub_22B36050C();
  v117 = sub_22B360D1C();
  v118 = os_log_type_enabled(v116, v117);
  v119 = *(v0 + 1928);
  v120 = *(v0 + 1880);
  if (v118)
  {
    v121 = swift_slowAlloc();
    v148 = v120;
    v122 = swift_slowAlloc();
    v159[0] = v122;
    *v121 = 136315138;
    v123 = v149;
    v147 = v119;
    v124 = v149;
    v158 = v29;
    v125 = sub_22B35F3AC();
    v127 = v126;

    v128 = sub_22B1A7B20(v125, v127, v159);

    *(v121 + 4) = v128;

    _os_log_impl(&dword_22B116000, v116, v117, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v121, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v122);
    MEMORY[0x23188F650](v122, -1, -1);
    MEMORY[0x23188F650](v121, -1, -1);

    v158(v147, v148);
  }

  else
  {

    v29(v119, v120);
    v123 = v149;
  }

  v134 = *(v0 + 1704);
  v135 = *(v0 + 1696);
  v136 = *(v0 + 1688);
  (*(v135 + 104))(v134, *MEMORY[0x277D07350], v136);
  v137 = v123;
  sub_22B35EE3C();
  (*(v135 + 8))(v134, v136);
  sub_22B35F39C();

  v137;
  v40 = swift_task_alloc();
  *(v0 + 2680) = v40;
  *v40 = v0;
  v41 = sub_22B2CC67C;
LABEL_48:
  v40[1] = v41;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B2D332C()
{
  v165 = v0;
  v1 = *(v0 + 2504);
  v2 = *(v0 + 2496);
  v3 = *(v0 + 2344);
  v157 = *(v0 + 1832);
  v160 = *(v0 + 1848);
  v4 = *(v0 + 1816);
  v5 = *(v0 + 1784);
  v6 = *(v0 + 1680);
  v7 = *(v0 + 1672);
  v8 = *(v0 + 1664);

  sub_22B12F174(v2, v1);
  (*(v7 + 8))(v6, v8);
  v3(v4, v5);
  v3(v157, v5);
  v3(v160, v5);
  v9 = *(v0 + 2576);
  v10 = *(v0 + 2488);
  *(v0 + 2656) = v10;
  *(v0 + 2648) = v9;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 1936);
  v12 = *(v0 + 1888);
  v13 = *(v0 + 1880);
  v14 = __swift_project_value_buffer(v13, qword_28140BD10);
  swift_beginAccess();
  v156 = *(v12 + 16);
  v158 = v14;
  v156(v11, v14, v13);
  v15 = v9;
  v16 = v9;
  v17 = sub_22B36050C();
  v18 = sub_22B360D1C();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 1936);
  v21 = *(v0 + 1888);
  v22 = *(v0 + 1880);
  v152 = v10;
  if (v19)
  {
    v23 = swift_slowAlloc();
    v148 = v22;
    v24 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v164[0] = v143;
    *v23 = 136446466;
    v145 = v20;
    v25 = v10;
    v26 = sub_22B35F3AC();
    v28 = v27;

    v29 = sub_22B1A7B20(v26, v28, v164);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2114;
    v30 = v9;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v31;
    *v24 = v31;

    _os_log_impl(&dword_22B116000, v17, v18, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v23, 0x16u);
    sub_22B123284(v24, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v143);
    MEMORY[0x23188F650](v143, -1, -1);
    MEMORY[0x23188F650](v23, -1, -1);

    v32 = *(v21 + 8);
    v32(v145, v148);
  }

  else
  {

    v32 = *(v21 + 8);
    v32(v20, v22);
  }

  *(v0 + 1560) = v9;
  v33 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
LABEL_24:

    *(v0 + 1552) = v9;
    v63 = v9;
    v64 = swift_dynamicCast();
    v65 = *(v0 + 1880);
    if (v64)
    {
      v66 = *(v0 + 1904);
      (*(*(v0 + 1616) + 8))(*(v0 + 1624), *(v0 + 1608));
      v156(v66, v158, v65);
      v67 = v9;
      v68 = v9;
      v69 = sub_22B36050C();
      v70 = sub_22B360D1C();
      v71 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 1904);
      v73 = *(v0 + 1880);
      if (v71)
      {
        v161 = v32;
        v74 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v164[0] = v147;
        *v74 = 136446466;
        v144 = v69;
        v75 = v152;
        v154 = v72;
        v76 = sub_22B35F3AC();
        v149 = v73;
        v78 = v77;

        v79 = sub_22B1A7B20(v76, v78, v164);

        *(v74 + 4) = v79;
        *(v74 + 12) = 2114;
        v80 = v9;
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 14) = v81;
        v82 = v141;
        *v141 = v81;

        v83 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_29:
        _os_log_impl(&dword_22B116000, v144, v70, v83, v74, 0x16u);
        sub_22B123284(v82, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v82, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v147);
        MEMORY[0x23188F650](v147, -1, -1);
        MEMORY[0x23188F650](v74, -1, -1);

        v161(v154, v149);
LABEL_39:
        v116 = *(v0 + 2656);
        swift_willThrow();

        v117 = *(v0 + 8);

        return v117();
      }
    }

    else
    {
      v156(*(v0 + 1896), v158, *(v0 + 1880));
      v84 = v9;
      v85 = v9;
      v69 = sub_22B36050C();
      v70 = sub_22B360D1C();
      v86 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 1896);
      v73 = *(v0 + 1880);
      if (v86)
      {
        v161 = v32;
        v74 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v164[0] = v147;
        *v74 = 136446466;
        v144 = v69;
        v87 = v152;
        v154 = v72;
        v88 = sub_22B35F3AC();
        v149 = v73;
        v90 = v89;

        v91 = sub_22B1A7B20(v88, v90, v164);

        *(v74 + 4) = v91;
        *(v74 + 12) = 2114;
        v92 = v9;
        v93 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 14) = v93;
        v82 = v142;
        *v142 = v93;

        v83 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_29;
      }
    }

    v32(v72, v73);
    goto LABEL_39;
  }

  v34 = (*(*(v0 + 1640) + 88))(*(v0 + 1648), *(v0 + 1632));
  if (v34 != *MEMORY[0x277D182D0])
  {
    if (v34 == *MEMORY[0x277D182D8])
    {
      v39 = *(v0 + 1704);
      v40 = *(v0 + 1696);
      v41 = *(v0 + 1688);

      (*(v40 + 104))(v39, *MEMORY[0x277D07348], v41);
      v42 = v152;
      sub_22B35EE3C();
      (*(v40 + 8))(v39, v41);
      sub_22B35F39C();

      v42;
      v43 = swift_task_alloc();
      *(v0 + 2664) = v43;
      *v43 = v0;
      v44 = sub_22B2CC1C8;
      goto LABEL_48;
    }

    if (v34 != *MEMORY[0x277D182E0] && v34 != *MEMORY[0x277D182C8])
    {
      (*(*(v0 + 1640) + 8))(*(v0 + 1648), *(v0 + 1632));
      goto LABEL_24;
    }
  }

  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v35 = qword_28140BCA0;
  *(v0 + 2672) = qword_28140BCA0;
  if (v35 && (v36 = sub_22B36081C(), v37 = [v35 dictionaryForKey_], v36, v37))
  {
    v38 = sub_22B3606EC();
  }

  else
  {
    v38 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  *(v0 + 1544) = v38;
  v45 = sub_22B35F3AC();
  sub_22B2AC400(v45, v46, v38, (v0 + 1088));

  if (!*(v0 + 1112))
  {
    sub_22B123284(v0 + 1088, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v94 = MEMORY[0x277D83B88];
    v156(*(v0 + 1912), v158, *(v0 + 1880));
    v95 = sub_22B36050C();
    v96 = sub_22B360D1C();
    v97 = os_log_type_enabled(v95, v96);
    v98 = *(v0 + 1912);
    v159 = *(v0 + 1880);
    if (v97)
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v164[0] = v100;
      *v99 = 136315138;
      v101 = v152;
      v155 = v98;
      v102 = v101;
      v162 = v32;
      v103 = sub_22B35F3AC();
      v105 = v104;

      v106 = sub_22B1A7B20(v103, v105, v164);

      *(v99 + 4) = v106;

      _os_log_impl(&dword_22B116000, v95, v96, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      v107 = v100;
      v94 = MEMORY[0x277D83B88];
      MEMORY[0x23188F650](v107, -1, -1);
      MEMORY[0x23188F650](v99, -1, -1);

      v162(v155, v159);
    }

    else
    {

      v32(v98, v159);
    }

    v108 = sub_22B35F3AC();
    v110 = v109;
    *(v0 + 1144) = v94;
    *(v0 + 1120) = 1;
    sub_22B172454((v0 + 1120), (v0 + 1152));
    v111 = *(v0 + 1544);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164[0] = v111;
    sub_22B33F298((v0 + 1152), v108, v110, isUniquelyReferenced_nonNull_native);
    goto LABEL_36;
  }

  v47 = *(v0 + 1536);
  v48 = *(v0 + 1880);
  if (v47 < 10)
  {
    v156(*(v0 + 1920), v158, v48);
    v49 = sub_22B36050C();
    v50 = sub_22B360D1C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 1920);
    v53 = *(v0 + 1880);
    if (v51)
    {
      v146 = *(v0 + 1880);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v164[0] = v55;
      *v54 = 136315394;
      v56 = v152;
      v153 = v52;
      v57 = v56;
      v58 = sub_22B35F3AC();
      v60 = v59;

      v61 = sub_22B1A7B20(v58, v60, v164);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2048;
      v62 = v47 + 1;
      *(v54 + 14) = v62;

      _os_log_impl(&dword_22B116000, v49, v50, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x23188F650](v55, -1, -1);
      MEMORY[0x23188F650](v54, -1, -1);

      v32(v153, v146);
    }

    else
    {

      v32(v52, v53);
      v62 = v47 + 1;
    }

    v132 = sub_22B35F3AC();
    v134 = v133;
    *(v0 + 1240) = MEMORY[0x277D83B88];
    *(v0 + 1216) = v62;
    sub_22B172454((v0 + 1216), (v0 + 1248));
    v135 = *(v0 + 1544);
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v164[0] = v135;
    sub_22B33F298((v0 + 1248), v132, v134, v136);
LABEL_36:

    *(v0 + 1544) = v164[0];
    v113 = *(v0 + 2672);
    if (v113)
    {
      v114 = sub_22B3606CC();
      v115 = sub_22B36081C();
      [v113 setObject:v114 forKey:v115];
    }

    goto LABEL_39;
  }

  v156(*(v0 + 1928), v158, v48);
  v119 = sub_22B36050C();
  v120 = sub_22B360D1C();
  v121 = os_log_type_enabled(v119, v120);
  v122 = *(v0 + 1928);
  v123 = *(v0 + 1880);
  if (v121)
  {
    v124 = swift_slowAlloc();
    v151 = v123;
    v125 = swift_slowAlloc();
    v164[0] = v125;
    *v124 = 136315138;
    v126 = v152;
    v150 = v122;
    v127 = v152;
    v163 = v32;
    v128 = sub_22B35F3AC();
    v130 = v129;

    v131 = sub_22B1A7B20(v128, v130, v164);

    *(v124 + 4) = v131;

    _os_log_impl(&dword_22B116000, v119, v120, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v125);
    MEMORY[0x23188F650](v125, -1, -1);
    MEMORY[0x23188F650](v124, -1, -1);

    v163(v150, v151);
  }

  else
  {

    v32(v122, v123);
    v126 = v152;
  }

  v137 = *(v0 + 1704);
  v138 = *(v0 + 1696);
  v139 = *(v0 + 1688);
  (*(v138 + 104))(v137, *MEMORY[0x277D07350], v139);
  v140 = v126;
  sub_22B35EE3C();
  (*(v138 + 8))(v137, v139);
  sub_22B35F39C();

  v140;
  v43 = swift_task_alloc();
  *(v0 + 2680) = v43;
  *v43 = v0;
  v44 = sub_22B2CC67C;
LABEL_48:
  v43[1] = v44;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B2D482C()
{
  v165 = v0;
  v1 = *(v0 + 2504);
  v2 = *(v0 + 2496);
  v3 = *(v0 + 2344);
  v157 = *(v0 + 1832);
  v160 = *(v0 + 1848);
  v4 = *(v0 + 1816);
  v5 = *(v0 + 1784);
  v6 = *(v0 + 1680);
  v7 = *(v0 + 1672);
  v8 = *(v0 + 1664);

  sub_22B12F174(v2, v1);
  (*(v7 + 8))(v6, v8);
  v3(v4, v5);
  v3(v157, v5);
  v3(v160, v5);
  v9 = *(v0 + 2608);
  v10 = *(v0 + 2488);
  *(v0 + 2656) = v10;
  *(v0 + 2648) = v9;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 1936);
  v12 = *(v0 + 1888);
  v13 = *(v0 + 1880);
  v14 = __swift_project_value_buffer(v13, qword_28140BD10);
  swift_beginAccess();
  v156 = *(v12 + 16);
  v158 = v14;
  v156(v11, v14, v13);
  v15 = v9;
  v16 = v9;
  v17 = sub_22B36050C();
  v18 = sub_22B360D1C();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 1936);
  v21 = *(v0 + 1888);
  v22 = *(v0 + 1880);
  v152 = v10;
  if (v19)
  {
    v23 = swift_slowAlloc();
    v148 = v22;
    v24 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v164[0] = v143;
    *v23 = 136446466;
    v145 = v20;
    v25 = v10;
    v26 = sub_22B35F3AC();
    v28 = v27;

    v29 = sub_22B1A7B20(v26, v28, v164);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2114;
    v30 = v9;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v31;
    *v24 = v31;

    _os_log_impl(&dword_22B116000, v17, v18, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v23, 0x16u);
    sub_22B123284(v24, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v143);
    MEMORY[0x23188F650](v143, -1, -1);
    MEMORY[0x23188F650](v23, -1, -1);

    v32 = *(v21 + 8);
    v32(v145, v148);
  }

  else
  {

    v32 = *(v21 + 8);
    v32(v20, v22);
  }

  *(v0 + 1560) = v9;
  v33 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
LABEL_24:

    *(v0 + 1552) = v9;
    v63 = v9;
    v64 = swift_dynamicCast();
    v65 = *(v0 + 1880);
    if (v64)
    {
      v66 = *(v0 + 1904);
      (*(*(v0 + 1616) + 8))(*(v0 + 1624), *(v0 + 1608));
      v156(v66, v158, v65);
      v67 = v9;
      v68 = v9;
      v69 = sub_22B36050C();
      v70 = sub_22B360D1C();
      v71 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 1904);
      v73 = *(v0 + 1880);
      if (v71)
      {
        v161 = v32;
        v74 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v164[0] = v147;
        *v74 = 136446466;
        v144 = v69;
        v75 = v152;
        v154 = v72;
        v76 = sub_22B35F3AC();
        v149 = v73;
        v78 = v77;

        v79 = sub_22B1A7B20(v76, v78, v164);

        *(v74 + 4) = v79;
        *(v74 + 12) = 2114;
        v80 = v9;
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 14) = v81;
        v82 = v141;
        *v141 = v81;

        v83 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_29:
        _os_log_impl(&dword_22B116000, v144, v70, v83, v74, 0x16u);
        sub_22B123284(v82, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v82, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v147);
        MEMORY[0x23188F650](v147, -1, -1);
        MEMORY[0x23188F650](v74, -1, -1);

        v161(v154, v149);
LABEL_39:
        v116 = *(v0 + 2656);
        swift_willThrow();

        v117 = *(v0 + 8);

        return v117();
      }
    }

    else
    {
      v156(*(v0 + 1896), v158, *(v0 + 1880));
      v84 = v9;
      v85 = v9;
      v69 = sub_22B36050C();
      v70 = sub_22B360D1C();
      v86 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 1896);
      v73 = *(v0 + 1880);
      if (v86)
      {
        v161 = v32;
        v74 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v164[0] = v147;
        *v74 = 136446466;
        v144 = v69;
        v87 = v152;
        v154 = v72;
        v88 = sub_22B35F3AC();
        v149 = v73;
        v90 = v89;

        v91 = sub_22B1A7B20(v88, v90, v164);

        *(v74 + 4) = v91;
        *(v74 + 12) = 2114;
        v92 = v9;
        v93 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 14) = v93;
        v82 = v142;
        *v142 = v93;

        v83 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_29;
      }
    }

    v32(v72, v73);
    goto LABEL_39;
  }

  v34 = (*(*(v0 + 1640) + 88))(*(v0 + 1648), *(v0 + 1632));
  if (v34 != *MEMORY[0x277D182D0])
  {
    if (v34 == *MEMORY[0x277D182D8])
    {
      v39 = *(v0 + 1704);
      v40 = *(v0 + 1696);
      v41 = *(v0 + 1688);

      (*(v40 + 104))(v39, *MEMORY[0x277D07348], v41);
      v42 = v152;
      sub_22B35EE3C();
      (*(v40 + 8))(v39, v41);
      sub_22B35F39C();

      v42;
      v43 = swift_task_alloc();
      *(v0 + 2664) = v43;
      *v43 = v0;
      v44 = sub_22B2CC1C8;
      goto LABEL_48;
    }

    if (v34 != *MEMORY[0x277D182E0] && v34 != *MEMORY[0x277D182C8])
    {
      (*(*(v0 + 1640) + 8))(*(v0 + 1648), *(v0 + 1632));
      goto LABEL_24;
    }
  }

  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v35 = qword_28140BCA0;
  *(v0 + 2672) = qword_28140BCA0;
  if (v35 && (v36 = sub_22B36081C(), v37 = [v35 dictionaryForKey_], v36, v37))
  {
    v38 = sub_22B3606EC();
  }

  else
  {
    v38 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  *(v0 + 1544) = v38;
  v45 = sub_22B35F3AC();
  sub_22B2AC400(v45, v46, v38, (v0 + 1088));

  if (!*(v0 + 1112))
  {
    sub_22B123284(v0 + 1088, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v94 = MEMORY[0x277D83B88];
    v156(*(v0 + 1912), v158, *(v0 + 1880));
    v95 = sub_22B36050C();
    v96 = sub_22B360D1C();
    v97 = os_log_type_enabled(v95, v96);
    v98 = *(v0 + 1912);
    v159 = *(v0 + 1880);
    if (v97)
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v164[0] = v100;
      *v99 = 136315138;
      v101 = v152;
      v155 = v98;
      v102 = v101;
      v162 = v32;
      v103 = sub_22B35F3AC();
      v105 = v104;

      v106 = sub_22B1A7B20(v103, v105, v164);

      *(v99 + 4) = v106;

      _os_log_impl(&dword_22B116000, v95, v96, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      v107 = v100;
      v94 = MEMORY[0x277D83B88];
      MEMORY[0x23188F650](v107, -1, -1);
      MEMORY[0x23188F650](v99, -1, -1);

      v162(v155, v159);
    }

    else
    {

      v32(v98, v159);
    }

    v108 = sub_22B35F3AC();
    v110 = v109;
    *(v0 + 1144) = v94;
    *(v0 + 1120) = 1;
    sub_22B172454((v0 + 1120), (v0 + 1152));
    v111 = *(v0 + 1544);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164[0] = v111;
    sub_22B33F298((v0 + 1152), v108, v110, isUniquelyReferenced_nonNull_native);
    goto LABEL_36;
  }

  v47 = *(v0 + 1536);
  v48 = *(v0 + 1880);
  if (v47 < 10)
  {
    v156(*(v0 + 1920), v158, v48);
    v49 = sub_22B36050C();
    v50 = sub_22B360D1C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 1920);
    v53 = *(v0 + 1880);
    if (v51)
    {
      v146 = *(v0 + 1880);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v164[0] = v55;
      *v54 = 136315394;
      v56 = v152;
      v153 = v52;
      v57 = v56;
      v58 = sub_22B35F3AC();
      v60 = v59;

      v61 = sub_22B1A7B20(v58, v60, v164);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2048;
      v62 = v47 + 1;
      *(v54 + 14) = v62;

      _os_log_impl(&dword_22B116000, v49, v50, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x23188F650](v55, -1, -1);
      MEMORY[0x23188F650](v54, -1, -1);

      v32(v153, v146);
    }

    else
    {

      v32(v52, v53);
      v62 = v47 + 1;
    }

    v132 = sub_22B35F3AC();
    v134 = v133;
    *(v0 + 1240) = MEMORY[0x277D83B88];
    *(v0 + 1216) = v62;
    sub_22B172454((v0 + 1216), (v0 + 1248));
    v135 = *(v0 + 1544);
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v164[0] = v135;
    sub_22B33F298((v0 + 1248), v132, v134, v136);
LABEL_36:

    *(v0 + 1544) = v164[0];
    v113 = *(v0 + 2672);
    if (v113)
    {
      v114 = sub_22B3606CC();
      v115 = sub_22B36081C();
      [v113 setObject:v114 forKey:v115];
    }

    goto LABEL_39;
  }

  v156(*(v0 + 1928), v158, v48);
  v119 = sub_22B36050C();
  v120 = sub_22B360D1C();
  v121 = os_log_type_enabled(v119, v120);
  v122 = *(v0 + 1928);
  v123 = *(v0 + 1880);
  if (v121)
  {
    v124 = swift_slowAlloc();
    v151 = v123;
    v125 = swift_slowAlloc();
    v164[0] = v125;
    *v124 = 136315138;
    v126 = v152;
    v150 = v122;
    v127 = v152;
    v163 = v32;
    v128 = sub_22B35F3AC();
    v130 = v129;

    v131 = sub_22B1A7B20(v128, v130, v164);

    *(v124 + 4) = v131;

    _os_log_impl(&dword_22B116000, v119, v120, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v125);
    MEMORY[0x23188F650](v125, -1, -1);
    MEMORY[0x23188F650](v124, -1, -1);

    v163(v150, v151);
  }

  else
  {

    v32(v122, v123);
    v126 = v152;
  }

  v137 = *(v0 + 1704);
  v138 = *(v0 + 1696);
  v139 = *(v0 + 1688);
  (*(v138 + 104))(v137, *MEMORY[0x277D07350], v139);
  v140 = v126;
  sub_22B35EE3C();
  (*(v138 + 8))(v137, v139);
  sub_22B35F39C();

  v140;
  v43 = swift_task_alloc();
  *(v0 + 2680) = v43;
  *v43 = v0;
  v44 = sub_22B2CC67C;
LABEL_48:
  v43[1] = v44;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B2D5D2C()
{
  v165 = v0;
  v1 = *(v0 + 2504);
  v2 = *(v0 + 2496);
  v3 = *(v0 + 2344);
  v157 = *(v0 + 1832);
  v160 = *(v0 + 1848);
  v4 = *(v0 + 1816);
  v5 = *(v0 + 1784);
  v6 = *(v0 + 1680);
  v7 = *(v0 + 1672);
  v8 = *(v0 + 1664);

  sub_22B12F174(v2, v1);
  (*(v7 + 8))(v6, v8);
  v3(v4, v5);
  v3(v157, v5);
  v3(v160, v5);
  v9 = *(v0 + 2640);
  v10 = *(v0 + 2488);
  *(v0 + 2656) = v10;
  *(v0 + 2648) = v9;
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 1936);
  v12 = *(v0 + 1888);
  v13 = *(v0 + 1880);
  v14 = __swift_project_value_buffer(v13, qword_28140BD10);
  swift_beginAccess();
  v156 = *(v12 + 16);
  v158 = v14;
  v156(v11, v14, v13);
  v15 = v9;
  v16 = v9;
  v17 = sub_22B36050C();
  v18 = sub_22B360D1C();
  v19 = os_log_type_enabled(v17, v18);
  v20 = *(v0 + 1936);
  v21 = *(v0 + 1888);
  v22 = *(v0 + 1880);
  v152 = v10;
  if (v19)
  {
    v23 = swift_slowAlloc();
    v148 = v22;
    v24 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    v164[0] = v143;
    *v23 = 136446466;
    v145 = v20;
    v25 = v10;
    v26 = sub_22B35F3AC();
    v28 = v27;

    v29 = sub_22B1A7B20(v26, v28, v164);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2114;
    v30 = v9;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 14) = v31;
    *v24 = v31;

    _os_log_impl(&dword_22B116000, v17, v18, "[Dropbox] Failed to refresh cloudkit token for %{public}s. %{public}@", v23, 0x16u);
    sub_22B123284(v24, &unk_27D8BAA90, &unk_22B362BC0);
    MEMORY[0x23188F650](v24, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v143);
    MEMORY[0x23188F650](v143, -1, -1);
    MEMORY[0x23188F650](v23, -1, -1);

    v32 = *(v21 + 8);
    v32(v145, v148);
  }

  else
  {

    v32 = *(v21 + 8);
    v32(v20, v22);
  }

  *(v0 + 1560) = v9;
  v33 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACE0, &unk_22B365D60);
  if (!swift_dynamicCast())
  {
LABEL_24:

    *(v0 + 1552) = v9;
    v63 = v9;
    v64 = swift_dynamicCast();
    v65 = *(v0 + 1880);
    if (v64)
    {
      v66 = *(v0 + 1904);
      (*(*(v0 + 1616) + 8))(*(v0 + 1624), *(v0 + 1608));
      v156(v66, v158, v65);
      v67 = v9;
      v68 = v9;
      v69 = sub_22B36050C();
      v70 = sub_22B360D1C();
      v71 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 1904);
      v73 = *(v0 + 1880);
      if (v71)
      {
        v161 = v32;
        v74 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v164[0] = v147;
        *v74 = 136446466;
        v144 = v69;
        v75 = v152;
        v154 = v72;
        v76 = sub_22B35F3AC();
        v149 = v73;
        v78 = v77;

        v79 = sub_22B1A7B20(v76, v78, v164);

        *(v74 + 4) = v79;
        *(v74 + 12) = 2114;
        v80 = v9;
        v81 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 14) = v81;
        v82 = v141;
        *v141 = v81;

        v83 = "[Dropbox] Failed to decode tokens for %{public}s. %{public}@";
LABEL_29:
        _os_log_impl(&dword_22B116000, v144, v70, v83, v74, 0x16u);
        sub_22B123284(v82, &unk_27D8BAA90, &unk_22B362BC0);
        MEMORY[0x23188F650](v82, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v147);
        MEMORY[0x23188F650](v147, -1, -1);
        MEMORY[0x23188F650](v74, -1, -1);

        v161(v154, v149);
LABEL_39:
        v116 = *(v0 + 2656);
        swift_willThrow();

        v117 = *(v0 + 8);

        return v117();
      }
    }

    else
    {
      v156(*(v0 + 1896), v158, *(v0 + 1880));
      v84 = v9;
      v85 = v9;
      v69 = sub_22B36050C();
      v70 = sub_22B360D1C();
      v86 = os_log_type_enabled(v69, v70);
      v72 = *(v0 + 1896);
      v73 = *(v0 + 1880);
      if (v86)
      {
        v161 = v32;
        v74 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v147 = swift_slowAlloc();
        v164[0] = v147;
        *v74 = 136446466;
        v144 = v69;
        v87 = v152;
        v154 = v72;
        v88 = sub_22B35F3AC();
        v149 = v73;
        v90 = v89;

        v91 = sub_22B1A7B20(v88, v90, v164);

        *(v74 + 4) = v91;
        *(v74 + 12) = 2114;
        v92 = v9;
        v93 = _swift_stdlib_bridgeErrorToNSError();
        *(v74 + 14) = v93;
        v82 = v142;
        *v142 = v93;

        v83 = "[Dropbox] Unexpected error while refreshing token for %{public}s. %{public}@";
        goto LABEL_29;
      }
    }

    v32(v72, v73);
    goto LABEL_39;
  }

  v34 = (*(*(v0 + 1640) + 88))(*(v0 + 1648), *(v0 + 1632));
  if (v34 != *MEMORY[0x277D182D0])
  {
    if (v34 == *MEMORY[0x277D182D8])
    {
      v39 = *(v0 + 1704);
      v40 = *(v0 + 1696);
      v41 = *(v0 + 1688);

      (*(v40 + 104))(v39, *MEMORY[0x277D07348], v41);
      v42 = v152;
      sub_22B35EE3C();
      (*(v40 + 8))(v39, v41);
      sub_22B35F39C();

      v42;
      v43 = swift_task_alloc();
      *(v0 + 2664) = v43;
      *v43 = v0;
      v44 = sub_22B2CC1C8;
      goto LABEL_48;
    }

    if (v34 != *MEMORY[0x277D182E0] && v34 != *MEMORY[0x277D182C8])
    {
      (*(*(v0 + 1640) + 8))(*(v0 + 1648), *(v0 + 1632));
      goto LABEL_24;
    }
  }

  if (qword_281408E18 != -1)
  {
    swift_once();
  }

  v35 = qword_28140BCA0;
  *(v0 + 2672) = qword_28140BCA0;
  if (v35 && (v36 = sub_22B36081C(), v37 = [v35 dictionaryForKey_], v36, v37))
  {
    v38 = sub_22B3606EC();
  }

  else
  {
    v38 = sub_22B321AAC(MEMORY[0x277D84F90]);
  }

  *(v0 + 1544) = v38;
  v45 = sub_22B35F3AC();
  sub_22B2AC400(v45, v46, v38, (v0 + 1088));

  if (!*(v0 + 1112))
  {
    sub_22B123284(v0 + 1088, &unk_27D8BA950, &qword_22B364940);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:
    v94 = MEMORY[0x277D83B88];
    v156(*(v0 + 1912), v158, *(v0 + 1880));
    v95 = sub_22B36050C();
    v96 = sub_22B360D1C();
    v97 = os_log_type_enabled(v95, v96);
    v98 = *(v0 + 1912);
    v159 = *(v0 + 1880);
    if (v97)
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v164[0] = v100;
      *v99 = 136315138;
      v101 = v152;
      v155 = v98;
      v102 = v101;
      v162 = v32;
      v103 = sub_22B35F3AC();
      v105 = v104;

      v106 = sub_22B1A7B20(v103, v105, v164);

      *(v99 + 4) = v106;

      _os_log_impl(&dword_22B116000, v95, v96, "[Dropbox] Bad token refresh for %s.Setting attempts to 1", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      v107 = v100;
      v94 = MEMORY[0x277D83B88];
      MEMORY[0x23188F650](v107, -1, -1);
      MEMORY[0x23188F650](v99, -1, -1);

      v162(v155, v159);
    }

    else
    {

      v32(v98, v159);
    }

    v108 = sub_22B35F3AC();
    v110 = v109;
    *(v0 + 1144) = v94;
    *(v0 + 1120) = 1;
    sub_22B172454((v0 + 1120), (v0 + 1152));
    v111 = *(v0 + 1544);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v164[0] = v111;
    sub_22B33F298((v0 + 1152), v108, v110, isUniquelyReferenced_nonNull_native);
    goto LABEL_36;
  }

  v47 = *(v0 + 1536);
  v48 = *(v0 + 1880);
  if (v47 < 10)
  {
    v156(*(v0 + 1920), v158, v48);
    v49 = sub_22B36050C();
    v50 = sub_22B360D1C();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 1920);
    v53 = *(v0 + 1880);
    if (v51)
    {
      v146 = *(v0 + 1880);
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v164[0] = v55;
      *v54 = 136315394;
      v56 = v152;
      v153 = v52;
      v57 = v56;
      v58 = sub_22B35F3AC();
      v60 = v59;

      v61 = sub_22B1A7B20(v58, v60, v164);

      *(v54 + 4) = v61;
      *(v54 + 12) = 2048;
      v62 = v47 + 1;
      *(v54 + 14) = v62;

      _os_log_impl(&dword_22B116000, v49, v50, "[Dropbox] Bad token refreshes not exceeded for %s.Incrementing attempts to %ld", v54, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x23188F650](v55, -1, -1);
      MEMORY[0x23188F650](v54, -1, -1);

      v32(v153, v146);
    }

    else
    {

      v32(v52, v53);
      v62 = v47 + 1;
    }

    v132 = sub_22B35F3AC();
    v134 = v133;
    *(v0 + 1240) = MEMORY[0x277D83B88];
    *(v0 + 1216) = v62;
    sub_22B172454((v0 + 1216), (v0 + 1248));
    v135 = *(v0 + 1544);
    v136 = swift_isUniquelyReferenced_nonNull_native();
    v164[0] = v135;
    sub_22B33F298((v0 + 1248), v132, v134, v136);
LABEL_36:

    *(v0 + 1544) = v164[0];
    v113 = *(v0 + 2672);
    if (v113)
    {
      v114 = sub_22B3606CC();
      v115 = sub_22B36081C();
      [v113 setObject:v114 forKey:v115];
    }

    goto LABEL_39;
  }

  v156(*(v0 + 1928), v158, v48);
  v119 = sub_22B36050C();
  v120 = sub_22B360D1C();
  v121 = os_log_type_enabled(v119, v120);
  v122 = *(v0 + 1928);
  v123 = *(v0 + 1880);
  if (v121)
  {
    v124 = swift_slowAlloc();
    v151 = v123;
    v125 = swift_slowAlloc();
    v164[0] = v125;
    *v124 = 136315138;
    v126 = v152;
    v150 = v122;
    v127 = v152;
    v163 = v32;
    v128 = sub_22B35F3AC();
    v130 = v129;

    v131 = sub_22B1A7B20(v128, v130, v164);

    *(v124 + 4) = v131;

    _os_log_impl(&dword_22B116000, v119, v120, "[Dropbox] Bad token refreshes exceeded 10 for %s.Setting error state", v124, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v125);
    MEMORY[0x23188F650](v125, -1, -1);
    MEMORY[0x23188F650](v124, -1, -1);

    v163(v150, v151);
  }

  else
  {

    v32(v122, v123);
    v126 = v152;
  }

  v137 = *(v0 + 1704);
  v138 = *(v0 + 1696);
  v139 = *(v0 + 1688);
  (*(v138 + 104))(v137, *MEMORY[0x277D07350], v139);
  v140 = v126;
  sub_22B35EE3C();
  (*(v138 + 8))(v137, v139);
  sub_22B35F39C();

  v140;
  v43 = swift_task_alloc();
  *(v0 + 2680) = v43;
  *v43 = v0;
  v44 = sub_22B2CC67C;
LABEL_48:
  v43[1] = v44;

  return EKEnergySite.save(reset:tokenUpdate:)(0, 1);
}

uint64_t sub_22B2D722C(void *a1)
{
  v2[8] = a1;
  v2[9] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA970, &unk_22B363560);
  v2[10] = swift_task_alloc();
  v4 = sub_22B35EE8C();
  v2[11] = v4;
  v2[12] = *(v4 - 8);
  v2[13] = swift_task_alloc();
  v5 = sub_22B36052C();
  v2[14] = v5;
  v2[15] = *(v5 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v6 = sub_22B35DF1C();
  v2[18] = v6;
  v2[19] = *(v6 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = *(type metadata accessor for CDEnergySite(0) - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v7 = sub_22B35F01C();
  v2[26] = v7;
  v2[27] = *(v7 - 8);
  v2[28] = swift_task_alloc();
  if (a1)
  {
    a1;
    v8 = swift_task_alloc();
    v2[29] = v8;
    *v8 = v2;
    v8[1] = sub_22B2D75D4;

    return sub_22B2430B4();
  }

  else
  {

    v10 = v2[1];

    return v10();
  }
}

uint64_t sub_22B2D75D4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 240) = a1;

  v4 = *(v3 + 72);
  if (v1)
  {

    v5 = sub_22B2D8E1C;
  }

  else
  {
    v5 = sub_22B2D7714;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_22B2D7714()
{
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  (*(v0[27] + 104))(v0[28], *MEMORY[0x277D073C0], v0[26]);
  v1 = swift_task_alloc();
  v0[31] = v1;
  *v1 = v0;
  v1[1] = sub_22B2D7804;
  v2 = v0[28];

  return sub_22B141FF0(1, v2);
}

uint64_t sub_22B2D7804(uint64_t a1)
{
  v2 = *(*v1 + 224);
  v3 = *(*v1 + 216);
  v4 = *(*v1 + 208);
  v5 = *(*v1 + 72);
  *(*v1 + 256) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_22B2D7978, v5, 0);
}

uint64_t sub_22B2D7978(__n128 a1)
{
  v63 = v1;
  v2 = *(v1 + 256);
  if (!v2)
  {
    v52 = *(v1 + 64);
LABEL_35:

    v53 = *(v1 + 8);

    return v53();
  }

  v3 = *(v2 + 16);
  *(v1 + 264) = v3;
  v4 = *(v1 + 240);
  if (!v3)
  {
LABEL_34:
    v52 = *(v1 + 64);

    goto LABEL_35;
  }

  if (v4 >> 62)
  {
    goto LABEL_46;
  }

  v5 = v4 & 0xFFFFFFFFFFFFFF8;
  v4 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    *(v1 + 272) = v5;
    *(v1 + 280) = v4;
    *(v1 + 336) = *(*(v1 + 184) + 80);
    *(v1 + 340) = *MEMORY[0x277D07390];
    *(v1 + 288) = 0;
    if (*(v2 + 16))
    {
      break;
    }

LABEL_45:
    __break(1u);
LABEL_46:
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_22B36109C();
    v2 = *(v1 + 256);
  }

  v6 = 0;
  a1.n128_u64[0] = 136315138;
  v57 = a1;
LABEL_7:
  sub_22B16F4CC(v2 + ((*(v1 + 336) + 32) & ~*(v1 + 336)) + *(*(v1 + 184) + 72) * v6, *(v1 + 200));
  v7 = 0;
  while (1)
  {
    if (v7 == *(v1 + 280))
    {
      v23 = *(v1 + 200);
      v24 = v23[1];
      v25 = HIBYTE(v24) & 0xF;
      if ((v24 & 0x2000000000000000) == 0)
      {
        v25 = *v23 & 0xFFFFFFFFFFFFLL;
      }

      if (v25)
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
          v23 = *(v1 + 200);
        }

        v26 = *(v1 + 192);
        v27 = *(v1 + 136);
        v28 = *(v1 + 112);
        v29 = *(v1 + 120);
        v30 = __swift_project_value_buffer(v28, qword_28140BD10);
        swift_beginAccess();
        (*(v29 + 16))(v27, v30, v28);
        sub_22B16F4CC(v23, v26);
        v31 = sub_22B36050C();
        v32 = sub_22B360D1C();
        v33 = os_log_type_enabled(v31, v32);
        v34 = *(v1 + 192);
        v35 = *(v1 + 136);
        v36 = *(v1 + 112);
        v37 = (*(v1 + 120) + 8);
        if (v33)
        {
          v61 = *(v1 + 136);
          v38 = swift_slowAlloc();
          v58 = v36;
          v39 = swift_slowAlloc();
          v62 = v39;
          *v38 = v57.n128_u32[0];
          v41 = *v34;
          v40 = v34[1];

          sub_22B16F530(v34);
          v42 = sub_22B1A7B20(v41, v40, &v62);
          v1 = v59;

          *(v38 + 4) = v42;
          _os_log_impl(&dword_22B116000, v31, v32, "[ShareManager] Home not found for %s. Scheduling delete", v38, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x23188F650](v39, -1, -1);
          MEMORY[0x23188F650](v38, -1, -1);

          (*v37)(v61, v58);
        }

        else
        {

          sub_22B16F530(v34);
          (*v37)(v35, v36);
        }

        v44 = *(v1 + 96);
        v43 = *(v1 + 104);
        v45 = *(v1 + 88);
        (*(v44 + 104))(v43, *(v1 + 340), v45);
        v46 = sub_22B35EE7C();
        (*(v44 + 8))(v43, v45);
        if (v46)
        {
          v47 = *(v1 + 144);
          v48 = *(v1 + 152);
          v49 = *(v1 + 80);
          sub_22B35DEBC();
          if ((*(v48 + 48))(v49, 1, v47) != 1)
          {
            goto LABEL_40;
          }

          sub_22B123284(*(v1 + 80), &qword_27D8BA970, &unk_22B363560);
        }
      }

LABEL_30:
      v50 = *(v1 + 264);
      v51 = *(v1 + 288) + 1;
      v4 = sub_22B16F530(*(v1 + 200));
      if (v51 == v50)
      {
        goto LABEL_34;
      }

      v6 = *(v1 + 288) + 1;
      *(v1 + 288) = v6;
      v2 = *(v1 + 256);
      if (v6 < *(v2 + 16))
      {
        goto LABEL_7;
      }

      goto LABEL_45;
    }

    v9 = *(v1 + 240);
    if ((v9 & 0xC000000000000001) == 0)
    {
      break;
    }

    v10 = MEMORY[0x23188EAC0](v7);
    if (__OFADD__(v7, 1))
    {
      goto LABEL_38;
    }

LABEL_13:
    v11 = *(v1 + 200);
    v13 = *(v1 + 168);
    v12 = *(v1 + 176);
    v14 = *(v1 + 144);
    v15 = *(v1 + 152);
    v16 = *v11;
    v17 = v11[1];
    v60 = v10;
    v18 = [v10 uniqueIdentifier];
    sub_22B35DEFC();

    sub_22B35DECC();
    v19 = *(v15 + 8);
    v19(v12, v14);
    sub_22B35F45C();
    sub_22B35F1EC();
    sub_22B35DEAC();
    v20 = sub_22B35DECC();
    v22 = v21;
    v19(v13, v14);
    if (v16 == v20 && v17 == v22)
    {

      v1 = v59;
      goto LABEL_30;
    }

    v8 = sub_22B36134C();

    ++v7;
    v1 = v59;
    if (v8)
    {
      goto LABEL_30;
    }
  }

  if (v7 >= *(*(v1 + 272) + 16))
  {
    goto LABEL_39;
  }

  v10 = *(v9 + 8 * v7 + 32);
  if (!__OFADD__(v7, 1))
  {
    goto LABEL_13;
  }

LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  (*(*(v1 + 152) + 32))(*(v1 + 160), *(v1 + 80), *(v1 + 144));
  if (qword_27D8B9F88 != -1)
  {
    swift_once();
  }

  v55 = swift_task_alloc();
  *(v1 + 296) = v55;
  *v55 = v1;
  v55[1] = sub_22B2D8018;
  v56 = *(v1 + 160);

  return sub_22B1878FC(v56);
}

uint64_t sub_22B2D8018()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22B2D8128, v1, 0);
}

uint64_t sub_22B2D8128()
{
  if (qword_27D8B9FB8 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 304) = v1;
  *v1 = v0;
  v1[1] = sub_22B2D81F4;
  v2 = *(v0 + 160);

  return sub_22B319204(v2);
}

uint64_t sub_22B2D81F4()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22B2D8304, v1, 0);
}

uint64_t sub_22B2D8304()
{
  if (qword_27D8B9F78 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 312) = v1;
  *v1 = v0;
  v1[1] = sub_22B2D83D0;
  v2 = *(v0 + 160);

  return sub_22B175DCC(v2);
}

uint64_t sub_22B2D83D0()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22B2D84E0, v1, 0);
}

uint64_t sub_22B2D84E0()
{
  if (qword_281408AF8 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BC50;
  *(v0 + 320) = qword_28140BC50;

  return MEMORY[0x2822009F8](sub_22B2D8578, v1, 0);
}

uint64_t sub_22B2D8578()
{
  v1 = *(v0 + 72);
  sub_22B12708C(*(v0 + 160));

  return MEMORY[0x2822009F8](sub_22B2D85E8, v1, 0);
}

uint64_t sub_22B2D85E8()
{
  if (qword_27D8B9FA0 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 328) = v1;
  *v1 = v0;
  v1[1] = sub_22B2D86B4;
  v2 = *(v0 + 160);

  return sub_22B1A8B4C(v2);
}

uint64_t sub_22B2D86B4()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x2822009F8](sub_22B2D87C4, v1, 0);
}

uint64_t sub_22B2D87C4()
{
  v62 = v0;
  (*(*(v0 + 152) + 8))(*(v0 + 160), *(v0 + 144));
  v1 = *(v0 + 264);
  v2 = *(v0 + 288) + 1;
  sub_22B16F530(*(v0 + 200));
  if (v2 == v1)
  {
LABEL_2:
    v4 = *(v0 + 64);

    v5 = *(v0 + 8);

    return v5();
  }

  *&v3 = 136315138;
  v56 = v3;
  v58 = v0;
LABEL_7:
  v9 = *(v0 + 288) + 1;
  *(v0 + 288) = v9;
  v10 = *(v0 + 256);
  if (v9 >= *(v10 + 16))
  {
    __break(1u);
LABEL_38:
    swift_once();
    goto LABEL_34;
  }

  sub_22B16F4CC(v10 + ((*(v0 + 336) + 32) & ~*(v0 + 336)) + *(*(v0 + 184) + 72) * v9, *(v0 + 200));
  v11 = 0;
  while (1)
  {
    if (v11 == *(v0 + 280))
    {
      v27 = *(v0 + 200);
      v28 = v27[1];
      v29 = HIBYTE(v28) & 0xF;
      if ((v28 & 0x2000000000000000) == 0)
      {
        v29 = *v27 & 0xFFFFFFFFFFFFLL;
      }

      if (v29)
      {
        if (qword_28140A0C8 != -1)
        {
          swift_once();
          v27 = *(v0 + 200);
        }

        v30 = *(v0 + 192);
        v31 = *(v0 + 136);
        v32 = *(v0 + 112);
        v33 = *(v0 + 120);
        v34 = __swift_project_value_buffer(v32, qword_28140BD10);
        swift_beginAccess();
        (*(v33 + 16))(v31, v34, v32);
        sub_22B16F4CC(v27, v30);
        v35 = sub_22B36050C();
        v36 = sub_22B360D1C();
        v37 = os_log_type_enabled(v35, v36);
        v38 = *(v0 + 192);
        v39 = *(v0 + 136);
        v40 = *(v0 + 112);
        v41 = (*(v0 + 120) + 8);
        if (v37)
        {
          v60 = *(v0 + 136);
          v42 = swift_slowAlloc();
          v57 = v40;
          v43 = swift_slowAlloc();
          v61 = v43;
          *v42 = v56;
          v45 = *v38;
          v44 = v38[1];

          sub_22B16F530(v38);
          v46 = sub_22B1A7B20(v45, v44, &v61);
          v0 = v58;

          *(v42 + 4) = v46;
          _os_log_impl(&dword_22B116000, v35, v36, "[ShareManager] Home not found for %s. Scheduling delete", v42, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v43);
          MEMORY[0x23188F650](v43, -1, -1);
          MEMORY[0x23188F650](v42, -1, -1);

          (*v41)(v60, v57);
        }

        else
        {

          sub_22B16F530(v38);
          (*v41)(v39, v40);
        }

        v48 = *(v0 + 96);
        v47 = *(v0 + 104);
        v49 = *(v0 + 88);
        (*(v48 + 104))(v47, *(v0 + 340), v49);
        v50 = sub_22B35EE7C();
        (*(v48 + 8))(v47, v49);
        if (v50)
        {
          v51 = *(v0 + 144);
          v52 = *(v0 + 152);
          v53 = *(v0 + 80);
          sub_22B35DEBC();
          if ((*(v52 + 48))(v53, 1, v51) != 1)
          {
            goto LABEL_33;
          }

          sub_22B123284(*(v0 + 80), &qword_27D8BA970, &unk_22B363560);
        }
      }

LABEL_6:
      v7 = *(v0 + 264);
      v8 = *(v0 + 288) + 1;
      sub_22B16F530(*(v0 + 200));
      if (v8 == v7)
      {
        goto LABEL_2;
      }

      goto LABEL_7;
    }

    v13 = *(v0 + 240);
    if ((v13 & 0xC000000000000001) == 0)
    {
      break;
    }

    v14 = MEMORY[0x23188EAC0](v11);
    if (__OFADD__(v11, 1))
    {
      goto LABEL_31;
    }

LABEL_14:
    v15 = *(v0 + 200);
    v17 = *(v0 + 168);
    v16 = *(v0 + 176);
    v18 = *(v0 + 144);
    v19 = *(v0 + 152);
    v20 = *v15;
    v21 = v15[1];
    v59 = v14;
    v22 = [v14 uniqueIdentifier];
    sub_22B35DEFC();

    sub_22B35DECC();
    v23 = *(v19 + 8);
    v23(v16, v18);
    sub_22B35F45C();
    sub_22B35F1EC();
    sub_22B35DEAC();
    v24 = sub_22B35DECC();
    v26 = v25;
    v23(v17, v18);
    if (v20 == v24 && v21 == v26)
    {

      v0 = v58;
      goto LABEL_6;
    }

    v12 = sub_22B36134C();

    ++v11;
    v0 = v58;
    if (v12)
    {
      goto LABEL_6;
    }
  }

  if (v11 >= *(*(v0 + 272) + 16))
  {
    goto LABEL_32;
  }

  v14 = *(v13 + 8 * v11 + 32);
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  (*(*(v0 + 152) + 32))(*(v0 + 160), *(v0 + 80), *(v0 + 144));
  if (qword_27D8B9F88 != -1)
  {
    goto LABEL_38;
  }

LABEL_34:
  v54 = swift_task_alloc();
  *(v0 + 296) = v54;
  *v54 = v0;
  v54[1] = sub_22B2D8018;
  v55 = *(v0 + 160);

  return sub_22B1878FC(v55);
}

uint64_t sub_22B2D8E1C()
{
  if (qword_28140A0C8 != -1)
  {
    swift_once();
  }

  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  v4 = __swift_project_value_buffer(v3, qword_28140BD10);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_22B36050C();
  v6 = sub_22B360D1C();
  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[15];
  v8 = v0[16];
  v10 = v0[14];
  v11 = v0[8];
  if (v7)
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22B116000, v5, v6, "[UtilityDropbox] Failed to get homes", v12, 2u);
    MEMORY[0x23188F650](v12, -1, -1);
  }

  else
  {

    v5 = v11;
  }

  (*(v9 + 8))(v8, v10);

  v13 = v0[1];

  return v13();
}

uint64_t sub_22B2D9014()
{
  v1[12] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8BA340, &qword_22B363FB0);
  v1[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8BACD0, &qword_22B366D90);
  v1[14] = swift_task_alloc();
  v2 = sub_22B36037C();
  v1[15] = v2;
  v1[16] = *(v2 - 8);
  v1[17] = swift_task_alloc();
  v3 = sub_22B35EE4C();
  v1[18] = v3;
  v1[19] = *(v3 - 8);
  v1[20] = swift_task_alloc();
  v1[21] = swift_task_alloc();
  v4 = type metadata accessor for CDEnergySite(0);
  v1[22] = v4;
  v1[23] = *(v4 - 8);
  v1[24] = swift_task_alloc();
  v5 = sub_22B35F01C();
  v1[25] = v5;
  v1[26] = *(v5 - 8);
  v1[27] = swift_task_alloc();
  v6 = sub_22B36052C();
  v1[28] = v6;
  v1[29] = *(v6 - 8);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = swift_task_alloc();
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();
  v1[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22B2D932C, v0, 0);
}

uint64_t sub_22B2D932C()
{
  if (qword_281408F18 != -1)
  {
    swift_once();
  }

  v1 = qword_28140BCA8;
  *(v0 + 320) = qword_28140BCA8;
  v2 = swift_task_alloc();
  *(v0 + 328) = v2;
  *v2 = v0;
  v2[1] = sub_22B2D93FC;

  return sub_22B2D722C(v1);
}

uint64_t sub_22B2D93FC()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x2822009F8](sub_22B2D950C, v1, 0);
}

uint64_t sub_22B2D950C(uint64_t a1)
{
  v31 = v1;
  if (*(v1[12] + 113))
  {
    v29 = sub_22B360BFC();
    if (v29)
    {
      if (qword_28140A0C8 != -1)
      {
        swift_once();
      }

      v2 = v1[31];
      v4 = v1[28];
      v3 = v1[29];
      v5 = __swift_project_value_buffer(v4, qword_28140BD10);
      swift_beginAccess();
      (*(v3 + 16))(v2, v5, v4);
      v6 = sub_22B36050C();
      v7 = sub_22B360D1C();
      v8 = os_log_type_enabled(v6, v7);
      v9 = v1[31];
      v11 = v1[28];
      v10 = v1[29];
      if (v8)
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v30 = v13;
        *v12 = 136315394;
        *(v12 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v30);
        *(v12 + 12) = 2048;
        *(v12 + 14) = 1552;
        _os_log_impl(&dword_22B116000, v6, v7, "[Dropbox] Task is cancelled at marker %s:%ld", v12, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v13);
        MEMORY[0x23188F650](v13, -1, -1);
        MEMORY[0x23188F650](v12, -1, -1);
      }

      (*(v10 + 8))(v9, v11);
    }

    v14 = v1[1];

    return v14((v29 & 1) == 0);
  }

  else
  {
    if (qword_28140A0C8 != -1)
    {
      swift_once();
    }

    v16 = v1[39];
    v17 = v1[28];
    v18 = v1[29];
    v19 = __swift_project_value_buffer(v17, qword_28140BD10);
    v1[42] = v19;
    swift_beginAccess();
    v20 = *(v18 + 16);
    v1[43] = v20;
    v1[44] = (v18 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v20(v16, v19, v17);
    v21 = sub_22B36050C();
    v22 = sub_22B360D2C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_22B116000, v21, v22, "[DropboxShareManager] Load Homes", v23, 2u);
      MEMORY[0x23188F650](v23, -1, -1);
    }

    v24 = v1[39];
    v25 = v1[28];
    v26 = v1[29];

    v27 = *(v26 + 8);
    v1[45] = v27;
    v27(v24, v25);
    v28 = swift_task_alloc();
    v1[46] = v28;
    *v28 = v1;
    v28[1] = sub_22B2D9968;

    return sub_22B242190();
  }
}

uint64_t sub_22B2D9968()
{

  return MEMORY[0x2822009F8](sub_22B2D9A64, 0, 0);
}

uint64_t sub_22B2D9A64()
{
  v1 = v0[12];
  v0[47] = [*(v0[40] + OBJC_IVAR____TtC16HomeEnergyDaemon11HomeManager_manager) dataSyncState];

  return MEMORY[0x2822009F8](sub_22B2D9AE8, v1, 0);
}

uint64_t sub_22B2D9AE8(uint64_t a1)
{
  v32 = v1;
  if (*(v1 + 376) != 1)
  {
    (*(v1 + 344))(*(v1 + 304), *(v1 + 336), *(v1 + 224));
    v14 = sub_22B36050C();
    v15 = sub_22B360D1C();
    v16 = os_log_type_enabled(v14, v15);
    v17 = *(v1 + 360);
    v18 = *(v1 + 304);
    v19 = *(v1 + 224);
    if (v16)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22B116000, v14, v15, "[DropboxShareManager] Data sync state not good", v20, 2u);
      MEMORY[0x23188F650](v20, -1, -1);
    }

    v17(v18, v19);
    goto LABEL_9;
  }

  v2 = sub_22B360BFC();
  v3 = *(v1 + 344);
  v4 = *(v1 + 336);
  v5 = *(v1 + 224);
  if (v2)
  {
    v3(*(v1 + 296), v4, v5);
    v6 = sub_22B36050C();
    v7 = sub_22B360D1C();
    v8 = os_log_type_enabled(v6, v7);
    v9 = *(v1 + 360);
    v10 = *(v1 + 296);
    v11 = *(v1 + 224);
    if (v8)
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v31 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v31);
      *(v12 + 12) = 2048;
      *(v12 + 14) = 1438;
      _os_log_impl(&dword_22B116000, v6, v7, "[Dropbox] Task is cancelled at marker %s:%ld", v12, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x23188F650](v13, -1, -1);
      MEMORY[0x23188F650](v12, -1, -1);
    }

    v9(v10, v11);
LABEL_9:

    v21 = *(v1 + 8);

    return v21(0);
  }

  v3(*(v1 + 288), v4, v5);
  v23 = sub_22B36050C();
  v24 = sub_22B360D2C();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22B116000, v23, v24, "[ShareManager] Loaded Homes", v25, 2u);
    MEMORY[0x23188F650](v25, -1, -1);
  }

  v26 = *(v1 + 360);
  v27 = *(v1 + 288);
  v28 = *(v1 + 224);

  v26(v27, v28);
  if (qword_28140B2D8 != -1)
  {
    swift_once();
  }

  (*(*(v1 + 208) + 104))(*(v1 + 216), *MEMORY[0x277D073C8], *(v1 + 200));
  v29 = swift_task_alloc();
  *(v1 + 384) = v29;
  *v29 = v1;
  v29[1] = sub_22B2D9F6C;
  v30 = *(v1 + 216);

  return sub_22B141FF0(1, v30);
}

uint64_t sub_22B2D9F6C(uint64_t a1)
{
  v2 = *(*v1 + 216);
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *(*v1 + 96);
  *(*v1 + 392) = a1;

  (*(v3 + 8))(v2, v4);

  return MEMORY[0x2822009F8](sub_22B2DA0E0, v5, 0);
}

uint64_t sub_22B2DA0E0(uint64_t a1)
{
  v123 = v2;
  v9 = *(v2 + 392);
  if (v9)
  {
    if (sub_22B360BFC())
    {
      v10 = *(v2 + 344);
      v11 = *(v2 + 336);
      v12 = *(v2 + 280);
      v13 = *(v2 + 224);

      v10(v12, v11, v13);
      v14 = sub_22B36050C();
      v15 = sub_22B360D1C();
      v16 = os_log_type_enabled(v14, v15);
      v17 = *(v2 + 360);
      v18 = *(v2 + 280);
      v19 = *(v2 + 224);
      if (v16)
      {
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v122 = v21;
        *v20 = 136315394;
        *(v20 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v122);
        *(v20 + 12) = 2048;
        *(v20 + 14) = 1460;
        _os_log_impl(&dword_22B116000, v14, v15, "[Dropbox] Task is cancelled at marker %s:%ld", v20, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v21);
        MEMORY[0x23188F650](v21, -1, -1);
        MEMORY[0x23188F650](v20, -1, -1);
      }

      v17(v18, v19);
      goto LABEL_21;
    }

    v22 = *(v9 + 16);
    *(v2 + 400) = v22;
    if (v22)
    {
      v23 = 0;
      *(v2 + 504) = *(*(v2 + 184) + 80);
      *(v2 + 508) = *MEMORY[0x277D07350];
      *(v2 + 512) = *MEMORY[0x277D07348];
      while (1)
      {
        *(v2 + 408) = v23;
        v24 = *(v2 + 392);
        if (v23 >= *(v24 + 16))
        {
          __break(1u);
          goto LABEL_51;
        }

        v25 = *(v2 + 192);
        sub_22B16F4CC(v24 + ((*(v2 + 504) + 32) & ~*(v2 + 504)) + *(*(v2 + 184) + 72) * v23, v25);
        v4 = *v25;
        v5 = v25[1];
        v26 = HIBYTE(v5) & 0xF;
        if ((v5 & 0x2000000000000000) == 0)
        {
          v26 = *v25 & 0xFFFFFFFFFFFFLL;
        }

        if (v26)
        {
          break;
        }

        sub_22B16F530(*(v2 + 192));
        v23 = *(v2 + 408) + 1;
        if (v23 == *(v2 + 400))
        {
          goto LABEL_15;
        }
      }

      if (sub_22B360BFC())
      {
        v42 = *(v2 + 344);
        v43 = *(v2 + 336);
        v44 = *(v2 + 272);
        v45 = *(v2 + 224);

        v42(v44, v43, v45);
        v46 = sub_22B36050C();
        v47 = sub_22B360D1C();
        v48 = os_log_type_enabled(v46, v47);
        v49 = *(v2 + 360);
        v50 = *(v2 + 272);
        v51 = *(v2 + 224);
        if (v48)
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v122 = v53;
          *v52 = 136315394;
          *(v52 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v122);
          *(v52 + 12) = 2048;
          *(v52 + 14) = 1476;
          _os_log_impl(&dword_22B116000, v46, v47, "[Dropbox] Task is cancelled at marker %s:%ld", v52, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v53);
          MEMORY[0x23188F650](v53, -1, -1);
          MEMORY[0x23188F650](v52, -1, -1);

          v49(v50, v51);
        }

        else
        {

          v49(v50, v51);
        }

        sub_22B16F530(*(v2 + 192));
        if (sub_22B360BFC())
        {
          goto LABEL_16;
        }

        goto LABEL_48;
      }

      sub_22B35EAFC();
      v27 = sub_22B35EAEC();
      *(v2 + 416) = v27;
      *(v2 + 88) = v27;
      v1 = v27;
      v6 = sub_22B35F14C();
      v3 = v54;

      *(v2 + 424) = v3;
      if (v3)
      {
        v55 = v1;
        v56 = sub_22B35F06C();
        v8 = v57;

        *(v2 + 432) = v8;
        if (!v8)
        {
LABEL_63:

          goto LABEL_64;
        }

        v58 = v55;
        v121 = sub_22B35F0BC();
        v7 = v59;

        *(v2 + 440) = v7;
        if (v7)
        {
          v120 = v56;
          v60 = v58;
          v119 = sub_22B35F43C();
          v62 = v61;

          *(v2 + 448) = v62;
          if (!v62)
          {
LABEL_61:

            goto LABEL_62;
          }

          v63 = HIBYTE(v3) & 0xF;
          if ((v3 & 0x2000000000000000) == 0)
          {
            v63 = v6 & 0xFFFFFFFFFFFFLL;
          }

          if (v63)
          {
            v64 = HIBYTE(v8) & 0xF;
            if ((v8 & 0x2000000000000000) == 0)
            {
              v64 = v120 & 0xFFFFFFFFFFFFLL;
            }

            if (v64)
            {
              v65 = HIBYTE(v7) & 0xF;
              if ((v7 & 0x2000000000000000) == 0)
              {
                v65 = v121 & 0xFFFFFFFFFFFFLL;
              }

              if (v65)
              {
                v66 = HIBYTE(v62) & 0xF;
                if ((v62 & 0x2000000000000000) == 0)
                {
                  v66 = v119 & 0xFFFFFFFFFFFFLL;
                }

                if (v66)
                {
                  v102 = *(v2 + 508);
                  v112 = v62;
                  v114 = *(v2 + 168);
                  v67 = *(v2 + 152);
                  v116 = *(v2 + 144);
                  v68 = v60;
                  v69 = sub_22B35F38C();
                  v107 = v70;
                  v109 = v69;
                  v99 = v68;

                  v101 = *(v67 + 104);
                  v101(v114, v102, v116);
                  v103 = sub_22B35EE3C();
                  v72 = v71;
                  v73 = v114;
                  v113 = *(v67 + 8);
                  v113(v73, v116);
                  if (v109 == v103 && v107 == v72)
                  {
LABEL_45:

                    goto LABEL_52;
                  }

LABEL_51:
                  v110 = sub_22B36134C();

                  if ((v110 & 1) == 0)
                  {
                    v104 = *(v2 + 512);
                    v74 = *(v2 + 160);
                    v98 = *(v2 + 144);
                    v75 = v99;
                    v108 = sub_22B35F38C();
                    v111 = v76;
                    v100 = v75;

                    v101(v74, v104, v98);
                    v105 = sub_22B35EE3C();
                    v78 = v77;
                    v113(v74, v98);
                    if (v108 == v105 && v111 == v78)
                    {
                      goto LABEL_45;
                    }

                    v117 = sub_22B36134C();

                    if ((v117 & 1) == 0)
                    {

                      sub_22B36034C();
                      v80 = *(v2 + 128);
                      v79 = *(v2 + 136);
                      v115 = *(v2 + 120);
                      v118 = *(v2 + 112);
                      (*(v80 + 56))();
                      (*(v80 + 32))(v79, v118, v115);
                      if (sub_22B36035C())
                      {
                        v81 = v100;
                        sub_22B35F2CC();

                        v82 = swift_task_alloc();
                        *(v2 + 456) = v82;
                        *v82 = v2;
                        v82[1] = sub_22B2DAE00;
                        v127 = *(v2 + 104);
                        v126 = v112;
                        v125 = v119;

                        return sub_22B2B9260(v6, v3, v120, v8, v121, v7, v4, v5);
                      }

                      (*(*(v2 + 128) + 8))(*(v2 + 136), *(v2 + 120));

                      goto LABEL_61;
                    }
                  }
                }
              }
            }
          }

LABEL_52:
        }

LABEL_62:

        goto LABEL_63;
      }

LABEL_64:
      *(v2 + 480) = 0;
      *(v2 + 488) = v1;
      if ((sub_22B360BFC() & 1) == 0)
      {
        v95 = *(v2 + 320);
        v96 = v1;
        v97 = swift_task_alloc();
        *(v2 + 496) = v97;
        *v97 = v2;
        v97[1] = sub_22B2DB520;

        return sub_22B1B6774(v96, v95);
      }

      v83 = *(v2 + 344);
      v84 = *(v2 + 336);
      v85 = *(v2 + 264);
      v86 = *(v2 + 224);

      v83(v85, v84, v86);
      v87 = sub_22B36050C();
      v88 = sub_22B360D1C();
      v89 = os_log_type_enabled(v87, v88);
      v90 = *(v2 + 360);
      v91 = *(v2 + 264);
      v92 = *(v2 + 224);
      if (v89)
      {
        v93 = swift_slowAlloc();
        v94 = swift_slowAlloc();
        v122 = v94;
        *v93 = 136315394;
        *(v93 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v122);
        *(v93 + 12) = 2048;
        *(v93 + 14) = 1520;
        _os_log_impl(&dword_22B116000, v87, v88, "[Dropbox] Task is cancelled at marker %s:%ld", v93, 0x16u);
        __swift_destroy_boxed_opaque_existential_0(v94);
        MEMORY[0x23188F650](v94, -1, -1);
        MEMORY[0x23188F650](v93, -1, -1);

        v90(v91, v92);
      }

      else
      {

        v90(v91, v92);
      }

      sub_22B16F530(*(v2 + 192));

      if (sub_22B360BFC())
      {
        goto LABEL_16;
      }
    }

    else
    {
LABEL_15:

      if (sub_22B360BFC())
      {
LABEL_16:
        if (qword_28140A0C8 != -1)
        {
          swift_once();
        }

        v28 = *(v2 + 248);
        v29 = *(v2 + 224);
        v30 = *(v2 + 232);
        v31 = __swift_project_value_buffer(v29, qword_28140BD10);
        swift_beginAccess();
        (*(v30 + 16))(v28, v31, v29);
        v32 = sub_22B36050C();
        v33 = sub_22B360D1C();
        v34 = os_log_type_enabled(v32, v33);
        v35 = *(v2 + 248);
        v36 = *(v2 + 224);
        v37 = *(v2 + 232);
        if (v34)
        {
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v122 = v39;
          *v38 = 136315394;
          *(v38 + 4) = sub_22B1A7B20(0x656C436572616873, 0xEE00292870756E61, &v122);
          *(v38 + 12) = 2048;
          *(v38 + 14) = 1552;
          _os_log_impl(&dword_22B116000, v32, v33, "[Dropbox] Task is cancelled at marker %s:%ld", v38, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v39);
          MEMORY[0x23188F650](v39, -1, -1);
          MEMORY[0x23188F650](v38, -1, -1);
        }

        (*(v37 + 8))(v35, v36);
        goto LABEL_21;
      }
    }

LABEL_48:
    v106 = 1;
    goto LABEL_22;
  }

LABEL_21:
  v106 = 0;
LABEL_22:

  v40 = *(v2 + 8);

  return v40(v106);
}