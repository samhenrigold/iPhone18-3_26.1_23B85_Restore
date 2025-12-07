uint64_t ElectricVehicleSimulator.Configuration.deviceID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ElectricVehicleSimulator.Configuration.guidanceToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricVehicleSimulator.Configuration(0) + 60);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ElectricVehicleSimulator.Configuration.init(guidanceToken:deviceID:seed:chargingProbability:minSessionsPerDay:maxSessionsPerDay:minChargingDurationMinutes:maxChargingDurationMinutes:allowCrossDaySessions:minChargingPowerWatts:maxChargingPowerWatts:batteryCapacityWh:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, char a14)
{
  *a9 = a2;
  *(a9 + 8) = a3;
  *(a9 + 16) = a4;
  *(a9 + 24) = a10;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a14;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13;
  v16 = *(type metadata accessor for ElectricVehicleSimulator.Configuration(0) + 60);
  v17 = sub_238278BC0();
  v18 = *(*(v17 - 8) + 32);

  return v18(a9 + v16, a1, v17);
}

uint64_t _s9EnergyKit24ElectricVehicleSimulatorC16DailyAggregationV4date10Foundation4DateVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238278B70();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ElectricVehicleSimulator.__allocating_init(configuration:)(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_23821AC2C(a1, v2 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config, type metadata accessor for ElectricVehicleSimulator.Configuration);
  v3 = *(a1 + 16);
  sub_23821AC94(a1, type metadata accessor for ElectricVehicleSimulator.Configuration);
  *(v2 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_rng) = v3;
  return v2;
}

uint64_t ElectricVehicleSimulator.init(configuration:)(uint64_t a1)
{
  sub_23821AC2C(a1, v1 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config, type metadata accessor for ElectricVehicleSimulator.Configuration);
  v3 = *(a1 + 16);
  sub_23821AC94(a1, type metadata accessor for ElectricVehicleSimulator.Configuration);
  *(v1 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_rng) = v3;
  return v1;
}

