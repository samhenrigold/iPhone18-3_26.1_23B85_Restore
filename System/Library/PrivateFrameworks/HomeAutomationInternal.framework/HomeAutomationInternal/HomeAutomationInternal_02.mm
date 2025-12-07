uint64_t sub_2529439A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_252943C10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(a4 + 56))(v7, a1, a2, 0, MEMORY[0x277D84F90], 0, 0, a3, a4);
  result = sub_252927BEC(v7, a5);
  *(a5 + 40) = 0;
  return result;
}

uint64_t sub_252943C9C@<X0>(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - v3;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v5 = sub_252E36AD4();
  __swift_project_value_buffer(v5, qword_27F544D18);
  sub_252CC3D90(0xD000000000000031, 0x8000000252E6A180, 0xD00000000000006ELL, 0x8000000252E6A1C0);
  v6 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  v7 = [objc_allocWithZone(MEMORY[0x277D47140]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_252E3C130;
  *(v8 + 32) = v7;
  sub_252947E10();
  v9 = v7;
  v10 = sub_252E37254();

  [v6 setViews_];

  [v6 setDialogPhase_];
  [v6 setTemporary_];
  v11 = sub_252E33C44();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = sub_252E34204();
  memset(v15, 0, sizeof(v15));
  v16 = 0;
  v13 = MEMORY[0x277D5C1D8];
  a1[3] = v12;
  a1[4] = v13;
  __swift_allocate_boxed_opaque_existential_0(a1);
  MEMORY[0x2530A9F60](v6, v4, MEMORY[0x277D84F90], v15);

  sub_25293847C(v15, &qword_27F5403A0, &unk_252E3CE30);
  return sub_25293847C(v4, &qword_27F540390, &qword_252E3C448);
}

uint64_t sub_252943F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v85 = a4;
  v87 = a1;
  v8 = sub_252E32F04();
  v86 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v11 sharedInstance];
  v88 = v8;
  if (v12 && (v13 = v12, v82 = sub_252E36F04(), v81 = sub_252E36F04(), v14 = sub_252E36F04(), v15 = [objc_opt_self() 0x1FB4263F8], v84 = a2, v16 = v15, v14, v83 = a3, __swift_project_boxed_opaque_existential_1(a5, a5[3]), sub_252E33844(), v17 = sub_252E32E94(), v19 = v18, v78 = *(v86 + 8), v79 = v86 + 8, v78(v10, v88), v92[0] = v17, v92[1] = v19, v91[0] = 45, v91[1] = 0xE100000000000000, v89 = 95, v90 = 0xE100000000000000, sub_252947DBC(), sub_252E377B4(), , v20 = sub_252E36F04(), , v22 = v81, v21 = v82, v23 = objc_msgSend(v13, sel_localizedStringForKey_table_bundle_languageCode_, v82, v81, v16, v20), v13, v21, v22, v16, a2 = v84, v20, v23))
  {
    v24 = sub_252E36F34();
    v26 = v25;

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544D60);
    sub_252929E74(a5, v92);

    v28 = sub_252E36AC4();
    v29 = sub_252E374C4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v91[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_252BE2CE0(v24, v26, v91);
      *(v30 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      sub_252E33844();
      v32 = sub_252E32E94();
      v34 = v33;
      v78(v10, v88);
      __swift_destroy_boxed_opaque_existential_1(v92);
      v35 = sub_252BE2CE0(v32, v34, v91);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_252917000, v28, v29, "Get localized string with label: %s for locale %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v31, -1, -1);
      v36 = v30;
      goto LABEL_23;
    }

    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    v80 = a5;
    v37 = [v11 sharedInstance];
    if (v37)
    {
      v38 = v37;
      v39 = v87;
      v40 = sub_252E36F04();
      v41 = a2;
      v42 = sub_252E36F04();
      v43 = sub_252E36F04();
      v44 = [objc_opt_self() bundleWithIdentifier_];

      v45 = sub_252E36F04();
      v46 = [v38 localizedStringForKey:v40 table:v42 bundle:v44 languageCode:v45];

      a2 = v41;
      if (v46)
      {
        v24 = sub_252E36F34();
        v48 = v47;

        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v49 = sub_252E36AD4();
        __swift_project_value_buffer(v49, qword_27F544D60);
        sub_252929E74(v80, v92);

        v50 = sub_252E36AC4();
        v51 = sub_252E374D4();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          LODWORD(v84) = v51;
          v53 = a2;
          v54 = v52;
          v85 = swift_slowAlloc();
          v91[0] = v85;
          *v54 = 136315394;
          *(v54 + 4) = sub_252BE2CE0(v39, v53, v91);
          *(v54 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v92, v93);
          v55 = v10;
          sub_252E33844();
          v56 = sub_252E32E94();
          v58 = v57;
          (*(v86 + 8))(v55, v88);
          __swift_destroy_boxed_opaque_existential_1(v92);
          v59 = sub_252BE2CE0(v56, v58, v91);

          *(v54 + 14) = v59;
          _os_log_impl(&dword_252917000, v50, v84, "Unable to get localized string for %s label for locale: %s", v54, 0x16u);
          v60 = v85;
          swift_arrayDestroy();
          MEMORY[0x2530AED00](v60, -1, -1);
          MEMORY[0x2530AED00](v54, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v92);
        }

        v28 = sub_252E36AC4();
        v73 = sub_252E374D4();

        if (!os_log_type_enabled(v28, v73))
        {
          goto LABEL_24;
        }

        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v92[0] = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_252BE2CE0(v24, v48, v92);
        _os_log_impl(&dword_252917000, v28, v73, "Use fallback en_US label: %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x2530AED00](v75, -1, -1);
        v36 = v74;
LABEL_23:
        MEMORY[0x2530AED00](v36, -1, -1);
LABEL_24:

        return v24;
      }
    }

    v61 = v88;
    v62 = v86;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v63 = sub_252E36AD4();
    __swift_project_value_buffer(v63, qword_27F544D60);
    sub_252929E74(v80, v92);

    v64 = sub_252E36AC4();
    v65 = sub_252E374D4();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = a2;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v91[0] = v68;
      *v67 = 136315394;
      *(v67 + 4) = sub_252BE2CE0(v87, v66, v91);
      *(v67 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      sub_252E33844();
      v69 = sub_252E32E94();
      v71 = v70;
      (*(v62 + 8))(v10, v61);
      __swift_destroy_boxed_opaque_existential_1(v92);
      v72 = sub_252BE2CE0(v69, v71, v91);

      *(v67 + 14) = v72;
      _os_log_impl(&dword_252917000, v64, v65, "Unable to get localized string for %s label for locale: %s and en_US", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v68, -1, -1);
      MEMORY[0x2530AED00](v67, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v92);
    }

    return 0;
  }

  return v24;
}

id sub_25294495C()
{
  v0 = sub_252E32E84();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277D47A00]) init];
  sub_252E32E74();
  sub_252E32E24();
  (*(v1 + 8))(v3, v0);
  v5 = sub_252E36F04();

  [v4 setAceId_];

  v6 = sub_252E36F04();
  [v4 setDialogIdentifier_];

  v7 = sub_252E36F04();
  [v4 setText_];

  v8 = v4;
  [v8 setCanUseServerTTS_];
  v9 = [objc_allocWithZone(MEMORY[0x277D479E8]) init];
  [v9 setDialogPhase_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252E3C130;
  *(v10 + 32) = v8;
  sub_252947E10();
  v11 = sub_252E37254();

  [v9 setViews_];

  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v12 = sub_252E36AD4();
  __swift_project_value_buffer(v12, qword_27F544D18);
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E6A360);
  MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E6A340);
  sub_252CC3D90(v14, v15, 0xD00000000000006ELL, 0x8000000252E6A1C0);

  return v9;
}

id sub_252944C78(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v5 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_252E32CA4();
  v6 = sub_252E32CB4();
  v7 = *(v6 - 8);
  v8 = 0;
  if ((*(v7 + 48))(v4, 1, v6) != 1)
  {
    v8 = sub_252E32C74();
    (*(v7 + 8))(v4, v6);
  }

  [v5 setPunchOutUri_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403C0, &unk_252E3C470);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_252E3C3C0;
  v10 = sub_252E36F34();
  v11 = MEMORY[0x277D837D0];
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 32) = v10;
  *(v9 + 40) = v12;
  v13 = sub_252E36F34();
  *(v9 + 88) = v11;
  *(v9 + 64) = v13;
  *(v9 + 72) = v14;
  v15 = sub_252E37254();

  [v5 setLaunchOptions_];

  return v5;
}

uint64_t sub_252944E64@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, char a3@<W2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v31 = a5;
  v32 = a6;
  v30 = a7;
  v11 = sub_252E33C84();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = v29 - v17;
  if (a3)
  {
    v29[0] = a1;
    v29[1] = a2;
    v19 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v16);
    sub_252929E74((v19 + 16), &v33);

    __swift_project_boxed_opaque_existential_1(&v33, v35);
    v20 = sub_252E338C4();
    v16 = __swift_destroy_boxed_opaque_existential_1(&v33);
    if (v20 & 1) != 0 || (v21 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v16), sub_252929E74((v21 + 16), &v33), , __swift_project_boxed_opaque_existential_1(&v33, v35), v22 = sub_252E338F4(), v16 = __swift_destroy_boxed_opaque_existential_1(&v33), (v22) || (v23 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v16), sub_252929E74((v23 + 16), &v33), , __swift_project_boxed_opaque_existential_1(&v33, v35), v24 = sub_252E338D4(), v16 = __swift_destroy_boxed_opaque_existential_1(&v33), (v24))
    {
      a1 = v29[0];
      goto LABEL_6;
    }

    v16 = sub_25297A2A8();
    a1 = v29[0];
    if (v16)
    {
      if (a4 >> 62)
      {
        v27 = sub_252E378C4();
        if (v27)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v27 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v27)
        {
LABEL_14:

          goto LABEL_6;
        }
      }

      v28 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v27);
      sub_252929E74((v28 + 16), &v33);

      sub_252946EB4(&v33);
      v16 = __swift_destroy_boxed_opaque_existential_1(&v33);
    }
  }

LABEL_6:
  a1(v16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {

    return swift_willThrow();
  }

  else
  {
    (*(v12 + 32))(v14, v18, v11);
    if (qword_2814B09D0 != -1)
    {
      swift_once();
    }

    v26 = sub_252E36AD4();
    __swift_project_value_buffer(v26, qword_2814B09D8);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x6420746C75736552, 0xEF0A3A676F6C6169);
    sub_252E37AE4();
    sub_252CC4A5C(v33, v34, 1, 0xD00000000000006ELL, 0x8000000252E6A1C0);

    sub_252945BD8(v14, v31, v32, v30);

    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_252945294@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v34 = a1;
  v36 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = sub_252E33C44();
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v35 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_252E33C84();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = (&v32 - v15);
  a2(v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = *v16;
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v18 = sub_252E36AD4();
    __swift_project_value_buffer(v18, qword_27F544D18);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000021, 0x8000000252E6A430);
    v40[0] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541ED0, &unk_252E3C480);
    sub_252E37AE4();
    sub_252CC4050(v41, v42, 0xD00000000000006ELL, 0x8000000252E6A1C0, 0xD00000000000001FLL, 0x8000000252E6A460, 224);

    return swift_willThrow();
  }

  else
  {
    v32 = v10;
    v33 = v7;
    (*(v10 + 32))(v12, v16, v9);
    if (qword_2814B09D0 != -1)
    {
      swift_once();
    }

    v20 = sub_252E36AD4();
    __swift_project_value_buffer(v20, qword_2814B09D8);
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0x6420746C75736552, 0xEF0A3A676F6C6169);
    sub_252E37AE4();
    sub_252CC4A5C(v41, v42, 1, 0xD00000000000006ELL, 0x8000000252E6A1C0);

    sub_252CBDDD4(v21);
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v20, qword_27F544D18);
    sub_252CC3D90(0xD000000000000032, 0x8000000252E6A480, 0xD00000000000006ELL, 0x8000000252E6A1C0);
    v22 = v35;
    sub_252A6097C(v34, v35);
    v24 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v23);
    sub_252929E74((v24 + 16), &v41);

    v26 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v25);
    sub_252929E74((v26 + 16), v40);

    __swift_project_boxed_opaque_existential_1(v40, v40[3]);
    sub_252E33874();
    v27 = v37;
    v28 = v33;
    (*(v37 + 16))(v6, v22, v33);
    (*(v27 + 56))(v6, 0, 1, v28);
    v29 = sub_252E34204();
    memset(v38, 0, sizeof(v38));
    v39 = 0;
    v30 = MEMORY[0x277D5C1D8];
    v31 = v36;
    v36[3] = v29;
    v31[4] = v30;
    __swift_allocate_boxed_opaque_existential_0(v31);
    sub_252E33A94();

    sub_25293847C(v38, &qword_27F5403A0, &unk_252E3CE30);
    sub_25293847C(v6, &qword_27F540390, &qword_252E3C448);
    __swift_destroy_boxed_opaque_existential_1(&v41);
    (*(v27 + 8))(v22, v28);
    (*(v32 + 8))(v12, v9);
    return __swift_destroy_boxed_opaque_existential_1(v40);
  }
}

uint64_t sub_2529458C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v24 - v7;
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v9 = sub_252E36AD4();
  __swift_project_value_buffer(v9, qword_27F544D18);
  sub_252CC3D90(0xD000000000000022, 0x8000000252E6A400, 0xD00000000000006ELL, 0x8000000252E6A1C0);
  v10 = sub_25294495C();
  v11 = v10;
  v12 = MEMORY[0x277D84F90];
  v26 = MEMORY[0x277D84F90];
  if (a2)
  {
    v23 = v10;
    v13 = sub_252944C78(a1, a2);
    MEMORY[0x2530AD700]();
    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v26 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v12 = v26;
    *&v24[0] = 0;
    *(&v24[0] + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v24[0] = 0xD000000000000028;
    *(&v24[0] + 1) = 0x8000000252E6A3D0;
    v14 = v13;
    v15 = [v14 description];
    v16 = sub_252E36F34();
    v18 = v17;

    MEMORY[0x2530AD570](v16, v18);

    sub_252CC3D90(*&v24[0], *(&v24[0] + 1), 0xD00000000000006ELL, 0x8000000252E6A1C0);

    v11 = v23;
  }

  v19 = sub_252E33C44();
  (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
  v20 = sub_252E34204();
  memset(v24, 0, sizeof(v24));
  v25 = 0;
  v21 = MEMORY[0x277D5C1D8];
  a3[3] = v20;
  a3[4] = v21;
  __swift_allocate_boxed_opaque_existential_0(a3);
  MEMORY[0x2530A9F60](v11, v8, v12, v24);

  sub_25293847C(v24, &qword_27F5403A0, &unk_252E3CE30);
  return sub_25293847C(v8, &qword_27F540390, &qword_252E3C448);
}

void sub_252945BD8(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(a1);
  sub_252929E74((v8 + 16), &v23);

  __swift_project_boxed_opaque_existential_1(&v23, *(&v24 + 1));
  sub_252E33874();
  sub_252E33994();
  swift_allocObject();
  sub_252E33984();
  __swift_destroy_boxed_opaque_existential_1(&v23);
  v9 = sub_252E33974();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_252E3C130;
  *(v10 + 32) = v9;
  v22 = v10;
  if (a4)
  {
    v11 = v9;
    v12 = sub_252944C78(a3, a4);
    MEMORY[0x2530AD700]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D18);
    *&v23 = 0;
    *(&v23 + 1) = 0xE000000000000000;
    sub_252E379F4();

    *&v23 = 0xD000000000000028;
    *(&v23 + 1) = 0x8000000252E6A3D0;
    v14 = v12;
    v15 = [v14 description];
    v16 = sub_252E36F34();
    v18 = v17;

    MEMORY[0x2530AD570](v16, v18);

    sub_252CC3D90(v23, *(&v23 + 1), 0xD00000000000006ELL, 0x8000000252E6A1C0);
  }

  else
  {
    v19 = v9;
  }

  v20 = sub_252E34204();
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v21 = MEMORY[0x277D5C1D8];
  a5[3] = v20;
  a5[4] = v21;
  __swift_allocate_boxed_opaque_existential_0(a5);
  sub_252E341E4();
}

uint64_t sub_252945EB4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v48 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - v9;
  v47 = sub_252E33C44();
  v11 = *(v47 - 8);
  v12 = MEMORY[0x28223BE20](v47);
  v46 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v44 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B0, &unk_252E3C460);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v44 - v17;
  v19 = sub_252E34204();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252929E74(a2, &v49);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B8, &qword_252E58020);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 56);
  if (!v23)
  {
    v24(v18, 1, 1, v19);
    sub_25293847C(v18, &qword_27F5403B0, &unk_252E3C460);
    v29 = a2;
    v30 = a3;
    return sub_252929E74(v29, v30);
  }

  v45 = a3;
  v24(v18, 0, 1, v19);
  (*(v20 + 32))(v22, v18, v19);
  v25 = sub_252C91044(a1, 0);
  if (!v25[2])
  {
    (*(v20 + 8))(v22, v19);

    v29 = a2;
    v30 = v45;
    return sub_252929E74(v29, v30);
  }

  sub_252E341C4();
  v26 = v11;
  v27 = *(v11 + 48);
  v28 = v47;
  if (v27(v10, 1, v47) == 1)
  {
    sub_252E33C34();
    if (v27(v10, 1, v28) != 1)
    {
      sub_25293847C(v10, &qword_27F540390, &qword_252E3C448);
    }
  }

  else
  {
    (*(v26 + 32))(v15, v10, v28);
  }

  swift_bridgeObjectRetain_n();
  sub_252E33B94();
  v32 = sub_252E33B84();

  if (v32)
  {

    v33 = sub_252E33B74();
    if (*v34)
    {
      sub_25297AE58(v25);
    }

    else
    {
    }

    v33(&v49, 0);
  }

  else
  {
    sub_252E33B94();
  }

  if (qword_27F53F550 != -1)
  {
    swift_once();
  }

  v35 = sub_252E36AD4();
  v44 = __swift_project_value_buffer(v35, qword_27F544E98);
  v49 = 0;
  v50 = 0xE000000000000000;
  sub_252E379F4();

  v49 = 0xD000000000000028;
  v50 = 0x8000000252E6A3A0;
  v36 = *(v26 + 16);
  v36(v46, v15, v28);
  v37 = sub_252E36F94();
  v46 = v15;
  v38 = v28;
  v39 = v26;
  MEMORY[0x2530AD570](v37);

  sub_252CC3D90(v49, v50, 0xD00000000000006ELL, 0x8000000252E6A1C0);

  sub_252E341F4();
  sub_252E341B4();
  v40 = v48;
  v41 = v46;
  v36(v48, v46, v38);
  (*(v39 + 56))(v40, 0, 1, v38);
  v42 = MEMORY[0x277D5C1D8];
  v43 = v45;
  *(v45 + 24) = v19;
  v43[4] = v42;
  __swift_allocate_boxed_opaque_existential_0(v43);
  sub_252E341D4();
  (*(v39 + 8))(v41, v38);
  return (*(v20 + 8))(v22, v19);
}

uint64_t sub_2529464C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v32 = a2;
  v34 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403A8, &qword_252E3C458);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540390, &qword_252E3C448);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v33 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = sub_252E33C44();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B0, &unk_252E3C460);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v32 - v17;
  v19 = sub_252E34204();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v32 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252929E74(a1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5403B8, &qword_252E58020);
  v23 = swift_dynamicCast();
  v24 = *(v20 + 56);
  if (v23)
  {
    v24(v18, 0, 1, v19);
    (*(v20 + 32))(v22, v18, v19);
    sub_252E341C4();
    v25 = *(v13 + 48);
    if (v25(v11, 1, v12) == 1)
    {
      sub_252E33C34();
      if (v25(v11, 1, v12) != 1)
      {
        sub_25293847C(v11, &qword_27F540390, &qword_252E3C448);
      }
    }

    else
    {
      (*(v13 + 32))(v15, v11, v12);
    }

    v27 = sub_252E34134();
    v28 = *(v27 - 8);
    (*(v28 + 16))(v6, v32, v27);
    (*(v28 + 56))(v6, 0, 1, v27);
    sub_252E33BB4();
    sub_252E341F4();
    sub_252E341B4();
    v29 = v33;
    (*(v13 + 16))(v33, v15, v12);
    (*(v13 + 56))(v29, 0, 1, v12);
    v30 = MEMORY[0x277D5C1D8];
    v31 = v34;
    v34[3] = v19;
    v31[4] = v30;
    __swift_allocate_boxed_opaque_existential_0(v31);
    sub_252E341D4();
    (*(v13 + 8))(v15, v12);
    return (*(v20 + 8))(v22, v19);
  }

  else
  {
    v24(v18, 1, 1, v19);
    sub_25293847C(v18, &qword_27F5403B0, &unk_252E3C460);
    return sub_252929E74(a1, v34);
  }
}

uint64_t sub_2529469B8@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25294495C();
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v3 = sub_252E36AD4();
  __swift_project_value_buffer(v3, qword_27F544D18);
  sub_252CC3D90(0xD000000000000021, 0x8000000252E6A310, 0xD00000000000006ELL, 0x8000000252E6A1C0);
  v4 = [objc_allocWithZone(MEMORY[0x277D47A20]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_252E3C3D0;
  *(v5 + 32) = v2;
  *(v5 + 40) = v4;
  v6 = sub_252E34204();
  v7 = MEMORY[0x277D5C1D8];
  a1[3] = v6;
  a1[4] = v7;
  __swift_allocate_boxed_opaque_existential_0(a1);
  return sub_252E341E4();
}

uint64_t sub_252946AF8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_252946B5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_252929E74(v3 + 16, a1);
}

uint64_t sub_252946BA8(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 16));
  sub_252927BEC(a1, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_252946C5C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_252929E74(v3 + 56, a1);
}

uint64_t sub_252946CA8(__int128 *a1)
{
  v3 = *v1;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1((v3 + 56));
  sub_252927BEC(a1, v3 + 56);
  return swift_endAccess();
}

uint64_t sub_252946D94@<X0>(uint64_t *a1@<X8>)
{
  if (qword_27F53F4D0 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544D18);
  sub_252CC3D90(0xD00000000000002ALL, 0x8000000252E6A230, 0xD00000000000006ELL, 0x8000000252E6A1C0);
  return sub_2529469B8(a1);
}

uint64_t sub_252946EB4(uint64_t a1)
{
  v2 = sub_252E32F04();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v4);
  sub_252929E74((v7 + 16), v39);

  v8 = sub_252943F48(0x4D4F485F4E45504FLL, 0xED00005050415F45, 0x656D614E707041, 0xE700000000000000, v39);
  v10 = v9;
  __swift_destroy_boxed_opaque_existential_1(v39);
  if (v10)
  {
    v37 = v3;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_27F544D60);
    sub_252929E74(a1, v39);

    v12 = sub_252E36AC4();
    v13 = sub_252E374C4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v35 = v2;
      v36 = a1;
      v16 = v15;
      v38 = v15;
      *v14 = 136315394;
      *(v14 + 4) = sub_252BE2CE0(v8, v10, &v38);
      *(v14 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      sub_252E33844();
      v17 = sub_252E32E94();
      v19 = v18;
      (*(v37 + 8))(v6, v35);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v20 = sub_252BE2CE0(v17, v19, &v38);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_252917000, v12, v13, "Building Home App button with label: %s for locale %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v16, -1, -1);
      MEMORY[0x2530AED00](v14, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    sub_252E33734();
    sub_252E33704();
    v30 = [objc_allocWithZone(MEMORY[0x277D47190]) init];
    v31 = sub_252E36F04();
    [v30 setLaunchId_];

    sub_252E33724();

    v32 = sub_252E33714();
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v21 = sub_252E36AD4();
    __swift_project_value_buffer(v21, qword_27F544D60);
    sub_252929E74(a1, v39);
    v22 = sub_252E36AC4();
    v23 = sub_252E374D4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v38 = v25;
      *v24 = 136315138;
      __swift_project_boxed_opaque_existential_1(v39, v40);
      sub_252E33844();
      v26 = sub_252E32E94();
      v28 = v27;
      (*(v3 + 8))(v6, v2);
      __swift_destroy_boxed_opaque_existential_1(v39);
      v29 = sub_252BE2CE0(v26, v28, &v38);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_252917000, v22, v23, "Unable to get localized string for OPEN_HOME_APP label for locale: %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x2530AED00](v25, -1, -1);
      MEMORY[0x2530AED00](v24, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v39);
    }

    return MEMORY[0x277D84F90];
  }

  return v32;
}

