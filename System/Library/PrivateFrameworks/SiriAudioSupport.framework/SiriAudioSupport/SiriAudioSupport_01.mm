uint64_t InstalledAppProvider.isAppInstalledAndVisible(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v17 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  v12 = qword_280071A70;

  if (v12 != -1)
  {
    swift_once();
  }

  sub_2662A5550(qword_280072410, v18);
  sub_2662A5550(v18, v17);
  v13 = swift_allocObject();
  sub_2662A8618(v17, v13 + 16);
  *(v13 + 56) = a1;
  *(v13 + 64) = a2;
  v14 = sub_2664E05C8();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_2664E3560;
  v15[5] = v13;
  v15[6] = sub_2662BD0A0;
  v15[7] = v11;

  sub_26633E760(0, 0, v10, &unk_2664E3570, v15);

  return __swift_destroy_boxed_opaque_existential_1Tm(v18);
}

uint64_t sub_2662BB32C(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v41 = a2;
  v5 = sub_2664DEAF8();
  v40 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v39 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v38 = &v32 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v32 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v32 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072450, &qword_2664E3610);
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;
  v18 = sub_2664DEB18();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v32 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662C0C3C(a1, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_2662A9238(v17, &qword_280072450, &qword_2664E3610);
    return (v41)(0);
  }

  else
  {
    v35 = v18;
    v36 = a3;
    v34 = v19;
    (*(v19 + 32))(v21, v17, v18);
    sub_2664DEB08();
    v23 = *MEMORY[0x277D5BE08];
    v24 = v40;
    v33 = *(v40 + 104);
    v33(v12, v23, v5);
    sub_2662C16C0(&qword_280072458, MEMORY[0x277D5BE10], MEMORY[0x277D5BE20]);
    sub_2664E0468();
    sub_2664E0468();
    v37 = v21;
    if (v44 == v42 && v45 == v43)
    {
      v25 = 1;
    }

    else
    {
      v25 = sub_2664E0D88();
    }

    v26 = *(v24 + 8);
    v26(v12, v5);
    v26(v14, v5);

    if (v25)
    {
      v27 = 1;
      v28 = v41;
    }

    else
    {
      v29 = v38;
      sub_2664DEB08();
      v30 = v39;
      v33(v39, *MEMORY[0x277D5BE00], v5);
      sub_2664E0468();
      sub_2664E0468();
      if (v44 == v42 && v45 == v43)
      {
        v27 = 1;
      }

      else
      {
        v27 = sub_2664E0D88();
      }

      v28 = v41;
      v26(v30, v5);
      v26(v29, v5);
    }

    v31 = v37;
    v28(v27 & 1);
    return (*(v34 + 8))(v31, v35);
  }
}

void sub_2662BB7BC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v89 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v89 - v15;
  if (!a1 || a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v11, v17, v7);

    v18 = a2;
    v19 = sub_2664DFE18();
    v20 = sub_2664E06D8();

    if (os_log_type_enabled(v19, v20))
    {
      v97 = v7;
      v21 = v8;
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v103[0] = v23;
      *v22 = 136315394;
      swift_beginAccess();

      v24 = sub_2664E01D8();
      v26 = v25;

      v27 = sub_2662A320C(v24, v26, v103);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      if (a2)
      {
        swift_getErrorValue();
        v28 = sub_2664E0DE8();
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      v101 = v28;
      v102 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v47 = sub_2664E0318();
      v49 = sub_2662A320C(v47, v48, v103);

      *(v22 + 14) = v49;
      _os_log_impl(&dword_26629C000, v19, v20, "InstalledAppProvider#pluginKitApps error enumerating plugins matching query: %s, %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v23, -1, -1);
      MEMORY[0x266784AD0](v22, -1, -1);

      (*(v21 + 8))(v11, v97);
    }

    else
    {

      (*(v8 + 8))(v11, v7);
    }

    return;
  }

  v30 = a1;
  v31 = [v30 containingBundle];
  if (!v31)
  {
    goto LABEL_20;
  }

  v32 = v31;
  v33 = [v31 bundleIdentifier];
  if (!v33)
  {

LABEL_20:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v8 + 16))(v14, v50, v7);
    v51 = v30;
    v52 = sub_2664DFE18();
    v53 = sub_2664E06D8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v54 = 138412290;
      *(v54 + 4) = v51;
      *v55 = a1;
      v56 = v51;
      _os_log_impl(&dword_26629C000, v52, v53, "InstalledAppProvider#pluginKitApps missing containing bundle of plugin: %@", v54, 0xCu);
      sub_2662A9238(v55, &qword_2800734B0, &unk_2664E3670);
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v54, -1, -1);
    }

    else
    {
      v56 = v52;
      v52 = v51;
    }

    (*(v8 + 8))(v14, v7);
    return;
  }

  v34 = v8;
  v35 = v33;
  v95 = sub_2664E02C8();
  v97 = v36;

  if (qword_280F90300 != -1)
  {
    swift_once();
  }

  v37 = qword_280F91CA0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073490, &qword_2664E8E20);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_2664E34F0;
  *(v38 + 32) = v30;
  sub_2662C1744(0, &qword_280F8F5F0, 0x277CC1ED8);
  v96 = v30;

  v39 = sub_2664E0488();

  v40 = INSupportedMediaCategories();

  if (!v40)
  {
    __break(1u);
    return;
  }

  v41 = sub_2664E0608();

  v42 = sub_2664B9554(v41, v37);

  v43 = v97;
  if (v42[2])
  {
    v44 = *MEMORY[0x277CD3830];
    sub_2662C1744(0, &unk_280F8F570, 0x277CBEA60);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v46 = v96;
    if ([v96 objectForInfoDictionaryKey:v44 ofClass:ObjCClassFromMetadata inScope:0])
    {
      sub_2664E09E8();
      swift_unknownObjectRelease();
    }

    else
    {
      v99 = 0u;
      v100 = 0u;
    }

    v98[0] = v99;
    v98[1] = v100;
    if (!*(&v100 + 1))
    {

      sub_2662A9238(v98, &unk_280074250, &unk_2664E3680);
      return;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    v57 = v101;
    if (qword_280F90308 != -1)
    {
      swift_once();
    }

    v58 = qword_280F91CA8;

    v59 = sub_2662BDEEC(v57, v58);

    Party16bundleIdentifierSbSS_tFZ_0 = _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0(v95, v43);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v60 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    (*(v34 + 16))(v16, v60, v7);

    v61 = sub_2664DFE18();
    v62 = sub_2664E06C8();

    v92 = v62;
    v63 = os_log_type_enabled(v61, v62);
    v94 = v59;
    if (v63)
    {
      v64 = swift_slowAlloc();
      v91 = v34;
      v65 = v64;
      v66 = swift_slowAlloc();
      *&v98[0] = v66;
      *v65 = 136315650;
      *(v65 + 4) = sub_2662A320C(v95, v97, v98);
      *(v65 + 12) = 2080;
      v67 = sub_2664E0618();
      v90 = v61;
      v69 = sub_2662A320C(v67, v68, v98);

      *(v65 + 14) = v69;
      *(v65 + 22) = 2080;
      v70 = sub_2664E0618();
      v72 = sub_2662A320C(v70, v71, v98);

      *(v65 + 24) = v72;
      v73 = v90;
      _os_log_impl(&dword_26629C000, v90, v92, "InstalledAppProvider#pluginKitExtensions found bundle: %s, supportedCategories: %s, supportedIntents: %s", v65, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v66, -1, -1);
      v74 = v65;
      v43 = v97;
      MEMORY[0x266784AD0](v74, -1, -1);

      (*(v91 + 8))(v16, v7);
    }

    else
    {

      (*(v34 + 8))(v16, v7);
    }

    v75 = v42[2];
    v76 = v94;
    if (v75)
    {
      v77 = sub_26640C820(v42[2], 0);
      v78 = sub_26640C9BC(v98, v77 + 4, v75, v42);
      sub_2662B793C(*&v98[0]);
      if (v78 == v75)
      {
        goto LABEL_45;
      }

      __break(1u);
    }

    v77 = MEMORY[0x277D84F90];
LABEL_45:
    v79 = *(v76 + 16);
    if (v79)
    {
      v80 = sub_26640C820(*(v76 + 16), 0);
      v81 = sub_26640C9BC(v98, v80 + 4, v79, v76);
      sub_2662B793C(*&v98[0]);
      if (v81 == v79)
      {
LABEL_49:
        v82 = (Party16bundleIdentifierSbSS_tFZ_0 ^ 1) & 1;
        swift_beginAccess();
        v83 = *(a4 + 16);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(a4 + 16) = v83;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v83 = sub_2663845E8(0, *(v83 + 2) + 1, 1, v83);
          *(a4 + 16) = v83;
        }

        v86 = *(v83 + 2);
        v85 = *(v83 + 3);
        if (v86 >= v85 >> 1)
        {
          v83 = sub_2663845E8((v85 > 1), v86 + 1, 1, v83);
        }

        *(v83 + 2) = v86 + 1;
        v87 = &v83[64 * v86];
        *(v87 + 4) = v95;
        *(v87 + 5) = v43;
        *(v87 + 6) = v77;
        *(v87 + 7) = v80;
        v87[64] = v82;
        v88 = *(&v101 + 3);
        *(v87 + 65) = v101;
        *(v87 + 17) = v88;
        *(v87 + 9) = 0;
        *(v87 + 10) = 0;
        *(v87 + 11) = MEMORY[0x277D84F90];
        *(a4 + 16) = v83;
        swift_endAccess();

        return;
      }

      __break(1u);
    }

    v80 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }
}

uint64_t sub_2662BC3C0(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5, NSObject *a6, uint64_t a7)
{
  v81 = a5;
  v84 = a4;
  v89 = a2;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 1);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v88 = &v75 - v17;
  MEMORY[0x28223BE20](v16);
  v19 = &v75 - v18;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_40;
  }

  while (1)
  {
    v20 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v21 = *(v12 + 2);
    v91 = v12 + 16;
    v92 = v20;
    v90 = v21;
    v21(v19, v20, v11);

    v22 = sub_2664DFE18();
    v23 = sub_2664E06C8();
    v24 = os_log_type_enabled(v22, v23);
    v85 = a7;
    v86 = a6;
    v82 = v15;
    v83 = v11;
    v87 = v12;
    if (!v24)
    {
      break;
    }

    v77 = v23;
    v25 = -1;
    v26 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v95[0] = v76;
    *v26 = 134218242;
    if (a1)
    {
      v25 = *(a1 + 2);
      v11 = a1;
    }

    else
    {
      v11 = MEMORY[0x277D84F90];
    }

    v80 = a3;
    *(v26 + 4) = v25;

    v78 = v26;
    *(v26 + 12) = 2080;
    v29 = *(v11 + 2);
    v79 = a1;

    v93 = v29;
    if (!v29)
    {
      v12 = MEMORY[0x277D84F90];
LABEL_18:

      v34 = MEMORY[0x2667834D0](v12, MEMORY[0x277D837D0]);
      v35 = v19;
      v37 = v36;

      v38 = sub_2662A320C(v34, v37, v95);

      v39 = v78;
      *(v78 + 14) = v38;
      _os_log_impl(&dword_26629C000, v22, v77, "InstalledAppProvider#installedApps computed: %ld apps: %s in the home", v39, 0x16u);
      v40 = v76;
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266784AD0](v40, -1, -1);
      MEMORY[0x266784AD0](v39, -1, -1);

      v27 = *(v87 + 1);
      v11 = v83;
      (v27)(v35, v83);
      v15 = v82;
      a3 = v80;
      a1 = v79;
      if (!v79)
      {
        goto LABEL_19;
      }

LABEL_6:
      v28 = sub_266349094(v89, a3, a1);
      goto LABEL_20;
    }

    v15 = 0;
    a3 = (v11 + 40);
    v12 = MEMORY[0x277D84F90];
    a1 = v19;
    a6 = v22;
    while (v15 < *(v11 + 2))
    {
      v30 = *(a3 - 1);
      a7 = *a3;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_2663846F4(0, *(v12 + 2) + 1, 1, v12);
      }

      v32 = *(v12 + 2);
      v31 = *(v12 + 3);
      if (v32 >= v31 >> 1)
      {
        v12 = sub_2663846F4((v31 > 1), v32 + 1, 1, v12);
      }

      ++v15;
      *(v12 + 2) = v32 + 1;
      v33 = &v12[16 * v32];
      *(v33 + 4) = v30;
      *(v33 + 5) = a7;
      a3 += 3;
      v19 = a1;
      v22 = a6;
      if (v93 == v15)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_40:
    swift_once();
  }

  v27 = *(v12 + 1);
  (v27)(v19, v11);
  if (a1)
  {
    goto LABEL_6;
  }

LABEL_19:
  v28 = MEMORY[0x277D84F90];
LABEL_20:
  v96 = v28;
  v41 = v88;
  v90(v88, v92, v11);

  v42 = sub_2664DFE18();
  v43 = sub_2664E06C8();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v95[0] = v45;
    *v44 = 136315394;
    if (a3)
    {
      v46 = v89;
    }

    else
    {
      v46 = 0x3E6C696E3CLL;
    }

    v47 = v27;
    if (a3)
    {
      v48 = a3;
    }

    else
    {
      v48 = 0xE500000000000000;
    }

    v49 = sub_2662A320C(v46, v48, v95);

    *(v44 + 4) = v49;
    *(v44 + 12) = 2080;

    v51 = sub_2662B9B7C(v50);
    v53 = v52;

    v54 = sub_2662A320C(v51, v53, v95);
    v27 = v47;
    v11 = v83;

    *(v44 + 14) = v54;
    _os_log_impl(&dword_26629C000, v42, v43, "InstalledAppProvider#installedApps apps available for user: %s: %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v45, -1, -1);
    MEMORY[0x266784AD0](v44, -1, -1);

    v15 = v82;
    v55 = v88;
  }

  else
  {

    v55 = v41;
  }

  (v27)(v55, v11);

  v57 = sub_2662C03AC(v56, v84);

  swift_beginAccess();
  v96 = v57;

  v90(v15, v92, v11);

  v58 = sub_2664DFE18();
  v59 = sub_2664E06C8();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v62 = v61;
    *v60 = 136315650;
    if (a3)
    {
      v63 = v89;
    }

    else
    {
      v63 = 0x3E6C696E3CLL;
    }

    v93 = v27;
    v94 = v61;
    if (a3)
    {
      v64 = a3;
    }

    else
    {
      v64 = 0xE500000000000000;
    }

    v65 = sub_2662A320C(v63, v64, &v94);

    *(v60 + 4) = v65;
    *(v60 + 12) = 2080;

    v67 = sub_2662B9B7C(v66);
    v68 = v15;
    v70 = v69;

    v71 = sub_2662A320C(v67, v70, &v94);

    *(v60 + 14) = v71;
    *(v60 + 22) = 1024;
    *(v60 + 24) = v81 & 1;
    _os_log_impl(&dword_26629C000, v58, v59, "InstalledAppProvider#installedApps user %s has available apps: %s, useCache:%{BOOL}d", v60, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v62, -1, -1);
    MEMORY[0x266784AD0](v60, -1, -1);

    (v93)(v68, v11);
    v72 = v86;
  }

  else
  {

    (v27)(v15, v11);
    v72 = v86;
  }

  (v72)(v73);
  return swift_bridgeObjectRelease_n();
}

uint64_t sub_2662BCC08(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = v29 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = a1;
  *(v11 + 24) = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_2662C0CAC;
  *(v12 + 24) = v11;
  v13 = qword_280F8F800;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = qword_280F8F808;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_2662C0CE4;
  *(v15 + 24) = v12;
  v16 = qword_280F91508;
  v29[0] = v14;

  v29[1] = v12;

  if (v16 != -1)
  {
    swift_once();
  }

  v17 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v18 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v19 = (v6 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  v21 = v5;
  *(v20 + 16) = "installedAppProviderInstalledApps";
  *(v20 + 24) = 33;
  *(v20 + 32) = 2;
  (*(v5 + 32))(v20 + v18, v8, v4);
  v22 = (v20 + v19);
  *v22 = sub_2662C0D0C;
  v22[1] = v15;

  v23 = sub_2664E0848();
  sub_2664DFDC8(v23, &dword_26629C000, v17, "installedAppProviderInstalledApps", 33, 2, v10, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_2662C0D38;
  *(v24 + 24) = v20;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2662C0DE0;
  *(v25 + 24) = v24;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_2662C0CAC;
  *(v26 + 24) = v25;
  v27 = qword_280071A70;

  if (v27 != -1)
  {
    swift_once();
  }

  sub_2662C0E68(qword_280072410, sub_2662C0E1C, v26);

  (*(v21 + 8))(v10, v4);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_2662BD0A8(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2662C1890;

  return sub_2662BAD74(a1, v1 + 16, v4, v5);
}

uint64_t sub_2662BD17C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072450, &qword_2664E3610);
  v7[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2662BD21C, 0, 0);
}

uint64_t sub_2662BD21C()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *(v1 + 16) = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = sub_2664DEB18();
  *v2 = v0;
  v2[1] = sub_2662BD2F0;
  v4 = *(v0 + 48);

  return MEMORY[0x2821BBDF0](v4, &unk_2664E3620, v1, v3);
}

uint64_t sub_2662BD2F0()
{

  return MEMORY[0x2822009F8](sub_2662BD408, 0, 0);
}

uint64_t sub_2662BD408()
{
  v1 = *(v0 + 48);
  (*(v0 + 32))(v1);
  sub_2662A9238(v1, &qword_280072450, &qword_2664E3610);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2662BD494(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2662C1890;

  return sub_2662BD17C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2662BD568(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2662BD660;

  return v6(a1);
}

uint64_t sub_2662BD660()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2662BD754(_OWORD *a1)
{
  v2 = v1;
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v28[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  sub_2662C0AE0(a1, v29);
  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v28[0] = v27;
    *v11 = 136446466;
    *(v11 + 4) = sub_2662A320C(v2[4], v2[5], v28);
    *(v11 + 12) = 2082;
    v12 = a1[1];
    v29[0] = *a1;
    v29[1] = v12;
    v13 = a1[3];
    v29[2] = a1[2];
    v29[3] = v13;
    v14 = sub_2664E0318();
    v16 = sub_2662A320C(v14, v15, v28);

    *(v11 + 14) = v16;
    _os_log_impl(&dword_26629C000, v9, v10, "AtomicArray#append [%{public}s] element: %{public}s. acquiring global lock...", v11, 0x16u);
    v17 = v27;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v17, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  else
  {
    sub_2662C0B3C(a1);
  }

  (*(v5 + 8))(v7, v4);
  sub_2662A98AC();
  swift_beginAccess();
  v18 = v2[2];
  sub_2662C0AE0(a1, v29);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[2] = v18;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v18 = sub_2663845E8(0, *(v18 + 2) + 1, 1, v18);
    v2[2] = v18;
  }

  v21 = *(v18 + 2);
  v20 = *(v18 + 3);
  if (v21 >= v20 >> 1)
  {
    v18 = sub_2663845E8((v20 > 1), v21 + 1, 1, v18);
  }

  *(v18 + 2) = v21 + 1;
  v22 = &v18[64 * v21];
  v23 = *a1;
  v24 = a1[1];
  v25 = a1[3];
  *(v22 + 4) = a1[2];
  *(v22 + 5) = v25;
  *(v22 + 2) = v23;
  *(v22 + 3) = v24;
  v2[2] = v18;
  swift_endAccess();
  return sub_2662BDCD4(v2, "AtomicArray#append [%{public}s] released global lock");
}

uint64_t sub_2662BDA94()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_2664DFE18();
  v8 = sub_2664E06E8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13[0] = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_2662A320C(v1[4], v1[5], v13);
    _os_log_impl(&dword_26629C000, v7, v8, "AtomicArray#getAll [%{public}s]. acquiring global lock...", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266784AD0](v10, -1, -1);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  sub_2662A98AC();
  swift_beginAccess();
  v11 = v1[2];

  sub_2662BDCD4(v1, "AtomicArray#getAll [%{public}s] released global lock");
  return v11;
}

uint64_t sub_2662BDCD4(uint64_t a1, const char *a2, ...)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662AA89C();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_2662A320C(*(a1 + 32), *(a1 + 40), &v14);
    _os_log_impl(&dword_26629C000, v9, v10, a2, v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x266784AD0](v12, -1, -1);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t *sub_2662BDEEC(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v17[6] = *MEMORY[0x277D85DE8];
  v16 = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v17[3] = &v16;
  v17[4] = a2;
  v6 = (1 << v4) + 63;
  v7 = v6 >> 6;
  if (v5 <= 0xD || (v12 = 8 * (v6 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v9 = &v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v9, v8);
    v10 = sub_2662BE08C(v9, v7, v3, a2);
  }

  else
  {
    v13 = v12;
    v14 = swift_slowAlloc();
    bzero(v14, v13);
    sub_2662C1710(v14, v7, v17);
    v10 = v17[0];

    MEMORY[0x266784AD0](v14, -1, -1);
  }

  return v10;
}

unint64_t *sub_2662BE08C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = *(a3 + 16);
  v27 = a3 + 32;
  v8 = a4 + 56;
  v25 = result;
  v26 = v7;
  while (2)
  {
    v24 = v5;
    if (v6 != v7)
    {
      while (1)
      {
        while (1)
        {
          if (v6 >= v7)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            return result;
          }

          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_26;
          }

          v10 = (v27 + 16 * v6);
          v12 = *v10;
          v11 = v10[1];
          sub_2664E0E68();

          sub_2664E0368();
          v13 = sub_2664E0EB8();
          v14 = -1 << *(a4 + 32);
          v15 = v13 & ~v14;
          v16 = v15 >> 6;
          v17 = 1 << v15;
          if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) != 0)
          {
            break;
          }

LABEL_5:
          v6 = v9;

          if (v9 == v7)
          {
            goto LABEL_24;
          }
        }

        v18 = (*(a4 + 48) + 16 * v15);
        if (*v18 != v12 || v18[1] != v11)
        {
          v20 = ~v14;
          while ((sub_2664E0D88() & 1) == 0)
          {
            v15 = (v15 + 1) & v20;
            v16 = v15 >> 6;
            v17 = 1 << v15;
            if (((1 << v15) & *(v8 + 8 * (v15 >> 6))) == 0)
            {
              v7 = v26;
              goto LABEL_5;
            }

            v21 = (*(a4 + 48) + 16 * v15);
            if (*v21 == v12 && v21[1] == v11)
            {
              break;
            }
          }
        }

        v22 = v25[v16];
        v25[v16] = v22 | v17;
        if ((v22 & v17) == 0)
        {
          break;
        }

        v7 = v26;
        v6 = v9;
        if (v9 == v26)
        {
          goto LABEL_24;
        }
      }

      v5 = v24 + 1;
      v7 = v26;
      v6 = v9;
      if (!__OFADD__(v24, 1))
      {
        continue;
      }

      __break(1u);
    }

    break;
  }

LABEL_24:

  return sub_2664CF388(v25, a2, v24, a4);
}

uint64_t sub_2662BE26C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v8 = *a1;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v8);
}

