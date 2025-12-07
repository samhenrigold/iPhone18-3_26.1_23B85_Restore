uint64_t sub_26F407AF4@<X0>(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v4;
  return result;
}

uint64_t sub_26F407B74(char *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t LanguagesService.airplaneModeEnabled.setter(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t (*LanguagesService.airplaneModeEnabled.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_26F49DD98();
  return sub_26F40EB7C;
}

void sub_26F407CFC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 48))(*a1, 0);

  free(v1);
}

uint64_t sub_26F407D80(void *a1, uint64_t *a2, uint64_t *a3)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_26F49DD78();
  return swift_endAccess();
}

uint64_t sub_26F407DF8(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  sub_26F49DD78();
  return swift_endAccess();
}

uint64_t sub_26F407E74(uint64_t a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  (v11)(v6, v10, v3);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v4 + 8))(v10, v3);
}

uint64_t LanguagesService.$airplaneModeEnabled.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  (*(v3 + 16))(&v7 - v5, a1, v2, v4);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD88();
  swift_endAccess();
  return (*(v3 + 8))(a1, v2);
}

uint64_t (*LanguagesService.$airplaneModeEnabled.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE8F8, &qword_26F4A2300);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__airplaneModeEnabled;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  v5[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  sub_26F49DD78();
  swift_endAccess();
  return sub_26F40EB80;
}

void sub_26F4082A0(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_26F49DD88();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_26F49DD88();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

uint64_t LanguagesService.init(task:)(unsigned __int8 *a1)
{
  v2 = v1;
  v45 = *MEMORY[0x277D85DE8];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01F0, &qword_26F4A68A8);
  MEMORY[0x28223BE20](v4 - 8);
  v39 = &v36[-v5];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01F8, &unk_26F4A68B0);
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v40 = &v36[-v7];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  v8 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v10 = &v36[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E0, &qword_26F4A6898);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D0, &qword_26F4A6840);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36[-v17];
  v37 = *a1;
  v19 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__models;
  *&address.sa_len = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  sub_26F49DD68();
  (*(v16 + 32))(v2 + v19, v18, v15);
  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_autoDetectSpeechUnsupportedPairs) = MEMORY[0x277D84FA0];
  v20 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__localeModalities;
  *&address.sa_len = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0200, &qword_26F4A68C0);
  sub_26F49DD68();
  (*(v12 + 32))(v2 + v20, v14, v11);
  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_useCellular) = 0;
  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_askedUser) = 0;
  v21 = OBJC_IVAR____TtC13TranslationUI16LanguagesService_airplaneModeConfiguration;
  *(v2 + v21) = [objc_allocWithZone(type metadata accessor for AirplaneModeConfiguration(0)) init];
  v22 = sub_26F3B21E4();
  if (v22 == 2)
  {
    v23 = [objc_allocWithZone(MEMORY[0x277CEC5D0]) init];
    v24 = [v23 airplaneMode];

    v22 = v24;
  }

  v25 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__airplaneModeEnabled;
  address.sa_len = v22 & 1;
  sub_26F49DD68();
  (*(v8 + 32))(v2 + v25, v10, v38);
  *&address.sa_data[6] = 0;
  *address.sa_data = 0;
  *&address.sa_len = 528;
  v26 = SCNetworkReachabilityCreateWithAddress(0, &address);
  if (v26)
  {
    v27 = v26;
    type metadata accessor for Reachability();
    swift_allocObject();
    v26 = Reachability.init(networkReachability:)(v27);
  }

  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_reachability) = v26;
  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_subscriptions) = MEMORY[0x277D84F90];
  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_handle) = 0;
  *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_task) = v37;
  LanguagesService.refresh()();
  v28 = *(v2 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_airplaneModeConfiguration);
  v29 = sub_26F3B158C();

  *&address.sa_len = v29;
  sub_26F3B0C24(0, &qword_280F65680, 0x277D85C78);
  v30 = sub_26F49FE58();
  v43 = v30;
  v31 = sub_26F49FE38();
  v32 = v39;
  (*(*(v31 - 8) + 56))(v39, 1, 1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0210, &qword_26F4A68C8);
  sub_26F3B18CC(&qword_280F657A0, &qword_2806E0210, &qword_26F4A68C8, MEMORY[0x277CBCD90]);
  sub_26F40DBE8();
  v33 = v40;
  sub_26F49DE08();
  sub_26F3B6B4C(v32, &qword_2806E01F0, &qword_26F4A68A8);

  swift_allocObject();
  swift_weakInit();
  sub_26F3B18CC(&qword_280F657A8, &qword_2806E01F8, &unk_26F4A68B0, MEMORY[0x277CBCD60]);
  v34 = v42;
  sub_26F49DE38();

  (*(v41 + 8))(v33, v34);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0218, &unk_26F4A68D0);
  sub_26F3B18CC(&unk_280F656D0, &qword_2806E0218, &unk_26F4A68D0, MEMORY[0x277D83990]);
  sub_26F49DD38();
  swift_endAccess();

  return v2;
}

Swift::Void __swiftcall LanguagesService.refresh()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = aBlock - v2;
  v4 = qword_26F4A6AB0[*(v0 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_task)];
  v5 = swift_allocObject();
  swift_weakInit();
  v6 = objc_allocWithZone(MEMORY[0x277CE1B20]);
  aBlock[4] = sub_26F40DC58;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F3F71F8;
  aBlock[3] = &block_descriptor_4;
  v7 = _Block_copy(aBlock);

  v8 = [v6 initWithTaskHint:v4 useDedicatedMachPort:0 observations:v7];
  _Block_release(v7);

  v9 = *(v0 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_handle);
  *(v0 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_handle) = v8;

  v10 = sub_26F49FC08();
  v11 = *(*(v10 - 8) + 56);
  v11(v3, 1, 1, v10);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v0;

  sub_26F40570C(0, 0, v3, &unk_26F4A68E8, v12);

  v11(v3, 1, 1, v10);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v0;

  sub_26F40570C(0, 0, v3, &unk_26F4A68F8, v13);
}

uint64_t sub_26F408DBC(char *a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    return sub_26F49DDB8();
  }

  return result;
}

uint64_t LanguagesService.deinit()
{
  v1 = OBJC_IVAR____TtC13TranslationUI16LanguagesService_handle;
  v2 = *(v0 + OBJC_IVAR____TtC13TranslationUI16LanguagesService_handle);
  if (v2)
  {
    [v2 cancel];
  }

  v3 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__models;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D0, &qword_26F4A6840);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  v5 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__localeModalities;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01E0, &qword_26F4A6898);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  v7 = OBJC_IVAR____TtC13TranslationUI16LanguagesService__airplaneModeEnabled;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DE908, &qword_26F4A2310);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  return v0;
}

uint64_t LanguagesService.__deallocating_deinit()
{
  LanguagesService.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_26F409010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  sub_26F49FBD8();
  v5[5] = sub_26F49FBC8();
  v7 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F4090A8, v7, v6);
}

uint64_t sub_26F4090A8()
{
  v1 = v0[4];

  swift_getKeyPath();
  swift_getKeyPath();
  v0[2] = v1;

  v2 = v1;
  sub_26F49DDB8();
  v3 = v0[1];

  return v3();
}

void sub_26F409164(unint64_t a1, uint64_t a2)
{
  v87 = a2;
  v3 = sub_26F49F698();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F49F6C8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v88 = &v81 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = sub_26F49DAB8();
  v10 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v12 = &v81 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v95 = &v81 - v14;
  MEMORY[0x28223BE20](v15);
  v96 = &v81 - v16;
  MEMORY[0x28223BE20](v17);
  v100 = &v81 - v18;
  if (a1)
  {
    v82 = v8;
    v83 = v6;
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v19 = sub_26F49DCA8();
    __swift_project_value_buffer(v19, qword_280F67EB8);

    v20 = sub_26F49DC88();
    v21 = sub_26F49FDB8();

    v22 = os_log_type_enabled(v20, v21);
    v89 = v12;
    v86 = v3;
    v85 = v4;
    v84 = v7;
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136315138;
      v25 = objc_opt_self();
      sub_26F3B0C24(0, &qword_2806E00B0, 0x277CE1B28);
      v26 = sub_26F49FAD8();
      v27 = [v25 describeObservations_];

      v28 = sub_26F49F8C8();
      v30 = v29;

      v31 = sub_26F3B38D0(v28, v30, &aBlock);

      *(v23 + 4) = v31;
      _os_log_impl(&dword_26F39E000, v20, v21, "Obsv publsh [%s]", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v24);
      MEMORY[0x274391F70](v24, -1, -1);
      MEMORY[0x274391F70](v23, -1, -1);
    }

    v32 = v95;
    if (a1 >> 62)
    {
      v33 = sub_26F4A00A8();
    }

    else
    {
      v33 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = MEMORY[0x277D84F90];
    if (v33)
    {
      v112 = MEMORY[0x277D84F90];
      sub_26F4032B0(0, v33 & ~(v33 >> 63), 0);
      if (v33 < 0)
      {
        __break(1u);

        __break(1u);
        return;
      }

      v35 = 0;
      v36 = v112;
      v37 = a1;
      v91 = a1 & 0xC000000000000001;
      v38 = v10 + 1;
      v93 = a1;
      v92 = v33;
      v90 = v10 + 1;
      do
      {
        if (v91)
        {
          v39 = MEMORY[0x274390F80](v35, v37);
        }

        else
        {
          v39 = *(v37 + 8 * v35 + 32);
        }

        v40 = v39;
        v41 = [v39 status];
        [v40 progress];
        v98 = v35;
        v99 = v36;
        if (v41 == 2)
        {
          LODWORD(v101) = 1;
          v43 = 0;
        }

        else if (v41 == 1)
        {
          v43 = v42;
          LODWORD(v101) = 0;
        }

        else
        {
          LODWORD(v101) = 1;
          v43 = 1;
        }

        v97 = v40;
        v44 = [v40 locale];
        sub_26F49DA18();

        aBlock = sub_26F49D988();
        v103 = v45;
        v110 = 45;
        v111 = 0xE100000000000000;
        v108 = 95;
        v109 = 0xE100000000000000;
        sub_26F3BDC0C();
        v46 = sub_26F49FFF8();
        v48 = v47;

        aBlock = v46;
        v103 = v48;
        v110 = 45;
        v111 = 0xE100000000000000;
        v108 = 95;
        v109 = 0xE100000000000000;
        v49 = sub_26F49FFF8();
        v51 = v50;

        LOBYTE(aBlock) = v101;

        v52 = v96;
        v101 = v49;
        sub_26F49D978();
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        v53 = sub_26F49D9F8();
        v54 = sub_26F49D9F8();
        v55 = [v53 lt:0 displayNameForContext:v54 inTargetLocale:?];

        if (v55)
        {
          v56 = sub_26F49F8C8();
          v58 = v57;

          v59 = *v38;
          v60 = v94;
          v59(v32, v94);
          v59(v52, v60);
          v61 = v98;
        }

        else
        {
          v59 = *v38;
          v62 = v32;
          v63 = v94;
          v59(v62, v94);
          v64 = v89;
          _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
          v65 = sub_26F49D9F8();
          v66 = sub_26F49D9F8();
          v67 = [v65 lt:0 displaySubnameForContext:v66 inTargetLocale:?];

          v61 = v98;
          if (v67)
          {
            v56 = sub_26F49F8C8();
            v58 = v68;

            v59(v64, v63);
            v59(v96, v63);
          }

          else
          {
            v59(v64, v63);
            v59(v96, v63);

            v56 = v101;
            v58 = v51;
          }

          v60 = v63;
        }

        v69 = aBlock;
        v59(v100, v60);
        v36 = v99;
        v112 = v99;
        v71 = *(v99 + 16);
        v70 = *(v99 + 24);
        v72 = v92;
        if (v71 >= v70 >> 1)
        {
          sub_26F4032B0((v70 > 1), v71 + 1, 1);
          v36 = v112;
        }

        v35 = v61 + 1;
        *(v36 + 16) = v71 + 1;
        v73 = v36 + 48 * v71;
        *(v73 + 32) = v101;
        *(v73 + 40) = v51;
        *(v73 + 48) = v43;
        *(v73 + 56) = v69;
        *(v73 + 64) = v56;
        *(v73 + 72) = v58;
        v37 = v93;
        v32 = v95;
        v38 = v90;
      }

      while (v72 != v35);
      v34 = MEMORY[0x277D84F90];
    }

    else
    {
      v36 = MEMORY[0x277D84F90];
    }

    aBlock = v36;

    sub_26F40C594(&aBlock);

    v74 = aBlock;
    sub_26F3B0C24(0, &qword_280F65680, 0x277D85C78);
    v75 = sub_26F49FE58();
    v76 = swift_allocObject();
    *(v76 + 16) = v87;
    *(v76 + 24) = v74;
    v106 = sub_26F40E9EC;
    v107 = v76;
    aBlock = MEMORY[0x277D85DD0];
    v103 = 1107296256;
    v104 = sub_26F3B3308;
    v105 = &block_descriptor_89;
    v77 = _Block_copy(&aBlock);

    v78 = v88;
    sub_26F49F6B8();
    aBlock = v34;
    sub_26F40E9F4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0720, &unk_26F4A7E70);
    sub_26F3B18CC(&qword_280F656C8, &unk_2806E0720, &unk_26F4A7E70, MEMORY[0x277D83970]);
    v79 = v83;
    v80 = v86;
    sub_26F4A0058();
    MEMORY[0x274390C60](0, v78, v79, v77);
    _Block_release(v77);

    (*(v85 + 8))(v79, v80);
    (*(v82 + 8))(v78, v84);
  }
}

uint64_t sub_26F409BD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return sub_26F49DDB8();
  }

  return result;
}

uint64_t sub_26F409C90()
{
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v1 = sub_26F49DCA8();
  __swift_project_value_buffer(v1, qword_280F67EB8);
  v2 = sub_26F49DC88();
  v3 = sub_26F49FDB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26F39E000, v2, v3, "Bootstrapping language service speech auto-detect unsupported pairs", v4, 2u);
    MEMORY[0x274391F70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0260, &unk_26F4A6A70);
  *v5 = v0;
  v5[1] = sub_26F409E34;

  return MEMORY[0x2822007B8](v0 + 40, 0, 0, 0xD000000000000022, 0x800000026F4ADDC0, sub_26F4118FC, 0, v6);
}

uint64_t sub_26F409E34()
{

  return MEMORY[0x2822009F8](sub_26F409F30, 0, 0);
}

uint64_t sub_26F409F30()
{
  v0[8] = v0[5];
  sub_26F49FBD8();
  v0[9] = sub_26F49FBC8();
  v2 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F409FCC, v2, v1);
}

uint64_t sub_26F409FCC()
{
  v1 = v0[8];
  v2 = v0[6];

  v3 = OBJC_IVAR____TtC13TranslationUI16LanguagesService_autoDetectSpeechUnsupportedPairs;
  swift_beginAccess();
  *(v2 + v3) = v1;

  v4 = v0[1];

  return v4();
}

uint64_t sub_26F40A060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  *(v4 + 32) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F40A0FC, 0, 0);
}

uint64_t sub_26F40A0FC()
{
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v1 = sub_26F49DCA8();
  __swift_project_value_buffer(v1, qword_280F67EB8);
  v2 = sub_26F49DC88();
  v3 = sub_26F49FDB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26F39E000, v2, v3, "Bootstrapping locale modalities", v4, 2u);
    MEMORY[0x274391F70](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  *(v0 + 40) = v5;
  v6 = sub_26F3B0C24(0, &unk_280F65658, 0x277CE1B30);
  *v5 = v0;
  v5[1] = sub_26F40A2A4;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000012, 0x800000026F4ADDA0, sub_26F411C04, 0, v6);
}

uint64_t sub_26F40A2A4()
{

  return MEMORY[0x2822009F8](sub_26F40A3A0, 0, 0);
}

uint64_t sub_26F40A3A0(__n128 a1)
{
  v3 = v1[3];
  v2 = v1[4];
  v4 = v1[2];
  v5 = sub_26F49FC08();
  (*(*(v5 - 8) + 56))(v2, 1, 1, v5);
  sub_26F49FBD8();

  v6 = v4;
  v7 = sub_26F49FBC8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D85700];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v3;
  v8[5] = v6;
  sub_26F40570C(0, 0, v2, &unk_26F4A6A50, v8);

  v10 = v1[1];

  return v10();
}

Swift::Void __swiftcall LanguagesService.cancelDownloads()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v6 - v2;
  v4 = sub_26F49FC08();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v0;

  sub_26F40570C(0, 0, v3, &unk_26F4A6908, v5);
}

uint64_t sub_26F40A5F8()
{
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v1 = sub_26F49DCA8();
  __swift_project_value_buffer(v1, qword_280F67EB8);
  v2 = sub_26F49DC88();
  v3 = sub_26F49FDB8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26F39E000, v2, v3, "Requested cancelling downloads", v4, 2u);
    MEMORY[0x274391F70](v4, -1, -1);
  }

  sub_26F49FBD8();
  *(v0 + 32) = sub_26F49FBC8();
  v6 = sub_26F49FB68();

  return MEMORY[0x2822009F8](sub_26F40A748, v6, v5);
}

uint64_t sub_26F40A748()
{

  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *(v0 + 40) = *(v0 + 16);

  return MEMORY[0x2822009F8](sub_26F40A804, 0, 0);
}

uint64_t sub_26F40A804()
{
  v1 = Array<A>.downloading.getter(*(v0 + 40));

  _s13TranslationUI16LanguagesServiceC6deleteyySayAA13LanguageModelVGF_0(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26F40A884@<X0>(uint64_t *a2@<X8>)
{
  result = sub_26F49DD48();
  *a2 = result;
  return result;
}

double sub_26F40A974(uint64_t *a1)
{
  swift_beginAccess();

  return result;
}

uint64_t sub_26F40AA48(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

void sub_26F40AA9C(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 models];
  sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
  v4 = sub_26F49FAF8();

  *a2 = v4;
}

void sub_26F40AB10(uint64_t *a1, void **a2)
{
  v2 = *a2;
  sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
  v3 = sub_26F49FAD8();
  [v2 setModels_];
}

id LanguagesServiceBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id LanguagesServiceBridge.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC13TranslationUI22LanguagesServiceBridge_service;
  v15 = 0;
  type metadata accessor for LanguagesService(0);
  v7 = swift_allocObject();
  LanguagesService.init(task:)(&v15);
  *&v1[v6] = v7;
  v8 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC13TranslationUI22LanguagesServiceBridge_subscriptions] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR____TtC13TranslationUI22LanguagesServiceBridge_models] = v8;
  v14.receiver = v1;
  v14.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v14, sel_init);
  sub_26F40AD9C();
  v10 = sub_26F49FC08();
  (*(*(v10 - 8) + 56))(v5, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v9;
  sub_26F40570C(0, 0, v5, &unk_26F4A6918, v11);

  return v9;
}

uint64_t sub_26F40AD9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01F0, &qword_26F4A68A8);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v14 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D8, &qword_26F4A6848);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0248, &qword_26F4A6A40);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01D0, &qword_26F4A6840);
  sub_26F49DD78();
  swift_endAccess();
  sub_26F3B0C24(0, &qword_280F65680, 0x277D85C78);
  v11 = sub_26F49FE58();
  v14[1] = v11;
  v12 = sub_26F49FE38();
  (*(*(v12 - 8) + 56))(v2, 1, 1, v12);
  sub_26F3B18CC(&qword_2806E0250, &qword_2806E01D8, &qword_26F4A6848, MEMORY[0x277CBCEC8]);
  sub_26F40DBE8();
  sub_26F49DE08();
  sub_26F3B6B4C(v2, &qword_2806E01F0, &qword_26F4A68A8);

  (*(v4 + 8))(v6, v3);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_26F3B18CC(&qword_2806E0258, &qword_2806E0248, &qword_26F4A6A40, MEMORY[0x277CBCD60]);
  sub_26F49DE38();

  (*(v8 + 8))(v10, v7);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0218, &unk_26F4A68D0);
  sub_26F3B18CC(&unk_280F656D0, &qword_2806E0218, &unk_26F4A68D0, MEMORY[0x277D83990]);
  sub_26F49DD38();
  swift_endAccess();
}

uint64_t sub_26F40B1C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_26F49DAB8();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  v6 = swift_task_alloc();
  v4[6] = v6;
  *v6 = v4;
  v6[1] = sub_26F40B2C8;

  return sub_26F412818();
}

uint64_t sub_26F40B2C8(uint64_t a1)
{
  *(*v1 + 56) = a1;

  return MEMORY[0x2822009F8](sub_26F40B3C8, 0, 0);
}

void sub_26F40B3C8()
{
  v1 = 0;
  v2 = v0[7];
  v3 = *(v2 + 16);
  v4 = v2 + 24;
  v5 = MEMORY[0x277D84F90];
  v6 = MEMORY[0x277D84F90];
LABEL_2:
  v7 = v4 + 48 * v1;
  while (v3 != v1)
  {
    if (v1 >= *(v2 + 16))
    {
      __break(1u);
      return;
    }

    v8 = (v7 + 48);
    ++v1;
    v9 = *(v7 + 24);
    v10 = *(v7 + 32);
    v11 = v10 == 1 && v9 == 0;
    v7 += 48;
    if (!v11)
    {
      v25 = *(v8 - 5);
      v26 = *(v8 - 4);
      v12 = *v8;
      v27 = *(v8 - 1);

      v28 = v4;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_26F4032B0(0, *(v6 + 16) + 1, 1);
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_26F4032B0((v13 > 1), v14 + 1, 1);
      }

      *(v6 + 16) = v14 + 1;
      v15 = v6 + 48 * v14;
      *(v15 + 32) = v25;
      *(v15 + 40) = v26;
      *(v15 + 48) = v9;
      *(v15 + 56) = v10;
      *(v15 + 64) = v27;
      *(v15 + 72) = v12;
      v4 = v28;
      goto LABEL_2;
    }
  }

  v16 = *(v6 + 16);
  if (v16)
  {
    v17 = v0[4];
    sub_26F40333C(0, v16, 0);
    v18._rawValue = v5;
    v19 = v6 + 40;
    do
    {

      sub_26F49D978();
      v21 = v5[2];
      v20 = v5[3];
      if (v21 >= v20 >> 1)
      {
        sub_26F40333C((v20 > 1), v21 + 1, 1);
      }

      v22 = v0[5];
      v23 = v0[3];
      v5[2] = v21 + 1;
      (*(v17 + 32))(v5 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v21, v22, v23);
      v19 += 48;
      --v16;
    }

    while (v16);
  }

  else
  {

    v18._rawValue = MEMORY[0x277D84F90];
  }

  LanguagesServiceBridge.download(locales:)(v18);

  v24 = v0[1];

  v24();
}

Swift::Void __swiftcall LanguagesServiceBridge.download(locales:)(Swift::OpaquePointer locales)
{
  v60 = sub_26F49DAB8();
  v3 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - v9;
  MEMORY[0x28223BE20](v11);
  v63 = &v51 - v14;
  v15 = *(locales._rawValue + 2);
  v16._rawValue = MEMORY[0x277D84F90];
  if (v15)
  {
    v58 = v13;
    v51 = v1;
    v52 = v12;
    v71 = MEMORY[0x277D84F90];
    sub_26F4032B0(0, v15, 0);
    v16._rawValue = v71;
    v18 = *(v3 + 16);
    v17 = v3 + 16;
    v19 = locales._rawValue + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v54 = (v17 - 8);
    v55 = v18;
    v53 = *(v17 + 56);
    v20 = v60;
    v56 = v10;
    v57 = v7;
    v59 = v17;
    do
    {
      rawValue = v16._rawValue;
      v62 = v15;
      v21 = v63;
      v22 = v55;
      v55(v63, v19, v20);
      v22(v10, v21, v20);
      v69 = sub_26F49D988();
      v70 = v23;
      v67 = 45;
      v68 = 0xE100000000000000;
      v65 = 95;
      v66 = 0xE100000000000000;
      sub_26F3BDC0C();
      v24 = sub_26F49FFF8();
      v26 = v25;

      v69 = v24;
      v70 = v26;
      v67 = 45;
      v68 = 0xE100000000000000;
      v65 = 95;
      v66 = 0xE100000000000000;
      v27 = sub_26F49FFF8();
      v29 = v28;

      LOBYTE(v69) = 1;

      v64 = v27;
      sub_26F49D978();
      v30 = v58;
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v31 = sub_26F49D9F8();
      v32 = sub_26F49D9F8();
      v33 = [v31 lt:0 displayNameForContext:v32 inTargetLocale:?];

      v34 = v54;
      if (v33)
      {
        v35 = sub_26F49F8C8();
        v36 = v30;
        v38 = v37;

        v39 = *v34;
        v40 = v60;
        v39(v36, v60);
        v39(v7, v40);
        v20 = v40;
      }

      else
      {
        v39 = *v54;
        (*v54)(v30, v60);
        v41 = v52;
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        v42 = sub_26F49D9F8();
        v43 = sub_26F49D9F8();
        v44 = [v42 lt:0 displaySubnameForContext:v43 inTargetLocale:?];

        if (v44)
        {
          v35 = sub_26F49F8C8();
          v45 = v41;
          v38 = v46;

          v20 = v60;
          v39(v45, v60);
          v39(v7, v20);
        }

        else
        {
          v20 = v60;
          v39(v41, v60);
          v39(v7, v20);

          v35 = v64;
          v38 = v29;
        }
      }

      v47 = v69;
      v10 = v56;
      v39(v56, v20);
      v39(v63, v20);
      v16._rawValue = rawValue;
      v71 = rawValue;
      v49 = rawValue[2];
      v48 = rawValue[3];
      if (v49 >= v48 >> 1)
      {
        sub_26F4032B0((v48 > 1), v49 + 1, 1);
        v20 = v60;
        v16._rawValue = v71;
      }

      *(v16._rawValue + 2) = v49 + 1;
      v50 = v16._rawValue + 48 * v49;
      *(v50 + 4) = v64;
      *(v50 + 5) = v29;
      *(v50 + 6) = 1;
      v50[56] = v47;
      *(v50 + 8) = v35;
      *(v50 + 9) = v38;
      v19 += v53;
      v15 = v62 - 1;
      v7 = v57;
    }

    while (v62 != 1);
  }

  LanguagesService.download(_:)(v16);
}

