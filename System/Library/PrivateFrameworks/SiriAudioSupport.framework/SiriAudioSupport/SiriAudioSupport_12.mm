uint64_t sub_2663CAC94(uint64_t a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);

  v7 = sub_2664DFE18();
  v8 = sub_2664E06D8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315138;
    v15[15] = *(a1 + 48);
    v11 = PlaybackItem.Scheme.rawValue.getter();
    v13 = sub_2662A320C(v11, v12, &v16);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26629C000, v7, v8, "RemotePlaybackHandler#collectionID No collection matched for collection %s. Returning nil", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266784AD0](v10, -1, -1);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return 0;
}

uint64_t sub_2663CAF00(char *a1, uint64_t a2, void *a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, _OWORD *, uint64_t, uint64_t))
{
  v10 = *v8;
  v11 = *(a2 + 48);
  v12 = *(a2 + 49);
  v13 = *(a2 + 16);
  v18[0] = *a2;
  v18[1] = v13;
  v18[2] = *(a2 + 32);
  if (v11)
  {
    v19 = v11;
    v20 = v12;

    sub_2663CB528(a1, v18, a3, v10, a4, a5);
  }

  else
  {
    v19 = 0;
    v20 = v12;
    return (a8)(a1, v18, a3, a4, a5, a6, a7);
  }
}

uint64_t sub_2663CAFC4(void *a1, uint64_t a2, void *a3, void (*a4)(void **, __n128), uint64_t a5)
{
  v51 = a2;
  v52 = a5;
  v49 = a3;
  v50 = a4;
  v48 = sub_2664DFE08();
  v7 = *(v48 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v48);
  v47 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v43 - v10;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[4];
  v46 = a1[3];
  v44 = v16;
  v45 = a1[5];
  v17 = __swift_project_boxed_opaque_existential_1((v5 + 104), *(v5 + 128));
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v18, v12);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06B8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v17;
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "PlaybackStarter#play Sending early completion to mark start playback request", v22, 2u);
    v23 = v22;
    v17 = v21;
    MEMORY[0x266784AD0](v23, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v24 = qword_280F91D48;
  v25 = v11;
  sub_2664DFDE8();
  v26 = sub_2664E0848();
  sub_2664DFDC8(v26, &dword_26629C000, v24, "playbackStarterPlayWaitOnSend", 29, 2, v11, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v43 = "playbackQueueLocation";
  v27 = v47;
  v28 = v11;
  v29 = v48;
  (*(v7 + 16))(v47, v28, v48);
  sub_26637C7BC(v17, v53);
  v30 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v31 = (v8 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (v31 + 87) & 0xFFFFFFFFFFFFFFF8;
  v33 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
  v34 = swift_allocObject();
  (*(v7 + 32))(v34 + v30, v27, v29);
  v35 = (v34 + v31);
  v36 = v53[3];
  v35[2] = v53[2];
  v35[3] = v36;
  v35[4] = v53[4];
  v37 = v53[1];
  *v35 = v53[0];
  v35[1] = v37;
  v38 = v45;
  *(v34 + v32) = v46;
  v39 = (v34 + v33);
  *v39 = v44;
  v39[1] = v38;
  v40 = v49;
  *(v34 + ((v33 + 23) & 0xFFFFFFFFFFFFFFF8)) = v49;

  v41 = v40;

  sub_2663F4978(0xD00000000000001FLL, v43 | 0x8000000000000000, v41, v50, v52, v51, sub_2663CB454, v34);

  return (*(v7 + 8))(v25, v29);
}

uint64_t sub_2663CB454(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_2664DFE08() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 87) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v2 + v8);
  v11 = *(v2 + v9);
  v12 = *(v2 + v9 + 8);
  v13 = *(v2 + ((v9 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_2663C1394(a1, a2, v2 + v6, v2 + v7, v10, v11, v12, v13);
}

uint64_t sub_2663CB528(char *a1, uint64_t a2, void *a3, void *a4, char *a5, uint64_t a6)
{
  v40 = a3;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v41 = a5;
  v42 = a6;
  *(v15 + 16) = a5;
  *(v15 + 24) = a6;
  v16 = *(a2 + 16);
  v46 = *a2;
  v47 = v16;
  *v48 = *(a2 + 32);
  *&v48[15] = *(a2 + 47);
  v17 = qword_280F914E8;

  if (v17 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v14, v18, v11);
  sub_2662D2A64(&v46, &v43);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();
  sub_2662D2B88(&v46);
  if (os_log_type_enabled(v19, v20))
  {
    v38 = a4;
    v39 = a1;
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *&v43 = v22;
    *v21 = 136315138;
    v23 = 0xE300000000000000;
    v24 = 7827310;
    v25 = 0xE500000000000000;
    v26 = 0x726574616CLL;
    v27 = 0xE700000000000000;
    v28 = 0x6E776F6E6B6E75;
    if (v48[16] != 3)
    {
      v28 = 0x726F707075736E75;
      v27 = 0xEB00000000646574;
    }

    if (v48[16] != 2)
    {
      v26 = v28;
      v25 = v27;
    }

    if (v48[16])
    {
      v24 = 1954047342;
      v23 = 0xE400000000000000;
    }

    if (v48[16] <= 1u)
    {
      v29 = v24;
    }

    else
    {
      v29 = v26;
    }

    if (v48[16] <= 1u)
    {
      v30 = v23;
    }

    else
    {
      v30 = v25;
    }

    v31 = sub_2662A320C(v29, v30, &v43);

    *(v21 + 4) = v31;
    _os_log_impl(&dword_26629C000, v19, v20, "RemotePlaybackHandler#handlePlaybackQueueLocation Attempting to set queue location for %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    MEMORY[0x266784AD0](v22, -1, -1);
    MEMORY[0x266784AD0](v21, -1, -1);

    (*(v12 + 8))(v14, v11);
    a1 = v39;
    a4 = v38;
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  if (sub_2664C8564(a1))
  {
    v43 = v46;
    v44 = v47;
    *v45 = *v48;
    *&v45[15] = *&v48[15];
    v32 = swift_allocObject();
    *(v32 + 16) = sub_2662F0CB0;
    *(v32 + 24) = v15;

    sub_2664C604C(a4 + 7, a1, &v43, 2, sub_2663CB96C, v32);
  }

  else
  {
    v33 = __swift_project_boxed_opaque_existential_1(a4 + 18, a4[21]);
    v43 = v46;
    v44 = v47;
    *v45 = *v48;
    *&v45[15] = *&v48[15];
    v34 = sub_2663C745C(a1, a4);
    v35 = v42;

    sub_2662F0024(a1, &v43, v34, v40, v33, v41, v35);
  }
}

uint64_t sub_2663CB97C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
  }

  else
  {
  }
}

unint64_t sub_2663CB9A0()
{
  result = qword_280072C48;
  if (!qword_280072C48)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280072C48);
  }

  return result;
}

SiriAudioSupport::NoticeEntity_optional __swiftcall NoticeEntity.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_2664E0CB8();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t NoticeEntity.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x6575516F54646461;
    v7 = 0x657469726F766166;
    if (v1 != 2)
    {
      v7 = 0x69726F7661666E75;
    }

    if (*v0)
    {
      v6 = 0x506F546465646461;
    }

    if (*v0 <= 1u)
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
    v2 = 0x7473614C79616C70;
    v3 = 0x6574664179616C70;
    if (v1 != 7)
    {
      v3 = 0x4C74736567677573;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x417972617262696CLL;
    if (v1 != 4)
    {
      v4 = 0x7478654E79616C70;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_2663CBC18()
{
  result = qword_280073368;
  if (!qword_280073368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073368);
  }

  return result;
}

uint64_t sub_2663CBC6C()
{
  v1 = *v0;
  sub_2664E0E68();
  sub_2664655F4(v3, v1);
  return sub_2664E0EB8();
}

uint64_t sub_2663CBCBC(uint64_t a1)
{
  v2 = *v1;
  sub_2664E0E68();
  sub_2664655F4(v4, v2);
  return sub_2664E0EB8();
}

uint64_t sub_2663CBD0C@<X0>(uint64_t *a1@<X8>)
{
  result = NoticeEntity.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2663CBD38()
{
  result = qword_280073370;
  if (!qword_280073370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073370);
  }

  return result;
}

unint64_t sub_2663CBD90()
{
  result = qword_280073378;
  if (!qword_280073378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073378);
  }

  return result;
}

unint64_t sub_2663CBDE8()
{
  result = qword_280073380;
  if (!qword_280073380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073380);
  }

  return result;
}

unint64_t sub_2663CBE40()
{
  result = qword_280073388;
  if (!qword_280073388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073388);
  }

  return result;
}

unint64_t sub_2663CBEC4()
{
  result = qword_280073390;
  if (!qword_280073390)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280073398, &qword_2664EA700);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280073390);
  }

  return result;
}

unint64_t sub_2663CBF38()
{
  result = qword_2800733A0;
  if (!qword_2800733A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800733A0);
  }

  return result;
}

unint64_t sub_2663CBF90()
{
  result = qword_2800733A8;
  if (!qword_2800733A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800733A8);
  }

  return result;
}

uint64_t sub_2663CBFE4(uint64_t a1)
{
  v2 = sub_2663CC1C0();

  return MEMORY[0x28213DAB0](a1, v2);
}

unint64_t sub_2663CC024()
{
  result = qword_2800733B0;
  if (!qword_2800733B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800733B0);
  }

  return result;
}

uint64_t sub_2663CC078(uint64_t a1)
{
  v2 = sub_2663CC1C0();

  return MEMORY[0x28213DAD0](a1, v2);
}

uint64_t sub_2663CC0B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2663CBD90();

  return MEMORY[0x28213DDE8](a1, a2, v4);
}

uint64_t sub_2663CC100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_2663CC1C0();

  return MEMORY[0x28213DAC0](a1, a2, a3, v6);
}

uint64_t sub_2663CC164(uint64_t a1, uint64_t a2)
{
  v4 = sub_2663CBD90();

  return MEMORY[0x28213DE00](a1, a2, v4);
}

unint64_t sub_2663CC1C0()
{
  result = qword_2800733B8;
  if (!qword_2800733B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2800733B8);
  }

  return result;
}

uint64_t STCAuditProvider.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2663CC260()
{
  v0 = sub_2664E0788();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2664E00B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664E0088();
  v10[1] = 0;
  sub_2662A3CE8(&qword_280F8F5D0, MEMORY[0x277D85230], MEMORY[0x277D85240]);
  sub_2664E0F48();
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000026, 0x80000002664F7490, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280F90B10 = v8;
  return result;
}

uint64_t STCAuditProvider.init()()
{
  result = v0;
  *(v0 + 16) = MEMORY[0x277D84F90];
  return result;
}

uint64_t sub_2663CC454()
{
  v9 = MEMORY[0x277D84F90];
  if (qword_280F90B08 != -1)
  {
    swift_once();
  }

  v1 = qword_280F90B10;
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2663CCF20;
  *(v3 + 24) = v2;
  aBlock[4] = sub_2662AA56C;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662ABACC;
  aBlock[3] = &block_descriptor_9;
  v4 = _Block_copy(aBlock);

  dispatch_sync(v1, v4);
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

uint64_t sub_2663CC5F0(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  *a1 = *(a2 + 16);
}

uint64_t sub_2663CC648()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26629C000, v7, v8, "STCAuditProvider#clearEvents...", v9, 2u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  if (qword_280F90B08 != -1)
  {
    swift_once();
  }

  v10 = qword_280F90B10;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_2663CCF28;
  *(v11 + 24) = v1;
  aBlock[4] = sub_2663CD054;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662ABACC;
  aBlock[3] = &block_descriptor_16;
  v12 = _Block_copy(aBlock);

  dispatch_sync(v10, v12);
  _Block_release(v12);
  LOBYTE(v10) = swift_isEscapingClosureAtFileLocation();

  if (v10)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2663CC92C@<X0>(char *a1@<X8>)
{
  v48 = a1;
  v1 = sub_2664DEA08();
  v56 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v51 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v47 - v5;
  MEMORY[0x28223BE20](v4);
  v8 = &v47 - v7;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v47 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2663CC454();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v14, v9);

  v15 = sub_2664DFE18();
  v16 = sub_2664E06C8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v57 = v53;
    *v17 = 136315138;
    v18 = MEMORY[0x2667834D0](v13, v1);
    v55 = v9;
    v20 = sub_2662A320C(v18, v19, &v57);
    v54 = v12;
    v21 = v10;
    v22 = v20;

    *(v17 + 4) = v22;
    _os_log_impl(&dword_26629C000, v15, v16, "STCAuditProvider#auditEvents: %s", v17, 0xCu);
    v23 = v53;
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v17, -1, -1);

    (*(v21 + 8))(v54, v55);
  }

  else
  {

    (*(v10 + 8))(v12, v9);
  }

  v24 = v13;
  v25 = *(v13 + 16);
  if (v25)
  {
    v26 = *(v56 + 16);
    v27 = (*(v56 + 80) + 32) & ~*(v56 + 80);
    v47 = v24;
    v28 = v24 + v27;
    v54 = *(v56 + 72);
    v29 = (v56 + 88);
    LODWORD(v53) = *MEMORY[0x277D5BC00];
    v30 = *MEMORY[0x277D5BC10];
    v31 = (v56 + 8);
    v56 += 16;
    v49 = (v56 + 16);
    v50 = v26;
    v52 = *MEMORY[0x277D5BB30];
    LODWORD(v55) = 5;
    do
    {
      v26(v8, v28, v1);
      v26(v6, v8, v1);
      v33 = *v29;
      v34 = (*v29)(v6, v1);
      if (v34 == v53 || v34 == v30 || v34 == v52)
      {
        v37 = v6;
        v38 = v51;
        (*v49)(v51, v8, v1);
        v39 = v33(v38, v1);
        if (v39 != v30)
        {
          (*v31)(v51, v1);
        }

        if (v55 > 2u)
        {
          if (v39 == v30)
          {
            v40 = 2;
          }

          else
          {
            v40 = 3;
          }

          if (v39 == v30)
          {
            v41 = 2;
          }

          else
          {
            v41 = 4;
          }

          if (v55 != 4)
          {
            v41 = v39 != v30;
          }

          v43 = v55 == 3;
        }

        else
        {
          if (v39 == v30)
          {
            v40 = 0;
          }

          else
          {
            v40 = 3;
          }

          if (v39 == v30)
          {
            v41 = 2;
          }

          else
          {
            v41 = 4;
          }

          if (v39 == v30)
          {
            v42 = 2;
          }

          else
          {
            v42 = 3;
          }

          if (v55 != 1)
          {
            v41 = v42;
          }

          v43 = v55 == 0;
        }

        if (v43)
        {
          v44 = v40;
        }

        else
        {
          v44 = v41;
        }

        LODWORD(v55) = v44;
        v6 = v37;
        v26 = v50;
      }

      else
      {
        v32 = *v31;
        (*v31)(v8, v1);
        v32(v6, v1);
      }

      v28 += v54;
      --v25;
    }

    while (v25);

    v46 = v55;
  }

  else
  {

    v46 = 5;
  }

  *v48 = v46;
  return result;
}

uint64_t STCAuditProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2663CCF28()
{
  swift_beginAccess();
  *(v0 + 16) = MEMORY[0x277D84F90];
}

uint64_t sub_2663CD060(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_2664E0E68();
  sub_2664E0368();
  v6 = sub_2664E0EB8();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_2664E0D88() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

BOOL sub_2663CD158(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_2664E0E68();
  sub_2664E0E98();
  v4 = sub_2664E0EB8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 4 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_2663CD224(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_2664E0E68();
  MEMORY[0x266783E90](a1);
  v4 = sub_2664E0EB8();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_2663CD2F0(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_2664E0E58();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_2663CD398()
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
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000017, 0x80000002664EA940, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_28007CCD0 = v8;
  return result;
}

uint64_t sub_2663CD530()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34E0;
  *(inited + 32) = sub_2664E02C8();
  *(inited + 40) = v1;
  *(inited + 48) = sub_2664E02C8();
  *(inited + 56) = v2;
  v3 = sub_26639EB98(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_28007CCD8 = v3;
  return result;
}

uint64_t sub_2663CD5E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, uint64_t a9, unsigned __int8 a10, void (*a11)(void, void))
{
  LODWORD(v194[0]) = a8;
  v187 = a3;
  v188 = a5;
  v186 = a1;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v177[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v17);
  v21 = &v177[-v20];
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  LODWORD(v190) = a10;
  v180 = a9;
  v22 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  v23 = *(v16 + 16);
  v184 = v22;
  v183 = v16 + 16;
  v182 = v23;
  v23(v21, v22, v15);

  v24 = sub_2664DFE18();
  v25 = sub_2664E06E8();

  v26 = os_log_type_enabled(v24, v25);
  v192 = v15;
  v193 = a6;
  v191 = v16;
  v185 = v19;
  v181 = a7;
  v189 = a4;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v197 = v179;
    *v27 = 136447490;
    v200[0] = v186;
    v200[1] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v178 = v25;
    v28 = a7;
    v29 = sub_2664E0318();
    v31 = sub_2662A320C(v29, v30, &v197);

    *(v27 + 4) = v31;
    *(v27 + 12) = 2082;
    v200[0] = v187;
    v200[1] = a4;

    v32 = sub_2664E0318();
    v34 = sub_2662A320C(v32, v33, &v197);

    *(v27 + 14) = v34;
    *(v27 + 22) = 2082;
    v200[0] = v188;
    v200[1] = a6;

    v35 = sub_2664E0318();
    v37 = sub_2662A320C(v35, v36, &v197);

    *(v27 + 24) = v37;
    *(v27 + 32) = 2082;
    v200[0] = v28;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
    v38 = sub_2664E0318();
    v40 = sub_2662A320C(v38, v39, &v197);

    *(v27 + 34) = v40;
    *(v27 + 42) = 2082;
    v41 = v194[0];
    LOBYTE(v200[0]) = v194[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
    v42 = sub_2664E0318();
    v44 = sub_2662A320C(v42, v43, &v197);

    *(v27 + 44) = v44;
    *(v27 + 52) = 2082;
    v45 = v180;
    v200[0] = v180;
    LOBYTE(v28) = v190;
    LOBYTE(v200[1]) = v190 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733C0, &unk_2664F04F0);
    v46 = sub_2664E0318();
    v48 = sub_2662A320C(v46, v47, &v197);

    *(v27 + 54) = v48;
    _os_log_impl(&dword_26629C000, v24, v178, "SpotlightSearchProvider#query Building spotlight query from params: mediaName: %{public}s, artistName:  %{public}s, albumName:  %{public}s, genreNames:  %{public}s, localOnly: %{public}s, mediaType: %{public}s", v27, 0x3Eu);
    v49 = v179;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v49, -1, -1);
    MEMORY[0x266784AD0](v27, -1, -1);

    (*(v191 + 8))(v21, v192);
    v50 = v28;
    v51 = v45;
  }

  else
  {

    (*(v16 + 8))(v21, v15);
    v41 = v194[0];
    v50 = v190;
    v51 = v180;
  }

  v52 = sub_2663D1794(v51, v50 & 1);
  v200[0] = 0xD000000000000018;
  v200[1] = 0x80000002664F7530;
  v197 = v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  v194[0] = sub_2662C1428(&qword_280F8F658, &qword_280072440, &qword_2664E3600, MEMORY[0x277D83958]);
  v54 = sub_2664E0288();
  v56 = v55;

  MEMORY[0x2667833B0](v54, v56);

  v57 = v200[0];
  v58 = v200[1];
  v59 = sub_2663846F4(0, 1, 1, MEMORY[0x277D84F90]);
  v61 = *(v59 + 2);
  v60 = *(v59 + 3);
  v62 = v61 + 1;
  if (v61 >= v60 >> 1)
  {
    v59 = sub_2663846F4((v60 > 1), v61 + 1, 1, v59);
  }

  *(v59 + 2) = v62;
  v63 = &v59[16 * v61];
  *(v63 + 4) = v57;
  *(v63 + 5) = v58;
  if (v41 != 2 && (v41 & 1) != 0)
  {
    v64 = *(v59 + 3);
    if ((v61 + 2) > (v64 >> 1))
    {
      v59 = sub_2663846F4((v64 > 1), v61 + 2, 1, v59);
    }

    *(v59 + 2) = v61 + 2;
    v65 = &v59[16 * v62];
    *(v65 + 4) = 0xD000000000000010;
    *(v65 + 5) = 0x80000002664F7590;
  }

  v66 = MEMORY[0x277D84F90];
  v190 = v53;
  if (!a2)
  {
    v82 = MEMORY[0x277D84F90];
    v90 = v193;
LABEL_21:
    v199 = v66;
    v92 = v189;
    if (!v189)
    {
      goto LABEL_28;
    }

    goto LABEL_25;
  }

  v200[0] = v186;
  v200[1] = a2;
  sub_2662D2EBC();
  v200[0] = sub_2664E09A8();
  v200[1] = v67;
  v197 = 92;
  v198 = 0xE100000000000000;
  v195 = 23644;
  v196 = 0xE200000000000000;
  v68 = sub_2664E0998();
  v70 = v69;

  v200[0] = v68;
  v200[1] = v70;
  v197 = 34;
  v198 = 0xE100000000000000;
  v195 = 8796;
  v196 = 0xE200000000000000;
  v71 = sub_2664E0998();
  v73 = v72;

  v200[0] = v71;
  v200[1] = v73;
  v197 = 39;
  v198 = 0xE100000000000000;
  v195 = 10076;
  v196 = 0xE200000000000000;
  v74 = sub_2664E0998();
  v76 = v75;

  v200[0] = v74;
  v200[1] = v76;
  v197 = 42;
  v198 = 0xE100000000000000;
  v195 = 10844;
  v196 = 0xE200000000000000;
  v77 = sub_2664E0998();
  v79 = v78;

  strcpy(v200, "kMDItemTitle=");
  HIBYTE(v200[1]) = -18;
  MEMORY[0x2667833B0](v77, v79);
  MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
  v80 = v200[0];
  v81 = v200[1];
  v82 = sub_2663846F4(0, 1, 1, MEMORY[0x277D84F90]);
  v84 = *(v82 + 2);
  v83 = *(v82 + 3);
  if (v84 >= v83 >> 1)
  {
    v82 = sub_2663846F4((v83 > 1), v84 + 1, 1, v82);
  }

  *(v82 + 2) = v84 + 1;
  v85 = &v82[16 * v84];
  *(v85 + 4) = v80;
  *(v85 + 5) = v81;
  v200[0] = 0xD000000000000017;
  v200[1] = 0x80000002664F7570;
  MEMORY[0x2667833B0](v77, v79);
  MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
  v86 = v200[0];
  v87 = v200[1];
  v89 = *(v82 + 2);
  v88 = *(v82 + 3);
  if (v89 >= v88 >> 1)
  {
    v82 = sub_2663846F4((v88 > 1), v89 + 1, 1, v82);
  }

  v90 = v193;
  *(v82 + 2) = v89 + 1;
  v91 = &v82[16 * v89];
  *(v91 + 4) = v86;
  *(v91 + 5) = v87;
  if (v90)
  {

    v66 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

  if (v189)
  {

    v199 = MEMORY[0x277D84F90];
    v92 = v189;
LABEL_25:
    v200[0] = v187;
    v200[1] = v92;
    sub_2662D2EBC();
    v200[0] = sub_2664E09A8();
    v200[1] = v93;
    v197 = 92;
    v198 = 0xE100000000000000;
    v195 = 23644;
    v196 = 0xE200000000000000;
    v94 = sub_2664E0998();
    v96 = v95;

    v200[0] = v94;
    v200[1] = v96;
    v197 = 34;
    v198 = 0xE100000000000000;
    v195 = 8796;
    v196 = 0xE200000000000000;
    v97 = sub_2664E0998();
    v99 = v98;

    v200[0] = v97;
    v200[1] = v99;
    v197 = 39;
    v198 = 0xE100000000000000;
    v195 = 10076;
    v196 = 0xE200000000000000;
    v100 = sub_2664E0998();
    v102 = v101;

    v200[0] = v100;
    v200[1] = v102;
    v197 = 42;
    v198 = 0xE100000000000000;
    v195 = 10844;
    v196 = 0xE200000000000000;
    v103 = sub_2664E0998();
    v105 = v104;

    v200[0] = 0x416D657449444D6BLL;
    v200[1] = 0xEF223D7473697472;
    MEMORY[0x2667833B0](v103, v105);

    MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
    v106 = v200[0];
    v107 = v200[1];
    v108 = sub_2663846F4(0, 1, 1, MEMORY[0x277D84F90]);
    v110 = *(v108 + 2);
    v109 = *(v108 + 3);
    if (v110 >= v109 >> 1)
    {
      v108 = sub_2663846F4((v109 > 1), v110 + 1, 1, v108);
    }

    *(v108 + 2) = v110 + 1;
    v111 = &v108[16 * v110];
    *(v111 + 4) = v106;
    *(v111 + 5) = v107;
    v199 = v108;
    v90 = v193;
    goto LABEL_28;
  }

  strcpy(v200, "kMDItemAlbum=");
  HIBYTE(v200[1]) = -18;
  MEMORY[0x2667833B0](v77, v79);
  MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
  v167 = v200[0];
  v168 = v200[1];
  v170 = *(v82 + 2);
  v169 = *(v82 + 3);
  if (v170 >= v169 >> 1)
  {
    v82 = sub_2663846F4((v169 > 1), v170 + 1, 1, v82);
  }

  *(v82 + 2) = v170 + 1;
  v171 = &v82[16 * v170];
  *(v171 + 4) = v167;
  *(v171 + 5) = v168;
  v200[0] = 0x416D657449444D6BLL;
  v200[1] = 0xEF223D7473697472;
  MEMORY[0x2667833B0](v77, v79);

  MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
  v172 = v200[0];
  v173 = v200[1];
  v175 = *(v82 + 2);
  v174 = *(v82 + 3);
  if (v175 >= v174 >> 1)
  {
    v82 = sub_2663846F4((v174 > 1), v175 + 1, 1, v82);
  }

  *(v82 + 2) = v175 + 1;
  v176 = &v82[16 * v175];
  *(v176 + 4) = v172;
  *(v176 + 5) = v173;
  v199 = MEMORY[0x277D84F90];
LABEL_28:
  v112 = v181;
  if (v181)
  {

    sub_2663D1704(v112, &v199);
  }

  if (v90)
  {
    v200[0] = v188;
    v200[1] = v90;
    sub_2662D2EBC();
    v200[0] = sub_2664E09A8();
    v200[1] = v113;
    v197 = 92;
    v198 = 0xE100000000000000;
    v195 = 23644;
    v196 = 0xE200000000000000;
    v114 = sub_2664E0998();
    v116 = v115;

    v200[0] = v114;
    v200[1] = v116;
    v197 = 34;
    v198 = 0xE100000000000000;
    v195 = 8796;
    v196 = 0xE200000000000000;
    v117 = sub_2664E0998();
    v119 = v118;

    v200[0] = v117;
    v200[1] = v119;
    v197 = 39;
    v198 = 0xE100000000000000;
    v195 = 10076;
    v196 = 0xE200000000000000;
    v120 = sub_2664E0998();
    v122 = v121;

    v200[0] = v120;
    v200[1] = v122;
    v197 = 42;
    v198 = 0xE100000000000000;
    v195 = 10844;
    v196 = 0xE200000000000000;
    v123 = sub_2664E0998();
    v125 = v124;

    strcpy(v200, "kMDItemAlbum=");
    HIBYTE(v200[1]) = -18;
    MEMORY[0x2667833B0](v123, v125);

    MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
    v126 = v200[0];
    v127 = v200[1];
    v128 = v199;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v128 = sub_2663846F4(0, *(v128 + 2) + 1, 1, v128);
    }

    v130 = *(v128 + 2);
    v129 = *(v128 + 3);
    if (v130 >= v129 >> 1)
    {
      v128 = sub_2663846F4((v129 > 1), v130 + 1, 1, v128);
    }

    *(v128 + 2) = v130 + 1;
    v131 = &v128[16 * v130];
    *(v131 + 4) = v126;
    *(v131 + 5) = v127;
    v199 = v128;
  }

  if (*(v59 + 2))
  {
    v200[0] = 40;
    v200[1] = 0xE100000000000000;
    v197 = v59;
    v132 = sub_2664E0288();
    v134 = v133;

    MEMORY[0x2667833B0](v132, v134);

    MEMORY[0x2667833B0](41, 0xE100000000000000);
    v135 = v200[0];
    v136 = v200[1];
    v137 = sub_2663846F4(0, 1, 1, MEMORY[0x277D84F90]);
    v139 = *(v137 + 2);
    v138 = *(v137 + 3);
    v140 = v192;
    if (v139 >= v138 >> 1)
    {
      v137 = sub_2663846F4((v138 > 1), v139 + 1, 1, v137);
    }

    *(v137 + 2) = v139 + 1;
    v141 = &v137[16 * v139];
    *(v141 + 4) = v135;
    *(v141 + 5) = v136;
  }

  else
  {

    v137 = MEMORY[0x277D84F90];
    v140 = v192;
  }

  if (*(v82 + 2))
  {
    v200[0] = 40;
    v200[1] = 0xE100000000000000;
    v197 = v82;
    v142 = sub_2664E0288();
    v144 = v143;

    MEMORY[0x2667833B0](v142, v144);

    MEMORY[0x2667833B0](41, 0xE100000000000000);
    v145 = v200[0];
    v146 = v200[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v137 = sub_2663846F4(0, *(v137 + 2) + 1, 1, v137);
    }

    v148 = *(v137 + 2);
    v147 = *(v137 + 3);
    if (v148 >= v147 >> 1)
    {
      v137 = sub_2663846F4((v147 > 1), v148 + 1, 1, v137);
    }

    *(v137 + 2) = v148 + 1;
    v149 = &v137[16 * v148];
    *(v149 + 4) = v145;
    *(v149 + 5) = v146;
  }

  else
  {
  }

  v194[0] = a11;
  if (*(v199 + 2))
  {
    v200[0] = 40;
    v200[1] = 0xE100000000000000;
    v197 = v199;

    v150 = sub_2664E0288();
    v152 = v151;

    MEMORY[0x2667833B0](v150, v152);

    MEMORY[0x2667833B0](41, 0xE100000000000000);
    v153 = v200[0];
    v154 = v200[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v137 = sub_2663846F4(0, *(v137 + 2) + 1, 1, v137);
    }

    v156 = *(v137 + 2);
    v155 = *(v137 + 3);
    if (v156 >= v155 >> 1)
    {
      v137 = sub_2663846F4((v155 > 1), v156 + 1, 1, v137);
    }

    *(v137 + 2) = v156 + 1;
    v157 = &v137[16 * v156];
    *(v157 + 4) = v153;
    *(v157 + 5) = v154;
  }

  v200[0] = v137;
  v158 = sub_2664E0288();
  v160 = v159;

  v161 = v185;
  v182(v185, v184, v140);

  v162 = sub_2664DFE18();
  v163 = sub_2664E06C8();

  if (os_log_type_enabled(v162, v163))
  {
    v164 = swift_slowAlloc();
    v165 = swift_slowAlloc();
    v200[0] = v165;
    *v164 = 136446210;
    *(v164 + 4) = sub_2662A320C(v158, v160, v200);
    _os_log_impl(&dword_26629C000, v162, v163, "SpotlightSearchProvider#query Spotlight query string: %{public}s", v164, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v165);
    MEMORY[0x266784AD0](v165, -1, -1);
    MEMORY[0x266784AD0](v164, -1, -1);
  }

  (*(v191 + 8))(v161, v140);
  (v194[0])(v158, v160);
}

