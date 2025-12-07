BOOL StaticThermostatClusterGroup.supportsCooling(for:)(uint64_t a1)
{
  StaticThermostatClusterGroup.systemMode(for:)(a1, &v4);
  result = 1;
  if (((1 << v4) & 0x1F7) == 0)
  {
    if (v4 == 3)
    {
      return 0;
    }

    else
    {
      v3 = v1 + *(type metadata accessor for StaticThermostatClusterGroup(0) + 28);
      return *(v3 + *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 80)) != 2;
    }
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.systemMode(for:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v47[3] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 24);
  v4 = *(a1 + 32);
  v6 = v2 + *(type metadata accessor for StaticThermostatClusterGroup(0) + 28);
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  if (*(v6 + *(result + 60)) != 1 || (v8 = *(v6 + 24)) == 0 || (v45 = *(v8 + 16)) == 0)
  {
LABEL_75:
    v17 = 9;
    goto LABEL_76;
  }

  v9 = 0;
  if (v5)
  {
    v10 = 0;
  }

  else
  {
    v10 = v4 == 0xC000000000000000;
  }

  v11 = !v10;
  v44 = v11;
  v12 = v4 >> 62;
  v13 = __OFSUB__(HIDWORD(v5), v5);
  v42 = v13;
  v43 = a2;
  v14 = (v8 + 48);
  while (1)
  {
    if (v9 >= *(v8 + 16))
    {
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
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
    }

    v16 = *(v14 - 2);
    v15 = *(v14 - 1);
    v17 = *v14;
    if (v15 >> 60 == 15)
    {
      if (v4 >> 60 == 15)
      {
        sub_1D1771B38(*(v14 - 2), *(v14 - 1));
        sub_1D1771B38(v5, v4);
        goto LABEL_79;
      }

LABEL_19:
      sub_1D1771B38(*(v14 - 2), *(v14 - 1));
      sub_1D1771B38(v5, v4);
      sub_1D1716AA4(v16, v15);
      v18 = v5;
      v19 = v4;
LABEL_20:
      result = sub_1D1716AA4(v18, v19);
      goto LABEL_21;
    }

    if (v4 >> 60 == 15)
    {
      goto LABEL_19;
    }

    v20 = v15 >> 62;
    if (v15 >> 62 == 3)
    {
      if (v16)
      {
        v21 = 0;
      }

      else
      {
        v21 = v15 == 0xC000000000000000;
      }

      v23 = !v21 || v12 < 3;
      if (((v23 | v44) & 1) == 0)
      {
        sub_1D1771B38(0, 0xC000000000000000);
        sub_1D1771B38(0, 0xC000000000000000);
        sub_1D1771B38(0, 0xC000000000000000);
        sub_1D1716AA4(0, 0xC000000000000000);
        v16 = 0;
        goto LABEL_78;
      }

LABEL_45:
      v24 = 0;
      if (v12 > 1)
      {
        goto LABEL_46;
      }

      goto LABEL_42;
    }

    if (v20 <= 1)
    {
      break;
    }

    if (v20 != 2)
    {
      goto LABEL_45;
    }

    v26 = *(v16 + 16);
    v25 = *(v16 + 24);
    v27 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (v27)
    {
      goto LABEL_84;
    }

    if (v12 > 1)
    {
      goto LABEL_46;
    }

LABEL_42:
    v28 = BYTE6(v4);
    if (v12)
    {
      v28 = HIDWORD(v5) - v5;
      if (v42)
      {
        goto LABEL_81;
      }
    }

LABEL_48:
    if (v24 != v28)
    {
      goto LABEL_54;
    }

    if (v24 < 1)
    {
      goto LABEL_77;
    }

    if (v20 > 1)
    {
      if (v20 != 2)
      {
        memset(v47, 0, 14);
        sub_1D1771B38(v16, v15);
        sub_1D1771B38(v16, v15);
        sub_1D1771B38(v5, v4);
        sub_1D1771B38(v16, v15);
        sub_1D1771B38(v5, v4);
        goto LABEL_68;
      }

      v40 = *(v16 + 24);
      v41 = *(v16 + 16);
      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v5, v4);
      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v5, v4);
      v31 = sub_1D1E6616C();
      if (v31)
      {
        v32 = v31;
        v33 = sub_1D1E6619C();
        v34 = v41;
        if (__OFSUB__(v41, v33))
        {
          goto LABEL_87;
        }

        v39 = v41 - v33 + v32;
      }

      else
      {
        v39 = 0;
        v34 = v41;
      }

      if (__OFSUB__(v40, v34))
      {
        goto LABEL_86;
      }

      sub_1D1E6618C();
      v37 = v39;
    }

    else
    {
      if (!v20)
      {
        v47[0] = *(v14 - 2);
        LOWORD(v47[1]) = v15;
        BYTE2(v47[1]) = BYTE2(v15);
        BYTE3(v47[1]) = BYTE3(v15);
        BYTE4(v47[1]) = BYTE4(v15);
        BYTE5(v47[1]) = BYTE5(v15);
        sub_1D1771B38(v16, v15);
        sub_1D1771B38(v16, v15);
        sub_1D1771B38(v5, v4);
        sub_1D1771B38(v16, v15);
        sub_1D1771B38(v5, v4);
LABEL_68:
        sub_1D199EDB4(v47, v5, v4, &v46);
        sub_1D1716AA4(v5, v4);
        sub_1D1716AA4(v16, v15);
        sub_1D1716AA4(v5, v4);
        v38 = v46;
        goto LABEL_73;
      }

      if (v16 >> 32 < v16)
      {
        goto LABEL_85;
      }

      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v5, v4);
      sub_1D1771B38(v16, v15);
      sub_1D1771B38(v5, v4);
      v35 = sub_1D1E6616C();
      if (v35)
      {
        v36 = sub_1D1E6619C();
        if (__OFSUB__(v16, v36))
        {
          goto LABEL_88;
        }

        v35 += v16 - v36;
      }

      sub_1D1E6618C();
      v37 = v35;
    }

    sub_1D199EDB4(v37, v5, v4, v47);
    sub_1D1716AA4(v5, v4);
    sub_1D1716AA4(v16, v15);
    sub_1D1716AA4(v5, v4);
    v38 = v47[0];
LABEL_73:
    sub_1D1716AA4(v16, v15);
    result = sub_1D1716AA4(v16, v15);
    a2 = v43;
    if (v38)
    {
      goto LABEL_76;
    }

LABEL_21:
    ++v9;
    v14 += 24;
    v12 = v4 >> 62;
    if (v45 == v9)
    {
      goto LABEL_75;
    }
  }

  if (!v20)
  {
    v24 = BYTE6(v15);
    if (v12 > 1)
    {
      goto LABEL_46;
    }

    goto LABEL_42;
  }

  LODWORD(v24) = HIDWORD(v16) - v16;
  if (__OFSUB__(HIDWORD(v16), v16))
  {
    goto LABEL_83;
  }

  v24 = v24;
  if (v12 <= 1)
  {
    goto LABEL_42;
  }

LABEL_46:
  if (v12 == 2)
  {
    v30 = *(v5 + 16);
    v29 = *(v5 + 24);
    v27 = __OFSUB__(v29, v30);
    v28 = v29 - v30;
    if (v27)
    {
      goto LABEL_82;
    }

    goto LABEL_48;
  }

  if (v24)
  {
LABEL_54:
    sub_1D1771B38(*(v14 - 2), *(v14 - 1));
    sub_1D1771B38(v16, v15);
    sub_1D1771B38(v5, v4);
    sub_1D1716AA4(v5, v4);
    sub_1D1716AA4(v16, v15);
    v18 = v16;
    v19 = v15;
    goto LABEL_20;
  }

LABEL_77:
  sub_1D1771B38(*(v14 - 2), *(v14 - 1));
  sub_1D1771B38(v16, v15);
  sub_1D1771B38(v5, v4);
  sub_1D1716AA4(v5, v4);
LABEL_78:
  sub_1D1716AA4(v16, v15);
LABEL_79:
  result = sub_1D1716AA4(v16, v15);
LABEL_76:
  *a2 = v17;
  return result;
}

uint64_t StaticThermostatClusterGroup.operationSequence.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticThermostatClusterGroup(0) + 28);
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  *a1 = *(v3 + *(result + 80));
  return result;
}

BOOL StaticThermostatClusterGroup.supportsHeating(for:)(uint64_t a1)
{
  StaticThermostatClusterGroup.systemMode(for:)(a1, &v4);
  result = 1;
  if (((1 << v4) & 0x1FB) == 0)
  {
    if (v4 == 2)
    {
      return 0;
    }

    else
    {
      v3 = v1 + *(type metadata accessor for StaticThermostatClusterGroup(0) + 28);
      return *(v3 + *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 80)) != 1;
    }
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.isAutomationEnabledForPreset(_:)(uint64_t a1)
{
  v53[2] = *MEMORY[0x1E69E9840];
  v51 = *(a1 + 16);
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  v4 = *(v1 + *(type metadata accessor for StaticThermostatClusterGroup(0) + 28) + 24);
  if (!v4 || (v5 = *(v4 + 16)) == 0)
  {
LABEL_74:
    if (qword_1EE07A0A8 != -1)
    {
      goto LABEL_83;
    }

    goto LABEL_75;
  }

  v6 = 0;
  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = v2 == 0xC000000000000000;
  }

  v8 = !v7;
  v50 = v8;
  v9 = v2 >> 62;
  v10 = __OFSUB__(HIDWORD(v3), v3);
  v48 = v10;
  v49 = *(v4 + 16);
  v11 = (v4 + 49);
  while (v6 < *(v4 + 16))
  {
    v12 = *(v11 - 17);
    v13 = *(v11 - 9);
    v14 = *v11;
    if (v13 >> 60 == 15)
    {
      if (v2 >> 60 == 15)
      {
        sub_1D1771B38(*(v11 - 17), *(v11 - 9));
        sub_1D1771B38(v3, v2);
        goto LABEL_81;
      }

LABEL_18:
      sub_1D1771B38(*(v11 - 17), *(v11 - 9));
      sub_1D1771B38(v3, v2);
      sub_1D1716AA4(v12, v13);
      v15 = v3;
      v16 = v2;
      goto LABEL_19;
    }

    if (v2 >> 60 == 15)
    {
      goto LABEL_18;
    }

    v17 = v13 >> 62;
    if (v13 >> 62 == 3)
    {
      if (v12)
      {
        v18 = 0;
      }

      else
      {
        v18 = v13 == 0xC000000000000000;
      }

      v20 = !v18 || v9 < 3;
      if (((v20 | v50) & 1) == 0)
      {
        sub_1D1771B38(0, 0xC000000000000000);
        sub_1D1771B38(0, 0xC000000000000000);
        sub_1D1771B38(0, 0xC000000000000000);
        sub_1D1716AA4(0, 0xC000000000000000);
        v12 = 0;
        goto LABEL_80;
      }

LABEL_44:
      v21 = 0;
      if (v9 <= 1)
      {
        goto LABEL_41;
      }

      goto LABEL_45;
    }

    if (v17 > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_44;
      }

      v23 = *(v12 + 16);
      v22 = *(v12 + 24);
      v24 = __OFSUB__(v22, v23);
      v21 = v22 - v23;
      if (v24)
      {
        goto LABEL_86;
      }

      if (v9 <= 1)
      {
        goto LABEL_41;
      }
    }

    else if (v17)
    {
      LODWORD(v21) = HIDWORD(v12) - v12;
      if (__OFSUB__(HIDWORD(v12), v12))
      {
        goto LABEL_85;
      }

      v21 = v21;
      if (v9 <= 1)
      {
LABEL_41:
        v25 = BYTE6(v2);
        if (v9)
        {
          v25 = HIDWORD(v3) - v3;
          if (v48)
          {
            __break(1u);
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
          }
        }

        goto LABEL_47;
      }
    }

    else
    {
      v21 = BYTE6(v13);
      if (v9 <= 1)
      {
        goto LABEL_41;
      }
    }

LABEL_45:
    if (v9 != 2)
    {
      if (!v21)
      {
LABEL_79:
        sub_1D1771B38(*(v11 - 17), *(v11 - 9));
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v3, v2);
        sub_1D1716AA4(v3, v2);
LABEL_80:
        sub_1D1716AA4(v12, v13);
LABEL_81:
        sub_1D1716AA4(v12, v13);
        return v14;
      }

LABEL_53:
      sub_1D1771B38(*(v11 - 17), *(v11 - 9));
      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v3, v2);
      sub_1D1716AA4(v3, v2);
      sub_1D1716AA4(v12, v13);
      v15 = v12;
      v16 = v13;
LABEL_19:
      sub_1D1716AA4(v15, v16);
      goto LABEL_20;
    }

    v27 = *(v3 + 16);
    v26 = *(v3 + 24);
    v24 = __OFSUB__(v26, v27);
    v25 = v26 - v27;
    if (v24)
    {
      goto LABEL_84;
    }

LABEL_47:
    if (v21 != v25)
    {
      goto LABEL_53;
    }

    if (v21 < 1)
    {
      goto LABEL_79;
    }

    if (v17 > 1)
    {
      if (v17 != 2)
      {
        memset(v53, 0, 14);
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v3, v2);
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v3, v2);
        goto LABEL_67;
      }

      v46 = *(v12 + 24);
      v47 = *(v12 + 16);
      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v3, v2);
      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v3, v2);
      v28 = sub_1D1E6616C();
      if (v28)
      {
        v29 = v28;
        v30 = sub_1D1E6619C();
        v31 = v47;
        if (__OFSUB__(v47, v30))
        {
          goto LABEL_89;
        }

        v45 = v47 - v30 + v29;
      }

      else
      {
        v45 = 0;
        v31 = v47;
      }

      if (__OFSUB__(v46, v31))
      {
        goto LABEL_88;
      }

      sub_1D1E6618C();
      v34 = v45;
    }

    else
    {
      if (!v17)
      {
        v53[0] = *(v11 - 17);
        LOWORD(v53[1]) = v13;
        BYTE2(v53[1]) = BYTE2(v13);
        BYTE3(v53[1]) = BYTE3(v13);
        BYTE4(v53[1]) = BYTE4(v13);
        BYTE5(v53[1]) = BYTE5(v13);
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v3, v2);
        sub_1D1771B38(v12, v13);
        sub_1D1771B38(v3, v2);
LABEL_67:
        sub_1D199EDB4(v53, v3, v2, &v52);
        sub_1D1716AA4(v3, v2);
        sub_1D1716AA4(v12, v13);
        sub_1D1716AA4(v3, v2);
        v35 = v52;
        goto LABEL_72;
      }

      if (v12 >> 32 < v12)
      {
        goto LABEL_87;
      }

      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v3, v2);
      sub_1D1771B38(v12, v13);
      sub_1D1771B38(v3, v2);
      v32 = sub_1D1E6616C();
      if (v32)
      {
        v33 = sub_1D1E6619C();
        if (__OFSUB__(v12, v33))
        {
          goto LABEL_90;
        }

        v32 += v12 - v33;
      }

      sub_1D1E6618C();
      v34 = v32;
    }

    sub_1D199EDB4(v34, v3, v2, v53);
    sub_1D1716AA4(v3, v2);
    sub_1D1716AA4(v12, v13);
    sub_1D1716AA4(v3, v2);
    v35 = v53[0];
LABEL_72:
    sub_1D1716AA4(v12, v13);
    sub_1D1716AA4(v12, v13);
    v5 = v49;
    if (v35)
    {
      return v14;
    }

LABEL_20:
    ++v6;
    v11 += 24;
    v9 = v2 >> 62;
    if (v5 == v6)
    {
      goto LABEL_74;
    }
  }

  __break(1u);
LABEL_83:
  swift_once();
LABEL_75:
  v36 = sub_1D1E6709C();
  __swift_project_value_buffer(v36, qword_1EE07A0B0);
  sub_1D1771B38(v3, v2);

  v37 = sub_1D1E6707C();
  v38 = sub_1D1E6835C();
  sub_1D1716AA4(v3, v2);

  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v53[0] = v40;
    *v39 = 136315650;
    *(v39 + 4) = sub_1D1B1312C(0xD000000000000030, 0x80000001D1EC0AF0, v53);
    *(v39 + 12) = 2080;
    *(v39 + 14) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EC0B30, v53);
    *(v39 + 22) = 2080;
    v52 = v51;
    v41 = ThermostatPresetScenario.shortPresetLabel.getter();
    v43 = sub_1D1B1312C(v41, v42, v53);

    *(v39 + 24) = v43;
    _os_log_impl(&dword_1D16EC000, v37, v38, "%s - %s: Autmation not enabled for: %s", v39, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v40, -1, -1);
    MEMORY[0x1D3893640](v39, -1, -1);
  }

  return 0;
}

uint64_t sub_1D1986640(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x746E696F70646E65;
    v6 = 0x7365725073657375;
    if (a1 != 2)
    {
      v6 = 0x4373746573657270;
    }

    if (a1)
    {
      v5 = 0xD000000000000019;
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
    v1 = 0xD000000000000015;
    v2 = 0xD000000000000012;
    if (a1 != 7)
    {
      v2 = 0x6F64617261766C61;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x746E696F70746573;
    if (a1 != 4)
    {
      v3 = 0xD000000000000015;
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

uint64_t sub_1D198679C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19A00AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19867C4(uint64_t a1)
{
  v2 = sub_1D199F910();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1986800(uint64_t a1)
{
  v2 = sub_1D199F910();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647F38, &qword_1D1E8A078);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D199F910();
  sub_1D1E6930C();
  LOBYTE(v23) = 0;
  type metadata accessor for EndpointPath(0);
  sub_1D19A13E0(&qword_1EC646B18, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticThermostatClusterGroup(0);
    LOBYTE(v23) = 1;
    sub_1D1E68EDC();
    LOBYTE(v23) = 2;
    sub_1D1E68EDC();
    LOBYTE(v23) = 3;
    type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
    sub_1D19A13E0(&qword_1EC647F48, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig, &protocol conformance descriptor for StaticThermostatClusterGroup.PresetsConfig);
    sub_1D1E68F1C();
    v27 = 4;
    type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
    sub_1D19A13E0(&qword_1EC647F50, type metadata accessor for StaticThermostatClusterGroup.SetpointConfig, &protocol conformance descriptor for StaticThermostatClusterGroup.SetpointConfig);
    sub_1D1E68F1C();
    v10 = (v3 + *(v9 + 36));
    v11 = v10[2];
    *v26 = v10[3];
    *&v26[9] = *(v10 + 57);
    v12 = *v10;
    v24 = v10[1];
    v25 = v11;
    v23 = v12;
    v22 = 5;
    sub_1D199F964();
    sub_1D1E68F1C();
    v13 = (v3 + *(v9 + 40));
    v14 = v13[3];
    v20 = v13[2];
    *v21 = v14;
    *&v21[9] = *(v13 + 57);
    v15 = v13[1];
    v18 = *v13;
    v19 = v15;
    v17[15] = 6;
    sub_1D199F9B8();
    sub_1D1E68F1C();
    LOBYTE(v18) = 7;
    sub_1D1E68E8C();
    LOBYTE(v18) = 8;
    type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
    sub_1D19A13E0(&qword_1EC647F68, type metadata accessor for StaticThermostatClusterGroup.Alvarado, &protocol conformance descriptor for StaticThermostatClusterGroup.Alvarado);
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticThermostatClusterGroup.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D19A13E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v1 + *(v3 + 20)));
  sub_1D1E6923C();
  v4 = type metadata accessor for StaticThermostatClusterGroup(0);
  sub_1D1E6922C();
  sub_1D1E6922C();
  StaticThermostatClusterGroup.PresetsConfig.hash(into:)(a1);
  StaticThermostatClusterGroup.SetpointConfig.hash(into:)(a1);
  v5 = (v1 + v4[9]);
  v35 = v5[2];
  v6 = *(v5 + 24);
  v7 = v5[4];
  v37 = *(v5 + 40);
  v8 = v5[6];
  v9 = *(v5 + 56);
  v10 = v5[8];
  v11 = *(v5 + 72);
  if (*(v5 + 8) == 1)
  {
    sub_1D1E6922C();
    if (!v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v33 = v4;
    v12 = v5[4];
    v13 = *(v5 + 56);
    v14 = v5[6];
    v15 = *(v5 + 72);
    v16 = v5[8];
    v17 = *v5;
    sub_1D1E6922C();
    v18 = v17;
    v10 = v16;
    v11 = v15;
    v8 = v14;
    v9 = v13;
    v7 = v12;
    v4 = v33;
    MEMORY[0x1D3892890](v18);
    if (!v6)
    {
LABEL_3:
      sub_1D1E6922C();
      MEMORY[0x1D3892890](v35);
      if (!v37)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_1D1E6922C();
  if (!v37)
  {
LABEL_4:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v7);
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1D1E6922C();
    if (!v11)
    {
      goto LABEL_6;
    }

    goto LABEL_11;
  }

LABEL_9:
  sub_1D1E6922C();
  if (v9)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v8);
  if (!v11)
  {
LABEL_6:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v10);
    goto LABEL_12;
  }

LABEL_11:
  sub_1D1E6922C();
LABEL_12:
  v19 = (v1 + v4[10]);
  v36 = v19[2];
  v20 = *(v19 + 24);
  v21 = v19[4];
  v38 = *(v19 + 40);
  v22 = v19[6];
  v23 = *(v19 + 56);
  v24 = v19[8];
  v25 = *(v19 + 72);
  if (*(v19 + 8) == 1)
  {
    sub_1D1E6922C();
    if (!v20)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v34 = v19[4];
    v26 = *(v19 + 56);
    v27 = v19[6];
    v28 = *(v19 + 72);
    v29 = v19[8];
    v30 = *v19;
    sub_1D1E6922C();
    v31 = v30;
    v24 = v29;
    v25 = v28;
    v22 = v27;
    v23 = v26;
    v21 = v34;
    MEMORY[0x1D3892890](v31);
    if (!v20)
    {
LABEL_14:
      sub_1D1E6922C();
      MEMORY[0x1D3892890](v36);
      if (!v38)
      {
        goto LABEL_15;
      }

      goto LABEL_20;
    }
  }

  sub_1D1E6922C();
  if (!v38)
  {
LABEL_15:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v21);
    if (!v23)
    {
      goto LABEL_16;
    }

LABEL_21:
    sub_1D1E6922C();
    if (!v25)
    {
      goto LABEL_17;
    }

    goto LABEL_22;
  }

LABEL_20:
  sub_1D1E6922C();
  if (v23)
  {
    goto LABEL_21;
  }

LABEL_16:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v22);
  if (!v25)
  {
LABEL_17:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v24);
    goto LABEL_23;
  }

LABEL_22:
  sub_1D1E6922C();
LABEL_23:
  if ((*(v1 + v4[11] + 1) & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return StaticThermostatClusterGroup.Alvarado.hash(into:)(a1);
}

uint64_t StaticThermostatClusterGroup.hashValue.getter()
{
  sub_1D1E6920C();
  StaticThermostatClusterGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v34 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  MEMORY[0x1EEE9AC00](v34);
  v33 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v8);
  v38 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647F70, &qword_1D1E8A080);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v32 - v10;
  v12 = type metadata accessor for StaticThermostatClusterGroup(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v41 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D199F910();
  v39 = v11;
  v16 = v53;
  sub_1D1E692FC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v41);
  }

  v17 = v7;
  v18 = v37;
  v19 = v36;
  LOBYTE(v49) = 0;
  sub_1D19A13E0(&qword_1EC646B80, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
  sub_1D1E68D7C();
  v20 = v14;
  sub_1D199FB14(v38, v14, type metadata accessor for EndpointPath);
  LOBYTE(v49) = 1;
  v21 = v19;
  *(v20 + v12[5]) = sub_1D1E68D3C() & 1;
  LOBYTE(v49) = 2;
  *(v20 + v12[6]) = sub_1D1E68D3C() & 1;
  LOBYTE(v49) = 3;
  sub_1D19A13E0(&qword_1EC647F78, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig, &protocol conformance descriptor for StaticThermostatClusterGroup.PresetsConfig);
  sub_1D1E68D7C();
  sub_1D199FB14(v17, v20 + v12[7], type metadata accessor for StaticThermostatClusterGroup.PresetsConfig);
  LOBYTE(v49) = 4;
  sub_1D19A13E0(&qword_1EC647F80, type metadata accessor for StaticThermostatClusterGroup.SetpointConfig, &protocol conformance descriptor for StaticThermostatClusterGroup.SetpointConfig);
  sub_1D1E68D7C();
  sub_1D199FB14(v18, v20 + v12[8], type metadata accessor for StaticThermostatClusterGroup.SetpointConfig);
  v48 = 5;
  sub_1D199FA6C();
  sub_1D1E68D7C();
  v23 = (v20 + v12[9]);
  v24 = v52[0];
  v23[2] = v51;
  v23[3] = v24;
  *(v23 + 57) = *(v52 + 9);
  v25 = v50;
  *v23 = v49;
  v23[1] = v25;
  v43 = 6;
  sub_1D199FAC0();
  sub_1D1E68D7C();
  v26 = (v20 + v12[10]);
  v27 = *v47;
  v26[2] = v46;
  v26[3] = v27;
  *(v26 + 57) = *&v47[9];
  v28 = v45;
  *v26 = v44;
  v26[1] = v28;
  v42 = 7;
  v29 = sub_1D1E68CEC();
  v30 = (v20 + v12[11]);
  *v30 = v29;
  v30[1] = HIBYTE(v29) & 1;
  v42 = 8;
  sub_1D19A13E0(&qword_1EC647F98, type metadata accessor for StaticThermostatClusterGroup.Alvarado, &protocol conformance descriptor for StaticThermostatClusterGroup.Alvarado);
  v31 = v33;
  sub_1D1E68D7C();
  (*(v21 + 8))(v39, v40);
  sub_1D199FB14(v31, v20 + v12[12], type metadata accessor for StaticThermostatClusterGroup.Alvarado);
  sub_1D19A1778(v20, v32, type metadata accessor for StaticThermostatClusterGroup);
  __swift_destroy_boxed_opaque_existential_1(v41);
  return sub_1D199FA0C(v20, type metadata accessor for StaticThermostatClusterGroup);
}