void sub_26F40BBA4(uint64_t *a1, uint64_t a2)
{
  v24 = sub_26F49DAB8();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = *(v6 + 16);
    if (v8)
    {
      v22 = Strong;
      v25 = MEMORY[0x277D84F90];
      sub_26F4A01F8();
      v23 = (v3 + 8);
      v9 = v6 + 40;
      do
      {
        v14 = *(v9 + 8);
        v15 = *(v9 + 16);
        v16 = objc_opt_self();
        swift_bridgeObjectRetain_n();

        v17 = sub_26F49F898();
        if (v15 == 1)
        {
          if (v14 == 0.0)
          {
            v18 = [v16 discreteProgressWithIdentifier:v17 offlineState:2];
          }

          else
          {
            v18 = [v16 discreteProgressWithIdentifier:v17 offlineState:0];
          }

          v10 = v18;
        }

        else
        {
          v10 = [v16 discreteProgressWithIdentifier:v17 offlineState:1];

          if (v14 > 0.001)
          {
            v11 = v14;
          }

          else
          {
            v11 = 0.001;
          }

          [v10 updatePercentComplete_];
        }

        sub_26F49D978();
        v12 = objc_allocWithZone(MEMORY[0x277CE1B00]);
        v13 = sub_26F49D9F8();
        [v12 initWithLocale:v13 progress:v10];

        (*v23)(v5, v24);

        sub_26F4A01D8();
        sub_26F4A0208();
        sub_26F4A0218();
        sub_26F4A01E8();
        v9 += 48;
        --v8;
      }

      while (v8);
      sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
      v19 = sub_26F49FAD8();

      v20 = v22;
      [v22 setModels_];

      Strong = v19;
    }
  }
}

void *LanguagesServiceBridge.model(locale:)(uint64_t a1)
{
  v3 = [v1 models];
  sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
  v4 = sub_26F49FAF8();

  v7[2] = a1;
  v5 = sub_26F4007E4(sub_26F40DFD4, v7, v4);

  return v5;
}

uint64_t sub_26F40BF4C(id *a1)
{
  v1 = [*a1 ltIdentifier];
  v2 = sub_26F49F8C8();
  v4 = v3;

  sub_26F49D988();
  sub_26F3BDC0C();
  v5 = 1;
  v6 = sub_26F49FFF8();
  v8 = v7;

  if (v2 != v6 || v4 != v8)
  {
    v5 = sub_26F4A0458();
  }

  return v5 & 1;
}

id LanguagesServiceBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F40C3A4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_26F40C49C;

  return v6(a1);
}

uint64_t sub_26F40C49C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_26F40C594(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_26F40D6A4(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_26F40C600(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_26F40C600(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_26F4A0418();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_26F49FB28();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_26F40C848(v7, v8, a1, v4);
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
    return sub_26F40C6F8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_26F40C6F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = result;
    v7 = *a4;
    sub_26F40EA4C();
    v8 = v7 + 48 * v4 - 48;
    v9 = v6 - v4;
LABEL_5:
    v10 = v9;
    v11 = v8;
    while (1)
    {
      result = sub_26F49F858();
      if ((result & 1) == 0)
      {
LABEL_4:
        ++v4;
        v8 += 48;
        --v9;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v7)
      {
        break;
      }

      v12 = *(v11 + 48);
      v13 = *(v11 + 56);
      v14 = *(v11 + 64);
      v15 = *(v11 + 72);
      v16 = *(v11 + 80);
      v17 = *(v11 + 88);
      v18 = *(v11 + 16);
      *(v11 + 48) = *v11;
      *(v11 + 64) = v18;
      *(v11 + 80) = *(v11 + 32);
      *v11 = v12;
      *(v11 + 8) = v13;
      *(v11 + 16) = v14;
      *(v11 + 24) = v15;
      *(v11 + 32) = v16;
      *(v11 + 40) = v17;
      v11 -= 48;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_26F40C848(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v101 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_89:
    v7 = *v101;
    if (!*v101)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_26F40D35C(v9);
      v9 = result;
    }

    v94 = v5;
    v95 = *(v9 + 2);
    if (v95 >= 2)
    {
      while (1)
      {
        v96 = *v6;
        if (!*v6)
        {
          goto LABEL_126;
        }

        v6 = (v95 - 1);
        v97 = *&v9[16 * v95];
        v5 = *&v9[16 * v95 + 24];
        sub_26F40CF90((v96 + 48 * v97), (v96 + 48 * *&v9[16 * v95 + 16]), v96 + 48 * v5, v7);
        if (v94)
        {
        }

        if (v5 < v97)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26F40D35C(v9);
        }

        if (v95 - 2 >= *(v9 + 2))
        {
          goto LABEL_116;
        }

        v98 = &v9[16 * v95];
        *v98 = v97;
        *(v98 + 1) = v5;
        result = sub_26F40D2D0(v6);
        v95 = *(v9 + 2);
        v6 = a3;
        if (v95 <= 1)
        {
        }
      }
    }
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v11 >= v7)
    {
      v7 = v11;
    }

    else
    {
      v103 = 48 * v10;
      v12 = *v6 + 48 * v10;
      sub_26F40EA4C();
      result = sub_26F49F858();
      v13 = v10;
      v14 = result;
      v15 = v13;
      v16 = v13 + 2;
      v17 = v12 + 136;
      while (v7 != v16)
      {
        result = sub_26F49F858();
        ++v16;
        v17 += 48;
        if ((v14 & 1) != (result & 1))
        {
          v7 = v16 - 1;
          break;
        }
      }

      v6 = a3;
      if (v14)
      {
        if (v7 < v15)
        {
          goto LABEL_119;
        }

        v10 = v15;
        if (v15 < v7)
        {
          v18 = 48 * v7 - 24;
          v19 = v103 + 40;
          v20 = v7;
          v21 = v15;
          do
          {
            if (v21 != --v20)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v22 = (v31 + v19);
              v23 = *(v31 + v19 - 40);
              v24 = v31 + v18;
              v25 = *(v22 - 3);
              v26 = *(v22 - 16);
              v27 = *(v22 - 1);
              v28 = *v22;
              v29 = *(v24 + 8);
              v30 = *(v24 - 8);
              *(v22 - 5) = *(v24 - 24);
              *(v22 - 3) = v30;
              *(v22 - 1) = v29;
              *(v24 - 24) = v23;
              *(v24 - 8) = v25;
              *v24 = v26;
              *(v24 + 8) = v27;
              *(v24 + 16) = v28;
            }

            ++v21;
            v18 -= 48;
            v19 += 48;
          }

          while (v21 < v20);
        }
      }

      else
      {
        v10 = v15;
      }
    }

    v32 = v6[1];
    if (v7 < v32)
    {
      if (__OFSUB__(v7, v10))
      {
        goto LABEL_118;
      }

      if (v7 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_120;
        }

        if (v10 + a4 < v32)
        {
          v32 = v10 + a4;
        }

        if (v32 < v10)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v32)
        {
          break;
        }
      }
    }

    v33 = v7;
LABEL_29:
    v7 = 48;
    if (v33 < v10)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_26F40D370(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v35 = *(v9 + 2);
    v34 = *(v9 + 3);
    v36 = v35 + 1;
    if (v35 >= v34 >> 1)
    {
      result = sub_26F40D370((v34 > 1), v35 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v36;
    v37 = &v9[16 * v35];
    *(v37 + 4) = v10;
    *(v37 + 5) = v33;
    v38 = *v101;
    if (!*v101)
    {
      goto LABEL_127;
    }

    v104 = v33;
    if (v35)
    {
      while (1)
      {
        v39 = v36 - 1;
        if (v36 >= 4)
        {
          break;
        }

        if (v36 == 3)
        {
          v40 = *(v9 + 4);
          v41 = *(v9 + 5);
          v50 = __OFSUB__(v41, v40);
          v42 = v41 - v40;
          v43 = v50;
LABEL_49:
          if (v43)
          {
            goto LABEL_106;
          }

          v56 = &v9[16 * v36];
          v58 = *v56;
          v57 = *(v56 + 1);
          v59 = __OFSUB__(v57, v58);
          v60 = v57 - v58;
          v61 = v59;
          if (v59)
          {
            goto LABEL_109;
          }

          v62 = &v9[16 * v39 + 32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v50 = __OFSUB__(v63, v64);
          v65 = v63 - v64;
          if (v50)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v60, v65))
          {
            goto LABEL_113;
          }

          if (v60 + v65 >= v42)
          {
            if (v42 < v65)
            {
              v39 = v36 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v66 = &v9[16 * v36];
        v68 = *v66;
        v67 = *(v66 + 1);
        v50 = __OFSUB__(v67, v68);
        v60 = v67 - v68;
        v61 = v50;
LABEL_63:
        if (v61)
        {
          goto LABEL_108;
        }

        v69 = &v9[16 * v39];
        v71 = *(v69 + 4);
        v70 = *(v69 + 5);
        v50 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v50)
        {
          goto LABEL_111;
        }

        if (v72 < v60)
        {
          goto LABEL_3;
        }

LABEL_70:
        v77 = v39 - 1;
        if (v39 - 1 >= v36)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*v6)
        {
          goto LABEL_124;
        }

        v78 = *&v9[16 * v77 + 32];
        v79 = *&v9[16 * v39 + 40];
        sub_26F40CF90((*v6 + 48 * v78), (*v6 + 48 * *&v9[16 * v39 + 32]), *v6 + 48 * v79, v38);
        if (v5)
        {
        }

        if (v79 < v78)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_26F40D35C(v9);
        }

        if (v77 >= *(v9 + 2))
        {
          goto LABEL_103;
        }

        v80 = &v9[16 * v77];
        *(v80 + 4) = v78;
        *(v80 + 5) = v79;
        result = sub_26F40D2D0(v39);
        v36 = *(v9 + 2);
        if (v36 <= 1)
        {
          goto LABEL_3;
        }
      }

      v44 = &v9[16 * v36 + 32];
      v45 = *(v44 - 64);
      v46 = *(v44 - 56);
      v50 = __OFSUB__(v46, v45);
      v47 = v46 - v45;
      if (v50)
      {
        goto LABEL_104;
      }

      v49 = *(v44 - 48);
      v48 = *(v44 - 40);
      v50 = __OFSUB__(v48, v49);
      v42 = v48 - v49;
      v43 = v50;
      if (v50)
      {
        goto LABEL_105;
      }

      v51 = &v9[16 * v36];
      v53 = *v51;
      v52 = *(v51 + 1);
      v50 = __OFSUB__(v52, v53);
      v54 = v52 - v53;
      if (v50)
      {
        goto LABEL_107;
      }

      v50 = __OFADD__(v42, v54);
      v55 = v42 + v54;
      if (v50)
      {
        goto LABEL_110;
      }

      if (v55 >= v47)
      {
        v73 = &v9[16 * v39 + 32];
        v75 = *v73;
        v74 = *(v73 + 1);
        v50 = __OFSUB__(v74, v75);
        v76 = v74 - v75;
        if (v50)
        {
          goto LABEL_114;
        }

        if (v42 < v76)
        {
          v39 = v36 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v104;
    if (v104 >= v7)
    {
      goto LABEL_89;
    }
  }

  v105 = v32;
  v99 = v5;
  v81 = *v6;
  sub_26F40EA4C();
  v82 = v81 + 48 * v7 - 48;
  v83 = v10 - v7;
LABEL_81:
  v84 = v83;
  v85 = v82;
  while (1)
  {
    result = sub_26F49F858();
    if ((result & 1) == 0)
    {
LABEL_80:
      ++v7;
      v82 += 48;
      --v83;
      if (v7 != v105)
      {
        goto LABEL_81;
      }

      v5 = v99;
      v6 = a3;
      v33 = v105;
      goto LABEL_29;
    }

    if (!v81)
    {
      break;
    }

    v86 = *(v85 + 48);
    v87 = *(v85 + 56);
    v88 = *(v85 + 64);
    v89 = *(v85 + 72);
    v90 = *(v85 + 80);
    v91 = *(v85 + 88);
    v92 = *(v85 + 16);
    *(v85 + 48) = *v85;
    *(v85 + 64) = v92;
    *(v85 + 80) = *(v85 + 32);
    *v85 = v86;
    *(v85 + 8) = v87;
    *(v85 + 16) = v88;
    *(v85 + 24) = v89;
    *(v85 + 32) = v90;
    *(v85 + 40) = v91;
    v85 -= 48;
    if (__CFADD__(v84++, 1))
    {
      goto LABEL_80;
    }
  }

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
  return result;
}

uint64_t sub_26F40CF90(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = __src;
  v8 = a2 - __src;
  v9 = (a2 - __src) / 48;
  v10 = a3 - a2;
  v11 = (a3 - a2) / 48;
  if (v9 >= v11)
  {
    if (a4 != a2 || &a2[48 * v11] <= a4)
    {
      memmove(a4, a2, 48 * v11);
    }

    v12 = &v4[48 * v11];
    if (v10 < 48 || v6 <= v7)
    {
      v17 = v6;
    }

    else
    {
      v32 = v4;
      sub_26F40EA4C();
LABEL_23:
      v31 = v5;
      v18 = 0;
      v19 = v12;
      v30 = v6 - 48;
      do
      {
        v20 = v19;
        v12 = &v19[v18];
        v21 = &v19[v18 - 48];
        v22 = (v31 + v18);
        v23 = (v31 + v18 - 48);
        if (sub_26F49F858())
        {
          v17 = v6 - 48;
          if (v22 != v6)
          {
            v26 = *v30;
            v27 = *(v6 - 1);
            *(v31 + v18 - 32) = *(v6 - 2);
            *(v31 + v18 - 16) = v27;
            *v23 = v26;
          }

          if (v12 <= v32 || (v5 = v31 + v18 - 48, v6 -= 48, v30 <= v7))
          {
            v12 = &v20[v18];
            goto LABEL_35;
          }

          goto LABEL_23;
        }

        if (v22 != v12)
        {
          v24 = *v21;
          v25 = *(v21 + 2);
          *(v31 + v18 - 32) = *(v21 + 1);
          *(v31 + v18 - 16) = v25;
          *v23 = v24;
        }

        v18 -= 48;
        v19 = v20;
        v12 = &v20[v18];
      }

      while (&v20[v18] > v32);
      v17 = v6;
LABEL_35:
      v4 = v32;
    }
  }

  else
  {
    if (a4 != __src || &__src[48 * v9] <= a4)
    {
      memmove(a4, __src, 48 * v9);
    }

    v12 = &v4[48 * v9];
    if (v8 >= 48 && v6 < v5)
    {
      sub_26F40EA4C();
      while ((sub_26F49F858() & 1) != 0)
      {
        v13 = v6;
        v14 = v7 == v6;
        v6 += 48;
        if (!v14)
        {
          goto LABEL_13;
        }

LABEL_14:
        v7 += 48;
        if (v4 >= v12 || v6 >= v5)
        {
          goto LABEL_16;
        }
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 48;
      if (v14)
      {
        goto LABEL_14;
      }

LABEL_13:
      v15 = *v13;
      v16 = *(v13 + 2);
      *(v7 + 1) = *(v13 + 1);
      *(v7 + 2) = v16;
      *v7 = v15;
      goto LABEL_14;
    }

LABEL_16:
    v17 = v7;
  }

  v28 = (v12 - v4) / 48;
  if (v17 != v4 || v17 >= &v4[48 * v28])
  {
    memmove(v17, v4, 48 * v28);
  }

  return 1;
}

uint64_t sub_26F40D2D0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26F40D35C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_26F40D370(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0270, &qword_26F4A6A80);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_26F40D474(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_26F40D568;

  return v5(v2 + 32);
}

uint64_t sub_26F40D568()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_26F40D6B8(uint64_t a1, int *a2)
{
  *(v2 + 24) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_26F40D7AC;

  return v5(v2 + 16);
}

uint64_t sub_26F40D7AC()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v5 = *v0;

  *v2 = *(v1 + 16);
  v3 = *(v5 + 8);

  return v3();
}

void _s13TranslationUI16LanguagesServiceC6deleteyySayAA13LanguageModelVGF_0(uint64_t a1)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v6 = sub_26F49DCA8();
  __swift_project_value_buffer(v6, qword_280F67EB8);

  v7 = sub_26F49DC88();
  v8 = sub_26F49FDF8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 134349314;
    *(v9 + 4) = *(a1 + 16);

    *(v9 + 12) = 2082;
    v11 = MEMORY[0x274390900](a1, &type metadata for LanguageModel);
    v13 = sub_26F3B38D0(v11, v12, &v22);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_26F39E000, v7, v8, "Requested delete of %{public}ld languages: %{public}s", v9, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x274391F70](v10, -1, -1);
    MEMORY[0x274391F70](v9, -1, -1);
  }

  else
  {
  }

  v14 = *(a1 + 16);
  if (v14)
  {
    v22 = MEMORY[0x277D84F90];
    sub_26F40333C(0, v14, 0);
    v15 = v22;
    v16 = a1 + 40;
    do
    {

      sub_26F49D978();
      v22 = v15;
      v18 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_26F40333C((v17 > 1), v18 + 1, 1);
        v15 = v22;
      }

      *(v15 + 16) = v18 + 1;
      (*(v3 + 32))(v15 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v18, v5, v2);
      v16 += 48;
      --v14;
    }

    while (v14);
  }

  v19 = objc_opt_self();
  v20 = sub_26F49FAD8();

  [v19 removeLanguages_];
}

unint64_t sub_26F40DBE8()
{
  result = qword_280F65688;
  if (!qword_280F65688)
  {
    sub_26F3B0C24(255, &qword_280F65680, 0x277D85C78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65688);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_26F40DC78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F409C70(a1, v4, v5, v6);
}

uint64_t sub_26F40DD2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F40A060(a1, v4, v5, v6);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_26F40DE20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CEEAC;

  return sub_26F40A5D8(a1, v4, v5, v6);
}

uint64_t type metadata accessor for LanguagesService(uint64_t a1)
{
  result = qword_280F65BE0;
  if (!qword_280F65BE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_26F40DF20(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26F3CF3AC;

  return sub_26F40B1C8(a1, v4, v5, v6);
}

uint64_t _s13TranslationUI22LanguagesServiceBridgeC6delete6localey10Foundation6LocaleV_tF_0(uint64_t a1)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v40 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v39 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v39 - v13;
  v15 = *(v3 + 16);
  v42 = v16;
  v15(&v39 - v13, a1, v12);
  v41 = v14;
  v47 = sub_26F49D988();
  v48 = v17;
  v45 = 45;
  v46 = 0xE100000000000000;
  v43 = 95;
  v44 = 0xE100000000000000;
  sub_26F3BDC0C();
  v18 = sub_26F49FFF8();
  v20 = v19;

  v47 = v18;
  v48 = v20;
  v45 = 45;
  v46 = 0xE100000000000000;
  v43 = 95;
  v44 = 0xE100000000000000;
  v21 = sub_26F49FFF8();
  v23 = v22;

  LOBYTE(v47) = 1;

  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v24 = sub_26F49D9F8();
  v25 = sub_26F49D9F8();
  v26 = [v24 lt:0 displayNameForContext:v25 inTargetLocale:?];

  if (v26)
  {
    v27 = sub_26F49F8C8();
    v29 = v28;

    v30 = *(v3 + 8);
    v31 = v42;
    v30(v7, v42);
  }

  else
  {
    v30 = *(v3 + 8);
    v31 = v42;
    v30(v7, v42);
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v32 = sub_26F49D9F8();
    v33 = sub_26F49D9F8();
    v34 = [v32 lt:0 displaySubnameForContext:v33 inTargetLocale:?];

    if (!v34)
    {
      v30(v40, v31);
      v30(v10, v31);

      v27 = v21;
      v29 = v23;
      goto LABEL_6;
    }

    v27 = sub_26F49F8C8();
    v29 = v35;

    v30(v40, v31);
  }

  v30(v10, v31);
LABEL_6:
  v36 = v47;
  v30(v41, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0100, &unk_26F4A6690);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_26F4A3150;
  *(v37 + 32) = v21;
  *(v37 + 40) = v23;
  *(v37 + 48) = 1;
  *(v37 + 56) = v36;
  *(v37 + 64) = v27;
  *(v37 + 72) = v29;
  _s13TranslationUI16LanguagesServiceC6deleteyySayAA13LanguageModelVGF_0(v37);
}

void sub_26F40E410(uint64_t a1)
{
  sub_26F3ED5D4(319, &qword_280F65780, &qword_2806DF750, &unk_26F4A4BB0);
  if (v1 <= 0x3F)
  {
    sub_26F3ED5D4(319, &qword_280F65770, &qword_2806E0200, &qword_26F4A68C0);
    if (v2 <= 0x3F)
    {
      sub_26F3B2A20();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_26F40E5D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0710, &qword_26F4A60A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26F40E644(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F3CF3AC;

  return sub_26F40D6B8(a1, v4);
}

uint64_t sub_26F40E6FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F3CEEAC;

  return sub_26F40D6B8(a1, v4);
}

uint64_t sub_26F40E7B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F3CF3AC;

  return sub_26F40D474(a1, v4);
}

uint64_t sub_26F40E874(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26F3CF3AC;

  return sub_26F409010(a1, v4, v5, v7, v6);
}

uint64_t sub_26F40E934(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F3CF3AC;

  return sub_26F40C3A4(a1, v4);
}

unint64_t sub_26F40E9F4()
{
  result = qword_280F65710;
  if (!qword_280F65710)
  {
    sub_26F49F698();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F65710);
  }

  return result;
}

unint64_t sub_26F40EA4C()
{
  result = qword_2806E0268;
  if (!qword_2806E0268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0268);
  }

  return result;
}

uint64_t sub_26F40EAA0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26F3CF3AC;

  return sub_26F40D474(a1, v4);
}

uint64_t static LanguagesStatusService.autoDetectSpeechUnsupportedPairs()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0260, &unk_26F4A6A70);
  *v1 = v0;
  v1[1] = sub_26F40EC6C;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000022, 0x800000026F4ADDC0, sub_26F4118FC, 0, v2);
}

uint64_t sub_26F40EC6C()
{

  return MEMORY[0x2822009F8](sub_26F416F8C, 0, 0);
}

uint64_t static LanguagesStatusService.localeModalities()()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  v2 = sub_26F3B0C24(0, &unk_280F65658, 0x277CE1B30);
  *v1 = v0;
  v1[1] = sub_26F40EE54;

  return MEMORY[0x2822007B8](v0 + 16, 0, 0, 0xD000000000000012, 0x800000026F4ADDA0, sub_26F411C04, 0, v2);
}

uint64_t sub_26F40EE54()
{

  return MEMORY[0x2822009F8](sub_26F40EF50, 0, 0);
}

uint64_t static LanguagesStatusService.selected()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26F416F80;

  return sub_26F412818();
}

void sub_26F40F008(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = aBlock - v6;
  v8 = objc_opt_self();
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_26F416CC8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F40F7DC;
  aBlock[3] = &block_descriptor_34;
  v11 = _Block_copy(aBlock);

  [v8 languageAssetsWithOptions:a2 completion:v11];
  _Block_release(v11);
}