uint64_t sub_2663CE964(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  sub_2663094CC();
  v3 = sub_2664E04A8();

  v2(v3);
}

void sub_2663CE9D8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2663CEA44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v28 = *v7;
  v29 = a1;
  v10 = sub_2664DFE08();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x28223BE20](v10);
  v14 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v27 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = a6;
  v18 = qword_280F91508;

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v11 + 16))(v14, v16, v10);
  v20 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v21 = (v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = "spotlightSearchProviderMatches";
  *(v22 + 24) = 30;
  *(v22 + 32) = 2;
  (*(v11 + 32))(v22 + v20, v14, v10);
  v23 = (v22 + v21);
  *v23 = sub_2662C0D0C;
  v23[1] = v17;

  v24 = sub_2664E0848();
  sub_2664DFDC8(v24, &dword_26629C000, v19, "spotlightSearchProviderMatches", 30, 2, v16, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  v25 = swift_allocObject();
  *(v25 + 16) = sub_2662C0D38;
  *(v25 + 24) = v22;

  sub_2663CED48(sub_2662C0DE0, v25, v31, v30, v29, v32, v28);

  return (*(v11 + 8))(v16, v10);
}

void sub_2663CED48(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, NSObject *a7)
{
  v63 = a7;
  v76 = a5;
  v77 = a6;
  v11 = sub_2664E0038();
  v75 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v73 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_2664E00B8();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_2664E0018();
  v67 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v66 = (&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = sub_2664E00E8();
  v70 = *(v78 - 8);
  v15 = MEMORY[0x28223BE20](v78);
  v65 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v69 = &v62 - v17;
  v18 = sub_2664DFE38();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v64 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v62 - v22;
  v24 = swift_allocObject();
  v62 = a1;
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  v25 = objc_allocWithZone(MEMORY[0x277CC34A0]);

  v26 = [v25 init];
  v27 = sub_2664E0488();
  [v26 setFetchAttributes_];

  [v26 setMaxCount_];
  if (a4)
  {
    v28 = sub_2664E0488();
  }

  else
  {
    v28 = 0;
  }

  [v26 setBundleIDs_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_2664E36F0;
  *(v29 + 32) = sub_2664E02C8();
  *(v29 + 40) = v30;
  v31 = sub_2664E0488();

  [v26 setProtectionClasses_];

  v32 = objc_allocWithZone(MEMORY[0x277CC3498]);
  v33 = v26;
  v34 = sub_2664E02A8();
  v35 = [v32 initWithQueryString:v34 context:v33];

  if (v35)
  {
    v77 = v11;
    v36 = swift_allocObject();
    *(v36 + 16) = MEMORY[0x277D84F90];
    v85 = sub_2663D1448;
    v86 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v82 = 1107296256;
    v83 = sub_2663CE964;
    v84 = &block_descriptor_29;
    v37 = _Block_copy(&aBlock);

    [v35 setFoundItemsHandler_];
    _Block_release(v37);
    v38 = swift_allocObject();
    v38[2] = v36;
    v38[3] = sub_2662C0CAC;
    v39 = v63;
    v38[4] = v24;
    v38[5] = v39;
    v85 = sub_2663D1450;
    v86 = v38;
    aBlock = MEMORY[0x277D85DD0];
    v82 = 1107296256;
    v83 = sub_2663CE9D8;
    v84 = &block_descriptor_24_0;
    v40 = _Block_copy(&aBlock);
    v76 = v36;

    [v35 setCompletionHandler_];
    _Block_release(v40);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v41 = __swift_project_value_buffer(v18, qword_280F914F0);
    swift_beginAccess();
    v42 = v64;
    (*(v19 + 16))(v64, v41, v18);
    v43 = v33;
    v44 = sub_2664DFE18();
    v45 = sub_2664E06E8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 67240192;
      *(v46 + 4) = [v43 qos];

      _os_log_impl(&dword_26629C000, v44, v45, "SpotlightSearchProvider#matches spotlight query(start) with qos:%{public}u", v46, 8u);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    else
    {

      v44 = v43;
    }

    v63 = v43;

    (*(v19 + 8))(v42, v18);
    [v35 start];
    if (qword_280071BD0 != -1)
    {
      swift_once();
    }

    v64 = qword_28007CCD0;
    v51 = v65;
    sub_2664E00C8();
    v52 = v66;
    *v66 = 250;
    v53 = v67;
    v54 = v68;
    (*(v67 + 104))(v52, *MEMORY[0x277D85178], v68);
    v55 = v69;
    MEMORY[0x266783140](v51, v52);
    (*(v53 + 8))(v52, v54);
    v70 = *(v70 + 8);
    (v70)(v51, v78);
    v56 = swift_allocObject();
    *(v56 + 16) = v35;
    v85 = sub_2663D145C;
    v86 = v56;
    aBlock = MEMORY[0x277D85DD0];
    v82 = 1107296256;
    v83 = sub_2662A3F90;
    v84 = &block_descriptor_30;
    v57 = _Block_copy(&aBlock);
    v58 = v35;
    v59 = v71;
    sub_2664E0068();
    v79 = MEMORY[0x277D84F90];
    sub_2662A6120();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
    sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
    v60 = v73;
    v61 = v77;
    sub_2664E0A08();
    MEMORY[0x2667837B0](v55, v59, v60, v57);
    _Block_release(v57);

    (*(v75 + 8))(v60, v61);
    (*(v72 + 8))(v59, v74);
    (v70)(v55, v78);
  }

  else
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v18, qword_280F914F0);
    swift_beginAccess();
    (*(v19 + 16))(v23, v47, v18);
    v48 = sub_2664DFE18();
    v49 = sub_2664E06D8();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_26629C000, v48, v49, "SpotlightSearchProvider#matches Unexpected empty query", v50, 2u);
      MEMORY[0x266784AD0](v50, -1, -1);
    }

    (*(v19 + 8))(v23, v18);
    v80[0] = MEMORY[0x277D84F90];
    v62(v80);
  }
}

uint64_t sub_2663CF888(unint64_t a1, uint64_t a2)
{
  v3 = sub_2664DFE38();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();

  sub_2662F9DA4(v7);
  swift_endAccess();
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v4 + 16))(v6, v8, v3);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134349056;
    if (a1 >> 62)
    {
      v12 = sub_2664E0A68();
    }

    else
    {
      v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v11 + 4) = v12;

    _os_log_impl(&dword_26629C000, v9, v10, "SpotlightSearchProvider#matches Spotlight found %{public}ld more items", v11, 0xCu);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  else
  {
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2663CFAC0(NSObject *a1, NSObject *a2, void (*a3)(uint64_t), uint64_t a4)
{
  v170 = a4;
  v171 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
  MEMORY[0x28223BE20](v6 - 8);
  v195 = &v170 - v7;
  v184 = type metadata accessor for SearchItem(0);
  v181 = *(v184 - 8);
  v8 = MEMORY[0x28223BE20](v184);
  v176 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v180 = &v170 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v179 = &v170 - v13;
  MEMORY[0x28223BE20](v12);
  v178 = (&v170 - v14);
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = (&v170 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17);
  v197 = (&v170 - v21);
  v22 = MEMORY[0x28223BE20](v20);
  v210 = (&v170 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v177 = (&v170 - v25);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = (&v170 - v27);
  MEMORY[0x28223BE20](v26);
  v30 = (&v170 - v29);
  if (qword_280F914E8 != -1)
  {
    goto LABEL_103;
  }

  while (1)
  {
    v31 = __swift_project_value_buffer(v15, qword_280F914F0);
    swift_beginAccess();
    v32 = v16;
    isa = v16[2].isa;
    v207 = v31;
    v206 = v16 + 2;
    v205 = isa;
    isa(v30, v31, v15);
    v34 = sub_2664DFE18();
    v35 = sub_2664E06B8();
    v36 = os_log_type_enabled(v34, v35);
    v200 = v19;
    if (v36)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v34, v35, "SpotlightSearchProvider#matches spotlight query(end)", v37, 2u);
      v38 = v37;
      v19 = v200;
      MEMORY[0x266784AD0](v38, -1, -1);
    }

    v16 = v32 + 1;
    v39 = v15;
    v208 = v32[1].isa;
    v208(v30, v15);
    v201 = v32 + 1;
    if (a1)
    {
      v205(v28, v207, v15);
      v40 = a1;
      v30 = v28;
      v41 = v15;
      v42 = sub_2664DFE18();
      v43 = sub_2664E06D8();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v213 = v45;
        *v44 = 136446210;
        swift_getErrorValue();
        v46 = sub_2664E0DE8();
        v48 = sub_2662A320C(v46, v47, &v213);

        *(v44 + 4) = v48;
        v30 = v201;
        _os_log_impl(&dword_26629C000, v42, v43, "SpotlightSearchProvider#matches error for search: %{public}s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v45);
        MEMORY[0x266784AD0](v45, -1, -1);
        v49 = v44;
        v16 = v30;
        MEMORY[0x266784AD0](v49, -1, -1);
      }

      else
      {
      }

      v208(v28, v41);
      v19 = v200;
      v39 = v41;
    }

    swift_beginAccess();
    v50 = a2[2].isa;
    if (v50 >> 62)
    {
      a2 = a2[2].isa;
      v51 = sub_2664E0A68();
      v50 = a2;
    }

    else
    {
      v51 = *((v50 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v28 = v210;
    if (!v51)
    {
      break;
    }

    v202 = v50 & 0xC000000000000001;
    v183 = v50 & 0xFFFFFFFFFFFFFF8;
    v182 = v50 + 32;
    v173 = *MEMORY[0x277CC20E0];
    v185 = v50;

    v15 = 0;
    v199 = 0;
    v204 = MEMORY[0x277D84F90];
    *&v52 = 138412290;
    v175 = v52;
    *&v52 = 136316162;
    v172 = v52;
    *&v52 = 136446210;
    v174 = v52;
    v198 = v51;
    v186 = v39;
    while (1)
    {
      if (v202)
      {
        v58 = MEMORY[0x266783B70](v15, v185);
      }

      else
      {
        if (v15 >= *(v183 + 16))
        {
          goto LABEL_102;
        }

        v58 = *&v182[8 * v15];
      }

      a2 = v58;
      if (__OFADD__(v15++, 1))
      {
        __break(1u);
        goto LABEL_101;
      }

      v212 = v15;
      v15 = [v58 attributeSet];
      v60 = [v15 uniqueIdentifier];
      if (!v60)
      {
        v68 = v51;
        v69 = v39;
        v205(v197, v207, v39);
        a1 = a2;
        a2 = sub_2664DFE18();
        v70 = sub_2664E06D8();

        if (os_log_type_enabled(a2, v70))
        {
          v53 = v16;
          v54 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          *v54 = v175;
          *(v54 + 4) = a1;
          *v55 = a1;
          v30 = a1;
          _os_log_impl(&dword_26629C000, a2, v70, "SpotlightSearchProvider#matches Spotlight result missing identifier: %@", v54, 0xCu);
          sub_2662E4324(v55);
          v56 = v55;
          v19 = v200;
          MEMORY[0x266784AD0](v56, -1, -1);
          v57 = v54;
          v16 = v53;
          MEMORY[0x266784AD0](v57, -1, -1);
          a1 = v15;
        }

        else
        {
          v30 = a2;
          a2 = v15;
        }

        v39 = v69;
        v208(v197, v69);
        v15 = v212;
        v51 = v68;
        v28 = v210;
        goto LABEL_15;
      }

      v211 = a2;
      v61 = v60;
      v203 = sub_2664E02C8();
      v209 = v62;

      v63 = [v15 mediaTypes];
      if (v63)
      {
        v64 = v63;
        v65 = sub_2664E04A8();

        v213 = 1735290739;
        v214 = 0xE400000000000000;
        MEMORY[0x28223BE20](v66);
        *(&v170 - 2) = &v213;
        a1 = v199;
        LOBYTE(v64) = sub_2662AA720(sub_2662AA7CC, (&v170 - 4), v65);
        v199 = a1;

        if (v64)
        {
          v67 = 0;
LABEL_46:
          v82 = v195;
          v83 = v179;
          v84 = [v15 artist];
          if (v84)
          {
            v85 = v84;
            v196 = sub_2664E02C8();
            v194 = v86;
          }

          else
          {
            v196 = 0;
            v194 = 0;
          }

          v87 = [v15 album];
          if (v87)
          {
            v88 = v87;
            v193 = sub_2664E02C8();
            v192 = v89;
          }

          else
          {
            v193 = 0;
            v192 = 0;
          }

          v90 = [v15 title];
          if (v90)
          {
            v91 = v90;
            v191 = sub_2664E02C8();
            v190 = v92;
          }

          else
          {
            v191 = 0;
            v190 = 0;
          }

          v93 = [v211 bundleID];
          if (v93)
          {
            v94 = v93;
            v189 = sub_2664E02C8();
            v188 = v95;
          }

          else
          {
            v189 = 0;
            v188 = 0;
          }

          v96 = [v15 audioTrackNumber];
          if (v96)
          {
            v213 = 0;
            LOBYTE(v214) = 1;
            v97 = v96;
            sub_2664E0658();

            v187 = v213;
            v98 = v214;
          }

          else
          {
            v187 = 0;
            v98 = 1;
          }

          v99 = [v15 playCount];
          if (v99)
          {
            v213 = 0;
            LOBYTE(v214) = 1;
            v100 = v99;
            sub_2664E0658();

            v101 = v213;
            v102 = v214;
          }

          else
          {
            v101 = 0;
            v102 = 1;
          }

          v103 = [v15 lastUsedDate];
          if (v103)
          {
            v104 = v103;
            sub_2664DE3F8();

            v105 = 0;
          }

          else
          {
            v105 = 1;
          }

          v106 = sub_2664DE438();
          (*(*(v106 - 8) + 56))(v82, v105, 1, v106);
          v107 = [v15 isLocal];
          if (v107)
          {
            v108 = v107;
            v109 = [v107 BOOLValue];
          }

          else
          {
            v109 = 0;
          }

          v110 = [v15 genre];
          if (v110)
          {
            v111 = v110;
            v112 = sub_2664E02C8();
            v114 = v113;
          }

          else
          {
            v112 = 0;
            v114 = 0;
          }

          v115 = v178;
          v116 = v209;
          *v178 = v203;
          *(v115 + 8) = v116;
          v117 = v194;
          *(v115 + 16) = v196;
          *(v115 + 24) = v117;
          v118 = v192;
          *(v115 + 32) = v193;
          *(v115 + 40) = v118;
          v119 = v190;
          *(v115 + 48) = v191;
          *(v115 + 56) = v119;
          v120 = v188;
          *(v115 + 64) = v189;
          *(v115 + 72) = v120;
          *(v115 + 80) = v67;
          *(v115 + 88) = v187;
          *(v115 + 96) = v98;
          *(v115 + 104) = v101;
          *(v115 + 112) = v102;
          v121 = v184;
          sub_26639F090(v195, v115 + *(v184 + 48));
          *(v115 + *(v121 + 52)) = v109;
          v122 = (v115 + *(v121 + 56));
          *v122 = v112;
          v122[1] = v114;
          sub_2663810DC(v115, v83);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v204 = sub_266384F78(0, v204[2] + 1, 1, v204);
          }

          v123 = v201;
          v124 = v180;
          v39 = v186;
          v126 = v204[2];
          v125 = v204[3];
          if (v126 >= v125 >> 1)
          {
            v204 = sub_266384F78((v125 > 1), v126 + 1, 1, v204);
          }

          v127 = v204;
          v204[2] = v126 + 1;
          sub_266381078(v83, v127 + ((*(v181 + 80) + 32) & ~*(v181 + 80)) + *(v181 + 72) * v126);
          v128 = v177;
          v205(v177, v207, v39);
          sub_2663810DC(v115, v124);
          v30 = v128;
          a2 = sub_2664DFE18();
          a1 = sub_2664E06B8();
          if (os_log_type_enabled(a2, a1))
          {
            v30 = swift_slowAlloc();
            v129 = swift_slowAlloc();
            v213 = v129;
            LODWORD(v30->isa) = v174;
            sub_2663810DC(v124, v176);
            v130 = sub_2664E0318();
            v131 = v124;
            v132 = v130;
            v133 = v115;
            v135 = v134;
            sub_266381140(v131);
            v136 = sub_2662A320C(v132, v135, &v213);

            *(&v30->isa + 4) = v136;
            _os_log_impl(&dword_26629C000, a2, a1, "SpotlightSearchProvider#matches SpotlightSearchProvider added item %{public}s", v30, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v129);
            v137 = v129;
            v39 = v186;
            MEMORY[0x266784AD0](v137, -1, -1);
            MEMORY[0x266784AD0](v30, -1, -1);

            v16 = v123;
            v208(v128, v39);
            v138 = v133;
          }

          else
          {

            sub_266381140(v124);
            v16 = v123;
            v208(v128, v39);
            v138 = v115;
          }

          sub_266381140(v138);
          v19 = v200;
          v28 = v210;
          v51 = v198;
          v15 = v212;
          goto LABEL_15;
        }

        v28 = v210;
      }

      v71 = [v15 contentTypeTree];
      if (v71)
      {
        break;
      }

LABEL_82:
      v205(v28, v207, v39);
      v139 = v39;
      v140 = v15;

      v30 = v28;
      a2 = sub_2664DFE18();
      a1 = sub_2664E06D8();

      if (os_log_type_enabled(a2, a1))
      {
        v30 = swift_slowAlloc();
        v141 = swift_slowAlloc();
        v196 = swift_slowAlloc();
        v215 = v196;
        LODWORD(v30->isa) = v172;
        v142 = [v140 title];
        if (v142)
        {
          v143 = v142;
          v144 = sub_2664E02C8();
          v146 = v145;
        }

        else
        {
          v144 = 0;
          v146 = 0;
        }

        v213 = v144;
        v214 = v146;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
        v147 = sub_2664E0318();
        v149 = sub_2662A320C(v147, v148, &v215);

        *(&v30->isa + 4) = v149;
        WORD2(v30[1].isa) = 2080;
        v150 = sub_2662A320C(v203, v209, &v215);

        *(&v30[1].isa + 6) = v150;
        HIWORD(v30[2].isa) = 2080;
        v151 = [v140 mediaTypes];
        if (v151)
        {
          v152 = v151;
          v153 = sub_2664E04A8();
        }

        else
        {
          v153 = 0;
        }

        v213 = v153;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
        v154 = sub_2664E0318();
        v156 = sub_2662A320C(v154, v155, &v215);

        v30[3].isa = v156;
        LOWORD(v30[4].isa) = 2112;
        v157 = v173;
        *(&v30[4].isa + 2) = v173;
        *v141 = v157;
        WORD1(v30[5].isa) = 2080;
        v158 = v157;
        v159 = [v140 contentTypeTree];
        if (v159)
        {
          v160 = v159;
          v161 = sub_2664E04A8();
        }

        else
        {
          v161 = 0;
        }

        v15 = v212;
        v213 = v161;
        v162 = sub_2664E0318();
        v164 = sub_2662A320C(v162, v163, &v215);

        *(&v30[5].isa + 4) = v164;
        _os_log_impl(&dword_26629C000, a2, a1, "SpotlightSearchProvider#matches Spotlight result: %s, identifier: %s has missing or non-song/playlist mediaTypes: %s %@ contentTypeTree: %s", v30, 0x34u);
        sub_2662E4324(v141);
        MEMORY[0x266784AD0](v141, -1, -1);
        a1 = v196;
        swift_arrayDestroy();
        MEMORY[0x266784AD0](a1, -1, -1);
        MEMORY[0x266784AD0](v30, -1, -1);

        v39 = v186;
        v16 = v201;
        v208(v28, v186);
        v19 = v200;
      }

      else
      {

        v208(v28, v139);
        v15 = v212;
        v39 = v139;
      }

LABEL_15:
      if (v15 == v51)
      {

        v165 = v204;
        goto LABEL_96;
      }
    }

    v30 = v71;
    a2 = sub_2664E04A8();

    v194 = a2[2].isa;
    if (!v194)
    {
LABEL_81:

      v19 = v200;
      goto LABEL_82;
    }

    v19 = 0;
    v196 = a2 + 4;
    while (v19 < a2[2].isa)
    {
      v72 = v39;
      v73 = &v196[2 * v19];
      v74 = v73->isa;
      a1 = v73[1].isa;
      v30 = qword_280071BD8;

      if (v30 != -1)
      {
        swift_once();
      }

      v75 = qword_28007CCD8;
      if (*(qword_28007CCD8 + 16))
      {
        sub_2664E0E68();
        sub_2664E0368();
        v76 = sub_2664E0EB8();
        v30 = (v75 + 56);
        v77 = -1 << *(v75 + 32);
        v78 = v76 & ~v77;
        if ((*(v75 + 56 + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78))
        {
          v79 = ~v77;
          while (1)
          {
            v80 = (*(v75 + 48) + 16 * v78);
            v81 = *v80 == v74 && v80[1] == a1;
            if (v81 || (sub_2664E0D88() & 1) != 0)
            {
              break;
            }

            v78 = (v78 + 1) & v79;
            if (((*(&v30->isa + ((v78 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v78) & 1) == 0)
            {
              goto LABEL_31;
            }
          }

          v67 = 1;
          goto LABEL_46;
        }
      }

LABEL_31:
      v19 = (v19 + 1);

      v39 = v72;
      v16 = v201;
      v28 = v210;
      v51 = v198;
      if (v19 == v194)
      {
        goto LABEL_81;
      }
    }

LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    swift_once();
  }

  v165 = MEMORY[0x277D84F90];
LABEL_96:
  v205(v19, v207, v39);

  v166 = sub_2664DFE18();
  v167 = sub_2664E06E8();
  if (os_log_type_enabled(v166, v167))
  {
    v168 = swift_slowAlloc();
    *v168 = 134349056;
    *(v168 + 4) = v165[2];

    _os_log_impl(&dword_26629C000, v166, v167, "SpotlightSearchProvider#matches SpotlightSearchProvider found %{public}ld", v168, 0xCu);
    MEMORY[0x266784AD0](v168, -1, -1);

    v208(v19, v39);
  }

  else
  {

    v208(v19, v39);
  }

  v171(v165);
}

uint64_t sub_2663D1110(void *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v10 = *(v3 + 16);
  v10(v8, v9, v2);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v21 = a1;
    v14 = v13;
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "SpotlightSearchProvider#matches ensuring query is cancelled...", v13, 2u);
    v15 = v14;
    a1 = v21;
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  v16 = *(v3 + 8);
  v16(v8, v2);
  [a1 cancel];
  v10(v6, v9, v2);
  v17 = sub_2664DFE18();
  v18 = sub_2664E06E8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_26629C000, v17, v18, "SpotlightSearchProvider#matches cancelled query", v19, 2u);
    MEMORY[0x266784AD0](v19, -1, -1);
  }

  return (v16)(v6, v2);
}

void (*sub_2663D13C0(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x266783B70](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_2663D1440;
  }

  __break(1u);
  return result;
}

char *sub_2663D1464(uint64_t a1, char **a2)
{
  sub_2662D2EBC();
  sub_2664E09A8();
  sub_2664E0998();

  sub_2664E0998();

  sub_2664E0998();

  v3 = sub_2664E0998();
  v5 = v4;

  strcpy(v13, "kMDItemGenre=");
  HIBYTE(v13[1]) = -18;
  MEMORY[0x2667833B0](v3, v5);

  MEMORY[0x2667833B0](2003067682, 0xE400000000000000);
  v6 = v13[0];
  v7 = v13[1];
  v8 = *a2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a2 = v8;
  if ((result & 1) == 0)
  {
    result = sub_2663846F4(0, *(v8 + 2) + 1, 1, v8);
    v8 = result;
    *a2 = result;
  }

  v11 = *(v8 + 2);
  v10 = *(v8 + 3);
  if (v11 >= v10 >> 1)
  {
    result = sub_2663846F4((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
    *a2 = result;
  }

  *(v8 + 2) = v11 + 1;
  v12 = &v8[16 * v11];
  *(v12 + 4) = v6;
  *(v12 + 5) = v7;
  return result;
}

uint64_t sub_2663D1704(uint64_t result, char **a2)
{
  v3 = *(result + 16);
  if (v3)
  {
    for (i = (result + 40); ; i += 2)
    {
      v6 = *i;
      v7[0] = *(i - 1);
      v7[1] = v6;

      sub_2663D1464(v7, a2);
      if (v2)
      {
        break;
      }

      if (!--v3)
      {
        return result;
      }
    }
  }

  return result;
}

void *sub_2663D1794(unint64_t a1, char a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v34 - v9;
  if (a2)
  {
    goto LABEL_2;
  }

  if (a1 == 5)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v21, v4);
    v22 = sub_2664DFE18();
    v23 = sub_2664E06E8();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26629C000, v22, v23, "SpotlightSearchProvider#contentType only searching for playlists (from media type)", v24, 2u);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2664E34E0;
    *(v25 + 32) = sub_2664E02C8();
    *(v25 + 40) = v26;
    v27 = sub_2664E02C8();
    result = v25;
    *(v25 + 48) = v27;
    *(v25 + 56) = v28;
  }

  else
  {
    v29 = vdupq_n_s64(a1);
    if ((vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(xmmword_2877E2E18, v29), vceqq_s64(unk_2877E2E28, v29)))) & 1) == 0 && qword_2877E2E38 != a1)
    {
LABEL_2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_2664EA920;
      *(v11 + 32) = sub_2664E02C8();
      *(v11 + 40) = v12;
      *(v11 + 48) = sub_2664E02C8();
      *(v11 + 56) = v13;
      *(v11 + 64) = sub_2664E02C8();
      *(v11 + 72) = v14;
      *(v11 + 80) = sub_2664E02C8();
      *(v11 + 88) = v15;
      *(v11 + 96) = sub_2664E02C8();
      *(v11 + 104) = v16;
      *(v11 + 112) = sub_2664E02C8();
      *(v11 + 120) = v17;
      v18 = sub_2664E02C8();
      result = v11;
      *(v11 + 128) = v18;
      *(v11 + 136) = v20;
      *(v11 + 144) = 0xD00000000000001ALL;
      *(v11 + 152) = 0x80000002664F29E0;
      return result;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v10, v30, v4);
    v31 = sub_2664DFE18();
    v32 = sub_2664E06E8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_26629C000, v31, v32, "SpotlightSearchProvider#contentType only searching for podcasts (from media type)", v33, 2u);
      MEMORY[0x266784AD0](v33, -1, -1);
    }

    (*(v5 + 8))(v10, v4);
    return &unk_2877E4178;
  }

  return result;
}