uint64_t sub_1D19878FC()
{
  sub_1D1E6920C();
  StaticThermostatClusterGroup.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1987940(uint64_t a1)
{
  sub_1D1E6920C();
  StaticThermostatClusterGroup.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.thermostatCluster.getter()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for ClusterPath(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1987A40, 0, 0);
}

uint64_t sub_1D1987A40()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1D1987B30;
  v5 = v0[4];

  return sub_1D1A092C4(v5);
}

uint64_t sub_1D1987B30(uint64_t a1)
{
  v3 = *(*v1 + 32);
  v6 = *v1;

  sub_1D199FA0C(v3, type metadata accessor for ClusterPath);

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t StaticThermostatClusterGroup.alvaradoCluster.getter()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for ClusterPath(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1987D00, 0, 0);
}

uint64_t sub_1D1987D00()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 29;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1D19A1E88;
  v5 = v0[4];

  return sub_1D1A092C4(v5);
}

uint64_t sub_1D1987DF8@<X0>(char a1@<W0>, uint64_t a2@<X8>)
{
  v4 = v2;
  sub_1D19A1778(v4, a2, type metadata accessor for EndpointPath);
  result = type metadata accessor for ClusterPath(0);
  *(a2 + *(result + 20)) = a1;
  return result;
}

uint64_t StaticThermostatClusterGroup.updateAdaptiveTemperatureEnabled(value:)(uint64_t a1)
{
  v3 = a1;
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_1D1987EE8;

  return StaticThermostatClusterGroup.updateActivityStateEnabled(value:)(v3);
}

uint64_t sub_1D1987EE8()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);
LABEL_8:

    return v4();
  }

  if (*(v2 + 48) != 1)
  {
    v4 = *(v3 + 8);
    goto LABEL_8;
  }

  v5 = swift_task_alloc();
  *(v2 + 32) = v5;
  *v5 = v3;
  v5[1] = sub_1D198807C;

  return StaticThermostatClusterGroup.updateFollowSystemMode(value:)(0);
}

uint64_t sub_1D198807C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = swift_task_alloc();
    *(v2 + 40) = v6;
    *v6 = v3;
    v6[1] = sub_1D17D0834;

    return StaticThermostatClusterGroup.updateIgnoresPredictedPresets(to:)(0);
  }
}

uint64_t StaticThermostatClusterGroup.updateActivityStateEnabled(value:)(char a1)
{
  *(v2 + 312) = v1;
  *(v2 + 576) = a1;
  v3 = type metadata accessor for StaticThermostatClusterGroup(0);
  *(v2 + 320) = v3;
  v4 = *(v3 - 8);
  *(v2 + 328) = v4;
  *(v2 + 336) = *(v4 + 64);
  *(v2 + 344) = swift_task_alloc();
  *(v2 + 352) = swift_task_alloc();
  *(v2 + 360) = type metadata accessor for EndpointPath(0);
  *(v2 + 368) = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  *(v2 + 376) = v5;
  *(v2 + 384) = *(v5 - 8);
  *(v2 + 392) = swift_task_alloc();
  *(v2 + 400) = type metadata accessor for ClusterPath(0);
  *(v2 + 408) = swift_task_alloc();
  *(v2 + 416) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1988390, 0, 0);
}

uint64_t sub_1D1988390()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[50];
  v4 = v0[47];
  v5 = v0[48];
  v7 = v0[45];
  v6 = v0[46];
  sub_1D19A1778(v0[39], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v3 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v5 + 32))(v2, v6, v4);
  v9 = swift_task_alloc();
  v0[53] = v9;
  *v9 = v0;
  v9[1] = sub_1D19884B0;
  v10 = v0[49];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D19884B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[34] = v2;
  v4[35] = a1;
  v4[36] = a2;
  v5 = v3[52];
  v6 = v3[49];
  v7 = v3[48];
  v8 = v3[47];
  v4[54] = a1;

  (*(v7 + 8))(v6, v8);
  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1988648, 0, 0);
}

uint64_t sub_1D1988648()
{
  v47 = v0;
  if (!*(v0 + 432))
  {
    if (qword_1EE07A0A8 == -1)
    {
LABEL_9:
      v23 = *(v0 + 344);
      v24 = *(v0 + 312);
      v25 = sub_1D1E6709C();
      __swift_project_value_buffer(v25, qword_1EE07A0B0);
      sub_1D19A1778(v24, v23, type metadata accessor for StaticThermostatClusterGroup);
      v26 = sub_1D1E6707C();
      v27 = sub_1D1E6833C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = *(v0 + 416);
        v29 = *(v0 + 400);
        v30 = *(v0 + 344);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v46 = v32;
        *v31 = 136315650;
        *(v31 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EC0B60, &v46);
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_1D1B1312C(0xD000000000000019, 0x80000001D1EC0B90, &v46);
        *(v31 + 22) = 2080;
        sub_1D19A1778(v30, v28, type metadata accessor for EndpointPath);
        *(v28 + *(v29 + 20)) = 19;
        v33 = ClusterPath.description.getter();
        v35 = v34;
        sub_1D199FA0C(v28, type metadata accessor for ClusterPath);
        sub_1D199FA0C(v30, type metadata accessor for StaticThermostatClusterGroup);
        v36 = sub_1D1B1312C(v33, v35, &v46);

        *(v31 + 24) = v36;
        _os_log_impl(&dword_1D16EC000, v26, v27, "%s: Unable to update %s because device in current home with path %s could not be found.", v31, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v32, -1, -1);
        MEMORY[0x1D3893640](v31, -1, -1);
      }

      else
      {
        v37 = *(v0 + 344);

        sub_1D199FA0C(v37, type metadata accessor for StaticThermostatClusterGroup);
      }

      v38 = *(v0 + 8);

      return v38();
    }

LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  v2 = *(v0 + 400);
  v1 = *(v0 + 408);
  v3 = *(v0 + 360);
  v4 = *(v0 + 312);
  v5 = *(v0 + 576);
  *(v0 + 440) = *(v0 + 288);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v7;
  v8 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v10;
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = v5;
  *(v0 + 448) = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v11 = *(v1 + *(v3 + 24));
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  v12 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v12;
  v15 = sub_1D171D15C(v11);
  v16 = v12[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_24;
  }

  v19 = v14;
  if (v12[3] >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
      v12 = v46;
    }
  }

  else
  {
    sub_1D172684C(v18, isUniquelyReferenced_nonNull_native);
    v12 = v46;
    v20 = sub_1D171D15C(v11);
    if ((v19 & 1) != (v21 & 1))
    {

      return sub_1D1E690FC();
    }

    v15 = v20;
  }

  *(v0 + 456) = v12;

  if ((v19 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v39 = *(v0 + 416);
  v40 = *(v0 + 400);
  v41 = *(v0 + 312);
  v42 = v12[7];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v42 + 8 * v15);
  *(v42 + 8 * v15) = 0x8000000000000000;
  sub_1D1753B88(v5, 0, 0x1313490002, v43);
  *(v42 + 8 * v15) = v46;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v41, v39, type metadata accessor for EndpointPath);
  *(v39 + *(v40 + 20)) = 19;
  v44 = swift_task_alloc();
  *(v0 + 464) = v44;
  *v44 = v0;
  v44[1] = sub_1D1988C7C;
  v45 = *(v0 + 416);

  return sub_1D1A092C4(v45);
}

uint64_t sub_1D1988C7C(uint64_t a1)
{
  v2 = *(*v1 + 416);
  *(*v1 + 472) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1988DB0, 0, 0);
}

uint64_t sub_1D1988DB0()
{
  v21 = v0;
  v2 = *(v0 + 448);
  v1 = *(v0 + 456);
  v3 = *(v0 + 352);
  v5 = *(v0 + 328);
  v4 = *(v0 + 336);
  v6 = *(v0 + 312);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  v17 = *(v0 + 432);
  sub_1D1A1456C(&v19, &v18);
  v7 = v18;
  *(v0 + 480) = v18;
  sub_1D19A1778(v6, v3, type metadata accessor for StaticThermostatClusterGroup);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 488) = v10;
  *(v10 + 16) = v17;
  sub_1D199FB14(v3, v10 + v8, type metadata accessor for StaticThermostatClusterGroup);
  *(v10 + v9) = v2;
  swift_unknownObjectRetain();
  v19 = 0xD00000000000001DLL;
  v20 = 0x80000001D1EC0A80;
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  v12 = v19;
  v13 = v20;
  *(v0 + 496) = v20;
  v14 = swift_task_alloc();
  *(v0 + 504) = v14;
  *v14 = v0;
  v14[1] = sub_1D1988FAC;
  v15 = *(v0 + 472);

  return sub_1D19167E4(0xD00000000000001ALL, 0x80000001D1EC0BB0, v15, v7, v12, v13, &unk_1D1E8A0D0, v10);
}

uint64_t sub_1D1988FAC()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  if (v0)
  {

    v3 = sub_1D1989244;
  }

  else
  {
    v4 = *(v2 + 472);

    v3 = sub_1D198910C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D198910C()
{
  if (*(v0 + 576) == 1)
  {
    v1 = swift_task_alloc();
    *(v0 + 520) = v1;
    *v1 = v0;
    v1[1] = sub_1D198947C;

    return StaticThermostatClusterGroup.setPrimaryFabric()();
  }

  else
  {

    swift_unknownObjectRelease();

    v3 = *(v0 + 8);

    return v3();
  }
}

uint64_t sub_1D1989244()
{
  v1 = *(v0 + 512);
  *(v0 + 296) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 368);
    v4 = *(v0 + 312);

    v5 = *(v0 + 304);
    sub_1D19A1778(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D199FB14(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 472);

  swift_unknownObjectRelease();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D198947C()
{
  *(*v1 + 528) = v0;

  if (v0)
  {

    v2 = sub_1D1989B60;
  }

  else
  {
    v2 = sub_1D1989598;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D1989598()
{
  v1 = *(*(v0 + 312) + *(*(v0 + 320) + 28) + 16);
  if (v1)
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v3 = 0;
      v4 = v2 - 1;
      v5 = MEMORY[0x1E69E7CC0];
      do
      {
        v6 = (v1 + 32 + (v3 << 6));
        v7 = (0xFE060504030201uLL >> (8 * byte_1F4D65720));
        v8 = (0xFE060504030201uLL >> (8 * byte_1F4D65721));
        v9 = (0xFE060504030201uLL >> (8 * byte_1F4D65722));
        v10 = (0xFE060504030201uLL >> (8 * byte_1F4D65723));
        v11 = v3;
        while (1)
        {
          if (v11 >= *(v1 + 16))
          {
            __break(1u);
            return;
          }

          v12 = *v6;
          v13 = v6[1];
          v14 = v6[3];
          *(v0 + 176) = v6[2];
          *(v0 + 192) = v14;
          *(v0 + 144) = v12;
          *(v0 + 160) = v13;
          v3 = v11 + 1;
          v15 = *(v0 + 160);
          if (v7 == (0xFE060504030201uLL >> (8 * v15)) || v8 == (0xFE060504030201uLL >> (8 * v15)) || v9 == (0xFE060504030201uLL >> (8 * v15)) || v10 == (0xFE060504030201uLL >> (8 * v15)))
          {
            break;
          }

          v6 += 4;
          ++v11;
          if (v2 == v3)
          {
            goto LABEL_20;
          }
        }

        sub_1D17806DC(v0 + 144, v0 + 208);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D178D694(0, *(v5 + 16) + 1, 1);
          v4 = v2 - 1;
        }

        v17 = *(v5 + 16);
        v16 = *(v5 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_1D178D694((v16 > 1), v17 + 1, 1);
          v4 = v2 - 1;
        }

        *(v5 + 16) = v17 + 1;
        v18 = (v5 + (v17 << 6));
        v19 = *(v0 + 144);
        v20 = *(v0 + 160);
        v21 = *(v0 + 192);
        v18[4] = *(v0 + 176);
        v18[5] = v21;
        v18[2] = v19;
        v18[3] = v20;
      }

      while (v4 != v11);
    }

    else
    {
      v5 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v5 = 0;
  }

LABEL_20:
  *(v0 + 536) = v5;

  v22 = swift_task_alloc();
  *(v0 + 544) = v22;
  *v22 = v0;
  v22[1] = sub_1D198981C;

  StaticThermostatClusterGroup.enablePresets(presets:)(v5);
}

uint64_t sub_1D198981C()
{
  v2 = *v1;
  *(v2 + 552) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D1989C10, 0, 0);
  }

  else
  {

    v3 = swift_task_alloc();
    *(v2 + 560) = v3;
    *v3 = v2;
    v3[1] = sub_1D198999C;

    return StaticThermostatClusterGroup.updateHoldPolicy(value:duration:)(1, 0, 1);
  }
}

uint64_t sub_1D198999C()
{
  *(*v1 + 568) = v0;

  if (v0)
  {
    v2 = sub_1D1989CCC;
  }

  else
  {
    v2 = sub_1D1989AB0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1989AB0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1989B60()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1989C10()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1989CCC()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StaticThermostatClusterGroup.updateFollowSystemMode(value:)(char a1)
{
  *(v2 + 184) = v1;
  *(v2 + 384) = a1;
  v3 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 + 64);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = type metadata accessor for EndpointPath(0);
  *(v2 + 232) = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  *(v2 + 240) = v4;
  *(v2 + 248) = *(v4 - 8);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = type metadata accessor for ClusterPath(0);
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1989F18, 0, 0);
}

uint64_t sub_1D1989F18()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  sub_1D19A1778(v0[23], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v3 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v5 + 32))(v2, v6, v4);
  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_1D198A038;
  v10 = v0[32];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D198A038(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = v2;
  v4[19] = a1;
  v4[20] = a2;
  v5 = v3[35];
  v6 = v3[32];
  v7 = v3[31];
  v8 = v3[30];
  v4[37] = a1;

  (*(v7 + 8))(v6, v8);
  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198A1D0, 0, 0);
}

uint64_t sub_1D198A1D0()
{
  v47 = v0;
  if (!*(v0 + 296))
  {
    if (qword_1EE07A0A8 == -1)
    {
LABEL_9:
      v23 = *(v0 + 208);
      v24 = *(v0 + 184);
      v25 = sub_1D1E6709C();
      __swift_project_value_buffer(v25, qword_1EE07A0B0);
      sub_1D19A1778(v24, v23, type metadata accessor for StaticThermostatClusterGroup);
      v26 = sub_1D1E6707C();
      v27 = sub_1D1E6833C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = *(v0 + 280);
        v29 = *(v0 + 264);
        v30 = *(v0 + 208);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v46 = v32;
        *v31 = 136315650;
        *(v31 + 4) = sub_1D1B1312C(0xD00000000000001ELL, 0x80000001D1EC0BD0, &v46);
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EC0BF0, &v46);
        *(v31 + 22) = 2080;
        sub_1D19A1778(v30, v28, type metadata accessor for EndpointPath);
        *(v28 + *(v29 + 20)) = 19;
        v33 = ClusterPath.description.getter();
        v35 = v34;
        sub_1D199FA0C(v28, type metadata accessor for ClusterPath);
        sub_1D199FA0C(v30, type metadata accessor for StaticThermostatClusterGroup);
        v36 = sub_1D1B1312C(v33, v35, &v46);

        *(v31 + 24) = v36;
        _os_log_impl(&dword_1D16EC000, v26, v27, "%s: Unable to update %s because device in current home with path %s could not be found.", v31, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v32, -1, -1);
        MEMORY[0x1D3893640](v31, -1, -1);
      }

      else
      {
        v37 = *(v0 + 208);

        sub_1D199FA0C(v37, type metadata accessor for StaticThermostatClusterGroup);
      }

      v38 = *(v0 + 8);

      return v38();
    }

LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = *(v0 + 184);
  v5 = *(v0 + 384);
  *(v0 + 304) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v7;
  v8 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v10;
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = v5;
  *(v0 + 312) = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v11 = *(v1 + *(v3 + 24));
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  v12 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v12;
  v15 = sub_1D171D15C(v11);
  v16 = v12[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_24;
  }

  v19 = v14;
  if (v12[3] >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
      v12 = v46;
    }
  }

  else
  {
    sub_1D172684C(v18, isUniquelyReferenced_nonNull_native);
    v12 = v46;
    v20 = sub_1D171D15C(v11);
    if ((v19 & 1) != (v21 & 1))
    {

      return sub_1D1E690FC();
    }

    v15 = v20;
  }

  *(v0 + 320) = v12;

  if ((v19 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v39 = *(v0 + 280);
  v40 = *(v0 + 264);
  v41 = *(v0 + 184);
  v42 = v12[7];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v42 + 8 * v15);
  *(v42 + 8 * v15) = 0x8000000000000000;
  sub_1D1753B88(v5, 0, 0x1313490012, v43);
  *(v42 + 8 * v15) = v46;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v41, v39, type metadata accessor for EndpointPath);
  *(v39 + *(v40 + 20)) = 19;
  v44 = swift_task_alloc();
  *(v0 + 328) = v44;
  *v44 = v0;
  v44[1] = sub_1D198A804;
  v45 = *(v0 + 280);

  return sub_1D1A092C4(v45);
}

uint64_t sub_1D198A804(uint64_t a1)
{
  v2 = *(*v1 + 280);
  *(*v1 + 336) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198A938, 0, 0);
}

uint64_t sub_1D198A938()
{
  v21 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  v17 = *(v0 + 296);
  sub_1D1A1456C(&v19, &v18);

  v7 = v18;
  *(v0 + 344) = v18;
  sub_1D19A1778(v6, v3, type metadata accessor for StaticThermostatClusterGroup);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 352) = v10;
  *(v10 + 16) = v17;
  sub_1D199FB14(v3, v10 + v8, type metadata accessor for StaticThermostatClusterGroup);
  *(v10 + v9) = v2;
  swift_unknownObjectRetain();
  v19 = 0xD00000000000001DLL;
  v20 = 0x80000001D1EC0A80;
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  v12 = v19;
  v13 = v20;
  *(v0 + 360) = v20;
  v14 = swift_task_alloc();
  *(v0 + 368) = v14;
  *v14 = v0;
  v14[1] = sub_1D198AB3C;
  v15 = *(v0 + 336);

  return sub_1D19167E4(0xD00000000000001ELL, 0x80000001D1EC0C10, v15, v7, v12, v13, &unk_1D1E8A0F8, v10);
}

uint64_t sub_1D198AB3C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {

    v3 = sub_1D19A1E70;
  }

  else
  {
    v4 = *(v2 + 336);

    v3 = sub_1D19A1E58;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t StaticThermostatClusterGroup.updateIgnoresPredictedPresets(to:)(char a1)
{
  *(v2 + 184) = v1;
  *(v2 + 384) = a1;
  v3 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 + 64);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = type metadata accessor for EndpointPath(0);
  *(v2 + 232) = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  *(v2 + 240) = v4;
  *(v2 + 248) = *(v4 - 8);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = type metadata accessor for ClusterPath(0);
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D198AE38, 0, 0);
}

uint64_t sub_1D198AE38()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  sub_1D19A1778(v0[23], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v3 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v5 + 32))(v2, v6, v4);
  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_1D198AF58;
  v10 = v0[32];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D198AF58(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = v2;
  v4[19] = a1;
  v4[20] = a2;
  v5 = v3[35];
  v6 = v3[32];
  v7 = v3[31];
  v8 = v3[30];
  v4[37] = a1;

  (*(v7 + 8))(v6, v8);
  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198B0F0, 0, 0);
}

uint64_t sub_1D198B0F0()
{
  v47 = v0;
  if (!*(v0 + 296))
  {
    if (qword_1EE07A0A8 == -1)
    {
LABEL_9:
      v23 = *(v0 + 208);
      v24 = *(v0 + 184);
      v25 = sub_1D1E6709C();
      __swift_project_value_buffer(v25, qword_1EE07A0B0);
      sub_1D19A1778(v24, v23, type metadata accessor for StaticThermostatClusterGroup);
      v26 = sub_1D1E6707C();
      v27 = sub_1D1E6833C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = *(v0 + 280);
        v29 = *(v0 + 264);
        v30 = *(v0 + 208);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v46 = v32;
        *v31 = 136315650;
        *(v31 + 4) = sub_1D1B1312C(0xD000000000000022, 0x80000001D1EC0C30, &v46);
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EC0BF0, &v46);
        *(v31 + 22) = 2080;
        sub_1D19A1778(v30, v28, type metadata accessor for EndpointPath);
        *(v28 + *(v29 + 20)) = 19;
        v33 = ClusterPath.description.getter();
        v35 = v34;
        sub_1D199FA0C(v28, type metadata accessor for ClusterPath);
        sub_1D199FA0C(v30, type metadata accessor for StaticThermostatClusterGroup);
        v36 = sub_1D1B1312C(v33, v35, &v46);

        *(v31 + 24) = v36;
        _os_log_impl(&dword_1D16EC000, v26, v27, "%s: Unable to update %s because device in current home with path %s could not be found.", v31, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v32, -1, -1);
        MEMORY[0x1D3893640](v31, -1, -1);
      }

      else
      {
        v37 = *(v0 + 208);

        sub_1D199FA0C(v37, type metadata accessor for StaticThermostatClusterGroup);
      }

      v38 = *(v0 + 8);

      return v38();
    }

LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = *(v0 + 184);
  v5 = *(v0 + 384);
  *(v0 + 304) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v7;
  v8 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v10;
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = v5;
  *(v0 + 312) = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v11 = *(v1 + *(v3 + 24));
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  v12 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v12;
  v15 = sub_1D171D15C(v11);
  v16 = v12[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_24;
  }

  v19 = v14;
  if (v12[3] >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
      v12 = v46;
    }
  }

  else
  {
    sub_1D172684C(v18, isUniquelyReferenced_nonNull_native);
    v12 = v46;
    v20 = sub_1D171D15C(v11);
    if ((v19 & 1) != (v21 & 1))
    {

      return sub_1D1E690FC();
    }

    v15 = v20;
  }

  *(v0 + 320) = v12;

  if ((v19 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v39 = *(v0 + 280);
  v40 = *(v0 + 264);
  v41 = *(v0 + 184);
  v42 = v12[7];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v42 + 8 * v15);
  *(v42 + 8 * v15) = 0x8000000000000000;
  sub_1D1753B88(v5, 0, 0x1313490013, v43);
  *(v42 + 8 * v15) = v46;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v41, v39, type metadata accessor for EndpointPath);
  *(v39 + *(v40 + 20)) = 19;
  v44 = swift_task_alloc();
  *(v0 + 328) = v44;
  *v44 = v0;
  v44[1] = sub_1D198B724;
  v45 = *(v0 + 280);

  return sub_1D1A092C4(v45);
}

uint64_t sub_1D198B724(uint64_t a1)
{
  v2 = *(*v1 + 280);
  *(*v1 + 336) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198B858, 0, 0);
}