char *sub_26F40F1CC(unint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_26F49DAB8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v60 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v60 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D8, &unk_26F4A6C80);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v60 - v19;
  if (a2)
  {
    v78 = a2;
    v21 = a2;
LABEL_29:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    return sub_26F49FCD8();
  }

  v71 = v15;
  v65 = v12;
  if (!a1)
  {
LABEL_28:
    v78 = 0;
    goto LABEL_29;
  }

  v63 = v18;
  if (a1 >> 62)
  {
    v22 = sub_26F4A00A8();
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x277D84F90];
  if (!v22)
  {
LABEL_27:
    v78 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8);
    sub_26F49FCC8();
    (*(v17 + 8))(v20, v63);
    goto LABEL_28;
  }

  v60 = v20;
  v64 = v9;
  v61 = v17;
  v62 = a3;
  v80 = MEMORY[0x277D84F90];
  result = sub_26F4032B0(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v23 = v80;
    v26 = a1;
    v66 = a1 & 0xC000000000000001;
    v67 = v22;
    v69 = a1;
    v70 = (v7 + 8);
    v68 = v6;
    v27 = v65;
    do
    {
      v73 = v23;
      v28 = v71;
      if (v66)
      {
        v29 = MEMORY[0x274390F80](v25, v26);
      }

      else
      {
        v29 = *(v26 + 8 * v25 + 32);
      }

      v30 = v29;
      v31 = [v29 state];
      if (v31 == 2)
      {
        v35 = 1;
        v34 = 0;
      }

      else if (v31 == 1)
      {
        v32 = [v30 progress];
        [v32 fractionCompleted];
        v34 = v33;

        v35 = 0;
      }

      else
      {
        v35 = 1;
        v34 = 1;
      }

      v72 = v30;
      v36 = [v30 ltIdentifier];
      v37 = sub_26F49F8C8();
      v39 = v38;

      v78 = v37;
      v79 = v39;
      v76 = 45;
      v77 = 0xE100000000000000;
      v74 = 95;
      v75 = 0xE100000000000000;
      sub_26F3BDC0C();
      v40 = sub_26F49FFF8();
      v42 = v41;

      LOBYTE(v78) = v35;

      sub_26F49D978();
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v43 = sub_26F49D9F8();
      v44 = sub_26F49D9F8();
      v45 = [v43 lt:0 displayNameForContext:v44 inTargetLocale:?];

      if (v45)
      {
        v46 = sub_26F49F8C8();
        v48 = v47;

        v49 = *v70;
        (*v70)(v27, v6);
        v49(v28, v6);
      }

      else
      {
        v50 = *v70;
        (*v70)(v27, v6);
        v51 = v64;
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        v52 = sub_26F49D9F8();
        v53 = sub_26F49D9F8();
        v54 = [v52 lt:0 displaySubnameForContext:v53 inTargetLocale:?];

        if (v54)
        {
          v46 = sub_26F49F8C8();
          v48 = v55;

          v50(v51, v6);
          v50(v71, v6);
        }

        else
        {
          v50(v51, v6);
          v50(v71, v6);

          v46 = v40;
          v48 = v42;
        }

        v27 = v65;
      }

      v56 = v78;
      v23 = v73;
      v80 = v73;
      v58 = v73[2];
      v57 = v73[3];
      if (v58 >= v57 >> 1)
      {
        sub_26F4032B0((v57 > 1), v58 + 1, 1);
        v23 = v80;
      }

      ++v25;
      v23[2] = v58 + 1;
      v59 = &v23[6 * v58];
      v59[4] = v40;
      v59[5] = v42;
      v59[6] = v34;
      *(v59 + 56) = v56;
      v59[8] = v46;
      v59[9] = v48;
      v6 = v68;
      v26 = v69;
    }

    while (v67 != v25);
    v17 = v61;
    v20 = v60;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

uint64_t sub_26F40F7DC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
    v4 = sub_26F49FAF8();
  }

  v6 = a3;
  v5(v4, a3);
}

uint64_t static LanguagesStatusService.available(task:)()
{
  v1 = sub_26F49DAB8();
  v0[25] = v1;
  v0[26] = *(v1 - 8);
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F40F954, 0, 0);
}

uint64_t sub_26F40F954()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_26F40FA80;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0280, &qword_26F4A6B00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F4100EC;
  v0[13] = &block_descriptor_5;
  v0[14] = v2;
  [v1 languageAssetsWithOptions:16 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F40FA80()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_26F41005C;
  }

  else
  {
    v2 = sub_26F40FB90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_26F40FB90()
{
  v47 = v0[24];
  if (v47 >> 62)
  {
    v1 = sub_26F4A00A8();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_23:

    v4 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v1 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_23;
  }

LABEL_3:
  v52 = MEMORY[0x277D84F90];
  result = sub_26F4032B0(0, v1 & ~(v1 >> 63), 0);
  if (v1 < 0)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = v52;
  v45 = (v0[26] + 8);
  v46 = v1;
  do
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x274390F80](v3, v47);
    }

    else
    {
      v5 = *(v47 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 state];
    v51 = v4;
    if (v7 == 2)
    {
      v49 = 1;
      v10 = 0;
    }

    else if (v7 == 1)
    {
      v8 = [v6 progress];
      [v8 fractionCompleted];
      v10 = v9;

      v49 = 0;
    }

    else
    {
      v49 = 1;
      v10 = 1;
    }

    v50 = v6;
    v11 = [v6 ltIdentifier];
    v12 = sub_26F49F8C8();
    v14 = v13;

    v0[18] = v12;
    v0[19] = v14;
    v0[20] = 45;
    v0[21] = 0xE100000000000000;
    v0[22] = 95;
    v0[23] = 0xE100000000000000;
    v43 = sub_26F3BDC0C();
    v42 = MEMORY[0x277D837D0];
    v15 = sub_26F49FFF8();
    v17 = v16;

    v48 = v15;
    sub_26F49D978();
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v18 = sub_26F49D9F8();
    v19 = sub_26F49D9F8();
    v20 = [v18 lt:0 displayNameForContext:v19 inTargetLocale:{v42, v43, v43, v43}];

    v22 = v0[28];
    v21 = v0[29];
    if (v20)
    {
      v23 = v0[25];
      v24 = sub_26F49F8C8();
      v26 = v25;

      v27 = *v45;
      (*v45)(v22, v23);
      v27(v21, v23);
      v28 = v48;
    }

    else
    {
      v29 = *v45;
      (*v45)(v0[28], v0[25]);
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v30 = sub_26F49D9F8();
      v31 = sub_26F49D9F8();
      v32 = [v30 lt:0 displaySubnameForContext:v31 inTargetLocale:?];

      v33 = v0[29];
      v34 = v0[27];
      v35 = v0[25];
      if (v32)
      {
        v24 = sub_26F49F8C8();
        v44 = v33;
        v36 = v29;
        v26 = v37;

        v36(v34, v35);
        v36(v44, v35);
        v28 = v48;
      }

      else
      {
        v29(v0[27], v0[25]);
        v29(v33, v35);

        v28 = v48;
        v24 = v48;
        v26 = v17;
      }
    }

    v4 = v51;
    v39 = *(v51 + 16);
    v38 = *(v51 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_26F4032B0((v38 > 1), v39 + 1, 1);
      v4 = v51;
    }

    ++v3;
    *(v4 + 16) = v39 + 1;
    v40 = v4 + 48 * v39;
    *(v40 + 32) = v28;
    *(v40 + 40) = v17;
    *(v40 + 48) = v10;
    *(v40 + 56) = v49;
    *(v40 + 64) = v24;
    *(v40 + 72) = v26;
  }

  while (v46 != v3);

LABEL_24:

  v41 = v0[1];

  return v41(v4);
}

uint64_t sub_26F41005C()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F4100EC(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02A0, &qword_26F4A9B60);
    v5 = swift_allocError();
    *v6 = a3;
    v7 = a3;

    return MEMORY[0x282200958](v4, v5);
  }

  else
  {
    sub_26F3B0C24(0, &qword_280F65650, 0x277CE1B00);
    **(*(v4 + 64) + 40) = sub_26F49FAF8();

    return swift_continuation_throwingResume();
  }
}

uint64_t static LanguagesStatusService.offline()()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_26F41027C;

  return sub_26F412B40();
}

uint64_t sub_26F41027C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t static LanguagesStatusService.status(task:)(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_26F410420;

  return sub_26F4133B0();
}

uint64_t sub_26F410420(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t static LanguagesStatusService.refresh(task:useCellular:)()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00C0, &unk_26F4A61B0);
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - v2;
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v4 = sub_26F49DCA8();
  __swift_project_value_buffer(v4, qword_280F67EB8);
  v5 = sub_26F49DC88();
  v6 = sub_26F49FDC8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26F39E000, v5, v6, "Requested refresh of language asset query", v7, 2u);
    MEMORY[0x274391F70](v7, -1, -1);
  }

  MEMORY[0x28223BE20](v8);
  *(&v11 - 2) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  (*(v1 + 104))(v3, *MEMORY[0x277D858A0], v0);
  return sub_26F49FD08();
}

uint64_t static LanguagesStatusService.isInstalled(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F41027C;

  return sub_26F413C9C(a1);
}

uint64_t static LanguagesStatusService.languagePairState(_:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  *(v2 + 224) = type metadata accessor for LocalePair(0);
  *(v2 + 232) = swift_task_alloc();
  v3 = sub_26F49DAB8();
  *(v2 + 240) = v3;
  *(v2 + 248) = *(v3 - 8);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = swift_task_alloc();
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();
  *(v2 + 288) = swift_task_alloc();
  *(v2 + 296) = swift_task_alloc();
  *(v2 + 304) = swift_task_alloc();
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 344) = 1;
  v4 = swift_task_alloc();
  *(v2 + 320) = v4;
  *v4 = v2;
  v4[1] = sub_26F410970;

  return sub_26F4133B0();
}

uint64_t sub_26F410970(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v4 = sub_26F4115A0;
  }

  else
  {
    v4 = sub_26F410A84;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_26F410A84()
{
  v94 = v0;
  v88 = (v0[31] + 16);
  v86 = *v88;
  (*v88)(v0[39], v0[27], v0[30]);
  v0[2] = sub_26F49D988();
  v0[3] = v1;
  v0[4] = 45;
  v0[5] = 0xE100000000000000;
  v0[6] = 95;
  v0[7] = 0xE100000000000000;
  v2 = sub_26F3BDC0C();
  v3 = MEMORY[0x277D837D0];
  v4 = sub_26F49FFF8();
  v6 = v5;

  v0[8] = v4;
  v0[10] = 45;
  v0[9] = v6;
  v0[11] = 0xE100000000000000;
  v0[12] = 95;
  v0[13] = 0xE100000000000000;
  v7 = sub_26F49FFF8();
  v9 = v8;

  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v10 = sub_26F49D9F8();
  v11 = sub_26F49D9F8();
  v12 = [v10 lt:0 displayNameForContext:v11 inTargetLocale:{v3, v2, v2, v2}];

  v14 = v0[37];
  v13 = v0[38];
  v85 = v0;
  if (v12)
  {
    v15 = v0[31];
    v16 = v85[30];
    sub_26F49F8C8();

    v17 = *(v15 + 8);
    v17(v14, v16);
    v83 = v17;
    v17(v13, v16);
    v0 = v85;
  }

  else
  {
    v83 = *(v0[31] + 8);
    v83(v14, v0[30]);
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v18 = sub_26F49D9F8();
    v19 = sub_26F49D9F8();
    v20 = [v18 lt:0 displaySubnameForContext:v19 inTargetLocale:?];

    v21 = v0[38];
    v22 = v0[33];
    v23 = v0[30];
    if (v20)
    {
      sub_26F49F8C8();

      v83(v22, v23);
      v83(v21, v23);
    }

    else
    {
      v83(v0[33], v0[30]);
      v83(v21, v23);
    }
  }

  v24 = v0[39];
  v25 = v0[36];
  v26 = v0[30];
  v27 = v0[28];
  v28 = v85[27];
  v83(v24, v26);
  v86(v25, v28 + *(v27 + 20), v26);
  v85[14] = sub_26F49D988();
  v85[15] = v29;
  v85[16] = 45;
  v85[17] = 0xE100000000000000;
  v85[18] = 95;
  v85[19] = 0xE100000000000000;
  v30 = MEMORY[0x277D837D0];
  v31 = sub_26F49FFF8();
  v33 = v32;

  v85[20] = v31;
  v85[21] = v33;
  v85[22] = 45;
  v85[23] = 0xE100000000000000;
  v85[24] = 95;
  v85[25] = 0xE100000000000000;
  v34 = sub_26F49FFF8();
  v36 = v35;

  v87 = v34;
  v89 = v36;
  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v37 = sub_26F49D9F8();
  v38 = sub_26F49D9F8();
  v39 = [v37 lt:0 displayNameForContext:v38 inTargetLocale:{v30, v2, v2, v2}];

  v41 = v85[34];
  v40 = v85[35];
  if (v39)
  {
    v42 = v85[30];
    sub_26F49F8C8();

    v83(v41, v42);
    v83(v40, v42);
  }

  else
  {
    v83(v85[34], v85[30]);
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v43 = sub_26F49D9F8();
    v44 = sub_26F49D9F8();
    v45 = [v43 lt:0 displaySubnameForContext:v44 inTargetLocale:?];

    v46 = v85[35];
    v47 = v85[32];
    v48 = v85[30];
    if (v45)
    {
      sub_26F49F8C8();

      v83(v47, v48);
      v83(v46, v48);
    }

    else
    {
      v83(v85[32], v85[30]);
      v83(v46, v48);
    }
  }

  v49 = v85[41];
  v83(v85[36], v85[30]);
  v50 = v49 + 40;
  v84 = *(v49 + 16);
  v51 = v84 + 1;
  while (--v51)
  {
    v52 = *(v50 + 8);
    v53 = *(v50 + 16);
    if (*(v50 - 8) != v7 || *v50 != v9)
    {
      v50 += 48;
      if ((sub_26F4A0458() & 1) == 0)
      {
        continue;
      }
    }

    v55 = (v49 + 56);
    v56 = -1;
    v58 = v87;
    v57 = v89;
    while (v56 - v84 != -1)
    {
      if (++v56 >= *(v49 + 16))
      {
        __break(1u);
        goto LABEL_36;
      }

      v59 = *(v55 - 1);
      v60 = *v55;
      if (*(v55 - 3) != v58 || *(v55 - 2) != v57)
      {
        v55 += 48;
        v62 = sub_26F4A0458();
        v58 = v87;
        v57 = v89;
        if ((v62 & 1) == 0)
        {
          continue;
        }
      }

      v63 = v85[26];

      v90 = v52;
      v91 = v53;
      v92 = v59;
      LOBYTE(v93) = v60;
      LanguageState.combine(_:)(&v92, v63);

      v64 = v85[1];
      goto LABEL_31;
    }

    break;
  }

  v56 = v85;

  if (qword_280F66C10 != -1)
  {
LABEL_36:
    swift_once();
  }

  v65 = *(v56 + 232);
  v66 = *(v56 + 216);
  v67 = sub_26F49DCA8();
  __swift_project_value_buffer(v67, qword_280F67EB8);
  sub_26F3FFF24(v66, v65);
  v68 = sub_26F49DC88();
  v69 = sub_26F49FDD8();
  v70 = os_log_type_enabled(v68, v69);
  v71 = *(v56 + 232);
  if (v70)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v90 = v74;
    *v72 = 136446466;
    sub_26F4A0178();

    v92 = 0x203A656372756F73;
    v93 = 0xE800000000000000;
    v75 = sub_26F49D988();
    MEMORY[0x2743907E0](v75);

    MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
    v76 = sub_26F49D988();
    MEMORY[0x2743907E0](v76);

    sub_26F416C48(v71, type metadata accessor for LocalePair);
    v77 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v90);

    *(v72 + 4) = v77;
    *(v72 + 12) = 2112;
    sub_26F4148E4();
    v78 = swift_allocError();
    *v79 = 0;
    v80 = sub_26F49D7E8();

    *(v72 + 14) = v80;
    *v73 = v80;
    _os_log_impl(&dword_26F39E000, v68, v69, "Failed to read pair state for pair %{public}s: %@", v72, 0x16u);
    sub_26F3CC31C(v73);
    MEMORY[0x274391F70](v73, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v74);
    MEMORY[0x274391F70](v74, -1, -1);
    MEMORY[0x274391F70](v72, -1, -1);
  }

  else
  {

    sub_26F416C48(v71, type metadata accessor for LocalePair);
  }

  sub_26F4148E4();
  swift_allocError();
  *v81 = 0;
  swift_willThrow();

  v64 = *(v56 + 8);
LABEL_31:

  return v64();
}

uint64_t sub_26F4115A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static LanguagesStatusService.languagePairPath(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F41027C;

  return sub_26F4151B0(a1);
}

uint64_t static LanguagesStatusService.isReady(_:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26F4117C8;

  return sub_26F4151B0(a1);
}

uint64_t sub_26F4117C8(unsigned __int8 a1)
{
  v3 = a1;
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4((v3 > 5) | (6u >> a1) & 1);
}

void sub_26F4118FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02B0, &qword_26F4A6C98);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_26F416E18;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F425AB4;
  aBlock[3] = &block_descriptor_56;
  v9 = _Block_copy(aBlock);

  [v6 autoDetectSpeechUnsupportedPairsWithCompletion_];
  _Block_release(v9);
}

unint64_t sub_26F411AB8(unint64_t result)
{
  v1 = result;
  v12 = MEMORY[0x277D84FA0];
  if (!(result >> 62))
  {
    v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:
    v10 = MEMORY[0x277D84FA0];
LABEL_12:
    v11 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02B0, &qword_26F4A6C98);
    return sub_26F49FB88();
  }

  result = sub_26F4A00A8();
  v2 = result;
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (v2 >= 1)
  {
    v3 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x274390F80](v3, v1);
      }

      else
      {
        v4 = *(v1 + 8 * v3 + 32);
      }

      v5 = v4;
      ++v3;
      v6 = [v4 canonicalIdentifier];
      v7 = sub_26F49F8C8();
      v9 = v8;

      sub_26F484E48(&v11, v7, v9);
    }

    while (v2 != v3);
    v10 = v12;
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

void sub_26F411C04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02A8, &qword_26F4A6C90);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = aBlock - v4;
  v6 = objc_opt_self();
  (*(v3 + 16))(v5, a1, v2);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  (*(v3 + 32))(v8 + v7, v5, v2);
  aBlock[4] = sub_26F416D6C;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_26F411E10;
  aBlock[3] = &block_descriptor_50;
  v9 = _Block_copy(aBlock);

  [v6 modalitiesPerLocaleWithCompletion_];
  _Block_release(v9);
}

uint64_t sub_26F411DC0(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02A8, &qword_26F4A6C90);
  return sub_26F49FB88();
}