uint64_t sub_2663D1BFC()
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
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000014, 0x80000002664F77C0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_2800733C8 = v8;
  return result;
}

uint64_t sub_2663D1D94()
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
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000014, 0x80000002664F76E0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_2800733D0 = v8;
  return result;
}

uint64_t PlaybackService.__allocating_init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733D8, &qword_2664EA9C0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_2664EA990;
  *(v0 + 32) = type metadata accessor for PodcastPlaybackHandler();
  *(v0 + 40) = &off_2877E6360;
  *(v0 + 48) = type metadata accessor for PodcastCollectionPlaybackHandler();
  *(v0 + 56) = &off_2877E6360;
  *(v0 + 64) = type metadata accessor for PodcastStationPlaybackHandler();
  *(v0 + 72) = &off_2877E6360;
  *(v0 + 80) = type metadata accessor for RemoteRadioPlaybackHandler();
  *(v0 + 88) = &off_2877F2848;
  *(v0 + 96) = type metadata accessor for RemotePlaylistPlaybackHandler();
  *(v0 + 104) = &off_2877E81A0;
  *(v0 + 112) = type metadata accessor for RemoteAlbumPlaybackHandler();
  *(v0 + 120) = &off_2877EF730;
  *(v0 + 128) = type metadata accessor for RemoteSongPlaybackHandler();
  *(v0 + 136) = &off_2877F3540;
  *(v0 + 144) = type metadata accessor for LocalSongPlaybackHandler();
  *(v0 + 152) = &off_2877F09F0;
  *(v0 + 160) = type metadata accessor for LocalPlaylistPlaybackHandler();
  *(v0 + 168) = &off_2877E8DB8;
  *(v0 + 176) = type metadata accessor for LocalAlbumPlaybackhandler();
  *(v0 + 184) = &off_2877EF688;
  *(v0 + 192) = type metadata accessor for LocalGenreCollectionPlaybackHandler();
  *(v0 + 200) = &off_2877EC998;
  *(v0 + 208) = type metadata accessor for LocalArtistCollectionPlaybackHandler();
  *(v0 + 216) = &off_2877E9D00;
  *(v0 + 224) = type metadata accessor for SpotlightHandler();
  *(v0 + 232) = &off_2877EF950;
  *(v0 + 240) = type metadata accessor for WholeLibraryHandler();
  *(v0 + 248) = &off_2877EF950;
  *(v0 + 256) = &type metadata for CreateStationPlaybackHandler;
  *(v0 + 264) = &off_2877EED78;
  *(v0 + 272) = type metadata accessor for PodcastLibraryPlaybackHandler();
  *(v0 + 280) = &off_2877E6360;
  *(v0 + 288) = type metadata accessor for PodcastUuidPlaybackHandler();
  *(v0 + 296) = &off_2877E6360;
  type metadata accessor for PlaybackService();
  v1 = swift_allocObject();
  sub_2663D2160(v0, sub_2663D20E4, 0);
  return v1;
}

uint64_t sub_2663D20E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *(a2 + 24);
  a3[3] = a1;
  a3[4] = a2;
  __swift_allocate_boxed_opaque_existential_1(a3);
  return v5(a1, a2);
}

void *sub_2663D2160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073408, &unk_2664EAA50);
  v7 = swift_allocObject();
  v7[2] = sub_26638648C(MEMORY[0x277D84F90]);
  v7[4] = 0xD000000000000020;
  v7[5] = 0x80000002664F77E0;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v8 = qword_280F91470;
  v10[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v10[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v10[0] = v8;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  v7[3] = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000020, 0x80000002664F77E0, 1, v10);
  v3[2] = a1;
  v3[3] = v7;
  v3[4] = a2;
  v3[5] = a3;
  return v3;
}

uint64_t sub_2663D2298(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), void (*a4)(__int128 *))
{
  v60 = v4;
  v59 = *v4;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v58 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v54 - v13;
  v15 = *(a2 + 16);
  v68[0] = *a2;
  v68[1] = v15;
  v69[0] = *(a2 + 32);
  *(v69 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  v17 = *(v10 + 16);
  v55 = v16;
  v54 = v17;
  v17(v14, v16, v9);

  v18 = v10;
  v19 = sub_2664DFE18();
  v20 = sub_2664E06B8();

  v21 = os_log_type_enabled(v19, v20);
  v61 = v18;
  if (v21)
  {
    v56 = a3;
    v57 = a4;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v63 = v23;
    *v22 = 136315650;
    v67[0] = *(a1 + 48);
    v24 = PlaybackItem.Scheme.rawValue.getter();
    v26 = sub_2662A320C(v24, v25, &v63);

    v27 = 0xE600000000000000;
    v28 = *(a1 + 49);
    v29 = 0x656369766564;
    *(v22 + 4) = v26;
    v30 = 0xEC00000079726172;
    v31 = 0x62696C656C6F6877;
    *(v22 + 12) = 2080;
    if (v28 != 6)
    {
      v31 = 0x6E776F6E6B6E75;
      v30 = 0xE700000000000000;
    }

    v32 = 0xE400000000000000;
    v33 = 1684630645;
    if (v28 != 4)
    {
      v33 = 0x6867696C746F7073;
      v32 = 0xE900000000000074;
    }

    if (v28 <= 5)
    {
      v31 = v33;
      v30 = v32;
    }

    v34 = 0xEA00000000006573;
    v35 = 0x72657669746C756DLL;
    if (v28 != 2)
    {
      v35 = 0x65726F7473;
      v34 = 0xE500000000000000;
    }

    if (v28)
    {
      v29 = 0x636E797369726973;
      v27 = 0xE800000000000000;
    }

    if (v28 > 1)
    {
      v29 = v35;
      v27 = v34;
    }

    if (v28 <= 3)
    {
      v36 = v29;
    }

    else
    {
      v36 = v31;
    }

    if (v28 <= 3)
    {
      v37 = v27;
    }

    else
    {
      v37 = v30;
    }

    v38 = sub_2662A320C(v36, v37, &v63);

    *(v22 + 14) = v38;
    *(v22 + 22) = 2080;
    *(v22 + 24) = sub_2662A320C(*(a1 + 56), *(a1 + 64), &v63);
    _os_log_impl(&dword_26629C000, v19, v20, "PlaybackService#warm Request to warm playback for item with scheme:%s contentOrigin:%s identifier:%s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);

    v39 = *(v61 + 8);
    v39(v14, v9);
    a4 = v57;
    a3 = v56;
  }

  else
  {

    v39 = *(v18 + 8);
    v39(v14, v9);
  }

  swift_beginAccess();
  v40 = qword_280073F90;
  if (!qword_280073F90)
  {
    goto LABEL_29;
  }

  v41 = qword_280073F88;
  v42 = qword_280073F80;

  if (!sub_266457DC4(v42, &unk_2877E4AD8))
  {

LABEL_29:

    sub_2662D2A64(v68, &v63);
    return sub_2663D2CA0(a1, v60, a3, a4, a1, v68, v59);
  }

  v60 = v41;
  v43 = v58;
  v54(v58, v55, v9);

  v44 = sub_2664DFE18();
  v45 = sub_2664E06D8();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v57 = a4;
    v47 = v46;
    v48 = swift_slowAlloc();
    v63 = v48;
    *v47 = 136446210;
    v62 = v42;
    v49 = sub_2664E0318();
    v56 = a3;
    v51 = sub_2662A320C(v49, v50, &v63);
    a3 = v56;

    *(v47 + 4) = v51;
    _os_log_impl(&dword_26629C000, v44, v45, "PlaybackService#warm, terminating flow due to PFSQ terminal error: %{public}s", v47, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    MEMORY[0x266784AD0](v48, -1, -1);
    MEMORY[0x266784AD0](v47, -1, -1);

    v52 = v58;
  }

  else
  {

    v52 = v43;
  }

  v39(v52, v9);
  v63 = v42;
  v64 = v60;
  v65 = v40;
  v66 = 1;
  a3(&v63);
  return sub_2662D2F30(v63, v64, v65, v66);
}

uint64_t sub_2663D2950(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(__int128 *), uint64_t a5)
{
  v6 = v5;
  v34 = a5;
  v35 = a4;
  v10 = *v5;
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  v38[0] = *a2;
  v38[1] = v15;
  v39[0] = *(a2 + 32);
  *(v39 + 15) = *(a2 + 47);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v11, qword_280F914F0);
  swift_beginAccess();
  (*(v12 + 16))(v14, v16, v11);

  v17 = v12;
  v18 = sub_2664DFE18();
  v19 = sub_2664E06B8();

  v33 = v19;
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32 = v21;
    *v20 = 136446210;
    v36 = *a1;
    v37[0] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733E0, &qword_2664EA9C8);
    v22 = sub_2664E0318();
    v31 = v11;
    v24 = sub_2662A320C(v22, v23, v37);
    v30 = v14;
    v25 = v24;

    *(v20 + 4) = v25;
    _os_log_impl(&dword_26629C000, v18, v33, "PlaybackService#play Request to play item: %{public}s", v20, 0xCu);
    v26 = v32;
    __swift_destroy_boxed_opaque_existential_1Tm(v32);
    MEMORY[0x266784AD0](v26, -1, -1);
    MEMORY[0x266784AD0](v20, -1, -1);

    (*(v17 + 8))(v30, v31);
  }

  else
  {

    (*(v12 + 8))(v14, v11);
  }

  v27 = v34;

  sub_2662D2A64(v38, v37);

  return sub_2663D2CF8(a1, v6, v35, v27, a1, v38, a3, v10);
}

uint64_t sub_2663D2CA0(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_2663D5624(a1, a2, a3, a4, a5, a6, a7);
  sub_2662D2B88(a6);
}

uint64_t sub_2663D2CF8(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_2663D7700(a1, a2, a3, a4, a5, a6, a7, a8);

  sub_2662D2B88(a6);
}

uint64_t sub_2663D2D5C(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), uint64_t a4, char a5)
{
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2662A7224(a1, &v19, &qword_2800733E8, &qword_2664EAA28);
  if (*(&v20 + 1))
  {
    sub_2662A8618(&v19, v23);
    *&v19 = a2;
    sub_2662A5550(v23, &v19 + 8);
    v22 = a5;

    a3(&v19);
    sub_2662A9238(&v19, &qword_2800733F0, &qword_2664EAA30);
    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {
    sub_2662A9238(&v19, &qword_2800733E8, &qword_2664EAA28);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v14 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v12, v14, v9);

    v15 = sub_2664DFE18();
    v16 = sub_2664E06D8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v19 = v18;
      *v17 = 136446210;
      *(v17 + 4) = sub_2662A320C(*(a2 + 32), *(a2 + 40), &v19);
      _os_log_impl(&dword_26629C000, v15, v16, "PlaybackService#resolve No handler for uri: %{public}s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x266784AD0](v18, -1, -1);
      MEMORY[0x266784AD0](v17, -1, -1);
    }

    (*(v10 + 8))(v12, v9);
    v22 = 0;
    v20 = 0u;
    v21 = 0u;
    v19 = 0u;
    a3(&v19);
    return sub_2662A9238(&v19, &qword_2800733F0, &qword_2664EAA30);
  }
}

uint64_t sub_2663D304C(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void (*a6)(__int128 *), void (*a7)(__int128 *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_2663D41E4(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
  sub_2662D2B88(a9);
}

uint64_t sub_2663D30B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *), void (*a7)(__int128 *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  sub_2663D61FC(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);

  sub_2662D2B88(a9);
}

uint64_t sub_2663D3124(void (*a1)(void), uint64_t a2, char a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v57 = a5;
  v58 = a7;
  v59 = a2;
  v60 = a6;
  v10 = sub_2664DFE38();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v52 - v15;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v55 = v14;
  v17 = __swift_project_value_buffer(v10, qword_280F914F0);
  swift_beginAccess();
  v54 = *(v11 + 16);
  v54(v16, v17, v10);
  v18 = sub_2664DFE18();
  v19 = v11;
  v20 = sub_2664E06B8();
  if (os_log_type_enabled(v18, v20))
  {
    v52 = v17;
    v56 = v19;
    v53 = a1;
    v21 = a4;
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *&v63[0] = v23;
    *v22 = 136315394;
    LOBYTE(v61) = a3;
    v24 = PlaybackItem.Scheme.rawValue.getter();
    v26 = sub_2662A320C(v24, v25, v63);

    *(v22 + 4) = v26;
    v27 = 0xE600000000000000;
    v28 = 0x656369766564;
    *(v22 + 12) = 2080;
    v29 = 0xEC00000079726172;
    v30 = 0x62696C656C6F6877;
    if (v21 != 6)
    {
      v30 = 0x6E776F6E6B6E75;
      v29 = 0xE700000000000000;
    }

    v31 = 0xE400000000000000;
    v32 = 1684630645;
    if (v21 != 4)
    {
      v32 = 0x6867696C746F7073;
      v31 = 0xE900000000000074;
    }

    if (v21 <= 5u)
    {
      v30 = v32;
      v29 = v31;
    }

    v33 = 0xEA00000000006573;
    v34 = 0x72657669746C756DLL;
    if (v21 != 2)
    {
      v34 = 0x65726F7473;
      v33 = 0xE500000000000000;
    }

    if (v21)
    {
      v28 = 0x636E797369726973;
      v27 = 0xE800000000000000;
    }

    if (v21 > 1u)
    {
      v28 = v34;
      v27 = v33;
    }

    if (v21 <= 3u)
    {
      v35 = v28;
    }

    else
    {
      v35 = v30;
    }

    if (v21 <= 3u)
    {
      v36 = v27;
    }

    else
    {
      v36 = v29;
    }

    v37 = sub_2662A320C(v35, v36, v63);

    *(v22 + 14) = v37;
    _os_log_impl(&dword_26629C000, v18, v20, "PlaybackService#playbackHandler Cache MISS for handler with scheme: %s and contentOrigin: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v22, -1, -1);

    v38 = v56;
    v39 = *(v56 + 8);
    v39(v16, v10);
    a1 = v53;
    v17 = v52;
  }

  else
  {

    v39 = *(v19 + 8);
    v39(v16, v10);
    v38 = v19;
  }

  v40 = v58;
  (*(v57 + 32))(&v61, v60, v58);
  if (v62)
  {
    sub_2662A8618(&v61, v63);
    sub_2662A5550(v63, &v61);
    a1(&v61);
    sub_2662A9238(&v61, &qword_2800733E8, &qword_2664EAA28);
    return __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }

  else
  {
    sub_2662A9238(&v61, &qword_2800733E8, &qword_2664EAA28);
    v42 = v55;
    v54(v55, v17, v10);
    v43 = sub_2664DFE18();
    v44 = sub_2664E06D8();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v56 = v38;
      v47 = v46;
      *&v61 = v46;
      *v45 = 136315138;
      *&v63[0] = v60;
      *(&v63[0] + 1) = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733F8, &unk_2664EAA38);
      v48 = sub_2664E0318();
      v50 = a1;
      v51 = sub_2662A320C(v48, v49, &v61);

      *(v45 + 4) = v51;
      a1 = v50;
      _os_log_impl(&dword_26629C000, v43, v44, "PlaybackService#playback HandlerReceived nil hydrating handler for type: %s", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x266784AD0](v47, -1, -1);
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    v39(v42, v10);
    v64 = 0;
    memset(v63, 0, sizeof(v63));
    a1(v63);
    return sub_2662A9238(v63, &qword_2800733E8, &qword_2664EAA28);
  }
}

void *PlaybackService.deinit()
{

  return v0;
}

uint64_t PlaybackService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2663D37C4(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int128 *))
{
  v7 = *(a1 + 2);
  v8 = *(a1 + 24);
  v10 = *a1;
  v11 = v7;
  v12 = v8;
  sub_2664E0838();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  sub_2664DFDD8();
  return a6(&v10);
}