char *sub_2662BE338()
{
  v0 = sub_2664DE438();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v99 = &v98 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v112 = &v98 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v98 - v6;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 1);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v98 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v116 = &v98 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v109 = &v98 - v16;
  MEMORY[0x28223BE20](v15);
  v18 = &v98 - v17;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v19 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v121 = v9;
    v117 = *(v9 + 2);
    v118 = v9 + 16;
    v117(v18, v19, v8);
    v20 = sub_2664DFE18();
    v21 = sub_2664E06C8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = v12;
      v23 = v19;
      v24 = v0;
      v25 = v1;
      v26 = v8;
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v20, v21, "InstalledAppProvider#lsRecordApps...", v27, 2u);
      v28 = v27;
      v8 = v26;
      v1 = v25;
      v0 = v24;
      v19 = v23;
      v12 = v22;
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    v102 = v12;
    v104 = v1;
    v105 = v0;

    v29 = v121 + 8;
    v30 = *(v121 + 1);
    v30(v18, v8);
    v103 = v7;
    sub_2664DE428();
    v122 = [objc_opt_self() enumeratorWithOptions_];
    v31 = [v122 nextObject];
    v33 = MEMORY[0x277D84F90];
    v113 = v8;
    v121 = v29;
    v119 = v30;
    if (!v31)
    {
      break;
    }

    v120 = 0x80000002664F2EA0;
    v101 = 0x80000002664F37C0;
    *&v32 = 136315650;
    v100 = v32;
    v34 = v112;
    v108 = v19;
    while (2)
    {
      v114 = v33;
      v35 = v116;
      v36 = v8;
      while (1)
      {
        v12 = v31;
        v37 = [v12 bundleIdentifier];
        if (!v37)
        {

          v117(v35, v19, v8);
          v46 = sub_2664DFE18();
          v47 = sub_2664E06D8();
          if (os_log_type_enabled(v46, v47))
          {
            v48 = swift_slowAlloc();
            *v48 = 0;
            _os_log_impl(&dword_26629C000, v46, v47, "InstalledAppProvider#lsRecordApps error missing bundle identifier for LSApplicationRecord", v48, 2u);
            v49 = v48;
            v35 = v116;
            MEMORY[0x266784AD0](v49, -1, -1);
          }

          else
          {
          }

          v119(v35, v8);
          goto LABEL_9;
        }

        v38 = v37;
        v0 = sub_2664E02C8();
        v7 = v39;

        if (v0 == 0x6C7070612E6D6F63 && v7 == 0xEF636973754D2E65)
        {
          break;
        }

        if (sub_2664E0D88())
        {
          goto LABEL_28;
        }

        if (v0 == 0xD000000000000012 && v120 == v7)
        {
          v0 = 0xD000000000000012;
LABEL_32:

          if (qword_280F902E0 != -1)
          {
            swift_once();
          }

          v45 = qword_280F91C88;
          goto LABEL_35;
        }

        if (sub_2664E0D88())
        {
          goto LABEL_32;
        }

        if (qword_280F90300 != -1)
        {
          swift_once();
        }

        v42 = qword_280F91CA0;

        v43 = [v12 supportedIntentMediaCategories];
        v44 = sub_2664E04A8();

        v45 = sub_2662BDEEC(v44, v42);

        if (v45[2])
        {
          if (qword_280F90308 != -1)
          {
            swift_once();
          }

          v82 = qword_280F91CA8;

          v83 = [v12 supportedIntents];

          v84 = sub_2664E04A8();
          v115 = sub_2662BDEEC(v84, v82);

          goto LABEL_38;
        }

        v8 = v36;
LABEL_9:
        v31 = [v122 nextObject];
        if (!v31)
        {
          v33 = v114;
          goto LABEL_68;
        }
      }

      v0 = 0x6C7070612E6D6F63;
LABEL_28:

      if (qword_280F902E8 != -1)
      {
        swift_once();
      }

      v45 = qword_280F91C90;
LABEL_35:
      v50 = qword_280F902F8;

      if (v50 != -1)
      {
        swift_once();
      }

      v115 = qword_280F91C98;

LABEL_38:
      v123 = v0;
      v124 = v7;
      v128 = 0x6C7070612E6D6F63;
      v129 = 0xE900000000000065;
      sub_2662C178C();
      sub_2662C17E0();
      v111 = (sub_2664E0278() & 1) == 0 || (v123 = v0, v124 = v7, v128 = 0xD000000000000013, v129 = v101, (sub_2664E0278() & 1) != 0);
      v51 = v109;
      v52 = v36;
      v117(v109, v19, v36);

      v53 = sub_2664DFE18();
      v54 = sub_2664E06C8();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        LODWORD(v107) = v54;
        v56 = v55;
        v110 = swift_slowAlloc();
        v123 = v110;
        *v56 = v100;
        *(v56 + 4) = sub_2662A320C(v0, v7, &v123);
        *(v56 + 12) = 2080;

        v57 = sub_2664E0618();
        v59 = v58;

        v60 = sub_2662A320C(v57, v59, &v123);

        *(v56 + 14) = v60;
        *(v56 + 22) = 2080;

        v61 = sub_2664E0618();
        v63 = v62;

        v64 = sub_2662A320C(v61, v63, &v123);

        *(v56 + 24) = v64;
        _os_log_impl(&dword_26629C000, v53, v107, "InstalledAppProvider#lsRecordApps found bundle: %s, supportedCategories: %s, supportedIntents: %s", v56, 0x20u);
        v65 = v110;
        swift_arrayDestroy();
        v66 = v65;
        v52 = v113;
        MEMORY[0x266784AD0](v66, -1, -1);
        MEMORY[0x266784AD0](v56, -1, -1);

        v67 = v51;
        v36 = v52;
      }

      else
      {

        v67 = v51;
      }

      v119(v67, v52);
      v8 = v45[2];
      if (!v8)
      {
        v110 = MEMORY[0x277D84F90];
LABEL_51:
        v72 = v115;
        v73 = v115[2];
        if (v73)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
          v8 = swift_allocObject();
          v74 = _swift_stdlib_malloc_size(v8);
          v75 = v74 - 32;
          if (v74 < 32)
          {
            v75 = v74 - 17;
          }

          v8[2] = v73;
          v8[3] = 2 * (v75 >> 4);
          v107 = sub_26640C9BC(&v123, v8 + 4, v73, v72);
          v18 = v123;
          v1 = v125;
          v9 = v126;
          v106 = v127;

          sub_2662B793C(v18);
          if (v107 != v73)
          {
            goto LABEL_73;
          }

          v76 = v113;
        }

        else
        {
          v76 = v36;
          v8 = MEMORY[0x277D84F90];
        }

        v33 = v114;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v19 = v108;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v33 = sub_2663845E8(0, *(v33 + 2) + 1, 1, v33);
        }

        v79 = *(v33 + 2);
        v78 = *(v33 + 3);
        if (v79 >= v78 >> 1)
        {
          v33 = sub_2663845E8((v78 > 1), v79 + 1, 1, v33);
        }

        *(v33 + 2) = v79 + 1;
        v80 = &v33[64 * v79];
        *(v80 + 4) = v0;
        *(v80 + 5) = v7;
        *(v80 + 6) = v110;
        *(v80 + 7) = v8;
        v80[64] = v111;
        v81 = *(&v123 + 3);
        *(v80 + 65) = v123;
        *(v80 + 17) = v81;
        *(v80 + 9) = 0;
        *(v80 + 10) = 0;
        *(v80 + 11) = MEMORY[0x277D84F90];

        v31 = [v122 nextObject];
        v34 = v112;
        v8 = v76;
        if (!v31)
        {
          goto LABEL_68;
        }

        continue;
      }

      break;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
    v68 = swift_allocObject();
    v69 = _swift_stdlib_malloc_size(v68);
    v70 = v69 - 32;
    if (v69 < 32)
    {
      v70 = v69 - 17;
    }

    v68[2] = v8;
    v68[3] = 2 * (v70 >> 4);
    v110 = v68;
    v107 = sub_26640C9BC(&v123, v68 + 4, v8, v45);
    v71 = v123;
    v1 = v125;
    v18 = v126;
    v9 = v127;

    sub_2662B793C(v71);
    if (v107 == v8)
    {
      v36 = v113;
      goto LABEL_51;
    }

    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v34 = v112;
LABEL_68:
  v85 = v102;
  v117(v102, v19, v8);
  v86 = v104;
  v87 = v103;
  v88 = v105;
  (*(v104 + 16))(v34, v103, v105);
  v89 = sub_2664DFE18();
  v90 = sub_2664E06C8();
  if (os_log_type_enabled(v89, v90))
  {
    v91 = swift_slowAlloc();
    *v91 = 134217984;
    v92 = v99;
    sub_2664DE428();
    sub_2664DE388();
    v94 = v93;
    v114 = v33;
    v95 = *(v86 + 8);
    v95(v92, v88);
    v95(v34, v88);
    *(v91 + 4) = v94;
    _os_log_impl(&dword_26629C000, v89, v90, "InstalledAppProvider#lsRecordApps complete in %fms", v91, 0xCu);
    MEMORY[0x266784AD0](v91, -1, -1);

    v119(v85, v113);
    v95(v87, v88);
    return v114;
  }

  else
  {

    v96 = *(v86 + 8);
    v96(v34, v88);
    v119(v85, v8);
    v96(v87, v88);
  }

  return v33;
}

uint64_t sub_2662BF1C8()
{
  v66 = sub_2664DE438();
  v0 = *(v66 - 8);
  v1 = MEMORY[0x28223BE20](v66);
  v57[0] = v57 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v5 = v57 - v4;
  MEMORY[0x28223BE20](v3);
  v7 = v57 - v6;
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = v57 - v13;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  v16 = *(v9 + 16);
  v60 = v15;
  v59 = v9 + 16;
  v58 = v16;
  v16(v14, v15, v8);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06C8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v5;
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "InstalledAppProvider#pluginKitExtensions...", v20, 2u);
    v21 = v20;
    v5 = v19;
    MEMORY[0x266784AD0](v21, -1, -1);
  }

  v23 = *(v9 + 8);
  v22 = v9 + 8;
  v61 = v23;
  v23(v14, v8);
  sub_2664DE428();
  if (qword_280F90308 != -1)
  {
    swift_once();
  }

  v62 = v12;
  v63 = v22;
  v64 = v8;
  v67 = v7;
  v24 = qword_280F91CA8;
  v25 = *(qword_280F91CA8 + 16);
  v26 = MEMORY[0x277D84F90];
  if (v25)
  {
    v27 = v5;
    v65 = sub_26640C820(*(qword_280F91CA8 + 16), 0);
    v28 = sub_26640C9BC(aBlock, v65 + 4, v25, v24);
    v29 = aBlock[0];

    result = sub_2662B793C(v29);
    if (v28 != v25)
    {
      __break(1u);
      return result;
    }

    v5 = v27;
    v26 = MEMORY[0x277D84F90];
  }

  else
  {
    v65 = MEMORY[0x277D84F90];
  }

  v31 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34E0;
  *(inited + 32) = sub_2664E02C8();
  *(inited + 40) = v33;
  v34 = sub_2664E02C8();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v34;
  *(inited + 56) = v35;
  *(inited + 80) = sub_2664E02C8();
  *(inited + 88) = v36;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  *(inited + 96) = v65;
  v37 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  *(v31 + 16) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = v26;
  v57[1] = v38 + 16;
  v39 = [objc_opt_self() defaultWorkspace];
  if (v39)
  {
    v40 = v39;

    v41 = sub_2664E01A8();

    v42 = swift_allocObject();
    *(v42 + 16) = v31;
    *(v42 + 24) = v38;
    aBlock[4] = sub_2662C1708;
    aBlock[5] = v42;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662A6624;
    aBlock[3] = &block_descriptor_88;
    v43 = _Block_copy(aBlock);

    [v40 enumeratePluginsMatchingQuery:v41 withBlock:v43];
    _Block_release(v43);
  }

  v65 = v31;
  v44 = v62;
  v45 = v64;
  v58(v62, v60, v64);
  (*(v0 + 16))(v5, v67, v66);
  v46 = sub_2664DFE18();
  v47 = sub_2664E06C8();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134217984;
    v49 = v57[0];
    sub_2664DE428();
    sub_2664DE388();
    v51 = v50;
    v60 = v38;
    v52 = *(v0 + 8);
    v53 = v66;
    v52(v49, v66);
    v52(v5, v53);
    *(v48 + 4) = v51;
    _os_log_impl(&dword_26629C000, v46, v47, "InstalledAppProvider#pluginKitExtensions complete in %fms", v48, 0xCu);
    MEMORY[0x266784AD0](v48, -1, -1);

    v61(v44, v45);
    v52(v67, v53);
    v38 = v60;
  }

  else
  {

    v54 = *(v0 + 8);
    v55 = v66;
    v54(v5, v66);
    v61(v44, v45);
    v54(v67, v55);
  }

  swift_beginAccess();
  v56 = *(v38 + 16);

  return v56;
}

uint64_t sub_2662BFA30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v30 = a1;
  v31 = a3;
  v29 = a2;
  v4 = sub_2664E0038();
  v37 = *(v4 - 8);
  v38 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2664E0788();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2664E00B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = dispatch_group_create();
  sub_2664E0078();
  sub_2664E0768();
  v14 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000015, 0x80000002664F3740, v13, v9);
  (*(v7 + 8))(v9, v6);
  v15 = *(v11 + 8);
  v36 = v10;
  v32 = v15;
  v15(v13, v10);
  v16 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072470, &qword_2664E3638);
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D84F90];
  v17[2] = MEMORY[0x277D84F90];
  v17[4] = 0xD000000000000025;
  v17[5] = 0x80000002664F3760;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v19 = qword_280F91470;
  v41 = type metadata accessor for SiriKitTaskLoggingProvider();
  v42 = &protocol witness table for SiriKitTaskLoggingProvider;
  aBlock[0] = v19;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v20 = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000025, 0x80000002664F3760, 1, aBlock);
  v17[3] = v20;
  *(v16 + 16) = v17;
  MEMORY[0x28223BE20](v20);
  v21 = v34;
  *(&v29 - 4) = v34;
  *(&v29 - 3) = v14;
  v22 = v30;
  *(&v29 - 2) = v29;
  *(&v29 - 1) = v16;
  sub_266487460(sub_2662C13FC, (&v29 - 6), v22);
  v23 = swift_allocObject();
  v24 = v35;
  v23[2] = v31;
  v23[3] = v24;
  v23[4] = v16;
  v42 = sub_2662C141C;
  v43 = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  v41 = &block_descriptor;
  v25 = _Block_copy(aBlock);

  sub_2664E0068();
  v39 = v18;
  sub_2662C16C0(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
  v26 = v33;
  v27 = v38;
  sub_2664E0A08();
  sub_2664E0758();

  _Block_release(v25);
  (*(v37 + 8))(v26, v27);
  v32(v13, v36);
}

uint64_t sub_2662BFF60(uint64_t a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v39 = a2;
  v40 = a5;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  (*(v11 + 16))(v13, v14, v10);

  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v35 = v16;
    v18 = v17;
    v36 = swift_slowAlloc();
    v37 = a6;
    v41 = a1;
    v42 = v36;
    *v18 = 136315650;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072438, &qword_2664E35F8);
    v19 = sub_2664E0318();
    v21 = sub_2662A320C(v19, v20, &v42);
    v34 = a1;
    v22 = a4;
    v23 = v21;

    *(v18 + 4) = v23;
    *(v18 + 12) = 2080;
    v24 = v39;
    if (a3)
    {
      v25 = v39;
    }

    else
    {
      v25 = 0x3E6C696E3CLL;
    }

    if (a3)
    {
      v26 = a3;
    }

    else
    {
      v26 = 0xE500000000000000;
    }

    v27 = sub_2662A320C(v25, v26, &v42);

    *(v18 + 14) = v27;
    *(v18 + 22) = 1024;
    *(v18 + 24) = v22 & 1;
    _os_log_impl(&dword_26629C000, v15, v35, "InstalledAppProvider#installedApps for intentType:%s, sharedUserId:%s, useCache:%{BOOL}d...", v18, 0x1Cu);
    v28 = v36;
    swift_arrayDestroy();
    a6 = v37;
    MEMORY[0x266784AD0](v28, -1, -1);
    v29 = v18;
    v30 = v34;
    MEMORY[0x266784AD0](v29, -1, -1);

    (*(v11 + 8))(v13, v10);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    v30 = a1;
    v22 = a4;
    v24 = v39;
  }

  v31 = *(v38 + 40);
  v32 = swift_allocObject();
  *(v32 + 16) = v24;
  *(v32 + 24) = a3;
  *(v32 + 32) = v30;
  *(v32 + 40) = v22 & 1;
  *(v32 + 48) = v40;
  *(v32 + 56) = a6;

  v31(v22 & 1, sub_2662C0398, v32);
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2662C02F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2662C033C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

NSObject *sub_2662C03AC(NSObject *a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  if (a2)
  {
    v55 = &v51 - v9;
    v56 = v5;
    *&v60 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072448, &qword_2664E3608);
    isUniquelyReferenced_nonNull_native = sub_2664E0318();
    v11 = isUniquelyReferenced_nonNull_native;
    v13 = v12;
    isa = a1[2].isa;
    v57 = v4;
    if (isa)
    {
      v15 = 0;
      v16 = a1 + 4;
      a1 = MEMORY[0x277D84F90];
      v53 = v16;
      do
      {
        v54 = a1;
        v17 = &v16[8 * v15];
        a1 = v15;
        while (1)
        {
          if (a1 >= isa)
          {
            __break(1u);
LABEL_38:
            __break(1u);
            goto LABEL_39;
          }

          v18 = *&v17[2].isa;
          v60 = *&v17->isa;
          v61 = v18;
          v19 = *&v17[6].isa;
          v62 = *&v17[4].isa;
          v63 = v19;
          v15 = (&a1->isa + 1);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_38;
          }

          v4 = &v51;
          v20 = *(&v61 + 1);
          v59[0] = v11;
          v59[1] = v13;
          MEMORY[0x28223BE20](isUniquelyReferenced_nonNull_native);
          *(&v51 - 2) = v59;
          sub_2662C0AE0(&v60, v58);

          v21 = sub_2662AA720(sub_2662AA7CC, (&v51 - 4), v20);

          if (v21)
          {
            break;
          }

          isUniquelyReferenced_nonNull_native = sub_2662C0B3C(&v60);
          a1 = (a1 + 1);
          v17 += 8;
          if (v15 == isa)
          {
            v4 = v57;
            a1 = v54;
            goto LABEL_22;
          }
        }

        a1 = v54;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v64 = a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_2662FCF44(0, a1[2].isa + 1, 1);
          a1 = v64;
        }

        v4 = v57;
        v23 = a1[2].isa;
        v22 = a1[3].isa;
        if (v23 >= v22 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_2662FCF44((v22 > 1), v23 + 1, 1);
          a1 = v64;
        }

        a1[2].isa = (v23 + 1);
        v24 = &a1[8 * v23];
        v25 = v60;
        v26 = v61;
        v27 = v63;
        *&v24[8].isa = v62;
        *&v24[10].isa = v27;
        *&v24[4].isa = v25;
        *&v24[6].isa = v26;
        v16 = v53;
      }

      while (v15 != isa);
    }

    else
    {
      a1 = MEMORY[0x277D84F90];
    }

LABEL_22:
    if (qword_280F914E8 != -1)
    {
      goto LABEL_40;
    }

    while (1)
    {
      v32 = __swift_project_value_buffer(v4, qword_280F914F0);
      swift_beginAccess();
      v33 = v56;
      v34 = v55;
      (*(v56 + 16))(v55, v32, v4);

      v35 = sub_2664DFE18();
      v36 = sub_2664E06E8();

      if (!os_log_type_enabled(v35, v36))
      {

        (*(v33 + 8))(v34, v4);
        return a1;
      }

      LODWORD(v53) = v36;
      v54 = v35;
      v37 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v58[0] = v52;
      *v37 = 136446466;
      v11 = sub_2662A320C(v11, v13, v58);

      *(v37 + 4) = v11;
      *(v37 + 12) = 2082;
      v4 = a1[2].isa;
      if (!v4)
      {
        break;
      }

      v38 = 0;
      v39 = a1;
      a1 += 5;
      v13 = MEMORY[0x277D84F90];
      while (v38 < v39[2].isa)
      {
        v40 = a1[-1].isa;
        v11 = a1->isa;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v13 = sub_2663846F4(0, *(v13 + 2) + 1, 1, v13);
        }

        v42 = *(v13 + 2);
        v41 = *(v13 + 3);
        if (v42 >= v41 >> 1)
        {
          v13 = sub_2663846F4((v41 > 1), v42 + 1, 1, v13);
        }

        v38 = (v38 + 1);
        *(v13 + 2) = v42 + 1;
        v43 = &v13[16 * v42];
        *(v43 + 4) = v40;
        *(v43 + 5) = v11;
        a1 += 8;
        if (v4 == v38)
        {
          goto LABEL_35;
        }
      }

LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
    }

    v39 = a1;
    v13 = MEMORY[0x277D84F90];
LABEL_35:
    v44 = MEMORY[0x2667834D0](v13, MEMORY[0x277D837D0]);
    v46 = v45;

    v47 = sub_2662A320C(v44, v46, v58);

    *(v37 + 14) = v47;
    v48 = v54;
    _os_log_impl(&dword_26629C000, v54, v53, "InstalledAppProvider#installedApps filtered for intent:%{public}s result: %{public}s", v37, 0x16u);
    v49 = v52;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v49, -1, -1);
    MEMORY[0x266784AD0](v37, -1, -1);

    (*(v56 + 8))(v55, v57);
    return v39;
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v28, v4);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06E8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "InstalledAppProvider#installedApps no intent type passed, returning all apps regardless of intent support", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  return a1;
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

uint64_t sub_2662C0B90(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2662C1890;

  return sub_2662BD568(a1, v4);
}

uint64_t sub_2662C0C3C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072450, &qword_2664E3610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2662C0CAC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2662C0D38(uint64_t *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2662BE26C(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_2662C0DE0(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_2662C0E1C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_26634AB34(a1);
  v2();
}

uint64_t sub_2662C0E68(char *a1, uint64_t a2, uint64_t a3)
{
  v32 = a2;
  v33 = a3;
  v30 = a1;
  v3 = sub_2664DE438();
  v31 = *(v3 - 8);
  v4 = *(v31 + 64);
  v5 = MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v28 - v7;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v13, v9);
  v14 = sub_2664DFE18();
  v15 = sub_2664E06C8();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_26629C000, v14, v15, "InstalledAppProvider#apps gathering apps for all users...", v16, 2u);
    MEMORY[0x266784AD0](v16, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_2664DE428();
  v17 = swift_allocObject();
  v18 = MEMORY[0x277D84F90];
  *(v17 + 16) = MEMORY[0x277D84F90];
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  if (qword_280F902B8 != -1)
  {
    swift_once();
  }

  v29 = qword_280F902C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072460, &qword_2664E3628);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34E0;
  *(inited + 32) = sub_2662C12F4;
  v28[1] = inited + 32;
  *(inited + 40) = v17;
  *(inited + 48) = sub_2662C1324;
  *(inited + 56) = v19;
  v21 = v31;
  (*(v31 + 16))(v6, v8, v3);
  sub_2662A5550(v30, v34);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v30 = v8;
  v23 = (v4 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = v17;
  *(v24 + 24) = v19;
  (*(v21 + 32))(v24 + v22, v6, v3);
  sub_2662A8618(v34, v24 + v23);
  v25 = (v24 + ((v23 + 47) & 0xFFFFFFFFFFFFFFF8));
  v26 = v33;
  *v25 = v32;
  v25[1] = v26;
  swift_retain_n();
  swift_retain_n();

  _s16SiriAudioSupport5TasksV11parallelize5queue5tasks10completionySo012OS_dispatch_F0C_yyyccdyyctFZ_0(v29, inited, sub_2662C1354, v24);

  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072468, &qword_2664E3630);
  swift_arrayDestroy();
  (*(v21 + 8))(v30, v3);
}

