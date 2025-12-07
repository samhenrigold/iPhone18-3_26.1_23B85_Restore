uint64_t sub_2523E5FCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 56);
    for (i = (a1 + 56); *(i - 3) == *(v3 - 3); i += 4)
    {
      v5 = *i;
      v6 = *v3;
      v7 = *(i - 2) == *(v3 - 2) && *(i - 1) == *(v3 - 1);
      if (!v7 && (sub_2526933B0() & 1) == 0)
      {
        break;
      }

      if (v5)
      {
        if (!v6)
        {
          return 0;
        }

        swift_retain_n();
        v8 = sub_252692280();

        if ((v8 & 1) == 0)
        {
          return 0;
        }
      }

      else if (v6)
      {
        return 0;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_2523E60F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_25268DB10();
  v85 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v77 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v81 = &v65 - v7;
  v8 = sub_25268D990();
  v84 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v65 - v12;
  v14 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v65 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB850, &unk_252696390);
  MEMORY[0x28223BE20](v82);
  v18 = &v65 - v17;
  v79 = type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction(0);
  MEMORY[0x28223BE20](v79);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v24 = &v65 - v23;
  v25 = *(a1 + 16);
  if (v25 != *(a2 + 16))
  {
    return 0;
  }

  if (!v25 || a1 == a2)
  {
    return 1;
  }

  v26 = *(a1 + 16);
  v27 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v28 = a1 + v27;
  v29 = a2 + v27;
  v67 = (v84 + 32);
  v65 = v8;
  v66 = (v85 + 32);
  v68 = (v85 + 8);
  v69 = (v84 + 8);
  v70 = v16;
  v75 = *(v22 + 72);
  v76 = v13;
  v80 = v18;
  v30 = v79;
  v31 = v26;
  v71 = v20;
  v78 = &v65 - v23;
  while (1)
  {
    v85 = v28;
    result = sub_2523EB0A8(v28, v24, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
    if (!v31)
    {
      break;
    }

    v83 = v29;
    v84 = v31;
    sub_2523EB0A8(v29, v20, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
    v33 = &v18[*(v82 + 48)];
    sub_2523EB0A8(v24, v18, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    sub_2523EB0A8(v20, v33, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB328, &unk_252696040);
    v35 = *(*(v34 - 8) + 48);
    if (v35(v18, 1, v34) == 1)
    {
      if (v35(v33, 1, v34) != 1)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v36 = v4;
      v37 = v70;
      sub_2523EB0A8(v18, v70, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
      v38 = *(v34 + 48);
      v39 = *(v34 + 64);
      if (v35(v33, 1, v34) == 1)
      {
        (*v68)(&v37[v39], v36);
        (*v69)(&v37[v38], v8);
        v20 = v71;
        v18 = v80;
LABEL_24:
        sub_252372288(v18, &qword_27F4DB850, &unk_252696390);
        goto LABEL_26;
      }

      v40 = *v37;
      v73 = *v33;
      v74 = v40;
      v72 = *v67;
      v72(v76, &v37[v38], v8);
      v41 = *v66;
      (*v66)(v81, &v37[v39], v36);
      v42 = v41;
      v43 = &v33[v38];
      v44 = v76;
      v72(v10, v43, v8);
      v45 = v77;
      v46 = v36;
      v42(v77, &v33[v39], v36);
      if (v74 != v73 || (sub_25268D970() & 1) == 0)
      {
        v62 = *v68;
        (*v68)(v45, v36);
        v63 = *v69;
        v64 = v65;
        (*v69)(v10, v65);
        v62(v81, v46);
        v63(v44, v64);
        sub_2523EB110(v80, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        v20 = v71;
LABEL_26:
        v24 = v78;
LABEL_27:
        sub_2523EB110(v20, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
        sub_2523EB110(v24, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
        return 0;
      }

      v47 = v81;
      LODWORD(v74) = MEMORY[0x25309F660](v81, v45);
      v48 = *v68;
      (*v68)(v45, v46);
      v49 = *v69;
      v8 = v65;
      (*v69)(v10, v65);
      v48(v47, v46);
      v50 = v44;
      v4 = v46;
      v49(v50, v8);
      v20 = v71;
      v30 = v79;
      v18 = v80;
      if ((v74 & 1) == 0)
      {
        sub_2523EB110(v80, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
        goto LABEL_26;
      }
    }

    sub_2523EB110(v18, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    v51 = *(v30 + 20);
    v24 = v78;
    v52 = &v78[v51];
    v53 = &v20[v51];
    v54 = *(type metadata accessor for ControlAction(0) + 24);
    v55 = *&v52[v54];
    v56 = *&v52[v54 + 8];
    v57 = &v53[v54];
    v58 = v55 == *v57 && v56 == *(v57 + 1);
    if (!v58 && (sub_2526933B0() & 1) == 0)
    {
      goto LABEL_27;
    }

    v59 = *(v30 + 24);
    v60 = *&v24[v59];
    v61 = *&v20[v59];
    sub_2523EB110(v20, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
    sub_2523EB110(v24, type metadata accessor for AccessoryControl.AutoClimateAlertViewConfig.AlertAction);
    result = v60 == v61;
    if (v60 == v61)
    {
      v31 = v84 - 1;
      v29 = v83 + v75;
      v28 = v85 + v75;
      v18 = v80;
      if (v84 != 1)
      {
        continue;
      }
    }

    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_2523E68BC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = *v3 ^ *v4;
    if (v5)
    {
      break;
    }

    ++v3;
    ++v4;
    --v2;
  }

  while (v2);
  return (v5 ^ 1) & 1;
}

uint64_t sub_2523E6930(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v36 = v2;
  v37 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[3];
    v28 = v5[2];
    v29 = v8;
    v30 = v5[4];
    v9 = v5[1];
    v27[0] = *v5;
    v27[1] = v9;
    v24 = v28;
    v25 = v8;
    v26 = v30;
    v22 = v27[0];
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[2];
    v13 = v6[4];
    v32 = v6[3];
    v33 = v13;
    v31[1] = v11;
    v31[2] = v12;
    v31[0] = v10;
    v19 = v12;
    v20 = v32;
    v21 = v13;
    v17 = v10;
    v18 = v11;
    sub_2523EAF48(v27, v16);
    sub_2523EAF48(v31, v16);
    v14 = _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV14OptionsSectionV2eeoiySbAG_AGtFZ_0(&v22, &v17);
    v34[2] = v19;
    v34[3] = v20;
    v34[4] = v21;
    v34[0] = v17;
    v34[1] = v18;
    sub_2523EAFA4(v34);
    v35[2] = v24;
    v35[3] = v25;
    v35[4] = v26;
    v35[0] = v22;
    v35[1] = v23;
    sub_2523EAFA4(v35);
    if ((v14 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 5;
    v5 += 5;
  }

  return 1;
}

BOOL sub_2523E6A74(uint64_t a1, uint64_t a2)
{
  v51 = sub_25268DA10();
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v55 = (&v44 - v10);
  MEMORY[0x28223BE20](v11);
  v54 = (&v44 - v12);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE50, &unk_252696380);
  MEMORY[0x28223BE20](v56);
  v14 = &v44 - v13;
  v57 = type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option(0);
  MEMORY[0x28223BE20](v57);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v44 - v19;
  v21 = *(a1 + 16);
  if (v21 != *(a2 + 16))
  {
    return 0;
  }

  if (!v21 || a1 == a2)
  {
    return 1;
  }

  v22 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v23 = a1 + v22;
  v24 = a2 + v22;
  v45 = (v4 + 32);
  v46 = &v44 - v19;
  v47 = v6;
  v48 = (v4 + 8);
  v52 = *(v18 + 72);
  v53 = v8;
  while (1)
  {
    sub_2523EB0A8(v23, v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
    sub_2523EB0A8(v24, v16, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
    v25 = *(v56 + 48);
    sub_2523EB0A8(v20, v14, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    sub_2523EB0A8(v16, &v14[v25], type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      break;
    }

    sub_2523EB0A8(v14, v54, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (swift_getEnumCaseMultiPayload())
    {
      goto LABEL_25;
    }

    v29 = *v54;
    v30 = *&v14[v25];
    sub_2523EB110(v14, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (v29 != v30)
    {
      goto LABEL_26;
    }

LABEL_15:
    v35 = *(v57 + 20);
    v36 = *&v20[v35];
    v37 = *&v20[v35 + 8];
    v38 = &v16[v35];
    v39 = v36 == *v38 && v37 == *(v38 + 1);
    if (!v39 && (sub_2526933B0() & 1) == 0)
    {
      goto LABEL_26;
    }

    v40 = *(v57 + 24);
    v41 = v20[v40];
    v42 = v16[v40];
    sub_2523EB110(v16, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
    sub_2523EB110(v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
    result = v41 == v42;
    if (v41 == v42)
    {
      v8 = v53;
      v24 += v52;
      v23 += v52;
      if (--v21)
      {
        continue;
      }
    }

    return result;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_2523EB0A8(v14, v55, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      goto LABEL_25;
    }

    v27 = *v55;
    v28 = *&v14[v25];
    sub_2523EB110(v14, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if (v27 != v28)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  sub_2523EB0A8(v14, v8, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v31 = v50;
    v32 = v8;
    v33 = v51;
    (*v45)(v50, &v14[v25], v51);
    v49 = _s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0();
    v34 = *v48;
    (*v48)(v31, v33);
    v34(v32, v33);
    v20 = v46;
    sub_2523EB110(v14, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option.Identifier);
    if ((v49 & 1) == 0)
    {
      goto LABEL_26;
    }

    goto LABEL_15;
  }

  (*v48)(v8, v51);
LABEL_25:
  sub_252372288(v14, &qword_27F4DAE50, &unk_252696380);
LABEL_26:
  sub_2523EB110(v16, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
  sub_2523EB110(v20, type metadata accessor for AccessoryControl.PickerButtonViewConfig.Option);
  return 0;
}

uint64_t sub_2523E7044(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold(0);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold(0);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB848, &qword_25269A9D0);
  MEMORY[0x28223BE20](v42);
  v9 = &v35 - v8;
  v10 = type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold(0);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v36 = v19;
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v40 = *(v18 + 72);
  v41 = v10;
  while (1)
  {
    sub_2523EB0A8(v24, v21, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    sub_2523EB0A8(v25, v16, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    v26 = *(v42 + 48);
    sub_2523EB0A8(v21, v9, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    sub_2523EB0A8(v16, &v9[v26], type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_2523EB0A8(v9, v13, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2523EB110(v13, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
      goto LABEL_16;
    }

    v32 = v37;
    sub_2523EAFF8(&v9[v26], v37, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    v33 = static AccessoryControl.AutoClimateState.SetpointHold.== infix(_:_:)(v13, v32);
    sub_2523EB110(v32, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    sub_2523EB110(v13, type metadata accessor for AccessoryControl.AutoClimateState.SetpointHold);
    sub_2523EB110(v9, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    if ((v33 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_5:
    sub_2523EB110(v16, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    sub_2523EB110(v21, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    v25 += v40;
    v24 += v40;
    if (!--v22)
    {
      return 1;
    }
  }

  v27 = v21;
  v28 = v16;
  v29 = v13;
  v30 = v36;
  sub_2523EB0A8(v9, v36, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v38;
    sub_2523EAFF8(&v9[v26], v38, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    v39 = _s22HomeAccessoryControlUI0bC0V16AutoClimateStateV10EnergyHoldO2eeoiySbAG_AGtFZ_0(v30, v31);
    sub_2523EB110(v31, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    sub_2523EB110(v30, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
    sub_2523EB110(v9, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
    v13 = v29;
    v16 = v28;
    v21 = v27;
    if ((v39 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  sub_2523EB110(v30, type metadata accessor for AccessoryControl.AutoClimateState.EnergyHold);
  v16 = v28;
  v21 = v27;
LABEL_16:
  sub_252372288(v9, &qword_27F4DB848, &qword_25269A9D0);
LABEL_17:
  sub_2523EB110(v16, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  sub_2523EB110(v21, type metadata accessor for AccessoryControl.AutoClimateState.AutoClimateHold);
  return 0;
}

uint64_t sub_2523E7578(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    sub_2523EB060(v32, v33, v34);
    v26 = sub_252692B70();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_2523E7770(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold(0);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold(0);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB858, &qword_2526963A0);
  MEMORY[0x28223BE20](v42);
  v9 = &v35 - v8;
  v10 = type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold(0);
  MEMORY[0x28223BE20](v10);
  MEMORY[0x28223BE20](v11);
  v13 = &v35 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v35 - v15;
  MEMORY[0x28223BE20](v17);
  v21 = &v35 - v20;
  v22 = *(a1 + 16);
  if (v22 != *(a2 + 16))
  {
    return 0;
  }

  if (!v22 || a1 == a2)
  {
    return 1;
  }

  v36 = v19;
  v23 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v24 = a1 + v23;
  v25 = a2 + v23;
  v40 = *(v18 + 72);
  v41 = v10;
  while (1)
  {
    sub_2523EB0A8(v24, v21, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    sub_2523EB0A8(v25, v16, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    v26 = *(v42 + 48);
    sub_2523EB0A8(v21, v9, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    sub_2523EB0A8(v16, &v9[v26], type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      break;
    }

    sub_2523EB0A8(v9, v13, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_2523EB110(v13, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
      goto LABEL_16;
    }

    v32 = v37;
    sub_2523EAFF8(&v9[v26], v37, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    v33 = static AccessoryControl.ThermostatState.ThermostatSetpointHold.== infix(_:_:)(v13, v32);
    sub_2523EB110(v32, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    sub_2523EB110(v13, type metadata accessor for AccessoryControl.ThermostatState.ThermostatSetpointHold);
    sub_2523EB110(v9, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    if ((v33 & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_5:
    sub_2523EB110(v16, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    sub_2523EB110(v21, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    v25 += v40;
    v24 += v40;
    if (!--v22)
    {
      return 1;
    }
  }

  v27 = v21;
  v28 = v16;
  v29 = v13;
  v30 = v36;
  sub_2523EB0A8(v9, v36, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v31 = v38;
    sub_2523EAFF8(&v9[v26], v38, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    v39 = _s22HomeAccessoryControlUI0bC0V15ThermostatStateV0E10EnergyHoldO2eeoiySbAG_AGtFZ_0(v30, v31);
    sub_2523EB110(v31, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    sub_2523EB110(v30, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
    sub_2523EB110(v9, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
    v13 = v29;
    v16 = v28;
    v21 = v27;
    if ((v39 & 1) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_5;
  }

  sub_2523EB110(v30, type metadata accessor for AccessoryControl.ThermostatState.ThermostatEnergyHold);
  v16 = v28;
  v21 = v27;
LABEL_16:
  sub_252372288(v9, &qword_27F4DB858, &qword_2526963A0);
LABEL_17:
  sub_2523EB110(v16, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  sub_2523EB110(v21, type metadata accessor for AccessoryControl.ThermostatState.ThermostatHold);
  return 0;
}

uint64_t sub_2523E7CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Device.Control(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v31 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      while (1)
      {
        sub_2523EB0A8(v13, v10, type metadata accessor for Device.Control);
        sub_2523EB0A8(v14, v6, type metadata accessor for Device.Control);
        if ((_s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (static Device.Control.Kind.== infix(_:_:)(&v10[v4[5]], &v6[v4[5]]) & 1) == 0 || (static Device.Control.Source.== infix(_:_:)(&v10[v4[6]], &v6[v4[6]]) & 1) == 0 || v10[v4[7]] != v6[v4[7]])
        {
          break;
        }

        v16 = v4[8];
        v17 = &v10[v16];
        v18 = *&v10[v16 + 8];
        v19 = &v6[v16];
        v20 = *(v19 + 1);
        if (v18)
        {
          if (!v20 || (*v17 != *v19 || v18 != v20) && (sub_2526933B0() & 1) == 0)
          {
            break;
          }
        }

        else if (v20)
        {
          break;
        }

        v21 = v4[9];
        v22 = v10[v21];
        v23 = v10[v21 + 1];
        v24 = &v6[v21];
        v25 = *v24;
        v26 = v24[1];
        if (v22 == 4)
        {
          if (v25 != 4)
          {
            break;
          }
        }

        else if (v22 != v25)
        {
          break;
        }

        if (v23 == 4)
        {
          if (v26 != 4)
          {
            break;
          }
        }

        else if (v26 == 4 || v23 != v26)
        {
          break;
        }

        v27 = v4[10];
        v28 = v10[v27];
        v29 = v6[v27];
        if (v28 == 16)
        {
          if (v29 != 16)
          {
            break;
          }
        }

        else if (v28 != v29)
        {
          break;
        }

        v30 = v10[v4[11]] ^ v6[v4[11]];
        sub_2523EB110(v6, type metadata accessor for Device.Control);
        sub_2523EB110(v10, type metadata accessor for Device.Control);
        if ((v30 & 1) == 0)
        {
          v14 += v15;
          v13 += v15;
          if (--v11)
          {
            continue;
          }
        }

        v31 = v30 ^ 1;
        return v31 & 1;
      }

      sub_2523EB110(v6, type metadata accessor for Device.Control);
      sub_2523EB110(v10, type metadata accessor for Device.Control);
      v31 = 0;
    }
  }

  else
  {
    v31 = 0;
  }

  return v31 & 1;
}

BOOL sub_2523E7FBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DisplayControl(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v34 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      return 1;
    }

    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_2523EB0A8(v13, v10, type metadata accessor for DisplayControl);
      sub_2523EB0A8(v14, v6, type metadata accessor for DisplayControl);
      if ((_s22HomeAccessoryControlUI0bC0V19AlarmAndTimerConfigV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        break;
      }

      v16 = type metadata accessor for Device.Control(0);
      if ((static Device.Control.Kind.== infix(_:_:)(&v10[v16[5]], &v6[v16[5]]) & 1) == 0 || (static Device.Control.Source.== infix(_:_:)(&v10[v16[6]], &v6[v16[6]]) & 1) == 0 || v10[v16[7]] != v6[v16[7]])
      {
        break;
      }

      v17 = v16[8];
      v18 = &v10[v17];
      v19 = *&v10[v17 + 8];
      v20 = &v6[v17];
      v21 = *(v20 + 1);
      if (v19)
      {
        if (!v21 || (*v18 != *v20 || v19 != v21) && (sub_2526933B0() & 1) == 0)
        {
          break;
        }
      }

      else if (v21)
      {
        break;
      }

      v22 = v16[9];
      v23 = v10[v22];
      v24 = v10[v22 + 1];
      v25 = &v6[v22];
      v26 = *v25;
      v27 = v25[1];
      if (v23 == 4)
      {
        if (v26 != 4)
        {
          break;
        }
      }

      else if (v23 != v26)
      {
        break;
      }

      if (v24 == 4)
      {
        if (v27 != 4)
        {
          break;
        }
      }

      else if (v27 == 4 || v24 != v27)
      {
        break;
      }

      v28 = v16[10];
      v29 = v10[v28];
      v30 = v6[v28];
      if (v29 == 16)
      {
        if (v30 != 16)
        {
          break;
        }
      }

      else if (v29 != v30)
      {
        break;
      }

      if (v10[v16[11]] != v6[v16[11]])
      {
        break;
      }

      v31 = v10[*(v4 + 20)];
      sub_2523EB110(v10, type metadata accessor for DisplayControl);
      v32 = v6[*(v4 + 20)];
      sub_2523EB110(v6, type metadata accessor for DisplayControl);
      result = v31 == v32;
      if (v31 == v32)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return result;
    }

    sub_2523EB110(v6, type metadata accessor for DisplayControl);
    sub_2523EB110(v10, type metadata accessor for DisplayControl);
  }

  return 0;
}

uint64_t sub_2523E82EC(uint64_t a1, uint64_t a2)
{
  v42 = sub_25268ED20();
  v4 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v39 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB860, &qword_25269FC50);
  MEMORY[0x28223BE20](v41);
  v7 = &v32 - v6;
  v8 = type metadata accessor for ColorControl.GridElement(0) - 8;
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v43 = &v32 - v10;
  MEMORY[0x28223BE20](v11);
  v15 = &v32 - v13;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    return 0;
  }

  if (!v16 || a1 == a2)
  {
    return 1;
  }

  v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v20 = (v4 + 48);
  v34 = (v4 + 32);
  v35 = (v4 + 48);
  v36 = (v4 + 8);
  v37 = v14;
  v21 = *(v12 + 72);
  v40 = &v32 - v13;
  v33 = v21;
  while (1)
  {
    sub_2523EB0A8(v18, v15, type metadata accessor for ColorControl.GridElement);
    v22 = v43;
    sub_2523EB0A8(v19, v43, type metadata accessor for ColorControl.GridElement);
    v23 = *(v41 + 48);
    sub_2523EB0A8(v15, v7, type metadata accessor for ColorControl.GridElement);
    sub_2523EB0A8(v22, &v7[v23], type metadata accessor for ColorControl.GridElement);
    v24 = *v20;
    v25 = v42;
    v26 = (*v20)(v7, 2, v42);
    if (!v26)
    {
      break;
    }

    if (v26 == 1)
    {
      sub_2523EB110(v43, type metadata accessor for ColorControl.GridElement);
      sub_2523EB110(v15, type metadata accessor for ColorControl.GridElement);
      if (v24(&v7[v23], 2, v42) != 1)
      {
        goto LABEL_17;
      }
    }

    else
    {
      sub_2523EB110(v43, type metadata accessor for ColorControl.GridElement);
      sub_2523EB110(v15, type metadata accessor for ColorControl.GridElement);
      if (v24(&v7[v23], 2, v42) != 2)
      {
        goto LABEL_17;
      }
    }

    sub_2523EB110(v7, type metadata accessor for ColorControl.GridElement);
LABEL_7:
    v19 += v21;
    v18 += v21;
    if (!--v16)
    {
      return 1;
    }
  }

  v27 = v37;
  sub_2523EB0A8(v7, v37, type metadata accessor for ColorControl.GridElement);
  if (!v24(&v7[v23], 2, v25))
  {
    v28 = &v7[v23];
    v29 = v39;
    (*v34)(v39, v28, v25);
    v38 = sub_25268ED10();
    v30 = *v36;
    (*v36)(v29, v25);
    sub_2523EB110(v43, type metadata accessor for ColorControl.GridElement);
    sub_2523EB110(v40, type metadata accessor for ColorControl.GridElement);
    v30(v27, v25);
    v15 = v40;
    sub_2523EB110(v7, type metadata accessor for ColorControl.GridElement);
    v20 = v35;
    v21 = v33;
    if ((v38 & 1) == 0)
    {
      return 0;
    }

    goto LABEL_7;
  }

  sub_2523EB110(v43, type metadata accessor for ColorControl.GridElement);
  sub_2523EB110(v15, type metadata accessor for ColorControl.GridElement);
  (*v36)(v27, v25);
LABEL_17:
  sub_252372288(v7, &qword_27F4DB860, &qword_25269FC50);
  return 0;
}

uint64_t sub_2523E87E0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 72)
    {
      v5 = *(a1 + i + 48);
      v6 = *(a1 + i + 56);
      v7 = *(a1 + i + 64);
      v8 = *(a1 + i + 72);
      v19 = *(a1 + i + 96);
      v9 = *(a2 + i + 48);
      v10 = *(a2 + i + 56);
      v12 = *(a2 + i + 64);
      v11 = *(a2 + i + 72);
      v14 = *(a2 + i + 80);
      v15 = *(a1 + i + 80);
      v20 = *(a2 + i + 88);
      v21 = *(a1 + i + 88);
      v18 = *(a2 + i + 96);
      if ((*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40)) && (sub_2526933B0() & 1) == 0)
      {
        break;
      }

      if ((v5 != v9 || v6 != v10) && (sub_2526933B0() & 1) == 0)
      {
        break;
      }

      if (v8)
      {
        if (!v11 || (v7 != v12 || v8 != v11) && (sub_2526933B0() & 1) == 0)
        {
          return 0;
        }
      }

      else if (v11)
      {
        return 0;
      }

      if (v21)
      {
        v4 = v20;
        if (v19 != v18)
        {
          v4 = 0;
        }

        if (v4 != 1)
        {
          return 0;
        }
      }

      else
      {
        result = 0;
        if ((v20 & 1) != 0 || v15 != v14 || v19 != v18)
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t AccessoryControl.ElementIdentifier.hash(into:)(uint64_t a1)
{
  v3 = sub_25268DA10();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v38 - v8;
  v10 = type metadata accessor for AccessoryControl.ElementIdentifier(0);
  v39 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v38 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - v17;
  sub_2523EB0A8(v1, &v38 - v17, type metadata accessor for AccessoryControl.ElementIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v4 + 32))(v9, v18, v3);
      MEMORY[0x2530A4FE0](0);
      sub_2523EB060(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_252692B30();
      return (*(v4 + 8))(v9, v3);
    }

    if (EnumCaseMultiPayload != 1)
    {
      v33 = *v18;
      MEMORY[0x2530A4FE0](2);
      return MEMORY[0x2530A5020](v33);
    }

    v20 = *v18;
    MEMORY[0x2530A4FE0](1);
    MEMORY[0x2530A4FE0](*(v20 + 16));
    v21 = *(v20 + 16);
    if (v21)
    {
      v24 = *(v4 + 16);
      v22 = v4 + 16;
      v23 = v24;
      v25 = (*(v22 + 64) + 32) & ~*(v22 + 64);
      v39 = v20;
      v26 = v20 + v25;
      v27 = *(v22 + 56);
      do
      {
        v23(v6, v26, v3);
        sub_2523EB060(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        sub_252692B30();
        (*(v22 - 8))(v6, v3);
        v26 += v27;
        --v21;
      }

      while (v21);
    }
  }

  if (EnumCaseMultiPayload == 3)
  {
    v32 = *v18;
    MEMORY[0x2530A4FE0](3);
    MEMORY[0x2530A5020](v32);
    return sub_252693490();
  }

  v28 = a1;
  if (EnumCaseMultiPayload == 4)
  {
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB408, &qword_252695718);
    v30 = swift_projectBox();
    sub_2523EB0A8(v30 + *(v29 + 48), v15, type metadata accessor for AccessoryControl.ElementIdentifier);
    MEMORY[0x2530A4FE0](4);
    sub_252692C80();

    AccessoryControl.ElementIdentifier.hash(into:)(a1);
    sub_2523EB110(v15, type metadata accessor for AccessoryControl.ElementIdentifier);
  }

  else
  {
    v34 = *(*v18 + 16);
    MEMORY[0x2530A4FE0](5);
    MEMORY[0x2530A4FE0](*(v34 + 16));
    v35 = *(v34 + 16);
    if (v35)
    {
      v36 = v34 + ((*(v39 + 80) + 32) & ~*(v39 + 80));
      v37 = *(v39 + 72);

      do
      {
        sub_2523EB0A8(v36, v12, type metadata accessor for AccessoryControl.ElementIdentifier);
        AccessoryControl.ElementIdentifier.hash(into:)(v28);
        sub_2523EB110(v12, type metadata accessor for AccessoryControl.ElementIdentifier);
        v36 += v37;
        --v35;
      }

      while (v35);
    }
  }
}

uint64_t AccessoryControl.ElementIdentifier.hashValue.getter()
{
  sub_252693460();
  AccessoryControl.ElementIdentifier.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_2523E9024()
{
  sub_252693460();
  AccessoryControl.ElementIdentifier.hash(into:)(v1);
  return sub_2526934C0();
}

uint64_t sub_2523E9068(uint64_t a1)
{
  sub_252693460();
  AccessoryControl.ElementIdentifier.hash(into:)(v2);
  return sub_2526934C0();
}

uint64_t AccessoryControl.ControlTypeIdentifier.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_2526932D0();

  v6 = 8;
  if (v4 < 8)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_2523E9114@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xED00006573756150;
  v4 = 0x7472617453637672;
  v5 = 0xED00007465736572;
  v6 = 0x50746E6572727563;
  if (v2 != 6)
  {
    v6 = 0xD000000000000012;
    v5 = 0x80000002526ADA40;
  }

  v7 = 0x80000002526ADA10;
  v8 = 0x746E696F70746573;
  if (v2 == 4)
  {
    v8 = 0xD000000000000010;
  }

  else
  {
    v7 = 0xEC000000646C6F48;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  if (v2 != 2)
  {
    v4 = 0x6D6F486F47637672;
    v3 = 0xE900000000000065;
  }

  v9 = 0x80000002526AD9C0;
  result = 5;
  v11 = 0xD000000000000015;
  if (*v1)
  {
    v9 = 0x80000002526AD9E0;
  }

  else
  {
    v11 = 0xD000000000000013;
  }

  if (*v1 <= 1u)
  {
    v4 = v11;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v12 = v4;
  }

  else
  {
    v12 = v6;
  }

  if (*v1 > 3u)
  {
    v3 = v5;
  }

  *a1 = v12;
  a1[1] = v3;
  return result;
}

uint64_t static AccessoryControl.ElementIdentifier.< infix(_:_:)(uint64_t (*a1)(char *, uint64_t, uint64_t), uint64_t a2)
{
  v187 = a1;
  v188 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7E8, &unk_252696130);
  MEMORY[0x28223BE20](v2 - 8);
  v168 = &v163 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v176 = &v163 - v5;
  MEMORY[0x28223BE20](v6);
  v180 = &v163 - v7;
  MEMORY[0x28223BE20](v8);
  v177 = &v163 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB290, &unk_25269AA10);
  MEMORY[0x28223BE20](v10 - 8);
  v173 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v172 = &v163 - v13;
  MEMORY[0x28223BE20](v14);
  v181 = &v163 - v15;
  MEMORY[0x28223BE20](v16);
  v182 = &v163 - v17;
  v18 = sub_25268DA10();
  v190 = *(v18 - 8);
  v191 = v18;
  MEMORY[0x28223BE20](v18);
  v165 = &v163 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v189 = &v163 - v21;
  MEMORY[0x28223BE20](v22);
  v174 = &v163 - v23;
  MEMORY[0x28223BE20](v24);
  v169 = &v163 - v25;
  MEMORY[0x28223BE20](v26);
  v185 = &v163 - v27;
  MEMORY[0x28223BE20](v28);
  v186 = &v163 - v29;
  MEMORY[0x28223BE20](v30);
  v171 = &v163 - v31;
  MEMORY[0x28223BE20](v32);
  v170 = &v163 - v33;
  v34 = type metadata accessor for AccessoryControl.ElementIdentifier(0);
  v175 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v184 = (&v163 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v36);
  v183 = &v163 - v37;
  MEMORY[0x28223BE20](v38);
  v166 = &v163 - v39;
  MEMORY[0x28223BE20](v40);
  v167 = (&v163 - v41);
  MEMORY[0x28223BE20](v42);
  v44 = (&v163 - v43);
  MEMORY[0x28223BE20](v45);
  v178 = &v163 - v46;
  MEMORY[0x28223BE20](v47);
  v179 = (&v163 - v48);
  MEMORY[0x28223BE20](v49);
  v51 = &v163 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v163 - v53;
  MEMORY[0x28223BE20](v55);
  v57 = (&v163 - v56);
  MEMORY[0x28223BE20](v58);
  v60 = (&v163 - v59);
  MEMORY[0x28223BE20](v61);
  v63 = &v163 - v62;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7E0, &unk_252696120);
  MEMORY[0x28223BE20](v64 - 8);
  v66 = &v163 - v65;
  v68 = &v163 + *(v67 + 56) - v65;
  sub_2523EB0A8(v187, &v163 - v65, type metadata accessor for AccessoryControl.ElementIdentifier);
  v69 = v34;
  sub_2523EB0A8(v188, v68, type metadata accessor for AccessoryControl.ElementIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_2523EB0A8(v66, v54, type metadata accessor for AccessoryControl.ElementIdentifier);
      v100 = *v54;
      v101 = *(v54 + 4);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_35;
      }

      v102 = v100 >= *v68;
      if (v100 == *v68)
      {
        v102 = v101 >= *(v68 + 4);
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload == 4)
    {
      sub_2523EB0A8(v66, v51, type metadata accessor for AccessoryControl.ElementIdentifier);
      v86 = swift_projectBox();
      v87 = *v86;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v88 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB408, &qword_252695718) + 48);
        v89 = swift_projectBox();
        v90 = *v89;
        v91 = v179;
        sub_2523EB0A8(&v86[v88], v179, type metadata accessor for AccessoryControl.ElementIdentifier);
        v92 = &v89[v88];
        v93 = v178;
        sub_2523EB0A8(v92, v178, type metadata accessor for AccessoryControl.ElementIdentifier);
        if (static AccessoryControl.ElementIdentifier.== infix(_:_:)(v91, v93))
        {
          v94 = 0xED00006573756150;
          v95 = 0x7472617453637672;
          if (v87 > 3)
          {
            if (v87 > 5)
            {
              if (v87 == 6)
              {
                v97 = 0x50746E6572727563;
                v96 = 0xED00007465736572;
              }

              else
              {
                v96 = 0x80000002526ADA40;
                v97 = 0xD000000000000012;
              }
            }

            else if (v87 == 4)
            {
              v97 = 0xD000000000000010;
              v96 = 0x80000002526ADA10;
            }

            else
            {
              v97 = 0x746E696F70746573;
              v96 = 0xEC000000646C6F48;
            }
          }

          else if (v87 > 1)
          {
            v97 = 0x7472617453637672;
            v96 = 0xED00006573756150;
            if (v87 != 2)
            {
              v97 = 0x6D6F486F47637672;
              v96 = 0xE900000000000065;
            }
          }

          else if (v87)
          {
            v96 = 0x80000002526AD9E0;
            v97 = 0xD000000000000015;
          }

          else
          {
            v96 = 0x80000002526AD9C0;
            v97 = 0xD000000000000013;
          }

          if (v90 > 3)
          {
            if (v90 > 5)
            {
              if (v90 == 6)
              {
                v95 = 0x50746E6572727563;
                v94 = 0xED00007465736572;
              }

              else
              {
                v94 = 0x80000002526ADA40;
                v95 = 0xD000000000000012;
              }
            }

            else if (v90 == 4)
            {
              v95 = 0xD000000000000010;
              v94 = 0x80000002526ADA10;
            }

            else
            {
              v95 = 0x746E696F70746573;
              v94 = 0xEC000000646C6F48;
            }
          }

          else if (v90 > 1)
          {
            if (v90 != 2)
            {
              v95 = 0x6D6F486F47637672;
              v94 = 0xE900000000000065;
            }
          }

          else if (v90)
          {
            v94 = 0x80000002526AD9E0;
            v95 = 0xD000000000000015;
          }

          else
          {
            v94 = 0x80000002526AD9C0;
            v95 = 0xD000000000000013;
          }

          if (v97 == v95 && v96 == v94)
          {
            v103 = 0;
          }

          else
          {
            v103 = sub_2526933B0();
          }
        }

        else
        {
          v103 = static AccessoryControl.ElementIdentifier.< infix(_:_:)(v91, v93);
        }

        sub_2523EB110(v93, type metadata accessor for AccessoryControl.ElementIdentifier);
        sub_2523EB110(v91, type metadata accessor for AccessoryControl.ElementIdentifier);

        goto LABEL_121;
      }
    }

    else
    {
      sub_2523EB0A8(v66, v44, type metadata accessor for AccessoryControl.ElementIdentifier);
      v104 = *v44;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v105 = *(v104 + 16);
        v191 = *v68;
        v106 = *(v191 + 16);

        v107 = v177;
        sub_2523EA8F4(v105, v177);
        v108 = v180;
        sub_2523EA8F4(v106, v180);

        v109 = v176;
        sub_25237153C(v107, v176, &qword_27F4DB7E8, &unk_252696130);
        v110 = *(v175 + 48);
        if (v110(v109, 1, v69) != 1)
        {
          v111 = v167;
          sub_2523EAFF8(v109, v167, type metadata accessor for AccessoryControl.ElementIdentifier);
          v109 = v168;
          sub_25237153C(v108, v168, &qword_27F4DB7E8, &unk_252696130);
          if (v110(v109, 1, v69) != 1)
          {
            v153 = v166;
            sub_2523EAFF8(v109, v166, type metadata accessor for AccessoryControl.ElementIdentifier);
            v103 = static AccessoryControl.ElementIdentifier.< infix(_:_:)(v111, v153);
            sub_2523EB110(v153, type metadata accessor for AccessoryControl.ElementIdentifier);
            sub_2523EB110(v111, type metadata accessor for AccessoryControl.ElementIdentifier);
            sub_252372288(v107, &qword_27F4DB7E8, &unk_252696130);
            sub_252372288(v108, &qword_27F4DB7E8, &unk_252696130);

LABEL_121:

            v162 = v66;
            goto LABEL_122;
          }

          sub_2523EB110(v111, type metadata accessor for AccessoryControl.ElementIdentifier);
        }

        sub_252372288(v107, &qword_27F4DB7E8, &unk_252696130);
        sub_252372288(v109, &qword_27F4DB7E8, &unk_252696130);
        v103 = v110(v108, 1, v69) == 1;
        sub_252372288(v108, &qword_27F4DB7E8, &unk_252696130);

LABEL_97:
        v162 = v66;
LABEL_122:
        sub_2523EB110(v162, type metadata accessor for AccessoryControl.ElementIdentifier);
        return v103 & 1;
      }
    }

    goto LABEL_35;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_2523EB0A8(v66, v63, type metadata accessor for AccessoryControl.ElementIdentifier);
    v98 = swift_getEnumCaseMultiPayload();
    v99 = v190;
    if (!v98)
    {
      v117 = *(v190 + 32);
      v118 = v170;
      v119 = v191;
      v117(v170, v63, v191);
      v120 = v171;
      v117(v171, v68, v119);
      v121 = sub_25268D9A0();
      v123 = v122;
      if (v121 == sub_25268D9A0() && v123 == v124)
      {
        v103 = 0;
      }

      else
      {
        v103 = sub_2526933B0();
      }

      v125 = *(v99 + 8);
      v126 = v191;
      v125(v120, v191);
      v125(v118, v126);
      goto LABEL_97;
    }

    (*(v190 + 8))(v63, v191);
LABEL_35:
    sub_252372288(v66, &qword_27F4DB7E0, &unk_252696120);
    v112 = v183;
    sub_2523EB0A8(v187, v183, type metadata accessor for AccessoryControl.ElementIdentifier);
    v113 = swift_getEnumCaseMultiPayload();
    v114 = v113;
    if (v113 > 2)
    {
      v115 = v184;
      if (v113 == 3)
      {
LABEL_42:
        sub_2523EB0A8(v188, v115, type metadata accessor for AccessoryControl.ElementIdentifier);
        v116 = swift_getEnumCaseMultiPayload();
        if (v116 > 2)
        {
          if (v116 != 3)
          {
            if (v116 == 4)
            {
              sub_2523EB110(v115, type metadata accessor for AccessoryControl.ElementIdentifier);
              v116 = 4;
            }

            else
            {
              sub_2523EB110(v115, type metadata accessor for AccessoryControl.ElementIdentifier);
              v116 = 5;
            }
          }
        }

        else if (v116)
        {
          if (v116 == 1)
          {
            sub_2523EB110(v115, type metadata accessor for AccessoryControl.ElementIdentifier);
            v116 = 1;
          }
        }

        else
        {
          sub_2523EB110(v115, type metadata accessor for AccessoryControl.ElementIdentifier);
          v116 = 0;
        }

        v103 = v114 < v116;
        return v103 & 1;
      }

      if (v113 != 4)
      {
        sub_2523EB110(v112, type metadata accessor for AccessoryControl.ElementIdentifier);
        v114 = 5;
        goto LABEL_42;
      }
    }

    else
    {
      v115 = v184;
      if (v113 >= 2)
      {
        goto LABEL_42;
      }
    }

    sub_2523EB110(v112, type metadata accessor for AccessoryControl.ElementIdentifier);
    goto LABEL_42;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_2523EB0A8(v66, v57, type metadata accessor for AccessoryControl.ElementIdentifier);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_35;
    }

    v102 = *v57 >= *v68;
LABEL_25:
    v103 = !v102;
    goto LABEL_97;
  }

  sub_2523EB0A8(v66, v60, type metadata accessor for AccessoryControl.ElementIdentifier);
  v71 = *v60;
  v72 = swift_getEnumCaseMultiPayload();
  v73 = v191;
  if (v72 != 1)
  {

    goto LABEL_35;
  }

  v74 = *v68;
  v75 = *(v71 + 16);
  v188 = *v68;
  v164 = v66;
  if (!v75)
  {

    v79 = v190;
    v81 = *(v190 + 56);
    v80 = v182;
    (v81)(v182, 1, 1, v73);
    v82 = *(v74 + 16);
    if (v82)
    {
      goto LABEL_8;
    }

    goto LABEL_59;
  }

  v76 = v71 + ((*(v190 + 80) + 32) & ~*(v190 + 80));
  v187 = *(v190 + 16);
  result = v187(v186, v76, v191);
  v78 = v169;
  if (v75 == 1)
  {
LABEL_7:

    v79 = v190;
    v80 = v182;
    (*(v190 + 32))(v182, v186, v73);
    v81 = *(v79 + 56);
    (v81)(v80, 0, 1, v73);
    v66 = v164;
    v74 = v188;
    v82 = *(v188 + 16);
    if (v82)
    {
LABEL_8:
      v187 = v81;
      v83 = *(v79 + 16);
      v84 = v74 + ((*(v79 + 80) + 32) & ~*(v79 + 80));
      result = v83(v185, v84, v73);
      if (v82 == 1)
      {
LABEL_9:

        v79 = v190;
        v85 = v181;
        (*(v190 + 32))(v181, v185, v73);
        v66 = v164;
        v80 = v182;
        (v187)(v85, 0, 1, v73);
        goto LABEL_60;
      }

      v143 = (v190 + 8);
      v144 = (v190 + 32);
      v145 = 1;
      while (1)
      {
        if (v145 >= *(v74 + 16))
        {
          goto LABEL_125;
        }

        v83(v189, v84 + *(v190 + 72) * v145, v73);
        v147 = sub_25268D9A0();
        v149 = v148;
        if (v147 == sub_25268D9A0() && v149 == v150)
        {

          v146 = *v143;
        }

        else
        {
          v151 = sub_2526933B0();

          v146 = *v143;
          if (v151)
          {
            v152 = v185;
            v73 = v191;
            v146(v185, v191);
            result = (*v144)(v152, v189, v73);
            goto LABEL_77;
          }
        }

        v73 = v191;
        result = (v146)(v189, v191);
LABEL_77:
        v74 = v188;
        if (v82 == ++v145)
        {
          goto LABEL_9;
        }
      }
    }

LABEL_59:

    v85 = v181;
    (v81)(v181, 1, 1, v73);
LABEL_60:
    v127 = v172;
    sub_25237153C(v80, v172, &qword_27F4DB290, &unk_25269AA10);
    v128 = *(v79 + 48);
    v129 = v128(v127, 1, v73);
    v130 = v173;
    if (v129 == 1)
    {
      v130 = v127;
    }

    else
    {
      v131 = v73;
      v132 = *(v79 + 32);
      v132(v174, v127, v131);
      sub_25237153C(v85, v130, &qword_27F4DB290, &unk_25269AA10);
      if (v128(v130, 1, v131) != 1)
      {
        v154 = v165;
        v132(v165, v130, v131);
        v155 = v174;
        v156 = sub_25268D9A0();
        v158 = v157;
        if (v156 == sub_25268D9A0() && v158 == v159)
        {
          v103 = 0;
        }

        else
        {
          v103 = sub_2526933B0();
        }

        v160 = *(v79 + 8);
        v161 = v191;
        v160(v154, v191);
        v160(v155, v161);
        sub_252372288(v80, &qword_27F4DB290, &unk_25269AA10);
        v133 = v181;
        goto LABEL_96;
      }

      (*(v79 + 8))(v174, v131);
      v85 = v181;
    }

    sub_252372288(v80, &qword_27F4DB290, &unk_25269AA10);
    sub_252372288(v130, &qword_27F4DB290, &unk_25269AA10);
    v103 = v128(v85, 1, v191) == 1;
    v133 = v85;
LABEL_96:
    sub_252372288(v133, &qword_27F4DB290, &unk_25269AA10);
    goto LABEL_97;
  }

  v134 = (v190 + 8);
  v184 = (v190 + 32);
  v135 = 1;
  while (v135 < *(v71 + 16))
  {
    v187(v78, v76 + *(v190 + 72) * v135, v73);
    v137 = sub_25268D9A0();
    v139 = v138;
    if (v137 == sub_25268D9A0() && v139 == v140)
    {

      v136 = *v134;
    }

    else
    {
      v141 = sub_2526933B0();

      v136 = *v134;
      if (v141)
      {
        v142 = v186;
        v73 = v191;
        v136(v186, v191);
        result = (*v184)(v142, v78, v73);
        goto LABEL_68;
      }
    }

    v73 = v191;
    result = (v136)(v78, v191);
LABEL_68:
    if (v75 == ++v135)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_125:
  __break(1u);
  return result;
}

uint64_t sub_2523EA8F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for AccessoryControl.ElementIdentifier(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - v9;
  v12 = *(a1 + 16);
  if (v12)
  {
    v19 = v8;
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    result = sub_2523EB0A8(v13, &v18 - v9, type metadata accessor for AccessoryControl.ElementIdentifier);
    if (v12 == 1)
    {
LABEL_3:
      sub_2523EAFF8(v11, a2, type metadata accessor for AccessoryControl.ElementIdentifier);
      return (*(v19 + 56))(a2, 0, 1, v4);
    }

    else
    {
      v16 = 1;
      while (1)
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_2523EB0A8(v13 + *(v19 + 72) * v16, v6, type metadata accessor for AccessoryControl.ElementIdentifier);
        if (static AccessoryControl.ElementIdentifier.< infix(_:_:)(v6, v11))
        {
          sub_2523EB110(v11, type metadata accessor for AccessoryControl.ElementIdentifier);
          result = sub_2523EAFF8(v6, v11, type metadata accessor for AccessoryControl.ElementIdentifier);
        }

        else
        {
          result = sub_2523EB110(v6, type metadata accessor for AccessoryControl.ElementIdentifier);
        }

        ++v16;
        if (v17 == v12)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v15 = *(v8 + 56);

    return v15(a2, 1, 1, v4, v10);
  }

  return result;
}

unint64_t sub_2523EAB58()
{
  result = qword_27F4DB7F8;
  if (!qword_27F4DB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB7F8);
  }

  return result;
}

void sub_2523EAC0C(uint64_t a1)
{
  sub_25268DA10();
  if (v1 <= 0x3F)
  {
    sub_2523EACB8(319);
    if (v2 <= 0x3F)
    {
      sub_2523EAD10();
      if (v3 <= 0x3F)
      {
        sub_2523EAD40();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_2523EACB8(uint64_t a1)
{
  if (!qword_27F4DB810)
  {
    sub_25268DA10();
    v1 = sub_252692DD0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4DB810);
    }
  }
}

uint64_t sub_2523EAD10()
{
  result = qword_27F4DB818;
  if (!qword_27F4DB818)
  {
    result = MEMORY[0x277D84D38];
    atomic_store(MEMORY[0x277D84D38], &qword_27F4DB818);
  }

  return result;
}

void sub_2523EAD40()
{
  if (!qword_27F4DB820)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F4DB820);
    }
  }
}

uint64_t _s21ControlTypeIdentifierOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s21ControlTypeIdentifierOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2523EAEF4()
{
  result = qword_27F4DB838;
  if (!qword_27F4DB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F4DB838);
  }

  return result;
}

uint64_t sub_2523EAFF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523EB060(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2523EB0A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523EB110(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523EB174@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v121 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120, &qword_2526956F0);
  MEMORY[0x28223BE20](v5 - 8);
  v103 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v109 = &v100 - v8;
  MEMORY[0x28223BE20](v9);
  v106 = &v100 - v10;
  v110 = type metadata accessor for AccessoryControl(0);
  v119 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v111 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v101 = &v100 - v13;
  MEMORY[0x28223BE20](v14);
  v108 = &v100 - v15;
  MEMORY[0x28223BE20](v16);
  v107 = (&v100 - v17);
  MEMORY[0x28223BE20](v18);
  v114 = (&v100 - v19);
  MEMORY[0x28223BE20](v20);
  v115 = (&v100 - v21);
  MEMORY[0x28223BE20](v22);
  v116 = (&v100 - v23);
  MEMORY[0x28223BE20](v24);
  v102 = &v100 - v25;
  MEMORY[0x28223BE20](v26);
  v105 = (&v100 - v27);
  MEMORY[0x28223BE20](v28);
  v104 = (&v100 - v29);
  v120 = type metadata accessor for AccessoryControlGroup.Layout(0);
  MEMORY[0x28223BE20](v120);
  v113 = &v100 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v112 = &v100 - v32;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB868, &qword_252696790);
  MEMORY[0x28223BE20](v33);
  v35 = &v100 - v34;
  v36 = type metadata accessor for AccessoryControl.ElementIdentifier(0);
  MEMORY[0x28223BE20](v36 - 8);
  v122 = (&v100 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  v38 = type metadata accessor for AccessoryControlGroup(0);
  v39 = *(v38 + 20);
  v40 = sub_252401ECC();
  v41 = *(v38 + 20);
  v42 = sub_252401ECC();
  v43 = sub_2523EBE7C(v40, v42);

  if (v43[2])
  {
    v44 = v38;
    v45 = v121;
    v118 = v44;
    v46 = *(v44 + 24);
    v48 = *(a1 + v46);
    v47 = *(a1 + v46 + 8);
    v49 = HIBYTE(v47) & 0xF;
    if ((v47 & 0x2000000000000000) == 0)
    {
      v49 = v48 & 0xFFFFFFFFFFFFLL;
    }

    if (!v49)
    {
      v50 = (a2 + v46);
      v48 = *v50;
      v47 = v50[1];
    }

    v117 = v47;

    sub_2523EC2B8(a1, a2, v122);
    v51 = *(v33 + 48);
    v52 = v35;
    v53 = &v35[v51];
    sub_2523F3CE0(a1 + v39, v52, type metadata accessor for AccessoryControlGroup.Layout);
    sub_2523F3CE0(a2 + v41, v53, type metadata accessor for AccessoryControlGroup.Layout);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2 && swift_getEnumCaseMultiPayload() == 2)
      {
        v61 = v43[2];
        if (v61 >= 2)
        {
          goto LABEL_20;
        }

        if (!v61)
        {
LABEL_28:
          sub_2523F3D48(v122, type metadata accessor for AccessoryControl.ElementIdentifier);

          (*(*(v118 - 8) + 56))(v45, 1, 1);
          return sub_252372288(v52, &qword_27F4DB868, &qword_252696790);
        }

LABEL_18:
        if (v61 == 1)
        {
          v62 = v111;
          sub_2523F3CE0(v43 + ((*(v119 + 80) + 32) & ~*(v119 + 80)), v111, type metadata accessor for AccessoryControl);

          sub_2523F3DA8(v122, v45, type metadata accessor for AccessoryControl.ElementIdentifier);
          v63 = v118;
          sub_2523F3DA8(v62, v45 + *(v118 + 20), type metadata accessor for AccessoryControl);
          swift_storeEnumTagMultiPayload();
          v64 = (v45 + *(v63 + 28));
          v65 = (v45 + *(v63 + 24));
          v66 = v117;
          *v65 = v48;
          v65[1] = v66;
          *v64 = 0;
          v64[1] = 0;
          (*(*(v63 - 8) + 56))(v45, 0, 1, v63);
LABEL_21:
          sub_2523F3D48(v53, type metadata accessor for AccessoryControlGroup.Layout);
          v71 = v52;
          return sub_2523F3D48(v71, type metadata accessor for AccessoryControlGroup.Layout);
        }

LABEL_20:
        sub_2523F3DA8(v122, v45, type metadata accessor for AccessoryControl.ElementIdentifier);
        v67 = v118;
        *(v45 + *(v118 + 20)) = v43;
        swift_storeEnumTagMultiPayload();
        v68 = (v45 + *(v67 + 28));
        v69 = (v45 + *(v67 + 24));
        v70 = v117;
        *v69 = v48;
        v69[1] = v70;
        *v68 = 0;
        v68[1] = 0;
        (*(*(v67 - 8) + 56))(v45, 0, 1, v67);
        goto LABEL_21;
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        v55 = v113;
        sub_2523F3CE0(v52, v113, type metadata accessor for AccessoryControlGroup.Layout);
        v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADD0, &qword_252694EC8);
        v73 = *(v72 + 48);
        if (swift_getEnumCaseMultiPayload() == 1)
        {

          v74 = *(v72 + 48);
          v111 = v72;
          v112 = v74;
          v75 = v55;
          v76 = v55;
          v77 = v53;
          v78 = v116;
          sub_2523F3DA8(v75, v116, type metadata accessor for AccessoryControl);
          v79 = v53;
          v80 = v115;
          sub_2523F3DA8(v79, v115, type metadata accessor for AccessoryControl);
          sub_2523F3DA8(v76 + v73, v114, type metadata accessor for AccessoryControl);
          v81 = v107;
          sub_2523F3DA8(v77 + v112, v107, type metadata accessor for AccessoryControl);
          v82 = v109;
          sub_2523EC560(v78, v80, v109);
          v84 = v119 + 48;
          v83 = *(v119 + 48);
          v85 = v110;
          if (v83(v82, 1, v110) == 1)
          {

            sub_2523F3D48(v81, type metadata accessor for AccessoryControl);
            sub_2523F3D48(v114, type metadata accessor for AccessoryControl);
            sub_2523F3D48(v115, type metadata accessor for AccessoryControl);
            v86 = v116;
          }

          else
          {
            sub_2523F3DA8(v82, v108, type metadata accessor for AccessoryControl);
            v82 = v103;
            v87 = v114;
            sub_2523EC560(v114, v81, v103);
            v119 = v84;
            sub_2523F3D48(v81, type metadata accessor for AccessoryControl);
            sub_2523F3D48(v87, type metadata accessor for AccessoryControl);
            sub_2523F3D48(v115, type metadata accessor for AccessoryControl);
            sub_2523F3D48(v116, type metadata accessor for AccessoryControl);
            if (v83(v82, 1, v85) != 1)
            {
              v93 = v101;
              sub_2523F3DA8(v82, v101, type metadata accessor for AccessoryControl);
              sub_2523F3DA8(v122, v45, type metadata accessor for AccessoryControl.ElementIdentifier);
              v94 = v118;
              v95 = v45 + *(v118 + 20);
              v96 = *(v111 + 48);
              sub_2523F3DA8(v108, v95, type metadata accessor for AccessoryControl);
              sub_2523F3DA8(v93, v95 + v96, type metadata accessor for AccessoryControl);
              swift_storeEnumTagMultiPayload();
              v97 = (v45 + *(v94 + 28));
              v98 = (v45 + *(v94 + 24));
              v99 = v117;
              *v98 = v48;
              v98[1] = v99;
              *v97 = 0;
              v97[1] = 0;
              (*(*(v94 - 8) + 56))(v45, 0, 1);
              goto LABEL_35;
            }

            v86 = v108;
          }

          sub_2523F3D48(v86, type metadata accessor for AccessoryControl);
          sub_2523F3D48(v122, type metadata accessor for AccessoryControl.ElementIdentifier);
          v59 = v82;
          goto LABEL_32;
        }

        sub_2523F3D48(v55 + v73, type metadata accessor for AccessoryControl);
      }

      else
      {
        v55 = v112;
        sub_2523F3CE0(v52, v112, type metadata accessor for AccessoryControlGroup.Layout);
        if (!swift_getEnumCaseMultiPayload())
        {

          v56 = v104;
          sub_2523F3DA8(v55, v104, type metadata accessor for AccessoryControl);
          v57 = v105;
          sub_2523F3DA8(v53, v105, type metadata accessor for AccessoryControl);
          v58 = v106;
          sub_2523EC560(v56, v57, v106);
          sub_2523F3D48(v57, type metadata accessor for AccessoryControl);
          sub_2523F3D48(v56, type metadata accessor for AccessoryControl);
          if ((*(v119 + 48))(v58, 1, v110) != 1)
          {
            v88 = v102;
            sub_2523F3DA8(v58, v102, type metadata accessor for AccessoryControl);
            sub_2523F3DA8(v122, v45, type metadata accessor for AccessoryControl.ElementIdentifier);
            v89 = v118;
            sub_2523F3DA8(v88, v45 + *(v118 + 20), type metadata accessor for AccessoryControl);
            swift_storeEnumTagMultiPayload();
            v90 = (v45 + *(v89 + 28));
            v91 = (v45 + *(v89 + 24));
            v92 = v117;
            *v91 = v48;
            v91[1] = v92;
            *v90 = 0;
            v90[1] = 0;
            (*(*(v89 - 8) + 56))(v45, 0, 1);
            goto LABEL_35;
          }

          sub_2523F3D48(v122, type metadata accessor for AccessoryControl.ElementIdentifier);

          v59 = v58;
LABEL_32:
          sub_252372288(v59, &qword_27F4DB120, &qword_2526956F0);
          (*(*(v118 - 8) + 56))(v45, 1, 1);
LABEL_35:
          v71 = v52;
          return sub_2523F3D48(v71, type metadata accessor for AccessoryControlGroup.Layout);
        }
      }

      sub_2523F3D48(v55, type metadata accessor for AccessoryControl);
    }

    v61 = v43[2];
    if (!v61)
    {
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  (*(*(v38 - 8) + 56))(v121, 1, 1, v38);
}

void *sub_2523EBE7C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB120, &qword_2526956F0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v33 - v5;
  v41 = type metadata accessor for AccessoryControl(0);
  MEMORY[0x28223BE20](v41);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v36 = &v33 - v9;
  MEMORY[0x28223BE20](v10);
  v35 = &v33 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (&v33 - v13);
  MEMORY[0x28223BE20](v15);
  v18 = (&v33 - v17);
  v42 = a2;
  v40 = *(a1 + 16);
  if (v40)
  {
    v37 = (*(v16 + 80) + 32) & ~*(v16 + 80);
    v39 = a1 + v37;
    v19 = *(v16 + 72);
    v20 = (v16 + 48);

    v21 = 0;
    v38 = MEMORY[0x277D84F90];
    do
    {
      result = sub_2523F3CE0(v39 + v19 * v21, v18, type metadata accessor for AccessoryControl);
      v24 = v42;
      v25 = *(v42 + 16);
      if (v25)
      {
        v26 = 0;
        v27 = v42 + v37;
        while (1)
        {
          if (v26 >= *(v24 + 16))
          {
            __break(1u);
            return result;
          }

          sub_2523F3CE0(v27, v14, type metadata accessor for AccessoryControl);
          sub_2523EC560(v18, v14, v6);
          if ((*v20)(v6, 1, v41) != 1)
          {
            break;
          }

          ++v26;
          sub_2523F3D48(v14, type metadata accessor for AccessoryControl);
          result = sub_252372288(v6, &qword_27F4DB120, &qword_2526956F0);
          v27 += v19;
          if (v25 == v26)
          {
            goto LABEL_4;
          }
        }

        v28 = v35;
        sub_2523F3DA8(v6, v35, type metadata accessor for AccessoryControl);
        sub_2523F3CE0(v28, v36, type metadata accessor for AccessoryControl);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v29 = v38;
        }

        else
        {
          v29 = sub_252368DC4(0, v38[2] + 1, 1, v38);
        }

        v31 = v29[2];
        v30 = v29[3];
        if (v31 >= v30 >> 1)
        {
          v29 = sub_252368DC4((v30 > 1), v31 + 1, 1, v29);
        }

        v29[2] = v31 + 1;
        v38 = v29;
        sub_2523F3DA8(v36, v29 + v37 + v31 * v19, type metadata accessor for AccessoryControl);
        v22 = v34;
        sub_252613BFC(v26, v34);
        sub_2523F3D48(v22, type metadata accessor for AccessoryControl);
        sub_2523F3D48(v35, type metadata accessor for AccessoryControl);
        sub_2523F3D48(v14, type metadata accessor for AccessoryControl);
      }

LABEL_4:
      ++v21;
      sub_2523F3D48(v18, type metadata accessor for AccessoryControl);
    }

    while (v21 != v40);
    v32 = v38;
  }

  else
  {

    v32 = MEMORY[0x277D84F90];
  }

  return v32;
}

uint64_t sub_2523EC2B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v19 = a2;
  v20 = a3;
  v4 = type metadata accessor for AccessoryControl.ElementIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB050, &qword_252695048);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v18 = xmmword_252694E90;
  *(v12 + 16) = xmmword_252694E90;
  sub_2523F3CE0(a1, v12 + v11, type metadata accessor for AccessoryControl.ElementIdentifier);
  v13 = v19;
  v14 = swift_allocObject();
  *(v14 + 16) = v18;
  sub_2523F3CE0(v13, v14 + v11, type metadata accessor for AccessoryControl.ElementIdentifier);
  sub_2523F3CE0(a1, v10, type metadata accessor for AccessoryControl.ElementIdentifier);
  if (swift_getEnumCaseMultiPayload() == 5)
  {

    v12 = *(*v10 + 16);
  }

  else
  {
    sub_2523F3D48(v10, type metadata accessor for AccessoryControl.ElementIdentifier);
  }

  sub_2523F3CE0(v13, v7, type metadata accessor for AccessoryControl.ElementIdentifier);
  if (swift_getEnumCaseMultiPayload() == 5)
  {

    v14 = *(*v7 + 16);
  }

  else
  {
    sub_2523F3D48(v7, type metadata accessor for AccessoryControl.ElementIdentifier);
  }

  v15 = swift_allocObject();
  v21 = v12;
  sub_2523C5DA8(v14);
  v16 = v20;
  *(v15 + 16) = v21;
  *v16 = v15;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_2523EC560@<X0>(uint64_t (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t (*a2)(char *, uint64_t, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for AccessoryControl(0);
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AccessoryControl.ElementIdentifier(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB870, &qword_2526963B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = type metadata accessor for AccessoryControl.State(0);
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2523ECD04(a1 + v5[5], a2 + v5[5], 1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_252372288(v14, &qword_27F4DB870, &qword_2526963B0);
    return (*(v6 + 56))(v52, 1, 1, v5);
  }

  v51 = v6;
  sub_2523F3DA8(v14, v18, type metadata accessor for AccessoryControl.State);
  if (static AccessoryControl.ElementIdentifier.< infix(_:_:)(a1, a2))
  {
    v20 = a1;
  }

  else
  {
    v20 = a2;
  }

  sub_2523F3CE0(v20, v11, type metadata accessor for AccessoryControl.ElementIdentifier);
  sub_2523F3CE0(v11, v8, type metadata accessor for AccessoryControl.ElementIdentifier);
  sub_2523F3CE0(v18, &v8[v5[5]], type metadata accessor for AccessoryControl.State);
  v21 = v5[9];
  v8[v21] = 16;
  v49 = v5[6];
  v50 = v21;
  v8[v49] = 0;
  v48 = &v8[v5[8]];
  *v48 = 1028;
  v8[v21] = 16;
  v22 = v5[7];
  v23 = *(a1 + v22 + 8);
  if (v23)
  {
    v24 = *(a1 + v22);
    v25 = *(a2 + v22 + 8);
    if (v25)
    {
      v26 = *(a2 + v22);
      v53 = v24;
      v54 = v23;

      MEMORY[0x2530A4800](43, 0xE100000000000000);
      MEMORY[0x2530A4800](v26, v25);
      v24 = v53;
      v23 = v54;
      v22 = v5[7];
      goto LABEL_11;
    }
  }

  else
  {
    v24 = *(a2 + v22);
    v23 = *(a2 + v22 + 8);
  }

LABEL_11:
  v27 = &v8[v22];
  sub_2523F3D48(v11, type metadata accessor for AccessoryControl.ElementIdentifier);
  sub_2523F3D48(v18, type metadata accessor for AccessoryControl.State);
  *v27 = v24;
  *(v27 + 1) = v23;
  v28 = v5[8];
  v29 = *(a1 + v28);
  v30 = *(a1 + v28 + 1);
  v31 = a2 + v28;
  v32 = *v31;
  v33 = v31[1];
  if (v29 <= v32)
  {
    v34 = v32;
  }

  else
  {
    v34 = v29;
  }

  if (v32 == 4)
  {
    v34 = v29;
  }

  if (v29 == 4)
  {
    v35 = v32;
  }

  else
  {
    v35 = v34;
  }

  if (v30 >= v33)
  {
    v36 = v33;
  }

  else
  {
    v36 = v30;
  }

  if (v33 == 4)
  {
    v36 = v30;
  }

  if (v30 != 4)
  {
    LOBYTE(v33) = v36;
  }

  v37 = v48;
  *v48 = v35;
  v37[1] = v33;
  v38 = v5[6];
  if (*(a1 + v38) == 1)
  {
    v39 = *(a2 + v38);
  }

  else
  {
    v39 = 0;
  }

  v41 = v51;
  v40 = v52;
  v8[v49] = v39;
  v42 = v5[9];
  v43 = *(a1 + v42);
  v44 = *(a2 + v42);
  if (v43 != 16)
  {
    if (v43 == v44)
    {
      goto LABEL_32;
    }

    goto LABEL_31;
  }

  if (v44 != 16)
  {
LABEL_31:
    LOBYTE(v43) = 16;
  }

LABEL_32:
  v8[v50] = v43;
  v45 = v5[10];
  if (*(a1 + v45))
  {
    v46 = 1;
  }

  else
  {
    v46 = *(a2 + v45);
  }

  v8[v45] = v46;
  sub_2523F3CE0(v8, v40, type metadata accessor for AccessoryControl);
  (*(v41 + 56))(v40, 0, 1, v5);
  return sub_2523F3D48(v8, type metadata accessor for AccessoryControl);
}

uint64_t sub_2523ECA38(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB8, &qword_2526A6E60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v7 - v3;
  sub_2523ECB14((&v7 - v3));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  return sub_2523CA540(v4);
}

uint64_t sub_2523ECB14@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_25268E2E0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v17 - v7;
  sub_25268E250();
  v18 = sub_25268E2D0();
  v10 = v9;
  v11 = *(v3 + 8);
  v11(v8, v2);
  sub_25268E250();
  v12 = type metadata accessor for IconDescriptor(0);
  sub_25268E2C0();
  v11(v5, v2);
  *a1 = v18;
  a1[1] = v10;
  *(a1 + *(v12 + 24)) = 0;
  sub_25268E260();
  v18 = sub_25268E2D0();
  v14 = v13;
  v11(v8, v2);
  sub_25268E260();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD88, &unk_2526956E0) + 28));
  sub_25268E2C0();
  result = (v11)(v5, v2);
  *v15 = v18;
  v15[1] = v14;
  *(v15 + *(v12 + 24)) = 0;
  return result;
}

uint64_t sub_2523ECD04@<X0>(uint64_t a1@<X0>, char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v550) = a3;
  v555 = a2;
  v554 = a1;
  v557 = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB878, &qword_2526963B8);
  MEMORY[0x28223BE20](v4 - 8);
  v500 = &v470 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8, &unk_252695980);
  v498 = *(v6 - 8);
  v499 = v6;
  MEMORY[0x28223BE20](v6);
  v486 = &v470 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v528 = (&v470 - v9);
  MEMORY[0x28223BE20](v10);
  v529 = (&v470 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB880, &qword_2526963C0);
  MEMORY[0x28223BE20](v12 - 8);
  v497 = &v470 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450, &unk_252695990);
  v495 = *(v14 - 8);
  v496 = v14;
  MEMORY[0x28223BE20](v14);
  v483 = &v470 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v526 = (&v470 - v17);
  MEMORY[0x28223BE20](v18);
  v539 = (&v470 - v19);
  v518 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498, &unk_2526A6330);
  MEMORY[0x28223BE20](v518);
  v484 = &v470 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v485 = &v470 - v22;
  MEMORY[0x28223BE20](v23);
  v527 = &v470 - v24;
  MEMORY[0x28223BE20](v25);
  v530 = (&v470 - v26);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB888, &qword_2526963C8);
  MEMORY[0x28223BE20](v27 - 8);
  v494 = &v470 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278, &unk_2526959A0);
  v492 = *(v29 - 8);
  v493 = v29;
  MEMORY[0x28223BE20](v29);
  v482 = &v470 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v524 = (&v470 - v32);
  MEMORY[0x28223BE20](v33);
  v525 = (&v470 - v34);
  v505 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298, &unk_2526A6320);
  MEMORY[0x28223BE20](v505);
  v487 = &v470 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v488 = &v470 - v37;
  MEMORY[0x28223BE20](v38);
  v523 = &v470 - v39;
  MEMORY[0x28223BE20](v40);
  v549 = &v470 - v41;
  v491 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68, &qword_2526A4D70);
  MEMORY[0x28223BE20](v491);
  v480 = &v470 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v43);
  v481 = &v470 - v44;
  MEMORY[0x28223BE20](v45);
  v522 = &v470 - v46;
  MEMORY[0x28223BE20](v47);
  v548 = &v470 - v48;
  v49 = type metadata accessor for AccessoryControl.PickerViewConfig(0);
  MEMORY[0x28223BE20](v49 - 8);
  v536 = &v470 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v552 = &v470 - v52;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB890, &qword_2526963D0);
  MEMORY[0x28223BE20](v53 - 8);
  v515 = &v470 - v54;
  v489 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78, &unk_252695190);
  MEMORY[0x28223BE20](v489);
  v479 = &v470 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v56);
  v490 = &v470 - v57;
  MEMORY[0x28223BE20](v58);
  v516 = &v470 - v59;
  MEMORY[0x28223BE20](v60);
  v551 = &v470 - v61;
  v62 = type metadata accessor for AccessoryControl.IncrementalConfig(0);
  v513 = *(v62 - 8);
  v514 = v62;
  MEMORY[0x28223BE20](v62);
  v501 = &v470 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v519 = (&v470 - v65);
  MEMORY[0x28223BE20](v66);
  v531 = &v470 - v67;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB898, &qword_2526963D8);
  MEMORY[0x28223BE20](v68 - 8);
  v512 = &v470 - v69;
  v558 = type metadata accessor for AccessoryControl.State(0);
  v556 = *(v558 - 8);
  MEMORY[0x28223BE20](v558);
  v543 = &v470 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v71);
  v541 = (&v470 - v72);
  MEMORY[0x28223BE20](v73);
  v540 = &v470 - v74;
  MEMORY[0x28223BE20](v75);
  v542 = (&v470 - v76);
  MEMORY[0x28223BE20](v77);
  v547 = &v470 - v78;
  MEMORY[0x28223BE20](v79);
  v546 = &v470 - v80;
  MEMORY[0x28223BE20](v81);
  v510 = &v470 - v82;
  MEMORY[0x28223BE20](v83);
  v511 = &v470 - v84;
  MEMORY[0x28223BE20](v85);
  v545 = &v470 - v86;
  MEMORY[0x28223BE20](v87);
  v544 = &v470 - v88;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB7A8, &qword_2526960D8);
  v90 = v89 - 8;
  MEMORY[0x28223BE20](v89);
  v92 = &v470 - v91;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD70, &unk_2526959C0);
  MEMORY[0x28223BE20](v93 - 8);
  v504 = &v470 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v95);
  v503 = &v470 - v96;
  MEMORY[0x28223BE20](v97);
  v521 = &v470 - v98;
  MEMORY[0x28223BE20](v99);
  v509 = &v470 - v100;
  MEMORY[0x28223BE20](v101);
  v474 = &v470 - v102;
  MEMORY[0x28223BE20](v103);
  v478 = &v470 - v104;
  MEMORY[0x28223BE20](v105);
  v532 = &v470 - v106;
  MEMORY[0x28223BE20](v107);
  v537 = &v470 - v108;
  MEMORY[0x28223BE20](v109);
  v520 = &v470 - v110;
  v538 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80, &unk_2526951A0);
  v534 = *(v538 - 8);
  MEMORY[0x28223BE20](v538);
  v502 = &v470 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v112);
  v517 = &v470 - v113;
  MEMORY[0x28223BE20](v114);
  v507 = &v470 - v115;
  MEMORY[0x28223BE20](v116);
  v471 = &v470 - v117;
  MEMORY[0x28223BE20](v118);
  v472 = &v470 - v119;
  MEMORY[0x28223BE20](v120);
  v473 = &v470 - v121;
  MEMORY[0x28223BE20](v122);
  v475 = (&v470 - v123);
  MEMORY[0x28223BE20](v124);
  v476 = &v470 - v125;
  MEMORY[0x28223BE20](v126);
  v477 = &v470 - v127;
  MEMORY[0x28223BE20](v128);
  v508 = &v470 - v129;
  MEMORY[0x28223BE20](v130);
  v535 = (&v470 - v131);
  MEMORY[0x28223BE20](v132);
  v533 = (&v470 - v133);
  v134 = type metadata accessor for AccessoryControl.BinaryViewConfig(0);
  v506 = *(v134 - 8);
  MEMORY[0x28223BE20](v134);
  v136 = &v470 - ((v135 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v137);
  v139 = &v470 - v138;
  MEMORY[0x28223BE20](v140);
  v142 = &v470 - v141;
  MEMORY[0x28223BE20](v143);
  v145 = &v470 - v144;
  MEMORY[0x28223BE20](v146);
  v148 = &v470 - v147;
  v149 = &v92[*(v90 + 56)];
  sub_2523F3CE0(v554, v92, type metadata accessor for AccessoryControl.State);
  v553 = v149;
  v150 = v149;
  v151 = v558;
  v152 = v92;
  sub_2523F3CE0(v555, v150, type metadata accessor for AccessoryControl.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 5)
  {
    v541 = v134;
    v168 = v136;
    v542 = v142;
    v543 = v145;
    v540 = v139;
    v554 = v148;
    v169 = v548;
    v170 = v552;
    v171 = v549;
    v172 = v551;
    v173 = v550;
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload != 5)
        {
          goto LABEL_82;
        }

        v188 = v92;
        v189 = v92;
        v190 = v547;
        sub_2523F3CE0(v189, v547, type metadata accessor for AccessoryControl.State);
        v583 = *v190;
        *&v584 = *(v190 + 16);
        v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2B0, &unk_2526A6A00);
        v192 = *(v191 + 48);
        v193 = v553;
        if (swift_getEnumCaseMultiPayload() != 5)
        {
          sub_252372288(v190 + v192, &qword_27F4DB298, &unk_2526A6320);
          sub_252394280(&v583);
          v152 = v188;
          goto LABEL_82;
        }

        v554 = v191;
        v576 = *v193;
        *&v577 = *(v193 + 16);
        sub_2523714D4(v190 + v192, v171, &qword_27F4DB298, &unk_2526A6320);
        v194 = v523;
        sub_2523714D4(v193 + v192, v523, &qword_27F4DB298, &unk_2526A6320);
        v562 = v583;
        *&v563 = v584;
        v560 = v576;
        v561 = v577;
        sub_252614484(&v560, &v569);
        sub_252394280(&v576);
        sub_252394280(&v583);
        v195 = v570;
        if (!v570)
        {
          sub_252372288(v194, &qword_27F4DB298, &unk_2526A6320);
          sub_252372288(v171, &qword_27F4DB298, &unk_2526A6320);
          (*(v556 + 56))(v557, 1, 1, v558);
          v322 = v188;
          return sub_2523F3D48(v322, type metadata accessor for AccessoryControl.State);
        }

        v196 = v569;
        LOBYTE(v560) = BYTE6(v569) & 1;
        v553 = *(&v569 + 1);
        v559 = BYTE10(v569) & 1;
        v197 = v505;
        v198 = *(v505 + 36);
        v199 = _s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(v171 + v198, v194 + v198);
        v200 = v188;
        v201 = v558;
        if ((v199 & 1) == 0)
        {

          sub_2523F1EEC(v171, v194);
          sub_252372288(v194, &qword_27F4DB298, &unk_2526A6320);
          sub_252372288(v171, &qword_27F4DB298, &unk_2526A6320);
          (*(v556 + 56))(v557, 1, 1, v201);
          goto LABEL_98;
        }

        LODWORD(v552) = WORD1(v196) & 1;
        v555 = v188;
        LODWORD(v550) = (v196 >> 8) & 1;
        LODWORD(v548) = v196 & 1;
        v551 = HIDWORD(v196);
        *&v562 = *v171;

        sub_2523C5C1C(v202);
        v203 = v487;
        sub_252614E78(v171 + *(v197 + 40), (v194 + *(v197 + 40)), &v487[*(v197 + 40)]);
        sub_252372288(v194, &qword_27F4DB298, &unk_2526A6320);
        sub_2523F3CE0(v171 + v198, v203 + *(v197 + 36), type metadata accessor for AccessoryControl.ValueDestination);
        sub_252372288(v171, &qword_27F4DB298, &unk_2526A6320);
        *v203 = v562;
        v204 = v488;
        sub_2523714D4(v203, v488, &qword_27F4DB298, &unk_2526A6320);
        v205 = *(v554 + 48);
        v206 = v557;
        *v557 = v548;
        *(v206 + 1) = v550;
        *(v206 + 2) = v552;
        *(v206 + 4) = v551;
        *(v206 + 6) = v560;
        *(v206 + 8) = v553;
        *(v206 + 10) = v559;
        *(v206 + 16) = v195;
        sub_2523714D4(v204, v206 + v205, &qword_27F4DB298, &unk_2526A6320);
        v207 = v558;
        goto LABEL_132;
      }

      v555 = v92;
      v258 = v92;
      v259 = v546;
      sub_2523F3CE0(v258, v546, type metadata accessor for AccessoryControl.State);
      v260 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADB0, &unk_2526A7360);
      v261 = *(v260 + 48);
      v262 = v553;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v554 = v260;
        sub_2523F3DA8(v259, v170, type metadata accessor for AccessoryControl.PickerViewConfig);
        v263 = v536;
        sub_2523F3DA8(v262, v536, type metadata accessor for AccessoryControl.PickerViewConfig);
        sub_2523714D4(v259 + v261, v169, &qword_27F4DAD68, &qword_2526A4D70);
        v264 = v522;
        sub_2523714D4(v262 + v261, v522, &qword_27F4DAD68, &qword_2526A4D70);
        if (_s22HomeAccessoryControlUI0bC0V16PickerViewConfigV2eeoiySbAE_AEtFZ_0(v170, v263))
        {
          v265 = v169;
          v266 = v491;
          v267 = *(v491 + 36);
          if (_s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(v169 + v267, v264 + v267))
          {
            *&v583 = *v169;

            sub_2523C5C04(v268);
            sub_2523F3D48(v536, type metadata accessor for AccessoryControl.PickerViewConfig);
            v269 = *(v266 + 40);
            v270 = v169 + v269;
            v271 = v266;
            v272 = *(v169 + v269 + 8);
            v273 = (v264 + v269);
            v274 = v273[8];
            if (!v272)
            {
              v273 = v270;
            }

            v275 = v264;
            v276 = *v273;
            sub_252372288(v275, &qword_27F4DAD68, &qword_2526A4D70);
            v277 = v265 + v267;
            v278 = v480;
            sub_2523F3CE0(v277, &v480[*(v271 + 36)], type metadata accessor for AccessoryControl.ValueDestination);
            sub_252372288(v265, &qword_27F4DAD68, &qword_2526A4D70);
            v279 = v583;
            v280 = v278 + *(v271 + 40);
            *v280 = v276;
            v280[8] = v272 & v274;
            *v278 = v279;
            v281 = v481;
            sub_2523714D4(v278, v481, &qword_27F4DAD68, &qword_2526A4D70);
            v282 = *(v554 + 48);
            v283 = v557;
            sub_2523F3DA8(v552, v557, type metadata accessor for AccessoryControl.PickerViewConfig);
            sub_2523714D4(v281, v283 + v282, &qword_27F4DAD68, &qword_2526A4D70);
            v207 = v558;
            swift_storeEnumTagMultiPayload();
            v284 = *(v556 + 56);
            v285 = v283;
            goto LABEL_133;
          }

          sub_2523F19C4(v169, v264);
          sub_252372288(v264, &qword_27F4DAD68, &qword_2526A4D70);
          sub_252372288(v169, &qword_27F4DAD68, &qword_2526A4D70);
          v357 = v536;
        }

        else
        {
          sub_252372288(v264, &qword_27F4DAD68, &qword_2526A4D70);
          sub_252372288(v169, &qword_27F4DAD68, &qword_2526A4D70);
          v357 = v263;
        }

        sub_2523F3D48(v357, type metadata accessor for AccessoryControl.PickerViewConfig);
        sub_2523F3D48(v170, type metadata accessor for AccessoryControl.PickerViewConfig);
        goto LABEL_93;
      }

      sub_252372288(v259 + v261, &qword_27F4DAD68, &qword_2526A4D70);
      v323 = type metadata accessor for AccessoryControl.PickerViewConfig;
      v324 = v259;
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_82;
        }

        v555 = v92;
        v174 = v545;
        sub_2523F3CE0(v92, v545, type metadata accessor for AccessoryControl.State);
        v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0, &unk_252695A10);
        v176 = *(v175 + 48);
        v177 = *(v175 + 64);
        v178 = v553;
        v179 = swift_getEnumCaseMultiPayload();
        if (v179)
        {
          if (v179 == 2)
          {
            v180 = v176;
            v181 = v511;
            sub_2523F3CE0(v178, v511, type metadata accessor for AccessoryControl.State);
            v552 = *(v175 + 48);
            v550 = v175;
            v554 = *(v175 + 64);
            v182 = v531;
            sub_2523F3DA8(v174, v531, type metadata accessor for AccessoryControl.IncrementalConfig);
            v183 = v519;
            sub_2523F3DA8(v181, v519, type metadata accessor for AccessoryControl.IncrementalConfig);
            v184 = v172;
            sub_2523714D4(v174 + v180, v172, &qword_27F4DAD78, &unk_252695190);
            sub_2523714D4(v174 + v177, v537, &qword_27F4DAD70, &unk_2526959C0);
            v185 = v516;
            sub_2523714D4(v181 + v552, v516, &qword_27F4DAD78, &unk_252695190);
            v186 = v532;
            sub_2523714D4(v181 + v554, v532, &qword_27F4DAD70, &unk_2526959C0);
            v187 = v515;
            sub_2526142C4(v183, v515);
            if ((*(v513 + 48))(v187, 1, v514) == 1)
            {
              sub_252372288(v185, &qword_27F4DAD78, &unk_252695190);
              sub_252372288(v172, &qword_27F4DAD78, &unk_252695190);
              sub_2523F3D48(v183, type metadata accessor for AccessoryControl.IncrementalConfig);
              sub_2523F3D48(v182, type metadata accessor for AccessoryControl.IncrementalConfig);
              sub_252372288(v186, &qword_27F4DAD70, &unk_2526959C0);
              sub_252372288(v537, &qword_27F4DAD70, &unk_2526959C0);
              sub_252372288(v187, &qword_27F4DB890, &qword_2526963D0);
              (*(v556 + 56))(v557, 1, 1, v558);
LABEL_101:
              v410 = v553;
LABEL_113:
              sub_2523F3D48(v410, type metadata accessor for AccessoryControl.State);
              v322 = v555;
              return sub_2523F3D48(v322, type metadata accessor for AccessoryControl.State);
            }

            v365 = v501;
            sub_2523F3DA8(v187, v501, type metadata accessor for AccessoryControl.IncrementalConfig);
            v366 = v489;
            v367 = *(v489 + 36);
            v368 = _s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(v184 + v367, v185 + v367);
            v369 = v558;
            if ((v368 & 1) == 0)
            {
              sub_2523F143C(v184, v185);
              sub_2523F3D48(v365, type metadata accessor for AccessoryControl.IncrementalConfig);
              sub_252372288(v185, &qword_27F4DAD78, &unk_252695190);
              sub_252372288(v184, &qword_27F4DAD78, &unk_252695190);
              sub_2523F3D48(v183, type metadata accessor for AccessoryControl.IncrementalConfig);
              sub_2523F3D48(v531, type metadata accessor for AccessoryControl.IncrementalConfig);
              sub_252372288(v532, &qword_27F4DAD70, &unk_2526959C0);
              sub_252372288(v537, &qword_27F4DAD70, &unk_2526959C0);
              (*(v556 + 56))(v557, 1, 1, v369);
              goto LABEL_101;
            }

            *&v583 = *v184;

            sub_2523C5BEC(v370);
            v371 = v479;
            sub_252614658(v184 + *(v366 + 40), v185 + *(v366 + 40), &v479[*(v366 + 40)]);
            sub_2523F3CE0(v184 + v367, v371 + *(v366 + 36), type metadata accessor for AccessoryControl.ValueDestination);
            *v371 = v583;
            sub_2523714D4(v371, v490, &qword_27F4DAD78, &unk_252695190);
            v372 = v184;
            v373 = v478;
            sub_25237153C(v537, v478, &qword_27F4DAD70, &unk_2526959C0);
            v374 = *(v534 + 48);
            v375 = v538;
            if (v374(v373, 1, v538) == 1)
            {
              sub_252372288(v185, &qword_27F4DAD78, &unk_252695190);
              sub_252372288(v372, &qword_27F4DAD78, &unk_252695190);
              sub_2523F3D48(v519, type metadata accessor for AccessoryControl.IncrementalConfig);
              v376 = v531;
            }

            else
            {
              v412 = v475;
              sub_2523714D4(v373, v475, &qword_27F4DAD80, &unk_2526951A0);
              v373 = v474;
              sub_25237153C(v532, v474, &qword_27F4DAD70, &unk_2526959C0);
              v413 = v374(v373, 1, v375);
              v414 = v531;
              if (v413 != 1)
              {
                v435 = v373;
                v436 = v473;
                sub_2523714D4(v435, v473, &qword_27F4DAD80, &unk_2526951A0);
                v437 = *(v375 + 36);
                v438 = v412 + v437;
                if (_s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(v412 + v437, v436 + v437))
                {
                  *&v583 = *v412;

                  sub_2523C5BD4(v439);
                  v440 = *(v375 + 40);
                  v441 = (v412 + v440);
                  v442 = *(v412 + v440 + 32);
                  v443 = (v436 + v440);
                  v444 = *v443;
                  v445 = v443[4];
                  if (v442 == 1)
                  {
                    v447 = v443[2];
                    v446 = v443[3];
                    v448 = *v443;
                    v552 = v443[1];
                    v554 = v446;
                    sub_25239F750(v448, v552, v447, v446, v445);
                    v449 = v444;
                    v450 = v472;
                  }

                  else
                  {
                    v449 = *v441;
                    v450 = v472;
                    if (v445 == 1)
                    {
                      v447 = v441[2];
                      v552 = v441[1];
                      v554 = v441[3];
                    }

                    else
                    {
                      v552 = 0;
                      v554 = 0;
                      v445 = 0;
                      if (v449)
                      {
                        v449 = 1;
                      }

                      else
                      {
                        v449 = v444 & 1;
                      }

                      v447 = 1;
                    }
                  }

                  sub_252372288(v436, &qword_27F4DAD80, &unk_2526951A0);
                  sub_252372288(v516, &qword_27F4DAD78, &unk_252695190);
                  sub_252372288(v551, &qword_27F4DAD78, &unk_252695190);
                  sub_2523F3D48(v519, type metadata accessor for AccessoryControl.IncrementalConfig);
                  sub_2523F3D48(v531, type metadata accessor for AccessoryControl.IncrementalConfig);
                  v460 = v538;
                  v461 = v471;
                  sub_2523F3CE0(v438, &v471[*(v538 + 36)], type metadata accessor for AccessoryControl.ValueDestination);
                  sub_252372288(v475, &qword_27F4DAD80, &unk_2526951A0);
                  v462 = v583;
                  v463 = (v461 + *(v460 + 40));
                  v464 = v552;
                  *v463 = v449;
                  v463[1] = v464;
                  v465 = v554;
                  v463[2] = v447;
                  v463[3] = v465;
                  v463[4] = v445;
                  *v461 = v462;
                  sub_252372288(v532, &qword_27F4DAD70, &unk_2526959C0);
                  sub_252372288(v537, &qword_27F4DAD70, &unk_2526959C0);
                  sub_2523714D4(v461, v450, &qword_27F4DAD80, &unk_2526951A0);
                  v466 = *(v550 + 48);
                  v467 = *(v550 + 64);
                  v468 = v557;
                  sub_2523F3DA8(v501, v557, type metadata accessor for AccessoryControl.IncrementalConfig);
                  sub_2523714D4(v490, v468 + v466, &qword_27F4DAD78, &unk_252695190);
                  sub_2523714D4(v450, v468 + v467, &qword_27F4DAD80, &unk_2526951A0);
                  (*(v534 + 56))(v468 + v467, 0, 1, v460);
                  v469 = v558;
                  swift_storeEnumTagMultiPayload();
                  (*(v556 + 56))(v468, 0, 1, v469);
                  goto LABEL_101;
                }

                sub_2523F0F00(v412, v436);
                sub_252372288(v436, &qword_27F4DAD80, &unk_2526951A0);
                sub_252372288(v412, &qword_27F4DAD80, &unk_2526951A0);
                sub_252372288(v516, &qword_27F4DAD78, &unk_252695190);
                sub_252372288(v551, &qword_27F4DAD78, &unk_252695190);
                sub_2523F3D48(v519, type metadata accessor for AccessoryControl.IncrementalConfig);
                sub_2523F3D48(v414, type metadata accessor for AccessoryControl.IncrementalConfig);
LABEL_108:
                v415 = v374(v537, 1, v375);
                v416 = v375;
                v417 = v553;
                v418 = v558;
                if (v415 == 1 && v374(v532, 1, v416) == 1)
                {
                  sub_252372288(v532, &qword_27F4DAD70, &unk_2526959C0);
                  sub_252372288(v537, &qword_27F4DAD70, &unk_2526959C0);
                  v419 = *(v550 + 48);
                  v420 = *(v550 + 64);
                  v421 = v557;
                  sub_2523F3DA8(v501, v557, type metadata accessor for AccessoryControl.IncrementalConfig);
                  sub_2523714D4(v490, v421 + v419, &qword_27F4DAD78, &unk_252695190);
                  (*(v534 + 56))(v421 + v420, 1, 1, v416);
                  swift_storeEnumTagMultiPayload();
                  (*(v556 + 56))(v421, 0, 1, v418);
                }

                else
                {
                  sub_252372288(v490, &qword_27F4DAD78, &unk_252695190);
                  sub_2523F3D48(v501, type metadata accessor for AccessoryControl.IncrementalConfig);
                  sub_252372288(v532, &qword_27F4DAD70, &unk_2526959C0);
                  sub_252372288(v537, &qword_27F4DAD70, &unk_2526959C0);
                  (*(v556 + 56))(v557, 1, 1, v418);
                }

                v410 = v417;
                goto LABEL_113;
              }

              sub_252372288(v412, &qword_27F4DAD80, &unk_2526951A0);
              sub_252372288(v516, &qword_27F4DAD78, &unk_252695190);
              sub_252372288(v551, &qword_27F4DAD78, &unk_252695190);
              sub_2523F3D48(v519, type metadata accessor for AccessoryControl.IncrementalConfig);
              v376 = v414;
            }

            sub_2523F3D48(v376, type metadata accessor for AccessoryControl.IncrementalConfig);
            sub_252372288(v373, &qword_27F4DAD70, &unk_2526959C0);
            goto LABEL_108;
          }

          sub_252372288(v174 + v177, &qword_27F4DAD70, &unk_2526959C0);
          v344 = v174 + v176;
          goto LABEL_79;
        }

        v552 = v176;
        v325 = v510;
        sub_2523F3CE0(v178, v510, type metadata accessor for AccessoryControl.State);
        v326 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8, &qword_252695A20) + 48);
        sub_2523F3DA8(v325, v168, type metadata accessor for AccessoryControl.BinaryViewConfig);
        v327 = v509;
        sub_2523714D4(v174 + v177, v509, &qword_27F4DAD70, &unk_2526959C0);
        v328 = v325 + v326;
        v329 = v507;
        sub_2523714D4(v328, v507, &qword_27F4DAD80, &unk_2526951A0);
        if ((v173 & 1) == 0)
        {
          sub_252372288(v329, &qword_27F4DAD80, &unk_2526951A0);
          sub_252372288(v327, &qword_27F4DAD70, &unk_2526959C0);
          sub_2523F3D48(v168, type metadata accessor for AccessoryControl.BinaryViewConfig);
          v344 = v174 + v552;
LABEL_79:
          sub_252372288(v344, &qword_27F4DAD78, &unk_252695190);
          v323 = type metadata accessor for AccessoryControl.IncrementalConfig;
          v324 = v174;
          goto LABEL_80;
        }

        v252 = v554;
        sub_2523F3DA8(v168, v554, type metadata accessor for AccessoryControl.BinaryViewConfig);
        v330 = v533;
        sub_2523714D4(v329, v533, &qword_27F4DAD80, &unk_2526951A0);
        v331 = v520;
        sub_2523714D4(v327, v520, &qword_27F4DAD70, &unk_2526959C0);
        sub_252372288(v174 + v552, &qword_27F4DAD78, &unk_252695190);
        v332 = v174;
        v333 = v330;
        sub_2523F3D48(v332, type metadata accessor for AccessoryControl.IncrementalConfig);
        v334 = type metadata accessor for AccessoryControl.State;
LABEL_58:
        sub_2523F3D48(v178, v334);
        sub_2523F3D48(v555, type metadata accessor for AccessoryControl.State);
        v339 = v521;
        sub_2523714D4(v331, v521, &qword_27F4DAD70, &unk_2526959C0);
        v340 = v534;
        v341 = *(v534 + 48);
        v342 = v538;
        if (v341(v339, 1, v538) == 1)
        {
          sub_252372288(v333, &qword_27F4DAD80, &unk_2526951A0);
          sub_2523F3D48(v252, type metadata accessor for AccessoryControl.BinaryViewConfig);
          v343 = v339;
        }

        else
        {
          v345 = v517;
          sub_2523714D4(v339, v517, &qword_27F4DAD80, &unk_2526951A0);
          v346 = *(v342 + 36);
          if (_s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(v333 + v346, v345 + v346))
          {
            *&v583 = *v333;

            sub_2523C5BD4(v347);
            v348 = *(v342 + 40);
            v349 = (v333 + v348);
            v350 = *(v333 + v348 + 32);
            v351 = (v345 + v348);
            v352 = *v351;
            v353 = v351[4];
            if (v350 == 1)
            {
              v355 = v351[2];
              v354 = v351[3];
              v356 = *v351;
              v553 = v351[1];
              v555 = v354;
              sub_25239F750(v356, v553, v355, v354, v353);
              v552 = v352;
            }

            else
            {
              v411 = *v349;
              if (v353 == 1)
              {
                v552 = *v349;
                v355 = v349[2];
                v553 = v349[1];
                v555 = v349[3];
              }

              else
              {
                v553 = 0;
                v555 = 0;
                v353 = 0;
                v422 = v352 & 1;
                if (v411)
                {
                  v422 = 1;
                }

                v552 = v422;
                v355 = 1;
              }
            }

            sub_252372288(v517, &qword_27F4DAD80, &unk_2526951A0);
            v342 = v538;
            v423 = v533;
            v424 = v533 + v346;
            v394 = v503;
            sub_2523F3CE0(v424, &v503[*(v538 + 36)], type metadata accessor for AccessoryControl.ValueDestination);
            sub_252372288(v423, &qword_27F4DAD80, &unk_2526951A0);
            v425 = v583;
            v426 = (v394 + *(v342 + 40));
            v427 = v553;
            *v426 = v552;
            v426[1] = v427;
            v428 = v555;
            v426[2] = v355;
            v426[3] = v428;
            v426[4] = v353;
            *v394 = v425;
            (*(v534 + 56))(v394, 0, 1, v342);
          }

          else
          {
            sub_2523F0F00(v333, v345);
            sub_252372288(v345, &qword_27F4DAD80, &unk_2526951A0);
            sub_252372288(v333, &qword_27F4DAD80, &unk_2526951A0);
            v394 = v503;
            (*(v340 + 56))(v503, 1, 1, v342);
          }

          v429 = v504;
          v430 = v502;
          sub_2523714D4(v394, v504, &qword_27F4DAD70, &unk_2526959C0);
          if (v341(v429, 1, v342) != 1)
          {
            sub_2523714D4(v429, v430, &qword_27F4DAD80, &unk_2526951A0);
            v431 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8, &qword_252695A20) + 48);
            v432 = v430;
            v433 = v557;
            sub_2523F3DA8(v554, v557, type metadata accessor for AccessoryControl.BinaryViewConfig);
            sub_2523714D4(v432, v433 + v431, &qword_27F4DAD80, &unk_2526951A0);
            v434 = v558;
            swift_storeEnumTagMultiPayload();
            return (*(v556 + 56))(v433, 0, 1, v434);
          }

          sub_2523F3D48(v554, type metadata accessor for AccessoryControl.BinaryViewConfig);
          v343 = v429;
        }

        sub_252372288(v343, &qword_27F4DAD70, &unk_2526959C0);
        return (*(v556 + 56))(v557, 1, 1, v558);
      }

      v555 = v92;
      v248 = v544;
      sub_2523F3CE0(v92, v544, type metadata accessor for AccessoryControl.State);
      v249 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC8, &qword_252695A20);
      v250 = *(v249 + 48);
      v178 = v553;
      v151 = v558;
      v251 = swift_getEnumCaseMultiPayload();
      v252 = v554;
      if (v251 == 2)
      {
        v335 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DADC0, &unk_252695A10);
        v336 = *(v335 + 48);
        v337 = *(v335 + 64);
        sub_2523F3DA8(v248, v252, type metadata accessor for AccessoryControl.BinaryViewConfig);
        v333 = v533;
        sub_2523714D4(v248 + v250, v533, &qword_27F4DAD80, &unk_2526951A0);
        v338 = v178 + v337;
        v331 = v520;
        sub_2523714D4(v338, v520, &qword_27F4DAD70, &unk_2526959C0);
        sub_252372288(v178 + v336, &qword_27F4DAD78, &unk_252695190);
        v334 = type metadata accessor for AccessoryControl.IncrementalConfig;
        goto LABEL_58;
      }

      if (!v251)
      {
        v554 = v249;
        v253 = v543;
        sub_2523F3DA8(v248, v543, type metadata accessor for AccessoryControl.BinaryViewConfig);
        v254 = v542;
        sub_2523F3DA8(v178, v542, type metadata accessor for AccessoryControl.BinaryViewConfig);
        sub_2523714D4(v248 + v250, v535, &qword_27F4DAD80, &unk_2526951A0);
        v255 = v253;
        v256 = v508;
        sub_2523714D4(v178 + v250, v508, &qword_27F4DAD80, &unk_2526951A0);
        v257 = v512;
        sub_252613D7C(v254, v512);
        if ((*(v506 + 48))(v257, 1, v541) == 1)
        {
          sub_252372288(v256, &qword_27F4DAD80, &unk_2526951A0);
          sub_252372288(v535, &qword_27F4DAD80, &unk_2526951A0);
          sub_2523F3D48(v254, type metadata accessor for AccessoryControl.BinaryViewConfig);
          sub_2523F3D48(v255, type metadata accessor for AccessoryControl.BinaryViewConfig);
          v165 = &qword_27F4DB898;
          v166 = &qword_2526963D8;
          v167 = v257;
LABEL_71:
          sub_252372288(v167, v165, v166);
LABEL_72:
          v284 = *(v556 + 56);
          v285 = v557;
          v363 = 1;
LABEL_73:
          v364 = v151;
LABEL_134:
          v284(v285, v363, 1, v364);
          goto LABEL_135;
        }

        v378 = v257;
        v379 = v540;
        sub_2523F3DA8(v378, v540, type metadata accessor for AccessoryControl.BinaryViewConfig);
        v380 = v538;
        v381 = *(v538 + 36);
        v382 = v535;
        if ((_s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(v535 + v381, v256 + v381) & 1) == 0)
        {
          sub_2523F0F00(v382, v256);
          sub_252372288(v256, &qword_27F4DAD80, &unk_2526951A0);
          sub_252372288(v382, &qword_27F4DAD80, &unk_2526951A0);
          sub_2523F3D48(v254, type metadata accessor for AccessoryControl.BinaryViewConfig);
          sub_2523F3D48(v255, type metadata accessor for AccessoryControl.BinaryViewConfig);
          sub_2523F3D48(v379, type metadata accessor for AccessoryControl.BinaryViewConfig);
          goto LABEL_72;
        }

        *&v583 = *v382;

        sub_2523C5BD4(v383);
        v384 = *(v380 + 40);
        v385 = (v382 + v384);
        v386 = *(v382 + v384 + 32);
        v387 = (v256 + v384);
        v388 = *v387;
        v389 = v387[4];
        if (v386 == 1)
        {
          v391 = v387[2];
          v390 = v387[3];
          v392 = *v387;
          v553 = v387[1];
          sub_25239F750(v392, v553, v391, v390, v389);
          v393 = v388;
        }

        else
        {
          v393 = *v385;
          if (v389 == 1)
          {
            v391 = v385[2];
            v553 = v385[1];
            v390 = v385[3];
          }

          else
          {
            v553 = 0;
            v390 = 0;
            v389 = 0;
            if (v393)
            {
              v393 = 1;
            }

            else
            {
              v393 = v388 & 1;
            }

            v391 = 1;
          }
        }

        sub_252372288(v256, &qword_27F4DAD80, &unk_2526951A0);
        sub_2523F3D48(v542, type metadata accessor for AccessoryControl.BinaryViewConfig);
        sub_2523F3D48(v543, type metadata accessor for AccessoryControl.BinaryViewConfig);
        v451 = v538;
        v452 = v535;
        v453 = v535 + v381;
        v454 = v476;
        sub_2523F3CE0(v453, &v476[*(v538 + 36)], type metadata accessor for AccessoryControl.ValueDestination);
        sub_252372288(v452, &qword_27F4DAD80, &unk_2526951A0);
        v455 = v583;
        v456 = (v454 + *(v451 + 40));
        v457 = v553;
        *v456 = v393;
        v456[1] = v457;
        v456[2] = v391;
        v456[3] = v390;
        v456[4] = v389;
        *v454 = v455;
        v458 = v477;
        sub_2523714D4(v454, v477, &qword_27F4DAD80, &unk_2526951A0);
        v459 = *(v554 + 48);
        v206 = v557;
        sub_2523F3DA8(v540, v557, type metadata accessor for AccessoryControl.BinaryViewConfig);
        sub_2523714D4(v458, v206 + v459, &qword_27F4DAD80, &unk_2526951A0);
        v207 = v558;
LABEL_132:
        swift_storeEnumTagMultiPayload();
        v284 = *(v556 + 56);
        v285 = v206;
LABEL_133:
        v363 = 0;
        v364 = v207;
        goto LABEL_134;
      }

      sub_252372288(v248 + v250, &qword_27F4DAD80, &unk_2526951A0);
      v323 = type metadata accessor for AccessoryControl.BinaryViewConfig;
      v324 = v248;
    }

LABEL_80:
    sub_2523F3D48(v324, v323);
LABEL_81:
    v152 = v555;
    goto LABEL_82;
  }

  if (EnumCaseMultiPayload <= 7)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v208 = v540;
      sub_2523F3CE0(v92, v540, type metadata accessor for AccessoryControl.State);
      v209 = *v208;
      v211 = *(v208 + 16);
      v210 = *(v208 + 24);
      v212 = *(v208 + 32);
      v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4A0, &unk_2526A6A10);
      v214 = *(v213 + 48);
      v215 = v553;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        sub_252372288(v208 + v214, &qword_27F4DB498, &unk_2526A6330);

        goto LABEL_82;
      }

      v548 = v213;
      v555 = v152;
      v216 = *(v208 + 8);
      v549 = *v215;
      LODWORD(v551) = *(v215 + 8);
      v550 = *(v215 + 16);
      v554 = v212;
      v218 = *(v215 + 24);
      v217 = *(v215 + 32);
      v552 = v209;
      v219 = v208 + v214;
      v220 = v530;
      sub_2523714D4(v219, v530, &qword_27F4DB498, &unk_2526A6330);
      v221 = v215 + v214;
      v222 = v527;
      v223 = v552;
      sub_2523714D4(v221, v527, &qword_27F4DB498, &unk_2526A6330);
      *&v583 = v223;
      LODWORD(v547) = v216;
      BYTE8(v583) = v216;
      v553 = v211;
      *&v584 = v211;
      *(&v584 + 1) = v210;
      *&v585 = v554;
      *&v576 = v549;
      BYTE8(v576) = v551;
      *&v577 = v550;
      *(&v577 + 1) = v218;
      *&v578 = v217;
      v224 = _s22HomeAccessoryControlUI0bC0V22PickerButtonViewConfigV2eeoiySbAE_AEtFZ_0(&v583, &v576);

      if (v224)
      {
        v551 = v210;
        v225 = v518;
        v226 = *(v518 + 36);
        if (_s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(v220 + v226, v222 + v226))
        {
          *&v583 = *v220;

          sub_2523C5C4C(v227);
          v228 = *(v225 + 40);
          v229 = *(v220 + v228);
          v230 = *(v220 + v228 + 8);
          v231 = *(v220 + v228 + 16);
          v232 = *(v220 + v228 + 24);
          v233 = (v222 + v228);
          v234 = *v233;
          v235 = v233[1];
          v236 = v233[2];
          v237 = v233[3];
          v550 = v231;
          v549 = v232;
          sub_2523E165C(v229, v230, v231, v232);
          sub_2523E165C(v234, v235, v236, v237);
          sub_252372288(v222, &qword_27F4DB498, &unk_2526A6330);
          if (v230)
          {
            sub_2523E2E24(v234, v235, v236, v237);
            v234 = v229;
            v235 = v230;
            v236 = v550;
            v237 = v549;
          }

          v238 = v518;
          v239 = v220 + v226;
          v240 = v484;
          sub_2523F3CE0(v239, &v484[*(v518 + 36)], type metadata accessor for AccessoryControl.ValueDestination);
          sub_252372288(v220, &qword_27F4DB498, &unk_2526A6330);
          v241 = v583;
          v242 = (v240 + *(v238 + 40));
          *v242 = v234;
          v242[1] = v235;
          v242[2] = v236;
          v242[3] = v237;
          *v240 = v241;
          v243 = v485;
          sub_2523714D4(v240, v485, &qword_27F4DB498, &unk_2526A6330);
          v244 = *(v548 + 12);
          v245 = v557;
          *v557 = v552;
          *(v245 + 8) = v547;
          v246 = v551;
          *(v245 + 16) = v553;
          *(v245 + 24) = v246;
          *(v245 + 32) = v554;
          sub_2523714D4(v243, v245 + v244, &qword_27F4DB498, &unk_2526A6330);
          v247 = v558;
          swift_storeEnumTagMultiPayload();
          (*(v556 + 56))(v245, 0, 1, v247);
          goto LABEL_135;
        }

        sub_2523F29FC(v220, v222);
      }

      else
      {
      }

      v358 = &qword_27F4DB498;
      v359 = &unk_2526A6330;
      sub_252372288(v222, &qword_27F4DB498, &unk_2526A6330);
      v360 = v220;
      goto LABEL_90;
    }

    v307 = v542;
    sub_2523F3CE0(v92, v542, type metadata accessor for AccessoryControl.State);
    v308 = *(v307 + 80);
    v587 = *(v307 + 64);
    v588 = v308;
    v589 = *(v307 + 96);
    v309 = *(v307 + 16);
    v583 = *v307;
    v584 = v309;
    v310 = *(v307 + 48);
    v585 = *(v307 + 32);
    v586 = v310;
    v311 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB270, &unk_2526959F0);
    v312 = *(v311 + 48);
    v313 = v553;
    if (swift_getEnumCaseMultiPayload() != 6)
    {
      sub_252372288(v307 + v312, &qword_27F4DB278, &unk_2526959A0);
      sub_252385F08(&v583);
      goto LABEL_82;
    }

    v554 = v311;
    v555 = v92;
    v314 = *(v313 + 80);
    v580 = *(v313 + 64);
    v581 = v314;
    v582 = *(v313 + 96);
    v315 = *(v313 + 16);
    v576 = *v313;
    v577 = v315;
    v316 = *(v313 + 48);
    v578 = *(v313 + 32);
    v579 = v316;
    v317 = v525;
    sub_2523714D4(v307 + v312, v525, &qword_27F4DB278, &unk_2526959A0);
    v318 = v524;
    sub_2523714D4(v313 + v312, v524, &qword_27F4DB278, &unk_2526959A0);
    v573 = v587;
    v574 = v588;
    v575 = v589;
    v569 = v583;
    v570 = v584;
    v571 = v585;
    v572 = v586;
    v566 = v580;
    v567 = v581;
    v568 = v582;
    v562 = v576;
    v563 = v577;
    v564 = v578;
    v565 = v579;
    v319 = _s22HomeAccessoryControlUI0bC0V16ThermostatConfigV2eeoiySbAE_AEtFZ_0(&v569, &v562);
    sub_252385F08(&v576);
    if (!v319)
    {
      sub_252385F08(&v583);
      v361 = &qword_27F4DB278;
      v362 = &unk_2526959A0;
      sub_252372288(v318, &qword_27F4DB278, &unk_2526959A0);
      v167 = v317;
LABEL_70:
      v165 = v361;
      v166 = v362;
      goto LABEL_71;
    }

    v320 = v494;
    sub_2523F0678(v317, v318, v494);
    sub_252372288(v318, &qword_27F4DB278, &unk_2526959A0);
    sub_252372288(v317, &qword_27F4DB278, &unk_2526959A0);
    v321 = (*(v492 + 48))(v320, 1, v493);
    v200 = v555;
    if (v321 == 1)
    {
      sub_252385F08(&v583);
      sub_252372288(v320, &qword_27F4DB888, &qword_2526963C8);
      (*(v556 + 56))(v557, 1, 1, v151);
    }

    else
    {
      v398 = v320;
      v399 = v482;
      sub_2523714D4(v398, v482, &qword_27F4DB278, &unk_2526959A0);
      v400 = *(v554 + 48);
      v401 = v588;
      v402 = v557;
      *(v557 + 64) = v587;
      *(v402 + 80) = v401;
      *(v402 + 96) = v589;
      v403 = v584;
      *v402 = v583;
      *(v402 + 16) = v403;
      v404 = v586;
      *(v402 + 32) = v585;
      *(v402 + 48) = v404;
      sub_2523714D4(v399, v402 + v400, &qword_27F4DB278, &unk_2526959A0);
      swift_storeEnumTagMultiPayload();
      (*(v556 + 56))(v402, 0, 1, v151);
    }