uint64_t sub_2663D38A0(uint64_t a1, void (*a2)(__int128 *), void (*a3)(__int128 *), uint64_t a4, uint64_t a5)
{
  v58 = a4;
  v60 = a3;
  v59 = a2;
  v61 = sub_2664DFE08();
  v7 = *(v61 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v61);
  v10 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v52 - v18;
  sub_2662A7224(a1, &v62, &qword_2800733F0, &qword_2664EAA30);
  if (v62)
  {
    v71[0] = v62;
    v71[1] = v63;
    v72 = v64[0];
    v73 = v64[1];
    sub_2662A7224(v71, &v68, &qword_280073400, &qword_2664EAA48);

    v67 = v70;
    v57 = PlaybackItem.Scheme.rawValue.getter();
    v56 = v20;
    sub_2662A7224(v71, &v65, &qword_280073400, &qword_2664EAA48);
    v21 = *(v65 + 49);

    if (v21 > 3)
    {
      if (v21 > 5)
      {
        if (v21 == 6)
        {
          v54 = 0xEC00000079726172;
          v22 = 0x62696C656C6F6877;
        }

        else
        {
          v54 = 0xE700000000000000;
          v22 = 0x6E776F6E6B6E75;
        }
      }

      else if (v21 == 4)
      {
        v54 = 0xE400000000000000;
        v22 = 1684630645;
      }

      else
      {
        v54 = 0xE900000000000074;
        v22 = 0x6867696C746F7073;
      }
    }

    else if (v21 > 1)
    {
      if (v21 == 2)
      {
        v54 = 0xEA00000000006573;
        v22 = 0x72657669746C756DLL;
      }

      else
      {
        v54 = 0xE500000000000000;
        v22 = 0x65726F7473;
      }
    }

    else if (v21)
    {
      v54 = 0xE800000000000000;
      v22 = 0x636E797369726973;
    }

    else
    {
      v54 = 0xE600000000000000;
      v22 = 0x656369766564;
    }

    v53 = v22;
    v34 = v61;
    v55 = a5;
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v35 = qword_280F91D48;
    sub_2664DFDE8();
    (*(v7 + 16))(v10, v12, v34);
    v36 = v34;
    v37 = (*(v7 + 80) + 33) & ~*(v7 + 80);
    v38 = (v8 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
    v39 = swift_allocObject();
    *(v39 + 16) = "playbackServiceWarm";
    *(v39 + 24) = 19;
    *(v39 + 32) = 2;
    (*(v7 + 32))(v39 + v37, v10, v36);
    v40 = (v39 + v38);
    v41 = v60;
    *v40 = v59;
    v40[1] = v41;

    v42 = sub_2664E0848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v43 = swift_allocObject();
    *(v43 + 16) = xmmword_2664E34E0;
    v44 = MEMORY[0x277D837D0];
    *(v43 + 56) = MEMORY[0x277D837D0];
    v45 = sub_2662C4094();
    v46 = v56;
    *(v43 + 32) = v57;
    *(v43 + 40) = v46;
    *(v43 + 96) = v44;
    *(v43 + 104) = v45;
    v47 = v53;
    *(v43 + 64) = v45;
    *(v43 + 72) = v47;
    *(v43 + 80) = v54;
    sub_2664DFDC8(v42, &dword_26629C000, v35, "playbackServiceWarm", 19, 2, v12, "warm scheme=%{signpost.telemetry:string1,public}@ origin=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 115, 2, v43);

    v48 = swift_allocObject();
    *(v48 + 16) = sub_2663D7BEC;
    *(v48 + 24) = v39;
    v49 = v72;
    __swift_project_boxed_opaque_existential_1(v71 + 1, v72);
    v50 = *(v55 + 16);
    v62 = *v55;
    v63 = v50;
    v64[0] = *(v55 + 32);
    *(v64 + 15) = *(v55 + 47);
    v51 = qword_280071BE0;

    if (v51 != -1)
    {
      swift_once();
    }

    (*(*(&v49 + 1) + 32))(v58, &v62, qword_2800733C8, sub_2663D7BF0, v48, v49, *(&v49 + 1));

    (*(v7 + 8))(v12, v61);
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    __swift_destroy_boxed_opaque_existential_1Tm(v69);
    return sub_2662A9238(v71, &qword_280073400, &qword_2664EAA48);
  }

  else
  {
    sub_2662A9238(&v62, &qword_2800733F0, &qword_2664EAA30);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    v24 = *(v14 + 16);
    v24(v19, v23, v13);
    v25 = sub_2664DFE18();
    v26 = sub_2664E06D8();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_26629C000, v25, v26, "PlaybackService#warm  Error resolving items and handler during warmup", v27, 2u);
      MEMORY[0x266784AD0](v27, -1, -1);
    }

    v28 = *(v14 + 8);
    v28(v19, v13);
    v24(v17, v23, v13);
    v29 = sub_2664DFE18();
    v30 = sub_2664E06B8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *&v62 = v32;
      *v31 = 134218498;
      *(v31 + 4) = 14;
      *(v31 + 12) = 2048;
      *(v31 + 14) = 11;
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_2662A320C(0xD000000000000014, 0x80000002664F7700, &v62);
      _os_log_impl(&dword_26629C000, v29, v30, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v31, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v32);
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v31, -1, -1);
    }

    v28(v17, v13);
    v62 = xmmword_2664EA9A0;
    *&v63 = 0x80000002664F7700;
    BYTE8(v63) = 1;
    v59(&v62);
    return sub_2662D2F30(v62, *(&v62 + 1), v63, SBYTE8(v63));
  }
}

uint64_t sub_2663D41E4(unsigned __int8 *a1, uint64_t a2, uint64_t a3, char *a4, int a5, void (*a6)(__int128 *), void (*a7)(__int128 *), uint64_t a8, uint64_t a9, uint64_t a10)
{
  v152 = a4;
  *&v162 = a2;
  v163 = a1;
  v154 = sub_2664DFE38();
  v160 = *(v154 - 8);
  v15 = MEMORY[0x28223BE20](v154);
  v17 = &v131 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v134 = &v131 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v133 = &v131 - v21;
  MEMORY[0x28223BE20](v20);
  v159 = &v131 - v22;
  v23 = swift_allocObject();
  v136 = a6;
  *(v23 + 16) = a6;
  *(v23 + 24) = a7;
  *(v23 + 32) = a8;
  v24 = *(a9 + 16);
  *(v23 + 40) = *a9;
  *(v23 + 56) = v24;
  *(v23 + 72) = *(a9 + 32);
  *(v23 + 87) = *(a9 + 47);
  *(v23 + 96) = a10;
  v25 = v152;
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  *(v26 + 24) = sub_2663D7ADC;
  *(v26 + 32) = v23;
  v137 = v26;
  v138 = a9;
  v135 = a5;
  *(v26 + 40) = a5;
  v27 = v160;
  v163 = *v163;
  v161 = *v162;
  v132 = a3;
  v28 = *(a3 + 16);
  v158 = *(v28 + 16);
  v151 = v23;
  v139 = a7;
  v140 = a8;
  if (v158)
  {
    v156 = v28 + 32;

    sub_2662D2A64(a9, v170);
    v149 = 0x80000002664F1840;
    v150 = 0x80000002664F1860;
    v147 = 0x80000002664F17E0;
    v148 = 0x80000002664F1820;
    v145 = 0x80000002664F17A0;
    v146 = 0x80000002664F17C0;
    v143 = 0x80000002664F1760;
    v144 = 0x80000002664F1780;
    v141 = 0x80000002664F1710;
    v142 = 0x80000002664F1740;
    v155 = (v27 + 16);
    v157 = (v27 + 8);

    v29 = 0;
    *&v30 = 136315650;
    v153 = v30;
    v31 = v154;
    while (1)
    {
      if (v29 >= *(v28 + 16))
      {
        __break(1u);
        goto LABEL_139;
      }

      v32 = *(v156 + 16 * v29++);
      v33 = *(&v32 + 1);
      v34 = *(*(&v32 + 1) + 8);
      v162 = v32;
      v35 = v32;
      v34(v170, v32, *(&v32 + 1));
      v36 = 0xEB000000006F6964;
      v37 = 0x6172706D61732D78;
      switch(LOBYTE(v170[0]))
      {
        case 1:
          v37 = 0x6C70706D61732D78;
          v36 = 0xEE007473696C7961;
          break;
        case 2:
          v37 = 0xD000000000000016;
          v36 = v141;
          break;
        case 3:
          v37 = 0x656D706D61732D78;
          v36 = 0xED00006D65746964;
          break;
        case 4:
          v37 = 0xD000000000000014;
          v36 = v142;
          break;
        case 5:
          v37 = 0xD000000000000017;
          v36 = v143;
          break;
        case 6:
          v37 = 0xD000000000000018;
          v36 = v144;
          break;
        case 7:
          v37 = 0xD00000000000001FLL;
          v36 = v145;
          break;
        case 8:
          v37 = 0xD000000000000017;
          v36 = v146;
          break;
        case 9:
          v37 = 0xD000000000000016;
          v36 = v147;
          break;
        case 0xA:
          v37 = 0x2D616964656D2D78;
          v36 = 0xEF7972617262696CLL;
          break;
        case 0xB:
          v37 = 0x6574616572632D78;
          v36 = 0xEF6E6F6974617473;
          break;
        case 0xC:
          v37 = 0xD000000000000011;
          v36 = v148;
          break;
        case 0xD:
          v37 = 0xD00000000000001ALL;
          v36 = v149;
          break;
        case 0xE:
          v37 = 0xD00000000000001ALL;
          v36 = v150;
          break;
        case 0xF:
          v36 = 0xE700000000000000;
          v37 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v38 = 0x6172706D61732D78;
      v39 = 0xEB000000006F6964;
      switch(v163)
      {
        case 1uLL:
          v38 = 0x6C70706D61732D78;
          v39 = 0xEE007473696C7961;
          break;
        case 2uLL:
          v38 = 0xD000000000000016;
          v39 = v141;
          break;
        case 3uLL:
          v38 = 0x656D706D61732D78;
          v39 = 0xED00006D65746964;
          break;
        case 4uLL:
          v38 = 0xD000000000000014;
          v39 = v142;
          break;
        case 5uLL:
          v38 = 0xD000000000000017;
          v39 = v143;
          break;
        case 6uLL:
          v38 = 0xD000000000000018;
          v39 = v144;
          break;
        case 7uLL:
          v38 = 0xD00000000000001FLL;
          v39 = v145;
          break;
        case 8uLL:
          v38 = 0xD000000000000017;
          v39 = v146;
          break;
        case 9uLL:
          v38 = 0xD000000000000016;
          v39 = v147;
          break;
        case 0xAuLL:
          v38 = 0x2D616964656D2D78;
          v39 = 0xEF7972617262696CLL;
          break;
        case 0xBuLL:
          v38 = 0x6574616572632D78;
          v39 = 0xEF6E6F6974617473;
          break;
        case 0xCuLL:
          v38 = 0xD000000000000011;
          v39 = v148;
          break;
        case 0xDuLL:
          v38 = 0xD00000000000001ALL;
          v39 = v149;
          break;
        case 0xEuLL:
          v38 = 0xD00000000000001ALL;
          v39 = v150;
          break;
        case 0xFuLL:
          v39 = 0xE700000000000000;
          v38 = 0x6E776F6E6B6E75;
          break;
        default:
          break;
      }

      v40 = v28;
      if (v37 == v38 && v36 == v39)
      {
      }

      else
      {
        v41 = sub_2664E0D88();

        if ((v41 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      v42 = (*(v33 + 16))(v35, v33);
      v43 = sub_266457B0C(v161, v42);

      if (v43)
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v99 = __swift_project_value_buffer(v31, qword_280F914F0);
        swift_beginAccess();
        v100 = v134;
        (*v155)(v134, v99, v31);
        v101 = v31;
        v102 = sub_2664DFE18();
        v103 = sub_2664E06B8();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          *&v168[0] = v105;
          *v104 = 136446978;
          if (qword_280071B10 != -1)
          {
            swift_once();
          }

          *(v104 + 4) = sub_2662A320C(qword_280072E48, qword_280072E50, v168);
          *(v104 + 12) = 2080;
          LOBYTE(v164) = v163;
          v106 = PlaybackItem.Scheme.rawValue.getter();
          v108 = sub_2662A320C(v106, v107, v168);

          *(v104 + 14) = v108;
          *(v104 + 22) = 2080;
          v109 = 0xE600000000000000;
          v110 = 0xE700000000000000;
          v111 = 0x62696C656C6F6877;
          if (v161 == 6)
          {
            v110 = 0xEC00000079726172;
          }

          else
          {
            v111 = 0x6E776F6E6B6E75;
          }

          v112 = 0xE400000000000000;
          v113 = 0x6867696C746F7073;
          if (v161 == 4)
          {
            v113 = 1684630645;
          }

          else
          {
            v112 = 0xE900000000000074;
          }

          if (v161 <= 5)
          {
            v111 = v113;
            v110 = v112;
          }

          v114 = 0xE500000000000000;
          v115 = 0x72657669746C756DLL;
          if (v161 == 2)
          {
            v114 = 0xEA00000000006573;
          }

          else
          {
            v115 = 0x65726F7473;
          }

          v116 = 0x636E797369726973;
          if (v161)
          {
            v109 = 0xE800000000000000;
          }

          else
          {
            v116 = 0x656369766564;
          }

          if (v161 > 1)
          {
            v109 = v114;
          }

          else
          {
            v115 = v116;
          }

          if (v161 <= 3)
          {
            v117 = v115;
          }

          else
          {
            v117 = v111;
          }

          if (v161 <= 3)
          {
            v118 = v109;
          }

          else
          {
            v118 = v110;
          }

          v119 = sub_2662A320C(v117, v118, v168);

          *(v104 + 24) = v119;
          *(v104 + 32) = 2080;
          v164 = v162;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733F8, &unk_2664EAA38);
          v120 = sub_2664E0318();
          v122 = sub_2662A320C(v120, v121, v168);

          *(v104 + 34) = v122;
          _os_log_impl(&dword_26629C000, v102, v103, "PlaybackService#playbackHandler %{public}s For scheme: %s and contentOrigin: %s found matching handler: %s", v104, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x266784AD0](v105, -1, -1);
          MEMORY[0x266784AD0](v104, -1, -1);

          (*v157)(v134, v154);
        }

        else
        {

          (*v157)(v100, v101);
        }

        v124 = v132;
        v125 = *(v132 + 24);
        v126 = v163;
        LOBYTE(v164) = v163;
        v127 = v161;
        BYTE1(v164) = v161;
        v128 = swift_allocObject();
        *(v128 + 16) = v126;
        *(v128 + 17) = v127;
        *(v128 + 24) = v124;
        *(v128 + 32) = v162;
        v129 = *(*v125 + 160);

        v129(&v164, sub_2663D7BF4, v128, 0, 1, sub_2663D7BE8, v137);
      }

LABEL_43:
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v44 = __swift_project_value_buffer(v31, qword_280F914F0);
      swift_beginAccess();
      (*v155)(v17, v44, v31);
      v45 = sub_2664DFE18();
      v46 = sub_2664E06C8();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        *&v164 = v48;
        *v47 = v153;
        LOBYTE(v170[0]) = v163;
        v49 = PlaybackItem.Scheme.rawValue.getter();
        v51 = sub_2662A320C(v49, v50, &v164);

        *(v47 + 4) = v51;
        *(v47 + 12) = 2080;
        if (v161 > 3)
        {
          v54 = 0x62696C656C6F6877;
          if (v161 != 6)
          {
            v54 = 0x6E776F6E6B6E75;
          }

          v55 = 0xEC00000079726172;
          if (v161 != 6)
          {
            v55 = 0xE700000000000000;
          }

          v56 = 0x6867696C746F7073;
          if (v161 == 4)
          {
            v56 = 1684630645;
          }

          v57 = 0xE900000000000074;
          if (v161 == 4)
          {
            v57 = 0xE400000000000000;
          }

          if (v161 <= 5)
          {
            v53 = v56;
          }

          else
          {
            v53 = v54;
          }

          if (v161 <= 5)
          {
            v52 = v57;
          }

          else
          {
            v52 = v55;
          }
        }

        else if (v161 > 1)
        {
          if (v161 == 2)
          {
            v53 = 0x72657669746C756DLL;
          }

          else
          {
            v53 = 0x65726F7473;
          }

          if (v161 == 2)
          {
            v52 = 0xEA00000000006573;
          }

          else
          {
            v52 = 0xE500000000000000;
          }
        }

        else if (v161)
        {
          v52 = 0xE800000000000000;
          v53 = 0x636E797369726973;
        }

        else
        {
          v52 = 0xE600000000000000;
          v53 = 0x656369766564;
        }

        v58 = sub_2662A320C(v53, v52, &v164);

        *(v47 + 14) = v58;
        *(v47 + 22) = 2080;
        v170[0] = v162;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733F8, &unk_2664EAA38);
        v59 = sub_2664E0318();
        v61 = sub_2662A320C(v59, v60, &v164);

        *(v47 + 24) = v61;
        _os_log_impl(&dword_26629C000, v45, v46, "PlaybackService#playbackHandler For scheme: %s and contentOrigin: %s handler did not match: %s", v47, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v48, -1, -1);
        MEMORY[0x266784AD0](v47, -1, -1);

        v31 = v154;
        (*v157)(v17, v154);
      }

      else
      {

        (*v157)(v17, v31);
      }

      v27 = v159;
      v28 = v40;
      v25 = v160;
      if (v158 == v29)
      {
        goto LABEL_73;
      }
    }
  }

  sub_2662D2A64(a9, v170);

  v31 = v154;
  v25 = v27;
  v27 = v159;
LABEL_73:
  if (qword_280F914E8 != -1)
  {
LABEL_139:
    swift_once();
  }

  v62 = v31;
  v63 = __swift_project_value_buffer(v31, qword_280F914F0);
  swift_beginAccess();
  *&v162 = *(v25 + 2);
  (v162)(v27, v63, v62);
  v64 = sub_2664DFE18();
  v65 = sub_2664E06B8();
  v66 = os_log_type_enabled(v64, v65);
  v67 = v152;
  if (v66)
  {
    v68 = swift_slowAlloc();
    v69 = swift_slowAlloc();
    *&v170[0] = v69;
    *v68 = 136446722;
    if (qword_280071B10 != -1)
    {
      swift_once();
    }

    *(v68 + 4) = sub_2662A320C(qword_280072E48, qword_280072E50, v170);
    *(v68 + 12) = 2080;
    LOBYTE(v164) = v163;
    v70 = PlaybackItem.Scheme.rawValue.getter();
    v72 = sub_2662A320C(v70, v71, v170);

    v73 = 0xE600000000000000;
    v74 = v161;
    *(v68 + 14) = v72;
    v75 = 0x62696C656C6F6877;
    v76 = 0xEC00000079726172;
    *(v68 + 22) = 2080;
    if (v74 != 6)
    {
      v75 = 0x6E776F6E6B6E75;
      v76 = 0xE700000000000000;
    }

    v77 = 0xE400000000000000;
    v78 = 1684630645;
    if (v74 != 4)
    {
      v78 = 0x6867696C746F7073;
      v77 = 0xE900000000000074;
    }

    if (v74 <= 5)
    {
      v75 = v78;
      v76 = v77;
    }

    v79 = 0x72657669746C756DLL;
    v80 = 0xEA00000000006573;
    if (v74 != 2)
    {
      v79 = 0x65726F7473;
      v80 = 0xE500000000000000;
    }

    v81 = 0x636E797369726973;
    if (v74)
    {
      v73 = 0xE800000000000000;
    }

    else
    {
      v81 = 0x656369766564;
    }

    if (v74 > 1)
    {
      v73 = v80;
    }

    else
    {
      v79 = v81;
    }

    if (v74 <= 3)
    {
      v82 = v79;
    }

    else
    {
      v82 = v75;
    }

    if (v74 <= 3)
    {
      v83 = v73;
    }

    else
    {
      v83 = v76;
    }

    v84 = sub_2662A320C(v82, v83, v170);

    *(v68 + 24) = v84;
    _os_log_impl(&dword_26629C000, v64, v65, "PlaybackService#playbackHandler %{public}s For scheme: %s and contentOrigin: %s no matching handler found", v68, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v69, -1, -1);
    MEMORY[0x266784AD0](v68, -1, -1);

    v85 = *(v160 + 1);
    v85(v159, v154);
    v67 = v152;
  }

  else
  {

    v85 = *(v25 + 1);
    v85(v27, v62);
  }

  v169 = 0;
  memset(v168, 0, sizeof(v168));
  sub_2662A7224(v168, &v164, &qword_2800733E8, &qword_2664EAA28);
  if (v165)
  {
    sub_2662A8618(&v164, v167);
    *&v164 = v67;
    sub_2662A5550(v167, &v164 + 8);
    v166 = v135;
    v86 = v139;

    v87 = v140;

    v88 = v138;
    sub_2662D2A64(v138, v170);

    sub_2663D38A0(&v164, v136, v86, v87, v88);
    sub_2662A9238(&v164, &qword_2800733F0, &qword_2664EAA30);
    __swift_destroy_boxed_opaque_existential_1Tm(v167);
    sub_2662D2B88(v88);
  }

  else
  {

    sub_2662D2A64(v138, v170);
    sub_2662A9238(&v164, &qword_2800733E8, &qword_2664EAA28);
    v89 = v133;
    v90 = v63;
    v91 = v154;
    (v162)(v133, v90, v154);

    v92 = sub_2664DFE18();
    v93 = sub_2664E06D8();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = v91;
      v96 = swift_slowAlloc();
      *&v170[0] = v96;
      *v94 = 136446210;
      *(v94 + 4) = sub_2662A320C(*(v67 + 4), *(v67 + 5), v170);
      _os_log_impl(&dword_26629C000, v92, v93, "PlaybackService#resolve No handler for uri: %{public}s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v96);
      MEMORY[0x266784AD0](v96, -1, -1);
      MEMORY[0x266784AD0](v94, -1, -1);

      v97 = v89;
      v98 = v95;
    }

    else
    {

      v97 = v89;
      v98 = v91;
    }

    v85(v97, v98);
    v171 = 0;
    memset(v170, 0, sizeof(v170));
    v123 = v138;
    sub_2663D38A0(v170, v136, v139, v140, v138);
    sub_2662A9238(v170, &qword_2800733F0, &qword_2664EAA30);
    sub_2662D2B88(v123);
  }

  sub_2662A9238(v168, &qword_2800733E8, &qword_2664EAA28);
}

uint64_t sub_2663D5624(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v44 = a7;
  v45 = a2;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = *(a1 + 48);
  LODWORD(v16) = *(a1 + 49);

  sub_2662D2A64(a6, v48);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v12, qword_280F914F0);
  swift_beginAccess();
  (*(v13 + 16))(v15, v17, v12);
  v18 = v12;
  v19 = sub_2664DFE18();
  v20 = sub_2664E06B8();
  v42 = v15;
  v21 = v20;
  if (os_log_type_enabled(v19, v20))
  {
    v22 = swift_slowAlloc();
    v40 = a3;
    v39 = v16;
    v16 = v22;
    v23 = swift_slowAlloc();
    v41 = a6;
    v37 = v23;
    v48[0] = v23;
    *v16 = 136315138;
    v24 = v43;
    v47 = v43;
    v38 = v18;
    v25 = PlaybackItem.Scheme.rawValue.getter();
    v27 = a1;
    v28 = a5;
    v29 = a4;
    v30 = sub_2662A320C(v25, v26, v48);
    v31 = v24;

    *(v16 + 4) = v30;
    a4 = v29;
    a5 = v28;
    a1 = v27;
    _os_log_impl(&dword_26629C000, v19, v21, "PlaybackService#resolve Looking for scheme: %s", v16, 0xCu);
    v32 = v37;
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
    v33 = v32;
    a6 = v41;
    MEMORY[0x266784AD0](v33, -1, -1);
    v34 = v16;
    LOBYTE(v16) = v39;
    a3 = v40;
    MEMORY[0x266784AD0](v34, -1, -1);

    (*(v13 + 8))(v42, v38);
  }

  else
  {

    (*(v13 + 8))(v42, v18);
    v31 = v43;
  }

  v47 = v31;
  v46 = v16;

  sub_2662D2A64(a6, v48);

  sub_2663D304C(&v47, &v46, v45, a1, v31, a3, a4, a5, a6, v44);

  return sub_2662D2B88(a6);
}

