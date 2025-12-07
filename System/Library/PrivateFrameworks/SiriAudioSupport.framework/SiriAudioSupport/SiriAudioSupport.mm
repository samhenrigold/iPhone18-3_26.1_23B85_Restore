uint64_t FeatureFlagProvider.isResponseFrameworkEnabled.getter()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_26629FC7C(0xD000000000000012, 0x80000002664F5E00, 0x6964754169726953, 0xE90000000000006FLL);
  v5 = sub_26629FC7C(0x5452414D53, 0xE500000000000000, 0xD000000000000011, 0x80000002664F5E20);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280F914F0);
  swift_beginAccess();
  (*(v1 + 16))(v3, v6, v0);
  v7 = sub_2664DFE18();
  v8 = sub_2664E06C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 67109120;
    v10 = v4 & v5;
    *(v9 + 4) = v10 & 1;
    _os_log_impl(&dword_26629C000, v7, v8, "FeatureFlagProvider#isResponseFrameworkEnabled#SiriAudio %{BOOL}d", v9, 8u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  else
  {

    v10 = v4 & v5;
  }

  (*(v1 + 8))(v3, v0);
  return v10 & 1;
}

uint64_t sub_26629FC7C(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v39[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v14 = &v39[-v13];
  v15 = [objc_opt_self() shared];
  v42 = a1;
  v16 = sub_2664E02A8();
  v43 = a3;
  v17 = sub_2664E02A8();
  v18 = [v15 stateForFeature:v16 domain:v17];

  if (v18)
  {
    v19 = v9;
    v20 = v8;
    v41 = [v18 value];
    v21 = v41 == 1;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v22 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    v23 = v19;
    (*(v19 + 16))(v14, v22, v20);

    v24 = sub_2664DFE18();
    v25 = sub_2664E06C8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = v21;
      v28 = v27;
      v44 = v27;
      *v26 = 136446722;
      *(v26 + 4) = sub_2662A320C(v42, a2, &v44);
      *(v26 + 12) = 2082;
      *(v26 + 14) = sub_2662A320C(v43, a4, &v44);
      *(v26 + 22) = 2082;
      if (v41 == 1)
      {
        v29 = 0x64656C62616E65;
      }

      else
      {
        v29 = 0x64656C6261736964;
      }

      if (v41 == 1)
      {
        v30 = 0xE700000000000000;
      }

      else
      {
        v30 = 0xE800000000000000;
      }

      v31 = sub_2662A320C(v29, v30, &v44);

      *(v26 + 24) = v31;
      _os_log_impl(&dword_26629C000, v24, v25, "FeatureFlagProvider#featureIsEnabled Feature flag %{public}s/%{public}s : %{public}s", v26, 0x20u);
      swift_arrayDestroy();
      v32 = v28;
      v21 = v40;
      MEMORY[0x266784AD0](v32, -1, -1);
      MEMORY[0x266784AD0](v26, -1, -1);
    }

    (*(v23 + 8))(v14, v20);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v8, qword_280F914F0);
    swift_beginAccess();
    (*(v9 + 16))(v12, v33, v8);

    v34 = sub_2664DFE18();
    v35 = sub_2664E06C8();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v44 = v37;
      *v36 = 136446466;
      *(v36 + 4) = sub_2662A320C(v42, a2, &v44);
      *(v36 + 12) = 2082;
      *(v36 + 14) = sub_2662A320C(v43, a4, &v44);
      _os_log_impl(&dword_26629C000, v34, v35, "FeatureFlagProvider#featureIsEnabled flag %{public}s/%{public}s : disabled", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v37, -1, -1);
      MEMORY[0x266784AD0](v36, -1, -1);
    }

    (*(v9 + 8))(v12, v8);
    return 0;
  }

  return v21;
}

void *sub_2662A019C(uint64_t a1, unint64_t a2)
{
  v3 = sub_2662A3AC8(a1, a2);
  sub_2662A3BFC(&unk_2877E11D8);
  return v3;
}

uint64_t sub_2662A01E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_2662A0244(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_2662A019C(a5, a6);
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
    result = sub_2664E0B78();
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

unint64_t sub_2662A0374()
{
  MEMORY[0x2667833B0](*(v0 + 16), *(v0 + 24));
  MEMORY[0x2667833B0](10, 0xE100000000000000);
  v31[2] = 0xE700000000000000;
  v1 = sub_2664E0318();
  MEMORY[0x2667833B0](v1);

  MEMORY[0x2667833B0](10, 0xE100000000000000);
  strcpy(v31, " State: RefId: ");
  v2 = 0xE000000000000000;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_2664E0B28();

  v48 = 0xD000000000000012;
  v49 = 0x80000002664FA600;
  swift_beginAccess();
  v46 = *(v0 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072530, &qword_2664EA4E0);
  v3 = sub_2664E0318();
  MEMORY[0x2667833B0](v3);

  MEMORY[0x2667833B0](10, 0xE100000000000000);
  swift_beginAccess();
  if (*(v0 + 64))
  {
    sub_2664E0B28();

    v46 = 0xD000000000000017;
    v47 = 0x80000002664FA700;
    v44 = *(v0 + 64);
    v4 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C50, &qword_2664E63C0);
    v5 = sub_2664E0318();
    MEMORY[0x2667833B0](v5);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v2 = 0x80000002664FA700;
    v29 = 0xD000000000000017;
  }

  else
  {
    v29 = 0;
  }

  swift_beginAccess();
  if (*(v0 + 72) == 2)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
  }

  else
  {
    sub_2664E0B28();

    v44 = 0xD000000000000011;
    v45 = 0x80000002664FA6E0;
    LOBYTE(v42) = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
    v6 = sub_2664E0318();
    MEMORY[0x2667833B0](v6);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v27 = 0xD000000000000011;
    v28 = 0x80000002664FA6E0;
  }

  swift_beginAccess();
  v7 = 0xE000000000000000;
  if (*(v0 + 80))
  {
    sub_2664E0B28();

    v42 = 0xD000000000000018;
    v43 = 0x80000002664FA6C0;
    v40 = *(v0 + 80);
    v8 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C50, &qword_2664E63C0);
    v9 = sub_2664E0318();
    MEMORY[0x2667833B0](v9);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v7 = 0x80000002664FA6C0;
    v26 = 0xD000000000000018;
  }

  else
  {
    v26 = 0;
  }

  swift_beginAccess();
  v10 = 0xE000000000000000;
  v30 = v2;
  if (*(v0 + 88) == 2)
  {
    v25 = 0;
  }

  else
  {
    sub_2664E0B28();

    v40 = 0xD000000000000010;
    v41 = 0x80000002664FA6A0;
    LOBYTE(v38) = *(v0 + 88);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
    v11 = sub_2664E0318();
    MEMORY[0x2667833B0](v11);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v10 = 0x80000002664FA6A0;
    v25 = 0xD000000000000010;
  }

  swift_beginAccess();
  v12 = 0xE000000000000000;
  if (*(v0 + 104))
  {
    v24 = 0;
  }

  else
  {
    sub_2664E0B28();

    v38 = 0xD000000000000018;
    v39 = 0x80000002664FA680;
    v36 = *(v0 + 96);
    LOBYTE(v37) = *(v0 + 104);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073468, &qword_2664EB040);
    v13 = sub_2664E0318();
    MEMORY[0x2667833B0](v13);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v12 = 0x80000002664FA680;
    v24 = 0xD000000000000018;
  }

  swift_beginAccess();
  v14 = 0xE000000000000000;
  if (*(v0 + 120))
  {
    v23 = 0;
  }

  else
  {
    sub_2664E0B28();

    v36 = 0xD000000000000014;
    v37 = 0x80000002664FA660;
    v34 = *(v0 + 112);
    LOBYTE(v35) = *(v0 + 120);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073468, &qword_2664EB040);
    v15 = sub_2664E0318();
    MEMORY[0x2667833B0](v15);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v14 = 0x80000002664FA660;
    v23 = 0xD000000000000014;
  }

  swift_beginAccess();
  v16 = 0xE000000000000000;
  if (*(v0 + 121) == 2)
  {
    v22 = 0;
  }

  else
  {
    sub_2664E0B28();

    v34 = 0xD000000000000017;
    v35 = 0x80000002664FA640;
    LOBYTE(v32) = *(v0 + 121);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C70, &qword_2664E6480);
    v17 = sub_2664E0318();
    MEMORY[0x2667833B0](v17);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v16 = 0x80000002664FA640;
    v22 = 0xD000000000000017;
  }

  swift_beginAccess();
  v18 = 0xE000000000000000;
  if (*(v0 + 128))
  {
    sub_2664E0B28();

    v32 = 0xD000000000000018;
    v33 = 0x80000002664FA620;
    v31[3] = CFCopyDescription(*(v0 + 128));
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2800737F0, &unk_2664E5320);
    v19 = sub_2664E0318();
    MEMORY[0x2667833B0](v19);

    MEMORY[0x2667833B0](10, 0xE100000000000000);
    v20 = 0xD000000000000018;
    v18 = 0x80000002664FA620;
  }

  else
  {
    v20 = 0;
  }

  MEMORY[0x2667833B0](v31[0], 0xE800000000000000);

  MEMORY[0x2667833B0](0xD000000000000012, 0x80000002664FA600);

  MEMORY[0x2667833B0](v29, v30);

  MEMORY[0x2667833B0](v27, v28);

  MEMORY[0x2667833B0](v26, v7);

  MEMORY[0x2667833B0](v25, v10);

  MEMORY[0x2667833B0](v24, v12);

  MEMORY[0x2667833B0](v23, v14);

  MEMORY[0x2667833B0](v22, v16);

  MEMORY[0x2667833B0](v20, v18);

  return v31[1];
}

uint64_t static AirPlayRouteSetupContext.shared(refId:)(char *a1, unint64_t a2)
{
  v4 = sub_2664E0038();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v83 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664E00B8();
  v82 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v81 = &v69 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664E00E8();
  v79 = *(v9 - 8);
  v80 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v76 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v78 = &v69 - v12;
  v13 = sub_2664DFE38();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v69 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v69 - v21;
  if (a2)
  {
    v74 = v7;
    v23 = qword_280071C88;

    if (v23 != -1)
    {
      swift_once();
    }

    v75 = qword_280073EF0;
    [qword_280073EF0 lock];
    if (qword_280071C90 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = off_280073EF8;
    if (*(off_280073EF8 + 2) && (v25 = sub_2662A3E98(a1, a2), (v26 & 1) != 0))
    {
      v83 = a1;
      v27 = *(v24[7] + 8 * v25);
      swift_endAccess();
      v28 = qword_280F914E8;

      if (v28 != -1)
      {
        swift_once();
      }

      v29 = __swift_project_value_buffer(v13, qword_280F914F0);
      swift_beginAccess();
      (*(v14 + 16))(v22, v29, v13);

      v30 = sub_2664DFE18();
      v31 = sub_2664E06C8();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = v14;
        v34 = swift_slowAlloc();
        v86[0] = v34;
        *v32 = 136446466;
        v35 = sub_2662A320C(v83, a2, v86);

        *(v32 + 4) = v35;
        *(v32 + 12) = 2080;

        v36 = sub_2662A0374();
        v38 = v37;

        v39 = sub_2662A320C(v36, v38, v86);

        *(v32 + 14) = v39;
        _os_log_impl(&dword_26629C000, v30, v31, "AirPlayRouteSetupContext#shared Retrieving shared context for refId: %{public}s, %s", v32, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v34, -1, -1);
        MEMORY[0x266784AD0](v32, -1, -1);

        (*(v33 + 8))(v22, v13);
      }

      else
      {

        (*(v14 + 8))(v22, v13);
      }
    }

    else
    {
      v72 = v5;
      v73 = v4;
      swift_endAccess();
      type metadata accessor for AirPlayRouteSetupContext();
      v27 = swift_allocObject();
      *(v27 + 24) = a2;
      *(v27 + 32) = 0;
      *(v27 + 40) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      *(v27 + 48) = 0;
      *(v27 + 72) = 2;
      *(v27 + 80) = 0;
      *(v27 + 88) = 2;
      *(v27 + 96) = 0;
      *(v27 + 104) = 1;
      *(v27 + 112) = 0;
      *(v27 + 120) = 513;
      *(v27 + 136) = 0;
      *(v27 + 144) = 0;
      *(v27 + 128) = 0;
      *(v27 + 16) = a1;
      v40 = qword_280F914E8;

      if (v40 != -1)
      {
        swift_once();
      }

      v41 = __swift_project_value_buffer(v13, qword_280F914F0);
      swift_beginAccess();
      (*(v14 + 16))(v20, v41, v13);

      v42 = sub_2664DFE18();
      v43 = sub_2664E06C8();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v71 = v14;
        v45 = v44;
        v46 = swift_slowAlloc();
        aBlock[0] = v46;
        *v45 = 136446466;
        *(v45 + 4) = sub_2662A320C(a1, a2, aBlock);
        *(v45 + 12) = 2080;

        v47 = sub_2662A0374();
        v70 = v13;
        v48 = a1;
        v50 = v49;

        v51 = sub_2662A320C(v47, v50, aBlock);
        a1 = v48;

        *(v45 + 14) = v51;
        _os_log_impl(&dword_26629C000, v42, v43, "AirPlayRouteSetupContext#shared Retrieving (making new) shared context for refId: %{public}s, %s", v45, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x266784AD0](v46, -1, -1);
        MEMORY[0x266784AD0](v45, -1, -1);

        (*(v71 + 8))(v20, v70);
      }

      else
      {

        (*(v14 + 8))(v20, v13);
      }

      swift_beginAccess();
      swift_retain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = off_280073EF8;
      off_280073EF8 = 0x8000000000000000;
      sub_2662A74BC(v27, a1, a2, isUniquelyReferenced_nonNull_native);

      off_280073EF8 = v85;
      swift_endAccess();
      v57 = v76;
      if (qword_280071C98 != -1)
      {
        swift_once();
      }

      v71 = qword_280073F00;
      sub_2664E00C8();
      if (qword_280071CA0 != -1)
      {
        swift_once();
      }

      v58 = sub_2664E0018();
      v59 = __swift_project_value_buffer(v58, qword_280073F08);
      v60 = v78;
      MEMORY[0x266783140](v57, v59);
      v79 = *(v79 + 8);
      v61 = v57;
      v62 = v80;
      (v79)(v61, v80);
      v63 = swift_allocObject();
      v63[2] = a1;
      v63[3] = a2;
      v63[4] = v77;
      aBlock[4] = sub_266482E94;
      aBlock[5] = v63;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2662A3F90;
      aBlock[3] = &block_descriptor_47;
      v64 = _Block_copy(aBlock);
      v65 = v81;
      sub_2664E0068();
      v85 = MEMORY[0x277D84F90];
      sub_2662A3E08(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v66 = v83;
      v67 = v73;
      sub_2664E0A08();
      MEMORY[0x2667837B0](v60, v65, v66, v64);

      _Block_release(v64);
      (*(v72 + 8))(v66, v67);
      (*(v82 + 8))(v65, v74);
      (v79)(v60, v62);
    }

    [v75 unlock];
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v52 = __swift_project_value_buffer(v13, qword_280F914F0);
    swift_beginAccess();
    (*(v14 + 16))(v17, v52, v13);
    v53 = sub_2664DFE18();
    v54 = sub_2664E06D8();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_26629C000, v53, v54, "AirPlayRouteSetupContext#shared Cannot retrieve context for nil refId", v55, 2u);
      MEMORY[0x266784AD0](v55, -1, -1);
    }

    (*(v14 + 8))(v17, v13);
    return 0;
  }

  return v27;
}

