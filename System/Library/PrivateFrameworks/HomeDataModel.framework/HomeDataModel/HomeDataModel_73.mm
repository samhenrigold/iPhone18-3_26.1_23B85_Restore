uint64_t sub_1D1D59D68()
{
  v1 = sub_1D1E66E5C();
  v3 = v2;
  *(v0 + 304) = v2;
  v6 = (*MEMORY[0x1E69A45E0] + MEMORY[0x1E69A45E0]);
  v4 = swift_task_alloc();
  *(v0 + 312) = v4;
  *v4 = v0;
  v4[1] = sub_1D1D59E30;

  return v6(v1, v3);
}

uint64_t sub_1D1D59E30()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1D1D59F80, v1, 0);
}

uint64_t sub_1D1D59F80(uint64_t a1)
{
  *(v1 + 320) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5A00C, v3, v2);
}

uint64_t sub_1D1D5A00C()
{
  v1 = *(v0 + 168);

  *(v0 + 328) = sub_1D1E66DCC();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5A084, v1, 0);
}

uint64_t sub_1D1D5A084(uint64_t a1)
{
  *(v1 + 336) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5A110, v3, v2);
}

uint64_t sub_1D1D5A110()
{
  v1 = *(v0 + 168);

  sub_1D1E66DBC();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5A198, v1, 0);
}

uint64_t sub_1D1D5A198()
{
  v51 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v4 = *(v0 + 184);
  v3 = *(v0 + 192);
  v5 = *(v0 + 176);
  sub_1D1E66D9C();
  (*(v4 + 8))(v3, v5);
  sub_1D1741C08(v1, v2, &qword_1EC64E550, &qword_1D1EABE28);
  v6 = sub_1D1E66D8C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 48);
  v9 = v8(v2, 1, v6);
  v10 = *(v0 + 208);
  if (v9 == 1)
  {
    sub_1D1741A30(*(v0 + 208), &qword_1EC64E550, &qword_1D1EABE28);
    v11 = 0;
    v12 = 0;
  }

  else
  {
    v11 = sub_1D1E66D7C();
    v12 = v13;
    (*(v7 + 8))(v10, v6);
  }

  v14 = *(v0 + 200);
  sub_1D1741C08(*(v0 + 216), v14, &qword_1EC64E550, &qword_1D1EABE28);
  v15 = v8(v14, 1, v6);
  v16 = *(v0 + 200);
  if (v15 == 1)
  {
    sub_1D1741A30(*(v0 + 200), &qword_1EC64E550, &qword_1D1EABE28);
    v17 = 0;
  }

  else
  {
    sub_1D1E66D6C();
    v19 = v18;
    (*(v7 + 8))(v16, v6);
    v17 = v19;
  }

  if (v12)
  {
    v20 = v17;
  }

  else
  {
    v11 = 0;
    v20 = 0;
  }

  v21 = v15 == 1 && v12 != 0;
  if (*(v0 + 264))
  {

    v22 = sub_1D1E66E8C();

    sub_1D1E66E7C();
    v24 = v23;

    if (v24)
    {

      v25 = 256;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
    v22 = 0;
  }

  v26 = v25 | v22 & 1;
  *(v0 + 16) = v26;
  *(v0 + 24) = v11;
  *(v0 + 32) = v12;
  *(v0 + 40) = v20;
  *(v0 + 48) = v21;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EC64F470);

  sub_1D1C2B3B4(v26, v11, v12);
  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6835C();

  sub_1D1C2B470(v26, v11, v12);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v50 = v49;
    *v30 = 136315394;
    _s10ThermostatC23ThermostatServiceConfigVMa(0);
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v31 = sub_1D1E68FAC();
    v33 = sub_1D1B1312C(v31, v32, &v50);

    *(v30 + 4) = v33;
    *(v30 + 12) = 2080;
    *(v0 + 96) = v26;
    *(v0 + 104) = v11;
    *(v0 + 112) = v12;
    *(v0 + 120) = v20;
    *(v0 + 128) = v21;
    sub_1D1C2B3B4(v26, v11, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E548, &qword_1D1EABE08);
    v34 = sub_1D1E6789C();
    v36 = sub_1D1B1312C(v34, v35, &v50);

    *(v30 + 14) = v36;
    _os_log_impl(&dword_1D16EC000, v28, v29, "(AutoClimateModel.Thermostat - (setUpCleanEnergySetting(isInitialSetup:)) - Loaded clean energy settings for accessory: %s,  %s", v30, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v49, -1, -1);
    MEMORY[0x1D3893640](v30, -1, -1);
  }

  swift_beginAccess();
  v37 = *(v0 + 16);
  v38 = *(v0 + 24);
  v39 = *(v0 + 32);
  if (v39 == 1)
  {
    LOBYTE(v40) = 0;
    LOBYTE(v41) = 0;
    v42 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
  }

  else
  {
    v41 = (v37 >> 8) & 1;
    v40 = *(v0 + 16);
    v42 = *(v0 + 24);
    v43 = *(v0 + 32);
    v44 = *(v0 + 40);
    v45 = *(v0 + 48);
  }

  *(v0 + 56) = v40 & 1;
  *(v0 + 57) = v41;
  *(v0 + 64) = v42;
  *(v0 + 72) = v43;
  *(v0 + 80) = v44;
  *(v0 + 88) = v45;
  sub_1D1C2B3B4(v37, v38, v39);
  v46 = swift_task_alloc();
  *(v0 + 344) = v46;
  *v46 = v0;
  v46[1] = sub_1D1D5A718;
  v47 = *(v0 + 160);

  return sub_1D1D6274C(v0 + 56, v47);
}

uint64_t sub_1D1D5A718()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1D1D5A84C, v1, 0);
}

uint64_t sub_1D1D5A84C()
{
  if (*(v0 + 49) == 1)
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
    *(v0 + 352) = v1;
    *(v0 + 360) = v2;
    v3 = *(v0 + 32);
    v4 = *(v0 + 40);
    *(v0 + 368) = v3;
    *(v0 + 376) = v4;
    *(v0 + 50) = *(v0 + 48);
    sub_1D1C2B3B4(v1, v2, v3);

    return MEMORY[0x1EEE6DFA0](sub_1D1D5A970, 0, 0);
  }

  else
  {
    sub_1D1741A30(*(v0 + 216), &qword_1EC64E550, &qword_1D1EABE28);

    sub_1D1C2B470(*(v0 + 16), *(v0 + 24), *(v0 + 32));

    v5 = *(v0 + 8);

    return v5();
  }
}

uint64_t sub_1D1D5A970(uint64_t a1)
{
  *(v1 + 384) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5A9FC, v3, v2);
}

uint64_t sub_1D1D5A9FC()
{
  v16 = v0;
  v1 = *(v0 + 368);

  v2 = *(v0 + 368);
  v4 = *(v0 + 352);
  v3 = *(v0 + 360);
  v5 = v4 & 0x101;
  if (v1 == 1)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 50);
  }

  if (v1 == 1)
  {
    v7 = 0;
  }

  else
  {
    v7 = *(v0 + 376);
  }

  if (v1 == 1)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v0 + 368);
  }

  if (v1 == 1)
  {
    v9 = 0;
  }

  else
  {
    v9 = *(v0 + 360);
  }

  if (v1 == 1)
  {
    v5 = 0;
  }

  v10 = *(v0 + 168);
  *&v12 = v5;
  *(&v12 + 1) = v9;
  v13 = v8;
  v14 = v7;
  v15 = v6;
  sub_1D1C2B3B4(v4, v3, v2);
  sub_1D1D687D8(&v12);
  sub_1D1C2B470(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_1D1C2B470(v4, v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1D5AB0C, v10, 0);
}

uint64_t sub_1D1D5AB0C()
{
  v1 = *(v0 + 216);

  sub_1D1741A30(v1, &qword_1EC64E550, &qword_1D1EABE28);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D5ABBC(uint64_t a1)
{
  v2[21] = a1;
  v2[22] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v2[23] = swift_task_alloc();
  v3 = sub_1D1E66A7C();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v2[27] = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v2[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  v2[29] = swift_task_alloc();
  v2[30] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C9B0, &qword_1D1EA1190);
  v2[31] = swift_task_alloc();
  v4 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  v2[32] = v4;
  v2[33] = *(v4 - 8);
  v2[34] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5ADBC, v1, 0);
}

uint64_t sub_1D1D5ADBC()
{
  v1 = v0[21];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436B8, &unk_1D1E71E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E739C0;
  v3 = type metadata accessor for StaticService(0);
  v0[35] = v3;
  v4 = *(v1 + v3[26]);
  *(inited + 32) = v4;
  LOBYTE(v1) = sub_1D17C4E00(46, inited);
  swift_setDeallocating();
  if ((v1 & 1) == 0)
  {
    v5 = swift_initStackObject();
    *(v5 + 16) = xmmword_1D1E739C0;
    *(v5 + 32) = v4;
    v6 = sub_1D17C4E00(20, v5);
    swift_setDeallocating();
    if (!v6)
    {
      goto LABEL_7;
    }
  }

  _s10ThermostatC23ThermostatServiceConfigVMa(0);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_7;
  }

  v7 = v0[21];
  v8 = (v7 + v3[20]);
  v0[36] = *v8;
  v9 = v8[1];
  v0[37] = v9;
  if (!v9)
  {
    goto LABEL_7;
  }

  v10 = v0[32];
  v11 = v0[33];
  v12 = v0[31];
  sub_1D1741C08(v7 + v3[40], v12, &qword_1EC64C9B0, &qword_1D1EA1190);
  if ((*(v11 + 48))(v12, 1, v10) == 1)
  {
    sub_1D1741A30(v0[31], &qword_1EC64C9B0, &qword_1D1EA1190);
LABEL_7:

    v13 = v0[1];

    return v13();
  }

  v15 = v0[34];
  v16 = v0[32];
  v17 = v0[22];
  sub_1D1D66490(v0[31], v15, type metadata accessor for StaticService.AutoClimateControlConfig);
  v0[38] = *(v15 + *(v16 + 24));
  v0[39] = *(v17 + 112);
  v0[40] = sub_1D1E67E1C();

  v0[41] = sub_1D1E67E0C();
  v19 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5B090, v19, v18);
}

uint64_t sub_1D1D5B090()
{
  v1 = v0[39];
  v2 = v0[29];
  v3 = v0[22];

  swift_getKeyPath();
  v0[20] = v1;
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State, &protocol conformance descriptor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  sub_1D1741C08(v1 + v4, v2, &qword_1EC64E538, &qword_1D1EAC240);

  return MEMORY[0x1EEE6DFA0](sub_1D1D5B1BC, v3, 0);
}

uint64_t sub_1D1D5B1BC()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[23];
  sub_1D17721A0(*(v0[21] + *(v0[35] + 76)), v3);
  result = (*(v2 + 48))(v3, 1, v1);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v5 = v0[36];
    v20 = v0[34];
    v7 = v0[27];
    v6 = v0[28];
    v9 = v0[25];
    v8 = v0[26];
    v10 = v0[24];
    v11 = v0[22];
    v18 = v0[37];
    v19 = *(v0[32] + 20);
    v12 = *(v9 + 32);
    v12(v8, v0[23], v10);
    (*(v9 + 16))(v6 + *(v7 + 24), v11 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID, v10);
    v12(v6, v8, v10);
    v13 = (v6 + *(v7 + 20));
    *v13 = v5;
    v13[1] = v18;
    v14 = swift_task_alloc();
    v0[42] = v14;
    *v14 = v0;
    v14[1] = sub_1D1D5B35C;
    v16 = v0[29];
    v15 = v0[30];
    v17 = v0[28];

    return sub_1D1D5B714(v15, v20 + v19, v16, v17);
  }

  return result;
}

uint64_t sub_1D1D5B35C()
{
  v1 = *v0;
  v2 = *(*v0 + 272);
  v3 = *(*v0 + 232);
  v4 = *(*v0 + 224);

  sub_1D1D52E14(v4, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  sub_1D1741A30(v3, &qword_1EC64E538, &qword_1D1EAC240);
  v5 = *(v2 + 32);
  v6 = *(v2 + 16);
  *(v1 + 16) = *v2;
  *(v1 + 32) = v6;
  *(v1 + 48) = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5B4E0, 0, 0);
}

uint64_t sub_1D1D5B4E0(uint64_t a1)
{
  *(v1 + 344) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5B56C, v3, v2);
}

uint64_t sub_1D1D5B56C()
{
  v1 = v0[38];
  v2 = v0[30];
  v3 = v0[22];

  sub_1D1D5C028(v2, v3, v1, (v0 + 2));
  v4 = v0[22];

  return MEMORY[0x1EEE6DFA0](sub_1D1D5B62C, v4, 0);
}