uint64_t sub_1D198B858()
{
  v21 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  v17 = *(v0 + 296);
  sub_1D1A1456C(&v19, &v18);

  v7 = v18;
  *(v0 + 344) = v18;
  sub_1D19A1778(v6, v3, type metadata accessor for StaticThermostatClusterGroup);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 352) = v10;
  *(v10 + 16) = v17;
  sub_1D199FB14(v3, v10 + v8, type metadata accessor for StaticThermostatClusterGroup);
  *(v10 + v9) = v2;
  swift_unknownObjectRetain();
  v19 = 0xD00000000000001DLL;
  v20 = 0x80000001D1EC0A80;
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  v12 = v19;
  v13 = v20;
  *(v0 + 360) = v20;
  v14 = swift_task_alloc();
  *(v0 + 368) = v14;
  *v14 = v0;
  v14[1] = sub_1D198AB3C;
  v15 = *(v0 + 336);

  return sub_1D19167E4(0xD00000000000001CLL, 0x80000001D1EC0C60, v15, v7, v12, v13, &unk_1D1E8A108, v10);
}

uint64_t sub_1D198BA60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a1;
  v8[11] = type metadata accessor for ClusterPath(0);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D198BAFC, 0, 0);
}

uint64_t sub_1D198BAFC()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  ObjectType = swift_getObjectType();
  *(v6 + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[2] = v3;
  v8 = *(v5 + 56);

  v8(v1, 323551234, v0 + 2, ObjectType, v5);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t StaticThermostatClusterGroup.setPrimaryFabric()()
{
  v1[7] = v0;
  v2 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v1[8] = v2;
  v1[9] = *(v2 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for EndpointPath(0);
  v1[13] = swift_task_alloc();
  v3 = sub_1D1E66A7C();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = type metadata accessor for ClusterPath(0);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D198BDD8, 0, 0);
}

uint64_t sub_1D198BDD8()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  sub_1D19A1778(v0[7], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v4 + 32))(v3, v6, v5);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1D198BEF8;
  v10 = v0[16];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D198BEF8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[18];
  v6 = v3[16];
  v7 = v3[15];
  v8 = v3[14];
  v4[20] = a1;

  (*(v7 + 8))(v6, v8);
  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198C090, 0, 0);
}

uint64_t sub_1D198C090()
{
  v24 = v0;
  if (v0[20])
  {
    v2 = v0[17];
    v1 = v0[18];
    v3 = v0[7];
    v0[21] = v0[4];
    sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
    sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
    *(v1 + *(v2 + 20)) = 19;
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_1D198C45C;
    v5 = v0[18];

    return sub_1D1A092C4(v5);
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v7 = v0[10];
    v8 = v0[7];
    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    sub_1D19A1778(v8, v7, type metadata accessor for StaticThermostatClusterGroup);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[17];
      v12 = v0[18];
      v14 = v0[10];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_1D1B1312C(0xD000000000000012, 0x80000001D1EC0C80, &v23);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1D1B1312C(0xD000000000000023, 0x80000001D1EC0CA0, &v23);
      *(v15 + 22) = 2080;
      sub_1D19A1778(v14, v12, type metadata accessor for EndpointPath);
      *(v12 + *(v13 + 20)) = 19;
      v17 = ClusterPath.description.getter();
      v19 = v18;
      sub_1D199FA0C(v12, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v14, type metadata accessor for StaticThermostatClusterGroup);
      v20 = sub_1D1B1312C(v17, v19, &v23);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1D16EC000, v10, v11, "%s: Unable to update %s because device in current home with path %s could not be found.", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {
      v21 = v0[10];

      sub_1D199FA0C(v21, type metadata accessor for StaticThermostatClusterGroup);
    }

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1D198C45C(uint64_t a1)
{
  v2 = *(*v1 + 144);
  *(*v1 + 184) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198C590, 0, 0);
}

uint64_t sub_1D198C590()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v9 = *(v0 + 160);
  sub_1D19A1778(*(v0 + 56), v1, type metadata accessor for StaticThermostatClusterGroup);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 192) = v4;
  *(v4 + 16) = v9;
  sub_1D199FB14(v1, v4 + v3, type metadata accessor for StaticThermostatClusterGroup);
  swift_unknownObjectRetain();
  v5 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v5);

  *(v0 + 200) = 0x80000001D1EC0A80;
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_1D198C754;
  v7 = *(v0 + 184);

  return sub_1D19167E4(0xD000000000000017, 0x80000001D1EC0CD0, v7, 0, 0xD00000000000001DLL, 0x80000001D1EC0A80, &unk_1D1E8A118, v4);
}

uint64_t sub_1D198C754()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {

    v3 = sub_1D198C93C;
  }

  else
  {
    v4 = *(v2 + 184);

    v3 = sub_1D198C89C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D198C89C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D198C93C()
{
  v1 = *(v0 + 216);
  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 104);
    v4 = *(v0 + 56);

    v5 = *(v0 + 48);
    sub_1D19A1778(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D199FB14(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 184);

  swift_unknownObjectRelease();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t StaticThermostatClusterGroup.enablePresets(presets:)(uint64_t a1)
{
  v2[111] = v1;
  v2[110] = a1;
  v2[112] = type metadata accessor for StaticThermostatClusterGroup(0);
  v2[113] = swift_task_alloc();
  v2[114] = swift_task_alloc();
  v2[115] = swift_task_alloc();
  v2[116] = swift_task_alloc();
  v2[117] = type metadata accessor for EndpointPath(0);
  v2[118] = swift_task_alloc();
  v3 = sub_1D1E66A7C();
  v2[119] = v3;
  v2[120] = *(v3 - 8);
  v2[121] = swift_task_alloc();
  v2[122] = type metadata accessor for ClusterPath(0);
  v2[123] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D198CCE4, 0, 0);
}

uint64_t sub_1D198CCE4()
{
  v1 = v0[110];
  if (v1 && (v2 = *(v1 + 16), (v0[124] = v2) != 0))
  {
    v3 = v0[123];
    v4 = v0[122];
    v5 = v0[121];
    v6 = v0[120];
    v7 = v0[119];
    v8 = v0[118];
    v9 = v0[117];
    sub_1D19A1778(v0[111], v3, type metadata accessor for EndpointPath);
    *(v3 + *(v4 + 20)) = 19;
    v10 = *(v3 + *(v9 + 20));
    sub_1D19A1778(v3, v8, type metadata accessor for EndpointPath);
    (*(v6 + 32))(v5, v8, v7);
    v11 = swift_task_alloc();
    v0[125] = v11;
    *v11 = v0;
    v11[1] = sub_1D198CEB4;
    v12 = v0[121];

    return sub_1D1A0A508(v10, v12);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1D198CEB4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[102] = v2;
  v4[103] = a1;
  v4[104] = a2;
  v5 = v3[123];
  v6 = v3[121];
  v7 = v3[120];
  v8 = v3[119];
  v4[126] = a1;

  (*(v7 + 8))(v6, v8);
  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198D050, 0, 0);
}

uint64_t sub_1D198D050()
{
  v147 = v0;
  if (!*(v0 + 1008))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v35 = *(v0 + 912);
    v36 = *(v0 + 904);
    v37 = *(v0 + 888);
    v38 = sub_1D1E6709C();
    __swift_project_value_buffer(v38, qword_1EE07A0B0);
    sub_1D19A1778(v37, v35, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D19A1778(v37, v36, type metadata accessor for StaticThermostatClusterGroup);
    v39 = sub_1D1E6707C();
    v40 = sub_1D1E6833C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = *(v0 + 984);
      v42 = *(v0 + 976);
      v43 = *(v0 + 912);
      v134 = *(v0 + 904);
      v44 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v146[0] = v141;
      *v44 = 136315650;
      v142 = 0xD00000000000001DLL;
      v143 = 0x80000001D1EC0A80;
      sub_1D19A1778(v43, v41, type metadata accessor for EndpointPath);
      *(v41 + *(v42 + 20)) = 19;
      v136 = v40;
      v45 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v45);

      sub_1D199FA0C(v41, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v43, type metadata accessor for StaticThermostatClusterGroup);
      v46 = sub_1D1B1312C(v142, v143, v146);

      *(v44 + 4) = v46;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC0CF0, v146);
      *(v44 + 22) = 2082;
      sub_1D19A1778(v134, v41, type metadata accessor for EndpointPath);
      *(v41 + *(v42 + 20)) = 19;
      v47 = ClusterPath.description.getter();
      v49 = v48;
      sub_1D199FA0C(v41, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v134, type metadata accessor for StaticThermostatClusterGroup);
      v50 = sub_1D1B1312C(v47, v49, v146);

      *(v44 + 24) = v50;
      _os_log_impl(&dword_1D16EC000, v39, v136, "[%s]-%s: Unable to update preset info for presets because device in current home with path %{public}s could not be found.", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v141, -1, -1);
      MEMORY[0x1D3893640](v44, -1, -1);

      goto LABEL_79;
    }

    v80 = *(v0 + 912);
    v81 = *(v0 + 904);

    sub_1D199FA0C(v81, type metadata accessor for StaticThermostatClusterGroup);
    v82 = v80;
    goto LABEL_78;
  }

  v1 = *(v0 + 888);
  v2 = v1 + *(*(v0 + 896) + 28);
  if (!*(v2 + 24))
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
      v1 = *(v0 + 888);
    }

    v69 = *(v0 + 920);
    v70 = sub_1D1E6709C();
    __swift_project_value_buffer(v70, qword_1EE07A0B0);
    sub_1D19A1778(v1, v69, type metadata accessor for StaticThermostatClusterGroup);
    v71 = sub_1D1E6707C();
    v72 = sub_1D1E6833C();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = *(v0 + 984);
      v74 = *(v0 + 976);
      v75 = *(v0 + 920);
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v146[0] = v77;
      *v76 = 136315394;
      v142 = 0xD00000000000001DLL;
      v143 = 0x80000001D1EC0A80;
      sub_1D19A1778(v75, v73, type metadata accessor for EndpointPath);
      *(v73 + *(v74 + 20)) = 19;
      v78 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v78);

      sub_1D199FA0C(v73, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v75, type metadata accessor for StaticThermostatClusterGroup);
      v79 = sub_1D1B1312C(v142, v143, v146);

      *(v76 + 4) = v79;
      *(v76 + 12) = 2080;
      *(v76 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC0CF0, v146);
      _os_log_impl(&dword_1D16EC000, v71, v72, "[%s]-%s: Unable to update preset info because no presets info were found.", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v77, -1, -1);
      MEMORY[0x1D3893640](v76, -1, -1);
      swift_unknownObjectRelease();

      goto LABEL_79;
    }

    v126 = *(v0 + 920);
    swift_unknownObjectRelease();

    v82 = v126;
LABEL_78:
    sub_1D199FA0C(v82, type metadata accessor for StaticThermostatClusterGroup);
LABEL_79:

    v127 = *(v0 + 8);

    return v127();
  }

  v130 = *(v2 + 24);
  v131 = *(v0 + 1008);
  v128 = v1 + *(*(v0 + 896) + 28);
  v129 = *(v0 + 832);
  v3 = *(v0 + 992);
  v4 = *(v0 + 880);
  v142 = MEMORY[0x1E69E7CC0];
  sub_1D178D8B8(0, v3, 0);
  v5 = 0;
  v6 = v142;
  v7 = (v4 + 64);
  do
  {
    v8 = *(v7 - 1);
    v9 = *v7;
    sub_1D1771B38(v8, *v7);
    v142 = v6;
    v11 = *(v6 + 16);
    v10 = *(v6 + 24);
    if (v11 >= v10 >> 1)
    {
      sub_1D178D8B8((v10 > 1), v11 + 1, 1);
      v6 = v142;
    }

    v7 += 8;
    v12 = *(v0 + 992);
    ++v5;
    *(v6 + 16) = v11 + 1;
    v13 = v6 + 16 * v11;
    *(v13 + 32) = v8;
    *(v13 + 40) = v9;
  }

  while (v5 != v12);
  v14 = 0;
  v15 = v4 + 32;
  v16 = MEMORY[0x1E69E7CC0];
  v133 = v15;
  do
  {
    v135 = v16;
    v140 = v6;
    v17 = (v15 + (v14 << 6));
    v18 = v14;
    while (1)
    {
      if (v18 >= *(v0 + 992))
      {
        __break(1u);
LABEL_83:
        __break(1u);
LABEL_84:
        swift_once();
        goto LABEL_54;
      }

      v19 = *v17;
      v20 = v17[1];
      v21 = v17[3];
      *(v0 + 208) = v17[2];
      *(v0 + 224) = v21;
      *(v0 + 176) = v19;
      *(v0 + 192) = v20;
      v14 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        goto LABEL_83;
      }

      v22 = v6;
      v24 = *(v0 + 200);
      v23 = *(v0 + 208);
      *(v0 + 840) = v24;
      *(v0 + 848) = v23;
      v25 = swift_task_alloc();
      *(v25 + 16) = v0 + 840;
      sub_1D17806DC(v0 + 176, v0 + 240);
      sub_1D1771B38(v24, v23);
      v15 = sub_1D18B5E18(sub_1D19A0064, v25, v22);
      sub_1D1716AA4(v24, v23);

      if (v15)
      {
        break;
      }

      v26 = *(v0 + 992);
      sub_1D1780738(v0 + 176);
      ++v18;
      v17 += 4;
      v27 = v14 == v26;
      v6 = v140;
      if (v27)
      {
        v16 = v135;
        goto LABEL_25;
      }
    }

    v16 = v135;
    v142 = v135;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D178D694(0, *(v135 + 16) + 1, 1);
      v16 = v142;
    }

    v6 = v140;
    v15 = v133;
    v29 = *(v16 + 16);
    v28 = *(v16 + 24);
    if (v29 >= v28 >> 1)
    {
      sub_1D178D694((v28 > 1), v29 + 1, 1);
      v6 = v140;
      v16 = v142;
    }

    v30 = *(v0 + 992);
    *(v16 + 16) = v29 + 1;
    v31 = (v16 + (v29 << 6));
    v32 = *(v0 + 176);
    v33 = *(v0 + 192);
    v34 = *(v0 + 224);
    v31[4] = *(v0 + 208);
    v31[5] = v34;
    v31[2] = v32;
    v31[3] = v33;
  }

  while (v14 != v30);
LABEL_25:
  v51 = *(v16 + 16);
  if (v51)
  {
    v142 = MEMORY[0x1E69E7CC0];
    sub_1D178CD24(0, v51, 0);
    v15 = v142;
    v52 = v51 - 1;
    v53 = 32;
    for (i = v16; ; v16 = i)
    {
      v54 = *(v16 + v53);
      v55 = *(v16 + v53 + 16);
      v56 = *(v16 + v53 + 48);
      *(v0 + 336) = *(v16 + v53 + 32);
      *(v0 + 352) = v56;
      *(v0 + 304) = v54;
      *(v0 + 320) = v55;
      v57 = *(v0 + 320);
      v58 = v0 + 304;
      if (v57 <= 2)
      {
        if (!*(v0 + 320))
        {
          sub_1D17806DC(v58, v0 + 752);
          v59 = "HFThermostatPreset_Away";
          goto LABEL_37;
        }

        if (v57 == 1)
        {
          sub_1D17806DC(v58, v0 + 688);
          v59 = "HFThermostatPreset_Sleep";
          goto LABEL_37;
        }

        sub_1D17806DC(v58, v0 + 624);
        v60 = 0xD000000000000018;
        v61 = "HFThermostatPreset_Wake";
      }

      else if (*(v0 + 320) > 4u)
      {
        if (v57 == 5)
        {
          sub_1D17806DC(v58, v0 + 432);
          v60 = 0xD00000000000001FLL;
          v61 = "XCTestConfigurationFilePath";
        }

        else
        {
          sub_1D17806DC(v58, v0 + 368);
          v60 = 0xD00000000000001ELL;
          v61 = "enablePresets(presets:)";
        }
      }

      else
      {
        if (v57 == 3)
        {
          sub_1D17806DC(v58, v0 + 560);
          v59 = "HFThermostatPreset_Vacation";
LABEL_37:
          v62 = v59 | 0x8000000000000000;
          v60 = 0xD000000000000017;
          goto LABEL_42;
        }

        sub_1D17806DC(v58, v0 + 496);
        v60 = 0xD00000000000001BLL;
        v61 = "HFThermostatPreset_GoingToSleep";
      }

      v62 = v61 | 0x8000000000000000;
LABEL_42:
      v63 = static String.hfLocalized(_:)(v60, v62);
      v65 = v64;
      sub_1D1780738(v0 + 304);
      v142 = v15;
      v67 = *(v15 + 16);
      v66 = *(v15 + 24);
      if (v67 >= v66 >> 1)
      {
        sub_1D178CD24((v66 > 1), v67 + 1, 1);
        v15 = v142;
      }

      *(v15 + 16) = v67 + 1;
      v68 = v15 + 16 * v67;
      *(v68 + 32) = v63;
      *(v68 + 40) = v65;
      if (!v52)
      {

        goto LABEL_53;
      }

      --v52;
      v53 += 64;
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
LABEL_53:
  if (qword_1EE07A0A8 != -1)
  {
    goto LABEL_84;
  }

LABEL_54:
  v83 = *(v0 + 928);
  v84 = *(v0 + 888);
  v85 = sub_1D1E6709C();
  __swift_project_value_buffer(v85, qword_1EE07A0B0);
  sub_1D19A1778(v84, v83, type metadata accessor for StaticThermostatClusterGroup);

  v86 = sub_1D1E6707C();
  v87 = sub_1D1E6835C();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = *(v0 + 984);
    v89 = *(v0 + 976);
    v90 = *(v0 + 928);
    v91 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v146[0] = v138;
    *v91 = 136315650;
    v142 = 0xD00000000000001DLL;
    v143 = 0x80000001D1EC0A80;
    sub_1D19A1778(v90, v88, type metadata accessor for EndpointPath);
    *(v88 + *(v89 + 20)) = 19;
    v92 = ClusterPath.description.getter();
    MEMORY[0x1D3890F70](v92);

    sub_1D199FA0C(v88, type metadata accessor for ClusterPath);
    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    sub_1D199FA0C(v90, type metadata accessor for StaticThermostatClusterGroup);
    v93 = sub_1D1B1312C(v142, v143, v146);

    *(v91 + 4) = v93;
    *(v91 + 12) = 2080;
    *(v91 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC0CF0, v146);
    *(v91 + 22) = 2080;
    *(v0 + 872) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
    sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640, MEMORY[0x1E69E6310]);
    v94 = sub_1D1E6770C();
    v96 = v95;

    v97 = sub_1D1B1312C(v94, v96, v146);

    *(v91 + 24) = v97;
    _os_log_impl(&dword_1D16EC000, v86, v87, "[%s]-%s: Enabling presets: [%s]", v91, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v138, -1, -1);
    MEMORY[0x1D3893640](v91, -1, -1);
  }

  else
  {
    v98 = *(v0 + 928);

    sub_1D199FA0C(v98, type metadata accessor for StaticThermostatClusterGroup);
  }

  v99 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v100 = *(v130 + 16);
  if (v100)
  {
    v132 = *(v128 + *(v99 + 80)) + 1;
    v101 = MEMORY[0x1E69E7CC0];
    v102 = (v130 + 49);
    do
    {
      v139 = v101;
      v103 = *(v102 - 17);
      v104 = *(v102 - 9);
      v105 = *(v102 - 1);
      v106 = *v102;
      *(v0 + 856) = v103;
      *(v0 + 864) = v104;
      v107 = swift_task_alloc();
      *(v107 + 16) = v0 + 856;
      sub_1D1771B38(v103, v104);
      sub_1D1771B38(v103, v104);
      v108 = sub_1D18B5E18(sub_1D19A1E8C, v107, v140);
      sub_1D1716AA4(v103, v104);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
      if (v108)
      {
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D1E739C0;
        *(inited + 32) = sub_1D1E6781C();
        *(inited + 40) = v110;
        v142 = v103;
        v143 = v104;
        v144 = v132;
        v145 = 1;
        sub_1D1771B38(v103, v104);
        v111 = sub_1D19B6988(&v142);
        *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
        *(inited + 48) = v111;
        v112 = sub_1D18D6E78(inited);
        swift_setDeallocating();
        sub_1D1741A30(inited + 32, &qword_1EC646228, &qword_1D1E8A0C0);
        v101 = v139;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1D177D340(0, v139[2] + 1, 1, v139);
        }

        v114 = v101[2];
        v113 = v101[3];
        v115 = v114 + 1;
        if (v114 >= v113 >> 1)
        {
          v101 = sub_1D177D340((v113 > 1), v114 + 1, 1, v101);
        }

        sub_1D1716AA4(v103, v104);
      }

      else
      {
        v116 = swift_initStackObject();
        *(v116 + 16) = xmmword_1D1E739C0;
        *(v116 + 32) = sub_1D1E6781C();
        *(v116 + 40) = v117;
        v142 = v103;
        v143 = v104;
        v144 = v105;
        v145 = v106;
        v118 = sub_1D19B6988(&v142);
        *(v116 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
        *(v116 + 48) = v118;
        v112 = sub_1D18D6E78(v116);
        swift_setDeallocating();
        sub_1D1741A30(v116 + 32, &qword_1EC646228, &qword_1D1E8A0C0);
        v101 = v139;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v101 = sub_1D177D340(0, v139[2] + 1, 1, v139);
        }

        v114 = v101[2];
        v119 = v101[3];
        v115 = v114 + 1;
        if (v114 >= v119 >> 1)
        {
          v101 = sub_1D177D340((v119 > 1), v114 + 1, 1, v101);
        }
      }

      sub_1D1716AA4(v103, v104);
      v101[2] = v115;
      v101[v114 + 4] = v112;
      v102 += 24;
      --v100;
    }

    while (v100);
  }

  else
  {
    v101 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 1016) = v101;

  v120 = [objc_opt_self() processInfo];
  v121 = [v120 environment];

  v122 = sub_1D1E675FC();
  if (*(v122 + 16))
  {
    sub_1D171D2F0(0xD00000000000001BLL, 0x80000001D1EC0D30);
    if (v123)
    {

      swift_unknownObjectRelease();

      goto LABEL_79;
    }
  }

  v124 = swift_task_alloc();
  *(v0 + 1024) = v124;
  *v124 = v0;
  v124[1] = sub_1D198E240;

  return StaticThermostatClusterGroup.updatePresetsInfo(presetInfo:device:)(v101, v131, v129);
}

uint64_t sub_1D198E240()
{
  *(*v1 + 1032) = v0;

  if (v0)
  {
    v2 = sub_1D198E420;
  }

  else
  {

    v2 = sub_1D198E35C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D198E35C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D198E420()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StaticThermostatClusterGroup.updateHoldPolicy(value:duration:)(char a1, uint64_t a2, char a3)
{
  *(v4 + 235) = a3;
  *(v4 + 56) = a2;
  *(v4 + 64) = v3;
  *(v4 + 234) = a1;
  v5 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  *(v4 + 72) = v5;
  *(v4 + 80) = *(v5 + 64);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = type metadata accessor for EndpointPath(0);
  *(v4 + 112) = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  *(v4 + 120) = v6;
  *(v4 + 128) = *(v6 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = type metadata accessor for ClusterPath(0);
  *(v4 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D198E690, 0, 0);
}

uint64_t sub_1D198E690()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[16];
  v3 = v0[17];
  v6 = v0[14];
  v5 = v0[15];
  v7 = v0[13];
  sub_1D19A1778(v0[8], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v4 + 32))(v3, v6, v5);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = sub_1D198E7B0;
  v10 = v0[17];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D198E7B0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[19];
  v6 = v3[17];
  v7 = v3[16];
  v8 = v3[15];
  v4[21] = a1;

  (*(v7 + 8))(v6, v8);
  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198E948, 0, 0);
}

void sub_1D198E948()
{
  v25 = v0;
  if (*(v0 + 168))
  {
    v1 = *(v0 + 235);
    *(v0 + 176) = *(v0 + 32);
    if (v1)
    {
      LOWORD(v2) = 0;
LABEL_10:
      *(v0 + 232) = v2;
      v18 = *(v0 + 144);
      v17 = *(v0 + 152);
      v19 = *(v0 + 64);
      sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
      sub_1D19A1778(v19, v17, type metadata accessor for EndpointPath);
      *(v17 + *(v18 + 20)) = 19;
      v20 = swift_task_alloc();
      *(v0 + 184) = v20;
      *v20 = v0;
      v20[1] = sub_1D198ED40;
      v21 = *(v0 + 152);

      sub_1D1A092C4(v21);
      return;
    }

    v2 = *(v0 + 56);
    if ((v2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v2 >> 16))
    {
      goto LABEL_10;
    }

    __break(1u);
    return;
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EE07A0B0);
  sub_1D19A1778(v4, v3, type metadata accessor for StaticThermostatClusterGroup);
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6833C();
  if (os_log_type_enabled(v6, v7))
  {
    v9 = *(v0 + 144);
    v8 = *(v0 + 152);
    v10 = *(v0 + 88);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v24 = v12;
    *v11 = 136315650;
    *(v11 + 4) = sub_1D1B1312C(0xD000000000000021, 0x80000001D1EC0E10, &v24);
    *(v11 + 12) = 2080;
    *(v11 + 14) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EC0E40, &v24);
    *(v11 + 22) = 2080;
    sub_1D19A1778(v10, v8, type metadata accessor for EndpointPath);
    *(v8 + *(v9 + 20)) = 19;
    v13 = ClusterPath.description.getter();
    v15 = v14;
    sub_1D199FA0C(v8, type metadata accessor for ClusterPath);
    sub_1D199FA0C(v10, type metadata accessor for StaticThermostatClusterGroup);
    v16 = sub_1D1B1312C(v13, v15, &v24);

    *(v11 + 24) = v16;
    _os_log_impl(&dword_1D16EC000, v6, v7, "%s: Unable to update %s because device in current home with path %s could not be found.", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v12, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  else
  {
    v22 = *(v0 + 88);

    sub_1D199FA0C(v22, type metadata accessor for StaticThermostatClusterGroup);
  }

  v23 = *(v0 + 8);

  v23();
}

uint64_t sub_1D198ED40(uint64_t a1)
{
  v2 = *(*v1 + 152);
  *(*v1 + 192) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198EE74, 0, 0);
}