void sub_26F411E10(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

unint64_t sub_26F411E7C(unsigned __int8 a1)
{
  v1 = 0x6F72687473736170;
  v2 = 0xD000000000000017;
  v3 = 0xD000000000000017;
  if (a1 != 4)
  {
    v3 = 0xD000000000000012;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6563697665446E6FLL;
  if (a1 != 1)
  {
    v4 = 0x6B726F7774656ELL;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_26F411F4C()
{
  v0 = LanguagePairPath.description.getter();
  v2 = v1;
  if (v0 == LanguagePairPath.description.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_26F4A0458();
  }

  return v5 & 1;
}

uint64_t sub_26F411FD4()
{
  sub_26F4A0528();
  LanguagePairPath.description.getter();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F412038(uint64_t a1)
{
  LanguagePairPath.description.getter();
  sub_26F49F9A8();
}

uint64_t sub_26F41208C(uint64_t a1)
{
  sub_26F4A0528();
  LanguagePairPath.description.getter();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

unint64_t sub_26F4120EC@<X0>(Swift::String *a1@<X0>, TranslationUI::LanguagePairPath_optional *a2@<X8>)
{
  result = _s13TranslationUI16LanguagePairPathO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_26F41211C@<X0>(uint64_t *a1@<X8>)
{
  result = LanguagePairPath.description.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_26F412150(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6B726F7774656ELL;
  }

  else
  {
    v3 = 0x6563697665446E6FLL;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x6B726F7774656ELL;
  }

  else
  {
    v5 = 0x6563697665446E6FLL;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_26F4A0458();
  }

  return v8 & 1;
}

uint64_t sub_26F4121F8()
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F41227C(uint64_t a1)
{
  sub_26F49F9A8();
}

uint64_t sub_26F4122EC(uint64_t a1)
{
  sub_26F4A0528();
  sub_26F49F9A8();

  return sub_26F4A0568();
}

uint64_t sub_26F41236C@<X0>(char *a2@<X8>)
{
  v3 = sub_26F4A02A8();

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

void sub_26F4123CC(uint64_t *a1@<X8>)
{
  v2 = 0x6563697665446E6FLL;
  if (*v1)
  {
    v2 = 0x6B726F7774656ELL;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_26F41240C()
{
  if (*v0)
  {
    return 0x6B726F7774656ELL;
  }

  else
  {
    return 0x6563697665446E6FLL;
  }
}

uint64_t sub_26F412448(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  v6 = *a2;
  v7 = *(a2 + 2);
  v8 = *(a2 + 24);
  v9 = *(a2 + 4);
  v10 = *(a2 + 5);
  v17 = *a1;
  v18 = v2;
  v19 = v3;
  v20 = v4;
  v21 = v5;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  v16 = v10;
  return _s13TranslationUI13LanguageModelV2eeoiySbAC_ACtFZ_0(&v17, &v12) & 1;
}

uint64_t sub_26F4124C4()
{
  v0 = sub_26F49F958();
  v1 = getenv((v0 + 32));

  if (v1)
  {
    v2 = sub_26F49F9F8();
    v4 = sub_26F3CBEC4(v2, v3);

    if (v4)
    {
      sub_26F4A00F8();
      if (*(v4 + 16) && (v5 = sub_26F45FD44(v21), (v6 & 1) != 0))
      {
        sub_26F3B2DBC(*(v4 + 56) + 32 * v5, v22);
        sub_26F3B2D68(v21);

        if (swift_dynamicCast())
        {
          v7 = sub_26F4A02A8();

          if (v7 <= 1)
          {
            if (qword_280F657C0 != -1)
            {
              swift_once();
            }

            v8 = sub_26F49DCA8();
            __swift_project_value_buffer(v8, qword_280F67DF8);
            v9 = sub_26F49DC88();
            v10 = sub_26F49FDB8();
            if (!os_log_type_enabled(v9, v10))
            {

              return v7;
            }

            v11 = swift_slowAlloc();
            v12 = swift_slowAlloc();
            v21[0] = v12;
            *v11 = 136315138;
            if (v7)
            {
              v13 = 0x6B726F7774656ELL;
            }

            else
            {
              v13 = 0x6563697665446E6FLL;
            }

            if (v7)
            {
              v14 = 0xE700000000000000;
            }

            else
            {
              v14 = 0xE800000000000000;
            }

            v15 = sub_26F3B38D0(v13, v14, v21);

            *(v11 + 4) = v15;
            _os_log_impl(&dword_26F39E000, v9, v10, "Model path fixture found %s", v11, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v12);
            MEMORY[0x274391F70](v12, -1, -1);
            v16 = v11;
            goto LABEL_22;
          }
        }
      }

      else
      {

        sub_26F3B2D68(v21);
      }
    }
  }

  if (qword_280F657C0 != -1)
  {
    swift_once();
  }

  v17 = sub_26F49DCA8();
  __swift_project_value_buffer(v17, qword_280F67DF8);
  v9 = sub_26F49DC88();
  v18 = sub_26F49FDB8();
  if (!os_log_type_enabled(v9, v18))
  {

    return 2;
  }

  v7 = 2;
  v19 = swift_slowAlloc();
  *v19 = 0;
  _os_log_impl(&dword_26F39E000, v9, v18, "Model path fixture not found", v19, 2u);
  v16 = v19;
LABEL_22:
  MEMORY[0x274391F70](v16, -1, -1);

  return v7;
}

uint64_t sub_26F412818()
{
  v1 = sub_26F49DAB8();
  v0[25] = v1;
  v0[26] = *(v1 - 8);
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4128EC, 0, 0);
}

uint64_t sub_26F4128EC()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_26F412A18;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0280, &qword_26F4A6B00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F4100EC;
  v0[13] = &block_descriptor_44;
  v0[14] = v2;
  [v1 languageAssetsWithOptions:32 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F412A18()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_26F416F5C;
  }

  else
  {
    v2 = sub_26F416F58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26F412B40()
{
  v1 = sub_26F49DAB8();
  v0[25] = v1;
  v0[26] = *(v1 - 8);
  v0[27] = swift_task_alloc();
  v0[28] = swift_task_alloc();
  v0[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F412C14, 0, 0);
}

uint64_t sub_26F412C14()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 24;
  v0[3] = sub_26F412D40;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0280, &qword_26F4A6B00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F4100EC;
  v0[13] = &block_descriptor_41;
  v0[14] = v2;
  [v1 languageAssetsWithOptions:64 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F412D40()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_26F413318;
  }

  else
  {
    v2 = sub_26F412E50;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_26F412E50()
{
  v47 = v0[24];
  if (v47 >> 62)
  {
    v1 = sub_26F4A00A8();
    if (v1)
    {
      goto LABEL_3;
    }

LABEL_23:

    v4 = MEMORY[0x277D84F90];
    goto LABEL_24;
  }

  v1 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v1)
  {
    goto LABEL_23;
  }

LABEL_3:
  v52 = MEMORY[0x277D84F90];
  result = sub_26F4032B0(0, v1 & ~(v1 >> 63), 0);
  if (v1 < 0)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = v52;
  v45 = (v0[26] + 8);
  v46 = v1;
  do
  {
    if ((v47 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x274390F80](v3, v47);
    }

    else
    {
      v5 = *(v47 + 8 * v3 + 32);
    }

    v6 = v5;
    v7 = [v5 state];
    v51 = v4;
    if (v7 == 2)
    {
      v49 = 1;
      v10 = 0;
    }

    else if (v7 == 1)
    {
      v8 = [v6 progress];
      [v8 fractionCompleted];
      v10 = v9;

      v49 = 0;
    }

    else
    {
      v49 = 1;
      v10 = 1;
    }

    v50 = v6;
    v11 = [v6 ltIdentifier];
    v12 = sub_26F49F8C8();
    v14 = v13;

    v0[18] = v12;
    v0[19] = v14;
    v0[20] = 45;
    v0[21] = 0xE100000000000000;
    v0[22] = 95;
    v0[23] = 0xE100000000000000;
    v43 = sub_26F3BDC0C();
    v42 = MEMORY[0x277D837D0];
    v15 = sub_26F49FFF8();
    v17 = v16;

    v48 = v15;
    sub_26F49D978();
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v18 = sub_26F49D9F8();
    v19 = sub_26F49D9F8();
    v20 = [v18 lt:0 displayNameForContext:v19 inTargetLocale:{v42, v43, v43, v43}];

    v22 = v0[28];
    v21 = v0[29];
    if (v20)
    {
      v23 = v0[25];
      v24 = sub_26F49F8C8();
      v26 = v25;

      v27 = *v45;
      (*v45)(v22, v23);
      v27(v21, v23);
      v28 = v48;
    }

    else
    {
      v29 = *v45;
      (*v45)(v0[28], v0[25]);
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v30 = sub_26F49D9F8();
      v31 = sub_26F49D9F8();
      v32 = [v30 lt:0 displaySubnameForContext:v31 inTargetLocale:?];

      v33 = v0[29];
      v34 = v0[27];
      v35 = v0[25];
      if (v32)
      {
        v24 = sub_26F49F8C8();
        v44 = v33;
        v36 = v29;
        v26 = v37;

        v36(v34, v35);
        v36(v44, v35);
        v28 = v48;
      }

      else
      {
        v29(v0[27], v0[25]);
        v29(v33, v35);

        v28 = v48;
        v24 = v48;
        v26 = v17;
      }
    }

    v4 = v51;
    v39 = *(v51 + 16);
    v38 = *(v51 + 24);
    if (v39 >= v38 >> 1)
    {
      sub_26F4032B0((v38 > 1), v39 + 1, 1);
      v4 = v51;
    }

    ++v3;
    *(v4 + 16) = v39 + 1;
    v40 = v4 + 48 * v39;
    *(v40 + 32) = v28;
    *(v40 + 40) = v17;
    *(v40 + 48) = v10;
    *(v40 + 56) = v49;
    *(v40 + 64) = v24;
    *(v40 + 72) = v26;
  }

  while (v46 != v3);

LABEL_24:

  v41 = v0[1];

  return v41(v4);
}

uint64_t sub_26F413318()
{
  v1 = *(v0 + 240);
  swift_willThrow();

  v2 = *(v0 + 8);
  v3 = MEMORY[0x277D84F90];

  return v2(v3);
}

uint64_t sub_26F4133B0()
{
  v1 = sub_26F49DAB8();
  v0[31] = v1;
  v0[32] = *(v1 - 8);
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v0[35] = swift_task_alloc();
  v0[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F413490, 0, 0);
}

uint64_t sub_26F413490()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[7] = v0 + 30;
  v0[3] = sub_26F4135BC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0280, &qword_26F4A6B00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26F4100EC;
  v0[13] = &block_descriptor_37;
  v0[14] = v2;
  [v1 languageAssetsWithOptions:0 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26F4135BC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 296) = v1;
  if (v1)
  {
    v2 = sub_26F413BF8;
  }

  else
  {
    v2 = sub_26F4136CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

char *sub_26F4136CC()
{
  v1 = v0[30];
  if (v1 >> 62)
  {
    v43 = v0[30];
    v2 = sub_26F4A00A8();
    v1 = v43;
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_22:

    v6 = MEMORY[0x277D84F90];
LABEL_23:

    v44 = v0[1];

    return v44(v6);
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_22;
  }

LABEL_3:
  v3 = v1;
  v56 = MEMORY[0x277D84F90];
  result = sub_26F4032B0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v56;
    v7 = v3;
    v46 = v3 & 0xC000000000000001;
    v55 = (v0[32] + 8);
    v47 = v2;
    v48 = v3;
    while (1)
    {
      if (v46)
      {
        v8 = MEMORY[0x274390F80](v5, v7);
      }

      else
      {
        v8 = *(v7 + 8 * v5 + 32);
      }

      v9 = v8;
      v10 = [v8 locale];
      sub_26F49DA18();

      v11 = [v9 state];
      v54 = v6;
      v53 = v9;
      if (v11 == 1)
      {
        v52 = 0;
        v51 = 0;
      }

      else
      {
        v52 = v11 != 2;
        v51 = 1;
      }

      v0[18] = sub_26F49D988();
      v0[19] = v12;
      v0[20] = 45;
      v0[21] = 0xE100000000000000;
      v0[22] = 95;
      v0[23] = 0xE100000000000000;
      v13 = sub_26F3BDC0C();
      v14 = MEMORY[0x277D837D0];
      v15 = sub_26F49FFF8();
      v17 = v16;

      v0[24] = v15;
      v0[25] = v17;
      v0[26] = 45;
      v0[27] = 0xE100000000000000;
      v0[28] = 95;
      v0[29] = 0xE100000000000000;
      v18 = sub_26F49FFF8();
      v20 = v19;

      v50 = v20;
      sub_26F49D978();
      _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
      v21 = sub_26F49D9F8();
      v22 = sub_26F49D9F8();
      v23 = [v21 lt:0 displayNameForContext:v22 inTargetLocale:{v14, v13, v13, v13}];

      v25 = v0[34];
      v24 = v0[35];
      if (v23)
      {
        v26 = v0[31];
        v49 = sub_26F49F8C8();
        v28 = v27;

        v29 = *v55;
        (*v55)(v25, v26);
        v29(v24, v26);
      }

      else
      {
        v29 = *v55;
        (*v55)(v0[34], v0[31]);
        _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
        v30 = sub_26F49D9F8();
        v31 = sub_26F49D9F8();
        v32 = [v30 lt:0 displaySubnameForContext:v31 inTargetLocale:?];

        v33 = v0[35];
        v34 = v0[33];
        v35 = v0[31];
        if (!v32)
        {
          v29(v0[33], v0[31]);
          v29(v33, v35);
          v37 = v50;

          v49 = v18;
          v28 = v50;
          goto LABEL_16;
        }

        v49 = sub_26F49F8C8();
        v45 = v33;
        v28 = v36;

        v29(v34, v35);
        v29(v45, v35);
      }

      v37 = v50;
LABEL_16:
      v38 = v0[36];
      v39 = v0[31];

      v29(v38, v39);
      v6 = v54;
      v41 = *(v54 + 16);
      v40 = *(v54 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_26F4032B0((v40 > 1), v41 + 1, 1);
        v6 = v54;
      }

      ++v5;
      *(v6 + 16) = v41 + 1;
      v42 = v6 + 48 * v41;
      *(v42 + 32) = v18;
      *(v42 + 40) = v37;
      *(v42 + 48) = v52;
      *(v42 + 56) = v51;
      v7 = v48;
      *(v42 + 64) = v49;
      *(v42 + 72) = v28;
      if (v47 == v5)
      {

        goto LABEL_23;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_26F413BF8()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26F413C9C(uint64_t a1)
{
  v1[38] = a1;
  v2 = sub_26F49DAB8();
  v1[39] = v2;
  v1[40] = *(v2 - 8);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = swift_task_alloc();
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v1[49] = type metadata accessor for LocalePair(0);
  v1[50] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F413DE0, 0, 0);
}

uint64_t sub_26F413DE0()
{
  v16 = v0;
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v1 = v0[50];
  v2 = v0[38];
  v3 = sub_26F49DCA8();
  __swift_project_value_buffer(v3, qword_280F67EB8);
  sub_26F3FFF24(v2, v1);
  v4 = sub_26F49DC88();
  v5 = sub_26F49FDC8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[50];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v8 = 136446210;
    sub_26F4A0178();

    v15[1] = 0x203A656372756F73;
    v15[2] = 0xE800000000000000;
    v10 = sub_26F49D988();
    MEMORY[0x2743907E0](v10);

    MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
    v11 = sub_26F49D988();
    MEMORY[0x2743907E0](v11);

    sub_26F416C48(v7, type metadata accessor for LocalePair);
    v12 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_26F39E000, v4, v5, "Querying whether locale pair is installed: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x274391F70](v9, -1, -1);
    MEMORY[0x274391F70](v8, -1, -1);
  }

  else
  {

    sub_26F416C48(v7, type metadata accessor for LocalePair);
  }

  v13 = swift_task_alloc();
  v0[51] = v13;
  *v13 = v0;
  v13[1] = sub_26F41409C;

  return sub_26F412B40();
}

uint64_t sub_26F41409C(uint64_t a1)
{
  *(*v1 + 416) = a1;

  return MEMORY[0x2822009F8](sub_26F41419C, 0, 0);
}

uint64_t sub_26F41419C()
{
  v66 = *(*(v0 + 320) + 16);
  v66(*(v0 + 384), *(v0 + 304), *(v0 + 312));
  *(v0 + 112) = sub_26F49D988();
  *(v0 + 120) = v1;
  *(v0 + 128) = 45;
  *(v0 + 136) = 0xE100000000000000;
  *(v0 + 144) = 95;
  *(v0 + 152) = 0xE100000000000000;
  v2 = sub_26F3BDC0C();
  v3 = MEMORY[0x277D837D0];
  v4 = sub_26F49FFF8();
  v6 = v5;

  *(v0 + 160) = v4;
  *(v0 + 176) = 45;
  *(v0 + 168) = v6;
  *(v0 + 184) = 0xE100000000000000;
  *(v0 + 192) = 95;
  *(v0 + 200) = 0xE100000000000000;
  v62 = v3;
  v7 = sub_26F49FFF8();
  v9 = v8;

  v72 = v9;
  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v10 = sub_26F49D9F8();
  v11 = sub_26F49D9F8();
  v12 = [v10 lt:0 displayNameForContext:v11 inTargetLocale:{v62, v2, v2, v2}];

  v14 = *(v0 + 368);
  v13 = *(v0 + 376);
  v71 = v7;
  if (v12)
  {
    v15 = *(v0 + 312);
    v16 = *(v0 + 320);
    v69 = sub_26F49F8C8();
    v70 = v17;

    v18 = *(v16 + 8);
    v18(v14, v15);
    v18(v13, v15);
  }

  else
  {
    v73 = *(*(v0 + 320) + 8);
    v73(v14, *(v0 + 312));
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v19 = sub_26F49D9F8();
    v20 = sub_26F49D9F8();
    v21 = [v19 lt:0 displaySubnameForContext:v20 inTargetLocale:?];

    v22 = *(v0 + 376);
    v23 = *(v0 + 336);
    v24 = *(v0 + 312);
    if (v21)
    {
      v69 = sub_26F49F8C8();
      v70 = v25;

      v18 = v73;
      v73(v23, v24);
      v73(v22, v24);
    }

    else
    {
      v73(*(v0 + 336), *(v0 + 312));
      v73(v22, v24);
      v69 = v7;

      v18 = v73;
    }
  }

  v26 = *(v0 + 392);
  v27 = *(v0 + 360);
  v29 = *(v0 + 304);
  v28 = *(v0 + 312);
  v18(*(v0 + 384), v28);
  v66(v27, v29 + *(v26 + 20), v28);
  *(v0 + 208) = sub_26F49D988();
  *(v0 + 216) = v30;
  *(v0 + 224) = 45;
  *(v0 + 232) = 0xE100000000000000;
  *(v0 + 240) = 95;
  *(v0 + 248) = 0xE100000000000000;
  v31 = MEMORY[0x277D837D0];
  v32 = sub_26F49FFF8();
  v34 = v33;

  *(v0 + 256) = v32;
  *(v0 + 264) = v34;
  *(v0 + 272) = 45;
  *(v0 + 280) = 0xE100000000000000;
  *(v0 + 288) = 95;
  *(v0 + 296) = 0xE100000000000000;
  v64 = v2;
  v65 = v2;
  v63 = v2;
  v35 = sub_26F49FFF8();
  v37 = v36;

  v68 = v35;
  sub_26F49D978();
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v38 = sub_26F49D9F8();
  v39 = sub_26F49D9F8();
  v40 = [v38 lt:0 displayNameForContext:v39 inTargetLocale:{v31, v63, v64, v65}];

  v41 = *(v0 + 344);
  v42 = *(v0 + 352);
  if (v40)
  {
    v43 = *(v0 + 312);
    v67 = sub_26F49F8C8();
    v45 = v44;

    v18(v41, v43);
    v18(v42, v43);
    v46 = v71;
  }

  else
  {
    v18(*(v0 + 344), *(v0 + 312));
    _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
    v47 = sub_26F49D9F8();
    v48 = sub_26F49D9F8();
    v49 = [v47 lt:0 displaySubnameForContext:v48 inTargetLocale:?];

    v50 = *(v0 + 352);
    v51 = *(v0 + 328);
    v52 = *(v0 + 312);
    if (v49)
    {
      v67 = sub_26F49F8C8();
      v45 = v53;

      v18(v51, v52);
      v18(v50, v52);
    }

    else
    {
      v18(*(v0 + 328), *(v0 + 312));
      v18(v50, v52);

      v67 = v68;
      v45 = v37;
    }

    v46 = v71;
  }

  v54 = *(v0 + 416);
  v18(*(v0 + 360), *(v0 + 312));
  *(v0 + 16) = v46;
  *(v0 + 24) = v72;
  *(v0 + 32) = 0;
  *(v0 + 40) = 1;
  *(v0 + 48) = v69;
  *(v0 + 56) = v70;
  v55 = swift_task_alloc();
  *(v55 + 16) = v0 + 16;
  v56 = sub_26F4010D4(sub_26F416CA8, v55, v54);

  v57 = *(v0 + 416);
  if (v56)
  {
    *(v0 + 64) = v68;
    *(v0 + 72) = v37;
    *(v0 + 80) = 0;
    *(v0 + 88) = 1;
    *(v0 + 96) = v67;
    *(v0 + 104) = v45;
    v58 = swift_task_alloc();
    *(v58 + 16) = v0 + 64;
    v59 = sub_26F4010D4(sub_26F416F64, v58, v57);
  }

  else
  {

    v59 = 0;
  }

  v60 = *(v0 + 8);

  return v60(v59 & 1);
}

unint64_t sub_26F4148E4()
{
  result = qword_2806E0288;
  if (!qword_2806E0288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0288);
  }

  return result;
}

uint64_t _s13TranslationUI22LanguagesStatusServiceO25languagePairIsPassthroughySbAA06LocaleG0VFZ_0(uint64_t a1)
{
  v2 = type metadata accessor for LocalePair(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - v6;
  v8 = type metadata accessor for Signpost(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F43762C(11, 0, v10);
  v41 = v2;
  v11 = objc_allocWithZone(MEMORY[0x277CE1B38]);
  v12 = sub_26F49D9F8();
  v13 = sub_26F49D9F8();
  v14 = [v11 initWithSourceLocale:v12 targetLocale:v13];

  LOBYTE(v13) = [v14 isVariantPair];
  if ((v13 & 1) != 0 || (v15 = objc_allocWithZone(MEMORY[0x277CE1B38]), v16 = sub_26F49D9F8(), v17 = sub_26F49D9F8(), v18 = [v15 initWithSourceLocale:v16 targetLocale:v17], v16, v17, LODWORD(v17) = objc_msgSend(v18, sel_isPassthrough), v18, v17))
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v19 = sub_26F49DCA8();
    __swift_project_value_buffer(v19, qword_280F67EB8);
    sub_26F3FFF24(a1, v7);
    v20 = sub_26F49DC88();
    v21 = sub_26F49FDC8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136446210;
      v42 = 0;
      v43 = 0xE000000000000000;
      v44 = v23;
      sub_26F4A0178();

      v42 = 0x203A656372756F73;
      v43 = 0xE800000000000000;
      v24 = sub_26F49D988();
      MEMORY[0x2743907E0](v24);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v25 = sub_26F49D988();
      MEMORY[0x2743907E0](v25);

      v26 = v42;
      v27 = v43;
      sub_26F416C48(v7, type metadata accessor for LocalePair);
      v28 = sub_26F3B38D0(v26, v27, &v44);

      *(v22 + 4) = v28;
      _os_log_impl(&dword_26F39E000, v20, v21, "Pair %{public}s is passthrough", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x274391F70](v23, -1, -1);
      MEMORY[0x274391F70](v22, -1, -1);
    }

    else
    {

      sub_26F416C48(v7, type metadata accessor for LocalePair);
    }

    v29 = 1;
  }

  else
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v30 = sub_26F49DCA8();
    __swift_project_value_buffer(v30, qword_280F67EB8);
    sub_26F3FFF24(a1, v4);
    v31 = sub_26F49DC88();
    v32 = sub_26F49FDC8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      *v33 = 136446210;
      v42 = 0;
      v43 = 0xE000000000000000;
      v44 = v34;
      sub_26F4A0178();

      v42 = 0x203A656372756F73;
      v43 = 0xE800000000000000;
      v35 = sub_26F49D988();
      MEMORY[0x2743907E0](v35);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v36 = sub_26F49D988();
      MEMORY[0x2743907E0](v36);

      v37 = v42;
      v38 = v43;
      sub_26F416C48(v4, type metadata accessor for LocalePair);
      v39 = sub_26F3B38D0(v37, v38, &v44);

      *(v33 + 4) = v39;
      _os_log_impl(&dword_26F39E000, v31, v32, "Pair %{public}s is not passthrough", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x274391F70](v34, -1, -1);
      MEMORY[0x274391F70](v33, -1, -1);
    }

    else
    {

      sub_26F416C48(v4, type metadata accessor for LocalePair);
    }

    v29 = 0;
  }

  sub_26F437948(v29);
  sub_26F437AD0();
  sub_26F416C48(v10, type metadata accessor for Signpost);
  return v29;
}

uint64_t sub_26F414F40()
{
  v1 = sub_26F3B2204();
  if (v1 == 2)
  {
    v2 = objc_opt_self();
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_26F4150B0;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0298, &unk_26F4A6C70);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26F48828C;
    v0[13] = &block_descriptor_28;
    v0[14] = v3;
    [v2 onDeviceModeEnabledWithDedicatedMachPort:1 completion:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v4 = v0[1];
    v5 = v1 & 1;

    return v4(v5);
  }
}

uint64_t sub_26F4150B0()
{

  return MEMORY[0x2822009F8](sub_26F415190, 0, 0);
}

uint64_t sub_26F4151B0(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for LocalePair(0);
  v1[4] = swift_task_alloc();
  v1[5] = swift_task_alloc();
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  type metadata accessor for Signpost(0);
  v1[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26F4152B8, 0, 0);
}

uint64_t sub_26F4152B8(__n128 a1)
{
  v20 = v1;
  v2 = v1[2];
  sub_26F43762C(10, 0, v1[11]);
  if (_s13TranslationUI22LanguagesStatusServiceO25languagePairIsPassthroughySbAA06LocaleG0VFZ_0(v2))
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v3 = v1[4];
    v4 = v1[2];
    v5 = sub_26F49DCA8();
    __swift_project_value_buffer(v5, qword_280F67EB8);
    sub_26F3FFF24(v4, v3);
    v6 = sub_26F49DC88();
    v7 = sub_26F49FDB8();
    v8 = os_log_type_enabled(v6, v7);
    v9 = v1[4];
    if (v8)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19[0] = v11;
      *v10 = 136446210;
      sub_26F4A0178();

      v19[1] = 0x203A656372756F73;
      v19[2] = 0xE800000000000000;
      v12 = sub_26F49D988();
      MEMORY[0x2743907E0](v12);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v13 = sub_26F49D988();
      MEMORY[0x2743907E0](v13);

      sub_26F416C48(v9, type metadata accessor for LocalePair);
      v14 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, v19);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_26F39E000, v6, v7, "Pair %{public}s is passthrough", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x274391F70](v11, -1, -1);
      MEMORY[0x274391F70](v10, -1, -1);
    }

    else
    {

      sub_26F416C48(v9, type metadata accessor for LocalePair);
    }

    v17 = v1[11];
    sub_26F437948(1);
    sub_26F437AD0();
    sub_26F416C48(v17, type metadata accessor for Signpost);

    v18 = v1[1];

    return v18(0);
  }

  else
  {
    v15 = swift_task_alloc();
    v1[12] = v15;
    *v15 = v1;
    v15[1] = sub_26F415654;

    return sub_26F414F24();
  }
}

uint64_t sub_26F415654(char a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x2822009F8](sub_26F415754, 0, 0);
}

uint64_t sub_26F415754()
{
  if (*(v0 + 128))
  {
    v1 = sub_26F4A0458();

    if ((v1 & 1) == 0)
    {
      v2 = swift_task_alloc();
      *(v0 + 104) = v2;
      *v2 = v0;
      v2[1] = sub_26F4158B4;

      return static NetworkPathService.isDisconnected()();
    }
  }

  else
  {
  }

  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_26F41658C;
  v5 = *(v0 + 16);

  return sub_26F413C9C(v5);
}

uint64_t sub_26F4158B4(char a1)
{
  *(*v1 + 129) = a1;

  return MEMORY[0x2822009F8](sub_26F4159B4, 0, 0);
}

uint64_t sub_26F4159B4()
{
  v19 = v0;
  if (*(v0 + 129))
  {
    v1 = swift_task_alloc();
    *(v0 + 112) = v1;
    *v1 = v0;
    v1[1] = sub_26F415D3C;
    v2 = *(v0 + 16);

    return sub_26F413C9C(v2);
  }

  else
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 80);
    v5 = *(v0 + 16);
    v6 = sub_26F49DCA8();
    __swift_project_value_buffer(v6, qword_280F67EB8);
    sub_26F3FFF24(v5, v4);
    v7 = sub_26F49DC88();
    v8 = sub_26F49FDB8();
    v9 = os_log_type_enabled(v7, v8);
    v10 = *(v0 + 80);
    if (v9)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18[0] = v12;
      *v11 = 136446210;
      sub_26F4A0178();

      v18[1] = 0x203A656372756F73;
      v18[2] = 0xE800000000000000;
      v13 = sub_26F49D988();
      MEMORY[0x2743907E0](v13);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v14 = sub_26F49D988();
      MEMORY[0x2743907E0](v14);

      sub_26F416C48(v10, type metadata accessor for LocalePair);
      v15 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, v18);

      *(v11 + 4) = v15;
      _os_log_impl(&dword_26F39E000, v7, v8, "Pair %{public}s is available to use via network", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x274391F70](v12, -1, -1);
      MEMORY[0x274391F70](v11, -1, -1);
    }

    else
    {

      sub_26F416C48(v10, type metadata accessor for LocalePair);
    }

    v16 = *(v0 + 88);
    sub_26F437948(0);
    sub_26F437AD0();
    sub_26F416C48(v16, type metadata accessor for Signpost);

    v17 = *(v0 + 8);

    return v17(2);
  }
}

uint64_t sub_26F415D3C(char a1)
{
  *(*v1 + 130) = a1;

  return MEMORY[0x2822009F8](sub_26F415E3C, 0, 0);
}