uint64_t sub_2663D5958(uint64_t a1, void (*a2)(__int128 *), void (*a3)(__int128 *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v64 = a5;
  v65 = a6;
  v66 = a2;
  v67 = a3;
  v8 = sub_2664DFE08();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = MEMORY[0x28223BE20](v8);
  v63 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v58 - v12;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v58 - v19;
  sub_2662A7224(a1, &v68, &qword_2800733F0, &qword_2664EAA30);
  if (v68)
  {
    v72[0] = v68;
    v72[1] = v69;
    v73 = *v70;
    v74 = v70[16];
    v71 = *(a4 + 48);
    v62 = PlaybackItem.Scheme.rawValue.getter();
    v61 = v21;
    v22 = *(a4 + 49);
    if (v22 > 3)
    {
      v23 = v8;
      if (*(a4 + 49) > 5u)
      {
        v24 = v9;
        if (v22 == 6)
        {
          v60 = 0xEC00000079726172;
          v25 = 0x62696C656C6F6877;
        }

        else
        {
          v60 = 0xE700000000000000;
          v25 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v24 = v9;
        if (v22 == 4)
        {
          v60 = 0xE400000000000000;
          v25 = 1684630645;
        }

        else
        {
          v60 = 0xE900000000000074;
          v25 = 0x6867696C746F7073;
        }
      }
    }

    else
    {
      v23 = v8;
      if (*(a4 + 49) > 1u)
      {
        v24 = v9;
        if (v22 == 2)
        {
          v60 = 0xEA00000000006573;
          v25 = 0x72657669746C756DLL;
        }

        else
        {
          v60 = 0xE500000000000000;
          v25 = 0x65726F7473;
        }
      }

      else
      {
        v24 = v9;
        if (*(a4 + 49))
        {
          v60 = 0xE800000000000000;
          v25 = 0x636E797369726973;
        }

        else
        {
          v60 = 0xE600000000000000;
          v25 = 0x656369766564;
        }
      }
    }

    v59 = v25;
    if (qword_280F91508 != -1)
    {
      swift_once();
    }

    v37 = qword_280F91D48;
    sub_2664DFDE8();
    v38 = v63;
    (*(v24 + 16))(v63, v13, v23);
    v39 = (*(v24 + 80) + 33) & ~*(v24 + 80);
    v40 = (v10 + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
    v41 = swift_allocObject();
    *(v41 + 16) = "playbackServicePlay";
    *(v41 + 24) = 19;
    *(v41 + 32) = 2;
    v42 = *(v24 + 32);
    v63 = v23;
    v42(v41 + v39, v38, v23);
    v43 = (v41 + v40);
    v44 = v67;
    *v43 = v66;
    v43[1] = v44;

    v45 = sub_2664E0848();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_2664E34E0;
    v47 = MEMORY[0x277D837D0];
    *(v46 + 56) = MEMORY[0x277D837D0];
    v48 = sub_2662C4094();
    v49 = v61;
    *(v46 + 32) = v62;
    *(v46 + 40) = v49;
    *(v46 + 96) = v47;
    *(v46 + 104) = v48;
    v50 = v59;
    *(v46 + 64) = v48;
    *(v46 + 72) = v50;
    *(v46 + 80) = v60;
    sub_2664DFDC8(v45, &dword_26629C000, v37, "playbackServicePlay", 19, 2, v13, "play scheme=%{signpost.telemetry:string1,public}@ origin=%{signpost.telemetry:string2,public}@ enableTelemetry=YES ", 115, 2, v46);

    v51 = swift_allocObject();
    *(v51 + 16) = sub_2663D7A88;
    *(v51 + 24) = v41;
    v52 = v73;
    __swift_project_boxed_opaque_existential_1(v72 + 1, v73);
    v53 = *&v72[0];
    v54 = *(v64 + 16);
    v68 = *v64;
    v69 = v54;
    *v70 = *(v64 + 32);
    *&v70[15] = *(v64 + 47);
    v55 = qword_280071BE8;

    if (v55 != -1)
    {
      swift_once();
    }

    v56 = qword_2800733D0;
    v57 = swift_allocObject();
    *(v57 + 16) = sub_2663D7A8C;
    *(v57 + 24) = v51;
    (*(*(&v52 + 1) + 40))(v53, &v68, v65, v56, sub_2663D7A90, v57, v52, *(&v52 + 1));

    (*(v24 + 8))(v13, v63);
    return sub_2662A9238(v72, &qword_280073400, &qword_2664EAA48);
  }

  else
  {
    sub_2662A9238(&v68, &qword_2800733F0, &qword_2664EAA30);
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v14, qword_280F914F0);
    swift_beginAccess();
    v27 = *(v15 + 16);
    v27(v20, v26, v14);
    v28 = sub_2664DFE18();
    v29 = sub_2664E06D8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_26629C000, v28, v29, "PlaybackService#playError resolving items and handler during play", v30, 2u);
      MEMORY[0x266784AD0](v30, -1, -1);
    }

    v31 = *(v15 + 8);
    v31(v20, v14);
    v27(v18, v26, v14);
    v32 = sub_2664DFE18();
    v33 = sub_2664E06B8();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      *&v68 = v35;
      *v34 = 134218498;
      *(v34 + 4) = 14;
      *(v34 + 12) = 2048;
      *(v34 + 14) = 9;
      *(v34 + 22) = 2080;
      *(v34 + 24) = sub_2662A320C(0xD000000000000012, 0x80000002664F7620, &v68);
      _os_log_impl(&dword_26629C000, v32, v33, "PlaybackCodeAndDescription with domain: %ld, playback: %ld, error: %s", v34, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v35);
      MEMORY[0x266784AD0](v35, -1, -1);
      MEMORY[0x266784AD0](v34, -1, -1);
    }

    v31(v18, v14);
    v68 = xmmword_2664EA9B0;
    *&v69 = 0x80000002664F7620;
    BYTE8(v69) = 1;
    v66(&v68);
    return sub_2662D2F30(v68, *(&v68 + 1), v69, SBYTE8(v69));
  }
}

uint64_t sub_2663D61FC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, void (*a6)(__int128 *), void (*a7)(__int128 *), uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v154 = a7;
  v150 = a3;
  *&v164 = a2;
  v165 = a1;
  v15 = a9;
  v163 = a11;
  v16 = sub_2664DFE38();
  v153 = *(v16 - 8);
  v17 = MEMORY[0x28223BE20](v16);
  v19 = &v133 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v133 = &v133 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v134 = (&v133 - v23);
  MEMORY[0x28223BE20](v22);
  v162 = (&v133 - v24);
  v25 = swift_allocObject();
  v136 = a6;
  *(v25 + 16) = a6;
  v26 = v154;
  *(v25 + 24) = v154;
  *(v25 + 32) = a8;
  v151 = a8;
  v27 = *(a9 + 16);
  *(v25 + 40) = *a9;
  *(v25 + 56) = v27;
  *(v25 + 72) = *(a9 + 32);
  *(v25 + 87) = *(a9 + 47);
  v28 = v163;
  *(v25 + 96) = a10;
  *(v25 + 104) = v28;
  v29 = swift_allocObject();
  v152 = a4;
  *(v29 + 16) = a4;
  *(v29 + 24) = sub_2663D7A60;
  *(v29 + 32) = v25;
  v137 = v29;
  v138 = v25;
  v135 = a5;
  *(v29 + 40) = a5;
  v30 = v153;
  v165 = *v165;
  LODWORD(v163) = *v164;
  v31 = *(v150 + 16);
  v32 = *(v31 + 16);
  v156 = v16;
  v160 = v32;
  v161 = a9;
  v139 = a10;
  if (!v32)
  {

    sub_2662D2A64(a9, v172);

    v26 = v162;
LABEL_86:
    if (qword_280F914E8 == -1)
    {
      goto LABEL_87;
    }

    goto LABEL_152;
  }

  v159 = v31;
  v157 = v31 + 32;

  sub_2662D2A64(a9, v172);
  v148 = 0x80000002664F1840;
  v149 = 0x80000002664F1860;
  v146 = 0x80000002664F17E0;
  v147 = 0x80000002664F1820;
  v144 = 0x80000002664F17A0;
  v145 = 0x80000002664F17C0;
  v142 = 0x80000002664F1760;
  v143 = 0x80000002664F1780;
  v140 = 0x80000002664F1710;
  v141 = 0x80000002664F1740;
  v33 = (v30 + 16);
  v158 = (v30 + 8);

  v34 = 0;
  *&v35 = 136315650;
  v155 = v35;
  while (2)
  {
    if (v34 >= *(v159 + 16))
    {
      __break(1u);
LABEL_152:
      swift_once();
LABEL_87:
      v65 = __swift_project_value_buffer(v16, qword_280F914F0);
      swift_beginAccess();
      v66 = v153;
      v67 = *(v153 + 16);
      *&v164 = v65;
      v67(v26, v65, v16);
      v68 = sub_2664DFE18();
      v69 = v16;
      v70 = sub_2664E06B8();
      v71 = os_log_type_enabled(v68, v70);
      v72 = v154;
      if (v71)
      {
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        *&v172[0] = v74;
        *v73 = 136446722;
        if (qword_280071B10 != -1)
        {
          swift_once();
        }

        *(v73 + 4) = sub_2662A320C(qword_280072E48, qword_280072E50, v172);
        *(v73 + 12) = 2080;
        LOBYTE(v166) = v165;
        v75 = PlaybackItem.Scheme.rawValue.getter();
        v77 = sub_2662A320C(v75, v76, v172);

        v78 = 0xE600000000000000;
        v79 = v163;
        *(v73 + 14) = v77;
        v80 = 0x62696C656C6F6877;
        v81 = 0xEC00000079726172;
        *(v73 + 22) = 2080;
        if (v79 != 6)
        {
          v80 = 0x6E776F6E6B6E75;
          v81 = 0xE700000000000000;
        }

        v82 = 0xE400000000000000;
        v83 = 1684630645;
        if (v79 != 4)
        {
          v83 = 0x6867696C746F7073;
          v82 = 0xE900000000000074;
        }

        if (v79 <= 5)
        {
          v80 = v83;
          v81 = v82;
        }

        v84 = 0x72657669746C756DLL;
        v85 = 0xEA00000000006573;
        if (v79 != 2)
        {
          v84 = 0x65726F7473;
          v85 = 0xE500000000000000;
        }

        v86 = 0x636E797369726973;
        if (v79)
        {
          v78 = 0xE800000000000000;
        }

        else
        {
          v86 = 0x656369766564;
        }

        if (v79 > 1)
        {
          v78 = v85;
        }

        else
        {
          v84 = v86;
        }

        if (v79 <= 3)
        {
          v87 = v84;
        }

        else
        {
          v87 = v80;
        }

        if (v79 <= 3)
        {
          v88 = v78;
        }

        else
        {
          v88 = v81;
        }

        v89 = sub_2662A320C(v87, v88, v172);

        *(v73 + 24) = v89;
        _os_log_impl(&dword_26629C000, v68, v70, "PlaybackService#playbackHandler %{public}s For scheme: %s and contentOrigin: %s no matching handler found", v73, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v74, -1, -1);
        MEMORY[0x266784AD0](v73, -1, -1);

        v90 = *(v153 + 8);
        v69 = v156;
        v90(v162, v156);
        v72 = v154;
        v15 = v161;
      }

      else
      {

        v90 = *(v66 + 8);
        v90(v26, v69);
      }

      v171 = 0;
      memset(v170, 0, sizeof(v170));
      sub_2662A7224(v170, &v166, &qword_2800733E8, &qword_2664EAA28);
      v91 = v151;
      if (v167)
      {
        sub_2662A8618(&v166, v169);
        *&v166 = v152;
        sub_2662A5550(v169, &v166 + 8);
        v168 = v135;

        sub_2662D2A64(v15, v172);
        v92 = v139;

        sub_2663D5958(&v166, v136, v72, v91, v15, v92);
        sub_2662A9238(&v166, &qword_2800733F0, &qword_2664EAA30);
        __swift_destroy_boxed_opaque_existential_1Tm(v169);

        sub_2662D2B88(v15);
      }

      else
      {

        sub_2662D2A64(v15, v172);

        sub_2662A9238(&v166, &qword_2800733E8, &qword_2664EAA28);
        v93 = v134;
        v67(v134, v164, v69);
        v94 = v152;

        v95 = sub_2664DFE18();
        v96 = sub_2664E06D8();

        if (os_log_type_enabled(v95, v96))
        {
          v97 = swift_slowAlloc();
          v98 = swift_slowAlloc();
          *&v172[0] = v98;
          *v97 = 136446210;
          *(v97 + 4) = sub_2662A320C(*(v94 + 32), *(v94 + 40), v172);
          _os_log_impl(&dword_26629C000, v95, v96, "PlaybackService#resolve No handler for uri: %{public}s", v97, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v98);
          MEMORY[0x266784AD0](v98, -1, -1);
          v99 = v97;
          v15 = v161;
          MEMORY[0x266784AD0](v99, -1, -1);

          v100 = v134;
        }

        else
        {

          v100 = v93;
        }

        v90(v100, v69);
        v173 = 0;
        memset(v172, 0, sizeof(v172));
        sub_2663D5958(v172, v136, v154, v91, v15, v139);
        sub_2662A9238(v172, &qword_2800733F0, &qword_2664EAA30);

        sub_2662D2B88(v15);
      }

      sub_2662A9238(v170, &qword_2800733E8, &qword_2664EAA28);
    }

    v36 = *(v157 + 16 * v34++);
    v37 = *(&v36 + 1);
    v38 = *(*(&v36 + 1) + 8);
    v164 = v36;
    v39 = v36;
    v38(v172, v36, *(&v36 + 1));
    v40 = 0xEB000000006F6964;
    v41 = 0x6172706D61732D78;
    switch(LOBYTE(v172[0]))
    {
      case 1:
        v41 = 0x6C70706D61732D78;
        v40 = 0xEE007473696C7961;
        break;
      case 2:
        v41 = 0xD000000000000016;
        v40 = v140;
        break;
      case 3:
        v41 = 0x656D706D61732D78;
        v40 = 0xED00006D65746964;
        break;
      case 4:
        v41 = 0xD000000000000014;
        v40 = v141;
        break;
      case 5:
        v41 = 0xD000000000000017;
        v40 = v142;
        break;
      case 6:
        v41 = 0xD000000000000018;
        v40 = v143;
        break;
      case 7:
        v41 = 0xD00000000000001FLL;
        v40 = v144;
        break;
      case 8:
        v41 = 0xD000000000000017;
        v40 = v145;
        break;
      case 9:
        v41 = 0xD000000000000016;
        v40 = v146;
        break;
      case 0xA:
        v41 = 0x2D616964656D2D78;
        v40 = 0xEF7972617262696CLL;
        break;
      case 0xB:
        v41 = 0x6574616572632D78;
        v40 = 0xEF6E6F6974617473;
        break;
      case 0xC:
        v41 = 0xD000000000000011;
        v40 = v147;
        break;
      case 0xD:
        v41 = 0xD00000000000001ALL;
        v40 = v148;
        break;
      case 0xE:
        v41 = 0xD00000000000001ALL;
        v40 = v149;
        break;
      case 0xF:
        v40 = 0xE700000000000000;
        v41 = 0x6E776F6E6B6E75;
        break;
      default:
        break;
    }

    v42 = 0x6172706D61732D78;
    v43 = 0xEB000000006F6964;
    switch(v165)
    {
      case 1uLL:
        v43 = 0xEE007473696C7961;
        if (v41 == 0x6C70706D61732D78)
        {
          goto LABEL_51;
        }

        goto LABEL_54;
      case 2uLL:
        v43 = v140;
        if (v41 != 0xD000000000000016)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 3uLL:
        v43 = 0xED00006D65746964;
        if (v41 != 0x656D706D61732D78)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 4uLL:
        v43 = v141;
        if (v41 != 0xD000000000000014)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 5uLL:
        v43 = v142;
        if (v41 != 0xD000000000000017)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 6uLL:
        v43 = v143;
        if (v41 != 0xD000000000000018)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 7uLL:
        v43 = v144;
        if (v41 != 0xD00000000000001FLL)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 8uLL:
        v43 = v145;
        if (v41 != 0xD000000000000017)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 9uLL:
        v43 = v146;
        if (v41 != 0xD000000000000016)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 0xAuLL:
        v42 = 0x2D616964656D2D78;
        v43 = 0xEF7972617262696CLL;
        goto LABEL_50;
      case 0xBuLL:
        v43 = 0xEF6E6F6974617473;
        if (v41 != 0x6574616572632D78)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 0xCuLL:
        v43 = v147;
        if (v41 != 0xD000000000000011)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 0xDuLL:
        v43 = v148;
        if (v41 != 0xD00000000000001ALL)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 0xEuLL:
        v43 = v149;
        if (v41 != 0xD00000000000001ALL)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      case 0xFuLL:
        v43 = 0xE700000000000000;
        if (v41 != 0x6E776F6E6B6E75)
        {
          goto LABEL_54;
        }

        goto LABEL_51;
      default:
LABEL_50:
        if (v41 != v42)
        {
          goto LABEL_54;
        }

LABEL_51:
        if (v40 != v43)
        {
LABEL_54:
          v44 = sub_2664E0D88();

          if (v44)
          {
            goto LABEL_55;
          }

LABEL_56:
          if (qword_280F914E8 != -1)
          {
            swift_once();
          }

          v47 = __swift_project_value_buffer(v16, qword_280F914F0);
          swift_beginAccess();
          (*v33)(v19, v47, v16);
          v48 = sub_2664DFE18();
          v49 = sub_2664E06C8();
          if (os_log_type_enabled(v48, v49))
          {
            v50 = swift_slowAlloc();
            v51 = swift_slowAlloc();
            *&v166 = v51;
            *v50 = v155;
            LOBYTE(v172[0]) = v165;
            v52 = PlaybackItem.Scheme.rawValue.getter();
            v54 = sub_2662A320C(v52, v53, &v166);

            *(v50 + 4) = v54;
            *(v50 + 12) = 2080;
            if (v163 > 3)
            {
              v57 = 0x62696C656C6F6877;
              if (v163 != 6)
              {
                v57 = 0x6E776F6E6B6E75;
              }

              v58 = 0xEC00000079726172;
              if (v163 != 6)
              {
                v58 = 0xE700000000000000;
              }

              v59 = 0x6867696C746F7073;
              if (v163 == 4)
              {
                v59 = 1684630645;
              }

              v60 = 0xE900000000000074;
              if (v163 == 4)
              {
                v60 = 0xE400000000000000;
              }

              if (v163 <= 5)
              {
                v56 = v59;
              }

              else
              {
                v56 = v57;
              }

              if (v163 <= 5)
              {
                v55 = v60;
              }

              else
              {
                v55 = v58;
              }
            }

            else if (v163 > 1)
            {
              if (v163 == 2)
              {
                v56 = 0x72657669746C756DLL;
              }

              else
              {
                v56 = 0x65726F7473;
              }

              if (v163 == 2)
              {
                v55 = 0xEA00000000006573;
              }

              else
              {
                v55 = 0xE500000000000000;
              }
            }

            else if (v163)
            {
              v55 = 0xE800000000000000;
              v56 = 0x636E797369726973;
            }

            else
            {
              v55 = 0xE600000000000000;
              v56 = 0x656369766564;
            }

            v61 = sub_2662A320C(v56, v55, &v166);

            *(v50 + 14) = v61;
            *(v50 + 22) = 2080;
            v172[0] = v164;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733F8, &unk_2664EAA38);
            v62 = sub_2664E0318();
            v64 = sub_2662A320C(v62, v63, &v166);

            *(v50 + 24) = v64;
            _os_log_impl(&dword_26629C000, v48, v49, "PlaybackService#playbackHandler For scheme: %s and contentOrigin: %s handler did not match: %s", v50, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x266784AD0](v51, -1, -1);
            MEMORY[0x266784AD0](v50, -1, -1);

            v16 = v156;
            (*v158)(v19, v156);
          }

          else
          {

            (*v158)(v19, v16);
          }

          v15 = v161;
          v26 = v162;
          if (v160 == v34)
          {
            goto LABEL_86;
          }

          continue;
        }

LABEL_55:
        v45 = (*(v37 + 16))(v39, v37);
        v46 = sub_266457B0C(v163, v45);

        if (!v46)
        {
          goto LABEL_56;
        }

        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v101 = __swift_project_value_buffer(v16, qword_280F914F0);
        swift_beginAccess();
        v102 = v133;
        (*v33)(v133, v101, v16);
        v103 = sub_2664DFE18();
        v104 = sub_2664E06B8();
        v105 = os_log_type_enabled(v103, v104);
        v106 = v137;
        if (v105)
        {
          v107 = swift_slowAlloc();
          v108 = swift_slowAlloc();
          *&v170[0] = v108;
          *v107 = 136446978;
          if (qword_280071B10 != -1)
          {
            swift_once();
          }

          *(v107 + 4) = sub_2662A320C(qword_280072E48, qword_280072E50, v170);
          *(v107 + 12) = 2080;
          LOBYTE(v166) = v165;
          v109 = PlaybackItem.Scheme.rawValue.getter();
          v111 = sub_2662A320C(v109, v110, v170);

          *(v107 + 14) = v111;
          *(v107 + 22) = 2080;
          v112 = 0xE600000000000000;
          v113 = 0xE700000000000000;
          v114 = 0x62696C656C6F6877;
          if (v163 == 6)
          {
            v113 = 0xEC00000079726172;
          }

          else
          {
            v114 = 0x6E776F6E6B6E75;
          }

          v115 = 0xE400000000000000;
          v116 = 0x6867696C746F7073;
          if (v163 == 4)
          {
            v116 = 1684630645;
          }

          else
          {
            v115 = 0xE900000000000074;
          }

          if (v163 <= 5)
          {
            v114 = v116;
            v113 = v115;
          }

          v117 = 0xE500000000000000;
          v118 = 0x72657669746C756DLL;
          if (v163 == 2)
          {
            v117 = 0xEA00000000006573;
          }

          else
          {
            v118 = 0x65726F7473;
          }

          v119 = 0x636E797369726973;
          if (v163)
          {
            v112 = 0xE800000000000000;
          }

          else
          {
            v119 = 0x656369766564;
          }

          if (v163 > 1)
          {
            v112 = v117;
          }

          else
          {
            v118 = v119;
          }

          if (v163 <= 3)
          {
            v120 = v118;
          }

          else
          {
            v120 = v114;
          }

          if (v163 <= 3)
          {
            v121 = v112;
          }

          else
          {
            v121 = v113;
          }

          v122 = sub_2662A320C(v120, v121, v170);

          *(v107 + 24) = v122;
          *(v107 + 32) = 2080;
          v166 = v164;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800733F8, &unk_2664EAA38);
          v123 = sub_2664E0318();
          v125 = sub_2662A320C(v123, v124, v170);

          *(v107 + 34) = v125;
          _os_log_impl(&dword_26629C000, v103, v104, "PlaybackService#playbackHandler %{public}s For scheme: %s and contentOrigin: %s found matching handler: %s", v107, 0x2Au);
          swift_arrayDestroy();
          MEMORY[0x266784AD0](v108, -1, -1);
          MEMORY[0x266784AD0](v107, -1, -1);

          (*v158)(v133, v156);
        }

        else
        {

          (*v158)(v102, v16);
        }

        v126 = v150;
        v127 = *(v150 + 24);
        v128 = v165;
        LOBYTE(v166) = v165;
        v129 = v163;
        BYTE1(v166) = v163;
        v130 = swift_allocObject();
        *(v130 + 16) = v128;
        *(v130 + 17) = v129;
        *(v130 + 24) = v126;
        *(v130 + 32) = v164;
        v131 = *(*v127 + 160);

        v131(&v166, sub_2663D7A84, v130, 0, 1, sub_2663D7A74, v106);
    }
  }
}

uint64_t sub_2663D7700(uint64_t a1, uint64_t a2, void (*a3)(__int128 *), void (*a4)(__int128 *), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a3;
  v52 = a8;
  v14 = sub_2664DFE38();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a1 + 48);
  v49 = *(a1 + 49);
  v50 = v18;

  sub_2662D2A64(a6, v55);
  v19 = qword_280F914E8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = __swift_project_value_buffer(v14, qword_280F914F0);
  swift_beginAccess();
  (*(v15 + 16))(v17, v20, v14);
  v48 = v14;
  v21 = v17;
  v22 = sub_2664DFE18();
  v23 = sub_2664E06B8();
  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v46 = a2;
    v25 = v24;
    v43 = v24;
    v26 = swift_slowAlloc();
    v47 = a7;
    v44 = v26;
    v55[0] = v26;
    *v25 = 136315138;
    v27 = v50;
    v54 = v50;
    v45 = v21;
    v28 = PlaybackItem.Scheme.rawValue.getter();
    v30 = a1;
    v31 = a5;
    v32 = a4;
    v33 = a6;
    v34 = sub_2662A320C(v28, v29, v55);
    v35 = v27;

    v36 = v43;
    *(v43 + 4) = v34;
    a6 = v33;
    a4 = v32;
    a5 = v31;
    a1 = v30;
    v37 = v23;
    v38 = v36;
    _os_log_impl(&dword_26629C000, v22, v37, "PlaybackService#resolve Looking for scheme: %s", v36, 0xCu);
    v39 = v44;
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v40 = v39;
    a7 = v47;
    MEMORY[0x266784AD0](v40, -1, -1);
    a2 = v46;
    MEMORY[0x266784AD0](v38, -1, -1);

    (*(v15 + 8))(v45, v48);
  }

  else
  {

    (*(v15 + 8))(v21, v48);
    v35 = v50;
  }

  v54 = v35;
  v53 = v49;

  sub_2662D2A64(a6, v55);

  sub_2663D30B0(&v54, &v53, a2, a1, v35, v51, a4, a5, a6, a7, v52);

  sub_2662D2B88(a6);
}

uint64_t sub_2663D7A90(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 2);
  v4 = *(a1 + 24);
  v6 = *a1;
  v7 = v3;
  v8 = v4;
  return v2(&v6);
}