uint64_t sub_1D198EE74()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 96);
  v4 = *(v0 + 72);
  v3 = *(v0 + 80);
  v5 = *(v0 + 235);
  v6 = *(v0 + 234);
  v15 = *(v0 + 168);
  sub_1D19A1778(*(v0 + 64), v2, type metadata accessor for StaticThermostatClusterGroup);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = (v3 + v7 + 1) & 0xFFFFFFFFFFFFFFFELL;
  v9 = swift_allocObject();
  *(v0 + 200) = v9;
  *(v9 + 16) = v15;
  sub_1D199FB14(v2, v9 + v7, type metadata accessor for StaticThermostatClusterGroup);
  v10 = v9 + v8;
  *v10 = v6;
  *(v10 + 2) = v1;
  *(v10 + 4) = v5 & 1;
  swift_unknownObjectRetain();
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  *(v0 + 208) = 0x80000001D1EC0A80;
  v12 = swift_task_alloc();
  *(v0 + 216) = v12;
  *v12 = v0;
  v12[1] = sub_1D198F074;
  v13 = *(v0 + 192);

  return sub_1D19167E4(0xD000000000000010, 0x80000001D1EC0E60, v13, 0, 0xD00000000000001DLL, 0x80000001D1EC0A80, &unk_1D1E8A140, v9);
}

uint64_t sub_1D198F074()
{
  v2 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_1D198F240;
  }

  else
  {
    v4 = *(v2 + 192);

    v3 = sub_1D198F1A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D198F1A0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D198F240()
{
  v1 = *(v0 + 224);

  *(v0 + 40) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 112);
    v4 = *(v0 + 64);

    v5 = *(v0 + 48);
    sub_1D19A1778(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D199FB14(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 192);

  swift_unknownObjectRelease();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t StaticThermostatClusterGroup.updateAlvaradoEnabled(value:)(char a1)
{
  *(v2 + 184) = v1;
  *(v2 + 384) = a1;
  v3 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  *(v2 + 192) = v3;
  *(v2 + 200) = *(v3 + 64);
  *(v2 + 208) = swift_task_alloc();
  *(v2 + 216) = swift_task_alloc();
  *(v2 + 224) = type metadata accessor for EndpointPath(0);
  *(v2 + 232) = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  *(v2 + 240) = v4;
  *(v2 + 248) = *(v4 - 8);
  *(v2 + 256) = swift_task_alloc();
  *(v2 + 264) = type metadata accessor for ClusterPath(0);
  *(v2 + 272) = swift_task_alloc();
  *(v2 + 280) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D198F618, 0, 0);
}

uint64_t sub_1D198F618()
{
  v1 = v0[35];
  v2 = v0[32];
  v3 = v0[33];
  v4 = v0[30];
  v5 = v0[31];
  v7 = v0[28];
  v6 = v0[29];
  sub_1D19A1778(v0[23], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v3 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v5 + 32))(v2, v6, v4);
  v9 = swift_task_alloc();
  v0[36] = v9;
  *v9 = v0;
  v9[1] = sub_1D198F738;
  v10 = v0[32];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D198F738(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[18] = v2;
  v4[19] = a1;
  v4[20] = a2;
  v5 = v3[35];
  v6 = v3[32];
  v7 = v3[31];
  v8 = v3[30];
  v4[37] = a1;

  (*(v7 + 8))(v6, v8);
  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D198F8D0, 0, 0);
}

uint64_t sub_1D198F8D0()
{
  v47 = v0;
  if (!*(v0 + 296))
  {
    if (qword_1EE07A0A8 == -1)
    {
LABEL_9:
      v23 = *(v0 + 208);
      v24 = *(v0 + 184);
      v25 = sub_1D1E6709C();
      __swift_project_value_buffer(v25, qword_1EE07A0B0);
      sub_1D19A1778(v24, v23, type metadata accessor for StaticThermostatClusterGroup);
      v26 = sub_1D1E6707C();
      v27 = sub_1D1E6833C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = *(v0 + 280);
        v29 = *(v0 + 264);
        v30 = *(v0 + 208);
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        v46 = v32;
        *v31 = 136315650;
        *(v31 + 4) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EC0E80, &v46);
        *(v31 + 12) = 2080;
        *(v31 + 14) = sub_1D1B1312C(0xD000000000000014, 0x80000001D1EC0EA0, &v46);
        *(v31 + 22) = 2080;
        sub_1D19A1778(v30, v28, type metadata accessor for EndpointPath);
        *(v28 + *(v29 + 20)) = 19;
        v33 = ClusterPath.description.getter();
        v35 = v34;
        sub_1D199FA0C(v28, type metadata accessor for ClusterPath);
        sub_1D199FA0C(v30, type metadata accessor for StaticThermostatClusterGroup);
        v36 = sub_1D1B1312C(v33, v35, &v46);

        *(v31 + 24) = v36;
        _os_log_impl(&dword_1D16EC000, v26, v27, "%s: Unable to update %s because device in current home with path %s could not be found.", v31, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v32, -1, -1);
        MEMORY[0x1D3893640](v31, -1, -1);
      }

      else
      {
        v37 = *(v0 + 208);

        sub_1D199FA0C(v37, type metadata accessor for StaticThermostatClusterGroup);
      }

      v38 = *(v0 + 8);

      return v38();
    }

LABEL_24:
    swift_once();
    goto LABEL_9;
  }

  v2 = *(v0 + 264);
  v1 = *(v0 + 272);
  v3 = *(v0 + 224);
  v4 = *(v0 + 184);
  v5 = *(v0 + 384);
  *(v0 + 304) = *(v0 + 160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v7;
  v8 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v10;
  *(inited + 120) = MEMORY[0x1E69E6370];
  *(inited + 96) = v5;
  *(v0 + 312) = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 29;
  v11 = *(v1 + *(v3 + 24));
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  v12 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v46 = v12;
  v15 = sub_1D171D15C(v11);
  v16 = v12[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_24;
  }

  v19 = v14;
  if (v12[3] >= v18)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
      v12 = v46;
    }
  }

  else
  {
    sub_1D172684C(v18, isUniquelyReferenced_nonNull_native);
    v12 = v46;
    v20 = sub_1D171D15C(v11);
    if ((v19 & 1) != (v21 & 1))
    {

      return sub_1D1E690FC();
    }

    v15 = v20;
  }

  *(v0 + 320) = v12;

  if ((v19 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v39 = *(v0 + 280);
  v40 = *(v0 + 264);
  v41 = *(v0 + 184);
  v42 = v12[7];
  v43 = swift_isUniquelyReferenced_nonNull_native();
  v46 = *(v42 + 8 * v15);
  *(v42 + 8 * v15) = 0x8000000000000000;
  sub_1D1753B88(v5, 0, 0x1D00000000, v43);
  *(v42 + 8 * v15) = v46;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v41, v39, type metadata accessor for EndpointPath);
  *(v39 + *(v40 + 20)) = 29;
  v44 = swift_task_alloc();
  *(v0 + 328) = v44;
  *v44 = v0;
  v44[1] = sub_1D198FF00;
  v45 = *(v0 + 280);

  return sub_1D1A092C4(v45);
}

uint64_t sub_1D198FF00(uint64_t a1)
{
  v2 = *(*v1 + 280);
  *(*v1 + 336) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1990034, 0, 0);
}

uint64_t sub_1D1990034()
{
  v21 = v0;
  v2 = *(v0 + 312);
  v1 = *(v0 + 320);
  v3 = *(v0 + 216);
  v5 = *(v0 + 192);
  v4 = *(v0 + 200);
  v6 = *(v0 + 184);
  v18 = MEMORY[0x1E69E7CC0];
  v19 = v1;
  v17 = *(v0 + 296);
  sub_1D1A1456C(&v19, &v18);

  v7 = v18;
  *(v0 + 344) = v18;
  sub_1D19A1778(v6, v3, type metadata accessor for StaticThermostatClusterGroup);
  v8 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v9 = (v4 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 352) = v10;
  *(v10 + 16) = v17;
  sub_1D199FB14(v3, v10 + v8, type metadata accessor for StaticThermostatClusterGroup);
  *(v10 + v9) = v2;
  swift_unknownObjectRetain();
  v19 = 0xD00000000000001DLL;
  v20 = 0x80000001D1EC0A80;
  v11 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v11);

  v12 = v19;
  v13 = v20;
  *(v0 + 360) = v20;
  v14 = swift_task_alloc();
  *(v0 + 368) = v14;
  *v14 = v0;
  v14[1] = sub_1D199023C;
  v15 = *(v0 + 336);

  return sub_1D19167E4(0xD000000000000015, 0x80000001D1EC0EC0, v15, v7, v12, v13, &unk_1D1E8A158, v10);
}

uint64_t sub_1D199023C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {

    v3 = sub_1D199044C;
  }

  else
  {
    v4 = *(v2 + 336);

    v3 = sub_1D199039C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D199039C()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D199044C()
{
  v1 = *(v0 + 376);
  *(v0 + 168) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 232);
    v4 = *(v0 + 184);

    v5 = *(v0 + 176);
    sub_1D19A1778(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D199FB14(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 336);

  swift_unknownObjectRelease();

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D1990688(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a1;
  v8[11] = type metadata accessor for ClusterPath(0);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1990724, 0, 0);
}

uint64_t sub_1D1990724()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  ObjectType = swift_getObjectType();
  *(v6 + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 29;
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[2] = v3;
  v8 = *(v5 + 56);

  v8(v1, 0, v0 + 2, ObjectType, v5);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1990870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a1;
  v8[11] = type metadata accessor for ClusterPath(0);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199090C, 0, 0);
}

uint64_t sub_1D199090C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  ObjectType = swift_getObjectType();
  *(v6 + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[2] = v3;
  v8 = *(v5 + 56);

  v8(v1, 323551250, v0 + 2, ObjectType, v5);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1990A5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a7;
  v8[10] = a8;
  v8[7] = a5;
  v8[8] = a6;
  v8[6] = a1;
  v8[11] = type metadata accessor for ClusterPath(0);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1990AF8, 0, 0);
}

uint64_t sub_1D1990AF8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v6 = v0[6];
  ObjectType = swift_getObjectType();
  *(v6 + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[2] = v3;
  v8 = *(v5 + 56);

  v8(v1, 323551251, v0 + 2, ObjectType, v5);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1990C48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[22] = a1;
  v8[27] = type metadata accessor for ClusterPath(0);
  v8[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1990CE4, 0, 0);
}

uint64_t sub_1D1990CE4()
{
  v20 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[26];
  v5 = v0[24];
  v6 = v0[22];
  ObjectType = swift_getObjectType();
  *(v6 + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v9;
  v10 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v10;
  *(inited + 56) = v11;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v12;
  v17[0] = v4 & 1;
  v18 = WORD1(v4);
  v19 = BYTE4(v4) & 1;
  v13 = sub_1D19B6AB4(v17);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *(inited + 96) = v13;
  v14 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[18] = v14;
  (*(v5 + 56))(v1, 323551249, v0 + 18, ObjectType, v5);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);

  v15 = v0[1];

  return v15();
}

uint64_t StaticThermostatClusterGroup.createPresetsIfNeeded()()
{
  v1[39] = v0;
  v1[40] = type metadata accessor for StaticThermostatClusterGroup(0);
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = type metadata accessor for EndpointPath(0);
  v1[44] = swift_task_alloc();
  v2 = sub_1D1E66A7C();
  v1[45] = v2;
  v1[46] = *(v2 - 8);
  v1[47] = swift_task_alloc();
  v1[48] = type metadata accessor for ClusterPath(0);
  v1[49] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1991080, 0, 0);
}

uint64_t sub_1D1991080()
{
  v2 = v0[48];
  v1 = v0[49];
  v4 = v0[46];
  v3 = v0[47];
  v6 = v0[44];
  v5 = v0[45];
  v7 = v0[43];
  sub_1D19A1778(v0[39], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v4 + 32))(v3, v6, v5);
  v9 = swift_task_alloc();
  v0[50] = v9;
  *v9 = v0;
  v9[1] = sub_1D19911A0;
  v10 = v0[47];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D19911A0(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[36] = v2;
  v4[37] = a1;
  v4[38] = a2;
  v5 = v3[49];
  v6 = v3[47];
  v7 = v3[46];
  v8 = v3[45];
  v4[51] = a1;

  (*(v7 + 8))(v6, v8);
  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1991338, 0, 0);
}

uint64_t sub_1D1991338()
{
  v52 = v0;
  if (!*(v0 + 408))
  {
    if (qword_1EE07A0A8 != -1)
    {
LABEL_25:
      swift_once();
    }

    v4 = *(v0 + 328);
    v5 = *(v0 + 336);
    v6 = *(v0 + 312);
    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EE07A0B0);
    sub_1D19A1778(v6, v5, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D19A1778(v6, v4, type metadata accessor for StaticThermostatClusterGroup);
    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6833C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = *(v0 + 384);
      v11 = *(v0 + 392);
      v12 = *(v0 + 336);
      v46 = *(v0 + 328);
      v13 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v50 = v49;
      *v13 = 136315650;
      *&v51[0] = 0xD00000000000001DLL;
      *(&v51[0] + 1) = 0x80000001D1EC0A80;
      sub_1D19A1778(v12, v11, type metadata accessor for EndpointPath);
      *(v11 + *(v10 + 20)) = 19;
      v47 = v9;
      v14 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v14);

      sub_1D199FA0C(v11, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v15 = v51[0];
      sub_1D199FA0C(v12, type metadata accessor for StaticThermostatClusterGroup);
      v16 = sub_1D1B1312C(v15, *(&v15 + 1), &v50);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC0EE0, &v50);
      *(v13 + 22) = 2082;
      sub_1D19A1778(v46, v11, type metadata accessor for EndpointPath);
      *(v11 + *(v10 + 20)) = 19;
      v17 = ClusterPath.description.getter();
      v19 = v18;
      sub_1D199FA0C(v11, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v46, type metadata accessor for StaticThermostatClusterGroup);
      v20 = sub_1D1B1312C(v17, v19, &v50);

      *(v13 + 24) = v20;
      _os_log_impl(&dword_1D16EC000, v8, v47, "[%s]-%s: Unable to update presets because device in current home with path %{public}s could not be found.", v13, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v49, -1, -1);
      MEMORY[0x1D3893640](v13, -1, -1);
    }

    else
    {
      v22 = *(v0 + 328);
      v21 = *(v0 + 336);

      sub_1D199FA0C(v22, type metadata accessor for StaticThermostatClusterGroup);
      sub_1D199FA0C(v21, type metadata accessor for StaticThermostatClusterGroup);
    }

    goto LABEL_11;
  }

  v1 = *(v0 + 312) + *(*(v0 + 320) + 28);
  v2 = *(v1 + 16);
  if (!v2 || (v3 = *(v1 + 8)) == 0 || (v48 = *(v3 + 16)) == 0 || *(v2 + 16))
  {
    swift_unknownObjectRelease();
LABEL_11:

    v23 = *(v0 + 8);

    return v23();
  }

  v44 = *(v0 + 408);
  v25 = 0;
  v26 = (v3 + 32);
  v43 = *(v0 + 304);
  v27 = MEMORY[0x1E69E7CC0];
  v45 = *(v1 + 8);
  do
  {
    if (v25 >= *(v3 + 16))
    {
      __break(1u);
      goto LABEL_25;
    }

    LOBYTE(v50) = *v26;
    ThermostatPreset.init(for:name:)(&v50, 0, 0, v51);
    v28 = v51[1];
    *(v0 + 224) = v51[0];
    *(v0 + 240) = v28;
    v29 = v51[3];
    *(v0 + 256) = v51[2];
    *(v0 + 272) = v29;
    v30 = sub_1D19B473C((v0 + 224), *(v0 + 240), 0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73A90;
    *(inited + 32) = sub_1D1E6781C();
    *(inited + 40) = v32;
    v33 = sub_1D1E6781C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 48) = v33;
    *(inited + 56) = v34;
    *(inited + 80) = sub_1D1E6781C();
    *(inited + 88) = v35;
    *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
    *(inited + 96) = v30;
    v36 = sub_1D18D6E78(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
    swift_arrayDestroy();
    v37 = swift_initStackObject();
    *(v37 + 16) = xmmword_1D1E739C0;
    *(v37 + 32) = sub_1D1E6781C();
    *(v37 + 40) = v38;
    *(v37 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
    *(v37 + 48) = v36;
    v39 = sub_1D18D6E78(v37);
    swift_setDeallocating();
    sub_1D1741A30(v37 + 32, &qword_1EC646228, &qword_1D1E8A0C0);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v27 = sub_1D177D340(0, v27[2] + 1, 1, v27);
    }

    v41 = v27[2];
    v40 = v27[3];
    if (v41 >= v40 >> 1)
    {
      v27 = sub_1D177D340((v40 > 1), v41 + 1, 1, v27);
    }

    ++v25;
    *(v0 + 416) = v27;
    sub_1D1780738(v0 + 224);
    v27[2] = v41 + 1;
    v27[v41 + 4] = v39;
    v26 += 24;
    v3 = v45;
  }

  while (v48 != v25);
  v42 = swift_task_alloc();
  *(v0 + 424) = v42;
  *v42 = v0;
  v42[1] = sub_1D1991A34;

  return sub_1D1991DA8(v27, v44, v43);
}

uint64_t sub_1D1991A34()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1D1991BF0;
  }

  else
  {

    v2 = sub_1D1991B50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1991B50()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1991BF0()
{

  swift_unknownObjectRelease();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StaticThermostatClusterGroup.loggingIdentifier.getter()
{
  v1 = type metadata accessor for ClusterPath(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7[0] = 0xD00000000000001DLL;
  v7[1] = 0x80000001D1EC0A80;
  sub_1D19A1778(v0, v4, type metadata accessor for EndpointPath);
  v4[*(v2 + 28)] = 19;
  v5 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v5);

  sub_1D199FA0C(v4, type metadata accessor for ClusterPath);
  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return v7[0];
}

uint64_t sub_1D1991DA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  type metadata accessor for EndpointPath(0);
  v4[30] = swift_task_alloc();
  v5 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v4[31] = v5;
  v4[32] = *(v5 + 64);
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = type metadata accessor for ClusterPath(0);
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1991ED8, 0, 0);
}

uint64_t sub_1D1991ED8()
{
  v31 = v0;
  if (*(v0[26] + 16))
  {
    v2 = v0[35];
    v1 = v0[36];
    v3 = v0[29];
    v4 = [objc_allocWithZone(MEMORY[0x1E696F6D0]) init];
    v0[37] = v4;
    v5 = sub_1D1E691BC();
    [v4 setRequestType_];

    v0[38] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643370, &qword_1D1E7B940);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D1E739C0;
    v7 = sub_1D1E692CC();
    v8 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v0[39] = v8;
    *(v6 + 56) = v8;
    *(v6 + 32) = v7;
    v9 = sub_1D1E67BFC();

    [v4 setAttributeRequests_];

    v10 = sub_1D1E6821C();
    [v4 setTimeout_];

    v0[40] = sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
    sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
    *(v1 + *(v2 + 20)) = 19;
    v11 = swift_task_alloc();
    v0[41] = v11;
    *v11 = v0;
    v11[1] = sub_1D19923AC;
    v12 = v0[36];

    return sub_1D1A092C4(v12);
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v14 = v0[33];
    v15 = v0[29];
    v16 = sub_1D1E6709C();
    __swift_project_value_buffer(v16, qword_1EE07A0B0);
    sub_1D19A1778(v15, v14, type metadata accessor for StaticThermostatClusterGroup);
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6833C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[35];
      v20 = v0[36];
      v21 = v0[33];
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      *v22 = 136315394;
      v28 = v23;
      v29 = 0xD00000000000001DLL;
      v30 = 0x80000001D1EC0A80;
      sub_1D19A1778(v21, v20, type metadata accessor for EndpointPath);
      *(v20 + *(v19 + 20)) = 19;
      v24 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v24);

      sub_1D199FA0C(v20, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v21, type metadata accessor for StaticThermostatClusterGroup);
      v25 = sub_1D1B1312C(v29, v30, &v28);

      *(v22 + 4) = v25;
      *(v22 + 12) = 2080;
      *(v22 + 14) = sub_1D1B1312C(0xD00000000000002ELL, 0x80000001D1EC1150, &v28);
      _os_log_impl(&dword_1D16EC000, v17, v18, "[%s]-%s: Unable to update presets because thermostat has no presets.", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v23, -1, -1);
      MEMORY[0x1D3893640](v22, -1, -1);
    }

    else
    {
      v26 = v0[33];

      sub_1D199FA0C(v26, type metadata accessor for StaticThermostatClusterGroup);
    }

    v27 = v0[1];

    return v27();
  }
}

uint64_t sub_1D19923AC(uint64_t a1)
{
  v2 = *(*v1 + 288);
  *(*v1 + 336) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D19924E0, 0, 0);
}

uint64_t sub_1D19924E0()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 272);
  v3 = *(v0 + 248);
  sub_1D19A1778(*(v0 + 232), v2, type metadata accessor for StaticThermostatClusterGroup);
  v4 = *(v3 + 80);
  *(v0 + 432) = v4;
  v5 = (v4 + 24) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 344) = v6;
  *(v6 + 16) = v1;
  sub_1D199FB14(v2, v6 + v5, type metadata accessor for StaticThermostatClusterGroup);
  v7 = v1;
  v8 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v8);

  *(v0 + 352) = 0x80000001D1EC0A80;
  v9 = swift_task_alloc();
  *(v0 + 360) = v9;
  *v9 = v0;
  v9[1] = sub_1D19926A0;
  v10 = *(v0 + 336);

  return sub_1D19167E4(0xD000000000000010, 0x80000001D1EC0F60, v10, 0, 0xD00000000000001DLL, 0x80000001D1EC0A80, &unk_1D1E8A5B8, v6);
}

