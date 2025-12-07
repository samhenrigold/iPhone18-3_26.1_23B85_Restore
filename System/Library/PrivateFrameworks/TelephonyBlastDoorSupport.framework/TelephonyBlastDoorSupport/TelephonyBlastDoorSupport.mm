uint64_t sub_26D1B0710()
{
  v0 = sub_26D22CF14();
  __swift_allocate_value_buffer(v0, qword_2804E0438);
  __swift_project_value_buffer(v0, qword_2804E0438);
  return sub_26D22CF04();
}

uint64_t sub_26D1B0790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v119 = a3;
  v120 = a4;
  v118 = a2;
  v115 = a1;
  v4 = sub_26D22CF24();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v93 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D22CF54();
  v111 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v110 = &v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = sub_26D22CF34();
  v108 = *(v109 - 8);
  MEMORY[0x28223BE20](v109);
  v107 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_26D22CE34();
  v123 = *(v125 - 8);
  v11 = MEMORY[0x28223BE20](v125);
  v105 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v106 = &v93 - v13;
  v14 = sub_26D22CC54();
  v117 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v116 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26D22CE74();
  v113 = *(v16 - 8);
  v114 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_26D22CCE4();
  v124 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v121 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v112 = &v93 - v23;
  MEMORY[0x28223BE20](v22);
  v122 = &v93 - v24;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = &v93 - v26;
  v28 = type metadata accessor for TapToRadarDraft(0);
  MEMORY[0x28223BE20](v28);
  v30 = &v93 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = os_variant_has_internal_content();
  if (result)
  {
    v96 = v7;
    v98 = v5;
    v99 = v4;
    if (qword_2804E0430 != -1)
    {
      swift_once();
    }

    v102 = v14;
    v97 = v8;
    v104 = v19;
    v32 = sub_26D22CF14();
    v103 = __swift_project_value_buffer(v32, qword_2804E0438);
    v33 = sub_26D22CEF4();
    v34 = sub_26D22E5E4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 0;
      _os_log_impl(&dword_26D1AF000, v33, v34, "Prompting for TTR...", v35, 2u);
      MEMORY[0x26D6B7800](v35, -1, -1);
    }

    *v30 = 0x4449656C646E7542;
    *(v30 + 1) = 0xE800000000000000;
    strcpy(v30 + 72, "Classification");
    v30[87] = -18;
    v30[88] = 10;
    *(v30 + 12) = 0x6375646F72706552;
    *(v30 + 13) = 0xEF7974696C696269;
    v30[112] = 6;
    *(v30 + 15) = 0x656C746954;
    *(v30 + 16) = 0xE500000000000000;
    *(v30 + 17) = 0;
    *(v30 + 18) = 0;
    *(v30 + 19) = 0x7470697263736544;
    *(v30 + 20) = 0xEB000000006E6F69;
    *(v30 + 21) = 0;
    *(v30 + 22) = 0;
    v36 = MEMORY[0x277D84F90];
    *(v30 + 23) = 0x7364726F7779654BLL;
    *(v30 + 24) = 0xE800000000000000;
    *(v30 + 25) = v36;
    v37 = &v30[v28[11]];
    *(v30 + 2) = 0;
    *(v30 + 3) = 0;
    v101 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0498, &qword_26D234D30) + 36);
    v100 = *(v123 + 56);
    v100(&v37[v101], 1, 1, v125);
    *v37 = 0x7349664F656D6954;
    *(v37 + 1) = 0xEB00000000657573;
    v38 = &v30[v28[12]];
    *v38 = 0x656D686361747441;
    *(v38 + 1) = 0xEB0000000073746ELL;
    v95 = v38;
    *(v38 + 2) = v36;
    v39 = &v30[v28[13]];
    *v39 = 0xD000000000000011;
    *(v39 + 1) = 0x800000026D23AC10;
    *(v39 + 2) = v36;
    v40 = &v30[v28[14]];
    *v40 = 0xD000000000000014;
    *(v40 + 1) = 0x800000026D23AC30;
    *(v40 + 2) = v36;
    v41 = &v30[v28[15]];
    strcpy(v41, "DeleteOnAttach");
    v41[15] = -18;
    v94 = v41;
    v41[16] = 0;
    v42 = &v30[v28[16]];
    *v42 = 0x4449656369766544;
    *(v42 + 1) = 0xE900000000000073;
    *(v42 + 2) = v36;
    v43 = &v30[v28[17]];
    strcpy(v43, "DeviceClasses");
    *(v43 + 7) = -4864;
    *(v43 + 2) = v36;
    v44 = &v30[v28[18]];
    strcpy(v44, "DeviceModels");
    v44[13] = 0;
    *(v44 + 7) = -5120;
    *(v44 + 2) = v36;
    v45 = &v30[v28[19]];
    *v45 = 0xD000000000000016;
    *(v45 + 1) = 0x800000026D23AC50;
    *(v45 + 2) = 0;
    v46 = &v30[v28[20]];
    *v46 = 0xD00000000000001ALL;
    *(v46 + 1) = 0x800000026D23AC70;
    v46[16] = 0;
    v47 = &v30[v28[21]];
    *v47 = 0x676169446F747541;
    *(v47 + 1) = 0xEF73636974736F6ELL;
    v47[16] = 0;
    v48 = &v30[v28[22]];
    *v48 = 0xD00000000000001BLL;
    *(v48 + 1) = 0x800000026D23AC90;
    *(v48 + 2) = v36;
    v49 = &v30[v28[23]];
    *v49 = 0xD000000000000018;
    *(v49 + 1) = 0x800000026D23ACB0;
    *(v49 + 2) = 0;
    *(v49 + 3) = 0;
    v50 = &v30[v28[24]];
    *v50 = 0xD000000000000012;
    *(v50 + 1) = 0x800000026D23ACD0;
    *(v50 + 2) = 0;
    *(v50 + 3) = 0;
    *(v30 + 2) = xmmword_26D22F340;
    *(v30 + 3) = xmmword_26D22F350;
    *(v30 + 8) = 0xE300000000000000;
    v30[88] = 1;
    v30[112] = 5;
    aBlock = 0;
    v128 = 0xE000000000000000;
    sub_26D22E744();
    MEMORY[0x26D6B6C70](0xD00000000000003CLL, 0x800000026D23ACF0);
    v51 = sub_26D22EA64();
    MEMORY[0x26D6B6C70](v51);

    MEMORY[0x26D6B6C70](39, 0xE100000000000000);
    v52 = v128;
    *(v30 + 17) = aBlock;
    *(v30 + 18) = v52;
    aBlock = 0;
    v128 = 0xE000000000000000;
    sub_26D22E744();
    MEMORY[0x26D6B6C70](0xD00000000000001ALL, 0x800000026D23AD30);
    v53 = sub_26D22EA64();
    MEMORY[0x26D6B6C70](v53);

    MEMORY[0x26D6B6C70](2112039, 0xE300000000000000);
    sub_26D22E2E4();
    sub_26D22E804();
    MEMORY[0x26D6B6C70](46, 0xE100000000000000);
    v54 = v128;
    *(v30 + 21) = aBlock;
    *(v30 + 22) = v54;
    sub_26D22CE24();
    v100(v27, 0, 1, v125);
    sub_26D1B1ED8(v27, &v37[v101]);
    v55 = [objc_opt_self() defaultManager];
    v56 = [v55 temporaryDirectory];

    v57 = v122;
    sub_26D22CC94();

    aBlock = sub_26D22EA64();
    v128 = v58;
    MEMORY[0x26D6B6C70](95, 0xE100000000000000);
    sub_26D22CE64();
    v59 = sub_26D22CE54();
    v61 = v60;
    (*(v113 + 8))(v18, v114);
    MEMORY[0x26D6B6C70](v59, v61);

    v63 = v116;
    v62 = v117;
    v64 = v102;
    (*(v117 + 104))(v116, *MEMORY[0x277CC91D8], v102);
    sub_26D1B1F48();
    sub_26D22CCB4();
    (*(v62 + 8))(v63, v64);

    sub_26D22CC84();
    sub_26D22CD84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04C8, &unk_26D22F380);
    v65 = v124;
    v66 = (*(v124 + 80) + 32) & ~*(v124 + 80);
    v67 = swift_allocObject();
    *(v67 + 16) = xmmword_26D22F360;
    v68 = v104;
    (*(v65 + 16))(v67 + v66, v57, v104);
    *(v95 + 2) = v67;
    v94[16] = 1;
    sub_26D208AB4(v121);
    (*(v65 + 32))();
    v69 = [objc_allocWithZone(MEMORY[0x277CE1F60]) init];
    v70 = sub_26D22E3B4();
    [v69 setTitle_];

    v71 = sub_26D22E3B4();
    [v69 setBody_];

    v72 = sub_26D22CC74();
    [v69 setDefaultActionURL_];

    [v69 setShouldSuppressScreenLightUp_];
    v73 = v105;
    sub_26D22CE24();
    v74 = v106;
    sub_26D22CE04();
    v75 = *(v123 + 8);
    v76 = v125;
    v75(v73, v125);
    v77 = sub_26D22CDF4();
    v75(v74, v76);
    [v69 setExpirationDate_];

    v78 = sub_26D22E3B4();
    v79 = [objc_opt_self() iconForApplicationIdentifier_];

    [v69 setIcon_];
    sub_26D1B2060();
    v80 = v108;
    v81 = v107;
    v82 = v109;
    (*(v108 + 104))(v107, *MEMORY[0x277D851C8], v109);
    v125 = sub_26D22E644();
    (*(v80 + 8))(v81, v82);
    v83 = swift_allocObject();
    *(v83 + 16) = v69;
    v131 = sub_26D1B20E4;
    v132 = v83;
    aBlock = MEMORY[0x277D85DD0];
    v128 = 1107296256;
    v129 = sub_26D1B1E14;
    v130 = &block_descriptor;
    v84 = _Block_copy(&aBlock);
    v85 = v69;
    v86 = v68;
    v87 = v110;
    sub_26D22CF44();
    v126 = MEMORY[0x277D84F90];
    sub_26D1B2104();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04B8, &unk_26D234120);
    sub_26D1B215C();
    v88 = v96;
    v89 = v57;
    v90 = v99;
    sub_26D22E704();
    v91 = v125;
    MEMORY[0x26D6B6E00](0, v87, v88, v84);
    _Block_release(v84);

    (*(v98 + 8))(v88, v90);
    (*(v111 + 8))(v87, v97);
    v92 = *(v124 + 8);
    v92(v112, v86);
    v92(v89, v86);

    return sub_26D1B1F9C(v30);
  }

  return result;
}

void sub_26D1B1A14(uint64_t a1)
{
  v2 = sub_26D22E3B4();
  v3 = [objc_opt_self() requestWithIdentifier:v2 content:a1 trigger:0];

  v4 = objc_allocWithZone(MEMORY[0x277CE2028]);
  v5 = sub_26D22E3B4();
  v6 = [v4 initWithBundleIdentifier_];

  v8[4] = sub_26D1B1B68;
  v8[5] = 0;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_26D1B1DA8;
  v8[3] = &block_descriptor_227;
  v7 = _Block_copy(v8);
  [v6 addNotificationRequest:v3 withCompletionHandler:v7];
  _Block_release(v7);
}

void sub_26D1B1B68(NSObject *a1)
{
  if (!a1)
  {
    if (qword_2804E0430 != -1)
    {
      swift_once();
    }

    v10 = sub_26D22CF14();
    __swift_project_value_buffer(v10, qword_2804E0438);
    oslog = sub_26D22CEF4();
    v11 = sub_26D22E5E4();
    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26D1AF000, oslog, v11, "TTR request notification posted.", v12, 2u);
      MEMORY[0x26D6B7800](v12, -1, -1);
    }

    goto LABEL_10;
  }

  v2 = a1;
  if (qword_2804E0430 != -1)
  {
    swift_once();
  }

  v3 = sub_26D22CF14();
  __swift_project_value_buffer(v3, qword_2804E0438);
  v4 = a1;
  oslog = sub_26D22CEF4();
  v5 = sub_26D22E5F4();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = a1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_26D1AF000, oslog, v5, "Error posting TTR request notification: %@", v6, 0xCu);
    sub_26D1B1FF8(v7);
    MEMORY[0x26D6B7800](v7, -1, -1);
    MEMORY[0x26D6B7800](v6, -1, -1);

LABEL_10:
    v13 = oslog;

    goto LABEL_12;
  }

  v13 = a1;

LABEL_12:
}

void sub_26D1B1DA8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_26D1B1E14(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
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

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_26D1B1ED8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0490, &qword_26D231F50);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D1B1F48()
{
  result = qword_2804E04A0;
  if (!qword_2804E04A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E04A0);
  }

  return result;
}

uint64_t sub_26D1B1F9C(uint64_t a1)
{
  v2 = type metadata accessor for TapToRadarDraft(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D1B1FF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804E0DB0, &qword_26D231180);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26D1B2060()
{
  result = qword_2804E04A8;
  if (!qword_2804E04A8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2804E04A8);
  }

  return result;
}

uint64_t sub_26D1B20AC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26D1B2104()
{
  result = qword_2804E04B0;
  if (!qword_2804E04B0)
  {
    sub_26D22CF24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E04B0);
  }

  return result;
}

unint64_t sub_26D1B215C()
{
  result = qword_2804E04C0;
  if (!qword_2804E04C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E04B8, &unk_26D234120);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E04C0);
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

