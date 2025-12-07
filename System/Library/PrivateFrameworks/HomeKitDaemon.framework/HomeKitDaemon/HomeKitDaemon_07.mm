unint64_t sub_2295EF000()
{
  result = qword_281403880;
  if (!qword_281403880)
  {
    sub_22A4DB7DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281403880);
  }

  return result;
}

uint64_t sub_2295EF058@<X0>(_BYTE *a2@<X8>)
{
  result = sub_22A4DB78C();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2295EF0B8()
{
  v0 = sub_22A4DD07C();
  __swift_allocate_value_buffer(v0, qword_27D87DAF0);
  __swift_project_value_buffer(v0, qword_27D87DAF0);
  sub_22A4DD5EC();
  return sub_22A4DD06C();
}

void *sub_2295EF130(void *a1)
{
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v43[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v43[-v8];
  MEMORY[0x28223BE20](v7);
  v11 = &v43[-v10];
  type metadata accessor for CleanEnergyAutomationReducedEnergyLogEvent();
  result = swift_dynamicCastClass();
  if (result)
  {
    v13 = result;
    v14 = a1;
    v15 = [v13 homeUUID];
    sub_22A4DB79C();

    if (sub_2295EF754(v11))
    {
      sub_22A4DBE1C();
      if (qword_27D87B8F0 != -1)
      {
        swift_once();
      }

      v16 = sub_22A4DD07C();
      __swift_project_value_buffer(v16, qword_27D87DAF0);
      (*(v3 + 16))(v9, v11, v2);
      v17 = v14;
      v18 = sub_22A4DD05C();
      v19 = sub_22A4DDCCC();

      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v49 = v48;
        *v20 = 136315650;
        sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v45 = v18;
        v21 = sub_22A4DE5CC();
        v44 = v19;
        v23 = v22;
        v47 = v2;
        v24 = *(v3 + 8);
        v24(v9, v2);
        v25 = sub_2295A3E30(v21, v23, &v49);

        *(v20 + 4) = v25;
        *(v20 + 12) = 2080;
        *(v20 + 14) = sub_2295A3E30(0x286576726573626FLL, 0xEB00000000293A5FLL, &v49);
        *(v20 + 22) = 2112;
        *(v20 + 24) = v13;
        v26 = v46;
        *v46 = v13;
        v27 = v17;
        v28 = v45;
        _os_log_impl(&dword_229538000, v45, v44, "[%s]%s Incremented reduced usage count with log event %@", v20, 0x20u);
        sub_22953EAE4(v26, &qword_27D87D7D0, &unk_22A578D90);
        MEMORY[0x22AAD4E50](v26, -1, -1);
        v29 = v48;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v29, -1, -1);
        MEMORY[0x22AAD4E50](v20, -1, -1);

        return (v24)(v11, v47);
      }

      v42 = *(v3 + 8);
      v42(v9, v2);
    }

    else
    {
      if (qword_27D87B8F0 != -1)
      {
        swift_once();
      }

      v30 = sub_22A4DD07C();
      __swift_project_value_buffer(v30, qword_27D87DAF0);
      (*(v3 + 16))(v6, v11, v2);
      v31 = sub_22A4DD05C();
      v32 = sub_22A4DDCEC();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = swift_slowAlloc();
        v46 = v14;
        v34 = v2;
        v35 = v33;
        v48 = swift_slowAlloc();
        v49 = v48;
        *v35 = 136315394;
        sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v36 = sub_22A4DE5CC();
        v38 = v37;
        v39 = *(v3 + 8);
        v39(v6, v34);
        v40 = sub_2295A3E30(v36, v38, &v49);

        *(v35 + 4) = v40;
        *(v35 + 12) = 2080;
        *(v35 + 14) = sub_2295A3E30(0x286576726573626FLL, 0xEB00000000293A5FLL, &v49);
        _os_log_impl(&dword_229538000, v31, v32, "[%s]%s Counter group is nil", v35, 0x16u);
        v41 = v48;
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v41, -1, -1);
        MEMORY[0x22AAD4E50](v35, -1, -1);

        return (v39)(v11, v34);
      }

      v42 = *(v3 + 8);
      v42(v6, v2);
    }

    return (v42)(v11, v2);
  }

  return result;
}

uint64_t sub_2295EF754(uint64_t a1)
{
  if (*(v1 + OBJC_IVAR____TtC13HomeKitDaemon49CleanEnergyAutomationConfigurationLogEventFactory_countersManager))
  {

    v2 = sub_22A4DBFDC();

    return v2;
  }

  else
  {
    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v4 = sub_22A4DD07C();
    __swift_project_value_buffer(v4, qword_27D87DAF0);
    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDCEC();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_2295A3E30(0xD000000000000017, 0x800000022A58C810, &v9);
      _os_log_impl(&dword_229538000, v5, v6, "%s Counters manager is nil", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v8);
      MEMORY[0x22AAD4E50](v8, -1, -1);
      MEMORY[0x22AAD4E50](v7, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_2295EF94C(char *a1, uint64_t a2)
{
  v5 = sub_22A4DB7DC();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v71 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v71 - v11;
  v13 = MEMORY[0x28223BE20](v10);
  v72 = &v71 - v14;
  MEMORY[0x28223BE20](v13);
  v71 = &v71 - v15;
  v16 = [*(v2 + OBJC_IVAR____TtC13HomeKitDaemon49CleanEnergyAutomationConfigurationLogEventFactory_dataSource) homeDataSources];
  if (!v16 || (v17 = v16, __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DB80, &qword_22A57A150), v18 = v6, v19 = v5, v20 = sub_22A4DD83C(), v17, MEMORY[0x28223BE20](v21), *(&v71 - 2) = a1, v22 = sub_229685214(sub_2295F1E3C, (&v71 - 4), v20), v5 = v19, v6 = v18, , !v22))
  {
    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v35 = sub_22A4DD07C();
    __swift_project_value_buffer(v35, qword_27D87DAF0);
    (*(v6 + 16))(v9, a1, v5);
    v36 = sub_22A4DD05C();
    v37 = sub_22A4DDCEC();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v74 = v39;
      *v38 = 136315394;
      sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v40 = sub_22A4DE5CC();
      v42 = v41;
      (*(v6 + 8))(v9, v5);
      v43 = sub_2295A3E30(v40, v42, &v74);

      *(v38 + 4) = v43;
      *(v38 + 12) = 2080;
      *(v38 + 14) = sub_2295A3E30(0xD00000000000002FLL, 0x800000022A58C720, &v74);
      _os_log_impl(&dword_229538000, v36, v37, "[%s]%s Unable to find homeDataSource", v38, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v39, -1, -1);
      MEMORY[0x22AAD4E50](v38, -1, -1);
    }

    else
    {

      (*(v6 + 8))(v9, v5);
    }

    return 0;
  }

  v23 = v12;
  v24 = sub_2295F07B4(a1, a2);
  if (v25)
  {
    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v26 = sub_22A4DD07C();
    __swift_project_value_buffer(v26, qword_27D87DAF0);
    (*(v18 + 16))(v12, a1, v5);
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCEC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v74 = v30;
      *v29 = 136315394;
      sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v31 = sub_22A4DE5CC();
      v33 = v32;
      (*(v6 + 8))(v23, v5);
      v34 = sub_2295A3E30(v31, v33, &v74);

      *(v29 + 4) = v34;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_2295A3E30(0xD00000000000002FLL, 0x800000022A58C720, &v74);
      _os_log_impl(&dword_229538000, v27, v28, "[%s]%s Error getting reduced usage count", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v18 + 8))(v12, v5);
    }

    return 0;
  }

  v44 = v24;
  if ([v22 isCurrentDevicePrimaryResident])
  {
    v45 = sub_2295F1E5C(v22, a1, v44);
  }

  else
  {
    v47 = v71;
    (*(v18 + 16))(v71, a1, v5);
    v48 = type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
    v49 = objc_allocWithZone(v48);
    v50 = &v49[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventName];
    *v50 = 0xD000000000000034;
    v50[1] = 0x800000022A58C750;
    *&v49[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventOptions] = 1;
    *&v49[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_accessoryCount] = 0;
    *&v49[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_cleanEnergyAutomationEnabledCount] = 0;
    v49[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeConnectedToUtility] = 0;
    v49[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeElectricityRatesEnabled] = 0;
    *&v49[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_reducedUsageCount] = v44;
    v49[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_containsConfigurationData] = 0;
    v51 = sub_22A4DB77C();
    v73.receiver = v49;
    v73.super_class = v48;
    v45 = objc_msgSendSuper2(&v73, sel_initWithHomeUUID_, v51);

    (*(v6 + 8))(v47, v5);
  }

  v52 = v72;
  v53 = qword_27D87B8F0;
  v54 = v45;
  if (v53 != -1)
  {
    swift_once();
  }

  v55 = sub_22A4DD07C();
  __swift_project_value_buffer(v55, qword_27D87DAF0);
  (*(v6 + 16))(v52, a1, v5);
  v56 = v54;
  v57 = sub_22A4DD05C();
  v58 = sub_22A4DDCCC();

  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    v72 = v22;
    v60 = v52;
    v61 = v59;
    v62 = v5;
    v63 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v74 = v71;
    *v61 = 136315650;
    sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v64 = sub_22A4DE5CC();
    v66 = v65;
    (*(v6 + 8))(v60, v62);
    v67 = sub_2295A3E30(v64, v66, &v74);

    *(v61 + 4) = v67;
    *(v61 + 12) = 2080;
    *(v61 + 14) = sub_2295A3E30(0xD00000000000002FLL, 0x800000022A58C720, &v74);
    *(v61 + 22) = 2112;
    *(v61 + 24) = v56;
    *v63 = v56;
    v68 = v56;
    _os_log_impl(&dword_229538000, v57, v58, "[%s]%s Log event %@", v61, 0x20u);
    sub_22953EAE4(v63, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v63, -1, -1);
    v69 = v71;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v69, -1, -1);
    MEMORY[0x22AAD4E50](v61, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v52, v5);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v70 = swift_allocObject();
  *(v70 + 16) = xmmword_22A576190;
  *(v70 + 32) = v56;
  swift_unknownObjectRelease();

  return v70;
}

uint64_t sub_2295F0324(id *a1, uint64_t a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v29 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = [*a1 uuid];
  if (v18)
  {
    v19 = v18;
    sub_22A4DB79C();

    v20 = *(v5 + 56);
    v20(v17, 0, 1, v4);
  }

  else
  {
    v20 = *(v5 + 56);
    v20(v17, 1, 1, v4);
  }

  (*(v5 + 16))(v15, a2, v4);
  v20(v15, 0, 1, v4);
  v21 = *(v7 + 48);
  sub_2295F2274(v17, v9);
  sub_2295F2274(v15, &v9[v21]);
  v22 = *(v5 + 48);
  if (v22(v9, 1, v4) != 1)
  {
    v24 = v29;
    sub_2295F2274(v9, v29);
    if (v22(&v9[v21], 1, v4) != 1)
    {
      v25 = v28;
      (*(v5 + 32))(v28, &v9[v21], v4);
      sub_2295F22E4(&qword_281403870, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v23 = sub_22A4DD58C();
      v26 = *(v5 + 8);
      v26(v25, v4);
      sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
      sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
      v26(v29, v4);
      sub_22953EAE4(v9, &unk_27D87D2A0, &unk_22A578BD0);
      return v23 & 1;
    }

    sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
    (*(v5 + 8))(v24, v4);
    goto LABEL_9;
  }

  sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
  sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
  if (v22(&v9[v21], 1, v4) != 1)
  {
LABEL_9:
    sub_22953EAE4(v9, &qword_27D87DBA0, &qword_22A57A158);
    v23 = 0;
    return v23 & 1;
  }

  sub_22953EAE4(v9, &unk_27D87D2A0, &unk_22A578BD0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_2295F07B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22A4DB74C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_2295EF754(a1))
  {
    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v12 = sub_22A4DD07C();
    __swift_project_value_buffer(v12, qword_27D87DAF0);
    (*(v9 + 16))(v11, a2, v8);
    v13 = sub_22A4DD05C();
    v14 = sub_22A4DDCCC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v35 = a2;
      v36 = v16;
      v17 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_2295A3E30(0xD000000000000021, 0x800000022A58C7C0, &v36);
      *(v15 + 12) = 2080;
      sub_2295F22E4(&qword_281403890, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
      v18 = sub_22A4DE5CC();
      v20 = v19;
      (*(v9 + 8))(v11, v8);
      v21 = sub_2295A3E30(v18, v20, &v36);

      *(v15 + 14) = v21;
      _os_log_impl(&dword_229538000, v13, v14, "%s from date %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v17, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    v31 = sub_22A4DBEAC();
    v33 = v32;

    if (v33)
    {
      return 0;
    }

    else
    {
      return v31;
    }
  }

  else
  {
    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v22 = sub_22A4DD07C();
    __swift_project_value_buffer(v22, qword_27D87DAF0);
    (*(v5 + 16))(v7, a1, v4);
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 136315394;
      sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v27 = sub_22A4DE5CC();
      v29 = v28;
      (*(v5 + 8))(v7, v4);
      v30 = sub_2295A3E30(v27, v29, &v36);

      *(v25 + 4) = v30;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2295A3E30(0xD000000000000021, 0x800000022A58C7C0, &v36);
      _os_log_impl(&dword_229538000, v23, v24, "[%s]%s Counter group is nil", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }

    return 0;
  }
}

uint64_t sub_2295F120C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_22A4DB74C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB70C();
  return (*(v4 + 8))(v6, v3);
}

id sub_2295F1304()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CleanEnergyAutomationConfigurationLogEventFactory();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2295F13B8()
{
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DCD0C();
  v85 = *(v2 - 8);
  v86 = v2;
  MEMORY[0x28223BE20](v2);
  v84 = &v80[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_22A4DB7DC();
  v91 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v80[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v80[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = MEMORY[0x28223BE20](v9);
  v89 = &v80[-v13];
  v14 = MEMORY[0x28223BE20](v12);
  v83 = &v80[-v15];
  MEMORY[0x28223BE20](v14);
  v17 = &v80[-v16];
  sub_229785E38();
  v18 = v0;
  v19 = sub_22A4DD05C();
  v20 = sub_22A4DDCCC();

  v21 = os_log_type_enabled(v19, v20);
  v88 = v6;
  if (v21)
  {
    v22 = swift_slowAlloc();
    v87 = v7;
    v23 = v22;
    v24 = swift_slowAlloc();
    v90 = ObjectType;
    v82 = v24;
    v95[0] = v24;
    *v23 = 136315394;
    *(v23 + 4) = sub_2295A3E30(0xD000000000000029, 0x800000022A58C790, v95);
    *(v23 + 12) = 2080;
    v25 = [v18 uuid];
    v81 = v20;
    v26 = v25;
    sub_22A4DB79C();

    sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v27 = sub_22A4DE5CC();
    v28 = v11;
    v29 = v8;
    v31 = v30;
    (*(v91 + 8))(v6, v4);
    v32 = sub_2295A3E30(v27, v31, v95);
    v8 = v29;
    v11 = v28;

    *(v23 + 14) = v32;
    _os_log_impl(&dword_229538000, v19, v81, "%s Fetching climate accessory endpoint settings for accessory %s", v23, 0x16u);
    v33 = v82;
    swift_arrayDestroy();
    ObjectType = v90;
    MEMORY[0x22AAD4E50](v33, -1, -1);
    v34 = v23;
    v7 = v87;
    MEMORY[0x22AAD4E50](v34, -1, -1);
  }

  v35 = *(v8 + 8);
  v35(v17, v7);
  v36 = [v18 matterAdapter];
  if (!v36)
  {
    goto LABEL_8;
  }

  v37 = v36;
  v38 = [v36 matterDevice];
  if (!v38)
  {

LABEL_8:
    v87 = v35;
    v43 = v89;
    sub_229785E38();
    v44 = v18;
    v45 = sub_22A4DD05C();
    v46 = sub_22A4DDCEC();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v86 = v8;
      v48 = v47;
      v49 = swift_slowAlloc();
      v95[0] = v49;
      *v48 = 136315394;
      *(v48 + 4) = sub_2295A3E30(0xD000000000000029, 0x800000022A58C790, v95);
      *(v48 + 12) = 2080;
      v50 = [v44 uuid];
      v51 = v88;
      sub_22A4DB79C();

      sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v52 = sub_22A4DE5CC();
      v54 = v53;
      (*(v91 + 8))(v51, v4);
      v55 = sub_2295A3E30(v52, v54, v95);

      *(v48 + 14) = v55;
      _os_log_impl(&dword_229538000, v45, v46, "%s [%s] Missing matter device", v48, 0x16u);
      v72 = 2;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v49, -1, -1);
      MEMORY[0x22AAD4E50](v48, -1, -1);

      v87(v43, v7);
      return v72;
    }

    v87(v43, v7);
    return 2;
  }

  v39 = v38;
  v93 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
  v94 = MEMORY[0x277D17450];
  *&v92 = v39;
  sub_229557188(&v92, v95);
  v40 = [v18 alvaradoMatterEndpoint];
  v90 = ObjectType;
  if (!v40)
  {
    v89 = v4;
    v87 = v7;
    v56 = v83;
    sub_229785E38();
    v57 = v18;
    v58 = sub_22A4DD05C();
    v59 = sub_22A4DDCEC();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v86 = v8;
      v61 = v60;
      v85 = swift_slowAlloc();
      *&v92 = v85;
      *v61 = 136315394;
      *(v61 + 4) = sub_2295A3E30(0xD000000000000029, 0x800000022A58C790, &v92);
      *(v61 + 12) = 2080;
      v62 = [v57 uuid];
      v63 = v88;
      sub_22A4DB79C();

      sub_2295F22E4(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v64 = v89;
      v65 = sub_22A4DE5CC();
      v67 = v66;
      (*(v91 + 8))(v63, v64);
      v68 = sub_2295A3E30(v65, v67, &v92);

      *(v61 + 14) = v68;
      _os_log_impl(&dword_229538000, v58, v59, "%s [%s] Found no Alvarado-capable endpoint", v61, 0x16u);
      v69 = v85;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v69, -1, -1);
      MEMORY[0x22AAD4E50](v61, -1, -1);

      v70 = v83;
    }

    else
    {

      v70 = v56;
    }

    v73 = v87;
    v35(v70, v87);
    v74 = [objc_opt_self() hmErrorWithCode_];
    swift_willThrow();

    __swift_destroy_boxed_opaque_existential_0(v95);
    sub_229785E38();
    v75 = sub_22A4DD05C();
    v76 = sub_22A4DDCEC();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v95[0] = v78;
      *v77 = 136315138;
      *(v77 + 4) = sub_2295A3E30(0xD000000000000029, 0x800000022A58C790, v95);
      _os_log_impl(&dword_229538000, v75, v76, "%s Failed to fetch clean energy automation configuration", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v78);
      MEMORY[0x22AAD4E50](v78, -1, -1);
      MEMORY[0x22AAD4E50](v77, -1, -1);
    }

    v35(v11, v73);
    return 2;
  }

  v41 = v40;
  [v40 unsignedShortValue];
  v42 = v84;
  sub_22A4DCCEC();
  v71 = sub_22A4DCBFC();

  (*(v85 + 8))(v42, v86);
  __swift_destroy_boxed_opaque_existential_0(v95);
  return v71 & 1;
}

id sub_2295F1E5C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = [a1 hapAccessories];
  if (result)
  {
    v11 = result;
    v38 = a2;
    v39 = a3;
    v40 = v9;
    v41 = v7;
    v42 = v6;
    sub_229562F68(0, &qword_281401B70, off_278666148);
    v12 = sub_22A4DD83C();

    v44 = MEMORY[0x277D84F90];
    if (v12 >> 62)
    {
      goto LABEL_17;
    }

    for (i = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
    {
      v14 = 0;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x22AAD13F0](v14, v12);
        }

        else
        {
          if (v14 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_16;
          }

          v15 = *(v12 + 8 * v14 + 32);
        }

        v16 = v15;
        v17 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          break;
        }

        v18 = [v15 supportsCleanEnergyAutomation];
        v19 = [v18 BOOLValue];

        if (v19)
        {
          sub_22A4DE27C();
          sub_22A4DE2AC();
          sub_22A4DE2BC();
          sub_22A4DE28C();
        }

        else
        {
        }

        ++v14;
        if (v17 == i)
        {
          v20 = v44;
          goto LABEL_19;
        }
      }

      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      ;
    }

    v20 = MEMORY[0x277D84F90];
LABEL_19:

    if (v20 < 0 || (v20 & 0x4000000000000000) != 0)
    {
      goto LABEL_36;
    }

    v21 = *(v20 + 16);
    if (v21)
    {
LABEL_22:
      if (v21 < 1)
      {
        __break(1u);
        goto LABEL_40;
      }

      v22 = 0;
      v23 = 0;
      v24 = 0;
      v25 = 0;
      while (1)
      {
        if ((v20 & 0xC000000000000001) != 0)
        {
          v26 = MEMORY[0x22AAD13F0](v25, v20);
        }

        else
        {
          v26 = *(v20 + 8 * v25 + 32);
        }

        v27 = v26;
        v28 = sub_2295F13B8();

        if (v28 != 2)
        {
          v23 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_35;
          }

          if ((v28 & 1) != 0 && __OFADD__(v22++, 1))
          {
            __break(1u);
LABEL_35:
            __break(1u);
LABEL_36:
            result = sub_22A4DE0EC();
            v21 = result;
            if (!result)
            {
              break;
            }

            goto LABEL_22;
          }

          ++v24;
        }

        if (v21 == ++v25)
        {
          goto LABEL_38;
        }
      }
    }

    v22 = 0;
    v23 = 0;
LABEL_38:

    v31 = v40;
    v30 = v41;
    v32 = v42;
    (*(v41 + 16))(v40, v38, v42);
    v33 = type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
    v34 = objc_allocWithZone(v33);
    v35 = &v34[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventName];
    *v35 = 0xD000000000000034;
    v35[1] = 0x800000022A58C750;
    *&v34[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventOptions] = 1;
    *&v34[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_accessoryCount] = v23;
    *&v34[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_cleanEnergyAutomationEnabledCount] = v22;
    v34[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeConnectedToUtility] = 0;
    v34[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeElectricityRatesEnabled] = 0;
    *&v34[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_reducedUsageCount] = v39;
    v34[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_containsConfigurationData] = 1;
    v36 = sub_22A4DB77C();
    v43.receiver = v34;
    v43.super_class = v33;
    v37 = objc_msgSendSuper2(&v43, sel_initWithHomeUUID_, v36);

    (*(v30 + 8))(v31, v32);
    return v37;
  }

  else
  {
LABEL_40:
    __break(1u);
  }

  return result;
}

uint64_t sub_2295F2274(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295F22E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2295F232C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22A4DE0EC();
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_9;
    }
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x22AAD13F0](0, a1);
    goto LABEL_6;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(a1 + 32);
LABEL_6:
    v4 = v3;
    type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
    if (swift_dynamicCastClass())
    {
      v5 = sub_229722C64();

      return v5;
    }

LABEL_9:
    if (qword_27D87B8F0 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_22;
  }

  __break(1u);
LABEL_22:
  swift_once();
LABEL_10:
  v7 = sub_22A4DD07C();
  __swift_project_value_buffer(v7, qword_27D87DAF0);

  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCEC();

  if (!os_log_type_enabled(v8, v9))
  {
LABEL_17:

    return 0;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v14 = v12;
  *v10 = 136315394;
  result = sub_2295A3E30(0xD000000000000016, 0x800000022A58C940, &v14);
  *(v10 + 4) = result;
  *(v10 + 12) = 2112;
  if (!v2)
  {
    v13 = 0;
    goto LABEL_16;
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v13 = MEMORY[0x22AAD13F0](0, a1);
    goto LABEL_16;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v13 = *(a1 + 32);
LABEL_16:
    *(v10 + 14) = v13;
    *v11 = v13;
    _os_log_impl(&dword_229538000, v8, v9, "%s Failed to cast log event: %@ to CleanEnergyAutomationConfigurationLogEvent", v10, 0x16u);
    sub_22953EAE4(v11, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_2295F25A8(uint64_t a1)
{
  sub_22976EEB8(a1);
  if (v1 && (v2 = v1, type metadata accessor for CleanEnergyAutomationConfigurationLogEvent(), (v3 = sub_2297220F4(v2)) != 0))
  {
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    result = swift_allocObject();
    *(result + 16) = xmmword_22A576190;
    *(result + 32) = v4;
  }

  else
  {
    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v6 = sub_22A4DD07C();
    __swift_project_value_buffer(v6, qword_27D87DAF0);
    v7 = sub_22A4DD05C();
    v8 = sub_22A4DDCEC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_2295A3E30(0xD000000000000010, 0x800000022A58C920, &v11);
      _os_log_impl(&dword_229538000, v7, v8, "%s Failed to create CleanEnergyAutomationConfigurationLogEvent from dictionary", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x22AAD4E50](v10, -1, -1);
      MEMORY[0x22AAD4E50](v9, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2295F2740(unint64_t a1, uint64_t a2)
{
  v50 = a2;
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v51 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x277D84F90];
  if (!(a1 >> 62))
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_20:
    v8 = MEMORY[0x277D84F90];
    goto LABEL_21;
  }

LABEL_19:
  v6 = sub_22A4DE0EC();
  if (!v6)
  {
    goto LABEL_20;
  }

LABEL_3:
  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  do
  {
    v9 = v7;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x22AAD13F0](v9, a1);
      }

      else
      {
        if (v9 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v10 = *(a1 + 8 * v9 + 32);
      }

      v11 = v10;
      v7 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v9;
      if (v7 == v6)
      {
        goto LABEL_21;
      }
    }

    MEMORY[0x22AAD09E0]();
    if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22A4DD85C();
    }

    sub_22A4DD87C();
    v8 = v53;
  }

  while (v7 != v6);
LABEL_21:
  if (!(v8 >> 62))
  {
    v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_23;
    }

LABEL_53:

    if (qword_27D87B8F0 != -1)
    {
      swift_once();
    }

    v42 = sub_22A4DD07C();
    __swift_project_value_buffer(v42, qword_27D87DAF0);

    v22 = sub_22A4DD05C();
    v23 = sub_22A4DDCEC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v53 = v25;
      *v24 = 136315394;
      *(v24 + 4) = sub_2295A3E30(0xD000000000000022, 0x800000022A58C8F0, &v53);
      *(v24 + 12) = 2080;
      v43 = sub_229562F68(0, &qword_281401C40, 0x277D17DC0);
      v44 = MEMORY[0x22AAD0A20](a1, v43);
      v46 = sub_2295A3E30(v44, v45, &v53);

      *(v24 + 14) = v46;
      v30 = "%s No CleanEnergyAutomationConfigurationLogEvent found in sourceLogEvents %s";
LABEL_57:
      _os_log_impl(&dword_229538000, v22, v23, v30, v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v25, -1, -1);
      MEMORY[0x22AAD4E50](v24, -1, -1);
    }

    goto LABEL_58;
  }

