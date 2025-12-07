uint64_t sub_1D177B590(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 48);
    for (i = (a2 + 48); *(v3 - 4) == *(i - 4); i += 3)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D1E6904C() & 1) == 0)
      {
        break;
      }

      v3 += 3;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D177B670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v33 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v39);
  v10 = &v33 - v9;
  v11 = type metadata accessor for StaticUserActionPrediction(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v33 - v16;
  v18 = *(a1 + 16);
  if (v18 != *(a2 + 16))
  {
    return 0;
  }

  if (!v18 || a1 == a2)
  {
    return 1;
  }

  v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v20 = a1 + v19;
  v21 = a2 + v19;
  v33 = (v5 + 32);
  v34 = (v5 + 8);
  v36 = *(v15 + 72);
  v37 = (v5 + 48);
  v42 = v4;
  v40 = v11;
  while (1)
  {
    result = sub_1D178078C(v20, v17, type metadata accessor for StaticUserActionPrediction);
    if (!v18)
    {
      break;
    }

    sub_1D178078C(v21, v14, type metadata accessor for StaticUserActionPrediction);
    if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *&v17[*(v11 + 20)] != *&v14[*(v11 + 20)])
    {
LABEL_18:
      sub_1D178083C(v14, type metadata accessor for StaticUserActionPrediction);
      sub_1D178083C(v17, type metadata accessor for StaticUserActionPrediction);
      return 0;
    }

    v23 = *(v11 + 24);
    v24 = *(v39 + 48);
    sub_1D17783E0(&v17[v23], v10);
    sub_1D17783E0(&v14[v23], &v10[v24]);
    v25 = *v37;
    if ((*v37)(v10, 1, v4) == 1)
    {
      if (v25(&v10[v24], 1, v4) != 1)
      {
        sub_1D178083C(v14, type metadata accessor for StaticUserActionPrediction);
        sub_1D178083C(v17, type metadata accessor for StaticUserActionPrediction);
        goto LABEL_21;
      }

      sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
    }

    else
    {
      sub_1D17783E0(v10, v41);
      if (v25(&v10[v24], 1, v4) == 1)
      {
        sub_1D178083C(v14, type metadata accessor for StaticUserActionPrediction);
        sub_1D178083C(v17, type metadata accessor for StaticUserActionPrediction);
        (*v34)(v41, v4);
LABEL_21:
        sub_1D1741A30(v10, &qword_1EC642980, &unk_1D1E6E6E0);
        return 0;
      }

      v26 = v38;
      (*v33)(v38, &v10[v24], v4);
      sub_1D17807F4(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v27 = sub_1D1E6775C();
      v28 = v42;
      v35 = v27;
      v29 = *v34;
      (*v34)(v26, v42);
      v29(v41, v28);
      sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
      if ((v35 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    v30 = v40;
    v31 = v17[*(v40 + 28)];
    sub_1D178083C(v17, type metadata accessor for StaticUserActionPrediction);
    LODWORD(v30) = v14[*(v30 + 28)];
    sub_1D178083C(v14, type metadata accessor for StaticUserActionPrediction);
    result = v31 == v30;
    if (v31 == v30)
    {
      v21 += v36;
      v20 += v36;
      v32 = v18-- == 1;
      v4 = v42;
      v11 = v40;
      if (!v32)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D177BC00(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D177BC5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D1E6904C() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D177BCEC(uint64_t a1, uint64_t a2)
{
  v25 = type metadata accessor for ColorPickerFavorite(0);
  v4 = MEMORY[0x1EEE9AC00](v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v9 = &v24 - v8;
  v10 = *(a1 + 16);
  if (v10 != *(a2 + 16))
  {
LABEL_12:
    v22 = 0;
    return v22 & 1;
  }

  if (v10 && a1 != a2)
  {
    v11 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v12 = a1 + v11;
    v13 = a2 + v11;
    v14 = *(v7 + 72);
    while (1)
    {
      sub_1D178078C(v12, v9, type metadata accessor for ColorPickerFavorite);
      sub_1D178078C(v13, v6, type metadata accessor for ColorPickerFavorite);
      v15 = *(v9 + 1);
      v16 = *(v9 + 2);
      v17 = v9[24];
      v30 = *v9;
      v31 = v15;
      v32 = v16;
      v33 = v17;
      v19 = *(v6 + 1);
      v20 = *(v6 + 2);
      v21 = v6[24];
      v26 = *v6;
      v18 = v26;
      v27 = v19;
      v28 = v20;
      v29 = v21;
      sub_1D178062C(v30, v15, v16, v17);
      sub_1D178062C(v18, v19, v20, v21);
      LOBYTE(v18) = static LightbulbColor.== infix(_:_:)(&v30, &v26);
      sub_1D1780640(v26, v27, v28, v29);
      sub_1D1780640(v30, v31, v32, v33);
      if ((v18 & 1) == 0 || *(v9 + 4) != *(v6 + 4))
      {
        break;
      }

      v22 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D178083C(v6, type metadata accessor for ColorPickerFavorite);
      sub_1D178083C(v9, type metadata accessor for ColorPickerFavorite);
      if (v22)
      {
        v13 += v14;
        v12 += v14;
        if (--v10)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    sub_1D178083C(v6, type metadata accessor for ColorPickerFavorite);
    sub_1D178083C(v9, type metadata accessor for ColorPickerFavorite);
    goto LABEL_12;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1D177BFB8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v23 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_16:
    v21 = 0;
    return v21 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D178078C(v13, v10, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      sub_1D178078C(v14, v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        break;
      }

      v16 = *(v4 + 20);
      v17 = *&v10[v16];
      v18 = *&v10[v16 + 8];
      v19 = &v7[v16];
      v20 = v17 == *v19 && v18 == *(v19 + 1);
      if (!v20 && (sub_1D1E6904C() & 1) == 0)
      {
        break;
      }

      v21 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D178083C(v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      sub_1D178083C(v10, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      if (v21)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v21 & 1;
    }

    sub_1D178083C(v7, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    sub_1D178083C(v10, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
    goto LABEL_16;
  }

  v21 = 1;
  return v21 & 1;
}

uint64_t sub_1D177C1EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v8 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v6 = *v3++;
        v5 = v6;
        v7 = *v4++;

        v8 = sub_1D184DC4C(v5, v7);

        if ((v8 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_1D177C2A4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v5 = 1;
    }

    else
    {
      v3 = a1 + 32;
      v4 = a2 + 32;
      do
      {
        v3 += 8;
        v4 += 8;

        v5 = sub_1D1E67F3C();

        if ((v5 & 1) == 0)
        {
          break;
        }

        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1D177C3A4(unint64_t a1, unint64_t a2, unint64_t *a3, void *a4)
{
  v5 = a1;
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v7)
    {
      goto LABEL_29;
    }

    v9 = v5 & 0xFFFFFFFFFFFFFF8;
    v10 = (v5 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v5 < 0)
    {
      v9 = v5;
    }

    if (v6)
    {
      v10 = v9;
    }

    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v12 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    if (a2 >> 62)
    {
      v12 = v11;
    }

    if (v10 == v12)
    {
LABEL_29:
      v20 = 1;
      return v20 & 1;
    }

    if (v7 < 0)
    {
      __break(1u);
      return result;
    }

    v6 = sub_1D1741B10(0, a3, a4);
    if (((a2 | v5) & 0xC000000000000001) != 0)
    {
      v13 = a2 & 0xC000000000000001;
      v14 = 4;
      while (1)
      {
        v15 = v14 - 4;
        v16 = v14 - 3;
        if (__OFADD__(v14 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v17 = MEMORY[0x1D3891EF0](v14 - 4, v5);
          if (!v13)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v15 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v17 = *(v5 + 8 * v14);
          if (!v13)
          {
LABEL_24:
            if (v15 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v18 = *(a2 + 8 * v14);
            goto LABEL_26;
          }
        }

        v18 = MEMORY[0x1D3891EF0](v14 - 4, a2);
LABEL_26:
        v19 = v18;
        v20 = sub_1D1E684FC();

        if (v20)
        {
          ++v14;
          if (v16 != v7)
          {
            continue;
          }
        }

        return v20 & 1;
      }
    }

    v21 = (v5 + 32);
    v22 = (a2 + 32);
    v23 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v24 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v25 = v7 - 1;
    while (1)
    {
      if (!v23)
      {
        goto LABEL_40;
      }

      if (!v24)
      {
        break;
      }

      v27 = *v21++;
      v26 = v27;
      v28 = *v22++;
      a2 = v26;
      v5 = v28;
      v20 = sub_1D1E684FC();

      v30 = v25-- != 0;
      if (v20)
      {
        --v24;
        --v23;
        if (v30)
        {
          continue;
        }
      }

      return v20 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v31 = a4;
    v32 = a3;
    v33 = sub_1D1E6873C();
    a3 = v32;
    a4 = v31;
    v7 = v33;
  }

  v34 = a4;
  v35 = a3;
  result = sub_1D1E6873C();
  a3 = v35;
  a4 = v34;
  if (v7 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v20 = 0;
  return v20 & 1;
}

uint64_t Action.MatterCommandAction.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_1D1E6922C();

  return sub_1D176F5DC(a1, v3);
}

uint64_t Action.MatterCommandAction.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D176F5DC(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D177C6BC()
{
  v1 = *(v0 + 8);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D176F5DC(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D177C71C(uint64_t a1)
{
  v3 = *(v1 + 8);
  sub_1D1E6922C();

  return sub_1D176F5DC(a1, v3);
}

uint64_t sub_1D177C76C(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D176F5DC(v4, v2);
  return sub_1D1E6926C();
}

id sub_1D177C7EC(uint64_t a1)
{
  v3 = type metadata accessor for ActionCommand(0);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  HIDWORD(v29) = *v1;
  v8 = *(v1 + 1);
  v9 = MEMORY[0x1E69E7CC0];
  v34 = MEMORY[0x1E69E7CC0];
  v31 = *(v8 + 16);
  if (v31)
  {
    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      sub_1D178078C(v8 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v10, v7, type metadata accessor for ActionCommand);
      if (!*(a1 + 16) || (v11 = sub_1D1742188(), (v12 & 1) == 0))
      {
        type metadata accessor for ActionCommand.Error(0);
        sub_1D17807F4(&qword_1EC6434B0, type metadata accessor for ActionCommand.Error, &protocol conformance descriptor for ActionCommand.Error);
        swift_allocError();
        v23 = v27;
        v28 = sub_1D1E66A7C();
        (*(*(v28 - 8) + 16))(v23, v7, v28);
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
LABEL_14:
        sub_1D178083C(v7, type metadata accessor for ActionCommand);

        return v23;
      }

      v30 = v9;
      v13 = a1;
      v14 = *(*(a1 + 56) + 8 * v11);
      v15 = v32;
      v16 = &v7[*(v32 + 28)];
      v17 = *(v16 + 3);
      v18 = *(v16 + 4);
      v19 = __swift_project_boxed_opaque_existential_1(v16, v17);
      v20 = *&v7[*(v15 + 24)];
      v21 = v14;
      v22 = v17;
      v23 = v19;
      if (!MatterCommand.hm_matterCommand(for:endpointID:)(v21, v20, v22, v18))
      {
        type metadata accessor for ActionCommand.Error(0);
        sub_1D17807F4(&qword_1EC6434B0, type metadata accessor for ActionCommand.Error, &protocol conformance descriptor for ActionCommand.Error);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();

        goto LABEL_14;
      }

      v24 = sub_1D178083C(v7, type metadata accessor for ActionCommand);
      MEMORY[0x1D3891220](v24);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      ++v10;
      result = sub_1D1E67CAC();
      v9 = v34;
      a1 = v13;
      if (v31 == v10)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:
    v25 = objc_allocWithZone(MEMORY[0x1E696CBE0]);
    sub_1D1741B10(0, &qword_1EC6430F8, 0x1E696CBD8);
    v26 = sub_1D1E67BFC();

    v23 = [v25 initWithMatterCommands:v26 enforceExecutionOrder:HIDWORD(v29)];

    if (!v23)
    {
      type metadata accessor for ActionCommand.Error(0);
      sub_1D17807F4(&qword_1EC6434B0, type metadata accessor for ActionCommand.Error, &protocol conformance descriptor for ActionCommand.Error);
      swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }

    return v23;
  }

  return result;
}

uint64_t ActionCommand.debugDescription.getter()
{
  v15 = 0;
  v16 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x6D6D6F63206E7572, 0xEC00000020646E61);
  v1 = type metadata accessor for ActionCommand(0);
  v2 = (v0 + *(v1 + 28));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  (*(v4 + 40))(&v13, v3, v4);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](46, 0xE100000000000000);
  v5 = v2[3];
  v6 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v5);
  v7 = (*(v6 + 24))(v5, v6);
  LODWORD(v13) = v7;
  BYTE4(v13) = BYTE4(v7) & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643100, &qword_1D1E71458);
  v8 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v8);

  MEMORY[0x1D3890F70](0x70646E65206E6F20, 0xED000020746E696FLL);
  LOWORD(v13) = *(v0 + *(v1 + 24));
  v9 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v9);

  MEMORY[0x1D3890F70](0x206E696874697720, 0xE800000000000000);
  v13 = 3828584;
  v14 = 0xE300000000000000;
  sub_1D1E66A7C();
  sub_1D17807F4(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v10 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v10);

  MEMORY[0x1D3890F70](3829039, 0xE300000000000000);
  v11 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v11);

  MEMORY[0x1D3890F70](v13, v14);

  return v15;
}

char *sub_1D177CF00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434A8, &qword_1D1E8EC00);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177D0D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643250, &qword_1D1E716A8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177D1F4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433E8, &qword_1D1E72000);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D177D3DC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643488, &qword_1D1E71908);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177D4E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643480, &qword_1D1E71900);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D177D648(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D177D8F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643218, &qword_1D1E71670);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D177D9EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643228, &qword_1D1E71680);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 48 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1D177DB24(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * ((v13 - 32) / 24);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  v16 = 24 * v10;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v16])
    {
      memmove(v14, v15, v16);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v16);
  }

  return v12;
}

char *sub_1D177DD60(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643130, &qword_1D1E81F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1D177DE70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433F0, &unk_1D1E71870);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_1D177DF74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643368, &unk_1D1E717D0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177E09C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643378, &qword_1D1E717E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 12 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1D177E1C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433E0, &qword_1D1E71858);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 10);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 10 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1D177E2EC(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433B0, &qword_1D1E71FD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
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

char *sub_1D177E3FC(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 1;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 5);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[32 * v11])
    {
      memmove(v16, v17, 32 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_1D177E530(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643328, &qword_1D1E71788);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643330, &qword_1D1E71790);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D177E6AC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1D177E7E0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431C8, &unk_1D1E71620);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177E950(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643370, &qword_1D1E7B940);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177EA74(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_1D177EB70(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6433D8, &qword_1D1E71850);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D177ECA4(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

char *sub_1D177ED98(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643128, &unk_1D1E71580);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177EEB4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643120, &qword_1D1E71578);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1D177EFB8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643358, &qword_1D1E717C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643360, &qword_1D1E717C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177F110(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431B0, &unk_1D1E71F40);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D177F2DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1D177F440(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D177F560(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 16 * v10);
  }

  return v12;
}

void *sub_1D177F724(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643268, &qword_1D1E716C0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643270, &qword_1D1E716C8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177F858(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643260, &qword_1D1E716B8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177F978(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

char *sub_1D177FAA8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 17;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 4);
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC0];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[16 * v11])
    {
      memmove(v16, v17, 16 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_1D177FBD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643230, &qword_1D1E71688);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1D177FD04(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431F8, &qword_1D1E71650);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1D177FE74(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431D8, &unk_1D1E71630);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D177FF80(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431A0, &qword_1D1E715F8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431A8, &unk_1D1E71600);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1D17800DC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1D1780300(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

unint64_t sub_1D17804EC()
{
  result = qword_1EC643108;
  if (!qword_1EC643108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643108);
  }

  return result;
}

uint64_t sub_1D1780540(uint64_t a1, int a2)
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

uint64_t sub_1D1780588(uint64_t result, int a2, int a3)
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

uint64_t sub_1D178062C(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
  }

  return v4;
}

uint64_t sub_1D1780640(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 3)
  {
  }

  return v4;
}

id sub_1D1780654(id result, id a2, unsigned __int8 a3)
{
  if (a3 > 7u)
  {
    if (a3 == 8)
    {
      return result;
    }

    else if (a3 == 9)
    {
    }
  }

  else if (a3 == 6 || a3 == 7)
  {
  }

  return result;
}

void sub_1D1780698(void *a1, id a2, unsigned __int8 a3)
{
  if (a3 > 7u)
  {
    if (a3 == 8)
    {
    }

    else if (a3 == 9)
    {
LABEL_4:
    }
  }

  else if (a3 == 6 || a3 == 7)
  {
    goto LABEL_4;
  }
}

uint64_t sub_1D178078C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17807F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D178083C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void Action.MediaPlaybackAction.init(action:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 state];
  v5 = [a1 mediaProfiles];
  sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
  sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
  v6 = sub_1D1E6816C();

  v7 = sub_1D178101C(v6);

  v8 = sub_1D17841EC(v7);

  v9 = [a1 volume];
  v10 = v9;
  if (v9)
  {
    [v9 doubleValue];
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  if (byte_1EE07B288 == 1)
  {
    v13 = [a1 mediaProfiles];
    v14 = sub_1D1E6816C();

    sub_1D1780D24(v14);
    v16 = v15;

    v17 = sub_1D1784988(v16);
  }

  else
  {

    v17 = 0;
  }

  v18 = 0x5000403020100uLL >> (8 * v4);
  *a2 = v8;
  if (v4 >= 7)
  {
    LOBYTE(v18) = 0;
  }

  *(a2 + 8) = v18;
  *(a2 + 16) = v12;
  *(a2 + 24) = v10 == 0;
  *(a2 + 32) = v17;
}

uint64_t Action.MediaPlaybackAction.debugDescription.getter()
{
  v1 = *(v0 + 32);
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001ALL, 0x80000001D1EB8B90);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x6F76206874697720, 0xED000020656D756CLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434C0, &qword_1D1E719C0);
  v2 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v2);

  MEMORY[0x1D3890F70](544108320, 0xE400000000000000);
  if (v1)
  {
    v9 = sub_1D1E6817C();
    v10 = v3;
    MEMORY[0x1D3890F70](10272, 0xE200000000000000);
    sub_1D1E66A7C();
    sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v4 = sub_1D1E6817C();
    MEMORY[0x1D3890F70](v4);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    v5 = v9;
    v6 = v10;
  }

  else
  {
    sub_1D1E66A7C();
    sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v5 = sub_1D1E6817C();
    v6 = v7;
  }

  MEMORY[0x1D3890F70](v5, v6);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return 0;
}