void sub_26D1B2290(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v5 = sub_26D22CD64();
  v6 = [v4 initWithData_];

  sub_26D1E774C(v6);
  if (!v2)
  {
    v8 = v7;
    v10 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v11 = v10 == 0x656372756F736572 && v9 == 0xEE00737473696C2DLL;
    if (v11 || (sub_26D22E964() & 1) != 0)
    {
      KeyPath = swift_getKeyPath();
      v13 = v8;
      v14 = sub_26D1BA810(KeyPath, v13);

      sub_26D1B8028(v14);

      sub_26D22D344();

      return;
    }

    sub_26D1B7F48();
    v3 = swift_allocError();
    *v39 = v10;
    *(v39 + 8) = v9;
    *(v39 + 16) = 0;
    *(v39 + 24) = 0;
    swift_willThrow();
  }

  v44 = v3;
  v15 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v16 = sub_26D22CF14();
    __swift_project_value_buffer(v16, qword_2804E06D8);
    sub_26D1B7F9C(v40, v41, v42);
    v17 = sub_26D22CEF4();
    v18 = sub_26D22E5F4();
    sub_26D1B7FB4(v40, v41, v42);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v21 = v40;
      *(v21 + 8) = v41;
      *(v21 + 16) = v42;
      sub_26D1B7F9C(v40, v41, v42);
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_26D1AF000, v17, v18, "Caught provisioning error: %@", v19, 0xCu);
      sub_26D1B1FF8(v20);
      MEMORY[0x26D6B7800](v20, -1, -1);
      MEMORY[0x26D6B7800](v19, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D202564(v40, v41, v42);
    swift_willThrow();
LABEL_20:

    return;
  }

  v44 = v3;
  v23 = v3;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v24 = sub_26D22CF14();
    __swift_project_value_buffer(v24, qword_2804E06D8);
    sub_26D1B7DC0(v40, v41, v42, v43);
    v25 = sub_26D22CEF4();
    v26 = sub_26D22E5F4();
    sub_26D1B7E60(v40, v41, v42, v43);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v29 = v40;
      *(v29 + 8) = v41;
      *(v29 + 16) = v42;
      *(v29 + 24) = v43;
      sub_26D1B7DC0(v40, v41, v42, v43);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_26D1AF000, v25, v26, "Caught XML parser error: %@", v27, 0xCu);
      sub_26D1B1FF8(v28);
      MEMORY[0x26D6B7800](v28, -1, -1);
      MEMORY[0x26D6B7800](v27, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D1B7DC0(v40, v41, v42, v43);
    sub_26D20266C(v40, v41, v42, v43);
    swift_willThrow();
    sub_26D1B7E60(v40, v41, v42, v43);
    goto LABEL_20;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v31 = sub_26D22CF14();
  __swift_project_value_buffer(v31, qword_2804E06D8);
  v32 = v3;
  v33 = sub_26D22CEF4();
  v34 = sub_26D22E5F4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = v3;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_26D1AF000, v33, v34, "Caught error: %@", v35, 0xCu);
    sub_26D1B1FF8(v36);
    MEMORY[0x26D6B7800](v36, -1, -1);
    MEMORY[0x26D6B7800](v35, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B2A4C(uint64_t x8_0@<X8>)
{
  v4 = v3;
  v6 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v7 = sub_26D22CD64();
  v8 = [v6 initWithData_];

  sub_26D1E774C(v8);
  if (!v3)
  {
    v11 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v10 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v12 = v11 == 0x6E657265666E6F63 && v10 == 0xEF6F666E692D6563;
    if (v12 || (v13 = v9, v14 = sub_26D22E964(), v9 = v13, (v14 & 1) != 0))
    {
      v15 = v9;
      sub_26D207990(v15, x8_0);

      return;
    }

    sub_26D1B7F48();
    v4 = swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v10;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    swift_willThrow();
  }

  v45 = v4;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v18 = sub_26D22CF14();
    __swift_project_value_buffer(v18, qword_2804E06D8);
    sub_26D1B7F9C(v41, v42, v43);
    v19 = sub_26D22CEF4();
    v20 = sub_26D22E5F4();
    sub_26D1B7FB4(v41, v42, v43);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v23 = v41;
      *(v23 + 8) = v42;
      *(v23 + 16) = v43;
      sub_26D1B7F9C(v41, v42, v43);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_26D1AF000, v19, v20, "Caught provisioning error: %@", v21, 0xCu);
      sub_26D1B1FF8(v22);
      MEMORY[0x26D6B7800](v22, -1, -1);
      MEMORY[0x26D6B7800](v21, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D202564(v41, v42, v43);
    swift_willThrow();
LABEL_21:

    return;
  }

  v45 = v4;
  v25 = v4;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v26 = sub_26D22CF14();
    __swift_project_value_buffer(v26, qword_2804E06D8);
    sub_26D1B7DC0(v41, v42, v43, v44);
    v27 = sub_26D22CEF4();
    v28 = sub_26D22E5F4();
    sub_26D1B7E60(v41, v42, v43, v44);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v31 = v41;
      *(v31 + 8) = v42;
      *(v31 + 16) = v43;
      *(v31 + 24) = v44;
      sub_26D1B7DC0(v41, v42, v43, v44);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_26D1AF000, v27, v28, "Caught XML parser error: %@", v29, 0xCu);
      sub_26D1B1FF8(v30);
      MEMORY[0x26D6B7800](v30, -1, -1);
      MEMORY[0x26D6B7800](v29, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D1B7DC0(v41, v42, v43, v44);
    sub_26D20266C(v41, v42, v43, v44);
    swift_willThrow();
    sub_26D1B7E60(v41, v42, v43, v44);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v33 = sub_26D22CF14();
  __swift_project_value_buffer(v33, qword_2804E06D8);
  v34 = v4;
  v35 = sub_26D22CEF4();
  v36 = sub_26D22E5F4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    v39 = v4;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    _os_log_impl(&dword_26D1AF000, v35, v36, "Caught error: %@", v37, 0xCu);
    sub_26D1B1FF8(v38);
    MEMORY[0x26D6B7800](v38, -1, -1);
    MEMORY[0x26D6B7800](v37, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B3154(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v4 = sub_26D22CD64();
  v5 = [v3 initWithData_];

  sub_26D1E774C(v5);
  if (!v2)
  {
    v7 = v6;
    sub_26D1B7198();

    return;
  }

  v36 = v2;
  v8 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v9 = sub_26D22CF14();
    __swift_project_value_buffer(v9, qword_2804E06D8);
    sub_26D1B7F9C(v32, v33, v34);
    v10 = sub_26D22CEF4();
    v11 = sub_26D22E5F4();
    sub_26D1B7FB4(v32, v33, v34);
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v14 = v32;
      *(v14 + 8) = v33;
      *(v14 + 16) = v34;
      sub_26D1B7F9C(v32, v33, v34);
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v15;
      *v13 = v15;
      _os_log_impl(&dword_26D1AF000, v10, v11, "Caught provisioning error: %@", v12, 0xCu);
      sub_26D1B1FF8(v13);
      MEMORY[0x26D6B7800](v13, -1, -1);
      MEMORY[0x26D6B7800](v12, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D202564(v32, v33, v34);
    swift_willThrow();
LABEL_15:

    return;
  }

  v36 = v2;
  v16 = v2;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v17 = sub_26D22CF14();
    __swift_project_value_buffer(v17, qword_2804E06D8);
    sub_26D1B7DC0(v32, v33, v34, v35);
    v18 = sub_26D22CEF4();
    v19 = sub_26D22E5F4();
    sub_26D1B7E60(v32, v33, v34, v35);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v22 = v32;
      *(v22 + 8) = v33;
      *(v22 + 16) = v34;
      *(v22 + 24) = v35;
      sub_26D1B7DC0(v32, v33, v34, v35);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26D1AF000, v18, v19, "Caught XML parser error: %@", v20, 0xCu);
      sub_26D1B1FF8(v21);
      MEMORY[0x26D6B7800](v21, -1, -1);
      MEMORY[0x26D6B7800](v20, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D1B7DC0(v32, v33, v34, v35);
    sub_26D20266C(v32, v33, v34, v35);
    swift_willThrow();
    sub_26D1B7E60(v32, v33, v34, v35);
    goto LABEL_15;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v24 = sub_26D22CF14();
  __swift_project_value_buffer(v24, qword_2804E06D8);
  v25 = v2;
  v26 = sub_26D22CEF4();
  v27 = sub_26D22E5F4();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    *v28 = 138412290;
    v30 = v2;
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v28 + 4) = v31;
    *v29 = v31;
    _os_log_impl(&dword_26D1AF000, v26, v27, "Caught error: %@", v28, 0xCu);
    sub_26D1B1FF8(v29);
    MEMORY[0x26D6B7800](v29, -1, -1);
    MEMORY[0x26D6B7800](v28, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B37B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v5 = sub_26D22CD64();
  v6 = [v4 initWithData_];

  sub_26D1E774C(v6);
  if (!v2)
  {
    v9 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v8 = *&v7[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v10 = v9 == 0x656B6F7665526D69 && v8 == 0xE800000000000000;
    if (v10 || (v11 = v7, v12 = sub_26D22E964(), v7 = v11, (v12 & 1) != 0))
    {
      v13 = v7;
      sub_26D1FD328(v13);

      return;
    }

    sub_26D1B7F48();
    v3 = swift_allocError();
    *v14 = v9;
    *(v14 + 8) = v8;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    swift_willThrow();
  }

  v43 = v3;
  v15 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v16 = sub_26D22CF14();
    __swift_project_value_buffer(v16, qword_2804E06D8);
    sub_26D1B7F9C(v39, v40, v41);
    v17 = sub_26D22CEF4();
    v18 = sub_26D22E5F4();
    sub_26D1B7FB4(v39, v40, v41);
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v21 = v39;
      *(v21 + 8) = v40;
      *(v21 + 16) = v41;
      sub_26D1B7F9C(v39, v40, v41);
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_26D1AF000, v17, v18, "Caught provisioning error: %@", v19, 0xCu);
      sub_26D1B1FF8(v20);
      MEMORY[0x26D6B7800](v20, -1, -1);
      MEMORY[0x26D6B7800](v19, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D202564(v39, v40, v41);
    swift_willThrow();
LABEL_21:

    return;
  }

  v43 = v3;
  v23 = v3;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v24 = sub_26D22CF14();
    __swift_project_value_buffer(v24, qword_2804E06D8);
    sub_26D1B7DC0(v39, v40, v41, v42);
    v25 = sub_26D22CEF4();
    v26 = sub_26D22E5F4();
    sub_26D1B7E60(v39, v40, v41, v42);
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *v27 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v29 = v39;
      *(v29 + 8) = v40;
      *(v29 + 16) = v41;
      *(v29 + 24) = v42;
      sub_26D1B7DC0(v39, v40, v41, v42);
      v30 = _swift_stdlib_bridgeErrorToNSError();
      *(v27 + 4) = v30;
      *v28 = v30;
      _os_log_impl(&dword_26D1AF000, v25, v26, "Caught XML parser error: %@", v27, 0xCu);
      sub_26D1B1FF8(v28);
      MEMORY[0x26D6B7800](v28, -1, -1);
      MEMORY[0x26D6B7800](v27, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D1B7DC0(v39, v40, v41, v42);
    sub_26D20266C(v39, v40, v41, v42);
    swift_willThrow();
    sub_26D1B7E60(v39, v40, v41, v42);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v31 = sub_26D22CF14();
  __swift_project_value_buffer(v31, qword_2804E06D8);
  v32 = v3;
  v33 = sub_26D22CEF4();
  v34 = sub_26D22E5F4();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *v35 = 138412290;
    v37 = v3;
    v38 = _swift_stdlib_bridgeErrorToNSError();
    *(v35 + 4) = v38;
    *v36 = v38;
    _os_log_impl(&dword_26D1AF000, v33, v34, "Caught error: %@", v35, 0xCu);
    sub_26D1B1FF8(v36);
    MEMORY[0x26D6B7800](v36, -1, -1);
    MEMORY[0x26D6B7800](v35, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B3EB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_26D22D304();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v6 = sub_26D22CD64();
  v7 = [v5 initWithData_];

  sub_26D1E774C(v7);
  if (!v2)
  {
    v9 = v8;
    v11 = *&v8[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v10 = *&v8[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v12 = v11 == 0x6C65766E65736372 && v10 == 0xEB0000000065706FLL;
    if (v12 || (sub_26D22E964() & 1) != 0)
    {
      KeyPath = swift_getKeyPath();
      v14 = v9;
      v15 = sub_26D1BAD70(KeyPath, v14);

      sub_26D1B7BC8(v15);

      sub_26D22D1F4();

      return;
    }

    sub_26D1B7F48();
    v3 = swift_allocError();
    *v40 = v11;
    *(v40 + 8) = v10;
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    swift_willThrow();
  }

  v45 = v3;
  v16 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v17 = sub_26D22CF14();
    __swift_project_value_buffer(v17, qword_2804E06D8);
    sub_26D1B7F9C(v41, v42, v43);
    v18 = sub_26D22CEF4();
    v19 = sub_26D22E5F4();
    sub_26D1B7FB4(v41, v42, v43);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v22 = v41;
      *(v22 + 8) = v42;
      *(v22 + 16) = v43;
      sub_26D1B7F9C(v41, v42, v43);
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_26D1AF000, v18, v19, "Caught provisioning error: %@", v20, 0xCu);
      sub_26D1B1FF8(v21);
      MEMORY[0x26D6B7800](v21, -1, -1);
      MEMORY[0x26D6B7800](v20, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D202564(v41, v42, v43);
    swift_willThrow();
LABEL_21:

    return;
  }

  v45 = v3;
  v24 = v3;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v25 = sub_26D22CF14();
    __swift_project_value_buffer(v25, qword_2804E06D8);
    sub_26D1B7DC0(v41, v42, v43, v44);
    v26 = sub_26D22CEF4();
    v27 = sub_26D22E5F4();
    sub_26D1B7E60(v41, v42, v43, v44);
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      *v28 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v30 = v41;
      *(v30 + 8) = v42;
      *(v30 + 16) = v43;
      *(v30 + 24) = v44;
      sub_26D1B7DC0(v41, v42, v43, v44);
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v28 + 4) = v31;
      *v29 = v31;
      _os_log_impl(&dword_26D1AF000, v26, v27, "Caught XML parser error: %@", v28, 0xCu);
      sub_26D1B1FF8(v29);
      MEMORY[0x26D6B7800](v29, -1, -1);
      MEMORY[0x26D6B7800](v28, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D1B7DC0(v41, v42, v43, v44);
    sub_26D20266C(v41, v42, v43, v44);
    swift_willThrow();
    sub_26D1B7E60(v41, v42, v43, v44);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v32 = sub_26D22CF14();
  __swift_project_value_buffer(v32, qword_2804E06D8);
  v33 = v3;
  v34 = sub_26D22CEF4();
  v35 = sub_26D22E5F4();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    *v36 = 138412290;
    v38 = v3;
    v39 = _swift_stdlib_bridgeErrorToNSError();
    *(v36 + 4) = v39;
    *v37 = v39;
    _os_log_impl(&dword_26D1AF000, v34, v35, "Caught error: %@", v36, 0xCu);
    sub_26D1B1FF8(v37);
    MEMORY[0x26D6B7800](v37, -1, -1);
    MEMORY[0x26D6B7800](v36, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B4668(uint64_t x8_0@<X8>)
{
  v4 = v3;
  v6 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v7 = sub_26D22CD64();
  v8 = [v6 initWithData_];

  sub_26D1E774C(v8);
  if (!v3)
  {
    v11 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v10 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v12 = v11 == 1701603686 && v10 == 0xE400000000000000;
    if (v12 || (v13 = v9, v14 = sub_26D22E964(), v9 = v13, (v14 & 1) != 0))
    {
      v15 = v9;
      sub_26D1BF4B0(v15, x8_0);

      return;
    }

    sub_26D1B7F48();
    v4 = swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v10;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    swift_willThrow();
  }

  v45 = v4;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v18 = sub_26D22CF14();
    __swift_project_value_buffer(v18, qword_2804E06D8);
    sub_26D1B7F9C(v41, v42, v43);
    v19 = sub_26D22CEF4();
    v20 = sub_26D22E5F4();
    sub_26D1B7FB4(v41, v42, v43);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v23 = v41;
      *(v23 + 8) = v42;
      *(v23 + 16) = v43;
      sub_26D1B7F9C(v41, v42, v43);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_26D1AF000, v19, v20, "Caught provisioning error: %@", v21, 0xCu);
      sub_26D1B1FF8(v22);
      MEMORY[0x26D6B7800](v22, -1, -1);
      MEMORY[0x26D6B7800](v21, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D202564(v41, v42, v43);
    swift_willThrow();
LABEL_21:

    return;
  }

  v45 = v4;
  v25 = v4;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v26 = sub_26D22CF14();
    __swift_project_value_buffer(v26, qword_2804E06D8);
    sub_26D1B7DC0(v41, v42, v43, v44);
    v27 = sub_26D22CEF4();
    v28 = sub_26D22E5F4();
    sub_26D1B7E60(v41, v42, v43, v44);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v31 = v41;
      *(v31 + 8) = v42;
      *(v31 + 16) = v43;
      *(v31 + 24) = v44;
      sub_26D1B7DC0(v41, v42, v43, v44);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_26D1AF000, v27, v28, "Caught XML parser error: %@", v29, 0xCu);
      sub_26D1B1FF8(v30);
      MEMORY[0x26D6B7800](v30, -1, -1);
      MEMORY[0x26D6B7800](v29, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D1B7DC0(v41, v42, v43, v44);
    sub_26D20266C(v41, v42, v43, v44);
    swift_willThrow();
    sub_26D1B7E60(v41, v42, v43, v44);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v33 = sub_26D22CF14();
  __swift_project_value_buffer(v33, qword_2804E06D8);
  v34 = v4;
  v35 = sub_26D22CEF4();
  v36 = sub_26D22E5F4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    v39 = v4;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    _os_log_impl(&dword_26D1AF000, v35, v36, "Caught error: %@", v37, 0xCu);
    sub_26D1B1FF8(v38);
    MEMORY[0x26D6B7800](v38, -1, -1);
    MEMORY[0x26D6B7800](v37, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B4D68(uint64_t x8_0@<X8>)
{
  v4 = v3;
  v6 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v7 = sub_26D22CD64();
  v8 = [v6 initWithData_];

  sub_26D1E774C(v8);
  if (!v3)
  {
    v11 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v10 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v12 = v11 == 0x736F706D6F437369 && v10 == 0xEB00000000676E69;
    if (v12 || (v13 = v9, v14 = sub_26D22E964(), v9 = v13, (v14 & 1) != 0))
    {
      v15 = v9;
      sub_26D1F1A40(v15, x8_0);

      return;
    }

    sub_26D1B7F48();
    v4 = swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v10;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    swift_willThrow();
  }

  v45 = v4;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v18 = sub_26D22CF14();
    __swift_project_value_buffer(v18, qword_2804E06D8);
    sub_26D1B7F9C(v41, v42, v43);
    v19 = sub_26D22CEF4();
    v20 = sub_26D22E5F4();
    sub_26D1B7FB4(v41, v42, v43);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v23 = v41;
      *(v23 + 8) = v42;
      *(v23 + 16) = v43;
      sub_26D1B7F9C(v41, v42, v43);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_26D1AF000, v19, v20, "Caught provisioning error: %@", v21, 0xCu);
      sub_26D1B1FF8(v22);
      MEMORY[0x26D6B7800](v22, -1, -1);
      MEMORY[0x26D6B7800](v21, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D202564(v41, v42, v43);
    swift_willThrow();
LABEL_21:

    return;
  }

  v45 = v4;
  v25 = v4;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v26 = sub_26D22CF14();
    __swift_project_value_buffer(v26, qword_2804E06D8);
    sub_26D1B7DC0(v41, v42, v43, v44);
    v27 = sub_26D22CEF4();
    v28 = sub_26D22E5F4();
    sub_26D1B7E60(v41, v42, v43, v44);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v31 = v41;
      *(v31 + 8) = v42;
      *(v31 + 16) = v43;
      *(v31 + 24) = v44;
      sub_26D1B7DC0(v41, v42, v43, v44);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_26D1AF000, v27, v28, "Caught XML parser error: %@", v29, 0xCu);
      sub_26D1B1FF8(v30);
      MEMORY[0x26D6B7800](v30, -1, -1);
      MEMORY[0x26D6B7800](v29, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D1B7DC0(v41, v42, v43, v44);
    sub_26D20266C(v41, v42, v43, v44);
    swift_willThrow();
    sub_26D1B7E60(v41, v42, v43, v44);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v33 = sub_26D22CF14();
  __swift_project_value_buffer(v33, qword_2804E06D8);
  v34 = v4;
  v35 = sub_26D22CEF4();
  v36 = sub_26D22E5F4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    v39 = v4;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    _os_log_impl(&dword_26D1AF000, v35, v36, "Caught error: %@", v37, 0xCu);
    sub_26D1B1FF8(v38);
    MEMORY[0x26D6B7800](v38, -1, -1);
    MEMORY[0x26D6B7800](v37, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B546C(uint64_t x8_0@<X8>)
{
  v4 = v3;
  v6 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v7 = sub_26D22CD64();
  v8 = [v6 initWithData_];

  sub_26D1E774C(v8);
  if (!v3)
  {
    v11 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v10 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v12 = v11 == 1852075369 && v10 == 0xE400000000000000;
    if (v12 || (v13 = v9, v14 = sub_26D22E964(), v9 = v13, (v14 & 1) != 0))
    {
      v15 = v9;
      sub_26D1F06F0(v15, x8_0);

      return;
    }

    sub_26D1B7F48();
    v4 = swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v10;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    swift_willThrow();
  }

  v45 = v4;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v18 = sub_26D22CF14();
    __swift_project_value_buffer(v18, qword_2804E06D8);
    sub_26D1B7F9C(v41, v42, v43);
    v19 = sub_26D22CEF4();
    v20 = sub_26D22E5F4();
    sub_26D1B7FB4(v41, v42, v43);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v23 = v41;
      *(v23 + 8) = v42;
      *(v23 + 16) = v43;
      sub_26D1B7F9C(v41, v42, v43);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_26D1AF000, v19, v20, "Caught provisioning error: %@", v21, 0xCu);
      sub_26D1B1FF8(v22);
      MEMORY[0x26D6B7800](v22, -1, -1);
      MEMORY[0x26D6B7800](v21, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D202564(v41, v42, v43);
    swift_willThrow();
LABEL_21:

    return;
  }

  v45 = v4;
  v25 = v4;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v26 = sub_26D22CF14();
    __swift_project_value_buffer(v26, qword_2804E06D8);
    sub_26D1B7DC0(v41, v42, v43, v44);
    v27 = sub_26D22CEF4();
    v28 = sub_26D22E5F4();
    sub_26D1B7E60(v41, v42, v43, v44);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v31 = v41;
      *(v31 + 8) = v42;
      *(v31 + 16) = v43;
      *(v31 + 24) = v44;
      sub_26D1B7DC0(v41, v42, v43, v44);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_26D1AF000, v27, v28, "Caught XML parser error: %@", v29, 0xCu);
      sub_26D1B1FF8(v30);
      MEMORY[0x26D6B7800](v30, -1, -1);
      MEMORY[0x26D6B7800](v29, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D1B7DC0(v41, v42, v43, v44);
    sub_26D20266C(v41, v42, v43, v44);
    swift_willThrow();
    sub_26D1B7E60(v41, v42, v43, v44);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v33 = sub_26D22CF14();
  __swift_project_value_buffer(v33, qword_2804E06D8);
  v34 = v4;
  v35 = sub_26D22CEF4();
  v36 = sub_26D22E5F4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    v39 = v4;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    _os_log_impl(&dword_26D1AF000, v35, v36, "Caught error: %@", v37, 0xCu);
    sub_26D1B1FF8(v38);
    MEMORY[0x26D6B7800](v38, -1, -1);
    MEMORY[0x26D6B7800](v37, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B5B6C(uint64_t x8_0@<X8>)
{
  v4 = v3;
  v6 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v7 = sub_26D22CD64();
  v8 = [v6 initWithData_];

  sub_26D1E774C(v8);
  if (!v3)
  {
    v11 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v10 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v12 = v11 == 0xD000000000000011 && 0x800000026D23AEB0 == v10;
    if (v12 || (v13 = v9, v14 = sub_26D22E964(), v9 = v13, (v14 & 1) != 0))
    {
      v15 = v9;
      sub_26D1C24F0(v15, x8_0);

      return;
    }

    sub_26D1B7F48();
    v4 = swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v10;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    swift_willThrow();
  }

  v45 = v4;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v18 = sub_26D22CF14();
    __swift_project_value_buffer(v18, qword_2804E06D8);
    sub_26D1B7F9C(v41, v42, v43);
    v19 = sub_26D22CEF4();
    v20 = sub_26D22E5F4();
    sub_26D1B7FB4(v41, v42, v43);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v23 = v41;
      *(v23 + 8) = v42;
      *(v23 + 16) = v43;
      sub_26D1B7F9C(v41, v42, v43);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_26D1AF000, v19, v20, "Caught provisioning error: %@", v21, 0xCu);
      sub_26D1B1FF8(v22);
      MEMORY[0x26D6B7800](v22, -1, -1);
      MEMORY[0x26D6B7800](v21, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D202564(v41, v42, v43);
    swift_willThrow();
LABEL_21:

    return;
  }

  v45 = v4;
  v25 = v4;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v26 = sub_26D22CF14();
    __swift_project_value_buffer(v26, qword_2804E06D8);
    sub_26D1B7DC0(v41, v42, v43, v44);
    v27 = sub_26D22CEF4();
    v28 = sub_26D22E5F4();
    sub_26D1B7E60(v41, v42, v43, v44);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v31 = v41;
      *(v31 + 8) = v42;
      *(v31 + 16) = v43;
      *(v31 + 24) = v44;
      sub_26D1B7DC0(v41, v42, v43, v44);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_26D1AF000, v27, v28, "Caught XML parser error: %@", v29, 0xCu);
      sub_26D1B1FF8(v30);
      MEMORY[0x26D6B7800](v30, -1, -1);
      MEMORY[0x26D6B7800](v29, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D1B7DC0(v41, v42, v43, v44);
    sub_26D20266C(v41, v42, v43, v44);
    swift_willThrow();
    sub_26D1B7E60(v41, v42, v43, v44);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v33 = sub_26D22CF14();
  __swift_project_value_buffer(v33, qword_2804E06D8);
  v34 = v4;
  v35 = sub_26D22CEF4();
  v36 = sub_26D22E5F4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    v39 = v4;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    _os_log_impl(&dword_26D1AF000, v35, v36, "Caught error: %@", v37, 0xCu);
    sub_26D1B1FF8(v38);
    MEMORY[0x26D6B7800](v38, -1, -1);
    MEMORY[0x26D6B7800](v37, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B6274(uint64_t x8_0@<X8>)
{
  v4 = v3;
  v6 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v7 = sub_26D22CD64();
  v8 = [v6 initWithData_];

  sub_26D1E774C(v8);
  if (!v3)
  {
    v11 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v10 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v12 = v11 == 0xD00000000000001BLL && 0x800000026D23AE90 == v10;
    if (v12 || (v13 = v9, v14 = sub_26D22E964(), v9 = v13, (v14 & 1) != 0))
    {
      v15 = v9;
      sub_26D1BC0A0(v15, x8_0);

      return;
    }

    sub_26D1B7F48();
    v4 = swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v10;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    swift_willThrow();
  }

  v45 = v4;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v18 = sub_26D22CF14();
    __swift_project_value_buffer(v18, qword_2804E06D8);
    sub_26D1B7F9C(v41, v42, v43);
    v19 = sub_26D22CEF4();
    v20 = sub_26D22E5F4();
    sub_26D1B7FB4(v41, v42, v43);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v23 = v41;
      *(v23 + 8) = v42;
      *(v23 + 16) = v43;
      sub_26D1B7F9C(v41, v42, v43);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_26D1AF000, v19, v20, "Caught provisioning error: %@", v21, 0xCu);
      sub_26D1B1FF8(v22);
      MEMORY[0x26D6B7800](v22, -1, -1);
      MEMORY[0x26D6B7800](v21, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D202564(v41, v42, v43);
    swift_willThrow();
LABEL_21:

    return;
  }

  v45 = v4;
  v25 = v4;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v26 = sub_26D22CF14();
    __swift_project_value_buffer(v26, qword_2804E06D8);
    sub_26D1B7DC0(v41, v42, v43, v44);
    v27 = sub_26D22CEF4();
    v28 = sub_26D22E5F4();
    sub_26D1B7E60(v41, v42, v43, v44);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v31 = v41;
      *(v31 + 8) = v42;
      *(v31 + 16) = v43;
      *(v31 + 24) = v44;
      sub_26D1B7DC0(v41, v42, v43, v44);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_26D1AF000, v27, v28, "Caught XML parser error: %@", v29, 0xCu);
      sub_26D1B1FF8(v30);
      MEMORY[0x26D6B7800](v30, -1, -1);
      MEMORY[0x26D6B7800](v29, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D1B7DC0(v41, v42, v43, v44);
    sub_26D20266C(v41, v42, v43, v44);
    swift_willThrow();
    sub_26D1B7E60(v41, v42, v43, v44);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v33 = sub_26D22CF14();
  __swift_project_value_buffer(v33, qword_2804E06D8);
  v34 = v4;
  v35 = sub_26D22CEF4();
  v36 = sub_26D22E5F4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    v39 = v4;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    _os_log_impl(&dword_26D1AF000, v35, v36, "Caught error: %@", v37, 0xCu);
    sub_26D1B1FF8(v38);
    MEMORY[0x26D6B7800](v38, -1, -1);
    MEMORY[0x26D6B7800](v37, -1, -1);
  }

  swift_willThrow();
}

void sub_26D1B697C(uint64_t x8_0@<X8>)
{
  v4 = v3;
  v6 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  v7 = sub_26D22CD64();
  v8 = [v6 initWithData_];

  sub_26D1E774C(v8);
  if (!v3)
  {
    v11 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v10 = *&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    v12 = v11 == 0xD000000000000013 && 0x800000026D23AE70 == v10;
    if (v12 || (v13 = v9, v14 = sub_26D22E964(), v9 = v13, (v14 & 1) != 0))
    {
      v15 = v9;
      sub_26D1E2A18(v15, x8_0);

      return;
    }

    sub_26D1B7F48();
    v4 = swift_allocError();
    *v16 = v11;
    *(v16 + 8) = v10;
    *(v16 + 16) = 0;
    *(v16 + 24) = 0;
    swift_willThrow();
  }

  v45 = v4;
  v17 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v18 = sub_26D22CF14();
    __swift_project_value_buffer(v18, qword_2804E06D8);
    sub_26D1B7F9C(v41, v42, v43);
    v19 = sub_26D22CEF4();
    v20 = sub_26D22E5F4();
    sub_26D1B7FB4(v41, v42, v43);
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *v21 = 138412290;
      sub_26D1B7FCC();
      swift_allocError();
      *v23 = v41;
      *(v23 + 8) = v42;
      *(v23 + 16) = v43;
      sub_26D1B7F9C(v41, v42, v43);
      v24 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 4) = v24;
      *v22 = v24;
      _os_log_impl(&dword_26D1AF000, v19, v20, "Caught provisioning error: %@", v21, 0xCu);
      sub_26D1B1FF8(v22);
      MEMORY[0x26D6B7800](v22, -1, -1);
      MEMORY[0x26D6B7800](v21, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D202564(v41, v42, v43);
    swift_willThrow();
LABEL_21:

    return;
  }

  v45 = v4;
  v25 = v4;
  if (swift_dynamicCast())
  {

    if (qword_2804E0450 != -1)
    {
      swift_once();
    }

    v26 = sub_26D22CF14();
    __swift_project_value_buffer(v26, qword_2804E06D8);
    sub_26D1B7DC0(v41, v42, v43, v44);
    v27 = sub_26D22CEF4();
    v28 = sub_26D22E5F4();
    sub_26D1B7E60(v41, v42, v43, v44);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      sub_26D1B7F48();
      swift_allocError();
      *v31 = v41;
      *(v31 + 8) = v42;
      *(v31 + 16) = v43;
      *(v31 + 24) = v44;
      sub_26D1B7DC0(v41, v42, v43, v44);
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v30 = v32;
      _os_log_impl(&dword_26D1AF000, v27, v28, "Caught XML parser error: %@", v29, 0xCu);
      sub_26D1B1FF8(v30);
      MEMORY[0x26D6B7800](v30, -1, -1);
      MEMORY[0x26D6B7800](v29, -1, -1);
    }

    sub_26D22E2E4();
    sub_26D1B7F00(&qword_2804E04E0, MEMORY[0x277CF30A0], MEMORY[0x277CF30A8]);
    swift_allocError();
    sub_26D1B7DC0(v41, v42, v43, v44);
    sub_26D20266C(v41, v42, v43, v44);
    swift_willThrow();
    sub_26D1B7E60(v41, v42, v43, v44);
    goto LABEL_21;
  }

  if (qword_2804E0450 != -1)
  {
    swift_once();
  }

  v33 = sub_26D22CF14();
  __swift_project_value_buffer(v33, qword_2804E06D8);
  v34 = v4;
  v35 = sub_26D22CEF4();
  v36 = sub_26D22E5F4();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    *v37 = 138412290;
    v39 = v4;
    v40 = _swift_stdlib_bridgeErrorToNSError();
    *(v37 + 4) = v40;
    *v38 = v40;
    _os_log_impl(&dword_26D1AF000, v35, v36, "Caught error: %@", v37, 0xCu);
    sub_26D1B1FF8(v38);
    MEMORY[0x26D6B7800](v38, -1, -1);
    MEMORY[0x26D6B7800](v37, -1, -1);
  }

  swift_willThrow();
}

uint64_t getEnumTagSinglePayload for SIPResourceListsUnpacker(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for SIPResourceListsUnpacker(_WORD *result, int a2, int a3)
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

void sub_26D1B7198()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04F8, &qword_26D22F4C8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v17 - v3;
  v6 = *&v0[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
  v5 = *&v0[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
  v7 = v6 == 0xD000000000000014 && 0x800000026D23AED0 == v5;
  if (!v7 && (sub_26D22E964() & 1) == 0)
  {
    sub_26D1B7F48();
    swift_allocError();
    *v13 = v6;
    *(v13 + 8) = v5;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    swift_willThrow();

    return;
  }

  KeyPath = swift_getKeyPath();
  v9 = v0;
  v10 = sub_26D1BAAC8(KeyPath, v9);

  v11 = sub_26D1DE894(1, v10);

  if (v1)
  {

    return;
  }

  if (*(*&v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes] + 16))
  {

    sub_26D1BDEEC(25705, 0xE200000000000000);
    if (v12)
    {

      if (v11)
      {
        sub_26D20431C(v11, v4);
        v16 = sub_26D22D4E4();
        (*(*(v16 - 8) + 56))(v4, 0, 1, v16);
      }

      else
      {
        v15 = sub_26D22D4E4();
        (*(*(v15 - 8) + 56))(v4, 1, 1, v15);
      }

      sub_26D22D4C4();
      goto LABEL_17;
    }
  }

  sub_26D1B7F48();
  swift_allocError();
  *v14 = xmmword_26D22F3D0;
  *(v14 + 16) = 0;
  *(v14 + 24) = 2;
  swift_willThrow();
LABEL_17:
}

void sub_26D1B7480()
{
  v3 = *&v0[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
  v2 = *&v0[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
  v4 = v3 == 0x65736E6F70736572 && v2 == 0xE800000000000000;
  if (v4 || (sub_26D22E964() & 1) != 0)
  {
    KeyPath = swift_getKeyPath();
    v6 = v0;
    v7 = sub_26D1BAAF0(KeyPath, v6);

    v8 = sub_26D1E524C(v7);
    if (v1)
    {
    }

    else
    {
      v9 = v8;

      if (v9)
      {
        v10 = &v9[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
        swift_beginAccess();
        v11 = v10[1];
        if (v11)
        {
          v12 = *v10;

          sub_26D1BA284(v12, v11);

          sub_26D22D4D4();
        }

        else
        {
          sub_26D1B7F48();
          swift_allocError();
          v15 = MEMORY[0x277D83B88];
          *(v16 + 8) = 0;
          *(v16 + 16) = 0;
          *v16 = v15;
          *(v16 + 24) = 5;
          swift_willThrow();
        }
      }

      else
      {
        sub_26D1B7F48();
        swift_allocError();
        *v14 = xmmword_26D22F3E0;
        *(v14 + 16) = 0;
        *(v14 + 24) = 1;
        swift_willThrow();
      }
    }
  }

  else
  {
    sub_26D1B7F48();
    swift_allocError();
    *v13 = v3;
    *(v13 + 8) = v2;
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    swift_willThrow();
  }
}

void sub_26D1B76D8(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v5 = a2(a1);
  if (!v3)
  {
    if (v5)
    {
      v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v6 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v8 = v7 == 0x736F703A6C6D67 && v6 == 0xE700000000000000;
      if (v8 || (v9 = v5, v10 = sub_26D22E964(), v5 = v9, (v10 & 1) != 0))
      {
        sub_26D1E85E8(v5, a3);
      }

      else
      {
        sub_26D1B7F48();
        swift_allocError();
        *v12 = v7;
        *(v12 + 8) = v6;
        *(v12 + 16) = 0;
        *(v12 + 24) = 0;
        swift_willThrow();
      }
    }

    else
    {
      sub_26D1B7F48();
      swift_allocError();
      *v11 = xmmword_26D22F3F0;
      *(v11 + 16) = 0;
      *(v11 + 24) = 1;
      swift_willThrow();
    }
  }
}

void sub_26D1B7814(uint64_t a1)
{
  v3 = sub_26D22E1E4();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_26D1E52EC(a1);
  if (!v1)
  {
    if (v6)
    {
      v8 = *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v7 = *&v6[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v9 = v8 == 0xD000000000000010 && 0x800000026D23ABA0 == v7;
      if (v9 || (v10 = v6, v11 = sub_26D22E964(), v6 = v10, (v11 & 1) != 0))
      {
        v12 = v6;
        sub_26D1E8C04(v12, v5);
        sub_26D22E1F4();
      }

      else
      {
        sub_26D1B7F48();
        swift_allocError();
        *v14 = v8;
        *(v14 + 8) = v7;
        *(v14 + 16) = 0;
        *(v14 + 24) = 0;
        swift_willThrow();
      }
    }

    else
    {
      sub_26D1B7F48();
      swift_allocError();
      *v13 = 0xD000000000000010;
      *(v13 + 8) = 0x800000026D23ABA0;
      *(v13 + 16) = 0;
      *(v13 + 24) = 1;
      swift_willThrow();
    }
  }
}

void sub_26D1B79D0(uint64_t a1)
{
  v3 = sub_26D22E244();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_26D1E52BC(a1);
  if (!v1)
  {
    if (v4)
    {
      v5 = v4;
      v7 = *&v4[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v6 = *&v4[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v8 = v7 == 0x72706F65673A7067 && v6 == 0xEA00000000007669;
      if (v8 || (sub_26D22E964() & 1) != 0)
      {
        KeyPath = swift_getKeyPath();
        v10 = v5;
        v11 = sub_26D1BAC80(KeyPath, v10);

        sub_26D1B7814(v11);

        sub_26D22E254();
      }

      else
      {
        sub_26D1B7F48();
        swift_allocError();
        *v13 = v7;
        *(v13 + 8) = v6;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        swift_willThrow();
      }
    }

    else
    {
      sub_26D1B7F48();
      swift_allocError();
      *v12 = xmmword_26D22F400;
      *(v12 + 16) = 0;
      *(v12 + 24) = 1;
      swift_willThrow();
    }
  }
}

void sub_26D1B7BC8(uint64_t a1)
{
  v3 = sub_26D22E264();
  MEMORY[0x28223BE20](v3 - 8);
  v4 = sub_26D1E5284(a1);
  if (!v1)
  {
    if (v4)
    {
      v5 = v4;
      v7 = *&v4[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v6 = *&v4[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v8 = v7 == 0x6C68737570736372 && v6 == 0xEF6E6F697461636FLL;
      if (v8 || (sub_26D22E964() & 1) != 0)
      {
        KeyPath = swift_getKeyPath();
        v10 = v5;
        v11 = sub_26D1BAD48(KeyPath, v10);

        sub_26D1B79D0(v11);

        sub_26D22D2F4();
      }

      else
      {
        sub_26D1B7F48();
        swift_allocError();
        *v13 = v7;
        *(v13 + 8) = v6;
        *(v13 + 16) = 0;
        *(v13 + 24) = 0;
        swift_willThrow();
      }
    }

    else
    {
      sub_26D1B7F48();
      swift_allocError();
      *v12 = xmmword_26D22F410;
      *(v12 + 16) = 0;
      *(v12 + 24) = 1;
      swift_willThrow();
    }
  }
}

id sub_26D1B7DC0(id result, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
LABEL_5:
  }

  if (a4 <= 5u)
  {
    if (a4 != 3 && a4 != 4)
    {
      return result;
    }

    goto LABEL_5;
  }

  if (a4 != 6)
  {
    if (a4 != 7)
    {
      return result;
    }

    result = a3;
  }

  return result;
}

void sub_26D1B7E60(void *a1, uint64_t a2, void *a3, unsigned __int8 a4)
{
  if (a4 <= 2u)
  {
LABEL_5:

    return;
  }

  if (a4 <= 5u)
  {
    if (a4 != 3 && a4 != 4)
    {
      return;
    }

    goto LABEL_5;
  }

  if (a4 != 6)
  {
    if (a4 != 7)
    {
      return;
    }

    a1 = a3;
  }
}

uint64_t sub_26D1B7F00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26D1B7F48()
{
  result = qword_2804E04E8;
  if (!qword_2804E04E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E04E8);
  }

  return result;
}

uint64_t sub_26D1B7F9C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

uint64_t sub_26D1B7FB4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

unint64_t sub_26D1B7FCC()
{
  result = qword_2804E04F0;
  if (!qword_2804E04F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E04F0);
  }

  return result;
}

void *sub_26D1B8028(void *a1)
{
  v24 = sub_26D22D334();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1[2] && (v6 = sub_26D1BDEEC(1953720684, 0xE400000000000000), (v7 & 1) != 0) && (v8 = *(a1[7] + 8 * v6), (v9 = *(v8 + 16)) != 0))
  {
    v25 = MEMORY[0x277D84F90];

    result = sub_26D1E46D4(0, v9, 0);
    v11 = 0;
    a1 = v25;
    v23 = v3 + 32;
    while (v11 < *(v8 + 16))
    {
      v12 = *(v8 + 8 * v11 + 32);
      v13 = &v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v14 = *&v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name] == 1953720684 && *&v12[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8] == 0xE400000000000000;
      if (!v14 && (sub_26D22E964() & 1) == 0)
      {
        v19 = v12;

        v21 = *v13;
        v20 = *(v13 + 1);
        sub_26D1B7F48();
        swift_allocError();
        *v22 = v21;
        *(v22 + 8) = v20;
        *(v22 + 16) = 0;
        *(v22 + 24) = 0;
        swift_willThrow();

        return a1;
      }

      v15 = v12;
      sub_26D1FDE68(v15, v5);
      if (v1)
      {

        return a1;
      }

      v25 = a1;
      v17 = a1[2];
      v16 = a1[3];
      if (v17 >= v16 >> 1)
      {
        sub_26D1E46D4((v16 > 1), v17 + 1, 1);
        a1 = v25;
      }

      ++v11;
      a1[2] = v17 + 1;
      result = (*(v3 + 32))(a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v17, v5, v24);
      if (v9 == v11)
      {

        return a1;
      }
    }

    __break(1u);
  }

  else
  {
    sub_26D1B7F48();
    swift_allocError();
    *v18 = xmmword_26D22F420;
    *(v18 + 16) = 0;
    *(v18 + 24) = 1;
    swift_willThrow();
    return a1;
  }

  return result;
}

uint64_t sub_26D1B831C()
{
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](0);
  return sub_26D22EA04();
}

uint64_t sub_26D1B8388(uint64_t a1)
{
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](0);
  return sub_26D22EA04();
}

unint64_t sub_26D1B83D8(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 1635017060;
    v6 = 0xD000000000000010;
    if (a1 != 2)
    {
      v6 = 0x7A69732D656C6966;
    }

    if (a1)
    {
      v5 = 1701869940;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 7107189;
    v2 = 0x6C69746E75;
    if (a1 != 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x6D616E2D656C6966;
    if (a1 != 4)
    {
      v3 = 0x2D746E65746E6F63;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_26D1B8500()
{
  v1 = *v0;
  sub_26D22E9E4();
  sub_26D223328(v3, v1);
  return sub_26D22EA04();
}

uint64_t sub_26D1B8550(uint64_t a1)
{
  v2 = *v1;
  sub_26D22E9E4();
  sub_26D223328(v4, v2);
  return sub_26D22EA04();
}

unint64_t sub_26D1B8594@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1B956C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_26D1B85C4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_26D1B83D8(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

void sub_26D1B85F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v94 = a2;
  v3 = sub_26D22CE34();
  MEMORY[0x28223BE20](v3 - 8);
  v97 = v81 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_26D22CCE4();
  v95 = *(v5 - 8);
  v96 = v5;
  MEMORY[0x28223BE20](v5);
  v98 = v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0500, &unk_26D22F550);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v81 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0508, &qword_26D230DE0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v81 - v14;
  v16 = sub_26D22D244();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v81 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v21 = a1;
  v22 = sub_26D1BA7E8(KeyPath, v21);

  v23 = v101;
  v24 = sub_26D1DE4DC(0, v22);
  if (v23)
  {

LABEL_3:

    return;
  }

  v91 = v15;
  v89 = v10;
  v90 = v12;
  v92 = v19;
  v93 = v16;
  if (!v24)
  {

    sub_26D1B7F48();
    swift_allocError();
    *v27 = xmmword_26D22F510;
    *(v27 + 16) = 0;
    *(v27 + 24) = 1;
    swift_willThrow();

    return;
  }

  v101 = v24;
  v25 = v22;
  v26 = sub_26D1DE4DC(4u, v22);
  if (v26)
  {
    v88 = v17;
    v28 = &v26[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
    v29 = v26;
    swift_beginAccess();
    v30 = *v28;
    v31 = v28[1];

    if (v31)
    {
      if ((sub_26D22C4CC(v30, v31) & 1) == 0)
      {

        v30 = 0;
        v31 = 0;
      }
    }

    else
    {
      v30 = 0;
    }

    v17 = v88;
  }

  else
  {
    v30 = 0;
    v31 = 0;
  }

  v32 = sub_26D1DE4DC(8u, v25);
  if (v32)
  {
    v88 = v32;
    v33 = &v32[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
    swift_beginAccess();
    v34 = v33[1];
    if (v34)
    {
      v35 = *v33;

      v36 = sub_26D1BA284(v35, v34);

      if (v36 <= 0x258)
      {
        v37 = 0;
        goto LABEL_22;
      }
    }

    else
    {
    }
  }

  v36 = 0;
  v37 = 1;
LABEL_22:
  v38 = sub_26D1DE4DC(5u, v25);
  if (!v38)
  {

    sub_26D1B7F48();
    swift_allocError();
    v52 = xmmword_26D22F500;
LABEL_36:
    *v51 = v52;
    *(v51 + 16) = 0;
    v53 = 1;
LABEL_41:
    *(v51 + 24) = v53;
    swift_willThrow();
    goto LABEL_6;
  }

  v86 = v37;
  v87 = v36;
  v88 = v38;
  v39 = &v38[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v40 = *(v39 + 1);
  if (!v40)
  {

    sub_26D1B7F48();
    swift_allocError();
    v54 = MEMORY[0x277D837D0];
    *(v55 + 8) = 0;
    *(v55 + 16) = 0;
    *v55 = v54;
    *(v55 + 24) = 5;
    swift_willThrow();

    goto LABEL_6;
  }

  v41 = *v39;

  v85 = v41;
  if (v41 != 0x2F6567617373656DLL || v40 != 0xEE0074662D736C6DLL) && (sub_26D22E964() & 1) == 0 || !v31 || v30 == 0x6574707972636E65 && v31 == 0xEE00656C69665F64 || (sub_26D22E964())
  {
    v42 = *(v21 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
    if (*(v42 + 16))
    {
      v88 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes;

      v43 = sub_26D1BDEEC(1701869940, 0xE400000000000000);
      if (v44)
      {
        v83 = v40;
        v45 = (*(v42 + 56) + 16 * v43);
        v46 = v45[1];
        v84 = *v45;

        v99 = v84;
        v100 = v46;
        v81[1] = sub_26D1B95B8(&qword_2804E0510, MEMORY[0x277CF1F78], MEMORY[0x277CF1F90]);
        v82 = v46;
        swift_bridgeObjectRetain_n();
        v47 = v91;
        v48 = v93;
        sub_26D22E554();
        if ((*(v17 + 6))(v47, 1, v48) == 1)
        {

          sub_26D1B950C(v47, &qword_2804E0508, &qword_26D230DE0);
          sub_26D1B7F48();
          swift_allocError();
          v49 = v82;
          *v50 = v84;
          *(v50 + 8) = v49;
          *(v50 + 16) = 0;
          *(v50 + 24) = 3;
          swift_willThrow();

          goto LABEL_6;
        }

        v84 = v30;
        swift_bridgeObjectRelease_n();
        (*(v17 + 4))(v92, v47, v48);
        v58 = *&v88[v21];
        v59 = v48;
        if (*(v58 + 16))
        {

          v60 = sub_26D1BDEEC(0xD000000000000010, 0x800000026D23A100);
          if (v61)
          {
            v62 = (*(v58 + 56) + 16 * v60);
            v63 = *v62;
            v64 = v62[1];

            v65 = sub_26D22D224();
            v82 = v63;
            v99 = v63;
            v100 = v64;
            v88 = sub_26D1B95B8(&qword_2804E0518, MEMORY[0x277CF1F58], MEMORY[0x277CF1F60]);
            v91 = v64;
            swift_bridgeObjectRetain_n();
            v66 = v89;
            sub_26D22E554();
            v67 = v66;
            v68 = *(v65 - 8);
            if ((*(v68 + 48))(v67, 1, v65) == 1)
            {
              (*(v17 + 1))(v92, v93);

              sub_26D1B950C(v67, &qword_2804E0500, &unk_26D22F550);
              sub_26D1B7F48();
              swift_allocError();
              v69 = v91;
              *v70 = v82;
              *(v70 + 8) = v69;
              *(v70 + 16) = 0;
              *(v70 + 24) = 3;
              swift_willThrow();

              goto LABEL_3;
            }

            v88 = v17;
            swift_bridgeObjectRelease_n();
            v72 = v90;
            (*(v68 + 32))(v90, v67, v65);
            (*(v68 + 56))(v72, 0, 1, v65);
            v59 = v93;
            goto LABEL_49;
          }
        }

        v88 = v17;
        v71 = sub_26D22D224();
        v72 = v90;
        (*(*(v71 - 8) + 56))(v90, 1, 1, v71);
LABEL_49:
        v73 = sub_26D1DE4DC(3u, v25);
        v74 = v92;
        v75 = v73;

        if (v75)
        {
          v76 = &v75[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
          swift_beginAccess();
          v77 = v76[1];
          if (v77)
          {
            v78 = *v76;

            sub_26D1BA284(v78, v77);

            sub_26D1DA188(6u, v101, v98);
            sub_26D1DA4A0(7u, v101, v97);
            sub_26D22D234();

            goto LABEL_7;
          }

          sub_26D1B950C(v72, &qword_2804E0500, &unk_26D22F550);
          (*(v88 + 1))(v74, v59);
          sub_26D1B7F48();
          swift_allocError();
          v79 = MEMORY[0x277D83B88];
          *(v80 + 8) = 0;
          *(v80 + 16) = 0;
          *v80 = v79;
          *(v80 + 24) = 5;
          swift_willThrow();

LABEL_6:
LABEL_7:

          return;
        }

        sub_26D1B950C(v72, &qword_2804E0500, &unk_26D22F550);
        (*(v88 + 1))(v74, v59);
        sub_26D1B7F48();
        swift_allocError();
        v52 = xmmword_26D22F4E0;
        goto LABEL_36;
      }
    }

    sub_26D1B7F48();
    swift_allocError();
    *v51 = xmmword_26D22F4F0;
    *(v51 + 16) = 0;
    v53 = 2;
    goto LABEL_41;
  }

  sub_26D1B9600();
  v56 = swift_allocError();
  sub_26D1B7F48();
  swift_allocError();
  *(v57 + 8) = 0;
  *(v57 + 16) = 0;
  *v57 = v56;
  *(v57 + 24) = 6;
  swift_willThrow();
}

uint64_t sub_26D1B950C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_26D1B956C(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 9)
  {
    return 9;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26D1B95B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26D1B9600()
{
  result = qword_2804E0520;
  if (!qword_2804E0520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0520);
  }

  return result;
}

uint64_t _s13XMLCodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s13XMLCodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_26D1B97E0()
{
  result = qword_2804E0528;
  if (!qword_2804E0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0528);
  }

  return result;
}

unint64_t sub_26D1B9838()
{
  result = qword_2804E0530;
  if (!qword_2804E0530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0530);
  }

  return result;
}

void *sub_26D1B988C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0538, &qword_26D22F778);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *sub_26D1B9900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a1;
  v63 = a2;

  result = sub_26D22E524();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_26D1B9E8C(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
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
      result = sub_26D22E7A4();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
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
                  goto LABEL_127;
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

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

uint64_t sub_26D1B9E8C(uint64_t a1, unint64_t a2)
{
  v2 = sub_26D22E534();
  v6 = sub_26D1B9F0C(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_26D1B9F0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_26D22E674();
    if (!v9 || (v10 = v9, v11 = sub_26D1B988C(v9, 0), v12 = sub_26D1BA064(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_26D22E444();

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
      return sub_26D22E444();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_26D22E7A4();
LABEL_4:

  return sub_26D22E444();
}

unint64_t sub_26D1BA064(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
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
      result = sub_26D21D568(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_26D22E4E4();
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
          result = sub_26D22E7A4();
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

    result = sub_26D21D568(v12, a6, a7);
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

    result = sub_26D22E4C4();
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

unint64_t sub_26D1BA284(unint64_t result, unint64_t a2)
{
  v4 = result;
  v5 = HIBYTE(a2) & 0xF;
  v6 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = v5;
  }

  else
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v7)
  {
    goto LABEL_63;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v2 = sub_26D1B9900(v4, a2, 10);
    v28 = v27;

    if (v28)
    {
      goto LABEL_63;
    }

    goto LABEL_65;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((result & 0x1000000000000000) != 0)
    {
      result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    }

    else
    {
      result = sub_26D22E7A4();
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v6 >= 1)
      {
        v5 = v6 - 1;
        if (v6 != 1)
        {
          v2 = 0;
          if (result)
          {
            v15 = (result + 1);
            while (1)
            {
              v16 = *v15 - 48;
              if (v16 > 9)
              {
                goto LABEL_61;
              }

              v17 = 10 * v2;
              if ((v2 * 10) >> 64 != (10 * v2) >> 63)
              {
                goto LABEL_61;
              }

              v2 = v17 + v16;
              if (__OFADD__(v17, v16))
              {
                goto LABEL_61;
              }

              ++v15;
              if (!--v5)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_53;
        }

        goto LABEL_61;
      }

      goto LABEL_70;
    }

    if (v8 != 45)
    {
      if (v6)
      {
        v2 = 0;
        if (result)
        {
          while (1)
          {
            v21 = *result - 48;
            if (v21 > 9)
            {
              goto LABEL_61;
            }

            v22 = 10 * v2;
            if ((v2 * 10) >> 64 != (10 * v2) >> 63)
            {
              goto LABEL_61;
            }

            v2 = v22 + v21;
            if (__OFADD__(v22, v21))
            {
              goto LABEL_61;
            }

            ++result;
            if (!--v6)
            {
              goto LABEL_53;
            }
          }
        }

        goto LABEL_53;
      }

LABEL_61:
      v2 = 0;
      LOBYTE(v5) = 1;
LABEL_62:
      v30 = v5;
      if (v5)
      {
LABEL_63:
        sub_26D1B7F48();
        swift_allocError();
        *v26 = v4;
        *(v26 + 8) = a2;
        *(v26 + 16) = 0;
        *(v26 + 24) = 4;
        swift_willThrow();
        return v2;
      }

LABEL_65:

      return v2;
    }

    if (v6 >= 1)
    {
      v5 = v6 - 1;
      if (v6 != 1)
      {
        v2 = 0;
        if (result)
        {
          v9 = (result + 1);
          while (1)
          {
            v10 = *v9 - 48;
            if (v10 > 9)
            {
              goto LABEL_61;
            }

            v11 = 10 * v2;
            if ((v2 * 10) >> 64 != (10 * v2) >> 63)
            {
              goto LABEL_61;
            }

            v2 = v11 - v10;
            if (__OFSUB__(v11, v10))
            {
              goto LABEL_61;
            }

            ++v9;
            if (!--v5)
            {
              goto LABEL_62;
            }
          }
        }

LABEL_53:
        LOBYTE(v5) = 0;
        goto LABEL_62;
      }

      goto LABEL_61;
    }

    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  v29[0] = result;
  v29[1] = a2 & 0xFFFFFFFFFFFFFFLL;
  if (result != 43)
  {
    if (result != 45)
    {
      if (v5)
      {
        v2 = 0;
        v23 = v29;
        while (1)
        {
          v24 = *v23 - 48;
          if (v24 > 9)
          {
            break;
          }

          v25 = 10 * v2;
          if ((v2 * 10) >> 64 != (10 * v2) >> 63)
          {
            break;
          }

          v2 = v25 + v24;
          if (__OFADD__(v25, v24))
          {
            break;
          }

          ++v23;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    if (v5)
    {
      if (--v5)
      {
        v2 = 0;
        v12 = v29 + 1;
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          v14 = 10 * v2;
          if ((v2 * 10) >> 64 != (10 * v2) >> 63)
          {
            break;
          }

          v2 = v14 - v13;
          if (__OFSUB__(v14, v13))
          {
            break;
          }

          ++v12;
          if (!--v5)
          {
            goto LABEL_62;
          }
        }
      }

      goto LABEL_61;
    }

    goto LABEL_69;
  }

  if (v5)
  {
    if (--v5)
    {
      v2 = 0;
      v18 = v29 + 1;
      while (1)
      {
        v19 = *v18 - 48;
        if (v19 > 9)
        {
          break;
        }

        v20 = 10 * v2;
        if ((v2 * 10) >> 64 != (10 * v2) >> 63)
        {
          break;
        }

        v2 = v20 + v19;
        if (__OFADD__(v20, v19))
        {
          break;
        }

        ++v18;
        if (!--v5)
        {
          goto LABEL_62;
        }
      }
    }

    goto LABEL_61;
  }

LABEL_71:
  __break(1u);
  return result;
}

uint64_t sub_26D1BA5CC(uint64_t a1, unint64_t a2)
{
  v5 = sub_26D22E424();
  v6 = v4;
  if (v5 == 48 && v4 == 0xE100000000000000 || (sub_26D22E964() & 1) != 0 || v5 == 0x65736C6166 && v6 == 0xE500000000000000 || (sub_26D22E964() & 1) != 0)
  {

    v7 = 0;
  }

  else
  {
    if (v5 == 49 && v6 == 0xE100000000000000 || (sub_26D22E964() & 1) != 0 || v5 == 1702195828 && v6 == 0xE400000000000000)
    {
    }

    else
    {
      v9 = sub_26D22E964();

      if ((v9 & 1) == 0)
      {
        sub_26D1B7F48();
        swift_allocError();
        *v10 = a1;
        *(v10 + 8) = a2;
        *(v10 + 16) = 0;
        *(v10 + 24) = 4;
        swift_willThrow();
        return v7 & 1;
      }
    }

    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_26D1BA774@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_26D1BA794(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name);
  *v4 = v3;
  v4[1] = v2;
}

void *sub_26D1BA838(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v10 = OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_children;
  swift_beginAccess();
  v11 = *(a2 + v10);
  if (v11 >> 62)
  {
    v12 = sub_26D22E814();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D84F90];
  if (!v12)
  {
LABEL_11:

    v17 = sub_26D1BC940(v13, a1, a3, a4, a5);

    return v17;
  }

  v18 = MEMORY[0x277D84F90];

  result = sub_26D22E7D4();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v15 = 0;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x26D6B6F50](v15, v11);
      }

      else
      {
        v16 = *(v11 + 8 * v15 + 32);
      }

      ++v15;
      sub_26D22E7B4();
      sub_26D22E7E4();
      sub_26D22E7F4();
      sub_26D22E7C4();
    }

    while (v12 != v15);

    v13 = v18;
    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_26D1BAD98(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v43 = sub_26D22D904();
  v39 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v38 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26D22E344();
  v36 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26D22E334();
  v37 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*&a1[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes] + 16);
  v14 = a1;
  if (!v13)
  {
    goto LABEL_8;
  }

  sub_26D1BDEEC(1701667182, 0xE400000000000000);
  if ((v15 & 1) == 0)
  {

LABEL_8:
    sub_26D1B7F48();
    swift_allocError();
    *v21 = xmmword_26D22F780;
    *(v21 + 16) = 0;
    *(v21 + 24) = 2;
    swift_willThrow();

    goto LABEL_9;
  }

  v35 = a2;

  v16 = sub_26D22E854();

  if (v16)
  {

    v17 = 1;
    v18 = v35;
LABEL_5:
    v19 = v43;
    v20 = v39;
LABEL_6:
    (*(v20 + 56))(v18, v17, 1, v19);
    return;
  }

  v22 = &v14[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v23 = v22[1];
  v18 = v35;
  if (!v23)
  {

    v17 = 1;
    goto LABEL_5;
  }

  v24 = *v22;

  v25 = sub_26D20F4F4(v24, v23);
  v27 = v26;
  v32 = sub_26D1BCBF0(&qword_2804E0558, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  sub_26D22E324();
  sub_26D1BCB48(v25, v27);
  sub_26D1BC5E8(v25, v27, v9);
  v33 = v25;
  v34 = v27;
  sub_26D1BCB9C(v25, v27);
  sub_26D22E314();
  (*(v36 + 8))(v9, v7);
  v41 = v10;
  v42 = sub_26D1BCBF0(&qword_2804E0560, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v40);
  v29 = v37;
  (*(v37 + 16))(boxed_opaque_existential_1, v12, v10);
  __swift_project_boxed_opaque_existential_1(v40, v41);
  sub_26D22CC34();
  __swift_destroy_boxed_opaque_existential_1(v40);
  v30 = v38;
  sub_26D22D8F4();
  if (!v3)
  {
    (*(v29 + 8))(v12, v10);

    sub_26D1BCB9C(v33, v34);
    v20 = v39;
    v31 = v43;
    (*(v39 + 104))(v30, *MEMORY[0x277CF2948], v43);
    v18 = v35;
    (*(v20 + 32))(v35, v30, v31);
    v19 = v31;
    v17 = 0;
    goto LABEL_6;
  }

  (*(v29 + 8))(v12, v10);

  sub_26D1BCB9C(v33, v34);
LABEL_9:
}

uint64_t sub_26D1BB2F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701667182;
  if (v2 != 1)
  {
    v4 = 0x6D61726170;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE400000000000000;
  v8 = 1701667182;
  if (*a2 != 1)
  {
    v8 = 0x6D61726170;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D1BB3DC()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1BB468(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1BB4E0(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D1BB568@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1BC8F4(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D1BB598(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 1701667182;
  if (v2 != 1)
  {
    v5 = 0x6D61726170;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_26D1BB5E0(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0548, &qword_26D22F7E0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v46 - v6;
  v8 = sub_26D22D904();
  v56 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v60 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = &v46 - v11;
  v12 = sub_26D22D8E4();
  v58 = *(v12 - 8);
  v59 = v12;
  MEMORY[0x28223BE20](v12);
  v54 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0550, &qword_26D22F7E8);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v46 - v15;
  v17 = sub_26D22D8C4();
  v62 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v57 = &v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v61 = &v46 - v20;
  v21 = *(*&a1[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes] + 16);
  v22 = a1;
  if (!v21)
  {
    goto LABEL_6;
  }

  sub_26D1BDEEC(1701667182, 0xE400000000000000);
  if ((v23 & 1) == 0)
  {

LABEL_6:
    sub_26D1B7F48();
    swift_allocError();
    *v25 = xmmword_26D22F780;
    *(v25 + 16) = 0;
    *(v25 + 24) = 2;
    swift_willThrow();
LABEL_7:

    return;
  }

  v53 = a2;

  sub_26D22D8B4();
  v24 = v62;
  if ((*(v62 + 48))(v16, 1, v17) == 1)
  {

    sub_26D1B950C(v16, &qword_2804E0550, &qword_26D22F7E8);
    (*(v58 + 56))(v53, 1, 1, v59);
    return;
  }

  v26 = v61;
  (*(v24 + 32))(v61, v16, v17);
  KeyPath = swift_getKeyPath();
  v28 = sub_26D1BA838(KeyPath, v22, sub_26D1E37CC, &qword_2804E0568, &qword_26D22F7F0);

  v29 = sub_26D1E5430(0, v22);
  if (v2)
  {
    (*(v24 + 8))(v26, v17);

    goto LABEL_7;
  }

  v49 = v29;
  (*(v24 + 16))(v57, v26, v17);
  if (v28[2] && (v30 = sub_26D1BDEEC(0x6D61726170, 0xE500000000000000), (v31 & 1) != 0) && (v32 = *(v28[7] + 8 * v30), , , (v33 = *(v32 + 16)) != 0))
  {
    v34 = 0;
    v50 = (v56 + 32);
    v51 = (v56 + 48);
    v52 = MEMORY[0x277D84F90];
    v47 = v33;
    v48 = v32;
    while (v34 < *(v32 + 16))
    {
      v35 = *(v32 + 8 * v34 + 32);
      sub_26D1BAD98(v35, v7);

      if ((*v51)(v7, 1, v8) == 1)
      {
        sub_26D1B950C(v7, &qword_2804E0548, &qword_26D22F7E0);
      }

      else
      {
        v36 = *v50;
        v37 = v55;
        (*v50)(v55, v7, v8);
        v36(v60, v37, v8);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v52 = sub_26D22BCC8(0, *(v52 + 2) + 1, 1, v52);
        }

        v39 = *(v52 + 2);
        v38 = *(v52 + 3);
        if (v39 >= v38 >> 1)
        {
          v52 = sub_26D22BCC8((v38 > 1), v39 + 1, 1, v52);
        }

        v40 = v52;
        *(v52 + 2) = v39 + 1;
        v36(&v40[((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v39], v60, v8);
        v33 = v47;
        v32 = v48;
      }

      if (v33 == ++v34)
      {
        v24 = v62;
        goto LABEL_23;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_23:

    v41 = v54;
    sub_26D22D8D4();
    (*(v24 + 8))(v61, v17);

    v42 = v58;
    v43 = v53;
    v44 = v41;
    v45 = v59;
    (*(v58 + 32))(v53, v44, v59);
    (*(v42 + 56))(v43, 0, 1, v45);
  }
}

uint64_t sub_26D1BBD7C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65636E6F6ELL;
  if (v2 != 1)
  {
    v3 = 0x6469706176;
  }

  if (*a1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x646F6874656DLL;
  }

  if (v2)
  {
    v5 = 0xE500000000000000;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  v6 = 0x65636E6F6ELL;
  if (*a2 != 1)
  {
    v6 = 0x6469706176;
  }

  if (*a2)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0x646F6874656DLL;
  }

  if (*a2)
  {
    v8 = 0xE500000000000000;
  }

  else
  {
    v8 = 0xE600000000000000;
  }

  if (v4 == v7 && v5 == v8)
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_26D22E964();
  }

  return v9 & 1;
}

uint64_t sub_26D1BBE6C()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1BBF04(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1BBF88(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D1BC01C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1BC8A8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D1BC04C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0x65636E6F6ELL;
  if (v2 != 1)
  {
    v4 = 0x6469706176;
  }

  v5 = v2 == 0;
  if (*v1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0x646F6874656DLL;
  }

  if (!v5)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v6;
  a1[1] = v3;
}

void sub_26D1BC0A0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0540, &qword_26D22F7B0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_26D22D8E4();
  v38 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v39 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v32 - v11;
  KeyPath = swift_getKeyPath();
  v13 = a1;
  v14 = sub_26D1BA838(KeyPath, v13, sub_26D1E36DC, &qword_2804E0570, &qword_26D22F7F8);

  if (!v14[2] || (v15 = sub_26D1BDEEC(0x646F6874656DLL, 0xE600000000000000), (v16 & 1) == 0))
  {
    v40 = MEMORY[0x277D84F90];
LABEL_18:
    v28 = sub_26D1DF6E8(1, v14);
    if (v2)
    {
    }

    else
    {
      if (v28)
      {
        v29 = v28;
        swift_beginAccess();
      }

      v30 = sub_26D1DF6E8(2, v14);

      if (v30)
      {
        swift_beginAccess();
      }

      sub_26D22D8A4();
    }

    return;
  }

  v32 = a2;
  v33 = v14;
  v34 = v13;
  v17 = *(v14[7] + 8 * v15);
  v18 = *(v17 + 16);

  if (!v18)
  {
    v40 = MEMORY[0x277D84F90];
LABEL_17:

    v14 = v33;
    v13 = v34;
    goto LABEL_18;
  }

  v19 = 0;
  v20 = (v38 + 48);
  v21 = (v38 + 32);
  v40 = MEMORY[0x277D84F90];
  v35 = v18;
  v36 = v17;
  while (v19 < *(v17 + 16))
  {
    v22 = *(v17 + 8 * v19 + 32);
    sub_26D1BB5E0(v22, v7);
    if (v2)
    {

      v31 = v34;

      return;
    }

    if ((*v20)(v7, 1, v8) == 1)
    {
      sub_26D1B950C(v7, &qword_2804E0540, &qword_26D22F7B0);
    }

    else
    {
      v23 = *v21;
      v24 = v37;
      (*v21)(v37, v7, v8);
      v23(v39, v24, v8);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v40 = sub_26D22BA30(0, *(v40 + 2) + 1, 1, v40);
      }

      v26 = *(v40 + 2);
      v25 = *(v40 + 3);
      if (v26 >= v25 >> 1)
      {
        v40 = sub_26D22BA30((v25 > 1), v26 + 1, 1, v40);
      }

      v27 = v40;
      *(v40 + 2) = v26 + 1;
      v23(&v27[((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v26], v39, v8);
      v18 = v35;
      v17 = v36;
    }

    if (v18 == ++v19)
    {
      goto LABEL_17;
    }
  }

  __break(1u);
}

uint64_t sub_26D1BC574@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = (*a1 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name);
  v3 = v2[1];
  *a2 = *v2;
  a2[1] = v3;
}

uint64_t sub_26D1BC594(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name);
  *v4 = v3;
  v4[1] = v2;
}

uint64_t sub_26D1BC5E8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      sub_26D22E344();
      sub_26D1BCBF0(&qword_2804E0558, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_26D22E304();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_26D1BC7C8(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return sub_26D1BC7C8(v5, v6);
  }

  sub_26D22E344();
  sub_26D1BCBF0(&qword_2804E0558, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
  return sub_26D22E304();
}

uint64_t sub_26D1BC7C8(uint64_t a1, uint64_t a2)
{
  result = sub_26D22CBB4();
  if (!result || (result = sub_26D22CBE4(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_26D22CBD4();
      sub_26D22E344();
      sub_26D1BCBF0(&qword_2804E0558, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
      return sub_26D22E304();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_26D1BC8A8(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26D1BC8F4(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_26D1BC940(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v5 = MEMORY[0x277D84F98];
  v29 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 32); ; ++i)
  {
    v10 = *i;
    swift_getAtKeyPath();

    v12 = sub_26D1BDEEC(v27, v28);
    v13 = v5[2];
    v14 = (v11 & 1) == 0;
    if (__OFADD__(v13, v14))
    {
      break;
    }

    v15 = v11;
    if (v5[3] < v13 + v14)
    {
      a3();
      v5 = v29;
      v16 = sub_26D1BDEEC(v27, v28);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_17;
      }

      v12 = v16;
    }

    if (v15)
    {

      v9 = v5[7] + 8 * v12;
      MEMORY[0x26D6B6D60](v8);
      if (*(*v9 + 16) >= *(*v9 + 24) >> 1)
      {
        sub_26D22E5A4();
      }

      sub_26D22E5B4();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_26D22F360;
      *(v18 + 32) = v10;
      v5[(v12 >> 6) + 8] |= 1 << v12;
      v19 = (v5[6] + 16 * v12);
      *v19 = v27;
      v19[1] = v28;
      *(v5[7] + 8 * v12) = v18;
      v20 = v5[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_16;
      }

      v5[2] = v22;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
LABEL_17:

  result = sub_26D22E984();
  __break(1u);
  return result;
}

uint64_t sub_26D1BCB48(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26D1BCB9C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_26D1BCBF0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t _s13XMLCodingKeysOwet_1(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13XMLCodingKeysOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26D1BCE98()
{
  result = qword_2804E0648;
  if (!qword_2804E0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0648);
  }

  return result;
}

unint64_t sub_26D1BCEF0()
{
  result = qword_2804E0650;
  if (!qword_2804E0650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0650);
  }

  return result;
}

uint64_t sub_26D1BCF54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23 = a3;
  v6 = sub_26D22CDE4();
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = sub_26D22CE34();
  v21 = *(v10 - 8);
  v22 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v20 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v20 - v16;
  v24 = a1;
  v25 = a2;

  MEMORY[0x26D6B5300](v18);
  sub_26D1BE200(&qword_2804E06A8, MEMORY[0x277CC94A0], MEMORY[0x277CC9498]);
  sub_26D22CE44();
  if (v3)
  {
    v24 = a1;
    v25 = a2;

    sub_26D1BD210(v9);
    sub_26D22CE44();
  }

  else
  {

    v15 = v17;
  }

  return (*(v21 + 32))(v23, v15, v22);
}

uint64_t sub_26D1BD210@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E06B8, &qword_26D22FBA8);
  MEMORY[0x28223BE20](v1 - 8);
  v29 = &v24 - v2;
  v28 = sub_26D22CE94();
  v3 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v25 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_26D22CDD4();
  v5 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_26D22CDB4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_26D22CD94();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_26D22CDA4();
  MEMORY[0x28223BE20](v16);
  (*(v18 + 104))(&v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0), *MEMORY[0x277CC9460]);
  v19 = v12;
  v20 = v28;
  (*(v13 + 104))(v15, *MEMORY[0x277CC9458], v19);
  v21 = v7;
  v22 = v29;
  (*(v9 + 104))(v11, *MEMORY[0x277CC9468], v8);
  (*(v5 + 104))(v21, *MEMORY[0x277CC9480], v27);
  sub_26D22CE84();
  result = (*(v3 + 48))(v22, 1, v20);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v25, v22, v20);
    return sub_26D22CDC4();
  }

  return result;
}

uint64_t sub_26D1BD630@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000026D23AF10 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_26D22E964();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_26D1BD6DC(uint64_t a1)
{
  v2 = sub_26D1BE1AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26D1BD718(uint64_t a1)
{
  v2 = sub_26D1BE1AC();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26D1BD754(uint64_t a4@<X8>)
{
  v17 = a4;
  v4 = sub_26D22CA34();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_26D22CA44();
  v14 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_26D22E744();

  v15 = 0xD000000000000016;
  v16 = 0x800000026D23AEF0;
  v9 = sub_26D22E504();
  MEMORY[0x26D6B6C70](v9);

  MEMORY[0x26D6B6C70](90, 0xE100000000000000);
  v10 = sub_26D22E3B4();

  [v8 setDateFormat_];

  v11 = sub_26D22E3B4();
  v12 = [v8 dateFromString_];

  if (v12)
  {
    sub_26D22CE14();
  }

  else
  {
    sub_26D22CA24();
    sub_26D1BE01C(MEMORY[0x277D84F90]);
    sub_26D1BE200(&qword_2804E0678, MEMORY[0x277CC8620], MEMORY[0x277CC8618]);
    sub_26D22CC44();
    sub_26D22CA14();
    (*(v14 + 8))(v7, v5);
    swift_willThrow();
  }
}

uint64_t sub_26D1BDA28@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0690, &qword_26D22FB98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1BE1AC();
  sub_26D22EA24();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_26D22E904();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_26D1BDB88(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E06A0, &qword_26D22FBA0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26D1BE1AC();
  sub_26D22EA34();
  sub_26D22E944();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26D1BDCC0()
{
  v1 = *v0;
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v1);
  return sub_26D22EA04();
}

uint64_t sub_26D1BDD34(uint64_t a1)
{
  v2 = *v1;
  sub_26D22E9E4();
  MEMORY[0x26D6B71D0](v2);
  return sub_26D22EA04();
}

unint64_t sub_26D1BDD90()
{
  result = qword_2804E0658;
  if (!qword_2804E0658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0658);
  }

  return result;
}

unint64_t sub_26D1BDDE8()
{
  result = qword_2804E0660;
  if (!qword_2804E0660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0660);
  }

  return result;
}

unint64_t sub_26D1BDE40()
{
  result = qword_2804E0668;
  if (!qword_2804E0668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0668);
  }

  return result;
}

unint64_t sub_26D1BDE98()
{
  result = qword_2804E0670;
  if (!qword_2804E0670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0670);
  }

  return result;
}

unint64_t sub_26D1BDEEC(uint64_t a1, uint64_t a2)
{
  sub_26D22E9E4();
  sub_26D22E454();
  v4 = sub_26D22EA04();

  return sub_26D1BDF64(a1, a2, v4);
}

unint64_t sub_26D1BDF64(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_26D22E964())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_26D1BE01C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0680, &qword_26D22FB88);
    v3 = sub_26D22E844();
    v4 = a1 + 32;

    while (1)
    {
      sub_26D1BE12C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_26D1BDEEC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_26D1BE19C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

uint64_t sub_26D1BE12C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0688, &qword_26D22FB90);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_26D1BE19C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_26D1BE1AC()
{
  result = qword_2804E0698;
  if (!qword_2804E0698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0698);
  }

  return result;
}

uint64_t sub_26D1BE200(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26D1BE248()
{
  result = qword_2804E06B0;
  if (!qword_2804E06B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E06B0);
  }

  return result;
}

unint64_t sub_26D1BE2C0()
{
  result = qword_2804E06C0;
  if (!qword_2804E06C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E06C0);
  }

  return result;
}

unint64_t sub_26D1BE318()
{
  result = qword_2804E06C8;
  if (!qword_2804E06C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E06C8);
  }

  return result;
}

unint64_t sub_26D1BE370()
{
  result = qword_2804E06D0;
  if (!qword_2804E06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E06D0);
  }

  return result;
}

uint64_t sub_26D1BE3C4()
{
  v0 = sub_26D22CF14();
  __swift_allocate_value_buffer(v0, qword_2804E06D8);
  __swift_project_value_buffer(v0, qword_2804E06D8);
  return sub_26D22CF04();
}

uint64_t sub_26D1BE440(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = sub_26D22CAD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_26D22E404();
  MEMORY[0x28223BE20](v9 - 8);
  sub_26D22E3F4();
  v10 = sub_26D22E3E4();
  if (!v11)
  {
    sub_26D1BCB9C(a1, a2);
    return 0;
  }

  v16[0] = v10;
  v16[1] = v11;
  sub_26D22CAC4();
  sub_26D1B1F48();
  sub_26D22E6B4();
  (*(v6 + 8))(v8, v5);

  v12 = sub_26D22CD14();
  v14 = v13;
  sub_26D1BCB9C(a1, a2);
  sub_26D1BE62C(v12, v14);

  if (v14 >> 60 == 15)
  {
    return 0;
  }

  sub_26D1BE640(v12, v14);
  return v12;
}

uint64_t sub_26D1BE62C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D1BCB48(result, a2);
  }

  return result;
}

uint64_t sub_26D1BE640(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_26D1BCB9C(result, a2);
  }

  return result;
}

uint64_t sub_26D1BE654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_26D22CAD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a1;
  v35 = a2;
  sub_26D1B1F48();
  v9 = sub_26D22E6E4();
  v11 = v10;

  if (!v11)
  {
    return 0;
  }

  v34 = v9;
  v35 = v11;
  sub_26D22CAC4();
  v12 = sub_26D22E6B4();
  v14 = v13;
  (*(v6 + 8))(v8, v5);

  v32 = v12;
  v33 = v14;
  v30 = 45;
  v31 = 0xE100000000000000;
  v28 = 43;
  v29 = 0xE100000000000000;
  v15 = sub_26D22E6C4();
  v17 = v16;

  v32 = v15;
  v33 = v17;
  v30 = 95;
  v31 = 0xE100000000000000;
  v28 = 47;
  v29 = 0xE100000000000000;
  v18 = sub_26D22E6C4();
  v20 = v19;

  v34 = v18;
  v35 = v20;

  v21 = sub_26D22E464();

  v22 = v21 & 3;
  if (v21 <= 0)
  {
    v22 = -(-v21 & 3);
  }

  if (v22)
  {
    v23 = sub_26D22E504();
    MEMORY[0x26D6B6C70](v23);
  }

  v24 = sub_26D22CD14();
  v26 = v25;
  sub_26D1BE62C(v24, v25);

  if (v26 >> 60 == 15)
  {
    return 0;
  }

  sub_26D1BE640(v24, v26);
  return v24;
}

void *sub_26D1BE908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, unint64_t a7)
{
  v11 = sub_26D22E404();
  MEMORY[0x28223BE20](v11 - 8);
  if ((a5 & 1) == 0)
  {
    goto LABEL_11;
  }

  v12 = a7 >> 62;
  if ((a7 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_10;
    }

    a3 = *(a6 + 16);
    v13 = *(a6 + 24);
  }

  else
  {
    if (!v12)
    {
      a3 = 0;
      goto LABEL_11;
    }

    a3 = a6;
    v13 = a6 >> 32;
  }

  if (v13 >= a3)
  {
    goto LABEL_11;
  }

  __break(1u);
LABEL_10:
  a3 = 0;
LABEL_11:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E06F0, qword_26D22FD10);
  sub_26D1BEAE4();
  sub_26D1BEB38();
  result = sub_26D22CAE4();
  if (v22)
  {
    return 0;
  }

  if (v21 < a3)
  {
    __break(1u);
  }

  else
  {
    v15 = sub_26D22CD54();
    v17 = v16;
    sub_26D22E3F4();
    v18 = sub_26D22E3E4();
    v20 = v19;
    sub_26D1BCB9C(v15, v17);
    if (v20)
    {
      return v18;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_26D1BEAE4()
{
  result = qword_2804E06F8;
  if (!qword_2804E06F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E06F8);
  }

  return result;
}

unint64_t sub_26D1BEB38()
{
  result = qword_2804E0700;
  if (!qword_2804E0700)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804E06F0, qword_26D22FD10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0700);
  }

  return result;
}

unint64_t sub_26D1BEBB0()
{
  result = qword_2804E0708[0];
  if (!qword_2804E0708[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2804E0708);
  }

  return result;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_26D1BEC18(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_26D1BEC60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26D1BECB8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_26D1BED28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_26D1BEE68(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

unint64_t sub_26D1BF0D8()
{
  result = qword_2804E0790;
  if (!qword_2804E0790)
  {
    sub_26D22D4B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0790);
  }

  return result;
}

uint64_t sub_26D1BF158(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x69616E626D756874;
  v4 = 0xE90000000000006CLL;
  if (v2 != 1)
  {
    v3 = 0x656C69662D736C6DLL;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 1701603686;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0x69616E626D756874;
  v8 = 0xE90000000000006CLL;
  if (*a2 != 1)
  {
    v7 = 0x656C69662D736C6DLL;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 1701603686;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_26D22E964();
  }

  return v11 & 1;
}

uint64_t sub_26D1BF25C()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1BF2FC(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1BF388(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

unint64_t sub_26D1BF424@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26D1BFEBC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26D1BF454(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE90000000000006CLL;
  v5 = 0x69616E626D756874;
  if (v2 != 1)
  {
    v5 = 0x656C69662D736C6DLL;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701603686;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

void sub_26D1BF4B0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  v4 = sub_26D22CAD4();
  v80 = *(v4 - 8);
  v81 = v4;
  MEMORY[0x28223BE20](v4);
  v79 = v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07A0, &qword_26D22FF50);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v78 = v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = v69 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = v69 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = v69 - v16;
  MEMORY[0x28223BE20](v15);
  v86 = (v69 - v18);
  v19 = sub_26D22D264();
  v83 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v22 = v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v20);
  v25 = v69 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v69 - v26;
  v28 = a1;
  v29 = sub_26D1E1540();
  if (v2)
  {

    return;
  }

  v73 = v14;
  v74 = v25;
  v71 = v22;
  v72 = v11;
  v76 = v19;
  v77 = v28;
  v75 = v17;
  v30 = sub_26D1BFF08(v29);

  v31 = v86;
  sub_26D1DEB3C(0, v30, v86);
  v32 = v83;
  v33 = (v83 + 48);
  v34 = *(v83 + 48);
  v35 = v76;
  if ((v34)(v31, 1, v76) == 1)
  {

    sub_26D1C0318(v31);
    sub_26D1B7F48();
    swift_allocError();
    *v36 = xmmword_26D22FF00;
    *(v36 + 16) = 0;
    *(v36 + 24) = 1;
    swift_willThrow();
    v37 = v77;

    return;
  }

  v38 = v31;
  v39 = *(v32 + 32);
  v39(v27, v38, v35);
  sub_26D1DEB3C(1, v30, v75);
  v69[1] = v32 + 32;
  v70 = v39;
  v86 = v34;
  v40 = sub_26D22D214();
  v42 = v77;
  if (v40 == 0x2F6567617373656DLL && v41 == 0xEE0074662D736C6DLL)
  {

    v43 = v74;
  }

  else
  {
    v44 = sub_26D22E964();

    v45 = v72;
    v43 = v74;
    if ((v44 & 1) == 0)
    {
      v73 = 0;
      v74 = v33;
      v48 = v76;
      goto LABEL_20;
    }
  }

  v46 = v75;
  v47 = v73;
  sub_26D1C0380(v75, v73);
  v48 = v76;
  if ((v86)(v47, 1, v76) == 1)
  {
    v49 = v30;
    sub_26D1C0318(v47);
  }

  else
  {
    v50 = v47;
    v51 = v33;
    v70(v43, v50, v48);
    if (sub_26D22D214() == 0x2F6567617373656DLL && v52 == 0xEE0074662D736C6DLL)
    {
    }

    else
    {
      v53 = sub_26D22E964();

      if ((v53 & 1) == 0)
      {

        sub_26D1C03F8();
        v62 = swift_allocError();
        sub_26D1B7F48();
        swift_allocError();
        *(v63 + 8) = 0;
        *(v63 + 16) = 0;
        *v63 = v62;
        *(v63 + 24) = 6;
        swift_willThrow();

        v64 = *(v83 + 8);
        v65 = v76;
        v64(v74, v76);
        sub_26D1C0318(v46);
        v64(v27, v65);
        return;
      }
    }

    v49 = v30;
    v48 = v76;
    (*(v83 + 8))(v74, v76);
    v33 = v51;
  }

  KeyPath = swift_getKeyPath();
  v55 = sub_26D1BAB18(KeyPath, v42);

  v56 = sub_26D1DED94(2u, v55);

  if (v56)
  {
    v74 = v33;
    v57 = &v56[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
    swift_beginAccess();
    v58 = *(v57 + 1);
    if (v58)
    {
      v59 = *v57;

      v84 = v59;
      v85 = v58;
      v60 = v79;
      sub_26D22CAC4();
      sub_26D1B1F48();
      v73 = sub_26D22E6B4();
      (*(v80 + 8))(v60, v81);

      v30 = v49;
      v45 = v72;
LABEL_20:
      sub_26D1DEB3C(0, v30, v45);
      if ((v86)(v45, 1, v48) == 1)
      {

        sub_26D1C0318(v45);
        sub_26D1B7F48();
        swift_allocError();
        *v61 = xmmword_26D22FF00;
        *(v61 + 16) = 0;
        *(v61 + 24) = 1;
        swift_willThrow();
      }

      else
      {
        v70(v71, v45, v48);
        sub_26D1DEB3C(1, v30, v78);

        sub_26D22D524();
      }

      goto LABEL_26;
    }

    sub_26D1B7F48();
    swift_allocError();
    v67 = MEMORY[0x277D837D0];
    *(v68 + 8) = 0;
    *(v68 + 16) = 0;
    *v68 = v67;
    *(v68 + 24) = 5;
    swift_willThrow();
  }

  else
  {

    sub_26D1B7F48();
    swift_allocError();
    *v66 = xmmword_26D22FF10;
    *(v66 + 16) = 0;
    *(v66 + 24) = 1;
    swift_willThrow();
  }

LABEL_26:

  sub_26D1C0318(v75);
  (*(v83 + 8))(v27, v48);
}

unint64_t sub_26D1BFE3C(uint64_t a1)
{
  result = sub_26D1BFE64();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_26D1BFE64()
{
  result = qword_2804E0798;
  if (!qword_2804E0798)
  {
    sub_26D22D244();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0798);
  }

  return result;
}

unint64_t sub_26D1BFEBC(uint64_t a1, uint64_t a2)
{
  v2 = sub_26D22E854();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_26D1BFF08(uint64_t a1)
{
  v2 = sub_26D22D244();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_26D22D264();
  v6 = *(v54 - 8);
  v7 = MEMORY[0x28223BE20](v54);
  v51 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v53 = &v39 - v9;
  v10 = MEMORY[0x277D84F98];
  v55 = MEMORY[0x277D84F98];
  v11 = *(a1 + 16);
  if (!v11)
  {
    return v10;
  }

  v13 = *(v6 + 16);
  v12 = v6 + 16;
  v14 = *(v12 + 64);
  v15 = *(v12 + 56);
  v49 = (v14 + 32) & ~v14;
  v50 = v13;
  v16 = a1 + v49;
  v52 = (v12 + 16);
  v42 = v3 + 32;
  v43 = v14;
  v41 = (v3 + 8);
  v40 = xmmword_26D22F360;
  v45 = v3;
  v46 = v2;
  v17 = v2;
  v47 = v5;
  v48 = v15;
  v44 = v12;
  v13(v53, a1 + v49, v54);
  while (1)
  {
    sub_26D22D254();
    v20 = sub_26D1E304C(v5);
    v21 = v10[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      break;
    }

    v24 = v19;
    if (v10[3] < v23)
    {
      sub_26D1E329C(v23, 1);
      v10 = v55;
      v25 = sub_26D1E304C(v5);
      if ((v24 & 1) != (v26 & 1))
      {
        goto LABEL_20;
      }

      v20 = v25;
    }

    if (v24)
    {
      (*v41)(v5, v17);
      v27 = v10[7];
      v28 = *v52;
      (*v52)(v51, v53, v54);
      v29 = *(v27 + 8 * v20);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v27 + 8 * v20) = v29;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = sub_26D22BA08(0, *(v29 + 2) + 1, 1, v29);
        *(v27 + 8 * v20) = v29;
      }

      v32 = *(v29 + 2);
      v31 = *(v29 + 3);
      if (v32 >= v31 >> 1)
      {
        v29 = sub_26D22BA08((v31 > 1), v32 + 1, 1, v29);
        *(v27 + 8 * v20) = v29;
      }

      *(v29 + 2) = v32 + 1;
      v5 = v47;
      v18 = v48;
      v28(&v29[v49 + v32 * v48], v51, v54);
      v17 = v46;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07B0, qword_26D22FF80);
      v33 = v49;
      v34 = swift_allocObject();
      *(v34 + 16) = v40;
      (*v52)((v34 + v33), v53, v54);
      v10[(v20 >> 6) + 8] |= 1 << v20;
      (*(v45 + 32))(v10[6] + *(v45 + 72) * v20, v5, v17);
      *(v10[7] + 8 * v20) = v34;
      v35 = v10[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_19;
      }

      v10[2] = v37;
      v18 = v48;
    }

    v16 += v18;
    if (!--v11)
    {
      return v10;
    }

    v50(v53, v16, v54);
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

uint64_t sub_26D1C0318(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07A0, &qword_26D22FF50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_26D1C0380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07A0, &qword_26D22FF50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_26D1C03F8()
{
  result = qword_2804E07A8;
  if (!qword_2804E07A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E07A8);
  }

  return result;
}

unint64_t sub_26D1C0470()
{
  result = qword_2804E07B8;
  if (!qword_2804E07B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E07B8);
  }

  return result;
}

unint64_t sub_26D1C04C8()
{
  result = qword_2804E07C0;
  if (!qword_2804E07C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E07C0);
  }

  return result;
}

void sub_26D1C051C(void *a1)
{
  v3 = sub_26D22D5D4();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v7 = sub_26D1E25A8();
  if (!v1)
  {
    v8 = sub_26D1C1064(v7, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

    sub_26D1C5A6C(v5, v8);

    sub_26D22D974();
  }
}

void sub_26D1C0654(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07D8, &qword_26D230180);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07E0, &qword_26D230188);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07E8, qword_26D230190);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v17 - v10;
  v12 = a1;
  v13 = sub_26D1E1120();
  if (v1)
  {
  }

  else
  {
    v14 = sub_26D1C1064(v13, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

    v15 = sub_26D1E25A8();

    v16 = sub_26D1C1064(v15, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

    v17[1] = sub_26D1E6610(1, v14);

    sub_26D1DBD04(2, v16, v11);
    sub_26D1DBD44(3, v16, v8);
    sub_26D1DC128(4, v16, v5);

    sub_26D22D964();
  }
}

void sub_26D1C09D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v4 = sub_26D22D6F4();
  v54 = *(v4 - 8);
  v55 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v46 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07C8, &qword_26D230178);
  MEMORY[0x28223BE20](v10 - 8);
  v56 = &v46 - v11;
  v12 = sub_26D22D514();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = a1;
  v20 = sub_26D1E1120();
  if (v2)
  {

    return;
  }

  v48 = v7;
  v49 = v16;
  v47 = v9;
  v50 = v18;
  v51 = v13;
  v52 = v12;
  v21 = sub_26D1C1064(v20, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v22 = v56;
  sub_26D1C98C4(0, v21, v56);

  v23 = v51;
  v24 = v52;
  if ((*(v51 + 48))(v22, 1, v52) == 1)
  {

    sub_26D1B950C(v22, &qword_2804E07C8, &qword_26D230178);
    (*(v54 + 104))(v53, *MEMORY[0x277CF2630], v55);
    return;
  }

  v25 = v50;
  (*(v23 + 32))(v50, v22, v24);
  v26 = v49;
  (*(v23 + 16))(v49, v25, v24);
  v27 = (*(v23 + 88))(v26, v24);
  v28 = v54;
  v29 = v55;
  v30 = v53;
  if (v27 == *MEMORY[0x277CF2350])
  {
    goto LABEL_7;
  }

  if (v27 == *MEMORY[0x277CF2348])
  {
    v32 = *&v19[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v31 = *&v19[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    if (v32 == 0x6574636172616863 && v31 == 0xEE00636974736972 || (sub_26D22E964() & 1) != 0)
    {
      v33 = v48;
      sub_26D1C0654(v19);

      (*(v23 + 8))(v50, v52);
      v34 = MEMORY[0x277CF2610];
LABEL_18:
      (*(v28 + 104))(v33, *v34, v29);
      (*(v28 + 32))(v30, v33, v29);
      return;
    }

    sub_26D1B7F48();
    swift_allocError();
    *v40 = v32;
    *(v40 + 8) = v31;
    *(v40 + 16) = 0;
    *(v40 + 24) = 0;
    swift_willThrow();

    v41 = v52;
    v42 = v50;

    (*(v23 + 8))(v42, v41);
  }

  else if (v27 == *MEMORY[0x277CF2338])
  {
    v36 = *&v19[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
    v35 = *&v19[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
    if (v36 == 0x6574636172616863 && v35 == 0xEE00636974736972 || (sub_26D22E964() & 1) != 0)
    {
      v33 = v47;
      sub_26D1C051C(v19);

      (*(v51 + 8))(v50, v24);
      v34 = MEMORY[0x277CF2628];
      goto LABEL_18;
    }

    sub_26D1B7F48();
    swift_allocError();
    *v43 = v36;
    *(v43 + 8) = v35;
    *(v43 + 16) = 0;
    *(v43 + 24) = 0;
    swift_willThrow();

    v45 = v50;
    v44 = v51;

    (*(v44 + 8))(v45, v24);
  }

  else
  {
    if (v27 == *MEMORY[0x277CF2340])
    {
LABEL_7:
      (*(v23 + 8))(v25, v24);

      (*(v28 + 104))(v30, *MEMORY[0x277CF2630], v29);
      return;
    }

    v37 = v25;
    v38 = v54;
    v39 = *(v23 + 8);
    v39(v37, v24);

    (*(v38 + 104))(v30, *MEMORY[0x277CF2630], v29);
    v39(v26, v24);
  }
}

void *sub_26D1C1064(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v14 = sub_26D1BDEEC(v10, v9);
    v15 = v5[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v17 = v13;
    if (v5[3] < v15 + v16)
    {
      a2();
      v5 = v38;
      v18 = sub_26D1BDEEC(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    if (v17)
    {

      v20 = v5[7];
      v21 = *(v20 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v14) = v21;
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = a5(0, *(v21 + 16) + 1, 1, v21);
        *(v20 + 8 * v14) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = a5(v23 > 1, v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v34 + 8 * v14) = v26;
      }

      *(v21 + 16) = v25;
      v8 = (v21 + 24 * v24);
      v8[4] = v10;
      v8[5] = v9;
      v8[6] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D22F360;
      *(v27 + 32) = v10;
      *(v27 + 40) = v9;
      *(v27 + 48) = v12;
      v5[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v5[6] + 16 * v14);
      *v28 = v10;
      v28[1] = v9;
      *(v5[7] + 8 * v14) = v27;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v5[2] = v31;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

void sub_26D1C12A8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07F8, &qword_26D2301B8);
  MEMORY[0x28223BE20](v4 - 8);
  v61 = v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0800, &unk_26D2301C0);
  MEMORY[0x28223BE20](v6 - 8);
  v62 = v45 - v7;
  v8 = sub_26D22DA14();
  v63 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07C8, &qword_26D230178);
  MEMORY[0x28223BE20](v11 - 8);
  v68 = v45 - v12;
  v13 = sub_26D22D514();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = v45 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = v45 - v21;
  v23 = a1;
  v24 = sub_26D1E1120();
  if (v2)
  {

    return;
  }

  v55 = v17;
  v56 = v20;
  v58 = v14;
  v59 = v23;
  v53 = v8;
  v54 = v10;
  v57 = v22;
  v25 = sub_26D1C1CB8(v24, sub_26D1E31AC, &qword_2804E07F0, &qword_26D230D00, sub_26D22B9C4);

  v26 = v68;
  sub_26D1CB2D0(0, 0, v25, v68);
  v27 = v58;
  v28 = v13;
  v29 = (*(v58 + 48))(v26, 1, v13);
  v30 = v59;
  if (v29 == 1)
  {

    sub_26D1B950C(v26, &qword_2804E07C8, &qword_26D230178);
  }

  else
  {
    (*(v27 + 32))(v57, v26, v13);
    v31 = v56;
    (*(v27 + 104))(v56, *MEMORY[0x277CF2350], v28);
    sub_26D1C1C60();
    sub_26D22E544();
    v68 = v28;
    sub_26D22E544();
    if (v66 == v64 && v67 == v65)
    {
      v32 = 1;
    }

    else
    {
      v32 = sub_26D22E964();
    }

    v33 = *(v27 + 8);
    v34 = v31;
    v35 = v68;
    v33(v34, v68);

    if (v32)
    {
      v37 = sub_26D1E25A8();

      v38 = sub_26D1C1CB8(v37, sub_26D1E3740, &qword_2804E07D0, &qword_26D230D80, sub_26D22BA58);

      (*(v58 + 16))(v55, v57, v68);
      v39 = sub_26D1CB448(1, 0, v25);
      v41 = v40;
      v58 = v39;
      LODWORD(v56) = sub_26D1E58CC(2, v25);
      v52 = sub_26D1E5B50(3, v25);
      v51 = sub_26D1E5B50(4, v25);
      v48 = sub_26D1E5B50(5, v25);
      v50 = v41;
      sub_26D1E5CC8(6, v25);
      v49 = v42;
      sub_26D1C68BC(7, v38);
      sub_26D1E5CC8(8, v25);
      sub_26D1DE150(9, v38, v62);
      v47 = sub_26D1E58CC(10, v25);
      sub_26D1CB5E8(11, 0, v25);
      v46 = sub_26D1CB5E8(12, 0, v25);
      v45[1] = v43;

      sub_26D1DE190(13, v38, v61);

      sub_26D22D5C4();
      v33(v57, v68);
      v44 = v59;

      return;
    }

    v33(v57, v35);
  }

  sub_26D1B7FCC();
  swift_allocError();
  *v36 = 0xD00000000000001BLL;
  *(v36 + 8) = 0x800000026D23AF30;
  *(v36 + 16) = 5;
  swift_willThrow();
}

unint64_t sub_26D1C1C60()
{
  result = qword_2804E0808;
  if (!qword_2804E0808)
  {
    sub_26D22D514();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0808);
  }

  return result;
}

void *sub_26D1C1CB8(uint64_t a1, void (*a2)(void), uint64_t *a3, uint64_t *a4, uint64_t (*a5)(BOOL, uint64_t, uint64_t, uint64_t))
{
  v5 = MEMORY[0x277D84F98];
  v38 = MEMORY[0x277D84F98];
  v6 = *(a1 + 16);
  if (!v6)
  {
    return v5;
  }

  for (i = (a1 + 48); ; i += 3)
  {
    v10 = *(i - 2);
    v9 = *(i - 1);
    v11 = *i;
    swift_bridgeObjectRetain_n();
    v12 = v11;
    v14 = sub_26D1BDEEC(v10, v9);
    v15 = v5[2];
    v16 = (v13 & 1) == 0;
    if (__OFADD__(v15, v16))
    {
      break;
    }

    v17 = v13;
    if (v5[3] < v15 + v16)
    {
      a2();
      v5 = v38;
      v18 = sub_26D1BDEEC(v10, v9);
      if ((v17 & 1) != (v19 & 1))
      {
        goto LABEL_19;
      }

      v14 = v18;
    }

    if (v17)
    {

      v20 = v5[7];
      v21 = *(v20 + 8 * v14);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v20 + 8 * v14) = v21;
      v34 = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v21 = a5(0, *(v21 + 16) + 1, 1, v21);
        *(v20 + 8 * v14) = v21;
      }

      v24 = *(v21 + 16);
      v23 = *(v21 + 24);
      v25 = v24 + 1;
      if (v24 >= v23 >> 1)
      {
        v26 = a5(v23 > 1, v24 + 1, 1, v21);
        v25 = v24 + 1;
        v21 = v26;
        *(v34 + 8 * v14) = v26;
      }

      *(v21 + 16) = v25;
      v8 = (v21 + 24 * v24);
      v8[4] = v10;
      v8[5] = v9;
      v8[6] = v12;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
      v27 = swift_allocObject();
      *(v27 + 16) = xmmword_26D22F360;
      *(v27 + 32) = v10;
      *(v27 + 40) = v9;
      *(v27 + 48) = v12;
      v5[(v14 >> 6) + 8] |= 1 << v14;
      v28 = (v5[6] + 16 * v14);
      *v28 = v10;
      v28[1] = v9;
      *(v5[7] + 8 * v14) = v27;
      v29 = v5[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      v5[2] = v31;
    }

    if (!--v6)
    {
      return v5;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_26D22E984();
  __break(1u);
  return result;
}

void sub_26D1C1EFC(void *a1)
{
  v3 = sub_26D1E1E00();
  if (!v1)
  {
    v4 = v3[2];
    if (v4)
    {
      v13 = MEMORY[0x277D84F90];
      v5 = v3;
      sub_26D1E488C(0, v4, 0);
      v6 = v5 + 5;
      do
      {
        v7 = *(v6 - 1);
        v8 = *v6;
        v10 = *(v13 + 16);
        v9 = *(v13 + 24);

        if (v10 >= v9 >> 1)
        {
          sub_26D1E488C((v9 > 1), v10 + 1, 1);
        }

        *(v13 + 16) = v10 + 1;
        v11 = v13 + 16 * v10;
        *(v11 + 32) = v7;
        *(v11 + 40) = v8;
        v6 += 2;
        --v4;
      }

      while (v4);

      if (*(v13 + 16))
      {
        goto LABEL_8;
      }
    }

    else
    {

      if (*(MEMORY[0x277D84F90] + 16))
      {
LABEL_8:
        sub_26D22DA04();
        goto LABEL_11;
      }
    }

    sub_26D1B7FCC();
    swift_allocError();
    *v12 = xmmword_26D2301D0;
    *(v12 + 16) = 3;
    swift_willThrow();
  }

LABEL_11:
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_26D1C2088(uint64_t a1, int a2)
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

uint64_t sub_26D1C20D0(uint64_t result, int a2, int a3)
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

unint64_t sub_26D1C213C()
{
  result = qword_2804E0810;
  if (!qword_2804E0810)
  {
    sub_26D22D4F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0810);
  }

  return result;
}

unint64_t sub_26D1C21DC()
{
  result = qword_2804E0818;
  if (!qword_2804E0818)
  {
    sub_26D22E294();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0818);
  }

  return result;
}

uint64_t sub_26D1C225C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656D69746566696CLL;
  }

  else
  {
    v3 = 1684632674;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x656D69746566696CLL;
  }

  else
  {
    v5 = 1684632674;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26D22E964();
  }

  return v8 & 1;
}

uint64_t sub_26D1C22FC()
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1C2378(uint64_t a1)
{
  sub_26D22E454();
}

uint64_t sub_26D1C23E0(uint64_t a1)
{
  sub_26D22E9E4();
  sub_26D22E454();

  return sub_26D22EA04();
}

uint64_t sub_26D1C2458@<X0>(char *a2@<X8>)
{
  v3 = sub_26D22E854();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_26D1C24B8(uint64_t *a1@<X8>)
{
  v2 = 1684632674;
  if (*v1)
  {
    v2 = 0x656D69746566696CLL;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

void sub_26D1C24F0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v4 = sub_26D22CE34();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v32 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v32 - v12;
  KeyPath = swift_getKeyPath();
  v15 = a1;
  v16 = sub_26D1BAA28(KeyPath, v15);

  v17 = sub_26D1DE740(0, v16);
  if (v2)
  {

    goto LABEL_3;
  }

  v18 = v17;
  v34 = v5;
  v35 = v8;
  v32 = v11;
  v33 = v13;
  if (!v17)
  {

    sub_26D1B7F48();
    swift_allocError();
    v21 = xmmword_26D230320;
LABEL_8:
    *v20 = v21;
    *(v20 + 16) = 0;
    *(v20 + 24) = 1;
    swift_willThrow();
    goto LABEL_3;
  }

  v19 = &v17[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  if (!*(v19 + 1))
  {

    sub_26D1B7F48();
    swift_allocError();
    v22 = MEMORY[0x277D837D0];
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    *v23 = v22;
    *(v23 + 24) = 5;
    swift_willThrow();

    goto LABEL_3;
  }

  v24 = sub_26D1DE740(1, v16);

  if (!v24)
  {

    sub_26D1B7F48();
    swift_allocError();
    v21 = xmmword_26D230310;
    goto LABEL_8;
  }

  v25 = &v24[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_text];
  swift_beginAccess();
  v26 = v25[1];
  if (v26)
  {
    v27 = *v25;

    v28 = v35;
    sub_26D1BCF54(v27, v26, v35);

    v30 = *(v34 + 32);
    v31 = v32;
    v30(v32, v28, v4);
    v30(v33, v31, v4);
    sub_26D22D394();
  }

  else
  {

    sub_26D1B7F48();
    swift_allocError();
    *(v29 + 8) = 0;
    *(v29 + 16) = 0;
    *v29 = v4;
    *(v29 + 24) = 5;
    swift_willThrow();
  }

LABEL_3:
}

uint64_t _s13XMLCodingKeysOwet_2(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s13XMLCodingKeysOwst_2(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_26D1C2A38()
{
  result = qword_2804E0820;
  if (!qword_2804E0820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804E0820);
  }

  return result;
}

uint64_t sub_26D1C2A8C(char a1, char a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v4 + 16))
  {
    goto LABEL_11;
  }

  v6 = (a1 & 1) != 0 ? 0x65756C6176 : 1701667182;

  v7 = sub_26D1BDEEC(v6, v3);
  v9 = v8;

  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = (*(v4 + 56) + 16 * v7);
  v11 = *v10;
  v12 = v10[1];

  if ((a2 & 2) == 0)
  {
    return v11;
  }

  v14 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v14 = v11 & 0xFFFFFFFFFFFFLL;
  }

  if (v14)
  {
    return v11;
  }

LABEL_11:

  return 0;
}

uint64_t sub_26D1C2B9C(char a1, char a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (*(v4 + 16))
  {
    v6 = (a1 & 1) != 0 ? 0x65756C6176 : 1701667182;

    v7 = sub_26D1BDEEC(v6, v3);
    v9 = v8;

    if (v9)
    {
      v10 = (*(v4 + 56) + 16 * v7);
      v12 = *v10;
      v11 = v10[1];

      if ((a2 & 2) == 0)
      {
        return sub_26D1BA5CC(v12, v11) & 1;
      }

      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        return sub_26D1BA5CC(v12, v11) & 1;
      }
    }
  }

  return 2;
}

unint64_t sub_26D1C2CA4(char a1, char a2, uint64_t a3)
{
  if (a1)
  {
    v3 = 0xE500000000000000;
  }

  else
  {
    v3 = 0xE400000000000000;
  }

  v4 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (*(v4 + 16))
  {
    v6 = (a1 & 1) != 0 ? 0x65756C6176 : 1701667182;

    v7 = sub_26D1BDEEC(v6, v3);
    v9 = v8;

    if (v9)
    {
      v10 = (*(v4 + 56) + 16 * v7);
      v12 = *v10;
      v11 = v10[1];

      if ((a2 & 2) == 0)
      {
        return sub_26D1BA284(v12, v11);
      }

      v13 = HIBYTE(v11) & 0xF;
      if ((v11 & 0x2000000000000000) == 0)
      {
        v13 = v12 & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        return sub_26D1BA284(v12, v11);
      }
    }
  }

  return 0;
}

uint64_t sub_26D1C2DB8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08A8, &qword_26D2304D8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v31 - v11;
  if (a1)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  v14 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v14 + 16) || ((a1 & 1) == 0 ? (v15 = 1701667182) : (v15 = 0x65756C6176), , v16 = sub_26D1BDEEC(v15, v13), v18 = v17, , (v18 & 1) == 0))
  {

    v29 = sub_26D22D584();
    return (*(*(v29 - 8) + 56))(a4, 1, 1, v29);
  }

  v19 = (*(v14 + 56) + 16 * v16);
  v21 = *v19;
  v20 = v19[1];

  if ((a2 & 2) != 0)
  {
    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      v30 = sub_26D22D584();
      (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
    }
  }

  v23 = sub_26D1BA284(v21, v20);
  if (v5)
  {
  }

  v24 = v23;
  v25 = sub_26D22D584();
  v31[1] = v24;
  sub_26D1CC4AC(&qword_2804E08B0, MEMORY[0x277CF2470], MEMORY[0x277CF2478]);
  sub_26D22E554();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) == 1)
  {
    sub_26D1B950C(v12, &qword_2804E08A8, &qword_26D2304D8);
    sub_26D1B7F48();
    swift_allocError();
    *v27 = v21;
    *(v27 + 8) = v20;
    *(v27 + 16) = 0;
    *(v27 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    (*(v26 + 32))(a4, v12, v25);
    return (*(v26 + 56))(a4, 0, 1, v25);
  }
}

uint64_t sub_26D1C30FC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0898, &qword_26D230D70);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v31 - v11;
  if (a1)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  v14 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v14 + 16) || ((a1 & 1) == 0 ? (v15 = 1701667182) : (v15 = 0x65756C6176), , v16 = sub_26D1BDEEC(v15, v13), v18 = v17, , (v18 & 1) == 0))
  {

    v29 = sub_26D22D824();
    return (*(*(v29 - 8) + 56))(a4, 1, 1, v29);
  }

  v19 = (*(v14 + 56) + 16 * v16);
  v21 = *v19;
  v20 = v19[1];

  if ((a2 & 2) != 0)
  {
    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      v30 = sub_26D22D824();
      (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
    }
  }

  v23 = sub_26D1BA284(v21, v20);
  if (v5)
  {
  }

  v24 = v23;
  v25 = sub_26D22D824();
  v31[1] = v24;
  sub_26D1CC4AC(&qword_2804E08A0, MEMORY[0x277CF28E0], MEMORY[0x277CF28E8]);
  sub_26D22E554();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) == 1)
  {
    sub_26D1B950C(v12, &qword_2804E0898, &qword_26D230D70);
    sub_26D1B7F48();
    swift_allocError();
    *v27 = v21;
    *(v27 + 8) = v20;
    *(v27 + 16) = 0;
    *(v27 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    (*(v26 + 32))(a4, v12, v25);
    return (*(v26 + 56))(a4, 0, 1, v25);
  }
}

uint64_t sub_26D1C3440@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08C8, &qword_26D2304E8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v31 - v11;
  if (a1)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  v14 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v14 + 16) || ((a1 & 1) == 0 ? (v15 = 1701667182) : (v15 = 0x65756C6176), , v16 = sub_26D1BDEEC(v15, v13), v18 = v17, , (v18 & 1) == 0))
  {

    v29 = sub_26D22D934();
    return (*(*(v29 - 8) + 56))(a4, 1, 1, v29);
  }

  v19 = (*(v14 + 56) + 16 * v16);
  v21 = *v19;
  v20 = v19[1];

  if ((a2 & 2) != 0)
  {
    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      v30 = sub_26D22D934();
      (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
    }
  }

  v23 = sub_26D1BA284(v21, v20);
  if (v5)
  {
  }

  v24 = v23;
  v25 = sub_26D22D934();
  v31[1] = v24;
  sub_26D1CC4AC(&qword_2804E08D0, MEMORY[0x277CF2968], MEMORY[0x277CF2970]);
  sub_26D22E554();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) == 1)
  {
    sub_26D1B950C(v12, &qword_2804E08C8, &qword_26D2304E8);
    sub_26D1B7F48();
    swift_allocError();
    *v27 = v21;
    *(v27 + 8) = v20;
    *(v27 + 16) = 0;
    *(v27 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    (*(v26 + 32))(a4, v12, v25);
    return (*(v26 + 56))(a4, 0, 1, v25);
  }
}

uint64_t sub_26D1C3784@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0830, &qword_26D2304A8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - v9;
  if (a1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v12 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v12 + 16) || ((a1 & 1) == 0 ? (v13 = 1701667182) : (v13 = 0x65756C6176), , v14 = sub_26D1BDEEC(v13, v11), v16 = v15, , (v16 & 1) == 0))
  {

    v24 = sub_26D22D984();
    return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }

  v17 = (*(v12 + 56) + 16 * v14);
  v19 = *v17;
  v18 = v17[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v26 = sub_26D22D984();
    (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
  }

  else
  {
LABEL_13:
    v21 = sub_26D22D984();
    v27[0] = v19;
    v27[1] = v18;
    sub_26D1CC4AC(&qword_2804E0838, MEMORY[0x277CF2998], MEMORY[0x277CF29A0]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v10, 1, v21) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v22 + 32))(a4, v10, v21);
      return (*(v22 + 56))(a4, 0, 1, v21);
    }

    sub_26D1B950C(v10, &qword_2804E0830, &qword_26D2304A8);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = v19;
    *(v23 + 8) = v18;
    *(v23 + 16) = 0;
    *(v23 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C3AB8@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0840, &qword_26D2304B0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - v9;
  if (a1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v12 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v12 + 16) || ((a1 & 1) == 0 ? (v13 = 1701667182) : (v13 = 0x65756C6176), , v14 = sub_26D1BDEEC(v13, v11), v16 = v15, , (v16 & 1) == 0))
  {

    v24 = sub_26D22D9D4();
    return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }

  v17 = (*(v12 + 56) + 16 * v14);
  v19 = *v17;
  v18 = v17[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v26 = sub_26D22D9D4();
    (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
  }

  else
  {
LABEL_13:
    v21 = sub_26D22D9D4();
    v27[0] = v19;
    v27[1] = v18;
    sub_26D1CC4AC(&qword_2804E0848, MEMORY[0x277CF2A10], MEMORY[0x277CF2A18]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v10, 1, v21) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v22 + 32))(a4, v10, v21);
      return (*(v22 + 56))(a4, 0, 1, v21);
    }

    sub_26D1B950C(v10, &qword_2804E0840, &qword_26D2304B0);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = v19;
    *(v23 + 8) = v18;
    *(v23 + 16) = 0;
    *(v23 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C3DEC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0850, &qword_26D2304B8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - v9;
  if (a1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v12 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v12 + 16) || ((a1 & 1) == 0 ? (v13 = 1701667182) : (v13 = 0x65756C6176), , v14 = sub_26D1BDEEC(v13, v11), v16 = v15, , (v16 & 1) == 0))
  {

    v24 = sub_26D22D9A4();
    return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }

  v17 = (*(v12 + 56) + 16 * v14);
  v19 = *v17;
  v18 = v17[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v26 = sub_26D22D9A4();
    (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
  }

  else
  {
LABEL_13:
    v21 = sub_26D22D9A4();
    v27[0] = v19;
    v27[1] = v18;
    sub_26D1CC4AC(&qword_2804E0858, MEMORY[0x277CF29C8], MEMORY[0x277CF29D0]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v10, 1, v21) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v22 + 32))(a4, v10, v21);
      return (*(v22 + 56))(a4, 0, 1, v21);
    }

    sub_26D1B950C(v10, &qword_2804E0850, &qword_26D2304B8);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = v19;
    *(v23 + 8) = v18;
    *(v23 + 16) = 0;
    *(v23 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C4120@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0860, &qword_26D2304C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - v9;
  if (a1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v12 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v12 + 16) || ((a1 & 1) == 0 ? (v13 = 1701667182) : (v13 = 0x65756C6176), , v14 = sub_26D1BDEEC(v13, v11), v16 = v15, , (v16 & 1) == 0))
  {

    v24 = sub_26D22D9C4();
    return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }

  v17 = (*(v12 + 56) + 16 * v14);
  v19 = *v17;
  v18 = v17[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v26 = sub_26D22D9C4();
    (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
  }

  else
  {
LABEL_13:
    v21 = sub_26D22D9C4();
    v27[0] = v19;
    v27[1] = v18;
    sub_26D1CC4AC(&qword_2804E0868, MEMORY[0x277CF29F8], MEMORY[0x277CF2A00]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v10, 1, v21) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v22 + 32))(a4, v10, v21);
      return (*(v22 + 56))(a4, 0, 1, v21);
    }

    sub_26D1B950C(v10, &qword_2804E0860, &qword_26D2304C0);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = v19;
    *(v23 + 8) = v18;
    *(v23 + 16) = 0;
    *(v23 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C4454@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0870, &qword_26D2304C8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - v9;
  if (a1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v12 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v12 + 16) || ((a1 & 1) == 0 ? (v13 = 1701667182) : (v13 = 0x65756C6176), , v14 = sub_26D1BDEEC(v13, v11), v16 = v15, , (v16 & 1) == 0))
  {

    v24 = sub_26D22D9B4();
    return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }

  v17 = (*(v12 + 56) + 16 * v14);
  v19 = *v17;
  v18 = v17[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v26 = sub_26D22D9B4();
    (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
  }

  else
  {
LABEL_13:
    v21 = sub_26D22D9B4();
    v27[0] = v19;
    v27[1] = v18;
    sub_26D1CC4AC(&qword_2804E0878, MEMORY[0x277CF29E0], MEMORY[0x277CF29E8]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v10, 1, v21) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v22 + 32))(a4, v10, v21);
      return (*(v22 + 56))(a4, 0, 1, v21);
    }

    sub_26D1B950C(v10, &qword_2804E0870, &qword_26D2304C8);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = v19;
    *(v23 + 8) = v18;
    *(v23 + 16) = 0;
    *(v23 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C4788@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E0880, &qword_26D2304D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - v9;
  if (a1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v12 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v12 + 16) || ((a1 & 1) == 0 ? (v13 = 1701667182) : (v13 = 0x65756C6176), , v14 = sub_26D1BDEEC(v13, v11), v16 = v15, , (v16 & 1) == 0))
  {

    v24 = sub_26D22D994();
    return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }

  v17 = (*(v12 + 56) + 16 * v14);
  v19 = *v17;
  v18 = v17[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v26 = sub_26D22D994();
    (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
  }

  else
  {
LABEL_13:
    v21 = sub_26D22D994();
    v27[0] = v19;
    v27[1] = v18;
    sub_26D1CC4AC(&qword_2804E0888, MEMORY[0x277CF29B0], MEMORY[0x277CF29B8]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v10, 1, v21) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v22 + 32))(a4, v10, v21);
      return (*(v22 + 56))(a4, 0, 1, v21);
    }

    sub_26D1B950C(v10, &qword_2804E0880, &qword_26D2304D0);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = v19;
    *(v23 + 8) = v18;
    *(v23 + 16) = 0;
    *(v23 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C4ABC@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E07C8, &qword_26D230178);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v27 - v9;
  if (a1)
  {
    v11 = 0xE500000000000000;
  }

  else
  {
    v11 = 0xE400000000000000;
  }

  v12 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v12 + 16) || ((a1 & 1) == 0 ? (v13 = 1701667182) : (v13 = 0x65756C6176), , v14 = sub_26D1BDEEC(v13, v11), v16 = v15, , (v16 & 1) == 0))
  {

    v24 = sub_26D22D514();
    return (*(*(v24 - 8) + 56))(a4, 1, 1, v24);
  }

  v17 = (*(v12 + 56) + 16 * v14);
  v19 = *v17;
  v18 = v17[1];

  if ((a2 & 2) == 0)
  {
    goto LABEL_13;
  }

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v19 & 0xFFFFFFFFFFFFLL;
  }

  if (!v20)
  {
    v26 = sub_26D22D514();
    (*(*(v26 - 8) + 56))(a4, 1, 1, v26);
  }

  else
  {
LABEL_13:
    v21 = sub_26D22D514();
    v27[0] = v19;
    v27[1] = v18;
    sub_26D1CC4AC(&qword_2804E0808, MEMORY[0x277CF2358], MEMORY[0x277CF2360]);
    swift_bridgeObjectRetain_n();
    sub_26D22E554();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v10, 1, v21) != 1)
    {
      swift_bridgeObjectRelease_n();
      (*(v22 + 32))(a4, v10, v21);
      return (*(v22 + 56))(a4, 0, 1, v21);
    }

    sub_26D1B950C(v10, &qword_2804E07C8, &qword_26D230178);
    sub_26D1B7F48();
    swift_allocError();
    *v23 = v19;
    *(v23 + 8) = v18;
    *(v23 + 16) = 0;
    *(v23 + 24) = 3;
    swift_willThrow();
  }
}