LABEL_52:
  v12 = sub_22A4DE0EC();
  if (!v12)
  {
    goto LABEL_53;
  }

LABEL_23:
  v48 = v4;
  v49 = v3;
  v13 = 0;
  v14 = v8 & 0xC000000000000001;
  v4 = v8 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if (v14)
    {
      v15 = MEMORY[0x22AAD13F0](v13, v8);
    }

    else
    {
      if (v13 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_49;
      }

      v15 = *(v8 + 8 * v13 + 32);
    }

    v16 = v15;
    v17 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v15[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_containsConfigurationData] == 1)
    {
      a1 = 0;
      v18 = 0;
      while (v12 != a1)
      {
        if (v14)
        {
          v19 = MEMORY[0x22AAD13F0](a1, v8);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (a1 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_51;
          }

          v19 = *(v8 + 8 * a1 + 32);
          if (__OFADD__(a1, 1))
          {
            goto LABEL_50;
          }
        }

        v3 = *&v19[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_reducedUsageCount];

        ++a1;
        v20 = __OFADD__(v18, v3);
        v18 += v3;
        if (v20)
        {
          __break(1u);
          goto LABEL_43;
        }
      }

      v31 = v48;
      v32 = v51;
      (*(v48 + 16))(v51, v50, v49);
      v33 = *&v16[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_accessoryCount];
      v34 = *&v16[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_cleanEnergyAutomationEnabledCount];
      v35 = type metadata accessor for CleanEnergyAutomationConfigurationLogEvent();
      v36 = objc_allocWithZone(v35);
      v37 = &v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventName];
      *v37 = 0xD000000000000034;
      v37[1] = 0x800000022A58C750;
      *&v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_coreAnalyticsEventOptions] = 1;
      *&v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_accessoryCount] = v33;
      *&v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_cleanEnergyAutomationEnabledCount] = v34;
      v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeConnectedToUtility] = 0;
      v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_isHomeElectricityRatesEnabled] = 0;
      *&v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_reducedUsageCount] = v18;
      v36[OBJC_IVAR____TtC13HomeKitDaemon42CleanEnergyAutomationConfigurationLogEvent_containsConfigurationData] = 0;
      v38 = sub_22A4DB77C();
      v52.receiver = v36;
      v52.super_class = v35;
      v39 = objc_msgSendSuper2(&v52, sel_initWithHomeUUID_, v38);

      (*(v31 + 8))(v32, v49);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v40 = swift_allocObject();
      *(v40 + 16) = xmmword_22A576190;
      *(v40 + 32) = v39;

      return v40;
    }

    ++v13;
  }

  while (v17 != v12);
LABEL_43:

  if (qword_27D87B8F0 != -1)
  {
    swift_once();
  }

  v21 = sub_22A4DD07C();
  __swift_project_value_buffer(v21, qword_27D87DAF0);

  v22 = sub_22A4DD05C();
  v23 = sub_22A4DDCEC();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v53 = v25;
    *v24 = 136315394;
    *(v24 + 4) = sub_2295A3E30(0xD000000000000022, 0x800000022A58C8F0, &v53);
    *(v24 + 12) = 2080;
    v26 = sub_229562F68(0, &qword_281401C40, 0x277D17DC0);
    v27 = MEMORY[0x22AAD0A20](a1, v26);
    v29 = sub_2295A3E30(v27, v28, &v53);

    *(v24 + 14) = v29;
    v30 = "%s Missing CleanEnergyAutomationConfigurationLogEvent from primary resident in sourceLogEvents %s";
    goto LABEL_57;
  }

LABEL_58:

  return MEMORY[0x277D84F90];
}

uint64_t sub_2295F2E70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA8, &qword_22A57A160);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_22A4DD9DC();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v3 + 16))(v5, a1, v2);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  (*(v3 + 32))(v11 + v10, v5, v2);
  sub_22957F3C0(0, 0, v8, &unk_22A57A170, v11);
  return sub_22A4DD9FC();
}

uint64_t sub_2295F3068(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v4[10] = swift_task_alloc();
  v5 = sub_22A4DDE4C();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB8, &qword_22A57A178);
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295F31C8, 0, 0);
}

uint64_t sub_2295F31C8()
{
  v1 = [objc_opt_self() sharedManager];
  *(v0 + 136) = v1;
  v2 = [objc_opt_self() defaultCenter];
  *(v0 + 144) = sub_22A4DDE5C();

  v3 = [v1 currentNetworkAssociation];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 SSID];
    v6 = sub_22A4DD5EC();
    v8 = v7;

    v9 = [v4 requiresPassword];
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v9 = 0;
  }

  v10 = *(v0 + 120);
  v11 = *(v0 + 128);
  v12 = *(v0 + 112);
  *(v0 + 16) = v6;
  *(v0 + 24) = v8;
  *(v0 + 32) = v9;

  *(v0 + 152) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA8, &qword_22A57A160);
  sub_22A4DDA0C();
  v13 = *(v10 + 8);
  *(v0 + 160) = v13;
  *(v0 + 168) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v13(v11, v12);

  sub_22A4DDE3C();
  *(v0 + 33) = v9;
  *(v0 + 176) = v6;
  *(v0 + 184) = v8;
  v14 = sub_2295F39B0();
  v15 = swift_task_alloc();
  *(v0 + 192) = v15;
  *v15 = v0;
  v15[1] = sub_2295F33F8;
  v16 = *(v0 + 80);
  v17 = *(v0 + 88);

  return MEMORY[0x282200308](v16, v17, v14);
}

uint64_t sub_2295F33F8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2295F3804;
  }

  else
  {
    v2 = sub_2295F350C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2295F3528()
{
  v1 = *(v0 + 80);
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = *(v0 + 136);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));

    sub_22A4DDA1C();

    v4 = *(v0 + 8);

    return v4();
  }

  v6 = [*(v0 + 136) currentNetworkAssociation];
  v7 = *(v0 + 184);
  if (!v6)
  {
    v10 = 0;
    v12 = 0;
    LOBYTE(v13) = 0;
    if (!v7)
    {
      goto LABEL_19;
    }

    goto LABEL_17;
  }

  v8 = v6;
  v9 = [v6 SSID];
  v10 = sub_22A4DD5EC();
  v12 = v11;

  v13 = [v8 requiresPassword];
  if (v7)
  {
    v14 = *(v0 + 33);
    if (v10 != *(v0 + 176) || *(v0 + 184) != v12)
    {
      if (sub_22A4DE60C() & 1) == 0 || ((v13 ^ v14))
      {
        goto LABEL_17;
      }

LABEL_18:

      goto LABEL_19;
    }

    if (v13 == v14)
    {
      goto LABEL_18;
    }
  }

LABEL_17:
  v16 = *(v0 + 160);
  v17 = *(v0 + 128);
  v18 = *(v0 + 112);
  *(v0 + 40) = v10;
  *(v0 + 48) = v12;
  *(v0 + 56) = v13;

  sub_22A4DDA0C();

  v16(v17, v18);
LABEL_19:
  sub_2295F3A08(*(v0 + 80));
  *(v0 + 33) = v13;
  *(v0 + 176) = v10;
  *(v0 + 184) = v12;
  v19 = sub_2295F39B0();
  v20 = swift_task_alloc();
  *(v0 + 192) = v20;
  *v20 = v0;
  v20[1] = sub_2295F33F8;
  v21 = *(v0 + 80);
  v22 = *(v0 + 88);

  return MEMORY[0x282200308](v21, v22, v19);
}

uint64_t sub_2295F3804()
{
  *(v0 + 64) = *(v0 + 200);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2295F3890(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA8, &qword_22A57A160) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_2295F3068(a1, v6, v7, v1 + v5);
}

unint64_t sub_2295F39B0()
{
  result = qword_27D87DBC0;
  if (!qword_27D87DBC0)
  {
    sub_22A4DDE4C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DBC0);
  }

  return result;
}

uint64_t sub_2295F3A08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2295F3A70(__int128 *a1, uint64_t a2)
{
  v5 = a1[1];
  v28 = *a1;
  v6 = a1[2];
  v29 = v5;
  v30 = v6;
  v31 = *(a1 + 6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCA0, &qword_22A57A3B0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22[-v8 - 8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCA8, &qword_22A57A3B8);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22[-v12 - 8];
  KeyPath = swift_getKeyPath();
  v15 = sub_22956ECE8(KeyPath, a2);

  if (v15 & 1) != 0 || (v16 = swift_getKeyPath(), v17 = sub_22956ECE8(v16, a2), result = , (v17))
  {
    sub_229564F88(v2 + OBJC_IVAR____TtC13HomeKitDaemonP33_8453FF64D3B0724B32B38A7B9B65AEC923DeviceMediaStateAdapter_continuation, v9, &qword_27D87DCA0, &qword_22A57A3B0);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DC08, &qword_22A57A1A0);
    v20 = *(v19 - 8);
    result = (*(v20 + 48))(v9, 1, v19);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      v23 = v28;
      v24 = v29;
      v25 = v30;
      v26 = v31;
      v27 = a2;
      sub_2295F59D4(a1, v22);

      sub_22A4DDA0C();
      (*(v11 + 8))(v13, v10);
      return (*(v20 + 8))(v9, v19);
    }
  }

  return result;
}

uint64_t sub_2295F3CF4()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemonP33_8453FF64D3B0724B32B38A7B9B65AEC923DeviceMediaStateAdapter_events;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DC90, &qword_22A57A3A8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22953EAE4(v0 + OBJC_IVAR____TtC13HomeKitDaemonP33_8453FF64D3B0724B32B38A7B9B65AEC923DeviceMediaStateAdapter_continuation, &qword_27D87DCA0, &qword_22A57A3B0);
  v3 = OBJC_IVAR____TtC13HomeKitDaemonP33_8453FF64D3B0724B32B38A7B9B65AEC923DeviceMediaStateAdapter_uuid;
  v4 = sub_22A4DB7DC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

void sub_2295F3E24(uint64_t a1)
{
  sub_2295F3F80(319, &qword_27D87DBF0, &qword_27D87DBF8, "zc\b", MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_2295F3F80(319, &qword_27D87DC00, &qword_27D87DC08, &qword_22A57A1A0, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_22A4DB7DC();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_2295F3F80(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
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

uint64_t sub_2295F3FE4()
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295F5810(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295F4084(uint64_t a1)
{
  sub_22A4DB7DC();
  sub_2295F5810(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_22A4DD4FC();
}

uint64_t sub_2295F410C(uint64_t a1)
{
  sub_22A4DE77C();
  sub_22A4DB7DC();
  sub_2295F5810(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_22A4DD4FC();
  return sub_22A4DE7BC();
}

uint64_t sub_2295F41C4()
{
  if (*(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_observationTask))
  {

    sub_22A4DDA7C();
  }

  sub_2295F5E68(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_controlBlock, _s20ControlBlockInternalVMa);
  MEMORY[0x22AAD4F90](v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_home);
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2295F42C0()
{
  sub_2295F41C4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_2295F4314(uint64_t a1)
{
  result = _s20ControlBlockInternalVMa(319);
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

uint64_t sub_2295F43E8(uint64_t a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_22A4DD9DC();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  sub_229564F88(a1, v8, &unk_27D881FF0, &qword_22A57A380);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v13;
  sub_2295F5AFC(v8, v15 + v14);
  *(v15 + ((v6 + v14 + 7) & 0xFFFFFFFFFFFFFFF8)) = v3;
  *(v1 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_observationTask) = sub_22957F3C0(0, 0, v11, &unk_22A57A398, v15);
}

uint64_t sub_2295F4624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[38] = a5;
  v6[39] = a6;
  v6[37] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DC88, &qword_22A57A3A0);
  v6[40] = v7;
  v6[41] = *(v7 - 8);
  v6[42] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DC90, &qword_22A57A3A8);
  v6[43] = v8;
  v6[44] = *(v8 - 8);
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();
  v9 = sub_22A4DD07C();
  v6[47] = v9;
  v6[48] = *(v9 - 8);
  v6[49] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295F47C4, 0, 0);
}

uint64_t sub_2295F47C4()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v0[50] = *(Strong + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_deviceMediaStateAdapter);

    swift_beginAccess();
    v2 = swift_weakLoadStrong();
    if (v2)
    {
      v0[51] = *(v2 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_deviceMediaStateObserver);
      swift_unknownObjectRetain();

      swift_getObjectType();

      v4 = sub_22A4DD8CC();

      return MEMORY[0x2822009F8](sub_2295F4958, v4, v3);
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_2295F4958()
{
  *(v0 + 440) = sub_2295F5CAC(*(v0 + 400), 1, *(v0 + 408)) & 1;

  return MEMORY[0x2822009F8](sub_2295F49D8, 0, 0);
}

uint64_t sub_2295F49D8()
{
  if (*(v0 + 440))
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v2 = *(v0 + 360);
      v3 = *(v0 + 368);
      v4 = *(v0 + 344);
      v5 = *(v0 + 352);
      v6 = *(Strong + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_deviceMediaStateAdapter);

      (*(v5 + 16))(v2, v6 + OBJC_IVAR____TtC13HomeKitDaemonP33_8453FF64D3B0724B32B38A7B9B65AEC923DeviceMediaStateAdapter_events, v4);

      (*(v5 + 32))(v3, v2, v4);
      sub_22A4DDA3C();
      swift_beginAccess();
      v7 = swift_task_alloc();
      *(v0 + 416) = v7;
      *v7 = v0;
      v7[1] = sub_2295F4CB0;
      v8 = *(v0 + 320);

      return MEMORY[0x2822003E8](v0 + 80, 0, 0, v8);
    }

    swift_unknownObjectRelease();
  }

  else
  {
    sub_229541CB0(*(v0 + 312), &off_283CDDFF0);
    v9 = sub_22A4DD05C();
    v10 = sub_22A4DDCEC();
    v11 = os_log_type_enabled(v9, v10);
    v13 = *(v0 + 384);
    v12 = *(v0 + 392);
    v14 = *(v0 + 376);
    if (v11)
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_229538000, v9, v10, "Unable to add DeviceMediaStateAdapter as an observer", v15, 2u);
      MEMORY[0x22AAD4E50](v15, -1, -1);

      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }

    (*(v13 + 8))(v12, v14);
  }

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_2295F4CB0()
{

  return MEMORY[0x2822009F8](sub_2295F4DAC, 0, 0);
}

uint64_t sub_2295F4DAC()
{
  v1 = *(v0 + 96);
  *(v0 + 16) = *(v0 + 80);
  *(v0 + 32) = v1;
  v2 = *(v0 + 128);
  *(v0 + 48) = *(v0 + 112);
  *(v0 + 64) = v2;
  v3 = *(v0 + 72);
  *(v0 + 424) = v3;
  if (v3)
  {
    v4 = *(v0 + 32);
    *(v0 + 144) = *(v0 + 16);
    *(v0 + 160) = v4;
    *(v0 + 176) = *(v0 + 48);
    *(v0 + 192) = *(v0 + 64);
    Strong = swift_weakLoadStrong();
    *(v0 + 432) = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_2295F4F30, Strong, 0);
    }

    sub_229588CF8(v0 + 16);
  }

  v6 = *(v0 + 368);
  v7 = *(v0 + 344);
  v8 = *(v0 + 352);
  v10 = *(v0 + 328);
  v9 = *(v0 + 336);
  v11 = *(v0 + 320);
  swift_unknownObjectRelease();

  (*(v10 + 8))(v9, v11);
  (*(v8 + 8))(v6, v7);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2295F4F30()
{
  sub_2295F5064(v0[38], v0 + 18, v0[53]);

  sub_229588CF8((v0 + 2));

  return MEMORY[0x2822009F8](sub_2295F4FB4, 0, 0);
}

uint64_t sub_2295F4FB4()
{

  v1 = swift_task_alloc();
  *(v0 + 416) = v1;
  *v1 = v0;
  v1[1] = sub_2295F4CB0;
  v2 = *(v0 + 320);

  return MEMORY[0x2822003E8](v0 + 80, 0, 0, v2);
}

void sub_2295F5064(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v42 = a1;
  v37 = *v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0E8, &qword_22A57A370);
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x28223BE20](v7);
  v39 = &v35 - v8;
  v9 = sub_22A4DD07C();
  v38 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DC78, &qword_22A57A378);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v35 - v13;
  v15 = _s24AppleMediaAccessoryStateO5EventVMa(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v35 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v36 = v9;
    v23 = Strong;
    sub_2295F59D4(a2, v44);

    sub_229586D58(v23, a2, a3, v14);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {

      sub_22953EAE4(v14, &qword_27D87DC78, &qword_22A57A378);
    }

    else
    {
      sub_2295F5A30(v14, v21);
      v24 = v4 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_controlBlock;
      swift_beginAccess();
      if (v24[*(_s20ControlBlockInternalVMa(0) + 20)] == 1)
      {
        sub_229541CB0(v37, &off_283CDDFF0);
        sub_2295F5A94(v21, v19, _s24AppleMediaAccessoryStateO5EventVMa);

        v25 = sub_22A4DD05C();
        v26 = sub_22A4DDCDC();

        if (os_log_type_enabled(v25, v26))
        {
          v27 = swift_slowAlloc();
          v37 = swift_slowAlloc();
          v44[0] = v37;
          *v27 = 136315394;
          *(v27 + 4) = sub_2295A3E30(*(v4 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_description), *(v4 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_description + 8), v44);
          *(v27 + 12) = 2080;
          v28 = sub_229890C68();
          v30 = v29;
          sub_2295F5E68(v19, _s24AppleMediaAccessoryStateO5EventVMa);
          v31 = sub_2295A3E30(v28, v30, v44);

          *(v27 + 14) = v31;
          _os_log_impl(&dword_229538000, v25, v26, "%s received event: %s", v27, 0x16u);
          v32 = v37;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v32, -1, -1);
          MEMORY[0x22AAD4E50](v27, -1, -1);
        }

        else
        {

          sub_2295F5E68(v19, _s24AppleMediaAccessoryStateO5EventVMa);
        }

        (*(v38 + 8))(v11, v36);
        v44[3] = v15;
        v44[4] = sub_2295F5810(&qword_27D87DC80, _s24AppleMediaAccessoryStateO5EventVMa, &unk_22A578464);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v44);
        sub_2295F5A94(v21, boxed_opaque_existential_1, _s24AppleMediaAccessoryStateO5EventVMa);
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
        sub_22957F1C4(v44, v43);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
        v34 = v39;
        sub_22A4DDA0C();

        (*(v40 + 8))(v34, v41);
        sub_2295F5E68(v21, _s24AppleMediaAccessoryStateO5EventVMa);
        __swift_destroy_boxed_opaque_existential_0(v44);
      }

      else
      {
        sub_2295F5E68(v21, _s24AppleMediaAccessoryStateO5EventVMa);
      }
    }
  }
}

uint64_t sub_2295F5664@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_controlBlock;
  swift_beginAccess();
  return sub_2295F5A94(v1 + v3, a1, _s20ControlBlockInternalVMa);
}

uint64_t sub_2295F5730()
{
  v1 = *(*v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger24AppleMediaAccessoryState8Observer_description);

  return v1;
}

