uint64_t type metadata accessor for StaticThermostatClusterGroup.Alvarado(uint64_t a1)
{
  result = qword_1EE07BA18;
  if (!qword_1EE07BA18)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D19A3670()
{
  result = qword_1EC648028;
  if (!qword_1EC648028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648028);
  }

  return result;
}

unint64_t sub_1D19A36C4()
{
  result = qword_1EC648030;
  if (!qword_1EC648030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648030);
  }

  return result;
}

unint64_t sub_1D19A3718()
{
  result = qword_1EC648040;
  if (!qword_1EC648040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648040);
  }

  return result;
}

uint64_t sub_1D19A376C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19A37DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19A3840(uint64_t a1)
{
  v2 = type metadata accessor for StaticThermostatClusterGroup.Alvarado(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D19A390C(uint64_t a1)
{
  sub_1D17BDF80(319, qword_1EE07BA40, &type metadata for StaticThermostatClusterGroup.NotFollowingReason.EnergyNotFollowingReason);
  if (v1 <= 0x3F)
  {
    sub_1D17B77BC(319);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07B610, MEMORY[0x1E69E7360]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1D19A39F8()
{
  result = qword_1EC648050;
  if (!qword_1EC648050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648050);
  }

  return result;
}

unint64_t sub_1D19A3A50()
{
  result = qword_1EC648058;
  if (!qword_1EC648058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648058);
  }

  return result;
}

unint64_t sub_1D19A3AA8()
{
  result = qword_1EC648060;
  if (!qword_1EC648060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648060);
  }

  return result;
}

uint64_t sub_1D19A3AFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F64617261766C61 && a2 == 0xEF64656C62616E45;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC1180 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC11A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC11C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC11E0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001D1EC1200 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D1EC1230 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001D1EC1250 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC1270 == a2)
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

uint64_t sub_1D19A3DDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D19A3E24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v42 = a1;
  v7 = type metadata accessor for ClusterPath(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v39 - v11;
  v13 = a2[1];
  v40 = *a2;
  v41 = v13;
  v14 = a3[1];
  v16 = *(a3 + 8);
  v17 = *(a3 + 18);
  v45 = *a3;
  v15 = v45;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  *a4 = sub_1D19B1838();
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  *(a4 + 16) = sub_1D19B1844();
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  *(a4 + 8) = sub_1D19B1A48();
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  *(a4 + 24) = sub_1D19B1C58();
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  *(a4 + 32) = sub_1D19B1D58();
  *(a4 + 40) = v18 & 1;
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  v19 = sub_1D19B1D68();
  v21 = v20;
  v22 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v23 = (a4 + v22[11]);
  *v23 = v19;
  v23[1] = v21;
  v24 = sub_1D19C551C(v16 | (v17 << 16), v15, v14);
  v25 = *(v24 + 16);
  v26 = 32;
  while (v25)
  {
    v27 = *(v24 + v26);
    v26 += 4;
    --v25;
    if (v27 == 323551241)
    {

      *(a4 + v22[21]) = 1;
      v45 = v15;
      v46 = v14;
      v47 = v16;
      v48 = v17;
      v28 = sub_1D19B2748();
      v29 = (a4 + v22[12]);
      *v29 = v28;
      v29[1] = v30;
      goto LABEL_6;
    }
  }

  *(a4 + v22[21]) = 0;
  *(a4 + v22[12]) = xmmword_1D1E73C50;
LABEL_6:
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  sub_1D19B313C(a4 + v22[13]);
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  sub_1D19B3278(a4 + v22[9]);
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  v31 = sub_1D19B33D0();
  v32 = (a4 + v22[10]);
  *v32 = v31;
  v32[1] = HIBYTE(v31) & 1;
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  sub_1D19B34CC(&v43);
  *(a4 + v22[14]) = v43;
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  *(a4 + v22[15]) = sub_1D19B35DC() & 1;
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  *(a4 + v22[16]) = sub_1D19B35E8() & 1;
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  *(a4 + v22[17]) = sub_1D19B35F4() & 1;
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  sub_1D19B3600(&v43);
  *(a4 + v22[19]) = v43;
  v45 = v15;
  v46 = v14;
  v47 = v16;
  v48 = v17;
  sub_1D19B36F8(&v43);

  v33 = v43;
  v34 = a4 + v22[18];
  *(v34 + 4) = v44;
  *v34 = v33;
  v35 = v42;
  sub_1D19AD3D8(v42, v12, type metadata accessor for ClusterPath);
  sub_1D19AD3D8(v12, v10, type metadata accessor for ClusterPath);
  v36 = sub_1D192B170(65532, v10, v40, v41);

  sub_1D19ACFA0(v10, type metadata accessor for ClusterPath);
  sub_1D19ACFA0(v12, type metadata accessor for ClusterPath);
  if ((v36 & 0x100000000) != 0)
  {
    LOBYTE(v37) = 0;
  }

  else if ((v36 & 1) == 0 || (v36 & 0x22) == 0x22)
  {
    v37 = ((~v36 & 0x21) != 0) & (v36 >> 1);
  }

  else
  {
    LOBYTE(v37) = 2;
  }

  result = sub_1D19ACFA0(v35, type metadata accessor for ClusterPath);
  *(a4 + v22[20]) = v37;
  return result;
}

uint64_t sub_1D19A4218@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1D19B13C4();
  v20 = v6 & 1;
  v7 = sub_1D19B13D4();
  v19 = v8 & 1;
  v9 = sub_1D19B13E4();
  v18 = v10 & 1;
  v11 = sub_1D19B13F4();
  v17 = v12 & 1;
  v13 = sub_1D19B1404();
  v15 = v14;

  *a4 = v13;
  *(a4 + 8) = v15 & 1;
  *(a4 + 16) = v5;
  *(a4 + 24) = v20;
  *(a4 + 32) = v7;
  *(a4 + 40) = v19;
  *(a4 + 48) = v9;
  *(a4 + 56) = v18;
  *(a4 + 64) = v11;
  *(a4 + 72) = v17;
  return result;
}

uint64_t sub_1D19A4350@<X0>(uint64_t a4@<X8>)
{
  v5 = sub_1D19B1284();
  v20 = v6 & 1;
  v7 = sub_1D19B1294();
  v19 = v8 & 1;
  v9 = sub_1D19B1394();
  v18 = v10 & 1;
  v11 = sub_1D19B13A4();
  v17 = v12 & 1;
  v13 = sub_1D19B13B4();
  v15 = v14;

  *a4 = v13;
  *(a4 + 8) = v15 & 1;
  *(a4 + 16) = v5;
  *(a4 + 24) = v20;
  *(a4 + 32) = v7;
  *(a4 + 40) = v19;
  *(a4 + 48) = v9;
  *(a4 + 56) = v18;
  *(a4 + 64) = v11;
  *(a4 + 72) = v17;
  return result;
}

uint64_t StaticThermostatClusterGroup.ThermostatSetpointType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!result)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

uint64_t StaticThermostatClusterGroup.OperationSequence.label(for:)(unint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = *a1;
  v6 = a1[1];
  if (*v1)
  {
    if (*v1 == 1)
    {
      static String.hfLocalized(_:)(0xD000000000000019, 0x80000001D1EC12B0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v7 = swift_allocObject();
      *(v7 + 16) = xmmword_1D1E739C0;
      sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
      sub_1D1E66ABC();
      sub_1D1E666FC();
      v8 = sub_1D1E6838C();
      v9 = objc_opt_self();
      v10 = [v9 fahrenheit];
      v11 = sub_1D1E684FC();

      if (v11)
      {
        v12 = 0.555555556;
      }

      else
      {
        v28 = [v9 celsius];
        sub_1D1E684FC();

        v12 = 0.5;
        v8 = v28;
      }

      v51 = 0;
      v29 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v51, v12 * round(v5 / 100.0 / v12));
      v31 = v30;
      *(v7 + 56) = MEMORY[0x1E69E6158];
      *(v7 + 64) = sub_1D1757D20();
      *(v7 + 32) = v29;
      *(v7 + 40) = v31;
    }

    else
    {
      static String.hfLocalized(_:)(0xD000000000000019, 0x80000001D1EC1290);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1D1E739C0;
      v22 = v6 / 100.0;
      sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
      sub_1D1E66ABC();
      sub_1D1E666FC();
      v23 = sub_1D1E6838C();
      v24 = objc_opt_self();
      v25 = [v24 fahrenheit];
      v26 = sub_1D1E684FC();

      if (v26)
      {
        v27 = 0.555555556;
      }

      else
      {
        v42 = [v24 celsius];
        sub_1D1E684FC();

        v27 = 0.5;
        v23 = v42;
      }

      v52 = 0;
      v43 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v52, v27 * round(v22 / v27));
      v45 = v44;
      *(v21 + 56) = MEMORY[0x1E69E6158];
      *(v21 + 64) = sub_1D1757D20();
      *(v21 + 32) = v43;
      *(v21 + 40) = v45;
    }
  }

  else
  {
    v48 = static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EC12D0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1D1E73A90;
    v14 = v6 / 100.0;
    sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
    sub_1D1E66ABC();
    sub_1D1E666FC();
    v15 = sub_1D1E6838C();
    v16 = objc_opt_self();
    v17 = [v16 fahrenheit];
    v18 = sub_1D1E684FC();

    v19 = 0.555555556;
    if (v18)
    {
      v20 = 0.555555556;
    }

    else
    {
      v32 = [v16 celsius];
      sub_1D1E684FC();

      v20 = 0.5;
      v15 = v32;
    }

    v50 = 0;
    v33 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v50, v20 * round(v14 / v20));
    v35 = v34;
    *(v13 + 56) = MEMORY[0x1E69E6158];
    v36 = sub_1D1757D20();
    *(v13 + 64) = v36;
    *(v13 + 32) = v33;
    *(v13 + 40) = v35;
    sub_1D1E66ABC();
    sub_1D1E666FC();
    v37 = sub_1D1E6838C();
    v38 = [v16 fahrenheit];
    LOBYTE(v33) = sub_1D1E684FC();

    if ((v33 & 1) == 0)
    {
      v39 = [v16 celsius];
      sub_1D1E684FC();

      v19 = 0.5;
      v37 = v39;
    }

    v49 = 0;
    v40 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v49, v19 * round(v5 / 100.0 / v19));
    *(v13 + 96) = MEMORY[0x1E69E6158];
    *(v13 + 104) = v36;
    *(v13 + 72) = v40;
    *(v13 + 80) = v41;
  }

  v46 = sub_1D1E6783C();

  return v46;
}

