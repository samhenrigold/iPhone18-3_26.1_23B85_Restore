uint64_t sub_1D179E71C(char *a1, char *a2)
{
  if (qword_1D1E731A0[*a1] == qword_1D1E731A0[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1D1E6904C();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1D179E784()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D179E7E0(uint64_t a1)
{
  sub_1D1E678EC();
}

uint64_t sub_1D179E820(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t _s2os6LoggerV13HomeDataModelE11AutomationsO8didBegin_7trigger2idAA23OSSignpostIntervalStateCAF9OperationO_AD14TriggerBuilderCAA0K2IDVtFZ_0(char *a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v5 = sub_1D1E66FDC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30[0] = *a1;
  if (qword_1EC642130 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  __swift_project_value_buffer(v9, qword_1EC643BF8);

  v10 = sub_1D1E6707C();
  v11 = sub_1D1E6835C();

  v12 = os_log_type_enabled(v10, v11);
  v30[1] = a2;
  if (v12)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v32 = v14;
    *v13 = 136315394;
    v15 = sub_1D1B1312C(qword_1D1E731A0[v30[0]], 0xE800000000000000, &v32);

    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v16 = TriggerBuilder.debugDescription.getter();
    v18 = sub_1D1B1312C(v16, v17, &v32);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_1D16EC000, v10, v11, "Began %s trigger %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v14, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  if (qword_1EC642128 != -1)
  {
    swift_once();
  }

  v19 = sub_1D1E6701C();
  __swift_project_value_buffer(v19, qword_1EC643BE0);

  v20 = sub_1D1E66FFC();
  v21 = sub_1D1E683EC();

  if (sub_1D1E6855C())
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v32 = v23;
    *v22 = 136315394;
    v24 = sub_1D1B1312C(qword_1D1E731A0[v30[0]], 0xE800000000000000, &v32);

    *(v22 + 4) = v24;
    *(v22 + 12) = 2080;
    v25 = TriggerBuilder.debugDescription.getter();
    v27 = sub_1D1B1312C(v25, v26, &v32);

    *(v22 + 14) = v27;
    v28 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v20, v21, v28, "TriggerBuilderCommit", "Began %s trigger %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v23, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  (*(v6 + 16))(v8, v31, v5);
  sub_1D1E6705C();
  swift_allocObject();
  return sub_1D1E6704C();
}

uint64_t _s2os6LoggerV13HomeDataModelE11AutomationsO9didFinish_5state5erroryAF9OperationO_AA23OSSignpostIntervalStateCs5Error_pSgtFZ_0(char *a1, uint64_t a2, void *a3)
{
  v6 = sub_1D1E6702C();
  v46 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v45 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66FDC();
  v47 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  if (a3)
  {
    v12 = a3;
    if (qword_1EC642130 != -1)
    {
      swift_once();
    }

    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EC643BF8);
    v14 = a3;
    v15 = sub_1D1E6707C();
    v16 = sub_1D1E6833C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v43 = a2;
      v19 = v18;
      v20 = swift_slowAlloc();
      v44 = v8;
      v21 = v20;
      v48 = v20;
      *v17 = 136315394;
      v22 = sub_1D1B1312C(qword_1D1E731A0[v11], 0xE800000000000000, &v48);
      v23 = v6;
      v24 = v22;

      *(v17 + 4) = v24;
      v6 = v23;
      *(v17 + 12) = 2112;
      v25 = a3;
      v26 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v26;
      *v19 = v26;
      _os_log_impl(&dword_1D16EC000, v15, v16, "Failed when %s trigger with error: %@", v17, 0x16u);
      sub_1D179F28C(v19);
      MEMORY[0x1D3893640](v19, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v21);
      v8 = v44;
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v17, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EC642130 != -1)
    {
      swift_once();
    }

    v27 = sub_1D1E6709C();
    __swift_project_value_buffer(v27, qword_1EC643BF8);
    v28 = sub_1D1E6707C();
    v29 = sub_1D1E6835C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v44 = v6;
      v31 = v30;
      v32 = swift_slowAlloc();
      v48 = v32;
      *v31 = 136315138;
      v33 = sub_1D1B1312C(qword_1D1E731A0[v11], 0xE800000000000000, &v48);

      *(v31 + 4) = v33;
      _os_log_impl(&dword_1D16EC000, v28, v29, "Succeeded %s trigger", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1D3893640](v32, -1, -1);
      v34 = v31;
      v6 = v44;
      MEMORY[0x1D3893640](v34, -1, -1);
    }
  }

  if (qword_1EC642128 != -1)
  {
    swift_once();
  }

  v35 = sub_1D1E6701C();
  __swift_project_value_buffer(v35, qword_1EC643BE0);
  v36 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v37 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {

    v38 = v45;
    sub_1D1E6706C();

    if ((*(v46 + 88))(v38, v6) == *MEMORY[0x1E69E93E8])
    {
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v46 + 8))(v38, v6);
      v39 = "";
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v36, v37, v41, "TriggerBuilderCommit", v39, v40, 2u);
    MEMORY[0x1D3893640](v40, -1, -1);
  }

  return (*(v47 + 8))(v10, v8);
}

unint64_t sub_1D179F218()
{
  result = qword_1EC643C10;
  if (!qword_1EC643C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643C10);
  }

  return result;
}

uint64_t sub_1D179F28C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D179F2F8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001ALL;
  v3 = "5291";
  v4 = a1;
  if (a1 == 5)
  {
    v5 = 0xD00000000000001BLL;
  }

  else
  {
    v5 = 0xD000000000000021;
  }

  if (a1 == 5)
  {
    v6 = "HMActionSetTypeUserDefined";
  }

  else
  {
    v6 = "HMActionSetTypeTriggerOwned";
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000014;
  }

  else
  {
    v7 = 0xD00000000000001ALL;
  }

  if (a1 == 3)
  {
    v8 = "HMActionSetTypeWakeUp";
  }

  else
  {
    v8 = "HMActionSetTypeSleep";
  }

  if (v4 <= 4)
  {
    v9 = v7;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 4)
  {
    v10 = v8;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0xD00000000000001CLL;
  if (v4 == 1)
  {
    v12 = "HMActionSetTypeHomeArrival";
  }

  else
  {
    v11 = 0xD000000000000015;
    v12 = "HMActionSetTypeHomeDeparture";
  }

  if (!v4)
  {
    v11 = 0xD00000000000001ALL;
    v12 = "5291";
  }

  if (v4 <= 2)
  {
    v13 = v12;
  }

  else
  {
    v11 = v9;
    v13 = v10;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xD00000000000001CLL;
        v3 = "HMActionSetTypeHomeArrival";
      }

      else
      {
        v2 = 0xD000000000000015;
        v3 = "HMActionSetTypeHomeDeparture";
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v2 = 0xD00000000000001BLL;
      v3 = "HMActionSetTypeUserDefined";
    }

    else
    {
      v2 = 0xD000000000000021;
      v3 = "HMActionSetTypeTriggerOwned";
    }
  }

  else if (a2 == 3)
  {
    v2 = 0xD000000000000014;
    v3 = "HMActionSetTypeWakeUp";
  }

  else
  {
    v3 = "HMActionSetTypeSleep";
  }

  if (v11 == v2 && (v13 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1D1E6904C();
  }

  return v14 & 1;
}

uint64_t sub_1D179F48C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "00-8000-0026BB765291";
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      v6 = "17-A590-755E1AAC02AE";
      v7 = "73-8FBD-0E8978A33403";
      v8 = a1 == 6;
    }

    else
    {
      v6 = "60-AD68-D91053B75F44";
      v7 = "7E-BE63-1D00B1500545";
      v8 = a1 == 4;
    }

    if (v8)
    {
      v5 = v6;
    }

    else
    {
      v5 = v7;
    }
  }

  else
  {
    v3 = "73-A058-C5E64BC487B2";
    if (a1 != 2)
    {
      v3 = "CE-986D-63B28F62C9E3";
    }

    v4 = "13-AA62-01754F256DD5";
    if (!a1)
    {
      v4 = "00-8000-0026BB765291";
    }

    if (a1 <= 1u)
    {
      v5 = v4;
    }

    else
    {
      v5 = v3;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v9 = "3E68745D-F0E1-4B73-8FBD-0E8978A33403";
      }

      else
      {
        v9 = "7FADD792-61A4-4340-A849-215882E2F008";
      }
    }

    else if (a2 == 4)
    {
      v9 = "430C9F25-44E0-4F7E-BE63-1D00B1500545";
    }

    else
    {
      v9 = "63489665-5E39-4C17-A590-755E1AAC02AE";
    }

    goto LABEL_30;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v9 = "563F7D20-6AFC-44CE-986D-63B28F62C9E3";
    }

    else
    {
      v9 = "7A5BD1AB-6478-4560-AD68-D91053B75F44";
    }

LABEL_30:
    v2 = (v9 - 32);
    goto LABEL_31;
  }

  if (a2)
  {
    v2 = "13-AA62-01754F256DD5";
  }

LABEL_31:
  if ((v5 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1D1E6904C();
  }

  return v10 & 1;
}

uint64_t sub_1D179F634(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x676E6979616C70;
    }

    else
    {
      v4 = 0x646573756170;
    }

    if (v2)
    {
      v3 = 0xE700000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0xD000000000000014;
    v3 = 0x80000001D1EB5A20;
  }

  else if (a1 == 3)
  {
    v3 = 0x80000001D1EB5A40;
    v4 = 0xD000000000000015;
  }

  else
  {
    v3 = 0xE400000000000000;
    v4 = 1702259052;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x676E6979616C70;
    }

    else
    {
      v6 = 0x646573756170;
    }

    if (a2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE600000000000000;
    }

    if (v4 != v6)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0x80000001D1EB5A20;
    if (v4 != 0xD000000000000014)
    {
      goto LABEL_31;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0x80000001D1EB5A40;
    if (v4 != 0xD000000000000015)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    if (v4 != 1702259052)
    {
LABEL_31:
      v7 = sub_1D1E6904C();
      goto LABEL_32;
    }
  }

  if (v3 != v5)
  {
    goto LABEL_31;
  }

  v7 = 1;
LABEL_32:

  return v7 & 1;
}

uint64_t sub_1D179F7D4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7172208;
  if (a1 != 6)
  {
    v5 = 0x6172676F7263696DLL;
    v4 = 0xEE00335E6D2F736DLL;
  }

  v6 = 0xE700000000000000;
  v7 = 0x73646E6F636573;
  if (a1 != 4)
  {
    v7 = 7894380;
    v6 = 0xE300000000000000;
  }

  if (a1 <= 5u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0x61746E6563726570;
  if (a1 == 2)
  {
    v9 = 0xEA00000000006567;
  }

  else
  {
    v8 = 0x6572676564637261;
    v9 = 0xEA00000000007365;
  }

  v10 = 0x65686E6572686166;
  if (a1)
  {
    v3 = 0xEA00000000007469;
  }

  else
  {
    v10 = 0x737569736C6563;
  }

  if (a1 > 1u)
  {
    v3 = v9;
  }

  else
  {
    v8 = v10;
  }

  if (a1 <= 3u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 3)
  {
    v12 = v3;
  }

  else
  {
    v12 = v4;
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xE300000000000000;
        if (v11 != 7172208)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v13 = 0xEE00335E6D2F736DLL;
        if (v11 != 0x6172676F7263696DLL)
        {
LABEL_46:
          v14 = sub_1D1E6904C();
          goto LABEL_47;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x73646E6F636573)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = 0xE300000000000000;
      if (v11 != 7894380)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xEA00000000006567;
      if (v11 != 0x61746E6563726570)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v13 = 0xEA00000000007365;
      if (v11 != 0x6572676564637261)
      {
        goto LABEL_46;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEA00000000007469;
    if (v11 != 0x65686E6572686166)
    {
      goto LABEL_46;
    }
  }

  else
  {
    v13 = 0xE700000000000000;
    if (v11 != 0x737569736C6563)
    {
      goto LABEL_46;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_46;
  }

  v14 = 1;
LABEL_47:

  return v14 & 1;
}

uint64_t sub_1D179FA5C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000064;
  v3 = 0x726F737365636361;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x72616F6268736164;
    }

    else
    {
      v5 = 1836019570;
    }

    if (v4 == 2)
    {
      v6 = 0xE900000000000064;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x79726F6765746163;
    }

    else
    {
      v5 = 0x726F737365636361;
    }

    if (v4)
    {
      v6 = 0xE800000000000000;
    }

    else
    {
      v6 = 0xE900000000000079;
    }
  }

  v7 = 0xE900000000000079;
  v8 = 0x72616F6268736164;
  if (a2 != 2)
  {
    v8 = 1836019570;
    v2 = 0xE400000000000000;
  }

  if (a2)
  {
    v3 = 0x79726F6765746163;
    v7 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v7;
  }

  else
  {
    v10 = v2;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D1E6904C();
  }

  return v11 & 1;
}

uint64_t sub_1D179FB90(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x736172656D6163;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x6C6F72746E6F63;
    }

    else
    {
      v4 = 0x736172656D6163;
    }

    v3 = 0xE700000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0x657469726F766166;
    v3 = 0xE900000000000073;
  }

  else if (a1 == 3)
  {
    v3 = 0xE600000000000000;
    v4 = 0x73656E656373;
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0x73676E6974746573;
  }

  if (a2 <= 1u)
  {
    v5 = 0xE700000000000000;
    v6 = 0xE700000000000000;
    v7 = 0x6C6F72746E6F63;
    v8 = a2 == 0;
  }

  else
  {
    v2 = 0x657469726F766166;
    v5 = 0xE900000000000073;
    v6 = 0xE600000000000000;
    v7 = 0x73656E656373;
    if (a2 != 3)
    {
      v7 = 0x73676E6974746573;
      v6 = 0xE800000000000000;
    }

    v8 = a2 == 2;
  }

  if (v8)
  {
    v9 = v2;
  }

  else
  {
    v9 = v7;
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v6;
  }

  if (v4 == v9 && v3 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D1E6904C();
  }

  return v11 & 1;
}

uint64_t sub_1D179FD0C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 4u)
  {
    v11 = 0xE400000000000000;
    v12 = 0x3631746E6975;
    v13 = 0x3233746E6975;
    if (a1 != 3)
    {
      v13 = 0x3436746E6975;
    }

    if (a1 != 2)
    {
      v12 = v13;
    }

    v14 = 0x38746E6975;
    if (a1)
    {
      v11 = 0xE500000000000000;
    }

    else
    {
      v14 = 1819242338;
    }

    if (a1 <= 1u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v2 <= 1)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xE600000000000000;
    }
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x676E69727473;
    v5 = 947285108;
    if (a1 != 9)
    {
      v5 = 1635017060;
    }

    if (a1 != 8)
    {
      v4 = v5;
      v3 = 0xE400000000000000;
    }

    v6 = 0xE300000000000000;
    v7 = 7630441;
    v8 = 0x3233746E69;
    if (a1 != 6)
    {
      v8 = 0x74616F6C66;
    }

    if (a1 != 5)
    {
      v7 = v8;
      v6 = 0xE500000000000000;
    }

    if (a1 <= 7u)
    {
      v9 = v7;
    }

    else
    {
      v9 = v4;
    }

    if (v2 <= 7)
    {
      v10 = v6;
    }

    else
    {
      v10 = v3;
    }
  }

  if (a2 <= 4u)
  {
    if (a2 <= 1u)
    {
      if (a2)
      {
        v15 = 0xE500000000000000;
        if (v9 != 0x38746E6975)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v15 = 0xE400000000000000;
        if (v9 != 1819242338)
        {
          goto LABEL_62;
        }
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      if (a2 == 2)
      {
        if (v9 != 0x3631746E6975)
        {
          goto LABEL_62;
        }
      }

      else if (a2 == 3)
      {
        if (v9 != 0x3233746E6975)
        {
          goto LABEL_62;
        }
      }

      else if (v9 != 0x3436746E6975)
      {
        goto LABEL_62;
      }
    }
  }

  else if (a2 > 7u)
  {
    if (a2 == 8)
    {
      v15 = 0xE600000000000000;
      if (v9 != 0x676E69727473)
      {
        goto LABEL_62;
      }
    }

    else
    {
      v15 = 0xE400000000000000;
      if (a2 == 9)
      {
        if (v9 != 947285108)
        {
          goto LABEL_62;
        }
      }

      else if (v9 != 1635017060)
      {
LABEL_62:
        v16 = sub_1D1E6904C();
        goto LABEL_63;
      }
    }
  }

  else if (a2 == 5)
  {
    v15 = 0xE300000000000000;
    if (v9 != 7630441)
    {
      goto LABEL_62;
    }
  }

  else
  {
    v15 = 0xE500000000000000;
    if (a2 == 6)
    {
      if (v9 != 0x3233746E69)
      {
        goto LABEL_62;
      }
    }

    else if (v9 != 0x74616F6C66)
    {
      goto LABEL_62;
    }
  }

  if (v10 != v15)
  {
    goto LABEL_62;
  }

  v16 = 1;
LABEL_63:

  return v16 & 1;
}

uint64_t sub_1D179FFDC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xE300000000000000;
  v5 = 7894380;
  if (a1 != 5)
  {
    v5 = 0x7373656C74696E75;
    v4 = 0xE800000000000000;
  }

  v6 = 0x6572676564637261;
  v7 = 0xEA00000000007365;
  if (a1 != 3)
  {
    v6 = 0x73646E6F636573;
    v7 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v5 = v6;
    v4 = v7;
  }

  v8 = 0x65686E6572686166;
  v9 = 0xEA00000000007469;
  if (a1 != 1)
  {
    v8 = 0x61746E6563726570;
    v9 = 0xEA00000000006567;
  }

  if (a1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0x737569736C6563;
  }

  if (a1 <= 2u)
  {
    v10 = v8;
  }

  else
  {
    v10 = v5;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v4;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xEA00000000007469;
        if (v10 != 0x65686E6572686166)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xEA00000000006567;
        if (v10 != 0x61746E6563726570)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x737569736C6563)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0xE300000000000000;
      if (v10 != 7894380)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x7373656C74696E75)
      {
LABEL_39:
        v13 = sub_1D1E6904C();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xEA00000000007365;
    if (v10 != 0x6572676564637261)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x73646E6F636573)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_1D17A021C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB00000000656D61;
  v3 = 0x4E79616C70736944;
  v4 = a1;
  if (a1 > 4u)
  {
    v13 = 0x746169636F737341;
    v14 = 0xEE00657079546465;
    v15 = 0x496564756C636E49;
    v16 = 0xEF7375746174536ELL;
    if (a1 != 8)
    {
      v15 = 0x6564644165746144;
      v16 = 0xE900000000000064;
    }

    if (a1 != 7)
    {
      v13 = v15;
      v14 = v16;
    }

    v17 = 0xD000000000000017;
    v18 = 0x80000001D1EB8390;
    if (a1 != 5)
    {
      v17 = 0x657A6953656C6954;
      v18 = 0xE800000000000000;
    }

    if (a1 <= 6u)
    {
      v11 = v17;
    }

    else
    {
      v11 = v13;
    }

    if (v4 <= 6)
    {
      v12 = v18;
    }

    else
    {
      v12 = v14;
    }
  }

  else
  {
    v5 = 0x6E6564496E6F6349;
    v6 = 0xEE00726569666974;
    v7 = 0xE800000000000000;
    v8 = 0x657469726F766146;
    if (a1 != 3)
    {
      v8 = 0x61446E4F776F6853;
      v7 = 0xEF6472616F626873;
    }

    if (a1 != 2)
    {
      v5 = v8;
      v6 = v7;
    }

    v9 = 0xE600000000000000;
    v10 = 0x44496D6F6F52;
    if (!a1)
    {
      v10 = 0x4E79616C70736944;
      v9 = 0xEB00000000656D61;
    }

    if (a1 <= 1u)
    {
      v11 = v10;
    }

    else
    {
      v11 = v5;
    }

    if (v4 <= 1)
    {
      v12 = v9;
    }

    else
    {
      v12 = v6;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v2 = 0x80000001D1EB8390;
        if (v11 != 0xD000000000000017)
        {
          goto LABEL_54;
        }
      }

      else
      {
        v2 = 0xE800000000000000;
        if (v11 != 0x657A6953656C6954)
        {
          goto LABEL_54;
        }
      }

      goto LABEL_51;
    }

    if (a2 == 7)
    {
      v19 = 0x746169636F737341;
      v20 = 0x657079546465;
      goto LABEL_45;
    }

    if (a2 == 8)
    {
      v2 = 0xEF7375746174536ELL;
      if (v11 != 0x496564756C636E49)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    v3 = 0x6564644165746144;
    v2 = 0xE900000000000064;
  }

  else
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        if (a2 == 3)
        {
          v2 = 0xE800000000000000;
          if (v11 != 0x657469726F766146)
          {
            goto LABEL_54;
          }
        }

        else
        {
          v2 = 0xEF6472616F626873;
          if (v11 != 0x61446E4F776F6853)
          {
            goto LABEL_54;
          }
        }

        goto LABEL_51;
      }

      v19 = 0x6E6564496E6F6349;
      v20 = 0x726569666974;
