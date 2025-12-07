uint64_t sub_1D17FFC38()
{
  v1 = *(v0 + 384);

  sub_1D17ECFC8(v1, type metadata accessor for StaticAccessory);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D17FFD54()
{
  v1 = *(v0 + 296);

  AccessoryDetails.Payload.staticMatterDevice.getter(v1);

  return MEMORY[0x1EEE6DFA0](sub_1D17FFDCC, 0, 0);
}

uint64_t sub_1D17FFDCC()
{
  v1 = v0[37];
  v2 = type metadata accessor for StaticMatterDevice(0);
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2);
  v4 = v0[43];
  v5 = v0[44];
  if (v3 == 1)
  {
    v6 = v0[40];
    sub_1D1741A30(v1, &qword_1EC643650, &qword_1D1E71D40);
    (*(v5 + 56))(v6, 1, 1, v4);
LABEL_8:
    sub_1D1741A30(v0[40], &qword_1EC644780, &qword_1D1E91AA0);
    v0[61] = sub_1D1E67E0C();
    v20 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1800358, v20, v19);
  }

  v7 = v0[39];
  v8 = *(v1 + *(v2 + 56));
  *(swift_task_alloc() + 16) = v1;

  sub_1D1746B78(sub_1D18085E0, v8, v7);

  v9 = *(v5 + 48);
  if (v9(v7, 1, v4) == 1)
  {
    v10 = v0[43];
    v12 = v0[39];
    v11 = v0[40];

    sub_1D1771D7C(v13, v11);

    if (v9(v12, 1, v10) != 1)
    {
      sub_1D1741A30(v0[39], &qword_1EC644780, &qword_1D1E91AA0);
    }
  }

  else
  {
    v14 = v0[43];
    v15 = v0[44];
    v16 = v0[40];
    sub_1D17ECF60(v0[39], v16, type metadata accessor for StaticEndpoint);
    (*(v15 + 56))(v16, 0, 1, v14);
  }

  v17 = v0[43];
  v18 = v0[40];
  sub_1D17ECFC8(v0[37], type metadata accessor for StaticMatterDevice);
  if (v9(v18, 1, v17) == 1)
  {
    goto LABEL_8;
  }

  sub_1D17ECF60(v0[40], v0[46], type metadata accessor for StaticEndpoint);
  v21 = swift_task_alloc();
  v0[59] = v21;
  *v21 = v0;
  v21[1] = sub_1D1800114;

  return StaticEndpoint.identify()();
}

uint64_t sub_1D1800114()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_1D1801258;
  }

  else
  {
    v2 = sub_1D1800228;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1800228()
{
  v1 = v0[36];
  sub_1D17ECFC8(v0[46], type metadata accessor for StaticEndpoint);
  sub_1D17ECFC8(v1, type metadata accessor for StaticService);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D1800358()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D18003F0, 0, 0);
}

uint64_t sub_1D18003F0(uint64_t a1)
{
  *(v1 + 496) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D180047C, v3, v2);
}

uint64_t sub_1D180047C()
{

  *(v0 + 504) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D18004F0, 0, 0);
}

uint64_t sub_1D18004F0(uint64_t a1)
{
  *(v1 + 512) = sub_1D1E66A2C();
  *(v1 + 520) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1800590, v3, v2);
}

uint64_t sub_1D1800590()
{
  v1 = v0[63];
  v2 = v0[64];

  v0[66] = [v1 accessoryFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D1800620, 0, 0);
}

uint64_t sub_1D1800620()
{
  v1 = v0[66];
  if (v1)
  {
    v0[2] = v0;
    v0[3] = sub_1D1800824;
    v2 = swift_continuation_init();
    v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    v0[18] = MEMORY[0x1E69E9820];
    v0[19] = 1107296256;
    v0[20] = sub_1D17B04C8;
    v0[21] = &block_descriptor_36;
    v0[22] = v2;
    [v1 identifyWithCompletionHandler_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    sub_1D17ECFC8(v0[36], type metadata accessor for StaticService);

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D1800824()
{
  v1 = *(*v0 + 48);
  *(*v0 + 536) = v1;
  if (v1)
  {
    v2 = sub_1D1801554;
  }

  else
  {
    v2 = sub_1D1800934;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1800934()
{
  v1 = *(v0 + 288);

  sub_1D17ECFC8(v1, type metadata accessor for StaticService);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1800A50()
{
  *(*v1 + 552) = v0;

  if (v0)
  {
    v2 = sub_1D1801844;
  }

  else
  {
    v2 = sub_1D1800B64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1800B64()
{
  sub_1D17ECFC8(*(v0 + 360), type metadata accessor for StaticEndpoint);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1800C74()
{
  v15 = v0;
  v1 = v0[48];
  sub_1D17ECFC8(v0[47], type metadata accessor for StaticEndpoint);
  sub_1D17ECFC8(v1, type metadata accessor for StaticAccessory);
  v2 = v0[53];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F440);
  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315650;
    *(v7 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v14);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1D1B1312C(0x796669746E656469, 0xEA00000000002928, &v14);
    *(v7 + 22) = 2112;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%s - %s: Failed to identify accessory with error: %@", v7, 0x20u);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D1800F6C(uint64_t a1)
{
  v17 = v1;
  v2 = v1[55];
  v3 = v1[48];
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticAccessory);
  v4 = v1[56];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EC64F440);
  v6 = v4;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v16);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1D1B1312C(0x796669746E656469, 0xEA00000000002928, v16);
    *(v9 + 22) = 2112;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s - %s: Failed to identify accessory with error: %@", v9, 0x20u);
    sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_1D1801258()
{
  v15 = v0;
  v1 = v0[36];
  sub_1D17ECFC8(v0[46], type metadata accessor for StaticEndpoint);
  sub_1D17ECFC8(v1, type metadata accessor for StaticService);
  v2 = v0[60];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EC64F440);
  v4 = v2;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136315650;
    *(v7 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v14);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_1D1B1312C(0x796669746E656469, 0xEA00000000002928, &v14);
    *(v7 + 22) = 2112;
    v10 = v2;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 24) = v11;
    *v8 = v11;
    _os_log_impl(&dword_1D16EC000, v5, v6, "%s - %s: Failed to identify accessory with error: %@", v7, 0x20u);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  else
  {
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D1801554(uint64_t a1)
{
  v17 = v1;
  v2 = v1[66];
  v3 = v1[36];
  swift_willThrow();

  sub_1D17ECFC8(v3, type metadata accessor for StaticService);
  v4 = v1[67];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EC64F440);
  v6 = v4;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16[0] = v11;
    *v9 = 136315650;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v16);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1D1B1312C(0x796669746E656469, 0xEA00000000002928, v16);
    *(v9 + 22) = 2112;
    v12 = v4;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 24) = v13;
    *v10 = v13;
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s - %s: Failed to identify accessory with error: %@", v9, 0x20u);
    sub_1D1741A30(v10, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v10, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
  }

  v14 = v1[1];

  return v14();
}

uint64_t sub_1D1801844()
{
  v14 = v0;
  sub_1D17ECFC8(v0[45], type metadata accessor for StaticEndpoint);
  v1 = v0[69];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EC64F440);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136315650;
    *(v6 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v13);
    *(v6 + 12) = 2080;
    *(v6 + 14) = sub_1D1B1312C(0x796669746E656469, 0xEA00000000002928, &v13);
    *(v6 + 22) = 2112;
    v9 = v1;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 24) = v10;
    *v7 = v10;
    _os_log_impl(&dword_1D16EC000, v4, v5, "%s - %s: Failed to identify accessory with error: %@", v6, 0x20u);
    sub_1D1741A30(v7, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v7, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

BOOL AccessoryDetails.hasResidentsCapableOfSupportingHomeActivityState.getter()
{
  v0 = AccessoryDetails.hmHomeFromPayload.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 residentDevices];

  sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
  v3 = sub_1D1E67C1C();

  if (v3 >> 62)
  {
LABEL_18:
    v4 = sub_1D1E6873C();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = 0;
  do
  {
    v6 = v4 != v5;
    if (v4 == v5)
    {
      break;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1D3891EF0](v5, v3);
    }

    else
    {
      if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_17;
      }

      v7 = *(v3 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    v9 = [v7 supportsHomeActivityState];

    ++v5;
  }

  while (!v9);

  return v6;
}

id sub_1D1801CA0(uint64_t (*a1)(void), SEL *a2)
{
  v3 = a1();
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [v3 *a2];

  return v5;
}

uint64_t AccessoryDetails.isAutoClimateCapableThermostat.getter()
{
  v0 = AccessoryDetails.hmAccessoryFromPayload.getter();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  if (AccessoryDetails.hasResidentsCapableOfSupportingHomeActivityState.getter())
  {
    if ([v1 supportsAdaptiveTemperatureAutomations])
    {
      v2 = 1;
    }

    else
    {
      v2 = [v1 supportsCleanEnergyAutomation];
    }
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t AccessoryDetails.thermostatCluster.getter@<X0>(uint64_t a1@<X8>)
{
  v61 = a1;
  v56 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v56);
  v59 = &v55 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for StaticService(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v58 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v57 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v55 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v60 = &v55 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v55 - v20;
  v22 = *(type metadata accessor for AccessoryDetails(0) + 20);
  AccessoryDetailsBasicInfo.primaryStaticService.getter(v21);
  if ((*(v4 + 48))(v21, 1, v3) == 1)
  {
    sub_1D1741A30(v21, &qword_1EC6436F0, &qword_1D1E99BC0);
    v23 = 0;
  }

  else
  {
    v23 = v21[*(v3 + 104)];
    sub_1D17ECFC8(v21, type metadata accessor for StaticService);
  }

  LOBYTE(v62[0]) = v23;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v24)
  {
    goto LABEL_6;
  }

  v25 = sub_1D1E6904C();

  if (v25)
  {
    goto LABEL_8;
  }

  LOBYTE(v62[0]) = v23;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3070 == v33)
  {
LABEL_6:

    goto LABEL_8;
  }

  v34 = sub_1D1E6904C();

  if (v34)
  {
LABEL_8:
    sub_1D17ECA38(v1 + v22, v10, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v27 = v60;
      if (EnumCaseMultiPayload == 2)
      {
        v30 = type metadata accessor for StaticThermostatClusterGroup(0);
        (*(*(v30 - 8) + 56))(v17, 1, 1, v30);
        v31 = type metadata accessor for AccessoryDetails.Payload;
        v32 = v10;
      }

      else
      {
        v50 = v59;
        sub_1D17ECF60(v10, v59, type metadata accessor for StaticEndpoint);
        v62[3] = &type metadata for HomeKitFeatures;
        v62[4] = sub_1D18076E8();
        LOBYTE(v62[0]) = 3;
        v51 = sub_1D1E66D5C();
        __swift_destroy_boxed_opaque_existential_1(v62);
        if ((v51 & 1) == 0)
        {
          sub_1D17ECFC8(v50, type metadata accessor for StaticEndpoint);
          v54 = type metadata accessor for StaticThermostatClusterGroup(0);
          (*(*(v54 - 8) + 56))(v17, 1, 1, v54);
LABEL_24:
          sub_1D1741A90(v17, v27, &qword_1EC644790, &unk_1D1E75B48);
          sub_1D1741C08(v27, v14, &qword_1EC644790, &unk_1D1E75B48);
          v42 = type metadata accessor for StaticThermostatClusterGroup(0);
          v43 = *(v42 - 8);
          if ((*(v43 + 48))(v14, 1, v42) == 1)
          {
            sub_1D1741A30(v14, &qword_1EC644790, &unk_1D1E75B48);
            if (qword_1EC642470 != -1)
            {
              swift_once();
            }

            v44 = sub_1D1E6709C();
            __swift_project_value_buffer(v44, qword_1EC64F440);
            v45 = sub_1D1E6707C();
            v46 = sub_1D1E6833C();
            if (os_log_type_enabled(v45, v46))
            {
              v47 = swift_slowAlloc();
              v48 = swift_slowAlloc();
              v62[0] = v48;
              *v47 = 136315394;
              *(v47 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v62);
              *(v47 + 12) = 2080;
              *(v47 + 14) = sub_1D1B1312C(0xD000000000000011, 0x80000001D1EBA070, v62);
              _os_log_impl(&dword_1D16EC000, v45, v46, "%s - %s: Not showing presets because no thermostat cluster found.", v47, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1D3893640](v48, -1, -1);
              MEMORY[0x1D3893640](v47, -1, -1);
            }

            sub_1D1741A30(v27, &qword_1EC644790, &unk_1D1E75B48);
            return (*(v43 + 56))(v61, 1, 1, v42);
          }

          else
          {
            sub_1D1741A30(v27, &qword_1EC644790, &unk_1D1E75B48);
            v49 = v61;
            sub_1D17ECF60(v14, v61, type metadata accessor for StaticThermostatClusterGroup);
            return (*(v43 + 56))(v49, 0, 1, v42);
          }
        }

        v52 = *(v56 + 40);
        v53 = type metadata accessor for StaticClusterGroups(0);
        sub_1D1741C08(v50 + v52 + *(v53 + 20), v17, &qword_1EC644790, &unk_1D1E75B48);
        v31 = type metadata accessor for StaticEndpoint;
        v32 = v50;
      }
    }

    else
    {
      v27 = v60;
      if (EnumCaseMultiPayload)
      {
        v28 = v58;
        sub_1D17ECF60(v10, v58, type metadata accessor for StaticService);
        sub_1D1802AB0(v28, v17);
        v29 = type metadata accessor for StaticService;
      }

      else
      {
        v28 = v57;
        sub_1D17ECF60(v10, v57, type metadata accessor for StaticAccessory);
        AccessoryDetails.thermostatClusterForStaticAccessory(_:)(v17);
        v29 = type metadata accessor for StaticAccessory;
      }

      v31 = v29;
      v32 = v28;
    }

    sub_1D17ECFC8(v32, v31);
    goto LABEL_24;
  }

  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v35 = sub_1D1E6709C();
  __swift_project_value_buffer(v35, qword_1EC64F440);
  v36 = sub_1D1E6707C();
  v37 = sub_1D1E6833C();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v62[0] = v39;
    *v38 = 136315394;
    *(v38 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v62);
    *(v38 + 12) = 2080;
    *(v38 + 14) = sub_1D1B1312C(0xD000000000000011, 0x80000001D1EBA070, v62);
    _os_log_impl(&dword_1D16EC000, v36, v37, "%s - %s: Not showing presets because primary service kind is not valid.", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v39, -1, -1);
    MEMORY[0x1D3893640](v38, -1, -1);
  }

  v40 = type metadata accessor for StaticThermostatClusterGroup(0);
  return (*(*(v40 - 8) + 56))(v61, 1, 1, v40);
}

uint64_t AccessoryDetails.thermostatClusterForStaticAccessory(_:)@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for StaticService(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  StaticAccessory.primaryStaticService.getter(v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1D1741A30(v4, &qword_1EC6436F0, &qword_1D1E99BC0);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EC64F440);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6835C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v17 = v13;
      *v12 = 136315650;
      *(v12 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, &v17);
      *(v12 + 12) = 2080;
      *(v12 + 14) = sub_1D1B1312C(0xD000000000000027, 0x80000001D1EBA090, &v17);
      *(v12 + 22) = 2080;
      *(v12 + 24) = sub_1D1B1312C(0x6341636974617473, 0xEF79726F73736563, &v17);
      _os_log_impl(&dword_1D16EC000, v10, v11, "%s - %s: Unable to get thermostatCluster for %s because primaryStaticService does NOT exist.", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    v14 = type metadata accessor for StaticThermostatClusterGroup(0);
    return (*(*(v14 - 8) + 56))(a1, 1, 1, v14);
  }

  else
  {
    sub_1D17ECF60(v4, v8, type metadata accessor for StaticService);
    sub_1D1802AB0(v8, a1);
    return sub_1D17ECFC8(v8, type metadata accessor for StaticService);
  }
}

uint64_t sub_1D1802AB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v112 = type metadata accessor for StaticEndpoint(0);
  v109 = *(v112 - 8);
  v3 = MEMORY[0x1EEE9AC00](v112);
  v110 = &v108 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v111 = &v108 - v5;
  v116 = type metadata accessor for StaticMatterDevice(0);
  v114 = *(v116 - 8);
  v6 = MEMORY[0x1EEE9AC00](v116);
  v123 = &v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v113 = &v108 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v115 = &v108 - v10;
  v121 = type metadata accessor for MatterStateSnapshot(0);
  v119 = *(v121 - 8);
  v11 = MEMORY[0x1EEE9AC00](v121);
  v118 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v108 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v122 = &v108 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v108 - v18;
  v20 = type metadata accessor for EndpointPath(0);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v108 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v117 = &v108 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v29 = &v108 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v108 - v30;
  v32 = type metadata accessor for StaticService(0);
  sub_1D1741C08(a1 + *(v32 + 156), v19, &qword_1EC644870, &unk_1D1EABA00);
  v33 = *(v21 + 48);
  v120 = v20;
  if (v33(v19, 1, v20) == 1)
  {
    sub_1D1741A30(v19, &qword_1EC644870, &unk_1D1EABA00);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v34 = sub_1D1E6709C();
    __swift_project_value_buffer(v34, qword_1EC64F440);
    v35 = sub_1D1E6707C();
    v36 = sub_1D1E6835C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v125[0] = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v125);
      _os_log_impl(&dword_1D16EC000, v35, v36, "%s: Returning nil, because matterEndpointPath is nil.", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v38);
      MEMORY[0x1D3893640](v38, -1, -1);
      MEMORY[0x1D3893640](v37, -1, -1);
    }

    goto LABEL_38;
  }

  sub_1D17ECF60(v19, v31, type metadata accessor for EndpointPath);
  v39 = v31;
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v40 = qword_1EE07DC60;
  swift_getKeyPath();
  v125[0] = v40;
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v41 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToMatterSnapshots;
  swift_beginAccess();
  v42 = *(v40 + v41);
  v43 = v123;
  if (!*(v42 + 16))
  {
    goto LABEL_18;
  }

  v44 = v29;

  v45 = sub_1D1742188();
  if ((v46 & 1) == 0)
  {

LABEL_18:
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v62 = sub_1D1E6709C();
    __swift_project_value_buffer(v62, qword_1EC64F440);
    sub_1D17ECA38(v39, v24, type metadata accessor for EndpointPath);
    v63 = sub_1D1E6707C();
    v64 = sub_1D1E6833C();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = v39;
      v67 = swift_slowAlloc();
      v125[0] = v67;
      *v65 = 136315394;
      *(v65 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v125);
      *(v65 + 12) = 2082;
      sub_1D1E66A7C();
      sub_1D1807408(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v68 = sub_1D1E68FAC();
      v70 = v69;
      sub_1D17ECFC8(v24, type metadata accessor for EndpointPath);
      v71 = sub_1D1B1312C(v68, v70, v125);

      *(v65 + 14) = v71;
      _os_log_impl(&dword_1D16EC000, v63, v64, "%s: Returning nil, because matterSnapshot is not found for homeID %{public}s.", v65, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v67, -1, -1);
      MEMORY[0x1D3893640](v65, -1, -1);

      v72 = v66;
    }

    else
    {

      sub_1D17ECFC8(v24, type metadata accessor for EndpointPath);
      v72 = v39;
    }

    v73 = type metadata accessor for EndpointPath;
    goto LABEL_37;
  }

  sub_1D17ECA38(*(v42 + 56) + *(v119 + 72) * v45, v15, type metadata accessor for MatterStateSnapshot);

  v47 = v15;
  v48 = v122;
  sub_1D17ECF60(v47, v122, type metadata accessor for MatterStateSnapshot);
  v49 = v120;
  v50 = *(v48 + *(v121 + 24));
  if (!*(v50 + 16) || (v51 = sub_1D17420B0(*(v39 + *(v120 + 20))), (v52 & 1) == 0))
  {
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v74 = sub_1D1E6709C();
    __swift_project_value_buffer(v74, qword_1EC64F440);
    v75 = v117;
    sub_1D17ECA38(v39, v117, type metadata accessor for EndpointPath);
    v54 = v118;
    sub_1D17ECA38(v48, v118, type metadata accessor for MatterStateSnapshot);
    v76 = sub_1D1E6707C();
    v77 = sub_1D1E6833C();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = swift_slowAlloc();
      v79 = v39;
      v80 = swift_slowAlloc();
      v125[0] = v80;
      *v78 = 136315650;
      *(v78 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v125);
      *(v78 + 12) = 2050;
      v81 = *(v75 + *(v49 + 20));
      sub_1D17ECFC8(v75, type metadata accessor for EndpointPath);
      *(v78 + 14) = v81;
      *(v78 + 22) = 2082;

      v82 = v54;
      v83 = sub_1D1E6762C();
      v85 = v84;

      sub_1D17ECFC8(v82, type metadata accessor for MatterStateSnapshot);
      v86 = sub_1D1B1312C(v83, v85, v125);

      *(v78 + 24) = v86;
      _os_log_impl(&dword_1D16EC000, v76, v77, "%s: Returning nil, because staticDevice is not found for matterNodeID %{public}llu among staticDevices %{public}s.", v78, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v80, -1, -1);
      MEMORY[0x1D3893640](v78, -1, -1);

      v87 = v79;
      v48 = v122;
      v88 = type metadata accessor for EndpointPath;
LABEL_36:
      sub_1D17ECFC8(v87, v88);
      v73 = type metadata accessor for MatterStateSnapshot;
      v72 = v48;
LABEL_37:
      sub_1D17ECFC8(v72, v73);
LABEL_38:
      v105 = type metadata accessor for StaticThermostatClusterGroup(0);
      return (*(*(v105 - 8) + 56))(v124, 1, 1, v105);
    }

    sub_1D17ECFC8(v75, type metadata accessor for EndpointPath);

    sub_1D17ECFC8(v39, type metadata accessor for EndpointPath);
    v89 = type metadata accessor for MatterStateSnapshot;
LABEL_35:
    v88 = v89;
    v87 = v54;
    goto LABEL_36;
  }

  v53 = v113;
  sub_1D17ECA38(*(v50 + 56) + *(v114 + 72) * v51, v113, type metadata accessor for StaticMatterDevice);
  v54 = v115;
  sub_1D17ECF60(v53, v115, type metadata accessor for StaticMatterDevice);
  v55 = *(v54 + *(v116 + 56));
  if (!*(v55 + 16) || (v56 = sub_1D171D15C(*(v39 + *(v49 + 24))), (v57 & 1) == 0))
  {
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v90 = sub_1D1E6709C();
    __swift_project_value_buffer(v90, qword_1EC64F440);
    sub_1D17ECA38(v39, v44, type metadata accessor for EndpointPath);
    sub_1D17ECA38(v54, v43, type metadata accessor for StaticMatterDevice);
    v91 = sub_1D1E6707C();
    v92 = sub_1D1E6833C();
    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v125[0] = v94;
      *v93 = 136315650;
      *(v93 + 4) = sub_1D1B1312C(0xD000000000000024, 0x80000001D1EB9EE0, v125);
      *(v93 + 12) = 514;
      v95 = *(v49 + 24);
      v121 = v39;
      v96 = *(v44 + v95);
      sub_1D17ECFC8(v44, type metadata accessor for EndpointPath);
      *(v93 + 14) = v96;
      *(v93 + 16) = 2082;

      v97 = sub_1D1E6762C();
      v98 = v43;
      v100 = v99;

      sub_1D17ECFC8(v98, type metadata accessor for StaticMatterDevice);
      v101 = sub_1D1B1312C(v97, v100, v125);

      *(v93 + 18) = v101;
      _os_log_impl(&dword_1D16EC000, v91, v92, "%s: Returning nil, because endpoint is not found for endpointID %{public}hu among endpoints %{public}s.", v93, 0x1Au);
      swift_arrayDestroy();
      v102 = v94;
      v54 = v115;
      MEMORY[0x1D3893640](v102, -1, -1);
      MEMORY[0x1D3893640](v93, -1, -1);

      v103 = v121;
      v104 = type metadata accessor for EndpointPath;
    }

    else
    {
      sub_1D17ECFC8(v44, type metadata accessor for EndpointPath);

      sub_1D17ECFC8(v39, type metadata accessor for EndpointPath);
      v104 = type metadata accessor for StaticMatterDevice;
      v103 = v43;
    }

    sub_1D17ECFC8(v103, v104);
    v89 = type metadata accessor for StaticMatterDevice;
    goto LABEL_35;
  }

  v58 = v110;
  sub_1D17ECA38(*(v55 + 56) + *(v109 + 72) * v56, v110, type metadata accessor for StaticEndpoint);
  v59 = v111;
  sub_1D17ECF60(v58, v111, type metadata accessor for StaticEndpoint);
  v125[3] = &type metadata for HomeKitFeatures;
  v125[4] = sub_1D18076E8();
  LOBYTE(v125[0]) = 3;
  LOBYTE(v58) = sub_1D1E66D5C();
  sub_1D17ECFC8(v39, type metadata accessor for EndpointPath);
  __swift_destroy_boxed_opaque_existential_1(v125);
  if (v58)
  {
    v60 = *(v112 + 40);
    v61 = type metadata accessor for StaticClusterGroups(0);
    sub_1D1741C08(v59 + v60 + *(v61 + 20), v124, &qword_1EC644790, &unk_1D1E75B48);
    sub_1D17ECFC8(v59, type metadata accessor for StaticEndpoint);
  }

  else
  {
    sub_1D17ECFC8(v59, type metadata accessor for StaticEndpoint);
    v107 = type metadata accessor for StaticThermostatClusterGroup(0);
    (*(*(v107 - 8) + 56))(v124, 1, 1, v107);
  }

  sub_1D17ECFC8(v54, type metadata accessor for StaticMatterDevice);
  return sub_1D17ECFC8(v48, type metadata accessor for MatterStateSnapshot);
}