unint64_t StaticThermostatClusterGroup.OperationSequence.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1D19A4BA4()
{
  v1 = 0x53676E6974616568;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_1D19A4C50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19AE470(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19A4C78(uint64_t a1)
{
  v2 = sub_1D19AC96C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19A4CB4(uint64_t a1)
{
  v2 = sub_1D19AC96C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D19A4DE8(unint64_t result, char a2)
{
  if (a2)
  {
    return 0;
  }

  v3 = *(v2 + 48);
  v4 = *(v2 + 56);
  v5 = *(v2 + 64);
  v6 = *(v2 + 72);
  if ((*(v2 + 40) & 1) == 0 && (*(v2 + 24) & 1) == 0)
  {
    v3 = *(v2 + 16);
    v5 = *(v2 + 32);
    if (v5 >= v3)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  if ((v6 | v4))
  {
    return 0;
  }

  if (v5 < v3)
  {
    __break(1u);
    return result;
  }

LABEL_10:
  v7 = v5 >= result;
  return v3 <= result && v7;
}

unint64_t sub_1D19A4E58()
{
  v1 = 0x53676E696C6F6F63;
  v2 = 0xD000000000000017;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

uint64_t sub_1D19A4F04@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19AE634(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19A4F2C(uint64_t a1)
{
  v2 = sub_1D19AC9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19A4F68(uint64_t a1)
{
  v2 = sub_1D19AC9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D19A4FE8(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v23 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - v9;
  v11 = *v5;
  v21 = v5[2];
  v22 = v11;
  v20 = *(v5 + 24);
  v19 = v5[4];
  v18 = *(v5 + 40);
  v17 = v5[6];
  v16 = *(v5 + 56);
  v15 = v5[8];
  v14[3] = *(v5 + 72);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v23();
  sub_1D1E6930C();
  v29 = 0;
  v12 = v24;
  sub_1D1E68EBC();
  if (v12)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v28 = 1;
  sub_1D1E68EBC();
  v27 = 2;
  sub_1D1E68EBC();
  v26 = 3;
  sub_1D1E68EBC();
  v25 = 4;
  sub_1D1E68EBC();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D19A5228()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = v0[4];
  v4 = *(v0 + 40);
  v5 = v0[6];
  v6 = *(v0 + 56);
  v7 = v0[8];
  v8 = *(v0 + 72);
  if (*(v0 + 8) == 1)
  {
    sub_1D1E6922C();
    if (!v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v10 = *v0;
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v10);
    if (!v2)
    {
LABEL_3:
      sub_1D1E6922C();
      MEMORY[0x1D3892890](v1);
      if (!v4)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_1D1E6922C();
  if (!v4)
  {
LABEL_4:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v3);
    if (!v6)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1D1E6922C();
    if (!v8)
    {
      goto LABEL_6;
    }

    return sub_1D1E6922C();
  }

LABEL_9:
  sub_1D1E6922C();
  if (v6)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v5);
  if (!v8)
  {
LABEL_6:
    sub_1D1E6922C();
    return MEMORY[0x1D3892890](v7);
  }

  return sub_1D1E6922C();
}

uint64_t sub_1D19A533C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = v0[4];
  v6 = *(v0 + 40);
  v7 = v0[6];
  v8 = *(v0 + 56);
  v11 = v0[8];
  v9 = *(v0 + 72);
  sub_1D1E6920C();
  if (v2 == 1)
  {
    sub_1D1E6922C();
    if (!v4)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v1);
    if (!v4)
    {
LABEL_3:
      sub_1D1E6922C();
      MEMORY[0x1D3892890](v3);
      if (!v6)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_1D1E6922C();
  if (!v6)
  {
LABEL_4:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v5);
    if (!v8)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1D1E6922C();
    if (!v9)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_1D1E6922C();
    return sub_1D1E6926C();
  }

LABEL_9:
  sub_1D1E6922C();
  if (v8)
  {
    goto LABEL_10;
  }

LABEL_5:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v7);
  if (v9)
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v11);
  return sub_1D1E6926C();
}

uint64_t sub_1D19A54E0@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v35 = a6;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v9 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v11 = &v31 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1D1E692FC();
  if (!v6)
  {
    v12 = v9;
    v46 = 0;
    v14 = v35;
    v13 = v36;
    v15 = sub_1D1E68D1C();
    v41 = v16 & 1;
    v45 = 1;
    v17 = sub_1D1E68D1C();
    v40 = v18 & 1;
    v44 = 2;
    v34 = sub_1D1E68D1C();
    v39 = v19 & 1;
    v43 = 3;
    v33 = sub_1D1E68D1C();
    v38 = v21 & 1;
    v42 = 4;
    v22 = sub_1D1E68D1C();
    v24 = v23;
    v25 = *(v12 + 8);
    v32 = v22;
    v25(v11, v13);
    v37 = v24 & 1;
    v26 = v41;
    v27 = v40;
    v28 = v39;
    v29 = v38;
    *v14 = v15;
    *(v14 + 8) = v26;
    *(v14 + 16) = v17;
    *(v14 + 24) = v27;
    v30 = v33;
    *(v14 + 32) = v34;
    *(v14 + 40) = v28;
    *(v14 + 48) = v30;
    *(v14 + 56) = v29;
    *(v14 + 64) = v32;
    *(v14 + 72) = v24 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D19A5774(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  v5 = *(v1 + 24);
  v6 = v1[4];
  v7 = *(v1 + 40);
  v8 = v1[6];
  v9 = *(v1 + 56);
  v12 = v1[8];
  v10 = *(v1 + 72);
  sub_1D1E6920C();
  if (v3 == 1)
  {
    sub_1D1E6922C();
    if (!v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v2);
    if (!v5)
    {
LABEL_3:
      sub_1D1E6922C();
      MEMORY[0x1D3892890](v4);
      if (!v7)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  sub_1D1E6922C();
  if (!v7)
  {
LABEL_4:
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v6);
    if (!v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    sub_1D1E6922C();
    if (!v10)
    {
      goto LABEL_6;
    }

LABEL_11:
    sub_1D1E6922C();
    return sub_1D1E6926C();
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
  if (v10)
  {
    goto LABEL_11;
  }

LABEL_6:
  sub_1D1E6922C();
  MEMORY[0x1D3892890](v12);
  return sub_1D1E6926C();
}

double StaticThermostatClusterGroup.SetpointConfig.setpointDeadbandCelsius.getter()
{
  v1 = v0 + *(type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0) + 32);
  if ((*(v1 + 8) & 1) == 0)
  {
    return *v1 / 10.0;
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.SetpointConfig.setpointOffsetTemperature.getter()
{
  if (*(v0 + 8))
  {
    *&result = 0.0;
  }

  else
  {
    v2 = *v0;
    if ((*v0 & 0x8000000000000000) != 0 && (v3 = __OFSUB__(0, v2), v2 = -v2, v3))
    {
      __break(1u);
    }

    else
    {
      *&result = v2 / 100.0;
    }
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.SetpointConfig.setpointHoldDurationHrs.getter()
{
  if (*(v0 + 12))
  {
    return 0;
  }

  else
  {
    return *(v0 + 10) / 0x3Cu;
  }
}

unint64_t sub_1D19A5AC4()
{
  v1 = *v0;
  v2 = 0xD00000000000001BLL;
  if (v1 != 3)
  {
    v2 = 0xD000000000000010;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000014;
  }

  if (*v0 <= 1u)
  {
    return 0x746E696F70746573;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D19A5B70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19AE7F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19A5B98(uint64_t a1)
{
  v2 = sub_1D19ACA34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19A5BD4(uint64_t a1)
{
  v2 = sub_1D19ACA34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.SetpointConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648098, &qword_1D1E8A828);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19ACA34();
  sub_1D1E6930C();
  v10[15] = 0;
  sub_1D1E68E7C();
  if (!v2)
  {
    v10[14] = *(v3 + 9);
    v10[13] = 1;
    sub_1D197E594();
    sub_1D1E68E5C();
    v10[12] = 2;
    sub_1D1E68E9C();
    type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
    v10[9] = 3;
    sub_1D1E669FC();
    sub_1D19ACA88(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
    v10[8] = 4;
    sub_1D1E68E7C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticThermostatClusterGroup.SetpointConfig.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  if (*(v1 + 8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v9 = *v1;
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v9);
  }

  if (*(v1 + 9) != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*(v1 + 12) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v10 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  sub_1D1741C08(v1 + *(v10 + 28), v8, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D19ACA88(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  v11 = (v1 + *(v10 + 32));
  if (*(v11 + 8) == 1)
  {
    return sub_1D1E6922C();
  }

  v13 = *v11;
  sub_1D1E6922C();
  return MEMORY[0x1D3892890](v13);
}

uint64_t StaticThermostatClusterGroup.SetpointConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-v5];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480A8, &qword_1D1E8A830);
  v7 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v21[-v8];
  v10 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D19ACA34();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v31 = 0;
  *v12 = sub_1D1E68CDC();
  v12[8] = v14 & 1;
  v29 = 1;
  sub_1D197E5E8();
  sub_1D1E68CBC();
  v12[9] = v30;
  v28 = 2;
  v15 = sub_1D1E68CFC();
  *(v12 + 5) = v15;
  v12[12] = BYTE2(v15) & 1;
  sub_1D1E669FC();
  v27 = 3;
  sub_1D19ACA88(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68CBC();
  sub_1D1741A90(v6, &v12[*(v10 + 28)], &qword_1EC642570, &qword_1D1E6C6A0);
  v26 = 4;
  v16 = sub_1D1E68CDC();
  v22 = v17;
  v18 = v16;
  (*(v7 + 8))(v9, v24);
  v19 = &v12[*(v10 + 32)];
  *v19 = v18;
  v19[8] = v22 & 1;
  sub_1D19AD3D8(v12, v23, type metadata accessor for StaticThermostatClusterGroup.SetpointConfig);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1D19ACFA0(v12, type metadata accessor for StaticThermostatClusterGroup.SetpointConfig);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.activePresetHandle.getter()
{
  v1 = v0 + *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 44);
  v2 = *v1;
  sub_1D1771B38(*v1, *(v1 + 8));
  return v2;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.currentSuggestedPresetHandle.getter()
{
  v1 = v0 + *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 48);
  v2 = *v1;
  sub_1D1771B38(*v1, *(v1 + 8));
  return v2;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.suggestedPresetFollowingReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  *a1 = *(v1 + *(result + 56));
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.holdPolicy.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  v4 = (v1 + *(result + 72));
  v5 = *v4;
  *(a1 + 4) = *(v4 + 4);
  *a1 = v5;
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.presetChangeReason.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  *a1 = *(v1 + *(result + 76));
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.operationSequence.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  *a1 = *(v1 + *(result + 80));
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.supportsAdaptiveTemperature.setter(char a1)
{
  result = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

double StaticThermostatClusterGroup.PresetsConfig.activePreset.getter@<D0>(uint64_t a1@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = (v1 + *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 44));
  v4 = v3[1];
  if (v4 >> 60 == 15 || (v5 = *(v1 + 16)) == 0)
  {
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    return result;
  }

  v41 = a1;
  v6 = *v3;
  v7 = *(v5 + 16);
  sub_1D1741854(*v3, v4);
  if (!v7)
  {
LABEL_70:
    sub_1D1716AA4(v6, v4);
    result = 0.0;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0u;
    *v41 = 0u;
    *(v41 + 48) = 0;
    *(v41 + 56) = 1;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 32);
  if (v6)
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
  v13 = __OFSUB__(HIDWORD(v6), v6);
  v42 = v13;
  v43 = v7;
  v40 = v5;
  while (1)
  {
    if (v8 >= *(v5 + 16))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
    }

    v15 = v9[2];
    v14 = v9[3];
    v16 = *v9;
    v48 = v9[1];
    v49 = v15;
    v50 = v14;
    v47 = v16;
    v18 = *(&v48 + 1);
    v17 = v15;
    if (v15 >> 60 != 15)
    {
      break;
    }

    sub_1D1771B38(v6, v4);
    sub_1D1771B38(v18, v17);
    sub_1D1716AA4(v18, v17);
    sub_1D1716AA4(v6, v4);
LABEL_15:
    ++v8;
    v9 += 4;
    if (v7 == v8)
    {
      goto LABEL_70;
    }
  }

  v19 = v49 >> 62;
  if (v49 >> 62 == 3)
  {
    if (*(&v48 + 1))
    {
      v20 = 0;
    }

    else
    {
      v20 = v49 == 0xC000000000000000;
    }

    v22 = !v20 || v12 < 3;
    if (((v22 | v44) & 1) == 0)
    {
      sub_1D1771B38(0, 0xC000000000000000);
      sub_1D1771B38(0, 0xC000000000000000);
      sub_1D17806DC(&v47, v46);
      sub_1D1716AA4(0, 0xC000000000000000);
      v18 = 0;
      goto LABEL_72;
    }

LABEL_40:
    v23 = 0;
    if (v12 > 1)
    {
      goto LABEL_41;
    }

LABEL_37:
    v27 = BYTE6(v4);
    if (v12)
    {
      v27 = HIDWORD(v6) - v6;
      if (v42)
      {
        goto LABEL_75;
      }
    }

LABEL_43:
    if (v23 == v27)
    {
      if (v23 < 1)
      {
        goto LABEL_71;
      }

      if (v19 > 1)
      {
        if (v19 != 2)
        {
          memset(v45, 0, 14);
          sub_1D1771B38(v6, v4);
          sub_1D1771B38(v18, v17);
          sub_1D1771B38(v6, v4);
          sub_1D1771B38(v18, v17);
          sub_1D17806DC(&v47, v46);
LABEL_66:
          sub_1D199EDB4(v45, v6, v4, v46);
          sub_1D1716AA4(v6, v4);
          sub_1D1716AA4(v18, v17);
          sub_1D1716AA4(v6, v4);
          v36 = v46[0];
          sub_1D1716AA4(v18, v17);
          if (v36)
          {
            goto LABEL_73;
          }

          goto LABEL_67;
        }

        v31 = *(*(&v48 + 1) + 16);
        v30 = *(*(&v48 + 1) + 24);
        sub_1D1771B38(v6, v4);
        sub_1D1771B38(v18, v17);
        sub_1D1771B38(v6, v4);
        sub_1D1771B38(v18, v17);
        sub_1D17806DC(&v47, v46);
        v32 = sub_1D1E6616C();
        if (v32)
        {
          v33 = sub_1D1E6619C();
          if (__OFSUB__(v31, v33))
          {
            goto LABEL_81;
          }

          v32 += v31 - v33;
        }

        if (__OFSUB__(v30, v31))
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (!v19)
        {
          v45[0] = *(&v48 + 1);
          LODWORD(v45[1]) = v49;
          WORD2(v45[1]) = WORD2(v49);
          sub_1D1771B38(v6, v4);
          sub_1D1771B38(v18, v17);
          sub_1D1771B38(v6, v4);
          sub_1D1771B38(v18, v17);
          sub_1D17806DC(&v47, v46);
          goto LABEL_66;
        }

        if (*(&v48 + 1) >> 32 < SDWORD2(v48))
        {
          goto LABEL_79;
        }

        sub_1D1771B38(v6, v4);
        sub_1D1771B38(v18, v17);
        sub_1D1771B38(v6, v4);
        sub_1D1771B38(v18, v17);
        sub_1D17806DC(&v47, v46);
        v32 = sub_1D1E6616C();
        if (v32)
        {
          v34 = sub_1D1E6619C();
          if (__OFSUB__(v18, v34))
          {
            goto LABEL_82;
          }

          v32 += v18 - v34;
        }
      }

      sub_1D1E6618C();
      sub_1D199EDB4(v32, v6, v4, v46);
      sub_1D1716AA4(v6, v4);
      sub_1D1716AA4(v18, v17);
      sub_1D1716AA4(v6, v4);
      v35 = v46[0];
      sub_1D1716AA4(v18, v17);
      v5 = v40;
      if (v35)
      {
        goto LABEL_73;
      }

LABEL_67:
      v12 = v4 >> 62;
      v7 = v43;
      goto LABEL_68;
    }

LABEL_49:
    sub_1D1771B38(v6, v4);
    sub_1D1771B38(v18, v17);
    sub_1D17806DC(&v47, v46);
    sub_1D1716AA4(v6, v4);
    sub_1D1716AA4(v18, v17);
LABEL_68:
    sub_1D1780738(&v47);
    goto LABEL_15;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_40;
    }

    v25 = *(*(&v48 + 1) + 16);
    v24 = *(*(&v48 + 1) + 24);
    v26 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (v26)
    {
      goto LABEL_78;
    }

    if (v12 <= 1)
    {
      goto LABEL_37;
    }
  }

  else if (v19)
  {
    LODWORD(v23) = HIDWORD(v48) - DWORD2(v48);
    if (__OFSUB__(HIDWORD(v48), DWORD2(v48)))
    {
      goto LABEL_77;
    }

    v23 = v23;
    if (v12 <= 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v23 = BYTE6(v49);
    if (v12 <= 1)
    {
      goto LABEL_37;
    }
  }

LABEL_41:
  if (v12 == 2)
  {
    v29 = *(v6 + 16);
    v28 = *(v6 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_76;
    }

    goto LABEL_43;
  }

  if (v23)
  {
    goto LABEL_49;
  }

LABEL_71:
  sub_1D1771B38(v6, v4);
  sub_1D1771B38(v18, v17);
  sub_1D17806DC(&v47, v46);
  sub_1D1716AA4(v6, v4);
LABEL_72:
  sub_1D1716AA4(v18, v17);
LABEL_73:
  sub_1D1716AA4(v6, v4);
  v38 = v48;
  *v41 = v47;
  *(v41 + 16) = v38;
  result = *&v49;
  v39 = v50;
  *(v41 + 32) = v49;
  *(v41 + 48) = v39;
  return result;
}

double StaticThermostatClusterGroup.PresetsConfig.currentSuggestedPreset.getter@<D0>(uint64_t a1@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  v3 = (v1 + *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0) + 48));
  v4 = v3[1];
  if (v4 >> 60 == 15 || (v5 = *(v1 + 16)) == 0)
  {
    result = 0.0;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
    *a1 = 0u;
    *(a1 + 48) = 0;
    *(a1 + 56) = 1;
    return result;
  }

  v41 = a1;
  v6 = *v3;
  v7 = *(v5 + 16);
  sub_1D1741854(*v3, v4);
  if (!v7)
  {
LABEL_70:
    sub_1D1716AA4(v6, v4);
    result = 0.0;
    *(v41 + 16) = 0u;
    *(v41 + 32) = 0u;
    *v41 = 0u;
    *(v41 + 48) = 0;
    *(v41 + 56) = 1;
    return result;
  }

  v8 = 0;
  v9 = (v5 + 32);
  if (v6)
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
  v13 = __OFSUB__(HIDWORD(v6), v6);
  v42 = v13;
  v43 = v7;
  v40 = v5;
  while (1)
  {
    if (v8 >= *(v5 + 16))
    {
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
    }

    v15 = v9[2];
    v14 = v9[3];
    v16 = *v9;
    v48 = v9[1];
    v49 = v15;
    v50 = v14;
    v47 = v16;
    v18 = *(&v48 + 1);
    v17 = v15;
    if (v15 >> 60 != 15)
    {
      break;
    }

    sub_1D1771B38(v6, v4);
    sub_1D1771B38(v18, v17);
    sub_1D1716AA4(v18, v17);
    sub_1D1716AA4(v6, v4);
LABEL_15:
    ++v8;
    v9 += 4;
    if (v7 == v8)
    {
      goto LABEL_70;
    }
  }

  v19 = v49 >> 62;
  if (v49 >> 62 == 3)
  {
    if (*(&v48 + 1))
    {
      v20 = 0;
    }

    else
    {
      v20 = v49 == 0xC000000000000000;
    }

    v22 = !v20 || v12 < 3;
    if (((v22 | v44) & 1) == 0)
    {
      sub_1D1771B38(0, 0xC000000000000000);
      sub_1D1771B38(0, 0xC000000000000000);
      sub_1D17806DC(&v47, v46);
      sub_1D1716AA4(0, 0xC000000000000000);
      v18 = 0;
      goto LABEL_72;
    }

LABEL_40:
    v23 = 0;
    if (v12 > 1)
    {
      goto LABEL_41;
    }

LABEL_37:
    v27 = BYTE6(v4);
    if (v12)
    {
      v27 = HIDWORD(v6) - v6;
      if (v42)
      {
        goto LABEL_75;
      }
    }

LABEL_43:
    if (v23 == v27)
    {
      if (v23 < 1)
      {
        goto LABEL_71;
      }

      if (v19 > 1)
      {
        if (v19 != 2)
        {
          memset(v45, 0, 14);
          sub_1D1771B38(v6, v4);
          sub_1D1771B38(v18, v17);
          sub_1D1771B38(v6, v4);
          sub_1D1771B38(v18, v17);
          sub_1D17806DC(&v47, v46);
LABEL_66:
          sub_1D199EDB4(v45, v6, v4, v46);
          sub_1D1716AA4(v6, v4);
          sub_1D1716AA4(v18, v17);
          sub_1D1716AA4(v6, v4);
          v36 = v46[0];
          sub_1D1716AA4(v18, v17);
          if (v36)
          {
            goto LABEL_73;
          }

          goto LABEL_67;
        }

        v31 = *(*(&v48 + 1) + 16);
        v30 = *(*(&v48 + 1) + 24);
        sub_1D1771B38(v6, v4);
        sub_1D1771B38(v18, v17);
        sub_1D1771B38(v6, v4);
        sub_1D1771B38(v18, v17);
        sub_1D17806DC(&v47, v46);
        v32 = sub_1D1E6616C();
        if (v32)
        {
          v33 = sub_1D1E6619C();
          if (__OFSUB__(v31, v33))
          {
            goto LABEL_81;
          }

          v32 += v31 - v33;
        }

        if (__OFSUB__(v30, v31))
        {
          goto LABEL_80;
        }
      }

      else
      {
        if (!v19)
        {
          v45[0] = *(&v48 + 1);
          LODWORD(v45[1]) = v49;
          WORD2(v45[1]) = WORD2(v49);
          sub_1D1771B38(v6, v4);
          sub_1D1771B38(v18, v17);
          sub_1D1771B38(v6, v4);
          sub_1D1771B38(v18, v17);
          sub_1D17806DC(&v47, v46);
          goto LABEL_66;
        }

        if (*(&v48 + 1) >> 32 < SDWORD2(v48))
        {
          goto LABEL_79;
        }

        sub_1D1771B38(v6, v4);
        sub_1D1771B38(v18, v17);
        sub_1D1771B38(v6, v4);
        sub_1D1771B38(v18, v17);
        sub_1D17806DC(&v47, v46);
        v32 = sub_1D1E6616C();
        if (v32)
        {
          v34 = sub_1D1E6619C();
          if (__OFSUB__(v18, v34))
          {
            goto LABEL_82;
          }

          v32 += v18 - v34;
        }
      }

      sub_1D1E6618C();
      sub_1D199EDB4(v32, v6, v4, v46);
      sub_1D1716AA4(v6, v4);
      sub_1D1716AA4(v18, v17);
      sub_1D1716AA4(v6, v4);
      v35 = v46[0];
      sub_1D1716AA4(v18, v17);
      v5 = v40;
      if (v35)
      {
        goto LABEL_73;
      }

LABEL_67:
      v12 = v4 >> 62;
      v7 = v43;
      goto LABEL_68;
    }

LABEL_49:
    sub_1D1771B38(v6, v4);
    sub_1D1771B38(v18, v17);
    sub_1D17806DC(&v47, v46);
    sub_1D1716AA4(v6, v4);
    sub_1D1716AA4(v18, v17);
LABEL_68:
    sub_1D1780738(&v47);
    goto LABEL_15;
  }

  if (v19 > 1)
  {
    if (v19 != 2)
    {
      goto LABEL_40;
    }

    v25 = *(*(&v48 + 1) + 16);
    v24 = *(*(&v48 + 1) + 24);
    v26 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (v26)
    {
      goto LABEL_78;
    }

    if (v12 <= 1)
    {
      goto LABEL_37;
    }
  }

  else if (v19)
  {
    LODWORD(v23) = HIDWORD(v48) - DWORD2(v48);
    if (__OFSUB__(HIDWORD(v48), DWORD2(v48)))
    {
      goto LABEL_77;
    }

    v23 = v23;
    if (v12 <= 1)
    {
      goto LABEL_37;
    }
  }

  else
  {
    v23 = BYTE6(v49);
    if (v12 <= 1)
    {
      goto LABEL_37;
    }
  }

LABEL_41:
  if (v12 == 2)
  {
    v29 = *(v6 + 16);
    v28 = *(v6 + 24);
    v26 = __OFSUB__(v28, v29);
    v27 = v28 - v29;
    if (v26)
    {
      goto LABEL_76;
    }

    goto LABEL_43;
  }

  if (v23)
  {
    goto LABEL_49;
  }

LABEL_71:
  sub_1D1771B38(v6, v4);
  sub_1D1771B38(v18, v17);
  sub_1D17806DC(&v47, v46);
  sub_1D1716AA4(v6, v4);
LABEL_72:
  sub_1D1716AA4(v18, v17);
LABEL_73:
  sub_1D1716AA4(v6, v4);
  v38 = v48;
  *v41 = v47;
  *(v41 + 16) = v38;
  result = *&v49;
  v39 = v50;
  *(v41 + 32) = v49;
  *(v41 + 48) = v39;
  return result;
}

unint64_t sub_1D19A76DC(char a1)
{
  result = 0x7954746573657270;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0x50746E6572727563;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x664F7265626D756ELL;
      break;
    case 5:
      result = 0xD000000000000018;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0xD00000000000001CLL;
      break;
    case 9:
      result = 0xD000000000000020;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      v3 = 13;
      goto LABEL_17;
    case 14:
      result = 0x696C6F50646C6F68;
      break;
    case 15:
      result = 0xD000000000000012;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      v3 = 9;
LABEL_17:
      result = v3 | 0xD000000000000012;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1D19A7938@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D19AE9B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D19A7960(uint64_t a1)
{
  v2 = sub_1D19ACAF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19A799C(uint64_t a1)
{
  v2 = sub_1D19ACAF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480B8, &qword_1D1E8A840);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19ACAF0();
  sub_1D1E6930C();
  LOBYTE(v18) = 0;
  sub_1D1E68E1C();
  if (!v2)
  {
    v18 = v3[1];
    v20 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480C8, &qword_1D1E8A848);
    sub_1D19ACB44();
    sub_1D1E68E5C();
    v18 = v3[2];
    v20 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480E0, &qword_1D1E8A850);
    sub_1D19ACC1C();
    sub_1D1E68E5C();
    v18 = v3[3];
    v20 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480F8, &qword_1D1E8A858);
    sub_1D19ACCF4();
    sub_1D1E68E5C();
    LOBYTE(v18) = 4;
    sub_1D1E68EBC();
    v9 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
    LOBYTE(v18) = 5;
    type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
    sub_1D19ACA88(&qword_1EC648110, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset, &protocol conformance descriptor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
    sub_1D1E68E5C();
    LOBYTE(v18) = 6;
    sub_1D1E68E8C();
    v10 = (v3 + v9[11]);
    v11 = v10[1];
    v18 = *v10;
    v19 = v11;
    v20 = 7;
    sub_1D1771B38(v18, v11);
    sub_1D18CAD0C();
    sub_1D1E68E5C();
    sub_1D1716AA4(v18, v19);
    v12 = (v3 + v9[12]);
    v13 = v12[1];
    v18 = *v12;
    v19 = v13;
    v20 = 8;
    sub_1D1771B38(v18, v13);
    sub_1D1E68E5C();
    sub_1D1716AA4(v18, v19);
    LOBYTE(v18) = 9;
    sub_1D1E669FC();
    sub_1D19ACA88(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
    LOBYTE(v18) = *(v3 + v9[14]);
    v20 = 10;
    sub_1D19ACDEC();
    sub_1D1E68E5C();
    LOBYTE(v18) = 11;
    sub_1D1E68EDC();
    LOBYTE(v18) = 12;
    sub_1D1E68EDC();
    LOBYTE(v18) = 13;
    sub_1D1E68EDC();
    v15 = v3 + v9[18];
    v16 = *v15;
    BYTE4(v18) = v15[4];
    LODWORD(v18) = v16;
    v20 = 14;
    sub_1D19ACE40();
    sub_1D1E68E5C();
    LOBYTE(v18) = *(v3 + v9[19]);
    v20 = 15;
    sub_1D19ACE94();
    sub_1D1E68E5C();
    LOBYTE(v18) = *(v3 + v9[20]);
    v20 = 16;
    sub_1D19ACEE8();
    sub_1D1E68F1C();
    LOBYTE(v18) = 17;
    sub_1D1E68EDC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E669FC();
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v32 - v10;
  v12 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480B0, &qword_1D1E8A838);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v19 = *v2;
  v34 = v9;
  if (v19 != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  v20 = *(v2 + 1);
  if (v20)
  {
    sub_1D1E6922C();
    sub_1D1770448(a1, v20);
    v21 = *(v2 + 2);
    if (v21)
    {
      goto LABEL_5;
    }

LABEL_8:
    sub_1D1E6922C();
    v22 = *(v2 + 3);
    if (v22)
    {
      goto LABEL_6;
    }

    goto LABEL_9;
  }

  sub_1D1E6922C();
  v21 = *(v2 + 2);
  if (!v21)
  {
    goto LABEL_8;
  }

LABEL_5:
  sub_1D1E6922C();
  sub_1D17702F8(a1, v21);
  v22 = *(v2 + 3);
  if (v22)
  {
LABEL_6:
    sub_1D1E6922C();
    sub_1D1770208(a1, v22);
    goto LABEL_10;
  }

LABEL_9:
  sub_1D1E6922C();
LABEL_10:
  if (v2[40] == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v23 = *(v2 + 4);
    sub_1D1E6922C();
    MEMORY[0x1D3892890](v23);
  }

  v24 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  sub_1D1741C08(&v2[v24[9]], v18, &qword_1EC6480B0, &qword_1D1E8A838);
  if ((*(v13 + 48))(v18, 1, v12) == 1)
  {
    sub_1D1E6922C();
    v25 = v35;
  }

  else
  {
    sub_1D19ACF3C(v18, v15);
    sub_1D1E6922C();
    if (*(v15 + 1) >> 60 == 15)
    {
      sub_1D1E6922C();
    }

    else
    {
      sub_1D1E6922C();
      sub_1D1E668CC();
    }

    sub_1D1741C08(&v15[*(v12 + 20)], v11, &qword_1EC642570, &qword_1D1E6C6A0);
    v25 = v35;
    if ((*(v35 + 48))(v11, 1, v4) == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v26 = v33;
      (*(v25 + 32))(v33, v11, v4);
      sub_1D1E6922C();
      sub_1D19ACA88(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1D1E676EC();
      (*(v25 + 8))(v26, v4);
    }

    sub_1D19ACFA0(v15, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
  }

  if ((v2[v24[10] + 1] & 1) == 0)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (*&v2[v24[11] + 8] >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  if (*&v2[v24[12] + 8] >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  v27 = v34;
  sub_1D1741C08(&v2[v24[13]], v34, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v25 + 48))(v27, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v28 = v33;
    (*(v25 + 32))(v33, v27, v4);
    sub_1D1E6922C();
    sub_1D19ACA88(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v25 + 8))(v28, v4);
  }

  if (v2[v24[14]] != 3)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  v29 = &v2[v24[18]];
  v30 = *v29 | (v29[4] << 32);
  if (*v29 == 2 || (sub_1D1E6922C(), sub_1D1E6922C(), (v30 & 0x100000000) != 0))
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  if (v2[v24[19]] != 6)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  MEMORY[0x1D3892850](v2[v24[20]]);
  return sub_1D1E6922C();
}

uint64_t sub_1D19A876C(uint64_t (*a1)(void *))
{
  sub_1D1E6920C();
  a1(v3);
  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480B0, &qword_1D1E8A838);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648138, &qword_1D1E8A860);
  v7 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v9 = &v26 - v8;
  v10 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v33 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D19ACAF0();
  v30 = v9;
  v14 = v32;
  sub_1D1E692FC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v32 = v7;
  v27 = v10;
  v28 = v12;
  LOBYTE(v34) = 0;
  v15 = sub_1D1E68C7C();
  v16 = v28;
  *v28 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480C8, &qword_1D1E8A848);
  v35 = 1;
  sub_1D19AD000();
  sub_1D1E68CBC();
  *(v16 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480E0, &qword_1D1E8A850);
  v35 = 2;
  sub_1D19AD0D8();
  sub_1D1E68CBC();
  *(v16 + 2) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480F8, &qword_1D1E8A858);
  v35 = 3;
  sub_1D19AD1B0();
  v26 = 0;
  sub_1D1E68CBC();
  *(v16 + 3) = v34;
  LOBYTE(v34) = 4;
  *(v16 + 4) = sub_1D1E68D1C();
  v16[40] = v17 & 1;
  type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  LOBYTE(v34) = 5;
  sub_1D19ACA88(&qword_1EC648170, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset, &protocol conformance descriptor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
  sub_1D1E68CBC();
  v18 = v27;
  sub_1D1741A90(0, &v16[v27[9]], &qword_1EC6480B0, &qword_1D1E8A838);
  LOBYTE(v34) = 6;
  v19 = sub_1D1E68CEC();
  v20 = &v16[v18[10]];
  *v20 = v19;
  v20[1] = HIBYTE(v19) & 1;
  v35 = 7;
  sub_1D18CB0FC();
  sub_1D1E68CBC();
  *&v16[v18[11]] = v34;
  v35 = 8;
  sub_1D1E68CBC();
  *&v28[v27[12]] = v34;
  sub_1D1E669FC();
  LOBYTE(v34) = 9;
  sub_1D19ACA88(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68CBC();
  sub_1D1741A90(v5, &v28[v27[13]], &qword_1EC642570, &qword_1D1E6C6A0);
  v35 = 10;
  sub_1D19AD288();
  sub_1D1E68CBC();
  v28[v27[14]] = v34;
  LOBYTE(v34) = 11;
  v28[v27[15]] = sub_1D1E68D3C() & 1;
  LOBYTE(v34) = 12;
  v28[v27[16]] = sub_1D1E68D3C() & 1;
  LOBYTE(v34) = 13;
  v28[v27[17]] = sub_1D1E68D3C() & 1;
  v35 = 14;
  sub_1D19AD2DC();
  sub_1D1E68CBC();
  v21 = v34;
  v22 = &v28[v27[18]];
  v22[4] = BYTE4(v34);
  *v22 = v21;
  v35 = 15;
  sub_1D19AD330();
  sub_1D1E68CBC();
  v28[v27[19]] = v34;
  v35 = 16;
  sub_1D19AD384();
  sub_1D1E68D7C();
  v28[v27[20]] = v34;
  LOBYTE(v34) = 17;
  v23 = sub_1D1E68D3C();
  (*(v32 + 8))(v30, v31);
  v24 = v28;
  v28[v27[21]] = v23 & 1;
  sub_1D19AD3D8(v24, v29, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig);
  __swift_destroy_boxed_opaque_existential_1(v33);
  return sub_1D19ACFA0(v24, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig);
}

uint64_t sub_1D19A9230(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_1D1E6920C();
  a3(v5);
  return sub_1D1E6926C();
}

uint64_t sub_1D19A9294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_1D1E6920C();
  a4(v6);
  return sub_1D1E6926C();
}

BOOL StaticThermostatClusterGroup.energyHoldActive.getter()
{
  v1 = (v0 + *(type metadata accessor for StaticThermostatClusterGroup(0) + 48));
  if (*v1 == 1 && (v2 = &v1[*(type metadata accessor for StaticThermostatClusterGroup.Alvarado(0) + 48)], (v2[8] & 1) == 0))
  {
    return *v2 > 0;
  }

  else
  {
    return 0;
  }
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.holdDuration.setter(uint64_t result)
{
  *(v1 + 2) = result;
  *(v1 + 4) = BYTE2(result) & 1;
  return result;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (!*(a1 + 16))
  {
    v6 = 0;
    goto LABEL_12;
  }

  v4 = sub_1D171DB60(128);
  if ((v5 & 1) != 0 && (sub_1D1741970(*(a1 + 56) + 32 * v4, v13), swift_dynamicCast()))
  {
    v6 = v12;
    if (!*(a1 + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v6 = 0;
    if (!*(a1 + 16))
    {
LABEL_12:

      v10 = 0;
      v11 = 1;
      goto LABEL_13;
    }
  }

  v7 = sub_1D171DB60(129);
  if ((v8 & 1) == 0)
  {
    goto LABEL_12;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v7, v13);

  result = swift_dynamicCast();
  v10 = v12;
  if (!result)
  {
    v10 = 0;
  }

  v11 = result ^ 1;
LABEL_13:
  *a2 = v6;
  *(a2 + 2) = v10;
  *(a2 + 4) = v11;
  return result;
}

BOOL static StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[4];
  if (a1[4])
  {
    return (a2[4] & 1) != 0;
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v3 = 1;
    }

    return (v3 & 1) == 0;
  }
}

uint64_t sub_1D19A954C()
{
  if (*v0)
  {
    return 0x61727544646C6F68;
  }

  else
  {
    return 0xD000000000000015;
  }
}

uint64_t sub_1D19A9594@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001D1EC09A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x61727544646C6F68 && a2 == 0xEC0000006E6F6974)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D1E6904C();

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

uint64_t sub_1D19A9680(uint64_t a1)
{
  v2 = sub_1D19AD440();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19A96BC(uint64_t a1)
{
  v2 = sub_1D19AD440();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648198, &qword_1D1E8A868);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  v9[6] = *(v1 + 2);
  v9[3] = *(v1 + 4);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19AD440();
  sub_1D1E6930C();
  v11 = 0;
  sub_1D1E68EDC();
  if (!v2)
  {
    v10 = 1;
    sub_1D1E68E9C();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.hash(into:)()
{
  v1 = *(v0 + 4);
  sub_1D1E6922C();
  if (v1 == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6923C();
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.hashValue.getter()
{
  v1 = *(v0 + 4);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (v1 != 1)
  {
    sub_1D1E6923C();
  }

  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6481A8, &unk_1D1E8A870);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19AD440();
  sub_1D1E692FC();
  if (!v2)
  {
    v14 = 0;
    v9 = sub_1D1E68D3C();
    v13 = 1;
    v11 = sub_1D1E68CFC();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 2) = v11;
    *(a2 + 4) = BYTE2(v11) & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D19A9B2C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a2[4];
  if (a1[4])
  {
    if (a2[4])
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 1) != *(a2 + 1))
    {
      v3 = 1;
    }

    if ((v3 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_1D19A9B7C()
{
  v1 = *(v0 + 4);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (v1 != 1)
  {
    sub_1D1E6923C();
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D19A9C00()
{
  v1 = *(v0 + 4);
  sub_1D1E6922C();
  if (v1 == 1)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6923C();
}

uint64_t sub_1D19A9C60(uint64_t a1)
{
  v2 = *(v1 + 4);
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  if (v2 != 1)
  {
    sub_1D1E6923C();
  }

  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.presetHandle.getter()
{
  v1 = *v0;
  sub_1D1771B38(*v0, *(v0 + 8));
  return v1;
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.init(from:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16) && (v4 = sub_1D171DB60(96), (v5 & 1) != 0) && (sub_1D1741970(*(a1 + 56) + 32 * v4, v18), sub_1D1741B10(0, &qword_1EC647ED0, 0x1E695DEF0), (swift_dynamicCast() & 1) != 0))
  {
    v6 = v17;
    v7 = sub_1D1E668BC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0xF000000000000000;
  }

  *a2 = v7;
  a2[1] = v9;
  if (*(a1 + 16) && (v10 = sub_1D171DB60(97), (v11 & 1) != 0))
  {
    sub_1D1741970(*(a1 + 56) + 32 * v10, v18);

    if (swift_dynamicCast())
    {
      v12 = *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0) + 20);
      sub_1D1E6698C();
      v13 = sub_1D1E669FC();
      return (*(*(v13 - 8) + 56))(a2 + v12, 0, 1, v13);
    }
  }

  else
  {
  }

  v15 = *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0) + 20);
  v16 = sub_1D1E669FC();
  return (*(*(v16 - 8) + 56))(a2 + v15, 1, 1, v16);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - v3;
  v5 = *v0;
  v6 = v1[1];
  if (v6 >> 60 == 15)
  {
    v14 = v5;
    v15 = v6;
    sub_1D1771B38(v5, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643838, &qword_1D1E8C020);
    v7 = sub_1D1E6789C();
    v9 = v8;
  }

  else
  {
    sub_1D1741854(v5, v1[1]);
    v7 = sub_1D1E6689C();
    v9 = v10;
    sub_1D1716AA4(v5, v6);
  }

  v14 = 0;
  v15 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001ELL, 0x80000001D1EC12F0);
  MEMORY[0x1D3890F70](v7, v9);

  MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC1310);
  v11 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  sub_1D1741C08(v1 + *(v11 + 20), v4, &qword_1EC642570, &qword_1D1E6C6A0);
  v12 = sub_1D1E6789C();
  MEMORY[0x1D3890F70](v12);

  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return v14;
}

uint64_t sub_1D19AA134()
{
  if (*v0)
  {
    return 0x6574636964657270;
  }

  else
  {
    return 0x6148746573657270;
  }
}

uint64_t sub_1D19AA184@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6148746573657270 && a2 == 0xEC000000656C646ELL;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574636964657270 && a2 == 0xED0000656D695464)
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

uint64_t sub_1D19AA26C(uint64_t a1)
{
  v2 = sub_1D19AD494();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D19AA2A8(uint64_t a1)
{
  v2 = sub_1D19AD494();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6481B0, &qword_1D1E8A880);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19AD494();
  sub_1D1E6930C();
  v9 = v3[1];
  v12 = *v3;
  v13 = v9;
  v11[15] = 0;
  sub_1D1771B38(v12, v9);
  sub_1D18CAD0C();
  sub_1D1E68E5C();
  sub_1D1716AA4(v12, v13);
  if (!v2)
  {
    type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
    LOBYTE(v12) = 1;
    sub_1D1E669FC();
    sub_1D19ACA88(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  if (*(v1 + 8) >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  v9 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  sub_1D1741C08(v1 + *(v9 + 20), v8, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_1D1E6922C();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1D1E6922C();
  sub_1D19ACA88(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1D1E676EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.hashValue.getter()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1D1E6920C();
  if (*(v0 + 8) >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  v8 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  sub_1D1741C08(v0 + *(v8 + 20), v7, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D1E6922C();
    sub_1D19ACA88(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1D1E6926C();
}

uint64_t StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6481C0, &qword_1D1E8A888);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D19AD494();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = v10;
  v13 = v12;
  v14 = v19;
  v22 = 0;
  sub_1D18CB0FC();
  v15 = v20;
  sub_1D1E68CBC();
  *v13 = v21;
  sub_1D1E669FC();
  LOBYTE(v21) = 1;
  sub_1D19ACA88(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68CBC();
  (*(v14 + 8))(v9, v15);
  sub_1D1741A90(v6, v13 + *(v17 + 20), &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D19AD3D8(v13, v18, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D19ACFA0(v13, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
}

uint64_t sub_1D19AAC50(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D1E6920C();
  if (*(v2 + 8) >> 60 == 15)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E668CC();
  }

  sub_1D1741C08(v2 + *(a2 + 20), v10, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D1E6922C();
    sub_1D19ACA88(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1D1E6926C();
}

Swift::Bool __swiftcall StaticThermostatClusterGroup.setpointsWithinSetpointLimits(heatingSetpoint:coolingSetpoint:)(Swift::Double_optional heatingSetpoint, Swift::Double_optional coolingSetpoint)
{
  if (coolingSetpoint.is_nil)
  {
    if (v3)
    {
      goto LABEL_50;
    }

    v5 = v2;
    *&heatingSetpoint.is_nil = type metadata accessor for StaticThermostatClusterGroup(0);
    v6 = v5 * 100.0;
    if (COERCE__INT64(fabs(v5 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v6 <= -1.0)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    if (v6 >= 1.84467441e19)
    {
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v7 = v4 + *(*&heatingSetpoint.is_nil + 36);
    if ((*(v7 + 40) | *(v7 + 24)))
    {
      if ((*(v7 + 72) | *(v7 + 56)))
      {
        goto LABEL_50;
      }

      v8 = *(v7 + 48);
      v9 = *(v7 + 64);
      if (v9 < v8)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    else
    {
      v8 = *(v7 + 16);
      v9 = *(v7 + 32);
      if (v9 < v8)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }
    }

    if (v8 > v6 || v9 < v6)
    {
      goto LABEL_50;
    }

    heatingSetpoint.is_nil = 1;
    return heatingSetpoint.is_nil;
  }

LABEL_10:
  v10 = *&heatingSetpoint.is_nil;
  if ((v3 & 1) == 0)
  {
    goto LABEL_18;
  }

  *&heatingSetpoint.is_nil = type metadata accessor for StaticThermostatClusterGroup(0);
  v11 = v10 * 100.0;
  if (COERCE__INT64(fabs(v10 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (v11 <= -1.0)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  if (v11 >= 1.84467441e19)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v12 = v4 + *(*&heatingSetpoint.is_nil + 40);
  if (((*(v12 + 40) | *(v12 + 24)) & 1) == 0)
  {
    v13 = *(v12 + 16);
    v14 = *(v12 + 32);
    if (v14 < v13)
    {
LABEL_65:
      __break(1u);
LABEL_66:
      __break(1u);
      goto LABEL_67;
    }

LABEL_32:
    if (v13 <= v11)
    {
      heatingSetpoint.is_nil = v14 >= v11;
      return heatingSetpoint.is_nil;
    }

    goto LABEL_50;
  }

  if ((*(v12 + 72) | *(v12 + 56)))
  {
    goto LABEL_50;
  }

  v13 = *(v12 + 48);
  v14 = *(v12 + 64);
  if (v14 >= v13)
  {
    goto LABEL_32;
  }

  __break(1u);
LABEL_18:
  v15 = v2;
  *&heatingSetpoint.is_nil = type metadata accessor for StaticThermostatClusterGroup(0);
  v16 = v10 * 100.0;
  if (COERCE__INT64(fabs(v10 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  if (v16 <= -1.0)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v16 >= 1.84467441e19)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v17 = v4 + *(*&heatingSetpoint.is_nil + 40);
  if ((*(v17 + 40) | *(v17 + 24)))
  {
    if ((*(v17 + 72) | *(v17 + 56)))
    {
      v18 = 0;
      goto LABEL_40;
    }

    goto LABEL_36;
  }

  v20 = *(v17 + 16);
  v17 = *(v17 + 32);
  if (v17 < v20)
  {
    __break(1u);
LABEL_36:
    v20 = *(v17 + 48);
    v17 = *(v17 + 64);
    if (v17 < v20)
    {
LABEL_67:
      __break(1u);
      return heatingSetpoint.is_nil;
    }
  }

  v21 = v17 >= v16;
  v18 = v20 <= v16 && v21;
LABEL_40:
  v22 = v15 * 100.0;
  if (COERCE__INT64(fabs(v15 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  if (v22 <= -1.0)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  if (v22 >= 1.84467441e19)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v23 = v4 + *(*&heatingSetpoint.is_nil + 36);
  if (((*(v23 + 40) | *(v23 + 24)) & 1) == 0)
  {
    goto LABEL_47;
  }

  if ((*(v23 + 72) | *(v23 + 56)))
  {
LABEL_50:
    heatingSetpoint.is_nil = 0;
    return heatingSetpoint.is_nil;
  }

  v24 = *(v23 + 48);
  v23 = *(v23 + 64);
  if (v23 < v24)
  {
    __break(1u);
LABEL_47:
    v24 = *(v23 + 16);
    v23 = *(v23 + 32);
    if (v23 >= v24)
    {
      goto LABEL_48;
    }

    goto LABEL_66;
  }

LABEL_48:
  heatingSetpoint.is_nil = v18;
  if (v24 > v22 || v23 < v22)
  {
    goto LABEL_50;
  }

  return heatingSetpoint.is_nil;
}

void __swiftcall StaticThermostatClusterGroup.clampedSetpoints(heatingSetpoint:coolingSetpoint:)(Swift::tuple_heatingSetpoint_Double_optional_coolingSetpoint_Double_optional *__return_ptr retstr, Swift::Double_optional heatingSetpoint, Swift::Double_optional coolingSetpoint)
{
  v6 = v4;
  v7 = v3;
  is_nil = coolingSetpoint.is_nil;
  v9 = *&heatingSetpoint.is_nil;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v32.is_nil = LOBYTE(v9);
  v33.is_nil = is_nil;
  if (StaticThermostatClusterGroup.setpointsWithinSetpointLimits(heatingSetpoint:coolingSetpoint:)(v32, v33))
  {
    return;
  }

  if (is_nil)
  {
    goto LABEL_11;
  }

  v12 = type metadata accessor for StaticThermostatClusterGroup(0);
  v13 = v9 * 100.0;
  if (COERCE__INT64(fabs(v9 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_22;
  }

  if (v13 <= -1.0)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v13 >= 1.84467441e19)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v14 = v5 + *(v12 + 40);
  if (((*(v14 + 40) | *(v14 + 24)) & 1) == 0)
  {
    v15 = *(v14 + 16);
    v16 = *(v14 + 32);
    if (v16 < v15)
    {
      goto LABEL_27;
    }
  }

  sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v17 = sub_1D1E6838C();
  v18 = objc_opt_self();
  v19 = [v18 fahrenheit];
  v20 = sub_1D1E684FC();

  if ((v20 & 1) == 0)
  {
    v21 = [v18 celsius];
    sub_1D1E684FC();

    v17 = v21;
  }

LABEL_11:
  if (v6)
  {
    return;
  }

  v22 = type metadata accessor for StaticThermostatClusterGroup(0);
  v23 = v7 * 100.0;
  if (COERCE__INT64(fabs(v7 * 100.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v23 <= -1.0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v23 >= 1.84467441e19)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return;
  }

  v24 = v5 + *(v22 + 36);
  if (((*(v24 + 40) | *(v24 + 24)) & 1) == 0)
  {
    v25 = *(v24 + 16);
    v26 = *(v24 + 32);
    if (v26 < v25)
    {
      goto LABEL_28;
    }
  }

  sub_1D1741B10(0, &qword_1EC644C78, 0x1E696B080);
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v27 = sub_1D1E6838C();
  v28 = objc_opt_self();
  v29 = [v28 fahrenheit];
  v30 = sub_1D1E684FC();

  if ((v30 & 1) == 0)
  {
    v31 = [v28 celsius];
    sub_1D1E684FC();

    v27 = v31;
  }
}

BOOL sub_1D19AB624(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);
  v8 = *(a1 + 64);
  v9 = *(a1 + 72);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v10 = *(a2 + 8);
    }

    else
    {
      v10 = 1;
    }

    if (v10)
    {
      return 0;
    }
  }

  if (v3)
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (v2 == *(a2 + 16))
    {
      v11 = *(a2 + 24);
    }

    else
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  if (v5)
  {
    if (!*(a2 + 40))
    {
      return 0;
    }
  }

  else
  {
    if (v4 == *(a2 + 32))
    {
      v12 = *(a2 + 40);
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

  if (v7)
  {
    if (!*(a2 + 56))
    {
      return 0;
    }
  }

  else
  {
    if (v6 == *(a2 + 48))
    {
      v13 = *(a2 + 56);
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
      return 0;
    }
  }

  if ((v9 & 1) == 0)
  {
    if (v8 == *(a2 + 64))
    {
      v15 = *(a2 + 72);
    }

    else
    {
      v15 = 1;
    }

    return (v15 & 1) == 0;
  }

  return (*(a2 + 72) & 1) != 0;
}

BOOL _s13HomeDataModel28StaticThermostatClusterGroupV14SetpointConfigV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v32 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v32 - v13;
  v15 = *(a2 + 8);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v15 = 1;
    }

    if (v15)
    {
      return 0;
    }
  }

  v16 = *(a1 + 9);
  v17 = *(a2 + 9);
  if (v16 == 2)
  {
    if (v17 != 2)
    {
      return 0;
    }
  }

  else if (v17 == 2 || ((v17 ^ v16) & 1) != 0)
  {
    return 0;
  }

  v18 = *(a2 + 12);
  if (*(a1 + 12))
  {
    if (!*(a2 + 12))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 10) != *(a2 + 10))
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  v19 = v12;
  v32 = type metadata accessor for StaticThermostatClusterGroup.SetpointConfig(0);
  v20 = *(v32 + 28);
  v21 = *(v19 + 48);
  sub_1D1741C08(a1 + v20, v14, &qword_1EC642570, &qword_1D1E6C6A0);
  v33 = v21;
  sub_1D1741C08(a2 + v20, &v14[v21], &qword_1EC642570, &qword_1D1E6C6A0);
  v22 = *(v5 + 48);
  if (v22(v14, 1, v4) == 1)
  {
    if (v22(&v14[v33], 1, v4) == 1)
    {
      sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_26;
    }

LABEL_23:
    sub_1D1741A30(v14, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  sub_1D1741C08(v14, v10, &qword_1EC642570, &qword_1D1E6C6A0);
  v23 = v33;
  if (v22(&v14[v33], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
    goto LABEL_23;
  }

  (*(v5 + 32))(v7, &v14[v23], v4);
  sub_1D19ACA88(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v25 = sub_1D1E6775C();
  v26 = *(v5 + 8);
  v26(v7, v4);
  v26(v10, v4);
  sub_1D1741A30(v14, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v25 & 1) == 0)
  {
    return 0;
  }

LABEL_26:
  v27 = *(v32 + 32);
  v28 = (a1 + v27);
  v29 = *(a1 + v27 + 8);
  v30 = (a2 + v27);
  v31 = *(a2 + v27 + 8);
  if (v29)
  {
    return (v31 & 1) != 0;
  }

  if (*v28 != *v30)
  {
    v31 = 1;
  }

  return (v31 & 1) == 0;
}

BOOL _s13HomeDataModel28StaticThermostatClusterGroupV13PresetsConfigV15SuggestedPresetV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1D1E669FC();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v28 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - v10;
  v13 = *a1;
  v12 = *(a1 + 8);
  v14 = *a2;
  v15 = a2[1];
  if (v12 >> 60 == 15)
  {
    if (v15 >> 60 == 15)
    {
      v27 = v6;
      sub_1D1771B38(v13, v12);
      sub_1D1771B38(v14, v15);
      sub_1D1716AA4(v13, v12);
      goto LABEL_7;
    }

LABEL_5:
    sub_1D1771B38(*a1, *(a1 + 8));
    sub_1D1771B38(v14, v15);
    sub_1D1716AA4(v13, v12);
    sub_1D1716AA4(v14, v15);
    return 0;
  }

  if (v15 >> 60 == 15)
  {
    goto LABEL_5;
  }

  v27 = v6;
  sub_1D1771B38(v13, v12);
  sub_1D1771B38(v14, v15);
  v17 = sub_1D199F344(v13, v12, v14, v15);
  sub_1D1716AA4(v14, v15);
  sub_1D1716AA4(v13, v12);
  if (!v17)
  {
    return 0;
  }

LABEL_7:
  v18 = *(type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0) + 20);
  v19 = *(v9 + 48);
  sub_1D1741C08(a1 + v18, v11, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741C08(a2 + v18, &v11[v19], &qword_1EC642570, &qword_1D1E6C6A0);
  v20 = v29;
  v21 = *(v29 + 48);
  if (v21(v11, 1, v4) != 1)
  {
    v22 = v28;
    sub_1D1741C08(v11, v28, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v21(&v11[v19], 1, v4) == 1)
    {
      (*(v20 + 8))(v22, v4);
      goto LABEL_12;
    }

    v23 = v27;
    (*(v20 + 32))(v27, &v11[v19], v4);
    sub_1D19ACA88(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    v24 = sub_1D1E6775C();
    v25 = *(v20 + 8);
    v25(v23, v4);
    v25(v22, v4);
    sub_1D1741A30(v11, &qword_1EC642570, &qword_1D1E6C6A0);
    return (v24 & 1) != 0;
  }

  if (v21(&v11[v19], 1, v4) != 1)
  {
LABEL_12:
    sub_1D1741A30(v11, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  sub_1D1741A30(v11, &qword_1EC642570, &qword_1D1E6C6A0);
  return 1;
}

uint64_t _s13HomeDataModel28StaticThermostatClusterGroupV13PresetsConfigV2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_1D1E669FC();
  v91 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v88 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v89 = &v84 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v8);
  v90 = &v84 - v9;
  v10 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = (&v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480B0, &qword_1D1E8A838);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v84 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6482A0, &unk_1D1E8B6E0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - v18;
  v20 = *a1;
  v21 = *a2;
  if (v20 == 2)
  {
    if (v21 != 2)
    {
      goto LABEL_51;
    }

LABEL_6:
    v23 = *(a1 + 1);
    v24 = *(a2 + 1);
    if (v23)
    {
      if (!v24 || (sub_1D177A394(v23, v24) & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v24)
    {
      goto LABEL_51;
    }

    v86 = v4;
    v87 = a2;
    v25 = *(a1 + 2);
    v26 = *(a2 + 2);
    if (v25)
    {
      if (!v26)
      {
        goto LABEL_51;
      }

      v27 = sub_1D177A44C(v25, v26);

      if ((v27 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v26)
    {
      goto LABEL_51;
    }

    v28 = *(a1 + 3);
    v29 = *(v87 + 3);
    if (v28)
    {
      if (!v29)
      {
        goto LABEL_51;
      }

      v30 = sub_1D177A568(v28, v29);

      if ((v30 & 1) == 0)
      {
        goto LABEL_51;
      }
    }

    else if (v29)
    {
      goto LABEL_51;
    }

    v31 = v87;
    LOBYTE(v22) = v87[40];
    if (a1[40])
    {
      if (!v87[40])
      {
        return v22 & 1;
      }
    }

    else
    {
      if (*(a1 + 4) != *(v87 + 4))
      {
        LOBYTE(v22) = 1;
      }

      if (v22)
      {
        goto LABEL_51;
      }
    }

    v85 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig(0);
    v32 = v85[9];
    v33 = *(v17 + 48);
    sub_1D1741C08(&a1[v32], v19, &qword_1EC6480B0, &qword_1D1E8A838);
    v34 = &v31[v32];
    v35 = v33;
    sub_1D1741C08(v34, &v19[v33], &qword_1EC6480B0, &qword_1D1E8A838);
    v36 = *(v11 + 48);
    if (v36(v19, 1, v10) == 1)
    {
      v37 = v36(&v19[v35], 1, v10);
      v38 = v86;
      if (v37 == 1)
      {
        sub_1D1741A30(v19, &qword_1EC6480B0, &qword_1D1E8A838);
        goto LABEL_35;
      }
    }

    else
    {
      sub_1D1741C08(v19, v16, &qword_1EC6480B0, &qword_1D1E8A838);
      v39 = v36(&v19[v35], 1, v10);
      v38 = v86;
      if (v39 != 1)
      {
        sub_1D19ACF3C(&v19[v35], v13);
        v43 = _s13HomeDataModel28StaticThermostatClusterGroupV13PresetsConfigV15SuggestedPresetV2eeoiySbAG_AGtFZ_0(v16, v13);
        sub_1D19ACFA0(v13, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
        sub_1D19ACFA0(v16, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
        sub_1D1741A30(v19, &qword_1EC6480B0, &qword_1D1E8A838);
        if (!v43)
        {
          goto LABEL_51;
        }

LABEL_35:
        v44 = v85;
        v45 = v85[10];
        v46 = &a1[v45];
        v47 = a1[v45 + 1];
        v48 = &v87[v45];
        v22 = v87[v45 + 1];
        if (v47)
        {
          if (!v22)
          {
            return v22 & 1;
          }
        }

        else
        {
          if (*v46 != *v48)
          {
            LOBYTE(v22) = 1;
          }

          if (v22)
          {
            goto LABEL_51;
          }
        }

        v49 = v85[11];
        v51 = *&a1[v49];
        v50 = *&a1[v49 + 8];
        v52 = &v87[v49];
        v54 = *v52;
        v53 = v52[1];
        if (v50 >> 60 == 15)
        {
          if (v53 >> 60 != 15)
          {
            goto LABEL_50;
          }

          sub_1D1771B38(v51, v50);
          sub_1D1771B38(v54, v53);
          sub_1D1716AA4(v51, v50);
        }

        else
        {
          if (v53 >> 60 == 15)
          {
            goto LABEL_50;
          }

          sub_1D1771B38(v51, v50);
          sub_1D1771B38(v54, v53);
          v55 = sub_1D199F344(v51, v50, v54, v53);
          sub_1D1716AA4(v54, v53);
          sub_1D1716AA4(v51, v50);
          if (!v55)
          {
            goto LABEL_51;
          }
        }

        v56 = v44[12];
        v51 = *&a1[v56];
        v50 = *&a1[v56 + 8];
        v57 = &v87[v56];
        v54 = *v57;
        v53 = v57[1];
        if (v50 >> 60 == 15)
        {
          if (v53 >> 60 == 15)
          {
            sub_1D1771B38(v51, v50);
            sub_1D1771B38(v54, v53);
            sub_1D1716AA4(v51, v50);
LABEL_54:
            v60 = v44[13];
            v61 = *(v8 + 48);
            v62 = v90;
            sub_1D1741C08(&a1[v60], v90, &qword_1EC642570, &qword_1D1E6C6A0);
            v63 = &v87[v60];
            v64 = v87;
            sub_1D1741C08(v63, v62 + v61, &qword_1EC642570, &qword_1D1E6C6A0);
            v65 = v91;
            v66 = *(v91 + 48);
            v67 = v66(v62, 1, v38);
            v68 = v89;
            if (v67 == 1)
            {
              if (v66(v62 + v61, 1, v38) == 1)
              {
                sub_1D1741A30(v62, &qword_1EC642570, &qword_1D1E6C6A0);
                goto LABEL_61;
              }
            }

            else
            {
              sub_1D1741C08(v62, v89, &qword_1EC642570, &qword_1D1E6C6A0);
              if (v66(v62 + v61, 1, v38) != 1)
              {
                v69 = v88;
                (*(v65 + 32))(v88, v62 + v61, v38);
                sub_1D19ACA88(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
                v70 = sub_1D1E6775C();
                v71 = *(v65 + 8);
                v71(v69, v38);
                v71(v68, v38);
                sub_1D1741A30(v62, &qword_1EC642570, &qword_1D1E6C6A0);
                if ((v70 & 1) == 0)
                {
                  goto LABEL_51;
                }

LABEL_61:
                v72 = v44[14];
                v73 = a1[v72];
                v74 = v64[v72];
                if (v73 == 3)
                {
                  if (v74 != 3)
                  {
                    goto LABEL_51;
                  }
                }

                else if (v73 != v74)
                {
                  goto LABEL_51;
                }

                if (a1[v85[15]] != v87[v85[15]] || a1[v85[16]] != v87[v85[16]] || a1[v85[17]] != v87[v85[17]])
                {
                  goto LABEL_51;
                }

                v75 = v85[18];
                v76 = *&a1[v75] | (a1[v75 + 4] << 32);
                v77 = *&v87[v75] | (v87[v75 + 4] << 32);
                v78 = *&a1[v75];
                v79 = *&v87[v75];
                if (v78 == 2)
                {
                  v80 = v87;
                  if (v79 != 2)
                  {
                    goto LABEL_51;
                  }

                  goto LABEL_70;
                }

                if (v79 == 2 || ((v76 ^ v77) & 1) != 0)
                {
                  goto LABEL_51;
                }

                if ((v76 & 0x100000000) != 0)
                {
                  v80 = v87;
                  if ((v77 & 0x100000000) == 0)
                  {
                    goto LABEL_51;
                  }
                }

                else
                {
                  LOBYTE(v22) = 0;
                  if ((v77 & 0x100000000) != 0)
                  {
                    return v22 & 1;
                  }

                  v80 = v87;
                  if (WORD1(v76) != WORD1(v77))
                  {
                    return v22 & 1;
                  }
                }

LABEL_70:
                v81 = v85[19];
                v82 = a1[v81];
                v83 = v80[v81];
                if (v82 == 6)
                {
                  if (v83 == 6)
                  {
LABEL_80:
                    if (a1[v85[20]] == v87[v85[20]])
                    {
                      LOBYTE(v22) = a1[v85[21]] ^ v87[v85[21]] ^ 1;
                      return v22 & 1;
                    }
                  }
                }

                else if (v82 == v83)
                {
                  goto LABEL_80;
                }

LABEL_51:
                LOBYTE(v22) = 0;
                return v22 & 1;
              }

              (*(v65 + 8))(v68, v38);
            }

            v40 = &qword_1EC642AC0;
            v41 = &qword_1D1E6E810;
            v42 = v62;
LABEL_33:
            sub_1D1741A30(v42, v40, v41);
            goto LABEL_51;
          }
        }

        else if (v53 >> 60 != 15)
        {
          sub_1D1771B38(v51, v50);
          sub_1D1771B38(v54, v53);
          v59 = sub_1D199F344(v51, v50, v54, v53);
          sub_1D1716AA4(v54, v53);
          sub_1D1716AA4(v51, v50);
          if (!v59)
          {
            goto LABEL_51;
          }

          goto LABEL_54;
        }

LABEL_50:
        sub_1D1771B38(v51, v50);
        sub_1D1771B38(v54, v53);
        sub_1D1716AA4(v51, v50);
        sub_1D1716AA4(v54, v53);
        goto LABEL_51;
      }

      sub_1D19ACFA0(v16, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
    }

    v40 = &qword_1EC6482A0;
    v41 = &unk_1D1E8B6E0;
    v42 = v19;
    goto LABEL_33;
  }

  LOBYTE(v22) = 0;
  if (v21 != 2 && ((v21 ^ v20) & 1) == 0)
  {
    goto LABEL_6;
  }

  return v22 & 1;
}

unint64_t sub_1D19AC96C()
{
  result = qword_1EC648070;
  if (!qword_1EC648070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648070);
  }

  return result;
}

unint64_t sub_1D19AC9C0()
{
  result = qword_1EC648088;
  if (!qword_1EC648088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648088);
  }

  return result;
}

unint64_t sub_1D19ACA34()
{
  result = qword_1EC6480A0;
  if (!qword_1EC6480A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6480A0);
  }

  return result;
}

uint64_t sub_1D19ACA88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D19ACAF0()
{
  result = qword_1EC6480C0;
  if (!qword_1EC6480C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6480C0);
  }

  return result;
}

unint64_t sub_1D19ACB44()
{
  result = qword_1EC6480D0;
  if (!qword_1EC6480D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6480C8, &qword_1D1E8A848);
    sub_1D19ACBC8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6480D0);
  }

  return result;
}

unint64_t sub_1D19ACBC8()
{
  result = qword_1EC6480D8;
  if (!qword_1EC6480D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6480D8);
  }

  return result;
}

unint64_t sub_1D19ACC1C()
{
  result = qword_1EC6480E8;
  if (!qword_1EC6480E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6480E0, &qword_1D1E8A850);
    sub_1D19ACCA0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6480E8);
  }

  return result;
}

unint64_t sub_1D19ACCA0()
{
  result = qword_1EC6480F0;
  if (!qword_1EC6480F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6480F0);
  }

  return result;
}

unint64_t sub_1D19ACCF4()
{
  result = qword_1EC648100;
  if (!qword_1EC648100)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6480F8, &qword_1D1E8A858);
    sub_1D19ACD78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648100);
  }

  return result;
}

unint64_t sub_1D19ACD78()
{
  result = qword_1EC648108;
  if (!qword_1EC648108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648108);
  }

  return result;
}

unint64_t sub_1D19ACDEC()
{
  result = qword_1EC648118;
  if (!qword_1EC648118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648118);
  }

  return result;
}

unint64_t sub_1D19ACE40()
{
  result = qword_1EC648120;
  if (!qword_1EC648120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648120);
  }

  return result;
}

unint64_t sub_1D19ACE94()
{
  result = qword_1EC648128;
  if (!qword_1EC648128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648128);
  }

  return result;
}

unint64_t sub_1D19ACEE8()
{
  result = qword_1EC648130;
  if (!qword_1EC648130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648130);
  }

  return result;
}

uint64_t sub_1D19ACF3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19ACFA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D19AD000()
{
  result = qword_1EC648140;
  if (!qword_1EC648140)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6480C8, &qword_1D1E8A848);
    sub_1D19AD084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648140);
  }

  return result;
}

unint64_t sub_1D19AD084()
{
  result = qword_1EC648148;
  if (!qword_1EC648148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648148);
  }

  return result;
}

unint64_t sub_1D19AD0D8()
{
  result = qword_1EC648150;
  if (!qword_1EC648150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6480E0, &qword_1D1E8A850);
    sub_1D19AD15C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648150);
  }

  return result;
}

unint64_t sub_1D19AD15C()
{
  result = qword_1EC648158;
  if (!qword_1EC648158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648158);
  }

  return result;
}

unint64_t sub_1D19AD1B0()
{
  result = qword_1EC648160;
  if (!qword_1EC648160)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6480F8, &qword_1D1E8A858);
    sub_1D19AD234();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648160);
  }

  return result;
}

unint64_t sub_1D19AD234()
{
  result = qword_1EC648168;
  if (!qword_1EC648168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648168);
  }

  return result;
}

unint64_t sub_1D19AD288()
{
  result = qword_1EC648178;
  if (!qword_1EC648178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648178);
  }

  return result;
}

unint64_t sub_1D19AD2DC()
{
  result = qword_1EC648180;
  if (!qword_1EC648180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648180);
  }

  return result;
}

unint64_t sub_1D19AD330()
{
  result = qword_1EC648188;
  if (!qword_1EC648188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648188);
  }

  return result;
}

unint64_t sub_1D19AD384()
{
  result = qword_1EC648190;
  if (!qword_1EC648190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648190);
  }

  return result;
}

uint64_t sub_1D19AD3D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D19AD440()
{
  result = qword_1EC6481A0;
  if (!qword_1EC6481A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481A0);
  }

  return result;
}

unint64_t sub_1D19AD494()
{
  result = qword_1EC6481B8;
  if (!qword_1EC6481B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481B8);
  }

  return result;
}

unint64_t sub_1D19AD4EC()
{
  result = qword_1EC6481C8;
  if (!qword_1EC6481C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481C8);
  }

  return result;
}

unint64_t sub_1D19AD544()
{
  result = qword_1EC6481D0;
  if (!qword_1EC6481D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481D0);
  }

  return result;
}

unint64_t sub_1D19AD59C()
{
  result = qword_1EC6481D8;
  if (!qword_1EC6481D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481D8);
  }

  return result;
}

unint64_t sub_1D19AD5F4()
{
  result = qword_1EC6481E0;
  if (!qword_1EC6481E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481E0);
  }

  return result;
}

unint64_t sub_1D19AD6DC()
{
  result = qword_1EC6481F8;
  if (!qword_1EC6481F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6481F8);
  }

  return result;
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

void sub_1D19AD804(uint64_t a1)
{
  sub_1D17BDF80(319, &qword_1EE07B610, MEMORY[0x1E69E7360]);
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07BA30, &type metadata for StaticThermostatClusterGroup.TemperatureSetpointHold);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, &qword_1EE07D1D0, MEMORY[0x1E69E75F8]);
      if (v3 <= 0x3F)
      {
        sub_1D19ADC0C(319, &qword_1EE07E020, MEMORY[0x1E6969530]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D19AD930(uint64_t a1)
{
  sub_1D17BDF80(319, &qword_1EE07D1F0, MEMORY[0x1E69E6370]);
  if (v1 <= 0x3F)
  {
    sub_1D19ADBB8(319, &qword_1EE07B720, &qword_1EC6480C8, &qword_1D1E8A848);
    if (v2 <= 0x3F)
    {
      sub_1D19ADBB8(319, &qword_1EE07B730, &qword_1EC6480E0, &qword_1D1E8A850);
      if (v3 <= 0x3F)
      {
        sub_1D19ADBB8(319, &qword_1EE07B738, &qword_1EC6480F8, &qword_1D1E8A858);
        if (v4 <= 0x3F)
        {
          sub_1D17BDF80(319, &qword_1EE07B5F8, MEMORY[0x1E69E76D8]);
          if (v5 <= 0x3F)
          {
            sub_1D19ADC0C(319, qword_1EE07BC10, type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset);
            if (v6 <= 0x3F)
            {
              sub_1D17BDF80(319, &qword_1EE07B608, MEMORY[0x1E69E7508]);
              if (v7 <= 0x3F)
              {
                sub_1D17BDF80(319, &qword_1EE07D198, MEMORY[0x1E6969080]);
                if (v8 <= 0x3F)
                {
                  sub_1D19ADC0C(319, &qword_1EE07E020, MEMORY[0x1E6969530]);
                  if (v9 <= 0x3F)
                  {
                    sub_1D17BDF80(319, &qword_1EE07BA38, &type metadata for StaticThermostatClusterGroup.NotFollowingReason.PresetNotFollowingReason);
                    if (v10 <= 0x3F)
                    {
                      sub_1D17BDF80(319, qword_1EE07BC50, &type metadata for StaticThermostatClusterGroup.PresetsConfig.HoldPolicy);
                      if (v11 <= 0x3F)
                      {
                        sub_1D17BDF80(319, &qword_1EE07BA28, &type metadata for StaticThermostatClusterGroup.ActivePresetChangeReason);
                        if (v12 <= 0x3F)
                        {
                          swift_cvw_initStructMetadataWithLayoutString();
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1D19ADBB8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_1D1E685AC();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1D19ADC0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1E685AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s13PresetsConfigV10HoldPolicyVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[5])
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

uint64_t _s13PresetsConfigV10HoldPolicyVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void sub_1D19ADD30(uint64_t a1)
{
  sub_1D17BDF80(319, &qword_1EE07D198, MEMORY[0x1E6969080]);
  if (v1 <= 0x3F)
  {
    sub_1D19ADC0C(319, &qword_1EE07E020, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D19ADE44()
{
  result = qword_1EC648208;
  if (!qword_1EC648208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648208);
  }

  return result;
}

unint64_t sub_1D19ADE9C()
{
  result = qword_1EC648210;
  if (!qword_1EC648210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648210);
  }

  return result;
}

unint64_t sub_1D19ADEF4()
{
  result = qword_1EC648218;
  if (!qword_1EC648218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648218);
  }

  return result;
}

unint64_t sub_1D19ADF4C()
{
  result = qword_1EC648220;
  if (!qword_1EC648220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648220);
  }

  return result;
}

unint64_t sub_1D19ADFA4()
{
  result = qword_1EC648228;
  if (!qword_1EC648228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648228);
  }

  return result;
}

unint64_t sub_1D19ADFFC()
{
  result = qword_1EC648230;
  if (!qword_1EC648230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648230);
  }

  return result;
}

unint64_t sub_1D19AE054()
{
  result = qword_1EC648238;
  if (!qword_1EC648238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648238);
  }

  return result;
}

unint64_t sub_1D19AE0AC()
{
  result = qword_1EC648240;
  if (!qword_1EC648240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648240);
  }

  return result;
}

unint64_t sub_1D19AE104()
{
  result = qword_1EC648248;
  if (!qword_1EC648248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648248);
  }

  return result;
}

unint64_t sub_1D19AE15C()
{
  result = qword_1EC648250;
  if (!qword_1EC648250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648250);
  }

  return result;
}

unint64_t sub_1D19AE1B4()
{
  result = qword_1EC648258;
  if (!qword_1EC648258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648258);
  }

  return result;
}

unint64_t sub_1D19AE20C()
{
  result = qword_1EC648260;
  if (!qword_1EC648260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648260);
  }

  return result;
}

unint64_t sub_1D19AE264()
{
  result = qword_1EC648268;
  if (!qword_1EC648268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648268);
  }

  return result;
}

unint64_t sub_1D19AE2BC()
{
  result = qword_1EC648270;
  if (!qword_1EC648270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648270);
  }

  return result;
}

unint64_t sub_1D19AE314()
{
  result = qword_1EC648278;
  if (!qword_1EC648278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648278);
  }

  return result;
}

unint64_t sub_1D19AE36C()
{
  result = qword_1EC648280;
  if (!qword_1EC648280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648280);
  }

  return result;
}

unint64_t sub_1D19AE3C4()
{
  result = qword_1EC648288;
  if (!qword_1EC648288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648288);
  }

  return result;
}

unint64_t sub_1D19AE41C()
{
  result = qword_1EC648290;
  if (!qword_1EC648290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648290);
  }

  return result;
}

uint64_t sub_1D19AE470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E6974616568 && a2 == 0xEF746E696F707465;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC1330 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC1350 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC1370 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC1390 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D19AE634(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x53676E696C6F6F63 && a2 == 0xEF746E696F707465;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC13B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC13D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC13F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001D1EC1410 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D19AE7F8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x746E696F70746573 && a2 == 0xEE0074657366664FLL;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E696F70746573 && a2 == 0xEC000000646C6F48 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D1EC1430 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EC1450 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC1470 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D19AE9B8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000014 && 0x80000001D1EC1490 == a2;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954746573657270 && a2 == 0xEB00000000736570 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x50746E6572727563 && a2 == 0xEE00737465736572 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC14B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x664F7265626D756ELL && a2 == 0xEF73746573657250 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC14D0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001D1EC14F0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC1510 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D1EC1530 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D1EC1550 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001D1EC1580 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D1EC15A0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001D1EC15C0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001D1EC15E0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x696C6F50646C6F68 && a2 == 0xEA00000000007963 || (sub_1D1E6904C() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC1600 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC1620 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001D1EC1640 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t sub_1D19AEF40()
{
  result = qword_1EC648298;
  if (!qword_1EC648298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC648298);
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.SystemMode.init(rawValue:)@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  if (result > 9u)
  {
    *a2 = 9;
  }

  else
  {
    *a2 = byte_1D1E8BDD2[result];
  }

  return result;
}

uint64_t StaticThermostatClusterGroup.SystemMode.label.getter()
{
  v1 = *v0;
  v2 = 0xD00000000000001ALL;
  if (v1 <= 3)
  {
    v10 = "HFThermostatPresetsModeAuto";
    v11 = "HFThermostatPresetsModeHeat";
    if (v1 != 2)
    {
      v11 = "etsModeEmergencyHeat";
    }

    if (*v0)
    {
      v10 = "HFThermostatPresetsModeCool";
      v2 = 0xD00000000000001BLL;
    }

    if (*v0 <= 1u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v11;
    }

    if (*v0 <= 1u)
    {
      v8 = v2;
    }

    else
    {
      v8 = 0xD00000000000001BLL;
    }

    v9 = v12 | 0x8000000000000000;
  }

  else
  {
    v3 = "HFThermostatPresetsModeDry";
    v4 = "HFThermostatPresetsModeSleep";
    if (v1 != 7)
    {
      v4 = "supportsAdaptiveTemperature";
      v2 = 0xD00000000000001CLL;
    }

    if (v1 == 6)
    {
      v2 = 0xD00000000000001ELL;
    }

    else
    {
      v3 = v4;
    }

    v5 = "etsModePreCooling";
    v6 = 0xD000000000000021;
    if (v1 == 4)
    {
      v6 = 0xD000000000000024;
    }

    else
    {
      v5 = "HFThermostatPresetsModeFanOnly";
    }

    if (*v0 <= 5u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v3;
    }

    if (*v0 <= 5u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v2;
    }

    v9 = v7 | 0x8000000000000000;
  }

  return static String.hfLocalized(_:)(v8, v9);
}

uint64_t StaticThermostatClusterGroup.NotFollowingReason.EnergyNotFollowingReason.description.getter()
{
  v1 = 0x746E6576455244;
  if (*v0 != 1)
  {
    v1 = 0x646573756150;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t StaticThermostatClusterGroup.NotFollowingReason.EnergyNotFollowingReason.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 3u)
  {
    v2 = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D19AF22C()
{
  v1 = 0x746E6576455244;
  if (*v0 != 1)
  {
    v1 = 0x646573756150;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t StaticThermostatClusterGroup.NotFollowingReason.PresetNotFollowingReason.description.getter()
{
  v1 = 0x746E6576455244;
  if (*v0 != 1)
  {
    v1 = 0x20676E696F676E4FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t sub_1D19AF398()
{
  v1 = 0x746E6576455244;
  if (*v0 != 1)
  {
    v1 = 0x20676E696F676E4FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E55;
  }
}

uint64_t StaticThermostatClusterGroup.ActivePresetChangeReason.description.getter()
{
  v1 = *v0;
  v2 = 0x776E6F6E6B6E55;
  v3 = 0x6E614320646C6F48;
  v4 = 0x656C756465686353;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61756E614DLL;
  if (v1 != 1)
  {
    v5 = 0x70784520646C6F48;
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

uint64_t StaticThermostatClusterGroup.ActivePresetChangeReason.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = result;
  if (result >= 6u)
  {
    v2 = 6;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D19AF59C()
{
  v1 = *v0;
  v2 = 0x776E6F6E6B6E55;
  v3 = 0x6E614320646C6F48;
  v4 = 0x656C756465686353;
  if (v1 != 4)
  {
    v4 = 0xD00000000000001ALL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6C61756E614DLL;
  if (v1 != 1)
  {
    v5 = 0x70784520646C6F48;
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

uint64_t sub_1D19AF75C()
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D19AF7E4(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

HomeDataModel::ThermostatAutomationSettingsContext_optional __swiftcall ThermostatAutomationSettingsContext.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1D19AF85C()
{
  result = qword_1EC6482A8;
  if (!qword_1EC6482A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482A8);
  }

  return result;
}

unint64_t sub_1D19AF8B4()
{
  result = qword_1EC6482B0;
  if (!qword_1EC6482B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482B0);
  }

  return result;
}

unint64_t sub_1D19AF90C()
{
  result = qword_1EC6482B8;
  if (!qword_1EC6482B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482B8);
  }

  return result;
}

unint64_t sub_1D19AF964()
{
  result = qword_1EC6482C0;
  if (!qword_1EC6482C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482C0);
  }

  return result;
}

unint64_t sub_1D19AF9BC()
{
  result = qword_1EC6482C8;
  if (!qword_1EC6482C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482C8);
  }

  return result;
}

uint64_t _s18NotFollowingReasonOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3F)
  {
    goto LABEL_17;
  }

  if (a2 + 193 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 193) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 193;
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

      return (*a1 | (v4 << 8)) - 193;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 193;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 1) & 0x3E | (*a1 >> 7)) ^ 0x3F;
  if (v6 >= 0x3E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s18NotFollowingReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 193 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 193) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3F)
  {
    v4 = 0;
  }

  if (a2 > 0x3E)
  {
    v5 = ((a2 - 63) >> 8) + 1;
    *result = a2 - 63;
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
    *result = 4 * (((-a2 >> 1) & 0x1F) - 32 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D19AFC04()
{
  result = qword_1EC6482D0;
  if (!qword_1EC6482D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482D0);
  }

  return result;
}

unint64_t sub_1D19AFC58()
{
  result = qword_1EC6482D8;
  if (!qword_1EC6482D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482D8);
  }

  return result;
}

unint64_t sub_1D19AFCAC()
{
  result = qword_1EC6482E0;
  if (!qword_1EC6482E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482E0);
  }

  return result;
}

unint64_t sub_1D19AFD00()
{
  result = qword_1EC6482E8;
  if (!qword_1EC6482E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6482E8);
  }

  return result;
}

double UInt64.temperatureTypeAsCelsius.getter(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C68, &unk_1D1E8A7F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1D18311BC();
  sub_1D1E66ABC();
  sub_1D1E666FC();
  v4 = sub_1D1E6838C();
  v5 = objc_opt_self();
  v6 = [v5 fahrenheit];
  v7 = sub_1D1E684FC();

  if (v7)
  {
    v8 = 0.555555556;
  }

  else
  {
    v9 = [v5 celsius];
    sub_1D1E684FC();

    v8 = 0.5;
    v4 = v9;
  }

  return v8 * round(a1 / 100.0 / v8);
}

uint64_t sub_1D19AFF38@<X0>(uint64_t a1@<X8>)
{
  v42 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643960, &qword_1D1EABC30);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v39 = &v31 - v2;
  v37 = sub_1D1E66C5C();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1D1E662EC();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E66BAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D1E66BBC();
  v40 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v31 - v13;
  v15 = sub_1D1E669FC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v41 = &v31 - v20;
  sub_1D1E66B9C();
  (*(v6 + 104))(v8, *MEMORY[0x1E6969A48], v5);
  _s13HomeDataModel012IntentLaunchbC0C03setE19InitiationTimestamp4date4withy10Foundation4DateV_ShyAG4UUIDVGtFfA__0();
  sub_1D1E66B6C();
  v21 = v19;
  v22 = v9;
  v23 = v40;
  v32 = *(v16 + 8);
  v32(v21, v15);
  (*(v6 + 8))(v8, v5);
  v24 = *(v23 + 8);
  v24(v11, v22);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_1D18B3AE0(v14);
    return (*(v16 + 56))(v42, 1, 1, v15);
  }

  else
  {
    (*(v16 + 32))(v41, v14, v15);
    sub_1D1E66B9C();
    v26 = v33;
    sub_1D1E66C4C();
    v27 = v34;
    v40 = v15;
    sub_1D1E66B0C();
    v28 = v35;
    v29 = v37;
    (*(v35 + 8))(v26, v37);
    v24(v11, v22);
    sub_1D1E6625C();
    sub_1D1E6628C();
    sub_1D1E662AC();
    sub_1D1E661DC();
    v30 = v39;
    sub_1D1E66C4C();
    (*(v28 + 56))(v30, 0, 1, v29);
    sub_1D1E662DC();
    sub_1D1E66B9C();
    sub_1D1E66B5C();
    v24(v11, v22);
    (*(v36 + 8))(v27, v38);
    return (v32)(v41, v40);
  }
}

unint64_t Double.asTemperatureType.getter(double a1)
{
  v1 = a1 * 100.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

void sub_1D19B0540(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 coolingSetpoint];
  if (v4)
  {
    v27 = 0;
    v28 = 1;
    v5 = v4;
    sub_1D1E692EC();
  }

  v6 = [a1 heatingSetpoint];
  if (v6)
  {
    v27 = 0;
    v28 = 1;
    v7 = v6;
    sub_1D1E692EC();
  }

  v8 = [a1 presetScenario];
  LOWORD(v27) = 256;
  sub_1D1E691CC();

  v9 = [a1 presetHandle];
  if (v9)
  {
    v10 = v9;
    v11 = sub_1D1E668BC();
    v13 = v12;

    v14 = sub_1D1E6688C();
    sub_1D174E7C4(v11, v13);
    v15 = v14;
    v16 = sub_1D1E668BC();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0xF000000000000000;
  }

  v19 = [a1 builtIn];
  if (v19)
  {
    LOBYTE(v27) = 2;
    v20 = v19;
    MEMORY[0x1D3891370](v19, &v27);

    v21 = v27;
  }

  else
  {
    v21 = 0;
  }

  v22 = [a1 name];
  if (v22)
  {
    v23 = v22;
    v24 = sub_1D1E6781C();
    v26 = v25;
  }

  else
  {

    v24 = 0;
    v26 = 0;
  }

  *a2 = 2600;
  *(a2 + 8) = 2000;
  *(a2 + 16) = 0;
  *(a2 + 24) = v16;
  *(a2 + 32) = v18;
  *(a2 + 40) = v21 & 1;
  *(a2 + 48) = v24;
  *(a2 + 56) = v26;
}

void sub_1D19B07DC(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 presetScenario];
  sub_1D1E691CC();

  v5 = [a1 numberOfPresets];
  sub_1D1E692EC();

  v6 = [a1 presetTypeFeatures];
  sub_1D1E692BC();

  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
}

Swift::OpaquePointer_optional __swiftcall StaticThermostatClusterGroup.editablePresets(for:)(HomeDataModel::ThermostatAutomationSettingsContext a1)
{
  v2 = a1;
  v3 = type metadata accessor for StaticThermostatClusterGroup(0);
  v5 = *(v1 + *(v3 + 28) + 16);
  if (v5)
  {
    v6 = *v2;
    MEMORY[0x1EEE9AC00](v3);
    v9[2] = v1;

    if (v6 == 2)
    {
      v7 = sub_1D19B0A30;
    }

    else
    {
      v7 = sub_1D19B09F8;
    }

    v8 = sub_1D1796A48(v7, v9, v5);
  }

  else
  {
    v8 = 0;
  }

  result.value._rawValue = v8;
  result.is_nil = v4;
  return result;
}

uint64_t StaticThermostatClusterGroup.matterDeviceID.getter()
{
  v1 = type metadata accessor for ClusterPath(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D19B0B0C(v0, v4);
  v4[*(v2 + 28)] = 19;
  v5 = *&v4[*(type metadata accessor for EndpointPath(0) + 20)];
  sub_1D19B0B70(v4);
  return v5;
}

uint64_t sub_1D19B0B0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndpointPath(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D19B0B70(uint64_t a1)
{
  v2 = type metadata accessor for ClusterPath(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t StaticThermostatClusterGroup.homeID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ClusterPath(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D19B0B0C(v1, v9);
  v9[*(v7 + 28)] = 19;
  sub_1D191F714(v9, v5);
  v10 = sub_1D1E66A7C();
  return (*(*(v10 - 8) + 32))(a1, v5, v10);
}

uint64_t sub_1D19B0CEC@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>, int a3@<W0>)
{
  result = sub_1D19B5730(a3);
  switch(result)
  {
    case 3u:
      v7 = 0;
      v6 = 1;
      break;
    case 7u:
      v6 = 0;
      v7 = 2;
      break;
    case 0xCu:
      v6 = 0;
      v7 = 1;
      break;
    default:
      goto LABEL_23;
  }

  v8 = sub_1D1E6781C();
  if (!*(a1 + 16))
  {
    goto LABEL_22;
  }

  v10 = sub_1D171D2F0(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v10, v24);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_23;
  }

  if (*&v23[0] == sub_1D1E6781C() && *(&v23[0] + 1) == v13)
  {
  }

  else
  {
    v15 = sub_1D1E6904C();

    if ((v15 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  v16 = sub_1D1E6781C();
  if (!*(a1 + 16))
  {
LABEL_22:

    goto LABEL_23;
  }

  v18 = sub_1D171D2F0(v16, v17);
  v20 = v19;

  if ((v20 & 1) == 0)
  {
LABEL_23:
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  sub_1D1741970(*(a1 + 56) + 32 * v18, v23);
  sub_1D1742194(v23, v24);
  if (v6)
  {
    v21 = sub_1D19B5854(v24);
    if (v21)
    {
      v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648300, &qword_1D1E8BEE8);
      result = __swift_destroy_boxed_opaque_existential_1(v24);
    }

    else
    {
      result = __swift_destroy_boxed_opaque_existential_1(v24);
      v22 = 0;
      *(a2 + 8) = 0;
      *(a2 + 16) = 0;
    }

    *a2 = v21;
    *(a2 + 24) = v22;
  }

  else
  {
    sub_1D19B3A64(v24, v7, a2);
    return __swift_destroy_boxed_opaque_existential_1(v24);
  }

  return result;
}

uint64_t sub_1D19B0F20()
{
  v4[3] = &type metadata for BasicClusterPath;
  v4[4] = sub_1D18F6128();
  LOWORD(v4[0]) = 0;
  BYTE2(v4[0]) = 9;
  AttributeValueSet.value(for:in:)(5, v4, &v5);
  __swift_destroy_boxed_opaque_existential_1(v4);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v0 = swift_dynamicCast();
    v1 = v4[0];
    if (!v0)
    {
      v1 = 0;
    }

    v2 = v0 ^ 1;
  }

  else
  {
    sub_1D1741A30(&v5, &qword_1EC645D58, &unk_1D1E7E530);
    v1 = 0;
    v2 = 1;
  }

  return v1 | (v2 << 8);
}

uint64_t sub_1D19B100C(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 8);
  v6 = *(v1 + 18);
  v8[5] = v3;
  v8[6] = v4;
  v8[3] = &type metadata for BasicClusterPath;
  v8[4] = sub_1D18F6128();
  LOWORD(v8[0]) = v5;
  BYTE2(v8[0]) = v6;

  AttributeValueSet.value(for:in:)(a1, v8, &v9);

  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    if (swift_dynamicCast())
    {
      return LOBYTE(v8[0]);
    }

    else
    {
      return 2;
    }
  }

  else
  {
    sub_1D1741A30(&v9, &qword_1EC645D58, &unk_1D1E7E530);
    return 2;
  }
}

uint64_t sub_1D19B111C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 8);
  v8 = *(v2 + 18);
  v12[5] = v5;
  v12[6] = v6;
  v12[3] = &type metadata for BasicClusterPath;
  v12[4] = sub_1D18F6128();
  LOWORD(v12[0]) = v7;
  BYTE2(v12[0]) = v8;

  AttributeValueSet.value(for:in:)(a1, v12, &v13);

  __swift_destroy_boxed_opaque_existential_1(v12);
  if (!v14)
  {
    sub_1D1741A30(&v13, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_6:
    v10 = 1;
    goto LABEL_7;
  }

  if (LODWORD(v12[0]) < 0xC792BC80)
  {
    sub_1D1E6698C();
    v10 = 0;
LABEL_7:
    v11 = sub_1D1E669FC();
    return (*(*(v11 - 8) + 56))(a2, v10, 1, v11);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19B12A4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 18);
  v7[3] = &type metadata for BasicClusterPath;
  v7[4] = sub_1D18F6128();
  LOWORD(v7[0]) = v4;
  BYTE2(v7[0]) = v5;
  AttributeValueSet.value(for:in:)(a1, v7, &v8);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    if (swift_dynamicCast())
    {
      return v7[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1741A30(&v8, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }
}

uint64_t sub_1D19B1430(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 8);
  v6 = *(v1 + 18);
  v8[5] = v3;
  v8[6] = v4;
  v8[3] = &type metadata for BasicClusterPath;
  v8[4] = sub_1D18F6128();
  LOWORD(v8[0]) = v5;
  BYTE2(v8[0]) = v6;

  AttributeValueSet.value(for:in:)(a1, v8, &v9);

  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    if (swift_dynamicCast())
    {
      return v8[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1741A30(&v9, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }
}

uint64_t sub_1D19B1528()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 18);
  v7[3] = &type metadata for BasicClusterPath;
  v7[4] = sub_1D18F6128();
  LOWORD(v7[0]) = v1;
  BYTE2(v7[0]) = v2;
  AttributeValueSet.value(for:in:)(35, v7, &v8);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v3 = swift_dynamicCast();
    v4 = v7[0];
    if (!v3)
    {
      v4 = 0;
    }

    v5 = v3 ^ 1;
  }

  else
  {
    sub_1D1741A30(&v8, &qword_1EC645D58, &unk_1D1E7E530);
    v4 = 0;
    v5 = 1;
  }

  return v4 | (v5 << 8);
}

uint64_t sub_1D19B1610()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 18);
  v7[3] = &type metadata for BasicClusterPath;
  v7[4] = sub_1D18F6128();
  LOWORD(v7[0]) = v1;
  BYTE2(v7[0]) = v2;
  AttributeValueSet.value(for:in:)(36, v7, &v8);
  __swift_destroy_boxed_opaque_existential_1(v7);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v3 = swift_dynamicCast();
    v4 = LOWORD(v7[0]);
    v5 = v3 ^ 1;
    if (!v3)
    {
      v4 = 0;
    }
  }

  else
  {
    sub_1D1741A30(&v8, &qword_1EC645D58, &unk_1D1E7E530);
    v4 = 0;
    v5 = 1;
  }

  return v4 | (v5 << 16);
}

uint64_t sub_1D19B16F4@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 18);
  v8[3] = &type metadata for BasicClusterPath;
  v8[4] = sub_1D18F6128();
  LOWORD(v8[0]) = v3;
  BYTE2(v8[0]) = v4;
  AttributeValueSet.value(for:in:)(82, v8, &v9);
  __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v10)
  {
    sub_1D1741A30(&v9, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_6:
    v6 = 1;
    goto LABEL_7;
  }

  if (LODWORD(v8[0]) < 0xC792BC80)
  {
    sub_1D1E6698C();
    v6 = 0;
LABEL_7:
    v7 = sub_1D1E669FC();
    return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
  }

  __break(1u);
  return result;
}

char *sub_1D19B1844()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  *(&v18 + 1) = &type metadata for BasicClusterPath;
  *&v19 = sub_1D18F6128();
  LOWORD(v17) = v3;
  BYTE2(v17) = v4;
  v21 = v1;
  v22 = v2;
  AttributeValueSet.value(for:in:)(80, &v17, &v23);
  __swift_destroy_boxed_opaque_existential_1(&v17);
  if (!v24)
  {
    sub_1D1741A30(&v23, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6482F8, &qword_1D1E8BEE0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v5 = v17;
  if (!(v17 >> 62))
  {
    v6 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_5;
    }

    goto LABEL_18;
  }

  v6 = sub_1D1E6873C();
  if (!v6)
  {
LABEL_18:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  *&v23 = MEMORY[0x1E69E7CC0];
  result = sub_1D178D694(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = v23;
    if ((v5 & 0xC000000000000001) == 0)
    {
      goto LABEL_8;
    }

LABEL_7:
    for (i = MEMORY[0x1D3891EF0](v8, v5); ; i = *(v5 + 8 * v8 + 32))
    {
      sub_1D19B0540(i, &v17);
      *&v23 = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1D178D694((v11 > 1), v12 + 1, 1);
        v9 = v23;
      }

      *(v9 + 16) = v12 + 1;
      v13 = (v9 + (v12 << 6));
      v14 = v17;
      v15 = v18;
      v16 = v20;
      v13[4] = v19;
      v13[5] = v16;
      v13[2] = v14;
      v13[3] = v15;
      if (v6 - 1 == v8)
      {
        break;
      }

      ++v8;
      if ((v5 & 0xC000000000000001) != 0)
      {
        goto LABEL_7;
      }

LABEL_8:
      ;
    }

    return v9;
  }

  __break(1u);
  return result;
}

char *sub_1D19B1A48()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 18);
  v17 = &type metadata for BasicClusterPath;
  v18 = sub_1D18F6128();
  LOWORD(v15[0]) = v1;
  BYTE2(v15[0]) = v2;
  AttributeValueSet.value(for:in:)(72, v15, &v19);
  __swift_destroy_boxed_opaque_existential_1(v15);
  if (!v20)
  {
    sub_1D1741A30(&v19, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6482F0, &qword_1D1E8BED8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v3 = v15[0];
  if (!(v15[0] >> 62))
  {
    v4 = *((v15[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  v4 = sub_1D1E6873C();
  if (!v4)
  {
LABEL_17:

    return MEMORY[0x1E69E7CC0];
  }

LABEL_5:
  *&v19 = MEMORY[0x1E69E7CC0];
  result = sub_1D178D6B4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v6 = 0;
    v7 = v19;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1D3891EF0](v6, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v6 + 32);
      }

      sub_1D19B07DC(v8, v15);
      v9 = v15[0];
      v10 = v15[1];
      v11 = v16;
      *&v19 = v7;
      v13 = *(v7 + 16);
      v12 = *(v7 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D178D6B4((v12 > 1), v13 + 1, 1);
        v7 = v19;
      }

      *(v7 + 16) = v13 + 1;
      v14 = v7 + 24 * v13;
      *(v14 + 32) = v9;
      ++v6;
      *(v14 + 40) = v10;
      *(v14 + 48) = v11;
    }

    while (v4 != v6);

    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D19B1C58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  v6[5] = v1;
  v6[6] = v2;
  v6[3] = &type metadata for BasicClusterPath;
  v6[4] = sub_1D18F6128();
  LOWORD(v6[0]) = v3;
  BYTE2(v6[0]) = v4;

  AttributeValueSet.value(for:in:)(323551248, v6, &v7);

  __swift_destroy_boxed_opaque_existential_1(v6);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6480F8, &qword_1D1E8A858);
    if (swift_dynamicCast())
    {
      return v6[0];
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1D1741A30(&v7, &qword_1EC645D58, &unk_1D1E7E530);
    return 0;
  }
}

uint64_t sub_1D19B1D68()
{
  v75 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  *(&v72 + 1) = &type metadata for BasicClusterPath;
  *&v73 = sub_1D18F6128();
  LOWORD(v71) = v3;
  BYTE2(v71) = v4;
  *&v68 = v1;
  *(&v68 + 1) = v2;
  AttributeValueSet.value(for:in:)(78, &v71, v69);
  __swift_destroy_boxed_opaque_existential_1(&v71);
  if (v70)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v71;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = *(&v71 + 1);
    }

    else
    {
      v7 = 0xF000000000000000;
    }
  }

  else
  {
    sub_1D1741A30(v69, &qword_1EC645D58, &unk_1D1E7E530);
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  *&v71 = v1;
  *(&v71 + 1) = v2;
  LOWORD(v72) = v3;
  BYTE2(v72) = v4;
  v8 = sub_1D19B1844();
  if (!v8)
  {
    return v6;
  }

  v9 = v8;
  v10 = *(v8 + 2);
  if (!v10)
  {
LABEL_79:

    if (qword_1EE07A0A8 != -1)
    {
LABEL_94:
      swift_once();
    }

    v43 = sub_1D1E6709C();
    __swift_project_value_buffer(v43, qword_1EE07A0B0);
    sub_1D1771B38(v6, v7);
    v44 = sub_1D1E6707C();
    v45 = sub_1D1E6835C();
    sub_1D1716AA4(v6, v7);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v69 = v47;
      *v46 = 136315394;
      *(v46 + 4) = sub_1D1B1312C(0xD00000000000002CLL, 0x80000001D1EC17C0, v69);
      *(v46 + 12) = 2080;
      *&v71 = v6;
      *(&v71 + 1) = v7;
      sub_1D1771B38(v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643838, &qword_1D1E8C020);
      v48 = sub_1D1E6789C();
      v50 = sub_1D1B1312C(v48, v49, v69);

      *(v46 + 14) = v50;
      _os_log_impl(&dword_1D16EC000, v44, v45, "%s: Could not find preset matching active preset handle: %s.", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v47, -1, -1);
      MEMORY[0x1D3893640](v46, -1, -1);
    }

    return v6;
  }

  v11 = 0;
  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7 == 0xC000000000000000;
  }

  v13 = !v12;
  v67 = v13;
  v14 = v7 >> 62;
  v15 = __OFSUB__(HIDWORD(v6), v6);
  v64 = v15;
  v66 = *(v8 + 2);
  v16 = 32;
  while (1)
  {
    if (v11 >= *(v9 + 2))
    {
      __break(1u);
      goto LABEL_94;
    }

    v17 = *&v9[v16 + 48];
    v18 = *&v9[v16];
    v19 = *&v9[v16 + 16];
    v73 = *&v9[v16 + 32];
    v74 = v17;
    v71 = v18;
    v72 = v19;
    v21 = *(&v19 + 1);
    v20 = v73;
    if (v73 >> 60 == 15)
    {
      if (v7 >> 60 == 15)
      {
        v65 = v19;
        sub_1D1771B38(*(&v19 + 1), v73);
        sub_1D17806DC(&v71, v69);
        sub_1D1771B38(v6, v7);

        sub_1D1716AA4(v21, v20);
        goto LABEL_89;
      }

      goto LABEL_22;
    }

    if (v7 >> 60 != 15)
    {
      break;
    }

LABEL_22:
    sub_1D1771B38(*(&v72 + 1), v73);
    sub_1D1771B38(v6, v7);
    sub_1D1716AA4(v21, v20);
    sub_1D1716AA4(v6, v7);
LABEL_23:
    ++v11;
    v16 += 64;
    if (v10 == v11)
    {
      goto LABEL_79;
    }
  }

  v22 = v73 >> 62;
  if (v73 >> 62 != 3)
  {
    v26 = v7 >> 62;
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v29 = *(*(&v19 + 1) + 16);
        v28 = *(*(&v19 + 1) + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_97;
        }

        if (v14 > 1)
        {
          goto LABEL_50;
        }
      }

      else
      {
LABEL_49:
        v27 = 0;
        if (v26 > 1)
        {
LABEL_50:
          if (v26 != 2)
          {
            if (!v27)
            {
LABEL_85:
              v65 = v19;
              sub_1D1771B38(*(&v19 + 1), v73);
              sub_1D17806DC(&v71, v69);
              sub_1D1771B38(v6, v7);
              sub_1D1716AA4(v6, v7);
              goto LABEL_87;
            }

            goto LABEL_58;
          }

          v33 = *(v6 + 16);
          v32 = *(v6 + 24);
          v30 = __OFSUB__(v32, v33);
          v31 = v32 - v33;
          if (v30)
          {
            goto LABEL_95;
          }

LABEL_52:
          if (v27 == v31)
          {
            if (v27 < 1)
            {
              goto LABEL_85;
            }

            v65 = v19;
            if (v22 > 1)
            {
              if (v22 == 2)
              {
                v61 = *(*(&v19 + 1) + 24);
                v63 = *(*(&v19 + 1) + 16);
                sub_1D1771B38(*(&v19 + 1), v73);
                sub_1D1771B38(v21, v20);
                sub_1D17806DC(&v71, v69);
                sub_1D1771B38(v6, v7);
                v35 = sub_1D1E6616C();
                if (v35)
                {
                  v36 = v35;
                  v37 = sub_1D1E6619C();
                  v38 = v63;
                  if (__OFSUB__(v63, v37))
                  {
                    goto LABEL_101;
                  }

                  v60 = (v63 - v37 + v36);
                }

                else
                {
                  v60 = 0;
                  v38 = v63;
                }

                if (__OFSUB__(v61, v38))
                {
                  goto LABEL_100;
                }

                sub_1D1E6618C();
                v34 = v60;
              }

              else
              {
                *(&v68 + 6) = 0;
                *&v68 = 0;
                sub_1D1771B38(*(&v19 + 1), v73);
                sub_1D1771B38(v21, v20);
                sub_1D17806DC(&v71, v69);
                sub_1D1771B38(v6, v7);
                v34 = &v68;
              }
            }

            else if (v22)
            {
              if (*(&v19 + 1) >> 32 < SDWORD2(v19))
              {
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
              }

              sub_1D1771B38(*(&v19 + 1), v73);
              sub_1D1771B38(v21, v20);
              sub_1D17806DC(&v71, v69);
              sub_1D1771B38(v6, v7);
              v39 = sub_1D1E6616C();
              if (v39)
              {
                v62 = v39;
                v40 = sub_1D1E6619C();
                if (__OFSUB__(v21, v40))
                {
                  goto LABEL_102;
                }

                v41 = (v21 - v40 + v62);
              }

              else
              {
                v41 = 0;
              }

              sub_1D1E6618C();
              v34 = v41;
            }

            else
            {
              *&v68 = *(&v19 + 1);
              DWORD2(v68) = v73;
              WORD6(v68) = WORD2(v73);
              sub_1D1771B38(*(&v19 + 1), v73);
              sub_1D1771B38(v21, v20);
              sub_1D17806DC(&v71, v69);
              sub_1D1771B38(v6, v7);
              v34 = &v68;
            }

            sub_1D199EDB4(v34, v6, v7, v69);
            sub_1D1716AA4(v21, v20);
            sub_1D1716AA4(v6, v7);
            v42 = v69[0];
            sub_1D1716AA4(v21, v20);
            if (v42)
            {
              goto LABEL_88;
            }

            v10 = v66;
            goto LABEL_78;
          }

LABEL_58:
          sub_1D1771B38(*(&v72 + 1), v73);
          sub_1D17806DC(&v71, v69);
          sub_1D1771B38(v6, v7);
          sub_1D1716AA4(v6, v7);
          sub_1D1716AA4(v21, v20);
LABEL_78:
          sub_1D1780738(&v71);
          goto LABEL_23;
        }
      }
    }

    else if (v22)
    {
      LODWORD(v27) = HIDWORD(v19) - DWORD2(v19);
      if (__OFSUB__(HIDWORD(v19), DWORD2(v19)))
      {
        goto LABEL_96;
      }

      v27 = v27;
      if (v14 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v27 = BYTE6(v73);
      if (v14 > 1)
      {
        goto LABEL_50;
      }
    }

    v31 = BYTE6(v7);
    if (v26)
    {
      v31 = HIDWORD(v6) - v6;
      if (v64)
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    goto LABEL_52;
  }

  if (*(&v19 + 1))
  {
    v23 = 0;
  }

  else
  {
    v23 = v73 == 0xC000000000000000;
  }

  v25 = !v23 || v7 >> 62 != 3;
  if ((v25 | v67))
  {
    v26 = v7 >> 62;
    goto LABEL_49;
  }

  v65 = v19;
  sub_1D1771B38(0, 0xC000000000000000);
  sub_1D17806DC(&v71, v69);
  sub_1D1771B38(0, 0xC000000000000000);
  sub_1D1716AA4(0, 0xC000000000000000);
  v21 = 0;
LABEL_87:
  sub_1D1716AA4(v21, v20);
LABEL_88:

LABEL_89:
  if (qword_1EE07A0A8 == -1)
  {
    goto LABEL_90;
  }

LABEL_98:
  swift_once();
LABEL_90:
  v52 = sub_1D1E6709C();
  __swift_project_value_buffer(v52, qword_1EE07A0B0);
  sub_1D17806DC(&v71, v69);
  v53 = sub_1D1E6707C();
  v54 = sub_1D1E6835C();
  sub_1D1780738(&v71);
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v69 = v56;
    *v55 = 136315394;
    *(v55 + 4) = sub_1D1B1312C(0xD00000000000002CLL, 0x80000001D1EC17C0, v69);
    *(v55 + 12) = 2080;
    LOBYTE(v68) = v65;
    v57 = ThermostatPresetScenario.label.getter();
    v59 = sub_1D1B1312C(v57, v58, v69);

    *(v55 + 14) = v59;
    _os_log_impl(&dword_1D16EC000, v53, v54, "%s: Current active preset is: %s.", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v56, -1, -1);
    MEMORY[0x1D3893640](v55, -1, -1);
    sub_1D1780738(&v71);
  }

  else
  {

    sub_1D1780738(&v71);
  }

  return v6;
}

