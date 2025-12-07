uint64_t sub_249F759C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75A00()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75A68()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_249F75AD8()
{

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_249F75B48()
{

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_249F75BD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75C0C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75C48()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_249F75CA0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249F75CEC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_249F75D2C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75D70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75DEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75E24()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75E5C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_249F75EC4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249F75F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TargetType(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_249F75F6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TargetType(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t get_enum_tag_for_layout_string_18EcosystemAnalytics11LoadCommandVSg_0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id nm_signingInfo(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    staticCode = 0;
    v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:a1];
    if (SecStaticCodeCreateWithPath(v3, 0, &staticCode))
    {
      v4 = staticCode;
      if (staticCode)
      {
LABEL_4:
        CFRelease(v4);
      }
    }

    else
    {
      theDict = 0;
      v7 = SecCodeCopySigningInformation(staticCode, 2u, &theDict);
      CFRelease(staticCode);
      if (!v7)
      {
        if (a2 == 1)
        {
          v8 = CFDictionaryGetValue(theDict, *MEMORY[0x277CDC268]);
          v9 = v8;
          if (v8)
          {
            v5 = hexStringForData(v8);
          }

          else
          {
            v5 = 0;
          }
        }

        else if (a2)
        {
          v5 = 0;
        }

        else
        {
          v5 = CFDictionaryGetValue(theDict, *MEMORY[0x277CDC260]);
        }

        CFRelease(theDict);
        goto LABEL_6;
      }

      v4 = theDict;
      if (theDict)
      {
        goto LABEL_4;
      }
    }

    v5 = 0;
LABEL_6:

    goto LABEL_8;
  }

  v5 = 0;
LABEL_8:

  return v5;
}

id hexStringForData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 length], v4 = objc_msgSend(v2, "bytes"), (v5 = malloc_type_calloc((2 * v3) | 1, 1uLL, 0x3DC5581AuLL)) != 0))
  {
    v6 = v5;
    if (v3)
    {
      v7 = v5;
      do
      {
        v8 = *v4++;
        sprintf(v7, "%2.2x", v8);
        v7 += 2;
        --v3;
      }

      while (v3);
    }

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    free(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

void nm_systemstats_get_microstackshots(uint64_t a1, void *a2)
{
  v3 = a2;
  v2 = v3;
  systemstats_get_microstackshots();
}

uint64_t nm_macho_for_each_slice(void *a1, void *a2)
{
  v3 = a2;
  v4 = [a1 cStringUsingEncoding:4];
  callback[0] = MEMORY[0x277D85DD0];
  callback[1] = 3221225472;
  callback[2] = __nm_macho_for_each_slice_block_invoke;
  callback[3] = &unk_278FBF560;
  v9 = v3;
  v5 = v3;
  v6 = macho_for_each_slice(v4, callback);

  return v6;
}

uint64_t nm_macho_for_each_imported_symbol(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v3 = v6;
  v4 = macho_for_each_imported_symbol();

  return v4;
}

uint64_t nm_macho_for_each_dependent_dylib(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v3 = v6;
  v4 = macho_for_each_dependent_dylib();

  return v4;
}

uint64_t nm_macho_for_each_exported_symbol(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v3 = v6;
  v4 = macho_for_each_exported_symbol();

  return v4;
}

uint64_t nm_macho_for_each_defined_rpath(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = a3;
  v3 = v6;
  v4 = macho_for_each_defined_rpath();

  return v4;
}

id nm_dyld_get_uuid_for_header(uint64_t a1)
{
  v4[2] = *MEMORY[0x277D85DE8];
  v4[0] = 0;
  v4[1] = 0;
  v1 = 0;
  if (_dyld_get_image_uuid())
  {
    v2 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:v4];
    v1 = [v2 UUIDString];
  }

  return v1;
}

uint64_t MicrostackshotsCoordinator.__allocating_init(interruptCallback:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 40) = 1;
  *(result + 16) = a1;
  return result;
}

uint64_t MicrostackshotsCoordinator.init(interruptCallback:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 16) = a1;
  return v2;
}

uint64_t MicrostackshotsCoordinator.__allocating_init(interruptCallback:sendEvents:printTostdout:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  result = swift_allocObject();
  *(result + 24) = a2;
  *(result + 32) = 0;
  *(result + 16) = a1;
  *(result + 40) = a3;
  *(result + 41) = a4;
  return result;
}

uint64_t MicrostackshotsCoordinator.init(interruptCallback:sendEvents:printTostdout:)(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = 0;
  *(v4 + 16) = a1;
  *(v4 + 40) = a3;
  *(v4 + 41) = a4;
  return v4;
}