LABEL_98:
    v322 = v200;
    return sub_2523F3D48(v322, type metadata accessor for AccessoryControl.State);
  }

  if (EnumCaseMultiPayload == 8)
  {
    v286 = v541;
    sub_2523F3CE0(v92, v541, type metadata accessor for AccessoryControl.State);
    v287 = v286[1];
    v288 = v286[2];
    v289 = v286[3];
    v290 = v286[4];
    v554 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB470, &unk_2526959E0);
    v291 = *(v554 + 48);
    v292 = v553;
    if (swift_getEnumCaseMultiPayload() != 8)
    {
      sub_252372288(v286 + v291, &qword_27F4DB450, &unk_252695990);

      goto LABEL_82;
    }

    v555 = v152;
    v293 = *v286;
    v294 = v286;
    LODWORD(v552) = *v292;
    v549 = v289;
    v295 = v292[2];
    v551 = v292[1];
    v550 = v295;
    v296 = v292[3];
    v297 = v292[4];
    sub_2523714D4(v294 + v291, v539, &qword_27F4DB450, &unk_252695990);
    v298 = v526;
    sub_2523714D4(v292 + v291, v526, &qword_27F4DB450, &unk_252695990);
    LODWORD(v548) = v293;
    LOBYTE(v583) = v293;
    v299 = v549;
    v553 = v287;
    *(&v583 + 1) = v287;
    *&v584 = v288;
    *(&v584 + 1) = v549;
    *&v585 = v290;
    LOBYTE(v576) = v552;
    *(&v576 + 1) = v551;
    *&v577 = v550;
    *(&v577 + 1) = v296;
    *&v578 = v297;
    v300 = _s22HomeAccessoryControlUI0bC0V22StatusButtonViewConfigV2eeoiySbAE_AEtFZ_0(&v583, &v576);

    if (v300)
    {
      v301 = v290;
      v302 = v497;
      v303 = v539;
      sub_2523F0950(v539, v298, v497);
      sub_252372288(v298, &qword_27F4DB450, &unk_252695990);
      sub_252372288(v303, &qword_27F4DB450, &unk_252695990);
      v304 = (*(v495 + 48))(v302, 1, v496);
      v305 = v558;
      v306 = v555;
      if (v304 == 1)
      {

        sub_252372288(v302, &qword_27F4DB880, &qword_2526963C0);
        (*(v556 + 56))(v557, 1, 1, v305);
      }

      else
      {
        v395 = v483;
        sub_2523714D4(v302, v483, &qword_27F4DB450, &unk_252695990);
        v396 = *(v554 + 48);
        v397 = v557;
        *v557 = v548;
        v397[1] = v553;
        v397[2] = v288;
        v397[3] = v299;
        v397[4] = v301;
        sub_2523714D4(v395, v397 + v396, &qword_27F4DB450, &unk_252695990);
        swift_storeEnumTagMultiPayload();
        (*(v556 + 56))(v397, 0, 1, v305);
      }

      v322 = v306;
      return sub_2523F3D48(v322, type metadata accessor for AccessoryControl.State);
    }

    v358 = &qword_27F4DB450;
    v359 = &unk_252695990;
    sub_252372288(v298, &qword_27F4DB450, &unk_252695990);
    v360 = v539;