uint64_t sub_2662A1818()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t INPlayMediaIntent.slimDescription.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072878, &qword_2664E4ED8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E9030;
  *(inited + 32) = 0x6449746E65746E69;
  *(inited + 40) = 0xE800000000000000;
  v3 = [v0 intentId];
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
  *(inited + 80) = 0x696669746E656469;
  *(inited + 88) = 0xEA00000000007265;
  v9 = [v1 identifier];
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
  *(inited + 128) = 0x644968636E75616CLL;
  *(inited + 136) = 0xE800000000000000;
  v15 = [v1 launchId];
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
  *(inited + 176) = 0x657449616964656DLL;
  *(inited + 184) = 0xEA0000000000736DLL;
  v21 = [v1 mediaItems];
  v78 = inited;
  if (v21)
  {
    v22 = v21;
    sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
    v23 = sub_2664E04A8();

    if (v23 >> 62)
    {
      goto LABEL_29;
    }

    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v1; v24; i = v1)
    {
      v25 = 0;
      v79 = v23 & 0xC000000000000001;
      v1 = (v23 & 0xFFFFFFFFFFFFFF8);
      v26 = MEMORY[0x277D84F90];
      v27 = v23;
      while (1)
      {
        if (v79)
        {
          v28 = MEMORY[0x266783B70](v25, v23);
        }

        else
        {
          if (v25 >= v1[2])
          {
            goto LABEL_28;
          }

          v28 = *(v23 + 8 * v25 + 32);
        }

        v29 = v28;
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v31 = v24;
        v32 = INMediaItem.slimDescription.getter();
        v34 = v33;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v26 = sub_2663846F4(0, *(v26 + 2) + 1, 1, v26);
        }

        v36 = *(v26 + 2);
        v35 = *(v26 + 3);
        if (v36 >= v35 >> 1)
        {
          v26 = sub_2663846F4((v35 > 1), v36 + 1, 1, v26);
        }

        *(v26 + 2) = v36 + 1;
        v37 = &v26[16 * v36];
        *(v37 + 4) = v32;
        *(v37 + 5) = v34;
        ++v25;
        v24 = v31;
        v38 = v30 == v31;
        v23 = v27;
        if (v38)
        {
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v24 = sub_2664E0A68();
    }

    v26 = MEMORY[0x277D84F90];
LABEL_31:

    v78[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    v78[24] = v26;
    inited = v78;
    v1 = i;
  }

  else
  {
    *(inited + 192) = 0u;
    *(inited + 208) = 0u;
  }

  *(inited + 224) = 0x616553616964656DLL;
  *(inited + 232) = 0xEB00000000686372;
  v39 = [v1 mediaSearch];
  v40 = v39;
  if (v39)
  {
    v39 = sub_2662C1744(0, &qword_280072F18, 0x277CD3DC8);
  }

  else
  {
    *(inited + 248) = 0;
    *(inited + 256) = 0;
  }

  *(inited + 240) = v40;
  *(inited + 264) = v39;
  *(inited + 272) = 0x6F4D746165706572;
  *(inited + 280) = 0xEA00000000006564;
  v41 = [v1 playbackRepeatMode];
  v42 = MEMORY[0x277D83B88];
  *(inited + 288) = v41;
  *(inited + 312) = v42;
  *(inited + 320) = 0x64656C6666756873;
  *(inited + 328) = 0xE800000000000000;
  v43 = [v1 backingStore];
  objc_opt_self();
  v44 = swift_dynamicCastObjCClass();
  if (v44)
  {
    v45 = [v44 playShuffled];

    *(inited + 336) = v45;
    v46 = MEMORY[0x277D839B0];
  }

  else
  {

    v46 = 0;
    *(inited + 336) = 0;
    *(inited + 344) = 0;
    *(inited + 352) = 0;
  }

  *(inited + 360) = v46;
  *(inited + 368) = 0x6465657073;
  *(inited + 376) = 0xE500000000000000;
  v47 = [v1 backingStore];
  objc_opt_self();
  v48 = swift_dynamicCastObjCClass();
  if (v48)
  {
    [v48 playbackSpeed];
    v50 = v49;

    v51 = MEMORY[0x277D839F8];
  }

  else
  {

    v51 = 0;
    *(inited + 392) = 0;
    *(inited + 400) = 0;
    v50 = 0;
  }

  *(inited + 384) = v50;
  *(inited + 408) = v51;
  *(inited + 416) = 0x736574756F72;
  *(inited + 424) = 0xE600000000000000;
  v52 = [v1 hashedRouteUIDs];
  if (v52)
  {
    v53 = v52;
    v54 = sub_2664E04A8();

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  }

  else
  {
    v54 = 0;
    *(inited + 440) = 0;
    *(inited + 448) = 0;
  }

  *(inited + 432) = v54;
  *(inited + 456) = v52;
  *(inited + 464) = 0xD000000000000014;
  *(inited + 472) = 0x80000002664F5C30;
  v55 = [v1 privatePlayMediaIntentData];
  if (v55 && (v56 = v55, v57 = [v55 audioSearchResults], v56, v57))
  {
    sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
    v58 = sub_2664E04A8();

    v59 = v58;
    if (v58 >> 62)
    {
      goto LABEL_63;
    }

    for (j = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10); j; v59 = v74)
    {
      v61 = 0;
      v80 = v59 & 0xC000000000000001;
      v62 = v59 & 0xFFFFFFFFFFFFFF8;
      v63 = MEMORY[0x277D84F90];
      v64 = v59;
      v65 = j;
      while (1)
      {
        if (v80)
        {
          v59 = MEMORY[0x266783B70](v61, v59);
        }

        else
        {
          if (v61 >= *(v62 + 16))
          {
            goto LABEL_62;
          }

          v59 = *(v59 + 8 * v61 + 32);
        }

        v66 = v59;
        v67 = v61 + 1;
        if (__OFADD__(v61, 1))
        {
          break;
        }

        v68 = INMediaItem.slimDescription.getter();
        v70 = v69;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v63 = sub_2663846F4(0, *(v63 + 2) + 1, 1, v63);
        }

        v72 = *(v63 + 2);
        v71 = *(v63 + 3);
        if (v72 >= v71 >> 1)
        {
          v63 = sub_2663846F4((v71 > 1), v72 + 1, 1, v63);
        }

        *(v63 + 2) = v72 + 1;
        v73 = &v63[16 * v72];
        *(v73 + 4) = v68;
        *(v73 + 5) = v70;
        ++v61;
        v59 = v64;
        if (v67 == v65)
        {
          goto LABEL_65;
        }
      }

      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      v74 = v59;
      j = sub_2664E0A68();
    }

    v63 = MEMORY[0x277D84F90];
LABEL_65:

    inited = v78;
    v78[63] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
    v78[60] = v63;
  }

  else
  {
    *(inited + 480) = 0u;
    *(inited + 496) = 0u;
  }

  sub_266385778(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072880, &unk_2664E4EE0);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280074250, &unk_2664E3680);
  v75 = sub_2664E01D8();

  return v75;
}