uint64_t sub_26F415E3C()
{
  v48 = v0;
  if ((*(v0 + 130) & 1) == 0)
  {
    v13 = sub_26F3B21E4();
    if (v13 == 2)
    {
      v14 = [objc_allocWithZone(MEMORY[0x277CEC5D0]) init];
      v15 = [v14 airplaneMode];

      if ((v15 & 1) == 0)
      {
LABEL_8:
        if (qword_280F66C10 != -1)
        {
          swift_once();
        }

        v16 = *(v0 + 72);
        v17 = *(v0 + 16);
        v18 = sub_26F49DCA8();
        __swift_project_value_buffer(v18, qword_280F67EB8);
        sub_26F3FFF24(v17, v16);
        v19 = sub_26F49DC88();
        v20 = sub_26F49FDB8();
        v21 = os_log_type_enabled(v19, v20);
        v22 = *(v0 + 72);
        if (v21)
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v45 = v24;
          *v23 = 136446210;
          sub_26F4A0178();

          v46 = 0x203A656372756F73;
          v47 = 0xE800000000000000;
          v25 = sub_26F49D988();
          MEMORY[0x2743907E0](v25);

          MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
          v26 = sub_26F49D988();
          MEMORY[0x2743907E0](v26);

          sub_26F416C48(v22, type metadata accessor for LocalePair);
          v27 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v45);

          *(v23 + 4) = v27;
          _os_log_impl(&dword_26F39E000, v19, v20, "Pair %{public}s isn't available due to no network", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v24);
          MEMORY[0x274391F70](v24, -1, -1);
          MEMORY[0x274391F70](v23, -1, -1);
        }

        else
        {

          sub_26F416C48(v22, type metadata accessor for LocalePair);
        }

        v29 = 5;
LABEL_23:
        v28 = 1;
        goto LABEL_24;
      }
    }

    else if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }

    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v30 = *(v0 + 64);
    v31 = *(v0 + 16);
    v32 = sub_26F49DCA8();
    __swift_project_value_buffer(v32, qword_280F67EB8);
    sub_26F3FFF24(v31, v30);
    v33 = sub_26F49DC88();
    v34 = sub_26F49FDB8();
    v35 = os_log_type_enabled(v33, v34);
    v36 = *(v0 + 64);
    if (v35)
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v45 = v38;
      *v37 = 136446210;
      sub_26F4A0178();

      v46 = 0x203A656372756F73;
      v47 = 0xE800000000000000;
      v39 = sub_26F49D988();
      MEMORY[0x2743907E0](v39);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v40 = sub_26F49D988();
      MEMORY[0x2743907E0](v40);

      sub_26F416C48(v36, type metadata accessor for LocalePair);
      v41 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v45);

      *(v37 + 4) = v41;
      _os_log_impl(&dword_26F39E000, v33, v34, "Pair %{public}s is not available due to airplane mode", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x274391F70](v38, -1, -1);
      MEMORY[0x274391F70](v37, -1, -1);
    }

    else
    {

      sub_26F416C48(v36, type metadata accessor for LocalePair);
    }

    v29 = 4;
    goto LABEL_23;
  }

  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  v3 = sub_26F49DCA8();
  __swift_project_value_buffer(v3, qword_280F67EB8);
  sub_26F3FFF24(v2, v1);
  v4 = sub_26F49DC88();
  v5 = sub_26F49FDB8();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v45 = v9;
    *v8 = 136446210;
    sub_26F4A0178();

    v46 = 0x203A656372756F73;
    v47 = 0xE800000000000000;
    v10 = sub_26F49D988();
    MEMORY[0x2743907E0](v10);

    MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
    v11 = sub_26F49D988();
    MEMORY[0x2743907E0](v11);

    sub_26F416C48(v7, type metadata accessor for LocalePair);
    v12 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v45);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_26F39E000, v4, v5, "Pair %{public}s is available on-device", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x274391F70](v9, -1, -1);
    MEMORY[0x274391F70](v8, -1, -1);
  }

  else
  {

    sub_26F416C48(v7, type metadata accessor for LocalePair);
  }

  v28 = 0;
  v29 = 1;
LABEL_24:
  v42 = *(v0 + 88);
  sub_26F437948(v28);
  sub_26F437AD0();
  sub_26F416C48(v42, type metadata accessor for Signpost);

  v43 = *(v0 + 8);

  return v43(v29);
}

uint64_t sub_26F41658C(char a1)
{
  *(*v1 + 131) = a1;

  return MEMORY[0x2822009F8](sub_26F41668C, 0, 0);
}

uint64_t sub_26F41668C()
{
  v33 = v0;
  if (*(v0 + 131))
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v1 = *(v0 + 40);
    v2 = *(v0 + 16);
    v3 = sub_26F49DCA8();
    __swift_project_value_buffer(v3, qword_280F67EB8);
    sub_26F3FFF24(v2, v1);
    v4 = sub_26F49DC88();
    v5 = sub_26F49FDB8();
    v6 = os_log_type_enabled(v4, v5);
    v7 = *(v0 + 40);
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v30 = v9;
      *v8 = 136446210;
      sub_26F4A0178();

      v31 = 0x203A656372756F73;
      v32 = 0xE800000000000000;
      v10 = sub_26F49D988();
      MEMORY[0x2743907E0](v10);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v11 = sub_26F49D988();
      MEMORY[0x2743907E0](v11);

      sub_26F416C48(v7, type metadata accessor for LocalePair);
      v12 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v30);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_26F39E000, v4, v5, "Pair %{public}s is ready to use on-device", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v9);
      MEMORY[0x274391F70](v9, -1, -1);
      MEMORY[0x274391F70](v8, -1, -1);
    }

    else
    {

      sub_26F416C48(v7, type metadata accessor for LocalePair);
    }

    v25 = 0;
    v26 = 1;
  }

  else
  {
    if (qword_280F66C10 != -1)
    {
      swift_once();
    }

    v13 = *(v0 + 48);
    v14 = *(v0 + 16);
    v15 = sub_26F49DCA8();
    __swift_project_value_buffer(v15, qword_280F67EB8);
    sub_26F3FFF24(v14, v13);
    v16 = sub_26F49DC88();
    v17 = sub_26F49FDB8();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 48);
    if (v18)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v30 = v21;
      *v20 = 136446210;
      sub_26F4A0178();

      v31 = 0x203A656372756F73;
      v32 = 0xE800000000000000;
      v22 = sub_26F49D988();
      MEMORY[0x2743907E0](v22);

      MEMORY[0x2743907E0](0x3A74656772617420, 0xE900000000000020);
      v23 = sub_26F49D988();
      MEMORY[0x2743907E0](v23);

      sub_26F416C48(v19, type metadata accessor for LocalePair);
      v24 = sub_26F3B38D0(0x203A656372756F73, 0xE800000000000000, &v30);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_26F39E000, v16, v17, "Pair %{public}s is not available on-device", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x274391F70](v21, -1, -1);
      MEMORY[0x274391F70](v20, -1, -1);
    }

    else
    {

      sub_26F416C48(v19, type metadata accessor for LocalePair);
    }

    v26 = 3;
    v25 = 1;
  }

  v27 = *(v0 + 88);
  sub_26F437948(v25);
  sub_26F437AD0();
  sub_26F416C48(v27, type metadata accessor for Signpost);

  v28 = *(v0 + 8);

  return v28(v26);
}

unint64_t _s13TranslationUI16LanguagePairPathO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  v2 = sub_26F4A02A8();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_26F416BD4()
{
  result = qword_2806E0290;
  if (!qword_2806E0290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0290);
  }

  return result;
}

uint64_t sub_26F416C48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

char *sub_26F416CC8(unint64_t a1, void *a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E00D0, &unk_26F4A61E8) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F40F1CC(a1, a2, v6);
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_8(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t sub_26F416E40(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

unint64_t sub_26F416EDC()
{
  result = qword_2806E02B8;
  if (!qword_2806E02B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E02B8);
  }

  return result;
}

uint64_t sub_26F416F90@<X0>(uint64_t *a2@<X8>)
{
  result = sub_26F49D988();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_26F416FBC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_26F49E678();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  MEMORY[0x28223BE20](v8);
  v10 = &v13 - v9;
  sub_26F3B8DD4(v2, &v13 - v9, &qword_2806DF740, &qword_26F4A4BA0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_26F3BBAEC(v10, a1, &qword_2806DF820, &qword_26F4A4D48);
  }

  sub_26F49FDE8();
  v12 = sub_26F49EC18();
  sub_26F49DBC8();

  sub_26F49E668();
  swift_getAtKeyPath();

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26F41719C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_26F49E678();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for LanguagesView(0);
  sub_26F3B8DD4(v1 + *(v10 + 36), v9, &qword_2806DFB68, &unk_26F4A6DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26F49E1B8();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_26F49FDE8();
    v13 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_26F4173A4()
{
  v1 = 0;
  type metadata accessor for LanguagesService(0);
  swift_allocObject();
  return LanguagesService.init(task:)(&v1);
}

uint64_t LanguagesView.init(sourceLocale:targetLocale:selection:showsManageLanguages:requiresOnDeviceAvailability:suggestedLocales:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unsigned __int8 a6@<W5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = a6;
  v14 = type metadata accessor for LanguagesView(0);
  v16 = v14[6];
  v15 = v14[7];
  *(a9 + v15) = 1;
  v17 = v14[9];
  *(a9 + v17) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  swift_storeEnumTagMultiPayload();
  v18 = a9 + v14[10];
  *v18 = sub_26F4173A4;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  sub_26F3BBAEC(a1, a9, &qword_2806DFB70, &qword_26F4A5238);
  result = sub_26F3BBAEC(a2, a9 + v14[5], &qword_2806DFB70, &qword_26F4A5238);
  v20 = (a9 + v14[11]);
  *v20 = a3;
  v20[1] = a4;
  v20[2] = a5;
  *(a9 + v16) = a8;
  *(a9 + v14[8]) = a7;
  if (v21 != 2)
  {
    *(a9 + v15) = a6 & 1;
  }

  return result;
}

uint64_t sub_26F417560(uint64_t a1)
{
  v2 = v1;
  v4 = sub_26F49DAB8();
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x28223BE20](v4);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v39 = &v37 - v10;
  v11 = type metadata accessor for LanguagesView(0);
  type metadata accessor for LanguagesService(0);
  sub_26F41BF2C(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v12 = v42;
  v37 = a1;
  *&v42 = sub_26F49D988();
  *(&v42 + 1) = v13;
  v46[0] = 45;
  v46[1] = 0xE100000000000000;
  v44 = 95;
  v45 = 0xE100000000000000;
  sub_26F3BDC0C();
  v14 = sub_26F49FFF8();
  v16 = v15;

  v17 = (v12 + 56);
  v18 = *(v12 + 16) + 1;
  while (--v18)
  {
    v19 = *(v17 - 1);
    v20 = *v17;
    if (*(v17 - 3) != v14 || *(v17 - 2) != v16)
    {
      v17 += 48;
      if ((sub_26F4A0458() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_10;
  }

  v20 = 0;
  v19 = 0;
LABEL_10:

  if (v19)
  {
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  if (*(v2 + *(v11 + 32)) == 1 && (v22 & 1) == 0)
  {
    return 0;
  }

  v24 = (v2 + *(v11 + 44));
  v25 = *v24;
  v26 = *(v24 + 2);
  v42 = v25;
  v43 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF180, &qword_26F4A70B0);
  MEMORY[0x274390240](v46, v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  v29 = v39;
  MEMORY[0x274390240](v28);
  v30 = v40;
  sub_26F3B8DD4(v29, v8, &qword_2806DEFD8, &qword_26F4A3670);
  v31 = v41;
  if ((*(v30 + 48))(v8, 1, v41) == 1)
  {
    sub_26F3B6B4C(v29, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B6B4C(v8, &qword_2806DEFD8, &qword_26F4A3670);
    return 1;
  }

  else
  {
    v32 = v38;
    (*(v30 + 32))(v38, v8, v31);
    v33 = objc_allocWithZone(MEMORY[0x277CE1B38]);
    v34 = sub_26F49D9F8();
    v35 = sub_26F49D9F8();
    v36 = [v33 initWithSourceLocale:v34 targetLocale:v35];

    LODWORD(v35) = [v36 isVariantPair];
    (*(v30 + 8))(v32, v31);
    sub_26F3B6B4C(v29, &qword_2806DEFD8, &qword_26F4A3670);
    return v35 ^ 1;
  }
}

uint64_t sub_26F417A28()
{
  type metadata accessor for LanguagesView(0);
  type metadata accessor for LanguagesService(0);
  sub_26F41BF2C(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  if ((v6 & 1) == 0)
  {
    _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
    v1 = v0;
    v2 = sub_26F49F898();
    [v1 BOOLForKey_];

    v3 = [objc_opt_self() sharedConnection];
    if (v3)
    {
      v4 = v3;
      [v3 isOnDeviceOnlyTranslationForced];
    }
  }

  return sub_26F49E768();
}

uint64_t sub_26F417BF4()
{
  v1 = sub_26F49DAB8();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v44 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v40 - v5;
  MEMORY[0x28223BE20](v7);
  v50 = &v40 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  v12 = *(type metadata accessor for LanguagesView(0) + 24);
  v13 = MEMORY[0x277D84F90];
  if (*(v0 + v12))
  {
    v14 = *(v0 + v12);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v49 = sub_26F404250(v14);

  type metadata accessor for LanguagesService(0);
  sub_26F41BF2C(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v15 = v51;
  v16 = *(v51 + 16);
  if (v16)
  {
    v51 = v13;
    sub_26F40333C(0, v16, 0);
    v17 = v51;
    v48 = v15;
    v18 = v15 + 40;
    v19 = v2;
    do
    {

      sub_26F49D978();
      v51 = v17;
      v20 = *(v17 + 16);
      v21 = *(v17 + 24);
      if (v20 >= v21 >> 1)
      {
        sub_26F40333C((v21 > 1), v20 + 1, 1);
        v17 = v51;
      }

      *(v17 + 16) = v20 + 1;
      (*(v19 + 32))(v17 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v20, v11, v1);
      v18 += 48;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
    v19 = v2;
  }

  v42 = *(v17 + 16);
  if (v42)
  {
    v23 = 0;
    v47 = v49 + 56;
    v48 = v19 + 16;
    v24 = (v19 + 8);
    v25 = MEMORY[0x277D84F90];
    v43 = (v19 + 32);
    v40 = v19;
    v41 = v17;
    while (v23 < *(v17 + 16))
    {
      v45 = (*(v19 + 80) + 32) & ~*(v19 + 80);
      v46 = v25;
      v26 = v19;
      v27 = *(v19 + 72);
      v28 = *(v26 + 16);
      v28(v50, v17 + v45 + v27 * v23, v1);
      if (*(v49 + 16) && (v29 = v49, sub_26F41BF2C(&qword_2806DFC18, MEMORY[0x277CC9788], MEMORY[0x277CC9798]), v30 = sub_26F49F818(), v31 = -1 << *(v29 + 32), v32 = v30 & ~v31, ((*(v47 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
      {
        v33 = ~v31;
        while (1)
        {
          v28(v6, *(v49 + 48) + v32 * v27, v1);
          sub_26F41BF2C(qword_2806E07F0, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
          v34 = sub_26F49F868();
          v35 = *v24;
          (*v24)(v6, v1);
          if (v34)
          {
            break;
          }

          v32 = (v32 + 1) & v33;
          if (((*(v47 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
          {
            goto LABEL_21;
          }
        }

        result = (v35)(v50, v1);
        v17 = v41;
        v25 = v46;
      }

      else
      {
LABEL_21:
        v36 = *v43;
        (*v43)(v44, v50, v1);
        v25 = v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v51 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_26F40333C(0, *(v25 + 16) + 1, 1);
          v25 = v51;
        }

        v39 = *(v25 + 16);
        v38 = *(v25 + 24);
        v17 = v41;
        if (v39 >= v38 >> 1)
        {
          sub_26F40333C((v38 > 1), v39 + 1, 1);
          v17 = v41;
          v25 = v51;
        }

        *(v25 + 16) = v39 + 1;
        result = (v36)(v25 + v45 + v39 * v27, v44, v1);
      }

      ++v23;
      v19 = v40;
      if (v23 == v42)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v25 = MEMORY[0x277D84F90];
LABEL_27:

    return v25;
  }

  return result;
}

uint64_t sub_26F4181BC@<X0>(uint64_t a1@<X8>)
{
  v112 = a1;
  v2 = type metadata accessor for LanguagesView(0);
  v96 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v97 = v3;
  v98 = &v85 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03A0, &qword_26F4A6FF8);
  MEMORY[0x28223BE20](v99);
  v100 = &v85 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03A8, &qword_26F4A7000);
  v108 = *(v5 - 8);
  v109 = v5;
  MEMORY[0x28223BE20](v5);
  v95 = &v85 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03B0, &qword_26F4A7008);
  MEMORY[0x28223BE20](v7 - 8);
  v111 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v110 = &v85 - v10;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03B8, &qword_26F4A7010);
  v11 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v13 = &v85 - v12;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03C0, &qword_26F4A7018);
  MEMORY[0x28223BE20](v102);
  v15 = &v85 - v14;
  v103 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03C8, &qword_26F4A7020);
  MEMORY[0x28223BE20](v103);
  v94 = &v85 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03D0, &qword_26F4A7028);
  v93 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v85 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v85 - v24;
  MEMORY[0x28223BE20](v26);
  v101 = &v85 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03D8, &qword_26F4A7030);
  MEMORY[0x28223BE20](v28 - 8);
  v107 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v105 = v2;
  v106 = &v85 - v32;
  v33 = *(v1 + *(v2 + 24));
  if (v33 && *(v33 + 16))
  {
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v90 = ObjCClassFromMetadata;
    v89 = objc_opt_self();
    v35 = [v89 bundleForClass_];
    v92 = v1;
    v36 = v35;
    v37 = sub_26F49D7D8();
    v91 = v25;
    v39 = v38;

    v113 = v37;
    v114 = v39;
    v87 = sub_26F3BDC0C();
    v40 = sub_26F49EED8();
    v85 = &v85;
    v113 = v40;
    v114 = v41;
    v115 = v42 & 1;
    v116 = v43;
    MEMORY[0x28223BE20](v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9B0, &qword_26F4A5060);
    v88 = v19;
    v86 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0448, &qword_26F4A7070);
    sub_26F41BDD4(&qword_2806DF9B8, &qword_2806DF9B0, &qword_26F4A5060);
    sub_26F41C318(&qword_2806E0450, &qword_2806E0448, &qword_26F4A7070);
    v44 = v101;
    sub_26F49F4D8();
    v45 = [v89 bundleForClass_];
    v46 = sub_26F49D7D8();
    v48 = v47;

    v113 = v46;
    v114 = v48;
    v113 = sub_26F49EED8();
    v114 = v49;
    v115 = v50 & 1;
    v116 = v51;
    MEMORY[0x28223BE20](v113);
    v52 = v91;
    sub_26F49F4D8();
    v53 = v93;
    v54 = *(v93 + 16);
    v55 = v86;
    v54(v86, v44, v17);
    v56 = v88;
    v54(v88, v52, v17);
    v57 = v94;
    v54(v94, v55, v17);
    v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0458, &qword_26F4A7078);
    v54((v57 + *(v58 + 48)), v56, v17);
    v59 = *(v53 + 8);
    v59(v56, v17);
    v59(v55, v17);
    sub_26F3B8DD4(v57, v15, &qword_2806E03C8, &qword_26F4A7020);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806E0408, &qword_2806E03C8, &qword_26F4A7020, MEMORY[0x277CE14C0]);
    sub_26F41BF74();
    v60 = v106;
    sub_26F49E928();
    sub_26F3B6B4C(v57, &qword_2806E03C8, &qword_26F4A7020);
    v59(v52, v17);
    v61 = v17;
    v62 = v60;
    v59(v101, v61);
    v63 = v92;
  }

  else
  {
    MEMORY[0x28223BE20](v31);
    v63 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03E0, &qword_26F4A7038);
    sub_26F41C318(&qword_2806E03E8, &qword_2806E03E0, &qword_26F4A7038);
    sub_26F49F4F8();
    v64 = v104;
    (*(v11 + 16))(v15, v13, v104);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806E0408, &qword_2806E03C8, &qword_26F4A7020, MEMORY[0x277CE14C0]);
    sub_26F41BF74();
    v62 = v106;
    sub_26F49E928();
    (*(v11 + 8))(v13, v64);
  }

  if (*(v63 + *(v105 + 28)) == 1)
  {
    sub_26F417A28();
    type metadata accessor for _BundleObject();
    v65 = swift_getObjCClassFromMetadata();
    v66 = [objc_opt_self() bundleForClass_];
    v113 = sub_26F49EEC8();
    v114 = v67;
    LOBYTE(v115) = v68 & 1;
    v116 = v69;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0420, &qword_26F4A7058);
    sub_26F3B18CC(&qword_2806E0428, &qword_2806E0420, &qword_26F4A7058, MEMORY[0x277CE1138]);
    v70 = v100;
    sub_26F49F508();
    v71 = v98;
    *(v70 + *(v99 + 36)) = 0;
    sub_26F41C01C(v63, v71, type metadata accessor for LanguagesView);
    v72 = (*(v96 + 80) + 16) & ~*(v96 + 80);
    v73 = swift_allocObject();
    sub_26F41C084(v71, v73 + v72, type metadata accessor for LanguagesView);
    sub_26F41C194();
    v74 = v95;
    sub_26F49EF98();

    sub_26F3B6B4C(v70, &qword_2806E03A0, &qword_26F4A6FF8);
    v75 = v108;
    v76 = v110;
    v77 = v74;
    v78 = v109;
    (*(v108 + 32))(v110, v77, v109);
    v79 = 0;
  }

  else
  {
    v79 = 1;
    v78 = v109;
    v76 = v110;
    v75 = v108;
  }

  (*(v75 + 56))(v76, v79, 1, v78);
  v80 = v107;
  sub_26F3B8DD4(v62, v107, &qword_2806E03D8, &qword_26F4A7030);
  v81 = v111;
  sub_26F3B8DD4(v76, v111, &qword_2806E03B0, &qword_26F4A7008);
  v82 = v112;
  sub_26F3B8DD4(v80, v112, &qword_2806E03D8, &qword_26F4A7030);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0418, &qword_26F4A7050);
  sub_26F3B8DD4(v81, v82 + *(v83 + 48), &qword_2806E03B0, &qword_26F4A7008);
  sub_26F3B6B4C(v76, &qword_2806E03B0, &qword_26F4A7008);
  sub_26F3B6B4C(v62, &qword_2806E03D8, &qword_26F4A7030);
  sub_26F3B6B4C(v81, &qword_2806E03B0, &qword_26F4A7008);
  return sub_26F3B6B4C(v80, &qword_2806E03D8, &qword_26F4A7030);
}

uint64_t sub_26F418F54(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LanguagesView(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v16 = a1;
  KeyPath = swift_getKeyPath();
  sub_26F41C01C(a2, &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguagesView);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_26F41C084(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for LanguagesView);

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDD0, &qword_26F4A3100);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03F8, &unk_26F4A7040);
  v12 = sub_26F3B18CC(&qword_2806DFBF0, &qword_2806DEDD0, &qword_26F4A3100, MEMORY[0x277D83980]);
  v13 = sub_26F41BE44();
  return sub_26F49F4B8(&v16, KeyPath, sub_26F41C608, v9, v10, v11, v12, MEMORY[0x277D837E0], v13);
}

uint64_t sub_26F41912C(uint64_t a1)
{
  v2 = type metadata accessor for LanguagesView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v14 = sub_26F417BF4();
  KeyPath = swift_getKeyPath();
  sub_26F41C01C(a1, &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguagesView);
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = swift_allocObject();
  sub_26F41C084(&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6, type metadata accessor for LanguagesView);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDD0, &qword_26F4A3100);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03F8, &unk_26F4A7040);
  v10 = sub_26F3B18CC(&qword_2806DFBF0, &qword_2806DEDD0, &qword_26F4A3100, MEMORY[0x277D83980]);
  v11 = sub_26F41BE44();
  return sub_26F49F4B8(&v14, KeyPath, sub_26F41C5E8, v7, v8, v9, v10, MEMORY[0x277D837E0], v11);
}

uint64_t sub_26F419300@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v35 = a5;
  v36 = a4;
  v34[1] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v34 - v8;
  v10 = sub_26F49DAB8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for LanguageListButton(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v11 + 16);
  v34[0] = a1;
  v18(v13, a1, v10, v15);
  v19 = type metadata accessor for LanguagesView(0);
  v20 = (a2 + *(v19 + 44));
  v21 = *v20;
  v22 = *(v20 + 2);
  v38 = v21;
  v39 = v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF180, &qword_26F4A70B0);
  MEMORY[0x274390240](&v37, v23);
  v24 = a2;
  if (v37)
  {
    v24 = a2 + *(v19 + 20);
  }

  sub_26F3B8DD4(v24, v9, &qword_2806DFB70, &qword_26F4A5238);
  KeyPath = swift_getKeyPath();
  *&v17[v14[7]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  swift_storeEnumTagMultiPayload();
  (*(v11 + 32))(v17, v13, v10);
  sub_26F3BBAEC(v9, &v17[v14[5]], &qword_2806DFB70, &qword_26F4A5238);
  v26 = &v17[v14[6]];
  *v26 = KeyPath;
  v26[8] = 0;
  v27 = sub_26F417560(v34[0]);
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v27 & 1) == 0;
  v30 = v35;
  sub_26F41C084(v17, v35, type metadata accessor for LanguageListButton);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03F8, &unk_26F4A7040);
  v32 = (v30 + *(result + 36));
  v33 = v36;
  *v32 = v28;
  v32[1] = v33;
  v32[2] = v29;
  return result;
}

uint64_t sub_26F419618(uint64_t a1)
{
  v2 = type metadata accessor for LanguagesView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  type metadata accessor for LanguagesService(0);
  sub_26F41BF2C(&qword_2806DF810, type metadata accessor for LanguagesService, &protocol conformance descriptor for LanguagesService);
  sub_26F49DFF8();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  sub_26F41C01C(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LanguagesView);
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_26F41C084(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5, type metadata accessor for LanguagesView);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF750, &unk_26F4A4BB0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03F8, &unk_26F4A7040);
  sub_26F3B18CC(&qword_280F656F0, &qword_2806DF750, &unk_26F4A4BB0, MEMORY[0x277D83980]);
  sub_26F41BE44();
  sub_26F41C734();
  return sub_26F49F4C8();
}