void sub_1D1780D24(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
    sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
    sub_1D1E681BC();
    v1 = v24;
    v2 = v25;
    v3 = v26;
    v4 = v27;
    v5 = v28;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

  v23 = MEMORY[0x1E69E7CC0];
  while (v1 < 0)
  {
    if (!sub_1D1E6877C() || (sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0), swift_dynamicCast(), (v11 = v29) == 0))
    {
LABEL_24:
      sub_1D1716918(v1);
      return;
    }

LABEL_17:
    v12 = v11;
    v13 = [v12 accessory];
    if (v13)
    {
      v14 = v13;
      v15 = [v14 name];
      v21 = sub_1D1E6781C();
      v22 = v16;

      v17 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1D177CF00(0, *(v23 + 2) + 1, 1, v23);
      }

      v19 = *(v17 + 2);
      v18 = *(v17 + 3);
      if (v19 >= v18 >> 1)
      {
        v17 = sub_1D177CF00((v18 > 1), v19 + 1, 1, v17);
      }

      *(v17 + 2) = v19 + 1;
      v23 = v17;
      v20 = &v17[16 * v19];
      *(v20 + 4) = v21;
      *(v20 + 5) = v22;
    }

    else
    {
    }
  }

  v9 = v4;
  v10 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v10 - 1) & v10;
    v11 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    if (!v11)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v10 = *(v2 + 8 * v4);
    ++v9;
    if (v10)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1D178101C(uint64_t a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v41 = v3;
  v42 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = a1 & 0xC000000000000001;
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
    v49 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v7 & ~(v7 >> 63), 0);
    v44 = v49;
    if (v43)
    {
      result = sub_1D1E686DC();
    }

    else
    {
      result = sub_1D1E6869C();
      v9 = *(a1 + 36);
    }

    v46 = result;
    v47 = v9;
    v48 = v43 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v10 = 0;
      v39 = v7;
      v40 = v42 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v37 = a1 + 56;
      v38 = v11;
      v35[1] = v1;
      v36 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v46;
        v15 = v47;
        v16 = v48;
        v17 = a1;
        sub_1D17908A0(v46, v47, v48, a1);
        v19 = v18;
        v20 = [v18 uniqueIdentifier];
        sub_1D1E66A5C();

        v21 = v44;
        v49 = v44;
        v23 = *(v44 + 16);
        v22 = *(v44 + 24);
        if (v23 >= v22 >> 1)
        {
          sub_1D178CEFC((v22 > 1), v23 + 1, 1);
          v21 = v49;
        }

        *(v21 + 16) = v23 + 1;
        v24 = (*(v42 + 80) + 32) & ~*(v42 + 80);
        v44 = v21;
        result = (*(v42 + 32))(v21 + v24 + *(v42 + 72) * v23, v6, v41);
        if (v43)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (sub_1D1E686FC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v39;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643580, &unk_1D1E71AB0);
          v12 = sub_1D1E681AC();
          sub_1D1E687AC();
          result = v12(v45, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_1D1716920(v46, v47, v48);
            return v44;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v25 = 1 << *(v17 + 32);
          if (v14 >= v25)
          {
            goto LABEL_38;
          }

          v26 = v14 >> 6;
          v27 = *(v37 + 8 * (v14 >> 6));
          if (((v27 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v28 = v27 & (-2 << (v14 & 0x3F));
          if (v28)
          {
            v25 = __clz(__rbit64(v28)) | v14 & 0x7FFFFFFFFFFFFFC0;
          }

          else
          {
            v29 = v26 << 6;
            v30 = v26 + 1;
            v31 = (v36 + 8 * v26);
            while (v30 < (v25 + 63) >> 6)
            {
              v33 = *v31++;
              v32 = v33;
              v29 += 64;
              ++v30;
              if (v33)
              {
                result = sub_1D1716920(v14, v15, 0);
                v25 = __clz(__rbit64(v32)) + v29;
                goto LABEL_33;
              }
            }

            result = sub_1D1716920(v14, v15, 0);
          }

LABEL_33:
          v34 = *(v17 + 36);
          v46 = v25;
          v47 = v34;
          v48 = 0;
          v7 = v39;
          if (v10 == v39)
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

uint64_t sub_1D1781428(uint64_t a1)
{
  v2 = type metadata accessor for StaticCameraProfile(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(&qword_1EC643520, type metadata accessor for StaticCameraProfile, &protocol conformance descriptor for StaticCameraProfile);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for StaticCameraProfile))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for StaticCameraProfile);
    sub_1D1785AB4(v10, v5, type metadata accessor for StaticCameraProfile);
    sub_1D1761CF8(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D178166C(uint64_t a1)
{
  v2 = type metadata accessor for StaticMediaProfile(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(&qword_1EE07A810, type metadata accessor for StaticMediaProfile, &protocol conformance descriptor for StaticMediaProfile);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for StaticMediaProfile))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for StaticMediaProfile);
    sub_1D1785AB4(v10, v5, type metadata accessor for StaticMediaProfile);
    sub_1D1761F38(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17818B0(uint64_t a1)
{
  v2 = type metadata accessor for StaticMediaSystem(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(qword_1EE07A8D8, type metadata accessor for StaticMediaSystem, &protocol conformance descriptor for StaticMediaSystem);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for StaticMediaSystem))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for StaticMediaSystem);
    sub_1D1785AB4(v10, v5, type metadata accessor for StaticMediaSystem);
    sub_1D1762178(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1781AF4(uint64_t a1)
{
  v2 = type metadata accessor for StaticAccessory(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(&qword_1EE07AB10, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for StaticAccessory))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for StaticAccessory);
    sub_1D1785AB4(v10, v5, type metadata accessor for StaticAccessory);
    sub_1D17623B8(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1781D38(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(&qword_1EE07AB20, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for StaticService))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for StaticService);
    sub_1D1785AB4(v10, v5, type metadata accessor for StaticService);
    sub_1D17625F8(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1781F7C(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceGroup(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(&qword_1EC643518, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for StaticServiceGroup))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for StaticServiceGroup);
    sub_1D1785AB4(v10, v5, type metadata accessor for StaticServiceGroup);
    sub_1D1762838(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17821C0(uint64_t a1)
{
  v2 = type metadata accessor for StaticServiceGroup(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(&qword_1EC643518, type metadata accessor for StaticServiceGroup, &protocol conformance descriptor for StaticServiceGroup);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for StaticServiceGroup))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for StaticServiceGroup);
    sub_1D1785AB4(v10, v5, type metadata accessor for StaticServiceGroup);
    sub_1D1762A78(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1782404(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v4 = sub_1D1771944(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
  v5 = 0;
  v12[1] = MEMORY[0x1D38917C0](v2, v3, v4);
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    sub_1D1764A98(v12, *(*(a1 + 48) + ((v10 << 9) | (8 * v11))));
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= v9)
    {

      return;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1D1782540(uint64_t a1)
{
  v2 = type metadata accessor for StaticResident(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(&qword_1EC643560, type metadata accessor for StaticResident, &protocol conformance descriptor for StaticResident);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for StaticResident))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for StaticResident);
    sub_1D1785AB4(v10, v5, type metadata accessor for StaticResident);
    sub_1D1764CD0(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1782784(uint64_t a1)
{
  v2 = type metadata accessor for StaticMediaSystemComponent(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(&qword_1EC643558, type metadata accessor for StaticMediaSystemComponent, &protocol conformance descriptor for StaticMediaSystemComponent);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for StaticMediaSystemComponent))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for StaticMediaSystemComponent);
    sub_1D1785AB4(v10, v5, type metadata accessor for StaticMediaSystemComponent);
    sub_1D17676D4(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17829C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D17857C0();
  result = MEMORY[0x1D38917C0](v2, &type metadata for CharacteristicKind, v3);
  v5 = 0;
  v13 = result;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  for (i = (v6 + 63) >> 6; v8; result = sub_1D1765F38(&v12, *(*(a1 + 48) + (v11 | (v10 << 6)))))
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
  }

  while (1)
  {
    v10 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v10 >= i)
    {

      return v13;
    }

    v8 = *(a1 + 64 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1782AC0(uint64_t a1)
{
  v2 = type metadata accessor for ActionService(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(&qword_1EC643508, type metadata accessor for ActionService, &protocol conformance descriptor for ActionService);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for ActionService))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for ActionService);
    sub_1D1785AB4(v10, v5, type metadata accessor for ActionService);
    sub_1D1769D3C(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1782D04(uint64_t a1)
{
  v2 = type metadata accessor for StaticZone(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(&qword_1EE07B4E8, type metadata accessor for StaticZone, &protocol conformance descriptor for StaticZone);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for StaticZone))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for StaticZone);
    sub_1D1785AB4(v10, v5, type metadata accessor for StaticZone);
    sub_1D1769F7C(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1782F48(uint64_t a1)
{
  v2 = type metadata accessor for StaticActionSet(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(&qword_1EC643500, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for StaticActionSet))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for StaticActionSet);
    sub_1D1785AB4(v10, v5, type metadata accessor for StaticActionSet);
    sub_1D176A610(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D178318C(uint64_t a1)
{
  v2 = type metadata accessor for StaticRoom(0);
  v21 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v8 = &v21 - v7;
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  v12 = sub_1D1784A20(&qword_1EC6434F8, type metadata accessor for StaticRoom, &protocol conformance descriptor for StaticRoom);
  result = MEMORY[0x1D38917C0](v11, v2, v12);
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_1D1785B84(v8, type metadata accessor for StaticRoom))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_1D1785B1C(*(a1 + 56) + *(v21 + 72) * (v20 | (v19 << 6)), v10, type metadata accessor for StaticRoom);
    sub_1D1785AB4(v10, v5, type metadata accessor for StaticRoom);
    sub_1D176A850(v8, v5);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17833D0(uint64_t a1)
{
  v2 = type metadata accessor for StaticUser(0);
  v45 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v41 = &v40 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v40 - v11;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(&qword_1EC6434F0, type metadata accessor for StaticUser, &protocol conformance descriptor for StaticUser);
  v50 = v2;
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v51 = result;
  v15 = 0;
  v46 = a1;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v42 = v22;
  v43 = v17;
  if ((v20 & v16) != 0)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v51;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      do
      {
LABEL_9:
        v24 = *(v45 + 72);
        v25 = v44;
        sub_1D1785B1C(*(v46 + 56) + v24 * (__clz(__rbit64(v21)) | (v15 << 6)), v44, type metadata accessor for StaticUser);
        sub_1D1785AB4(v25, v10, type metadata accessor for StaticUser);
        sub_1D1E6920C();
        v48 = sub_1D1E66A7C();
        sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1D1E676EC();
        v26 = v50;
        v27 = &v10[v50[5]];
        v29 = *v27;
        v28 = *(v27 + 1);
        sub_1D1E678EC();
        v49 = v26[6];
        sub_1D1E676EC();
        v48 = v26[7];
        MEMORY[0x1D3892850](v10[v48]);
        v47 = v26[8];
        MEMORY[0x1D3892850](v10[v47]);
        v30 = sub_1D1E6926C();
        v31 = v51 + 56;
        v32 = -1 << *(v51 + 32);
        v33 = v30 & ~v32;
        if ((*(v51 + 56 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33))
        {
          v34 = ~v32;
          while (1)
          {
            sub_1D1785B1C(*(v51 + 48) + v33 * v24, v5, type metadata accessor for StaticUser);
            if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
            {
              v35 = &v5[v50[5]];
              v36 = *v35 == v29 && *(v35 + 1) == v28;
              if (v36 || (sub_1D1E6904C()) && (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && v5[v50[7]] == v10[v48] && v5[v50[8]] == v10[v47])
              {
                break;
              }
            }

            sub_1D1785B84(v5, type metadata accessor for StaticUser);
            v33 = (v33 + 1) & v34;
            if (((*(v31 + ((v33 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v33) & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          sub_1D1785B84(v5, type metadata accessor for StaticUser);
        }

        else
        {
LABEL_22:
          v37 = v51;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v39 = v41;
          sub_1D1785B1C(v10, v41, type metadata accessor for StaticUser);
          v52 = v37;
          sub_1D1945C00(v39, v33, isUniquelyReferenced_nonNull_native);
          v51 = v52;
        }

        v21 &= v21 - 1;
        result = sub_1D1785B84(v10, type metadata accessor for StaticUser);
        v22 = v42;
        v17 = v43;
      }

      while (v21);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17838AC(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v25 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1D38917C0](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 48) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_1D1762CB8(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1D1783B0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v7 = sub_1D1771944(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
  v20[1] = MEMORY[0x1D38917C0](0, v6, v7);
  sub_1D178401C(a1, a2, a3, v21);
  v8 = v21[0];
  v9 = v21[1];
  v10 = v21[3];
  v11 = v21[4];
  v18 = v21[5];
  v12 = (v21[2] + 64) >> 6;
  while (v8 < 0)
  {
    if (!sub_1D1E6877C() || (swift_dynamicCast(), v17 = v19, v15 = v10, v16 = v11, !v19))
    {
LABEL_15:
      sub_1D1716918(v8);

      return;
    }

LABEL_13:
    v20[0] = v17;
    if (v18(v20))
    {
      sub_1D1764A98(v20, v17);
    }

    else
    {
    }

    v10 = v15;
    v11 = v16;
  }

  v13 = v10;
  v14 = v11;
  v15 = v10;
  if (v11)
  {
LABEL_9:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v8 + 48) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));
    if (!v17)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      goto LABEL_15;
    }

    v14 = *(v9 + 8 * v15);
    ++v13;
    if (v14)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t Action.MediaPlaybackAction.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  sub_1D176D4E8(a1, *v2);
  MEMORY[0x1D3892850](v4);
  if (v6 != 1)
  {
    sub_1D1E6922C();
    if ((v5 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v9 = v5;
    }

    else
    {
      v9 = 0;
    }

    MEMORY[0x1D3892890](v9);
    if (v7)
    {
      goto LABEL_3;
    }

    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (!v7)
  {
    return sub_1D1E6922C();
  }

LABEL_3:
  sub_1D1E6922C();

  return sub_1D176D8A8(a1, v7);
}

uint64_t Action.MediaPlaybackAction.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1D1E6920C();
  Action.MediaPlaybackAction.hash(into:)(v6);
  return sub_1D1E6926C();
}

uint64_t sub_1D1783E1C()
{
  v1 = *(v0 + 8);
  v2 = v0[2];
  v3 = *(v0 + 24);
  v4 = v0[4];
  v7 = *v0;
  v8 = v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  sub_1D1E6920C();
  Action.MediaPlaybackAction.hash(into:)(v6);
  return sub_1D1E6926C();
}

uint64_t sub_1D1783E8C(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = v1[2];
  v4 = *(v1 + 24);
  v5 = v1[4];
  v8 = *v1;
  v9 = v2;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  sub_1D1E6920C();
  Action.MediaPlaybackAction.hash(into:)(v7);
  return sub_1D1E6926C();
}

uint64_t Action.MediaPlaybackAction.mediaAccessoriesDescription.getter()
{
  if (*(v0 + 32))
  {
    v3 = sub_1D1E6817C();
    MEMORY[0x1D3890F70](10272, 0xE200000000000000);
    sub_1D1E66A7C();
    sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1D1E6817C();
    MEMORY[0x1D3890F70](v1);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return v3;
  }

  else
  {
    sub_1D1E66A7C();
    sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    return sub_1D1E6817C();
  }
}

uint64_t sub_1D178401C@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((result & 0xC000000000000001) != 0)
  {
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D1771944(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D1E681BC();
    result = v14;
    v7 = v15;
    v9 = v16;
    v8 = v17;
    v10 = v18;
  }

  else
  {
    v8 = 0;
    v11 = -1;
    v12 = -1 << *(result + 32);
    v7 = result + 56;
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v11 = ~(-1 << v13);
    }

    v10 = v11 & *(result + 56);
  }

  *a4 = result;
  a4[1] = v7;
  a4[2] = v9;
  a4[3] = v8;
  a4[4] = v10;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t _s13HomeDataModel6ActionO013MediaPlaybackD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  v8 = *(a2 + 24);
  v9 = *(a2 + 32);
  v10 = sub_1D17A6E98(*a1, *a2);
  result = 0;
  if ((v10 & 1) != 0 && v2 == v6)
  {
    if (v4)
    {
      if (!v8)
      {
        return 0;
      }
    }

    else
    {
      if (v3 == v7)
      {
        v12 = v8;
      }

      else
      {
        v12 = 1;
      }

      if (v12)
      {
        return 0;
      }
    }

    if (v5)
    {
      if (!v9)
      {
        return 0;
      }

      v13 = sub_1D17A7248(v5, v9);

      if ((v13 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

uint64_t sub_1D17841EC(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D1784A20(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1D38917C0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1D1762CB8(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D17843EC(uint64_t a1)
{
  v2 = type metadata accessor for StaticZone(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D1784A20(&qword_1EE07B4E8, type metadata accessor for StaticZone, &protocol conformance descriptor for StaticZone);
  result = MEMORY[0x1D38917C0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D1785B1C(v12, v6, type metadata accessor for StaticZone);
      sub_1D1763C54(v8, v6);
      sub_1D1785B84(v8, type metadata accessor for StaticZone);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D17845DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38917C0](v2, MEMORY[0x1E69E7668], MEMORY[0x1E69E7678]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D1765494(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D1784650(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38917C0](v2, MEMORY[0x1E69E75F8], MEMORY[0x1E69E7608]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D17653AC(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D178472C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D17859B8();
  result = MEMORY[0x1D38917C0](v2, &type metadata for StaticRVCClusterGroup.RunMode, v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_1D17659C4(v10, v9, v8, v7, v6);

      v5 += 4;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1D17847E8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D17858BC();
  result = MEMORY[0x1D38917C0](v2, &type metadata for ModeClusterSemanticTag, v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1D1765BC4(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D178485C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1D1785964();
  result = MEMORY[0x1D38917C0](v2, &type metadata for StaticRVCClusterGroup.OperationalState, v3);
  v7 = result;
  if (v2)
  {
    v5 = a1 + 33;
    do
    {
      sub_1D1765D80(v6, *(v5 - 1));
      v5 += 2;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D1784908(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1D38917C0](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_1D1784988(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38917C0](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1D1762FC4(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1D1784A20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1784A6C()
{
  result = qword_1EC6434C8;
  if (!qword_1EC6434C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6434C8);
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D1784AD4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1D1784B1C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D1784B74(uint64_t a1)
{
  v2 = type metadata accessor for Event(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D1784A20(&qword_1EC643578, type metadata accessor for Event, &protocol conformance descriptor for Event);
  result = MEMORY[0x1D38917C0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D1785B1C(v12, v6, type metadata accessor for Event);
      sub_1D176358C(v8, v6);
      sub_1D1785B84(v8, type metadata accessor for Event);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D1784D00(uint64_t a1)
{
  v2 = type metadata accessor for Action(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D1784A20(&qword_1EC643570, type metadata accessor for Action, &protocol conformance descriptor for Action);
  result = MEMORY[0x1D38917C0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D1785B1C(v12, v6, type metadata accessor for Action);
      sub_1D176334C(v8, v6);
      sub_1D1785B84(v8, type metadata accessor for Action);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D1784EEC(uint64_t a1)
{
  v2 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D1784A20(&qword_1EC643528, type metadata accessor for WriteInProgressStatusViewModel.ID, &protocol conformance descriptor for WriteInProgressStatusViewModel.ID);
  result = MEMORY[0x1D38917C0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D1785B1C(v12, v6, type metadata accessor for WriteInProgressStatusViewModel.ID);
      sub_1D17646BC(v8, v6);
      sub_1D1785B84(v8, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D1785078(uint64_t a1)
{
  v2 = type metadata accessor for StaticService(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D1784A20(&qword_1EE07AB20, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
  result = MEMORY[0x1D38917C0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D1785B1C(v12, v6, type metadata accessor for StaticService);
      sub_1D17625F8(v8, v6);
      sub_1D1785B84(v8, type metadata accessor for StaticService);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1D1785204(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1D38917C0](v2, MEMORY[0x1E69E76D8], MEMORY[0x1E69E76E8]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1D1766118(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_1D17852A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for MTRAttributeIDType(0);
  v4 = v3;
  v5 = sub_1D1784A20(&qword_1EC643550, type metadata accessor for MTRAttributeIDType, &unk_1D1E6D184);
  result = MEMORY[0x1D38917C0](v2, v4, v5);
  v10 = result;
  if (v2)
  {
    v7 = (a1 + 32);
    do
    {
      v8 = *v7++;
      sub_1D17657B4(&v9, v8);
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_1D1785354(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
  v4 = sub_1D1785400();
  result = MEMORY[0x1D38917C0](v2, v3, v4);
  v10 = result;
  if (v2)
  {
    v6 = (a1 + 40);
    do
    {
      v8 = *(v6 - 1);
      v7 = *v6;

      sub_1D1767EBC(&v9, v8, v7);

      v6 += 2;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

unint64_t sub_1D1785400()
{
  result = qword_1EC6434D8;
  if (!qword_1EC6434D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6434D0, &qword_1D1E71C60);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6434D8);
  }

  return result;
}

uint64_t sub_1D178547C(uint64_t a1)
{
  v2 = type metadata accessor for MatterTilePath(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D1784A20(&qword_1EC643538, type metadata accessor for MatterTilePath, &protocol conformance descriptor for MatterTilePath);
  result = MEMORY[0x1D38917C0](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1D1785B1C(v12, v6, type metadata accessor for MatterTilePath);
      sub_1D1768044(v8, v6);
      sub_1D1785B84(v8, type metadata accessor for MatterTilePath);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

unint64_t *sub_1D1785668(unint64_t a1, unint64_t *a2, void *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {
    v12 = sub_1D1741B10(0, a2, a3);
    v13 = sub_1D1771944(a4, a2, a3);
    result = MEMORY[0x1D38917C0](i, v12, v13);
    v18 = result;
    if (v10)
    {
      break;
    }

    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v16 = MEMORY[0x1D3891EF0](a2, a1);
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v16 = *(a1 + 8 * a2 + 32);
      }

      v10 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v18;
      a5(&v17, v16);

      a2 = (a2 + 1);
      if (v10 == v15)
      {
        return v18;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  a4 = result;
  v15 = sub_1D1E6873C();
  result = a4;
  if (v15)
  {
    goto LABEL_7;
  }

  return result;
}

unint64_t sub_1D17857C0()
{
  result = qword_1EC643510;
  if (!qword_1EC643510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643510);
  }

  return result;
}

unint64_t sub_1D1785814()
{
  result = qword_1EC643530;
  if (!qword_1EC643530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643530);
  }

  return result;
}

unint64_t sub_1D1785868()
{
  result = qword_1EE07ABD8[0];
  if (!qword_1EE07ABD8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07ABD8);
  }

  return result;
}

unint64_t sub_1D17858BC()
{
  result = qword_1EC643540;
  if (!qword_1EC643540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643540);
  }

  return result;
}

unint64_t sub_1D1785910()
{
  result = qword_1EE07C400[0];
  if (!qword_1EE07C400[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07C400);
  }

  return result;
}

unint64_t sub_1D1785964()
{
  result = qword_1EC643548;
  if (!qword_1EC643548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643548);
  }

  return result;
}

unint64_t sub_1D17859B8()
{
  result = qword_1EE07C3F0;
  if (!qword_1EE07C3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07C3F0);
  }

  return result;
}

unint64_t sub_1D1785A0C()
{
  result = qword_1EE07CE70[0];
  if (!qword_1EE07CE70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07CE70);
  }

  return result;
}

unint64_t sub_1D1785A60()
{
  result = qword_1EE07C968[0];
  if (!qword_1EE07C968[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE07C968);
  }

  return result;
}

uint64_t sub_1D1785AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1785B1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1785B84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Action.NaturalLightAction.init(action:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v56 = sub_1D1E66A7C();
  v5 = *(v56 - 8);
  v6 = MEMORY[0x1EEE9AC00](v56);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v47 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v47 - v12;
  v14 = [a1 lightProfile];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v15 accessory];
  if (!v16)
  {

LABEL_15:
    type metadata accessor for Action.NaturalLightAction.Error(0);
    sub_1D1790EF0(&qword_1EC643588, type metadata accessor for Action.NaturalLightAction.Error, &protocol conformance descriptor for Action.NaturalLightAction.Error);
    swift_allocError();
    *v31 = a1;
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  v17 = v16;
  v53 = v2;
  v54 = a2;
  v18 = [v15 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v19 = sub_1D1E67C1C();

  v55 = v19;
  if (v19 >> 62)
  {
    v20 = sub_1D1E6873C();
    v52 = v8;
    if (v20)
    {
      goto LABEL_5;
    }

LABEL_17:

    v23 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = v8;
  if (!v20)
  {
    goto LABEL_17;
  }

LABEL_5:
  v48 = v17;
  v49 = v15;
  v50 = v11;
  v51 = a1;
  v57 = MEMORY[0x1E69E7CC0];
  result = sub_1D178CEFC(0, v20 & ~(v20 >> 63), 0);
  if (v20 < 0)
  {
    __break(1u);
    return result;
  }

  v22 = 0;
  v23 = v57;
  v24 = v55;
  v25 = v55 & 0xC000000000000001;
  do
  {
    if (v25)
    {
      v26 = MEMORY[0x1D3891EF0](v22, v24);
    }

    else
    {
      v26 = *(v24 + 8 * v22 + 32);
    }

    v27 = v26;
    v28 = [v27 uniqueIdentifier];
    sub_1D1E66A5C();

    v57 = v23;
    v30 = *(v23 + 16);
    v29 = *(v23 + 24);
    if (v30 >= v29 >> 1)
    {
      sub_1D178CEFC((v29 > 1), v30 + 1, 1);
      v23 = v57;
    }

    ++v22;
    *(v23 + 16) = v30 + 1;
    (*(v5 + 32))(v23 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v30, v13, v56);
    v24 = v55;
  }

  while (v20 != v22);

  v11 = v50;
  a1 = v51;
  v17 = v48;
  v15 = v49;
LABEL_18:
  v55 = sub_1D17841EC(v23);

  v32 = [a1 isNaturalLightingEnabled];
  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  LODWORD(v51) = byte_1EE07B288;
  if (byte_1EE07B288)
  {
    v33 = [v17 name];
    v49 = sub_1D1E6781C();
    v50 = v34;
  }

  else
  {
    v49 = 0;
    v50 = 0;
  }

  v35 = [v15 uniqueIdentifier];

  sub_1D1E66A5C();
  v36 = [v17 uniqueIdentifier];
  v37 = v11;
  v38 = v52;
  sub_1D1E66A5C();

  v39 = *(v5 + 16);
  v40 = v54;
  v41 = v56;
  v39(v54, v37, v56);
  v42 = type metadata accessor for Action.NaturalLightAction(0);
  v39(v40 + v42[5], v38, v41);
  *(v40 + v42[6]) = v55;
  *(v40 + v42[7]) = v32;
  v43 = *(v5 + 8);
  v43(v38, v41);
  result = (v43)(v37, v41);
  if (v51)
  {
    v45 = v49;
    v44 = v50;
  }

  else
  {

    v45 = 0;
    v44 = 0;
  }

  v46 = (v54 + v42[8]);
  *v46 = v45;
  v46[1] = v44;
  return result;
}

unsigned __int8 *sub_1D1786138(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Action.NaturalLightAction(0);
  v5 = sub_1D1E66A2C();
  v6 = [a1 accessoryWithUniqueIdentifier_];

  if (!v6)
  {
    goto LABEL_5;
  }

  v7 = [v6 lightProfiles];
  sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
  sub_1D1791558();
  v8 = sub_1D1E6816C();

  MEMORY[0x1EEE9AC00](v9);
  v16[2] = v2;
  sub_1D1746E10(sub_1D17915C0, v16, v8);
  v11 = v10;

  if (!v11)
  {

LABEL_5:
    type metadata accessor for Action.NaturalLightAction.Error(0);
    sub_1D1790EF0(&qword_1EC643588, type metadata accessor for Action.NaturalLightAction.Error, &protocol conformance descriptor for Action.NaturalLightAction.Error);
    swift_allocError();
    v13 = v12;
    v14 = sub_1D1E66A7C();
    (*(*(v14 - 8) + 16))(v13, v2, v14);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v2;
  }

  v2 = [objc_allocWithZone(MEMORY[0x1E696CBC0]) initWithLightProfile:v11 naturalLightingEnabled:v2[*(v4 + 28)]];

  return v2;
}

uint64_t Action.NaturalLightAction.debugDescription.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000027, 0x80000001D1EB8BB0);
  v1 = type metadata accessor for Action.NaturalLightAction(0);
  if (*(v0 + *(v1 + 28)))
  {
    v2 = 0x64656C62616E65;
  }

  else
  {
    v2 = 0x64656C6261736964;
  }

  if (*(v0 + *(v1 + 28)))
  {
    v3 = 0xE700000000000000;
  }

  else
  {
    v3 = 0xE800000000000000;
  }

  MEMORY[0x1D3890F70](v2, v3);

  MEMORY[0x1D3890F70](0x6F727020726F6620, 0xED000020656C6966);
  sub_1D1E66A7C();
  sub_1D1790EF0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v4 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v4);

  MEMORY[0x1D3890F70](0x65636361206E6F20, 0xEE002079726F7373);
  v5 = (v0 + *(v1 + 32));
  if (v5[1])
  {
    v11 = *v5;
    v12 = v5[1];

    MEMORY[0x1D3890F70](10272, 0xE200000000000000);
    v6 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v6);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    v7 = v11;
    v8 = v12;
  }

  else
  {
    v7 = sub_1D1E68FAC();
    v8 = v9;
  }

  MEMORY[0x1D3890F70](v7, v8);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return 0;
}

void *sub_1D178659C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643688, &unk_1D1E71D98);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for BoxedTileInfoBearer(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(type metadata accessor for StaticUserActionPrediction(0) - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x1E69E7CC0];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1D1741A30(v9, &qword_1EC643688, &unk_1D1E71D98);
    }

    else
    {
      v20 = v28;
      sub_1D1790FF4(v9, v28, type metadata accessor for BoxedTileInfoBearer);
      sub_1D1790FF4(v20, v30, type metadata accessor for BoxedTileInfoBearer);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D177D020(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1D177D020((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_1D1790FF4(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for BoxedTileInfoBearer);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_1D17868B8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for StaticService(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v30 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(sub_1D1E66A7C() - 8);
  v25 = v11;
  v17 = (v11 + 48);
  v18 = a3 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v29 = *(v16 + 72);
  v19 = MEMORY[0x1E69E7CC0];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    a1(v18);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1D1741A30(v9, &qword_1EC6436F0, &qword_1D1E99BC0);
    }

    else
    {
      v20 = v28;
      sub_1D1790FF4(v9, v28, type metadata accessor for StaticService);
      sub_1D1790FF4(v20, v30, type metadata accessor for StaticService);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v19 = sub_1D177D048(0, v19[2] + 1, 1, v19);
      }

      v22 = v19[2];
      v21 = v19[3];
      if (v22 >= v21 >> 1)
      {
        v19 = sub_1D177D048((v21 > 1), v22 + 1, 1, v19);
      }

      v19[2] = v22 + 1;
      sub_1D1790FF4(v30, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for StaticService);
      v10 = v26;
    }

    v18 += v29;
    if (!--v15)
    {
      return v19;
    }
  }

  return v19;
}

void *sub_1D1786BD4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v43 = type metadata accessor for StaticService(0);
  v8 = *(v43 - 8);
  v9 = MEMORY[0x1EEE9AC00](v43);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v35 - v11;
  v12 = sub_1D1E66A7C();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v44 = v14 + 16;
  v45 = v14;
  v48 = (v14 + 8);
  v39 = v8;
  v42 = (v8 + 48);
  v22 = v13;
  v49 = a3;

  v24 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v45 + 16))(v16, *(v49 + 48) + *(v45 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v47(v16);
    if (v3)
    {
      (*v48)(v16, v22);
      v34 = v41;

      return v34;
    }

    v20 &= v20 - 1;
    (*v48)(v16, v22);
    if ((*v42)(v7, 1, v43) == 1)
    {
      result = sub_1D1741A30(v7, &qword_1EC6436F0, &qword_1D1E99BC0);
    }

    else
    {
      v37 = v22;
      v26 = v38;
      sub_1D1790FF4(v7, v38, type metadata accessor for StaticService);
      sub_1D1790FF4(v26, v40, type metadata accessor for StaticService);
      v27 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1D177D048(0, v27[2] + 1, 1, v27);
      }

      v29 = v27[2];
      v28 = v27[3];
      v41 = v27;
      v30 = v29 + 1;
      v22 = v37;
      if (v29 >= v28 >> 1)
      {
        v36 = v29;
        v33 = sub_1D177D048((v28 > 1), v29 + 1, 1, v41);
        v29 = v36;
        v41 = v33;
      }

      v31 = v40;
      v32 = v41;
      v41[2] = v30;
      result = sub_1D1790FF4(v31, v32 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v29, type metadata accessor for StaticService);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v41;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D178701C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for StaticActionSet(0);
  v25 = *(v30 - 8);
  v8 = MEMORY[0x1EEE9AC00](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x1E69E7CC0];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x1D3891EF0](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_1D1741A30(v7, &qword_1EC643718, &qword_1D1E71E70);
      }

      else
      {
        v18 = v24;
        sub_1D1790FF4(v7, v24, type metadata accessor for StaticActionSet);
        sub_1D1790FF4(v18, v29, type metadata accessor for StaticActionSet);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1D177D754(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_1D177D754((v19 > 1), v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_1D1790FF4(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for StaticActionSet);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D1787364(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643770, &qword_1D1E71EC8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for StaticMediaSystem(0);
  v25 = *(v30 - 8);
  v8 = MEMORY[0x1EEE9AC00](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x1E69E7CC0];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x1D3891EF0](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_1D1741A30(v7, &qword_1EC643770, &qword_1D1E71EC8);
      }

      else
      {
        v18 = v24;
        sub_1D1790FF4(v7, v24, type metadata accessor for StaticMediaSystem);
        sub_1D1790FF4(v18, v29, type metadata accessor for StaticMediaSystem);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1D177D844(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_1D177D844((v19 > 1), v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_1D1790FF4(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for StaticMediaSystem);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D17876AC(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643758, &qword_1D1E71EB0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for StaticMediaProfile(0);
  v25 = *(v30 - 8);
  v8 = MEMORY[0x1EEE9AC00](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x1E69E7CC0];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x1D3891EF0](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_1D1741A30(v7, &qword_1EC643758, &qword_1D1E71EB0);
      }

      else
      {
        v18 = v24;
        sub_1D1790FF4(v7, v24, type metadata accessor for StaticMediaProfile);
        sub_1D1790FF4(v18, v29, type metadata accessor for StaticMediaProfile);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1D177D86C(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_1D177D86C((v19 > 1), v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_1D1790FF4(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for StaticMediaProfile);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D17879F4(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643878, &qword_1D1E72030);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v43 = type metadata accessor for StaticRoom(0);
  v8 = *(v43 - 8);
  v9 = MEMORY[0x1EEE9AC00](v43);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v35 - v11;
  v12 = sub_1D1E66A7C();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v44 = v14 + 16;
  v45 = v14;
  v48 = (v14 + 8);
  v39 = v8;
  v42 = (v8 + 48);
  v22 = v13;
  v49 = a3;

  v24 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v45 + 16))(v16, *(v49 + 48) + *(v45 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v47(v16);
    if (v3)
    {
      (*v48)(v16, v22);
      v34 = v41;

      return v34;
    }

    v20 &= v20 - 1;
    (*v48)(v16, v22);
    if ((*v42)(v7, 1, v43) == 1)
    {
      result = sub_1D1741A30(v7, &qword_1EC643878, &qword_1D1E72030);
    }

    else
    {
      v37 = v22;
      v26 = v38;
      sub_1D1790FF4(v7, v38, type metadata accessor for StaticRoom);
      sub_1D1790FF4(v26, v40, type metadata accessor for StaticRoom);
      v27 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1D177DC2C(0, v27[2] + 1, 1, v27);
      }

      v29 = v27[2];
      v28 = v27[3];
      v41 = v27;
      v30 = v29 + 1;
      v22 = v37;
      if (v29 >= v28 >> 1)
      {
        v36 = v29;
        v33 = sub_1D177DC2C((v28 > 1), v29 + 1, 1, v41);
        v29 = v36;
        v41 = v33;
      }

      v31 = v40;
      v32 = v41;
      v41[2] = v30;
      result = sub_1D1790FF4(v31, v32 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v29, type metadata accessor for StaticRoom);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v41;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D1787E3C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643870, &qword_1D1E72028);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = (a3 + 32);
  v25 = v13;
  v17 = (v13 + 48);
  v18 = MEMORY[0x1E69E7CC0];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    v19 = *v16++;
    v30 = v19;
    a1(&v30);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1D1741A30(v9, &qword_1EC643870, &qword_1D1E72028);
    }

    else
    {
      v20 = v28;
      sub_1D1790FF4(v9, v28, type metadata accessor for StaticServiceCharacteristicDoublet);
      sub_1D1790FF4(v20, v29, type metadata accessor for StaticServiceCharacteristicDoublet);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1D177DC54(0, v18[2] + 1, 1, v18);
      }

      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        v18 = sub_1D177DC54((v21 > 1), v22 + 1, 1, v18);
      }

      v18[2] = v22 + 1;
      sub_1D1790FF4(v29, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for StaticServiceCharacteristicDoublet);
      v10 = v26;
    }

    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

void *sub_1D1788104(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643860, &qword_1D1E72008);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for StaticTimer(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v27 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v26 = &v23 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = a3 + 32;
  v23 = v13;
  v17 = (v13 + 48);
  v18 = MEMORY[0x1E69E7CC0];
  v24 = v10;
  v25 = a2;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1D1741A30(v9, &qword_1EC643860, &qword_1D1E72008);
    }

    else
    {
      v19 = v26;
      sub_1D1790FF4(v9, v26, type metadata accessor for StaticTimer);
      sub_1D1790FF4(v19, v27, type metadata accessor for StaticTimer);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1D177DCCC(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1D177DCCC((v20 > 1), v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_1D1790FF4(v27, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, type metadata accessor for StaticTimer);
      v10 = v24;
    }

    v16 += 40;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

void *sub_1D17883C8(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643868, &unk_1D1E72018);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = type metadata accessor for StaticAlarm(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v27 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v26 = &v23 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = a3 + 32;
  v23 = v13;
  v17 = (v13 + 48);
  v18 = MEMORY[0x1E69E7CC0];
  v24 = v10;
  v25 = a2;
  while (1)
  {
    a1(v16);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1D1741A30(v9, &qword_1EC643868, &unk_1D1E72018);
    }

    else
    {
      v19 = v26;
      sub_1D1790FF4(v9, v26, type metadata accessor for StaticAlarm);
      sub_1D1790FF4(v19, v27, type metadata accessor for StaticAlarm);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1D177DCA4(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v18 = sub_1D177DCA4((v20 > 1), v21 + 1, 1, v18);
      }

      v18[2] = v21 + 1;
      sub_1D1790FF4(v27, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v21, type metadata accessor for StaticAlarm);
      v10 = v24;
    }

    v16 += 40;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

char *sub_1D178868C(void (*a1)(uint64_t *__return_ptr, id *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v6 = 0;
    v17 = v4 & 0xFFFFFFFFFFFFFF8;
    v18 = v4 & 0xC000000000000001;
    v20 = MEMORY[0x1E69E7CC0];
    v16 = v4;
    while (1)
    {
      if (v18)
      {
        v8 = MEMORY[0x1D3891EF0](v6, v4);
      }

      else
      {
        if (v6 >= *(v17 + 16))
        {
          goto LABEL_19;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v22 = v8;
      a1(&v21, &v22);
      if (v3)
      {

        return v20;
      }

      v11 = v21;
      v12 = BYTE1(v21);
      if (v12 <= 0xFE)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v20 = sub_1D177E508(0, *(v20 + 2) + 1, 1, v20);
        }

        v14 = *(v20 + 2);
        v13 = *(v20 + 3);
        if (v14 >= v13 >> 1)
        {
          v20 = sub_1D177E508((v13 > 1), v14 + 1, 1, v20);
        }

        *(v20 + 2) = v14 + 1;
        v7 = &v20[2 * v14];
        v7[32] = v11;
        v7[33] = v12;
        v4 = v16;
      }

      ++v6;
      if (v10 == i)
      {
        return v20;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D1788858(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for StaticMatterDevice(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v29 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v28 = &v24 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = (a3 + 32);
  v25 = v13;
  v17 = (v13 + 48);
  v18 = MEMORY[0x1E69E7CC0];
  v26 = v10;
  v27 = a2;
  while (1)
  {
    v19 = *v16++;
    v30 = v19;
    a1(&v30);
    if (v3)
    {
      break;
    }

    if ((*v17)(v9, 1, v10) == 1)
    {
      sub_1D1741A30(v9, &qword_1EC643650, &qword_1D1E71D40);
    }

    else
    {
      v20 = v28;
      sub_1D1790FF4(v9, v28, type metadata accessor for StaticMatterDevice);
      sub_1D1790FF4(v20, v29, type metadata accessor for StaticMatterDevice);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1D177E900(0, v18[2] + 1, 1, v18);
      }

      v22 = v18[2];
      v21 = v18[3];
      if (v22 >= v21 >> 1)
      {
        v18 = sub_1D177E900((v21 > 1), v22 + 1, 1, v18);
      }

      v18[2] = v22 + 1;
      sub_1D1790FF4(v29, v18 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v22, type metadata accessor for StaticMatterDevice);
      v10 = v26;
    }

    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

void *sub_1D1788B20(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437E0, &unk_1D1E96B80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v25 - v8;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v11 = MEMORY[0x1EEE9AC00](updated);
  v31 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v29 = &v25 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(v13 + 72);
  v26 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v17 = a3 + v26;
  v30 = (v13 + 48);
  v18 = MEMORY[0x1E69E7CC0];
  v27 = updated;
  v28 = a2;
  while (1)
  {
    a1(v17);
    if (v3)
    {
      break;
    }

    if ((*v30)(v9, 1, updated) == 1)
    {
      sub_1D1741A30(v9, &qword_1EC6437E0, &unk_1D1E96B80);
    }

    else
    {
      v19 = v29;
      sub_1D1790FF4(v9, v29, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1790FF4(v19, v31, type metadata accessor for StateSnapshot.UpdateType);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_1D177E928(0, v18[2] + 1, 1, v18);
      }

      v21 = v18[2];
      v20 = v18[3];
      if (v21 >= v20 >> 1)
      {
        v23 = sub_1D177E928((v20 > 1), v21 + 1, 1, v18);
        v22 = v16;
        v18 = v23;
      }

      else
      {
        v22 = v16;
      }

      v18[2] = v21 + 1;
      v16 = v22;
      sub_1D1790FF4(v31, v18 + v26 + v21 * v22, type metadata accessor for StateSnapshot.UpdateType);
      updated = v27;
    }

    v17 += v16;
    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

uint64_t sub_1D1788DF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = result;
  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  do
  {
    for (i = v7; ; ++i)
    {
      if (i >= v4)
      {
        __break(1u);
LABEL_20:
        __break(1u);
        return result;
      }

      v10 = sub_1D1E66A7C();
      v12 = *(v10 - 8);
      result = v10 - 8;
      v11 = v12;
      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_20;
      }

      v6(&v18, a3 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * i);
      if (v3)
      {

        return v8;
      }

      if (v18)
      {
        break;
      }

      result = sub_1D1791518(0, *(&v18 + 1));
      if (v7 == v4)
      {
        return v8;
      }
    }

    v17 = v18;
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1D177F29C(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v14 = *(v8 + 16);
    v13 = *(v8 + 24);
    v15 = v14 + 1;
    v16 = v17;
    if (v14 >= v13 >> 1)
    {
      result = sub_1D177F29C((v13 > 1), v14 + 1, 1, v8);
      v16 = v17;
      v15 = v14 + 1;
      v8 = result;
    }

    *(v8 + 16) = v15;
    *(v8 + 16 * v14 + 32) = v16;
  }

  while (v7 != v4);
  return v8;
}

void *sub_1D1788F9C(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v46 = a2;
  v47 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - v6;
  v43 = type metadata accessor for StaticAccessory(0);
  v8 = *(v43 - 8);
  v9 = MEMORY[0x1EEE9AC00](v43);
  v40 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v38 = &v35 - v11;
  v12 = sub_1D1E66A7C();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a3 + 56;
  v18 = 1 << *(a3 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a3 + 56);
  v21 = (v18 + 63) >> 6;
  v44 = v14 + 16;
  v45 = v14;
  v48 = (v14 + 8);
  v39 = v8;
  v42 = (v8 + 48);
  v22 = v13;
  v49 = a3;

  v24 = 0;
  v41 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v25 = v24;
    if (!v20)
    {
      break;
    }

LABEL_8:
    (*(v45 + 16))(v16, *(v49 + 48) + *(v45 + 72) * (__clz(__rbit64(v20)) | (v24 << 6)), v22);
    v47(v16);
    if (v3)
    {
      (*v48)(v16, v22);
      v34 = v41;

      return v34;
    }

    v20 &= v20 - 1;
    (*v48)(v16, v22);
    if ((*v42)(v7, 1, v43) == 1)
    {
      result = sub_1D1741A30(v7, &qword_1EC6436C8, &unk_1D1E97C40);
    }

    else
    {
      v37 = v22;
      v26 = v38;
      sub_1D1790FF4(v7, v38, type metadata accessor for StaticAccessory);
      sub_1D1790FF4(v26, v40, type metadata accessor for StaticAccessory);
      v27 = v41;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_1D177F6D4(0, v27[2] + 1, 1, v27);
      }

      v29 = v27[2];
      v28 = v27[3];
      v41 = v27;
      v30 = v29 + 1;
      v22 = v37;
      if (v29 >= v28 >> 1)
      {
        v36 = v29;
        v33 = sub_1D177F6D4((v28 > 1), v29 + 1, 1, v41);
        v29 = v36;
        v41 = v33;
      }

      v31 = v40;
      v32 = v41;
      v41[2] = v30;
      result = sub_1D1790FF4(v31, v32 + ((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v29, type metadata accessor for StaticAccessory);
    }
  }

  while (1)
  {
    v24 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v24 >= v21)
    {

      return v41;
    }

    v20 = *(v17 + 8 * v24);
    ++v25;
    if (v20)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D17893E4(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for StaticService(0);
  v25 = *(v30 - 8);
  v8 = MEMORY[0x1EEE9AC00](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x1E69E7CC0];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x1D3891EF0](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_1D1741A30(v7, &qword_1EC6436F0, &qword_1D1E99BC0);
      }

      else
      {
        v18 = v24;
        sub_1D1790FF4(v7, v24, type metadata accessor for StaticService);
        sub_1D1790FF4(v18, v29, type metadata accessor for StaticService);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1D177D048(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_1D177D048((v19 > 1), v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_1D1790FF4(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for StaticService);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D178972C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v31 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643788, &qword_1D1E71EE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v22 - v6;
  v30 = type metadata accessor for StaticMediaSystemComponent(0);
  v25 = *(v30 - 8);
  v8 = MEMORY[0x1EEE9AC00](v30);
  v29 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v22 - v10;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v12 = 0;
    v27 = a3 & 0xFFFFFFFFFFFFFF8;
    v28 = a3 & 0xC000000000000001;
    v13 = (v25 + 48);
    v14 = MEMORY[0x1E69E7CC0];
    v23 = a3;
    v26 = i;
    while (1)
    {
      if (v28)
      {
        v15 = MEMORY[0x1D3891EF0](v12, a3);
      }

      else
      {
        if (v12 >= *(v27 + 16))
        {
          goto LABEL_20;
        }

        v15 = *(a3 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      v32 = v15;
      v31(&v32);
      if (v3)
      {

        return v14;
      }

      if ((*v13)(v7, 1, v30) == 1)
      {
        sub_1D1741A30(v7, &qword_1EC643788, &qword_1D1E71EE0);
      }

      else
      {
        v18 = v24;
        sub_1D1790FF4(v7, v24, type metadata accessor for StaticMediaSystemComponent);
        sub_1D1790FF4(v18, v29, type metadata accessor for StaticMediaSystemComponent);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1D177FA64(0, v14[2] + 1, 1, v14);
        }

        v20 = v14[2];
        v19 = v14[3];
        if (v20 >= v19 >> 1)
        {
          v14 = sub_1D177FA64((v19 > 1), v20 + 1, 1, v14);
        }

        v14[2] = v20 + 1;
        sub_1D1790FF4(v29, v14 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v20, type metadata accessor for StaticMediaSystemComponent);
        a3 = v23;
      }

      ++v12;
      if (v17 == v26)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1D1789A74(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436A8, &unk_1D1E71DE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v28 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
  v8 = MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v29 = &v28 - v11;
  v30 = v10;
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v16 = (v13 + 63) >> 6;
  v33 = (v10 + 48);

  v18 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  v31 = a1;
  v32 = a3;
  v19 = a1;
  if (v15)
  {
LABEL_10:
    while (1)
    {
      v38 = *(*(a3 + 48) + (__clz(__rbit64(v15)) | (v18 << 6)));
      v21 = v36;
      v19(&v38);
      if (v3)
      {
        break;
      }

      v15 &= v15 - 1;
      if ((*v33)(v21, 1, v35) == 1)
      {
        result = sub_1D1741A30(v21, &qword_1EC6436A8, &unk_1D1E71DE0);
        if (!v15)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v22 = v29;
        sub_1D17914A8(v21, v29);
        sub_1D17914A8(v22, v34);
        v23 = v37;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v23 = sub_1D177FBB4(0, v23[2] + 1, 1, v23);
        }

        v25 = v23[2];
        v24 = v23[3];
        if (v25 >= v24 >> 1)
        {
          v23 = sub_1D177FBB4((v24 > 1), v25 + 1, 1, v23);
        }

        v23[2] = v25 + 1;
        v26 = (*(v30 + 80) + 32) & ~*(v30 + 80);
        v37 = v23;
        result = sub_1D17914A8(v34, v23 + v26 + *(v30 + 72) * v25);
        v19 = v31;
        a3 = v32;
        if (!v15)
        {
          goto LABEL_6;
        }
      }
    }

    v27 = v37;

    return v27;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {

        return v37;
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v18 = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D1789DAC(void (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v29 = type metadata accessor for StaticMatterDevice(0);
  v8 = MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v24 - v11;
  v25 = v10;
  v12 = a3 + 64;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 64);
  v16 = (v13 + 63) >> 6;
  v27 = (v10 + 48);

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v26 = a3;
  if (v15)
  {
LABEL_10:
    while (1)
    {
      v32 = *(*(a3 + 56) + ((v18 << 9) | (8 * __clz(__rbit64(v15)))));
      v30(&v32);
      if (v3)
      {
        break;
      }

      v15 &= v15 - 1;
      if ((*v27)(v7, 1, v29) == 1)
      {
        result = sub_1D1741A30(v7, &qword_1EC643650, &qword_1D1E71D40);
        if (!v15)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v21 = v24;
        sub_1D1790FF4(v7, v24, type metadata accessor for StaticMatterDevice);
        sub_1D1790FF4(v21, v28, type metadata accessor for StaticMatterDevice);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D177E900(0, v19[2] + 1, 1, v19);
        }

        v23 = v19[2];
        v22 = v19[3];
        if (v23 >= v22 >> 1)
        {
          v19 = sub_1D177E900((v22 > 1), v23 + 1, 1, v19);
        }

        v19[2] = v23 + 1;
        result = sub_1D1790FF4(v28, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, type metadata accessor for StaticMatterDevice);
        a3 = v26;
        if (!v15)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_19:

    return v19;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        goto LABEL_19;
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v18 = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D178A0E8(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v30 = a1;
  v31 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v24 - v6;
  v29 = type metadata accessor for StaticCharacteristic(0);
  v8 = MEMORY[0x1EEE9AC00](v29);
  v28 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v24 - v11;
  v25 = v10;
  v12 = a3 + 56;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v16 = (v13 + 63) >> 6;
  v27 = (v10 + 48);

  v18 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  v26 = a3;
  if (v15)
  {
LABEL_10:
    while (1)
    {
      v32 = *(*(a3 + 48) + (__clz(__rbit64(v15)) | (v18 << 6)));
      v30(&v32);
      if (v3)
      {
        break;
      }

      v15 &= v15 - 1;
      if ((*v27)(v7, 1, v29) == 1)
      {
        result = sub_1D1741A30(v7, &qword_1EC643630, &qword_1D1E71D10);
        if (!v15)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v21 = v24;
        sub_1D1790FF4(v7, v24, type metadata accessor for StaticCharacteristic);
        sub_1D1790FF4(v21, v28, type metadata accessor for StaticCharacteristic);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v19 = sub_1D17800B4(0, v19[2] + 1, 1, v19);
        }

        v23 = v19[2];
        v22 = v19[3];
        if (v23 >= v22 >> 1)
        {
          v19 = sub_1D17800B4((v22 > 1), v23 + 1, 1, v19);
        }

        v19[2] = v23 + 1;
        result = sub_1D1790FF4(v28, v19 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23, type metadata accessor for StaticCharacteristic);
        a3 = v26;
        if (!v15)
        {
          goto LABEL_6;
        }
      }
    }

LABEL_19:

    return v19;
  }

  else
  {
LABEL_6:
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v20 >= v16)
      {
        goto LABEL_19;
      }

      v15 = *(v12 + 8 * v20);
      ++v18;
      if (v15)
      {
        v18 = v20;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_1D178A420(void (*a1)(__int128 *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v22 = a2;
  v23 = a1;
  v5 = *(a3 + 16);

  v20 = a3;
  if (v5)
  {
    v6 = *(type metadata accessor for StaticUserActionPrediction(0) - 8);
    v7 = a3 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v21 = *(v6 + 72);
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v23(&v24, v7);
      if (v3)
      {
        break;
      }

      if (v25)
      {
        sub_1D16EEE20(&v24, v27);
        sub_1D16EEE20(v27, &v24);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v28 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_1D177F2B8(0, v8[2] + 1, 1, v8);
          v28 = v8;
        }

        v11 = v8[2];
        v10 = v8[3];
        if (v11 >= v10 >> 1)
        {
          v12 = sub_1D177F2B8((v10 > 1), v11 + 1, 1, v8);
          v28 = v12;
        }

        else
        {
          v12 = v8;
        }

        v13 = v25;
        v14 = v26;
        v15 = __swift_mutable_project_boxed_opaque_existential_1(&v24, v25);
        MEMORY[0x1EEE9AC00](v15);
        v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v18 + 16))(v17);
        sub_1D1D20B74(v11, v17, &v28, v13, v14);
        __swift_destroy_boxed_opaque_existential_1(&v24);
        v8 = v12;
      }

      else
      {
        sub_1D1741A30(&v24, &qword_1EC643668, &qword_1D1E71D60);
      }

      v7 += v21;
      if (!--v5)
      {
        goto LABEL_15;
      }
    }
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:

  return v8;
}

uint64_t Action.NaturalLightAction.lightProfileID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Action.NaturalLightAction.accessoryID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Action.NaturalLightAction(0) + 20);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Action.NaturalLightAction.associatedServiceIDs.getter()
{
  type metadata accessor for Action.NaturalLightAction(0);
}

uint64_t Action.NaturalLightAction.init(lightProfileID:accessoryID:associatedServiceIDs:naturalLightingEnabled:accessoryName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = *(v13 + 16);
  v14(a7, a1, v12);
  v15 = type metadata accessor for Action.NaturalLightAction(0);
  v14(a7 + v15[5], a2, v12);
  *(a7 + v15[6]) = a3;
  *(a7 + v15[7]) = a4;
  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  v16 = byte_1EE07B288;
  v17 = *(v13 + 8);
  v17(a2, v12);
  result = (v17)(a1, v12);
  if (v16)
  {
    v20 = a5;
    v19 = a6;
  }

  else
  {

    v20 = 0;
    v19 = 0;
  }

  v21 = (a7 + v15[8]);
  *v21 = v20;
  v21[1] = v19;
  return result;
}

unint64_t Action.NaturalLightAction.Error.description.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Action.NaturalLightAction.Error(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1790F8C(v1, v8, type metadata accessor for Action.NaturalLightAction.Error);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1D1E6884C();

    v21 = 0xD000000000000024;
    v22 = 0x80000001D1EB8BE0;
    sub_1D1790EF0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v9 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v9);

    v10 = v21;
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    v11 = *v8;
    v21 = 0;
    v22 = 0xE000000000000000;
    sub_1D1E6884C();
    v12 = [v11 description];
    v13 = sub_1D1E6781C();
    v15 = v14;

    v21 = v13;
    v22 = v15;
    MEMORY[0x1D3890F70](0xD00000000000001ELL, 0x80000001D1EB8C10);
    v16 = [v11 description];
    v17 = sub_1D1E6781C();
    v19 = v18;

    MEMORY[0x1D3890F70](v17, v19);

    return v21;
  }

  return v10;
}

uint64_t Action.NaturalLightAction.hash(into:)(__int128 *a1)
{
  sub_1D1E66A7C();
  sub_1D1790EF0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for Action.NaturalLightAction(0);
  sub_1D1E676EC();
  sub_1D176D4E8(a1, *(v1 + *(v3 + 24)));
  sub_1D1E6922C();
  if (!*(v1 + *(v3 + 32) + 8))
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t Action.NaturalLightAction.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1790EF0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for Action.NaturalLightAction(0);
  sub_1D1E676EC();
  sub_1D176D4E8(v3, *(v0 + *(v1 + 24)));
  sub_1D1E6922C();
  if (*(v0 + *(v1 + 32) + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D178AE94(__int128 *a1, int *a2)
{
  sub_1D1E66A7C();
  sub_1D1790EF0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  sub_1D176D4E8(a1, *(v2 + a2[6]));
  sub_1D1E6922C();
  if (!*(v2 + a2[8] + 8))
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();

  return sub_1D1E678EC();
}

uint64_t sub_1D178AFB4(uint64_t a1, int *a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1790EF0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E676EC();
  sub_1D176D4E8(v5, *(v2 + a2[6]));
  sub_1D1E6922C();
  if (*(v2 + a2[8] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6926C();
}

uint64_t Action.NaturalLightAction.staticLightProfile.getter(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v2[8] = swift_task_alloc();
  v3 = type metadata accessor for StateSnapshot(0);
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D178B1D4, 0, 0);
}

uint64_t sub_1D178B1D4()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[13] = v1;
  if (v1)
  {
    v0[14] = v1[3];
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D178B2CC;
    v4 = 0;
  }

  else
  {
    v0[15] = sub_1D1E67E1C();
    v0[16] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D178B4A8;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D178B2CC()
{
  HomeState.AllHomesModel.currentStateSnapshot.getter(*(v0 + 64));

  return MEMORY[0x1EEE6DFA0](sub_1D178B338, 0, 0);
}

uint64_t sub_1D178B338()
{
  v1 = v0[8];
  if ((*(v0[10] + 48))(v1, 1, v0[9]) == 1)
  {
    v2 = v0[6];

    sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
    v3 = type metadata accessor for StaticLightProfile(0);
    (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  }

  else
  {
    v4 = v0[12];
    v5 = v0[6];
    sub_1D1790FF4(v1, v4, type metadata accessor for StateSnapshot);
    Action.NaturalLightAction.staticLightProfile(in:)(v4, v5);

    sub_1D1791140(v4, type metadata accessor for StateSnapshot);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D178B4A8()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D178B540, 0, 0);
}

uint64_t sub_1D178B540()
{
  *(v0 + 136) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D178B5CC, v2, v1);
}

uint64_t sub_1D178B5CC()
{

  *(v0 + 144) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D178B640, 0, 0);
}

uint64_t sub_1D178B640()
{
  *(v0 + 152) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D178B6CC, v2, v1);
}

uint64_t sub_1D178B6CC()
{
  v1 = v0[18];
  v2 = v0[11];

  swift_getKeyPath();
  v0[5] = v1;
  sub_1D1790EF0(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D1790F8C(v1 + v3, v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D178B7F4, 0, 0);
}

uint64_t sub_1D178B7F4()
{
  v1 = v0[11];
  Action.NaturalLightAction.staticLightProfile(in:)(v1, v0[6]);
  sub_1D1791140(v1, type metadata accessor for StateSnapshot);

  v2 = v0[1];

  return v2();
}

void Action.NaturalLightAction.staticLightProfile(in:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v68 = a2;
  v67 = sub_1D1E66A7C();
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v63 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v59 - v9;
  v10 = type metadata accessor for Action.NaturalLightAction(0);
  v70 = *(v10 - 8);
  v11 = *(v70 + 64);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v62 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v61 = &v59 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v59 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v59 - v18;
  v20 = type metadata accessor for StateSnapshot(0);
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = MEMORY[0x1EEE9AC00](v20 - 8);
  v24 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v59 - v25;
  v59 = v10;
  v69 = *(v3 + *(v10 + 24));
  sub_1D1790F8C(a1, &v59 - v25, type metadata accessor for StateSnapshot);
  v60 = v3;
  sub_1D1790F8C(v3, v19, type metadata accessor for Action.NaturalLightAction);
  sub_1D1790F8C(v26, v24, type metadata accessor for StateSnapshot);
  sub_1D1790F8C(v19, v17, type metadata accessor for Action.NaturalLightAction);
  v27 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v28 = (v22 + *(v70 + 80) + v27) & ~*(v70 + 80);
  v29 = swift_allocObject();
  sub_1D1790FF4(v26, v29 + v27, type metadata accessor for StateSnapshot);
  v30 = v19;
  v31 = v69;
  sub_1D1790FF4(v30, v29 + v28, type metadata accessor for Action.NaturalLightAction);
  v71[1] = v31;
  v71[2] = sub_1D179105C;
  v71[3] = v29;
  v71[4] = sub_1D178CCC0;
  v71[5] = 0;

  v32 = sub_1D17776CC();
  if (v34)
  {
    sub_1D1791140(v24, type metadata accessor for StateSnapshot);
    sub_1D1791140(v17, type metadata accessor for Action.NaturalLightAction);
    __break(1u);
    goto LABEL_16;
  }

  if (*(v31 + 36) != v33)
  {
    __break(1u);
LABEL_14:
    swift_once();
    goto LABEL_9;
  }

  if (v32 == 1 << *(v31 + 32))
  {
    sub_1D1791140(v24, type metadata accessor for StateSnapshot);
    sub_1D1791140(v17, type metadata accessor for Action.NaturalLightAction);
    v35 = type metadata accessor for StaticLightProfile(0);
    v36 = v68;
    (*(*(v35 - 8) + 56))(v68, 1, 1, v35);
    goto LABEL_7;
  }

  v37 = v63;
  sub_1D17908B4(v32, v33, v31, v63);
  v38 = v66;
  sub_1D178C8E8(v24, v66);
  sub_1D1791140(v24, type metadata accessor for StateSnapshot);
  sub_1D1791140(v17, type metadata accessor for Action.NaturalLightAction);
  (*(v64 + 8))(v37, v67);
  v39 = v65;
  sub_1D17911A0(v38, v65);
  v35 = type metadata accessor for StaticLightProfile(0);
  v40 = *(v35 - 8);
  if ((*(v40 + 48))(v39, 1, v35) == 1)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v41 = v39;
  v36 = v68;
  sub_1D1790FF4(v41, v68, type metadata accessor for StaticLightProfile);
  sub_1D1741A30(v38, &qword_1EC6430E8, &unk_1D1E71440);
  (*(v40 + 56))(v36, 0, 1, v35);
LABEL_7:

  type metadata accessor for StaticLightProfile(0);
  if ((*(*(v35 - 8) + 48))(v36, 1, v35) != 1)
  {
    return;
  }

  if (qword_1EE07B5D0 != -1)
  {
    goto LABEL_14;
  }

LABEL_9:
  v42 = sub_1D1E6709C();
  __swift_project_value_buffer(v42, qword_1EE07B5D8);
  v44 = v60;
  v43 = v61;
  sub_1D1790F8C(v60, v61, type metadata accessor for Action.NaturalLightAction);
  v45 = v62;
  sub_1D1790F8C(v44, v62, type metadata accessor for Action.NaturalLightAction);
  v46 = sub_1D1E6707C();
  v47 = sub_1D1E6833C();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v71[0] = v70;
    *v48 = 136315394;
    v49 = MEMORY[0x1E69695A8];
    sub_1D1790EF0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v50 = sub_1D1E68FAC();
    v52 = v51;
    sub_1D1791140(v43, type metadata accessor for Action.NaturalLightAction);
    v53 = sub_1D1B1312C(v50, v52, v71);

    *(v48 + 4) = v53;
    *(v48 + 12) = 2080;
    sub_1D1790EF0(qword_1EE07DD78, v49, MEMORY[0x1E69695B8]);
    v54 = sub_1D1E6817C();
    v56 = v55;
    sub_1D1791140(v45, type metadata accessor for Action.NaturalLightAction);
    v57 = sub_1D1B1312C(v54, v56, v71);

    *(v48 + 14) = v57;
    _os_log_impl(&dword_1D16EC000, v46, v47, "Failed to find static light profile for id: %s in serviceIDs: %s", v48, 0x16u);
    v58 = v70;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v58, -1, -1);
    MEMORY[0x1D3893640](v48, -1, -1);
  }

  else
  {

    sub_1D1791140(v45, type metadata accessor for Action.NaturalLightAction);
    sub_1D1791140(v43, type metadata accessor for Action.NaturalLightAction);
  }
}

uint64_t Action.NaturalLightAction.lightProfile.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D178C250;

  return Action.NaturalLightAction.staticLightProfile.getter(v1);
}

uint64_t sub_1D178C250()
{

  return MEMORY[0x1EEE6DFA0](sub_1D178C34C, 0, 0);
}

uint64_t sub_1D178C34C()
{
  v1 = v0[2];
  v2 = type metadata accessor for StaticLightProfile(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D1741A30(v1, &qword_1EC6430E8, &unk_1D1E71440);

    v3 = v0[1];

    return v3(0);
  }

  else
  {
    v5 = swift_task_alloc();
    v0[4] = v5;
    *v5 = v0;
    v5[1] = sub_1D178C478;

    return sub_1D1B92B34();
  }
}

uint64_t sub_1D178C478(uint64_t a1)
{
  *(*v1 + 40) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D178C578, 0, 0);
}

uint64_t sub_1D178C578()
{
  sub_1D1791140(v0[2], type metadata accessor for StaticLightProfile);
  v1 = v0[5];

  v2 = v0[1];

  return v2(v1);
}

void *Action.NaturalLightAction.associatedStaticServices(in:)(uint64_t a1)
{
  v3 = *(v1 + *(type metadata accessor for Action.NaturalLightAction(0) + 24));
  v5[2] = a1;
  return sub_1D1786BD4(sub_1D1791210, v5, v3);
}

uint64_t sub_1D178C660@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v3 + 16) && (v4 = sub_1D1742188(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for StaticService(0);
    v9 = *(v8 - 8);
    sub_1D1790F8C(v7 + *(v9 + 72) * v6, a2, type metadata accessor for StaticService);
    return (*(v9 + 56))(a2, 0, 1, v8);
  }

  else
  {
    v11 = type metadata accessor for StaticService(0);
    return (*(*(v11 - 8) + 56))(a2, 1, 1, v11);
  }
}

uint64_t Action.NaturalLightAction.staticAccessory(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 32));
  if (*(v3 + 16) && (type metadata accessor for Action.NaturalLightAction(0), v4 = sub_1D1742188(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for StaticAccessory(0);
    v15 = *(v8 - 8);
    sub_1D1790F8C(v7 + *(v15 + 72) * v6, a2, type metadata accessor for StaticAccessory);
    v9 = *(v15 + 56);
    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v13 = type metadata accessor for StaticAccessory(0);
    v9 = *(*(v13 - 8) + 56);
    v12 = v13;
    v10 = a2;
    v11 = 1;
  }

  return v9(v10, v11, 1, v12);
}

uint64_t sub_1D178C8E8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v25 - v9;
  v11 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v11 + 16) && (v12 = sub_1D1742188(), (v13 & 1) != 0))
  {
    sub_1D1790F8C(*(v11 + 56) + *(v5 + 72) * v12, v8, type metadata accessor for StaticService);
    sub_1D1790FF4(v8, v10, type metadata accessor for StaticService);
    v14 = *&v10[*(v4 + 132)];
    if (*(v14 + 16) && (v15 = sub_1D1742188(), (v16 & 1) != 0))
    {
      v17 = v15;
      v18 = *(v14 + 56);
      v19 = type metadata accessor for StaticLightProfile(0);
      v20 = *(v19 - 8);
      sub_1D1790F8C(v18 + *(v20 + 72) * v17, a2, type metadata accessor for StaticLightProfile);
      (*(v20 + 56))(a2, 0, 1, v19);
    }

    else
    {
      v24 = type metadata accessor for StaticLightProfile(0);
      (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
    }

    return sub_1D1791140(v10, type metadata accessor for StaticService);
  }

  else
  {
    v21 = type metadata accessor for StaticLightProfile(0);
    v22 = *(*(v21 - 8) + 56);

    return v22(a2, 1, 1, v21);
  }
}

uint64_t sub_1D178CBB0(id *a1, uint64_t a2)
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

char *sub_1D178CD24(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D178DDAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D178CD44(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D178DEB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D178CD64(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643208, &unk_1D1E71660, type metadata accessor for BoxedTileInfoBearer);
  *v3 = result;
  return result;
}

void *sub_1D178CDA8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6431D0, &unk_1D1E76490, type metadata accessor for StaticMatterDevice);
  *v3 = result;
  return result;
}

void *sub_1D178CDEC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6432E0, &qword_1D1E71738, type metadata accessor for StaticMediaProfile);
  *v3 = result;
  return result;
}

void *sub_1D178CE30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6432E8, &qword_1D1E71740, type metadata accessor for StaticMediaSystem);
  *v3 = result;
  return result;
}

void *sub_1D178CE74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6432C8, &unk_1D1E71720, type metadata accessor for StaticActionSet);
  *v3 = result;
  return result;
}

void *sub_1D178CEB8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643288, &qword_1D1E716E0, type metadata accessor for StaticAccessory);
  *v3 = result;
  return result;
}

void *sub_1D178CEFC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643350, &qword_1D1E72040, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

void *sub_1D178CF40(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D178F958(a1, a2, a3, *v3, &qword_1EC643290, &qword_1D1E716E8, &qword_1EC643298, &qword_1D1E716F0);
  *v3 = result;
  return result;
}

char *sub_1D178CF80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D178E110(a1, a2, a3, *v3, &qword_1EC6436B8, &unk_1D1E71E00);
  *v3 = result;
  return result;
}

void *sub_1D178CFB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D178FBA0(a1, a2, a3, *v3, &qword_1EC643390, &qword_1D1E71808, &qword_1EC643398, &qword_1D1E71810);
  *v3 = result;
  return result;
}

char *sub_1D178CFF0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D178E1FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D178D010(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D178FBA0(a1, a2, a3, *v3, &qword_1EC643388, &unk_1D1E71FF0, &unk_1EC64A340, &qword_1D1E71800);
  *v3 = result;
  return result;
}

void *sub_1D178D050(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643638, &qword_1D1E71D18, type metadata accessor for StaticHome);
  *v3 = result;
  return result;
}

char *sub_1D178D094(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D178E334(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1D178D0B4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D178E450(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D178D0D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643708, &unk_1D1E71E60, &qword_1EC643710, &unk_1D1EA2630);
  *v3 = result;
  return result;
}

void *sub_1D178D114(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643790, &qword_1D1E71EE8, &qword_1EC643798, &qword_1D1E71EF0);
  *v3 = result;
  return result;
}

void *sub_1D178D154(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6437B0, &unk_1D1E71F10, &qword_1EC6437B8, &unk_1D1E7E730);
  *v3 = result;
  return result;
}

void *sub_1D178D194(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643738, &qword_1D1E71E90, &qword_1EC643740, &qword_1D1E71E98);
  *v3 = result;
  return result;
}

void *sub_1D178D1D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC643458, &unk_1D1E71D80, type metadata accessor for StaticRoom);
  *v3 = result;
  return result;
}

void *sub_1D178D218(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6437D0, &unk_1D1E71F30, &qword_1EC6437D8, &unk_1D1EAAD40);
  *v3 = result;
  return result;
}

void *sub_1D178D258(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6437C0, &qword_1D1E71F20, &qword_1EC6437C8, &qword_1D1E71F28);
  *v3 = result;
  return result;
}

void *sub_1D178D298(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6437A0, &qword_1D1E71EF8, &qword_1EC6437A8, &unk_1D1E71F00);
  *v3 = result;
  return result;
}

void *sub_1D178D2D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC6436E0, &unk_1D1E9F9E0, &qword_1EC6436E8, &unk_1D1E71E40);
  *v3 = result;
  return result;
}

void *sub_1D178D318(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643760, &qword_1D1E71EB8, &qword_1EC643768, &qword_1D1E71EC0);
  *v3 = result;
  return result;
}

void *sub_1D178D358(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643748, &unk_1D1E71EA0, &qword_1EC643750, &unk_1D1E7E6B0);
  *v3 = result;
  return result;
}

void *sub_1D178D398(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790460(a1, a2, a3, *v3, &qword_1EC643728, &unk_1D1E71E80, &qword_1EC643730, &unk_1D1EA7CA0);
  *v3 = result;
  return result;
}

void *sub_1D178D3D8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790670(a1, a2, a3, *v3, &qword_1EC6436B0, &unk_1D1E71DF0, type metadata accessor for WriteInProgressStatusViewModel.ID);
  *v3 = result;
  return result;
}

char *sub_1D178D41C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790050(a1, a2, a3, *v3, &qword_1EC643210, &unk_1D1E71DD0);
  *v3 = result;
  return result;
}

char *sub_1D178D44C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D1790050(a1, a2, a3, *v3, &qword_1EC643220, &qword_1D1E71678);
  *v3 = result;
  return result;
}

char *sub_1D178D47C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D178E57C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}