void sub_249F76830()
{
  v108 = type metadata accessor for TargetType(0);
  v105 = *(v108 - 8);
  v0 = MEMORY[0x28223BE20](v108);
  v106 = &v102 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v0);
  v107 = &v102 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v104 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v109 = &v102 - v6;
  v115 = sub_249F9A834();
  v112 = *(v115 - 8);
  v7 = MEMORY[0x28223BE20](v115);
  v110 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v111 = &v102 - v9;
  v10 = sub_249F9AA04();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_249F9ABB4();
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v15 = swift_allocObject();
  v119 = xmmword_249F9B920;
  *(v15 + 16) = xmmword_249F9B920;
  v16 = MEMORY[0x277D83C10];
  *(v15 + 56) = MEMORY[0x277D83B88];
  *(v15 + 64) = v16;
  *(v15 + 32) = 500;
  v117 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v17 = sub_249F9AC64();
  sub_249F9A874(v14, &dword_249F74000, v17, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Analyzing microstackshots until %d events are sent", v102);

  v121 = 0;
  v122 = 0xE000000000000000;
  sub_249F9AD14();

  v121 = 0xD000000000000020;
  v122 = 0x8000000249F9C940;
  v127[0] = 500;
  v18 = sub_249F9ADE4();
  MEMORY[0x24C20A200](v18);

  MEMORY[0x24C20A200](0xD000000000000010, 0x8000000249F9C970);
  sub_249F9A9F4();
  sub_249F7798C();
  v19 = sub_249F9ACA4();
  (*(v11 + 8))(v13, v10);

  if (v19)
  {
    nm_CRSetCrashLogMessage(v19 + 32);
  }

  type metadata accessor for AnalyticsRandomizer();
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D84F90];
  *(v20 + 16) = sub_249F790D0(MEMORY[0x277D84F90]);
  *(v20 + 40) = -1;
  v22 = sub_249F9ABB4();
  v23 = sub_249F9AC64();
  sub_249F9A874(v22, &dword_249F74000, v23, "EcosystemAnalytics.framework:AnalyticsRandomizer: Initializing AnalyticsRandomizer", 82, 2, v21);

  *(v20 + 24) = 0xD00000000000002DLL;
  *(v20 + 32) = 0x8000000249F9C990;
  v116 = v20;
  *(v20 + 40) = 500;
  v24 = sub_249F792D8();
  if (v24)
  {
    v25 = v24;
    *&v114 = *(v24 + 2);
    v103 = (v20 + 16);
    swift_beginAccess();
    v26 = 0;
    v113 = v25;
    while (1)
    {
      if (v114 == v26)
      {

        goto LABEL_12;
      }

      if (v26 >= *(v25 + 2))
      {
        break;
      }

      v27 = *&v25[4 * v26 + 32];
      v28 = *(v120 + 16);

      LOBYTE(v28) = v28(v29);

      if (v28)
      {

        v71 = sub_249F9ABA4();
        v72 = sub_249F9AC64();
        sub_249F9A874(v71, &dword_249F74000, v72, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Interrupted, stopping microstackshot analysis", 102, 2, MEMORY[0x277D84F90]);

        return;
      }

      ++v26;
      v30 = sub_249F9ABB4();
      v31 = swift_allocObject();
      *(v31 + 16) = v119;
      *(v31 + 56) = MEMORY[0x277D849A8];
      *(v31 + 64) = MEMORY[0x277D84A20];
      *(v31 + 32) = v27;
      v32 = v120;
      v33 = sub_249F9AC64();
      sub_249F9A874(v30, &dword_249F74000, v33, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Analyzing microstackshots for PID %d", v102);

      v34 = MEMORY[0x24C20A7A0]();
      v35 = v116;
      sub_249F779E0(v27, v116);
      objc_autoreleasePoolPop(v34);
      v36 = sub_249F9AB84();
      v37 = swift_allocObject();
      *(v37 + 16) = v119;
      v38 = *(v32 + 32);
      *(v37 + 56) = MEMORY[0x277D83B88];
      *(v37 + 64) = MEMORY[0x277D83C10];
      *(v37 + 32) = v38;
      v39 = sub_249F9AC64();
      v25 = v113;
      sub_249F9A874(v36, &dword_249F74000, v39, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Total number of symbols found in microstackshots: %d", v102);

      if (*(*(v35 + 16) + 16) >= 0x1F5uLL)
      {

        sub_249F864E4();
        v41 = v40;
        v42 = sub_249F9ABB4();
        v43 = swift_allocObject();
        *(v43 + 16) = v119;
        *(v43 + 56) = MEMORY[0x277D83B88];
        *(v43 + 64) = MEMORY[0x277D83C10];
        *(v43 + 32) = v41;
        v44 = sub_249F9AC64();
        sub_249F9A874(v42, &dword_249F74000, v44, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Number of events: %d", v102);

        return;
      }
    }

    __break(1u);
  }

  else
  {
    v45 = sub_249F9ABB4();
    v46 = sub_249F9AC64();
    sub_249F9A874(v45, &dword_249F74000, v46, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Appears there are no currently running 3rd party apps", 110, 2, MEMORY[0x277D84F90]);

LABEL_12:
    v47 = sub_249F9ABB4();
    v48 = sub_249F9AC64();
    sub_249F9A874(v47, &dword_249F74000, v48, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Looking at historical MSS", 82, 2, MEMORY[0x277D84F90]);

    v49 = v111;
    sub_249F9A824();
    swift_beginAccess();
    v113 = (v112 + 40);
    v50 = 6;
    v114 = xmmword_249F9B930;
    v51 = v110;
    while (1)
    {
      v52 = *(v120 + 16);

      LOBYTE(v52) = v52(v53);

      if (v52)
      {
        break;
      }

      sub_249F9A7F4();
      v54 = sub_249F9ABB4();
      v55 = swift_allocObject();
      *(v55 + 16) = v114;
      v56 = sub_249F9A814();
      v58 = v57;
      v59 = MEMORY[0x277D837D0];
      *(v55 + 56) = MEMORY[0x277D837D0];
      v60 = sub_249F7A16C();
      *(v55 + 64) = v60;
      *(v55 + 32) = v56;
      *(v55 + 40) = v58;
      v61 = sub_249F9A814();
      *(v55 + 96) = v59;
      *(v55 + 104) = v60;
      *(v55 + 72) = v61;
      *(v55 + 80) = v62;
      v63 = sub_249F9AC64();
      sub_249F9A874(v54, &dword_249F74000, v63, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Analyzing microstackshots from %s backwards to %s", v102, v103);

      v64 = MEMORY[0x24C20A7A0]();
      v65 = v116;
      v66 = v120;
      sub_249F77F90(v49, v116, 600.0);
      objc_autoreleasePoolPop(v64);
      v67 = sub_249F9ABB4();
      v68 = swift_allocObject();
      *(v68 + 16) = v119;
      v69 = *(v66 + 32);
      *(v68 + 56) = MEMORY[0x277D83B88];
      *(v68 + 64) = MEMORY[0x277D83C10];
      *(v68 + 32) = v69;
      v70 = sub_249F9AC64();
      sub_249F9A874(v67, &dword_249F74000, v70, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Number of symbols found: %d", v102);

      if (*(*(v65 + 16) + 16) >= 0x1F4uLL)
      {
        (*(v112 + 8))(v51, v115);
LABEL_22:
        sub_249F864E4();
        v84 = v83;
        v85 = sub_249F9ABB4();
        v86 = swift_allocObject();
        *(v86 + 16) = v119;
        *(v86 + 56) = MEMORY[0x277D83B88];
        *(v86 + 64) = MEMORY[0x277D83C10];
        *(v86 + 32) = v84;
        v87 = sub_249F9AC64();
        sub_249F9A874(v85, &dword_249F74000, v87, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Number of events: %d", v102);

        (*(v112 + 8))(v49, v115);
        return;
      }

      (*v113)(v49, v51, v115);
      if (!--v50)
      {
        goto LABEL_22;
      }
    }

    v73 = sub_249F9ABA4();
    v74 = sub_249F9AC64();
    sub_249F9A874(v73, &dword_249F74000, v74, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Interrupted, stopping microstackshot analysis", 102, 2, MEMORY[0x277D84F90]);

    v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB10, &unk_249F9B970) + 48);
    v76 = v109;
    (*(v112 + 16))(v109, v49, v115);
    *(v76 + v75) = 0x4082C00000000000;
    v77 = v108;
    swift_storeEnumTagMultiPayload();
    v78 = v105;
    (*(v105 + 56))(v76, 0, 1, v77);
    v79 = v76;
    v80 = v104;
    sub_249F7A914(v79, v104, &unk_27EF2CCC0, &unk_249F9B960);
    v81 = *(v78 + 48);
    if (v81(v80, 1, v77) == 1)
    {
      v82 = v107;
      swift_storeEnumTagMultiPayload();
      if (v81(v80, 1, v77) != 1)
      {
        sub_249F7A1C0(v80);
      }
    }

    else
    {
      v82 = v107;
      sub_249F7A2F8(v80, v107);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    *(inited + 72) = sub_249F9A9A4();
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
    v89 = sub_249F9A9A4();

    *(inited + 192) = v89;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    sub_249F7A228(v82, v106);
    sub_249F9AA14();
    v90 = sub_249F9A9A4();

    *(inited + 216) = v90;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v91 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v92 = sub_249F9ABA4();
    v93 = sub_249F9AC64();
    if (os_log_type_enabled(v93, v92))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v121 = v95;
      *v94 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v96 = sub_249F9A974();
      v98 = sub_249F78A30(v96, v97, &v121);

      *(v94 + 4) = v98;
      v82 = v107;
      _os_log_impl(&dword_249F74000, v93, v92, "Sending failure analysis event: %s)", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x24C20AE50](v95, -1, -1);
      MEMORY[0x24C20AE50](v94, -1, -1);
    }

    v99 = sub_249F9A9A4();
    v100 = swift_allocObject();
    *(v100 + 16) = v91;
    v125 = sub_249F7A28C;
    v126 = v100;
    v121 = MEMORY[0x277D85DD0];
    v122 = 1107296256;
    v123 = sub_249F77EF4;
    v124 = &block_descriptor;
    v101 = _Block_copy(&v121);

    AnalyticsSendEventLazy();
    _Block_release(v101);

    sub_249F7A714(v82, type metadata accessor for TargetType);
    sub_249F7A1C0(v109);
    (*(v112 + 8))(v111, v115);
  }
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

unint64_t sub_249F7798C()
{
  result = qword_27EF2CB00;
  if (!qword_27EF2CB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CB00);
  }

  return result;
}

uint64_t sub_249F779E0(int a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for AnalyzableTarget(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_249F9AA04();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_249F9AB84();
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v14 = sub_249F9AC64();
  sub_249F9A874(v13, &dword_249F74000, v14, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: analyzeMicrostackshots called", 86, 2, MEMORY[0x277D84F90]);

  v21[0] = 0xD00000000000002ALL;
  v21[1] = 0x8000000249F9CEB0;
  sub_249F9A9F4();
  sub_249F7798C();
  v15 = sub_249F9ACA4();
  (*(v10 + 8))(v12, v9);
  if (v15)
  {
    nm_CRSetCrashLogMessage(v15 + 32);
  }

  *v8 = a1;
  type metadata accessor for TargetType(0);
  swift_storeEnumTagMultiPayload();
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = a2;
  v18 = v3[2];
  v19 = v3[3];

  sub_249F99AE8(v8, sub_249F7A35C, v17, v18, v19);

  sub_249F7A714(v8, type metadata accessor for AnalyzableTarget);
  return v3[4];
}

uint64_t sub_249F77C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = *(result + 32);
    v7 = __OFADD__(v6, 1);
    v8 = v6 + 1;
    if (v7)
    {
      __break(1u);
      goto LABEL_16;
    }

    *(result + 32) = v8;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v9 = *(result + 40);

      if (v9 != 1)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

LABEL_7:
  if (a3)
  {
    sub_249F85FFC(a1);
  }

  else
  {
    v10 = sub_249F9A9A4();
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    v15[4] = sub_249F7A97C;
    v15[5] = v11;
    v15[0] = MEMORY[0x277D85DD0];
    v15[1] = 1107296256;
    v15[2] = sub_249F77EF4;
    v15[3] = &block_descriptor_29;
    v12 = _Block_copy(v15);

    AnalyticsSendEventLazy();
    _Block_release(v12);
  }

LABEL_10:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v13 = *(result + 41);

  if (v13 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB78, &unk_249F9BF40);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_249F9B920;
    *(v14 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB80, &qword_249F9BBE0);
    *(v14 + 32) = a1;

    sub_249F9AE54();
  }

  return result;
}

id sub_249F77EF4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
    v4 = sub_249F9A954();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_249F77F90(uint64_t a1, uint64_t a2, double a3)
{
  v4 = v3;
  v8 = type metadata accessor for AnalyzableTarget(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_249F9AA04();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_249F9AB84();
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v16 = sub_249F9AC64();
  sub_249F9A874(v15, &dword_249F74000, v16, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: analyzeMicrostackshotsBackwardsFrom called", 99, 2, MEMORY[0x277D84F90]);

  v25[0] = 0xD00000000000002BLL;
  v25[1] = 0x8000000249F9CFC0;
  sub_249F9A9F4();
  sub_249F7798C();
  v17 = sub_249F9ACA4();
  (*(v12 + 8))(v14, v11);
  if (v17)
  {
    nm_CRSetCrashLogMessage(v17 + 32);
  }

  v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB10, &unk_249F9B970) + 48);
  v19 = sub_249F9A834();
  (*(*(v19 - 8) + 16))(v10, a1, v19);
  *&v10[v18] = a3;
  type metadata accessor for TargetType(0);
  swift_storeEnumTagMultiPayload();
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = a2;
  v22 = *(v4 + 16);
  v23 = *(v4 + 24);

  sub_249F99AE8(v10, sub_249F7AA24, v21, v22, v23);

  return sub_249F7A714(v10, type metadata accessor for AnalyzableTarget);
}

uint64_t sub_249F7828C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = *(result + 32);
    v5 = __OFADD__(v4, 1);
    v6 = v4 + 1;
    if (v5)
    {
      __break(1u);
      goto LABEL_14;
    }

    *(result + 32) = v6;
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v7 = *(result + 40);

      if (v7 != 1)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

LABEL_7:
  sub_249F85FFC(a1);
LABEL_8:
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v8 = *(result + 41);

  if (v8 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB78, &unk_249F9BF40);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_249F9B920;
    *(v9 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB80, &qword_249F9BBE0);
    *(v9 + 32) = a1;

    sub_249F9AE54();
  }

  return result;
}

uint64_t MicrostackshotsCoordinator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_249F78488(uint64_t a1, id *a2)
{
  result = sub_249F9A9B4();
  *a2 = 0;
  return result;
}

uint64_t sub_249F78500(uint64_t a1, id *a2)
{
  v3 = sub_249F9A9C4();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_249F78580@<X0>(uint64_t *a1@<X8>)
{
  sub_249F9A9D4();
  v2 = sub_249F9A9A4();

  *a1 = v2;
  return result;
}

uint64_t sub_249F785C4()
{
  v0 = sub_249F9A9D4();
  v1 = MEMORY[0x24C20A2B0](v0);

  return v1;
}

uint64_t sub_249F78600(uint64_t a1)
{
  sub_249F9A9D4();
  sub_249F9AA34();
}

uint64_t sub_249F78654(uint64_t a1)
{
  sub_249F9A9D4();
  sub_249F9AE64();
  sub_249F9AA34();
  v1 = sub_249F9AE84();

  return v1;
}

BOOL sub_249F786C8(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_249F78744(void *a1, uint64_t *a2)
{
  v2 = sub_249F9A9D4();
  v4 = v3;
  if (v2 == sub_249F9A9D4() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_249F9ADF4();
  }

  return v7 & 1;
}

uint64_t sub_249F787E0@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_249F9A9A4();

  *a2 = v3;
  return result;
}

uint64_t sub_249F78828@<X0>(uint64_t *a1@<X8>)
{
  result = sub_249F9A9D4();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_249F78854(uint64_t a1)
{
  v2 = sub_249F7A89C(&qword_27EF2CB48, &unk_249F9BB28);
  v3 = sub_249F7A89C(&qword_27EF2CB50, &unk_249F9BAC8);
  v4 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FD8C8](a1, v2, v3, v4);
}

uint64_t sub_249F788EC(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

void *sub_249F78938(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB88, &qword_249F9BBE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_249F789D4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_249F78A30(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_249F78A30(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_249F78AFC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_249F7A984(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_249F78AFC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_249F78C08(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_249F9AD44();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_249F78C08(uint64_t a1, unint64_t a2)
{
  v3 = sub_249F78C54(a1, a2);
  sub_249F78D84(&unk_285D1E458);
  return v3;
}

void *sub_249F78C54(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_249F78938(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_249F9AD44();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_249F9AA84();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_249F78938(v10, 0);
        result = sub_249F9AD04();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_249F78D84(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_249F78E70(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_249F78E70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB88, &qword_249F9BBE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_249F78F64(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

void sub_249F78F74()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    v4 = 0;
    while (1)
    {
      v13 = 0;
      MEMORY[0x24C20AE60](&v13, 8);
      v6 = (v13 * v2) >> 64;
      if (v2 > v13 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v13 * v2)
        {
          do
          {
            v13 = 0;
            MEMORY[0x24C20AE60](&v13, 8);
          }

          while (v7 > v13 * v2);
          v6 = (v13 * v2) >> 64;
        }
      }

      v8 = v4 + v6;
      if (__OFADD__(v4, v6))
      {
        break;
      }

      if (v4 != v8)
      {
        v9 = *(v1 + 2);
        if (v4 >= v9)
        {
          goto LABEL_19;
        }

        if (v8 >= v9)
        {
          goto LABEL_20;
        }

        v10 = *&v1[4 * v4 + 32];
        v11 = *&v1[4 * v8 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_249F790BC(v1);
        }

        v12 = *(v1 + 2);
        if (v4 >= v12)
        {
          goto LABEL_21;
        }

        *&v1[4 * v4 + 32] = v11;
        if (v8 >= v12)
        {
          goto LABEL_22;
        }

        *&v1[4 * v8 + 32] = v10;
        *v0 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

unint64_t sub_249F790D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CBB0, &qword_249F9BC08);
    v3 = sub_249F9ADB4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_249F86B30(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_249F791D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB90, &unk_249F9BBF0);
    v3 = sub_249F9ADB4();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_249F86B30(v5, v6);
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

char *sub_249F792D8()
{
  v116 = *MEMORY[0x277D85DE8];
  v0 = type metadata accessor for TargetType(0);
  v107 = *(v0 - 8);
  v1 = MEMORY[0x28223BE20](v0);
  v3 = &v98 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v98 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v98 - v10;
  v12 = sub_249F9ABB4();
  v13 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v14 = sub_249F9AC64();
  sub_249F9A874(v12, &dword_249F74000, v14, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Getting list of 3rd party apps running on the system", 109, 2, MEMORY[0x277D84F90]);

  v15 = [objc_allocWithZone(MEMORY[0x277D46FB0]) init];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB98, &unk_249F9BF50);
  v16 = swift_allocObject();
  v100 = xmmword_249F9B920;
  *(v16 + 16) = xmmword_249F9B920;
  v108 = *MEMORY[0x277D0AC90];
  *(v16 + 32) = sub_249F9A9D4();
  *(v16 + 40) = v17;
  v18 = sub_249F9AB24();

  [v15 setEndowmentNamespaces_];

  [v15 setValues_];
  v19 = [objc_opt_self() predicateMatchingProcessTypeApplication];
  v20 = objc_opt_self();
  v110 = 0;
  v102 = v15;
  v21 = [v20 statesForPredicate:v19 withDescriptor:v15 error:&v110];
  v22 = v110;
  v103 = v13;
  if (v21)
  {
    v23 = v21;
    sub_249F7AA2C(0, &qword_27EF2CBA8, 0x277D46FA8);
    v24 = sub_249F9AB34();
    v25 = v22;

    v26 = (v24 & 0xFFFFFFFFFFFFFF8);
    if (v24 >> 62)
    {
      goto LABEL_56;
    }

    v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v24; v27; i = v24)
    {
      v28 = 0;
      v98 = 0;
      v29 = i & 0xC000000000000001;
      v30 = i + 32;
      v99 = MEMORY[0x277D84F90];
      v24 = 0x278FBF000uLL;
      v104 = v27;
      v105 = v26;
      v106 = (i + 32);
      v107 = i & 0xC000000000000001;
      while (1)
      {
        if (v29)
        {
          v31 = MEMORY[0x24C20A4F0](v28, i);
        }

        else
        {
          if (v28 >= v26[2])
          {
            goto LABEL_55;
          }

          v31 = *(v30 + 8 * v28);
        }

        v32 = v31;
        if (__OFADD__(v28++, 1))
        {
          break;
        }

        if ([v31 *(v24 + 1784)] == 4 && (v34 = objc_msgSend(v32, sel_endowmentNamespaces)) != 0)
        {
          v35 = v34;
          v36 = sub_249F9AB54();

          v37 = sub_249F9A9D4();
          v39 = v38;
          if (*(v36 + 16))
          {
            v40 = v37;
            v41 = v19;
            sub_249F9AE64();
            sub_249F9AA34();
            v42 = sub_249F9AE84();
            v43 = -1 << *(v36 + 32);
            v44 = v42 & ~v43;
            if (((*(v36 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
            {
LABEL_21:

              v19 = v41;
LABEL_39:
              v27 = v104;
              v26 = v105;
              goto LABEL_40;
            }

            v45 = ~v43;
            while (1)
            {
              v46 = (*(v36 + 48) + 16 * v44);
              v47 = *v46 == v40 && v46[1] == v39;
              if (v47 || (sub_249F9ADF4() & 1) != 0)
              {
                break;
              }

              v44 = (v44 + 1) & v45;
              if (((*(v36 + 56 + ((v44 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v44) & 1) == 0)
              {
                goto LABEL_21;
              }
            }

            v48 = [v32 process];
            v19 = v41;
            if (!v48)
            {

              goto LABEL_39;
            }

            v49 = v48;
            v50 = [v48 bundle];

            v27 = v104;
            v26 = v105;
            if (!v50 || (v51 = [v50 identifier], v50, !v51))
            {

              goto LABEL_40;
            }

            sub_249F9A9D4();

            v52 = [v32 process];
            if (!v52)
            {

              goto LABEL_23;
            }

            v53 = v52;
            v54 = [v52 pid];

            v55 = objc_allocWithZone(MEMORY[0x277CC1E70]);
            v56 = sub_249F9A9A4();

            v110 = 0;
            v57 = [v55 initWithBundleIdentifier:v56 allowPlaceholder:0 error:&v110];

            if (!v57)
            {
              v63 = v110;
              v64 = sub_249F9A714();

              swift_willThrow();
              v98 = 0;
              goto LABEL_40;
            }

            v58 = v110;
            v59 = [v57 developerType];

            v47 = v59 == 3;
            v30 = v106;
            v29 = v107;
            if (!v47)
            {
              goto LABEL_41;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v99 = sub_249F8E9E4(0, *(v99 + 2) + 1, 1, v99);
            }

            v61 = *(v99 + 2);
            v60 = *(v99 + 3);
            if (v61 >= v60 >> 1)
            {
              v99 = sub_249F8E9E4((v60 > 1), v61 + 1, 1, v99);
            }

            v62 = v99;
            *(v99 + 2) = v61 + 1;
            *&v62[4 * v61 + 32] = v54;
            v24 = 0x278FBF000;
            if (v28 == v27)
            {
              goto LABEL_58;
            }
          }

          else
          {

LABEL_23:

LABEL_40:
            v30 = v106;
            v29 = v107;
LABEL_41:
            v24 = 0x278FBF000;
            if (v28 == v27)
            {
              goto LABEL_58;
            }
          }
        }

        else
        {

          if (v28 == v27)
          {
            goto LABEL_58;
          }
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      v27 = sub_249F9AD84();
    }

    v99 = MEMORY[0x277D84F90];
LABEL_58:

    v88 = v99;
    v89 = *(v99 + 2);
    if (v89)
    {
      goto LABEL_59;
    }

LABEL_53:

    v90 = sub_249F9ABA4();
    v91 = sub_249F9AC64();
    sub_249F9A874(v90, &dword_249F74000, v91, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: No PIDs to analyze", 75, 2, MEMORY[0x277D84F90]);

    return 0;
  }

  v104 = v3;
  v108 = v5;
  v65 = v110;
  v66 = sub_249F9A714();

  swift_willThrow();
  v67 = sub_249F9ABA4();
  v68 = sub_249F9AC64();
  sub_249F9A874(v67, &dword_249F74000, v68, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Failed to get list of running 3rd party apps", 101, 2, MEMORY[0x277D84F90]);

  v69 = v107;
  (*(v107 + 56))(v11, 1, 1, v0);
  v110 = 0;
  v111 = 0xE000000000000000;
  sub_249F9AD14();
  MEMORY[0x24C20A200](0xD00000000000002ELL, 0x8000000249F9D0D0);
  v105 = v66;
  v109 = v66;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CBA0, &qword_249F9BC00);
  sub_249F9AD54();
  sub_249F7A914(v11, v9, &unk_27EF2CCC0, &unk_249F9B960);
  v70 = *(v69 + 48);
  v71 = v70(v9, 1, v0);
  v106 = v11;
  if (v71 == 1)
  {
    swift_storeEnumTagMultiPayload();
    if (v70(v9, 1, v0) != 1)
    {
      sub_249F7A1C0(v9);
    }
  }

  else
  {
    sub_249F7A2F8(v9, v108);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_249F9B940;
  *(inited + 32) = 0x74536E6F6D656164;
  *(inited + 40) = 0xEB00000000657461;
  *(inited + 48) = sub_249F9A9A4();
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x8000000249F9CCF0;
  v73 = sub_249F9A9A4();

  *(inited + 72) = v73;
  *(inited + 80) = 0x546572756C696166;
  *(inited + 88) = 0xEB00000000657079;
  *(inited + 96) = sub_249F9A9A4();
  strcpy((inited + 104), "targetBundleID");
  *(inited + 119) = -18;
  *(inited + 120) = sub_249F9A9A4();
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = 0x8000000249F9CD10;
  *(inited + 144) = sub_249F9A9A4();
  *(inited + 152) = 0x614E746567726174;
  *(inited + 160) = 0xEA0000000000656DLL;
  *(inited + 168) = sub_249F9A9A4();
  *(inited + 176) = 0x6150746567726174;
  *(inited + 184) = 0xEA00000000006874;
  sub_249F9A1B8(0x206E776F6E6B6E75, 0xEC00000068746170);
  v74 = sub_249F9A9A4();

  *(inited + 192) = v74;
  *(inited + 200) = 0x7954746567726174;
  *(inited + 208) = 0xEA00000000006570;
  v75 = v108;
  sub_249F7A228(v108, v104);
  sub_249F9AA14();
  v76 = sub_249F9A9A4();

  *(inited + 216) = v76;
  *(inited + 224) = 1701869940;
  *(inited + 232) = 0xE400000000000000;
  *(inited + 240) = sub_249F9AB64();
  strcpy((inited + 248), "failureRetries");
  *(inited + 263) = -18;
  *(inited + 264) = sub_249F9AB64();
  v77 = sub_249F791D4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
  swift_arrayDestroy();
  v78 = sub_249F9ABA4();
  v79 = sub_249F9AC64();
  if (os_log_type_enabled(v79, v78))
  {
    v80 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v110 = v81;
    *v80 = 136315138;
    sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
    v82 = sub_249F9A974();
    v84 = sub_249F78A30(v82, v83, &v110);
    v75 = v108;

    *(v80 + 4) = v84;
    _os_log_impl(&dword_249F74000, v79, v78, "Sending failure analysis event: %s)", v80, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x24C20AE50](v81, -1, -1);
    MEMORY[0x24C20AE50](v80, -1, -1);
  }

  v85 = sub_249F9A9A4();
  v86 = swift_allocObject();
  *(v86 + 16) = v77;
  v114 = sub_249F7ABC0;
  v115 = v86;
  v110 = MEMORY[0x277D85DD0];
  v111 = 1107296256;
  v112 = sub_249F77EF4;
  v113 = &block_descriptor_40;
  v87 = _Block_copy(&v110);

  AnalyticsSendEventLazy();
  _Block_release(v87);

  sub_249F7A714(v75, type metadata accessor for TargetType);
  sub_249F7A1C0(v106);
  v88 = MEMORY[0x277D84F90];
  v89 = *(MEMORY[0x277D84F90] + 16);
  if (!v89)
  {
    goto LABEL_53;
  }

LABEL_59:
  v93 = sub_249F9ABB4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v94 = swift_allocObject();
  v95 = MEMORY[0x277D83B88];
  *(v94 + 16) = v100;
  v96 = MEMORY[0x277D83C10];
  *(v94 + 56) = v95;
  *(v94 + 64) = v96;
  *(v94 + 32) = v89;
  v97 = sub_249F9AC64();
  sub_249F9A874(v93, &dword_249F74000, v97, "EcosystemAnalytics.framework:MicrostackshotsCoordinator: Found %d PIDs to analyze", v98);

  v110 = v88;
  sub_249F78F74();

  return v110;
}

unint64_t sub_249F7A16C()
{
  result = qword_27EF2CB08;
  if (!qword_27EF2CB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CB08);
  }

  return result;
}

uint64_t sub_249F7A1C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249F7A228(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TargetType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_249F7A2F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TargetType(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_249F7A364(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB68, &unk_249F9BF30);
  v3 = sub_249F9ADB4();

  v4 = *(a1 + 48);
  v32 = *(a1 + 32);
  v5 = *(a1 + 96);
  v6 = *(a1 + 128);
  v37 = *(a1 + 112);
  v38 = v6;
  v7 = *(a1 + 64);
  v8 = *(a1 + 80);
  v33 = v4;
  v34 = v7;
  v39 = *(a1 + 144);
  v35 = v8;
  v36 = v5;
  v10 = *(&v32 + 1);
  v9 = v32;
  sub_249F7A914(&v32, v31, &qword_27EF2CB70, &unk_249F9BBD0);
  result = sub_249F86B30(v9, v10);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = (a1 + 152);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v3[6] + 16 * result);
    *v14 = v9;
    v14[1] = v10;
    v15 = v3[7] + 104 * result;
    v16 = v33;
    v17 = v35;
    *(v15 + 16) = v34;
    *(v15 + 32) = v17;
    *v15 = v16;
    v18 = v36;
    v19 = v37;
    v20 = v38;
    *(v15 + 96) = v39;
    *(v15 + 64) = v19;
    *(v15 + 80) = v20;
    *(v15 + 48) = v18;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = v13[1];
    v32 = *v13;
    v25 = v13[4];
    v26 = v13[6];
    v37 = v13[5];
    v38 = v26;
    v27 = v13[2];
    v28 = v13[3];
    v33 = v24;
    v34 = v27;
    v29 = (v13 + 120);
    v39 = *(v13 + 14);
    v35 = v28;
    v36 = v25;
    v10 = *(&v32 + 1);
    v9 = v32;
    sub_249F7A914(&v32, v31, &qword_27EF2CB70, &unk_249F9BBD0);
    result = sub_249F86B30(v9, v10);
    v13 = v29;
    if (v30)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_249F7A53C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB58, &qword_249F9BBB8);
  v3 = sub_249F9ADB4();

  v4 = *(a1 + 144);
  v37 = *(a1 + 128);
  v38 = v4;
  v39 = *(a1 + 160);
  v5 = *(a1 + 48);
  v31 = *(a1 + 32);
  v32 = v5;
  v6 = *(a1 + 80);
  v33 = *(a1 + 64);
  v34 = v6;
  v7 = *(a1 + 112);
  v35 = *(a1 + 96);
  v36 = v7;
  v9 = *(&v31 + 1);
  v8 = v31;
  sub_249F7A914(&v31, v30, &qword_27EF2CB60, &unk_249F9BBC0);
  result = sub_249F86B30(v8, v9);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v12 = (a1 + 168);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v13 = (v3[6] + 16 * result);
    *v13 = v8;
    v13[1] = v9;
    v14 = v3[7] + 120 * result;
    v15 = v32;
    v16 = v33;
    v17 = v35;
    *(v14 + 32) = v34;
    *(v14 + 48) = v17;
    *v14 = v15;
    *(v14 + 16) = v16;
    v18 = v36;
    v19 = v37;
    v20 = v38;
    *(v14 + 112) = v39;
    *(v14 + 80) = v19;
    *(v14 + 96) = v20;
    *(v14 + 64) = v18;
    v21 = v3[2];
    v22 = __OFADD__(v21, 1);
    v23 = v21 + 1;
    if (v22)
    {
      break;
    }

    v3[2] = v23;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v24 = (v12 + 136);
    v25 = v12[7];
    v37 = v12[6];
    v38 = v25;
    v39 = *(v12 + 16);
    v26 = v12[1];
    v31 = *v12;
    v32 = v26;
    v27 = v12[3];
    v33 = v12[2];
    v34 = v27;
    v28 = v12[5];
    v35 = v12[4];
    v36 = v28;
    v9 = *(&v31 + 1);
    v8 = v31;
    sub_249F7A914(&v31, v30, &qword_27EF2CB60, &unk_249F9BBC0);
    result = sub_249F86B30(v8, v9);
    v12 = v24;
    if (v29)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_249F7A714(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_249F7A89C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URLResourceKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_249F7A914(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_249F7A984(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_249F7AA2C(uint64_t a1, unint64_t *a2, void *a3)
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

__n128 __swift_memcpy28_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_249F7AA8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 28))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249F7AAAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
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

  *(result + 28) = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_249F7AAFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_249F7AB1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

void sub_249F7AB58(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_249F7ABE0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 64))
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

uint64_t sub_249F7AC3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_249F7ACB0(uint64_t a1, uint64_t a2)
{
  v5 = sub_249F9A634();
  v46 = *(v5 - 8);
  v47 = v5;
  MEMORY[0x28223BE20](v5);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = a1;
  *(&v49 + 1) = a2;
  v51 = 47;
  v52 = 0xE100000000000000;
  v44 = sub_249F7798C();
  v7 = sub_249F9AC74();
  v8 = v7;
  v9 = 0xE000000000000000;
  v51 = 0;
  v52 = 0xE000000000000000;
  v10 = *(v7 + 16);
  if (v10)
  {
    v11 = 0;
    v12 = (v7 + 40);
    while (v11 < v8[2])
    {
      v2 = *(v12 - 1);
      v9 = *v12;
      *&v49 = 47;
      *(&v49 + 1) = 0xE100000000000000;

      MEMORY[0x24C20A200](v2, v9);
      MEMORY[0x24C20A200](v49, *(&v49 + 1));

      if (sub_249F9AAE4())
      {
        goto LABEL_8;
      }

      ++v11;
      v12 += 2;
      if (v10 == v11)
      {
        v2 = 0;
        v9 = 0xE000000000000000;
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v2 = 0;
LABEL_8:

  if ((v2 || v9 != 0xE000000000000000) && (sub_249F9ADF4() & 1) == 0)
  {
    v13 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
    v14 = sub_249F9A9A4();

    v8 = [v13 initWithPath_];

    if (!v8)
    {
      v49 = 0u;
      v50 = 0u;
      sub_249F7B2A0(&v49);
      goto LABEL_37;
    }

    v15 = [v8 infoDictionary];
    if (v15)
    {
      v16 = v15;
      v17 = sub_249F9A964();

      if (*(v17 + 16))
      {
        v18 = sub_249F86B30(0xD000000000000013, 0x8000000249F9D1B0);
        if (v19)
        {
          sub_249F7A984(*(v17 + 56) + 32 * v18, &v49);

          sub_249F7B2A0(&v49);
          v20 = [v8 infoDictionary];
          if (v20)
          {
            v21 = v20;
            v22 = sub_249F9A964();

            if (*(v22 + 16) && (v23 = sub_249F86B30(0xD000000000000013, 0x8000000249F9D1B0), (v24 & 1) != 0))
            {
              sub_249F7A984(*(v22 + 56) + 32 * v23, &v49);

              if (swift_dynamicCast())
              {
                goto LABEL_31;
              }
            }

            else
            {
            }
          }

          goto LABEL_24;
        }
      }
    }

    v49 = 0u;
    v50 = 0u;
    sub_249F7B2A0(&v49);
LABEL_24:
    v25 = [v8 infoDictionary];
    if (v25)
    {
      v26 = v25;
      v27 = sub_249F9A964();

      if (*(v27 + 16))
      {
        v28 = sub_249F86B30(0x656C646E75424643, 0xEC000000656D614ELL);
        if (v29)
        {
          sub_249F7A984(*(v27 + 56) + 32 * v28, &v49);

          sub_249F7B2A0(&v49);
          v30 = [v8 infoDictionary];
          if (!v30)
          {
            goto LABEL_45;
          }

          v31 = v30;
          v32 = sub_249F9A964();

          if (!*(v32 + 16) || (v33 = sub_249F86B30(0x656C646E75424643, 0xEC000000656D614ELL), (v34 & 1) == 0))
          {
LABEL_47:

            goto LABEL_38;
          }

          sub_249F7A984(*(v32 + 56) + 32 * v33, &v49);

          if ((swift_dynamicCast() & 1) == 0)
          {
LABEL_45:

            goto LABEL_38;
          }

LABEL_31:
          v35 = v48;
          v49 = v48;
          v36 = v45;
          sub_249F9A624();
          v37 = sub_249F9AC84();
          v39 = v38;
          (*(v46 + 8))(v36, v47);

          v40 = HIBYTE(v39) & 0xF;
          if ((v39 & 0x2000000000000000) == 0)
          {
            v40 = v37 & 0xFFFFFFFFFFFFLL;
          }

          if (v40)
          {
            v49 = v35;

            MEMORY[0x24C20A200](1886413102, 0xE400000000000000);

            v42 = *(&v49 + 1);
            v41 = v49;
            goto LABEL_39;
          }

          goto LABEL_47;
        }
      }
    }

LABEL_37:
    v49 = 0u;
    v50 = 0u;
    sub_249F7B2A0(&v49);
    goto LABEL_38;
  }

LABEL_38:
  v41 = 0;
  v42 = 0xE000000000000000;
LABEL_39:
  if (!v41 && v42 == 0xE000000000000000 || (sub_249F9ADF4() & 1) != 0)
  {
  }

  else
  {

    return v41;
  }

  return v2;
}

uint64_t sub_249F7B2A0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CBC8, &qword_249F9C510);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249F7B308@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  *&v42 = a1;
  *&v49 = a1;
  *(&v49 + 1) = a2;
  *&v45 = 47;
  *(&v45 + 1) = 0xE100000000000000;
  sub_249F7798C();
  *(&v42 + 1) = a2;

  result = sub_249F9AC74();
  v5 = result;
  v56 = 0;
  v57 = 0xE000000000000000;
  v6 = *(result + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (result + 40);
    while (1)
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
        return result;
      }

      v10 = *(v8 - 1);
      v9 = *v8;
      *&v49 = 47;
      *(&v49 + 1) = 0xE100000000000000;

      MEMORY[0x24C20A200](v10, v9);
      MEMORY[0x24C20A200](47, 0xE100000000000000);

      if (sub_249F9AAE4())
      {
        break;
      }

      ++v7;
      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_6;
      }
    }

    v11 = sub_249F9AB94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_249F9B920;
    *(v12 + 56) = MEMORY[0x277D837D0];
    *(v12 + 64) = sub_249F7A16C();
    *(v12 + 32) = v10;
    *(v12 + 40) = v9;
    sub_249F7B7E8();

    v13 = sub_249F9AC64();
    sub_249F9A874(v11, &dword_249F74000, v13, "EcosystemAnalytics.framework:AppBundleParser: AppName on disk: %{private}@", 74, 2, v12);

    if (v10)
    {
      goto LABEL_10;
    }
  }

  else
  {
LABEL_6:

    v9 = 0xE000000000000000;
  }

  if (v9 == 0xE000000000000000)
  {

LABEL_11:
    v15 = a3;

LABEL_12:
    v16 = 0;
    v17 = 0;
    goto LABEL_13;
  }

LABEL_10:
  v14 = sub_249F9ADF4();

  if (v14)
  {
    goto LABEL_11;
  }

  v25 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
  v26 = sub_249F9A9A4();

  v27 = [v25 initWithPath_];

  v15 = a3;
  if (!v27)
  {
    goto LABEL_12;
  }

  v28 = [v27 bundleIdentifier];
  if (v28)
  {
    v29 = v28;
    v16 = sub_249F9A9D4();
    v17 = v30;
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  v31 = [v27 infoDictionary];
  if (v31)
  {
    v32 = v31;
    v33 = sub_249F9A964();

    if (*(v33 + 16) && (v34 = sub_249F86B30(0xD00000000000001ALL, 0x8000000249F9D220), (v35 & 1) != 0))
    {
      sub_249F7A984(*(v33 + 56) + 32 * v34, &v49);

      if (swift_dynamicCast())
      {
        v19 = *(&v45 + 1);
        v18 = v45;

        goto LABEL_14;
      }
    }

    else
    {
    }
  }

  v36 = [v27 infoDictionary];
  if (v36)
  {
    v37 = v36;
    v38 = sub_249F9A964();

    if (*(v38 + 16))
    {
      v39 = sub_249F86B30(0x656C646E75424643, 0xEF6E6F6973726556);
      if (v40)
      {
        sub_249F7A984(*(v38 + 56) + 32 * v39, &v49);

        v41 = swift_dynamicCast();
        if (v41)
        {
          v18 = v45;
        }

        else
        {
          v18 = 0;
        }

        if (v41)
        {
          v19 = *(&v45 + 1);
        }

        else
        {
          v19 = 0;
        }

        goto LABEL_14;
      }
    }
  }

  else
  {
  }

LABEL_13:
  v18 = 0;
  v19 = 0;
LABEL_14:
  v20 = sub_249F7ACB0(v42, *(&v42 + 1));
  v22 = v21;

  v45 = v42;
  *&v46 = v16;
  *(&v46 + 1) = v17;
  *&v47 = v18;
  *(&v47 + 1) = v19;
  *&v48 = v20;
  *(&v48 + 1) = v22;
  v49 = v42;
  v50 = v16;
  v51 = v17;
  v52 = v18;
  v53 = v19;
  v54 = v20;
  v55 = v22;
  sub_249F7B834(&v45, v44);
  result = sub_249F7B86C(&v49);
  v23 = v46;
  *v15 = v45;
  v15[1] = v23;
  v24 = v48;
  v15[2] = v47;
  v15[3] = v24;
  return result;
}

unint64_t sub_249F7B7E8()
{
  result = qword_27EF2CC10;
  if (!qword_27EF2CC10)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EF2CC10);
  }

  return result;
}

uint64_t sub_249F7B8C4(uint64_t a1, uint64_t a2)
{
  sub_249F7E1BC();
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6++;
      v8 = MEMORY[0x24C20A7A0]();
      v9 = sub_249F7E828(v7);
      sub_249F7FB7C(v9);
      sub_249F80228(v10);

      [v9 symbolicate];
      [v9 postprocess];
      sub_249F7B9AC(a1, a2, v9);

      objc_autoreleasePoolPop(v8);
      --v5;
    }

    while (v5);
  }
}

void sub_249F7B9AC(uint64_t a1, uint64_t a2, void *a3)
{
  v208 = a2;
  v207 = a1;
  v192 = sub_249F9A864();
  v4 = *(v192 - 8);
  MEMORY[0x28223BE20](v192);
  v191 = &v166 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_249F7A364(MEMORY[0x277D84F90]);
  if ([a3 numSamples] < 1)
  {
    v215 = 0;
    v17 = 0;
    goto LABEL_109;
  }

  v6 = sub_249F9AB94();
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_249F9B920;
  v8 = [a3 tasksByUniquePid];
  v9 = sub_249F7AA2C(0, &qword_27EF2CC80, 0x277CCABB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CC88, &qword_249F9BDF8);
  v10 = sub_249F804C4();
  v11 = sub_249F9A964();

  v12 = *(v11 + 16);

  v13 = MEMORY[0x277D83C10];
  *(v7 + 56) = MEMORY[0x277D83B88];
  *(v7 + 64) = v13;
  *(v7 + 32) = v12;
  v183 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v14 = sub_249F9AC64();
  sub_249F9A874(v6, &dword_249F74000, v14, "EcosystemAnalytics.framework:MicrostackshotsParser: %d PIDs found in this set of microstackshots", v166);

  v15 = [a3 tasksByUniquePid];
  v194 = v9;
  v188 = v10;
  v16 = sub_249F9A964();

  v215 = 0;
  v17 = 0;
  v18 = 0;
  v19 = v16 + 64;
  v20 = 1 << *(v16 + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & *(v16 + 64);
  v23 = (v20 + 63) >> 6;
  v24 = 0x8000000249F9D500;
  v25 = 0x8000000249F9D520;
  v26 = (v4 + 8);
  v206 = &v216[2];
  v187 = xmmword_249F9BD20;
  v27 = xmmword_249F9B930;
LABEL_6:
  v28 = MEMORY[0x277D837D0];
  do
  {
    if (!v22)
    {
      do
      {
        v29 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_111;
        }

        if (v29 >= v23)
        {
          goto LABEL_108;
        }

        v22 = *(v19 + 8 * v29);
        ++v18;
      }

      while (!v22);
      v18 = v29;
    }

    v30 = *(*(v16 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v22)))));
    if (v30 >> 62)
    {
      v171 = v16;
      v32 = v19;
      v33 = v18;
      v34 = v23;
      v214 = v17;
      v35 = v24;
      v36 = v25;
      v37 = v26;
      v38 = v22;
      v178 = v27;
      v39 = v28;
      v180 = v30;
      v40 = sub_249F9AD84();
      v30 = v180;
      v28 = v39;
      v27 = v178;
      v22 = v38;
      v26 = v37;
      v25 = v36;
      v24 = v35;
      v17 = v214;
      v23 = v34;
      v18 = v33;
      v19 = v32;
      v31 = v40;
      v16 = v171;
    }

    else
    {
      v31 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v22 &= v22 - 1;
  }

  while (!v31);
  v178 = v27;
  v167 = v22;
  v168 = v23;
  v179 = v26;
  v180 = v30;
  v169 = v18;
  v170 = v19;
  v171 = v16;
  v182 = v30 & 0xC000000000000001;
  v176 = v30 & 0xFFFFFFFFFFFFFF8;
  v177 = v24;
  v174 = v25;
  v175 = v30 + 32;

  v41 = 0;
  v181 = v31;
  while (1)
  {
    if (v182)
    {
      v42 = MEMORY[0x24C20A4F0](v41, v180);
    }

    else
    {
      if (v41 >= *(v176 + 16))
      {
        goto LABEL_117;
      }

      v42 = *(v175 + 8 * v41);
    }

    v43 = v42;
    v44 = __OFADD__(v41, 1);
    v45 = v41 + 1;
    if (v44)
    {
      goto LABEL_116;
    }

    v46 = [v42 bundleIdentifier];
    v190 = v45;
    if (v46)
    {

      v47 = [v43 bundleIdentifier];
      if (!v47)
      {
        goto LABEL_118;
      }

      v48 = v47;
      v49 = sub_249F9A9D4();
      v51 = v50;

      v52 = HIBYTE(v51) & 0xF;
      if ((v51 & 0x2000000000000000) == 0)
      {
        v52 = v49 & 0xFFFFFFFFFFFFLL;
      }

      if (v52)
      {
        v53 = sub_249F9AB94();
        v54 = swift_allocObject();
        *(v54 + 16) = v178;
        v55 = [v43 mainBinaryPath];
        if (v55)
        {
          v56 = v55;
          v57 = sub_249F9A9D4();
          v59 = v58;
        }

        else
        {
          v57 = 0;
          v59 = 0;
        }

        v60 = MEMORY[0x277D837D0];
        *(v54 + 56) = MEMORY[0x277D837D0];
        v61 = sub_249F7A16C();
        *(v54 + 64) = v61;
        v62 = 0xD000000000000013;
        if (v59)
        {
          v62 = v57;
        }

        v63 = v177;
        if (v59)
        {
          v63 = v59;
        }

        *(v54 + 32) = v62;
        *(v54 + 40) = v63;
        v64 = [v43 bundleIdentifier];
        if (v64)
        {
          LODWORD(v214) = v53;
          v65 = v64;
          v66 = sub_249F9A9D4();
          v68 = v67;

          v69 = (v54 + 72);
          *(v54 + 96) = v60;
          *(v54 + 104) = v61;
          if (v68)
          {
            *v69 = v66;
            v53 = v214;
LABEL_41:
            *(v54 + 80) = v68;
            v70 = sub_249F9AC64();
            sub_249F9A874(v53, &dword_249F74000, v70, "EcosystemAnalytics.framework:MicrostackshotsParser: %@ - %@", 59, 2, v54);

            goto LABEL_42;
          }

          v53 = v214;
        }

        else
        {
          v69 = (v54 + 72);
          *(v54 + 96) = v60;
          *(v54 + 104) = v61;
        }

        *v69 = 0xD000000000000019;
        v68 = v174;
        goto LABEL_41;
      }
    }

LABEL_42:
    v71 = v43;
    v72 = [v71 mainBinaryPath];
    if (!v72)
    {

LABEL_108:

LABEL_109:

      sub_249F8052C(v215, v17);
      return;
    }

    v73 = v72;
    v212 = sub_249F9A9D4();
    v213 = v74;

    v75 = [v71 bundleIdentifier];
    if (v75)
    {
      v76 = v75;
      v77 = sub_249F9A9D4();
      v79 = v78;
    }

    else
    {
      v77 = 0;
      v79 = 0;
    }

    v211 = v71;
    v80 = [v71 bundleShortVersion];
    if (v80)
    {
      v81 = v80;
      v82 = sub_249F9A9D4();
      v84 = v83;
    }

    else
    {
      v82 = 0;
      v84 = 0;
    }

    v85 = v213;

    v86 = v212;
    v87 = sub_249F7ACB0(v212, v85);
    *&v222 = v86;
    *(&v222 + 1) = v85;
    *&v223 = v77;
    *(&v223 + 1) = v79;
    *&v224 = v82;
    *(&v224 + 1) = v84;
    *&v225 = v87;
    *(&v225 + 1) = v88;
    v220[0] = v86;
    v220[1] = v85;
    v220[2] = v77;
    v220[3] = v79;
    v220[4] = v82;
    v220[5] = v84;
    v220[6] = v87;
    v220[7] = v88;
    sub_249F7B834(&v222, v219);
    sub_249F7B86C(v220);
    type metadata accessor for MachOParser();
    swift_allocObject();

    v198 = sub_249F85C5C(v86, v85, sub_249F7C9A0, 0);
    v89 = [v211 mainBinary];
    if (v89)
    {
      v90 = v89;
      v91 = [v89 uuid];

      v92 = v191;
      sub_249F9A854();

      v210 = sub_249F9A844();
      v214 = v93;
      (*v179)(v92, v192);
    }

    else
    {
      v210 = 0;
      v214 = 0xE000000000000000;
    }

    v95 = v212;
    v94 = v213;
    v96 = sub_249F88BD4(v212, v213);
    v97 = sub_249F9A1B8(v95, v94);
    v99 = v98;

    v100 = sub_249F9A9A4();

    v101 = nm_extractTeamID(v100);

    if (v101)
    {
      v102 = sub_249F9A9D4();
      v104 = v103;
    }

    else
    {
      v102 = 0;
      v104 = 0xE000000000000000;
    }

    v105 = sub_249F9A9A4();

    v106 = nm_extractCDHash(v105);

    if (v106)
    {
      v107 = sub_249F9A9D4();
      v109 = v108;
    }

    else
    {
      v107 = 0;
      v109 = 0xE000000000000000;
    }

    v110 = sub_249F80F98();
    *&v226 = v210;
    *(&v226 + 1) = v214;
    if (v111)
    {
      v112 = v110;
    }

    else
    {
      v112 = 0;
    }

    v113 = 0xE000000000000000;
    if (v111)
    {
      v113 = v111;
    }

    v227 = v96;
    v228 = v97;
    v229 = v99;
    v230 = v102;
    v231 = v104;
    v232 = v107;
    v233 = v109;
    v234 = v112;
    v235 = v113;
    v236 = v187;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v219[0] = v221;
    v221 = 0x8000000000000000;
    sub_249F87A8C(&v226, v212, v213, isUniquelyReferenced_nonNull_native);
    v221 = *&v219[0];

    v115 = v211;
    v116 = [v211 threads];

    v193 = sub_249F7AA2C(0, &qword_27EF2CCA0, 0x277D4B468);
    v117 = sub_249F9A964();

    if ((v117 & 0xC000000000000001) != 0)
    {
      v118 = sub_249F9AD64();
      v119 = 0;
      v120 = 0;
      v121 = 0;
      v117 = v118 | 0x8000000000000000;
    }

    else
    {
      v122 = -1 << *(v117 + 32);
      v119 = v117 + 64;
      v120 = ~v122;
      v123 = -v122;
      v124 = v123 < 64 ? ~(-1 << v123) : -1;
      v121 = v124 & *(v117 + 64);
    }

    v125 = 0;
    v189 = v120;
    v126 = (v120 + 64) >> 6;
    v199 = v126;
LABEL_70:
    if (v117 < 0)
    {
      break;
    }

    v127 = v125;
    v128 = v121;
    v129 = v125;
    if (v121)
    {
LABEL_75:
      v203 = (v128 - 1) & v128;
      v204 = v129;
      v130 = (v129 << 9) | (8 * __clz(__rbit64(v128)));
      v131 = *(*(v117 + 56) + v130);
      v132 = *(*(v117 + 48) + v130);
      v133 = v131;
      if (v132)
      {
        goto LABEL_79;
      }
    }

    else
    {
      while (1)
      {
        v129 = v127 + 1;
        if (__OFADD__(v127, 1))
        {
          goto LABEL_112;
        }

        if (v129 >= v126)
        {
          break;
        }

        v128 = *(v119 + 8 * v129);
        ++v127;
        if (v128)
        {
          goto LABEL_75;
        }
      }
    }

LABEL_17:
    sub_249F8053C(v117);

    sub_249F7B86C(&v222);

    v41 = v190;
    if (v190 == v181)
    {

      v19 = v170;
      v16 = v171;
      v23 = v168;
      v18 = v169;
      v24 = v177;
      v25 = v174;
      v26 = v179;
      v22 = v167;
      v27 = v178;
      goto LABEL_6;
    }
  }

  v134 = sub_249F9AD74();
  if (!v134)
  {
    goto LABEL_17;
  }

  v136 = v135;
  v218[0] = v134;
  swift_dynamicCast();
  v132 = *&v219[0];
  v218[0] = v136;
  swift_dynamicCast();
  v133 = *&v219[0];
  v203 = v121;
  v204 = v125;
  if (!v132)
  {
    goto LABEL_17;
  }

LABEL_79:
  v201 = v132;
  v202 = v133;
  v137 = [v133 threadStates];
  sub_249F7AA2C(0, &qword_27EF2CCA8, 0x277D4B470);
  v138 = sub_249F9AB34();

  if (v138 >> 62)
  {
    v139 = sub_249F9AD84();
    v140 = v202;
    if (!v139)
    {
      goto LABEL_81;
    }
  }

  else
  {
    v139 = *((v138 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v140 = v202;
    if (!v139)
    {
LABEL_81:

      v121 = v203;
      v125 = v204;
      v126 = v199;
      goto LABEL_70;
    }
  }

  v195 = v139;
  v141.n128_f64[0] = sub_249F80544(v219);
  v142 = 0;
  v196 = v138;
  v197 = v138 & 0xC000000000000001;
  v185 = v138 + 32;
  v186 = v138 & 0xFFFFFFFFFFFFFF8;
  v172 = v119;
  v173 = v117;
  if ((v138 & 0xC000000000000001) != 0)
  {
LABEL_84:
    v143 = MEMORY[0x24C20A4F0](v142, v138, v141);
    goto LABEL_87;
  }

  while (2)
  {
    if (v142 >= *(v186 + 16))
    {
      goto LABEL_115;
    }

    v143 = *(v185 + 8 * v142);
LABEL_87:
    v205 = v143;
    v44 = __OFADD__(v142, 1);
    v144 = v142 + 1;
    if (v44)
    {
      goto LABEL_113;
    }

    v200 = v144;
    memcpy(v218, v219, sizeof(v218));
    v217 = 0;
    v145 = [v205 stack];
    sub_249F7AA2C(0, &qword_27EF2CCB0, 0x277D4B428);
    v146 = sub_249F9AB34();

    if (!(v146 >> 62))
    {
      v147 = *((v146 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v147)
      {
        break;
      }

      goto LABEL_101;
    }

    v147 = sub_249F9AD84();
    if (!v147)
    {
LABEL_101:

      memcpy(v216, v218, sizeof(v216));
      sub_249F806B8(v216, &qword_27EF2CCB8, &unk_249F9BE00);
      v142 = v200;
      if (v200 == v195)
      {

        v119 = v172;
        v117 = v173;
        v126 = v199;
        v121 = v203;
        v125 = v204;
        goto LABEL_70;
      }

      v138 = v196;
      if (v197)
      {
        goto LABEL_84;
      }

      continue;
    }

    break;
  }

  if (v147 < 1)
  {
    goto LABEL_114;
  }

  v148 = 0;
  v214 = v146 & 0xC000000000000001;
  v210 = v147;
  while (2)
  {
    if (v214)
    {
      v149 = MEMORY[0x24C20A4F0](v148, v146);
    }

    else
    {
      v149 = *(v146 + 8 * v148 + 32);
    }

    v150 = v149;
    v151 = [v149 instruction];
    if (!v151)
    {

      goto LABEL_93;
    }

    v152 = v151;
    v153 = swift_allocObject();
    v154 = v223;
    *(v153 + 40) = v222;
    *(v153 + 56) = v154;
    v155 = v225;
    *(v153 + 72) = v224;
    v156 = v212;
    v157 = v213;
    *(v153 + 16) = v150;
    *(v153 + 24) = v156;
    *(v153 + 32) = v157;
    *(v153 + 88) = v155;
    v158 = v211;
    *(v153 + 104) = &v221;
    *(v153 + 112) = v158;
    *(v153 + 120) = v218;
    v159 = v208;
    *(v153 + 128) = v207;
    *(v153 + 136) = v159;
    v160 = v17;
    v161 = v209;
    *(v153 + 144) = &v217;
    *(v153 + 152) = v161;
    v162 = v158;

    sub_249F7B834(&v222, v216);
    v163 = v150;

    sub_249F8052C(v215, v160);
    v164 = swift_allocObject();
    *(v164 + 16) = sub_249F80584;
    *(v164 + 24) = v153;
    v216[4] = sub_249F805C4;
    v216[5] = v164;
    v216[0] = MEMORY[0x277D85DD0];
    v216[1] = 1107296256;
    v216[2] = sub_249F7E140;
    v216[3] = &block_descriptor_51;
    v165 = _Block_copy(v216);

    [v152 enumerateSymbols_];

    _Block_release(v165);
    LOBYTE(v152) = swift_isEscapingClosureAtFileLocation();

    if ((v152 & 1) == 0)
    {
      v17 = v153;
      v215 = sub_249F80584;
      v147 = v210;
LABEL_93:
      if (v147 == ++v148)
      {
        goto LABEL_101;
      }

      continue;
    }

    break;
  }

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
}

uint64_t sub_249F7C9A8(char *a1, uint64_t a2, uint64_t a3, void *a4, char *a5, uint64_t a6, void *a7, void *a8, void *a9, uint64_t *a10, void (*a11)(__int128 *, void *), uint64_t a12, void *a13, uint64_t a14)
{
  v201 = a7;
  v202 = a5;
  v203 = a6;
  v198 = a1;
  v206 = type metadata accessor for TargetType(0);
  v199 = *(v206 - 8);
  v16 = MEMORY[0x28223BE20](v206);
  v205 = &v185 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v185 - v19;
  MEMORY[0x28223BE20](v18);
  v196 = &v185 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v25 = &v185 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v204 = &v185 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v195 = &v185 - v29;
  MEMORY[0x28223BE20](v28);
  v197 = &v185 - v30;
  v31 = sub_249F9A864();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v34 = &v185 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = [a4 instruction];
  v200 = v20;
  if (!v35)
  {
    goto LABEL_11;
  }

  v36 = v35;
  v37 = [v35 binary];

  if (!v37)
  {
    goto LABEL_11;
  }

  v38 = [v37 path];

  if (!v38)
  {
    goto LABEL_11;
  }

  v193 = sub_249F9A9D4();
  v194 = v39;

  v40 = [a4 instruction];
  if (!v40 || (v41 = v40, v42 = [v40 binary], v41, !v42))
  {

LABEL_11:
    v57 = v199;
    v58 = v201;
    v59 = v204;
    v60 = v206;
    (*(v199 + 56))(v204, 1, 1, v206);
    v202 = sub_249F9A1B8(v202, v203);
    v203 = v61;
    v63 = v58[6];
    v62 = v58[7];
    v65 = v58[2];
    v64 = v58[3];
    v66 = v58[4];
    v67 = v58[5];
    v198 = v66;
    sub_249F805EC(v59, v25);
    v68 = *(v57 + 48);
    if (v68(v25, 1, v60) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v68(v25, 1, v60) != 1)
      {
        sub_249F806B8(v25, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v25, v205);
    }

    v69 = 0x206E776F6E6B6E75;
    if (v62)
    {
      v69 = v63;
    }

    v199 = v69;
    if (v64)
    {
      v70 = v65;
    }

    else
    {
      v70 = 0xD000000000000011;
    }

    v71 = 0xD000000000000016;
    if (v67)
    {
      v71 = v198;
    }

    v197 = v70;
    v198 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_249F9B940;
    *(v72 + 32) = 0x74536E6F6D656164;
    v201 = (v72 + 32);
    *(v72 + 40) = 0xEB00000000657461;

    *(v72 + 48) = sub_249F9A9A4();
    *(v72 + 56) = 0xD000000000000012;
    *(v72 + 64) = 0x8000000249F9CCF0;
    *(v72 + 72) = sub_249F9A9A4();
    *(v72 + 80) = 0x546572756C696166;
    *(v72 + 88) = 0xEB00000000657079;
    *(v72 + 96) = sub_249F9A9A4();
    strcpy((v72 + 104), "targetBundleID");
    *(v72 + 119) = -18;
    v73 = sub_249F9A9A4();

    *(v72 + 120) = v73;
    *(v72 + 128) = 0xD000000000000013;
    *(v72 + 136) = 0x8000000249F9CD10;
    v74 = sub_249F9A9A4();

    *(v72 + 144) = v74;
    *(v72 + 152) = 0x614E746567726174;
    *(v72 + 160) = 0xEA0000000000656DLL;
    v75 = sub_249F9A9A4();

    *(v72 + 168) = v75;
    *(v72 + 176) = 0x6150746567726174;
    *(v72 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v202, v203);

    v76 = sub_249F9A9A4();

    *(v72 + 192) = v76;
    *(v72 + 200) = 0x7954746567726174;
    *(v72 + 208) = 0xEA00000000006570;
    v77 = v205;
    sub_249F7A228(v205, v200);
    sub_249F9AA14();
    v78 = sub_249F9A9A4();

    *(v72 + 216) = v78;
    *(v72 + 224) = 1701869940;
    *(v72 + 232) = 0xE400000000000000;
    *(v72 + 240) = sub_249F9AB64();
    strcpy((v72 + 248), "failureRetries");
    *(v72 + 263) = -18;
    *(v72 + 264) = sub_249F9AB64();
    v79 = sub_249F791D4(v72);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v80 = sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v81 = sub_249F9AC64();
    if (os_log_type_enabled(v81, v80))
    {
      v82 = swift_slowAlloc();
      v83 = swift_slowAlloc();
      *&v240 = v83;
      *v82 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v84 = sub_249F9A974();
      v86 = sub_249F78A30(v84, v85, &v240);

      *(v82 + 4) = v86;
      _os_log_impl(&dword_249F74000, v81, v80, "Sending failure analysis event: %s)", v82, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v83);
      MEMORY[0x24C20AE50](v83, -1, -1);
      MEMORY[0x24C20AE50](v82, -1, -1);
    }

    v87 = sub_249F9A9A4();
    v88 = swift_allocObject();
    *(v88 + 16) = v79;
    *&v242 = sub_249F7A28C;
    *(&v242 + 1) = v88;
    *&v240 = MEMORY[0x277D85DD0];
    *(&v240 + 1) = 1107296256;
    *&v241 = sub_249F77EF4;
    *(&v241 + 1) = &block_descriptor_57;
    v89 = _Block_copy(&v240);

    AnalyticsSendEventLazy();
    _Block_release(v89);

    sub_249F8065C(v77);
    v90 = v204;
    return sub_249F806B8(v90, &unk_27EF2CCC0, &unk_249F9B960);
  }

  v43 = [v42 uuid];

  sub_249F9A854();
  v204 = sub_249F9A844();
  v205 = v44;
  (*(v32 + 8))(v34, v31);
  v45 = v194;
  if (!*(*a8 + 16) || (v46 = a8, , sub_249F86B30(v193, v45), v48 = v47, , (v48 & 1) == 0))
  {
    type metadata accessor for MachOParser();
    swift_allocObject();

    v49 = v193;
    sub_249F85C5C(v193, v45, sub_249F7C9A0, 0);
    LODWORD(v192) = sub_249F88BD4(v202, v203);
    v50 = sub_249F9A1B8(v49, v45);
    v190 = v51;
    v191 = v50;

    v52 = sub_249F9A9A4();

    v53 = nm_extractTeamID(v52);

    if (v53)
    {
      v54 = sub_249F9A9D4();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0xE000000000000000;
    }

    v92 = sub_249F9A9A4();

    v93 = nm_extractCDHash(v92);

    if (v93)
    {
      v94 = sub_249F9A9D4();
      v96 = v95;
    }

    else
    {
      v94 = 0;
      v96 = 0xE000000000000000;
    }

    v97 = sub_249F80F98();
    if (v98)
    {
      v99 = v97;
    }

    else
    {
      v99 = 0;
    }

    v100 = 0xE000000000000000;
    if (v98)
    {
      v100 = v98;
    }

    v272[0] = v204;
    v272[1] = v205;
    v273 = v192;
    v274 = v191;
    v275 = v190;
    v276 = v54;
    v277 = v56;
    v278 = v94;
    v279 = v96;
    v280 = v99;
    v281 = v100;
    v282 = xmmword_249F9BD20;

    v45 = v194;
    v46 = a8;
    sub_249F85ADC(v272, v193, v194, &v240);

    v225[4] = v244;
    v225[5] = v245;
    *&v225[6] = v246;
    v225[0] = v240;
    v225[1] = v241;
    v225[3] = v243;
    v225[2] = v242;
    sub_249F806B8(v225, &qword_27EF2CCE0, &qword_249F9BE20);
  }

  if (!*(*v46 + 16) || (sub_249F86B30(v202, v203), (v101 & 1) == 0) || !*(*v46 + 16) || (result = sub_249F86B30(v193, v45), (v102 & 1) == 0))
  {
  }

  v103 = *v46;
  if (!*(*v46 + 16))
  {
    __break(1u);
    goto LABEL_81;
  }

  result = sub_249F86B30(v202, v203);
  if ((v104 & 1) == 0)
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v105 = *(v103 + 56) + 104 * result;
  v106 = *v105;
  v107 = *(v105 + 16);
  v228 = *(v105 + 32);
  v227 = v107;
  v108 = *(v105 + 48);
  v109 = *(v105 + 64);
  v110 = *(v105 + 80);
  v232 = *(v105 + 96);
  v231 = v110;
  v230 = v109;
  v229 = v108;
  v226 = v106;
  v111 = *v46;
  if (!*(*v46 + 16))
  {
LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  sub_249F80718(&v226, &v240);
  v112 = sub_249F86B30(v193, v45);
  v114 = v113;

  if ((v114 & 1) == 0)
  {
LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    return result;
  }

  v115 = *(v111 + 56) + 104 * v112;
  v117 = *(v115 + 16);
  v116 = *(v115 + 32);
  v233 = *v115;
  v234 = v117;
  v235 = v116;
  v118 = *(v115 + 48);
  v119 = *(v115 + 64);
  v120 = *(v115 + 80);
  v239 = *(v115 + 96);
  v238 = v120;
  v237 = v119;
  v236 = v118;
  sub_249F80718(&v233, &v240);
  v121 = v198;
  v122 = [v198 name];
  if (v122)
  {
    v123 = v122;
    v205 = sub_249F9A9D4();
    v192 = v124;
  }

  else
  {
    v205 = 0;
    v192 = 0xE000000000000000;
  }

  *&v240 = [v121 offsetIntoSegment];
  v204 = sub_249F9ADE4();
  v198 = v125;
  v126 = [a4 instruction];
  if (v126 && (v127 = v126, v128 = [v126 binary], v127, v128) && (v129 = objc_msgSend(v128, sel_path), v128, v129))
  {
    v130 = sub_249F9A9D4();
    v132 = v131;

    v133 = sub_249F9A1B8(v130, v132);
    v193 = v134;
    v194 = v133;
  }

  else
  {
    v193 = 0xE000000000000000;
    v194 = 0;
  }

  v135 = [a9 architectureString];
  if (v135)
  {
    v136 = v135;
    v137 = sub_249F9A9D4();
    v189 = v138;
    v190 = v137;
  }

  else
  {
    v189 = 0xE000000000000000;
    v190 = 0;
  }

  v191 = a13;
  v185 = a12;
  v186 = a11;
  memcpy(v225, a10, sizeof(v225));
  if (get_enum_tag_for_layout_string_18EcosystemAnalytics11LoadCommandVSg_0(v225) == 1)
  {
    v188 = 0;
    v139 = 0xE000000000000000;
  }

  else
  {
    v140 = a10[23];
    v188 = a10[22];
    v139 = v140;
  }

  memcpy(v224, a10, sizeof(v224));
  enum_tag_for_layout_string_18EcosystemAnalytics11LoadCommandVSg_0 = get_enum_tag_for_layout_string_18EcosystemAnalytics11LoadCommandVSg_0(v224);
  v187 = a10;
  if (enum_tag_for_layout_string_18EcosystemAnalytics11LoadCommandVSg_0 == 1)
  {
    v142 = 0;
    v143 = 0xE000000000000000;
  }

  else
  {
    v142 = *a10;
    v143 = a10[1];
  }

  v219 = v230;
  v220 = v231;
  v215 = v226;
  v216 = v227;
  v217 = v228;
  v218 = v229;
  v208 = v233;
  v209 = v234;
  v212 = v237;
  v213 = v238;
  v210 = v235;
  v211 = v236;
  v243 = v226;
  v244 = v227;
  v247 = v230;
  v248 = v231;
  v245 = v228;
  v246 = v229;
  v252 = v235;
  v251 = v234;
  v250 = v233;
  v221 = v232;
  v214 = v239;
  *&v240 = v205;
  v144 = v192;
  *(&v240 + 1) = v192;
  *&v241 = v204;
  *(&v241 + 1) = v198;
  *&v242 = v194;
  *(&v242 + 1) = v193;
  v249 = v232;
  v256 = v239;
  v255 = v238;
  v254 = v237;
  v253 = v236;
  v262 = 0u;
  v263 = 0u;
  v260 = 0u;
  v261 = 0u;
  v258 = 0u;
  v259 = 0u;
  v257 = 0u;
  v264 = 0;
  v145 = v189;
  v146 = v190;
  v265 = v190;
  v266 = v189;
  v267 = 1;
  v147 = v188;
  v268 = v188;
  v269 = v139;
  v270 = v142;
  v271 = v143;
  v186(&v240, v201);
  v222[7] = v219;
  v222[8] = v220;
  v222[3] = v215;
  v222[4] = v216;
  v222[5] = v217;
  v222[6] = v218;
  *(&v222[12] + 8) = v211;
  *(&v222[13] + 8) = v212;
  *(&v222[14] + 8) = v213;
  *(&v222[9] + 8) = v208;
  *(&v222[10] + 8) = v209;
  *&v222[0] = v205;
  *(&v222[0] + 1) = v144;
  *&v222[1] = v204;
  *(&v222[1] + 1) = v198;
  *&v222[2] = v194;
  *(&v222[2] + 1) = v193;
  *&v222[9] = v221;
  *(&v222[15] + 1) = v214;
  *(&v222[11] + 8) = v210;
  memset(&v222[16], 0, 120);
  *(&v222[23] + 1) = v146;
  *&v222[24] = v145;
  *(&v222[24] + 1) = 1;
  *&v222[25] = v147;
  *(&v222[25] + 1) = v139;
  *&v222[26] = v142;
  *(&v222[26] + 1) = v143;
  nullsub_1();
  memcpy(v223, v187, sizeof(v223));
  memcpy(v187, v222, 0x1B0uLL);
  result = sub_249F806B8(v223, &qword_27EF2CCB8, &unk_249F9BE00);
  if (__OFADD__(*v191, 1))
  {
    goto LABEL_84;
  }

  ++*v191;
  v148 = *(a14 + 24);

  LOBYTE(v148) = v148(v149);

  v150 = v206;
  if (v148)
  {
    v151 = sub_249F9ABA4();
    v205 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v152 = sub_249F9AC64();
    sub_249F9A874(v151, &dword_249F74000, v152, "EcosystemAnalytics.framework:MicrostackshotsParser: Interrupted, stopping microstackshot analysis", 97, 2, MEMORY[0x277D84F90], v185);

    v153 = v199;
    v154 = v197;
    (*(v199 + 56))(v197, 1, 1, v150);
    v203 = sub_249F9A1B8(v202, v203);
    v204 = v155;
    v157 = v201[6];
    v156 = v201[7];
    v158 = v201[3];
    v198 = v201[2];
    v159 = v201[5];
    v202 = v201[4];
    v160 = v154;
    v161 = v195;
    sub_249F805EC(v160, v195);
    v162 = *(v153 + 48);
    if (v162(v161, 1, v150) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v162(v161, 1, v150) != 1)
      {
        sub_249F806B8(v161, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v161, v196);
    }

    v163 = 0x206E776F6E6B6E75;
    if (v156)
    {
      v163 = v157;
    }

    v201 = v163;
    v164 = 0xEC000000656D616ELL;
    if (v156)
    {
      v164 = v156;
    }

    v199 = v164;
    v165 = 0xD000000000000011;
    if (v158)
    {
      v165 = v198;
    }

    v195 = v165;
    v166 = v202;
    if (!v159)
    {
      v166 = 0xD000000000000016;
    }

    v198 = v166;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v167 = swift_allocObject();
    *(v167 + 16) = xmmword_249F9B940;
    *(v167 + 32) = 0x74536E6F6D656164;
    v202 = (v167 + 32);
    *(v167 + 40) = 0xEB00000000657461;

    *(v167 + 48) = sub_249F9A9A4();
    *(v167 + 56) = 0xD000000000000012;
    *(v167 + 64) = 0x8000000249F9CCF0;
    *(v167 + 72) = sub_249F9A9A4();
    *(v167 + 80) = 0x546572756C696166;
    *(v167 + 88) = 0xEB00000000657079;
    *(v167 + 96) = sub_249F9A9A4();
    strcpy((v167 + 104), "targetBundleID");
    *(v167 + 119) = -18;
    v168 = sub_249F9A9A4();

    *(v167 + 120) = v168;
    *(v167 + 128) = 0xD000000000000013;
    *(v167 + 136) = 0x8000000249F9CD10;
    v169 = sub_249F9A9A4();

    *(v167 + 144) = v169;
    *(v167 + 152) = 0x614E746567726174;
    *(v167 + 160) = 0xEA0000000000656DLL;
    v170 = sub_249F9A9A4();

    *(v167 + 168) = v170;
    *(v167 + 176) = 0x6150746567726174;
    *(v167 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v203, v204);

    v171 = sub_249F9A9A4();

    *(v167 + 192) = v171;
    *(v167 + 200) = 0x7954746567726174;
    *(v167 + 208) = 0xEA00000000006570;
    v172 = v196;
    sub_249F7A228(v196, v200);
    sub_249F9AA14();
    v173 = sub_249F9A9A4();

    *(v167 + 216) = v173;
    *(v167 + 224) = 1701869940;
    *(v167 + 232) = 0xE400000000000000;
    *(v167 + 240) = sub_249F9AB64();
    strcpy((v167 + 248), "failureRetries");
    *(v167 + 263) = -18;
    *(v167 + 264) = sub_249F9AB64();
    v174 = sub_249F791D4(v167);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v175 = sub_249F9ABA4();
    v176 = sub_249F9AC64();
    if (os_log_type_enabled(v176, v175))
    {
      v177 = swift_slowAlloc();
      v178 = swift_slowAlloc();
      v207[0] = v178;
      *v177 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v179 = sub_249F9A974();
      v181 = sub_249F78A30(v179, v180, v207);

      *(v177 + 4) = v181;
      _os_log_impl(&dword_249F74000, v176, v175, "Sending failure analysis event: %s)", v177, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v178);
      MEMORY[0x24C20AE50](v178, -1, -1);
      MEMORY[0x24C20AE50](v177, -1, -1);
    }

    v182 = sub_249F9A9A4();
    v183 = swift_allocObject();
    *(v183 + 16) = v174;
    v207[4] = sub_249F7ABC0;
    v207[5] = v183;
    v207[0] = MEMORY[0x277D85DD0];
    v207[1] = 1107296256;
    v207[2] = sub_249F77EF4;
    v207[3] = &block_descriptor_64;
    v184 = _Block_copy(v207);

    AnalyticsSendEventLazy();
    _Block_release(v184);

    sub_249F8065C(v172);
    v90 = v197;
    return sub_249F806B8(v90, &unk_27EF2CCC0, &unk_249F9B960);
  }

  return result;
}

void sub_249F7E140(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  v8 = a2;
  v7 = a3;
  v6(v8, a3, a4);
}

void sub_249F7E1BC()
{
  v0 = sub_249F7E828(-1);
  [v0 postprocess];
  if ([v0 numSamples] < 1)
  {
LABEL_51:
  }

  else
  {
    v1 = sub_249F9AB94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_249F9B920;
    v3 = [v0 tasksByUniquePid];
    sub_249F7AA2C(0, &qword_27EF2CC80, 0x277CCABB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CC88, &qword_249F9BDF8);
    sub_249F804C4();
    v4 = sub_249F9A964();

    v5 = *(v4 + 16);

    v6 = MEMORY[0x277D83C10];
    *(v2 + 56) = MEMORY[0x277D83B88];
    *(v2 + 64) = v6;
    *(v2 + 32) = v5;
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v7 = sub_249F9AC64();
    sub_249F9A874(v1, &dword_249F74000, v7, "EcosystemAnalytics.framework:MicrostackshotsParser: %d PIDs found in this set of microstackshots", v62);

    v8 = [v0 tasksByUniquePid];
    v9 = sub_249F9A964();

    v10 = v9;
    v11 = 0;
    v12 = v9 + 64;
    v13 = 1 << *(v9 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v9 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = MEMORY[0x277D84F90];
    v18 = 0x8000000249F9D520;
    v19 = 0x278FBF000uLL;
LABEL_5:
    v20 = MEMORY[0x277D837D0];
LABEL_6:
    if (v15)
    {
      goto LABEL_11;
    }

    while (1)
    {
      v21 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v21 >= v16)
      {

        goto LABEL_51;
      }

      v15 = *(v12 + 8 * v21);
      ++v11;
      if (v15)
      {
        v11 = v21;
LABEL_11:
        v22 = *(*(v10 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v15)))));
        if (v22 >> 62)
        {
          v71 = v22;
          v24 = v10;
          v25 = v18;
          v26 = v20;
          v27 = sub_249F9AD84();
          v20 = v26;
          v18 = v25;
          v23 = v27;
          v10 = v24;
          v22 = v71;
        }

        else
        {
          v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v15 &= v15 - 1;
        if (v23)
        {
          v64 = v10;
          v65 = v18;
          v63 = v0;
          v73 = v22 & 0xC000000000000001;
          v69 = v22 & 0xFFFFFFFFFFFFFF8;

          v28 = 0;
          v72 = v22;
          v70 = v23;
          while (1)
          {
            if (v73)
            {
              v29 = MEMORY[0x24C20A4F0](v28, v22);
            }

            else
            {
              if (v28 >= *(v69 + 16))
              {
                goto LABEL_54;
              }

              v29 = *(v22 + 8 * v28 + 32);
            }

            v30 = v29;
            if (__OFADD__(v28, 1))
            {
              goto LABEL_53;
            }

            v74 = v28 + 1;
            v31 = [v29 *(v19 + 1864)];
            if (v31)
            {
              break;
            }

LABEL_17:
            ++v28;
            if (v74 == v23)
            {

              v0 = v63;
              v10 = v64;
              v18 = v65;
              goto LABEL_5;
            }
          }

          v32 = [v30 *(v19 + 1864)];
          if (!v32)
          {
            goto LABEL_55;
          }

          v33 = v32;
          v34 = sub_249F9A9D4();
          v36 = v35;

          v37 = HIBYTE(v36) & 0xF;
          if ((v36 & 0x2000000000000000) == 0)
          {
            v37 = v34 & 0xFFFFFFFFFFFFLL;
          }

          if (!v37)
          {
            goto LABEL_30;
          }

          v38 = [v30 bundleIdentifier];
          if (!v38)
          {
            goto LABEL_56;
          }

          v39 = v38;
          v40 = sub_249F9A9D4();
          v42 = v41;

          LOBYTE(v39) = sub_249F80848(0x6C7070612E6D6F63, 0xE900000000000065, v40, v42);

          if (v39)
          {
LABEL_30:

LABEL_48:
            v19 = 0x278FBF000;
            v22 = v72;
            v23 = v70;
            goto LABEL_17;
          }

          v68 = v17;
          v67 = sub_249F9AB94();
          v43 = swift_allocObject();
          *(v43 + 16) = xmmword_249F9B930;
          v44 = [v30 mainBinaryPath];
          if (v44)
          {
            v45 = v44;
            v46 = sub_249F9A9D4();
            v48 = v47;
          }

          else
          {
            v46 = 0;
            v48 = 0;
          }

          *(v43 + 56) = MEMORY[0x277D837D0];
          v49 = sub_249F7A16C();
          *(v43 + 64) = v49;
          v50 = 0xD000000000000013;
          if (v48)
          {
            v50 = v46;
          }

          v51 = 0x8000000249F9D500;
          if (v48)
          {
            v51 = v48;
          }

          *(v43 + 32) = v50;
          *(v43 + 40) = v51;
          v52 = [v30 bundleIdentifier];
          if (v52)
          {
            v53 = v52;
            v66 = sub_249F9A9D4();
            v55 = v54;

            v56 = (v43 + 72);
            *(v43 + 96) = MEMORY[0x277D837D0];
            *(v43 + 104) = v49;
            if (v55)
            {
              *v56 = v66;
              v57 = v67;
LABEL_43:
              *(v43 + 80) = v55;
              v58 = sub_249F9AC64();
              sub_249F9A874(v57, &dword_249F74000, v58, "EcosystemAnalytics.framework:MicrostackshotsParser: Found 3rd party code executing: %@ - %@", 91, 2, v43);

              v59 = [v30 pid];
              v17 = v68;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v17 = sub_249F8E9E4(0, *(v68 + 2) + 1, 1, v68);
              }

              v61 = *(v17 + 2);
              v60 = *(v17 + 3);
              if (v61 >= v60 >> 1)
              {
                v17 = sub_249F8E9E4((v60 > 1), v61 + 1, 1, v17);
              }

              *(v17 + 2) = v61 + 1;
              *&v17[4 * v61 + 32] = v59;
              goto LABEL_48;
            }
          }

          else
          {
            v56 = (v43 + 72);
            *(v43 + 96) = MEMORY[0x277D837D0];
            *(v43 + 104) = v49;
          }

          v57 = v67;
          *v56 = 0xD000000000000019;
          v55 = v65;
          goto LABEL_43;
        }

        goto LABEL_6;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
  }
}

id sub_249F7E828(int a1)
{
  LODWORD(v68) = a1;
  v75 = *MEMORY[0x277D85DE8];
  v62 = sub_249F9A834();
  v60 = *(v62 - 8);
  v1 = MEMORY[0x28223BE20](v62);
  v58 = &v54 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v59 = &v54 - v3;
  v67 = sub_249F9ABD4();
  v4 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_249F9ABC4();
  MEMORY[0x28223BE20](v7);
  v8 = sub_249F9A8D4();
  MEMORY[0x28223BE20](v8 - 8);
  v65 = swift_allocObject();
  *(v65 + 16) = 0;
  v64 = swift_allocObject();
  *(v64 + 16) = 0;
  v63 = dispatch_semaphore_create(0);
  v66 = sub_249F7AA2C(0, &qword_27EF2CBF0, 0x277D85C78);
  sub_249F9A8B4();
  info = MEMORY[0x277D84F90];
  sub_249F7FA18();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CC00, qword_249F9BDE0);
  sub_249F80778(&qword_27EF2CC08, &qword_27EF2CC00, qword_249F9BDE0, MEMORY[0x277D83970]);
  sub_249F9ACD4();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v67);
  v9 = sub_249F9ABF4();
  empty = xpc_dictionary_create_empty();
  v11 = [objc_allocWithZone(MEMORY[0x277D4B458]) initForFileParsing];
  [v11 setDataGatheringOptions_];
  [v11 setDataGatheringOptions_];
  [v11 setDataGatheringOptions_];
  [v11 setDataGatheringOptions_];
  [v11 setAdditionalCSSymbolicatorFlags_];
  info = 0;
  mach_timebase_info(&info);
  [v11 setMachTimebase_];
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v13 = swift_allocObject();
  v14 = [objc_allocWithZone(MEMORY[0x277CBEAA8]) init];
  [v14 timeIntervalSince1970];
  v16 = v15;
  v17 = v15;

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v16 <= -1.0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v16 >= 1.84467441e19)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v16 >= 0xFFFFFFFFFFFFFC18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  *(v13 + 16) = (v16 + 1000);
  v18 = v68;
  v67 = v13;
  if (v68 < 1)
  {
    v55 = empty;
    v56 = v9;
    v19 = sub_249F9ABB4();
    v57 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v20 = sub_249F9AC64();
    sub_249F9A874(v19, &dword_249F74000, v20, "EcosystemAnalytics.framework:MicrostackshotsParser: Not operating on a specific PID, use time interval instead", 110, 2, MEMORY[0x277D84F90]);

    v21 = OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_startTime;
    v22 = v61;
    swift_beginAccess();
    v23 = v60;
    v24 = *(v60 + 16);
    v25 = v58;
    v66 = v12;
    v26 = v62;
    v24(v58, v22 + v21, v62);
    v27 = v59;
    sub_249F9A7F4();
    v28 = *(v23 + 8);
    v28(v25, v26);
    sub_249F9A804();
    v30 = v29;
    v28(v27, v26);
    v31 = *MEMORY[0x277CBECD0];
    *(v66 + 16) = v30 - *MEMORY[0x277CBECD0];
    v24(v27, v22 + v21, v26);
    sub_249F9A804();
    v33 = v32;
    v34 = v26;
    v12 = v66;
    v28(v27, v34);
    v13 = v67;
    v35 = v33 - v31;
    *(v67 + 16) = v35;
    v36 = sub_249F9AB84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v37 = swift_allocObject();
    *(v37 + 16) = xmmword_249F9B930;
    v38 = *(v12 + 16);
    v39 = MEMORY[0x277D839F8];
    v40 = MEMORY[0x277D83A80];
    *(v37 + 56) = MEMORY[0x277D839F8];
    *(v37 + 64) = v40;
    *(v37 + 32) = v38;
    *(v37 + 96) = v39;
    *(v37 + 104) = v40;
    *(v37 + 72) = v35;
    v41 = sub_249F9AC64();
    sub_249F9A874(v36, &dword_249F74000, v41, "EcosystemAnalytics.framework:MicrostackshotsParser: Start time: %fd, end time: %fd", v54, *&v55);

    v42 = v31 + *(v12 + 16);
    if (COERCE__INT64(fabs(v42)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v42 > -1.0)
      {
        if (v42 < 1.84467441e19)
        {
          empty = v55;
          xpc_dictionary_set_uint64(v55, "time", v42);
          v18 = v68;
          v9 = v56;
          goto LABEL_11;
        }

LABEL_18:
        __break(1u);
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  xpc_dictionary_set_uint64(empty, "pid", v68);
LABEL_11:
  v43 = [objc_allocWithZone(MEMORY[0x277D4B438]) init];
  v44 = swift_allocObject();
  v45 = v65;
  *(v44 + 16) = v64;
  *(v44 + 24) = v11;
  *(v44 + 32) = v12;
  *(v44 + 40) = v13;
  *(v44 + 48) = v18;
  *(v44 + 56) = v43;
  *(v44 + 64) = v45;
  v46 = v11;
  v47 = v63;
  *(v44 + 72) = v63;
  *(v44 + 80) = v9;
  v73 = sub_249F7FAB8;
  v74 = v44;
  info = MEMORY[0x277D85DD0];
  v70 = 1107296256;
  v71 = sub_249F7F7AC;
  v72 = &block_descriptor_0;
  v48 = _Block_copy(&info);
  v68 = v74;
  swift_unknownObjectRetain();

  v49 = v46;

  v50 = v43;

  v51 = v47;
  v52 = v9;

  nm_systemstats_get_microstackshots(empty, v48);
  _Block_release(v48);

  swift_unknownObjectRelease_n();
  return v49;
}

uint64_t sub_249F7F138(int a1, uint64_t a2, int a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, int a8, void *a9, uint64_t a10, void *a11, uint64_t a12)
{
  v51 = a1;
  v52 = a8;
  v55 = a6;
  v56 = a7;
  v53 = a2;
  v54 = a5;
  v14 = sub_249F9A894();
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_249F9A8A4();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_249F9A8D4();
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v22);
  v28 = &v43 - v27;
  if (a3 != 54)
  {
    v50 = a12;
    v44 = a3;
    v43 = a10;
    v45 = a9;
    v46 = a4;
    v29 = *MEMORY[0x277D851A8];
    v30 = *(v18 + 104);
    v31 = result;
    v48 = result;
    v49 = v26;
    v32 = v17;
    v33 = v26;
    v30(v20, v29, v32);
    sub_249F9A8C4();
    (*(v33 + 16))(v24, v28, v31);
    sub_249F9A884();
    v34 = swift_allocObject();
    v47 = v16;
    v36 = v53;
    v35 = v54;
    *(v34 + 16) = a4;
    *(v34 + 24) = v36;
    v37 = v55;
    v38 = v56;
    *(v34 + 32) = v35;
    *(v34 + 40) = v37;
    *(v34 + 48) = v38;
    v39 = v51;
    *(v34 + 56) = v52;
    *(v34 + 64) = a9;
    *(v34 + 72) = v39 & 1;
    *(v34 + 80) = v43;
    *(v34 + 88) = v44;
    *(v34 + 96) = a11;
    aBlock[4] = sub_249F7FB0C;
    aBlock[5] = v34;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_249F7F768;
    aBlock[3] = &block_descriptor_42;
    _Block_copy(aBlock);
    sub_249F9A8F4();
    swift_allocObject();
    swift_unknownObjectRetain();
    v40 = v35;

    v41 = v45;

    v42 = a11;

    sub_249F9A8E4();

    sub_249F9ABE4();

    return (*(v49 + 8))(v28, v48);
  }

  return result;
}

void sub_249F7F4BC(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, unsigned int a10)
{
  swift_beginAccess();
  if (*(a1 + 16) == 2)
  {
    v18 = sub_249F9ABA4();
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v19 = sub_249F9AC64();
    sub_249F9A874(v18, &dword_249F74000, v19, "EcosystemAnalytics.framework:MicrostackshotsParser: Already timed out, not parsing system stats microstackshots", 111, 2, MEMORY[0x277D84F90]);

    return;
  }

  swift_beginAccess();
  *(a1 + 16) = 1;
  if (a2)
  {
    bytes_ptr = xpc_data_get_bytes_ptr(a2);
    length = xpc_data_get_length(a2);
    if (!bytes_ptr)
    {
LABEL_14:
      __break(1u);
      return;
    }

    v22 = sub_249F803C0(bytes_ptr, length);
    v24 = v23;
    v25 = sub_249F9A7E4();
    swift_beginAccess();
    v26 = *(a4 + 16);
    swift_beginAccess();
    [a3 addMicrostackshotsFromData:v25 ofTypes:17 inTimeRangeStart:a6 end:0 onlyPid:a7 onlyTid:v26 statistics:*(a5 + 16)];
    sub_249F80470(v22, v24);
  }

  if ((a8 & 1) == 0)
  {
    return;
  }

  if ((a10 & 0x80000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  swift_beginAccess();
  *(a9 + 16) = a10;
  v27 = sub_249F9ABA4();
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

  v28 = sub_249F9AC64();
  if (os_log_type_enabled(v28, v27))
  {
    v29 = swift_slowAlloc();
    *v29 = 134217984;
    swift_beginAccess();
    *(v29 + 4) = *(a9 + 16);

    _os_log_impl(&dword_249F74000, v28, v27, "EcosystemAnalytics.framework:MicrostackshotsParser: Done: %llu", v29, 0xCu);
    MEMORY[0x24C20AE50](v29, -1, -1);
  }

  else
  {
  }

  sub_249F9AC04();
}

uint64_t sub_249F7F768(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_249F7F7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  swift_unknownObjectRetain();
  v7(a2, a3, a4);

  return swift_unknownObjectRelease();
}

uint64_t sub_249F7F82C()
{

  sub_249F807C0(v0[5], v0[6], v0[7], v0[8], v0[9], v0[10], v0[11], v0[12]);

  v1 = OBJC_IVAR____TtC18EcosystemAnalytics21MicrostackshotsParser_startTime;
  v2 = sub_249F9A834();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MicrostackshotsParser(uint64_t a1)
{
  result = qword_27EF2CBD8;
  if (!qword_27EF2CBD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_249F7F940(uint64_t a1)
{
  result = sub_249F9A834();
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

unint64_t sub_249F7FA18()
{
  result = qword_27EF2CBF8;
  if (!qword_27EF2CBF8)
  {
    sub_249F9ABC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CBF8);
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

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_249F7FB5C(void *__src, uint64_t a2, void *__dst)
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

void sub_249F7FB7C(void *a1)
{
  v2 = sub_249F9AB94();
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v3 = sub_249F9AC64();
  sub_249F9A874(v2, &dword_249F74000, v3, "EcosystemAnalytics.framework:MicrostackshotsParser: extractProcessNamesFromSampleStore", 86, 2, MEMORY[0x277D84F90]);

  if ([a1 numSamples] >= 1)
  {
    v4 = sub_249F9AB94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_249F9B920;
    v6 = [a1 tasksByUniquePid];
    sub_249F7AA2C(0, &qword_27EF2CC80, 0x277CCABB0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CC88, &qword_249F9BDF8);
    sub_249F804C4();
    v7 = sub_249F9A964();

    v8 = *(v7 + 16);

    v9 = MEMORY[0x277D83C10];
    *(v5 + 56) = MEMORY[0x277D83B88];
    *(v5 + 64) = v9;
    *(v5 + 32) = v8;
    v10 = sub_249F9AC64();
    sub_249F9A874(v4, &dword_249F74000, v10, "EcosystemAnalytics.framework:MicrostackshotsParser: extractProcessNamesFromSampleStore: %d PIDs found in this set of microstackshots", v63);

    v11 = [a1 tasksByUniquePid];
    v12 = sub_249F9A964();

    v13 = 0;
    v14 = v12 + 64;
    v15 = 1 << *(v12 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v12 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = MEMORY[0x277D84F90];
LABEL_5:
    if (v17)
    {
      goto LABEL_10;
    }

    while (1)
    {
      v20 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v20 >= v18)
      {

        return;
      }

      v17 = *(v14 + 8 * v20);
      ++v13;
      if (v17)
      {
        v13 = v20;
LABEL_10:
        v21 = *(*(v12 + 56) + ((v13 << 9) | (8 * __clz(__rbit64(v17)))));
        if (v21 >> 62)
        {
          v22 = sub_249F9AD84();
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v17 &= v17 - 1;
        if (v22)
        {
          v64 = v18;
          v65 = v12;
          v69 = v22;
          v70 = v21 & 0xC000000000000001;
          v67 = v21 & 0xFFFFFFFFFFFFFF8;

          v23 = 0;
          v24 = MEMORY[0x277D837D0];
          v71 = v21;
          while (1)
          {
            if (v70)
            {
              v25 = MEMORY[0x24C20A4F0](v23, v21);
            }

            else
            {
              if (v23 >= *(v67 + 16))
              {
                goto LABEL_52;
              }

              v25 = *(v21 + 8 * v23 + 32);
            }

            v26 = v25;
            if (__OFADD__(v23, 1))
            {
              goto LABEL_51;
            }

            v72 = v23 + 1;
            v27 = [v25 bundleIdentifier];
            v73 = v26;
            if (v27)
            {

              v28 = [v26 bundleIdentifier];
              if (!v28)
              {
                goto LABEL_53;
              }

              v29 = v28;
              v30 = sub_249F9A9D4();
              v32 = v31;

              v33 = HIBYTE(v32) & 0xF;
              if ((v32 & 0x2000000000000000) == 0)
              {
                v33 = v30 & 0xFFFFFFFFFFFFLL;
              }

              v26 = v73;
              if (v33)
              {
                break;
              }
            }

LABEL_40:
            v51 = [v26 name];
            if (v51)
            {
              v52 = v51;
              v53 = sub_249F9A9D4();
              v55 = v54;

              v56 = sub_249F9AB94();
              v57 = swift_allocObject();
              *(v57 + 16) = xmmword_249F9B920;
              *(v57 + 56) = v24;
              *(v57 + 64) = sub_249F7A16C();
              *(v57 + 32) = v53;
              *(v57 + 40) = v55;

              v58 = v19;
              v59 = sub_249F9AC64();
              sub_249F9A874(v56, &dword_249F74000, v59, "EcosystemAnalytics.framework:MicrostackshotsParser: extractProcessNamesFromSampleStore: appending %@", 100, 2, v57);

              v19 = v58;
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v19 = sub_249F8EAE8(0, *(v58 + 2) + 1, 1, v58);
              }

              v61 = *(v19 + 2);
              v60 = *(v19 + 3);
              v24 = MEMORY[0x277D837D0];
              if (v61 >= v60 >> 1)
              {
                v19 = sub_249F8EAE8((v60 > 1), v61 + 1, 1, v19);
              }

              *(v19 + 2) = v61 + 1;
              v62 = &v19[16 * v61];
              *(v62 + 4) = v53;
              *(v62 + 5) = v55;
              v21 = v71;
            }

            else
            {
            }

            ++v23;
            if (v72 == v69)
            {

              v18 = v64;
              v12 = v65;
              goto LABEL_5;
            }
          }

          v68 = sub_249F9AB94();
          v34 = swift_allocObject();
          *(v34 + 16) = xmmword_249F9B930;
          v35 = [v73 mainBinaryPath];
          if (v35)
          {
            v36 = v35;
            v37 = sub_249F9A9D4();
            v39 = v38;
          }

          else
          {
            v37 = 0;
            v39 = 0;
          }

          *(v34 + 56) = v24;
          v40 = sub_249F7A16C();
          *(v34 + 64) = v40;
          v41 = 0xD000000000000013;
          if (v39)
          {
            v41 = v37;
          }

          v42 = 0x8000000249F9D500;
          if (v39)
          {
            v42 = v39;
          }

          *(v34 + 32) = v41;
          *(v34 + 40) = v42;
          v26 = v73;
          v43 = [v73 bundleIdentifier];
          if (v43)
          {
            v44 = v19;
            v45 = v43;
            v66 = sub_249F9A9D4();
            v47 = v46;

            v48 = (v34 + 72);
            *(v34 + 96) = v24;
            *(v34 + 104) = v40;
            if (v47)
            {
              *v48 = v66;
              v19 = v44;
              v26 = v73;
              v49 = v68;
LABEL_39:
              *(v34 + 80) = v47;
              v50 = sub_249F9AC64();
              sub_249F9A874(v49, &dword_249F74000, v50, "EcosystemAnalytics.framework:MicrostackshotsParser: extractProcessNamesFromSampleStore: %@ - %@", 95, 2, v34);

              v24 = MEMORY[0x277D837D0];
              v21 = v71;
              goto LABEL_40;
            }

            v19 = v44;
            v26 = v73;
          }

          else
          {
            v48 = (v34 + 72);
            *(v34 + 96) = v24;
            *(v34 + 104) = v40;
          }

          v49 = v68;
          *v48 = 0xD000000000000019;
          v47 = 0x8000000249F9D520;
          goto LABEL_39;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
  }
}

uint64_t sub_249F80228(uint64_t a1)
{
  v2 = sub_249F9AA04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CCE8, &qword_249F9BE28);
  sub_249F80778(&qword_27EF2CCF0, &qword_27EF2CCE8, &qword_249F9BE28, MEMORY[0x277D83958]);
  v10 = sub_249F9A984();
  v11 = v6;
  v10 = sub_249F9AB04();
  v11 = v7;
  sub_249F9A9F4();
  sub_249F7798C();
  v8 = sub_249F9ACA4();
  (*(v3 + 8))(v5, v2);

  if (v8)
  {
    nm_CRSetCrashLogMessage(v8 + 32);
  }

  return result;
}

unint64_t sub_249F803C0(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_249F8FA0C(a1, &a1[a2]);
  }

  sub_249F9A6A4();
  swift_allocObject();
  sub_249F9A654();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_249F9A7B4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_249F80470(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

unint64_t sub_249F804C4()
{
  result = qword_27EF2CC90;
  if (!qword_27EF2CC90)
  {
    sub_249F7AA2C(255, &qword_27EF2CC80, 0x277CCABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CC90);
  }

  return result;
}

uint64_t sub_249F8052C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

double sub_249F80544(_OWORD *a1)
{
  result = 0.0;
  a1[25] = 0u;
  a1[26] = 0u;
  a1[23] = 0u;
  a1[24] = 0u;
  a1[21] = 0u;
  a1[22] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_249F805EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_249F8065C(uint64_t a1)
{
  v2 = type metadata accessor for TargetType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_249F806B8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_249F80778(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

void sub_249F807C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2 != 1)
  {
  }
}

uint64_t sub_249F80848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_249F9AA74();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_249F9AA74();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_249F9ADF4();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_249F9AA74();
      v7 = v9;
    }

    while (v9);
  }

  sub_249F9AA74();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

uint64_t sub_249F809A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[4] = sub_249F85E5C;
  v9[5] = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_249F80C2C;
  v9[3] = &block_descriptor_61;
  v7 = _Block_copy(v9);

  nm_macho_for_each_defined_rpath(a1, a3, v7);
  _Block_release(v7);
  return 0;
}

uint64_t sub_249F80A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_249F9AB94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_249F9B920;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CD60, &qword_249F9BE98);
  v6 = sub_249F9AA14();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x277D837D0];
  *(v5 + 64) = sub_249F7A16C();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
  v9 = sub_249F9AC64();
  sub_249F9A874(v4, &dword_249F74000, v9, "EcosystemAnalytics.framework:MachOParser: extractRpaths: %@", 59, 2, v5);

  v10 = sub_249F9AA54();
  v12 = v11;
  swift_beginAccess();
  v13 = *(a3 + 56);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 56) = v13;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v13 = sub_249F8EAE8(0, *(v13 + 2) + 1, 1, v13);
    *(a3 + 56) = v13;
  }

  v16 = *(v13 + 2);
  v15 = *(v13 + 3);
  if (v16 >= v15 >> 1)
  {
    v13 = sub_249F8EAE8((v15 > 1), v16 + 1, 1, v13);
  }

  *(v13 + 2) = v16 + 1;
  v17 = &v13[16 * v16];
  *(v17 + 4) = v10;
  *(v17 + 5) = v12;
  *(a3 + 56) = v13;
  return swift_endAccess();
}

uint64_t sub_249F80C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

uint64_t sub_249F80C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  LOBYTE(a5) = v9(a2, a3, a4, a5);

  return a5 & 1;
}

uint64_t sub_249F80D00()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  *(v0 + 16) = 0;

  v1 = sub_249F9A9A4();

  v12[4] = sub_249F85F94;
  v12[5] = v0;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_249F80C8C;
  v12[3] = &block_descriptor_86;
  v2 = _Block_copy(v12);

  nm_macho_for_each_slice(v1, v2);
  _Block_release(v2);

  v3 = sub_249F9AB94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_249F9B920;
  swift_beginAccess();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  *(v4 + 56) = MEMORY[0x277D837D0];
  *(v4 + 64) = sub_249F7A16C();
  v7 = 7104878;
  if (v6)
  {
    v7 = v5;
  }

  v8 = 0xE300000000000000;
  if (v6)
  {
    v8 = v6;
  }

  *(v4 + 32) = v7;
  *(v4 + 40) = v8;
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

  v9 = sub_249F9AC64();
  sub_249F9A874(v3, &dword_249F74000, v9, "EcosystemAnalytics.framework:MachOParser: extractUUID: %@", 57, 2, v4);

  v10 = *(v0 + 16);

  return v10;
}

uint64_t sub_249F80F14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = nm_dyld_get_uuid_for_header(a1);
  if (v6)
  {
    v7 = v6;
    v8 = sub_249F9A9D4();
    v10 = v9;
  }

  else
  {
    v8 = 0;
    v10 = 0;
  }

  swift_beginAccess();
  *(a5 + 16) = v8;
  *(a5 + 24) = v10;

  return 0;
}

uint64_t sub_249F80F98()
{
  v1 = *(v0 + 24);
  v38 = *(v0 + 16);
  v39 = v1;
  v40 = 47;
  v41 = 0xE100000000000000;
  sub_249F7798C();
  result = sub_249F9AC74();
  v3 = *(result + 16);
  if (!v3)
  {
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v4 = result;
  v5 = result + 32;
  v6 = (result + 32 + 16 * (v3 - 1));
  v7 = v6[1];
  v38 = *v6;
  v39 = v7;
  v40 = 0x6F77656D6172662ELL;
  v41 = 0xEA00000000006B72;
  result = sub_249F9ACB4();
  if (result & 1) != 0 || (v8 = v6[1], v38 = *v6, v39 = v8, v40 = 1886413102, v41 = 0xE400000000000000, result = sub_249F9ACB4(), (result) || (v9 = v6[1], v38 = *v6, v39 = v9, v40 = 0x69736E657478652ELL, v41 = 0xEA00000000006E6FLL, result = sub_249F9ACB4(), (result) || (v10 = v6[1], v38 = *v6, v39 = v10, v40 = 0x6E6967756C702ELL, v41 = 0xE700000000000000, result = sub_249F9ACB4(), (result))
  {
LABEL_6:
    if (*(v4 + 16) >= v3)
    {
      v38 = v4;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CD70, &qword_249F9BEA8);
      sub_249F85F30();
      sub_249F9A984();
      swift_bridgeObjectRelease_n();
      v11 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
      v12 = sub_249F9A9A4();

      v13 = [v11 initWithPath_];

      if (v13)
      {
        v14 = [v13 infoDictionary];
        if (v14)
        {
          v15 = v14;
          v16 = sub_249F9A964();

          if (*(v16 + 16) && (v17 = sub_249F86B30(0xD00000000000001ALL, 0x8000000249F9D220), (v18 & 1) != 0))
          {
            sub_249F7A984(*(v16 + 56) + 32 * v17, &v38);

            if (swift_dynamicCast())
            {
              v19 = v40;
              v20 = v41;

LABEL_33:
              v24 = MEMORY[0x277D837D0];
              goto LABEL_34;
            }
          }

          else
          {
          }
        }

        v21 = [v13 infoDictionary];
        if (v21)
        {
          v22 = v21;
          v23 = sub_249F9A964();

          v24 = MEMORY[0x277D837D0];
          if (*(v23 + 16) && (v25 = sub_249F86B30(0x656C646E75424643, 0xEF6E6F6973726556), (v26 & 1) != 0))
          {
            sub_249F7A984(*(v23 + 56) + 32 * v25, &v38);

            if (swift_dynamicCast())
            {
              v19 = v40;
              v20 = v41;
LABEL_34:
              v33 = sub_249F9AB94();
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
              v34 = swift_allocObject();
              *(v34 + 16) = xmmword_249F9B920;
              *(v34 + 56) = v24;
              *(v34 + 64) = sub_249F7A16C();
              v35 = 7104878;
              if (v20)
              {
                v35 = v19;
              }

              v36 = 0xE300000000000000;
              if (v20)
              {
                v36 = v20;
              }

              *(v34 + 32) = v35;
              *(v34 + 40) = v36;
              sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

              v37 = sub_249F9AC64();
              sub_249F9A874(v33, &dword_249F74000, v37, "EcosystemAnalytics.framework:MachOParser: extractMachOVersion: %@", 65, 2, v34);

              return v19;
            }
          }

          else
          {
          }
        }

        else
        {

          v24 = MEMORY[0x277D837D0];
        }

        v19 = 0;
        v20 = 0;
        goto LABEL_34;
      }

LABEL_32:
      v19 = 0;
      v20 = 0;
      goto LABEL_33;
    }

    goto LABEL_40;
  }

  if (v3 == 1)
  {
LABEL_31:

    goto LABEL_32;
  }

  v27 = (v4 + 16 * v3-- + 8);
  while (1)
  {
    v28 = v3 - 1;
    if (v3 < 1)
    {
      break;
    }

    if (v3 > *(v4 + 16))
    {
      goto LABEL_42;
    }

    v29 = *v27;
    v38 = *(v27 - 1);
    v39 = v29;
    v40 = 0x6F77656D6172662ELL;
    v41 = 0xEA00000000006B72;
    result = sub_249F9ACB4();
    if (result)
    {
      goto LABEL_6;
    }

    v30 = *v27;
    v38 = *(v27 - 1);
    v39 = v30;
    v40 = 1886413102;
    v41 = 0xE400000000000000;
    result = sub_249F9ACB4();
    if (result)
    {
      goto LABEL_6;
    }

    v31 = *v27;
    v38 = *(v27 - 1);
    v39 = v31;
    v40 = 0x69736E657478652ELL;
    v41 = 0xEA00000000006E6FLL;
    result = sub_249F9ACB4();
    if (result)
    {
      goto LABEL_6;
    }

    v32 = *v27;
    v38 = *(v27 - 1);
    v39 = v32;
    v40 = 0x6E6967756C702ELL;
    v41 = 0xE700000000000000;
    result = sub_249F9ACB4();
    if (result)
    {
      goto LABEL_6;
    }

    v27 -= 2;
    --v3;
    if (!v28)
    {
      goto LABEL_31;
    }
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t sub_249F815A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = swift_allocObject();
  v10[2] = a5;
  v10[3] = a6;
  v10[4] = a1;
  v13[4] = sub_249F85EB8;
  v13[5] = v10;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_249F82238;
  v13[3] = &block_descriptor_74;
  v11 = _Block_copy(v13);

  nm_macho_for_each_imported_symbol(a1, a3, v11);
  _Block_release(v11);
  return 1;
}

uint64_t sub_249F8169C(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, void *a6, const mach_header *a7)
{
  v10 = sub_249F9AA54();
  v12 = v11;
  v13 = sub_249F9AA54();
  v15 = v14;
  v16 = CSDemangleSymbolName();
  if (v16)
  {
    v17 = v16;

    v13 = sub_249F9AA54();
    v15 = v18;
    MEMORY[0x24C20AE50](v17, -1, -1);
  }

  if (sub_249F80848(0x6D65747379532FLL, 0xE700000000000000, v10, v12) & 1) != 0 || (sub_249F80848(1920169263, 0xE400000000000000, v10, v12))
  {
    v19 = sub_249F9AB94();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_249F9BE40;
    v21 = MEMORY[0x277D837D0];
    *(v20 + 56) = MEMORY[0x277D837D0];
    v22 = sub_249F7A16C();
    v172 = v13;
    *(v20 + 32) = v13;
    *(v20 + 40) = v15;
    *(v20 + 96) = v21;
    *(v20 + 104) = v22;
    *(v20 + 64) = v22;
    *(v20 + 72) = v10;
    *(v20 + 80) = v12;
    v23 = MEMORY[0x277D839F0];
    *(v20 + 136) = MEMORY[0x277D839B0];
    *(v20 + 144) = v23;
    *(v20 + 112) = a3 & 1;
    sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

    v24 = sub_249F9AC64();
    sub_249F9A874(v19, &dword_249F74000, v24, "EcosystemAnalytics.framework:MachOParser: symbolName: %@, libraryPath: %@, weakImport: %d", 89, 2, v20);

    v26 = a6[2];
    v25 = a6[3];
    swift_beginAccess();
    v27 = a6[6];
    v28 = *(v27 + 16);
    *&v179 = a6;
    v173 = v15;
    v174 = v10;
    v175 = v12;
    if (v28)
    {

      v29 = sub_249F86B30(v26, v25);
      v31 = v30;

      if (v31)
      {
        v32 = *(v27 + 56) + 120 * v29;
        v34 = *(v32 + 32);
        v33 = *(v32 + 48);
        v35 = *(v32 + 16);
        v204 = *v32;
        v205 = v35;
        v206 = v34;
        v207 = v33;
        v36 = *(v32 + 112);
        v38 = *(v32 + 80);
        v37 = *(v32 + 96);
        v208 = *(v32 + 64);
        v209 = v38;
        v210 = v37;
        v169 = v36;
        v211 = v36;
        v39 = *(&v204 + 1);
        v40 = v204;
        v41 = *(&v35 + 1);
        v42 = v35;
        v43 = v206;
        v44 = *(&v207 + 1);
        v177 = *(&v206 + 1);
        v178 = v207;
        v46 = *(&v208 + 1);
        v45 = v208;
        v161 = v38;
        v165 = v37;
        sub_249F85EC4(&v204, &v182);

        if (v39 && v41)
        {
          v204 = __PAIR128__(v39, v40);
          v205 = __PAIR128__(v41, v42);
          v206 = __PAIR128__(v177, v43);
          v207 = __PAIR128__(v44, v178);
          v208 = __PAIR128__(v46, v45);
          v209 = v161;
          v210 = v165;
          v211 = v169;

          sub_249F806B8(&v204, &qword_27EF2CD68, &qword_249F9BEA0);
          goto LABEL_17;
        }

        v53 = v177;
        v28 = v178;
        v48 = *(&v165 + 1);
        v47 = v169;
        v50 = *(&v161 + 1);
        v49 = v165;
        v51 = v161;
LABEL_16:
        *&v204 = v40;
        *(&v204 + 1) = v39;
        *&v205 = v42;
        *(&v205 + 1) = v41;
        *&v206 = v43;
        *(&v206 + 1) = v53;
        *&v207 = v28;
        *(&v207 + 1) = v44;
        *&v208 = v45;
        *(&v208 + 1) = v46;
        *&v209 = v51;
        *(&v209 + 1) = v50;
        *&v210 = v49;
        *(&v210 + 1) = v48;
        v211 = v47;
        sub_249F806B8(&v204, &qword_27EF2CD68, &qword_249F9BEA0);
        v177 = 0;
        v178 = 0xE000000000000000;
LABEL_17:
        v54 = *(v179 + 48);
        if (*(v54 + 16))
        {
          v56 = *(v179 + 16);
          v55 = *(v179 + 24);

          v57 = sub_249F86B30(v56, v55);
          v59 = v58;

          if (v59)
          {
            v60 = *(v54 + 56) + 120 * v57;
            v62 = *(v60 + 32);
            v61 = *(v60 + 48);
            v63 = *(v60 + 16);
            v204 = *v60;
            v205 = v63;
            v206 = v62;
            v207 = v61;
            v64 = *(v60 + 112);
            v66 = *(v60 + 80);
            v65 = *(v60 + 96);
            v208 = *(v60 + 64);
            v209 = v66;
            v210 = v65;
            v211 = v64;
            v67 = v204;
            v68 = *(&v63 + 1);
            v69 = v63;
            v70 = *(&v206 + 1);
            v71 = v206;
            v73 = *(&v207 + 1);
            v72 = v207;
            v167 = *(&v208 + 1);
            v74 = v208;
            v170 = v64;
            v75 = v66;
            v162 = v65;
            v157 = *(&v204 + 1);
            v159 = *(&v65 + 1);
            sub_249F85EC4(&v204, &v182);

            if (v157)
            {
              v182 = __PAIR128__(v68, v69);
              v183 = __PAIR128__(v70, v71);
              v184 = __PAIR128__(v73, v72);
              v185 = __PAIR128__(v167, v74);
              v186 = v75;
              *v187 = __PAIR128__(v159, v162);
              *&v187[16] = v170;
              v204 = __PAIR128__(v157, v67);
              v205 = __PAIR128__(v68, v69);
              v206 = __PAIR128__(v70, v71);
              v207 = __PAIR128__(v73, v72);
              v208 = __PAIR128__(v167, v74);
              v209 = v75;
              v210 = __PAIR128__(v159, v162);
              v211 = v170;
              sub_249F7A914(&v182, &v190, &qword_27EF2CCE0, &qword_249F9BE20);
              sub_249F806B8(&v204, &qword_27EF2CD68, &qword_249F9BEA0);
              if (*(&v182 + 1))
              {
                v168 = *(&v182 + 1);
                v166 = v183;
                v163 = *(&v183 + 1);
                v164 = v182;
                v158 = *(&v184 + 1);
                v160 = v184;
                v155 = *(&v185 + 1);
                v156 = v185;
                v153 = *(&v186 + 1);
                v154 = v186;
                v152 = *v187;
                v171 = *&v187[8];
                v76 = v179;
                goto LABEL_26;
              }

              v201 = v186;
              v202 = *v187;
              v203 = *&v187[16];
              v197 = v182;
              v198 = v183;
              v199 = v184;
              v200 = v185;
LABEL_25:
              v76 = v179;
              sub_249F806B8(&v197, &qword_27EF2CCE0, &qword_249F9BE20);
              v166 = 5;
              v168 = 0xE700000000000000;
              v171 = xmmword_249F9BD20;
              v160 = 0xE700000000000000;
              v163 = 0x6E776F6E6B6E75;
              v156 = 0xE700000000000000;
              v158 = 0x6E776F6E6B6E75;
              v154 = 0xE700000000000000;
              v155 = 0x6E776F6E6B6E75;
              v164 = 0x6E776F6E6B6E75;
              v153 = 0x6E776F6E6B6E75;
              v152 = 0xE700000000000000;
LABEL_26:
              v83 = v76[6];
              if (*(v83 + 16))
              {
                v85 = v76[2];
                v84 = v76[3];

                v86 = sub_249F86B30(v85, v84);
                LOBYTE(v85) = v87;

                if (v85)
                {
                  v88 = *(v83 + 56) + 120 * v86;
                  v90 = *(v88 + 32);
                  v89 = *(v88 + 48);
                  v91 = *(v88 + 16);
                  v204 = *v88;
                  v205 = v91;
                  v206 = v90;
                  v207 = v89;
                  v92 = *(v88 + 112);
                  v94 = *(v88 + 80);
                  v93 = *(v88 + 96);
                  v208 = *(v88 + 64);
                  v209 = v94;
                  v210 = v93;
                  v211 = v92;
                  v95 = v204;
                  v96 = *(&v91 + 1);
                  v97 = v91;
                  v98 = *(&v206 + 1);
                  v99 = v206;
                  v101 = *(&v207 + 1);
                  v100 = v207;
                  v148 = *(&v208 + 1);
                  v102 = v208;
                  v150 = v92;
                  v103 = v94;
                  v145 = v93;
                  v143 = *(&v204 + 1);
                  v144 = *(&v93 + 1);
                  sub_249F85EC4(&v204, &v182);

                  if (v143)
                  {
                    v182 = __PAIR128__(v96, v97);
                    v183 = __PAIR128__(v98, v99);
                    v184 = __PAIR128__(v101, v100);
                    v185 = __PAIR128__(v148, v102);
                    v186 = v103;
                    *v187 = __PAIR128__(v144, v145);
                    *&v187[16] = v150;
                    v204 = __PAIR128__(v143, v95);
                    v205 = __PAIR128__(v96, v97);
                    v206 = __PAIR128__(v98, v99);
                    v207 = __PAIR128__(v101, v100);
                    v208 = __PAIR128__(v148, v102);
                    v209 = v103;
                    v210 = __PAIR128__(v144, v145);
                    v211 = v150;
                    sub_249F7A914(&v182, v189, &qword_27EF2CCE0, &qword_249F9BE20);
                    sub_249F806B8(&v204, &qword_27EF2CD68, &qword_249F9BEA0);
                    v104 = *(&v182 + 1);
                    if (*(&v182 + 1))
                    {
                      v105 = v182;
                      v106 = v183;
                      v107 = *(&v183 + 1);
                      v108 = *(&v184 + 1);
                      v110 = v184;
                      v109 = v185;
                      v149 = v186;
                      v151 = *(&v185 + 1);
                      v146 = *(&v186 + 1);
                      v147 = *v187;
                      v111 = *&v187[8];
                      v112 = v175;
                      v113 = a5;
                      v114 = v174;
                      v115 = v179;
                      goto LABEL_35;
                    }

                    v194 = v186;
                    v195 = *v187;
                    v196 = *&v187[16];
                    v190 = v182;
                    v191 = v183;
                    v192 = v184;
                    v193 = v185;
LABEL_34:
                    v112 = v175;
                    v113 = a5;
                    v114 = v174;
                    v115 = v179;
                    sub_249F806B8(&v190, &qword_27EF2CCE0, &qword_249F9BE20);
                    v106 = 5;
                    v104 = 0xE700000000000000;
                    v111 = xmmword_249F9BD20;
                    v105 = 0x6E776F6E6B6E75;
                    v107 = 0x6E776F6E6B6E75;
                    v110 = 0xE700000000000000;
                    v108 = 0x6E776F6E6B6E75;
                    v109 = 0xE700000000000000;
                    v149 = 0xE700000000000000;
                    v151 = 0x6E776F6E6B6E75;
                    v146 = 0x6E776F6E6B6E75;
                    v147 = 0xE700000000000000;
LABEL_35:
                    v122 = *(v115 + 48);
                    if (*(v122 + 16))
                    {
                      v145 = v109;
                      a5 = v108;
                      v179 = v111;

                      v123 = sub_249F86B30(v114, v112);
                      if (v124)
                      {
                        v144 = v110;
                        v174 = v104;
                        v125 = *(v122 + 56) + 120 * v123;
                        v127 = *(v125 + 32);
                        v126 = *(v125 + 48);
                        v128 = *(v125 + 16);
                        v204 = *v125;
                        v205 = v128;
                        v206 = v127;
                        v207 = v126;
                        v129 = *(v125 + 64);
                        v130 = *(v125 + 80);
                        v131 = *(v125 + 96);
                        v211 = *(v125 + 112);
                        v209 = v130;
                        v210 = v131;
                        v208 = v129;
                        sub_249F85EC4(&v204, &v182);

                        nm_macho_arch_name_for_mach_header(a7);
                        v112 = sub_249F9AA54();
                        v122 = v132;
                        swift_beginAccess();
                        v114 = *(v113 + 16);
                        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                        *(v113 + 16) = v114;
                        v104 = v107;
                        LOBYTE(v110) = v106;
                        if (isUniquelyReferenced_nonNull_native)
                        {
LABEL_38:
                          v135 = *(v114 + 2);
                          v134 = *(v114 + 3);
                          if (v135 >= v134 >> 1)
                          {
                            v114 = sub_249F8EBF4((v134 > 1), v135 + 1, 1, v114);
                          }

                          v188 = v211;
                          v184 = v206;
                          v185 = v207;
                          *v187 = v209;
                          *&v187[16] = v210;
                          v186 = v208;
                          v182 = v204;
                          v183 = v205;
                          *(v114 + 2) = v135 + 1;
                          v136 = &v114[432 * v135];
                          *(v136 + 4) = v172;
                          *(v136 + 5) = v173;
                          *(v136 + 8) = v177;
                          *(v136 + 9) = v178;
                          *(v136 + 10) = v164;
                          *(v136 + 11) = v168;
                          v136[96] = v166;
                          *(v136 + 25) = *&v181[3];
                          *(v136 + 97) = *v181;
                          *(v136 + 13) = v163;
                          *(v136 + 14) = v160;
                          *(v136 + 15) = v158;
                          *(v136 + 16) = v156;
                          *(v136 + 17) = v155;
                          *(v136 + 18) = v154;
                          *(v136 + 19) = v153;
                          *(v136 + 20) = v152;
                          *(v136 + 23) = v105;
                          *(v136 + 24) = v174;
                          v136[200] = v110;
                          *(v136 + 51) = *&v180[3];
                          *(v136 + 201) = *v180;
                          *(v136 + 26) = v104;
                          *(v136 + 27) = v144;
                          *(v136 + 28) = a5;
                          *(v136 + 29) = v145;
                          *(v136 + 30) = v151;
                          *(v136 + 31) = v149;
                          *(v136 + 32) = v146;
                          *(v136 + 33) = v147;
                          *(v136 + 6) = 0;
                          *(v136 + 7) = 0xE000000000000000;
                          *(v136 + 168) = v171;
                          *(v136 + 17) = v179;
                          v137 = v182;
                          v138 = v183;
                          v139 = v185;
                          *(v136 + 20) = v184;
                          *(v136 + 21) = v139;
                          *(v136 + 18) = v137;
                          *(v136 + 19) = v138;
                          v140 = v186;
                          v141 = *v187;
                          v142 = *&v187[16];
                          *(v136 + 50) = v188;
                          *(v136 + 51) = v112;
                          *(v136 + 52) = v122;
                          *(v136 + 53) = 1;
                          *(v136 + 54) = 0;
                          *(v136 + 55) = 0xE000000000000000;
                          *(v136 + 56) = 0;
                          *(v136 + 57) = 0xE000000000000000;
                          *(v136 + 23) = v141;
                          *(v136 + 24) = v142;
                          *(v136 + 22) = v140;
                          *(v113 + 16) = v114;
                          return swift_endAccess();
                        }

LABEL_48:
                        v114 = sub_249F8EBF4(0, *(v114 + 2) + 1, 1, v114);
                        *(v113 + 16) = v114;
                        goto LABEL_38;
                      }
                    }

                    else
                    {
                      __break(1u);
                    }

                    __break(1u);
                    goto LABEL_48;
                  }

                  v121 = v148;
                  v116 = v150;
                  v117 = v144;
                  v118 = v145;
                  v119 = *(&v103 + 1);
                  v120 = v103;
LABEL_33:
                  v204 = v95;
                  *&v205 = v97;
                  *(&v205 + 1) = v96;
                  *&v206 = v99;
                  *(&v206 + 1) = v98;
                  *&v207 = v100;
                  *(&v207 + 1) = v101;
                  *&v208 = v102;
                  *(&v208 + 1) = v121;
                  *&v209 = v120;
                  *(&v209 + 1) = v119;
                  *&v210 = v118;
                  *(&v210 + 1) = v117;
                  v211 = v116;
                  sub_249F806B8(&v204, &qword_27EF2CD68, &qword_249F9BEA0);
                  v190 = 0u;
                  v191 = 0u;
                  v192 = 0u;
                  v193 = 0u;
                  v194 = 0u;
                  v195 = 0u;
                  v196 = 0;
                  goto LABEL_34;
                }
              }

              v116 = 0;
              v117 = 0;
              v118 = 0;
              v119 = 0;
              v120 = 0;
              v121 = 0;
              v102 = 0;
              v101 = 0;
              v100 = 0;
              v98 = 0;
              v99 = 0;
              v96 = 0;
              v97 = 0;
              v95 = 0;
              goto LABEL_33;
            }

            v82 = v167;
            v77 = v170;
            v78 = v159;
            v79 = v162;
            v80 = *(&v75 + 1);
            v81 = v75;
LABEL_24:
            v204 = v67;
            *&v205 = v69;
            *(&v205 + 1) = v68;
            *&v206 = v71;
            *(&v206 + 1) = v70;
            *&v207 = v72;
            *(&v207 + 1) = v73;
            *&v208 = v74;
            *(&v208 + 1) = v82;
            *&v209 = v81;
            *(&v209 + 1) = v80;
            *&v210 = v79;
            *(&v210 + 1) = v78;
            v211 = v77;
            sub_249F806B8(&v204, &qword_27EF2CD68, &qword_249F9BEA0);
            v197 = 0u;
            v198 = 0u;
            v199 = 0u;
            v200 = 0u;
            v201 = 0u;
            v202 = 0u;
            v203 = 0;
            goto LABEL_25;
          }
        }

        v77 = 0;
        v78 = 0;
        v79 = 0;
        v80 = 0;
        v81 = 0;
        v82 = 0;
        v74 = 0;
        v73 = 0;
        v72 = 0;
        v70 = 0;
        v71 = 0;
        v68 = 0;
        v69 = 0;
        v67 = 0;
        goto LABEL_24;
      }

      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v46 = 0;
      v45 = 0;
      v44 = 0;
      v28 = 0;
    }

    else
    {
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v46 = 0;
      v45 = 0;
      v44 = 0;
    }

    v53 = 0;
    v43 = 0;
    v41 = 0;
    v42 = 0;
    v39 = 0;
    v40 = 0;
    goto LABEL_16;
  }
}

uint64_t sub_249F82238(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a1 + 32);

  v9(a2, a3, a4, a5);
}

void sub_249F822B0()
{
  v1 = v0;
  v2 = v0[3];
  v32 = v0[2];

  v3 = sub_249F80D00();
  v5 = v4;
  v6 = v0[2];
  v7 = v1[3];

  v31 = sub_249F88BD4(v6, v7);

  v8 = v1[2];
  v9 = v1[3];

  v10 = sub_249F9A1B8(v8, v9);
  v29 = v11;
  v30 = v10;

  v12 = sub_249F9A9A4();

  v13 = nm_extractTeamID(v12);

  if (v13)
  {
    v14 = sub_249F9A9D4();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  v17 = sub_249F9A9A4();

  v18 = nm_extractCDHash(v17);

  if (v18)
  {
    v19 = sub_249F9A9D4();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0xE000000000000000;
  }

  if (!v5)
  {
    v5 = 0xE000000000000000;
    v3 = 0;
  }

  v22 = sub_249F80F98();
  *&v35 = 0;
  *(&v35 + 1) = 0xE000000000000000;
  if (v23)
  {
    v24 = v22;
  }

  else
  {
    v24 = 0;
  }

  if (v23)
  {
    v25 = v23;
  }

  else
  {
    v25 = 0xE000000000000000;
  }

  v36 = v3;
  v37 = v5;
  v38 = v31;
  v39 = v30;
  v40 = v29;
  v41 = v14;
  v42 = v16;
  v43 = v19;
  v44 = v21;
  v45 = v24;
  v46 = v25;
  v47 = xmmword_249F9BD20;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = v1[6];
  v1[6] = 0x8000000000000000;
  sub_249F87F28(&v35, v32, v2, isUniquelyReferenced_nonNull_native);

  v1[6] = v34;
  swift_endAccess();

  v27 = sub_249F9A9A4();

  aBlock[4] = sub_249F85F20;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249F80C8C;
  aBlock[3] = &block_descriptor_77;
  v28 = _Block_copy(aBlock);

  nm_macho_for_each_slice(v27, v28);
  _Block_release(v28);
}

uint64_t sub_249F82584(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9[4] = sub_249F85F28;
  v9[5] = a5;
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 1107296256;
  v9[2] = sub_249F8280C;
  v9[3] = &block_descriptor_80;
  v7 = _Block_copy(v9);

  nm_macho_for_each_dependent_dylib(a1, a3, v7);
  _Block_release(v7);
  return 1;
}

uint64_t sub_249F82658(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_249F9AA54();
  v7 = v6;
  v8 = sub_249F9AB94();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CAF8, "J5");
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_249F9B920;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_249F7A16C();
  *(v9 + 32) = v5;
  *(v9 + 40) = v7;
  sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);

  v10 = sub_249F9AC64();
  sub_249F9A874(v8, &dword_249F74000, v10, "EcosystemAnalytics.framework:MachOParser: loadPath: %@", 54, 2, v9);

  swift_beginAccess();
  if (*(*(a4 + 48) + 16))
  {

    sub_249F86B30(v5, v7);
    v12 = v11;

    if (v12)
    {
    }
  }

  sub_249F8287C(v5, v7, v16);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(a4 + 48);
  *(a4 + 48) = 0x8000000000000000;
  sub_249F87F28(v16, v5, v7, isUniquelyReferenced_nonNull_native);

  *(a4 + 48) = v15;
  return swift_endAccess();
}

uint64_t sub_249F8280C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t sub_249F8287C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v76 = sub_249F7798C();
  v79 = a1;
  v70 = a3;
  if (sub_249F9ACB4())
  {
    swift_beginAccess();
    v8 = *(v3 + 56);
    v9 = *(v8 + 16);
    v10 = 0uLL;
    v74 = v9;
    if (v9)
    {
      v75 = a2;
      v11 = objc_opt_self();

      v13 = 0;
      v14 = v8 + 40;
      v71 = v3;
      v72 = v11;
      v73 = v8;
      while (1)
      {
        if (v13 >= *(v8 + 16))
        {
          __break(1u);
          return result;
        }

        v16 = *(v4 + 16);
        v15 = *(v4 + 24);

        sub_249F9A43C(v16, v15);
        v17 = [v11 defaultManager];
        v18 = sub_249F9A9A4();
        v19 = [v17 fileExistsAtPath_];

        if (v19)
        {
          v20 = objc_allocWithZone(MEMORY[0x277CCA8D8]);
          v21 = sub_249F9A9A4();

          v22 = [v20 initWithPath_];

          if (v22)
          {
            v23 = [v22 executablePath];
            if (v23)
            {
              v24 = v23;
              sub_249F9A9D4();

              v25 = sub_249F9A9A4();

              v26 = [v25 stringByDeletingLastPathComponent];
              sub_249F9A9D4();
            }

            else
            {
            }
          }

          else
          {
          }
        }

        else
        {
        }

        v27 = MEMORY[0x277D837D0];
        sub_249F9AC94();

        v28 = sub_249F9AC94();
        v30 = v29;

        v11 = v72;
        v31 = [v72 defaultManager];
        v32 = sub_249F9A9A4();
        LODWORD(v27) = [v31 fileExistsAtPath_];

        if (v27)
        {
          break;
        }

        ++v13;

        v14 += 16;
        v8 = v73;
        v4 = v71;
        if (v74 == v13)
        {

          v33 = 0;
          v34 = 0;
          v28 = 0;
          v30 = 0;
          v35 = 0;
          v36 = 0;
          v37 = 0;
          v38 = 0;
          v39 = 0;
          v40 = 0;
          LOBYTE(v9) = 0;
          a2 = v75;
          v10 = 0uLL;
          goto LABEL_60;
        }
      }

      type metadata accessor for MachOParser();
      swift_allocObject();

      sub_249F85C5C(v28, v30, sub_249F7C9A0, 0);
      v52 = sub_249F80D00();
      if (v53)
      {
        v54 = v52;
      }

      else
      {
        v54 = 0;
      }

      v78 = v54;
      v36 = 0xE000000000000000;
      if (v53)
      {
        v34 = v53;
      }

      else
      {
        v34 = 0xE000000000000000;
      }

      v77 = sub_249F88BD4(v28, v30);

      v55 = sub_249F9A9A4();

      v56 = nm_extractTeamID(v55);

      if (v56)
      {
        v35 = sub_249F9A9D4();
        v36 = v57;
      }

      else
      {
        v35 = 0;
      }

      v58 = sub_249F9A9A4();

      v59 = nm_extractCDHash(v58);

      if (v59)
      {
        v37 = sub_249F9A9D4();
        v38 = v60;
      }

      else
      {
        v37 = 0;
        v38 = 0xE000000000000000;
      }

      v61 = sub_249F80F98();
      v63 = v62;

      if (v63)
      {
        v39 = v61;
      }

      else
      {
        v39 = 0;
      }

      if (v63)
      {
        v40 = v63;
      }

      else
      {
        v40 = 0xE000000000000000;
      }

      v10 = xmmword_249F9BD20;
      a2 = v75;
      goto LABEL_59;
    }

    v33 = 0;
    v34 = 0;
    v28 = 0;
    v30 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
  }

  else
  {
    v10 = 0uLL;
    if (a1 || a2 != 0xE000000000000000)
    {
      if ((sub_249F9ADF4() & 1) == 0)
      {
        v41 = [objc_opt_self() defaultManager];
        v42 = sub_249F9A9A4();
        v43 = [v41 fileExistsAtPath_];

        if (v43)
        {
          type metadata accessor for MachOParser();
          swift_allocObject();

          sub_249F85C5C(a1, a2, sub_249F7C9A0, 0);
          v44 = sub_249F80D00();
          v46 = v45;
          if (v45)
          {
            v47 = v44;
          }

          else
          {
            v47 = 0;
          }

          v78 = v47;
          v48 = a2;
          v77 = sub_249F88BD4(a1, a2);

          v49 = sub_249F9A9A4();

          v50 = nm_extractTeamID(v49);

          if (v50)
          {
            v35 = sub_249F9A9D4();
            v36 = v51;
          }

          else
          {
            v35 = 0;
            v36 = 0xE000000000000000;
          }

          v64 = sub_249F9A9A4();

          v65 = nm_extractCDHash(v64);

          v34 = 0xE000000000000000;
          if (v65)
          {
            v37 = sub_249F9A9D4();
            v38 = v66;
          }

          else
          {
            v37 = 0;
            v38 = 0xE000000000000000;
          }

          v67 = sub_249F80F98();
          v69 = v68;

          if (v69)
          {
            v39 = v67;
          }

          else
          {
            v39 = 0;
          }

          if (v69)
          {
            v40 = v69;
          }

          else
          {
            v40 = 0xE000000000000000;
          }

          if (v46)
          {
            v34 = v46;
          }

          a2 = v48;

          v10 = xmmword_249F9BD20;
          v28 = v79;
          v30 = a2;
LABEL_59:
          LOBYTE(v9) = v77;
          v33 = v78;
          goto LABEL_60;
        }
      }

      v33 = 0;
      v34 = 0;
      v28 = 0;
      v30 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      LOBYTE(v9) = 0;
      v10 = 0uLL;
    }

    else
    {
      v33 = 0;
      v34 = 0;
      v28 = 0;
      v30 = 0;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v38 = 0;
      v39 = 0;
      v40 = 0;
      LOBYTE(v9) = 0;
    }
  }

LABEL_60:
  *v70 = v79;
  *(v70 + 8) = a2;
  *(v70 + 16) = v33;
  *(v70 + 24) = v34;
  *(v70 + 32) = v9;
  *(v70 + 40) = v28;
  *(v70 + 48) = v30;
  *(v70 + 56) = v35;
  *(v70 + 64) = v36;
  *(v70 + 72) = v37;
  *(v70 + 80) = v38;
  *(v70 + 88) = v39;
  *(v70 + 96) = v40;
  *(v70 + 104) = v10;
}

uint64_t sub_249F830E8()
{
  v1 = MEMORY[0x277D84F90];
  v9 = MEMORY[0x277D84F90];
  sub_249F822B0();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;

  v3 = sub_249F9A9A4();

  v4 = swift_allocObject();
  *(v4 + 16) = v2;
  *(v4 + 24) = v0;
  aBlock[4] = sub_249F85E64;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_249F80C8C;
  aBlock[3] = &block_descriptor_68;
  v5 = _Block_copy(aBlock);

  nm_macho_for_each_slice(v3, v5);
  _Block_release(v5);

  swift_beginAccess();
  v6 = *(v2 + 16);

  sub_249F83258(v6);
  return v9;
}

uint64_t sub_249F83258(uint64_t result)
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
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_249F8EBF4(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_249F83350()
{
  v1 = v0;
  v45 = sub_249F9AA04();
  v44 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v43 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = swift_allocObject();
  v4 = MEMORY[0x277D84F90];
  v47 = v3;
  *(v3 + 16) = MEMORY[0x277D84F90];
  v46 = v3 + 16;
  v5 = swift_allocObject();
  v6 = sub_249F7A364(v4);
  *(v5 + 16) = v6;
  v7 = *(v0 + 24);
  v42 = *(v0 + 16);

  v8 = sub_249F80D00();
  v10 = v9;
  v11 = *(v0 + 16);
  v12 = *(v0 + 24);

  v41 = sub_249F88BD4(v11, v12);

  v13 = *(v1 + 16);
  v14 = *(v1 + 24);

  v40 = sub_249F9A1B8(v13, v14);
  v39 = v15;

  v16 = sub_249F9A9A4();

  v17 = nm_extractTeamID(v16);

  if (v17)
  {
    v38 = sub_249F9A9D4();
    v37 = v18;
  }

  else
  {
    v38 = 0;
    v37 = 0xE000000000000000;
  }

  v19 = sub_249F9A9A4();

  v20 = nm_extractCDHash(v19);

  if (v20)
  {
    v21 = sub_249F9A9D4();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xE000000000000000;
  }

  if (!v10)
  {
    v10 = 0xE000000000000000;
    v8 = 0;
  }

  v24 = sub_249F80F98();
  if (v25)
  {
    v26 = v24;
  }

  else
  {
    v26 = 0;
  }

  if (v25)
  {
    v27 = v25;
  }

  else
  {
    v27 = 0xE000000000000000;
  }

  *&v54 = v8;
  *(&v54 + 1) = v10;
  v55 = v41;
  v56 = v40;
  v57 = v39;
  v58 = v38;
  v59 = v37;
  v60 = v21;
  v61 = v23;
  v62 = v26;
  v63 = v27;
  v64 = xmmword_249F9BD20;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  aBlock = v6;
  *(v5 + 16) = 0x8000000000000000;
  sub_249F87A8C(&v54, v42, v7, isUniquelyReferenced_nonNull_native);

  *(v5 + 16) = aBlock;
  v29 = *(v1 + 24);
  aBlock = *(v1 + 16);
  v49 = v29;

  v30 = v43;
  sub_249F9A9F4();
  sub_249F7798C();
  sub_249F9ACA4();
  (*(v44 + 8))(v30, v45);

  v31 = swift_allocObject();
  v31[2] = v1;
  v31[3] = v5;
  v32 = v47;
  v31[4] = v47;
  v52 = sub_249F85D78;
  v53 = v31;
  aBlock = MEMORY[0x277D85DD0];
  v49 = 1107296256;
  v50 = sub_249F859A0;
  v51 = &block_descriptor_1;
  v33 = _Block_copy(&aBlock);

  CSSymbolicatorForeachSymbolicatorWithPath();

  _Block_release(v33);
  swift_beginAccess();
  v34 = *(v32 + 16);

  return v34;
}

void sub_249F837D4(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v52 = a1;
  v53 = a2;
  v8 = type metadata accessor for TargetType(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v55 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v51 - v17);
  v19 = a3[4];

  LOBYTE(v19) = v19(v20);

  if (v19)
  {
    v21 = sub_249F9ABA4();
    v52 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v22 = sub_249F9AC64();
    sub_249F9A874(v21, &dword_249F74000, v22, "EcosystemAnalytics.framework:MachOParser: CSSymbolicatorForeachSymbolicatorWithPath interrupted", 95, 2, MEMORY[0x277D84F90]);

    v23 = a3[2];
    v24 = a3[3];

    v25 = sub_249F9A1B8(v23, v24);
    v27 = v26;

    *v18 = v25;
    v18[1] = v27;
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v18, 0, 1, v8);
    v28 = a3[2];
    v29 = a3[3];

    v51 = sub_249F9A1B8(v28, v29);
    v31 = v30;

    v53 = v18;
    sub_249F7A914(v18, v16, &unk_27EF2CCC0, &unk_249F9B960);
    v32 = *(v9 + 48);
    if (v32(v16, 1, v8) == 1)
    {
      swift_storeEnumTagMultiPayload();
      if (v32(v16, 1, v8) != 1)
      {
        sub_249F806B8(v16, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      sub_249F7A2F8(v16, v55);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    *(inited + 72) = sub_249F9A9A4();
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v51, v31);

    v36 = sub_249F9A9A4();

    *(inited + 192) = v36;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    v37 = v55;
    sub_249F7A228(v55, v54);
    sub_249F9AA14();
    v38 = sub_249F9A9A4();

    *(inited + 216) = v38;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v39 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v40 = sub_249F9ABA4();
    v41 = sub_249F9AC64();
    if (os_log_type_enabled(v41, v40))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock = v43;
      *v42 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v44 = sub_249F9A974();
      v46 = sub_249F78A30(v44, v45, &aBlock);

      *(v42 + 4) = v46;
      _os_log_impl(&dword_249F74000, v41, v40, "Sending failure analysis event: %s)", v42, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v43);
      MEMORY[0x24C20AE50](v43, -1, -1);
      MEMORY[0x24C20AE50](v42, -1, -1);
    }

    v47 = v53;
    v48 = sub_249F9A9A4();
    v49 = swift_allocObject();
    *(v49 + 16) = v39;
    v60 = sub_249F7A28C;
    v61 = v49;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_249F77EF4;
    v59 = &block_descriptor_35;
    v50 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v50);

    sub_249F8065C(v37);
    sub_249F806B8(v47, &unk_27EF2CCC0, &unk_249F9B960);
  }

  else
  {
    v33 = swift_allocObject();
    v33[2] = a3;
    v33[3] = a4;
    v33[4] = a5;
    v60 = sub_249F85DE4;
    v61 = v33;
    aBlock = MEMORY[0x277D85DD0];
    v57 = 1107296256;
    v58 = sub_249F859A0;
    v59 = &block_descriptor_29_0;
    v34 = _Block_copy(&aBlock);

    CSSymbolicatorForeachSymbolOwnerAtTime();
    _Block_release(v34);
  }
}

void sub_249F84034(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v56 = a5;
  v57 = a2;
  v8 = type metadata accessor for TargetType(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v58 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v59 = &v53 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = (&v53 - v17);
  v19 = a3[4];

  LOBYTE(v19) = v19(v20);

  if (v19)
  {
    v21 = sub_249F9ABA4();
    v56 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v22 = sub_249F9AC64();
    sub_249F9A874(v21, &dword_249F74000, v22, "EcosystemAnalytics.framework:MachOParser: CSSymbolicatorForeachSymbolOwnerAtTime interrupted", 92, 2, MEMORY[0x277D84F90]);

    v23 = a3[2];
    v24 = a3[3];

    v25 = sub_249F9A1B8(v23, v24);
    v27 = v26;

    *v18 = v25;
    v18[1] = v27;
    swift_storeEnumTagMultiPayload();
    (*(v9 + 56))(v18, 0, 1, v8);
    v28 = a3[2];
    v29 = a3[3];

    v54 = sub_249F9A1B8(v28, v29);
    v31 = v30;

    v57 = v18;
    sub_249F7A914(v18, v16, &unk_27EF2CCC0, &unk_249F9B960);
    v32 = *(v9 + 48);
    v33 = v32(v16, 1, v8);
    v55 = v8;
    if (v33 == 1)
    {
      v34 = v59;
      swift_storeEnumTagMultiPayload();
      if (v32(v16, 1, v8) != 1)
      {
        sub_249F806B8(v16, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      v34 = v59;
      sub_249F7A2F8(v16, v59);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_249F9B940;
    *(inited + 32) = 0x74536E6F6D656164;
    *(inited + 40) = 0xEB00000000657461;
    *(inited + 48) = sub_249F9A9A4();
    *(inited + 56) = 0xD000000000000012;
    *(inited + 64) = 0x8000000249F9CCF0;
    *(inited + 72) = sub_249F9A9A4();
    *(inited + 80) = 0x546572756C696166;
    *(inited + 88) = 0xEB00000000657079;
    *(inited + 96) = sub_249F9A9A4();
    strcpy((inited + 104), "targetBundleID");
    *(inited + 119) = -18;
    *(inited + 120) = sub_249F9A9A4();
    *(inited + 128) = 0xD000000000000013;
    *(inited + 136) = 0x8000000249F9CD10;
    *(inited + 144) = sub_249F9A9A4();
    *(inited + 152) = 0x614E746567726174;
    *(inited + 160) = 0xEA0000000000656DLL;
    *(inited + 168) = sub_249F9A9A4();
    *(inited + 176) = 0x6150746567726174;
    *(inited + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v54, v31);

    v39 = sub_249F9A9A4();

    *(inited + 192) = v39;
    *(inited + 200) = 0x7954746567726174;
    *(inited + 208) = 0xEA00000000006570;
    sub_249F7A228(v34, v58);
    sub_249F9AA14();
    v40 = sub_249F9A9A4();

    *(inited + 216) = v40;
    *(inited + 224) = 1701869940;
    *(inited + 232) = 0xE400000000000000;
    *(inited + 240) = sub_249F9AB64();
    strcpy((inited + 248), "failureRetries");
    *(inited + 263) = -18;
    *(inited + 264) = sub_249F9AB64();
    v41 = sub_249F791D4(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    v42 = sub_249F9ABA4();
    v43 = sub_249F9AC64();
    if (os_log_type_enabled(v43, v42))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      aBlock = v45;
      *v44 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v46 = sub_249F9A974();
      v48 = sub_249F78A30(v46, v47, &aBlock);

      *(v44 + 4) = v48;
      _os_log_impl(&dword_249F74000, v43, v42, "Sending failure analysis event: %s)", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x24C20AE50](v45, -1, -1);
      MEMORY[0x24C20AE50](v44, -1, -1);
    }

    v49 = v57;
    v50 = sub_249F9A9A4();
    v51 = swift_allocObject();
    *(v51 + 16) = v41;
    v64 = sub_249F7ABC0;
    v65 = v51;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_249F77EF4;
    v63 = &block_descriptor_48;
    v52 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v52);

    sub_249F8065C(v34);
    sub_249F806B8(v49, &unk_27EF2CCC0, &unk_249F9B960);
  }

  else
  {
    v35 = swift_allocObject();
    v35[2] = a3;
    v35[3] = a1;
    v36 = v56;
    v35[4] = v57;
    v35[5] = a4;
    v35[6] = v36;
    v64 = sub_249F85DF0;
    v65 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v61 = 1107296256;
    v62 = sub_249F859A0;
    v63 = &block_descriptor_41;
    v37 = _Block_copy(&aBlock);

    CSSymbolOwnerForeachSymbol();
    _Block_release(v37);
  }
}

uint64_t sub_249F848B0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v169 = a7;
  v170 = a6;
  v171 = a2;
  v8 = type metadata accessor for TargetType(0);
  v172 = *(v8 - 8);
  v9 = MEMORY[0x28223BE20](v8);
  v173 = &v155 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v174 = &v155 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCC0, &unk_249F9B960);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = (&v155 - v16);
  v18 = a3[4];

  LOBYTE(v18) = v18(v19);

  if (v18)
  {
    v20 = sub_249F9ABA4();
    v171 = sub_249F7AA2C(0, &qword_27EF2CC10, 0x277D86200);
    v21 = sub_249F9AC64();
    sub_249F9A874(v20, &dword_249F74000, v21, "EcosystemAnalytics.framework:MachOParser: CSSymbolOwnerForeachSymbol interrupted", 80, 2, MEMORY[0x277D84F90]);

    v22 = a3[2];
    v23 = a3[3];

    v24 = sub_249F9A1B8(v22, v23);
    v26 = v25;

    *v17 = v24;
    v17[1] = v26;
    swift_storeEnumTagMultiPayload();
    v27 = v172;
    (*(v172 + 56))(v17, 0, 1, v8);
    v28 = a3[2];
    v29 = a3[3];

    v170 = sub_249F9A1B8(v28, v29);
    v31 = v30;

    sub_249F7A914(v17, v15, &unk_27EF2CCC0, &unk_249F9B960);
    v32 = *(v27 + 48);
    v33 = v32(v15, 1, v8);
    v167 = v8;
    v168 = v17;
    if (v33 == 1)
    {
      v34 = v174;
      swift_storeEnumTagMultiPayload();
      if (v32(v15, 1, v8) != 1)
      {
        sub_249F806B8(v15, &unk_27EF2CCC0, &unk_249F9B960);
      }
    }

    else
    {
      v34 = v174;
      sub_249F7A2F8(v15, v174);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB18, &unk_249F9BE10);
    v56 = swift_allocObject();
    *(v56 + 16) = xmmword_249F9B940;
    *(v56 + 32) = 0x74536E6F6D656164;
    *(v56 + 40) = 0xEB00000000657461;
    *(v56 + 48) = sub_249F9A9A4();
    *(v56 + 56) = 0xD000000000000012;
    *(v56 + 64) = 0x8000000249F9CCF0;
    *(v56 + 72) = sub_249F9A9A4();
    *(v56 + 80) = 0x546572756C696166;
    *(v56 + 88) = 0xEB00000000657079;
    *(v56 + 96) = sub_249F9A9A4();
    strcpy((v56 + 104), "targetBundleID");
    *(v56 + 119) = -18;
    *(v56 + 120) = sub_249F9A9A4();
    *(v56 + 128) = 0xD000000000000013;
    *(v56 + 136) = 0x8000000249F9CD10;
    *(v56 + 144) = sub_249F9A9A4();
    *(v56 + 152) = 0x614E746567726174;
    *(v56 + 160) = 0xEA0000000000656DLL;
    *(v56 + 168) = sub_249F9A9A4();
    *(v56 + 176) = 0x6150746567726174;
    *(v56 + 184) = 0xEA00000000006874;
    sub_249F9A1B8(v170, v31);

    v57 = sub_249F9A9A4();

    *(v56 + 192) = v57;
    *(v56 + 200) = 0x7954746567726174;
    *(v56 + 208) = 0xEA00000000006570;
    sub_249F7A228(v34, v173);
    sub_249F9AA14();
    v58 = sub_249F9A9A4();

    *(v56 + 216) = v58;
    *(v56 + 224) = 1701869940;
    *(v56 + 232) = 0xE400000000000000;
    *(v56 + 240) = sub_249F9AB64();
    strcpy((v56 + 248), "failureRetries");
    *(v56 + 263) = -18;
    *(v56 + 264) = sub_249F9AB64();
    v59 = sub_249F791D4(v56);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27EF2CCD0, &qword_249F9B980);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v60 = sub_249F9ABA4();
    v61 = sub_249F9AC64();
    if (os_log_type_enabled(v61, v60))
    {
      v62 = swift_slowAlloc();
      v63 = swift_slowAlloc();
      aBlock = v63;
      *v62 = 136315138;
      sub_249F7AA2C(0, &qword_27EF2CB20, 0x277D82BB8);
      v64 = sub_249F9A974();
      v66 = sub_249F78A30(v64, v65, &aBlock);
      v67 = v174;

      *(v62 + 4) = v66;
      _os_log_impl(&dword_249F74000, v61, v60, "Sending failure analysis event: %s)", v62, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v63);
      MEMORY[0x24C20AE50](v63, -1, -1);
      MEMORY[0x24C20AE50](v62, -1, -1);
    }

    else
    {
      v67 = v34;
    }

    v68 = sub_249F9A9A4();
    v69 = swift_allocObject();
    *(v69 + 16) = v59;
    v207 = sub_249F7ABC0;
    v208 = v69;
    aBlock = MEMORY[0x277D85DD0];
    v204 = 1107296256;
    v205 = sub_249F77EF4;
    v206 = &block_descriptor_55;
    v70 = _Block_copy(&aBlock);

    AnalyticsSendEventLazy();
    _Block_release(v70);

    sub_249F8065C(v67);
    return sub_249F806B8(v168, &unk_27EF2CCC0, &unk_249F9B960);
  }

  Name = CSSymbolGetName();
  Path = CSSymbolOwnerGetPath();
  CSSymbolOwnerGetArchitecture();
  FamilyName = CSArchitectureGetFamilyName();
  CFUUIDBytes = CSSymbolOwnerGetCFUUIDBytes();
  v39 = swift_slowAlloc();
  if (CFUUIDBytes && MEMORY[0x24C20A710](CFUUIDBytes, v39, 40))
  {
    v40 = sub_249F9AA64();
    v42 = v41;
    if (!Name)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v40 = 0;
    v42 = 0xE000000000000000;
    if (!Name)
    {
LABEL_15:
    }
  }

  if (!Path || !FamilyName)
  {
    goto LABEL_15;
  }

  v172 = v40;
  v164 = FamilyName;
  v43 = sub_249F9AA54();
  v45 = v44;
  v46 = a3[2];
  v47 = a3[3];
  v173 = v43;
  v174 = v46;
  v48 = v170;
  swift_beginAccess();
  v49 = *(v48 + 16);

  v50 = sub_249F9AA54();
  if (*(v49 + 16))
  {
    sub_249F86B30(v50, v51);
    v53 = v52;

    v54 = v173;
    if (v53)
    {
      goto LABEL_37;
    }
  }

  else
  {

    v54 = v173;
  }

  type metadata accessor for MachOParser();
  swift_allocObject();

  sub_249F85C5C(v54, v45, sub_249F7C9A0, 0);
  LODWORD(v167) = sub_249F88BD4(v174, v47);
  v71 = sub_249F9A1B8(v54, v45);
  v165 = v72;
  v166 = v71;

  v73 = sub_249F9A9A4();

  v74 = nm_extractTeamID(v73);

  v171 = v45;
  v168 = v47;
  if (v74)
  {
    v75 = sub_249F9A9D4();
    v77 = v76;
  }

  else
  {
    v75 = 0;
    v77 = 0xE000000000000000;
  }

  v78 = sub_249F9A9A4();

  v79 = nm_extractCDHash(v78);

  if (v79)
  {
    v80 = sub_249F9A9D4();
    v82 = v81;
  }

  else
  {
    v80 = 0;
    v82 = 0xE000000000000000;
  }

  v83 = sub_249F80F98();
  if (v84)
  {
    v85 = v83;
  }

  else
  {
    v85 = 0;
  }

  if (v84)
  {
    v86 = v84;
  }

  else
  {
    v86 = 0xE000000000000000;
  }

  aBlock = v172;
  v204 = v42;
  LOBYTE(v205) = v167;
  v206 = v166;
  v207 = v165;
  v208 = v75;
  v209 = v77;
  v210 = v80;
  v211 = v82;
  v212 = v85;
  v213 = v86;
  v214 = xmmword_249F9BD20;
  swift_beginAccess();

  v54 = v173;
  v45 = v171;
  sub_249F85ADC(&aBlock, v173, v171, &v197);
  swift_endAccess();

  v194 = v201;
  v195 = *v202;
  v196 = *&v202[16];
  v190 = v197;
  v191 = v198;
  v192 = v199;
  v193 = v200;
  sub_249F806B8(&v190, &qword_27EF2CCE0, &qword_249F9BE20);
  v47 = v168;
LABEL_37:
  v87 = v170;
  swift_beginAccess();
  v88 = v174;
  if (!*(*(v87 + 16) + 16) || (sub_249F86B30(v174, v47), (v89 & 1) == 0) || (swift_endAccess(), v90 = v170, swift_beginAccess(), !*(*(v90 + 16) + 16)) || (sub_249F86B30(v54, v45), (v91 & 1) == 0))
  {
    swift_endAccess();
  }

  swift_endAccess();
  v92 = v170;
  swift_beginAccess();
  v93 = *(v92 + 16);
  if (!*(v93 + 16))
  {
    goto LABEL_62;
  }

  v94 = sub_249F86B30(v88, v47);
  if ((v95 & 1) == 0)
  {
    goto LABEL_62;
  }

  v96 = v47;
  v97 = *(v93 + 56) + 104 * v94;
  v99 = *(v97 + 16);
  v98 = *(v97 + 32);
  v190 = *v97;
  v191 = v99;
  v192 = v98;
  v100 = *(v97 + 48);
  v101 = *(v97 + 64);
  v102 = *(v97 + 80);
  v196 = *(v97 + 96);
  v194 = v101;
  v195 = v102;
  v193 = v100;
  swift_endAccess();
  v165 = *(&v190 + 1);
  v166 = v190;
  LODWORD(v167) = v191;
  if (v190 != __PAIR128__(0xE000000000000000, 0) && (sub_249F9ADF4() & 1) == 0 || (v88 != v54 || v47 != v45) && (sub_249F9ADF4() & 1) == 0)
  {
    v174 = *(&v195 + 1);
    v172 = v196;
    v162 = v195;
    v163 = *(&v194 + 1);
    v160 = v194;
    v161 = *(&v193 + 1);
    v158 = v193;
    v159 = *(&v192 + 1);
    v156 = v192;
    v157 = *(&v191 + 1);
    sub_249F80718(&v190, &v197);
    goto LABEL_53;
  }

  v103 = *(&v191 + 1);
  v104 = v192;

  sub_249F80718(&v190, &v197);
  v105 = sub_249F9A1B8(v103, v104);
  *&v197 = v172;
  *(&v197 + 1) = v42;
  LOBYTE(v198) = v167;
  *(&v198 + 1) = v105;
  *&v199 = v106;
  *(&v199 + 1) = *(&v192 + 1);
  v200 = v193;
  v201 = v194;
  *v202 = v195;
  *&v202[8] = xmmword_249F9BD20;
  v107 = v170;
  swift_beginAccess();

  v108 = v174;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v176 = *(v107 + 16);
  *(v107 + 16) = 0x8000000000000000;
  sub_249F87A8C(&v197, v108, v96, isUniquelyReferenced_nonNull_native);

  v110 = v176;
  *(v107 + 16) = v176;
  swift_endAccess();
  if (!*(v110 + 16))
  {
    __break(1u);
    goto LABEL_61;
  }

  v111 = sub_249F86B30(v108, v96);
  if ((v112 & 1) == 0)
  {
LABEL_61:
    __break(1u);
LABEL_62:
    swift_endAccess();
    __break(1u);
LABEL_63:
    result = swift_endAccess();
    __break(1u);
    return result;
  }

  v113 = *(v110 + 56) + 104 * v111;
  v115 = *(v113 + 16);
  v114 = *(v113 + 32);
  v183 = *v113;
  v184 = v115;
  v185 = v114;
  v116 = *(v113 + 48);
  v117 = *(v113 + 64);
  v118 = *(v113 + 80);
  v189 = *(v113 + 96);
  v187 = v117;
  v188 = v118;
  v186 = v116;
  sub_249F80718(&v183, &v176);
  sub_249F85E00(&v190);
  v174 = *(&v188 + 1);
  v172 = v189;
  v162 = v188;
  v163 = *(&v187 + 1);
  v160 = v187;
  v161 = *(&v186 + 1);
  v158 = v186;
  v159 = *(&v185 + 1);
  v156 = v185;
  v157 = *(&v184 + 1);
  LODWORD(v167) = v184;
  v165 = *(&v183 + 1);
  v166 = v183;
  v54 = v173;
LABEL_53:
  v119 = v170;
  swift_beginAccess();
  v120 = *(v119 + 16);
  if (!*(v120 + 16))
  {
    goto LABEL_63;
  }

  v121 = sub_249F86B30(v54, v45);
  if ((v122 & 1) == 0)
  {
    goto LABEL_63;
  }

  v123 = *(v120 + 56) + 104 * v121;
  v125 = *(v123 + 16);
  v124 = *(v123 + 32);
  v183 = *v123;
  v184 = v125;
  v185 = v124;
  v126 = *(v123 + 48);
  v127 = *(v123 + 64);
  v128 = *(v123 + 80);
  v189 = *(v123 + 96);
  v187 = v127;
  v188 = v128;
  v186 = v126;
  swift_endAccess();
  sub_249F80718(&v183, &v176);

  v129 = sub_249F9AA54();
  v131 = v130;
  v132 = sub_249F9A1B8(v54, v45);
  v134 = v133;

  v135 = sub_249F9AA54();
  v137 = v136;
  v138 = v169;
  swift_beginAccess();
  v139 = *(v138 + 16);
  v140 = swift_isUniquelyReferenced_nonNull_native();
  *(v138 + 16) = v139;
  if ((v140 & 1) == 0)
  {
    v139 = sub_249F8EBF4(0, *(v139 + 2) + 1, 1, v139);
    *(v169 + 16) = v139;
  }

  v142 = *(v139 + 2);
  v141 = *(v139 + 3);
  if (v142 >= v141 >> 1)
  {
    v139 = sub_249F8EBF4((v141 > 1), v142 + 1, 1, v139);
  }

  v182 = v189;
  v180 = v187;
  v181 = v188;
  v178 = v185;
  v179 = v186;
  v176 = v183;
  v177 = v184;
  *(v139 + 2) = v142 + 1;
  v143 = &v139[432 * v142];
  *(v143 + 4) = v129;
  *(v143 + 5) = v131;
  v143 += 32;
  *(v143 + 2) = 0;
  *(v143 + 3) = 0xE000000000000000;
  *(v143 + 4) = v132;
  *(v143 + 5) = v134;
  v144 = v165;
  *(v143 + 6) = v166;
  *(v143 + 7) = v144;
  v143[64] = v167;
  LODWORD(v144) = v175[0];
  *(v143 + 17) = *(v175 + 3);
  *(v143 + 65) = v144;
  v145 = v156;
  *(v143 + 9) = v157;
  *(v143 + 10) = v145;
  v146 = v158;
  *(v143 + 11) = v159;
  *(v143 + 12) = v146;
  v147 = v160;
  *(v143 + 13) = v161;
  *(v143 + 14) = v147;
  v148 = v162;
  *(v143 + 15) = v163;
  *(v143 + 16) = v148;
  v149 = v172;
  *(v143 + 17) = v174;
  *(v143 + 18) = v149;
  v150 = v176;
  v151 = v177;
  *(v143 + 184) = v178;
  *(v143 + 168) = v151;
  *(v143 + 152) = v150;
  v152 = v179;
  v153 = v180;
  v154 = v181;
  *(v143 + 31) = v182;
  *(v143 + 232) = v154;
  *(v143 + 216) = v153;
  *(v143 + 200) = v152;
  *(v143 + 16) = 0u;
  *(v143 + 17) = 0u;
  *(v143 + 18) = 0u;
  *(v143 + 19) = 0u;
  *(v143 + 20) = 0u;
  *(v143 + 21) = 0u;
  *(v143 + 22) = 0u;
  *(v143 + 46) = 0;
  *(v143 + 47) = v135;
  *(v143 + 48) = v137;
  *(v143 + 49) = 1;
  *(v143 + 50) = 0;
  *(v143 + 51) = 0xE000000000000000;
  *(v143 + 52) = 0;
  *(v143 + 53) = 0xE000000000000000;
  *(v169 + 16) = v139;
  return swift_endAccess();
}

uint64_t sub_249F859A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);

  v5(a2, a3);
}

void sub_249F85A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  v6 = *(a5 + 16);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    *(a5 + 16) = v7;
  }
}

uint64_t sub_249F85A68()
{

  return swift_deallocClassInstance();
}

uint64_t sub_249F85ADC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  result = sub_249F86B30(a2, a3);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_9;
  }

  v5 = v14;
  if (v12[3] < v18)
  {
    sub_249F86F08(v18, isUniquelyReferenced_nonNull_native);
    result = sub_249F86B30(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      goto LABEL_6;
    }

    result = sub_249F9AE04();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_9:
    v29 = result;
    sub_249F882AC();
    result = v29;
    if (v5)
    {
      goto LABEL_7;
    }

LABEL_10:
    sub_249F880D0(result, a2, a3, a1, v12);
    *(a4 + 96) = 0;
    *(a4 + 64) = 0u;
    *(a4 + 80) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = 0u;
    *(a4 + 16) = 0u;

    goto LABEL_11;
  }

LABEL_6:
  if ((v5 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_7:
  v20 = v12[7] + 104 * result;
  v21 = *(v20 + 80);
  *(a4 + 64) = *(v20 + 64);
  *(a4 + 80) = v21;
  *(a4 + 96) = *(v20 + 96);
  v22 = *(v20 + 16);
  *a4 = *v20;
  *(a4 + 16) = v22;
  v23 = *(v20 + 48);
  *(a4 + 32) = *(v20 + 32);
  *(a4 + 48) = v23;
  v24 = *(a1 + 16);
  *v20 = *a1;
  *(v20 + 16) = v24;
  v25 = *(a1 + 32);
  v26 = *(a1 + 48);
  v27 = *(a1 + 64);
  v28 = *(a1 + 80);
  *(v20 + 96) = *(a1 + 96);
  *(v20 + 64) = v27;
  *(v20 + 80) = v28;
  *(v20 + 32) = v25;
  *(v20 + 48) = v26;
LABEL_11:
  *v6 = v12;
  return result;
}

void *sub_249F85C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = MEMORY[0x277D84F90];
  v4[6] = sub_249F7A53C(MEMORY[0x277D84F90]);
  v4[7] = v9;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  v4[5] = a4;

  v10 = sub_249F9A9A4();

  v13[4] = sub_249F85E54;
  v14 = v4;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 1107296256;
  v13[2] = sub_249F80C8C;
  v13[3] = &block_descriptor_58;
  v11 = _Block_copy(v13);

  nm_macho_for_each_slice(v10, v11);
  _Block_release(v11);

  return v4;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_22Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t objectdestroy_64Tm(uint64_t a1)
{

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

unint64_t sub_249F85F30()
{
  result = qword_27EF2CD78;
  if (!qword_27EF2CD78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EF2CD70, &qword_249F9BEA8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EF2CD78);
  }

  return result;
}

void sub_249F85FFC(uint64_t a1)
{
  v2 = v1;
  if (*(a1 + 16))
  {
    v4 = sub_249F86B30(0x614E6C6F626D7973, 0xEA0000000000656DLL);
    if (v5)
    {
      v6 = *(*(a1 + 56) + 8 * v4);
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CD80, &qword_249F9BF28);
  v7 = sub_249F9AA14();
  MEMORY[0x24C20A200](v7);

  MEMORY[0x24C20A200](45, 0xE100000000000000);
  if (*(a1 + 16))
  {
    v8 = sub_249F86B30(0x61507972616E6962, 0xEA00000000006874);
    if (v9)
    {
      v10 = *(*(a1 + 56) + 8 * v8);
    }
  }

  v11 = sub_249F9AA14();
  MEMORY[0x24C20A200](v11);

  MEMORY[0x24C20A200](45, 0xE100000000000000);
  if (*(a1 + 16))
  {
    v12 = sub_249F86B30(0x74615062696C7964, 0xE900000000000068);
    if (v13)
    {
      v14 = *(*(a1 + 56) + 8 * v12);
    }
  }

  v15 = sub_249F9AA14();
  MEMORY[0x24C20A200](v15);

  MEMORY[0x24C20A200](45, 0xE100000000000000);
  if (*(a1 + 16))
  {
    v16 = sub_249F86B30(0xD000000000000010, 0x8000000249F9DD10);
    if (v17)
    {
      v18 = *(*(a1 + 56) + 8 * v16);
    }
  }

  v19 = sub_249F9AA14();
  MEMORY[0x24C20A200](v19);

  MEMORY[0x24C20A200](45, 0xE100000000000000);
  if (*(a1 + 16))
  {
    v20 = sub_249F86B30(0x794472656C6C6163, 0xEF6874615062696CLL);
    if (v21)
    {
      v22 = *(*(a1 + 56) + 8 * v20);
    }
  }

  v23 = sub_249F9AA14();
  MEMORY[0x24C20A200](v23);

  swift_beginAccess();
  if (!*(*(v1 + 16) + 16) || (, sub_249F86B30(0, 0xE000000000000000), v25 = v24, , (v25 & 1) == 0))
  {
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *(v1 + 16);
    *(v1 + 16) = 0x8000000000000000;
    sub_249F87C34(a1, 0, 0xE000000000000000, isUniquelyReferenced_nonNull_native);

    *(v1 + 16) = v39;
    swift_endAccess();
    return;
  }

  v26 = *(v1 + 16);
  if (!*(v26 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  v27 = sub_249F86B30(0, 0xE000000000000000);
  if ((v28 & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v29 = *(*(v26 + 56) + 8 * v27);

  if (*(v29 + 16))
  {
    v30 = sub_249F86B30(0x6F436C6F626D7973, 0xEB00000000746E75);
    if (v31)
    {
      v32 = *(*(v29 + 56) + 8 * v30);
      objc_opt_self();
      swift_dynamicCastObjCClassUnconditional();
      sub_249F9AC54();
      v33 = v32;
      MEMORY[0x24C20A3E0](1);
      sub_249F9AC44();
      v34 = sub_249F9AC34();
      v35 = swift_isUniquelyReferenced_nonNull_native();
      sub_249F87DB0(v34, 0x6F436C6F626D7973, 0xEB00000000746E75, v35);
      swift_beginAccess();

      v36 = swift_isUniquelyReferenced_nonNull_native();
      v38 = *(v2 + 16);
      *(v2 + 16) = 0x8000000000000000;
      sub_249F87C34(v29, 0, 0xE000000000000000, v36);

      *(v2 + 16) = v38;
      swift_endAccess();

      return;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
}

void sub_249F864E4()
{
  v1 = v0;
  v2 = *(v0 + 40);
  if (v2 == -1)
  {
    swift_beginAccess();
    v2 = *(*(v0 + 16) + 16);
  }

  swift_beginAccess();
  v3 = *(*(v0 + 16) + 16);
  v44 = v1;
  if (v2 < v3)
  {
    while (v3)
    {
      aBlock[0] = 0;
      MEMORY[0x24C20AE60](aBlock, 8);
      v11 = (aBlock[0] * v3) >> 64;
      if (v3 > (aBlock[0] * v3))
      {
        v12 = -v3 % v3;
        if (v12 > aBlock[0] * v3)
        {
          do
          {
            aBlock[0] = 0;
            MEMORY[0x24C20AE60](aBlock, 8);
          }

          while (v12 > aBlock[0] * v3);
          v11 = (aBlock[0] * v3) >> 64;
        }
      }

      v13 = *(v1 + 16);
      v14 = *(v13 + 16);
      if (v14)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB98, &unk_249F9BF50);
        v15 = swift_allocObject();
        v16 = _swift_stdlib_malloc_size(v15);
        v17 = v16 - 32;
        if (v16 < 32)
        {
          v17 = v16 - 17;
        }

        v15[2] = v14;
        v15[3] = 2 * (v17 >> 4);
        v45 = sub_249F888B8(aBlock, v15 + 4, v14, v13);
        v18 = aBlock[0];

        sub_249F8053C(v18);
        if (v45 != v14)
        {
          goto LABEL_38;
        }

        v1 = v44;
      }

      else
      {
        v15 = MEMORY[0x277D84F90];
      }

      if (v11 >= v15[2])
      {
        goto LABEL_37;
      }

      v19 = &v15[2 * v11];
      v20 = v19[4];
      v21 = v19[5];

      swift_beginAccess();
      v22 = sub_249F86B30(v20, v21);
      v24 = v23;

      if (v24)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = *(v1 + 16);
        *(v1 + 16) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_249F8813C();
        }

        sub_249F878DC(v22, v26);
        *(v1 + 16) = v26;
      }

      swift_endAccess();
      v3 = *(*(v1 + 16) + 16);
      if (v2 >= v3)
      {
        goto LABEL_4;
      }
    }
  }

  else
  {
LABEL_4:
    v4 = sub_249F9ABB4();
    sub_249F7B7E8();

    v5 = sub_249F9AC64();
    if (os_log_type_enabled(v5, v4))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      aBlock[0] = v7;
      *v6 = 134218242;
      *(v6 + 4) = *(*(v1 + 16) + 16);

      *(v6 + 12) = 2080;
      v8 = *(v1 + 24);
      v9 = *(v44 + 32);

      v10 = sub_249F78A30(v8, v9, aBlock);
      v1 = v44;

      *(v6 + 14) = v10;
      _os_log_impl(&dword_249F74000, v5, v4, "EcosystemAnalytics.framework:AnalyticsRandomizer: Sending %ld %s events", v6, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v7);
      MEMORY[0x24C20AE50](v7, -1, -1);
      MEMORY[0x24C20AE50](v6, -1, -1);
    }

    else
    {
    }

    v27 = *(v1 + 16);
    v28 = 1 << *(v27 + 32);
    v29 = -1;
    if (v28 < 64)
    {
      v29 = ~(-1 << v28);
    }

    v30 = v29 & *(v27 + 64);
    v31 = (v28 + 63) >> 6;

    v32 = 0;
    while (v30)
    {
      v33 = v32;
LABEL_32:
      v34 = __clz(__rbit64(v30));
      v30 &= v30 - 1;
      v35 = v34 | (v33 << 6);
      v36 = (*(v27 + 48) + 16 * v35);
      v37 = *v36;
      v38 = v36[1];
      v39 = *(*(v27 + 56) + 8 * v35);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB78, &unk_249F9BF40);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_249F9B920;
      *(v40 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB80, &qword_249F9BBE0);
      *(v40 + 32) = v39;
      swift_bridgeObjectRetain_n();

      sub_249F9AE54();

      v41 = sub_249F9A9A4();

      v42 = swift_allocObject();
      v42[2] = v37;
      v42[3] = v38;
      v42[4] = v39;
      aBlock[4] = sub_249F88898;
      aBlock[5] = v42;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_249F77EF4;
      aBlock[3] = &block_descriptor_2;
      v43 = _Block_copy(aBlock);

      AnalyticsSendEventLazy();
      _Block_release(v43);
    }

    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {

        return;
      }

      v30 = *(v27 + 64 + 8 * v33);
      ++v32;
      if (v30)
      {
        v32 = v33;
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
}

uint64_t AnalyticsRandomizer.deinit()
{

  return v0;
}

uint64_t AnalyticsRandomizer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_249F86B30(uint64_t a1, uint64_t a2)
{
  sub_249F9AE64();
  sub_249F9AA34();
  v4 = sub_249F9AE84();

  return sub_249F86BA8(a1, a2, v4);
}

unint64_t sub_249F86BA8(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_249F9ADF4())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_249F86C60(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CBB0, &qword_249F9BC08);
  v34 = v4;
  result = sub_249F9ADA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_249F9AE64();
      sub_249F9AA34();
      result = sub_249F9AE84();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_249F86F08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB68, &unk_249F9BF30);
  v39 = v4;
  result = sub_249F9ADA4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 104 * v21;
      if (v39)
      {
        v42 = *(v25 + 16);
        v45 = *(v25 + 24);
        v40 = *(v25 + 8);
        v41 = *(v25 + 32);
        v43 = *v25;
        v44 = *(v25 + 48);
        v46 = *(v25 + 64);
        v47 = *(v25 + 40);
        v48 = *(v25 + 80);
        v49 = *(v25 + 56);
        v51 = *(v25 + 72);
        v52 = *(v25 + 88);
        v50 = *(v25 + 96);
      }

      else
      {
        v27 = *(v25 + 16);
        v26 = *(v25 + 32);
        v54 = *v25;
        v55 = v27;
        v56 = v26;
        v29 = *(v25 + 64);
        v28 = *(v25 + 80);
        v30 = *(v25 + 48);
        v60 = *(v25 + 96);
        v58 = v29;
        v59 = v28;
        v57 = v30;
        v50 = v60;
        v51 = *(&v29 + 1);
        v52 = *(&v28 + 1);
        v48 = v28;
        v49 = *(&v30 + 1);
        v46 = v29;
        v47 = *(&v56 + 1);
        v44 = v30;
        v45 = *(&v55 + 1);
        v42 = v55;
        v40 = *(&v54 + 1);
        v43 = v54;
        v41 = v56;

        sub_249F80718(&v54, v53);
      }

      sub_249F9AE64();
      sub_249F9AA34();
      result = sub_249F9AE84();
      v31 = -1 << *(v7 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v14 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v14 + 8 * v33);
          if (v37 != -1)
          {
            v15 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v32) & ~*(v14 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 104 * v15;
      *v17 = v43;
      *(v17 + 8) = v40;
      *(v17 + 16) = v42;
      *(v17 + 24) = v45;
      *(v17 + 32) = v41;
      *(v17 + 40) = v47;
      *(v17 + 48) = v44;
      *(v17 + 56) = v49;
      *(v17 + 64) = v46;
      *(v17 + 72) = v51;
      *(v17 + 80) = v48;
      *(v17 + 88) = v52;
      *(v17 + 96) = v50;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v38 = 1 << *(v5 + 32);
    v3 = v2;
    if (v38 >= 64)
    {
      bzero((v5 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v38;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_249F872D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB90, &unk_249F9BBF0);
  v35 = v4;
  result = sub_249F9ADA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_249F9AE64();
      sub_249F9AA34();
      result = sub_249F9AE84();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_249F87574(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EF2CB58, &qword_249F9BBB8);
  v49 = v4;
  result = sub_249F9ADA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v48 = v5;
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
    while (v12)
    {
      v21 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v24 = v21 | (v8 << 6);
      v25 = *(v5 + 56);
      v26 = (*(v5 + 48) + 16 * v24);
      v27 = *v26;
      v28 = v26[1];
      v29 = (v25 + 120 * v24);
      if (v49)
      {
        v50 = v29[1];
        v51 = *v29;
        v30 = *(v29 + 6);
        v65 = *(v29 + 5);
        v66 = v30;
        v67 = v29[14];
        v31 = *(v29 + 2);
        v61 = *(v29 + 1);
        v62 = v31;
        v33 = *(v29 + 3);
        v32 = *(v29 + 4);
      }

      else
      {
        v35 = *(v29 + 2);
        v34 = *(v29 + 3);
        v36 = *(v29 + 1);
        v53 = *v29;
        v54 = v36;
        v55 = v35;
        v38 = *(v29 + 5);
        v37 = *(v29 + 6);
        v39 = *(v29 + 4);
        v60 = v29[14];
        v58 = v38;
        v59 = v37;
        v56 = v34;
        v57 = v39;
        v50 = *(&v53 + 1);
        v51 = v53;

        sub_249F85EC4(&v53, v52);
        v65 = v58;
        v66 = v59;
        v67 = v60;
        v61 = v54;
        v62 = v55;
        v33 = v56;
        v32 = v57;
      }

      v63 = v33;
      v64 = v32;
      sub_249F9AE64();
      sub_249F9AA34();
      result = sub_249F9AE84();
      v40 = -1 << *(v7 + 32);
      v41 = result & ~v40;
      v42 = v41 >> 6;
      if (((-1 << v41) & ~*(v14 + 8 * (v41 >> 6))) == 0)
      {
        v43 = 0;
        v44 = (63 - v40) >> 6;
        while (++v42 != v44 || (v43 & 1) == 0)
        {
          v45 = v42 == v44;
          if (v42 == v44)
          {
            v42 = 0;
          }

          v43 |= v45;
          v46 = *(v14 + 8 * v42);
          if (v46 != -1)
          {
            v15 = __clz(__rbit64(~v46)) + (v42 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v41) & ~*(v14 + 8 * (v41 >> 6)))) | v41 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v27;
      v16[1] = v28;
      v17 = *(v7 + 56) + 120 * v15;
      *v17 = v51;
      *(v17 + 8) = v50;
      v18 = v66;
      *(v17 + 80) = v65;
      *(v17 + 96) = v18;
      *(v17 + 112) = v67;
      v19 = v62;
      *(v17 + 16) = v61;
      *(v17 + 32) = v19;
      v20 = v64;
      *(v17 + 48) = v63;
      *(v17 + 64) = v20;
      ++*(v7 + 16);
      v5 = v48;
    }

    v22 = v8;
    while (1)
    {
      v8 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v23 = v9[v8];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v12 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v47 = 1 << *(v5 + 32);
    v3 = v2;
    if (v47 >= 64)
    {
      bzero(v9, ((v47 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v47;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_249F878DC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_249F9ACE4() + 1) & ~v5;
    do
    {
      sub_249F9AE64();

      sub_249F9AA34();
      v9 = sub_249F9AE84();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}