uint64_t sub_26D1C4DF0@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08B8, &qword_26D2304E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v31 - v11;
  if (a1)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  v14 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v14 + 16) || ((a1 & 1) == 0 ? (v15 = 1701667182) : (v15 = 0x65756C6176), , v16 = sub_26D1BDEEC(v15, v13), v18 = v17, , (v18 & 1) == 0))
  {

    v29 = sub_26D22D6B4();
    return (*(*(v29 - 8) + 56))(a4, 1, 1, v29);
  }

  v19 = (*(v14 + 56) + 16 * v16);
  v21 = *v19;
  v20 = v19[1];

  if ((a2 & 2) != 0)
  {
    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      v30 = sub_26D22D6B4();
      (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
    }
  }

  v23 = sub_26D1BA284(v21, v20);
  if (v5)
  {
  }

  v24 = v23;
  v25 = sub_26D22D6B4();
  v31[1] = v24;
  sub_26D1CC4AC(&qword_2804E08C0, MEMORY[0x277CF2588], MEMORY[0x277CF2590]);
  sub_26D22E554();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) == 1)
  {
    sub_26D1B950C(v12, &qword_2804E08B8, &qword_26D2304E0);
    sub_26D1B7F48();
    swift_allocError();
    *v27 = v21;
    *(v27 + 8) = v20;
    *(v27 + 16) = 0;
    *(v27 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    (*(v26 + 32))(a4, v12, v25);
    return (*(v26 + 56))(a4, 0, 1, v25);
  }
}