uint64_t sub_2662C1354()
{
  v1 = *(sub_2664DE438() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = (v0 + ((v3 + 47) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_2662B9720(v4, v5, v0 + v2, v0 + v3, v7, v8);
}

uint64_t sub_2662C1428(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroy_5Tm()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662C14F4(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = *(v1 + 64);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2662BD660;

  return sub_2662BAD74(a1, v1 + 16, v4, v5);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662C15EC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_2662BD660;

  return sub_2662BD17C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_2662C16C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t *sub_2662C1710@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t **a3@<X8>)
{
  result = sub_2662BE08C(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t sub_2662C1744(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

unint64_t sub_2662C178C()
{
  result = qword_280F8F688;
  if (!qword_280F8F688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F688);
  }

  return result;
}

unint64_t sub_2662C17E0()
{
  result = qword_280F8F690;
  if (!qword_280F8F690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F690);
  }

  return result;
}

unint64_t sub_2662C18A0(uint64_t *a1, int a2, int a3, uint64_t a4, uint64_t a5)
{
  v35 = a4;
  v36 = a5;
  v39 = a3;
  v34 = a2;
  v40 = sub_2664DFE38();
  v43 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v41 = &v33[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_2664DFE08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v33[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = *a1;
  v12 = a1[1];

  v14 = sub_2664E0848();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v15 = qword_280F91D48;
  sub_2664DFDF8();
  v38 = v15;
  sub_2664DFDC8(v14, &dword_26629C000, v15, "megamodelPredictBundles", 23, 2, v11, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v16 = v8;
  v37 = *(v9 + 8);
  v37(v11, v8);
  v17 = *(v13 + 16);
  if (v17)
  {
    v18 = sub_26640C820(*(v13 + 16), 0);
    v19 = sub_26640C9BC(&v42, v18 + 4, v17, v13);
    sub_2662B793C(v42);
    if (v19 == v17)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v18 = MEMORY[0x277D84F90];
LABEL_7:
  v20 = sub_2662C2A48(v18, v12);
  v21 = sub_2664DEF58();
  if (v5)
  {

    return v20;
  }

  v22 = v16;
  v23 = v21;

  v24 = sub_2662C2314(v23);

  v25 = v24[2];
  if (!v25)
  {
    goto LABEL_12;
  }

  v20 = sub_26640C820(v24[2], 0);
  v26 = sub_266410DDC();
  sub_2662B793C(v42);
  v27 = v40;
  if (v26 != v25)
  {
    __break(1u);
LABEL_12:

    v20 = MEMORY[0x277D84F90];
    v27 = v40;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v27, qword_280F914F0);
  swift_beginAccess();
  (*(v43 + 16))(v41, v28, v27);

  v29 = sub_2664DFE18();
  v30 = sub_2664E06E8();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 134349056;
    *(v31 + 4) = *(v20 + 16);

    _os_log_impl(&dword_26629C000, v29, v30, "PlayMediaAppSelector#rawPredict megamodel found %{public}ld candidates", v31, 0xCu);
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  else
  {
  }

  (*(v43 + 8))(v41, v27);
  if (v39)
  {
    (*(v36 + 8))((v34 & 1) == 0);
  }

  sub_2664E0838();
  sub_2664DFDF8();
  sub_2664DFDD8();
  v37(v11, v22);
  return v20;
}

uint64_t sub_2662C1DA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);

  v37 = sub_26639F100();
  v6 = *(a2 + 16);
  if (!v6)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_25:
    v23 = sub_26639EB98(v7);

    v42[0] = v23;
    sub_2662C2560(v37);
    v24 = v42[0];
    v25 = *(v42[0] + 16);
    if (v25)
    {
      v6 = sub_26640C820(*(v42[0] + 16), 0);
      v26 = sub_26640C9BC(v42, v6 + 4, v25, v24);
      sub_2662B793C(v42[0]);
      v9 = v39;
      v2 = v40;
      v12 = v38;
      if (v26 != v25)
      {
        goto LABEL_40;
      }

      if (v6[2])
      {
LABEL_28:
        if (qword_280F914E8 != -1)
        {
          goto LABEL_41;
        }

        goto LABEL_29;
      }
    }

    else
    {

      v6 = MEMORY[0x277D84F90];
      v9 = v39;
      v2 = v40;
      v12 = v38;
      if (*(MEMORY[0x277D84F90] + 16))
      {
        goto LABEL_28;
      }
    }
  }

  v7 = MEMORY[0x277D84F90];
  v8 = a2 + 32;
  v9 = &unk_2664EA600;
  while (1)
  {
    sub_2662A5550(v8, v42);
    __swift_project_boxed_opaque_existential_1(v42, v42[3]);
    DynamicType = swift_getDynamicType();
    v11 = (*(v42[4] + 16))(DynamicType);
    v12 = *(v11 + 16);
    if (v12)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      v15 = v14 - 32;
      if (v14 < 32)
      {
        v15 = v14 - 17;
      }

      v13[2] = v12;
      v13[3] = 2 * (v15 >> 4);
      v16 = sub_26640C9BC(&v41, v13 + 4, v12, v11);
      sub_2662B793C(v41);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      if (v16 != v12)
      {
        goto LABEL_37;
      }
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      v13 = MEMORY[0x277D84F90];
    }

    v12 = v13[2];
    v17 = *(v7 + 2);
    v2 = v17 + v12;
    if (__OFADD__(v17, v12))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v2 <= *(v7 + 3) >> 1)
    {
      if (v13[2])
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v17 <= v2)
      {
        v19 = v17 + v12;
      }

      else
      {
        v19 = v17;
      }

      v7 = sub_2663846F4(isUniquelyReferenced_nonNull_native, v19, 1, v7);
      if (v13[2])
      {
LABEL_20:
        if ((*(v7 + 3) >> 1) - *(v7 + 2) < v12)
        {
          goto LABEL_38;
        }

        swift_arrayInitWithCopy();

        if (v12)
        {
          v20 = *(v7 + 2);
          v21 = __OFADD__(v20, v12);
          v22 = v20 + v12;
          if (v21)
          {
            goto LABEL_39;
          }

          *(v7 + 2) = v22;
        }

        goto LABEL_4;
      }
    }

    if (v12)
    {
      goto LABEL_36;
    }

LABEL_4:
    v8 += 40;
    v6 = (v6 - 1);
    if (!v6)
    {
      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  swift_once();
LABEL_29:
  v27 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v9[2](v12, v27, v2);

  v28 = sub_2664DFE18();
  v29 = sub_2664E06C8();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v41 = v31;
    *v30 = 136315138;
    v32 = MEMORY[0x2667834D0](v6, MEMORY[0x277D837D0]);
    v34 = v33;

    v35 = sub_2662A320C(v32, v34, &v41);

    *(v30 + 4) = v35;
    _os_log_impl(&dword_26629C000, v28, v29, "AppSelectionSignals#megamodelSignals: didn't convert signals %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x266784AD0](v31, -1, -1);
    MEMORY[0x266784AD0](v30, -1, -1);
  }

  else
  {
  }

  return (v9[1])(v12, v2);
}

unint64_t *sub_2662C229C(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_2662C2474(result, a2, a3);

    return v6;
  }

  return result;
}

unint64_t *sub_2662C2314(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_2662C2474(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_2662C229C(v8, v4, v2);
  result = MEMORY[0x266784AD0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_2662C2474(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + v11) == 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_2664CFA5C(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_2664CFA5C(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2662C2560(uint64_t result)
{
  v2 = 0;
  v21 = result;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (!v6)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(v21 + 48) + ((v2 << 10) | (16 * v9)));
      v12 = *v10;
      v11 = v10[1];
      v13 = *v1;
      if (*(*v1 + 16))
      {
        break;
      }

LABEL_7:
      v1 = v20;
      sub_2664D0458(&v22, v12, v11);

      if (!v6)
      {
        goto LABEL_8;
      }
    }

    sub_2664E0E68();

    sub_2664E0368();
    v14 = sub_2664E0EB8();
    v15 = -1 << *(v13 + 32);
    v16 = v14 & ~v15;
    if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      goto LABEL_7;
    }

    v17 = ~v15;
    while (1)
    {
      v18 = (*(v13 + 48) + 16 * v16);
      v19 = *v18 == v12 && v18[1] == v11;
      if (v19 || (sub_2664E0D88() & 1) != 0)
      {
        break;
      }

      v16 = (v16 + 1) & v17;
      if (((*(v13 + 56 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    v1 = v20;
    sub_2662C2748(v12, v11);
  }

  while (v6);
  while (1)
  {
LABEL_8:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_12;
    }
  }
}

uint64_t sub_2662C2748(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_2664E0E68();
  sub_2664E0368();
  v6 = sub_2664E0EB8();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2664E0D88() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_2664D0D30();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_2662C2884(v8);
  *v2 = v16;
  return v12;
}

unint64_t sub_2662C2884(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_2664E0A28();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_2664E0E68();

        sub_2664E0368();
        v10 = sub_2664E0EB8();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_2662C2A48(uint64_t a1, uint64_t a2)
{
  v92 = a1;
  v3 = sub_2664DEC48();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v105 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v98 = &v82 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724A8, &unk_2664E5330);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = &v82 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B0, &qword_2664E36C0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v82 - v15);
  v88 = sub_2664E0038();
  v87 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v85 = &v82 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_2664E00B8();
  v84 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v83 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = sub_2663858A8(MEMORY[0x277D84F90]);
  v90 = *(a2 + 16);
  v89 = a2;
  if (v90)
  {
    v19 = 0;
    v91 = a2 + 32;
    v103 = (v4 + 16);
    v104 = v13;
    v109 = (v4 + 32);
    v96 = v4 + 40;
    v97 = v11;
    v101 = v4;
    v102 = v16;
    v100 = v3;
LABEL_4:
    sub_2662A5550(v91 + 40 * v19, aBlock);
    v93 = v19 + 1;
    v20 = v13;
    v21 = v111;
    v22 = v112;
    __swift_project_boxed_opaque_existential_1(aBlock, v111);
    v23 = *(v22 + 6);
    v24 = v22;
    v13 = v20;
    v25 = v23(v92, v21, v24);
    v26 = v108;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v114 = v26;
    v28 = *(v25 + 64);
    v95 = v25 + 64;
    v29 = 1 << *(v25 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & v28;
    v94 = (v29 + 63) >> 6;
    v99 = v25;

    v32 = 0;
    while (1)
    {
      v108 = v26;
      v107 = isUniquelyReferenced_nonNull_native;
      if (!v31)
      {
        if (v94 <= v32 + 1)
        {
          v34 = v32 + 1;
        }

        else
        {
          v34 = v94;
        }

        while (1)
        {
          v33 = v32 + 1;
          if (__OFADD__(v32, 1))
          {
            break;
          }

          if (v33 >= v94)
          {
            v106 = v34 - 1;
            v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
            (*(*(v73 - 8) + 56))(v13, 1, 1, v73);
            v31 = 0;
            goto LABEL_19;
          }

          v31 = *(v95 + 8 * v33);
          ++v32;
          if (v31)
          {
            goto LABEL_18;
          }
        }

        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v33 = v32;
LABEL_18:
      v35 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v36 = v35 | (v33 << 6);
      v37 = v98;
      v38 = (*(v99 + 48) + 16 * v36);
      v40 = *v38;
      v39 = v38[1];
      (*(v4 + 16))(v98, *(v99 + 56) + *(v4 + 72) * v36, v3);
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
      v42 = *(v41 + 48);
      v43 = v104;
      *v104 = v40;
      *(v43 + 1) = v39;
      v13 = v43;
      (*(v4 + 32))(&v43[v42], v37, v3);
      (*(*(v41 - 8) + 56))(v13, 0, 1, v41);

      v106 = v33;
      v11 = v97;
LABEL_19:
      sub_2662C34F8(v13, v11);
      v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
      if ((*(*(v44 - 8) + 48))(v11, 1, v44) == 1)
      {
        v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724C0, &unk_2664E36D0);
        v46 = v102;
        (*(*(v45 - 8) + 56))(v102, 1, 1, v45);
        v3 = v100;
        v4 = v101;
      }

      else
      {
        v47 = *(v44 + 48);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724C0, &unk_2664E36D0);
        v49 = v13;
        v51 = *v11;
        v50 = v11[1];
        v52 = v11;
        v53 = v102;
        v3 = v100;
        (*v103)(v102 + *(v48 + 48), v52 + v47, v100);
        *v53 = v51;
        v53[1] = v50;
        v13 = v49;
        v46 = v53;
        v11 = v52;

        sub_2662C3568(v52);
        (*(*(v48 - 8) + 56))(v46, 0, 1, v48);
        v4 = v101;
      }

      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724C0, &unk_2664E36D0);
      if ((*(*(v54 - 8) + 48))(v46, 1, v54) == 1)
      {

        __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
        v19 = v93;
        if (v93 == v90)
        {
          break;
        }

        goto LABEL_4;
      }

      v55 = v11;
      v56 = *v46;
      v57 = v46[1];
      v58 = *v109;
      v59 = v3;
      (*v109)(v105, v46 + *(v54 + 48), v3);
      v60 = v108;
      v62 = sub_2662A3E98(v56, v57);
      v63 = *(v60 + 16);
      v64 = (v61 & 1) == 0;
      v65 = v63 + v64;
      if (__OFADD__(v63, v64))
      {
        goto LABEL_38;
      }

      v66 = v61;
      if (*(v60 + 24) >= v65)
      {
        if (v107)
        {
          v26 = v114;
          if (v61)
          {
            goto LABEL_8;
          }
        }

        else
        {
          sub_266453A9C();
          v26 = v114;
          if (v66)
          {
            goto LABEL_8;
          }
        }
      }

      else
      {
        sub_266450300(v65, v107 & 1);
        v67 = sub_2662A3E98(v56, v57);
        if ((v66 & 1) != (v68 & 1))
        {
          result = sub_2664E0DD8();
          __break(1u);
          return result;
        }

        v62 = v67;
        v26 = v114;
        if (v66)
        {
LABEL_8:

          v3 = v59;
          (*(v4 + 40))(v26[7] + *(v4 + 72) * v62, v105, v59);
          goto LABEL_9;
        }
      }

      v26[(v62 >> 6) + 8] |= 1 << v62;
      v69 = (v26[6] + 16 * v62);
      *v69 = v56;
      v69[1] = v57;
      v3 = v59;
      v58((v26[7] + *(v4 + 72) * v62), v105, v59);
      v70 = v26[2];
      v71 = __OFADD__(v70, 1);
      v72 = v70 + 1;
      if (v71)
      {
        goto LABEL_39;
      }

      v26[2] = v72;
LABEL_9:
      isUniquelyReferenced_nonNull_native = 1;
      v32 = v106;
      v11 = v55;
      v13 = v104;
    }
  }

  if (qword_280F90D30 != -1)
  {
LABEL_40:
    swift_once();
  }

  v74 = swift_allocObject();
  v75 = v108;
  v76 = v89;
  *(v74 + 16) = v108;
  *(v74 + 24) = v76;
  v112 = sub_2662C35D0;
  v113 = v74;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  v111 = &block_descriptor_0;
  v77 = _Block_copy(aBlock);

  v78 = v83;
  sub_2664E0068();
  v114 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v79 = v85;
  v80 = v88;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v78, v79, v77);
  _Block_release(v77);
  (*(v87 + 8))(v79, v80);
  (*(v84 + 8))(v78, v86);

  return v75;
}

uint64_t sub_2662C34F8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724A8, &unk_2664E5330);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2662C3568(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724B8, &qword_2664E36C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2662C35DC()
{
  v0 = sub_2662C3A68(&unk_2877E1490);
  result = swift_arrayDestroy();
  qword_280F91CF0 = v0;
  return result;
}

unint64_t sub_2662C3628(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E36E0;
  strcpy((inited + 32), "isRequestedApp");
  *(inited + 47) = -18;
  v6 = *(v2 + 24);
  if (v6)
  {
    if (*(v2 + 16) == a1 && v6 == a2)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_2664E0D88();
    }
  }

  else
  {
    v8 = 0;
  }

  v9 = MEMORY[0x277D839B0];
  *(inited + 48) = v8 & 1;
  *(inited + 72) = v9;
  *(inited + 80) = 0xD000000000000016;
  *(inited + 88) = 0x80000002664F1050;
  *(inited + 96) = *(v2 + 32);
  *(inited + 120) = v9;
  *(inited + 128) = 0x7269467070417369;
  *(inited + 136) = 0xEF79747261507473;
  Party16bundleIdentifierSbSS_tFZ_0 = _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0(a1, a2);
  *(inited + 168) = v9;
  *(inited + 144) = Party16bundleIdentifierSbSS_tFZ_0 & 1;
  v11 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_2662C37A8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2662C381C()
{
  if (qword_280F90A08 != -1)
  {
    swift_once();
  }
}

uint64_t sub_2662C3878(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  v4 = *(*v1 + 24);
  if (v4)
  {

    sub_2664475B4(a1, v3, v4);
    v3 = v6;
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  *(v2 + 16) = v3;
  *(v2 + 24) = v8;
}

uint64_t sub_2662C3928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(a1);
}

uint64_t sub_2662C39E8(void *a1, void (*a2)(uint64_t *), uint64_t a3)
{
  v5 = a1[3];
  v6 = a1[4];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v5);

  return sub_266417450(v7, a2, a3, v5, v6);
}

uint64_t sub_2662C3A68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724E0, &qword_2664E3790);
    v3 = sub_2664E0AF8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_2664E0E68();

      sub_2664E0368();
      result = sub_2664E0EB8();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_2664E0D88();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84FA0];
  }

  return result;
}

uint64_t sub_2662C3BD0(void *a1, void (*a2)(void *), uint64_t a3)
{
  v44 = a2;
  v5 = sub_2664DFE08();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = v41 - v10;
  v48 = sub_2664DE438();
  v41[0] = *(v48 - 8);
  v12 = MEMORY[0x28223BE20](v48);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v47 = v41 - v15;
  sub_2664DE428();
  v49[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724C8, &qword_2664E3778);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D0, &unk_2664E3780);
  v16 = sub_2664E0318();
  v18 = v17;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v19 = qword_280F91D48;
  sub_2664DFDE8();
  v20 = *(v6 + 16);
  v45 = v5;
  v20(v9, v11, v5);
  v46 = a3;

  v21 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_2664E36F0;
  *(v22 + 56) = MEMORY[0x277D837D0];
  *(v22 + 64) = sub_2662C4094();
  *(v22 + 32) = v16;
  *(v22 + 40) = v18;
  v41[1] = v19;
  sub_2664DFDC8(v21, &dword_26629C000, v19, "appSelectionSignalsSignal", 25, 2, v11, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v22);

  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v43 = v9;
  v23 = sub_26632958C(1019);
  v24 = _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(a1);
  v26 = v25;
  v27 = [a1 privatePlayMediaIntentData];
  v42 = v6;
  if (v27 && (v28 = v27, v29 = [v27 appInferred], v28, v29))
  {
    v30 = [v29 BOOLValue];
  }

  else
  {
    v30 = 0;
  }

  sub_2664DE428();
  sub_2664DE388();
  v32 = v31;
  v33 = *(v41[0] + 8);
  v33(v14, v48);
  v34 = type metadata accessor for SelectedAppSignal();
  v35 = swift_allocObject();
  *(v35 + 16) = v24;
  *(v35 + 24) = v26;
  *(v35 + 32) = v30;
  *(v35 + 40) = v32;
  if (v23)
  {

    sub_26636B8D0();
  }

  v49[3] = v34;
  v49[4] = &off_2877E6310;
  v49[0] = v35;
  sub_2664E0838();
  v36 = v43;
  sub_2664DFDD8();
  v44(v49);
  v37 = *(v42 + 8);
  v38 = v36;
  v39 = v45;
  v37(v38, v45);

  v37(v11, v39);
  v33(v47, v48);
  return __swift_destroy_boxed_opaque_existential_1Tm(v49);
}

unint64_t sub_2662C4094()
{
  result = qword_280F8F670;
  if (!qword_280F8F670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F670);
  }

  return result;
}

void sub_2662C40E8(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_2664E0A68())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072500, &qword_2664F0870);
      v3 = sub_2664E0AF8();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_2664E0A68();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x266783B70](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_2664E0908();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_2662C482C();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_2664E0918();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_2664E0908();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_2662C482C();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_2664E0918();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_2662C43B4(uint64_t a1)
{
  v2 = sub_2664DE578();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724E8, &qword_2664E3798);
    v9 = sub_2664E0AF8();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_2662C46AC(&qword_280F914C8, MEMORY[0x277CC99D8]);
      v16 = sub_2664E0258();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_2662C46AC(&qword_2800724F0, MEMORY[0x277CC99E0]);
          v23 = sub_2664E0298();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_2662C46AC(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2664DE578();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2662C46F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724F8, &unk_2664E37A0);
    v3 = sub_2664E0AF8();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 4 * v4);
      sub_2664E0E68();
      sub_2664E0E98();
      result = sub_2664E0EB8();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 4 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 4 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

unint64_t sub_2662C482C()
{
  result = qword_280072508;
  if (!qword_280072508)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280072508);
  }

  return result;
}