uint64_t sub_1D19926A0()
{
  v2 = *v1;
  *(*v1 + 368) = v0;

  if (v0)
  {
    v3 = sub_1D19927CC;
  }

  else
  {
    v4 = *(v2 + 336);

    v3 = sub_1D19929E8;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19927CC()
{
  v1 = *(v0 + 368);

  *(v0 + 176) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);

    v5 = *(v0 + 184);
    sub_1D19A1778(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D199FB14(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 336);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D19929E8()
{
  v22 = v0[39];
  v2 = v0[35];
  v1 = v0[36];
  v4 = v0[28];
  v3 = v0[29];
  v21 = v3;
  v5 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v7;
  v8 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v10;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *(inited + 96) = v5;

  v11 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  ObjectType = swift_getObjectType();
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[18] = v11;
  (*(v4 + 56))(v1, 80, v0 + 18, ObjectType, v4);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v13 = [objc_allocWithZone(MEMORY[0x1E696F6D0]) init];
  v0[47] = v13;
  v14 = sub_1D1E691BC();
  [v13 setRequestType_];

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D1E739C0;
  v16 = sub_1D1E692CC();
  *(v15 + 56) = v22;
  *(v15 + 32) = v16;
  v17 = sub_1D1E67BFC();

  [v13 setAttributeRequests_];

  sub_1D19A1778(v21, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v18 = swift_task_alloc();
  v0[48] = v18;
  *v18 = v0;
  v18[1] = sub_1D1992D04;
  v19 = v0[36];

  return sub_1D1A092C4(v19);
}

uint64_t sub_1D1992D04(uint64_t a1)
{
  v2 = *(*v1 + 288);
  *(*v1 + 392) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1992E38, 0, 0);
}

uint64_t sub_1D1992E38()
{
  v1 = *(v0 + 376);
  v2 = *(v0 + 272);
  v3 = (*(v0 + 432) + 24) & ~*(v0 + 432);
  sub_1D19A1778(*(v0 + 232), v2, type metadata accessor for StaticThermostatClusterGroup);
  v4 = swift_allocObject();
  *(v0 + 400) = v4;
  *(v4 + 16) = v1;
  sub_1D199FB14(v2, v4 + v3, type metadata accessor for StaticThermostatClusterGroup);
  v5 = v1;
  v6 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  *(v0 + 408) = 0x80000001D1EC0A80;
  v7 = swift_task_alloc();
  *(v0 + 416) = v7;
  *v7 = v0;
  v7[1] = sub_1D1992FF4;
  v8 = *(v0 + 392);

  return sub_1D19167E4(0xD000000000000011, 0x80000001D1EC0F80, v8, 0, 0xD00000000000001DLL, 0x80000001D1EC0A80, &unk_1D1E8A5C8, v4);
}

uint64_t sub_1D1992FF4()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  if (v0)
  {
    v3 = sub_1D19931BC;
  }

  else
  {
    v4 = *(v2 + 392);

    v3 = sub_1D1993120;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1993120()
{
  v1 = *(v0 + 296);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D19931BC()
{
  v1 = *(v0 + 424);

  *(v0 + 192) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);

    v5 = *(v0 + 200);
    sub_1D19A1778(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D199FB14(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 392);
  v12 = *(v0 + 296);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t StaticThermostatClusterGroup.updateSetpoints(for:)(_OWORD *a1)
{
  *(v2 + 1032) = v1;
  *(v2 + 1040) = type metadata accessor for StaticThermostatClusterGroup(0);
  *(v2 + 1048) = swift_task_alloc();
  *(v2 + 1056) = swift_task_alloc();
  *(v2 + 1064) = swift_task_alloc();
  *(v2 + 1072) = swift_task_alloc();
  *(v2 + 1080) = type metadata accessor for EndpointPath(0);
  *(v2 + 1088) = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  *(v2 + 1096) = v4;
  *(v2 + 1104) = *(v4 - 8);
  *(v2 + 1112) = swift_task_alloc();
  *(v2 + 1120) = type metadata accessor for ClusterPath(0);
  *(v2 + 1128) = swift_task_alloc();
  v5 = a1[1];
  *(v2 + 352) = *a1;
  *(v2 + 368) = v5;
  v6 = a1[3];
  *(v2 + 384) = a1[2];
  *(v2 + 400) = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D199356C, 0, 0);
}

uint64_t sub_1D199356C()
{
  v1 = v0[141];
  v2 = v0[140];
  v3 = v0[139];
  v4 = v0[138];
  v5 = v0[137];
  v6 = v0[136];
  v7 = v0[135];
  sub_1D19A1778(v0[129], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v4 + 32))(v3, v6, v5);
  v9 = swift_task_alloc();
  v0[142] = v9;
  *v9 = v0;
  v9[1] = sub_1D1993698;
  v10 = v0[139];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D1993698(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[124] = v2;
  v4[125] = a1;
  v4[126] = a2;
  v5 = v3[141];
  v6 = v3[139];
  v7 = v3[138];
  v8 = v3[137];
  v4[143] = a1;

  (*(v7 + 8))(v6, v8);
  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1993834, 0, 0);
}

uint64_t sub_1D1993834()
{
  v121 = v0;
  v1 = *(v0 + 1144);
  if (!v1)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v46 = *(v0 + 1056);
    v47 = *(v0 + 1048);
    v48 = *(v0 + 1032);
    v49 = sub_1D1E6709C();
    __swift_project_value_buffer(v49, qword_1EE07A0B0);
    sub_1D19A1778(v48, v46, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D19A1778(v48, v47, type metadata accessor for StaticThermostatClusterGroup);
    v33 = sub_1D1E6707C();
    v50 = sub_1D1E6833C();
    if (os_log_type_enabled(v33, v50))
    {
      v51 = *(v0 + 1128);
      v52 = *(v0 + 1120);
      v53 = *(v0 + 1056);
      v113 = *(v0 + 1048);
      v54 = swift_slowAlloc();
      v117 = swift_slowAlloc();
      v118 = v117;
      *v54 = 136315650;
      v119 = 0xD00000000000001DLL;
      v120 = 0x80000001D1EC0A80;
      sub_1D19A1778(v53, v51, type metadata accessor for EndpointPath);
      *(v51 + *(v52 + 20)) = 19;
      v114 = v50;
      v55 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v55);

      sub_1D199FA0C(v51, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v53, type metadata accessor for StaticThermostatClusterGroup);
      v56 = sub_1D1B1312C(v119, v120, &v118);

      *(v54 + 4) = v56;
      *(v54 + 12) = 2080;
      *(v54 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EC0F00, &v118);
      *(v54 + 22) = 2082;
      sub_1D19A1778(v113, v51, type metadata accessor for EndpointPath);
      *(v51 + *(v52 + 20)) = 19;
      v57 = ClusterPath.description.getter();
      v59 = v58;
      sub_1D199FA0C(v51, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v113, type metadata accessor for StaticThermostatClusterGroup);
      v60 = sub_1D1B1312C(v57, v59, &v118);

      *(v54 + 24) = v60;
      _os_log_impl(&dword_1D16EC000, v33, v114, "[%s]-%s: Unable to update presets because device in current home with path %{public}s could not be found.", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v117, -1, -1);
      MEMORY[0x1D3893640](v54, -1, -1);
LABEL_21:

      goto LABEL_22;
    }

    v63 = *(v0 + 1056);
    v64 = *(v0 + 1048);

    sub_1D199FA0C(v64, type metadata accessor for StaticThermostatClusterGroup);
    v62 = v63;
LABEL_18:
    sub_1D199FA0C(v62, type metadata accessor for StaticThermostatClusterGroup);
LABEL_22:

    v68 = *(v0 + 8);

    return v68();
  }

  v2 = *(v0 + 408);
  if (v2 == 1 || (v3 = *(v0 + 1008), v4 = *(v0 + 368), v5 = *(v0 + 1040), v6 = *(v0 + 1032), *(v0 + 480) = *(v0 + 352), v109 = v4, *(v0 + 496) = v4, *(v0 + 528) = *(v0 + 400), v7 = *(v0 + 385), *(v0 + 497) = *(v0 + 369), *(v0 + 513) = v7, *(v0 + 536) = v2, v8 = v6 + *(v5 + 28), (v9 = *(v8 + 16)) == 0))
  {
    if (qword_1EE07A0A8 == -1)
    {
LABEL_9:
      v30 = *(v0 + 1064);
      v31 = *(v0 + 1032);
      v32 = sub_1D1E6709C();
      __swift_project_value_buffer(v32, qword_1EE07A0B0);
      sub_1D19A1778(v31, v30, type metadata accessor for StaticThermostatClusterGroup);
      sub_1D1741C08(v0 + 352, v0 + 544, &qword_1EC647FB0, &unk_1D1E8A180);
      v33 = sub_1D1E6707C();
      v34 = sub_1D1E6833C();
      sub_1D1741A30(v0 + 352, &qword_1EC647FB0, &unk_1D1E8A180);
      if (os_log_type_enabled(v33, v34))
      {
        v35 = *(v0 + 1128);
        v36 = *(v0 + 1120);
        v37 = *(v0 + 1064);
        v38 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        *v38 = 136315650;
        v118 = v39;
        v119 = 0xD00000000000001DLL;
        v120 = 0x80000001D1EC0A80;
        sub_1D19A1778(v37, v35, type metadata accessor for EndpointPath);
        *(v35 + *(v36 + 20)) = 19;
        v40 = ClusterPath.description.getter();
        MEMORY[0x1D3890F70](v40);

        sub_1D199FA0C(v35, type metadata accessor for ClusterPath);
        MEMORY[0x1D3890F70](41, 0xE100000000000000);
        v41 = v119;
        v42 = v120;
        sub_1D199FA0C(v37, type metadata accessor for StaticThermostatClusterGroup);
        v43 = sub_1D1B1312C(v41, v42, &v118);

        *(v38 + 4) = v43;
        *(v38 + 12) = 2080;
        *(v38 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EC0F00, &v118);
        *(v38 + 22) = 2080;
        if (*(v0 + 408) == 1)
        {
          v44 = 0;
          v45 = 0;
        }

        else
        {
          LOBYTE(v119) = *(v0 + 368);
          v44 = ThermostatPresetScenario.shortPresetLabel.getter();
        }

        *(v0 + 1016) = v44;
        *(v0 + 1024) = v45;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
        v65 = sub_1D1E6789C();
        v67 = sub_1D1B1312C(v65, v66, &v118);

        *(v38 + 24) = v67;
        _os_log_impl(&dword_1D16EC000, v33, v34, "[%s]-%s: Unable to update setpoints for preset: %s there are no presets configured on the thermostat.", v38, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v39, -1, -1);
        MEMORY[0x1D3893640](v38, -1, -1);
        swift_unknownObjectRelease();
        goto LABEL_21;
      }

      v61 = *(v0 + 1064);
      swift_unknownObjectRelease();

      v62 = v61;
      goto LABEL_18;
    }

LABEL_50:
    swift_once();
    goto LABEL_9;
  }

  v107 = v3;
  v10 = *(v0 + 368);
  *(v0 + 672) = *(v0 + 352);
  *(v0 + 688) = v10;
  v11 = *(v0 + 400);
  *(v0 + 704) = *(v0 + 384);
  *(v0 + 720) = v11;
  sub_1D17806DC(v0 + 672, v0 + 736);
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 1072);
  v13 = *(v0 + 1032);
  v14 = sub_1D1E6709C();
  __swift_project_value_buffer(v14, qword_1EE07A0B0);
  sub_1D19A1778(v13, v12, type metadata accessor for StaticThermostatClusterGroup);
  v15 = *(v0 + 368);
  *(v0 + 608) = *(v0 + 352);
  *(v0 + 624) = v15;
  v16 = *(v0 + 400);
  *(v0 + 640) = *(v0 + 384);
  *(v0 + 656) = v16;
  sub_1D17806DC(v0 + 608, v0 + 800);
  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6835C();
  sub_1D1741A30(v0 + 352, &qword_1EC647FB0, &unk_1D1E8A180);
  v116 = v9;
  v108 = v1;
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 1128);
    v20 = *(v0 + 1120);
    v21 = *(v0 + 1072);
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v22 = 136315650;
    v118 = v23;
    v119 = 0xD00000000000001DLL;
    v120 = 0x80000001D1EC0A80;
    sub_1D19A1778(v21, v19, type metadata accessor for EndpointPath);
    *(v19 + *(v20 + 20)) = 19;
    v24 = ClusterPath.description.getter();
    MEMORY[0x1D3890F70](v24);

    sub_1D199FA0C(v19, type metadata accessor for ClusterPath);
    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    sub_1D199FA0C(v21, type metadata accessor for StaticThermostatClusterGroup);
    v25 = sub_1D1B1312C(v119, v120, &v118);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1D1B1312C(0xD000000000000015, 0x80000001D1EC0F00, &v118);
    *(v22 + 22) = 2080;
    LOBYTE(v119) = v109;
    v26 = ThermostatPresetScenario.label.getter();
    v28 = sub_1D1B1312C(v26, v27, &v118);

    *(v22 + 24) = v28;
    _os_log_impl(&dword_1D16EC000, v17, v18, "[%s]-%s: Updating preset: %s", v22, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v23, -1, -1);
    v29 = v22;
    v9 = v116;
    MEMORY[0x1D3893640](v29, -1, -1);
  }

  else
  {
    v70 = *(v0 + 1072);

    sub_1D199FA0C(v70, type metadata accessor for StaticThermostatClusterGroup);
  }

  v115 = *(v9 + 16);
  if (v115)
  {
    v71 = 0;
    v72 = *(v8 + 8);
    v112 = v9 + 32;
    v110 = (v72 + 32);
    v73 = MEMORY[0x1E69E7CC0];
    v111 = v72;
    while (v71 < *(v9 + 16))
    {
      v74 = (v112 + (v71 << 6));
      v75 = *v74;
      v76 = v74[1];
      v77 = v74[3];
      *(v0 + 448) = v74[2];
      *(v0 + 464) = v77;
      *(v0 + 416) = v75;
      *(v0 + 432) = v76;
      v78 = *(v0 + 432);
      if (v72)
      {
        v79 = *(v72 + 16) + 1;
        v80 = v110;
        while (--v79)
        {
          v81 = v80 + 24;
          v82 = (0xFE060504030201uLL >> (8 * *v80)) == (0xFE060504030201uLL >> (8 * v78));
          v80 += 24;
          if (v82)
          {
            v83 = *(v81 - 8);
            goto LABEL_36;
          }
        }
      }

      v83 = 0;
LABEL_36:
      v84 = v0 + 416;
      if ((0xFE060504030201uLL >> (8 * v109)) == (0xFE060504030201uLL >> (8 * v78)))
      {
        sub_1D17806DC(v84, v0 + 928);
        v85 = sub_1D19B473C((v0 + 480), v109, v83);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D1E73A90;
        *(inited + 32) = sub_1D1E6781C();
        *(inited + 40) = v87;
        v88 = sub_1D1E6781C();
        *(inited + 72) = MEMORY[0x1E69E6158];
        *(inited + 48) = v88;
        *(inited + 56) = v89;
        *(inited + 80) = sub_1D1E6781C();
        *(inited + 88) = v90;
        *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
        *(inited + 96) = v85;
        v91 = sub_1D18D6E78(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
        swift_arrayDestroy();
        v92 = swift_allocObject();
        *(v92 + 16) = xmmword_1D1E739C0;
        *(v92 + 32) = sub_1D1E6781C();
        *(v92 + 40) = v93;
        *(v92 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
        *(v92 + 48) = v91;
        v94 = sub_1D18D6E78(v92);
        swift_setDeallocating();
        sub_1D1741A30(v92 + 32, &qword_1EC646228, &qword_1D1E8A0C0);
        swift_deallocClassInstance();
      }

      else
      {
        sub_1D17806DC(v84, v0 + 864);
        v95 = sub_1D19B473C((v0 + 416), v78, v83);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
        v96 = swift_initStackObject();
        *(v96 + 16) = xmmword_1D1E73A90;
        *(v96 + 32) = sub_1D1E6781C();
        *(v96 + 40) = v97;
        v98 = sub_1D1E6781C();
        *(v96 + 72) = MEMORY[0x1E69E6158];
        *(v96 + 48) = v98;
        *(v96 + 56) = v99;
        *(v96 + 80) = sub_1D1E6781C();
        *(v96 + 88) = v100;
        *(v96 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
        *(v96 + 96) = v95;
        v101 = sub_1D18D6E78(v96);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
        swift_arrayDestroy();
        v102 = swift_initStackObject();
        *(v102 + 16) = xmmword_1D1E739C0;
        *(v102 + 32) = sub_1D1E6781C();
        *(v102 + 40) = v103;
        *(v102 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
        *(v102 + 48) = v101;
        v94 = sub_1D18D6E78(v102);
        swift_setDeallocating();
        sub_1D1741A30(v102 + 32, &qword_1EC646228, &qword_1D1E8A0C0);
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v73 = sub_1D177D340(0, v73[2] + 1, 1, v73);
      }

      v105 = v73[2];
      v104 = v73[3];
      if (v105 >= v104 >> 1)
      {
        v73 = sub_1D177D340((v104 > 1), v105 + 1, 1, v73);
      }

      ++v71;
      sub_1D1780738(v0 + 416);
      v73[2] = v105 + 1;
      v73[v105 + 4] = v94;
      v9 = v116;
      v72 = v111;
      if (v71 == v115)
      {
        goto LABEL_46;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v73 = MEMORY[0x1E69E7CC0];
LABEL_46:
  *(v0 + 1152) = v73;
  v106 = swift_task_alloc();
  *(v0 + 1160) = v106;
  *v106 = v0;
  v106[1] = sub_1D1994750;

  return sub_1D1991DA8(v73, v108, v107);
}

uint64_t sub_1D1994750()
{
  *(*v1 + 1168) = v0;

  if (v0)
  {
    v2 = sub_1D1994948;
  }

  else
  {

    v2 = sub_1D199486C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D199486C()
{
  swift_unknownObjectRelease();
  sub_1D1741A30(v0 + 352, &qword_1EC647FB0, &unk_1D1E8A180);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1994948()
{
  swift_unknownObjectRelease();
  sub_1D1741A30(v0 + 352, &qword_1EC647FB0, &unk_1D1E8A180);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1994A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  v7[6] = type metadata accessor for ClusterPath(0);
  v7[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1994AD4, 0, 0);
}

uint64_t sub_1D1994AD4()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v10 = v0[4];
  ObjectType = swift_getObjectType();
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v9 = (*(v10 + 80) + **(v10 + 80));
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D1994C48;
  v6 = v0[7];
  v7 = v0[4];

  return v9(v6, 323551479, 0, 0, ObjectType, v7);
}

uint64_t sub_1D1994C48(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  sub_1D199FA0C(v4, type metadata accessor for ClusterPath);
  if (v1)
  {
    v5 = sub_1D17C2F00;
  }

  else
  {
    v5 = sub_1D1994D90;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D1994D90()
{
  v1 = v0[9];
  if (v1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  }

  else
  {
    v2 = 0;
    v3 = v0[2];
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
  }

  v4 = v0[2];
  *v4 = v1;
  v4[3] = v2;

  v5 = v0[1];

  return v5();
}

uint64_t StaticThermostatClusterGroup.clearPrimaryFabric()()
{
  v1[7] = v0;
  v2 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v1[8] = v2;
  v1[9] = *(v2 + 64);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = type metadata accessor for EndpointPath(0);
  v1[13] = swift_task_alloc();
  v3 = sub_1D1E66A7C();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v1[17] = type metadata accessor for ClusterPath(0);
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1994FBC, 0, 0);
}

uint64_t sub_1D1994FBC()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v6 = v0[13];
  v5 = v0[14];
  v7 = v0[12];
  sub_1D19A1778(v0[7], v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v8 = *(v1 + *(v7 + 20));
  sub_1D19A1778(v1, v6, type metadata accessor for EndpointPath);
  (*(v4 + 32))(v3, v6, v5);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = sub_1D19950DC;
  v10 = v0[16];

  return sub_1D1A0A508(v8, v10);
}

uint64_t sub_1D19950DC(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[2] = v2;
  v4[3] = a1;
  v4[4] = a2;
  v5 = v3[18];
  v6 = v3[16];
  v7 = v3[15];
  v8 = v3[14];
  v4[20] = a1;

  (*(v7 + 8))(v6, v8);
  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1995274, 0, 0);
}

uint64_t sub_1D1995274()
{
  v24 = v0;
  if (v0[20])
  {
    v2 = v0[17];
    v1 = v0[18];
    v3 = v0[7];
    v0[21] = v0[4];
    sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
    sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
    *(v1 + *(v2 + 20)) = 19;
    v4 = swift_task_alloc();
    v0[22] = v4;
    *v4 = v0;
    v4[1] = sub_1D1995640;
    v5 = v0[18];

    return sub_1D1A092C4(v5);
  }

  else
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v7 = v0[10];
    v8 = v0[7];
    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07A0B0);
    sub_1D19A1778(v8, v7, type metadata accessor for StaticThermostatClusterGroup);
    v10 = sub_1D1E6707C();
    v11 = sub_1D1E6833C();
    if (os_log_type_enabled(v10, v11))
    {
      v13 = v0[17];
      v12 = v0[18];
      v14 = v0[10];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v23 = v16;
      *v15 = 136315650;
      *(v15 + 4) = sub_1D1B1312C(0xD000000000000014, 0x80000001D1EC0F20, &v23);
      *(v15 + 12) = 2080;
      *(v15 + 14) = sub_1D1B1312C(0xD000000000000023, 0x80000001D1EC0CA0, &v23);
      *(v15 + 22) = 2080;
      sub_1D19A1778(v14, v12, type metadata accessor for EndpointPath);
      *(v12 + *(v13 + 20)) = 19;
      v17 = ClusterPath.description.getter();
      v19 = v18;
      sub_1D199FA0C(v12, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v14, type metadata accessor for StaticThermostatClusterGroup);
      v20 = sub_1D1B1312C(v17, v19, &v23);

      *(v15 + 24) = v20;
      _os_log_impl(&dword_1D16EC000, v10, v11, "%s: Unable to update %s because device in current home with path %s could not be found.", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v16, -1, -1);
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    else
    {
      v21 = v0[10];

      sub_1D199FA0C(v21, type metadata accessor for StaticThermostatClusterGroup);
    }

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_1D1995640(uint64_t a1)
{
  v2 = *(*v1 + 144);
  *(*v1 + 184) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1995774, 0, 0);
}

uint64_t sub_1D1995774()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v9 = *(v0 + 160);
  sub_1D19A1778(*(v0 + 56), v1, type metadata accessor for StaticThermostatClusterGroup);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v0 + 192) = v4;
  *(v4 + 16) = v9;
  sub_1D199FB14(v1, v4 + v3, type metadata accessor for StaticThermostatClusterGroup);
  swift_unknownObjectRetain();
  v5 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v5);

  *(v0 + 200) = 0x80000001D1EC0A80;
  v6 = swift_task_alloc();
  *(v0 + 208) = v6;
  *v6 = v0;
  v6[1] = sub_1D1995938;
  v7 = *(v0 + 184);

  return sub_1D19167E4(0xD000000000000019, 0x80000001D1EC0F40, v7, 0, 0xD00000000000001DLL, 0x80000001D1EC0A80, &unk_1D1E8A1A0, v4);
}

uint64_t sub_1D1995938()
{
  v2 = *v1;
  *(*v1 + 216) = v0;

  if (v0)
  {

    v3 = sub_1D19A1E68;
  }

  else
  {
    v4 = *(v2 + 184);

    v3 = sub_1D19A1E78;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1995A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a1;
  v7[3] = a5;
  v7[6] = type metadata accessor for ClusterPath(0);
  v7[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1995B18, 0, 0);
}

uint64_t sub_1D1995B18()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v10 = v0[4];
  ObjectType = swift_getObjectType();
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v9 = (*(v10 + 80) + **(v10 + 80));
  v5 = swift_task_alloc();
  v0[8] = v5;
  *v5 = v0;
  v5[1] = sub_1D1995C8C;
  v6 = v0[7];
  v7 = v0[4];

  return v9(v6, 323551480, 0, 0, ObjectType, v7);
}

uint64_t sub_1D1995C8C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  sub_1D199FA0C(v4, type metadata accessor for ClusterPath);
  if (v1)
  {
    v5 = sub_1D19A1E80;
  }

  else
  {
    v5 = sub_1D19A1E50;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t StaticThermostatClusterGroup.updatePresetsInfo(presetInfo:device:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[28] = a3;
  v4[29] = v3;
  v4[26] = a1;
  v4[27] = a2;
  type metadata accessor for EndpointPath(0);
  v4[30] = swift_task_alloc();
  v4[31] = type metadata accessor for ClusterPath(0);
  v4[32] = swift_task_alloc();
  v5 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v4[33] = v5;
  v4[34] = *(v5 + 64);
  v4[35] = swift_task_alloc();
  v4[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1995F04, 0, 0);
}

uint64_t sub_1D1995F04()
{
  v32 = v0;
  v1 = *(v0[26] + 16);
  if (v1)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v2 = v0[36];
    v3 = v0[29];
    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EE07A0B0);
    sub_1D19A1778(v3, v2, type metadata accessor for StaticThermostatClusterGroup);
    swift_bridgeObjectRetain_n();
    v5 = sub_1D1E6707C();
    v6 = sub_1D1E6835C();
    v7 = os_log_type_enabled(v5, v6);
    v8 = v0[36];
    if (v7)
    {
      v9 = v0[31];
      v10 = v0[32];
      v11 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v11 = 136315650;
      v30 = 0xD00000000000001DLL;
      v31 = 0x80000001D1EC0A80;
      sub_1D19A1778(v8, v10, type metadata accessor for EndpointPath);
      *(v10 + *(v9 + 20)) = 19;
      v12 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v12);

      sub_1D199FA0C(v10, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v8, type metadata accessor for StaticThermostatClusterGroup);
      v13 = sub_1D1B1312C(v30, v31, &v29);

      *(v11 + 4) = v13;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1D1B1312C(0xD000000000000025, 0x80000001D1EC0FA0, &v29);
      *(v11 + 22) = 2048;

      *(v11 + 24) = v1;

      swift_arrayDestroy();
      MEMORY[0x1D3893640](v28, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      sub_1D199FA0C(v8, type metadata accessor for StaticThermostatClusterGroup);
    }

    v0[37] = 0x80000001D1EC0A80;
    v17 = v0[31];
    v16 = v0[32];
    v18 = v0[29];
    v19 = [objc_allocWithZone(MEMORY[0x1E696F6D0]) init];
    v0[38] = v19;
    v20 = sub_1D1E691BC();
    [v19 setRequestType_];

    v0[39] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643370, &qword_1D1E7B940);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D1E739C0;
    v22 = sub_1D1E692CC();
    v23 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v0[40] = v23;
    *(v21 + 56) = v23;
    *(v21 + 32) = v22;
    v24 = sub_1D1E67BFC();

    [v19 setAttributeRequests_];

    v25 = sub_1D1E6821C();
    [v19 setTimeout_];

    v0[41] = sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
    sub_1D19A1778(v18, v16, type metadata accessor for EndpointPath);
    *(v16 + *(v17 + 20)) = 19;
    v26 = swift_task_alloc();
    v0[42] = v26;
    *v26 = v0;
    v26[1] = sub_1D1996438;
    v27 = v0[32];

    return sub_1D1A092C4(v27);
  }

  else
  {

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1D1996438(uint64_t a1)
{
  v2 = *(*v1 + 256);
  *(*v1 + 344) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D199656C, 0, 0);
}

uint64_t sub_1D199656C()
{
  v2 = *(v0 + 296);
  v1 = *(v0 + 304);
  v3 = *(v0 + 280);
  v4 = *(v0 + 264);
  sub_1D19A1778(*(v0 + 232), v3, type metadata accessor for StaticThermostatClusterGroup);
  v5 = *(v4 + 80);
  *(v0 + 440) = v5;
  v6 = (v5 + 24) & ~v5;
  v7 = swift_allocObject();
  *(v0 + 352) = v7;
  *(v7 + 16) = v1;
  sub_1D199FB14(v3, v7 + v6, type metadata accessor for StaticThermostatClusterGroup);
  v8 = v1;
  v9 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v9);

  *(v0 + 360) = v2;
  v10 = swift_task_alloc();
  *(v0 + 368) = v10;
  *v10 = v0;
  v10[1] = sub_1D1996724;
  v11 = *(v0 + 344);

  return sub_1D19167E4(0xD000000000000010, 0x80000001D1EC0F60, v11, 0, 0xD00000000000001DLL, v2, &unk_1D1E8A1B8, v7);
}

uint64_t sub_1D1996724()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  if (v0)
  {
    v3 = sub_1D1996850;
  }

  else
  {
    v4 = *(v2 + 344);

    v3 = sub_1D1996A70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1996850()
{
  v1 = *(v0 + 376);

  *(v0 + 176) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);

    v5 = *(v0 + 184);
    sub_1D19A1778(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D199FB14(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 344);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D1996A70()
{
  v22 = v0[40];
  v2 = v0[31];
  v1 = v0[32];
  v4 = v0[28];
  v3 = v0[29];
  v21 = v3;
  v5 = v0[26];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v7;
  v8 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v10;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  *(inited + 96) = v5;

  v11 = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  ObjectType = swift_getObjectType();
  sub_1D19A1778(v3, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v0[21] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
  v0[18] = v11;
  (*(v4 + 56))(v1, 323551248, v0 + 18, ObjectType, v4);
  sub_1D199FA0C(v1, type metadata accessor for ClusterPath);
  __swift_destroy_boxed_opaque_existential_1(v0 + 18);
  v13 = [objc_allocWithZone(MEMORY[0x1E696F6D0]) init];
  v0[48] = v13;
  v14 = sub_1D1E691BC();
  [v13 setRequestType_];

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D1E739C0;
  v16 = sub_1D1E692CC();
  *(v15 + 56) = v22;
  *(v15 + 32) = v16;
  v17 = sub_1D1E67BFC();

  [v13 setAttributeRequests_];

  sub_1D19A1778(v21, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v18 = swift_task_alloc();
  v0[49] = v18;
  *v18 = v0;
  v18[1] = sub_1D1996D94;
  v19 = v0[32];

  return sub_1D1A092C4(v19);
}

uint64_t sub_1D1996D94(uint64_t a1)
{
  v2 = *(*v1 + 256);
  *(*v1 + 400) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1996EC8, 0, 0);
}

uint64_t sub_1D1996EC8()
{
  v1 = *(v0 + 384);
  v2 = *(v0 + 296);
  v3 = *(v0 + 280);
  v4 = (*(v0 + 440) + 24) & ~*(v0 + 440);
  sub_1D19A1778(*(v0 + 232), v3, type metadata accessor for StaticThermostatClusterGroup);
  v5 = swift_allocObject();
  *(v0 + 408) = v5;
  *(v5 + 16) = v1;
  sub_1D199FB14(v3, v5 + v4, type metadata accessor for StaticThermostatClusterGroup);
  v6 = v1;
  v7 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v7);

  *(v0 + 416) = v2;
  v8 = swift_task_alloc();
  *(v0 + 424) = v8;
  *v8 = v0;
  v8[1] = sub_1D1997074;
  v9 = *(v0 + 400);

  return sub_1D19167E4(0xD000000000000011, 0x80000001D1EC0F80, v9, 0, 0xD00000000000001DLL, v2, &unk_1D1E8A1C8, v5);
}

uint64_t sub_1D1997074()
{
  v2 = *v1;
  *(*v1 + 432) = v0;

  if (v0)
  {
    v3 = sub_1D199723C;
  }

  else
  {
    v4 = *(v2 + 400);

    v3 = sub_1D19971A0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D19971A0()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D199723C()
{
  v1 = *(v0 + 432);

  *(v0 + 192) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 232);
    v3 = *(v0 + 240);

    v5 = *(v0 + 200);
    sub_1D19A1778(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D199FB14(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 400);
  v12 = *(v0 + 304);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t StaticThermostatClusterGroup.updatePresetInfo(for:)(uint64_t a1)
{
  *(v2 + 520) = v1;
  *(v2 + 528) = type metadata accessor for StaticThermostatClusterGroup(0);
  *(v2 + 536) = swift_task_alloc();
  *(v2 + 544) = swift_task_alloc();
  *(v2 + 552) = swift_task_alloc();
  *(v2 + 560) = swift_task_alloc();
  *(v2 + 568) = swift_task_alloc();
  *(v2 + 576) = type metadata accessor for EndpointPath(0);
  *(v2 + 584) = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  *(v2 + 592) = v4;
  *(v2 + 600) = *(v4 - 8);
  *(v2 + 608) = swift_task_alloc();
  *(v2 + 616) = type metadata accessor for ClusterPath(0);
  *(v2 + 624) = swift_task_alloc();
  *(v2 + 632) = *a1;
  *(v2 + 688) = *(a1 + 16);
  *(v2 + 689) = *(a1 + 17);

  return MEMORY[0x1EEE6DFA0](sub_1D199760C, 0, 0);
}

uint64_t sub_1D199760C()
{
  v33 = v0;
  v1 = *(v0 + 689);
  v2 = *(v0 + 688);
  v29 = *(v0 + 632);
  v30 = v2;
  v31 = v1;
  StaticThermostatClusterGroup.preset(for:)(&v29, v0 + 432);
  *(v0 + 690) = *(v0 + 448);
  if (*(v0 + 488) == 1)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 536);
    v4 = *(v0 + 520);
    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EE07A0B0);
    sub_1D19A1778(v4, v3, type metadata accessor for StaticThermostatClusterGroup);
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6833C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 624);
      v9 = *(v0 + 616);
      v10 = *(v0 + 536);
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v32 = v12;
      *v11 = 136315394;
      *&v29 = 0xD00000000000001DLL;
      *(&v29 + 1) = 0x80000001D1EC0A80;
      sub_1D19A1778(v10, v8, type metadata accessor for EndpointPath);
      *(v8 + *(v9 + 20)) = 19;
      v13 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v13);

      sub_1D199FA0C(v8, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      v14 = v29;
      sub_1D199FA0C(v10, type metadata accessor for StaticThermostatClusterGroup);
      v15 = sub_1D1B1312C(v14, *(&v14 + 1), &v32);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      *(v11 + 14) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EC0FD0, &v32);
      _os_log_impl(&dword_1D16EC000, v6, v7, "[%s]-%s: Unable to update preset info because no matching preset was found.", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v12, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    else
    {
      v27 = *(v0 + 536);

      sub_1D199FA0C(v27, type metadata accessor for StaticThermostatClusterGroup);
    }

    v28 = *(v0 + 8);

    return v28();
  }

  else
  {
    v16 = *(v0 + 624);
    v17 = *(v0 + 616);
    v18 = *(v0 + 608);
    v19 = *(v0 + 600);
    v20 = *(v0 + 592);
    v21 = *(v0 + 584);
    v22 = *(v0 + 576);
    sub_1D19A1778(*(v0 + 520), v16, type metadata accessor for EndpointPath);
    *(v16 + *(v17 + 20)) = 19;
    v23 = *(v16 + *(v22 + 20));
    sub_1D19A1778(v16, v21, type metadata accessor for EndpointPath);
    (*(v19 + 32))(v18, v21, v20);
    v24 = swift_task_alloc();
    *(v0 + 648) = v24;
    *v24 = v0;
    v24[1] = sub_1D1997A78;
    v25 = *(v0 + 608);

    return sub_1D1A0A508(v23, v25);
  }
}

uint64_t sub_1D1997A78(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *v2;
  v4[62] = v2;
  v4[63] = a1;
  v4[64] = a2;
  v5 = v3[78];
  v6 = v3[76];
  v7 = v3[75];
  v8 = v3[74];
  v4[82] = a1;

  (*(v7 + 8))(v6, v8);
  sub_1D199FA0C(v5, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D1997C10, 0, 0);
}

uint64_t sub_1D1997C10()
{
  v112 = v0;
  if (!v0[82])
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v18 = v0[69];
    v19 = v0[68];
    v20 = v0[65];
    v21 = sub_1D1E6709C();
    __swift_project_value_buffer(v21, qword_1EE07A0B0);
    sub_1D19A1778(v20, v18, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D19A1778(v20, v19, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D1771B38(v0[57], v0[58]);

    v22 = sub_1D1E6707C();
    v23 = sub_1D1E6833C();
    sub_1D1741A30((v0 + 54), &qword_1EC647FB0, &unk_1D1E8A180);
    if (os_log_type_enabled(v22, v23))
    {
      v98 = *(v0 + 690);
      v24 = v101[78];
      v25 = v101[77];
      v26 = v101[69];
      v99 = v101[68];
      v27 = swift_slowAlloc();
      v106 = swift_slowAlloc();
      v111 = v106;
      *v27 = 136315906;
      v107 = 0xD00000000000001DLL;
      v108 = 0x80000001D1EC0A80;
      sub_1D19A1778(v26, v24, type metadata accessor for EndpointPath);
      *(v24 + *(v25 + 20)) = 19;
      v102 = v23;
      v28 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v28);

      sub_1D199FA0C(v24, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v26, type metadata accessor for StaticThermostatClusterGroup);
      v29 = sub_1D1B1312C(v107, v108, &v111);

      *(v27 + 4) = v29;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EC0FD0, &v111);
      *(v27 + 22) = 2080;
      LOBYTE(v107) = v98;
      v30 = ThermostatPresetScenario.label.getter();
      v32 = sub_1D1B1312C(v30, v31, &v111);

      *(v27 + 24) = v32;
      *(v27 + 32) = 2082;
      sub_1D19A1778(v99, v24, type metadata accessor for EndpointPath);
      *(v24 + *(v25 + 20)) = 19;
      v33 = ClusterPath.description.getter();
      v35 = v34;
      v0 = v101;
      sub_1D199FA0C(v24, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v99, type metadata accessor for StaticThermostatClusterGroup);
      v36 = sub_1D1B1312C(v33, v35, &v111);

      *(v27 + 34) = v36;
      _os_log_impl(&dword_1D16EC000, v22, v102, "[%s]-%s: Unable to update preset info for preset: %s because device in current home with path %{public}s could not be found.", v27, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v106, -1, -1);
      MEMORY[0x1D3893640](v27, -1, -1);
LABEL_16:
      sub_1D1741A30((v0 + 54), &qword_1EC647FB0, &unk_1D1E8A180);

LABEL_37:

      v89 = v0[1];

      return v89();
    }

    v85 = v0[69];
    v86 = v0[68];

    sub_1D1741A30((v0 + 54), &qword_1EC647FB0, &unk_1D1E8A180);
    sub_1D199FA0C(v86, type metadata accessor for StaticThermostatClusterGroup);
    v87 = v85;
LABEL_36:
    sub_1D199FA0C(v87, type metadata accessor for StaticThermostatClusterGroup);
    goto LABEL_37;
  }

  v1 = v0[65];
  v2 = *(v1 + *(v0[66] + 28) + 24);
  if (!v2)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
      v1 = v0[65];
    }

    v37 = v0[70];
    v38 = sub_1D1E6709C();
    __swift_project_value_buffer(v38, qword_1EE07A0B0);
    sub_1D19A1778(v1, v37, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D1771B38(v0[57], v0[58]);

    v22 = sub_1D1E6707C();
    v39 = sub_1D1E6833C();
    sub_1D1741A30((v0 + 54), &qword_1EC647FB0, &unk_1D1E8A180);
    if (os_log_type_enabled(v22, v39))
    {
      v40 = *(v0 + 690);
      v41 = v101[78];
      v42 = v101[77];
      v43 = v101[70];
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v111 = v45;
      *v44 = 136315650;
      v107 = 0xD00000000000001DLL;
      v108 = 0x80000001D1EC0A80;
      sub_1D19A1778(v43, v41, type metadata accessor for EndpointPath);
      *(v41 + *(v42 + 20)) = 19;
      v46 = ClusterPath.description.getter();
      MEMORY[0x1D3890F70](v46);

      sub_1D199FA0C(v41, type metadata accessor for ClusterPath);
      MEMORY[0x1D3890F70](41, 0xE100000000000000);
      sub_1D199FA0C(v43, type metadata accessor for StaticThermostatClusterGroup);
      v47 = sub_1D1B1312C(v107, v108, &v111);
      v0 = v101;

      *(v44 + 4) = v47;
      *(v44 + 12) = 2080;
      *(v44 + 14) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EC0FD0, &v111);
      *(v44 + 22) = 2080;
      LOBYTE(v107) = v40;
      v48 = ThermostatPresetScenario.label.getter();
      v50 = sub_1D1B1312C(v48, v49, &v111);

      *(v44 + 24) = v50;
      _os_log_impl(&dword_1D16EC000, v22, v39, "[%s]-%s: Unable to update preset info for preset: %s because thermostat has no preset information.", v44, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v45, -1, -1);
      MEMORY[0x1D3893640](v44, -1, -1);
      swift_unknownObjectRelease();
      goto LABEL_16;
    }

    v88 = v0[70];
    swift_unknownObjectRelease();
    sub_1D1741A30((v0 + 54), &qword_1EC647FB0, &unk_1D1E8A180);

    v87 = v88;
    goto LABEL_36;
  }

  v94 = v0[64];
  v95 = v0[82];
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
    v1 = v0[65];
  }

  v3 = v0[80];
  v4 = v0[79];
  v5 = v0[71];
  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EE07A0B0);
  sub_1D19A1778(v1, v5, type metadata accessor for StaticThermostatClusterGroup);
  sub_1D1771B38(v4, v3);
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6833C();
  sub_1D1716AA4(v4, v3);
  if (!os_log_type_enabled(v7, v8))
  {
    v51 = v0[71];

    sub_1D199FA0C(v51, type metadata accessor for StaticThermostatClusterGroup);
    v52 = *(v2 + 16);
    if (!v52)
    {
      goto LABEL_42;
    }

    goto LABEL_18;
  }

  v105 = v0[80];
  v9 = v0[78];
  v10 = v0[77];
  v11 = v0[71];
  v12 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  v111 = v13;
  *v12 = 136315650;
  v107 = 0xD00000000000001DLL;
  v108 = 0x80000001D1EC0A80;
  sub_1D19A1778(v11, v9, type metadata accessor for EndpointPath);
  *(v9 + *(v10 + 20)) = 19;
  v14 = ClusterPath.description.getter();
  MEMORY[0x1D3890F70](v14);

  sub_1D199FA0C(v9, type metadata accessor for ClusterPath);
  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  sub_1D199FA0C(v11, type metadata accessor for StaticThermostatClusterGroup);
  v15 = sub_1D1B1312C(v107, v108, &v111);

  *(v12 + 4) = v15;
  *(v12 + 12) = 2080;
  *(v12 + 14) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EC0FD0, &v111);
  *(v12 + 22) = 2080;
  if (v105 >> 60 == 15)
  {
    v16 = 0;
    v17 = 0xE000000000000000;
  }

  else
  {
    v16 = sub_1D1E6689C();
    v17 = v91;
  }

  v92 = sub_1D1B1312C(v16, v17, &v111);

  *(v12 + 24) = v92;
  _os_log_impl(&dword_1D16EC000, v7, v8, "[%s]-%s: Updating preset info for handle: [%s", v12, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x1D3893640](v13, -1, -1);
  MEMORY[0x1D3893640](v12, -1, -1);

  v52 = *(v2 + 16);
  if (v52)
  {
LABEL_18:
    v53 = (v2 + 49);
    v54 = MEMORY[0x1E69E7CC0];
    v97 = v0[80] >> 60;
    while (1)
    {
      v55 = *(v53 - 17);
      v56 = *(v53 - 9);
      v57 = *(v53 - 1);
      v58 = v0[80];
      if (v56 >> 60 == 15)
      {
        if (v97 <= 0xE)
        {
          goto LABEL_23;
        }

        v59 = v0[79];
        sub_1D1771B38(v55, v56);
        sub_1D1771B38(v59, v58);
        sub_1D1771B38(v55, v56);
        sub_1D1716AA4(v55, v56);
      }

      else
      {
        if (v97 > 0xE)
        {
LABEL_23:
          v103 = *v53;
          v60 = v0[79];
          sub_1D1771B38(v55, v56);
          sub_1D1771B38(v60, v58);
          sub_1D1771B38(v55, v56);
          sub_1D1716AA4(v55, v56);
          sub_1D1716AA4(v60, v58);
LABEL_24:
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D1E739C0;
          *(inited + 32) = sub_1D1E6781C();
          *(inited + 40) = v62;
          v63 = swift_initStackObject();
          *(v63 + 16) = xmmword_1D1E73A90;
          *(v63 + 32) = sub_1D1E6781C();
          *(v63 + 40) = v64;
          v65 = sub_1D1E6781C();
          *(v63 + 72) = MEMORY[0x1E69E6158];
          *(v63 + 48) = v65;
          *(v63 + 56) = v66;
          *(v63 + 80) = sub_1D1E6781C();
          *(v63 + 88) = v67;
          v107 = v55;
          v108 = v56;
          v109 = v57;
          v110 = v103;
          v68 = sub_1D19B63BC(&v107);
          *(v63 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
          *(v63 + 96) = v68;
          v69 = sub_1D18D6E78(v63);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
          swift_arrayDestroy();
          *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
          *(inited + 48) = v69;
          v70 = sub_1D18D6E78(inited);
          swift_setDeallocating();
          sub_1D1741A30(inited + 32, &qword_1EC646228, &qword_1D1E8A0C0);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1D177D340(0, v54[2] + 1, 1, v54);
          }

          goto LABEL_30;
        }

        v103 = *v53;
        v71 = v0[79];
        sub_1D1771B38(v55, v56);
        sub_1D1771B38(v55, v56);
        sub_1D1771B38(v71, v58);
        sub_1D1771B38(v55, v56);
        v72 = sub_1D199F344(v55, v56, v71, v58);
        sub_1D1716AA4(v71, v58);
        sub_1D1716AA4(v55, v56);
        sub_1D1716AA4(v55, v56);
        if (!v72)
        {
          goto LABEL_24;
        }
      }

      v104 = *(v0 + 689);
      v100 = *(v0 + 688);
      v96 = v0[80];
      v73 = v0[79];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
      v74 = swift_initStackObject();
      *(v74 + 16) = xmmword_1D1E739C0;
      *(v74 + 32) = sub_1D1E6781C();
      *(v74 + 40) = v75;
      v76 = swift_initStackObject();
      *(v76 + 16) = xmmword_1D1E73A90;
      *(v76 + 32) = sub_1D1E6781C();
      *(v76 + 40) = v77;
      v78 = sub_1D1E6781C();
      *(v76 + 72) = MEMORY[0x1E69E6158];
      *(v76 + 48) = v78;
      *(v76 + 56) = v79;
      *(v76 + 80) = sub_1D1E6781C();
      *(v76 + 88) = v80;
      v107 = v73;
      v108 = v96;
      v109 = v100;
      v110 = v104;
      v81 = sub_1D19B63BC(&v107);
      *(v76 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
      *(v76 + 96) = v81;
      v82 = sub_1D18D6E78(v76);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
      swift_arrayDestroy();
      *(v74 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643398, &qword_1D1E71810);
      *(v74 + 48) = v82;
      v70 = sub_1D18D6E78(v74);
      swift_setDeallocating();
      sub_1D1741A30(v74 + 32, &qword_1EC646228, &qword_1D1E8A0C0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1D177D340(0, v54[2] + 1, 1, v54);
      }

LABEL_30:
      v84 = v54[2];
      v83 = v54[3];
      v0 = v101;
      if (v84 >= v83 >> 1)
      {
        v54 = sub_1D177D340((v83 > 1), v84 + 1, 1, v54);
      }

      sub_1D1716AA4(v55, v56);
      v54[2] = v84 + 1;
      v54[v84 + 4] = v70;
      v53 += 24;
      if (!--v52)
      {
        goto LABEL_43;
      }
    }
  }

LABEL_42:
  v54 = MEMORY[0x1E69E7CC0];
LABEL_43:
  v0[83] = v54;
  v93 = swift_task_alloc();
  v0[84] = v93;
  *v93 = v0;
  v93[1] = sub_1D1998C30;

  return StaticThermostatClusterGroup.updatePresetsInfo(presetInfo:device:)(v54, v95, v94);
}