void *sub_238216E10(uint64_t a1, uint64_t a2)
{
  v50 = sub_238278C50();
  v3 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v49 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68D0, &unk_23827A310);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39 - v6;
  v8 = sub_238278B70();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v39 - v12;
  v14 = sub_238278C60();
  v40 = *(v14 - 8);
  v41 = v14;
  MEMORY[0x28223BE20](v14);
  v53 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238278C40();
  sub_238278B50();
  v17 = v16;
  sub_238278B50();
  if (v17 <= -1.0)
  {
    goto LABEL_33;
  }

  if (v17 >= 1.84467441e19)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v18 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_35;
  }

  if (v18 <= -1.0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  if (v18 >= 1.84467441e19)
  {
    goto LABEL_37;
  }

  *(v51 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_rng) = v18 + v17 + *(v51 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config + 16);
  sub_238278BD0();
  sub_238278BD0();
  v48 = sub_23821B4AC(&qword_27DEF68D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  v19 = sub_238278FD0();
  v39 = v9;
  if ((v19 & 1) == 0)
  {
    v46 = *MEMORY[0x277CC9968];
    v44 = (v3 + 8);
    v45 = (v3 + 104);
    v47 = (v9 + 8);
    v42 = (v9 + 32);
    v43 = (v9 + 48);
    v20 = MEMORY[0x277D84F90];
    while (1)
    {
      sub_238217514(v13);
      if (v2)
      {
        v38 = *v47;
        (*v47)(v52, v8);
        v38(v13, v8);
        (*(v40 + 8))(v53, v41);
      }

      v22 = v21;
      v23 = v7;
      v24 = *(v21 + 16);
      v25 = v20[2];
      v26 = v25 + v24;
      if (__OFADD__(v25, v24))
      {
        __break(1u);
LABEL_30:
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v26 <= v20[3] >> 1)
      {
        if (*(v22 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        if (v25 <= v26)
        {
          v32 = v25 + v24;
        }

        else
        {
          v32 = v25;
        }

        v20 = sub_23821937C(isUniquelyReferenced_nonNull_native, v32, 1, v20, &qword_27DEF6958, &qword_23827A4A0, type metadata accessor for ElectricVehicleLoadEvent);
        if (*(v22 + 16))
        {
LABEL_15:
          v28 = (v20[3] >> 1) - v20[2];
          type metadata accessor for ElectricVehicleLoadEvent(0);
          if (v28 < v24)
          {
            goto LABEL_31;
          }

          swift_arrayInitWithCopy();

          if (v24)
          {
            v29 = v20[2];
            v30 = __OFADD__(v29, v24);
            v31 = v29 + v24;
            if (v30)
            {
              goto LABEL_32;
            }

            v20[2] = v31;
          }

          goto LABEL_24;
        }
      }

      if (v24)
      {
        goto LABEL_30;
      }

LABEL_24:
      v34 = v49;
      v33 = v50;
      (*v45)(v49, v46, v50);
      sub_238278C30();
      v35 = v34;
      v7 = v23;
      (*v44)(v35, v33);
      if ((*v43)(v23, 1, v8) == 1)
      {
        goto LABEL_38;
      }

      (*v47)(v13, v8);

      (*v42)(v13, v23, v8);
      if (sub_238278FD0())
      {
        goto LABEL_26;
      }
    }
  }

  v20 = MEMORY[0x277D84F90];
LABEL_26:
  v54 = v20;

  sub_238219558(&v54);
  if (!v2)
  {
    v36 = *(v39 + 8);
    v36(v52, v8);
    v36(v13, v8);
    (*(v40 + 8))(v53, v41);

    return v54;
  }

LABEL_39:

  __break(1u);
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

void sub_238217514(uint64_t a1)
{
  v4 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v46 = *(Event - 8);
  v47 = Event;
  v8 = MEMORY[0x28223BE20](Event);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v49 = a1;
  v50 = v1;
  v13 = v1 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config;
  v14 = *(v1 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config + 16);
  sub_238278B50();
  v16 = v15 / 86400.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_46;
  }

  if (v16 <= -1.0)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  if (v16 >= 1.84467441e19)
  {
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v17 = 1103515245 * (v14 + v16) + 12345;
  if (vcvtd_n_f64_u64(v17, 0x40uLL) >= *(v13 + 24))
  {
    return;
  }

  v18 = *(v13 + 32);
  v19 = *(v13 + 40);
  if (v19 < v18)
  {
    goto LABEL_49;
  }

  v20 = __OFSUB__(v19, v18);
  v21 = v19 - v18;
  if (v20)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v20 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (v20)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v23 = 1103515245 * v17 + 12345;
  v24 = vcvtd_n_f64_u64(v23, 0x40uLL) * v22 + v18;
  if ((*&v24 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  if (v24 <= -9.22337204e18)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v24 >= 9.22337204e18)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v51 = 1103515245 * v23 + 12345;
  v25 = vcvtd_n_f64_u64(v51, 0x40uLL) * 71.0 + 20.0;
  if (v25 == INFINITY)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v25 <= -9.22337204e18)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v25 >= 9.22337204e18)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v45 = v12;
  v26 = v24;
  if (v24 < 0)
  {
LABEL_58:
    __break(1u);
    return;
  }

  if (v26)
  {
    v43 = v10;
    v44 = v6;
    v27 = 0;
    v48 = v25;
    v28 = MEMORY[0x277D84F90];
    do
    {
      if (v27 >= v26)
      {
        __break(1u);
LABEL_41:
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
        goto LABEL_47;
      }

      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        goto LABEL_41;
      }

      v30 = sub_23821C254(v49, &v51, v48);
      if (v2)
      {

        return;
      }

      v31 = v30;
      v32 = v30[2];
      v33 = v28[2];
      v34 = v33 + v32;
      if (__OFADD__(v33, v32))
      {
        goto LABEL_42;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v34 <= v28[3] >> 1)
      {
        if (v31[2])
        {
          goto LABEL_24;
        }
      }

      else
      {
        if (v33 <= v34)
        {
          v38 = v33 + v32;
        }

        else
        {
          v38 = v33;
        }

        v28 = sub_23821937C(isUniquelyReferenced_nonNull_native, v38, 1, v28, &qword_27DEF6958, &qword_23827A4A0, type metadata accessor for ElectricVehicleLoadEvent);
        if (v31[2])
        {
LABEL_24:
          if ((v28[3] >> 1) - v28[2] < v32)
          {
            goto LABEL_44;
          }

          swift_arrayInitWithCopy();

          if (v32)
          {
            v36 = v28[2];
            v20 = __OFADD__(v36, v32);
            v37 = v36 + v32;
            if (v20)
            {
              goto LABEL_45;
            }

            v28[2] = v37;
          }

          goto LABEL_33;
        }
      }

      if (v32)
      {
        goto LABEL_43;
      }

LABEL_33:
      v39 = v31[2];
      if (v39)
      {
        v40 = v43;
        sub_23821AC2C(v31 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * (v39 - 1), v43, type metadata accessor for ElectricVehicleLoadEvent);

        v41 = v45;
        sub_23821EB58(v40, v45, type metadata accessor for ElectricVehicleLoadEvent);
        v42 = v44;
        sub_23821AC2C(v41 + *(v47 + 28), v44, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
        sub_23821AC94(v41, type metadata accessor for ElectricVehicleLoadEvent);
        v48 = *v42;
        sub_23821AC94(v42, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
        v27 = v29;
      }

      else
      {

        ++v27;
      }
    }

    while (v29 != v26);
  }
}

uint64_t sub_238217A18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v88 = a2;
  v89 = a1;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  v72 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = v67 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v82 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = v67 - v5;
  v92 = sub_238278BC0();
  v83 = *(v92 - 8);
  v6 = MEMORY[0x28223BE20](v92);
  v91 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v90 = v67 - v8;
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v84 = *(Event - 8);
  MEMORY[0x28223BE20](Event);
  v73 = v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_238278C50();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68D0, &unk_23827A310);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v67 - v15;
  v17 = sub_238278B70();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v80 = v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v67 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = v67 - v24;
  v79 = sub_238278C60();
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v27 = v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238278C40();
  sub_238278BD0();
  (*(v11 + 104))(v13, *MEMORY[0x277CC9968], v10);
  v77 = v27;
  sub_238278C30();
  (*(v11 + 8))(v13, v10);
  result = (*(v18 + 48))(v16, 1, v17);
  if (result == 1)
  {
    goto LABEL_24;
  }

  v29 = *(v18 + 32);
  v75 = v18 + 32;
  v74 = v29;
  v30 = (v29)(v23, v16, v17);
  MEMORY[0x28223BE20](v30);
  v67[-2] = v25;
  v67[-1] = v23;
  v76 = v23;
  v31 = v88;

  v32 = sub_23821841C(sub_238219600, &v67[-4], v31);
  v97 = MEMORY[0x277D84FA0];
  v33 = *(v32 + 16);
  if (v33)
  {
    v68 = v25;
    v69 = v18;
    v70 = v17;
    v71 = a3;
    v34 = *(Event + 28);
    v89 = *(Event + 24);
    v35 = v73;
    v36 = &v73[v34];
    v37 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
    v38 = v37[6];
    Event = v37[5];
    v88 = v38;
    v39 = objc_opt_self();
    v40 = 0;
    v85 = v37[7];
    v86 = v39;
    v41 = (*(v84 + 80) + 32) & ~*(v84 + 80);
    v67[1] = v32;
    v42 = v32 + v41;
    v81 = v84[9];
    v84 = (v83 + 2);
    ++v83;
    ++v82;
    v43 = (v72 + 8);
    v44 = 0.0;
    v45 = 0.0;
    v46 = 0.0;
    v47 = 0.0;
    while (1)
    {
      sub_23821AC2C(v42, v35, type metadata accessor for ElectricVehicleLoadEvent);
      v49 = v91;
      v48 = v92;
      (*v84)(v91, v35 + v89, v92);
      v50 = v90;
      sub_23821A94C(v90, v49);
      (*v83)(v50, v48);
      if (qword_27DEF68A0 != -1)
      {
        swift_once();
      }

      v52 = v93;
      v51 = v94;
      sub_2382789E0();
      sub_2382789D0();
      v54 = v53;
      (*v82)(v52, v51);
      v55 = [v86 milliwatts];
      v57 = v95;
      v56 = v96;
      sub_2382789E0();

      sub_2382789D0();
      v59 = v58;
      (*v43)(v57, v56);
      LOBYTE(v55) = v36[v85];
      result = sub_23821AC94(v35, type metadata accessor for ElectricVehicleLoadEvent);
      if (v55)
      {
        v46 = v46 + v54;
        if (v59 <= 0.0)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v47 = v47 + v54;
        if (v59 <= 0.0)
        {
          goto LABEL_4;
        }
      }

      if (__OFADD__(v40++, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      v45 = v45 + v59;
      if (v44 <= v59)
      {
        v44 = v59;
      }

LABEL_4:
      v42 += v81;
      if (!--v33)
      {

        a3 = v71;
        v17 = v70;
        v18 = v69;
        v25 = v68;
        goto LABEL_17;
      }
    }
  }

  v40 = 0;
  v44 = 0.0;
  v45 = 0.0;
  v46 = 0.0;
  v47 = 0.0;
LABEL_17:
  result = (*(v78 + 8))(v77, v79);
  v61 = *(v97 + 16);
  v62 = v80;
  if ((v61 * 90) >> 64 != (90 * v61) >> 63)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    return result;
  }

  (*(v18 + 16))(v80, v25, v17);

  v63 = v76;
  if (v40 < 1)
  {
    v64 = 0.0;
  }

  else
  {
    v64 = v45 / v40;
  }

  v74(a3, v62, v17);
  v65 = type metadata accessor for ElectricVehicleSimulator.DailyAggregation(0);
  *(a3 + v65[5]) = v47;
  *(a3 + v65[6]) = v46;
  *(a3 + v65[7]) = v61;
  *(a3 + v65[8]) = v64;
  *(a3 + v65[9]) = v44;
  *(a3 + v65[10]) = 90 * v61;
  v66 = *(v18 + 8);
  v66(v63, v17);
  return (v66)(v25, v17);
}

uint64_t sub_23821841C(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v25 = *(Event - 8);
  v8 = MEMORY[0x28223BE20](Event - 8);
  v24 = v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v12 = v21 - v11;
  v23 = *(a3 + 16);
  if (v23)
  {
    v13 = 0;
    v14 = MEMORY[0x277D84F90];
    v21[1] = a2;
    v22 = a3;
    v21[0] = a1;
    while (v13 < *(a3 + 16))
    {
      v15 = (*(v25 + 80) + 32) & ~*(v25 + 80);
      v16 = *(v25 + 72);
      sub_23821AC2C(a3 + v15 + v16 * v13, v12, type metadata accessor for ElectricVehicleLoadEvent);
      v17 = a1(v12);
      if (v3)
      {
        sub_23821AC94(v12, type metadata accessor for ElectricVehicleLoadEvent);

        goto LABEL_15;
      }

      if (v17)
      {
        sub_23821EB58(v12, v24, type metadata accessor for ElectricVehicleLoadEvent);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v26 = v14;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_23821C048(0, *(v14 + 16) + 1, 1);
          v14 = v26;
        }

        v20 = *(v14 + 16);
        v19 = *(v14 + 24);
        if (v20 >= v19 >> 1)
        {
          sub_23821C048((v19 > 1), v20 + 1, 1);
          v14 = v26;
        }

        *(v14 + 16) = v20 + 1;
        result = sub_23821EB58(v24, v14 + v15 + v20 * v16, type metadata accessor for ElectricVehicleLoadEvent);
        a3 = v22;
        a1 = v21[0];
      }

      else
      {
        result = sub_23821AC94(v12, type metadata accessor for ElectricVehicleLoadEvent);
      }

      if (v23 == ++v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    v14 = MEMORY[0x277D84F90];
LABEL_15:

    return v14;
  }

  return result;
}

uint64_t sub_2382186A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a2;
  v81 = a3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  v75 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v95 = &v71 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v74 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v71 - v5;
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v73 = *(Event - 8);
  MEMORY[0x28223BE20](Event);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238278C50();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68F0, &qword_23827A328);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v89 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v71 - v15;
  v80 = sub_238278B70();
  v79 = *(v80 - 8);
  v17 = MEMORY[0x28223BE20](v80);
  v78 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v85 = &v71 - v20;
  MEMORY[0x28223BE20](v19);
  v22 = &v71 - v21;
  v77 = sub_238278C60();
  v76 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v24 = &v71 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238278C40();
  v25 = *(v9 + 104);
  LODWORD(v88) = *MEMORY[0x277CC9980];
  v87 = v25;
  v25(v11);
  v92 = a1;
  sub_238278BE0();
  v26 = *(v9 + 8);
  v90 = (v9 + 8);
  v91 = v8;
  v86 = v26;
  v26(v11, v8);
  v27 = sub_238278AA0();
  v28 = *(v27 - 8);
  v83 = *(v28 + 48);
  result = v83(v16, 1, v27);
  if (result == 1)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  sub_238278A90();
  v84 = v22;
  v30 = *(v28 + 8);
  v30(v16, v27);
  v31 = v91;
  v87(v11, v88, v91);
  v32 = v89;
  sub_238278BE0();
  v86(v11, v31);
  result = v83(v32, 1, v27);
  if (result == 1)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v33 = v24;
  v34 = v85;
  sub_238278A70();
  v35 = (v30)(v32, v27);
  MEMORY[0x28223BE20](v35);
  *(&v71 - 2) = v84;
  *(&v71 - 1) = v34;
  v36 = v82;

  v37 = sub_23821841C(sub_23821EC28, (&v71 - 4), v36);
  v38 = *(v37 + 16);
  if (v38)
  {
    v83 = v24;
    v39 = &v7[*(Event + 28)];
    v40 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
    v41 = v40[6];
    v91 = v40[5];
    v92 = v41;
    v42 = objc_opt_self();
    LODWORD(v86) = 0;
    v43 = 0;
    v89 = v40[7];
    v90 = v42;
    v44 = (*(v73 + 80) + 32) & ~*(v73 + 80);
    v82 = v37;
    v45 = v37 + v44;
    v87 = *(v73 + 72);
    v88 = (v74 + 8);
    v46 = (v75 + 8);
    v47 = 0.0;
    v48 = 0.0;
    v49 = 0.0;
    v50 = 0.0;
    while (1)
    {
      sub_23821AC2C(v45, v7, type metadata accessor for ElectricVehicleLoadEvent);
      v51 = v7;
      if (qword_27DEF68A0 != -1)
      {
        swift_once();
      }

      v52 = v93;
      v53 = v94;
      sub_2382789E0();
      sub_2382789D0();
      v55 = v54;
      (*v88)(v52, v53);
      v56 = [v90 milliwatts];
      v58 = v95;
      v57 = v96;
      sub_2382789E0();

      sub_2382789D0();
      v60 = v59;
      (*v46)(v58, v57);
      LOBYTE(v56) = v89[v39];
      result = sub_23821AC94(v51, type metadata accessor for ElectricVehicleLoadEvent);
      v7 = v51;
      if (v56)
      {
        v49 = v49 + v55;
        if (v60 <= 0.0)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v50 = v50 + v55;
        if (v60 <= 0.0)
        {
          goto LABEL_5;
        }
      }

      if (__OFADD__(v43++, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      v48 = v48 + v60;
      if (v47 <= v60)
      {
        v47 = v60;
      }

      LODWORD(v86) = 1;
LABEL_5:
      v45 += v87;
      if (!--v38)
      {

        v33 = v83;
        v62 = v86;
        goto LABEL_18;
      }
    }
  }

  v62 = 0;
  v43 = 0;
  v47 = 0.0;
  v48 = 0.0;
  v49 = 0.0;
  v50 = 0.0;
LABEL_18:
  (*(v76 + 8))(v33, v77);
  v63 = v79;
  v64 = v78;
  v65 = v84;
  v66 = v80;
  (*(v79 + 16))(v78, v84, v80);
  if (v43 < 1)
  {
    v67 = 0.0;
  }

  else
  {
    v67 = v48 / v43;
  }

  v68 = v81;
  (*(v63 + 32))(v81, v64, v66);
  v69 = type metadata accessor for ElectricVehicleSimulator.HourlyAggregation(0);
  *(v68 + v69[5]) = v50;
  *(v68 + v69[6]) = v49;
  *(v68 + v69[7]) = v67;
  *(v68 + v69[8]) = v47;
  *(v68 + v69[9]) = v62 & 1;
  v70 = *(v63 + 8);
  v70(v85, v66);
  return (v70)(v65, v66);
}

uint64_t sub_238219040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for ElectricVehicleLoadEvent(0);
  sub_238278B70();
  sub_23821B4AC(&qword_27DEF68D8, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
  if (sub_238278FD0())
  {
    return 0;
  }

  else
  {
    return sub_238278B40() & 1;
  }
}

uint64_t ElectricVehicleSimulator.__deallocating_deinit()
{
  sub_23821AC94(v0 + OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config, type metadata accessor for ElectricVehicleSimulator.Configuration);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2382191B4(uint64_t result, uint64_t a2)
{
  v3 = 1103515245 * *v2 + 12345;
  *v2 = v3;
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v7 = vcvtd_n_f64_u64(v3, 0x40uLL) * v6 + result;
  if ((*&v7 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v7 <= -9.22337204e18)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v7 < 9.22337204e18)
  {
    return v7;
  }

LABEL_11:
  __break(1u);
  return result;
}

char *sub_238219250(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6960, &qword_23827A4A8);
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

void *sub_23821937C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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
    v17 = MEMORY[0x277D84F90];
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

uint64_t sub_238219558(uint64_t *a1)
{
  v2 = *(type metadata accessor for ElectricVehicleLoadEvent(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_23821C240(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_238219620(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_238219620(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_238279560();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ElectricVehicleLoadEvent(0);
        v6 = sub_238279100();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ElectricVehicleLoadEvent(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_238219994(v8, v9, a1, v4);
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
    return sub_23821974C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_23821974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v8 = MEMORY[0x28223BE20](Event);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v26 - v12;
  result = MEMORY[0x28223BE20](v11);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_23821AC2C(v23, v17, type metadata accessor for ElectricVehicleLoadEvent);
      sub_23821AC2C(v20, v13, type metadata accessor for ElectricVehicleLoadEvent);
      v24 = sub_238278B40();
      sub_23821AC94(v13, type metadata accessor for ElectricVehicleLoadEvent);
      result = sub_23821AC94(v17, type metadata accessor for ElectricVehicleLoadEvent);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_23821EB58(v23, v10, type metadata accessor for ElectricVehicleLoadEvent);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_23821EB58(v10, v20, type metadata accessor for ElectricVehicleLoadEvent);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_238219994(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v104 = a1;
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v112 = *(Event - 8);
  v10 = MEMORY[0x28223BE20](Event);
  v107 = &v100 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v115 = &v100 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v116 = &v100 - v15;
  result = MEMORY[0x28223BE20](v14);
  v18 = &v100 - v17;
  v114 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_95:
    v5 = *v104;
    if (!*v104)
    {
      goto LABEL_134;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_128:
      result = sub_23821A854(a4);
    }

    v118 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v114)
      {
        v96 = *(result + 16 * a4);
        v97 = result;
        v98 = *(result + 16 * (a4 - 1) + 40);
        sub_23821A2C0(*v114 + *(v112 + 72) * v96, *v114 + *(v112 + 72) * *(result + 16 * (a4 - 1) + 32), *v114 + *(v112 + 72) * v98, v5);
        if (v6)
        {
        }

        if (v98 < v96)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_23821A854(v97);
        }

        if (a4 - 2 >= *(v97 + 2))
        {
          goto LABEL_122;
        }

        v99 = &v97[16 * a4];
        *v99 = v96;
        *(v99 + 1) = v98;
        v118 = v97;
        sub_23821A7C8(a4 - 1);
        result = v118;
        a4 = *(v118 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v103 = a4;
  v117 = Event;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v108 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v112 + 72);
      v5 = *v114 + v24 * v23;
      v110 = *v114;
      v25 = v110;
      sub_23821AC2C(v110 + v24 * v23, v18, type metadata accessor for ElectricVehicleLoadEvent);
      v26 = v25 + v24 * v20;
      v27 = v116;
      sub_23821AC2C(v26, v116, type metadata accessor for ElectricVehicleLoadEvent);
      LODWORD(v111) = sub_238278B40();
      sub_23821AC94(v27, type metadata accessor for ElectricVehicleLoadEvent);
      result = sub_23821AC94(v18, type metadata accessor for ElectricVehicleLoadEvent);
      v102 = v20;
      v28 = v20 + 2;
      v113 = v24;
      v29 = v110 + v24 * (v20 + 2);
      while (v19 != v28)
      {
        sub_23821AC2C(v29, v18, type metadata accessor for ElectricVehicleLoadEvent);
        v30 = v116;
        sub_23821AC2C(v5, v116, type metadata accessor for ElectricVehicleLoadEvent);
        v31 = sub_238278B40() & 1;
        sub_23821AC94(v30, type metadata accessor for ElectricVehicleLoadEvent);
        result = sub_23821AC94(v18, type metadata accessor for ElectricVehicleLoadEvent);
        ++v28;
        v29 += v113;
        v5 += v113;
        if ((v111 & 1) != v31)
        {
          v19 = v28 - 1;
          break;
        }
      }

      v22 = v102;
      a4 = v103;
      if (v111)
      {
        if (v19 < v102)
        {
          goto LABEL_125;
        }

        if (v102 < v19)
        {
          v101 = v6;
          v32 = v113 * (v19 - 1);
          v33 = v19;
          v34 = v19 * v113;
          v111 = v19;
          v35 = v102;
          v36 = v102;
          v37 = v102 * v113;
          do
          {
            if (v35 != --v33)
            {
              v38 = *v114;
              if (!*v114)
              {
                goto LABEL_131;
              }

              v5 = v38 + v37;
              sub_23821EB58(v38 + v37, v107, type metadata accessor for ElectricVehicleLoadEvent);
              if (v37 < v32 || v5 >= v38 + v34)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v37 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_23821EB58(v107, v38 + v32, type metadata accessor for ElectricVehicleLoadEvent);
            }

            ++v35;
            v32 -= v113;
            v34 -= v113;
            v37 += v113;
          }

          while (v35 < v33);
          v6 = v101;
          a4 = v103;
          v22 = v36;
          v19 = v111;
        }
      }
    }

    v39 = v114[1];
    if (v19 < v39)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_124;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_126;
        }

        if ((v22 + a4) >= v39)
        {
          v40 = v114[1];
        }

        else
        {
          v40 = v22 + a4;
        }

        if (v40 < v22)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v19 != v40)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_123;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v108;
    }

    else
    {
      result = sub_238219250(0, *(v108 + 2) + 1, 1, v108);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      result = sub_238219250((v41 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v42 = &v21[16 * a4];
    *(v42 + 4) = v22;
    *(v42 + 5) = v20;
    v43 = *v104;
    if (!*v104)
    {
      goto LABEL_133;
    }

    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v21 + 4);
          v46 = *(v21 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_52:
          if (v48)
          {
            goto LABEL_112;
          }

          v61 = &v21[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_115;
          }

          v67 = &v21[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_119;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v71 = &v21[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_66:
        if (v66)
        {
          goto LABEL_114;
        }

        v74 = &v21[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_117;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
          goto LABEL_127;
        }

        if (!*v114)
        {
          goto LABEL_130;
        }

        v82 = v21;
        v83 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v44 + 40];
        sub_23821A2C0(*v114 + *(v112 + 72) * v83, *v114 + *(v112 + 72) * *&v21[16 * v44 + 32], *v114 + *(v112 + 72) * v5, v43);
        if (v6)
        {
        }

        if (v5 < v83)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_23821A854(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_109;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v118 = v82;
        result = sub_23821A7C8(v44);
        v21 = v118;
        v5 = *(v118 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v21[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_110;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_111;
      }

      v56 = &v21[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_113;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_116;
      }

      if (v60 >= v52)
      {
        v78 = &v21[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_120;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v114[1];
    a4 = v103;
    if (v20 >= v19)
    {
      goto LABEL_95;
    }
  }

  v101 = v6;
  v85 = v19;
  v86 = v22;
  v87 = *v114;
  v88 = *(v112 + 72);
  v89 = *v114 + v88 * (v19 - 1);
  v90 = -v88;
  v102 = v86;
  v91 = v86 - v19;
  v111 = v85;
  v105 = v88;
  v106 = v40;
  v5 = v87 + v85 * v88;
LABEL_85:
  v109 = v5;
  v110 = v91;
  v113 = v89;
  while (1)
  {
    a4 = type metadata accessor for ElectricVehicleLoadEvent;
    sub_23821AC2C(v5, v18, type metadata accessor for ElectricVehicleLoadEvent);
    v92 = v116;
    sub_23821AC2C(v89, v116, type metadata accessor for ElectricVehicleLoadEvent);
    v93 = sub_238278B40();
    sub_23821AC94(v92, type metadata accessor for ElectricVehicleLoadEvent);
    result = sub_23821AC94(v18, type metadata accessor for ElectricVehicleLoadEvent);
    if ((v93 & 1) == 0)
    {
LABEL_84:
      v20 = v106;
      v89 = v113 + v105;
      v91 = v110 - 1;
      v5 = v109 + v105;
      if (++v111 != v106)
      {
        goto LABEL_85;
      }

      v6 = v101;
      v22 = v102;
      if (v106 < v102)
      {
        goto LABEL_123;
      }

      goto LABEL_33;
    }

    if (!v87)
    {
      break;
    }

    a4 = type metadata accessor for ElectricVehicleLoadEvent;
    v94 = v115;
    sub_23821EB58(v5, v115, type metadata accessor for ElectricVehicleLoadEvent);
    swift_arrayInitWithTakeFrontToBack();
    sub_23821EB58(v94, v89, type metadata accessor for ElectricVehicleLoadEvent);
    v89 += v90;
    v5 += v90;
    if (__CFADD__(v91++, 1))
    {
      goto LABEL_84;
    }
  }

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
  return result;
}

uint64_t sub_23821A2C0(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v8 = MEMORY[0x28223BE20](Event);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v43 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_59;
          }

          v37 = v23;
          v29 = a3 + v24;
          v30 = v25 + v24;
          v31 = v43;
          sub_23821AC2C(v30, v43, type metadata accessor for ElectricVehicleLoadEvent);
          v32 = v44;
          sub_23821AC2C(v27, v44, type metadata accessor for ElectricVehicleLoadEvent);
          v33 = sub_238278B40();
          sub_23821AC94(v32, type metadata accessor for ElectricVehicleLoadEvent);
          sub_23821AC94(v31, type metadata accessor for ElectricVehicleLoadEvent);
          if (v33)
          {
            break;
          }

          v23 = v30;
          if (a3 < v25 || v29 >= v25)
          {
            a3 = v29;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v34 = a3 == v25;
            a3 = v29;
            a1 = v39;
            if (!v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v27 = v42;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_58;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          v34 = a3 == v41;
          a3 = v29;
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (!v34)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_58:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = a3;
        v20 = v43;
        sub_23821AC2C(a2, v43, type metadata accessor for ElectricVehicleLoadEvent);
        v21 = v44;
        sub_23821AC2C(a4, v44, type metadata accessor for ElectricVehicleLoadEvent);
        v22 = sub_238278B40();
        sub_23821AC94(v21, type metadata accessor for ElectricVehicleLoadEvent);
        sub_23821AC94(v20, type metadata accessor for ElectricVehicleLoadEvent);
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v13;
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v13;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v19;
          }

          else
          {
            a3 = v19;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v47 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v48 = a1;
      }

      while (a4 < v42 && a2 < a3);
    }
  }

LABEL_59:
  sub_23821A868(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_23821A7C8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23821A854(v3);
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

uint64_t sub_23821A868(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for ElectricVehicleLoadEvent(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_23821A94C(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_23821B4AC(&qword_27DEF6940, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_238278FA0();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_23821B4AC(&qword_27DEF6948, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_238278FE0();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_23821B850(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_23821AC2C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23821AC94(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23821AD1C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23821AD54(uint64_t a1)
{
  result = type metadata accessor for ElectricVehicleSimulator.Configuration(319);
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

uint64_t sub_23821AEB0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_238278BC0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 60);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_23821AF70(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_238278BC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 60);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_23821B014(uint64_t a1)
{
  result = sub_238278BC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23821B0E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_238278B70();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_23821B164(uint64_t a1, uint64_t a2)
{
  v4 = sub_238278B70();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_23821B1D4(uint64_t a1)
{
  result = sub_238278B70();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23821B278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278B70();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 36));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_23821B358(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238278B70();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 36)) = a2 + 1;
  }

  return result;
}

uint64_t sub_23821B410(uint64_t a1)
{
  result = sub_238278B70();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23821B4AC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_23821B4F4(uint64_t a1)
{
  v2 = v1;
  v36 = sub_238278BC0();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6950, &qword_23827A498);
  result = sub_238279380();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_23821B4AC(&qword_27DEF6940, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_238278FA0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_23821B850(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_23821B4F4(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_23821BAF4();
      goto LABEL_12;
    }

    sub_23821BD2C(v10 + 1);
  }

  v12 = *v3;
  sub_23821B4AC(&qword_27DEF6940, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_238278FA0();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_23821B4AC(&qword_27DEF6948, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_238278FE0();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_2382795B0();
  __break(1u);
  return result;
}

void *sub_23821BAF4()
{
  v1 = v0;
  v2 = sub_238278BC0();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6950, &qword_23827A498);
  v6 = *v0;
  v7 = sub_238279370();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

uint64_t sub_23821BD2C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_238278BC0();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6950, &qword_23827A498);
  v7 = sub_238279380();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_23821B4AC(&qword_27DEF6940, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_238278FA0();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

void *sub_23821C048(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23821C068(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23821C068(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6958, &qword_23827A4A0);
  v10 = *(type metadata accessor for ElectricVehicleLoadEvent(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for ElectricVehicleLoadEvent(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void *sub_23821C254(uint64_t a1, unint64_t a2, unint64_t a3)
{
  v378 = a1;
  v376 = a3;
  v352 = sub_238278C50();
  v320 = *(v352 - 8);
  MEMORY[0x28223BE20](v352);
  v351 = &v303 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6968, &unk_23827A4B0);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v310 = &v303 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v330 = &v303 - v11;
  MEMORY[0x28223BE20](v10);
  v345 = &v303 - v12;
  v357 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  v13 = MEMORY[0x28223BE20](v357);
  v311 = &v303 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v312 = &v303 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v370 = &v303 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v369 = &v303 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v346 = &v303 - v22;
  MEMORY[0x28223BE20](v21);
  v373 = (&v303 - v23);
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  v361 = *(v383 - 8);
  v24 = MEMORY[0x28223BE20](v383);
  v309 = &v303 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v24);
  v331 = &v303 - v27;
  MEMORY[0x28223BE20](v26);
  v380 = (&v303 - v28);
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  v360 = *(v382 - 8);
  v29 = MEMORY[0x28223BE20](v382);
  v318 = &v303 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v29);
  v371 = &v303 - v32;
  MEMORY[0x28223BE20](v31);
  v381 = &v303 - v33;
  v356 = type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0);
  v34 = MEMORY[0x28223BE20](v356);
  v316 = &v303 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v34);
  v308 = (&v303 - v37);
  v38 = MEMORY[0x28223BE20](v36);
  v317 = &v303 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v368 = &v303 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v329 = (&v303 - v43);
  v44 = MEMORY[0x28223BE20](v42);
  v367 = &v303 - v45;
  v46 = MEMORY[0x28223BE20](v44);
  v365 = &v303 - v47;
  v48 = MEMORY[0x28223BE20](v46);
  v344 = &v303 - v49;
  MEMORY[0x28223BE20](v48);
  v385 = &v303 - v50;
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v333 = *(Event - 8);
  v51 = MEMORY[0x28223BE20](Event);
  v307 = &v303 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = MEMORY[0x28223BE20](v51);
  v305 = &v303 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v306 = &v303 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v328 = &v303 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v327 = &v303 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v63 = &v303 - v62;
  v64 = MEMORY[0x28223BE20](v61);
  v326 = (&v303 - v65);
  v66 = MEMORY[0x28223BE20](v64);
  v334 = &v303 - v67;
  MEMORY[0x28223BE20](v66);
  v319 = &v303 - v68;
  v372 = sub_238278C00();
  v355 = *(v372 - 8);
  MEMORY[0x28223BE20](v372);
  v358 = &v303 - ((v69 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_238278C10();
  v71 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v73 = &v303 - ((v72 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_238278BF0();
  v75 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v77 = (&v303 - ((v76 + 15) & 0xFFFFFFFFFFFFFFF0));
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68D0, &unk_23827A310);
  v79 = MEMORY[0x28223BE20](v78 - 8);
  v313 = &v303 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = MEMORY[0x28223BE20](v79);
  v332 = &v303 - v82;
  MEMORY[0x28223BE20](v81);
  v84 = &v303 - v83;
  v386 = sub_238278B70();
  v377 = *(v386 - 8);
  v85 = MEMORY[0x28223BE20](v386);
  v315 = &v303 - ((v86 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x28223BE20](v85);
  v321 = &v303 - v88;
  v89 = MEMORY[0x28223BE20](v87);
  v366 = &v303 - v90;
  v91 = MEMORY[0x28223BE20](v89);
  v375 = &v303 - v92;
  v93 = MEMORY[0x28223BE20](v91);
  v374 = &v303 - v94;
  MEMORY[0x28223BE20](v93);
  v323 = &v303 - v95;
  v304 = sub_238278C60();
  v303 = *(v304 - 8);
  MEMORY[0x28223BE20](v304);
  v363 = &v303 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = sub_238278BC0();
  v322 = *(v362 - 8);
  MEMORY[0x28223BE20](v362);
  v359 = &v303 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_238278BB0();
  v384 = a2;
  v353 = sub_2382191B4(0, 59);
  v98 = &v379[OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config];
  v99 = v379[OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config + 64];
  v379 += OBJC_IVAR____TtC9EnergyKit24ElectricVehicleSimulator_config;
  if (v99)
  {
    v100 = 23;
  }

  else
  {
    v101 = ((*(v98 + 7) * 0x7777777777777777) >> 64) - *(v98 + 7);
    v102 = (v101 >> 5) + (v101 >> 63);
    if (v102 <= -23)
    {
      v102 = -23;
    }

    v100 = v102 + 23;
  }

  v349 = sub_2382191B4(0, v100);
  sub_238278C40();
  v103 = *MEMORY[0x277CC9878];
  v104 = *(v75 + 104);
  v347 = v77;
  v350 = v74;
  v104(v77, v103, v74);
  v105 = *MEMORY[0x277CC9900];
  v106 = *(v71 + 104);
  v348 = v70;
  v106(v73, v105, v70);
  v107 = v355;
  v108 = v358;
  v109 = v372;
  (*(v355 + 104))(v358, *MEMORY[0x277CC98E8], v372);
  sub_238278C20();
  v111 = *(v107 + 8);
  v110 = (v107 + 8);
  v111(v108, v109);
  (*(v71 + 8))(v73, v348);
  (*(v75 + 8))(v347, v350);
  v112 = v377;
  v113 = *(v377 + 48);
  v114 = v386;
  v350 = v377 + 48;
  v349 = v113;
  if (v113(v84, 1, v386) == 1)
  {
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v115 = *(v112 + 32);
  v348 = v112 + 32;
  v347 = v115;
  v115(v323, v84, v114);
  v116 = v379;
  v117 = *(v379 + 6);
  v118 = *(v379 + 7);
  if (v118 < v117)
  {
LABEL_111:
    __break(1u);
    goto LABEL_112;
  }

  v119 = v384;
  v120 = sub_2382191B4(v117, v118);
  v3 = v116[9];
  v4 = v116[10];
  if (v3 > v4)
  {
LABEL_112:
    __break(1u);
    goto LABEL_113;
  }

  v372 = v120;
  v324 = 1103515245 * *v119 + 12345;
  *v119 = v324;
  v355 = *(type metadata accessor for ElectricVehicleSimulator.Configuration(0) + 60);
  v358 = objc_opt_self();
  v121 = [v358 milliwatts];
  v110 = sub_23821EB10(0, &qword_27DEF6970, 0x277CCAE30);
  sub_2382789C0();
  if (qword_27DEF68A0 != -1)
  {
LABEL_113:
    swift_once();
  }

  v122 = qword_27DEF7170;
  v123 = sub_23821EB10(0, &qword_27DEF6978, 0x277CCADF8);
  v124 = v122;
  v125 = v380;
  sub_2382789C0();
  v126 = sub_2382789B0();
  v127 = [v358 milliwatts];
  v353 = v110;
  v128 = sub_2382792F0();

  if ((v128 & 1) == 0)
  {
    goto LABEL_143;
  }

  v129 = sub_2382789B0();
  v343 = v123;
  v130 = sub_2382792F0();

  if ((v130 & 1) == 0)
  {
    goto LABEL_143;
  }

  v131 = sub_2382789B0();
  v132 = [v131 symbol];

  v133 = sub_238279000();
  v135 = v134;

  if (v133 == 6838125 && v135 == 0xE300000000000000)
  {

    v137 = v380;
  }

  else
  {
    v132 = sub_238279590();

    v137 = v380;
    if ((v132 & 1) == 0)
    {
      goto LABEL_143;
    }
  }

  v138 = v376;
  v139 = v381;
  if (v376 <= 0x64)
  {
    v342 = v124;
    v140 = v344;
    *v344 = v376;
    v141 = v356;
    v142 = *(v360 + 32);
    v143 = v140 + *(v356 + 20);
    v360 += 32;
    v339 = v142;
    v142(v143, v139, v382);
    v144 = *(v361 + 32);
    v145 = v140 + *(v141 + 24);
    v361 += 32;
    v338 = v144;
    v144(v145, v137, v383);
    *(v140 + *(v141 + 28)) = 0;
    sub_23821EB58(v140, v385, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
    v146 = v322 + 16;
    v147 = *(v322 + 16);
    v148 = v373;
    v149 = v362;
    v147(v373, v359, v362);
    v150 = v357;
    v151 = v148 + *(v357 + 24);
    v337 = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
    v152 = &v151[*(v337 + 20)];
    v153 = v379;
    v341 = v146;
    v340 = v147;
    v147(v152, &v379[v355], v149);
    *v151 = 1;
    *(v148 + *(v150 + 20)) = 0;
    v380 = *(v112 + 16);
    v381 = (v112 + 16);
    (v380)(v374, v323, v386);
    sub_23821AC2C(v385, v365, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
    v154 = v148;
    v155 = v346;
    sub_23821AC2C(v154, v346, type metadata accessor for ElectricVehicleLoadEvent.Session);
    v156 = *v153;
    v157 = v153[1];

    v158 = v345;
    sub_238278B80();
    v160 = v322 + 48;
    v159 = *(v322 + 48);
    v336 = v322 + 48;
    v335 = v159;
    LODWORD(v150) = v159(v158, 1, v362);
    sub_23821EBC0(v158);
    v161 = HIBYTE(v157) & 0xF;
    v384 = v157;
    v378 = v156;
    if (v150 != 1)
    {
      goto LABEL_33;
    }

    if ((v157 & 0x2000000000000000) != 0)
    {
      v162 = HIBYTE(v157) & 0xF;
    }

    else
    {
      v162 = v156 & 0xFFFFFFFFFFFFLL;
    }

    if (v162)
    {
      if ((v157 & 0x1000000000000000) == 0)
      {
        if (v162 <= 64)
        {
          goto LABEL_24;
        }

        goto LABEL_118;
      }
    }

    else
    {
      __break(1u);
    }

    if (sub_238279060() <= 64)
    {
LABEL_24:
      v163 = v384;

      v164 = v364;
      v165 = sub_23822DECC(v156, v163);
      v364 = v164;

      if (v165)
      {
        sub_23822DE84(v156, v163);
        if (!v166)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        v167 = sub_238278FC0();

        if ((v167 & 1) == 0)
        {
          sub_23822DE84(v156, v384);
          if (!v168)
          {
LABEL_139:
            __break(1u);
            goto LABEL_140;
          }

          v169 = sub_238278FB0();

          if ((v169 & 1) == 0)
          {
            goto LABEL_124;
          }
        }

        sub_23822D660(v156, v384);
        if (!v170)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        v171 = sub_238278FC0();

        if ((v171 & 1) == 0)
        {
          sub_23822D660(v156, v384);
          if (!v172)
          {
LABEL_140:
            __break(1u);
            goto LABEL_141;
          }

          v173 = sub_238278FB0();

          if ((v173 & 1) == 0)
          {
            goto LABEL_125;
          }
        }

LABEL_33:
        v314 = HIBYTE(v157) & 0xF;
        v174 = Event;
        v175 = v155;
        v176 = v334;
        v177 = v386;
        (v380)(&v334[*(Event + 20)], v374, v386);
        sub_23821AC2C(v175, v176 + v174[6], type metadata accessor for ElectricVehicleLoadEvent.Session);
        v178 = v365;
        sub_23821AC2C(v365, v176 + v174[7], type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
        *(v176 + v174[9]) = 1;
        sub_238278BB0();
        sub_23821AC94(v175, type metadata accessor for ElectricVehicleLoadEvent.Session);
        sub_23821AC94(v178, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
        v179 = *(v112 + 8);
        v112 += 8;
        v180 = v374;
        v374 = v179;
        (v179)(v180, v177);
        sub_23821AC94(v373, type metadata accessor for ElectricVehicleLoadEvent.Session);
        sub_23821AC94(v385, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
        v181 = (v176 + v174[8]);
        v135 = v378;
        v182 = v384;
        *v181 = v378;
        v181[1] = v182;
        v183 = v319;
        sub_23821EB58(v176, v319, type metadata accessor for ElectricVehicleLoadEvent);
        v125 = v326;
        sub_23821AC2C(v183, v326, type metadata accessor for ElectricVehicleLoadEvent);
        v136 = sub_23821937C(0, 1, 1, MEMORY[0x277D84F90], &qword_27DEF6958, &qword_23827A4A0, type metadata accessor for ElectricVehicleLoadEvent);
        v137 = v136[2];
        v138 = v136[3];
        v132 = v137 + 1;
        if (v137 < v138 >> 1)
        {
          goto LABEL_34;
        }

        goto LABEL_115;
      }

LABEL_119:
      __break(1u);
      goto LABEL_120;
    }

LABEL_118:
    __break(1u);
    goto LABEL_119;
  }

  __break(1u);
LABEL_115:
  v136 = sub_23821937C((v138 > 1), v132, 1, v136, &qword_27DEF6958, &qword_23827A4A0, type metadata accessor for ElectricVehicleLoadEvent);
LABEL_34:
  v184 = v314;
  v136[2] = v132;
  v185 = (*(v333 + 80) + 32) & ~*(v333 + 80);
  v373 = v136;
  v334 = v185;
  v333 = *(v333 + 72);
  sub_23821EB58(v125, v136 + v185 + v333 * v137, type metadata accessor for ElectricVehicleLoadEvent);
  v186 = v375;
  (v380)(v375, v323, v386);
  LODWORD(v346) = *MEMORY[0x277CC99A0];
  v344 = *(v320 + 104);
  v345 = (v320 + 104);
  v187 = v372;
  v377 = v112;
  if (v372 >= 1)
  {
    v188 = (v4 - v3) * vcvtd_n_f64_u64(v324, 0x40uLL);
    v326 = (v320 + 8);
    v189 = v135 & 0xFFFFFFFFFFFFLL;
    if ((v384 & 0x2000000000000000) != 0)
    {
      v189 = v184;
    }

    v324 = v189;
    v4 = v3 + v188;
    v3 = 0.0;
    v325 = v63;
    while (1)
    {
      v372 = v187;
      v63 = (v187 >= 0xF ? 15 : v187);
      v190 = v351;
      v191 = v352;
      (v344)(v351, v346, v352);
      v192 = v332;
      sub_238278C30();
      (*v326)(v190, v191);
      v193 = v386;
      if (v349(v192, 1, v386) == 1)
      {
        goto LABEL_128;
      }

      (v374)(v186, v193);
      v347(v186, v192, v193);
      v194 = v4 * (v63 / 60.0);
      v195 = v194 / *(v379 + 11) * 100.0;
      v196 = v331;
      v110 = v358;
      if (COERCE__INT64(fabs(v195)) > 0x7FEFFFFFFFFFFFFFLL)
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
        goto LABEL_111;
      }

      if (v195 <= -9.22337204e18)
      {
        goto LABEL_103;
      }

      if (v195 >= 9.22337204e18)
      {
        goto LABEL_104;
      }

      if (__OFADD__(v376, v195))
      {
        goto LABEL_105;
      }

      v365 = v63;
      v3 = v3 + v194;
      v385 = v376 + v195;
      if (v385 >= 100)
      {
        v197 = 100;
      }

      else
      {
        v197 = v376 + v195;
      }

      v198 = [v358 milliwatts];
      sub_2382789C0();
      v199 = v342;
      v112 = v343;
      sub_2382789C0();
      v200 = sub_2382789B0();
      v201 = [v110 milliwatts];
      v202 = sub_2382792F0();

      if ((v202 & 1) == 0)
      {
        goto LABEL_143;
      }

      v203 = sub_2382789B0();
      v204 = sub_2382792F0();

      v205 = v197;
      v206 = v386;
      v63 = v379;
      if ((v204 & 1) == 0)
      {
        goto LABEL_143;
      }

      v207 = sub_2382789B0();
      v208 = [v207 symbol];

      v110 = sub_238279000();
      v210 = v209;

      if (v110 == 6838125 && v210 == 0xE300000000000000)
      {

        v211 = v383;
      }

      else
      {
        v212 = sub_238279590();

        v211 = v383;
        if ((v212 & 1) == 0)
        {
          goto LABEL_143;
        }
      }

      if (v385 < 0)
      {
        goto LABEL_106;
      }

      v213 = v329;
      v376 = v205;
      *v329 = v205;
      v214 = v356;
      v339(v213 + *(v356 + 20), v371, v382);
      v338(v213 + *(v214 + 24), v196, v211);
      *(v213 + *(v214 + 28)) = 0;
      v215 = v367;
      sub_23821EB58(v213, v367, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
      v216 = v369;
      v110 = v362;
      v217 = v340;
      v340(v369, v359, v362);
      v218 = v357;
      v219 = (v216 + *(v357 + 24));
      v217(&v219[*(v337 + 20)], &v63[v355], v110);
      v112 = 1;
      *v219 = 1;
      *(v216 + *(v218 + 20)) = 2;
      (v380)(v366, v375, v206);
      sub_23821AC2C(v215, v368, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
      sub_23821AC2C(v216, v370, type metadata accessor for ElectricVehicleLoadEvent.Session);
      v220 = v384;

      v221 = v330;
      v222 = v378;
      sub_238278B80();
      LODWORD(v219) = v335(v221, 1, v110);
      sub_23821EBC0(v221);
      if (v219 == 1)
      {
        if (!v324)
        {
          goto LABEL_107;
        }

        if ((v220 & 0x1000000000000000) != 0)
        {
          if (sub_238279060() > 64)
          {
LABEL_76:
            __break(1u);
            break;
          }
        }

        else if (v324 > 64)
        {
          goto LABEL_76;
        }

        v223 = v364;
        v224 = sub_23822DECC(v222, v220);
        v364 = v223;

        if ((v224 & 1) == 0)
        {
          goto LABEL_108;
        }

        sub_23822DE84(v222, v220);
        if (!v225)
        {
          goto LABEL_129;
        }

        v226 = sub_238278FC0();

        if ((v226 & 1) == 0)
        {
          sub_23822DE84(v222, v220);
          if (!v227)
          {
            goto LABEL_131;
          }

          v228 = sub_238278FB0();

          if ((v228 & 1) == 0)
          {
            goto LABEL_109;
          }
        }

        sub_23822D660(v222, v220);
        if (!v229)
        {
          goto LABEL_130;
        }

        v230 = sub_238278FC0();

        if ((v230 & 1) == 0)
        {
          sub_23822D660(v222, v220);
          if (!v231)
          {
            goto LABEL_132;
          }

          v232 = sub_238278FB0();

          if ((v232 & 1) == 0)
          {
            goto LABEL_110;
          }
        }
      }

      v233 = Event;
      v234 = v327;
      v235 = v366;
      v236 = v386;
      (v380)(&v327[*(Event + 20)], v366, v386);
      v237 = v370;
      sub_23821AC2C(v370, &v234[v233[6]], type metadata accessor for ElectricVehicleLoadEvent.Session);
      v238 = v368;
      sub_23821AC2C(v368, &v234[v233[7]], type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
      *&v234[v233[9]] = 1;
      sub_238278BB0();
      sub_23821AC94(v237, type metadata accessor for ElectricVehicleLoadEvent.Session);
      sub_23821AC94(v238, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
      (v374)(v235, v236);
      sub_23821AC94(v369, type metadata accessor for ElectricVehicleLoadEvent.Session);
      sub_23821AC94(v367, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
      v239 = &v234[v233[8]];
      v240 = v384;
      *v239 = v378;
      v239[1] = v240;
      v241 = v234;
      v242 = v325;
      sub_23821EB58(v241, v325, type metadata accessor for ElectricVehicleLoadEvent);
      v243 = v328;
      sub_23821AC2C(v242, v328, type metadata accessor for ElectricVehicleLoadEvent);
      v244 = v373;
      v246 = v373[2];
      v245 = v373[3];
      if (v246 >= v245 >> 1)
      {
        v244 = sub_23821937C((v245 > 1), v246 + 1, 1, v373, &qword_27DEF6958, &qword_23827A4A0, type metadata accessor for ElectricVehicleLoadEvent);
      }

      sub_23821AC94(v242, type metadata accessor for ElectricVehicleLoadEvent);
      v244[2] = v246 + 1;
      v373 = v244;
      sub_23821EB58(v243, &v334[v244 + v246 * v333], type metadata accessor for ElectricVehicleLoadEvent);
      if (v385 <= 99)
      {
        v187 = v372 - v365;
        v112 = v377;
        v186 = v375;
        if (v372 > v365)
        {
          continue;
        }
      }

      break;
    }
  }

  v247 = v376;
  v248 = v351;
  v249 = v352;
  (v344)(v351, v346, v352);
  v250 = v313;
  sub_238278C30();
  (*(v320 + 8))(v248, v249);
  v251 = v386;
  if (v349(v250, 1, v386) == 1)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  v347(v321, v250, v251);
  v252 = v358;
  v253 = [v358 milliwatts];
  sub_2382789C0();
  v254 = v342;
  v255 = v309;
  sub_2382789C0();
  v256 = sub_2382789B0();
  v257 = [v252 milliwatts];
  v258 = sub_2382792F0();

  v160 = v311;
  if ((v258 & 1) == 0)
  {
    goto LABEL_143;
  }

  v259 = sub_2382789B0();
  v260 = sub_2382792F0();

  v261 = v364;
  if ((v260 & 1) == 0)
  {
    goto LABEL_143;
  }

  v262 = sub_2382789B0();
  v263 = [v262 symbol];

  v264 = sub_238279000();
  v266 = v265;

  if (v264 == 6838125 && v266 == 0xE300000000000000)
  {

    v267 = v383;
    goto LABEL_84;
  }

  v268 = sub_238279590();

  v267 = v383;
  if ((v268 & 1) == 0)
  {
LABEL_143:
    result = sub_238279410();
    __break(1u);
    return result;
  }

LABEL_84:
  v364 = v261;
  v269 = v308;
  *v308 = v247;
  v270 = v356;
  v339(v269 + *(v356 + 20), v318, v382);
  v338(v269 + *(v270 + 24), v255, v267);
  *(v269 + *(v270 + 28)) = 0;
  v271 = v317;
  sub_23821EB58(v269, v317, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  v161 = v312;
  v272 = v362;
  v273 = v340;
  v340(v312, v359, v362);
  v274 = v357;
  v275 = (v161 + *(v357 + 24));
  v273(&v275[*(v337 + 20)], &v379[v355], v272);
  *v275 = 1;
  *(v161 + *(v274 + 20)) = 1;
  (v380)(v315, v321, v386);
  sub_23821AC2C(v271, v316, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  sub_23821AC2C(v161, v160, type metadata accessor for ElectricVehicleLoadEvent.Session);
  v112 = v384;

  v276 = v310;
  v156 = v378;
  sub_238278B80();
  LODWORD(v275) = v335(v276, 1, v272);
  sub_23821EBC0(v276);
  if (v275 != 1)
  {
    goto LABEL_100;
  }

  if ((v112 & 0x2000000000000000) != 0)
  {
    v277 = v314;
  }

  else
  {
    v277 = v156 & 0xFFFFFFFFFFFFLL;
  }

  if (v277)
  {
    if ((v112 & 0x1000000000000000) == 0)
    {
      goto LABEL_90;
    }

    goto LABEL_121;
  }

LABEL_120:
  __break(1u);
LABEL_121:
  v277 = sub_238279060();
LABEL_90:
  v278 = v364;
  if (v277 > 64)
  {
    __break(1u);
    goto LABEL_123;
  }

  v279 = sub_23822DECC(v156, v112);

  if ((v279 & 1) == 0)
  {
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
    goto LABEL_133;
  }

  sub_23822DE84(v156, v112);
  if (!v280)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v281 = sub_238278FC0();

  if ((v281 & 1) == 0)
  {
    sub_23822DE84(v156, v112);
    if (!v282)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v283 = sub_238278FB0();

    if ((v283 & 1) == 0)
    {
      goto LABEL_126;
    }
  }

  sub_23822D660(v156, v112);
  if (!v284)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v285 = sub_238278FC0();

  v364 = v278;
  if ((v285 & 1) == 0)
  {
    sub_23822D660(v156, v112);
    if (!v286)
    {
LABEL_142:
      __break(1u);
      goto LABEL_143;
    }

    v287 = sub_238278FB0();

    if ((v287 & 1) == 0)
    {
      goto LABEL_127;
    }
  }

LABEL_100:
  v288 = Event;
  v289 = v305;
  v290 = v315;
  v291 = v386;
  (v380)(&v305[*(Event + 20)], v315, v386);
  sub_23821AC2C(v160, v289 + v288[6], type metadata accessor for ElectricVehicleLoadEvent.Session);
  v292 = v316;
  sub_23821AC2C(v316, v289 + v288[7], type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  *(v289 + v288[9]) = 1;
  sub_238278BB0();
  sub_23821AC94(v160, type metadata accessor for ElectricVehicleLoadEvent.Session);
  sub_23821AC94(v292, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  (v374)(v290, v291);
  sub_23821AC94(v161, type metadata accessor for ElectricVehicleLoadEvent.Session);
  sub_23821AC94(v317, type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement);
  v293 = (v289 + v288[8]);
  v294 = v384;
  *v293 = v378;
  v293[1] = v294;
  v295 = v306;
  sub_23821EB58(v289, v306, type metadata accessor for ElectricVehicleLoadEvent);
  v296 = v307;
  sub_23821AC2C(v295, v307, type metadata accessor for ElectricVehicleLoadEvent);
  v297 = v373;
  v299 = v373[2];
  v298 = v373[3];
  if (v299 >= v298 >> 1)
  {
    v297 = sub_23821937C((v298 > 1), v299 + 1, 1, v373, &qword_27DEF6958, &qword_23827A4A0, type metadata accessor for ElectricVehicleLoadEvent);
  }

  v300 = v323;
  sub_23821AC94(v295, type metadata accessor for ElectricVehicleLoadEvent);
  v301 = v374;
  (v374)(v321, v291);
  v301(v375, v291);
  sub_23821AC94(v319, type metadata accessor for ElectricVehicleLoadEvent);
  v301(v300, v291);
  (*(v303 + 8))(v363, v304);
  (*(v322 + 8))(v359, v362);
  v297[2] = v299 + 1;
  sub_23821EB58(v296, &v334[v297 + v299 * v333], type metadata accessor for ElectricVehicleLoadEvent);
  return v297;
}

uint64_t sub_23821EB10(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23821EB58(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23821EBC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6968, &unk_23827A4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_23821EC48(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a1;
  v67 = a2;
  v3 = sub_238278B70();
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x28223BE20](v3);
  v74 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = type metadata accessor for ElectricalLoadEvent.Session(0);
  v5 = MEMORY[0x28223BE20](v70);
  v66 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v80 = &v63 - v7;
  v8 = sub_238278BC0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v65 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v63 - v12;
  v14 = type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for ElectricalLoadEvent.DeviceState(0);
  v18 = MEMORY[0x28223BE20](v69);
  v73 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v79 = &v63 - v20;
  Event = type metadata accessor for ElectricVehicleLoadEvent(0);
  v22 = v2 + *(Event + 24);
  v23 = type metadata accessor for ElectricVehicleLoadEvent.Session(0);
  v25 = *(v23 + 20);
  v24 = *(v23 + 24);
  if (*(v22 + v25) == 1)
  {
    v26 = 2;
  }

  else
  {
    v26 = 3;
  }

  LODWORD(v68) = v26;
  v71 = Event;
  v72 = v2;
  v27 = (v2 + *(Event + 32));
  v28 = *v27;
  v29 = v27[1];
  v30 = *(v22 + v24);
  sub_23821F324(v22 + v24, v17, type metadata accessor for ElectricVehicleLoadEvent.Session.GuidanceState);
  v31 = *(v15 + 28);
  v77 = v9;
  v78 = v8;
  v32 = *(v9 + 32);
  v32(v13, &v17[v31], v8);
  if ((v29 & 0x2000000000000000) != 0)
  {
    v33 = HIBYTE(v29) & 0xF;
  }

  else
  {
    v33 = v28 & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    if ((v29 & 0x1000000000000000) == 0)
    {
      if (v33 <= 64)
      {
        goto LABEL_10;
      }

LABEL_21:
      __break(1u);
      goto LABEL_22;
    }
  }

  else
  {
    __break(1u);
  }

  if (sub_238279060() > 64)
  {
    goto LABEL_21;
  }

LABEL_10:
  v34 = v79;
  *v79 = 2;
  *(v34 + 1) = v28;
  *(v34 + 2) = v29;
  v35 = v30;
  v36 = v78;
  v32(&v34[*(v69 + 32)], v13, v78);
  v34[24] = v68;
  v34[25] = v35;
  v37 = *(v22 + v25);

  ElectricalLoadEvent.Session.State.init(rawValue:)(v37);
  LOBYTE(v37) = v81;
  v39 = v77 + 16;
  v38 = *(v77 + 16);
  v40 = v80;
  v38(v80, v22, v36);
  v41 = v71;
  *(v40 + *(v70 + 20)) = v37;
  v42 = v72;
  v43 = (v72 + *(v41 + 28));
  v44 = *v43;
  if ((*v43 & 0x8000000000000000) != 0)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v45 = *(v43 + *(type metadata accessor for ElectricVehicleLoadEvent.ElectricalMeasurement(0) + 28));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E0, &qword_23827C420);
  sub_2382789D0();
  v47 = v46;
  if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v46 <= -1.0)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v46 >= 1.84467441e19)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF68E8, &qword_23827A320);
  sub_2382789D0();
  if ((*&v48 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v48 <= -1.0)
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v48 >= 1.84467441e19)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v44 <= 0x64)
  {
    v69 = v47;
    v70 = v48;
    v49 = *(v41 + 20);
    v68 = v44;
    LODWORD(v71) = v45;
    v50 = v74;
    v51 = v38;
    v63 = v38;
    v52 = *(v75 + 16);
    v52(v74, v42 + v49, v76);
    sub_23821F324(v79, v73, type metadata accessor for ElectricalLoadEvent.DeviceState);
    v53 = v65;
    v54 = v78;
    v51(v65, v64, v78);
    v72 = v39;
    v55 = v66;
    sub_23821F324(v80, v66, type metadata accessor for ElectricalLoadEvent.Session);
    v56 = type metadata accessor for ElectricalLoadEvent(0);
    v57 = v67;
    v58 = v50;
    v59 = v76;
    v52((v67 + v56[5]), v58, v76);
    sub_23821F324(v55, v57 + v56[6], type metadata accessor for ElectricalLoadEvent.Session);
    v60 = v73;
    sub_23821F324(v73, v57 + v56[7], type metadata accessor for ElectricalLoadEvent.DeviceState);
    v61 = v57 + v56[8];
    v62 = v69;
    *v61 = v68;
    *(v61 + 8) = v62;
    *(v61 + 16) = 0;
    *(v61 + 24) = v70;
    *(v61 + 32) = 0;
    *(v61 + 33) = v71;
    *(v57 + v56[10]) = 1;
    v63(v57 + v56[9], v53, v54);
    sub_238278BB0();
    sub_23821F38C(v55, type metadata accessor for ElectricalLoadEvent.Session);
    (*(v77 + 8))(v53, v54);
    sub_23821F38C(v60, type metadata accessor for ElectricalLoadEvent.DeviceState);
    (*(v75 + 8))(v74, v59);
    sub_23821F38C(v80, type metadata accessor for ElectricalLoadEvent.Session);
    sub_23821F38C(v79, type metadata accessor for ElectricalLoadEvent.DeviceState);
    return;
  }

LABEL_29:
  __break(1u);
}

uint64_t sub_23821F324(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23821F38C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23821F3EC@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a1;
  v59 = a2;
  v3 = sub_238278B70();
  v68 = *(v3 - 8);
  v69 = v3;
  MEMORY[0x28223BE20](v3);
  v67 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for ElectricalLoadEvent.Session(0);
  v5 = MEMORY[0x28223BE20](v63);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v72 = &v56 - v7;
  v8 = sub_238278BC0();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v66 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v56 - v12;
  v14 = type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
  v15 = v14 - 8;
  MEMORY[0x28223BE20](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for ElectricalLoadEvent.DeviceState(0);
  v18 = MEMORY[0x28223BE20](v62);
  v65 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v71 = &v56 - v20;
  v21 = type metadata accessor for ElectricHVACLoadEvent(0);
  v22 = &v2[v21[6]];
  v23 = type metadata accessor for ElectricHVACLoadEvent.Session(0);
  v24 = *(v23 + 24);
  v61 = *(v23 + 20);
  v60 = v22[v61] != 1;
  v25 = v21[8];
  v64 = v2;
  v26 = &v2[v25];
  v27 = *v26;
  v28 = *(v26 + 1);
  v29 = v22[v24];
  sub_23821F9C8(&v22[v24], v17, type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState);
  v30 = *(v15 + 28);
  v70 = v9;
  v31 = *(v9 + 32);
  v32 = &v17[v30];
  v33 = v13;
  v34 = v13;
  v35 = v8;
  v31(v34, v32, v8);
  if ((v28 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(v28) & 0xF;
  }

  else
  {
    result = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (result)
  {
    if ((v28 & 0x1000000000000000) == 0)
    {
      if (result <= 64)
      {
        goto LABEL_7;
      }

LABEL_12:
      __break(1u);
      goto LABEL_13;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_238279060();
  if (result > 64)
  {
    goto LABEL_12;
  }

LABEL_7:
  v37 = v29;
  v38 = v71;
  *v71 = 1;
  *(v38 + 1) = v27;
  *(v38 + 2) = v28;
  v31(&v38[*(v62 + 32)], v33, v35);
  v38[24] = v60;
  v38[25] = v37;
  v39 = v22[v61];

  ElectricalLoadEvent.Session.State.init(rawValue:)(v39);
  LOBYTE(v39) = v73;
  v40 = *(v70 + 16);
  v41 = v72;
  result = v40(v72, v22, v35);
  v42 = v64;
  *(v41 + *(v63 + 20)) = v39;
  v43 = *&v42[v21[7]];
  if ((v43 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v43 <= 0x64)
  {
    v63 = *&v42[v21[7]];
    v44 = v21[5];
    v45 = v67;
    v46 = *(v68 + 16);
    v46(v67, &v42[v44], v69);
    sub_23821F9C8(v71, v65, type metadata accessor for ElectricalLoadEvent.DeviceState);
    v40(v66, v57, v35);
    v47 = v58;
    sub_23821F9C8(v72, v58, type metadata accessor for ElectricalLoadEvent.Session);
    Event = type metadata accessor for ElectricalLoadEvent(0);
    v49 = Event[5];
    v64 = v40;
    v50 = v59;
    v51 = v45;
    v52 = v69;
    v46((v59 + v49), v51, v69);
    sub_23821F9C8(v47, v50 + Event[6], type metadata accessor for ElectricalLoadEvent.Session);
    v53 = v65;
    sub_23821F9C8(v65, v50 + Event[7], type metadata accessor for ElectricalLoadEvent.DeviceState);
    v54 = v50 + Event[8];
    *v54 = v63;
    *(v54 + 8) = 0;
    *(v54 + 16) = 1;
    *(v54 + 24) = 0;
    *(v54 + 32) = 1;
    *(v50 + Event[10]) = 1;
    v55 = v66;
    (v64)(v50 + Event[9], v66, v35);
    sub_238278BB0();
    sub_23821F38C(v47, type metadata accessor for ElectricalLoadEvent.Session);
    (*(v70 + 8))(v55, v35);
    sub_23821F38C(v53, type metadata accessor for ElectricalLoadEvent.DeviceState);
    (*(v68 + 8))(v67, v52);
    sub_23821F38C(v72, type metadata accessor for ElectricalLoadEvent.Session);
    return sub_23821F38C(v71, type metadata accessor for ElectricalLoadEvent.DeviceState);
  }

LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_23821F9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t ElectricalLoadEvent.DeviceState.init(type:deviceID:state:wasFollowingGuidance:guidanceToken:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  if ((a3 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a3) & 0xF;
  }

  else
  {
    result = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (!result)
  {
    __break(1u);
LABEL_9:
    v16 = a2;
    v17 = a3;
    result = sub_238279060();
    a2 = v16;
    a3 = v17;
    if (result <= 64)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  v8 = a6;
  v7 = a5;
  v10 = *a1;
  v9 = *a4;
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_9;
  }

  if (result <= 64)
  {
LABEL_7:
    *a7 = v10;
    *(a7 + 8) = a2;
    *(a7 + 16) = a3;
    v14 = *(type metadata accessor for ElectricalLoadEvent.DeviceState(0) + 32);
    v15 = sub_238278BC0();
    result = (*(*(v15 - 8) + 32))(a7 + v14, v8, v15);
    *(a7 + 24) = v9;
    *(a7 + 25) = v7 & 1;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

EnergyKit::ElectricalLoadEvent::Session::State __swiftcall ElectricalLoadEvent.Session.State.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue >= 3)
  {
    sub_2382793B0();

    v2 = sub_238279570();
    MEMORY[0x2383ECF30](v2);

    LOBYTE(rawValue) = sub_238279410();
    __break(1u);
  }

  else
  {
    *v1 = rawValue;
  }

  return rawValue;
}

uint64_t ElectricalLoadEvent.Session.init(state:id:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  *(a3 + *(type metadata accessor for ElectricalLoadEvent.Session(0) + 20)) = v5;
  v6 = sub_238278BC0();
  v7 = *(*(v6 - 8) + 32);

  return v7(a3, a2, v6);
}

void __swiftcall ElectricalLoadEvent.ElectricalMeasurement.init(level:direction:power:energy:)(EnergyKit::ElectricalLoadEvent::ElectricalMeasurement *__return_ptr retstr, Swift::UInt level, EnergyKit::ElectricityFlowDirection direction, Swift::UInt_optional power, Swift::UInt_optional energy)
{
  if (level > 0x64)
  {
    __break(1u);
  }

  else
  {
    v5 = *direction;
    retstr->level = level;
    retstr->power.value = power.value;
    retstr->power.is_nil = power.is_nil;
    *(&retstr->energy.value + 7) = energy.value;
    LOBYTE(retstr[1].level) = energy.is_nil;
    BYTE1(retstr[1].level) = v5;
  }
}

uint64_t ElectricalLoadEvent.init(timestamp:deviceState:electricalMeasurement:venueID:session:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a3;
  v25 = a3[1];
  v11 = *(a3 + 16);
  v24 = a3[3];
  v22 = *(a3 + 33);
  v23 = *(a3 + 32);
  Event = type metadata accessor for ElectricalLoadEvent(0);
  v13 = Event[5];
  v14 = sub_238278B70();
  v27 = *(v14 - 8);
  (*(v27 + 16))(a6 + v13, a1, v14);
  sub_23821FF1C(a5, a6 + Event[6], type metadata accessor for ElectricalLoadEvent.Session);
  v15 = a2;
  sub_23821FF1C(a2, a6 + Event[7], type metadata accessor for ElectricalLoadEvent.DeviceState);
  v16 = a6 + Event[8];
  *v16 = v10;
  *(v16 + 8) = v25;
  *(v16 + 16) = v11;
  *(v16 + 24) = v24;
  *(v16 + 32) = v23;
  *(v16 + 33) = v22;
  *(a6 + Event[10]) = 1;
  v17 = Event[9];
  v18 = sub_238278BC0();
  v19 = *(v18 - 8);
  (*(v19 + 16))(a6 + v17, a4, v18);
  sub_238278BB0();
  sub_23821FF84(a5, type metadata accessor for ElectricalLoadEvent.Session);
  (*(v19 + 8))(a4, v18);
  sub_23821FF84(v15, type metadata accessor for ElectricalLoadEvent.DeviceState);
  v20 = *(v27 + 8);

  return v20(a1, v14);
}

uint64_t sub_23821FF1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23821FF84(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

EnergyKit::ElectricalLoadEvent::State __swiftcall ElectricalLoadEvent.State.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue >= 4)
  {
    sub_2382793B0();

    v2 = sub_238279570();
    MEMORY[0x2383ECF30](v2);

    LOBYTE(rawValue) = sub_238279410();
    __break(1u);
  }

  else
  {
    *v1 = rawValue;
  }

  return rawValue;
}

uint64_t sub_2382200F4()
{
  v1 = 6710895;
  v2 = 0x656767756C706E75;
  if (*v0 != 2)
  {
    v2 = 0x64656767756C70;
  }

  if (*v0)
  {
    v1 = 28271;
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

uint64_t sub_238220160@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_238227B1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238220194(uint64_t a1)
{
  v2 = sub_2382208B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382201D0(uint64_t a1)
{
  v2 = sub_2382208B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238220218(uint64_t a1)
{
  v2 = sub_238220A00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238220254(uint64_t a1)
{
  v2 = sub_238220A00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238220290@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_2382202CC(uint64_t a1)
{
  v2 = sub_2382209AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238220308(uint64_t a1)
{
  v2 = sub_2382209AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238220344(uint64_t a1)
{
  v2 = sub_238220904();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238220380(uint64_t a1)
{
  v2 = sub_238220904();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382203BC(uint64_t a1)
{
  v2 = sub_238220958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382203F8(uint64_t a1)
{
  v2 = sub_238220958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6980, &qword_23827A4C0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6988, &qword_23827A4C8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6990, &qword_23827A4D0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6998, &qword_23827A4D8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69A0, &qword_23827A4E0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382208B0();
  sub_238279640();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_238220958();
      v18 = v27;
      sub_2382794E0();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_238220904();
      v18 = v30;
      sub_2382794E0();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_2382209AC();
    v18 = v24;
    sub_2382794E0();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_238220A00();
  sub_2382794E0();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_2382208B0()
{
  result = qword_27DEF69A8;
  if (!qword_27DEF69A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF69A8);
  }

  return result;
}

unint64_t sub_238220904()
{
  result = qword_27DEF69B0;
  if (!qword_27DEF69B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF69B0);
  }

  return result;
}

unint64_t sub_238220958()
{
  result = qword_27DEF69B8;
  if (!qword_27DEF69B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF69B8);
  }

  return result;
}

unint64_t sub_2382209AC()
{
  result = qword_27DEF69C0;
  if (!qword_27DEF69C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF69C0);
  }

  return result;
}

unint64_t sub_238220A00()
{
  result = qword_27DEF69C8;
  if (!qword_27DEF69C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF69C8);
  }

  return result;
}

uint64_t ElectricalLoadEvent.State.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69D0, &qword_23827A4E8);
  v40 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v47 = v35 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69D8, &qword_23827A4F0);
  v5 = *(v4 - 8);
  v42 = v4;
  v43 = v5;
  MEMORY[0x28223BE20](v4);
  v46 = v35 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69E0, &qword_23827A4F8);
  v38 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v8 = v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69E8, &qword_23827A500);
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F0, &qword_23827A508);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v35 - v14;
  v16 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_2382208B0();
  v17 = v48;
  sub_238279630();
  if (!v17)
  {
    v36 = v9;
    v37 = 0;
    v18 = v46;
    v19 = v47;
    v48 = v13;
    v20 = v15;
    v21 = sub_2382794D0();
    v22 = *(v21 + 16);
    if (!v22 || ((v23 = *(v21 + 32), v22 == 1) ? (v24 = v23 == 4) : (v24 = 1), v24))
    {
      v25 = sub_2382793F0();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510);
      *v27 = &type metadata for ElectricalLoadEvent.State;
      sub_238279450();
      sub_2382793E0();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v48 + 8))(v20, v12);
    }

    else
    {
      v35[1] = v21;
      if (v23 <= 1)
      {
        if (v23)
        {
          v51 = 1;
          sub_2382209AC();
          v32 = v37;
          sub_238279440();
          if (!v32)
          {
            (*(v38 + 8))(v8, v41);
            goto LABEL_23;
          }
        }

        else
        {
          v50 = 0;
          sub_238220A00();
          v28 = v37;
          sub_238279440();
          if (!v28)
          {
            (*(v39 + 8))(v11, v36);
LABEL_23:
            (*(v48 + 8))(v15, v12);
LABEL_25:
            swift_unknownObjectRelease();
            *v45 = v23;
            return __swift_destroy_boxed_opaque_existential_1(v49);
          }
        }

        (*(v48 + 8))(v15, v12);
        goto LABEL_20;
      }

      v29 = v45;
      v30 = v48;
      if (v23 == 2)
      {
        v52 = 2;
        sub_238220958();
        v31 = v37;
        sub_238279440();
        if (!v31)
        {
          (*(v43 + 8))(v18, v42);
          (*(v30 + 8))(v20, v12);
          swift_unknownObjectRelease();
          *v29 = 2;
          return __swift_destroy_boxed_opaque_existential_1(v49);
        }
      }

      else
      {
        v53 = 3;
        sub_238220904();
        v33 = v37;
        sub_238279440();
        if (!v33)
        {
          (*(v40 + 8))(v19, v44);
          (*(v30 + 8))(v20, v12);
          goto LABEL_25;
        }
      }

      (*(v30 + 8))(v20, v12);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v49);
}

uint64_t sub_2382210DC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238221114()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_238221148()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

EnergyKit::ElectricalLoadEvent::DeviceType __swiftcall ElectricalLoadEvent.DeviceType.init(rawValue:)(Swift::UInt rawValue)
{
  if (rawValue >= 3)
  {
    sub_2382793B0();

    v2 = sub_238279570();
    MEMORY[0x2383ECF30](v2);

    LOBYTE(rawValue) = sub_238279410();
    __break(1u);
  }

  else
  {
    *v1 = rawValue;
  }

  return rawValue;
}

uint64_t sub_2382212DC()
{
  v1 = 1667331688;
  if (*v0 != 1)
  {
    v1 = 0x6369727463656C65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726568746FLL;
  }
}

uint64_t sub_238221338@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_238227C80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23822136C(uint64_t a1)
{
  v2 = sub_2382218B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382213A8(uint64_t a1)
{
  v2 = sub_2382218B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382213E4(uint64_t a1)
{
  v2 = sub_23822190C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238221420(uint64_t a1)
{
  v2 = sub_23822190C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23822145C(uint64_t a1)
{
  v2 = sub_238221960();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238221498(uint64_t a1)
{
  v2 = sub_238221960();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382214D4(uint64_t a1)
{
  v2 = sub_2382219B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238221510(uint64_t a1)
{
  v2 = sub_2382219B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.DeviceType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A00, &qword_23827A518);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A08, &qword_23827A520);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A10, &qword_23827A528);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A18, &qword_23827A530);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382218B8();
  sub_238279640();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_238221960();
      v9 = v21;
      sub_2382794E0();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_23822190C();
      v9 = v24;
      sub_2382794E0();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_2382219B4();
    sub_2382794E0();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_2382218B8()
{
  result = qword_27DEF6A20;
  if (!qword_27DEF6A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A20);
  }

  return result;
}

unint64_t sub_23822190C()
{
  result = qword_27DEF6A28;
  if (!qword_27DEF6A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A28);
  }

  return result;
}

unint64_t sub_238221960()
{
  result = qword_27DEF6A30;
  if (!qword_27DEF6A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A30);
  }

  return result;
}

unint64_t sub_2382219B4()
{
  result = qword_27DEF6A38;
  if (!qword_27DEF6A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A38);
  }

  return result;
}

uint64_t ElectricalLoadEvent.DeviceType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A40, &qword_23827A538);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A48, &qword_23827A540);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A50, &qword_23827A548);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A58, &qword_23827A550);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382218B8();
  v13 = v43;
  sub_238279630();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_2382794D0();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_238221960();
          v27 = v34;
          sub_238279440();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_23822190C();
          v31 = v34;
          sub_238279440();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_2382219B4();
        v29 = v34;
        sub_238279440();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_2382793F0();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510);
  *v23 = &type metadata for ElectricalLoadEvent.DeviceType;
  sub_238279450();
  sub_2382793E0();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_238222054()
{
  v1 = 0x6C6576656CLL;
  v2 = 0x796772656E65;
  if (*v0 != 2)
  {
    v2 = 0x6F69746365726964;
  }

  if (*v0)
  {
    v1 = 0x7265776F70;
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

uint64_t sub_2382220C8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_238227D9C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2382220FC(uint64_t a1)
{
  v2 = sub_2382223A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238222138(uint64_t a1)
{
  v2 = sub_2382223A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.ElectricalMeasurement.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A60, &qword_23827A558);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v14 = *(v1 + 8);
  v13 = *(v1 + 16);
  v12 = *(v1 + 24);
  v8 = *(v1 + 32);
  v11[0] = *(v1 + 33);
  v11[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382223A8();
  sub_238279640();
  v19 = 0;
  sub_238279540();
  if (!v2)
  {
    v9 = v11[0];
    v18 = 1;
    sub_2382794F0();
    v17 = 2;
    sub_2382794F0();
    v16 = v9;
    v15 = 3;
    sub_2382223FC();
    sub_238279550();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_2382223A8()
{
  result = qword_27DEF6A68;
  if (!qword_27DEF6A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A68);
  }

  return result;
}

unint64_t sub_2382223FC()
{
  result = qword_27DEF6A70;
  if (!qword_27DEF6A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A70);
  }

  return result;
}

uint64_t ElectricalLoadEvent.ElectricalMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A78, &qword_23827A560);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382223A8();
  sub_238279630();
  if (!v2)
  {
    v24 = 0;
    v9 = sub_2382794B0();
    v23 = 1;
    v10 = sub_238279460();
    v19 = v11;
    v12 = v10;
    v22 = 2;
    v13 = sub_238279460();
    v18 = v14;
    v17 = v13;
    v20 = 3;
    sub_238222688();
    sub_2382794C0();
    (*(v6 + 8))(v8, v5);
    v16 = v21;
    *a2 = v9;
    *(a2 + 8) = v12;
    *(a2 + 16) = v19 & 1;
    *(a2 + 24) = v17;
    *(a2 + 32) = v18 & 1;
    *(a2 + 33) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_238222688()
{
  result = qword_27DEF6A80;
  if (!qword_27DEF6A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A80);
  }

  return result;
}

uint64_t ElectricalLoadEvent.DeviceState.deviceID.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t ElectricalLoadEvent.DeviceState.guidanceToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricalLoadEvent.DeviceState(0) + 32);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ElectricalLoadEvent.DeviceState.guidanceToken.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ElectricalLoadEvent.DeviceState(0) + 32);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_2382228A0()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 0x6574617473;
  v4 = 0xD000000000000014;
  if (v1 != 3)
  {
    v4 = 0x65636E6164697567;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_238222940@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_238227EFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238222974(uint64_t a1)
{
  v2 = sub_238222C80();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382229B0(uint64_t a1)
{
  v2 = sub_238222C80();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.DeviceState.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6A88, &qword_23827A568);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238222C80();
  sub_238279640();
  v10[15] = *v3;
  v10[14] = 0;
  sub_238222CD4();
  sub_238279550();
  if (!v2)
  {
    v10[13] = 1;
    sub_238279500();
    v10[12] = v3[24];
    v10[11] = 2;
    sub_238222D28();
    sub_238279550();
    v10[10] = 3;
    sub_238279510();
    type metadata accessor for ElectricalLoadEvent.DeviceState(0);
    v10[9] = 4;
    sub_238278BC0();
    sub_23822328C(&qword_27DEF6AA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_238279550();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_238222C80()
{
  result = qword_27DEF6A90;
  if (!qword_27DEF6A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A90);
  }

  return result;
}

unint64_t sub_238222CD4()
{
  result = qword_27DEF6A98;
  if (!qword_27DEF6A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6A98);
  }

  return result;
}

unint64_t sub_238222D28()
{
  result = qword_27DEF6AA0;
  if (!qword_27DEF6AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6AA0);
  }

  return result;
}

uint64_t ElectricalLoadEvent.DeviceState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_238278BC0();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6AB0, &qword_23827A570);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for ElectricalLoadEvent.DeviceState(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238222C80();
  v28 = v8;
  v12 = v29;
  sub_238279630();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a1;
  v23 = v5;
  v13 = v26;
  v35 = 0;
  sub_2382231E4();
  v14 = v27;
  sub_2382794C0();
  v15 = v11;
  *v11 = v36;
  v34 = 1;
  *(v11 + 1) = sub_238279470();
  *(v11 + 2) = v16;
  v32 = 2;
  sub_238223238();
  sub_2382794C0();
  v11[24] = v33;
  v31 = 3;
  v17 = sub_238279480();
  v18 = v29;
  v15[25] = v17 & 1;
  v30 = 4;
  sub_23822328C(&qword_27DEF6AC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v19 = v15;
  v20 = v23;
  sub_2382794C0();
  (*(v13 + 8))(v28, v14);
  (*(v24 + 32))(v19 + *(v9 + 32), v20, v3);
  sub_23821FF1C(v19, v25, type metadata accessor for ElectricalLoadEvent.DeviceState);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_23821FF84(v19, type metadata accessor for ElectricalLoadEvent.DeviceState);
}

unint64_t sub_2382231E4()
{
  result = qword_27DEF6AB8;
  if (!qword_27DEF6AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6AB8);
  }

  return result;
}

unint64_t sub_238223238()
{
  result = qword_27DEF6AC0;
  if (!qword_27DEF6AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6AC0);
  }

  return result;
}

uint64_t sub_23822328C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238223304(uint64_t a1)
{
  v2 = sub_238223918();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238223340(uint64_t a1)
{
  v2 = sub_238223918();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23822337C(uint64_t a1)
{
  v2 = sub_2382239C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382233B8(uint64_t a1)
{
  v2 = sub_2382239C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382233F4()
{
  v1 = 6581861;
  if (*v0 != 1)
  {
    v1 = 0x657669746361;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69676562;
  }
}

uint64_t sub_238223440@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2382280B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238223468(uint64_t a1)
{
  v2 = sub_2382238C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2382234A4(uint64_t a1)
{
  v2 = sub_2382238C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2382234E0(uint64_t a1)
{
  v2 = sub_23822396C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822351C(uint64_t a1)
{
  v2 = sub_23822396C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.Session.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6AD0, &qword_23827A578);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6AD8, &qword_23827A580);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6AE0, &qword_23827A588);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6AE8, &qword_23827A590);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382238C4();
  sub_238279640();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_23822396C();
      v9 = v21;
      sub_2382794E0();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_238223918();
      v9 = v24;
      sub_2382794E0();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_2382239C0();
    sub_2382794E0();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_2382238C4()
{
  result = qword_27DEF6AF0;
  if (!qword_27DEF6AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6AF0);
  }

  return result;
}

unint64_t sub_238223918()
{
  result = qword_27DEF6AF8;
  if (!qword_27DEF6AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6AF8);
  }

  return result;
}

unint64_t sub_23822396C()
{
  result = qword_27DEF6B00;
  if (!qword_27DEF6B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B00);
  }

  return result;
}

unint64_t sub_2382239C0()
{
  result = qword_27DEF6B08;
  if (!qword_27DEF6B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B08);
  }

  return result;
}

uint64_t _s9EnergyKit19ElectricalLoadEventV10DeviceTypeO9hashValueSivg_0()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t ElectricalLoadEvent.Session.State.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B10, &qword_23827A598);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B18, &qword_23827A5A0);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B20, &qword_23827A5A8);
  v40 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B28, &qword_23827A5B0);
  v42 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382238C4();
  v13 = v43;
  sub_238279630();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_2382794D0();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_23822396C();
          v27 = v34;
          sub_238279440();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_238223918();
          v31 = v34;
          sub_238279440();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_2382239C0();
        v29 = v34;
        sub_238279440();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1(v24);
    }
  }

  v21 = sub_2382793F0();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510);
  *v23 = &type metadata for ElectricalLoadEvent.Session.State;
  sub_238279450();
  sub_2382793E0();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t ElectricalLoadEvent.Session.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricalLoadEvent.Session(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t sub_238224098(uint64_t a1)
{
  v2 = *v1;
  sub_238279600();
  MEMORY[0x2383ED500](v2);
  return sub_238279620();
}

uint64_t sub_2382240DC()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_238224108@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_238279590() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_238279590();

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

uint64_t sub_2382241E4(uint64_t a1)
{
  v2 = sub_23822442C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238224220(uint64_t a1)
{
  v2 = sub_23822442C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.Session.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B30, &qword_23827A5B8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23822442C();
  sub_238279640();
  v10[15] = 0;
  sub_238278BC0();
  sub_23822328C(&qword_27DEF6AA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_238279550();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for ElectricalLoadEvent.Session(0) + 20));
    v10[13] = 1;
    sub_238224480();
    sub_238279550();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23822442C()
{
  result = qword_27DEF6B38;
  if (!qword_27DEF6B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B38);
  }

  return result;
}

unint64_t sub_238224480()
{
  result = qword_27DEF6B40;
  if (!qword_27DEF6B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B40);
  }

  return result;
}

uint64_t ElectricalLoadEvent.Session.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v27 = sub_238278BC0();
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B48, &qword_23827A5C0);
  v7 = *(v6 - 8);
  v25 = v6;
  v26 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ElectricalLoadEvent.Session(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23822442C();
  sub_238279630();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v22 = v10;
  v13 = v12;
  v14 = v24;
  v30 = 0;
  sub_23822328C(&qword_27DEF6AC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v15 = v27;
  v16 = v25;
  sub_2382794C0();
  v17 = *(v14 + 32);
  v21 = v13;
  v17(v13, v5, v15);
  v28 = 1;
  sub_238224850();
  sub_2382794C0();
  (*(v26 + 8))(v9, v16);
  v18 = v21;
  *(v21 + *(v22 + 20)) = v29;
  sub_23821FF1C(v18, v23, type metadata accessor for ElectricalLoadEvent.Session);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23821FF84(v18, type metadata accessor for ElectricalLoadEvent.Session);
}

unint64_t sub_238224850()
{
  result = qword_27DEF6B50;
  if (!qword_27DEF6B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B50);
  }

  return result;
}

uint64_t _s9EnergyKit21ElectricHVACLoadEventV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_238278BC0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ElectricalLoadEvent.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricalLoadEvent(0) + 20);
  v4 = sub_238278B70();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

__n128 ElectricalLoadEvent.electricalMeasurement.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ElectricalLoadEvent(0) + 32));
  v4 = v3[1].n128_u8[0];
  v5 = v3[1].n128_u64[1];
  v6 = v3[2].n128_u8[0];
  v7 = v3[2].n128_u8[1];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u8[0] = v4;
  a1[1].n128_u64[1] = v5;
  a1[2].n128_u8[0] = v6;
  a1[2].n128_u8[1] = v7;
  return result;
}

uint64_t ElectricalLoadEvent.venueID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for ElectricalLoadEvent(0) + 36);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_238224B4C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x444965756E6576;
  if (v1 != 5)
  {
    v3 = 0x6E6F6973726576;
  }

  v4 = 0x7453656369766564;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6D617473656D6974;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973736573;
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

uint64_t sub_238224C2C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2382281C8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_238224C60(uint64_t a1)
{
  v2 = sub_2382250AC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238224C9C(uint64_t a1)
{
  v2 = sub_2382250AC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricalLoadEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B58, &qword_23827A5C8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382250AC();
  sub_238279640();
  LOBYTE(v17) = 0;
  sub_238278BC0();
  sub_23822328C(&qword_27DEF6AA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_238279550();
  if (!v2)
  {
    Event = type metadata accessor for ElectricalLoadEvent(0);
    LOBYTE(v17) = 1;
    sub_238278B70();
    sub_23822328C(&qword_27DEF6B68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_238279550();
    LOBYTE(v17) = 2;
    type metadata accessor for ElectricalLoadEvent.Session(0);
    sub_23822328C(&qword_27DEF6B70, type metadata accessor for ElectricalLoadEvent.Session, &protocol conformance descriptor for ElectricalLoadEvent.Session);
    sub_238279550();
    LOBYTE(v17) = 3;
    type metadata accessor for ElectricalLoadEvent.DeviceState(0);
    sub_23822328C(&qword_27DEF6B78, type metadata accessor for ElectricalLoadEvent.DeviceState, &protocol conformance descriptor for ElectricalLoadEvent.DeviceState);
    sub_238279550();
    v9 = (v3 + *(Event + 32));
    v10 = *(v9 + 16);
    v11 = *(v9 + 3);
    v12 = *(v9 + 32);
    v13 = *(v9 + 33);
    v17 = *v9;
    v18 = v10;
    v19 = v11;
    v20 = v12;
    v21 = v13;
    v22 = 4;
    sub_238225100();
    sub_238279550();
    LOBYTE(v17) = 5;
    sub_238279550();
    LOBYTE(v17) = 6;
    sub_238279540();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_2382250AC()
{
  result = qword_27DEF6B60;
  if (!qword_27DEF6B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B60);
  }

  return result;
}

unint64_t sub_238225100()
{
  result = qword_27DEF6B80;
  if (!qword_27DEF6B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6B80);
  }

  return result;
}

uint64_t ElectricalLoadEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v47 = type metadata accessor for ElectricalLoadEvent.DeviceState(0);
  MEMORY[0x28223BE20](v47);
  v48 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ElectricalLoadEvent.Session(0);
  MEMORY[0x28223BE20](v49);
  v50 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_238278B70();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_238278BC0();
  v53 = *(v57 - 8);
  v8 = MEMORY[0x28223BE20](v57);
  v10 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v54 = v42 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6B88, &qword_23827A5D0);
  v55 = *(v12 - 8);
  v56 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = v42 - v13;
  Event = type metadata accessor for ElectricalLoadEvent(0);
  MEMORY[0x28223BE20](Event);
  v17 = v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2382250AC();
  v58 = v14;
  v18 = v59;
  sub_238279630();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v44 = v10;
  v45 = v7;
  v59 = Event;
  LOBYTE(v60) = 0;
  v19 = sub_23822328C(&qword_27DEF6AC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v20 = v54;
  sub_2382794C0();
  v42[2] = v19;
  v21 = *(v53 + 32);
  v43 = v17;
  v22 = v20;
  v23 = v53 + 32;
  v24 = v57;
  v21(v17, v22, v57);
  LOBYTE(v60) = 1;
  sub_23822328C(&qword_27DEF6B90, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v25 = v45;
  v26 = v52;
  sub_2382794C0();
  v42[0] = v21;
  v42[1] = v23;
  v27 = v43;
  (*(v51 + 32))(&v43[v59[5]], v25, v26);
  LOBYTE(v60) = 2;
  sub_23822328C(&qword_27DEF6B98, type metadata accessor for ElectricalLoadEvent.Session, &protocol conformance descriptor for ElectricalLoadEvent.Session);
  v28 = v50;
  v54 = 0;
  sub_2382794C0();
  v29 = a1;
  v30 = v55;
  sub_238225A14(v28, v27 + v59[6], type metadata accessor for ElectricalLoadEvent.Session);
  LOBYTE(v60) = 3;
  sub_23822328C(&qword_27DEF6BA0, type metadata accessor for ElectricalLoadEvent.DeviceState, &protocol conformance descriptor for ElectricalLoadEvent.DeviceState);
  v31 = v48;
  sub_2382794C0();
  v32 = v27;
  v33 = v59;
  sub_238225A14(v31, v32 + v59[7], type metadata accessor for ElectricalLoadEvent.DeviceState);
  v65 = 4;
  sub_238225A7C();
  sub_2382794C0();
  v34 = v61;
  v35 = v62;
  v36 = v63;
  v37 = v64;
  v38 = v32 + v33[8];
  *v38 = v60;
  *(v38 + 16) = v34;
  *(v38 + 24) = v35;
  *(v38 + 32) = v36;
  *(v38 + 33) = v37;
  LOBYTE(v60) = 5;
  v39 = v44;
  sub_2382794C0();
  (v42[0])(v32 + v33[9], v39, v24);
  LOBYTE(v60) = 6;
  v40 = sub_2382794B0();
  (*(v30 + 8))(v58, v56);
  *(v32 + v33[10]) = v40;
  sub_23821FF1C(v32, v46, type metadata accessor for ElectricalLoadEvent);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_23821FF84(v32, type metadata accessor for ElectricalLoadEvent);
}

uint64_t sub_238225A14(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_238225A7C()
{
  result = qword_27DEF6BA8;
  if (!qword_27DEF6BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6BA8);
  }

  return result;
}

unint64_t sub_238225AD4()
{
  result = qword_27DEF6BB0;
  if (!qword_27DEF6BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6BB0);
  }

  return result;
}

unint64_t sub_238225B2C()
{
  result = qword_27DEF6BB8;
  if (!qword_27DEF6BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6BB8);
  }

  return result;
}

unint64_t sub_238225B84()
{
  result = qword_27DEF6BC0;
  if (!qword_27DEF6BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6BC0);
  }

  return result;
}

uint64_t sub_238225C64(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_238278B70();
    if (*(*(v11 - 8) + 84) == a2)
    {
      v8 = v11;
      v12 = *(v11 - 8);
      v13 = a3[5];
    }

    else
    {
      v14 = type metadata accessor for ElectricalLoadEvent.Session(0);
      if (*(*(v14 - 8) + 84) == a2)
      {
        v8 = v14;
        v12 = *(v14 - 8);
        v13 = a3[6];
      }

      else
      {
        v15 = type metadata accessor for ElectricalLoadEvent.DeviceState(0);
        if (*(*(v15 - 8) + 84) != a2)
        {
          v17 = *(a1 + a3[8] + 33);
          if (v17 >= 2)
          {
            return v17 - 1;
          }

          else
          {
            return 0;
          }
        }

        v8 = v15;
        v12 = *(v15 - 8);
        v13 = a3[7];
      }
    }

    v9 = *(v12 + 48);
    v10 = a1 + v13;
  }

  return v9(v10, a2, v8);
}

uint64_t sub_238225E14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_238278BC0();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    v13 = sub_238278B70();
    if (*(*(v13 - 8) + 84) == a3)
    {
      v10 = v13;
      v14 = *(v13 - 8);
      v15 = a4[5];
    }

    else
    {
      v16 = type metadata accessor for ElectricalLoadEvent.Session(0);
      if (*(*(v16 - 8) + 84) == a3)
      {
        v10 = v16;
        v14 = *(v16 - 8);
        v15 = a4[6];
      }

      else
      {
        result = type metadata accessor for ElectricalLoadEvent.DeviceState(0);
        if (*(*(result - 8) + 84) != a3)
        {
          *(a1 + a4[8] + 33) = a2 + 1;
          return result;
        }

        v10 = result;
        v14 = *(result - 8);
        v15 = a4[7];
      }
    }

    v11 = *(v14 + 56);
    v12 = a1 + v15;
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_238225FB0(uint64_t a1)
{
  result = sub_238278BC0();
  if (v2 <= 0x3F)
  {
    result = sub_238278B70();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ElectricalLoadEvent.Session(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for ElectricalLoadEvent.DeviceState(319);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_2382260D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_23822611C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_238226188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_238278BC0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 32);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_238226248(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_238278BC0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 32);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_2382262EC(uint64_t a1)
{
  result = sub_238278BC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_238226398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_238278BC0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 3)
    {
      return v10 - 2;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_238226464(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_238278BC0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 2;
  }

  return result;
}

uint64_t sub_23822651C(uint64_t a1)
{
  result = sub_238278BC0();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricalLoadEvent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ElectricalLoadEvent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricalLoadEvent.Session.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ElectricalLoadEvent.Session.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricalLoadEvent.DeviceState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ElectricalLoadEvent.DeviceState.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_2382269F4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_238226A84(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ElectricVehicleLoadEvent.ElectricalMeasurement.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ElectricVehicleLoadEvent.ElectricalMeasurement.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_238226D08()
{
  result = qword_27DEF6BF8;
  if (!qword_27DEF6BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6BF8);
  }

  return result;
}

unint64_t sub_238226D60()
{
  result = qword_27DEF6C00;
  if (!qword_27DEF6C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C00);
  }

  return result;
}

unint64_t sub_238226DB8()
{
  result = qword_27DEF6C08;
  if (!qword_27DEF6C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C08);
  }

  return result;
}

unint64_t sub_238226E10()
{
  result = qword_27DEF6C10;
  if (!qword_27DEF6C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C10);
  }

  return result;
}

unint64_t sub_238226E68()
{
  result = qword_27DEF6C18;
  if (!qword_27DEF6C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C18);
  }

  return result;
}

unint64_t sub_238226EC0()
{
  result = qword_27DEF6C20;
  if (!qword_27DEF6C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C20);
  }

  return result;
}

unint64_t sub_238226F18()
{
  result = qword_27DEF6C28;
  if (!qword_27DEF6C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C28);
  }

  return result;
}

unint64_t sub_238226F70()
{
  result = qword_27DEF6C30;
  if (!qword_27DEF6C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C30);
  }

  return result;
}

unint64_t sub_238226FC8()
{
  result = qword_27DEF6C38;
  if (!qword_27DEF6C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C38);
  }

  return result;
}

unint64_t sub_238227020()
{
  result = qword_27DEF6C40;
  if (!qword_27DEF6C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C40);
  }

  return result;
}

unint64_t sub_238227078()
{
  result = qword_27DEF6C48;
  if (!qword_27DEF6C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C48);
  }

  return result;
}

unint64_t sub_2382270D0()
{
  result = qword_27DEF6C50;
  if (!qword_27DEF6C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C50);
  }

  return result;
}

unint64_t sub_238227128()
{
  result = qword_27DEF6C58;
  if (!qword_27DEF6C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C58);
  }

  return result;
}

unint64_t sub_238227180()
{
  result = qword_27DEF6C60;
  if (!qword_27DEF6C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C60);
  }

  return result;
}

unint64_t sub_2382271D8()
{
  result = qword_27DEF6C68;
  if (!qword_27DEF6C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C68);
  }

  return result;
}

unint64_t sub_238227230()
{
  result = qword_27DEF6C70;
  if (!qword_27DEF6C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C70);
  }

  return result;
}

unint64_t sub_238227288()
{
  result = qword_27DEF6C78;
  if (!qword_27DEF6C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C78);
  }

  return result;
}

unint64_t sub_2382272E0()
{
  result = qword_27DEF6C80;
  if (!qword_27DEF6C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C80);
  }

  return result;
}

unint64_t sub_238227338()
{
  result = qword_27DEF6C88;
  if (!qword_27DEF6C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C88);
  }

  return result;
}

unint64_t sub_238227390()
{
  result = qword_27DEF6C90;
  if (!qword_27DEF6C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C90);
  }

  return result;
}

unint64_t sub_2382273E8()
{
  result = qword_27DEF6C98;
  if (!qword_27DEF6C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6C98);
  }

  return result;
}

unint64_t sub_238227440()
{
  result = qword_27DEF6CA0;
  if (!qword_27DEF6CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CA0);
  }

  return result;
}

unint64_t sub_238227498()
{
  result = qword_27DEF6CA8;
  if (!qword_27DEF6CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CA8);
  }

  return result;
}

unint64_t sub_2382274F0()
{
  result = qword_27DEF6CB0;
  if (!qword_27DEF6CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CB0);
  }

  return result;
}

unint64_t sub_238227548()
{
  result = qword_27DEF6CB8;
  if (!qword_27DEF6CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CB8);
  }

  return result;
}

unint64_t sub_2382275A0()
{
  result = qword_27DEF6CC0;
  if (!qword_27DEF6CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CC0);
  }

  return result;
}

