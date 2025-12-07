uint64_t sub_265A0CB24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A0CB94(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_265A0CBE8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_265A0CC50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsSearchIndexableItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_265A0CCB4(uint64_t a1)
{
  v2 = sub_265A1F040();

  return sub_265A0CEB4(a1, v2);
}

unint64_t sub_265A0CCF8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_265A1F340())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_265A0CDB0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_265A1EBA0();
      v8 = v7;
      if (v6 == sub_265A1EBA0() && v8 == v9)
      {
        break;
      }

      v11 = sub_265A1F340();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_265A0CEB4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_265A0CF7C(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x266765660](v9, a1);
      sub_265A0CFD8(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_265A0D044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[34] = a4;
  v5[35] = v4;
  v5[32] = a2;
  v5[33] = a3;
  v5[31] = a1;
  v6 = sub_265A1E6C0();
  v5[36] = v6;
  v5[37] = *(v6 - 8);
  v5[38] = swift_task_alloc();
  v7 = type metadata accessor for SettingsSearchIndexableItem(0);
  v5[39] = v7;
  v5[40] = *(v7 - 8);
  v5[41] = swift_task_alloc();
  v5[42] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B6F0, &qword_265A21110);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v5[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  v5[46] = swift_task_alloc();
  v5[47] = swift_task_alloc();
  v5[48] = swift_task_alloc();
  v5[49] = swift_task_alloc();
  v8 = sub_265A1E770();
  v5[50] = v8;
  v5[51] = *(v8 - 8);
  v5[52] = swift_task_alloc();
  v5[53] = swift_task_alloc();
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B720, &qword_265A226A8);
  v5[56] = v9;
  v5[57] = *(v9 - 8);
  v5[58] = swift_task_alloc();
  v10 = sub_265A1E9F0();
  v5[59] = v10;
  v5[60] = *(v10 - 8);
  v5[61] = swift_task_alloc();
  v5[62] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265A0D39C, 0, 0);
}

uint64_t sub_265A0D39C()
{
  v120 = v0;
  v119 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 280) identifier];
  if (!v1)
  {
    sub_265A1EBA0();
    v1 = sub_265A1EB70();
  }

  v107 = v1;
  *(v0 + 504) = v1;
  v2 = sub_265A1EBA0();
  v4 = v3;
  *(v0 + 512) = v2;
  *(v0 + 520) = v3;
  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v5 = sub_265A1EA20();
  __swift_project_value_buffer(v5, qword_28156B4E8);

  sub_265A1E9E0();
  v6 = sub_265A1EA10();
  v7 = sub_265A1EF50();

  v111 = v2;
  if (sub_265A1EFA0())
  {
    v9 = *(v0 + 256);
    v8 = *(v0 + 264);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *&v114 = v11;
    *v10 = 136446466;
    v12 = v9;
    v2 = v111;
    *(v10 + 4) = sub_2659D9320(v12, v8, &v114);
    *(v10 + 12) = 2082;
    *(v10 + 14) = sub_2659D9320(v111, v4, &v114);
    v13 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v6, v7, v13, "Search Items From AppEnum", "AppIntent: '%{public}s', Enum: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v11, -1, -1);
    MEMORY[0x266766110](v10, -1, -1);
  }

  v14 = *(v0 + 496);
  v16 = *(v0 + 472);
  v15 = *(v0 + 480);
  v17 = *(v0 + 280);
  (*(v15 + 16))(*(v0 + 488), v14, v16);
  sub_265A1EA60();
  swift_allocObject();
  *(v0 + 528) = sub_265A1EA50();
  (*(v15 + 8))(v14, v16);
  v18 = swift_allocObject();
  *(v0 + 536) = v18;
  *(v18 + 16) = 0u;
  *(v18 + 32) = 0u;
  *(v18 + 48) = 0u;
  *(v18 + 64) = -1;
  v19 = [objc_opt_self() policyWithEnumMetadata_];
  *(v0 + 544) = v19;
  if (qword_28156A978 != -1)
  {
    swift_once();
  }

  v20 = sub_265A1EAA0();
  *(v0 + 552) = __swift_project_value_buffer(v20, qword_28156B518);

  v21 = sub_265A1EA80();
  v22 = sub_265A1EF30();

  if (os_log_type_enabled(v21, v22))
  {
    v105 = *(v0 + 264);
    v23 = v4;
    v24 = v18;
    v25 = v19;
    v26 = *(v0 + 256);
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v114 = v28;
    *v27 = 136446466;
    v29 = v26;
    v19 = v25;
    v18 = v24;
    v4 = v23;
    v2 = v111;
    *(v27 + 4) = sub_2659D9320(v29, v105, &v114);
    *(v27 + 12) = 2082;
    *(v27 + 14) = sub_2659D9320(v111, v4, &v114);
    _os_log_impl(&dword_2659CA000, v21, v22, "Making Link Connection to AppExtension for AppIntent: %{public}s, AppEnum %{public}s…", v27, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v28, -1, -1);
    MEMORY[0x266766110](v27, -1, -1);
  }

  *(v0 + 192) = 0;
  v30 = [v19 connectionWithError_];
  *(v0 + 560) = v30;
  v31 = *(v0 + 192);
  if (v30)
  {
    v103 = v30;

    v32 = v31;
    v33 = sub_265A1EA80();
    v34 = sub_265A1EF30();

    if (os_log_type_enabled(v33, v34))
    {
      v36 = *(v0 + 256);
      v35 = *(v0 + 264);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v114 = v38;
      *v37 = 136446466;
      *(v37 + 4) = sub_2659D9320(v36, v35, &v114);
      *(v37 + 12) = 2082;
      *(v37 + 14) = sub_2659D9320(v111, v4, &v114);
      _os_log_impl(&dword_2659CA000, v33, v34, "Successfully established Link Connection to AppExtension for AppIntent: %{public}s, AppEnum %{public}s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v38, -1, -1);
      MEMORY[0x266766110](v37, -1, -1);
    }

    v58 = sub_265A1EA80();
    v59 = sub_265A1EF30();

    if (os_log_type_enabled(v58, v59))
    {
      v61 = *(v0 + 256);
      v60 = *(v0 + 264);
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      *&v114 = v63;
      *v62 = 136446466;
      *(v62 + 4) = sub_2659D9320(v61, v60, &v114);
      *(v62 + 12) = 2082;
      *(v62 + 14) = sub_2659D9320(v111, v4, &v114);
      _os_log_impl(&dword_2659CA000, v58, v59, "Retrieving URLs for AppIntent: %{public}s, AppEnum %{public}s…", v62, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v63, -1, -1);
      MEMORY[0x266766110](v62, -1, -1);
    }

    v65 = *(v0 + 456);
    v64 = *(v0 + 464);
    v66 = *(v0 + 448);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 224;
    *(v0 + 24) = sub_265A0E2B8;
    swift_continuation_init();
    *(v0 + 136) = v66;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B728, &qword_265A226B0);
    *(v0 + 568) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
    sub_265A1ED80();
    (*(v65 + 32))(boxed_opaque_existential_1, v64, v66);
    *(v0 + 80) = MEMORY[0x277D85DD0];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_265A10E8C;
    *(v0 + 104) = &block_descriptor_1;
    [v103 fetchURLsForEnumWithIdentifier:v107 completionHandler:v0 + 80];
    (*(v65 + 8))(boxed_opaque_existential_1, v66);

    return MEMORY[0x282200938](v0 + 16);
  }

  v106 = v19;
  v39 = v31;

  v40 = sub_265A1E690();
  swift_willThrow();
  *(v0 + 200) = v40;
  v41 = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B670, &qword_265A21AB8);
  sub_2659F3D98(0, &qword_28156A810, 0x277CCA9B8);
  if (!swift_dynamicCast())
  {
    goto LABEL_27;
  }

  v42 = *(v0 + 208);
  if ([v42 code] != -10814)
  {

LABEL_27:

    v68 = v40;
    v69 = sub_265A1EA80();
    v70 = sub_265A1EF20();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = *(v0 + 256);
      v109 = *(v0 + 264);
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      *&v114 = v74;
      *v72 = 136446722;
      *(v72 + 4) = sub_2659D9320(v111, v4, &v114);
      *(v72 + 12) = 2082;
      *(v72 + 14) = sub_2659D9320(v71, v109, &v114);
      *(v72 + 22) = 2114;
      v75 = v40;
      v76 = _swift_stdlib_bridgeErrorToNSError();
      *(v72 + 24) = v76;
      *v73 = v76;
      _os_log_impl(&dword_2659CA000, v69, v70, "Unable to form connection for AppEnum '%{public}s', AppIntent '%{public}s': %{public}@", v72, 0x20u);
      sub_2659DA270(v73, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v73, -1, -1);
      swift_arrayDestroy();
      v77 = v74;
      v2 = v111;
      MEMORY[0x266766110](v77, -1, -1);
      MEMORY[0x266766110](v72, -1, -1);
    }

    v79 = *(v0 + 256);
    v78 = *(v0 + 264);
    v80 = sub_265A1E680();
    sub_265A10D30(v18, v79, v78, v2, v4, &v114);
    v110 = v115;
    v113 = v114;
    v102 = v117;
    v104 = v116;
    v101 = v118;
    v81 = [v80 domain];
    v100 = sub_265A1EBA0();
    v83 = v82;

    v84 = [v80 code];
    swift_getErrorValue();
    v85 = sub_265A1F380();
    v87 = v86;
    Current = CFAbsoluteTimeGetCurrent();
    v54 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
    v90 = *(v54 + 2);
    v89 = *(v54 + 3);
    if (v90 >= v89 >> 1)
    {
      v54 = sub_2659E0698((v89 > 1), v90 + 1, 1, v54);
    }

    *(v54 + 2) = v90 + 1;
    v91 = &v54[120 * v90];
    v91[32] = 2;
    *(v91 + 56) = v110;
    *(v91 + 40) = v113;
    *(v91 + 9) = v104;
    *(v91 + 10) = v102;
    v91[88] = v101;
    *(v91 + 12) = 1;
    *(v91 + 13) = v100;
    *(v91 + 14) = v83;
    *(v91 + 15) = v84;
    *(v91 + 16) = v85;
    *(v91 + 17) = v87;
    *(v91 + 18) = Current;
    goto LABEL_32;
  }

  v43 = sub_265A1EA80();
  v44 = sub_265A1EF30();

  if (os_log_type_enabled(v43, v44))
  {
    v46 = *(v0 + 256);
    v45 = *(v0 + 264);
    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    *&v114 = v48;
    *v47 = 136446210;
    *(v47 + 4) = sub_2659D9320(v46, v45, &v114);
    _os_log_impl(&dword_2659CA000, v43, v44, "AppIntent '%{public}s' is from a bundle that is in an offloaded state, skipping (enum).", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v48);
    v49 = v48;
    v2 = v111;
    MEMORY[0x266766110](v49, -1, -1);
    MEMORY[0x266766110](v47, -1, -1);
  }

  sub_265A10D30(v18, *(v0 + 256), *(v0 + 264), v2, v4, &v114);
  v108 = v115;
  v112 = v114;
  v50 = v116;
  v51 = v117;
  v52 = v118;
  v53 = CFAbsoluteTimeGetCurrent();
  v54 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
  v56 = *(v54 + 2);
  v55 = *(v54 + 3);
  if (v56 >= v55 >> 1)
  {
    v54 = sub_2659E0698((v55 > 1), v56 + 1, 1, v54);
  }

  *(v54 + 2) = v56 + 1;
  v57 = &v54[120 * v56];
  v57[32] = 0;
  *(v57 + 56) = v108;
  *(v57 + 40) = v112;
  *(v57 + 9) = v50;
  *(v57 + 10) = v51;
  v57[88] = v52;
  *(v57 + 12) = 0x8000000000000000;
  *(v57 + 104) = 0u;
  *(v57 + 120) = 0u;
  *(v57 + 17) = 0;
  *(v57 + 18) = v53;

LABEL_32:
  v92 = *(v0 + 528);
  v93 = *(v0 + 520);
  v94 = *(v0 + 512);
  v96 = *(v0 + 256);
  v95 = *(v0 + 264);
  v97 = *(v0 + 248);

  *v97 = v96;
  v97[1] = v95;
  v97[2] = v94;
  v97[3] = v93;
  v97[4] = MEMORY[0x277D84F90];
  v97[5] = v54;
  sub_265A10AA4(v92);

  v98 = *(v0 + 8);

  return v98();
}