uint64_t static SiriEnvironmentWrapper.retrieve()()
{
  v0 = sub_2664E0038();
  v105 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v103 = &v92 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_2664E00B8();
  v102 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v101 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_2664E00E8();
  v99 = *(v3 - 8);
  v100 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v92 - v7;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v92 - v15;
  v17 = MEMORY[0x28223BE20](v14);
  v19 = &v92 - v18;
  v20 = MEMORY[0x28223BE20](v17);
  v22 = &v92 - v21;
  MEMORY[0x28223BE20](v20);
  v24 = &v92 - v23;
  if (sub_2662A3168() & 1) != 0 || (sub_2662A317C())
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v13, v25, v9);
    v26 = sub_2664DFE18();
    v27 = sub_2664E06D8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_26629C000, v26, v27, "SiriEnvironmentWrapper called from warmup or makeFlow(from: Parse). This will result in the wrong SiriEnvironment", v28, 2u);
      MEMORY[0x266784AD0](v28, -1, -1);
    }

    (*(v10 + 8))(v13, v9);
    return 0;
  }

  v96 = v0;
  sub_2664DF528();
  v31 = sub_2664DF4F8();
  if (qword_280F91498 != -1)
  {
    swift_once();
  }

  v97 = qword_280F914A0;
  [qword_280F914A0 lock];
  v98 = v31;
  if (!v31 || (, v32 = sub_2664DF508(), , , v32 == v31))
  {
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v64 = qword_280F90B40;
    v63 = unk_280F90B48;
    v65 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v66 = *(v64 - 8);
    MEMORY[0x28223BE20](v65);
    v68 = &v92 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v66 + 16))(v68);
    v105 = (*(v63 + 16))(v64, v63);
    v70 = v69;
    (*(v66 + 8))(v68, v64);
    if (!v70)
    {
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v88 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      (*(v10 + 16))(v16, v88, v9);
      v89 = sub_2664DFE18();
      v90 = sub_2664E06D8();
      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        *v91 = 0;
        _os_log_impl(&dword_26629C000, v89, v90, "SiriEnvironmentWrapper#retrieve Cannot retrieve siriEnvironment for nil refId", v91, 2u);
        MEMORY[0x266784AD0](v91, -1, -1);
      }

      (*(v10 + 8))(v16, v9);
      [v97 unlock];

      return 0;
    }

    if (qword_280F914B0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v71 = off_280F914B8;
    v72 = v105;
    if (!*(off_280F914B8 + 2) || (v73 = sub_2662A3E98(v105, v70), (v74 & 1) == 0))
    {
      swift_endAccess();
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v82 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      (*(v10 + 16))(v19, v82, v9);

      v83 = sub_2664DFE18();
      v84 = sub_2664E06D8();

      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        v86 = swift_slowAlloc();
        v108[0] = v86;
        *v85 = 136446210;
        v87 = sub_2662A320C(v72, v70, v108);

        *(v85 + 4) = v87;
        _os_log_impl(&dword_26629C000, v83, v84, "SiriEnvironmentWrapper#retrieve SiriEnvironment not present for current thread or in the cache for refId: %{public}s", v85, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v86);
        MEMORY[0x266784AD0](v86, -1, -1);
        MEMORY[0x266784AD0](v85, -1, -1);
      }

      else
      {
      }

      (*(v10 + 8))(v19, v9);
      [v97 unlock];

      return 0;
    }

    v29 = *(v71[7] + 8 * v73);
    swift_endAccess();
    v75 = qword_280F914E8;

    if (v75 != -1)
    {
      swift_once();
    }

    v76 = __swift_project_value_buffer(v9, qword_280F914F0);
    swift_beginAccess();
    (*(v10 + 16))(v22, v76, v9);

    v77 = sub_2664DFE18();
    v78 = sub_2664E06C8();

    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      v80 = swift_slowAlloc();
      v108[0] = v80;
      *v79 = 136446210;
      v81 = sub_2662A320C(v72, v70, v108);

      *(v79 + 4) = v81;
      _os_log_impl(&dword_26629C000, v77, v78, "SiriEnvironmentWrapper#retrieve Retrieving cached siriEnvironment for refId: %{public}s", v79, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v80);
      MEMORY[0x266784AD0](v80, -1, -1);
      MEMORY[0x266784AD0](v79, -1, -1);
    }

    else
    {
    }

    (*(v10 + 8))(v22, v9);
    [v97 unlock];
  }

  else
  {
    if (qword_280F90B20 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v33 = qword_280F90B40;
    v34 = unk_280F90B48;
    v35 = __swift_project_boxed_opaque_existential_1(qword_280F90B28, qword_280F90B40);
    v36 = *(v33 - 8);
    MEMORY[0x28223BE20](v35);
    v38 = &v92 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v36 + 16))(v38);
    v95 = (*(v34 + 16))(v33, v34);
    v40 = v39;
    (*(v36 + 8))(v38, v33);
    if (v40)
    {
      v94 = v40;
      v41 = v98;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v42 = __swift_project_value_buffer(v9, qword_280F914F0);
      swift_beginAccess();
      (*(v10 + 16))(v24, v42, v9);

      v43 = sub_2664DFE18();
      v44 = sub_2664E06C8();

      if (os_log_type_enabled(v43, v44))
      {
        v45 = swift_slowAlloc();
        LODWORD(v93) = v44;
        v46 = v41;
        v47 = v45;
        v48 = swift_slowAlloc();
        aBlock[0] = v48;
        *v47 = 136315138;
        v107 = v46;
        v49 = sub_2664E0F18();
        v51 = sub_2662A320C(v49, v50, aBlock);

        *(v47 + 4) = v51;
        _os_log_impl(&dword_26629C000, v43, v93, "SiriEnvironmentWrapper#retrieve SiriEnvironment.forCurrentTask: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x266784AD0](v48, -1, -1);
        MEMORY[0x266784AD0](v47, -1, -1);
      }

      (*(v10 + 8))(v24, v9);
      v52 = v94;
      if (qword_280F914B0 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v29 = v98;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = off_280F914B8;
      off_280F914B8 = 0x8000000000000000;
      sub_2662A3858(v29, v95, v52, isUniquelyReferenced_nonNull_native, sub_2664538D4, sub_26644FF84, sub_2662A39C4);

      off_280F914B8 = v107;
      swift_endAccess();
      if (qword_280071AE8 != -1)
      {
        swift_once();
      }

      v54 = v95;
      v93 = qword_280072CF0;
      sub_2664E00C8();
      if (qword_280071AF0 != -1)
      {
        swift_once();
      }

      v55 = sub_2664E0018();
      v56 = __swift_project_value_buffer(v55, qword_280072CF8);
      MEMORY[0x266783140](v6, v56);
      v57 = v100;
      v99 = *(v99 + 8);
      (v99)(v6, v100);
      v58 = swift_allocObject();
      *(v58 + 16) = v54;
      *(v58 + 24) = v52;
      aBlock[4] = sub_26634FF34;
      aBlock[5] = v58;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_2662A3F90;
      aBlock[3] = &block_descriptor_13;
      v59 = _Block_copy(aBlock);
      v60 = v101;
      sub_2664E0068();
      v107 = MEMORY[0x277D84F90];
      sub_2662A3D78(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      v61 = v103;
      v62 = v96;
      sub_2664E0A08();
      MEMORY[0x2667837B0](v8, v60, v61, v59);
      _Block_release(v59);
      (*(v105 + 8))(v61, v62);
      (*(v102 + 8))(v60, v104);
      (v99)(v8, v57);
    }

    else
    {
      v29 = v98;
    }

    [v97 unlock];
  }

  return v29;
}

uint64_t sub_2662A3130()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
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

unint64_t sub_2662A320C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_2662A0244(v11, 0, 0, 1, a1, a2);
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
    sub_2662A01E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
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

uint64_t sub_2662A3324(unsigned __int8 *a1, const char *a2, ...)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v11 = 67109120;
    *(v11 + 4) = *a1;
    _os_log_impl(&dword_26629C000, v9, v10, a2, v11, 8u);
    MEMORY[0x266784AD0](v11, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return *a1;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_7(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_12(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_15(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_24(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_25(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_26(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_27(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_29(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_30(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_31(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_32(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_33(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_34(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_35(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_37(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_42(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_45(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_46(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_47(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_49(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_50(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_51(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_52(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_53(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_2662A3858(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_2662A3E98(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_2662A3E98(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      result = sub_2664E0DD8();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;
  }

  else
  {
    a7(v17, a2, a3, a1, v27);
  }
}

unint64_t sub_2662A39CC(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

void *sub_2662A3A54(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072D28, &qword_2664E6A28);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_2662A3AC8(uint64_t a1, unint64_t a2)
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

  v6 = sub_2662A3A54(v5, 0);
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

  result = sub_2664E0B78();
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
        v10 = sub_2664E03A8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2662A3A54(v10, 0);
        result = sub_2664E0B08();
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

uint64_t sub_2662A3BFC(uint64_t result)
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

  result = sub_26634D85C(result, v11, 1, v3);
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

uint64_t sub_2662A3CE8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2662A3D30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2662A3D78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2662A3DC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2662A3E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2662A3E50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2662A3E98(uint64_t a1, uint64_t a2)
{
  sub_2664E0E68();
  sub_2664E0368();
  v4 = sub_2664E0EB8();

  return sub_2662A5B2C(a1, a2, v4);
}

uint64_t sub_2662A3F34(void *a1, void *a2, void *a3, uint64_t a4)
{
  if (*a1 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v4 = *a2;

  return v4;
}

uint64_t sub_2662A3F90(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_2662A3FD4()
{
  v0 = sub_2664DFE38();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2662A3324(&byte_2800741B9, "SiriAudio#isMakeFlowFromParse#get %{BOOL}d");
  if (result)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v5 = __swift_project_value_buffer(v0, qword_280F914F0);
    swift_beginAccess();
    (*(v1 + 16))(v3, v5, v0);
    v6 = sub_2664DFE18();
    v7 = sub_2664E06D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134217984;
      *(v8 + 4) = 1000;
      _os_log_impl(&dword_26629C000, v6, v7, "SiriAudio#isMakeFlowFromParse#reset makeFlow(from:) did not finish within %ldms.", v8, 0xCu);
      MEMORY[0x266784AD0](v8, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return sub_2662A5354(0);
  }

  return result;
}

void sub_2662A41AC(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, unsigned int a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char *a15, uint64_t a16, void *a17)
{
  v137 = a8;
  v133 = a7;
  v140 = a6;
  v135 = a5;
  v131 = a4;
  v147 = a3;
  v136 = a2;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  MEMORY[0x28223BE20](v18 - 8);
  v134 = &v125 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v138 = &v125 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v125 - v23;
  v25 = sub_2664DEA08();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v146 = &v125 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_2664DFE38();
  v29 = *(v28 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v126 = &v125 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v139 = &v125 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v132 = &v125 - v35;
  MEMORY[0x28223BE20](v34);
  v37 = &v125 - v36;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v28, qword_280F914F0);
  swift_beginAccess();
  v39 = *(v29 + 16);
  v143 = v38;
  v149 = v39;
  v150 = v29 + 16;
  v39(v37, v38, v28);
  v40 = a1;
  v41 = sub_2664DFE18();
  v42 = sub_2664E06C8();
  v145 = a1;
  v43 = v29;
  v44 = v42;
  v130 = v40;

  v45 = os_log_type_enabled(v41, v44);
  v144 = v28;
  v141 = v26;
  v142 = v25;
  if (v45)
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    *v46 = 136315138;
    v151 = v145;
    v152[0] = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AE8, &qword_2664E5E10);
    v48 = sub_2664E0938();
    v50 = sub_2662A320C(v48, v49, v152);

    *(v46 + 4) = v50;
    v51 = v147;
    v25 = v142;
    _os_log_impl(&dword_26629C000, v41, v44, "SiriKitTaskLoggingProvider#submitMetric domainContext created %s", v46, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    v52 = v47;
    v26 = v141;
    MEMORY[0x266784AD0](v52, -1, -1);
    MEMORY[0x266784AD0](v46, -1, -1);

    v148 = *(v43 + 8);
    v148(v37, v144);
  }

  else
  {

    v148 = *(v43 + 8);
    v148(v37, v28);
    v51 = v147;
  }

  sub_2662A7224(v136, v24, &qword_280072A98, &unk_2664E58C0);
  v53 = *(v26 + 48);
  if (v53(v24, 1, v25) == 1)
  {
    (*(v26 + 104))(v146, *MEMORY[0x277D5BBE8], v25);
    if (v53(v24, 1, v25) != 1)
    {
      sub_2662A9238(v24, &qword_280072A98, &unk_2664E58C0);
    }
  }

  else
  {
    (*(v26 + 32))(v146, v24, v25);
  }

  v136 = v43;
  v129 = a13;
  if (v51)
  {
    v54 = [v51 typeName];
    v128 = sub_2664E02C8();
    v127 = v55;
  }

  else
  {
    v128 = 0;
    v127 = 0xE000000000000000;
  }

  sub_2664DE8D8();
  sub_2662A7224(v131, v134, &qword_280072AA0, &qword_2664E9EA0);
  v56 = swift_allocObject();
  *(v56 + 16) = v135;
  *(v56 + 24) = v140;
  v57 = v133;
  *(v56 + 32) = v145;
  *(v56 + 40) = v57;
  *(v56 + 48) = v137;
  *(v56 + 56) = a9;
  *(v56 + 64) = a10;
  *(v56 + 72) = a11;
  v58 = v129;
  *(v56 + 80) = a12;
  *(v56 + 88) = v58;
  *(v56 + 96) = a14;

  v133 = v130;

  sub_2664DE888();
  v59 = v132;
  v60 = v143;
  v61 = v144;
  v149(v132, v143, v144);
  v62 = sub_2664DFE18();
  v63 = sub_2664E06C8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_26629C000, v62, v63, "SiriKitTaskLoggingProvider#submitMetric siriKitEvent created", v64, 2u);
    MEMORY[0x266784AD0](v64, -1, -1);
  }

  v148(v59, v61);
  v65 = v138;
  (*(v141 + 56))(v138, 1, 1, v142);
  v66 = v139;
  if (qword_280F91480 != -1)
  {
    swift_once();
  }

  if (byte_280F91488 == 1)
  {
    v67 = *(a15 + 15);
    v68 = *(a15 + 16);
    __swift_project_boxed_opaque_existential_1(a15 + 12, v67);
    (*(v68 + 8))(v65, v67, v68);
  }

  sub_2664DE7D8();
  __swift_project_boxed_opaque_existential_1(v152, v152[3]);
  sub_2664DE7E8();
  sub_2662A9238(v65, &qword_280072A98, &unk_2664E58C0);
  __swift_destroy_boxed_opaque_existential_1Tm(v152);
  v149(v66, v60, v61);

  v69 = sub_2664DFE18();
  v70 = sub_2664E06C8();

  v71 = os_log_type_enabled(v69, v70);
  v146 = a15;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v73 = v66;
    v74 = swift_slowAlloc();
    v152[0] = v74;
    *v72 = 136315138;
    v75 = sub_2664DE898();
    v77 = sub_2662A320C(v75, v76, v152);

    *(v72 + 4) = v77;
    v60 = v143;
    _os_log_impl(&dword_26629C000, v69, v70, "SiriKitTaskLoggingProvider#submitMetric siriKitEvent sent %s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v74);
    MEMORY[0x266784AD0](v74, -1, -1);
    MEMORY[0x266784AD0](v72, -1, -1);

    v78 = v73;
  }

  else
  {

    v78 = v66;
  }

  v148(v78, v61);
  if (!v147)
  {
    goto LABEL_34;
  }

  v79 = v147;
  v80 = _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(v79);
  if (!v81 || (Party16bundleIdentifierSbSS_tFZ_0 = _s16SiriAudioSupport17BundleIdentifiersO12isFirstParty16bundleIdentifierSbSS_tFZ_0(v80, v81), , (Party16bundleIdentifierSbSS_tFZ_0 & 1) == 0))
  {

LABEL_34:

    return;
  }

  v83 = sub_2663DDFF8();
  if (v83)
  {
    v84 = v83;
    v85 = v145;
    if (v145)
    {
      v86 = [v133 mediaPlayerContext];
      if (v86)
      {
        v87 = v86;
        v88 = [v86 mediaPlayerPlaybackContext];

        if (v88)
        {
          v89 = [v88 linkId];

          if (v89)
          {

            objc_opt_self();
            v90 = swift_dynamicCastObjCClass();
            if (v90 && (v91 = [v90 mediaItems]) != 0)
            {
              v92 = v91;
              sub_2662C1744(0, &qword_280F8F650, 0x277CD3DB8);
              v93 = sub_2664E04A8();
            }

            else
            {
              v93 = MEMORY[0x277D84F90];
            }

            v98 = [v133 mediaPlayerContext];
            v99 = [v98 mediaPlayerPlaybackContext];

            v100 = [v99 linkId];
            v101 = sub_2664E08A8();
            sub_2663250BC(v84, v93, v100, v101, v102, a16);

            v85 = v145;
          }
        }
      }
    }

    v103 = [v84 identifier];
    if (v103)
    {
      v104 = v103;
      v105 = sub_2664E02C8();
      v107 = v106;

      v85 = v145;
    }

    else
    {
      v105 = 0;
      v107 = 0xE000000000000000;
    }

    static PlaybackItem.Identifier.parse(uri:)(v105, v107, v152);

    if (!v152[2])
    {
      goto LABEL_59;
    }

    if (!v85 || (v108 = v152[0], (v109 = [v133 mediaPlayerContext]) == 0) || (v110 = v109, v111 = objc_msgSend(v109, sel_mediaPlayerPlaybackContext), v110, !v111) || (v112 = objc_msgSend(v111, sel_radioStationContext), v111, !v112) || (v113 = objc_msgSend(v112, sel_linkId), v112, !v113))
    {

      return;
    }

    LOBYTE(v152[0]) = v108;
    if (PlaybackItem.Scheme.rawValue.getter() == 0x6172706D61732D78 && v114 == 0xEB000000006F6964)
    {
    }

    else
    {
      v115 = sub_2664E0D88();

      if ((v115 & 1) == 0)
      {
LABEL_59:

        return;
      }
    }

    v116 = [v84 title];
    if (v116)
    {
      v117 = v116;
      v118 = sub_2664E02C8();
      v120 = v119;
    }

    else
    {
      v118 = 0;
      v120 = 0xE000000000000000;
    }

    v121 = [a17 radioStationContext];
    v122 = [v121 linkId];

    v123 = sub_2664E08A8();
    sub_266326050(v118, v120, v122, v123, v124);

    goto LABEL_59;
  }

  v94 = v126;
  v149(v126, v60, v61);
  v95 = sub_2664DFE18();
  v96 = sub_2664E06D8();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 0;
    _os_log_impl(&dword_26629C000, v95, v96, "SiriKitTaskLoggingProvider#submitMetric Unexpected nil or empty items. Not emitting mediaPlayerPlaybackContext or mediaPlayerRadioStationContext", v97, 2u);
    MEMORY[0x266784AD0](v97, -1, -1);
  }

  else
  {
  }

  v148(v94, v61);
}

uint64_t sub_2662A5020()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

void *__swift_memcpy13_1(void *result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 5) = *(a2 + 5);
  *result = v2;
  return result;
}

uint64_t static MultiUserConnectionProvider.shared.getter()
{
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }
}

uint64_t static DeviceProvider.shared.getter@<X0>(_BYTE *a1@<X8>)
{
  if (qword_280F90D58 != -1)
  {
    v5 = a1;
    result = swift_once();
    a1 = v5;
  }

  v1 = BYTE1(dword_280F90D60);
  v2 = BYTE2(dword_280F90D60);
  v3 = HIBYTE(dword_280F90D60);
  v4 = byte_280F90D64;
  *a1 = dword_280F90D60;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  a1[4] = v4;
  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t static SiriKitTaskLoggingProvider.shared.getter()
{
  if (qword_280F91468 != -1)
  {
    swift_once();
  }
}

uint64_t static FeatureFlagProvider.shared.getter@<X0>(void *a1@<X8>)
{
  if (qword_280F905C0 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_280F905C8;
  *(a1 + 5) = *(&qword_280F905C8 + 5);
  return result;
}

uint64_t static ExecutorProvider.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280F90B20 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_2662A5550(qword_280F90B28, a1);
}

uint64_t sub_2662A5354(char a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    *v9 = 67109120;
    *(v9 + 4) = a1 & 1;
    _os_log_impl(&dword_26629C000, v7, v8, "SiriAudio#isMakeFlowFromParse#set %{BOOL}d", v9, 8u);
    MEMORY[0x266784AD0](v9, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  byte_2800741B9 = a1 & 1;
  if (a1)
  {
    return sub_2664D5270();
  }

  return result;
}

uint64_t sub_2662A5550(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_2662A55B4(uint64_t a1, uint64_t a2, char a3, __int16 a4)
{
  v8 = sub_2664DFE38();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &aBlock[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v8, qword_280F914F0);
  swift_beginAccess();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2664DFE18();
  v14 = sub_2664E06C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_26629C000, v13, v14, "SubscriptionProvider#status Gathering music subscription status", v15, 2u);
    MEMORY[0x266784AD0](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v16 = [objc_opt_self() sharedStatusController];
  v17 = [objc_opt_self() activeAccount];
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a4;
  aBlock[4] = sub_2662A66B0;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A6624;
  aBlock[3] = &block_descriptor_89;
  v19 = _Block_copy(aBlock);

  [v16 getSubscriptionStatusForUserIdentity:v17 bypassingCache:a3 & 1 withCompletionHandler:v19];
  _Block_release(v19);
}

uint64_t sub_2662A5888()
{

  return MEMORY[0x2821FE8E8](v0, 34, 7);
}

uint64_t _s16SiriAudioSupport17BundleIdentifiersO05localD10Identifier3forSSSgSo8INIntentC_tFZ_0(void *a1)
{
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 launchId];
  if (v6)
  {
    v7 = v6;
    v8 = sub_2664E02C8();
    v10 = v9;

    v11 = _s16SiriAudioSupport17BundleIdentifiersO26extractAppInfoFromLaunchId3forSSSgSS_tFZ_0(v8, v10);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v12 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v5, v12, v2);
    v13 = sub_2664DFE18();
    v14 = sub_2664E06C8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_26629C000, v13, v14, "BundleIdentifiers#localBundleIdentifier no launchId in intent", v15, 2u);
      MEMORY[0x266784AD0](v15, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v11;
}

unint64_t sub_2662A5AC8()
{
  result = qword_280F8F660;
  if (!qword_280F8F660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_280074210, &qword_2664E3640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F660);
  }

  return result;
}

unint64_t sub_2662A5B2C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_2664E0D88())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t _s16SiriAudioSupport5TasksV11parallelize5queue5tasks10completionySo012OS_dispatch_F0C_yyyccdyyctFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v32 = a4;
  v6 = sub_2664E0038();
  v34 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2664E00B8();
  v33 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2664DF528();
  v12 = sub_2664DF4F8();
  if (!v12)
  {
    v12 = sub_2664DF518();
  }

  v13 = v12;
  v39 = a1;
  v40 = dispatch_group_create();
  v14 = *(a2 + 16);
  v15 = v11;
  if (v14)
  {
    v16 = (a2 + 32);
    v36 = (v34 + 8);
    v37 = &v44;
    v35 = (v33 + 8);
    v38 = v9;
    do
    {
      v17 = swift_allocObject();
      v18 = *v16++;
      *(v17 + 16) = v18;

      v19 = v40;
      dispatch_group_enter(v40);
      v20 = swift_allocObject();
      v20[2] = v13;
      v20[3] = sub_2662A617C;
      v20[4] = v17;
      v20[5] = v19;
      v46 = sub_26640431C;
      v47 = v20;
      aBlock = MEMORY[0x277D85DD0];
      v43 = 1107296256;
      v44 = sub_2662A3F90;
      v45 = &block_descriptor_35;
      v21 = _Block_copy(&aBlock);

      v22 = v19;
      sub_2664E0068();
      v41 = MEMORY[0x277D84F90];
      sub_2662A6120();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
      sub_2662A5AC8();
      sub_2664E0A08();
      MEMORY[0x266783800](0, v15, v8, v21);
      v23 = v21;
      v9 = v38;
      _Block_release(v23);

      (*v36)(v8, v6);
      (*v35)(v15, v9);

      --v14;
    }

    while (v14);
  }

  v24 = swift_allocObject();
  v25 = v31;
  v26 = v32;
  v24[2] = v13;
  v24[3] = v25;
  v24[4] = v26;
  v46 = sub_266404328;
  v47 = v24;
  aBlock = MEMORY[0x277D85DD0];
  v43 = 1107296256;
  v44 = sub_2662A3F90;
  v45 = &block_descriptor_42;
  v27 = _Block_copy(&aBlock);

  sub_2664E0068();
  v41 = MEMORY[0x277D84F90];
  sub_2662A6120();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  v28 = v15;
  sub_2662A5AC8();
  sub_2664E0A08();
  v29 = v40;
  sub_2664E0758();
  _Block_release(v27);

  (*(v34 + 8))(v8, v6);
  (*(v33 + 8))(v28, v9);
}

uint64_t sub_2662A6094()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662A60DC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t sub_2662A6120()
{
  result = qword_280F8F6A0;
  if (!qword_280F8F6A0)
  {
    sub_2664E0038();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280F8F6A0);
  }

  return result;
}

uint64_t sub_2662A6184(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v8[0] = sub_2662AA544;
  v8[1] = v6;

  a3(v8);
}

uint64_t sub_2662A6220()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662A6270()
{
  v1 = *(sub_2664DEA08() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_2662A62D4(v2, v3);
}

uint64_t sub_2662A62D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DEA08();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  swift_beginAccess();
  v8 = *(a1 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a1 + 16) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_266384F50(0, v8[2] + 1, 1, v8);
    *(a1 + 16) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_266384F50((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a1 + 16) = v8;
  return swift_endAccess();
}

void sub_2662A6624(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_2662A66BC(void *a1, void *a2, void (*a3)(void **), uint64_t a4, int a5)
{
  v53 = a5;
  v55 = a4;
  v56 = a3;
  v57 = a2;
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v50 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v15 = &v50 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v50 - v16;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v6, qword_280F914F0);
  swift_beginAccess();
  v54 = *(v7 + 16);
  v54(v17, v18, v6);
  v19 = sub_2664DFE18();
  v20 = sub_2664E06C8();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v51 = a1;
    v22 = v6;
    v23 = v15;
    v24 = v12;
    v25 = v7;
    v26 = v21;
    *v21 = 0;
    _os_log_impl(&dword_26629C000, v19, v20, "SubscriptionProvider#status Subscription status request completed", v21, 2u);
    v27 = v26;
    v7 = v25;
    v12 = v24;
    v15 = v23;
    v6 = v22;
    a1 = v51;
    MEMORY[0x266784AD0](v27, -1, -1);
  }

  v30 = *(v7 + 8);
  v29 = (v7 + 8);
  v28 = v30;
  v30(v17, v6);
  v31 = v57;
  if (v57)
  {
    v54(v15, v18, v6);
    v32 = v31;
    v33 = sub_2664DFE18();
    v34 = sub_2664E06D8();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v58 = v36;
      *v35 = 136315138;
      swift_getErrorValue();
      v37 = sub_2664E0DE8();
      v39 = sub_2662A320C(v37, v38, &v58);

      *(v35 + 4) = v39;
      v31 = v57;
      _os_log_impl(&dword_26629C000, v33, v34, "SubscriptionProvider#status Error while getting subscription status %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266784AD0](v36, -1, -1);
      MEMORY[0x266784AD0](v35, -1, -1);
    }

    v28(v15, v6);
    LOWORD(v58) = v53;
    v56(&v58);
  }

  else if (a1)
  {
    v57 = v29;
    v40 = a1;
    v41 = [v40 statusType];
    if (v41 == 1)
    {
      v42 = 1;
    }

    else
    {
      v42 = 2 * (v41 == 2);
    }

    sub_2662A6C48(v40, &v58);
    v43 = v58;
    v54(v52, v18, v6);
    v44 = sub_2664DFE18();
    v45 = sub_2664E06C8();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 134218240;
      *(v46 + 4) = v42;
      *(v46 + 12) = 2048;
      *(v46 + 14) = v43;
      _os_log_impl(&dword_26629C000, v44, v45, "SubscriptionProvider#status Subscription status found as: musicSubscriptionStatus=%ld, musicSubscriptionType=%ld", v46, 0x16u);
      MEMORY[0x266784AD0](v46, -1, -1);
    }

    v28(v52, v6);
    LOBYTE(v58) = v42;
    BYTE1(v58) = v43;
    v56(&v58);
  }

  else
  {
    v54(v12, v18, v6);
    v47 = sub_2664DFE18();
    v48 = sub_2664E06D8();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_26629C000, v47, v48, "SubscriptionProvider#status Received nil subscription status", v49, 2u);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    v28(v12, v6);
    LOWORD(v58) = v53;
    v56(&v58);
  }
}

id sub_2662A6C48@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v30 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v30 - v12;
  result = [a1 statusType];
  if (result == 2)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v20 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    v32 = *(v5 + 16);
    v32(v11, v20, v4);
    v21 = sub_2664DFE18();
    v22 = sub_2664E06C8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v31 = a2;
      v24 = v23;
      *v23 = 0;
      _os_log_impl(&dword_26629C000, v21, v22, "SubscriptionProvider#subscriptionType account is not subscribed", v23, 2u);
      v25 = v24;
      a2 = v31;
      MEMORY[0x266784AD0](v25, -1, -1);
    }

    v26 = *(v5 + 8);
    v26(v11, v4);
    result = [a1 isMatchEnabled];
    if (result)
    {
      v32(v8, v20, v4);
      v27 = sub_2664DFE18();
      v28 = sub_2664E06C8();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_26629C000, v27, v28, "SubscriptionProvider#subscriptionType account has iTunes match enabled", v29, 2u);
        MEMORY[0x266784AD0](v29, -1, -1);
      }

      result = (v26)(v8, v4);
      v19 = 8;
    }

    else
    {
      v19 = 1;
    }
  }

  else if (result == 1)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v15 = __swift_project_value_buffer(v4, qword_280F914F0);
    swift_beginAccess();
    (*(v5 + 16))(v13, v15, v4);
    v16 = sub_2664DFE18();
    v17 = sub_2664E06C8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_26629C000, v16, v17, "SubscriptionProvider#subscriptionType account is subscribed", v18, 2u);
      MEMORY[0x266784AD0](v18, -1, -1);
    }

    result = (*(v5 + 8))(v13, v4);
    v19 = 5;
  }

  else
  {
    v19 = 0;
  }

  *a2 = v19;
  return result;
}

uint64_t sub_2662A7040(__int16 *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

void sub_2662A707C(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v7 = (v5 + *(v6 + 80) + 8) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 11) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 11) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = (v11 + 23) & 0xFFFFFFFFFFFFFFF8;
  v13 = (v12 + 23) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  sub_2662A41AC(a1, v1 + v4, *(v1 + v5), v1 + v7, *(v1 + v8), *(v1 + v9), *(v1 + v10), *(v1 + v10 + 8), *(v1 + v11), *(v1 + v11 + 8), *(v1 + v12), *(v1 + v12 + 8), *(v1 + v13), *(v1 + v13 + 8), *(v1 + v14), *(v1 + ((v14 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_2662A7224(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2662A72F4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2662A7364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2662A73DC(uint64_t (*a1)(void), uint64_t (*a2)(uint64_t, uint64_t))
{
  if (static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF4E8();
    v4 = a1();

    return v4 & 1;
  }

  else
  {
    sub_2664DEC08();
    v6 = v10;
    v7 = v11;
    __swift_project_boxed_opaque_existential_1(v9, v10);
    v8 = a2(v6, v7);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    return v8 & 1;
  }
}

uint64_t sub_2662A74FC(void *a1, uint64_t a2, void *a3, uint64_t a4, int a5, unint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v96 = a8;
  v101 = a7;
  v92 = a6;
  v97 = a5;
  v98 = a4;
  v99 = a2;
  v103 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0);
  v93 = *(v18 - 8);
  v95 = *(v93 + 64);
  MEMORY[0x28223BE20](v18 - 8);
  v102 = &v80 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  v90 = *(v20 - 8);
  v91 = *(v90 + 64);
  MEMORY[0x28223BE20](v20 - 8);
  v94 = &v80 - v21;
  v22 = sub_2664DFE38();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v80 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_2664DE4A8();
  v27 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v29 = &v80 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = a1;
  if (a1)
  {
    sub_2664DE498();
    v30 = objc_allocWithZone(MEMORY[0x277D5AC78]);
    v31 = sub_2664DE478();
    v32 = [v30 initWithNSUUID_];

    v33 = *(v27 + 8);
    v33(v29, v26);
    v34 = v100;
    [v100 setLinkId_];

    v35 = [v34 radioStationContext];
    if (v35)
    {
      v36 = v35;
      sub_2664DE498();
      v37 = objc_allocWithZone(MEMORY[0x277D5AC78]);
      v38 = sub_2664DE478();
      v39 = [v37 initWithNSUUID_];

      v33(v29, v26);
      [v36 setLinkId_];
    }
  }

  LOBYTE(v104[0]) = 5;
  v40 = sub_26632A4E8(v103, v104);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v89 = a17;
  v88 = a16;
  v84 = a15;
  v87 = a14;
  v83 = a13;
  v86 = a12;
  v82 = a11;
  v85 = a10;
  v81 = a9;
  v41 = __swift_project_value_buffer(v22, qword_280F914F0);
  swift_beginAccess();
  (*(v23 + 16))(v25, v41, v22);
  v42 = sub_2664DFE18();
  v43 = sub_2664E06C8();
  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    *v44 = 67109120;
    *(v44 + 4) = v40;
    _os_log_impl(&dword_26629C000, v42, v43, "SiriKitTaskLoggingProvider#submitMetric flowTaskType established %d", v44, 8u);
    MEMORY[0x266784AD0](v44, -1, -1);
  }

  (*(v23 + 8))(v25, v22);
  v45 = v94;
  sub_2662A7224(v92, v94, &qword_280072A98, &unk_2664E58C0);
  sub_2662A7224(v101, v102, &qword_280072AA0, &qword_2664E9EA0);
  v46 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v47 = (v91 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = (*(v93 + 80) + v47 + 8) & ~*(v93 + 80);
  LODWORD(v101) = v40;
  v49 = (v95 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 11) & 0xFFFFFFFFFFFFFFF8;
  v51 = (v50 + 11) & 0xFFFFFFFFFFFFFFF8;
  v52 = (v51 + 23) & 0xFFFFFFFFFFFFFFF8;
  v53 = (v52 + 23) & 0xFFFFFFFFFFFFFFF8;
  v93 = (v53 + 23) & 0xFFFFFFFFFFFFFFF8;
  v95 = (v93 + 23) & 0xFFFFFFFFFFFFFFF8;
  v92 = (v95 + 15) & 0xFFFFFFFFFFFFFFF8;
  v91 = (v92 + 15) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  sub_266319B8C(v45, v54 + v46, &qword_280072A98, &unk_2664E58C0);
  v55 = v102;
  v56 = v103;
  *(v54 + v47) = v103;
  sub_266319B8C(v55, v54 + v48, &qword_280072AA0, &qword_2664E9EA0);
  *(v54 + v49) = v96;
  *(v54 + v50) = v101;
  v57 = (v54 + v51);
  v58 = v85;
  *v57 = v81;
  v57[1] = v58;
  v59 = (v54 + v52);
  v60 = v86;
  *v59 = v82;
  v59[1] = v60;
  v61 = (v54 + v53);
  v62 = v87;
  *v61 = v83;
  v61[1] = v62;
  v63 = (v54 + v93);
  v64 = v88;
  *v63 = v84;
  v63[1] = v64;
  v65 = v99;
  v66 = v100;
  *(v54 + v95) = v99;
  *(v54 + v92) = v89;
  *(v54 + v91) = v66;
  v67 = v56;
  v68 = qword_280F90B20;
  v69 = v67;

  v70 = v66;
  if (v68 != -1)
  {
    swift_once();
  }

  if (v97)
  {
    v71 = 0;
  }

  else
  {
    v71 = v98;
  }

  swift_beginAccess();
  sub_2662A5550(qword_280F90B28, v104);
  v72 = v105;
  v73 = v106;
  __swift_project_boxed_opaque_existential_1(v104, v105);
  v74 = (*(v73 + 16))(v72, v73);
  v76 = v75;
  __swift_destroy_boxed_opaque_existential_1Tm(v104);
  type metadata accessor for AirPlayRouteProvider();
  v77 = swift_allocObject();
  type metadata accessor for AirPlayRouteSetupContext();
  v78 = static AirPlayRouteSetupContext.shared(refId:)(v74, v76);

  *(v77 + 16) = v78;
  sub_2662A7FF4(v101, v103, v71, v66, v77, sub_2662A707C, v54, v65);
}

uint64_t sub_2662A7D44()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v6 = *(v5 + 80);
  v7 = (v4 + v6 + 8) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_2664DEA08();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = sub_2664DE808();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  v13 = (((((((((((((((((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 11) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v13 + 8, v2 | v6 | 7);
}

id sub_2662A7FF4(unsigned int a1, void *a2, uint64_t a3, void *a4, uint64_t a5, void (*a6)(void), uint64_t a7, void *a8)
{
  v68 = a8;
  v69 = a6;
  v66 = a3;
  v67 = a1;
  v12 = sub_2664DFE38();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v62 - v17;
  v71[3] = type metadata accessor for AirPlayRouteProvider();
  v71[4] = &protocol witness table for AirPlayRouteProvider;
  v71[0] = a5;
  v19 = objc_allocWithZone(MEMORY[0x277D57520]);

  v20 = [v19 init];
  if (!v20)
  {
    goto LABEL_8;
  }

  v21 = v20;
  v65 = a7;
  v22 = [objc_allocWithZone(MEMORY[0x277D57628]) init];
  if (!v22)
  {

LABEL_8:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v16, v34, v12);
    v35 = sub_2664DFE18();
    v36 = sub_2664E06D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_26629C000, v35, v36, "FLOWSchemaFLOWDomainContext error creating domainContext. Returning nil", v37, 2u);
      MEMORY[0x266784AD0](v37, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    v69(0);
    return __swift_destroy_boxed_opaque_existential_1Tm(v71);
  }

  v23 = v22;
  v64 = a2;
  if (!a2)
  {
    goto LABEL_25;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    v38 = 0;
    if (!a4)
    {
      goto LABEL_29;
    }

LABEL_26:
    v47 = a4;
    if (_s16SiriAudioSupport34MediaPlayerPlaybackContextProviderC10isNotEmpty08playbackG0SbSo019FLOWSchemaFLOWMediaefG0C_tFZ_0(v47))
    {
      [v23 setMediaPlayerPlaybackContext_];

LABEL_34:
      [v23 setMediaType_];
      [v23 clearActiveSubscriptions];
      [v23 setTaskType_];
      v52 = v68[5];
      v53 = v68[6];
      __swift_project_boxed_opaque_existential_1(v68 + 2, v52);
      sub_2662A5550(v71, v70);
      v54 = swift_allocObject();
      v55 = v64;
      v54[2] = v23;
      v54[3] = v55;
      sub_2662A8618(v70, (v54 + 4));
      v56 = v69;
      v54[9] = v21;
      v54[10] = v56;
      v54[11] = v65;
      v57 = v21;
      v58 = *(v53 + 16);
      v59 = v55;
      v60 = v23;
      v61 = v57;

      v58(0, sub_26632C2A4, v54, v52, v53);

      return __swift_destroy_boxed_opaque_existential_1Tm(v71);
    }

LABEL_29:
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v48 = __swift_project_value_buffer(v12, qword_280F914F0);
    swift_beginAccess();
    (*(v13 + 16))(v18, v48, v12);
    v49 = sub_2664DFE18();
    v50 = sub_2664E06D8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_26629C000, v49, v50, "SiriKitTaskLoggingProvider#createFLOWDomainContext mediaPlayerPlaybackContext empty, not attaching to mediaPlayerContext", v51, 2u);
      MEMORY[0x266784AD0](v51, -1, -1);
    }

    (*(v13 + 8))(v18, v12);
    goto LABEL_34;
  }

  v25 = v24;
  v63 = v21;
  v26 = a2;
  v27 = &selRef_setUniversalStoreIdentifiersWithBlock_;
  v28 = [v25 hashedRouteUIDs];
  if (v28)
  {
    v29 = v28;
    v30 = v26;
    v31 = sub_2664E04A8();

    v32 = *(v31 + 16);
    v26 = v30;
    v27 = &selRef_setUniversalStoreIdentifiersWithBlock_;

    v33 = v32 != 0;
  }

  else
  {
    v33 = 0;
  }

  [v23 setIsWholeHouseAudio_];
  v39 = [v23 isWholeHouseAudio];
  v21 = v63;
  if (!v39)
  {
LABEL_24:

LABEL_25:
    v38 = v66;
    if (!a4)
    {
      goto LABEL_29;
    }

    goto LABEL_26;
  }

  v40 = [v25 v27[68]];
  if (v40)
  {
    v41 = v26;
    v42 = v40;
    v43 = sub_2664E04A8();

    v26 = v41;
    v44 = *(v43 + 16);
  }

  else
  {
    v44 = 0;
  }

  result = [objc_allocWithZone(MEMORY[0x277D57740]) init];
  v46 = result;
  if (!result)
  {
LABEL_23:
    [v23 setWholeHouseAudioDestinationContext_];

    goto LABEL_24;
  }

  if (!HIDWORD(v44))
  {
    [result setEligibleDeviceCount_];
    goto LABEL_23;
  }

  __break(1u);
  return result;
}

uint64_t sub_2662A8618(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t _s16SiriAudioSupport34MediaPlayerPlaybackContextProviderC10isNotEmpty08playbackG0SbSo019FLOWSchemaFLOWMediaefG0C_tFZ_0(void *a1)
{
  if ([a1 executionSource] || objc_msgSend(a1, sel_endpoint) || objc_msgSend(a1, sel_contentSource))
  {
    return 1;
  }

  result = [a1 radioStationContext];
  if (result || (result = [a1 playlistContext]) != 0)
  {

    return 1;
  }

  return result;
}

uint64_t sub_2662A86F4(unint64_t a1)
{
  if (a1 > 0x14)
  {
    return 0;
  }

  else
  {
    return dword_2664E5E24[a1];
  }
}

uint64_t SubscriptionProvider.status(bypassingCache:completion:)(int a1, uint64_t a2, uint64_t a3)
{
  v18 = a2;
  v19 = a1;
  v4 = sub_2664DFE08();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = MEMORY[0x28223BE20](v4);
  v8 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - v9;
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v11 = qword_280F91D48;
  sub_2664DFDE8();
  (*(v5 + 16))(v8, v10, v4);
  v12 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v13 = (v6 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v14 + 16) = "subscriptionProviderStatus";
  *(v14 + 24) = 26;
  *(v14 + 32) = 2;
  (*(v5 + 32))(v14 + v12, v8, v4);
  v15 = (v14 + v13);
  *v15 = v18;
  v15[1] = a3;

  sub_2664E0848();
  sub_2664DFDD8();
  v16 = swift_allocObject();
  *(v16 + 16) = sub_2662A929C;
  *(v16 + 24) = v14;

  sub_2662A55B4(sub_2662A7040, v16, v19 & 1, 0);

  return (*(v5 + 8))(v10, v4);
}

uint64_t sub_2662A89A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662A89E4(uint64_t a1)
{
  v2 = sub_2664E0038();
  v64 = *(v2 - 8);
  v65 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_2664E00B8();
  v5 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v62 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2664DFE38();
  v67 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v66 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v49 - v10;
  v12 = sub_2664DEA08();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x28223BE20](v12);
  v60 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v49 - v17;
  MEMORY[0x28223BE20](v16);
  v20 = &v49 - v19;
  sub_2662A72F4(a1, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    return sub_2662A7364(v11);
  }

  v57 = v5;
  v58 = v4;
  v22 = *(v13 + 32);
  v55 = v13 + 32;
  v54 = v22;
  v22(v20, v11, v12);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = v7;
  v24 = __swift_project_value_buffer(v7, qword_280F914F0);
  swift_beginAccess();
  v25 = v66;
  v26 = v67;
  v27 = *(v67 + 16);
  v50 = v23;
  v27(v66, v24, v23);
  v28 = v13;
  v29 = v25;
  v30 = *(v13 + 16);
  v52 = v13 + 16;
  v51 = v30;
  v30(v18, v20, v12);
  v31 = sub_2664DFE18();
  v32 = sub_2664E06C8();
  v33 = os_log_type_enabled(v31, v32);
  v56 = v13;
  v59 = v20;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136315138;
    v36 = sub_2664DE9F8();
    v38 = v37;
    v53 = *(v28 + 8);
    v53(v18, v12);
    v39 = sub_2662A320C(v36, v38, aBlock);

    *(v34 + 4) = v39;
    _os_log_impl(&dword_26629C000, v31, v32, "STCAuditProvider#addEvent adding activityType: %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x266784AD0](v35, -1, -1);
    v40 = v34;
    v20 = v59;
    MEMORY[0x266784AD0](v40, -1, -1);

    (*(v67 + 8))(v66, v50);
  }

  else
  {

    v53 = *(v13 + 8);
    v53(v18, v12);
    (*(v26 + 8))(v29, v50);
  }

  v41 = v57;
  if (qword_280F90B08 != -1)
  {
    swift_once();
  }

  v42 = v60;
  v51(v60, v20, v12);
  v43 = (*(v56 + 80) + 24) & ~*(v56 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = v61;
  v54(v44 + v43, v42, v12);
  aBlock[4] = sub_2662A6270;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_28;
  v45 = _Block_copy(aBlock);

  v46 = v62;
  sub_2664E0068();
  v68 = MEMORY[0x277D84F90];
  sub_2662A3CE8(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662A5AC8();
  v47 = v58;
  v48 = v65;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v46, v47, v45);
  _Block_release(v45);
  (*(v64 + 8))(v47, v48);
  (*(v41 + 8))(v46, v63);
  v53(v59, v12);
}

uint64_t sub_2662A9174()
{
  v1 = sub_2664DEA08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662A9238(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2662A929C(__int16 *a1)
{
  v3 = *(sub_2664DFE08() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2662A9344(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_2662A9344(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(__int16 *))
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

BOOL _s16SiriAudioSupport22InternalSignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  if (qword_280071A88 != -1)
  {
    swift_once();
  }

  v41 = off_2800725D0;

  sub_2662A98AC();

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  v38 = *(v5 + 16);
  v38(v9, v10, v4);
  v11 = sub_2664DFE18();
  v12 = sub_2664E06E8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_26629C000, v11, v12, "InternalSignalsManager#doesIntent#have (lock aquired)", v13, 2u);
    MEMORY[0x266784AD0](v13, -1, -1);
  }

  v14 = *(v5 + 8);
  v43 = v5 + 8;
  v44 = v4;
  v39 = v14;
  v14(v9, v4);
  v15 = _s16SiriAudioSupport22InternalSignalsManagerC08internalE03forSaySSGSo8INIntentC_tFZ_0(a1);
  v16 = v15;
  v17 = *(a2 + 16);
  v40 = a2;
  v18 = (a2 + 40);
  v19 = v17 + 1;
  do
  {
    if (!--v19)
    {
      break;
    }

    v20 = v18 + 2;
    v21 = *v18;
    v45[0] = *(v18 - 1);
    v45[1] = v21;
    MEMORY[0x28223BE20](v15);
    *(&v37 - 2) = v45;

    v22 = sub_2662AA720(sub_2662AA7CC, (&v37 - 4), v16);

    v18 = v20;
  }

  while ((v22 & 1) == 0);

  v23 = v42;
  v24 = v44;
  v38(v42, v10, v44);
  v25 = v40;

  v26 = sub_2664DFE18();
  v27 = sub_2664E06E8();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45[0] = v29;
    *v28 = 136315394;
    v30 = MEMORY[0x2667834D0](v25, MEMORY[0x277D837D0]);
    v32 = sub_2662A320C(v30, v31, v45);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    if (v19)
    {
      v33 = 0;
    }

    else
    {
      v33 = 7630702;
    }

    if (v19)
    {
      v34 = 0xE000000000000000;
    }

    else
    {
      v34 = 0xE300000000000000;
    }

    v35 = sub_2662A320C(v33, v34, v45);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_26629C000, v26, v27, "InternalSignalsManager#doesIntent signals: %s %s present in intent. (unlock)", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266784AD0](v29, -1, -1);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  v39(v23, v24);

  sub_2662AA89C();

  return v19 != 0;
}

uint64_t sub_2662A98AC()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v70 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v69 = &v62 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  isEscapingClosureAtFileLocation = &v62 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v62 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v62 - v14;
  v16 = pthread_self();
  v17 = sub_2662AA36C();
  v71 = pthread_equal(v17, v16);
  if (!v71)
  {
    goto LABEL_13;
  }

  v65 = v13;
  if (qword_280F914E8 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v18 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    v67 = *(v3 + 16);
    v68 = v18;
    v67(v15, v18, v2);

    v19 = sub_2664DFE18();
    v20 = sub_2664E06D8();

    v21 = os_log_type_enabled(v19, v20);
    v66 = v16;
    if (v21)
    {
      v22 = swift_slowAlloc();
      v64 = isEscapingClosureAtFileLocation;
      v23 = v16;
      v24 = v22;
      v63 = swift_slowAlloc();
      aBlock = v63;
      *v24 = 136315394;
      *(v24 + 4) = sub_2662A320C(*(v1 + 32), *(v1 + 40), &aBlock);
      *(v24 + 12) = 2080;
      v72 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800732C8, &qword_2664E9E98);
      v25 = sub_2664E0318();
      v27 = sub_2662A320C(v25, v26, &aBlock);
      isEscapingClosureAtFileLocation = v64;

      *(v24 + 14) = v27;
      _os_log_impl(&dword_26629C000, v19, v20, "PThreadMutex#lock expected mutex '%s' to NOT be locked on this thread: %s", v24, 0x16u);
      v28 = v63;
      swift_arrayDestroy();
      MEMORY[0x266784AD0](v28, -1, -1);
      MEMORY[0x266784AD0](v24, -1, -1);
    }

    v29 = *(v3 + 8);
    v29(v15, v2);
    sub_2663A5370();
    if ((*(v1 + 48) & 1) == 0)
    {
      v36 = v65;
      v67(v65, v68, v2);

      v37 = sub_2664DFE18();
      v38 = sub_2664E06D8();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        aBlock = v40;
        *v39 = 136315138;
        *(v39 + 4) = sub_2662A320C(*(v1 + 32), *(v1 + 40), &aBlock);
        _os_log_impl(&dword_26629C000, v37, v38, "PThreadMutex#lock double lock bailing out, not relocking mutex '%s'", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        MEMORY[0x266784AD0](v40, -1, -1);
        MEMORY[0x266784AD0](v39, -1, -1);
      }

      v29(v36, v2);
      return 0;
    }

    v67(isEscapingClosureAtFileLocation, v68, v2);

    v30 = sub_2664DFE18();
    v31 = sub_2664E06D8();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = isEscapingClosureAtFileLocation;
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_2662A320C(*(v1 + 32), *(v1 + 40), &aBlock);
      _os_log_impl(&dword_26629C000, v30, v31, "PThreadMutex#lock double lock START trying to lock mutex '%s'", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266784AD0](v34, -1, -1);
      MEMORY[0x266784AD0](v33, -1, -1);

      v35 = v32;
    }

    else
    {

      v35 = isEscapingClosureAtFileLocation;
    }

    v29(v35, v2);
    v16 = v66;
LABEL_13:
    v15 = &unk_280F91000;
    v41 = pthread_mutex_lock(*(v1 + 16));
    if (qword_280F90F30 != -1)
    {
      swift_once();
    }

    v42 = qword_280F90F38;
    v43 = swift_allocObject();
    *(v43 + 16) = v1;
    *(v43 + 24) = v16;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_2662AA590;
    *(v44 + 24) = v43;
    v78 = sub_2662AA544;
    v79 = v44;
    aBlock = MEMORY[0x277D85DD0];
    v75 = 1107296256;
    v76 = sub_2662ABACC;
    v77 = &block_descriptor_23;
    v16 = _Block_copy(&aBlock);

    dispatch_sync(v42, v16);
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_33:
    swift_once();
  }

  if (v71)
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v45 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    v46 = v69;
    (*(v3 + 16))(v69, v45, v2);

    v47 = sub_2664DFE18();
    v48 = sub_2664E06D8();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      aBlock = v50;
      *v49 = 136315138;
      *(v49 + 4) = sub_2662A320C(*(v1 + 32), *(v1 + 40), &aBlock);
      _os_log_impl(&dword_26629C000, v47, v48, "PThreadMutex#lock double lock END did get lock for mutex '%s'", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v50);
      MEMORY[0x266784AD0](v50, -1, -1);
      MEMORY[0x266784AD0](v49, -1, -1);
    }

    (*(v3 + 8))(v46, v2);
  }

  if (!v41)
  {
    return 1;
  }

  aBlock = 0;
  v75 = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD00000000000002DLL, 0x80000002664F6630);
  LODWORD(v73) = v41;
  v51 = sub_2664E0D48();
  MEMORY[0x2667833B0](v51);

  MEMORY[0x2667833B0](0x20726F6620, 0xE500000000000000);
  MEMORY[0x2667833B0](*(v1 + 32), *(v1 + 40));
  v53 = aBlock;
  v52 = v75;
  if (*(v1 + 48) != 1)
  {
    v54 = v70;
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v55 = __swift_project_value_buffer(v2, qword_280F914F0);
    swift_beginAccess();
    (*(v3 + 16))(v54, v55, v2);

    v56 = sub_2664DFE18();
    v57 = sub_2664E06D8();

    if (os_log_type_enabled(v56, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v73 = v59;
      *v58 = 136315138;
      v60 = sub_2662A320C(v53, v52, &v73);

      *(v58 + 4) = v60;
      _os_log_impl(&dword_26629C000, v56, v57, "%s", v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      MEMORY[0x266784AD0](v59, -1, -1);
      MEMORY[0x266784AD0](v58, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v54, v2);
    return 0;
  }

  result = sub_2664E0C48();
  __break(1u);
  return result;
}

uint64_t sub_2662AA324()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AA36C()
{
  v9 = 0;
  if (qword_280F90F30 != -1)
  {
    swift_once();
  }

  v1 = qword_280F90F38;
  v2 = swift_allocObject();
  *(v2 + 16) = &v9;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_2662AA578;
  *(v3 + 24) = v2;
  aBlock[4] = sub_2662AA574;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662ABACC;
  aBlock[3] = &block_descriptor_33;
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

uint64_t sub_2662AA500()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _s16SiriAudioSupport22InternalSignalsManagerC08internalE03forSaySSGSo8INIntentC_tFZ_0(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 privatePlayMediaIntentData];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v2 = [v3 privateAddMediaIntentData];
      if (!v2)
      {
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v2 = [v4 privateUpdateMediaAffinityIntentData];
        if (!v2)
        {
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (!v5)
        {
          return MEMORY[0x277D84F90];
        }

        v2 = [v5 privateSearchForMediaIntentData];
        if (!v2)
        {
          return MEMORY[0x277D84F90];
        }
      }
    }
  }

  v6 = v2;
  v7 = [v2 internalSignals];

  if (v7)
  {
    v8 = sub_2664E04A8();

    return v8;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2662AA720(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

uint64_t sub_2662AA7EC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2664E0D88() & 1;
  }
}

uint64_t sub_2662AA844(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2664E0D88() & 1;
  }
}

uint64_t sub_2662AA89C()
{
  v1 = v0;
  v2 = sub_2664DFE38();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F90F30 != -1)
  {
    swift_once();
  }

  v6 = qword_280F90F38;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = 0;
  v8 = swift_allocObject();
  v9 = v8;
  *(v8 + 16) = sub_2662AAD1C;
  *(v8 + 24) = v7;
  v26 = sub_2662AA574;
  v27 = v8;
  aBlock = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_2662ABACC;
  v25 = &block_descriptor_14;
  v10 = _Block_copy(&aBlock);

  dispatch_sync(v6, v10);
  _Block_release(v10);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = pthread_mutex_unlock(*(v1 + 16));
  if (!v9)
  {
    return v9 == 0;
  }

  aBlock = 0;
  v23 = 0xE000000000000000;
  sub_2664E0B28();
  MEMORY[0x2667833B0](0xD000000000000031, 0x80000002664F6660);
  LODWORD(v21) = v9;
  v12 = sub_2664E0D48();
  MEMORY[0x2667833B0](v12);

  MEMORY[0x2667833B0](0x20726F6620, 0xE500000000000000);
  MEMORY[0x2667833B0](*(v1 + 32), *(v1 + 40));
  v10 = aBlock;
  isEscapingClosureAtFileLocation = v23;
  if (*(v1 + 48) != 1)
  {
    if (qword_280F914E8 == -1)
    {
LABEL_7:
      v13 = __swift_project_value_buffer(v2, qword_280F914F0);
      swift_beginAccess();
      (*(v3 + 16))(v5, v13, v2);

      v14 = sub_2664DFE18();
      v15 = sub_2664E06D8();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v21 = v17;
        *v16 = 136315138;
        v18 = sub_2662A320C(v10, isEscapingClosureAtFileLocation, &v21);

        *(v16 + 4) = v18;
        _os_log_impl(&dword_26629C000, v14, v15, "%s", v16, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v17);
        MEMORY[0x266784AD0](v17, -1, -1);
        MEMORY[0x266784AD0](v16, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v5, v2);
      return v9 == 0;
    }

LABEL_13:
    swift_once();
    goto LABEL_7;
  }

  result = sub_2664E0C48();
  __break(1u);
  return result;
}

uint64_t sub_2662AAD24(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = sub_2664DFE38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v63 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v63 - v14;
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v18 = swift_allocObject();
    *(v18 + 16) = a2;
    *(v18 + 24) = a3;
    v19 = a1;

    v20 = [v19 airPlayRouteIds];
    if (v20)
    {
      v66 = a3;
      v21 = v20;
      v22 = sub_2664E04A8();

      if (*(v22 + 16))
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v23 = __swift_project_value_buffer(v6, qword_280F914F0);
        swift_beginAccess();
        (*(v7 + 16))(v15, v23, v6);

        v24 = sub_2664DFE18();
        v25 = sub_2664E06B8();

        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v64 = v19;
          v28 = v27;
          v67 = v27;
          *v26 = 136315138;
          v29 = MEMORY[0x2667834D0](v22, MEMORY[0x277D837D0]);
          v65 = v6;
          v63 = v7;
          v31 = sub_2662A320C(v29, v30, &v67);

          *(v26 + 4) = v31;
          _os_log_impl(&dword_26629C000, v24, v25, "AirPlayRouteProvider#getRouteIdsFromIntent Have airPlayRouteIds: %s", v26, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v28);
          v32 = v28;
          v19 = v64;
          MEMORY[0x266784AD0](v32, -1, -1);
          MEMORY[0x266784AD0](v26, -1, -1);

          (*(v63 + 8))(v15, v65);
        }

        else
        {

          (*(v7 + 8))(v15, v6);
        }

        sub_26647CB88(v22, a2, v66);
      }
    }

    v48 = [v17 hashedRouteUIDs];
    if (v48)
    {
      v66 = v18;
      v49 = v6;
      v50 = v7;
      v51 = a2;
      v52 = v48;
      v53 = sub_2664E04A8();

      if (*(v53 + 16))
      {
        if (qword_280F914E8 != -1)
        {
          swift_once();
        }

        v54 = __swift_project_value_buffer(v49, qword_280F914F0);
        swift_beginAccess();
        (*(v50 + 16))(v13, v54, v49);

        v55 = sub_2664DFE18();
        v56 = sub_2664E06B8();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v65 = v49;
          v59 = v58;
          v67 = v58;
          *v57 = 136315138;
          v60 = MEMORY[0x2667834D0](v53, MEMORY[0x277D837D0]);
          v62 = sub_2662A320C(v60, v61, &v67);

          *(v57 + 4) = v62;
          _os_log_impl(&dword_26629C000, v55, v56, "AirPlayRouteProvider#getRouteIdsFromIntent Have hashedRouteUIDs, will attempt decoding: %s", v57, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v59);
          MEMORY[0x266784AD0](v59, -1, -1);
          MEMORY[0x266784AD0](v57, -1, -1);

          (*(v50 + 8))(v13, v65);
        }

        else
        {

          (*(v50 + 8))(v13, v49);
        }

        sub_266482EA0(v53, sub_266483C7C, v66);
      }

      a2 = v51;
    }

    a2(0);
  }

  else
  {
    if (qword_280F914E8 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v6, qword_280F914F0);
    swift_beginAccess();
    (*(v7 + 16))(v10, v33, v6);
    v34 = a1;
    v35 = sub_2664DFE18();
    v36 = sub_2664E06B8();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v66 = a3;
      v67 = v38;
      v39 = v38;
      *v37 = 136315138;
      v40 = [v34 debugDescription];
      v65 = v6;
      v41 = a2;
      v42 = v40;
      v43 = sub_2664E02C8();
      v45 = v44;

      v46 = sub_2662A320C(v43, v45, &v67);

      *(v37 + 4) = v46;
      a2 = v41;
      _os_log_impl(&dword_26629C000, v35, v36, "AirPlayRouteProvider#getRouteIdsFromIntent Not an INPlayMediaIntent: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v39);
      MEMORY[0x266784AD0](v39, -1, -1);
      MEMORY[0x266784AD0](v37, -1, -1);

      (*(v7 + 8))(v10, v65);
    }

    else
    {

      (*(v7 + 8))(v10, v6);
    }

    return (a2)(0);
  }
}

uint64_t sub_2662AB4C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id sub_2662AB4F8(uint64_t a1)
{
  v3 = *(v1 + 16);
  if (!a1)
  {
    goto LABEL_4;
  }

  v4 = *(a1 + 16);
  if (HIDWORD(v4))
  {
    __break(1u);
LABEL_4:
    v4 = 0;
  }

  return [v3 setAirPlayTargetedDevicesCount_];
}

uint64_t sub_2662AB534(unsigned __int8 *a1, void *a2, void *a3, void *a4, void *a5, uint64_t (*a6)(id), uint64_t a7)
{
  v51 = a7;
  v52 = a6;
  v49 = a4;
  v50 = a5;
  v53 = a3;
  v9 = sub_2664DFE38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_2664DFE08();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[1];
  [a2 setIsMusicSubscriber_];
  v54 = a2;
  [a2 addActiveSubscriptions_];
  v18 = sub_2664E0858();
  if (qword_280F91508 != -1)
  {
    swift_once();
  }

  v19 = qword_280F91D48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724D8, &unk_2664E3920);
  v20 = swift_allocObject();
  v21 = MEMORY[0x277D83B88];
  *(v20 + 16) = xmmword_2664E36F0;
  v22 = MEMORY[0x277D83C10];
  *(v20 + 56) = v21;
  *(v20 + 64) = v22;
  *(v20 + 32) = v17;
  sub_2664DFDF8();
  sub_2664DFDC8(v18, &dword_26629C000, v19, "musicSubscriptionType", 21, 2, v16, "status=%{signpost.telemetry:number1,public}d enableTelemetry=YES", 64, 2, v20);

  (*(v14 + 8))(v16, v13);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v9, qword_280F914F0);
  swift_beginAccess();
  (*(v10 + 16))(v12, v23, v9);
  v24 = sub_2664DFE18();
  v25 = sub_2664E06C8();
  v26 = os_log_type_enabled(v24, v25);
  v27 = v54;
  if (v26)
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v17;
    _os_log_impl(&dword_26629C000, v24, v25, "SiriKitTaskLoggingProvider#createFLOWDomainContext addActiveSubscriptions: %ld", v28, 0xCu);
    MEMORY[0x266784AD0](v28, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v29 = v53;
  if (!v53)
  {
    goto LABEL_15;
  }

  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (!v30)
  {
    goto LABEL_15;
  }

  v31 = v30;
  v53 = v29;
  [v27 setIsSiriForAirPlayRequest_];
  v32 = v49;
  v33 = v49[3];
  v34 = v49[4];
  __swift_project_boxed_opaque_existential_1(v49, v33);
  v35 = swift_allocObject();
  *(v35 + 16) = v27;
  v36 = *(v34 + 16);
  v37 = v27;
  v36(v31, sub_2662AB4F8, v35, v33, v34);

  v38 = v32[3];
  v39 = v32[4];
  __swift_project_boxed_opaque_existential_1(v32, v38);
  v40 = (*(v39 + 8))(v38, v39);
  if (!v40 || (v41 = v40, swift_beginAccess(), v42 = *(v41 + 112), v43 = *(v41 + 120), result = , (v43 & 1) != 0))
  {
    v42 = 0;
LABEL_14:
    [v37 setAirPlaySuccessfullyPlayingDevicesCount_];
    v45 = v49[3];
    v46 = v49[4];
    __swift_project_boxed_opaque_existential_1(v49, v45);
    v47 = (*(v46 + 8))(v45, v46);
    [v37 setAirPlayRouteSettingStatus_];

LABEL_15:
    v48 = v50;
    [v50 setMediaPlayerContext_];
    return v52(v48);
  }

  if ((v42 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v42))
  {
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_2662ABA94()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662ABAF8(uint64_t result)
{
  if (result)
  {
    v1 = result;
    swift_beginAccess();
    if (*(v1 + 64))
    {

      return 5;
    }

    else
    {
      swift_beginAccess();
      if (*(v1 + 80))
      {

        return 6;
      }

      else
      {
        swift_beginAccess();
        if (*(v1 + 56))
        {

          return 4;
        }

        else
        {
          swift_beginAccess();
          if (*(v1 + 88) == 2)
          {
            swift_beginAccess();
            if (*(v1 + 72) == 2)
            {
              swift_beginAccess();
              v2 = *(v1 + 112);
              v3 = *(v1 + 120);

              if (v3 & 1 | (v2 == 0))
              {
                return 2;
              }

              else
              {
                return 1;
              }
            }

            else
            {

              return 3;
            }
          }

          else
          {

            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2662ABC50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{

  sub_2664DE858();
  sub_2664E08A8();
  sub_2664DE878();
  v13 = a4;
  sub_2664DE828();

  sub_2664DE818();

  sub_2664DE848();

  sub_2664DE838();

  return sub_2664DE868();
}

uint64_t objectdestroy_52Tm()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t AirPlayRouteProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_2662ABE1C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072850, &qword_2664EDE70);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AdditionalPlaybackContext.__deallocating_deinit()
{
  sub_2662ABE1C(v0 + OBJC_IVAR____TtC16SiriAudioSupport25AdditionalPlaybackContext_userDialogAct);

  return swift_deallocClassInstance();
}

void *sub_2662ABF28@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

_DWORD *sub_2662ABF44@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t sub_2662ABF6C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662ABFA8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662ABFE8()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AC088()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AC0C0()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v5));

  return MEMORY[0x2821FE8E8](v0, ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 16, v3 | 7);
}

uint64_t sub_2662AC1BC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AC1F4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AC234()
{

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2662AC29C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2662AC2E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AC35C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_2662AC3A0(_DWORD **a1, uint64_t a2, uint64_t a3, void *(*a4)(uint64_t *__return_ptr))
{
  result = (a4)(&v7, a1, a2, a3);
  v6 = *a1;
  *v6 = v7;
  *a1 = v6 + 1;
  return result;
}

uint64_t sub_2662AC3E8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AC420()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662AC46C()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662AC4DC()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662AC544()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662AC5C4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662AC60C()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662AC674()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662AC6DC()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662AC77C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662AC7E4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AC824()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AC85C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AC8BC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AC900()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AC938()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AC990@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_2662AC9E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR___SAAudioAppPredictorOptions_trimDisambiguationForRelevance;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_2662ACA3C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662ACA78()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662ACAB0()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2662ACB14()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662ACB5C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662ACC28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662ACC70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

id sub_2662ACCD4()
{
  v1 = [*v0 mediaSearch];

  return v1;
}

uint64_t sub_2662ACD0C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662ACD44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662ACD8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(**a1 + 168))(a2);
  *a3 = result;
  return result;
}

__n128 sub_2662ACDEC(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_2662ACE04()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662ACE4C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662ACE84()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662ACF84()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  v6 = sub_2664DE438();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (((v9 + *(v7 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return MEMORY[0x2821FE8E8](v0, v11 + 8, v10 | 7);
}

uint64_t sub_2662AD0F8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662AD1F0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662AD2B4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AD340()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AD37C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AD3D0()
{
  v1 = *(v0 + 16);
  v2 = *(sub_2664E0948() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);

  v6 = *(v1 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1, v1))
  {
    (*(v6 + 8))(v0 + v4, v1);
  }

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662AD528()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AD560()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AD5B0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AD610()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AD648()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AD688()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AD6FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AD7FC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AD844()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662ADC00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662ADC3C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);

  v9 = sub_2664DEA08();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = sub_2664DE808();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return MEMORY[0x2821FE8E8](v0, ((((((((v8 + v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | v6 | 7);
}

uint64_t sub_2662ADEB0()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072A98, &unk_2664E58C0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 17) & ~v2;
  v4 = *(v1 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072AA0, &qword_2664E9EA0) - 8);
  v6 = *(v5 + 80);
  v7 = (v3 + v4 + v6) & ~v6;
  v8 = *(v5 + 64);
  v9 = sub_2664DEA08();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v0 + v3, 1, v9))
  {
    (*(v10 + 8))(v0 + v3, v9);
  }

  v11 = sub_2664DE808();
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v0 + v7, 1, v11))
  {
    (*(v12 + 8))(v0 + v7, v11);
  }

  return MEMORY[0x2821FE8E8](v0, ((((((((((((v8 + v7 + 3) & 0xFFFFFFFFFFFFFFFCLL) + 11) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | v6 | 7);
}

uint64_t sub_2662AE144()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AE17C()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AE21C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AE280()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AE2B8()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AE388()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AE3C8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072C00, &unk_2664E62C8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662AE45C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AE4C0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AE4F8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662AE540()
{
  v1 = sub_2664DE4A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_2662AE620()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662AE668()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AE6DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AE71C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AE754()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662AE79C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2662AE87C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_2662AE8CC()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662AE998()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662AE9D0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AEA08()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AEAA8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 24, v3 | 7);
}

uint64_t sub_2662AEC08()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AECA8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AECE8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662AEDAC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AEDEC()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AEE24()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  if (*(v0 + 176) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_2662AEEB4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662AEEFC()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AEF9C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 200, 7);
}

uint64_t sub_2662AF01C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));

  if (*(v0 + 208) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 232, 7);
}

uint64_t sub_2662AF0B4()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));

  if (*(v0 + 216) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 240, 7);
}

uint64_t sub_2662AF158()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662AF1A0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662AF1E8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));

  if (*(v0 + 216) != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 248, 7);
}

uint64_t sub_2662AF288()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662AF2D0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662AF310()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662AF35C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AF39C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662AF894()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662AF8D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AF90C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AF950()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2662AF9B4()
{

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2662AFA34()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AFA6C()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AFB18()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662AFBB8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AFBF0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662AFC30()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662AFCF8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AFD34()
{

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 4);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 9);
  if (v0[17])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_2662AFD94()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);

  if (v0[17])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 14);
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2662AFE28@<X0>(uint64_t *a1@<X8>)
{
  result = FeatureFlagProvider.lastBundleIdentifier.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void sub_2662AFE50(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  FeatureFlagProvider.lastBundleIdentifier.setter(v1, v2);
}

unint64_t sub_2662AFEA8@<X0>(unint64_t *a1@<X8>)
{
  result = FeatureFlagProvider.resolvedAppHistory.getter();
  *a1 = result;
  return result;
}

uint64_t sub_2662AFEFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662AFF34()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662AFF70()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800730D0, &qword_2664E95F8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B004C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B008C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731B0, &qword_2664E98E0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_2662B0154(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800731B0, &qword_2664E98E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2662B0208()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B0240()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B0288()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B02C0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B02FC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

uint64_t sub_2662B034C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

uint64_t sub_2662B039C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B03DC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B0510()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B0548()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B0580()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662B05D0()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662B0608()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B0640()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B0680@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 96);
  v5 = *(v3 + 112);
  v6 = *(v3 + 128);
  v17 = *(v3 + 144);
  v16[6] = v5;
  v16[7] = v6;
  v7 = *(v3 + 32);
  v8 = *(v3 + 48);
  v9 = *(v3 + 80);
  v16[3] = *(v3 + 64);
  v16[4] = v9;
  v16[1] = v7;
  v16[2] = v8;
  v16[5] = v4;
  v16[0] = *(v3 + 16);
  v10 = *(v3 + 128);
  *(a2 + 96) = *(v3 + 112);
  *(a2 + 112) = v10;
  *(a2 + 128) = *(v3 + 144);
  v11 = *(v3 + 64);
  *(a2 + 32) = *(v3 + 48);
  *(a2 + 48) = v11;
  v12 = *(v3 + 96);
  *(a2 + 64) = *(v3 + 80);
  *(a2 + 80) = v12;
  v13 = *(v3 + 32);
  *a2 = *(v3 + 16);
  *(a2 + 16) = v13;
  return sub_2662A7224(v16, &v15, &qword_280072590, &qword_2664E3B48);
}

id sub_2662B0748@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 184);
  *a2 = v4;

  return v4;
}

uint64_t sub_2662B07A4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 192);
  return result;
}

uint64_t sub_2662B07EC(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 192) = v2;
  return result;
}

uint64_t sub_2662B0830()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 240) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B0944()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2662B0A64()
{

  if (*(v0 + 48) != 1)
  {

    if (*(v0 + 56))
    {
    }
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2662B0B0C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662B0B5C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B0B94()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B0BE8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B0CE8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 56))
  {
  }

  v5 = (v3 + 88) & ~v3;
  v6 = (((v5 + v4) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662B0DFC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B0E3C()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662B0E9C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 57) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B0F7C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 249) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B10A0()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 249) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B11C0()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 199) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v6 + 39) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2662B12EC()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 224) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5) != 1)
  {

    if (*(v0 + v5 + 8))
    {
    }
  }

  v6 = (v5 + 55) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_2662B1468()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 32) != 1)
  {

    if (*(v0 + 40))
    {
    }
  }

  v5 = (v3 + 96) & ~v3;
  v6 = (v4 + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (((v6 + 215) & 0xFFFFFFFFFFFFFFF8) + 39) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v7 + 8, v3 | 7);
}

uint64_t sub_2662B15EC()
{

  return MEMORY[0x2821FE8E8](v0, 280, 7);
}

uint64_t sub_2662B1674()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B16AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662B16EC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B17AC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2662B17EC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B1824()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B18CC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2662B192C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B1974()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_2662B19D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B1A0C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));

  return MEMORY[0x2821FE8E8](v0, 217, 7);
}

uint64_t sub_2662B1A84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B1ABC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 169, 7);
}

uint64_t sub_2662B1B2C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_2662B1BA0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2663C528C();
  *a1 = result;
  return result;
}