uint64_t sub_26D1C5134@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E08D8, &qword_26D2304F0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v31 - v11;
  if (a1)
  {
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

  v14 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v14 + 16) || ((a1 & 1) == 0 ? (v15 = 1701667182) : (v15 = 0x65756C6176), , v16 = sub_26D1BDEEC(v15, v13), v18 = v17, , (v18 & 1) == 0))
  {

    v29 = sub_26D22D634();
    return (*(*(v29 - 8) + 56))(a4, 1, 1, v29);
  }

  v19 = (*(v14 + 56) + 16 * v16);
  v21 = *v19;
  v20 = v19[1];

  if ((a2 & 2) != 0)
  {
    v22 = HIBYTE(v20) & 0xF;
    if ((v20 & 0x2000000000000000) == 0)
    {
      v22 = v21 & 0xFFFFFFFFFFFFLL;
    }

    if (!v22)
    {
      v30 = sub_26D22D634();
      (*(*(v30 - 8) + 56))(a4, 1, 1, v30);
    }
  }

  v23 = sub_26D1BA284(v21, v20);
  if (v5)
  {
  }

  v24 = v23;
  v25 = sub_26D22D634();
  v31[1] = v24;
  sub_26D1CC4AC(&qword_2804E08E0, MEMORY[0x277CF2510], MEMORY[0x277CF2518]);
  sub_26D22E554();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v12, 1, v25) == 1)
  {
    sub_26D1B950C(v12, &qword_2804E08D8, &qword_26D2304F0);
    sub_26D1B7F48();
    swift_allocError();
    *v27 = v21;
    *(v27 + 8) = v20;
    *(v27 + 16) = 0;
    *(v27 + 24) = 3;
    return swift_willThrow();
  }

  else
  {

    (*(v26 + 32))(a4, v12, v25);
    return (*(v26 + 56))(a4, 0, 1, v25);
  }
}