uint64_t sub_1D1D5B62C()
{
  v1 = v0[30];
  sub_1D1D52E14(v0[34], type metadata accessor for StaticService.AutoClimateControlConfig);
  sub_1D1741A30(v1, &qword_1EC64E538, &qword_1D1EAC240);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D1D5B714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  v6 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v5[13] = v6;
  v5[14] = *(v6 - 8);
  v5[15] = swift_task_alloc();
  v7 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v5[16] = v7;
  v5[17] = *(v7 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v5[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  v5[22] = swift_task_alloc();
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v5[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D5B8E4, v4, 0);
}

uint64_t sub_1D1D5B8E4()
{
  v1 = v0[25];
  v2 = v0[13];
  v3 = v0[14];
  v4 = v0[9];
  v65 = *(v0[17] + 56);
  v65(v0[8], 1, 1, v0[16]);
  sub_1D1741C08(v4, v1, &qword_1EC64CA18, &qword_1D1EABE10);
  v5 = *(v3 + 48);
  v6 = v5(v1, 1, v2);
  v7 = v0[25];
  if (v6 == 1)
  {
    sub_1D1741A30(v7, &qword_1EC64CA18, &qword_1D1EABE10);
  }

  else
  {
    v8 = *v7;
    sub_1D1D52E14(v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    if (!v8)
    {
      goto LABEL_35;
    }
  }

  v9 = v0[21];
  v10 = v0[16];
  v11 = v0[17];
  sub_1D1741C08(v0[10], v9, &qword_1EC64E538, &qword_1D1EAC240);
  v12 = *(v11 + 48);
  v13 = v12(v9, 1, v10);
  v14 = v0[21];
  if (v13 == 1)
  {
    sub_1D1741A30(v14, &qword_1EC64E538, &qword_1D1EAC240);
    v15 = 0;
  }

  else
  {
    v15 = *v14;
    sub_1D1D52E14(v14, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  }

  v16 = v0[24];
  v17 = v0[13];
  sub_1D1741C08(v0[9], v16, &qword_1EC64CA18, &qword_1D1EABE10);
  v18 = v5(v16, 1, v17);
  v19 = v0[24];
  if (v18 == 1)
  {
    sub_1D1741A30(v19, &qword_1EC64CA18, &qword_1D1EABE10);
    if (v13 != 1)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v20 = *v19;
    sub_1D1D52E14(v19, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    if (v13 == 1 || v15 != v20)
    {
LABEL_25:
      v32 = v0[19];
      v33 = v0[16];
      sub_1D1741C08(v0[10], v32, &qword_1EC64E538, &qword_1D1EAC240);
      v34 = v12(v32, 1, v33);
      v35 = v0[8];
      v36 = v0[9];
      if (v34 != 1)
      {
        v43 = v0[18];
        v42 = v0[19];
        v44 = v0[16];
        sub_1D1D69C58(v0[9], v43);
        sub_1D1741A30(v35, &qword_1EC64E538, &qword_1D1EAC240);
        sub_1D1D52E14(v42, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
        sub_1D1D66490(v43, v35, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
        v45 = v35;
        v46 = v44;
LABEL_34:
        v65(v45, 0, 1, v46);
        goto LABEL_35;
      }

      v37 = v0[22];
      v38 = v0[19];
      v39 = v0[13];
      sub_1D1741A30(v35, &qword_1EC64E538, &qword_1D1EAC240);
      sub_1D1741A30(v38, &qword_1EC64E538, &qword_1D1EAC240);
      sub_1D1741C08(v36, v37, &qword_1EC64CA18, &qword_1D1EABE10);
      v40 = v5(v37, 1, v39);
      v41 = v0[22];
      if (v40 == 1)
      {
        sub_1D1741A30(v41, &qword_1EC64CA18, &qword_1D1EABE10);
      }

      else
      {
        v47 = v0[15];
        sub_1D1D66490(v41, v47, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
        if (*v47 == 2)
        {
          v49 = v0[15];
          v48 = v0[16];
          v50 = v0[12];
          v51 = v0[8];
          sub_1D1D52DAC(v0[11], &v51[v48[5]], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          v52 = *(v49 + 8);

          sub_1D1D52E14(v49, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
          v53 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
          swift_beginAccess();
          v54 = v48[8];
          v55 = sub_1D1E66C5C();
          (*(*(v55 - 8) + 16))(&v51[v54], v50 + v53, v55);
          v56 = v48[6];
          v57 = v48[7];
          *v51 = 2;
          *&v51[v56] = v52;
LABEL_33:
          *&v51[v57] = 0;
          v51[v48[9]] = 0;
          v45 = v51;
          v46 = v48;
          goto LABEL_34;
        }

        sub_1D1D52E14(v0[15], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      }

      v48 = v0[16];
      v58 = v0[12];
      v51 = v0[8];
      sub_1D1D52DAC(v0[11], &v51[v48[5]], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v59 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
      swift_beginAccess();
      v60 = v48[8];
      v61 = sub_1D1E66C5C();
      (*(*(v61 - 8) + 16))(&v51[v60], v58 + v59, v61);
      v62 = v48[6];
      v57 = v48[7];
      *v51 = 1;
      *&v51[v62] = 0;
      goto LABEL_33;
    }
  }

  v21 = v0[20];
  v22 = v0[16];
  sub_1D1741C08(v0[10], v21, &qword_1EC64E538, &qword_1D1EAC240);
  v23 = v12(v21, 1, v22);
  v24 = v0[20];
  if (v23 == 1)
  {
    sub_1D1741A30(v0[20], &qword_1EC64E538, &qword_1D1EAC240);
    v25 = 0;
  }

  else
  {
    v25 = *(v24 + *(v0[16] + 24));

    sub_1D1D52E14(v24, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  }

  v26 = v0[23];
  v27 = v0[13];
  sub_1D1741C08(v0[9], v26, &qword_1EC64CA18, &qword_1D1EABE10);
  v28 = v5(v26, 1, v27);
  v29 = v0[23];
  if (v28 == 1)
  {
    sub_1D1741A30(v0[23], &qword_1EC64CA18, &qword_1D1EABE10);
    if (!v25)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  v30 = *(v29 + 8);

  sub_1D1D52E14(v29, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  if (!v25)
  {
    if (!v30)
    {
      goto LABEL_35;
    }

    goto LABEL_24;
  }

  if (!v30)
  {
LABEL_24:

    goto LABEL_25;
  }

  v31 = sub_1D177BFB8(v25, v30);

  if ((v31 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_35:

  v63 = v0[1];

  return v63();
}

void sub_1D1D5C028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v106 = a4;
  v105 = a3;
  v116 = a2;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E540, &qword_1D1EABE00);
  MEMORY[0x1EEE9AC00](v102);
  v103 = &v96 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v101 = (&v96 - v11);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v96 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v96 - v15;
  v17 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v100 = (&v96 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v22 = (&v96 - v21);
  sub_1D1741C08(a1, v16, &qword_1EC64E538, &qword_1D1EAC240);
  v104 = v18;
  v23 = *(v18 + 48);
  if (v23(v16, 1, v17) == 1)
  {
    sub_1D1741A30(v16, &qword_1EC64E538, &qword_1D1EAC240);
LABEL_8:
    v36 = v116;
    v33 = v105;
    v32 = v106;
    goto LABEL_9;
  }

  sub_1D1D66490(v16, v22, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  if (!*v22)
  {
    sub_1D1D52E14(v22, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
    goto LABEL_8;
  }

  v98 = v9;
  v24 = *(v116 + 112);
  swift_getKeyPath();
  v25 = v22;
  *&v113 = v24;
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State, &protocol conformance descriptor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v26 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  v99 = v25;
  sub_1D1D52DAC(v25, v14, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  v27 = *(v104 + 56);
  v104 += 56;
  v97 = v27;
  v27(v14, 0, 1, v17);
  v28 = *(v102 + 48);
  v102 = v24;
  v29 = v24 + v26;
  v30 = v103;
  sub_1D1741C08(v29, v103, &qword_1EC64E538, &qword_1D1EAC240);
  sub_1D1741C08(v14, v30 + v28, &qword_1EC64E538, &qword_1D1EAC240);
  if (v23(v30, 1, v17) == 1)
  {
    sub_1D1741A30(v14, &qword_1EC64E538, &qword_1D1EAC240);
    v31 = v23((v30 + v28), 1, v17);
    v32 = v106;
    v33 = v105;
    v34 = v99;
    v35 = v98;
    if (v31 == 1)
    {
      sub_1D1741A30(v30, &qword_1EC64E538, &qword_1D1EAC240);
LABEL_39:
      sub_1D1D52E14(v34, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
      v36 = v116;
      goto LABEL_9;
    }

    goto LABEL_32;
  }

  v78 = v101;
  sub_1D1741C08(v30, v101, &qword_1EC64E538, &qword_1D1EAC240);
  v79 = v23((v30 + v28), 1, v17);
  v35 = v98;
  if (v79 == 1)
  {
    sub_1D1741A30(v14, &qword_1EC64E538, &qword_1D1EAC240);
    sub_1D1D52E14(v78, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
    v32 = v106;
    v33 = v105;
    v34 = v99;
LABEL_32:
    sub_1D1741A30(v30, &qword_1EC64E540, &qword_1D1EABE00);
    goto LABEL_33;
  }

  v92 = v30 + v28;
  v93 = v100;
  sub_1D1D66490(v92, v100, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  v94 = v78;
  v95 = _s13HomeDataModel011AutoClimateC0C10ThermostatC25AdaptiveTemperatureConfigV2eeoiySbAG_AGtFZ_0(v78, v93);
  sub_1D1D52E14(v93, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  sub_1D1741A30(v14, &qword_1EC64E538, &qword_1D1EAC240);
  sub_1D1D52E14(v94, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  sub_1D1741A30(v30, &qword_1EC64E538, &qword_1D1EAC240);
  v32 = v106;
  v33 = v105;
  v34 = v99;
  if (v95)
  {
    goto LABEL_39;
  }

LABEL_33:
  v80 = v32;
  sub_1D1D52DAC(v34, v35, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  v97(v35, 0, 1, v17);
  sub_1D1D67F68(v35);
  v36 = v116;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v81 = sub_1D1E6709C();
  __swift_project_value_buffer(v81, qword_1EC64F470);

  v82 = sub_1D1E6707C();
  v83 = sub_1D1E6835C();

  if (os_log_type_enabled(v82, v83))
  {
    v84 = swift_slowAlloc();
    v85 = swift_slowAlloc();
    *&v113 = v85;
    *v84 = 136315394;
    _s10ThermostatC23ThermostatServiceConfigVMa(0);
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v86 = sub_1D1E68FAC();
    v88 = sub_1D1B1312C(v86, v87, &v113);

    *(v84 + 4) = v88;
    *(v84 + 12) = 2080;
    v89 = sub_1D1D68B30();
    v91 = sub_1D1B1312C(v89, v90, &v113);

    *(v84 + 14) = v91;
    _os_log_impl(&dword_1D16EC000, v82, v83, "(AutoClimateModel.Thermostat - (updateState(autoClimateControlConfig:)) - Updated adaptive temperature settings for accessory: %s. New state: %s", v84, 0x16u);
    swift_arrayDestroy();
    v32 = v106;
    MEMORY[0x1D3893640](v85, -1, -1);
    MEMORY[0x1D3893640](v84, -1, -1);

    sub_1D1D52E14(v99, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  }

  else
  {

    sub_1D1D52E14(v34, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
    v32 = v80;
  }

LABEL_9:
  if (!v33)
  {
    goto LABEL_19;
  }

  v37 = *(v36 + 112);
  swift_getKeyPath();
  *&v113 = v37;
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State, &protocol conformance descriptor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v38 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  v39 = *(v37 + v38);
  if (v39)
  {
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v40 = sub_1D177AE98(v39, v33);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    if (v40)
    {

      goto LABEL_19;
    }
  }

  else
  {
  }

  *&v113 = v33;
  sub_1D1D68428(&v113);
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v41 = sub_1D1E6709C();
  __swift_project_value_buffer(v41, qword_1EC64F470);

  v42 = sub_1D1E6707C();
  v43 = sub_1D1E6835C();

  if (os_log_type_enabled(v42, v43))
  {
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    *&v113 = v45;
    *v44 = 136315394;
    _s10ThermostatC23ThermostatServiceConfigVMa(0);
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v46 = sub_1D1E68FAC();
    v48 = sub_1D1B1312C(v46, v47, &v113);

    *(v44 + 4) = v48;
    *(v44 + 12) = 2080;
    v49 = sub_1D1D68B30();
    v51 = sub_1D1B1312C(v49, v50, &v113);

    *(v44 + 14) = v51;
    _os_log_impl(&dword_1D16EC000, v42, v43, "(AutoClimateModel.Thermostat - (updateState(autoClimateControlConfig:)) - Updated sleep schedule for accessory: %s. New state: %s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v45, -1, -1);
    MEMORY[0x1D3893640](v44, -1, -1);
  }

  v32 = v106;
LABEL_19:
  v52 = *(v32 + 16);
  if (v52 != 1)
  {
    v53 = *(v36 + 112);
    swift_getKeyPath();
    *&v113 = v53;
    sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State, &protocol conformance descriptor for AutoClimateModel.Thermostat.State);
    sub_1D1E66CAC();

    v105 = v53;
    v54 = v53 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
    swift_beginAccess();
    v56 = *v54;
    v55 = *(v54 + 8);
    v57 = v32;
    v58 = *(v54 + 16);
    v59 = *(v54 + 24);
    v60 = *(v54 + 32);
    v61 = *v57;
    v62 = *(v57 + 8);
    v63 = *(v57 + 24);
    v64 = *(v57 + 32);
    if (v58 == 1)
    {
      v103 = *(v57 + 24);
      LODWORD(v104) = v64;
      sub_1D1741C08(v57, &v113, &qword_1EC64E548, &qword_1D1EABE08);
      sub_1D1741C08(v57, &v113, &qword_1EC64E548, &qword_1D1EABE08);
      sub_1D1C2B3B4(v56, v55, 1);
      sub_1D1C2B470(v56, v55, 1);
      sub_1D1C2B470(v61, v62, v52);
    }

    else
    {
      *&v113 = v56;
      *(&v113 + 1) = v55;
      *&v114 = v58;
      *(&v114 + 1) = v59;
      v115 = v60;
      v108 = v61 & 0x101;
      v109 = v62;
      v110 = v52;
      v111 = v63;
      v112 = v64;
      sub_1D1741C08(v57, v107, &qword_1EC64E548, &qword_1D1EABE08);
      sub_1D1741C08(v57, v107, &qword_1EC64E548, &qword_1D1EABE08);
      sub_1D1C2B3B4(v56, v55, v58);
      sub_1D1C2B3B4(v56, v55, v58);
      v65 = _s13HomeDataModel011AutoClimateC0C10ThermostatC24CleanEnergySettingConfigV2eeoiySbAG_AGtFZ_0(&v113, &v108);

      sub_1D1C2B470(v56, v55, v58);
      if (v65)
      {
        sub_1D1741A30(v57, &qword_1EC64E548, &qword_1D1EABE08);
        return;
      }
    }

    v66 = *(v57 + 16);
    v113 = *v57;
    v114 = v66;
    v115 = *(v57 + 32);
    sub_1D1D687D8(&v113);
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v67 = sub_1D1E6709C();
    __swift_project_value_buffer(v67, qword_1EC64F470);

    v68 = sub_1D1E6707C();
    v69 = sub_1D1E6835C();

    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      *&v113 = v71;
      *v70 = 136315394;
      _s10ThermostatC23ThermostatServiceConfigVMa(0);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v72 = sub_1D1E68FAC();
      v74 = sub_1D1B1312C(v72, v73, &v113);

      *(v70 + 4) = v74;
      *(v70 + 12) = 2080;
      v75 = sub_1D1D68B30();
      v77 = sub_1D1B1312C(v75, v76, &v113);

      *(v70 + 14) = v77;
      _os_log_impl(&dword_1D16EC000, v68, v69, "(AutoClimateModel.Thermostat - (updateState(autoClimateControlConfig:)) - Updated clean energy setting for accessory: %s. New state: %s", v70, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v71, -1, -1);
      MEMORY[0x1D3893640](v70, -1, -1);
    }
  }
}

uint64_t AutoClimateModel.Thermostat.deinit()
{

  v1 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D1D52E14(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig, _s10ThermostatC23ThermostatServiceConfigVMa);

  v3 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  v4 = sub_1D1E66C5C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t AutoClimateModel.Thermostat.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D1D52E14(v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig, _s10ThermostatC23ThermostatServiceConfigVMa);

  v3 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  v4 = sub_1D1E66C5C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1D1D5D1E0(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 152) = v1;
  *(v2 + 160) = v3;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  *(v2 + 168) = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  v5 = v1 + v4;
  v6 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
  *(v2 + 232) = v6;
  v7 = swift_task_alloc();
  *(v2 + 176) = v7;
  *v7 = v2;
  v7[1] = sub_1D1D5D2B4;

  return sub_1D1B9A370(v5 + v6);
}

uint64_t sub_1D1D5D2B4(uint64_t a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 184) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5D3CC, v2, 0);
}

uint64_t sub_1D1D5D3CC(uint64_t a1)
{
  v16 = v1;
  v2 = v1[23];
  if (v2)
  {
    v15 = v1[20];
    v3 = sub_1D1D6A020();
    v1[24] = v3;
    if (v3)
    {
      v1[18] = v1[20];
      v4 = swift_task_alloc();
      v1[25] = v4;
      *v4 = v1;
      v4[1] = sub_1D1D5D660;

      return sub_1D1D5E184(v1 + 18, v2);
    }
  }

  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EC64F470);

  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315138;
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1D1E68FAC();
    v13 = sub_1D1B1312C(v11, v12, &v15);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_1D16EC000, v7, v8, "(AutoClimateModel.Thermostat - (writeSleepSchedule(_ schedule:)) - Failed to generate schedule for accessory: %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_1D1D5D660()
{
  v1 = *(*v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D1D5D770, v1, 0);
}

uint64_t sub_1D1D5D770()
{
  v18 = v0;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  v0[26] = __swift_project_value_buffer(v1, qword_1EC64F470);

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[20];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17[0] = v6;
    v17[1] = v4;
    *v5 = 136315394;
    v7 = AutoClimateModel.Thermostat.WeekdaySchedule.description.getter();
    v9 = sub_1D1B1312C(v7, v8, v17);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = sub_1D1E68FAC();
    v12 = sub_1D1B1312C(v10, v11, v17);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_1D16EC000, v2, v3, "(AutoClimateModel.Thermostat: (writeSleepSchedule(_ schedule:)) - Updating thermostat schedule to: %s for accessory: %s.", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v6, -1, -1);
    MEMORY[0x1D3893640](v5, -1, -1);
  }

  v14 = v0[23];
  v13 = v0[24];
  v0[2] = v0;
  v0[3] = sub_1D1D5DA64;
  v15 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_74;
  v0[14] = v15;
  [v14 setThermostatSleepSchedule:v13 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1D5DA64()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 216) = v2;
  v3 = *(v1 + 152);
  if (v2)
  {
    v4 = sub_1D1D5DDA0;
  }

  else
  {
    v4 = sub_1D1D5DB84;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1D5DB84()
{
  v18 = v0;

  v1 = sub_1D1E6707C();
  v2 = sub_1D1E6835C();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[23];
  v4 = v0[24];
  if (v3)
  {
    v6 = v0[20];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17[0] = v8;
    v17[1] = v6;
    *v7 = 136315394;
    v9 = AutoClimateModel.Thermostat.WeekdaySchedule.description.getter();
    v11 = sub_1D1B1312C(v9, v10, v17);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v12 = sub_1D1E68FAC();
    v14 = sub_1D1B1312C(v12, v13, v17);

    *(v7 + 14) = v14;
    _os_log_impl(&dword_1D16EC000, v1, v2, "(AutoClimateModel.Thermostat: (writeSleepSchedule(_ schedule:)) - Successfully updated thermostat schedule to: %s for accessory: %s.", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D1D5DDA0(uint64_t a1)
{
  v19 = v1;
  v2 = v1[27];
  swift_willThrow();

  v3 = v2;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[27];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    sub_1D1E66A7C();
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v10 = sub_1D1E68FAC();
    v12 = sub_1D1B1312C(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel.Thermostat: (writeSleepSchedule(_ schedule:)) - Failed to update thermostat schedule for accessory: %s due to error: %@. Reverting to previous state.", v7, 0x16u);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v15 = v1[23];
  v16 = swift_task_alloc();
  v1[28] = v16;
  *v16 = v1;
  v16[1] = sub_1D1D5E004;

  return sub_1D1D57B3C(v15, 0);
}

uint64_t sub_1D1D5E004()
{
  v1 = *(*v0 + 152);

  return MEMORY[0x1EEE6DFA0](sub_1D1D5E114, v1, 0);
}

uint64_t sub_1D1D5E114()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1D5E184(uint64_t *a1, uint64_t a2)
{
  v3[2] = a2;
  v3[3] = v2;
  v3[4] = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[5] = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  v5 = swift_task_alloc();
  v6 = *a1;
  v3[6] = v5;
  v3[7] = v6;
  v7 = swift_task_alloc();
  v3[8] = v7;
  *v7 = v3;
  v7[1] = sub_1D1D5E290;

  return sub_1D1E387D4();
}

uint64_t sub_1D1D5E290(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 72) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5E3A8, v2, 0);
}

uint64_t sub_1D1D5E3A8()
{
  if (v0[9])
  {
    v1 = v0[3];
    v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v0[10] = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1D1D5E568;

    return sub_1D1E3766C(v1 + v2);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F470);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D16EC000, v6, v7, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - Could not get home manager", v8, 2u);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1D1D5E568(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5E680, v2, 0);
}

uint64_t sub_1D1D5E680()
{
  v31 = v0;
  if (v0[12])
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v1 = sub_1D1E6709C();
    __swift_project_value_buffer(v1, qword_1EC64F470);

    v2 = sub_1D1E6707C();
    v3 = sub_1D1E6835C();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[7];
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v29 = v6;
      *v5 = 136315394;
      _s10ThermostatC23ThermostatServiceConfigVMa(0);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v7 = sub_1D1E68FAC();
      v9 = sub_1D1B1312C(v7, v8, &v29);

      *(v5 + 4) = v9;
      *(v5 + 12) = 2080;
      v30 = v4;
      v10 = AutoClimateModel.Thermostat.WeekdaySchedule.description.getter();
      v12 = sub_1D1B1312C(v10, v11, &v29);

      *(v5 + 14) = v12;
      _os_log_impl(&dword_1D16EC000, v2, v3, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - Updating snapshot with sleep schedule for accessory: %s, schedule: %s", v5, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v6, -1, -1);
      MEMORY[0x1D3893640](v5, -1, -1);
    }

    v13 = swift_task_alloc();
    v0[13] = v13;
    *v13 = v0;
    v13[1] = sub_1D1D5EB48;

    return AutoClimateModel.Thermostat.snapshotModerator.getter();
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EC64F470);

    v16 = sub_1D1E6707C();
    v17 = sub_1D1E6835C();

    if (os_log_type_enabled(v16, v17))
    {
      v28 = v0[9];
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v30 = v19;
      *v18 = 136315394;
      _s10ThermostatC23ThermostatServiceConfigVMa(0);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v20 = sub_1D1E68FAC();
      v22 = sub_1D1B1312C(v20, v21, &v30);

      *(v18 + 4) = v22;
      *(v18 + 12) = 2080;
      v23 = sub_1D1E68FAC();
      v25 = sub_1D1B1312C(v23, v24, &v30);

      *(v18 + 14) = v25;
      _os_log_impl(&dword_1D16EC000, v16, v17, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - No home found for accessory: %s,  homeUUID: %s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v19, -1, -1);
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    else
    {
      v26 = v0[9];
    }

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1D1D5EB48(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5EC60, v2, 0);
}

uint64_t sub_1D1D5EC60()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[7];
  v4 = v0[5];
  v5 = v0[2];
  *v4 = v5;
  v4[1] = v3;
  swift_storeEnumTagMultiPayload();

  v6 = v5;
  v7 = swift_task_alloc();
  v0[15] = v7;
  *v7 = v0;
  v7[1] = sub_1D1D5ED44;
  v9 = v0[5];
  v8 = v0[6];

  return sub_1D1E5A250(v8, v9, v2, v1, 0);
}

uint64_t sub_1D1D5ED44()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);

  sub_1D1D52E14(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1D52E14(v1, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1D5EED8, v3, 0);
}

uint64_t sub_1D1D5EED8()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D5EF50(uint64_t a1)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = v1;
  type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  *(v2 + 168) = swift_task_alloc();
  v3 = sub_1D1E66A7C();
  *(v2 + 176) = v3;
  *(v2 + 184) = *(v3 - 8);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) - 8);
  v4 = swift_task_alloc();
  v5 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  *(v2 + 208) = v4;
  *(v2 + 216) = v5;
  v6 = v1 + v5;
  v7 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
  *(v2 + 304) = v7;
  v8 = swift_task_alloc();
  *(v2 + 224) = v8;
  *v8 = v2;
  v8[1] = sub_1D1D5F0FC;

  return sub_1D1B9A370(v6 + v7);
}

uint64_t sub_1D1D5F0FC(uint64_t a1)
{
  v2 = *(*v1 + 160);
  *(*v1 + 232) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5F214, v2, 0);
}

uint64_t sub_1D1D5F214()
{
  v30 = v0;
  v1 = v0[29];
  if (v1)
  {
    v2 = *(v0[19] + 8);
    if (v2)
    {
      v27 = v0[29];
      v3 = *(v2 + 16);
      if (v3)
      {
        v4 = v0[25];
        v5 = v0[23];
        v6 = v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
        v28 = *(v4 + 72);
        v7 = MEMORY[0x1E69E7CC0];
        do
        {
          v8 = v0[26];
          v9 = v0[24];
          v10 = v0[22];
          sub_1D1D52DAC(v6, v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          (*(v5 + 16))(v9, v8, v10);
          sub_1D1D52E14(v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1D177D0AC(0, v7[2] + 1, 1, v7);
          }

          v12 = v7[2];
          v11 = v7[3];
          if (v12 >= v11 >> 1)
          {
            v7 = sub_1D177D0AC((v11 > 1), v12 + 1, 1, v7);
          }

          v13 = v0[24];
          v14 = v0[22];
          v7[2] = v12 + 1;
          (*(v5 + 32))(v7 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v13, v14);
          v6 += v28;
          --v3;
        }

        while (v3);
      }

      else
      {
        v7 = MEMORY[0x1E69E7CC0];
      }

      v1 = v27;
    }

    else
    {
      v7 = 0;
    }

    v0[30] = v7;
    v25 = swift_task_alloc();
    v0[31] = v25;
    *v25 = v0;
    v25[1] = sub_1D1D5F678;
    v26 = v0[19];

    return sub_1D1D60634(v26, v1);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EC64F470);

    v16 = sub_1D1E6707C();
    v17 = sub_1D1E6833C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v19;
      *v18 = 136315650;
      *(v18 + 4) = sub_1D1B1312C(0xD00000000000002FLL, 0x80000001D1EC8C30, &v29);
      *(v18 + 12) = 2080;
      *(v18 + 14) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EC8D20, &v29);
      *(v18 + 22) = 2080;
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v20 = sub_1D1E68FAC();
      v22 = sub_1D1B1312C(v20, v21, &v29);

      *(v18 + 24) = v22;
      _os_log_impl(&dword_1D16EC000, v16, v17, "%s - %s: Failed to find thermostat for accessory: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v19, -1, -1);
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_1D1D5F678()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D1D5F788, v1, 0);
}

uint64_t sub_1D1D5F788()
{
  v28 = v0;
  if (v0[30])
  {
    if (qword_1EC642408 != -1)
    {
      swift_once();
    }

    v1 = v0[20];
    v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v3 = swift_task_alloc();
    v0[32] = v3;
    *v3 = v0;
    v3[1] = sub_1D1D5FC04;

    return AutoClimateModel.localPresenceRooms(for:)(v1 + v2);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v5 = v0[21];
    v6 = v0[19];
    v7 = sub_1D1E6709C();
    v0[34] = __swift_project_value_buffer(v7, qword_1EC64F470);
    sub_1D1D52DAC(v6, v5, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);

    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6835C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = v0[21];
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v27 = v12;
      *v11 = 136315650;
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v13 = sub_1D1E68FAC();
      v15 = sub_1D1B1312C(v13, v14, &v27);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v16 = HMAdaptiveTemperatureDriver.description.getter(*v10);
      v18 = v17;
      sub_1D1D52E14(v10, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v19 = sub_1D1B1312C(v16, v18, &v27);

      *(v11 + 14) = v19;
      *(v11 + 22) = 2080;
      v0[18] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E558, &qword_1D1EABE50);
      v20 = sub_1D1E6789C();
      v22 = sub_1D1B1312C(v20, v21, &v27);

      *(v11 + 24) = v22;
      _os_log_impl(&dword_1D16EC000, v8, v9, "(AutoClimateModel.Thermostat - (writeAdaptiveTemperatureSettings(_ setting:)) - Updating adaptive temperature settings for accessory: %s to temperature driver: %s and selected rooms: %s.", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    else
    {
      v23 = v0[21];

      sub_1D1D52E14(v23, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    }

    v24 = *v0[19];
    v0[35] = 0;
    v25 = v0[29];
    v0[2] = v0;
    v0[3] = sub_1D1D60158;
    v26 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17B04C8;
    v0[13] = &block_descriptor_57;
    v0[14] = v26;
    [v25 setAdaptiveTemperatureDriver:v24 rooms:0 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }
}

uint64_t sub_1D1D5FC04(uint64_t a1)
{
  v2 = *(*v1 + 160);
  *(*v1 + 264) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D5FD1C, v2, 0);
}

uint64_t sub_1D1D5FD1C()
{
  v28 = v0;
  v1 = v0[33];
  if (v1)
  {
    v2 = sub_1D1D670A8(v1, v0[30]);
  }

  else
  {

    v2 = 0;
  }

  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v3 = v0[21];
  v4 = v0[19];
  v5 = sub_1D1E6709C();
  v0[34] = __swift_project_value_buffer(v5, qword_1EC64F470);
  sub_1D1D52DAC(v4, v3, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);

  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6835C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[21];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v27[0] = v10;
    *v9 = 136315650;
    sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1D1E68FAC();
    v13 = sub_1D1B1312C(v11, v12, v27);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    v14 = HMAdaptiveTemperatureDriver.description.getter(*v8);
    v16 = v15;
    sub_1D1D52E14(v8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v17 = sub_1D1B1312C(v14, v16, v27);

    *(v9 + 14) = v17;
    *(v9 + 22) = 2080;
    v0[18] = v2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E558, &qword_1D1EABE50);
    v18 = sub_1D1E6789C();
    v20 = sub_1D1B1312C(v18, v19, v27);

    *(v9 + 24) = v20;
    _os_log_impl(&dword_1D16EC000, v6, v7, "(AutoClimateModel.Thermostat - (writeAdaptiveTemperatureSettings(_ setting:)) - Updating adaptive temperature settings for accessory: %s to temperature driver: %s and selected rooms: %s.", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
    v21 = v0[21];

    sub_1D1D52E14(v21, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  }

  v22 = *v0[19];
  if (v2)
  {
    sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
    sub_1D1D4EB34();
    v23 = sub_1D1E6815C();
  }

  else
  {
    v23 = 0;
  }

  v0[35] = v23;
  v24 = v0[29];
  v0[2] = v0;
  v0[3] = sub_1D1D60158;
  v25 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17B04C8;
  v0[13] = &block_descriptor_57;
  v0[14] = v25;
  [v24 setAdaptiveTemperatureDriver:v22 rooms:v23 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1D60158()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 288) = v2;
  v3 = *(v1 + 160);
  if (v2)
  {
    v4 = sub_1D1D60300;
  }

  else
  {
    v4 = sub_1D1D60278;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1D60278()
{
  v1 = *(v0 + 232);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D60300(uint64_t a1)
{
  v2 = v1[35];
  v3 = v1[36];
  swift_willThrow();

  v4 = v3;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v1[36];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D16EC000, v5, v6, "(AutoClimateModel.Thermostat - (writeAdaptiveTemperatureSettings(_ setting:)) - Failed to update adaptive temperature settings due to error: %@. Reverting to previous state.", v8, 0xCu);
    sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v12 = v1[29];

  v13 = swift_task_alloc();
  v1[37] = v13;
  *v13 = v1;
  v13[1] = sub_1D1D60498;

  return sub_1D1D55FE8(v12, 0);
}

uint64_t sub_1D1D60498()
{
  v1 = *(*v0 + 160);

  return MEMORY[0x1EEE6DFA0](sub_1D1D605A8, v1, 0);
}

uint64_t sub_1D1D605A8()
{
  v1 = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D60634(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[6] = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  v3[7] = swift_task_alloc();
  v3[8] = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v3[9] = swift_task_alloc();
  v4 = swift_task_alloc();
  v3[10] = v4;
  *v4 = v3;
  v4[1] = sub_1D1D60768;

  return sub_1D1E387D4();
}

uint64_t sub_1D1D60768(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D60880, v2, 0);
}

uint64_t sub_1D1D60880()
{
  if (v0[11])
  {
    v1 = v0[4];
    v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v0[12] = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1D1D60A4C;

    return sub_1D1E3766C(v1 + v2);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F470);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D16EC000, v6, v7, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - Could not get home manager", v8, 2u);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1D1D60A4C(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D60B64, v2, 0);
}

uint64_t sub_1D1D60B64()
{
  v34 = v0;
  if (v0[14])
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v1 = v0[9];
    v2 = v0[2];
    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EC64F470);
    sub_1D1D52DAC(v2, v1, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);

    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();

    v6 = os_log_type_enabled(v4, v5);
    v7 = v0[9];
    if (v6)
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v33 = v9;
      *v8 = 136315394;
      _s10ThermostatC23ThermostatServiceConfigVMa(0);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v10 = sub_1D1E68FAC();
      v12 = sub_1D1B1312C(v10, v11, &v33);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2080;
      v13 = AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.description.getter();
      v15 = v14;
      sub_1D1D52E14(v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v16 = sub_1D1B1312C(v13, v15, &v33);

      *(v8 + 14) = v16;
      _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - Updating snapshot with adaptive temperature settings for accessory: %s, setting: %s", v8, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v9, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    else
    {

      sub_1D1D52E14(v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    }

    v28 = swift_task_alloc();
    v0[15] = v28;
    *v28 = v0;
    v28[1] = sub_1D1D61098;

    return AutoClimateModel.Thermostat.snapshotModerator.getter();
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EC64F470);

    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6835C();

    if (os_log_type_enabled(v18, v19))
    {
      v32 = v0[11];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v33 = v21;
      *v20 = 136315394;
      _s10ThermostatC23ThermostatServiceConfigVMa(0);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v22 = sub_1D1E68FAC();
      v24 = sub_1D1B1312C(v22, v23, &v33);

      *(v20 + 4) = v24;
      *(v20 + 12) = 2080;
      v25 = sub_1D1E68FAC();
      v27 = sub_1D1B1312C(v25, v26, &v33);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1D16EC000, v18, v19, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - No home found for accessory: %s, homeUUID: %s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    else
    {
      v30 = v0[11];
    }

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_1D1D61098(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D611B0, v2, 0);
}

uint64_t sub_1D1D611B0()
{
  v1 = v0[14];
  v16 = v1;
  v17 = v0[11];
  v2 = v0[8];
  v3 = v0[6];
  v5 = v0[2];
  v4 = v0[3];
  v6 = v3 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810) + 48);
  *v3 = v4;
  v7 = v4;
  LOBYTE(v4) = [v1 isAllowedToEnableAdaptiveTemperatureAutomations];
  v8 = *v5;
  v9 = *(v5 + 1);
  v10 = *(v2 + 24);
  v11 = sub_1D1E66C5C();
  (*(*(v11 - 8) + 16))(&v6[v10], &v5[v10], v11);
  *v6 = v8;
  *(v6 + 1) = v9;
  v6[*(v2 + 28)] = v4;
  swift_storeEnumTagMultiPayload();

  v12 = swift_task_alloc();
  v0[17] = v12;
  *v12 = v0;
  v12[1] = sub_1D1D6132C;
  v14 = v0[6];
  v13 = v0[7];

  return sub_1D1E5A250(v13, v14, v17, v16, 0);
}

uint64_t sub_1D1D6132C()
{
  v1 = *(*v0 + 56);
  v2 = *(*v0 + 48);
  v3 = *(*v0 + 32);

  sub_1D1D52E14(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1D52E14(v1, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1D614C0, v3, 0);
}

uint64_t sub_1D1D614C0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D61544(uint64_t a1, char a2)
{
  *(v3 + 128) = v2;
  *(v3 + 49) = a2;
  *(v3 + 50) = *a1;
  *(v3 + 51) = *(a1 + 1);
  *(v3 + 136) = *(a1 + 8);
  v4 = *(a1 + 24);
  *(v3 + 89) = *(a1 + 32);
  v5 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  v6 = v2 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  *(v3 + 152) = v4;
  *(v3 + 160) = v5;
  v7 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 24);
  *(v3 + 52) = v7;
  v8 = swift_task_alloc();
  *(v3 + 168) = v8;
  *v8 = v3;
  v8[1] = sub_1D1D6163C;

  return sub_1D1B9A370(v6 + v7);
}

uint64_t sub_1D1D6163C(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D61754, v2, 0);
}

uint64_t sub_1D1D61754()
{
  v25 = v0;
  v1 = *(v0 + 176);
  if (v1)
  {
    v2 = [*(v0 + 176) home];
    *(v0 + 184) = v2;
    if (v2)
    {
      if (*(v0 + 49) == 1)
      {
        v3 = *(v0 + 89);
        v4 = *(v0 + 152);
        v5 = *(v0 + 51);
        *(v0 + 56) = *(v0 + 50);
        *(v0 + 57) = v5;
        *(v0 + 64) = *(v0 + 136);
        *(v0 + 80) = v4;
        *(v0 + 88) = v3;
        v6 = swift_task_alloc();
        *(v0 + 192) = v6;
        *v6 = v0;
        v6[1] = sub_1D1D61B30;
        v7 = v0 + 56;
LABEL_12:

        return sub_1D1D6274C(v7, v1);
      }

      v16 = v2;
      v17 = *(*(v0 + 128) + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_energySite);
      *(v0 + 200) = v17;
      if (v17)
      {
        v18 = *(v0 + 89);
        v19 = *(v0 + 152);
        v20 = *(v0 + 51);
        *(v0 + 16) = *(v0 + 50);
        *(v0 + 17) = v20;
        *(v0 + 24) = *(v0 + 136);
        *(v0 + 40) = v19;
        *(v0 + 48) = v18;

        v21 = swift_task_alloc();
        *(v0 + 208) = v21;
        *v21 = v0;
        v21[1] = sub_1D1D61CA4;
        v7 = v0 + 16;
        goto LABEL_12;
      }
    }
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EC64F470);

    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6833C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v24 = v12;
      *v11 = 136315650;
      *(v11 + 4) = sub_1D1B1312C(0xD00000000000002FLL, 0x80000001D1EC8C30, &v24);
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1D1B1312C(0xD000000000000026, 0x80000001D1EC8CF0, &v24);
      *(v11 + 22) = 2080;
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v13 = sub_1D1E68FAC();
      v15 = sub_1D1B1312C(v13, v14, &v24);

      *(v11 + 24) = v15;
      _os_log_impl(&dword_1D16EC000, v9, v10, "%s - %s: Failed to find thermostat for accessory: %s", v11, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }
  }

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D1D61B30()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D61C40, v1, 0);
}

uint64_t sub_1D1D61C40()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D61CA4()
{
  v1 = *v0;
  v2 = *(*v0 + 176);
  v3 = *v0;

  v4 = swift_task_alloc();
  *(v1 + 216) = v4;
  *v4 = v3;
  v4[1] = sub_1D1D61E00;

  return sub_1D1D59654(v2, 0);
}

uint64_t sub_1D1D61E00()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D61F10, v1, 0);
}

uint64_t sub_1D1D61F10()
{
  v23 = v0;
  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 184);
  v2 = sub_1D1E6709C();
  *(v0 + 224) = __swift_project_value_buffer(v2, qword_1EC64F470);

  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 184);
    v7 = *(v0 + 50);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136315394;
    if (v7)
    {
      v10 = 1702195828;
    }

    else
    {
      v10 = 0x65736C6166;
    }

    if (v7)
    {
      v11 = 0xE400000000000000;
    }

    else
    {
      v11 = 0xE500000000000000;
    }

    v12 = sub_1D1B1312C(v10, v11, &v22);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = [v6 name];
    v14 = sub_1D1E6781C();
    v16 = v15;

    v17 = sub_1D1B1312C(v14, v16, &v22);

    *(v8 + 14) = v17;
    _os_log_impl(&dword_1D16EC000, v4, v5, "(AutoClimateModel.Thermostat - (writeCleanEnergySetting(_ setting:)) - Updating electricity rates enabled to %s for home: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v21 = (*MEMORY[0x1E699BB50] + MEMORY[0x1E699BB50]);
  v18 = swift_task_alloc();
  *(v0 + 232) = v18;
  *v18 = v0;
  v18[1] = sub_1D1D62194;
  v19 = *(v0 + 50);

  return v21(v19);
}

uint64_t sub_1D1D62194()
{
  v2 = *v1;
  *(*v1 + 240) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_1D1D62330;
  }

  else
  {
    v4 = sub_1D1D622C0;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1D622C0()
{
  v1 = *(v0 + 176);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D62330()
{
  v26 = v0;
  v1 = *(v0 + 240);
  v2 = *(v0 + 184);

  v3 = v2;
  v4 = v1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 184);
    v8 = *(v0 + 50);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v9 = 136315650;
    v11 = [v7 name];
    v12 = sub_1D1E6781C();
    v14 = v13;

    v15 = sub_1D1B1312C(v12, v14, &v25);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2080;
    if (v8)
    {
      v16 = 1702195828;
    }

    else
    {
      v16 = 0x65736C6166;
    }

    if (v8)
    {
      v17 = 0xE400000000000000;
    }

    else
    {
      v17 = 0xE500000000000000;
    }

    v18 = sub_1D1B1312C(v16, v17, &v25);

    *(v9 + 14) = v18;
    *(v9 + 22) = 2080;
    swift_getErrorValue();
    v19 = sub_1D1E6915C();
    v21 = sub_1D1B1312C(v19, v20, &v25);

    *(v9 + 24) = v21;
    _os_log_impl(&dword_1D16EC000, v5, v6, "(AutoClimateModel.Thermostat - (writeCleanEnergySetting(_ setting:)) - Failed to update electricity rates enabled for home: %s to %s: due to error: %s. Reverting to previous state", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v22 = *(v0 + 176);
  v23 = swift_task_alloc();
  *(v0 + 248) = v23;
  *v23 = v0;
  v23[1] = sub_1D1D625B8;

  return sub_1D1D59654(v22, 0);
}

uint64_t sub_1D1D625B8()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D626C8, v1, 0);
}

uint64_t sub_1D1D626C8()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 176);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1D6274C(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = v2;
  *(v3 + 32) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v3 + 40) = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  *(v3 + 48) = swift_task_alloc();
  *(v3 + 144) = *a1;
  *(v3 + 145) = *(a1 + 1);
  v5 = *(a1 + 8);
  *(v3 + 72) = *(a1 + 24);
  *(v3 + 146) = *(a1 + 32);
  *(v3 + 56) = v5;
  v6 = swift_task_alloc();
  *(v3 + 80) = v6;
  *v6 = v3;
  v6[1] = sub_1D1D6287C;

  return sub_1D1E387D4();
}

uint64_t sub_1D1D6287C(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 88) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D62994, v2, 0);
}

uint64_t sub_1D1D62994()
{
  if (v0[11])
  {
    v1 = v0[3];
    v2 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v0[12] = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1D1D62B54;

    return sub_1D1E3766C(v1 + v2);
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EC64F470);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D16EC000, v6, v7, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - Could not get home manager", v8, 2u);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }
}

uint64_t sub_1D1D62B54(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D62C6C, v2, 0);
}

uint64_t sub_1D1D62C6C()
{
  v38 = v0;
  if (*(v0 + 112))
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v1 = sub_1D1E6709C();
    __swift_project_value_buffer(v1, qword_1EC64F470);

    v2 = sub_1D1E6707C();
    v3 = sub_1D1E6835C();

    if (os_log_type_enabled(v2, v3))
    {
      v31 = *(v0 + 146);
      v30 = *(v0 + 72);
      v29 = *(v0 + 56);
      v4 = *(v0 + 145);
      v5 = *(v0 + 144);
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v33 = v7;
      *v6 = 136315394;
      _s10ThermostatC23ThermostatServiceConfigVMa(0);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v8 = sub_1D1E68FAC();
      v10 = sub_1D1B1312C(v8, v9, &v33);

      *(v6 + 4) = v10;
      *(v6 + 12) = 2080;
      LOBYTE(v34) = v5;
      BYTE1(v34) = v4;
      v35 = v29;
      v36 = v30;
      v37 = v31;
      v11 = AutoClimateModel.Thermostat.CleanEnergySettingConfig.description.getter();
      v13 = sub_1D1B1312C(v11, v12, &v33);

      *(v6 + 14) = v13;
      _os_log_impl(&dword_1D16EC000, v2, v3, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - Updating snapshot with clean energy settings for accessory: %s, setting: %s", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v7, -1, -1);
      MEMORY[0x1D3893640](v6, -1, -1);
    }

    else
    {
      v4 = *(v0 + 145);
      v5 = *(v0 + 144);
    }

    *(v0 + 148) = v5;
    *(v0 + 147) = v4;
    v25 = swift_task_alloc();
    *(v0 + 120) = v25;
    *v25 = v0;
    v25[1] = sub_1D1D63180;

    return AutoClimateModel.Thermostat.snapshotModerator.getter();
  }

  else
  {
    if (qword_1EC642480 != -1)
    {
      swift_once();
    }

    v14 = sub_1D1E6709C();
    __swift_project_value_buffer(v14, qword_1EC64F470);

    v15 = sub_1D1E6707C();
    v16 = sub_1D1E6835C();

    if (os_log_type_enabled(v15, v16))
    {
      v32 = *(v0 + 88);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v34 = v18;
      *v17 = 136315394;
      _s10ThermostatC23ThermostatServiceConfigVMa(0);
      sub_1D1E66A7C();
      sub_1D1D66394(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v19 = sub_1D1E68FAC();
      v21 = sub_1D1B1312C(v19, v20, &v34);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2080;
      v22 = sub_1D1E68FAC();
      v24 = sub_1D1B1312C(v22, v23, &v34);

      *(v17 + 14) = v24;
      _os_log_impl(&dword_1D16EC000, v15, v16, "(AutoClimateModel.Thermostat - (updateSnapshot(with:)) - No home found for accessory: %s,  homeUUID: %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v18, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    else
    {
      v27 = *(v0 + 88);
    }

    v28 = *(v0 + 8);

    return v28();
  }
}

uint64_t sub_1D1D63180(uint64_t a1)
{
  v2 = *(*v1 + 24);
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1D63298, v2, 0);
}

uint64_t sub_1D1D63298()
{
  v1 = *(v0 + 148);
  v2 = *(v0 + 147);
  v3 = *(v0 + 112);
  v4 = *(v0 + 88);
  v5 = *(v0 + 146);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = *(v0 + 16);
  *(v7 + 24) = *(v0 + 64);
  *v7 = v8;
  *(v7 + 8) = v1;
  *(v7 + 9) = v2;
  *(v7 + 16) = v6;
  *(v7 + 40) = v5;
  swift_storeEnumTagMultiPayload();

  v9 = v8;
  v10 = swift_task_alloc();
  *(v0 + 136) = v10;
  *v10 = v0;
  v10[1] = sub_1D1D633A4;
  v12 = *(v0 + 40);
  v11 = *(v0 + 48);

  return sub_1D1E5A250(v11, v12, v4, v3, 0);
}

uint64_t sub_1D1D633A4()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v3 = *(*v0 + 24);

  sub_1D1D52E14(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1D52E14(v1, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1D63538, v3, 0);
}

uint64_t sub_1D1D63538()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t AutoClimateModel.Thermostat.room.getter()
{
  v2 = v0 + OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_thermostatServiceConfig;
  v3 = *(_s10ThermostatC23ThermostatServiceConfigVMa(0) + 28);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1D1AC3C3C;

  return sub_1D1E50EB4(v2 + v3);
}

uint64_t sub_1D1D63674(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v7 = swift_allocError();
    *v8 = a4;
    v9 = a4;

    return MEMORY[0x1EEE6DEE8](v6, v7);
  }

  else
  {
    sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
    sub_1D1D4EB34();
    v10 = sub_1D1E6816C();
    v11 = *(*(v6 + 64) + 40);
    *v11 = a2;
    v11[1] = v10;

    return MEMORY[0x1EEE6DEE0](v6);
  }
}

uint64_t AutoClimateModel.Thermostat.setDefaultSchedule()()
{
  v1[3] = v0;
  v2 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643968, &qword_1D1E72CE0);
  v1[8] = swift_task_alloc();
  v3 = sub_1D1E662EC();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D6390C, v0, 0);
}

uint64_t sub_1D1D6390C(uint64_t a1)
{
  v2 = v1[12];
  v4 = v1[7];
  v3 = v1[8];
  v15 = v1[11];
  v16 = v1[6];
  v19 = v1[9];
  v20 = v1[5];
  v17 = v1[10];
  v18 = v1[4];
  sub_1D1E66B9C();
  v5 = sub_1D1E66BBC();
  v14 = *(*(v5 - 8) + 56);
  v14(v3, 0, 1, v5);
  v6 = sub_1D1E66C5C();
  v7 = *(*(v6 - 8) + 56);
  v7(v4, 1, 1, v6);
  sub_1D1E662BC();
  sub_1D1E66B9C();
  v14(v3, 0, 1, v5);
  v7(v4, 1, 1, v6);
  sub_1D1E662BC();
  v8 = *(v17 + 16);
  v8(v16, v2, v19);
  v8(v16 + *(v18 + 20), v15, v19);
  *(v16 + *(v18 + 24)) = 127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431E0, &qword_1D1E71D50);
  v9 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1D1E739C0;
  sub_1D1D66490(v16, v10 + v9, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  v11 = *(v17 + 8);
  v11(v15, v19);
  v11(v2, v19);
  v1[2] = v10;
  v12 = swift_task_alloc();
  v1[13] = v12;
  *v12 = v1;
  v12[1] = sub_1D1D63CBC;

  return sub_1D1D5D1E0(v1 + 2);
}

uint64_t sub_1D1D63CBC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t AutoClimateModel.Thermostat.homeManager.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D1AC3C3C;

  return sub_1D1E387D4();
}

uint64_t sub_1D1D63F30()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  if (v1)
  {
    v2 = v1[18];

    v3 = *(v2 + qword_1EC6BE170);

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v0[3] = sub_1D1E67E1C();
    v0[4] = sub_1D1E67E0C();
    v7 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1D64038, v7, v6);
  }
}

uint64_t sub_1D1D64038()
{

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D1D640D0, v1, 0);
}

uint64_t sub_1D1D640D0(uint64_t a1)
{
  *(v1 + 40) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D6415C, v3, v2);
}

uint64_t sub_1D1D6415C()
{

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t AutoClimateModel.Thermostat.writeSleepSchedule(_:)(void *a1)
{
  if (*a1)
  {
    v1[2] = *a1;
    v2 = swift_task_alloc();
    v1[3] = v2;
    *v2 = v1;
    v2[1] = sub_1D17D064C;

    return sub_1D1D5D1E0(v1 + 2);
  }

  else
  {
    v4 = v1[1];

    return v4();
  }
}

uint64_t AutoClimateModel.Thermostat.writeSleepSchedule(oldRule:newRule:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E500, &qword_1D1EABC60);
  v3[11] = swift_task_alloc();
  type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D64384, v2, 0);
}

uint64_t sub_1D1D64384()
{
  v0[15] = *(v0[10] + 112);
  sub_1D1E67E1C();
  v0[16] = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D64424, v2, v1);
}

uint64_t sub_1D1D64424()
{
  v1 = v0[15];
  v2 = v0[10];

  swift_getKeyPath();
  v0[5] = v1;
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State, &protocol conformance descriptor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  v0[17] = *(v1 + v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1D6453C, v2, 0);
}

uint64_t sub_1D1D6453C()
{
  v34 = v0;
  v1 = v0[17];
  if (!v1)
  {
LABEL_4:

    v6 = v0[1];

    return v6();
  }

  v2 = v0[8];
  v0[6] = v1;

  v3 = sub_1D18E45BC(v2, v1);
  v5 = v4;

  if (v5)
  {

    goto LABEL_4;
  }

  if (qword_1EC642480 != -1)
  {
    swift_once();
  }

  v9 = v0[13];
  v8 = v0[14];
  v11 = v0[8];
  v10 = v0[9];
  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EC64F470);
  sub_1D1D52DAC(v11, v8, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  sub_1D1D52DAC(v10, v9, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();
  v15 = os_log_type_enabled(v13, v14);
  v17 = v0[13];
  v16 = v0[14];
  if (v15)
  {
    v18 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v33 = v32;
    *v18 = 136315394;
    v19 = AutoClimateModel.Thermostat.WeekdayScheduleRule.description.getter();
    v21 = v20;
    sub_1D1D52E14(v16, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    v22 = sub_1D1B1312C(v19, v21, &v33);

    *(v18 + 4) = v22;
    *(v18 + 12) = 2080;
    v23 = AutoClimateModel.Thermostat.WeekdayScheduleRule.description.getter();
    v25 = v24;
    sub_1D1D52E14(v17, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    v26 = sub_1D1B1312C(v23, v25, &v33);

    *(v18 + 14) = v26;
    _os_log_impl(&dword_1D16EC000, v13, v14, "(AutoClimateModel.Thermostat - (writeSleepSchedule(oldRule:newRule:)) - Updating sleep schedule rule: %s to %s", v18, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v32, -1, -1);
    MEMORY[0x1D3893640](v18, -1, -1);
  }

  else
  {

    sub_1D1D52E14(v17, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    sub_1D1D52E14(v16, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  }

  v27 = v0[12];
  sub_1D1D518EC(v3, v27);
  result = sub_1D1D52E14(v27, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  v28 = v0[6];
  if (v28[2] < v3)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v3 < 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  result = sub_1D1D52DAC(v0[9], v0[11], type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  v29 = v28[2];
  if (v29 < v3)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || v29 >= v28[3] >> 1)
  {
    v28 = sub_1D177FE4C(isUniquelyReferenced_nonNull_native, v29 + 1, 1, v28);
    v0[6] = v28;
  }

  sub_1D1D65948(v3, v3, 1, v0[11]);
  v0[6] = v28;
  v0[7] = v28;
  v31 = swift_task_alloc();
  v0[18] = v31;
  *v31 = v0;
  v31[1] = sub_1D1D64964;

  return sub_1D1D5D1E0(v0 + 7);
}

uint64_t sub_1D1D64964()
{
  v1 = *(*v0 + 80);

  return MEMORY[0x1EEE6DFA0](sub_1D1D64A98, v1, 0);
}

uint64_t sub_1D1D64A98()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AutoClimateModel.Thermostat.writeAdaptiveTemperatureSetting(driver:selectedRoom:previouslySelectedRoom:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  v4[9] = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v4[10] = swift_task_alloc();
  v5 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E510, &qword_1D1EABC98);
  v4[14] = swift_task_alloc();
  v4[15] = swift_task_alloc();
  v4[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D64C60, v3, 0);
}

uint64_t sub_1D1D64C60()
{
  v1 = v0[5];
  sub_1D1741C08(v0[6], v0[16], &qword_1EC64E510, &qword_1D1EABC98);
  v2 = v0[16];
  if (v1 == 2)
  {
    v3 = v0[15];
    v4 = v0[11];
    v5 = v0[12];
    sub_1D1741C08(v2, v3, &qword_1EC64E510, &qword_1D1EABC98);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      v6 = v0[15];
      v7 = v0[16];
      v8 = v0[7];
      sub_1D1741A30(v7, &qword_1EC64E510, &qword_1D1EABC98);
      sub_1D1741A30(v6, &qword_1EC64E510, &qword_1D1EABC98);
      sub_1D1741C08(v8, v7, &qword_1EC64E510, &qword_1D1EABC98);
    }

    else
    {
      sub_1D1741A30(v0[15], &qword_1EC64E510, &qword_1D1EABC98);
    }
  }

  else
  {
    v9 = v0[11];
    v10 = v0[12];
    v11 = v0[16];
    sub_1D1741A30(v2, &qword_1EC64E510, &qword_1D1EABC98);
    (*(v10 + 56))(v11, 1, 1, v9);
  }

  v12 = v0[14];
  v13 = v0[11];
  v14 = v0[12];
  sub_1D1741C08(v0[16], v12, &qword_1EC64E510, &qword_1D1EABC98);
  v15 = (*(v14 + 48))(v12, 1, v13);
  v16 = v0[14];
  if (v15 == 1)
  {
    sub_1D1741A30(v16, &qword_1EC64E510, &qword_1D1EABC98);
    v17 = 0;
  }

  else
  {
    v19 = v0[12];
    v18 = v0[13];
    sub_1D1D66490(v16, v18, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643658, &qword_1D1E71D48);
    v20 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D1E739C0;
    sub_1D1D66490(v18, v17 + v20, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  }

  v22 = v0[9];
  v21 = v0[10];
  v23 = v0[8];
  v24 = v0[5];
  v25 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeTimeZone;
  swift_beginAccess();
  v26 = *(v22 + 24);
  v27 = sub_1D1E66C5C();
  (*(*(v27 - 8) + 16))(&v21[v26], v23 + v25, v27);
  *v21 = v24;
  *(v21 + 1) = v17;
  v21[*(v22 + 28)] = 0;
  v28 = swift_task_alloc();
  v0[17] = v28;
  *v28 = v0;
  v28[1] = sub_1D1D64F78;
  v29 = v0[10];

  return sub_1D1D5EF50(v29);
}

uint64_t sub_1D1D64F78()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D1D65088, v1, 0);
}

uint64_t sub_1D1D65088()
{
  v1 = v0[16];
  sub_1D1D52E14(v0[10], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  sub_1D1741A30(v1, &qword_1EC64E510, &qword_1D1EABC98);

  v2 = v0[1];

  return v2();
}

uint64_t AutoClimateModel.Thermostat.writeCleanEnergySettings(_:isUnitTest:)(char a1, char a2)
{
  *(v3 + 128) = v2;
  *(v3 + 50) = a2;
  *(v3 + 49) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1D65180, v2, 0);
}

uint64_t sub_1D1D65180()
{
  if (*(v0 + 50) == 1)
  {
    *(v0 + 56) = *(v0 + 49);
    *(v0 + 57) = 0;
    *(v0 + 72) = 0;
    *(v0 + 80) = 0;
    *(v0 + 64) = 0;
    *(v0 + 88) = 0;
    v1 = swift_task_alloc();
    *(v0 + 136) = v1;
    *v1 = v0;
    v1[1] = sub_1D1D652B8;

    return sub_1D1D61544(v0 + 56, 1);
  }

  else
  {
    *(v0 + 144) = *(*(v0 + 128) + 112);
    sub_1D1E67E1C();
    *(v0 + 152) = sub_1D1E67E0C();
    v4 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1D653C8, v4, v3);
  }
}

uint64_t sub_1D1D652B8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1D653C8()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 128);

  swift_getKeyPath();
  *(v0 + 120) = v1;
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State, &protocol conformance descriptor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v3 = v1 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
  swift_beginAccess();
  v4 = *v3;
  *(v0 + 160) = *v3;
  v5 = *(v3 + 8);
  *(v0 + 168) = v5;
  v6 = *(v3 + 16);
  *(v0 + 176) = v6;
  *(v0 + 184) = *(v3 + 24);
  *(v0 + 51) = *(v3 + 32);
  sub_1D1C2B3B4(v4, v5, v6);

  return MEMORY[0x1EEE6DFA0](sub_1D1D65500, v2, 0);
}

uint64_t sub_1D1D65500()
{
  v1 = *(v0 + 176);
  if (v1 == 1)
  {
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = *(v0 + 51);
    v5 = *(v0 + 184);
    v6 = *(v0 + 168);
    v7 = *(v0 + 161);
    *(v0 + 16) = *(v0 + 49);
    *(v0 + 17) = v7 & 1;
    *(v0 + 24) = v6;
    *(v0 + 32) = v1;
    *(v0 + 40) = v5;
    *(v0 + 48) = v4;
    v8 = swift_task_alloc();
    *(v0 + 192) = v8;
    *v8 = v0;
    v8[1] = sub_1D1D65604;

    return sub_1D1D61544(v0 + 16, 0);
  }
}

uint64_t sub_1D1D65604()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

double sub_1D1D65714@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State, &protocol conformance descriptor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  *a2 = *(v3 + v4);

  return result;
}

uint64_t sub_1D1D657DC(uint64_t *a1)
{
  v2 = *a1;

  return sub_1D1D68428(&v2);
}

double sub_1D1D65818@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1D66394(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State, &protocol conformance descriptor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v4 = v3 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
  swift_beginAccess();
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  *a2 = *v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = *(v4 + 32);
  return sub_1D1C2B3B4(v5, v6, v7);
}

uint64_t sub_1D1D658F4(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  *&v6 = *a1;
  *(&v6 + 1) = v1;
  v7 = v2;
  v8 = v3;
  v9 = v4;
  sub_1D1C2B3B4(v6, v1, v2);
  return sub_1D1D687D8(&v6);
}

unint64_t sub_1D1D65948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
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
    return sub_1D1741A30(a4, &qword_1EC64E500, &qword_1D1EABC60);
  }

  if (v17 < 1)
  {
    return sub_1D1741A30(a4, &qword_1EC64E500, &qword_1D1EABC60);
  }

  result = sub_1D1D52DAC(a4, v15, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  if (v12 >= v17)
  {
    return sub_1D1741A30(a4, &qword_1EC64E500, &qword_1D1EABC60);
  }

LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_1D1D65AD4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1D1D669CC(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_1D1D65B70(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D1E66A7C() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 32) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1D531A4(a1, v10, v11, v1 + v7, v1 + v9, v12);
}

uint64_t sub_1D1D65CAC(uint64_t a1, uint64_t a2)
{
  v52 = a2;
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1D1E6873C();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v60 = MEMORY[0x1E69E7CC0];
    sub_1D178DCE4(0, v7 & ~(v7 >> 63), 0);
    v55 = v60;
    if (v53)
    {
      result = sub_1D1E686DC();
    }

    else
    {
      result = sub_1D1E6869C();
      v9 = *(a1 + 36);
    }

    v57 = result;
    v58 = v9;
    v59 = v53 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v48 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel10Thermostat_homeUUID;
      v49 = a1;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v45 = a1 + 56;
      v46 = v11;
      v43[1] = v2;
      v44 = a1 + 64;
      v47 = v7;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v57;
        v15 = v59;
        v54 = v58;
        sub_1D1790CC8(v57, v58, v59, a1);
        v17 = v16;
        v18 = [v16 uniqueIdentifier];
        sub_1D1E66A5C();

        v19 = [v17 name];
        v20 = sub_1D1E6781C();
        v22 = v21;

        v23 = v6;
        v24 = v51;
        v25 = *(v51 + 24);
        v26 = sub_1D1E66A7C();
        (*(*(v26 - 8) + 16))(v23 + v25, v52 + v48, v26);

        v27 = *(v24 + 20);
        v6 = v23;
        v28 = (v23 + v27);
        *v28 = v20;
        v28[1] = v22;
        v29 = v55;
        v60 = v55;
        v31 = *(v55 + 16);
        v30 = *(v55 + 24);
        if (v31 >= v30 >> 1)
        {
          sub_1D178DCE4((v30 > 1), v31 + 1, 1);
          v29 = v60;
        }

        *(v29 + 16) = v31 + 1;
        v32 = (*(v50 + 80) + 32) & ~*(v50 + 80);
        v55 = v29;
        result = sub_1D1D66490(v23, v29 + v32 + *(v50 + 72) * v31, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
        if (v53)
        {
          a1 = v49;
          if (!v15)
          {
            goto LABEL_42;
          }

          if (sub_1D1E686FC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v47;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E568, &qword_1D1EABE68);
          v12 = sub_1D1E681AC();
          sub_1D1E687AC();
          result = v12(v56, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_1D1716920(v57, v58, v59);
            return v55;
          }
        }

        else
        {
          a1 = v49;
          if (v15)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          v33 = 1 << *(v49 + 32);
          if (v14 >= v33)
          {
            goto LABEL_38;
          }

          v34 = v14 >> 6;
          v35 = *(v45 + 8 * (v14 >> 6));
          if (((v35 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v49 + 36) != v54)
          {
            goto LABEL_40;
          }

          v36 = v35 & (-2 << (v14 & 0x3F));
          if (v36)
          {
            v33 = __clz(__rbit64(v36)) | v14 & 0x7FFFFFFFFFFFFFC0;
            v7 = v47;
          }

          else
          {
            v37 = v34 << 6;
            v38 = v34 + 1;
            v39 = (v44 + 8 * v34);
            v7 = v47;
            while (v38 < (v33 + 63) >> 6)
            {
              v41 = *v39++;
              v40 = v41;
              v37 += 64;
              ++v38;
              if (v41)
              {
                result = sub_1D1716920(v14, v54, 0);
                v33 = __clz(__rbit64(v40)) + v37;
                goto LABEL_33;
              }
            }

            result = sub_1D1716920(v14, v54, 0);
          }

LABEL_33:
          v42 = *(a1 + 36);
          v57 = v33;
          v58 = v42;
          v59 = 0;
          if (v10 == v7)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1D6614C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for MockObserver(0);
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1D1E6873C();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1D1E6873C();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D1D6624C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_1D1E66A7C();
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

uint64_t sub_1D1D66394(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1D663DC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1D55C00(a1, a2, v7, v6);
}

uint64_t sub_1D1D66490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D66500(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    result = _s10ThermostatC23ThermostatServiceConfigVMa(319);
    if (v3 <= 0x3F)
    {
      result = sub_1D1E66C5C();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of AutoClimateModel.Thermostat.startObservation()()
{
  v4 = (*(*v0 + 224) + **(*v0 + 224));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D17C4CF0;

  return v4();
}

uint64_t dispatch thunk of AutoClimateModel.Thermostat.initialSetup()()
{
  v4 = (*(*v0 + 240) + **(*v0 + 240));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D17C4BFC;

  return v4();
}

uint64_t sub_1D1D6693C(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1D1D669CC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v30 = a1;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = 0;
  v34 = a3;
  v10 = 0;
  v11 = *(a3 + 56);
  v29 = a3 + 56;
  v12 = 1 << *(a3 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v11;
  v15 = (v12 + 63) >> 6;
  v31 = (v7 + 8);
  v32 = v15;
LABEL_5:
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v37 = (v14 - 1) & v14;
LABEL_12:
    v19 = v16 | (v10 << 6);
    v20 = *(v34 + 48);
    v35 = v19;
    v36 = *(v20 + 8 * v19);
    v21 = [v36 uniqueIdentifier];
    sub_1D1E66A5C();

    v22 = 0;
    v23 = *(a4 + 16);
    do
    {
      if (v23 == v22)
      {
        (*v31)(v9, v6);

        v15 = v32;
        v14 = v37;
        goto LABEL_5;
      }

      v24 = v22 + 1;
      sub_1D1D66394(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v25 = sub_1D1E6775C();
      v22 = v24;
    }

    while ((v25 & 1) == 0);
    (*v31)(v9, v6);

    *(v30 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
    v15 = v32;
    v26 = __OFADD__(v33++, 1);
    v14 = v37;
    if (v26)
    {
      __break(1u);
LABEL_18:
      v27 = v34;

      sub_1D19E27F8(v30, v28, v33, v27);
      return;
    }
  }

  v17 = v10;
  while (1)
  {
    v10 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v10 >= v15)
    {
      goto LABEL_18;
    }

    v18 = *(v29 + 8 * v10);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v37 = (v18 - 1) & v18;
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1D1D66CA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = *MEMORY[0x1E69E9840];
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = (8 * v11);

  if (v10 > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v33 = v11;
    v34 = v3;
    v32[1] = v32;
    MEMORY[0x1EEE9AC00](v13);
    v36 = v32 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v36, v12);
    v39 = a1;
    v40 = 0;
    v14 = 0;
    v15 = *(a1 + 56);
    v35 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v37 = (v7 + 8);
    v38 = v19;
    v12 = &qword_1EE07D170;
LABEL_6:
    while (v18)
    {
      v20 = __clz(__rbit64(v18));
      v43 = (v18 - 1) & v18;
LABEL_13:
      v23 = v20 | (v14 << 6);
      v24 = *(a1 + 48);
      v41 = v23;
      v42 = *(v24 + 8 * v23);
      v3 = [v42 uniqueIdentifier];
      sub_1D1E66A5C();

      v25 = 0;
      v26 = *(a2 + 16);
      do
      {
        if (v26 == v25)
        {
          (*v37)(v9, v6);

          v19 = v38;
          a1 = v39;
          v18 = v43;
          goto LABEL_6;
        }

        v11 = v25 + 1;
        v3 = (a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v25);
        sub_1D1D66394(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v27 = sub_1D1E6775C();
        v25 = v11;
      }

      while ((v27 & 1) == 0);
      (*v37)(v9, v6);

      *&v36[(v41 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v41;
      a1 = v39;
      v28 = __OFADD__(v40++, 1);
      v19 = v38;
      v18 = v43;
      if (v28)
      {
        __break(1u);
LABEL_19:
        v29 = sub_1D19E27F8(v36, v33, v40, a1);

        return v29;
      }
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {
        goto LABEL_19;
      }

      v22 = *(v35 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v43 = (v22 - 1) & v22;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();

  v29 = sub_1D1D65AD4(v31, v11, a1, a2);

  MEMORY[0x1D3893640](v31, -1, -1);

  return v29;
}

uint64_t sub_1D1D670A8(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = MEMORY[0x1E69E7CD0];
    v37 = MEMORY[0x1E69E7CD0];

    v34 = sub_1D1E686EC();
    v9 = sub_1D1E6877C();
    if (v9)
    {
      v10 = v9;
      v33 = sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      v11 = v10;
      v32 = (v6 + 8);
      do
      {
        v35 = v11;
        swift_dynamicCast();
        v12 = [v36 uniqueIdentifier];
        sub_1D1E66A5C();

        v13 = 0;
        v14 = *(a2 + 16);
        do
        {
          if (v14 == v13)
          {
            (*v32)(v8, v5);

            goto LABEL_5;
          }

          v15 = v13 + 1;
          sub_1D1D66394(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v16 = sub_1D1E6775C();
          v13 = v15;
        }

        while ((v16 & 1) == 0);
        (*v32)(v8, v5);
        v17 = v36;
        v18 = *(v2 + 16);
        if (*(v2 + 24) <= v18)
        {
          sub_1D193C814(v18 + 1);
        }

        v2 = v37;
        result = sub_1D1E684EC();
        v20 = v2 + 56;
        v21 = -1 << *(v2 + 32);
        v22 = result & ~v21;
        v23 = v22 >> 6;
        if (((-1 << v22) & ~*(v2 + 56 + 8 * (v22 >> 6))) != 0)
        {
          v24 = __clz(__rbit64((-1 << v22) & ~*(v2 + 56 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v25 = 0;
          v26 = (63 - v21) >> 6;
          do
          {
            if (++v23 == v26 && (v25 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v27 = v23 == v26;
            if (v23 == v26)
            {
              v23 = 0;
            }

            v25 |= v27;
            v28 = *(v20 + 8 * v23);
          }

          while (v28 == -1);
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
        }

        *(v20 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
        *(*(v2 + 48) + 8 * v24) = v17;
        ++*(v2 + 16);
LABEL_5:
        v11 = sub_1D1E6877C();
      }

      while (v11);
    }
  }

  else
  {
    v29 = v31;
    v30 = sub_1D1D66CA4(a1, a2);
    if (!v29)
    {
      return v30;
    }
  }

  return v2;
}

uint64_t sub_1D1D67428()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1D55ED4(v2, v3, v5, v4);
}

uint64_t sub_1D1D674D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1D57A28(v2, v3, v5, v4);
}

uint64_t sub_1D1D67580()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1D17C4CF0;

  return sub_1D1D59540(v2, v3, v5, v4);
}

uint64_t sub_1D1D676D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D67748@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v1 + 16);
  v7 = v1 + ((*(v3 + 64) + v4 + v5) & ~v4);

  return sub_1D1D542B4(v6, v1 + v5, v7, a1);
}

uint64_t sub_1D1D677E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1B1448C(a1, v4, v5, v7, v6);
}

unint64_t AutoClimateModel.Thermostat.State.UpdateError.UpdateType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t AutoClimateModel.Thermostat.State.UpdateError.hash(into:)()
{
  v1 = *v0;
  MEMORY[0x1D3892850](0);
  return MEMORY[0x1D3892850](v1);
}

uint64_t AutoClimateModel.Thermostat.State.UpdateError.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D67A3C()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D67A90()
{
  v1 = *v0;
  MEMORY[0x1D3892850](0);
  return MEMORY[0x1D3892850](v1);
}

uint64_t sub_1D1D67AD0(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

unint64_t sub_1D1D67B24()
{
  result = qword_1EC64E580;
  if (!qword_1EC64E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E580);
  }

  return result;
}

unint64_t sub_1D1D67B7C()
{
  result = qword_1EC64E588;
  if (!qword_1EC64E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E588);
  }

  return result;
}

uint64_t AutoClimateModel.Thermostat.State.accessoryUUID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State_accessoryUUID;
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1D1D67CC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1D67EC4();
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  return sub_1D1741C08(v3 + v4, a2, &qword_1EC64E538, &qword_1D1EAC240);
}

uint64_t sub_1D1D67D70(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D1741C08(a1, &v6 - v3, &qword_1EC64E538, &qword_1D1EAC240);
  return sub_1D1D67F68(v4);
}

uint64_t sub_1D1D67E1C@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D1D67EC4();
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  return sub_1D1741C08(v5 + v3, a1, &qword_1EC64E538, &qword_1D1EAC240);
}

unint64_t sub_1D1D67EC4()
{
  result = qword_1EC64E508;
  if (!qword_1EC64E508)
  {
    type metadata accessor for AutoClimateModel.Thermostat.State(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E508);
  }

  return result;
}

uint64_t type metadata accessor for AutoClimateModel.Thermostat.State(uint64_t a1)
{
  result = qword_1EC64E5B0;
  if (!qword_1EC64E5B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1D67F68(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v10 - v4;
  v6 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  sub_1D1741C08(v1 + v6, v5, &qword_1EC64E538, &qword_1D1EAC240);
  v7 = sub_1D1D6913C(v5, a1);
  sub_1D1741A30(v5, &qword_1EC64E538, &qword_1D1EAC240);
  if (v7)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v10[-2] = v1;
    v10[-1] = a1;
    v10[2] = v1;
    sub_1D1D67EC4();
    sub_1D1E66C9C();
  }

  else
  {
    sub_1D1741C08(a1, v5, &qword_1EC64E538, &qword_1D1EAC240);
    swift_beginAccess();
    sub_1D1D693DC(v5, v1 + v6);
    swift_endAccess();
  }

  return sub_1D1741A30(a1, &qword_1EC64E538, &qword_1D1EAC240);
}

uint64_t sub_1D1D68140(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v9 - v5;
  sub_1D1741C08(a2, &v9 - v5, &qword_1EC64E538, &qword_1D1EAC240);
  v7 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  sub_1D1D693DC(v6, a1 + v7);
  return swift_endAccess();
}

uint64_t (*sub_1D1D6821C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D1D67EC4();
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D1D67C68(v4);
  return sub_1D1D68324;
}

double sub_1D1D68390@<D0>(void *a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D1D67EC4();
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  *a1 = *(v5 + v3);

  return result;
}

uint64_t sub_1D1D68428(uint64_t *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();

  v5 = sub_1D1D69468(v4, v2);

  if (v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D1D67EC4();
    sub_1D1E66C9C();
  }

  else
  {
    *(v1 + v3) = v2;
  }
}

uint64_t sub_1D1D68548(uint64_t a1, uint64_t a2)
{
  v4 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  *(a1 + v4) = a2;
}

uint64_t (*sub_1D1D685B8(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D1D67EC4();
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D1D68330(v4);
  return sub_1D1D686C0;
}

double sub_1D1D6872C@<D0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  sub_1D1D67EC4();
  sub_1D1E66CAC();

  v3 = v1 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *a1 = *v3;
  *(a1 + 8) = v5;
  *(a1 + 16) = v6;
  *(a1 + 24) = v7;
  *(a1 + 32) = *(v3 + 32);
  return sub_1D1C2B3B4(v4, v5, v6);
}

uint64_t sub_1D1D687D8(__int128 *a1)
{
  v2 = a1[1];
  v13 = *a1;
  v14 = v2;
  v15 = *(a1 + 32);
  v3 = v1 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
  swift_beginAccess();
  v4 = *(v3 + 16);
  v16[0] = *v3;
  v16[1] = v4;
  v17 = *(v3 + 32);
  sub_1D1741C08(v16, v12, &qword_1EC64E548, &qword_1D1EABE08);
  v5 = sub_1D1D6952C(v16, &v13);
  sub_1D1741A30(v16, &qword_1EC64E548, &qword_1D1EABE08);
  if (v5)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v12[0] = v1;
    sub_1D1D67EC4();
    sub_1D1E66C9C();
    sub_1D1741A30(&v13, &qword_1EC64E548, &qword_1D1EABE08);
  }

  else
  {
    v8 = *v3;
    v9 = *(v3 + 8);
    v10 = *(v3 + 16);
    v11 = v14;
    *v3 = v13;
    *(v3 + 16) = v11;
    *(v3 + 32) = v15;
    return sub_1D1C2B470(v8, v9, v10);
  }
}

uint64_t sub_1D1D68964(uint64_t a1, uint64_t a2)
{
  v3 = a1 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
  swift_beginAccess();
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(a2 + 16);
  *v3 = *a2;
  *(v3 + 16) = v7;
  *(v3 + 32) = *(a2 + 32);
  sub_1D1741C08(a2, &v9, &qword_1EC64E548, &qword_1D1EABE08);
  return sub_1D1C2B470(v4, v5, v6);
}

uint64_t (*sub_1D1D68A1C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_getKeyPath();
  v4[5] = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D1D67EC4();
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D1D686CC(v4);
  return sub_1D1D68B24;
}

uint64_t sub_1D1D68B30()
{
  v1 = v0;
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v27 = 0;
  v28 = 0xE000000000000000;
  sub_1D1E6884C();
  v32 = v27;
  v33 = v28;
  MEMORY[0x1D3890F70](0x5649524420202020, 0xEC000000203A5245);
  swift_getKeyPath();
  v27 = v0;
  sub_1D1D67EC4();
  sub_1D1E66CAC();

  v9 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  sub_1D1741C08(v1 + v9, v8, &qword_1EC64E538, &qword_1D1EAC240);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1D1741A30(v8, &qword_1EC64E538, &qword_1D1EAC240);
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E55;
    v12 = 0x6E776F6E6B6E55;
  }

  else
  {
    sub_1D1D69A70(v8, v5);
    sub_1D1741A30(v8, &qword_1EC64E538, &qword_1D1EAC240);
    v13 = AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.description.getter();
    v10 = v14;
    sub_1D1D69AD4(v5);
    v12 = v13;
    v11 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x1D3890F70](v12, v10);

  MEMORY[0x1D3890F70](0x484353202020200ALL, 0xEF203A454C554445);
  swift_getKeyPath();
  v27 = v1;
  sub_1D1E66CAC();

  v15 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__sleepSchedule;
  swift_beginAccess();
  if (*(v1 + v15))
  {
    v27 = *(v1 + v15);
    v16 = AutoClimateModel.Thermostat.WeekdaySchedule.description.getter();
    v18 = v17;
  }

  else
  {
    v18 = 0xE700000000000000;
    v16 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x1D3890F70](v16, v18);

  MEMORY[0x1D3890F70](0xD000000000000013, 0x80000001D1EC8E10);
  swift_getKeyPath();
  v27 = v1;
  sub_1D1E66CAC();

  v19 = v1 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting;
  swift_beginAccess();
  v20 = *(v19 + 16);
  if (v20 == 1)
  {
    v21 = 0xE700000000000000;
  }

  else
  {
    v22 = *(v19 + 32);
    v23 = *(v19 + 24);
    v24 = *(v19 + 8);
    LOWORD(v27) = __PAIR16__(BYTE1(*v19), *v19) & 0x101;
    v28 = v24;
    v29 = v20;
    v30 = v23;
    v31 = v22;
    v11 = AutoClimateModel.Thermostat.CleanEnergySettingConfig.description.getter();
    v21 = v25;
  }

  MEMORY[0x1D3890F70](v11, v21);

  return v32;
}

uint64_t AutoClimateModel.Thermostat.State.deinit()
{
  v1 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State_accessoryUUID;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D1741A30(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings, &qword_1EC64E538, &qword_1D1EAC240);

  sub_1D1C2B470(*(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting), *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting + 8), *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting + 16));
  v3 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State___observationRegistrar;
  v4 = sub_1D1E66CEC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t AutoClimateModel.Thermostat.State.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State_accessoryUUID;
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1D1741A30(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings, &qword_1EC64E538, &qword_1D1EAC240);

  sub_1D1C2B470(*(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting), *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting + 8), *(v0 + OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__cleanEnergySetting + 16));
  v3 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State___observationRegistrar;
  v4 = sub_1D1E66CEC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1D6913C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v20 - v9);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E540, &qword_1D1EABE00);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v20 - v13;
  v15 = *(v12 + 56);
  sub_1D1741C08(a1, &v20 - v13, &qword_1EC64E538, &qword_1D1EAC240);
  sub_1D1741C08(a2, &v14[v15], &qword_1EC64E538, &qword_1D1EAC240);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1D1741C08(v14, v10, &qword_1EC64E538, &qword_1D1EAC240);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1D1D69B30(&v14[v15], v7);
      v18 = _s13HomeDataModel011AutoClimateC0C10ThermostatC25AdaptiveTemperatureConfigV2eeoiySbAG_AGtFZ_0(v10, v7);
      sub_1D1D69AD4(v7);
      sub_1D1D69AD4(v10);
      sub_1D1741A30(v14, &qword_1EC64E538, &qword_1D1EAC240);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1D1D69AD4(v10);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D1741A30(v14, &qword_1EC64E540, &qword_1D1EABE00);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D1741A30(v14, &qword_1EC64E538, &qword_1D1EAC240);
  v17 = 0;
  return v17 & 1;
}

uint64_t sub_1D1D693DC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D69468(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    if (!a2)
    {

      v5 = 0;
      return v5 & 1;
    }

    goto LABEL_5;
  }

  if (!a2)
  {
LABEL_5:

    v5 = 1;
    return v5 & 1;
  }

  swift_bridgeObjectRetain_n();

  v4 = sub_1D177AE98(a1, a2);
  swift_bridgeObjectRelease_n();

  v5 = v4 ^ 1;
  return v5 & 1;
}

uint64_t sub_1D1D6952C(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = *a2;
  v9 = *(a2 + 8);
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  v12 = *(a2 + 32);
  if (v6 != 1)
  {
    v22[0] = *a1;
    v22[1] = v3;
    v22[2] = v6;
    v22[3] = v5;
    v23 = v7;
    if (v10 != 1)
    {
      v17 = v8 & 0x101;
      v18 = v9;
      v19 = v10;
      v20 = v11;
      v21 = v12;
      sub_1D1741C08(a1, v16, &qword_1EC64E548, &qword_1D1EABE08);
      sub_1D1741C08(a2, v16, &qword_1EC64E548, &qword_1D1EABE08);
      sub_1D1C2B3B4(v4, v3, v6);
      v14 = _s13HomeDataModel011AutoClimateC0C10ThermostatC24CleanEnergySettingConfigV2eeoiySbAG_AGtFZ_0(v22, &v17);

      sub_1D1C2B470(v4, v3, v6);
      v13 = v14 ^ 1;
      return v13 & 1;
    }

    sub_1D1741C08(a1, &v17, &qword_1EC64E548, &qword_1D1EABE08);
    sub_1D1741C08(a2, &v17, &qword_1EC64E548, &qword_1D1EABE08);
    sub_1D1C2B3B4(v4, v3, v6);

    goto LABEL_7;
  }

  if (v10 != 1)
  {
    sub_1D1741C08(a1, v22, &qword_1EC64E548, &qword_1D1EABE08);
    sub_1D1741C08(a2, v22, &qword_1EC64E548, &qword_1D1EABE08);
LABEL_7:
    sub_1D1C2B470(v4, v3, v6);
    sub_1D1C2B470(v8, v9, v10);
    v13 = 1;
    return v13 & 1;
  }

  sub_1D1741C08(a1, v22, &qword_1EC64E548, &qword_1D1EABE08);
  sub_1D1741C08(a2, v22, &qword_1EC64E548, &qword_1D1EABE08);
  sub_1D1C2B470(v4, v3, 1);
  v13 = 0;
  return v13 & 1;
}

void sub_1D1D6979C(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1D69A18(319);
    if (v2 <= 0x3F)
    {
      sub_1D1E66CEC();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1D1D69A18(uint64_t a1)
{
  if (!qword_1EC64E5C0)
  {
    type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(255);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC64E5C0);
    }
  }
}

uint64_t sub_1D1D69A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D69AD4(uint64_t a1)
{
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1D69B30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.init(driver:selectedRooms:homeTimeZone:isAllowedToEnableAdaptiveTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  v8 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v9 = *(v8 + 24);
  v10 = sub_1D1E66C5C();
  result = (*(*(v10 - 8) + 32))(&a5[v9], a3, v10);
  a5[*(v8 + 28)] = a4;
  return result;
}

uint64_t sub_1D1D69C58@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CA18, &qword_1D1EABE10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = (&v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1741C08(a1, v10, &qword_1EC64CA18, &qword_1D1EABE10);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1D1741A30(v10, &qword_1EC64CA18, &qword_1D1EABE10);
    return sub_1D1D73C24(v2, a2, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  }

  else
  {
    sub_1D1D73940(v10, v14, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v16 = *v14;
    v17 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
    sub_1D1D73C24(v2 + v17[5], v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v18 = v14[1];
    v19 = v18;
    if (!v18)
    {
      v19 = *(v2 + v17[7]);
    }

    v20 = v17[8];
    v21 = sub_1D1E66C5C();
    (*(*(v21 - 8) + 16))(&a2[v20], v2 + v20, v21);
    v22 = *(v14 + *(v11 + 28));
    swift_bridgeObjectRetain_n();
    sub_1D1D73C8C(v14, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
    v23 = v17[6];
    v24 = v17[7];
    *a2 = v16;
    result = sub_1D1D73940(v7, &a2[v17[5]], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    *&a2[v23] = v18;
    *&a2[v24] = v19;
    a2[v17[9]] = v22;
  }

  return result;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.init(driver:currentRoom:selectedRooms:lastSelectedRooms:homeTimeZone:isAllowedToEnableAdaptiveTemperature:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char *a7@<X8>)
{
  v14 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v15 = v14[6];
  v16 = v14[7];
  *a7 = a1;
  sub_1D1D73940(a2, &a7[v14[5]], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  *&a7[v15] = a3;
  *&a7[v16] = a4;
  v17 = v14[8];
  v18 = sub_1D1E66C5C();
  result = (*(*(v18 - 8) + 32))(&a7[v17], a5, v18);
  a7[v14[9]] = a6;
  return result;
}

id sub_1D1D6A020()
{
  v1 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v0;
  v24 = MEMORY[0x1E69E7CC0];
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = *(v2 + 24);
    v23 = *(v2 + 20);
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    v22 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D1D73C24(v9, v5, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      v11 = *&v5[v8];
      v12 = objc_allocWithZone(MEMORY[0x1E696CCC0]);
      v13 = sub_1D1E661FC();
      v14 = sub_1D1E661FC();
      v15 = [v12 initWithStartTime:v13 endTime:v14 daysOfTheWeek:v11];

      v16 = sub_1D1D73C8C(v5, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      if (v15)
      {
        MEMORY[0x1D3891220](v16);
        if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D1E67C5C();
        }

        sub_1D1E67CAC();
        v22 = v24;
      }

      v9 += v10;
      --v7;
    }

    while (v7);
  }

  else
  {
    v22 = MEMORY[0x1E69E7CC0];
  }

  v17 = objc_allocWithZone(MEMORY[0x1E696CCB8]);
  sub_1D1D738F4();
  v18 = sub_1D1E67BFC();

  v19 = [v17 initWithScheduleRules_];

  return v19;
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.description.getter()
{
  v1 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v22 = 0x5B203A53454C5552;
  v23 = 0xE800000000000000;
  v6 = *(v5 + 16);
  v7 = MEMORY[0x1E69E7CC0];
  if (v6)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v6, 0);
    v7 = v21;
    v8 = v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v9 = *(v2 + 72);
    do
    {
      sub_1D1D73C24(v8, v4, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      v10 = AutoClimateModel.Thermostat.WeekdayScheduleRule.description.getter();
      v12 = v11;
      sub_1D1D73C8C(v4, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      v21 = v7;
      v14 = *(v7 + 16);
      v13 = *(v7 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D178CD24((v13 > 1), v14 + 1, 1);
        v7 = v21;
      }

      *(v7 + 16) = v14 + 1;
      v15 = v7 + 16 * v14;
      *(v15 + 32) = v10;
      *(v15 + 40) = v12;
      v8 += v9;
      --v6;
    }

    while (v6);
  }

  v16 = MEMORY[0x1D3891260](v7, MEMORY[0x1E69E6158]);
  v18 = v17;

  MEMORY[0x1D3890F70](v16, v18);

  MEMORY[0x1D3890F70](93, 0xE100000000000000);
  return v22;
}

uint64_t HMAdaptiveTemperatureDriver.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x6E776F6E6B6E55;
    case 1:
      return 0x65725020656D6F48;
    case 2:
      return 0x7250206C61636F4CLL;
  }

  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC8E80);
  type metadata accessor for HMAdaptiveTemperatureDriver(0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](46, 0xE100000000000000);
  result = sub_1D1E68AFC();
  __break(1u);
  return result;
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.description.getter()
{
  v30 = sub_1D1E66BBC();
  v1 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v29 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = 0;
  v33 = 0xE000000000000000;
  sub_1D1E6884C();
  v3 = MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC8EA0);
  v4 = MEMORY[0x1D388F820](v3);
  MEMORY[0x1D3890F70](v4);

  MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC8EC0);
  v5 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v6 = MEMORY[0x1D388F820]();
  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC8EE0);
  v7 = *(v0 + *(v5 + 24));
  v8 = HMDaysOfTheWeek.label.getter(v7);
  MEMORY[0x1D3890F70](v8);

  MEMORY[0x1D3890F70](0x4144202020200A5DLL, 0xED00005B203A5359);
  v9 = _s13HomeDataModel011AutoClimateC0C10ThermostatC19WeekdayScheduleRuleV15getSelectedDays4fromSayAG3DayOGSo15HMDaysOfTheWeekV_tFZ_0(v7);
  v10 = *(v9 + 2);
  if (v10)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v10, 0);
    v11 = v31;
    v12 = (v1 + 8);
    v13 = 32;
    while (1)
    {
      v14 = v9[v13];
      v15 = v29;
      sub_1D1E66B9C();
      v16 = sub_1D1E66B2C();
      result = (*v12)(v15, v30);
      if (*(v16 + 16) <= v14)
      {
        break;
      }

      v18 = v9;
      v19 = v16 + 16 * v14;
      v20 = *(v19 + 32);
      v21 = *(v19 + 40);

      v31 = v11;
      v23 = *(v11 + 16);
      v22 = *(v11 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D178CD24((v22 > 1), v23 + 1, 1);
        v11 = v31;
      }

      *(v11 + 16) = v23 + 1;
      v24 = v11 + 16 * v23;
      *(v24 + 32) = v20;
      *(v24 + 40) = v21;
      ++v13;
      --v10;
      v9 = v18;
      if (!v10)
      {

        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {

    v11 = MEMORY[0x1E69E7CC0];
LABEL_9:
    v25 = MEMORY[0x1D3891260](v11, MEMORY[0x1E69E6158]);
    v27 = v26;

    MEMORY[0x1D3890F70](v25, v27);

    MEMORY[0x1D3890F70](93, 0xE100000000000000);
    return v32;
  }

  return result;
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.init(hmweekdaySchedule:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 scheduleRules];
  sub_1D1D738F4();
  v9 = sub_1D1E67C1C();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:

    v13 = MEMORY[0x1E69E7CC0];
LABEL_14:
    *a2 = v13;
    return result;
  }

  v10 = sub_1D1E6873C();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  v27 = MEMORY[0x1E69E7CC0];
  result = sub_1D178DD28(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v24 = a1;
    v25 = a2;
    v12 = 0;
    v13 = v27;
    v14 = v9;
    v26 = v9 & 0xC000000000000001;
    v15 = v9;
    v16 = v10;
    do
    {
      if (v26)
      {
        v17 = MEMORY[0x1D3891EF0](v12, v14);
      }

      else
      {
        v17 = *(v14 + 8 * v12 + 32);
      }

      v18 = v17;
      v19 = [v17 startTime];
      sub_1D1E6621C();

      v20 = [v18 endTime];
      sub_1D1E6621C();

      v21 = [v18 daysOfTheWeek];
      *&v7[*(v4 + 24)] = v21;
      v27 = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1D178DD28((v22 > 1), v23 + 1, 1);
        v13 = v27;
      }

      ++v12;
      *(v13 + 16) = v23 + 1;
      sub_1D1D73940(v7, v13 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v23, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      v14 = v15;
    }

    while (v16 != v12);

    a2 = v25;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x203A524556495244, 0xE800000000000000);
  v1 = HMAdaptiveTemperatureDriver.description.getter(*v0);
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](0x534D4F4F52200A20, 0xEA0000000000203ALL);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E5D0, &qword_1D1EAC1A0);
  v2 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](0x4F5A454D4954202CLL, 0xEC000000203A454ELL);
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  sub_1D1E66C5C();
  sub_1D1D739A8(&qword_1EC643940, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE8]);
  v4 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v4);

  MEMORY[0x1D3890F70](0x4F4C4C415349202CLL, 0xED0000203A444557);
  if (*(v0 + *(v3 + 28)))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + *(v3 + 28)))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v5, v6);

  return 0;
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EC8F00);
  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v3, v4);

  MEMORY[0x1D3890F70](0xD00000000000001ALL, 0x80000001D1EC8F20);
  if (v2)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v5, v6);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EC8F40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E5D8, &unk_1D1EAC1A8);
  v7 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v7);

  return 0;
}