uint64_t sub_265A0E2B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 576) = v1;
  if (v1)
  {
    v2 = sub_265A1032C;
  }

  else
  {
    v2 = sub_265A0E3F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_265A0E3F4()
{
  v361 = v0;
  v360 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 224);

  if (!v1)
  {
LABEL_6:
    sub_265A0CAD0();
    v12 = swift_allocError();
    *v13 = 3;
    swift_willThrow();
    *(v0 + 232) = v12;
    v14 = v12;
    v15 = swift_dynamicCast();
    v16 = *(v0 + 280);
    if (v15)
    {
      v17 = *(v0 + 584) == 3;
    }

    else
    {
      v17 = 0;
    }

    if (v17)
    {

      v51 = v16;
      v52 = sub_265A1EA80();
      v53 = sub_265A1EF20();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = *(v0 + 280);
        v56 = *(v0 + 256);
        v55 = *(v0 + 264);
        v57 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        *&v355 = v58;
        *v57 = 136446466;
        v59 = [v54 identifier];
        v60 = sub_265A1EBA0();
        v62 = v61;

        v63 = sub_2659D9320(v60, v62, &v355);

        *(v57 + 4) = v63;
        *(v57 + 12) = 2082;
        *(v57 + 14) = sub_2659D9320(v56, v55, &v355);
        _os_log_impl(&dword_2659CA000, v52, v53, "No URLs returned for AppEnum (id: %{public}s), AppIntent: %{public}s", v57, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266766110](v58, -1, -1);
        MEMORY[0x266766110](v57, -1, -1);
      }

      sub_265A10D30(*(v0 + 536), *(v0 + 256), *(v0 + 264), *(v0 + 512), *(v0 + 520), &v355);
      v344 = v356;
      v348 = v355;
      v64 = v357;
      v65 = v358;
      v66 = v359;
      Current = CFAbsoluteTimeGetCurrent();
      v68 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
      v70 = *(v68 + 2);
      v69 = *(v68 + 3);
      if (v70 >= v69 >> 1)
      {
        v68 = sub_2659E0698((v69 > 1), v70 + 1, 1, v68);
      }

      v334 = v68;
      v71 = *(v0 + 560);

      *(v68 + 2) = v70 + 1;
      v72 = &v68[120 * v70];
      v72[32] = 2;
      *(v72 + 56) = v344;
      *(v72 + 40) = v348;
      *(v72 + 9) = v64;
      *(v72 + 10) = v65;
      v72[88] = v66;
      *(v72 + 6) = xmmword_265A22690;
      *(v72 + 7) = 0u;
      *(v72 + 8) = 0u;
      *(v72 + 18) = Current;
    }

    else
    {

      v18 = v16;
      v19 = v12;
      v20 = sub_265A1EA80();
      v21 = sub_265A1EF20();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = *(v0 + 280);
        v342 = *(v0 + 264);
        v330 = *(v0 + 256);
        v23 = swift_slowAlloc();
        v333 = swift_slowAlloc();
        v346 = swift_slowAlloc();
        *&v355 = v346;
        *v23 = 136446722;
        v24 = [v22 identifier];
        v25 = sub_265A1EBA0();
        v27 = v26;

        v28 = sub_2659D9320(v25, v27, &v355);

        *(v23 + 4) = v28;
        *(v23 + 12) = 2082;
        *(v23 + 14) = sub_2659D9320(v330, v342, &v355);
        *(v23 + 22) = 2114;
        v29 = v12;
        v30 = _swift_stdlib_bridgeErrorToNSError();
        *(v23 + 24) = v30;
        *v333 = v30;
        _os_log_impl(&dword_2659CA000, v20, v21, "Failed to fetch URLs for AppEnum (id: %{public}s), AppIntent: %{public}s, error: %{public}@", v23, 0x20u);
        sub_2659DA270(v333, &qword_28002B678, &unk_265A21AC0);
        MEMORY[0x266766110](v333, -1, -1);
        swift_arrayDestroy();
        MEMORY[0x266766110](v346, -1, -1);
        MEMORY[0x266766110](v23, -1, -1);
      }

      v31 = *(v0 + 536);
      v32 = *(v0 + 520);
      v33 = *(v0 + 512);
      v35 = *(v0 + 256);
      v34 = *(v0 + 264);
      v36 = sub_265A1E680();
      sub_265A10D30(v31, v35, v34, v33, v32, &v355);
      v343 = v356;
      v347 = v355;
      v37 = v357;
      v331 = v358;
      v325 = v359;
      v38 = [v36 domain];
      v39 = sub_265A1EBA0();
      v321 = v40;
      v324 = v39;

      v319 = [v36 code];
      swift_getErrorValue();
      v41 = sub_265A1F380();
      v43 = v42;
      v44 = CFAbsoluteTimeGetCurrent();
      v45 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
      v47 = *(v45 + 2);
      v46 = *(v45 + 3);
      v48 = v45;
      if (v47 >= v46 >> 1)
      {
        v48 = sub_2659E0698((v46 > 1), v47 + 1, 1, v45);
      }

      v49 = *(v0 + 560);

      *(v48 + 2) = v47 + 1;
      v334 = v48;
      v50 = &v48[120 * v47];
      v50[32] = 2;
      *(v50 + 56) = v343;
      *(v50 + 40) = v347;
      *(v50 + 9) = v37;
      *(v50 + 10) = v331;
      v50[88] = v325;
      *(v50 + 12) = 3;
      *(v50 + 13) = v324;
      *(v50 + 14) = v321;
      *(v50 + 15) = v319;
      *(v50 + 16) = v41;
      *(v50 + 17) = v43;
      *(v50 + 18) = v44;
    }

    v322 = MEMORY[0x277D84F90];
    goto LABEL_107;
  }

  if (!*(v1 + 16))
  {

    goto LABEL_6;
  }

  v2 = sub_265A1EA80();
  v3 = sub_265A1EF30();

  v323 = v1;
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 520);
    v5 = *(v0 + 512);
    v7 = *(v0 + 256);
    v6 = *(v0 + 264);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v355 = v9;
    *v8 = 134218498;
    *(v8 + 4) = *(v323 + 16);

    *(v8 + 12) = 2082;
    v10 = v6;
    v11 = v323;
    *(v8 + 14) = sub_2659D9320(v7, v10, &v355);
    *(v8 + 22) = 2082;
    *(v8 + 24) = sub_2659D9320(v5, v4, &v355);
    _os_log_impl(&dword_2659CA000, v2, v3, "…retrieved %ld URLs for AppIntent: %{public}s, AppEnum %{public}s", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v9, -1, -1);
    MEMORY[0x266766110](v8, -1, -1);
  }

  else
  {
    v11 = v1;
  }

  v73 = *(v0 + 280);

  v74 = v73;
  v75 = sub_265A1EA80();
  v76 = sub_265A1EF30();

  v77 = os_log_type_enabled(v75, v76);
  v78 = *(v0 + 280);
  v79 = 0x279BB1000uLL;
  if (v77)
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    *&v355 = v81;
    *v80 = 134349570;
    v82 = [v78 cases];
    sub_2659F3D98(0, &qword_28156A8C8, 0x277D23830);
    v83 = sub_265A1ECC0();

    v349 = v81;
    if (v83 >> 62)
    {
      v84 = sub_265A1F1E0();
    }

    else
    {
      v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v85 = *(v0 + 520);
    v86 = *(v0 + 512);
    v87 = *(v0 + 280);
    v89 = *(v0 + 256);
    v88 = *(v0 + 264);

    *(v80 + 4) = v84;
    *(v80 + 12) = 2082;
    *(v80 + 14) = sub_2659D9320(v89, v88, &v355);
    *(v80 + 22) = 2082;
    *(v80 + 24) = sub_2659D9320(v86, v85, &v355);
    _os_log_impl(&dword_2659CA000, v75, v76, "Begin processing %{public}ld Enum Cases for AppIntent: %{public}s, AppEnum %{public}s…", v80, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266766110](v349, -1, -1);
    MEMORY[0x266766110](v80, -1, -1);

    v90 = v323;
    v79 = 0x279BB1000;
  }

  else
  {

    v90 = v11;
  }

  v91 = [*(v0 + 280) *(v79 + 3024)];
  sub_2659F3D98(0, &qword_28156A8C8, 0x277D23830);
  v92 = sub_265A1ECC0();

  if (v92 >> 62)
  {
    goto LABEL_101;
  }

  v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = &unk_265A21000; v93; i = &unk_265A21000)
  {
    v95 = 0;
    v96 = *(v0 + 408);
    v301 = v92 & 0xFFFFFFFFFFFFFF8;
    v300 = v92 + 32;
    v287 = *(v0 + 336);
    v320 = v92 & 0xC000000000000001;
    v310 = (v96 + 48);
    v97 = *(v0 + 296);
    v291 = (v96 + 8);
    v292 = v96;
    v288 = (v96 + 32);
    v289 = (v96 + 56);
    v290 = *(v0 + 272);
    v311 = (v97 + 56);
    v286 = (v97 + 32);
    v284 = *(v0 + 312);
    v285 = *(v0 + 320);
    v293 = i[330];
    v98 = MEMORY[0x277D84F90];
    v322 = MEMORY[0x277D84F90];
    v317 = v93;
    v318 = v92;
    while (1)
    {
      if (v320)
      {
        v105 = MEMORY[0x2667656F0](v95, v92);
      }

      else
      {
        if (v95 >= *(v301 + 16))
        {
          goto LABEL_100;
        }

        v105 = *(v300 + 8 * v95);
      }

      v106 = v105;
      v107 = __OFADD__(v95, 1);
      v108 = v95 + 1;
      if (v107)
      {
        break;
      }

      v332 = v108;
      v109 = swift_allocObject();
      *(v109 + 16) = 0u;
      *(v109 + 32) = 0u;
      *(v109 + 48) = 0u;
      v350 = v109;
      *(v109 + 64) = -1;
      v345 = [v106 displayRepresentation];
      v110 = [v106 identifier];
      v111 = sub_265A1EBA0();
      v113 = v112;

      if (!*(v90 + 16))
      {

LABEL_46:
        v132 = *(v0 + 280);
        v133 = v106;
        v134 = sub_265A1EA80();
        v135 = sub_265A1EF30();

        if (os_log_type_enabled(v134, v135))
        {
          v136 = *(v0 + 280);
          v137 = swift_slowAlloc();
          v335 = v98;
          v138 = swift_slowAlloc();
          *&v355 = v138;
          *v137 = v293;
          v139 = [v136 identifier];
          v140 = sub_265A1EBA0();
          v142 = v141;

          v143 = sub_2659D9320(v140, v142, &v355);

          *(v137 + 4) = v143;
          *(v137 + 12) = 2082;
          v144 = [v133 identifier];
          v145 = sub_265A1EBA0();
          v147 = v146;

          v148 = sub_2659D9320(v145, v147, &v355);

          *(v137 + 14) = v148;
          _os_log_impl(&dword_2659CA000, v134, v135, "Could not resolve URL for AppEnum '%{public}s', case '%{public}s'.", v137, 0x16u);
          swift_arrayDestroy();
          v149 = v138;
          v98 = v335;
          v92 = v318;
          MEMORY[0x266766110](v149, -1, -1);
          v150 = v137;
          v93 = v317;
          MEMORY[0x266766110](v150, -1, -1);
        }

        sub_265A10F58(v350, *(v0 + 256), *(v0 + 264), *(v0 + 512), *(v0 + 520), v133, &v355);
        v327 = v356;
        v336 = v355;
        v151 = v357;
        v152 = v358;
        v153 = v359;
        v154 = CFAbsoluteTimeGetCurrent();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_2659E0698(0, *(v98 + 2) + 1, 1, v98);
        }

        v156 = *(v98 + 2);
        v155 = *(v98 + 3);
        if (v156 >= v155 >> 1)
        {
          v98 = sub_2659E0698((v155 > 1), v156 + 1, 1, v98);
        }

        *(v98 + 2) = v156 + 1;
        v157 = &v98[120 * v156];
        v157[32] = 2;
        v158 = *(&v352 + 3);
        *(v157 + 33) = v352;
        *(v157 + 9) = v158;
        *(v157 + 56) = v327;
        *(v157 + 40) = v336;
        *(v157 + 9) = v151;
        *(v157 + 10) = v152;
        v157[88] = v153;
        v159 = *(&v355 + 3);
        *(v157 + 89) = v355;
        *(v157 + 23) = v159;
        *(v157 + 12) = 0x8000000000000003;
        *(v157 + 104) = 0u;
        *(v157 + 120) = 0u;
        *(v157 + 17) = 0;
        *(v157 + 18) = v154;

        v90 = v323;
        goto LABEL_32;
      }

      v114 = sub_265A0C9AC(v111, v113);
      v116 = v115;

      if ((v116 & 1) == 0)
      {
        goto LABEL_46;
      }

      v326 = v106;
      v117 = *(v0 + 440);
      v119 = *(v0 + 416);
      v118 = *(v0 + 424);
      v120 = *(v0 + 400);
      v121 = *(v292 + 16);
      v121(v117, *(v90 + 56) + *(v292 + 72) * v114, v120);
      v121(v118, v117, v120);
      v315 = v121;
      v121(v119, v117, v120);
      v122 = *(v290 + 16);

      v123 = v310;
      if (v122)
      {
        v124 = v290 + 40;
        while (1)
        {
          v125 = *(v0 + 416);
          v126 = *(v0 + 400);
          v127 = *(v0 + 384);
          v128 = *(v124 - 8);

          v128(v125);

          v129 = *v310;
          if ((*v310)(v127, 1, v126) != 1)
          {
            break;
          }

          sub_2659DA270(*(v0 + 384), &qword_28002B700, &qword_265A22658);
          v124 += 16;
          if (!--v122)
          {
            goto LABEL_44;
          }
        }

        v160 = *(v0 + 424);
        v161 = *(v0 + 400);
        v162 = *(v0 + 376);
        v163 = *(v0 + 368);
        sub_2659DA270(*(v0 + 384), &qword_28002B700, &qword_265A22658);
        v164 = *(v124 - 8);

        v164(v160);
        v130 = *v291;
        (*v291)(v160, v161);

        sub_265A0CBE8(v162, v163, &qword_28002B700, &qword_265A22658);
        v165 = v163;
        v123 = v310;
        if (v129(v165, 1, v161) == 1)
        {
          result = (v130)(*(v0 + 416), *(v0 + 400));
          __break(1u);
          return result;
        }

        v166 = *(v0 + 376);
        (*v288)(*(v0 + 392), *(v0 + 368), *(v0 + 400));
        sub_2659DA270(v166, &qword_28002B700, &qword_265A22658);
        v131 = 0;
      }

      else
      {
LABEL_44:
        v130 = *v291;
        (*v291)(*(v0 + 424), *(v0 + 400));
        v131 = 1;
      }

      v314 = v130;
      v167 = *(v0 + 416);
      v169 = *(v0 + 392);
      v168 = *(v0 + 400);
      (*v289)(v169, v131, 1, v168);

      v130(v167, v168);
      if ((*v123)(v169, 1, v168) == 1)
      {
        v170 = *(v0 + 432);
        v171 = *(v0 + 440);
        v172 = *(v0 + 400);
        sub_2659DA270(*(v0 + 392), &qword_28002B700, &qword_265A22658);
        v315(v170, v171, v172);
        v173 = v326;
        v174 = v345;
      }

      else
      {
        v175 = *(v0 + 520);
        v176 = *(v0 + 512);
        v178 = *(v0 + 256);
        v177 = *(v0 + 264);
        (*v288)(*(v0 + 432), *(v0 + 392), *(v0 + 400));
        sub_265A10F58(v350, v178, v177, v176, v175, v326, &v355);
        v312 = v356;
        v337 = v355;
        v179 = v357;
        v180 = v358;
        v181 = v359;
        v182 = CFAbsoluteTimeGetCurrent();
        v174 = v345;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_2659E0698(0, *(v98 + 2) + 1, 1, v98);
        }

        v184 = *(v98 + 2);
        v183 = *(v98 + 3);
        if (v184 >= v183 >> 1)
        {
          v98 = sub_2659E0698((v183 > 1), v184 + 1, 1, v98);
        }

        *(v98 + 2) = v184 + 1;
        v185 = &v98[120 * v184];
        v185[32] = 1;
        v186 = *(&v352 + 3);
        *(v185 + 33) = v352;
        *(v185 + 9) = v186;
        *(v185 + 56) = v312;
        *(v185 + 40) = v337;
        *(v185 + 9) = v179;
        *(v185 + 10) = v180;
        v185[88] = v181;
        v187 = v355;
        *(v185 + 23) = *(&v355 + 3);
        *(v185 + 89) = v187;
        *(v185 + 7) = 0u;
        *(v185 + 8) = 0u;
        *(v185 + 6) = xmmword_265A22600;
        *(v185 + 18) = v182;
        v173 = v326;
      }

      v188 = [v174 image];
      if (v188)
      {
        v189 = v188;
        objc_opt_self();
        v190 = swift_dynamicCastObjCClass();
        if (v190)
        {
          v191 = v190;
          v192 = v189;
          v193 = [v191 iconType];
          if (v193 == 1)
          {
            v196 = [v191 identifier];
            v308 = sub_265A1EBA0();
            v309 = v197;

            LOBYTE(v313) = 0;
            LOBYTE(v307) = 0;
            goto LABEL_76;
          }

          if (!v193)
          {
            v194 = [v191 identifier];
            v308 = sub_265A1EBA0();
            v309 = v195;

            LOBYTE(v313) = 0;
            LOBYTE(v307) = 1;
LABEL_76:
            v207 = [v174 subtitle];
            if (v207)
            {
              v208 = v207;
              v209 = [v207 localizedStringResource];
              if (!v209)
              {
                return sub_265A1F1C0();
              }

              v210 = v209;
              *(&v356 + 1) = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
              *&v355 = v210;
              v211 = v210;
              sub_265A1E6A0();

              v212 = 0;
            }

            else
            {
              v212 = 1;
            }

            v238 = *v311;
            (*v311)(*(v0 + 360), v212, 1, *(v0 + 288));
            v239 = [v173 identifier];
            v240 = sub_265A1EBA0();
            v306 = v241;

            v242 = [v174 title];
            v243 = [v242 localizedStringResource];
            if (!v243)
            {
              return sub_265A1F1C0();
            }

            v244 = v243;
            v341 = v98;
            v246 = *(v0 + 352);
            v245 = *(v0 + 360);
            v247 = sub_2659F3D98(0, &unk_28156A880, 0x277CCAEB8);
            *(&v356 + 1) = v247;
            *&v355 = v244;
            v248 = v244;
            sub_265A1E6A0();

            sub_265A0CBE8(v245, v246, &qword_28002B6F0, &qword_265A21110);
            v249 = [v174 synonyms];
            if (v249)
            {
              v250 = v249;
              sub_2659F3D98(0, &qword_28156A838, 0x277D23910);
              sub_265A1ECC0();

              v251 = sub_265A0C54C();
            }

            else
            {
              v251 = MEMORY[0x277D84F90];
            }

            v252 = [v174 descriptionText];
            v303 = v240;
            v304 = v238;
            v302 = v251;
            if (v252)
            {
              v253 = v252;
              v254 = [v252 localizedStringResource];
              if (!v254)
              {
                return sub_265A1F1C0();
              }

              *(&v356 + 1) = v247;
              *&v355 = v254;
              v255 = v254;
              sub_265A1E6A0();
            }

            v256 = *(v0 + 432);
            v257 = *(v0 + 400);
            v296 = *(v0 + 520);
            v297 = *(v0 + 344);
            v258 = *(v0 + 336);
            v298 = *(v0 + 352);
            v299 = *(v0 + 328);
            v294 = *(v0 + 512);
            v295 = *(v0 + 304);
            v259 = *(v0 + 288);
            v260 = *(v0 + 256);
            v261 = *(v0 + 264);
            v304();
            v315(&v258[v284[11]], v256, v257);
            v262 = v284[8];
            (v304)(&v258[v262], 1, 1, v259);
            v263 = v284[10];
            (v304)(&v258[v263], 1, 1, v259);
            *v258 = v260;
            v287[1] = v261;
            v287[2] = v294;
            v287[3] = v296;
            v287[4] = v303;
            v287[5] = v306;
            (*v286)(&v258[v284[7]], v295, v259);

            sub_2659D9AD0(v298, &v258[v262]);
            *&v258[v284[9]] = v302;
            sub_2659D9AD0(v297, &v258[v263]);
            v264 = &v258[v284[12]];
            *v264 = v308;
            *(v264 + 1) = v309;
            v264[16] = v313 & 1;
            v264[17] = v307;
            sub_2659DE470(v258, v299);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v322 = sub_2659E0670(0, v322[2] + 1, 1, v322);
            }

            v98 = v341;
            v266 = v322[2];
            v265 = v322[3];
            if (v266 >= v265 >> 1)
            {
              v322 = sub_2659E0670((v265 > 1), v266 + 1, 1, v322);
            }

            v100 = *(v0 + 432);
            v99 = *(v0 + 440);
            v101 = *(v0 + 400);
            v102 = *(v0 + 360);
            v104 = *(v0 + 328);
            v103 = *(v0 + 336);

            sub_2659DA270(v102, &qword_28002B6F0, &qword_265A21110);
            v314(v100, v101);
            v314(v99, v101);
            v322[2] = v266 + 1;
            sub_265A0CC50(v104, v322 + ((*(v285 + 80) + 32) & ~*(v285 + 80)) + *(v285 + 72) * v266);
            sub_2659DCF64(v103);
            goto LABEL_31;
          }
        }
      }

      sub_265A1CF6C(&v352);
      v198 = v353;
      if (v353)
      {
        v308 = v352;
        v313 = v354;
        sub_265A10F58(v350, *(v0 + 256), *(v0 + 264), *(v0 + 512), *(v0 + 520), v173, &v355);
        v305 = v356;
        v338 = v355;
        v199 = v357;
        v200 = v358;
        v201 = v359;
        v202 = CFAbsoluteTimeGetCurrent();
        v309 = v198;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_2659E0698(0, *(v98 + 2) + 1, 1, v98);
        }

        v204 = *(v98 + 2);
        v203 = *(v98 + 3);
        if (v204 >= v203 >> 1)
        {
          v98 = sub_2659E0698((v203 > 1), v204 + 1, 1, v98);
        }

        v307 = (v313 >> 8) & 1;
        *(v98 + 2) = v204 + 1;
        v205 = &v98[120 * v204];
        v205[32] = 1;
        *(v205 + 33) = *v351;
        *(v205 + 9) = *&v351[3];
        *(v205 + 56) = v305;
        *(v205 + 40) = v338;
        *(v205 + 9) = v199;
        *(v205 + 10) = v200;
        v205[88] = v201;
        v206 = v355;
        *(v205 + 23) = *(&v355 + 3);
        *(v205 + 89) = v206;
        *(v205 + 7) = 0u;
        *(v205 + 8) = 0u;
        *(v205 + 6) = xmmword_265A22610;
        *(v205 + 18) = v202;
        v173 = v326;
        goto LABEL_76;
      }

      v213 = v173;
      v214 = sub_265A1EA80();
      v215 = sub_265A1EF30();

      if (os_log_type_enabled(v214, v215))
      {
        v216 = *(v0 + 520);
        v217 = *(v0 + 512);
        v328 = *(v0 + 264);
        v316 = *(v0 + 256);
        v218 = swift_slowAlloc();
        v339 = v98;
        v219 = swift_slowAlloc();
        *&v355 = v219;
        *v218 = 136446722;
        *(v218 + 4) = sub_2659D9320(v217, v216, &v355);
        *(v218 + 12) = 2082;
        v220 = [v213 identifier];
        v221 = sub_265A1EBA0();
        v223 = v222;

        v224 = sub_2659D9320(v221, v223, &v355);

        *(v218 + 14) = v224;
        *(v218 + 22) = 2082;
        *(v218 + 24) = sub_2659D9320(v316, v328, &v355);
        _os_log_impl(&dword_2659CA000, v214, v215, "Could not resolve Icon for AppEnum '%{public}s', case '%{public}s', AppIntent '%{public}s'.", v218, 0x20u);
        swift_arrayDestroy();
        v225 = v219;
        v98 = v339;
        MEMORY[0x266766110](v225, -1, -1);
        MEMORY[0x266766110](v218, -1, -1);
      }

      sub_265A10F58(v350, *(v0 + 256), *(v0 + 264), *(v0 + 512), *(v0 + 520), v213, &v355);
      v329 = v356;
      v340 = v355;
      v226 = v357;
      v227 = v358;
      v228 = v359;
      v229 = CFAbsoluteTimeGetCurrent();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v98 = sub_2659E0698(0, *(v98 + 2) + 1, 1, v98);
      }

      v231 = *(v98 + 2);
      v230 = *(v98 + 3);
      if (v231 >= v230 >> 1)
      {
        v98 = sub_2659E0698((v230 > 1), v231 + 1, 1, v98);
      }

      v233 = *(v0 + 432);
      v232 = *(v0 + 440);
      v234 = *(v0 + 400);

      v314(v233, v234);
      v314(v232, v234);
      *(v98 + 2) = v231 + 1;
      v235 = &v98[120 * v231];
      v235[32] = 2;
      v236 = *(&v352 + 3);
      *(v235 + 33) = v352;
      *(v235 + 9) = v236;
      *(v235 + 56) = v329;
      *(v235 + 40) = v340;
      *(v235 + 9) = v226;
      *(v235 + 10) = v227;
      v235[88] = v228;
      v237 = *(&v355 + 3);
      *(v235 + 89) = v355;
      *(v235 + 23) = v237;
      *(v235 + 6) = xmmword_265A22620;
      *(v235 + 7) = 0u;
      *(v235 + 8) = 0u;
      *(v235 + 18) = v229;