uint64_t sub_2529473E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v85 = a4;
  v87 = a1;
  v8 = sub_252E32F04();
  v86 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v77 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_opt_self();
  v12 = [v11 sharedInstance];
  v88 = v8;
  if (v12 && (v13 = v12, v82 = sub_252E36F04(), v81 = sub_252E36F04(), v14 = sub_252E36F04(), v15 = [objc_opt_self() 0x1FB4263F8], v84 = a2, v16 = v15, v14, v83 = a3, __swift_project_boxed_opaque_existential_1(a5, a5[3]), sub_252E33844(), v17 = sub_252E32E94(), v19 = v18, v78 = *(v86 + 8), v79 = v86 + 8, v78(v10, v88), v92[0] = v17, v92[1] = v19, v91[0] = 45, v91[1] = 0xE100000000000000, v89 = 95, v90 = 0xE100000000000000, sub_252947DBC(), sub_252E377B4(), , v20 = sub_252E36F04(), , v22 = v81, v21 = v82, v23 = objc_msgSend(v13, sel_localizedStringForKey_table_bundle_languageCode_, v82, v81, v16, v20), v13, v21, v22, v16, a2 = v84, v20, v23))
  {
    v24 = sub_252E36F34();
    v26 = v25;

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544D60);
    sub_252929E74(a5, v92);

    v28 = sub_252E36AC4();
    v29 = sub_252E374C4();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v91[0] = v31;
      *v30 = 136315394;
      *(v30 + 4) = sub_252BE2CE0(v24, v26, v91);
      *(v30 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      sub_252E33844();
      v32 = sub_252E32E94();
      v34 = v33;
      v78(v10, v88);
      __swift_destroy_boxed_opaque_existential_1(v92);
      v35 = sub_252BE2CE0(v32, v34, v91);

      *(v30 + 14) = v35;
      _os_log_impl(&dword_252917000, v28, v29, "Get localized string with label: %s for locale %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v31, -1, -1);
      v36 = v30;
      goto LABEL_23;
    }

    __swift_destroy_boxed_opaque_existential_1(v92);
  }

  else
  {
    v80 = a5;
    v37 = [v11 sharedInstance];
    if (v37)
    {
      v38 = v37;
      v39 = v87;
      v40 = sub_252E36F04();
      v41 = a2;
      v42 = sub_252E36F04();
      v43 = sub_252E36F04();
      v44 = [objc_opt_self() bundleWithIdentifier_];

      v45 = sub_252E36F04();
      v46 = [v38 localizedStringForKey:v40 table:v42 bundle:v44 languageCode:v45];

      a2 = v41;
      if (v46)
      {
        v24 = sub_252E36F34();
        v48 = v47;

        if (qword_27F53F4E8 != -1)
        {
          swift_once();
        }

        v49 = sub_252E36AD4();
        __swift_project_value_buffer(v49, qword_27F544D60);
        sub_252929E74(v80, v92);

        v50 = sub_252E36AC4();
        v51 = sub_252E374D4();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          LODWORD(v84) = v51;
          v53 = a2;
          v54 = v52;
          v85 = swift_slowAlloc();
          v91[0] = v85;
          *v54 = 136315394;
          *(v54 + 4) = sub_252BE2CE0(v39, v53, v91);
          *(v54 + 12) = 2080;
          __swift_project_boxed_opaque_existential_1(v92, v93);
          v55 = v10;
          sub_252E33844();
          v56 = sub_252E32E94();
          v58 = v57;
          (*(v86 + 8))(v55, v88);
          __swift_destroy_boxed_opaque_existential_1(v92);
          v59 = sub_252BE2CE0(v56, v58, v91);

          *(v54 + 14) = v59;
          _os_log_impl(&dword_252917000, v50, v84, "Unable to get localized string for %s label for locale: %s", v54, 0x16u);
          v60 = v85;
          swift_arrayDestroy();
          MEMORY[0x2530AED00](v60, -1, -1);
          MEMORY[0x2530AED00](v54, -1, -1);
        }

        else
        {

          __swift_destroy_boxed_opaque_existential_1(v92);
        }

        v28 = sub_252E36AC4();
        v73 = sub_252E374D4();

        if (!os_log_type_enabled(v28, v73))
        {
          goto LABEL_24;
        }

        v74 = swift_slowAlloc();
        v75 = swift_slowAlloc();
        v92[0] = v75;
        *v74 = 136315138;
        *(v74 + 4) = sub_252BE2CE0(v24, v48, v92);
        _os_log_impl(&dword_252917000, v28, v73, "Use fallback en_US label: %s", v74, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v75);
        MEMORY[0x2530AED00](v75, -1, -1);
        v36 = v74;
LABEL_23:
        MEMORY[0x2530AED00](v36, -1, -1);
LABEL_24:

        return v24;
      }
    }

    v61 = v88;
    v62 = v86;
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v63 = sub_252E36AD4();
    __swift_project_value_buffer(v63, qword_27F544D60);
    sub_252929E74(v80, v92);

    v64 = sub_252E36AC4();
    v65 = sub_252E374D4();

    if (os_log_type_enabled(v64, v65))
    {
      v66 = a2;
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v91[0] = v68;
      *v67 = 136315394;
      *(v67 + 4) = sub_252BE2CE0(v87, v66, v91);
      *(v67 + 12) = 2080;
      __swift_project_boxed_opaque_existential_1(v92, v93);
      sub_252E33844();
      v69 = sub_252E32E94();
      v71 = v70;
      (*(v62 + 8))(v10, v61);
      __swift_destroy_boxed_opaque_existential_1(v92);
      v72 = sub_252BE2CE0(v69, v71, v91);

      *(v67 + 14) = v72;
      _os_log_impl(&dword_252917000, v64, v65, "Unable to get localized string for %s label for locale: %s and en_US", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v68, -1, -1);
      MEMORY[0x2530AED00](v67, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v92);
    }

    return 0;
  }

  return v24;
}

unint64_t sub_252947DBC()
{
  result = qword_2814B0290;
  if (!qword_2814B0290)
  {
    result = swift_getWitnessTable(MEMORY[0x277D83820], MEMORY[0x277D837D0], v0, v1);
    atomic_store(result, &qword_2814B0290);
  }

  return result;
}

unint64_t sub_252947E10()
{
  result = qword_27F540398;
  if (!qword_27F540398)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540398);
  }

  return result;
}

void sub_252947E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_252E32CB4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v38 - v9;
  v11 = sub_252C96F38(a1);
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    v15 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
    sub_252E32CA4();
    if ((*(v5 + 48))(v10, 1, v4) == 1)
    {
      v16 = 0;
    }

    else
    {
      v16 = sub_252E32C74();
      (*(v5 + 8))(v10, v4);
    }

    [v15 setPunchOutUri_];

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v23 = sub_252E36AD4();
    __swift_project_value_buffer(v23, qword_27F544D60);

    v24 = v15;
    v25 = sub_252E36AC4();
    v26 = sub_252E374C4();

    v27 = os_log_type_enabled(v25, v26);
    v40 = v13;
    if (!v27)
    {

      goto LABEL_23;
    }

    v28 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v41 = v39;
    *v28 = 136315394;
    *(v28 + 4) = sub_252BE2CE0(v13, v14, &v41);
    *(v28 + 12) = 2080;
    v29 = [v24 punchOutUri];

    if (v29)
    {
      sub_252E32C94();

      v30 = sub_252E32C64();
      v32 = v31;
      (*(v5 + 8))(v7, v4);
      v33 = sub_252BE2CE0(v30, v32, &v41);

      *(v28 + 14) = v33;
      _os_log_impl(&dword_252917000, v25, v26, "Building button with label: %s and url: %s", v28, 0x16u);
      v34 = v39;
      swift_arrayDestroy();
      MEMORY[0x2530AED00](v34, -1, -1);
      MEMORY[0x2530AED00](v28, -1, -1);
LABEL_23:

      v35 = sub_252E33734();
      v36 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v35);
      sub_252929E74((v36 + 16), &v41);

      sub_252E33704();
      __swift_destroy_boxed_opaque_existential_1(&v41);
      v37 = v24;
      sub_252E33724();

      sub_252E33714();

      return;
    }

    __break(1u);
  }

  else
  {
    v41 = 0;
    v42 = 0xE000000000000000;
    sub_252E379F4();

    v41 = 0xD000000000000020;
    v42 = 0x8000000252E6A260;
    v17 = "GOTO_APPLE_SUPPORT";
    v18 = "WEATHER_QUERY_GENERIC_LOCATIONS";
    v19 = 0xD000000000000015;
    if (a1 != 2)
    {
      v19 = 0xD00000000000001FLL;
      v18 = "led for the key ";
    }

    v20 = 0xD000000000000012;
    if (a1)
    {
      v17 = "LINK_HOME_HUB_SUPPORT";
    }

    else
    {
      v20 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      v21 = v20;
    }

    else
    {
      v21 = v19;
    }

    if (a1 <= 1u)
    {
      v22 = v17;
    }

    else
    {
      v22 = v18;
    }

    MEMORY[0x2530AD570](v21, v22 | 0x8000000000000000);

    sub_2529515FC(6, 13, v41, v42);
  }
}

id sub_25294833C(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v23[-v7];
  v9 = 0xE700000000000000;
  v10 = 0x72656767697274;
  v11 = 0xE400000000000000;
  v12 = 1836019570;
  v13 = 0xE900000000000079;
  v14 = 0x726F737365636361;
  if (a1 != 3)
  {
    v14 = 0x65636976726573;
    v13 = 0xE700000000000000;
  }

  if (a1 != 2)
  {
    v12 = v14;
    v11 = v13;
  }

  if (a1)
  {
    v10 = 1701670760;
    v9 = 0xE400000000000000;
  }

  if (a1 <= 1u)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  if (a1 <= 1u)
  {
    v16 = v9;
  }

  else
  {
    v16 = v11;
  }

  strcpy(v23, "com.apple.Home");
  v23[15] = -18;
  MEMORY[0x2530AD570](3092282, 0xE300000000000000);
  MEMORY[0x2530AD570](v15, v16);
  MEMORY[0x2530AD570](47, 0xE100000000000000);
  if (a3)
  {
    v17 = a3;
  }

  else
  {
    a2 = 0;
    v17 = 0xE000000000000000;
  }

  MEMORY[0x2530AD570](a2, v17);

  v18 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_252E32CA4();

  v19 = sub_252E32CB4();
  v20 = *(v19 - 8);
  v21 = 0;
  if ((*(v20 + 48))(v8, 1, v19) != 1)
  {
    v21 = sub_252E32C74();
    (*(v20 + 8))(v8, v19);
  }

  [v18 setPunchOutUri_];

  return v18;
}

id sub_2529485B0(unsigned __int8 a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540370, &qword_252E3C450);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18[-v3];
  v5 = 0xE700000000000000;
  v6 = 0x6574616D696C63;
  v7 = 0xE500000000000000;
  v8 = 0x616964656DLL;
  v9 = 0xE800000000000000;
  v10 = 0x7974697275636573;
  if (a1 != 3)
  {
    v10 = 0x7265746177;
    v9 = 0xE500000000000000;
  }

  if (a1 != 2)
  {
    v8 = v10;
    v7 = v9;
  }

  if (a1)
  {
    v6 = 0x73746867696CLL;
    v5 = 0xE600000000000000;
  }

  if (a1 <= 1u)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (a1 <= 1u)
  {
    v12 = v5;
  }

  else
  {
    v12 = v7;
  }

  strcpy(v18, "com.apple.Home");
  v18[15] = -18;
  MEMORY[0x2530AD570](3092282, 0xE300000000000000);
  MEMORY[0x2530AD570](0x726F737365636361, 0xED00006570797479);
  MEMORY[0x2530AD570](47, 0xE100000000000000);

  MEMORY[0x2530AD570](v11, v12);
  swift_bridgeObjectRelease_n();
  v13 = [objc_allocWithZone(MEMORY[0x277D479F0]) init];
  sub_252E32CA4();

  v14 = sub_252E32CB4();
  v15 = *(v14 - 8);
  v16 = 0;
  if ((*(v15 + 48))(v4, 1, v14) != 1)
  {
    v16 = sub_252E32C74();
    (*(v15 + 8))(v4, v14);
  }

  [v13 setPunchOutUri_];

  return v13;
}

uint64_t DeviceQuantifierSemantic.rawValue.getter()
{
  v1 = *v0;
  v2 = 6647407;
  v3 = 7105633;
  v4 = 1752461154;
  if (v1 != 3)
  {
    v4 = 0x747065637865;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701670771;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

HomeAutomationInternal::DeviceQuantifierSemantic_optional __swiftcall DeviceQuantifierSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37B74();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_252948914()
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529489D4(uint64_t a1)
{
  sub_252E37044();
}

uint64_t sub_252948A80(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();

  return sub_252E37F14();
}

void sub_252948B48(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE300000000000000;
  v4 = 6647407;
  v5 = 0xE300000000000000;
  v6 = 7105633;
  v7 = 0xE400000000000000;
  v8 = 1752461154;
  if (v2 != 3)
  {
    v8 = 0x747065637865;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1701670771;
    v3 = 0xE400000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

BOOL sub_252948BC8(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s22HomeAutomationInternal24DeviceQuantifierSemanticO1loiySbAC_ACtFZ_0(&v4, &v5) & 1) == 0;
}

BOOL sub_252948C08(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return (_s22HomeAutomationInternal24DeviceQuantifierSemanticO1loiySbAC_ACtFZ_0(&v5, &v4) & 1) == 0;
}

uint64_t sub_252948C48(char *a1, char *a2)
{
  v2 = *a2;
  v5 = *a1;
  v4 = v2;
  return _s22HomeAutomationInternal24DeviceQuantifierSemanticO1loiySbAC_ACtFZ_0(&v4, &v5) & 1;
}

uint64_t sub_252948D44(uint64_t a1, uint64_t a2)
{
  v4 = sub_2529491C8();
  v5 = sub_25294921C();
  v6 = sub_252949270();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

uint64_t sub_252948DB8(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t _s22HomeAutomationInternal24DeviceQuantifierSemanticO1loiySbAC_ACtFZ_0(_BYTE *a1, _BYTE *a2)
{
  v2 = 6647407;
  v3 = *a1;
  v4 = *a2;
  if (v3 <= 1)
  {
    if (*a1)
    {
      v6 = 1701670771;
    }

    else
    {
      v6 = 6647407;
    }

    if (v3)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  else if (v3 == 2)
  {
    v5 = 0xE300000000000000;
    v6 = 7105633;
  }

  else if (v3 == 3)
  {
    v5 = 0xE400000000000000;
    v6 = 1752461154;
  }

  else
  {
    v5 = 0xE600000000000000;
    v6 = 0x747065637865;
  }

  v7 = 0xE300000000000000;
  v8 = 0xE300000000000000;
  v9 = 7105633;
  v10 = 0xE400000000000000;
  v11 = 1752461154;
  if (v4 != 3)
  {
    v11 = 0x747065637865;
    v10 = 0xE600000000000000;
  }

  if (v4 != 2)
  {
    v9 = v11;
    v8 = v10;
  }

  if (*a2)
  {
    v2 = 1701670771;
    v7 = 0xE400000000000000;
  }

  if (*a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v9;
  }

  if (*a2 <= 1u)
  {
    v13 = v7;
  }

  else
  {
    v13 = v8;
  }

  if (v6 == v12 && v5 == v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = sub_252E37DB4();
  }

  return v14 & 1;
}

unint64_t sub_252948F0C()
{
  result = qword_27F5403C8;
  if (!qword_27F5403C8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceQuantifierSemantic, &type metadata for DeviceQuantifierSemantic, v0, v1);
    atomic_store(result, &qword_27F5403C8);
  }

  return result;
}

unint64_t sub_252948F64()
{
  result = qword_27F5403D0;
  if (!qword_27F5403D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceQuantifierSemantic, &type metadata for DeviceQuantifierSemantic, v0, v1);
    atomic_store(result, &qword_27F5403D0);
  }

  return result;
}

unint64_t sub_252948FBC()
{
  result = qword_27F5403D8;
  if (!qword_27F5403D8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5403E0, &qword_252E3C5A0);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F5403D8);
  }

  return result;
}

unint64_t sub_252949024()
{
  result = qword_27F5403E8;
  if (!qword_27F5403E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceQuantifierSemantic, &type metadata for DeviceQuantifierSemantic, v0, v1);
    atomic_store(result, &qword_27F5403E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceQuantifierSemantic(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DeviceQuantifierSemantic(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2529491C8()
{
  result = qword_27F5403F0;
  if (!qword_27F5403F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceQuantifierSemantic, &type metadata for DeviceQuantifierSemantic, v0, v1);
    atomic_store(result, &qword_27F5403F0);
  }

  return result;
}

unint64_t sub_25294921C()
{
  result = qword_27F5403F8;
  if (!qword_27F5403F8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceQuantifierSemantic, &type metadata for DeviceQuantifierSemantic, v0, v1);
    atomic_store(result, &qword_27F5403F8);
  }

  return result;
}

unint64_t sub_252949270()
{
  result = qword_27F540400;
  if (!qword_27F540400)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DeviceQuantifierSemantic, &type metadata for DeviceQuantifierSemantic, v0, v1);
    atomic_store(result, &qword_27F540400);
  }

  return result;
}

uint64_t sub_2529492C8(uint64_t a1, uint64_t a2)
{
  v3[55] = a2;
  v3[56] = v2;
  v3[54] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  v3[57] = v4;
  v5 = *(v4 - 8);
  v3[58] = v5;
  v3[59] = *(v5 + 64);
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v6 = sub_252E33C44();
  v3[62] = v6;
  v3[63] = *(v6 - 8);
  v3[64] = swift_task_alloc();
  v3[65] = swift_task_alloc();
  v3[66] = swift_task_alloc();
  v3[67] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540338, &qword_252E3C340);
  v3[68] = swift_task_alloc();
  v3[69] = swift_task_alloc();
  v7 = sub_252E36AD4();
  v3[70] = v7;
  v3[71] = *(v7 - 8);
  v3[72] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529494CC, 0, 0);
}

uint64_t sub_2529494CC()
{
  if (qword_27F53F500 != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(*(v0 + 560), qword_27F544DA8);
  sub_252CC3D90(0xD000000000000029, 0x8000000252E6A550, 0xD00000000000009ALL, 0x8000000252E6A580);
  if (qword_27F53F498 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 576);
  v2 = *(v0 + 568);
  v3 = *(v0 + 560);
  v4 = *(v0 + 440);
  v5 = __swift_project_value_buffer(v3, qword_27F544C70);
  *(v0 + 416) = [v4 userTask];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540420, &unk_252E3C800);
  v6 = sub_252E36F94();
  MEMORY[0x2530AD570](v6);

  sub_252CC3D90(0x6B73615472657355, 0xEB000000000A203ALL, 0xD00000000000009ALL, 0x8000000252E6A580);

  (*(v2 + 16))(v1, v5, v3);
  v7 = [v4 filters];
  if (v7)
  {
    v8 = v7;
    type metadata accessor for HomeFilter();
    v9 = sub_252E37264();
  }

  else
  {
    v9 = 0;
  }

  v10 = *(v0 + 576);
  v11 = *(v0 + 568);
  v12 = *(v0 + 560);
  v13 = *(v0 + 552);
  v14 = *(v0 + 464);
  v96 = *(v0 + 456);
  v15 = *(v0 + 440);
  v16 = *(v0 + 448);
  *(v0 + 424) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540428, &unk_252E46650);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  sub_252CC3D90(0x3A737265746C6946, 0xEA00000000000A20, 0xD00000000000009ALL, 0x8000000252E6A580);

  (*(v11 + 8))(v10, v12);
  v18 = *(v16 + 64);
  *(v16 + 64) = v15;
  v19 = v15;

  v20 = (*(v14 + 56))(v13, 1, 1, v96);
  sub_252B680FC(v20);
  LODWORD(v14) = sub_252B64884();

  if (v14 == 3 && (v21 = [*(v0 + 440) userTask]) != 0 && ((v22 = v21, v23 = objc_msgSend(v21, sel_attribute), v22, v24 = vdupq_n_s64(v23), (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2864A54F0, v24), vceqq_s64(unk_2864A5500, v24)))) & 1) != 0) || qword_2864A5510 == v23))
  {
    v57 = *(v0 + 448);
    sub_252929E74(v57 + 24, v0 + 376);
    v58 = *(v57 + 112);
    v59 = swift_task_alloc();
    *(v0 + 584) = v59;
    *v59 = v0;
    v59[1] = sub_25294A144;
    v60 = *(v0 + 432);
    v61 = *(v0 + 440);

    return sub_252D099D8(v60, v57 + 72, v0 + 376, v58, v61);
  }

  else
  {
    if (sub_252C4B680(0x1E))
    {
      v25 = *(v0 + 536);
      v26 = *(v0 + 448);
      v27 = sub_252929E74(v26 + 24, v0 + 296);
      v28 = *(v26 + 112);
      sub_252B680FC(v27);
      v29 = sub_252B64C90();

      v31 = *(v0 + 320);
      v30 = *(v0 + 328);
      __swift_project_boxed_opaque_existential_1((v0 + 296), v31);
      sub_252929E74(v26 + 72, v0 + 336);
      v32 = swift_allocObject();
      *(v0 + 600) = v32;
      sub_252927BEC((v0 + 336), v32 + 16);
      *(v32 + 56) = v29 & 1;
      sub_252A6097C(v28, v25);
      v33 = swift_task_alloc();
      *(v0 + 608) = v33;
      *v33 = v0;
      v33[1] = sub_25294A260;
      v34 = *(v0 + 536);
      v35 = *(v0 + 432);
      v36 = &unk_252E3C828;
      v37 = v32;
LABEL_17:
      v45 = v31;
      v46 = v30;
LABEL_18:

      return sub_252BDB3DC(v35, v36, v37, v34, v45, v46);
    }

    v38 = sub_252C4B680(0x27);
    if (v38)
    {
      v39 = *(v0 + 528);
      v40 = *(v0 + 448);
      sub_252929E74(v40 + 24, v0 + 216);
      v41 = *(v40 + 112);
      v31 = *(v0 + 240);
      v30 = *(v0 + 248);
      __swift_project_boxed_opaque_existential_1((v0 + 216), v31);
      sub_252929E74(v40 + 72, v0 + 256);
      v42 = swift_allocObject();
      *(v0 + 624) = v42;
      sub_252927BEC((v0 + 256), v42 + 16);
      sub_252A6097C(v41, v39);
      v43 = swift_task_alloc();
      *(v0 + 632) = v43;
      *v43 = v0;
      v43[1] = sub_25294A4EC;
      v34 = *(v0 + 528);
      v35 = *(v0 + 432);
      v44 = &unk_252E3C820;
LABEL_16:
      v36 = v44;
      v37 = v42;
      goto LABEL_17;
    }

    v48 = *(sub_252B680FC(v38) + 48);

    if (v48 == 1)
    {
      v51 = *(v0 + 440);
      v50 = *(v0 + 448);
      sub_252929E74(v50 + 24, v0 + 136);
      v52 = *(v50 + 112);
      v53 = [v51 userTask];
      if (v53)
      {
        v54 = v53;
        v55 = [v53 taskType];

        v56 = v55 == 2;
      }

      else
      {
        sub_252C515AC();
        v56 = 0;
      }

      v78 = *(v0 + 520);
      v79 = *(v0 + 448);
      v80 = *(v0 + 160);
      v81 = *(v0 + 168);
      __swift_project_boxed_opaque_existential_1((v0 + 136), v80);
      sub_252929E74(v79 + 72, v0 + 176);
      v82 = swift_allocObject();
      *(v0 + 648) = v82;
      sub_252927BEC((v0 + 176), v82 + 16);
      *(v82 + 56) = v56;
      sub_252A6097C(v52, v78);
      v83 = swift_task_alloc();
      *(v0 + 656) = v83;
      *v83 = v0;
      v83[1] = sub_25294A778;
      v34 = *(v0 + 520);
      v35 = *(v0 + 432);
      v36 = &unk_252E3C818;
      v37 = v82;
      v45 = v80;
      v46 = v81;
      goto LABEL_18;
    }

    v62 = *(sub_252B680FC(v49) + 49);

    if (v62 == 1)
    {
      v63 = *(v0 + 512);
      v64 = *(v0 + 448);
      sub_252929E74(v64 + 24, v0 + 56);
      v65 = *(v64 + 112);
      v31 = *(v0 + 80);
      v30 = *(v0 + 88);
      __swift_project_boxed_opaque_existential_1((v0 + 56), v31);
      sub_252929E74(v64 + 72, v0 + 96);
      v42 = swift_allocObject();
      *(v0 + 672) = v42;
      sub_252927BEC((v0 + 96), v42 + 16);
      sub_252A6097C(v65, v63);
      v66 = swift_task_alloc();
      *(v0 + 680) = v66;
      *v66 = v0;
      v66[1] = sub_25294AAF4;
      v34 = *(v0 + 512);
      v35 = *(v0 + 432);
      v44 = &unk_252E3C810;
      goto LABEL_16;
    }

    v67 = *(v0 + 544);
    v69 = *(v0 + 456);
    v68 = *(v0 + 464);
    sub_252938414(*(v0 + 552), v67, &qword_27F540338, &qword_252E3C340);
    if ((*(v68 + 48))(v67, 1, v69) == 1)
    {
      v70 = *(v0 + 552);
      v71 = *(v0 + 440);
      sub_25293847C(*(v0 + 544), &qword_27F540338, &qword_252E3C340);
      sub_252E379F4();

      v72 = [v71 description];
      v73 = sub_252E36F34();
      v75 = v74;

      MEMORY[0x2530AD570](v73, v75);

      sub_252CC4050(0xD000000000000020, 0x8000000252E6A620, 0xD00000000000009ALL, 0x8000000252E6A580, 0xD000000000000029, 0x8000000252E6A650, 79);

      sub_2529515FC(0, 2, 0xD00000000000001ALL, 0x8000000252E6A680);
      type metadata accessor for HomeAutomationError(0);
      sub_25294B540(&qword_27F540430, 255, type metadata accessor for HomeAutomationError, byte_252E51C7C);
      swift_allocError();
      *v76 = v71;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v77 = v71;
      sub_25293847C(v70, &qword_27F540338, &qword_252E3C340);
    }

    else
    {
      v84 = *(v0 + 480);
      v85 = *(v0 + 488);
      v86 = *(v0 + 464);
      v87 = *(v0 + 448);
      sub_25294B588(*(v0 + 544), v85);
      sub_252929E74(v87 + 24, v0 + 16);
      v88 = *(v0 + 40);
      v89 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v88);
      v90 = *(v87 + 112);
      sub_252938414(v85, v84, &qword_27F540330, &unk_252E3C7F0);
      v91 = (*(v86 + 80) + 16) & ~*(v86 + 80);
      v92 = swift_allocObject();
      sub_25294B588(v84, v92 + v91);
      (*(v89 + 80))(v90, sub_25293DE58, v92, v88, v89);
      v93 = *(v0 + 552);
      v94 = *(v0 + 488);

      sub_25293847C(v94, &qword_27F540330, &unk_252E3C7F0);
      sub_25293847C(v93, &qword_27F540338, &qword_252E3C340);
      __swift_destroy_boxed_opaque_existential_1((v0 + 16));
    }

    v95 = *(v0 + 8);

    return v95();
  }
}