LABEL_90:
    sub_252372288(v360, v358, v359);
LABEL_93:
    (*(v556 + 56))(v557, 1, 1, v558);
LABEL_135:
    v322 = v555;
    return sub_2523F3D48(v322, type metadata accessor for AccessoryControl.State);
  }

  if (EnumCaseMultiPayload != 10)
  {
    if (EnumCaseMultiPayload == 12)
    {
      v555 = v92;
      v154 = v92;
      v155 = v543;
      sub_2523F3CE0(v154, v543, type metadata accessor for AccessoryControl.State);
      v156 = *(v155 + 16);
      v583 = *v155;
      v584 = v156;
      v585 = *(v155 + 32);
      *&v586 = *(v155 + 48);
      v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F0, &unk_2526959D0);
      v158 = *(v157 + 48);
      v159 = v553;
      v151 = v558;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v160 = *(v159 + 16);
        v576 = *v159;
        v577 = v160;
        v578 = *(v159 + 32);
        *&v579 = *(v159 + 48);
        v161 = v529;
        sub_2523714D4(v155 + v158, v529, &qword_27F4DB2F8, &unk_252695980);
        v162 = v159 + v158;
        v163 = v528;
        sub_2523714D4(v162, v528, &qword_27F4DB2F8, &unk_252695980);
        v569 = v583;
        v570 = v584;
        v571 = v585;
        *&v572 = v586;
        v562 = v576;
        v563 = v577;
        v564 = v578;
        *&v565 = v579;
        if (_s22HomeAccessoryControlUI0bC0V21AutoClimateViewConfigV2eeoiySbAE_AEtFZ_0(&v569, &v562))
        {
          v164 = v500;
          sub_2523F0C28(v161, v163, v500);
          sub_2523E1608(&v576);
          sub_252372288(v163, &qword_27F4DB2F8, &unk_252695980);
          sub_252372288(v161, &qword_27F4DB2F8, &unk_252695980);
          if ((*(v498 + 48))(v164, 1, v499) != 1)
          {
            v405 = v164;
            v406 = v486;
            sub_2523714D4(v405, v486, &qword_27F4DB2F8, &unk_252695980);
            v407 = *(v157 + 48);
            v408 = v584;
            v409 = v557;
            *v557 = v583;
            *(v409 + 16) = v408;
            *(v409 + 32) = v585;
            *(v409 + 48) = v586;
            sub_2523714D4(v406, v409 + v407, &qword_27F4DB2F8, &unk_252695980);
            swift_storeEnumTagMultiPayload();
            v284 = *(v556 + 56);
            v285 = v409;
            v363 = 0;
            goto LABEL_73;
          }

          sub_2523E1608(&v583);
          v165 = &qword_27F4DB878;
          v166 = &qword_2526963B8;
          v167 = v164;
          goto LABEL_71;
        }

        sub_2523E1608(&v576);
        sub_2523E1608(&v583);
        v361 = &qword_27F4DB2F8;
        v362 = &unk_252695980;
        sub_252372288(v163, &qword_27F4DB2F8, &unk_252695980);
        v167 = v161;
        goto LABEL_70;
      }

      sub_252372288(v155 + v158, &qword_27F4DB2F8, &unk_252695980);
      sub_2523E1608(&v583);
      goto LABEL_81;
    }