uint64_t sub_2295F578C(uint64_t a1)
{
  *(a1 + 16) = sub_2295F5810(&qword_27D87DC48, _s8ObserverCMa_0, &unk_22A57A248);
  result = sub_2295F5810(&qword_27D87DC50, _s8ObserverCMa_0, &unk_22A57A2C4);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_2295F5810(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2295F5858(uint64_t a1)
{
  result = sub_2295F5810(&qword_27D87DC50, _s8ObserverCMa_0, &unk_22A57A2C4);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2295F58B0(uint64_t a1)
{
  *(a1 + 8) = sub_2295F5810(&qword_27D87DC58, _s8ObserverCMa_0, &unk_22A57A270);
  result = sub_2295F5810(&qword_27D87DC60, _s8ObserverCMa_0, &unk_22A57A28C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2295F597C(uint64_t a1)
{
  result = sub_2295F5810(&qword_27D87DC70, type metadata accessor for DeviceMediaStateAdapter, &unk_22A57A314);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2295F5A30(uint64_t a1, uint64_t a2)
{
  v4 = _s24AppleMediaAccessoryStateO5EventVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295F5A94(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2295F5AFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295F5B6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_229569B30;

  return sub_2295F4624(a1, v7, v8, v9, v1 + v6, v10);
}

uint64_t sub_2295F5CAC(uint64_t a1, char a2, uint64_t a3)
{
  sub_2295F5810(&qword_27D87DC98, type metadata accessor for DeviceMediaStateAdapter, &unk_22A57A354);
  swift_getObjectType();
  *&v23[0] = a1;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v6 = sub_22A4DDBCC();
  swift_endAccess();
  swift_unknownObjectRelease();
  if (v6 & 1) != 0 && (a2)
  {
    LOBYTE(v23[0]) = 1;
    v14 = 0u;
    v15 = 0u;
    LODWORD(v16) = 0;
    BYTE4(v16) = 1;
    *(&v16 + 1) = 0;
    v17 = 0;
    memset(v18, 0, sizeof(v18));
    v19 = 0;
    v20 = 1;
    v21 = 0;
    v22 = 0;
    sub_2295F59D4(&v14, v25);
    sub_229588CF8(v18);
    v10 = v14;
    v11 = v15;
    v12 = v16;
    v13 = v17;
    v7 = *(a3 + 128);
    v25[0] = *(a3 + 112);
    v25[1] = v7;
    v25[2] = *(a3 + 144);
    v26 = *(a3 + 160);
    sub_2295F59D4(v25, v23);
    v8 = sub_22972336C(v25);
    sub_229588CF8(v25);
    v23[0] = v10;
    v23[1] = v11;
    v23[2] = v12;
    v24 = v13;
    sub_2295F3A70(v23, v8);
    sub_229588CF8(v23);
  }

  return v6 & 1;
}

uint64_t sub_2295F5E68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2295F5EC8()
{
  v0 = sub_22A4DD25C();
  __swift_allocate_value_buffer(v0, qword_2814017D0);
  *__swift_project_value_buffer(v0, qword_2814017D0) = 2;
  v1 = *(*(v0 - 8) + 104);

  return v1();
}

uint64_t sub_2295F5FE4(os_unfair_lock_s *a1)
{
  v2 = v1;
  v87 = a1;
  v3 = sub_22A4DD07C();
  v85 = *(v3 - 8);
  v86 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v77 = &v74 - v8;
  v9 = MEMORY[0x28223BE20](v7);
  v78 = &v74 - v10;
  MEMORY[0x28223BE20](v9);
  v84 = &v74 - v11;
  v12 = sub_22A4DD2CC();
  v82 = *(v12 - 8);
  v83 = v12;
  v13 = MEMORY[0x28223BE20](v12);
  v80 = &v74 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v81 = &v74 - v15;
  v16 = sub_22A4DB7DC();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = MEMORY[0x28223BE20](v16);
  v20 = &v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v22 = &v74 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v74 - v24;
  v79 = v2;
  v26 = [objc_msgSend(v2 dataSource)];
  swift_unknownObjectRelease();
  if (!v26 || (__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DB80, &qword_22A57A150), v27 = sub_22A4DD83C(), v26, MEMORY[0x28223BE20](v28), *(&v74 - 2) = v87, v29 = sub_229685214(sub_2295F86BC, &(&v74)[-1], v27), , !v29))
  {
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v52 = v17;
    v53 = *(v17 + 16);
    v54 = v16;
    v53(v20, v87, v16);
    v55 = sub_22A4DD05C();
    v56 = sub_22A4DDCEC();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v88 = v58;
      *v57 = 136315394;
      *(v57 + 4) = sub_2295A3E30(0xD00000000000002FLL, 0x800000022A58C720, &v88);
      *(v57 + 12) = 2080;
      sub_2295FB2E8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v59 = sub_22A4DE5CC();
      v61 = v60;
      (*(v52 + 8))(v20, v54);
      v62 = sub_2295A3E30(v59, v61, &v88);

      *(v57 + 14) = v62;
      _os_log_impl(&dword_229538000, v55, v56, "%s Unable to find homeDataSource for homeUUID %s", v57, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v58, -1, -1);
      MEMORY[0x22AAD4E50](v57, -1, -1);
    }

    else
    {

      (*(v52 + 8))(v20, v16);
    }

    (*(v85 + 8))(v6, v86);
    return 0;
  }

  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  v74 = (v30 + 16);
  *(v30 + 24) = 0;
  v75 = dispatch_group_create();
  dispatch_group_enter(v75);
  v31 = sub_22A4DD9DC();
  v32 = *(*(v31 - 8) + 56);
  v76 = v25;
  v32(v25, 1, 1, v31);
  (*(v17 + 16))(v22, v87, v16);
  v33 = (*(v17 + 80) + 48) & ~*(v17 + 80);
  v34 = (v18 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 2) = 0;
  *(v35 + 3) = 0;
  v36 = v79;
  *(v35 + 4) = v79;
  *(v35 + 5) = v29;
  (*(v17 + 32))(&v35[v33], v22, v16);
  *&v35[v34] = v30;
  v37 = v75;
  *&v35[(v34 + 15) & 0xFFFFFFFFFFFFFFF8] = v75;
  v38 = v30;
  v39 = v36;

  v40 = v37;
  swift_unknownObjectRetain();
  sub_22957F3C0(0, 0, v76, &unk_22A57A410, v35);

  v41 = v80;
  sub_22A4DD2AC();
  if (qword_2814017C8 != -1)
  {
    swift_once();
  }

  v42 = sub_22A4DD25C();
  __swift_project_value_buffer(v42, qword_2814017D0);
  v43 = v81;
  sub_22A4DD2BC();
  v44 = v83;
  v45 = *(v82 + 8);
  v45(v41, v83);
  v46 = sub_22A4DDD3C();
  v45(v43, v44);
  v47 = v84;
  if (v46)
  {
    sub_22A4DD5EC();
    sub_22A4DD06C();
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCEC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "Timed out collecting event";
LABEL_18:
      _os_log_impl(&dword_229538000, v48, v49, v51, v50, 2u);
      MEMORY[0x22AAD4E50](v50, -1, -1);
      swift_unknownObjectRelease();

LABEL_20:
      (*(v85 + 8))(v47, v86);

      return 0;
    }

    goto LABEL_19;
  }

  v63 = v74;
  os_unfair_lock_lock(v74);
  v64 = *(v38 + 24);
  v65 = v64;
  os_unfair_lock_unlock(v63);
  sub_22A4DD5EC();
  if (!v64)
  {
    v47 = v77;
    sub_22A4DD06C();
    v48 = sub_22A4DD05C();
    v49 = sub_22A4DDCEC();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      v51 = "Finished collecting but returned event is nil";
      goto LABEL_18;
    }

LABEL_19:

    swift_unknownObjectRelease();
    goto LABEL_20;
  }

  sub_22A4DD06C();
  v66 = v65;
  v67 = sub_22A4DD05C();
  v68 = sub_22A4DDD0C();

  if (os_log_type_enabled(v67, v68))
  {
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v69 = 138412290;
    *(v69 + 4) = v66;
    *v70 = v64;
    v71 = v66;
    _os_log_impl(&dword_229538000, v67, v68, "Finished collecting %@", v69, 0xCu);
    sub_22953EAE4(v70, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v70, -1, -1);
    MEMORY[0x22AAD4E50](v69, -1, -1);
  }

  (*(v85 + 8))(v78, v86);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_22A576190;
  *(v72 + 32) = v66;
  swift_unknownObjectRelease();

  return v72;
}

uint64_t sub_2295F6A24(id *a1, uint64_t a2)
{
  v4 = sub_22A4DB7DC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v28 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBA0, &qword_22A57A158);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v29 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v28 - v14;
  MEMORY[0x28223BE20](v13);
  v17 = &v28 - v16;
  v18 = [*a1 uuid];
  if (v18)
  {
    v19 = v18;
    sub_22A4DB79C();

    v20 = *(v5 + 56);
    v20(v17, 0, 1, v4);
  }

  else
  {
    v20 = *(v5 + 56);
    v20(v17, 1, 1, v4);
  }

  (*(v5 + 16))(v15, a2, v4);
  v20(v15, 0, 1, v4);
  v21 = *(v7 + 48);
  sub_2295F2274(v17, v9);
  sub_2295F2274(v15, &v9[v21]);
  v22 = *(v5 + 48);
  if (v22(v9, 1, v4) != 1)
  {
    v24 = v29;
    sub_2295F2274(v9, v29);
    if (v22(&v9[v21], 1, v4) != 1)
    {
      v25 = v28;
      (*(v5 + 32))(v28, &v9[v21], v4);
      sub_2295FB2E8(&qword_281403870, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v23 = sub_22A4DD58C();
      v26 = *(v5 + 8);
      v26(v25, v4);
      sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
      sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
      v26(v29, v4);
      sub_22953EAE4(v9, &unk_27D87D2A0, &unk_22A578BD0);
      return v23 & 1;
    }

    sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
    (*(v5 + 8))(v24, v4);
    goto LABEL_9;
  }

  sub_22953EAE4(v15, &unk_27D87D2A0, &unk_22A578BD0);
  sub_22953EAE4(v17, &unk_27D87D2A0, &unk_22A578BD0);
  if (v22(&v9[v21], 1, v4) != 1)
  {
LABEL_9:
    sub_22953EAE4(v9, &qword_27D87DBA0, &qword_22A57A158);
    v23 = 0;
    return v23 & 1;
  }

  sub_22953EAE4(v9, &unk_27D87D2A0, &unk_22A578BD0);
  v23 = 1;
  return v23 & 1;
}

uint64_t sub_2295F6EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a7;
  v8[3] = a8;
  v11 = swift_task_alloc();
  v8[4] = v11;
  *v11 = v8;
  v11[1] = sub_2295F6F6C;

  return sub_2295FA8BC(a5, a6);
}

uint64_t sub_2295F6F6C(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x2822009F8](sub_2295F706C, 0, 0);
}

uint64_t sub_2295F706C()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  os_unfair_lock_lock((v3 + 16));

  *(v3 + 24) = v1;
  v4 = v1;
  os_unfair_lock_unlock((v3 + 16));
  dispatch_group_leave(v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2295F72F4()
{
  v1[17] = v0;
  v1[18] = swift_getObjectType();
  v2 = sub_22A4DCD0C();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  v1[22] = swift_task_alloc();
  v3 = sub_22A4DB7DC();
  v1[23] = v3;
  v1[24] = *(v3 - 8);
  v1[25] = swift_task_alloc();
  v4 = sub_22A4DD07C();
  v1[26] = v4;
  v1[27] = *(v4 - 8);
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295F74A8, 0, 0);
}

uint64_t sub_2295F74A8(uint64_t a1)
{
  v102 = v1;
  v2 = *(v1 + 136);
  sub_229785E38();
  v3 = v2;
  v4 = sub_22A4DD05C();
  v5 = sub_22A4DDCCC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v1 + 248);
  v8 = *(v1 + 208);
  v9 = *(v1 + 216);
  if (v6)
  {
    v98 = *(v1 + 248);
    v11 = *(v1 + 192);
    v10 = *(v1 + 200);
    v12 = *(v1 + 184);
    v13 = *(v1 + 136);
    v14 = swift_slowAlloc();
    v95 = swift_slowAlloc();
    v101[0] = v95;
    *v14 = 136315394;
    *(v14 + 4) = sub_2295A3E30(0xD000000000000032, 0x800000022A58CC70, v101);
    *(v14 + 12) = 2080;
    v15 = [v13 uuid];
    sub_22A4DB79C();

    sub_2295FB2E8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v16 = sub_22A4DE5CC();
    v94 = v8;
    v18 = v17;
    (*(v11 + 8))(v10, v12);
    v19 = sub_2295A3E30(v16, v18, v101);

    *(v14 + 14) = v19;
    _os_log_impl(&dword_229538000, v4, v5, "%s Fetching climate thermostat endpoint settings for thermostat %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v95, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    v20 = *(v9 + 8);
    v20(v98, v94);
  }

  else
  {

    v20 = *(v9 + 8);
    v20(v7, v8);
  }

  *(v1 + 256) = v20;
  v21 = [*(v1 + 136) matterAdapter];
  *(v1 + 264) = v21;
  if (v21)
  {
    v22 = v21;
    v23 = [v21 matterDevice];
    if (v23)
    {
      v24 = v23;
      v25 = *(v1 + 136);
      v26 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
      v27 = MEMORY[0x277D17450];
      *(v1 + 80) = v26;
      *(v1 + 88) = v27;
      *(v1 + 56) = v24;
      sub_229557188((v1 + 56), v1 + 16);
      v28 = [v25 valenciaMatterEndpoint];
      *(v1 + 272) = v28;
      if (v28)
      {
        v30 = *(v1 + 168);
        v29 = *(v1 + 176);
        v31 = *(v1 + 152);
        v32 = *(v1 + 160);
        v33 = *(v1 + 136);
        [v28 unsignedShortValue];
        sub_22A4DCCEC();
        (*(v32 + 16))(v30, v29, v31);
        sub_22957F1C4(v1 + 16, v1 + 96);
        v34 = v33;
        v35 = v22;
        v36 = swift_task_alloc();
        *(v1 + 280) = v36;
        *v36 = v1;
        v36[1] = sub_2295F7EB0;
        v37 = *(v1 + 168);
        v38 = *(v1 + 136);

        return sub_2295FA170(v37, v35, v1 + 96, v38);
      }

      v61 = *(v1 + 136);
      sub_229785E38();
      v62 = v61;
      v63 = sub_22A4DD05C();
      v64 = sub_22A4DDCEC();

      v65 = os_log_type_enabled(v63, v64);
      v66 = *(v1 + 240);
      v67 = *(v1 + 208);
      if (v65)
      {
        v97 = *(v1 + 240);
        v69 = *(v1 + 192);
        v68 = *(v1 + 200);
        v90 = *(v1 + 184);
        v93 = *(v1 + 208);
        v70 = *(v1 + 136);
        v100 = v20;
        v71 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        v101[0] = v91;
        *v71 = 136315394;
        *(v71 + 4) = sub_2295A3E30(0xD000000000000032, 0x800000022A58CC70, v101);
        *(v71 + 12) = 2080;
        v72 = [v70 uuid];
        sub_22A4DB79C();

        sub_2295FB2E8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v73 = sub_22A4DE5CC();
        v75 = v74;
        (*(v69 + 8))(v68, v90);
        v76 = sub_2295A3E30(v73, v75, v101);

        *(v71 + 14) = v76;
        _os_log_impl(&dword_229538000, v63, v64, "%s [%s] Found no Valencia-capable endpoint", v71, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v91, -1, -1);
        MEMORY[0x22AAD4E50](v71, -1, -1);

        v100(v97, v93);
      }

      else
      {

        v20(v66, v67);
      }

      v77 = [objc_opt_self() hmErrorWithCode_];
      swift_willThrow();

      __swift_destroy_boxed_opaque_existential_0((v1 + 16));
      sub_229785E38();
      v78 = v77;
      v79 = sub_22A4DD05C();
      v80 = sub_22A4DDCEC();

      v81 = os_log_type_enabled(v79, v80);
      v82 = *(v1 + 256);
      v83 = *(v1 + 224);
      v84 = *(v1 + 208);
      if (!v81)
      {

        v82(v83, v84);
        goto LABEL_15;
      }

      v99 = *(v1 + 256);
      v85 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v87 = swift_slowAlloc();
      v101[0] = v87;
      *v85 = 136315394;
      *(v85 + 4) = sub_2295A3E30(0xD000000000000032, 0x800000022A58CC70, v101);
      *(v85 + 12) = 2112;
      v88 = v77;
      v89 = _swift_stdlib_bridgeErrorToNSError();
      *(v85 + 14) = v89;
      *v86 = v89;
      _os_log_impl(&dword_229538000, v79, v80, "%s Failed to fetch climate thermostat endpoint settings %@", v85, 0x16u);
      sub_22953EAE4(v86, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v86, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v87);
      MEMORY[0x22AAD4E50](v87, -1, -1);
      MEMORY[0x22AAD4E50](v85, -1, -1);

      v58 = v83;
      v59 = v84;
      goto LABEL_13;
    }
  }

  v40 = *(v1 + 136);
  sub_229785E38();
  v41 = v40;
  v42 = sub_22A4DD05C();
  v43 = sub_22A4DDCEC();

  v44 = os_log_type_enabled(v42, v43);
  v45 = *(v1 + 232);
  v46 = *(v1 + 208);
  if (!v44)
  {

    v20(v45, v46);
    goto LABEL_15;
  }

  v96 = *(v1 + 232);
  v48 = *(v1 + 192);
  v47 = *(v1 + 200);
  v49 = *(v1 + 184);
  v50 = *(v1 + 136);
  v51 = swift_slowAlloc();
  v99 = v20;
  v101[0] = swift_slowAlloc();
  v52 = v101[0];
  *v51 = 136315394;
  *(v51 + 4) = sub_2295A3E30(0xD000000000000032, 0x800000022A58CC70, v101);
  *(v51 + 12) = 2080;
  v53 = [v50 uuid];
  sub_22A4DB79C();

  sub_2295FB2E8(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v54 = sub_22A4DE5CC();
  v92 = v46;
  v56 = v55;
  (*(v48 + 8))(v47, v49);
  v57 = sub_2295A3E30(v54, v56, v101);

  *(v51 + 14) = v57;
  _os_log_impl(&dword_229538000, v42, v43, "%s [%s] Missing matter device", v51, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x22AAD4E50](v52, -1, -1);
  MEMORY[0x22AAD4E50](v51, -1, -1);

  v58 = v96;
  v59 = v92;
LABEL_13:
  v99(v58, v59);
LABEL_15:

  v60 = *(v1 + 8);

  return v60(2);
}

uint64_t sub_2295F7EB0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 288) = v1;

  if (v1)
  {
    v5 = sub_2295F80C8;
  }

  else
  {
    *(v4 + 296) = a1;
    v5 = sub_2295F7FD8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2295F7FD8()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 264);
  v3 = *(v0 + 176);
  v4 = *(v0 + 152);
  v5 = *(v0 + 160);

  (*(v5 + 8))(v3, v4);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v6 = *(v0 + 8);

  return v6(v1 & 0xFFFFFFFFFFFFLL);
}

uint64_t sub_2295F80C8()
{
  v22 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 176);
  v3 = *(v0 + 152);
  v4 = *(v0 + 160);

  (*(v4 + 8))(v2, v3);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v5 = *(v0 + 288);
  sub_229785E38();
  v6 = v5;
  v7 = sub_22A4DD05C();
  v8 = sub_22A4DDCEC();

  v9 = os_log_type_enabled(v7, v8);
  v10 = *(v0 + 256);
  v11 = *(v0 + 224);
  v12 = *(v0 + 208);
  if (v9)
  {
    v20 = *(v0 + 256);
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v21 = v15;
    *v13 = 136315394;
    *(v13 + 4) = sub_2295A3E30(0xD000000000000032, 0x800000022A58CC70, &v21);
    *(v13 + 12) = 2112;
    v16 = v5;
    v17 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v17;
    *v14 = v17;
    _os_log_impl(&dword_229538000, v7, v8, "%s Failed to fetch climate thermostat endpoint settings %@", v13, 0x16u);
    sub_22953EAE4(v14, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v14, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x22AAD4E50](v15, -1, -1);
    MEMORY[0x22AAD4E50](v13, -1, -1);

    v20(v11, v12);
  }

  else
  {

    v10(v11, v12);
  }

  v18 = *(v0 + 8);

  return v18(2);
}

uint64_t sub_2295F835C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_22A4DB74C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB70C();
  return (*(v4 + 8))(v6, v3);
}

HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory __swiftcall HMDAdaptiveTemperatureAutomationsConfigurationLogEventFactory.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  v1 = [v0 init];
  result.dataSource = v2;
  result.super.super.isa = v1;
  return result;
}

BOOL sub_2295F84E0()
{
  v0 = sub_22A4DC8EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DC83C();
  sub_2295FB2E8(&qword_27D87C398, MEMORY[0x277D172F0], MEMORY[0x277D172F8]);
  sub_22A4DD7DC();
  sub_22A4DD7DC();
  (*(v1 + 8))(v3, v0);
  return v7 == v6;
}

BOOL sub_2295F8630()
{
  v0 = sub_22A4DC94C();
  v2 = v1;
  v3 = sub_22A4DC82C();
  v5 = v4;
  v6 = sub_2297B7550(v0, v2, v3, v4);
  sub_2295798D4(v3, v5);
  sub_2295798D4(v0, v2);
  return v6;
}

uint64_t sub_2295F86DC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_22A4DB7DC() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1[5];
  v12 = *(v1 + v7);
  v13 = *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_229569B30;

  return sub_2295F6EB4(a1, v8, v9, v10, v11, v1 + v6, v12, v13);
}

uint64_t sub_2295F882C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCC8, &qword_22A57A440);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_22A4DC96C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8818D0, &qword_22A57A448);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v22 - v13;
  v15 = sub_22A4DC85C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v22 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a1;
  sub_229685338(sub_2295FB2A8, a2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_22953EAE4(v14, &unk_27D8818D0, &qword_22A57A448);
  }

  else
  {
    v19 = (*(v16 + 32))(v18, v14, v15);
    MEMORY[0x28223BE20](v19);
    *(&v22 - 2) = v18;
    sub_229685364(sub_2295FB2C8, v23, v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      (*(v9 + 32))(v11, v7, v8);
      v20 = sub_22A4DC95C();
      (*(v9 + 8))(v11, v8);
      (*(v16 + 8))(v18, v15);
      return v20 & 1;
    }

    sub_22953EAE4(v7, &qword_27D87DCC8, &qword_22A57A440);
    (*(v16 + 8))(v18, v15);
  }

  v20 = 0;
  return v20 & 1;
}

uint64_t sub_2295F8BA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_22A4DD07C();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();
  v7 = sub_22A4DC8EC();
  v5[12] = v7;
  v5[13] = *(v7 - 8);
  v5[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295F8CDC, 0, 0);
}

uint64_t sub_2295F8CDC()
{
  v36 = v0;
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v5 = *(v0 + 40);
  v4 = *(v0 + 48);
  (*(v2 + 104))(v1, *MEMORY[0x277D172D8], v3);
  *(v0 + 176) = sub_2295F882C(v1, v5, v4) & 1;

  (*(v2 + 8))(v1, v3);
  *(v0 + 120) = sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCCC();
  v8 = os_log_type_enabled(v6, v7);
  v9 = *(v0 + 88);
  v10 = *(v0 + 56);
  v11 = *(v0 + 64);
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v35[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_2295A3E30(0xD000000000000043, 0x800000022A58CCE0, v35);
    _os_log_impl(&dword_229538000, v6, v7, "%s Fetched applePresetsAdditionalInfo", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AAD4E50](v13, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);
  }

  v14 = *(v11 + 8);
  v14(v9, v10);
  *(v0 + 128) = v14;
  *(v0 + 177) = sub_22A4DCABC() & 1;
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v15 = sub_22A4DD05C();
  v16 = sub_22A4DDCCC();
  v17 = os_log_type_enabled(v15, v16);
  v18 = *(v0 + 80);
  v19 = *(v0 + 56);
  if (v17)
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v35[0] = v21;
    *v20 = 136315138;
    *(v20 + 4) = sub_2295A3E30(0xD000000000000043, 0x800000022A58CCE0, v35);
    _os_log_impl(&dword_229538000, v15, v16, "%s Fetched appleIgnoredPredictedPresets", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v21);
    MEMORY[0x22AAD4E50](v21, -1, -1);
    MEMORY[0x22AAD4E50](v20, -1, -1);
  }

  v14(v18, v19);
  v22 = [*(v0 + 32) home];
  *(v0 + 136) = v22;
  if (v22)
  {
    v23 = v22;
    if ([v22 isLocalPresenceSupported])
    {
      v24 = swift_task_alloc();
      *(v0 + 144) = v24;
      *v24 = v0;
      v24[1] = sub_2295F9214;

      return sub_2297D361C();
    }

    v26 = *(v0 + 24);
    v27 = *(v0 + 32);
    v28 = *(v0 + 16);
  }

  else
  {
    v26 = *(v0 + 24);
    v27 = *(v0 + 32);
    v28 = *(v0 + 16);
  }

  v29 = sub_22A4DCD0C();
  (*(*(v29 - 8) + 8))(v26, v29);
  __swift_destroy_boxed_opaque_existential_0(v28);
  v30 = *(v0 + 177);
  v31 = *(v0 + 176);

  if (v31)
  {
    v32 = 0x10000;
  }

  else
  {
    v32 = 0;
  }

  if (v30)
  {
    v33 = 2;
  }

  else
  {
    v33 = 258;
  }

  v34 = *(v0 + 8);

  return v34(v33 | v32);
}

uint64_t sub_2295F9214(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[19] = a1;
  v4[20] = a2;
  v4[21] = v2;

  if (v2)
  {
    v5 = sub_2295F95D4;
  }

  else
  {
    v5 = sub_2295F932C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2295F932C()
{
  v24 = v0;
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v1 = sub_22A4DD05C();
  v2 = sub_22A4DDCCC();
  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 128);
  v4 = *(v0 + 136);
  v21 = *(v0 + 56);
  v22 = *(v0 + 72);
  v7 = *(v0 + 24);
  v6 = *(v0 + 32);
  v8 = *(v0 + 16);
  if (v3)
  {
    v9 = swift_slowAlloc();
    v20 = v5;
    v10 = swift_slowAlloc();
    v23 = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_2295A3E30(0xD000000000000043, 0x800000022A58CCE0, &v23);
    _os_log_impl(&dword_229538000, v1, v2, "%s Fetched adaptiveThermostatDriverConfiguration", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);

    v11 = sub_22A4DCD0C();
    (*(*(v11 - 8) + 8))(v7, v11);
    __swift_destroy_boxed_opaque_existential_0(v8);
    v20(v22, v21);
  }

  else
  {

    v12 = sub_22A4DCD0C();
    (*(*(v12 - 8) + 8))(v7, v12);
    __swift_destroy_boxed_opaque_existential_0(v8);
    v5(v22, v21);
  }

  v13 = *(v0 + 152);
  v14 = *(v0 + 177);
  v15 = *(v0 + 176);

  if (v15)
  {
    v16 = 0x10000;
  }

  else
  {
    v16 = 0;
  }

  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = 256;
  }

  if (v13 == 2)
  {
    ++v17;
  }

  v18 = *(v0 + 8);

  return v18(v17 | v16);
}

uint64_t sub_2295F95D4()
{
  v1 = *(v0 + 32);

  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = sub_22A4DCD0C();
  (*(*(v4 - 8) + 8))(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2295F96C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = a2;
  v3[9] = a3;
  v3[7] = a1;
  v4 = sub_22A4DC8EC();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_22A4DCD0C();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v6 = sub_22A4DD07C();
  v3[16] = v6;
  v3[17] = *(v6 - 8);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295F985C, 0, 0);
}

uint64_t sub_2295F985C()
{
  v41 = v0;
  v1 = sub_22A4DC97C();
  *(v0 + 204) = v1 & 1;
  v38 = v1;
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v2 = sub_22A4DD05C();
  v3 = sub_22A4DDCCC();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 160);
  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v40[0] = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_2295A3E30(0xD000000000000020, 0x800000022A58CCB0, v40);
    *(v8 + 12) = 1024;
    *(v8 + 14) = v38 & 1;
    _os_log_impl(&dword_229538000, v2, v3, "%s Fetched appleFollowSystemModeInPreset %{BOOL}d", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x22AAD4E50](v9, -1, -1);
    MEMORY[0x22AAD4E50](v8, -1, -1);
  }

  v10 = *(v7 + 8);
  v10(v5, v6);
  v11 = sub_22A4DC8BC();
  *(v0 + 168) = v11;
  v39 = v11;
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v12 = sub_22A4DD05C();
  v13 = sub_22A4DDCCC();
  v14 = os_log_type_enabled(v12, v13);
  v15 = *(v0 + 152);
  v16 = *(v0 + 128);
  if (v14)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_2295A3E30(0xD000000000000020, 0x800000022A58CCB0, v40);
    _os_log_impl(&dword_229538000, v12, v13, "%s Fetched presets", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x22AAD4E50](v18, -1, -1);
    MEMORY[0x22AAD4E50](v17, -1, -1);
  }

  v10(v15, v16);
  v19 = sub_22A4DCA6C();
  *(v0 + 176) = v19;
  v20 = v19;
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v21 = sub_22A4DD05C();
  v22 = sub_22A4DDCCC();
  v23 = os_log_type_enabled(v21, v22);
  v24 = *(v0 + 144);
  v25 = *(v0 + 128);
  if (v23)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v40[0] = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_2295A3E30(0xD000000000000020, 0x800000022A58CCB0, v40);
    _os_log_impl(&dword_229538000, v21, v22, "%s Fetched applePresetsAdditionalInfo", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v26, -1, -1);
  }

  v10(v24, v25);
  v28 = *(v0 + 112);
  v29 = *(v0 + 120);
  v30 = *(v0 + 104);
  v31 = *(v0 + 64);
  v32 = *(v0 + 72);
  sub_22957F1C4(*(v0 + 56), v0 + 16);
  (*(v28 + 16))(v29, v31, v30);
  v33 = v32;

  v34 = swift_task_alloc();
  *(v0 + 184) = v34;
  *v34 = v0;
  v34[1] = sub_2295F9DCC;
  v35 = *(v0 + 120);
  v36 = *(v0 + 72);

  return sub_2295F8BA0(v0 + 16, v35, v36, v39, v20);
}

uint64_t sub_2295F9DCC(int a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {

    v5 = sub_2295FA0A0;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_2295F9F04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2295F9F04()
{
  v17 = *(v0 + 200);
  v2 = *(v0 + 168);
  v1 = *(v0 + 176);
  v16 = *(v0 + 204);
  v3 = *(v0 + 112);
  v4 = *(v0 + 96);
  v14 = *(v0 + 104);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = *(v0 + 64);
  v8 = *(v0 + 72);
  v9 = *(v0 + 56);
  (*(v5 + 104))(v4, *MEMORY[0x277D172E8], v6);
  v15 = sub_2295F882C(v4, v2, v1);

  (*(v3 + 8))(v7, v14);
  __swift_destroy_boxed_opaque_existential_0(v9);
  (*(v5 + 8))(v4, v6);

  v10 = 0x100000000;
  if (!v16)
  {
    v10 = 0;
  }

  v11 = 0x1000000;
  if ((v15 & 1) == 0)
  {
    v11 = 0;
  }

  v12 = *(v0 + 8);

  return v12(v10 | v17 & 0x101FFLL | v11);
}

uint64_t sub_2295FA0A0()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 112);
  v3 = *(v0 + 64);
  v4 = *(v0 + 56);

  (*(v2 + 8))(v3, v1);
  __swift_destroy_boxed_opaque_existential_0(v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_2295FA170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a3;
  v4[10] = a4;
  v4[7] = a1;
  v4[8] = a2;
  v5 = sub_22A4DCD0C();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v6 = sub_22A4DD07C();
  v4[14] = v6;
  v4[15] = *(v6 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295FA290, 0, 0);
}

uint64_t sub_2295FA290()
{
  v28 = v0;
  v1 = sub_22A4DC92C();
  *(v0 + 160) = v1 & 1;
  v2 = v1;
  sub_229562F68(0, &qword_281401B70, off_278666148);
  sub_22A4DDC0C();
  sub_22A4DD08C();
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();
  v5 = os_log_type_enabled(v3, v4);
  v7 = *(v0 + 120);
  v6 = *(v0 + 128);
  v8 = *(v0 + 112);
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_2295A3E30(0x5F3A5F2874696E69, 0xEE00293A5F3A5F3ALL, &v27);
    *(v9 + 12) = 1024;
    *(v9 + 14) = v2 & 1;
    _os_log_impl(&dword_229538000, v3, v4, "%s Fetched valenciaStateEnabled %{BOOL}d", v9, 0x12u);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AAD4E50](v10, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);
  }

  (*(v7 + 8))(v6, v8);
  if (v2)
  {
    v12 = *(v0 + 96);
    v11 = *(v0 + 104);
    v14 = *(v0 + 80);
    v13 = *(v0 + 88);
    v15 = *(v0 + 56);
    sub_22957F1C4(*(v0 + 72), v0 + 16);
    (*(v12 + 16))(v11, v15, v13);
    v16 = v14;
    v17 = swift_task_alloc();
    *(v0 + 136) = v17;
    *v17 = v0;
    v17[1] = sub_2295FA600;
    v18 = *(v0 + 104);
    v19 = *(v0 + 80);

    return sub_2295F96C8(v0 + 16, v18, v19);
  }

  else
  {
    v21 = *(v0 + 80);

    v22 = *(v0 + 160);
    v23 = *(v0 + 96);
    v24 = *(v0 + 88);
    v25 = *(v0 + 56);
    __swift_destroy_boxed_opaque_existential_0(*(v0 + 72));
    (*(v23 + 8))(v25, v24);

    v26 = *(v0 + 8);

    return v26(v22 | 0x20000);
  }
}