uint64_t objectdestroy_6Tm()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2663D7B40(__int128 *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2663D37C4(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_2663D7C08()
{
  v0 = sub_2664DF398();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DF388();
  v4 = sub_2663D80F4(604800.0);
  result = (*(v1 + 8))(v3, v0);
  qword_280F90D48 = *&v4;
  return result;
}

void sub_2663D7CF0(void *a1, char a2, void *a3)
{
  v4 = a1[2];
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  v8 = a1[4];
  v7 = a1[5];
  v9 = a1[6];
  v10 = *a3;

  v11 = sub_2662A3E98(v8, v7);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12;
  if (v10[3] < v16)
  {
    sub_2664508BC(v16, v6 & 1);
    v11 = sub_2662A3E98(v8, v7);
    if ((v17 & 1) == (v18 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = sub_2664E0DD8();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_266453E30();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073B30, &qword_2664E4E50);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v8;
  v23[1] = v7;
  *(v22[7] + 8 * v11) = v9;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (!v15)
  {
    v22[2] = v25;
    if (v4 != 1)
    {
      v6 = a1 + 9;
      v26 = 1;
      while (v26 < a1[2])
      {
        v8 = *(v6 - 2);
        v7 = *(v6 - 1);
        v9 = *v6;
        v27 = *a3;

        v28 = sub_2662A3E98(v8, v7);
        v30 = v27[2];
        v31 = (v29 & 1) == 0;
        v15 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v15)
        {
          goto LABEL_22;
        }

        v17 = v29;
        if (v27[3] < v32)
        {
          sub_2664508BC(v32, 1);
          v28 = sub_2662A3E98(v8, v7);
          if ((v17 & 1) != (v33 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v17)
        {
          goto LABEL_8;
        }

        v34 = *a3;
        *(*a3 + 8 * (v28 >> 6) + 64) |= 1 << v28;
        v35 = (v34[6] + 16 * v28);
        *v35 = v8;
        v35[1] = v7;
        *(v34[7] + 8 * v28) = v9;
        v36 = v34[2];
        v15 = __OFADD__(v36, 1);
        v37 = v36 + 1;
        if (v15)
        {
          goto LABEL_23;
        }

        ++v26;
        v34[2] = v37;
        v6 += 3;
        if (v4 == v26)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD00000000000001BLL, 0x80000002664F4320);
  sub_2664E0C28();
  MEMORY[0x2667833B0](39, 0xE100000000000000);
  sub_2664E0C48();
  __break(1u);
}

double sub_2663D806C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return -INFINITY;
  }

  v2 = (a1 + 32);
  v3 = -INFINITY;
  do
  {
    if (*v2 >= v3)
    {
      v4 = *v2;
    }

    else
    {
      v4 = v3;
    }

    if (*v2 < v3)
    {
      v3 = *v2;
    }

    if (v3 != -INFINITY)
    {
      v5 = exp(v3 - v4);
      v4 = v4 + log1p(v5);
    }

    ++v2;
    v3 = v4;
    --v1;
  }

  while (v1);
  return v4;
}

double sub_2663D80F4(double a1)
{
  v2 = sub_2664DF3C8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C0, &unk_2664EAA90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EAA60;
  v7 = *(v3 + 104);
  v7(v5, *MEMORY[0x277D5FF88], v2);
  v8 = sub_2664DF3A8();
  v9 = *(v3 + 8);
  v9(v5, v2);
  *(inited + 32) = log(v8) - -60.0 / a1 * (-60.0 / a1) * 0.5;
  v7(v5, *MEMORY[0x277D5FF60], v2);
  v10 = sub_2664DF3A8();
  v9(v5, v2);
  *(inited + 40) = log(v10) - -360.0 / a1 * (-360.0 / a1) * 0.5;
  v7(v5, *MEMORY[0x277D5FF80], v2);
  v11 = sub_2664DF3A8();
  v9(v5, v2);
  *(inited + 48) = log(v11) - -2100.0 / a1 * (-2100.0 / a1) * 0.5;
  v7(v5, *MEMORY[0x277D5FF50], v2);
  v12 = sub_2664DF3A8();
  v9(v5, v2);
  *(inited + 56) = log(v12) - -12600.0 / a1 * (-12600.0 / a1) * 0.5;
  v7(v5, *MEMORY[0x277D5FF70], v2);
  v13 = sub_2664DF3A8();
  v9(v5, v2);
  *(inited + 64) = log(v13) - -54000.0 / a1 * (-54000.0 / a1) * 0.5;
  v7(v5, *MEMORY[0x277D5FF58], v2);
  v14 = sub_2664DF3A8();
  v9(v5, v2);
  *(inited + 72) = log(v14) - -345600.0 / a1 * (-345600.0 / a1) * 0.5;
  v7(v5, *MEMORY[0x277D5FF68], v2);
  v15 = sub_2664DF3A8();
  v9(v5, v2);
  *(inited + 80) = log(v15) - -1512000.0 / a1 * (-1512000.0 / a1) * 0.5;
  v16 = sub_2663D806C(inited);
  swift_setDeallocating();
  return v16;
}

uint64_t sub_2663D84E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v32 = MEMORY[0x277D84F90];
  sub_2662FD0BC(0, v2, 0);
  v3 = v32;
  v31 = a1 + 56;
  result = sub_2664E0A18();
  v7 = result;
  v8 = 0;
  v28 = v2;
  v29 = a2;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(a1 + 32))
  {
    v11 = v7 >> 6;
    if ((*(v31 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_27;
    }

    v30 = *(a1 + 36);
    v12 = (*(a1 + 48) + 16 * v7);
    v13 = v12[1];
    if (*(a2 + 16))
    {
      v14 = *v12;

      v15 = sub_2662A3E98(v14, v13);
      if (v16)
      {
        v17 = (*(a2 + 56) + 8 * v15);
        goto LABEL_14;
      }
    }

    else
    {
    }

    v17 = &qword_280F90D48;
    if (qword_280F90D40 != -1)
    {
      swift_once();
      v17 = &qword_280F90D48;
    }

LABEL_14:
    v18 = *v17;

    v20 = *(v32 + 16);
    v19 = *(v32 + 24);
    if (v20 >= v19 >> 1)
    {
      result = sub_2662FD0BC((v19 > 1), v20 + 1, 1);
    }

    *(v32 + 16) = v20 + 1;
    *(v32 + 8 * v20 + 32) = v18;
    v9 = 1 << *(a1 + 32);
    if (v7 >= v9)
    {
      goto LABEL_28;
    }

    v21 = *(v31 + 8 * v11);
    if ((v21 & (1 << v7)) == 0)
    {
      goto LABEL_29;
    }

    if (v30 != *(a1 + 36))
    {
      goto LABEL_30;
    }

    v22 = v21 & (-2 << (v7 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v7 & 0x7FFFFFFFFFFFFFC0;
      v10 = v28;
      a2 = v29;
    }

    else
    {
      v23 = v11 << 6;
      v24 = v11 + 1;
      v10 = v28;
      v25 = (a1 + 64 + 8 * v11);
      a2 = v29;
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_26634AE1C(v7, v30, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = sub_26634AE1C(v7, v30, 0);
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v10)
    {
      return v3;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_2663D879C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v29 = MEMORY[0x277D84F90];
    sub_2662FD0BC(0, v1, 0);
    v4 = v29;
    v5 = (a1 + 32);
    while (1)
    {
      v6 = *v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C0, &unk_2664EAA90);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_2664E34E0;
      *(inited + 32) = v6;
      *(inited + 40) = 0;

      if (v6 > 0.0)
      {
        break;
      }

      v8 = 0.0;
      if (v6 != -INFINITY)
      {
        goto LABEL_6;
      }

LABEL_7:
      v11 = *(v29 + 16);
      v10 = *(v29 + 24);
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        sub_2662FD0BC((v10 > 1), v11 + 1, 1);
      }

      *(v29 + 16) = v12;
      *(v29 + 8 * v11 + 32) = v8;
      ++v5;
      if (!--v1)
      {
        goto LABEL_13;
      }
    }

    v8 = v6;
    v6 = 0.0;
LABEL_6:
    v9 = exp(v6 - v8);
    v8 = v8 + log1p(v9);
    goto LABEL_7;
  }

  v12 = *(MEMORY[0x277D84F90] + 16);
  if (v12)
  {
    v4 = MEMORY[0x277D84F90];
LABEL_13:
    v13 = 0;
    v14 = -INFINITY;
    do
    {
      v15 = v4 + 8 * v13;
      v16 = *(v15 + 32);
      if (v16 >= v14)
      {
        v17 = v14;
      }

      else
      {
        v17 = *(v15 + 32);
      }

      if (v16 >= v14)
      {
        v14 = *(v15 + 32);
      }

      if (v17 != -INFINITY)
      {
        v18 = exp(v17 - v14);
        v14 = v14 + log1p(v18);
      }

      ++v13;
    }

    while (v12 != v13);
    sub_2662FD0BC(0, v12, 0);
    v19 = v2;
    v20 = exp(v14) + 1.0;
    v21 = *(v2 + 16);
    v22 = 32;
    do
    {
      v23 = exp(*(v4 + v22) - v14);
      v24 = sqrt(v23 * (1.0 - v23) / v20);
      v25 = log(v23 - v24);
      v26 = *(v2 + 24);
      if (v21 >= v26 >> 1)
      {
        v27 = v25;
        sub_2662FD0BC((v26 > 1), v21 + 1, 1);
        v25 = v27;
      }

      *(v2 + 16) = v21 + 1;
      *(v2 + 8 * v21 + 32) = v25;
      v22 += 8;
      ++v21;
      --v12;
    }

    while (v12);
  }

  else
  {
    v19 = MEMORY[0x277D84F90];
  }

  return v19;
}

uint64_t sub_2663D8A24(uint64_t a1, uint64_t a2)
{

  v4 = sub_2663D84E8(a2, a1);

  v5 = sub_2663D879C(v4);

  v6 = sub_2663D806C(v5);
  v7 = *(v5 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = v6;
    v51 = MEMORY[0x277D84F90];
    sub_2662FD0BC(0, v7, 0);
    v10 = v51;
    v11 = *(v51 + 16);
    v12 = 32;
    do
    {
      v13 = *(v5 + v12);
      v51 = v10;
      v14 = *(v10 + 24);
      if (v11 >= v14 >> 1)
      {
        sub_2662FD0BC((v14 > 1), v11 + 1, 1);
        v10 = v51;
      }

      *(v10 + 16) = v11 + 1;
      *(v10 + 8 * v11 + 32) = v13 - v9;
      v12 += 8;
      ++v11;
      --v7;
    }

    while (v7);
  }

  else
  {

    v10 = MEMORY[0x277D84F90];
  }

  v15 = *(v10 + 16);
  if (v15)
  {
    v51 = v8;
    sub_2662FD0BC(0, v15, 0);
    v16 = v8;
    v17 = *(v8 + 16);
    v18 = 32;
    do
    {
      v19 = exp(*(v10 + v18));
      v51 = v16;
      v20 = *(v16 + 24);
      if (v17 >= v20 >> 1)
      {
        v21 = v19;
        sub_2662FD0BC((v20 > 1), v17 + 1, 1);
        v19 = v21;
        v16 = v51;
      }

      *(v16 + 16) = v17 + 1;
      *(v16 + 8 * v17 + 32) = v19;
      v18 += 8;
      ++v17;
      --v15;
    }

    while (v15);
    swift_bridgeObjectRelease_n();
  }

  else
  {
    swift_bridgeObjectRelease_n();
    v16 = MEMORY[0x277D84F90];
  }

  v22 = *(a2 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v51 = MEMORY[0x277D84F90];
    sub_2662FCFB4(0, v22, 0);
    v23 = v51;
    v24 = (a2 + 56);
    v25 = sub_2664E0A18();
    v26 = 0;
    v47 = (a2 + 56);
    v48 = v16 + 32;
    v45 = v22;
    v46 = v16;
    while (1)
    {
      v27 = 0;
      v28 = 1 << *(a2 + 32);
      v29 = (v28 + 63) >> 6;
      v30 = v24;
      while (1)
      {
        v32 = *v30++;
        v31 = v32;
        if (v32)
        {
          break;
        }

        v27 -= 64;
        if (!--v29)
        {
          v33 = 1 << *(a2 + 32);
          goto LABEL_22;
        }
      }

      v33 = __clz(__rbit64(v31)) - v27;
LABEL_22:
      if (v25 < v33)
      {
        break;
      }

      if (v25 >= v28)
      {
        goto LABEL_38;
      }

      if (v25 < 0)
      {
        goto LABEL_39;
      }

      if ((v24[v25 >> 6] & (1 << v25)) == 0)
      {
        goto LABEL_40;
      }

      if (v26 >= *(v16 + 16))
      {
        goto LABEL_41;
      }

      v50 = *(a2 + 36);
      v49 = v26 + 1;
      v34 = (*(a2 + 48) + 16 * v25);
      v35 = a2;
      v36 = *v34;
      v37 = v34[1];
      v38 = *(v48 + 8 * v26);
      v51 = v23;
      v40 = *(v23 + 16);
      v39 = *(v23 + 24);

      if (v40 >= v39 >> 1)
      {
        sub_2662FCFB4((v39 > 1), v40 + 1, 1);
        v23 = v51;
      }

      *(v23 + 16) = v40 + 1;
      v41 = (v23 + 24 * v40);
      v41[4] = v36;
      v41[5] = v37;
      v41[6] = v38;
      if (v25 >= -(-1 << *(v35 + 32)))
      {
        goto LABEL_42;
      }

      v24 = v47;
      if ((v47[v25 >> 6] & (1 << v25)) == 0)
      {
        goto LABEL_43;
      }

      a2 = v35;
      if (v50 != *(v35 + 36))
      {
        goto LABEL_44;
      }

      v25 = sub_2664E0A38();
      v26 = v49;
      v16 = v46;
      if (v49 == v45)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_33:
    if (*(v23 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280073A40, qword_2664E69E0);
      v42 = sub_2664E0C98();
    }

    else
    {
      v42 = MEMORY[0x277D84F98];
    }

    v51 = v42;

    sub_2663D7CF0(v43, 1, &v51);

    return v51;
  }

  return result;
}

uint64_t sub_2663D8E90(uint64_t a1, double a2)
{
  v4 = sub_2664DF3C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  v9 = *(v5 + 104);
  v9(v7, *MEMORY[0x277D5FF78], v4);
  v10 = sub_2664DF3B8();
  v11 = *(v5 + 8);
  result = v11(v7, v4);
  if (v10 < v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800728C0, &unk_2664EAA90);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_2664EAA60;
    v9(v7, *MEMORY[0x277D5FF88], v4);
    v14 = sub_2664DF3B8();
    result = v11(v7, v4);
    if (v14 >= v8)
    {
      __break(1u);
    }

    else
    {
      v15 = *(a1 + 32 + 8 * v14);
      v16 = a1 + 32;
      *(inited + 32) = log(v15) + -60.0 / a2 * (-60.0 / a2) * -0.5;
      v9(v7, *MEMORY[0x277D5FF60], v4);
      v17 = sub_2664DF3B8();
      result = v11(v7, v4);
      if (v17 < v8)
      {
        *(inited + 40) = log(*(v16 + 8 * v17)) + -360.0 / a2 * (-360.0 / a2) * -0.5;
        v9(v7, *MEMORY[0x277D5FF80], v4);
        v18 = sub_2664DF3B8();
        result = v11(v7, v4);
        if (v18 < v8)
        {
          *(inited + 48) = log(*(v16 + 8 * v18)) + -2100.0 / a2 * (-2100.0 / a2) * -0.5;
          v9(v7, *MEMORY[0x277D5FF50], v4);
          v19 = sub_2664DF3B8();
          result = v11(v7, v4);
          if (v19 < v8)
          {
            *(inited + 56) = log(*(v16 + 8 * v19)) + -12600.0 / a2 * (-12600.0 / a2) * -0.5;
            v9(v7, *MEMORY[0x277D5FF70], v4);
            v20 = sub_2664DF3B8();
            result = v11(v7, v4);
            if (v20 < v8)
            {
              *(inited + 64) = log(*(v16 + 8 * v20)) + -54000.0 / a2 * (-54000.0 / a2) * -0.5;
              v9(v7, *MEMORY[0x277D5FF58], v4);
              v21 = sub_2664DF3B8();
              result = v11(v7, v4);
              if (v21 < v8)
              {
                *(inited + 72) = log(*(v16 + 8 * v21)) + -345600.0 / a2 * (-345600.0 / a2) * -0.5;
                v9(v7, *MEMORY[0x277D5FF68], v4);
                v22 = sub_2664DF3B8();
                result = v11(v7, v4);
                if (v22 < v8)
                {
                  *(inited + 80) = log(*(v16 + 8 * v22)) + -1512000.0 / a2 * (-1512000.0 / a2) * -0.5;
                  sub_2663D806C(inited);
                  return swift_setDeallocating();
                }

LABEL_17:
                __break(1u);
                return result;
              }

LABEL_16:
              __break(1u);
              goto LABEL_17;
            }

LABEL_15:
            __break(1u);
            goto LABEL_16;
          }

LABEL_14:
          __break(1u);
          goto LABEL_15;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_2663D93A0()
{
  v0 = aIscontentfree[0];

  return v0;
}

void sub_2663D93D8()
{
  sub_2663D953C();

  JUMPOUT(0x266781DA0);
}

uint64_t sub_2663D941C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2663D953C();

  return MEMORY[0x2821C57B8](a1, a2, a3, a4, v8);
}

uint64_t sub_2663D9480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2663D953C();

  return MEMORY[0x2821C5798](a1, a2, a3, a4, v8);
}

unint64_t sub_2663D94E8()
{
  result = qword_280F90908;
  if (!qword_280F90908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F90908);
  }

  return result;
}

unint64_t sub_2663D953C()
{
  result = qword_280F90900;
  if (!qword_280F90900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F90900);
  }

  return result;
}

uint64_t sub_2663D9590(void (*a1)(void *), uint64_t a2, void *a3)
{
  v49 = a2;
  v50 = sub_2664DEC48();
  v5 = *(v50 - 8);
  v6 = MEMORY[0x28223BE20](v50);
  v8 = &v44[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v10 = &v44[-v9];
  v11 = sub_2664DFE38();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v44[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v17 = &v44[-v16];
  v18 = [a3 privatePlayMediaIntentData];
  v19 = v18;
  if (!v18)
  {
    goto LABEL_22;
  }

  v20 = [v18 audioSearchResults];
  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = v20;
  v48 = v17;
  sub_2663D9B50();
  v22 = sub_2664E04A8();

  if (!(v22 >> 62))
  {
    result = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

    goto LABEL_21;
  }

  result = sub_2664E0A68();
  if (!result)
  {
LABEL_21:

LABEL_22:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v40 = __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    (*(v12 + 16))(v15, v40, v11);
    v41 = sub_2664DFE18();
    v42 = sub_2664E06C8();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_26629C000, v41, v42, "FreeMediItemSignal: No audioSearch ", v43, 2u);
      MEMORY[0x266784AD0](v43, -1, -1);
    }

    (*(v12 + 8))(v15, v11);
    *v8 = -1;
    v39 = v50;
    (*(v5 + 104))(v8, *MEMORY[0x277D60170], v50);
    a1(v8);
    v29 = v19;
    v10 = v8;
    goto LABEL_27;
  }

LABEL_5:
  if ((v22 & 0xC000000000000001) != 0)
  {
    v24 = MEMORY[0x266783B70](0, v22);
    goto LABEL_8;
  }

  if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v24 = *(v22 + 32);
LABEL_8:
    v25 = v24;
    v47 = a1;

    v26 = qword_280F914E8;
    v27 = v25;
    if (v26 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v11, qword_280F914F0);
    swift_beginAccess();
    v28 = v48;
    (*(v12 + 16))();
    v29 = v27;
    v30 = sub_2664DFE18();
    v31 = sub_2664E06C8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51 = v46;
      *v32 = 136315138;
      v45 = v31;
      v33 = INMediaItem.requiresSubscription.getter();
      v34 = (v33 & 1) == 0;
      if (v33)
      {
        v35 = 1702195828;
      }

      else
      {
        v35 = 0x65736C6166;
      }

      if (v34)
      {
        v36 = 0xE500000000000000;
      }

      else
      {
        v36 = 0xE400000000000000;
      }

      v37 = sub_2662A320C(v35, v36, &v51);

      *(v32 + 4) = v37;
      _os_log_impl(&dword_26629C000, v30, v45, "FreeMediItemSignal: MediaItem reuires subscription : %s", v32, 0xCu);
      v38 = v46;
      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v32, -1, -1);

      (*(v12 + 8))(v48, v11);
    }

    else
    {

      (*(v12 + 8))(v28, v11);
    }

    v39 = v50;
    *v10 = (INMediaItem.requiresSubscription.getter() & 1) == 0;
    (*(v5 + 104))(v10, *MEMORY[0x277D60170], v39);
    v47(v10);

LABEL_27:
    return (*(v5 + 8))(v10, v39);
  }

  __break(1u);
  return result;
}

unint64_t sub_2663D9B50()
{
  result = qword_280F8F650;
  if (!qword_280F8F650)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F8F650);
  }

  return result;
}

uint64_t sub_2663D9B9C()
{
  v0 = sub_2664DFE38();
  __swift_allocate_value_buffer(v0, qword_280F914F0);
  __swift_project_value_buffer(v0, qword_280F914F0);
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91D48;
  return sub_2664DFE48();
}

uint64_t static Logger.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2664DFE38();
  v3 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Logger.default.setter(uint64_t a1)
{
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v2 = sub_2664DFE38();
  v3 = __swift_project_value_buffer(v2, qword_280F914F0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Logger.default.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v1 = sub_2664DFE38();
  __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_2663D9E70()
{
  v0 = sub_2664DFE38();
  __swift_allocate_value_buffer(v0, qword_28007CCE0);
  __swift_project_value_buffer(v0, qword_28007CCE0);
  return sub_2664DFE28();
}

uint64_t sub_2663D9EEC(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    v2 = (result + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;
      swift_bridgeObjectRetain_n();
      sub_2664D0458(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }

  return result;
}

void sub_2663D9F84(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  if (v4)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v7 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v7 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v7);
    ++v6;
    if (v4)
    {
      v6 = v7;
      do
      {
LABEL_9:
        v4 &= v4 - 1;

        sub_2663D9EEC(v8);
      }

      while (v4);
      continue;
    }
  }

  __break(1u);
}

uint64_t sub_2663DA080(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_2664DE438();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10);
  v13 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  (*(v11 + 16))(&v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a5, v10);
  v14 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = a1;
  *(v15 + 3) = a3;
  *(v15 + 4) = a4;
  (*(v11 + 32))(&v15[v14], &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
  v16 = *v13;

  sub_26630F97C(0, 1, v16, sub_2663DBEA4, v15);
}

uint64_t sub_2663DA214(uint64_t a1, uint64_t a2, void (*a3)(void *), uint64_t a4, uint64_t a5)
{
  v8 = sub_2664DE438();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277D84F90];
  v30 = sub_266385A94(MEMORY[0x277D84F90]);
  v29 = sub_266385A94(v12);
  sub_2663B95AC(a1, v28);
  sub_2663DAD20(a2, a1, &v29, &v30);
  sub_2663BC57C(a1);
  v13 = v29;
  v14 = v30;

  sub_2664DE428();
  sub_2664DE388();
  v16 = v15;
  (*(v9 + 8))(v11, v8);
  v17 = sub_2663DB3DC(v14, v13, v16);
  v19 = v18;
  v20 = v17;
  v22 = v21;
  v24 = v23;

  v28[3] = &type metadata for SupportedMediaSignal;
  v28[4] = &off_2877EEB20;
  v25 = swift_allocObject();
  v28[0] = v25;
  *(v25 + 2) = v19;
  v25[3] = v20;
  *(v25 + 4) = v22;
  *(v25 + 5) = v24;
  a3(v28);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
}

uint64_t sub_2663DA414()
{
  v0 = sub_2662C3A68(&unk_2877E1750);
  result = swift_arrayDestroy();
  qword_280F91C70 = v0;
  return result;
}

double sub_2663DA460()
{
  if (qword_280F8FE38 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_2663DA4CC(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v62 = a3;
  v63 = a4;
  v6 = sub_2664DFE38();
  v66 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = (&v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v59 = &v56 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v15 = *a1;
  v14 = a1[1];
  v17 = a1[2];
  v16 = a1[3];
  v18 = a1[7];
  v60 = a1[6];
  v61 = v16;
  v64 = v18;
  v19 = *(a2 + 32);
  swift_bridgeObjectRetain_n();
  v65 = v15;
  if (sub_2663CD060(v15, v14, v19))
  {

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v66 + 16))(v9, v20, v6);

    v21 = sub_2664DFE18();
    v22 = sub_2664E06E8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = v66;
      v25 = v23;
      v26 = swift_slowAlloc();
      v68[0] = v26;
      *v25 = 136446210;
      v27 = sub_2662A320C(v65, v14, v68);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_26629C000, v21, v22, "SupportedMediaSignal#signal %{public}s in disallow list; removing from candidates", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266784AD0](v26, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);

      return (*(v24 + 8))(v9, v6);
    }

    goto LABEL_10;
  }

  v29 = *(a2 + 24);
  swift_bridgeObjectRetain_n();
  LOBYTE(v29) = sub_2663CD060(v65, v14, v29);

  v31 = v17;
  if (v29)
  {
    v69[0] = v17;
    sub_2662F9CB0(&unk_2877E12F0);
    v32 = sub_26639EB98(v69[0]);

    v21 = *(v32 + 16);
    if (v21)
    {
      v33 = sub_26640C820(*(v32 + 16), 0);
      v9 = sub_26640C9BC(v69, v33 + 4, v21, v32);
      sub_2662B793C(v69[0]);
      if (v9 != v21)
      {
        __break(1u);
LABEL_10:

        return (*(v66 + 8))(v9, v6);
      }
    }

    else
    {

      v33 = MEMORY[0x277D84F90];
    }

    v58 = v33;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v66 + 16))(v13, v34, v6);

    v57 = v6;

    v35 = sub_2664DFE18();
    v36 = sub_2664E06E8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v69[0] = v38;
      *v37 = 136446210;
      *(v37 + 4) = sub_2662A320C(v65, v14, v69);
      _os_log_impl(&dword_26629C000, v35, v36, "SupportedMediaSignal#signal applied INMediaCategoryVideo to %{public}s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266784AD0](v38, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    v6 = v57;
    v30 = (*(v66 + 8))(v13, v57);
    v31 = v58;
  }

  v69[0] = 0xD000000000000014;
  v69[1] = 0x80000002664F0ED0;
  MEMORY[0x28223BE20](v30);
  *(&v56 - 2) = v69;
  v39 = v67;
  v40 = sub_2662AA720(sub_2662AA7CC, (&v56 - 4), v31);
  v67 = v39;
  if ((v40 & 1) != 0 && (*(a2 + 40) & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    v48 = v59;
    (*(v66 + 16))(v59, v47, v6);

    v49 = sub_2664DFE18();
    v50 = sub_2664E06C8();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = v66;
      v53 = v51;
      v54 = v48;
      v55 = swift_slowAlloc();
      v70 = v55;
      *v53 = 136446210;
      *(v53 + 4) = sub_2662A320C(v65, v14, &v70);
      _os_log_impl(&dword_26629C000, v49, v50, "SupportedMediaSignal#signal video category prediction is disabled (for now)... removing %{public}s from candidates", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v55);
      MEMORY[0x266784AD0](v55, -1, -1);
      MEMORY[0x266784AD0](v53, -1, -1);

      return (*(v52 + 8))(v54, v6);
    }

    else
    {

      return (*(v66 + 8))(v48, v6);
    }
  }

  else
  {
    v69[0] = v64;

    sub_2662F9CB0(MEMORY[0x277D84F90]);
    v41 = v69[0];
    v42 = v62;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v69[0] = *v42;
    *v42 = 0x8000000000000000;
    v44 = v65;
    sub_26634F90C(v41, v65, v14, isUniquelyReferenced_nonNull_native);

    *v42 = v69[0];
    v45 = v63;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v69[0] = *v45;
    *v45 = 0x8000000000000000;
    sub_26634F90C(v31, v44, v14, v46);

    *v45 = v69[0];
  }

  return result;
}