uint64_t AccessoryDetails.staticService.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessoryDetails(0);
  sub_1D17ECA38(v1 + *(v16 + 20), v15, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D17ECF60(v15, v12, type metadata accessor for StaticAccessory);
    sub_1D1741C08(&v12[*(v10 + 88)], v5, &qword_1EC642590, qword_1D1E71260);
    if ((*(v7 + 48))(v5, 1, v6) == 1)
    {
      sub_1D1741A30(v5, &qword_1EC642590, qword_1D1E71260);
    }

    else
    {
      (*(v7 + 32))(v9, v5, v6);
      v23 = *&v12[*(v10 + 80)];
      if (*(v23 + 16))
      {

        v24 = sub_1D1742188();
        if (v25)
        {
          v26 = v24;
          v27 = *(v23 + 56);
          v28 = type metadata accessor for StaticService(0);
          v29 = *(v28 - 8);
          sub_1D17ECA38(v27 + *(v29 + 72) * v26, a1, type metadata accessor for StaticService);
          (*(v7 + 8))(v9, v6);

          (*(v29 + 56))(a1, 0, 1, v28);
LABEL_13:
          v21 = type metadata accessor for StaticAccessory;
          v22 = v12;
          return sub_1D17ECFC8(v22, v21);
        }
      }

      (*(v7 + 8))(v9, v6);
    }

    v30 = type metadata accessor for StaticService(0);
    (*(*(v30 - 8) + 56))(a1, 1, 1, v30);
    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D17ECF60(v15, a1, type metadata accessor for StaticService);
    v18 = type metadata accessor for StaticService(0);
    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  v20 = type metadata accessor for StaticService(0);
  (*(*(v20 - 8) + 56))(a1, 1, 1, v20);
  v21 = type metadata accessor for AccessoryDetails.Payload;
  v22 = v15;
  return sub_1D17ECFC8(v22, v21);
}

uint64_t AccessoryDetails.homeID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = AccessoryDetails.hmHomeFromPayload.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 uniqueIdentifier];

    sub_1D1E66A5C();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

uint64_t sub_1D1804044@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1807408(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentMatterSnapshot;
  swift_beginAccess();
  return sub_1D17ECA38(v3 + v4, a2, type metadata accessor for MatterStateSnapshot);
}

uint64_t sub_1D1804120(uint64_t a1)
{
  v2 = type metadata accessor for MatterStateSnapshot(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D17ECA38(a1, v4, type metadata accessor for MatterStateSnapshot);
  return sub_1D1DE63B0(v4);
}

void *sub_1D18041C0(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643698, &unk_1D1E71DB0);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D1804480(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

void *sub_1D180453C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1D1804638(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

uint64_t sub_1D18046C0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v38 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = (&v34 - v12);
  v41 = a4;
  v15 = *(a4 + 64);
  v14 = a4 + 64;
  v13 = v15;
  v16 = -1 << *(v14 - 32);
  if (-v16 < 64)
  {
    v17 = ~(-1 << -v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v13;
  if (!a2)
  {
LABEL_18:
    v25 = 0;
    a3 = 0;
LABEL_25:
    *a1 = v41;
    a1[1] = v14;
    a1[2] = ~v16;
    a1[3] = v25;
    a1[4] = v18;
    return a3;
  }

  if (!a3)
  {
    v25 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = -1 << *(v14 - 32);
    v36 = a1;
    result = 0;
    v19 = 0;
    v20 = (63 - v16) >> 6;
    v21 = 1;
    v37 = a3;
    while (v18)
    {
LABEL_14:
      v24 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v25 = v19;
      v26 = v24 | (v19 << 6);
      v27 = v41;
      v28 = *(v41 + 48);
      v29 = sub_1D1E66A7C();
      (*(*(v29 - 8) + 16))(v10, v28 + *(*(v29 - 8) + 72) * v26, v29);
      v30 = *(v27 + 56);
      v31 = type metadata accessor for StaticService(0);
      sub_1D17ECA38(v30 + *(*(v31 - 8) + 72) * v26, &v10[*(v40 + 48)], type metadata accessor for StaticService);
      a1 = v39;
      sub_1D1741A90(v10, v39, &qword_1EC642DB0, &unk_1D1E6F360);
      sub_1D1741A90(a1, a2, &qword_1EC642DB0, &unk_1D1E6F360);
      a3 = v37;
      if (v21 == v37)
      {
        goto LABEL_23;
      }

      a2 += *(v38 + 72);
      result = v21;
      v32 = __OFADD__(v21++, 1);
      v19 = v25;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v22 = v19;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v23 >= v20)
      {
        break;
      }

      v18 = *(v14 + 8 * v23);
      ++v22;
      if (v18)
      {
        v19 = v23;
        goto LABEL_14;
      }
    }

    v18 = 0;
    if (v20 <= v19 + 1)
    {
      v33 = v19 + 1;
    }

    else
    {
      v33 = v20;
    }

    v25 = v33 - 1;
    a3 = result;
LABEL_23:
    v16 = v35;
    a1 = v36;
    goto LABEL_25;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t (*sub_1D1804B74(void (*a1)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a2)(uint64_t, uint64_t, uint64_t, uint64_t), int64_t a3))(uint64_t)
{
  v7 = type metadata accessor for StaticService(0);
  v114 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v113 = v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_1D1E66A7C();
  v116 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = v89 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v105 = (v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v118 = v89 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v106 = v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v89 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = v89 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643870, &qword_1D1E72028);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v99 = v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v96 = v89 - v26;
  v100 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v97 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v95 = v89 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v3;
  result = v3[1];
  v31 = v3[2];
  v30 = v3[3];
  v32 = v3[4];
  v33 = *v3 + 64;
  v34 = -1;
  v35 = -1 << *(*v3 + 32);
  v36 = ~v35;
  if (-v35 < 64)
  {
    v34 = ~(-1 << -v35);
  }

  v37 = v34 & *(*v3 + 64);
  if (!a2)
  {
    goto LABEL_37;
  }

  v108 = *v3 + 64;
  v38 = &v125;
  v94 = ~v35;
  v115 = v29;
  v119 = result;
  v120 = v31;
  if (!a3)
  {
LABEL_39:
    v78 = 0;
    v79 = 0;
    v41 = 0;
    v80 = v115;
    v81 = *(v38 - 32);
LABEL_40:
    *a1 = v80;
    *(a1 + 1) = v108;
    *(a1 + 2) = v81;
    *(a1 + 3) = v41;
    *(a1 + 4) = v37;
    v82 = v120;
    *(a1 + 5) = v119;
    *(a1 + 6) = v82;
    *(a1 + 7) = v30;
    *(a1 + 8) = v32;
    *(a1 + 9) = v78;
    *(a1 + 10) = v79;
    return a3;
  }

  if (a3 < 0)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    return result;
  }

  v101 = v22;
  v102 = v30;
  v103 = v32;
  v92 = a2;
  v89[0] = a3;
  v90 = a1;
  v39 = 0;
  v40 = 0;
  v41 = 0;
  v93 = 0;
  v42 = 0;
  v98 = (v97 + 56);
  a3 = (63 - v35) >> 6;
  v123 = (v11 + 56);
  v109 = v116 + 32;
  v110 = v116 + 16;
  v122 = (v11 + 48);
  v89[1] = v97 + 48;
  v43 = 1;
  v117 = v10;
  v121 = v20;
  while (2)
  {
    v91 = v43;
    while (1)
    {
      v107 = v39;
      v104 = v40;
      if (v39)
      {
        break;
      }

      v45 = v117;
LABEL_12:
      v47 = v118;
      if (!v37)
      {
LABEL_14:
        v38 = v47;
        if (a3 <= v42 + 1)
        {
          v50 = v42 + 1;
        }

        else
        {
          v50 = a3;
        }

        v41 = v50 - 1;
        v49 = v121;
        while (1)
        {
          v48 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            break;
          }

          if (v48 >= a3)
          {
            v37 = 0;
            v61 = 1;
            v62 = v38;
            goto LABEL_22;
          }

          v37 = *(v108 + 8 * v48);
          ++v42;
          if (v37)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_39;
      }

      while (1)
      {
        v48 = v42;
        v49 = v121;
LABEL_21:
        v51 = __clz(__rbit64(v37));
        v37 &= v37 - 1;
        v52 = v51 | (v48 << 6);
        v53 = v115;
        v54 = v116;
        v55 = v111;
        v56 = v112;
        (*(v116 + 16))(v111, *(v115 + 48) + *(v116 + 72) * v52, v112);
        v57 = *(v53 + 56);
        v58 = v113;
        sub_1D17ECA38(v57 + *(v114 + 72) * v52, v113, type metadata accessor for StaticService);
        v59 = *(v117 + 48);
        v60 = v55;
        v45 = v117;
        (*(v54 + 32))(v49, v60, v56);
        sub_1D17ECF60(v58, v49 + v59, type metadata accessor for StaticService);
        v61 = 0;
        v41 = v48;
        v62 = v118;
LABEL_22:
        a1 = *v123;
        (*v123)(v49, v61, 1, v45);
        v63 = *v122;
        if ((*v122)(v49, 1, v45) == 1)
        {
          sub_1D1741A30(v49, &qword_1EC643C68, &unk_1D1E764C0);
          v64 = 1;
          v65 = v106;
          v66 = v101;
          goto LABEL_29;
        }

        sub_1D1741A90(v49, v62, &qword_1EC642DB0, &unk_1D1E6F360);
        v47 = v62;
        if (v119(v62))
        {
          break;
        }

        sub_1D1741A30(v62, &qword_1EC642DB0, &unk_1D1E6F360);
        v42 = v41;
        if (!v37)
        {
          goto LABEL_14;
        }
      }

      v66 = v101;
      sub_1D1741A90(v47, v101, &qword_1EC642DB0, &unk_1D1E6F360);
      v64 = 0;
      v65 = v106;
LABEL_29:
      a1(v66, v64, 1, v45);
      sub_1D1741A90(v66, v65, &qword_1EC643C68, &unk_1D1E764C0);
      if (v63(v65, 1, v45) == 1)
      {
        v73 = v96;
        (*v98)(v96, 1, 1, v100);
LABEL_42:
        v83 = v90;
        sub_1D1741A30(v73, &qword_1EC643870, &qword_1D1E72028);
        v84 = v108;
        *v83 = v115;
        *(v83 + 1) = v84;
        *(v83 + 2) = v94;
        *(v83 + 3) = v41;
        v85 = v119;
        v86 = v120;
        *(v83 + 4) = v37;
        *(v83 + 5) = v85;
        v87 = v102;
        *(v83 + 6) = v86;
        *(v83 + 7) = v87;
        v88 = v107;
        *(v83 + 8) = v103;
        *(v83 + 9) = v88;
        a3 = v93;
        *(v83 + 10) = v104;
        return a3;
      }

      a1 = v105;
      sub_1D1741A90(v65, v105, &qword_1EC642DB0, &unk_1D1E6F360);
      v102(&v124, a1);
      sub_1D1741A30(a1, &qword_1EC642DB0, &unk_1D1E6F360);
      v39 = v124;

      v40 = 0;
      v42 = v41;
    }

    v44 = *(v39 + 16);
    v45 = v117;
    if (v40 == v44)
    {
      v46 = v99;
      (*v98)(v99, 1, 1, v100);
      sub_1D1741A30(v46, &qword_1EC643870, &qword_1D1E72028);
      goto LABEL_12;
    }

    if (v40 >= v44)
    {
      goto LABEL_46;
    }

    v67 = v97;
    v68 = *(v97 + 72);
    v69 = v39 + ((*(v97 + 80) + 32) & ~*(v97 + 80)) + v68 * v40;
    v70 = v99;
    v71 = v40;
    sub_1D17ECA38(v69, v99, type metadata accessor for StaticServiceCharacteristicDoublet);
    v104 = v71 + 1;
    v72 = v100;
    (*(v67 + 56))(v70, 0, 1, v100);
    v73 = v96;
    sub_1D1741A90(v70, v96, &qword_1EC643870, &qword_1D1E72028);
    if ((*(v67 + 48))(v73, 1, v72) == 1)
    {
      goto LABEL_42;
    }

    v74 = v73;
    v75 = v95;
    sub_1D17ECF60(v74, v95, type metadata accessor for StaticServiceCharacteristicDoublet);
    v76 = v75;
    v77 = v92;
    result = sub_1D17ECF60(v76, v92, type metadata accessor for StaticServiceCharacteristicDoublet);
    if (v91 == v89[0])
    {
      a1 = v90;
      a3 = v89[0];
      v32 = v103;
      v30 = v102;
      v80 = v115;
      v81 = v94;
      v78 = v107;
      v79 = v104;
      goto LABEL_40;
    }

    a1 = (v77 + v68);
    v92 = a1;
    v93 = v91;
    v43 = v91 + 1;
    v39 = v107;
    v40 = v104;
    if (!__OFADD__(v91, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_37:
  a3 = 0;
  *a1 = v29;
  *(a1 + 1) = v33;
  *(a1 + 2) = v36;
  *(a1 + 3) = 0;
  *(a1 + 4) = v37;
  *(a1 + 5) = result;
  *(a1 + 6) = v31;
  *(a1 + 7) = v30;
  *(a1 + 9) = 0;
  *(a1 + 10) = 0;
  *(a1 + 8) = v32;
  return a3;
}

void *sub_1D1805608(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D1805708(void *result, _WORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 7) | (2 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D1805808(void *result, _DWORD *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + ((v9 << 8) | (4 * v14)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D1805908(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 56;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 56);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1D1805A20(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 48) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1D1805BB4(void *result, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      *a2 = *(*(a4 + 48) + (v14 | (v9 << 6)));
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      ++a2;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v16 = v9 + 1;
    }

    else
    {
      v16 = (63 - v6) >> 6;
    }

    v9 = v16 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1D1805CB0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v40 = sub_1D1E66A7C();
  v42 = *(v40 - 8);
  v8 = MEMORY[0x1EEE9AC00](v40);
  v41 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v39 = &v33 - v11;
  v12 = a4 + 56;
  v13 = -1 << *(a4 + 32);
  if (-v13 < 64)
  {
    v14 = ~(-1 << -v13);
  }

  else
  {
    v14 = -1;
  }

  v15 = v14 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v31 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v12;
    *(a1 + 16) = ~v13;
    *(a1 + 24) = v31;
    *(a1 + 32) = v15;
    return a3;
  }

  if (!a3)
  {
    v31 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v33 = -1 << *(a4 + 32);
    v34 = a1;
    result = 0;
    v16 = 0;
    v17 = (63 - v13) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    a1 = 1;
    v37 = a4 + 56;
    v38 = a3;
    v18 = v39;
    while (v15)
    {
      v44 = a2;
LABEL_15:
      v21 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
      v43 = v16;
      v22 = a4;
      v23 = *(a4 + 48);
      v24 = v41;
      v25 = v42;
      v26 = *(v42 + 72);
      v27 = v40;
      (*(v42 + 16))(v41, v23 + v26 * (v21 | (v16 << 6)), v40);
      v28 = *(v25 + 32);
      v28(v18, v24, v27);
      v29 = v44;
      v28(v44, v18, v27);
      a3 = v38;
      if (a1 == v38)
      {
        v13 = v33;
        a1 = v34;
        a4 = v22;
        v31 = v43;
        v12 = v37;
        goto LABEL_25;
      }

      a2 = &v29[v26];
      result = a1;
      v30 = __OFADD__(a1++, 1);
      a4 = v22;
      v16 = v43;
      v12 = v37;
      if (v30)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v19 = v16;
    while (1)
    {
      v20 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v20 >= v17)
      {
        break;
      }

      v15 = *(v12 + 8 * v20);
      ++v19;
      if (v15)
      {
        v44 = a2;
        v16 = v20;
        goto LABEL_15;
      }
    }

    v15 = 0;
    if (v17 <= v16 + 1)
    {
      v32 = v16 + 1;
    }

    else
    {
      v32 = v17;
    }

    v31 = v32 - 1;
    a3 = result;
    v13 = v33;
    a1 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D1805F94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for DashboardSortableData(0);
  v33 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v32 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v31 = &v28 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v17 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v17;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v17 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v29 = a1;
    v30 = a3;
    result = 0;
    v17 = 0;
    v28 = v14;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v32;
      a1 = *(v33 + 72);
      sub_1D17ECA38(*(a4 + 48) + a1 * (v22 | (v17 << 6)), v32, type metadata accessor for DashboardSortableData);
      v24 = v23;
      v25 = v31;
      sub_1D17ECF60(v24, v31, type metadata accessor for DashboardSortableData);
      sub_1D17ECF60(v25, a2, type metadata accessor for DashboardSortableData);
      if (v19 == v30)
      {
        a1 = v29;
        a3 = v30;
        goto LABEL_23;
      }

      a2 += a1;
      result = v19;
      if (__OFADD__(v19++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v27 = v17 + 1;
    }

    else
    {
      v27 = v18;
    }

    v17 = v27 - 1;
    a3 = result;
    a1 = v29;
LABEL_23:
    v14 = v28;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_1D1806314(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v40 = a6;
  v41 = a7;
  v11 = a5(0);
  v39 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = a4 + 8;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & a4[8];
  if (!a2)
  {
LABEL_18:
    v21 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v21;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a3;
    result = 0;
    v21 = 0;
    v35 = v18;
    v22 = (63 - v18) >> 6;
    v23 = 1;
    while (v20)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      a1 = a4;
      v27 = a4[7];
      v28 = v38;
      v29 = *(v39 + 72);
      sub_1D17ECA38(v27 + v29 * (v26 | (v21 << 6)), v38, v40);
      v30 = v28;
      v31 = v41;
      sub_1D17ECF60(v30, v16, v41);
      sub_1D17ECF60(v16, a2, v31);
      if (v23 == v37)
      {
        a4 = a1;
        a1 = v36;
        a3 = v37;
        goto LABEL_23;
      }

      a2 += v29;
      result = v23;
      v32 = __OFADD__(v23++, 1);
      a4 = a1;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v22)
      {
        break;
      }

      v20 = v17[v25];
      ++v24;
      if (v20)
      {
        v21 = v25;
        goto LABEL_14;
      }
    }

    v20 = 0;
    if (v22 <= v21 + 1)
    {
      v33 = v21 + 1;
    }

    else
    {
      v33 = v22;
    }

    v21 = v33 - 1;
    a3 = result;
    a1 = v36;
LABEL_23:
    v18 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

uint64_t *sub_1D1806574(uint64_t *result, uint64_t **a2, void *a3, uint64_t a4, unint64_t *a5, void *a6, unint64_t *a7)
{
  v9 = a4;
  v11 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v15 = 0;
    v23 = -1 << *(v9 + 32);
    v13 = v9 + 56;
    v14 = ~v23;
    v24 = -v23;
    if (v24 < 64)
    {
      v25 = ~(-1 << v24);
    }

    else
    {
      v25 = -1;
    }

    v16 = v25 & *(v9 + 56);
    v17 = a3;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    a6 = 0;
    goto LABEL_32;
  }

  sub_1D1E686EC();
  sub_1D1741B10(0, a5, a6);
  sub_1D1771944(a7, a5, a6);
  result = sub_1D1E681BC();
  v9 = v32;
  v13 = v33;
  v14 = v34;
  v15 = v35;
  v16 = v36;
  v17 = a3;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!v17)
  {
    a6 = 0;
    goto LABEL_32;
  }

  if ((v17 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v28 = a5;
  v29 = a6;
  a6 = 0;
  v27 = v14;
  a5 = ((v14 + 64) >> 6);
  v18 = 1;
  while (1)
  {
    if (v9 < 0)
    {
      if (!sub_1D1E6877C())
      {
        goto LABEL_30;
      }

      sub_1D1741B10(0, v28, v29);
      swift_dynamicCast();
      result = v31;
      v17 = a3;
      if (!v31)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v19 = v15;
    if (!v16)
    {
      break;
    }

    v20 = v15;
LABEL_13:
    v21 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    result = *(*(v9 + 48) + ((v20 << 9) | (8 * v21)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v18 == v17)
    {
      a6 = v17;
      goto LABEL_30;
    }

    ++a2;
    a6 = v18;
    if (__OFADD__(v18++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v20 = (v19 + 1);
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v20 >= a5)
    {
      break;
    }

    v16 = *(v13 + 8 * v20);
    ++v19;
    if (v16)
    {
      v15 = v20;
      goto LABEL_13;
    }
  }

  v16 = 0;
  if (a5 <= (v15 + 1))
  {
    v26 = (v15 + 1);
  }

  else
  {
    v26 = a5;
  }

  v15 = v26 - 1;
LABEL_30:
  v14 = v27;
LABEL_32:
  *v11 = v9;
  v11[1] = v13;
  v11[2] = v14;
  v11[3] = v15;
  v11[4] = v16;
  return a6;
}

uint64_t sub_1D18067E4(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v40 = a6;
  v41 = a7;
  v11 = a5(0);
  v39 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v38 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - v15;
  v17 = a4 + 7;
  v18 = -1 << *(a4 + 32);
  if (-v18 < 64)
  {
    v19 = ~(-1 << -v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & a4[7];
  if (!a2)
  {
LABEL_18:
    v21 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v17;
    a1[2] = ~v18;
    a1[3] = v21;
    a1[4] = v20;
    return a3;
  }

  if (!a3)
  {
    v21 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v36 = a1;
    v37 = a3;
    result = 0;
    v21 = 0;
    v35 = v18;
    v22 = (63 - v18) >> 6;
    v23 = 1;
    while (v20)
    {
LABEL_14:
      v26 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      a1 = a4;
      v27 = a4[6];
      v28 = v38;
      v29 = *(v39 + 72);
      sub_1D17ECA38(v27 + v29 * (v26 | (v21 << 6)), v38, v40);
      v30 = v28;
      v31 = v41;
      sub_1D17ECF60(v30, v16, v41);
      sub_1D17ECF60(v16, a2, v31);
      if (v23 == v37)
      {
        a4 = a1;
        a1 = v36;
        a3 = v37;
        goto LABEL_23;
      }

      a2 += v29;
      result = v23;
      v32 = __OFADD__(v23++, 1);
      a4 = a1;
      if (v32)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v24 = v21;
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v25 >= v22)
      {
        break;
      }

      v20 = v17[v25];
      ++v24;
      if (v20)
      {
        v21 = v25;
        goto LABEL_14;
      }
    }

    v20 = 0;
    if (v22 <= v21 + 1)
    {
      v33 = v21 + 1;
    }

    else
    {
      v33 = v22;
    }

    v21 = v33 - 1;
    a3 = result;
    a1 = v36;
LABEL_23:
    v18 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

BOOL _s13HomeDataModel16AccessoryDetailsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticDeviceMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644620, &unk_1D1E75A00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644880, &qword_1D1E76500);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  if ((_s13HomeDataModel16AccessoryDetailsV7PayloadO2eeoiySbAE_AEtFZ_0(a1, a2) & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for AccessoryDetails(0);
  if ((_s13HomeDataModel25AccessoryDetailsBasicInfoV2eeoiySbAC_ACtFZ_0(a1 + *(v14 + 20), a2 + *(v14 + 20)) & 1) == 0)
  {
    return 0;
  }

  v26 = v14;
  v15 = *(v14 + 24);
  v16 = *(v11 + 48);
  sub_1D1741C08(a1 + v15, v13, &qword_1EC644620, &unk_1D1E75A00);
  v17 = a2 + v15;
  v18 = v16;
  sub_1D1741C08(v17, &v13[v16], &qword_1EC644620, &unk_1D1E75A00);
  v19 = *(v5 + 48);
  if (v19(v13, 1, v4) == 1)
  {
    if (v19(&v13[v18], 1, v4) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC644620, &unk_1D1E75A00);
      goto LABEL_11;
    }

LABEL_8:
    sub_1D1741A30(v13, &qword_1EC644880, &qword_1D1E76500);
    return 0;
  }

  sub_1D1741C08(v13, v10, &qword_1EC644620, &unk_1D1E75A00);
  if (v19(&v13[v18], 1, v4) == 1)
  {
    sub_1D17ECFC8(v10, type metadata accessor for StaticDeviceMetadata);
    goto LABEL_8;
  }

  sub_1D17ECF60(&v13[v18], v7, type metadata accessor for StaticDeviceMetadata);
  v21 = _s13HomeDataModel20StaticDeviceMetadataV2eeoiySbAC_ACtFZ_0(v10, v7);
  sub_1D17ECFC8(v7, type metadata accessor for StaticDeviceMetadata);
  sub_1D17ECFC8(v10, type metadata accessor for StaticDeviceMetadata);
  sub_1D1741A30(v13, &qword_1EC644620, &unk_1D1E75A00);
  if ((v21 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v22 = *(v26 + 28);
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v23 != 8)
  {
    if (v24 == 8)
    {
      return 0;
    }

    if (v23 > 4)
    {
      switch(v23)
      {
        case 5:
          return v24 == 5;
        case 6:
          return v24 == 6;
        case 7:
          return v24 == 7;
      }
    }

    else
    {
      switch(v23)
      {
        case 2:
          return v24 == 2;
        case 3:
          return v24 == 3;
        case 4:
          return v24 == 4;
      }
    }

    return (v24 - 2) >= 6 && ((v24 ^ v23) & 1) == 0;
  }

  return v24 == 8;
}

uint64_t _s13HomeDataModel16AccessoryDetailsV7PayloadO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v2 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v42 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AccessoryDetails.Payload(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v41 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v41 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v41 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644878, &qword_1D1E764F8);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v41 - v26;
  v28 = *(v25 + 56);
  sub_1D17ECA38(v43, &v41 - v26, type metadata accessor for AccessoryDetails.Payload);
  sub_1D17ECA38(v44, &v27[v28], type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D17ECA38(v27, v18, type metadata accessor for AccessoryDetails.Payload);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v30 = type metadata accessor for StaticServiceGroup;
        v31 = v18;
        goto LABEL_15;
      }

      v32 = &v27[v28];
      v33 = v41;
      sub_1D17ECF60(v32, v41, type metadata accessor for StaticServiceGroup);
      v34 = _s13HomeDataModel18StaticServiceGroupV2eeoiySbAC_ACtFZ_0(v18, v33);
      v35 = type metadata accessor for StaticServiceGroup;
      sub_1D17ECFC8(v33, type metadata accessor for StaticServiceGroup);
      v36 = v18;
    }

    else
    {
      sub_1D17ECA38(v27, v15, type metadata accessor for AccessoryDetails.Payload);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v30 = type metadata accessor for StaticEndpoint;
        v31 = v15;
        goto LABEL_15;
      }

      v38 = &v27[v28];
      v39 = v42;
      sub_1D17ECF60(v38, v42, type metadata accessor for StaticEndpoint);
      v34 = static StaticEndpoint.== infix(_:_:)(v15, v39);
      v35 = type metadata accessor for StaticEndpoint;
      sub_1D17ECFC8(v39, type metadata accessor for StaticEndpoint);
      v36 = v15;
    }

    goto LABEL_17;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D17ECA38(v27, v21, type metadata accessor for AccessoryDetails.Payload);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v30 = type metadata accessor for StaticService;
      v31 = v21;
      goto LABEL_15;
    }

    sub_1D17ECF60(&v27[v28], v8, type metadata accessor for StaticService);
    v34 = static StaticService.== infix(_:_:)(v21, v8);
    sub_1D17ECFC8(v8, type metadata accessor for StaticService);
    v36 = v21;
    v37 = type metadata accessor for StaticService;
LABEL_18:
    sub_1D17ECFC8(v36, v37);
    sub_1D17ECFC8(v27, type metadata accessor for AccessoryDetails.Payload);
    return v34 & 1;
  }

  sub_1D17ECA38(v27, v23, type metadata accessor for AccessoryDetails.Payload);
  if (!swift_getEnumCaseMultiPayload())
  {
    sub_1D17ECF60(&v27[v28], v11, type metadata accessor for StaticAccessory);
    v34 = static StaticAccessory.== infix(_:_:)(v23, v11);
    v35 = type metadata accessor for StaticAccessory;
    sub_1D17ECFC8(v11, type metadata accessor for StaticAccessory);
    v36 = v23;
LABEL_17:
    v37 = v35;
    goto LABEL_18;
  }

  v30 = type metadata accessor for StaticAccessory;
  v31 = v23;
LABEL_15:
  sub_1D17ECFC8(v31, v30);
  sub_1D1741A30(v27, &qword_1EC644878, &qword_1D1E764F8);
  v34 = 0;
  return v34 & 1;
}

unint64_t sub_1D18073B4()
{
  result = qword_1EC644630;
  if (!qword_1EC644630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644630);
  }

  return result;
}

uint64_t sub_1D1807408(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1807450()
{
  result = qword_1EC644650;
  if (!qword_1EC644650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644650);
  }

  return result;
}

unint64_t sub_1D18074A4()
{
  result = qword_1EC644678;
  if (!qword_1EC644678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644678);
  }

  return result;
}

unint64_t sub_1D18074F8()
{
  result = qword_1EC6446C8;
  if (!qword_1EC6446C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6446C8);
  }

  return result;
}

unint64_t sub_1D180754C()
{
  result = qword_1EC6446D0;
  if (!qword_1EC6446D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6446D0);
  }

  return result;
}

unint64_t sub_1D18075A0()
{
  result = qword_1EC6446E0;
  if (!qword_1EC6446E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6446E0);
  }

  return result;
}

unint64_t sub_1D18075F4()
{
  result = qword_1EC6446F0;
  if (!qword_1EC6446F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6446F0);
  }

  return result;
}

unint64_t sub_1D1807648()
{
  result = qword_1EC644700;
  if (!qword_1EC644700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644700);
  }

  return result;
}

unint64_t sub_1D18076E8()
{
  result = qword_1EE07D0F0;
  if (!qword_1EE07D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07D0F0);
  }

  return result;
}

uint64_t dispatch thunk of Committable.commit()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return v7(a1, a2);
}

void sub_1D1807954(uint64_t a1)
{
  type metadata accessor for AccessoryDetails.Payload(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for AccessoryDetailsBasicInfo(319);
    if (v2 <= 0x3F)
    {
      sub_1D1807A08(319);
      if (v3 <= 0x3F)
      {
        sub_1D1807A60();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1807A08(uint64_t a1)
{
  if (!qword_1EE07DF30)
  {
    type metadata accessor for StaticDeviceMetadata(255);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07DF30);
    }
  }
}

void sub_1D1807A60()
{
  if (!qword_1EC6447B8)
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC6447B8);
    }
  }
}

uint64_t sub_1D1807AB0(uint64_t a1)
{
  result = type metadata accessor for StaticAccessory(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StaticService(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for StaticServiceGroup(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for StaticEndpoint(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D1807C3C()
{
  result = qword_1EC6447D0;
  if (!qword_1EC6447D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6447D0);
  }

  return result;
}

unint64_t sub_1D1807C94()
{
  result = qword_1EC6447D8;
  if (!qword_1EC6447D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6447D8);
  }

  return result;
}

unint64_t sub_1D1807CEC()
{
  result = qword_1EC6447E0;
  if (!qword_1EC6447E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6447E0);
  }

  return result;
}

unint64_t sub_1D1807D44()
{
  result = qword_1EC6447E8;
  if (!qword_1EC6447E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6447E8);
  }

  return result;
}

unint64_t sub_1D1807D9C()
{
  result = qword_1EC6447F0;
  if (!qword_1EC6447F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6447F0);
  }

  return result;
}

unint64_t sub_1D1807DF4()
{
  result = qword_1EC6447F8;
  if (!qword_1EC6447F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6447F8);
  }

  return result;
}

unint64_t sub_1D1807E4C()
{
  result = qword_1EC644800;
  if (!qword_1EC644800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644800);
  }

  return result;
}