uint64_t sub_1D19B2748()
{
  v75 = *MEMORY[0x1E69E9840];
  v2 = *v0;
  v1 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  *&v68 = *v0;
  *(&v68 + 1) = v1;
  *(&v72 + 1) = &type metadata for BasicClusterPath;
  *&v73 = sub_1D18F6128();
  LOWORD(v71) = v3;
  BYTE2(v71) = v4;

  AttributeValueSet.value(for:in:)(323551241, &v71, v69);

  __swift_destroy_boxed_opaque_existential_1(&v71);
  if (v70)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v5 = swift_dynamicCast();
    if (v5)
    {
      v6 = v71;
    }

    else
    {
      v6 = 0;
    }

    if (v5)
    {
      v7 = *(&v71 + 1);
    }

    else
    {
      v7 = 0xF000000000000000;
    }
  }

  else
  {
    sub_1D1741A30(v69, &qword_1EC645D58, &unk_1D1E7E530);
    v6 = 0;
    v7 = 0xF000000000000000;
  }

  *&v71 = v2;
  *(&v71 + 1) = v1;
  LOWORD(v72) = v3;
  BYTE2(v72) = v4;
  v8 = sub_1D19B1844();
  if (!v8)
  {
    return v6;
  }

  v9 = v8;
  v10 = *(v8 + 2);
  if (!v10)
  {
LABEL_79:

    if (qword_1EE07A0A8 != -1)
    {
LABEL_94:
      swift_once();
    }

    v43 = sub_1D1E6709C();
    __swift_project_value_buffer(v43, qword_1EE07A0B0);
    sub_1D1771B38(v6, v7);
    v44 = sub_1D1E6707C();
    v45 = sub_1D1E6835C();
    sub_1D1716AA4(v6, v7);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v69 = v47;
      *v46 = 136315394;
      *(v46 + 4) = sub_1D1B1312C(0xD00000000000002CLL, 0x80000001D1EC17C0, v69);
      *(v46 + 12) = 2080;
      *&v71 = v6;
      *(&v71 + 1) = v7;
      sub_1D1771B38(v6, v7);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643838, &qword_1D1E8C020);
      v48 = sub_1D1E6789C();
      v50 = sub_1D1B1312C(v48, v49, v69);

      *(v46 + 14) = v50;
      _os_log_impl(&dword_1D16EC000, v44, v45, "%s: Could not find preset matching suggested preset handle: %s.", v46, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v47, -1, -1);
      MEMORY[0x1D3893640](v46, -1, -1);
    }

    return v6;
  }

  v11 = 0;
  if (v6)
  {
    v12 = 0;
  }

  else
  {
    v12 = v7 == 0xC000000000000000;
  }

  v13 = !v12;
  v67 = v13;
  v14 = v7 >> 62;
  v15 = __OFSUB__(HIDWORD(v6), v6);
  v64 = v15;
  v66 = *(v8 + 2);
  v16 = 32;
  while (1)
  {
    if (v11 >= *(v9 + 2))
    {
      __break(1u);
      goto LABEL_94;
    }

    v17 = *&v9[v16 + 48];
    v18 = *&v9[v16];
    v19 = *&v9[v16 + 16];
    v73 = *&v9[v16 + 32];
    v74 = v17;
    v71 = v18;
    v72 = v19;
    v21 = *(&v19 + 1);
    v20 = v73;
    if (v73 >> 60 == 15)
    {
      if (v7 >> 60 == 15)
      {
        v65 = v19;
        sub_1D1771B38(*(&v19 + 1), v73);
        sub_1D17806DC(&v71, v69);
        sub_1D1771B38(v6, v7);

        sub_1D1716AA4(v21, v20);
        goto LABEL_89;
      }

      goto LABEL_22;
    }

    if (v7 >> 60 != 15)
    {
      break;
    }

LABEL_22:
    sub_1D1771B38(*(&v72 + 1), v73);
    sub_1D1771B38(v6, v7);
    sub_1D1716AA4(v21, v20);
    sub_1D1716AA4(v6, v7);
LABEL_23:
    ++v11;
    v16 += 64;
    if (v10 == v11)
    {
      goto LABEL_79;
    }
  }

  v22 = v73 >> 62;
  if (v73 >> 62 != 3)
  {
    v26 = v7 >> 62;
    if (v22 > 1)
    {
      if (v22 == 2)
      {
        v29 = *(*(&v19 + 1) + 16);
        v28 = *(*(&v19 + 1) + 24);
        v30 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v30)
        {
          goto LABEL_97;
        }

        if (v14 > 1)
        {
          goto LABEL_50;
        }
      }

      else
      {
LABEL_49:
        v27 = 0;
        if (v26 > 1)
        {
LABEL_50:
          if (v26 != 2)
          {
            if (!v27)
            {
LABEL_85:
              v65 = v19;
              sub_1D1771B38(*(&v19 + 1), v73);
              sub_1D17806DC(&v71, v69);
              sub_1D1771B38(v6, v7);
              sub_1D1716AA4(v6, v7);
              goto LABEL_87;
            }

            goto LABEL_58;
          }

          v33 = *(v6 + 16);
          v32 = *(v6 + 24);
          v30 = __OFSUB__(v32, v33);
          v31 = v32 - v33;
          if (v30)
          {
            goto LABEL_95;
          }

LABEL_52:
          if (v27 == v31)
          {
            if (v27 < 1)
            {
              goto LABEL_85;
            }

            v65 = v19;
            if (v22 > 1)
            {
              if (v22 == 2)
              {
                v61 = *(*(&v19 + 1) + 24);
                v63 = *(*(&v19 + 1) + 16);
                sub_1D1771B38(*(&v19 + 1), v73);
                sub_1D1771B38(v21, v20);
                sub_1D17806DC(&v71, v69);
                sub_1D1771B38(v6, v7);
                v35 = sub_1D1E6616C();
                if (v35)
                {
                  v36 = v35;
                  v37 = sub_1D1E6619C();
                  v38 = v63;
                  if (__OFSUB__(v63, v37))
                  {
                    goto LABEL_101;
                  }

                  v60 = (v63 - v37 + v36);
                }

                else
                {
                  v60 = 0;
                  v38 = v63;
                }

                if (__OFSUB__(v61, v38))
                {
                  goto LABEL_100;
                }

                sub_1D1E6618C();
                v34 = v60;
              }

              else
              {
                *(&v68 + 6) = 0;
                *&v68 = 0;
                sub_1D1771B38(*(&v19 + 1), v73);
                sub_1D1771B38(v21, v20);
                sub_1D17806DC(&v71, v69);
                sub_1D1771B38(v6, v7);
                v34 = &v68;
              }
            }

            else if (v22)
            {
              if (*(&v19 + 1) >> 32 < SDWORD2(v19))
              {
                __break(1u);
LABEL_100:
                __break(1u);
LABEL_101:
                __break(1u);
LABEL_102:
                __break(1u);
              }

              sub_1D1771B38(*(&v19 + 1), v73);
              sub_1D1771B38(v21, v20);
              sub_1D17806DC(&v71, v69);
              sub_1D1771B38(v6, v7);
              v39 = sub_1D1E6616C();
              if (v39)
              {
                v62 = v39;
                v40 = sub_1D1E6619C();
                if (__OFSUB__(v21, v40))
                {
                  goto LABEL_102;
                }

                v41 = (v21 - v40 + v62);
              }

              else
              {
                v41 = 0;
              }

              sub_1D1E6618C();
              v34 = v41;
            }

            else
            {
              *&v68 = *(&v19 + 1);
              DWORD2(v68) = v73;
              WORD6(v68) = WORD2(v73);
              sub_1D1771B38(*(&v19 + 1), v73);
              sub_1D1771B38(v21, v20);
              sub_1D17806DC(&v71, v69);
              sub_1D1771B38(v6, v7);
              v34 = &v68;
            }

            sub_1D199EDB4(v34, v6, v7, v69);
            sub_1D1716AA4(v21, v20);
            sub_1D1716AA4(v6, v7);
            v42 = v69[0];
            sub_1D1716AA4(v21, v20);
            if (v42)
            {
              goto LABEL_88;
            }

            v10 = v66;
            goto LABEL_78;
          }

LABEL_58:
          sub_1D1771B38(*(&v72 + 1), v73);
          sub_1D17806DC(&v71, v69);
          sub_1D1771B38(v6, v7);
          sub_1D1716AA4(v6, v7);
          sub_1D1716AA4(v21, v20);
LABEL_78:
          sub_1D1780738(&v71);
          goto LABEL_23;
        }
      }
    }

    else if (v22)
    {
      LODWORD(v27) = HIDWORD(v19) - DWORD2(v19);
      if (__OFSUB__(HIDWORD(v19), DWORD2(v19)))
      {
        goto LABEL_96;
      }

      v27 = v27;
      if (v14 > 1)
      {
        goto LABEL_50;
      }
    }

    else
    {
      v27 = BYTE6(v73);
      if (v14 > 1)
      {
        goto LABEL_50;
      }
    }

    v31 = BYTE6(v7);
    if (v26)
    {
      v31 = HIDWORD(v6) - v6;
      if (v64)
      {
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }
    }

    goto LABEL_52;
  }

  if (*(&v19 + 1))
  {
    v23 = 0;
  }

  else
  {
    v23 = v73 == 0xC000000000000000;
  }

  v25 = !v23 || v7 >> 62 != 3;
  if ((v25 | v67))
  {
    v26 = v7 >> 62;
    goto LABEL_49;
  }

  v65 = v19;
  sub_1D1771B38(0, 0xC000000000000000);
  sub_1D17806DC(&v71, v69);
  sub_1D1771B38(0, 0xC000000000000000);
  sub_1D1716AA4(0, 0xC000000000000000);
  v21 = 0;