uint64_t sub_2662B1C18()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((((v5 + 87) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = (v0 + v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v7 + 5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662B1CFC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B1D38()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662B1DA0()
{

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

uint64_t sub_2662B1DEC()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662B1E5C()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662B1EE4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B1F30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B1F68()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B2008()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B2040()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B2080()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B21C0()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662B2224()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B225C()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2662B22B8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B2304()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B23A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B23DC()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B241C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B24E8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B25B4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B25FC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_2662B263C()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B26DC()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B2714()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B2754()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B2818()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B28B8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B2900@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_2800735C0;
  return result;
}

uint64_t sub_2662B294C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_2800735C0 = v1;
  return result;
}

uint64_t sub_2662B2994@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC16SiriAudioSupport16RecordableResult_info;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_2662B2A48()
{
  v1 = sub_2664DE4A8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B2AE8()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662B2B38()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B2B78()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B2BB0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B2BE8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B2CE8()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B2E44()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B2E7C()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((((v5 + 87) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = (v0 + v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v7 + 5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662B2F64()
{

  return MEMORY[0x2821FE8E8](v0, 117, 7);
}

uint64_t sub_2662B2FCC()
{

  return MEMORY[0x2821FE8E8](v0, 113, 7);
}

uint64_t sub_2662B3034()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B306C()
{

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

uint64_t sub_2662B30B8()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2662B3120()
{

  return MEMORY[0x2821FE8E8](v0, 121, 7);
}

uint64_t sub_2662B3190()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B31D8()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2662B3248()
{

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_2662B32C8()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662B3310()
{
  v1 = sub_2664E05C8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B33F4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B3434()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B3474()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B3514()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B3550()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B3590()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B35C8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B3604()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 120) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B37C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_2662B387C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2662B3934()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B3990()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B3A30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B3A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DE438();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_2662B3ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_2664DE438();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_2662B3B4C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B3B9C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B3BE8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_26642B35C();
  *a1 = result;
  return result;
}

uint64_t sub_2662B3C48()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (((((v5 + 87) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  v7 = (v0 + v5);
  __swift_destroy_boxed_opaque_existential_1Tm(v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v7 + 5);

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t sub_2662B3D2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B3D68()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662B3DD0()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662B3E38()
{

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

uint64_t sub_2662B3E80()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  return MEMORY[0x2821FE8E8](v0, 201, 7);
}

uint64_t sub_2662B3EF0()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662B3F60()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662B3FF8()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2662B4048()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B4080()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B4120(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 96);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 108);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_2662B4268(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800737D0, qword_2664E4FD0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 96);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BC0, &qword_2664E6030);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 108);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_2662B43A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B43DC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2662B443C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B453C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B463C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_2662B4694()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B46D4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B4730()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B476C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B47A4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B47FC()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662B4864()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662B48BC()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662B490C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B4964()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662B49B4()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662B4A14()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B4A60()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662B4AA0()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662B4AE4()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B4BCC()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B4CBC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280073BA0, &qword_2664ED7B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B4DAC()
{

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2662B4E14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B4E4C()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B4EEC()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662B4F5C()
{

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_2662B4FCC()
{

  return MEMORY[0x2821FE8E8](v0, 67, 7);
}

uint64_t sub_2662B5024()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B5068()
{

  return MEMORY[0x2821FE8E8](v0, 107, 7);
}

uint64_t sub_2662B50D4()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B5174()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B5214()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B524C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B528C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2662B5358()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_2662B5398@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2664778A0(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unsigned int *sub_2662B53D4@<X0>(unsigned int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

unint64_t sub_2662B53F0@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_266478050(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_2662B5424@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_26647839C(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

unint64_t sub_2662B5458@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2664782E4(*a1);
  *a2 = result;
  *(a2 + 4) = BYTE4(result) & 1;
  return result;
}

uint64_t sub_2662B5828@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_280073C50;
  return result;
}

uint64_t sub_2662B5874(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_280073C50 = v1;
  return result;
}

uint64_t sub_2662B5E24()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B5E64()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id sub_2662B5EAC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 32);
  *a2 = v4;

  return v4;
}

uint64_t sub_2662B5F50@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

id sub_2662B5FA0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 56);
  *a2 = v4;
  return v4;
}

id sub_2662B5FF0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = v4;
  return v4;
}

uint64_t sub_2662B6040@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_2662B6088(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 72) = v2;
  return result;
}

id sub_2662B60CC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = v4;
  return v4;
}

uint64_t sub_2662B611C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 88);
  return result;
}

uint64_t sub_2662B6164(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 88) = v2;
  return result;
}

uint64_t sub_2662B61A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 104);
  *a2 = *(v3 + 96);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2662B61F8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 96) = v2;
  *(v4 + 104) = v3;
  return result;
}

uint64_t sub_2662B624C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  v5 = *(v3 + 120);
  *a2 = *(v3 + 112);
  *(a2 + 8) = v5;
  return result;
}