id INPlayMediaIntent.appInferred.getter()
{
  result = [v0 privatePlayMediaIntentData];
  if (result)
  {
    v2 = result;
    v3 = [result appInferred];

    if (v3)
    {
      v4 = [v3 BOOLValue];

      return v4;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id INPlayMediaIntent.recordAppSelectionSignals.getter()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v1 privatePlayMediaIntentData];
  if (v6 && (v7 = v6, v8 = [v6 appSelectionSignalsEnabled], v7, v8))
  {
    v9 = [v8 BOOLValue];
  }

  else
  {
    v9 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v10, v2);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = v9;
    _os_log_impl(&dword_26629C000, v11, v12, "INPlayMediaIntent#recordAppSelectionSignals?: %{BOOL}d", v13, 8u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return v9;
}

void INPlayMediaIntent.disambiguationReasonResponseResultType.getter(char *a1@<X8>)
{
  v3 = [v1 privatePlayMediaIntentData];
  if (v3 && (v4 = v3, v5 = [v3 internalSignals], v4, v5))
  {
    v6 = sub_2664E04A8();

    v7 = byte_2877E1A50;
    v20 = 0xD000000000000022;
    v21 = 0x80000002664F38E0;
    v19 = byte_2877E1A50;
    v8 = ResolutionResultType.rawValue.getter();
    MEMORY[0x2667833B0](v8);

    MEMORY[0x28223BE20](v9);
    v18 = &v20;
    v10 = sub_2662AA720(sub_2662AA7EC, v17, v6);

    if ((v10 & 1) == 0)
    {
      v7 = byte_2877E1A51;
      v20 = 0xD000000000000022;
      v21 = 0x80000002664F38E0;
      v19 = byte_2877E1A51;
      v11 = ResolutionResultType.rawValue.getter();
      MEMORY[0x2667833B0](v11);

      MEMORY[0x28223BE20](v12);
      v18 = &v20;
      v13 = sub_2662AA720(sub_2662AA7EC, v17, v6);

      if ((v13 & 1) == 0)
      {
        v7 = byte_2877E1A52;
        v20 = 0xD000000000000022;
        v21 = 0x80000002664F38E0;
        v19 = byte_2877E1A52;
        v14 = ResolutionResultType.rawValue.getter();
        MEMORY[0x2667833B0](v14);

        MEMORY[0x28223BE20](v15);
        v18 = &v20;
        v16 = sub_2662AA720(sub_2662AA7EC, v17, v6);

        if ((v16 & 1) == 0)
        {
          v7 = 12;
        }
      }
    }
  }

  else
  {
    v7 = 12;
  }

  *a1 = v7;
}

Swift::Void __swiftcall INPlayMediaIntent.markDisambiguationReasonResponseResultType(resolutionResultType:)(SiriAudioSupport::ResolutionResultType resolutionResultType)
{
  if (ResolutionResultType.rawValue.getter() != 0x746C7561666544 || v2 != 0xE700000000000000)
  {
    v4 = sub_2664E0D88();

    if (v4)
    {
      return;
    }

    v5 = ResolutionResultType.rawValue.getter();
    MEMORY[0x2667833B0](v5);

    _s16SiriAudioSupport22InternalSignalsManagerC3add_2toySS_So8INIntentCtFZ_0(0xD000000000000022, 0x80000002664F38E0, v1);
  }
}

INPlayMediaIntent_optional __swiftcall INPlayMediaIntent.toSiriRemembersDonationIntent()()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v46 - v7;
  v9 = sub_2664DE4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [v1 backingStore];
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    [v14 copy];

    sub_2664E09E8();
    swift_unknownObjectRelease();
    sub_2662C1744(0, &qword_280072510, 0x277CD4370);
    if (swift_dynamicCast())
    {
      v15 = v49;
      v16 = [v49 mediaItems];
      if (v16)
      {
        v17 = v16;
        sub_2662C1744(0, &qword_280072520, 0x277CD4360);
        v18 = sub_2664E04A8();

        if (v18 >> 62)
        {
          if (sub_2664E0A68())
          {
LABEL_6:
            if ((v18 & 0xC000000000000001) != 0)
            {
              v19 = MEMORY[0x266783B70](0, v18);
            }

            else
            {
              if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_32;
              }

              v19 = *(v18 + 32);
            }

            v20 = v19;

            v48 = v20;
            v50 = MEMORY[0x277D84F90];
            if (!v20)
            {
LABEL_21:
              sub_2662C5798(&v48);
              sub_2662C1744(0, &qword_280072520, 0x277CD4360);
              v28 = sub_2664E0488();

              [v15 setMediaItems_];

              [v15 setPrivatePlayMediaIntentData_];
              v29 = [v1 identifier];
              if (v29)
              {
                v30 = v29;
                sub_2664E02C8();
              }

              else
              {
                sub_2664DE498();
                sub_2664DE458();
                (*(v10 + 8))(v12, v9);
              }

              v31 = objc_allocWithZone(MEMORY[0x277CD3EC0]);
              v32 = v15;
              v33 = sub_2664E02A8();

              v34 = [v31 initWithIdentifier:v33 backingStore:v32];

              if (qword_280F914E8 != -1)
              {
                swift_once();
              }

              v35 = __swift_project_value_buffer(v2, qword_280F914F0);
              swift_beginAccess();
              (*(v3 + 16))(v8, v35, v2);
              v36 = v34;
              v37 = sub_2664DFE18();
              v38 = sub_2664E06C8();
              v39 = v36;

              if (os_log_type_enabled(v37, v38))
              {
                v40 = swift_slowAlloc();
                v41 = swift_slowAlloc();
                v49 = v41;
                *v40 = 136315138;
                v42 = INPlayMediaIntent.slimDescription.getter();
                v44 = sub_2662A320C(v42, v43, &v49);
                v47 = v2;
                v45 = v44;

                *(v40 + 4) = v45;
                _os_log_impl(&dword_26629C000, v37, v38, "INPlayMediaIntent#toSiriRemembersDonationIntent intent (reformed): %s", v40, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v41);
                MEMORY[0x266784AD0](v41, -1, -1);
                MEMORY[0x266784AD0](v40, -1, -1);

                (*(v3 + 8))(v8, v47);
              }

              else
              {

                (*(v3 + 8))(v8, v2);
              }

              v27 = v39;
              goto LABEL_33;
            }

            v21 = v20;
            MEMORY[0x266783490]();
            if (*((v50 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((v50 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
LABEL_11:
              sub_2664E0518();
              goto LABEL_21;
            }

LABEL_32:
            v47 = v2;
            sub_2664E04C8();
            v2 = v47;
            goto LABEL_11;
          }
        }

        else if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_6;
        }
      }

      v48 = 0;
      goto LABEL_21;
    }
  }

  else
  {
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v6, v22, v2);
  v23 = sub_2664DFE18();
  v24 = sub_2664E06D8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_26629C000, v23, v24, "INPlayMediaIntent#toSiriRemembersDonationIntent error copying intent for use with app selection signals. Returning intent as is", v25, 2u);
    MEMORY[0x266784AD0](v25, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v27 = 0;
LABEL_33:
  result.value.super.super.isa = v27;
  result.is_nil = v26;
  return result;
}

uint64_t sub_2662C5584(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x266783B70](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_2664E0A68();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

void *sub_2662C56AC(void **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

void *sub_2662C56F4(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t sub_2662C5768@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t sub_2662C5798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072518, &qword_2664E37D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2662C581C()
{
  type metadata accessor for PodcastPlaybackHandler.ControllerProvider();
  v13 = swift_allocObject();
  v12 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v1 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v2 = qword_280F8F808;
  v28 = type metadata accessor for MultiUserConnectionProvider();
  v29 = &protocol witness table for MultiUserConnectionProvider;
  *&v27 = v2;
  v3 = type metadata accessor for AccountProvider();
  v4 = swift_allocObject();

  v5 = sub_266360778(v1, &v27, v4);

  v6 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, &v27);
  if (qword_280F905C0 != -1)
  {
    swift_once();
  }

  *&v24 = qword_280F905C8;
  *(&v24 + 5) = *(&qword_280F905C8 + 5);
  v25 = &type metadata for FeatureFlagProvider;
  v26 = &protocol witness table for FeatureFlagProvider;
  v23 = &protocol witness table for SharedContextProvider;
  v22 = type metadata accessor for SharedContextProvider();
  v20 = &protocol witness table for SubscriptionProvider;
  *&v21 = swift_initStaticObject();
  v19 = &type metadata for SubscriptionProvider;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v8 = qword_280F91470;
  v16 = type metadata accessor for SiriKitTaskLoggingProvider();
  v17 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v15 = v8;
  v14[3] = &type metadata for WatchOSSupportProvider;
  v14[4] = &off_2877EC0A0;
  v9 = type metadata accessor for MediaPlaybackProvider();
  v10 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, &type metadata for WatchOSSupportProvider);
  v10[28] = &type metadata for WatchOSSupportProvider;
  v10[29] = &off_2877EC0A0;
  v10[5] = v3;
  v10[6] = &protocol witness table for AccountProvider;
  v10[2] = v5;
  v10[17] = v12;
  v10[18] = v6;
  v10[19] = v7;
  sub_2662A8618(&v27, (v10 + 20));
  sub_2662A8618(&v24, (v10 + 30));
  sub_2662A8618(&v21, (v10 + 35));
  sub_2662A8618(&v18, (v10 + 7));
  sub_2662A8618(&v15, (v10 + 12));

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  v28 = v9;
  v29 = &off_2877F3740;
  *&v27 = v10;
  return (*(v0 + 128))(v13, &v27);
}

uint64_t sub_2662C5B80(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  v5 = __swift_mutable_project_boxed_opaque_existential_1(a2, a2[3]);
  MEMORY[0x28223BE20](v5);
  v7 = (&v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  v9 = sub_2664DD13C(a1, *v7, v4);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v9;
}

uint64_t sub_2662C5C84(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v14 = sub_2662C0CAC;
  v15 = v8;
  v9 = qword_280F91508;

  if (v9 != -1)
  {
    swift_once();
  }

  v10 = qword_280F91D48;
  sub_2664DFDE8();
  v11 = sub_2664E0848();
  sub_2664DFDC8(v11, &dword_26629C000, v10, "podcastPlaybackHandlerController", 32, 2, v7, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_2664DE7B8();
  sub_2664DE7A8();
  sub_2664E0838();
  sub_2664DFDD8();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2662C5E84(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v9, v10, v6);
    v11 = a2;
    v12 = sub_2664DFE18();
    v13 = sub_2664E06D8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = a3;
      v15 = v14;
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v26 = sub_2664E0DE8();
      v27 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v18 = sub_2664E0318();
      v20 = sub_2662A320C(v18, v19, &v28);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_26629C000, v12, v13, "PodcastPlaybackHandler#ControllerReferece Unexpected error initializing podcasts controller: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x266784AD0](v16, -1, -1);
      v21 = v15;
      a3 = v25;
      MEMORY[0x266784AD0](v21, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v22 = 0;
  }

  else
  {
    v22 = a1;
  }

  return a3(v22);
}

uint64_t sub_2662C6110(void *a1, uint64_t a2, void *a3, void (*a4)(__int128 *), uint64_t a5)
{
  v134 = a5;
  v132 = a4;
  v126 = a3;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v120 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v122 = &v120 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v121 = &v120 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v125 = &v120 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v135 = &v120 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v120 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v120 - v26;
  v28 = *(a2 + 16);
  *v147 = *a2;
  *&v147[16] = v28;
  *v148 = *(a2 + 32);
  *&v148[15] = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v29 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v30 = *(v8 + 16);
  v141 = v29;
  v140 = v8 + 16;
  v139 = v30;
  v30(v27, v29, v7);

  v31 = sub_2664DFE18();
  v32 = sub_2664E06C8();

  v33 = os_log_type_enabled(v31, v32);
  v138 = v7;
  v137 = a1;
  if (v33)
  {
    v34 = a1;
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v142 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_2662A320C(v34[7], v34[8], &v142);
    _os_log_impl(&dword_26629C000, v31, v32, "PodcastPlaybackHandler#warm request to warm playback for identifier: %{public}s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    MEMORY[0x266784AD0](v36, -1, -1);
    v37 = v35;
    v7 = v138;
    MEMORY[0x266784AD0](v37, -1, -1);
  }

  v38 = *(v8 + 8);
  v38(v27, v7);
  v39 = v148[16];
  if (v148[16] <= 1u && !v148[16])
  {
    goto LABEL_9;
  }

  v40 = sub_2664E0D88();

  if (v40)
  {
    goto LABEL_11;
  }

  if (v39 != 3)
  {
    v41 = sub_2664E0D88();

    if ((v41 & 1) == 0)
    {
      v139(v14, v141, v7);
      v53 = sub_2664DFE18();
      v54 = sub_2664E06D8();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_26629C000, v53, v54, "PodcastPlaybackHandler#warm PodcastsKit doesn't support next/later locations", v55, 2u);
        MEMORY[0x266784AD0](v55, -1, -1);
      }

      v38(v14, v7);
      v139(v11, v141, v7);
      v56 = sub_2664DFE18();
      v57 = sub_2664E06B8();
      v58 = os_log_type_enabled(v56, v57);
      v59 = v38;
      v60 = v132;
      if (v58)
      {
        v61 = swift_slowAlloc();
        v62 = v7;
        v63 = swift_slowAlloc();
        *&v142 = v63;
        *v61 = 134218498;
        *(v61 + 4) = 3;
        *(v61 + 12) = 2048;
        *(v61 + 14) = 6;
        *(v61 + 22) = 2080;
        *(v61 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664F3D20, &v142);
        _os_log_impl(&dword_26629C000, v56, v57, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v61, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v63);
        MEMORY[0x266784AD0](v63, -1, -1);
        MEMORY[0x266784AD0](v61, -1, -1);

        v64 = v11;
        v65 = v62;
      }

      else
      {

        v64 = v11;
        v65 = v7;
      }

      v59(v64, v65);
      v142 = xmmword_2664E37F0;
      v143 = 0x80000002664F3D20;
      v144 = 1;
      v60(&v142);
      return sub_2662D2F30(v142, *(&v142 + 1), v143, v144);
    }
  }

  else
  {
LABEL_9:
  }

LABEL_11:
  v139(v25, v141, v7);
  v42 = sub_2664DFE18();
  v43 = sub_2664E06E8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 0;
    _os_log_impl(&dword_26629C000, v42, v43, "PodcastPlaybackHandler#warm item manifest...", v44, 2u);
    MEMORY[0x266784AD0](v44, -1, -1);
  }

  v136 = v38;
  v38(v25, v7);
  v45 = *v148;
  v146 = *v148;

  if (*(&v45 + 1))
  {

    v46 = MEMORY[0x277D84F90];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v48 = v135;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v46 = sub_2663846F4(0, *(v46 + 2) + 1, 1, v46);
    }

    v50 = *(v46 + 2);
    v49 = *(v46 + 3);
    if (v50 >= v49 >> 1)
    {
      v46 = sub_2663846F4((v49 > 1), v50 + 1, 1, v46);
    }

    *(v46 + 2) = v50 + 1;
    v130 = v46;
    *&v46[16 * v50 + 32] = v45;
  }

  else
  {
    v130 = MEMORY[0x277D84F90];
    v48 = v135;
  }

  sub_2662D2F40(&v146);
  v51 = *&v147[8];
  v52 = *&v147[16];
  v124 = v45;
  if (*&v147[16])
  {
    if (*&v147[8] == __PAIR128__(0x80000002664F3D40, 0xD000000000000024) || (sub_2664E0D88() & 1) != 0)
    {
      v51 = 0;
      v52 = 0;
    }

    else
    {
    }
  }

  v66 = v137[13];
  if (v66)
  {
    if (v137[12] == 0xD000000000000024 && v66 == 0x80000002664F3D40)
    {
      v67 = 0;
      v66 = 0;
      v68 = v48;
      goto LABEL_37;
    }

    v67 = v137[12];
    v68 = v48;
    if (sub_2664E0D88())
    {
      v67 = 0;
      v66 = 0;
      goto LABEL_37;
    }
  }

  else
  {
    v67 = v137[12];
    v68 = v48;
  }

LABEL_37:
  v139(v68, v141, v7);

  v69 = sub_2664DFE18();
  v70 = sub_2664E06C8();

  v71 = os_log_type_enabled(v69, v70);
  v133 = v8 + 8;
  v123 = *(&v45 + 1);
  v129 = v51;
  v128 = v67;
  v127 = v45;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v145[0] = v73;
    *v72 = 136315394;
    *&v142 = v51;
    *(&v142 + 1) = v52;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v74 = sub_2664E0318();
    v76 = sub_2662A320C(v74, v75, v145);

    *(v72 + 4) = v76;
    *(v72 + 12) = 2080;
    *&v142 = v67;
    *(&v142 + 1) = v66;

    v77 = sub_2664E0318();
    v79 = sub_2662A320C(v77, v78, v145);

    *(v72 + 14) = v79;
    _os_log_impl(&dword_26629C000, v69, v70, "PodcastPlaybackHandler#warm manifest call with sharedUserId: %s and sharedUserIdForPlayableAccount: %s", v72, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v73, -1, -1);
    MEMORY[0x266784AD0](v72, -1, -1);

    v136(v135, v138);
  }

  else
  {

    v136(v68, v7);
  }

  v80 = v52;
  v81 = v137;
  v82 = v137[7];
  v83 = v137[8];
  swift_beginAccess();
  v84 = v81[2];
  v85 = v81[3];
  v86 = *&v147[24];
  v87 = v131;
  v88 = *(*v131 + 184);

  v137 = v86;
  v89 = v88(v82, v83, v84, v85, v129, v80, v128, v127, v86, v130);

  if (!v89)
  {
    v105 = v121;
    v139(v121, v141, v138);
    v106 = sub_2664DFE18();
    v107 = sub_2664E06D8();
    v108 = os_log_type_enabled(v106, v107);
    v109 = v132;
    if (v108)
    {
      v110 = swift_slowAlloc();
      *v110 = 0;
      _os_log_impl(&dword_26629C000, v106, v107, "PodcastPlaybackHandler#warm Failed  to create podcasts manifest", v110, 2u);
      MEMORY[0x266784AD0](v110, -1, -1);
    }

    v111 = v138;
    v112 = v136;
    v136(v105, v138);
    v113 = v122;
    v139(v122, v141, v111);
    v114 = sub_2664DFE18();
    v115 = sub_2664E06B8();
    if (os_log_type_enabled(v114, v115))
    {
      v116 = swift_slowAlloc();
      v117 = v109;
      v118 = swift_slowAlloc();
      *&v142 = v118;
      *v116 = 134218498;
      *(v116 + 4) = 3;
      *(v116 + 12) = 2048;
      *(v116 + 14) = 11;
      *(v116 + 22) = 2080;
      *(v116 + 24) = sub_2662A320C(0xD00000000000001ELL, 0x80000002664F3D70, &v142);
      _os_log_impl(&dword_26629C000, v114, v115, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v116, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v118);
      v119 = v118;
      v109 = v117;
      MEMORY[0x266784AD0](v119, -1, -1);
      MEMORY[0x266784AD0](v116, -1, -1);
    }

    v112(v113, v111);
    v142 = xmmword_2664E3800;
    v143 = 0x80000002664F3D70;
    v144 = 1;
    v109(&v142);
    return sub_2662D2F30(v142, *(&v142 + 1), v143, v144);
  }

  v90 = swift_allocObject();
  v91 = v132;
  v90[2] = v87;
  v90[3] = v91;
  v92 = v134;
  v90[4] = v134;
  v90[5] = v89;
  v93 = v125;
  v94 = v138;
  v139(v125, v141, v138);

  v95 = v89;
  v96 = sub_2664DFE18();
  v97 = sub_2664E06E8();
  if (os_log_type_enabled(v96, v97))
  {
    v98 = swift_slowAlloc();
    *v98 = 0;
    _os_log_impl(&dword_26629C000, v96, v97, "PodcastPlaybackHandler#warm resolving destination...", v98, 2u);
    v99 = v98;
    v94 = v138;
    MEMORY[0x266784AD0](v99, -1, -1);
  }

  v136(v93, v94);
  v100 = swift_allocObject();
  *(v100 + 16) = v91;
  *(v100 + 24) = v92;
  v101 = v126;
  *(v100 + 32) = v126;
  *(v100 + 40) = v87;
  v102 = *&v147[16];
  *(v100 + 48) = *v147;
  *(v100 + 64) = v102;
  *(v100 + 80) = *v148;
  *(v100 + 95) = *&v148[15];
  *(v100 + 104) = sub_2662D2FA8;
  *(v100 + 112) = v90;

  v103 = v101;
  sub_2662D2A64(v147, &v142);

  sub_2662CB14C(v137, v124, v123, sub_2662D2FB4, v100);
}

uint64_t sub_2662C71E4(char a1, char *a2, uint64_t a3, uint64_t a4, void (*a5)(__int128 *), uint64_t a6, void *a7)
{
  v28 = a7;
  v29 = a2;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v27 = a6;
    v20 = a3;
    v21 = a5;
    v22 = v19;
    *v19 = 67109120;
    *(v19 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v17, v18, "PodcastPlaybackHandler#warm computing reference to PodcastsKit controller..., startPlaybackImmediately: %{BOOL}d", v19, 8u);
    v23 = v22;
    a5 = v21;
    a3 = v20;
    a6 = v27;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v24 = *(a4 + 24);

  v25 = v28;

  sub_26630DD68(0, 1, v24, a5, a6, a1 & 1, v25, a4, v29, a3);
}

uint64_t sub_2662C7454(id *a1, void (*a2)(__int128 *), uint64_t a3, int a4, uint64_t a5, uint64_t a6, char *a7, uint64_t a8)
{
  v66 = a7;
  v67 = a6;
  v68 = sub_2664DFE38();
  v14 = *(v68 - 8);
  v15 = MEMORY[0x28223BE20](v68);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v61 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v61 - v20;
  MEMORY[0x28223BE20](v19);
  v24 = &v61 - v23;
  if (*a1)
  {
    v62 = *a1;
    v63 = a8;
    v64 = a4;
    v65 = a5;
    v25 = qword_280F914E8;
    swift_unknownObjectRetain();
    if (v25 != -1)
    {
      swift_once();
    }

    v26 = v68;
    v27 = __swift_project_value_buffer(v68, qword_280F914F0);
    swift_beginAccess();
    v28 = v14;
    v29 = *(v14 + 16);
    v29(v21, v27, v26);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "PodcastPlaybackHandler#warm received valid controller reference", v32, 2u);
      MEMORY[0x266784AD0](v32, -1, -1);
    }

    v33 = *(v28 + 8);
    v33(v21, v26);
    v29(v18, v27, v26);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06C8();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      *&aBlock = v37;
      *v36 = 136446466;
      if (qword_280071B18 != -1)
      {
        swift_once();
      }

      *(v36 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, &aBlock);
      *(v36 + 12) = 1026;
      *(v36 + 14) = v64 & 1;
      _os_log_impl(&dword_26629C000, v34, v35, "PodcastPlaybackHandler#warm %{public}s Starting Podcasts playback immediately?:%{BOOL,public}d", v36, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    v33(v18, v26);
    v38 = v62;
    v39 = [v62 respondsToSelector_];
    v40 = v65;
    v41 = v63;
    if (v39)
    {
      v42 = swift_allocObject();
      v43 = v66;
      v42[2] = v67;
      v42[3] = v43;
      v42[4] = v41;
      v72 = sub_2662D3138;
      v73 = v42;
      *&aBlock = MEMORY[0x277D85DD0];
      *(&aBlock + 1) = 1107296256;
      v70 = sub_2662C7B74;
      v71 = &block_descriptor_124;
      v44 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      [v38 setManifest:v40 startPlayback:v64 & 1 detailedCompletion:v44];
      _Block_release(v44);

      return swift_unknownObjectRelease_n();
    }

    else
    {
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    v66 = v22;
    v67 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v46 = v68;
    v47 = __swift_project_value_buffer(v68, qword_280F914F0);
    swift_beginAccess();
    v48 = *(v14 + 16);
    v48(v24, v47, v46);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06D8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = v14;
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_26629C000, v49, v50, "PodcastPlaybackHandler#warm error loading PodcastsKit controller", v52, 2u);
      v53 = v52;
      v14 = v51;
      MEMORY[0x266784AD0](v53, -1, -1);
    }

    v54 = *(v14 + 8);
    v55 = v68;
    v54(v24, v68);
    v56 = v66;
    v48(v66, v47, v55);
    v57 = sub_2664DFE18();
    v58 = sub_2664E06B8();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&aBlock = v60;
      *v59 = 134218498;
      *(v59 + 4) = 3;
      *(v59 + 12) = 2048;
      *(v59 + 14) = 33;
      *(v59 + 22) = 2080;
      *(v59 + 24) = sub_2662A320C(0xD000000000000021, 0x80000002664F3AE0, &aBlock);
      _os_log_impl(&dword_26629C000, v57, v58, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v59, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x266784AD0](v60, -1, -1);
      MEMORY[0x266784AD0](v59, -1, -1);
    }

    v54(v56, v55);
    aBlock = xmmword_2664E3810;
    v70 = 0x80000002664F3AE0;
    LOBYTE(v71) = 1;
    a2(&aBlock);
    return sub_2662D2F30(aBlock, *(&aBlock + 1), v70, v71);
  }
}

void sub_2662C7B74(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = *(a1 + 32);

  v8 = a4;
  v7(a2, a3, a4);
}