uint64_t sub_2295FA600(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_2295FA808;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_2295FA728;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2295FA728()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 80);

  v3 = *(v0 + 160);
  v4 = *(v0 + 96);
  v5 = *(v0 + 88);
  v6 = *(v0 + 56);
  __swift_destroy_boxed_opaque_existential_0(*(v0 + 72));
  (*(v4 + 8))(v6, v5);

  v7 = *(v0 + 8);

  return v7((v1 << 8) & 0x1010101FF00 | v3);
}

uint64_t sub_2295FA808()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 96);
  v3 = *(v0 + 72);
  v4 = *(v0 + 80);
  v5 = *(v0 + 56);

  __swift_destroy_boxed_opaque_existential_0(v3);
  (*(v2 + 8))(v5, v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_2295FA8BC(uint64_t a1, uint64_t a2)
{
  v2[4] = a1;
  v2[5] = a2;
  v3 = sub_22A4DB7DC();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295FA97C, 0, 0);
}

uint64_t sub_2295FA97C()
{
  v1 = *(v0 + 32);
  *(v0 + 232) = [v1 isLocalPresenceSupported];
  result = [v1 hapAccessories];
  if (!result)
  {
    goto LABEL_34;
  }

  v3 = result;
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v4 = sub_22A4DD83C();

  v27 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v26 = v0;
    v6 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AAD13F0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      v0 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v9 = [v7 supportsAdaptiveTemperatureAutomations];
      v10 = [v9 BOOLValue];

      if (v10)
      {
        sub_22A4DE27C();
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
      }

      ++v6;
      if (v0 == i)
      {
        v0 = v26;
        v11 = v27;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_19:
  *(v0 + 72) = v11;

  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    result = sub_22A4DE0EC();
    *(v0 + 80) = result;
    if (result)
    {
      goto LABEL_22;
    }
  }

  else
  {
    result = *(v11 + 16);
    *(v0 + 80) = result;
    if (result)
    {
LABEL_22:
      if (result >= 1)
      {
        *(v0 + 200) = 0;
        *(v0 + 184) = 0u;
        *(v0 + 168) = 0u;
        *(v0 + 152) = 0u;
        *(v0 + 136) = 0u;
        *(v0 + 120) = 0u;
        *(v0 + 104) = 0u;
        *(v0 + 88) = 0u;
        v12 = *(v0 + 72);
        if ((v12 & 0xC000000000000001) != 0)
        {
          v13 = MEMORY[0x22AAD13F0](0);
        }

        else
        {
          v13 = *(v12 + 32);
        }

        *(v0 + 208) = v13;
        v14 = swift_task_alloc();
        *(v0 + 216) = v14;
        *v14 = v0;
        v14[1] = sub_2295FADA8;

        return sub_2295F72F4();
      }

      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }
  }

  v15 = *(v0 + 64);
  v16 = *(v0 + 232);
  v17 = *(v0 + 48);
  v18 = *(v0 + 56);
  v19 = *(v0 + 40);

  (*(v18 + 16))(v15, v19, v17);
  v20 = type metadata accessor for AdaptiveTemperatureAutomationsConfigurationLogEvent();
  v21 = objc_allocWithZone(v20);
  v22 = &v21[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_coreAnalyticsEventName];
  *v22 = 0xD00000000000003DLL;
  v22[1] = 0x800000022A58CC30;
  *&v21[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_coreAnalyticsEventOptions] = 1;
  *&v21[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_accessoryCount] = 0;
  *&v21[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_adaptiveTemperatureEnabledCount] = 0;
  *&v21[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_modeSwitchingEnabledCount] = 0;
  *&v21[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_arrivalPredictionEnabledCount] = 0;
  *&v21[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_extendedAwayEnabledCount] = 0;
  *&v21[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_roomOccupancyEnabledCount] = 0;
  *&v21[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_sleepScheduleEnabledCount] = 0;
  v21[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_isHomeRoomOccupancySupported] = v16;
  v23 = sub_22A4DB77C();
  *(v0 + 16) = v21;
  *(v0 + 24) = v20;
  v24 = objc_msgSendSuper2((v0 + 16), sel_initWithHomeUUID_, v23);

  (*(v18 + 8))(v15, v17);

  v25 = *(v0 + 8);

  return v25(v24);
}

uint64_t sub_2295FADA8(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](sub_2295FAEA8, 0, 0);
}

void sub_2295FAEA8()
{
  v1 = *(v0 + 224);

  if (v1 == 2)
  {
    v2 = *(v0 + 184);
    v3 = *(v0 + 192);
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v9 = *(v0 + 136);
    v8 = *(v0 + 144);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
LABEL_10:
    v18 = *(v0 + 88);
    v17 = *(v0 + 96);
    goto LABEL_11;
  }

  v14 = *(v0 + 192);
  v9 = v14 + 1;
  if (__OFADD__(v14, 1))
  {
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v15 = *(v0 + 224);
  v2 = *(v0 + 184);
  if ((v15 & 1) == 0)
  {
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    v11 = *(v0 + 120);
    v10 = *(v0 + 128);
    v12 = *(v0 + 104);
    v13 = *(v0 + 112);
    goto LABEL_9;
  }

  v10 = v2 + 1;
  if (__OFADD__(v2, 1))
  {
    goto LABEL_42;
  }

  v16 = (v15 >> 8) & 0xFFFFFFFFFFLL;
  if (((v15 >> 8) & 0xFF00) == 0x200)
  {
    v5 = *(v0 + 168);
    v4 = *(v0 + 176);
    v7 = *(v0 + 152);
    v6 = *(v0 + 160);
    v8 = *(v0 + 144);
    v13 = *(v0 + 112);
    v11 = *(v0 + 120);
    v12 = *(v0 + 104);
    v2 = v10;
LABEL_9:
    v3 = v9;
    goto LABEL_10;
  }

  v4 = *(v0 + 176);
  if (((v15 >> 8) & 0x100000000) == 0)
  {
    v11 = *(v0 + 120);
    goto LABEL_25;
  }

  v11 = v4 + 1;
  if (__OFADD__(v4, 1))
  {
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  ++v4;
LABEL_25:
  if ((*(v0 + 224) & 0xFF00) == 0x200)
  {
    v5 = *(v0 + 168);
    goto LABEL_36;
  }

  v5 = *(v0 + 168);
  if ((v15 & 0x100) == 0)
  {
LABEL_36:
    v17 = *(v0 + 96);
    v6 = *(v0 + 160);
    if ((v16 & 0x100) == 0)
    {
      goto LABEL_37;
    }

    goto LABEL_30;
  }

  v17 = v5 + 1;
  if (__OFADD__(v5, 1))
  {
LABEL_47:
    __break(1u);
    return;
  }

  ++v5;
  v6 = *(v0 + 160);
  if ((v16 & 0x100) != 0)
  {
LABEL_30:
    v13 = v6 + 1;
    if (!__OFADD__(v6, 1))
    {
      ++v6;
      v7 = *(v0 + 152);
      if ((v16 & 0x10000) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }

LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

LABEL_37:
  v13 = *(v0 + 112);
  v7 = *(v0 + 152);
  if ((v16 & 0x10000) == 0)
  {
LABEL_38:
    v18 = *(v0 + 88);
    v8 = *(v0 + 144);
    if ((v16 & 0x1000000) == 0)
    {
      goto LABEL_39;
    }

    goto LABEL_34;
  }

LABEL_32:
  v18 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  ++v7;
  v8 = *(v0 + 144);
  if ((v16 & 0x1000000) == 0)
  {
LABEL_39:
    v12 = *(v0 + 104);
    goto LABEL_40;
  }

LABEL_34:
  v12 = v8 + 1;
  if (__OFADD__(v8, 1))
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  ++v8;
LABEL_40:
  v2 = v10;
  v3 = v9;
LABEL_11:
  v19 = *(v0 + 200) + 1;
  if (v19 == *(v0 + 80))
  {
    v20 = *(v0 + 64);
    v35 = *(v0 + 232);
    v21 = *(v0 + 48);
    v22 = *(v0 + 56);
    v36 = v21;
    v23 = *(v0 + 40);
    v33 = v17;
    v34 = v18;

    (*(v22 + 16))(v20, v23, v21);
    v24 = type metadata accessor for AdaptiveTemperatureAutomationsConfigurationLogEvent();
    v25 = objc_allocWithZone(v24);
    v26 = &v25[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_coreAnalyticsEventName];
    *v26 = 0xD00000000000003DLL;
    v26[1] = 0x800000022A58CC30;
    *&v25[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_coreAnalyticsEventOptions] = 1;
    *&v25[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_accessoryCount] = v9;
    *&v25[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_adaptiveTemperatureEnabledCount] = v10;
    *&v25[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_modeSwitchingEnabledCount] = v11;
    *&v25[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_arrivalPredictionEnabledCount] = v13;
    *&v25[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_extendedAwayEnabledCount] = v12;
    *&v25[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_roomOccupancyEnabledCount] = v33;
    *&v25[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_sleepScheduleEnabledCount] = v34;
    v25[OBJC_IVAR____TtC13HomeKitDaemon51AdaptiveTemperatureAutomationsConfigurationLogEvent_isHomeRoomOccupancySupported] = v35;
    v27 = sub_22A4DB77C();
    *(v0 + 16) = v25;
    *(v0 + 24) = v24;
    v28 = objc_msgSendSuper2((v0 + 16), sel_initWithHomeUUID_, v27);

    (*(v22 + 8))(v20, v36);

    v29 = *(v0 + 8);

    v29(v28);
  }

  else
  {
    *(v0 + 192) = v3;
    *(v0 + 200) = v19;
    *(v0 + 176) = v4;
    *(v0 + 184) = v2;
    *(v0 + 160) = v6;
    *(v0 + 168) = v5;
    *(v0 + 144) = v8;
    *(v0 + 152) = v7;
    *(v0 + 128) = v10;
    *(v0 + 136) = v9;
    *(v0 + 112) = v13;
    *(v0 + 120) = v11;
    *(v0 + 96) = v17;
    *(v0 + 104) = v12;
    *(v0 + 88) = v18;
    v30 = *(v0 + 72);
    if ((v30 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x22AAD13F0]();
    }

    else
    {
      v31 = *(v30 + 8 * v19 + 32);
    }

    *(v0 + 208) = v31;
    v32 = swift_task_alloc();
    *(v0 + 216) = v32;
    *v32 = v0;
    v32[1] = sub_2295FADA8;

    sub_2295F72F4();
  }
}

uint64_t sub_2295FB2E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2295FB338(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DC55C();
  v7 = *(v6 - 8);
  v86 = v6;
  v87 = v7;
  MEMORY[0x28223BE20](v6);
  v85 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DCD0C();
  v80 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10);
  v83 = &v68 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v82 = (&v68 - v16);
  MEMORY[0x28223BE20](v15);
  v74 = &v68 - v17;
  v88 = sub_22A4DC52C();
  v69 = *(v88 - 8);
  v18 = MEMORY[0x28223BE20](v88);
  v84 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v68 - v20;
  v22 = [v1 matterDevice];
  if (v22)
  {
    v23 = v22;
    sub_22A4DC53C();
    v91 = MEMORY[0x277D84F90];
    v93[0] = v23;
    v24 = sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
    result = sub_22A4DC79C();
    v89 = v21;
    v71 = v24;
    v75 = 0;
    v73 = v23;
    v72 = v12;
    v36 = *(result + 16);
    v76 = v9;
    v81 = v36;
    if (v36)
    {
      v37 = 0;
      v38 = v80 + 8;
      v77 = (v80 + 32);
      v78 = (v80 + 16);
      v79 = MEMORY[0x277D84F90];
      v39 = v74;
      while (v37 < *(result + 16))
      {
        v40 = v80;
        v41 = (*(v40 + 80) + 32) & ~*(v40 + 80);
        v42 = result;
        v43 = *(v80 + 72);
        (*(v80 + 16))(v39, result + v41 + v43 * v37, v9);
        v44 = v38;
        v45 = v82;
        sub_22A4DCCDC();
        sub_2295FD1D4(&qword_27D87DCD8, MEMORY[0x277D17408], MEMORY[0x277D17410]);
        v46 = sub_22A4DD58C();
        v47 = *(v40 + 8);
        v48 = v45;
        v38 = v44;
        v47(v48, v9);
        if (v46)
        {
          v47(v39, v9);
        }

        else
        {
          v49 = v39;
          v50 = *v77;
          (*v77)(v83, v49, v9);
          v51 = v79;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v90 = v51;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_2295837D8(0, *(v51 + 16) + 1, 1);
            v51 = v90;
          }

          v54 = *(v51 + 16);
          v53 = *(v51 + 24);
          if (v54 >= v53 >> 1)
          {
            sub_2295837D8((v53 > 1), v54 + 1, 1);
            v51 = v90;
          }

          *(v51 + 16) = v54 + 1;
          v79 = v51;
          v9 = v76;
          v50((v51 + v41 + v54 * v43), v83, v76);
          v39 = v74;
          v38 = v44;
        }

        ++v37;
        result = v42;
        if (v81 == v37)
        {
          goto LABEL_19;
        }
      }

LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v79 = MEMORY[0x277D84F90];
LABEL_19:

    v55 = v73;
    v77 = *(v79 + 16);
    v56 = v89;
    if (v77)
    {
      v57 = 0;
      v74 = (v80 + 16);
      v83 = (v87 + 16);
      v81 = v87 + 8;
      v82 = (v69 + 8);
      v70 = (v80 + 8);
      v68 = MEMORY[0x277D84F90];
      v58 = v72;
      v59 = v75;
      v60 = v87;
      while (v57 < *(v79 + 16))
      {
        (*(v80 + 16))(v58, v79 + ((*(v80 + 80) + 32) & ~*(v80 + 80)) + *(v80 + 72) * v57, v9);
        v93[0] = v55;
        result = sub_22A4DC78C();
        if (v59)
        {
          (*v70)(v58, v76);

          (*(v69 + 8))(v56, v88);
          return MEMORY[0x277D84F90];
        }

        v61 = result;
        v75 = 0;
        v62 = 0;
        v78 = (v57 + 1);
        v63 = *(result + 16);
        do
        {
          if (v63 == v62)
          {
            v58 = v72;
            v9 = v76;
            (*v70)(v72, v76);

            goto LABEL_22;
          }

          if (v62 >= *(v61 + 16))
          {
            __break(1u);
            goto LABEL_36;
          }

          v65 = v85;
          v64 = v86;
          (*(v60 + 16))(v85, v61 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v62++, v86);
          v66 = v84;
          sub_22A4DC54C();
          sub_2295FD1D4(&qword_27D87DCE0, MEMORY[0x277D17180], MEMORY[0x277D17188]);
          v67 = v88;
          sub_22A4DD7DC();
          sub_22A4DD7DC();
          (*v82)(v66, v67);
          result = (*(v60 + 8))(v65, v64);
        }

        while (LODWORD(v93[0]) != v90);

        v58 = v72;
        [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithUnsignedShort_];
        MEMORY[0x22AAD09E0]();
        if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22A4DD85C();
        }

        sub_22A4DD87C();
        v9 = v76;
        result = (*v70)(v58, v76);
        v68 = v91;
LABEL_22:
        v57 = v78;
        v56 = v89;
        v55 = v73;
        v59 = v75;
        if (v78 == v77)
        {
          goto LABEL_33;
        }
      }

LABEL_37:
      __break(1u);
      return result;
    }

    v68 = MEMORY[0x277D84F90];
LABEL_33:
    (*(v69 + 8))(v56, v88);

    return v68;
  }

  else
  {
    v89 = v2;
    sub_2296F8604();
    v26 = v1;
    v27 = sub_22A4DD05C();
    v28 = sub_22A4DDCEC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 136315394;
      v91 = 91;
      v92 = 0xE100000000000000;
      v93[0] = v30;
      v31 = [v26 logIdentifier];
      v32 = sub_22A4DD5EC();
      v34 = v33;

      MEMORY[0x22AAD08C0](v32, v34);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v35 = sub_2295A3E30(v91, v92, v93);

      *(v29 + 4) = v35;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_2295A3E30(0xD000000000000018, 0x800000022A58CDE0, v93);
      _os_log_impl(&dword_229538000, v27, v28, "%s %s - Matter device is nil", v29, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v30, -1, -1);
      MEMORY[0x22AAD4E50](v29, -1, -1);
    }

    (*(v3 + 8))(v5, v89);
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_2295FBE68(int a1, void *a2)
{
  v3 = v2;
  v47 = a1;
  ObjectType = swift_getObjectType();
  v5 = sub_22A4DD07C();
  v44 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_22A4DC52C();
  v41 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DC55C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22A4DCD0C();
  v43 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = [v3 matterDevice];
  if (v16)
  {
    v17 = v16;
    ObjectType = v13;
    [a2 unsignedShortValue];
    sub_22A4DCCEC();
    v48 = v17;
    sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
    result = sub_22A4DC78C();
    v32 = result;
    v39 = v17;
    v40 = v15;
    v33 = 0;
    v34 = *(result + 16);
    v44 = v10 + 16;
    v45 = v34;
    v35 = (v41 + 8);
    while (1)
    {
      v36 = v45 != v33;
      if (v45 == v33)
      {
LABEL_8:
        (*(v43 + 8))(v40, ObjectType);

        return v36;
      }

      if (v33 >= *(v32 + 16))
      {
        break;
      }

      (*(v10 + 16))(v12, v32 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v33++, v9);
      sub_22A4DC54C();
      v37 = sub_22A4DC51C();
      (*v35)(v8, v46);
      result = (*(v10 + 8))(v12, v9);
      if (v37 == v47)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
    v19 = v5;
    sub_2296F8604();
    v20 = v3;
    v21 = sub_22A4DD05C();
    v22 = sub_22A4DDCEC();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = v44;
      v25 = v23;
      v26 = swift_slowAlloc();
      *v25 = 136315394;
      v48 = 91;
      v49 = 0xE100000000000000;
      v50 = v26;
      v27 = [v20 logIdentifier];
      v28 = sub_22A4DD5EC();
      v30 = v29;

      MEMORY[0x22AAD08C0](v28, v30);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v31 = sub_2295A3E30(v48, v49, &v50);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2295A3E30(0xD000000000000024, 0x800000022A58CDB0, &v50);
      _os_log_impl(&dword_229538000, v21, v22, "%s %s - Matter device is nil", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);

      (*(v24 + 8))(v45, v19);
    }

    else
    {

      (*(v44 + 8))(v45, v5);
    }

    return 0;
  }

  return result;
}

uint64_t sub_2295FC45C(unint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_22A4DD07C();
  v38 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_22A4DCDAC();
  v7 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_22A4DCC4C();
  v10 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_22A4DCD0C();
  v13 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = [v2 matterDevice];
  if (v43)
  {
    if (a1 >> 62)
    {
LABEL_23:
      v36 = a1 & 0xFFFFFFFFFFFFFF8;
      ObjectType = sub_22A4DE0EC();
    }

    else
    {
      v36 = a1 & 0xFFFFFFFFFFFFFF8;
      ObjectType = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v4 = 0;
    v6 = 0;
    v37 = a1;
    v38 = a1 & 0xC000000000000001;
    a1 = v7 + 8;
    v34 = (v10 + 8);
    v35 = (v13 + 8);
    while (1)
    {
      if (ObjectType == v4)
      {

        return 1;
      }

      if (v38)
      {
        v16 = MEMORY[0x22AAD13F0](v4, v37);
        if (__OFADD__(v4, 1))
        {
LABEL_14:
          __break(1u);
          goto LABEL_15;
        }
      }

      else
      {
        if (v4 >= *(v36 + 16))
        {
          __break(1u);
          goto LABEL_23;
        }

        v16 = *(v37 + 8 * v4 + 32);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_14;
        }
      }

      v7 = v16;
      v17 = [v7 endpoint];
      [v17 unsignedShortValue];

      sub_22A4DCCEC();
      v18 = [v7 cluster];

      [v18 unsignedIntValue];
      sub_22A4DCC2C();
      v19 = [v7 attribute];
      [v19 unsignedIntValue];

      sub_22A4DCD8C();
      v44 = v43;
      sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
      v20 = sub_22A4DC7BC();
      v10 = sub_2296C8DFC(v12, v20);

      if ((v10 & 1) == 0)
      {
        break;
      }

      v44 = v43;
      v2 = sub_22A4DC7AC();
      v13 = sub_2296C8E44(v9, v2);

      (*a1)(v9, v42);
      (*v34)(v12, v41);
      (*v35)(v15, v40);
      ++v4;
      if ((v13 & 1) == 0)
      {

        return 0;
      }
    }

    (*a1)(v9, v42);
    (*v34)(v12, v41);
    (*v35)(v15, v40);
  }

  else
  {
LABEL_15:
    v21 = v38;
    v22 = v4;
    sub_2296F8604();
    v23 = v2;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCEC();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 136315394;
      v44 = 91;
      v45 = 0xE100000000000000;
      v46 = v27;
      v28 = [v23 logIdentifier];
      v29 = sub_22A4DD5EC();
      v31 = v30;

      MEMORY[0x22AAD08C0](v29, v31);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v32 = sub_2295A3E30(v44, v45, &v46);

      *(v26 + 4) = v32;
      *(v26 + 12) = 2080;
      *(v26 + 14) = sub_2295A3E30(0xD000000000000020, 0x800000022A58CD80, &v46);
      _os_log_impl(&dword_229538000, v24, v25, "%s %s - Matter device is nil", v26, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v27, -1, -1);
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    (*(v21 + 8))(v6, v22);
  }

  return 0;
}

uint64_t sub_2295FCBB8(unint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_22A4DCD0C();
  v8 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = sub_22A4DCC4C();
  v11 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = [v2 matterDevice];
  if (v38)
  {
    v14 = v8;
    if (a1 >> 62)
    {
LABEL_21:
      v33 = a1 & 0xFFFFFFFFFFFFFF8;
      v35 = sub_22A4DE0EC();
    }

    else
    {
      v33 = a1 & 0xFFFFFFFFFFFFFF8;
      v35 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = 0;
    v34 = a1;
    v16 = a1 & 0xC000000000000001;
    v17 = (v14 + 8);
    a1 = v11 + 8;
    while (v35 != v15)
    {
      if (v16)
      {
        v18 = MEMORY[0x22AAD13F0](v15, v34);
      }

      else
      {
        if (v15 >= *(v33 + 16))
        {
          goto LABEL_20;
        }

        v18 = *(v34 + 8 * v15 + 32);
      }

      v19 = v18;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      v20 = [v18 cluster];
      [v20 unsignedIntValue];

      sub_22A4DCC2C();
      v21 = [v19 endpoint];
      [v21 unsignedShortValue];

      sub_22A4DCCEC();
      v39 = v38;
      sub_229562F68(0, &qword_27D87DB90, 0x277CD5310);
      v11 = sub_22A4DC7BC();
      v14 = sub_2296C8DFC(v13, v11);

      (*v17)(v10, v37);
      (*a1)(v13, v36);
      ++v15;
      if (!v14)
      {

        return 0;
      }
    }

    return 1;
  }

  else
  {
    sub_2296F8604();
    v22 = v2;
    v23 = sub_22A4DD05C();
    v24 = sub_22A4DDCEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 136315394;
      v39 = 91;
      v40 = 0xE100000000000000;
      v41 = v26;
      v27 = [v22 logIdentifier];
      v28 = sub_22A4DD5EC();
      v30 = v29;

      MEMORY[0x22AAD08C0](v28, v30);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v31 = sub_2295A3E30(v39, v40, &v41);

      *(v25 + 4) = v31;
      *(v25 + 12) = 2080;
      *(v25 + 14) = sub_2295A3E30(0xD00000000000001ELL, 0x800000022A58CD60, &v41);
      _os_log_impl(&dword_229538000, v23, v24, "%s %s - Matter device is nil", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v26, -1, -1);
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }
}

uint64_t sub_2295FD15C(void *a1, uint64_t a2, uint64_t a3, unint64_t *a4, void *a5, uint64_t (*a6)(uint64_t))
{
  sub_229562F68(0, a4, a5);
  v8 = sub_22A4DD83C();
  v9 = a1;
  LOBYTE(a6) = a6(v8);

  return a6 & 1;
}

uint64_t sub_2295FD1D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2295FD26C(uint64_t a1, uint64_t a2, SEL *a3, unint64_t *a4, void *a5)
{
  v8 = [*v5 *a3];
  sub_229562F68(0, a4, a5);
  v9 = sub_22A4DD83C();

  return v9;
}

uint64_t sub_2295FD2D8()
{
  swift_beginAccess();
  v1 = *(*(v0 + 24) + 16);
  if (v1)
  {

    v2 = 32;
    do
    {

      sub_22A4DDA7C();

      v2 += 8;
      --v1;
    }

    while (v1);
  }

  return swift_deallocClassInstance();
}

uint64_t sub_2295FD3D4(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  v49 = *(v5 - 8);
  v50 = *(v49 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v55 = v47 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v7 - 8);
  v54 = v47 - v8;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = v47 - v14;
  v56 = v4;
  sub_229541CB0(v4, &off_283CDE168);
  v16 = sub_22A4DD05C();
  v17 = sub_22A4DDCCC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&dword_229538000, v16, v17, "Registering for add resident notifications", v18, 2u);
    MEMORY[0x22AAD4E50](v18, -1, -1);
  }

  v19 = *(v10 + 8);
  v19(v15, v9);
  v53 = sub_22A4DDE5C();
  sub_229541CB0(v56, &off_283CDE168);
  v20 = sub_22A4DD05C();
  v21 = sub_22A4DDCCC();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_229538000, v20, v21, "Registering for remove resident notifications", v22, 2u);
    MEMORY[0x22AAD4E50](v22, -1, -1);
  }

  v19(v13, v9);
  v51 = sub_22A4DDE5C();
  v23 = sub_22A4DD9DC();
  v24 = *(v23 - 8);
  v25 = *(v24 + 56);
  v26 = v54;
  v47[1] = v24 + 56;
  v48 = v25;
  v25(v54, 1, 1, v23);
  v27 = swift_allocObject();
  swift_weakInit();
  v52 = a1;
  v28 = v55;
  sub_2295FE8C0(a1, v55);
  v29 = (*(v49 + 80) + 48) & ~*(v49 + 80);
  v30 = (v50 + v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v53;
  v31[5] = v27;
  sub_2295FE930(v28, v31 + v29);
  *(v31 + v30) = v56;

  v32 = sub_22957F3C0(0, 0, v26, &unk_22A57A548, v31);
  swift_beginAccess();
  v33 = v2[3];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v33;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v33 = sub_22958A8B4(0, v33[2] + 1, 1, v33);
    v2[3] = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = sub_22958A8B4((v35 > 1), v36 + 1, 1, v33);
  }

  v33[2] = v36 + 1;
  v33[v36 + 4] = v32;
  v2[3] = v33;
  swift_endAccess();
  v37 = v54;
  v48(v54, 1, 1, v23);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = v55;
  sub_2295FE8C0(v52, v55);
  v40 = swift_allocObject();
  v40[2] = 0;
  v40[3] = 0;
  v40[4] = v51;
  v40[5] = v38;
  sub_2295FE930(v39, v40 + v29);
  *(v40 + v30) = v56;

  v41 = sub_22957F3C0(0, 0, v37, &unk_22A57A558, v40);
  swift_beginAccess();
  v42 = v2[3];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v2[3] = v42;
  if ((v43 & 1) == 0)
  {
    v42 = sub_22958A8B4(0, v42[2] + 1, 1, v42);
    v2[3] = v42;
  }

  v45 = v42[2];
  v44 = v42[3];
  if (v45 >= v44 >> 1)
  {
    v42 = sub_22958A8B4((v44 > 1), v45 + 1, 1, v42);
  }

  v42[2] = v45 + 1;
  v42[v45 + 4] = v41;
  v2[3] = v42;
  swift_endAccess();
}