uint64_t sub_2663DAD20(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  if (v5)
  {
    for (i = (result + 32); ; i += 4)
    {
      v10 = i[1];
      v23[0] = *i;
      v23[1] = v10;
      v11 = i[3];
      v13 = *i;
      v12 = i[1];
      v23[2] = i[2];
      v23[3] = v11;
      v19 = v13;
      v20 = v12;
      v14 = i[3];
      v21 = i[2];
      v22 = v14;
      sub_2662C0AE0(v23, &v15);
      sub_2663DA4CC(&v19, a2, a3, a4);
      if (v4)
      {
        break;
      }

      v15 = v19;
      v16 = v20;
      v17 = v21;
      v18 = v22;
      result = sub_2662C0B3C(&v15);
      if (!--v5)
      {
        return result;
      }
    }

    v15 = v19;
    v16 = v20;
    v17 = v21;
    v18 = v22;
    return sub_2662C0B3C(&v15);
  }

  return result;
}

unint64_t sub_2663DAE00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_2662A3E98(a1, a2), (v5 & 1) != 0))
  {
    v6 = *(*(a3 + 56) + 8 * v4);
  }

  else
  {
    v6 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073600, &unk_2664E37B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EAA60;
  *(inited + 32) = 0xD00000000000001ELL;
  v20 = inited + 32;
  *(inited + 40) = 0x80000002664F12F0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  *(inited + 48) = v6;
  v21 = 0xD000000000000014;
  v22 = 0x80000002664F0E30;
  *(inited + 72) = v8;
  *(inited + 80) = 0xD00000000000001CLL;
  *(inited + 88) = 0x80000002664F1310;
  MEMORY[0x28223BE20](v8);
  v19 = &v21;

  v9 = sub_2662AA720(sub_2663A6860, v18, v6);
  *(inited + 96) = v9 & 1;
  *(inited + 136) = 0x80000002664F1330;
  v21 = 0xD000000000000014;
  v22 = 0x80000002664F0E50;
  v10 = MEMORY[0x277D83B88];
  *(inited + 120) = MEMORY[0x277D83B88];
  *(inited + 128) = 0xD00000000000001CLL;
  MEMORY[0x28223BE20](v9);
  v19 = &v21;
  v11 = sub_2662AA720(sub_2663A6860, v18, v6);
  *(inited + 144) = v11 & 1;
  *(inited + 168) = v10;
  *(inited + 176) = 0xD00000000000001ELL;
  *(inited + 184) = 0x80000002664F1370;
  v21 = 0xD000000000000016;
  v22 = 0x80000002664F0EB0;
  MEMORY[0x28223BE20](v11);
  v19 = &v21;
  v12 = sub_2662AA720(sub_2663A6860, v18, v6);
  *(inited + 192) = v12 & 1;
  *(inited + 216) = v10;
  *(inited + 224) = 0xD00000000000001CLL;
  *(inited + 232) = 0x80000002664F1350;
  v21 = 0xD000000000000014;
  v22 = 0x80000002664F0ED0;
  MEMORY[0x28223BE20](v12);
  v19 = &v21;
  v13 = sub_2662AA720(sub_2663A6860, v18, v6);
  *(inited + 240) = v13 & 1;
  *(inited + 264) = v10;
  *(inited + 272) = 0xD00000000000001ELL;
  *(inited + 280) = 0x80000002664F1390;
  v21 = 0xD000000000000017;
  v22 = 0x80000002664F0E70;
  MEMORY[0x28223BE20](v13);
  v19 = &v21;
  v14 = sub_2662AA720(sub_2663A6860, v18, v6);
  *(inited + 288) = v14 & 1;
  *(inited + 312) = v10;
  *(inited + 320) = 0xD000000000000020;
  *(inited + 328) = 0x80000002664F13B0;
  v21 = 0xD000000000000019;
  v22 = 0x80000002664F0E90;
  MEMORY[0x28223BE20](v14);
  v19 = &v21;
  v15 = sub_2662AA720(sub_2663A6860, v18, v6);

  *(inited + 360) = v10;
  *(inited + 336) = v15 & 1;
  v16 = sub_2663854AC(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800734F0, &unk_2664E3660);
  swift_arrayDestroy();
  return v16;
}

uint64_t sub_2663DB250(uint64_t a1, uint64_t a2, double *a3, uint64_t a4)
{
  if (*(a4 + 16) && (v6 = sub_2662A3E98(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(*(a4 + 56) + 8 * v6);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v9 = sub_26639EB98(v8);

  if (sub_2663CD060(0xD000000000000014, 0x80000002664F0E30, v9))
  {
    v10 = 1.0;
  }

  else
  {
    v10 = 0.0;
  }

  a3[14] = v10;
  if (sub_2663CD060(0xD000000000000014, 0x80000002664F0E50, v9))
  {
    v11 = 1.0;
  }

  else
  {
    v11 = 0.0;
  }

  a3[16] = v11;
  if (sub_2663CD060(0xD000000000000016, 0x80000002664F0EB0, v9))
  {
    v12 = 1.0;
  }

  else
  {
    v12 = 0.0;
  }

  a3[7] = v12;
  if (sub_2663CD060(0xD000000000000014, 0x80000002664F0ED0, v9))
  {
    v13 = 1.0;
  }

  else
  {
    v13 = 0.0;
  }

  a3[5] = v13;
  if (sub_2663CD060(0xD000000000000017, 0x80000002664F0E70, v9))
  {
    v14 = 1.0;
  }

  else
  {
    v14 = 0.0;
  }

  a3[19] = v14;
  v15 = sub_2663CD060(0xD000000000000019, 0x80000002664F0E90, v9);

  if (v15)
  {
    v17 = 1.0;
  }

  else
  {
    v17 = 0.0;
  }

  a3[28] = v17;
  return result;
}

double sub_2663DB3DC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[5] = a1;
  v30 = a2;
  v10 = qword_280F914E8;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v11, v6);

  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v27 = v6;
    v15 = v14;
    v26 = swift_slowAlloc();
    v28[0] = v26;
    *v15 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    v16 = sub_2664E01D8();
    v18 = v17;

    v19 = sub_2662A320C(v16, v18, v28);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2082;
    v20 = sub_2664E01D8();
    v22 = sub_2662A320C(v20, v21, v28);

    *(v15 + 14) = v22;
    _os_log_impl(&dword_26629C000, v12, v13, "SupportedMediaSignal#init bundleIdentifiersAndCounterparts:%{public}s, mediaCategories: %{public}s", v15, 0x16u);
    v23 = v26;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v23, -1, -1);
    MEMORY[0x266784AD0](v15, -1, -1);

    (*(v7 + 8))(v9, v27);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v29 = a3;
  v31 = MEMORY[0x277D84FA0];
  sub_2663D9F84(a1);
  return v29;
}

uint64_t sub_2663DB714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v42 = a2;
  v41 = a1;
  v48 = sub_2664DE438();
  v43 = *(v48 - 8);
  v4 = MEMORY[0x28223BE20](v48);
  v45 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v5;
  MEMORY[0x28223BE20](v4);
  v50 = &v41 - v6;
  v7 = sub_2664DFE08();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v53[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073420, &qword_2664EAC10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073428, &qword_2664EAC18);
  v14 = sub_2664E0318();
  v16 = v15;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v17 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v8 + 16))(v11, v13, v7);
  v18 = (*(v8 + 80) + 33) & ~*(v8 + 80);
  v49 = v13;
  v19 = (v9 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = "appSelectionSignalsSignal";
  *(v20 + 24) = 25;
  *(v20 + 32) = 2;
  v46 = v8;
  v21 = *(v8 + 32);
  v47 = v7;
  v21(v20 + v18, v11);
  v22 = (v20 + v19);
  *v22 = v42;
  v22[1] = a3;

  v23 = sub_2664E0848();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_2664E36F0;
  *(v24 + 56) = MEMORY[0x277D837D0];
  *(v24 + 64) = sub_2662C4094();
  *(v24 + 32) = v14;
  *(v24 + 40) = v16;
  sub_2664DFDC8(v23, &dword_26629C000, v17, "appSelectionSignalsSignal", 25, 2, v49, "name=%{signpost.telemetry:string1,public}@ enableTelemetry=YES ", 63, 2, v24);

  v25 = swift_allocObject();
  *(v25 + 16) = sub_266352A18;
  *(v25 + 24) = v20;
  v26 = qword_280F91468;

  if (v26 != -1)
  {
    swift_once();
  }

  v27 = sub_26632958C(1020);
  v28 = v41;
  if (qword_280F90270 != -1)
  {
    swift_once();
  }

  if (qword_280F8F6F0 != -1)
  {
    swift_once();
  }

  v29 = swift_allocObject();
  v29[2] = v27;
  v29[3] = sub_2663DBD84;
  v29[4] = v25;
  v30 = *__swift_project_boxed_opaque_existential_1(qword_280F91C10, qword_280F91C28);
  sub_2662B8E78(&qword_280F90278, v53);
  v52[3] = &type metadata for AppSelectionConfigurationProvider;
  v52[4] = &off_2877EDBD8;
  v52[0] = v30;

  sub_2664DE428();
  v42 = v27;
  if (v28)
  {
    v41 = sub_26636E9A0(1u);
    v32 = v31;
  }

  else
  {
    v41 = 0;
    v32 = 0;
  }

  v33 = sub_2663DBD8C();
  sub_2662A5550(v52, v51);
  v34 = v43;
  v35 = v45;
  v36 = v50;
  v37 = v48;
  (*(v43 + 16))(v45, v50, v48);
  v38 = (*(v34 + 80) + 72) & ~*(v34 + 80);
  v39 = swift_allocObject();
  sub_2662A8618(v51, v39 + 16);
  *(v39 + 56) = sub_266352BC8;
  *(v39 + 64) = v29;
  (*(v34 + 32))(v39 + v38, v35, v37);

  sub_2662BFF60(v33, v41, v32, 1, sub_2663DBDD8, v39);

  (*(v34 + 8))(v36, v37);
  sub_2663DBE50(v53);
  (*(v46 + 8))(v49, v47);
  return __swift_destroy_boxed_opaque_existential_1Tm(v52);
}

unint64_t sub_2663DBD8C()
{
  result = qword_280F8F5E0;
  if (!qword_280F8F5E0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280F8F5E0);
  }

  return result;
}

uint64_t sub_2663DBDD8(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1 + ((*(v3 + 80) + 72) & ~*(v3 + 80));

  return sub_2663DA080(a1, v1 + 2, v4, v5, v6);
}

uint64_t sub_2663DBEA4(uint64_t a1)
{
  v3 = *(sub_2664DE438() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  return sub_2663DA214(a1, v4, v5, v6, v7);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2663DBF28(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2663DBF70(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2663DBFE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 57))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 56);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_2663DC030(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_2663DC0A8()
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

uint64_t sub_2663DC160(uint64_t a1)
{
  sub_2664E0368();
}

uint64_t sub_2663DC204(uint64_t a1)
{
  sub_2664E0E68();
  sub_2664E0368();

  return sub_2664E0EB8();
}

unint64_t sub_2663DC2B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2663DCCC8(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_2663DC2E8(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6D7269666E6F63;
  v4 = 0xE800000000000000;
  v5 = 0x6F666E4965726F6DLL;
  if (*v1 != 2)
  {
    v5 = 0x6C65636E6163;
    v4 = 0xE600000000000000;
  }

  if (*v1)
  {
    v3 = 0x7463656A6572;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_2663DC35C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return sub_2663DC3B8(v5, v7) & 1;
}

uint64_t sub_2663DC3B8(uint64_t *a1, unsigned __int8 *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[2];
  v5 = *(a1 + 56);
  if (v5 <= 1)
  {
    if (*(a1 + 56))
    {
      if (a2[56] != 1)
      {
        return 0;
      }

      v36 = *(a2 + 1);
      if (!v2)
      {
        return !v36;
      }

      if (!v36)
      {
        return 0;
      }

      if (v3 == *a2 && v2 == v36)
      {
        return 1;
      }

      return (sub_2664E0D88() & 1) != 0;
    }

    if (a2[56])
    {
      return 0;
    }

    v7 = *(a2 + 1);
    v8 = *(a2 + 2);
    if (v2)
    {
      if (!v7 || (v3 != *a2 || v2 != v7) && (sub_2664E0D88() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v7)
    {
      return 0;
    }

    if (!v4)
    {
      return !v8;
    }

    if (v8)
    {
      sub_2662C1744(0, &qword_280F8F560, 0x277CD3D30);
      v41 = v8;
      v42 = v4;
      v43 = sub_2664E0918();

      if (v43)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v5 == 2)
  {
    if (a2[56] == 2)
    {
      v9 = 0x6D7269666E6F63;
      v10 = 0xE700000000000000;
      v11 = 0xE800000000000000;
      v12 = 0x6F666E4965726F6DLL;
      if (*a1 != 2)
      {
        v12 = 0x6C65636E6163;
        v11 = 0xE600000000000000;
      }

      v13 = 0x7463656A6572;
      if (*a1)
      {
        v10 = 0xE600000000000000;
      }

      else
      {
        v13 = 0x6D7269666E6F63;
      }

      if (*a1 <= 1u)
      {
        v14 = v13;
      }

      else
      {
        v14 = v12;
      }

      if (v3 <= 1u)
      {
        v15 = v10;
      }

      else
      {
        v15 = v11;
      }

      v16 = 0xE700000000000000;
      v17 = 0xE800000000000000;
      v18 = 0x6F666E4965726F6DLL;
      if (*a2 != 2)
      {
        v18 = 0x6C65636E6163;
        v17 = 0xE600000000000000;
      }

      if (*a2)
      {
        v9 = 0x7463656A6572;
        v16 = 0xE600000000000000;
      }

      if (*a2 <= 1u)
      {
        v19 = v9;
      }

      else
      {
        v19 = v18;
      }

      if (*a2 <= 1u)
      {
        v20 = v16;
      }

      else
      {
        v20 = v17;
      }

      if (v14 != v19 || v15 != v20)
      {
        v37 = sub_2664E0D88();

        return v37 & 1;
      }

      return 1;
    }

    return 0;
  }

  if (v5 != 3)
  {
    if (a2[56] != 4)
    {
      return 0;
    }

    v21 = a1[3];
    v22 = a1[4];
    v23 = a1[5];
    v24 = a1[6];
    v26 = *a2;
    v25 = *(a2 + 1);
    v28 = *(a2 + 2);
    v27 = *(a2 + 3);
    v29 = *(a2 + 4);
    v30 = *(a2 + 5);
    v31 = *(a2 + 6);
    if (v3)
    {
      if (!v26)
      {
        return 0;
      }

      v46 = *(a2 + 3);
      v47 = *(a2 + 4);
      v44 = *(a2 + 1);
      v45 = *(a2 + 2);
      sub_2664DFCD8();
      v48 = v22;
      v32 = v24;
      v33 = v26;
      v34 = v3;
      v35 = sub_2664E0918();

      v24 = v32;
      v22 = v48;

      v25 = v44;
      v28 = v45;
      v27 = v46;
      v29 = v47;
      if ((v35 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v26)
    {
      return 0;
    }

    if (v4)
    {
      if (!v28)
      {
        return 0;
      }

      if (v2 != v25 || v4 != v28)
      {
        v38 = v27;
        v39 = v29;
        v40 = sub_2664E0D88();
        v27 = v38;
        v29 = v39;
        if ((v40 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v28)
    {
      return 0;
    }

    if (v22)
    {
      if (!v29 || (v21 != v27 || v22 != v29) && (sub_2664E0D88() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v29)
    {
      return 0;
    }

    if (!v24)
    {
      return !v31;
    }

    if (!v31)
    {
      return 0;
    }

    if (v23 == v30 && v24 == v31)
    {
      return 1;
    }

    return (sub_2664E0D88() & 1) != 0;
  }

  if (a2[56] != 3)
  {
    return 0;
  }

  if (v3 == *a2 && v2 == *(a2 + 1))
  {
    return 1;
  }

  return sub_2664E0D88();
}

uint64_t sub_2663DC7F4@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06E8();

  if (!os_log_type_enabled(v9, v10))
  {

    result = (*(v5 + 8))(v7, v4);
    if (a1)
    {
      goto LABEL_7;
    }

LABEL_18:
    v20 = 0;
    v19 = 0;
    goto LABEL_23;
  }

  v26 = a2;
  v11 = swift_slowAlloc();
  v25 = swift_slowAlloc();
  v29[0] = v25;
  *v11 = 136315138;
  if (!a1)
  {
    sub_2663854AC(MEMORY[0x277D84F90]);
  }

  v12 = sub_2664E01D8();
  v14 = v13;

  v15 = sub_2662A320C(v12, v14, v29);

  *(v11 + 4) = v15;
  _os_log_impl(&dword_26629C000, v9, v10, "Parsing replay request data with user data: %s", v11, 0xCu);
  v16 = v25;
  __swift_destroy_boxed_opaque_existential_1Tm(v25);
  MEMORY[0x266784AD0](v16, -1, -1);
  MEMORY[0x266784AD0](v11, -1, -1);

  result = (*(v5 + 8))(v7, v4);
  a2 = v26;
  if (!a1)
  {
    goto LABEL_18;
  }

LABEL_7:
  if (!*(a1 + 16) || (result = sub_2662A3E98(0x6C646E7542707061, 0xEB00000000644965), (v18 & 1) == 0))
  {
    v19 = 0;
    v20 = 0;
    if (*(a1 + 16))
    {
      goto LABEL_20;
    }

LABEL_23:
    v24 = 0;
    goto LABEL_24;
  }

  sub_2662A01E8(*(a1 + 56) + 32 * result, v29);
  result = swift_dynamicCast();
  if (result)
  {
    v19 = v27;
  }

  else
  {
    v19 = 0;
  }

  if (result)
  {
    v20 = v28;
  }

  else
  {
    v20 = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_23;
  }

LABEL_20:
  result = sub_2662A3E98(0x746E65746E69, 0xE600000000000000);
  if ((v21 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_2662A01E8(*(a1 + 56) + 32 * result, v29);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  v22 = v27;
  v23 = v28;
  sub_2662C1744(0, &qword_280073E30, 0x277CCAAC8);
  sub_2662C1744(0, &qword_280F8F560, 0x277CD3D30);
  v24 = sub_2664E0718();
  result = sub_266348774(v22, v23);
LABEL_24:
  *a2 = v19;
  *(a2 + 8) = v20;
  *(a2 + 16) = v24;
  *(a2 + 56) = 0;
  return result;
}

uint64_t sub_2663DCC10@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    goto LABEL_6;
  }

  v3 = result;
  v4 = *(result + 16);
  if (!v4)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  result = sub_2662A3E98(0x6C646E7542707061, 0xEB00000000644965);
  if ((v5 & 1) == 0)
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  sub_2662A01E8(*(v3 + 56) + 32 * result, v9);
  result = swift_dynamicCast();
  v4 = v7;
  v6 = v8;
  if (!result)
  {
    v4 = 0;
    v6 = 0;
  }

LABEL_8:
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 56) = 1;
  return result;
}

unint64_t sub_2663DCCC8(uint64_t a1, uint64_t a2)
{
  v2 = sub_2664E0CB8();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

double sub_2663DCD14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v35[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v35[-1] - v9;
  if (a1 && *(a1 + 16) && (v11 = sub_2662A3E98(0x6E6F74747562, 0xE600000000000000), (v12 & 1) != 0) && (sub_2662A01E8(*(a1 + 56) + 32 * v11, v36), (swift_dynamicCast() & 1) != 0))
  {
    v14 = v35[0];
    v13 = v35[1];

    v15 = sub_2663DCCC8(v14, v13);
    if (v15 != 4)
    {
      v33 = v15;

      v30 = v33;
      v31 = 2;
      goto LABEL_16;
    }

    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v16 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v10, v16, v4);

    v17 = sub_2664DFE18();
    v18 = sub_2664E06D8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v35[0] = v20;
      *v19 = 136315138;
      v21 = sub_2662A320C(v14, v13, v35);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_26629C000, v17, v18, "DirectInvocationUseCase#parseButtonPress unrecognized buttonPressed value: %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x266784AD0](v20, -1, -1);
      MEMORY[0x266784AD0](v19, -1, -1);
    }

    else
    {
    }

    (*(v5 + 8))(v10, v4);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v8, v22, v4);

    v23 = sub_2664DFE18();
    v24 = sub_2664E06D8();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v35[0] = v26;
      *v25 = 136315138;
      v35[2] = a1;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073430, &qword_2664EADE0);
      v27 = sub_2664E0318();
      v29 = sub_2662A320C(v27, v28, v35);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_26629C000, v23, v24, "DirectInvocationUseCase#parseButtonPress invalid user data for buttonPress: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266784AD0](v26, -1, -1);
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }

  v30 = 0;
  v31 = -1;
LABEL_16:
  *a2 = v30;
  result = 0.0;
  *(a2 + 8) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 56) = v31;
  return result;
}

double sub_2663DD1A0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_7:
    v7 = 0;
    v8 = -1;
    goto LABEL_8;
  }

  v5 = sub_2662A3E98(0x64496D657469, 0xE600000000000000);
  if ((v6 & 1) == 0 || (sub_2662A01E8(*(a1 + 56) + 32 * v5, v12), (swift_dynamicCast() & 1) == 0))
  {
LABEL_6:
    v4 = 0;
    goto LABEL_7;
  }

  v4 = v10;
  v7 = v11;
  v8 = 3;
LABEL_8:
  *a2 = v4;
  *(a2 + 8) = v7;
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = v8;
  return result;
}

uint64_t sub_2663DD254@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (!result)
  {
    v11 = 0;
    v10 = 0;
    v5 = 0;
    v7 = 0;
    v8 = 0;
    goto LABEL_32;
  }

  v3 = result;
  if (*(result + 16) && (result = sub_2662A3E98(0x7078456F69647561, 0xEF65636E65697265), (v4 & 1) != 0) && (sub_2662A01E8(*(v3 + 56) + 32 * result, v17), result = swift_dynamicCast(), (result & 1) != 0))
  {
    sub_2663C50C4(v15, v16);
    v5 = _s16SiriAudioSupport13ShimUtilitiesV011deserializeB10Experience05audioG4Data0A17InformationSearch0bG0CSg10Foundation0I0VSg_tFZ_0(v15, v16);
    sub_266348774(v15, v16);
    result = sub_266348774(v15, v16);
    if (!*(v3 + 16))
    {
      goto LABEL_17;
    }
  }

  else
  {
    v5 = 0;
    if (!*(v3 + 16))
    {
      goto LABEL_17;
    }
  }

  result = sub_2662A3E98(0x656D616E656C6966, 0xE800000000000000);
  if (v6)
  {
    sub_2662A01E8(*(v3 + 56) + 32 * result, v17);
    result = swift_dynamicCast();
    if (result)
    {
      v7 = v15;
    }

    else
    {
      v7 = 0;
    }

    if (result)
    {
      v8 = v16;
    }

    else
    {
      v8 = 0;
    }

    if (!*(v3 + 16))
    {
      goto LABEL_27;
    }

    goto LABEL_18;
  }

LABEL_17:
  v7 = 0;
  v8 = 0;
  if (!*(v3 + 16))
  {
    goto LABEL_27;
  }

LABEL_18:
  result = sub_2662A3E98(0x726577736E61, 0xE600000000000000);
  if (v9)
  {
    sub_2662A01E8(*(v3 + 56) + 32 * result, v17);
    result = swift_dynamicCast();
    if (result)
    {
      v10 = v15;
    }

    else
    {
      v10 = 0;
    }

    if (result)
    {
      v11 = v16;
    }

    else
    {
      v11 = 0;
    }

    v12 = *(v3 + 16);
    if (!v12)
    {
      goto LABEL_33;
    }

    goto LABEL_28;
  }

LABEL_27:
  v10 = 0;
  v11 = 0;
  v12 = *(v3 + 16);
  if (!v12)
  {
LABEL_33:
    v14 = 0;
    goto LABEL_34;
  }

LABEL_28:
  result = sub_2662A3E98(0x726F727265, 0xE500000000000000);
  if ((v13 & 1) == 0)
  {
LABEL_32:
    v12 = 0;
    goto LABEL_33;
  }

  sub_2662A01E8(*(v3 + 56) + 32 * result, v17);
  result = swift_dynamicCast();
  v12 = v15;
  v14 = v16;
  if (!result)
  {
    v12 = 0;
    v14 = 0;
  }

LABEL_34:
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v8;
  *(a2 + 24) = v10;
  *(a2 + 32) = v11;
  *(a2 + 40) = v12;
  *(a2 + 48) = v14;
  *(a2 + 56) = 4;
  return result;
}

uint64_t sub_2663DD4DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_2664DEBD8();
  v65 = *(v4 - 8);
  *&v66 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v62 - v8;
  v10 = sub_2664DFE38();
  *&v67 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v62 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  v17 = sub_2664DEBB8();
  v18 = v16;
  if (v17 == 0xD000000000000033 && 0x80000002664F7810 == v16 || (sub_2664E0D88() & 1) != 0)
  {

    v19 = sub_2664DEBC8();
    sub_2663DC7F4(v19, v70);
LABEL_5:
    v66 = v70[0];
    v67 = v70[1];
    v20 = v71;
    v21 = v72;
    v22 = v73;
    v23 = v74;

    v25 = v66;
    v26 = v67;
    goto LABEL_6;
  }

  if (v17 == 0xD00000000000002CLL && 0x80000002664F7850 == v18 || (sub_2664E0D88() & 1) != 0)
  {

    v27 = sub_2664DEBC8();
    sub_2663DCC10(v27, v70);
    goto LABEL_5;
  }

  if (v17 == 0xD000000000000031 && 0x80000002664F7880 == v18 || (sub_2664E0D88() & 1) != 0)
  {

    v28 = sub_2664DEBC8();
    sub_2663DCD14(v28, v70);
    goto LABEL_5;
  }

  if (v17 == 0xD000000000000034 && 0x80000002664F78C0 == v18 || (sub_2664E0D88() & 1) != 0)
  {

    v29 = sub_2664DEBC8();
    sub_2663DD1A0(v29, v70);
    goto LABEL_5;
  }

  if (v17 == 0xD000000000000029 && 0x80000002664F7900 == v18)
  {

    v30 = v10;
LABEL_23:
    v32 = v67;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v30, qword_280F914F0);
    swift_beginAccess();
    (*(v32 + 16))(v15, v33, v30);
    v64 = v30;
    v34 = v65;
    v35 = v66;
    (*(v65 + 16))(v9, a1, v66);
    v36 = sub_2664DFE18();
    v37 = sub_2664E06C8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v62 = v38;
      v63 = swift_slowAlloc();
      *&v70[0] = v63;
      *v38 = 136315138;
      v68 = sub_2664DEBC8();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073430, &qword_2664EADE0);
      v39 = sub_2664E0318();
      v40 = v35;
      v42 = v41;
      (*(v34 + 8))(v9, v40);
      v43 = sub_2662A320C(v39, v42, v70);

      v44 = v62;
      *(v62 + 1) = v43;
      v45 = v44;
      _os_log_impl(&dword_26629C000, v36, v37, "DirectInvocationUseCase#from shim: %s", v44, 0xCu);
      v46 = v63;
      __swift_destroy_boxed_opaque_existential_1Tm(v63);
      MEMORY[0x266784AD0](v46, -1, -1);
      MEMORY[0x266784AD0](v45, -1, -1);
    }

    else
    {

      (*(v34 + 8))(v9, v35);
    }

    (*(v32 + 8))(v15, v64);
    v47 = sub_2664DEBC8();
    sub_2663DD254(v47, v70);
    goto LABEL_5;
  }

  v31 = sub_2664E0D88();

  v30 = v10;
  if (v31)
  {
    goto LABEL_23;
  }

  v48 = v67;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v49 = __swift_project_value_buffer(v30, qword_280F914F0);
  swift_beginAccess();
  (*(v48 + 16))(v13, v49, v30);
  v50 = v30;
  v51 = v65;
  v52 = v66;
  (*(v65 + 16))(v7, a1, v66);
  v53 = sub_2664DFE18();
  v54 = sub_2664E06D8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v64 = v50;
    v56 = v55;
    v63 = swift_slowAlloc();
    v69[0] = v63;
    *v56 = 136315138;
    v62 = sub_2664DEBB8();
    v58 = v57;
    (*(v51 + 8))(v7, v52);
    v59 = v48;
    v60 = sub_2662A320C(v62, v58, v69);

    *(v56 + 4) = v60;
    _os_log_impl(&dword_26629C000, v53, v54, "DirectInvocationUseCase#from unsupported identifier: %s", v56, 0xCu);
    v61 = v63;
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
    MEMORY[0x266784AD0](v61, -1, -1);
    MEMORY[0x266784AD0](v56, -1, -1);

    result = (*(v59 + 8))(v13, v64);
  }

  else
  {

    (*(v51 + 8))(v7, v52);
    result = (*(v48 + 8))(v13, v50);
  }

  v20 = 0;
  v21 = 0;
  v22 = 0;
  v25 = 0uLL;
  v23 = -1;
  v26 = 0uLL;
LABEL_6:
  *a2 = v25;
  *(a2 + 16) = v26;
  *(a2 + 32) = v20;
  *(a2 + 40) = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v23;
  return result;
}