unint64_t sub_1D1807EA4()
{
  result = qword_1EC644808;
  if (!qword_1EC644808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644808);
  }

  return result;
}

unint64_t sub_1D1807EFC()
{
  result = qword_1EC644810;
  if (!qword_1EC644810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644810);
  }

  return result;
}

unint64_t sub_1D1807F54()
{
  result = qword_1EC644818;
  if (!qword_1EC644818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644818);
  }

  return result;
}

unint64_t sub_1D1807FAC()
{
  result = qword_1EC644820;
  if (!qword_1EC644820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644820);
  }

  return result;
}

unint64_t sub_1D1808004()
{
  result = qword_1EC644828;
  if (!qword_1EC644828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644828);
  }

  return result;
}

unint64_t sub_1D180805C()
{
  result = qword_1EC644830;
  if (!qword_1EC644830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644830);
  }

  return result;
}

unint64_t sub_1D18080B4()
{
  result = qword_1EC644838;
  if (!qword_1EC644838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644838);
  }

  return result;
}

unint64_t sub_1D180810C()
{
  result = qword_1EC644840;
  if (!qword_1EC644840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644840);
  }

  return result;
}

unint64_t sub_1D1808164()
{
  result = qword_1EC644848;
  if (!qword_1EC644848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644848);
  }

  return result;
}

unint64_t sub_1D18081BC()
{
  result = qword_1EC644850;
  if (!qword_1EC644850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644850);
  }

  return result;
}

unint64_t sub_1D1808214()
{
  result = qword_1EC644858;
  if (!qword_1EC644858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC644858);
  }

  return result;
}

uint64_t sub_1D1808268(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x64616F6C796170 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x666E496369736162 && a2 == 0xE90000000000006FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D656369766564 && a2 == 0xEE00617461646174 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D1EBA0C0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D18083E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6341636974617473 && a2 == 0xEF79726F73736563;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6553636974617473 && a2 == 0xED00006563697672 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EBA0E0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E45636974617473 && a2 == 0xEE00746E696F7064)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t AccessoryDetailsBasicInfo.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v2, v18, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D182161C(v18, v9, type metadata accessor for StaticServiceGroup);
      v23 = sub_1D1E66A7C();
      (*(*(v23 - 8) + 16))(a1, v9, v23);
      v21 = type metadata accessor for StaticServiceGroup;
      v22 = v9;
    }

    else
    {
      sub_1D182161C(v18, v6, type metadata accessor for StaticEndpoint);
      v25 = sub_1D1E66A7C();
      (*(*(v25 - 8) + 16))(a1, v6, v25);
      v21 = type metadata accessor for StaticEndpoint;
      v22 = v6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D182161C(v18, v12, type metadata accessor for StaticService);
    v24 = sub_1D1E66A7C();
    (*(*(v24 - 8) + 16))(a1, v12, v24);
    v21 = type metadata accessor for StaticService;
    v22 = v12;
  }

  else
  {
    sub_1D182161C(v18, v15, type metadata accessor for StaticAccessory);
    v20 = sub_1D1E66A7C();
    (*(*(v20 - 8) + 16))(a1, v15, v20);
    v21 = type metadata accessor for StaticAccessory;
    v22 = v15;
  }

  return sub_1D18215BC(v22, v21);
}

uint64_t sub_1D18089F0()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1D17ED344;
  v4 = MEMORY[0x1E69E7CA8] + 8;
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v3, v4, v5, 0, 0, &unk_1D1E76530, v2, v6);
}

uint64_t AccessoryDetailsBasicInfo.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return sub_1D1808B10(a1, type metadata accessor for StaticAccessory, a2);
}

{
  return sub_1D1808B10(a1, type metadata accessor for StaticService, a2);
}

{
  return sub_1D1808B10(a1, type metadata accessor for StaticServiceGroup, a2);
}

uint64_t sub_1D1808B10@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a4@<X8>)
{
  v7 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v8 = (a4 + v7[5]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v7[6];
  v10 = type metadata accessor for StaticRoom(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = (a4 + v7[7]);
  *v11 = 0;
  v11[1] = 0;
  *(a4 + v7[8]) = 2;
  *(a4 + v7[9]) = 2;
  *(a4 + v7[10]) = 92;
  sub_1D182161C(a1, a4, a2);
  type metadata accessor for AccessoryDetails.Payload(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t AccessoryDetailsBasicInfo.primaryServiceKind.getter@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  AccessoryDetailsBasicInfo.primaryStaticService.getter(&v8 - v3);
  v5 = type metadata accessor for StaticService(0);
  if ((*(*(v5 - 8) + 48))(v4, 1, v5) == 1)
  {
    result = sub_1D1741A30(v4, &qword_1EC6436F0, &qword_1D1E99BC0);
    v7 = 0;
  }

  else
  {
    v7 = v4[*(v5 + 104)];
    result = sub_1D18215BC(v4, type metadata accessor for StaticService);
  }

  *a1 = v7;
  return result;
}

uint64_t sub_1D1808D68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a2;
  v3[3] = a3;
  v4 = *(type metadata accessor for AccessoryDetailsBasicInfo(0) - 8);
  v3[4] = v4;
  v3[5] = *(v4 + 64);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1808E64, 0, 0);
}

uint64_t sub_1D1808E64()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[3];
  v16 = v4;
  v5 = sub_1D1E67E7C();
  v6 = *(*(v5 - 8) + 56);
  v6(v2, 1, 1, v5);
  sub_1D1821554(v4, v1, type metadata accessor for AccessoryDetailsBasicInfo);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  sub_1D182161C(v1, v8 + v7, type metadata accessor for AccessoryDetailsBasicInfo);
  sub_1D1DE2784(v2, &unk_1D1E768C8, v8);
  sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v2, 1, 1, v5);
  sub_1D1821554(v16, v1, type metadata accessor for AccessoryDetailsBasicInfo);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  sub_1D182161C(v1, v9 + v7, type metadata accessor for AccessoryDetailsBasicInfo);
  sub_1D1DE2784(v2, &unk_1D1E768D8, v9);
  sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v2, 1, 1, v5);
  sub_1D1821554(v16, v1, type metadata accessor for AccessoryDetailsBasicInfo);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  sub_1D182161C(v1, v10 + v7, type metadata accessor for AccessoryDetailsBasicInfo);
  sub_1D1DE2784(v2, &unk_1D1E768E8, v10);
  sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v2, 1, 1, v5);
  sub_1D1821554(v16, v1, type metadata accessor for AccessoryDetailsBasicInfo);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  sub_1D182161C(v1, v11 + v7, type metadata accessor for AccessoryDetailsBasicInfo);
  sub_1D1DE2784(v2, &unk_1D1E768F8, v11);
  sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v2, 1, 1, v5);
  sub_1D1821554(v16, v1, type metadata accessor for AccessoryDetailsBasicInfo);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  sub_1D182161C(v1, v12 + v7, type metadata accessor for AccessoryDetailsBasicInfo);
  sub_1D1DE2784(v2, &unk_1D1E76908, v12);
  sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);

  v13 = *(v15 + 8);

  return v13();
}

uint64_t sub_1D1809274(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1808D68(a1, a2, v6);
}

uint64_t sub_1D1809324()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return AccessoryDetailsBasicInfo.commitName()();
}

uint64_t AccessoryDetailsBasicInfo.commitName()()
{
  v1[6] = v0;
  type metadata accessor for StaticEndpoint(0);
  v1[7] = swift_task_alloc();
  type metadata accessor for StaticServiceGroup(0);
  v1[8] = swift_task_alloc();
  v1[9] = type metadata accessor for StateSnapshot(0);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v1[11] = swift_task_alloc();
  v2 = type metadata accessor for StaticService(0);
  v1[12] = v2;
  v1[13] = *(v2 - 8);
  v1[14] = swift_task_alloc();
  v1[15] = swift_task_alloc();
  v3 = type metadata accessor for StaticAccessory(0);
  v1[16] = v3;
  v1[17] = *(v3 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v1[21] = type metadata accessor for AccessoryDetails.Payload(0);
  v1[22] = swift_task_alloc();
  v1[23] = swift_task_alloc();
  v1[24] = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v1[25] = swift_task_alloc();
  v1[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D180962C, 0, 0);
}

uint64_t sub_1D180962C()
{
  v30 = v0;
  v1 = v0[6];
  v2 = (v1 + *(v0[24] + 20));
  v3 = *v2;
  v0[27] = *v2;
  v4 = v2[1];
  v0[28] = v4;
  if (v4)
  {
    if (qword_1EC642470 != -1)
    {
      swift_once();
      v1 = v0[6];
    }

    v5 = v0[26];
    v6 = sub_1D1E6709C();
    v0[29] = __swift_project_value_buffer(v6, qword_1EC64F440);
    sub_1D1821554(v1, v5, type metadata accessor for AccessoryDetailsBasicInfo);

    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6835C();

    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[26];
    v26 = v3;
    if (v9)
    {
      v11 = v0[23];
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v27 = v13;
      *v12 = 136315394;
      *(v12 + 4) = sub_1D1B1312C(v3, v4, &v27);
      *(v12 + 12) = 2080;
      sub_1D1821554(v10, v11, type metadata accessor for AccessoryDetails.Payload);
      v14 = sub_1D17EEED0(v11);
      v28 = 0xD000000000000019;
      v29 = 0x80000001D1EB9EC0;
      MEMORY[0x1D3890F70](v14);

      v15 = v28;
      v16 = v29;
      sub_1D18215BC(v11, type metadata accessor for AccessoryDetails.Payload);
      sub_1D18215BC(v10, type metadata accessor for AccessoryDetailsBasicInfo);
      v17 = sub_1D1B1312C(v15, v16, &v27);

      *(v12 + 14) = v17;
      _os_log_impl(&dword_1D16EC000, v7, v8, "Write new name: %s to staticServiceGroup %s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v12, -1, -1);
    }

    else
    {

      sub_1D18215BC(v10, type metadata accessor for AccessoryDetailsBasicInfo);
    }

    sub_1D1821554(v0[6], v0[22], type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v21 = v0[22];
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D182161C(v21, v0[8], type metadata accessor for StaticServiceGroup);
        v23 = swift_task_alloc();
        v0[43] = v23;
        *v23 = v0;
        v23[1] = sub_1D180AC28;

        return StaticServiceGroup.set(displayName:)(v26, v4);
      }

      else
      {
        sub_1D182161C(v21, v0[7], type metadata accessor for StaticEndpoint);
        v25 = swift_task_alloc();
        v0[45] = v25;
        *v25 = v0;
        v25[1] = sub_1D180AE58;

        return StaticEndpoint.set(name:)(v26, v4);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1D182161C(v21, v0[14], type metadata accessor for StaticService);
      v24 = swift_task_alloc();
      v0[34] = v24;
      *v24 = v0;
      v24[1] = sub_1D180A23C;

      return StaticService.set(displayName:)(v26, v4);
    }

    else
    {
      sub_1D182161C(v21, v0[20], type metadata accessor for StaticAccessory);
      v22 = swift_task_alloc();
      v0[30] = v22;
      *v22 = v0;
      v22[1] = sub_1D1809C5C;

      return StaticAccessory.set(displayName:)(v26, v4);
    }
  }

  else
  {

    v18 = v0[1];

    return v18();
  }
}

uint64_t sub_1D1809C5C()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1D180B070;
  }

  else
  {
    v2 = sub_1D1809D70;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1809D70(uint64_t a1)
{
  v2 = v1[12];
  v3 = v1[13];
  v4 = v1[11];
  StaticAccessory.primaryStaticService.getter(v4);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    v5 = v1[11];
    sub_1D18215BC(v1[20], type metadata accessor for StaticAccessory);
    sub_1D1741A30(v5, &qword_1EC6436F0, &qword_1D1E99BC0);
LABEL_6:

    v8 = v1[1];

    return v8();
  }

  sub_1D182161C(v1[11], v1[15], type metadata accessor for StaticService);
  v6 = StaticAccessory.hasVisibleServices(minCount:)(2);
  v7 = v1[20];
  if (v6 || (*(v7 + *(v1[16] + 104)) & 1) != 0)
  {
    sub_1D18215BC(v1[15], type metadata accessor for StaticService);
    sub_1D18215BC(v7, type metadata accessor for StaticAccessory);
    goto LABEL_6;
  }

  v10 = v1[28];
  v11 = swift_task_alloc();
  v1[32] = v11;
  *v11 = v1;
  v11[1] = sub_1D1809FEC;
  v12 = v1[27];

  return StaticService.set(displayName:)(v12, v10);
}

uint64_t sub_1D1809FEC()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1D180B388;
  }

  else
  {
    v2 = sub_1D180A100;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D180A100()
{
  v1 = v0[20];
  sub_1D18215BC(v0[15], type metadata accessor for StaticService);
  sub_1D18215BC(v1, type metadata accessor for StaticAccessory);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D180A23C()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1D180B6C0;
  }

  else
  {
    v2 = sub_1D180A350;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D180A350()
{
  *(v0 + 288) = sub_1D1E67E1C();
  *(v0 + 296) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D180A3E8, v2, v1);
}

uint64_t sub_1D180A3E8()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D180A480, 0, 0);
}