LABEL_82:
    (*(v556 + 56))(v557, 1, 1, v558);
    return sub_252372288(v152, &qword_27F4DB7A8, &qword_2526960D8);
  }

  (*(v556 + 56))(v557, 1, 1, v151);
  sub_2523F3D48(v553, type metadata accessor for AccessoryControl.State);
  v322 = v92;
  return sub_2523F3D48(v322, type metadata accessor for AccessoryControl.State);
}

uint64_t sub_2523F0678@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278, &unk_2526959A0);
  v10 = *(v9 + 36);
  if (_s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(a1 + v10, a2 + v10))
  {
    v11 = *a1;
    v21 = a3;
    v22 = v11;

    sub_2523C5C34(v12);
    v13 = *(v9 + 40);
    sub_25237153C(a1 + v13, v8, &qword_27F4DB258, &unk_252696090);
    v14 = type metadata accessor for AccessoryControl.ThermostatState(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (v16(v8, 1, v14) == 1)
    {
      v17 = a2 + v13;
      v18 = v21;
      sub_25237153C(v17, &v21[v13], &qword_27F4DB258, &unk_252696090);
      if (v16(v8, 1, v14) != 1)
      {
        sub_252372288(v8, &qword_27F4DB258, &unk_252696090);
      }
    }

    else
    {
      v18 = v21;
      sub_2523F3DA8(v8, &v21[v13], type metadata accessor for AccessoryControl.ThermostatState);
      (*(v15 + 56))(&v18[v13], 0, 1, v14);
    }

    sub_2523F3CE0(a1 + v10, &v18[*(v9 + 36)], type metadata accessor for AccessoryControl.ValueDestination);
    *v18 = v22;
    return (*(*(v9 - 8) + 56))(v18, 0, 1, v9);
  }

  else
  {
    sub_2523F2474(a1, a2);
    v19 = *(*(v9 - 8) + 56);

    return v19(a3, 1, 1, v9);
  }
}

uint64_t sub_2523F0950@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440, &qword_2526A1150);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450, &unk_252695990);
  v10 = *(v9 + 36);
  if (_s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(a1 + v10, a2 + v10))
  {
    v11 = *a1;
    v21 = a3;
    v22 = v11;

    sub_2523C5C64(v12);
    v13 = *(v9 + 40);
    sub_25237153C(a1 + v13, v8, &qword_27F4DB440, &qword_2526A1150);
    v14 = type metadata accessor for AccessoryControl.StatusButtonState(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (v16(v8, 1, v14) == 1)
    {
      v17 = a2 + v13;
      v18 = v21;
      sub_25237153C(v17, &v21[v13], &qword_27F4DB440, &qword_2526A1150);
      if (v16(v8, 1, v14) != 1)
      {
        sub_252372288(v8, &qword_27F4DB440, &qword_2526A1150);
      }
    }

    else
    {
      v18 = v21;
      sub_2523F3DA8(v8, &v21[v13], type metadata accessor for AccessoryControl.StatusButtonState);
      (*(v15 + 56))(&v18[v13], 0, 1, v14);
    }

    sub_2523F3CE0(a1 + v10, &v18[*(v9 + 36)], type metadata accessor for AccessoryControl.ValueDestination);
    *v18 = v22;
    return (*(*(v9 - 8) + 56))(v18, 0, 1, v9);
  }

  else
  {
    sub_2523F2F28(a1, a2);
    v19 = *(*(v9 - 8) + 56);

    return v19(a3, 1, 1, v9);
  }
}

uint64_t sub_2523F0C28@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E8, &unk_2526960A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8, &unk_252695980);
  v10 = *(v9 + 36);
  if (_s22HomeAccessoryControlUI0bC0V16ValueDestinationO2eeoiySbAE_AEtFZ_0(a1 + v10, a2 + v10))
  {
    v11 = *a1;
    v21 = a3;
    v22 = v11;

    sub_2523C5C7C(v12);
    v13 = *(v9 + 40);
    sub_25237153C(a1 + v13, v8, &qword_27F4DB2E8, &unk_2526960A0);
    v14 = type metadata accessor for AccessoryControl.AutoClimateState(0);
    v15 = *(v14 - 8);
    v16 = *(v15 + 48);
    if (v16(v8, 1, v14) == 1)
    {
      v17 = a2 + v13;
      v18 = v21;
      sub_25237153C(v17, &v21[v13], &qword_27F4DB2E8, &unk_2526960A0);
      if (v16(v8, 1, v14) != 1)
      {
        sub_252372288(v8, &qword_27F4DB2E8, &unk_2526960A0);
      }
    }

    else
    {
      v18 = v21;
      sub_2523F3DA8(v8, &v21[v13], type metadata accessor for AccessoryControl.AutoClimateState);
      (*(v15 + 56))(&v18[v13], 0, 1, v14);
    }

    sub_2523F3CE0(a1 + v10, &v18[*(v9 + 36)], type metadata accessor for AccessoryControl.ValueDestination);
    *v18 = v22;
    return (*(*(v9 - 8) + 56))(v18, 0, 1, v9);
  }

  else
  {
    sub_2523F34B0(a1, a2);
    v19 = *(*(v9 - 8) + 56);

    return v19(a3, 1, 1, v9);
  }
}

void sub_2523F0F00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v56 = &v52[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD80, &unk_2526951A0);
  MEMORY[0x28223BE20](v6);
  v8 = &v52[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v52[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v52[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v52[-v16];
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v18 = sub_2526905A0();
  __swift_project_value_buffer(v18, qword_27F4E4B18);
  sub_25237153C(a1, v17, &qword_27F4DAD80, &unk_2526951A0);
  sub_25237153C(a1, v14, &qword_27F4DAD80, &unk_2526951A0);
  sub_25237153C(a2, v11, &qword_27F4DAD80, &unk_2526951A0);
  sub_25237153C(a2, v8, &qword_27F4DAD80, &unk_2526951A0);
  v19 = sub_252690580();
  v20 = sub_252692EF0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v62 = v55;
    *v21 = 136447490;
    v54 = v19;
    *(v21 + 4) = sub_2525BDA90(0xD000000000000015, 0x80000002526AE6E0, &v62);
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_2525BDA90(0xD000000000000015, 0x80000002526AE6E0, &v62);
    *(v21 + 22) = 2080;
    v22 = &v17[*(v6 + 40)];
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v26 = v22[4];
    v57 = *v22;
    v58 = v23;
    v59 = v24;
    v60 = v25;
    v61 = v26;
    sub_25239F750(v57, v23, v24, v25, v26);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4E0, &qword_2526A6760);
    v27 = sub_252692C00();
    v29 = v28;
    sub_252372288(v17, &qword_27F4DAD80, &unk_2526951A0);
    v30 = sub_2525BDA90(v27, v29, &v62);

    *(v21 + 24) = v30;
    *(v21 + 32) = 2082;
    v31 = &v14[*(v6 + 36)];
    v53 = v20;
    v32 = v56;
    sub_2523F3CE0(v31, v56, type metadata accessor for AccessoryControl.ValueDestination);
    v33 = sub_2523F3A38(v32);
    v35 = v34;
    sub_252372288(v14, &qword_27F4DAD80, &unk_2526951A0);
    v36 = sub_2525BDA90(v33, v35, &v62);

    *(v21 + 34) = v36;
    *(v21 + 42) = 2080;
    v37 = &v11[*(v6 + 40)];
    v38 = v37[1];
    v39 = v37[2];
    v40 = v37[3];
    v41 = v37[4];
    v57 = *v37;
    v58 = v38;
    v59 = v39;
    v60 = v40;
    v61 = v41;
    sub_25239F750(v57, v38, v39, v40, v41);
    v42 = sub_252692C00();
    v44 = v43;
    sub_252372288(v11, &qword_27F4DAD80, &unk_2526951A0);
    v45 = sub_2525BDA90(v42, v44, &v62);

    *(v21 + 44) = v45;
    *(v21 + 52) = 2082;
    sub_2523F3CE0(&v8[*(v6 + 36)], v32, type metadata accessor for AccessoryControl.ValueDestination);
    v46 = sub_2523F3A38(v32);
    v48 = v47;
    sub_252372288(v8, &qword_27F4DAD80, &unk_2526951A0);
    v49 = sub_2525BDA90(v46, v48, &v62);

    *(v21 + 54) = v49;
    v50 = v54;
    _os_log_impl(&dword_252309000, v54, v53, "Tried to merge two bindings of %{public}s and %{public}s with different targets, which is disallowed:\nlhs: %s - %{public}s, rhs: %s - %{public}s", v21, 0x3Eu);
    v51 = v55;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v51, -1, -1);
    MEMORY[0x2530A5A40](v21, -1, -1);
  }

  else
  {

    sub_252372288(v8, &qword_27F4DAD80, &unk_2526951A0);
    sub_252372288(v11, &qword_27F4DAD80, &unk_2526951A0);
    sub_252372288(v14, &qword_27F4DAD80, &unk_2526951A0);
    sub_252372288(v17, &qword_27F4DAD80, &unk_2526951A0);
  }
}