unint64_t sub_2663DDC80()
{
  result = qword_280073438[0];
  if (!qword_280073438[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280073438);
  }

  return result;
}

Swift::Void __swiftcall INIntent.setLaunchId(launchId:caller:)(Swift::String_optional launchId, Swift::String caller)
{
  object = caller._object;
  countAndFlagsBits = caller._countAndFlagsBits;
  v4 = launchId.value._object;
  v5 = launchId.value._countAndFlagsBits;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  (*(v7 + 16))(v9, v10, v6);

  v11 = v2;
  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();

  v14 = os_log_type_enabled(v12, v13);
  v30 = v5;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v29 = v11;
    v16 = v15;
    v27 = swift_slowAlloc();
    v31 = v27;
    *v16 = 136315650;
    if (v4)
    {
      v17 = v5;
    }

    else
    {
      v17 = 0x3E6C696E3CLL;
    }

    if (v4)
    {
      v18 = v4;
    }

    else
    {
      v18 = 0xE500000000000000;
    }

    v19 = sub_2662A320C(v17, v18, &v31);

    *(v16 + 4) = v19;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_2662A320C(countAndFlagsBits, object, &v31);
    *(v16 + 22) = 2080;
    v20 = [v29 description];
    v21 = sub_2664E02C8();
    v23 = v22;

    v24 = sub_2662A320C(v21, v23, &v31);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_26629C000, v12, v13, "Setting launchID to: %s, caller: %s, for intent: %s", v16, 0x20u);
    v25 = v27;
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v25, -1, -1);
    v26 = v16;
    v11 = v29;
    MEMORY[0x266784AD0](v26, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  if (v4)
  {
    v4 = sub_2664E02A8();
  }

  [v11 _setLaunchId_];
}

id sub_2663DDFF8()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    result = [v0 mediaItems];
    if (!result)
    {
      return result;
    }

    v2 = result;
    sub_2663D9B50();
    v3 = sub_2664E04A8();

    if (v3 >> 62)
    {
      if (!sub_2664E0A68())
      {
        goto LABEL_38;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      goto LABEL_32;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    result = [v4 mediaItems];
    if (!result)
    {
      return result;
    }

    v5 = result;
    sub_2663D9B50();
    v3 = sub_2664E04A8();

    if (v3 >> 62)
    {
      if (!sub_2664E0A68())
      {
        goto LABEL_38;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      goto LABEL_32;
    }

    if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    __break(1u);
  }

  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    result = [v6 mediaItems];
    if (!result)
    {
      return result;
    }

    v7 = result;
    sub_2663D9B50();
    v3 = sub_2664E04A8();

    if (v3 >> 62)
    {
      if (!sub_2664E0A68())
      {
        goto LABEL_38;
      }
    }

    else if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    if ((v3 & 0xC000000000000001) == 0)
    {
      if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_22;
      }

LABEL_28:
      v9 = *(v3 + 32);
LABEL_29:
      v10 = v9;

      return v10;
    }

LABEL_32:
    v9 = MEMORY[0x266783B70](0, v3);
    goto LABEL_29;
  }

LABEL_22:
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    return result;
  }

  result = [result mediaItems];
  if (!result)
  {
    return result;
  }

  v8 = result;
  sub_2663D9B50();
  v3 = sub_2664E04A8();

  if (!(v3 >> 62))
  {
    result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_26;
    }

LABEL_38:

    return 0;
  }

  result = sub_2664E0A68();
  if (!result)
  {
    goto LABEL_38;
  }

LABEL_26:
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_32;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_28;
  }

  __break(1u);
  return result;
}

uint64_t INIntent.uniqueId.getter()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 intentId];
  if (v5)
  {
    v6 = v5;
    v7 = sub_2664E02C8();
    v9 = v8;
  }

  else if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4D8();

    v7 = sub_2664DFA88();
    v9 = v10;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, v11, v1);

  v12 = sub_2664DFE18();
  v13 = sub_2664E06E8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v23 = v9;
    v24 = v15;
    *v14 = 136315138;
    v22 = v7;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800734A0, &qword_2664E3B40);
    v16 = sub_2664E0318();
    v21 = v1;
    v18 = sub_2662A320C(v16, v17, &v24);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_26629C000, v12, v13, "INIntent#refId: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x266784AD0](v15, -1, -1);
    MEMORY[0x266784AD0](v14, -1, -1);

    (*(v2 + 8))(v4, v21);
  }

  else
  {

    (*(v2 + 8))(v4, v1);
  }

  return v7;
}

uint64_t UserPreferenceProvider.preferredMusicBundleIdentifier(deviceProvider:featureFlagProvider:serviceBundleIdentifier:intent:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v11 = 0;
  a6(&v7, a2, a3, a4, a5);
  v13[2] = v9;
  v13[3] = v10;
  v14 = v11;
  v13[0] = v7;
  v13[1] = v8;
  return sub_2663DE5F4(v13);
}

uint64_t sub_2663DE5F4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073450, &qword_2664EAEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2663DE65C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v12 = 0;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  v11 = 0;
  a6(&v7, a2, a3, a4, a5);
  v13[2] = v9;
  v13[3] = v10;
  v14 = v11;
  v13[0] = v7;
  v13[1] = v8;
  return sub_2663DE5F4(v13);
}

id sub_2663DE6D4()
{
  v1 = [*v0 ams_DSID];

  return v1;
}

uint64_t sub_2663DE730@<X0>(void *a1@<X8>)
{
  v13 = [objc_allocWithZone(MEMORY[0x277D27820]) init];
  v2 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v3 = qword_280F8F808;
  v28 = type metadata accessor for MultiUserConnectionProvider();
  v29 = &protocol witness table for MultiUserConnectionProvider;
  *&v27 = v3;
  v4 = type metadata accessor for AccountProvider();
  v5 = swift_allocObject();

  v6 = sub_266360778(v2, &v27, v5);

  v7 = [objc_allocWithZone(MEMORY[0x277D27840]) init];
  v8 = [objc_allocWithZone(MEMORY[0x277D27838]) init];
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

  v9 = qword_280F91470;
  v16 = type metadata accessor for SiriKitTaskLoggingProvider();
  v17 = &protocol witness table for SiriKitTaskLoggingProvider;
  *&v15 = v9;
  v14[3] = &type metadata for WatchOSSupportProvider;
  v14[4] = &off_2877EC0A0;
  v10 = type metadata accessor for MediaPlaybackProvider();
  v11 = swift_allocObject();
  __swift_mutable_project_boxed_opaque_existential_1(v14, &type metadata for WatchOSSupportProvider);
  v11[28] = &type metadata for WatchOSSupportProvider;
  v11[29] = &off_2877EC0A0;
  v11[5] = v4;
  v11[6] = &protocol witness table for AccountProvider;
  v11[2] = v6;
  v11[17] = v13;
  v11[18] = v7;
  v11[19] = v8;
  sub_2662A8618(&v27, (v11 + 20));
  sub_2662A8618(&v24, (v11 + 30));
  sub_2662A8618(&v21, (v11 + 35));
  sub_2662A8618(&v18, (v11 + 7));
  sub_2662A8618(&v15, (v11 + 12));

  result = __swift_destroy_boxed_opaque_existential_1Tm(v14);
  a1[3] = v10;
  a1[4] = &off_2877F3740;
  *a1 = v11;
  return result;
}

uint64_t sub_2663DEA80@<X0>(void *a1@<X8>)
{
  v2 = [objc_allocWithZone(MEMORY[0x277CDD348]) init];
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v3 = qword_280F8F808;
  v9[3] = type metadata accessor for MultiUserConnectionProvider();
  v9[4] = &protocol witness table for MultiUserConnectionProvider;
  v9[0] = v3;
  v4 = type metadata accessor for AccountProvider();
  v5 = swift_allocObject();

  v6 = sub_266360778(v2, v9, v5);

  a1[3] = &type metadata for PlaybackCreateRadioProvider;
  a1[4] = &off_2877EA030;
  v7 = swift_allocObject();
  *a1 = v7;
  v7[5] = v4;
  v7[6] = &protocol witness table for AccountProvider;
  v7[2] = v6;
  return sub_2663DE730(v7 + 7);
}

void sub_2663DEBA4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = *(a2 + 16);
  v11[0] = *a2;
  v11[1] = v10;
  v12[0] = *(a2 + 32);
  *(v12 + 15) = *(a2 + 47);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_26633F1D8(v11, a3, a4, a5);
}

uint64_t sub_2663DEC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void *))
{
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  return (a5)(v6, a2, a3, a4);
}

void sub_2663DEC94(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x277CD5EA8]) init];
  [v4 setModelObject_];
  v5 = [objc_allocWithZone(MEMORY[0x277CD5EB0]) initWithChangeAction_];
  [v4 setRequestAction_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073458, &qword_2664EB038);
  v6 = [swift_getObjCClassFromMetadata() preferredQueue];
  v7 = [v4 newOperationWithResponseHandler_];
  [v6 addOperation_];
}

void sub_2663DEE18(unint64_t a1, uint64_t *a2)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_2664E0A68())
  {
    v6 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x266783B70](v6, a1);
      }

      else
      {
        if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a1 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v10 = v7;
      sub_2663E029C(&v10, a2);

      if (!v2)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t INMediaItem.slimDescription.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072878, &qword_2664E4ED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664EAA60;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  v3 = [v1 identifier];
  if (v3)
  {
    v4 = v3;
    v5 = sub_2664E02C8();
    v7 = v6;

    v8 = MEMORY[0x277D837D0];
  }

  else
  {
    v5 = 0;
    v7 = 0;
    v8 = 0;
    *(inited + 64) = 0;
  }

  *(inited + 48) = v5;
  *(inited + 56) = v7;
  *(inited + 72) = v8;
  *(inited + 80) = 0x656C746974;
  *(inited + 88) = 0xE500000000000000;
  v9 = [v1 title];
  if (v9)
  {
    v10 = v9;
    v11 = sub_2664E02C8();
    v13 = v12;

    v14 = MEMORY[0x277D837D0];
  }

  else
  {
    v11 = 0;
    v13 = 0;
    v14 = 0;
    *(inited + 112) = 0;
  }

  *(inited + 96) = v11;
  *(inited + 104) = v13;
  *(inited + 120) = v14;
  *(inited + 128) = 0x747369747261;
  *(inited + 136) = 0xE600000000000000;
  v15 = [v1 artist];
  if (v15)
  {
    v16 = v15;
    v17 = sub_2664E02C8();
    v19 = v18;

    v20 = MEMORY[0x277D837D0];
  }

  else
  {
    v17 = 0;
    v19 = 0;
    v20 = 0;
    *(inited + 160) = 0;
  }

  *(inited + 144) = v17;
  *(inited + 152) = v19;
  *(inited + 168) = v20;
  *(inited + 176) = 0x6B726F77747261;
  *(inited + 184) = 0xE700000000000000;
  v21 = [v1 artwork];
  v22 = v21;
  if (v21)
  {
    v21 = sub_2662C1744(0, &qword_280073460, 0x277CD3D10);
  }

  else
  {
    *(inited + 200) = 0;
    *(inited + 208) = 0;
  }

  *(inited + 192) = v22;
  *(inited + 216) = v21;
  *(inited + 224) = 1701869940;
  *(inited + 232) = 0xE400000000000000;
  v23 = [v1 type];
  v24 = MEMORY[0x277D83B88];
  *(inited + 240) = v23;
  *(inited + 264) = v24;
  strcpy((inited + 272), "hasAssetInfo");
  *(inited + 285) = 0;
  *(inited + 286) = -5120;
  v25 = [v1 privateMediaItemValueData];
  if (v25 && (v26 = v25, v27 = [v25 assetInfo], v26, v27))
  {

    v28 = 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = MEMORY[0x277D839B0];
  *(inited + 288) = v28;
  *(inited + 312) = v29;
  *(inited + 320) = 0xD000000000000014;
  *(inited + 328) = 0x80000002664F7990;
  v30 = [v1 privateMediaItemValueData];
  if (v30 && (v31 = v30, v32 = [v30 requiresSubscription], v31, v32))
  {
    *(inited + 360) = sub_2662C1744(0, &qword_280F8F550, 0x277CCABB0);
    *(inited + 336) = v32;
  }

  else
  {
    *(inited + 336) = 0u;
    *(inited + 352) = 0u;
  }

  sub_266385778(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072880, &unk_2664E4EE0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
  v33 = sub_2664E01D8();

  return v33;
}

uint64_t INMediaItem.requiresSubscription.getter()
{
  v1 = sub_2664DFE38();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v20[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v5 = [v0 privateMediaItemValueData];
  if (v5 && (v6 = v5, v7 = [v5 requiresSubscription], v6, v7))
  {
    v20[0] = 2;
    MEMORY[0x266783580](v7, v20);

    v8 = v20[0];
  }

  else
  {
    v8 = 0;
  }

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v1, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v4, v9, v1);
  v10 = v0;
  v11 = sub_2664DFE18();
  v12 = sub_2664E06C8();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v19 = v14;
    *v13 = 136315394;
    v15 = INMediaItem.slimDescription.getter();
    v17 = sub_2662A320C(v15, v16, &v19);

    *(v13 + 4) = v17;
    *(v13 + 12) = 1024;
    *(v13 + 14) = v8 & 1;
    _os_log_impl(&dword_26629C000, v11, v12, "INMediaItem#requiresSubscription MediaItem: %s requiresSubscription?: %{BOOL}d", v13, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    MEMORY[0x266784AD0](v14, -1, -1);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  (*(v2 + 8))(v4, v1);
  return v8 & 1;
}

id static INMediaItem.createRadio(title:artist:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  MEMORY[0x2667833B0](0x6574616572632D78, 0xEF6E6F6974617473);
  MEMORY[0x2667833B0](3092282, 0xE300000000000000);
  sub_2664E0C28();
  MEMORY[0x2667833B0](47, 0xE100000000000000);
  v6 = sub_2664E0D48();
  MEMORY[0x2667833B0](v6);

  privateMediaItemDataFromBacking(recommendationId:assetInfo:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(0, 0, 0, 0, MEMORY[0x277D84F90], 0, 0);
  v8 = v7;
  v9 = sub_2664E02A8();

  if (!a2)
  {
    v10 = 0;
    if (!a4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v10 = sub_2664E02A8();
  if (a4)
  {
LABEL_3:
    a4 = sub_2664E02A8();
  }

LABEL_4:
  v11 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v9 title:v10 type:16 artwork:0 artist:a4 topics:0 namedEntities:0 privateMediaItemValueData:v8];

  return v11;
}

id static INMediaItem.syntheticItem(identifier:type:title:artist:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, void *a10)
{
  privateMediaItemDataFromBacking(recommendationId:assetInfo:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(0, 0, 0, 0, a8, a9, a10);
  v14 = v13;
  v15 = sub_2664E02A8();
  if (a5)
  {
    a5 = sub_2664E02A8();
  }

  if (a7)
  {
    a7 = sub_2664E02A8();
  }

  v16 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v15 title:a5 type:a3 artwork:0 artist:a7 topics:0 namedEntities:0 privateMediaItemValueData:v14];

  return v16;
}

id static INMediaItem.allLibrary(mediaType:sharedUserIdFromPlayableMusicAccount:)(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_2664E0D48();
  MEMORY[0x2667833B0](v5);

  privateMediaItemDataFromBacking(recommendationId:assetInfo:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(0, 0, 0, 0, MEMORY[0x277D84F90], a2, a3);
  v7 = v6;
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_2664E02A8();

  v10 = [v8 initWithIdentifier:v9 title:0 type:18 artwork:0 artist:0 topics:0 namedEntities:0 privateMediaItemValueData:v7];

  return v10;
}

id static INMediaItem.podcastLibrary(sharedUserIdFromPlayableMusicAccount:)(uint64_t a1, void *a2)
{
  v4 = sub_2664E0D48();
  MEMORY[0x2667833B0](v4);

  privateMediaItemDataFromBacking(recommendationId:assetInfo:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(0, 0, 0, 0, MEMORY[0x277D84F90], a1, a2);
  v6 = v5;
  v7 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v8 = sub_2664E02A8();

  v9 = [v7 initWithIdentifier:v8 title:0 type:7 artwork:0 artist:0 topics:0 namedEntities:0 privateMediaItemValueData:v6];

  return v9;
}

id static INMediaItem.syntheticItemForAddIntent(with:scheme:contentOrigin:type:title:artist:)(uint64_t a1, uint64_t a2, _BYTE *a3, unsigned __int8 *a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9)
{
  v49 = a6;
  v50 = a8;
  v51 = a9;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a4;
  LOBYTE(v52) = *a3;
  v53 = PlaybackItem.Scheme.rawValue.getter();
  v54 = v20;
  MEMORY[0x2667833B0](3092282, 0xE300000000000000);
  v21 = 0xE600000000000000;
  v22 = 0x656369766564;
  v23 = 0xEC00000079726172;
  v24 = 0x62696C656C6F6877;
  if (v19 != 6)
  {
    v24 = 0x6E776F6E6B6E75;
    v23 = 0xE700000000000000;
  }

  v25 = 0xE400000000000000;
  v26 = 1684630645;
  if (v19 != 4)
  {
    v26 = 0x6867696C746F7073;
    v25 = 0xE900000000000074;
  }

  if (v19 <= 5)
  {
    v24 = v26;
    v23 = v25;
  }

  v27 = 0xEA00000000006573;
  v28 = 0x72657669746C756DLL;
  if (v19 != 2)
  {
    v28 = 0x65726F7473;
    v27 = 0xE500000000000000;
  }

  if (v19)
  {
    v22 = 0x636E797369726973;
    v21 = 0xE800000000000000;
  }

  if (v19 > 1)
  {
    v22 = v28;
    v21 = v27;
  }

  if (v19 <= 3)
  {
    v29 = v22;
  }

  else
  {
    v29 = v24;
  }

  if (v19 <= 3)
  {
    v30 = v21;
  }

  else
  {
    v30 = v23;
  }

  MEMORY[0x2667833B0](v29, v30);

  MEMORY[0x2667833B0](47, 0xE100000000000000);
  MEMORY[0x2667833B0](a1, a2);
  v31 = v53;
  v32 = v54;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v33 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v18, v33, v15);

  v34 = sub_2664DFE18();
  v35 = sub_2664E06C8();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v48 = a7;
    v38 = a5;
    v39 = v37;
    v52 = v37;
    *v36 = 136446210;
    *(v36 + 4) = sub_2662A320C(v31, v32, &v52);
    _os_log_impl(&dword_26629C000, v34, v35, "Creating playback item uri: %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v40 = v39;
    a5 = v38;
    a7 = v48;
    MEMORY[0x266784AD0](v40, -1, -1);
    MEMORY[0x266784AD0](v36, -1, -1);
  }

  (*(v16 + 8))(v18, v15);
  privateMediaItemDataFromBacking(recommendationId:assetInfo:subItemIdentifiers:sharedUserIdFromPlayableMusicAccount:)(0, 0, 0, 0, MEMORY[0x277D84F90], 0, 0);
  v42 = v41;
  v43 = sub_2664E02A8();

  if (a7)
  {
    a7 = sub_2664E02A8();
  }

  if (v51)
  {
    v44 = sub_2664E02A8();
  }

  else
  {
    v44 = 0;
  }

  v45 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentifier:v43 title:a7 type:a5 artwork:0 artist:v44 topics:0 namedEntities:0 privateMediaItemValueData:v42];

  return v45;
}