LABEL_87:
  sub_1D1716AA4(v21, v20);
LABEL_88:

LABEL_89:
  if (qword_1EE07A0A8 == -1)
  {
    goto LABEL_90;
  }

LABEL_98:
  swift_once();
LABEL_90:
  v52 = sub_1D1E6709C();
  __swift_project_value_buffer(v52, qword_1EE07A0B0);
  sub_1D17806DC(&v71, v69);
  v53 = sub_1D1E6707C();
  v54 = sub_1D1E6835C();
  sub_1D1780738(&v71);
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    *v69 = v56;
    *v55 = 136315394;
    *(v55 + 4) = sub_1D1B1312C(0xD00000000000002CLL, 0x80000001D1EC17C0, v69);
    *(v55 + 12) = 2080;
    LOBYTE(v68) = v65;
    v57 = ThermostatPresetScenario.label.getter();
    v59 = sub_1D1B1312C(v57, v58, v69);

    *(v55 + 14) = v59;
    _os_log_impl(&dword_1D16EC000, v53, v54, "%s: Current suggested preset is: %s.", v55, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v56, -1, -1);
    MEMORY[0x1D3893640](v55, -1, -1);
    sub_1D1780738(&v71);
  }

  else
  {

    sub_1D1780738(&v71);
  }

  return v6;
}