uint64_t sub_2295FDA34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF0, &unk_22A57A560);
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = sub_22A4DD07C();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v7[26] = swift_task_alloc();
  v10 = sub_22A4DDE4C();
  v7[27] = v10;
  v7[28] = *(v10 - 8);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295FDBF4, 0, 0);
}

uint64_t sub_2295FDBF4()
{

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_2295F39B0();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_2295FDCC8;
  v3 = v0[26];
  v4 = v0[27];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2295FDCC8()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2295FED88;
  }

  else
  {
    v2 = sub_2295FDDDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2295FDDF8()
{
  v1 = v0[26];
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_10:

    v19 = v0[1];

    return v19();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v18 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_2295F3A08(v18);
    goto LABEL_10;
  }

  v4 = Strong;
  sub_229541CB0(v0[19], &off_283CDE168);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_229538000, v5, v6, "Received NSNotification.Name.HMDResidentDeviceManagerAddResident", v7, 2u);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[24];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[19];
  v21 = v0[20];
  v22 = v0[26];

  (*(v10 + 8))(v8, v9);
  v0[5] = v13;
  v0[6] = &off_283CDE180;
  v0[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  sub_22A4DDA0C();
  (*(v12 + 8))(v11, v21);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295F3A08(v22);
  v14 = sub_2295F39B0();
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_2295FDCC8;
  v16 = v0[26];
  v17 = v0[27];

  return MEMORY[0x282200308](v16, v17, v14);
}

uint64_t sub_2295FE104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[18] = a6;
  v7[19] = a7;
  v7[16] = a4;
  v7[17] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF0, &unk_22A57A560);
  v7[20] = v8;
  v7[21] = *(v8 - 8);
  v7[22] = swift_task_alloc();
  v9 = sub_22A4DD07C();
  v7[23] = v9;
  v7[24] = *(v9 - 8);
  v7[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v7[26] = swift_task_alloc();
  v10 = sub_22A4DDE4C();
  v7[27] = v10;
  v7[28] = *(v10 - 8);
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2295FE2C4, 0, 0);
}

uint64_t sub_2295FE2C4()
{

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_2295F39B0();
  v2 = swift_task_alloc();
  v0[30] = v2;
  *v2 = v0;
  v2[1] = sub_2295FE398;
  v3 = v0[26];
  v4 = v0[27];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_2295FE398()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_2295FE7D4;
  }

  else
  {
    v2 = sub_2295FE4AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2295FE4C8()
{
  v1 = v0[26];
  v2 = sub_22A4DB21C();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[28] + 8))(v0[29], v0[27]);
LABEL_10:

    v19 = v0[1];

    return v19();
  }

  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v18 = v0[26];
    (*(v0[28] + 8))(v0[29], v0[27]);
    sub_2295F3A08(v18);
    goto LABEL_10;
  }

  v4 = Strong;
  sub_229541CB0(v0[19], &off_283CDE168);
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCCC();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_229538000, v5, v6, "Received NSNotification.Name.HMDResidentDeviceManagerRemoveResident", v7, 2u);
    MEMORY[0x22AAD4E50](v7, -1, -1);
  }

  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[24];
  v12 = v0[21];
  v11 = v0[22];
  v13 = v0[19];
  v21 = v0[20];
  v22 = v0[26];

  (*(v10 + 8))(v8, v9);
  v0[5] = v13;
  v0[6] = &off_283CDE180;
  v0[2] = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  sub_22957F1C4((v0 + 2), (v0 + 7));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  sub_22A4DDA0C();
  (*(v12 + 8))(v11, v21);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  sub_2295F3A08(v22);
  v14 = sub_2295F39B0();
  v15 = swift_task_alloc();
  v0[30] = v15;
  *v15 = v0;
  v15[1] = sub_2295FE398;
  v16 = v0[26];
  v17 = v0[27];

  return MEMORY[0x282200308](v16, v17, v14);
}

uint64_t sub_2295FE7D4()
{
  *(v0 + 120) = *(v0 + 248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2295FE8C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295FE930(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2295FE9A0(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229586D38;

  return sub_2295FDA34(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t objectdestroy_3Tm()
{
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D600, &qword_22A5821B0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = v1[9];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D610, &qword_22A578AD8);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

uint64_t sub_2295FEC44(uint64_t a1)
{
  v3 = v2;
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D5A0, &qword_22A582190) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_229569B30;

  return sub_2295FE104(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_2295FED9C@<X0>(uint64_t *a1@<X8>)
{
  result = symptom_create();
  *a1 = result;
  return result;
}

void *sub_2295FEDCC(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) == 0 && ((a2 & 0x2000000000000000) != 0 || (a1 & 0x1000000000000000) != 0))
  {
    return symptom_create();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DD08, &qword_22A57A598);
  result = sub_22A4DE1EC();
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t sub_2295FEE90(void *a1)
{
  v2 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v3 = (v2 + *(type metadata accessor for NetworkDiagnosticsSymptom(0) + 32));
  v4 = *v3;
  v5 = v3[1];

  sub_2295FEDCC(v4, v5);

  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DCF8, &qword_22A57A590);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761A0;
  *(inited + 32) = 0;
  *(inited + 40) = *v6;
  *(inited + 48) = 1;
  *(inited + 56) = *(v6 + 1);
  v8 = sub_22956B0EC(inited);
  swift_setDeallocating();
  v9 = 0;
  v10 = 1 << *(v8 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(v8 + 64);
  v13 = (v10 + 63) >> 6;
  while (v12)
  {
    v14 = v9;
LABEL_10:
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v16 = *(*(v8 + 48) + 4 * (v15 | (v14 << 6)));
    v17 = symptom_set_qualifier();
    if (v17)
    {
      v18 = v16 | (v17 << 32);
      sub_2295FF38C();
      swift_allocError();
      *v19 = v18;
      *(v19 + 8) = 0;
      swift_willThrow();
    }
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
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
    }

    if (v14 >= v13)
    {
      break;
    }

    v12 = *(v8 + 64 + 8 * v14);
    ++v9;
    if (v12)
    {
      v9 = v14;
      goto LABEL_10;
    }
  }

  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v21 = sub_22970DD00();
  v22 = v21;
  v23 = 0;
  v24 = v21 + 64;
  v25 = 1 << *(v21 + 32);
  v26 = -1;
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  v27 = v26 & *(v21 + 64);
  v28 = (v25 + 63) >> 6;
  v43 = v21;
  if (v27)
  {
    while (1)
    {
      v29 = v23;
LABEL_19:
      v30 = __clz(__rbit64(v27)) | (v29 << 6);
      v31 = *(*(v22 + 48) + 4 * v30);
      v32 = (*(v22 + 56) + 16 * v30);
      v33 = *v32;
      v34 = v32[1];
      v35 = v34 >> 62;
      if ((v34 >> 62) > 1)
      {
        if (v35 != 2)
        {
LABEL_32:
          v37 = symptom_set_additional_qualifier();
          if (v37)
          {
            goto LABEL_40;
          }

          goto LABEL_35;
        }

        v44 = v31;
        v36 = *(v33 + 16);
        v42 = *(v33 + 24);

        if (sub_22A4DB24C() && __OFSUB__(v36, sub_22A4DB27C()))
        {
          goto LABEL_45;
        }

        if (__OFSUB__(v42, v36))
        {
          goto LABEL_44;
        }
      }

      else
      {
        if (!v35)
        {
          goto LABEL_32;
        }

        if (v33 >> 32 < v33)
        {
          goto LABEL_43;
        }

        v44 = v31;

        if (sub_22A4DB24C() && __OFSUB__(v33, sub_22A4DB27C()))
        {
          goto LABEL_46;
        }
      }

      sub_22A4DB26C();
      v31 = v44;
      v37 = symptom_set_additional_qualifier();
      v22 = v43;
      if (v37)
      {
LABEL_40:
        v40 = v31 | (v37 << 32);
        sub_2295FF38C();
        swift_allocError();
        *v41 = v40;
        *(v41 + 8) = 1;
        swift_willThrow();

        return sub_2295798D4(v33, v34);
      }

LABEL_35:
      v27 &= v27 - 1;
      sub_2295798D4(v33, v34);
      v23 = v29;
      if (!v27)
      {
        goto LABEL_16;
      }
    }
  }

  while (1)
  {
LABEL_16:
    v29 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_42;
    }

    if (v29 >= v28)
    {
      break;
    }

    v27 = *(v24 + 8 * v29);
    ++v23;
    if (v27)
    {
      goto LABEL_19;
    }
  }

  result = symptom_send();
  if (result)
  {
    v38 = result;
    sub_2295FF38C();
    swift_allocError();
    *v39 = v38;
    *(v39 + 8) = 2;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_2295FF38C()
{
  result = qword_27D87DD00;
  if (!qword_27D87DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87DD00);
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SystemSymptomReporter.SymptomReporterFailure(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SystemSymptomReporter.SymptomReporterFailure(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

id sub_2295FF59C(uint64_t a1, uint64_t a2, void *a3, SEL *a4)
{
  v4 = [objc_opt_self() *a4];

  return v4;
}

id sub_2295FF6DC(uint64_t a1, uint64_t a2, Class *a3)
{
  if (isWatchLegacy())
  {
    v4 = 0;
  }

  else
  {
    v4 = [objc_allocWithZone(*a3) init];
  }

  return v4;
}

id sub_2295FFA7C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, Class *a5)
{
  v7 = sub_22A4DB7DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB79C();
  v11 = objc_allocWithZone(*a5);
  v12 = a4;
  v13 = sub_22A4DB77C();
  v14 = [v11 initWithUUID:v13 workQueue:v12];

  (*(v8 + 8))(v10, v7);

  return v14;
}

unint64_t type metadata accessor for HMDHomeDefaultDataSource()
{
  result = qword_27D87DD78;
  if (!qword_27D87DD78)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D87DD78);
  }

  return result;
}

unint64_t sub_2295FFD80(unint64_t isUniquelyReferenced_nonNull_bridgeObject, uint64_t a2)
{
  v3 = v2;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v4 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v4)
  {
    v5 = 0;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v35 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v6 = MEMORY[0x277D84F90];
    v30 = isUniquelyReferenced_nonNull_bridgeObject;
    v32 = v4;
    v33 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v35)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v5, v30);
      }

      else
      {
        if (v5 >= *(v34 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v33 + 8 * v5);
      }

      v7 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = __OFADD__(v5++, 1);
      if (v8)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v9 = v3;
      sub_229606190(&v39, &v38);
      if (v3)
      {
        goto LABEL_40;
      }

      v10 = v38;
      v11 = v38 >> 62;
      if (v38 >> 62)
      {
        v7 = sub_22A4DE0EC();
      }

      else
      {
        v7 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v6 >> 62;
      if (v6 >> 62)
      {
        v27 = sub_22A4DE0EC();
        v14 = v27 + v7;
        if (__OFADD__(v27, v7))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v6;
        }
      }

      else
      {
        v13 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v7;
        if (__OFADD__(v13, v7))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v12)
        {
          v15 = v6 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_22A4DE0EC();
        goto LABEL_21;
      }

      if (v12)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v15 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v11)
      {
        v19 = v15;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v15 = v19;
        v18 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v7 > 0)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v7)
      {
        goto LABEL_44;
      }

      v36 = v6;
      v20 = v15 + 8 * v16 + 32;
      v31 = v15;
      if (v11)
      {
        if (v18 < 1)
        {
          goto LABEL_46;
        }

        sub_229606AFC();
        for (i = 0; i != v18; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
          v22 = sub_22958C03C(v37, i, v10);
          v24 = *v23;
          (v22)(v37, 0);
          *(v20 + 8 * i) = v24;
        }
      }

      else
      {
        sub_229562F68(0, &unk_27D87E490, off_2786660B8);
        swift_arrayInitWithCopy();
      }

      v3 = v9;
      v6 = v36;
      if (v7 >= 1)
      {
        v25 = *(v31 + 16);
        v8 = __OFADD__(v25, v7);
        v26 = v25 + v7;
        if (v8)
        {
          goto LABEL_45;
        }

        *(v31 + 16) = v26;
      }

LABEL_5:
      if (v5 == v32)
      {
        return v6;
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
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v4 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v28;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2296000E4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DDD8, &qword_22A57A770);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A57A630;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D8814D0, &unk_22A578030);
  v2 = swift_initStackObject();
  *(v2 + 16) = xmmword_22A576180;
  *(v2 + 32) = sub_22A4DD5EC();
  *(v2 + 40) = v3;
  v4 = sub_22965C038(v2);
  swift_setDeallocating();
  sub_229606B60(v2 + 32);
  *(inited + 48) = v4;
  *(inited + 56) = sub_22A4DD5EC();
  *(inited + 64) = v5;
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_22A5761A0;
  *(v6 + 32) = sub_22A4DD5EC();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_22A4DD5EC();
  *(v6 + 56) = v8;
  v9 = sub_22965C038(v6);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 72) = v9;
  *(inited + 80) = sub_22A4DD5EC();
  *(inited + 88) = v10;
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_22A5761A0;
  *(v11 + 32) = sub_22A4DD5EC();
  *(v11 + 40) = v12;
  *(v11 + 48) = sub_22A4DD5EC();
  *(v11 + 56) = v13;
  v14 = sub_22965C038(v11);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 96) = v14;
  *(inited + 104) = sub_22A4DD5EC();
  *(inited + 112) = v15;
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_22A5761A0;
  *(v16 + 32) = sub_22A4DD5EC();
  *(v16 + 40) = v17;
  *(v16 + 48) = sub_22A4DD5EC();
  *(v16 + 56) = v18;
  v19 = sub_22965C038(v16);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(inited + 120) = v19;
  *(inited + 128) = sub_22A4DD5EC();
  *(inited + 136) = v20;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22A576180;
  *(v21 + 32) = sub_22A4DD5EC();
  *(v21 + 40) = v22;
  v23 = sub_22965C038(v21);
  swift_setDeallocating();
  sub_229606B60(v21 + 32);
  swift_deallocClassInstance();
  *(inited + 144) = v23;
  *(inited + 152) = sub_22A4DD5EC();
  *(inited + 160) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22A576180;
  *(v25 + 32) = sub_22A4DD5EC();
  *(v25 + 40) = v26;
  v27 = sub_22965C038(v25);
  swift_setDeallocating();
  sub_229606B60(v25 + 32);
  swift_deallocClassInstance();
  *(inited + 168) = v27;
  *(inited + 176) = sub_22A4DD5EC();
  *(inited + 184) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22A5761A0;
  *(v29 + 32) = sub_22A4DD5EC();
  *(v29 + 40) = v30;
  *(v29 + 48) = sub_22A4DD5EC();
  *(v29 + 56) = v31;
  v32 = sub_22965C038(v29);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 192) = v32;
  *(inited + 200) = sub_22A4DD5EC();
  *(inited + 208) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_22A576180;
  *(v34 + 32) = sub_22A4DD5EC();
  *(v34 + 40) = v35;
  v36 = sub_22965C038(v34);
  swift_setDeallocating();
  sub_229606B60(v34 + 32);
  swift_deallocClassInstance();
  *(inited + 216) = v36;
  *(inited + 224) = sub_22A4DD5EC();
  *(inited + 232) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_22A5761A0;
  *(v38 + 32) = sub_22A4DD5EC();
  *(v38 + 40) = v39;
  *(v38 + 48) = sub_22A4DD5EC();
  *(v38 + 56) = v40;
  v41 = sub_22965C038(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 240) = v41;
  *(inited + 248) = sub_22A4DD5EC();
  *(inited + 256) = v42;
  v43 = swift_allocObject();
  *(v43 + 16) = xmmword_22A576180;
  *(v43 + 32) = sub_22A4DD5EC();
  *(v43 + 40) = v44;
  v45 = sub_22965C038(v43);
  swift_setDeallocating();
  sub_229606B60(v43 + 32);
  swift_deallocClassInstance();
  *(inited + 264) = v45;
  *(inited + 272) = sub_22A4DD5EC();
  *(inited + 280) = v46;
  v47 = swift_allocObject();
  *(v47 + 16) = xmmword_22A576180;
  *(v47 + 32) = sub_22A4DD5EC();
  *(v47 + 40) = v48;
  v49 = sub_22965C038(v47);
  swift_setDeallocating();
  sub_229606B60(v47 + 32);
  swift_deallocClassInstance();
  *(inited + 288) = v49;
  *(inited + 296) = sub_22A4DD5EC();
  *(inited + 304) = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_22A5761A0;
  *(v51 + 32) = sub_22A4DD5EC();
  *(v51 + 40) = v52;
  *(v51 + 48) = sub_22A4DD5EC();
  *(v51 + 56) = v53;
  v54 = sub_22965C038(v51);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 312) = v54;
  *(inited + 320) = sub_22A4DD5EC();
  *(inited + 328) = v55;
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_22A576180;
  *(v56 + 32) = sub_22A4DD5EC();
  *(v56 + 40) = v57;
  v58 = sub_22965C038(v56);
  swift_setDeallocating();
  sub_229606B60(v56 + 32);
  swift_deallocClassInstance();
  *(inited + 336) = v58;
  *(inited + 344) = sub_22A4DD5EC();
  *(inited + 352) = v59;
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_22A576180;
  *(v60 + 32) = sub_22A4DD5EC();
  *(v60 + 40) = v61;
  v62 = sub_22965C038(v60);
  swift_setDeallocating();
  sub_229606B60(v60 + 32);
  swift_deallocClassInstance();
  *(inited + 360) = v62;
  *(inited + 368) = sub_22A4DD5EC();
  *(inited + 376) = v63;
  v64 = swift_allocObject();
  *(v64 + 16) = xmmword_22A576180;
  *(v64 + 32) = sub_22A4DD5EC();
  *(v64 + 40) = v65;
  v66 = sub_22965C038(v64);
  swift_setDeallocating();
  sub_229606B60(v64 + 32);
  swift_deallocClassInstance();
  *(inited + 384) = v66;
  *(inited + 392) = sub_22A4DD5EC();
  *(inited + 400) = v67;
  v68 = swift_allocObject();
  *(v68 + 16) = xmmword_22A576180;
  *(v68 + 32) = sub_22A4DD5EC();
  *(v68 + 40) = v69;
  v70 = sub_22965C038(v68);
  swift_setDeallocating();
  sub_229606B60(v68 + 32);
  swift_deallocClassInstance();
  *(inited + 408) = v70;
  *(inited + 416) = sub_22A4DD5EC();
  *(inited + 424) = v71;
  v72 = swift_allocObject();
  *(v72 + 16) = xmmword_22A576180;
  *(v72 + 32) = sub_22A4DD5EC();
  *(v72 + 40) = v73;
  v74 = sub_22965C038(v72);
  swift_setDeallocating();
  sub_229606B60(v72 + 32);
  swift_deallocClassInstance();
  *(inited + 432) = v74;
  *(inited + 440) = sub_22A4DD5EC();
  *(inited + 448) = v75;
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_22A576180;
  *(v76 + 32) = sub_22A4DD5EC();
  *(v76 + 40) = v77;
  v78 = sub_22965C038(v76);
  swift_setDeallocating();
  sub_229606B60(v76 + 32);
  swift_deallocClassInstance();
  *(inited + 456) = v78;
  *(inited + 464) = sub_22A4DD5EC();
  *(inited + 472) = v79;
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_22A576180;
  *(v80 + 32) = sub_22A4DD5EC();
  *(v80 + 40) = v81;
  v82 = sub_22965C038(v80);
  swift_setDeallocating();
  sub_229606B60(v80 + 32);
  swift_deallocClassInstance();
  *(inited + 480) = v82;
  *(inited + 488) = sub_22A4DD5EC();
  *(inited + 496) = v83;
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_22A576180;
  *(v84 + 32) = sub_22A4DD5EC();
  *(v84 + 40) = v85;
  v86 = sub_22965C038(v84);
  swift_setDeallocating();
  sub_229606B60(v84 + 32);
  swift_deallocClassInstance();
  *(inited + 504) = v86;
  *(inited + 512) = sub_22A4DD5EC();
  *(inited + 520) = v87;
  v88 = swift_allocObject();
  *(v88 + 16) = xmmword_22A5761A0;
  *(v88 + 32) = sub_22A4DD5EC();
  *(v88 + 40) = v89;
  *(v88 + 48) = sub_22A4DD5EC();
  *(v88 + 56) = v90;
  v91 = sub_22965C038(v88);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 528) = v91;
  *(inited + 536) = sub_22A4DD5EC();
  *(inited + 544) = v92;
  v93 = swift_allocObject();
  *(v93 + 16) = xmmword_22A5761A0;
  *(v93 + 32) = sub_22A4DD5EC();
  *(v93 + 40) = v94;
  *(v93 + 48) = sub_22A4DD5EC();
  *(v93 + 56) = v95;
  v96 = sub_22965C038(v93);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 552) = v96;
  *(inited + 560) = sub_22A4DD5EC();
  *(inited + 568) = v97;
  v98 = swift_allocObject();
  *(v98 + 16) = xmmword_22A576180;
  *(v98 + 32) = sub_22A4DD5EC();
  *(v98 + 40) = v99;
  v100 = sub_22965C038(v98);
  swift_setDeallocating();
  sub_229606B60(v98 + 32);
  swift_deallocClassInstance();
  *(inited + 576) = v100;
  *(inited + 584) = sub_22A4DD5EC();
  *(inited + 592) = v101;
  v102 = swift_allocObject();
  *(v102 + 16) = xmmword_22A576180;
  *(v102 + 32) = sub_22A4DD5EC();
  *(v102 + 40) = v103;
  v104 = sub_22965C038(v102);
  swift_setDeallocating();
  sub_229606B60(v102 + 32);
  swift_deallocClassInstance();
  *(inited + 600) = v104;
  *(inited + 608) = sub_22A4DD5EC();
  *(inited + 616) = v105;
  v106 = swift_allocObject();
  *(v106 + 16) = xmmword_22A576180;
  *(v106 + 32) = sub_22A4DD5EC();
  *(v106 + 40) = v107;
  v108 = sub_22965C038(v106);
  swift_setDeallocating();
  sub_229606B60(v106 + 32);
  swift_deallocClassInstance();
  *(inited + 624) = v108;
  *(inited + 632) = sub_22A4DD5EC();
  *(inited + 640) = v109;
  v110 = swift_allocObject();
  *(v110 + 16) = xmmword_22A576180;
  *(v110 + 32) = sub_22A4DD5EC();
  *(v110 + 40) = v111;
  v112 = sub_22965C038(v110);
  swift_setDeallocating();
  sub_229606B60(v110 + 32);
  swift_deallocClassInstance();
  *(inited + 648) = v112;
  *(inited + 656) = sub_22A4DD5EC();
  *(inited + 664) = v113;
  v114 = swift_allocObject();
  *(v114 + 16) = xmmword_22A5779B0;
  *(v114 + 32) = sub_22A4DD5EC();
  *(v114 + 40) = v115;
  *(v114 + 48) = sub_22A4DD5EC();
  *(v114 + 56) = v116;
  *(v114 + 64) = sub_22A4DD5EC();
  *(v114 + 72) = v117;
  *(v114 + 80) = sub_22A4DD5EC();
  *(v114 + 88) = v118;
  v119 = sub_22965C038(v114);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  *(inited + 672) = v119;
  *(inited + 680) = sub_22A4DD5EC();
  *(inited + 688) = v120;
  v121 = swift_allocObject();
  *(v121 + 16) = xmmword_22A576180;
  *(v121 + 32) = sub_22A4DD5EC();
  *(v121 + 40) = v122;
  v123 = sub_22965C038(v121);
  swift_setDeallocating();
  sub_229606B60(v121 + 32);
  swift_deallocClassInstance();
  *(inited + 696) = v123;
  *(inited + 704) = sub_22A4DD5EC();
  *(inited + 712) = v124;
  v125 = swift_allocObject();
  *(v125 + 16) = xmmword_22A576180;
  *(v125 + 32) = sub_22A4DD5EC();
  *(v125 + 40) = v126;
  v127 = sub_22965C038(v125);
  swift_setDeallocating();
  sub_229606B60(v125 + 32);
  swift_deallocClassInstance();
  *(inited + 720) = v127;
  *(inited + 728) = sub_22A4DD5EC();
  *(inited + 736) = v128;
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_22A576180;
  *(v129 + 32) = sub_22A4DD5EC();
  *(v129 + 40) = v130;
  v131 = sub_22965C038(v129);
  swift_setDeallocating();
  sub_229606B60(v129 + 32);
  swift_deallocClassInstance();
  *(inited + 744) = v131;
  *(inited + 752) = sub_22A4DD5EC();
  *(inited + 760) = v132;
  v133 = swift_allocObject();
  *(v133 + 16) = xmmword_22A576180;
  *(v133 + 32) = sub_22A4DD5EC();
  *(v133 + 40) = v134;
  v135 = sub_22965C038(v133);
  swift_setDeallocating();
  sub_229606B60(v133 + 32);
  swift_deallocClassInstance();
  *(inited + 768) = v135;
  v136 = sub_22956B2D8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DDE0, &qword_22A57A778);
  result = swift_arrayDestroy();
  off_27D87DD80 = v136;
  return result;
}