void sub_2523F143C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB218, &unk_252696080);
  MEMORY[0x28223BE20](v51);
  v7 = &v46[-v6];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD78, &unk_252695190);
  MEMORY[0x28223BE20](v52);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v46[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v46[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v46[-v17];
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v19 = sub_2526905A0();
  __swift_project_value_buffer(v19, qword_27F4E4B18);
  sub_25237153C(a1, v18, &qword_27F4DAD78, &unk_252695190);
  sub_25237153C(a1, v15, &qword_27F4DAD78, &unk_252695190);
  sub_25237153C(a2, v12, &qword_27F4DAD78, &unk_252695190);
  sub_25237153C(a2, v9, &qword_27F4DAD78, &unk_252695190);
  v20 = sub_252690580();
  v21 = sub_252692EF0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = v9;
    v23 = v22;
    v50 = swift_slowAlloc();
    v54 = v50;
    *v23 = 136447490;
    v49 = v20;
    *(v23 + 4) = sub_2525BDA90(0xD00000000000001ALL, 0x80000002526AE6C0, &v54);
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_2525BDA90(0xD00000000000001ALL, 0x80000002526AE6C0, &v54);
    *(v23 + 22) = 2080;
    v47 = v21;
    v24 = v52;
    sub_25237153C(&v18[*(v52 + 40)], v7, &qword_27F4DB218, &unk_252696080);
    v25 = sub_252692C00();
    v27 = v26;
    sub_252372288(v18, &qword_27F4DAD78, &unk_252695190);
    v28 = sub_2525BDA90(v25, v27, &v54);

    *(v23 + 24) = v28;
    *(v23 + 32) = 2082;
    v29 = v53;
    sub_2523F3CE0(&v15[*(v24 + 36)], v53, type metadata accessor for AccessoryControl.ValueDestination);
    v30 = sub_2523F3A38(v29);
    v32 = v31;
    sub_252372288(v15, &qword_27F4DAD78, &unk_252695190);
    v33 = sub_2525BDA90(v30, v32, &v54);

    *(v23 + 34) = v33;
    *(v23 + 42) = 2080;
    sub_25237153C(&v12[*(v24 + 40)], v7, &qword_27F4DB218, &unk_252696080);
    v34 = sub_252692C00();
    v36 = v35;
    sub_252372288(v12, &qword_27F4DAD78, &unk_252695190);
    v37 = sub_2525BDA90(v34, v36, &v54);

    *(v23 + 44) = v37;
    *(v23 + 52) = 2082;
    v38 = *(v24 + 36);
    v39 = v48;
    sub_2523F3CE0(&v48[v38], v29, type metadata accessor for AccessoryControl.ValueDestination);
    v40 = sub_2523F3A38(v29);
    v42 = v41;
    sub_252372288(v39, &qword_27F4DAD78, &unk_252695190);
    v43 = sub_2525BDA90(v40, v42, &v54);

    *(v23 + 54) = v43;
    v44 = v49;
    _os_log_impl(&dword_252309000, v49, v47, "Tried to merge two bindings of %{public}s and %{public}s with different targets, which is disallowed:\nlhs: %s - %{public}s, rhs: %s - %{public}s", v23, 0x3Eu);
    v45 = v50;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v45, -1, -1);
    MEMORY[0x2530A5A40](v23, -1, -1);
  }

  else
  {

    sub_252372288(v9, &qword_27F4DAD78, &unk_252695190);
    sub_252372288(v12, &qword_27F4DAD78, &unk_252695190);
    sub_252372288(v15, &qword_27F4DAD78, &unk_252695190);
    sub_252372288(v18, &qword_27F4DAD78, &unk_252695190);
  }
}

void sub_2523F19C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v50 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAD68, &qword_2526A4D70);
  MEMORY[0x28223BE20](v6);
  v8 = &v46[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v46[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v46[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v46[-v16];
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v18 = sub_2526905A0();
  __swift_project_value_buffer(v18, qword_27F4E4B18);
  sub_25237153C(a1, v17, &qword_27F4DAD68, &qword_2526A4D70);
  sub_25237153C(a1, v14, &qword_27F4DAD68, &qword_2526A4D70);
  sub_25237153C(a2, v11, &qword_27F4DAD68, &qword_2526A4D70);
  sub_25237153C(a2, v8, &qword_27F4DAD68, &qword_2526A4D70);
  v19 = sub_252690580();
  v20 = sub_252692EF0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v53 = v49;
    *v21 = 136447490;
    v48 = v19;
    *(v21 + 4) = sub_2525BDA90(0xD000000000000015, 0x80000002526AE700, &v53);
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_2525BDA90(0xD000000000000015, 0x80000002526AE700, &v53);
    *(v21 + 22) = 2080;
    v22 = &v17[*(v6 + 40)];
    v23 = *v22;
    LOBYTE(v22) = v22[8];
    v51 = v23;
    v52 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB3C8, &unk_252695A60);
    v24 = sub_252692C00();
    v26 = v25;
    sub_252372288(v17, &qword_27F4DAD68, &qword_2526A4D70);
    v27 = sub_2525BDA90(v24, v26, &v53);

    *(v21 + 24) = v27;
    *(v21 + 32) = 2082;
    v28 = &v14[*(v6 + 36)];
    v47 = v20;
    v29 = v50;
    sub_2523F3CE0(v28, v50, type metadata accessor for AccessoryControl.ValueDestination);
    v30 = sub_2523F3A38(v29);
    v32 = v31;
    sub_252372288(v14, &qword_27F4DAD68, &qword_2526A4D70);
    v33 = sub_2525BDA90(v30, v32, &v53);

    *(v21 + 34) = v33;
    *(v21 + 42) = 2080;
    v34 = &v11[*(v6 + 40)];
    v35 = *v34;
    LOBYTE(v34) = v34[8];
    v51 = v35;
    v52 = v34;
    v36 = sub_252692C00();
    v38 = v37;
    sub_252372288(v11, &qword_27F4DAD68, &qword_2526A4D70);
    v39 = sub_2525BDA90(v36, v38, &v53);

    *(v21 + 44) = v39;
    *(v21 + 52) = 2082;
    sub_2523F3CE0(&v8[*(v6 + 36)], v29, type metadata accessor for AccessoryControl.ValueDestination);
    v40 = sub_2523F3A38(v29);
    v42 = v41;
    sub_252372288(v8, &qword_27F4DAD68, &qword_2526A4D70);
    v43 = sub_2525BDA90(v40, v42, &v53);

    *(v21 + 54) = v43;
    v44 = v48;
    _os_log_impl(&dword_252309000, v48, v47, "Tried to merge two bindings of %{public}s and %{public}s with different targets, which is disallowed:\nlhs: %s - %{public}s, rhs: %s - %{public}s", v21, 0x3Eu);
    v45 = v49;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v45, -1, -1);
    MEMORY[0x2530A5A40](v21, -1, -1);
  }

  else
  {

    sub_252372288(v8, &qword_27F4DAD68, &qword_2526A4D70);
    sub_252372288(v11, &qword_27F4DAD68, &qword_2526A4D70);
    sub_252372288(v14, &qword_27F4DAD68, &qword_2526A4D70);
    sub_252372288(v17, &qword_27F4DAD68, &qword_2526A4D70);
  }
}

void sub_2523F1EEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v51);
  v7 = &v46[-v6];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB298, &unk_2526A6320);
  MEMORY[0x28223BE20](v52);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v46[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v46[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v46[-v17];
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v19 = sub_2526905A0();
  __swift_project_value_buffer(v19, qword_27F4E4B18);
  sub_25237153C(a1, v18, &qword_27F4DB298, &unk_2526A6320);
  sub_25237153C(a1, v15, &qword_27F4DB298, &unk_2526A6320);
  sub_25237153C(a2, v12, &qword_27F4DB298, &unk_2526A6320);
  sub_25237153C(a2, v9, &qword_27F4DB298, &unk_2526A6320);
  v20 = sub_252690580();
  v21 = sub_252692EF0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = v9;
    v23 = v22;
    v50 = swift_slowAlloc();
    v54 = v50;
    *v23 = 136447490;
    v49 = v20;
    *(v23 + 4) = sub_2525BDA90(0xD000000000000014, 0x80000002526AE720, &v54);
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_2525BDA90(0xD000000000000014, 0x80000002526AE720, &v54);
    *(v23 + 22) = 2080;
    v47 = v21;
    v24 = v52;
    sub_25237153C(&v18[*(v52 + 40)], v7, &qword_27F4DB2A0, &qword_25269E4A0);
    v25 = sub_252692C00();
    v27 = v26;
    sub_252372288(v18, &qword_27F4DB298, &unk_2526A6320);
    v28 = sub_2525BDA90(v25, v27, &v54);

    *(v23 + 24) = v28;
    *(v23 + 32) = 2082;
    v29 = v53;
    sub_2523F3CE0(&v15[*(v24 + 36)], v53, type metadata accessor for AccessoryControl.ValueDestination);
    v30 = sub_2523F3A38(v29);
    v32 = v31;
    sub_252372288(v15, &qword_27F4DB298, &unk_2526A6320);
    v33 = sub_2525BDA90(v30, v32, &v54);

    *(v23 + 34) = v33;
    *(v23 + 42) = 2080;
    sub_25237153C(&v12[*(v24 + 40)], v7, &qword_27F4DB2A0, &qword_25269E4A0);
    v34 = sub_252692C00();
    v36 = v35;
    sub_252372288(v12, &qword_27F4DB298, &unk_2526A6320);
    v37 = sub_2525BDA90(v34, v36, &v54);

    *(v23 + 44) = v37;
    *(v23 + 52) = 2082;
    v38 = *(v24 + 36);
    v39 = v48;
    sub_2523F3CE0(&v48[v38], v29, type metadata accessor for AccessoryControl.ValueDestination);
    v40 = sub_2523F3A38(v29);
    v42 = v41;
    sub_252372288(v39, &qword_27F4DB298, &unk_2526A6320);
    v43 = sub_2525BDA90(v40, v42, &v54);

    *(v23 + 54) = v43;
    v44 = v49;
    _os_log_impl(&dword_252309000, v49, v47, "Tried to merge two bindings of %{public}s and %{public}s with different targets, which is disallowed:\nlhs: %s - %{public}s, rhs: %s - %{public}s", v23, 0x3Eu);
    v45 = v50;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v45, -1, -1);
    MEMORY[0x2530A5A40](v23, -1, -1);
  }

  else
  {

    sub_252372288(v9, &qword_27F4DB298, &unk_2526A6320);
    sub_252372288(v12, &qword_27F4DB298, &unk_2526A6320);
    sub_252372288(v15, &qword_27F4DB298, &unk_2526A6320);
    sub_252372288(v18, &qword_27F4DB298, &unk_2526A6320);
  }
}

void sub_2523F2474(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB258, &unk_252696090);
  MEMORY[0x28223BE20](v51);
  v7 = &v46[-v6];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB278, &unk_2526959A0);
  MEMORY[0x28223BE20](v52);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v46[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v46[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v46[-v17];
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v19 = sub_2526905A0();
  __swift_project_value_buffer(v19, qword_27F4E4B18);
  sub_25237153C(a1, v18, &qword_27F4DB278, &unk_2526959A0);
  sub_25237153C(a1, v15, &qword_27F4DB278, &unk_2526959A0);
  sub_25237153C(a2, v12, &qword_27F4DB278, &unk_2526959A0);
  sub_25237153C(a2, v9, &qword_27F4DB278, &unk_2526959A0);
  v20 = sub_252690580();
  v21 = sub_252692EF0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = v9;
    v23 = v22;
    v50 = swift_slowAlloc();
    v54 = v50;
    *v23 = 136447490;
    v49 = v20;
    *(v23 + 4) = sub_2525BDA90(0xD000000000000019, 0x80000002526AE740, &v54);
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_2525BDA90(0xD000000000000019, 0x80000002526AE740, &v54);
    *(v23 + 22) = 2080;
    v47 = v21;
    v24 = v52;
    sub_25237153C(&v18[*(v52 + 40)], v7, &qword_27F4DB258, &unk_252696090);
    v25 = sub_252692C00();
    v27 = v26;
    sub_252372288(v18, &qword_27F4DB278, &unk_2526959A0);
    v28 = sub_2525BDA90(v25, v27, &v54);

    *(v23 + 24) = v28;
    *(v23 + 32) = 2082;
    v29 = v53;
    sub_2523F3CE0(&v15[*(v24 + 36)], v53, type metadata accessor for AccessoryControl.ValueDestination);
    v30 = sub_2523F3A38(v29);
    v32 = v31;
    sub_252372288(v15, &qword_27F4DB278, &unk_2526959A0);
    v33 = sub_2525BDA90(v30, v32, &v54);

    *(v23 + 34) = v33;
    *(v23 + 42) = 2080;
    sub_25237153C(&v12[*(v24 + 40)], v7, &qword_27F4DB258, &unk_252696090);
    v34 = sub_252692C00();
    v36 = v35;
    sub_252372288(v12, &qword_27F4DB278, &unk_2526959A0);
    v37 = sub_2525BDA90(v34, v36, &v54);

    *(v23 + 44) = v37;
    *(v23 + 52) = 2082;
    v38 = *(v24 + 36);
    v39 = v48;
    sub_2523F3CE0(&v48[v38], v29, type metadata accessor for AccessoryControl.ValueDestination);
    v40 = sub_2523F3A38(v29);
    v42 = v41;
    sub_252372288(v39, &qword_27F4DB278, &unk_2526959A0);
    v43 = sub_2525BDA90(v40, v42, &v54);

    *(v23 + 54) = v43;
    v44 = v49;
    _os_log_impl(&dword_252309000, v49, v47, "Tried to merge two bindings of %{public}s and %{public}s with different targets, which is disallowed:\nlhs: %s - %{public}s, rhs: %s - %{public}s", v23, 0x3Eu);
    v45 = v50;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v45, -1, -1);
    MEMORY[0x2530A5A40](v23, -1, -1);
  }

  else
  {

    sub_252372288(v9, &qword_27F4DB278, &unk_2526959A0);
    sub_252372288(v12, &qword_27F4DB278, &unk_2526959A0);
    sub_252372288(v15, &qword_27F4DB278, &unk_2526959A0);
    sub_252372288(v18, &qword_27F4DB278, &unk_2526959A0);
  }
}

void sub_2523F29FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v54 = &v50[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB498, &unk_2526A6330);
  MEMORY[0x28223BE20](v6);
  v8 = &v50[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v50[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v50[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v50[-v16];
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v18 = sub_2526905A0();
  __swift_project_value_buffer(v18, qword_27F4E4B18);
  sub_25237153C(a1, v17, &qword_27F4DB498, &unk_2526A6330);
  sub_25237153C(a1, v14, &qword_27F4DB498, &unk_2526A6330);
  sub_25237153C(a2, v11, &qword_27F4DB498, &unk_2526A6330);
  sub_25237153C(a2, v8, &qword_27F4DB498, &unk_2526A6330);
  v19 = sub_252690580();
  v20 = sub_252692EF0();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v59 = v53;
    *v21 = 136447490;
    v52 = v19;
    *(v21 + 4) = sub_2525BDA90(0xD00000000000001BLL, 0x80000002526AE760, &v59);
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_2525BDA90(0xD00000000000001BLL, 0x80000002526AE760, &v59);
    *(v21 + 22) = 2080;
    v22 = &v17[*(v6 + 40)];
    v23 = v22[1];
    v24 = v22[2];
    v25 = v22[3];
    v55 = *v22;
    v56 = v23;
    v57 = v24;
    v58 = v25;
    sub_2523E165C(v55, v23, v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB4B8, &qword_252695A50);
    v26 = sub_252692C00();
    v28 = v27;
    sub_252372288(v17, &qword_27F4DB498, &unk_2526A6330);
    v29 = sub_2525BDA90(v26, v28, &v59);

    *(v21 + 24) = v29;
    *(v21 + 32) = 2082;
    v30 = &v14[*(v6 + 36)];
    v51 = v20;
    v31 = v54;
    sub_2523F3CE0(v30, v54, type metadata accessor for AccessoryControl.ValueDestination);
    v32 = sub_2523F3A38(v31);
    v34 = v33;
    sub_252372288(v14, &qword_27F4DB498, &unk_2526A6330);
    v35 = sub_2525BDA90(v32, v34, &v59);

    *(v21 + 34) = v35;
    *(v21 + 42) = 2080;
    v36 = &v11[*(v6 + 40)];
    v37 = v36[1];
    v38 = v36[2];
    v39 = v36[3];
    v55 = *v36;
    v56 = v37;
    v57 = v38;
    v58 = v39;
    sub_2523E165C(v55, v37, v38, v39);
    v40 = sub_252692C00();
    v42 = v41;
    sub_252372288(v11, &qword_27F4DB498, &unk_2526A6330);
    v43 = sub_2525BDA90(v40, v42, &v59);

    *(v21 + 44) = v43;
    *(v21 + 52) = 2082;
    sub_2523F3CE0(&v8[*(v6 + 36)], v31, type metadata accessor for AccessoryControl.ValueDestination);
    v44 = sub_2523F3A38(v31);
    v46 = v45;
    sub_252372288(v8, &qword_27F4DB498, &unk_2526A6330);
    v47 = sub_2525BDA90(v44, v46, &v59);

    *(v21 + 54) = v47;
    v48 = v52;
    _os_log_impl(&dword_252309000, v52, v51, "Tried to merge two bindings of %{public}s and %{public}s with different targets, which is disallowed:\nlhs: %s - %{public}s, rhs: %s - %{public}s", v21, 0x3Eu);
    v49 = v53;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v49, -1, -1);
    MEMORY[0x2530A5A40](v21, -1, -1);
  }

  else
  {

    sub_252372288(v8, &qword_27F4DB498, &unk_2526A6330);
    sub_252372288(v11, &qword_27F4DB498, &unk_2526A6330);
    sub_252372288(v14, &qword_27F4DB498, &unk_2526A6330);
    sub_252372288(v17, &qword_27F4DB498, &unk_2526A6330);
  }
}

void sub_2523F2F28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB440, &qword_2526A1150);
  MEMORY[0x28223BE20](v51);
  v7 = &v46[-v6];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB450, &unk_252695990);
  MEMORY[0x28223BE20](v52);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v46[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v46[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v46[-v17];
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v19 = sub_2526905A0();
  __swift_project_value_buffer(v19, qword_27F4E4B18);
  sub_25237153C(a1, v18, &qword_27F4DB450, &unk_252695990);
  sub_25237153C(a1, v15, &qword_27F4DB450, &unk_252695990);
  sub_25237153C(a2, v12, &qword_27F4DB450, &unk_252695990);
  sub_25237153C(a2, v9, &qword_27F4DB450, &unk_252695990);
  v20 = sub_252690580();
  v21 = sub_252692EF0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = v9;
    v23 = v22;
    v50 = swift_slowAlloc();
    v54 = v50;
    *v23 = 136447490;
    v49 = v20;
    *(v23 + 4) = sub_2525BDA90(0xD00000000000001BLL, 0x80000002526AE780, &v54);
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_2525BDA90(0xD00000000000001BLL, 0x80000002526AE780, &v54);
    *(v23 + 22) = 2080;
    v47 = v21;
    v24 = v52;
    sub_25237153C(&v18[*(v52 + 40)], v7, &qword_27F4DB440, &qword_2526A1150);
    v25 = sub_252692C00();
    v27 = v26;
    sub_252372288(v18, &qword_27F4DB450, &unk_252695990);
    v28 = sub_2525BDA90(v25, v27, &v54);

    *(v23 + 24) = v28;
    *(v23 + 32) = 2082;
    v29 = v53;
    sub_2523F3CE0(&v15[*(v24 + 36)], v53, type metadata accessor for AccessoryControl.ValueDestination);
    v30 = sub_2523F3A38(v29);
    v32 = v31;
    sub_252372288(v15, &qword_27F4DB450, &unk_252695990);
    v33 = sub_2525BDA90(v30, v32, &v54);

    *(v23 + 34) = v33;
    *(v23 + 42) = 2080;
    sub_25237153C(&v12[*(v24 + 40)], v7, &qword_27F4DB440, &qword_2526A1150);
    v34 = sub_252692C00();
    v36 = v35;
    sub_252372288(v12, &qword_27F4DB450, &unk_252695990);
    v37 = sub_2525BDA90(v34, v36, &v54);

    *(v23 + 44) = v37;
    *(v23 + 52) = 2082;
    v38 = *(v24 + 36);
    v39 = v48;
    sub_2523F3CE0(&v48[v38], v29, type metadata accessor for AccessoryControl.ValueDestination);
    v40 = sub_2523F3A38(v29);
    v42 = v41;
    sub_252372288(v39, &qword_27F4DB450, &unk_252695990);
    v43 = sub_2525BDA90(v40, v42, &v54);

    *(v23 + 54) = v43;
    v44 = v49;
    _os_log_impl(&dword_252309000, v49, v47, "Tried to merge two bindings of %{public}s and %{public}s with different targets, which is disallowed:\nlhs: %s - %{public}s, rhs: %s - %{public}s", v23, 0x3Eu);
    v45 = v50;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v45, -1, -1);
    MEMORY[0x2530A5A40](v23, -1, -1);
  }

  else
  {

    sub_252372288(v9, &qword_27F4DB450, &unk_252695990);
    sub_252372288(v12, &qword_27F4DB450, &unk_252695990);
    sub_252372288(v15, &qword_27F4DB450, &unk_252695990);
    sub_252372288(v18, &qword_27F4DB450, &unk_252695990);
  }
}

void sub_2523F34B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v4 - 8);
  v53 = &v46[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2E8, &unk_2526960A0);
  MEMORY[0x28223BE20](v51);
  v7 = &v46[-v6];
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2F8, &unk_252695980);
  MEMORY[0x28223BE20](v52);
  v9 = &v46[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v46[-v11];
  MEMORY[0x28223BE20](v13);
  v15 = &v46[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v46[-v17];
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v19 = sub_2526905A0();
  __swift_project_value_buffer(v19, qword_27F4E4B18);
  sub_25237153C(a1, v18, &qword_27F4DB2F8, &unk_252695980);
  sub_25237153C(a1, v15, &qword_27F4DB2F8, &unk_252695980);
  sub_25237153C(a2, v12, &qword_27F4DB2F8, &unk_252695980);
  sub_25237153C(a2, v9, &qword_27F4DB2F8, &unk_252695980);
  v20 = sub_252690580();
  v21 = sub_252692EF0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v48 = v9;
    v23 = v22;
    v50 = swift_slowAlloc();
    v54 = v50;
    *v23 = 136447490;
    v49 = v20;
    *(v23 + 4) = sub_2525BDA90(0xD00000000000001ALL, 0x80000002526AE7A0, &v54);
    *(v23 + 12) = 2082;
    *(v23 + 14) = sub_2525BDA90(0xD00000000000001ALL, 0x80000002526AE7A0, &v54);
    *(v23 + 22) = 2080;
    v47 = v21;
    v24 = v52;
    sub_25237153C(&v18[*(v52 + 40)], v7, &qword_27F4DB2E8, &unk_2526960A0);
    v25 = sub_252692C00();
    v27 = v26;
    sub_252372288(v18, &qword_27F4DB2F8, &unk_252695980);
    v28 = sub_2525BDA90(v25, v27, &v54);

    *(v23 + 24) = v28;
    *(v23 + 32) = 2082;
    v29 = v53;
    sub_2523F3CE0(&v15[*(v24 + 36)], v53, type metadata accessor for AccessoryControl.ValueDestination);
    v30 = sub_2523F3A38(v29);
    v32 = v31;
    sub_252372288(v15, &qword_27F4DB2F8, &unk_252695980);
    v33 = sub_2525BDA90(v30, v32, &v54);

    *(v23 + 34) = v33;
    *(v23 + 42) = 2080;
    sub_25237153C(&v12[*(v24 + 40)], v7, &qword_27F4DB2E8, &unk_2526960A0);
    v34 = sub_252692C00();
    v36 = v35;
    sub_252372288(v12, &qword_27F4DB2F8, &unk_252695980);
    v37 = sub_2525BDA90(v34, v36, &v54);

    *(v23 + 44) = v37;
    *(v23 + 52) = 2082;
    v38 = *(v24 + 36);
    v39 = v48;
    sub_2523F3CE0(&v48[v38], v29, type metadata accessor for AccessoryControl.ValueDestination);
    v40 = sub_2523F3A38(v29);
    v42 = v41;
    sub_252372288(v39, &qword_27F4DB2F8, &unk_252695980);
    v43 = sub_2525BDA90(v40, v42, &v54);

    *(v23 + 54) = v43;
    v44 = v49;
    _os_log_impl(&dword_252309000, v49, v47, "Tried to merge two bindings of %{public}s and %{public}s with different targets, which is disallowed:\nlhs: %s - %{public}s, rhs: %s - %{public}s", v23, 0x3Eu);
    v45 = v50;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v45, -1, -1);
    MEMORY[0x2530A5A40](v23, -1, -1);
  }

  else
  {

    sub_252372288(v9, &qword_27F4DB2F8, &unk_252695980);
    sub_252372288(v12, &qword_27F4DB2F8, &unk_252695980);
    sub_252372288(v15, &qword_27F4DB2F8, &unk_252695980);
    sub_252372288(v18, &qword_27F4DB2F8, &unk_252695980);
  }
}

uint64_t sub_2523F3A38(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for AccessoryControl.ValueDestination(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2523F3CE0(a1, v8, type metadata accessor for AccessoryControl.ValueDestination);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_2523F3D48(a1, type metadata accessor for AccessoryControl.ValueDestination);
    return 0x446F546574697277;
  }

  else
  {
    sub_2523F3DA8(v8, v5, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
    v14[0] = 0;
    v14[1] = 0xE000000000000000;
    sub_252693210();

    v15 = 0x69286D6F74737563;
    v16 = 0xEA00000000003A64;
    sub_25268DA10();
    sub_2523C70B8();
    v10 = sub_252693370();
    MEMORY[0x2530A4800](v10);

    MEMORY[0x2530A4800](0x656C646E6168202CLL, 0xEB00000000203A72);
    sub_2523C3820(v5, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB568, &qword_252695A28);
    v11 = sub_252692C00();
    MEMORY[0x2530A4800](v11);

    v9 = v15;
    sub_2523F3D48(a1, type metadata accessor for AccessoryControl.ValueDestination);
    sub_2523F3D48(v5, type metadata accessor for AccessoryControl.AnyWriteSpecificationHandler);
  }

  return v9;
}

uint64_t sub_2523F3CE0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523F3D48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2523F3DA8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2523F3E10@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB230, &unk_2526A9010);
  MEMORY[0x28223BE20](v3 - 8);
  v60 = &v55 - v4;
  v5 = sub_25268FFD0();
  v57 = *(v5 - 8);
  v58 = v5;
  MEMORY[0x28223BE20](v5);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25268F4D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208, &unk_252695180);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v65 = &v55 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v55 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v64 = &v55 - v20;
  v21 = *(v8 + 104);
  v21(v10, *MEMORY[0x277D162D8], v7, v19);
  v62 = type metadata accessor for HAPControlSolver.Source(0);
  sub_25268FD80();
  v22 = *(v8 + 8);
  v22(v10, v7);
  (v21)(v10, *MEMORY[0x277D160B8], v7);
  v61 = v17;
  sub_25268FD80();
  v22(v10, v7);
  (v21)(v10, *MEMORY[0x277D16168], v7);
  v23 = a1;
  v24 = v65;
  sub_25268FD80();
  v22(v10, v7);
  v25 = sub_25268F9E0();
  v26 = *(v25 - 8);
  v27 = *(v26 + 48);
  v28 = v27(v24, 1, v25);
  if (v27(v64, 1, v25) == 1)
  {
    v29 = 0;
    v30 = v61;
  }

  else
  {
    v30 = v61;
    v29 = v27(v61, 1, v25) != 1;
  }

  v31 = v62;
  v32 = sub_25268F160();
  if (v29 || v28 != 1)
  {
    v34 = 0x10000;
    if (!v29)
    {
      v34 = 0;
    }

    v35 = *(v23 + *(v31 + 72));
    v67 = 1;
    v66 = 1;
    v36 = v34 & 0xFFFFFFFFFFFFFFFELL | ((v28 != 1) << 8) | v32 & 1;
    if (v28 == 1)
    {

      sub_252372288(v65, &qword_27F4DB208, &unk_252695180);
      sub_252372288(v64, &qword_27F4DB208, &unk_252695180);
      v41 = 0;
LABEL_17:
      v44 = v41 + (v66 << 16);
      v45 = v63;
      *v63 = v36 & 0xFFFFFFFFFFFFLL | (v67 << 48);
      v45[1] = v44;
      v45[2] = v35;
      return sub_252372288(v30, &qword_27F4DB208, &unk_252695180);
    }

    v37 = v59;
    sub_25237153C(v65, v59, &qword_27F4DB208, &unk_252695180);
    v38 = v27(v37, 1, v25);
    v62 = v35;

    if (v38 == 1)
    {
      sub_252372288(v37, &qword_27F4DB208, &unk_252695180);
      v39 = sub_252690050();
      v40 = v60;
      (*(*(v39 - 8) + 56))(v60, 1, 1, v39);
    }

    else
    {
      v40 = v60;
      sub_25268F9D0();
      (*(v26 + 8))(v37, v25);
      v42 = sub_252690050();
      v43 = *(v42 - 8);
      if ((*(v43 + 48))(v40, 1, v42) != 1)
      {
        if ((*(v43 + 88))(v40, v42) == *MEMORY[0x277D16CC8])
        {
          (*(v43 + 96))(v40, v42);
          v48 = v56;
          v47 = v57;
          v49 = v58;
          (*(v57 + 32))(v56, v40, v58);
          v50 = sub_25268FFA0();
          if (v50 >= 0xFFFF)
          {
            v51 = 0xFFFFLL;
          }

          else
          {
            v51 = v50;
          }

          v41 = v51 & ~(v51 >> 63);
          v66 = 0;
          v52 = sub_25268FFB0();
          (*(v47 + 8))(v48, v49);
          if (v52 >= 0xFFFF)
          {
            v53 = 0xFFFFLL;
          }

          else
          {
            v53 = v52;
          }

          v54 = v53 & ~(v53 >> 63);
          sub_252372288(v65, &qword_27F4DB208, &unk_252695180);
          sub_252372288(v64, &qword_27F4DB208, &unk_252695180);
          v36 |= v54 << 32;
          v67 = 0;
          goto LABEL_16;
        }

        sub_252372288(v65, &qword_27F4DB208, &unk_252695180);
        sub_252372288(v64, &qword_27F4DB208, &unk_252695180);
        (*(v43 + 8))(v40, v42);
LABEL_15:
        v41 = 0;
LABEL_16:
        v35 = v62;
        goto LABEL_17;
      }
    }

    sub_252372288(v65, &qword_27F4DB208, &unk_252695180);
    sub_252372288(v64, &qword_27F4DB208, &unk_252695180);
    sub_252372288(v40, &qword_27F4DB230, &unk_2526A9010);
    goto LABEL_15;
  }

  sub_252372288(v65, &qword_27F4DB208, &unk_252695180);
  sub_252372288(v64, &qword_27F4DB208, &unk_252695180);
  v33 = v63;
  v63[1] = 0;
  v33[2] = 0;
  *v33 = 0;
  return sub_252372288(v30, &qword_27F4DB208, &unk_252695180);
}