uint64_t sub_1D19B313C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 8);
  v6 = *(v1 + 18);
  v10[5] = v3;
  v10[6] = v4;
  v10[3] = &type metadata for BasicClusterPath;
  v10[4] = sub_1D18F6128();
  LOWORD(v10[0]) = v5;
  BYTE2(v10[0]) = v6;

  AttributeValueSet.value(for:in:)(323551243, v10, &v11);

  __swift_destroy_boxed_opaque_existential_1(v10);
  if (!v12)
  {
    sub_1D1741A30(&v11, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v7 = 1;
    goto LABEL_6;
  }

  sub_1D1E6698C();
  v7 = 0;
LABEL_6:
  v8 = sub_1D1E669FC();
  return (*(*(v8 - 8) + 56))(a1, v7, 1, v8);
}

uint64_t sub_1D19B3278@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 8);
  v6 = *(v1 + 18);
  v11[5] = v3;
  v11[6] = v4;
  v11[3] = &type metadata for BasicClusterPath;
  v11[4] = sub_1D18F6128();
  LOWORD(v11[0]) = v5;
  BYTE2(v11[0]) = v6;

  AttributeValueSet.value(for:in:)(323551242, v11, &v12);

  __swift_destroy_boxed_opaque_existential_1(v11);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v7 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
    v8 = swift_dynamicCast();
    return (*(*(v7 - 8) + 56))(a1, v8 ^ 1u, 1, v7);
  }

  else
  {
    sub_1D1741A30(&v12, &qword_1EC645D58, &unk_1D1E7E530);
    v10 = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
    return (*(*(v10 - 8) + 56))(a1, 1, 1, v10);
  }
}