uint64_t sub_229601174()
{
  v1 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger12HAPAccessory8Observer_notificationTasks;
  swift_beginAccess();
  v2 = *(*(v0 + v1) + 16);
  if (v2)
  {

    v3 = 32;
    do
    {

      sub_22A4DDA7C();

      v3 += 8;
      --v2;
    }

    while (v2);
  }

  sub_229606EA4(v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger12HAPAccessory8Observer_controlBlock, _s20ControlBlockInternalVMa);
  MEMORY[0x22AAD4F90](v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger12HAPAccessory8Observer_home);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_2296012B4()
{
  sub_229601174();

  return MEMORY[0x282200960](v0);
}

uint64_t _s8ObserverCMa_1(uint64_t a1)
{
  result = qword_27D87DDA0;
  if (!qword_27D87DDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229601334(uint64_t a1)
{
  result = _s20ControlBlockInternalVMa(319);
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

uint64_t sub_229601408(uint64_t a1)
{
  v2 = v1;
  v44 = a1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
  v41 = *(v4 - 8);
  v42 = *(v41 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v38 - v7;
  v9 = sub_22A4DD07C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(v3, &off_283CDE2F8);

  v13 = sub_22A4DD05C();
  v14 = sub_22A4DDCDC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v45[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_2295A3E30(*(v2 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger12HAPAccessory8Observer_description), *(v2 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger12HAPAccessory8Observer_description + 8), v45);
    _os_log_impl(&dword_229538000, v13, v14, "Configuring %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x22AAD4E50](v16, -1, -1);
    MEMORY[0x22AAD4E50](v15, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  v17 = sub_22A4DDE5C();
  v39 = sub_22A4DDE5C();
  v18 = sub_22A4DD9DC();
  v19 = *(*(v18 - 8) + 56);
  v19(v8, 1, 1, v18);
  v20 = swift_allocObject();
  swift_weakInit();
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = v17;
  v21[5] = v20;
  v21[6] = v3;
  v40 = v17;

  v22 = sub_22957F3C0(0, 0, v8, &unk_22A57A788, v21);
  v23 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger12HAPAccessory8Observer_notificationTasks;
  swift_beginAccess();
  v24 = *(v2 + v23);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v23) = v24;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v24 = sub_22958A8B4(0, v24[2] + 1, 1, v24);
    *(v2 + v23) = v24;
  }

  v27 = v24[2];
  v26 = v24[3];
  if (v27 >= v26 >> 1)
  {
    v24 = sub_22958A8B4((v26 > 1), v27 + 1, 1, v24);
  }

  v24[2] = v27 + 1;
  v24[v27 + 4] = v22;
  *(v2 + v23) = v24;
  swift_endAccess();
  v19(v8, 1, 1, v18);
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v43;
  sub_229564F88(v44, v43, &unk_27D881FF0, &qword_22A57A380);
  v30 = (*(v41 + 80) + 48) & ~*(v41 + 80);
  v31 = swift_allocObject();
  v31[2] = 0;
  v31[3] = 0;
  v31[4] = v39;
  v31[5] = v28;
  sub_22957F2F8(v29, v31 + v30, &unk_27D881FF0, &qword_22A57A380);

  v32 = sub_22957F3C0(0, 0, v8, &unk_22A57A798, v31);
  swift_beginAccess();
  v33 = *(v2 + v23);
  v34 = swift_isUniquelyReferenced_nonNull_native();
  *(v2 + v23) = v33;
  if ((v34 & 1) == 0)
  {
    v33 = sub_22958A8B4(0, v33[2] + 1, 1, v33);
    *(v2 + v23) = v33;
  }

  v36 = v33[2];
  v35 = v33[3];
  if (v36 >= v35 >> 1)
  {
    v33 = sub_22958A8B4((v35 > 1), v36 + 1, 1, v33);
  }

  v33[2] = v36 + 1;
  v33[v36 + 4] = v32;
  *(v2 + v23) = v33;
  swift_endAccess();
}

uint64_t sub_2296019E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_22A4DD07C();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();
  v8 = sub_22A4DB21C();
  v6[24] = v8;
  v6[25] = *(v8 - 8);
  v6[26] = swift_task_alloc();
  v6[27] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v6[28] = swift_task_alloc();
  v9 = sub_22A4DDE4C();
  v6[29] = v9;
  v6[30] = *(v9 - 8);
  v6[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229601BA4, 0, 0);
}

uint64_t sub_229601BA4()
{

  sub_22A4DDE3C();
  swift_beginAccess();
  v0[32] = @"HMDNotificationAddedAccessoryKey";
  v1 = sub_229606E5C(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[33] = v2;
  *v2 = v0;
  v2[1] = sub_229601CB8;
  v3 = v0[28];
  v4 = v0[29];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_229601CB8()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_229602330;
  }

  else
  {
    v2 = sub_229601DCC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229601DE8()
{
  v43 = v0;
  v1 = *(v0 + 224);
  v2 = *(v0 + 192);
  v3 = *(v0 + 200);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(*(v0 + 216), v1, v2);
    Strong = swift_weakLoadStrong();
    *(v0 + 280) = Strong;
    if (Strong)
    {
      v5 = Strong;
      v6 = sub_22A4DB20C();
      if (v6)
      {
        v7 = v6;
        *(v0 + 112) = sub_22A4DD5EC();
        *(v0 + 120) = v8;
        sub_22A4DE18C();
        if (*(v7 + 16) && (v9 = sub_2295402E8(v0 + 16), (v10 & 1) != 0))
        {
          sub_2295404B0(*(v7 + 56) + 32 * v9, v0 + 56);
          sub_22954045C(v0 + 16);

          if (*(v0 + 80))
          {
            sub_229562F68(0, &qword_281401B70, off_278666148);
            if (swift_dynamicCast())
            {
              *(v0 + 288) = *(v0 + 136);

              return MEMORY[0x2822009F8](sub_2296023BC, v5, 0);
            }

            goto LABEL_18;
          }
        }

        else
        {

          sub_22954045C(v0 + 16);
          *(v0 + 56) = 0u;
          *(v0 + 72) = 0u;
        }
      }

      else
      {
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
      }

      sub_22953EAE4(v0 + 56, &unk_27D87DE60, &unk_22A57A960);
LABEL_18:
      v13 = *(v0 + 208);
      v12 = *(v0 + 216);
      v15 = *(v0 + 192);
      v14 = *(v0 + 200);
      sub_229541CB0(*(v0 + 160), &off_283CDE2F8);
      (*(v14 + 16))(v13, v12, v15);
      v16 = sub_22A4DD05C();
      v17 = sub_22A4DDCCC();
      v18 = os_log_type_enabled(v16, v17);
      v19 = *(v0 + 208);
      v20 = *(v0 + 216);
      v22 = *(v0 + 192);
      v21 = *(v0 + 200);
      v23 = *(v0 + 176);
      v40 = *(v0 + 168);
      v41 = *(v0 + 184);
      if (v18)
      {
        v24 = swift_slowAlloc();
        v37 = v17;
        v38 = swift_slowAlloc();
        v42 = v38;
        *v24 = 136315138;
        sub_229606E5C(&unk_2814038C0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
        v39 = v20;
        v25 = sub_22A4DE5CC();
        v27 = v26;
        v28 = *(v21 + 8);
        v28(v19, v22);
        v29 = sub_2295A3E30(v25, v27, &v42);

        *(v24 + 4) = v29;
        _os_log_impl(&dword_229538000, v16, v37, "Accessory is not an HMDHAPAccessory: %s", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v38);
        MEMORY[0x22AAD4E50](v38, -1, -1);
        MEMORY[0x22AAD4E50](v24, -1, -1);

        (*(v23 + 8))(v41, v40);
        v31 = v22;
        v30 = v39;
      }

      else
      {

        v28 = *(v21 + 8);
        v28(v19, v22);
        (*(v23 + 8))(v41, v40);
        v30 = v20;
        v31 = v22;
      }

      v28(v30, v31);
      v32 = sub_229606E5C(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
      v33 = swift_task_alloc();
      *(v0 + 264) = v33;
      *v33 = v0;
      v33[1] = sub_229601CB8;
      v34 = *(v0 + 224);
      v35 = *(v0 + 232);

      return MEMORY[0x282200308](v34, v35, v32);
    }

    (*(*(v0 + 200) + 8))(*(v0 + 216), *(v0 + 192));
  }

  (*(*(v0 + 240) + 8))(*(v0 + 248), *(v0 + 232));

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_229602330()
{
  *(v0 + 128) = *(v0 + 272);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_2296023BC()
{
  sub_229605790(*(v0 + 288));

  return MEMORY[0x2822009F8](sub_229602424, 0, 0);
}

uint64_t sub_229602424()
{
  v1 = v0[36];
  v2 = v0[27];
  v3 = v0[24];
  v4 = v0[25];

  (*(v4 + 8))(v2, v3);
  v5 = sub_229606E5C(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v6 = swift_task_alloc();
  v0[33] = v6;
  *v6 = v0;
  v6[1] = sub_229601CB8;
  v7 = v0[28];
  v8 = v0[29];

  return MEMORY[0x282200308](v7, v8, v5);
}

uint64_t sub_229602530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DDE8, &qword_22A57A7A0);
  v6[9] = swift_task_alloc();
  v7 = _s12HAPAccessoryO5EventVMa(0);
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v8 = sub_22A4DB21C();
  v6[13] = v8;
  v6[14] = *(v8 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DBB0, &unk_22A57CD50);
  v6[17] = swift_task_alloc();
  v9 = sub_22A4DDE4C();
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229602728, 0, 0);
}

uint64_t sub_229602728()
{

  sub_22A4DDE3C();
  swift_beginAccess();
  v1 = sub_229606E5C(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v2 = swift_task_alloc();
  v0[21] = v2;
  *v2 = v0;
  v2[1] = sub_22960282C;
  v3 = v0[17];
  v4 = v0[18];

  return MEMORY[0x282200308](v3, v4, v1);
}

uint64_t sub_22960282C()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_229602C70;
  }

  else
  {
    v2 = sub_229602940;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22960295C()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    (*(v3 + 32))(v0[16], v1, v2);
    Strong = swift_weakLoadStrong();
    v0[23] = Strong;
    if (Strong)
    {
      v5 = Strong;
      v6 = v0[15];
      v7 = v0[10];
      v8 = v0[11];
      v9 = v0[9];
      (*(v0[14] + 16))(v6, v0[16], v0[13]);
      v10 = [objc_opt_self() defaultDataSource];
      sub_229602E94(v6, v10, v9);
      v11 = (*(v8 + 48))(v9, 1, v7);
      v12 = v0[9];
      if (v11 == 1)
      {
        (*(v0[14] + 8))(v0[16], v0[13]);

        sub_22953EAE4(v12, &qword_27D87DDE8, &qword_22A57A7A0);
        v13 = sub_229606E5C(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
        v14 = swift_task_alloc();
        v0[21] = v14;
        *v14 = v0;
        v14[1] = sub_22960282C;
        v15 = v0[17];
        v16 = v0[18];

        return MEMORY[0x282200308](v15, v16, v13);
      }

      else
      {
        sub_229606DF4(v0[9], v0[12], _s12HAPAccessoryO5EventVMa);

        return MEMORY[0x2822009F8](sub_229602CFC, v5, 0);
      }
    }

    (*(v0[14] + 8))(v0[16], v0[13]);
  }

  (*(v0[19] + 8))(v0[20], v0[18]);

  v17 = v0[1];

  return v17();
}

uint64_t sub_229602C70()
{
  *(v0 + 40) = *(v0 + 176);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  swift_dynamicCast();

  return swift_willThrowTypedImpl();
}

uint64_t sub_229602CFC()
{
  sub_229605B1C(*(v0 + 64), *(v0 + 96));

  return MEMORY[0x2822009F8](sub_229602D6C, 0, 0);
}

uint64_t sub_229602D6C()
{
  v1 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[12];

  sub_229606EA4(v4, _s12HAPAccessoryO5EventVMa);
  (*(v3 + 8))(v1, v2);
  v5 = sub_229606E5C(&qword_27D87DBC0, MEMORY[0x277CC9D68], MEMORY[0x277CC9D70]);
  v6 = swift_task_alloc();
  v0[21] = v6;
  *v6 = v0;
  v6[1] = sub_22960282C;
  v7 = v0[17];
  v8 = v0[18];

  return MEMORY[0x282200308](v7, v8, v5);
}

id sub_229602E94@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v222 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE0, &unk_22A577880);
  MEMORY[0x28223BE20](v5 - 8);
  v201 = &v179 - v6;
  v202 = _s21EventMetadataInternalV6DeviceVMa(0);
  v213 = *(v202 - 8);
  v7 = MEMORY[0x28223BE20](v202);
  v200 = (&v179 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v7);
  v210 = &v179 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87CBE8, &qword_22A577890);
  MEMORY[0x28223BE20](v10 - 8);
  v211 = &v179 - v11;
  v12 = _s21EventMetadataInternalV4HomeVMa(0);
  MEMORY[0x28223BE20](v12);
  v209 = &v179 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v208 = _s21EventMetadataInternalVMa(0);
  MEMORY[0x28223BE20](v208);
  v207 = &v179 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v214 = sub_22A4DB74C();
  v206 = *(v214 - 8);
  v15 = MEMORY[0x28223BE20](v214);
  v212 = &v179 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v215 = &v179 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v21 = &v179 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v205 = (&v179 - v23);
  v24 = MEMORY[0x28223BE20](v22);
  v203 = &v179 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v179 - v27;
  MEMORY[0x28223BE20](v26);
  v216 = &v179 - v29;
  v219 = sub_22A4DB7DC();
  v221 = *(v219 - 8);
  v30 = MEMORY[0x28223BE20](v219);
  v204 = &v179 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v179 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v37 = &v179 - v36;
  v38 = MEMORY[0x28223BE20](v35);
  v217 = (&v179 - v39);
  MEMORY[0x28223BE20](v38);
  v218 = &v179 - v40;
  v41 = _s12HAPAccessoryO5EventVMa(0);
  v42 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v199 = &v179 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DB1FC();
  if (!v225[3])
  {
    v68 = sub_22A4DB21C();
    (*(*(v68 - 8) + 8))(a1, v68);

    sub_22953EAE4(v225, &unk_27D87DE60, &unk_22A57A960);
    return (*(v42 + 56))(v222, 1, 1, v41);
  }

  v220 = a2;
  sub_229562F68(0, &qword_281401B70, off_278666148);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v69 = sub_22A4DB21C();
    (*(*(v69 - 8) + 8))(a1, v69);

    return (*(v42 + 56))(v222, 1, 1, v41);
  }

  v44 = v226[0];
  v45 = sub_22A4DB20C();
  if (!v45)
  {
    v70 = sub_22A4DB21C();
    (*(*(v70 - 8) + 8))(a1, v70);

    return (*(v42 + 56))(v222, 1, 1, v41);
  }

  v198 = v45;
  v197 = v41;
  v46 = [v44 uuid];
  v47 = v218;
  sub_22A4DB79C();

  v48 = [v44 home];
  v49 = v44;
  if (!v48)
  {

    v71 = sub_22A4DB21C();
    (*(*(v71 - 8) + 8))(a1, v71);
    (*(v221 + 8))(v47, v219);
LABEL_113:
    v41 = v197;
    return (*(v42 + 56))(v222, 1, 1, v41);
  }

  v50 = v48;
  v196 = v49;
  v51 = [v48 currentAccessory];
  v41 = v197;
  if (!v51)
  {

    v72 = v220;
LABEL_39:

    v85 = sub_22A4DB21C();
    (*(*(v85 - 8) + 8))(a1, v85);
    (*(v221 + 8))(v47, v219);
    return (*(v42 + 56))(v222, 1, 1, v41);
  }

  v195 = a1;
  v52 = v51;
  objc_opt_self();
  v53 = swift_dynamicCastObjCClass();
  if (!v53)
  {

    v72 = v50;
    v50 = v52;
    a1 = v195;
    goto LABEL_39;
  }

  v189 = v53;
  v192 = v52;
  v194 = v50;
  v54 = [v196 room];
  v55 = [v54 uuid];

  v56 = v217;
  sub_22A4DB79C();

  v223 = sub_22A4DD5EC();
  v224 = v57;
  sub_22A4DE18C();
  v58 = v198;
  if (*(v198 + 16) && (v59 = sub_2295402E8(v225), v58 = v198, (v60 & 1) != 0))
  {
    sub_2295404B0(*(v198 + 56) + 32 * v59, v226);
    sub_22954045C(v225);
    v61 = v216;
    v62 = v219;
    v63 = swift_dynamicCast();
    v64 = v221;
    v190 = *(v221 + 56);
    v190(v61, v63 ^ 1u, 1, v62);
    v65 = *(v64 + 48);
    if (v65(v61, 1, v62) == 1)
    {
      v66 = 0;
      v67 = v61;
      v58 = v198;
      v56 = v217;
    }

    else
    {
      sub_229564F88(v61, v21, &unk_27D87D2A0, &unk_22A578BD0);
      if (v65(v21, 1, v62) == 1)
      {
        v86 = 0;
      }

      else
      {
        v86 = sub_22A4DB77C();
        (*(v221 + 8))(v21, v62);
      }

      v56 = v217;
      v66 = [v194 userWithUUID_];

      v67 = v216;
      v58 = v198;
    }
  }

  else
  {
    sub_22954045C(v225);
    v67 = v216;
    v190 = *(v221 + 56);
    v190(v216, 1, 1, v219);
    v66 = 0;
  }

  v223 = sub_22A4DD5EC();
  v224 = v73;
  sub_22A4DE18C();
  if (!*(v58 + 16) || (v74 = sub_2295402E8(v225), (v75 & 1) == 0))
  {

    v84 = sub_22A4DB21C();
    (*(*(v84 - 8) + 8))(v195, v84);
    sub_22954045C(v225);
LABEL_111:
    v177 = *(v221 + 8);
    v178 = v219;
    v177(v56, v219);
    v177(v218, v178);
    v175 = v67;
LABEL_112:
    sub_22953EAE4(v175, &unk_27D87D2A0, &unk_22A578BD0);
    goto LABEL_113;
  }

  sub_2295404B0(*(v58 + 56) + 32 * v74, v226);
  sub_22954045C(v225);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D880960, &qword_22A578820);
  v76 = swift_dynamicCast();
  if ((v76 & 1) == 0)
  {

    goto LABEL_109;
  }

  v77 = v223;
  v193 = v223;
  if (!(v223 >> 62))
  {
    v78 = *((v223 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v78)
    {
      goto LABEL_22;
    }

    goto LABEL_108;
  }

LABEL_107:
  v76 = sub_22A4DE0EC();
  v77 = v193;
  v78 = v76;
  if (!v76)
  {
LABEL_108:

LABEL_109:

LABEL_110:
    v176 = sub_22A4DB21C();
    (*(*(v176 - 8) + 8))(v195, v176);
    goto LABEL_111;
  }

LABEL_22:
  v191 = v77 & 0xC000000000000001;
  v186 = v66;
  if ((v77 & 0xC000000000000001) != 0)
  {
    goto LABEL_116;
  }

  if (*((v77 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v79 = *(v77 + 32);
    goto LABEL_25;
  }

  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  __break(1u);
LABEL_120:
  __break(1u);
LABEL_121:
  __break(1u);
LABEL_122:
  __break(1u);
  do
  {
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    v135 = v76;
    v88 = sub_22A4DE0EC();

    if ((v88 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      v185 = v135 & 0xFFFFFFFFFFFFFF8;
      v191 = sub_22A4DE0EC();
LABEL_85:
      v67 = 0;
      v188 = v135 & 0xC000000000000001;
      v184 = *MEMORY[0x277CD0F28];
      v183 = *MEMORY[0x277CD0E70];
      while (1)
      {
        if (v191 == v67)
        {
          goto LABEL_102;
        }

        v77 = v187;
        if (v188)
        {
          v159 = MEMORY[0x22AAD13F0](v67, v187);
          if (__OFADD__(v67, 1))
          {
LABEL_101:
            __break(1u);
LABEL_102:

            v172 = sub_22A4DB21C();
            (*(*(v172 - 8) + 8))(v195, v172);
            (*(v206 + 8))(v215, v214);
            v173 = *(v221 + 8);
            v174 = v219;
            v173(v217, v219);
            v173(v218, v174);
            v175 = v88;
            goto LABEL_112;
          }
        }

        else
        {
          if (v67 >= *(v185 + 16))
          {
            __break(1u);
LABEL_116:
            v79 = MEMORY[0x22AAD13F0](0, v77);
LABEL_25:
            v66 = v79;
            v80 = [v79 lastKnownValueUpdateTime];

            if (!v80)
            {

              goto LABEL_110;
            }

            sub_22A4DB70C();

            v81 = 0;
            v187 = MEMORY[0x277D84F90];
            v225[0] = MEMORY[0x277D84F90];
            v82 = v193;
            v188 = v193 & 0xFFFFFFFFFFFFFF8;
            while (v78 != v81)
            {
              if (v191)
              {
                v83 = MEMORY[0x22AAD13F0](v81);
              }

              else
              {
                if (v81 >= *(v188 + 16))
                {
                  goto LABEL_106;
                }

                v83 = *(v82 + 8 * v81 + 32);
              }

              v66 = v83;
              v56 = (v81 + 1);
              if (__OFADD__(v81, 1))
              {
                __break(1u);
LABEL_106:
                __break(1u);
                goto LABEL_107;
              }

              v67 = [v83 service];

              v81 = (v81 + 1);
              v82 = v193;
              if (v67)
              {
                MEMORY[0x22AAD09E0]();
                if (*((v225[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v225[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  v66 = *((v225[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
                  sub_22A4DD85C();
                }

                sub_22A4DD87C();
                v187 = v225[0];
                v81 = v56;
                v82 = v193;
              }
            }

            v87 = [v220 isSHADERMercuryEnabled];
            v88 = v216;
            if ((v87 & 1) != 0 && ([v220 isSHADEREnabled] & 1) == 0)
            {
              v135 = v187;
              if (v187 >> 62)
              {
                goto LABEL_128;
              }

              v185 = v187 & 0xFFFFFFFFFFFFFF8;
              v191 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
              goto LABEL_85;
            }

LABEL_47:
            v226[0] = sub_22A4DD5EC();
            v226[1] = v89;
            sub_22A4DE18C();
            v90 = v198;
            if (!*(v198 + 16))
            {
              sub_22954045C(v225);
              v180 = 0;
              v92 = v194;
              goto LABEL_55;
            }

            v91 = sub_2295402E8(v225);
            v92 = v194;
            if ((v93 & 1) == 0)
            {
              sub_22954045C(v225);
LABEL_54:
              v180 = 0;
              goto LABEL_55;
            }

            sub_2295404B0(*(v90 + 56) + 32 * v91, v226);
            sub_22954045C(v225);
            if ((swift_dynamicCast() & 1) == 0)
            {
              goto LABEL_54;
            }

            v180 = v223;
LABEL_55:
            v94 = *(v206 + 16);
            v188 = v206 + 16;
            v185 = v94;
            v94(v212, v215, v214);
            v95 = [v92 uuid];
            sub_22A4DB79C();

            v96 = [v92 users];
            if (!v96)
            {
              goto LABEL_60;
            }

            v97 = v96;
            sub_229562F68(0, &qword_281401790, off_278666348);
            v98 = sub_22A4DD83C();

            v76 = v98;
            if (!(v98 >> 62))
            {
              v88 = *((v98 & 0xFFFFFFFFFFFFFF8) + 0x10);

              break;
            }

            goto LABEL_125;
          }

          v159 = *(v187 + 8 * v67 + 32);
          if (__OFADD__(v67, 1))
          {
            goto LABEL_101;
          }
        }

        v56 = v67;
        v78 = v159;
        v160 = [v159 serviceType];
        v161 = sub_22A4DD5EC();
        v163 = v162;

        if (v161 == sub_22A4DD5EC() && v163 == v164)
        {

          goto LABEL_47;
        }

        v166 = sub_22A4DE60C();

        if (v166)
        {

          goto LABEL_47;
        }

        v167 = [v78 serviceType];
        v168 = sub_22A4DD5EC();
        v170 = v169;

        if (v168 == sub_22A4DD5EC() && v170 == v171)
        {

          goto LABEL_47;
        }

        v158 = sub_22A4DE60C();

        v67 = v56 + 1;
        v88 = v216;
        if (v158)
        {
          goto LABEL_47;
        }
      }
    }

    if (HIDWORD(v88))
    {
      __break(1u);
LABEL_60:
      LODWORD(v88) = 1;
    }

    v99 = v221;
    v100 = v209;
    v101 = v219;
    v182 = *(v221 + 32);
    v182(v209, v37, v219);
    *(v100 + v12[5]) = v88;
    v102 = *(v99 + 16);
    v102(v34, v218, v101);
    v102(v28, v217, v101);
    v191 = v99 + 56;
    v190(v28, 0, 1, v101);
    v103 = [v196 manufacturer];
    v184 = v99 + 16;
    v183 = v102;
    if (v103)
    {
      v104 = v103;
      v105 = sub_22A4DD5EC();
      v107 = v106;

      if (v105 == 0x656C707041 && v107 == 0xE500000000000000)
      {

        v181 = 1;
      }

      else
      {
        v181 = sub_22A4DE60C();
      }
    }

    else
    {
      v181 = 0;
    }

    v37 = v202;
    v108 = *(v202 + 20);
    v109 = v211;
    v110 = v219;
    v190((v211 + v108), 1, 1, v219);
    v111 = (v109 + *(v37 + 36));
    *v111 = 0;
    v111[1] = 0;
    v182(v109, v34, v110);
    v112 = v28;
    v113 = v203;
    sub_22957F2F8(v112, v203, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v109 + v108, &qword_27D87CBF0, &qword_22A577898);
    sub_22957F2F8(v113, v109 + v108, &unk_27D87D2A0, &unk_22A578BD0);
    *(v109 + *(v37 + 24)) = v181 & 1;
    *(v109 + *(v37 + 28)) = 0;
    *(v109 + *(v37 + 32)) = 0;
    v114 = v213 + 56;
    v115 = *(v213 + 56);
    *v111 = 0;
    v111[1] = 0;
    v182 = v115;
    v213 = v114;
    (v115)(v109, 0, 1, v37);
    v116 = v192;
    v117 = v189;
    v118 = [v189 uuid];
    v119 = v204;
    sub_22A4DB79C();

    v120 = [v117 room];
    v192 = v116;

    v121 = [v120 uuid];
    v122 = v205;
    sub_22A4DB79C();

    v123 = v190;
    v190(v122, 0, 1, v110);
    LOBYTE(v120) = [v194 isCurrentDevicePrimaryResident];
    v124 = *(v37 + 20);
    v56 = v200;
    v123(v200 + v124, 1, 1, v110);
    v125 = (v56 + *(v37 + 36));
    *v125 = 0;
    v125[1] = 0;
    v183(v56, v119, v110);
    v126 = v203;
    sub_229564F88(v122, v203, &unk_27D87D2A0, &unk_22A578BD0);
    sub_22953EAE4(v56 + v124, &qword_27D87CBF0, &qword_22A577898);
    sub_22957F2F8(v126, v56 + v124, &unk_27D87D2A0, &unk_22A578BD0);
    *(v56 + *(v37 + 24)) = 1;
    *(v56 + *(v37 + 28)) = 0;
    *(v56 + *(v37 + 32)) = v120;
    result = MobileGestalt_get_current_device();
    if (!result)
    {
      __break(1u);
      return result;
    }

    v128 = result;
    v129 = MobileGestalt_copy_deviceColor_obj();

    v88 = v198;
    v78 = v195;
    if (v129)
    {
      v130 = sub_22A4DD5EC();
      v132 = v131;
    }

    else
    {
      v130 = 0;
      v132 = 0;
    }

    v133 = v219;
    sub_22953EAE4(v205, &unk_27D87D2A0, &unk_22A578BD0);
    v28 = *(v221 + 8);
    v221 += 8;
    (v28)(v204, v133);
    *v125 = v130;
    v125[1] = v132;
    sub_229606DF4(v56, v210, _s21EventMetadataInternalV6DeviceVMa);
    v205 = v28;
    if (v186)
    {
      v134 = v186;
      v135 = [v186 uuid];
      v34 = v201;
      sub_22A4DB79C();
      v12 = v134;

      v136 = [v12 privilege];
      if (HIDWORD(v136))
      {
        goto LABEL_127;
      }

      v137 = _s21EventMetadataInternalV4UserVMa(0);
      *&v34[*(v137 + 20)] = v136;
      (*(*(v137 - 8) + 56))(v34, 0, 1, v137);
    }

    else
    {

      v137 = _s21EventMetadataInternalV4UserVMa(0);
      v34 = v201;
      (*(*(v137 - 8) + 56))(v201, 1, 1, v137);
    }

    v138 = v182;
    v12 = 0x800000022A58D1C0;
    v28 = v207;
    *v207 = 1;
    v56 = v208;
    sub_22A4DB7CC();
    v37 = v56[9];
    v138(&v28[v37], 1, 1, v202);
    v139 = v56[11];
    _s21EventMetadataInternalV4UserVMa(0);
    (*(*(v137 - 8) + 56))(&v28[v139], 1, 1, v137);
    *(v28 + 1) = 0xD000000000000012;
    *(v28 + 2) = 0x800000022A58D1C0;
    (v185)(&v28[v56[7]], v212, v214);
    sub_229606D8C(v209, &v28[v56[8]], _s21EventMetadataInternalV4HomeVMa);
    sub_229564B7C(v211, &v28[v37], &qword_27D87CBE8, &qword_22A577890);
    sub_229606D8C(v210, &v28[v56[10]], _s21EventMetadataInternalV6DeviceVMa);
    sub_229564B7C(v34, &v28[v139], &qword_27D87CBE0, &unk_22A577880);
    v140 = [objc_allocWithZone(MEMORY[0x277CCAC38]) init];
    [v140 systemUptime];
    v142 = v141;

    v143 = v142 * 1000.0;
    if (COERCE__INT64(fabs(v142 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_118;
    }

    v144 = v216;
    v12 = v219;
    v28 = v194;
    v37 = v196;
    if (v143 <= -1.0)
    {
      goto LABEL_119;
    }

    if (v143 >= 1.84467441e19)
    {
      goto LABEL_120;
    }

    *&v207[*(v208 + 48)] = v143;
    v145 = [objc_allocWithZone(MEMORY[0x277D0F7F0]) init];
    [v145 timeIntervalSince1970];
    v147 = v146;

    v148 = sub_22A4DB21C();
    (*(*(v148 - 8) + 8))(v78, v148);
    sub_22953EAE4(v34, &qword_27D87CBE0, &unk_22A577880);
    sub_229606EA4(v210, _s21EventMetadataInternalV6DeviceVMa);
    sub_229606EA4(v209, _s21EventMetadataInternalV4HomeVMa);
    v78 = (v206 + 8);
    v149 = *(v206 + 8);
    v150 = v214;
    v149(v212, v214);
    v149(v215, v150);
    v151 = v205;
    (v205)(v217, v12);
    v151(v218, v12);
    v76 = sub_22953EAE4(v211, &qword_27D87CBE8, &qword_22A577890);
    v152 = v147 * 1000.0;
    if (COERCE__INT64(fabs(v147 * 1000.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_121;
    }

    v153 = v197;
    v154 = v199;
    if (v152 <= -1.0)
    {
      goto LABEL_122;
    }
  }

  while (v152 >= 1.84467441e19);
  v155 = v207;
  *&v207[*(v208 + 52)] = v152;
  v76 = sub_229606DF4(v155, v154, _s21EventMetadataInternalVMa);
  *(v154 + v153[5]) = v193;
  *(v154 + v153[6]) = v187;
  if (HIDWORD(v180))
  {
    goto LABEL_124;
  }

  *(v154 + v153[7]) = v180;
  sub_22953EAE4(v144, &unk_27D87D2A0, &unk_22A578BD0);
  v156 = v154;
  v157 = v222;
  sub_229606DF4(v156, v222, _s12HAPAccessoryO5EventVMa);
  return (*(v42 + 56))(v157, 0, 1, v153);
}

void sub_229604DBC()
{
  v47 = *v0;
  v46 = sub_22A4DD07C();
  v1 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v3 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v5 = Strong;
  v6 = [Strong hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v7 = sub_22A4DD83C();

  if (v7 >> 62)
  {
    v9 = sub_22A4DE0EC();
    if (v9)
    {
LABEL_4:
      if (v9 < 1)
      {
        __break(1u);
      }

      else
      {
        v37 = v5;
        v10 = 0;
        v48 = 0;
        v11 = v7 & 0xC000000000000001;
        v41 = (v1 + 8);
        v42 = "$defaultActor";
        *&v8 = 138412546;
        v38 = v8;
        v12 = off_2786660B8;
        v44 = v9;
        v45 = v7;
        v43 = v7 & 0xC000000000000001;
        do
        {
          if (v11)
          {
            v16 = MEMORY[0x22AAD13F0](v10, v7);
          }

          else
          {
            v16 = *(v7 + 8 * v10 + 32);
          }

          v15 = v16;
          if (sub_22960674C(v16))
          {
            v17 = [v15 services];
            sub_229562F68(0, &unk_27D87D360, off_278666310);
            v18 = sub_22A4DD83C();

            v19 = v47;
            v20 = v48;
            v21 = sub_2295FFD80(v18, v47);
            v48 = v20;

            sub_229541CB0(v19, &off_283CDE2F8);
            v22 = v15;

            v23 = sub_22A4DD05C();
            v24 = v3;
            v25 = sub_22A4DDCCC();

            if (os_log_type_enabled(v23, v25))
            {
              v26 = swift_slowAlloc();
              v27 = swift_slowAlloc();
              v39 = v27;
              v40 = swift_slowAlloc();
              v49 = v40;
              *v26 = v38;
              *(v26 + 4) = v22;
              *v27 = v22;
              *(v26 + 12) = 2080;
              v13 = v12;
              v28 = sub_229562F68(0, &unk_27D87E490, v12);
              v29 = v22;
              v30 = MEMORY[0x22AAD0A20](v21, v28);
              v32 = sub_2295A3E30(v30, v31, &v49);

              *(v26 + 14) = v32;
              v33 = v46;
              _os_log_impl(&dword_229538000, v23, v25, "Enabling notifications for HAP Accessory: %@ for characteristics: %s", v26, 0x16u);
              v34 = v39;
              sub_22953EAE4(v39, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v34, -1, -1);
              v35 = v40;
              __swift_destroy_boxed_opaque_existential_0(v40);
              MEMORY[0x22AAD4E50](v35, -1, -1);
              MEMORY[0x22AAD4E50](v26, -1, -1);

              (*v41)(v24, v33);
              v3 = v24;
            }

            else
            {

              (*v41)(v24, v46);
              v3 = v24;
              v13 = v12;
            }

            sub_229562F68(0, &unk_27D87E490, v13);
            v14 = sub_22A4DD81C();

            v15 = sub_22A4DD5AC();
            [v22 setNotificationsEnabled:1 forCharacteristics:v14 clientIdentifier:v15];

            v9 = v44;
            v7 = v45;
            v11 = v43;
            v12 = v13;
          }

          ++v10;
        }

        while (v9 != v10);
      }

      return;
    }
  }

  else
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_4;
    }
  }
}

uint64_t sub_2296052A8()
{
  v1 = *v0;
  v43 = sub_22A4DD07C();
  v2 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    return result;
  }

  v6 = result;
  v7 = [result hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v8 = sub_22A4DD83C();

  v10 = v8;
  if (v8 >> 62)
  {
    result = sub_22A4DE0EC();
    v10 = v8;
    if (result)
    {
LABEL_4:
      if (result < 1)
      {
        __break(1u);
      }

      else
      {
        v33 = v6;
        v11 = 0;
        v44 = 0;
        v38 = v10 & 0xC000000000000001;
        v39 = "$defaultActor";
        v42 = (v2 + 8);
        *&v9 = 138412546;
        v35 = v9;
        v40 = result;
        v41 = v10;
        v36 = v1;
        v34 = v4;
        do
        {
          if (v38)
          {
            v14 = MEMORY[0x22AAD13F0](v11);
          }

          else
          {
            v14 = *(v10 + 8 * v11 + 32);
          }

          v15 = v14;
          v16 = [v14 services];
          sub_229562F68(0, &unk_27D87D360, off_278666310);
          v17 = sub_22A4DD83C();

          v18 = v44;
          v19 = sub_2295FFD80(v17, v1);
          v44 = v18;

          sub_229541CB0(v1, &off_283CDE2F8);
          v20 = v15;

          v21 = sub_22A4DD05C();
          v22 = v4;
          v23 = sub_22A4DDCCC();

          if (os_log_type_enabled(v21, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v37 = swift_slowAlloc();
            v45 = v37;
            *v24 = v35;
            *(v24 + 4) = v20;
            *v25 = v20;
            *(v24 + 12) = 2080;
            v26 = sub_229562F68(0, &unk_27D87E490, off_2786660B8);
            v27 = v20;
            v28 = MEMORY[0x22AAD0A20](v19, v26);
            v30 = sub_2295A3E30(v28, v29, &v45);
            v1 = v36;

            *(v24 + 14) = v30;
            v31 = v43;
            _os_log_impl(&dword_229538000, v21, v23, "Disabling notifications for HAP Accessory: %@ for characteristics: %s", v24, 0x16u);
            sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
            MEMORY[0x22AAD4E50](v25, -1, -1);
            v32 = v37;
            __swift_destroy_boxed_opaque_existential_0(v37);
            MEMORY[0x22AAD4E50](v32, -1, -1);
            MEMORY[0x22AAD4E50](v24, -1, -1);

            v4 = v34;
            (*v42)(v34, v31);
          }

          else
          {

            (*v42)(v22, v43);
            v4 = v22;
          }

          ++v11;
          sub_229562F68(0, &unk_27D87E490, off_2786660B8);
          v12 = sub_22A4DD81C();

          v13 = sub_22A4DD5AC();
          [v20 setNotificationsEnabled:0 forCharacteristics:v12 clientIdentifier:v13];

          v10 = v41;
        }

        while (v40 != v11);
      }

      return result;
    }
  }

  else
  {
    result = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }
  }
}

void sub_229605790(void *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_22A4DD07C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = v2 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger12HAPAccessory8Observer_controlBlock;
  swift_beginAccess();
  if (v9[*(_s20ControlBlockInternalVMa(0) + 20)] == 1 && (sub_22960674C(a1) & 1) != 0)
  {
    v10 = [a1 services];
    sub_229562F68(0, &unk_27D87D360, off_278666310);
    v11 = sub_22A4DD83C();

    v12 = sub_2295FFD80(v11, v4);

    sub_229541CB0(v4, &off_283CDE2F8);
    v13 = a1;

    v14 = sub_22A4DD05C();
    v15 = sub_22A4DDCCC();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v28 = v17;
      v29 = swift_slowAlloc();
      v30 = v29;
      *v16 = 138412546;
      *(v16 + 4) = v13;
      *v17 = v13;
      *(v16 + 12) = 2080;
      v18 = sub_229562F68(0, &unk_27D87E490, off_2786660B8);
      v19 = v13;
      v20 = MEMORY[0x22AAD0A20](v12, v18);
      v22 = sub_2295A3E30(v20, v21, &v30);

      *(v16 + 14) = v22;
      _os_log_impl(&dword_229538000, v14, v15, "Enabling notifications for newly added HAP Accessory: %@ for characteristics: %s", v16, 0x16u);
      v23 = v28;
      sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v23, -1, -1);
      v24 = v29;
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      MEMORY[0x22AAD4E50](v16, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    sub_229562F68(0, &unk_27D87E490, off_2786660B8);
    v25 = sub_22A4DD81C();

    v26 = sub_22A4DD5AC();
    [v13 setNotificationsEnabled:1 forCharacteristics:v25 clientIdentifier:v26];
  }
}

uint64_t sub_229605B1C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v34 = a1;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0E8, &qword_22A57A370);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v33 = &v29 - v8;
  v32 = _s12HAPAccessoryO5EventVMa(0);
  MEMORY[0x28223BE20](v32);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22A4DD07C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger12HAPAccessory8Observer_controlBlock;
  swift_beginAccess();
  result = _s20ControlBlockInternalVMa(0);
  if (v15[*(result + 20)] == 1)
  {
    v31 = v7;
    sub_229541CB0(v5, &off_283CDE2F8);
    v30 = a2;
    sub_229606D8C(a2, v10, _s12HAPAccessoryO5EventVMa);

    v17 = sub_22A4DD05C();
    v18 = sub_22A4DDCDC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = v6;
      v20 = v19;
      v21 = swift_slowAlloc();
      v36[0] = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_2295A3E30(*(v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger12HAPAccessory8Observer_description), *(v3 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger12HAPAccessory8Observer_description + 8), v36);
      *(v20 + 12) = 2080;
      v22 = sub_229890C38();
      v24 = v23;
      sub_229606EA4(v10, _s12HAPAccessoryO5EventVMa);
      v25 = sub_2295A3E30(v22, v24, v36);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_229538000, v17, v18, "%s received event: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v21, -1, -1);
      v26 = v20;
      v6 = v29;
      MEMORY[0x22AAD4E50](v26, -1, -1);
    }

    else
    {

      sub_229606EA4(v10, _s12HAPAccessoryO5EventVMa);
    }

    (*(v12 + 8))(v14, v11);
    v36[3] = v32;
    v36[4] = sub_229606E5C(&qword_27D87DDD0, _s12HAPAccessoryO5EventVMa, &unk_22A58226C);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v36);
    sub_229606D8C(v30, boxed_opaque_existential_1, _s12HAPAccessoryO5EventVMa);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380);
    sub_22957F1C4(v36, v35);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D0D8, &qword_22A577F68);
    v28 = v33;
    sub_22A4DDA0C();
    (*(v31 + 8))(v28, v6);
    return __swift_destroy_boxed_opaque_existential_0(v36);
  }

  return result;
}

uint64_t sub_229605FA8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;

  v13 = 0;
  v25 = v4;
  while (v9)
  {
    v14 = v9;
LABEL_19:
    v9 = (v14 - 1) & v14;
    if (*(v6 + 16))
    {
      v16 = (*(v4 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v14)))));
      v18 = *v16;
      v17 = v16[1];
      sub_22A4DE77C();

      sub_22A4DD6BC();
      v19 = sub_22A4DE7BC();
      v20 = -1 << *(v6 + 32);
      v21 = v19 & ~v20;
      if ((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
      {
        v22 = ~v20;
        while (1)
        {
          v23 = (*(v6 + 48) + 16 * v21);
          v24 = *v23 == v18 && v23[1] == v17;
          if (v24 || (sub_22A4DE60C() & 1) != 0)
          {
            break;
          }

          v21 = (v21 + 1) & v22;
          if (((*(v11 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        return 0;
      }

LABEL_28:

      v4 = v25;
    }
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v10)
    {

      return 1;
    }

    v14 = *(v5 + 8 * v15);
    ++v13;
    if (v14)
    {
      v13 = v15;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_229606190@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  if (qword_27D87B900 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v3 = off_27D87DD80;
    v4 = [v2 type];
    v5 = sub_22A4DD5EC();
    v7 = v6;

    if (!v3[2])
    {

      v12 = MEMORY[0x277D84F90];
      goto LABEL_28;
    }

    v8 = sub_229543DBC(v5, v7);
    v10 = v9;

    v12 = MEMORY[0x277D84F90];
    if ((v10 & 1) == 0)
    {
      goto LABEL_28;
    }

    v13 = *(v3[7] + 8 * v8);

    v2 = [v2 characteristics];
    sub_229562F68(0, &unk_27D87E490, off_2786660B8);
    v14 = sub_22A4DD83C();

    v35 = v12;
    if (v14 >> 62)
    {
      break;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_27;
    }

LABEL_6:
    v30 = v14;
    v16 = 0;
    v33 = v14 & 0xFFFFFFFFFFFFFF8;
    v34 = v14 & 0xC000000000000001;
    v32 = v14 + 32;
    v17 = v13 + 56;
    while (1)
    {
      if (v34)
      {
        v18 = MEMORY[0x22AAD13F0](v16, v30);
      }

      else
      {
        if (v16 >= *(v33 + 16))
        {
          goto LABEL_30;
        }

        v18 = *(v32 + 8 * v16);
      }

      v19 = v18;
      if (__OFADD__(v16++, 1))
      {
        break;
      }

      v21 = [v18 type];
      v2 = sub_22A4DD5EC();
      v23 = v22;

      if (*(v13 + 16) && (sub_22A4DE77C(), sub_22A4DD6BC(), v24 = sub_22A4DE7BC(), v25 = -1 << *(v13 + 32), v26 = v24 & ~v25, ((*(v17 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0))
      {
        v27 = ~v25;
        while (1)
        {
          v28 = (*(v13 + 48) + 16 * v26);
          v29 = *v28 == v2 && v28[1] == v23;
          if (v29 || (sub_22A4DE60C() & 1) != 0)
          {
            break;
          }

          v26 = (v26 + 1) & v27;
          if (((*(v17 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

        sub_22A4DE27C();
        v2 = *(v35 + 16);
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
LABEL_7:
      }

      if (v16 == v15)
      {
        v12 = v35;
        goto LABEL_27;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v15 = sub_22A4DE0EC();
  if (v15)
  {
    goto LABEL_6;
  }

LABEL_27:

LABEL_28:
  *a2 = v12;
  return result;
}

uint64_t sub_2296064BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger12HAPAccessory8Observer_controlBlock;
  swift_beginAccess();
  return sub_229606D8C(v1 + v3, a1, _s20ControlBlockInternalVMa);
}

uint64_t sub_229606590()
{
  v1 = *(*v0 + OBJC_IVAR____TtCOCC13HomeKitDaemon16HomeIntelligence14ActivityLogger12HAPAccessory8Observer_description);

  return v1;
}

uint64_t sub_2296065EC(uint64_t a1)
{
  *(a1 + 16) = sub_229606E5C(&qword_27D87DDB0, _s8ObserverCMa_1, &unk_22A57A6C8);
  result = sub_229606E5C(&qword_27D87DDB8, _s8ObserverCMa_1, &unk_22A57A744);
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_229606670(uint64_t a1)
{
  result = sub_229606E5C(&qword_27D87DDB8, _s8ObserverCMa_1, &unk_22A57A744);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2296066C8(uint64_t a1)
{
  *(a1 + 8) = sub_229606E5C(&qword_27D87DDC0, _s8ObserverCMa_1, &unk_22A57A6F0);
  result = sub_229606E5C(&qword_27D87DDC8, _s8ObserverCMa_1, &unk_22A57A70C);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_22960674C(void *a1)
{
  v1 = [a1 services];
  sub_229562F68(0, &unk_27D87D360, off_278666310);
  v2 = sub_22A4DD83C();

  if (v2 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    v38 = v2;
    v39 = v2 & 0xC000000000000001;
    v7 = v2 + 32;
    v8 = &OBJC_IVAR___HMCRedirectorChange__context;
    v40 = i;
    v41 = v2 + 32;
    v42 = v2 & 0xFFFFFFFFFFFFFF8;
    while (v5)
    {
      v9 = MEMORY[0x22AAD13F0](v4, v38);
      v10 = __OFADD__(v4++, 1);
      if (v10)
      {
        goto LABEL_33;
      }

LABEL_10:
      if (*(v8 + 288) != -1)
      {
        v34 = v9;
        swift_once();
        v9 = v34;
      }

      v2 = off_27D87DD80;
      v44 = v9;
      v11 = [v9 type];
      v12 = sub_22A4DD5EC();
      v14 = v13;

      if (*(v2 + 16))
      {
        v15 = sub_229543DBC(v12, v14);
        v17 = v16;

        if (v17)
        {
          v18 = *(*(v2 + 56) + 8 * v15);

          v19 = v44;
          v20 = [v44 characteristics];
          sub_229562F68(0, &unk_27D87E490, off_2786660B8);
          v21 = sub_22A4DD83C();

          if (v21 >> 62)
          {
            v22 = sub_22A4DE0EC();
            if (!v22)
            {
              goto LABEL_29;
            }

LABEL_16:
            v45 = MEMORY[0x277D84F90];
            v2 = &v45;
            sub_229583334(0, v22 & ~(v22 >> 63), 0);
            if (v22 < 0)
            {
              goto LABEL_35;
            }

            v43 = v18;
            v23 = 0;
            v24 = v45;
            do
            {
              if ((v21 & 0xC000000000000001) != 0)
              {
                v25 = MEMORY[0x22AAD13F0](v23, v21);
              }

              else
              {
                v25 = *(v21 + 8 * v23 + 32);
              }

              v26 = v25;
              v27 = [v25 type];
              v28 = sub_22A4DD5EC();
              v30 = v29;

              v45 = v24;
              v32 = *(v24 + 16);
              v31 = *(v24 + 24);
              if (v32 >= v31 >> 1)
              {
                sub_229583334((v31 > 1), v32 + 1, 1);
                v24 = v45;
              }

              ++v23;
              *(v24 + 16) = v32 + 1;
              v33 = v24 + 16 * v32;
              *(v33 + 32) = v28;
              *(v33 + 40) = v30;
            }

            while (v22 != v23);

            v5 = v39;
            i = v40;
            v18 = v43;
            v19 = v44;
          }

          else
          {
            v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v22)
            {
              goto LABEL_16;
            }

LABEL_29:

            v24 = MEMORY[0x277D84F90];
          }

          v35 = sub_229672204(v24);

          v2 = sub_229605FA8(v35, v18);

          v7 = v41;
          v6 = v42;
          v8 = &OBJC_IVAR___HMCRedirectorChange__context;
          if ((v2 & 1) == 0)
          {
            v36 = 1;
            goto LABEL_38;
          }

          goto LABEL_6;
        }
      }

      else
      {
      }

LABEL_6:
      if (v4 == i)
      {
        v36 = 0;
        goto LABEL_38;
      }
    }

    if (v4 >= *(v6 + 16))
    {
      goto LABEL_34;
    }

    v9 = *(v7 + 8 * v4);
    v10 = __OFADD__(v4++, 1);
    if (!v10)
    {
      goto LABEL_10;
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v36 = 0;
LABEL_38:

  return v36;
}

unint64_t sub_229606AFC()
{
  result = qword_27D87D518;
  if (!qword_27D87D518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D880960, &qword_22A578820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D87D518);
  }

  return result;
}

uint64_t sub_229606BB4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_229586D38;

  return sub_2296019E4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_229606C7C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881FF0, &qword_22A57A380) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_229569B30;

  return sub_229602530(a1, v6, v7, v8, v9, v1 + v5);
}

uint64_t sub_229606D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_229606DF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_229606E5C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229606EA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_229606FE8()
{
  v1 = v0;
  v2 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v3 = MEMORY[0x277D84F98];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v2, 0x726F737365636361, 0xEE00746E756F4379, isUniquelyReferenced_nonNull_native);
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v5, 0xD00000000000001FLL, 0x800000022A58D240, v6);
  v7 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v8 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v7, 0xD000000000000019, 0x800000022A58D260, v8);
  v9 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v9, 0xD00000000000001DLL, 0x800000022A58D280, v10);
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v12 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v11, 0xD000000000000018, 0x800000022A58D2A0, v12);
  v13 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v13, 0xD000000000000019, 0x800000022A58D2C0, v14);
  v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v16 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v15, 0xD000000000000019, 0x800000022A58D2E0, v16);
  v17 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_2295AAFCC(v17, 0xD00000000000001CLL, 0x800000022A58D300, v18);
  return v3;
}

uint64_t sub_22960738C()
{
  swift_getObjectType();
  v1 = sub_22A4DB7DC();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 91;
  v12[1] = 0xE100000000000000;
  v5 = sub_22A4DE8EC();
  MEMORY[0x22AAD08C0](v5);

  MEMORY[0x22AAD08C0](47, 0xE100000000000000);
  v6 = [v0 homeUUID];
  sub_22A4DB79C();

  sub_229586A3C();
  v7 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v7);

  (*(v2 + 8))(v4, v1);
  MEMORY[0x22AAD08C0](8285, 0xE200000000000000);
  sub_229606FE8();
  sub_22956540C();
  v8 = sub_22A4DD4AC();
  v10 = v9;

  MEMORY[0x22AAD08C0](v8, v10);

  return v12[0];
}

id sub_229607658(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AdaptiveTemperatureAutomationsConfigurationLogEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_2296077C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_2296077E4, a4, 0);
}

uint64_t sub_2296077E4()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [v1 flow];
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  sub_22A4DD5EC();
  sub_22A4DBCEC();
  sub_22A4DBD1C();

  v5 = v0[1];

  return v5();
}

void sub_229607920(void *a1, uint64_t a2)
{
  v4 = [a1 transport];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_5:
    sub_22A4DE1FC();

    sub_229562F68(0, &unk_281401910, off_278666388);
    v12 = sub_22A4DE8EC();
    MEMORY[0x22AAD08C0](v12);

    MEMORY[0x22AAD08C0](8236, 0xE200000000000000);
    [a1 transport];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DE78, &qword_22A57A8A8);
    v13 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v13);

    sub_22A4DBD0C();

    v14 = [objc_opt_self() hmErrorWithCode_];
    v5 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_6;
  }

  v7 = v6;
  sub_22A4DE1FC();

  v8 = [v7 description];
  v9 = sub_22A4DD5EC();
  v11 = v10;

  MEMORY[0x22AAD08C0](v9, v11);

  sub_22A4DBD0C();

  [*(a2 + 112) addObject_];
  [a1 respondWithSuccess];
LABEL_6:
}

uint64_t sub_229607B88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_229607BA8, a4, 0);
}

uint64_t sub_229607BA8()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = [v1 flow];
  v4 = swift_task_alloc();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  sub_22A4DD5EC();
  sub_22A4DBCEC();
  sub_22A4DBD1C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_229607CE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_22A4DD9DC();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  v12[5] = a3;
  v13 = a3;

  sub_22957F3C0(0, 0, v10, a5, v12);
}

void sub_229607DF4(void *a1, uint64_t a2)
{
  v4 = [a1 transport];
  if (!v4)
  {
    goto LABEL_5;
  }

  v5 = v4;
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (!v6)
  {

LABEL_5:
    sub_22A4DE1FC();

    sub_229562F68(0, &unk_281401910, off_278666388);
    v12 = sub_22A4DE8EC();
    MEMORY[0x22AAD08C0](v12);

    MEMORY[0x22AAD08C0](8236, 0xE200000000000000);
    [a1 transport];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DE78, &qword_22A57A8A8);
    v13 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v13);

    sub_22A4DBD0C();

    v14 = [objc_opt_self() hmErrorWithCode_];
    v5 = sub_22A4DB3DC();

    [a1 respondWithError_];
    goto LABEL_6;
  }

  v7 = v6;
  sub_22A4DE1FC();

  v8 = [v7 description];
  v9 = sub_22A4DD5EC();
  v11 = v10;

  MEMORY[0x22AAD08C0](v9, v11);

  sub_22A4DBD0C();

  [*(a2 + 112) removeObject_];
  [a1 respondWithSuccess];
LABEL_6:
}

uint64_t sub_22960805C(uint64_t a1)
{
  sub_22A4DE1FC();

  sub_22A4DB21C();
  sub_229609030(&unk_2814038C0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
  v1 = sub_22A4DE5CC();
  MEMORY[0x22AAD08C0](v1);

  sub_22A4DBC9C();
}

uint64_t sub_229608180(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_22A4DB20C();
  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6;
  v18[1] = sub_22A4DD5EC();
  v18[2] = v8;
  sub_22A4DE18C();
  if (!*(v7 + 16) || (v9 = sub_2295402E8(&v19), (v10 & 1) == 0))
  {

    sub_22954045C(&v19);
LABEL_8:
    v21 = 0u;
    v22 = 0u;
    goto LABEL_9;
  }

  sub_2295404B0(*(v7 + 56) + 32 * v9, &v21);
  sub_22954045C(&v19);

  if (!*(&v22 + 1))
  {
LABEL_9:
    sub_229609094(&v21);
    goto LABEL_10;
  }

  sub_229562F68(0, &qword_27D87DE70, off_2786661F0);
  if (swift_dynamicCast())
  {
    v11 = v19;
    v12 = sub_22A4DD9DC();
    (*(*(v12 - 8) + 56))(v5, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = a2;
    v13[5] = v11;

    sub_22957F3C0(0, 0, v5, &unk_22A57A890, v13);
  }

LABEL_10:
  v19 = 0;
  v20 = 0xE000000000000000;
  sub_22A4DE1FC();

  v19 = 0xD000000000000028;
  v20 = 0x800000022A58D4D0;
  *&v21 = sub_22A4DB20C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DA20, &unk_22A579B70);
  v15 = sub_22A4DDF7C();
  v17 = v16;

  MEMORY[0x22AAD08C0](v15, v17);

  sub_22A4DBD3C();
}

uint64_t sub_229608424(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](sub_229608444, a4, 0);
}

uint64_t sub_229608444()
{
  sub_229608590(*(v0 + 24));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229608590(void *a1)
{
  v3 = sub_22A4DB7DC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22A4DD0AC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v31 - v12;
  if ([a1 isUpdate])
  {
    v14 = [a1 userPresence];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 isAtHome];
      v35 = v1;
      if (v16)
      {
        (*(v8 + 104))(v11, *MEMORY[0x277CCE5E8], v7);
      }

      else
      {
        if ([v15 isNotAtHome])
        {
          v18 = MEMORY[0x277CCE5F0];
        }

        else
        {
          v18 = MEMORY[0x277CCE5F8];
        }

        (*(v8 + 104))(v11, *v18, v7);
      }

      (*(v8 + 32))(v13, v11, v7);
      sub_22A4DB35C();
      swift_allocObject();
      sub_22A4DB34C();
      sub_229609030(&qword_27D87DE48, MEMORY[0x277CCE600], MEMORY[0x277CCE608]);
      v19 = sub_22A4DB33C();
      v32 = v20;
      v33 = v19;

      v21 = [v15 user];
      v34 = v3;
      v22 = v21;
      v23 = v4;
      v24 = [v21 uuid];

      sub_22A4DB79C();
      v25 = v35;
      v26 = [*(v35 + 112) allObjects];
      sub_229562F68(0, &unk_281401910, off_278666388);
      v27 = sub_22A4DD83C();

      v31 = &v31;
      MEMORY[0x28223BE20](v28);
      *(&v31 - 4) = v25;
      *(&v31 - 3) = v6;
      v30 = v32;
      v29 = v33;
      *(&v31 - 2) = v33;
      *(&v31 - 1) = v30;
      sub_229839A44(sub_229608FEC, (&v31 - 6), v27);
      sub_2295798D4(v29, v30);
      swift_unknownObjectRelease();

      (*(v8 + 8))(v13, v7);
      return (*(v23 + 8))(v6, v34);
    }

    else
    {

      return sub_22A4DBD3C();
    }
  }

  else
  {

    return sub_22A4DBD0C();
  }
}

uint64_t sub_229608A34(void **a1, uint64_t a2)
{
  v2 = *a1;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_22A4DE1FC();

  v3 = [v2 description];
  v4 = sub_22A4DD5EC();
  v6 = v5;

  MEMORY[0x22AAD08C0](v4, v6);

  MEMORY[0x28223BE20](0xD00000000000001ELL);
  sub_22A4DBCBC();
}

void sub_229608BA8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  sub_22956C148(a3, a4);
  v8 = sub_22A4DD0DC();
  v9 = objc_allocWithZone(MEMORY[0x277D0F820]);
  v10 = sub_22A4DB77C();
  v11 = [v9 initWithTarget_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A5761B0;
  *(inited + 32) = sub_22A4DD0EC();
  *(inited + 40) = v13;
  v14 = sub_22A4DB7DC();
  *(inited + 72) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  (*(*(v14 - 8) + 16))(boxed_opaque_existential_1, a2, v14);
  *(inited + 80) = sub_22A4DD0FC();
  *(inited + 88) = v16;
  v17 = MEMORY[0x277CC9318];
  *(inited + 120) = MEMORY[0x277CC9318];
  *(inited + 96) = a3;
  *(inited + 104) = a4;
  *(inited + 128) = sub_22A4DD5EC();
  *(inited + 136) = v18;
  v19 = sub_22A4DBCFC();
  v20 = HMFEncodedRootObject();

  v21 = sub_22A4DB62C();
  v23 = v22;

  *(inited + 168) = v17;
  *(inited + 144) = v21;
  *(inited + 152) = v23;
  sub_22956AC5C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE50, &qword_22A577CD0);
  swift_arrayDestroy();
  v24 = objc_allocWithZone(MEMORY[0x277D0F848]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v25 = sub_22A4DD47C();

  v26 = [v24 initWithName:v8 destination:v11 payload:v25];

  [v26 setTransport_];
  [*(a1 + OBJC_IVAR____TtC13HomeKitDaemon37UserPresenceUpdateSubscriptionManager_messageDispatcher) sendMessage_];
}

uint64_t sub_229608E60()
{
  v1 = OBJC_IVAR____TtC13HomeKitDaemon37UserPresenceUpdateSubscriptionManager_uuid;
  v2 = sub_22A4DB7DC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for UserPresenceUpdateSubscriptionManager(uint64_t a1)
{
  result = qword_281401F98;
  if (!qword_281401F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_229608F44(uint64_t a1)
{
  result = sub_22A4DB7DC();
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

uint64_t sub_229609030(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_229609094(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE60, &unk_22A57A960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2296090FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229569B30;

  return sub_229608424(a1, v4, v5, v7, v6);
}

uint64_t sub_2296091BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_229607B88(a1, v4, v5, v7, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2296092E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_229586D38;

  return sub_2296077C4(a1, v4, v5, v7, v6);
}

unint64_t sub_229609760()
{
  v1 = v0;
  v2 = sub_22A4DB7DC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87DE98, &qword_22A57A8C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  v7 = [v1 actionSetUUID];
  sub_22A4DB79C();

  v8 = sub_22A4DB76C();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  *(inited + 32) = v8;
  *(inited + 40) = v10;
  v11 = [v1 state];
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v12 = sub_22956B2EC(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87DEA0, &qword_22A57A8C8);
  return v12;
}

void __swiftcall HMDActionSetResponse.init()(HMDActionSetResponse *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

uint64_t sub_229609A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87DE60, &unk_22A57A960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_229609AD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D2A0, &unk_22A578BD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v25 - v3;
  v5 = sub_22A4DB7DC();
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x277D84F90];
  v31 = a1;
  v32 = MEMORY[0x277D84F90];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v30 = (v6 + 48);
  v27 = (v6 + 8);
  v28 = (v6 + 32);

  v15 = 0;
  while (1)
  {
    v16 = v15;
    if (!v12)
    {
      break;
    }

    v17 = v5;
LABEL_10:
    v18 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v19 = *(*(v31 + 56) + 8 * (v18 | (v15 << 6)));

    v20 = v19;
    sub_22A4DB75C();

    v5 = v17;
    if ((*v30)(v4, 1, v17) == 1)
    {

      result = sub_22953EAE4(v4, &unk_27D87D2A0, &unk_22A578BD0);
    }

    else
    {
      (*v28)(v8, v4, v17);
      v21 = [v20 BOOLValue];
      v26 = v17;
      v22 = v21;
      v23 = objc_allocWithZone(HMDActionSetResponse);
      v24 = sub_22A4DB77C();
      [v23 initWithActionSetUUID:v24 state:v22];

      MEMORY[0x22AAD09E0]();
      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22A4DD85C();
      }

      sub_22A4DD87C();

      v5 = v26;
      result = (*v27)(v8, v26);
      v29 = v32;
    }
  }

  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v13)
    {

      return v29;
    }

    v12 = *(v9 + 8 * v15);
    ++v16;
    if (v12)
    {
      v17 = v5;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void *sub_229609E08(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_37;
  }

  v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v39 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = a1 & 0xC000000000000001;
    v36 = a1;
    v38 = a1 + 32;
    v3 = MEMORY[0x277D84F98];
    v37 = v1;
LABEL_5:
    if (v40)
    {
      a1 = MEMORY[0x22AAD13F0](v2, v36);
      v4 = __OFADD__(v2, 1);
      v5 = v2 + 1;
      if (!v4)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v2 >= *(v39 + 16))
      {
        goto LABEL_36;
      }

      a1 = *(v38 + 8 * v2);
      v4 = __OFADD__(v2, 1);
      v5 = v2 + 1;
      if (!v4)
      {
LABEL_8:
        v41 = a1;
        v42 = v5;
        v6 = [a1 serialize];
        sub_229562F68(0, &qword_281401770, 0x277CCABB0);
        v7 = sub_22A4DD49C();

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v45 = v3;
        v9 = v7 + 64;
        v10 = -1 << *(v7 + 32);
        if (-v10 < 64)
        {
          v11 = ~(-1 << -v10);
        }

        else
        {
          v11 = -1;
        }

        v12 = v11 & *(v7 + 64);
        v13 = (63 - v10) >> 6;
        v43 = v7;

        v14 = 0;
        while (v12)
        {
          v44 = isUniquelyReferenced_nonNull_native;
          v17 = v14;
LABEL_21:
          v19 = __clz(__rbit64(v12)) | (v17 << 6);
          v20 = (*(v43 + 48) + 16 * v19);
          v22 = *v20;
          v21 = v20[1];
          v23 = *(*(v43 + 56) + 8 * v19);

          v24 = v23;
          v26 = sub_229543DBC(v22, v21);
          v27 = v3[2];
          v28 = (v25 & 1) == 0;
          a1 = v27 + v28;
          if (__OFADD__(v27, v28))
          {
            goto LABEL_34;
          }

          v29 = v25;
          if (v3[3] >= a1)
          {
            if ((v44 & 1) == 0)
            {
              a1 = sub_229897F24();
            }
          }

          else
          {
            sub_22989385C(a1, v44 & 1);
            a1 = sub_229543DBC(v22, v21);
            if ((v29 & 1) != (v30 & 1))
            {
              result = sub_22A4DE67C();
              __break(1u);
              return result;
            }

            v26 = a1;
          }

          v12 &= v12 - 1;
          v3 = v45;
          if (v29)
          {

            v15 = v45[7];
            v16 = *(v15 + 8 * v26);
            *(v15 + 8 * v26) = v24;
          }

          else
          {
            v45[(v26 >> 6) + 8] |= 1 << v26;
            v31 = (v45[6] + 16 * v26);
            *v31 = v22;
            v31[1] = v21;
            *(v45[7] + 8 * v26) = v24;
            v32 = v45[2];
            v4 = __OFADD__(v32, 1);
            v33 = v32 + 1;
            if (v4)
            {
              goto LABEL_35;
            }

            v45[2] = v33;
          }

          isUniquelyReferenced_nonNull_native = 1;
          v14 = v17;
        }

        v18 = v14;
        while (1)
        {
          v17 = v18 + 1;
          if (__OFADD__(v18, 1))
          {
            goto LABEL_33;
          }

          if (v17 >= v13)
          {
            sub_22953EE84(v43);

            v2 = v42;
            if (v42 == v37)
            {
              return v3;
            }

            goto LABEL_5;
          }

          v12 = *(v9 + 8 * v17);
          ++v18;
          if (v12)
          {
            v44 = isUniquelyReferenced_nonNull_native;
            goto LABEL_21;
          }
        }
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    v34 = a1;
    v1 = sub_22A4DE0EC();
    a1 = v34;
  }

  return MEMORY[0x277D84F98];
}

void sub_22960A164()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_22A4DD07C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v22 - v7;
  v9 = [objc_opt_self() policyWithEntitlements_];
  v10 = [v0 msgDispatcher];
  if (v10)
  {
    v11 = v10;
    sub_2297A46D4();
    v12 = sub_22A4DD05C();
    v13 = sub_22A4DDCCC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_229538000, v12, v13, "Registering PowerAssertion message handler(s)", v14, 2u);
      MEMORY[0x22AAD4E50](v14, -1, -1);
    }

    (*(v3 + 8))(v8, v2);
    v15 = *MEMORY[0x277CCFF80];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22A576190;
    *(v16 + 32) = v9;
    sub_22960A928();
    v17 = v9;
    v18 = sub_22A4DD81C();

    [v11 registerForMessage:v15 receiver:v1 policies:v18 selector:sel_handleGetPowerAssertionsWithMessage_];
  }

  else
  {
    sub_2297A46D4();
    v19 = sub_22A4DD05C();
    v20 = sub_22A4DDCCC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_229538000, v19, v20, "Message dispatcher is nil", v21, 2u);
      MEMORY[0x22AAD4E50](v21, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v6, v2);
  }
}

void sub_22960A4AC(void *a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_22A4DD07C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v38 - v12;
  sub_2297A46D4();
  v14 = sub_22A4DD05C();
  v15 = sub_22A4DDCCC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v39 = v2;
    v17 = v11;
    v18 = a1;
    v19 = v4;
    v20 = v16;
    *v16 = 0;
    _os_log_impl(&dword_229538000, v14, v15, "Handling get power assertions", v16, 2u);
    v21 = v20;
    v4 = v19;
    a1 = v18;
    v11 = v17;
    v2 = v39;
    MEMORY[0x22AAD4E50](v21, -1, -1);
  }

  v22 = *(v5 + 8);
  v22(v13, v4);
  v23 = [v2 homeManager];
  if (v23)
  {
    v24 = v23;
    v25 = [v23 powerManager];
    if (v25)
    {
      v26 = v25;
      v27 = [v25 isPowerAsserted];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D080, &qword_22A57CF50);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576180;
      *(inited + 32) = sub_22A4DD5EC();
      *(inited + 40) = v29;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = v27;
      sub_22956AC5C(inited);
      swift_setDeallocating();
      sub_2295ED9B4(inited + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
      v30 = sub_22A4DD47C();

      [a1 respondWithPayload_];

      return;
    }

    sub_2297A46D4();
    v35 = sub_22A4DD05C();
    v36 = sub_22A4DDCEC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_229538000, v35, v36, "powerManager is nil", v37, 2u);
      MEMORY[0x22AAD4E50](v37, -1, -1);
    }

    v34 = v11;
  }

  else
  {
    sub_2297A46D4();
    v31 = sub_22A4DD05C();
    v32 = sub_22A4DDCEC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_229538000, v31, v32, "homeManager is unexpectedly nil", v33, 2u);
      MEMORY[0x22AAD4E50](v33, -1, -1);
    }

    v34 = v8;
  }

  v22(v34, v4);
}

unint64_t sub_22960A928()
{
  result = qword_281401B40[0];
  if (!qword_281401B40[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_281401B40);
  }

  return result;
}

uint64_t sub_22960A974(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, char *a9, void *a10, uint64_t a11)
{
  sub_229617544(a1, a2, a3, a4, a5, a6, a7, a8 & 1, a9, a10, a11);
}

id sub_22960AA04()
{
  v1 = sub_22A4DD63C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = [v0 identifier];
  sub_22A4DD5EC();

  sub_22A4DD77C();
  sub_22A4DD62C();
  v6 = sub_22A4DD5FC();
  v8 = v7;

  result = (*(v2 + 8))(v4, v1);
  if (v8 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_2295A8BD8(*MEMORY[0x277D0F1D8], v6, v8, v15);
    v10 = v15[0];
    v11 = v15[1];
    v12 = objc_allocWithZone(MEMORY[0x277D0F8B0]);
    sub_22956C148(v10, v11);
    v13 = sub_22A4DB61C();
    v14 = [v12 initWithPairingKeyData_];

    result = sub_2295798D4(v10, v11);
    if (v14)
    {
      sub_2295798D4(v10, v11);
      return v14;
    }
  }

  __break(1u);
  return result;
}

char *sub_22960ABD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_browser] = 0;
  sub_22A4DB7CC();
  *&v4[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_targetToCurrentStateUpdateDelay] = 0x3FF0000000000000;
  v4[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_skipKeychainSave] = 0;
  v6 = [objc_opt_self() systemStore];
  v19.receiver = v4;
  v19.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v19, sel_initWithKeystore_, v6);

  v8 = v7;
  v9 = sub_22A4DD5AC();

  [v8 setIdentifier_];

  v10 = sub_22A4DD5AC();

  [v8 setName_];

  [v8 setReachable_];
  [v8 setSecuritySessionOpen_];
  [v8 initializeKeyBagIfNecessary];
  [v8 setHasPairings_];

  v11 = [objc_opt_self() sharedPreferences];
  v12 = sub_22A4DD5AC();
  v13 = [v11 preferenceForKey_];

  v14 = [v13 numberValue];
  if (v14)
  {
    [v14 doubleValue];
    if (v15 <= 0.0)
    {
    }

    else
    {
      [v14 doubleValue];
      v17 = v16;

      *&v8[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_targetToCurrentStateUpdateDelay] = v17;
    }
  }

  return v8;
}