uint64_t sub_2662C7BFC(void *a1, void (*a2)(void), uint64_t a3, void *a4, void (*a5)(__int128 *), uint64_t a6, uint64_t a7, uint64_t a8)
{
  v50 = a7;
  v51 = a5;
  v52 = a4;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v49 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  if (a1)
  {
    v23 = qword_280F914E8;
    v49 = a1;
    if (v23 != -1)
    {
      swift_once();
    }

    v24 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v20, v24, v13);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06C8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = a8;
      v28 = a2;
      v29 = a3;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "PodcastPlaybackHandler#warm going to continuation buildAndStart...", v30, 2u);
      v31 = v30;
      a3 = v29;
      a2 = v28;
      a8 = v27;
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v14 + 8))(v20, v13);
    v32 = swift_allocObject();
    v33 = v52;
    v34 = v49;
    *(v32 + 16) = v51;
    *(v32 + 24) = v34;
    *(v32 + 32) = v33;
    v35 = *(a6 + 16);
    *(v32 + 40) = *a6;
    *(v32 + 56) = v35;
    *(v32 + 72) = *(a6 + 32);
    *(v32 + 87) = *(a6 + 47);
    *(v32 + 96) = v50;
    *(v32 + 104) = a8;
    v36 = v34;

    v37 = v33;
    sub_2662D2A64(a6, &v53);

    sub_2663F4978(0xD00000000000001BLL, 0x80000002664F3DB0, v37, a2, a3, 0, sub_2662D2FE8, v32);
  }

  else
  {
    v51 = a2;
    v52 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v39 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v40 = *(v14 + 16);
    v40(v22, v39, v13);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06D8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "PodcastPlaybackHandler#warm unexpected nil MPCAssistantRemoteControlDestination from media remote", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    v44 = *(v14 + 8);
    v44(v22, v13);
    v40(v17, v39, v13);
    v45 = sub_2664DFE18();
    v46 = sub_2664E06B8();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *&v53 = v48;
      *v47 = 134218498;
      *(v47 + 4) = 3;
      *(v47 + 12) = 2048;
      *(v47 + 14) = 13;
      *(v47 + 22) = 2080;
      *(v47 + 24) = sub_2662A320C(0xD000000000000010, 0x80000002664F3D90, &v53);
      _os_log_impl(&dword_26629C000, v45, v46, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v47, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x266784AD0](v48, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);
    }

    v44(v17, v13);
    v53 = xmmword_2664E3820;
    v54 = 0x80000002664F3D90;
    v55 = 1;
    v51(&v53);
    return sub_2662D2F30(v53, *(&v53 + 1), v54, v55);
  }
}

uint64_t sub_2662C815C(void *a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t), uint64_t a3, void *a4, uint64_t a5, _OWORD *a6, uint64_t (*a7)(uint64_t, uint64_t, uint64_t), uint64_t a8)
{
  v76 = a8;
  v77 = a6;
  v73 = a1;
  v74 = a7;
  v70 = a5;
  v10 = sub_2664DFE08();
  v71 = *(v10 - 8);
  v72 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v68 = v12;
  v69 = &v63 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v75 = &v63 - v13;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v67 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - v18;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  v21 = *(v15 + 16);
  v66 = v20;
  v65 = v21;
  v21(v19, v20, v14);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26629C000, v22, v23, "PodcastPlaybackHandler#warm warm-continuation executing; checking if output devices has this device part of WHA group...", v24, 2u);
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v64 = *(v15 + 8);
  v64(v19, v14);
  v25 = swift_allocObject();
  v26 = v76;
  v27 = v77;
  v28 = v77[1];
  *(v25 + 16) = *v77;
  *(v25 + 32) = v28;
  *(v25 + 48) = v27[2];
  *(v25 + 63) = *(v27 + 47);
  v29 = v73;
  v30 = v74;
  *(v25 + 72) = a4;
  *(v25 + 80) = v30;
  *(v25 + 88) = v26;
  *(v25 + 96) = v29;
  v31 = a2;
  *(v25 + 104) = a2;
  sub_2662D2A64(v27, aBlock);
  v32 = a4;

  sub_2662D2A64(v27, aBlock);
  v33 = v32;

  v34 = [v33 outputDeviceUIDs];
  v35 = sub_2664E04A8();

  v36 = *(v35 + 16);

  if (v36 || (v37 = [v33 hashedOutputDeviceUIDs], v38 = sub_2664E04A8(), v37, v39 = *(v38 + 16), , v39))
  {
    v73 = v33;
    v74 = v31;
    v40 = swift_allocObject();
    *(v40 + 16) = sub_2662D2FFC;
    *(v40 + 24) = v25;
    v41 = qword_280F91508;

    if (v41 != -1)
    {
      swift_once();
    }

    v42 = qword_280F91D48;
    v43 = v75;
    sub_2664DFDE8();
    v44 = v71;
    v45 = v72;
    v46 = v69;
    (*(v71 + 16))(v69, v43, v72);
    v47 = (*(v44 + 80) + 33) & ~*(v44 + 80);
    v48 = (v68 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    *(v49 + 16) = "mediaPlaybackProviderCurrentDeviceApartWHAGroup";
    *(v49 + 24) = 47;
    *(v49 + 32) = 2;
    (*(v44 + 32))(v49 + v47, v46, v45);
    v50 = (v49 + v48);
    *v50 = sub_2662D31E8;
    v50[1] = v40;

    v51 = sub_2664E0848();
    v52 = v75;
    sub_2664DFDC8(v51, &dword_26629C000, v42, "mediaPlaybackProviderCurrentDeviceApartWHAGroup", 47, 2, v75, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
    v53 = swift_allocObject();
    *(v53 + 16) = sub_2662D31E0;
    *(v53 + 24) = v49;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_2662D31EC;
    *(v54 + 24) = v53;
    v55 = swift_allocObject();
    v33 = v73;
    v55[2] = v73;
    v55[3] = sub_2662D31F0;
    v55[4] = v54;
    aBlock[4] = sub_2662D31C0;
    aBlock[5] = v55;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2664B740C;
    aBlock[3] = &block_descriptor_118;
    v56 = _Block_copy(aBlock);
    v57 = v33;

    MEMORY[0x266784170](v70, v56);
    _Block_release(v56);

    (*(v44 + 8))(v52, v45);
  }

  else
  {
    v59 = v67;
    v65(v67, v66, v14);
    v60 = sub_2664DFE18();
    v61 = sub_2664E06C8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_26629C000, v60, v61, "MediaPlaybackProvider#currentDeviceApartOfWHAGroup: no hashed routes, skipping", v62, 2u);
      MEMORY[0x266784AD0](v62, -1, -1);
    }

    v64(v59, v14);
    sub_2662C88D0(0, v77, v33, v74, v76, v73, v31);
  }

  return sub_2662D2B88(v77);
}

uint64_t sub_2662C88D0(char a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v35 = a4;
  v36 = a7;
  v34[1] = a5;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = v34 - v16;
  if ((a1 & 1) != 0 || (v18 = [a3 outputDeviceUIDs], v19 = sub_2664E04A8(), v18, v20 = *(v19 + 16), , !v20))
  {
    if ((*(a2 + 50) & 1) == 0)
    {
      v32 = 0;
      return v35(v32, a6, v36);
    }
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (*(v12 + 16))(v17, v21, v11);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06E8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "PodcastPlaybackHandler#warm: sending to remote WHA destination, starting immediately", v24, 2u);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    (*(v12 + 8))(v17, v11);
  }

  v25 = [a3 outputDeviceUIDs];
  v26 = sub_2664E04A8();

  v27 = *(v26 + 16);

  if (!v27)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (*(v12 + 16))(v15, v28, v11);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06E8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "PodcastPlaybackHandler#warm: starting local playback immediately, preparing audio handoff...", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    if (qword_280071CD8 != -1)
    {
      swift_once();
    }

    sub_2664ABB34(nullsub_3, 0);
  }

  v32 = 1;
  return v35(v32, a6, v36);
}

uint64_t sub_2662C8CB4(uint64_t a1, __int128 *a2, uint64_t a3, void *a4, void (*a5)(void **, __n128), uint64_t a6)
{
  v44 = a5;
  v41 = a1;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v40 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v39 - v14;
  v16 = a2[1];
  v46 = *a2;
  v47 = v16;
  v48[0] = a2[2];
  *(v48 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v42 = v11;
  v39 = *(v11 + 16);
  v39(v15, v17, v10);
  v18 = sub_2664DFE18();
  v19 = sub_2664E06E8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = a4;
    v21 = a3;
    v22 = a6;
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_26629C000, v18, v19, "PodcastPlaybackHandler#play (provisional)", v23, 2u);
    v24 = v23;
    a6 = v22;
    a3 = v21;
    a4 = v20;
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v25 = *(v42 + 8);
  v25(v15, v10);
  if (*(*(&v47 + 1) + 16) && (BYTE2(v46) & 1) == 0)
  {
    v39(v40, v17, v10);
    v30 = sub_2664DFE18();
    v31 = sub_2664E06E8();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = a6;
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26629C000, v30, v31, "PodcastPlaybackHandler#play starting continuation...", v33, 2u);
      v34 = v33;
      a6 = v32;
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    v25(v40, v10);
    v35 = swift_allocObject();
    *(v35 + 16) = v43;
    v36 = v47;
    *(v35 + 24) = v46;
    *(v35 + 40) = v36;
    *(v35 + 56) = v48[0];
    *(v35 + 71) = *(v48 + 15);
    *(v35 + 80) = a4;

    sub_2662D2A64(&v46, v45);
    v37 = a4;
    sub_2663F4978(0xD00000000000001BLL, 0x80000002664F3A70, v37, v44, a6, a3, sub_2662CDCEC, v35);
  }

  else
  {
    if (qword_280071CD8 != -1)
    {
      swift_once();
    }

    v26 = swift_allocObject();
    v27 = v41;
    *(v26 + 16) = v43;
    *(v26 + 24) = v27;
    v28 = v47;
    *(v26 + 32) = v46;
    *(v26 + 48) = v28;
    *(v26 + 64) = v48[0];
    *(v26 + 79) = *(v48 + 15);
    *(v26 + 88) = a3;
    *(v26 + 96) = a4;
    *(v26 + 104) = v44;
    *(v26 + 112) = a6;

    sub_2662D2A64(&v46, v45);

    v29 = a4;

    sub_2664ABB34(sub_2662D2AC0, v26);
  }
}

uint64_t sub_2662C9114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, void (*a7)(void **, __n128), uint64_t a8)
{
  v24 = a5;
  v25 = a8;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v16, v12);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "PodcastPlaybackHandler#play starting continuation...", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  v21 = *(a4 + 16);
  *(v20 + 24) = *a4;
  *(v20 + 40) = v21;
  *(v20 + 56) = *(a4 + 32);
  *(v20 + 71) = *(a4 + 47);
  *(v20 + 80) = a6;

  sub_2662D2A64(a4, v26);
  v22 = a6;
  sub_2663F4978(0xD00000000000001BLL, 0x80000002664F3A70, v22, a7, v25, v24, sub_2662D31BC, v20);
}

uint64_t sub_2662C9378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v28 = a5;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a1;
  v27 = a1;
  v13[4] = a2;
  v14 = qword_280F914E8;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v15, v9);
  v16 = sub_2664DFE18();
  v17 = sub_2664E06E8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_26629C000, v16, v17, "PodcastPlaybackHandler#play resolving destination...", v18, 2u);
    MEMORY[0x266784AD0](v18, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v19 = *(a4 + 24);
  v20 = *(a4 + 32);
  v21 = *(a4 + 40);
  v22 = swift_allocObject();
  v23 = v28;
  *(v22 + 16) = v27;
  *(v22 + 24) = a2;
  *(v22 + 32) = a3;
  *(v22 + 40) = v23;
  v24 = *(a4 + 16);
  *(v22 + 48) = *a4;
  *(v22 + 64) = v24;
  *(v22 + 80) = *(a4 + 32);
  *(v22 + 95) = *(a4 + 47);
  *(v22 + 104) = sub_2662D2B2C;
  *(v22 + 112) = v13;

  v25 = v23;
  sub_2662D2A64(a4, v29);

  sub_2662CB14C(v19, v20, v21, sub_2662D2B38, v22);
}

uint64_t sub_2662C9630(uint64_t a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "PodcastPlaybackHandler#play computing reference to PodcastsKit controller...", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  v14 = *(a1 + 24);

  sub_26630EBB8(0, 1, v14, a2, a3, a1);
}

uint64_t sub_2662C9830(void **a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  v56 = a2;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v54 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v54 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v54 - v18;
  v20 = *a1;
  v57 = a3;
  if (v20)
  {
    v55 = a4;
    v21 = qword_280F914E8;
    swift_unknownObjectRetain();
    if (v21 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v23 = *(v8 + 16);
    v23(v17, v22, v7);
    v24 = sub_2664DFE18();
    v25 = sub_2664E06E8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v54 = v14;
      v27 = v7;
      v28 = v20;
      v29 = v8;
      v30 = v26;
      *v26 = 0;
      _os_log_impl(&dword_26629C000, v24, v25, "PodcastPlaybackHandler#play received valid controller reference", v26, 2u);
      v31 = v30;
      v8 = v29;
      v20 = v28;
      v7 = v27;
      v14 = v54;
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    v32 = *(v8 + 8);
    v32(v17, v7);
    v23(v14, v22, v7);
    v33 = sub_2664DFE18();
    v34 = sub_2664E06E8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      aBlock[0] = v36;
      *v35 = 136446210;
      v37 = v57;
      if (qword_280071B18 != -1)
      {
        swift_once();
      }

      *(v35 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, aBlock);
      _os_log_impl(&dword_26629C000, v33, v34, "PodcastPlaybackHandler#play %{public}s calling...", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266784AD0](v36, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);

      v32(v14, v7);
    }

    else
    {

      v32(v14, v7);
      v37 = v57;
    }

    v50 = swift_allocObject();
    v51 = v56;
    v50[2] = v55;
    v50[3] = v51;
    v50[4] = v37;
    aBlock[4] = sub_2662D2EA4;
    aBlock[5] = v50;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2662C7B74;
    aBlock[3] = &block_descriptor_71;
    v52 = _Block_copy(aBlock);

    [v20 playWithDetailedCompletion_];
    _Block_release(v52);
    return swift_unknownObjectRelease();
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v38 = __swift_project_value_buffer(v7, qword_280F914F0);
    swift_beginAccess();
    v39 = *(v8 + 16);
    v39(v19, v38, v7);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = v8;
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "PodcastPlaybackHandler#play Error loading PodcastsKit controller", v43, 2u);
      v44 = v43;
      v8 = v42;
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    v45 = *(v8 + 8);
    v45(v19, v7);
    v39(v11, v38, v7);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06B8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *&v59 = v49;
      *v48 = 134218498;
      *(v48 + 4) = 3;
      *(v48 + 12) = 2048;
      *(v48 + 14) = 13;
      *(v48 + 22) = 2080;
      *(v48 + 24) = sub_2662A320C(0xD000000000000021, 0x80000002664F3AE0, &v59);
      _os_log_impl(&dword_26629C000, v46, v47, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v48, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v49);
      MEMORY[0x266784AD0](v49, -1, -1);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    v45(v11, v7);
    v59 = xmmword_2664E3830;
    v60 = 0x80000002664F3AE0;
    v56(&v59);
  }
}

uint64_t sub_2662C9EFC(void *a1, uint64_t (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  v92 = a6;
  v93 = a8;
  v87 = a7;
  v90 = a2;
  v91 = a4;
  v94 = a3;
  v10 = sub_2664DFE08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v86 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v89 = &v80 - v14;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v21 = MEMORY[0x28223BE20](v20);
  v23 = &v80 - v22;
  MEMORY[0x28223BE20](v21);
  v26 = &v80 - v25;
  if (a1)
  {
    v83 = v24;
    v84 = a5;
    v85 = v10;
    v27 = qword_280F914E8;
    v88 = a1;
    if (v27 != -1)
    {
      swift_once();
    }

    v28 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v81 = *(v16 + 16);
    v81(v23, v28, v15);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06E8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_26629C000, v29, v30, "PodcastPlaybackHandler#play checking if current device part of the WHA destination...", v31, 2u);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    v32 = *(v16 + 8);
    v82 = v16 + 8;
    v80 = v32;
    v32(v23, v15);
    v33 = swift_allocObject();
    v34 = v92;
    *(v33 + 16) = v91;
    v35 = *(v34 + 1);
    *(v33 + 24) = *v34;
    *(v33 + 40) = v35;
    *(v33 + 56) = *(v34 + 2);
    *(v33 + 71) = *(v34 + 47);
    v37 = v93;
    v36 = v94;
    *(v33 + 80) = v90;
    *(v33 + 88) = v36;
    *(v33 + 96) = v87;
    *(v33 + 104) = v37;

    sub_2662D2A64(v34, aBlock);

    sub_2662D2A64(v34, aBlock);

    v38 = v88;
    v39 = [v88 outputDeviceUIDs];
    v40 = sub_2664E04A8();

    v41 = *(v40 + 16);

    if (v41 || (v42 = [v38 hashedOutputDeviceUIDs], v43 = sub_2664E04A8(), v42, v44 = *(v43 + 16), , v44))
    {
      v45 = swift_allocObject();
      *(v45 + 16) = sub_2662D2B50;
      *(v45 + 24) = v33;
      v46 = qword_280F91508;

      if (v46 != -1)
      {
        swift_once();
      }

      v47 = qword_280F91D48;
      v48 = v89;
      sub_2664DFDE8();
      v49 = v86;
      v50 = v48;
      v51 = v85;
      (*(v11 + 16))(v86, v50, v85);
      v52 = (*(v11 + 80) + 33) & ~*(v11 + 80);
      v53 = (v12 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
      v54 = swift_allocObject();
      *(v54 + 16) = "mediaPlaybackProviderCurrentDeviceApartWHAGroup";
      *(v54 + 24) = 47;
      *(v54 + 32) = 2;
      v55 = v54 + v52;
      v56 = v51;
      (*(v11 + 32))(v55, v49, v51);
      v57 = (v54 + v53);
      *v57 = sub_2662D2B60;
      v57[1] = v45;

      v58 = sub_2664E0848();
      v59 = v89;
      sub_2664DFDC8(v58, &dword_26629C000, v47, "mediaPlaybackProviderCurrentDeviceApartWHAGroup", 47, 2, v89, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
      v60 = swift_allocObject();
      *(v60 + 16) = sub_2662D2B68;
      *(v60 + 24) = v54;
      v61 = swift_allocObject();
      *(v61 + 16) = sub_2662D2B6C;
      *(v61 + 24) = v60;
      v62 = swift_allocObject();
      v38 = v88;
      v62[2] = v88;
      v62[3] = sub_2662D2B74;
      v62[4] = v61;
      aBlock[4] = sub_2662D2B7C;
      aBlock[5] = v62;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2664B740C;
      aBlock[3] = &block_descriptor_65_0;
      v63 = _Block_copy(aBlock);
      v64 = v38;

      MEMORY[0x266784170](v84, v63);
      _Block_release(v63);

      (*(v11 + 8))(v59, v56);
    }

    else
    {
      v81(v83, v28, v15);
      v77 = sub_2664DFE18();
      v78 = sub_2664E06C8();
      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        *v79 = 0;
        _os_log_impl(&dword_26629C000, v77, v78, "MediaPlaybackProvider#currentDeviceApartOfWHAGroup: no hashed routes, skipping", v79, 2u);
        MEMORY[0x266784AD0](v79, -1, -1);
      }

      v80(v83, v15);
      sub_2662D2BDC(0, v92, v90, v94, v87, v93);
    }

    sub_2662D2B88(v92);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v66 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v67 = *(v16 + 16);
    v67(v26, v66, v15);
    v68 = sub_2664DFE18();
    v69 = sub_2664E06D8();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_26629C000, v68, v69, "PodcastPlaybackHandler#play unexpected nil MPCAssistantRemoteControlDestination from media remote", v70, 2u);
      MEMORY[0x266784AD0](v70, -1, -1);
    }

    v71 = v26;
    v72 = *(v16 + 8);
    v72(v71, v15);
    v67(v19, v66, v15);
    v73 = sub_2664DFE18();
    v74 = sub_2664E06B8();
    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v96 = v76;
      *v75 = 134218498;
      *(v75 + 4) = 3;
      *(v75 + 12) = 2048;
      *(v75 + 14) = 13;
      *(v75 + 22) = 2080;
      *(v75 + 24) = sub_2662A320C(0x736544524D6C694ELL, 0xE900000000000074, &v96);
      _os_log_impl(&dword_26629C000, v73, v74, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v75, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v76);
      MEMORY[0x266784AD0](v76, -1, -1);
      MEMORY[0x266784AD0](v75, -1, -1);
    }

    v72(v19, v15);
    v96 = xmmword_2664E3840;
    v97 = 0xE900000000000074;
    v90(&v96);
  }
}

uint64_t sub_2662CA934(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v18[0] = a4;
  v7 = sub_2664E0038();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664E00B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 40) = v18[0];
  aBlock[4] = sub_2662D2F20;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_83;
  v16 = _Block_copy(aBlock);
  sub_2664E0068();
  v18[1] = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2662CABE8(uint64_t a1, uint64_t a2, char a3, int a4)
{
  v19 = a4;
  v7 = sub_2664E0038();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_2664E00B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F90D30 != -1)
  {
    swift_once();
  }

  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  *(v15 + 32) = a3;
  *(v15 + 36) = v19;
  aBlock[4] = sub_2662D2F10;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_77;
  v16 = _Block_copy(aBlock);
  sub_2664E0068();
  v20 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  sub_2664E0A08();
  MEMORY[0x266783800](0, v14, v10, v16);
  _Block_release(v16);
  (*(v8 + 8))(v10, v7);
  (*(v12 + 8))(v14, v11);
}