LABEL_31:

      v90 = v323;
      v93 = v317;
      v92 = v318;
LABEL_32:
      v95 = v332;
      if (v332 == v93)
      {
        goto LABEL_103;
      }
    }

    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    v93 = sub_265A1F1E0();
  }

  v98 = MEMORY[0x277D84F90];
  v322 = MEMORY[0x277D84F90];
LABEL_103:

  v268 = sub_265A1EA80();
  v269 = sub_265A1EF30();

  v270 = os_log_type_enabled(v268, v269);
  v271 = *(v0 + 560);
  v272 = *(v0 + 544);
  v334 = v98;
  if (v270)
  {
    v274 = *(v0 + 256);
    v273 = *(v0 + 264);
    v275 = swift_slowAlloc();
    v276 = swift_slowAlloc();
    *&v355 = v276;
    *v275 = 136446466;
    *(v275 + 4) = sub_2659D9320(v274, v273, &v355);
    *(v275 + 12) = 2050;
    *(v275 + 14) = v322[2];

    _os_log_impl(&dword_2659CA000, v268, v269, "…finished processing Enum Cases for AppIntent '%{public}s', retrieved %{public}ld items.", v275, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v276);
    MEMORY[0x266766110](v276, -1, -1);
    MEMORY[0x266766110](v275, -1, -1);
  }

  else
  {
  }

LABEL_107:
  v277 = *(v0 + 528);
  v278 = *(v0 + 520);
  v279 = *(v0 + 512);
  v281 = *(v0 + 256);
  v280 = *(v0 + 264);
  v282 = *(v0 + 248);

  *v282 = v281;
  v282[1] = v280;
  v282[2] = v279;
  v282[3] = v278;
  v282[4] = v322;
  v282[5] = v334;
  sub_265A10AA4(v277);

  v283 = *(v0 + 8);

  return v283();
}

uint64_t sub_265A1032C()
{
  v87 = v0;
  v86 = *MEMORY[0x277D85DE8];
  v1 = *(v0 + 504);
  swift_willThrow();

  v2 = *(v0 + 576);
  *(v0 + 232) = v2;
  v3 = v2;
  v4 = swift_dynamicCast();
  v5 = *(v0 + 280);
  if (v4)
  {
    v6 = *(v0 + 584) == 3;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {

    v40 = v5;
    v41 = sub_265A1EA80();
    v42 = sub_265A1EF20();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = *(v0 + 280);
      v45 = *(v0 + 256);
      v44 = *(v0 + 264);
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *&v81 = v47;
      *v46 = 136446466;
      v48 = [v43 identifier];
      v49 = sub_265A1EBA0();
      v51 = v50;

      v52 = sub_2659D9320(v49, v51, &v81);

      *(v46 + 4) = v52;
      *(v46 + 12) = 2082;
      *(v46 + 14) = sub_2659D9320(v45, v44, &v81);
      _os_log_impl(&dword_2659CA000, v41, v42, "No URLs returned for AppEnum (id: %{public}s), AppIntent: %{public}s", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266766110](v47, -1, -1);
      MEMORY[0x266766110](v46, -1, -1);
    }

    sub_265A10D30(*(v0 + 536), *(v0 + 256), *(v0 + 264), *(v0 + 512), *(v0 + 520), &v81);
    v78 = v82;
    v80 = v81;
    v53 = v83;
    v54 = v84;
    v55 = v85;
    Current = CFAbsoluteTimeGetCurrent();
    v35 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
    v58 = *(v35 + 2);
    v57 = *(v35 + 3);
    if (v58 >= v57 >> 1)
    {
      v35 = sub_2659E0698((v57 > 1), v58 + 1, 1, v35);
    }

    v59 = *(v0 + 560);

    *(v35 + 2) = v58 + 1;
    v60 = &v35[120 * v58];
    v60[32] = 2;
    *(v60 + 56) = v78;
    *(v60 + 40) = v80;
    *(v60 + 9) = v53;
    *(v60 + 10) = v54;
    v60[88] = v55;
    *(v60 + 6) = xmmword_265A22690;
    *(v60 + 7) = 0u;
    *(v60 + 8) = 0u;
    *(v60 + 18) = Current;
  }

  else
  {

    v7 = v5;
    v8 = v2;
    v9 = sub_265A1EA80();
    v10 = sub_265A1EF20();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 280);
      v72 = *(v0 + 256);
      v74 = *(v0 + 264);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v81 = v76;
      *v12 = 136446722;
      v14 = [v11 identifier];
      v15 = sub_265A1EBA0();
      v17 = v16;

      v18 = sub_2659D9320(v15, v17, &v81);

      *(v12 + 4) = v18;
      *(v12 + 12) = 2082;
      *(v12 + 14) = sub_2659D9320(v72, v74, &v81);
      *(v12 + 22) = 2114;
      v19 = v2;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 24) = v20;
      *v13 = v20;
      _os_log_impl(&dword_2659CA000, v9, v10, "Failed to fetch URLs for AppEnum (id: %{public}s), AppIntent: %{public}s, error: %{public}@", v12, 0x20u);
      sub_2659DA270(v13, &qword_28002B678, &unk_265A21AC0);
      MEMORY[0x266766110](v13, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x266766110](v76, -1, -1);
      MEMORY[0x266766110](v12, -1, -1);
    }

    v21 = *(v0 + 536);
    v22 = *(v0 + 520);
    v23 = *(v0 + 512);
    v25 = *(v0 + 256);
    v24 = *(v0 + 264);
    v26 = sub_265A1E680();
    sub_265A10D30(v21, v25, v24, v23, v22, &v81);
    v77 = v82;
    v79 = v81;
    v73 = v84;
    v75 = v83;
    v71 = v85;
    v27 = [v26 domain];
    v28 = sub_265A1EBA0();
    v69 = v29;
    v70 = v28;

    v30 = [v26 code];
    swift_getErrorValue();
    v31 = sub_265A1F380();
    v33 = v32;
    v34 = CFAbsoluteTimeGetCurrent();
    v35 = sub_2659E0698(0, 1, 1, MEMORY[0x277D84F90]);
    v37 = *(v35 + 2);
    v36 = *(v35 + 3);
    if (v37 >= v36 >> 1)
    {
      v35 = sub_2659E0698((v36 > 1), v37 + 1, 1, v35);
    }

    v38 = *(v0 + 560);

    *(v35 + 2) = v37 + 1;
    v39 = &v35[120 * v37];
    v39[32] = 2;
    *(v39 + 56) = v77;
    *(v39 + 40) = v79;
    *(v39 + 9) = v75;
    *(v39 + 10) = v73;
    v39[88] = v71;
    *(v39 + 12) = 3;
    *(v39 + 13) = v70;
    *(v39 + 14) = v69;
    *(v39 + 15) = v30;
    *(v39 + 16) = v31;
    *(v39 + 17) = v33;
    *(v39 + 18) = v34;
  }

  v61 = *(v0 + 528);
  v62 = *(v0 + 520);
  v63 = *(v0 + 512);
  v65 = *(v0 + 256);
  v64 = *(v0 + 264);
  v66 = *(v0 + 248);

  *v66 = v65;
  v66[1] = v64;
  v66[2] = v63;
  v66[3] = v62;
  v66[4] = MEMORY[0x277D84F90];
  v66[5] = v35;
  sub_265A10AA4(v61);

  v67 = *(v0 + 8);

  return v67();
}

uint64_t sub_265A10AA4(uint64_t a1)
{
  v1 = sub_265A1EA30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265A1E9F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v9 = sub_265A1EA20();
  __swift_project_value_buffer(v9, qword_28156B4E8);
  v10 = sub_265A1EA10();
  sub_265A1EA40();
  v11 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v12 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v12 = "";
    }

    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v10, v11, v14, "Search Items From AppEnum", v12, v13, 2u);
    MEMORY[0x266766110](v13, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_265A10D30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *(a1 + 16);
  v10 = *(a1 + 24);
  v8 = a1 + 16;
  v11 = *(v8 + 16);
  v12 = *(v8 + 24);
  v13 = (v8 + 32);
  v14 = *(v8 + 32);
  v15 = *(v8 + 40);
  v16 = v9;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = *(v8 + 48);
  v21 = v14;
  v22 = v15;
  v23 = *(v8 + 48);
  if (v20 == 255)
  {
    v23 = 1;
    v36 = *(v8 + 16);
    v18 = a4;
    v37 = v10;
    v38 = v9;
    swift_beginAccess();
    v33 = *(a1 + 24);
    v34 = *(a1 + 16);
    v31 = *(a1 + 40);
    v32 = *(a1 + 32);
    v29 = *(a1 + 56);
    v30 = *(a1 + 48);
    *(a1 + 16) = a2;
    *(a1 + 24) = a3;
    v19 = a5;
    *(a1 + 32) = v18;
    *(a1 + 40) = a5;
    *v13 = 0;
    v13[1] = 0;
    v28 = *(a1 + 64);
    *(a1 + 64) = 1;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    sub_2659E0A0C(v34, v33, v32, v31, v30, v29, v28);
    v11 = v36;
    v10 = v37;
    v9 = v38;
    v21 = 0;
    v22 = 0;
    v16 = a2;
    v17 = a3;
  }

  *a6 = v16;
  *(a6 + 8) = v17;
  *(a6 + 16) = v18;
  *(a6 + 24) = v19;
  *(a6 + 32) = v21;
  *(a6 + 40) = v22;
  *(a6 + 48) = v23;
  return sub_2659E0A20(v9, v10, v11, v12, v14, v15, v20);
}

void sub_265A10E8C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B720, &qword_265A226A8);
    sub_265A1ED90();
  }

  else
  {
    if (a2)
    {
      sub_265A1E770();
      sub_265A1EAD0();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B720, &qword_265A226A8);
    sub_265A1EDA0();
  }
}

uint64_t sub_265A10F58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v13 = *(a1 + 16);
  v14 = *(a1 + 24);
  v15 = a1 + 16;
  v16 = *(v15 + 16);
  v17 = *(v15 + 24);
  v19 = *(v15 + 32);
  v18 = *(v15 + 40);
  v20 = v13;
  v21 = v14;
  v22 = v16;
  v23 = v17;
  v24 = *(v15 + 48);
  v25 = v19;
  v26 = v18;
  v27 = *(v15 + 48);
  if (v24 == 255)
  {
    v46 = v14;
    v47 = v13;
    v44 = *(v15 + 24);
    v45 = *(v15 + 16);
    v43 = a3;
    v29 = a4;
    v40 = a4;
    v41 = a2;

    v30 = [a6 identifier];
    v25 = sub_265A1EBA0();
    v26 = v31;

    swift_beginAccess();
    v38 = *(a1 + 24);
    v39 = *(a1 + 16);
    v36 = *(a1 + 40);
    v37 = *(a1 + 32);
    v34 = *(a1 + 56);
    v35 = *(a1 + 48);
    *(a1 + 16) = v41;
    *(a1 + 24) = v43;
    *(a1 + 32) = v29;
    *(a1 + 40) = a5;
    *(a1 + 48) = v25;
    *(a1 + 56) = v26;
    v33 = *(a1 + 64);
    v27 = 2;
    *(a1 + 64) = 2;

    sub_2659E0A0C(v39, v38, v37, v36, v35, v34, v33);
    v17 = v44;
    v16 = v45;
    v14 = v46;
    v13 = v47;
    v20 = v41;
    v21 = v43;
    v22 = v40;
    v23 = a5;
  }

  *a7 = v20;
  *(a7 + 8) = v21;
  *(a7 + 16) = v22;
  *(a7 + 24) = v23;
  *(a7 + 32) = v25;
  *(a7 + 40) = v26;
  *(a7 + 48) = v27;
  return sub_2659E0A20(v13, v14, v16, v17, v19, v18, v24);
}

void sub_265A1110C(uint64_t a1@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (!v3)
  {
LABEL_7:
    *a1 = 0;
    *(a1 + 8) = 0;
    goto LABEL_8;
  }

  v4 = v3;
  v5 = v1;
  v6 = [v4 iconType];
  if (v6 != 1)
  {
    if (!v6)
    {
      v7 = [v4 identifier];
      v8 = sub_265A1EBA0();
      v10 = v9;

      *a1 = v8;
      *(a1 + 8) = v10;
      *(a1 + 16) = 256;
      return;
    }

    goto LABEL_7;
  }

  v11 = [v4 identifier];
  v12 = sub_265A1EBA0();
  v14 = v13;

  *a1 = v12;
  *(a1 + 8) = v14;
LABEL_8:
  *(a1 + 16) = 0;
}

unint64_t sub_265A11204()
{
  v2 = v0;
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = sub_265A1E9F0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v30 - v8;
  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v10 = sub_265A1EA20();
  __swift_project_value_buffer(v10, qword_28156B4E8);
  sub_265A1E9E0();
  v11 = sub_265A1EA10();
  v12 = sub_265A1EF50();
  if (sub_265A1EFA0())
  {
    v13 = swift_slowAlloc();
    v30[1] = v1;
    v14 = v13;
    *v13 = 0;
    v15 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v11, v12, v15, "OpenIntent Resolution", "", v14, 2u);
    v16 = v14;
    v2 = v0;
    MEMORY[0x266766110](v16, -1, -1);
  }

  (*(v4 + 16))(v7, v9, v3);
  sub_265A1EA60();
  swift_allocObject();
  v17 = sub_265A1EA50();
  (*(v4 + 8))(v9, v3);
  if (qword_28156A978 != -1)
  {
    swift_once();
  }

  v18 = sub_265A1EAA0();
  __swift_project_value_buffer(v18, qword_28156B518);
  v19 = sub_265A1EA80();
  v20 = sub_265A1EF30();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_2659CA000, v19, v20, "Retrieving all OpenIntents…", v21, 2u);
    MEMORY[0x266766110](v21, -1, -1);
  }

  v22 = [objc_opt_self() openEntitySystemProtocol];
  v23 = sub_265A11970(MEMORY[0x277D84F90]);
  sub_265A11A74();
  v24 = sub_265A1EAC0();

  v31[0] = 0;
  v25 = [v2 actionsConformingToSystemProtocol:v22 withParametersOfTypes:v24 bundleIdentifier:0 error:v31];

  v26 = v31[0];
  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B730, &qword_265A226B8);
    v23 = sub_265A1EAD0();
    v27 = v26;
  }

  else
  {
    v28 = v31[0];
    sub_265A1E690();

    swift_willThrow();
  }

  sub_265A11630(v17);

  return v23;
}

uint64_t sub_265A11630(uint64_t a1)
{
  v1 = sub_265A1EA30();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_265A1E9F0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28156A978 != -1)
  {
    swift_once();
  }

  v9 = sub_265A1EAA0();
  __swift_project_value_buffer(v9, qword_28156B518);
  v10 = sub_265A1EA80();
  v11 = sub_265A1EF30();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_2659CA000, v10, v11, "…completed retriving all OpenIntents.", v12, 2u);
    MEMORY[0x266766110](v12, -1, -1);
  }

  if (qword_28156A960 != -1)
  {
    swift_once();
  }

  v13 = sub_265A1EA20();
  __swift_project_value_buffer(v13, qword_28156B4E8);
  v14 = sub_265A1EA10();
  sub_265A1EA40();
  v15 = sub_265A1EF40();
  if (sub_265A1EFA0())
  {

    sub_265A1EA70();

    if ((*(v2 + 88))(v4, v1) == *MEMORY[0x277D85B00])
    {
      v16 = "[Error] Interval already ended";
    }

    else
    {
      (*(v2 + 8))(v4, v1);
      v16 = "";
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = sub_265A1E9D0();
    _os_signpost_emit_with_name_impl(&dword_2659CA000, v14, v15, v18, "OpenIntent Resolution", v16, v17, 2u);
    MEMORY[0x266766110](v17, -1, -1);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_265A11970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B738, &qword_265A226C0);
    v3 = sub_265A1F210();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_265A0C9AC(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_265A11A74()
{
  result = qword_28156A8F8;
  if (!qword_28156A8F8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28156A8F8);
  }

  return result;
}

void static CSUserQuery.prepareForSearch()()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B740, &qword_265A226C8);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_265A225E0;
  v2 = *MEMORY[0x277CCA190];
  v3 = *MEMORY[0x277CCA1A0];
  *(v1 + 32) = *MEMORY[0x277CCA190];
  *(v1 + 40) = v3;
  type metadata accessor for FileProtectionType(0);
  v4 = v2;
  v5 = v3;
  v6 = sub_265A1ECB0();

  [ObjCClassFromMetadata prepareProtectionClasses_];
}

id static CSUserQuery.searchQuery(with:in:disableSemanticSearch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_265A12CD0(a4);
  v5 = objc_allocWithZone(MEMORY[0x277CC3500]);
  v6 = sub_265A1EB70();
  v7 = [v5 initWithUserQueryString:v6 userQueryContext:v4];

  v8 = v7;
  v9 = sub_265A1ECB0();
  [v8 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B740, &qword_265A226C8);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_265A225E0;
  v11 = *MEMORY[0x277CCA190];
  v12 = *MEMORY[0x277CCA1A0];
  *(v10 + 32) = *MEMORY[0x277CCA190];
  *(v10 + 40) = v12;
  type metadata accessor for FileProtectionType(0);
  v13 = v11;
  v14 = v12;
  v15 = sub_265A1ECB0();

  [v8 setProtectionClasses_];

  return v8;
}

uint64_t static CSUserQuery.settingsSearchResult(for:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = type metadata accessor for SettingsSearchResultItem(0);
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B748, &qword_265A226D8);
  v4[9] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B750, &qword_265A226E0);
  v4[10] = v6;
  v4[11] = *(v6 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = sub_265A1EEF0();
  v4[14] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B758, &qword_265A226E8);
  v4[15] = v7;
  v4[16] = *(v7 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265A11EFC, 0, 0);
}