uint64_t sub_1D1998C30()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_1D1998E3C;
  }

  else
  {

    v2 = sub_1D1998D4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1998D4C()
{
  swift_unknownObjectRelease();
  sub_1D1741A30(v0 + 432, &qword_1EC647FB0, &unk_1D1E8A180);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1998E3C()
{
  swift_unknownObjectRelease();
  sub_1D1741A30(v0 + 432, &qword_1EC647FB0, &unk_1D1E8A180);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1998F44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v6[25] = type metadata accessor for ClusterPath(0);
  v6[26] = swift_task_alloc();
  type metadata accessor for StaticThermostatClusterGroup(0);
  v6[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199900C, 0, 0);
}

uint64_t sub_1D199900C()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[28] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D199918C;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648008, &unk_1D1E8A5A0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_166;
  v0[14] = v6;
  [v5 atomicRequestWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D199918C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1D19A1E7C;
  }

  else
  {
    v2 = sub_1D199929C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D199929C()
{
  v8 = v0;
  v1 = *(v0 + 144);

  v2 = [v1 statusCode];
  *rawValue = 256;
  sub_1D1E691CC();

  v3 = [v1 statusCode];
  sub_1D19A180C();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = 0;
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D19997EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v6[25] = type metadata accessor for ClusterPath(0);
  v6[26] = swift_task_alloc();
  type metadata accessor for StaticThermostatClusterGroup(0);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D19998C0, 0, 0);
}

uint64_t sub_1D19998C0()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[29] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D1999A40;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648008, &unk_1D1E8A5A0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_162;
  v0[14] = v6;
  [v5 atomicRequestWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D1999A40()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1D19A1E74;
  }

  else
  {
    v2 = sub_1D1999B50;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1999B50()
{
  v8 = v0;
  v1 = *(v0 + 144);

  v2 = [v1 statusCode];
  *rawValue = 256;
  sub_1D1E691CC();

  v3 = [v1 statusCode];
  sub_1D19A180C();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = 0;
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D199A300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v6[25] = type metadata accessor for ClusterPath(0);
  v6[26] = swift_task_alloc();
  type metadata accessor for StaticThermostatClusterGroup(0);
  v6[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199A3C8, 0, 0);
}

uint64_t sub_1D199A3C8()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[28] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D199A548;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648008, &unk_1D1E8A5A0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_143;
  v0[14] = v6;
  [v5 atomicRequestWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D199A548()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1D199ABAC;
  }

  else
  {
    v2 = sub_1D199A658;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D199A658()
{
  v8 = v0;
  v1 = *(v0 + 144);

  v2 = [v1 statusCode];
  *rawValue = 256;
  sub_1D1E691CC();

  v3 = [v1 statusCode];
  sub_1D19A180C();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = 0;
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D199ABAC(uint64_t a1)
{
  v2 = *(v1 + 224);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1D199AC2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[23] = a5;
  v6[24] = a6;
  v6[21] = a3;
  v6[22] = a4;
  v6[19] = a1;
  v6[20] = a2;
  v6[25] = type metadata accessor for ClusterPath(0);
  v6[26] = swift_task_alloc();
  type metadata accessor for StaticThermostatClusterGroup(0);
  v6[27] = swift_task_alloc();
  v6[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199AD00, 0, 0);
}

uint64_t sub_1D199AD00()
{
  v1 = v0[21];
  if (v1)
  {
    sub_1D18F9814(v1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v2 = sub_1D1E67BFC();
  }

  else
  {
    v2 = 0;
  }

  v0[29] = v2;
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D199AE80;
  v6 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648008, &unk_1D1E8A5A0);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D17AFE50;
  v0[13] = &block_descriptor_25;
  v0[14] = v6;
  [v5 atomicRequestWithParams:v3 expectedValues:v2 expectedValueInterval:v4 completion:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D199AE80()
{
  v1 = *(*v0 + 48);
  *(*v0 + 240) = v1;
  if (v1)
  {
    v2 = sub_1D199B748;
  }

  else
  {
    v2 = sub_1D199AF90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D199AF90()
{
  v8 = v0;
  v1 = *(v0 + 144);

  v2 = [v1 statusCode];
  *rawValue = 256;
  sub_1D1E691CC();

  v3 = [v1 statusCode];
  sub_1D19A180C();
  swift_allocError();
  *v4 = v3;
  *(v4 + 8) = 0;
  swift_willThrow();

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1D199B748(uint64_t a1)
{
  v2 = *(v1 + 232);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

double StaticThermostatClusterGroup.maxTemperature.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for StaticThermostatClusterGroup(0);
  v4 = v0 + *(v3 + 36);
  if (*(v4 + 40) == 1)
  {
    v5 = v0 + *(v3 + 40);
    if (*(v5 + 40))
    {
      v6 = 3200;
    }

    else
    {
      v6 = *(v5 + 32);
    }
  }

  else
  {
    v6 = *(v4 + 32);
  }

  sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v7 = sub_1D1E6838C();
  v8 = objc_opt_self();
  v9 = [v8 fahrenheit];
  v10 = sub_1D1E684FC();

  if (v10)
  {
    v11 = 0.555555556;
  }

  else
  {
    v12 = [v8 celsius];
    sub_1D1E684FC();

    v11 = 0.5;
    v7 = v12;
  }

  return v11 * round(v6 / 100.0 / v11);
}

double StaticThermostatClusterGroup.minTemperature.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for StaticThermostatClusterGroup(0);
  v4 = v0 + *(v3 + 40);
  if (*(v4 + 24) == 1)
  {
    v5 = v0 + *(v3 + 36);
    if (*(v5 + 24))
    {
      v6 = 700;
    }

    else
    {
      v6 = *(v5 + 16);
    }
  }

  else
  {
    v6 = *(v4 + 16);
  }

  sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v7 = sub_1D1E6838C();
  v8 = objc_opt_self();
  v9 = [v8 fahrenheit];
  v10 = sub_1D1E684FC();

  if (v10)
  {
    v11 = 0.555555556;
  }

  else
  {
    v12 = [v8 celsius];
    sub_1D1E684FC();

    v11 = 0.5;
    v7 = v12;
  }

  return v11 * round(v6 / 100.0 / v11);
}

uint64_t StaticThermostatClusterGroup.coolingTemperature.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for StaticThermostatClusterGroup(0);
  *&result = 0.0;
  v5 = v0 + *(v3 + 36);
  if ((*(v5 + 8) & 1) == 0)
  {
    v6 = *v5 / 100.0;
    sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
    sub_1D1E66ABC();
    sub_1D1E666FC();
    v7 = sub_1D1E6838C();
    v8 = objc_opt_self();
    v9 = [v8 fahrenheit];
    v10 = sub_1D1E684FC();

    if (v10)
    {
      v11 = 0.555555556;
    }

    else
    {
      v12 = [v8 celsius];
      sub_1D1E684FC();

      v11 = 0.5;
      v7 = v12;
    }

    *&result = v11 * round(v6 / v11);
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.heatingTemperature.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for StaticThermostatClusterGroup(0);
  *&result = 0.0;
  v5 = v0 + *(v3 + 40);
  if ((*(v5 + 8) & 1) == 0)
  {
    v6 = *v5 / 100.0;
    sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
    sub_1D1E66ABC();
    sub_1D1E666FC();
    v7 = sub_1D1E6838C();
    v8 = objc_opt_self();
    v9 = [v8 fahrenheit];
    v10 = sub_1D1E684FC();

    if (v10)
    {
      v11 = 0.555555556;
    }

    else
    {
      v12 = [v8 celsius];
      sub_1D1E684FC();

      v11 = 0.5;
      v7 = v12;
    }

    *&result = v11 * round(v6 / v11);
  }

  return result;
}

BOOL StaticThermostatClusterGroup.supportsPresets.getter()
{
  v1 = type metadata accessor for StaticThermostatClusterGroup(0);
  if (*(v0 + *(v1 + 24)) == 1 && (v2 = v0 + *(v1 + 28), *v2 != 2) && (v3 = *(v2 + 8)) != 0)
  {
    return *(v3 + 16) != 0;
  }

  else
  {
    return 0;
  }
}

uint64_t StaticThermostatClusterGroup.supportsAdaptiveTemperature.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticThermostatClusterGroup(0) + 28));
  if (*v1 == 2)
  {
    return 0;
  }

  else
  {
    return v1[*(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 84)];
  }
}

uint64_t StaticThermostatClusterGroup.setpointOffsetActive.getter()
{
  v1 = v0 + *(type metadata accessor for StaticThermostatClusterGroup(0) + 32);
  if (*(v1 + 8))
  {
    return 2;
  }

  else
  {
    return *v1 > 0;
  }
}

uint64_t StaticThermostatClusterGroup.adaptiveTemperatureEnabled.getter()
{
  result = type metadata accessor for StaticThermostatClusterGroup(0);
  v2 = *(v0 + *(result + 28) + 16);
  if (v2)
  {
    v57 = (v0 + *(result + 28));
    v54 = result;
    v55 = v0;
    v3 = *(v2 + 16);
    v4 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v5 = 0;
      v6 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        v7 = (v2 + 32 + (v5 << 6));
        v8 = v5;
        while (1)
        {
          if (v8 >= *(v2 + 16))
          {
            __break(1u);
LABEL_53:
            __break(1u);
            return result;
          }

          v9 = v7[3];
          v10 = *v7;
          v11 = v7[1];
          v61 = v7[2];
          v62 = v9;
          v59 = v10;
          v60 = v11;
          v5 = v8 + 1;
          if (v11 < 2u)
          {
            break;
          }

          v7 += 4;
          ++v8;
          if (v3 == v5)
          {
            goto LABEL_16;
          }
        }

        sub_1D17806DC(&v59, v58);
        result = swift_isUniquelyReferenced_nonNull_native();
        v63 = v6;
        if ((result & 1) == 0)
        {
          result = sub_1D178D694(0, v6[2] + 1, 1);
          v6 = v63;
        }

        v13 = v6[2];
        v12 = v6[3];
        if (v13 >= v12 >> 1)
        {
          result = sub_1D178D694((v12 > 1), v13 + 1, 1);
          v6 = v63;
        }

        v6[2] = v13 + 1;
        v14 = &v6[8 * v13];
        v15 = v59;
        v16 = v60;
        v17 = v62;
        *(v14 + 4) = v61;
        *(v14 + 5) = v17;
        *(v14 + 2) = v15;
        *(v14 + 3) = v16;
        if (v3 - 1 != v8)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

LABEL_16:
    v18 = v6[2];
    if (v18)
    {
      *&v59 = v4;
      sub_1D178D8B8(0, v18, 0);
      v19 = v59;
      v20 = v6 + 8;
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;
        sub_1D1771B38(v21, *v20);
        *&v59 = v19;
        v24 = *(v19 + 16);
        v23 = *(v19 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D178D8B8((v23 > 1), v24 + 1, 1);
          v19 = v59;
        }

        v20 += 8;
        *(v19 + 16) = v24 + 1;
        v25 = v19 + 16 * v24;
        *(v25 + 32) = v21;
        *(v25 + 40) = v22;
        --v18;
      }

      while (v18);
    }

    else
    {

      v19 = MEMORY[0x1E69E7CC0];
    }

    v26 = *(v57 + 3);
    if (v26)
    {
      v27 = 0;
      v28 = *(v26 + 16);
      v29 = v26 + 24;
      v30 = MEMORY[0x1E69E7CC0];
      v31 = MEMORY[0x1E69E7CC0];
LABEL_25:
      v32 = v29 + 24 * v27;
      while (v28 != v27)
      {
        if (v27 >= *(v26 + 16))
        {
          goto LABEL_53;
        }

        ++v27;
        v33 = (v32 + 24);
        v34 = *(v32 + 25);
        v32 += 24;
        if (v34)
        {
          v35 = *(v33 - 2);
          v36 = *(v33 - 1);
          v37 = *v33;
          sub_1D1771B38(v35, v36);
          result = swift_isUniquelyReferenced_nonNull_native();
          *&v59 = v31;
          v56 = v29;
          if ((result & 1) == 0)
          {
            result = sub_1D178D8F8(0, v31[2] + 1, 1);
            v31 = v59;
          }

          v39 = v31[2];
          v38 = v31[3];
          if (v39 >= v38 >> 1)
          {
            result = sub_1D178D8F8((v38 > 1), v39 + 1, 1);
            v31 = v59;
          }

          v31[2] = v39 + 1;
          v40 = &v31[3 * v39];
          v40[4] = v35;
          v40[5] = v36;
          *(v40 + 48) = v37;
          *(v40 + 49) = 1;
          v29 = v56;
          goto LABEL_25;
        }
      }

      v41 = v31[2];
      if (v41)
      {
        *&v59 = v30;
        sub_1D178D8B8(0, v41, 0);
        v42 = v59;
        v43 = v31 + 5;
        do
        {
          v44 = *(v43 - 1);
          v45 = *v43;
          sub_1D1771B38(v44, *v43);
          *&v59 = v42;
          v47 = *(v42 + 16);
          v46 = *(v42 + 24);
          if (v47 >= v46 >> 1)
          {
            sub_1D178D8B8((v46 > 1), v47 + 1, 1);
            v42 = v59;
          }

          v43 += 3;
          *(v42 + 16) = v47 + 1;
          v48 = v42 + 16 * v47;
          *(v48 + 32) = v44;
          *(v48 + 40) = v45;
          --v41;
        }

        while (v41);
      }

      else
      {

        v42 = MEMORY[0x1E69E7CC0];
      }

      *&v59 = v42;
      v58[0] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FB8, &unk_1D1E8A1E0);
      sub_1D17D8EA8(&qword_1EC647FC0, &qword_1EC647FB8, &unk_1D1E8A1E0, MEMORY[0x1E69E6340]);
      sub_1D19A1130();
      v49 = sub_1D1E6825C();

      v50 = *v57;
      if (v50 != 2 && (v50 & 1) != 0)
      {
        v51 = &v57[*(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 40)];
        v52 = (v55 + *(v54 + 44));
        v53 = v52[1];
        if (v51[1])
        {
          if (v52[1])
          {
            return v49 & 1;
          }
        }

        else
        {
          if (*v51 != *v52)
          {
            v53 = 1;
          }

          if ((v53 & 1) == 0)
          {
            return v49 & 1;
          }
        }
      }
    }

    else
    {
    }
  }

  v49 = 0;
  return v49 & 1;
}

uint64_t StaticThermostatClusterGroup.TemperatureSetpointHold.commandString.getter()
{
  if (*v0)
  {
    return 0x6F70746553746573;
  }

  else
  {
    return 0xD000000000000012;
  }
}

HomeDataModel::StaticThermostatClusterGroup::TemperatureSetpointHold_optional __swiftcall StaticThermostatClusterGroup.TemperatureSetpointHold.init(rawValue:)(HomeDataModel::StaticThermostatClusterGroup::TemperatureSetpointHold_optional rawValue)
{
  if (rawValue.value == HomeDataModel_StaticThermostatClusterGroup_TemperatureSetpointHold_on)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue.value == HomeDataModel_StaticThermostatClusterGroup_TemperatureSetpointHold_off)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

_BYTE *sub_1D199C608@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t StaticThermostatClusterGroup.updateTemperatureSetpointHold(to:)(_BYTE *a1)
{
  *(v2 + 160) = v1;
  *(v2 + 168) = type metadata accessor for EndpointPath(0);
  *(v2 + 176) = swift_task_alloc();
  *(v2 + 184) = type metadata accessor for ClusterPath(0);
  *(v2 + 192) = swift_task_alloc();
  *(v2 + 200) = swift_task_alloc();
  *(v2 + 280) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1D199C7B4, 0, 0);
}

uint64_t sub_1D199C7B4()
{
  v1 = *(v0 + 280);
  v2 = *(v0 + 200);
  v3 = *(v0 + 184);
  v4 = *(v0 + 160);
  v5 = *(v0 + 168);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v7;
  v8 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v8;
  *(inited + 56) = v9;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v10;
  v11 = sub_1D1E691BC();
  *(inited + 120) = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  *(inited + 96) = v11;
  *(v0 + 208) = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  sub_1D19A1778(v4, v2, type metadata accessor for EndpointPath);
  *(v2 + *(v3 + 20)) = 19;
  v12 = *(v2 + *(v5 + 24));
  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);
  v13 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = sub_1D171D15C(v12);
  v17 = v13[2];
  v18 = (v15 & 1) == 0;
  result = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    return result;
  }

  v20 = v15;
  if (v13[3] >= result)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
    }
  }

  else
  {
    sub_1D172684C(result, isUniquelyReferenced_nonNull_native);
    v21 = sub_1D171D15C(v12);
    if ((v20 & 1) != (v22 & 1))
    {

      return sub_1D1E690FC();
    }

    v16 = v21;
  }

  *(v0 + 216) = v13;

  if ((v20 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v23 = *(v0 + 192);
  v24 = *(v0 + 160);
  v25 = v13[7];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v25 + 8 * v16);
  *(v25 + 8 * v16) = 0x8000000000000000;
  sub_1D1753B88(v1, 2, 0x1300000023, v26);
  *(v25 + 8 * v16) = v29;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v24, v23, type metadata accessor for EndpointPath);
  *(v23 + *(v3 + 20)) = 19;
  v27 = swift_task_alloc();
  *(v0 + 224) = v27;
  *v27 = v0;
  v27[1] = sub_1D199CB2C;
  v28 = *(v0 + 192);

  return sub_1D1A092C4(v28);
}