uint64_t sub_1D180A480(uint64_t a1)
{
  *(v1 + 304) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D180A50C, v3, v2);
}

uint64_t sub_1D180A50C()
{

  *(v0 + 312) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D180A580, 0, 0);
}

uint64_t sub_1D180A580(uint64_t a1)
{
  *(v1 + 320) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D180A60C, v3, v2);
}

uint64_t sub_1D180A60C()
{
  v1 = v0[39];
  v2 = v0[10];

  swift_getKeyPath();
  v0[5] = v1;
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D1821554(v1 + v3, v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D180A734, 0, 0);
}

uint64_t sub_1D180A734()
{
  v1 = v0[10];
  v2 = *(v1 + *(v0[9] + 32));

  sub_1D18215BC(v1, type metadata accessor for StateSnapshot);
  if (!*(v2 + 16) || (v3 = sub_1D1742188(), (v4 & 1) == 0))
  {
    v9 = v0[14];

    goto LABEL_7;
  }

  v6 = v0[18];
  v5 = v0[19];
  sub_1D1821554(*(v2 + 56) + *(v0[17] + 72) * v3, v6, type metadata accessor for StaticAccessory);

  sub_1D182161C(v6, v5, type metadata accessor for StaticAccessory);
  v7 = StaticAccessory.hasVisibleServices(minCount:)(2);
  v8 = v0[19];
  if (v7 || (*(v8 + *(v0[16] + 104)) & 1) != 0)
  {
    v9 = v0[14];
    sub_1D18215BC(v8, type metadata accessor for StaticAccessory);
LABEL_7:
    sub_1D18215BC(v9, type metadata accessor for StaticService);

    v10 = v0[1];

    return v10();
  }

  v12 = v0[28];
  v13 = swift_task_alloc();
  v0[41] = v13;
  *v13 = v0;
  v13[1] = sub_1D180A9D8;
  v14 = v0[27];

  return StaticAccessory.set(displayName:)(v14, v12);
}

uint64_t sub_1D180A9D8()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1D180B9D8;
  }

  else
  {
    v2 = sub_1D180AAEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D180AAEC()
{
  v1 = v0[14];
  sub_1D18215BC(v0[19], type metadata accessor for StaticAccessory);
  sub_1D18215BC(v1, type metadata accessor for StaticService);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D180AC28()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1D180BD10;
  }

  else
  {
    v2 = sub_1D180AD3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D180AD3C()
{
  sub_1D18215BC(*(v0 + 64), type metadata accessor for StaticServiceGroup);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D180AE58()
{

  return MEMORY[0x1EEE6DFA0](sub_1D180AF54, 0, 0);
}

uint64_t sub_1D180AF54()
{
  sub_1D18215BC(*(v0 + 56), type metadata accessor for StaticEndpoint);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D180B070()
{
  v20 = v0;
  sub_1D18215BC(v0[20], type metadata accessor for StaticAccessory);
  v1 = v0[31];
  sub_1D1821554(v0[6], v0[25], type metadata accessor for AccessoryDetailsBasicInfo);

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6833C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[27];
    v4 = v0[28];
    v6 = v0[25];
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1D1B1312C(v5, v4, &v17);
    *(v8 + 12) = 2080;
    sub_1D1821554(v6, v7, type metadata accessor for AccessoryDetails.Payload);
    v10 = sub_1D17EEED0(v7);
    v18 = 0xD000000000000019;
    v19 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v10);

    v11 = v18;
    v12 = v19;
    sub_1D18215BC(v7, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v6, type metadata accessor for AccessoryDetailsBasicInfo);
    v13 = sub_1D1B1312C(v11, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1D16EC000, v2, v3, "Error commit name: %s for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {
    v14 = v0[25];

    sub_1D18215BC(v14, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D180B388()
{
  v21 = v0;
  v1 = v0[20];
  sub_1D18215BC(v0[15], type metadata accessor for StaticService);
  sub_1D18215BC(v1, type metadata accessor for StaticAccessory);
  v2 = v0[33];
  sub_1D1821554(v0[6], v0[25], type metadata accessor for AccessoryDetailsBasicInfo);

  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6833C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[27];
    v5 = v0[28];
    v7 = v0[25];
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1D1B1312C(v6, v5, &v18);
    *(v9 + 12) = 2080;
    sub_1D1821554(v7, v8, type metadata accessor for AccessoryDetails.Payload);
    v11 = sub_1D17EEED0(v8);
    v19 = 0xD000000000000019;
    v20 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v11);

    v12 = v19;
    v13 = v20;
    sub_1D18215BC(v8, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v7, type metadata accessor for AccessoryDetailsBasicInfo);
    v14 = sub_1D1B1312C(v12, v13, &v18);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1D16EC000, v3, v4, "Error commit name: %s for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
    v15 = v0[25];

    sub_1D18215BC(v15, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D180B6C0()
{
  v20 = v0;
  sub_1D18215BC(v0[14], type metadata accessor for StaticService);
  v1 = v0[35];
  sub_1D1821554(v0[6], v0[25], type metadata accessor for AccessoryDetailsBasicInfo);

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6833C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[27];
    v4 = v0[28];
    v6 = v0[25];
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1D1B1312C(v5, v4, &v17);
    *(v8 + 12) = 2080;
    sub_1D1821554(v6, v7, type metadata accessor for AccessoryDetails.Payload);
    v10 = sub_1D17EEED0(v7);
    v18 = 0xD000000000000019;
    v19 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v10);

    v11 = v18;
    v12 = v19;
    sub_1D18215BC(v7, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v6, type metadata accessor for AccessoryDetailsBasicInfo);
    v13 = sub_1D1B1312C(v11, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1D16EC000, v2, v3, "Error commit name: %s for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {
    v14 = v0[25];

    sub_1D18215BC(v14, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D180B9D8()
{
  v21 = v0;
  v1 = v0[14];
  sub_1D18215BC(v0[19], type metadata accessor for StaticAccessory);
  sub_1D18215BC(v1, type metadata accessor for StaticService);
  v2 = v0[42];
  sub_1D1821554(v0[6], v0[25], type metadata accessor for AccessoryDetailsBasicInfo);

  v3 = sub_1D1E6707C();
  v4 = sub_1D1E6833C();

  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[27];
    v5 = v0[28];
    v7 = v0[25];
    v8 = v0[23];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_1D1B1312C(v6, v5, &v18);
    *(v9 + 12) = 2080;
    sub_1D1821554(v7, v8, type metadata accessor for AccessoryDetails.Payload);
    v11 = sub_1D17EEED0(v8);
    v19 = 0xD000000000000019;
    v20 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v11);

    v12 = v19;
    v13 = v20;
    sub_1D18215BC(v8, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v7, type metadata accessor for AccessoryDetailsBasicInfo);
    v14 = sub_1D1B1312C(v12, v13, &v18);

    *(v9 + 14) = v14;
    _os_log_impl(&dword_1D16EC000, v3, v4, "Error commit name: %s for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  else
  {
    v15 = v0[25];

    sub_1D18215BC(v15, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D180BD10()
{
  v20 = v0;
  sub_1D18215BC(v0[8], type metadata accessor for StaticServiceGroup);
  v1 = v0[44];
  sub_1D1821554(v0[6], v0[25], type metadata accessor for AccessoryDetailsBasicInfo);

  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6833C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[27];
    v4 = v0[28];
    v6 = v0[25];
    v7 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_1D1B1312C(v5, v4, &v17);
    *(v8 + 12) = 2080;
    sub_1D1821554(v6, v7, type metadata accessor for AccessoryDetails.Payload);
    v10 = sub_1D17EEED0(v7);
    v18 = 0xD000000000000019;
    v19 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v10);

    v11 = v18;
    v12 = v19;
    sub_1D18215BC(v7, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v6, type metadata accessor for AccessoryDetailsBasicInfo);
    v13 = sub_1D1B1312C(v11, v12, &v17);

    *(v8 + 14) = v13;
    _os_log_impl(&dword_1D16EC000, v2, v3, "Error commit name: %s for %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {
    v14 = v0[25];

    sub_1D18215BC(v14, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_1D180C028()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4BFC;

  return AccessoryDetailsBasicInfo.commitRoom()();
}

uint64_t AccessoryDetailsBasicInfo.commitRoom()()
{
  v1[2] = v0;
  type metadata accessor for StaticEndpoint(0);
  v1[3] = swift_task_alloc();
  type metadata accessor for StaticServiceGroup(0);
  v1[4] = swift_task_alloc();
  type metadata accessor for StaticService(0);
  v1[5] = swift_task_alloc();
  type metadata accessor for StaticAccessory(0);
  v1[6] = swift_task_alloc();
  v1[7] = type metadata accessor for AccessoryDetails.Payload(0);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  v1[13] = swift_task_alloc();
  v2 = type metadata accessor for StaticRoom(0);
  v1[14] = v2;
  v1[15] = *(v2 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D180C2F0, 0, 0);
}

uint64_t sub_1D180C2F0()
{
  v40 = v0;
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  sub_1D1741C08(v0[2] + *(v0[10] + 24), v3, &qword_1EC643878, &qword_1D1E72030);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    v4 = v0[10];
    v5 = v0[2];
    sub_1D1741A30(v0[13], &qword_1EC643878, &qword_1D1E72030);
    if (*(v5 + *(v4 + 28) + 8))
    {
      v6 = swift_task_alloc();
      v0[31] = v6;
      *v6 = v0;
      v6[1] = sub_1D180E4D8;

      return sub_1D1817DA0();
    }

    else
    {

      v34 = v0[1];

      return v34();
    }
  }

  else
  {
    sub_1D182161C(v0[13], v0[18], type metadata accessor for StaticRoom);
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v8 = v0[17];
    v9 = v0[18];
    v10 = v0[12];
    v11 = v0[2];
    v12 = sub_1D1E6709C();
    v0[19] = __swift_project_value_buffer(v12, qword_1EC64F440);
    sub_1D1821554(v9, v8, type metadata accessor for StaticRoom);
    sub_1D1821554(v11, v10, type metadata accessor for AccessoryDetailsBasicInfo);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6835C();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[17];
    v17 = v0[12];
    if (v15)
    {
      v18 = v0[9];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v37 = v20;
      *v19 = 136315394;
      v21 = StaticRoom.description.getter();
      v23 = v22;
      sub_1D18215BC(v16, type metadata accessor for StaticRoom);
      v24 = sub_1D1B1312C(v21, v23, &v37);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      sub_1D1821554(v17, v18, type metadata accessor for AccessoryDetails.Payload);
      v25 = sub_1D17EEED0(v18);
      v38 = 0xD000000000000019;
      v39 = 0x80000001D1EB9EC0;
      MEMORY[0x1D3890F70](v25);

      v26 = v38;
      v27 = v39;
      sub_1D18215BC(v18, type metadata accessor for AccessoryDetails.Payload);
      sub_1D18215BC(v17, type metadata accessor for AccessoryDetailsBasicInfo);
      v28 = sub_1D1B1312C(v26, v27, &v37);

      *(v19 + 14) = v28;
      _os_log_impl(&dword_1D16EC000, v13, v14, "Write %s to dataModel room for %s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    else
    {

      sub_1D18215BC(v17, type metadata accessor for AccessoryDetailsBasicInfo);
      sub_1D18215BC(v16, type metadata accessor for StaticRoom);
    }

    sub_1D1821554(v0[2], v0[8], type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v30 = v0[8];
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D182161C(v30, v0[4], type metadata accessor for StaticServiceGroup);
        v33 = swift_task_alloc();
        v0[28] = v33;
        *v33 = v0;
        v33[1] = sub_1D180E068;

        return StaticServiceGroup.set(staticRoom:)();
      }

      else
      {
        sub_1D182161C(v30, v0[3], type metadata accessor for StaticEndpoint);
        v35 = swift_task_alloc();
        v0[30] = v35;
        *v35 = v0;
        v35[1] = sub_1D180E2AC;
        v36 = v0[18];

        return StaticEndpoint.set(roomID:)(v36);
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D182161C(v30, v0[5], type metadata accessor for StaticService);
        v31 = swift_task_alloc();
        v0[24] = v31;
        *v31 = v0;
        v32 = sub_1D180D544;
      }

      else
      {
        sub_1D182161C(v30, v0[6], type metadata accessor for StaticAccessory);
        v31 = swift_task_alloc();
        v0[20] = v31;
        *v31 = v0;
        v32 = sub_1D180CA20;
      }

      v31[1] = v32;

      return StaticRoom.room.getter();
    }
  }
}

uint64_t sub_1D180CA20(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D180CB20, 0, 0);
}

uint64_t sub_1D180CB20()
{
  v31 = v0;
  v1 = v0[21];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[22] = v2;
    *v2 = v0;
    v2[1] = sub_1D180CF5C;

    return StaticAccessory.set(room:)(v1);
  }

  else
  {
    sub_1D1820D0C();
    v4 = swift_allocError();
    swift_willThrow();
    sub_1D18215BC(v0[6], type metadata accessor for StaticAccessory);
    v5 = v0[11];
    v6 = v0[2];
    sub_1D1821554(v0[18], v0[16], type metadata accessor for StaticRoom);
    sub_1D1821554(v6, v5, type metadata accessor for AccessoryDetailsBasicInfo);
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[18];
    v11 = v0[16];
    v12 = v0[11];
    if (v9)
    {
      v27 = v0[18];
      v13 = v0[9];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136315394;
      v16 = StaticRoom.description.getter();
      v26 = v4;
      v18 = v17;
      sub_1D18215BC(v11, type metadata accessor for StaticRoom);
      v19 = sub_1D1B1312C(v16, v18, &v28);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      sub_1D1821554(v12, v13, type metadata accessor for AccessoryDetails.Payload);
      v20 = sub_1D17EEED0(v13);
      v29 = 0xD000000000000019;
      v30 = 0x80000001D1EB9EC0;
      MEMORY[0x1D3890F70](v20);

      v22 = v29;
      v21 = v30;
      sub_1D18215BC(v13, type metadata accessor for AccessoryDetails.Payload);
      sub_1D18215BC(v12, type metadata accessor for AccessoryDetailsBasicInfo);
      v23 = sub_1D1B1312C(v22, v21, &v28);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_1D16EC000, v7, v8, "Error committing room: %s for %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);

      v24 = v27;
    }

    else
    {

      sub_1D18215BC(v12, type metadata accessor for AccessoryDetailsBasicInfo);
      sub_1D18215BC(v11, type metadata accessor for StaticRoom);
      v24 = v10;
    }

    sub_1D18215BC(v24, type metadata accessor for StaticRoom);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1D180CF5C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1D180D1AC;
  }

  else
  {
    v2 = sub_1D180D070;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D180D070()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 48);

  sub_1D18215BC(v2, type metadata accessor for StaticAccessory);
  sub_1D18215BC(v1, type metadata accessor for StaticRoom);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D180D1AC()
{
  v29 = v0;

  v1 = *(v0 + 184);
  sub_1D18215BC(*(v0 + 48), type metadata accessor for StaticAccessory);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  sub_1D1821554(*(v0 + 144), *(v0 + 128), type metadata accessor for StaticRoom);
  sub_1D1821554(v3, v2, type metadata accessor for AccessoryDetailsBasicInfo);
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = *(v0 + 88);
  if (v6)
  {
    v10 = *(v0 + 72);
    v25 = v1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    v24 = v7;
    v13 = StaticRoom.description.getter();
    v15 = v14;
    sub_1D18215BC(v8, type metadata accessor for StaticRoom);
    v16 = sub_1D1B1312C(v13, v15, &v26);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_1D1821554(v9, v10, type metadata accessor for AccessoryDetails.Payload);
    v17 = sub_1D17EEED0(v10);
    v27 = 0xD000000000000019;
    v28 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v17);

    v18 = v27;
    v19 = v28;
    sub_1D18215BC(v10, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v9, type metadata accessor for AccessoryDetailsBasicInfo);
    v20 = sub_1D1B1312C(v18, v19, &v26);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Error committing room: %s for %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);

    v21 = v24;
  }

  else
  {

    sub_1D18215BC(v9, type metadata accessor for AccessoryDetailsBasicInfo);
    sub_1D18215BC(v8, type metadata accessor for StaticRoom);
    v21 = v7;
  }

  sub_1D18215BC(v21, type metadata accessor for StaticRoom);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D180D544(uint64_t a1)
{
  *(*v1 + 200) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D180D644, 0, 0);
}

uint64_t sub_1D180D644()
{
  v31 = v0;
  v1 = v0[25];
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[26] = v2;
    *v2 = v0;
    v2[1] = sub_1D180DA80;

    return StaticService.set(room:)(v1);
  }

  else
  {
    sub_1D1820D0C();
    v4 = swift_allocError();
    swift_willThrow();
    sub_1D18215BC(v0[5], type metadata accessor for StaticService);
    v5 = v0[11];
    v6 = v0[2];
    sub_1D1821554(v0[18], v0[16], type metadata accessor for StaticRoom);
    sub_1D1821554(v6, v5, type metadata accessor for AccessoryDetailsBasicInfo);
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();
    v9 = os_log_type_enabled(v7, v8);
    v10 = v0[18];
    v11 = v0[16];
    v12 = v0[11];
    if (v9)
    {
      v27 = v0[18];
      v13 = v0[9];
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v28 = v15;
      *v14 = 136315394;
      v16 = StaticRoom.description.getter();
      v26 = v4;
      v18 = v17;
      sub_1D18215BC(v11, type metadata accessor for StaticRoom);
      v19 = sub_1D1B1312C(v16, v18, &v28);

      *(v14 + 4) = v19;
      *(v14 + 12) = 2080;
      sub_1D1821554(v12, v13, type metadata accessor for AccessoryDetails.Payload);
      v20 = sub_1D17EEED0(v13);
      v29 = 0xD000000000000019;
      v30 = 0x80000001D1EB9EC0;
      MEMORY[0x1D3890F70](v20);

      v22 = v29;
      v21 = v30;
      sub_1D18215BC(v13, type metadata accessor for AccessoryDetails.Payload);
      sub_1D18215BC(v12, type metadata accessor for AccessoryDetailsBasicInfo);
      v23 = sub_1D1B1312C(v22, v21, &v28);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_1D16EC000, v7, v8, "Error committing room: %s for %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v15, -1, -1);
      MEMORY[0x1D3893640](v14, -1, -1);

      v24 = v27;
    }

    else
    {

      sub_1D18215BC(v12, type metadata accessor for AccessoryDetailsBasicInfo);
      sub_1D18215BC(v11, type metadata accessor for StaticRoom);
      v24 = v10;
    }

    sub_1D18215BC(v24, type metadata accessor for StaticRoom);

    v25 = v0[1];

    return v25();
  }
}

uint64_t sub_1D180DA80()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1D180DCD0;
  }

  else
  {
    v2 = sub_1D180DB94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D180DB94()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 40);

  sub_1D18215BC(v2, type metadata accessor for StaticService);
  sub_1D18215BC(v1, type metadata accessor for StaticRoom);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D180DCD0()
{
  v29 = v0;

  v1 = *(v0 + 216);
  sub_1D18215BC(*(v0 + 40), type metadata accessor for StaticService);
  v2 = *(v0 + 88);
  v3 = *(v0 + 16);
  sub_1D1821554(*(v0 + 144), *(v0 + 128), type metadata accessor for StaticRoom);
  sub_1D1821554(v3, v2, type metadata accessor for AccessoryDetailsBasicInfo);
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  v8 = *(v0 + 128);
  v9 = *(v0 + 88);
  if (v6)
  {
    v10 = *(v0 + 72);
    v25 = v1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    v24 = v7;
    v13 = StaticRoom.description.getter();
    v15 = v14;
    sub_1D18215BC(v8, type metadata accessor for StaticRoom);
    v16 = sub_1D1B1312C(v13, v15, &v26);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_1D1821554(v9, v10, type metadata accessor for AccessoryDetails.Payload);
    v17 = sub_1D17EEED0(v10);
    v27 = 0xD000000000000019;
    v28 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v17);

    v18 = v27;
    v19 = v28;
    sub_1D18215BC(v10, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v9, type metadata accessor for AccessoryDetailsBasicInfo);
    v20 = sub_1D1B1312C(v18, v19, &v26);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Error committing room: %s for %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);

    v21 = v24;
  }

  else
  {

    sub_1D18215BC(v9, type metadata accessor for AccessoryDetailsBasicInfo);
    sub_1D18215BC(v8, type metadata accessor for StaticRoom);
    v21 = v7;
  }

  sub_1D18215BC(v21, type metadata accessor for StaticRoom);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D180E068()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1D180E748;
  }

  else
  {
    v2 = sub_1D180E17C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D180E17C()
{
  v1 = v0[18];
  sub_1D18215BC(v0[4], type metadata accessor for StaticServiceGroup);
  sub_1D18215BC(v1, type metadata accessor for StaticRoom);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D180E2AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D180E3A8, 0, 0);
}

uint64_t sub_1D180E3A8()
{
  v1 = v0[18];
  sub_1D18215BC(v0[3], type metadata accessor for StaticEndpoint);
  sub_1D18215BC(v1, type metadata accessor for StaticRoom);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1D180E4D8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D180E748()
{
  v29 = v0;
  sub_1D18215BC(v0[4], type metadata accessor for StaticServiceGroup);
  v1 = v0[29];
  v2 = v0[11];
  v3 = v0[2];
  sub_1D1821554(v0[18], v0[16], type metadata accessor for StaticRoom);
  sub_1D1821554(v3, v2, type metadata accessor for AccessoryDetailsBasicInfo);
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[18];
  v8 = v0[16];
  v9 = v0[11];
  if (v6)
  {
    v10 = v0[9];
    v25 = v1;
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26 = v12;
    *v11 = 136315394;
    v24 = v7;
    v13 = StaticRoom.description.getter();
    v15 = v14;
    sub_1D18215BC(v8, type metadata accessor for StaticRoom);
    v16 = sub_1D1B1312C(v13, v15, &v26);

    *(v11 + 4) = v16;
    *(v11 + 12) = 2080;
    sub_1D1821554(v9, v10, type metadata accessor for AccessoryDetails.Payload);
    v17 = sub_1D17EEED0(v10);
    v27 = 0xD000000000000019;
    v28 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v17);

    v18 = v27;
    v19 = v28;
    sub_1D18215BC(v10, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v9, type metadata accessor for AccessoryDetailsBasicInfo);
    v20 = sub_1D1B1312C(v18, v19, &v26);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Error committing room: %s for %s", v11, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);

    v21 = v24;
  }

  else
  {

    sub_1D18215BC(v9, type metadata accessor for AccessoryDetailsBasicInfo);
    sub_1D18215BC(v8, type metadata accessor for StaticRoom);
    v21 = v7;
  }

  sub_1D18215BC(v21, type metadata accessor for StaticRoom);

  v22 = v0[1];

  return v22();
}

uint64_t sub_1D180EAD8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return AccessoryDetailsBasicInfo.commitShouldShowInDashboard()();
}

uint64_t AccessoryDetailsBasicInfo.commitShouldShowInDashboard()()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v1[5] = swift_task_alloc();
  type metadata accessor for StaticEndpoint(0);
  v1[6] = swift_task_alloc();
  type metadata accessor for StaticServiceGroup(0);
  v1[7] = swift_task_alloc();
  type metadata accessor for StaticService(0);
  v1[8] = swift_task_alloc();
  type metadata accessor for StaticAccessory(0);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for AccessoryDetails.Payload(0);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D180ECE8, 0, 0);
}

uint64_t sub_1D180ECE8()
{
  v1 = *(*(v0 + 24) + *(*(v0 + 32) + 32));
  *(v0 + 160) = v1;
  if (v1 == 2)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    *(v0 + 104) = __swift_project_value_buffer(v4, qword_1EC64F440);
    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v1 & 1;
      _os_log_impl(&dword_1D16EC000, v5, v6, "Write %{BOOL}d to dataModel shouldShowInDashboard", v7, 8u);
      MEMORY[0x1D3893640](v7, -1, -1);
    }

    v8 = *(v0 + 96);
    v9 = *(v0 + 24);

    sub_1D1821554(v9, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = *(v0 + 96);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D182161C(v11, *(v0 + 56), type metadata accessor for StaticServiceGroup);
        v13 = swift_task_alloc();
        *(v0 + 144) = v13;
        *v13 = v0;
        v13[1] = sub_1D180F420;

        return StaticServiceGroup.set(showInDashboard:)(v1 & 1);
      }

      else
      {
        sub_1D182161C(v11, *(v0 + 48), type metadata accessor for StaticEndpoint);
        v15 = swift_task_alloc();
        *(v0 + 152) = v15;
        *v15 = v0;
        v15[1] = sub_1D180F51C;

        return StaticEndpoint.set(shouldShowInDashboard:)(v1 & 1);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1D182161C(v11, *(v0 + 64), type metadata accessor for StaticService);
      v14 = swift_task_alloc();
      *(v0 + 128) = v14;
      *v14 = v0;
      v14[1] = sub_1D180F234;

      return StaticService.service.getter();
    }

    else
    {
      sub_1D182161C(v11, *(v0 + 72), type metadata accessor for StaticAccessory);
      v12 = swift_task_alloc();
      *(v0 + 112) = v12;
      *v12 = v0;
      v12[1] = sub_1D180F120;

      return StaticAccessory.set(showInDashboard:)(v1 & 1);
    }
  }
}

uint64_t sub_1D180F120()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D180F618;
  }

  else
  {
    v2 = sub_1D182333C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D180F234(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D180F334, 0, 0);
}