uint64_t sub_2523F45C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v183 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v3 - 8);
  v176 = &v153 - v4;
  v178 = sub_25268ED20();
  v185 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v6 = &v153 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v155 = &v153 - v8;
  MEMORY[0x28223BE20](v9);
  v157 = &v153 - v10;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v162);
  v12 = &v153 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v161 = &v153 - v14;
  MEMORY[0x28223BE20](v15);
  v156 = &v153 - v16;
  MEMORY[0x28223BE20](v17);
  v158 = &v153 - v18;
  MEMORY[0x28223BE20](v19);
  v163 = (&v153 - v20);
  MEMORY[0x28223BE20](v21);
  v165 = &v153 - v22;
  MEMORY[0x28223BE20](v23);
  v175 = &v153 - v24;
  MEMORY[0x28223BE20](v25);
  v166 = &v153 - v26;
  MEMORY[0x28223BE20](v27);
  v174 = &v153 - v28;
  MEMORY[0x28223BE20](v29);
  v172 = &v153 - v30;
  MEMORY[0x28223BE20](v31);
  v179 = (&v153 - v32);
  MEMORY[0x28223BE20](v33);
  v35 = &v153 - v34;
  MEMORY[0x28223BE20](v36);
  v160 = (&v153 - v37);
  MEMORY[0x28223BE20](v38);
  v188 = (&v153 - v39);
  MEMORY[0x28223BE20](v40);
  v184 = (&v153 - v41);
  v42 = sub_25268F4D0();
  v43 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v45 = &v153 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB208, &unk_252695180);
  MEMORY[0x28223BE20](v46 - 8);
  v171 = &v153 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v48);
  v159 = &v153 - v49;
  MEMORY[0x28223BE20](v50);
  v170 = &v153 - v51;
  MEMORY[0x28223BE20](v52);
  v186 = &v153 - v53;
  MEMORY[0x28223BE20](v54);
  v56 = &v153 - v55;
  MEMORY[0x28223BE20](v57);
  v59 = &v153 - v58;
  sub_2523F3E10(a1, &v189);
  if (!v190)
  {
    v72 = type metadata accessor for AccessoryControl.ColorState(0);
    v73 = *(*(v72 - 8) + 56);
    v74 = v72;
    v75 = v183;

    return v73(v75, 1, 1, v74);
  }

  v167 = v190;
  v154 = v6;
  v168 = v35;
  v164 = v12;
  v187 = v189;
  v60 = *MEMORY[0x277D162D8];
  v182 = *(v43 + 104);
  v182(v45, v60, v42);
  v169 = type metadata accessor for HAPControlSolver.Source(0);
  v177 = v59;
  sub_25268FD80();
  v61 = *(v43 + 8);
  v61(v45, v42);
  v62 = v182;
  v182(v45, *MEMORY[0x277D160B8], v42);
  v173 = v56;
  sub_25268FD80();
  v61(v45, v42);
  v62(v45, *MEMORY[0x277D16168], v42);
  sub_25268FD80();
  v61(v45, v42);
  v180 = a1;
  v63 = sub_2523F5D3C();
  v64 = (v185 + 56);
  v65 = *(v185 + 56);
  v66 = v178;
  v65(v184, 1, 1, v178);
  v67 = v66;
  v181 = v65;
  v182 = v64;
  v65(v188, 1, 1, v66);
  if ((v187 & 0x10000) != 0)
  {
    v68 = v170;
    sub_25237153C(v177, v170, &qword_27F4DB208, &unk_252695180);
    v69 = sub_25268F9E0();
    v70 = *(v69 - 8);
    v71 = *(v70 + 48);
    if (v71(v68, 1, v69) == 1)
    {
LABEL_4:
      sub_252372288(v68, &qword_27F4DB208, &unk_252695180);
      goto LABEL_9;
    }

    v77 = sub_25268F950();
    v79 = v78;
    v80 = *(v70 + 8);
    v80(v68, v69);
    if ((v79 & 1) == 0)
    {
      v68 = v159;
      sub_25237153C(v173, v159, &qword_27F4DB208, &unk_252695180);
      if (v71(v68, 1, v69) == 1)
      {
        goto LABEL_4;
      }

      v111 = sub_25268F950();
      v113 = v112;
      v80(v68, v69);
      if ((v113 & 1) == 0)
      {
        v114 = v184;
        sub_252372288(v184, &qword_27F4DB2A8, &unk_2526960B0);
        *&v115.f64[0] = v77;
        *&v115.f64[1] = v111;
        *v114 = vdivq_f64(v115, xmmword_252695320);
        (*(v185 + 104))(v114, *MEMORY[0x277D15B38], v67);
        v181(v114, 0, 1, v67);
      }
    }
  }

LABEL_9:
  v81 = v67;
  v82 = v168;
  v83 = v185;
  if ((v187 & 0x100) != 0)
  {
    v84 = v171;
    sub_25237153C(v186, v171, &qword_27F4DB208, &unk_252695180);
    v85 = sub_25268F9E0();
    v86 = *(v85 - 8);
    if ((*(v86 + 48))(v84, 1, v85) == 1)
    {
      sub_252372288(v84, &qword_27F4DB208, &unk_252695180);
    }

    else
    {
      v87 = sub_25268F9C0();
      v89 = v88;
      (*(v86 + 8))(v84, v85);
      if ((v89 & 1) == 0)
      {
        v90 = v188;
        sub_252372288(v188, &qword_27F4DB2A8, &unk_2526960B0);
        v91 = 0xFFFFLL;
        if (v87 < 0xFFFF)
        {
          v91 = v87;
        }

        v92 = v160;
        *v160 = v91 & ~(v91 >> 63);
        (*(v83 + 104))(v92, *MEMORY[0x277D15B28], v81);
        v181(v92, 0, 1, v81);
        sub_2523714D4(v92, v90, &qword_27F4DB2A8, &unk_2526960B0);
      }
    }
  }

  v181(v82, 1, 1, v81);
  v93 = v188;
  v94 = v179;
  sub_25237153C(v188, v179, &qword_27F4DB2A8, &unk_2526960B0);
  v95 = *(v83 + 48);
  v96 = v95(v94, 1, v81);
  sub_252372288(v94, &qword_27F4DB2A8, &unk_2526960B0);
  v97 = v180;
  v98 = v184;
  v171 = v83 + 48;
  if (v96 != 1)
  {
    v99 = v172;
    sub_25237153C(v184, v172, &qword_27F4DB2A8, &unk_2526960B0);
    v100 = v95;
    if (v95(v99, 1, v81) == 1)
    {
      sub_252372288(v82, &qword_27F4DB2A8, &unk_2526960B0);

      sub_252372288(v99, &qword_27F4DB2A8, &unk_2526960B0);
      v101 = v188;
      sub_25237153C(v188, v82, &qword_27F4DB2A8, &unk_2526960B0);
      goto LABEL_28;
    }

    sub_252372288(v99, &qword_27F4DB2A8, &unk_2526960B0);
    v93 = v188;
  }

  v102 = v174;
  sub_25237153C(v93, v174, &qword_27F4DB2A8, &unk_2526960B0);
  v103 = v95(v102, 1, v81);
  sub_252372288(v102, &qword_27F4DB2A8, &unk_2526960B0);
  v104 = v175;
  if (v103 == 1)
  {
    v105 = v166;
    sub_25237153C(v98, v166, &qword_27F4DB2A8, &unk_2526960B0);
    if (v95(v105, 1, v81) != 1)
    {
      sub_252372288(v82, &qword_27F4DB2A8, &unk_2526960B0);

      sub_252372288(v105, &qword_27F4DB2A8, &unk_2526960B0);
      sub_25237153C(v98, v82, &qword_27F4DB2A8, &unk_2526960B0);
      v101 = v188;
      v106 = v169;
      v97 = v180;
      v100 = v95;
      if ((v187 & 1) == 0)
      {
        goto LABEL_52;
      }

      goto LABEL_45;
    }

    sub_252372288(v105, &qword_27F4DB2A8, &unk_2526960B0);
    v93 = v188;
  }

  sub_25237153C(v93, v104, &qword_27F4DB2A8, &unk_2526960B0);
  v101 = v93;
  v100 = v95;
  if (v95(v104, 1, v81) == 1)
  {

    sub_252372288(v104, &qword_27F4DB2A8, &unk_2526960B0);
    v106 = v169;
    v97 = v180;
    if ((v187 & 1) == 0)
    {
      goto LABEL_52;
    }

    goto LABEL_45;
  }

  sub_252372288(v104, &qword_27F4DB2A8, &unk_2526960B0);
  v107 = v165;
  sub_25237153C(v98, v165, &qword_27F4DB2A8, &unk_2526960B0);
  v108 = v95(v107, 1, v81);
  v109 = v180;
  if (v108 == 1)
  {

    sub_252372288(v107, &qword_27F4DB2A8, &unk_2526960B0);
    v97 = v109;
    goto LABEL_28;
  }

  sub_252372288(v107, &qword_27F4DB2A8, &unk_2526960B0);
  v110 = v163;
  sub_25237153C(v101, v163, &qword_27F4DB2A8, &unk_2526960B0);
  v179 = v95;
  if (v95(v110, 1, v81) == 1)
  {
    sub_252372288(v82, &qword_27F4DB2A8, &unk_2526960B0);

    sub_252372288(v110, &qword_27F4DB2A8, &unk_2526960B0);
    v97 = v109;
LABEL_42:
    v100 = v179;
    v106 = v169;
    goto LABEL_43;
  }

  v116 = v185;
  v97 = v109;
  if ((*(v185 + 88))(v110, v81) != *MEMORY[0x277D15B28])
  {
    sub_252372288(v82, &qword_27F4DB2A8, &unk_2526960B0);

    (*(v116 + 8))(v110, v81);
    goto LABEL_42;
  }

  (*(v116 + 96))(v110, v81);
  v117 = *v110;

  v100 = v179;
  v106 = v169;
  if ((v187 & 0x1000000000000) != 0 || v117 > WORD2(v187))
  {
    sub_252372288(v82, &qword_27F4DB2A8, &unk_2526960B0);
LABEL_43:
    v118 = v101;
    goto LABEL_44;
  }

  v143 = v158;
  sub_25237153C(v101, v158, &qword_27F4DB2A8, &unk_2526960B0);
  if (v100(v143, 1, v81) == 1)
  {
    sub_252372288(v82, &qword_27F4DB2A8, &unk_2526960B0);
    sub_252372288(v143, &qword_27F4DB2A8, &unk_2526960B0);
  }

  else
  {
    v144 = v98;
    v145 = v157;
    v146 = v143;
    v147 = *(v185 + 32);
    v147(v157, v146, v81);
    v148 = v144;
    v149 = v156;
    sub_25237153C(v148, v156, &qword_27F4DB2A8, &unk_2526960B0);
    if (v100(v149, 1, v81) == 1)
    {
      (*(v185 + 8))(v145, v81);
      sub_252372288(v82, &qword_27F4DB2A8, &unk_2526960B0);
      sub_252372288(v149, &qword_27F4DB2A8, &unk_2526960B0);
      v98 = v184;
      v101 = v188;
    }

    else
    {
      v150 = v155;
      v147(v155, v149, v81);
      v151 = v145;
      LODWORD(v178) = sub_25248B14C(v150);
      v152 = *(v185 + 8);
      v152(v150, v81);
      sub_252372288(v82, &qword_27F4DB2A8, &unk_2526960B0);
      if (v178)
      {
        v147(v82, v151, v81);
        v181(v82, 0, 1, v81);
        v98 = v184;
        v101 = v188;
LABEL_28:
        v106 = v169;
        if ((v187 & 1) == 0)
        {
          goto LABEL_52;
        }

        goto LABEL_45;
      }

      v152(v151, v81);
      v98 = v184;
      v101 = v188;
      v106 = v169;
    }
  }

  v118 = v98;
LABEL_44:
  sub_25237153C(v118, v82, &qword_27F4DB2A8, &unk_2526960B0);
  if ((v187 & 1) == 0)
  {
LABEL_52:
    sub_252372288(v101, &qword_27F4DB2A8, &unk_2526960B0);
    sub_252372288(v98, &qword_27F4DB2A8, &unk_2526960B0);
    sub_252372288(v186, &qword_27F4DB208, &unk_252695180);
    sub_252372288(v173, &qword_27F4DB208, &unk_252695180);
    sub_252372288(v177, &qword_27F4DB208, &unk_252695180);
    v128 = v176;
LABEL_53:
    v129 = v164;
    sub_2523714D4(v82, v164, &qword_27F4DB2A8, &unk_2526960B0);
    v181(v128, 1, 1, v81);
    v130 = type metadata accessor for AccessoryControl.ColorState(0);
    v131 = v128 + *(v130 + 20);
    sub_2523F62D8(v129, v128);
    *v131 = v63;
    *(v131 + 8) = 0;
    v132 = *(*(v130 - 8) + 56);
    v132(v128, 0, 1, v130);
    if ((*(v97 + *(v106 + 40)) & 1) == 0)
    {
      sub_252372288(v128, &qword_27F4DB2A0, &qword_25269E4A0);
      v132(v128, 1, 1, v130);
    }

    return sub_2523714D4(v128, v183, &qword_27F4DB2A0, &qword_25269E4A0);
  }

LABEL_45:
  if ((sub_25268F150() & 1) == 0)
  {
    goto LABEL_52;
  }

  if ((v187 & 0x100) != 0)
  {
    sub_252372288(v101, &qword_27F4DB2A8, &unk_2526960B0);
    sub_252372288(v98, &qword_27F4DB2A8, &unk_2526960B0);
    sub_252372288(v186, &qword_27F4DB208, &unk_252695180);
    sub_252372288(v173, &qword_27F4DB208, &unk_252695180);
    sub_252372288(v177, &qword_27F4DB208, &unk_252695180);
    v133 = v161;
    sub_2523714D4(v82, v161, &qword_27F4DB2A8, &unk_2526960B0);
    if (v100(v133, 1, v81) == 1)
    {
      v134 = v154;
      *v154 = 370;
      v135 = v185;
      (*(v185 + 104))(v134, *MEMORY[0x277D15B28], v81);
      v136 = v135;
      v137 = v100(v133, 1, v81) == 1;
      v138 = v133;
      v128 = v176;
      if (!v137)
      {
        sub_252372288(v138, &qword_27F4DB2A8, &unk_2526960B0);
      }
    }

    else
    {
      v136 = v185;
      v134 = v154;
      (*(v185 + 32))(v154, v133, v81);
      v128 = v176;
    }

    v139 = swift_allocBox();
    v141 = v140;
    (*(v136 + 32))(v140, v134, v81);
    v142 = v181;
    v181(v141, 0, 1, v81);
    *v82 = v139;
    (*(v136 + 104))(v82, *MEMORY[0x277D15B30], v81);
    v142(v82, 0, 1, v81);
    goto LABEL_53;
  }

  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v119 = sub_2526905A0();
  __swift_project_value_buffer(v119, qword_27F4E4B18);
  v120 = sub_252690580();
  v121 = sub_252692EF0();
  v122 = os_log_type_enabled(v120, v121);
  v123 = v177;
  v124 = v173;
  if (v122)
  {
    v125 = swift_slowAlloc();
    *v125 = 0;
    _os_log_impl(&dword_252309000, v120, v121, "Service says natural light is enabled, but doesn't support Color Temperature values. This should not be possible and is not supported", v125, 2u);
    v126 = v125;
    v101 = v188;
    MEMORY[0x2530A5A40](v126, -1, -1);
  }

  sub_252372288(v82, &qword_27F4DB2A8, &unk_2526960B0);
  sub_252372288(v101, &qword_27F4DB2A8, &unk_2526960B0);
  sub_252372288(v98, &qword_27F4DB2A8, &unk_2526960B0);
  sub_252372288(v186, &qword_27F4DB208, &unk_252695180);
  sub_252372288(v124, &qword_27F4DB208, &unk_252695180);
  sub_252372288(v123, &qword_27F4DB208, &unk_252695180);
  v127 = type metadata accessor for AccessoryControl.ColorState(0);
  return (*(*(v127 - 8) + 56))(v183, 1, 1, v127);
}

double sub_2523F5D3C()
{
  v0 = sub_25268F4D0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v1 + 104);
  v5(v4, *MEMORY[0x277D160B0], v0, v2);
  type metadata accessor for HAPControlSolver.Source(0);
  v6 = sub_25268FE70();
  v7 = *(v1 + 8);
  v7(v4, v0);
  (v5)(v4, *MEMORY[0x277D160A8], v0);
  v8 = COERCE_DOUBLE(sub_25268FEA0());
  v10 = v9;
  v7(v4, v0);
  result = 0.0;
  if ((v10 & 1) == 0)
  {
    if ((v6 & 1) == 0)
    {
      return result;
    }

    result = v8;
    return result / 100.0;
  }

  if (v6)
  {
    return result / 100.0;
  }

  return result;
}

uint64_t sub_2523F5EC0(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29 - v5;
  v7 = sub_25268ED20();
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A0, &qword_25269E4A0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - v14;
  v16 = type metadata accessor for AccessoryControl.ColorState(0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a2;
  type metadata accessor for HAPControlSolver.Source(0);
  v21 = sub_25268E510();

  if (v20 != 2)
  {
    sub_2523F45C4(a1, v15);
    if ((*(v17 + 48))(v15, 1, v16) == 1)
    {
      v23 = &qword_27F4DB2A0;
      v24 = &qword_25269E4A0;
      v25 = v15;
LABEL_6:
      sub_252372288(v25, v23, v24);
      return v21;
    }

    sub_2523F6218(v15, v19);
    sub_25237153C(v19, v6, &qword_27F4DB2A8, &unk_2526960B0);
    v27 = v29;
    v26 = v30;
    if ((*(v29 + 48))(v6, 1, v30) == 1)
    {
      sub_2523F627C(v19);
      v23 = &qword_27F4DB2A8;
      v24 = &unk_2526960B0;
      v25 = v6;
      goto LABEL_6;
    }

    (*(v27 + 32))(v12, v6, v26);
    (*(v27 + 16))(v9, v12, v26);
    v28 = sub_25248C4C8(v9);

    (*(v27 + 8))(v12, v26);
    sub_2523F627C(v19);
    return v28;
  }

  return result;
}

uint64_t sub_2523F6218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AccessoryControl.ColorState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2523F627C(uint64_t a1)
{
  v2 = type metadata accessor for AccessoryControl.ColorState(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2523F62D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB2A8, &unk_2526960B0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t AccessoryControl.HAPWriteSpecification.init(characteristicValueMap:localCharacteristicValueMap:profileUpdate:serviceIDs:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v9 = sub_2523F75C4(a1);

  *a5 = v9;
  if (a2)
  {
    v10 = sub_2523F75C4(a2);
  }

  else
  {
    v10 = 0;
  }

  a5[1] = v10;
  v11 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  result = sub_2523714D4(a3, a5 + *(v11 + 24), &qword_27F4DB8B8, &unk_2526963F0);
  *(a5 + *(v11 + 28)) = a4;
  return result;
}

uint64_t AccessoryControl.WriteSpecification.init(hap:matter:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  v6 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
  v7 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
  *(a3 + v7) = 0;
  sub_2523795D4(a1, a3);

  *(a3 + v7) = v5;
  return result;
}

uint64_t sub_2523F648C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v42 = a3;
  v5 = sub_25268E710();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v50 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v49 = &v42 - v9;
  v10 = sub_25256E828(MEMORY[0x277D84F90]);
  v11 = a2 + 56;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v43 = (v12 + 63) >> 6;
  v47 = a2;
  v48 = v6 + 16;
  v45 = (v6 + 8);
  v46 = v6;

  v15 = 0;
  v44 = a2 + 56;
  while (v14)
  {
    v17 = v5;
    v18 = v15;
LABEL_12:
    v19 = *(v46 + 72);
    v20 = *(v46 + 16);
    v21 = v49;
    v20(v49, *(v47 + 48) + v19 * (__clz(__rbit64(v14)) | (v18 << 6)), v17);
    v22 = v50;
    v23 = v21;
    v5 = v17;
    v20(v50, v23, v17);
    v24 = a1;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v51 = v10;
    v26 = sub_2523677AC(v22);
    v28 = v10[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_23;
    }

    v32 = v27;
    if (v10[3] >= v31)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = v26;
        sub_25236CC80();
        v26 = v40;
      }
    }

    else
    {
      sub_25236A8D4(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_2523677AC(v50);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_25;
      }
    }

    v14 &= v14 - 1;
    v10 = v51;
    if (v32)
    {
      a1 = v24;
      *(v51[7] + 8 * v26) = v24;

      v16 = *v45;
      (*v45)(v50, v17);
      v16(v49, v17);
    }

    else
    {
      v51[(v26 >> 6) + 8] |= 1 << v26;
      v34 = v10[6] + v26 * v19;
      v35 = v26;
      v36 = v50;
      v20(v34, v50, v5);
      a1 = v24;
      *(v10[7] + 8 * v35) = v24;
      v37 = *v45;
      (*v45)(v36, v5);
      v37(v49, v5);
      v38 = v10[2];
      v30 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v30)
      {
        goto LABEL_24;
      }

      v10[2] = v39;
    }

    v15 = v18;
    v11 = v44;
  }

  while (1)
  {
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v18 >= v43)
    {

      *v42 = v10;
      return result;
    }

    v14 = *(v11 + 8 * v18);
    ++v15;
    if (v14)
    {
      v17 = v5;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_2526933E0();
  __break(1u);
  return result;
}

uint64_t static AccessoryControl.MatterWriteSpecification.merge(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = MEMORY[0x277D84F98];
  v7 = MEMORY[0x277D84F98];
  v4 = *(result + 16);
  if (v4)
  {
    v5 = (result + 32);
    do
    {
      v6 = *v5;

      sub_2523FE1AC(&v7, &v6);

      ++v5;
      --v4;
    }

    while (v4);
    v3 = v7;
  }

  *a2 = v3;
  return result;
}

uint64_t static AccessoryControl.WriteSpecification.matter(commands:endpointPaths:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v14 - v7;
  v9 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);

  sub_2523F648C(a1, a2, &v15);
  v11 = v15;
  v10(a3, 1, 1, v9);
  v12 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);
  *&a3[v12] = 0;
  sub_2523795D4(v8, a3);

  *&a3[v12] = v11;
  return result;
}

uint64_t static AccessoryControl.WriteSpecification.merge(writeSpecifications:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = (&v42 - v8);
  MEMORY[0x28223BE20](v10);
  v12 = &v42 - v11;
  v50 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v13 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  MEMORY[0x28223BE20](v46);
  v48 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - v18;
  v20 = *(a1 + 16);
  if (v20)
  {
    v43 = v9;
    v44 = v6;
    v45 = a2;
    v21 = a1 + ((*(v17 + 80) + 32) & ~*(v17 + 80));
    v52 = *(v17 + 72);
    v47 = v13;
    v22 = (v13 + 48);
    v51 = MEMORY[0x277D84F90];
    v23 = v21;
    v24 = v20;
    do
    {
      sub_2523FEE00(v23, v19, type metadata accessor for AccessoryControl.WriteSpecification);
      sub_25237153C(v19, v12, &qword_27F4DB210, &unk_2526951B0);
      sub_2523FEE68(v19, type metadata accessor for AccessoryControl.WriteSpecification);
      if ((*v22)(v12, 1, v50) == 1)
      {
        sub_252372288(v12, &qword_27F4DB210, &unk_2526951B0);
      }

      else
      {
        sub_2523FF620(v12, v49, type metadata accessor for AccessoryControl.HAPWriteSpecification);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v25 = v51;
        }

        else
        {
          v25 = sub_252369264(0, v51[2] + 1, 1, v51);
        }

        v27 = v25[2];
        v26 = v25[3];
        if (v27 >= v26 >> 1)
        {
          v25 = sub_252369264((v26 > 1), v27 + 1, 1, v25);
        }

        v25[2] = v27 + 1;
        v28 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v51 = v25;
        sub_2523FF620(v49, v25 + v28 + *(v47 + 72) * v27, type metadata accessor for AccessoryControl.HAPWriteSpecification);
      }

      v23 += v52;
      --v24;
    }

    while (v24);
    v29 = v46;
    v13 = v47;
    v30 = *(v46 + 20);
    v31 = MEMORY[0x277D84F90];
    do
    {
      v32 = v48;
      sub_2523FEE00(v21, v48, type metadata accessor for AccessoryControl.WriteSpecification);
      v33 = *(v32 + v30);

      sub_2523FEE68(v32, type metadata accessor for AccessoryControl.WriteSpecification);
      if (v33)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v31 = sub_252368FE0(0, *(v31 + 2) + 1, 1, v31);
        }

        v35 = *(v31 + 2);
        v34 = *(v31 + 3);
        if (v35 >= v34 >> 1)
        {
          v31 = sub_252368FE0((v34 > 1), v35 + 1, 1, v31);
        }

        *(v31 + 2) = v35 + 1;
        *&v31[8 * v35 + 32] = v33;
      }

      v21 += v52;
      --v20;
    }

    while (v20);
    v6 = v44;
    a2 = v45;
    v9 = v43;
    v36 = v51;
    if (v51[2])
    {
      goto LABEL_21;
    }
  }

  else
  {
    v36 = MEMORY[0x277D84F90];
    v31 = MEMORY[0x277D84F90];
    v29 = v46;
    if (*(MEMORY[0x277D84F90] + 16))
    {
LABEL_21:
      sub_2523F7094(v36, v9);
      v37 = 0;
      goto LABEL_24;
    }
  }

  v37 = 1;
LABEL_24:

  v38 = *(v13 + 56);
  v38(v9, v37, 1, v50);
  if (*(v31 + 2))
  {
    static AccessoryControl.MatterWriteSpecification.merge(_:)(v31, &v53);

    v39 = v53;
  }

  else
  {

    v39 = 0;
  }

  sub_2523714D4(v9, v6, &qword_27F4DB210, &unk_2526951B0);
  v38(a2, 1, 1, v50);
  v40 = *(v29 + 20);
  *(a2 + v40) = 0;
  sub_2523795D4(v6, a2);

  *(a2 + v40) = v39;
  return result;
}

uint64_t AccessoryControl.WriteSpecification.matter.getter@<X0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20));
}

uint64_t AccessoryControl.WriteSpecification.matter.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for AccessoryControl.WriteSpecification(0) + 20);

  *(v1 + v3) = v2;
  return result;
}

uint64_t sub_2523F7094@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB8B8, &unk_2526963F0);
  MEMORY[0x28223BE20](v4 - 8);
  v31 = &v27 - v5;
  v6 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 16);
  v29 = a1;
  v30 = v11;
  v28 = v7;
  if (v10)
  {
    v27 = a2;
    v12 = (a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80)));
    v14 = *v12;
    v13 = v12[1];

    v32 = MEMORY[0x277D84FA0];
    v15 = *(v7 + 72);
    v16 = v10;
    do
    {
      sub_2523FEE00(v12, v9, type metadata accessor for AccessoryControl.HAPWriteSpecification);

      sub_2525C8928(v17);
      sub_2523FEE68(v9, type metadata accessor for AccessoryControl.HAPWriteSpecification);
      v12 = (v12 + v15);
      --v16;
    }

    while (v16);
    v18 = v32;
    a2 = v27;
  }

  else
  {
    v14 = sub_25256EA10(MEMORY[0x277D84F90]);
    v13 = 0;
    v18 = MEMORY[0x277D84FA0];
  }

  v19 = sub_2523F7B74(v14);

  if (v13)
  {
    v20 = sub_2523F7B74(v13);

    v21 = v30;
    if (v10)
    {
LABEL_8:
      v22 = v31;
      sub_25237153C(v29 + *(v21 + 24) + ((*(v28 + 80) + 32) & ~*(v28 + 80)), v31, &qword_27F4DB8B8, &unk_2526963F0);
      goto LABEL_11;
    }
  }

  else
  {
    v20 = 0;
    v21 = v30;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  v23 = sub_25268F140();
  v22 = v31;
  (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
LABEL_11:
  v24 = sub_2523F75C4(v19);

  *a2 = v24;
  if (v20)
  {
    v25 = sub_2523F75C4(v20);
  }

  else
  {
    v25 = 0;
  }

  a2[1] = v25;
  result = sub_2523714D4(v22, a2 + *(v21 + 24), &qword_27F4DB8B8, &unk_2526963F0);
  *(a2 + *(v21 + 28)) = v18;
  return result;
}

uint64_t sub_2523F7390()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  v3 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  __swift_allocate_value_buffer(v3, qword_27F4DB8A0);
  v4 = __swift_project_value_buffer(v3, qword_27F4DB8A0);
  v5 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v6 = *(*(v5 - 8) + 56);
  v6(v2, 1, 1, v5);
  v6(v4, 1, 1, v5);
  v7 = *(v3 + 20);
  *(v4 + v7) = 0;
  sub_2523795D4(v2, v4);
  *(v4 + v7) = 0;
}

uint64_t static AccessoryControl.WriteSpecification.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27F4DA998 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for AccessoryControl.WriteSpecification(0);
  v3 = __swift_project_value_buffer(v2, qword_27F4DB8A0);
  return sub_2523FEE00(v3, a1, type metadata accessor for AccessoryControl.WriteSpecification);
}

uint64_t AccessoryControl.HAPWriteSpecification.serviceIDs.getter()
{
  type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
}