uint64_t sub_265A11EFC()
{
  v1 = v0[18];
  v2 = v0[15];
  v3 = v0[16];
  v19 = v0[17];
  v4 = sub_265A12CD0(1);
  v0[19] = v4;
  [v4 setMaxResultCount_];
  [v4 setMaxRankedResultCount_];
  v5 = [objc_allocWithZone(MEMORY[0x277CC3500]) initWithUserQueryString:0 userQueryContext:v4];
  v0[20] = v5;
  v6 = v5;
  v7 = sub_265A1ECB0();
  [v6 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B740, &qword_265A226C8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_265A225E0;
  v9 = *MEMORY[0x277CCA190];
  v10 = *MEMORY[0x277CCA1A0];
  *(v8 + 32) = *MEMORY[0x277CCA190];
  *(v8 + 40) = v10;
  type metadata accessor for FileProtectionType(0);
  v11 = v9;
  v12 = v10;
  v13 = sub_265A1ECB0();

  [v6 setProtectionClasses_];

  sub_265A1EF00();
  sub_265A12BB8();
  sub_265A1F300();
  (*(v3 + 16))(v19, v1, v2);
  sub_2659F3ABC(&qword_28002B768, &qword_28002B758, &qword_265A226E8, MEMORY[0x277D859D8]);
  sub_265A1EE10();
  v14 = sub_2659F3ABC(&qword_28002B770, &qword_28002B750, &qword_265A226E0, MEMORY[0x277D859D0]);
  v15 = swift_task_alloc();
  v0[21] = v15;
  *v15 = v0;
  v15[1] = sub_265A121C8;
  v16 = v0[9];
  v17 = v0[10];

  return MEMORY[0x282200308](v16, v17, v14);
}

uint64_t sub_265A121C8()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    (*(v2[11] + 8))(v2[12], v2[10]);
    v3 = sub_265A1257C;
  }

  else
  {
    v3 = sub_265A122F4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_265A122F4()
{
  v1 = v0[9];
  if ((*(v0[7] + 48))(v1, 1, v0[6]) == 1)
  {
    v2 = v0[18];
    v3 = v0[15];
    v4 = v0[16];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v4 + 8))(v2, v3);
    v5 = 1;
LABEL_9:
    v16 = v0[19];
    v15 = v0[20];
    (*(v0[7] + 56))(v0[2], v5, 1, v0[6]);

    v17 = v0[1];

    return v17();
  }

  v6 = v0[8];
  v8 = v0[3];
  v7 = v0[4];
  sub_265A12C10(v1, v6);
  v9 = *v6 == v8 && v6[1] == v7;
  if (v9 || (sub_265A1F340() & 1) != 0)
  {
    v10 = v0[18];
    v11 = v0[15];
    v12 = v0[16];
    v13 = v0[8];
    v14 = v0[2];
    (*(v0[11] + 8))(v0[12], v0[10]);
    (*(v12 + 8))(v10, v11);
    sub_265A12C10(v13, v14);
    v5 = 0;
    goto LABEL_9;
  }

  sub_265A12C74(v0[8]);
  v19 = sub_2659F3ABC(&qword_28002B770, &qword_28002B750, &qword_265A226E0, MEMORY[0x277D859D0]);
  v20 = swift_task_alloc();
  v0[21] = v20;
  *v20 = v0;
  v20[1] = sub_265A121C8;
  v21 = v0[9];
  v22 = v0[10];

  return MEMORY[0x282200308](v21, v22, v19);
}

uint64_t sub_265A1257C()
{
  v2 = v0[19];
  v1 = v0[20];
  (*(v0[16] + 8))(v0[18], v0[15]);

  v3 = v0[1];

  return v3();
}

uint64_t CSUserQuery.settingsSearchResults.getter()
{
  v0 = sub_265A1EEF0();
  MEMORY[0x28223BE20](v0);
  sub_265A1EF00();
  type metadata accessor for SettingsSearchResultItem(0);
  sub_265A12BB8();
  return sub_265A1F300();
}

uint64_t sub_265A12714(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_265A1EEE0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_265A1EEB0();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_265A12830, 0, 0);
}

uint64_t sub_265A12830()
{
  v15 = v0;
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  (*(v2 + 16))(v1, v0[3], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x277CC21D8])
  {
    v5 = v0[8];
    v4 = v0[9];
    v7 = v0[6];
    v6 = v0[7];
    v8 = v0[2];
    (*(v0[5] + 96))(v7, v0[4]);
    (*(v5 + 32))(v4, v7, v6);
    v9 = sub_265A1EEA0();
    v14 = v9;
    sub_265A14730(&v14, v8);

    (*(v5 + 8))(v4, v6);
  }

  else
  {
    v10 = v0[2];
    (*(v0[5] + 8))(v0[6], v0[4]);
    v11 = type metadata accessor for SettingsSearchResultItem(0);
    (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  }

  v12 = v0[1];

  return v12();
}

id sub_265A129D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_265A21A40;
  *(v1 + 32) = sub_265A1EBA0();
  *(v1 + 40) = v2;
  v3 = [objc_allocWithZone(MEMORY[0x277CC3508]) init];
  v4 = sub_265A1ECB0();

  [v3 setFetchAttributes_];

  [v3 setEnableRankedResults_];
  [v3 setDisableSemanticSearch_];
  v5 = [objc_allocWithZone(MEMORY[0x277CC3500]) initWithUserQueryString:0 userQueryContext:v3];
  v6 = sub_265A1ECB0();
  [v5 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B740, &qword_265A226C8);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_265A225E0;
  v8 = *MEMORY[0x277CCA190];
  v9 = *MEMORY[0x277CCA1A0];
  *(v7 + 32) = *MEMORY[0x277CCA190];
  *(v7 + 40) = v9;
  type metadata accessor for FileProtectionType(0);
  v10 = v8;
  v11 = v9;
  v12 = sub_265A1ECB0();

  [v5 setProtectionClasses_];

  return v5;
}

unint64_t sub_265A12BB8()
{
  result = qword_28002B760;
  if (!qword_28002B760)
  {
    sub_265A1EEF0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B760);
  }

  return result;
}

uint64_t sub_265A12C10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsSearchResultItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A12C74(uint64_t a1)
{
  v2 = type metadata accessor for SettingsSearchResultItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_265A12CD0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_265A22710;
  *(v2 + 32) = sub_265A1EBA0();
  *(v2 + 40) = v3;
  *(v2 + 48) = sub_265A1EBA0();
  *(v2 + 56) = v4;
  *(v2 + 64) = sub_265A1EBA0();
  *(v2 + 72) = v5;
  *(v2 + 80) = sub_265A1EBA0();
  *(v2 + 88) = v6;
  *(v2 + 96) = sub_265A1EBA0();
  *(v2 + 104) = v7;
  *(v2 + 112) = sub_265A1EBA0();
  *(v2 + 120) = v8;
  *(v2 + 128) = sub_265A1EBA0();
  *(v2 + 136) = v9;
  *(v2 + 144) = sub_265A1EBA0();
  *(v2 + 152) = v10;
  *(v2 + 160) = sub_265A1EBA0();
  *(v2 + 168) = v11;
  *(v2 + 176) = sub_265A1EBA0();
  *(v2 + 184) = v12;
  *(v2 + 192) = sub_265A1EBA0();
  *(v2 + 200) = v13;
  v14 = [objc_allocWithZone(MEMORY[0x277CC3508]) init];
  [v14 setMaxResultCount_];
  [v14 setMaxRankedResultCount_];
  v15 = v14;
  sub_265A1E7F0();
  v16 = sub_265A1ECB0();

  [v15 setPreferredLanguages_];

  v17 = sub_265A1ECB0();

  [v15 setFetchAttributes_];

  [v15 setEnableRankedResults_];
  [v15 setDisableSemanticSearch_];
  return v15;
}

uint64_t SettingsSearchResultItem.uniqueIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void SettingsSearchResultItem.uniqueIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t SettingsSearchResultItem.domainIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void SettingsSearchResultItem.domainIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SettingsSearchResultItem.icon.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  v4 = *(v1 + 49);
  *a1 = *(v1 + 32);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  *(a1 + 17) = v4;
}

void SettingsSearchResultItem.icon.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *(a1 + 17);

  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  *(v1 + 48) = v4;
  *(v1 + 49) = v5;
}

uint64_t SettingsSearchResultItem.localizedTitle.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

void SettingsSearchResultItem.localizedTitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
}

uint64_t SettingsSearchResultItem.localizedSubtitle.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void SettingsSearchResultItem.localizedSubtitle.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t SettingsSearchResultItem.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SettingsSearchResultItem(0) + 36);
  v4 = sub_265A1E770();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SettingsSearchResultItem(uint64_t a1)
{
  result = qword_28156AB50;
  if (!qword_28156AB50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SettingsSearchResultItem.url.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SettingsSearchResultItem(0) + 36);
  v4 = sub_265A1E770();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

unint64_t sub_265A13324()
{
  v1 = *v0;
  v2 = 1852793705;
  v3 = 0x657A696C61636F6CLL;
  v4 = 0xD000000000000011;
  if (v1 != 4)
  {
    v4 = 7107189;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  if (v1 == 1)
  {
    v2 = 0xD000000000000010;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_265A133EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_265A14500(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_265A1342C(uint64_t a1)
{
  v2 = sub_265A13F94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A13468(uint64_t a1)
{
  v2 = sub_265A13F94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265A134A4@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t SettingsSearchResultItem.hash(into:)(uint64_t a1)
{
  sub_265A1EBF0();
  sub_265A1EBF0();
  v2 = *(v1 + 49);
  sub_265A1EBF0();
  sub_265A1F3F0();
  MEMORY[0x2667659F0](v2);
  sub_265A1EBF0();
  if (*(v1 + 80))
  {
    sub_265A1F3F0();
    sub_265A1EBF0();
  }

  else
  {
    sub_265A1F3F0();
  }

  type metadata accessor for SettingsSearchResultItem(0);
  sub_265A1E770();
  sub_265A14148(&qword_28002B778, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  return sub_265A1EB40();
}

uint64_t SettingsSearchResultItem.hashValue.getter()
{
  sub_265A1F3D0();
  SettingsSearchResultItem.hash(into:)(v1);
  return sub_265A1F400();
}

uint64_t sub_265A13608()
{
  sub_265A1F3D0();
  SettingsSearchResultItem.hash(into:)(v1);
  return sub_265A1F400();
}

uint64_t sub_265A1364C(uint64_t a1)
{
  sub_265A1F3D0();
  SettingsSearchResultItem.hash(into:)(v2);
  return sub_265A1F400();
}

uint64_t SettingsSearchResultItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B780, &qword_265A22720);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A13F94();
  sub_265A1F420();
  LOBYTE(v14) = 0;
  sub_265A1F2D0();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_265A1F2D0();
    v9 = *(v3 + 40);
    v10 = *(v3 + 48);
    v11 = *(v3 + 49);
    v14 = *(v3 + 32);
    v15 = v9;
    v16 = v10;
    v17 = v11;
    v13[7] = 2;
    sub_265A13FE8();

    sub_265A1F2F0();

    LOBYTE(v14) = 3;
    sub_265A1F2D0();
    LOBYTE(v14) = 4;
    sub_265A1F2C0();
    type metadata accessor for SettingsSearchResultItem(0);
    LOBYTE(v14) = 5;
    sub_265A1E770();
    sub_265A14148(&qword_28002B798, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
    sub_265A1F2F0();
  }

  return (*(v6 + 8))(v8, v5);
}

void SettingsSearchResultItem.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = sub_265A1E770();
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B7A0, &qword_265A22728);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v26 - v7;
  v9 = type metadata accessor for SettingsSearchResultItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_265A13F94();
  v13 = v32;
  sub_265A1F410();
  if (v13)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
  }

  else
  {
    v27 = v5;
    v32 = v3;
    v14 = v30;
    LOBYTE(v34) = 0;
    v15 = v11;
    *v11 = sub_265A1F270();
    *(v11 + 1) = v16;
    LOBYTE(v34) = 1;
    *(v11 + 2) = sub_265A1F270();
    *(v11 + 3) = v17;
    v38 = 2;
    sub_265A1403C();
    sub_265A1F290();
    v18 = v35;
    v19 = v36;
    v20 = v37;
    *(v11 + 4) = v34;
    *(v11 + 5) = v18;
    v11[48] = v19;
    v11[49] = v20;
    LOBYTE(v34) = 3;
    *(v11 + 7) = sub_265A1F270();
    *(v11 + 8) = v21;
    LOBYTE(v34) = 4;
    v22 = sub_265A1F260();
    v26[1] = 0;
    *(v11 + 9) = v22;
    *(v11 + 10) = v23;
    LOBYTE(v34) = 5;
    sub_265A14148(&qword_28002B7B0, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
    v24 = v27;
    v25 = v32;
    sub_265A1F290();
    (*(v14 + 8))(v8, v31);
    (*(v28 + 32))(v15 + *(v9 + 36), v24, v25);
    sub_265A14090(v15, v29);
    __swift_destroy_boxed_opaque_existential_1(v33);
    sub_265A12C74(v15);
  }
}

uint64_t _s12SettingsHost0A16SearchResultItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_265A1F340() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (!v5 && (sub_265A1F340() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 48);
  v7 = *(a1 + 49);
  v8 = *(a2 + 48);
  v9 = *(a2 + 49);
  if (a1[4] == *(a2 + 32) && a1[5] == *(a2 + 40))
  {
    if (v6 != v8)
    {
      return 0;
    }
  }

  else if (sub_265A1F340() & 1) == 0 || ((v6 ^ v8))
  {
    return 0;
  }

  if (((v7 ^ v9) & 1) != 0 || (a1[7] != *(a2 + 56) || a1[8] != *(a2 + 64)) && (sub_265A1F340() & 1) == 0)
  {
    return 0;
  }

  v10 = a1[10];
  v11 = *(a2 + 80);
  if (v10)
  {
    if (!v11 || (a1[9] != *(a2 + 72) || v10 != v11) && (sub_265A1F340() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v11)
  {
    return 0;
  }

  v12 = *(type metadata accessor for SettingsSearchResultItem(0) + 36);

  return MEMORY[0x28211D040](a1 + v12, a2 + v12);
}

unint64_t sub_265A13F94()
{
  result = qword_28002B788;
  if (!qword_28002B788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B788);
  }

  return result;
}

unint64_t sub_265A13FE8()
{
  result = qword_28002B790;
  if (!qword_28002B790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B790);
  }

  return result;
}

unint64_t sub_265A1403C()
{
  result = qword_28002B7A8;
  if (!qword_28002B7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B7A8);
  }

  return result;
}

uint64_t sub_265A14090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SettingsSearchResultItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_265A14148(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_265A141B8(uint64_t a1)
{
  sub_265A14258();
  if (v1 <= 0x3F)
  {
    sub_265A1E770();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_265A14258()
{
  if (!qword_28156A920)
  {
    v0 = sub_265A1EFB0();
    if (!v1)
    {
      atomic_store(v0, &qword_28156A920);
    }
  }
}

uint64_t getEnumTagSinglePayload for SettingsSearchResultItem.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsSearchResultItem.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_265A143FC()
{
  result = qword_28002B7C0;
  if (!qword_28002B7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B7C0);
  }

  return result;
}

unint64_t sub_265A14454()
{
  result = qword_28002B7C8;
  if (!qword_28002B7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B7C8);
  }

  return result;
}

unint64_t sub_265A144AC()
{
  result = qword_28002B7D0;
  if (!qword_28002B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B7D0);
  }

  return result;
}

uint64_t sub_265A14500(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000265A240B0 == a2 || (sub_265A1F340() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000265A240D0 == a2 || (sub_265A1F340() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1852793705 && a2 == 0xE400000000000000 || (sub_265A1F340() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x657A696C61636F6CLL && a2 == 0xEE00656C74695464 || (sub_265A1F340() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000265A240F0 == a2 || (sub_265A1F340() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    return 5;
  }

  else
  {
    v5 = sub_265A1F340();

    if (v5)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_265A14730@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265A1E770();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v44 - v9;
  v11 = *a1;
  v12 = [*a1 attributeSet];
  v13 = [v12 title];

  if (!v13)
  {
    goto LABEL_9;
  }

  v53 = sub_265A1EBA0();
  v15 = v14;

  v16 = [v11 attributeSet];
  v17 = [v16 URL];

  if (!v17)
  {
LABEL_8:

LABEL_9:
    v26 = type metadata accessor for SettingsSearchResultItem(0);
    return (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
  }

  v52 = v15;
  sub_265A1E730();

  v18 = *(v5 + 32);
  v18(v10, v8, v4);
  v19 = [v11 domainIdentifier];
  if (!v19)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_8;
  }

  v20 = v19;
  v50 = sub_265A1EBA0();
  v51 = v21;

  v22 = [v11 attributeSet];
  v49 = sub_2659DCB00();

  v23 = [v11 attributeSet];
  v24 = [v23 thumbnailContentType];

  v48 = v24;
  if (!v24)
  {
    v28 = [v11 attributeSet];
    v25 = [v28 thumbnailBundleID];

    if (v25)
    {
      v47 = v18;
      goto LABEL_12;
    }

    (*(v5 + 8))(v10, v4);

    goto LABEL_8;
  }

  v47 = v18;
  v25 = v24;
LABEL_12:
  v45 = sub_265A1EBA0();
  v46 = v29;

  v30 = [v11 uniqueIdentifier];
  v31 = sub_265A1EBA0();
  v33 = v32;

  v34 = [v11 attributeSet];
  v35 = [v34 subtitle];

  if (v35)
  {
    v36 = sub_265A1EBA0();
    v38 = v37;
  }

  else
  {
    v36 = 0;
    v38 = 0;
  }

  v39 = v48 == 0;
  v40 = type metadata accessor for SettingsSearchResultItem(0);
  v47(a2 + *(v40 + 36), v10, v4);
  *a2 = v31;
  *(a2 + 8) = v33;
  v41 = v51;
  *(a2 + 16) = v50;
  *(a2 + 24) = v41;
  v42 = v46;
  *(a2 + 32) = v45;
  *(a2 + 40) = v42;
  *(a2 + 48) = v49 & 1;
  *(a2 + 49) = v39;
  v43 = v52;
  *(a2 + 56) = v53;
  *(a2 + 64) = v43;
  *(a2 + 72) = v36;
  *(a2 + 80) = v38;
  return (*(*(v40 - 8) + 56))(a2, 0, 1, v40);
}

uint64_t sub_265A14B84(uint64_t a1)
{
  v2 = sub_265A15114();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A14BC0(uint64_t a1)
{
  v2 = sub_265A15114();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_265A14C2C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000265A24140 == a2 || (sub_265A1F340() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000265A24160 == a2)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_265A1F340();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_265A14D20(uint64_t a1)
{
  v2 = sub_265A150C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A14D5C(uint64_t a1)
{
  v2 = sub_265A150C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_265A14D98(uint64_t a1)
{
  v2 = sub_265A15168();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A14DD4(uint64_t a1)
{
  v2 = sub_265A15168();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SettingsSearchItemIcon.IconType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B7D8, &qword_265A22980);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B7E0, &qword_265A22988);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B7E8, &qword_265A22990);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A150C0();
  sub_265A1F420();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_265A15114();
    v14 = v18;
    sub_265A1F2B0();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_265A15168();
    sub_265A1F2B0();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_265A150C0()
{
  result = qword_28002B7F0;
  if (!qword_28002B7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B7F0);
  }

  return result;
}

unint64_t sub_265A15114()
{
  result = qword_28002B7F8;
  if (!qword_28002B7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B7F8);
  }

  return result;
}

unint64_t sub_265A15168()
{
  result = qword_28002B800;
  if (!qword_28002B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B800);
  }

  return result;
}

uint64_t SettingsSearchItemIcon.IconType.hashValue.getter()
{
  v1 = *v0;
  sub_265A1F3D0();
  MEMORY[0x2667659F0](v1);
  return sub_265A1F400();
}

uint64_t SettingsSearchItemIcon.IconType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B808, &qword_265A22998);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B810, &qword_265A229A0);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B818, &qword_265A229A8);
  v29 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A150C0();
  v13 = v31;
  sub_265A1F410();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_265A1F2A0();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_265A1F100();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B820, &qword_265A229B0);
    *v21 = &type metadata for SettingsSearchItemIcon.IconType;
    sub_265A1F250();
    sub_265A1F0F0();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x277D84160], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_265A15114();
    sub_265A1F240();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_265A15168();
    sub_265A1F240();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t SettingsSearchItemIcon.iconIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

void SettingsSearchItemIcon.iconIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
}

uint64_t sub_265A157A4()
{
  v1 = 0x6465766C6F736572;
  if (*v0 != 1)
  {
    v1 = 0x657079546E6F6369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6564496E6F6369;
  }
}

uint64_t sub_265A15818@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_265A16670(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_265A1584C(uint64_t a1)
{
  v2 = sub_265A15DE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_265A15888(uint64_t a1)
{
  v2 = sub_265A15DE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t static SettingsSearchItemIcon.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_265A1F340();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t SettingsSearchItemIcon.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 17);
  sub_265A1EBF0();
  sub_265A1F3F0();
  return MEMORY[0x2667659F0](v2);
}

uint64_t SettingsSearchItemIcon.hashValue.getter()
{
  v1 = *(v0 + 17);
  sub_265A1F3D0();
  sub_265A1EBF0();
  sub_265A1F3F0();
  MEMORY[0x2667659F0](v1);
  return sub_265A1F400();
}

uint64_t sub_265A15A18()
{
  v1 = *(v0 + 17);
  sub_265A1F3D0();
  sub_265A1EBF0();
  sub_265A1F3F0();
  MEMORY[0x2667659F0](v1);
  return sub_265A1F400();
}

uint64_t sub_265A15A94(uint64_t a1)
{
  v2 = *(v1 + 17);
  sub_265A1EBF0();
  sub_265A1F3F0();
  return MEMORY[0x2667659F0](v2);
}

uint64_t sub_265A15AE0(uint64_t a1)
{
  v2 = *(v1 + 17);
  sub_265A1F3D0();
  sub_265A1EBF0();
  sub_265A1F3F0();
  MEMORY[0x2667659F0](v2);
  return sub_265A1F400();
}

uint64_t sub_265A15B58(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 ^ v5 ^ 1u;
  }

  v7 = sub_265A1F340();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 ^ v5 ^ 1u;
  }

  return result;
}

uint64_t SettingsSearchItemIcon.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B828, &qword_265A229B8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v12 = *(v1 + 16);
  HIDWORD(v10) = *(v1 + 17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A15DE0();
  sub_265A1F420();
  v16 = 0;
  v7 = v11;
  sub_265A1F2D0();
  if (!v7)
  {
    v9 = BYTE4(v10);
    v15 = 1;
    sub_265A1F2E0();
    v14 = v9;
    v13 = 2;
    sub_265A15E34();
    sub_265A1F2F0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_265A15DE0()
{
  result = qword_28002B830;
  if (!qword_28002B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B830);
  }

  return result;
}

unint64_t sub_265A15E34()
{
  result = qword_28002B838;
  if (!qword_28002B838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B838);
  }

  return result;
}

void SettingsSearchItemIcon.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B840, &qword_265A229C0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_265A15DE0();
  sub_265A1F410();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v20 = 0;
    v9 = sub_265A1F270();
    v11 = v10;
    v12 = v9;
    v19 = 1;
    v16 = sub_265A1F280();
    v17 = 2;
    sub_265A160D0();
    sub_265A1F290();
    v13 = v16 & 1;
    (*(v6 + 8))(v8, v5);
    v14 = v18;
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
    *(a2 + 17) = v14;

    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

unint64_t sub_265A160D0()
{
  result = qword_28002B848;
  if (!qword_28002B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B848);
  }

  return result;
}