uint64_t sub_25294A144()
{
  v2 = *v1;
  *(v2 + 592) = v0;

  __swift_destroy_boxed_opaque_existential_1((v2 + 376));
  if (v0)
  {
    v3 = sub_25294AD80;
  }

  else
  {
    v3 = sub_25294B95C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_25294A260()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  *(*v1 + 616) = v0;

  v4 = (v3 + 8);
  if (v0)
  {
    (*v4)(v2[67], v2[62]);

    v5 = sub_25294A3E8;
  }

  else
  {
    v6 = v2[67];
    v7 = v2[62];

    (*v4)(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v2 + 37);
    v5 = sub_25294B95C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25294A3E8()
{
  v1 = v0[69];
  __swift_destroy_boxed_opaque_existential_1(v0 + 37);
  sub_25293847C(v1, &qword_27F540338, &qword_252E3C340);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25294A4EC()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  *(*v1 + 640) = v0;

  v4 = (v3 + 8);
  if (v0)
  {
    (*v4)(v2[66], v2[62]);

    v5 = sub_25294A674;
  }

  else
  {
    v6 = v2[66];
    v7 = v2[62];

    (*v4)(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v2 + 27);
    v5 = sub_25294B95C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25294A674()
{
  v1 = v0[69];
  __swift_destroy_boxed_opaque_existential_1(v0 + 27);
  sub_25293847C(v1, &qword_27F540338, &qword_252E3C340);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25294A778()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  *(*v1 + 664) = v0;

  v4 = (v3 + 8);
  if (v0)
  {
    (*v4)(v2[65], v2[62]);

    v5 = sub_25294A9F0;
  }

  else
  {
    v6 = v2[65];
    v7 = v2[62];

    (*v4)(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v2 + 17);
    v5 = sub_25294A900;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25294A900()
{
  sub_25293847C(*(v0 + 552), &qword_27F540338, &qword_252E3C340);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25294A9F0()
{
  v1 = v0[69];
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  sub_25293847C(v1, &qword_27F540338, &qword_252E3C340);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25294AAF4()
{
  v2 = *v1;
  v3 = *(*v1 + 504);
  *(*v1 + 688) = v0;

  v4 = (v3 + 8);
  if (v0)
  {
    (*v4)(v2[64], v2[62]);

    v5 = sub_25294AC7C;
  }

  else
  {
    v6 = v2[64];
    v7 = v2[62];

    (*v4)(v6, v7);
    __swift_destroy_boxed_opaque_existential_1(v2 + 7);
    v5 = sub_25294B95C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25294AC7C()
{
  v1 = v0[69];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_25293847C(v1, &qword_27F540338, &qword_252E3C340);

  v2 = v0[1];

  return v2();
}

uint64_t sub_25294AD80()
{
  sub_25293847C(*(v0 + 552), &qword_27F540338, &qword_252E3C340);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25294AE78()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  __swift_destroy_boxed_opaque_existential_1((v0 + 72));

  return swift_deallocClassInstance();
}

unint64_t sub_25294AEF8()
{
  result = qword_27F540408;
  if (!qword_27F540408)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540410, qword_252E54EA0);
    result = swift_getWitnessTable(MEMORY[0x277D5BEC0], v3, v0, v1);
    atomic_store(result, &qword_27F540408);
  }

  return result;
}

uint64_t sub_25294AF5C(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable(byte_252E3C7D0);

  return sub_252BEF6A8();
}

uint64_t sub_25294AFC4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_252C548A4(a1, a2);
}

uint64_t sub_25294B080(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_2529492C8(a1, v4);
}

uint64_t sub_25294B128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomePromptForConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821BA040](a1, a2, v9, a4);
}

uint64_t sub_25294B1EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for ControlHomePromptForConfirmationStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821BA048](a1, a2, v9, a4);
}

uint64_t sub_25294B2B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return MEMORY[0x2821BA030](a1, a2, a3);
}

uint64_t sub_25294B364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return MEMORY[0x2821BA028](a1, a2, a3);
}

uint64_t sub_25294B418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25294B954;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

uint64_t sub_25294B4E8(uint64_t a1, uint64_t a2)
{
  result = sub_25294B540(&qword_27F540418, a2, type metadata accessor for ControlHomePromptForConfirmationStrategy, a9_3);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25294B540(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = a3(a2);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25294B588(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25294B5F8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B958;

  return sub_252D0AAFC(v0 + 16);
}

uint64_t sub_25294B68C()
{
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252D0A55C(v0 + 16, v2);
}

uint64_t sub_25294B728()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25294B7BC;

  return sub_252D0A404(v0 + 16);
}

uint64_t sub_25294B7BC(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_25294B8B8()
{
  v2 = *(v0 + 56);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252D0A274(v0 + 16, v2);
}

double HomeEntity.Builder.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 7;
  *(v0 + 40) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 120) = v1;
  return result;
}

double HomeEntity.Builder.init()()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 7;
  *(v0 + 40) = 0;
  v1 = MEMORY[0x277D84F90];
  *(v0 + 48) = 0;
  *(v0 + 56) = v1;
  result = 0.0;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0;
  *(v0 + 120) = v1;
  return result;
}

uint64_t sub_25294B9E4(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }
}

uint64_t sub_25294BA3C(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
}

uint64_t sub_25294BA84(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2529AA3C0(0, v2, 0);
    v3 = v11;
    v5 = (a1 + 32);
    v6 = *(v11 + 16);
    do
    {
      v8 = *v5++;
      v7 = v8;
      v12 = v3;
      v9 = *(v3 + 24);
      if (v6 >= v9 >> 1)
      {
        sub_2529AA3C0((v9 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6++ + 32) = v7;
      --v2;
    }

    while (v2);
  }

  *(v1 + 56) = v3;
}

uint64_t sub_25294BB7C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }
}

uint64_t sub_25294BBC8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(v2 + 88) = a1;
    *(v2 + 96) = a2;
  }
}

uint64_t sub_25294BC14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(v2 + 104) = a1;
    *(v2 + 112) = a2;
  }
}

uint64_t sub_25294BC60(uint64_t a1)
{
  if (a1)
  {
    *(v1 + 120) = a1;
  }
}

id sub_25294BCA8()
{
  type metadata accessor for HomeEntity();
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_252E36F04();
  v3 = [v1 initWithIdentifier:0 displayString:v2];

  if (v0[3])
  {

    v4 = sub_252E36F04();
  }

  else
  {
    v4 = 0;
  }

  [v3 setHomeEntityName_];

  [v3 setType_];
  if (v0[6])
  {

    v5 = sub_252E36F04();
  }

  else
  {
    v5 = 0;
  }

  [v3 setEntityIdentifier_];

  v6 = sub_252E37254();

  [v3 setDeviceTypes_];

  [v3 setSceneType_];
  if (v0[12])
  {

    v7 = sub_252E36F04();
  }

  else
  {
    v7 = 0;
  }

  [v3 setHome_];

  if (v0[10])
  {

    v8 = sub_252E36F04();
  }

  else
  {
    v8 = 0;
  }

  [v3 setRoom_];

  v9 = sub_252E37254();

  [v3 setZones_];

  if (v0[14])
  {

    v10 = sub_252E36F04();
  }

  else
  {
    v10 = 0;
  }

  [v3 setGroup_];

  return v3;
}

uint64_t sub_25294BF30()
{
  v2 = v0[2];
  v1 = v0[3];
  v12 = v0[5];
  v13 = v0[4];
  v4 = v0[6];
  v3 = v0[7];
  v14 = v0[9];
  v15 = v0[8];
  v5 = v0[10];
  v6 = v0[12];
  v16 = v0[11];
  v17 = v0[13];
  v8 = v0[14];
  v7 = v0[15];
  type metadata accessor for HomeEntity.Builder();
  v9 = swift_allocObject();
  *(v9 + 32) = 7;
  *(v9 + 40) = 0;
  v10 = MEMORY[0x277D84F90];
  *(v9 + 48) = 0;
  *(v9 + 56) = v10;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0u;
  *(v9 + 96) = 0u;
  *(v9 + 112) = 0;
  *(v9 + 120) = v10;
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;

  *(v9 + 32) = v13;
  *(v9 + 40) = v12;
  *(v9 + 48) = v4;

  *(v9 + 56) = v3;

  *(v9 + 64) = v15;
  *(v9 + 72) = v14;
  *(v9 + 80) = v5;

  *(v9 + 88) = v16;
  *(v9 + 96) = v6;

  *(v9 + 104) = v17;
  *(v9 + 112) = v8;

  *(v9 + 120) = v7;

  return v9;
}

void *HomeEntity.Builder.deinit()
{

  return v0;
}

uint64_t HomeEntity.Builder.__deallocating_deinit()
{
  HomeEntity.Builder.deinit();

  return swift_deallocClassInstance();
}

uint64_t static AssistantServicesInterface.deviceSupportsNLv4()()
{
  if (AFDeviceSupportsHybridUOD())
  {
    return 1;
  }

  else
  {
    return AFDeviceSupportsFullSiriUOD();
  }
}

uint64_t getEnumTagSinglePayload for AssistantServicesInterface(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AssistantServicesInterface(_WORD *result, int a2, int a3)
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

uint64_t sub_25294C49C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540460, &qword_252E5E960);
  MEMORY[0x28223BE20](v3 - 8);
  v63 = &v59 - v4;
  v65 = type metadata accessor for HomeAutomationNLV3Intent(0);
  MEMORY[0x28223BE20](v65);
  v66 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E34164();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E358D4();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v59 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v59 - v15;
  v17 = *(v7 + 16);
  v60 = a1;
  v18 = a1;
  v19 = v17;
  v17(v9, v18, v6);
  v20 = (*(v7 + 88))(v9, v6);
  if (v20 == *MEMORY[0x277D5C128])
  {
    LODWORD(v60) = *MEMORY[0x277D5C128];
    (*(v7 + 96))(v9, v6);
LABEL_5:
    v61 = v7;
    v62 = v6;
    v21 = *(v11 + 32);
    v21(v16, v9, v10);
    v21(v14, v16, v10);
    v22 = v66;
    HomeAutomationNLV3Intent.init(_:)(v14, v66);
    _s7BuilderCMa();
    inited = swift_initStackObject();
    v24 = MEMORY[0x277D84F90];
    inited[3] = 0;
    inited[4] = 0;
    inited[2] = v24;
    v25 = v63;
    if (qword_27F53F7B0 != -1)
    {
      swift_once();
    }

    sub_25294E89C();
    sub_252E34BE4();
    v26 = v68;
    if (v68)
    {
      v27 = v67;
      v28 = MEMORY[0x277D5E5C8];
      v29 = sub_252E34604();
      v31 = v30;
      *v25 = v27;
      v25[1] = v26;
      v32 = *v28;
      v33 = sub_252E34944();
      v34 = *(v33 - 8);
      (*(v34 + 104))(v25, v32, v33);
      (*(v34 + 56))(v25, 0, 1, v33);
      v22 = v66;

      sub_25296C588(v29, v31, v25, MEMORY[0x277D84F90]);

      sub_25293847C(v25, &qword_27F540460, &qword_252E5E960);
    }

    if (qword_27F53F7F0 != -1)
    {
      swift_once();
    }

    v35 = sub_252E34BF4();
    sub_25296CA70(v35);

    if (qword_27F53F868 != -1)
    {
      swift_once();
    }

    v36 = sub_252E34BF4();
    sub_25296CADC(v36);

    if (qword_27F53F828 != -1)
    {
      swift_once();
    }

    v37 = sub_252E34BF4();
    sub_25296CAB8(v37);

    if (qword_27F53F818 != -1)
    {
      swift_once();
    }

    v38 = sub_252E34BF4();
    sub_25296CA94(v38);

    if (qword_27F53F820 != -1)
    {
      swift_once();
    }

    sub_252E34BE4();
    v39 = v68;
    if (v68)
    {
      v40 = v67;
      v41 = sub_252E34604();
      v43 = v42;
      *v25 = v40;
      v25[1] = v39;
      v44 = *MEMORY[0x277D5E5C8];
      v45 = sub_252E34944();
      v46 = *(v45 - 8);
      (*(v46 + 104))(v25, v44, v45);
      (*(v46 + 56))(v25, 0, 1, v45);
      v22 = v66;

      sub_25296C588(v41, v43, v25, MEMORY[0x277D84F90]);

      sub_25293847C(v25, &qword_27F540460, &qword_252E5E960);
    }

    if (qword_27F53F7A0 != -1)
    {
      swift_once();
    }

    v47 = sub_252E34BF4();
    sub_25296D2B0(v47);

    if (qword_27F53F810 != -1)
    {
      swift_once();
    }

    v48 = sub_252E34BF4();
    sub_25296D4D0(v48);

    if (qword_27F53F7E8 != -1)
    {
      swift_once();
    }

    sub_252E34BE4();
    v49 = v67;
    if (v67 != 21)
    {
      v50 = sub_252E34604();
      v52 = v51;
      v69 = v49;
      PlaceHintSemantic.rawValue.getter();
      sub_252E34924();
      v53 = *MEMORY[0x277D5E5D8];
      v54 = sub_252E34944();
      v55 = *(v54 - 8);
      (*(v55 + 104))(v25, v53, v54);
      (*(v55 + 56))(v25, 0, 1, v54);
      sub_25296C588(v50, v52, v25, MEMORY[0x277D84F90]);

      sub_25293847C(v25, &qword_27F540460, &qword_252E5E960);
    }

    v56 = v64;
    sub_25296CCC4(v64);

    sub_25294E8F4(v22);
    return (*(v61 + 104))(v56, v60, v62);
  }

  if (v20 == *MEMORY[0x277D5C158])
  {
    LODWORD(v60) = *MEMORY[0x277D5C128];
    (*(v7 + 96))(v9, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540468, &unk_252E3FC60);

    goto LABEL_5;
  }

  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v58 = sub_252E36AD4();
  __swift_project_value_buffer(v58, qword_27F544D60);
  sub_252CC4050(0xD000000000000043, 0x8000000252E6A820, 0xD00000000000006FLL, 0x8000000252E6A720, 0xD000000000000018, 0x8000000252E6A870, 41);
  v19(v64, v60, v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_25294CF38@<X0>(const void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v50 = a3;
  v49 = sub_252E34164();
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v43 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540440, &qword_252E3C8B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v42 - v6;
  v44 = sub_252E341A4();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v46 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_252E34224();
  v9 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540448, &unk_252E3C8B8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v42 - v13;
  v15 = sub_252E34284();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v42 - v20;
  memcpy(v53, a1, 0x1F8uLL);
  v22 = sub_25294E950(v53, 0x67696C6873616C66, 0xEA00000000007468, 0x747465536C6F6F62, 0xEF656D614E676E69);
  if (v22)
  {
    v23 = v22;
    sub_252E344C4();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_25293847C(v14, &qword_27F540448, &unk_252E3C8B8);
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_27F544D90);
      v53[0] = 0;
      v53[1] = 0xE000000000000000;
      sub_252E379F4();

      v53[0] = 0xD00000000000002ELL;
      v53[1] = 0x8000000252E6A7C0;
      v52 = v23;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F540450, &qword_252E3C8C8);
      v25 = sub_252E36F94();
      MEMORY[0x2530AD570](v25);

      sub_252CC4050(v53[0], v53[1], 0xD00000000000006FLL, 0x8000000252E6A720, 0xD000000000000026, 0x8000000252E6A790, 55);

      swift_unknownObjectRelease();
      return (*(v51 + 16))(v50, v48, v49);
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
      v32 = v45;
      (*(v9 + 104))(v11, *MEMORY[0x277D5DA78], v45);
      (*(v16 + 16))(v19, v21, v15);
      v33 = *(v9 + 16);
      v48 = v11;
      v33(v7, v11, v32);
      (*(v9 + 56))(v7, 0, 1, v32);
      v34 = v46;
      sub_252E34194();
      v35 = v50;
      v36 = v34;
      v37 = v44;
      (*(v47 + 16))(v50, v36, v44);
      v38 = v49;
      (*(v51 + 104))(v35, *MEMORY[0x277D5C160], v49);
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v39 = sub_252E36AD4();
      v42[1] = __swift_project_value_buffer(v39, qword_27F544D60);
      v53[0] = 0;
      v53[1] = 0xE000000000000000;
      sub_252E379F4();

      v53[0] = 0xD000000000000029;
      v53[1] = 0x8000000252E6A7F0;
      v40 = v43;
      (*(v51 + 16))(v43, v35, v38);
      v41 = sub_252AD2138(v40);
      MEMORY[0x2530AD570](v41);

      sub_252CC3D90(v53[0], v53[1], 0xD00000000000006FLL, 0x8000000252E6A720);
      swift_unknownObjectRelease();

      (*(v47 + 8))(v46, v37);
      (*(v9 + 8))(v48, v45);
      return (*(v16 + 8))(v21, v15);
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544D60);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6A6E0, 0xD00000000000006FLL, 0x8000000252E6A720, 0xD000000000000026, 0x8000000252E6A790, 50);
    v28 = v50;
    v29 = *(v51 + 16);
    v30 = v48;
    v31 = v49;

    return v29(v28, v30, v31);
  }
}

uint64_t sub_25294D744@<X0>(const void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v50 = a3;
  v49 = sub_252E34164();
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v43 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540440, &qword_252E3C8B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v42 - v6;
  v44 = sub_252E341A4();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v46 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_252E34224();
  v9 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540448, &unk_252E3C8B8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v42 - v13;
  v15 = sub_252E34284();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v42 - v20;
  memcpy(v53, a1, 0x1F8uLL);
  v22 = sub_25294E950(v53, 0x6B636F6C6E75, 0xE600000000000000, 0x74416D6574737973, 0xEF65747562697274);
  if (v22)
  {
    v23 = v22;
    sub_252E344C4();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_25293847C(v14, &qword_27F540448, &unk_252E3C8B8);
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_27F544D90);
      v53[0] = 0;
      v53[1] = 0xE000000000000000;
      sub_252E379F4();

      v53[0] = 0xD00000000000002ELL;
      v53[1] = 0x8000000252E6A7C0;
      v52 = v23;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F540450, &qword_252E3C8C8);
      v25 = sub_252E36F94();
      MEMORY[0x2530AD570](v25);

      sub_252CC4050(v53[0], v53[1], 0xD00000000000006FLL, 0x8000000252E6A720, 0xD00000000000001FLL, 0x8000000252E6A890, 102);

      swift_unknownObjectRelease();
      return (*(v51 + 16))(v50, v48, v49);
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
      v32 = v45;
      (*(v9 + 104))(v11, *MEMORY[0x277D5DA78], v45);
      (*(v16 + 16))(v19, v21, v15);
      v33 = *(v9 + 16);
      v48 = v11;
      v33(v7, v11, v32);
      (*(v9 + 56))(v7, 0, 1, v32);
      v34 = v46;
      sub_252E34194();
      v35 = v50;
      v36 = v34;
      v37 = v44;
      (*(v47 + 16))(v50, v36, v44);
      v38 = v49;
      (*(v51 + 104))(v35, *MEMORY[0x277D5C160], v49);
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v39 = sub_252E36AD4();
      v42[1] = __swift_project_value_buffer(v39, qword_27F544D60);
      v53[0] = 0;
      v53[1] = 0xE000000000000000;
      sub_252E379F4();

      v53[0] = 0xD000000000000029;
      v53[1] = 0x8000000252E6A8B0;
      v40 = v43;
      (*(v51 + 16))(v43, v35, v38);
      v41 = sub_252AD2138(v40);
      MEMORY[0x2530AD570](v41);

      sub_252CC3D90(v53[0], v53[1], 0xD00000000000006FLL, 0x8000000252E6A720);
      swift_unknownObjectRelease();

      (*(v47 + 8))(v46, v37);
      (*(v9 + 8))(v48, v45);
      return (*(v16 + 8))(v21, v15);
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544D60);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6A6E0, 0xD00000000000006FLL, 0x8000000252E6A720, 0xD00000000000001FLL, 0x8000000252E6A890, 97);
    v28 = v50;
    v29 = *(v51 + 16);
    v30 = v48;
    v31 = v49;

    return v29(v28, v30, v31);
  }
}

uint64_t sub_25294DF48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_252E34804();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252E35074();
  swift_allocObject();
  v8 = sub_252E35064();
  sub_252E35054();
  v9 = *(a3 + 16);
  if (v9)
  {
    v12 = *(v5 + 16);
    v11 = v5 + 16;
    v10 = v12;
    v13 = a3 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v14 = *(v11 + 56);
    v12(v7, v13, v4);
    while (1)
    {
      if (sub_252E35044())
      {
        sub_252E34634();
      }

      (*(v11 - 8))(v7, v4);
      v13 += v14;
      if (!--v9)
      {
        break;
      }

      v10(v7, v13, v4);
    }
  }

  return v8;
}