uint64_t sub_1D199CB2C(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 232) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D199CC60, 0, 0);
}

uint64_t sub_1D199CC60()
{
  v17 = v0;
  v2 = *(v0 + 208);
  v1 = *(v0 + 216);
  v3 = *(v0 + 280);
  v14 = MEMORY[0x1E69E7CC0];
  v15 = v1;
  sub_1D1A1456C(&v15, &v14);

  v4 = v14;
  *(v0 + 240) = v14;
  v5 = swift_allocObject();
  *(v0 + 248) = v5;
  *(v5 + 16) = v2;
  v15 = 0xD00000000000001DLL;
  v16 = 0x80000001D1EC0A80;
  v6 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v6);

  v7 = v15;
  v8 = v16;
  *(v0 + 256) = v16;
  v9 = swift_task_alloc();
  *(v0 + 264) = v9;
  *v9 = v0;
  v9[1] = sub_1D199CE14;
  v10 = 0x6F70746553746573;
  if (v3)
  {
    v11 = 0xEF646C6F48746E69;
  }

  else
  {
    v10 = 0xD000000000000012;
    v11 = 0x80000001D1EC0FF0;
  }

  v12 = *(v0 + 232);

  return sub_1D19167E4(v10, v11, v12, v4, v7, v8, &unk_1D1E8A1F8, v5);
}

uint64_t sub_1D199CE14()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {

    v3 = sub_1D199D044;
  }

  else
  {
    v4 = *(v2 + 232);

    v3 = sub_1D199CFCC;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D199CFCC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D199D044()
{
  v1 = *(v0 + 272);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 160);

    v5 = *(v0 + 152);
    sub_1D19A1778(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D199FB14(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 232);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D199D24C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D199D270, 0, 0);
}

uint64_t sub_1D199D270()
{
  v1 = v0[4];
  *(v0[2] + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D18A7A4C(v1);
  v2 = sub_1D1E675DC();

  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC649398;
  if (qword_1EC649398)
  {
    v4 = qword_1EC649398;
  }

  else
  {
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v4 = sub_1D1E684DC();
    v3 = 0;
  }

  v5 = v0[3];
  v6 = v3;
  [v5 writeAttributeTemperatureSetpointHoldWithValue:v2 expectedValueInterval:v4];

  v7 = v0[1];

  return v7();
}

uint64_t StaticThermostatClusterGroup.updateTemperatureSetpointHoldDuration(to:)(uint64_t a1, char a2)
{
  *(v3 + 288) = a2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v2;
  *(v3 + 176) = type metadata accessor for EndpointPath(0);
  *(v3 + 184) = swift_task_alloc();
  *(v3 + 192) = type metadata accessor for ClusterPath(0);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199D48C, 0, 0);
}

void sub_1D199D48C()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 160);
  v3 = v2;
  if ((v1 & 1) == 0)
  {
    v3 = 60 * v2;
    if ((v2 * 60) >> 64 != (60 * v2) >> 63)
    {
      goto LABEL_23;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 40) = v5;
  v6 = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v8;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647370, &qword_1D1E854F8);
  if (v1)
  {
    v3 = 0;
    v9 = 0;
  }

  else
  {
    v9 = sub_1D1E6821C();
  }

  *(inited + 96) = v9;
  *(v0 + 216) = sub_1D18D6E78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  if (v3 < 0)
  {
    __break(1u);
    goto LABEL_22;
  }

  v10 = *(v0 + 208);
  v11 = *(v0 + 192);
  v12 = *(v0 + 176);
  sub_1D19A1778(*(v0 + 168), v10, type metadata accessor for EndpointPath);
  *(v10 + *(v11 + 20)) = 19;
  v13 = *(v10 + *(v12 + 24));
  sub_1D199FA0C(v10, type metadata accessor for ClusterPath);
  v14 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = sub_1D171D15C(v13);
  v18 = v14[2];
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  v21 = v16;
  if (v14[3] >= v20)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737DF0();
    }
  }

  else
  {
    sub_1D172684C(v20, isUniquelyReferenced_nonNull_native);
    v22 = sub_1D171D15C(v13);
    if ((v21 & 1) != (v23 & 1))
    {

      sub_1D1E690FC();
      return;
    }

    v17 = v22;
  }

  *(v0 + 224) = v14;

  if ((v21 & 1) == 0)
  {
    sub_1D18D4B28(MEMORY[0x1E69E7CC0]);
    sub_1D19DD7DC();
  }

  v24 = *(v0 + 200);
  v25 = *(v0 + 168);
  v26 = v14[7];
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v26 + 8 * v17);
  *(v26 + 8 * v17) = 0x8000000000000000;
  sub_1D1753B88(v3, 2, 0x1300000024, v27);
  *(v26 + 8 * v17) = v30;
  sub_1D1741B10(0, &qword_1EC647F30, 0x1E696F5D8);
  sub_1D19A1778(v25, v24, type metadata accessor for EndpointPath);
  *(v24 + *(v11 + 20)) = 19;
  v28 = swift_task_alloc();
  *(v0 + 232) = v28;
  *v28 = v0;
  v28[1] = sub_1D199D838;
  v29 = *(v0 + 200);

  sub_1D1A092C4(v29);
}

uint64_t sub_1D199D838(uint64_t a1)
{
  v2 = *(*v1 + 200);
  *(*v1 + 240) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D199D96C, 0, 0);
}

uint64_t sub_1D199D96C()
{
  v14 = v0;
  v2 = v0[27];
  v1 = v0[28];
  v11 = MEMORY[0x1E69E7CC0];
  v12 = v1;
  sub_1D1A1456C(&v12, &v11);

  v3 = v11;
  v0[31] = v11;
  v4 = swift_allocObject();
  v0[32] = v4;
  *(v4 + 16) = v2;
  v12 = 0xD00000000000001DLL;
  v13 = 0x80000001D1EC0A80;
  v5 = EndpointPath.description.getter();
  MEMORY[0x1D3890F70](v5);

  v6 = v12;
  v7 = v13;
  v0[33] = v13;
  v8 = swift_task_alloc();
  v0[34] = v8;
  *v8 = v0;
  v8[1] = sub_1D199DAF4;
  v9 = v0[30];

  return sub_1D19167E4(0x44646C6F48746573, 0xEF6E6F6974617275, v9, v3, v6, v7, &unk_1D1E8A218, v4);
}

uint64_t sub_1D199DAF4()
{
  v2 = *v1;
  *(*v1 + 280) = v0;

  if (v0)
  {

    v3 = sub_1D199DCCC;
  }

  else
  {
    v4 = *(v2 + 240);

    v3 = sub_1D199DC54;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D199DC54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D199DCCC()
{
  v1 = *(v0 + 280);
  *(v0 + 144) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  type metadata accessor for MTRError(0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 168);

    v5 = *(v0 + 152);
    sub_1D19A1778(v4, v3, type metadata accessor for EndpointPath);
    v6 = type metadata accessor for MatterCommandError.MatterError(0);
    sub_1D19A13E0(&qword_1EC646F00, type metadata accessor for MatterCommandError.MatterError, &protocol conformance descriptor for MatterCommandError.MatterError);
    swift_allocError();
    v8 = v7;
    v9 = v6[7];
    v10 = type metadata accessor for StaticEndpoint(0);
    (*(*(v10 - 8) + 56))(&v8[v9], 1, 1, v10);
    *v8 = v5;
    sub_1D199FB14(v3, &v8[v6[5]], type metadata accessor for EndpointPath);
    v8[v6[6]] = 30;
    swift_willThrow();
  }

  v11 = *(v0 + 240);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D199DED4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a2;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D199DEF8, 0, 0);
}

uint64_t sub_1D199DEF8()
{
  v1 = v0[4];
  *(v0[2] + 24) = MEMORY[0x1E69E7CA8] + 8;
  sub_1D18A7A4C(v1);
  v2 = sub_1D1E675DC();

  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC649398;
  if (qword_1EC649398)
  {
    v4 = qword_1EC649398;
  }

  else
  {
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v4 = sub_1D1E684DC();
    v3 = 0;
  }

  v5 = v0[3];
  v6 = v3;
  [v5 writeAttributeTemperatureSetpointHoldDurationWithValue:v2 expectedValueInterval:v4];

  v7 = v0[1];

  return v7();
}

uint64_t sub_1D199E040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a1;
  v8[7] = type metadata accessor for ClusterPath(0);
  v8[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199E0DC, 0, 0);
}

uint64_t sub_1D199E0DC()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v12 = v0[4];
  ObjectType = swift_getObjectType();
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 19;
  v6 = sub_1D18A7A4C(v3);
  v0[9] = v6;
  v11 = (*(v12 + 80) + **(v12 + 80));
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1D199E260;
  v8 = v0[8];
  v9 = v0[4];

  return v11(v8, 323551481, v6, 0, ObjectType, v9);
}