unint64_t sub_265A16128()
{
  result = qword_28002B850;
  if (!qword_28002B850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B850);
  }

  return result;
}

unint64_t sub_265A16180()
{
  result = qword_28002B858;
  if (!qword_28002B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B858);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_265A16218(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265A16260(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_265A16304()
{
  result = qword_28002B860;
  if (!qword_28002B860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B860);
  }

  return result;
}

unint64_t sub_265A1635C()
{
  result = qword_28002B868;
  if (!qword_28002B868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B868);
  }

  return result;
}

unint64_t sub_265A163B4()
{
  result = qword_28002B870;
  if (!qword_28002B870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B870);
  }

  return result;
}

unint64_t sub_265A1640C()
{
  result = qword_28002B878;
  if (!qword_28002B878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B878);
  }

  return result;
}

unint64_t sub_265A16464()
{
  result = qword_28002B880;
  if (!qword_28002B880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B880);
  }

  return result;
}

unint64_t sub_265A164BC()
{
  result = qword_28002B888;
  if (!qword_28002B888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B888);
  }

  return result;
}

unint64_t sub_265A16514()
{
  result = qword_28002B890;
  if (!qword_28002B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B890);
  }

  return result;
}

unint64_t sub_265A1656C()
{
  result = qword_28002B898;
  if (!qword_28002B898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B898);
  }

  return result;
}

unint64_t sub_265A165C4()
{
  result = qword_28002B8A0;
  if (!qword_28002B8A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B8A0);
  }

  return result;
}

unint64_t sub_265A1661C()
{
  result = qword_28002B8A8;
  if (!qword_28002B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B8A8);
  }

  return result;
}

uint64_t sub_265A16670(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6564496E6F6369 && a2 == 0xEE00726569666974;
  if (v4 || (sub_265A1F340() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465766C6F736572 && a2 == 0xEF4C52556D6F7246 || (sub_265A1F340() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657079546E6F6369 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_265A1F340();

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

uint64_t sub_265A167A0@<X0>(uint64_t result@<X0>, unint64_t *a2@<X8>)
{
  v2 = 0xD000000000000012;
  v3 = "com.apple.Settings.AirplaneMode";
  switch(result)
  {
    case 1:
      v6 = "com.apple.Settings.MultitaskingAndGestures";
      goto LABEL_27;
    case 2:
    case 3:
      v7 = "com.apple.Settings.AppleAccount";
      goto LABEL_45;
    case 4:
      v9 = "com.apple.Settings.Family";
      goto LABEL_48;
    case 5:
      v4 = "com.apple.Settings.WiFi";
      goto LABEL_3;
    case 6:
      v5 = "com.apple.Settings.Ethernet";
      goto LABEL_35;
    case 7:
      v11 = "com.apple.Settings.Bluetooth";
      goto LABEL_50;
    case 8:
      v5 = "com.apple.Settings.Cellular";
      goto LABEL_35;
    case 9:
      v3 = "com.apple.Settings.VPN";
      v2 = 0xD000000000000022;
      break;
    case 10:
      v13 = "com.apple.Settings.VPN";
      goto LABEL_33;
    case 11:
      v11 = "com.apple.Settings.Classroom";
      goto LABEL_50;
    case 12:
      v12 = "com.apple.Settings.Notifications";
      goto LABEL_40;
    case 13:
      v9 = "com.apple.Settings.Sounds";
      goto LABEL_48;
    case 14:
      v3 = "com.apple.Settings.ScreenTime";
      v2 = 0xD000000000000018;
      break;
    case 15:
      v10 = "com.apple.Settings.ScreenTime";
      goto LABEL_25;
    case 16:
    case 68:
      v8 = "com.apple.Settings.General";
      goto LABEL_38;
    case 17:
      v12 = "com.apple.Settings.ControlCenter";
      goto LABEL_40;
    case 18:
      v7 = "com.apple.Settings.ActionButton";
      goto LABEL_45;
    case 19:
      v8 = "com.apple.Settings.StandBy";
      goto LABEL_38;
    case 20:
      v8 = "com.apple.Settings.Display";
      goto LABEL_38;
    case 21:
    case 22:
      v6 = "com.apple.Settings.HomeScreenAndAppLibrary";
LABEL_27:
      v3 = v6 - 32;
      v2 = 0xD00000000000002ALL;
      break;
    case 23:
      v12 = "com.apple.Settings.Accessibility";
LABEL_40:
      v3 = v12 - 32;
      v2 = 0xD000000000000020;
      break;
    case 24:
      v11 = "com.apple.Settings.Wallpaper";
      goto LABEL_50;
    case 25:
      v4 = "com.apple.Settings.Siri";
      goto LABEL_3;
    case 26:
      v9 = "com.apple.Settings.Pencil";
      goto LABEL_48;
    case 27:
    case 28:
    case 29:
      v5 = "com.apple.Settings.Passcode";
      goto LABEL_35;
    case 30:
      v13 = "com.apple.Settings.SOS";
LABEL_33:
      v3 = v13 - 32;
      v2 = 0xD000000000000016;
      break;
    case 31:
      v3 = "com.apple.Settings.Battery";
      v2 = 0xD000000000000028;
      break;
    case 32:
      v8 = "com.apple.Settings.Battery";
      goto LABEL_38;
    case 33:
    case 72:
      v3 = "com.apple.Settings.Apps";
      v2 = 0xD000000000000025;
      break;
    case 34:
    case 35:
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
    case 54:
    case 55:
    case 56:
    case 57:
    case 58:
    case 60:
    case 61:
    case 62:
    case 63:
    case 65:
    case 66:
      v4 = "com.apple.Settings.Apps";
LABEL_3:
      v3 = v4 - 32;
      v2 = 0xD000000000000017;
      break;
    case 36:
      v9 = "com.apple.Settings.Wallet";
      goto LABEL_48;
    case 59:
      v5 = "com.apple.Settings.ClassKit";
LABEL_35:
      v3 = v5 - 32;
      v2 = 0xD00000000000001BLL;
      break;
    case 64:
      v9 = "com.apple.Settings.Camera";
LABEL_48:
      v3 = v9 - 32;
      v2 = 0xD000000000000019;
      break;
    case 67:
      v10 = "com.apple.Settings.GameCenter";
LABEL_25:
      v3 = v10 - 32;
      v2 = 0xD00000000000001DLL;
      break;
    case 69:
      v11 = "com.apple.Settings.Developer";
LABEL_50:
      v3 = v11 - 32;
      v2 = 0xD00000000000001CLL;
      break;
    case 70:
      v8 = "com.apple.Settings.Carrier";
LABEL_38:
      v3 = v8 - 32;
      v2 = 0xD00000000000001ALL;
      break;
    case 71:
      v3 = "com.apple.Settings.StandBy";
      v2 = 0xD000000000000023;
      break;
    case 73:
      v7 = "com.apple.Settings.AirplaneMode";
LABEL_45:
      v3 = v7 - 32;
      v2 = 0xD00000000000001FLL;
      break;
    default:
      break;
  }

  *a2 = v2;
  a2[1] = v3 | 0x8000000000000000;
  return result;
}

unint64_t sub_265A16A28(char a1)
{
  result = 0;
  switch(a1)
  {
    case '""':
    case '*':
    case '.':
    case 'B':
      result = 0xD000000000000012;
      break;
    case '%':
    case '+':
      result = 0xD000000000000014;
      break;
    case '&':
      result = 0xD00000000000001BLL;
      break;
    case '\'':
    case ')':
    case '-':
    case '2':
    case '7':
      result = 0xD000000000000013;
      break;
    case '(':
    case ',':
      result = 0xD000000000000015;
      break;
    case '/':
      result = 0xD000000000000016;
      break;
    case '0':
    case '3':
    case ':':
    case '=':
    case '>':
      result = 0x6C7070612E6D6F63;
      break;
    case '1':
    case '8':
    case 'A':
      result = 0xD000000000000010;
      break;
    case '4':
      result = 0xD000000000000011;
      break;
    case '5':
      result = 0xD000000000000011;
      break;
    case '6':
      result = 0xD000000000000011;
      break;
    case '9':
      result = 0xD000000000000011;
      break;
    case '<':
      result = 0xD000000000000011;
      break;
    case '?':
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_265A16CB8(char a1)
{
  result = 1414483794;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000029;
      break;
    case 2:
      result = 0x454C54534143;
      break;
    case 3:
      result = 0x43415F454C505041;
      break;
    case 4:
      result = 0x796C696D6146;
      break;
    case 5:
      result = 1229343063;
      break;
    case 6:
      result = 0x54454E5245485445;
      break;
    case 7:
      result = 0x746F6F7465756C42;
      break;
    case 8:
      result = 0xD000000000000017;
      break;
    case 9:
    case 69:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 5132374;
      break;
    case 11:
      result = 0x4F4F525353414C43;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0x73646E756F53;
      break;
    case 14:
      result = 0x445F544F4E5F4F44;
      break;
    case 15:
      result = 0x545F4E4545524353;
      break;
    case 16:
      result = 0x6C6172656E6547;
      break;
    case 17:
      result = 0x436C6F72746E6F43;
      break;
    case 18:
      result = 0x425F4E4F49544341;
      break;
    case 19:
      result = 0x544E4549424D41;
      break;
    case 20:
      result = 0x59414C50534944;
      break;
    case 21:
      result = 0x5243535F454D4F48;
      break;
    case 22:
      result = 0xD000000000000010;
      break;
    case 23:
      result = 0x4249535345434341;
      break;
    case 24:
      result = 0x657061706C6C6157;
      break;
    case 25:
      result = 1230129491;
      break;
    case 26:
      result = 0x6C69636E6550;
      break;
    case 27:
      result = 0x45444F4353534150;
      break;
    case 28:
      result = 0xD000000000000010;
      break;
    case 29:
      result = 0x6C72616550;
      break;
    case 30:
      result = 0x434E454752454D45;
      break;
    case 31:
      result = 0xD000000000000015;
      break;
    case 32:
      result = 0x5F59524554544142;
      break;
    case 33:
      result = 0x79636176697250;
      break;
    case 34:
      result = 0x45524F5453;
      break;
    case 35:
      result = 0xD000000000000010;
      break;
    case 36:
      result = 0x4B4F4F4253534150;
      break;
    case 37:
      result = 1279869261;
      break;
    case 38:
      result = 0x53544341544E4F43;
      break;
    case 39:
      result = 0x5241444E454C4143;
      break;
    case 40:
      result = 0x5345544F4ELL;
      break;
    case 41:
      result = 0x5245444E494D4552;
      break;
    case 42:
      result = 0x4D524F4645455246;
      break;
    case 43:
      result = 0x454D5F4543494F56;
      break;
    case 44:
      result = 0x656E6F6850;
      break;
    case 45:
      result = 0x534547415353454DLL;
      break;
    case 46:
      result = 0x454D495445434146;
      break;
    case 47:
      result = 0x495241464153;
      break;
    case 48:
      result = 1398228302;
      break;
    case 49:
      result = 0x534B434F5453;
      break;
    case 50:
      result = 0x54414C534E415254;
      break;
    case 51:
      result = 1397768525;
      break;
    case 52:
      result = 0x52454854414557;
      break;
    case 53:
      result = 0x535341504D4F43;
      break;
    case 54:
      result = 0x4552555341454DLL;
      break;
    case 55:
      result = 0x54554354524F4853;
      break;
    case 56:
      result = 0x48544C414548;
      break;
    case 57:
      result = 0x5353454E544946;
      break;
    case 58:
      result = 0x54494B454D4F48;
      break;
    case 59:
      result = 0x54494B5353414C43;
      break;
    case 60:
      result = 0x4C414E52554F4ALL;
      break;
    case 61:
      result = 0x434953554DLL;
      break;
    case 62:
      result = 0x5050415654;
      break;
    case 63:
      result = 0x736F746F6850;
      break;
    case 64:
      result = 0x4152454D4143;
      break;
    case 65:
      result = 0x534B4F4F4249;
      break;
    case 66:
      result = 0x5354534143444F50;
      break;
    case 67:
      result = 0x544E4543454D4147;
      break;
    case 68:
      result = 0xD000000000000010;
      break;
    case 70:
      result = 0xD000000000000010;
      break;
    case 71:
    case 72:
      result = 0xD000000000000011;
      break;
    case 73:
      result = 0x454E414C50524941;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_265A173E0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_265A16CB8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_265A1740C(uint64_t a1, uint64_t a2)
{
  v2 = sub_265A1F350();

  if (v2 >= 0x4A)
  {
    return 74;
  }

  else
  {
    return v2;
  }
}

uint64_t SettingsNavigationHost.rawValue.getter()
{
  v1 = *v0;

  return v1;
}

void sub_265A17A58(uint64_t a1@<X8>)
{
  v3 = 0xD00000000000001CLL;
  v5 = *v1;
  v4 = v1[1];
  v6 = *v1 == 0xD00000000000001FLL && 0x8000000265A249B0 == v4;
  if (v6 || (sub_265A1F340() & 1) != 0)
  {
    v7 = "com.apple.graphic-icon.airplane-mode";
LABEL_7:
    v8 = (v7 - 32) | 0x8000000000000000;
    v3 = 0xD000000000000024;
LABEL_8:
    v9 = 1;
LABEL_9:
    *a1 = v3;
    *(a1 + 8) = v8;
    *(a1 + 16) = v9;
    return;
  }

  if (v5 == 0xD00000000000001FLL && 0x8000000265A24960 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v10 = "com.apple.graphic-icon.account";
LABEL_14:
    v8 = (v10 - 32) | 0x8000000000000000;
    v3 = 0xD00000000000001ELL;
    goto LABEL_8;
  }

  if (v5 == 0xD000000000000019 && 0x8000000265A24940 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24CF0;
    v3 = 0xD000000000000021;
    goto LABEL_8;
  }

  if (v5 == 0xD00000000000001CLL && 0x8000000265A248C0 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24CC0;
    v3 = 0xD000000000000020;
    goto LABEL_8;
  }

  if (v5 == 0xD000000000000022 && 0x8000000265A24870 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24C90;
    v3 = 0xD000000000000027;
    goto LABEL_8;
  }

  if (v5 == 0xD00000000000001BLL && 0x8000000265A248E0 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24C70;
    v3 = 0xD00000000000001FLL;
    goto LABEL_8;
  }

  if (v5 == 0xD00000000000001CLL && 0x8000000265A24830 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v7 = "com.apple.application-icon.classroom";
    goto LABEL_7;
  }

  if (v5 == 0xD00000000000001BLL && 0x8000000265A245C0 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24C10;
    v3 = 0xD000000000000023;
    goto LABEL_8;
  }

  if (v5 == 0xD00000000000001ALL && 0x8000000265A24560 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24BF0;
    v9 = 1;
    v3 = 0xD00000000000001BLL;
    goto LABEL_9;
  }

  if (v5 == 0xD000000000000020 && 0x8000000265A24800 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v7 = "com.apple.graphic-icon.notifications";
    goto LABEL_7;
  }

  if (v5 == 0xD000000000000018 && 0x8000000265A247C0 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24BA0;
    goto LABEL_8;
  }

  if (v5 == 0xD00000000000001DLL && 0x8000000265A24580 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24B80;
    v9 = 257;
    goto LABEL_9;
  }

  v8 = 0xEE00697269732E65;
  if (v5 == 0xD000000000000017 && 0x8000000265A246B0 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v9 = 257;
    v3 = 0x6C7070612E6D6F63;
    goto LABEL_9;
  }

  if (v5 == 0xD00000000000001ELL && 0x8000000265A24AA0 == v4 || (sub_265A1F340() & 1) != 0)
  {
    v8 = 0x8000000265A24B50;
    v3 = 0xD00000000000002ELL;
    goto LABEL_8;
  }

  if ((v5 != 0xD000000000000019 || 0x8000000265A245E0 != v4) && (sub_265A1F340() & 1) == 0 && (sub_265A1F340() & 1) == 0)
  {
    if ((v5 != 0xD000000000000025 || 0x8000000265A244A0 != v4) && (sub_265A1F340() & 1) == 0)
    {
      v3 = 0;
      v8 = 0;
      v9 = 0;
      goto LABEL_9;
    }

    v10 = "com.apple.graphic-icon.privacy";
    goto LABEL_14;
  }

  v11 = MobileGestalt_get_current_device();
  if (v11)
  {
    v12 = v11;
    deviceClassNumber = MobileGestalt_get_deviceClassNumber();

    if (deviceClassNumber == 1)
    {
      v8 = 0x8000000265A24B30;
      v3 = 0xD000000000000012;
    }

    else
    {
      v8 = 0x8000000265A24B10;
      v3 = 0xD000000000000016;
    }

    v9 = 257;
    goto LABEL_9;
  }

  __break(1u);
}

void *sub_265A18020@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

unint64_t sub_265A18030()
{
  result = qword_28002B8B0;
  if (!qword_28002B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28002B8B0);
  }

  return result;
}

uint64_t sub_265A18084()
{
  sub_265A1F3D0();
  sub_265A1EBF0();
  return sub_265A1F400();
}

uint64_t sub_265A180D8(uint64_t a1)
{
  sub_265A1F3D0();
  sub_265A1EBF0();
  return sub_265A1F400();
}

uint64_t sub_265A18120(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_265A1F340();
  }
}

uint64_t sub_265A18150(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_265A18198(uint64_t result, int a2, int a3)
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

uint64_t sub_265A181F8@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_265A1E770();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(a1);
  sub_265A1D860(&qword_28156B030, MEMORY[0x277CC9278]);
  if (sub_265A1EB60())
  {
    (*(v7 + 8))(v9, v6);
    v10 = 1;
  }

  else
  {
    (*(v7 + 32))(a3, v9, v6);
    v10 = 0;
  }

  return (*(v7 + 56))(a3, v10, 1, v6);
}

uint64_t sub_265A1837C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_265A1E770();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void sub_265A18400(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8D0, &qword_265A23070);
  v39 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  sub_265A1E750();
  if (!v16)
  {
    goto LABEL_18;
  }

  v38 = a2;
  v17 = sub_265A1EBC0();
  v19 = v18;

  if (v17 == 0x7366657270 && v19 == 0xE500000000000000 || (sub_265A1F340() & 1) != 0)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8D8, &qword_265A23078);
    sub_2659F3ABC(&qword_28156A980, &qword_28002B8D0, &qword_265A23070, MEMORY[0x277D85AC0]);
    sub_265A1E950();
    v42 = sub_265A1E6E0();
    v43 = v20;
    sub_265A1D764();
    sub_265A1D7B8();
    sub_265A1EE90();

    sub_265A1E760();

    (*(v39 + 8))(v15, v10);
    v21 = sub_265A1E770();
    v22 = *(v21 - 8);
    v23 = *(v22 + 48);
    if (v23(v9, 1, v21) == 1)
    {
      (*(v22 + 16))(v38, a1, v21);
      if (v23(v9, 1, v21) != 1)
      {
        sub_2659DA270(v9, &qword_28002B700, &qword_265A22658);
      }
    }

    else
    {
      (*(v22 + 32))(v38, v9, v21);
    }

    return;
  }

  if (v17 == 0x666572702D707061 && v19 == 0xE900000000000073)
  {

    a2 = v38;
  }

  else
  {
    v24 = sub_265A1F340();

    a2 = v38;
    if ((v24 & 1) == 0)
    {
LABEL_18:
      v27 = sub_265A1E770();
      v28 = *(*(v27 - 8) + 16);

      v28(a2, a1, v27);
      return;
    }
  }

  if (sub_265A1E6E0() == 0x666572702D707061 && v25 == 0xEA00000000003A73)
  {

    goto LABEL_18;
  }

  v26 = sub_265A1F340();

  if (v26)
  {
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8D8, &qword_265A23078);
  sub_2659F3ABC(&qword_28156A980, &qword_28002B8D0, &qword_265A23070, MEMORY[0x277D85AC0]);
  sub_265A1E950();
  v42 = sub_265A1E6E0();
  v43 = v29;
  sub_265A1D764();
  sub_265A1D7B8();
  sub_265A1EE90();

  v42 = 38;
  v43 = 0xE100000000000000;
  v40 = 63;
  v41 = 0xE100000000000000;
  sub_265A1D80C();
  sub_265A1EE80();
  v30 = sub_265A198E8(v44, v45);
  if (v31)
  {
    if (v30 == 63 && v31 == 0xE100000000000000)
    {

LABEL_26:
      sub_265A19968(v32);

      goto LABEL_27;
    }

    v33 = sub_265A1F340();

    if (v33)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  sub_265A1E760();
  (*(v39 + 8))(v13, v10);
  v34 = sub_265A1E770();
  v35 = *(v34 - 8);
  v36 = *(v35 + 48);
  if (v36(v7, 1, v34) == 1)
  {
    (*(v35 + 16))(v38, a1, v34);
    if (v36(v7, 1, v34) != 1)
    {
      sub_2659DA270(v7, &qword_28002B700, &qword_265A22658);
    }
  }

  else
  {
    (*(v35 + 32))(v38, v7, v34);
  }
}

uint64_t sub_265A18BDC@<X0>(void (*a1)(char *, uint64_t)@<X0>, uint64_t a3@<X8>)
{
  v103 = a1;
  v87 = a3;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8E8, &qword_265A23088);
  MEMORY[0x28223BE20](v3 - 8);
  v83 = &v76 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8F0, &qword_265A23090);
  v6 = *(v5 - 8);
  v105 = v5;
  v106 = v6;
  v7 = MEMORY[0x28223BE20](v5);
  v88 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v104 = &v76 - v10;
  MEMORY[0x28223BE20](v9);
  v102 = &v76 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8F8, &qword_265A23098);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v76 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v76 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v76 - v23;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8D0, &qword_265A23070);
  v86 = *(v93 - 8);
  v25 = MEMORY[0x28223BE20](v93);
  v85 = &v76 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v25);
  v101 = &v76 - v28;
  MEMORY[0x28223BE20](v27);
  v98 = &v76 - v29;
  v30 = sub_265A1E930();
  v107 = *(v30 - 8);
  v108 = v30;
  MEMORY[0x28223BE20](v30);
  v32 = &v76 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B900, &qword_265A230A0);
  v99 = *(v33 - 8);
  v100 = v33;
  v34 = MEMORY[0x28223BE20](v33);
  v36 = &v76 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v92 = &v76 - v37;
  sub_265A1E8D0();
  sub_265A1EBE0();
  sub_265A1E960();
  v38 = *(v13 + 8);
  v38(v16, v12);
  v82 = MEMORY[0x277D85AC0];
  v39 = sub_2659F3ABC(qword_28156A988, &qword_28002B8F8, &qword_265A23098, MEMORY[0x277D85AC0]);
  v80 = v22;
  MEMORY[0x266764EB0](v19, v12, v39);
  v38(v19, v12);
  v95 = v39;
  sub_265A1E8B0();
  v38(v22, v12);
  v96 = v38;
  v97 = v13 + 8;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8D8, &qword_265A23078);
  v41 = v98;
  v91 = v40;
  sub_265A1E920();
  v38(v24, v12);
  v42 = *(v107 + 8);
  v107 += 8;
  v103 = v42;
  v42(v32, v108);
  MEMORY[0x266764EF0](v41, v40);
  v81 = sub_2659F3ABC(&qword_28156B020, &qword_28002B900, &qword_265A230A0, MEMORY[0x277D85408]);
  v43 = v100;
  MEMORY[0x266764EB0](v36, v100, v81);
  v44 = *(v99 + 8);
  v99 += 8;
  v84 = v44;
  v44(v36, v43);
  v111 = 58;
  v112 = 0xE100000000000000;
  v45 = sub_265A1D80C();
  v46 = MEMORY[0x277D837D0];
  MEMORY[0x266764EB0](v113, &v111, MEMORY[0x277D837D0], v45);
  v78 = sub_265A1E940();
  v47 = *(v78 - 8);
  v77 = *(v47 + 56);
  v79 = v47 + 56;
  v48 = v83;
  v77(v83, 1, 1, v78);
  v49 = v32;
  sub_265A1E8D0();
  v109 = 47;
  v110 = 0xE100000000000000;
  MEMORY[0x266764EB0](&v111, &v109, v46, v45);
  v109 = v111;
  v110 = v112;
  v50 = v80;
  sub_265A1E8B0();

  v51 = MEMORY[0x277D83E40];
  v94 = v12;
  sub_265A1E900();
  v52 = v96;
  v96(v50, v12);
  v103(v49, v108);
  sub_2659DA270(v48, &qword_28002B8E8, &qword_265A23088);
  v53 = v104;
  MEMORY[0x266764ED0](v24, v51);
  v89 = sub_2659F3ABC(&qword_28156B028, &qword_28002B8F0, &qword_265A23090, MEMORY[0x277D853C0]);
  v54 = v53;
  v55 = v53;
  v56 = v105;
  MEMORY[0x266764EB0](v54, v105, v89);
  v57 = *(v106 + 8);
  v106 += 8;
  v90 = v57;
  v57(v55, v56);
  v77(v48, 1, 1, v78);
  sub_265A1E8D0();
  v109 = 63;
  v110 = 0xE100000000000000;
  v76 = v45;
  MEMORY[0x266764EB0](&v111, &v109, MEMORY[0x277D837D0], v45);
  v109 = v111;
  v110 = v112;
  sub_265A1E8B0();

  v58 = v94;
  sub_265A1E900();
  v52(v50, v58);
  v103(v49, v108);
  sub_2659DA270(v48, &qword_28002B8E8, &qword_265A23088);
  v59 = v88;
  MEMORY[0x266764ED0](v24, MEMORY[0x277D83E40]);
  v60 = v105;
  MEMORY[0x266764EB0](v59, v105, v89);
  v90(v59, v60);
  sub_265A1E8B0();
  v61 = v113[0];
  v62 = v113[1];
  sub_265A1E8D0();
  v111 = v61;
  v112 = v62;
  v63 = v49;
  sub_265A1E910();

  v88 = sub_2659F3ABC(&qword_28156A980, &qword_28002B8D0, &qword_265A23070, v82);
  v64 = v94;
  sub_265A1E8F0();
  v65 = v96;
  v96(v24, v64);
  v66 = v108;
  v103(v63, v108);
  sub_265A1E8D0();
  v67 = v24;
  sub_265A1E910();
  v68 = v85;
  v69 = v94;
  sub_265A1E8F0();
  v65(v24, v69);
  v70 = v103;
  v103(v63, v66);
  sub_265A1E8D0();
  v71 = v105;
  sub_265A1E910();
  v72 = v93;
  sub_265A1E8F0();
  v96(v67, v69);
  v70(v63, v108);
  v73 = *(v86 + 8);
  v73(v68, v72);
  v73(v101, v72);
  v73(v98, v72);
  v74 = v90;
  v90(v104, v71);
  v74(v102, v71);
  return v84(v92, v100);
}