uint64_t sub_26D1C5478@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t (*a6)(void)@<X5>, void (*a7)(uint64_t, unint64_t)@<X6>, uint64_t a8@<X8>)
{
  v36 = a7;
  v37 = a8;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  if (a1)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  v19 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (*(v19 + 16) && ((v35 = v8, (a1 & 1) == 0) ? (v20 = 1701667182) : (v20 = 0x65756C6176), , v21 = sub_26D1BDEEC(v20, v18), v23 = v22, , (v23 & 1) != 0))
  {
    v24 = (*(v19 + 56) + 16 * v21);
    v26 = *v24;
    v25 = v24[1];

    if ((a2 & 2) == 0)
    {
      goto LABEL_13;
    }

    v27 = HIBYTE(v25) & 0xF;
    if ((v25 & 0x2000000000000000) == 0)
    {
      v27 = v26 & 0xFFFFFFFFFFFFLL;
    }

    if (!v27)
    {
      v34 = a6(0);
      (*(*(v34 - 8) + 56))(v37, 1, 1, v34);
    }

    else
    {
LABEL_13:
      v36(v26, v25);
      v28 = a6(0);
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v17, 1, v28) == 1)
      {
        sub_26D1B950C(v17, a4, a5);
        sub_26D1B7F48();
        swift_allocError();
        *v30 = v26;
        *(v30 + 8) = v25;
        *(v30 + 16) = 0;
        *(v30 + 24) = 4;
        return swift_willThrow();
      }

      else
      {

        v33 = v37;
        (*(v29 + 32))(v37, v17, v28);
        return (*(v29 + 56))(v33, 0, 1, v28);
      }
    }
  }

  else
  {

    v32 = a6(0);
    return (*(*(v32 - 8) + 56))(v37, 1, 1, v32);
  }
}