uint64_t sub_25294E0C8@<X0>(const void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v50 = a3;
  v49 = sub_252E34164();
  v51 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v43 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540440, &qword_252E3C8B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v42 - v6;
  v44 = sub_252E341A4();
  v47 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v46 = v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_252E34224();
  v9 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v11 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540448, &unk_252E3C8B8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v42 - v13;
  v15 = sub_252E34284();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = v42 - v20;
  memcpy(v53, a1, 0x1F8uLL);
  v22 = sub_25294ED00(v53);
  if (v22)
  {
    v23 = v22;
    sub_252E344C4();
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
      sub_25293847C(v14, &qword_27F540448, &unk_252E3C8B8);
      if (qword_27F53F4F8 != -1)
      {
        swift_once();
      }

      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_27F544D90);
      v53[0] = 0;
      v53[1] = 0xE000000000000000;
      sub_252E379F4();

      v53[0] = 0xD00000000000002ELL;
      v53[1] = 0x8000000252E6A7C0;
      v52 = v23;
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F540450, &qword_252E3C8C8);
      v25 = sub_252E36F94();
      MEMORY[0x2530AD570](v25);

      sub_252CC4050(v53[0], v53[1], 0xD00000000000006FLL, 0x8000000252E6A720, 0xD000000000000030, 0x8000000252E6A8E0, 149);

      swift_unknownObjectRelease();
      return (*(v51 + 16))(v50, v48, v49);
    }

    else
    {
      (*(v16 + 32))(v21, v14, v15);
      v32 = v45;
      (*(v9 + 104))(v11, *MEMORY[0x277D5DA78], v45);
      (*(v16 + 16))(v19, v21, v15);
      v33 = *(v9 + 16);
      v48 = v11;
      v33(v7, v11, v32);
      (*(v9 + 56))(v7, 0, 1, v32);
      v34 = v46;
      sub_252E34194();
      v35 = v50;
      v36 = v34;
      v37 = v44;
      (*(v47 + 16))(v50, v36, v44);
      v38 = v49;
      (*(v51 + 104))(v35, *MEMORY[0x277D5C160], v49);
      if (qword_27F53F4E8 != -1)
      {
        swift_once();
      }

      v39 = sub_252E36AD4();
      v42[1] = __swift_project_value_buffer(v39, qword_27F544D60);
      v53[0] = 0;
      v53[1] = 0xE000000000000000;
      sub_252E379F4();

      v53[0] = 0xD000000000000026;
      v53[1] = 0x8000000252E6A920;
      v40 = v43;
      (*(v51 + 16))(v43, v35, v38);
      v41 = sub_252AD2138(v40);
      MEMORY[0x2530AD570](v41);

      sub_252CC3D90(v53[0], v53[1], 0xD00000000000006FLL, 0x8000000252E6A720);
      swift_unknownObjectRelease();

      (*(v47 + 8))(v46, v37);
      (*(v9 + 8))(v48, v45);
      return (*(v16 + 8))(v21, v15);
    }
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v27 = sub_252E36AD4();
    __swift_project_value_buffer(v27, qword_27F544D60);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6A6E0, 0xD00000000000006FLL, 0x8000000252E6A720, 0xD000000000000030, 0x8000000252E6A8E0, 144);
    v28 = v50;
    v29 = *(v51 + 16);
    v30 = v48;
    v31 = v49;

    return v29(v28, v30, v31);
  }
}

unint64_t sub_25294E89C()
{
  result = qword_27F540470;
  if (!qword_27F540470)
  {
    v3 = type metadata accessor for HomeAutomationNLV3Intent(255);
    result = swift_getWitnessTable(protocol conformance descriptor for HomeAutomationNLV3Intent, v3, v0, v1);
    atomic_store(result, &qword_27F540470);
  }

  return result;
}

uint64_t sub_25294E8F4(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationNLV3Intent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_25294E950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30[1] = a4;
  v30[2] = a5;
  v31 = a2;
  v32 = a3;
  v6 = sub_252E34B74();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 384) == 22)
  {
    goto LABEL_15;
  }

  v10 = *(a1 + 192);
  v34 = *(a1 + 384);
  v33 = 0;
  v11 = HomeAutomationIntent.UsoTaskType.rawValue.getter();
  v13 = v12;
  if (v11 == HomeAutomationIntent.UsoTaskType.rawValue.getter() && v13 == v14)
  {

    goto LABEL_6;
  }

  v15 = sub_252E37DB4();

  if ((v15 & 1) == 0)
  {
LABEL_15:
    sub_252E35474();
    swift_allocObject();
    v21 = sub_252E35464();
LABEL_16:
    v22 = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540250, &qword_252E3C080);
    v23 = sub_252E34804();
    v24 = *(v23 - 8);
    v25 = (*(v24 + 80) + 32) & ~*(v24 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_252E3C290;
    (*(v7 + 104))(v9, *MEMORY[0x277D5E690], v6);
    sub_252E34B64();
    (*(v7 + 8))(v9, v6);
    v28 = v31;
    v27 = v32;
    sub_252E347D4();
    sub_25294DF48(v28, v27, v26);
    swift_setDeallocating();
    (*(v24 + 8))(v26 + v25, v23);
    swift_deallocClassInstance();
    sub_252E355D4();
    v29 = sub_252B0EB38(v22);

    return v29;
  }

LABEL_6:
  v16 = *(v10 + 16);

  v18 = 0;
  while (1)
  {
    if (v16 == v18)
    {

      sub_252E353C4();
      swift_allocObject();
      v21 = sub_252E353B4();
      goto LABEL_16;
    }

    if (v18 >= *(v10 + 16))
    {
      break;
    }

    v35 = *(v10 + v18 + 32);
    if (StateSemantic.rawValue.getter() == 6710895 && v20 == 0xE300000000000000)
    {

LABEL_14:

      goto LABEL_15;
    }

    ++v18;
    v19 = sub_252E37DB4();

    if (v19)
    {
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

id sub_25294ED00(void *__src)
{
  memcpy(__dst, __src, sizeof(__dst));
  v1 = sub_252A0EA50();
  v2 = sub_252C75D58(v1);

  if (*(v2 + 16) == 1)
  {
    v3 = sub_252DB4F48();
    v5 = v4;

    if ((v5 & 1) == 0 && (v3 - 2) <= 3)
    {
      sub_252E34BC4();
      swift_allocObject();
      v6 = MEMORY[0x2530AB060](0x6E61435F69726973, 0xEB0000000064656ELL);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_252E3C130;
      sub_252E34DF4();
      swift_allocObject();
      *(v7 + 32) = sub_252E34DE4();
      sub_252E34BB4();

      sub_252E34B34();
      swift_allocObject();
      v8 = MEMORY[0x2530AAFD0](0x6E61435F69726973, 0xEB0000000064656ELL, 0x6E6F69746361, 0xE600000000000000);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_252E3C130;
      *(v9 + 32) = v6;

      sub_252E34B24();

      v10 = sub_252B0EB38(v8);

      return v10;
    }
  }

  else
  {
  }

  return 0;
}

void *sub_25294EF84(void *a1)
{
  v3 = sub_252E32E84();
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = a1[3];
  v52 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v13 = v52;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v13);
    type metadata accessor for Group(0);
    swift_deallocPartialClassInstance();
    return v11;
  }

  v12 = v7;
  LOBYTE(v53[0]) = 0;
  sub_252950ADC(&qword_27F540498, MEMORY[0x277CC9618]);
  sub_252E37C64();
  v15 = v3;
  LOBYTE(v54) = 1;
  sub_252950A60();
  sub_252E37C64();
  v16 = v52;
  v17 = v5;
  v18 = v53[0];
  LOBYTE(v53[0]) = 2;
  v48 = sub_252E37C04();
  v49 = v18;
  v50 = v19;
  LOBYTE(v53[0]) = 3;
  v20 = sub_252E37BA4();
  v42 = v12;
  v44 = v9;
  v46 = v21;
  v47 = v15;
  v22 = v20;
  v23 = type metadata accessor for HomeStore(0);
  v24 = static HomeStore.shared.getter(v23);
  v25 = sub_2529D9D18();

  MEMORY[0x28223BE20](v26);
  v28 = v48;
  v27 = v49;
  *(&v40 - 6) = v17;
  *(&v40 - 5) = v28;
  *(&v40 - 4) = v50;
  *(&v40 - 3) = v22;
  v41 = v22;
  *(&v40 - 2) = v46;
  *(&v40 - 1) = v27;
  v29 = sub_2529A3DE8(sub_252950AB4, (&v40 - 8), v25);
  v43 = 0;

  v45 = v29;
  if (!v29)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    v35 = __swift_project_value_buffer(v34, qword_27F544CB8);
    sub_252CC4050(0xD000000000000022, 0x8000000252E6A980, 0xD00000000000006BLL, 0x8000000252E6A9B0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 43);
    strcpy(v53, "identifier: ");
    BYTE5(v53[1]) = 0;
    HIWORD(v53[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8, MEMORY[0x277CC9628]);
    v36 = sub_252E37D94();
    MEMORY[0x2530AD570](v36);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006BLL, 0x8000000252E6A9B0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 44);

    v53[0] = 0x203A656D616ELL;
    v53[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v48, v50);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006BLL, 0x8000000252E6A9B0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 45);

    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    sub_252E379F4();

    v53[0] = 0xD000000000000015;
    v53[1] = 0x8000000252E6AA20;
    v54 = v41;
    v55 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v37 = sub_252E36F94();
    MEMORY[0x2530AD570](v37);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006BLL, 0x8000000252E6A9B0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 46);

    strcpy(v53, "entityType: ");
    BYTE5(v53[1]) = 0;
    HIWORD(v53[1]) = -5120;
    v54 = v49;
    v38 = sub_252E36F94();
    MEMORY[0x2530AD570](v38);

    v11 = v35;
    sub_252CC4050(v53[0], v53[1], 0xD00000000000006BLL, 0x8000000252E6A9B0, 0x6F72662874696E69, 0xEB00000000293A6DLL, 47);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v42 + 8))(v44, v6);
    (*(v51 + 8))(v17, v47);
    v13 = v16;
    goto LABEL_4;
  }

  v30 = v45;

  v31 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate);

  v11 = v56;
  *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate) = v31;
  sub_252929E74(v16, v53);
  v32 = v43;
  v33 = Entity.init(from:)(v53);
  if (v32)
  {
    (*(v12 + 8))(v44, v6);

    (*(v51 + 8))(v17, v47);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = v33;
    (*(v12 + 8))(v44, v6);

    v39 = *(v51 + 8);

    v39(v17, v47);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return v11;
}

BOOL sub_25294F7DC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 4;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 4;
      }
    }
  }

  return 0;
}

uint64_t sub_25294F8D8(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = sub_2529F1D14(a1);

  v9 = v2;
  v8[2] = &v9;
  LOBYTE(v2) = sub_252A00B58(sub_2529509E4, v8, v6);

  return v2 & 1;
}

uint64_t sub_25294F970()
{
  v33 = sub_252E32E84();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate) services];
  sub_252950854();
  v5 = sub_252E37264();

  v34 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v7 = 0;
    v31 = v5 & 0xFFFFFFFFFFFFFF8;
    v32 = v5 & 0xC000000000000001;
    v28 = v1 + 4;
    v29 = i;
    v30 = v5;
    while (1)
    {
      if (v32)
      {
        v8 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= *(v31 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v1 = v8;
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      type metadata accessor for Service(0);
      v10 = swift_allocObject();
      *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v1;
      v11 = v1;
      v12 = [v11 uniqueIdentifier];
      v13 = v3;
      sub_252E32E64();

      v14 = [v11 name];
      v15 = sub_252E36F34();
      v17 = v16;

      v18 = [v11 assistantIdentifier];
      if (v18)
      {
        v19 = v18;
        v20 = sub_252E36F34();
        v1 = v21;
      }

      else
      {

        v20 = 0;
        v1 = 0;
      }

      v3 = v13;
      v22 = (*v28)(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v13, v33);
      v23 = (v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v23 = v15;
      v23[1] = v17;
      *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
      v24 = (v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v24 = v20;
      v24[1] = v1;
      MEMORY[0x2530AD700](v22);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v7;
      v5 = v30;
      if (v9 == v29)
      {
        v25 = v34;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_20:

  return v25;
}

BOOL sub_25294FCB4(uint64_t a1)
{
  v24 = a1;
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate) services];
  sub_252950854();
  v10 = sub_252E37264();

  v11 = v10;
  if (v10 >> 62)
  {
LABEL_15:
    v22 = v11;
    v25 = v11 & 0xFFFFFFFFFFFFFF8;
    v26 = sub_252E378C4();
    v11 = v22;
  }

  else
  {
    v25 = v10 & 0xFFFFFFFFFFFFFF8;
    v26 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v23 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
  v13 = v11 & 0xC000000000000001;
  v14 = (v3 + 8);
  do
  {
    v3 = v12;
    if (v26 == v12)
    {
      break;
    }

    if (v13)
    {
      v15 = v11;
      v11 = MEMORY[0x2530ADF00](v12);
    }

    else
    {
      if (v12 >= *(v25 + 16))
      {
        goto LABEL_14;
      }

      v15 = v11;
      v11 = *(v11 + 8 * v12 + 32);
    }

    v16 = v11;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

    v17 = [v11 uniqueIdentifier];
    sub_252E32E64();

    v18 = [*(v24 + v23) uniqueIdentifier];
    sub_252E32E64();

    LOBYTE(v18) = sub_252E32E54();
    v19 = *v14;
    (*v14)(v6, v2);
    v19(v8, v2);
    v12 = v3 + 1;
    v11 = v15;
  }

  while ((v18 & 1) == 0);
  v20 = v26 != v3;

  return v20;
}

uint64_t sub_25294FF40()
{
  v1 = v0;
  v42 = sub_252E32E84();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v43 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate);
  v5 = &off_279711000;
  v6 = [v4 services];
  sub_252950854();
  v7 = sub_252E37264();

  if (v7 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_252E378C4())
  {

    if (!i)
    {
      v31 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);

      return v31;
    }

    v45 = 0;
    v46 = 0xE000000000000000;
    sub_252E379F4();
    v9 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name;
    v11 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v10 = *(v9 + 8);

    v45 = v11;
    v46 = v10;
    MEMORY[0x2530AD570](0x6976726573207B20, 0xED0000203A736563);
    v12 = [v4 v5[280]];
    v13 = sub_252E37264();

    v44 = MEMORY[0x277D84F90];
    if (v13 >> 62)
    {
      break;
    }

    v1 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      goto LABEL_24;
    }

LABEL_6:
    v14 = 0;
    v40 = v13 & 0xFFFFFFFFFFFFFF8;
    v41 = v13 & 0xC000000000000001;
    v38 = (v2 + 32);
    v39 = v13;
    while (1)
    {
      if (v41)
      {
        v15 = MEMORY[0x2530ADF00](v14, v13);
      }

      else
      {
        if (v14 >= *(v40 + 16))
        {
          goto LABEL_21;
        }

        v15 = *(v13 + 8 * v14 + 32);
      }

      v16 = v15;
      v5 = (v14 + 1);
      if (__OFADD__(v14, 1))
      {
        break;
      }

      type metadata accessor for Service(0);
      v2 = swift_allocObject();
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) = v16;
      v17 = v16;
      v18 = [v17 uniqueIdentifier];
      sub_252E32E64();

      v19 = [v17 name];
      v20 = sub_252E36F34();
      v22 = v21;

      v23 = [v17 assistantIdentifier];
      if (v23)
      {
        v4 = v23;
        v24 = sub_252E36F34();
        v26 = v25;
      }

      else
      {

        v24 = 0;
        v26 = 0;
      }

      v27 = (*v38)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v43, v42);
      v28 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v28 = v20;
      v28[1] = v22;
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 7;
      v29 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v29 = v24;
      v29[1] = v26;
      MEMORY[0x2530AD700](v27);
      if (*((v44 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v14;
      v13 = v39;
      if (v5 == v1)
      {
        v30 = v44;
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v1 = sub_252E378C4();
  if (v1)
  {
    goto LABEL_6;
  }

LABEL_24:
  v30 = MEMORY[0x277D84F90];
LABEL_25:

  v32 = type metadata accessor for Service(0);
  v33 = MEMORY[0x2530AD730](v30, v32);
  v35 = v34;

  MEMORY[0x2530AD570](v33, v35);

  MEMORY[0x2530AD570](32032, 0xE200000000000000);
  return v45;
}

char *sub_2529503B8()
{
  v0 = sub_25294F970();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_13:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
    sub_2529508A0();
    sub_252E36EA4();

    v11 = sub_252AD24A4(2, 8224, 0xE200000000000000);
    v13 = v12;

    sub_252E379F4();

    MEMORY[0x2530AD570](0x72657320200A7B20, 0xEF0A3A7365636976);
    MEMORY[0x2530AD570](v11, v13);

    MEMORY[0x2530AD570](32010, 0xE200000000000000);
    v14 = sub_252AD24A4(1, 8224, 0xE200000000000000);

    return v14;
  }

  v2 = sub_252E378C4();
  if (!v2)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = MEMORY[0x277D84F90];
  result = sub_2529AA3A0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x2530ADF00](v4, v1);
      }

      else
      {
      }

      v5 = sub_252CDC7C8();
      v7 = v6;

      v9 = *(v15 + 16);
      v8 = *(v15 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2529AA3A0((v8 > 1), v9 + 1, 1);
      }

      ++v4;
      *(v15 + 16) = v9 + 1;
      v10 = v15 + 16 * v9;
      *(v10 + 32) = v5;
      *(v10 + 40) = v7;
    }

    while (v2 != v4);
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t Group.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Group.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

char *sub_2529507DC(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v1 = v3;
  if (!result || a1 > *(v3 + 24) >> 1)
  {
    if (*(v3 + 16) <= a1)
    {
      v5 = a1;
    }

    else
    {
      v5 = *(v3 + 16);
    }

    return sub_2529AA3A0(result, v5, 0);
  }

  return result;
}

unint64_t sub_252950854()
{
  result = qword_27F540478;
  if (!qword_27F540478)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F540478);
  }

  return result;
}

unint64_t sub_2529508A0()
{
  result = qword_27F541110;
  if (!qword_27F541110)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540480, &qword_252E3C910);
    result = swift_getWitnessTable(MEMORY[0x277D83958], v3, v0, v1);
    atomic_store(result, &qword_27F541110);
  }

  return result;
}

uint64_t type metadata accessor for Group(uint64_t a1)
{
  result = qword_2814B06D0;
  if (!qword_2814B06D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_252950A0C()
{
  result = qword_27F540490;
  if (!qword_27F540490)
  {
    result = swift_getWitnessTable(byte_252E3D474, &type metadata for EntityCodingKeys, v0, v1);
    atomic_store(result, &qword_27F540490);
  }

  return result;
}

unint64_t sub_252950A60()
{
  result = qword_27F5404A0;
  if (!qword_27F5404A0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for HomeEntityType, &type metadata for HomeEntityType, v0, v1);
    atomic_store(result, &qword_27F5404A0);
  }

  return result;
}

uint64_t sub_252950ADC(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_252E32E84();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252950B20()
{
  result = qword_27F5404B0;
  if (!qword_27F5404B0)
  {
    result = swift_getWitnessTable(aM_17, &type metadata for EntityCodableError, v0, v1);
    atomic_store(result, &qword_27F5404B0);
  }

  return result;
}

unint64_t sub_252950B74(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x486C6F72746E6F63;
    v7 = 0x7265766F63736964;
    v8 = 0x6574616D6F747561;
    if (a1 != 3)
    {
      v8 = 0x636E797361;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x656D6F48776F6873;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0xD000000000000018;
    v2 = 0xD000000000000014;
    if (a1 != 9)
    {
      v2 = 0x6553746E65746E69;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0x4C74696B656D6F68;
    v4 = 0x636972656E6567;
    if (a1 != 6)
    {
      v4 = 0x6F6C466472617567;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t sub_252950D0C(char a1)
{
  result = 0x6C6156736465656ELL;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
    case 9:
      v3 = 5;
      goto LABEL_14;
    case 3:
      return 0x6769626D61736964;
    case 4:
      return 0x746E496573726170;
    case 5:
      return 0x4964696C61766E69;
    case 6:
    case 7:
    case 8:
    case 12:
      return 0x7463657078656E75;
    case 10:
      return 0xD000000000000013;
    case 11:
    case 13:
      return 0xD000000000000011;
    case 14:
      return 0x6D6D6F4361686173;
    case 15:
      return 0xD000000000000010;
    case 16:
      return 0x6E65746E49707061;
    case 17:
      v3 = 9;
      goto LABEL_14;
    case 18:
    case 20:
      v3 = 11;
LABEL_14:
      result = v3 | 0xD000000000000010;
      break;
    case 19:
      result = 0x5074694B656D6F68;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

void sub_252950F64(unsigned __int8 a1, char a2, uint64_t a3, uint64_t a4)
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v7 = sub_252E36AD4();
  __swift_project_value_buffer(v7, qword_27F544D60);
  sub_252CC3D90(0xD000000000000018, 0x8000000252E6AA50, 0xD00000000000006CLL, 0x8000000252E6AA70);
  v8 = [objc_allocWithZone(MEMORY[0x277D6AFC8]) init];
  v9 = sub_252E36F04();
  sub_252950B74(a1);
  v10 = sub_252E36F04();

  v11 = 0;
  if (a2 != 21)
  {
    sub_252950D0C(a2);
    v11 = sub_252E36F04();
  }

  if (a4)
  {
    v12 = sub_252E36F04();
  }

  else
  {
    v12 = 0;
  }

  v13 = sub_252E36F04();
  v14 = [v8 signatureWithDomain:v9 type:v10 subType:v11 subtypeContext:v12 detectedProcess:v13 triggerThresholdValues:0];

  if (v14)
  {
    v15 = v14;
    sub_252E36E34();
  }

  sub_252E379F4();

  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404B8, &qword_252E3C950);
  v17 = sub_252E36F94();
  MEMORY[0x2530AD570](v17);

  sub_252CC4050(0xD00000000000001ALL, 0x8000000252E6AB20, 0xD00000000000006CLL, 0x8000000252E6AA70, 0xD000000000000024, 0x8000000252E6AB40, 76);
}

uint64_t sub_252951444(uint64_t a1)
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v1 = sub_252E36AD4();
  __swift_project_value_buffer(v1, qword_27F544D60);
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000038, 0x8000000252E6AD20);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C0, qword_252E3C958);
  v2 = sub_252E36F94();
  MEMORY[0x2530AD570](v2);

  sub_252CC3D90(0, 0xE000000000000000, 0xD00000000000006CLL, 0x8000000252E6AA70);
}

uint64_t sub_25295156C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_252E36E44();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_2529515FC(int a1, int a2, uint64_t a3, uint64_t a4)
{
  v25 = a3;
  v26 = a4;
  v23 = a1;
  v24 = a2;
  v4 = sub_252E36CA4();
  v5 = *(v4 - 8);
  v30 = v4;
  v31 = v5;
  MEMORY[0x28223BE20](v4);
  v29 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_252E37564();
  v7 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_252E37534();
  MEMORY[0x28223BE20](v10);
  v11 = sub_252E36D04();
  v27 = *(v11 - 8);
  v28 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_252936DF8();
  sub_252E36CC4();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_252951AC0(&qword_2814B0220, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540300, &qword_252E3C170);
  sub_252936E8C(&qword_2814B0278, &qword_27F540300, &qword_252E3C170);
  sub_252E37824();
  (*(v7 + 104))(v9, *MEMORY[0x277D85260], v22);
  v14 = sub_252E37594();
  v15 = swift_allocObject();
  v16 = v24;
  *(v15 + 16) = v23;
  *(v15 + 17) = v16;
  v17 = v26;
  *(v15 + 24) = v25;
  *(v15 + 32) = v17;
  aBlock[4] = sub_252951A98;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_252AD686C;
  aBlock[3] = &block_descriptor_0;
  v18 = _Block_copy(aBlock);

  sub_252E36CD4();
  v32 = MEMORY[0x277D84F90];
  sub_252951AC0(qword_2814B0298, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5402F8, &qword_252E3E860);
  sub_252936E8C(&qword_2814B0280, &qword_27F5402F8, &qword_252E3E860);
  v20 = v29;
  v19 = v30;
  sub_252E37824();
  MEMORY[0x2530ADA30](0, v13, v20, v18);
  _Block_release(v18);

  (*(v31 + 8))(v20, v19);
  (*(v27 + 8))(v13, v28);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_252951AC0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_252951B10(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = [v4 isExcludeFilter];
      sub_252956D08();
      v8 = sub_252E37674();
      if (v7)
      {
        v9 = sub_252E37694();

        if (v9)
        {
          return 1;
        }
      }

      else
      {
      }

      if (v6 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  return 0;
}

unint64_t sub_252951C74(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = v3;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v4, v29);
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_252C32AF0(&v39, &v38);
      if (v2)
      {
        goto LABEL_40;
      }

      v9 = v38;
      v6 = (v38 >> 62);
      if (v38 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v26 = sub_252E378C4();
        v13 = v26 + v10;
        if (__OFADD__(v26, v10))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v14 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_252E378C4();
        goto LABEL_21;
      }

      if (v11)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v6)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v36 > 0)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_4;
        }
      }

      if (((v16 >> 1) - v15) < v36)
      {
        goto LABEL_44;
      }

      v35 = v5;
      v19 = v14 + 8 * v15 + 32;
      v30 = v14;
      if (v6)
      {
        if (v17 < 1)
        {
          goto LABEL_46;
        }

        sub_252956D54();
        for (i = 0; i != v17; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404E0, &unk_252E3C990);
          v21 = sub_2529FBD80(v37, i, v9);
          v23 = *v22;
          (v21)(v37, 0);
          *(v19 + 8 * i) = v23;
        }
      }

      else
      {
        type metadata accessor for HomeAttributeCleaningJob();
        swift_arrayInitWithCopy();
      }

      v2 = v8;
      v5 = v35;
      if (v36 >= 1)
      {
        v24 = *(v30 + 16);
        v7 = __OFADD__(v24, v36);
        v25 = v24 + v36;
        if (v7)
        {
          goto LABEL_45;
        }

        *(v30 + 16) = v25;
      }