void sub_265A19824(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8E0, &qword_265A23080);
  sub_265A1E970();

  v6 = sub_265A1EFC0();
  v8 = v7;

  MEMORY[0x266765220](a1, a2);

  *a3 = v6;
  a3[1] = v8;
}

uint64_t sub_265A198E8(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v2)
  {
    return 0;
  }

  sub_265A1EC00();
  return sub_265A1EC60();
}

uint64_t sub_265A19968(uint64_t a1)
{
  v2 = v1[1];
  if ((v2 & 0x2000000000000000) == 0)
  {
    if ((*v1 & 0xFFFFFFFFFFFFLL) != 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  if ((v2 & 0xF00000000000000) == 0)
  {
    __break(1u);
    return MEMORY[0x2821FBE70](a1);
  }

LABEL_5:
  a1 = sub_265A1EC00();

  return MEMORY[0x2821FBE70](a1);
}

uint64_t sub_265A199E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  sub_265A1E750();
  if (v7)
  {
    v8 = sub_265A1EBC0();
    v10 = v9;

    if (v8 == 0x72702D7366657270 && v10 == 0xEE00796464756265)
    {

      goto LABEL_6;
    }

    v11 = sub_265A1F340();

    if (v11)
    {
LABEL_6:
      sub_265A1E760();
      v12 = sub_265A1E770();
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      if (v14(v6, 1, v12) != 1)
      {
        return (*(v13 + 32))(a2, v6, v12);
      }

      (*(v13 + 16))(a2, a1, v12);
      result = (v14)(v6, 1, v12);
      if (result != 1)
      {
        return sub_2659DA270(v6, &qword_28002B700, &qword_265A22658);
      }

      return result;
    }
  }

  v16 = sub_265A1E770();
  v17 = *(*(v16 - 8) + 16);

  return v17(a2, a1, v16);
}

uint64_t sub_265A19C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  sub_265A1E750();
  if (v7)
  {
    v8 = sub_265A1EBC0();
    v10 = v9;

    if (v8 == 0xD000000000000010 && 0x8000000265A24F20 == v10)
    {

      goto LABEL_6;
    }

    v11 = sub_265A1F340();

    if (v11)
    {
LABEL_6:
      sub_265A1E760();
      v12 = sub_265A1E770();
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      if (v14(v6, 1, v12) != 1)
      {
        return (*(v13 + 32))(a2, v6, v12);
      }

      (*(v13 + 16))(a2, a1, v12);
      result = (v14)(v6, 1, v12);
      if (result != 1)
      {
        return sub_2659DA270(v6, &qword_28002B700, &qword_265A22658);
      }

      return result;
    }
  }

  v16 = sub_265A1E770();
  v17 = *(*(v16 - 8) + 16);

  return v17(a2, a1, v16);
}

uint64_t sub_265A19ED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  sub_265A1E750();
  if (v7)
  {
    v8 = sub_265A1EBC0();
    v10 = v9;

    if (v8 == 0xD000000000000014 && 0x8000000265A24E10 == v10)
    {

      goto LABEL_6;
    }

    v11 = sub_265A1F340();

    if (v11)
    {
LABEL_6:
      sub_265A1E760();
      v12 = sub_265A1E770();
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      if (v14(v6, 1, v12) != 1)
      {
        return (*(v13 + 32))(a2, v6, v12);
      }

      (*(v13 + 16))(a2, a1, v12);
      result = (v14)(v6, 1, v12);
      if (result != 1)
      {
        return sub_2659DA270(v6, &qword_28002B700, &qword_265A22658);
      }

      return result;
    }
  }

  v16 = sub_265A1E770();
  v17 = *(*(v16 - 8) + 16);

  return v17(a2, a1, v16);
}

uint64_t sub_265A1A144@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  sub_265A1E750();
  if (v7)
  {
    v8 = sub_265A1EBC0();
    v10 = v9;

    if (v8 == 0x2D617465622D736FLL && v10 == 0xEF73657461647075)
    {

      goto LABEL_6;
    }

    v11 = sub_265A1F340();

    if (v11)
    {
LABEL_6:
      sub_265A1E760();
      v12 = sub_265A1E770();
      v13 = *(v12 - 8);
      v14 = *(v13 + 48);
      if (v14(v6, 1, v12) != 1)
      {
        return (*(v13 + 32))(a2, v6, v12);
      }

      (*(v13 + 16))(a2, a1, v12);
      result = (v14)(v6, 1, v12);
      if (result != 1)
      {
        return sub_2659DA270(v6, &qword_28002B700, &qword_265A22658);
      }

      return result;
    }
  }

  v16 = sub_265A1E770();
  v17 = *(*(v16 - 8) + 16);

  return v17(a2, a1, v16);
}