void *sub_22960AE44(unint64_t a1, void *a2)
{
  v4 = v2;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (&v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_22A4DB7DC();
  v12 = MEMORY[0x28223BE20](v11);
  v63 = v3;
  v68 = v8;
  v69 = v7;
  v66 = v14;
  v67 = v12;
  v70 = v4;
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = a2;
  if (a1 >> 62)
  {
LABEL_38:
    v15 = sub_22A4DE0EC();
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_29:
    v50 = v10;
    sub_229541CB0(v70, &off_283CDE4B8);

    v51 = sub_22A4DD05C();
    v52 = sub_22A4DDCEC();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v71[0] = v54;
      *v53 = 136315138;
      v55 = sub_229562F68(0, &qword_281401B70, off_278666148);
      v56 = MEMORY[0x22AAD0A20](a1, v55);
      v58 = v57;

      v59 = sub_2295A3E30(v56, v58, v71);

      *(v53 + 4) = v59;
      _os_log_impl(&dword_229538000, v51, v52, "Invalid primary accessory found in %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v54);
      MEMORY[0x22AAD4E50](v54, -1, -1);
      MEMORY[0x22AAD4E50](v53, -1, -1);
    }

    else
    {
    }

    v68[1](v50, v69);
    type metadata accessor for HMError(0);
    v72 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v61;
    *(inited + 48) = 0xD00000000000001ALL;
    *(inited + 56) = 0x800000022A58D850;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_2296177B4(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
    return a2;
  }

  v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v15)
  {
    goto LABEL_29;
  }

LABEL_3:
  v16 = 0;
  v17 = a1 & 0xC000000000000001;
  a2 = (a1 & 0xFFFFFFFFFFFFFF8);
  while (v17)
  {
    v18 = MEMORY[0x22AAD13F0](v16, a1);
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      goto LABEL_12;
    }

LABEL_7:
    v8 = v18;
    if ([v8 isPrimary])
    {
      goto LABEL_13;
    }

    ++v16;
    if (v19 == v15)
    {
      goto LABEL_29;
    }
  }

  if (v16 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v18 = *(a1 + 8 * v16 + 32);
  v19 = v16 + 1;
  if (!__OFADD__(v16, 1))
  {
    goto LABEL_7;
  }

LABEL_12:
  __break(1u);
LABEL_13:
  if ([v8 communicationProtocol] != 3)
  {

    goto LABEL_29;
  }

  v20 = [v8 identifier];

  v21 = sub_22A4DD5EC();
  v69 = v22;

  v23 = [v8 name];
  v24 = sub_22A4DD5EC();
  v68 = v25;

  v26 = objc_allocWithZone(v70);
  v27 = sub_22960ABD4(v21, v69, v24, v68);
  v27[OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_skipKeychainSave] = v64 & 1;
  v28 = v27;
  v29 = [v8 uuid];
  v30 = v65;
  sub_22A4DB79C();

  v31 = OBJC_IVAR____TtC13HomeKitDaemon19DemoAccessoryServer_uuid;
  swift_beginAccess();
  (*(v66 + 40))(&v28[v31], v30, v67);
  swift_endAccess();
  v32 = [objc_msgSend(v8 dataSource)];
  result = swift_unknownObjectRelease();
  if (!v32)
  {
    __break(1u);
    return result;
  }

  v70 = (a1 & 0xFFFFFFFFFFFFFF8);
  v34 = [v8 category];

  v35 = [v34 categoryType];
  if (!v35)
  {
    sub_22A4DD5EC();
    v35 = sub_22A4DD5AC();
  }

  v36 = [v32 categoryForType_];

  v37 = [v36 identifier];
  [v28 setCategory_];

  v38 = [v8 firmwareVersion];
  [v28 setVersion_];

  v39 = [v8 configNumber];
  [v28 setConfigNumber_];
  v40 = [v8 setupHash];
  v41 = sub_22A4DB62C();
  v43 = v42;

  v10 = sub_22A4DB61C();
  sub_2295798D4(v41, v43);
  a2 = v28;
  [v28 setSetupHash_];

  v44 = 0;
  v69 = MEMORY[0x277D84F90];
  v71[0] = MEMORY[0x277D84F90];
  while (v15 != v44)
  {
    if (v17)
    {
      v45 = MEMORY[0x22AAD13F0](v44, a1);
    }

    else
    {
      if (v44 >= *(v70 + 2))
      {
        goto LABEL_37;
      }

      v45 = *(a1 + 8 * v44 + 32);
    }

    v10 = v45;
    v46 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_36;
    }

    v47 = sub_229562F68(0, &unk_27D881EA0, 0x277CFE9F8);
    v48 = a2;
    v49 = v10;
    v10 = v47;
    ++v44;
    if (sub_22960B71C(v49, v48))
    {
      v10 = v71;
      MEMORY[0x22AAD09E0]();
      if (*((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v71[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22A4DD85C();
      }

      sub_22A4DD87C();
      v69 = v71[0];
      v44 = v46;
    }
  }

  sub_229562F68(0, &unk_27D881EA0, 0x277CFE9F8);
  v62 = sub_22A4DD81C();

  [a2 setAccessories_];

  return a2;
}