LABEL_5:
      if (v4 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return MEMORY[0x277D84F90];
}

char *sub_252951FD4(unint64_t a1)
{
  v2 = v1;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (!(a1 >> 62))
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

LABEL_21:
  v5 = sub_252E378C4();
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v6 = 0;
  v20 = MEMORY[0x277D84F90];
  do
  {
    for (i = v6; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2530ADF00](i, a1);
      }

      else
      {
        if (i >= *(v4 + 16))
        {
          goto LABEL_20;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v6 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v10 = [v8 roomName];
      if (v10)
      {
        break;
      }

      if (v6 == v5)
      {
        return v20;
      }
    }

    v19 = v2;
    v11 = v10;
    v12 = sub_252E36F34();
    v18 = v13;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_2529F7A80(0, *(v20 + 2) + 1, 1, v20);
    }

    v15 = *(v20 + 2);
    v14 = *(v20 + 3);
    if (v15 >= v14 >> 1)
    {
      v20 = sub_2529F7A80((v14 > 1), v15 + 1, 1, v20);
    }

    *(v20 + 2) = v15 + 1;
    v16 = &v20[16 * v15];
    v2 = v19;
    *(v16 + 4) = v12;
    *(v16 + 5) = v18;
  }

  while (v6 != v5);
  return v20;
}