double AutoClimateModel.Thermostat.CleanEnergySettingConfig.copyApplying(electricityRatesEnabled:)@<D0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 1);
  v4 = *(v2 + 8);
  v5 = *(v2 + 32);
  *a2 = a1;
  *(a2 + 1) = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = *(v2 + 16);
  *(a2 + 32) = v5;

  return result;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x203A524556495244, 0xE800000000000000);
  v1 = HMAdaptiveTemperatureDriver.description.getter(*v0);
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC8F60);
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v3 = v0 + *(v2 + 20);
  sub_1D1E6884C();

  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  MEMORY[0x1D3890F70](*&v3[*(v4 + 20)], *&v3[*(v4 + 20) + 8]);
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC8F80);
  sub_1D1E66A7C();
  sub_1D1D739A8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v5 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v5);

  MEMORY[0x1D3890F70](0x203A454D414ELL, 0xE600000000000000);

  MEMORY[0x1D3890F70](0x534D4F4F52200A20, 0xEA0000000000203ALL);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E5D0, &qword_1D1EAC1A0);
  v6 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](0xD00000000000002ALL, 0x80000001D1EC8FA0);
  if (*(v0 + *(v2 + 36)))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + *(v2 + 36)))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v7, v8);

  return 0;
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.rules.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.init(startTime:endTime:daysOfWeek:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D1E662EC();
  v9 = *(*(v8 - 8) + 32);
  v9(a4, a1, v8);
  v10 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  result = (v9)(a4 + *(v10 + 20), a2, v8);
  *(a4 + *(v10 + 24)) = a3;
  return result;
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.init()@<X0>(uint64_t *a1@<X8>)
{
  v37 = a1;
  v1 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v2 = *(v1 - 8);
  v31 = v1 - 8;
  v35 = v2;
  v36 = v2;
  MEMORY[0x1EEE9AC00](v1 - 8);
  v34 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643968, &qword_1D1E72CE0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_1D1E662EC();
  v32 = *(v10 - 8);
  v33 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v30 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - v13;
  sub_1D1E66B9C();
  v15 = sub_1D1E66BBC();
  v16 = *(*(v15 - 8) + 56);
  v16(v9, 0, 1, v15);
  v17 = sub_1D1E66C5C();
  v18 = *(*(v17 - 8) + 56);
  v18(v6, 1, 1, v17);
  sub_1D1E662BC();
  sub_1D1E66B9C();
  v16(v9, 0, 1, v15);
  v18(v6, 1, 1, v17);
  v19 = v30;
  sub_1D1E662BC();
  v21 = v32;
  v20 = v33;
  v22 = *(v32 + 16);
  v23 = v34;
  v24 = v14;
  v22(v34, v14, v33);
  v25 = v31;
  v22((v23 + *(v31 + 28)), v19, v20);
  *(v23 + *(v25 + 32)) = 127;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431E0, &qword_1D1E71D50);
  v26 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1D1E739C0;
  sub_1D1D73940(v23, v27 + v26, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  v28 = *(v21 + 8);
  v28(v19, v20);
  result = (v28)(v24, v20);
  *v37 = v27;
  return result;
}

void AutoClimateModel.Thermostat.WeekdayScheduleRule.init(hmweekdayScheduleRule:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 startTime];
  sub_1D1E6621C();

  v5 = [a1 endTime];
  v6 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  sub_1D1E6621C();

  v7 = [a1 daysOfTheWeek];
  *(a2 + *(v6 + 24)) = v7;
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  v7 = *(*v1 + 16);
  result = MEMORY[0x1D3892850](v7);
  if (v7)
  {
    v9 = *(v2 + 24);
    v12[1] = *(v2 + 20);
    v10 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    do
    {
      sub_1D1D73C24(v10, v5, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      sub_1D1E662EC();
      sub_1D1D739A8(&qword_1EC643040, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      MEMORY[0x1D3892850](*&v5[v9]);
      result = sub_1D1D73C8C(v5, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1D1D6B9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656C7572 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1D6BA34(uint64_t a1)
{
  v2 = sub_1D1D739F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D6BA70(uint64_t a1)
{
  v2 = sub_1D1D739F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E5E0, &qword_1D1EAC1B8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D739F0();

  sub_1D1E6930C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E5F0, &qword_1D1EAC1C0);
  sub_1D1D73A44(&qword_1EC64E5F8, &qword_1EC64E600, &protocol conformance descriptor for AutoClimateModel.Thermostat.WeekdayScheduleRule, MEMORY[0x1E69E6300]);
  sub_1D1E68F1C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D176FDE8(v3, v1);
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.WeekdaySchedule.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E608, &qword_1D1EAC1C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D739F0();
  sub_1D1E692FC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E5F0, &qword_1D1EAC1C0);
    sub_1D1D73A44(&qword_1EC64E610, &qword_1EC64E618, &protocol conformance descriptor for AutoClimateModel.Thermostat.WeekdayScheduleRule, MEMORY[0x1E69E6330]);
    sub_1D1E68D7C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1D6BE68()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D176FDE8(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D6BEB8(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  sub_1D176FDE8(v4, v2);
  return sub_1D1E6926C();
}

void *static AutoClimateModel.Thermostat.WeekdayScheduleRule.Day.allDays.getter()
{
  v0 = sub_1D1E66BBC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66B9C();
  v4 = sub_1D1E66AEC();
  (*(v1 + 8))(v3, v0);
  if (v4 == 1)
  {
    return &unk_1F4D66250;
  }

  else
  {
    return &unk_1F4D66278;
  }
}

uint64_t sub_1D1D6C064(uint64_t (*a1)(uint64_t))
{
  v3 = sub_1D1E66BBC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = sub_1D1E66B9C();
  v9 = a1(v8);
  result = (*(v4 + 8))(v6, v3);
  if (*(v9 + 16) <= v7)
  {
    __break(1u);
  }

  else
  {
    v11 = *(v9 + 16 * v7 + 32);

    return v11;
  }

  return result;
}

unint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.Day.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 7;
  if (result < 7)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D1D6C190()
{
  v1 = sub_1D1E66BBC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  sub_1D1E66B9C();
  v6 = sub_1D1E66B2C();
  result = (*(v2 + 8))(v4, v1);
  if (*(v6 + 16) <= v5)
  {
    __break(1u);
  }

  else
  {
    v8 = *(v6 + 16 * v5 + 32);

    return v8;
  }

  return result;
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.endTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0) + 20);
  v4 = sub_1D1E662EC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.daysOfWeek.setter(uint64_t a1)
{
  result = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

char *AutoClimateModel.Thermostat.WeekdayScheduleRule.days.getter()
{
  v1 = *(v0 + *(type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0) + 24));

  return _s13HomeDataModel011AutoClimateC0C10ThermostatC19WeekdayScheduleRuleV15getSelectedDays4fromSayAG3DayOGSo15HMDaysOfTheWeekV_tFZ_0(v1);
}

uint64_t HMDaysOfTheWeek.label.getter(uint64_t a1)
{
  result = 83;
  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        return result;
      }

      if (a1 == 127)
      {
        return 5000257;
      }

      return 0x6E776F6E6B6E55;
    }

    if (a1 != 16)
    {
      if (a1 == 32)
      {
        return 70;
      }

      return 0x6E776F6E6B6E55;
    }

    return 84;
  }

  if (a1 > 3)
  {
    if (a1 != 4)
    {
      if (a1 == 8)
      {
        return 87;
      }

      return 0x6E776F6E6B6E55;
    }

    return 84;
  }

  if (a1 == 1)
  {
    return result;
  }

  if (a1 == 2)
  {
    return 77;
  }

  return 0x6E776F6E6B6E55;
}

BOOL static AutoClimateModel.Thermostat.WeekdayScheduleRule.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (MEMORY[0x1D388F840]() & 1) != 0 && (v4 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0), (MEMORY[0x1D388F840](a1 + *(v4 + 20), a2 + *(v4 + 20))))
  {
    return *(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1D6C5DC()
{
  v1 = 0x656D6954646E65;
  if (*v0 != 1)
  {
    v1 = 0x6557664F73796164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D69547472617473;
  }
}

uint64_t sub_1D1D6C640@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D74E58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D6C668(uint64_t a1)
{
  v2 = sub_1D1D73AE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D6C6A4(uint64_t a1)
{
  v2 = sub_1D1D73AE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E620, &qword_1D1EAC1D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73AE0();
  sub_1D1E6930C();
  v14 = 0;
  sub_1D1E662EC();
  sub_1D1D739A8(&qword_1EC64E630, MEMORY[0x1E6968278], MEMORY[0x1E6968280]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
    v13 = 1;
    sub_1D1E68F1C();
    v11[1] = *(v3 + *(v9 + 24));
    v12 = 2;
    type metadata accessor for HMDaysOfTheWeek(0);
    sub_1D1D739A8(&qword_1EC64E638, type metadata accessor for HMDaysOfTheWeek, &protocol conformance descriptor for HMDaysOfTheWeek);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.hash(into:)(uint64_t a1)
{
  sub_1D1E662EC();
  sub_1D1D739A8(&qword_1EC643040, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  sub_1D1E676EC();
  v2 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  sub_1D1E676EC();
  return MEMORY[0x1D3892850](*(v1 + *(v2 + 24)));
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E662EC();
  sub_1D1D739A8(&qword_1EC643040, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  sub_1D1E676EC();
  v1 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v0 + *(v1 + 24)));
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.WeekdayScheduleRule.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = sub_1D1E662EC();
  v24 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v21 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E640, &qword_1D1EAC1D8);
  v26 = *(v8 - 8);
  v27 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73AE0();
  v28 = v10;
  v14 = v29;
  sub_1D1E692FC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a1;
  v22 = v13;
  v33 = 0;
  sub_1D1D739A8(&qword_1EC64E648, MEMORY[0x1E6968278], MEMORY[0x1E6968298]);
  v15 = v25;
  sub_1D1E68D7C();
  v25 = *(v24 + 32);
  (v25)(v22, v15, v3);
  v32 = 1;
  sub_1D1E68D7C();
  v16 = v11;
  v17 = *(v11 + 20);
  v18 = v22;
  (v25)(&v22[v17], v6, v3);
  type metadata accessor for HMDaysOfTheWeek(0);
  v31 = 2;
  sub_1D1D739A8(&qword_1EC64E650, type metadata accessor for HMDaysOfTheWeek, &protocol conformance descriptor for HMDaysOfTheWeek);
  v19 = v28;
  sub_1D1E68D7C();
  (*(v26 + 8))(v19, v27);
  *(v18 + *(v16 + 24)) = v30;
  sub_1D1D73C24(v18, v23, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1D1D73C8C(v18, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
}

uint64_t sub_1D1D6CFA4(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E662EC();
  sub_1D1D739A8(&qword_1EC643040, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v1 + *(a1 + 24)));
  return sub_1D1E6926C();
}

uint64_t sub_1D1D6D070(uint64_t a1, uint64_t a2)
{
  sub_1D1E662EC();
  sub_1D1D739A8(&qword_1EC643040, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  return MEMORY[0x1D3892850](*(v2 + *(a2 + 24)));
}

uint64_t sub_1D1D6D124(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E662EC();
  sub_1D1D739A8(&qword_1EC643040, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v2 + *(a2 + 24)));
  return sub_1D1E6926C();
}

double static AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.drivers.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t static AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.drivers.setter(void *a1)
{
  swift_beginAccess();
  off_1EC64E5C8 = a1;
}

uint64_t sub_1D1D6D52C(void **a1)
{
  v1 = *a1;

  swift_beginAccess();
  off_1EC64E5C8 = v1;
}

unint64_t sub_1D1D6D5DC()
{
  v1 = 0x726576697264;
  v2 = 0x656D6954656D6F68;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000024;
  }

  if (*v0)
  {
    v1 = 0x64657463656C6573;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D1D6D66C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D74F80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D6D694(uint64_t a1)
{
  v2 = sub_1D1D73B34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D6D6D0(uint64_t a1)
{
  v2 = sub_1D1D73B34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E658, &qword_1D1EAC1E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73B34();
  sub_1D1E6930C();
  v11 = *v3;
  HIBYTE(v10) = 0;
  type metadata accessor for HMAdaptiveTemperatureDriver(0);
  sub_1D1D739A8(&qword_1EC64E668, type metadata accessor for HMAdaptiveTemperatureDriver, &protocol conformance descriptor for HMAdaptiveTemperatureDriver);
  sub_1D1E68F1C();
  if (!v2)
  {
    v11 = v3[1];
    HIBYTE(v10) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E670, &qword_1D1EAC1E8);
    sub_1D1D73B88(&qword_1EC64E678, &qword_1EC64E680, &protocol conformance descriptor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig, MEMORY[0x1E69E6300]);
    sub_1D1E68E5C();
    type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
    LOBYTE(v11) = 2;
    sub_1D1E66C5C();
    sub_1D1D739A8(&qword_1EC64E688, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    sub_1D1E68F1C();
    LOBYTE(v11) = 3;
    sub_1D1E68EDC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.hash(into:)(uint64_t a1)
{
  MEMORY[0x1D3892850](*v1);
  v3 = v1[1];
  sub_1D1E6922C();
  if (v3)
  {
    sub_1D176FF94(a1, v3);
  }

  type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  sub_1D1E66C5C();
  sub_1D1D739A8(&qword_1EC643958, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1D1E676EC();
  return sub_1D1E6922C();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.hashValue.getter()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](*v0);
  v1 = v0[1];
  sub_1D1E6922C();
  if (v1)
  {
    sub_1D176FF94(v3, v1);
  }

  type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  sub_1D1E66C5C();
  sub_1D1D739A8(&qword_1EC643958, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1D1E676EC();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = sub_1D1E66C5C();
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E690, &unk_1D1EAC1F0);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v26 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1D1D73B34();
  v13 = v25;
  sub_1D1E692FC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(v26);
  }

  v25 = v5;
  v14 = v11;
  v15 = v23;
  type metadata accessor for HMAdaptiveTemperatureDriver(0);
  v27 = 0;
  sub_1D1D739A8(&qword_1EC64E698, type metadata accessor for HMAdaptiveTemperatureDriver, &protocol conformance descriptor for HMAdaptiveTemperatureDriver);
  v16 = v24;
  sub_1D1E68D7C();
  *v14 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E670, &qword_1D1EAC1E8);
  v27 = 1;
  sub_1D1D73B88(&qword_1EC64E6A0, &qword_1EC64E6A8, &protocol conformance descriptor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig, MEMORY[0x1E69E6330]);
  sub_1D1E68CBC();
  v17 = v15;
  *(v14 + 1) = v28;
  LOBYTE(v28) = 2;
  sub_1D1D739A8(&qword_1EC64E6B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
  v18 = v25;
  sub_1D1E68D7C();
  (*(v22 + 32))(&v14[*(v9 + 24)], v18, v3);
  LOBYTE(v28) = 3;
  LOBYTE(v18) = sub_1D1E68D3C();
  (*(v17 + 8))(v8, v16);
  v14[*(v9 + 28)] = v18 & 1;
  sub_1D1D73C24(v14, v21, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
  __swift_destroy_boxed_opaque_existential_1(v26);
  return sub_1D1D73C8C(v14, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
}

uint64_t sub_1D1D6E074(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1D3892850](*v2);
  v4 = v2[1];
  sub_1D1E6922C();
  if (v4)
  {
    sub_1D176FF94(a1, v4);
  }

  sub_1D1E66C5C();
  sub_1D1D739A8(&qword_1EC643958, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1D1E676EC();
  return sub_1D1E6922C();
}

uint64_t sub_1D1D6E150(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](*v2);
  v3 = v2[1];
  sub_1D1E6922C();
  if (v3)
  {
    sub_1D176FF94(v5, v3);
  }

  sub_1D1E66C5C();
  sub_1D1D739A8(&qword_1EC643958, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1D1E676EC();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

double AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.selectedRooms.getter()
{
  type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);

  return result;
}

uint64_t sub_1D1D6E318(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v5 = *(v4 + 24);

  *(a2 + v5) = v3;
  if (*a2 == 2 && v3 != 0)
  {
    v8 = *(v4 + 28);

    *(a2 + v8) = v3;
  }

  return result;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.selectedRooms.setter(uint64_t a1)
{
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v4 = *(v3 + 24);

  *(v1 + v4) = a1;
  if (*v1 == 2 && a1 != 0)
  {
    v7 = *(v3 + 28);

    *(v1 + v7) = a1;
  }

  return result;
}

uint64_t (*AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.selectedRooms.modify(uint64_t a1))(uint64_t result, char a2)
{
  *a1 = v1;
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  *(a1 + 8) = v3;
  *(a1 + 16) = *(v3 + 24);
  return sub_1D1D6E464;
}

uint64_t sub_1D1D6E464(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    if (**result == 2)
    {
      v3 = *(v2 + *(result + 16));
      if (v3)
      {
        v4 = *(*(result + 8) + 28);

        *(v2 + v4) = v3;
      }
    }
  }

  return result;
}

double AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.lastSelectedRooms.getter()
{
  type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);

  return result;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.lastSelectedRooms.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.homeTimeZone.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0) + 32);
  v4 = sub_1D1E66C5C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.selectedRoom.getter@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E510, &qword_1D1EABC98);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  if (*v1 == 2)
  {
    v10 = *(v1 + *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0) + 24));
    if (v10 && *(v10 + 16))
    {
      sub_1D1D73C24(v10 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), a1, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v11 = *(v28 + 56);
      v12 = a1;
      v13 = 0;
LABEL_11:

      return v11(v12, v13, 1, v4);
    }

LABEL_10:
    v11 = *(v28 + 56);
    v12 = a1;
    v13 = 1;
    goto LABEL_11;
  }

  if (qword_1EC642408 != -1)
  {
LABEL_27:
    swift_once();
  }

  v14 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v15 = v2 + *(v14 + 20);
  v16 = AutoClimateModel.localPresenceRoomConfigs(for:)();
  if (!v16)
  {
    goto LABEL_10;
  }

  v17 = v16;
  v18 = *(v2 + *(v14 + 28));
  if (v18 && *(v18 + 16))
  {
    sub_1D1D73C24(v18 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v9, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v19 = *(v28 + 56);
    v28 += 56;
    v19(v9, 0, 1, v4);

    sub_1D1D73940(v9, a1, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    return (v19)(a1, 0, 1, v4);
  }

  else
  {
    v26 = *(v28 + 56);
    v27 = v28 + 56;
    v26(v9, 1, 1, v4);
    v21 = 0;
    v22 = *(v17 + 16);
    while (v22 != v21)
    {
      if (v21 >= *(v17 + 16))
      {
        __break(1u);
        goto LABEL_27;
      }

      v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig;
      sub_1D1D73C24(v17 + ((*(v28 + 80) + 32) & ~*(v28 + 80)) + *(v28 + 72) * v21++, v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v23 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D1D73C8C(v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      if (v23)
      {

        sub_1D1D73C24(v15, a1, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
LABEL_21:
        v24 = 0;
        goto LABEL_22;
      }
    }

    v29 = v17;

    sub_1D1D71C88(&v29);

    if (*(v29 + 16))
    {
      sub_1D1D73C24(v29 + ((*(v28 + 80) + 32) & ~*(v28 + 80)), a1, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);

      goto LABEL_21;
    }

    v24 = 1;
LABEL_22:
    v26(a1, v24, 1, v4);
    result = (*(v28 + 48))(v9, 1, v4);
    if (result != 1)
    {
      return sub_1D1741A30(v9, &qword_1EC64E510, &qword_1D1EABC98);
    }
  }

  return result;
}

uint64_t sub_1D1D6EAE8@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = a1(0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) + 20));

  return v1;
}

uint64_t sub_1D1D6EBC4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.description.getter()
{
  sub_1D1E6884C();

  v1 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  MEMORY[0x1D3890F70](*(v0 + *(v1 + 20)), *(v0 + *(v1 + 20) + 8));
  MEMORY[0x1D3890F70](0xD000000000000015, 0x80000001D1EC8F80);
  sub_1D1E66A7C();
  sub_1D1D739A8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v2 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v2);

  return 0x203A454D414ELL;
}

uint64_t static AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 0;
  }

  return sub_1D1E6904C();
}

uint64_t static AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (!v8 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D1D6EE60()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x4449656D6F68;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1D1D6EEB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D750F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D6EEDC(uint64_t a1)
{
  v2 = sub_1D1D73CEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D6EF18(uint64_t a1)
{
  v2 = sub_1D1D73CEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E6B8, &qword_1D1EAC200);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73CEC();
  sub_1D1E6930C();
  v11 = 0;
  sub_1D1E66A7C();
  sub_1D1D739A8(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v1)
  {
    type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
    v10 = 1;
    sub_1D1E68ECC();
    v9 = 2;
    sub_1D1E68F1C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1D739A8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  sub_1D1E678EC();
  return sub_1D1E676EC();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D739A8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  sub_1D1E678EC();
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v32 = sub_1D1E66A7C();
  v29 = *(v32 - 8);
  v4 = MEMORY[0x1EEE9AC00](v32);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v24 - v7;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E6C8, &qword_1D1EAC208);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v24 - v8;
  v10 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73CEC();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v26 = v12;
  v27 = a1;
  v25 = v6;
  v36 = 0;
  v13 = sub_1D1D739A8(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v31;
  v15 = v32;
  sub_1D1E68D7C();
  v24 = v13;
  v16 = *(v29 + 32);
  v16(v26, v14, v15);
  v35 = 1;
  v17 = sub_1D1E68D2C();
  v31 = v16;
  v18 = &v26[*(v10 + 20)];
  *v18 = v17;
  v18[1] = v19;
  v34 = 2;
  v20 = v25;
  sub_1D1E68D7C();
  (*(v30 + 8))(v9, v33);
  v21 = *(v10 + 24);
  v22 = v26;
  (v31)(&v26[v21], v20, v15);
  sub_1D1D73C24(v22, v28, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_1D1D73C8C(v22, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
}

uint64_t sub_1D1D6F70C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t sub_1D1D6F7A0(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D739A8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E678EC();
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1D6F864(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D1D739A8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E678EC();
  return sub_1D1E676EC();
}

uint64_t sub_1D1D6F918(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D739A8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E678EC();
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D1D6FA08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 0;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

uint64_t sub_1D1D6FA3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 20);
  v5 = *(a2 + v4);
  v6 = *(a2 + v4 + 8);
  v7 = (a1 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  else
  {
    return (sub_1D1E6904C() ^ 1) & 1;
  }
}

uint64_t sub_1D1D6FA94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 20);
  if (*(a1 + v3) == *(a2 + v3) && *(a1 + v3 + 8) == *(a2 + v3 + 8))
  {
    return 1;
  }

  else
  {
    return (sub_1D1E6904C() ^ 1) & 1;
  }
}

uint64_t sub_1D1D6FAEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 20);
  v5 = *(a2 + v4);
  v6 = *(a2 + v4 + 8);
  v7 = (a1 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 0;
  }

  else
  {
    return sub_1D1E6904C();
  }
}

double AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.copyApplying(driver:selectedRooms:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  sub_1D1D73C24(v3 + v7[5], &a3[v7[5]], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  v8 = v7[8];
  v9 = sub_1D1E66C5C();
  (*(*(v9 - 8) + 16))(&a3[v8], v3 + v8, v9);
  v10 = *(v3 + v7[9]);
  v11 = v7[6];
  v12 = v7[7];
  *a3 = a1;
  *&a3[v11] = a2;
  *&a3[v12] = 0;
  a3[v7[9]] = v10;

  return result;
}

unint64_t sub_1D1D6FC00()
{
  v1 = *v0;
  v2 = 0x726576697264;
  v3 = 0xD000000000000011;
  v4 = 0x656D6954656D6F68;
  if (v1 != 4)
  {
    v4 = 0xD000000000000024;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x52746E6572727563;
  if (v1 != 1)
  {
    v5 = 0x64657463656C6573;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_1D1D6FCD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D75214(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D6FD00(uint64_t a1)
{
  v2 = sub_1D1D73D40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D6FD3C(uint64_t a1)
{
  v2 = sub_1D1D73D40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E6D0, &qword_1D1EAC210);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73D40();
  sub_1D1E6930C();
  v13 = *v3;
  v12 = 0;
  type metadata accessor for HMAdaptiveTemperatureDriver(0);
  sub_1D1D739A8(&qword_1EC64E668, type metadata accessor for HMAdaptiveTemperatureDriver, &protocol conformance descriptor for HMAdaptiveTemperatureDriver);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
    LOBYTE(v13) = 1;
    type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
    sub_1D1D739A8(&qword_1EC64E680, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig, &protocol conformance descriptor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    sub_1D1E68F1C();
    v13 = *(v3 + *(v9 + 24));
    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E670, &qword_1D1EAC1E8);
    sub_1D1D73B88(&qword_1EC64E678, &qword_1EC64E680, &protocol conformance descriptor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig, MEMORY[0x1E69E6300]);
    sub_1D1E68E5C();
    v13 = *(v3 + *(v9 + 28));
    v12 = 3;
    sub_1D1E68E5C();
    LOBYTE(v13) = 4;
    sub_1D1E66C5C();
    sub_1D1D739A8(&qword_1EC64E688, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BC8]);
    sub_1D1E68F1C();
    LOBYTE(v13) = 5;
    sub_1D1E68EDC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.hash(into:)(uint64_t a1)
{
  MEMORY[0x1D3892850](*v1);
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  sub_1D1E66A7C();
  sub_1D1D739A8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  sub_1D1E678EC();
  sub_1D1E676EC();
  v4 = *(v1 + *(v3 + 24));
  sub_1D1E6922C();
  if (v4)
  {
    sub_1D176FF94(a1, v4);
  }

  v5 = *(v1 + *(v3 + 28));
  sub_1D1E6922C();
  if (v5)
  {
    sub_1D176FF94(a1, v5);
  }

  sub_1D1E66C5C();
  sub_1D1D739A8(&qword_1EC643958, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1D1E676EC();
  return sub_1D1E6922C();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.hashValue.getter()
{
  sub_1D1E6920C();
  AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_1D1E66C5C();
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E6E0, &qword_1D1EAC218);
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v29 - v11;
  v13 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1D1D73D40();
  v36 = v12;
  v17 = v37;
  sub_1D1E692FC();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
    return swift_bridgeObjectRelease_n();
  }

  else
  {
    v37 = v6;
    v18 = v34;
    v19 = v15;
    type metadata accessor for HMAdaptiveTemperatureDriver(0);
    v39 = 0;
    sub_1D1D739A8(&qword_1EC64E698, type metadata accessor for HMAdaptiveTemperatureDriver, &protocol conformance descriptor for HMAdaptiveTemperatureDriver);
    v20 = v35;
    sub_1D1E68D7C();
    *v19 = v40;
    LOBYTE(v40) = 1;
    sub_1D1D739A8(&qword_1EC64E6A8, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig, &protocol conformance descriptor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    sub_1D1E68D7C();
    v30 = v13;
    sub_1D1D73940(v9, &v19[*(v13 + 20)], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E670, &qword_1D1EAC1E8);
    v39 = 2;
    sub_1D1D73B88(&qword_1EC64E6A0, &qword_1EC64E6A8, &protocol conformance descriptor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig, MEMORY[0x1E69E6330]);
    sub_1D1E68CBC();
    v21 = v30[6];
    v29[1] = v40;
    *&v19[v21] = v40;
    v39 = 3;
    sub_1D1E68CBC();
    v22 = v33;
    *&v19[v30[7]] = v40;
    LOBYTE(v40) = 4;
    sub_1D1D739A8(&qword_1EC64E6B0, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BE0]);
    v23 = v37;
    v24 = v32;
    sub_1D1E68D7C();
    v25 = v23;
    v26 = v30;
    (*(v22 + 32))(&v19[v30[8]], v25, v24);
    LOBYTE(v40) = 5;
    v27 = sub_1D1E68D3C();
    (*(v18 + 8))(v36, v20);
    v19[v26[9]] = v27 & 1;
    sub_1D1D73C24(v19, v31, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
    __swift_destroy_boxed_opaque_existential_1(v38);
    return sub_1D1D73C8C(v19, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  }
}

uint64_t sub_1D1D70964()
{
  sub_1D1E6920C();
  AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D709A8(uint64_t a1)
{
  sub_1D1E6920C();
  AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.symbol.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.== infix(_:_:)(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v6 || (v7 = sub_1D1E6904C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

uint64_t sub_1D1D70AD8()
{
  if (*v0)
  {
    return 0x656C626169726176;
  }

  else
  {
    return 0x6C6F626D7973;
  }
}

uint64_t sub_1D1D70B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6F626D7973 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C626169726176 && a2 == 0xED000065756C6156)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D1D70BFC(uint64_t a1)
{
  v2 = sub_1D1D73D94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D70C38(uint64_t a1)
{
  v2 = sub_1D1D73D94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E6E8, &qword_1D1EAC220);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v9[0] = *(v1 + 16);
  v10 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73D94();
  sub_1D1E6930C();
  v12 = 0;
  v7 = v9[1];
  sub_1D1E68ECC();
  if (!v7)
  {
    v11 = 1;
    sub_1D1E68E2C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D1E678EC();
  if (v3 == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0;
  }

  return MEMORY[0x1D3892890](v5);
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D1E6920C();
  sub_1D1E678EC();
  if (v2 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    MEMORY[0x1D3892890](v3);
  }

  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.EnergyPeakSymbolConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E6F8, &qword_1D1EAC228);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73D94();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_1D1E68D2C();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_1D1E68C8C();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v14 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1D710FC(double *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (v6 || (v7 = sub_1D1E6904C(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if (v5)
      {
        return 1;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if ((v9 & 1) == 0)
      {
        return 1;
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_1D1D7118C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_1D1E6920C();
  sub_1D1E678EC();
  if (v3 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1D3892890](v4);
  }

  return sub_1D1E6926C();
}

double AutoClimateModel.Thermostat.CleanEnergySettingConfig.energyPeakSymbolConfig.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 8);
  *(a1 + 8) = *(v1 + 16);
  *(a1 + 24) = v2;

  return result;
}

unint64_t sub_1D1D712B4()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000016;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1D1D71310@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D75428(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D71338(uint64_t a1)
{
  v2 = sub_1D1D73DE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D71374(uint64_t a1)
{
  v2 = sub_1D1D73DE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E700, &qword_1D1EAC230);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v22 = *(v1 + 1);
  v7 = *(v1 + 8);
  v15 = *(v1 + 16);
  v16 = v7;
  v14 = *(v1 + 24);
  v8 = *(v1 + 32);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73DE8();
  sub_1D1E6930C();
  LOBYTE(v18) = 0;
  v9 = v17;
  sub_1D1E68EDC();
  if (!v9)
  {
    v12 = v14;
    v11 = v15;
    v13 = v16;
    LOBYTE(v18) = 1;
    sub_1D1E68EDC();
    v18 = v13;
    v19 = v11;
    v20 = v12;
    v21 = v8;
    v23 = 2;
    sub_1D1D73E3C();

    sub_1D1E68E5C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (!v2)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E678EC();
  if (v4)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0;
  }

  return MEMORY[0x1D3892890](v6);
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (v1 && (sub_1D1E6922C(), sub_1D1E678EC(), (v3 & 1) == 0))
  {
    sub_1D1E6922C();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    MEMORY[0x1D3892890](v4);
  }

  else
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.CleanEnergySettingConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E718, &qword_1D1EAC238);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D73DE8();
  sub_1D1E692FC();
  if (!v2)
  {
    LOBYTE(v15) = 0;
    v9 = sub_1D1E68D3C();
    LOBYTE(v15) = 1;
    v10 = sub_1D1E68D3C();
    v18 = 2;
    sub_1D1D73E90();
    sub_1D1E68CBC();
    (*(v6 + 8))(v8, v5);
    v12 = v16;
    v13 = v17;
    v14 = v15;
    *a2 = v9 & 1;
    *(a2 + 1) = v10 & 1;
    *(a2 + 8) = v14;
    *(a2 + 24) = v12;
    *(a2 + 32) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1D7194C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (v2 && (sub_1D1E6922C(), sub_1D1E678EC(), (v4 & 1) == 0))
  {
    sub_1D1E6922C();
    if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v3;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1D3892890](v5);
  }

  else
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t AutoClimateModel.Thermostat.State.isAllowedToToggleAdaptiveTemperatureAutomations.getter()
{
  v1 = v0;
  v2 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E538, &qword_1D1EAC240);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  swift_getKeyPath();
  v13 = v0;
  sub_1D1D739A8(&qword_1EC64E508, type metadata accessor for AutoClimateModel.Thermostat.State, &protocol conformance descriptor for AutoClimateModel.Thermostat.State);
  sub_1D1E66CAC();

  v9 = OBJC_IVAR____TtCCC13HomeDataModel16AutoClimateModel10Thermostat5State__adaptiveTemperatureSettings;
  swift_beginAccess();
  sub_1D1741C08(v1 + v9, v8, &qword_1EC64E538, &qword_1D1EAC240);
  if ((*(v3 + 48))(v8, 1, v2))
  {
    sub_1D1741A30(v8, &qword_1EC64E538, &qword_1D1EAC240);
    return 0;
  }

  else
  {
    sub_1D1D73C24(v8, v5, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
    sub_1D1741A30(v8, &qword_1EC64E538, &qword_1D1EAC240);
    v10 = v5[*(v2 + 36)];
    sub_1D1D73C8C(v5, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig);
  }

  return v10;
}

uint64_t sub_1D1D71C88(uint64_t *a1)
{
  v2 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C15C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1D71D30(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1D71D30(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1D72104(v8, v9, a1, v4);
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
    return sub_1D1D71E5C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1D71E5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v40 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v32 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v17 = &v32 - v16;
  v34 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v39 = v18;
    v33 = v19;
    v23 = v18 + v19 * a3;
LABEL_6:
    v37 = v20;
    v38 = a3;
    v35 = v23;
    v36 = v22;
    while (1)
    {
      sub_1D1D73C24(v23, v17, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      sub_1D1D73C24(v20, v13, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v24 = *(v8 + 20);
      v25 = *&v17[v24];
      v26 = *&v17[v24 + 8];
      v27 = &v13[v24];
      if (v25 == *v27 && v26 == *(v27 + 1))
      {
        sub_1D1D73C8C(v13, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
        result = sub_1D1D73C8C(v17, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
LABEL_5:
        a3 = v38 + 1;
        v20 = v37 + v33;
        v22 = v36 - 1;
        v23 = v35 + v33;
        if (v38 + 1 == v34)
        {
          return result;
        }

        goto LABEL_6;
      }

      v29 = sub_1D1E6904C();
      sub_1D1D73C8C(v13, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      result = sub_1D1D73C8C(v17, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      if ((v29 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v39)
      {
        break;
      }

      v30 = v40;
      sub_1D1D73940(v23, v40, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1D73940(v30, v20, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1D72104(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v132 = a1;
  v8 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v137 = &v125 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v144 = &v125 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v145 = &v125 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v143 = &v125 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v142 = (&v125 - v20);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v131 = &v125 - v22;
  result = MEMORY[0x1EEE9AC00](v21);
  v130 = &v125 - v25;
  v26 = a3[1];
  if (v26 < 1)
  {
    v28 = MEMORY[0x1E69E7CC0];
LABEL_111:
    v29 = *v132;
    if (!*v132)
    {
      goto LABEL_149;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_143:
      result = sub_1D1E0BE44(v28);
      v28 = result;
    }

    v148 = v28;
    v120 = *(v28 + 16);
    if (v120 >= 2)
    {
      while (*a3)
      {
        v121 = *(v28 + 16 * v120);
        v122 = v28;
        v123 = *(v28 + 16 * (v120 - 1) + 32);
        v28 = *(v28 + 16 * (v120 - 1) + 40);
        sub_1D1D72B98(*a3 + *(v9 + 72) * v121, *a3 + *(v9 + 72) * v123, *a3 + *(v9 + 72) * v28, v29);
        if (v5)
        {
        }

        if (v28 < v121)
        {
          goto LABEL_136;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_1D1E0BE44(v122);
        }

        if (v120 - 2 >= *(v122 + 2))
        {
          goto LABEL_137;
        }

        v124 = &v122[16 * v120];
        *v124 = v121;
        *(v124 + 1) = v28;
        v148 = v122;
        result = sub_1D1E0BDB8(v120 - 1);
        v28 = v148;
        v120 = *(v148 + 16);
        if (v120 <= 1)
        {
        }
      }

      goto LABEL_147;
    }
  }

  v146 = v24;
  v126 = a4;
  v27 = 0;
  v28 = MEMORY[0x1E69E7CC0];
  v134 = a3;
  v127 = v9;
  v147 = v8;
  while (1)
  {
    v29 = v27 + 1;
    if (v27 + 1 >= v26)
    {
      goto LABEL_37;
    }

    v138 = v26;
    a3 = *a3;
    v30 = *(v9 + 72);
    v140 = v27 + 1;
    v31 = v130;
    sub_1D1D73C24(a3 + v30 * v29, v130, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v133 = v27;
    v141 = v30;
    v29 = v131;
    sub_1D1D73C24(a3 + v30 * v27, v131, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v32 = *(v8 + 20);
    v33 = *(v31 + v32);
    v34 = *(v31 + v32 + 8);
    v35 = (v29 + v32);
    v36 = v33 == *v35 && v34 == v35[1];
    v129 = v5;
    LODWORD(v139) = v36 ? 0 : sub_1D1E6904C();
    v128 = v28;
    sub_1D1D73C8C(v131, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    result = sub_1D1D73C8C(v130, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v37 = v133 + 2;
    v38 = v140;
    v39 = v141 * (v133 + 2);
    v40 = a3 + v39;
    v41 = v141 * v140;
    v42 = a3 + v141 * v140;
    do
    {
      v9 = v37;
      v28 = v38;
      v44 = v41;
      v5 = v39;
      if (v37 >= v138)
      {
        break;
      }

      a3 = v142;
      sub_1D1D73C24(v40, v142, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v45 = v143;
      sub_1D1D73C24(v42, v143, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v46 = *(v147 + 20);
      v47 = *(a3 + v46);
      v48 = *(a3 + v46 + 8);
      v49 = (v45 + v46);
      v50 = v47 == *v49 && v48 == v49[1];
      v43 = v50 ? 0 : sub_1D1E6904C();
      v29 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig;
      sub_1D1D73C8C(v143, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      result = sub_1D1D73C8C(v142, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v37 = v9 + 1;
      v40 += v141;
      v42 += v141;
      v38 = v28 + 1;
      v41 = v44 + v141;
      v39 = v5 + v141;
    }

    while (((v139 ^ v43) & 1) == 0);
    if (v139)
    {
      v51 = v133;
      if (v9 < v133)
      {
        goto LABEL_140;
      }

      if (v133 >= v9)
      {
        v29 = v9;
        v28 = v128;
        v5 = v129;
        a3 = v134;
        v9 = v127;
        v8 = v147;
        v27 = v133;
        goto LABEL_37;
      }

      v52 = v133 * v141;
      v8 = v147;
      do
      {
        if (v51 != v28)
        {
          v54 = *v134;
          if (!*v134)
          {
            goto LABEL_146;
          }

          sub_1D1D73940(v54 + v52, v137, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          if (v52 < v44 || v54 + v52 >= (v54 + v5))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v52 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          result = sub_1D1D73940(v137, v54 + v44, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          v8 = v147;
        }

        ++v51;
        v44 -= v141;
        v5 -= v141;
        v52 += v141;
      }

      while (v51 < v28--);
      v29 = v9;
      v28 = v128;
      v5 = v129;
      a3 = v134;
      v9 = v127;
    }

    else
    {
      v29 = v9;
      v28 = v128;
      v5 = v129;
      a3 = v134;
      v9 = v127;
      v8 = v147;
    }

    v27 = v133;
LABEL_37:
    v55 = a3[1];
    if (v29 < v55)
    {
      if (__OFSUB__(v29, v27))
      {
        goto LABEL_139;
      }

      if (v29 - v27 < v126)
      {
        v56 = v27 + v126;
        if (__OFADD__(v27, v126))
        {
          goto LABEL_141;
        }

        if (v56 >= v55)
        {
          v56 = a3[1];
        }

        if (v56 < v27)
        {
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (v29 != v56)
        {
          break;
        }
      }
    }

LABEL_60:
    if (v29 < v27)
    {
      goto LABEL_138;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177D070(0, *(v28 + 16) + 1, 1, v28);
      v28 = result;
    }

    v75 = *(v28 + 16);
    v74 = *(v28 + 24);
    v76 = v75 + 1;
    if (v75 >= v74 >> 1)
    {
      result = sub_1D177D070((v74 > 1), v75 + 1, 1, v28);
      v28 = result;
    }

    *(v28 + 16) = v76;
    v77 = v28 + 16 * v75;
    *(v77 + 32) = v27;
    *(v77 + 40) = v29;
    v140 = v29;
    v29 = *v132;
    if (!*v132)
    {
      goto LABEL_148;
    }

    if (v75)
    {
      while (1)
      {
        v78 = v76 - 1;
        if (v76 >= 4)
        {
          break;
        }

        if (v76 == 3)
        {
          v79 = *(v28 + 32);
          v80 = *(v28 + 40);
          v89 = __OFSUB__(v80, v79);
          v81 = v80 - v79;
          v82 = v89;
LABEL_80:
          if (v82)
          {
            goto LABEL_127;
          }

          v95 = (v28 + 16 * v76);
          v97 = *v95;
          v96 = v95[1];
          v98 = __OFSUB__(v96, v97);
          v99 = v96 - v97;
          v100 = v98;
          if (v98)
          {
            goto LABEL_130;
          }

          v101 = (v28 + 32 + 16 * v78);
          v103 = *v101;
          v102 = v101[1];
          v89 = __OFSUB__(v102, v103);
          v104 = v102 - v103;
          if (v89)
          {
            goto LABEL_133;
          }

          if (__OFADD__(v99, v104))
          {
            goto LABEL_134;
          }

          if (v99 + v104 >= v81)
          {
            if (v81 < v104)
            {
              v78 = v76 - 2;
            }

            goto LABEL_101;
          }

          goto LABEL_94;
        }

        v105 = (v28 + 16 * v76);
        v107 = *v105;
        v106 = v105[1];
        v89 = __OFSUB__(v106, v107);
        v99 = v106 - v107;
        v100 = v89;
LABEL_94:
        if (v100)
        {
          goto LABEL_129;
        }

        v108 = v28 + 16 * v78;
        v110 = *(v108 + 32);
        v109 = *(v108 + 40);
        v89 = __OFSUB__(v109, v110);
        v111 = v109 - v110;
        if (v89)
        {
          goto LABEL_132;
        }

        if (v111 < v99)
        {
          goto LABEL_3;
        }

LABEL_101:
        v116 = v78 - 1;
        if (v78 - 1 >= v76)
        {
          __break(1u);
LABEL_123:
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
          goto LABEL_142;
        }

        if (!*a3)
        {
          goto LABEL_145;
        }

        v117 = *(v28 + 32 + 16 * v116);
        v118 = *(v28 + 32 + 16 * v78 + 8);
        sub_1D1D72B98(*a3 + *(v9 + 72) * v117, *a3 + *(v9 + 72) * *(v28 + 32 + 16 * v78), *a3 + *(v9 + 72) * v118, v29);
        if (v5)
        {
        }

        if (v118 < v117)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v28 = sub_1D1E0BE44(v28);
        }

        if (v116 >= *(v28 + 16))
        {
          goto LABEL_124;
        }

        v119 = v28 + 16 * v116;
        *(v119 + 32) = v117;
        *(v119 + 40) = v118;
        v148 = v28;
        result = sub_1D1E0BDB8(v78);
        v28 = v148;
        v76 = *(v148 + 16);
        if (v76 <= 1)
        {
          goto LABEL_3;
        }
      }

      v83 = v28 + 32 + 16 * v76;
      v84 = *(v83 - 64);
      v85 = *(v83 - 56);
      v89 = __OFSUB__(v85, v84);
      v86 = v85 - v84;
      if (v89)
      {
        goto LABEL_125;
      }

      v88 = *(v83 - 48);
      v87 = *(v83 - 40);
      v89 = __OFSUB__(v87, v88);
      v81 = v87 - v88;
      v82 = v89;
      if (v89)
      {
        goto LABEL_126;
      }

      v90 = (v28 + 16 * v76);
      v92 = *v90;
      v91 = v90[1];
      v89 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v89)
      {
        goto LABEL_128;
      }

      v89 = __OFADD__(v81, v93);
      v94 = v81 + v93;
      if (v89)
      {
        goto LABEL_131;
      }

      if (v94 >= v86)
      {
        v112 = (v28 + 32 + 16 * v78);
        v114 = *v112;
        v113 = v112[1];
        v89 = __OFSUB__(v113, v114);
        v115 = v113 - v114;
        if (v89)
        {
          goto LABEL_135;
        }

        if (v81 < v115)
        {
          v78 = v76 - 2;
        }

        goto LABEL_101;
      }

      goto LABEL_80;
    }

LABEL_3:
    v26 = a3[1];
    v27 = v140;
    v8 = v147;
    if (v140 >= v26)
    {
      goto LABEL_111;
    }
  }

  v128 = v28;
  v129 = v5;
  v57 = *a3;
  v58 = *(v9 + 72);
  v59 = *a3 + v58 * (v29 - 1);
  v60 = -v58;
  v133 = v27;
  v61 = v27 - v29;
  v135 = v58;
  v136 = v56;
  v62 = v57 + v29 * v58;
  v63 = v145;
  while (2)
  {
    v139 = v61;
    v140 = v29;
    v138 = v62;
    v64 = v62;
    v141 = v59;
LABEL_49:
    v65 = v146;
    sub_1D1D73C24(v64, v146, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    sub_1D1D73C24(v59, v63, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v66 = *(v8 + 20);
    v67 = *(v65 + v66);
    v68 = *(v65 + v66 + 8);
    v69 = (v63 + v66);
    if (v67 == *v69 && v68 == v69[1])
    {
      sub_1D1D73C8C(v63, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      sub_1D1D73C8C(v65, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
LABEL_47:
      v29 = v140 + 1;
      v59 = v141 + v135;
      v61 = v139 - 1;
      v62 = (v138 + v135);
      if (v140 + 1 != v136)
      {
        continue;
      }

      v29 = v136;
      v28 = v128;
      v5 = v129;
      v27 = v133;
      a3 = v134;
      v9 = v127;
      goto LABEL_60;
    }

    break;
  }

  v71 = sub_1D1E6904C();
  sub_1D1D73C8C(v63, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  result = sub_1D1D73C8C(v65, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
  if ((v71 & 1) == 0)
  {
    v8 = v147;
    goto LABEL_47;
  }

  v8 = v147;
  if (v57)
  {
    v72 = v144;
    sub_1D1D73940(v64, v144, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1D73940(v72, v59, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    v59 += v60;
    v64 += v60;
    v73 = __CFADD__(v61++, 1);
    v63 = v145;
    if (v73)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
  return result;
}

uint64_t sub_1D1D72B98(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v57 = a4;
  v56 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v7 = MEMORY[0x1EEE9AC00](v56);
  v55 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v49 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v16 = &v49 - v15;
  v18 = *(v17 + 72);
  if (!v18)
  {
    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_71;
  }

  v19 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_72;
  }

  v20 = (a2 - a1) / v18;
  v60 = a1;
  v59 = v57;
  if (v20 >= v19 / v18)
  {
    v22 = v19 / v18 * v18;
    if (v57 < a2 || a2 + v22 <= v57)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v57 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v32 = v57 + v22;
    if (v22 >= 1)
    {
      v33 = -v18;
      v34 = v57 + v22;
      do
      {
        v50 = v32;
        v35 = a2;
        v36 = a2 + v33;
        v52 = v35;
        v53 = v36;
        while (1)
        {
          if (v35 <= a1)
          {
            v60 = v35;
            v58 = v50;
            goto LABEL_69;
          }

          v37 = a3;
          v51 = v32;
          v38 = v33;
          v39 = v34 + v33;
          v40 = v34 + v33;
          v41 = v54;
          sub_1D1D73C24(v40, v54, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          v42 = v55;
          sub_1D1D73C24(v36, v55, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          v43 = *(v56 + 20);
          v44 = *(v41 + v43);
          v45 = *(v41 + v43 + 8);
          v46 = (v42 + v43);
          v47 = v44 == *v46 && v45 == v46[1];
          v48 = v47 ? 0 : sub_1D1E6904C();
          v33 = v38;
          a3 = v37 + v38;
          sub_1D1D73C8C(v55, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          sub_1D1D73C8C(v54, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
          if (v48)
          {
            break;
          }

          v32 = v39;
          v36 = v53;
          if (v37 < v34 || a3 >= v34)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v37 != v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v34 = v39;
          v35 = v52;
          if (v39 <= v57)
          {
            a2 = v52;
            goto LABEL_68;
          }
        }

        a2 = v53;
        if (v37 < v52 || a3 >= v52)
        {
          swift_arrayInitWithTakeFrontToBack();
          v32 = v51;
        }

        else
        {
          v32 = v51;
          if (v37 != v52)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v34 > v57);
    }

LABEL_68:
    v60 = a2;
    v58 = v32;
  }

  else
  {
    v21 = v20 * v18;
    if (v57 < a1 || a1 + v21 <= v57)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v57 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v57 + v21;
    v58 = v57 + v21;
    if (v21 >= 1 && a2 < a3)
    {
      while (1)
      {
        sub_1D1D73C24(a2, v16, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
        sub_1D1D73C24(v57, v13, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
        v25 = *(v56 + 20);
        v26 = *&v16[v25];
        v27 = *&v16[v25 + 8];
        v28 = &v13[v25];
        if (v26 == *v28 && v27 == *(v28 + 1))
        {
          break;
        }

        v30 = sub_1D1E6904C();
        sub_1D1D73C8C(v13, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
        sub_1D1D73C8C(v16, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
        if ((v30 & 1) == 0)
        {
          goto LABEL_30;
        }

        if (a1 < a2 || a1 >= a2 + v18)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a2)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        a2 += v18;
LABEL_38:
        a1 += v18;
        v60 = a1;
        if (v57 >= v23 || a2 >= a3)
        {
          goto LABEL_69;
        }
      }

      sub_1D1D73C8C(v13, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      sub_1D1D73C8C(v16, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
LABEL_30:
      v31 = v57 + v18;
      if (a1 < v57 || a1 >= v31)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a1 != v57)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v59 = v31;
      v57 = v31;
      goto LABEL_38;
    }
  }

LABEL_69:
  sub_1D1DC724C(&v60, &v59, &v58);
  return 1;
}

uint64_t _s13HomeDataModel011AutoClimateC0C10ThermostatC24CleanEnergySettingConfigV2eeoiySbAG_AGtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  result = 0;
  if (*a1 == *a2 && ((a1[1] ^ a2[1]) & 1) == 0)
  {
    v4 = *(a1 + 2);
    v5 = *(a2 + 2);
    if (v4)
    {
      if (v5)
      {
        v6 = *(a1 + 3);
        v7 = a1[32];
        v8 = *(a2 + 3);
        v9 = a2[32];
        if (*(a1 + 1) == *(a2 + 1) && v4 == v5)
        {
          swift_bridgeObjectRetain_n();
        }

        else
        {
          v10 = sub_1D1E6904C();
          swift_bridgeObjectRetain_n();
          if ((v10 & 1) == 0)
          {
LABEL_17:
            swift_bridgeObjectRelease_n();
            return 0;
          }
        }

        if (v7)
        {
          if ((v9 & 1) == 0)
          {
            goto LABEL_17;
          }
        }

        else if ((v9 & 1) != 0 || v6 != v8)
        {
          goto LABEL_17;
        }

        swift_bridgeObjectRelease_n();
        return 1;
      }
    }

    else if (!v5)
    {

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t _s13HomeDataModel011AutoClimateC0C10ThermostatC25AdaptiveTemperatureConfigV7SettingV2eeoiySbAI_AItFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1];
  v5 = a2[1];
  if (v4)
  {
    if (!v5)
    {
      goto LABEL_10;
    }

    v6 = sub_1D177BFB8(v4, v5);

    if ((v6 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else if (v5)
  {
LABEL_10:
    v9 = 0;
    return v9 & 1;
  }

  v8 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  if ((MEMORY[0x1D3890260](a1 + *(v8 + 24), a2 + *(v8 + 24)) & 1) == 0)
  {
    goto LABEL_10;
  }

  v9 = *(a1 + *(v8 + 28)) ^ *(a2 + *(v8 + 28)) ^ 1;
  return v9 & 1;
}

uint64_t _s13HomeDataModel011AutoClimateC0C10ThermostatC25AdaptiveTemperatureConfigV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0);
  v5 = v4[5];
  v6 = a1 + v5;
  v7 = a2 + v5;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_22;
  }

  v8 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0) + 20);
  v9 = *&v6[v8];
  v10 = *&v6[v8 + 8];
  v11 = &v7[v8];
  v12 = v9 == *v11 && v10 == *(v11 + 1);
  if (!v12 && (sub_1D1E6904C() & 1) == 0 || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_22;
  }

  v13 = v4[6];
  v14 = *(a1 + v13);
  v15 = *(a2 + v13);
  if (v14)
  {
    if (!v15)
    {
      goto LABEL_22;
    }

    v16 = sub_1D177BFB8(v14, v15);

    if ((v16 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  else if (v15)
  {
    goto LABEL_22;
  }

  v18 = v4[7];
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (!v19)
  {
    if (!v20)
    {
      goto LABEL_20;
    }

LABEL_22:
    v22 = 0;
    return v22 & 1;
  }

  if (!v20)
  {
    goto LABEL_22;
  }

  v21 = sub_1D177BFB8(v19, v20);

  if ((v21 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  if ((MEMORY[0x1D3890260](a1 + v4[8], a2 + v4[8]) & 1) == 0)
  {
    goto LABEL_22;
  }

  v22 = *(a1 + v4[9]) ^ *(a2 + v4[9]) ^ 1;
  return v22 & 1;
}

char *_s13HomeDataModel011AutoClimateC0C10ThermostatC19WeekdayScheduleRuleV15getSelectedDays4fromSayAG3DayOGSo15HMDaysOfTheWeekV_tFZ_0(char a1)
{
  if ((~a1 & 0x7F) == 0)
  {
    return &unk_1F4D5F3F0;
  }

  if ((a1 & 1) == 0)
  {
    v2 = MEMORY[0x1E69E7CC0];
    if ((a1 & 2) == 0)
    {
      goto LABEL_14;
    }

    goto LABEL_9;
  }

  v2 = sub_1D177D00C(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v3 = *(v2 + 2);
  v4 = *(v2 + 3);
  v5 = v3 + 1;
  if (v3 >= v4 >> 1)
  {
    v46 = v3 + 1;
    v25 = v2;
    v26 = *(v2 + 2);
    v27 = sub_1D177D00C((v4 > 1), v3 + 1, 1, v25);
    v3 = v26;
    v5 = v46;
    v2 = v27;
  }

  *(v2 + 2) = v5;
  v2[v3 + 32] = 0;
  if ((a1 & 2) != 0)
  {
LABEL_9:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D177D00C(0, *(v2 + 2) + 1, 1, v2);
    }

    v6 = *(v2 + 2);
    v7 = *(v2 + 3);
    v8 = v6 + 1;
    if (v6 >= v7 >> 1)
    {
      v47 = v6 + 1;
      v28 = v2;
      v29 = *(v2 + 2);
      v30 = sub_1D177D00C((v7 > 1), v6 + 1, 1, v28);
      v6 = v29;
      v8 = v47;
      v2 = v30;
    }

    *(v2 + 2) = v8;
    v2[v6 + 32] = 1;
  }

LABEL_14:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D177D00C(0, *(v2 + 2) + 1, 1, v2);
    }

    v9 = *(v2 + 2);
    v10 = *(v2 + 3);
    v11 = v9 + 1;
    if (v9 >= v10 >> 1)
    {
      v48 = v9 + 1;
      v31 = v2;
      v32 = *(v2 + 2);
      v33 = sub_1D177D00C((v10 > 1), v9 + 1, 1, v31);
      v9 = v32;
      v11 = v48;
      v2 = v33;
    }

    *(v2 + 2) = v11;
    v2[v9 + 32] = 2;
    if ((a1 & 8) == 0)
    {
LABEL_16:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_17;
      }

      goto LABEL_30;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_16;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D177D00C(0, *(v2 + 2) + 1, 1, v2);
  }

  v12 = *(v2 + 2);
  v13 = *(v2 + 3);
  v14 = v12 + 1;
  if (v12 >= v13 >> 1)
  {
    v49 = v12 + 1;
    v34 = v2;
    v35 = *(v2 + 2);
    v36 = sub_1D177D00C((v13 > 1), v12 + 1, 1, v34);
    v12 = v35;
    v14 = v49;
    v2 = v36;
  }

  *(v2 + 2) = v14;
  v2[v12 + 32] = 3;
  if ((a1 & 0x10) == 0)
  {
LABEL_17:
    if ((a1 & 0x20) == 0)
    {
      goto LABEL_18;
    }

    goto LABEL_35;
  }

LABEL_30:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D177D00C(0, *(v2 + 2) + 1, 1, v2);
  }

  v15 = *(v2 + 2);
  v16 = *(v2 + 3);
  v17 = v15 + 1;
  if (v15 >= v16 >> 1)
  {
    v50 = v15 + 1;
    v37 = v2;
    v38 = *(v2 + 2);
    v39 = sub_1D177D00C((v16 > 1), v15 + 1, 1, v37);
    v15 = v38;
    v17 = v50;
    v2 = v39;
  }

  *(v2 + 2) = v17;
  v2[v15 + 32] = 4;
  if ((a1 & 0x20) == 0)
  {
LABEL_18:
    if ((a1 & 0x40) == 0)
    {
      return v2;
    }

    goto LABEL_40;
  }

LABEL_35:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D177D00C(0, *(v2 + 2) + 1, 1, v2);
  }

  v18 = *(v2 + 2);
  v19 = *(v2 + 3);
  v20 = v18 + 1;
  if (v18 >= v19 >> 1)
  {
    v51 = v18 + 1;
    v40 = v2;
    v41 = *(v2 + 2);
    v42 = sub_1D177D00C((v19 > 1), v18 + 1, 1, v40);
    v18 = v41;
    v20 = v51;
    v2 = v42;
  }

  *(v2 + 2) = v20;
  v2[v18 + 32] = 5;
  if ((a1 & 0x40) != 0)
  {
LABEL_40:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1D177D00C(0, *(v2 + 2) + 1, 1, v2);
    }

    v21 = *(v2 + 2);
    v22 = *(v2 + 3);
    v23 = v21 + 1;
    if (v21 >= v22 >> 1)
    {
      v43 = v2;
      v44 = *(v2 + 2);
      v45 = sub_1D177D00C((v22 > 1), v21 + 1, 1, v43);
      v21 = v44;
      v2 = v45;
    }

    *(v2 + 2) = v23;
    v2[v21 + 32] = 6;
  }

  return v2;
}

unint64_t sub_1D1D738F4()
{
  result = qword_1EC645C68;
  if (!qword_1EC645C68)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC645C68);
  }

  return result;
}

uint64_t sub_1D1D73940(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D739A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1D739F0()
{
  result = qword_1EC64E5E8;
  if (!qword_1EC64E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E5E8);
  }

  return result;
}

uint64_t sub_1D1D73A44(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64E5F0, &qword_1D1EAC1C0);
    sub_1D1D739A8(a2, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D1D73AE0()
{
  result = qword_1EC64E628;
  if (!qword_1EC64E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E628);
  }

  return result;
}

unint64_t sub_1D1D73B34()
{
  result = qword_1EC64E660;
  if (!qword_1EC64E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E660);
  }

  return result;
}

uint64_t sub_1D1D73B88(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64E670, &qword_1D1EAC1E8);
    sub_1D1D739A8(a2, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1D73C24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D73C8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1D73CEC()
{
  result = qword_1EC64E6C0;
  if (!qword_1EC64E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E6C0);
  }

  return result;
}

unint64_t sub_1D1D73D40()
{
  result = qword_1EC64E6D8;
  if (!qword_1EC64E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E6D8);
  }

  return result;
}

unint64_t sub_1D1D73D94()
{
  result = qword_1EC64E6F0;
  if (!qword_1EC64E6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E6F0);
  }

  return result;
}

unint64_t sub_1D1D73DE8()
{
  result = qword_1EC64E708;
  if (!qword_1EC64E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E708);
  }

  return result;
}

unint64_t sub_1D1D73E3C()
{
  result = qword_1EC64E710;
  if (!qword_1EC64E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E710);
  }

  return result;
}

unint64_t sub_1D1D73E90()
{
  result = qword_1EC64E720;
  if (!qword_1EC64E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E720);
  }

  return result;
}

unint64_t sub_1D1D73EE8()
{
  result = qword_1EC64E728;
  if (!qword_1EC64E728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E728);
  }

  return result;
}

unint64_t sub_1D1D73F40()
{
  result = qword_1EC64E730;
  if (!qword_1EC64E730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E730);
  }

  return result;
}

unint64_t sub_1D1D73F98()
{
  result = qword_1EC64E738;
  if (!qword_1EC64E738)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64E740, &qword_1D1EAC468);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E738);
  }

  return result;
}

unint64_t sub_1D1D74120()
{
  result = qword_1EC64E768;
  if (!qword_1EC64E768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E768);
  }

  return result;
}

unint64_t sub_1D1D74178()
{
  result = qword_1EC64E770;
  if (!qword_1EC64E770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E770);
  }

  return result;
}

void sub_1D1D74204(uint64_t a1)
{
  sub_1D1E662EC();
  if (v1 <= 0x3F)
  {
    type metadata accessor for HMDaysOfTheWeek(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1D742C0(uint64_t a1)
{
  type metadata accessor for HMAdaptiveTemperatureDriver(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(319);
    if (v2 <= 0x3F)
    {
      sub_1D1D7437C(319);
      if (v3 <= 0x3F)
      {
        sub_1D1E66C5C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1D7437C(uint64_t a1)
{
  if (!qword_1EC64E798)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64E670, &qword_1D1EAC1E8);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC64E798);
    }
  }
}

void sub_1D1D74408(uint64_t a1)
{
  type metadata accessor for HMAdaptiveTemperatureDriver(319);
  if (v1 <= 0x3F)
  {
    sub_1D1D7437C(319);
    if (v2 <= 0x3F)
    {
      sub_1D1E66C5C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D1D744D4(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D1D74550(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D1D745AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D1D74614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D1D7465C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}