uint64_t sub_2523F75C4(uint64_t a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB928, &unk_2526964D0);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9B8, &unk_2526A7D40);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - v3;
  v4 = sub_25268F4D0();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB920, &unk_2526964C0);
  MEMORY[0x28223BE20](v52);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v45 - v9;
  v59 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9C0, &unk_252696590);
    v10 = sub_2526932A0();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = v59 + 64;
  v12 = 1 << *(v59 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v59 + 64);
  v15 = (v12 + 63) >> 6;
  v48 = v58 + 16;
  v61 = v58 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v46 = v11;
  v47 = v15;
  v53 = v6;
  v49 = v10;
  while (v14)
  {
LABEL_15:
    v21 = __clz(__rbit64(v14)) | (v18 << 6);
    v22 = v58;
    v23 = v59;
    v24 = *(v59 + 48);
    v60 = *(v58 + 72);
    v25 = v50;
    (*(v58 + 16))(v50, v24 + v60 * v21, v4);
    v26 = *(v23 + 56) + 32 * v21;
    v27 = v52;
    sub_252371478(v26, v25 + *(v52 + 48));
    v28 = v51;
    sub_2523714D4(v25, v51, &qword_27F4DB920, &unk_2526964C0);
    v29 = *(v27 + 48);
    v30 = *(v57 + 48);
    v31 = *(v22 + 32);
    v32 = v4;
    v33 = v56;
    v31(v56, v28, v32);
    sub_25235E20C((v28 + v29), v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB8F8, &qword_252696468);
    swift_dynamicCast();
    v34 = v54;
    v35 = *(v55 + 48);
    v31(v54, v33, v32);
    v36 = &v33[v30];
    v4 = v32;
    sub_25235E20C(v36, &v34[v35]);
    v37 = v53;
    v31(v53, v34, v32);
    sub_25235E20C(&v34[v35], v62);
    v10 = v49;
    sub_252401010(&qword_27F4DAF28, MEMORY[0x277D16348], MEMORY[0x277D16350]);
    result = sub_252692B20();
    v38 = -1 << *(v10 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v16 + 8 * (v39 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v38) >> 6;
      v15 = v47;
      while (++v40 != v42 || (v41 & 1) == 0)
      {
        v43 = v40 == v42;
        if (v40 == v42)
        {
          v40 = 0;
        }

        v41 |= v43;
        v44 = *(v16 + 8 * v40);
        if (v44 != -1)
        {
          v19 = __clz(__rbit64(~v44)) + (v40 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v39) & ~*(v16 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    v15 = v47;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v31((*(v10 + 48) + v19 * v60), v37, v4);
    result = sub_25235E20C(v62, (*(v10 + 56) + 32 * v19));
    ++*(v10 + 16);
    v11 = v46;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2523F7B74(uint64_t a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB920, &unk_2526964C0);
  MEMORY[0x28223BE20](v57);
  v56 = &v45 - v2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB228, &qword_2526A92D0);
  MEMORY[0x28223BE20](v55);
  v54 = &v45 - v3;
  v4 = sub_25268F4D0();
  v58 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB928, &unk_2526964D0);
  MEMORY[0x28223BE20](v52);
  v51 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = &v45 - v9;
  v59 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAF50, &qword_2526A7D30);
    v10 = sub_2526932A0();
  }

  else
  {
    v10 = MEMORY[0x277D84F98];
  }

  v11 = v59 + 64;
  v12 = 1 << *(v59 + 32);
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  else
  {
    v13 = -1;
  }

  v14 = v13 & *(v59 + 64);
  v15 = (v12 + 63) >> 6;
  v48 = v58 + 16;
  v61 = v58 + 32;
  v16 = v10 + 64;

  v18 = 0;
  v46 = v11;
  v47 = v15;
  v53 = v6;
  v49 = v10;
  while (v14)
  {
LABEL_15:
    v21 = __clz(__rbit64(v14)) | (v18 << 6);
    v22 = v58;
    v23 = v59;
    v24 = *(v59 + 48);
    v60 = *(v58 + 72);
    v25 = v50;
    (*(v58 + 16))(v50, v24 + v60 * v21, v4);
    v26 = *(v23 + 56) + 32 * v21;
    v27 = v52;
    sub_252371478(v26, v25 + *(v52 + 48));
    v28 = v51;
    sub_2523714D4(v25, v51, &qword_27F4DB928, &unk_2526964D0);
    v29 = *(v27 + 48);
    v30 = *(v57 + 48);
    v31 = *(v22 + 32);
    v32 = v4;
    v33 = v56;
    v31(v56, v28, v32);
    sub_25235E20C((v28 + v29), v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB8F8, &qword_252696468);
    swift_dynamicCast();
    v34 = v54;
    v35 = *(v55 + 48);
    v31(v54, v33, v32);
    v36 = &v33[v30];
    v4 = v32;
    sub_25235E20C(v36, &v34[v35]);
    v37 = v53;
    v31(v53, v34, v32);
    sub_25235E20C(&v34[v35], v62);
    v10 = v49;
    sub_252401010(&qword_27F4DAF28, MEMORY[0x277D16348], MEMORY[0x277D16350]);
    result = sub_252692B20();
    v38 = -1 << *(v10 + 32);
    v39 = result & ~v38;
    v40 = v39 >> 6;
    if (((-1 << v39) & ~*(v16 + 8 * (v39 >> 6))) == 0)
    {
      v41 = 0;
      v42 = (63 - v38) >> 6;
      v15 = v47;
      while (++v40 != v42 || (v41 & 1) == 0)
      {
        v43 = v40 == v42;
        if (v40 == v42)
        {
          v40 = 0;
        }

        v41 |= v43;
        v44 = *(v16 + 8 * v40);
        if (v44 != -1)
        {
          v19 = __clz(__rbit64(~v44)) + (v40 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v19 = __clz(__rbit64((-1 << v39) & ~*(v16 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
    v15 = v47;
LABEL_9:
    v14 &= v14 - 1;
    *(v16 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
    v31((*(v10 + 48) + v19 * v60), v37, v4);
    result = sub_25235E20C(v62, (*(v10 + 56) + 32 * v19));
    ++*(v10 + 16);
    v11 = v46;
  }

  while (1)
  {
    v20 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v20 >= v15)
    {

      return v10;
    }

    v14 = *(v11 + 8 * v20);
    ++v18;
    if (v14)
    {
      v18 = v20;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t AccessoryControl.MatterWriteSpecification.commands.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_2523F8138(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  return MEMORY[0x2822009F8](sub_2523F815C, 0, 0);
}

uint64_t sub_2523F815C()
{
  v1 = v0[2];
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v7 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_2523F8288;
  v5 = v0[3];

  return v7(v5, v2, v3);
}

uint64_t sub_2523F8288()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2523F83BC, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2523F83BC()
{
  v1 = *(v0 + 32);
  if (v1)
  {
    v1(*(v0 + 56));
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2523F8434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[33] = a4;
  v6[36] = type metadata accessor for AccessoryControl.WriteSpecification(0);
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB938, &qword_252696508);
  v6[39] = swift_task_alloc();
  v7 = sub_25268E8D0();
  v6[40] = v7;
  v6[41] = *(v7 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB8B8, &unk_2526963F0);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v8 = sub_25268F140();
  v6[46] = v8;
  v6[47] = *(v8 - 8);
  v6[48] = swift_task_alloc();
  v6[49] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB940, &unk_252696510);
  v6[50] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB948, &unk_2526A81F0);
  v6[51] = swift_task_alloc();
  v6[52] = swift_task_alloc();
  v6[53] = swift_task_alloc();
  v9 = sub_25268FF40();
  v6[54] = v9;
  v6[55] = *(v9 - 8);
  v6[56] = swift_task_alloc();
  v10 = sub_25268FCA0();
  v6[57] = v10;
  v6[58] = *(v10 - 8);
  v6[59] = swift_task_alloc();
  v6[60] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB210, &unk_2526951B0);
  v6[61] = swift_task_alloc();
  v11 = type metadata accessor for AccessoryControl.HAPWriteSpecification(0);
  v6[62] = v11;
  v6[63] = *(v11 - 8);
  v6[64] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2523F8804, 0, 0);
}

uint64_t sub_2523F8804()
{
  v30 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 504);
  v3 = *(v0 + 488);
  sub_25237153C(*(v0 + 264), v3, &qword_27F4DB210, &unk_2526951B0);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_252372288(*(v0 + 488), &qword_27F4DB210, &unk_2526951B0);
    v4 = *(*(v0 + 264) + *(*(v0 + 288) + 20));
    if (v4)
    {
      *(v0 + 240) = v4;
      v5 = swift_task_alloc();
      *(v0 + 832) = v5;
      *v5 = v0;
      v5[1] = sub_2523FBFA8;

      return sub_2523FF948((v0 + 240));
    }

    else
    {

      v25 = *(v0 + 8);

      return v25();
    }
  }

  else
  {
    v7 = *(v0 + 512);
    v28 = *(v0 + 496);
    v8 = *(v0 + 440);
    sub_2523FF620(*(v0 + 488), v7, type metadata accessor for AccessoryControl.HAPWriteSpecification);
    *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB958, &qword_252696530);
    *(v0 + 528) = *(v8 + 72);
    *(v0 + 848) = *(v8 + 80);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_252694E90;
    sub_25268FF20();
    *(v0 + 248) = v9;
    *(v0 + 536) = sub_252401010(&qword_27F4DB960, MEMORY[0x277D16C90], MEMORY[0x277D16C98]);
    *(v0 + 544) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB968, &qword_252696538);
    *(v0 + 552) = sub_252400FC8(&qword_27F4DB970, &qword_27F4DB968, &qword_252696538, MEMORY[0x277D83970]);
    sub_252693190();
    sub_25268FC60();
    v10 = *(v7 + *(v28 + 28));
    *(v0 + 560) = v10;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB978, &qword_252696540);
    *(v0 + 568) = v11;
    *(v0 + 40) = v11;
    v12 = sub_252400FC8(&qword_27F4DB980, &qword_27F4DB978, &qword_252696540, MEMORY[0x277D83B78]);
    *(v0 + 16) = v10;
    *(v0 + 576) = v12;
    *(v0 + 48) = v12;

    sub_25268FC90();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    if (qword_27F4DABD0 != -1)
    {
      swift_once();
    }

    v13 = sub_2526905A0();
    *(v0 + 584) = __swift_project_value_buffer(v13, qword_27F4E4B18);
    v14 = sub_252690580();
    v15 = sub_252692F10();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v29 = v17;
      *v16 = 136446210;
      swift_beginAccess();
      sub_252401010(&qword_27F4DB998, MEMORY[0x277D16A00], MEMORY[0x277D16A08]);
      v18 = sub_252693370();
      v20 = sub_2525BDA90(v18, v19, &v29);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_252309000, v14, v15, "Created write request for: %{public}s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x2530A5A40](v17, -1, -1);
      MEMORY[0x2530A5A40](v16, -1, -1);
    }

    *(v0 + 592) = sub_25268E110();
    v21 = MEMORY[0x25309FC40]();
    *(v0 + 600) = v21;
    if (v21)
    {
      swift_beginAccess();
      v22 = swift_task_alloc();
      *(v0 + 608) = v22;
      *v22 = v0;
      v22[1] = sub_2523F8ED0;
      v23 = *(v0 + 480);
      v24 = *(v0 + 400);

      return MEMORY[0x28216E8C8](v24, v23, 0, 1);
    }

    else
    {
      *(v0 + 616) = sub_25268E1B0();
      sub_252692E00();
      *(v0 + 624) = sub_252692DF0();
      v27 = sub_252692DE0();

      return MEMORY[0x2822009F8](sub_2523F9790, v27, v26);
    }
  }
}

uint64_t sub_2523F8ED0()
{
  v1 = *(*v0 + 400);

  sub_252372288(v1, &qword_27F4DB940, &unk_252696510);

  return MEMORY[0x2822009F8](sub_2523F8FF8, 0, 0);
}

uint64_t sub_2523F8FF8()
{
  v43 = v0;

  if (*(*(v0 + 512) + 8))
  {
    v2 = *(v0 + 560);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_252694E90;
    v41 = *(v0 + 568);
    sub_25268FF30();
    *(v0 + 256) = v3;
    sub_252693190();
    sub_25268FC60();
    *(v0 + 56) = v2;
    *(v0 + 80) = v41;

    sub_25268FC90();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v4 = sub_252690580();
    v5 = sub_252692F10();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v42 = v7;
      *v6 = 136446210;
      swift_beginAccess();
      sub_252401010(&qword_27F4DB998, MEMORY[0x277D16A00], MEMORY[0x277D16A08]);
      v8 = sub_252693370();
      v10 = sub_2525BDA90(v8, v9, &v42);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_252309000, v4, v5, "Created local write request for: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x2530A5A40](v7, -1, -1);
      MEMORY[0x2530A5A40](v6, -1, -1);
    }

    v11 = MEMORY[0x25309FC40]();
    *(v0 + 648) = v11;
    if (v11)
    {
      swift_beginAccess();
      v12 = swift_task_alloc();
      *(v0 + 656) = v12;
      *v12 = v0;
      v12[1] = sub_2523FA18C;
      v13 = *(v0 + 472);
      v14 = *(v0 + 400);

      return MEMORY[0x28216E8C8](v14, v13, 0, 1);
    }

    *(v0 + 664) = sub_25268E1B0();
    sub_252692E00();
    *(v0 + 672) = sub_252692DF0();
    v26 = sub_252692DE0();
    v28 = v27;
    v29 = sub_2523FA76C;
    goto LABEL_20;
  }

  v15 = MEMORY[0x25309FC40](v1);
  *(v0 + 696) = v15;
  v16 = *(v0 + 512);
  v17 = *(v0 + 368);
  v18 = *(*(v0 + 496) + 24);
  v19 = (*(v0 + 376) + 48);
  if (v15)
  {
    v20 = *(v0 + 352);
    sub_25237153C(v16 + v18, v20, &qword_27F4DB8B8, &unk_2526963F0);
    if ((*v19)(v20, 1, v17) == 1)
    {
      v21 = *(v0 + 512);
      v22 = *(v0 + 480);
      v23 = *(v0 + 456);
      v24 = *(v0 + 464);
      v25 = *(v0 + 352);

      sub_2523FEE68(v21, type metadata accessor for AccessoryControl.HAPWriteSpecification);
      sub_252372288(v25, &qword_27F4DB8B8, &unk_2526963F0);
      (*(v24 + 8))(v22, v23);
      goto LABEL_14;
    }

    (*(*(v0 + 376) + 32))(*(v0 + 384), *(v0 + 352), *(v0 + 368));
    *(v0 + 704) = sub_25268E130();
    *(v0 + 712) = sub_25268E120();
    *(v0 + 720) = sub_252401010(&qword_27F4DB988, MEMORY[0x277D153D0], MEMORY[0x277D153D8]);
    v26 = sub_252692DE0();
    v28 = v37;
    v29 = sub_2523FAE88;
LABEL_20:

    return MEMORY[0x2822009F8](v29, v26, v28);
  }

  v30 = *(v0 + 360);
  sub_25237153C(v16 + v18, v30, &qword_27F4DB8B8, &unk_2526963F0);
  if ((*v19)(v30, 1, v17) != 1)
  {
    (*(*(v0 + 376) + 32))(*(v0 + 392), *(v0 + 360), *(v0 + 368));
    *(v0 + 760) = sub_25268E1B0();
    *(v0 + 768) = sub_252692E00();
    *(v0 + 776) = sub_252692DF0();
    v26 = sub_252692DE0();
    v28 = v38;
    v29 = sub_2523FB7D0;
    goto LABEL_20;
  }

  v31 = *(v0 + 480);
  v32 = *(v0 + 456);
  v33 = *(v0 + 464);
  v34 = *(v0 + 360);
  sub_2523FEE68(*(v0 + 512), type metadata accessor for AccessoryControl.HAPWriteSpecification);
  sub_252372288(v34, &qword_27F4DB8B8, &unk_2526963F0);
  (*(v33 + 8))(v31, v32);
LABEL_14:
  v35 = *(*(v0 + 264) + *(*(v0 + 288) + 20));
  if (v35)
  {
    *(v0 + 240) = v35;
    v36 = swift_task_alloc();
    *(v0 + 832) = v36;
    *v36 = v0;
    v36[1] = sub_2523FBFA8;

    return sub_2523FF948((v0 + 240));
  }

  else
  {

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_2523F9790()
{

  *(v0 + 632) = sub_25268E1A0();

  return MEMORY[0x2822009F8](sub_2523F9804, 0, 0);
}

uint64_t sub_2523F9804()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[80] = v1;
  *v1 = v0;
  v1[1] = sub_2523F98BC;
  v2 = v0[60];
  v3 = v0[53];

  return MEMORY[0x28216EA78](v3, v2, 0);
}

uint64_t sub_2523F98BC()
{
  v1 = *(*v0 + 632);
  v2 = *(*v0 + 424);

  sub_252372288(v2, &qword_27F4DB948, &unk_2526A81F0);

  return MEMORY[0x2822009F8](sub_2523F99FC, 0, 0);
}

uint64_t sub_2523F99FC()
{
  v42 = v0;
  if (*(*(v0 + 512) + 8))
  {
    v1 = *(v0 + 560);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_252694E90;
    v40 = *(v0 + 568);
    sub_25268FF30();
    *(v0 + 256) = v2;
    sub_252693190();
    sub_25268FC60();
    *(v0 + 56) = v1;
    *(v0 + 80) = v40;

    sub_25268FC90();
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    v3 = sub_252690580();
    v4 = sub_252692F10();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v41 = v6;
      *v5 = 136446210;
      swift_beginAccess();
      sub_252401010(&qword_27F4DB998, MEMORY[0x277D16A00], MEMORY[0x277D16A08]);
      v7 = sub_252693370();
      v9 = sub_2525BDA90(v7, v8, &v41);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_252309000, v3, v4, "Created local write request for: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v6);
      MEMORY[0x2530A5A40](v6, -1, -1);
      MEMORY[0x2530A5A40](v5, -1, -1);
    }

    v10 = MEMORY[0x25309FC40]();
    *(v0 + 648) = v10;
    if (v10)
    {
      swift_beginAccess();
      v11 = swift_task_alloc();
      *(v0 + 656) = v11;
      *v11 = v0;
      v11[1] = sub_2523FA18C;
      v12 = *(v0 + 472);
      v13 = *(v0 + 400);

      return MEMORY[0x28216E8C8](v13, v12, 0, 1);
    }

    *(v0 + 664) = sub_25268E1B0();
    sub_252692E00();
    *(v0 + 672) = sub_252692DF0();
    v25 = sub_252692DE0();
    v27 = v26;
    v28 = sub_2523FA76C;
    goto LABEL_20;
  }

  v14 = MEMORY[0x25309FC40]();
  *(v0 + 696) = v14;
  v15 = *(v0 + 512);
  v16 = *(v0 + 368);
  v17 = *(*(v0 + 496) + 24);
  v18 = (*(v0 + 376) + 48);
  if (v14)
  {
    v19 = *(v0 + 352);
    sub_25237153C(v15 + v17, v19, &qword_27F4DB8B8, &unk_2526963F0);
    if ((*v18)(v19, 1, v16) == 1)
    {
      v20 = *(v0 + 512);
      v21 = *(v0 + 480);
      v22 = *(v0 + 456);
      v23 = *(v0 + 464);
      v24 = *(v0 + 352);

      sub_2523FEE68(v20, type metadata accessor for AccessoryControl.HAPWriteSpecification);
      sub_252372288(v24, &qword_27F4DB8B8, &unk_2526963F0);
      (*(v23 + 8))(v21, v22);
      goto LABEL_14;
    }

    (*(*(v0 + 376) + 32))(*(v0 + 384), *(v0 + 352), *(v0 + 368));
    *(v0 + 704) = sub_25268E130();
    *(v0 + 712) = sub_25268E120();
    *(v0 + 720) = sub_252401010(&qword_27F4DB988, MEMORY[0x277D153D0], MEMORY[0x277D153D8]);
    v25 = sub_252692DE0();
    v27 = v36;
    v28 = sub_2523FAE88;
LABEL_20:

    return MEMORY[0x2822009F8](v28, v25, v27);
  }

  v29 = *(v0 + 360);
  sub_25237153C(v15 + v17, v29, &qword_27F4DB8B8, &unk_2526963F0);
  if ((*v18)(v29, 1, v16) != 1)
  {
    (*(*(v0 + 376) + 32))(*(v0 + 392), *(v0 + 360), *(v0 + 368));
    *(v0 + 760) = sub_25268E1B0();
    *(v0 + 768) = sub_252692E00();
    *(v0 + 776) = sub_252692DF0();
    v25 = sub_252692DE0();
    v27 = v37;
    v28 = sub_2523FB7D0;
    goto LABEL_20;
  }

  v30 = *(v0 + 480);
  v31 = *(v0 + 456);
  v32 = *(v0 + 464);
  v33 = *(v0 + 360);
  sub_2523FEE68(*(v0 + 512), type metadata accessor for AccessoryControl.HAPWriteSpecification);
  sub_252372288(v33, &qword_27F4DB8B8, &unk_2526963F0);
  (*(v32 + 8))(v30, v31);
LABEL_14:
  v34 = *(*(v0 + 264) + *(*(v0 + 288) + 20));
  if (v34)
  {
    *(v0 + 240) = v34;
    v35 = swift_task_alloc();
    *(v0 + 832) = v35;
    *v35 = v0;
    v35[1] = sub_2523FBFA8;

    return sub_2523FF948((v0 + 240));
  }

  else
  {

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_2523FA18C()
{
  v1 = *(*v0 + 400);

  sub_252372288(v1, &qword_27F4DB940, &unk_252696510);

  return MEMORY[0x2822009F8](sub_2523FA2B4, 0, 0);
}

uint64_t sub_2523FA2B4()
{

  v1 = (*(v0[58] + 8))(v0[59], v0[57]);
  v2 = MEMORY[0x25309FC40](v1);
  v0[87] = v2;
  v3 = v0[64];
  v4 = v0[46];
  v5 = *(v0[62] + 24);
  v6 = (v0[47] + 48);
  if (v2)
  {
    v7 = v0[44];
    sub_25237153C(v3 + v5, v7, &qword_27F4DB8B8, &unk_2526963F0);
    if ((*v6)(v7, 1, v4) == 1)
    {
      v8 = v0[64];
      v9 = v0[60];
      v10 = v0[57];
      v11 = v0[58];
      v12 = v0[44];

      sub_2523FEE68(v8, type metadata accessor for AccessoryControl.HAPWriteSpecification);
      sub_252372288(v12, &qword_27F4DB8B8, &unk_2526963F0);
      (*(v11 + 8))(v9, v10);
      goto LABEL_6;
    }

    (*(v0[47] + 32))(v0[48], v0[44], v0[46]);
    v0[88] = sub_25268E130();
    v0[89] = sub_25268E120();
    v0[90] = sub_252401010(&qword_27F4DB988, MEMORY[0x277D153D0], MEMORY[0x277D153D8]);
    v21 = sub_252692DE0();
    v23 = v22;
    v24 = sub_2523FAE88;
  }

  else
  {
    v13 = v0[45];
    sub_25237153C(v3 + v5, v13, &qword_27F4DB8B8, &unk_2526963F0);
    if ((*v6)(v13, 1, v4) == 1)
    {
      v14 = v0[60];
      v15 = v0[57];
      v16 = v0[58];
      v17 = v0[45];
      sub_2523FEE68(v0[64], type metadata accessor for AccessoryControl.HAPWriteSpecification);
      sub_252372288(v17, &qword_27F4DB8B8, &unk_2526963F0);
      (*(v16 + 8))(v14, v15);
LABEL_6:
      v18 = *(v0[33] + *(v0[36] + 20));
      if (v18)
      {
        v0[30] = v18;
        v19 = swift_task_alloc();
        v0[104] = v19;
        *v19 = v0;
        v19[1] = sub_2523FBFA8;

        return sub_2523FF948(v0 + 30);
      }

      else
      {

        v26 = v0[1];

        return v26();
      }
    }

    (*(v0[47] + 32))(v0[49], v0[45], v0[46]);
    v0[95] = sub_25268E1B0();
    v0[96] = sub_252692E00();
    v0[97] = sub_252692DF0();
    v21 = sub_252692DE0();
    v23 = v25;
    v24 = sub_2523FB7D0;
  }

  return MEMORY[0x2822009F8](v24, v21, v23);
}

uint64_t sub_2523FA76C()
{

  *(v0 + 680) = sub_25268E1A0();

  return MEMORY[0x2822009F8](sub_2523FA7E0, 0, 0);
}

uint64_t sub_2523FA7E0()
{
  swift_beginAccess();
  v1 = swift_task_alloc();
  v0[86] = v1;
  *v1 = v0;
  v1[1] = sub_2523FA898;
  v2 = v0[59];
  v3 = v0[53];

  return MEMORY[0x28216EA78](v3, v2, 0);
}

uint64_t sub_2523FA898()
{
  v1 = *(*v0 + 680);
  v2 = *(*v0 + 424);

  sub_252372288(v2, &qword_27F4DB948, &unk_2526A81F0);

  return MEMORY[0x2822009F8](sub_2523FA9D8, 0, 0);
}

uint64_t sub_2523FA9D8()
{
  v1 = (*(v0[58] + 8))(v0[59], v0[57]);
  v2 = MEMORY[0x25309FC40](v1);
  v0[87] = v2;
  v3 = v0[64];
  v4 = v0[46];
  v5 = *(v0[62] + 24);
  v6 = (v0[47] + 48);
  if (v2)
  {
    v7 = v0[44];
    sub_25237153C(v3 + v5, v7, &qword_27F4DB8B8, &unk_2526963F0);
    if ((*v6)(v7, 1, v4) == 1)
    {
      v8 = v0[64];
      v9 = v0[60];
      v10 = v0[57];
      v11 = v0[58];
      v12 = v0[44];

      sub_2523FEE68(v8, type metadata accessor for AccessoryControl.HAPWriteSpecification);
      sub_252372288(v12, &qword_27F4DB8B8, &unk_2526963F0);
      (*(v11 + 8))(v9, v10);
      goto LABEL_6;
    }

    (*(v0[47] + 32))(v0[48], v0[44], v0[46]);
    v0[88] = sub_25268E130();
    v0[89] = sub_25268E120();
    v0[90] = sub_252401010(&qword_27F4DB988, MEMORY[0x277D153D0], MEMORY[0x277D153D8]);
    v21 = sub_252692DE0();
    v23 = v22;
    v24 = sub_2523FAE88;
  }

  else
  {
    v13 = v0[45];
    sub_25237153C(v3 + v5, v13, &qword_27F4DB8B8, &unk_2526963F0);
    if ((*v6)(v13, 1, v4) == 1)
    {
      v14 = v0[60];
      v15 = v0[57];
      v16 = v0[58];
      v17 = v0[45];
      sub_2523FEE68(v0[64], type metadata accessor for AccessoryControl.HAPWriteSpecification);
      sub_252372288(v17, &qword_27F4DB8B8, &unk_2526963F0);
      (*(v16 + 8))(v14, v15);
LABEL_6:
      v18 = *(v0[33] + *(v0[36] + 20));
      if (v18)
      {
        v0[30] = v18;
        v19 = swift_task_alloc();
        v0[104] = v19;
        *v19 = v0;
        v19[1] = sub_2523FBFA8;

        return sub_2523FF948(v0 + 30);
      }

      else
      {

        v26 = v0[1];

        return v26();
      }
    }

    (*(v0[47] + 32))(v0[49], v0[45], v0[46]);
    v0[95] = sub_25268E1B0();
    v0[96] = sub_252692E00();
    v0[97] = sub_252692DF0();
    v21 = sub_252692DE0();
    v23 = v25;
    v24 = sub_2523FB7D0;
  }

  return MEMORY[0x2822009F8](v24, v21, v23);
}

uint64_t sub_2523FAE88()
{

  *(v0 + 728) = sub_25268E0E0();

  return MEMORY[0x2822009F8](sub_2523FAEFC, 0, 0);
}

uint64_t sub_2523FAEFC()
{
  *(v0 + 736) = sub_25268E120();
  v2 = sub_252692DE0();

  return MEMORY[0x2822009F8](sub_2523FAF90, v2, v1);
}

uint64_t sub_2523FAF90()
{

  sub_25268E0B0();

  return MEMORY[0x2822009F8](sub_2523FB010, 0, 0);
}

uint64_t sub_2523FB010()
{
  v25 = v0;
  v1 = v0[52];
  v2 = v0[40];
  v3 = v0[41];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[64];
    v5 = v0[60];
    v6 = v0[57];
    v7 = v0[58];
    (*(v0[47] + 8))(v0[48], v0[46]);

    sub_2523FEE68(v4, type metadata accessor for AccessoryControl.HAPWriteSpecification);
    sub_252372288(v1, &qword_27F4DB948, &unk_2526A81F0);
    (*(v7 + 8))(v5, v6);
    v8 = *(v0[33] + *(v0[36] + 20));
    if (v8)
    {
      v0[30] = v8;
      v9 = swift_task_alloc();
      v0[104] = v9;
      *v9 = v0;
      v9[1] = sub_2523FBFA8;

      return sub_2523FF948(v0 + 30);
    }

    goto LABEL_9;
  }

  v11 = v0[70];
  (*(v3 + 32))(v0[43], v1, v2);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = v0[70];
    v14 = sub_2525EED9C(*(v11 + 16), 0);
    v15 = *(sub_25268DA10() - 8);
    sub_2525EF40C(&v24, &v14[(*(v15 + 80) + 32) & ~*(v15 + 80)], v12, v13);
    v17 = v16;
    v18 = v24;

    sub_2523A4D1C(v18);
    if (v17 != v12)
    {
      __break(1u);
LABEL_9:

      v19 = v0[1];

      return v19();
    }
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
  }

  v0[93] = v14;
  v20 = swift_task_alloc();
  v0[94] = v20;
  *v20 = v0;
  v20[1] = sub_2523FB40C;
  v21 = v0[48];
  v22 = v0[43];
  v23 = v0[39];

  return MEMORY[0x28216E8C0](v23, v21, v14, v22, 0, 1);
}