char *sub_25295217C(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v23 - v3;
  v5 = sub_252E36324();
  v25 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v32 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v24 = &v23 - v8;
  if (a1 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v10 = 0;
    v30 = a1 & 0xFFFFFFFFFFFFFF8;
    v31 = a1 & 0xC000000000000001;
    v27 = (v25 + 48);
    v28 = (v25 + 56);
    v33 = MEMORY[0x277D84F90];
    v26 = (v25 + 32);
    v29 = i;
    while (1)
    {
      if (v31)
      {
        v11 = MEMORY[0x2530ADF00](v10, a1);
      }

      else
      {
        if (v10 >= *(v30 + 16))
        {
          goto LABEL_21;
        }

        v11 = *(a1 + 8 * v10 + 32);
      }

      v12 = v11;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = [v11 zoneName];
      if (v14)
      {
        v15 = v14;
        sub_252E36F34();

        sub_252E37024();

        v16 = 0;
      }

      else
      {
        v16 = 1;
      }

      (*v28)(v4, v16, 1, v5);

      if ((*v27)(v4, 1, v5) == 1)
      {
        sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
      }

      else
      {
        v17 = *v26;
        v18 = v24;
        (*v26)(v24, v4, v5);
        v17(v32, v18, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v33 = sub_2529F7F74(0, *(v33 + 2) + 1, 1, v33);
        }

        v20 = *(v33 + 2);
        v19 = *(v33 + 3);
        if (v20 >= v19 >> 1)
        {
          v33 = sub_2529F7F74((v19 > 1), v20 + 1, 1, v33);
        }

        v21 = v33;
        *(v33 + 2) = v20 + 1;
        v17(&v21[((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20], v32, v5);
      }

      ++v10;
      if (v13 == v29)
      {
        return v33;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  return MEMORY[0x277D84F90];
}

char *sub_252952520(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24 - v3;
  v5 = sub_252E36324();
  v27 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v33 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v26 = &v24 - v8;
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v10 = 0;
    v31 = a1 & 0xFFFFFFFFFFFFFF8;
    v32 = a1 & 0xC000000000000001;
    v29 = (v27 + 48);
    v30 = (v27 + 56);
    v28 = (v27 + 32);
    v11 = MEMORY[0x277D84F90];
    v25 = a1;
    while (1)
    {
      if (v32)
      {
        v12 = MEMORY[0x2530ADF00](v10, a1);
      }

      else
      {
        if (v10 >= *(v31 + 16))
        {
          goto LABEL_24;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v13 = v12;
      v14 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      [v12 deviceType];
      if (qword_27F53F2A0 != -1)
      {
        swift_once();
      }

      v15 = off_27F541CD0;
      if (*(off_27F541CD0 + 2) && (v16 = sub_252A488EC(), (v17 & 1) != 0))
      {
        v34 = *(v15[7] + v16);
        AccessoryTypeSemantic.rawValue.getter();
        sub_252E362F4();
        v18 = 0;
      }

      else
      {
        v18 = 1;
      }

      (*v30)(v4, v18, 1, v5);

      if ((*v29)(v4, 1, v5) == 1)
      {
        sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
      }

      else
      {
        v19 = *v28;
        v20 = v26;
        (*v28)(v26, v4, v5);
        v19(v33, v20, v5);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2529F7F74(0, *(v11 + 2) + 1, 1, v11);
        }

        v22 = *(v11 + 2);
        v21 = *(v11 + 3);
        if (v22 >= v21 >> 1)
        {
          v11 = sub_2529F7F74((v21 > 1), v22 + 1, 1, v11);
        }

        *(v11 + 2) = v22 + 1;
        v19(&v11[((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v22], v33, v5);
        a1 = v25;
      }

      ++v10;
      if (v14 == i)
      {
        return v11;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

  return MEMORY[0x277D84F90];
}

void *sub_2529528EC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v22 - v3;
  v5 = sub_252E36324();
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v26 = &v22 - v10;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return MEMORY[0x277D84F90];
  }

  v12 = (v9 + 56);
  v27 = (v9 + 48);
  v25 = v9;
  v13 = (v9 + 32);
  v14 = a1 + 40;
  v15 = MEMORY[0x277D84F90];
  v23 = (v9 + 56);
  v24 = v8;
  do
  {

    sub_252E37024();
    (*v12)(v4, 0, 1, v5);

    if ((*v27)(v4, 1, v5) == 1)
    {
      sub_25293847C(v4, &qword_27F540298, &unk_252E3C270);
    }

    else
    {
      v16 = *v13;
      v17 = v26;
      (*v13)(v26, v4, v5);
      v16(v8, v17, v5);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_2529F7F74(0, v15[2] + 1, 1, v15);
      }

      v19 = v15[2];
      v18 = v15[3];
      if (v19 >= v18 >> 1)
      {
        v15 = sub_2529F7F74((v18 > 1), v19 + 1, 1, v15);
      }

      v15[2] = v19 + 1;
      v20 = v15 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v19;
      v8 = v24;
      v16(v20, v24, v5);
      v12 = v23;
    }

    v14 += 16;
    --v11;
  }

  while (v11);
  return v15;
}

uint64_t sub_252952BC4(uint64_t a1)
{
  v2 = a1 + 56;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  if (v5)
  {
    goto LABEL_8;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return v9;
    }

    v5 = *(v2 + 8 * v10);
    ++v8;
    if (v5)
    {
      v8 = v10;
      do
      {
LABEL_8:
        v11 = *(*(a1 + 48) + (__clz(__rbit64(v5)) | (v8 << 6)));
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_2529F80DC(0, *(v9 + 16) + 1, 1, v9);
          v9 = result;
        }

        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          result = sub_2529F80DC((v12 > 1), v13 + 1, 1, v9);
          v9 = result;
        }

        v5 &= v5 - 1;
        *(v9 + 16) = v13 + 1;
        *(v9 + v13 + 32) = v11;
      }

      while (v5);
    }
  }

  __break(1u);
  return result;
}

char *sub_252952D0C(uint64_t a1)
{
  v30 = sub_252E36324();
  v2 = MEMORY[0x28223BE20](v30);
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2);
  v28 = &v24 - v6;
  MEMORY[0x28223BE20](v5);
  v27 = &v24 - v8;
  v9 = *(a1 + 16);
  if (!v9)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = a1 + 32;
  v26 = v7;
  v29 = (v7 + 32);
  v11 = MEMORY[0x277D84F90];
  v12 = &unk_27F541000;
  v25 = v4;
  do
  {
    v10 += 8;
    if (qword_27F53F2A0 != -1)
    {
      swift_once();
    }

    v13 = v12[410];
    if (*(v13 + 16))
    {
      v14 = sub_252A488EC();
      if (v15)
      {
        v31 = *(*(v13 + 56) + v14);
        AccessoryTypeSemantic.rawValue.getter();
        v16 = v28;
        sub_252E362F4();
        v17 = *v29;
        v18 = v27;
        v19 = v16;
        v20 = v30;
        (*v29)(v27, v19, v30);
        v17(v4, v18, v20);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_2529F7F74(0, *(v11 + 2) + 1, 1, v11);
        }

        v22 = *(v11 + 2);
        v21 = *(v11 + 3);
        v12 = &unk_27F541000;
        if (v22 >= v21 >> 1)
        {
          v11 = sub_2529F7F74((v21 > 1), v22 + 1, 1, v11);
        }

        *(v11 + 2) = v22 + 1;
        v4 = v25;
        v17(&v11[((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v22], v25, v30);
      }
    }

    --v9;
  }

  while (v9);
  return v11;
}

void *sub_252952FA8(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x2530ADF00](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v7 = [v4 homeName];
      if (v7)
      {

        v8 = [v5 isExcludeFilter];
        sub_252956D08();
        v9 = sub_252E37674();
        v10 = v9;
        if (!v8)
        {

          return v5;
        }

        v11 = sub_252E37694();

        if ((v11 & 1) == 0)
        {
          return v5;
        }
      }

      if (v6 == i)
      {
        return 0;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return 0;
}

uint64_t sub_252953124(uint64_t a1)
{
  v3 = sub_252E36324();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v13[1] = v1;
    v14 = MEMORY[0x277D84F90];
    sub_2529AA4E0(0, v7, 0);
    v8 = v14;
    v9 = a1 + 40;
    do
    {

      sub_252E37024();

      v14 = v8;
      v11 = *(v8 + 16);
      v10 = *(v8 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2529AA4E0((v10 > 1), v11 + 1, 1);
        v8 = v14;
      }

      *(v8 + 16) = v11 + 1;
      (*(v4 + 32))(v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v11, v6, v3);
      v9 += 16;
      --v7;
    }

    while (v7);
  }

  return v8;
}

uint64_t sub_2529532C8@<X0>(void *__src@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  memcpy(__dst, __src, sizeof(__dst));
  if (a2)
  {
    v6 = a2;
  }

  else
  {
    memcpy(v15, __src, sizeof(v15));
    v6 = sub_252AEFEB0();
  }

  memcpy(__srca, __dst, sizeof(__srca));
  GEOLocationCoordinate2DMake();
  memcpy(v13, __srca, sizeof(v13));
  sub_2529353AC(__dst, v15);
  v7 = a2;
  v8 = sub_252D8ACB0(v13);
  memcpy(v15, v13, sizeof(v15));
  sub_25293847C(v15, &qword_27F5404C8, &unk_252E3FD60);
  v9 = v8;
  v10 = 1;
  if (v9 <= 2)
  {
    if (v9 != 1)
    {
LABEL_10:
      sub_252E37024();
      v10 = 0;
    }
  }

  else if (v9 <= 4 || v9 == 5)
  {
    goto LABEL_10;
  }

  v11 = sub_252E36324();
  return (*(*(v11 - 8) + 56))(a3, v10, 1, v11);
}

uint64_t sub_252953488(void *a1, uint64_t a2, void *a3)
{
  v369 = a3;
  v5 = sub_252E32FF4();
  v376 = *(v5 - 8);
  v377 = v5;
  MEMORY[0x28223BE20](v5);
  v375 = &v367 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_252E32BA4();
  v378 = *(v7 - 8);
  v379 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v374 = &v367 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v380 = &v367 - v11;
  MEMORY[0x28223BE20](v10);
  v382 = &v367 - v12;
  v13 = sub_252E36324();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v396 = &v367 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v397 = &v367 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v398 = &v367 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v372 = &v367 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v399 = &v367 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v392 = &v367 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v388 = &v367 - v28;
  v29 = MEMORY[0x28223BE20](v27);
  v386 = &v367 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v393 = (&v367 - v32);
  MEMORY[0x28223BE20](v31);
  v405 = &v367 - v33;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v35 = MEMORY[0x28223BE20](v34 - 8);
  v383 = &v367 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x28223BE20](v35);
  v384 = &v367 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v373 = &v367 - v40;
  v41 = MEMORY[0x28223BE20](v39);
  v381 = &v367 - v42;
  v43 = MEMORY[0x28223BE20](v41);
  v403 = &v367 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v391 = &v367 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v49 = &v367 - v48;
  v50 = MEMORY[0x28223BE20](v47);
  v52 = &v367 - v51;
  MEMORY[0x28223BE20](v50);
  v54 = &v367 - v53;
  memcpy(v410, a2, 0x1F8uLL);
  v55 = *(v14 + 56);
  v387 = v54;
  v55(v54, 1, 1, v13);
  v55(v52, 1, 1, v13);
  v385 = v49;
  v55(v49, 1, 1, v13);
  v406 = v13;
  v389 = v52;
  v401 = v55;
  v402 = v14 + 56;
  v404 = v14;
  v368 = a1;
  if (!a1)
  {
    v390 = 0;
    LODWORD(v372) = 0;
    LODWORD(v391) = 0;
    LODWORD(v386) = 0;
    LODWORD(v382) = 0;
    LODWORD(v388) = 0;
    LODWORD(v373) = 0;
    LODWORD(v378) = 0;
    v381 = 0;
    LODWORD(v376) = 0;
    LODWORD(v377) = 0;
    LODWORD(v379) = 0;
    LODWORD(v380) = 0;
    LODWORD(v392) = 0;
    LODWORD(v374) = 0;
    LODWORD(v375) = 0;
    v72 = 0;
    LODWORD(v394) = 0;
    v73 = 0;
    v370 = 0;
    v371 = 709;
    v399 = MEMORY[0x277D84F90];
    v405 = MEMORY[0x277D84F90];
    v393 = MEMORY[0x277D84F90];
    v369 = MEMORY[0x277D84F90];
    v395 = MEMORY[0x277D84F90];
    goto LABEL_241;
  }

  v390 = a1;
  v56 = [v390 filters];
  if (!v56)
  {
    v61 = MEMORY[0x277D84F90];
    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_53;
    }

    goto LABEL_27;
  }

  v57 = v56;
  type metadata accessor for HomeFilter();
  v58 = sub_252E37264();

  if (v58 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v60 = 0;
    v394 = v58 & 0xFFFFFFFFFFFFFF8;
    v395 = v58 & 0xC000000000000001;
    v400 = v14 + 32;
    v61 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v395)
      {
        v62 = MEMORY[0x2530ADF00](v60, v58);
      }

      else
      {
        if (v60 >= *(v394 + 16))
        {
          goto LABEL_23;
        }

        v62 = *(v58 + 8 * v60 + 32);
      }

      v63 = v62;
      v64 = v60 + 1;
      if (__OFADD__(v60, 1))
      {
        break;
      }

      v65 = [v62 homeEntityName];
      if (v65)
      {
        v66 = v65;
        v67 = i;
        sub_252E36F34();

        v68 = v393;
        sub_252E37024();

        v69 = *v400;
        (*v400)(v405, v68, v406);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_2529F7F74(0, *(v61 + 2) + 1, 1, v61);
        }

        v71 = *(v61 + 2);
        v70 = *(v61 + 3);
        v14 = v404;
        if (v71 >= v70 >> 1)
        {
          v61 = sub_2529F7F74((v70 > 1), v71 + 1, 1, v61);
        }

        *(v61 + 2) = v71 + 1;
        v69(&v61[((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v71], v405, v406);
        i = v67;
      }

      else
      {
      }

      ++v60;
      if (v64 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_26:

  v13 = v406;
  v52 = v389;
  if (!*(v61 + 2))
  {
LABEL_27:

    v74 = [v390 filters];
    if (v74)
    {
      v75 = v74;
      type metadata accessor for HomeFilter();
      v76 = sub_252E37264();

      if (v76 >> 62)
      {
        goto LABEL_50;
      }

      v77 = *((v76 & 0xFFFFFFFFFFFFFF8) + 0x10);
      for (j = v391; v77; j = v391)
      {
        v79 = 0;
        v405 = (v76 & 0xC000000000000001);
        v400 = v76 & 0xFFFFFFFFFFFFFF8;
        v80 = (v14 + 48);
        v393 = MEMORY[0x277D84F90];
        v81 = (v14 + 32);
        v395 = v76;
        while (1)
        {
          if (v405)
          {
            v82 = MEMORY[0x2530ADF00](v79, v76);
          }

          else
          {
            if (v79 >= *(v400 + 16))
            {
              goto LABEL_49;
            }

            v82 = *(v76 + 8 * v79 + 32);
          }

          v83 = v82;
          v84 = v79 + 1;
          if (__OFADD__(v79, 1))
          {
            break;
          }

          v14 = v77;
          v85 = [v82 outerDeviceName];
          if (v85)
          {
            v86 = v85;
            sub_252E36F34();

            sub_252E37024();
            j = v391;

            v87 = 0;
          }

          else
          {
            v87 = 1;
          }

          v88 = v406;
          v401(j, v87, 1, v406);

          if ((*v80)(j, 1, v88) == 1)
          {
            sub_25293847C(j, &qword_27F540298, &unk_252E3C270);
          }

          else
          {
            v89 = *v81;
            v90 = v386;
            (*v81)(v386, j, v88);
            v89(v388, v90, v88);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v393 = sub_2529F7F74(0, v393[2] + 1, 1, v393);
            }

            v92 = v393[2];
            v91 = v393[3];
            if (v92 >= v91 >> 1)
            {
              v393 = sub_2529F7F74((v91 > 1), v92 + 1, 1, v393);
            }

            v93 = v393;
            v393[2] = v92 + 1;
            v89(&v93[((*(v404 + 80) + 32) & ~*(v404 + 80)) + *(v404 + 72) * v92], v388, v406);
          }

          ++v79;
          v77 = v14;
          v76 = v395;
          if (v84 == v14)
          {
            goto LABEL_52;
          }
        }

        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v77 = sub_252E378C4();
      }

      v393 = MEMORY[0x277D84F90];
LABEL_52:

      v13 = v406;
      v52 = v389;
      v61 = v393;
      v14 = v404;
    }

    else
    {
      v61 = MEMORY[0x277D84F90];
    }
  }

LABEL_53:
  v393 = v61;
  v94 = v390;
  v95 = [v390 filters];
  if (v95)
  {
    v96 = v95;
    type metadata accessor for HomeFilter();
    v97 = sub_252E37264();

    if (v97 >> 62)
    {
      goto LABEL_76;
    }

    v98 = *((v97 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (k = v403; v98; k = v403)
    {
      v100 = 0;
      v400 = v97 & 0xC000000000000001;
      v395 = v97 & 0xFFFFFFFFFFFFFF8;
      v101 = v14;
      v14 += 48;
      v405 = MEMORY[0x277D84F90];
      v102 = (v101 + 32);
      v394 = v98;
      while (1)
      {
        if (v400)
        {
          v103 = v97;
          v104 = MEMORY[0x2530ADF00](v100, v97);
        }

        else
        {
          if (v100 >= *(v395 + 16))
          {
            goto LABEL_75;
          }

          v103 = v97;
          v104 = *(v97 + 8 * v100 + 32);
        }

        v105 = v104;
        v106 = v100 + 1;
        if (__OFADD__(v100, 1))
        {
          break;
        }

        v107 = [v104 roomName];
        if (v107)
        {
          v108 = v107;
          sub_252E36F34();

          k = v403;
          sub_252E37024();
          v13 = v406;

          v109 = 0;
        }

        else
        {
          v109 = 1;
        }

        v401(k, v109, 1, v13);

        if ((*v14)(k, 1, v13) == 1)
        {
          sub_25293847C(k, &qword_27F540298, &unk_252E3C270);
        }

        else
        {
          v110 = *v102;
          v111 = v392;
          (*v102)(v392, k, v13);
          v110(v399, v111, v13);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v405 = sub_2529F7F74(0, *(v405 + 2) + 1, 1, v405);
          }

          v113 = *(v405 + 2);
          v112 = *(v405 + 3);
          if (v113 >= v112 >> 1)
          {
            v405 = sub_2529F7F74((v112 > 1), v113 + 1, 1, v405);
          }

          v114 = v404;
          v115 = v405;
          *(v405 + 2) = v113 + 1;
          v110(&v115[((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v113], v399, v13);
          k = v403;
        }

        ++v100;
        v97 = v103;
        if (v106 == v394)
        {
          goto LABEL_78;
        }
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      v98 = sub_252E378C4();
    }

    v405 = MEMORY[0x277D84F90];
LABEL_78:

    v52 = v389;
    v94 = v390;
    v14 = v404;
  }

  else
  {
    v405 = MEMORY[0x277D84F90];
  }

  v116 = [v94 filters];
  if (v116)
  {
    v117 = v116;
    type metadata accessor for HomeFilter();
    v118 = sub_252E37264();

    v119 = 0;
    v399 = sub_25295217C(v118);
  }

  else
  {
    v119 = 0;
    v399 = MEMORY[0x277D84F90];
  }

  v120 = [v94 userTask];
  v121 = v120;
  v122 = v52;
  if (v120)
  {
    v123 = [v120 attribute];
  }

  else
  {
    v123 = 0;
  }

  v124 = v381;
  static SemanticMapper.getSemanticKey(for:)(v123, v121 == 0, v381);
  v125 = v387;
  sub_25293847C(v387, &qword_27F540298, &unk_252E3C270);
  sub_2529439A0(v124, v125);
  v126 = [v94 filters];
  if (v126)
  {
    v127 = v126;
    type metadata accessor for HomeFilter();
    v128 = sub_252E37264();

    v395 = sub_252952520(v128);
  }

  else
  {
    v395 = MEMORY[0x277D84F90];
  }

  v129 = v122;
  v403 = type metadata accessor for HomeStore(0);
  v130 = static HomeStore.shared.getter(v403);
  v131 = sub_2529D8DC0();

  a2 = 0x279711000;
  if (v131 >> 62)
  {
    v132 = sub_252E378C4();
  }

  else
  {
    v132 = *((v131 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v132 < 2 || (v133 = [v94 filters]) == 0)
  {
    LODWORD(v394) = 0;
    v141 = v382;
    goto LABEL_114;
  }

  v134 = v133;
  type metadata accessor for HomeFilter();
  v135 = sub_252E37264();

  v136 = sub_252952FA8(v135);

  if (!v136)
  {
    LODWORD(v394) = 0;
    a2 = 0x279711000;
    v141 = v382;
    goto LABEL_114;
  }

  v137 = [v136 homeName];
  if (v137)
  {
    v138 = v137;
    sub_252E36F34();

    v139 = v373;
    sub_252E37024();

    v140 = 0;
  }

  else
  {
    v140 = 1;
    v139 = v373;
  }

  v401(v139, v140, 1, v13);
  sub_252956C98(v139, v129);
  v142 = (*(v14 + 48))(v129, 1, v13);
  if (v142)
  {
    v143 = 0;
    v144 = 0;
  }

  else
  {
    v145 = v372;
    (*(v14 + 16))(v372, v129, v13);
    v146 = sub_252E36304();
    v147 = v13;
    v143 = v146;
    v144 = v148;
    v142 = (*(v14 + 8))(v145, v147);
  }

  v141 = v382;
  v149 = static HomeStore.shared.getter(v142);
  v150 = sub_2529D9114();

  if (!v150)
  {
    if (!v144)
    {
      goto LABEL_109;
    }

    goto LABEL_108;
  }

  v152 = *(v150 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  v151 = *(v150 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

  if (!v144)
  {

    if (!v151)
    {
      LODWORD(v394) = 0;
      goto LABEL_113;
    }

    goto LABEL_111;
  }

  if (!v151)
  {
LABEL_108:

LABEL_111:

    v153 = 1;
LABEL_112:
    LODWORD(v394) = v153;
    goto LABEL_113;
  }

  if (v143 != v152 || v144 != v151)
  {
    v343 = sub_252E37DB4();

    v153 = v343 ^ 1;
    goto LABEL_112;
  }

LABEL_109:

  LODWORD(v394) = 0;
LABEL_113:
  a2 = 0x279711000;
LABEL_114:
  v154 = v380;
  v155 = [v94 time];
  if (!v155)
  {
    v400 = 0;
    goto LABEL_124;
  }

  v156 = v155;
  v157 = [v155 startDateComponents];
  if (!v157)
  {
    goto LABEL_121;
  }

  v158 = v157;
  sub_252E32B24();

  v159 = [v156 endDateComponents];
  if (!v159)
  {
    (*(v378 + 8))(v141, v379);
LABEL_121:

    v400 = 0;
    goto LABEL_124;
  }

  v367 = 0;
  v160 = v159;
  sub_252E32B24();

  v161 = v375;
  sub_252E32FC4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404D0, &qword_252E3CCA0);
  v162 = sub_252E32FE4();
  v163 = *(v162 - 8);
  v164 = (*(v163 + 80) + 32) & ~*(v163 + 80);
  v165 = swift_allocObject();
  *(v165 + 16) = xmmword_252E3C290;
  (*(v163 + 104))(v165 + v164, *MEMORY[0x277CC99A8], v162);
  sub_2529FE09C(v165);
  swift_setDeallocating();
  (*(v163 + 8))(v165 + v164, v162);
  swift_deallocClassInstance();
  v166 = v374;
  sub_252E32F34();

  (*(v376 + 8))(v161, v377);
  sub_252E32B74();
  LOBYTE(v165) = v167;
  v168 = *(v378 + 8);
  v169 = v166;
  v170 = v379;
  v168(v169, v379);
  if (v165)
  {

    v168(v154, v170);
    v168(v141, v170);
    v400 = 0;
  }

  else
  {
    sub_252E36274();
    swift_allocObject();
    sub_252E36264();
    sub_252E36254();

    v400 = sub_252E36244();

    v168(v154, v170);
    v168(v141, v170);
  }

  v119 = v367;
  a2 = &off_279711000;
LABEL_124:
  v171 = [v390 filters];
  v52 = v389;
  if (v171)
  {
    v172 = v171;
    type metadata accessor for HomeFilter();
    v173 = sub_252E37264();

    v174 = sub_252951FD4(v173);
  }

  else
  {
    v174 = MEMORY[0x277D84F90];
  }

  v175 = sub_252C75848(v174);

  v176 = [v390 *(a2 + 1712)];
  if (!v176)
  {
    goto LABEL_168;
  }

  v177 = v176;
  v178 = [v176 attribute];

  if (v178 > 8)
  {
    if (v178 > 12)
    {
      if (v178 == 13)
      {
        v198 = [v390 *(a2 + 1712)];
        if (v198 && (v199 = v198, v200 = [v198 value], v199, v200))
        {
          v201 = [v200 stringValue];

          if (v201)
          {
            v202 = sub_252E36F34();
            v204 = v203;

            if (v202 == 0x4D5241534944 && v204 == 0xE600000000000000)
            {

              LODWORD(v392) = 1;
            }

            else
            {
              LODWORD(v392) = sub_252E37DB4();
            }
          }

          else
          {
            LODWORD(v392) = 0;
          }

          a2 = &off_279711000;
        }

        else
        {
          LODWORD(v392) = 0;
        }

        v344 = [v390 *(a2 + 1712)];
        if (v344 && (v345 = v344, v346 = [v344 value], v345, v346) && (v347 = objc_msgSend(v346, sel_stringValue), v346, v347))
        {
          v348 = sub_252E36F34();
          v350 = v349;

          if (v348 == 0x4D52415F59415741 && v350 == 0xE800000000000000)
          {

            LODWORD(v380) = 1;
          }

          else
          {
            LODWORD(v380) = sub_252E37DB4();
          }

          a2 = &off_279711000;
        }

        else
        {
          LODWORD(v380) = 0;
        }

        v351 = [v390 *(a2 + 1712)];
        if (v351 && (v352 = v351, v353 = [v351 value], v352, v353))
        {
          v354 = [v353 stringValue];

          if (v354)
          {
            v355 = sub_252E36F34();
            v357 = v356;

            if (v355 == 0x4D52415F59415453 && v357 == 0xE800000000000000)
            {

              LODWORD(v379) = 1;
            }

            else
            {
              LODWORD(v379) = sub_252E37DB4();
            }
          }

          else
          {
            LODWORD(v379) = 0;
          }

          a2 = &off_279711000;
        }

        else
        {
          LODWORD(v379) = 0;
        }

        v358 = [v390 *(a2 + 1712)];
        if (!v358 || (v359 = v358, v360 = [v358 value], v359, !v360))
        {
          v73 = v119;
          LODWORD(v391) = 0;
          LODWORD(v386) = 0;
          LODWORD(v382) = 0;
          LODWORD(v388) = 0;
          v189 = 0;
          LODWORD(v378) = 0;
          v381 = 0;
          LODWORD(v376) = 0;
          LODWORD(v377) = 0;
          goto LABEL_171;
        }

        v73 = v119;
        v361 = [v360 stringValue];

        if (v361)
        {
          v362 = sub_252E36F34();
          v364 = v363;

          if (v362 == 0x52415F544847494ELL && v364 == 0xE90000000000004DLL)
          {

            LODWORD(v391) = 0;
            LODWORD(v386) = 0;
            LODWORD(v382) = 0;
            LODWORD(v388) = 0;
            v189 = 0;
            v381 = 0;
            LODWORD(v376) = 0;
            LODWORD(v377) = 0;
            LODWORD(v374) = 0;
            LODWORD(v375) = 0;
            LODWORD(v378) = 1;
            a2 = 0x279711000;
            goto LABEL_172;
          }

          LODWORD(v378) = sub_252E37DB4();

          LODWORD(v391) = 0;
          LODWORD(v386) = 0;
          LODWORD(v382) = 0;
          LODWORD(v388) = 0;
          v189 = 0;
        }

        else
        {
          LODWORD(v391) = 0;
          LODWORD(v386) = 0;
          LODWORD(v382) = 0;
          LODWORD(v388) = 0;
          v189 = 0;
          LODWORD(v378) = 0;
        }

        v381 = 0;
        LODWORD(v376) = 0;
        LODWORD(v377) = 0;
LABEL_329:
        LODWORD(v374) = 0;
        LODWORD(v375) = 0;
        a2 = 0x279711000;
        goto LABEL_172;
      }

      if (v178 != 27)
      {
        goto LABEL_168;
      }

      v186 = [v390 *(a2 + 1712)];
      if (v186 && (v187 = v186, v188 = [v186 value], v187, v188))
      {
        LODWORD(v388) = [v188 BOOLValue];
      }

      else
      {
        LODWORD(v388) = 0;
      }

      v240 = [v390 userTask];
      v73 = v119;
      if (v240)
      {
        v241 = v240;
        v242 = [v240 value];

        if (v242)
        {
          v243 = [v242 BOOLValue];

          LODWORD(v391) = 0;
          LODWORD(v386) = 0;
          v189 = 0;
          LODWORD(v378) = 0;
          v381 = 0;
          LODWORD(v376) = 0;
          LODWORD(v377) = 0;
          LODWORD(v379) = 0;
          LODWORD(v380) = 0;
          LODWORD(v392) = 0;
          LODWORD(v374) = 0;
          LODWORD(v375) = 0;
          LODWORD(v382) = v243 ^ 1;
          a2 = 0x279711000;
          goto LABEL_172;
        }
      }

      LODWORD(v391) = 0;
      LODWORD(v386) = 0;
      LODWORD(v382) = 0;
    }

    else
    {
      if (v178 != 9)
      {
        if (v178 == 10)
        {
          v179 = [v390 *(a2 + 1712)];
          if (v179 && (v180 = v179, v181 = [v179 value], v180, v181))
          {
            LODWORD(v377) = [v181 BOOLValue];
          }

          else
          {
            LODWORD(v377) = 0;
          }

          v236 = [v390 *(a2 + 1712)];
          v73 = v119;
          if (v236 && (v237 = v236, v238 = [v236 value], v237, v238))
          {
            v239 = [v238 BOOLValue];

            LODWORD(v391) = 0;
            LODWORD(v382) = 0;
            LODWORD(v388) = 0;
            v189 = 0;
            LODWORD(v378) = 0;
            v381 = 0;
            LODWORD(v379) = 0;
            LODWORD(v380) = 0;
            LODWORD(v392) = 0;
            LODWORD(v374) = 0;
            LODWORD(v375) = 0;
            LODWORD(v376) = v239 ^ 1;
          }

          else
          {
            LODWORD(v391) = 0;
            LODWORD(v382) = 0;
            LODWORD(v388) = 0;
            v189 = 0;
            LODWORD(v378) = 0;
            v381 = 0;
            LODWORD(v376) = 0;
            LODWORD(v379) = 0;
            LODWORD(v380) = 0;
            LODWORD(v392) = 0;
            LODWORD(v374) = 0;
            LODWORD(v375) = 0;
          }

          LODWORD(v386) = 1;
          goto LABEL_172;
        }

LABEL_168:
        v73 = v119;
        goto LABEL_169;
      }

      v190 = [v390 *(a2 + 1712)];
      if (v190)
      {
        v191 = v190;
        v192 = [v190 value];

        if (v192)
        {
          v193 = [v192 type];

          if (v193 == 4)
          {
            v194 = [v390 userTask];
            if (v194)
            {
              v195 = v194;
              v72 = [v194 value];

              if (v72)
              {
                v196 = [v72 integerValue];
                v197 = [v72 integerValue];
                if (v196 == 100)
                {
                  LODWORD(v376) = v197 == 0;
                  v73 = v119;

                  LODWORD(v391) = 0;
                  LODWORD(v386) = 0;
                  LODWORD(v382) = 0;
                  LODWORD(v388) = 0;
                  v189 = 0;
                  LODWORD(v378) = 0;
                  v381 = 0;
                  LODWORD(v379) = 0;
                  LODWORD(v380) = 0;
                  LODWORD(v392) = 0;
                  LODWORD(v374) = 0;
                  LODWORD(v375) = 0;
                  LODWORD(v377) = 1;
                  a2 = 0x279711000;
                  goto LABEL_172;
                }

                goto LABEL_369;
              }
            }
          }
        }
      }

      a2 = &off_279711000;
      v205 = [v390 userTask];
      if (!v205)
      {
        goto LABEL_168;
      }

      v206 = v205;
      v207 = [v205 value];

      if (v207)
      {
        v208 = [v207 type];

        if (v208 == 2)
        {
          v209 = [v390 userTask];
          if (v209)
          {
            v210 = v209;
            v72 = [v209 value];

            if (v72)
            {
              [v72 doubleValue];
              v212 = v211;
              [v72 doubleValue];
              a2 = 0x279711000;
              if (v212 != 100.0)
              {
                goto LABEL_375;
              }

              LODWORD(v376) = v213 == 0.0;
              v73 = v119;

              LODWORD(v391) = 0;
              LODWORD(v386) = 0;
              LODWORD(v382) = 0;
              LODWORD(v388) = 0;
              v189 = 0;
              LODWORD(v378) = 0;
              v381 = 0;
              LODWORD(v379) = 0;
              LODWORD(v380) = 0;
              LODWORD(v392) = 0;
              LODWORD(v374) = 0;
              LODWORD(v375) = 0;
              LODWORD(v377) = 1;
              goto LABEL_172;
            }
          }
        }
      }

      v73 = v119;
      LODWORD(v391) = 0;
      LODWORD(v386) = 0;
      LODWORD(v382) = 0;
      LODWORD(v388) = 0;
    }

    v189 = 0;
    LODWORD(v378) = 0;
    v381 = 0;
    LODWORD(v376) = 0;
    LODWORD(v377) = 0;
    LODWORD(v379) = 0;
    LODWORD(v380) = 0;
    LODWORD(v392) = 0;
    goto LABEL_329;
  }

  if (v178 == 1)
  {
    v73 = v119;
    LODWORD(v391) = 0;
    LODWORD(v386) = 0;
    LODWORD(v382) = 0;
    LODWORD(v388) = 0;
    LODWORD(v378) = 0;
    v381 = 0;
    LODWORD(v376) = 0;
    LODWORD(v377) = 0;
    LODWORD(v379) = 0;
    LODWORD(v380) = 0;
    LODWORD(v392) = 0;
    LODWORD(v374) = 0;
    LODWORD(v375) = 0;
    v189 = 1;
    goto LABEL_172;
  }

  if (v178 == 6)
  {
    v73 = v119;
    LODWORD(v386) = 0;
    LODWORD(v382) = 0;
    LODWORD(v388) = 0;
    v189 = 0;
    LODWORD(v378) = 0;
    v381 = 0;
    LODWORD(v376) = 0;
    LODWORD(v377) = 0;
    LODWORD(v379) = 0;
    LODWORD(v380) = 0;
    LODWORD(v392) = 0;
    LODWORD(v374) = 0;
    LODWORD(v375) = 0;
    LODWORD(v391) = 1;
    goto LABEL_172;
  }

  if (v178 != 8)
  {
    goto LABEL_168;
  }

  v182 = [v390 *(a2 + 1712)];
  if (v182 && (v183 = v182, v184 = [v182 value], v183, v184))
  {
    v185 = [v184 BOOLValue];

    LODWORD(v375) = v185 ^ 1;
  }

  else
  {
    LODWORD(v375) = 0;
  }

  v244 = [v390 *(a2 + 1712)];
  v73 = v119;
  if (v244 && (v245 = v244, v246 = [v244 value], v245, v246))
  {
    LODWORD(v374) = [v246 BOOLValue];

    LODWORD(v391) = 0;
    LODWORD(v386) = 0;
    LODWORD(v382) = 0;
    LODWORD(v388) = 0;
    v189 = 0;
    LODWORD(v378) = 0;
    v381 = 0;
    LODWORD(v376) = 0;
    LODWORD(v377) = 0;
    LODWORD(v379) = 0;
    LODWORD(v380) = 0;
    LODWORD(v392) = 0;
  }

  else
  {
    LODWORD(v391) = 0;
    LODWORD(v386) = 0;
    LODWORD(v382) = 0;
    LODWORD(v388) = 0;
    v189 = 0;
    LODWORD(v378) = 0;
    v381 = 0;
    LODWORD(v376) = 0;
    LODWORD(v377) = 0;
    LODWORD(v379) = 0;
    LODWORD(v380) = 0;
    LODWORD(v392) = 0;
    LODWORD(v374) = 0;
  }

LABEL_172:
  if (*(v175 + 16) == 1)
  {
    v214 = sub_252DA0998(v175);
    v216 = v215;

    if (!v216)
    {
      LODWORD(v373) = 0;
      v222 = v390;
LABEL_185:
      a2 = &off_279711000;
      goto LABEL_186;
    }

    v218 = static HomeStore.shared.getter(v217);
    v219 = sub_2529F219C();
    v221 = v220;

    v222 = v390;
    if (v221)
    {
      sub_252956C8C(v219, 1);
    }

    else if (v219)
    {
      v223 = *&v219[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate];

      v224 = [v223 room];
      if (v224)
      {
        v225 = v224;
        type metadata accessor for Room(0);
        swift_allocObject();
        v226 = sub_2529A1E08(v225);
        sub_252956C8C(v219, 0);
        if (v214 == *(v226 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) && v216 == *(v226 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8))
        {

          sub_252956C8C(v219, 0);

          LODWORD(v373) = 1;
        }

        else
        {
          LODWORD(v373) = sub_252E37DB4();

          sub_252956C8C(v219, 0);
        }

        goto LABEL_185;
      }

      sub_252956C8C(v219, 0);

      sub_252956C8C(v219, 0);
      goto LABEL_184;
    }

LABEL_184:
    LODWORD(v373) = 0;
    goto LABEL_185;
  }

  LODWORD(v373) = 0;
  v222 = v390;
LABEL_186:
  v227 = [v222 *(a2 + 1712)];
  if (!v227 || (v228 = v227, v229 = [v227 attribute], v228, v229 != 5))
  {
    v371 = 709;
    goto LABEL_214;
  }

  v230 = [v222 *(a2 + 1712)];
  if (!v230)
  {
    goto LABEL_212;
  }

  v231 = v230;
  v232 = [v230 value];

  if (!v232)
  {
    v230 = 0;
    goto LABEL_213;
  }

  v233 = [v232 stringValue];

  if (!v233)
  {
    v230 = 0;
LABEL_212:
    v232 = 0;
    goto LABEL_213;
  }

  v234 = sub_252E36F34();
  v232 = v235;

  v230 = v234;
LABEL_213:
  sub_252C55FB4(v230, v232, v409);

  LODWORD(v371) = LOWORD(v409[0]);
  HIDWORD(v371) = LOWORD(v409[0]) != 709;
LABEL_214:
  v370 = v189 | sub_252C4D664(5);
  v247 = [v222 *(a2 + 1712)];
  if (!v247)
  {
    sub_252C515AC();

    v390 = 0;
    LODWORD(v372) = 0;
    v369 = MEMORY[0x277D84F90];
    v55 = v401;
    goto LABEL_240;
  }

  v248 = v247;
  v249 = [v247 attribute];

  if (v249 != 67)
  {

    v390 = 0;
    LODWORD(v372) = 0;
LABEL_239:
    v369 = MEMORY[0x277D84F90];
    v55 = v401;
    goto LABEL_240;
  }

  LODWORD(v372) = sub_252C4B68C();
  if (!v369)
  {
LABEL_238:

    v390 = 0;
    goto LABEL_239;
  }

  a2 = v369;
  v250 = [a2 entityResponses];
  if (v250)
  {
    v251 = v250;
    type metadata accessor for HomeEntityResponse();
    v252 = sub_252E37264();

    v253 = sub_252951C74(v252);

    if (!(v253 >> 62))
    {
      goto LABEL_219;
    }
  }

  else
  {
    v253 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_219:
      result = *((v253 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result)
      {
        goto LABEL_220;
      }

LABEL_224:
      if (sub_252C4B68C())
      {
        goto LABEL_225;
      }

      goto LABEL_238;
    }
  }

  result = sub_252E378C4();
  if (!result)
  {
    goto LABEL_224;
  }

LABEL_220:
  if ((v253 & 0xC000000000000001) != 0)
  {
    v255 = MEMORY[0x2530ADF00](0, v253);
  }

  else
  {
    if (!*((v253 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v255 = *(v253 + 32);
  }

  v256 = v255;
  v257 = [v255 runState];

  if (v257 != 2)
  {
    goto LABEL_224;
  }

LABEL_225:
  v258 = [v222 userTask];
  if (!v258)
  {
    sub_252C515AC();
LABEL_319:
    v334 = sub_2529A7F24(0, v253);
    v55 = v401;
    if (v334 != 13)
    {
      sub_252A79DB4(v334);
      v335 = v384;
      sub_252E37024();

      v336 = v385;
      sub_25293847C(v385, &qword_27F540298, &unk_252E3C270);
      v55(v335, 0, 1, v406);
      v337 = v335;
      goto LABEL_321;
    }

    goto LABEL_322;
  }

  v259 = v258;
  v260 = [v258 taskType];

  if (v260 != 1)
  {
    goto LABEL_319;
  }

  v261 = [v222 userTask];
  v55 = v401;
  if (v261)
  {
    v262 = v261;
    v263 = [v261 value];

    if (v263)
    {
      v264 = [v263 cleaningJob];

      if (v264)
      {
        v72 = v264;
        LOBYTE(v265) = sub_2529A7F24(v264, v253);

        if (v265 != 13)
        {
          goto LABEL_367;
        }
      }
    }
  }

  while (1)
  {
LABEL_322:
    v338 = sub_2529A8628(v253);

    if (v338[2])
    {
      v339 = sub_252953124(v338);

      v369 = v339;
      v340 = v339[2];
      v341 = v340 >= 2;
      v342 = (v340 - 2);
      if (!v341)
      {
        v342 = 0;
      }

      v390 = v342;
    }

    else
    {

      v390 = 0;
      v369 = MEMORY[0x277D84F90];
    }

LABEL_240:
    v72 = v400;
LABEL_241:
    memcpy(v409, v410, sizeof(v409));
    v197 = sub_252956B94(v409);
    v400 = v72;
    if (v197 == 1)
    {
      break;
    }

    v367 = v73;
    v119 = v409[4];
    v269 = *(v409[4] + 16);
    if (!v269)
    {
      a2 = 0;
LABEL_260:
      v273 = 0;
      v274 = v409[24];
      v52 = *(v409[24] + 16);
      v175 = 41;
      while (1)
      {
        LODWORD(v403) = v52 != v273;
        if (v52 == v273)
        {
          goto LABEL_267;
        }

        if (v273 >= *(v274 + 16))
        {
          break;
        }

        LOBYTE(v407[0]) = *(v274 + 32 + v273);
        v408 = 41;
        v276 = StateSemantic.rawValue.getter();
        v119 = v277;
        v278 = StateSemantic.rawValue.getter();
        v72 = v279;
        if (v276 == v278 && v119 == v279)
        {

LABEL_267:
          v280 = v368;
          if (v368)
          {
            v267 = v401;
            v268 = v384;
            goto LABEL_300;
          }

          v281 = v409[19];
          v282 = *(v409[19] + 16);
          if (v282)
          {
            v175 = 0;
            v52 = v409[19] + 40;
            v72 = MEMORY[0x277D84F90];
            while (v175 < *(v281 + 16))
            {

              sub_252E37024();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v72 = sub_2529F7F74(0, v72[2] + 1, 1, v72);
              }

              v284 = v72[2];
              v283 = v72[3];
              v119 = v284 + 1;
              if (v284 >= v283 >> 1)
              {
                v72 = sub_2529F7F74((v283 > 1), v284 + 1, 1, v72);
              }

              ++v175;
              v72[2] = v119;
              (*(v404 + 32))(v72 + ((*(v404 + 80) + 32) & ~*(v404 + 80)) + *(v404 + 72) * v284, v398, v406);
              v52 += 16;
              if (v282 == v175)
              {
                goto LABEL_279;
              }
            }

            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            if (v213 == 0.0)
            {
LABEL_376:
              v73 = v119;

              LODWORD(v391) = 0;
              LODWORD(v386) = 0;
              LODWORD(v382) = 0;
              LODWORD(v388) = 0;
              v189 = 0;
              LODWORD(v378) = 0;
              v381 = 0;
              LODWORD(v377) = 0;
              LODWORD(v379) = 0;
              LODWORD(v380) = 0;
              LODWORD(v392) = 0;
              LODWORD(v374) = 0;
              LODWORD(v375) = 0;
              LODWORD(v376) = 1;
              goto LABEL_172;
            }

LABEL_370:
            v73 = v119;
            v366 = sub_252D0842C();

            if (v366)
            {
              v381 = *(v366 + OBJC_IVAR____TtC22HomeAutomationInternal30HomeAutomationEntityStateValue_numericValue);

              LODWORD(v391) = 0;
              LODWORD(v386) = 0;
              LODWORD(v382) = 0;
              LODWORD(v388) = 0;
              v189 = 0;
              LODWORD(v378) = 0;
LABEL_170:
              LODWORD(v376) = 0;
              LODWORD(v377) = 0;
              LODWORD(v379) = 0;
              LODWORD(v380) = 0;
              LODWORD(v392) = 0;
LABEL_171:
              LODWORD(v374) = 0;
              LODWORD(v375) = 0;
              goto LABEL_172;
            }

LABEL_169:
            LODWORD(v391) = 0;
            LODWORD(v386) = 0;
            LODWORD(v382) = 0;
            LODWORD(v388) = 0;
            v189 = 0;
            LODWORD(v378) = 0;
            v381 = 0;
            goto LABEL_170;
          }

          v72 = MEMORY[0x277D84F90];
LABEL_279:
          v285 = v409[21];
          v175 = *(v409[21] + 16);
          if (v175)
          {
            v286 = 0;
            v405 = (v404 + 32);
            v52 = v409[21] + 40;
            v119 = MEMORY[0x277D84F90];
            while (v286 < *(v285 + 16))
            {

              sub_252E37024();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v119 = sub_2529F7F74(0, *(v119 + 16) + 1, 1, v119);
              }

              v288 = *(v119 + 16);
              v287 = *(v119 + 24);
              if (v288 >= v287 >> 1)
              {
                v119 = sub_2529F7F74((v287 > 1), v288 + 1, 1, v119);
              }

              ++v286;
              *(v119 + 16) = v288 + 1;
              (*(v404 + 32))(v119 + ((*(v404 + 80) + 32) & ~*(v404 + 80)) + *(v404 + 72) * v288, v397, v406);
              v52 += 16;
              if (v175 == v286)
              {
                goto LABEL_289;
              }
            }

            goto LABEL_373;
          }

          v119 = MEMORY[0x277D84F90];
LABEL_289:
          v407[0] = v72;
          v72 = v407;
          sub_25297AE2C(v119);
          v393 = v407[0];
          v289 = v409[13];
          v290 = *(v409[13] + 16);
          if (v290)
          {
            v291 = 0;
            v52 = v404 + 32;
            v292 = v409[13] + 40;
            v405 = MEMORY[0x277D84F90];
            while (v291 < *(v289 + 16))
            {

              sub_252E37024();

              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v405 = sub_2529F7F74(0, *(v405 + 2) + 1, 1, v405);
              }

              v119 = *(v405 + 2);
              v293 = *(v405 + 3);
              v72 = (v119 + 1);
              if (v119 >= v293 >> 1)
              {
                v405 = sub_2529F7F74((v293 > 1), v119 + 1, 1, v405);
              }

              ++v291;
              v294 = v404;
              v295 = v405;
              *(v405 + 2) = v72;
              (*(v294 + 32))(&v295[((*(v294 + 80) + 32) & ~*(v294 + 80)) + *(v294 + 72) * v119], v396, v406);
              v292 += 16;
              if (v290 == v291)
              {
                goto LABEL_299;
              }
            }

            goto LABEL_374;
          }

          v405 = MEMORY[0x277D84F90];
LABEL_299:

          v297 = v367;
          v399 = sub_2529528EC(v296);

          v299 = sub_2529FE6F0(v298, MEMORY[0x277D84FA0]);

          v301 = sub_2529FE6F0(v300, v299);

          v302 = sub_252952BC4(v301);

          v303 = sub_252A47B1C(v302);

          v395 = sub_252952D0C(v303);
          v367 = v297;

          v267 = v401;
          v268 = v384;
          v280 = v368;
LABEL_300:
          memcpy(v407, v409, 0x1F8uLL);
          LODWORD(v404) = sub_252CDFDD4();
          memcpy(v407, v409, 0x1F8uLL);
          v304 = sub_252A0E1E8();
          v305 = v406;
          if ((v304 & 1) != 0 || LOBYTE(v409[5]) != 4)
          {
            LODWORD(v398) = 1;
            if (!v280)
            {
              goto LABEL_308;
            }
          }

          else
          {
            LODWORD(v398) = 0;
            if (!v280)
            {
LABEL_308:
              type metadata accessor for HomeAutomationIntentContext(0);
              memcpy(v407, v409, 0x1F8uLL);
              sub_2529532C8(v407, v280, v268);
              type metadata accessor for HomeAutomationHomeLocation.Builder(0);
              v309 = swift_allocObject();
              v310 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
              v267(v309 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v305);
              swift_beginAccess();
              sub_252956BAC(v268, v309 + v310);
              swift_endAccess();
              sub_25293847C(v268, &qword_27F540298, &unk_252E3C270);
              type metadata accessor for HomeAutomationHomeLocation(0);
              v266 = swift_allocObject();
              *(v266 + 16) = 0;
              sub_252956C1C(v309 + v310, v266 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
              swift_setDeallocating();
              v311 = v309 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
              goto LABEL_314;
            }
          }

          v306 = [v280 filters];
          if (!v306)
          {
            goto LABEL_308;
          }

          v307 = v306;
          type metadata accessor for HomeFilter();
          v308 = sub_252E37264();

          LOBYTE(v307) = sub_252951B10(v308);

          if (v307)
          {
            sub_25293847C(v410, &qword_27F5404C8, &unk_252E3FD60);
            v266 = 0;
            v52 = v389;
            goto LABEL_315;
          }

          if (qword_27F53F4D0 != -1)
          {
            swift_once();
          }

          v312 = sub_252E36AD4();
          __swift_project_value_buffer(v312, qword_27F544D18);
          v313 = sub_252E36AC4();
          v314 = sub_252E374C4();
          if (os_log_type_enabled(v313, v314))
          {
            v315 = swift_slowAlloc();
            *v315 = 0;
            _os_log_impl(&dword_252917000, v313, v314, "calling to set smallest container", v315, 2u);
            MEMORY[0x2530AED00](v315, -1, -1);
          }

          type metadata accessor for HomeAutomationIntentContext(0);
          memcpy(v407, v409, 0x1F8uLL);
          sub_2529532C8(v407, v280, v268);
          type metadata accessor for HomeAutomationHomeLocation.Builder(0);
          v316 = swift_allocObject();
          v317 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
          v267(v316 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v305);
          swift_beginAccess();
          sub_252956BAC(v268, v316 + v317);
          swift_endAccess();
          v318 = v267;
          sub_25293847C(v268, &qword_27F540298, &unk_252E3C270);
          type metadata accessor for HomeAutomationHomeLocation(0);
          v319 = swift_allocObject();
          *(v319 + 16) = 0;
          sub_252956C1C(v316 + v317, v319 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
          swift_setDeallocating();
          v311 = v316 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
          v266 = v319;
          v267 = v318;
LABEL_314:
          sub_25293847C(v311, &qword_27F540298, &unk_252E3C270);
          swift_deallocClassInstance();
          sub_25293847C(v410, &qword_27F5404C8, &unk_252E3FD60);
          v52 = v389;
          goto LABEL_315;
        }

        ++v273;
        v275 = sub_252E37DB4();

        if (v275)
        {
          goto LABEL_267;
        }
      }

      __break(1u);
LABEL_369:
      a2 = 0x279711000;
      if (!v197)
      {
        goto LABEL_376;
      }

      goto LABEL_370;
    }

    v270 = 0;
    v265 = v409[4] + 32;
    v253 = v269 - 1;
    v73 = 6647407;
    v55 = 0xE400000000000000;
    v52 = 1701670771;
    while (v270 < *(v119 + 16))
    {
      v271 = *(v265 + v270);
      if (v271 <= 1)
      {
        if (*(v265 + v270))
        {
          v72 = 0xE400000000000000;
        }

        else
        {
          v72 = 0xE300000000000000;
        }
      }

      else if (v271 == 3)
      {
        v72 = 0xE400000000000000;
      }

      else
      {
        if (v271 != 4)
        {

          a2 = 1;
          goto LABEL_260;
        }

        v72 = 0xE600000000000000;
      }

      a2 = sub_252E37DB4();

      if ((a2 & 1) == 0 && v253 != v270++)
      {
        continue;
      }

      goto LABEL_260;
    }

    __break(1u);
LABEL_367:
    sub_252A79DB4(v265);
    sub_252A79DB4(v265);
    v365 = v384;
    sub_252E362F4();

    v336 = v385;
    sub_25293847C(v385, &qword_27F540298, &unk_252E3C270);
    v55(v365, 0, 1, v406);
    v337 = v365;
LABEL_321:
    sub_2529439A0(v337, v336);
  }

  LODWORD(v404) = 0;
  LODWORD(v398) = 0;
  LODWORD(v403) = 0;
  v266 = 0;
  LOBYTE(a2) = 0;
  v267 = v55;
  v268 = v384;
LABEL_315:
  type metadata accessor for HomeAutomationIntentContext.Builder(0);
  swift_allocObject();
  v320 = sub_2529930C0();
  *(v320 + 16) = a2 & 1;
  *(v320 + 24) = v266;
  v397 = v266;

  *(v320 + 32) = v394 & 1;
  v321 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_attribute;
  swift_beginAccess();
  sub_252956BAC(v387, v320 + v321);
  swift_endAccess();
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_entityNames) = v393;

  v322 = sub_252985AA4(v405);

  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_roomNames) = v322;

  v323 = sub_252985AA4(v399);

  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_zoneNames) = v323;

  sub_252956C1C(v52, v268);
  type metadata accessor for HomeAutomationHomeLocation.Builder(0);
  v324 = swift_allocObject();
  v325 = OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name;
  v326 = 1;
  v267(v324 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, 1, 1, v406);
  swift_beginAccess();
  sub_252956BAC(v268, v324 + v325);
  swift_endAccess();
  sub_25293847C(v268, &qword_27F540298, &unk_252E3C270);
  type metadata accessor for HomeAutomationHomeLocation(0);
  v327 = swift_allocObject();
  *(v327 + 16) = 0;
  sub_252956C1C(v324 + v325, v327 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  swift_setDeallocating();
  sub_25293847C(v324 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name, &qword_27F540298, &unk_252E3C270);
  swift_deallocClassInstance();
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetedHomeName) = v327;

  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_deviceTypes) = v395;

  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isSensorTrippedRequest) = v403;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_userDefinedDuration) = v400;

  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isOpenRequest) = v377;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isCloseRequest) = v376;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isLockRequest) = v374;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isUnlockRequest) = v375;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isDisarmRequest) = v392 & 1;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmAwayRequest) = v380 & 1;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmStayRequest) = v379 & 1;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isArmNightRequest) = v378 & 1;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_numericValue) = v381;

  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isInCurrentRoom) = v373 & 1;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isColorRequest) = BYTE4(v371);
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isScheduleRequest) = v398;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isSceneRequest) = v370 & 1;
  v328 = v383;
  if (v371 != 709)
  {
    LOWORD(v407[0]) = v371;
    HueSemantic.rawValue.getter();
    sub_252E362F4();
    v326 = 0;
  }

  v401(v328, v326, 1, v406);
  v329 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_targetColor;
  swift_beginAccess();
  sub_252956BAC(v328, v320 + v329);
  swift_endAccess();
  sub_25293847C(v328, &qword_27F540298, &unk_252E3C270);
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isPowerOnRequest) = v388;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isPowerOffRequest) = v382;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isGarageDoorRequest) = v386;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isTemperatureRequest) = v391;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isRVC) = v404 & 1;
  v330 = OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_secondaryCleanMode;
  swift_beginAccess();
  v331 = v385;
  sub_252956BAC(v385, v320 + v330);
  swift_endAccess();
  v332 = sub_252985AA4(v369);

  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_serviceAreaNames) = v332;

  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_isJobResumed) = v372 & 1;
  *(v320 + OBJC_IVAR____TtCC22HomeAutomationInternal27HomeAutomationIntentContext7Builder_numOverflowServiceAreas) = v390;
  type metadata accessor for HomeAutomationIntentContext(0);
  swift_allocObject();
  v333 = sub_252996D9C(v320);

  sub_25293847C(v331, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v387, &qword_27F540298, &unk_252E3C270);
  sub_25293847C(v389, &qword_27F540298, &unk_252E3C270);
  return v333;
}