uint64_t sub_26F4198A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  MEMORY[0x28223BE20](v5 - 8);
  v34 = &v33 - v6;
  v35 = sub_26F49DAB8();
  v7 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v33 - v11;
  v13 = type metadata accessor for LanguageListButton(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;

  v33 = v16;
  sub_26F49D978();
  v17 = type metadata accessor for LanguagesView(0);
  v18 = (a2 + *(v17 + 44));
  v19 = *v18;
  v20 = *(v18 + 2);
  v38 = v19;
  v39 = v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF180, &qword_26F4A70B0);
  MEMORY[0x274390240](&v37, v21);
  if (v37)
  {
    a2 += *(v17 + 20);
  }

  v22 = a2;
  v23 = v34;
  sub_26F3B8DD4(v22, v34, &qword_2806DFB70, &qword_26F4A5238);
  KeyPath = swift_getKeyPath();
  *&v15[v13[7]] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF740, &qword_26F4A4BA0);
  swift_storeEnumTagMultiPayload();
  v25 = v35;
  (*(v7 + 32))(v15, v12, v35);
  sub_26F3BBAEC(v23, &v15[v13[5]], &qword_2806DFB70, &qword_26F4A5238);
  v26 = &v15[v13[6]];
  *v26 = KeyPath;
  v26[8] = 0;

  sub_26F49D978();
  v27 = sub_26F417560(v9);
  (*(v7 + 8))(v9, v25);
  v28 = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v27 & 1) == 0;
  v30 = v36;
  sub_26F41C084(v15, v36, type metadata accessor for LanguageListButton);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E03F8, &unk_26F4A7040);
  v32 = (v30 + *(result + 36));
  *v32 = v28;
  v32[1] = sub_26F41C788;
  v32[2] = v29;
  return result;
}

__n128 sub_26F419C24@<Q0>(uint64_t a2@<X8>)
{
  v3 = sub_26F49E6D8();
  sub_26F419C94(&v9);
  v4 = v10;
  v5 = v11;
  v6 = v12;
  v7 = v13;
  result = v9;
  *a2 = v3;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  *(a2 + 56) = v6;
  *(a2 + 64) = v7;
  return result;
}

uint64_t sub_26F419C94@<X0>(uint64_t a1@<X8>)
{
  sub_26F49E768();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  v4 = sub_26F49EEC8();
  v6 = v5;
  *a1 = v4;
  *(a1 + 8) = v5;
  v8 = v7 & 1;
  *(a1 + 16) = v7 & 1;
  *(a1 + 24) = v9;
  *(a1 + 32) = 0;
  *(a1 + 40) = 1;
  sub_26F3B0EE4(v4, v5, v7 & 1);

  sub_26F3B8D40(v4, v6, v8);
}

uint64_t sub_26F419DB4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF2A0, &qword_26F4A7190);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v12 - v1;
  v3 = sub_26F49D878();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F49E1B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F41719C(v10);
  sub_26F49D868();
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    sub_26F49E188();
    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

uint64_t LanguagesView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v45 = a1;
  v42 = sub_26F49E9D8();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02C0, &qword_26F4A6DC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v36 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02C8, &qword_26F4A6DC8);
  v37 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v10 = &v36 - v9;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02D0, &qword_26F4A6DD0);
  v39 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v38 = &v36 - v11;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02D8, &qword_26F4A6DD8);
  MEMORY[0x28223BE20](v41);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02E0, &qword_26F4A6DE0);
  MEMORY[0x28223BE20](v14);
  v16 = &v36 - v15;
  v49 = &type metadata for TranslateFeatures;
  v50 = sub_26F3D3D60();
  LOBYTE(v46) = 4;
  v17 = sub_26F49DB58();
  v18 = __swift_destroy_boxed_opaque_existential_0(&v46);
  if (v17)
  {
    sub_26F4181BC(v16);
    sub_26F3B8DD4(v16, v13, &qword_2806E02E0, &qword_26F4A6DE0);
    swift_storeEnumTagMultiPayload();
    sub_26F3B18CC(&qword_2806E02E8, &qword_2806E02E0, &qword_26F4A6DE0, MEMORY[0x277CE14C0]);
    v19 = sub_26F3B18CC(&qword_2806E02F0, &qword_2806E02C0, &qword_26F4A6DC0, MEMORY[0x277CDE5A0]);
    v46 = v5;
    v47 = v42;
    v48 = v19;
    v49 = MEMORY[0x277CDE0D0];
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v46 = v43;
    v47 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    sub_26F49E928();
    return sub_26F3B6B4C(v16, &qword_2806E02E0, &qword_26F4A6DE0);
  }

  else
  {
    MEMORY[0x28223BE20](v18);
    v40 = sub_26F3B18CC(&qword_2806E02E8, &qword_2806E02E0, &qword_26F4A6DE0, MEMORY[0x277CE14C0]);
    v36 = v14;
    sub_26F49EDB8();
    sub_26F49E9C8();
    v22 = sub_26F3B18CC(&qword_2806E02F0, &qword_2806E02C0, &qword_26F4A6DC0, MEMORY[0x277CDE5A0]);
    v23 = v42;
    sub_26F49F198();
    (*(v2 + 8))(v4, v23);
    (*(v6 + 8))(v8, v5);
    sub_26F49E768();
    type metadata accessor for _BundleObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v25 = [objc_opt_self() bundleForClass_];
    v26 = sub_26F49EEC8();
    v28 = v27;
    v30 = v29;
    v46 = v5;
    v47 = v23;
    v48 = v22;
    v49 = MEMORY[0x277CDE0D0];
    v31 = swift_getOpaqueTypeConformance2();
    v32 = v38;
    v33 = v43;
    sub_26F49F008();
    sub_26F3B8D40(v26, v28, v30 & 1);

    (*(v37 + 8))(v10, v33);
    v34 = v39;
    v35 = v44;
    (*(v39 + 16))(v13, v32, v44);
    swift_storeEnumTagMultiPayload();
    v46 = v33;
    v47 = v31;
    swift_getOpaqueTypeConformance2();
    sub_26F49E928();
    return (*(v34 + 8))(v32, v35);
  }
}

uint64_t sub_26F41A73C()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = v0 + *(type metadata accessor for LanguageListButton(0) + 24);
  v6 = *v5;
  if (*(v5 + 8) != 1)
  {

    sub_26F49FDE8();
    v7 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v6, 0);
    (*(v2 + 8))(v4, v1);
    LOBYTE(v6) = v9[15];
  }

  return v6 & 1;
}

uint64_t sub_26F41A894(uint64_t a1)
{
  v2 = sub_26F49E378();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF820, &qword_26F4A4D48);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - v10;
  v12 = sub_26F49DAB8();
  v13 = *(v12 - 8);
  (*(v13 + 16))(v11, a1, v12);
  (*(v13 + 56))(v11, 0, 1, v12);
  type metadata accessor for LanguageListButton(0);
  sub_26F3B8DD4(v11, v8, &qword_2806DEFD8, &qword_26F4A3670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  sub_26F49F458();
  sub_26F3B6B4C(v11, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F416FBC(v5);
  MEMORY[0x274390240](v3);
  sub_26F49E368();
  sub_26F49F458();
  return sub_26F3B6B4C(v5, &qword_2806DF820, &qword_26F4A4D48);
}

uint64_t sub_26F41AB04(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0350, &unk_26F4A6F50);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-v4];
  v9 = a1;
  v8 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF9B0, &qword_26F4A5060);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0368, &qword_26F4A6F60);
  sub_26F41BDD4(&qword_2806DF9B8, &qword_2806DF9B0, &qword_26F4A5060);
  sub_26F41BDD4(&qword_2806E0370, &qword_2806E0368, &qword_26F4A6F60);
  sub_26F49F308();
  sub_26F3B18CC(&qword_2806E0358, &qword_2806E0350, &unk_26F4A6F50, MEMORY[0x277CDEFF0]);
  sub_26F41BD70();
  sub_26F49EF38();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_26F41AD0C@<X0>(void *a1@<X8>)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s10Foundation6LocaleV13TranslationUIE9ltCurrentACvgZ_0();
  v6 = sub_26F49D9F8();
  v7 = sub_26F49D9F8();
  v8 = [v6 lt:0 displayNameForContext:v7 inTargetLocale:?];

  if (v8)
  {
    v9 = sub_26F49F8C8();
    v11 = v10;

    (*(v3 + 8))(v5, v2);
    v29[2] = v9;
    v29[3] = v11;
    v29[0] = v11;
    sub_26F3BDC0C();

    v12 = sub_26F49EED8();
    v14 = v13;
    v16 = v15;
    v17 = sub_26F41A73C();
    v18 = objc_opt_self();
    v19 = &selRef_labelColor;
    if ((v17 & 1) == 0)
    {
      v19 = &selRef_secondaryLabelColor;
    }

    v20 = [v18 *v19];
    sub_26F49F218();
    v8 = sub_26F49EE68();
    v22 = v21;
    v24 = v23;
    v26 = v25;

    sub_26F3B8D40(v12, v14, v16 & 1);

    v28 = v24 & 1;
  }

  else
  {
    result = (*(v3 + 8))(v5, v2);
    v22 = 0;
    v28 = 0;
    v26 = 0;
  }

  *a1 = v8;
  a1[1] = v22;
  a1[2] = v28;
  a1[3] = v26;
  return result;
}

uint64_t sub_26F41AF50@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_26F49DAB8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v18 - v7;
  type metadata accessor for LanguageListButton(0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  MEMORY[0x274390240](v9);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_26F3B6B4C(v8, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F49D988();
  }

  else
  {
    (*(v3 + 16))(v5, v8, v2);
    sub_26F3B6B4C(v8, &qword_2806DEFD8, &qword_26F4A3670);
    v11 = sub_26F49D988();
    v13 = v12;
    (*(v3 + 8))(v5, v2);
    v14 = sub_26F49D988();
    if (v13)
    {
      if (v11 == v14 && v13 == v15)
      {
      }

      else
      {
        v17 = sub_26F4A0458();

        if ((v17 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      result = sub_26F49F2B8();
      goto LABEL_5;
    }
  }

LABEL_4:
  result = 0;
LABEL_5:
  *a1 = result;
  return result;
}

uint64_t sub_26F41B1B8(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = *(v2 + 64);
  MEMORY[0x28223BE20](a1 - 8);
  sub_26F41C01C(v1, &v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for LanguageListButton);
  v4 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = swift_allocObject();
  sub_26F41C084(&v10[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)], v5 + v4, type metadata accessor for LanguageListButton);
  v11 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0348, &qword_26F4A6F48);
  v6 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0350, &unk_26F4A6F50);
  v7 = sub_26F3B18CC(&qword_2806E0358, &qword_2806E0350, &unk_26F4A6F50, MEMORY[0x277CDEFF0]);
  v8 = sub_26F41BD70();
  v12 = v6;
  v13 = &type metadata for ListLabelStyle;
  v14 = v7;
  v15 = v8;
  swift_getOpaqueTypeConformance2();
  return sub_26F49F398();
}

uint64_t ListLabelStyle.makeBody(configuration:)@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_26F49E6D8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02F8, &qword_26F4A6DE8);
  return sub_26F41B3F0(a2 + *(v3 + 44));
}

uint64_t sub_26F41B3F0@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0378, &qword_26F4A6F68);
  v3 = v2 - 8;
  MEMORY[0x28223BE20](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0380, &qword_26F4A6F70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v25 - v13;
  *v14 = sub_26F49E808();
  *(v14 + 1) = 0;
  v14[16] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0388, &qword_26F4A6F78);
  sub_26F49EA78();
  sub_26F49EA68();
  sub_26F49ECA8();
  sub_26F49ED08();
  v15 = sub_26F49ED58();

  KeyPath = swift_getKeyPath();
  v17 = &v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0390, &unk_26F4A6FB0) + 36)];
  *v17 = KeyPath;
  v17[1] = v15;
  v18 = &v8[*(v3 + 44)];
  v19 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCA0, &qword_26F4A55E8) + 28);
  v20 = *MEMORY[0x277CE1058];
  v21 = sub_26F49F2E8();
  (*(*(v21 - 8) + 104))(v18 + v19, v20, v21);
  *v18 = swift_getKeyPath();
  sub_26F3B8DD4(v14, v11, &qword_2806E0380, &qword_26F4A6F70);
  sub_26F3B8DD4(v8, v5, &qword_2806E0378, &qword_26F4A6F68);
  sub_26F3B8DD4(v11, a1, &qword_2806E0380, &qword_26F4A6F70);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0398, &qword_26F4A6FF0);
  v23 = a1 + *(v22 + 48);
  *v23 = 0;
  *(v23 + 8) = 1;
  sub_26F3B8DD4(v5, a1 + *(v22 + 64), &qword_2806E0378, &qword_26F4A6F68);
  sub_26F3B6B4C(v8, &qword_2806E0378, &qword_26F4A6F68);
  sub_26F3B6B4C(v14, &qword_2806E0380, &qword_26F4A6F70);
  sub_26F3B6B4C(v5, &qword_2806E0378, &qword_26F4A6F68);
  return sub_26F3B6B4C(v11, &qword_2806E0380, &qword_26F4A6F70);
}

uint64_t sub_26F41B728@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_26F49E6D8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E02F8, &qword_26F4A6DE8);
  return sub_26F41B3F0(a2 + *(v3 + 44));
}

void sub_26F41B7A8(uint64_t a1)
{
  sub_26F41BCBC(319, &qword_2806DFBA8, &qword_2806DEFD8, &qword_26F4A3670, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_26F41BCBC(319, &qword_280F65708, &qword_2806DEDD0, &qword_26F4A3100, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_26F41B900(319);
      if (v3 <= 0x3F)
      {
        sub_26F3E1700(319);
        if (v4 <= 0x3F)
        {
          sub_26F41BC6C(319, &qword_2806E0310, MEMORY[0x277D83B88], MEMORY[0x277CE11F8]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26F41B900(uint64_t a1)
{
  if (!qword_2806DFBB0)
  {
    sub_26F49E1B8();
    v1 = sub_26F49DFE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2806DFBB0);
    }
  }
}

unint64_t sub_26F41B968()
{
  result = qword_2806E0318;
  if (!qword_2806E0318)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0320, &qword_26F4A6EB8);
    sub_26F3B18CC(&qword_2806E02E8, &qword_2806E02E0, &qword_26F4A6DE0, MEMORY[0x277CE14C0]);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E02C8, &qword_26F4A6DC8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E02C0, &qword_26F4A6DC0);
    sub_26F49E9D8();
    sub_26F3B18CC(&qword_2806E02F0, &qword_2806E02C0, &qword_26F4A6DC0, MEMORY[0x277CDE5A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0318);
  }

  return result;
}

void sub_26F41BB3C(uint64_t a1)
{
  sub_26F49DAB8();
  if (v1 <= 0x3F)
  {
    sub_26F41BCBC(319, &qword_2806DFBA8, &qword_2806DEFD8, &qword_26F4A3670, MEMORY[0x277CE11F8]);
    if (v2 <= 0x3F)
    {
      sub_26F41BC6C(319, &qword_2806DF870, MEMORY[0x277D839B0], MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_26F41BCBC(319, &qword_2806DF818, &qword_2806DF820, &qword_26F4A4D48, MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_26F41BC6C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_26F41BCBC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_26F41BD70()
{
  result = qword_2806E0360;
  if (!qword_2806E0360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0360);
  }

  return result;
}

uint64_t sub_26F41BDD4(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

unint64_t sub_26F41BE44()
{
  result = qword_2806E03F0;
  if (!qword_2806E03F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E03F8, &unk_26F4A7040);
    sub_26F41BF2C(&qword_2806E0400, type metadata accessor for LanguageListButton, &unk_26F4A6EF0);
    sub_26F3B18CC(&qword_280F65728, &qword_2806DFA50, &qword_26F4A50D0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E03F0);
  }

  return result;
}

uint64_t sub_26F41BF2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_26F41BF74()
{
  result = qword_2806E0410;
  if (!qword_2806E0410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E03B8, &qword_26F4A7010);
    sub_26F41C318(&qword_2806E03E8, &qword_2806E03E0, &qword_26F4A7038);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0410);
  }

  return result;
}

uint64_t sub_26F41C01C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F41C084(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F41C118(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t))
{
  v3 = *(a1(0) - 8);
  v4 = v2 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return a2(v4);
}

unint64_t sub_26F41C194()
{
  result = qword_2806E0430;
  if (!qword_2806E0430)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E03A0, &qword_26F4A6FF8);
    sub_26F41C24C();
    sub_26F3B18CC(&qword_2806DF148, &qword_2806DF150, &qword_26F4A3968, MEMORY[0x277CE0470]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0430);
  }

  return result;
}

unint64_t sub_26F41C24C()
{
  result = qword_2806E0438;
  if (!qword_2806E0438)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0440, &unk_26F4A7060);
    sub_26F3B18CC(&qword_2806E0428, &qword_2806E0420, &qword_26F4A7058, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0438);
  }

  return result;
}

uint64_t sub_26F41C318(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    sub_26F41BE44();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_29Tm()
{
  v1 = type metadata accessor for LanguagesView(0);
  v2 = v0 + ((*(*(v1 - 1) + 80) + 16) & ~*(*(v1 - 1) + 80));

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  v4 = *(v3 + 32);
  v5 = sub_26F49DAB8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 48);
  if (!v7(v2 + v4, 1, v5))
  {
    (*(v6 + 8))(v2 + v4, v5);
  }

  v8 = v2 + v1[5];

  v9 = *(v3 + 32);
  if (!v7(v8 + v9, 1, v5))
  {
    (*(v6 + 8))(v8 + v9, v5);
  }

  v10 = v1[9];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_26F49E1B8();
    (*(*(v11 - 8) + 8))(v2 + v10, v11);
  }

  else
  {
  }

  sub_26F3E2088(*(v2 + v1[10]), *(v2 + v1[10] + 8));

  return swift_deallocObject();
}

uint64_t sub_26F41C6B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for LanguagesView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_26F4198A0(a1, v6, a2);
}

unint64_t sub_26F41C734()
{
  result = qword_2806E0460;
  if (!qword_2806E0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0460);
  }

  return result;
}

void sub_26F41C7DC(void *a1, uint64_t a2)
{
  v5 = v2 + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate;
  swift_beginAccess();
  *(v5 + 8) = a2;
  swift_unknownObjectWeakAssign();
}

void (*sub_26F41C844(uint64_t *a1))(id **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  v6 = v1 + v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v8 = *(v6 + 8);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v8;
  return sub_26F41C8E4;
}