uint64_t sub_1D199E260(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  sub_1D199FA0C(v4, type metadata accessor for ClusterPath);

  if (v1)
  {
    v5 = sub_1D199E46C;
  }

  else
  {
    v5 = sub_1D199E3CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D199E3CC()
{
  v1 = v0[11];
  if (v1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA8, &unk_1D1E8DD90);
  }

  else
  {
    v2 = 0;
    v3 = v0[2];
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
  }

  v4 = v0[2];
  *v4 = v1;
  v4[3] = v2;

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D199E46C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D199E4D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a1;
  v8[7] = type metadata accessor for ClusterPath(0);
  v8[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199E56C, 0, 0);
}

uint64_t sub_1D199E56C()
{
  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v12 = v0[4];
  ObjectType = swift_getObjectType();
  sub_1D19A1778(v4, v1, type metadata accessor for EndpointPath);
  *(v1 + *(v2 + 20)) = 29;
  v6 = sub_1D18A7A4C(v3);
  v0[9] = v6;
  v11 = (*(v12 + 80) + **(v12 + 80));
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1D199E6EC;
  v8 = v0[8];
  v9 = v0[4];

  return v11(v8, 0, v6, 0, ObjectType, v9);
}

uint64_t sub_1D199E6EC(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 64);
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  sub_1D199FA0C(v4, type metadata accessor for ClusterPath);

  if (v1)
  {
    v5 = sub_1D19A1E84;
  }

  else
  {
    v5 = sub_1D19A1E54;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t StaticThermostatClusterGroup.associatedAccessory.getter()
{
  v1[2] = v0;
  type metadata accessor for StaticThermostatClusterGroup(0);
  v1[3] = swift_task_alloc();
  v1[4] = type metadata accessor for ClusterPath(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D199E918, 0, 0);
}

uint64_t sub_1D199E918()
{
  v1 = v0[4];
  v2 = v0[5];
  sub_1D19A1778(v0[2], v2, type metadata accessor for EndpointPath);
  *(v2 + *(v1 + 20)) = 19;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_1D199E9DC;
  v4 = v0[5];

  return sub_1D1A09704(v4);
}

uint64_t sub_1D199E9DC(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  sub_1D199FA0C(v2, type metadata accessor for ClusterPath);

  return MEMORY[0x1EEE6DFA0](sub_1D199EB10, 0, 0);
}

uint64_t sub_1D199EB10()
{
  v20 = v0;
  if (!v0[7])
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v1 = v0[2];
    v2 = v0[3];
    v3 = sub_1D1E6709C();
    __swift_project_value_buffer(v3, qword_1EE07A0B0);
    sub_1D19A1778(v1, v2, type metadata accessor for StaticThermostatClusterGroup);
    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6833C();
    if (os_log_type_enabled(v4, v5))
    {
      v7 = v0[4];
      v6 = v0[5];
      v8 = v0[3];
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EC1010, &v19);
      *(v9 + 12) = 2080;
      sub_1D19A1778(v8, v6, type metadata accessor for EndpointPath);
      *(v6 + *(v7 + 20)) = 19;
      v11 = ClusterPath.description.getter();
      v13 = v12;
      sub_1D199FA0C(v6, type metadata accessor for ClusterPath);
      sub_1D199FA0C(v8, type metadata accessor for StaticThermostatClusterGroup);
      v14 = sub_1D1B1312C(v11, v13, &v19);

      *(v9 + 14) = v14;
      _os_log_impl(&dword_1D16EC000, v4, v5, "%s: Failed to find accessory in current home with path %s.", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    else
    {
      v15 = v0[3];

      sub_1D199FA0C(v15, type metadata accessor for StaticThermostatClusterGroup);
    }
  }

  v16 = v0[1];
  v17 = v0[7];

  return v16(v17);
}

uint64_t sub_1D199EDB4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1D1E6616C();
    if (v10)
    {
      v11 = sub_1D1E6619C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1D1E6618C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1D1E6616C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1D1E6619C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1D1E6618C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1D199EFE4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1D199F28C(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1D174E7C4(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1D199EDB4(v13, a3, a4, &v12);
  v10 = v4;
  sub_1D174E7C4(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

BOOL sub_1D199F174(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 == 15)
  {
    if (a4 >> 60 == 15)
    {
      sub_1D1771B38(a1, a2);
      sub_1D1771B38(a3, a4);
      sub_1D1716AA4(a1, a2);
      return 1;
    }

    goto LABEL_5;
  }

  if (a4 >> 60 == 15)
  {
LABEL_5:
    sub_1D1771B38(a1, a2);
    sub_1D1771B38(a3, a4);
    sub_1D1716AA4(a1, a2);
    sub_1D1716AA4(a3, a4);
    return 0;
  }

  sub_1D1771B38(a1, a2);
  sub_1D1771B38(a3, a4);
  v9 = sub_1D199F344(a1, a2, a3, a4);
  sub_1D1716AA4(a3, a4);
  sub_1D1716AA4(a1, a2);
  return v9;
}

uint64_t sub_1D199F28C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1D1E6616C();
  v11 = result;
  if (result)
  {
    result = sub_1D1E6619C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1D1E6618C();
  sub_1D199EDB4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

BOOL sub_1D199F344(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1D1741854(a3, a4);
          return sub_1D199EFE4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL _s13HomeDataModel28StaticThermostatClusterGroupV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for EndpointPath(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v5 = type metadata accessor for StaticThermostatClusterGroup(0);
  if (*(a1 + v5[5]) != *(a2 + v5[5]))
  {
    return 0;
  }

  v6 = v5;
  if (*(a1 + v5[6]) != *(a2 + v5[6]) || (_s13HomeDataModel28StaticThermostatClusterGroupV13PresetsConfigV2eeoiySbAE_AEtFZ_0((a1 + v5[7]), (a2 + v5[7])) & 1) == 0 || !_s13HomeDataModel28StaticThermostatClusterGroupV14SetpointConfigV2eeoiySbAE_AEtFZ_0(a1 + v6[8], a2 + v6[8]) || (sub_1D19AEFCC() & 1) == 0 || (sub_1D19AEFCC() & 1) == 0)
  {
    return 0;
  }

  v7 = v6[11];
  v8 = (a1 + v7);
  v9 = *(a1 + v7 + 1);
  v10 = (a2 + v7);
  v11 = *(a2 + v7 + 1);
  if (v9)
  {
    if (!v11)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v10)
    {
      LOBYTE(v11) = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  v13 = v6[12];

  return _s13HomeDataModel28StaticThermostatClusterGroupV8AlvaradoV2eeoiySbAE_AEtFZ_0((a1 + v13), (a2 + v13));
}

uint64_t sub_1D199F680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1D17C4CF0;

  return sub_1D199E040(a1, a2, a3, a4, v12, v13, v4 + v11, v14);
}

uint64_t sub_1D199F7C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1D17C4CF0;

  return sub_1D199E4D0(a1, a2, a3, a4, v12, v13, v4 + v11, v14);
}

unint64_t sub_1D199F910()
{
  result = qword_1EC647F40;
  if (!qword_1EC647F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F40);
  }

  return result;
}

unint64_t sub_1D199F964()
{
  result = qword_1EC647F58;
  if (!qword_1EC647F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F58);
  }

  return result;
}

unint64_t sub_1D199F9B8()
{
  result = qword_1EC647F60;
  if (!qword_1EC647F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F60);
  }

  return result;
}

uint64_t sub_1D199FA0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D199FA6C()
{
  result = qword_1EC647F88;
  if (!qword_1EC647F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F88);
  }

  return result;
}

unint64_t sub_1D199FAC0()
{
  result = qword_1EC647F90;
  if (!qword_1EC647F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647F90);
  }

  return result;
}

uint64_t sub_1D199FB14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D199FB7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1D17C4CF0;

  return sub_1D198BA60(a1, a2, a3, a4, v12, v13, v4 + v11, v14);
}

uint64_t sub_1D199FCC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1D17C4CF0;

  return sub_1D1990870(a1, a2, a3, a4, v12, v13, v4 + v11, v14);
}

uint64_t sub_1D199FE0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1D17C4CF0;

  return sub_1D1990A5C(a1, a2, a3, a4, v12, v13, v4 + v11, v14);
}

uint64_t sub_1D199FF54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1D17C4BFC;

  return sub_1D1994A3C(a1, a2, a3, a4, v12, v13, v4 + v11);
}

uint64_t sub_1D19A00AC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xEC00000068746150;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D1EC1030 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7365725073657375 && a2 == 0xEB00000000737465 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x4373746573657270 && a2 == 0xED00006769666E6FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x746E696F70746573 && a2 == 0xEE006769666E6F43 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC1050 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC1070 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC1090 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6F64617261766C61 && a2 == 0xE800000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_1D19A03AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = v5;
  v11 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = *(v4 + 16);
  v14 = *(v4 + 24);
  v15 = (v4 + ((*(v11 + 64) + v12 + 1) & 0xFFFFFFFFFFFFFFFELL));
  v16 = *v15 | (*(v15 + 1) << 16) | (v15[4] << 32);
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_1D17C4CF0;

  return sub_1D1990C48(a1, a2, a3, a4, v13, v14, v4 + v12, v16);
}

uint64_t objectdestroyTm_3()
{
  v1 = type metadata accessor for StaticThermostatClusterGroup(0);
  v2 = *(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];

  v6 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v7 = (v5 + v6[9]);
  v8 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = v7[1];
    if (v9 >> 60 != 15)
    {
      sub_1D174E7C4(*v7, v9);
    }

    v10 = *(v8 + 20);
    v11 = sub_1D1E669FC();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v7 + v10, 1, v11))
    {
      (*(v12 + 8))(v7 + v10, v11);
    }
  }

  v13 = (v5 + v6[11]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_1D174E7C4(*v13, v14);
  }

  v15 = (v5 + v6[12]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1D174E7C4(*v15, v16);
  }

  v17 = v6[13];
  v18 = sub_1D1E669FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!v20(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  v21 = v1[8];
  v22 = v21 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
  if (!v20(v3 + v22, 1, v18))
  {
    (*(v19 + 8))(v3 + v22, v18);
  }

  v23 = v3 + v1[12];
  v24 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  v25 = *(v24 + 32);
  if (!v20(v23 + v25, 1, v18))
  {
    (*(v19 + 8))(v23 + v25, v18);
  }

  v26 = *(v24 + 36);
  if (!v20(v23 + v26, 1, v18))
  {
    (*(v19 + 8))(v23 + v26, v18);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v28 + ((v2 + 32) & ~v2) + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D19A08F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = *(v4 + ((*(v10 + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v5 + 16) = v15;
  *v15 = v5;
  v15[1] = sub_1D17C4CF0;

  return sub_1D1990688(a1, a2, a3, a4, v12, v13, v4 + v11, v14);
}

uint64_t objectdestroy_54Tm()
{
  v1 = type metadata accessor for StaticThermostatClusterGroup(0);
  v2 = *(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);
  swift_unknownObjectRelease();
  v3 = v0 + ((v2 + 32) & ~v2);
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];

  v6 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v7 = (v5 + v6[9]);
  v8 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = v7[1];
    if (v9 >> 60 != 15)
    {
      sub_1D174E7C4(*v7, v9);
    }

    v10 = *(v8 + 20);
    v11 = sub_1D1E669FC();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v7 + v10, 1, v11))
    {
      (*(v12 + 8))(v7 + v10, v11);
    }
  }

  v13 = (v5 + v6[11]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_1D174E7C4(*v13, v14);
  }

  v15 = (v5 + v6[12]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1D174E7C4(*v15, v16);
  }

  v17 = v6[13];
  v18 = sub_1D1E669FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!v20(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  v21 = v1[8];
  v22 = v21 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
  if (!v20(v3 + v22, 1, v18))
  {
    (*(v19 + 8))(v3 + v22, v18);
  }

  v23 = v3 + v1[12];
  v24 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  v25 = *(v24 + 32);
  if (!v20(v23 + v25, 1, v18))
  {
    (*(v19 + 8))(v23 + v25, v18);
  }

  v26 = *(v24 + 36);
  if (!v20(v23 + v26, 1, v18))
  {
    (*(v19 + 8))(v23 + v26, v18);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 32) & ~v2) + v28, v2 | 7);
}

uint64_t sub_1D19A0E08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = *(v4 + 24);
  v14 = swift_task_alloc();
  *(v5 + 16) = v14;
  *v14 = v5;
  v14[1] = sub_1D17C4CF0;

  return sub_1D1995A80(a1, a2, a3, a4, v12, v13, v4 + v11);
}

uint64_t sub_1D19A0F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return sub_1D199A300(a1, a2, a3, a4, v12, v4 + v11);
}

uint64_t sub_1D19A1024(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return sub_1D199AC2C(a1, a2, a3, a4, v12, v4 + v11);
}

unint64_t sub_1D19A1130()
{
  result = qword_1EC647FC8;
  if (!qword_1EC647FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643838, &qword_1D1E8C020);
    sub_1D19A11B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647FC8);
  }

  return result;
}

unint64_t sub_1D19A11B4()
{
  result = qword_1EC647FD0;
  if (!qword_1EC647FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647FD0);
  }

  return result;
}

uint64_t sub_1D19A1208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D199D24C(a1, a2, a3, a4, v10);
}

uint64_t sub_1D19A12D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1D17C4CF0;

  return sub_1D199DED4(a1, a2, a3, a4, v10);
}

uint64_t sub_1D19A13E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D19A142C()
{
  result = qword_1EC647FE0;
  if (!qword_1EC647FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647FE0);
  }

  return result;
}

void sub_1D19A14A8(uint64_t a1)
{
  type metadata accessor for EndpointPath(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(319);
      if (v3 <= 0x3F)
      {
        sub_1D19A159C();
        if (v4 <= 0x3F)
        {
          type metadata accessor for StaticThermostatClusterGroup.Alvarado(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1D19A159C()
{
  if (!qword_1EE07B608)
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B608);
    }
  }
}

unint64_t sub_1D19A1620()
{
  result = qword_1EC647FE8;
  if (!qword_1EC647FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647FE8);
  }

  return result;
}

unint64_t sub_1D19A1678()
{
  result = qword_1EC647FF0;
  if (!qword_1EC647FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647FF0);
  }

  return result;
}

unint64_t sub_1D19A16D0()
{
  result = qword_1EC647FF8;
  if (!qword_1EC647FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC647FF8);
  }

  return result;
}

unint64_t sub_1D19A1724()
{
  result = qword_1EC648000;
  if (!qword_1EC648000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648000);
  }

  return result;
}

uint64_t sub_1D19A1778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D19A180C()
{
  result = qword_1EC648010;
  if (!qword_1EC648010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648010);
  }

  return result;
}

uint64_t sub_1D19A1860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1998F44(a1, a2, a3, a4, v12, v4 + v11);
}

uint64_t objectdestroy_94Tm()
{
  v1 = type metadata accessor for StaticThermostatClusterGroup(0);
  v2 = *(*(v1 - 1) + 80);
  v28 = *(*(v1 - 1) + 64);

  v3 = v0 + ((v2 + 24) & ~v2);
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 8))(v3, v4);
  v5 = v3 + v1[7];

  v6 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v7 = (v5 + v6[9]);
  v8 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  if (!(*(*(v8 - 8) + 48))(v7, 1, v8))
  {
    v9 = v7[1];
    if (v9 >> 60 != 15)
    {
      sub_1D174E7C4(*v7, v9);
    }

    v10 = *(v8 + 20);
    v11 = sub_1D1E669FC();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v7 + v10, 1, v11))
    {
      (*(v12 + 8))(v7 + v10, v11);
    }
  }

  v13 = (v5 + v6[11]);
  v14 = v13[1];
  if (v14 >> 60 != 15)
  {
    sub_1D174E7C4(*v13, v14);
  }

  v15 = (v5 + v6[12]);
  v16 = v15[1];
  if (v16 >> 60 != 15)
  {
    sub_1D174E7C4(*v15, v16);
  }

  v17 = v6[13];
  v18 = sub_1D1E669FC();
  v19 = *(v18 - 8);
  v20 = *(v19 + 48);
  if (!v20(v5 + v17, 1, v18))
  {
    (*(v19 + 8))(v5 + v17, v18);
  }

  v21 = v1[8];
  v22 = v21 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 28);
  if (!v20(v3 + v22, 1, v18))
  {
    (*(v19 + 8))(v3 + v22, v18);
  }

  v23 = v3 + v1[12];
  v24 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  v25 = *(v24 + 32);
  if (!v20(v23 + v25, 1, v18))
  {
    (*(v19 + 8))(v23 + v25, v18);
  }

  v26 = *(v24 + 36);
  if (!v20(v23 + v26, 1, v18))
  {
    (*(v19 + 8))(v23 + v26, v18);
  }

  return MEMORY[0x1EEE6BDD0](v0, ((v2 + 24) & ~v2) + v28, v2 | 7);
}

uint64_t sub_1D19A1D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(type metadata accessor for StaticThermostatClusterGroup(0) - 8);
  v11 = (*(v10 + 80) + 24) & ~*(v10 + 80);
  v12 = *(v4 + 16);
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1D17C4CF0;

  return sub_1D19997EC(a1, a2, a3, a4, v12, v4 + v11);
}

uint64_t sub_1D19A1EA8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 8);
  v6 = *(a1 + 18);
  *a2 = sub_1D19B0FFC() & 1;
  a2[1] = sub_1D19B1004() & 1;
  a2[2] = sub_1D19B10FC() & 1;
  v20 = v4;
  v21 = v3;
  v22 = v5;
  v23 = v6;
  sub_1D19B1104(&v19);
  a2[3] = v19;
  v20 = v4;
  v21 = v3;
  v22 = v5;
  v23 = v6;
  v7 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  sub_1D19B110C(&a2[v7[8]]);
  v20 = v4;
  v21 = v3;
  v22 = v5;
  v23 = v6;
  sub_1D19B1114(&a2[v7[9]]);
  v20 = v4;
  v21 = v3;
  v22 = v5;
  v23 = v6;
  a2[v7[10]] = sub_1D19B1274() & 1;
  v20 = v4;
  v21 = v3;
  v22 = v5;
  v23 = v6;
  v8 = sub_1D19B127C();
  v9 = &a2[v7[12]];
  *v9 = v8;
  v9[8] = v10 & 1;
  v11 = sub_1D19C551C(v5 | (v6 << 16), v4, v3);
  v12 = *(v11 + 16);
  v13 = 32;
  do
  {
    v14 = v12;
    if (v12-- == 0)
    {
      break;
    }

    v16 = *(v11 + v13);
    v13 += 4;
  }

  while (v16);
  v17 = v14 != 0;

  a2[v7[11]] = v17;
  return result;
}

uint64_t StaticThermostatClusterGroup.Alvarado.endOfCurrentReducePeriod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticThermostatClusterGroup.Alvarado(0) + 32);

  return sub_1D174A548(v3, a1);
}

uint64_t StaticThermostatClusterGroup.Alvarado.pauseFollowingGuidanceEndTimestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for StaticThermostatClusterGroup.Alvarado(0) + 36);

  return sub_1D174A548(v3, a1);
}

unint64_t sub_1D19A216C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F64617261766C61;
    v6 = 0xD00000000000001ALL;
    if (a1 == 2)
    {
      v6 = 0xD000000000000010;
    }

    if (a1)
    {
      v5 = 0xD000000000000011;
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
    v1 = 0xD000000000000016;
    v2 = 0xD000000000000019;
    if (a1 != 7)
    {
      v2 = 0xD000000000000014;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000022;
    if (a1 == 4)
    {
      v3 = 0xD000000000000018;
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

uint64_t sub_1D19A22B0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19A3AFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19A22D8(uint64_t a1)
{
  v2 = sub_1D19A3670();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19A2314(uint64_t a1)
{
  v2 = sub_1D19A3670();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.Alvarado.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648020, &qword_1D1E8A5D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19A3670();
  sub_1D1E6930C();
  v10[31] = 0;
  sub_1D1E68EDC();
  if (!v2)
  {
    v10[30] = 1;
    sub_1D1E68EDC();
    v10[29] = 2;
    sub_1D1E68EDC();
    v10[28] = *(v3 + 3);
    v10[27] = 3;
    sub_1D19A36C4();
    sub_1D1E68E5C();
    type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
    v10[26] = 4;
    sub_1D1E669FC();
    sub_1D19A3DDC(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
    v10[25] = 5;
    sub_1D1E68E5C();
    v10[24] = 6;
    sub_1D1E68EDC();
    v10[15] = 7;
    sub_1D1E68EDC();
    v10[14] = 8;
    sub_1D1E68E7C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticThermostatClusterGroup.Alvarado.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (*(v1 + 3) != 3)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v11 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  sub_1D174A548(v1 + v11[8], v10);
  v12 = *(v3 + 48);
  if (v12(v10, 1, v2) == 1)
  {
    v13 = v3;
    sub_1D1E6922C();
  }

  else
  {
    v14 = *(v3 + 32);
    v21 = v8;
    v15 = v22;
    v14(v22, v10, v2);
    sub_1D1E6922C();
    sub_1D19A3DDC(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    v13 = v3;
    v16 = v15;
    v8 = v21;
    (*(v3 + 8))(v16, v2);
  }

  sub_1D174A548(v1 + v11[9], v8);
  if (v12(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v17 = v22;
    (*(v13 + 32))(v22, v8, v2);
    sub_1D1E6922C();
    sub_1D19A3DDC(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v13 + 8))(v17, v2);
  }

  sub_1D1E6922C();
  sub_1D1E6922C();
  v18 = (v1 + v11[12]);
  if (*(v18 + 8) == 1)
  {
    return sub_1D1E6922C();
  }

  v20 = *v18;
  sub_1D1E6922C();
  return MEMORY[0x1D3892890](v20);
}

uint64_t StaticThermostatClusterGroup.Alvarado.hashValue.getter()
{
  sub_1D1E6920C();
  StaticThermostatClusterGroup.Alvarado.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.Alvarado.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648038, &qword_1D1E8A5D8);
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - v10;
  v12 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D19A3670();
  v16 = v28;
  sub_1D1E692FC();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v17 = v8;
  v18 = v26;
  v39 = 0;
  *v14 = sub_1D1E68D3C() & 1;
  v38 = 1;
  v14[1] = sub_1D1E68D3C() & 1;
  v37 = 2;
  v14[2] = sub_1D1E68D3C() & 1;
  v35 = 3;
  sub_1D19A3718();
  sub_1D1E68CBC();
  v14[3] = v36;
  sub_1D1E669FC();
  v34 = 4;
  sub_1D19A3DDC(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68CBC();
  v19 = v12;
  sub_1D19A376C(v17, &v14[v12[8]]);
  v33 = 5;
  sub_1D1E68CBC();
  sub_1D19A376C(v6, &v14[v12[9]]);
  v32 = 6;
  v14[v12[10]] = sub_1D1E68D3C() & 1;
  v31 = 7;
  v14[MEMORY[0x2C]] = sub_1D1E68D3C() & 1;
  v30 = 8;
  v20 = sub_1D1E68CDC();
  v22 = v21;
  (*(v18 + 8))(v11, v27);
  v23 = &v14[v19[12]];
  *v23 = v20;
  v23[8] = v22 & 1;
  sub_1D19A37DC(v14, v25);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_1D19A3840(v14);
}

uint64_t sub_1D19A2FA0()
{
  sub_1D1E6920C();
  StaticThermostatClusterGroup.Alvarado.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D19A2FE4(uint64_t a1)
{
  sub_1D1E6920C();
  StaticThermostatClusterGroup.Alvarado.hash(into:)(v2);
  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel28StaticThermostatClusterGroupV8AlvaradoV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v45 - v19;
  if (__PAIR64__(a1[1], *a1) != __PAIR64__(a2[1], *a2) || a1[2] != a2[2])
  {
    return 0;
  }

  v21 = a1[3];
  v22 = a2[3];
  if (v21 == 3)
  {
    if (v22 != 3)
    {
      return 0;
    }
  }

  else if (v21 != v22)
  {
    return 0;
  }

  v23 = v18;
  v24 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  v50 = v5;
  v47 = v24;
  v48 = v23;
  v25 = *(v24 + 32);
  v26 = *(v23 + 48);
  sub_1D174A548(&a1[v25], v20);
  v49 = v26;
  sub_1D174A548(&a2[v25], &v20[v26]);
  v27 = v50 + 48;
  v28 = *(v50 + 48);
  if (v28(v20, 1, v4) == 1)
  {
    v46 = v28;
    if (v28(&v20[v49], 1, v4) == 1)
    {
      sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_14;
    }

LABEL_12:
    v29 = v20;
LABEL_20:
    sub_1D1741A30(v29, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  sub_1D174A548(v20, v13);
  v45 = v27;
  if (v28(&v20[v49], 1, v4) == 1)
  {
    (*(v50 + 8))(v13, v4);
    goto LABEL_12;
  }

  v46 = v28;
  v30 = v50;
  (*(v50 + 32))(v7, &v20[v49], v4);
  sub_1D19A3DDC(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  LODWORD(v49) = sub_1D1E6775C();
  v31 = *(v30 + 8);
  v31(v7, v4);
  v31(v13, v4);
  sub_1D1741A30(v20, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v49 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v32 = v47;
  v33 = v47[9];
  v34 = *(v48 + 48);
  sub_1D174A548(&a1[v33], v17);
  sub_1D174A548(&a2[v33], &v17[v34]);
  v35 = v46;
  if (v46(v17, 1, v4) == 1)
  {
    if (v35(&v17[v34], 1, v4) == 1)
    {
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  sub_1D174A548(v17, v11);
  if (v35(&v17[v34], 1, v4) == 1)
  {
    (*(v50 + 8))(v11, v4);
LABEL_19:
    v29 = v17;
    goto LABEL_20;
  }

  v37 = v50;
  (*(v50 + 32))(v7, &v17[v34], v4);
  sub_1D19A3DDC(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v38 = sub_1D1E6775C();
  v39 = *(v37 + 8);
  v39(v7, v4);
  v39(v11, v4);
  sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v38 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  if (a1[v32[10]] != a2[v32[10]] || a1[v32[11]] != a2[v32[11]])
  {
    return 0;
  }

  v40 = v32[12];
  v41 = &a1[v40];
  v42 = a1[v40 + 8];
  v43 = &a2[v40];
  v44 = a2[v40 + 8];
  if (v42)
  {
    return (v44 & 1) != 0;
  }

  if (*v41 != *v43)
  {
    v44 = 1;
  }

  return (v44 & 1) == 0;
}