uint64_t sub_2523FB40C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = sub_2523FC550;
  }

  else
  {
    sub_252372288(*(v2 + 312), &qword_27F4DB938, &qword_252696508);

    v3 = sub_2523FB568;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2523FB568()
{
  v1 = v0[64];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  v5 = v0[43];
  v6 = v0[40];
  v7 = v0[41];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_2523FEE68(v1, type metadata accessor for AccessoryControl.HAPWriteSpecification);
  (*(v0[58] + 8))(v0[60], v0[57]);
  v8 = *(v0[33] + *(v0[36] + 20));
  if (v8)
  {
    v0[30] = v8;
    v9 = swift_task_alloc();
    v0[104] = v9;
    *v9 = v0;
    v9[1] = sub_2523FBFA8;

    return sub_2523FF948(v0 + 30);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2523FB7D0()
{

  *(v0 + 784) = sub_25268E1A0();

  return MEMORY[0x2822009F8](sub_2523FB844, 0, 0);
}

uint64_t sub_2523FB844()
{
  *(v0 + 792) = sub_252692DF0();
  v2 = sub_252692DE0();

  return MEMORY[0x2822009F8](sub_2523FB8D0, v2, v1);
}

uint64_t sub_2523FB8D0()
{
  v1 = *(v0 + 784);

  sub_25268E140();

  return MEMORY[0x2822009F8](sub_2523FB94C, 0, 0);
}

uint64_t sub_2523FB94C()
{
  *(v0 + 800) = sub_252692DF0();
  v2 = sub_252692DE0();

  return MEMORY[0x2822009F8](sub_2523FB9D8, v2, v1);
}

uint64_t sub_2523FB9D8()
{

  *(v0 + 808) = sub_25268E1A0();

  return MEMORY[0x2822009F8](sub_2523FBA4C, 0, 0);
}

uint64_t sub_2523FBA4C()
{
  v14 = v0;
  v1 = v0[70];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_2525EED9C(*(v1 + 16), 0);
    v4 = *(sub_25268DA10() - 8);
    sub_2525EF40C(&v13, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, v1);
    v6 = v5;
    v7 = v13;

    sub_2523A4D1C(v7);
    if (v6 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v0[102] = v3;
  v8 = swift_task_alloc();
  v0[103] = v8;
  *v8 = v0;
  v8[1] = sub_2523FBBD0;
  v9 = v0[51];
  v10 = v0[49];
  v11 = v0[42];

  return MEMORY[0x28216EA68](v9, v10, v3, v11, 0, 0, 1);
}

uint64_t sub_2523FBBD0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = *(v2 + 808);
  if (v0)
  {

    v5 = sub_2523FC820;
  }

  else
  {
    sub_252372288(*(v3 + 408), &qword_27F4DB948, &unk_2526A81F0);

    v5 = sub_2523FBD50;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2523FBD50()
{
  v1 = v0[64];
  v2 = v0[49];
  v3 = v0[46];
  v4 = v0[47];
  (*(v0[41] + 8))(v0[42], v0[40]);
  (*(v4 + 8))(v2, v3);
  sub_2523FEE68(v1, type metadata accessor for AccessoryControl.HAPWriteSpecification);
  (*(v0[58] + 8))(v0[60], v0[57]);
  v5 = *(v0[33] + *(v0[36] + 20));
  if (v5)
  {
    v0[30] = v5;
    v6 = swift_task_alloc();
    v0[104] = v6;
    *v6 = v0;
    v6[1] = sub_2523FBFA8;

    return sub_2523FF948(v0 + 30);
  }

  else
  {

    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_2523FBFA8()
{
  v2 = *v1;
  *(v2 + 840) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2523FC1D4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_2523FC1D4()
{
  v26 = v0;
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v1 = v0[105];
  v2 = v0[38];
  v3 = v0[33];
  v4 = sub_2526905A0();
  __swift_project_value_buffer(v4, qword_27F4E4B18);
  sub_2523FEE00(v3, v2, type metadata accessor for AccessoryControl.WriteSpecification);
  v5 = v1;
  v6 = sub_252690580();
  v7 = sub_252692EF0();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[105];
    v10 = v0[37];
    v9 = v0[38];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v11 = 138543618;
    v14 = v8;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v15;
    *v12 = v15;
    *(v11 + 12) = 2080;
    sub_2523FEE00(v9, v10, type metadata accessor for AccessoryControl.WriteSpecification);
    v16 = sub_252692C00();
    v18 = v17;
    sub_2523FEE68(v9, type metadata accessor for AccessoryControl.WriteSpecification);
    v19 = sub_2525BDA90(v16, v18, &v25);

    *(v11 + 14) = v19;
    _os_log_impl(&dword_252309000, v6, v7, "AccessoryControl failed to perform write spec with error %{public}@, writeSpec: %s", v11, 0x16u);
    sub_252372288(v12, &qword_27F4DB950, &unk_2526A2B20);
    MEMORY[0x2530A5A40](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x2530A5A40](v13, -1, -1);
    MEMORY[0x2530A5A40](v11, -1, -1);
  }

  else
  {
    v20 = v0[38];

    sub_2523FEE68(v20, type metadata accessor for AccessoryControl.WriteSpecification);
  }

  v21 = v0[34];
  v22 = v0[105];
  if (v21)
  {
    v21(v0[105]);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_2523FC550()
{
  v1 = v0[64];
  v3 = v0[47];
  v2 = v0[48];
  v4 = v0[46];
  v5 = v0[43];
  v6 = v0[40];
  v7 = v0[41];
  v8 = v0[39];

  (*(v7 + 8))(v5, v6);
  (*(v3 + 8))(v2, v4);
  sub_2523FEE68(v1, type metadata accessor for AccessoryControl.HAPWriteSpecification);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB990, &qword_252696548);
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  sub_252372288(v8, &qword_27F4DB938, &qword_252696508);
  (*(v0[58] + 8))(v0[60], v0[57]);
  v10 = *(v0[33] + *(v0[36] + 20));
  if (v10)
  {
    v0[30] = v10;
    v11 = swift_task_alloc();
    v0[104] = v11;
    *v11 = v0;
    v11[1] = sub_2523FBFA8;

    return sub_2523FF948(v0 + 30);
  }

  else
  {

    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_2523FC820()
{
  v1 = v0[64];
  v2 = v0[51];
  v3 = v0[49];
  v4 = v0[46];
  v5 = v0[47];
  v6 = v0[41];
  v7 = v0[40];
  (*(v6 + 8))(v0[42], v7);
  (*(v5 + 8))(v3, v4);
  sub_2523FEE68(v1, type metadata accessor for AccessoryControl.HAPWriteSpecification);
  (*(v6 + 56))(v2, 1, 1, v7);
  sub_252372288(v2, &qword_27F4DB948, &unk_2526A81F0);
  (*(v0[58] + 8))(v0[60], v0[57]);
  v8 = *(v0[33] + *(v0[36] + 20));
  if (v8)
  {
    v0[30] = v8;
    v9 = swift_task_alloc();
    v0[104] = v9;
    *v9 = v0;
    v9[1] = sub_2523FBFA8;

    return sub_2523FF948(v0 + 30);
  }

  else
  {

    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_2523FCADC()
{
  sub_25268E110();
  v1 = MEMORY[0x25309FC40]();
  v0[3] = v1;
  if (v1)
  {
    v0[4] = sub_25268E130();
    v0[5] = sub_25268E120();
    v0[6] = sub_252401010(&qword_27F4DB988, MEMORY[0x277D153D0], MEMORY[0x277D153D8]);
    v2 = sub_252692DE0();
    v4 = v3;
    v5 = sub_2523FCC10;
  }

  else
  {
    v0[9] = sub_25268E1B0();
    v0[10] = sub_252692E00();
    v0[11] = sub_252692DF0();
    v2 = sub_252692DE0();
    v4 = v6;
    v5 = sub_2523FCDF4;
  }

  return MEMORY[0x2822009F8](v5, v2, v4);
}

uint64_t sub_2523FCC10()
{

  *(v0 + 56) = sub_25268E0E0();

  return MEMORY[0x2822009F8](sub_2523FCC84, 0, 0);
}

uint64_t sub_2523FCC84()
{
  *(v0 + 64) = sub_25268E120();
  v2 = sub_252692DE0();

  return MEMORY[0x2822009F8](sub_2523FCD18, v2, v1);
}

uint64_t sub_2523FCD18()
{

  sub_25268E0C0();

  return MEMORY[0x2822009F8](sub_2523FCD94, 0, 0);
}

uint64_t sub_2523FCD94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2523FCDF4()
{

  *(v0 + 96) = sub_25268E1A0();

  return MEMORY[0x2822009F8](sub_2523FCE68, 0, 0);
}

uint64_t sub_2523FCE68()
{
  *(v0 + 104) = sub_252692DF0();
  v2 = sub_252692DE0();

  return MEMORY[0x2822009F8](sub_2523FCEF4, v2, v1);
}

uint64_t sub_2523FCEF4()
{
  v1 = *(v0 + 96);

  sub_25268E150();

  return MEMORY[0x2822009F8](sub_2523FCF6C, 0, 0);
}

uint64_t sub_2523FCF6C()
{
  v1 = *(v0 + 16);
  v2 = sub_25268F890();
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2523FD008(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v3 = sub_25268EE60();
  v6[3] = v3;
  v6[4] = MEMORY[0x277D15C18];
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v6);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_0, a2, v3);
  sub_25268FA10();
  return __swift_destroy_boxed_opaque_existential_1Tm(v6);
}

uint64_t sub_2523FD0D4(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_2526242D0(v2);
  }

  v3 = v2[2];
  v5[0] = (v2 + 4);
  v5[1] = v3;
  result = sub_2523FD140(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_2523FD140(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_252693360();
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAFB8, &qword_252694FD0);
        v5 = sub_252692DC0();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_2523FD394(v7, v8, a1, v4);
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
    return sub_2523FD248(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_2523FD248(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 40 * a3;
    v6 = result - a3;
LABEL_5:
    v17 = a3;
    v7 = v6;
    v13 = v5;
    while (1)
    {
      sub_2523C3820(v5, &v15);
      sub_2523C3820(v5 - 40, v14);
      __swift_project_boxed_opaque_existential_1(&v15, v16);
      v8 = sub_25268E860();
      __swift_project_boxed_opaque_existential_1(v14, v14[3]);
      v9 = sub_25268E860();
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      if (v9 < v8)
      {
LABEL_4:
        a3 = v17 + 1;
        v5 = v13 + 40;
        --v6;
        if (v17 + 1 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      sub_25235E1A4(v5, &v15);
      v10 = *(v5 - 24);
      *v5 = *(v5 - 40);
      *(v5 + 16) = v10;
      *(v5 + 32) = *(v5 - 8);
      result = sub_25235E1A4(&v15, v5 - 40);
      v5 -= 40;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_2523FD394(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v94 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_91:
    v8 = *v94;
    if (!*v94)
    {
      goto LABEL_129;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_123:
      result = sub_252624154(v9);
      v9 = result;
    }

    v106 = v9;
    v81 = *(v9 + 16);
    if (v81 >= 2)
    {
      while (1)
      {
        v82 = *v6;
        if (!*v6)
        {
          goto LABEL_127;
        }

        v6 = (v81 - 1);
        v83 = *(v9 + 16 * v81);
        v84 = v9;
        v85 = *(v9 + 16 * (v81 - 1) + 32);
        v9 = *(v9 + 16 * (v81 - 1) + 40);
        sub_2523FDAF8((v82 + 40 * v83), (v82 + 40 * v85), v82 + 40 * v9, v8);
        if (v5)
        {
        }

        if (v9 < v83)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v84 = sub_252624154(v84);
        }

        if (v81 - 2 >= *(v84 + 2))
        {
          goto LABEL_117;
        }

        v86 = &v84[16 * v81];
        *v86 = v83;
        *(v86 + 1) = v9;
        v106 = v84;
        result = sub_2526240C8(v6);
        v9 = v106;
        v81 = *(v106 + 16);
        v6 = a3;
        if (v81 <= 1)
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
    if (v8 + 1 >= v7)
    {
      goto LABEL_21;
    }

    v100 = v7;
    v90 = v5;
    v12 = *v6;
    sub_2523C3820(*v6 + 40 * v11, &v104);
    v13 = 40 * v8;
    v14 = v12 + 40 * v8;
    sub_2523C3820(v14, v102);
    __swift_project_boxed_opaque_existential_1(&v104, v105);
    v98 = sub_25268E860();
    __swift_project_boxed_opaque_existential_1(v102, v103);
    v96 = sub_25268E860();
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v104);
    v92 = v8;
    v15 = v8 + 2;
    v16 = v14 + 80;
    while (1)
    {
      v11 = v100;
      if (v100 == v15)
      {
        break;
      }

      sub_2523C3820(v16, &v104);
      sub_2523C3820(v16 - 40, v102);
      __swift_project_boxed_opaque_existential_1(&v104, v105);
      v8 = sub_25268E860();
      __swift_project_boxed_opaque_existential_1(v102, v103);
      v17 = sub_25268E860();
      __swift_destroy_boxed_opaque_existential_1Tm(v102);
      result = __swift_destroy_boxed_opaque_existential_1Tm(&v104);
      ++v15;
      v16 += 40;
      if (v96 >= v98 == v17 < v8)
      {
        v11 = v15 - 1;
        break;
      }
    }

    v5 = v90;
    v6 = a3;
    if (v96 >= v98)
    {
      v8 = v92;
      if (v11 < v92)
      {
        goto LABEL_120;
      }

      if (v92 >= v11)
      {
        v10 = v92;
        goto LABEL_21;
      }

      v87 = v9;
      v18 = 40 * v11 - 40;
      v19 = v11;
      do
      {
        if (v8 != --v19)
        {
          v24 = *a3;
          if (!*a3)
          {
            goto LABEL_126;
          }

          v20 = v24 + v13;
          v21 = v24 + v18;
          sub_25235E1A4((v24 + v13), &v104);
          v22 = *(v21 + 32);
          v23 = *(v21 + 16);
          *v20 = *v21;
          *(v20 + 16) = v23;
          *(v20 + 32) = v22;
          result = sub_25235E1A4(&v104, v21);
        }

        ++v8;
        v18 -= 40;
        v13 += 40;
      }

      while (v8 < v19);
      v9 = v87;
    }

    v10 = v92;
LABEL_21:
    v25 = v6[1];
    if (v11 < v25)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_119;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_121;
        }

        if (v10 + a4 >= v25)
        {
          v8 = v6[1];
        }

        else
        {
          v8 = v10 + a4;
        }

        if (v8 < v10)
        {
LABEL_122:
          __break(1u);
          goto LABEL_123;
        }

        if (v11 != v8)
        {
          break;
        }
      }
    }

    v8 = v11;
    if (v11 < v10)
    {
      goto LABEL_118;
    }

LABEL_31:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_252368690(0, *(v9 + 16) + 1, 1, v9);
      v9 = result;
    }

    v27 = *(v9 + 16);
    v26 = *(v9 + 24);
    v28 = v27 + 1;
    if (v27 >= v26 >> 1)
    {
      result = sub_252368690((v26 > 1), v27 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 16) = v28;
    v29 = v9 + 16 * v27;
    *(v29 + 32) = v10;
    *(v29 + 40) = v8;
    v30 = *v94;
    if (!*v94)
    {
      goto LABEL_128;
    }

    if (v27)
    {
      while (1)
      {
        v31 = v28 - 1;
        if (v28 >= 4)
        {
          break;
        }

        if (v28 == 3)
        {
          v32 = *(v9 + 32);
          v33 = *(v9 + 40);
          v42 = __OFSUB__(v33, v32);
          v34 = v33 - v32;
          v35 = v42;
LABEL_50:
          if (v35)
          {
            goto LABEL_107;
          }

          v48 = (v9 + 16 * v28);
          v50 = *v48;
          v49 = v48[1];
          v51 = __OFSUB__(v49, v50);
          v52 = v49 - v50;
          v53 = v51;
          if (v51)
          {
            goto LABEL_110;
          }

          v54 = (v9 + 32 + 16 * v31);
          v56 = *v54;
          v55 = v54[1];
          v42 = __OFSUB__(v55, v56);
          v57 = v55 - v56;
          if (v42)
          {
            goto LABEL_113;
          }

          if (__OFADD__(v52, v57))
          {
            goto LABEL_114;
          }

          if (v52 + v57 >= v34)
          {
            if (v34 < v57)
            {
              v31 = v28 - 2;
            }

            goto LABEL_71;
          }

          goto LABEL_64;
        }

        v58 = (v9 + 16 * v28);
        v60 = *v58;
        v59 = v58[1];
        v42 = __OFSUB__(v59, v60);
        v52 = v59 - v60;
        v53 = v42;
LABEL_64:
        if (v53)
        {
          goto LABEL_109;
        }

        v61 = v9 + 16 * v31;
        v63 = *(v61 + 32);
        v62 = *(v61 + 40);
        v42 = __OFSUB__(v62, v63);
        v64 = v62 - v63;
        if (v42)
        {
          goto LABEL_112;
        }

        if (v64 < v52)
        {
          goto LABEL_3;
        }

LABEL_71:
        v69 = v31 - 1;
        if (v31 - 1 >= v28)
        {
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
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (!*v6)
        {
          goto LABEL_125;
        }

        v70 = *(v9 + 32 + 16 * v69);
        v71 = *(v9 + 32 + 16 * v31 + 8);
        sub_2523FDAF8((*v6 + 40 * v70), (*v6 + 40 * *(v9 + 32 + 16 * v31)), *v6 + 40 * v71, v30);
        if (v5)
        {
        }

        if (v71 < v70)
        {
          goto LABEL_103;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_252624154(v9);
        }

        if (v69 >= *(v9 + 16))
        {
          goto LABEL_104;
        }

        v72 = v9 + 16 * v69;
        *(v72 + 32) = v70;
        *(v72 + 40) = v71;
        v106 = v9;
        result = sub_2526240C8(v31);
        v9 = v106;
        v28 = *(v106 + 16);
        if (v28 <= 1)
        {
          goto LABEL_3;
        }
      }

      v36 = v9 + 32 + 16 * v28;
      v37 = *(v36 - 64);
      v38 = *(v36 - 56);
      v42 = __OFSUB__(v38, v37);
      v39 = v38 - v37;
      if (v42)
      {
        goto LABEL_105;
      }

      v41 = *(v36 - 48);
      v40 = *(v36 - 40);
      v42 = __OFSUB__(v40, v41);
      v34 = v40 - v41;
      v35 = v42;
      if (v42)
      {
        goto LABEL_106;
      }

      v43 = (v9 + 16 * v28);
      v45 = *v43;
      v44 = v43[1];
      v42 = __OFSUB__(v44, v45);
      v46 = v44 - v45;
      if (v42)
      {
        goto LABEL_108;
      }

      v42 = __OFADD__(v34, v46);
      v47 = v34 + v46;
      if (v42)
      {
        goto LABEL_111;
      }

      if (v47 >= v39)
      {
        v65 = (v9 + 32 + 16 * v31);
        v67 = *v65;
        v66 = v65[1];
        v42 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v42)
        {
          goto LABEL_115;
        }

        if (v34 < v68)
        {
          v31 = v28 - 2;
        }

        goto LABEL_71;
      }

      goto LABEL_50;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_91;
    }
  }

  v88 = v9;
  v91 = v5;
  v93 = v10;
  v73 = *v6;
  v74 = *v6 + 40 * v11;
  v75 = v10 - v11;
  v97 = v8;
LABEL_82:
  v99 = v74;
  v101 = v11;
  v76 = v75;
  while (1)
  {
    sub_2523C3820(v74, &v104);
    sub_2523C3820(v74 - 40, v102);
    __swift_project_boxed_opaque_existential_1(&v104, v105);
    v77 = sub_25268E860();
    __swift_project_boxed_opaque_existential_1(v102, v103);
    v78 = sub_25268E860();
    __swift_destroy_boxed_opaque_existential_1Tm(v102);
    result = __swift_destroy_boxed_opaque_existential_1Tm(&v104);
    if (v78 < v77)
    {
LABEL_81:
      ++v11;
      v74 = v99 + 40;
      --v75;
      v8 = v97;
      if (v101 + 1 != v97)
      {
        goto LABEL_82;
      }

      v5 = v91;
      v10 = v93;
      v6 = a3;
      v9 = v88;
      if (v97 < v93)
      {
        goto LABEL_118;
      }

      goto LABEL_31;
    }

    if (!v73)
    {
      break;
    }

    sub_25235E1A4(v74, &v104);
    v79 = *(v74 - 24);
    *v74 = *(v74 - 40);
    *(v74 + 16) = v79;
    *(v74 + 32) = *(v74 - 8);
    sub_25235E1A4(&v104, v74 - 40);
    v74 -= 40;
    if (__CFADD__(v76++, 1))
    {
      goto LABEL_81;
    }
  }

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
  return result;
}

uint64_t sub_2523FDAF8(char *__src, char *a2, unint64_t a3, char *a4)
{
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = (a2 - __src) / 40;
  v8 = a3 - a2;
  v9 = (a3 - a2) / 40;
  if (v7 >= v9)
  {
    v23 = a2;
    if (a4 != a2 || &a2[40 * v9] <= a4)
    {
      v24 = a4;
      memmove(a4, a2, 40 * v9);
      a4 = v24;
    }

    v12 = &a4[40 * v9];
    v11 = a4;
    if (v8 < 40 || v23 <= v5)
    {
      v22 = v23;
      goto LABEL_36;
    }

    v41 = v5;
    v46 = a4;
    while (1)
    {
      v25 = (v23 - 40);
      v26 = (v12 - 40);
      v4 -= 40;
      while (1)
      {
        v29 = v26 + 40;
        v30 = (v4 + 40);
        sub_2523C3820(v26, v44);
        v31 = v25;
        sub_2523C3820(v25, v42);
        __swift_project_boxed_opaque_existential_1(v44, v45);
        v32 = sub_25268E860();
        __swift_project_boxed_opaque_existential_1(v42, v43);
        v33 = sub_25268E860();
        __swift_destroy_boxed_opaque_existential_1Tm(v42);
        __swift_destroy_boxed_opaque_existential_1Tm(v44);
        if (v33 >= v32)
        {
          break;
        }

        if (v30 != v29)
        {
          v34 = *v26;
          v35 = *(v26 + 16);
          *(v4 + 32) = *(v26 + 32);
          *v4 = v34;
          *(v4 + 16) = v35;
        }

        v27 = v26 - 40;
        v4 -= 40;
        v11 = v46;
        v28 = v26 > v46;
        v26 -= 40;
        v25 = v31;
        if (!v28)
        {
          v12 = (v27 + 40);
          v22 = v23;
          goto LABEL_36;
        }
      }

      v22 = v31;
      if (v30 != v23)
      {
        v36 = *v31;
        v37 = *(v31 + 1);
        *(v4 + 32) = *(v31 + 4);
        *v4 = v36;
        *(v4 + 16) = v37;
      }

      v11 = v46;
      if (v29 > v46)
      {
        v12 = (v26 + 40);
        v23 = v31;
        if (v31 > v41)
        {
          continue;
        }
      }

      v12 = (v26 + 40);
      goto LABEL_36;
    }
  }

  v11 = a4;
  if (a4 != __src || &__src[40 * v7] <= a4)
  {
    memmove(a4, __src, 40 * v7);
  }

  v12 = &v11[40 * v7];
  if (v6 < 40 || a2 >= v4)
  {
    v22 = v5;
    goto LABEL_36;
  }

  v13 = a2;
  do
  {
    v14 = v4;
    v15 = v12;
    sub_2523C3820(v13, v44);
    sub_2523C3820(v11, v42);
    __swift_project_boxed_opaque_existential_1(v44, v45);
    v16 = sub_25268E860();
    __swift_project_boxed_opaque_existential_1(v42, v43);
    v17 = sub_25268E860();
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    if (v17 < v16)
    {
      v18 = v11;
      v19 = v5 == v11;
      v11 += 40;
      if (v19)
      {
        goto LABEL_14;
      }

LABEL_13:
      v20 = *v18;
      v21 = *(v18 + 1);
      *(v5 + 4) = *(v18 + 4);
      *v5 = v20;
      *(v5 + 1) = v21;
      goto LABEL_14;
    }

    v18 = v13;
    v19 = v5 == v13;
    v13 += 40;
    if (!v19)
    {
      goto LABEL_13;
    }

LABEL_14:
    v5 += 40;
    v12 = v15;
    if (v11 >= v15)
    {
      break;
    }

    v4 = v14;
  }

  while (v13 < v14);
  v22 = v5;
LABEL_36:
  v38 = ((v12 - v11) * 0x6666666666666667) >> 64;
  v39 = (v38 >> 4) + (v38 >> 63);
  if (v22 != v11 || v22 >= &v11[40 * v39])
  {
    memmove(v22, v11, 40 * v39);
  }

  return 1;
}

void sub_2523FDE90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25268E710();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F4DABD0 != -1)
  {
    swift_once();
  }

  v10 = sub_2526905A0();
  __swift_project_value_buffer(v10, qword_27F4E4B18);
  (*(v7 + 16))(v9, a1, v6);

  v11 = sub_252690580();
  v12 = sub_252692EF0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v26;
    *v13 = 136446722;
    sub_252401010(&qword_27F4DB9B0, MEMORY[0x277D15980], MEMORY[0x277D159A8]);
    v14 = sub_252693370();
    v16 = v15;
    (*(v7 + 8))(v9, v6);
    v17 = sub_2525BDA90(v14, v16, &v27);

    *(v13 + 4) = v17;
    *(v13 + 12) = 2080;
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DAE88, &unk_252696580);
    v19 = MEMORY[0x2530A4900](a2, v18);
    v21 = sub_2525BDA90(v19, v20, &v27);

    *(v13 + 14) = v21;
    *(v13 + 22) = 2080;
    v22 = MEMORY[0x2530A4900](a3, v18);
    v24 = sub_2525BDA90(v22, v23, &v27);

    *(v13 + 24) = v24;
    _os_log_impl(&dword_252309000, v11, v12, "Encountered overlapping write specs when merging for endpoint %{public}s, concatenating: %s, %s", v13, 0x20u);
    v25 = v26;
    swift_arrayDestroy();
    MEMORY[0x2530A5A40](v25, -1, -1);
    MEMORY[0x2530A5A40](v13, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_2523FE1AC(void *a1, uint64_t *a2)
{
  v4 = sub_25268E710();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v95 = &v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v85 - v8;
  MEMORY[0x28223BE20](v10);
  v87 = &v85 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9A0, &qword_252696558);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v85 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v92 = &v85 - v16;
  v93 = v5;
  v17 = *a2;
  v18 = *a2 + 64;
  v19 = 1 << *(*a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(*a2 + 64);
  v86 = (v19 + 63) >> 6;
  v97 = (v5 + 32);
  v98 = (v5 + 16);
  v90 = (v5 + 8);
  v88 = v17;

  v22 = 0;
  v96 = a1;
  v99 = v9;
  v94 = v14;
  v89 = v18;
  v91 = v4;
  while (v21)
  {
    v24 = v22;
LABEL_17:
    v28 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v29 = v28 | (v24 << 6);
    v31 = v87;
    v30 = v88;
    v32 = v93;
    (*(v93 + 16))(v87, *(v88 + 48) + *(v93 + 72) * v29, v4);
    v33 = *(*(v30 + 56) + 8 * v29);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9A8, &unk_252696570);
    v35 = *(v34 + 48);
    v36 = *(v32 + 32);
    v14 = v94;
    v36(v94, v31, v4);
    *&v14[v35] = v33;
    (*(*(v34 - 8) + 56))(v14, 0, 1, v34);

    v27 = v92;
    a1 = v96;
LABEL_18:
    v37 = v14;
    sub_2523714D4(v14, v27, &qword_27F4DB9A0, &qword_252696558);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9A8, &unk_252696570);
    if ((*(*(v38 - 8) + 48))(v27, 1, v38) == 1)
    {
    }

    v39 = *(v27 + *(v38 + 48));
    v40 = v99;
    v4 = v91;
    (*v97)(v99, v27, v91);
    v41 = *a1;
    if (!*(*a1 + 16) || (v42 = sub_2523677AC(v40), (v43 & 1) == 0))
    {
      v57 = v4;
      v58 = v39;
      v59 = *v98;
      v60 = v95;
      v61 = v40;
      v62 = v57;
      (*v98)(v95, v61);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v100 = *a1;
      v64 = v100;
      v66 = sub_2523677AC(v60);
      v67 = v64[2];
      v68 = (v65 & 1) == 0;
      v69 = v67 + v68;
      if (__OFADD__(v67, v68))
      {
        goto LABEL_47;
      }

      v70 = v65;
      if (v64[3] >= v69)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v73 = v100;
          if ((v65 & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_25236CC80();
          v73 = v100;
          if ((v70 & 1) == 0)
          {
            goto LABEL_33;
          }
        }
      }

      else
      {
        sub_25236A8D4(v69, isUniquelyReferenced_nonNull_native);
        v71 = sub_2523677AC(v95);
        if ((v70 & 1) != (v72 & 1))
        {
          goto LABEL_51;
        }

        v66 = v71;
        v73 = v100;
        if ((v70 & 1) == 0)
        {
LABEL_33:
          v73[(v66 >> 6) + 8] |= 1 << v66;
          v74 = v93;
          v75 = v95;
          (v59)(v73[6] + *(v93 + 72) * v66, v95, v62);
          *(v73[7] + 8 * v66) = v58;
          v4 = v62;
          v76 = *(v74 + 8);
          v76(v75, v62);
          v76(v99, v62);
          v77 = v73[2];
          v52 = __OFADD__(v77, 1);
          v78 = v77 + 1;
          if (v52)
          {
            goto LABEL_48;
          }

          v73[2] = v78;
          goto LABEL_5;
        }
      }

      *(v73[7] + 8 * v66) = v58;

      v23 = *v90;
      v4 = v62;
      (*v90)(v95, v62);
      v23(v99, v62);
LABEL_5:
      a1 = v96;
      *v96 = v73;
      v14 = v94;
      goto LABEL_6;
    }

    v44 = *(*(v41 + 56) + 8 * v42);

    sub_2523FDE90(v40, v44, v39);
    v100 = v44;
    sub_2523C5E00(v39);
    v45 = v100;
    v46 = swift_isUniquelyReferenced_nonNull_native();
    v100 = *a1;
    v47 = v100;
    v48 = sub_2523677AC(v40);
    v50 = v47[2];
    v51 = (v49 & 1) == 0;
    v52 = __OFADD__(v50, v51);
    v53 = v50 + v51;
    if (v52)
    {
      goto LABEL_49;
    }

    v54 = v49;
    if (v47[3] >= v53)
    {
      v14 = v37;
      if (v46)
      {
        v56 = v100;
        if ((v49 & 1) == 0)
        {
          goto LABEL_42;
        }
      }

      else
      {
        v80 = v48;
        sub_25236CC80();
        v48 = v80;
        v56 = v100;
        if ((v54 & 1) == 0)
        {
          goto LABEL_42;
        }
      }
    }

    else
    {
      sub_25236A8D4(v53, v46);
      v48 = sub_2523677AC(v40);
      if ((v54 & 1) != (v55 & 1))
      {
        goto LABEL_52;
      }

      v14 = v37;
      v56 = v100;
      if ((v54 & 1) == 0)
      {
LABEL_42:
        v56[(v48 >> 6) + 8] |= 1 << v48;
        v81 = v48;
        (*(v93 + 16))(v56[6] + *(v93 + 72) * v48, v99, v4);
        *(v56[7] + 8 * v81) = v45;
        v82 = v56[2];
        v52 = __OFADD__(v82, 1);
        v83 = v82 + 1;
        if (v52)
        {
          goto LABEL_50;
        }

        v56[2] = v83;
        goto LABEL_44;
      }
    }

    *(v56[7] + 8 * v48) = v45;

LABEL_44:
    a1 = v96;
    *v96 = v56;
    (*v90)(v99, v4);
LABEL_6:
    v18 = v89;
  }

  if (v86 <= v22 + 1)
  {
    v25 = v22 + 1;
  }

  else
  {
    v25 = v86;
  }

  v26 = v25 - 1;
  v27 = v92;
  while (1)
  {
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v86)
    {
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F4DB9A8, &unk_252696570);
      (*(*(v79 - 8) + 56))(v14, 1, 1, v79);
      v21 = 0;
      v22 = v26;
      goto LABEL_18;
    }

    v21 = *(v18 + 8 * v24);
    ++v22;
    if (v21)
    {
      v22 = v24;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  sub_2526933E0();
  __break(1u);
LABEL_52:
  result = sub_2526933E0();
  __break(1u);
  return result;
}

void sub_2523FE974(uint64_t a1)
{
  sub_2523FEC78(319, &qword_27F4DB8D0, type metadata accessor for AccessoryControl.HAPWriteSpecification);
  if (v1 <= 0x3F)
  {
    sub_2523FEA14();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2523FEA14()
{
  if (!qword_27F4DB8D8)
  {
    v0 = sub_252693130();
    if (!v1)
    {
      atomic_store(v0, &qword_27F4DB8D8);
    }
  }
}

void sub_2523FEA8C(uint64_t a1)
{
  sub_2523FEB5C(319);
  if (v1 <= 0x3F)
  {
    sub_2523FEC14(319);
    if (v2 <= 0x3F)
    {
      sub_2523FEC78(319, &qword_27F4DB910, MEMORY[0x277D15F80]);
      if (v3 <= 0x3F)
      {
        sub_2523FECCC(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_2523FEB5C(uint64_t a1)
{
  if (!qword_27F4DB8F0)
  {
    sub_25268F4D0();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB8F8, &qword_252696468);
    sub_252401010(&qword_27F4DAF28, MEMORY[0x277D16348], MEMORY[0x277D16350]);
    v1 = sub_252692B10();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4DB8F0);
    }
  }
}

void sub_2523FEC14(uint64_t a1)
{
  if (!qword_27F4DB900)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F4DB908, &qword_252696470);
    v1 = sub_252693130();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4DB900);
    }
  }
}

void sub_2523FEC78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_252693130();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_2523FECCC(uint64_t a1)
{
  if (!qword_27F4DB918)
  {
    sub_25268DA10();
    sub_252401010(&qword_27F4DAE60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_252692EA0();
    if (!v2)
    {
      atomic_store(v1, &qword_27F4DB918);
    }
  }
}

uint64_t sub_2523FED6C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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