void sub_265A1A3C0(uint64_t a1@<X0>, void (**a2)(char *, uint64_t, __n128)@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  MEMORY[0x28223BE20](v4 - 8);
  v70 = &v65 - v5;
  v6 = sub_265A1E5A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v65 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B910, &qword_265A230B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v65 - v13;
  v15 = sub_265A1E670();
  v76 = *(v15 - 8);
  v77 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v73 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v72 = &v65 - v18;
  v19 = sub_265A1E770();
  v78 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v21 = &v65 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265A18400(a1, v21);
  sub_265A1E750();
  if (!v22)
  {
    goto LABEL_7;
  }

  v74 = v19;
  v75 = a2;
  v71 = a1;
  v23 = sub_265A1EBC0();
  v25 = v24;

  if (v23 == 0x666572702D707061 && v25 == 0xE900000000000073)
  {

    v19 = v74;
    a2 = v75;
    a1 = v71;
  }

  else
  {
    v27 = sub_265A1F340();

    v19 = v74;
    a2 = v75;
    a1 = v71;
    if ((v27 & 1) == 0)
    {
LABEL_7:
      v28 = v78;
      (*(v78 + 8))(v21, v19);
LABEL_22:
      (*(v28 + 16))(a2, a1, v19);
      return;
    }
  }

  sub_265A1E5D0();
  v30 = v76;
  v29 = v77;
  if ((*(v76 + 48))(v14, 1, v77) == 1)
  {
    v28 = v78;
    (*(v78 + 8))(v21, v19);
    sub_2659DA270(v14, &qword_28002B910, &qword_265A230B0);
    goto LABEL_22;
  }

  v31 = v72;
  (*(v30 + 32))(v72, v14, v29);
  v32 = sub_265A1E5F0();
  if (!v33)
  {
    (*(v30 + 8))(v31, v29);
    v28 = v78;
    (*(v78 + 8))(v21, v19);
    a2 = v75;
    goto LABEL_22;
  }

  v65 = v32;
  v66 = v33;
  v34 = v31;
  v35 = sub_265A1E5B0();
  v36 = v35;
  if (v35)
  {
    v67 = *(v35 + 16);
    if (v67)
    {
      v37 = 0;
      a1 = 0x746567726174;
      v68 = v7 + 16;
      v38 = (v7 + 8);
      while (1)
      {
        v39 = *(v36 + 16);
        if (v37 >= v39)
        {
          break;
        }

        (*(v7 + 2))(v10, v36 + ((v7[80] + 32) & ~v7[80]) + *(v7 + 9) * v37, v6);
        v40 = sub_265A1E580();
        v34 = v41;
        if (v40 == a1 && v41 == 0xE600000000000000)
        {

LABEL_25:

          v45 = v69;
          (*(v7 + 4))(v69, v10, v6);
          v36 = sub_265A1E590();
          v44 = v46;
          (*(v7 + 1))(v45, v6);
          goto LABEL_26;
        }

        v42 = a1;
        v43 = sub_265A1F340();

        if (v43)
        {
          goto LABEL_25;
        }

        ++v37;
        (*v38)(v10, v6);
        a1 = v42;
        if (v67 == v37)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_53;
    }

LABEL_20:

    v36 = 0;
    v44 = 0;
LABEL_26:
    v19 = v74;
    v38 = v75;
    a1 = v71;
  }

  else
  {
    v44 = 0;
    v38 = v75;
  }

  sub_265A1E660();
  sub_265A1E630();
  v6 = v78;
  if (!v44)
  {
    v47 = HIBYTE(v66) & 0xF;
    if ((v66 & 0x2000000000000000) == 0)
    {
      v47 = v65 & 0xFFFFFFFFFFFFLL;
    }

    if (v47)
    {
      MEMORY[0x266764C10](0xD000000000000017, 0x8000000265A24480);
      v7 = sub_2659E0AC0(0, 1, 1, MEMORY[0x277D84F90]);
      v36 = *(v7 + 2);
      v48 = *(v7 + 3);
      v34 = v36 + 1;
      if (v36 >= v48 >> 1)
      {
        v7 = sub_2659E0AC0((v48 > 1), v36 + 1, 1, v7);
      }

      goto LABEL_38;
    }

    goto LABEL_51;
  }

  if ((v36 != 0xD000000000000020 || 0x8000000265A24EF0 != v44) && (sub_265A1F340() & 1) == 0)
  {
    if (v36 == 0xD000000000000027 && 0x8000000265A24E90 == v44)
    {

LABEL_48:
      MEMORY[0x266764C10](0xD000000000000017, 0x8000000265A24480);
      v7 = sub_2659E0AC0(0, 1, 1, MEMORY[0x277D84F90]);
      v36 = *(v7 + 2);
      v62 = *(v7 + 3);
      v34 = v36 + 1;
      if (v36 >= v62 >> 1)
      {
        v7 = sub_2659E0AC0((v62 > 1), v36 + 1, 1, v7);
      }

      v49 = 0x8000000265A24EC0;
      v50 = 0xD000000000000023;
      goto LABEL_39;
    }

    v61 = sub_265A1F340();

    if (v61)
    {
      goto LABEL_48;
    }

LABEL_51:

    v63 = v77;
    v64 = *(v76 + 8);
    v64(v73, v77);
    v64(v72, v63);
    (*(v6 + 8))(v21, v19);
    (*(v6 + 16))(v38, a1, v19);
    return;
  }

  MEMORY[0x266764C10](0xD000000000000020, 0x8000000265A24800);
  v7 = sub_2659E0AC0(0, 1, 1, MEMORY[0x277D84F90]);
  v36 = *(v7 + 2);
  v39 = *(v7 + 3);
  v34 = v36 + 1;
  if (v36 >= v39 >> 1)
  {
LABEL_53:
    v7 = sub_2659E0AC0((v39 > 1), v34, 1, v7);
  }

LABEL_38:
  v50 = v65;
  v49 = v66;
LABEL_39:
  *(v7 + 2) = v34;
  v51 = &v7[16 * v36];
  *(v51 + 4) = v50;
  *(v51 + 5) = v49;
  v79 = v7;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B3E8, &unk_265A21020);
  sub_2659F3ABC(&qword_28156A910, qword_28002B3E8, &unk_265A21020, MEMORY[0x277D83958]);
  v52 = sub_265A1EB50();
  v54 = v53;

  v79 = 47;
  v80 = 0xE100000000000000;
  MEMORY[0x266765220](v52, v54);

  v55 = v73;
  MEMORY[0x266764C20](v79, v80);
  v56 = v70;
  sub_265A1E5E0();
  v57 = v77;
  v58 = *(v76 + 8);
  v58(v55, v77);
  v58(v72, v57);
  v59 = v74;
  (*(v6 + 8))(v21, v74);
  v60 = *(v6 + 48);
  if (v60(v56, 1, v59) == 1)
  {
    (*(v6 + 16))(v38, a1, v59);
    if (v60(v56, 1, v59) != 1)
    {
      sub_2659DA270(v56, &qword_28002B700, &qword_265A22658);
    }
  }

  else
  {
    (*(v6 + 32))(v38, v56, v59);
  }
}

uint64_t sub_265A1AE20@<X0>(uint64_t a1@<X0>, unint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B700, &qword_265A22658);
  MEMORY[0x28223BE20](v4 - 8);
  v203 = &v189 - v5;
  v6 = sub_265A1E5A0();
  v205 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v201 = &v189 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v200 = &v189 - v10;
  v11 = MEMORY[0x28223BE20](v9);
  v208 = &v189 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v204 = (&v189 - v14);
  v15 = MEMORY[0x28223BE20](v13);
  v207 = &v189 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v199 = &v189 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v21 = &v189 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v189 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B910, &qword_265A230B0);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v189 - v25;
  v27 = sub_265A1E670();
  v28 = *(v27 - 8);
  v211 = v27;
  v212 = v28;
  v29 = MEMORY[0x28223BE20](v27);
  v31 = &v189 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v209 = &v189 - v32;
  v33 = sub_265A1E770();
  v216 = *(v33 - 8);
  v34 = MEMORY[0x28223BE20](v33);
  v206 = &v189 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v202 = &v189 - v37;
  MEMORY[0x28223BE20](v36);
  v39 = &v189 - v38;
  sub_265A18400(a1, &v189 - v38);
  v218 = v39;
  v40 = sub_265A1E750();
  if (!v41)
  {
    goto LABEL_8;
  }

  if (v40 != 0x7366657270 || v41 != 0xE500000000000000)
  {
    v42 = sub_265A1F340();

    if (v42)
    {
      goto LABEL_6;
    }

LABEL_8:
    v46 = v216;
    (v216[1])(v218, v33);
    return (v46[2])(a2, a1, v33);
  }

LABEL_6:
  v196 = v31;
  v43 = v218;
  sub_265A1E5D0();
  v44 = v211;
  v45 = v212;
  if ((*(v212 + 48))(v26, 1, v211) == 1)
  {
    v46 = v216;
    (v216[1])(v43, v33);
    sub_2659DA270(v26, &qword_28002B910, &qword_265A230B0);
    return (v46[2])(a2, a1, v33);
  }

  v198 = v33;
  v197 = a1;
  v195 = a2;
  (*(v45 + 32))(v209, v26, v44);
  v48 = sub_265A1E5B0();
  if (v48)
  {
    v49 = v48;
  }

  else
  {
    v49 = MEMORY[0x277D84F90];
  }

  v50 = *(v49 + 16);

  if (!v50)
  {
    goto LABEL_27;
  }

  v51 = 0;
  v52 = v205;
  v214 = (v205 + 2);
  v217 = (v205 + 1);
  while (1)
  {
    if (v51 >= *(v49 + 16))
    {
      __break(1u);
      goto LABEL_82;
    }

    v210 = (*(v52 + 80) + 32) & ~*(v52 + 80);
    v215 = v52[9];
    v213 = v52[2];
    v213(v21, (v49 + v210 + v215 * v51), v6);
    if (sub_265A1E580() == 1953460082 && v53 == 0xE400000000000000)
    {
      break;
    }

    v54 = sub_265A1F340();

    if (v54)
    {
      goto LABEL_22;
    }

    ++v51;
    (*v217)(v21, v6);
    if (v50 == v51)
    {
      goto LABEL_27;
    }
  }

LABEL_22:

  v56 = v52[4];
  v52 += 4;
  v55 = v56;
  v56(v23, v21, v6);
  v57 = sub_265A1E590();
  v59 = v58;
  v194 = *(v52 - 3);
  v194(v23, v6);
  if (!v59)
  {
LABEL_28:

    v70 = v216;
    if (qword_28002B008 != -1)
    {
      swift_once();
    }

    v71 = sub_265A1EAA0();
    __swift_project_value_buffer(v71, qword_28002E8A0);
    v72 = v70[2];
    v73 = v206;
    v74 = v197;
    v75 = v198;
    v72(v206, v197, v198);
    v76 = sub_265A1EA80();
    v77 = sub_265A1EF20();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v217 = v72;
      v79 = v78;
      v80 = swift_slowAlloc();
      v223 = v80;
      *v79 = 141558275;
      *(v79 + 4) = 1752392040;
      *(v79 + 12) = 2081;
      sub_265A1D860(&qword_28002B918, MEMORY[0x277CC9290]);
      v81 = sub_265A1F310();
      v83 = v82;
      v84 = v70[1];
      v84(v73, v198);
      v85 = sub_2659D9320(v81, v83, &v223);

      *(v79 + 14) = v85;
      _os_log_impl(&dword_2659CA000, v76, v77, "Failed to resolve specifier identifier to transform URL %{private,mask.hash}s into a settings-navigation URL.", v79, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v80);
      MEMORY[0x266766110](v80, -1, -1);
      v86 = v79;
      v87 = v217;
      MEMORY[0x266766110](v86, -1, -1);

      (*(v212 + 8))(v209, v211);
      v84(v218, v198);
      return (v87)(v195, v197, v198);
    }

    else
    {

      v88 = v70[1];
      v88(v73, v75);
      (*(v212 + 8))(v209, v211);
      v88(v218, v75);
      return (v72)(v195, v74, v75);
    }
  }

  v62 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v62 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v62 || (v63 = sub_265A1C808(v57, v59, v60, v61), v65 = v64, , v66 = sub_265A1740C(v63, v65), v69 = v66, v66 == 74))
  {
LABEL_27:

    goto LABEL_28;
  }

  v89 = v66;
  v189 = v55;
  v206 = v49;
  sub_265A1C808(v57, v59, v67, v68);
  v191 = v90;
  v190 = v91;
  v93 = v92;

  sub_265A167A0(v89, &v223);
  v94 = v223;
  v95 = v224;
  sub_265A1E660();
  sub_265A1E630();
  MEMORY[0x266764C10](v94, v95);
  if (v69 > 67)
  {
    v21 = v194;
    if (v69 == 72)
    {
      v96 = &unk_28774DAA8;
      goto LABEL_43;
    }

    if (v69 == 68)
    {
      v96 = &unk_28774DA78;
      goto LABEL_43;
    }

LABEL_40:
    v96 = MEMORY[0x277D84F90];
    goto LABEL_43;
  }

  v21 = v194;
  if (v69 == 2)
  {
    v96 = &unk_28774DA48;
    goto LABEL_43;
  }

  if (v69 != 35)
  {
    goto LABEL_40;
  }

  v96 = &unk_28774DAD8;
LABEL_43:
  v223 = &unk_28774E218;
  sub_2659DE8A4(v96);
  v23 = v223;
  sub_265A167A0(v89, &v223);
  v192 = v93;
  if (v223 == 0xD000000000000017 && 0x8000000265A24480 == v224)
  {

    goto LABEL_47;
  }

  v97 = sub_265A1F340();

  if (v97)
  {
LABEL_47:
    v98 = sub_265A16A28(v89);
    if (v99)
    {
      v100 = v98;
      v101 = v99;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v23 = sub_2659E0AC0(0, *(v23 + 2) + 1, 1, v23);
      }

      v103 = *(v23 + 2);
      v102 = *(v23 + 3);
      v104 = v23;
      if (v103 >= v102 >> 1)
      {
        v104 = sub_2659E0AC0((v102 > 1), v103 + 1, 1, v23);
      }

      *(v104 + 2) = v103 + 1;
      v23 = v104;
      v105 = &v104[16 * v103];
      *(v105 + 4) = v100;
      *(v105 + 5) = v101;
    }
  }

  v106 = *(v206 + 16);
  if (!v106)
  {
    v52 = v204;
    goto LABEL_88;
  }

  v193 = v23;
  LODWORD(v23) = v89;
  v107 = 0;
  v49 = v206 + v210;
  while (1)
  {
    if (v107 >= *(v206 + 16))
    {
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
LABEL_174:
      swift_once();
LABEL_163:
      v167 = sub_265A1EAA0();
      __swift_project_value_buffer(v167, qword_28002E8A0);
      v168 = v52;
      v169 = v52[2];
      v170 = v198;
      (v169)(v21, v197, v198);
      v171 = sub_265A1EA80();
      v172 = sub_265A1EF20();
      if (os_log_type_enabled(v171, v172))
      {
        v173 = swift_slowAlloc();
        v216 = swift_slowAlloc();
        v223 = v216;
        *v173 = 141558275;
        *(v173 + 4) = 1752392040;
        *(v173 + 12) = 2081;
        sub_265A1D860(&qword_28002B918, MEMORY[0x277CC9290]);
        v174 = sub_265A1F310();
        v217 = v169;
        v176 = v175;
        v177 = v168[1];
        (v177)(v21, v170);
        v178 = sub_2659D9320(v174, v176, &v223);
        v169 = v217;

        *(v173 + 14) = v178;
        _os_log_impl(&dword_2659CA000, v171, v172, "Failed to transform URL %{private,mask.hash}s into a settings-navigation URL.", v173, 0x16u);
        v179 = v216;
        __swift_destroy_boxed_opaque_existential_1(v216);
        MEMORY[0x266766110](v179, -1, -1);
        MEMORY[0x266766110](v173, -1, -1);

        v180 = v211;
        v181 = *(v212 + 8);
        v181(v196, v211);
        v181(v209, v180);
        (v177)(v218, v170);
      }

      else
      {

        v185 = v168[1];
        (v185)(v21, v170);
        v186 = *(v212 + 8);
        v187 = v49;
        v188 = v211;
        v186(v187, v211);
        v186(v209, v188);
        (v185)(v218, v170);
      }

      return (v169)(v195, v197, v170);
    }

    v213(v207, v49, v6);
    if (sub_265A1E580() == 1752457584 && v108 == 0xE400000000000000)
    {
      break;
    }

    v109 = sub_265A1F340();

    if (v109)
    {
      goto LABEL_63;
    }

    ++v107;
    (v21)(v207, v6);
    v49 += v215;
    if (v106 == v107)
    {
      LODWORD(v89) = v23;
      goto LABEL_71;
    }
  }

LABEL_63:
  v110 = v199;
  v189(v199, v207, v6);
  v49 = sub_265A1E590();
  v51 = v111;
  (v21)(v110, v6);
  if (!v51)
  {
    LODWORD(v89) = v23;
LABEL_71:
    v52 = v204;
    goto LABEL_73;
  }

  v112 = HIBYTE(v51) & 0xF;
  if ((v51 & 0x2000000000000000) == 0)
  {
    v112 = v49 & 0xFFFFFFFFFFFFLL;
  }

  LODWORD(v89) = v23;
  v52 = v204;
  if (!v112)
  {

LABEL_73:
    v23 = v193;
    goto LABEL_88;
  }

  if (sub_265A16CB8(v23) == 0x6C6172656E6547 && v113 == 0xE700000000000000)
  {

    goto LABEL_75;
  }

  v114 = sub_265A1F340();

  if ((v114 & 1) == 0)
  {
    goto LABEL_80;
  }

LABEL_75:
  if ((sub_265A1EC40() & 1) == 0)
  {
LABEL_80:
    v120 = v51;
    goto LABEL_84;
  }

  v207 = 0x8000000265A24FD0;
  if (qword_28002B008 != -1)
  {
    swift_once();
  }

  v115 = sub_265A1EAA0();
  __swift_project_value_buffer(v115, qword_28002E8A0);

  v116 = sub_265A1EA80();
  v117 = sub_265A1EF30();

  v50 = v116;
  if (os_log_type_enabled(v116, v117))
  {
    v118 = swift_slowAlloc();
    v119 = swift_slowAlloc();
    v223 = v119;
    *v118 = 141558275;
    *(v118 + 4) = 1752392040;
    *(v118 + 12) = 2081;
    *(v118 + 14) = sub_2659D9320(v49, v51, &v223);
    _os_log_impl(&dword_2659CA000, v50, v117, "Replaced About/WARRANTY_COVERAGE with COVERAGE in path: %{private,mask.hash}s", v118, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v119);
    MEMORY[0x266766110](v119, -1, -1);
    MEMORY[0x266766110](v118, -1, -1);

    goto LABEL_83;
  }

LABEL_82:

LABEL_83:
  v223 = v49;
  v224 = v51;
  v221 = 0xD000000000000017;
  v222 = v207;
  v219 = 0x4547415245564F43;
  v220 = 0xE800000000000000;
  sub_265A1DA00();
  v49 = sub_265A1EFF0();
  v120 = v121;

  LODWORD(v89) = v23;
LABEL_84:
  v23 = v193;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
LABEL_179:
    v23 = sub_2659E0AC0(0, *(v23 + 2) + 1, 1, v23);
  }

  v123 = *(v23 + 2);
  v122 = *(v23 + 3);
  if (v123 >= v122 >> 1)
  {
    v23 = sub_2659E0AC0((v122 > 1), v123 + 1, 1, v23);
  }

  *(v23 + 2) = v123 + 1;
  v124 = &v23[16 * v123];
  *(v124 + 4) = v49;
  *(v124 + 5) = v120;
LABEL_88:
  v223 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B3E8, &unk_265A21020);
  sub_2659F3ABC(&qword_28156A910, qword_28002B3E8, &unk_265A21020, MEMORY[0x277D83958]);
  v125 = sub_265A1EB50();
  v49 = v126;
  v193 = v23;

  MEMORY[0x266764C20](v125, v49);
  v127 = v206;
  v128 = *(v206 + 16);
  if (!v128)
  {
    v49 = 0;
    v129 = 0;
    v52 = v216;
    v134 = v212;
    v135 = v192;
    goto LABEL_126;
  }

  LODWORD(v207) = v89;
  v129 = 0;
  v130 = v210;
  while (1)
  {
    if (v129 >= *(v127 + 2))
    {
      goto LABEL_170;
    }

    v213(v52, &v127[v130], v6);
    if (sub_265A1E580() == 1953460082 && v131 == 0xE400000000000000)
    {
      break;
    }

    v132 = sub_265A1F340();

    if (v132)
    {
      goto LABEL_101;
    }

    if (sub_265A1E580() == 1752457584 && v133 == 0xE400000000000000)
    {
      break;
    }

    v49 = sub_265A1F340();

    (v21)(v52, v6);
    if (v49)
    {
      goto LABEL_102;
    }

    ++v129;
    v130 += v215;
    v127 = v206;
    if (v128 == v129)
    {
      v49 = *(v206 + 16);
      v129 = v49;
      goto LABEL_103;
    }
  }