uint64_t sub_26D1C578C(unsigned __int8 a1, char a2, uint64_t a3)
{
  v3 = 0xE600000000000000;
  v4 = 0x797469746E65;
  v5 = 0xE600000000000000;
  v6 = 0x737574617473;
  v7 = 0x800000026D23A210;
  v8 = 0xD000000000000014;
  if (a1 != 3)
  {
    v8 = 0x6574617473;
    v7 = 0xE500000000000000;
  }

  if (a1 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (a1)
  {
    v4 = 0x6465727265666572;
    v3 = 0xE800000000000000;
  }

  if (a1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (a1 <= 1u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  v11 = *(a3 + OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_attributes);
  if (!*(v11 + 16))
  {
    goto LABEL_17;
  }

  v13 = sub_26D1BDEEC(v9, v10);
  v15 = v14;

  if ((v15 & 1) == 0)
  {
    goto LABEL_17;
  }

  v16 = (*(v11 + 56) + 16 * v13);
  v17 = *v16;
  v18 = v16[1];

  if ((a2 & 2) == 0)
  {
    return v17;
  }

  v20 = HIBYTE(v18) & 0xF;
  if ((v18 & 0x2000000000000000) == 0)
  {
    v20 = v17 & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    return v17;
  }

LABEL_17:

  return 0;
}

uint64_t sub_26D1C5900(unsigned __int8 a1, uint64_t a2)
{
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 0x64692D707061;
    }

    else
    {
      v4 = 0x69766F72702D6469;
    }

    if (v3 == 1)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xEB00000000726564;
    }

    if (!*(a2 + 16))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v4 = 1852076390;
    if (!*(a2 + 16))
    {
      goto LABEL_13;
    }
  }

  v6 = sub_26D1BDEEC(v4, v5);
  if (v7)
  {
    v8 = *(*(a2 + 56) + 8 * v6);

    return v8;
  }

LABEL_13:

  return 0;
}