void sub_26F41C8E4(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  *((*a1)[6] + (*a1)[5] + 8) = (*a1)[4];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

char *LanguagesViewController.__allocating_init(initialSelection:showsCloseButton:requireOnDevice:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  v7 = objc_allocWithZone(v3);
  return LanguagesViewController.init(initialSelection:showsCloseButton:requireOnDevice:)(a1, v5, v4);
}

char *LanguagesViewController.init(initialSelection:showsCloseButton:requireOnDevice:)(uint64_t a1, char a2, char a3)
{
  *&v3[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_segmentedControl] = 0;
  v6 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel;
  type metadata accessor for LanguageSelectionModel(0);
  swift_allocObject();
  *&v3[v6] = sub_26F3ED628();
  *&v3[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v3[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_subscriptions] = MEMORY[0x277D84F90];
  v3[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_showsCloseButton] = a2;
  v3[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_requireOnDevice] = a3;
  v9.receiver = v3;
  v9.super_class = type metadata accessor for LanguagesViewController();
  v7 = objc_msgSendSuper2(&v9, sel_initWithNibName_bundle_, 0, 0);
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDB8();
  return v7;
}

void (*sub_26F41CBFC(void *a1))(void **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel;
  v5[4] = v7;
  v5[5] = v8;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDA8();

  return sub_26F41CD6C;
}

uint64_t sub_26F41CD80()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDA8();
}

uint64_t sub_26F41CE10(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v17 - v14;
  sub_26F3E718C(a1, &v17 - v14);
  sub_26F3E718C(v15, v12);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F3E718C(v12, v9);

  sub_26F49DDB8();
  sub_26F3B6B4C(v12, &qword_2806DEFD8, &qword_26F4A3670);
  return sub_26F3B6B4C(v15, &qword_2806DEFD8, &qword_26F4A3670);
}

uint64_t sub_26F41CF94()
{
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDA8();
}

uint64_t sub_26F41D030(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v11 - v8;
  sub_26F3E718C(a1, &v11 - v8);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F3E718C(v9, v6);

  sub_26F49DDB8();
  sub_26F3B6B4C(a1, &qword_2806DEFD8, &qword_26F4A3670);
  return sub_26F3B6B4C(v9, &qword_2806DEFD8, &qword_26F4A3670);
}

void (*sub_26F41D164(void *a1))(void **a1, uint64_t a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v5[3] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v5[3] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel;
  v5[4] = v7;
  v5[5] = v8;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDA8();

  return sub_26F41D2D4;
}

void sub_26F41D2E8(void **a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(*a1 + 4);
  v6 = *(*a1 + 2);
  v7 = *(*a1 + 3);
  v8 = *(*a1 + 1);
  if (a2)
  {
    sub_26F3E718C(*(*a1 + 4), v7);
    sub_26F3E718C(v7, v6);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F3E718C(v6, v8);

    sub_26F49DDB8();
    sub_26F3B6B4C(v6, &qword_2806DEFD8, &qword_26F4A3670);
  }

  else
  {
    sub_26F3E718C(*(*a1 + 4), v7);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_26F3E718C(v7, v6);

    sub_26F49DDB8();
  }

  sub_26F3B6B4C(v7, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v5, &qword_2806DEFD8, &qword_26F4A3670);
  free(v5);
  free(v7);
  free(v6);
  free(v8);

  free(v4);
}

void sub_26F41D46C()
{
  v1 = v0;
  v92.receiver = v0;
  v92.super_class = type metadata accessor for LanguagesViewController();
  objc_msgSendSuper2(&v92, sel_viewDidLoad);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0140, &qword_26F4A6670);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26F4A3B80;
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v90 = objc_opt_self();
  v4 = [v90 bundleForClass_];
  v5 = sub_26F49D7D8();
  v7 = v6;

  v8 = MEMORY[0x277D837D0];
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 32) = v5;
  *(v2 + 40) = v7;
  v9 = [v90 byte_279DD743B];
  v10 = sub_26F49D7D8();
  v12 = v11;

  *(v2 + 88) = v8;
  *(v2 + 64) = v10;
  *(v2 + 72) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277D75A08]);
  v14 = sub_26F49FAD8();

  v15 = [v13 initWithItems_];

  [v15 addTarget:v1 action:sel_updateSelectedTarget forControlEvents:4096];
  v16 = v15;
  [v16 setTranslatesAutoresizingMaskIntoConstraints_];
  swift_getKeyPath();
  swift_getKeyPath();

  sub_26F49DDA8();

  [v16 setSelectedSegmentIndex_];
  [v16 sizeToFit];
  [v16 frame];
  Height = CGRectGetHeight(v93);
  v18 = *&v1[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_segmentedControl];
  *&v1[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_segmentedControl] = v16;
  v19 = v16;

  v20 = [objc_allocWithZone(MEMORY[0x277D75D18]) init];
  [v20 addSubview_];
  v89 = v20;
  v21 = [objc_allocWithZone(MEMORY[0x277D76118]) initWithContentView_];
  v22 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2806E0730, &unk_26F4A7E80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_26F4A71F0;
  v24 = [v19 heightAnchor];
  v25 = [v24 constraintGreaterThanOrEqualToConstant_];

  *(v23 + 32) = v25;
  v26 = [v19 topAnchor];
  v27 = v21;
  v28 = [v27 topAnchor];
  v29 = [v26 constraintEqualToAnchor_];

  *(v23 + 40) = v29;
  v30 = [v19 leadingAnchor];
  v31 = [v27 safeAreaLayoutGuide];
  v32 = [v31 leadingAnchor];

  v33 = [v30 constraintEqualToAnchor:v32 constant:20.0];
  *(v23 + 48) = v33;
  v34 = [v27 safeAreaLayoutGuide];
  v35 = [v34 trailingAnchor];

  v36 = [v19 trailingAnchor];
  v37 = [v35 constraintEqualToAnchor:v36 constant:20.0];

  *(v23 + 56) = v37;
  v38 = [v27 bottomAnchor];

  v39 = [v19 bottomAnchor];
  v40 = [v38 constraintEqualToAnchor:v39 constant:8.0];

  *(v23 + 64) = v40;
  sub_26F3B0C24(0, &qword_2806E04A8, 0x277CCAAD0);
  v41 = sub_26F49FAD8();

  v88 = v22;
  [v22 activateConstraints_];

  [v27 setPreferredHeight_];
  v42 = [v1 navigationItem];
  [v42 _setBottomPalette_];

  v43 = [v1 navigationItem];
  v44 = [v90 bundleForClass_];
  sub_26F49D7D8();

  v45 = sub_26F49F898();

  [v43 setTitle_];

  if (v1[OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_showsCloseButton] == 1)
  {
    v46 = [v1 navigationItem];
    v47 = [objc_allocWithZone(MEMORY[0x277D751E0]) initWithBarButtonSystemItem:24 target:v1 action:sel_closeActionWithSender_];
    [v46 setRightBarButtonItem_];
  }

  v48 = [v1 view];
  if (!v48)
  {
    __break(1u);
    goto LABEL_17;
  }

  v49 = v48;
  v50 = [objc_opt_self() systemGroupedBackgroundColor];
  [v49 setBackgroundColor_];

  type metadata accessor for LanguageSelectionModel(0);
  sub_26F41FE6C(&qword_2806E04B0, type metadata accessor for LanguageSelectionModel, &unk_26F4A5A98);

  sub_26F49E288();
  v51 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E04B8, &unk_26F4A72F0));
  v52 = sub_26F49E858();
  v53 = [v52 view];
  if (!v53)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v54 = v53;
  [v53 setTranslatesAutoresizingMaskIntoConstraints_];

  [v1 addChildViewController_];
  v55 = [v1 view];
  if (!v55)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v56 = v55;
  v57 = [v52 view];
  if (!v57)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v58 = v57;
  [v56 addSubview_];

  [v52 didMoveToParentViewController_];
  v59 = swift_allocObject();
  *(v59 + 16) = xmmword_26F4A7200;
  v60 = [v52 view];
  if (!v60)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v61 = v60;
  v62 = [v60 topAnchor];

  v63 = [v1 view];
  if (!v63)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v64 = v63;
  v65 = [v63 topAnchor];

  v66 = [v62 constraintEqualToAnchor_];
  *(v59 + 32) = v66;
  v67 = [v52 view];
  if (!v67)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v68 = v67;
  v69 = [v67 leadingAnchor];

  v70 = [v1 view];
  if (!v70)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v71 = v70;
  v72 = [v70 leadingAnchor];

  v73 = [v69 constraintEqualToAnchor_];
  *(v59 + 40) = v73;
  v74 = [v1 view];
  if (!v74)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v75 = v74;
  v76 = [v74 trailingAnchor];

  v77 = [v52 view];
  if (!v77)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v78 = v77;
  v79 = [v77 trailingAnchor];

  v80 = [v76 constraintEqualToAnchor_];
  *(v59 + 48) = v80;
  v81 = [v1 view];
  if (!v81)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v82 = v81;
  v83 = [v81 bottomAnchor];

  v84 = [v52 view];
  if (v84)
  {
    v85 = [v84 bottomAnchor];

    v86 = [v83 constraintEqualToAnchor_];
    *(v59 + 56) = v86;
    v87 = sub_26F49FAD8();

    [v88 activateConstraints_];

    return;
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_26F41E09C(char a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E01F0, &qword_26F4A68A8);
  MEMORY[0x28223BE20](v4 - 8);
  v74 = v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E04C0, &qword_26F4A7300);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v45 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E04C8, &qword_26F4A7308);
  v76 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v45 - v11;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E04D0, &qword_26F4A7310);
  v75 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v14 = v45 - v13;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E04D8, &qword_26F4A7318);
  v77 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v16 = v45 - v15;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E04E0, &unk_26F4A7320);
  v78 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = v45 - v17;
  v18 = type metadata accessor for LanguagesViewController();
  v80.receiver = v2;
  v80.super_class = v18;
  objc_msgSendSuper2(&v80, sel_viewWillAppear_, a1 & 1);
  v19 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_subscriptions;
  swift_beginAccess();
  v52 = v19;
  *&v2[v19] = MEMORY[0x277D84F90];

  v69 = OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_selectionModel;
  swift_beginAccess();

  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFE08, &qword_26F4A5B18);
  sub_26F49DD78();
  swift_endAccess();

  v67 = sub_26F3B18CC(&qword_2806E04E8, &qword_2806E04C0, &qword_26F4A7300, MEMORY[0x277CBCEC8]);
  v64 = v6;
  v60 = v9;
  sub_26F49DE18();
  v20 = *(v7 + 8);
  v65 = v7 + 8;
  v66 = v20;
  v20(v9, v6);
  v63 = sub_26F49DAB8();
  v62 = sub_26F3B18CC(&qword_2806E04F0, &qword_2806E04C8, &qword_26F4A7308, MEMORY[0x277CBCC18]);
  v59 = v10;
  v48 = v12;
  sub_26F49DDE8();
  v21 = *(v76 + 8);
  v76 += 8;
  v61 = v21;
  v21(v12, v10);
  v58 = sub_26F3B18CC(&qword_2806E04F8, &qword_2806E04D0, &qword_26F4A7310, MEMORY[0x277CBCB10]);
  v57 = sub_26F41FE6C(qword_2806E07F0, MEMORY[0x277CC9788], MEMORY[0x277CC97A0]);
  v22 = v16;
  v23 = v71;
  sub_26F49DE28();
  v24 = *(v75 + 8);
  v75 += 8;
  v56 = v24;
  v24(v14, v23);
  sub_26F3B0C24(0, &qword_280F65680, 0x277D85C78);
  v25 = sub_26F49FE58();
  v79 = v25;
  v54 = sub_26F49FE38();
  v26 = *(v54 - 8);
  v53 = *(v26 + 56);
  v55 = v26 + 56;
  v27 = v74;
  v53(v74, 1, 1, v54);
  v51 = sub_26F3B18CC(&qword_2806E0500, &qword_2806E04D8, &qword_26F4A7318, MEMORY[0x277CBCBE0]);
  v50 = sub_26F40DBE8();
  v28 = v70;
  v29 = v72;
  sub_26F49DE08();
  sub_26F3B6B4C(v27, &qword_2806E01F0, &qword_26F4A68A8);

  v30 = *(v77 + 8);
  v77 += 8;
  v49 = v30;
  v31 = v22;
  v30(v22, v29);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v47 = sub_26F3B18CC(&qword_2806E0508, &qword_2806E04E0, &unk_26F4A7320, MEMORY[0x277CBCD60]);
  v32 = v73;
  sub_26F49DE38();

  v33 = *(v78 + 8);
  v78 += 8;
  v46 = v33;
  v33(v28, v32);
  swift_beginAccess();
  v45[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0218, &unk_26F4A68D0);
  v45[0] = sub_26F3B18CC(&unk_280F656D0, &qword_2806E0218, &unk_26F4A68D0, MEMORY[0x277D83990]);
  sub_26F49DD38();
  swift_endAccess();

  swift_beginAccess();

  v34 = v60;
  sub_26F49DD78();
  swift_endAccess();

  v35 = v48;
  v36 = v64;
  sub_26F49DE18();
  v66(v34, v36);
  v37 = v59;
  sub_26F49DDE8();
  v61(v35, v37);
  v38 = v71;
  sub_26F49DE28();
  v56(v14, v38);
  v39 = sub_26F49FE58();
  v79 = v39;
  v40 = v74;
  v53(v74, 1, 1, v54);
  v41 = v70;
  v42 = v72;
  sub_26F49DE08();
  sub_26F3B6B4C(v40, &qword_2806E01F0, &qword_26F4A68A8);

  v49(v31, v42);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v43 = v73;
  sub_26F49DE38();

  v46(v41, v43);
  swift_beginAccess();
  sub_26F49DD38();
  swift_endAccess();
}

void sub_26F41EBB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v11 = sub_26F49DCA8();
  __swift_project_value_buffer(v11, qword_280F67EB8);
  v34 = *(v8 + 16);
  v34(v10, a1, v7);
  v12 = sub_26F49DC88();
  v13 = sub_26F49FDB8();
  v14 = os_log_type_enabled(v12, v13);
  v35 = v8;
  v36 = a1;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v33 = a2;
    v16 = v15;
    v31 = swift_slowAlloc();
    v32 = v6;
    v37[0] = v31;
    *v16 = 136446210;
    v37[7] = sub_26F49D988();
    v37[8] = v17;
    v37[4] = 45;
    v37[5] = 0xE100000000000000;
    v37[1] = 95;
    v37[2] = 0xE100000000000000;
    sub_26F3BDC0C();
    v18 = sub_26F49FFF8();
    v20 = v19;
    (*(v8 + 8))(v10, v7);

    v21 = sub_26F3B38D0(v18, v20, v37);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_26F39E000, v12, v13, "Source language changed %{public}s", v16, 0xCu);
    v22 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    v6 = v32;
    MEMORY[0x274391F70](v22, -1, -1);
    MEMORY[0x274391F70](v16, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate;
    v25 = Strong;
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    v27 = *(v24 + 8);

    if (v26)
    {
      ObjectType = swift_getObjectType();
      v34(v6, v36, v7);
      (*(v35 + 56))(v6, 0, 1, v7);
      (*(v27 + 8))(v6, ObjectType, v27);

      sub_26F3B6B4C(v6, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    [v29 dismissViewControllerAnimated:1 completion:0];
  }
}

void sub_26F41EFD8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v31 - v5;
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F66C10 != -1)
  {
    swift_once();
  }

  v11 = sub_26F49DCA8();
  __swift_project_value_buffer(v11, qword_280F67EB8);
  v34 = *(v8 + 16);
  v34(v10, a1, v7);
  v12 = sub_26F49DC88();
  v13 = sub_26F49FDB8();
  v14 = os_log_type_enabled(v12, v13);
  v35 = v8;
  v36 = a1;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v33 = a2;
    v16 = v15;
    v31 = swift_slowAlloc();
    v32 = v6;
    v37[0] = v31;
    *v16 = 136446210;
    v37[7] = sub_26F49D988();
    v37[8] = v17;
    v37[4] = 45;
    v37[5] = 0xE100000000000000;
    v37[1] = 95;
    v37[2] = 0xE100000000000000;
    sub_26F3BDC0C();
    v18 = sub_26F49FFF8();
    v20 = v19;
    (*(v8 + 8))(v10, v7);

    v21 = sub_26F3B38D0(v18, v20, v37);

    *(v16 + 4) = v21;
    _os_log_impl(&dword_26F39E000, v12, v13, "Target language changed %{public}s", v16, 0xCu);
    v22 = v31;
    __swift_destroy_boxed_opaque_existential_0(v31);
    v6 = v32;
    MEMORY[0x274391F70](v22, -1, -1);
    MEMORY[0x274391F70](v16, -1, -1);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_delegate;
    v25 = Strong;
    swift_beginAccess();
    v26 = swift_unknownObjectWeakLoadStrong();
    v27 = *(v24 + 8);

    if (v26)
    {
      ObjectType = swift_getObjectType();
      v34(v6, v36, v7);
      (*(v35 + 56))(v6, 0, 1, v7);
      (*(v27 + 16))(v6, ObjectType, v27);

      sub_26F3B6B4C(v6, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  swift_beginAccess();
  v29 = swift_unknownObjectWeakLoadStrong();
  if (v29)
  {
    v30 = v29;
    [v29 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_26F41F450()
{
  v1 = *(v0 + OBJC_IVAR____TtC13TranslationUI23LanguagesViewController_segmentedControl);

  if (v1)
  {
    [v1 selectedSegmentIndex];
  }

  swift_getKeyPath();
  swift_getKeyPath();
  return sub_26F49DDB8();
}

id LanguagesViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_26F49F898();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id LanguagesViewController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for LanguagesViewController();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_26F41F730@<X0>(int a3@<W2>, uint64_t a4@<X8>)
{
  v30 = a3;
  v31 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB70, &qword_26F4A5238);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for LanguagesView(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for LanguageSelectionModel(0);
  sub_26F41FE6C(&qword_2806E04B0, type metadata accessor for LanguageSelectionModel, &unk_26F4A5A98);
  sub_26F49E298();
  swift_getKeyPath();
  sub_26F49E2A8();

  sub_26F49E298();
  swift_getKeyPath();
  sub_26F49E2A8();

  sub_26F49E298();
  swift_getKeyPath();
  sub_26F49E2A8();

  v29 = v33;
  v13 = v34;
  v14 = MKBGetDeviceLockState();
  v15 = (v14 > 3) | (9u >> (v14 & 0xF));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  v16 = v32;
  v17 = v10[6];
  v18 = v10[7];
  v19 = v10[9];
  *&v12[v19] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFB68, &unk_26F4A6DB0);
  swift_storeEnumTagMultiPayload();
  v20 = &v12[v10[10]];
  *v20 = sub_26F4173A4;
  *(v20 + 1) = 0;
  v20[16] = 0;
  sub_26F3E5840(v9, v12);
  sub_26F3E5840(v6, &v12[v10[5]]);
  v21 = &v12[v10[11]];
  *v21 = v29;
  *(v21 + 2) = v13;
  *&v12[v17] = v16;
  v12[v10[8]] = v30;
  v12[v18] = v15 & 1;
  sub_26F49E768();
  type metadata accessor for _BundleObject();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = sub_26F49EEC8();
  v26 = v25;
  LOBYTE(v6) = v27;
  sub_26F41FE6C(&qword_2806E0510, type metadata accessor for LanguagesView, &protocol conformance descriptor for LanguagesView);
  sub_26F49F008();
  sub_26F3B8D40(v24, v26, v6 & 1);

  return sub_26F4202EC(v12);
}

uint64_t sub_26F41FBCC()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();
}

uint64_t sub_26F41FC58(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - v11;
  sub_26F3E718C(a1, &v14 - v11);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F3E718C(v12, v9);

  sub_26F49DDB8();
  return sub_26F3B6B4C(v12, &qword_2806DEFD8, &qword_26F4A3670);
}

uint64_t sub_26F41FD78@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v4;
  return result;
}

uint64_t sub_26F41FDF8(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t sub_26F41FE6C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_26F420130(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_26F420178(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26F4201F0@<X0>(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_26F49DDA8();

  *a2 = v4;
  return result;
}

uint64_t sub_26F420270(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_26F49DDB8();
}

uint64_t sub_26F4202EC(uint64_t a1)
{
  v2 = type metadata accessor for LanguagesView(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t EnvironmentValues.languageLabelContext.getter()
{
  sub_26F3EA5CC();
  sub_26F49E688();
  return v1;
}

uint64_t sub_26F4203EC()
{
  v1 = sub_26F49E678();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for LIDOrLanguagePicker(0) + 36);
  result = *v5;
  if ((*(v5 + 8) & 1) == 0)
  {
    v7 = *v5;

    sub_26F49FDE8();
    v8 = sub_26F49EC18();
    sub_26F49DBC8();

    sub_26F49E668();
    swift_getAtKeyPath();
    sub_26F3E1E08(v7, 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }

  return result;
}

uint64_t LIDOrLanguagePicker.body.getter@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v11 = sub_26F49F628();
  v2 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0518, &unk_26F4A7490);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  v13 = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC40, &qword_26F4A5408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0520, &unk_26F4A74A0);
  sub_26F3E8EFC();
  sub_26F3B18CC(&qword_2806E0528, &qword_2806E0520, &unk_26F4A74A0, MEMORY[0x277CE14C0]);
  sub_26F49EDC8();
  sub_26F49F618();
  sub_26F3B18CC(&qword_2806E0530, &qword_2806E0518, &unk_26F4A7490, MEMORY[0x277CDE5B0]);
  sub_26F49F1A8();
  (*(v2 + 8))(v4, v11);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26F4207B4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v68 = a2;
  v60 = sub_26F49F4A8();
  v4 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v55 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFCC8, &qword_26F4A5640);
  MEMORY[0x28223BE20](v6 - 8);
  v67 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v69 = &v54 - v9;
  v10 = type metadata accessor for LIDOrLanguagePicker(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0558, &qword_26F4A75C0);
  v66 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v64 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v54 - v15;
  MEMORY[0x28223BE20](v16);
  v61 = &v54 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v54 - v19;
  sub_26F420E24();
  v22 = v21;
  v58 = v23;
  v71 = v21;
  KeyPath = swift_getKeyPath();
  v63 = a1;
  sub_26F423E44(a1, &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LIDOrLanguagePicker);
  v24 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v59 = v12;
  v25 = swift_allocObject();
  v57 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F423EAC(v57, v25 + v24, type metadata accessor for LIDOrLanguagePicker);

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0560, &qword_26F4A75F0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0568, &qword_26F4A75F8);
  v28 = sub_26F3B18CC(&qword_2806E0570, &qword_2806E0560, &qword_26F4A75F0, MEMORY[0x277D83980]);
  v29 = sub_26F423B00();
  v70 = v20;
  v30 = v25;
  v31 = v26;
  sub_26F49F4B8(&v71, KeyPath, sub_26F424128, v30, v26, v27, v28, MEMORY[0x277D837E0], v29);
  v32 = *(v22 + 16);

  if (v32)
  {
    v33 = v55;
    sub_26F49F498();
    v34 = v69;
    v35 = v33;
    v36 = v60;
    (*(v4 + 32))(v69, v35, v60);
    v37 = 0;
    v38 = v36;
  }

  else
  {
    v37 = 1;
    v34 = v69;
    v38 = v60;
  }

  (*(v4 + 56))(v34, v37, 1, v38);
  v71 = v58;
  v39 = swift_getKeyPath();
  v40 = v57;
  sub_26F423E44(v63, v57, type metadata accessor for LIDOrLanguagePicker);
  v41 = swift_allocObject();
  sub_26F423EAC(v40, v41 + v24, type metadata accessor for LIDOrLanguagePicker);
  v42 = v61;
  sub_26F49F4B8(&v71, v39, sub_26F423DAC, v41, v31, v27, v28, MEMORY[0x277D837E0], v29);
  v44 = v65;
  v43 = v66;
  v45 = *(v66 + 16);
  v46 = v62;
  v45(v65, v70, v62);
  v47 = v34;
  v48 = v67;
  sub_26F3B8DD4(v47, v67, &qword_2806DFCC8, &qword_26F4A5640);
  v49 = v64;
  v45(v64, v42, v46);
  v50 = v68;
  v45(v68, v44, v46);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0590, &qword_26F4A7610);
  sub_26F3B8DD4(v48, &v50[*(v51 + 48)], &qword_2806DFCC8, &qword_26F4A5640);
  v45(&v50[*(v51 + 64)], v49, v46);
  v52 = *(v43 + 8);
  v52(v42, v46);
  sub_26F3B6B4C(v69, &qword_2806DFCC8, &qword_26F4A5640);
  v52(v70, v46);
  v52(v49, v46);
  sub_26F3B6B4C(v48, &qword_2806DFCC8, &qword_26F4A5640);
  return (v52)(v44, v46);
}

void sub_26F420E24()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0598, &qword_26F4A7648);
  MEMORY[0x28223BE20](v1 - 8);
  v84 = &v82 - v2;
  v3 = type metadata accessor for LanguageOption(0);
  v99 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v83 = &v82 - v7;
  MEMORY[0x28223BE20](v8);
  v86 = &v82 - v9;
  MEMORY[0x28223BE20](v10);
  v87 = &v82 - v11;
  MEMORY[0x28223BE20](v12);
  v85 = &v82 - v13;
  v103 = sub_26F49DAB8();
  v14 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v16 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v82 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v82 - v21;
  v23 = type metadata accessor for LIDOrLanguagePicker(0);
  v24 = v23;
  v25 = *(v0 + *(v23 + 20));
  if (v25)
  {
  }

  else
  {
    v42 = *(v0 + *(v23 + 28));
    if (!*(v42 + 16))
    {
      goto LABEL_53;
    }

    v88 = v0;
    sub_26F49D9D8();
    v43 = sub_26F49FAD8();

    v44 = *(v42 + 16);
    if (v44)
    {
      v100 = v5;
      v101 = v24;
      v104 = MEMORY[0x277D84F90];
      sub_26F40333C(0, v44, 0);
      v45 = v104;
      v102 = v14 + 32;
      v46 = v22;
      v47 = v42 + 40;
      do
      {

        sub_26F49D978();
        v104 = v45;
        v49 = v45[2];
        v48 = v45[3];
        if (v49 >= v48 >> 1)
        {
          sub_26F40333C((v48 > 1), v49 + 1, 1);
          v45 = v104;
        }

        v45[2] = v49 + 1;
        (*(v14 + 32))(v45 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v49, v46, v103);
        v47 += 48;
        --v44;
      }

      while (v44);
      v5 = v100;
      v24 = v101;
    }

    v73 = objc_opt_self();
    v74 = sub_26F49FAD8();

    v75 = [v73 lt:v43 bestMatchesForPreferredLocales:v74 fromSupportedLocales:?];

    v0 = v88;
    if (!v75)
    {
      goto LABEL_53;
    }

    v25 = sub_26F49FAF8();
  }

  v101 = *(v25 + 16);
  if (v101)
  {
    v26 = *(v0 + *(v24 + 28));
    v91 = *(v26 + 16);
    v88 = v0;
    if (v91)
    {
      v27 = 0;
      v90 = v26 + 32;
      v100 = (v14 + 16);
      v28 = MEMORY[0x277D84F90];
      v92 = MEMORY[0x277D84F90];
      v89 = v26;
      while (2)
      {
        if (v27 >= *(v26 + 16))
        {
LABEL_61:
          __break(1u);
          return;
        }

        v31 = (v90 + 48 * v27);
        v32 = v31[1];
        v102 = *v31;
        v96 = v31[2];
        v95 = *(v31 + 24);
        v33 = v31[5];
        v94 = v31[4];
        v97 = v27 + 1;
        v98 = v28;

        v93 = v33;

        v34 = 0;
        while (v101 != v34)
        {
          if (v34 >= *(v25 + 16))
          {
            __break(1u);
            goto LABEL_61;
          }

          v35 = v103;
          (*(v14 + 16))(v19, v25 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v34++, v103);

          sub_26F49D978();
          v36 = MEMORY[0x27438E800](v19, v16);
          v37 = *(v14 + 8);
          v37(v16, v35);
          v37(v19, v35);
          if (v36)
          {
            v28 = v98;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v28 = sub_26F446268(0, *(v28 + 2) + 1, 1, v28);
            }

            v39 = *(v28 + 2);
            v38 = *(v28 + 3);
            v40 = v39 + 1;
            if (v39 >= v38 >> 1)
            {
              v29 = sub_26F446268((v38 > 1), v39 + 1, 1, v28);
              v28 = v29;
            }

            else
            {
              v29 = v28;
            }

            goto LABEL_7;
          }
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_26F446268(0, *(v92 + 2) + 1, 1, v92);
        }

        v28 = v98;
        v39 = *(v92 + 2);
        v41 = *(v92 + 3);
        v40 = v39 + 1;
        if (v39 < v41 >> 1)
        {
          v29 = v92;
        }

        else
        {
          v29 = sub_26F446268((v41 > 1), v39 + 1, 1, v92);
          v92 = v29;
        }

LABEL_7:
        *(v29 + 2) = v40;
        v30 = &v29[48 * v39];
        *(v30 + 4) = v102;
        *(v30 + 5) = v32;
        v27 = v97;
        *(v30 + 6) = v96;
        v30[56] = v95;
        *(v30 + 8) = v94;
        *(v30 + 9) = v93;
        v26 = v89;
        if (v27 != v91)
        {
          continue;
        }

        break;
      }

      v50 = v92;
    }

    else
    {

      v28 = MEMORY[0x277D84F90];
      v50 = MEMORY[0x277D84F90];
    }

    v51 = *(v28 + 2);
    v52 = MEMORY[0x277D84F90];
    if (v51)
    {
      v92 = v50;
      v104 = MEMORY[0x277D84F90];
      sub_26F4033A0(0, v51, 0);
      v53 = v104;
      v54 = v28 + 40;
      v55 = v85;
      do
      {

        sub_26F49D978();
        (*(v14 + 56))(v55, 0, 2, v103);
        v104 = v53;
        v57 = v53[2];
        v56 = v53[3];
        if (v57 >= v56 >> 1)
        {
          sub_26F4033A0((v56 > 1), v57 + 1, 1);
          v55 = v85;
          v53 = v104;
        }

        v53[2] = v57 + 1;
        sub_26F423EAC(v55, v53 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v57, type metadata accessor for LanguageOption);
        v54 += 48;
        --v51;
      }

      while (v51);
      v50 = v92;
      v52 = MEMORY[0x277D84F90];
      v58 = *(v92 + 2);
      if (v58)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v53 = MEMORY[0x277D84F90];
      v58 = *(v50 + 2);
      if (v58)
      {
LABEL_38:
        v98 = v28;
        v104 = v52;

        sub_26F4033A0(0, v58, 0);
        v59 = v104;
        v60 = (v14 + 56);
        v61 = v50 + 40;
        v62 = v86;
        do
        {

          sub_26F49D978();
          (*v60)(v62, 0, 2, v103);
          v104 = v59;
          v64 = *(v59 + 16);
          v63 = *(v59 + 24);
          if (v64 >= v63 >> 1)
          {
            sub_26F4033A0((v63 > 1), v64 + 1, 1);
            v62 = v86;
            v59 = v104;
          }

          *(v59 + 16) = v64 + 1;
          sub_26F423EAC(v62, v59 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v64, type metadata accessor for LanguageOption);
          v61 += 48;
          --v58;
        }

        while (v58);

        goto LABEL_45;
      }
    }

    v59 = MEMORY[0x277D84F90];