uint64_t sub_2662CAE9C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10)
{
  v34 = a7;
  v35 = a8;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = objc_allocWithZone(sub_2664DE778());

  v21 = sub_2664DE6F8();
  if (v21)
  {
    v22 = v21;
    v23 = sub_2662CD3DC(v21, a3, a4, a5, a6, v34, v35, a9, a10, MEMORY[0x277D3DF48]);
  }

  else
  {
    v24 = a1;
    v25 = v17;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = v16;
    v27 = __swift_project_value_buffer(v16, qword_280F914F0);
    swift_beginAccess();
    v28 = v19;
    (*(v25 + 16))(v19, v27, v26);

    v29 = sub_2664DFE18();
    v30 = sub_2664E06D8();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v36 = v32;
      *v31 = 136446210;
      *(v31 + 4) = sub_2662A320C(v24, a2, &v36);
      _os_log_impl(&dword_26629C000, v29, v30, "Unexpected error unpacking storeid for episode: %{public}s", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    (*(v25 + 8))(v28, v26);
    return 0;
  }

  return v23;
}

uint64_t sub_2662CB14C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v61 = a2;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v56[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v60 = &v56[-v15];
  v16 = sub_2664DFE08();
  v63 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v56[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_project_boxed_opaque_existential_1((v5 + 32), *(v5 + 56));
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  v62 = v20;
  v59 = *v19;
  v21 = qword_280F91508;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_280F91D48;
  sub_2664DFDE8();
  v23 = sub_2664E0848();
  sub_2664DFDC8(v23, &dword_26629C000, v22, "mediaPlaybackProviderDestination", 32, 2, v18, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  if (a3 && !a1[2])
  {
    v58 = a3;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v41 = v60;
    (*(v11 + 16))(v60, v40, v10);
    v42 = v58;

    v43 = sub_2664DFE18();
    v44 = sub_2664E06E8();

    v57 = v44;
    v45 = os_log_type_enabled(v43, v44);
    v46 = v61;
    if (v45)
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v64 = v48;
      aBlock = v46;
      *v47 = 136315138;
      v66 = v42;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
      v49 = sub_2664E0318();
      v51 = sub_2662A320C(v49, v50, &v64);
      v42 = v58;

      *(v47 + 4) = v51;
      v46 = v61;
      _os_log_impl(&dword_26629C000, v43, v57, "MediaPlaybackProvider#destination Nil or empty hashedRouteUIDs, but non nil seRouteId: %s, will set that", v47, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v48);
      MEMORY[0x266784AD0](v48, -1, -1);
      MEMORY[0x266784AD0](v47, -1, -1);

      (*(v11 + 8))(v60, v10);
    }

    else
    {

      (*(v11 + 8))(v41, v10);
    }

    v36 = [objc_opt_self() systemMediaApplicationDestination];
    v52 = swift_allocObject();
    v53 = v62;
    v52[2] = sub_2662CDCCC;
    v52[3] = v53;
    v52[4] = v59;
    v52[5] = v46;
    v52[6] = v42;
    v69 = sub_2662CDCDC;
    v70 = v52;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_2663A0C48;
    v68 = &block_descriptor_28;
    v54 = _Block_copy(&aBlock);

    [v36 resolveWithQueue:0 routeIdentifiers:0 localPlaybackPermitted:1 audioRoutingInfo:0 completion:v54];
    _Block_release(v54);
  }

  else
  {
    v59 = v22;
    v61 = v16;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v60 = v18;
    v24 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v11 + 16))(v14, v24, v10);

    v25 = sub_2664DFE18();
    v26 = sub_2664E06C8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      aBlock = v28;
      *v27 = 136446722;
      type metadata accessor for MPCAssistantWatchAudioRoutingInfo(0);
      LODWORD(v64) = 0;
      v29 = sub_2664E0318();
      v31 = sub_2662A320C(v29, v30, &aBlock);

      *(v27 + 4) = v31;
      *(v27 + 12) = 2080;
      v64 = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
      v32 = sub_2664E0318();
      v34 = sub_2662A320C(v32, v33, &aBlock);

      *(v27 + 14) = v34;
      *(v27 + 22) = 1026;
      *(v27 + 24) = 1;
      _os_log_impl(&dword_26629C000, v25, v26, "MediaPlaybackProvider#destination for routing: %{public}s, routes: %s, and localPlaybackPermitted: %{BOOL,public}d", v27, 0x1Cu);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v28, -1, -1);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    v16 = v61;
    v35 = [objc_opt_self() systemMediaApplicationDestination];
    v36 = sub_2664E0488();
    v37 = swift_allocObject();
    v38 = v62;
    *(v37 + 16) = sub_2662CDCCC;
    *(v37 + 24) = v38;
    v69 = sub_2662CDCD4;
    v70 = v37;
    aBlock = MEMORY[0x277D85DD0];
    v66 = 1107296256;
    v67 = sub_2663A0C48;
    v68 = &block_descriptor_1;
    v39 = _Block_copy(&aBlock);

    [v35 resolveWithQueue:0 hashedRouteIdentifiers:v36 localPlaybackPermitted:1 audioRoutingInfo:0 completion:v39];
    _Block_release(v39);

    v18 = v60;
  }

  sub_2664E0838();
  sub_2664DFDD8();

  return (*(v63 + 8))(v18, v16);
}

uint64_t sub_2662CB9D8(void *a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);
  v9 = a1;
  v10 = sub_2664DFE18();
  v11 = sub_2664E06C8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v24 = v5;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = a1;
    v26 = v14;
    *v13 = 136446210;
    v15 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072538, &unk_2664E3910);
    v16 = sub_2664E0318();
    v18 = sub_2662A320C(v16, v17, &v26);
    v23 = v4;
    v19 = a2;
    v20 = v18;

    *(v13 + 4) = v20;
    a2 = v19;
    _os_log_impl(&dword_26629C000, v10, v11, "Resolved playback destination as: %{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266784AD0](v14, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);

    (*(v24 + 8))(v7, v23);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return a2(a1);
}

uint64_t sub_2662CBC78()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_2662CBD30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2662C581C();
  *a1 = result;
  return result;
}

uint64_t sub_2662CBDA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_2664DFE08();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2664DE748();
  v12 = sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v13 = qword_280F91D48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D83B88];
  *(v14 + 16) = xmmword_2664E36F0;
  v16 = MEMORY[0x277D83C10];
  *(v14 + 56) = v15;
  *(v14 + 64) = v16;
  *(v14 + 32) = v11;
  sub_2664DFDF8();
  sub_2664DFDC8(v12, &dword_26629C000, v13, a1, a2, a3, v10, "status=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v14);

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_2662CBF74(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4)
{
  v8 = sub_2664DFE08();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v13 = a4;
  v14 = qword_280F91D48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v15 = swift_allocObject();
  v16 = MEMORY[0x277D83B88];
  *(v15 + 16) = xmmword_2664E36F0;
  v17 = MEMORY[0x277D83C10];
  *(v15 + 56) = v16;
  *(v15 + 64) = v17;
  *(v15 + 32) = v13;
  sub_2664DFDF8();
  sub_2664DFDC8(v12, &dword_26629C000, v14, a1, a2, a3, v11, "status=%{signpost.telemetry:number1,public}d enableTelemetry=YES ", 65, 2, v15);

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_2662CC174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8)
{
  v71 = a3;
  v72 = a5;
  v69 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072528, &unk_2664E3900);
  MEMORY[0x28223BE20](v11 - 8);
  v66 = &v60[-v12];
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v60[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_2664DFE08();
  v73 = *(v17 - 8);
  v74 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v60[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v20 = qword_280F91D48;
  sub_2664DFDE8();
  v21 = sub_2664E0848();
  v68 = v20;
  v70 = v19;
  sub_2664DFDC8(v21, &dword_26629C000, v20, "podcastPlaybackHandlerManifest", 30, 2, v19, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v16, v22, v13);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06C8();

  v25 = os_log_type_enabled(v23, v24);
  v67 = v16;
  v26 = a8;
  if (v25)
  {
    v27 = swift_slowAlloc();
    v63 = v13;
    v28 = v27;
    v62 = swift_slowAlloc();
    v75 = a7;
    v76[0] = v62;
    *v28 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
    v64 = a7;
    v29 = sub_2664E0318();
    v61 = v24;
    v31 = sub_2662A320C(v29, v30, v76);

    *(v28 + 4) = v31;
    *(v28 + 12) = 2080;
    v75 = v26;
    v32 = v26;

    v33 = sub_2664E0318();
    v35 = sub_2662A320C(v33, v34, v76);
    a7 = v64;

    *(v28 + 14) = v35;
    _os_log_impl(&dword_26629C000, v23, v61, "ControllerProvider#manifest HashedRouteUIDs: %s & SERouteIds: %s", v28, 0x16u);
    v36 = v62;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v36, -1, -1);
    MEMORY[0x266784AD0](v28, -1, -1);

    (*(v14 + 8))(v67, v63);
    if (!a7)
    {
LABEL_13:
      v65 = a4;
      if (v32 && v32[2])
      {
        v64 = v32[4];
      }

      else
      {
        v64 = 0;
      }

      v67 = sub_2664DE798();
      if (qword_280F90B20 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v47 = qword_280F90B40;
      v46 = unk_280F90B48;
      v48 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
      v49 = *(v47 - 8);
      MEMORY[0x28223BE20](v48);
      v51 = &v60[-((v50 + 15) & 0xFFFFFFFFFFFFFFF0)];
      (*(v49 + 16))(v51);
      (*(v46 + 16))(v47, v46);
      (*(v49 + 8))(v51, v47);
      v52 = *MEMORY[0x277D3DF28];
      v53 = sub_2664DE758();
      v54 = *(v53 - 8);
      v55 = v66;
      (*(v54 + 104))(v66, v52, v53);
      (*(v54 + 56))(v55, 0, 1, v53);
      objc_allocWithZone(sub_2664DE738());

      v45 = sub_2664DE718();
      goto LABEL_20;
    }
  }

  else
  {
    v32 = a8;

    (*(v14 + 8))(v67, v13);
    if (!a7)
    {
      goto LABEL_13;
    }
  }

  if (!a7[2])
  {
    goto LABEL_13;
  }

  v67 = sub_2664DE798();
  v37 = qword_280F90B20;

  if (v37 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v38 = qword_280F90B40;
  v39 = unk_280F90B48;
  v40 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v60[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v41 + 16))(v43);
  (*(v39 + 16))(v38, v39);
  (*(v41 + 8))(v43, v38);
  v44 = objc_allocWithZone(sub_2664DE738());
  v45 = sub_2664DE728();
LABEL_20:
  v56 = v45;
  v57 = sub_2664DE788();

  sub_2664E0838();
  v58 = v70;
  sub_2664DFDD8();
  (*(v73 + 8))(v58, v74);
  return v57;
}

uint64_t sub_2662CCA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t (*a11)(uint64_t, uint64_t, void *))
{
  v77 = a8;
  v74 = a5;
  v75 = a7;
  v73 = a3;
  v79 = a1;
  v80 = a2;
  v13 = a9;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072528, &unk_2664E3900);
  MEMORY[0x28223BE20](v14 - 8);
  v68 = &v63 - v15;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v63 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = sub_2664DFE08();
  v76 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v21 = &v63 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v22 = qword_280F91D48;
  sub_2664DFDE8();
  v23 = sub_2664E0848();
  v71 = v22;
  sub_2664DFDC8(v23, &dword_26629C000, v22, "podcastPlaybackHandlerManifest", 30, 2, v21, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v70 = a11;
  v24 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v19, v24, v16);

  v69 = v16;
  v25 = v19;
  v26 = sub_2664DFE18();
  v27 = sub_2664E06C8();

  v28 = os_log_type_enabled(v26, v27);
  v29 = v17;
  v72 = v21;
  if (v28)
  {
    v30 = swift_slowAlloc();
    v65 = v25;
    v31 = v30;
    v64 = swift_slowAlloc();
    v81 = a9;
    v82[0] = v64;
    *v31 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
    v66 = a9;
    v32 = sub_2664E0318();
    v34 = a6;
    v35 = sub_2662A320C(v32, v33, v82);

    *(v31 + 4) = v35;
    *(v31 + 12) = 2080;
    v81 = a10;
    v36 = a10;

    v37 = sub_2664E0318();
    v39 = sub_2662A320C(v37, v38, v82);

    *(v31 + 14) = v39;
    v13 = v66;
    _os_log_impl(&dword_26629C000, v26, v27, "ControllerProvider#manifest HashedRouteUIDs: %s & SERouteIds: %s", v31, 0x16u);
    v40 = v64;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v40, -1, -1);
    MEMORY[0x266784AD0](v31, -1, -1);

    (*(v29 + 8))(v65, v69);
  }

  else
  {
    v34 = a6;
    v36 = a10;

    (*(v29 + 8))(v25, v69);
  }

  if (v13 && v13[2])
  {
    v69 = sub_2664DE798();
    v41 = qword_280F90B20;

    if (v41 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v42 = qword_280F90B40;
    v43 = unk_280F90B48;
    v44 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v45 = *(v42 - 8);
    MEMORY[0x28223BE20](v44);
    v47 = &v63 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v45 + 16))(v47);
    (*(v43 + 16))(v42, v43);
    (*(v45 + 8))(v47, v42);
    v48 = objc_allocWithZone(sub_2664DE738());
    v49 = sub_2664DE728();
  }

  else
  {
    v69 = a4;
    v67 = v34;
    if (v36)
    {
      if (v36[2])
      {
        v66 = v36[4];
      }

      else
      {
        v66 = 0;
      }
    }

    else
    {
      v66 = 0;
    }

    sub_2664DE798();
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v51 = qword_280F90B40;
    v50 = unk_280F90B48;
    v52 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v53 = *(v51 - 8);
    MEMORY[0x28223BE20](v52);
    v55 = &v63 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v53 + 16))(v55);
    (*(v50 + 16))(v51, v50);
    (*(v53 + 8))(v55, v51);
    v56 = *MEMORY[0x277D3DF28];
    v57 = sub_2664DE758();
    v58 = *(v57 - 8);
    v59 = v68;
    (*(v58 + 104))(v68, v56, v57);
    (*(v58 + 56))(v59, 0, 1, v57);
    objc_allocWithZone(sub_2664DE738());

    v49 = sub_2664DE718();
  }

  v60 = v70(v79, v80, v49);

  sub_2664E0838();
  v61 = v72;
  sub_2664DFDD8();
  (*(v76 + 8))(v61, v78);
  return v60;
}

uint64_t sub_2662CD3DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9, uint64_t (*a10)(uint64_t, uint64_t))
{
  v65 = a7;
  v71 = a5;
  v72 = a6;
  v70 = a4;
  v68 = a2;
  v75 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072528, &unk_2664E3900);
  MEMORY[0x28223BE20](v11 - 8);
  v64 = &v60 - v12;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_2664DFE08();
  v73 = *(v17 - 8);
  v74 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v20 = qword_280F91D48;
  sub_2664DFDE8();
  v21 = sub_2664E0848();
  v67 = v20;
  v69 = v19;
  sub_2664DFDC8(v21, &dword_26629C000, v20, "podcastPlaybackHandlerManifest", 30, 2, v19, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v66 = a10;
  v22 = __swift_project_value_buffer(v13, qword_280F914F0);
  swift_beginAccess();
  (*(v14 + 16))(v16, v22, v13);

  v23 = sub_2664DFE18();
  v24 = sub_2664E06C8();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v62 = v13;
    v26 = v25;
    v27 = swift_slowAlloc();
    v76 = a8;
    v77[0] = v27;
    v61 = v16;
    v28 = v27;
    *v26 = 136315394;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
    v29 = sub_2664E0318();
    v31 = sub_2662A320C(v29, v30, v77);
    v63 = a8;
    v32 = v31;

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    v76 = a9;
    v33 = a9;

    v34 = sub_2664E0318();
    v36 = sub_2662A320C(v34, v35, v77);

    *(v26 + 14) = v36;
    a8 = v63;
    _os_log_impl(&dword_26629C000, v23, v24, "ControllerProvider#manifest HashedRouteUIDs: %s & SERouteIds: %s", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v28, -1, -1);
    MEMORY[0x266784AD0](v26, -1, -1);

    (*(v14 + 8))(v61, v62);
    if (!a8)
    {
LABEL_13:
      if (v33 && v33[2])
      {
        v63 = v33[4];
      }

      else
      {
        v63 = 0;
      }

      v65 = sub_2664DE798();
      if (qword_280F90B20 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v46 = qword_280F90B40;
      v47 = unk_280F90B48;
      v48 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
      v49 = *(v46 - 8);
      MEMORY[0x28223BE20](v48);
      v51 = &v60 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v49 + 16))(v51);
      (*(v47 + 16))(v46, v47);
      (*(v49 + 8))(v51, v46);
      v52 = *MEMORY[0x277D3DF28];
      v53 = sub_2664DE758();
      v54 = *(v53 - 8);
      v55 = v64;
      (*(v54 + 104))(v64, v52, v53);
      (*(v54 + 56))(v55, 0, 1, v53);
      objc_allocWithZone(sub_2664DE738());

      v45 = sub_2664DE718();
      goto LABEL_20;
    }
  }

  else
  {
    v33 = a9;

    (*(v14 + 8))(v16, v13);
    if (!a8)
    {
      goto LABEL_13;
    }
  }

  if (!a8[2])
  {
    goto LABEL_13;
  }

  v65 = sub_2664DE798();
  v37 = qword_280F90B20;

  if (v37 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v38 = qword_280F90B40;
  v39 = unk_280F90B48;
  v40 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v60 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v41 + 16))(v43);
  (*(v39 + 16))(v38, v39);
  (*(v41 + 8))(v43, v38);
  v44 = objc_allocWithZone(sub_2664DE738());
  v45 = sub_2664DE728();
LABEL_20:
  v56 = v45;
  v57 = v66(v75, v45);

  sub_2664E0838();
  v58 = v69;
  sub_2664DFDD8();
  (*(v73 + 8))(v58, v74);
  return v57;
}

uint64_t sub_2662CDCFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2662D2EBC();
  if (sub_2664E09B8())
  {
    v4 = 1;
  }

  else
  {
    v4 = sub_2664E09B8();
  }

  return v4 & 1;
}

uint64_t sub_2662CDDCC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(_BYTE *), uint64_t a8)
{
  v270 = a8;
  v271 = a7;
  v268 = a6;
  v269 = a5;
  v272 = a4;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v267 = &v247 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v275 = &v247 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v266 = &v247 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v274 = &v247 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v265 = &v247 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v259 = &v247 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v264 = &v247 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v258 = &v247 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v252 = &v247 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v251 = &v247 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v248 = &v247 - v34;
  v35 = MEMORY[0x28223BE20](v33);
  v250 = &v247 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v249 = &v247 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v263 = &v247 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v257 = &v247 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v262 = &v247 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v254 = &v247 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v261 = &v247 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v256 = &v247 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v260 = &v247 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v255 = &v247 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v253 = &v247 - v56;
  MEMORY[0x28223BE20](v55);
  v58 = &v247 - v57;
  if (a3)
  {
    v59 = a2;
  }

  else
  {
    v59 = 0;
  }

  v278 = v59;
  if (a3)
  {
    v60 = a3;
  }

  else
  {
    v60 = 0xE000000000000000;
  }

  v61 = qword_280F914E8;

  if (v61 != -1)
  {
    swift_once();
  }

  v62 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v276 = *(v12 + 16);
  v277 = v62;
  v276(v58, v62, v11);

  v63 = sub_2664DFE18();
  v64 = sub_2664E06E8();

  v65 = os_log_type_enabled(v63, v64);
  v66 = v11;
  v273 = v60;
  if (v65)
  {
    v67 = v12;
    v68 = v11;
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v281 = v70;
    *v69 = 136315138;
    *(v69 + 4) = sub_2662A320C(v278, v60, v281);
    _os_log_impl(&dword_26629C000, v63, v64, "PodcastPlaybackHandler#_validateResult errorOnion: '%s'", v69, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v70);
    MEMORY[0x266784AD0](v70, -1, -1);
    v71 = v69;
    v66 = v68;
    v12 = v67;
    MEMORY[0x266784AD0](v71, -1, -1);
  }

  v72 = *(v12 + 8);
  v72(v58, v66);
  v74 = v274;
  v73 = v275;
  v75 = v276;
  if (a1 <= 3)
  {
    v81 = v278;
    if (a1 > 1)
    {
      if (a1 == 2)
      {
        v109 = v255;
        v276(v255, v277, v66);
        v110 = sub_2664DFE18();
        v111 = sub_2664E06D8();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          *v281 = v113;
          *v112 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v112 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v281);
          *(v112 + 12) = 2050;
          *(v112 + 14) = sub_2664DE748();
          _os_log_impl(&dword_26629C000, v110, v111, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result failed because explicit content: %{public}ld", v112, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v113);
          MEMORY[0x266784AD0](v113, -1, -1);
          MEMORY[0x266784AD0](v112, -1, -1);

          v72(v255, v66);
          v75 = v276;
        }

        else
        {

          v72(v109, v66);
        }

        *v281 = 0x746963696C707845;
        *&v281[8] = 0xEF746E65746E6F43;
        MEMORY[0x2667833B0](v278, v273);

        v163 = *v281;
        v164 = v260;
        v75(v260, v277, v66);

        v165 = sub_2664DFE18();
        v166 = sub_2664E06B8();
        if (os_log_type_enabled(v165, v166))
        {
          v167 = swift_slowAlloc();
          v168 = swift_slowAlloc();
          *v281 = v168;
          *v167 = 134218498;
          *(v167 + 4) = 3;
          *(v167 + 12) = 2048;
          *(v167 + 14) = 17;
          *(v167 + 22) = 2080;
          v169 = v66;
          v170 = sub_2662A320C(v163, *(&v163 + 1), v281);

          *(v167 + 24) = v170;
          _os_log_impl(&dword_26629C000, v165, v166, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v167, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v168);
          MEMORY[0x266784AD0](v168, -1, -1);
          MEMORY[0x266784AD0](v167, -1, -1);

          v171 = v260;
          v172 = v169;
        }

        else
        {

          v171 = v164;
          v172 = v66;
        }

        v72(v171, v172);
        v152 = v268;
        *v281 = 785;
        *&v281[8] = v163;
        v271(v281);

        a1 = 2;
      }

      else
      {
        v94 = v254;
        v276(v254, v277, v66);
        v95 = sub_2664DFE18();
        v96 = sub_2664E06D8();
        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *v281 = v98;
          *v97 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v97 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v281);
          *(v97 + 12) = 2050;
          *(v97 + 14) = sub_2664DE748();
          _os_log_impl(&dword_26629C000, v95, v96, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result failed because server is not reachable: %{public}ld", v97, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v98);
          MEMORY[0x266784AD0](v98, -1, -1);
          MEMORY[0x266784AD0](v97, -1, -1);

          v72(v94, v66);
          v81 = v278;
        }

        else
        {

          v72(v94, v66);
        }

        *v281 = 0xD000000000000011;
        *&v281[8] = 0x80000002664F3D00;
        MEMORY[0x2667833B0](v81, v273);

        v142 = *v281;
        v143 = v262;
        v75(v262, v277, v66);

        v144 = sub_2664DFE18();
        v145 = sub_2664E06B8();
        if (os_log_type_enabled(v144, v145))
        {
          v146 = swift_slowAlloc();
          v147 = swift_slowAlloc();
          *v281 = v147;
          *v146 = 134218498;
          *(v146 + 4) = 3;
          *(v146 + 12) = 2048;
          *(v146 + 14) = 153;
          *(v146 + 22) = 2080;
          v148 = v66;
          v149 = sub_2662A320C(v142, *(&v142 + 1), v281);

          *(v146 + 24) = v149;
          _os_log_impl(&dword_26629C000, v144, v145, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v146, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v147);
          MEMORY[0x266784AD0](v147, -1, -1);
          MEMORY[0x266784AD0](v146, -1, -1);

          v150 = v262;
          v151 = v148;
        }

        else
        {

          v150 = v143;
          v151 = v66;
        }

        v72(v150, v151);
        v152 = v268;
        *v281 = 926;
        *&v281[8] = v142;
        v271(v281);

        a1 = 3;
      }

      return sub_2662CA934(v272, v269, v152, a1);
    }

    if (!a1)
    {

      v104 = v253;
      v75(v253, v277, v66);
      v105 = sub_2664DFE18();
      v106 = sub_2664E06E8();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        v108 = swift_slowAlloc();
        *v281 = v108;
        *v107 = 136446466;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v107 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v281);
        *(v107 + 12) = 2050;
        *(v107 + 14) = sub_2664DE748();
        _os_log_impl(&dword_26629C000, v105, v106, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result succeeded with code: %{public}ld", v107, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v108);
        MEMORY[0x266784AD0](v108, -1, -1);
        MEMORY[0x266784AD0](v107, -1, -1);
      }

      v72(v104, v66);
      memset(v281, 0, sizeof(v281));
      v271(v281);
      a1 = 0;
      goto LABEL_104;
    }

    if (a1 != 1)
    {
LABEL_57:
      v276(v275, v277, v66);
      v129 = sub_2664DFE18();
      v130 = sub_2664E06D8();
      if (os_log_type_enabled(v129, v130))
      {
        v131 = swift_slowAlloc();
        v132 = swift_slowAlloc();
        *v281 = v132;
        *v131 = 136446466;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v131 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v281);
        *(v131 + 12) = 2050;
        *(v131 + 14) = sub_2664DE748();
        _os_log_impl(&dword_26629C000, v129, v130, "PodcastPlaybackHandler#_validateResult %{public}s result failed with unknown error code: %{public}ld", v131, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v132);
        MEMORY[0x266784AD0](v132, -1, -1);
        MEMORY[0x266784AD0](v131, -1, -1);

        v72(v275, v66);
        v75 = v276;
      }

      else
      {

        v72(v73, v66);
      }

      strcpy(v281, "UnknownError_");
      *&v281[14] = -4864;
      v279 = sub_2664DE748();
      v213 = sub_2664E0D48();
      MEMORY[0x2667833B0](v213);

      MEMORY[0x2667833B0](v278, v273);

      v214 = *v281;
      v215 = v267;
      v75(v267, v277, v66);

      v216 = sub_2664DFE18();
      v217 = sub_2664E06B8();
      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        v219 = swift_slowAlloc();
        v277 = v12;
        v278 = v66;
        v220 = v219;
        *v281 = v219;
        *v218 = 134218498;
        *(v218 + 4) = 3;
        *(v218 + 12) = 2048;
        *(v218 + 14) = 4;
        *(v218 + 22) = 2080;
        v221 = v214;
        v222 = sub_2662A320C(v214, *(&v214 + 1), v281);

        *(v218 + 24) = v222;
        _os_log_impl(&dword_26629C000, v216, v217, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v218, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v220);
        MEMORY[0x266784AD0](v220, -1, -1);
        MEMORY[0x266784AD0](v218, -1, -1);

        v72(v267, v278);
      }

      else
      {

        v72(v215, v66);
        v221 = v214;
      }

      *v281 = 772;
      *&v281[8] = v221;
      *&v281[16] = *(&v214 + 1);
      v271(v281);