uint64_t sub_1D180F334()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = v1;
    HMService.shouldShowInDashboard.setter(v2 & 1);
  }

  sub_1D18215BC(*(v0 + 64), type metadata accessor for StaticService);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D180F420()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1823314, 0, 0);
}

uint64_t sub_1D180F51C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1823330, 0, 0);
}

uint64_t sub_1D180F618()
{
  v28 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  sub_1D18215BC(*(v0 + 72), type metadata accessor for StaticAccessory);
  sub_1D1821554(v3, v2, type metadata accessor for AccessoryDetailsBasicInfo);
  v4 = v1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 160);
    v9 = *(v0 + 88);
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315650;
    v24 = v7;
    *(v0 + 16) = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v14 = sub_1D1E6789C();
    v16 = sub_1D1B1312C(v14, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v8 & 1;
    *(v11 + 18) = 2080;
    sub_1D1821554(v10, v9, type metadata accessor for AccessoryDetails.Payload);
    v17 = sub_1D17EEED0(v9);
    v26 = 0xD000000000000019;
    v27 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v17);

    v18 = v26;
    v19 = v27;
    sub_1D18215BC(v9, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v10, type metadata accessor for AccessoryDetailsBasicInfo);
    v20 = sub_1D1B1312C(v18, v19, &v25);

    *(v11 + 20) = v20;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Error '%s' committing showInDashboard: %{BOOL}d for %s", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  else
  {
    v21 = *(v0 + 40);

    sub_1D18215BC(v21, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D180F944()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return AccessoryDetailsBasicInfo.commitIsFavorite()();
}

uint64_t AccessoryDetailsBasicInfo.commitIsFavorite()()
{
  v1[3] = v0;
  v1[4] = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v1[5] = swift_task_alloc();
  type metadata accessor for StaticEndpoint(0);
  v1[6] = swift_task_alloc();
  type metadata accessor for StaticServiceGroup(0);
  v1[7] = swift_task_alloc();
  type metadata accessor for StaticService(0);
  v1[8] = swift_task_alloc();
  type metadata accessor for StaticAccessory(0);
  v1[9] = swift_task_alloc();
  v1[10] = type metadata accessor for AccessoryDetails.Payload(0);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D180FB54, 0, 0);
}

uint64_t sub_1D180FB54()
{
  v1 = *(*(v0 + 24) + *(*(v0 + 32) + 36));
  *(v0 + 160) = v1;
  if (v1 == 2)
  {

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    if (qword_1EC642470 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    *(v0 + 104) = __swift_project_value_buffer(v4, qword_1EC64F440);
    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = v1 & 1;
      _os_log_impl(&dword_1D16EC000, v5, v6, "Write %{BOOL}d to dataModel isFavorite", v7, 8u);
      MEMORY[0x1D3893640](v7, -1, -1);
    }

    v8 = *(v0 + 96);
    v9 = *(v0 + 24);

    sub_1D1821554(v9, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v11 = *(v0 + 96);
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        sub_1D182161C(v11, *(v0 + 56), type metadata accessor for StaticServiceGroup);
        v13 = swift_task_alloc();
        *(v0 + 144) = v13;
        *v13 = v0;
        v13[1] = sub_1D1810354;

        return StaticServiceGroup.set(favorite:)(v1 & 1);
      }

      else
      {
        sub_1D182161C(v11, *(v0 + 48), type metadata accessor for StaticEndpoint);
        v15 = swift_task_alloc();
        *(v0 + 152) = v15;
        *v15 = v0;
        v15[1] = sub_1D1810518;

        return StaticEndpoint.set(favorite:)(v1 & 1);
      }
    }

    else if (EnumCaseMultiPayload)
    {
      sub_1D182161C(v11, *(v0 + 64), type metadata accessor for StaticService);
      v14 = swift_task_alloc();
      *(v0 + 128) = v14;
      *v14 = v0;
      v14[1] = sub_1D1810168;

      return StaticService.service.getter();
    }

    else
    {
      sub_1D182161C(v11, *(v0 + 72), type metadata accessor for StaticAccessory);
      v12 = swift_task_alloc();
      *(v0 + 112) = v12;
      *v12 = v0;
      v12[1] = sub_1D180FF8C;

      return StaticAccessory.set(favorite:)(v1 & 1);
    }
  }
}

uint64_t sub_1D180FF8C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D18106DC;
  }

  else
  {
    v2 = sub_1D18100A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D18100A0()
{
  sub_1D18215BC(*(v0 + 72), type metadata accessor for StaticAccessory);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1810168(uint64_t a1)
{
  *(*v1 + 136) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1810268, 0, 0);
}

uint64_t sub_1D1810268()
{
  v1 = *(v0 + 136);
  if (v1)
  {
    v2 = *(v0 + 160);
    v3 = v1;
    HMService.isFavorite.setter(v2 & 1);
  }

  sub_1D18215BC(*(v0 + 64), type metadata accessor for StaticService);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1D1810354()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1810450, 0, 0);
}

uint64_t sub_1D1810450()
{
  sub_1D18215BC(*(v0 + 56), type metadata accessor for StaticServiceGroup);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1810518()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1810614, 0, 0);
}

uint64_t sub_1D1810614()
{
  sub_1D18215BC(*(v0 + 48), type metadata accessor for StaticEndpoint);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D18106DC()
{
  v28 = v0;
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = *(v0 + 24);
  sub_1D18215BC(*(v0 + 72), type metadata accessor for StaticAccessory);
  sub_1D1821554(v3, v2, type metadata accessor for AccessoryDetailsBasicInfo);
  v4 = v1;
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6833C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 160);
    v9 = *(v0 + 88);
    v10 = *(v0 + 40);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v25 = v12;
    *v11 = 136315650;
    v24 = v7;
    *(v0 + 16) = v7;
    v13 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v14 = sub_1D1E6789C();
    v16 = sub_1D1B1312C(v14, v15, &v25);

    *(v11 + 4) = v16;
    *(v11 + 12) = 1024;
    *(v11 + 14) = v8 & 1;
    *(v11 + 18) = 2080;
    sub_1D1821554(v10, v9, type metadata accessor for AccessoryDetails.Payload);
    v17 = sub_1D17EEED0(v9);
    v26 = 0xD000000000000019;
    v27 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v17);

    v18 = v26;
    v19 = v27;
    sub_1D18215BC(v9, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v10, type metadata accessor for AccessoryDetailsBasicInfo);
    v20 = sub_1D1B1312C(v18, v19, &v25);

    *(v11 + 20) = v20;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Error '%s' committing favorite: %{BOOL}d for %s", v11, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  else
  {
    v21 = *(v0 + 40);

    sub_1D18215BC(v21, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1D1810A08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  return AccessoryDetailsBasicInfo.commitIconSymbol()();
}

uint64_t AccessoryDetailsBasicInfo.commitIconSymbol()()
{
  v1[4] = v0;
  type metadata accessor for StaticEndpoint(0);
  v1[5] = swift_task_alloc();
  type metadata accessor for StaticService(0);
  v1[6] = swift_task_alloc();
  type metadata accessor for StaticAccessory(0);
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for AccessoryDetails.Payload(0);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1810BB0, 0, 0);
}

uint64_t sub_1D1810BB0()
{
  v1 = v0[4];
  if (*(v1 + *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 40)) == 92)
  {
LABEL_2:

    v2 = v0[1];

    return v2();
  }

  sub_1D1821554(v1, v0[9], type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D18215BC(v0[9], type metadata accessor for AccessoryDetails.Payload);
      goto LABEL_2;
    }

    sub_1D182161C(v0[9], v0[5], type metadata accessor for StaticEndpoint);
    v11 = IconSymbol.rawValue.getter();
    v13 = v12;
    v0[15] = v12;
    v14 = swift_task_alloc();
    v0[16] = v14;
    *v14 = v0;
    v14[1] = sub_1D18112B4;

    return StaticEndpoint.set(customIconSymbol:)(v11, v13);
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D182161C(v0[9], v0[6], type metadata accessor for StaticService);
    v0[2] = IconSymbol.rawValue.getter();
    v0[3] = v9;
    v0[12] = v9;
    v10 = swift_task_alloc();
    v0[13] = v10;
    *v10 = v0;
    v10[1] = sub_1D181108C;

    return StaticService.service.getter();
  }

  else
  {
    sub_1D182161C(v0[9], v0[7], type metadata accessor for StaticAccessory);
    v5 = IconSymbol.rawValue.getter();
    v7 = v6;
    v0[10] = v6;
    v8 = swift_task_alloc();
    v0[11] = v8;
    *v8 = v0;
    v8[1] = sub_1D1810ED0;

    return StaticAccessory.set(customIconSymbol:)(v5, v7);
  }
}

uint64_t sub_1D1810ED0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1810FE8, 0, 0);
}

uint64_t sub_1D1810FE8()
{
  sub_1D18215BC(*(v0 + 56), type metadata accessor for StaticAccessory);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D181108C(uint64_t a1)
{
  *(*v1 + 112) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D181118C, 0, 0);
}

uint64_t sub_1D181118C()
{
  v13 = v0;
  v1 = v0[14];
  if (v1)
  {
    v2 = v0[12];
    v3 = v0[2];
    v4 = v1;
    v5._countAndFlagsBits = v3;
    v5._object = v2;
    IconSymbol.init(rawValue:)(v5);
    if (v10 != 92)
    {
      v12[0] = v10;
      static IconSymbol.convertToCAPackageIcon(iconSymbol:)(v12, &v11);
      if (v11 == 65)
      {
        v6 = 0;
        v7 = 0;
      }

      else
      {
        v12[1] = v11;
        v6 = HFCAPackageIconIdentifier.rawValue.getter();
      }

      HMService.customIconSymbol.setter(v6, v7);
    }
  }

  else
  {
  }

  sub_1D18215BC(v0[6], type metadata accessor for StaticService);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D18112B4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D18113CC, 0, 0);
}

uint64_t sub_1D18113CC()
{
  sub_1D18215BC(*(v0 + 40), type metadata accessor for StaticEndpoint);

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D1811470()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v4 = 0x614E646567617473;
    if (v1 != 1)
    {
      v4 = 0x6F52646567617473;
    }

    if (*v0)
    {
      return v4;
    }

    else
    {
      return 0x64616F6C796170;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 == 3)
    {
      v2 = 0xD000000000000013;
    }

    if (*v0 <= 4u)
    {
      return v2;
    }

    else
    {
      return 0xD000000000000010;
    }
  }
}

uint64_t sub_1D1811560@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D18212E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1811588(uint64_t a1)
{
  v2 = sub_1D1820D60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18115C4(uint64_t a1)
{
  v2 = sub_1D1820D60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessoryDetailsBasicInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644890, &qword_1D1E765A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1820D60();
  sub_1D1E6930C();
  v11[15] = 0;
  type metadata accessor for AccessoryDetails.Payload(0);
  sub_1D1821000(&qword_1EC644638, type metadata accessor for AccessoryDetails.Payload, &protocol conformance descriptor for AccessoryDetails.Payload);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for AccessoryDetailsBasicInfo(0);
    v11[14] = 1;
    sub_1D1E68E0C();
    v11[13] = 2;
    type metadata accessor for StaticRoom(0);
    sub_1D1821000(&qword_1EC6448A0, type metadata accessor for StaticRoom, &protocol conformance descriptor for StaticRoom);
    sub_1D1E68E5C();
    v11[12] = 3;
    sub_1D1E68E0C();
    v11[11] = 4;
    sub_1D1E68E1C();
    v11[10] = 5;
    sub_1D1E68E1C();
    v11[9] = *(v3 + *(v9 + 40));
    v11[8] = 6;
    sub_1D1820DB4();
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AccessoryDetailsBasicInfo.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for StaticRoom(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13[-v8];
  AccessoryDetails.Payload.hash(into:)(a1);
  v10 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  if (*(v1 + v10[5] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1741C08(v1 + v10[6], v9, &qword_1EC643878, &qword_1D1E72030);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D182161C(v9, v6, type metadata accessor for StaticRoom);
    sub_1D1E6922C();
    StaticRoom.hash(into:)(a1);
    sub_1D18215BC(v6, type metadata accessor for StaticRoom);
  }

  if (*(v1 + v10[7] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v1 + v10[8]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + v10[9]) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v11 = *(v1 + v10[10]);
  if (v11 == 92)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v13[15] = v11;
  IconSymbol.rawValue.getter();
  sub_1D1E678EC();
}

uint64_t AccessoryDetailsBasicInfo.hashValue.getter()
{
  sub_1D1E6920C();
  AccessoryDetailsBasicInfo.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t AccessoryDetailsBasicInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v35 = &v33 - v4;
  v36 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v36);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448B0, &qword_1D1E765B0);
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v33 - v7;
  v9 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v10 + 24);
  v14 = type metadata accessor for StaticRoom(0);
  v15 = *(*(v14 - 8) + 56);
  v41 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = v9[10];
  v12[v16] = 92;
  v17 = a1[3];
  v42 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  sub_1D1820D60();
  v18 = v8;
  v19 = v40;
  sub_1D1E692FC();
  if (v19)
  {
    v22 = v41;
    __swift_destroy_boxed_opaque_existential_1(v42);

    sub_1D1741A30(&v12[v22], &qword_1EC643878, &qword_1D1E72030);
  }

  else
  {
    v20 = v35;
    v40 = v16;
    v50 = 0;
    sub_1D1821000(&qword_1EC644660, type metadata accessor for AccessoryDetails.Payload, &protocol conformance descriptor for AccessoryDetails.Payload);
    v21 = v37;
    sub_1D1E68D7C();
    sub_1D182161C(v21, v12, type metadata accessor for AccessoryDetails.Payload);
    v49 = 1;
    v23 = sub_1D1E68C6C();
    v24 = v41;
    v25 = &v12[v9[5]];
    *v25 = v23;
    v25[1] = v26;
    v37 = v26;
    v48 = 2;
    sub_1D1821000(&qword_1EC6448B8, type metadata accessor for StaticRoom, &protocol conformance descriptor for StaticRoom);
    sub_1D1E68CBC();
    v27 = v38;
    sub_1D1820E08(v20, &v12[v24]);
    v47 = 3;
    v28 = sub_1D1E68C6C();
    v29 = v9[7];
    *v29 = v28;
    v29[1] = v30;
    v46 = 4;
    *v9[8] = sub_1D1E68C7C();
    v45 = 5;
    *v9[9] = sub_1D1E68C7C();
    v43 = 6;
    sub_1D1820E78();
    v31 = v39;
    sub_1D1E68CBC();
    (*(v27 + 8))(v18, v31);
    v12[v40] = v44;
    sub_1D1821554(v12, v34, type metadata accessor for AccessoryDetailsBasicInfo);
    __swift_destroy_boxed_opaque_existential_1(v42);
    return sub_1D18215BC(v12, type metadata accessor for AccessoryDetailsBasicInfo);
  }
}

uint64_t sub_1D18121F4()
{
  sub_1D1E6920C();
  AccessoryDetailsBasicInfo.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1812238(uint64_t a1)
{
  sub_1D1E6920C();
  AccessoryDetailsBasicInfo.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D18122C4()
{
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = sub_1D18123A8;
  v4 = MEMORY[0x1E69E7CA8] + 8;
  v5 = MEMORY[0x1E69E7CA8] + 8;
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DBF8](v3, v4, v5, 0, 0, &unk_1D1E76880, v2, v6);
}

uint64_t sub_1D18123A8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1823334, 0, 0);
}

uint64_t AccessoryDetailsBasicInfo.name.getter()
{
  v1 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 20));
  if (v4[1])
  {
    v5 = *v4;
  }

  else
  {
    sub_1D1821554(v0, v3, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v16 = type metadata accessor for StaticServiceGroup(0);
        v7 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
        v8 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v16 = type metadata accessor for StaticEndpoint(0);
        v7 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
        v8 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v16 = type metadata accessor for StaticService(0);
      v7 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v8 = type metadata accessor for StaticService;
    }

    else
    {
      v16 = type metadata accessor for StaticAccessory(0);
      v7 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v8 = type metadata accessor for StaticAccessory;
    }

    v9 = v8;
    v17 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
    sub_1D182161C(v3, boxed_opaque_existential_1, v9);
    v11 = v16;
    v12 = v17;
    __swift_project_boxed_opaque_existential_1(v15, v16);
    v5 = (*(v12 + 40))(v11, v12);
    __swift_destroy_boxed_opaque_existential_1(v15);
  }

  return v5;
}

uint64_t sub_1D1812758@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 20));
  if (v3[1])
  {
    v4 = *v3;
    v5 = v3[1];
  }

  else
  {
    AccessoryDetails.Payload.basicInfo.getter(v10);
    v6 = v11;
    v7 = v12;
    __swift_project_boxed_opaque_existential_1(v10, v11);
    v4 = (*(v7 + 40))(v6, v7);
    v5 = v8;
    __swift_destroy_boxed_opaque_existential_1(v10);
  }

  *a2 = v4;
  a2[1] = v5;
}