LABEL_101:
  (v21)(v52, v6);
LABEL_102:
  v49 = v129 + 1;
  v136 = *(v206 + 16);
  if (v136 - 1 == v129)
  {
LABEL_103:
    v52 = v216;
    v134 = v212;
    v135 = v192;
    LOBYTE(v89) = v207;
    goto LABEL_126;
  }

  v23 = v215 + v130;
  v205 += 5;
  v52 = 0xE400000000000000;
  v89 = v213;
  while (2)
  {
    if (v49 >= v136)
    {
      __break(1u);
      goto LABEL_169;
    }

    v89(v208, &v23[v206], v6);
    if (sub_265A1E580() == 1953460082 && v137 == 0xE400000000000000)
    {
      goto LABEL_105;
    }

    v138 = sub_265A1F340();

    if (v138)
    {
      goto LABEL_106;
    }

    if (sub_265A1E580() == 1752457584 && v139 == 0xE400000000000000)
    {
LABEL_105:

LABEL_106:
      (v21)(v208, v6);
      goto LABEL_107;
    }

    v120 = v139;
    v140 = sub_265A1F340();

    (v21)(v208, v6);
    if ((v140 & 1) == 0)
    {
      if (v49 != v129)
      {
        if (v129 < 0)
        {
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v141 = v206;
        v142 = *(v206 + 16);
        if (v129 >= v142)
        {
          goto LABEL_176;
        }

        v21 = v214;
        v120 = v129 * v215;
        v89 = v213;
        v213(v200, (v206 + v210 + v129 * v215), v6);
        if (v49 >= v142)
        {
          goto LABEL_177;
        }

        v89(v201, &v23[v141], v6);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v206 = sub_265A1D8A4(v206);
        }

        v21 = v194;
        v143 = v206;
        v144 = *v205;
        v145 = (v206 + v210 + v120);
        v120 = v205;
        (*v205)(v145, v201, v6);
        if (v49 >= *(v143 + 16))
        {
          goto LABEL_178;
        }

        v144(&v23[v143], v200, v6);
      }

      ++v129;
    }

LABEL_107:
    ++v49;
    v136 = *(v206 + 16);
    v23 = v215 + v23;
    if (v49 != v136)
    {
      continue;
    }

    break;
  }

  v52 = v216;
  v134 = v212;
  v135 = v192;
  LOBYTE(v89) = v207;
  if (v49 < v129)
  {
    goto LABEL_171;
  }

  if (v129 < 0)
  {
    goto LABEL_172;
  }

LABEL_126:
  if (__OFADD__(v49, v129 - v49))
  {
    goto LABEL_173;
  }

  v146 = v206;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v225 = v146;
  if (!isUniquelyReferenced_nonNull_native || v129 > v146[3] >> 1)
  {
    if (v49 <= v129)
    {
      v148 = v129;
    }

    else
    {
      v148 = v49;
    }

    v146 = sub_2659E0BCC(isUniquelyReferenced_nonNull_native, v148, 1, v146);
    v225 = v146;
  }

  sub_265A1D8B8(v129, v49, 0);

  if (v146[2])
  {
    v49 = v196;
    sub_265A1E5C0();
  }

  else
  {

    v49 = v196;
  }

  v149 = v203;
  v150 = v190;
  v151 = sub_265A1E640();
  if (v152)
  {
    v153 = v151;
    v154 = v152;
    v155 = HIBYTE(v152) & 0xF;
    if ((v152 & 0x2000000000000000) == 0)
    {
      v155 = v151 & 0xFFFFFFFFFFFFLL;
    }

    if (v155)
    {

      if (sub_265A16CB8(v89) == 1414483794 && v156 == 0xE400000000000000)
      {

        v49 = v196;
        goto LABEL_152;
      }

      v159 = sub_265A1F340();

      v49 = v196;
      if (v159)
      {
LABEL_152:

        v160 = sub_265A1740C(v153, v154);
        if (v160 == 74)
        {
          goto LABEL_160;
        }

        v164 = v160;

        v163 = v164;
LABEL_158:
        sub_265A167A0(v163, &v223);
      }

LABEL_160:
      sub_265A1E650();
      goto LABEL_161;
    }
  }

  v157 = HIBYTE(v135) & 0xF;
  if ((v135 & 0x2000000000000000) == 0)
  {
    v157 = v150 & 0xFFFFFFFFFFFFLL;
  }

  if (v157)
  {
    if (sub_265A16CB8(v89) == 1414483794 && v158 == 0xE400000000000000)
    {
    }

    else
    {
      v161 = sub_265A1F340();

      if ((v161 & 1) == 0)
      {

        goto LABEL_160;
      }
    }

    v162 = sub_265A1740C(v150, v135);

    if (v162 == 74)
    {
      goto LABEL_160;
    }

    v163 = v162;
    goto LABEL_158;
  }

LABEL_161:
  sub_265A1E5E0();
  v165 = v198;
  v166 = (v52[6])(v149, 1, v198);
  v21 = v202;
  if (v166 == 1)
  {
    sub_2659DA270(v149, &qword_28002B700, &qword_265A22658);
    if (qword_28002B008 == -1)
    {
      goto LABEL_163;
    }

    goto LABEL_174;
  }

  v182 = *(v134 + 8);
  v183 = v49;
  v184 = v211;
  v182(v183, v211);
  v182(v209, v184);
  (v52[1])(v218, v165);
  return (v52[4])(v195, v149, v165);
}

void *sub_265A1C808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_265A1DA00();
  result = sub_265A1EFE0();
  v5 = result[2];
  if (v5)
  {
    v6 = result[4];
    if (v5 == 2)
    {
    }

    return v6;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static Transforming<>.toSettingsNavigation.getter()
{
  v35 = MEMORY[0x277D84F90];
  sub_265A1D324(0, 6, 0);
  v0 = v35;
  v1 = swift_allocObject();
  *(v1 + 16) = sub_265A1AE20;
  *(v1 + 24) = 0;
  v3 = *(v35 + 16);
  v2 = *(v35 + 24);
  v4 = v3 + 1;
  if (v3 >= v2 >> 1)
  {
    v29 = v1;
    sub_265A1D324((v2 > 1), v3 + 1, 1);
    v1 = v29;
    v0 = v35;
  }

  *(v0 + 16) = v4;
  v5 = v0 + 16 * v3;
  *(v5 + 32) = sub_265A1D344;
  *(v5 + 40) = v1;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_265A199E8;
  *(v6 + 24) = 0;
  v7 = *(v0 + 24);
  v8 = v3 + 2;
  if (v4 >= v7 >> 1)
  {
    v30 = v6;
    sub_265A1D324((v7 > 1), v8, 1);
    v6 = v30;
    v0 = v35;
  }

  *(v0 + 16) = v8;
  v9 = v0 + 16 * v4;
  *(v9 + 32) = sub_265A1DA54;
  *(v9 + 40) = v6;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_265A19C64;
  *(v10 + 24) = 0;
  v12 = *(v0 + 16);
  v11 = *(v0 + 24);
  v13 = v12 + 1;
  if (v12 >= v11 >> 1)
  {
    v31 = v10;
    sub_265A1D324((v11 > 1), v12 + 1, 1);
    v10 = v31;
  }

  v14 = v35;
  *(v35 + 16) = v13;
  v15 = v35 + 16 * v12;
  *(v15 + 32) = sub_265A1DA54;
  *(v15 + 40) = v10;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_265A1A3C0;
  *(v16 + 24) = 0;
  v17 = *(v35 + 24);
  v18 = v12 + 2;
  if (v13 >= v17 >> 1)
  {
    v32 = v16;
    sub_265A1D324((v17 > 1), v18, 1);
    v16 = v32;
    v14 = v35;
  }

  *(v14 + 16) = v18;
  v19 = v14 + 16 * v13;
  *(v19 + 32) = sub_265A1DA54;
  *(v19 + 40) = v16;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_265A19ED4;
  *(v20 + 24) = 0;
  v22 = *(v14 + 16);
  v21 = *(v14 + 24);
  if (v22 >= v21 >> 1)
  {
    v33 = v20;
    sub_265A1D324((v21 > 1), v22 + 1, 1);
    v20 = v33;
    v14 = v35;
  }

  *(v14 + 16) = v22 + 1;
  v23 = v14 + 16 * v22;
  *(v23 + 32) = sub_265A1DA54;
  *(v23 + 40) = v20;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_265A1A144;
  *(v24 + 24) = 0;
  v26 = *(v14 + 16);
  v25 = *(v14 + 24);
  if (v26 >= v25 >> 1)
  {
    v34 = v24;
    sub_265A1D324((v25 > 1), v26 + 1, 1);
    v24 = v34;
  }

  *(v35 + 16) = v26 + 1;
  v27 = v35 + 16 * v26;
  *(v27 + 32) = sub_265A1DA54;
  *(v27 + 40) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8B8, &qword_265A23050);
  swift_arrayDestroy();
  return v35;
}

void sub_265A1CC44(void *a2@<X8>)
{
  v3 = sub_265A1E750();
  if (!v4)
  {
    goto LABEL_14;
  }

  if (v3 == 0xD000000000000013 && v4 == 0x8000000265A24D70)
  {
  }

  else
  {
    v5 = sub_265A1F340();

    if ((v5 & 1) == 0)
    {
      goto LABEL_14;
    }
  }

  v6 = sub_265A1E740();
  if (!v7)
  {
    goto LABEL_14;
  }

  if (v6 != 0xD000000000000017 || v7 != 0x8000000265A24480)
  {
    v8 = sub_265A1F340();

    if (v8)
    {
      goto LABEL_11;
    }

LABEL_14:
    *a2 = 0;
    a2[1] = 0;
    return;
  }

LABEL_11:
  v9 = sub_265A1E6F0();
  if (v9[2] <= 1uLL || (v11 = v9[6], v10 = v9[7], , , (sub_265A1EC40() & 1) != 0))
  {

    goto LABEL_14;
  }

  *a2 = v11;
  a2[1] = v10;
}

void sub_265A1CD90(void *a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B910, &qword_265A230B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_265A1E670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(sub_265A1E6F0() + 16);

  sub_265A1E5D0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2659DA270(v5, &qword_28002B910, &qword_265A230B0);
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
    v11 = sub_265A1E5B0();
    (*(v7 + 8))(v9, v6);
    if (v11)
    {
      v12 = *(v11 + 16);

      if (v12)
      {
        v13 = 100 - v10 - v12;
        if (!__OFSUB__(100 - v10, v12))
        {
          goto LABEL_9;
        }

        __break(1u);
      }
    }
  }

  v13 = 100 - v10;
LABEL_9:
  *a2 = v13;
}

void sub_265A1CF6C(uint64_t a2@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B910, &qword_265A230B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_265A1E670();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_265A1E5D0();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_2659DA270(v5, &qword_28002B910, &qword_265A230B0);
    goto LABEL_27;
  }

  (*(v7 + 32))(v9, v5, v6);
  v10 = sub_265A1E620();
  if (!v11)
  {
LABEL_26:
    (*(v7 + 8))(v9, v6);
    goto LABEL_27;
  }

  if (v10 == 0xD000000000000013 && v11 == 0x8000000265A24D70)
  {
  }

  else
  {
    v13 = sub_265A1F340();

    if ((v13 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v14 = sub_265A1E5F0();
  if (!v15)
  {
    v22 = sub_265A1E640();
    if (v23)
    {
      v33 = v22;
      v34 = v23;
      sub_265A17A58(&v30);
      (*(v7 + 8))(v9, v6);
      v24 = v31;
      if (v31)
      {
        v25 = v32;
        v26 = v30;

        *a2 = v26;
        *(a2 + 8) = v24;
        *(a2 + 16) = v25;
        return;
      }

      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v16 = v15;
  if (v14 == 0xD000000000000017 && v15 == 0x8000000265A24480)
  {
  }

  else
  {
    v18 = v14;
    if ((sub_265A1F340() & 1) == 0)
    {
      v33 = v18;
      v34 = v16;
      sub_265A17A58(&v30);
      v19 = v31;
      if (v31)
      {
        v20 = v32;
        v21 = v30;
        (*(v7 + 8))(v9, v6);

        *a2 = v21;
        *(a2 + 8) = v19;
        *(a2 + 16) = v20;
        return;
      }
    }

    v27 = sub_265A1F340();

    if ((v27 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  sub_265A1CC44(&v30);
  (*(v7 + 8))(v9, v6);
  v28 = v31;
  if (v31)
  {
    *a2 = v30;
    *(a2 + 8) = v28;
    *(a2 + 16) = 257;
    return;
  }

LABEL_27:
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

char *sub_265A1D2E4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_265A1D34C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_265A1D304(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_265A1D458(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_265A1D324(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_265A1D630(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_265A1D34C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B658, &qword_265A21AB0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_265A1D458(void *result, int64_t a2, char a3, void *a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B908, &qword_265A230A8);
  v10 = *(sub_265A1E6C0() - 8);
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
  v15 = *(sub_265A1E6C0() - 8);
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

void *sub_265A1D630(void *result, int64_t a2, char a3, void *a4)
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

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8C0, &qword_265A23060);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_28002B8C8, &qword_265A23068);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_265A1D764()
{
  result = qword_28156A930;
  if (!qword_28156A930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156A930);
  }

  return result;
}

unint64_t sub_265A1D7B8()
{
  result = qword_28156A938;
  if (!qword_28156A938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156A938);
  }

  return result;
}

unint64_t sub_265A1D80C()
{
  result = qword_28156A940;
  if (!qword_28156A940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156A940);
  }

  return result;
}

uint64_t sub_265A1D860(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_265A1E770();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_265A1D8B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_265A1E5A0();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_265A1DA00()
{
  result = qword_28156A928;
  if (!qword_28156A928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28156A928);
  }

  return result;
}

uint64_t URLComponents.init(settingsNavigationHost:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  sub_265A1E660();
  sub_265A1E630();
  return MEMORY[0x266764C10](v1, v2);
}

void sub_265A1DAB0(uint64_t a1@<X0>, void *a2@<X8>)
{
  v69 = a1;
  v3 = sub_265A1E6C0();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v68 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v54 - v7;
  v67 = sub_265A1E810();
  v9 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v66 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B920, qword_265A230B8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v54 - v12;
  v73 = sub_265A1E830();
  v14 = *(v73 - 8);
  v15 = MEMORY[0x28223BE20](v73);
  v65 = &v54 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v70 = &v54 - v17;
  v18 = *(sub_265A1E7F0() + 16);

  v19 = MEMORY[0x266765100](v18, MEMORY[0x277D837D0], MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v20 = sub_265A1E7F0();
  v64 = *(v20 + 16);
  if (!v64)
  {

LABEL_22:
    *a2 = v19;
    return;
  }

  v55 = a2;
  v56 = v20;
  v21 = 0;
  v62 = (v4 + 16);
  v63 = (v9 + 8);
  v60 = (v4 + 8);
  v61 = (v14 + 16);
  v58 = v8;
  v59 = (v14 + 8);
  v22 = v20 + 40;
  v57 = v13;
  v23 = v70;
  while (v21 < *(v20 + 16))
  {
    v71 = v22;
    v72 = v21;

    sub_265A1E7C0();
    v25 = v66;
    sub_265A1E820();
    sub_265A1E800();
    (*v63)(v25, v67);
    v26 = sub_265A1E7E0();
    v27 = *(v26 - 8);
    if ((*(v27 + 48))(v13, 1, v26) == 1)
    {
      sub_265A1E0D8(v13);
      v28 = 0;
      v29 = 0xE000000000000000;
    }

    else
    {
      v28 = sub_265A1E7D0();
      v30 = v13;
      v29 = v31;
      (*(v27 + 8))(v30, v26);
    }

    v32 = *v62;
    (*v62)(v8, v69, v3);
    (*v61)(v65, v23, v73);
    sub_265A1E6B0();
    v33 = v3;
    v32(v68, v8, v3);
    v34 = sub_265A1EBB0();
    v36 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v74 = v19;
    v38 = v28;
    v39 = v28;
    v40 = v29;
    v42 = sub_265A0C9AC(v39, v29);
    v43 = v19[2];
    v44 = (v41 & 1) == 0;
    v45 = v43 + v44;
    if (__OFADD__(v43, v44))
    {
      goto LABEL_24;
    }

    v46 = v41;
    if (v19[3] >= v45)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v3 = v33;
        if (v41)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_2659F7BF8();
        v3 = v33;
        if (v46)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_2659F751C(v45, isUniquelyReferenced_nonNull_native);
      v47 = sub_265A0C9AC(v38, v40);
      if ((v46 & 1) != (v48 & 1))
      {
        goto LABEL_26;
      }

      v42 = v47;
      v3 = v33;
      if (v46)
      {
LABEL_3:

        v19 = v74;
        v24 = (v74[7] + 16 * v42);
        *v24 = v34;
        v24[1] = v36;

        v8 = v58;
        (*v60)(v58, v3);
        v23 = v70;
        (*v59)(v70, v73);
        goto LABEL_4;
      }
    }

    v19 = v74;
    v74[(v42 >> 6) + 8] |= 1 << v42;
    v49 = (v19[6] + 16 * v42);
    *v49 = v38;
    v49[1] = v40;
    v50 = (v19[7] + 16 * v42);
    *v50 = v34;
    v50[1] = v36;
    v8 = v58;
    (*v60)(v58, v3);
    v23 = v70;
    (*v59)(v70, v73);
    v51 = v19[2];
    v52 = __OFADD__(v51, 1);
    v53 = v51 + 1;
    if (v52)
    {
      goto LABEL_25;
    }

    v19[2] = v53;
LABEL_4:
    v21 = v72 + 1;
    v22 = v71 + 16;
    v20 = v56;
    v13 = v57;
    if (v64 == v72 + 1)
    {

      a2 = v55;
      goto LABEL_22;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_265A1F370();
  __break(1u);
}

uint64_t sub_265A1E0D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_28002B920, qword_265A230B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_265A1E2A4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_265A1EAA0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_265A1EA20();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return sub_265A1EA00();
}

uint64_t sub_265A1E3F0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_265A1EAA0();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_265A1EA90();
}

uint64_t sub_265A1E484(unsigned int *a1, int a2)
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

_WORD *sub_265A1E4D4(_WORD *result, int a2, int a3)
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