LABEL_104:
      v152 = v268;
      return sub_2662CA934(v272, v269, v152, a1);
    }

    v82 = v273;
    *v281 = v278;
    *&v281[8] = v273;
    v279 = 0x2934202C333828;
    v280 = 0xE700000000000000;
    sub_2662D2EBC();
    if (sub_2664E09B8())
    {
      *v281 = 0xD000000000000012;
      *&v281[8] = 0x80000002664F3BB0;
      MEMORY[0x2667833B0](v81, v82);

      v83 = *&v281[8];
      v84 = *v281;
      v85 = v252;
      v75(v252, v277, v66);

      v86 = sub_2664DFE18();
      v87 = sub_2664E06B8();
      if (os_log_type_enabled(v86, v87))
      {
        v88 = swift_slowAlloc();
        v89 = swift_slowAlloc();
        *v281 = v89;
        *v88 = 134218498;
        *(v88 + 4) = 3;
        *(v88 + 12) = 2048;
        *(v88 + 14) = 152;
        *(v88 + 22) = 2080;
        v90 = v66;
        v91 = sub_2662A320C(v84, v83, v281);

        *(v88 + 24) = v91;
        _os_log_impl(&dword_26629C000, v86, v87, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v88, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v89);
        MEMORY[0x266784AD0](v89, -1, -1);
        MEMORY[0x266784AD0](v88, -1, -1);

        v92 = v252;
        v93 = v90;
      }

      else
      {

        v92 = v85;
        v93 = v66;
      }

      v72(v92, v93);
      v152 = v268;
      v223 = 924;
LABEL_107:
      *v281 = v223;
      *&v281[8] = v84;
LABEL_120:
      *&v281[16] = v83;
      v271(v281);

      a1 = 1;
      return sub_2662CA934(v272, v269, v152, a1);
    }

    *v281 = v81;
    *&v281[8] = v82;
    v279 = 0x293731202C323328;
    v280 = 0xE800000000000000;
    if (sub_2664E09B8())
    {

      v83 = 0x80000002664F3B80;
      v135 = v251;
      v75(v251, v277, v66);
      v136 = sub_2664DFE18();
      v137 = sub_2664E06B8();
      if (os_log_type_enabled(v136, v137))
      {
        v138 = v135;
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *v281 = v140;
        *v139 = 134218498;
        *(v139 + 4) = 3;
        *(v139 + 12) = 2048;
        *(v139 + 14) = 50;
        *(v139 + 22) = 2080;
        *(v139 + 24) = sub_2662A320C(0xD000000000000021, 0x80000002664F3B80, v281);
        _os_log_impl(&dword_26629C000, v136, v137, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v139, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v140);
        MEMORY[0x266784AD0](v140, -1, -1);
        MEMORY[0x266784AD0](v139, -1, -1);

        v141 = v138;
      }

      else
      {

        v141 = v135;
      }

      v72(v141, v66);
      v152 = v268;
      v231 = xmmword_2664E3860;
    }

    else
    {
      if ((sub_2662CDCFC(v81, v82, v133, v134) & 1) == 0)
      {
        v232 = v249;
        v75(v249, v277, v66);
        v233 = sub_2664DFE18();
        v234 = sub_2664E06D8();
        if (os_log_type_enabled(v233, v234))
        {
          v235 = swift_slowAlloc();
          v236 = swift_slowAlloc();
          *v281 = v236;
          *v235 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v235 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v281);
          *(v235 + 12) = 2050;
          *(v235 + 14) = sub_2664DE748();
          _os_log_impl(&dword_26629C000, v233, v234, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result failed : %{public}ld", v235, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v236);
          MEMORY[0x266784AD0](v236, -1, -1);
          MEMORY[0x266784AD0](v235, -1, -1);

          v72(v249, v66);
          v81 = v278;
        }

        else
        {

          v72(v232, v66);
        }

        *v281 = 0xD000000000000015;
        *&v281[8] = 0x80000002664F3CC0;
        MEMORY[0x2667833B0](v81, v273);

        v83 = *&v281[8];
        v84 = *v281;
        v238 = v250;
        v75(v250, v277, v66);

        v239 = sub_2664DFE18();
        v240 = sub_2664E06B8();
        if (os_log_type_enabled(v239, v240))
        {
          v241 = swift_slowAlloc();
          v242 = swift_slowAlloc();
          *v281 = v242;
          *v241 = 134218498;
          *(v241 + 4) = 3;
          *(v241 + 12) = 2048;
          *(v241 + 14) = 4;
          *(v241 + 22) = 2080;
          v243 = v66;
          v244 = sub_2662A320C(v84, v83, v281);

          *(v241 + 24) = v244;
          _os_log_impl(&dword_26629C000, v239, v240, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v241, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v242);
          MEMORY[0x266784AD0](v242, -1, -1);
          MEMORY[0x266784AD0](v241, -1, -1);

          v245 = v250;
          v246 = v243;
        }

        else
        {

          v245 = v238;
          v246 = v66;
        }

        v72(v245, v246);
        v152 = v268;
        v223 = 772;
        goto LABEL_107;
      }

      v83 = 0x80000002664F3B60;
      v224 = v248;
      v75(v248, v277, v66);
      v225 = sub_2664DFE18();
      v226 = sub_2664E06B8();
      if (os_log_type_enabled(v225, v226))
      {
        v227 = v224;
        v228 = swift_slowAlloc();
        v229 = swift_slowAlloc();
        *v281 = v229;
        *v228 = 134218498;
        *(v228 + 4) = 3;
        *(v228 + 12) = 2048;
        *(v228 + 14) = 154;
        *(v228 + 22) = 2080;
        *(v228 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664F3B60, v281);
        _os_log_impl(&dword_26629C000, v225, v226, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v228, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v229);
        MEMORY[0x266784AD0](v229, -1, -1);
        MEMORY[0x266784AD0](v228, -1, -1);

        v230 = v227;
      }

      else
      {

        v230 = v224;
      }

      v72(v230, v66);
      v152 = v268;
      v231 = xmmword_2664E3850;
    }

    *v281 = v231;
    goto LABEL_120;
  }

  v76 = v278;
  if (a1 <= 5)
  {
    if (a1 == 4)
    {
      v119 = v256;
      v276(v256, v277, v66);
      v120 = sub_2664DFE18();
      v121 = sub_2664E06D8();
      if (os_log_type_enabled(v120, v121))
      {
        v122 = swift_slowAlloc();
        v123 = swift_slowAlloc();
        *v281 = v123;
        *v122 = 136446466;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v122 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v281);
        *(v122 + 12) = 2050;
        *(v122 + 14) = sub_2664DE748();
        _os_log_impl(&dword_26629C000, v120, v121, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result failed because there is no unplayed episode: %{public}ld", v122, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v123);
        MEMORY[0x266784AD0](v123, -1, -1);
        MEMORY[0x266784AD0](v122, -1, -1);

        v72(v256, v66);
        v76 = v278;
      }

      else
      {

        v72(v119, v66);
      }

      *v281 = 0xD000000000000012;
      *&v281[8] = 0x80000002664F3C30;
      MEMORY[0x2667833B0](v76, v273);

      v183 = *v281;
      v184 = v261;
      v75(v261, v277, v66);

      v185 = sub_2664DFE18();
      v186 = sub_2664E06B8();
      if (os_log_type_enabled(v185, v186))
      {
        v187 = swift_slowAlloc();
        v188 = swift_slowAlloc();
        *v281 = v188;
        *v187 = 134218498;
        *(v187 + 4) = 3;
        *(v187 + 12) = 2048;
        *(v187 + 14) = 19;
        *(v187 + 22) = 2080;
        v189 = v66;
        v190 = sub_2662A320C(v183, *(&v183 + 1), v281);

        *(v187 + 24) = v190;
        _os_log_impl(&dword_26629C000, v185, v186, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v187, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v188);
        MEMORY[0x266784AD0](v188, -1, -1);
        MEMORY[0x266784AD0](v187, -1, -1);

        v191 = v261;
        v192 = v189;
      }

      else
      {

        v191 = v184;
        v192 = v66;
      }

      v72(v191, v192);
      v152 = v268;
      *v281 = 787;
      *&v281[8] = v183;
      v271(v281);

      a1 = 4;
    }

    else
    {
      v99 = v258;
      v276(v258, v277, v66);
      v100 = sub_2664DFE18();
      v101 = sub_2664E06D8();
      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *v281 = v103;
        *v102 = 136446466;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v102 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v281);
        *(v102 + 12) = 2050;
        *(v102 + 14) = sub_2664DE748();
        _os_log_impl(&dword_26629C000, v100, v101, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result not subscribed: %{public}ld", v102, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v103);
        MEMORY[0x266784AD0](v103, -1, -1);
        MEMORY[0x266784AD0](v102, -1, -1);

        v72(v258, v66);
        v76 = v278;
      }

      else
      {

        v72(v99, v66);
      }

      strcpy(v281, "NoContent");
      *&v281[10] = 0;
      *&v281[12] = -385875968;
      MEMORY[0x2667833B0](v76, v273);

      v153 = *v281;
      v154 = v264;
      v75(v264, v277, v66);

      v155 = sub_2664DFE18();
      v156 = sub_2664E06B8();
      if (os_log_type_enabled(v155, v156))
      {
        v157 = swift_slowAlloc();
        v158 = swift_slowAlloc();
        *v281 = v158;
        *v157 = 134218498;
        *(v157 + 4) = 3;
        *(v157 + 12) = 2048;
        *(v157 + 14) = 44;
        *(v157 + 22) = 2080;
        v159 = v66;
        v160 = sub_2662A320C(v153, *(&v153 + 1), v281);

        *(v157 + 24) = v160;
        _os_log_impl(&dword_26629C000, v155, v156, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v157, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v158);
        MEMORY[0x266784AD0](v158, -1, -1);
        MEMORY[0x266784AD0](v157, -1, -1);

        v161 = v264;
        v162 = v159;
      }

      else
      {

        v161 = v154;
        v162 = v66;
      }

      v72(v161, v162);
      v152 = v268;
      *v281 = 813;
      *&v281[8] = v153;
      v271(v281);

      a1 = 5;
    }
  }

  else
  {
    switch(a1)
    {
      case 6:
        v114 = v257;
        v276(v257, v277, v66);
        v115 = sub_2664DFE18();
        v116 = sub_2664E06D8();
        if (os_log_type_enabled(v115, v116))
        {
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          *v281 = v118;
          *v117 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v117 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v281);
          *(v117 + 12) = 2050;
          *(v117 + 14) = sub_2664DE748();
          _os_log_impl(&dword_26629C000, v115, v116, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result failed because max stream count has been reached: %{public}ld", v117, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v118);
          MEMORY[0x266784AD0](v118, -1, -1);
          MEMORY[0x266784AD0](v117, -1, -1);

          v72(v257, v66);
          v76 = v278;
        }

        else
        {

          v72(v114, v66);
        }

        *v281 = 0xD000000000000015;
        *&v281[8] = 0x80000002664F3CE0;
        MEMORY[0x2667833B0](v76, v273);

        v173 = *v281;
        v174 = v263;
        v75(v263, v277, v66);

        v175 = sub_2664DFE18();
        v176 = sub_2664E06B8();
        if (os_log_type_enabled(v175, v176))
        {
          v177 = swift_slowAlloc();
          v178 = swift_slowAlloc();
          *v281 = v178;
          *v177 = 134218498;
          *(v177 + 4) = 3;
          *(v177 + 12) = 2048;
          *(v177 + 14) = 14;
          *(v177 + 22) = 2080;
          v179 = v66;
          v180 = sub_2662A320C(v173, *(&v173 + 1), v281);

          *(v177 + 24) = v180;
          _os_log_impl(&dword_26629C000, v175, v176, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v177, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v178);
          MEMORY[0x266784AD0](v178, -1, -1);
          MEMORY[0x266784AD0](v177, -1, -1);

          v181 = v263;
          v182 = v179;
        }

        else
        {

          v181 = v174;
          v182 = v66;
        }

        v72(v181, v182);
        v152 = v268;
        *v281 = 782;
        *&v281[8] = v173;
        v271(v281);

        a1 = 6;
        break;
      case 7:
        v124 = v259;
        v276(v259, v277, v66);
        v125 = sub_2664DFE18();
        v126 = sub_2664E06D8();
        if (os_log_type_enabled(v125, v126))
        {
          v127 = swift_slowAlloc();
          v128 = swift_slowAlloc();
          *v281 = v128;
          *v127 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v127 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v281);
          *(v127 + 12) = 2050;
          *(v127 + 14) = sub_2664DE748();
          _os_log_impl(&dword_26629C000, v125, v126, "PodcastPlaybackHandler#_validateResult %{public}s  podcast was not connected to the internet: %{public}ld", v127, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v128);
          MEMORY[0x266784AD0](v128, -1, -1);
          MEMORY[0x266784AD0](v127, -1, -1);

          v72(v259, v66);
          v76 = v278;
        }

        else
        {

          v72(v124, v66);
        }

        strcpy(v281, "NetworkError");
        v281[13] = 0;
        *&v281[14] = -5120;
        MEMORY[0x2667833B0](v76, v273);

        v203 = *v281;
        v204 = v265;
        v75(v265, v277, v66);

        v205 = sub_2664DFE18();
        v206 = sub_2664E06B8();
        if (os_log_type_enabled(v205, v206))
        {
          v207 = swift_slowAlloc();
          v208 = swift_slowAlloc();
          *v281 = v208;
          *v207 = 134218498;
          *(v207 + 4) = 3;
          *(v207 + 12) = 2048;
          *(v207 + 14) = 36;
          *(v207 + 22) = 2080;
          v209 = v66;
          v210 = sub_2662A320C(v203, *(&v203 + 1), v281);

          *(v207 + 24) = v210;
          _os_log_impl(&dword_26629C000, v205, v206, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v207, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v208);
          MEMORY[0x266784AD0](v208, -1, -1);
          MEMORY[0x266784AD0](v207, -1, -1);

          v211 = v265;
          v212 = v209;
        }

        else
        {

          v211 = v204;
          v212 = v66;
        }

        v72(v211, v212);
        v152 = v268;
        *v281 = 805;
        *&v281[8] = v203;
        v271(v281);

        a1 = 7;
        break;
      case 8:
        v276(v274, v277, v66);
        v77 = sub_2664DFE18();
        v78 = sub_2664E06D8();
        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          *v281 = v80;
          *v79 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v79 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v281);
          *(v79 + 12) = 2050;
          *(v79 + 14) = sub_2664DE748();
          _os_log_impl(&dword_26629C000, v77, v78, "PodcastPlaybackHandler#_validateResult %{public}s  podcast result failed because application requires preflight: %{public}ld", v79, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v80);
          MEMORY[0x266784AD0](v80, -1, -1);
          MEMORY[0x266784AD0](v79, -1, -1);

          v72(v274, v66);
          v76 = v278;
        }

        else
        {

          v72(v74, v66);
        }

        *v281 = 0xD00000000000001CLL;
        *&v281[8] = 0x80000002664F3CA0;
        MEMORY[0x2667833B0](v76, v273);

        v193 = *v281;
        v194 = v266;
        v75(v266, v277, v66);

        v195 = sub_2664DFE18();
        v196 = sub_2664E06B8();
        if (os_log_type_enabled(v195, v196))
        {
          v197 = swift_slowAlloc();
          v198 = swift_slowAlloc();
          *v281 = v198;
          *v197 = 134218498;
          *(v197 + 4) = 3;
          *(v197 + 12) = 2048;
          *(v197 + 14) = 51;
          *(v197 + 22) = 2080;
          v199 = v66;
          v200 = sub_2662A320C(v193, *(&v193 + 1), v281);

          *(v197 + 24) = v200;
          _os_log_impl(&dword_26629C000, v195, v196, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v197, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v198);
          MEMORY[0x266784AD0](v198, -1, -1);
          MEMORY[0x266784AD0](v197, -1, -1);

          v201 = v266;
          v202 = v199;
        }

        else
        {

          v201 = v194;
          v202 = v66;
        }

        v72(v201, v202);
        v152 = v268;
        *v281 = 820;
        *&v281[8] = v193;
        v271(v281);

        a1 = 8;
        return sub_2662CA934(v272, v269, v152, a1);
      default:
        goto LABEL_57;
    }
  }

  return sub_2662CA934(v272, v269, v152, a1);
}

uint64_t sub_2662D0648(int a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, int a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v179 = a7;
  v180 = a8;
  v177 = a4;
  v178 = a5;
  LODWORD(v186) = a1;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v174 = &v167 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v173 = &v167 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v171 = &v167 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v183 = &v167 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v170 = &v167 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v168 = &v167 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v175 = &v167 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v184 = &v167 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v169 = &v167 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v182 = &v167 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v172 = &v167 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v167 - v35;
  if (a3)
  {
    v37 = a2;
  }

  else
  {
    v37 = 0;
  }

  v185 = v37;
  if (a3)
  {
    v38 = a3;
  }

  else
  {
    v38 = 0xE000000000000000;
  }

  v39 = qword_280F914E8;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  v41 = (v12 + 16);
  v42 = *(v12 + 16);
  v42(v36, v40, v11);

  v43 = sub_2664DFE18();
  v44 = sub_2664E06E8();

  v45 = os_log_type_enabled(v43, v44);
  v181 = a6;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v176 = v42;
    v47 = v40;
    v48 = (v12 + 16);
    v49 = v12;
    v50 = v11;
    v51 = v46;
    v52 = swift_slowAlloc();
    v187[0] = v52;
    *v51 = 136315138;
    *(v51 + 4) = sub_2662A320C(v185, v38, v187);
    _os_log_impl(&dword_26629C000, v43, v44, "PodcastPlaybackHandler#validateStatus errorOnion: '%s'", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v52);
    MEMORY[0x266784AD0](v52, -1, -1);
    v53 = v51;
    v11 = v50;
    v12 = v49;
    v41 = v48;
    v40 = v47;
    v42 = v176;
    MEMORY[0x266784AD0](v53, -1, -1);
  }

  v54 = *(v12 + 8);
  v54(v36, v11);
  v56 = v183;
  v55 = v184;
  v57 = v182;
  if (v186 <= 3)
  {
    if (!v186)
    {

      v84 = v172;
      v42(v172, v40, v11);
      v85 = sub_2664DFE18();
      v86 = sub_2664E06E8();
      v87 = os_log_type_enabled(v85, v86);
      v88 = v178;
      if (v87)
      {
        v186 = v11;
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v187[0] = v90;
        *v89 = 136446466;
        v91 = v177;
        v92 = v179;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v89 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v187);
        *(v89 + 12) = 1026;
        *(v89 + 14) = 0;
        _os_log_impl(&dword_26629C000, v85, v86, "PodcastPlaybackHandler#validateStatus %{public}s podcast status succeeded with code: %{public}u", v89, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        MEMORY[0x266784AD0](v90, -1, -1);
        MEMORY[0x266784AD0](v89, -1, -1);

        v54(v172, v186);
      }

      else
      {

        v54(v84, v11);
        v91 = v177;
        v92 = v179;
      }

      v187[0] = 0;
      v187[1] = 0;
      v188 = 0;
      v92(v187);
      v118 = 0;
      goto LABEL_70;
    }

    if (v186 != 1)
    {
      if (v186 == 2)
      {
        v42(v182, v40, v11);
        v58 = v57;
        v59 = sub_2664DFE18();
        v60 = sub_2664E06E8();
        v61 = os_log_type_enabled(v59, v60);
        v167 = v12;
        if (v61)
        {
          v62 = v11;
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v187[0] = v64;
          *v63 = 136446466;
          if (qword_280071B18 != -1)
          {
            swift_once();
          }

          *(v63 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v187);
          *(v63 + 12) = 1026;
          *(v63 + 14) = 2;
          _os_log_impl(&dword_26629C000, v59, v60, "PodcastPlaybackHandler#validateStatus %{public}s status command failed error code: %{public}u", v63, 0x12u);
          __swift_destroy_boxed_opaque_existential_1Tm(v64);
          MEMORY[0x266784AD0](v64, -1, -1);
          MEMORY[0x266784AD0](v63, -1, -1);

          v65 = v182;
          v11 = v62;
          v66 = v62;
        }

        else
        {

          v65 = v58;
          v66 = v11;
        }

        v54(v65, v66);
        strcpy(v187, "CommandFailed");
        HIWORD(v187[1]) = -4864;
        MEMORY[0x2667833B0](v185, v38);

        v142 = v187[0];
        v141 = v187[1];
        v143 = v169;
        v42(v169, v40, v11);

        v144 = sub_2664DFE18();
        v145 = sub_2664E06B8();
        v146 = os_log_type_enabled(v144, v145);
        v147 = v179;
        if (v146)
        {
          v148 = swift_slowAlloc();
          v186 = v11;
          v149 = v148;
          v150 = swift_slowAlloc();
          v187[0] = v150;
          *v149 = 134218498;
          *(v149 + 4) = 3;
          *(v149 + 12) = 2048;
          *(v149 + 14) = 0;
          *(v149 + 22) = 2080;
          v151 = v143;
          v152 = sub_2662A320C(v142, v141, v187);

          *(v149 + 24) = v152;
          _os_log_impl(&dword_26629C000, v144, v145, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v149, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v150);
          MEMORY[0x266784AD0](v150, -1, -1);
          MEMORY[0x266784AD0](v149, -1, -1);

          v153 = v151;
          v154 = v186;
        }

        else
        {

          v153 = v143;
          v154 = v11;
        }

        v54(v153, v154);
        v91 = v177;
        v88 = v178;
        v187[0] = 768;
        v187[1] = v142;
        v188 = v141;
        v147(v187);

        v118 = 2;
LABEL_70:
        v117 = v181;
        return sub_2662CABE8(v91, v88, v117, v118);
      }

      goto LABEL_38;
    }

LABEL_26:
    v182 = v54;
    v77 = v40;
    v42(v184, v40, v11);
    v78 = sub_2664DFE18();
    v79 = v11;
    v80 = sub_2664E06E8();
    if (os_log_type_enabled(v78, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v187[0] = v82;
      *v81 = 136446466;
      if (qword_280071B18 != -1)
      {
        swift_once();
      }

      *(v81 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v187);
      *(v81 + 12) = 1026;
      *(v81 + 14) = v186;
      _os_log_impl(&dword_26629C000, v78, v80, "PodcastPlaybackHandler#validateStatus %{public}s status failed with no now playing item error code: %{public}u", v81, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v82);
      MEMORY[0x266784AD0](v82, -1, -1);
      MEMORY[0x266784AD0](v81, -1, -1);

      v83 = v184;
    }

    else
    {

      v83 = v55;
    }

    (v182)(v83, v79);
    v187[0] = 0xD000000000000012;
    v187[1] = 0x80000002664F3C30;
    MEMORY[0x2667833B0](v185, v38);

    v108 = v187[0];
    v107 = v187[1];
    v109 = v175;
    v42(v175, v77, v79);

    v110 = sub_2664DFE18();
    v111 = sub_2664E06B8();
    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      v187[0] = v113;
      *v112 = 134218498;
      *(v112 + 4) = 3;
      *(v112 + 12) = 2048;
      *(v112 + 14) = 19;
      *(v112 + 22) = 2080;
      v114 = v109;
      v115 = sub_2662A320C(v108, v107, v187);

      *(v112 + 24) = v115;
      _os_log_impl(&dword_26629C000, v110, v111, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v112, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v113);
      MEMORY[0x266784AD0](v113, -1, -1);
      MEMORY[0x266784AD0](v112, -1, -1);

      v116 = v114;
    }

    else
    {

      v116 = v109;
    }

    (v182)(v116, v79);
    v117 = v181;
    v91 = v177;
    v88 = v178;
    v187[0] = 787;
    v187[1] = v108;
    v188 = v107;
    v179(v187);
    goto LABEL_59;
  }

  switch(v186)
  {
    case 4:
      v182 = v54;
      v42(v183, v40, v11);
      v93 = sub_2664DFE18();
      v94 = sub_2664E06E8();
      if (os_log_type_enabled(v93, v94))
      {
        v184 = v38;
        v95 = v42;
        v96 = v11;
        v97 = swift_slowAlloc();
        v98 = swift_slowAlloc();
        v187[0] = v98;
        *v97 = 136446466;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v97 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v187);
        *(v97 + 12) = 1026;
        *(v97 + 14) = 4;
        _os_log_impl(&dword_26629C000, v93, v94, "PodcastPlaybackHandler#validateStatus %{public}s status failed with cannot modify queue error code: %{public}u", v97, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v98);
        MEMORY[0x266784AD0](v98, -1, -1);
        MEMORY[0x266784AD0](v97, -1, -1);

        v11 = v96;
        (v182)(v183, v96);
        v38 = v184;
      }

      else
      {
        v95 = v42;

        (v182)(v56, v11);
      }

      v187[0] = 0xD000000000000011;
      v187[1] = 0x80000002664F3C10;
      MEMORY[0x2667833B0](v185, v38);

      v120 = v187[0];
      v119 = v187[1];
      v121 = v171;
      v95(v171, v40, v11);

      v122 = sub_2664DFE18();
      v123 = sub_2664E06B8();
      if (os_log_type_enabled(v122, v123))
      {
        v124 = v11;
        v125 = swift_slowAlloc();
        v126 = swift_slowAlloc();
        v187[0] = v126;
        *v125 = 134218498;
        *(v125 + 4) = 3;
        *(v125 + 12) = 2048;
        *(v125 + 14) = 47;
        *(v125 + 22) = 2080;
        v127 = v121;
        v128 = sub_2662A320C(v120, v119, v187);

        *(v125 + 24) = v128;
        _os_log_impl(&dword_26629C000, v122, v123, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v125, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v126);
        MEMORY[0x266784AD0](v126, -1, -1);
        MEMORY[0x266784AD0](v125, -1, -1);

        v129 = v127;
        v130 = v124;
      }

      else
      {

        v129 = v121;
        v130 = v11;
      }

      (v182)(v129, v130);
      v91 = v177;
      v88 = v178;
      v187[0] = 816;
      v187[1] = v120;
      v188 = v119;
      v179(v187);

      v118 = 4;
      goto LABEL_70;
    case 0xA:
      goto LABEL_26;
    case 0x14:
      v67 = v168;
      v176 = v42;
      v42(v168, v40, v11);
      v68 = v67;
      v69 = sub_2664DFE18();
      v70 = sub_2664E06E8();
      v71 = os_log_type_enabled(v69, v70);
      v167 = v12;
      if (v71)
      {
        v72 = v11;
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v187[0] = v74;
        *v73 = 136446466;
        if (qword_280071B18 != -1)
        {
          swift_once();
        }

        *(v73 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v187);
        *(v73 + 12) = 1026;
        *(v73 + 14) = 20;
        _os_log_impl(&dword_26629C000, v69, v70, "PodcastPlaybackHandler#validateStatus %{public}s status failed with device not found error code: %{public}u", v73, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        MEMORY[0x266784AD0](v74, -1, -1);
        MEMORY[0x266784AD0](v73, -1, -1);

        v75 = v68;
        v11 = v72;
        v76 = v72;
      }

      else
      {

        v75 = v68;
        v76 = v11;
      }

      v54(v75, v76);
      strcpy(v187, "DeviceNotFound");
      HIBYTE(v187[1]) = -18;
      MEMORY[0x2667833B0](v185, v38);

      v156 = v187[0];
      v155 = v187[1];
      v157 = v170;
      v176(v170, v40, v11);

      v158 = sub_2664DFE18();
      v159 = sub_2664E06B8();
      if (os_log_type_enabled(v158, v159))
      {
        v160 = v11;
        v161 = swift_slowAlloc();
        v162 = swift_slowAlloc();
        v187[0] = v162;
        *v161 = 134218498;
        *(v161 + 4) = 3;
        *(v161 + 12) = 2048;
        *(v161 + 14) = 13;
        *(v161 + 22) = 2080;
        v163 = sub_2662A320C(v156, v155, v187);

        *(v161 + 24) = v163;
        _os_log_impl(&dword_26629C000, v158, v159, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v161, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v162);
        MEMORY[0x266784AD0](v162, -1, -1);
        MEMORY[0x266784AD0](v161, -1, -1);

        v164 = v157;
        v165 = v160;
      }

      else
      {

        v164 = v157;
        v165 = v11;
      }

      v54(v164, v165);
      v91 = v177;
      v88 = v178;
      v187[0] = 781;
      v187[1] = v156;
      v188 = v155;
      v179(v187);

      v118 = 20;
      goto LABEL_70;
  }