uint64_t sub_1D1812804(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 20));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t AccessoryDetailsBasicInfo.name.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*AccessoryDetailsBasicInfo.name.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 56) = v1;
  v6 = *(*(type metadata accessor for AccessoryDetails.Payload(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 64) = v7;
  v9 = *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 20);
  *(v5 + 80) = v9;
  v10 = (v1 + v9);
  v11 = v10[1];
  if (v11)
  {
    v12 = *v10;
    v13 = v10[1];
  }

  else
  {
    sub_1D1821554(v1, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        *(v5 + 24) = type metadata accessor for StaticServiceGroup(0);
        v15 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
        v16 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        *(v5 + 24) = type metadata accessor for StaticEndpoint(0);
        v15 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
        v16 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      *(v5 + 24) = type metadata accessor for StaticService(0);
      v15 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v16 = type metadata accessor for StaticService;
    }

    else
    {
      *(v5 + 24) = type metadata accessor for StaticAccessory(0);
      v15 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v16 = type metadata accessor for StaticAccessory;
    }

    v17 = v16;
    *(v5 + 32) = v15;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
    sub_1D182161C(v8, boxed_opaque_existential_1, v17);
    v19 = *(v5 + 24);
    v20 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_1(v5, v19);
    v12 = (*(v20 + 40))(v19, v20);
    v13 = v21;
    __swift_destroy_boxed_opaque_existential_1(v5);
    v11 = 0;
  }

  *(v5 + 72) = v11;
  *(v5 + 40) = v12;
  *(v5 + 48) = v13;

  return sub_1D1812B80;
}

void sub_1D1812B80(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 40);
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 64);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 56);
  if (a2)
  {
    v8 = (v7 + v4);

    *v8 = v3;
    v8[1] = v6;
  }

  else
  {

    v9 = (v7 + v4);
    *v9 = v3;
    v9[1] = v6;
  }

  free(v5);

  free(v2);
}

void *AccessoryDetailsBasicInfo.statusString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticService(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StatusStrings.Options(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v49 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v1, v22, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D182161C(v22, v10, type metadata accessor for StaticServiceGroup);
      v32 = v14[11];
      v33 = sub_1D1E669FC();
      (*(*(v33 - 8) + 56))(&v16[v32], 1, 1, v33);
      *v16 = 65793;
      *(v16 + 2) = 1;
      v16[6] = 0;
      v16[v14[12]] = 2;
      v34 = &v16[v14[13]];
      v34[4] = 0;
      *v34 = 2;
      v35 = type metadata accessor for StaticMatterDevice(0);
      (*(*(v35 - 8) + 56))(v7, 1, 1, v35);
      StaticServiceGroup.statusString(with:associatedMatterDevice:)(v16);
      v27 = v36;
      v38 = v37;
      sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
      sub_1D18215BC(v16, type metadata accessor for StatusStrings.Options);
      if (!v38)
      {
        v27 = 0;
      }

      v30 = type metadata accessor for StaticServiceGroup;
      v31 = v10;
    }

    else
    {
      sub_1D182161C(v22, v4, type metadata accessor for StaticEndpoint);
      v44 = v14[11];
      v45 = sub_1D1E669FC();
      (*(*(v45 - 8) + 56))(&v16[v44], 1, 1, v45);
      *v16 = 65793;
      *(v16 + 2) = 1;
      v16[6] = 0;
      v16[v14[12]] = 2;
      v46 = &v16[v14[13]];
      v46[4] = 0;
      *v46 = 2;
      v47 = type metadata accessor for StaticMatterDevice(0);
      (*(*(v47 - 8) + 56))(v7, 1, 1, v47);
      v27 = StaticEndpoint.statusString(with:associatedMatterDevice:)(v16);
      sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
      sub_1D18215BC(v16, type metadata accessor for StatusStrings.Options);
      v30 = type metadata accessor for StaticEndpoint;
      v31 = v4;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D182161C(v22, v13, type metadata accessor for StaticService);
    v39 = v14[11];
    v40 = sub_1D1E669FC();
    (*(*(v40 - 8) + 56))(&v16[v39], 1, 1, v40);
    *v16 = 65793;
    *(v16 + 2) = 257;
    v16[6] = 0;
    v16[v14[12]] = 2;
    v41 = &v16[v14[13]];
    v41[4] = 0;
    *v41 = 2;
    v27 = StaticService.statusString(with:)(v16);
    v43 = v42;
    sub_1D18215BC(v16, type metadata accessor for StatusStrings.Options);
    if (!v43)
    {
      v27 = 0;
    }

    v30 = type metadata accessor for StaticService;
    v31 = v13;
  }

  else
  {
    sub_1D182161C(v22, v19, type metadata accessor for StaticAccessory);
    v24 = v14[11];
    v25 = sub_1D1E669FC();
    (*(*(v25 - 8) + 56))(&v16[v24], 1, 1, v25);
    *v16 = 65793;
    *(v16 + 2) = 1;
    v16[6] = 0;
    v16[v14[12]] = 2;
    v26 = &v16[v14[13]];
    v26[4] = 0;
    *v26 = 2;
    v27 = StaticAccessory.statusString(with:)(v16);
    v29 = v28;
    sub_1D18215BC(v16, type metadata accessor for StatusStrings.Options);
    if (!v29)
    {
      v27 = 0;
    }

    v30 = type metadata accessor for StaticAccessory;
    v31 = v19;
  }

  sub_1D18215BC(v31, v30);
  return v27;
}

id AccessoryDetailsBasicInfo.detailedStatusTitle.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticService(0);
  v51 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for StatusStrings.Options(0);
  MEMORY[0x1EEE9AC00](v53);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v52 = &v50 - v8;
  v9 = type metadata accessor for StateSnapshot(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v1, v17, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v19 = type metadata accessor for AccessoryDetails.Payload;
    v20 = v17;
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D182161C(v17, v4, type metadata accessor for StaticService);
    if (v4[*(v2 + 32)] == 1)
    {
      v19 = type metadata accessor for StaticService;
      v20 = v4;
      goto LABEL_6;
    }

    v32 = v53;
    v33 = *(v53 + 44);
    v34 = sub_1D1E669FC();
    (*(*(v34 - 8) + 56))(&v6[v33], 1, 1, v34);
    *v6 = 65793;
    *(v6 + 2) = 1;
    v6[6] = 1;
    v6[*(v32 + 48)] = 2;
    v35 = &v6[*(v32 + 52)];
    v35[4] = 0;
    *v35 = 2;
    v36 = StaticService.statusString(with:)(v6);
    v38 = v37;
    sub_1D18215BC(v6, type metadata accessor for StatusStrings.Options);
    if (v38)
    {
      v39 = v36;
    }

    else
    {
      v39 = 0;
    }

    sub_1D18215BC(v4, type metadata accessor for StaticService);
    return v39;
  }

  else
  {
    sub_1D182161C(v17, v14, type metadata accessor for StaticAccessory);
    if (v14[v12[31]] == 1)
    {
      v19 = type metadata accessor for StaticAccessory;
      v20 = v14;
LABEL_6:
      sub_1D18215BC(v20, v19);
      return 0;
    }

    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v22 = qword_1EE07DC60;
    swift_getKeyPath();
    v55 = v22;
    sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    sub_1D1E66CAC();

    v23 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
    swift_beginAccess();
    sub_1D1821554(v22 + v23, v11, type metadata accessor for StateSnapshot);

    v25 = sub_1D1782540(v24);
    sub_1D18215BC(v11, type metadata accessor for StateSnapshot);
    AccessoryDetailsBasicInfo.accessoryNoResponseContextFlags(residents:supportsCHIP:requiresThreadRouter:)(v25, v14[v12[34]], v14[v12[35]], v54);

    v26 = v54[0];
    v27 = v54[1];
    v28 = v54[2];
    v29 = v54[3];
    v30 = v54[4];
    v31 = v52;
    StaticAccessory.primaryStaticService.getter(v52);
    if ((*(v51 + 48))(v31, 1, v2) == 1)
    {
      sub_1D18215BC(v14, type metadata accessor for StaticAccessory);
      sub_1D1741A30(v31, &qword_1EC6436F0, &qword_1D1E99BC0);
      return 0;
    }

    v40 = 256;
    if (!v27)
    {
      v40 = 0;
    }

    v41 = v40 | v26;
    v42 = 0x10000;
    if (!v28)
    {
      v42 = 0;
    }

    v43 = 0x1000000;
    if (!v29)
    {
      v43 = 0;
    }

    v44 = v41 | v42 | v43;
    v45 = v53;
    v46 = *(v53 + 44);
    v47 = sub_1D1E669FC();
    (*(*(v47 - 8) + 56))(&v6[v46], 1, 1, v47);
    *v6 = 65793;
    *(v6 + 2) = 1;
    v6[6] = 1;
    v6[*(v45 + 48)] = 2;
    v48 = &v6[*(v45 + 52)];
    v48[4] = v30;
    *v48 = v44;
    v49 = StaticService.statusString(with:)(v6);
    sub_1D18215BC(v6, type metadata accessor for StatusStrings.Options);
    sub_1D18215BC(v14, type metadata accessor for StaticAccessory);
    sub_1D18215BC(v31, type metadata accessor for StaticService);
    return v49;
  }
}

void AccessoryDetailsBasicInfo.accessoryNoResponseContextFlags(residents:supportsCHIP:requiresThreadRouter:)(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, BOOL *a4@<X8>)
{
  v28 = a2;
  v29 = a3;
  v26 = a4;
  v5 = type metadata accessor for StaticResident(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 16);
  v9 = 1 << *(a1 + 32);
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & *(a1 + 56);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (1)
  {
    if (!v11)
    {
      while (1)
      {
        v14 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v14 >= v12)
        {

          v20 = 0;
          goto LABEL_19;
        }

        v11 = *(a1 + 56 + 8 * v14);
        ++v13;
        if (v11)
        {
          v13 = v14;
          goto LABEL_11;
        }
      }

      __break(1u);
      goto LABEL_22;
    }

LABEL_11:
    sub_1D1821554(*(a1 + 48) + *(v6 + 72) * (__clz(__rbit64(v11)) | (v13 << 6)), v8, type metadata accessor for StaticResident);
    v15 = *&v8[*(v5 + 32)];
    if (*(v15 + 16))
    {
      sub_1D1E6920C();
      MEMORY[0x1D3892850](1);
      v16 = sub_1D1E6926C();
      v17 = -1 << *(v15 + 32);
      v18 = v16 & ~v17;
      if ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        break;
      }
    }

LABEL_5:
    v11 &= v11 - 1;
    sub_1D18215BC(v8, type metadata accessor for StaticResident);
  }

  v19 = ~v17;
  while (*(*(v15 + 48) + v18) != 1)
  {
    v18 = (v18 + 1) & v19;
    if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  sub_1D18215BC(v8, type metadata accessor for StaticResident);
  v20 = 1;
LABEL_19:
  v21 = MobileGestalt_get_current_device();
  if (v21)
  {
    v22 = v21;
    v23 = v27 != 0;
    threadRadioCapability = MobileGestalt_get_threadRadioCapability();

    v25 = v26;
    *v26 = v23;
    v25[1] = v20;
    v25[2] = threadRadioCapability;
    v25[3] = v28 & 1;
    v25[4] = v29 & 1;
    return;
  }

LABEL_22:
  __break(1u);
}

id AccessoryDetailsBasicInfo.detailedStatusString.getter()
{
  v52 = type metadata accessor for StaticService(0);
  v48 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v48 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for StatusStrings.Options(0);
  MEMORY[0x1EEE9AC00](v51);
  v2 = &v48 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v48 - v4;
  v5 = type metadata accessor for StaticAccessory(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StateSnapshot(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v14 = qword_1EE07DC60;
  swift_getKeyPath();
  v59 = v14;
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v15 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D1821554(v14 + v15, v13, type metadata accessor for StateSnapshot);

  v17 = sub_1D1782540(v16);
  sub_1D18215BC(v13, type metadata accessor for StateSnapshot);
  sub_1D1821554(v53, v10, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {

    sub_1D18215BC(v10, type metadata accessor for AccessoryDetails.Payload);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    v26 = v49;
    sub_1D182161C(v10, v49, type metadata accessor for StaticService);
    AccessoryDetailsBasicInfo.accessoryNoResponseContextFlags(residents:supportsCHIP:requiresThreadRouter:)(v17, *(v26 + *(v52 + 68)), *(v26 + *(v52 + 72)), &v54);

    v27 = 256;
    if (!v55)
    {
      v27 = 0;
    }

    v28 = v27 | v54;
    v29 = 0x10000;
    if (!v56)
    {
      v29 = 0;
    }

    v30 = 0x1000000;
    if (!v57)
    {
      v30 = 0;
    }

    v31 = v28 | v29 | v30;
    v32 = v58 != 0;
    v33 = v51;
    v34 = *(v51 + 44);
    v35 = sub_1D1E669FC();
    (*(*(v35 - 8) + 56))(&v2[v34], 1, 1, v35);
    *v2 = 65793;
    *(v2 + 2) = 3;
    v2[6] = 0;
    v2[*(v33 + 48)] = 2;
    v36 = &v2[*(v33 + 52)];
    v36[4] = v32;
    *v36 = v31;
    v37 = StaticService.statusString(with:)(v2);
    sub_1D18215BC(v2, type metadata accessor for StatusStrings.Options);
    v38 = v26;
  }

  else
  {
    sub_1D182161C(v10, v7, type metadata accessor for StaticAccessory);
    AccessoryDetailsBasicInfo.accessoryNoResponseContextFlags(residents:supportsCHIP:requiresThreadRouter:)(v17, v7[*(v5 + 136)], v7[*(v5 + 140)], &v54);

    v19 = v54;
    v20 = v55;
    v21 = v56;
    v22 = v57;
    v23 = v58;
    v24 = v50;
    StaticAccessory.primaryStaticService.getter(v50);
    if ((*(v48 + 48))(v24, 1, v52) == 1)
    {
      sub_1D18215BC(v7, type metadata accessor for StaticAccessory);
      sub_1D1741A30(v24, &qword_1EC6436F0, &qword_1D1E99BC0);
      return 0;
    }

    v39 = 256;
    if (!v20)
    {
      v39 = 0;
    }

    v40 = v39 | v19;
    v41 = 0x10000;
    if (!v21)
    {
      v41 = 0;
    }

    v42 = 0x1000000;
    if (!v22)
    {
      v42 = 0;
    }

    v43 = v40 | v41 | v42;
    v44 = v51;
    v45 = *(v51 + 44);
    v46 = sub_1D1E669FC();
    (*(*(v46 - 8) + 56))(&v2[v45], 1, 1, v46);
    *v2 = 65793;
    *(v2 + 2) = 3;
    v2[6] = 0;
    v2[*(v44 + 48)] = 2;
    v47 = &v2[*(v44 + 52)];
    v47[4] = v23 != 0;
    *v47 = v43;
    v37 = StaticService.statusString(with:)(v2);
    sub_1D18215BC(v2, type metadata accessor for StatusStrings.Options);
    sub_1D18215BC(v7, type metadata accessor for StaticAccessory);
    v38 = v24;
  }

  sub_1D18215BC(v38, type metadata accessor for StaticService);
  return v37;
}

uint64_t AccessoryDetailsBasicInfo.isReachable.getter()
{
  v1 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v0, v3, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = type metadata accessor for StaticServiceGroup(0);
      v5 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
      v6 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v14 = type metadata accessor for StaticEndpoint(0);
      v5 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
      v6 = type metadata accessor for StaticEndpoint;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = type metadata accessor for StaticService(0);
    v5 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    v6 = type metadata accessor for StaticService;
  }

  else
  {
    v14 = type metadata accessor for StaticAccessory(0);
    v5 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    v6 = type metadata accessor for StaticAccessory;
  }

  v7 = v6;
  v15 = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_1D182161C(v3, boxed_opaque_existential_1, v7);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  LOBYTE(v9) = (*(v10 + 48))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9 & 1;
}

uint64_t AccessoryDetailsBasicInfo.roomsForHome.getter()
{
  v0 = type metadata accessor for StaticRoom(0);
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v25 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - v4;
  if (qword_1EE07DC58 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v6 = qword_1EE07DC60;
    swift_getKeyPath();
    v26[0] = v6;
    sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    sub_1D1E66CAC();

    v7 = v6 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
    swift_beginAccess();
    v8 = *(v7 + *(type metadata accessor for StateSnapshot(0) + 52));
    v9 = v8[2];
    if (v9)
    {
      v10 = sub_1D18043CC(v8[2], 0);
      v11 = sub_1D1804B34(v26, v10 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v9, v8);
      v12 = v26[0];
      v23 = v26[4];
      v24 = v26[3];

      sub_1D1716918(v12);
      if (v11 == v9)
      {
        goto LABEL_6;
      }

      __break(1u);
    }

    v10 = MEMORY[0x1E69E7CC0];
LABEL_6:
    v26[0] = v10;

    sub_1D181F33C(v26);

    v13 = v26[0];
    v14 = *(v26[0] + 16);
    if (!v14)
    {
      break;
    }

    v15 = 0;
    v16 = MEMORY[0x1E69E7CC0];
    v24 = v0;
    while (v15 < *(v13 + 16))
    {
      v17 = (*(v1 + 80) + 32) & ~*(v1 + 80);
      v18 = *(v1 + 72);
      sub_1D1821554(v13 + v17 + v18 * v15, v5, type metadata accessor for StaticRoom);
      if (v5[*(v0 + 28)])
      {
        sub_1D18215BC(v5, type metadata accessor for StaticRoom);
      }

      else
      {
        sub_1D182161C(v5, v25, type metadata accessor for StaticRoom);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26[0] = v16;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D178D1D4(0, *(v16 + 16) + 1, 1);
          v16 = v26[0];
        }

        v21 = *(v16 + 16);
        v20 = *(v16 + 24);
        if (v21 >= v20 >> 1)
        {
          sub_1D178D1D4((v20 > 1), v21 + 1, 1);
          v16 = v26[0];
        }

        *(v16 + 16) = v21 + 1;
        sub_1D182161C(v25, v16 + v17 + v21 * v18, type metadata accessor for StaticRoom);
        v0 = v24;
      }

      if (v14 == ++v15)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_20:
    swift_once();
  }

  v16 = MEMORY[0x1E69E7CC0];
LABEL_18:

  return v16;
}

uint64_t sub_1D18149FC()
{
  v1 = v0;
  v2 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v27[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryDetails.Payload(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v27[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27[-1] - v9;
  sub_1D1821554(v1, &v27[-1] - v9, type metadata accessor for AccessoryDetails.Payload);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1D182161C(v10, v4, type metadata accessor for StaticServiceGroup);
    v11 = *&v4[*(v2 + 36)];

    v12 = type metadata accessor for StaticServiceGroup;
    v13 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v14 = sub_1D1E66A7C();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D1E739C0;
    sub_1D1821554(v1, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v28 = v2;
        v19 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
        v20 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v28 = type metadata accessor for StaticEndpoint(0);
        v19 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
        v20 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v28 = type metadata accessor for StaticService(0);
      v19 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v20 = type metadata accessor for StaticService;
    }

    else
    {
      v28 = type metadata accessor for StaticAccessory(0);
      v19 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v20 = type metadata accessor for StaticAccessory;
    }

    v21 = v20;
    v29 = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v27);
    sub_1D182161C(v8, boxed_opaque_existential_1, v21);
    v23 = v28;
    v24 = v29;
    __swift_project_boxed_opaque_existential_1(v27, v28);
    (*(v24 + 56))(v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v27);
    v11 = sub_1D179BE14(v17);
    swift_setDeallocating();
    (*(v15 + 8))(v17 + v16, v14);
    swift_deallocClassInstance();
    v12 = type metadata accessor for AccessoryDetails.Payload;
    v13 = v10;
  }

  sub_1D18215BC(v13, v12);
  return v11;
}

uint64_t sub_1D1814E4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D18149FC();
  v11 = v1;
  v4 = sub_1D17879F4(sub_1D1821538, &v10, v3);

  v12 = v4;

  sub_1D181F33C(&v12);

  v5 = v12;
  if (v12[2])
  {
    v6 = type metadata accessor for StaticRoom(0);
    v7 = *(v6 - 8);
    sub_1D1821554(v5 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), a1, type metadata accessor for StaticRoom);

    return (*(v7 + 56))(a1, 0, 1, v6);
  }

  else
  {

    v9 = type metadata accessor for StaticRoom(0);
    return (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
  }
}

uint64_t sub_1D1814FCC@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE07DC60;
  swift_getKeyPath();
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v3 = v2 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  v4 = *(v3 + *(type metadata accessor for StateSnapshot(0) + 52));
  if (*(v4 + 16))
  {

    v5 = sub_1D1742188();
    if (v6)
    {
      v7 = v5;
      v8 = *(v4 + 56);
      v9 = type metadata accessor for StaticRoom(0);
      v10 = *(v9 - 8);
      sub_1D1821554(v8 + *(v10 + 72) * v7, a1, type metadata accessor for StaticRoom);

      return (*(v10 + 56))(a1, 0, 1, v9);
    }
  }

  v12 = type metadata accessor for StaticRoom(0);
  return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
}

BOOL AccessoryDetailsBasicInfo.hasMultipleRooms.getter()
{
  v1 = v0;
  v2 = type metadata accessor for StaticServiceGroup(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28[-1] - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AccessoryDetails.Payload(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v28[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28[-1] - v9;
  sub_1D1821554(v1, &v28[-1] - v9, type metadata accessor for AccessoryDetails.Payload);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1D182161C(v10, v4, type metadata accessor for StaticServiceGroup);
    v11 = *&v4[*(v2 + 36)];

    v12 = type metadata accessor for StaticServiceGroup;
    v13 = v4;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
    v14 = sub_1D1E66A7C();
    v15 = *(v14 - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D1E739C0;
    sub_1D1821554(v1, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v29 = v2;
        v19 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
        v20 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v29 = type metadata accessor for StaticEndpoint(0);
        v19 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
        v20 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v29 = type metadata accessor for StaticService(0);
      v19 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v20 = type metadata accessor for StaticService;
    }

    else
    {
      v29 = type metadata accessor for StaticAccessory(0);
      v19 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v20 = type metadata accessor for StaticAccessory;
    }

    v21 = v20;
    v30 = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v28);
    sub_1D182161C(v8, boxed_opaque_existential_1, v21);
    v23 = v29;
    v24 = v30;
    __swift_project_boxed_opaque_existential_1(v28, v29);
    (*(v24 + 56))(v23, v24);
    __swift_destroy_boxed_opaque_existential_1(v28);
    v11 = sub_1D179BE14(v17);
    swift_setDeallocating();
    (*(v15 + 8))(v17 + v16, v14);
    swift_deallocClassInstance();
    v12 = type metadata accessor for AccessoryDetails.Payload;
    v13 = v10;
  }

  sub_1D18215BC(v13, v12);
  v25 = *(v11 + 16);

  return v25 > 1;
}

uint64_t AccessoryDetailsBasicInfo.room.getter@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v2 = sub_1D1E66A7C();
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v64 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for AccessoryDetails.Payload(0);
  v4 = MEMORY[0x1EEE9AC00](v70);
  v6 = &v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v55 - v7;
  v9 = type metadata accessor for StaticRoom(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v68 = &v55 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = &v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v65 = &v55 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v55 - v20;
  v22 = *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 24);
  v71 = v1;
  sub_1D1741C08(v1 + v22, v21, &qword_1EC643878, &qword_1D1E72030);
  v23 = *(v10 + 48);
  if (v23(v21, 1, v9) == 1)
  {
    v63 = v23;
    sub_1D1741A30(v21, &qword_1EC643878, &qword_1D1E72030);
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v24 = qword_1EE07DC60;
    swift_getKeyPath();
    v25 = OBJC_IVAR____TtC13HomeDataModel9DataModel___observationRegistrar;
    v74[0] = v24;
    v26 = sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
    v59 = v25;
    v57 = v26;
    sub_1D1E66CAC();

    v27 = v24 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
    swift_beginAccess();
    v56 = type metadata accessor for StateSnapshot(0);
    v28 = *(v56 + 52);
    v58 = v27;
    v29 = *(v27 + v28);
    sub_1D1821554(v71, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v61 = v13;
    v62 = v6;
    v60 = v9;
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v75 = type metadata accessor for StaticServiceGroup(0);
        v31 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
        v32 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v75 = type metadata accessor for StaticEndpoint(0);
        v31 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
        v32 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v75 = type metadata accessor for StaticService(0);
      v31 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v32 = type metadata accessor for StaticService;
    }

    else
    {
      v75 = type metadata accessor for StaticAccessory(0);
      v31 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v32 = type metadata accessor for StaticAccessory;
    }

    v35 = v32;
    v76 = v31;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v74);
    sub_1D182161C(v8, boxed_opaque_existential_1, v35);
    v38 = v75;
    v37 = v76;
    __swift_project_boxed_opaque_existential_1(v74, v75);
    v39 = *(v37 + 56);

    v40 = v64;
    v39(v38, v37);
    if (*(v29 + 16) && (v41 = sub_1D1742188(), (v42 & 1) != 0))
    {
      v43 = v65;
      sub_1D1821554(*(v29 + 56) + *(v10 + 72) * v41, v65, type metadata accessor for StaticRoom);
      (*(v66 + 8))(v40, v67);

      v44 = v60;
      (*(v10 + 56))(v43, 0, 1, v60);
      v45 = v68;
      sub_1D182161C(v43, v68, type metadata accessor for StaticRoom);
      v34 = v72;
      v33 = v61;
      v46 = v62;
      v47 = v69;
    }

    else
    {

      (*(v66 + 8))(v40, v67);
      v48 = v65;
      v44 = v60;
      (*(v10 + 56))(v65, 1, 1, v60);
      swift_getKeyPath();
      v73 = v24;
      sub_1D1E66CAC();

      v49 = *(v56 + 20);
      v50 = type metadata accessor for StaticHome(0);
      v45 = v68;
      sub_1D1821554(v58 + v49 + *(v50 + 28), v68, type metadata accessor for StaticRoom);
      v51 = v63(v48, 1, v44);
      v34 = v72;
      v33 = v61;
      v46 = v62;
      v47 = v69;
      if (v51 != 1)
      {
        sub_1D1741A30(v48, &qword_1EC643878, &qword_1D1E72030);
      }
    }

    __swift_destroy_boxed_opaque_existential_1(v74);
    sub_1D1821554(v71, v46, type metadata accessor for AccessoryDetails.Payload);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1D1814E4C(v47);
      v52 = v63;
      if (v63(v47, 1, v44) == 1)
      {
        sub_1D182161C(v45, v33, type metadata accessor for StaticRoom);
        if (v52(v47, 1, v44) != 1)
        {
          sub_1D1741A30(v47, &qword_1EC643878, &qword_1D1E72030);
        }

        goto LABEL_24;
      }

      sub_1D18215BC(v45, type metadata accessor for StaticRoom);
      v53 = v47;
    }

    else
    {
      v53 = v45;
    }

    sub_1D182161C(v53, v33, type metadata accessor for StaticRoom);
LABEL_24:
    sub_1D18215BC(v46, type metadata accessor for AccessoryDetails.Payload);
    return sub_1D182161C(v33, v34, type metadata accessor for StaticRoom);
  }

  v33 = v21;
  v34 = v72;
  return sub_1D182161C(v33, v34, type metadata accessor for StaticRoom);
}