LABEL_45:
    v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
    v66 = v87;
    MEMORY[0x274390240]();
    v67 = sub_26F42E338(v66, v53);

    sub_26F3C03B0(v66);
    if ((v67 & 1) == 0)
    {
      MEMORY[0x274390240](v65);
      v68 = sub_26F42E338(v66, v59);
      sub_26F3C03B0(v66);
      if ((v68 & 1) == 0)
      {
        v69 = v83;
        MEMORY[0x274390240](v65);
        v70 = v84;
        sub_26F423EAC(v69, v84, type metadata accessor for LanguageOption);
        v71 = v53[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v104 = v53;
        if (!isUniquelyReferenced_nonNull_native || v71 >= v53[3] >> 1)
        {
          v104 = sub_26F446388(isUniquelyReferenced_nonNull_native, v71 + 1, 1, v53);
        }

        sub_26F42321C(0, 0, 1, v70);
      }
    }

    return;
  }

LABEL_53:
  v76 = *(v0 + *(v24 + 28));
  v77 = *(v76 + 16);
  if (v77)
  {
    v104 = MEMORY[0x277D84F90];
    sub_26F4033A0(0, v77, 0);
    v78 = v104;
    v79 = v76 + 40;
    do
    {

      sub_26F49D978();
      (*(v14 + 56))(v5, 0, 2, v103);
      v104 = v78;
      v81 = v78[2];
      v80 = v78[3];
      if (v81 >= v80 >> 1)
      {
        sub_26F4033A0((v80 > 1), v81 + 1, 1);
        v78 = v104;
      }

      v78[2] = v81 + 1;
      sub_26F423EAC(v5, v78 + ((*(v99 + 80) + 32) & ~*(v99 + 80)) + *(v99 + 72) * v81, type metadata accessor for LanguageOption);
      v79 += 48;
      --v77;
    }

    while (v77);
  }
}

uint64_t sub_26F421910@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_26F423E44(a1, v10, type metadata accessor for LanguageOption);
  if ((*(v5 + 48))(v10, 2, v4))
  {
    result = LanguageOption.title(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    v13 = sub_26F49D988();
    v15 = v14;
    (*(v5 + 8))(v7, v4);
    v12 = v15;
    result = v13;
  }

  *a2 = result;
  a2[1] = v12;
  return result;
}

uint64_t sub_26F421AAC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v48 = a1;
  v46 = a2;
  v4 = type metadata accessor for LIDOrLanguagePicker(0);
  v5 = *(v4 - 8);
  v47 = v4 - 8;
  v6 = v5;
  v45 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v8;
  v9 = type metadata accessor for LanguageOption(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = v11;
  v44 = v11;
  v13 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = type metadata accessor for LanguageOption;
  sub_26F423E44(a1, v13, type metadata accessor for LanguageOption);
  sub_26F423E44(v2, v8, type metadata accessor for LIDOrLanguagePicker);
  sub_26F49FBD8();
  v14 = sub_26F49FBC8();
  v15 = *(v10 + 80);
  v16 = (v15 + 32) & ~v15;
  v17 = *(v6 + 80);
  v18 = (v12 + v17 + v16) & ~v17;
  v43 = v15 | v17;
  v19 = v45;
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D85700];
  *(v20 + 16) = v14;
  *(v20 + 24) = v21;
  v22 = v20 + v16;
  v23 = v42;
  sub_26F423EAC(v13, v22, v42);
  v24 = v20 + v18;
  v25 = v41;
  sub_26F423EAC(v41, v24, type metadata accessor for LIDOrLanguagePicker);
  sub_26F423E44(v49, v25, type metadata accessor for LIDOrLanguagePicker);
  sub_26F423E44(v48, v13, v23);
  v26 = sub_26F49FBC8();
  v27 = (v17 + 32) & ~v17;
  v28 = swift_allocObject();
  *(v28 + 16) = v26;
  *(v28 + 24) = MEMORY[0x277D85700];
  sub_26F423EAC(v25, v28 + v27, type metadata accessor for LIDOrLanguagePicker);
  sub_26F423EAC(v13, v28 + ((v19 + v15 + v27) & ~v15), v23);
  sub_26F49F478();
  v29 = v50;
  v30 = v51;
  LOBYTE(v25) = v52;
  v31 = v48;
  v32 = LanguageOption.title(_:)(0);
  v34 = v33;
  v35 = LanguageOption.subtitle(opposite:)(v49 + *(v47 + 32));
  v37 = v36;
  LOBYTE(v31) = sub_26F422210(v31);
  KeyPath = swift_getKeyPath();
  result = swift_allocObject();
  *(result + 16) = (v31 & 1) == 0;
  v40 = v46;
  *v46 = v29;
  v40[1] = v30;
  *(v40 + 16) = v25;
  v40[3] = v32;
  v40[4] = v34;
  v40[5] = v35;
  v40[6] = v37;
  v40[7] = KeyPath;
  v40[8] = sub_26F3E2D78;
  v40[9] = result;
  return result;
}

uint64_t sub_26F421E2C@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF358, &qword_26F4A3E78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  MEMORY[0x274390240](v9);
  v10 = sub_26F4203EC();
  v11 = LanguageOption.title(_:)(v10);
  v13 = v12;
  sub_26F3C03B0(v4);
  v16[0] = v11;
  v16[1] = v13;
  sub_26F3BDC0C();
  sub_26F49F328();
  sub_26F3B18CC(&qword_280F65720, &qword_2806DF358, &qword_26F4A3E78, MEMORY[0x277CDEFF0]);
  sub_26F3E900C();
  sub_26F49EF38();
  (*(v6 + 8))(v8, v5);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC40, &qword_26F4A5408);
  v15 = (a1 + *(result + 36));
  *v15 = sub_26F3E9060;
  v15[1] = 0;
  return result;
}

uint64_t sub_26F422054@<X0>(uint64_t a1@<X2>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  MEMORY[0x274390240](v7);
  LOBYTE(a1) = _s13TranslationUI14LanguageOptionO2eeoiySbAC_ACtFZ_0(a1, v6);
  result = sub_26F3C03B0(v6);
  *a2 = a1 & 1;
  return result;
}

void sub_26F422108(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v13 - v11;
  if (*a1 == 1)
  {
    sub_26F423E44(a5, &v13 - v11, type metadata accessor for LanguageOption);
    sub_26F423E44(v12, v9, type metadata accessor for LanguageOption);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
    sub_26F49F458();
    sub_26F3C03B0(v12);
  }
}

uint64_t sub_26F422210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v2 - 8);
  v76 = &v68 - v3;
  v4 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_26F49DAB8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v68 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v68 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v68 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  sub_26F423E44(a1, v6, type metadata accessor for LanguageOption);
  v20 = v8[6];
  if (v20(v6, 2, v7))
  {
    sub_26F3C03B0(v6);
    if (qword_280F66AD0 != -1)
    {
      swift_once();
    }

    v21 = sub_26F49DCA8();
    __swift_project_value_buffer(v21, qword_280F67E98);
    v22 = sub_26F49DC88();
    v23 = sub_26F49FDD8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26F39E000, v22, v23, "LanguageOption does not contain a locale", v24, 2u);
      MEMORY[0x274391F70](v24, -1, -1);
    }

    goto LABEL_28;
  }

  v73 = v10;
  v71 = a1;
  v25 = v8[4];
  v25(v16, v6, v7);
  v25(v19, v16, v7);
  v74 = v8;
  v26 = v8[2];
  v72 = v13;
  v26(v13, v19, v7);
  v27 = type metadata accessor for LIDOrLanguagePicker(0);
  v28 = v76;
  sub_26F3B8DD4(v75 + *(v27 + 24), v76, &qword_2806DEFD8, &qword_26F4A3670);
  if (v20(v28, 1, v7) == 1)
  {
    v29 = v73;
    v26(v73, v19, v7);
    v30 = v19;
    if (v20(v76, 1, v7) != 1)
    {
      sub_26F3B6B4C(v76, &qword_2806DEFD8, &qword_26F4A3670);
    }
  }

  else
  {
    v31 = v73;
    v25(v73, v76, v7);
    v29 = v31;
    v30 = v19;
  }

  v32 = objc_allocWithZone(MEMORY[0x277CE1B38]);
  v33 = v72;
  v34 = sub_26F49D9F8();
  v35 = sub_26F49D9F8();
  v36 = [v32 initWithSourceLocale:v34 targetLocale:v35];

  v37 = v74 + 1;
  v38 = v74[1];
  v38(v29, v7);
  v38(v33, v7);
  v39 = [v36 isVariantPair];
  if ((v39 & 1) != 0 || (v74 = v37, v40 = v7, v76 = v27, v41 = v75, MEMORY[0x28223BE20](v39), *(&v68 - 2) = v71, sub_26F4006DC(sub_26F4240C4, v42, &v77), (v43 = v78) == 0))
  {
    v38(v30, v7);

    goto LABEL_28;
  }

  v44 = v79;
  v45 = v80;
  v71 = v81;
  v72 = v36;
  v69 = v77;
  v70 = v82;
  _sSo14NSUserDefaultsC13TranslationUIE016translationGroupB0ABvgZ_0();
  v47 = v46;
  v48 = sub_26F49F898();
  v49 = [v47 BOOLForKey_];

  v50 = [objc_opt_self() sharedConnection];
  v73 = v40;
  if (!v50)
  {

    v55 = v43;
    v54 = v44;
    sub_26F4240E4(v69, v55, v44, v45, v71, v70);
    if (!v49)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v51 = v50;
  v52 = [v50 isOnDeviceOnlyTranslationForced];

  v53 = v43;
  v54 = v44;
  sub_26F4240E4(v69, v53, v44, v45, v71, v70);
  if ((v52 | v49))
  {
LABEL_19:
    if ((v45 & (v54 == 0)) != 0)
    {
      goto LABEL_20;
    }

    v38(v30, v73);

LABEL_28:
    v66 = 0;
    return v66 & 1;
  }

LABEL_20:
  v56 = *(v41 + *(v76 + 32));
  v57 = v30;
  v58 = v72;
  if (v56 == 1)
  {
    v59 = sub_26F49D9F8();
    v60 = [v59 languageIdentifier];

    if (!v60)
    {
      sub_26F49F8C8();
      v60 = sub_26F49F898();
    }

    v61 = [objc_opt_self() baseLanguageFromLanguage_];

    v62 = sub_26F49F8C8();
    v64 = v63;

    if (qword_280F66B48 != -1)
    {
      swift_once();
    }

    v65 = qword_280F67EB0;

    v66 = sub_26F47A700(v62, v64, v65);

    v38(v57, v73);
  }

  else
  {
    v38(v30, v73);

    v66 = 1;
  }

  return v66 & 1;
}

uint64_t sub_26F4229AC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_26F49DAB8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0550, &unk_26F4A75B0);
  MEMORY[0x28223BE20](v36);
  v37 = &v32 - v6;
  v7 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v10 - 8);
  v34 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v32 - v16;

  sub_26F49D978();
  v18 = *(v4 + 56);
  v18(v17, 0, 1, v3);
  sub_26F423E44(a2, v9, type metadata accessor for LanguageOption);
  v19 = *(v4 + 48);
  v20 = v19(v9, 2, v3);
  v35 = v4;
  if (v20)
  {
    sub_26F3C03B0(v9);
    v21 = 1;
  }

  else
  {
    (*(v4 + 32))(v14, v9, v3);
    v21 = 0;
  }

  v18(v14, v21, 1, v3);
  v22 = *(v36 + 48);
  v23 = v37;
  sub_26F3B8DD4(v17, v37, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B8DD4(v14, v23 + v22, &qword_2806DEFD8, &qword_26F4A3670);
  if (v19(v23, 1, v3) != 1)
  {
    v25 = v34;
    sub_26F3B8DD4(v23, v34, &qword_2806DEFD8, &qword_26F4A3670);
    if (v19((v23 + v22), 1, v3) != 1)
    {
      v26 = v23;
      v27 = v35;
      v28 = v33;
      (*(v35 + 32))(v33, v26 + v22, v3);
      sub_26F423AA8();
      v29 = v25;
      v24 = sub_26F49F868();
      v30 = *(v27 + 8);
      v30(v28, v3);
      sub_26F3B6B4C(v14, &qword_2806DEFD8, &qword_26F4A3670);
      sub_26F3B6B4C(v17, &qword_2806DEFD8, &qword_26F4A3670);
      v30(v29, v3);
      sub_26F3B6B4C(v37, &qword_2806DEFD8, &qword_26F4A3670);
      return v24 & 1;
    }

    sub_26F3B6B4C(v14, &qword_2806DEFD8, &qword_26F4A3670);
    sub_26F3B6B4C(v17, &qword_2806DEFD8, &qword_26F4A3670);
    (*(v35 + 8))(v25, v3);
    goto LABEL_9;
  }

  sub_26F3B6B4C(v14, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B6B4C(v17, &qword_2806DEFD8, &qword_26F4A3670);
  if (v19((v23 + v22), 1, v3) != 1)
  {
LABEL_9:
    sub_26F3B6B4C(v23, &qword_2806E0550, &unk_26F4A75B0);
    v24 = 0;
    return v24 & 1;
  }

  sub_26F3B6B4C(v23, &qword_2806DEFD8, &qword_26F4A3670);
  v24 = 1;
  return v24 & 1;
}

uint64_t sub_26F422EA4@<X0>(uint64_t a1@<X8>)
{
  v10 = a1;
  v11 = sub_26F49F628();
  v2 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0518, &unk_26F4A7490);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  v13 = v1;
  v12 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DFC40, &qword_26F4A5408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0520, &unk_26F4A74A0);
  sub_26F3E8EFC();
  sub_26F3B18CC(&qword_2806E0528, &qword_2806E0520, &unk_26F4A74A0, MEMORY[0x277CE14C0]);
  sub_26F49EDC8();
  sub_26F49F618();
  sub_26F3B18CC(&qword_2806E0530, &qword_2806E0518, &unk_26F4A7490, MEMORY[0x277CDE5B0]);
  sub_26F49F1A8();
  (*(v2 + 8))(v4, v11);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_26F423120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_26F423A54();

  return MEMORY[0x282130D40](a1, a2, a3, a4, v8);
}

uint64_t (*EnvironmentValues.languageLabelContext.modify(void *a1))()
{
  a1[2] = v1;
  a1[3] = sub_26F3EA5CC();
  sub_26F49E688();
  return sub_26F4231E4;
}

unint64_t sub_26F42321C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for LanguageOption(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }

LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

LABEL_15:
  if (a3 < 1)
  {
    return sub_26F3B6B4C(a4, &qword_2806E0598, &qword_26F4A7648);
  }

  if (v17 < 1)
  {
    return sub_26F3B6B4C(a4, &qword_2806E0598, &qword_26F4A7648);
  }

  result = sub_26F423E44(a4, v15, type metadata accessor for LanguageOption);
  if (v12 >= v17)
  {
    return sub_26F3B6B4C(a4, &qword_2806E0598, &qword_26F4A7648);
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t _s13TranslationUI19LIDOrLanguagePickerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_26F49DAB8();
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEFD8, &qword_26F4A3670);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0550, &unk_26F4A75B0);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - v10;
  v12 = type metadata accessor for LanguageOption(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050);
  MEMORY[0x274390240]();
  MEMORY[0x274390240](v18);
  v19 = _s13TranslationUI14LanguageOptionO2eeoiySbAC_ACtFZ_0(v17, v14);
  sub_26F3C03B0(v14);
  sub_26F3C03B0(v17);
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

  v20 = type metadata accessor for LIDOrLanguagePicker(0);
  v21 = v20[5];
  v22 = *(a1 + v21);
  v23 = *(a2 + v21);
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_13;
    }

    v24 = sub_26F42DB78(v22, v23);

    if ((v24 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (v23)
  {
    goto LABEL_13;
  }

  v25 = v20[6];
  v26 = *(v9 + 48);
  sub_26F3B8DD4(a1 + v25, v11, &qword_2806DEFD8, &qword_26F4A3670);
  sub_26F3B8DD4(a2 + v25, &v11[v26], &qword_2806DEFD8, &qword_26F4A3670);
  v27 = v36;
  v28 = *(v36 + 48);
  if (v28(v11, 1, v4) == 1)
  {
    if (v28(&v11[v26], 1, v4) == 1)
    {
      sub_26F3B6B4C(v11, &qword_2806DEFD8, &qword_26F4A3670);
LABEL_16:
      v29 = sub_26F42DD8C(*(a1 + v20[7]), *(a2 + v20[7]));
      return v29 & 1;
    }

    goto LABEL_12;
  }

  sub_26F3B8DD4(v11, v8, &qword_2806DEFD8, &qword_26F4A3670);
  if (v28(&v11[v26], 1, v4) == 1)
  {
    (*(v27 + 8))(v8, v4);
LABEL_12:
    sub_26F3B6B4C(v11, &qword_2806E0550, &unk_26F4A75B0);
    goto LABEL_13;
  }

  v31 = &v11[v26];
  v32 = v35;
  (*(v27 + 32))(v35, v31, v4);
  sub_26F423AA8();
  v33 = sub_26F49F868();
  v34 = *(v27 + 8);
  v34(v32, v4);
  v34(v8, v4);
  sub_26F3B6B4C(v11, &qword_2806DEFD8, &qword_26F4A3670);
  if (v33)
  {
    goto LABEL_16;
  }

LABEL_13:
  v29 = 0;
  return v29 & 1;
}

uint64_t type metadata accessor for LIDOrLanguagePicker(uint64_t a1)
{
  result = qword_2806E0538;
  if (!qword_2806E0538)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_26F423864(uint64_t a1)
{
  sub_26F4239E0(319, &qword_2806DEDC8, type metadata accessor for LanguageOption, MEMORY[0x277CE11F8]);
  if (v1 <= 0x3F)
  {
    sub_26F3C0298(319);
    if (v2 <= 0x3F)
    {
      sub_26F4239E0(319, &qword_280F66C80, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_26F3EA0A0(319, &qword_280F656F8, &type metadata for LanguageModel, MEMORY[0x277D83940]);
        if (v4 <= 0x3F)
        {
          sub_26F3EA0A0(319, &qword_280F65768, &type metadata for DisplayNameContext, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_26F4239E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_26F423A54()
{
  result = qword_2806E0548;
  if (!qword_2806E0548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0548);
  }

  return result;
}

unint64_t sub_26F423AA8()
{
  result = qword_2806E07F0[0];
  if (!qword_2806E07F0[0])
  {
    sub_26F49DAB8();
    result = swift_getWitnessTable();
    atomic_store(result, qword_2806E07F0);
  }

  return result;
}

unint64_t sub_26F423B00()
{
  result = qword_2806E0578;
  if (!qword_2806E0578)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2806E0568, &qword_26F4A75F8);
    sub_26F3B18CC(&qword_2806E0580, &qword_2806E0588, &unk_26F4A7600, MEMORY[0x277CDD870]);
    sub_26F3B18CC(&qword_280F65728, &qword_2806DFA50, &qword_26F4A50D0, MEMORY[0x277CE08A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2806E0578);
  }

  return result;
}

uint64_t objectdestroyTm_9()
{
  v1 = type metadata accessor for LIDOrLanguagePicker(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DEDA0, &qword_26F4A3050) + 32);
  v4 = sub_26F49DAB8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 48);
  if (!v6(v2 + v3, 2, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  v7 = *(v1 + 24);
  if (!v6(v2 + v7, 1, v4))
  {
    (*(v5 + 8))(v2 + v7, v4);
  }

  sub_26F3E1E08(*(v2 + *(v1 + 36)), *(v2 + *(v1 + 36) + 8));

  return swift_deallocObject();
}

__n128 sub_26F423DB0@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for LIDOrLanguagePicker(0);
  sub_26F421AAC(a1, v6);
  v4 = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = v4;
  *(a2 + 64) = v6[4];
  result = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_26F423E44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F423EAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_26F423F14@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(type metadata accessor for LanguageOption(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  type metadata accessor for LIDOrLanguagePicker(0);

  return sub_26F422054(v1 + v4, a1);
}

void sub_26F423FEC(_BYTE *a1)
{
  v3 = *(type metadata accessor for LIDOrLanguagePicker(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(type metadata accessor for LanguageOption(0) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v4 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  sub_26F422108(a1, v7, v8, v1 + v4, v9);
}

void sub_26F4240E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a2)
  {
  }
}

uint64_t Locale.ltLanguageCode.getter()
{
  v0 = sub_26F49DA98();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806DF918, &qword_26F4A5810);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v11 - v5;
  sub_26F49DAA8();
  sub_26F49DA58();
  (*(v1 + 8))(v3, v0);
  v7 = sub_26F49D9B8();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_26F3EB7AC(v6);
    return 0;
  }

  else
  {
    v10 = sub_26F49D998();
    (*(v8 + 8))(v6, v7);
    return v10;
  }
}

void Locale.ltDefaultTarget(for:availableLocales:map:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_26F49D9F8();
  v5 = sub_26F49D9F8();
  sub_26F49DAB8();
  v6 = sub_26F49FAD8();
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E05A0, &qword_26F4A7650);
    a3 = sub_26F49F7E8();
  }

  v7 = [objc_opt_self() lt:v4 defaultTargetForSource:v5 systemLocale:v6 availableLocales:a3 targetMap:?];

  sub_26F49DA18();
}

uint64_t static Locale.ensureSupported(locale:availableLocales:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2806E0168, &qword_26F4A66A0);
  v6 = sub_26F49DAB8();
  v15 = *(v6 - 8);
  v7 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26F4A3150;
  (*(v15 + 16))(v8 + v7, a1, v6);
  v9 = sub_26F49FAD8();

  v10 = sub_26F49FAD8();
  v11 = [v5 lt:v9 bestMatchForPreferredLocales:v10 fromSupportedLocales:?];

  if (v11)
  {
    sub_26F49DA18();

    v12 = 0;
  }

  else
  {
    v12 = 1;
  }

  v13 = *(v15 + 56);

  return v13(a3, v12, 1, v6);
}

void static Locale.fallback(for:)()
{
  v0 = objc_opt_self();
  v1 = sub_26F49D9F8();
  v2 = [v0 lt:v1 fallbackForLocale:?];

  sub_26F49DA18();
}