LABEL_38:
  v184 = v38;
  v99 = v173;
  v176 = v42;
  v42(v173, v40, v11);
  v100 = sub_2664DFE18();
  v101 = sub_2664E06E8();
  v102 = v40;
  if (os_log_type_enabled(v100, v101))
  {
    v183 = v41;
    v103 = swift_slowAlloc();
    v104 = swift_slowAlloc();
    v187[0] = v104;
    *v103 = 136446466;
    if (qword_280071B18 != -1)
    {
      swift_once();
    }

    *(v103 + 4) = sub_2662A320C(qword_280072E58, qword_280072E60, v187);
    *(v103 + 12) = 1026;
    v105 = v186;
    *(v103 + 14) = v186;
    _os_log_impl(&dword_26629C000, v100, v101, "PodcastPlaybackHandler#validateStatus %{public}s status failed with unknown error code: %{public}u", v103, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v104);
    MEMORY[0x266784AD0](v104, -1, -1);
    MEMORY[0x266784AD0](v103, -1, -1);

    v54(v173, v11);
    v106 = v11;
  }

  else
  {

    v54(v99, v11);
    v106 = v11;
    v105 = v186;
  }

  strcpy(v187, "UnknownError_");
  HIWORD(v187[1]) = -4864;
  v189 = v105;
  v131 = sub_2664E0D48();
  MEMORY[0x2667833B0](v131);

  MEMORY[0x2667833B0](v185, v184);

  v133 = v187[0];
  v132 = v187[1];
  v134 = v174;
  v176(v174, v102, v106);

  v135 = sub_2664DFE18();
  v136 = sub_2664E06B8();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v187[0] = v138;
    *v137 = 134218498;
    *(v137 + 4) = 3;
    *(v137 + 12) = 2048;
    *(v137 + 14) = 4;
    *(v137 + 22) = 2080;
    v139 = sub_2662A320C(v133, v132, v187);

    *(v137 + 24) = v139;
    _os_log_impl(&dword_26629C000, v135, v136, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v137, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v138);
    MEMORY[0x266784AD0](v138, -1, -1);
    MEMORY[0x266784AD0](v137, -1, -1);

    v140 = v174;
  }

  else
  {

    v140 = v134;
  }

  v54(v140, v106);
  v117 = v181;
  v91 = v177;
  v88 = v178;
  v187[0] = 772;
  v187[1] = v133;
  v188 = v132;
  v179(v187);
LABEL_59:

  v118 = v186;
  return sub_2662CABE8(v91, v88, v117, v118);
}

uint64_t sub_2662D1C1C(uint64_t a1, int a2, unint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, uint64_t), int a6, void (*a7)(uint64_t *), uint64_t a8)
{
  v109 = a8;
  v110 = a7;
  LODWORD(v108) = a6;
  v106 = a4;
  v107 = a5;
  v105 = a2;
  v10 = sub_2664DFE38();
  v111 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v103 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v102 = &v98 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v101 = &v98 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v99 = &v98 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v100 = &v98 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v104 = &v98 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v98 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v98 - v26;
  v28 = sub_2664DFD68();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v98 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3)
  {
    v32 = v10;
    v33 = sub_2664DE198();
    sub_2664DFD98();
    v34 = sub_2664DFD48();
    a3 = v35;

    (*(v29 + 8))(v31, v28);
    v36 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v36 = v34 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {
      v37 = v34;
    }

    else
    {

      v37 = 0;
      a3 = 0;
    }

    v10 = v32;
  }

  else
  {
    v37 = 0;
  }

  v38 = v111;
  v39 = sub_2664DE748();
  if (v39 != sub_2664DE748())
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v38 + 16))(v27, v45, v10);
    v46 = sub_2664DFE18();
    v47 = sub_2664E06E8();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = sub_2664DE748();
      _os_log_impl(&dword_26629C000, v46, v47, "PodcastPlaybackHandler#validateResult result: %ld", v48, 0xCu);
      MEMORY[0x266784AD0](v48, -1, -1);
    }

    (*(v38 + 8))(v27, v10);
    sub_2662CDDCC(a1, v37, a3, v106, v107, v108, v110, v109);
  }

  v40 = v105;
  if (v105)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    (*(v38 + 16))(v25, v41, v10);
    v42 = sub_2664DFE18();
    v43 = sub_2664E06E8();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 67109120;
      *(v44 + 4) = v40;
      _os_log_impl(&dword_26629C000, v42, v43, "PodcastPlaybackHandler#validateResult status: %u", v44, 8u);
      MEMORY[0x266784AD0](v44, -1, -1);
    }

    (*(v38 + 8))(v25, v10);
    sub_2662D0648(v40, v37, a3, v106, v107, v108, v110, v109);
  }

  if (a3)
  {
    v108 = v37;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v50 = __swift_project_value_buffer(v10, qword_280F914F0);
    swift_beginAccess();
    v51 = v104;
    v107 = *(v38 + 16);
    v107(v104, v50, v10);

    v52 = sub_2664DFE18();
    v53 = sub_2664E06D8();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = v10;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *&v114 = v56;
      *v55 = 136315138;
      v57 = v108;
      *(v55 + 4) = sub_2662A320C(v108, a3, &v114);
      _os_log_impl(&dword_26629C000, v52, v53, "PodcastPlaybackHandler#validateResult errorOnion: '%s'", v55, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v56);
      v58 = v56;
      v59 = v111;
      MEMORY[0x266784AD0](v58, -1, -1);
      v60 = v55;
      v10 = v54;
      MEMORY[0x266784AD0](v60, -1, -1);

      v61 = *(v59 + 8);
      v61(v51, v10);
    }

    else
    {

      v61 = *(v38 + 8);
      v61(v51, v10);
      v57 = v108;
    }

    *&v114 = v57;
    *(&v114 + 1) = a3;
    v112 = 0x2934202C333828;
    v113 = 0xE700000000000000;
    sub_2662D2EBC();
    if (sub_2664E09B8())
    {
      *&v114 = 0xD000000000000012;
      *(&v114 + 1) = 0x80000002664F3BB0;
      MEMORY[0x2667833B0](v57, a3);

      v67 = *(&v114 + 1);
      v68 = v114;
      v69 = v102;
      v107(v102, v50, v10);

      v70 = sub_2664DFE18();
      v71 = sub_2664E06B8();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v111 = v10;
        v74 = v73;
        *&v114 = v73;
        *v72 = 134218498;
        *(v72 + 4) = 3;
        *(v72 + 12) = 2048;
        *(v72 + 14) = 152;
        *(v72 + 22) = 2080;
        v75 = sub_2662A320C(v68, v67, &v114);

        *(v72 + 24) = v75;
        _os_log_impl(&dword_26629C000, v70, v71, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v72, 0x20u);
        __swift_destroy_boxed_opaque_existential_1Tm(v74);
        MEMORY[0x266784AD0](v74, -1, -1);
        MEMORY[0x266784AD0](v72, -1, -1);

        v61(v69, v111);
      }

      else
      {

        v61(v69, v10);
      }

      *&v114 = 924;
      *(&v114 + 1) = v68;
    }

    else
    {
      *&v114 = v57;
      *(&v114 + 1) = a3;
      v112 = 0x293731202C323328;
      v113 = 0xE800000000000000;
      if (sub_2664E09B8())
      {

        v67 = 0x80000002664F3B80;
        v78 = v101;
        v107(v101, v50, v10);
        v79 = sub_2664DFE18();
        v80 = sub_2664E06B8();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = swift_slowAlloc();
          v82 = swift_slowAlloc();
          *&v114 = v82;
          *v81 = 134218498;
          *(v81 + 4) = 3;
          *(v81 + 12) = 2048;
          *(v81 + 14) = 50;
          *(v81 + 22) = 2080;
          *(v81 + 24) = sub_2662A320C(0xD000000000000021, 0x80000002664F3B80, &v114);
          _os_log_impl(&dword_26629C000, v79, v80, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v81, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v82);
          MEMORY[0x266784AD0](v82, -1, -1);
          MEMORY[0x266784AD0](v81, -1, -1);
        }

        v61(v78, v10);
        v83 = xmmword_2664E3860;
      }

      else
      {
        if ((sub_2662CDCFC(v57, a3, v76, v77) & 1) == 0)
        {
          v89 = v100;
          v107(v100, v50, v10);

          v90 = sub_2664DFE18();
          v91 = sub_2664E06B8();
          if (os_log_type_enabled(v90, v91))
          {
            v92 = swift_slowAlloc();
            v93 = swift_slowAlloc();
            *&v114 = v93;
            *v92 = 134218498;
            *(v92 + 4) = 3;
            *(v92 + 12) = 2048;
            *(v92 + 14) = 4;
            *(v92 + 22) = 2080;
            v94 = a3;
            v95 = v108;
            v96 = v10;
            v97 = sub_2662A320C(v108, v94, &v114);

            *(v92 + 24) = v97;
            _os_log_impl(&dword_26629C000, v90, v91, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v92, 0x20u);
            __swift_destroy_boxed_opaque_existential_1Tm(v93);
            MEMORY[0x266784AD0](v93, -1, -1);
            MEMORY[0x266784AD0](v92, -1, -1);

            v61(v100, v96);
          }

          else
          {

            v61(v89, v10);
            v94 = a3;
            v95 = v108;
          }

          *&v114 = 772;
          *(&v114 + 1) = v95;
          v115 = v94;
          goto LABEL_48;
        }

        v67 = 0x80000002664F3B60;
        v84 = v99;
        v107(v99, v50, v10);
        v85 = sub_2664DFE18();
        v86 = sub_2664E06B8();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          *&v114 = v88;
          *v87 = 134218498;
          *(v87 + 4) = 3;
          *(v87 + 12) = 2048;
          *(v87 + 14) = 154;
          *(v87 + 22) = 2080;
          *(v87 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664F3B60, &v114);
          _os_log_impl(&dword_26629C000, v85, v86, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v87, 0x20u);
          __swift_destroy_boxed_opaque_existential_1Tm(v88);
          MEMORY[0x266784AD0](v88, -1, -1);
          MEMORY[0x266784AD0](v87, -1, -1);
        }

        v61(v84, v10);
        v83 = xmmword_2664E3850;
      }

      v114 = v83;
    }

    v115 = v67;
LABEL_48:
    v110(&v114);
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v62 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v63 = v103;
  (*(v38 + 16))(v103, v62, v10);
  v64 = sub_2664DFE18();
  v65 = sub_2664E06E8();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_26629C000, v64, v65, "PodcastPlaybackHandler#validateResult success", v66, 2u);
    MEMORY[0x266784AD0](v66, -1, -1);
  }

  (*(v38 + 8))(v63, v10);
  v114 = 0uLL;
  v115 = 0;
  return (v110)(&v114);
}

uint64_t objectdestroy_30Tm()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2662D2BDC(int a1, void *a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v25 = a6;
  v26 = a5;
  v28 = a4;
  v29 = a3;
  v30 = a1;
  v7 = sub_2664DFE38();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v27 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - v11;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v14 = *(v8 + 16);
  v14(v12, v13, v7);
  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_26629C000, v15, v16, "PodcastPlaybackHandler#play play-continuation executing...", v17, 2u);
    MEMORY[0x266784AD0](v17, -1, -1);
  }

  v18 = *(v8 + 8);
  v18(v12, v7);
  v19 = sub_2664ACDA0(a2[3], a2[4], a2[5], v30 & 1);
  if (v19)
  {
    return v26(v19);
  }

  v21 = v27;
  v14(v27, v13, v7);
  v22 = sub_2664DFE18();
  v23 = sub_2664E06C8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_26629C000, v22, v23, "PodcastPlaybackHandler#play external devices, not sending startPlayback (set previously)", v24, 2u);
    MEMORY[0x266784AD0](v24, -1, -1);
  }

  v18(v21, v7);
  memset(v31, 0, sizeof(v31));
  return v29(v31);
}

unint64_t sub_2662D2EBC()
{
  result = qword_280F8F680;
  if (!qword_280F8F680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F680);
  }

  return result;
}

uint64_t sub_2662D2F30(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

uint64_t sub_2662D2F40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2662D3010(char *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2662DAD1C(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t objectdestroy_61Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_40Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
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

uint64_t sub_2662D31F4()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0078();
  sub_2664E0768();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000012, 0x80000002664E3960, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280072540 = v8;
  return result;
}

double PSESignalsStitcher.__allocating_init()()
{
  v0 = swift_allocObject();
  *&result = 15;
  *(v0 + 16) = xmmword_2664E3930;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v2;
  return result;
}

double PSESignalsStitcher.init()()
{
  *&result = 15;
  *(v0 + 16) = xmmword_2664E3930;
  v2 = MEMORY[0x277D84F90];
  *(v0 + 32) = MEMORY[0x277D84F90];
  *(v0 + 40) = v2;
  return result;
}

uint64_t sub_2662D33E8(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[2];
  v11 = a1[3];
  if (*(v4 + 24) >= *(v4 + 16))
  {
    v12 = *(v4 + 16);
  }

  else
  {
    v12 = *(v4 + 24);
  }

  v13 = swift_allocObject();
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = v8;
  v13[5] = v9;
  v13[6] = v10;
  v13[7] = v11;
  v13[8] = v4;
  v13[9] = a2;
  v14 = a2;

  sub_2662D3E2C(v12, a2, sub_2662D37C8, v13);
}

uint64_t sub_2662D34D8(uint64_t *a1, uint64_t (*a2)(uint64_t *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, void *a9)
{
  v34 = a2;
  v16 = sub_2664DFE38();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v20 = a1[3];
    v35 = *a1;
    v36 = *(a1 + 1);
    v37 = v20;
    swift_beginAccess();
    sub_2662D4340(&v35, a8 + 4);
    result = swift_endAccess();
    v23 = a8[2];
    v22 = a8[3];
    v16 = v22 - v23;
    if (!__OFSUB__(v22, v23))
    {
      if (v16 < 0 && (v24 = __OFSUB__(0, v16), v16 = v23 - v22, v24))
      {
        __break(1u);
      }

      else
      {
        v25 = swift_allocObject();
        v25[2] = v34;
        v25[3] = a3;
        v25[4] = a4;
        v25[5] = a5;
        v25[6] = a6;
        v25[7] = a7;
        v25[8] = a8;

        sub_2662D3E2C(v16, a9, sub_2662D448C, v25);
      }

      return result;
    }

    __break(1u);
    goto LABEL_11;
  }

  if (qword_280F914E8 != -1)
  {
LABEL_11:
    swift_once();
  }

  v26 = __swift_project_value_buffer(v16, qword_280F914F0);
  swift_beginAccess();
  (*(v17 + 16))(v19, v26, v16);
  v27 = sub_2664DFE18();
  v28 = sub_2664E06D8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v33 = a7;
    v30 = v29;
    *v29 = 0;
    _os_log_impl(&dword_26629C000, v27, v28, "PSESignalsStitcher#stitch received nil while gathering post engagement signals. Sending back initial raw signal result.", v29, 2u);
    v31 = v30;
    a7 = v33;
    MEMORY[0x266784AD0](v31, -1, -1);
  }

  (*(v17 + 8))(v19, v16);
  v35 = a4;
  *&v36 = a5;
  *(&v36 + 1) = a6;
  v37 = a7;
  return v34(&v35);
}

uint64_t sub_2662D37FC(uint64_t *a1, void (*a2)(__int128 *), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a3;
  v48 = sub_2664DFE38();
  v15 = *(v48 - 8);
  v16 = MEMORY[0x28223BE20](v48);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v45 - v19;
  v21 = *a1;
  if (*a1)
  {
    v46 = a2;
    v22 = a1[3];
    *v52 = v21;
    *&v52[8] = *(a1 + 1);
    *&v52[24] = v22;
    swift_beginAccess();
    sub_2662D4340(v52, (a8 + 40));
    swift_endAccess();
    swift_beginAccess();
    v24 = *(a8 + 32);
    v23 = *(a8 + 40);
    *v52 = a4;
    *&v52[8] = a5;
    *&v52[16] = v24;
    *&v52[24] = v23;
    v25 = qword_280F914E8;

    if (v25 != -1)
    {
      swift_once();
    }

    v26 = v48;
    v27 = __swift_project_value_buffer(v48, qword_280F914F0);
    swift_beginAccess();
    (*(v15 + 16))(v18, v27, v26);
    v28 = *v52;
    v30 = *&v52[16];
    v29 = *&v52[24];

    v31 = sub_2664DFE18();
    v32 = sub_2664E06C8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51[0] = v34;
      *v33 = 136315138;
      v49 = v28;
      *&v50 = v30;
      *(&v50 + 1) = v29;

      v35 = sub_2664E0318();
      v37 = sub_2662A320C(v35, v36, v51);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_26629C000, v31, v32, "PSESignalsStitcher#stitch gathered signal with value %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266784AD0](v34, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);

      (*(v15 + 8))(v18, v48);
    }

    else
    {

      (*(v15 + 8))(v18, v26);
    }

    swift_beginAccess();
    v49 = *v52;
    v50 = *&v52[16];
    v46(&v49);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v38 = v48;
    v39 = __swift_project_value_buffer(v48, qword_280F914F0);
    swift_beginAccess();
    (*(v15 + 16))(v20, v39, v38);
    v40 = sub_2664DFE18();
    v41 = sub_2664E06D8();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_26629C000, v40, v41, "PSESignalsStitcher#stitch received nil while gathering post engagement signals. Sending back initial raw signal result.", v42, 2u);
      v43 = v42;
      v38 = v48;
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    (*(v15 + 8))(v20, v38);
    *v52 = a4;
    *&v52[8] = a5;
    *&v52[16] = a6;
    *&v52[24] = a7;
    return (a2)(v52);
  }
}