uint64_t sub_1D1815F50(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticRoom(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(a1, v7, type metadata accessor for StaticRoom);
  v8 = *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 24);
  sub_1D1741A30(a2 + v8, &qword_1EC643878, &qword_1D1E72030);
  sub_1D182161C(v7, a2 + v8, type metadata accessor for StaticRoom);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t AccessoryDetailsBasicInfo.room.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 24);
  sub_1D1741A30(v1 + v3, &qword_1EC643878, &qword_1D1E72030);
  sub_1D182161C(a1, v1 + v3, type metadata accessor for StaticRoom);
  v4 = type metadata accessor for StaticRoom(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*AccessoryDetailsBasicInfo.room.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for StaticRoom(0);
  v5[1] = v6;
  v7 = *(v6 - 8);
  v5[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v9 = malloc(v8);
  }

  v5[4] = v9;
  AccessoryDetailsBasicInfo.room.getter(v9);
  return sub_1D1816244;
}

void sub_1D1816244(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = (*a1)[4];
  v5 = (*a1)[1];
  v6 = (*a1)[2];
  v7 = **a1;
  if (a2)
  {
    sub_1D1821554((*a1)[4], v3, type metadata accessor for StaticRoom);
    v8 = *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 24);
    sub_1D1741A30(v7 + v8, &qword_1EC643878, &qword_1D1E72030);
    sub_1D182161C(v3, v7 + v8, type metadata accessor for StaticRoom);
    (*(v6 + 56))(v7 + v8, 0, 1, v5);
    sub_1D18215BC(v4, type metadata accessor for StaticRoom);
  }

  else
  {
    v9 = *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 24);
    sub_1D1741A30(v7 + v9, &qword_1EC643878, &qword_1D1E72030);
    sub_1D182161C(v4, v7 + v9, type metadata accessor for StaticRoom);
    (*(v6 + 56))(v7 + v9, 0, 1, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t AccessoryDetailsBasicInfo.roomName.getter()
{
  v1 = type metadata accessor for StaticRoom(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = (v0 + *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 28));
  if (v4[1])
  {
    v5 = *v4;
  }

  else
  {
    AccessoryDetailsBasicInfo.room.getter(v3);
    v5 = *&v3[*(v1 + 20)];

    sub_1D18215BC(v3, type metadata accessor for StaticRoom);
  }

  return v5;
}

uint64_t sub_1D1816498@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for StaticRoom(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (a1 + *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 28));
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    AccessoryDetailsBasicInfo.room.getter(v6);
    v10 = &v6[*(v4 + 20)];
    v8 = *v10;
    v9 = *(v10 + 1);

    sub_1D18215BC(v6, type metadata accessor for StaticRoom);
  }

  *a2 = v8;
  a2[1] = v9;
}

uint64_t AccessoryDetailsBasicInfo.roomName.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticRoom(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v31 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v31 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v31 - v14;
  result = AccessoryDetailsBasicInfo.roomsForHome.getter();
  v17 = result;
  v18 = *(result + 16);
  if (v18)
  {
    v19 = 0;
    while (v19 < *(v17 + 16))
    {
      sub_1D1821554(v17 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v10, type metadata accessor for StaticRoom);
      v20 = &v10[*(v4 + 20)];
      v21 = *v20 == a1 && *(v20 + 1) == a2;
      if (v21 || (sub_1D1E6904C() & 1) != 0)
      {

        sub_1D182161C(v10, v13, type metadata accessor for StaticRoom);
        sub_1D182161C(v13, v15, type metadata accessor for StaticRoom);
        v26 = type metadata accessor for AccessoryDetailsBasicInfo(0);
        v27 = v32;
        v28 = (v32 + *(v26 + 28));

        *v28 = 0;
        v28[1] = 0;
        v29 = v31;
        sub_1D182161C(v15, v31, type metadata accessor for StaticRoom);
        v30 = *(v26 + 24);
        sub_1D1741A30(v27 + v30, &qword_1EC643878, &qword_1D1E72030);
        sub_1D182161C(v29, v27 + v30, type metadata accessor for StaticRoom);
        return (*(v5 + 56))(v27 + v30, 0, 1, v4);
      }

      ++v19;
      result = sub_1D18215BC(v10, type metadata accessor for StaticRoom);
      if (v18 == v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    v22 = type metadata accessor for AccessoryDetailsBasicInfo(0);
    v23 = *(v22 + 24);
    v24 = v32;
    sub_1D1741A30(v32 + v23, &qword_1EC643878, &qword_1D1E72030);
    (*(v5 + 56))(v24 + v23, 1, 1, v4);
    v25 = (v24 + *(v22 + 28));

    *v25 = a1;
    v25[1] = a2;
  }

  return result;
}

void (*AccessoryDetailsBasicInfo.roomName.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = v1;
  v3 = type metadata accessor for StaticRoom(0);
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(*(*(v3 - 8) + 64));
  }

  v5 = v4;
  a1[3] = v4;
  v6 = (v1 + *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 28));
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    AccessoryDetailsBasicInfo.room.getter(v5);
    v9 = (v5 + *(v3 + 20));
    v7 = *v9;
    v8 = v9[1];

    sub_1D18215BC(v5, type metadata accessor for StaticRoom);
  }

  *a1 = v7;
  a1[1] = v8;

  return sub_1D1816984;
}

void sub_1D1816984(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  if (a2)
  {

    AccessoryDetailsBasicInfo.roomName.setter(v3, v2);
  }

  else
  {
    AccessoryDetailsBasicInfo.roomName.setter(*a1, v2);
  }

  free(v4);
}

uint64_t AccessoryDetailsBasicInfo.preemptivelySetRoom(_:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  v4 = type metadata accessor for StaticRoom(0);
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[15] = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1816B2C, 0, 0);
}

uint64_t sub_1D1816B2C()
{
  *(v0 + 136) = sub_1D1E67E1C();
  *(v0 + 144) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1816BC4, v2, v1);
}

uint64_t sub_1D1816BC4()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1816C5C, 0, 0);
}

uint64_t sub_1D1816C5C(uint64_t a1)
{
  *(v1 + 152) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1816CE8, v3, v2);
}

uint64_t sub_1D1816CE8()
{

  *(v0 + 160) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1816D5C, 0, 0);
}

uint64_t sub_1D1816D5C(uint64_t a1)
{
  *(v1 + 168) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1816DE8, v3, v2);
}

uint64_t sub_1D1816DE8()
{
  v1 = v0[20];

  swift_getKeyPath();
  v0[5] = v1;
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v2 = *(v1 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentHome);
  v0[22] = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1816EE0, 0, 0);
}

uint64_t sub_1D1816EE0(uint64_t a1)
{
  if (v1[22])
  {
    v1[23] = sub_1D1E67E0C();
    v3 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1816FE0, v3, v2);
  }

  else
  {

    v4 = v1[1];

    return v4();
  }
}

uint64_t sub_1D1816FE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1817048, 0, 0);
}

uint64_t sub_1D1817048(uint64_t a1)
{
  *(v1 + 192) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18170D4, v3, v2);
}

uint64_t sub_1D18170D4()
{

  return MEMORY[0x1EEE6DFA0](sub_1D181713C, 0, 0);
}

uint64_t sub_1D181713C(uint64_t a1)
{
  *(v1 + 200) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18171C8, v3, v2);
}

uint64_t sub_1D18171C8()
{
  v1 = *(v0 + 160);

  v2 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  *(v0 + 208) = v3;
  v4 = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1817264, 0, 0);
}

uint64_t sub_1D1817264(uint64_t a1)
{
  if (*(v1 + 208))
  {
    *(v1 + 216) = sub_1D1E67E0C();
    v3 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D181736C, v3, v2);
  }

  else
  {

    v4 = *(v1 + 8);

    return v4();
  }
}

uint64_t sub_1D181736C()
{

  if (qword_1EE07AE28 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1817404, 0, 0);
}

uint64_t sub_1D1817404(uint64_t a1)
{
  *(v1 + 224) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1817490, v3, v2);
}

uint64_t sub_1D1817490()
{

  *(v0 + 232) = qword_1EE07AE30;

  return MEMORY[0x1EEE6DFA0](sub_1D1817504, 0, 0);
}

uint64_t sub_1D1817504()
{
  v1 = v0[26];
  v2 = v0[22];
  *v0[15] = v2;
  swift_storeEnumTagMultiPayload();
  v3 = v2;
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_1D18175D4;
  v6 = v0[15];
  v5 = v0[16];

  return sub_1D1E5A250(v5, v6, v1, v3, 0);
}

uint64_t sub_1D18175D4()
{
  v1 = *(*v0 + 128);
  v2 = *(*v0 + 120);

  sub_1D18215BC(v2, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D18215BC(v1, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1817730, 0, 0);
}

uint64_t sub_1D1817730(uint64_t a1)
{
  *(v1 + 248) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18177BC, v3, v2);
}

uint64_t sub_1D18177BC()
{

  *(v0 + 256) = AccessoryDetailsBasicInfo.roomsForHome.getter();

  return MEMORY[0x1EEE6DFA0](sub_1D181782C, 0, 0);
}

void sub_1D181782C()
{
  v1 = v0[32];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v5 = v0[9];
    v4 = v0[10];
    while (v3 < *(v1 + 16))
    {
      v6 = v0[11];
      v8 = v0[6];
      v7 = v0[7];
      sub_1D1821554(v0[32] + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v3, v6, type metadata accessor for StaticRoom);
      v9 = (v6 + *(v5 + 20));
      v10 = *v9 == v8 && v9[1] == v7;
      if (v10 || (sub_1D1E6904C() & 1) != 0)
      {
        v13 = v0[26];
        v14 = v0[22];
        v15 = v0[12];
        v16 = v0[13];
        v18 = v0[10];
        v17 = v0[11];
        v20 = v0[8];
        v19 = v0[9];

        sub_1D182161C(v17, v15, type metadata accessor for StaticRoom);
        sub_1D182161C(v15, v16, type metadata accessor for StaticRoom);
        v21 = *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 24);
        sub_1D1741A30(v20 + v21, &qword_1EC643878, &qword_1D1E72030);
        sub_1D182161C(v16, v20 + v21, type metadata accessor for StaticRoom);
        (*(v18 + 56))(v20 + v21, 0, 1, v19);
        goto LABEL_12;
      }

      ++v3;
      sub_1D18215BC(v0[11], type metadata accessor for StaticRoom);
      if (v2 == v3)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v11 = v0[26];
    v12 = v0[22];

LABEL_12:

    v22 = v0[1];

    v22();
  }
}

uint64_t AccessoryDetailsBasicInfo.displayName.getter()
{
  v1 = type metadata accessor for StaticRoom(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v24[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = (v0 + *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 20));
  if (v7[1])
  {
    v8 = *v7;
    v9 = v7[1];
  }

  else
  {
    sub_1D1821554(v0, v6, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v25 = type metadata accessor for StaticServiceGroup(0);
        v11 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
        v12 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v25 = type metadata accessor for StaticEndpoint(0);
        v11 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
        v12 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v25 = type metadata accessor for StaticService(0);
      v11 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v12 = type metadata accessor for StaticService;
    }

    else
    {
      v25 = type metadata accessor for StaticAccessory(0);
      v11 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v12 = type metadata accessor for StaticAccessory;
    }

    v13 = v12;
    v26 = v11;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
    sub_1D182161C(v6, boxed_opaque_existential_1, v13);
    v15 = v25;
    v16 = v26;
    __swift_project_boxed_opaque_existential_1(v24, v25);
    v8 = (*(v16 + 40))(v15, v16);
    v9 = v17;
    __swift_destroy_boxed_opaque_existential_1(v24);
  }

  AccessoryDetailsBasicInfo.room.getter(v3);
  v18 = &v3[*(v1 + 20)];
  v20 = *v18;
  v19 = v18[1];

  sub_1D18215BC(v3, type metadata accessor for StaticRoom);
  v24[0] = v8;
  v24[1] = v9;
  v24[2] = v20;
  v25 = v19;
  v21 = DeviceDisplayNames.displayName.getter();

  return v21;
}

uint64_t sub_1D1817DA0()
{
  v1[12] = v0;
  v2 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v1[15] = *(v3 + 64);
  v1[16] = swift_task_alloc();
  type metadata accessor for StaticHome(0);
  v1[17] = swift_task_alloc();
  v1[18] = type metadata accessor for StateSnapshot(0);
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1817EC4, 0, 0);
}

uint64_t sub_1D1817EC4()
{
  v1 = (v0[12] + *(v0[13] + 28));
  v0[20] = *v1;
  v2 = v1[1];
  v0[21] = v2;
  if (v2)
  {
    v0[22] = sub_1D1E67E1C();

    v0[23] = sub_1D1E67E0C();
    v4 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1817FD0, v4, v3);
  }

  else
  {

    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D1817FD0()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1818068, 0, 0);
}

uint64_t sub_1D1818068(uint64_t a1)
{
  *(v1 + 192) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18180F4, v3, v2);
}

uint64_t sub_1D18180F4()
{

  *(v0 + 200) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1818168, 0, 0);
}

uint64_t sub_1D1818168(uint64_t a1)
{
  *(v1 + 208) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18181F4, v3, v2);
}

uint64_t sub_1D18181F4()
{
  v1 = v0[25];
  v2 = v0[19];

  swift_getKeyPath();
  v0[11] = v1;
  sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D1821554(v1 + v3, v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D181831C, 0, 0);
}

uint64_t sub_1D181831C()
{
  v1 = v0[19];
  sub_1D1821554(v1 + *(v0[18] + 20), v0[17], type metadata accessor for StaticHome);
  sub_1D18215BC(v1, type metadata accessor for StateSnapshot);
  v2 = swift_task_alloc();
  v0[27] = v2;
  *v2 = v0;
  v2[1] = sub_1D18183F4;

  return StaticHome.home.getter();
}

uint64_t sub_1D18183F4(uint64_t a1)
{
  v2 = *(*v1 + 136);
  *(*v1 + 224) = a1;

  sub_1D18215BC(v2, type metadata accessor for StaticHome);

  return MEMORY[0x1EEE6DFA0](sub_1D1818528, 0, 0);
}

uint64_t sub_1D1818528()
{
  v1 = v0[28];
  if (v1)
  {
    v3 = v0[20];
    v2 = v0[21];
    v5 = v0[15];
    v4 = v0[16];
    v6 = v0[14];
    v7 = v0[12];
    v8 = sub_1D1E677EC();
    sub_1D1821554(v7, v4, type metadata accessor for AccessoryDetailsBasicInfo);
    v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
    v10 = swift_allocObject();
    *(v10 + 16) = v1;
    sub_1D182161C(v4, v10 + v9, type metadata accessor for AccessoryDetailsBasicInfo);
    v11 = (v10 + ((v5 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v11 = v3;
    v11[1] = v2;
    v0[6] = sub_1D1821684;
    v0[7] = v10;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1D1819E6C;
    v0[5] = &block_descriptor_4;
    v12 = _Block_copy(v0 + 2);
    v13 = v1;

    [v13 addRoomWithName:v8 completionHandler:v12];
    _Block_release(v12);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1D181870C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  result = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v24 - v16;
  if (a1)
  {
    v18 = sub_1D1E67E7C();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    sub_1D1821554(a4, &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AccessoryDetailsBasicInfo);
    v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = a3;
    v20[5] = a1;
    sub_1D182161C(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v20 + v19, type metadata accessor for AccessoryDetailsBasicInfo);
    v21 = (v20 + ((v13 + v19 + 7) & 0xFFFFFFFFFFFFFFF8));
    *v21 = a5;
    v21[1] = a6;
    v22 = a1;
    v23 = a3;

    sub_1D17C6EF0(0, 0, v17, &unk_1D1E76898, v20);
  }

  return result;
}

uint64_t sub_1D181891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  type metadata accessor for AccessoryDetailsBasicInfo(0);
  v8[19] = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  v8[20] = v9;
  v8[21] = *(v9 - 8);
  v8[22] = swift_task_alloc();
  type metadata accessor for StaticEndpoint(0);
  v8[23] = swift_task_alloc();
  type metadata accessor for StaticServiceGroup(0);
  v8[24] = swift_task_alloc();
  type metadata accessor for StaticService(0);
  v8[25] = swift_task_alloc();
  type metadata accessor for StaticAccessory(0);
  v8[26] = swift_task_alloc();
  v8[27] = type metadata accessor for AccessoryDetails.Payload(0);
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1818AFC, 0, 0);
}

uint64_t sub_1D1818AFC()
{
  v1 = *(v0 + 112);
  *(v0 + 96) = v1;
  sub_1D1821898();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644920, &qword_1D1E768A0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 120);
    sub_1D16EEE20((v0 + 56), v0 + 16);
    v4 = *(v0 + 40);
    v5 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    (*(v5 + 16))(v3, v4, v5);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  }

  else
  {
    *(v0 + 88) = 0;
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    sub_1D1741A30(v0 + 56, &qword_1EC644928, &qword_1D1E768A8);
  }

  sub_1D1821554(*(v0 + 128), *(v0 + 232), type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v7 = *(v0 + 232);
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v11 = *(v0 + 192);
      v12 = *(v0 + 120);
      sub_1D182161C(v7, v11, type metadata accessor for StaticServiceGroup);
      v13 = swift_task_alloc();
      *(v0 + 272) = v13;
      *(v13 + 16) = v11;
      *(v13 + 24) = v12;
      v14 = swift_task_alloc();
      *(v0 + 280) = v14;
      *v14 = v0;
      v14[1] = sub_1D18192F8;
      v15 = MEMORY[0x1E69E7CA8] + 8;
      v16 = MEMORY[0x1E69E7CA8] + 8;
      v17 = MEMORY[0x1E69E7CA8] + 8;

      return MEMORY[0x1EEE6DD58](v14, v15, v16, 0, 0, &unk_1D1E768B0, v13, v17);
    }

    else
    {
      v20 = *(v0 + 120);
      sub_1D182161C(v7, *(v0 + 184), type metadata accessor for StaticEndpoint);
      v21 = [v20 uniqueIdentifier];
      sub_1D1E66A5C();

      v22 = swift_task_alloc();
      *(v0 + 288) = v22;
      *v22 = v0;
      v22[1] = sub_1D1819510;
      v23 = *(v0 + 176);

      return StaticEndpoint.set(roomID:)(v23);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1D182161C(v7, *(v0 + 200), type metadata accessor for StaticService);
    v18 = swift_task_alloc();
    *(v0 + 256) = v18;
    *v18 = v0;
    v18[1] = sub_1D1819108;
    v19 = *(v0 + 120);

    return StaticService.set(room:)(v19);
  }

  else
  {
    sub_1D182161C(v7, *(v0 + 208), type metadata accessor for StaticAccessory);
    v8 = swift_task_alloc();
    *(v0 + 240) = v8;
    *v8 = v0;
    v8[1] = sub_1D1818F18;
    v9 = *(v0 + 120);

    return StaticAccessory.set(room:)(v9);
  }
}