uint64_t sub_1D19B33D0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 8);
  v4 = *(v0 + 18);
  v9[5] = v1;
  v9[6] = v2;
  v9[3] = &type metadata for BasicClusterPath;
  v9[4] = sub_1D18F6128();
  LOWORD(v9[0]) = v3;
  BYTE2(v9[0]) = v4;

  AttributeValueSet.value(for:in:)(323551245, v9, &v10);

  __swift_destroy_boxed_opaque_existential_1(v9);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v5 = swift_dynamicCast();
    v6 = v9[0];
    if (!v5)
    {
      v6 = 0;
    }

    v7 = v5 ^ 1;
  }

  else
  {
    sub_1D1741A30(&v10, &qword_1EC645D58, &unk_1D1E7E530);
    v6 = 0;
    v7 = 1;
  }

  return v6 | (v7 << 8);
}

uint64_t sub_1D19B34D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v5 = *v2;
  v6 = v2[1];
  v7 = *(v2 + 8);
  v8 = *(v2 + 18);
  v11[5] = v5;
  v11[6] = v6;
  v11[3] = &type metadata for BasicClusterPath;
  v11[4] = sub_1D18F6128();
  LOWORD(v11[0]) = v7;
  BYTE2(v11[0]) = v8;

  AttributeValueSet.value(for:in:)(a1, v11, &v12);

  __swift_destroy_boxed_opaque_existential_1(v11);
  if (!v13)
  {
    result = sub_1D1741A30(&v12, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_6:
    v10 = 3;
    goto LABEL_7;
  }

  v10 = v11[0];
  if (LOBYTE(v11[0]) >= 3u)
  {
    v10 = 3;
  }

LABEL_7:
  *a2 = v10;
  return result;
}