uint64_t sub_26D1C59C8(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE600000000000000;
  }

  else
  {
    v2 = 0xE700000000000000;
  }

  if (*(a2 + 16) && ((a1 & 1) == 0 ? (v4 = 0x544C5541464544) : (v4 = 0x524556524553), v5 = sub_26D1BDEEC(v4, v2), (v6 & 1) != 0))
  {
    v7 = *(*(a2 + 56) + 8 * v5);

    return v7;
  }

  else
  {

    return 0;
  }
}

void sub_26D1C5A6C(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  sub_26D1E5790(a2);
  v6 = v2;
  if (!v2)
  {
    if (v4)
    {
      v8 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name];
      v7 = *&v5[OBJC_IVAR____TtCV25TelephonyBlastDoorSupport13XMLTreeParser7Element_name + 8];
      v9 = v8 == 0x6574636172616863 && v7 == 0xEE00636974736972;
      if (v9 || (v10 = v5, v11 = sub_26D22E964(), v5 = v10, (v11 & 1) != 0))
      {
        v12 = v5;
        sub_26D1C12A8(v12, a1);

        return;
      }

      sub_26D1B7F48();
      v6 = swift_allocError();
      *v14 = v8;
      *(v14 + 8) = v7;
      *(v14 + 16) = 0;
      *(v14 + 24) = 0;
      swift_willThrow();
    }

    else
    {
      sub_26D1B7F48();
      v6 = swift_allocError();
      *v13 = xmmword_26D230440;
      *(v13 + 16) = 0;
      *(v13 + 24) = 1;
      swift_willThrow();
    }
  }

  v15 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804E04D8, &unk_26D22F490);
  if (swift_dynamicCast())
  {
    if (v20 == 7)
    {

      MEMORY[0x26D6B6C70]();

      sub_26D1B7F48();
      swift_allocError();
      *v16 = 0xD000000000000020;
      *(v16 + 8) = 0x800000026D23B070;
      *(v16 + 16) = v19;
      *(v16 + 24) = 7;
      swift_willThrow();

      return;
    }

    sub_26D1B7E60(v17, v18, v19, v20);
  }

  swift_willThrow();
}