uint64_t sub_1D1818F18()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1D1819744;
  }

  else
  {
    v2 = sub_1D181902C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D181902C()
{
  sub_1D18215BC(*(v0 + 208), type metadata accessor for StaticAccessory);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1819108()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1D1819AD8;
  }

  else
  {
    v2 = sub_1D181921C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D181921C()
{
  sub_1D18215BC(*(v0 + 200), type metadata accessor for StaticService);

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D18192F8()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D1819434, 0, 0);
  }
}

uint64_t sub_1D1819434()
{
  sub_1D18215BC(*(v0 + 192), type metadata accessor for StaticServiceGroup);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1819510()
{
  v1 = *(*v0 + 176);
  v2 = *(*v0 + 168);
  v3 = *(*v0 + 160);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1819668, 0, 0);
}

uint64_t sub_1D1819668()
{
  sub_1D18215BC(*(v0 + 184), type metadata accessor for StaticEndpoint);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1819744()
{
  v28 = v0;
  sub_1D18215BC(v0[26], type metadata accessor for StaticAccessory);
  v1 = v0[31];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = v0[16];
  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC64F440);
  sub_1D1821554(v3, v2, type metadata accessor for AccessoryDetailsBasicInfo);
  v5 = v1;

  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6833C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[28];
    v23 = v0[18];
    v24 = v0[19];
    v9 = v0[17];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315650;
    v0[13] = v1;
    v12 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v13 = sub_1D1E6789C();
    v15 = sub_1D1B1312C(v13, v14, &v25);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1D1B1312C(v9, v23, &v25);
    *(v10 + 22) = 2080;
    sub_1D1821554(v24, v8, type metadata accessor for AccessoryDetails.Payload);
    v16 = sub_1D17EEED0(v8);
    v26 = 0xD000000000000019;
    v27 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v16);

    v17 = v26;
    v18 = v27;
    sub_1D18215BC(v8, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v24, type metadata accessor for AccessoryDetailsBasicInfo);
    v19 = sub_1D1B1312C(v17, v18, &v25);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_1D16EC000, v6, v7, "Error '%s' committing suggested room: %s for %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  else
  {
    v20 = v0[19];

    sub_1D18215BC(v20, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v21 = v0[1];

  return v21();
}

uint64_t sub_1D1819AD8()
{
  v28 = v0;
  sub_1D18215BC(v0[25], type metadata accessor for StaticService);
  v1 = v0[33];
  if (qword_1EC642470 != -1)
  {
    swift_once();
  }

  v2 = v0[19];
  v3 = v0[16];
  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC64F440);
  sub_1D1821554(v3, v2, type metadata accessor for AccessoryDetailsBasicInfo);
  v5 = v1;

  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6833C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[28];
    v23 = v0[18];
    v24 = v0[19];
    v9 = v0[17];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v25 = v11;
    *v10 = 136315650;
    v0[13] = v1;
    v12 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v13 = sub_1D1E6789C();
    v15 = sub_1D1B1312C(v13, v14, &v25);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1D1B1312C(v9, v23, &v25);
    *(v10 + 22) = 2080;
    sub_1D1821554(v24, v8, type metadata accessor for AccessoryDetails.Payload);
    v16 = sub_1D17EEED0(v8);
    v26 = 0xD000000000000019;
    v27 = 0x80000001D1EB9EC0;
    MEMORY[0x1D3890F70](v16);

    v17 = v26;
    v18 = v27;
    sub_1D18215BC(v8, type metadata accessor for AccessoryDetails.Payload);
    sub_1D18215BC(v24, type metadata accessor for AccessoryDetailsBasicInfo);
    v19 = sub_1D1B1312C(v17, v18, &v25);

    *(v10 + 24) = v19;
    _os_log_impl(&dword_1D16EC000, v6, v7, "Error '%s' committing suggested room: %s for %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v11, -1, -1);
    MEMORY[0x1D3893640](v10, -1, -1);
  }

  else
  {
    v20 = v0[19];

    sub_1D18215BC(v20, type metadata accessor for AccessoryDetailsBasicInfo);
  }

  v21 = v0[1];

  return v21();
}

void sub_1D1819E6C(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

uint64_t AccessoryDetailsBasicInfo.shouldShowInDashboard.getter()
{
  v1 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 32));
  if (v4 == 2)
  {
    sub_1D1821554(v0, v3, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v15 = type metadata accessor for StaticServiceGroup(0);
        v6 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
        v7 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v15 = type metadata accessor for StaticEndpoint(0);
        v6 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
        v7 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v15 = type metadata accessor for StaticService(0);
      v6 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v7 = type metadata accessor for StaticService;
    }

    else
    {
      v15 = type metadata accessor for StaticAccessory(0);
      v6 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v7 = type metadata accessor for StaticAccessory;
    }

    v8 = v7;
    v16 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    sub_1D182161C(v3, boxed_opaque_existential_1, v8);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    LOBYTE(v4) = (*(v11 + 64))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return v4 & 1;
}

uint64_t sub_1D181A174@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v5 = *(a1 + *(result + 32));
  if (v5 == 2)
  {
    AccessoryDetails.Payload.basicInfo.getter(v8);
    v6 = v9;
    v7 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    LOBYTE(v5) = (*(v7 + 64))(v6, v7);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
  }

  *a2 = v5 & 1;
  return result;
}

uint64_t AccessoryDetailsBasicInfo.shouldShowInDashboard.setter(char a1)
{
  result = type metadata accessor for AccessoryDetailsBasicInfo(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t (*AccessoryDetailsBasicInfo.shouldShowInDashboard.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = *(*(type metadata accessor for AccessoryDetails.Payload(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 48) = v7;
  v9 = *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 32);
  *(v5 + 56) = v9;
  v10 = *(v1 + v9);
  if (v10 == 2)
  {
    sub_1D1821554(v1, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        *(v5 + 24) = type metadata accessor for StaticServiceGroup(0);
        v12 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
        v13 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        *(v5 + 24) = type metadata accessor for StaticEndpoint(0);
        v12 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
        v13 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      *(v5 + 24) = type metadata accessor for StaticService(0);
      v12 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v13 = type metadata accessor for StaticService;
    }

    else
    {
      *(v5 + 24) = type metadata accessor for StaticAccessory(0);
      v12 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v13 = type metadata accessor for StaticAccessory;
    }

    v14 = v13;
    *(v5 + 32) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
    sub_1D182161C(v8, boxed_opaque_existential_1, v14);
    v16 = *(v5 + 24);
    v17 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_1(v5, v16);
    LOBYTE(v10) = (*(v17 + 64))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  *(v5 + 60) = v10 & 1;
  return sub_1D1823338;
}

uint64_t AccessoryDetailsBasicInfo.isFavorite.getter()
{
  v1 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v14[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 36));
  if (v4 == 2)
  {
    sub_1D1821554(v0, v3, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v15 = type metadata accessor for StaticServiceGroup(0);
        v6 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
        v7 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        v15 = type metadata accessor for StaticEndpoint(0);
        v6 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
        v7 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      v15 = type metadata accessor for StaticService(0);
      v6 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v7 = type metadata accessor for StaticService;
    }

    else
    {
      v15 = type metadata accessor for StaticAccessory(0);
      v6 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v7 = type metadata accessor for StaticAccessory;
    }

    v8 = v7;
    v16 = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v14);
    sub_1D182161C(v3, boxed_opaque_existential_1, v8);
    v10 = v15;
    v11 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    LOBYTE(v4) = (*(v11 + 72))(v10, v11);
    __swift_destroy_boxed_opaque_existential_1(v14);
  }

  return v4 & 1;
}

uint64_t sub_1D181A780@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for AccessoryDetailsBasicInfo(0);
  v5 = *(a1 + *(result + 36));
  if (v5 == 2)
  {
    AccessoryDetails.Payload.basicInfo.getter(v8);
    v6 = v9;
    v7 = v10;
    __swift_project_boxed_opaque_existential_1(v8, v9);
    LOBYTE(v5) = (*(v7 + 72))(v6, v7);
    result = __swift_destroy_boxed_opaque_existential_1(v8);
  }

  *a2 = v5 & 1;
  return result;
}

uint64_t AccessoryDetailsBasicInfo.isFavorite.setter(char a1)
{
  result = type metadata accessor for AccessoryDetailsBasicInfo(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*AccessoryDetailsBasicInfo.isFavorite.modify(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x40uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 40) = v1;
  v6 = *(*(type metadata accessor for AccessoryDetails.Payload(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 48) = v7;
  v9 = *(type metadata accessor for AccessoryDetailsBasicInfo(0) + 36);
  *(v5 + 56) = v9;
  v10 = *(v1 + v9);
  if (v10 == 2)
  {
    sub_1D1821554(v1, v8, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        *(v5 + 24) = type metadata accessor for StaticServiceGroup(0);
        v12 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
        v13 = type metadata accessor for StaticServiceGroup;
      }

      else
      {
        *(v5 + 24) = type metadata accessor for StaticEndpoint(0);
        v12 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
        v13 = type metadata accessor for StaticEndpoint;
      }
    }

    else if (EnumCaseMultiPayload)
    {
      *(v5 + 24) = type metadata accessor for StaticService(0);
      v12 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
      v13 = type metadata accessor for StaticService;
    }

    else
    {
      *(v5 + 24) = type metadata accessor for StaticAccessory(0);
      v12 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
      v13 = type metadata accessor for StaticAccessory;
    }

    v14 = v13;
    *(v5 + 32) = v12;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v5);
    sub_1D182161C(v8, boxed_opaque_existential_1, v14);
    v16 = *(v5 + 24);
    v17 = *(v5 + 32);
    __swift_project_boxed_opaque_existential_1(v5, v16);
    LOBYTE(v10) = (*(v17 + 72))(v16, v17);
    __swift_destroy_boxed_opaque_existential_1(v5);
  }

  *(v5 + 60) = v10 & 1;
  return sub_1D181AB10;
}

void sub_1D181AB14(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 56);
  v4 = *(*a1 + 40);
  v3 = *(*a1 + 48);
  *(v4 + v2) = v1[60];
  free(v3);

  free(v1);
}

uint64_t AccessoryDetailsBasicInfo.isActivated.getter()
{
  v1 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v13[-1] - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1821554(v0, v3, type metadata accessor for AccessoryDetails.Payload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v14 = type metadata accessor for StaticServiceGroup(0);
      v5 = sub_1D1821000(&qword_1EC644688, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
      v6 = type metadata accessor for StaticServiceGroup;
    }

    else
    {
      v14 = type metadata accessor for StaticEndpoint(0);
      v5 = sub_1D1821000(&qword_1EC644680, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
      v6 = type metadata accessor for StaticEndpoint;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = type metadata accessor for StaticService(0);
    v5 = sub_1D1821000(&qword_1EC644690, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    v6 = type metadata accessor for StaticService;
  }

  else
  {
    v14 = type metadata accessor for StaticAccessory(0);
    v5 = sub_1D1821000(&qword_1EC644698, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    v6 = type metadata accessor for StaticAccessory;
  }

  v7 = v6;
  v15 = v5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v13);
  sub_1D182161C(v3, boxed_opaque_existential_1, v7);
  v9 = v14;
  v10 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  LOBYTE(v9) = (*(v10 + 88))(v9, v10);
  __swift_destroy_boxed_opaque_existential_1(v13);
  return v9 & 1;
}

Swift::Int AccessoryDetailsBasicInfo.batteryLevel.getter()
{
  v1 = type metadata accessor for StaticService(0);
  v118 = *(v1 - 8);
  v2 = MEMORY[0x1EEE9AC00](v1);
  v112 = &v95 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v100 = &v95 - v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v95 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v109 = &v95 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v104 = &v95 - v11;
  v12 = type metadata accessor for StaticAccessory(0);
  v101 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v102 = &v95 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v95 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v108 = &v95 - v18;
  v115 = type metadata accessor for AccessoryDetails.Payload(0);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v95 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StaticCluster(0);
  v113 = *(v20 - 8);
  v114 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v95 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448C8, &qword_1D1E94060);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v95 - v24;
  v26 = type metadata accessor for StaticEndpoint(0);
  v119 = *(v26 - 8);
  v120 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v95 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for StaticClusterPowerSource(0);
  v29 = *(v121 - 8);
  v30 = MEMORY[0x1EEE9AC00](v121);
  v105 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v110 = &v95 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v111 = &v95 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v37 = &v95 - v36;
  v117 = v0;
  AccessoryDetails.Payload.staticMatterDevice.getter(&v95 - v36);
  v38 = type metadata accessor for StaticMatterDevice(0);
  if ((*(*(v38 - 8) + 48))(v37, 1, v38) == 1)
  {
    sub_1D1741A30(v37, &qword_1EC643650, &qword_1D1E71D40);
    v39 = v8;
    v40 = v17;
    v41 = v118;
LABEL_27:
    v67 = v116;
    sub_1D1821554(v117, v116, type metadata accessor for AccessoryDetails.Payload);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      v75 = type metadata accessor for AccessoryDetails.Payload;
      v76 = v67;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        sub_1D182161C(v67, v39, type metadata accessor for StaticService);
        v124 = *(v39 + *(v1 + 128));
        LOBYTE(v123[0]) = 11;
        v126 = StaticCharacteristicsBag.int(for:)(v123);
        if (v126.is_nil)
        {
          if (qword_1EE07DC58 != -1)
          {
            goto LABEL_60;
          }

          goto LABEL_38;
        }

        value = v126.value;
        sub_1D18215BC(v39, type metadata accessor for StaticService);
        return value;
      }

      v39 = v108;
      v69 = sub_1D182161C(v67, v108, type metadata accessor for StaticAccessory);
      MEMORY[0x1EEE9AC00](v69);
      *(&v95 - 2) = v39;
      v71 = sub_1D17868B8(sub_1D1823318, (&v95 - 4), v70);
      v72 = v71[2];
      v73 = v109;
      if (v72)
      {
        v40 = 0;
        while (v40 < v71[2])
        {
          sub_1D1821554(v71 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v40, v73, type metadata accessor for StaticService);
          v124 = *(v73 + *(v1 + 128));
          LOBYTE(v123[0]) = 11;
          v125 = StaticCharacteristicsBag.int(for:)(v123);
          if (!v125.is_nil)
          {

            v91 = v104;
            sub_1D182161C(v73, v104, type metadata accessor for StaticService);
            v124 = *(v91 + *(v1 + 128));
            LOBYTE(v123[0]) = 11;
            v92 = StaticCharacteristicsBag.int(for:)(v123);
            sub_1D18215BC(v39, type metadata accessor for StaticAccessory);
            v93 = v91;
            goto LABEL_50;
          }

          ++v40;
          sub_1D18215BC(v73, type metadata accessor for StaticService);
          if (v72 == v40)
          {
            goto LABEL_34;
          }
        }

        __break(1u);
        while (1)
        {
          __break(1u);
LABEL_60:
          swift_once();
LABEL_38:
          v77 = qword_1EE07DC60;
          swift_getKeyPath();
          v124 = v77;
          sub_1D1821000(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
          sub_1D1E66CAC();

          v78 = v77 + OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
          swift_beginAccess();
          v79 = *(v78 + *(type metadata accessor for StateSnapshot(0) + 32));
          if (!*(v79 + 16))
          {
            break;
          }

          v80 = sub_1D1742188();
          if ((v81 & 1) == 0)
          {

            break;
          }

          v82 = v102;
          sub_1D1821554(*(v79 + 56) + *(v101 + 72) * v80, v102, type metadata accessor for StaticAccessory);

          v83 = sub_1D182161C(v82, v40, type metadata accessor for StaticAccessory);
          MEMORY[0x1EEE9AC00](v83);
          v103 = v40;
          *(&v95 - 2) = v40;
          v85 = sub_1D17868B8(sub_1D1820ECC, (&v95 - 4), v84);
          v86 = v85[2];
          if (!v86)
          {
LABEL_47:

            sub_1D18215BC(v103, type metadata accessor for StaticAccessory);
            break;
          }

          v87 = 0;
          while (v87 < v85[2])
          {
            v88 = v112;
            sub_1D1821554(v85 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v87, v112, type metadata accessor for StaticService);
            LOBYTE(v123[0]) = *(v88 + *(v1 + 104));
            if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB2DA0 == v89)
            {
              goto LABEL_56;
            }

            v40 = sub_1D1E6904C();

            if (v40)
            {
              goto LABEL_57;
            }

            ++v87;
            sub_1D18215BC(v112, type metadata accessor for StaticService);
            if (v86 == v87)
            {
              goto LABEL_47;
            }
          }
        }

        v74 = type metadata accessor for StaticService;
      }

      else
      {
LABEL_34:

        v74 = type metadata accessor for StaticAccessory;
      }

      v75 = v74;
      v76 = v39;
    }

    sub_1D18215BC(v76, v75);
    return 0;
  }

  v106 = v22;
  v97 = v12;
  v103 = v17;
  v98 = v8;
  v99 = v1;
  v42 = *&v37[*(v38 + 56)];

  sub_1D18215BC(v37, type metadata accessor for StaticMatterDevice);
  v43 = 1 << *(v42 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v42 + 64);
  v46 = (v43 + 63) >> 6;
  v1 = v29 + 56;
  v96 = v29;
  v47 = (v29 + 48);

  v39 = 0;
  v107 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v48 = v39;
    if (!v45)
    {
      break;
    }

LABEL_10:
    sub_1D1821554(*(v42 + 56) + *(v119 + 72) * (__clz(__rbit64(v45)) | (v39 << 6)), v28, type metadata accessor for StaticEndpoint);
    v49 = *&v28[*(v120 + 36)];
    if (!*(v49 + 16))
    {
      goto LABEL_15;
    }

    v50 = sub_1D171D278(2);
    if ((v51 & 1) == 0)
    {
      goto LABEL_15;
    }

    v52 = *(v49 + 56) + *(v113 + 72) * v50;
    v53 = v106;
    sub_1D1821554(v52, v106, type metadata accessor for StaticCluster);
    if (swift_getEnumCaseMultiPayload() != 5)
    {
      sub_1D18215BC(v53, type metadata accessor for StaticCluster);
LABEL_15:
      v54 = 1;
      goto LABEL_16;
    }

    sub_1D182161C(v53, v25, type metadata accessor for StaticClusterPowerSource);
    v54 = 0;
LABEL_16:
    v45 &= v45 - 1;
    v55 = v121;
    (*v1)(v25, v54, 1, v121);
    sub_1D18215BC(v28, type metadata accessor for StaticEndpoint);
    if ((*v47)(v25, 1, v55) == 1)
    {
      sub_1D1741A30(v25, &qword_1EC6448C8, &qword_1D1E94060);
    }

    else
    {
      sub_1D182161C(v25, v105, type metadata accessor for StaticClusterPowerSource);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_1D177D8BC(0, v107[2] + 1, 1, v107);
      }

      v56 = v96;
      v58 = v107[2];
      v57 = v107[3];
      v59 = v58 + 1;
      if (v58 >= v57 >> 1)
      {
        v95 = v58 + 1;
        v61 = sub_1D177D8BC((v57 > 1), v58 + 1, 1, v107);
        v59 = v95;
        v56 = v96;
        v107 = v61;
      }

      v60 = v107;
      v107[2] = v59;
      sub_1D182161C(v105, v60 + ((*(v56 + 80) + 32) & ~*(v56 + 80)) + *(v56 + 72) * v58, type metadata accessor for StaticClusterPowerSource);
    }
  }

  while (1)
  {
    v39 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
LABEL_56:

LABEL_57:

      v94 = v100;
      sub_1D182161C(v112, v100, type metadata accessor for StaticService);
      v123[0] = *(v94 + *(v1 + 128));
      v122 = 11;
      v92 = StaticCharacteristicsBag.int(for:)(&v122);
      sub_1D18215BC(v103, type metadata accessor for StaticAccessory);
      sub_1D18215BC(v39, type metadata accessor for StaticService);
      v93 = v94;
LABEL_50:
      sub_1D18215BC(v93, type metadata accessor for StaticService);
      return v92;
    }

    if (v39 >= v46)
    {
      break;
    }

    v45 = *(v42 + 64 + 8 * v39);
    ++v48;
    if (v45)
    {
      goto LABEL_10;
    }
  }

  if (!v107[2])
  {

    v1 = v99;
    v41 = v118;
    v39 = v98;
    v40 = v103;
    goto LABEL_27;
  }

  v62 = v110;
  sub_1D1821554(v107 + ((*(v96 + 80) + 32) & ~*(v96 + 80)), v110, type metadata accessor for StaticClusterPowerSource);

  v63 = v111;
  sub_1D182161C(v62, v111, type metadata accessor for StaticClusterPowerSource);
  v64 = (v63 + *(v121 + 36));
  v65 = *v64;
  LOBYTE(v62) = v64[1];
  sub_1D18215BC(v63, type metadata accessor for StaticClusterPowerSource);
  v1 = v99;
  v41 = v118;
  v39 = v98;
  v40 = v103;
  if (v62)
  {
    goto LABEL_27;
  }

  return v65 >> 1;
}

uint64_t sub_1D181BD6C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for StaticCluster(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for StaticEndpoint(0) + 36));
  if (!*(v7 + 16))
  {
    goto LABEL_6;
  }

  v8 = sub_1D171D278(2);
  if ((v9 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1D1821554(*(v7 + 56) + *(v4 + 72) * v8, v6, type metadata accessor for StaticCluster);
  if (swift_getEnumCaseMultiPayload() != 5)
  {
    sub_1D18215BC(v6, type metadata accessor for StaticCluster);
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  sub_1D182161C(v6, a1, type metadata accessor for StaticClusterPowerSource);
  v10 = 0;
LABEL_7:
  v11 = type metadata accessor for StaticClusterPowerSource(0);
  return (*(*(v11 - 8) + 56))(a1, v10, 1, v11);
}