uint64_t sub_1D19B3600@<X0>(char *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 8);
  v6 = *(v1 + 18);
  v8[5] = v3;
  v8[6] = v4;
  v8[3] = &type metadata for BasicClusterPath;
  v8[4] = sub_1D18F6128();
  LOWORD(v8[0]) = v5;
  BYTE2(v8[0]) = v6;

  AttributeValueSet.value(for:in:)(323551247, v8, &v9);

  __swift_destroy_boxed_opaque_existential_1(v8);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    result = swift_dynamicCast();
    if (result)
    {
      return StaticThermostatClusterGroup.ActivePresetChangeReason.init(rawValue:)(LOBYTE(v8[0]), a1);
    }
  }

  else
  {
    result = sub_1D1741A30(&v9, &qword_1EC645D58, &unk_1D1E7E530);
  }

  *a1 = 6;
  return result;
}

uint64_t sub_1D19B36F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 8);
  v6 = *(v1 + 18);
  v8[5] = v3;
  v8[6] = v4;
  v8[3] = &type metadata for BasicClusterPath;
  v8[4] = sub_1D18F6128();
  LOWORD(v8[0]) = v5;
  BYTE2(v8[0]) = v6;

  AttributeValueSet.value(for:in:)(323551249, v8, &v9);

  __swift_destroy_boxed_opaque_existential_1(v8);
  if (!v10)
  {
    result = sub_1D1741A30(&v9, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_5;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_5:
    *(a1 + 4) = 0;
    *a1 = 2;
  }

  return result;
}