unint64_t sub_2382275F8()
{
  result = qword_27DEF6CC8;
  if (!qword_27DEF6CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CC8);
  }

  return result;
}

unint64_t sub_238227650()
{
  result = qword_27DEF6CD0;
  if (!qword_27DEF6CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CD0);
  }

  return result;
}

unint64_t sub_2382276A8()
{
  result = qword_27DEF6CD8;
  if (!qword_27DEF6CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CD8);
  }

  return result;
}

unint64_t sub_238227700()
{
  result = qword_27DEF6CE0;
  if (!qword_27DEF6CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CE0);
  }

  return result;
}

unint64_t sub_238227758()
{
  result = qword_27DEF6CE8;
  if (!qword_27DEF6CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CE8);
  }

  return result;
}

unint64_t sub_2382277B0()
{
  result = qword_27DEF6CF0;
  if (!qword_27DEF6CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CF0);
  }

  return result;
}

unint64_t sub_238227808()
{
  result = qword_27DEF6CF8;
  if (!qword_27DEF6CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6CF8);
  }

  return result;
}

unint64_t sub_238227860()
{
  result = qword_27DEF6D00;
  if (!qword_27DEF6D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D00);
  }

  return result;
}

unint64_t sub_2382278B8()
{
  result = qword_27DEF6D08;
  if (!qword_27DEF6D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D08);
  }

  return result;
}