uint64_t sub_252956B94(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_252956BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_252956C1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_252956C8C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_252956C98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_252956D08()
{
  result = qword_27F5404D8;
  if (!qword_27F5404D8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5404D8);
  }

  return result;
}

unint64_t sub_252956D54()
{
  result = qword_27F5404E8;
  if (!qword_27F5404E8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5404E0, &unk_252E3C990);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F5404E8);
  }

  return result;
}

uint64_t sub_252956DB8()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtCC22HomeAutomationInternal26HomeAutomationHomeLocation7Builder_name);

  return swift_deallocClassInstance();
}

uint64_t sub_252956E1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v46 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v45 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v45 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v45 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v45 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v45 - v22;
  if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v23);
    v24 = sub_252E36324();
    v25 = *(v24 - 8);
    if ((*(v25 + 48))(v23, 1, v24) == 1)
    {
      v26 = v23;
LABEL_6:
      result = sub_252938BBC(v26);
LABEL_7:
      v28 = v46;
      *v46 = 0u;
      *(v28 + 1) = 0u;
      return result;
    }

    v29 = v46;
    v46[3] = v24;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v29);
    return (*(v25 + 32))(boxed_opaque_existential_0, v23, v24);
  }

  else
  {
    if ((a1 != 0x676E697274536F74 || a2 != 0xE800000000000000) && (sub_252E37DB4() & 1) == 0)
    {
      if (a1 == 0xD000000000000011 && 0x8000000252E66B50 == a2 || (sub_252E37DB4() & 1) != 0)
      {
        sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v15);
        v35 = sub_252E36324();
        v36 = *(v35 - 8);
        v37 = *(v36 + 48);
        if (v37(v15, 1, v35) == 1)
        {
          sub_252938BBC(v15);
          (*(v36 + 56))(v18, 1, 1, v35);
        }

        else
        {
          sub_2529862C8(1, v18);
          (*(v36 + 8))(v15, v35);
          if (v37(v18, 1, v35) != 1)
          {
            v41 = v46;
            v46[3] = v35;
            v42 = __swift_allocate_boxed_opaque_existential_0(v41);
            return (*(v36 + 32))(v42, v18, v35);
          }
        }

        v26 = v18;
        goto LABEL_6;
      }

      if (a1 != 0xD000000000000013 || 0x8000000252E66B30 != a2)
      {
        result = sub_252E37DB4();
        if ((result & 1) == 0)
        {
          goto LABEL_7;
        }
      }

      sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v9);
      v38 = sub_252E36324();
      v39 = *(v38 - 8);
      v40 = *(v39 + 48);
      if (v40(v9, 1, v38) == 1)
      {
        sub_252938BBC(v9);
        (*(v39 + 56))(v12, 1, 1, v38);
      }

      else
      {
        sub_2529862C8(0, v12);
        (*(v39 + 8))(v9, v38);
        if (v40(v12, 1, v38) != 1)
        {
          v43 = v46;
          v46[3] = v38;
          v44 = __swift_allocate_boxed_opaque_existential_0(v43);
          return (*(v39 + 32))(v44, v12, v38);
        }
      }

      v26 = v12;
      goto LABEL_6;
    }

    sub_252956C1C(v3 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name, v21);
    v31 = sub_252E36324();
    v32 = *(v31 - 8);
    if ((*(v32 + 48))(v21, 1, v31) == 1)
    {
      v26 = v21;
      goto LABEL_6;
    }

    v33 = v46;
    v46[3] = v31;
    v34 = __swift_allocate_boxed_opaque_existential_0(v33);
    return (*(v32 + 32))(v34, v21, v31);
  }
}

uint64_t sub_2529573C4()
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252957420(uint64_t a1)
{
  sub_252E37EC4();
  sub_252E37044();
  return sub_252E37F14();
}

uint64_t sub_252957468@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_252E37B74();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_2529574E0@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_252E37B74();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_252957538(uint64_t a1)
{
  v2 = sub_252957E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_252957574(uint64_t a1)
{
  v2 = sub_252957E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2529575B0()
{
  sub_252938BBC(v0 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);

  return swift_deallocClassInstance();
}

void sub_252957644(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_2529576E0(uint64_t a1)
{
  if (!qword_27F540500)
  {
    sub_252E36324();
    v1 = sub_252E37734();
    if (!v2)
    {
      atomic_store(v1, &qword_27F540500);
    }
  }
}

uint64_t sub_252957760(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_252957798(uint64_t a1)
{
  sub_2529576E0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

id *sub_252957828(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  MEMORY[0x28223BE20](v4 - 8);
  v14 = &v13 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540528, &qword_252E3CAE0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  *(v1 + 16) = 0;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252957E30();
  sub_252E37F74();
  if (v2)
  {

    type metadata accessor for HomeAutomationHomeLocation(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v10 = v7;
    sub_252E36324();
    sub_252957DE8(&qword_27F540538, MEMORY[0x277D55C48], MEMORY[0x277D55C60]);
    v11 = v14;
    sub_252E37BE4();
    (*(v10 + 8))(v9, v6);
    sub_2529439A0(v11, v1 + OBJC_IVAR____TtC22HomeAutomationInternal26HomeAutomationHomeLocation_name);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v1;
}

void *sub_252957ABC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = v2;
  return v2;
}

void sub_252957B04(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = *(v3 + 16);
  *(v3 + 16) = a1;
}

id *sub_252957B74@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for HomeAutomationHomeLocation(0);
  v5 = swift_allocObject();
  result = sub_252957828(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_252957BD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540540, &qword_252E3CAE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_252957E30();
  sub_252E37F84();
  sub_252E36324();
  sub_252957DE8(&qword_27F540548, MEMORY[0x277D55C48], MEMORY[0x277D55C50]);
  sub_252E37CD4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_252957DE8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_252957E30()
{
  result = qword_27F540530;
  if (!qword_27F540530)
  {
    result = swift_getWitnessTable(asc_252E3CBEC, &type metadata for HomeAutomationHomeLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540530);
  }

  return result;
}

unint64_t sub_252957E98()
{
  result = qword_27F540550;
  if (!qword_27F540550)
  {
    result = swift_getWitnessTable(byte_252E3CBC4, &type metadata for HomeAutomationHomeLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540550);
  }

  return result;
}

unint64_t sub_252957EF0()
{
  result = qword_27F540558;
  if (!qword_27F540558)
  {
    result = swift_getWitnessTable(byte_252E3CAFC, &type metadata for HomeAutomationHomeLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540558);
  }

  return result;
}

unint64_t sub_252957F48()
{
  result = qword_27F540560;
  if (!qword_27F540560)
  {
    result = swift_getWitnessTable(byte_252E3CB24, &type metadata for HomeAutomationHomeLocation.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F540560);
  }

  return result;
}

uint64_t sub_252957F9C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25295806C, 0, 0);
}

uint64_t sub_25295806C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  sub_25295A464(v3, v1);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_25294B588(v1, v7 + v6);
  sub_252943BD0(sub_25295A4D4, v7, 1, v4, v5);
  v8 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v8 + 72, (v0 + 12));
  v9 = v0[15];
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v9, v10);
}

uint64_t sub_252958250()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_25295A650;
  }

  else
  {
    v2 = sub_25295A654;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252958364(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252958434, 0, 0);
}

uint64_t sub_252958434()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  sub_25295A464(v3, v1);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_25294B588(v1, v7 + v6);
  sub_252943BD0(sub_25295A658, v7, 1, v4, v5);
  v8 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v8 + 72, (v0 + 12));
  v9 = v0[15];
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v9, v10);
}

uint64_t sub_252958618(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529586E8, 0, 0);
}

uint64_t sub_2529586E8()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  sub_25295A464(v3, v1);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_25294B588(v1, v7 + v6);
  sub_252943BD0(sub_25295A658, v7, 1, v4, v5);
  v8 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v8 + 72, (v0 + 12));
  v9 = v0[15];
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v9, v10);
}

uint64_t sub_2529588CC(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25295899C, 0, 0);
}

uint64_t sub_25295899C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  sub_25295A464(v3, v1);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_25294B588(v1, v7 + v6);
  sub_252943BD0(sub_25295A658, v7, 1, v4, v5);
  v8 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v8 + 72, (v0 + 12));
  v9 = v0[15];
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v9, v10);
}

uint64_t sub_252958B80(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252958C50, 0, 0);
}

uint64_t sub_252958C50()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  sub_25295A464(v3, v1);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_25294B588(v1, v7 + v6);
  sub_252943BD0(sub_25295A658, v7, 1, v4, v5);
  v8 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v8 + 72, (v0 + 12));
  v9 = v0[15];
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_252958E34;

  return MEMORY[0x2821BB5D0](v0 + 2, v9, v10);
}

uint64_t sub_252958E34()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_252958FC0;
  }

  else
  {
    v2 = sub_252958F48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_252958F48()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252958FC0()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v1 = v0[1];

  return v1();
}

uint64_t sub_252959034(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252959104, 0, 0);
}

uint64_t sub_252959104()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  sub_25295A464(v3, v1);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_25294B588(v1, v7 + v6);
  sub_252943BD0(sub_25295A658, v7, 1, v4, v5);
  v8 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v8 + 72, (v0 + 12));
  v9 = v0[15];
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v9, v10);
}

uint64_t sub_2529592E8(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529593B8, 0, 0);
}

uint64_t sub_2529593B8()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  sub_25295A464(v3, v1);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_25294B588(v1, v7 + v6);
  sub_252943BD0(sub_25295A658, v7, 1, v4, v5);
  v8 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v8 + 72, (v0 + 12));
  v9 = v0[15];
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v9, v10);
}

uint64_t sub_25295959C(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25295966C, 0, 0);
}

uint64_t sub_25295966C()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  sub_25295A464(v3, v1);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_25294B588(v1, v7 + v6);
  sub_252943BD0(sub_25295A658, v7, 1, v4, v5);
  v8 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v8 + 72, (v0 + 12));
  v9 = v0[15];
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v9, v10);
}

uint64_t sub_252959850(uint64_t a1)
{
  v2[17] = a1;
  v2[18] = v1;
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2[19] = v3;
  v2[20] = *(v3 + 64);
  v2[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_252959920, 0, 0);
}

uint64_t sub_252959920()
{
  v1 = v0[21];
  v2 = v0[19];
  v3 = v0[17];
  sub_252929E74(v0[18] + 32, (v0 + 7));
  v4 = v0[10];
  v5 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v4);
  sub_25295A464(v3, v1);
  v6 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v7 = swift_allocObject();
  sub_25294B588(v1, v7 + v6);
  sub_252943BD0(sub_25295A658, v7, 1, v4, v5);
  v8 = v0[18];

  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_252929E74(v8 + 72, (v0 + 12));
  v9 = v0[15];
  v10 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v9);
  v11 = swift_task_alloc();
  v0[22] = v11;
  *v11 = v0;
  v11[1] = sub_252958250;

  return MEMORY[0x2821BB5D0](v0 + 2, v9, v10);
}

uint64_t sub_252959B04()
{

  __swift_destroy_boxed_opaque_existential_1(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 9);
  __swift_destroy_boxed_opaque_existential_1(v0 + 14);

  return swift_deallocClassInstance();
}

uint64_t sub_252959B84(uint64_t a1, uint64_t a2)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_25293B808;

  return (sub_25295A0A4)(a2);
}

void *sub_252959C34@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for BlockLargeDurationHandler();
  swift_allocObject();
  result = sub_252D192A0();
  *a1 = result;
  return result;
}

id sub_252959C70(void *a1)
{
  v2 = sub_252E32FF4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_252E32BA4();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v38 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v38 - v14;
  v16 = MEMORY[0x28223BE20](v13);
  v18 = &v38 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v38 - v19;
  result = [a1 time];
  if (result)
  {
    v22 = result;
    v23 = [result startDateComponents];
    if (v23)
    {
      v39 = v3;
      v40 = v5;
      v24 = v23;
      sub_252E32B24();

      v25 = *(v7 + 32);
      v25(v20, v18, v6);
      v26 = [v22 endDateComponents];
      if (v26)
      {
        v27 = v26;
        sub_252E32B24();

        v25(v15, v12, v6);
        sub_252E32FC4();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404D0, &qword_252E3CCA0);
        v28 = sub_252E32FE4();
        v29 = *(v28 - 8);
        v30 = *(v29 + 80);
        v38 = v2;
        v31 = (v30 + 32) & ~v30;
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_252E3C290;
        (*(v29 + 104))(v32 + v31, *MEMORY[0x277CC99A0], v28);
        sub_2529FE09C(v32);
        swift_setDeallocating();
        (*(v29 + 8))(v32 + v31, v28);
        swift_deallocClassInstance();
        v33 = v40;
        v34 = v41;
        sub_252E32F34();

        (*(v39 + 8))(v33, v38);
        v35 = sub_252E32B64();
        LOBYTE(v32) = v36;

        v37 = *(v7 + 8);
        v37(v34, v6);
        v37(v15, v6);
        v37(v20, v6);
        if (v32)
        {
          return 0;
        }

        else
        {
          return (v35 > 60);
        }
      }

      (*(v7 + 8))(v20, v6);
    }

    return 0;
  }

  return result;
}

uint64_t sub_25295A0A4()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25295A140, 0, 0);
}

uint64_t sub_25295A140()
{

  sub_252E362B4();

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_25295A234;
  v2 = *(v0 + 24);

  return sub_252957F9C(v2);
}

uint64_t sub_25295A234()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 40) = v0;

  sub_25295A3FC(v2);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25295A398, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_25295A398()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25295A3FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25295A464(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t objectdestroyTm()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
  }

  else
  {
    v5 = sub_252E33C84();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_25295A5D4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540330, &unk_252E3C7F0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_252D19298(v4, a1);
}

uint64_t sub_25295A670(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  v68 = v2;
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x277D84F90];
    do
    {
      v5 = (v1 + 32 + 504 * v3);
      v6 = v3;
      while (1)
      {
        if (v6 >= v2)
        {
LABEL_80:
          __break(1u);
LABEL_81:
          __break(1u);
          goto LABEL_82;
        }

        result = memcpy(v72, v5, 0x1F8uLL);
        v3 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_81;
        }

        if (*(v72[13] + 16) && !*(v72[17] + 16))
        {
          break;
        }

        ++v6;
        v5 += 504;
        if (v3 == v2)
        {
          goto LABEL_14;
        }
      }

      sub_2529353AC(v72, v71);
      v7 = v4;
      v69[0] = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_2529AA480(0, *(v4 + 16) + 1, 1);
        v7 = v69[0];
      }

      v9 = *(v7 + 16);
      v8 = *(v7 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_2529AA480((v8 > 1), v9 + 1, 1);
        v7 = v69[0];
      }

      *(v7 + 16) = v9 + 1;
      v4 = v7;
      result = memcpy((v7 + 504 * v9 + 32), v72, 0x1F8uLL);
      v2 = v68;
    }

    while (v3 != v68);
LABEL_14:
    v10 = 0;
    v11 = MEMORY[0x277D84F90];