unint64_t sub_1D19B37E8(char a1)
{
  v2 = 0xD00000000000001DLL;
  if (a1 < 0)
  {
    v4 = a1 & 0x7F;
    if (v4 > 3)
    {
      v7 = 0xD00000000000001BLL;
      if (v4 != 6)
      {
        v7 = 0xD000000000000019;
      }

      if (v4 != 4)
      {
        v2 = 0xD000000000000027;
      }

      if ((a1 & 0x7Fu) <= 5)
      {
        return v2;
      }

      else
      {
        return v7;
      }
    }

    else
    {
      v5 = 0xD000000000000014;
      v6 = 0xD00000000000001ALL;
      if (v4 != 2)
      {
        v6 = 0xD00000000000001FLL;
      }

      if ((a1 & 0x7F) != 0)
      {
        v5 = 0xD000000000000016;
      }

      if ((a1 & 0x7Fu) <= 1)
      {
        return v5;
      }

      else
      {
        return v6;
      }
    }
  }

  else
  {
    result = 0xD000000000000019;
    switch(a1)
    {
      case 1:
      case 8:
        result = 0xD000000000000017;
        break;
      case 2:
        result = 0xD000000000000024;
        break;
      case 3:
        result = 0xD00000000000001ALL;
        break;
      case 4:
      case 12:
      case 13:
        result = 0xD00000000000001DLL;
        break;
      case 5:
        result = 0xD00000000000001BLL;
        break;
      case 6:
        result = 0xD000000000000013;
        break;
      case 7:
        result = 0xD000000000000016;
        break;
      case 9:
        result = 0xD000000000000021;
        break;
      case 10:
        result = 0xD00000000000002BLL;
        break;
      case 11:
        result = 0xD000000000000026;
        break;
      case 14:
        result = 0xD000000000000023;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1D19B3A3C()
{
  result = sub_1D179C2A8(&unk_1F4D5FFE0);
  qword_1EC6BE128 = result;
  return result;
}

uint64_t sub_1D19B3A64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  sub_1D1741970(a1, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  result = swift_dynamicCast();
  if (!result)
  {
    goto LABEL_8;
  }

  sub_1D19B4490(v7, v3, v8);

  if (!v8[3])
  {
    result = sub_1D1741A30(v8, &qword_1EC649700, &qword_1D1E6E910);
    goto LABEL_8;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648310, &qword_1D1E8BEF0);
  result = swift_dynamicCast();
  if (!result)
  {
LABEL_8:
    *a3 = 0u;
    *(a3 + 16) = 0u;
    return result;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      *(a3 + 24) = type metadata accessor for StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset(0);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
      return StaticThermostatClusterGroup.PresetsConfig.SuggestedPreset.init(from:)(v7, boxed_opaque_existential_1);
    }

    else
    {
      *(a3 + 24) = &type metadata for StaticThermostatClusterGroup.PresetsConfig.HoldPolicy;
      return StaticThermostatClusterGroup.PresetsConfig.HoldPolicy.init(from:)(v7, a3);
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }
}

uint64_t sub_1D19B3BB0@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v17[0] = *a1;
  result = MatterThermostatPresetContextTag.dataTypeString.getter();
  if (v6)
  {
    v7 = result;
    v8 = v6;
    v9 = sub_1D1E6781C();
    if (*(a2 + 16))
    {
      v11 = sub_1D171D2F0(v9, v10);
      v13 = v12;

      if (v13)
      {
        sub_1D1741970(*(a2 + 56) + 32 * v11, v17);
        if (swift_dynamicCast())
        {
          if (v15 == v7 && v8 == v16)
          {

LABEL_13:
            sub_1D19B3D08(v15, v16, a2, a3);
          }

          v14 = sub_1D1E6904C();

          if (v14)
          {
            goto LABEL_13;
          }
        }
      }
    }

    else
    {
    }
  }

  *a3 = 0u;
  a3[1] = 0u;
  return result;
}

double sub_1D19B3D08@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (sub_1D1E6781C() == a1 && v8 == a2)
  {
  }

  else
  {
    v10 = sub_1D1E6904C();

    if ((v10 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v11 = sub_1D1E6781C();
  if (*(a3 + 16))
  {
    v13 = sub_1D171D2F0(v11, v12);
    v15 = v14;

    if (v15)
    {
      sub_1D1741970(*(a3 + 56) + 32 * v13, v35);
      v16 = sub_1D1741B10(0, &qword_1EC647ED0, 0x1E695DEF0);
      if (swift_dynamicCast())
      {
        v18 = v34;
        *(a4 + 24) = v16;
LABEL_29:
        *a4 = v18;
        return result;
      }
    }
  }

  else
  {
  }

LABEL_13:
  if (sub_1D1E6781C() == a1 && v19 == a2)
  {
  }

  else
  {
    v21 = sub_1D1E6904C();

    if ((v21 & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  v22 = sub_1D1E6781C();
  if (!*(a3 + 16))
  {

    goto LABEL_25;
  }

  v24 = sub_1D171D2F0(v22, v23);
  v26 = v25;

  if (v26)
  {
    sub_1D1741970(*(a3 + 56) + 32 * v24, v35);
    v27 = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
    if (swift_dynamicCast())
    {
      v18 = v34;
      *(a4 + 24) = v27;
      goto LABEL_29;
    }
  }

LABEL_25:
  v28 = sub_1D1E6781C();
  if (*(a3 + 16))
  {
    v30 = sub_1D171D2F0(v28, v29);
    v32 = v31;

    if (v32)
    {
      sub_1D1741970(*(a3 + 56) + 32 * v30, v35);
      v33 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      if (swift_dynamicCast())
      {
        v18 = v34;
        *(a4 + 24) = v33;
        goto LABEL_29;
      }
    }
  }

  else
  {
  }

  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

uint64_t sub_1D19B3FC8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = sub_1D18D6668(MEMORY[0x1E69E7CC0]);
  v48 = v4;
  v5 = *(a1 + 16);
  if (!v5)
  {
    v43 = v4;
LABEL_37:
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648310, &qword_1D1E8BEF0);
    a2[3] = result;
    *a2 = v43;
    return result;
  }

  v44 = a2;
  v6 = (a1 + 32);
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  while (1)
  {
    v7 = *v6;
    v8 = sub_1D1E6781C();
    v10 = v9;
    if (*(v7 + 16))
    {
      v11 = v8;

      v12 = sub_1D171D2F0(v11, v10);
      v14 = v13;

      if (v14)
      {
        sub_1D1741970(*(v7 + 56) + 32 * v12, v47);
        if (swift_dynamicCast())
        {
          v15 = v45;
          goto LABEL_9;
        }
      }
    }

    else
    {
    }

    v15 = 0;
LABEL_9:
    v16 = v15;
    v17 = sub_1D1E684DC();
    v18 = v17;
    if (!v15)
    {

      v40 = v16;
      v41 = sub_1D1E684DC();

      goto LABEL_36;
    }

    v19 = sub_1D1E684FC();

    if (v19)
    {
      v20 = 0;
LABEL_13:

      goto LABEL_15;
    }

    v21 = v16;
    v20 = 1;
    v22 = sub_1D1E684DC();
    v23 = sub_1D1E684FC();

    if (v23)
    {
      goto LABEL_13;
    }

    v20 = 2;
    v24 = sub_1D1E684DC();
    v25 = sub_1D1E684FC();

    if ((v25 & 1) == 0)
    {
      break;
    }

LABEL_15:
    v26 = sub_1D1E6781C();
    if (!*(v7 + 16))
    {

LABEL_34:

      goto LABEL_36;
    }

    v28 = sub_1D171D2F0(v26, v27);
    v30 = v29;

    if ((v30 & 1) == 0)
    {
      goto LABEL_34;
    }

    sub_1D1741970(*(v7 + 56) + 32 * v28, v47);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_36;
    }

    v31 = sub_1D1E6781C();
    v33 = v32;
    v34 = sub_1D1E6781C();
    if (*(v45 + 16))
    {
      v36 = sub_1D171D2F0(v34, v35);
      v38 = v37;

      if (v38)
      {
        sub_1D1741970(*(v45 + 56) + 32 * v36, v47);
        if (swift_dynamicCast())
        {
          if (v45 == v31 && v46 == v33)
          {

LABEL_29:
            sub_1D19B3D08(v45, v46, v45, v47);

            goto LABEL_26;
          }

          v39 = sub_1D1E6904C();

          if (v39)
          {
            goto LABEL_29;
          }
        }
      }
    }

    else
    {
    }

    memset(v47, 0, sizeof(v47));
LABEL_26:
    sub_1D1B0E808(v47, v20 | 0x40u);

    ++v6;
    if (!--v5)
    {
      v43 = v48;
      a2 = v44;
      goto LABEL_37;
    }
  }

LABEL_36:

  *v44 = 0u;
  *(v44 + 1) = 0u;
  return result;
}

double sub_1D19B4490@<D0>(uint64_t a1@<X0>, char a2@<W1>, unint64_t *a3@<X8>)
{
  v6 = sub_1D18D6668(MEMORY[0x1E69E7CC0]);
  v31 = v6;
  v7 = *(a1 + 16);
  if (!v7)
  {
    v25 = v6;
LABEL_17:
    a3[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648310, &qword_1D1E8BEF0);
    *a3 = v25;
    return result;
  }

  v28 = a3;
  v8 = (a1 + 32);
  while (1)
  {
    v9 = *v8;
    v10 = sub_1D1E6781C();
    v12 = v11;
    if (!*(v9 + 16))
    {

LABEL_9:
      v16 = 0;
      goto LABEL_10;
    }

    v13 = v10;

    v14 = sub_1D171D2F0(v13, v12);
    LOBYTE(v13) = v15;

    if ((v13 & 1) == 0)
    {
      goto LABEL_9;
    }

    sub_1D1741970(*(v9 + 56) + 32 * v14, v30);
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v16 = swift_dynamicCast() ? v29 : 0;
LABEL_10:
    v17 = v16;
    sub_1D197ED64(v16, a2 + 2, v30);
    v18 = LOBYTE(v30[0]);
    if (LOBYTE(v30[0]) >= 0xF8u)
    {

      goto LABEL_22;
    }

    v19 = sub_1D1E6781C();
    if (!*(v9 + 16))
    {

LABEL_20:

      v27 = v28;

      goto LABEL_23;
    }

    v21 = sub_1D171D2F0(v19, v20);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_20;
    }

    sub_1D1741970(*(v9 + 56) + 32 * v21, v30);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    v24 = v29;
    LOBYTE(v29) = v18;
    sub_1D19B3BB0(&v29, v24, v30);

    sub_1D1B0E808(v30, v18);

    ++v8;
    if (!--v7)
    {
      v25 = v31;
      a3 = v28;
      goto LABEL_17;
    }
  }

LABEL_22:

  v27 = v28;
LABEL_23:
  result = 0.0;
  *v27 = 0u;
  *(v27 + 1) = 0u;
  return result;
}

void *sub_1D19B473C(uint64_t *a1, char a2, char a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
  v4 = 0;
  v149 = MEMORY[0x1E69E7CC0];
  v148 = a1;
  while (1)
  {
    v5 = byte_1F4D65750[v4 + 32];
    v6 = sub_1D1E6821C();
    v154[0] = sub_1D1E6781C();
    v154[1] = v7;
    v8 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v154[5] = v8;
    v154[2] = v6;
    v9 = sub_1D1E68BCC();
    sub_1D1741C08(v154, &v152, &qword_1EC646238, &qword_1D1E7E8D0);
    v10 = v152;
    v11 = v6;

    v12 = sub_1D171D2F0(v10, *(&v10 + 1));
    if (v13)
    {
      break;
    }

    v9[(v12 >> 6) + 8] |= 1 << v12;
    *(v9[6] + 16 * v12) = v10;
    sub_1D1742194(&v153, (v9[7] + 32 * v12));
    v14 = v9[2];
    v15 = __OFADD__(v14, 1);
    v16 = v14 + 1;
    if (v15)
    {
      goto LABEL_88;
    }

    v9[2] = v16;

    sub_1D1741A30(v154, &qword_1EC646238, &qword_1D1E7E8D0);
    if (v5 > 2)
    {
      if (v5 != 3)
      {
        if (v5 == 4)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D1E73A90;
          *(inited + 32) = sub_1D1E6781C();
          *(inited + 40) = v36;
          v37 = sub_1D1E6781C();
          *(inited + 72) = MEMORY[0x1E69E6158];
          *(inited + 48) = v37;
          *(inited + 56) = v38;
          *(inited + 80) = sub_1D1E6781C();
          *(inited + 88) = v39;
          v40 = a1[1];
          *(inited + 120) = MEMORY[0x1E69E76D8];
          *(inited + 96) = v40;
          v41 = sub_1D18D6538(inited);
          swift_setDeallocating();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
          swift_arrayDestroy();
          v42 = sub_1D1E6781C();
          v44 = v43;
          *(&v153 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
          *&v152 = v41;
          sub_1D1742194(&v152, v151);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v150 = v9;
          v28 = sub_1D171D2F0(v42, v44);
          v47 = v9[2];
          v48 = (v46 & 1) == 0;
          v15 = __OFADD__(v47, v48);
          v49 = v47 + v48;
          if (v15)
          {
            goto LABEL_91;
          }

          v50 = v46;
          if (v9[3] < v49)
          {
            sub_1D1726F00(v49, isUniquelyReferenced_nonNull_native);
            v28 = sub_1D171D2F0(v42, v44);
            if ((v50 & 1) != (v51 & 1))
            {
              goto LABEL_99;
            }

LABEL_44:
            if ((v50 & 1) == 0)
            {
              goto LABEL_45;
            }

LABEL_59:
            v129 = v28;

            v9 = v150;
            v117 = (v150[7] + 32 * v129);
LABEL_60:
            __swift_destroy_boxed_opaque_existential_1(v117);
            sub_1D1742194(v151, v117);
LABEL_74:
            a1 = v148;
LABEL_75:
            v138 = sub_1D1E6781C();
            if (v9[2])
            {
              v140 = sub_1D171D2F0(v138, v139);
              v142 = v141;

              if (v142)
              {
                sub_1D1741970(v9[7] + 32 * v140, &v152);
                sub_1D1741A30(&v152, &qword_1EC649700, &qword_1D1E6E910);
                v143 = sub_1D18A77C0(v9);
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v149 = sub_1D177D340(0, v149[2] + 1, 1, v149);
                }

                v145 = v149[2];
                v144 = v149[3];
                if (v145 >= v144 >> 1)
                {
                  v149 = sub_1D177D340((v144 > 1), v145 + 1, 1, v149);
                }

                v149[2] = v145 + 1;
                v149[v145 + 4] = v143;
                goto LABEL_84;
              }
            }

            else
            {
            }

            v152 = 0u;
            v153 = 0u;

            sub_1D1741A30(&v152, &qword_1EC649700, &qword_1D1E6E910);
LABEL_84:

            goto LABEL_85;
          }

          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_44;
          }

          v132 = v28;
          sub_1D1738144();
          v28 = v132;
          if (v50)
          {
            goto LABEL_59;
          }

LABEL_45:
          v9[(v28 >> 6) + 8] |= 1 << v28;
          v115 = (v9[6] + 16 * v28);
          *v115 = v42;
          v115[1] = v44;
          sub_1D1742194(v151, (v9[7] + 32 * v28));
          v116 = v9[2];
          v15 = __OFADD__(v116, 1);
          v112 = v116 + 1;
          if (v15)
          {
            goto LABEL_95;
          }

LABEL_73:
          v9[2] = v112;
          goto LABEL_74;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
        v75 = swift_allocObject();
        *(v75 + 16) = xmmword_1D1E73A90;
        *(v75 + 32) = sub_1D1E6781C();
        *(v75 + 40) = v76;
        v77 = sub_1D1E6781C();
        *(v75 + 72) = MEMORY[0x1E69E6158];
        *(v75 + 48) = v77;
        *(v75 + 56) = v78;
        *(v75 + 80) = sub_1D1E6781C();
        *(v75 + 88) = v79;
        v80 = sub_1D1E67D2C();
        *(v75 + 120) = v8;
        *(v75 + 96) = v80;
        v81 = sub_1D18D6538(v75);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v82 = sub_1D1E6781C();
        v84 = v83;
        *(&v153 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
        *&v152 = v81;
        sub_1D1742194(&v152, v151);
        v85 = swift_isUniquelyReferenced_nonNull_native();
        v87 = sub_1D171D2F0(v82, v84);
        v88 = v9[2];
        v89 = (v86 & 1) == 0;
        v90 = v88 + v89;
        if (__OFADD__(v88, v89))
        {
          goto LABEL_90;
        }

        v91 = v86;
        if (v9[3] >= v90)
        {
          if (v85)
          {
            if ((v86 & 1) == 0)
            {
              goto LABEL_68;
            }
          }

          else
          {
            sub_1D1738144();
            if ((v91 & 1) == 0)
            {
              goto LABEL_68;
            }
          }
        }

        else
        {
          sub_1D1726F00(v90, v85);
          v92 = sub_1D171D2F0(v82, v84);
          if ((v91 & 1) != (v93 & 1))
          {
            goto LABEL_99;
          }

          v87 = v92;
          if ((v91 & 1) == 0)
          {
LABEL_68:
            v9[(v87 >> 6) + 8] |= 1 << v87;
            v133 = (v9[6] + 16 * v87);
            *v133 = v82;
            v133[1] = v84;
            sub_1D1742194(v151, (v9[7] + 32 * v87));
            v134 = v9[2];
            v15 = __OFADD__(v134, 1);
            v112 = v134 + 1;
            if (v15)
            {
              goto LABEL_94;
            }

            goto LABEL_73;
          }
        }

        v117 = (v9[7] + 32 * v87);
        goto LABEL_60;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      v52 = swift_allocObject();
      *(v52 + 16) = xmmword_1D1E73A90;
      *(v52 + 32) = sub_1D1E6781C();
      *(v52 + 40) = v53;
      v54 = sub_1D1E6781C();
      *(v52 + 72) = MEMORY[0x1E69E6158];
      *(v52 + 48) = v54;
      *(v52 + 56) = v55;
      *(v52 + 80) = sub_1D1E6781C();
      *(v52 + 88) = v56;
      v57 = *a1;
      *(v52 + 120) = MEMORY[0x1E69E76D8];
      *(v52 + 96) = v57;
      v58 = sub_1D18D6538(v52);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
      swift_arrayDestroy();
      swift_deallocClassInstance();
      v59 = sub_1D1E6781C();
      v61 = v60;
      *(&v153 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      *&v152 = v58;
      sub_1D1742194(&v152, v151);
      v62 = swift_isUniquelyReferenced_nonNull_native();
      v150 = v9;
      v28 = sub_1D171D2F0(v59, v61);
      v64 = v9[2];
      v65 = (v63 & 1) == 0;
      v15 = __OFADD__(v64, v65);
      v66 = v64 + v65;
      if (v15)
      {
        goto LABEL_89;
      }

      v67 = v63;
      if (v9[3] < v66)
      {
        sub_1D1726F00(v66, v62);
        v28 = sub_1D171D2F0(v59, v61);
        if ((v67 & 1) != (v68 & 1))
        {
          goto LABEL_99;
        }

        goto LABEL_34;
      }

      if (v62)
      {
LABEL_34:
        if (v67)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v130 = v28;
        sub_1D1738144();
        v28 = v130;
        if (v67)
        {
          goto LABEL_59;
        }
      }

      v9[(v28 >> 6) + 8] |= 1 << v28;
      v110 = (v9[6] + 16 * v28);
      *v110 = v59;
      v110[1] = v61;
      sub_1D1742194(v151, (v9[7] + 32 * v28));
      v111 = v9[2];
      v15 = __OFADD__(v111, 1);
      v112 = v111 + 1;
      if (v15)
      {
        goto LABEL_96;
      }

      goto LABEL_73;
    }

    if (v5)
    {
      if (v5 == 1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
        v17 = swift_allocObject();
        *(v17 + 16) = xmmword_1D1E73A90;
        *(v17 + 32) = sub_1D1E6781C();
        *(v17 + 40) = v18;
        v19 = sub_1D1E6781C();
        *(v17 + 72) = MEMORY[0x1E69E6158];
        *(v17 + 48) = v19;
        *(v17 + 56) = v20;
        *(v17 + 80) = sub_1D1E6781C();
        *(v17 + 88) = v21;
        v22 = sub_1D1E691BC();
        *(v17 + 120) = v8;
        *(v17 + 96) = v22;
        v23 = sub_1D18D6538(v17);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v24 = sub_1D1E6781C();
        v26 = v25;
        *(&v153 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
        *&v152 = v23;
        sub_1D1742194(&v152, v151);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v150 = v9;
        v28 = sub_1D171D2F0(v24, v26);
        v30 = v9[2];
        v31 = (v29 & 1) == 0;
        v15 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v15)
        {
          goto LABEL_92;
        }

        v33 = v29;
        if (v9[3] < v32)
        {
          sub_1D1726F00(v32, v27);
          v28 = sub_1D171D2F0(v24, v26);
          if ((v33 & 1) != (v34 & 1))
          {
            goto LABEL_99;
          }

          goto LABEL_39;
        }

        if (v27)
        {
LABEL_39:
          if (v33)
          {
            goto LABEL_59;
          }
        }

        else
        {
          v131 = v28;
          sub_1D1738144();
          v28 = v131;
          if (v33)
          {
            goto LABEL_59;
          }
        }

        v9[(v28 >> 6) + 8] |= 1 << v28;
        v113 = (v9[6] + 16 * v28);
        *v113 = v24;
        v113[1] = v26;
        sub_1D1742194(v151, (v9[7] + 32 * v28));
        v114 = v9[2];
        v15 = __OFADD__(v114, 1);
        v112 = v114 + 1;
        if (v15)
        {
          goto LABEL_97;
        }

        goto LABEL_73;
      }

      if ((a3 & 1) == 0)
      {
        goto LABEL_75;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
      v69 = swift_initStackObject();
      *(v69 + 16) = xmmword_1D1E73A90;
      *(v69 + 32) = sub_1D1E6781C();
      *(v69 + 40) = v70;
      v71 = sub_1D1E6781C();
      *(v69 + 72) = MEMORY[0x1E69E6158];
      *(v69 + 48) = v71;
      *(v69 + 56) = v72;
      *(v69 + 80) = sub_1D1E6781C();
      *(v69 + 88) = v73;
      if (!a1[7])
      {
        *(v69 + 120) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
        goto LABEL_52;
      }

      v74 = sub_1D1E677EC();
      *(v69 + 120) = sub_1D1741B10(0, &qword_1EC645BA8, 0x1E696AEC0);
      if (!v74)
      {
LABEL_52:
        v74 = sub_1D1E6852C();
      }

      *(v69 + 96) = v74;
      v118 = sub_1D18D6538(v69);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
      swift_arrayDestroy();
      v119 = sub_1D1E6781C();
      v121 = v120;
      *(&v153 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      *&v152 = v118;
      sub_1D1742194(&v152, v151);
      v122 = swift_isUniquelyReferenced_nonNull_native();
      v150 = v9;
      v28 = sub_1D171D2F0(v119, v121);
      v124 = v9[2];
      v125 = (v123 & 1) == 0;
      v15 = __OFADD__(v124, v125);
      v126 = v124 + v125;
      if (v15)
      {
        goto LABEL_93;
      }

      v127 = v123;
      if (v9[3] < v126)
      {
        sub_1D1726F00(v126, v122);
        v28 = sub_1D171D2F0(v119, v121);
        if ((v127 & 1) != (v128 & 1))
        {
          goto LABEL_99;
        }

        goto LABEL_58;
      }

      if (v122)
      {
LABEL_58:
        if (v127)
        {
          goto LABEL_59;
        }
      }

      else
      {
        v135 = v28;
        sub_1D1738144();
        v28 = v135;
        if (v127)
        {
          goto LABEL_59;
        }
      }

      v9[(v28 >> 6) + 8] |= 1 << v28;
      v136 = (v9[6] + 16 * v28);
      *v136 = v119;
      v136[1] = v121;
      sub_1D1742194(v151, (v9[7] + 32 * v28));
      v137 = v9[2];
      v15 = __OFADD__(v137, 1);
      v112 = v137 + 1;
      if (v15)
      {
        goto LABEL_98;
      }

      goto LABEL_73;
    }

    v155[0] = *(a1 + 3);
    if (*(&v155[0] + 1) >> 60 != 15)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648320, &qword_1D1E8BEF8);
      v94 = swift_allocObject();
      *(v94 + 16) = xmmword_1D1E739C0;
      *(v94 + 32) = sub_1D1E6781C();
      *(v94 + 40) = v95;
      v96 = sub_1D1E6781C();
      *(v94 + 72) = MEMORY[0x1E69E6158];
      *(v94 + 48) = v96;
      *(v94 + 56) = v97;
      sub_1D1741C08(v155, &v152, &qword_1EC643838, &qword_1D1E8C020);
      v98 = sub_1D18DA288(v94);
      swift_setDeallocating();
      sub_1D1741A30(v94 + 32, &qword_1EC646220, &qword_1D1E7E8A8);
      swift_deallocClassInstance();
      v99 = sub_1D1E6781C();
      v101 = v100;
      v102 = sub_1D1E6688C();
      v103 = sub_1D1741B10(0, &qword_1EC647ED0, 0x1E695DEF0);
      *&v152 = v102;
      *(&v153 + 1) = v103;
      v104 = swift_isUniquelyReferenced_nonNull_native();
      *&v151[0] = v98;
      sub_1D17556A8(&v152, v99, v101, v104);

      v105 = *&v151[0];
      v106 = sub_1D1E6781C();
      v108 = v107;
      *(&v153 + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648328, &qword_1D1E8BF00);
      *&v152 = v105;
      sub_1D1742194(&v152, v151);
      v109 = swift_isUniquelyReferenced_nonNull_native();
      sub_1D1753F18(v151, v106, v108, v109);
      sub_1D1741A30(v155, &qword_1EC643838, &qword_1D1E8C020);

      goto LABEL_75;
    }

LABEL_85:
    if (++v4 == 6)
    {
      return v149;
    }
  }

  __break(1u);
LABEL_88:
  __break(1u);
LABEL_89:
  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  __break(1u);
LABEL_99:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D19B5690(uint64_t result)
{
  if (result > 7)
  {
    if (result > 4097)
    {
      if (result == 4098)
      {
        return 6;
      }

      if (result == 4100)
      {
        return 7;
      }
    }

    else
    {
      if (result == 8)
      {
        return 4;
      }

      if (result == 9)
      {
        return 5;
      }
    }

    return 8;
  }

  if (result <= 5)
  {
    if (!result)
    {
      return result;
    }

    if (result == 4)
    {
      return 1;
    }

    return 8;
  }

  if (result == 6)
  {
    return 2;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1D19B5730(int a1)
{
  if ((a1 - 323551232) > 0x13)
  {
    return 15;
  }

  else
  {
    return byte_1D1E8BF0A[a1 - 323551232];
  }
}

BOOL sub_1D19B5758(unsigned int a1, _BYTE *a2)
{
  if (*a2 != 19)
  {
    return 0;
  }

  if (qword_1EC642260 != -1)
  {
    v10 = a1;
    swift_once();
    a1 = v10;
  }

  v2 = qword_1EC6BE128;
  if (!*(qword_1EC6BE128 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = MEMORY[0x1D3892820](*(qword_1EC6BE128 + 40), a1, 4);
  v5 = -1 << *(v2 + 32);
  v6 = v4 & ~v5;
  if (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(v2 + 48) + 4 * v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(v2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_1D19B5854(uint64_t a1)
{
  sub_1D1741970(a1, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  result = swift_dynamicCast();
  if (!result)
  {
    return 0;
  }

  v2 = *(v29 + 16);
  if (!v2)
  {
    v4 = MEMORY[0x1E69E7CC0];
    goto LABEL_32;
  }

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
  do
  {
    v5 = v3;
    while (1)
    {
      if (v5 >= *(v29 + 16))
      {
        __break(1u);
        return result;
      }

      v6 = *(v29 + 32 + 8 * v5);
      v7 = sub_1D1E6781C();
      v9 = v8;
      if (!*(v6 + 16))
      {
        goto LABEL_37;
      }

      v10 = v7;

      v11 = sub_1D171D2F0(v10, v9);
      v13 = v12;

      if ((v13 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_1D1741970(*(v6 + 56) + 32 * v11, v31);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      v14 = sub_1D1E6781C();
      if (!*(v29 + 16))
      {
LABEL_36:

LABEL_37:

LABEL_38:

LABEL_39:

        return 0;
      }

      v16 = sub_1D171D2F0(v14, v15);
      v18 = v17;

      if ((v18 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_1D1741970(*(v29 + 56) + 32 * v16, v31);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_37;
      }

      if (v29 == sub_1D1E6781C() && v30 == v19)
      {
      }

      else
      {
        v20 = sub_1D1E6904C();

        if ((v20 & 1) == 0)
        {

          goto LABEL_39;
        }
      }

      v21 = sub_1D1E6781C();
      if (!*(v29 + 16))
      {
        goto LABEL_36;
      }

      v23 = sub_1D171D2F0(v21, v22);
      v25 = v24;

      if ((v25 & 1) == 0)
      {
        goto LABEL_37;
      }

      sub_1D1741970(*(v29 + 56) + 32 * v23, v31);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_38;
      }

      sub_1D19B3FC8(v29, v31);

      if (!v32)
      {
        result = sub_1D1741A30(v31, &qword_1EC649700, &qword_1D1E6E910);
        goto LABEL_23;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648310, &qword_1D1E8BEF0);
      result = swift_dynamicCast();
      if (result)
      {
        break;
      }

LABEL_23:
      if (v2 == ++v5)
      {
        goto LABEL_32;
      }
    }

    v32 = &type metadata for PresetInfo;
    PresetInfo.init(from:)(v29, v31);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v4 = sub_1D177E950(0, *(v4 + 2) + 1, 1, v4);
    }

    v28 = *(v4 + 2);
    v27 = *(v4 + 3);
    if (v28 >= v27 >> 1)
    {
      v4 = sub_1D177E950((v27 > 1), v28 + 1, 1, v4);
    }

    v3 = v5 + 1;
    *(v4 + 2) = v28 + 1;
    result = sub_1D1742194(v31, &v4[32 * v28 + 32]);
  }

  while (v2 - 1 != v5);
LABEL_32:

  return v4;
}

unint64_t sub_1D19B5CA0(char a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    v8 = 60 * a2;
    if ((a2 * 60) >> 64 != (60 * a2) >> 63)
    {
      __break(1u);
      goto LABEL_9;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643388, &unk_1D1E71FF0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D1E739C0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648318, &unk_1D1E8D030);
  inited = swift_initStackObject();
  v40 = xmmword_1D1E73A90;
  *(inited + 16) = xmmword_1D1E73A90;
  *(inited + 32) = sub_1D1E6781C();
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = v10;
  *(inited + 48) = 0;
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v11;
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_1D1E73A90;
  *(v12 + 32) = sub_1D1E6781C();
  *(v12 + 40) = v13;
  v14 = sub_1D1E6781C();
  *(v12 + 72) = MEMORY[0x1E69E6158];
  *(v12 + 48) = v14;
  *(v12 + 56) = v15;
  *(v12 + 80) = sub_1D1E6781C();
  *(v12 + 88) = v16;
  v17 = sub_1D1E67D2C();
  v18 = sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  *(v12 + 120) = v18;
  *(v12 + 96) = v17;
  v19 = sub_1D18D6538(v12);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646238, &qword_1D1E7E8D0);
  swift_arrayDestroy();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  *(inited + 120) = v20;
  *(inited + 96) = v19;
  v21 = sub_1D18D6538(inited);
  swift_setDeallocating();
  swift_arrayDestroy();
  *(v3 + 32) = v21;
  if ((a3 & 1) == 0)
  {
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_1D1E73A90;
    *(v22 + 32) = sub_1D1E6781C();
    *(v22 + 72) = MEMORY[0x1E69E6530];
    *(v22 + 40) = v23;
    *(v22 + 48) = 1;
    *(v22 + 80) = sub_1D1E6781C();
    *(v22 + 88) = v24;
    v25 = swift_initStackObject();
    *(v25 + 16) = xmmword_1D1E73A90;
    *(v25 + 32) = sub_1D1E6781C();
    *(v25 + 40) = v26;
    v27 = sub_1D1E6781C();
    *(v25 + 72) = MEMORY[0x1E69E6158];
    *(v25 + 48) = v27;
    *(v25 + 56) = v28;
    *(v25 + 80) = sub_1D1E6781C();
    *(v25 + 88) = v29;
    v30 = sub_1D1E6821C();
    *(v25 + 120) = v18;
    *(v25 + 96) = v30;
    v31 = sub_1D18D6538(v25);
    swift_setDeallocating();
    swift_arrayDestroy();
    *(v22 + 120) = v20;
    *(v22 + 96) = v31;
    v6 = sub_1D18D6538(v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    v5 = *(v3 + 16);
    v8 = *(v3 + 24);
    v4 = v5 + 1;
    v7 = MEMORY[0x1E69E6158];
    if (v5 < v8 >> 1)
    {
LABEL_7:
      *(v3 + 16) = v4;
      *(v3 + 8 * v5 + 32) = v6;
      goto LABEL_8;
    }

LABEL_9:
    v3 = sub_1D177D2F8((v8 > 1), v4, 1, v3);
    goto LABEL_7;
  }

  v7 = MEMORY[0x1E69E6158];
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647FA0, &qword_1D1E8DEE0);
  v32 = swift_initStackObject();
  *(v32 + 16) = v40;
  *(v32 + 32) = sub_1D1E6781C();
  *(v32 + 40) = v33;
  v34 = sub_1D1E6781C();
  *(v32 + 72) = v7;
  *(v32 + 48) = v34;
  *(v32 + 56) = v35;
  *(v32 + 80) = sub_1D1E6781C();
  *(v32 + 88) = v36;
  *(v32 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC648308, &unk_1D1E8DD70);
  *(v32 + 96) = v3;
  v37 = sub_1D18D6E78(v32);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646228, &qword_1D1E8A0C0);
  swift_arrayDestroy();
  return v37;
}