unint64_t sub_238227910()
{
  result = qword_27DEF6D10;
  if (!qword_27DEF6D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D10);
  }

  return result;
}

unint64_t sub_238227968()
{
  result = qword_27DEF6D18;
  if (!qword_27DEF6D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D18);
  }

  return result;
}

unint64_t sub_2382279C0()
{
  result = qword_27DEF6D20;
  if (!qword_27DEF6D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D20);
  }

  return result;
}

unint64_t sub_238227A18()
{
  result = qword_27DEF6D28;
  if (!qword_27DEF6D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D28);
  }

  return result;
}

unint64_t sub_238227A70()
{
  result = qword_27DEF6D30;
  if (!qword_27DEF6D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D30);
  }

  return result;
}

unint64_t sub_238227AC8()
{
  result = qword_27DEF6D38;
  if (!qword_27DEF6D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D38);
  }

  return result;
}

uint64_t sub_238227B1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6710895 && a2 == 0xE300000000000000;
  if (v3 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 28271 && a2 == 0xE200000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656767756C706E75 && a2 == 0xE900000000000064 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656767756C70 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_238279590();

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

uint64_t sub_238227C80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726568746FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1667331688 && a2 == 0xE400000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6369727463656C65 && a2 == 0xEF656C6369686556)
  {

    return 2;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_238227D9C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6576656CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265776F70 && a2 == 0xE500000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796772656E65 && a2 == 0xE600000000000000 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F69746365726964 && a2 == 0xE90000000000006ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_238279590();

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

uint64_t sub_238227EFC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE800000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000238280F40 == a2 || (sub_238279590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65636E6164697567 && a2 == 0xED00006E656B6F54)
  {

    return 4;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_2382280B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E69676562 && a2 == 0xE500000000000000;
  if (v4 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581861 && a2 == 0xE300000000000000 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x657669746361 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_2382281C8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_238279590() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_238279590() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973736573 && a2 == 0xE700000000000000 || (sub_238279590() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7453656369766564 && a2 == 0xEB00000000657461 || (sub_238279590() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000238280F60 == a2 || (sub_238279590() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x444965756E6576 && a2 == 0xE700000000000000 || (sub_238279590() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_238279590();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

EnergyKit::ElectricHVACLoadEvent::ElectricalMeasurement __swiftcall ElectricHVACLoadEvent.ElectricalMeasurement.init(stage:)(EnergyKit::ElectricHVACLoadEvent::ElectricalMeasurement stage)
{
  if (stage.stage > 0x64)
  {
    __break(1u);
  }

  else
  {
    v1->stage = stage.stage;
  }

  return stage;
}

uint64_t sub_2382284A4()
{
  sub_238279600();
  MEMORY[0x2383ED500](0);
  return sub_238279620();
}

uint64_t sub_238228510(uint64_t a1)
{
  sub_238279600();
  MEMORY[0x2383ED500](0);
  return sub_238279620();
}

uint64_t sub_238228564@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6567617473 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_238279590();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2382285E8(uint64_t a1)
{
  v2 = sub_238228798();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238228624(uint64_t a1)
{
  v2 = sub_238228798();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricHVACLoadEvent.ElectricalMeasurement.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D40, &qword_23827B920);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238228798();
  sub_238279640();
  sub_238279530();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_238228798()
{
  result = qword_27DEF6D48;
  if (!qword_27DEF6D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D48);
  }

  return result;
}

uint64_t ElectricHVACLoadEvent.ElectricalMeasurement.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D50, &qword_23827B928);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238228798();
  sub_238279630();
  if (!v2)
  {
    v9 = sub_2382794A0();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238228958(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D40, &qword_23827B920);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238228798();
  sub_238279640();
  sub_238279530();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_238228AA4(uint64_t a1)
{
  v2 = sub_238229044();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238228AE0(uint64_t a1)
{
  v2 = sub_238229044();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238228B1C(uint64_t a1)
{
  v2 = sub_2382290EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238228B58(uint64_t a1)
{
  v2 = sub_2382290EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238228B94(uint64_t a1)
{
  v2 = sub_238228FF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238228BD0(uint64_t a1)
{
  v2 = sub_238228FF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_238228C0C(uint64_t a1)
{
  v2 = sub_238229098();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238228C48(uint64_t a1)
{
  v2 = sub_238229098();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricHVACLoadEvent.Session.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D58, &qword_23827B930);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D60, &qword_23827B938);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D68, &qword_23827B940);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D70, &qword_23827B948);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238228FF0();
  sub_238279640();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_238229098();
      v9 = v21;
      sub_2382794E0();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_238229044();
      v9 = v24;
      sub_2382794E0();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_2382290EC();
    sub_2382794E0();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_238228FF0()
{
  result = qword_27DEF6D78;
  if (!qword_27DEF6D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D78);
  }

  return result;
}

unint64_t sub_238229044()
{
  result = qword_27DEF6D80;
  if (!qword_27DEF6D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D80);
  }

  return result;
}

unint64_t sub_238229098()
{
  result = qword_27DEF6D88;
  if (!qword_27DEF6D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D88);
  }

  return result;
}

unint64_t sub_2382290EC()
{
  result = qword_27DEF6D90;
  if (!qword_27DEF6D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6D90);
  }

  return result;
}

uint64_t ElectricHVACLoadEvent.Session.State.hashValue.getter()
{
  v1 = *v0;
  sub_238279600();
  MEMORY[0x2383ED500](v1);
  return sub_238279620();
}

uint64_t ElectricHVACLoadEvent.Session.State.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6D98, &qword_23827B950);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DA0, &qword_23827B958);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DA8, &qword_23827B960);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DB0, &unk_23827B968);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_238228FF0();
  v15 = v36;
  sub_238279630();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_2382794D0();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_238228428();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_2382793F0();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF69F8, &qword_23827A510);
      *v24 = &type metadata for ElectricHVACLoadEvent.Session.State;
      sub_238279450();
      sub_2382793E0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_238229098();
          sub_238279440();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_238229044();
          v26 = v17;
          sub_238279440();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_2382290EC();
        sub_238279440();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t ElectricHVACLoadEvent.Session.GuidanceState.guidanceToken.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0) + 20);
  v4 = sub_238278BC0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t ElectricHVACLoadEvent.Session.GuidanceState.init(wasFollowingGuidance:guidanceToken:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = *(type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0) + 20);
  v7 = sub_238278BC0();
  result = (*(*(v7 - 8) + 32))(&a3[v6], a2, v7);
  *a3 = a1;
  return result;
}