LABEL_45:
      v2 = v20 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
      if (v11 != v19)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }

    if (a2)
    {
      v2 = 0xE600000000000000;
      if (v11 != 0x44496D6F6F52)
      {
        goto LABEL_54;
      }

      goto LABEL_51;
    }
  }

  if (v11 != v3)
  {
LABEL_54:
    v21 = sub_1D1E6904C();
    goto LABEL_55;
  }

LABEL_51:
  if (v12 != v2)
  {
    goto LABEL_54;
  }

  v21 = 1;
LABEL_55:

  return v21 & 1;
}

uint64_t sub_1D17A0574(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xE900000000000065;
  v3 = 0x6C62616C69617661;
  v4 = a1;
  v5 = 0x646C6F436F6F74;
  v6 = 0xE600000000000000;
  if (a1 == 5)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v5 = 0x746F486F6F74;
  }

  v7 = 0xD000000000000012;
  v8 = 0x80000001D1EB5AA0;
  if (a1 != 3)
  {
    v7 = 0x6341746365746564;
    v8 = 0xEE00797469766974;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6863616552746F6ELL;
  v10 = 0xEC000000656C6261;
  if (a1 != 1)
  {
    v9 = 2037609826;
    v10 = 0xE400000000000000;
  }

  if (!a1)
  {
    v9 = 0x6C62616C69617661;
    v10 = 0xE900000000000065;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0xEC000000656C6261;
        if (v11 != 0x6863616552746F6ELL)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE400000000000000;
        if (v11 != 2037609826)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE700000000000000;
        if (v11 != 0x646C6F436F6F74)
        {
          goto LABEL_37;
        }
      }

      else
      {
        v2 = 0xE600000000000000;
        if (v11 != 0x746F486F6F74)
        {
          goto LABEL_37;
        }
      }

      goto LABEL_34;
    }

    if (a2 == 3)
    {
      v2 = 0x80000001D1EB5AA0;
      if (v11 != 0xD000000000000012)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v3 = 0x6341746365746564;
    v2 = 0xEE00797469766974;
  }

  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_1D1E6904C();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_1D17A07A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = "dentifierValveSideJets";
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = "47-BAC7-A7CF9EBD35EA";
    }

    else
    {
      v3 = "dentifierValveSideJets";
    }
  }

  else if (a1 == 2)
  {
    v3 = "F6-8E38-5291C7FB7545";
  }

  else if (a1 == 3)
  {
    v3 = "AC-A277-EA6D097A190C";
  }

  else
  {
    v3 = "4C-B87C-C35305FA9FFC";
  }

  v4 = "F6-8E38-5291C7FB7545";
  v5 = "AC-A277-EA6D097A190C";
  if (a2 != 3)
  {
    v5 = "4C-B87C-C35305FA9FFC";
  }

  if (a2 != 2)
  {
    v4 = v5;
  }

  if (a2)
  {
    v2 = "47-BAC7-A7CF9EBD35EA";
  }

  if (a2 > 1u)
  {
    v2 = v4;
  }

  if ((v3 | 0x8000000000000000) == (v2 | 0x8000000000000000))
  {
    v6 = 1;
  }

  else
  {
    v6 = sub_1D1E6904C();
  }

  return v6 & 1;
}

uint64_t StaticTrigger.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticTrigger.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticTrigger(0) + 20));

  return v1;
}