LABEL_15:
    v12 = (v1 + 32 + 504 * v10);
    v13 = v10;
    v14 = v68;
    while (v13 < v14)
    {
      result = memcpy(v72, v12, 0x1F8uLL);
      v10 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_83;
      }

      if (*(v72[17] + 16) && !*(v72[13] + 16))
      {
        sub_2529353AC(v72, v71);
        v15 = v11;
        v69[0] = v11;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2529AA480(0, *(v11 + 16) + 1, 1);
          v15 = v69[0];
        }

        v17 = *(v15 + 16);
        v16 = *(v15 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_2529AA480((v16 > 1), v17 + 1, 1);
          v15 = v69[0];
        }

        *(v15 + 16) = v17 + 1;
        v11 = v15;
        result = memcpy((v15 + 504 * v17 + 32), v72, 0x1F8uLL);
        if (v10 != v68)
        {
          goto LABEL_15;
        }

LABEL_26:
        v18 = v4;
        result = v11;
        v19 = *(v4 + 16);
        if (v19)
        {
          goto LABEL_29;
        }

        goto LABEL_46;
      }

      ++v13;
      v12 += 504;
      v14 = v68;
      if (v10 == v68)
      {
        goto LABEL_26;
      }
    }

LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v18 = MEMORY[0x277D84F90];
  result = MEMORY[0x277D84F90];
  v19 = *(MEMORY[0x277D84F90] + 16);
  if (v19)
  {
LABEL_29:
    if (*(result + 16))
    {
      v65 = v1;
      v59 = result;
      v20 = 0;
      v21 = MEMORY[0x277D84F90];
      v22 = 136;
      v66 = 0;
      v67 = v18;
      while (v20 < *(v18 + 16))
      {
        v23 = *(v18 + v22);
        v24 = *(v23 + 16);
        v25 = *(v21 + 16);
        v26 = v25 + v24;
        if (__OFADD__(v25, v24))
        {
          goto LABEL_85;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || v26 > *(v21 + 24) >> 1)
        {
          if (v25 <= v26)
          {
            v27 = v25 + v24;
          }

          else
          {
            v27 = v25;
          }

          result = sub_2529F7A80(result, v27, 1, v21);
          v21 = result;
        }

        v18 = v67;
        if (*(v23 + 16))
        {
          if ((*(v21 + 24) >> 1) - *(v21 + 16) < v24)
          {
            goto LABEL_88;
          }

          swift_arrayInitWithCopy();

          if (v24)
          {
            v28 = *(v21 + 16);
            v29 = __OFADD__(v28, v24);
            v30 = v28 + v24;
            if (v29)
            {
              goto LABEL_91;
            }

            *(v21 + 16) = v30;
          }
        }

        else
        {

          if (v24)
          {
            goto LABEL_86;
          }
        }

        ++v20;
        v22 += 504;
        if (v19 == v20)
        {
          v31 = v68;
          if (v68)
          {
            v32 = 0;
            v60 = v65 + 32;
            v62 = v21 + 32;
            v58 = MEMORY[0x277D84F90];
            v61 = v21;
            while (v32 < v31)
            {
              v33 = (v60 + 504 * v32);
              result = memcpy(v72, v33, 0x1F8uLL);
              v29 = __OFADD__(v32++, 1);
              if (v29)
              {
                goto LABEL_90;
              }

              v34 = memcpy(v71, v33, sizeof(v71));
              MEMORY[0x28223BE20](v34);
              v57 = v71;
              sub_2529353AC(v72, v69);
              v35 = v18;
              v36 = v66;
              result = sub_2529EDA1C(sub_25295AD78, v56, v35);
              if (result & 1) != 0 || (v37 = memcpy(v71, v72, sizeof(v71)), MEMORY[0x28223BE20](v37), v57 = v71, result = sub_2529EDA1C(sub_25295AD98, v56, v59), (result))
              {
                v63 = *(v21 + 16);
                if (v63)
                {
                  v38 = 0;
                  v65 = v32;
                  while (2)
                  {
                    if (v38 >= *(v21 + 16))
                    {
                      goto LABEL_87;
                    }

                    v66 = v36;
                    v64 = v38 + 1;
                    v39 = v72[41];
                    v40 = *(v72[41] + 16);

                    v41 = v39 + 40;
                    v42 = -v40;
                    v43 = -1;
                    while (v42 + v43 != -1)
                    {
                      if (++v43 >= *(v39 + 16))
                      {
                        __break(1u);
                        goto LABEL_80;
                      }

                      v44 = sub_252E36FA4();
                      v46 = v45;
                      if (v44 == sub_252E36FA4() && v46 == v47)
                      {

LABEL_72:

                        result = sub_252935408(v72);
                        v18 = v67;
                        v31 = v68;
                        v32 = v65;
                        v55 = v65 == v68;
                        v21 = v61;
                        goto LABEL_73;
                      }

                      v41 += 16;
                      v49 = sub_252E37DB4();

                      if (v49)
                      {
                        goto LABEL_72;
                      }
                    }

                    v38 = v64;
                    v31 = v68;
                    v21 = v61;
                    v32 = v65;
                    v36 = v66;
                    if (v64 != v63)
                    {
                      continue;
                    }

                    break;
                  }
                }
              }

              v50 = v58;
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v70 = v50;
              v66 = v36;
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                sub_2529AA480(0, *(v58 + 16) + 1, 1);
                v58 = v70;
              }

              v53 = *(v58 + 16);
              v52 = *(v58 + 24);
              if (v53 >= v52 >> 1)
              {
                sub_2529AA480((v52 > 1), v53 + 1, 1);
                v58 = v70;
              }

              v54 = v58;
              *(v58 + 16) = v53 + 1;
              result = memcpy((v54 + 504 * v53 + 32), v72, 0x1F8uLL);
              v55 = v32 == v31;
              v18 = v67;
LABEL_73:
              if (v55)
              {
                goto LABEL_77;
              }
            }

            goto LABEL_89;
          }

          v58 = MEMORY[0x277D84F90];
LABEL_77:

          return v58;
        }
      }

LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      return result;
    }
  }

LABEL_46:

  return MEMORY[0x277D84F90];
}

uint64_t sub_25295ADB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v37 = a2;
  v33 = a7;
  v34 = a3;
  v35 = a4;
  v39 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540568, &unk_252E3CD30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v32 - v10;
  v38 = sub_252E36854();
  v12 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v36 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v32 - v15;
  v40 = sub_252E36834();
  v17 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v20 = sub_252E36AD4();
  __swift_project_value_buffer(v20, qword_27F544D60);
  v21 = sub_252E36AC4();
  v22 = sub_252E374E4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = a5;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_252917000, v21, v22, "ErrorFilingHelper#fileTTR called to capture some error condition", v24, 2u);
    v25 = v24;
    a5 = v23;
    MEMORY[0x2530AED00](v25, -1, -1);
  }

  if (a6)
  {
    v26 = a5;
  }

  else
  {
    v26 = 0;
  }

  if (a6)
  {
    v27 = a6;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  v41 = 0;
  v42 = 0xE000000000000000;

  sub_252E379F4();

  v41 = 0xD000000000000030;
  v42 = 0x8000000252E6AEC0;
  MEMORY[0x2530AD570](v26, v27);

  MEMORY[0x2530ACCE0](0x616D532069726953, 0xEF656D6F48207472, 0x736775422077654ELL, 0xE800000000000000, 672838);
  sub_25295B480(v33, v16);
  v28 = v40;
  if ((*(v17 + 48))(v16, 1, v40) == 1)
  {
    sub_25293847C(v16, &qword_27F540570, &unk_252E50EE0);
  }

  else
  {
    (*(v17 + 8))(v19, v28);
    (*(v17 + 32))(v19, v16, v28);
  }

  v41 = 0;
  v42 = 0xE000000000000000;
  sub_252E379F4();

  v41 = 0xD000000000000021;
  v42 = 0x8000000252E6AF00;
  MEMORY[0x2530AD570](v34, v35);
  MEMORY[0x2530AD570](0x726F72726520, 0xE600000000000000);
  v29 = v36;
  MEMORY[0x2530ACD00](MEMORY[0x277D84F90], &unk_2864A6F50, 0, v41, v42);
  v30 = v38;
  (*(v12 + 16))(v11, v29, v38);
  (*(v12 + 56))(v11, 0, 1, v30);
  sub_252E36864();

  sub_25293847C(v11, &qword_27F540568, &unk_252E3CD30);
  (*(v12 + 8))(v29, v30);
  return (*(v17 + 8))(v19, v40);
}

uint64_t sub_25295B304(char a1)
{
  if (qword_27F53F4E8 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_27F544D60);
  sub_252E379F4();

  if (a1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (a1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v3, v4);

  sub_252CC3D90(0xD000000000000026, 0x8000000252E6AF70, 0xD000000000000078, 0x8000000252E6AFA0);
}

uint64_t ErrorFilingHelper.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_25295B480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540570, &unk_252E50EE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25295B550(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v30 = MEMORY[0x277D84F90];
  sub_2529AA560(0, v1, 0);
  v2 = v30;
  v4 = (a1 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F545150, &qword_252E5A4D0);
  while (1)
  {
    v6 = *v4++;
    v5 = v6;
    v7 = sub_252E37B54();
    v8 = byte_2864A24F8;
    v9 = byte_2864A24F9;
    result = sub_252A4509C(byte_2864A24F8);
    if (v11)
    {
      break;
    }

    v12 = v7 + 8;
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v7[6] + result) = v8;
    *(v7[7] + result) = v9;
    v13 = v7[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v7[2] = v15;
    v16 = byte_2864A24FA;
    v17 = byte_2864A24FB;
    result = sub_252A4509C(byte_2864A24FA);
    if (v18)
    {
      break;
    }

    *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(v7[6] + result) = v16;
    *(v7[7] + result) = v17;
    v19 = v7[2];
    v14 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v7[2] = v20;
    v21 = byte_2864A24FC;
    v22 = byte_2864A24FD;
    result = sub_252A4509C(byte_2864A24FC);
    if (v23)
    {
      break;
    }

    *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
    *(v7[6] + result) = v21;
    *(v7[7] + result) = v22;
    v24 = v7[2];
    v14 = __OFADD__(v24, 1);
    v25 = v24 + 1;
    if (v14)
    {
      goto LABEL_17;
    }

    v7[2] = v25;
    if (v25)
    {
      v26 = sub_252A4509C(v5);
      if (v27)
      {
        LOBYTE(v5) = *(v7[7] + v26);
      }
    }

    v29 = *(v30 + 16);
    v28 = *(v30 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_2529AA560((v28 > 1), v29 + 1, 1);
    }

    *(v30 + 16) = v29 + 1;
    *(v30 + v29 + 32) = v5;
    if (!--v1)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_25295B778(uint64_t a1)
{
  v2 = v1;
  v4 = sub_252E35C94();
  v5 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v113 = &v111 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540578, &qword_252E3CD78);
  MEMORY[0x28223BE20](v114);
  v8 = &v111 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540580, &qword_252E3CD80);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v115 = &v111 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v111 - v13;
  MEMORY[0x28223BE20](v12);
  v118 = &v111 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540588, &qword_252E3CD88);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v111 - v17;
  if (qword_27F53F768 != -1)
  {
LABEL_146:
    swift_once();
  }

  v19 = type metadata accessor for HomeAutomationNLV3Intent(0);
  v20 = sub_25295DA40(&qword_27F540470, type metadata accessor for HomeAutomationNLV3Intent, protocol conformance descriptor for HomeAutomationNLV3Intent);
  sub_252E34BE4();
  *(v2 + 8) = v121;
  if (qword_27F53F770 != -1)
  {
    swift_once();
  }

  v116 = v4;
  sub_252E34BE4();
  *(v2 + 9) = v121;
  if (qword_27F53F780 != -1)
  {
    swift_once();
  }

  v4 = v5;
  sub_252E34BE4();
  *(v2 + 10) = v121;
  if (qword_27F53F778 != -1)
  {
    swift_once();
  }

  v120 = v20;
  sub_252E34BE4();
  v21 = sub_252E34904();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 48))(v18, 1, v21);
  v117 = a1;
  v119 = v19;
  if (v23 == 1)
  {
    sub_25293847C(v18, &qword_27F540588, &qword_252E3CD88);
    goto LABEL_22;
  }

  v24 = sub_252E348F4();
  (*(v22 + 8))(v18, v21);
  v112 = v24;
  if (sub_252E35DB4())
  {
    v25 = v118;
    sub_252E35CA4();

    v26 = v4;
    v27 = v116;
  }

  else
  {
    v26 = v4;
    v28 = v4[7];
    v25 = v118;
    v27 = v116;
    v28(v118, 1, 1, v116);
  }

  v29 = v115;
  (v26[13])(v14, *MEMORY[0x277D56270], v27);
  (v26[7])(v14, 0, 1, v27);
  v30 = *(v114 + 48);
  sub_25295D9D0(v25, v8);
  sub_25295D9D0(v14, &v8[v30]);
  v31 = v26[6];
  if (v31(v8, 1, v27) != 1)
  {
    sub_25295D9D0(v8, v29);
    if (v31(&v8[v30], 1, v27) != 1)
    {
      v34 = v113;
      (v26[4])(v113, &v8[v30], v27);
      sub_25295DA40(&qword_27F540590, MEMORY[0x277D56288], MEMORY[0x277D56290]);
      v35 = v29;
      v36 = sub_252E36EF4();
      v37 = v26[1];
      v37(v34, v27);
      v18 = &qword_27F540580;
      sub_25293847C(v14, &qword_27F540580, &qword_252E3CD80);
      sub_25293847C(v118, &qword_27F540580, &qword_252E3CD80);
      v37(v35, v27);
      sub_25293847C(v8, &qword_27F540580, &qword_252E3CD80);
      a1 = v117;
      v4 = v112;
      if (v36)
      {
        goto LABEL_21;
      }

LABEL_19:

      *(v2 + 16) = v4;
      goto LABEL_22;
    }

    v33 = v29;
    v18 = &qword_252E3CD80;
    sub_25293847C(v14, &qword_27F540580, &qword_252E3CD80);
    sub_25293847C(v118, &qword_27F540580, &qword_252E3CD80);
    (v26[1])(v33, v27);
    a1 = v117;
LABEL_18:
    sub_25293847C(v8, &qword_27F540578, &qword_252E3CD78);
    v4 = v112;
    goto LABEL_19;
  }

  v18 = &qword_252E3CD80;
  sub_25293847C(v14, &qword_27F540580, &qword_252E3CD80);
  sub_25293847C(v25, &qword_27F540580, &qword_252E3CD80);
  v32 = v31(&v8[v30], 1, v27);
  a1 = v117;
  if (v32 != 1)
  {
    goto LABEL_18;
  }

  sub_25293847C(v8, &qword_27F540580, &qword_252E3CD80);
  v4 = v112;
LABEL_21:

LABEL_22:
  if (qword_27F53F788 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v2 + 24) = v121;
  if (qword_27F53F790 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v2 + 25) = v121;
  if (qword_27F53F798 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v2 + 26) = v121;
  if (qword_27F53F7A0 != -1)
  {
    swift_once();
  }

  v38 = sub_252E34BF4();

  *(v2 + 32) = v38;
  if (qword_27F53F7A8 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v2 + 40) = v121;
  if (qword_27F53F7B0 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  v39 = v122;
  v5 = &qword_252E3C000;
  if (v122)
  {
    v40 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_252E3C290;
    *(v41 + 32) = v40;
    *(v41 + 40) = v39;

    *(v2 + 48) = v41;
  }

  if (qword_27F53F7B8 != -1)
  {
    swift_once();
  }

  v42 = sub_252E34BF4();

  *(v2 + 56) = v42;
  if (qword_27F53F7C0 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v2 + 64) = v121;
  if (qword_27F53F7C8 != -1)
  {
    swift_once();
  }

  v43 = sub_252E34BF4();

  *(v2 + 72) = v43;
  if (qword_27F53F7D8 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  v44 = v121;
  if (v121 != 66)
  {
    v45 = *(v2 + 80);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v45 = sub_2529F82EC(0, *(v45 + 2) + 1, 1, v45);
    }

    v47 = *(v45 + 2);
    v46 = *(v45 + 3);
    v4 = (v47 + 1);
    if (v47 >= v46 >> 1)
    {
      v45 = sub_2529F82EC((v46 > 1), v47 + 1, 1, v45);
    }

    *(v45 + 2) = v4;
    v45[v47 + 32] = v44;
    *(v2 + 80) = v45;
  }

  if (qword_27F53F7E8 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  v48 = v121;
  if (v121 != 21)
  {
    v49 = *(v2 + 88);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v49 = sub_2529F82D8(0, *(v49 + 2) + 1, 1, v49);
    }

    v51 = *(v49 + 2);
    v50 = *(v49 + 3);
    v4 = (v51 + 1);
    if (v51 >= v50 >> 1)
    {
      v49 = sub_2529F82D8((v50 > 1), v51 + 1, 1, v49);
    }

    *(v49 + 2) = v4;
    v49[v51 + 32] = v48;
    *(v2 + 88) = v49;
  }

  v111 = v2;
  v118 = sub_252DCEBB4();
  v116 = *(v118 + 2);
  if (v116)
  {
    v2 = 0;
    v115 = v118 + 32;
    v112 = MEMORY[0x277D84F90];
    while (1)
    {
LABEL_60:
      if (v2 >= *(v118 + 2))
      {
        __break(1u);
        goto LABEL_146;
      }

      v52 = v5;
      v53 = *&v115[8 * v2++];
      v8 = (v53 + 56);
      v54 = 1 << *(v53 + 32);
      v55 = v54 < 64 ? ~(-1 << v54) : -1;
      v56 = v55 & *(v53 + 56);
      v57 = (v54 + 63) >> 6;
      swift_bridgeObjectRetain_n();
      v58 = 0;
      v14 = MEMORY[0x277D84F90];
      while (1)
      {
        v59 = v58;
        if (!v56)
        {
          break;
        }

LABEL_69:
        v60 = __clz(__rbit64(v56));
        v56 &= v56 - 1;
        v61 = (*(v53 + 48) + ((v58 << 10) | (16 * v60)));
        v18 = *v61;
        v4 = v61[1];
        swift_bridgeObjectRetain_n();
        v62 = sub_252A9B42C(v18, v4);
        if (v62 == 71)
        {
        }

        else
        {
          v63 = sub_252A9AD58(v62);
          v113 = v64;
          v114 = v63;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_2529F7A80(0, *(v14 + 2) + 1, 1, v14);
          }

          v18 = *(v14 + 2);
          v65 = *(v14 + 3);
          v4 = (v18 + 1);
          if (v18 >= v65 >> 1)
          {
            v14 = sub_2529F7A80((v65 > 1), v18 + 1, 1, v14);
          }

          *(v14 + 2) = v4;
          v66 = &v14[16 * v18];
          v67 = v113;
          *(v66 + 4) = v114;
          *(v66 + 5) = v67;
        }
      }

      while (1)
      {
        v58 = v59 + 1;
        if (__OFADD__(v59, 1))
        {
          __break(1u);
          goto LABEL_135;
        }

        if (v58 >= v57)
        {
          break;
        }

        v56 = *&v8[8 * v58];
        ++v59;
        if (v56)
        {
          goto LABEL_69;
        }
      }

      if (!*(v14 + 2))
      {
        break;
      }

      v18 = sub_252C75848(v14);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      a1 = v117;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v112 = sub_2529F8278(0, v112[2] + 1, 1, v112);
      }

      v5 = v52;
      v70 = v112[2];
      v69 = v112[3];
      v4 = (v70 + 1);
      if (v70 >= v69 >> 1)
      {
        v112 = sub_2529F8278((v69 > 1), v70 + 1, 1, v112);
      }

      v71 = v112;
      v112[2] = v4;
      v71[v70 + 4] = v18;
      if (v2 == v116)
      {
        goto LABEL_86;
      }
    }

    a1 = v117;
    v5 = v52;
    if (v2 != v116)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v112 = MEMORY[0x277D84F90];
  }

LABEL_86:

  v72 = v111;

  *(v72 + 96) = v112;
  if (qword_27F53F7F0 != -1)
  {
    swift_once();
  }

  v73 = sub_252E34BF4();

  *(v72 + 104) = v73;
  if (qword_27F53F7F8 != -1)
  {
    swift_once();
  }

  v74 = sub_252E34BF4();

  *(v72 + 128) = v74;
  if (qword_27F53F800 != -1)
  {
    swift_once();
  }

  v118 = qword_27F575D20;
  v75 = sub_252E34BF4();

  *(v72 + 136) = v75;
  if (qword_27F53F808 != -1)
  {
    swift_once();
  }

  v8 = qword_27F575D28;
  v76 = sub_252E34BF4();

  *(v72 + 144) = v76;
  if (qword_27F53F818 != -1)
  {
    swift_once();
  }

  v14 = qword_27F575D38;
  v77 = sub_252E34BF4();

  *(v72 + 152) = v77;
  if (qword_27F53F820 != -1)
  {
    swift_once();
  }

  v18 = qword_27F575D40;
  sub_252E34BE4();
  v78 = v122;
  if (v122)
  {
    v79 = v121;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5401B0, &qword_252E41DB0);
    v80 = swift_allocObject();
    *(v80 + 16) = *(v5 + 41);
    *(v80 + 32) = v79;
    *(v80 + 40) = v78;

    *(v72 + 160) = v80;
  }

  if (qword_27F53F828 != -1)
  {
    swift_once();
  }

  v53 = qword_27F575D48;
  v81 = sub_252E34BF4();

  *(v72 + 168) = v81;
  if (qword_27F53F830 != -1)
  {
    swift_once();
  }

  v82 = sub_252E34BF4();

  *(v72 + 176) = v82;
  if (qword_27F53F838 != -1)
  {
    swift_once();
  }

  v83 = sub_252E34BF4();

  *(v72 + 184) = v83;
  if (qword_27F53F840 != -1)
  {
    swift_once();
  }

  v84 = sub_252E34BF4();

  *(v72 + 192) = v84;
  if (qword_27F53F848 != -1)
  {
    swift_once();
  }

  v85 = sub_252E34BF4();

  *(v72 + 200) = v85;
  if (qword_27F53F850 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  if (v121 > 0xEuLL)
  {
    v86 = 9;
  }

  else
  {
    v86 = byte_252E3CD9A[v121];
  }

  *(v72 + 208) = v86;
  if (qword_27F53F858 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v72 + 209) = v121;
  if (qword_27F53F860 != -1)
  {
    swift_once();
  }

  v87 = sub_252E34BF4();

  *(v72 + 216) = v87;
  if (qword_27F53F868 != -1)
  {
    swift_once();
  }

  v88 = sub_252E34BF4();

  *(v72 + 224) = v88;
  if (qword_27F53F870 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  *(v72 + 232) = v121;
  v89 = HomeAutomationNLV3Intent.fallbackWebSearchQuery.getter();
  v91 = v90;

  *(v72 + 240) = v89;
  *(v72 + 248) = v91;
  if (qword_27F53F7E0 != -1)
  {
    swift_once();
  }

  v92 = sub_252E34BF4();

  *(v72 + 256) = v92;
  *(v72 + 312) = sub_252E35894() & 1;
  if (qword_27F53F878 != -1)
  {
    swift_once();
  }

  sub_252E34BE4();
  v58 = v121;
  if (v121 != 39)
  {
    v93 = sub_252CC5BA8(&unk_2864A5578);
    if (*(v93 + 16) && (v94 = sub_252A450C8(v58), (v95 & 1) != 0))
    {
      v96 = *(*(v93 + 56) + 8 * v94);

      v97 = 0;
    }

    else
    {

      LOBYTE(v121) = v58;
      if (ReferenceSemantic.rawValue.getter() == 1954047342 && v98 == 0xE400000000000000)
      {

        v97 = 1;
        v96 = 2;
      }

      else
      {
LABEL_135:
        v99 = sub_252E37DB4();

        if (v99)
        {
          v97 = 1;
          v96 = 2;
        }

        else
        {
          LOBYTE(v121) = v58;
          if (ReferenceSemantic.rawValue.getter() == 31085 && v100 == 0xE200000000000000)
          {

            v96 = 1;
          }

          else
          {
            v101 = sub_252E37DB4();

            v96 = v101 & 1;
          }

          v97 = 1;
        }

        v72 = v111;
      }
    }

    *(v72 + 280) = v96;
    *(v72 + 288) = v97;
    *(v72 + 289) = 0;
  }

  v102 = sub_252E35884();
  v104 = v103;

  *(v72 + 264) = v102;
  *(v72 + 272) = v104;
  v105 = sub_25295CEFC(v118);

  *(v72 + 328) = v105;
  v106 = sub_25295CEFC(v8);

  *(v72 + 336) = v106;
  v107 = sub_25295CEFC(v14);

  *(v72 + 344) = v107;
  v108 = sub_25295CEFC(v53);

  *(v72 + 352) = v108;
  v109 = sub_25295CEFC(v18);

  *(v72 + 360) = v109;
  return sub_25295D6D0();
}