uint64_t sub_2382298E8()
{
  if (*v0)
  {
    return 0x65636E6164697567;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_238229934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000238280F40 == a2 || (sub_238279590() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x65636E6164697567 && a2 == 0xED00006E656B6F54)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_238279590();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_238229A24(uint64_t a1)
{
  v2 = sub_238229C54();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_238229A60(uint64_t a1)
{
  v2 = sub_238229C54();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricHVACLoadEvent.Session.GuidanceState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DB8, &qword_23827B978);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238229C54();
  sub_238279640();
  v8[15] = 0;
  sub_238279510();
  if (!v1)
  {
    type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
    v8[14] = 1;
    sub_238278BC0();
    sub_238229FA8(&qword_27DEF6AA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_238279550();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_238229C54()
{
  result = qword_27DEF6DC0;
  if (!qword_27DEF6DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6DC0);
  }

  return result;
}

uint64_t ElectricHVACLoadEvent.Session.GuidanceState.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_238278BC0();
  v20 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DC8, &qword_23827B980);
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_238229C54();
  sub_238279630();
  if (!v2)
  {
    v19 = v8;
    v12 = v22;
    v11 = v23;
    v26 = 0;
    v13 = v24;
    v14 = sub_238279480();
    v18 = v10;
    *v10 = v14 & 1;
    v25 = 1;
    sub_238229FA8(&qword_27DEF6AC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
    sub_2382794C0();
    (*(v12 + 8))(v7, v13);
    v15 = v18;
    (*(v20 + 32))(&v18[*(v19 + 20)], v5, v11);
    sub_23822BE00(v15, v21, type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_238229FA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ElectricHVACLoadEvent.Session.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ElectricHVACLoadEvent.Session(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t ElectricHVACLoadEvent.Session.init(id:state:guidanceState:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a2;
  v8 = type metadata accessor for ElectricHVACLoadEvent.Session(0);
  *(a4 + *(v8 + 20)) = v7;
  v9 = sub_238278BC0();
  (*(*(v9 - 8) + 32))(a4, a1, v9);
  return sub_23822BE00(a3, a4 + *(v8 + 24), type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState);
}

uint64_t sub_23822A150()
{
  v1 = 0x6574617473;
  if (*v0 != 1)
  {
    v1 = 0x65636E6164697567;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_23822A1A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23822D348(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23822A1D0(uint64_t a1)
{
  v2 = sub_23822A490();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822A20C(uint64_t a1)
{
  v2 = sub_23822A490();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricHVACLoadEvent.Session.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DD0, &qword_23827B988);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23822A490();
  sub_238279640();
  v10[15] = 0;
  sub_238278BC0();
  sub_238229FA8(&qword_27DEF6AA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_238279550();
  if (!v2)
  {
    v10[14] = *(v3 + *(type metadata accessor for ElectricHVACLoadEvent.Session(0) + 20));
    v10[13] = 1;
    sub_23822A4E4();
    sub_238279550();
    v10[12] = 2;
    type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
    sub_238229FA8(&qword_27DEF6DE8, type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState, &protocol conformance descriptor for ElectricHVACLoadEvent.Session.GuidanceState);
    sub_238279550();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23822A490()
{
  result = qword_27DEF6DD8;
  if (!qword_27DEF6DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6DD8);
  }

  return result;
}

unint64_t sub_23822A4E4()
{
  result = qword_27DEF6DE0;
  if (!qword_27DEF6DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6DE0);
  }

  return result;
}

uint64_t ElectricHVACLoadEvent.Session.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v21 = type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState(0);
  MEMORY[0x28223BE20](v21);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_238278BC0();
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6DF0, &unk_23827B990);
  v22 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ElectricHVACLoadEvent.Session(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23822A490();
  sub_238279630();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v22;
  v13 = v23;
  v18 = v11;
  v19 = a1;
  v30 = 0;
  sub_238229FA8(&qword_27DEF6AC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v24;
  sub_2382794C0();
  (*(v13 + 32))(v18, v14, v25);
  v28 = 1;
  sub_23822A994();
  sub_2382794C0();
  v15 = v18;
  v18[*(v9 + 20)] = v29;
  v27 = 2;
  sub_238229FA8(&qword_27DEF6E00, type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState, &protocol conformance descriptor for ElectricHVACLoadEvent.Session.GuidanceState);
  sub_2382794C0();
  (*(v12 + 8))(v8, v26);
  sub_23822BE00(v5, v15 + *(v9 + 24), type metadata accessor for ElectricHVACLoadEvent.Session.GuidanceState);
  sub_23822A9E8(v15, v20, type metadata accessor for ElectricHVACLoadEvent.Session);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_23822BEBC(v15, type metadata accessor for ElectricHVACLoadEvent.Session);
}

unint64_t sub_23822A994()
{
  result = qword_27DEF6DF8;
  if (!qword_27DEF6DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6DF8);
  }

  return result;
}

uint64_t sub_23822A9E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_23822AAB0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1(0) + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 16);

  return v8(a3, v3 + v6, v7);
}

uint64_t ElectricHVACLoadEvent.measurement.getter@<X0>(void *a1@<X8>)
{
  result = type metadata accessor for ElectricHVACLoadEvent(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t ElectricHVACLoadEvent.deviceID.getter()
{
  v1 = *(v0 + *(type metadata accessor for ElectricHVACLoadEvent(0) + 32));

  return v1;
}

uint64_t ElectricHVACLoadEvent.init(timestamp:measurement:session:deviceID:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6968, &unk_23827A4B0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = *a2;
  sub_238278B80();
  v16 = sub_238278BC0();
  LODWORD(a2) = (*(*(v16 - 8) + 48))(v14, 1, v16);
  sub_23821EBC0(v14);
  if (a2 != 1)
  {
    goto LABEL_17;
  }

  if ((a5 & 0x2000000000000000) != 0)
  {
    result = HIBYTE(a5) & 0xF;
  }

  else
  {
    result = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (result)
  {
    if ((a5 & 0x1000000000000000) == 0)
    {
      if (result <= 64)
      {
        goto LABEL_8;
      }

LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_238279060();
  if (result > 64)
  {
    goto LABEL_20;
  }

LABEL_8:
  result = sub_23822DE84(a4, a5);
  if (!v18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = sub_238278FC0();

  if ((v19 & 1) == 0)
  {
    result = sub_23822DE84(a4, a5);
    if (!v20)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v21 = sub_238278FB0();

    if ((v21 & 1) == 0)
    {
      goto LABEL_22;
    }
  }

  result = sub_23822D660(a4, a5);
  if (!v22)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v23 = sub_238278FC0();

  if (v23)
  {
    goto LABEL_16;
  }

  result = sub_23822D660(a4, a5);
  if (v24)
  {
    v25 = sub_238278FB0();

    if ((v25 & 1) == 0)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

LABEL_16:

    v26 = sub_23822AF5C(a4, a5);

    if (v26)
    {
LABEL_17:
      v27 = type metadata accessor for ElectricHVACLoadEvent(0);
      v28 = v27[5];
      v29 = sub_238278B70();
      v30 = *(v29 - 8);
      (*(v30 + 16))(a6 + v28, a1, v29);
      sub_23822A9E8(a3, a6 + v27[6], type metadata accessor for ElectricHVACLoadEvent.Session);
      *(a6 + v27[7]) = v15;
      *(a6 + v27[9]) = 1;
      sub_238278BB0();
      sub_23822BEBC(a3, type metadata accessor for ElectricHVACLoadEvent.Session);
      result = (*(v30 + 8))(a1, v29);
      v31 = (a6 + v27[8]);
      *v31 = a4;
      v31[1] = a5;
      return result;
    }

    goto LABEL_21;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_23822AF5C(uint64_t a1, unint64_t a2)
{
  v32 = sub_238278A40();
  v4 = MEMORY[0x28223BE20](v32);
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v30 = &v26 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v26 - v9;
  v11 = HIBYTE(a2) & 0xF;
  v34 = a1;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v29 = v11;
  if (v11)
  {
    v12 = 0;
    v27 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v28 = a2 & 0xFFFFFFFFFFFFFFLL;
    v13 = (v8 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_2382793A0();
        v17 = v16;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v33[0] = v34;
          v33[1] = v28;
          v15 = v33 + v12;
        }

        else
        {
          v14 = v27;
          if ((v34 & 0x1000000000000000) == 0)
          {
            v14 = sub_238279400();
          }

          v15 = (v14 + v12);
        }

        if ((*v15 & 0x80000000) == 0)
        {
          goto LABEL_13;
        }

        v24 = (__clz(*v15 ^ 0xFF) - 24);
        if (v24 > 2)
        {
          if (v24 == 3)
          {
            v17 = 3;
          }

          else
          {
            v17 = 4;
          }

          goto LABEL_14;
        }

        if (v24 == 1)
        {
LABEL_13:
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }
      }

LABEL_14:
      v18 = v30;
      sub_238278A10();
      v19 = v31;
      sub_238278A00();
      sub_238278A20();
      v20 = *v13;
      v21 = v19;
      v22 = v32;
      (*v13)(v21, v32);
      v20(v18, v22);
      v23 = sub_238278A30();
      v20(v10, v22);
      if (v23)
      {
        v12 += v17;
        if (v12 < v29)
        {
          continue;
        }
      }

      return v23 & 1;
    }
  }

  v23 = 1;
  return v23 & 1;
}

uint64_t sub_23822B23C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6D6572757361656DLL;
  v4 = 0x4449656369766564;
  if (v1 != 4)
  {
    v4 = 0x6E6F6973726576;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D617473656D6974;
  if (v1 != 1)
  {
    v5 = 0x6E6F6973736573;
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

uint64_t sub_23822B2F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23822D45C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23822B328(uint64_t a1)
{
  v2 = sub_23822B6B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23822B364(uint64_t a1)
{
  v2 = sub_23822B6B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ElectricHVACLoadEvent.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6E08, &qword_23827B9A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23822B6B8();
  sub_238279640();
  v15 = 0;
  sub_238278BC0();
  sub_238229FA8(&qword_27DEF6AA8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_238279550();
  if (!v2)
  {
    v9 = type metadata accessor for ElectricHVACLoadEvent(0);
    v14 = 1;
    sub_238278B70();
    sub_238229FA8(&qword_27DEF6B68, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_238279550();
    v13 = 2;
    type metadata accessor for ElectricHVACLoadEvent.Session(0);
    sub_238229FA8(&qword_27DEF6E18, type metadata accessor for ElectricHVACLoadEvent.Session, &protocol conformance descriptor for ElectricHVACLoadEvent.Session);
    sub_238279550();
    v12 = *(v3 + *(v9 + 28));
    v11[15] = 3;
    sub_23822B70C();
    sub_238279550();
    v11[14] = 4;
    sub_238279500();
    v11[13] = 5;
    sub_238279540();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_23822B6B8()
{
  result = qword_27DEF6E10;
  if (!qword_27DEF6E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6E10);
  }

  return result;
}

unint64_t sub_23822B70C()
{
  result = qword_27DEF6E20;
  if (!qword_27DEF6E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DEF6E20);
  }

  return result;
}

uint64_t ElectricHVACLoadEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v30 = type metadata accessor for ElectricHVACLoadEvent.Session(0);
  MEMORY[0x28223BE20](v30);
  v29 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_238278B70();
  v5 = *(v4 - 8);
  v33 = v4;
  v34 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238278BC0();
  v31 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v35 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DEF6E28, &qword_23827B9A8);
  v32 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v11 = &v28 - v10;
  v12 = type metadata accessor for ElectricHVACLoadEvent(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23822B6B8();
  v36 = v11;
  v15 = v38;
  sub_238279630();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v32;
  v16 = v33;
  v38 = v12;
  v18 = v34;
  v45 = 0;
  sub_238229FA8(&qword_27DEF6AC8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_2382794C0();
  v19 = *(v31 + 32);
  v20 = v35;
  v35 = v8;
  v19(v14, v20, v8);
  v44 = 1;
  sub_238229FA8(&qword_27DEF6B90, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_2382794C0();
  (*(v18 + 32))(&v14[v38[5]], v7, v16);
  v43 = 2;
  sub_238229FA8(&qword_27DEF6E30, type metadata accessor for ElectricHVACLoadEvent.Session, &protocol conformance descriptor for ElectricHVACLoadEvent.Session);
  v21 = v29;
  v30 = 0;
  sub_2382794C0();
  v22 = v38;
  sub_23822BE00(v21, &v14[v38[6]], type metadata accessor for ElectricHVACLoadEvent.Session);
  v42 = 3;
  sub_23822BE68();
  sub_2382794C0();
  *&v14[v22[7]] = v39;
  v41 = 4;
  v23 = sub_238279470();
  v24 = &v14[v22[8]];
  *v24 = v23;
  v24[1] = v25;
  v40 = 5;
  v26 = sub_2382794B0();
  (*(v17 + 8))(v36, v37);
  *&v14[v22[9]] = v26;
  sub_23822A9E8(v14, v28, type metadata accessor for ElectricHVACLoadEvent);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23822BEBC(v14, type metadata accessor for ElectricHVACLoadEvent);
}