uint64_t sub_2662B629C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  result = swift_beginAccess();
  *(v4 + 112) = v2;
  *(v4 + 120) = v3;
  return result;
}

uint64_t sub_2662B62F0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 121);
  return result;
}

uint64_t sub_2662B6338(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 121) = v2;
  return result;
}

id sub_2662B637C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 128);
  *a2 = v4;

  return v4;
}

uint64_t sub_2662B63D8@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 136);
}

uint64_t sub_2662B6428@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 144);
}

uint64_t sub_2662B67B0()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B68C0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 104);
  *a2 = *(v3 + 96);
  a2[1] = v4;
}

uint64_t sub_2662B6910()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B6950()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B69A8()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2662B69F8()
{

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_2662B6A48()
{

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_2662B6AC0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B6B00()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B6B40()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B6B7C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = (((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B6C7C()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2662B6D80()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2662B6E78()
{

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_2662B6ECC()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((((((((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2662B6FF0()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (((v4 + *(v2 + 64)) & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_2662B70E8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B7120()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2662B72CC()
{
  v1 = sub_2664DFE08();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B736C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B73A4()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B73E4()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_2662B7484()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B74BC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_2662B7524()
{

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_2662B7584()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_2662B7670()
{
  v1 = sub_2664DE438();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64) + 7;
  v7 = (v4 + 16 + ((((v6 + v5) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)) & ~v4;
  v8 = (v6 + v7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);

  v3(v0 + v7, v1);

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v4 | 7);
}

uint64_t sub_2662B7750()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2662B7788()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B77C8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2662A3324(&byte_2800741B8, "SiriAudio#isWarmup#get %{BOOL}d");
  *a1 = result & 1;
  return result;
}

uint64_t sub_2662B780C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_2662A3324(&byte_2800741B9, "SiriAudio#isMakeFlowFromParse#get %{BOOL}d");
  *a1 = result & 1;
  return result;
}

uint64_t sub_2662B7860()
{
  v1 = *(v0 + 24);
  if (v1 >> 60 != 15)
  {
    sub_266348774(*(v0 + 16), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_2662B78A8()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_2662B78F8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662B79A8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_266348774(result, a2);
  }

  return result;
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

uint64_t sub_2662B7B5C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2662B7B7C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_2662B7C58(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t sub_2662B7C90(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 0x2000))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2662B7CB4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8184) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 4344) = 0u;
    *(result + 4328) = 0u;
    *(result + 4312) = 0u;
    *(result + 4296) = 0u;
    *(result + 4280) = 0u;
    *(result + 4264) = 0u;
    *(result + 4248) = 0u;
    *(result + 4232) = 0u;
    *(result + 4216) = 0u;
    *(result + 4200) = 0u;
    *(result + 4184) = 0u;
    *(result + 4168) = 0u;
    *(result + 4152) = 0u;
    *(result + 4136) = 0u;
    *(result + 4120) = 0u;
    *(result + 4104) = 0u;
    *(result + 4088) = 0u;
    *(result + 4072) = 0u;
    *(result + 4056) = 0u;
    *(result + 4040) = 0u;
    *(result + 4024) = 0u;
    *(result + 4008) = 0u;
    *(result + 3992) = 0u;
    *(result + 3976) = 0u;
    *(result + 3960) = 0u;
    *(result + 3944) = 0u;
    *(result + 3928) = 0u;
    *(result + 3912) = 0u;
    *(result + 3896) = 0u;
    *(result + 3880) = 0u;
    *(result + 3864) = 0u;
    *(result + 3848) = 0u;
    *(result + 3832) = 0u;
    *(result + 3816) = 0u;
    *(result + 3800) = 0u;
    *(result + 3784) = 0u;
    *(result + 3768) = 0u;
    *(result + 3752) = 0u;
    *(result + 3736) = 0u;
    *(result + 3720) = 0u;
    *(result + 3704) = 0u;
    *(result + 3688) = 0u;
    *(result + 3672) = 0u;
    *(result + 3656) = 0u;
    *(result + 3640) = 0u;
    *(result + 3624) = 0u;
    *(result + 3608) = 0u;
    *(result + 3592) = 0u;
    *(result + 3576) = 0u;
    *(result + 3560) = 0u;
    *(result + 3544) = 0u;
    *(result + 3528) = 0u;
    *(result + 3512) = 0u;
    *(result + 3496) = 0u;
    *(result + 3480) = 0u;
    *(result + 3464) = 0u;
    *(result + 3448) = 0u;
    *(result + 3432) = 0u;
    *(result + 3416) = 0u;
    *(result + 3400) = 0u;
    *(result + 3384) = 0u;
    *(result + 3368) = 0u;
    *(result + 3352) = 0u;
    *(result + 3336) = 0u;
    *(result + 3320) = 0u;
    *(result + 3304) = 0u;
    *(result + 3288) = 0u;
    *(result + 3272) = 0u;
    *(result + 3256) = 0u;
    *(result + 3240) = 0u;
    *(result + 3224) = 0u;
    *(result + 3208) = 0u;
    *(result + 3192) = 0u;
    *(result + 3176) = 0u;
    *(result + 3160) = 0u;
    *(result + 3144) = 0u;
    *(result + 3128) = 0u;
    *(result + 3112) = 0u;
    *(result + 3096) = 0u;
    *(result + 3080) = 0u;
    *(result + 3064) = 0u;
    *(result + 3048) = 0u;
    *(result + 3032) = 0u;
    *(result + 3016) = 0u;
    *(result + 3000) = 0u;
    *(result + 2984) = 0u;
    *(result + 2968) = 0u;
    *(result + 2952) = 0u;
    *(result + 2936) = 0u;
    *(result + 2920) = 0u;
    *(result + 2904) = 0u;
    *(result + 2888) = 0u;
    *(result + 2872) = 0u;
    *(result + 2856) = 0u;
    *(result + 2840) = 0u;
    *(result + 2824) = 0u;
    *(result + 2808) = 0u;
    *(result + 2792) = 0u;
    *(result + 2776) = 0u;
    *(result + 2760) = 0u;
    *(result + 2744) = 0u;
    *(result + 2728) = 0u;
    *(result + 2712) = 0u;
    *(result + 2696) = 0u;
    *(result + 2680) = 0u;
    *(result + 2664) = 0u;
    *(result + 2648) = 0u;
    *(result + 2632) = 0u;
    *(result + 2616) = 0u;
    *(result + 2600) = 0u;
    *(result + 2584) = 0u;
    *(result + 2568) = 0u;
    *(result + 2552) = 0u;
    *(result + 2536) = 0u;
    *(result + 2520) = 0u;
    *(result + 2504) = 0u;
    *(result + 2488) = 0u;
    *(result + 2472) = 0u;
    *(result + 2456) = 0u;
    *(result + 2440) = 0u;
    *(result + 2424) = 0u;
    *(result + 2408) = 0u;
    *(result + 2392) = 0u;
    *(result + 2376) = 0u;
    *(result + 2360) = 0u;
    *(result + 2344) = 0u;
    *(result + 2328) = 0u;
    *(result + 2312) = 0u;
    *(result + 2296) = 0u;
    *(result + 2280) = 0u;
    *(result + 2264) = 0u;
    *(result + 2248) = 0u;
    *(result + 2232) = 0u;
    *(result + 2216) = 0u;
    *(result + 2200) = 0u;
    *(result + 2184) = 0u;
    *(result + 2168) = 0u;
    *(result + 2152) = 0u;
    *(result + 2136) = 0u;
    *(result + 2120) = 0u;
    *(result + 2104) = 0u;
    *(result + 2088) = 0u;
    *(result + 2072) = 0u;
    *(result + 2056) = 0u;
    *(result + 2040) = 0u;
    *(result + 2024) = 0u;
    *(result + 2008) = 0u;
    *(result + 1992) = 0u;
    *(result + 1976) = 0u;
    *(result + 1960) = 0u;
    *(result + 1944) = 0u;
    *(result + 1928) = 0u;
    *(result + 1912) = 0u;
    *(result + 1896) = 0u;
    *(result + 1880) = 0u;
    *(result + 1864) = 0u;
    *(result + 1848) = 0u;
    *(result + 1832) = 0u;
    *(result + 1816) = 0u;
    *(result + 1800) = 0u;
    *(result + 1784) = 0u;
    *(result + 1768) = 0u;
    *(result + 1752) = 0u;
    *(result + 1736) = 0u;
    *(result + 1720) = 0u;
    *(result + 1704) = 0u;
    *(result + 1688) = 0u;
    *(result + 1672) = 0u;
    *(result + 1656) = 0u;
    *(result + 1640) = 0u;
    *(result + 1624) = 0u;
    *(result + 1608) = 0u;
    *(result + 1592) = 0u;
    *(result + 1576) = 0u;
    *(result + 1560) = 0u;
    *(result + 1544) = 0u;
    *(result + 1528) = 0u;
    *(result + 1512) = 0u;
    *(result + 1496) = 0u;
    *(result + 1480) = 0u;
    *(result + 1464) = 0u;
    *(result + 1448) = 0u;
    *(result + 1432) = 0u;
    *(result + 1416) = 0u;
    *(result + 1400) = 0u;
    *(result + 1384) = 0u;
    *(result + 1368) = 0u;
    *(result + 1352) = 0u;
    *(result + 1336) = 0u;
    *(result + 1320) = 0u;
    *(result + 1304) = 0u;
    *(result + 1288) = 0u;
    *(result + 1272) = 0u;
    *(result + 1256) = 0u;
    *(result + 1240) = 0u;
    *(result + 1224) = 0u;
    *(result + 1208) = 0u;
    *(result + 1192) = 0u;
    *(result + 1176) = 0u;
    *(result + 1160) = 0u;
    *(result + 1144) = 0u;
    *(result + 1128) = 0u;
    *(result + 1112) = 0u;
    *(result + 1096) = 0u;
    *(result + 1080) = 0u;
    *(result + 1064) = 0u;
    *(result + 1048) = 0u;
    *(result + 1032) = 0u;
    *(result + 1016) = 0u;
    *(result + 1000) = 0u;
    *(result + 984) = 0u;
    *(result + 968) = 0u;
    *(result + 952) = 0u;
    *(result + 936) = 0u;
    *(result + 920) = 0u;
    *(result + 904) = 0u;
    *(result + 888) = 0u;
    *(result + 872) = 0u;
    *(result + 856) = 0u;
    *(result + 840) = 0u;
    *(result + 824) = 0u;
    *(result + 808) = 0u;
    *(result + 792) = 0u;
    *(result + 776) = 0u;
    *(result + 760) = 0u;
    *(result + 744) = 0u;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 536) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 8168) = 0u;
    *(result + 8152) = 0u;
    *(result + 8136) = 0u;
    *(result + 8120) = 0u;
    *(result + 8104) = 0u;
    *(result + 8088) = 0u;
    *(result + 8072) = 0u;
    *(result + 8056) = 0u;
    *(result + 8040) = 0u;
    *(result + 8024) = 0u;
    *(result + 8008) = 0u;
    *(result + 7992) = 0u;
    *(result + 7976) = 0u;
    *(result + 7960) = 0u;
    *(result + 7944) = 0u;
    *(result + 7928) = 0u;
    *(result + 7912) = 0u;
    *(result + 7896) = 0u;
    *(result + 7880) = 0u;
    *(result + 7864) = 0u;
    *(result + 7848) = 0u;
    *(result + 7832) = 0u;
    *(result + 7816) = 0u;
    *(result + 7800) = 0u;
    *(result + 7784) = 0u;
    *(result + 7768) = 0u;
    *(result + 7752) = 0u;
    *(result + 7736) = 0u;
    *(result + 7720) = 0u;
    *(result + 7704) = 0u;
    *(result + 7688) = 0u;
    *(result + 7672) = 0u;
    *(result + 7656) = 0u;
    *(result + 7640) = 0u;
    *(result + 7624) = 0u;
    *(result + 7608) = 0u;
    *(result + 7592) = 0u;
    *(result + 7576) = 0u;
    *(result + 7560) = 0u;
    *(result + 7544) = 0u;
    *(result + 7528) = 0u;
    *(result + 7512) = 0u;
    *(result + 7496) = 0u;
    *(result + 7480) = 0u;
    *(result + 7464) = 0u;
    *(result + 7448) = 0u;
    *(result + 7432) = 0u;
    *(result + 7416) = 0u;
    *(result + 7400) = 0u;
    *(result + 7384) = 0u;
    *(result + 7368) = 0u;
    *(result + 7352) = 0u;
    *(result + 7336) = 0u;
    *(result + 7320) = 0u;
    *(result + 7304) = 0u;
    *(result + 7288) = 0u;
    *(result + 7272) = 0u;
    *(result + 7256) = 0u;
    *(result + 7240) = 0u;
    *(result + 7224) = 0u;
    *(result + 7208) = 0u;
    *(result + 7192) = 0u;
    *(result + 7176) = 0u;
    *(result + 7160) = 0u;
    *(result + 7144) = 0u;
    *(result + 7128) = 0u;
    *(result + 7112) = 0u;
    *(result + 7096) = 0u;
    *(result + 7080) = 0u;
    *(result + 7064) = 0u;
    *(result + 7048) = 0u;
    *(result + 7032) = 0u;
    *(result + 7016) = 0u;
    *(result + 7000) = 0u;
    *(result + 6984) = 0u;
    *(result + 6968) = 0u;
    *(result + 6952) = 0u;
    *(result + 6936) = 0u;
    *(result + 6920) = 0u;
    *(result + 6904) = 0u;
    *(result + 6888) = 0u;
    *(result + 6872) = 0u;
    *(result + 6856) = 0u;
    *(result + 6840) = 0u;
    *(result + 6824) = 0u;
    *(result + 6808) = 0u;
    *(result + 6792) = 0u;
    *(result + 6776) = 0u;
    *(result + 6760) = 0u;
    *(result + 6744) = 0u;
    *(result + 6728) = 0u;
    *(result + 6712) = 0u;
    *(result + 6696) = 0u;
    *(result + 6680) = 0u;
    *(result + 6664) = 0u;
    *(result + 6648) = 0u;
    *(result + 6632) = 0u;
    *(result + 6616) = 0u;
    *(result + 6600) = 0u;
    *(result + 6584) = 0u;
    *(result + 6568) = 0u;
    *(result + 6552) = 0u;
    *(result + 6536) = 0u;
    *(result + 6520) = 0u;
    *(result + 6504) = 0u;
    *(result + 6488) = 0u;
    *(result + 6472) = 0u;
    *(result + 6456) = 0u;
    *(result + 6440) = 0u;
    *(result + 6424) = 0u;
    *(result + 6408) = 0u;
    *(result + 6392) = 0u;
    *(result + 6376) = 0u;
    *(result + 6360) = 0u;
    *(result + 6344) = 0u;
    *(result + 6328) = 0u;
    *(result + 6312) = 0u;
    *(result + 6296) = 0u;
    *(result + 6280) = 0u;
    *(result + 6264) = 0u;
    *(result + 6248) = 0u;
    *(result + 6232) = 0u;
    *(result + 6216) = 0u;
    *(result + 6200) = 0u;
    *(result + 6184) = 0u;
    *(result + 6168) = 0u;
    *(result + 6152) = 0u;
    *(result + 6136) = 0u;
    *(result + 6120) = 0u;
    *(result + 6104) = 0u;
    *(result + 6088) = 0u;
    *(result + 6072) = 0u;
    *(result + 6056) = 0u;
    *(result + 6040) = 0u;
    *(result + 6024) = 0u;
    *(result + 6008) = 0u;
    *(result + 5992) = 0u;
    *(result + 5976) = 0u;
    *(result + 5960) = 0u;
    *(result + 5944) = 0u;
    *(result + 5928) = 0u;
    *(result + 5912) = 0u;
    *(result + 5896) = 0u;
    *(result + 5880) = 0u;
    *(result + 5864) = 0u;
    *(result + 5848) = 0u;
    *(result + 5832) = 0u;
    *(result + 5816) = 0u;
    *(result + 5800) = 0u;
    *(result + 5784) = 0u;
    *(result + 5768) = 0u;
    *(result + 5752) = 0u;
    *(result + 5736) = 0u;
    *(result + 5720) = 0u;
    *(result + 5704) = 0u;
    *(result + 5688) = 0u;
    *(result + 5672) = 0u;
    *(result + 5656) = 0u;
    *(result + 5640) = 0u;
    *(result + 5624) = 0u;
    *(result + 5608) = 0u;
    *(result + 5592) = 0u;
    *(result + 5576) = 0u;
    *(result + 5560) = 0u;
    *(result + 5544) = 0u;
    *(result + 5528) = 0u;
    *(result + 5512) = 0u;
    *(result + 5496) = 0u;
    *(result + 5480) = 0u;
    *(result + 5464) = 0u;
    *(result + 5448) = 0u;
    *(result + 5432) = 0u;
    *(result + 5416) = 0u;
    *(result + 5400) = 0u;
    *(result + 5384) = 0u;
    *(result + 5368) = 0u;
    *(result + 5352) = 0u;
    *(result + 5336) = 0u;
    *(result + 5320) = 0u;
    *(result + 5304) = 0u;
    *(result + 5288) = 0u;
    *(result + 5272) = 0u;
    *(result + 5256) = 0u;
    *(result + 5240) = 0u;
    *(result + 5224) = 0u;
    *(result + 5208) = 0u;
    *(result + 5192) = 0u;
    *(result + 5176) = 0u;
    *(result + 5160) = 0u;
    *(result + 5144) = 0u;
    *(result + 5128) = 0u;
    *(result + 5112) = 0u;
    *(result + 5096) = 0u;
    *(result + 5080) = 0u;
    *(result + 5064) = 0u;
    *(result + 5048) = 0u;
    *(result + 5032) = 0u;
    *(result + 5016) = 0u;
    *(result + 5000) = 0u;
    *(result + 4984) = 0u;
    *(result + 4968) = 0u;
    *(result + 4952) = 0u;
    *(result + 4936) = 0u;
    *(result + 4920) = 0u;
    *(result + 4904) = 0u;
    *(result + 4888) = 0u;
    *(result + 4872) = 0u;
    *(result + 4856) = 0u;
    *(result + 4840) = 0u;
    *(result + 4824) = 0u;
    *(result + 4808) = 0u;
    *(result + 4792) = 0u;
    *(result + 4776) = 0u;
    *(result + 4760) = 0u;
    *(result + 4744) = 0u;
    *(result + 4728) = 0u;
    *(result + 4712) = 0u;
    *(result + 4696) = 0u;
    *(result + 4680) = 0u;
    *(result + 4664) = 0u;
    *(result + 4648) = 0u;
    *(result + 4632) = 0u;
    *(result + 4616) = 0u;
    *(result + 4600) = 0u;
    *(result + 4584) = 0u;
    *(result + 4568) = 0u;
    *(result + 4552) = 0u;
    *(result + 4536) = 0u;
    *(result + 4520) = 0u;
    *(result + 4504) = 0u;
    *(result + 4488) = 0u;
    *(result + 4472) = 0u;
    *(result + 4456) = 0u;
    *(result + 4440) = 0u;
    *(result + 4424) = 0u;
    *(result + 4408) = 0u;
    *(result + 4392) = 0u;
    *(result + 4376) = 0u;
    *(result + 4360) = 0u;
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

  *(result + 0x2000) = v3;
  return result;
}

BOOL sub_2662B8600(void *a1, uint64_t *a2)
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

uint64_t sub_2662B8708(uint64_t a1, uint64_t a2)
{
  sub_2664E0E68();
  swift_getWitnessTable();
  sub_2664DF658();
  return sub_2664E0EB8();
}

uint64_t sub_2662B87B8()
{
  sub_2664E0E68();
  sub_2664E0E98();
  return sub_2664E0EB8();
}

uint64_t sub_2662B8800(uint64_t a1)
{
  sub_2664E0E68();
  sub_2664E0E98();
  return sub_2664E0EB8();
}

uint64_t sub_2662B8844()
{
  v1 = *v0;
  sub_2664E0E68();
  MEMORY[0x266783E90](v1);
  return sub_2664E0EB8();
}

uint64_t sub_2662B888C(uint64_t a1)
{
  v2 = *v1;
  sub_2664E0E68();
  MEMORY[0x266783E90](v2);
  return sub_2664E0EB8();
}

uint64_t sub_2662B8920(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_2664DF648();
}

uint64_t sub_2662B89D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2662B8AE8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2662B8B3C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
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

uint64_t sub_2662B8BA4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_2662B8C00(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_2662B8D00(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_2662B8D6C()
{
  if (qword_280F8F800 != -1)
  {
    swift_once();
  }

  v0 = qword_280F8F808;
  qword_280F90290 = type metadata accessor for MultiUserConnectionProvider();
  unk_280F90298 = &protocol witness table for MultiUserConnectionProvider;
  qword_280F90278 = v0;
  qword_280F902A0 = sub_2662B9148;
  unk_280F902A8 = 0;
}

uint64_t static InstalledAppProvider.shared.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = a1;
  if (qword_280F90270 != -1)
  {
    swift_once();
    v2 = a1;
  }

  return sub_2662B8E78(&qword_280F90278, v2);
}

uint64_t sub_2662B8EB0()
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
  v8 = _s16SiriAudioSupport14DispatchQueuesV5queue_3qos10attributesSo012OS_dispatch_F0CSS_0D00D3QoSVAhIE10AttributesVtFZ_0(0xD000000000000014, 0x80000002664E35C0, v7, v3);
  (*(v1 + 8))(v3, v0);
  result = (*(v5 + 8))(v7, v4);
  qword_280F902C0 = v8;
  return result;
}

uint64_t sub_2662B9048()
{
  if (!static SiriEnvironmentWrapper.retrieve()())
  {
    sub_2664DF528();
    sub_2664DF518();
  }

  sub_2664DF4E8();

  sub_2664DEAE8();
  sub_2664DEAD8();
}

uint64_t sub_2662B90BC()
{
  v0 = sub_2662C3A68(&unk_2877E1200);
  result = swift_arrayDestroy();
  qword_280F91C90 = v0;
  return result;
}

uint64_t sub_2662B9108()
{
  v0 = sub_2662C3A68(&unk_2877E1240);
  result = sub_2662C1834(&unk_2877E1260);
  qword_280F91C88 = v0;
  return result;
}

uint64_t sub_2662B9188(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (qword_280F902D0 != -1)
  {
    v13 = a1;
    swift_once();
    a1 = v13;
  }

  v8 = off_280F902D8;
  v14[0] = 0x6968747972657665;
  v14[1] = 0xEA0000000000676ELL;
  if (a1)
  {
    v9 = 0x405E000000000000;
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  v11 = *(*v8 + 160);

  v11(v14, sub_2662BCC08, 0, v9, 0, a5, v10);
}

uint64_t sub_2662B92B8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34D0;
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072480, &qword_2664E3690);
  *(inited + 32) = sub_2664E0318();
  *(inited + 40) = v1;
  sub_2662C1744(0, &unk_280F8F588, 0x277CD4030);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072488, &qword_2664E3698);
  *(inited + 48) = sub_2664E0318();
  *(inited + 56) = v2;
  sub_2662C1744(0, &qword_280F8F580, 0x277CD42B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072490, &qword_2664E36A0);
  *(inited + 64) = sub_2664E0318();
  *(inited + 72) = v3;
  sub_2662C1744(0, &qword_280F8F5F8, 0x277CD39F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072498, &qword_2664E36A8);
  *(inited + 80) = sub_2664E0318();
  *(inited + 88) = v4;
  v5 = sub_2662C3A68(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_280F91CA8 = v5;
  return result;
}

uint64_t sub_2662B9448()
{
  v0 = sub_2662C3A68(&unk_2877E1270);
  result = swift_arrayDestroy();
  qword_280F91CA0 = v0;
  return result;
}

uint64_t sub_2662B9494()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072478, &unk_2664EA600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2664E34E0;
  sub_2662C1744(0, &qword_280F8F5E0, 0x277CD3EC0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072480, &qword_2664E3690);
  *(inited + 32) = sub_2664E0318();
  *(inited + 40) = v1;
  sub_2662C1744(0, &qword_280F8F5F8, 0x277CD39F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072498, &qword_2664E36A8);
  *(inited + 48) = sub_2664E0318();
  *(inited + 56) = v2;
  v3 = sub_2662C3A68(inited);
  swift_setDeallocating();
  result = swift_arrayDestroy();
  qword_280F91C98 = v3;
  return result;
}

uint64_t sub_2662B95A4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800724A0, &qword_2664E36B0);
  v0 = swift_allocObject();
  *(v0 + 16) = sub_266385498(MEMORY[0x277D84F90]);
  *(v0 + 32) = 0xD000000000000019;
  *(v0 + 40) = 0x80000002664F37E0;
  if (qword_280F91468 != -1)
  {
    swift_once();
  }

  v1 = qword_280F91470;
  v3[3] = type metadata accessor for SiriKitTaskLoggingProvider();
  v3[4] = &protocol witness table for SiriKitTaskLoggingProvider;
  v3[0] = v1;
  type metadata accessor for PThreadMutex();
  swift_allocObject();

  result = PThreadMutex.init(name:abortOnFail:analyticsService:)(0xD000000000000019, 0x80000002664F37E0, 1, v3);
  *(v0 + 24) = result;
  off_280F902D8 = v0;
  return result;
}

uint64_t sub_2662B96B8(uint64_t (**a1)(uint64_t), uint64_t a2, uint64_t (*a3)(void))
{
  v4 = *a1;
  v5 = a3();
  swift_beginAccess();
  *(a2 + 16) = v5;

  return v4(v6);
}

uint64_t sub_2662B9720(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v44 = a6;
  v45 = a5;
  v46 = a4;
  v9 = sub_2664DE438();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v43 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v14 = &v40 - v13;
  v15 = sub_2664DFE38();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v19 = *(a1 + 16);
  swift_beginAccess();
  v20 = *(a2 + 16);

  v21 = _s16SiriAudioSupport12InstalledAppV13additiveMerge4left5rightSayACGAG_AGtFZ_0(v19, v20);

  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v15, qword_280F914F0);
  swift_beginAccess();
  (*(v16 + 16))(v18, v22, v15);
  (*(v10 + 16))(v14, a3, v9);

  v23 = sub_2664DFE18();
  v24 = v18;
  v25 = v9;
  v26 = sub_2664E06C8();

  if (os_log_type_enabled(v23, v26))
  {
    v27 = swift_slowAlloc();
    v41 = v24;
    v28 = v27;
    v29 = swift_slowAlloc();
    v40 = v16;
    v30 = v29;
    v47 = v29;
    *v28 = 136315394;
    v31 = sub_2662B9B7C(v21);
    v42 = v21;
    v33 = sub_2662A320C(v31, v32, &v47);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2048;
    v34 = v43;
    sub_2664DE428();
    sub_2664DE388();
    v36 = v35;
    v37 = *(v10 + 8);
    v37(v34, v25);
    v37(v14, v25);
    v21 = v42;
    *(v28 + 14) = v36;
    _os_log_impl(&dword_26629C000, v23, v26, "InstalledAppProvider#apps found %s bundles in %fms", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x266784AD0](v30, -1, -1);
    MEMORY[0x266784AD0](v28, -1, -1);

    (*(v40 + 8))(v41, v15);
  }

  else
  {

    (*(v10 + 8))(v14, v25);
    (*(v16 + 8))(v24, v15);
  }

  v38 = swift_allocObject();
  *(v38 + 16) = v45;
  *(v38 + 24) = v44;

  sub_2662BFA30(v21, v46, sub_2662C13F4, v38);
}

uint64_t sub_2662B9B7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v11 = MEMORY[0x277D84F90];
    sub_2662FCF24(0, v1, 0);
    v3 = a1 + 48;
    do
    {
      v4 = *(v3 - 16);
      v5 = *(v3 - 8);

      sub_2664E0B28();
      MEMORY[0x2667833B0](0xD000000000000021, 0x80000002664F36A0);
      MEMORY[0x2667833B0](v4, v5);
      MEMORY[0x2667833B0](0xD000000000000012, 0x80000002664F36D0);
      sub_2664E0C28();
      MEMORY[0x2667833B0](32032, 0xE200000000000000);

      v7 = *(v11 + 16);
      v6 = *(v11 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_2662FCF24((v6 > 1), v7 + 1, 1);
      }

      v3 += 64;
      *(v11 + 16) = v7 + 1;
      v8 = v11 + 16 * v7;
      *(v8 + 32) = 0;
      *(v8 + 40) = 0xE000000000000000;
      --v1;
    }

    while (v1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072440, &qword_2664E3600);
  sub_2662C1428(&qword_280F8F658, &qword_280072440, &qword_2664E3600, MEMORY[0x277D83958]);
  v9 = sub_2664E0288();

  return v9;
}

uint64_t sub_2662B9DE0(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = sub_2664DFE38();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v4, qword_280F914F0);
  swift_beginAccess();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2664DFE18();
  v10 = sub_2664E06C8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21 = v5;
    v12 = v11;
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    v14 = sub_2662B9B7C(a1);
    v16 = sub_2662A320C(v14, v15, &v22);
    v20 = v4;
    v17 = a2;
    v18 = v16;

    *(v12 + 4) = v18;
    a2 = v17;
    _os_log_impl(&dword_26629C000, v9, v10, "InstalledAppProvider#apps non-hidden apps: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x266784AD0](v13, -1, -1);
    MEMORY[0x266784AD0](v12, -1, -1);

    (*(v21 + 8))(v7, v20);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return a2(a1);
}

uint64_t sub_2662BA058(_OWORD *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v29 = a3;
  v25 = sub_2664E0038();
  v28 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_2664E00B8();
  v26 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[1];
  v33[0] = *a1;
  v33[1] = v12;
  v13 = a1[3];
  v33[2] = a1[2];
  v33[3] = v13;
  dispatch_group_enter(a2);
  v14 = v33[0];
  v15 = swift_allocObject();
  *(v15 + 16) = a2;
  *(v15 + 24) = a5;
  v16 = a1[1];
  *(v15 + 32) = *a1;
  *(v15 + 48) = v16;
  v17 = a1[3];
  *(v15 + 64) = a1[2];
  *(v15 + 80) = v17;
  sub_2662A5550(v24, v32);
  v18 = swift_allocObject();
  *(v18 + 16) = v14;
  sub_2662A8618(v32, v18 + 32);
  *(v18 + 72) = sub_2662C1470;
  *(v18 + 80) = v15;
  aBlock[4] = sub_2662C147C;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2662A3F90;
  aBlock[3] = &block_descriptor_65;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  sub_2662C0AE0(v33, v30);

  sub_2664E0068();
  v30[0] = MEMORY[0x277D84F90];
  sub_2662C16C0(&qword_280F8F6A0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280074210, &qword_2664E3640);
  sub_2662C1428(&qword_280F8F660, &qword_280074210, &qword_2664E3640, MEMORY[0x277D83970]);
  v21 = v25;
  sub_2664E0A08();
  MEMORY[0x266783800](0, v11, v9, v19);
  _Block_release(v19);

  (*(v28 + 8))(v9, v21);
  (*(v26 + 8))(v11, v27);
}

void sub_2662BA41C(uint64_t a1, NSObject *a2, uint64_t a3, _OWORD *a4)
{
  v58 = a2;
  v59 = a4;
  v55 = a3;
  v5 = sub_2664DEAF8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v52 - v10;
  v12 = sub_2664DEB18();
  v54 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_2664DFE38();
  v56 = *(v15 - 8);
  v57 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v53 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v52 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072450, &qword_2664E3610);
  MEMORY[0x28223BE20](v20);
  v22 = (&v52 - v21);
  sub_2662C0C3C(a1, &v52 - v21);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v38 = v54;
    (*(v54 + 32))(v14, v22, v12);
    sub_2664DEB08();
    (*(v6 + 104))(v9, *MEMORY[0x277D5BDF8], v5);
    sub_2662C16C0(&qword_280F914C0, MEMORY[0x277D5BE10], MEMORY[0x277D5BE18]);
    v39 = sub_2664E0298();
    v40 = *(v6 + 8);
    v40(v9, v5);
    v40(v11, v5);
    if (v39)
    {
      v41 = v59;
      if (qword_280F914E8 != -1)
      {
        swift_once();
      }

      v42 = v57;
      v43 = __swift_project_value_buffer(v57, qword_280F914F0);
      swift_beginAccess();
      v44 = v56;
      v45 = v53;
      (*(v56 + 16))(v53, v43, v42);
      sub_2662C0AE0(v41, v60);
      v46 = sub_2664DFE18();
      v47 = sub_2664E06D8();
      sub_2662C0B3C(v41);
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = v14;
        v50 = v44;
        v51 = swift_slowAlloc();
        v60[0] = v51;
        *v48 = 136315138;
        *(v48 + 4) = sub_2662A320C(*v41, *(v41 + 1), v60);
        _os_log_impl(&dword_26629C000, v46, v47, "InstalledAppProvider#lsRecordApps app: %s is hidden. Excluding from installed apps", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v51);
        MEMORY[0x266784AD0](v51, -1, -1);
        MEMORY[0x266784AD0](v48, -1, -1);

        (*(v50 + 8))(v53, v42);
        (*(v38 + 8))(v49, v12);
        goto LABEL_16;
      }

      (*(v44 + 8))(v45, v42);
    }

    else
    {
      swift_beginAccess();

      sub_2662BD754(v59);
    }

    (*(v38 + 8))(v14, v12);
    goto LABEL_16;
  }

  v23 = *v22;
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v24 = v57;
  v25 = __swift_project_value_buffer(v57, qword_280F914F0);
  swift_beginAccess();
  v26 = v56;
  (*(v56 + 16))(v19, v25, v24);
  v27 = v23;
  v28 = sub_2664DFE18();
  v29 = sub_2664E06D8();

  v30 = os_log_type_enabled(v28, v29);
  v31 = v59;
  if (v30)
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v61[0] = v33;
    *v32 = 136315138;
    swift_getErrorValue();
    v34 = sub_2664E0DE8();
    v36 = v26;
    v37 = sub_2662A320C(v34, v35, v61);

    *(v32 + 4) = v37;
    _os_log_impl(&dword_26629C000, v28, v29, "Error getting protected app status: %s. Including app anyway", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x266784AD0](v33, -1, -1);
    MEMORY[0x266784AD0](v32, -1, -1);

    (*(v36 + 8))(v19, v24);
    v31 = v59;
  }

  else
  {

    (*(v26 + 8))(v19, v24);
  }

  swift_beginAccess();

  sub_2662BD754(v31);

LABEL_16:
  dispatch_group_leave(v58);
}

uint64_t sub_2662BAB48(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  swift_beginAccess();

  v4 = sub_2662BDA94();

  a1(v4);
}

uint64_t sub_2662BABC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280072BD0, &qword_2664E3550);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v18 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a4;
  *(v13 + 24) = a5;
  sub_2662A5550(a3, v19);
  v14 = swift_allocObject();
  sub_2662A8618(v19, v14 + 16);
  *(v14 + 56) = a1;
  *(v14 + 64) = a2;
  v15 = sub_2664E05C8();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_2664E3648;
  v16[5] = v14;
  v16[6] = sub_2662C148C;
  v16[7] = v13;

  sub_26633E760(0, 0, v12, &unk_2664E3650, v16);
}

uint64_t sub_2662BAD74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[7] = a3;
  v4[8] = a4;
  v4[5] = a1;
  v4[6] = a2;
  v5 = sub_2664DFE38();
  v4[9] = v5;
  v4[10] = *(v5 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2662BAE38, 0, 0);
}

uint64_t sub_2662BAE38()
{
  if (qword_280F914E8 != -1)
  {
    swift_once();
  }

  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = __swift_project_value_buffer(v3, qword_280F914F0);
  swift_beginAccess();
  (*(v2 + 16))(v1, v4, v3);
  v5 = sub_2664DFE18();
  v6 = sub_2664E06E8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26629C000, v5, v6, "InstalledAppProvider#protectedAppStatus getting protected app client status", v7, 2u);
    MEMORY[0x266784AD0](v7, -1, -1);
  }

  v9 = v0[10];
  v8 = v0[11];
  v10 = v0[9];
  v11 = v0[6];

  (*(v9 + 8))(v8, v10);
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = swift_task_alloc();
  v0[12] = v14;
  *v14 = v0;
  v14[1] = sub_2662BB008;
  v15 = v0[7];
  v16 = v0[8];
  v17 = v0[5];

  return MEMORY[0x2821BB7C0](v17, v15, v16, v12, v13);
}

uint64_t sub_2662BB008()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}