uint64_t type metadata accessor for StaticTrigger(uint64_t a1)
{
  result = qword_1EC643C38;
  if (!qword_1EC643C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticTrigger.events.getter()
{
  type metadata accessor for StaticTrigger(0);
}

uint64_t StaticTrigger.actions.getter()
{
  type metadata accessor for StaticTrigger(0);
}

uint64_t StaticTrigger.activatedScenes.getter()
{
  type metadata accessor for StaticTrigger(0);
}

int *StaticTrigger.init(id:name:enabled:events:actions:activatedScenes:executesOnce:deletesAfterExecution:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, char a10)
{
  v19 = sub_1D1E66A7C();
  (*(*(v19 - 8) + 32))(a9, a1, v19);
  result = type metadata accessor for StaticTrigger(0);
  v21 = (a9 + result[5]);
  *v21 = a2;
  v21[1] = a3;
  *(a9 + result[7]) = a5;
  *(a9 + result[8]) = a6;
  *(a9 + result[9]) = a7;
  *(a9 + result[10]) = a8;
  *(a9 + result[6]) = a4;
  *(a9 + result[11]) = a10;
  return result;
}

uint64_t StaticTrigger.hash(into:)(__int128 *a1)
{
  sub_1D1E66A7C();
  sub_1D17A6A50(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for StaticTrigger(0);
  sub_1D1E678EC();
  sub_1D1E6922C();
  sub_1D176E808(a1, *(v1 + v3[7]));
  sub_1D176E61C(a1, *(v1 + v3[8]));
  sub_1D176D4E8(a1, *(v1 + v3[9]));
  sub_1D1E6922C();
  return sub_1D1E6922C();
}

uint64_t StaticTrigger.hashValue.getter()
{
  sub_1D1E6920C();
  StaticTrigger.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17A0CC8()
{
  sub_1D1E6920C();
  StaticTrigger.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D17A0D0C(uint64_t a1)
{
  sub_1D1E6920C();
  StaticTrigger.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t _s13HomeDataModel12EndpointPathV6homeID10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

int *StaticTrigger.init(trigger:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v157 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C18, &qword_1D1E731C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v162 = &v155 - v4;
  v5 = type metadata accessor for Action(0);
  v164 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v169 = &v155 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v156 = &v155 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v155 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v158 = (&v155 - v14);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v155 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v163 = &v155 - v18;
  v19 = sub_1D1E66A7C();
  v20 = *(v19 - 8);
  v178 = v19;
  v179 = v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v160 = &v155 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v155 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C20, &qword_1D1E731C8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v155 - v26;
  v177 = type metadata accessor for Event(0);
  v166 = *(v177 - 1);
  v28 = MEMORY[0x1EEE9AC00](v177);
  v176 = &v155 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v165 = &v155 - v30;
  v181 = a1;
  v31 = [a1 events];
  sub_1D1741B10(0, &unk_1EC643B70, 0x1E696CB78);
  v32 = sub_1D1E67C1C();

  if (v32 >> 62)
  {
    goto LABEL_71;
  }

  v34 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v159 = v12;
  v170 = v5;
  v168 = v17;
  v182 = v24;
  if (v34)
  {
    v35 = 0;
    v183 = 0;
    v174 = (v32 & 0xFFFFFFFFFFFFFF8);
    v175 = (v32 & 0xC000000000000001);
    v171 = v166 + 48;
    *&v172 = v166 + 56;
    v17 = MEMORY[0x1E69E7CC0];
    *&v33 = 138412546;
    v161 = v33;
    v167 = v32;
    v173 = v34;
    while (1)
    {
      if (v175)
      {
        v37 = MEMORY[0x1D3891EF0](v35, v32);
        v38 = (v35 + 1);
        if (__OFADD__(v35, 1))
        {
          goto LABEL_67;
        }
      }

      else
      {
        if (v35 >= *(v174 + 2))
        {
          goto LABEL_68;
        }

        v37 = *(v32 + 8 * v35 + 32);
        v38 = (v35 + 1);
        if (__OFADD__(v35, 1))
        {
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          v34 = sub_1D1E6873C();
          goto LABEL_3;
        }
      }

      v39 = v37;
      v40 = v181;
      v12 = v183;
      Event.init(event:in:)(v39, v40, v27);
      if (v12)
      {
        v180 = v17;
        if (qword_1EC642130 != -1)
        {
          swift_once();
        }

        v41 = sub_1D1E6709C();
        __swift_project_value_buffer(v41, qword_1EC643BF8);
        v42 = v39;
        v43 = v12;
        v5 = sub_1D1E6707C();
        v44 = sub_1D1E6833C();

        if (os_log_type_enabled(v5, v44))
        {
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          *v45 = v161;
          v47 = v12;
          v48 = _swift_stdlib_bridgeErrorToNSError();
          *(v45 + 4) = v48;
          *(v45 + 12) = 2112;
          *(v45 + 14) = v42;
          *v46 = v48;
          v46[1] = v42;
          v49 = v42;
          _os_log_impl(&dword_1D16EC000, v5, v44, "Error: (%@) processing event: %@", v45, 0x16u);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v46, -1, -1);
          MEMORY[0x1D3893640](v45, -1, -1);
        }

        else
        {
        }

        v50 = 1;
        v17 = v180;
        v32 = v167;
      }

      else
      {
        v50 = 0;
      }

      v51 = v177;
      (*v172)(v27, v50, 1, v177);

      v52 = (*v171)(v27, 1, v51);
      v183 = 0;
      if (v52 == 1)
      {
        sub_1D1741A30(v27, &qword_1EC643C20, &qword_1D1E731C8);
        v24 = v182;
        v36 = v173;
      }

      else
      {
        v53 = v165;
        sub_1D17A6D4C(v27, v165, type metadata accessor for Event);
        sub_1D17A6D4C(v53, v176, type metadata accessor for Event);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v24 = v182;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v17 = sub_1D177D38C(0, *(v17 + 2) + 1, 1, v17);
        }

        v36 = v173;
        v56 = *(v17 + 2);
        v55 = *(v17 + 3);
        v5 = v56 + 1;
        if (v56 >= v55 >> 1)
        {
          v17 = sub_1D177D38C((v55 > 1), v56 + 1, 1, v17);
        }

        *(v17 + 2) = v5;
        sub_1D17A6D4C(v176, &v17[((v166[80] + 32) & ~v166[80]) + *(v166 + 9) * v56], type metadata accessor for Event);
      }

      ++v35;
      if (v38 == v36)
      {
        goto LABEL_28;
      }
    }
  }

  v183 = 0;
  v17 = MEMORY[0x1E69E7CC0];
LABEL_28:

  v166 = v181;
  v5 = [v166 actionSets];
  v167 = sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v27 = sub_1D1E67C1C();

  v184 = MEMORY[0x1E69E7CC0];
  if (v27 >> 62)
  {
    v32 = sub_1D1E6873C();
  }

  else
  {
    v32 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v180 = v17;
  v57 = MEMORY[0x1E69E7CC0];
  if (v32)
  {
    v58 = 0;
    v181 = (v27 & 0xC000000000000001);
    v12 = (v27 & 0xFFFFFFFFFFFFFF8);
    v17 = "HMActionSetTypeUserDefined";
    v176 = "5291";
    v177 = "HMActionSetTypeHomeArrival";
    v174 = 0xD000000000000015;
    v175 = "HMActionSetTypeHomeDeparture";
    v173 = "HMActionSetTypeWakeUp";
    v171 = "HMActionSetTypeTriggerOwned";
    *&v172 = "HMActionSetTypeSleep";
    while (1)
    {
      if (v181)
      {
        v59 = MEMORY[0x1D3891EF0](v58, v27);
      }

      else
      {
        if (v58 >= *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_70;
        }

        v59 = *(v27 + 8 * v58 + 32);
      }

      v60 = v59;
      v61 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_69;
      }

      v62 = [v59 actionSetType];
      sub_1D1E6781C();

      v5 = sub_1D1E68C2C();

      if (v5 <= 2)
      {
        if (!v5)
        {
          v24 = v182;
LABEL_50:
          v5 = sub_1D1E6904C();

          if (v5)
          {

            goto LABEL_33;
          }

          goto LABEL_32;
        }

        v24 = v182;
        if (v5 == 1 || v5 == 2)
        {
          goto LABEL_50;
        }
      }

      else
      {
        v24 = v182;
        if (v5 <= 4)
        {
          goto LABEL_50;
        }

        if (v5 == 5)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_33;
        }

        if (v5 == 6)
        {
          goto LABEL_50;
        }
      }

LABEL_32:
      v5 = &v184;
      sub_1D1E6896C();
      sub_1D1E689AC();
      sub_1D1E689BC();
      sub_1D1E6897C();
LABEL_33:
      ++v58;
      if (v61 == v32)
      {
        v63 = v184;
        v57 = MEMORY[0x1E69E7CC0];
        goto LABEL_55;
      }
    }
  }

  v63 = MEMORY[0x1E69E7CC0];
LABEL_55:

  if ((v63 & 0x8000000000000000) == 0 && (v63 & 0x4000000000000000) == 0)
  {
    v64 = *(v63 + 16);
    if (v64)
    {
      goto LABEL_58;
    }

LABEL_74:

    v182 = MEMORY[0x1E69E7CC0];
LABEL_75:
    v74 = [v166 actionSets];
    v75 = sub_1D1E67C1C();

    v184 = v57;
    v76 = v168;
    v77 = 0xD00000000000001ALL;
    v78 = "HMActionSetTypeSleep";
    v79 = "HMActionSetTypeUserDefined";
    v80 = "HMActionSetTypeShortcutsComponent";
    if (v75 >> 62)
    {
      goto LABEL_120;
    }

    v81 = *((v75 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_77:
    v82 = MEMORY[0x1E69E7CC0];
    if (v81)
    {
      v76 = 0;
      v181 = (v75 & 0xC000000000000001);
      v177 = (v75 & 0xFFFFFFFFFFFFFF8);
      v175 = "5291";
      v176 = "HMActionSetTypeHomeArrival";
      v173 = (v77 - 5);
      v174 = "HMActionSetTypeHomeDeparture";
      v171 = v79 - 32;
      *&v172 = v78 - 32;
      v167 = (v80 - 32);
      while (1)
      {
        if (v181)
        {
          v83 = MEMORY[0x1D3891EF0](v76, v75);
        }

        else
        {
          if (v76 >= *(v177 + 2))
          {
            goto LABEL_117;
          }

          v83 = *(v75 + 8 * v76 + 32);
        }

        v79 = v83;
        v78 = (v76 + 1);
        if (__OFADD__(v76, 1))
        {
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          v81 = sub_1D1E6873C();
          goto LABEL_77;
        }

        v84 = [v83 actionSetType];
        v80 = sub_1D1E6781C();

        v77 = sub_1D1E68C2C();

        if (v77 <= 2)
        {
          if (v77)
          {
            if (v77 == 1)
            {
              v80 = v176;
            }

            else
            {
              if (v77 != 2)
              {
                goto LABEL_79;
              }

              v80 = v174;
            }
          }

          else
          {
            v80 = v175;
          }

          goto LABEL_100;
        }

        if (v77 <= 4)
        {
          break;
        }

        if (v77 == 5)
        {
          swift_bridgeObjectRelease_n();
LABEL_101:
          v77 = &v184;
          sub_1D1E6896C();
          v80 = *(v184 + 16);
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
          goto LABEL_80;
        }

        if (v77 == 6)
        {
          v80 = v167;
          goto LABEL_100;
        }

LABEL_79:

LABEL_80:
        ++v76;
        if (v78 == v81)
        {
          v85 = v184;
          v76 = v168;
          goto LABEL_105;
        }
      }

      if (v77 == 3)
      {
        v80 = v172;
      }

      else
      {
        v80 = v171;
      }

LABEL_100:
      v77 = sub_1D1E6904C();

      if (v77)
      {
        goto LABEL_101;
      }

      goto LABEL_79;
    }

    v85 = MEMORY[0x1E69E7CC0];
LABEL_105:

    v184 = v82;
    if (v85 < 0 || (v85 & 0x4000000000000000) != 0)
    {
      v75 = sub_1D1E6873C();
      if (v75)
      {
LABEL_108:
        v76 = 0;
        v79 = 0x1E696CAE8;
        while (1)
        {
          if ((v85 & 0xC000000000000001) != 0)
          {
            v86 = MEMORY[0x1D3891EF0](v76, v85);
          }

          else
          {
            if (v76 >= *(v85 + 16))
            {
              goto LABEL_119;
            }

            v86 = *(v85 + 8 * v76 + 32);
          }

          v77 = v86;
          v78 = (v76 + 1);
          if (__OFADD__(v76, 1))
          {
            goto LABEL_118;
          }

          v80 = [v86 actions];
          sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
          sub_1D179E328();
          v87 = sub_1D1E6816C();

          v77 = &v184;
          sub_1D17A3970(v87);
          ++v76;
          if (v78 == v75)
          {
            v88 = v184;
            v76 = v168;
            goto LABEL_123;
          }
        }
      }
    }

    else
    {
      v75 = *(v85 + 16);
      if (v75)
      {
        goto LABEL_108;
      }
    }

    v88 = MEMORY[0x1E69E7CC0];
LABEL_123:

    if (v88 >> 62)
    {
      goto LABEL_170;
    }

    v90 = *((v88 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_125:
    v91 = v162;
    if (v90)
    {
      v92 = 0;
      v176 = (v88 & 0xFFFFFFFFFFFFFF8);
      v177 = (v88 & 0xC000000000000001);
      v174 = (v164 + 48);
      v175 = (v164 + 56);
      v93 = MEMORY[0x1E69E7CC0];
      *&v89 = 138412546;
      v172 = v89;
      v173 = v90;
      while (1)
      {
        if (v177)
        {
          v94 = MEMORY[0x1D3891EF0](v92, v88);
        }

        else
        {
          if (v92 >= *(v176 + 2))
          {
            goto LABEL_169;
          }

          v94 = *(v88 + 8 * v92 + 32);
        }

        v95 = v94;
        if (__OFADD__(v92, 1))
        {
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          v90 = sub_1D1E6873C();
          goto LABEL_125;
        }

        v181 = (v92 + 1);
        objc_opt_self();
        v96 = swift_dynamicCastObjCClass();
        if (v96)
        {
          v97 = v96;
          v98 = v95;
          v99 = v183;
          Action.CharacteristicAction.init(action:)(v97, v76);
          v183 = v99;
          if (v99)
          {
            goto LABEL_144;
          }

          v100 = v170;
          swift_storeEnumTagMultiPayload();
          v101 = v76;
        }

        else
        {
          objc_opt_self();
          v102 = swift_dynamicCastObjCClass();
          if (v102)
          {
            v103 = v102;
            v104 = v95;
            v105 = v183;
            Action.MediaPlaybackAction.init(action:)(v103, &v184);
            v183 = v105;
            if (v105)
            {
              goto LABEL_144;
            }

            v106 = v185;
            v107 = v186;
            v108 = v187;
            v109 = v188;
            v110 = v158;
            *v158 = v184;
            *(v110 + 8) = v106;
            *(v110 + 16) = v107;
            *(v110 + 24) = v108;
            *(v110 + 32) = v109;
            v100 = v170;
          }

          else
          {
            objc_opt_self();
            v111 = swift_dynamicCastObjCClass();
            if (v111)
            {
              v112 = v111;
              v113 = v95;
              v110 = v159;
              v114 = v183;
              Action.NaturalLightAction.init(action:)(v112, v159);
              v183 = v114;
              if (v114)
              {
                goto LABEL_144;
              }

              v100 = v170;
            }

            else
            {
              objc_opt_self();
              v115 = swift_dynamicCastObjCClass();
              if (!v115)
              {
                sub_1D17718F0();
                v119 = swift_allocError();
                swift_willThrow();
                goto LABEL_145;
              }

              v116 = v115;
              v117 = v95;
              v118 = v183;
              Action.MatterCommandAction.init(action:)(v116, &v184);
              v183 = v118;
              if (v118)
              {
LABEL_144:
                v119 = v183;
LABEL_145:
                v183 = 0;
                if (qword_1EC642130 != -1)
                {
                  swift_once();
                }

                v120 = sub_1D1E6709C();
                __swift_project_value_buffer(v120, qword_1EC643BF8);
                v121 = v95;
                v122 = v119;
                v123 = sub_1D1E6707C();
                v124 = sub_1D1E6833C();

                if (os_log_type_enabled(v123, v124))
                {
                  v125 = swift_slowAlloc();
                  v126 = v88;
                  v127 = v93;
                  v128 = swift_slowAlloc();
                  *v125 = v172;
                  v129 = v119;
                  v130 = _swift_stdlib_bridgeErrorToNSError();
                  *(v125 + 4) = v130;
                  *(v125 + 12) = 2112;
                  *(v125 + 14) = v121;
                  *v128 = v130;
                  v128[1] = v121;
                  v131 = v121;
                  _os_log_impl(&dword_1D16EC000, v123, v124, "Error: (%@) processing event: %@", v125, 0x16u);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
                  swift_arrayDestroy();
                  v132 = v128;
                  v93 = v127;
                  v88 = v126;
                  MEMORY[0x1D3893640](v132, -1, -1);
                  v133 = v125;
                  v91 = v162;
                  MEMORY[0x1D3893640](v133, -1, -1);
                }

                else
                {
                }

                v134 = 1;
                v100 = v170;
                v76 = v168;
                v90 = v173;
                goto LABEL_155;
              }

              v135 = v185;
              v110 = v156;
              *v156 = v184;
              *(v110 + 8) = v135;
              v100 = v170;
            }
          }

          swift_storeEnumTagMultiPayload();
          v101 = v110;
        }

        sub_1D17A6D4C(v101, v91, type metadata accessor for Action);
        v134 = 0;
LABEL_155:
        (*v175)(v91, v134, 1, v100);

        if ((*v174)(v91, 1, v100) == 1)
        {
          sub_1D1741A30(v91, &qword_1EC643C18, &qword_1D1E731C0);
        }

        else
        {
          v136 = v163;
          sub_1D17A6D4C(v91, v163, type metadata accessor for Action);
          sub_1D17A6D4C(v136, v169, type metadata accessor for Action);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v93 = sub_1D177D364(0, v93[2] + 1, 1, v93);
          }

          v138 = v93[2];
          v137 = v93[3];
          if (v138 >= v137 >> 1)
          {
            v93 = sub_1D177D364((v137 > 1), v138 + 1, 1, v93);
          }

          v93[2] = v138 + 1;
          sub_1D17A6D4C(v169, v93 + ((*(v164 + 80) + 32) & ~*(v164 + 80)) + *(v164 + 72) * v138, type metadata accessor for Action);
        }

        ++v92;
        if (v181 == v90)
        {
          goto LABEL_163;
        }
      }
    }

    v93 = MEMORY[0x1E69E7CC0];
LABEL_163:

    v139 = v166;
    v140 = [v166 uniqueIdentifier];
    sub_1D1E66A5C();

    v141 = [v139 name];
    v142 = sub_1D1E6781C();
    v144 = v143;

    v145 = [v139 isEnabled];
    v146 = sub_1D1784B74(v180);

    v147 = sub_1D1784D00(v93);

    v148 = sub_1D17841EC(v182);

    v149 = [v139 executeOnce];
    v150 = [v139 policy];

    if (v150)
    {
      objc_opt_self();
      v151 = swift_dynamicCastObjCClass();
      if (v151)
      {
LABEL_167:
        v152 = v151 != 0;

        v153 = v157;
        (*(v179 + 32))(v157, v160, v178);
        result = type metadata accessor for StaticTrigger(0);
        v154 = (v153 + result[5]);
        *v154 = v142;
        v154[1] = v144;
        *(v153 + result[7]) = v146;
        *(v153 + result[8]) = v147;
        *(v153 + result[9]) = v148;
        *(v153 + result[10]) = v149;
        *(v153 + result[6]) = v145;
        *(v153 + result[11]) = v152;
        return result;
      }
    }

    v151 = 0;
    goto LABEL_167;
  }

  v64 = sub_1D1E6873C();
  if (!v64)
  {
    goto LABEL_74;
  }

LABEL_58:
  v184 = v57;
  result = sub_1D178CEFC(0, v64 & ~(v64 >> 63), 0);
  if ((v64 & 0x8000000000000000) == 0)
  {
    v66 = 0;
    v182 = v184;
    do
    {
      if ((v63 & 0xC000000000000001) != 0)
      {
        v67 = MEMORY[0x1D3891EF0](v66, v63);
      }

      else
      {
        v67 = *(v63 + 8 * v66 + 32);
      }

      v68 = v67;
      v69 = [v68 uniqueIdentifier];
      sub_1D1E66A5C();

      v70 = v182;
      v184 = v182;
      v72 = *(v182 + 2);
      v71 = *(v182 + 3);
      if (v72 >= v71 >> 1)
      {
        sub_1D178CEFC((v71 > 1), v72 + 1, 1);
        v70 = v184;
      }

      ++v66;
      *(v70 + 16) = v72 + 1;
      v73 = (*(v179 + 80) + 32) & ~*(v179 + 80);
      v182 = v70;
      (*(v179 + 32))(v70 + v73 + *(v179 + 72) * v72, v24, v178);
    }

    while (v64 != v66);

    v57 = MEMORY[0x1E69E7CC0];
    goto LABEL_75;
  }

  __break(1u);
  return result;
}

uint64_t StaticTrigger.trigger.getter()
{
  v1[2] = v0;
  v2 = sub_1D1E66A7C();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v1[6] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v3 = swift_task_alloc();
  v1[11] = v3;
  *v3 = v1;
  v3[1] = sub_1D17A266C;

  return sub_1D1E359E0();
}

uint64_t sub_1D17A266C(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17A276C, 0, 0);
}

uint64_t sub_1D17A276C()
{
  v1 = v0[12];
  if (v1 && (v2 = v0[2], v3 = v1, v4 = [v3 triggers], sub_1D1741B10(0, &qword_1EC643C28, 0x1E696CC90), v5 = sub_1D1E67C1C(), v4, v6 = swift_task_alloc(), *(v6 + 16) = v2, v7 = sub_1D174A6C4(sub_1D17A6E7C, v6, v5), , v3, , v7))
  {

    v8 = v0[1];

    return v8(v7);
  }

  else
  {
    v0[13] = 0;
    v10 = swift_task_alloc();
    v0[14] = v10;
    *v10 = v0;
    v10[1] = sub_1D17A293C;

    return sub_1D1E369EC();
  }
}

uint64_t sub_1D17A293C(uint64_t a1)
{
  *(*v1 + 120) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D17A2A3C, 0, 0);
}

uint64_t sub_1D17A2A3C()
{
  v1 = v0[15];
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v47 = v1;
  if (v1 >> 62)
  {
    goto LABEL_35;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v43 = v0[12];
  if (v2)
  {
    v3 = 0;
    v4 = v0[4];
    v50 = (v4 + 56);
    v45 = (v4 + 48);
    v46 = v0[6];
    v38 = (v4 + 32);
    v42 = (v4 + 8);
    v5 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v44 = v2;
    while (1)
    {
      if ((v47 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3891EF0](v3, v47);
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (v3 >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_34;
        }

        v6 = *(v47 + 8 * v3 + 32);
        v7 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v2 = sub_1D1E6873C();
          goto LABEL_5;
        }
      }

      v48 = v7;
      v8 = v0[12];
      v9 = v0[10];
      v10 = v0[3];
      v49 = v6;
      v11 = [v6 v5[61]];
      sub_1D1E66A5C();

      v12 = *v50;
      v13 = 1;
      (*v50)(v9, 0, 1, v10);
      if (v8)
      {
        v14 = [v43 v5[61]];
        sub_1D1E66A5C();

        v13 = 0;
      }

      v16 = v0[9];
      v15 = v0[10];
      v17 = v0[7];
      v18 = v0[3];
      v12(v16, v13, 1, v18);
      v19 = *(v46 + 48);
      sub_1D1741C08(v15, v17, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v16, v17 + v19, &qword_1EC642590, qword_1D1E71260);
      v20 = *v45;
      v21 = (*v45)(v17, 1, v18);
      v22 = v0[3];
      if (v21 == 1)
      {
        v23 = v0[10];
        sub_1D1741A30(v0[9], &qword_1EC642590, qword_1D1E71260);
        sub_1D1741A30(v23, &qword_1EC642590, qword_1D1E71260);
        v5 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        if (v20(v17 + v19, 1, v22) != 1)
        {
          goto LABEL_23;
        }

        sub_1D1741A30(v0[7], &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        sub_1D1741C08(v0[7], v0[8], &qword_1EC642590, qword_1D1E71260);
        v24 = v20(v17 + v19, 1, v22);
        v25 = v0[9];
        v26 = v0[10];
        v27 = v0[8];
        if (v24 == 1)
        {
          v28 = v0[3];
          sub_1D1741A30(v0[9], &qword_1EC642590, qword_1D1E71260);
          sub_1D1741A30(v26, &qword_1EC642590, qword_1D1E71260);
          (*v42)(v27, v28);
          v5 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
LABEL_23:
          sub_1D1741A30(v0[7], &qword_1EC642980, &unk_1D1E6E6E0);
LABEL_24:
          v29 = v0[2];
          v30 = [v49 triggers];
          sub_1D1741B10(0, &qword_1EC643C28, 0x1E696CC90);
          v31 = sub_1D1E67C1C();

          v32 = swift_task_alloc();
          *(v32 + 16) = v29;
          v2 = sub_1D174A6C4(sub_1D17A6A30, v32, v31);

          if (v2)
          {
            break;
          }

          goto LABEL_9;
        }

        v40 = v0[10];
        v41 = v0[7];
        v33 = v0[5];
        v34 = v0[3];
        (*v38)(v33, v17 + v19, v34);
        sub_1D17A6A50(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v39 = sub_1D1E6775C();
        v35 = *v42;
        (*v42)(v33, v34);
        sub_1D1741A30(v25, &qword_1EC642590, qword_1D1E71260);
        sub_1D1741A30(v40, &qword_1EC642590, qword_1D1E71260);
        v35(v27, v34);
        sub_1D1741A30(v41, &qword_1EC642590, qword_1D1E71260);
        v5 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        if ((v39 & 1) == 0)
        {
          goto LABEL_24;
        }
      }

LABEL_9:
      ++v3;
      if (v48 == v44)
      {

        v2 = 0;
        goto LABEL_30;
      }
    }
  }

LABEL_30:

  v36 = v0[1];

  return v36(v2);
}

HMTrigger_optional __swiftcall StaticTrigger.trigger(in:)(HMHome in)
{
  v2 = [(objc_class *)in.super.isa triggers];
  sub_1D1741B10(0, &qword_1EC643C28, 0x1E696CC90);
  v3 = sub_1D1E67C1C();

  v8 = v1;
  v4 = sub_1D174A6C4(sub_1D17A6E7C, &v7, v3);

  v6 = v4;
  result.value.super.isa = v6;
  result.is_nil = v5;
  return result;
}

uint64_t sub_1D17A3070(id *a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_1D17A317C(void *a1)
{
  v66 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v4 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C58, &unk_1D1E995D0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v51 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v15 = a1[2];
  v16 = *v2;
  v17 = *(*v2 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = v16[3] >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_1D177D084(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = v16[3] >> 1;
  }

  v22 = v16[2];
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1D18049D8(&v67, v16 + v18 + v17 * v22, v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v25 = v16[2];
    v26 = __OFADD__(v25, result);
    v27 = v25 + result;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v16[2] = v27;
  }

  if (result != v23)
  {
    result = sub_1D1716918(v67);
LABEL_14:
    *v2 = v16;
    return result;
  }

LABEL_17:
  v62 = v16[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_1D17A6E14(*(v55 + 48) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v14, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v33 = v66;
    v57 = *(v1 + 56);
    v57(v14, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_1D1741C08(v14, v63, &qword_1EC643C58, &unk_1D1E995D0);
      v35 = *(v1 + 48);
      v1 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_1D1741A30(v34, &qword_1EC643C58, &unk_1D1E995D0);
        v39 = v16[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v16 = sub_1D177D084((v39 > 1), v36 + 1, 1, v16);
          v40 = v16[3] >> 1;
        }

        v41 = v65;
        sub_1D1741C08(v14, v65, &qword_1EC643C58, &unk_1D1E995D0);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_1D1741A30(v43, &qword_1EC643C58, &unk_1D1E995D0);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v16[2] = v37;
        v34 = v63;
        sub_1D1741C08(v14, v63, &qword_1EC643C58, &unk_1D1E995D0);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v16 + v18;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_1D17A6D4C(v43, v64, type metadata accessor for StaticAccessory.DeviceIdentifier);
        if (v62 == v59)
        {
          sub_1D17A6DB4(v47, type metadata accessor for StaticAccessory.DeviceIdentifier);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_1D1741A30(v14, &qword_1EC643C58, &unk_1D1E995D0);
        sub_1D17A6D4C(v47, &v58[v4 * v17], type metadata accessor for StaticAccessory.DeviceIdentifier);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_1D17A6E14(*(v55 + 48) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v14, type metadata accessor for StaticAccessory.DeviceIdentifier);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v14, v45, 1, v66);
        v43 = v65;
        sub_1D1741C08(v14, v65, &qword_1EC643C58, &unk_1D1E995D0);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v1 + 56);
      v57(v14, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_1D1741A30(v14, &qword_1EC643C58, &unk_1D1E995D0);
    sub_1D1716918(v55);
    result = sub_1D1741A30(v34, &qword_1EC643C58, &unk_1D1E995D0);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D17A386C(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1D177D340(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D17A3970(uint64_t a1)
{
  v7 = v1;
  v8 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v9 = sub_1D1E6873C();
  }

  else
  {
    v9 = *(a1 + 16);
  }

  if (!(*v1 >> 62))
  {
    v10 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11 = __OFADD__(v10, v9);
    result = v10 + v9;
    if (!v11)
    {
      goto LABEL_6;
    }

LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v17 = sub_1D1E6873C();
  v11 = __OFADD__(v17, v9);
  result = v17 + v9;
  if (v11)
  {
    goto LABEL_14;
  }

LABEL_6:
  sub_1D1CC7774();
  v2 = *v1;
  v3 = *v1 & 0xFFFFFFFFFFFFFF8;
  v13 = *(v3 + 0x10);
  v14 = ((*(v3 + 0x18) >> 1) - v13);
  result = sub_1D1804AD8(&v34, (v3 + 8 * v13 + 32), v14, v8);
  if (result < v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (result >= 1)
  {
    v15 = *(v3 + 16);
    v11 = __OFADD__(v15, result);
    v16 = v15 + result;
    if (v11)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v3 + 16) = v16;
  }

  if (result != v14)
  {
LABEL_11:
    result = sub_1D1716918(v34);
    *v7 = v2;
    return result;
  }

LABEL_16:
  v4 = *(v3 + 16);
  v3 = v34;
  v5 = v35;
  v8 = v37;
  v31 = v36;
  v6 = v38;
  if (v34 < 0)
  {
LABEL_20:
    if (!sub_1D1E6877C())
    {
      goto LABEL_11;
    }

    sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
    result = swift_dynamicCast();
    v19 = v33;
    goto LABEL_31;
  }

  if (!v38)
  {
    v20 = (v36 + 64) >> 6;
    if (v20 <= v37 + 1)
    {
      v21 = v37 + 1;
    }

    else
    {
      v21 = (v36 + 64) >> 6;
    }

    v22 = v21 - 1;
    while (1)
    {
      v18 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        goto LABEL_59;
      }

      if (v18 >= v20)
      {
        v19 = 0;
        v6 = 0;
        goto LABEL_30;
      }

      v6 = *(v35 + 8 * v18);
      ++v8;
      if (v6)
      {
        goto LABEL_29;
      }
    }
  }

  v18 = v37;
LABEL_29:
  v23 = __clz(__rbit64(v6));
  v6 &= v6 - 1;
  v19 = *(*(v34 + 48) + ((v18 << 9) | (8 * v23)));
  result = v19;
  v22 = v18;
LABEL_30:
  v37 = v22;
  v38 = v6;
  v8 = v22;
LABEL_31:
  if (!v19)
  {
    goto LABEL_11;
  }

  v24 = (v31 + 64) >> 6;
LABEL_33:
  if (v4 + 1 > *((v2 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    result = sub_1D1E67C5C();
  }

  v2 = *v7;
  v25 = *((*v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1;
  v30 = *v7 & 0xFFFFFFFFFFFFFF8;
  if (v4 > v25)
  {
    v25 = v4;
  }

  v32 = v25;
  while (1)
  {
    while (1)
    {
      if (v4 == v32)
      {
        v4 = v32;
        *(v30 + 16) = v32;
        goto LABEL_33;
      }

      *(v30 + 32 + 8 * v4++) = v19;
      if ((v3 & 0x8000000000000000) == 0)
      {
        break;
      }

      if (sub_1D1E6877C())
      {
        sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
        result = swift_dynamicCast();
        v19 = v33;
        if (v33)
        {
          continue;
        }
      }

      goto LABEL_56;
    }

    if (!v6)
    {
      break;
    }

    v26 = v8;
LABEL_54:
    v29 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v19 = *(*(v3 + 48) + ((v26 << 9) | (8 * v29)));
    result = v19;
    v28 = v26;
LABEL_39:
    v34 = v3;
    v35 = v5;
    v36 = v31;
    v37 = v28;
    v8 = v28;
    v38 = v6;
    if (!v19)
    {
LABEL_56:
      *(v30 + 16) = v4;
      goto LABEL_11;
    }
  }

  if (v24 <= v8 + 1)
  {
    v27 = v8 + 1;
  }

  else
  {
    v27 = (v31 + 64) >> 6;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v19 = 0;
      v6 = 0;
      goto LABEL_39;
    }

    v6 = *(v5 + 8 * v26);
    ++v8;
    if (v6)
    {
      goto LABEL_54;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1D17A3D7C(uint64_t a1)
{
  v2 = v1;
  v44 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v4 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v6 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643870, &qword_1D1E72028);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v43 = (&v39 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = *(*v2 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v18 = v15[3] >> 1, v18 < v16))
  {
    v15 = sub_1D177DC54(isUniquelyReferenced_nonNull_native, v16, 1, v15);
    v18 = v15[3] >> 1;
  }

  v19 = v15[2];
  v20 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v21 = *(v4 + 72);
  v22 = (v18 - v19);
  v23 = *(a1 + 16);
  v57[0] = *a1;
  v57[1] = v23;
  v58 = *(a1 + 32);
  v24 = v57;
  v25 = sub_1D1804B74(&v51, (v15 + v20 + v21 * v19), v18 - v19);
  if ((v25 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v25)
  {
    v26 = v15[2];
    v27 = __OFADD__(v26, v25);
    v28 = v25 + v26;
    if (v27)
    {
      __break(1u);
      goto LABEL_18;
    }

    v15[2] = v28;
  }

  if (v25 == v22)
  {
LABEL_12:
    v42 = v15[2];
    sub_1D17A6588(v14);
    v24 = v43;
    sub_1D1741C08(v14, v43, &qword_1EC643870, &qword_1D1E72028);
    v41 = *(v4 + 48);
    if (v41(v24, 1, v44) == 1)
    {
LABEL_13:
      sub_1D1741A30(v14, &qword_1EC643870, &qword_1D1E72028);
      v47 = v53;
      v48 = v54;
      v49 = v55;
      v50 = v56;
      v45 = v51;
      v46 = v52;
      sub_1D1741A30(&v45, &qword_1EC643C60, &qword_1D1E732D0);
      v31 = v24;
      v29 = &qword_1EC643870;
      v30 = &qword_1D1E72028;
      goto LABEL_10;
    }

    do
    {
LABEL_18:
      sub_1D1741A30(v24, &qword_1EC643870, &qword_1D1E72028);
      v35 = v15[3];
      v36 = v35 >> 1;
      if ((v35 >> 1) < v42 + 1)
      {
        v15 = sub_1D177DC54((v35 > 1), v42 + 1, 1, v15);
        v36 = v15[3] >> 1;
      }

      sub_1D1741C08(v14, v10, &qword_1EC643870, &qword_1D1E72028);
      if (v41(v10, 1, v44) == 1)
      {
        v33 = v42;
LABEL_28:
        sub_1D1741A30(v10, &qword_1EC643870, &qword_1D1E72028);
      }

      else
      {
        if (v42 <= v36)
        {
          v37 = v36;
        }

        else
        {
          v37 = v42;
        }

        v40 = v37;
        v33 = v42;
        v38 = v15 + v20 + v21 * v42;
        while (1)
        {
          sub_1D17A6D4C(v10, v6, type metadata accessor for StaticServiceCharacteristicDoublet);
          if (v40 == v33)
          {
            break;
          }

          sub_1D1741A30(v14, &qword_1EC643870, &qword_1D1E72028);
          sub_1D17A6D4C(v6, v38, type metadata accessor for StaticServiceCharacteristicDoublet);
          v42 = v33 + 1;
          sub_1D17A6588(v14);
          v33 = v42;
          sub_1D1741C08(v14, v10, &qword_1EC643870, &qword_1D1E72028);
          v38 += v21;
          if (v41(v10, 1, v44) == 1)
          {
            goto LABEL_28;
          }
        }

        sub_1D17A6DB4(v6, type metadata accessor for StaticServiceCharacteristicDoublet);
        v33 = v40;
      }

      v42 = v33;
      v15[2] = v33;
      v34 = v43;
      sub_1D1741C08(v14, v43, &qword_1EC643870, &qword_1D1E72028);
      v24 = v34;
    }

    while (v41(v34, 1, v44) != 1);
    goto LABEL_13;
  }

  v47 = v53;
  v48 = v54;
  v49 = v55;
  v50 = v56;
  v45 = v51;
  v46 = v52;
  v29 = &qword_1EC643C60;
  v30 = &qword_1D1E732D0;
  v31 = &v45;
LABEL_10:
  result = sub_1D1741A30(v31, v29, v30);
  *v2 = v15;
  return result;
}

char *sub_1D17A4328(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1D177DD60(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[2 * v7 + 32], v6 + 32, 2 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D17A4414(int64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_1D177DD60(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = *(v3 + 2);
  v11 = (v8 - v10);
  result = sub_1D1805708(v39, &v3[2 * v10 + 32], v8 - v10, v6);
  if (result < v2)
  {
    goto LABEL_17;
  }

  if (result)
  {
    v16 = *(v3 + 2);
    v17 = __OFADD__(v16, result);
    v18 = result + v16;
    if (v17)
    {
      __break(1u);
LABEL_21:
      v21 = (v14 + 64) >> 6;
      v22 = v15;
      do
      {
        v23 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          goto LABEL_44;
        }

        if (v23 >= v21)
        {
          goto LABEL_14;
        }

        v24 = *(v13 + 8 * v23);
        ++v22;
      }

      while (!v24);
      v19 = (v24 - 1) & v24;
      v20 = __clz(__rbit64(v24)) | (v23 << 6);
      v15 = v23;
      goto LABEL_26;
    }

    *(v3 + 2) = v18;
  }

  if (result != v11)
  {
    result = v39[0];
LABEL_14:
    result = sub_1D1716918(result);
LABEL_15:
    *v1 = v3;
    return result;
  }

LABEL_18:
  v6 = *(v3 + 2);
  result = v39[0];
  v13 = v39[1];
  v14 = v40;
  v15 = v41;
  if (!v42)
  {
    goto LABEL_21;
  }

  v19 = (v42 - 1) & v42;
  v20 = __clz(__rbit64(v42)) | (v41 << 6);
  v21 = (v40 + 64) >> 6;
LABEL_26:
  v25 = *(result[6] + 2 * v20);
  while (1)
  {
    v26 = *(v3 + 3);
    v27 = v26 >> 1;
    if ((v26 >> 1) < v6 + 1)
    {
      break;
    }

    if (v6 < v27)
    {
      goto LABEL_34;
    }

LABEL_29:
    *(v3 + 2) = v6;
  }

  v37 = v19;
  v38 = result;
  v36 = v13;
  v31 = v14;
  v32 = v15;
  v33 = v3;
  v34 = v25;
  v35 = sub_1D177DD60((v26 > 1), v6 + 1, 1, v33);
  v25 = v34;
  v13 = v36;
  v19 = v37;
  v15 = v32;
  v14 = v31;
  v3 = v35;
  result = v38;
  v27 = *(v3 + 3) >> 1;
  if (v6 >= v27)
  {
    goto LABEL_29;
  }

LABEL_34:
  while (1)
  {
    *&v3[2 * v6++ + 32] = v25;
    if (!v19)
    {
      break;
    }

LABEL_33:
    v28 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v25 = *(result[6] + ((v15 << 7) | (2 * v28)));
    if (v6 == v27)
    {
      v6 = v27;
      goto LABEL_29;
    }
  }

  v29 = v15;
  while (1)
  {
    v30 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v30 >= v21)
    {
      result = sub_1D1716918(result);
      *(v3 + 2) = v6;
      goto LABEL_15;
    }

    v19 = *(v13 + 8 * v30);
    ++v29;
    if (v19)
    {
      v15 = v30;
      goto LABEL_33;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

char *sub_1D17A4684(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1D177E09C(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[12 * v7 + 32], v6 + 32, 12 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D17A4778(int64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native || (v8 = *(v3 + 3) >> 1, v8 < v5))
  {
    if (v4 <= v5)
    {
      v9 = v4 + v2;
    }

    else
    {
      v9 = v4;
    }

    v3 = sub_1D177E1AC(isUniquelyReferenced_nonNull_native, v9, 1, v3);
    v8 = *(v3 + 3) >> 1;
  }

  v10 = v8 - *(v3 + 2);
  result = sub_1D18085B0();
  if (result < v2)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v15 = *(v3 + 2);
    v16 = __OFADD__(v15, result);
    v17 = v15 + result;
    if (v16)
    {
      __break(1u);
LABEL_20:
      while (1)
      {
        v19 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_44;
        }

        if (v19 >= ((v13 + 64) >> 6))
        {
          goto LABEL_14;
        }

        v18 = *(v12 + 8 * v19);
        ++v14;
        if (v18)
        {
          goto LABEL_23;
        }
      }
    }

    *(v3 + 2) = v17;
  }

  if (result != v10)
  {
    result = v38;
LABEL_14:
    result = sub_1D1716918(result);
    *v1 = v3;
    return result;
  }

LABEL_17:
  v6 = *(v3 + 2);
  result = v38;
  v12 = v39;
  v13 = v40;
  v14 = v41;
  v18 = v42;
  if (!v42)
  {
    goto LABEL_20;
  }

  v19 = v41;
LABEL_23:
  v20 = (v18 - 1) & v18;
  v21 = *(*(result + 48) + (__clz(__rbit64(v18)) | (v19 << 6)));
  if (v21 == 28)
  {
    goto LABEL_14;
  }

  v22 = (v13 + 64) >> 6;
  v23 = v19;
  while (1)
  {
    v24 = *(v3 + 3);
    v25 = v24 >> 1;
    if ((v24 >> 1) < v6 + 1)
    {
      v36 = v21;
      v37 = result;
      v35 = v12;
      v30 = v13;
      v31 = v23;
      v32 = v3;
      v33 = v20;
      v34 = sub_1D177E1AC((v24 > 1), v6 + 1, 1, v32);
      v21 = v36;
      v20 = v33;
      v23 = v31;
      v13 = v30;
      v12 = v35;
      v3 = v34;
      result = v37;
      v25 = *(v3 + 3) >> 1;
    }

    if (v6 < v25)
    {
      break;
    }

LABEL_25:
    *(v3 + 2) = v6;
    if (v21 == 28)
    {
      goto LABEL_14;
    }
  }

  while (1)
  {
    v3[v6++ + 32] = v21;
    if (!v20)
    {
      break;
    }

    v26 = v23;
LABEL_36:
    v28 = __clz(__rbit64(v20));
    v20 &= v20 - 1;
    v21 = *(*(result + 48) + (v28 | (v26 << 6)));
    if (v21 == 28 || v6 >= v25)
    {
      goto LABEL_25;
    }
  }

  v27 = v23;
  while (1)
  {
    v26 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v26 >= v22)
    {
      *(v3 + 2) = v6;
      goto LABEL_14;
    }

    v20 = *(v12 + 8 * v26);
    ++v27;
    if (v20)
    {
      v23 = v26;
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
  return result;
}

char *sub_1D17A4A08(char *result)
{
  v2 = *(result + 2);
  v3 = *v1;
  v4 = *(*v1 + 2);
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
  if (result && v5 <= *(v3 + 3) >> 1)
  {
    if (*(v6 + 2))
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

  result = sub_1D177EB70(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 2))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 2);
  if ((*(v3 + 3) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&v3[8 * v7 + 32], v6 + 32, 8 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D17A4AF4(uint64_t result)
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

  result = sub_1D177EC90(result, v11, 1, v3);
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

  memcpy((v3 + 2 * v7 + 32), (v6 + 32), 2 * v2);

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

uint64_t sub_1D17A4C0C(unint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t, void, uint64_t))
{
  if (a1 >> 62)
  {
    v7 = sub_1D1E6873C();
  }

  else
  {
    v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v3 >> 62))
  {
    v8 = *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v9 = __OFADD__(v8, v7);
    result = v8 + v7;
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v17 = sub_1D1E6873C();
  v9 = __OFADD__(v17, v7);
  result = v17 + v7;
  if (v9)
  {
    goto LABEL_13;
  }

LABEL_5:
  a2();
  v11 = *v3;
  v12 = *v3 & 0xFFFFFFFFFFFFFF8;
  a3(v12 + 8 * *(v12 + 0x10) + 32, (*(v12 + 0x18) >> 1) - *(v12 + 0x10), a1);
  v14 = v13;

  if (v14 < v7)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v14 < 1)
  {
LABEL_9:
    *v3 = v11;
    return result;
  }

  v15 = *(v12 + 16);
  v9 = __OFADD__(v15, v14);
  v16 = v15 + v14;
  if (!v9)
  {
    *(v12 + 16) = v16;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D17A4D0C(void *a1)
{
  v66 = type metadata accessor for StaticLightProfile(0);
  v4 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v51 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v15 = a1[2];
  v16 = *v2;
  v17 = *(*v2 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = v16[3] >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_1D177F274(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = v16[3] >> 1;
  }

  v22 = v16[2];
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1D1805B74(&v67, v16 + v18 + v17 * v22, v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v25 = v16[2];
    v26 = __OFADD__(v25, result);
    v27 = v25 + result;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v16[2] = v27;
  }

  if (result != v23)
  {
    result = sub_1D1716918(v67);
LABEL_14:
    *v2 = v16;
    return result;
  }

LABEL_17:
  v62 = v16[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_1D17A6E14(*(v55 + 56) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v14, type metadata accessor for StaticLightProfile);
    v33 = v66;
    v57 = *(v1 + 56);
    v57(v14, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_1D1741C08(v14, v63, &qword_1EC6430E8, &unk_1D1E71440);
      v35 = *(v1 + 48);
      v1 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_1D1741A30(v34, &qword_1EC6430E8, &unk_1D1E71440);
        v39 = v16[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v16 = sub_1D177F274((v39 > 1), v36 + 1, 1, v16);
          v40 = v16[3] >> 1;
        }

        v41 = v65;
        sub_1D1741C08(v14, v65, &qword_1EC6430E8, &unk_1D1E71440);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_1D1741A30(v43, &qword_1EC6430E8, &unk_1D1E71440);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v16[2] = v37;
        v34 = v63;
        sub_1D1741C08(v14, v63, &qword_1EC6430E8, &unk_1D1E71440);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v16 + v18;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_1D17A6D4C(v43, v64, type metadata accessor for StaticLightProfile);
        if (v62 == v59)
        {
          sub_1D17A6DB4(v47, type metadata accessor for StaticLightProfile);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_1D1741A30(v14, &qword_1EC6430E8, &unk_1D1E71440);
        sub_1D17A6D4C(v47, &v58[v4 * v17], type metadata accessor for StaticLightProfile);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_1D17A6E14(*(v55 + 56) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v14, type metadata accessor for StaticLightProfile);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v14, v45, 1, v66);
        v43 = v65;
        sub_1D1741C08(v14, v65, &qword_1EC6430E8, &unk_1D1E71440);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v1 + 56);
      v57(v14, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_1D1741A30(v14, &qword_1EC6430E8, &unk_1D1E71440);
    sub_1D1716918(v55);
    result = sub_1D1741A30(v34, &qword_1EC6430E8, &unk_1D1E71440);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D17A53D0(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1D177F2B8(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1D17A5504(void *result)
{
  v2 = result[2];
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
  if (result && v5 <= v3[3] >> 1)
  {
    if (v6[2])
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

  result = sub_1D177F724(result, v10, 1, v3);
  v3 = result;
  if (!v6[2])
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((v3[3] >> 1) - v3[2] < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643270, &qword_1D1E716C8);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = v3[2];
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    v3[2] = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1D17A5608(uint64_t a1)
{
  v77 = sub_1D1E66A7C();
  v4 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v78 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v59 - v9;
  result = MEMORY[0x1EEE9AC00](v8);
  v14 = &v59 - v13;
  v15 = *(a1 + 16);
  v16 = *v1;
  v17 = *(*v1 + 2);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v76 = v12;
  v2 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v75 = v10;
  if (!isUniquelyReferenced_nonNull_native || (v20 = *(v16 + 3) >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_1D177D0AC(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = *(v16 + 3) >> 1;
  }

  v22 = *(v16 + 2);
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1D1805CB0(&v79, &v16[v18 + v17 * v22], v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v26 = *(v16 + 2);
    v27 = __OFADD__(v26, result);
    v28 = v26 + result;
    if (v27)
    {
      __break(1u);
      goto LABEL_20;
    }

    *(v16 + 2) = v28;
  }

  if (result != v23)
  {
    result = sub_1D1716918(v79);
LABEL_14:
    *v1 = v16;
    return result;
  }

LABEL_17:
  v74 = *(v16 + 2);
  v25 = v80;
  v65 = v79;
  v28 = v82;
  v24 = &v84;
  v60 = v81;
  v29 = v83;
  v63 = v80;
  if (v83)
  {
    v30 = v82;
LABEL_27:
    v72 = (v29 - 1) & v29;
    v34 = v77;
    (*(v2 + 16))(v14, *(v65 + 48) + (__clz(__rbit64(v29)) | (v30 << 6)) * v17, v77);
    v67 = *(v2 + 56);
    v67(v14, 0, 1, v34);
    v33 = v30;
    while (1)
    {
      v35 = v75;
      sub_1D1741C08(v14, v75, &qword_1EC642590, qword_1D1E71260);
      v36 = *(v2 + 48);
      v2 += 48;
      v71 = v36;
      if (v36(v35, 1, v34) == 1)
      {
        break;
      }

      v38 = (v4 + 32);
      v62 = (v60 + 64) >> 6;
      v66 = v4 + 56;
      v64 = (v4 + 16);
      v61 = (v4 + 8);
      v37 = v75;
      v73 = v38;
      while (1)
      {
        sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
        v39 = *(v16 + 3);
        v40 = v39 >> 1;
        if ((v39 >> 1) < v74 + 1)
        {
          v16 = sub_1D177D0AC((v39 > 1), v74 + 1, 1, v16);
          v40 = *(v16 + 3) >> 1;
        }

        v41 = v76;
        sub_1D1741C08(v14, v76, &qword_1EC642590, qword_1D1E71260);
        if (v71(v41, 1, v77) != 1)
        {
          break;
        }

        v42 = v33;
        v43 = v76;
        v4 = v74;
LABEL_38:
        v33 = v42;
        sub_1D1741A30(v43, &qword_1EC642590, qword_1D1E71260);
        v74 = v4;
LABEL_33:
        *(v16 + 2) = v4;
        v37 = v75;
        sub_1D1741C08(v14, v75, &qword_1EC642590, qword_1D1E71260);
        if (v71(v37, 1, v77) == 1)
        {
          goto LABEL_30;
        }
      }

      v69 = &v16[v18];
      v4 = v74;
      v44 = *v73;
      if (v74 <= v40)
      {
        v45 = v40;
      }

      else
      {
        v45 = v74;
      }

      v70 = v45;
      v43 = v76;
      v46 = v77;
      v47 = v78;
      v68 = v44;
      while (1)
      {
        v51 = v47;
        v52 = v43;
        v53 = v46;
        v54 = v44;
        v44(v51, v52, v46);
        if (v4 == v70)
        {
          (*v61)(v78, v53);
          v4 = v70;
          v74 = v70;
          goto LABEL_33;
        }

        sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
        v74 = v4;
        v54(&v69[v4 * v17], v78, v53);
        v55 = v72;
        if (!v72)
        {
          break;
        }

        v56 = v33;
LABEL_55:
        v72 = (v55 - 1) & v55;
        v49 = v77;
        (*v64)(v14, *(v65 + 48) + (__clz(__rbit64(v55)) | (v56 << 6)) * v17, v77);
        v48 = 0;
        v58 = v56;
LABEL_44:
        v4 = v74 + 1;
        v67(v14, v48, 1, v49);
        v43 = v76;
        sub_1D1741C08(v14, v76, &qword_1EC642590, qword_1D1E71260);
        v50 = v71(v43, 1, v49);
        v46 = v49;
        v33 = v58;
        v42 = v58;
        v47 = v78;
        v44 = v68;
        if (v50 == 1)
        {
          goto LABEL_38;
        }
      }

      if (v62 <= v33 + 1)
      {
        v57 = v33 + 1;
      }

      else
      {
        v57 = v62;
      }

      v58 = v57 - 1;
      while (1)
      {
        v56 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v56 >= v62)
        {
          v72 = 0;
          v48 = 1;
          v49 = v77;
          goto LABEL_44;
        }

        v55 = *(v63 + 8 * v56);
        ++v33;
        if (v55)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_57:
      v34 = v77;
      v67 = *(v2 + 56);
      v67(v14, 1, 1, v77);
      v72 = 0;
    }

    v37 = v75;
LABEL_30:
    sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
    sub_1D1716918(v65);
    result = sub_1D1741A30(v37, &qword_1EC642590, qword_1D1E71260);
    goto LABEL_14;
  }

LABEL_20:
  v31 = (*(v24 - 32) + 64) >> 6;
  if (v31 <= v28 + 1)
  {
    v32 = v28 + 1;
  }

  else
  {
    v32 = v31;
  }

  v33 = v32 - 1;
  while (1)
  {
    v30 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v30 >= v31)
    {
      goto LABEL_57;
    }

    v29 = *(v25 + 8 * v30);
    ++v28;
    if (v29)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A5D28(void *a1)
{
  v66 = type metadata accessor for StaticService(0);
  v4 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v51 - v11;
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v51 - v13;
  v15 = a1[2];
  v16 = *v2;
  v17 = *(*v2 + 16);
  v18 = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v65 = v9;
  if (!isUniquelyReferenced_nonNull_native || (v20 = v16[3] >> 1, v20 < v18))
  {
    if (v17 <= v18)
    {
      v21 = v17 + v15;
    }

    else
    {
      v21 = v17;
    }

    v16 = sub_1D177D048(isUniquelyReferenced_nonNull_native, v21, 1, v16);
    v20 = v16[3] >> 1;
  }

  v22 = v16[2];
  v18 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v17 = *(v4 + 72);
  v23 = v20 - v22;
  result = sub_1D1804A58(&v67, v16 + v18 + v17 * v22, v20 - v22, a1);
  if (result < v15)
  {
    goto LABEL_16;
  }

  if (result)
  {
    v25 = v16[2];
    v26 = __OFADD__(v25, result);
    v27 = v25 + result;
    if (v26)
    {
      __break(1u);
      goto LABEL_20;
    }

    v16[2] = v27;
  }

  if (result != v23)
  {
    result = sub_1D1716918(v67);
LABEL_14:
    *v2 = v16;
    return result;
  }

LABEL_17:
  v62 = v16[2];
  v24 = v68;
  v54 = v68;
  v55 = v67;
  v27 = v70;
  v52 = v69;
  v28 = v71;
  if (v71)
  {
    v29 = v70;
LABEL_27:
    v61 = (v28 - 1) & v28;
    sub_1D17A6E14(*(v55 + 56) + (__clz(__rbit64(v28)) | (v29 << 6)) * v17, v14, type metadata accessor for StaticService);
    v33 = v66;
    v57 = *(v1 + 56);
    v57(v14, 0, 1, v66);
    v32 = v29;
    while (1)
    {
      v34 = v63;
      sub_1D1741C08(v14, v63, &qword_1EC6436F0, &qword_1D1E99BC0);
      v35 = *(v1 + 48);
      v1 += 48;
      v60 = v35;
      if (v35(v34, 1, v33) == 1)
      {
        break;
      }

      v53 = (v52 + 64) >> 6;
      v56 = v4 + 56;
      v36 = v62;
      while (1)
      {
        sub_1D1741A30(v34, &qword_1EC6436F0, &qword_1D1E99BC0);
        v39 = v16[3];
        v40 = v39 >> 1;
        v62 = v36;
        if ((v39 >> 1) < v36 + 1)
        {
          v16 = sub_1D177D048((v39 > 1), v36 + 1, 1, v16);
          v40 = v16[3] >> 1;
        }

        v41 = v65;
        sub_1D1741C08(v14, v65, &qword_1EC6436F0, &qword_1D1E99BC0);
        if (v60(v41, 1, v66) != 1)
        {
          break;
        }

        v42 = v32;
        v43 = v65;
LABEL_37:
        sub_1D1741A30(v43, &qword_1EC6436F0, &qword_1D1E99BC0);
        v37 = v62;
        v32 = v42;
LABEL_32:
        v16[2] = v37;
        v34 = v63;
        sub_1D1741C08(v14, v63, &qword_1EC6436F0, &qword_1D1E99BC0);
        v38 = v60(v34, 1, v66);
        v36 = v62;
        if (v38 == 1)
        {
          goto LABEL_29;
        }
      }

      v58 = v16 + v18;
      v44 = v62;
      if (v62 <= v40)
      {
        v44 = v40;
      }

      v59 = v44;
      v43 = v65;
      while (1)
      {
        v47 = v64;
        sub_1D17A6D4C(v43, v64, type metadata accessor for StaticService);
        if (v62 == v59)
        {
          sub_1D17A6DB4(v47, type metadata accessor for StaticService);
          v37 = v59;
          v62 = v59;
          goto LABEL_32;
        }

        v4 = v62;
        sub_1D1741A30(v14, &qword_1EC6436F0, &qword_1D1E99BC0);
        sub_1D17A6D4C(v47, &v58[v4 * v17], type metadata accessor for StaticService);
        v48 = v61;
        if (!v61)
        {
          break;
        }

        v49 = v32;
LABEL_53:
        v61 = (v48 - 1) & v48;
        sub_1D17A6E14(*(v55 + 56) + (__clz(__rbit64(v48)) | (v49 << 6)) * v17, v14, type metadata accessor for StaticService);
        v45 = 0;
        v42 = v49;
LABEL_42:
        v62 = v4 + 1;
        v46 = v66;
        v57(v14, v45, 1, v66);
        v43 = v65;
        sub_1D1741C08(v14, v65, &qword_1EC6436F0, &qword_1D1E99BC0);
        v32 = v42;
        if (v60(v43, 1, v46) == 1)
        {
          goto LABEL_37;
        }
      }

      if (v53 <= (v32 + 1))
      {
        v50 = v32 + 1;
      }

      else
      {
        v50 = v53;
      }

      v42 = v50 - 1;
      while (1)
      {
        v49 = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          break;
        }

        if (v49 >= v53)
        {
          v61 = 0;
          v45 = 1;
          goto LABEL_42;
        }

        v48 = *(v54 + 8 * v49);
        ++v32;
        if (v48)
        {
          goto LABEL_53;
        }
      }

      __break(1u);
LABEL_55:
      v33 = v66;
      v57 = *(v1 + 56);
      v57(v14, 1, 1, v66);
      v61 = 0;
    }

LABEL_29:
    sub_1D1741A30(v14, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1716918(v55);
    result = sub_1D1741A30(v34, &qword_1EC6436F0, &qword_1D1E99BC0);
    goto LABEL_14;
  }

LABEL_20:
  v30 = (v52 + 64) >> 6;
  if (v30 <= v27 + 1)
  {
    v31 = v27 + 1;
  }

  else
  {
    v31 = (v52 + 64) >> 6;
  }

  v32 = v31 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v30)
    {
      goto LABEL_55;
    }

    v28 = *(v24 + 8 * v29);
    ++v27;
    if (v28)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A6444(uint64_t result, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v4 = *(result + 16);
  v5 = *v3;
  v6 = *(*v3 + 16);
  if (__OFADD__(v6, v4))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v9 = result;
  if (swift_isUniquelyReferenced_nonNull_native() && v6 + v4 <= *(v5 + 24) >> 1)
  {
    if (*(v9 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  v5 = a2();
  if (!*(v9 + 16))
  {
LABEL_10:

    if (!v4)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  v10 = (*(v5 + 24) >> 1) - *(v5 + 16);
  result = a3(0);
  if (v10 < v4)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  swift_arrayInitWithCopy();

  if (!v4)
  {
LABEL_11:
    *v3 = v5;
    return result;
  }

  v11 = *(v5 + 16);
  v12 = __OFADD__(v11, v4);
  v13 = v11 + v4;
  if (!v12)
  {
    *(v5 + 16) = v13;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1D17A6588@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v26 = a1;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v3 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v5 = &v25 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643870, &qword_1D1E72028);
  result = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v25 - v14;
  v16 = v1[9];
  v17 = (v3 + 48);
  if (v16)
  {
LABEL_2:
    v18 = *(v16 + 16);
    v19 = v2[10];
    if (v19 == v18)
    {
      v20 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
      (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
      sub_1D1741A30(v15, &qword_1EC643870, &qword_1D1E72028);
      goto LABEL_4;
    }

    if (v19 >= v18)
    {
      __break(1u);
    }

    else
    {
      v23 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
      v24 = *(v23 - 8);
      sub_1D17A6E14(v16 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v19, v15, type metadata accessor for StaticServiceCharacteristicDoublet);
      v2[10] = v19 + 1;
      (*(v24 + 56))(v15, 0, 1, v23);
      return sub_1D1741A90(v15, v26, &qword_1EC643870, &qword_1D1E72028);
    }
  }

  else
  {
LABEL_4:
    while (1)
    {
      sub_1D1B434F0(v11);
      v21 = v2[7];
      sub_1D1741A90(v11, v9, &qword_1EC643C68, &unk_1D1E764C0);
      if ((*v17)(v9, 1, v27) == 1)
      {
        break;
      }

      sub_1D1741A90(v9, v5, &qword_1EC642DB0, &unk_1D1E6F360);
      v21(&v28, v5);
      sub_1D1741A30(v5, &qword_1EC642DB0, &unk_1D1E6F360);
      v16 = v28;

      v2[9] = v16;
      v2[10] = 0;
      if (v16)
      {
        goto LABEL_2;
      }
    }

    v22 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
    return (*(*(v22 - 8) + 56))(v26, 1, 1, v22);
  }

  return result;
}

uint64_t _s13HomeDataModel13StaticTriggerV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && ((v4 = type metadata accessor for StaticTrigger(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_1D1E6904C()) && *(a1 + v4[6]) == *(a2 + v4[6]) && (sub_1D17A9294(*(a1 + v4[7]), *(a2 + v4[7])) & 1) != 0 && (sub_1D17AA3B4(*(a1 + v4[8]), *(a2 + v4[8])) & 1) != 0 && (sub_1D17A6E98(*(a1 + v4[9]), *(a2 + v4[9])) & 1) != 0 && *(a1 + v4[10]) == *(a2 + v4[10])))
  {
    v10 = *(a1 + v4[11]) ^ *(a2 + v4[11]) ^ 1;
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D17A6A50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D17A6B50(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D17A6C24(319);
    if (v2 <= 0x3F)
    {
      sub_1D17A6CB8(319);
      if (v3 <= 0x3F)
      {
        sub_1D1791340(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D17A6C24(uint64_t a1)
{
  if (!qword_1EC643C48)
  {
    type metadata accessor for Event(255);
    sub_1D17A6A50(&qword_1EC643578, type metadata accessor for Event, &protocol conformance descriptor for Event);
    v1 = sub_1D1E681FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC643C48);
    }
  }
}

void sub_1D17A6CB8(uint64_t a1)
{
  if (!qword_1EC643C50)
  {
    type metadata accessor for Action(255);
    sub_1D17A6A50(&qword_1EC643570, type metadata accessor for Action, &protocol conformance descriptor for Action);
    v1 = sub_1D1E681FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC643C50);
    }
  }
}

uint64_t sub_1D17A6D4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17A6DB4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D17A6E14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17A6E98(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v44 = &v33 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v13 = &v33 - v12;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v14 = 0;
  v15 = *(a1 + 56);
  v33 = a1 + 56;
  v16 = 1 << *(a1 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v15;
  v19 = (v16 + 63) >> 6;
  v40 = v5 + 32;
  v42 = a2 + 56;
  v43 = v5 + 16;
  v20 = (v5 + 8);
  v34 = v19;
  v35 = &v33 - v12;
  v36 = v5;
  v37 = a1;
  if (v18)
  {
    while (1)
    {
      v21 = __clz(__rbit64(v18));
      v39 = (v18 - 1) & v18;
LABEL_13:
      v24 = *(a1 + 48);
      v41 = *(v5 + 72);
      v25 = *(v5 + 16);
      v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4);
      (*(v5 + 32))(v44, v13, v4);
      sub_1D17ADC40(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v26 = sub_1D1E676DC();
      v27 = -1 << *(a2 + 32);
      v28 = v26 & ~v27;
      if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
      {
        break;
      }

      v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v29 = a2;
      v30 = ~v27;
      while (1)
      {
        v25(v8, *(v29 + 48) + v28 * v41, v4);
        sub_1D17ADC40(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v31 = sub_1D1E6775C();
        v32 = *v20;
        (*v20)(v8, v4);
        if (v31)
        {
          break;
        }

        v28 = (v28 + 1) & v30;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          v32(v44, v4);
          return 0;
        }
      }

      result = (v32)(v44, v4);
      a2 = v29;
      v5 = v36;
      a1 = v37;
      v19 = v34;
      v13 = v35;
      v18 = v39;
      if (!v39)
      {
        goto LABEL_8;
      }
    }

    (*v20)(v44, v4);
    return 0;
  }

LABEL_8:
  v22 = v14;
  while (1)
  {
    v14 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v14 >= v19)
    {
      return 1;
    }

    v23 = *(v33 + 8 * v14);
    ++v22;
    if (v23)
    {
      v21 = __clz(__rbit64(v23));
      v39 = (v23 - 1) & v23;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A7248(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v22 = result;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_15:
    v13 = (*(result + 48) + 16 * (v10 | (v3 << 6)));
    v15 = *v13;
    v14 = v13[1];
    sub_1D1E6920C();

    sub_1D1E678EC();
    v16 = sub_1D1E6926C();
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
LABEL_23:

      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = (*(a2 + 48) + 16 * v18);
      v21 = *v20 == v15 && v20[1] == v14;
      if (v21 || (sub_1D1E6904C() & 1) != 0)
      {
        break;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        goto LABEL_23;
      }
    }

    result = v22;
  }

  v11 = v3;
  while (1)
  {
    v3 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v12 = *(v4 + 8 * v3);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A7400(uint64_t a1, uint64_t a2)
{
  v72 = sub_1D1E66A7C();
  v4 = *(v72 - 8);
  v5 = MEMORY[0x1EEE9AC00](v72);
  v70 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v71 = &v51 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v51 - v10;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v12 = 0;
  v13 = a1 + 56;
  v14 = 1 << *(a1 + 32);
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a1 + 56);
  v17 = (v14 + 63) >> 6;
  v74 = a2 + 56;
  v68 = v4 + 16;
  v61 = v4 + 32;
  v69 = (v4 + 8);
  v60 = v17;
  if (!v16)
  {
    goto LABEL_8;
  }

  while (2)
  {
    v18 = __clz(__rbit64(v16));
    v62 = (v16 - 1) & v16;
LABEL_13:
    v21 = *(*(a1 + 48) + 8 * (v18 | (v12 << 6)));
    sub_1D1E6920C();
    if (v21 == 2)
    {
      v22 = 2;
      goto LABEL_17;
    }

    if (v21 == 1)
    {
      v22 = 0;
LABEL_17:
      MEMORY[0x1D3892850](v22);
      goto LABEL_20;
    }

    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
    if (v21)
    {

      sub_1D176D4E8(v75, v21);
    }

LABEL_20:
    v23 = sub_1D1E6926C();
    v24 = -1 << *(a2 + 32);
    v25 = v23 & ~v24;
    if (((*(v74 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
    {
LABEL_66:
      sub_1D1771B10(v21);
      return 0;
    }

    v73 = ~v24;
    v64 = v21 - 1;
    v67 = v21 + 56;
    while (1)
    {
      v26 = *(*(a2 + 48) + 8 * v25);
      if (v26 == 2)
      {
        v27 = 2;
        if (v21 == 2)
        {
          goto LABEL_61;
        }

        sub_1D1771B24(v21);
        v28 = 2;
        goto LABEL_30;
      }

      if (v26 == 1)
      {
        v27 = 1;
        if (v21 == 1)
        {
          goto LABEL_61;
        }

        sub_1D1771B24(v21);
        v28 = 1;
        goto LABEL_30;
      }

      if (v64 < 2)
      {
        goto LABEL_29;
      }

      if (v26)
      {
        break;
      }

      sub_1D1771B24(v21);
      sub_1D1771B24(v21);
      sub_1D1771B24(0);
      sub_1D1771B10(0);
      sub_1D1771B10(v21);
      v26 = v21;
      if (!v21)
      {
        v27 = 0;
        goto LABEL_62;
      }

LABEL_32:
      sub_1D1771B10(v26);
      v25 = (v25 + 1) & v73;
      if (((*(v74 + ((v25 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v25) & 1) == 0)
      {
        goto LABEL_66;
      }
    }

    if (!v21)
    {
      sub_1D1771B24(0);
      sub_1D1771B24(0);
      sub_1D1771B24(v26);
      v28 = v26;
      v26 = 0;
      goto LABEL_31;
    }

    if (v26 != v21)
    {
      if (*(v26 + 16) == *(v21 + 16))
      {
        v63 = a1;
        v29 = v11;
        v30 = v4;
        v54 = a2;
        v31 = *(v26 + 56);
        v51 = v26 + 56;
        v32 = 1 << *(v26 + 32);
        if (v32 < 64)
        {
          v33 = ~(-1 << v32);
        }

        else
        {
          v33 = -1;
        }

        v34 = v33 & v31;
        sub_1D1771B24(v21);
        sub_1D1771B24(v26);
        sub_1D1771B24(v21);
        result = sub_1D1771B24(v26);
        v35 = 0;
        v36 = (v32 + 63) >> 6;
        v52 = v36;
        v56 = v30;
        v59 = v29;
        v58 = v12;
        v57 = v13;
        if (!v34)
        {
LABEL_43:
          v38 = v35;
          v4 = v30;
          v11 = v29;
          a1 = v63;
          while (1)
          {
            v35 = v38 + 1;
            if (__OFADD__(v38, 1))
            {
              goto LABEL_69;
            }

            if (v35 >= v36)
            {
              sub_1D1771B10(v21);
              sub_1D1771B10(v26);
              sub_1D1771B10(v21);
              v27 = v21;
              a2 = v54;
              goto LABEL_61;
            }

            v39 = *(v51 + 8 * v35);
            ++v38;
            if (v39)
            {
              v55 = (v39 - 1) & v39;
              v37 = __clz(__rbit64(v39)) | (v35 << 6);
              goto LABEL_48;
            }
          }
        }

        while (1)
        {
          v55 = (v34 - 1) & v34;
          v37 = __clz(__rbit64(v34)) | (v35 << 6);
          v4 = v30;
          v11 = v29;
          a1 = v63;
LABEL_48:
          v40 = *(v4 + 72);
          v41 = *(v26 + 48) + v40 * v37;
          v42 = v72;
          v65 = *(v4 + 16);
          v66 = v40;
          v65(v11, v41, v72);
          (*(v4 + 32))(v71, v11, v42);
          sub_1D17ADC40(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
          v43 = sub_1D1E676DC();
          v44 = -1 << *(v21 + 32);
          v45 = v43 & ~v44;
          if (((*(v67 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
          {
            break;
          }

          v53 = v69 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
          v46 = ~v44;
          while (1)
          {
            v47 = v70;
            v48 = v72;
            v65(v70, *(v21 + 48) + v45 * v66, v72);
            sub_1D17ADC40(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            v49 = sub_1D1E6775C();
            v50 = *v69;
            (*v69)(v47, v48);
            if (v49)
            {
              break;
            }

            v45 = (v45 + 1) & v46;
            if (((*(v67 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
            {
              a1 = v63;
              v4 = v56;
              v50(v71, v72);
              goto LABEL_58;
            }
          }

          result = (v50)(v71, v72);
          v30 = v56;
          v29 = v59;
          v12 = v58;
          v13 = v57;
          v36 = v52;
          v34 = v55;
          if (!v55)
          {
            goto LABEL_43;
          }
        }

        (*v69)(v71, v72);
LABEL_58:
        sub_1D1771B10(v21);
        sub_1D1771B10(v26);
        v28 = v21;
        a2 = v54;
        v11 = v59;
        v12 = v58;
        v13 = v57;
        goto LABEL_31;
      }

LABEL_29:
      sub_1D1771B24(v21);
      sub_1D1771B24(v26);
      v28 = v26;
LABEL_30:
      v26 = v21;
LABEL_31:
      sub_1D1771B10(v28);
      goto LABEL_32;
    }

    v26 = v21;
    v27 = v21;
LABEL_61:
    sub_1D1771B10(v26);
LABEL_62:
    result = sub_1D1771B10(v27);
    v17 = v60;
    v16 = v62;
    if (v62)
    {
      continue;
    }

    break;
  }

LABEL_8:
  v19 = v12;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v17)
    {
      return 1;
    }

    v20 = *(v13 + 8 * v12);
    ++v19;
    if (v20)
    {
      v18 = __clz(__rbit64(v20));
      v62 = (v20 - 1) & v20;
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
  return result;
}

uint64_t sub_1D17A7B94(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) == *(a2 + 16))
  {
    v2 = 0;
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
    v8 = a2 + 56;
LABEL_7:
    if (v6)
    {
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      goto LABEL_14;
    }

    v10 = v2;
    do
    {
      v2 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
        return result;
      }

      if (v2 >= v7)
      {
        return 1;
      }

      v11 = *(v3 + 8 * v2);
      ++v10;
    }

    while (!v11);
    v9 = __clz(__rbit64(v11));
    v6 = (v11 - 1) & v11;
LABEL_14:
    v12 = result;
    v13 = *(*(result + 48) + (v9 | (v2 << 6)));
    v14 = a2;
    sub_1D1E6920C();
    v15 = v13 >> 6;
    sub_1D1E6923C();
    sub_1D1E678EC();
    v16 = sub_1D1E6926C();
    v17 = -1 << *(v14 + 32);
    v18 = v16 & ~v17;
    if ((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
    {
      a2 = v14;
      v19 = ~v17;
      result = v12;
      do
      {
        v20 = *(*(v14 + 48) + v18);
        if (v20 >> 6)
        {
          if (v20 >> 6 == 1)
          {
            if (v15 == 1)
            {
              goto LABEL_16;
            }
          }

          else if (v15 == 2)
          {
LABEL_16:
            if (((v20 ^ v13) & 0x3F) == 0)
            {
              goto LABEL_7;
            }
          }
        }

        else if (v13 <= 0x3F && v20 == v13)
        {
          goto LABEL_7;
        }

        v18 = (v18 + 1) & v19;
      }

      while (((*(v8 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_1D17A7DC0(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_1D1E691FC();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A7F14(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1D1E6920C();
    v14 = dword_1D1E735CC[v13];
    sub_1D1E6924C();
    result = sub_1D1E6926C();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (dword_1D1E735CC[*(*(a2 + 48) + v16)] != v14)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A8098(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = v10 | (v4 << 6);
    v14 = *(*(v3 + 48) + 2 * v13);
    result = MEMORY[0x1D3892820](*(a2 + 40), *(*(v3 + 48) + 2 * v13), 2);
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (*(*(a2 + 48) + 2 * v16) != v14)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A81F0(uint64_t a1, uint64_t a2)
{
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  MEMORY[0x1EEE9AC00](v79);
  v5 = &v60 - v4;
  v74 = sub_1D1E66A7C();
  v6 = *(v74 - 8);
  v7 = MEMORY[0x1EEE9AC00](v74);
  v71 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v68 = &v60 - v9;
  v10 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = (&v60 - v15);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v60 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v60 - v22;
  result = MEMORY[0x1EEE9AC00](v21);
  v28 = &v60 - v27;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v29 = 0;
  v30 = a1 + 56;
  v31 = 1 << *(a1 + 32);
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  else
  {
    v32 = -1;
  }

  v33 = v32 & *(a1 + 56);
  v34 = (v31 + 63) >> 6;
  v69 = (v6 + 32);
  v73 = (v6 + 8);
  v78 = a2 + 56;
  v75 = a2;
  v67 = v26;
  v64 = a1;
  v63 = v25;
  v70 = v23;
  v62 = v28;
  v61 = a1 + 56;
  v60 = v34;
  if (!v33)
  {
    goto LABEL_8;
  }

  do
  {
    v35 = __clz(__rbit64(v33));
    v65 = (v33 - 1) & v33;
LABEL_13:
    v66 = v29;
    v38 = *(a1 + 48);
    v77 = *(v25 + 72);
    sub_1D17B2FB0(v38 + v77 * (v35 | (v29 << 6)), v28, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D17B3078(v28, v23, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1E6920C();
    v39 = v23;
    v40 = v67;
    sub_1D17B2FB0(v39, v67, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v41 = v68;
      v42 = v74;
      (*v69)(v68, v40, v74);
      MEMORY[0x1D3892850](1);
      sub_1D17ADC40(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v73)(v41, v42);
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E678EC();
      a2 = v75;
    }

    v43 = sub_1D1E6926C();
    v44 = -1 << *(a2 + 32);
    v45 = v43 & ~v44;
    v23 = v70;
    if (((*(v78 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
    {
LABEL_37:
      sub_1D17B3018(v23, type metadata accessor for StaticAccessory.DeviceIdentifier);
      return 0;
    }

    v76 = ~v44;
    while (1)
    {
      sub_1D17B2FB0(*(a2 + 48) + v45 * v77, v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v46 = &v5[*(v79 + 48)];
      sub_1D17B2FB0(v19, v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
      sub_1D17B2FB0(v23, v46, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        break;
      }

      sub_1D17B2FB0(v5, v13, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v47 = v10;
        v48 = v16;
        v49 = v13;
        v50 = v71;
        v51 = v74;
        (*v69)(v71, v46, v74);
        v72 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        v52 = *v73;
        v53 = v50;
        v13 = v49;
        v16 = v48;
        v10 = v47;
        v23 = v70;
        (*v73)(v53, v51);
        sub_1D17B3018(v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
        v52(v13, v51);
        if (v72)
        {
          goto LABEL_34;
        }

LABEL_31:
        sub_1D17B3018(v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
        a2 = v75;
        goto LABEL_20;
      }

      sub_1D17B3018(v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
      (*v73)(v13, v74);
LABEL_19:
      sub_1D1741A30(v5, &qword_1EC642AA8, &unk_1D1E9F9F0);
LABEL_20:
      v45 = (v45 + 1) & v76;
      if (((*(v78 + ((v45 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v45) & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    sub_1D17B2FB0(v5, v16, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v55 = *v16;
    v54 = v16[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1D17B3018(v19, type metadata accessor for StaticAccessory.DeviceIdentifier);

      a2 = v75;
      goto LABEL_19;
    }

    v56 = *v46;
    v57 = *(v46 + 1);
    if (v55 != v56 || v54 != v57)
    {
      v59 = sub_1D1E6904C();

      sub_1D17B3018(v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
      if (v59)
      {
        goto LABEL_34;
      }

      goto LABEL_31;
    }

    sub_1D17B3018(v19, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_34:
    sub_1D17B3018(v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
    result = sub_1D17B3018(v23, type metadata accessor for StaticAccessory.DeviceIdentifier);
    a2 = v75;
    a1 = v64;
    v25 = v63;
    v28 = v62;
    v29 = v66;
    v30 = v61;
    v34 = v60;
    v33 = v65;
  }

  while (v65);
LABEL_8:
  v36 = v29;
  while (1)
  {
    v29 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v29 >= v34)
    {
      return 1;
    }

    v37 = *(v30 + 8 * v29);
    ++v36;
    if (v37)
    {
      v35 = __clz(__rbit64(v37));
      v65 = (v37 - 1) & v37;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A8A48(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v28 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  v29 = v8;
  v30 = result;
  if (!v7)
  {
    goto LABEL_8;
  }

  do
  {
    v10 = __clz(__rbit64(v7));
    v31 = (v7 - 1) & v7;
LABEL_13:
    v13 = v10 | (v4 << 6);
    v14 = *(v3 + 48);
    v15 = *(v14 + v13);
    v16 = sub_1D1CDA80C(*(a2 + 40), *(v14 + v13));
    v17 = -1 << *(a2 + 32);
    v18 = v16 & ~v17;
    if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
    {
      return 0;
    }

    v19 = ~v17;
    while (1)
    {
      v20 = *(*(a2 + 48) + v18);
      if (v20 > 3)
      {
        if (*(*(a2 + 48) + v18) > 5u)
        {
          if (v20 == 6)
          {
            v23 = "17-A590-755E1AAC02AE";
            if (v15 <= 3)
            {
              goto LABEL_24;
            }
          }

          else
          {
            v23 = "73-8FBD-0E8978A33403";
            if (v15 <= 3)
            {
              goto LABEL_24;
            }
          }
        }

        else
        {
          v25 = v20 == 4;
          v23 = "60-AD68-D91053B75F44";
          if (!v25)
          {
            v23 = "7E-BE63-1D00B1500545";
          }

          if (v15 <= 3)
          {
LABEL_24:
            if (v15 > 1)
            {
              v24 = "73-A058-C5E64BC487B2";
              if (v15 != 2)
              {
                v24 = "CE-986D-63B28F62C9E3";
              }
            }

            else
            {
              v24 = "00-8000-0026BB765291";
              if (v15)
              {
                v24 = "13-AA62-01754F256DD5";
              }
            }

            goto LABEL_40;
          }
        }
      }

      else
      {
        v21 = "73-A058-C5E64BC487B2";
        if (v20 != 2)
        {
          v21 = "CE-986D-63B28F62C9E3";
        }

        v22 = "00-8000-0026BB765291";
        if (*(*(a2 + 48) + v18))
        {
          v22 = "13-AA62-01754F256DD5";
        }

        if (*(*(a2 + 48) + v18) <= 1u)
        {
          v23 = v22;
        }

        else
        {
          v23 = v21;
        }

        if (v15 <= 3)
        {
          goto LABEL_24;
        }
      }

      v24 = "17-A590-755E1AAC02AE";
      if (v15 != 6)
      {
        v24 = "73-8FBD-0E8978A33403";
      }

      v26 = "60-AD68-D91053B75F44";
      if (v15 != 4)
      {
        v26 = "7E-BE63-1D00B1500545";
      }

      if (v15 <= 5)
      {
        v24 = v26;
      }

LABEL_40:
      if ((v23 | 0x8000000000000000) == (v24 | 0x8000000000000000))
      {
        break;
      }

      v27 = sub_1D1E6904C();

      if (v27)
      {
        goto LABEL_50;
      }

      v18 = (v18 + 1) & v19;
      if (((*(v9 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        return 0;
      }
    }

LABEL_50:
    v8 = v29;
    v3 = v30;
    v7 = v31;
  }

  while (v31);
LABEL_8:
  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v28 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v31 = (v12 - 1) & v12;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A8D54(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1D1E6920C();
    MEMORY[0x1D3892850](v13);
    result = sub_1D1E6926C();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (v13 != *(*(a2 + 48) + v15))
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A8EC4(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_1D1E6920C();
    MEMORY[0x1D3892850](v13);
    result = sub_1D1E6926C();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A9034(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v29 = a2 + 56;
  v26 = result + 56;
  v27 = result;
  v25 = v8;
  if (v7)
  {
    while (1)
    {
      v9 = __clz(__rbit64(v7));
      v28 = (v7 - 1) & v7;
LABEL_13:
      v12 = (*(result + 48) + 32 * (v9 | (v3 << 6)));
      v13 = *v12;
      v14 = v12[1];
      v15 = v12[2];
      v16 = v12[3];
      sub_1D1E6920C();
      MEMORY[0x1D3892850](v13);

      sub_1D1E678EC();
      sub_1D176D34C(v30, v16);
      v17 = sub_1D1E6926C();
      v18 = -1 << *(a2 + 32);
      v19 = v17 & ~v18;
      if (((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
      {
        break;
      }

      v20 = ~v18;
      while (1)
      {
        v23 = (*(a2 + 48) + 32 * v19);
        if (*v23 == v13)
        {
          v24 = v23[1] == v14 && v23[2] == v15;
          if (v24 || (sub_1D1E6904C() & 1) != 0)
          {

            v22 = sub_1D17A7B94(v21, v16);

            if (v22)
            {
              break;
            }
          }
        }

        v19 = (v19 + 1) & v20;
        if (((*(v29 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
        {
          goto LABEL_27;
        }
      }

      v4 = v26;
      result = v27;
      v8 = v25;
      v7 = v28;
      if (!v28)
      {
        goto LABEL_8;
      }
    }

LABEL_27:

    return 0;
  }

LABEL_8:
  v10 = v3;
  while (1)
  {
    v3 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v3 >= v8)
    {
      return 1;
    }

    v11 = *(v4 + 8 * v3);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v28 = (v11 - 1) & v11;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17A9294(uint64_t a1, uint64_t a2)
{
  v115 = type metadata accessor for Event.CharacteristicEvent(0);
  MEMORY[0x1EEE9AC00](v115);
  v5 = &v100 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Event.TimeEvent(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v117 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438E0, &qword_1D1E72978);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v100 - v9;
  v126 = type metadata accessor for Event(0);
  v11 = MEMORY[0x1EEE9AC00](v126);
  v122 = &v100 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v119 = &v100 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v100 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v100 - v20;
  result = MEMORY[0x1EEE9AC00](v19);
  v26 = &v100 - v25;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v27 = 0;
  v28 = a1 + 56;
  v29 = 1 << *(a1 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(a1 + 56);
  v32 = (v29 + 63) >> 6;
  v125 = a2 + 56;
  v116 = v5;
  v121 = v8;
  v118 = v24;
  v120 = v21;
  v107 = a1 + 56;
  v106 = v32;
  if (!v31)
  {
    goto LABEL_8;
  }

  do
  {
    v33 = __clz(__rbit64(v31));
    v101 = (v31 - 1) & v31;
LABEL_13:
    v102 = v27;
    v105 = a1;
    v36 = *(a1 + 48);
    v104 = v23;
    v124 = *(v23 + 72);
    sub_1D17B2FB0(v36 + v124 * (v33 | (v27 << 6)), v26, type metadata accessor for Event);
    v103 = v26;
    sub_1D17B3078(v26, v21, type metadata accessor for Event);
    sub_1D1E6920C();
    Event.hash(into:)(&v130);
    v37 = sub_1D1E6926C();
    v38 = -1 << *(a2 + 32);
    v39 = v37 & ~v38;
    if (((*(v125 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
    {
LABEL_84:
      sub_1D17B3018(v21, type metadata accessor for Event);
      return 0;
    }

    v123 = ~v38;
    v113 = a2;
    while (1)
    {
      sub_1D17B2FB0(*(a2 + 48) + v39 * v124, v18, type metadata accessor for Event);
      v40 = &v10[*(v8 + 48)];
      sub_1D17B2FB0(v18, v10, type metadata accessor for Event);
      sub_1D17B2FB0(v21, v40, type metadata accessor for Event);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (!EnumCaseMultiPayload)
      {
        break;
      }

      if (EnumCaseMultiPayload != 1)
      {
        v55 = v122;
        sub_1D17B2FB0(v10, v122, type metadata accessor for Event);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v56 = v40;
          v57 = v116;
          sub_1D17B3078(v56, v116, type metadata accessor for Event.CharacteristicEvent);
          if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
          {
            goto LABEL_68;
          }

          v58 = *(v115 + 20);
          v59 = *(v55 + v58);
          LOBYTE(v58) = *(v57 + v58);
          LOBYTE(v130) = v59;
          LOBYTE(v127) = v58;
          v60 = CharacteristicKind.rawValue.getter();
          v62 = v61;
          if (v60 == CharacteristicKind.rawValue.getter() && v62 == v63)
          {

            v57 = v116;
            v64 = v122;
            goto LABEL_49;
          }

          v74 = sub_1D1E6904C();

          v57 = v116;
          v64 = v122;
          if (v74)
          {
LABEL_49:
            v75 = *(v115 + 24);
            v76 = v64 + v75;
            v77 = *v76;
            v78 = *(v76 + 8);
            v79 = *(v76 + 16);
            v80 = v57 + v75;
            v82 = *v80;
            v81 = *(v80 + 8);
            v83 = *(v80 + 16);
            v114 = *v76;
            if (v79 >> 6)
            {
              if (v79 >> 6 == 1)
              {
                if ((v83 & 0xC0) != 0x40)
                {
LABEL_67:
                  v108 = v18;
                  v89 = v82;
                  v90 = v77;
                  v91 = v81;
                  v92 = v83;
                  sub_1D179178C(v90, v78, v79, sub_1D1778244);
                  sub_1D179178C(v89, v91, v92, sub_1D1778244);
                  sub_1D179178C(*&v114, v78, v79, sub_1D1778284);
                  v93 = v89;
                  v18 = v108;
                  v94 = v92;
                  v21 = v120;
                  sub_1D179178C(v93, v91, v94, sub_1D1778284);
                  v8 = v121;
                  goto LABEL_68;
                }
              }

              else if ((v83 & 0xC0) != 0x80)
              {
                goto LABEL_67;
              }

              *&v130 = v77;
              *(&v130 + 1) = v78;
              v131 = v79 & 0x3F;
              v127 = v82;
              v128 = v81;
              v129 = v83 & 0x3F;
            }

            else
            {
              if (v83 >= 0x40)
              {
                goto LABEL_67;
              }

              *&v130 = v77;
              *(&v130 + 1) = v78;
              v131 = v79;
              v127 = v82;
              v128 = v81;
              v129 = v83;
            }

            v112 = v82;
            v110 = v81;
            v111 = v83;
            sub_1D179178C(v82, v81, v83, sub_1D1778244);
            sub_1D179178C(v77, v78, v79, sub_1D1778244);
            v109 = v79;
            sub_1D179178C(v77, v78, v79, sub_1D1778244);
            v84 = v110;
            sub_1D179178C(v112, v110, v111, sub_1D1778244);
            LODWORD(v108) = _s13HomeDataModel18CharacteristicKindO5ValueO2eeoiySbAE_AEtFZ_0(&v130, &v127);
            v85 = *&v114;
            sub_1D179178C(*&v114, v78, v79, sub_1D1778284);
            v86 = v112;
            v87 = v84;
            v88 = v111;
            sub_1D179178C(v112, v87, v111, sub_1D1778284);
            a2 = v113;
            sub_1D17B3018(v57, type metadata accessor for Event.CharacteristicEvent);
            sub_1D17B3018(v18, type metadata accessor for Event);
            sub_1D179178C(v86, v110, v88, sub_1D1778284);
            sub_1D179178C(v85, v78, v109, sub_1D1778284);
            v8 = v121;
            if (v108)
            {
              sub_1D17B3018(v21, type metadata accessor for Event);
              sub_1D17B3018(v122, type metadata accessor for Event.CharacteristicEvent);
              v99 = v10;
              goto LABEL_81;
            }
          }

          else
          {
LABEL_68:
            sub_1D17B3018(v57, type metadata accessor for Event.CharacteristicEvent);
            sub_1D17B3018(v18, type metadata accessor for Event);
          }

          sub_1D17B3018(v122, type metadata accessor for Event.CharacteristicEvent);
LABEL_70:
          sub_1D17B3018(v10, type metadata accessor for Event);
          goto LABEL_18;
        }

        sub_1D17B3018(v18, type metadata accessor for Event);
        sub_1D17B3018(v55, type metadata accessor for Event.CharacteristicEvent);
        goto LABEL_17;
      }

      v42 = a2;
      v43 = v118;
      sub_1D17B2FB0(v10, v118, type metadata accessor for Event);
      v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148) + 48);
      v45 = *(v43 + v44);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        sub_1D17B3018(v18, type metadata accessor for Event);
        sub_1D17B3018(v43, type metadata accessor for Event.TimeEvent);
        v21 = v120;
        goto LABEL_16;
      }

      v46 = *(v40 + v44);
      v47 = v40;
      v48 = v117;
      sub_1D17B3078(v47, v117, type metadata accessor for Event.TimeEvent);
      v49 = _s13HomeDataModel5EventO04TimeD0O2eeoiySbAE_AEtFZ_0(v43, v48);
      sub_1D17B3018(v48, type metadata accessor for Event.TimeEvent);
      sub_1D17B3018(v18, type metadata accessor for Event);
      sub_1D17B3018(v43, type metadata accessor for Event.TimeEvent);
      if (v49)
      {
        v21 = v120;
        if (v45 == v46)
        {
          sub_1D17B3018(v120, type metadata accessor for Event);
          v99 = v10;
          v8 = v121;
          a2 = v42;
          goto LABEL_81;
        }

        sub_1D17B3018(v10, type metadata accessor for Event);
        v8 = v121;
      }

      else
      {
        sub_1D17B3018(v10, type metadata accessor for Event);
        v8 = v121;
        v21 = v120;
      }

      a2 = v42;
LABEL_18:
      v39 = (v39 + 1) & v123;
      if (((*(v125 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_84;
      }
    }

    v42 = a2;
    v50 = v119;
    sub_1D17B2FB0(v10, v119, type metadata accessor for Event);
    v51 = *v50;
    v52 = *(v50 + 8);
    v53 = *(v50 + 16);
    v54 = *(v50 + 24);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1D17B3018(v18, type metadata accessor for Event);
      sub_1D1771BD4(v51, v52, v53, v54);
      v8 = v121;
LABEL_16:
      a2 = v42;
LABEL_17:
      sub_1D1741A30(v10, &qword_1EC6438E0, &qword_1D1E72978);
      goto LABEL_18;
    }

    v66 = *v40;
    v65 = *(v40 + 8);
    v114 = *(v40 + 16);
    v67 = *(v40 + 24);
    if (v54)
    {
      sub_1D17B3018(v18, type metadata accessor for Event);
      if (v67)
      {
        v68 = v65;
        v69 = *&v65;
        v70 = *&v114;
        v71 = v114;
        sub_1D1771BD4(v51, v52, v53, 1);
        sub_1D1771BD4(v66, v68, v70, 1);
        v73 = *&v51 == *&v66 && *&v52 == v69 && *&v53 == v71;
        a2 = v113;
        v8 = v121;
        v21 = v120;
        if (v73)
        {
          goto LABEL_80;
        }

        goto LABEL_70;
      }

      sub_1D1771BD4(v51, v52, v53, 1);
      sub_1D1771BD4(v66, v65, *&v114, 0);
LABEL_54:
      a2 = v113;
      v8 = v121;
LABEL_55:
      v21 = v120;
      goto LABEL_70;
    }

    if (v67)
    {
      sub_1D1771BD4(v51, v52, v53, 0);
      sub_1D1771BD4(v66, v65, *&v114, 1);
      sub_1D17B3018(v18, type metadata accessor for Event);
      goto LABEL_54;
    }

    v8 = v121;
    if (v51 != v66)
    {
      sub_1D1771BD4(v51, v52, v53, 0);
      sub_1D1771BD4(v66, v65, *&v114, 0);
      sub_1D17B3018(v18, type metadata accessor for Event);
      a2 = v113;
      goto LABEL_55;
    }

    if (*&v52 != 0.0)
    {
      v21 = v120;
      if (v52 != 1)
      {
        v95 = v65;
        v96 = v65;
        if (v65 >= 2)
        {
          v98 = *&v114;
          sub_1D17979F0(v51, v96, *&v114, 0);
          sub_1D17979F0(v51, v52, v53, 0);
          sub_1D17979F0(v51, v95, v98, 0);
          sub_1D17979F0(v51, v52, v53, 0);
          LODWORD(v112) = sub_1D17A6E98(v52, v95);
          sub_1D1771BE4(v52);
          sub_1D1771BE4(v95);
          sub_1D1771BD4(v51, v52, v53, 0);
          sub_1D1771BD4(v51, v95, v98, 0);
          sub_1D1771BD4(v51, v95, v98, 0);
          sub_1D1771BD4(v51, v52, v53, 0);
          sub_1D17B3018(v18, type metadata accessor for Event);
          a2 = v113;
          if (v112)
          {
            goto LABEL_80;
          }
        }

        else
        {
          v97 = *&v114;
          sub_1D17979F0(v51, v96, *&v114, 0);
          sub_1D17979F0(v51, v52, v53, 0);
          sub_1D17979F0(v51, v95, v97, 0);
          sub_1D17979F0(v51, v52, v53, 0);
          sub_1D1771BE4(v52);
          sub_1D1771BE4(v95);
          sub_1D1771BD4(v51, v52, v53, 0);
          sub_1D1771BD4(v51, v95, v97, 0);
          sub_1D1771BD4(v51, v95, v97, 0);
          sub_1D1771BD4(v51, v52, v53, 0);
          sub_1D17B3018(v18, type metadata accessor for Event);
          a2 = v113;
        }

        goto LABEL_70;
      }

      sub_1D17974E0(v65);
      sub_1D1771BD4(v51, 1uLL, v53, 0);
      sub_1D1771BD4(v51, v65, *&v114, 0);
      sub_1D17B3018(v18, type metadata accessor for Event);
      sub_1D1771BE4(1uLL);
      a2 = v113;
      if (v65 == 1)
      {
        goto LABEL_79;
      }

      goto LABEL_73;
    }

    sub_1D17974E0(v65);
    sub_1D1771BD4(v51, 0, v53, 0);
    sub_1D1771BD4(v51, v65, *&v114, 0);
    sub_1D17B3018(v18, type metadata accessor for Event);
    sub_1D1771BE4(0);
    a2 = v113;
    v21 = v120;
    if (*&v65 != 0.0)
    {
LABEL_73:
      sub_1D1771BE4(v65);
      goto LABEL_70;
    }

LABEL_79:
    sub_1D1771BE4(v52);
LABEL_80:
    sub_1D17B3018(v10, type metadata accessor for Event);
    v99 = v21;
LABEL_81:
    result = sub_1D17B3018(v99, type metadata accessor for Event);
    a1 = v105;
    v23 = v104;
    v26 = v103;
    v27 = v102;
    v28 = v107;
    v32 = v106;
    v31 = v101;
  }

  while (v101);
LABEL_8:
  v34 = v27;
  while (1)
  {
    v27 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      break;
    }

    if (v27 >= v32)
    {
      return 1;
    }

    v35 = *(v28 + 8 * v27);
    ++v34;
    if (v35)
    {
      v33 = __clz(__rbit64(v35));
      v101 = (v35 - 1) & v35;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17AA3B4(uint64_t a1, uint64_t a2)
{
  v153 = type metadata accessor for ActionCommand(0);
  v155 = *(v153 - 1);
  v4 = MEMORY[0x1EEE9AC00](v153);
  v6 = &v131 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v154 = &v131 - v7;
  v150 = type metadata accessor for Action.NaturalLightAction(0);
  MEMORY[0x1EEE9AC00](v150);
  v160 = &v131 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66A7C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v131 - v14;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v131 - v16;
  v147 = type metadata accessor for Action.CharacteristicAction(0);
  MEMORY[0x1EEE9AC00](v147);
  v156 = &v131 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643088, &qword_1D1E71158);
  MEMORY[0x1EEE9AC00](v159);
  v19 = &v131 - v18;
  v164 = type metadata accessor for Action(0);
  v20 = MEMORY[0x1EEE9AC00](v164);
  v163 = &v131 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v161 = &v131 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v157 = &v131 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v162 = &v131 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v169 = &v131 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v168 = &v131 - v31;
  result = MEMORY[0x1EEE9AC00](v30);
  v35 = &v131 - v34;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v36 = 0;
  v37 = a1 + 56;
  v38 = 1 << *(a1 + 32);
  if (v38 < 64)
  {
    v39 = ~(-1 << v38);
  }

  else
  {
    v39 = -1;
  }

  v40 = v39 & *(a1 + 56);
  v41 = (v38 + 63) >> 6;
  v167 = a2 + 56;
  v143 = (v10 + 48);
  v132 = (v10 + 32);
  v141 = (v10 + 8);
  v152 = a2;
  v158 = v6;
  v144 = v9;
  v142 = v15;
  v133 = v12;
  v140 = a1 + 56;
  v139 = v41;
  while (2)
  {
    v42 = v159;
    if (v40)
    {
      v43 = __clz(__rbit64(v40));
      v134 = (v40 - 1) & v40;
    }

    else
    {
      v44 = v36;
      do
      {
        v36 = v44 + 1;
        if (__OFADD__(v44, 1))
        {
          __break(1u);
          goto LABEL_117;
        }

        if (v36 >= v41)
        {
          return 1;
        }

        v45 = *(v37 + 8 * v36);
        ++v44;
      }

      while (!v45);
      v43 = __clz(__rbit64(v45));
      v134 = (v45 - 1) & v45;
    }

    v135 = v36;
    v138 = a1;
    v46 = *(a1 + 48);
    v137 = v33;
    v166 = *(v33 + 72);
    v47 = v35;
    sub_1D17B2FB0(v46 + v166 * (v43 | (v36 << 6)), v35, type metadata accessor for Action);
    v136 = v47;
    sub_1D17B3078(v47, v168, type metadata accessor for Action);
    sub_1D1E6920C();
    Action.hash(into:)(&v173);
    v48 = sub_1D1E6926C();
    v49 = -1 << *(a2 + 32);
    v50 = v48 & ~v49;
    if (((*(v167 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
    {
LABEL_114:
      sub_1D17B3018(v168, type metadata accessor for Action);
      return 0;
    }

    v165 = ~v49;
    while (1)
    {
      v51 = v169;
      sub_1D17B2FB0(*(a2 + 48) + v50 * v166, v169, type metadata accessor for Action);
      v52 = &v19[*(v42 + 48)];
      sub_1D17B2FB0(v51, v19, type metadata accessor for Action);
      sub_1D17B2FB0(v168, v52, type metadata accessor for Action);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (!EnumCaseMultiPayload)
        {
          v54 = v162;
          sub_1D17B2FB0(v19, v162, type metadata accessor for Action);
          if (swift_getEnumCaseMultiPayload())
          {
            sub_1D17B3018(v169, type metadata accessor for Action);
            v55 = type metadata accessor for Action.CharacteristicAction;
LABEL_52:
            sub_1D17B3018(v54, v55);
            goto LABEL_17;
          }

          v83 = v156;
          sub_1D17B3078(v52, v156, type metadata accessor for Action.CharacteristicAction);
          if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
          {
            goto LABEL_98;
          }

          v84 = v147[5];
          v85 = *(v54 + v84);
          LOBYTE(v84) = *(v83 + v84);
          LOBYTE(v173) = v85;
          LOBYTE(v170) = v84;
          v86 = CharacteristicKind.rawValue.getter();
          v88 = v87;
          if (v86 == CharacteristicKind.rawValue.getter() && v88 == v89)
          {

            v90 = v156;
            v91 = v162;
          }

          else
          {
            v92 = sub_1D1E6904C();

            v90 = v156;
            v42 = v159;
            v91 = v162;
            if ((v92 & 1) == 0)
            {
              goto LABEL_98;
            }
          }

          v93 = v147;
          v94 = v147[6];
          v95 = *(v91 + v94 + 8);
          v96 = *(v91 + v94 + 16);
          *&v173 = *(v91 + v94);
          *(&v173 + 1) = v95;
          v174 = v96;
          v97 = v90 + v94;
          v98 = v90;
          v99 = v91;
          v101 = *(v97 + 8);
          v102 = *(v97 + 16);
          v170 = *v97;
          v100 = v170;
          v171 = v101;
          v172 = v102;
          sub_1D1778244(v173, v95, v96);
          sub_1D1778244(v100, v101, v102);
          LOBYTE(v100) = _s13HomeDataModel18CharacteristicKindO5ValueO2eeoiySbAE_AEtFZ_0(&v173, &v170);
          sub_1D1778284(v170, v171, v172);
          sub_1D1778284(v173, *(&v173 + 1), v174);
          if ((v100 & 1) == 0)
          {
            sub_1D17B3018(v169, type metadata accessor for Action);
            v42 = v159;
LABEL_68:
            v57 = type metadata accessor for Action.CharacteristicAction;
            sub_1D17B3018(v156, type metadata accessor for Action.CharacteristicAction);
            v58 = &v176;
            goto LABEL_69;
          }

          v103 = v93[7];
          v104 = *(v145 + 48);
          v105 = v146;
          sub_1D17783E0(v99 + v103, v146);
          sub_1D17783E0(v98 + v103, v105 + v104);
          v106 = *v143;
          v107 = v144;
          if ((*v143)(v105, 1, v144) == 1)
          {
            if (v106(v105 + v104, 1, v107) == 1)
            {
              sub_1D1741A30(v105, &qword_1EC642590, qword_1D1E71260);
              v42 = v159;
              goto LABEL_92;
            }

            sub_1D17B3018(v169, type metadata accessor for Action);
            goto LABEL_90;
          }

          v110 = v142;
          sub_1D17783E0(v105, v142);
          if (v106(v105 + v104, 1, v107) == 1)
          {
            sub_1D17B3018(v169, type metadata accessor for Action);
            (*v141)(v110, v107);
LABEL_90:
            v42 = v159;
            sub_1D1741A30(v105, &qword_1EC642980, &unk_1D1E6E6E0);
            goto LABEL_68;
          }

          v117 = v105 + v104;
          v118 = v133;
          (*v132)(v133, v117, v107);
          sub_1D17ADC40(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v119 = sub_1D1E6775C();
          v120 = *v141;
          (*v141)(v118, v107);
          v120(v110, v107);
          sub_1D1741A30(v146, &qword_1EC642590, qword_1D1E71260);
          v42 = v159;
          if (v119)
          {
LABEL_92:
            v121 = v147[8];
            v122 = (v162 + v121);
            v123 = *(v162 + v121 + 8);
            v124 = (v156 + v121);
            v125 = v124[1];
            if (!v123)
            {
              sub_1D17B3018(v169, type metadata accessor for Action);
              if (!v125)
              {
                goto LABEL_110;
              }

              goto LABEL_68;
            }

            if (v125)
            {
              if (*v122 != *v124 || v123 != v125)
              {
                v126 = sub_1D1E6904C();
                sub_1D17B3018(v169, type metadata accessor for Action);
                if (v126)
                {
                  goto LABEL_110;
                }

                goto LABEL_68;
              }

              sub_1D17B3018(v169, type metadata accessor for Action);
LABEL_110:
              v129 = type metadata accessor for Action.CharacteristicAction;
              sub_1D17B3018(v156, type metadata accessor for Action.CharacteristicAction);
              v130 = &v176;
              goto LABEL_111;
            }
          }

LABEL_98:
          sub_1D17B3018(v169, type metadata accessor for Action);
          goto LABEL_68;
        }

        v59 = v157;
        sub_1D17B2FB0(v19, v157, type metadata accessor for Action);
        v60 = *v59;
        v61 = *(v59 + 8);
        v62 = *(v59 + 16);
        v63 = *(v59 + 24);
        v64 = *(v59 + 32);
        if (swift_getEnumCaseMultiPayload() != 1)
        {
          sub_1D17B3018(v169, type metadata accessor for Action);

          v6 = v158;
          goto LABEL_17;
        }

        v65 = *v52;
        v66 = v52[8];
        v67 = *(v52 + 2);
        v68 = v52[24];
        v69 = *(v52 + 4);
        if ((sub_1D17A6E98(v60, v65) & 1) == 0 || (v151 = v65, v61 != v66))
        {
          sub_1D17B3018(v169, type metadata accessor for Action);

          a2 = v152;
          v6 = v158;
          v42 = v159;
          goto LABEL_70;
        }

        if (v63)
        {
          v6 = v158;
          v42 = v159;
          if (!v68)
          {
LABEL_36:
            sub_1D17B3018(v169, type metadata accessor for Action);

            a2 = v152;
LABEL_70:
            sub_1D17B3018(v19, type metadata accessor for Action);
            goto LABEL_18;
          }
        }

        else
        {
          if (v62 == v67)
          {
            v108 = v68;
          }

          else
          {
            v108 = 1;
          }

          v6 = v158;
          v42 = v159;
          if (v108)
          {
            goto LABEL_36;
          }
        }

        if (v64)
        {
          a2 = v152;
          if (v69)
          {

            v109 = sub_1D17A7248(v64, v69);

            sub_1D17B3018(v169, type metadata accessor for Action);

            if (v109)
            {
              goto LABEL_112;
            }
          }

          else
          {
            sub_1D17B3018(v169, type metadata accessor for Action);
          }

          goto LABEL_70;
        }

        sub_1D17B3018(v169, type metadata accessor for Action);

        a2 = v152;
        if (v69)
        {

          swift_bridgeObjectRelease_n();
          goto LABEL_70;
        }

        goto LABEL_112;
      }

      v56 = v163;
      if (EnumCaseMultiPayload == 2)
      {
        v54 = v161;
        sub_1D17B2FB0(v19, v161, type metadata accessor for Action);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_1D17B3018(v169, type metadata accessor for Action);
          v55 = type metadata accessor for Action.NaturalLightAction;
          goto LABEL_52;
        }

        sub_1D17B3078(v52, v160, type metadata accessor for Action.NaturalLightAction);
        if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (sub_1D17A6E98(*(v54 + v150[6]), *(v160 + v150[6])) & 1) == 0 || *(v54 + v150[7]) != *(v160 + v150[7]))
        {
          goto LABEL_29;
        }

        v111 = v150[8];
        v112 = (v54 + v111);
        v113 = *(v54 + v111 + 8);
        v114 = (v160 + v111);
        v115 = v114[1];
        if (!v113)
        {
          sub_1D17B3018(v169, type metadata accessor for Action);
          if (!v115)
          {
            goto LABEL_108;
          }

          goto LABEL_30;
        }

        if (v115)
        {
          if (*v112 == *v114 && v113 == v115)
          {
            sub_1D17B3018(v169, type metadata accessor for Action);
LABEL_108:
            v129 = type metadata accessor for Action.NaturalLightAction;
            sub_1D17B3018(v160, type metadata accessor for Action.NaturalLightAction);
            v130 = &v175;
LABEL_111:
            sub_1D17B3018(*(v130 - 32), v129);
LABEL_112:
            v127 = v19;
            v128 = v168;
            goto LABEL_105;
          }

          v116 = sub_1D1E6904C();
          sub_1D17B3018(v169, type metadata accessor for Action);
          if (v116)
          {
            goto LABEL_108;
          }
        }

        else
        {
LABEL_29:
          sub_1D17B3018(v169, type metadata accessor for Action);
        }

LABEL_30:
        v57 = type metadata accessor for Action.NaturalLightAction;
        sub_1D17B3018(v160, type metadata accessor for Action.NaturalLightAction);
        v58 = &v175;
LABEL_69:
        sub_1D17B3018(*(v58 - 32), v57);
        goto LABEL_70;
      }

      sub_1D17B2FB0(v19, v163, type metadata accessor for Action);
      v70 = *(v56 + 1);
      result = swift_getEnumCaseMultiPayload();
      if (result == 3)
      {
        break;
      }

      sub_1D17B3018(v169, type metadata accessor for Action);

LABEL_17:
      sub_1D1741A30(v19, &qword_1EC643088, &qword_1D1E71158);
LABEL_18:
      v50 = (v50 + 1) & v165;
      if (((*(v167 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
      {
        goto LABEL_114;
      }
    }

    v71 = *(v52 + 1);
    if (*v56 != *v52 || (v72 = *(v71 + 16), v151 = *(v70 + 16), v151 != v72))
    {
LABEL_66:
      sub_1D17B3018(v169, type metadata accessor for Action);

      sub_1D17B3018(v19, type metadata accessor for Action);
      a2 = v152;
      v42 = v159;
      goto LABEL_18;
    }

    if (!v151 || v70 == v71)
    {
LABEL_104:
      sub_1D17B3018(v169, type metadata accessor for Action);

      v127 = v168;
      v128 = v19;
      a2 = v152;
LABEL_105:
      sub_1D17B3018(v127, type metadata accessor for Action);
      result = sub_1D17B3018(v128, type metadata accessor for Action);
      a1 = v138;
      v33 = v137;
      v35 = v136;
      v36 = v135;
      v37 = v140;
      v41 = v139;
      v40 = v134;
      continue;
    }

    break;
  }

  v73 = 0;
  v74 = (*(v155 + 80) + 32) & ~*(v155 + 80);
  v149 = v70 + v74;
  v148 = v71 + v74;
  while (v73 < *(v70 + 16))
  {
    v75 = *(v155 + 72) * v73;
    v76 = v154;
    result = sub_1D17B2FB0(v149 + v75, v154, type metadata accessor for ActionCommand);
    if (v73 >= *(v71 + 16))
    {
      goto LABEL_118;
    }

    sub_1D17B2FB0(v148 + v75, v6, type metadata accessor for ActionCommand);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *(v76 + v153[5]) != *&v6[v153[5]] || *(v76 + v153[6]) != *&v6[v153[6]])
    {
      sub_1D17B3018(v6, type metadata accessor for ActionCommand);
      sub_1D17B3018(v76, type metadata accessor for ActionCommand);
      goto LABEL_66;
    }

    v77 = (v76 + v153[7]);
    v78 = v76;
    v79 = v77[3];
    v80 = v77[4];
    v81 = v153;
    __swift_project_boxed_opaque_existential_1(v77, v79);
    v82 = v81[7];
    v6 = v158;
    LOBYTE(v79) = MatterCommand.isEqual(_:)(&v158[v82], v79, v80);
    sub_1D17B3018(v6, type metadata accessor for ActionCommand);
    result = sub_1D17B3018(v78, type metadata accessor for ActionCommand);
    if ((v79 & 1) == 0)
    {
      goto LABEL_66;
    }

    if (v151 == ++v73)
    {
      goto LABEL_104;
    }
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
  return result;
}

void sub_1D17AB954(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1D17B27C8(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_1D1E684EC();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_1D1E684FC();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

uint64_t sub_1D17ABBCC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v80 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v79 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v59 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v59 - v10;
  v74 = type metadata accessor for StaticZone(0);
  v12 = MEMORY[0x1EEE9AC00](v74);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v75 = &v59 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v19 = &v59 - v16;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v20 = 0;
  v21 = *(a1 + 56);
  v61 = a1 + 56;
  v22 = 1 << *(a1 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & v21;
  v60 = (v22 + 63) >> 6;
  v78 = v80 + 16;
  v25 = (v80 + 8);
  v71 = a2 + 56;
  v82 = v9;
  v76 = v18;
  v73 = a2;
  v65 = a1;
  v64 = v11;
  v63 = v17;
  v62 = &v59 - v16;
  if (v24)
  {
    while (1)
    {
      v26 = __clz(__rbit64(v24));
      v66 = (v24 - 1) & v24;
LABEL_13:
      v67 = v20;
      v29 = *(a1 + 48);
      v72 = *(v17 + 72);
      sub_1D17B2FB0(v29 + v72 * (v26 | (v20 << 6)), v19, type metadata accessor for StaticZone);
      v30 = v19;
      v31 = v75;
      sub_1D17B3078(v30, v75, type metadata accessor for StaticZone);
      sub_1D1E6920C();
      sub_1D17ADC40(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      v32 = v74;
      v33 = (v31 + *(v74 + 20));
      v34 = v33[1];
      v69 = *v33;
      v68 = v34;
      sub_1D1E678EC();
      v35 = *(v31 + *(v32 + 24));
      MEMORY[0x1D3892850](*(v35 + 16));
      v81 = v35;
      v36 = *(v35 + 16);
      if (v36)
      {
        v37 = v81 + ((*(v80 + 80) + 32) & ~*(v80 + 80));
        v38 = *(v80 + 72);
        v39 = *(v80 + 16);
        do
        {
          v39(v11, v37, v4);
          sub_1D1E676EC();
          (*v25)(v11, v4);
          v37 += v38;
          --v36;
        }

        while (v36);
      }

      v40 = sub_1D1E6926C();
      v41 = v73;
      v42 = -1 << *(v73 + 32);
      v43 = v40 & ~v42;
      v44 = v82;
      v45 = v76;
      if (((*(v71 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
      {
LABEL_36:
        sub_1D17B3018(v75, type metadata accessor for StaticZone);
        return 0;
      }

      v70 = ~v42;
      while (1)
      {
        sub_1D17B2FB0(*(v41 + 48) + v43 * v72, v45, type metadata accessor for StaticZone);
        if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
        {
          v46 = (v76 + *(v74 + 20));
          result = *v46;
          v47 = *v46 == v69 && v46[1] == v68;
          if (v47 || (result = sub_1D1E6904C(), (result & 1) != 0))
          {
            v48 = *(v76 + *(v74 + 24));
            v49 = *(v48 + 16);
            if (v49 == *(v81 + 16))
            {
              break;
            }
          }
        }

LABEL_18:
        v45 = v76;
        sub_1D17B3018(v76, type metadata accessor for StaticZone);
        v43 = (v43 + 1) & v70;
        v41 = v73;
        if (((*(v71 + ((v43 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v43) & 1) == 0)
        {
          goto LABEL_36;
        }
      }

      if (v49 && v48 != v81)
      {
        break;
      }

LABEL_33:
      sub_1D17B3018(v76, type metadata accessor for StaticZone);
      result = sub_1D17B3018(v75, type metadata accessor for StaticZone);
      a1 = v65;
      v11 = v64;
      v17 = v63;
      v19 = v62;
      v20 = v67;
      v24 = v66;
      if (!v66)
      {
        goto LABEL_8;
      }
    }

    v50 = 0;
    v51 = (*(v80 + 80) + 32) & ~*(v80 + 80);
    v77 = v48 + v51;
    v52 = v81 + v51;
    while (v50 < *(v48 + 16))
    {
      v53 = *(v80 + 72) * v50;
      v54 = *(v80 + 16);
      result = v54(v44, v77 + v53, v4);
      if (v50 >= *(v81 + 16))
      {
        goto LABEL_39;
      }

      v55 = v79;
      v54(v79, v52 + v53, v4);
      sub_1D17ADC40(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v56 = sub_1D1E6775C();
      v57 = *v25;
      v58 = v55;
      v44 = v82;
      (*v25)(v58, v4);
      result = (v57)(v44, v4);
      if ((v56 & 1) == 0)
      {
        goto LABEL_18;
      }

      if (v49 == ++v50)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  else
  {
LABEL_8:
    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v60)
      {
        return 1;
      }

      v28 = *(v61 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v66 = (v28 - 1) & v28;
        goto LABEL_13;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17AC314(uint64_t a1, uint64_t a2)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642FE8, &qword_1D1EB2A90);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v40 - v4;
  v6 = type metadata accessor for WriteInProgressStatusViewModel.ID(0) - 8;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v40 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v51 = &v40 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v40 - v17;
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v19 = 0;
  v20 = *(a1 + 56);
  v40 = a1 + 56;
  v21 = 1 << *(a1 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v49 = a2 + 56;
  v41 = v24;
  v42 = v18;
  v44 = v16;
  v45 = a1;
  v43 = v12;
  if (v23)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v23));
      v46 = (v23 - 1) & v23;
LABEL_13:
      v28 = *(a1 + 48);
      v29 = *(v16 + 72);
      v47 = v19;
      v48 = v29;
      sub_1D17B2FB0(v28 + v29 * (v25 | (v19 << 6)), v18, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v30 = v51;
      sub_1D17B3078(v18, v51, type metadata accessor for WriteInProgressStatusViewModel.ID);
      sub_1D1E6920C();
      sub_1D17B2FB0(v30, v12, type metadata accessor for WriteInProgressStatusViewModel.ID);
      MEMORY[0x1D3892850](0);
      v31 = sub_1D1E66A7C();
      sub_1D17ADC40(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      v32 = *(*(v31 - 8) + 8);
      v32(v12, v31);
      v33 = sub_1D1E6926C();
      v34 = -1 << *(a2 + 32);
      v35 = v33 & ~v34;
      if (((*(v49 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
      {
        break;
      }

      v36 = ~v34;
      while (1)
      {
        v37 = a2;
        sub_1D17B2FB0(*(a2 + 48) + v35 * v48, v9, type metadata accessor for WriteInProgressStatusViewModel.ID);
        v38 = *(v50 + 48);
        sub_1D17B2FB0(v9, v5, type metadata accessor for WriteInProgressStatusViewModel.ID);
        sub_1D17B2FB0(v51, &v5[v38], type metadata accessor for WriteInProgressStatusViewModel.ID);
        v39 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        sub_1D17B3018(v9, type metadata accessor for WriteInProgressStatusViewModel.ID);
        v32(&v5[v38], v31);
        v32(v5, v31);
        if (v39)
        {
          break;
        }

        v35 = (v35 + 1) & v36;
        a2 = v37;
        if (((*(v49 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
        {
          goto LABEL_21;
        }
      }

      result = sub_1D17B3018(v51, type metadata accessor for WriteInProgressStatusViewModel.ID);
      a2 = v37;
      v16 = v44;
      a1 = v45;
      v18 = v42;
      v12 = v43;
      v23 = v46;
      v19 = v47;
      v24 = v41;
      if (!v46)
      {
        goto LABEL_8;
      }
    }

LABEL_21:
    sub_1D17B3018(v51, type metadata accessor for WriteInProgressStatusViewModel.ID);
    return 0;
  }

LABEL_8:
  v26 = v19;
  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v19 >= v24)
    {
      return 1;
    }

    v27 = *(v40 + 8 * v19);
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v46 = (v27 - 1) & v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t TriggerBuilder.debugDescription.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EB9020);
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);

  MEMORY[0x1D3890F70](v1, v2);

  MEMORY[0x1D3890F70](0x7665202020200A2CLL, 0xEE00203A73746E65);
  swift_getKeyPath();
  sub_1D1E66CAC();

  swift_beginAccess();
  type metadata accessor for Event(0);
  sub_1D17ADC40(&qword_1EC643578, type metadata accessor for Event, &protocol conformance descriptor for Event);

  v3 = sub_1D1E6819C();
  v5 = v4;

  MEMORY[0x1D3890F70](v3, v5);

  MEMORY[0x1D3890F70](0x6361202020200A2CLL, 0xEF203A736E6F6974);
  swift_getKeyPath();
  sub_1D1E66CAC();

  swift_beginAccess();
  type metadata accessor for Action(0);
  sub_1D17ADC40(&qword_1EC643570, type metadata accessor for Action, &protocol conformance descriptor for Action);

  v6 = sub_1D1E6819C();
  v8 = v7;

  MEMORY[0x1D3890F70](v6, v8);

  MEMORY[0x1D3890F70](0xD000000000000017, 0x80000001D1EB9040);
  swift_getKeyPath();
  sub_1D1E66CAC();

  swift_beginAccess();
  sub_1D1E66A7C();
  sub_1D17ADC40(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

  v9 = sub_1D1E6817C();
  v11 = v10;

  MEMORY[0x1D3890F70](v9, v11);

  MEMORY[0x1D3890F70](0xD000000000000014, 0x80000001D1EB9060);
  swift_getKeyPath();
  sub_1D1E66CAC();

  swift_beginAccess();
  if (*(v0 + 64))
  {
    v12 = 1702195828;
  }

  else
  {
    v12 = 0x65736C6166;
  }

  if (*(v0 + 64))
  {
    v13 = 0xE400000000000000;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v12, v13);

  MEMORY[0x1D3890F70](32010, 0xE200000000000000);
  return 0;
}

uint64_t sub_1D17ACC98@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1D17ACD58(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1D17ACEA8(v1, v2);
}

uint64_t sub_1D17ACD98()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t type metadata accessor for TriggerBuilder(uint64_t a1)
{
  result = qword_1EC643C98;
  if (!qword_1EC643C98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D17ACEA8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16) == a1 && *(v2 + 24) == a2;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {
    *(v2 + 16) = a1;
    *(v2 + 24) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17ACFFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 16) = a2;
  *(a1 + 24) = a3;
}

uint64_t (*sub_1D17AD068(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17ACC48(v4);
  return sub_1D17AD1A0;
}

uint64_t sub_1D17AD1FC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1D17AD2E0()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  return *(v0 + 32);
}

uint64_t sub_1D17AD394(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 32) == v2)
  {
    *(v1 + 32) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
    sub_1D1E66C9C();
  }

  return result;
}

uint64_t (*sub_1D17AD4B8(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17AD1AC(v4);
  return sub_1D17AD5F0;
}

uint64_t sub_1D17AD64C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 33);
  return result;
}

uint64_t sub_1D17AD730()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  return *(v0 + 33);
}

uint64_t sub_1D17AD7E4(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 33) == v2)
  {
    *(v1 + 33) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
    sub_1D1E66C9C();
  }

  return result;
}

uint64_t (*sub_1D17AD908(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17AD5FC(v4);
  return sub_1D17ADA40;
}

uint64_t sub_1D17ADA9C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  *a2 = *(v3 + 40);
}

uint64_t sub_1D17ADB88()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
}

uint64_t sub_1D17ADC40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D17ADC88(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1D17A9294(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17ADDD0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 40) = a2;
}

uint64_t (*sub_1D17ADE38(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17ADA4C(v4);
  return sub_1D17ADF70;
}

uint64_t sub_1D17ADFCC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  *a2 = *(v3 + 48);
}

uint64_t sub_1D17AE0B8()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
}

uint64_t sub_1D17AE170(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1D17AA3B4(v3, a1);

  if (v4)
  {
    *(v1 + 48) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
    sub_1D1E66C9C();
  }
}

uint64_t sub_1D17AE2B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 48) = a2;
}

uint64_t (*sub_1D17AE320(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC13HomeDataModel14TriggerBuilder___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  v4[7] = sub_1D17ADF7C(v4);
  return sub_1D17AE458;
}

uint64_t sub_1D17AE4B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
  *a2 = *(v3 + 56);
}

uint64_t sub_1D17AE5A0()
{
  swift_getKeyPath();
  sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
  sub_1D1E66CAC();

  swift_beginAccess();
}

uint64_t sub_1D17AE68C(uint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1D17A6E98(v3, a1);

  if (v4)
  {
    *(v1 + 56) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D17ADC40(&qword_1EC643C78, type metadata accessor for TriggerBuilder, &protocol conformance descriptor for TriggerBuilder);
    sub_1D1E66C9C();
  }
}