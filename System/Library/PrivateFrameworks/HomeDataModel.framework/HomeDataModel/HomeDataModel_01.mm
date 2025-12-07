uint64_t sub_1D170EC44()
{
  v1 = type metadata accessor for StaticMediaSystem(0);
  v20 = *(*(v1 - 1) + 80);
  v18 = *(*(v1 - 1) + 64);
  v19 = (v20 + 16) & ~v20;
  v2 = v0 + v19;
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 8);
  v4(v0 + v19, v3);

  v5 = v0 + v19 + v1[6];
  v6 = *(v5 + 8);
  if (v6 != 255)
  {
    sub_1D1771B5C(*v5, v6);
  }

  v7 = v1[7];
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  v17 = v9;

  v11 = v2 + v1[18];
  v12 = type metadata accessor for StaticSoftwareUpdate(0);
  if (!(*(*(v12 - 8) + 48))(v11, 1, v12))
  {
    v4(v11, v3);
    v13 = v11 + *(v12 + 20);
    type metadata accessor for StaticSoftwareUpdate.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {

      v16 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
      if (!v10(v13 + v16, 1, v8))
      {
        (*(v17 + 8))(v13 + v16, v8);
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_15;
      }

      v4(v13, v3);
      if (*(v13 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
      {
        goto LABEL_15;
      }
    }
  }

LABEL_15:
  v4(v2 + v1[20], v3);

  return MEMORY[0x1EEE6BDD0](v0, v19 + v18, v20 | 7);
}

uint64_t sub_1D170EFCC()
{
  v1 = type metadata accessor for StaticServiceGroup(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  v5 = sub_1D1E66A7C();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = *(v1 + 32);
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  if (!(*(v8 + 48))(v0 + v3 + v6, 1, v7))
  {
    (*(v8 + 8))(v0 + v3 + v6, v7);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D170F168()
{
  v1 = type metadata accessor for StaticService(0);
  v33 = *(*(v1 - 1) + 80);
  v31 = *(*(v1 - 1) + 64);
  v32 = (v33 + 16) & ~v33;
  v34 = v0;
  v2 = v0 + v32;
  v3 = sub_1D1E66A7C();
  v35 = *(v3 - 8);
  v4 = *(v35 + 8);
  v4(v0 + v32, v3);

  v4(v0 + v32 + v1[11], v3);
  v5 = v0 + v32 + v1[13];
  v6 = type metadata accessor for StaticDeviceMetadata(0);
  if (!(*(*(v6 - 8) + 48))(v5, 1, v6))
  {
    v4(v5, v3);
  }

  v7 = v1[14];
  v8 = sub_1D1E669FC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (!v10(v2 + v7, 1, v8))
  {
    (*(v9 + 8))(v2 + v7, v8);
  }

  v11 = v1[15];
  if (!v10(v2 + v11, 1, v8))
  {
    (*(v9 + 8))(v2 + v11, v8);
  }

  v30 = v9;

  v12 = v1[29];
  v13 = *(v35 + 48);
  if (!v13(v2 + v12, 1, v3))
  {
    v4(v2 + v12, v3);
  }

  v14 = v1[30];
  if (!v13(v2 + v14, 1, v3))
  {
    v4(v2 + v14, v3);
  }

  v36 = v4;

  v15 = v2 + v1[34];
  v16 = type metadata accessor for StaticSoftwareUpdate(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v36(v15, v3);
    v17 = v15 + *(v16 + 20);
    type metadata accessor for StaticSoftwareUpdate.Kind(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
    {

      v29 = *(type metadata accessor for StaticSoftwareUpdateMetadata(0) + 20);
      if (!v10(v17 + v29, 1, v8))
      {
        (*(v30 + 8))(v17 + v29, v8);
      }
    }

    else
    {
      if (EnumCaseMultiPayload)
      {
        goto LABEL_21;
      }

      v36(v17, v3);
      if (*(v17 + *(type metadata accessor for StaticHH2Update(0) + 24) + 8) < 2uLL)
      {
        goto LABEL_21;
      }
    }
  }

LABEL_21:

  v19 = v1[37];
  if (!v13(v2 + v19, 1, v3))
  {
    v36(v2 + v19, v3);
  }

  v20 = v1[39];
  v21 = type metadata accessor for EndpointPath(0);
  if (!(*(*(v21 - 8) + 48))(v2 + v20, 1, v21))
  {
    v36(v2 + v20, v3);
  }

  v22 = v2 + v1[40];
  v23 = type metadata accessor for StaticService.AutoClimateControlConfig(0);
  if (!(*(*(v23 - 8) + 48))(v22, 1, v23))
  {
    if (*(v22 + 16) != 1)
    {
    }

    v24 = v22 + *(v23 + 20);
    v25 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
    if (!(*(*(v25 - 8) + 48))(v24, 1, v25))
    {

      v26 = *(v25 + 24);
      v27 = sub_1D1E66C5C();
      (*(*(v27 - 8) + 8))(v24 + v26, v27);
    }
  }

  return MEMORY[0x1EEE6BDD0](v34, v32 + v31, v33 | 7);
}

uint64_t sub_1D170F984(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_1D1E669FC();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 28);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 44) + 25);
  v15 = -2 - v14;
  if ((-2 - v14) < 0)
  {
    v15 = -1;
  }

  if (v14 > 0x80000000)
  {
    return (v15 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D170FAA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_1D1E669FC();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      v15 = (a1 + *(a4 + 44));
      *v15 = 0;
      v15[1] = 0;
      v15[2] = 0;
      v15[3] = ~a2 << 8;
      v15[4] = 0;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 28);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D170FBB8()
{
  v1 = *v0;
  v2 = 7889261;
  v3 = 0x756C615670657473;
  v4 = 1953066613;
  if (v1 != 3)
  {
    v4 = 0xD000000000000013;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7235949;
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

uint64_t sub_1D170FC44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1CDF740(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D170FC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D170FD40(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

uint64_t sub_1D170FE48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_14:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5] + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  v16 = type metadata accessor for StaticRoom(0);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[7];
    goto LABEL_13;
  }

  v17 = type metadata accessor for StaticUser(0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[8];
    goto LABEL_13;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D530, &qword_1D1EA5BD8);
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[22];

  return v19(v20, a2, v18);
}

uint64_t sub_1D1710068(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_12:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5] + 8) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  v16 = type metadata accessor for StaticRoom(0);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[7];
    goto LABEL_11;
  }

  v17 = type metadata accessor for StaticUser(0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[8];
    goto LABEL_11;
  }

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D530, &qword_1D1EA5BD8);
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[22];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1D1710288(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for StaticMediaProfile(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + a3[5];
    goto LABEL_5;
  }

  if (a2 == 0x7FFFFFFF)
  {
    v14 = *(a1 + a3[7]);
    if (v14 >= 0xFFFFFFFF)
    {
      LODWORD(v14) = -1;
    }

    return (v14 + 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v16 = *(*(v15 - 8) + 48);
    v17 = a1 + a3[8];

    return v16(v17, a2, v15);
  }
}

uint64_t sub_1D1710408(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_5:

    return v11(v12, a2, a2, v10);
  }

  result = type metadata accessor for StaticMediaProfile(0);
  v14 = *(result - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + a4[5];
    goto LABEL_5;
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[7]) = (a2 - 1);
  }

  else
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v16 = *(*(v15 - 8) + 56);
    v17 = a1 + a4[8];

    return v16(v17, a2, a2, v15);
  }

  return result;
}

uint64_t sub_1D1710590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D1710650(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D171070C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E669FC();
  v56 = *(v6 - 8);
  v57 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v51 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v55 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v49 - v16;
  v18 = type metadata accessor for DashboardSortableData(0);
  v19 = *(v18 + 24);
  v58 = a1;
  v54 = v19;
  v20 = sub_1D18E4158(a1 + v19, a3);
  v22 = v21;
  v53 = *(v18 + 24);
  v23 = sub_1D18E4158(a2 + v53, a3);
  if (v22)
  {
    if ((v24 & 1) == 0)
    {
      v25 = 0;
      return v25 & 1;
    }
  }

  else
  {
    if (v24)
    {
      v25 = 1;
      return v25 & 1;
    }

    if (v20 != v23)
    {
      v25 = v20 < v23;
      return v25 & 1;
    }
  }

  v26 = *(v15 + 48);
  sub_1D1741C08(v58, v17, &qword_1EC642570, &qword_1D1E6C6A0);
  v27 = a2;
  sub_1D1741C08(a2, &v17[v26], &qword_1EC642570, &qword_1D1E6C6A0);
  v29 = v56;
  v28 = v57;
  v30 = *(v56 + 48);
  if (v30(v17, 1, v57) == 1)
  {
    if (v30(&v17[v26], 1, v28) != 1)
    {
      sub_1D1741A30(&v17[v26], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      v25 = 0;
      return v25 & 1;
    }
  }

  else
  {
    sub_1D1741C08(v17, v14, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v30(&v17[v26], 1, v28) == 1)
    {
      (*(v29 + 8))(v14, v28);
      sub_1D1741A30(&v17[v26], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      v25 = 1;
      return v25 & 1;
    }

    v50 = v27;
    sub_1D1741C08(&v17[v26], v55, &qword_1EC642570, &qword_1D1E6C6A0);
    v31 = *(v29 + 32);
    v32 = v52;
    v31(v52, v14, v28);
    v33 = v51;
    v31(v51, v55, v28);
    v34 = v33;
    sub_1D1D1D848(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if ((sub_1D1E6775C() & 1) == 0)
    {
      v25 = sub_1D1E6696C();
      v47 = *(v29 + 8);
      v47(v34, v28);
      v47(v32, v28);
      sub_1D1741A30(&v17[v26], &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v17, &qword_1EC642570, &qword_1D1E6C6A0);
      return v25 & 1;
    }

    v35 = *(v29 + 8);
    v35(v33, v28);
    v35(v32, v28);
    v27 = v50;
  }

  sub_1D1741A30(v17, &qword_1EC642AC0, &qword_1D1E6E810);
  v36 = *(v18 + 20);
  v37 = (v58 + v36);
  v38 = *(v58 + v36);
  v39 = *(v58 + v36 + 8);
  v40 = (v27 + v36);
  v41 = *v40;
  v42 = v40[1];
  if (*v37 == *v40 && v39 == v42 || (sub_1D1E6904C() & 1) != 0)
  {
    v43 = sub_1D1E66A1C();
    v45 = v44;
    if (v43 == sub_1D1E66A1C() && v45 == v46)
    {

      v25 = 0;
    }

    else
    {
      v25 = sub_1D1E6904C();
    }
  }

  else
  {
    v61 = v38;
    v62 = v39;
    v59 = v41;
    v60 = v42;
    sub_1D17D8EF0();
    v25 = sub_1D1E685FC() == -1;
  }

  return v25 & 1;
}

uint64_t sub_1D1710ED4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_1D1711008(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_1D171113C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D17111A8(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D1711238()
{
  if (*v0)
  {
    return 0x6574617473;
  }

  else
  {
    return 0x617461646174656DLL;
  }
}

uint64_t sub_1D171130C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1D17113FC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1D17114F8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D17115C0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1711670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 2;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D171173C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 8) = (a2 + 1);
  }

  return result;
}

uint64_t sub_1D1711840(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D1711900(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D1711A04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 28));
      if (v14 >= 5)
      {
        return v14 - 4;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
  }

  return v9(v10, a2, v8);
}

uint64_t sub_1D1711B18(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = a2 + 4;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D1711C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D1711CEC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D1711DA8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *a1;
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v11 = *(*(v10 - 8) + 48);
    v12 = &a1[*(a3 + 44)];

    return v11(v12, a2, v10);
  }
}

_BYTE *sub_1D1711E64(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *result = a2 + 1;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 44)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1711F44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtCC13HomeDataModel16AutoClimateModel4Home_localPresenceRoomsConfig;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D1711FA4()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1711FDC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1712030()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1712094()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D17120CC()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v7 + 8, v3 | 7);
}

uint64_t sub_1D17121D0(uint64_t *a1)
{
  v2 = *a1;

  return sub_1D1D68428(&v2);
}

uint64_t sub_1D171221C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D1712288(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D1712304()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();
  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1D17123F0()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1D17124DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D171251C()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  swift_unknownObjectRelease();

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return MEMORY[0x1EEE6BDD0](v0, v6 + v5, v3 | 7);
}

uint64_t sub_1D17126A0@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = off_1EC64E5C8;
}

uint64_t sub_1D17126F4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig(0) + 24));
}

uint64_t sub_1D1712740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E662EC();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1D17127AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E662EC();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1D171281C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[6]);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = sub_1D1E66C5C();
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[8];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_1D1712950(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[6]) = a2;
  }

  else
  {
    v13 = sub_1D1E66C5C();
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[8];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

uint64_t sub_1D1712A78(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v9 = sub_1D1E66C5C();
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 24);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_1D1712B30(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v7 = sub_1D1E66C5C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1D1712BD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1D1712C94(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1D1E66A7C();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D1712D50(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x1E69E7D58])
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }

  type metadata accessor for AsyncBatchedSequenceStorage.State(255, *a1, a1[1], a4);
  return sub_1D1E66E2C();
}

uint64_t sub_1D1712D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine(0, *(a3 + 16), *(a3 + 24), a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 40));
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_1D1712E5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine(0, *(a4 + 16), *(a4 + 24), a4);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1D1712F18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.State(0, *(a3 + 16), *(a3 + 24), a4);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 36));
    if (v11 >= 2)
    {
      return ((v11 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1D1712FE8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for AsyncBatchedSequenceStorage.StateMachine.State(0, *(a4 + 16), *(a4 + 24), a4);
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

uint64_t sub_1D17130AC()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D17130E4()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D17131B4()
{
  v1 = (type metadata accessor for AsyncNotifySequence(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC88, &qword_1D1EAD6C8);
  (*(*(v5 - 8) + 8))(v0 + v3, v5);
  v6 = v1[7];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC90, &qword_1D1EAD6D0);
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1713318(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC88, &qword_1D1EAD6C8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC90, &qword_1D1EAD6D0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24) + 8);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_1D1713440(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC88, &qword_1D1EAD6C8);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64EC90, &qword_1D1EAD6D0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24) + 8) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_1D1713568()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D17135A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D17135E0()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1713618()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1713658()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
  v1 = sub_1D1E67D7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t sub_1D1713A90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 40));
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

uint64_t sub_1D1713B68(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644C60, &unk_1D1E77540);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 40)) = a2 + 1;
  }

  return result;
}

uint64_t sub_1D1713C3C()
{
  if (*(v0 + 16))
  {

    if (*(v0 + 32) != 255)
    {
    }
  }

  return MEMORY[0x1EEE6BDD0](v0, 33, 7);
}

uint64_t sub_1D1713C8C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1713CCC@<X0>(uint64_t (**a1)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = off_1EEC21D70;
  v2 = qword_1EEC21D78;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = sub_1D1D973B4;
  a1[1] = v4;
}

uint64_t sub_1D1713D44()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1713D84()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1713DCC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1713EB0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1713F90()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 72) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1714068()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1714140()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1714220()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C0, &qword_1D1EAF418);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D17142F0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C0, &qword_1D1EAF418);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1714384()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D17143DC()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

void *sub_1D171442C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &unk_1F4D85BB8;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1D1714454()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F530, qword_1D1EAF580);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D1714484()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D17144D0()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

__n128 sub_1D171451C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

ValueMetadata *sub_1D1714624()
{
  if (MEMORY[0x1E69E7D58])
  {
    return &type metadata for WidgetManager;
  }

  else
  {
    return (MEMORY[0x1E69E7CA8] + 8);
  }
}

uint64_t sub_1D171464C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D17146C4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D1714754(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x1E69E7D58])
  {
    return type metadata accessor for WidgetRefresh(0, *a1, a1[1], a4);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D1714794(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x1E69E7D58])
  {
    return type metadata accessor for WidgetDetailUpdate(0, *a1, a1[1], a4);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D17147D4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (MEMORY[0x1E69E7D58])
  {
    return type metadata accessor for WidgetWriteRequests(0, *a1, a1[1], a4);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1D1714814(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1714880(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1D1E66A7C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D171499C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D17149DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1714A14()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1714A4C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE48, &qword_1D1EB0F48);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1714AE0()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1714B18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1714B50()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE78, &qword_1D1EB0FA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1D1714CA0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_1D1DE7204(v1);
}

uint64_t sub_1D1714CD8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1714D10()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1714D50()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1714D88()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1714DD0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1714E18()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

id sub_1D1714E9C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  v2 = qword_1EE07AE00;
  *a1 = qword_1EE07AE00;

  return v2;
}

id sub_1D1714EFC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *a2 = v5;

  return v5;
}

uint64_t sub_1D1714F70@<X0>(void *a1@<X8>)
{
  if (qword_1EE07AE38 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EE07AE40;
  return result;
}

uint64_t *sub_1D1714FD4(uint64_t *result)
{
  v1 = *result;
  if (qword_1EE07AE38 != -1)
  {
    result = swift_once();
  }

  qword_1EE07AE40 = v1;
  return result;
}

uint64_t sub_1D1715034()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D171508C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D17150C4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 64) != 255)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 65, 7);
}

uint64_t sub_1D1715128()
{
  swift_unknownObjectRelease();

  if (*(v0 + 56) != 255)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1D17151CC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1D1715328()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1715360()
{

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D17153A8()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1715400()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1715448()
{

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1715498()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FFA8, &qword_1D1EB1AA8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1715568()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D17155A0()
{

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D17155F0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D17156B0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1D1715820()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1715858()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D17158B4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D1715904()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1D17159EC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A288, &qword_1D1E96640);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1715AF8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1715B68()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1715BB0()
{
  MEMORY[0x1D3893750](v0 + 16);

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1715C38()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1D1715CBC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 4)
  {
    return v5 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1715D34(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 3);
  }

  else
  {
    v5 = 0;
  }

  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1D1715DCC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1715E24()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 49, 7);
}

uint64_t sub_1D1715E6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HomeDataModel21IntentLaunchDataModel_launchInitiationTimestamp;
  swift_beginAccess();
  return sub_1D174A548(v3 + v4, a2);
}

uint64_t sub_1D1715ECC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC13HomeDataModel21IntentLaunchDataModel_serviceIDs;
  swift_beginAccess();
  *a2 = *(v3 + v4);
}

uint64_t sub_1D1715F3C()
{
  v1 = type metadata accessor for StateSnapshot(0);
  v22 = *(*(v1 - 8) + 80);
  v20 = *(*(v1 - 8) + 64);
  swift_unknownObjectRelease();

  v23 = v0;
  v21 = (v22 + 40) & ~v22;

  v2 = v0 + v21 + *(v1 + 20);
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 8);
  v4(v2, v3);
  v5 = type metadata accessor for StaticHome(0);

  v6 = v5[6];
  v7 = sub_1D1E669FC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  if (!v9(v2 + v6, 1, v7))
  {
    (*(v8 + 8))(v2 + v6, v7);
  }

  v10 = v2 + v5[7];
  v4(v10, v3);
  v19 = v4;
  v11 = type metadata accessor for StaticRoom(0);

  v18 = v3;
  v12 = *(v11 + 24);
  if (!v9(v10 + v12, 1, v7))
  {
    (*(v8 + 8))(v10 + v12, v7);
  }

  v19(v10 + *(v11 + 36), v18);

  v13 = v2 + v5[8];
  v19(v13, v18);
  v14 = type metadata accessor for StaticUser(0);

  v19(v13 + *(v14 + 24), v18);

  v15 = v2 + v5[22];
  v16 = type metadata accessor for StaticResident(0);
  if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    v19(v15, v18);

    sub_1D1771B5C(*(v15 + *(v16 + 36)), *(v15 + *(v16 + 36) + 8));
    v19(v15 + *(v16 + 40), v18);
  }

  return MEMORY[0x1EEE6BDD0](v23, v21 + v20, v22 | 7);
}

uint64_t sub_1D1716454()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D17164A0()
{
  v1 = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 9)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v10 = sub_1D1E66A7C();
          (*(*(v10 - 8) + 8))(v0 + v3, v10);
          v11 = &qword_1EC64A768;
          v12 = &unk_1D1E9C690;
          break;
        case 7:
          v13 = sub_1D1E66A7C();
          (*(*(v13 - 8) + 8))(v0 + v3, v13);
          v11 = &qword_1EC64A9C8;
          v12 = &unk_1D1E98080;
          break;
        case 9:

          v5 += *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810) + 48);

          v7 = *(type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0) + 24);
          v8 = sub_1D1E66C5C();
          goto LABEL_19;
        default:
          goto LABEL_30;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(v11, v12);
      goto LABEL_29;
    }

    if (EnumCaseMultiPayload == 10 || EnumCaseMultiPayload == 11)
    {

      goto LABEL_29;
    }

    if (EnumCaseMultiPayload != 12)
    {
      goto LABEL_30;
    }

    v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
    v8 = sub_1D1E66A7C();
LABEL_19:
    (*(*(v8 - 8) + 8))(v5 + v7, v8);
    goto LABEL_30;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {
        v14 = sub_1D1E66A7C();
        (*(*(v14 - 8) + 8))(v0 + v3, v14);
        v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
      }

      else
      {
        v9 = sub_1D1E66A7C();
        (*(*(v9 - 8) + 8))(v0 + v3, v9);
      }

      goto LABEL_30;
    }

LABEL_29:

    goto LABEL_30;
  }

  switch(EnumCaseMultiPayload)
  {
    case 0:

      break;
    case 1:
      sub_1D1AC373C(*v5, *(v5 + 8), *(v5 + 16));
      break;
    case 2:
      goto LABEL_29;
  }

LABEL_30:

  return MEMORY[0x1EEE6BDD0](v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_1D171685C()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D17168C4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1716920(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t sub_1D17169C0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1D17169D0()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

double sub_1D17169F8@<D0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

id sub_1D1716A30@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = *a1;
  if (result)
  {
    *a2 = result;
    return result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1716AA4(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D174E7C4(result, a2);
  }

  return result;
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.predictionScore.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.predictionPlacement.setter(uint64_t result, char a2)
{
  *(v2 + 16) = result;
  *(v2 + 24) = a2 & 1;
  return result;
}

uint64_t sub_1D1716B90@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 40);
  *a2 = *(result + 32);
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_1D1716BA4(uint64_t result, uint64_t a2)
{
  v2 = *result;
  v3 = *(result + 8);
  *(a2 + 32) = *result;
  *(a2 + 40) = v3;
  if (v2 < 8)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (v2 >= 4)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (v3)
  {
    v5 = 3;
  }

  *(a2 + 41) = v5;
  return result;
}

unint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.predictionIndex.setter(unint64_t result, char a2)
{
  *(v2 + 32) = result;
  *(v2 + 40) = a2 & 1;
  if (result < 8)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (result < 4)
  {
    v3 = 0;
  }

  if (a2)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  *(v2 + 41) = v4;
  return result;
}

uint64_t sub_1D1716C34(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *(*result + 32);
    if (v2 < 8)
    {
      v3 = 1;
    }

    else
    {
      v3 = 2;
    }

    if (v2 >= 4)
    {
      v4 = v3;
    }

    else
    {
      v4 = 0;
    }

    if (*(*result + 40))
    {
      v4 = 3;
    }

    *(*result + 41) = v4;
  }

  return result;
}

unint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.PlacementCategory.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 3;
  if (result < 3)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.init(predictionScore:predictionPlacement:predictionRelevanceLevel:predictionIndex:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, char *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v8 = *a5;
  *a8 = result;
  *(a8 + 8) = a2 & 1;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 25) = v8;
  *(a8 + 32) = a6;
  *(a8 + 40) = a7 & 1;
  *(a8 + 41) = 3;
  return result;
}

BOOL static HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 < *a2;
}

unint64_t sub_1D1716DFC()
{
  v1 = 0x6974636964657270;
  v2 = *v0;
  v3 = 0xD00000000000001BLL;
  if (v2 == 3)
  {
    v3 = 0x6974636964657270;
  }

  if (v2 == 2)
  {
    v3 = 0xD000000000000018;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1716EAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D173F8CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1716EE0(uint64_t a1)
{
  v2 = sub_1D173F6DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1716F1C(uint64_t a1)
{
  v2 = sub_1D173F6DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642538, &qword_1D1E6C690);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - v5;
  v19 = *(v1 + 16);
  v7 = *(v1 + 24);
  v17 = *(v1 + 25);
  v18 = v7;
  v16 = *(v1 + 32);
  v8 = *(v1 + 40);
  v14 = *(v1 + 41);
  v15 = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D173F6DC();
  sub_1D1E6930C();
  v27 = 0;
  v9 = v20;
  sub_1D1E68E2C();
  if (!v9)
  {
    v11 = v17;
    v12 = v14;
    v26 = 1;
    sub_1D1E68E2C();
    v25 = v11;
    v24 = 2;
    sub_1D173F730();
    sub_1D1E68E5C();
    v23 = 3;
    sub_1D1E68E4C();
    v22 = v12;
    v21 = 4;
    sub_1D173F784();
    sub_1D1E68E5C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.hash(into:)()
{
  v1 = v0[2];
  v2 = *(v0 + 24);
  v3 = *(v0 + 25);
  v4 = v0[4];
  v5 = *(v0 + 40);
  v6 = *(v0 + 41);
  if (*(v0 + 8) == 1)
  {
    sub_1D1E6922C();
    if (!v2)
    {
      goto LABEL_3;
    }

LABEL_14:
    sub_1D1E6922C();
    if (v3 != 4)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v9 = *v0;
  sub_1D1E6922C();
  if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1D3892890](v10);
  if (v2)
  {
    goto LABEL_14;
  }

LABEL_3:
  sub_1D1E6922C();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v7 = v1;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x1D3892890](v7);
  if (v3 != 4)
  {
LABEL_7:
    sub_1D1E6922C();
    MEMORY[0x1D3892850](1 - v3);
    if (!v5)
    {
      goto LABEL_8;
    }

LABEL_16:
    sub_1D1E6922C();
    if (v6 != 3)
    {
      goto LABEL_9;
    }

    return sub_1D1E6922C();
  }

LABEL_15:
  sub_1D1E6922C();
  if (v5)
  {
    goto LABEL_16;
  }

LABEL_8:
  sub_1D1E6922C();
  MEMORY[0x1D3892850](v4);
  if (v6 != 3)
  {
LABEL_9:
    sub_1D1E6922C();
    return MEMORY[0x1D3892850](v6);
  }

  return sub_1D1E6922C();
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = v0[2];
  v4 = *(v0 + 24);
  v5 = *(v0 + 25);
  v6 = v0[4];
  v7 = *(v0 + 40);
  v8 = *(v0 + 41);
  sub_1D1E6920C();
  if (v2 == 1)
  {
    sub_1D1E6922C();
    if (!v4)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_1D1E6922C();
    if (v5 != 4)
    {
      goto LABEL_7;
    }

LABEL_14:
    sub_1D1E6922C();
    if (!v7)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  sub_1D1E6922C();
  if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v1;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1D3892890](v10);
  if (v4)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_1D1E6922C();
  if ((v3 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v9 = v3;
  }

  else
  {
    v9 = 0;
  }

  MEMORY[0x1D3892890](v9);
  if (v5 == 4)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1D1E6922C();
  MEMORY[0x1D3892850](1 - v5);
  if (!v7)
  {
LABEL_8:
    sub_1D1E6922C();
    MEMORY[0x1D3892850](v6);
    goto LABEL_16;
  }

LABEL_15:
  sub_1D1E6922C();
LABEL_16:
  sub_1D1E6922C();
  if (v8 != 3)
  {
    MEMORY[0x1D3892850](v8);
  }

  return sub_1D1E6926C();
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642558, &qword_1D1E6C698);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D173F6DC();
  sub_1D1E692FC();
  if (!v2)
  {
    v33 = 0;
    v9 = sub_1D1E68C8C();
    v26 = v10 & 1;
    v32 = 1;
    v23 = sub_1D1E68C8C();
    v25 = v12 & 1;
    v30 = 2;
    sub_1D173F824();
    sub_1D1E68CBC();
    v13 = v31;
    v29 = 3;
    v14 = sub_1D1E68CAC();
    v21 = v13;
    v22 = v14;
    v24 = v15 & 1;
    v27 = 4;
    sub_1D173F878();
    sub_1D1E68CBC();
    (*(v6 + 8))(v8, v5);
    v16 = v28;
    v17 = v26;
    v18 = v25;
    v19 = v24;
    *a2 = v9;
    *(a2 + 8) = v17;
    *(a2 + 16) = v23;
    *(a2 + 24) = v18;
    *(a2 + 25) = v21;
    *(a2 + 32) = v22;
    *(a2 + 40) = v19;
    *(a2 + 41) = v16;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1717744(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = v1[2];
  v5 = *(v1 + 24);
  v6 = *(v1 + 25);
  v7 = v1[4];
  v8 = *(v1 + 40);
  v9 = *(v1 + 41);
  sub_1D1E6920C();
  if (v3 == 1)
  {
    sub_1D1E6922C();
    if (!v5)
    {
      goto LABEL_3;
    }

LABEL_13:
    sub_1D1E6922C();
    if (v6 != 4)
    {
      goto LABEL_7;
    }

LABEL_14:
    sub_1D1E6922C();
    if (!v8)
    {
      goto LABEL_8;
    }

    goto LABEL_15;
  }

  sub_1D1E6922C();
  if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v11 = v2;
  }

  else
  {
    v11 = 0;
  }

  MEMORY[0x1D3892890](v11);
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_3:
  sub_1D1E6922C();
  if ((v4 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0;
  }

  MEMORY[0x1D3892890](v10);
  if (v6 == 4)
  {
    goto LABEL_14;
  }

LABEL_7:
  sub_1D1E6922C();
  MEMORY[0x1D3892850](1 - v6);
  if (!v8)
  {
LABEL_8:
    sub_1D1E6922C();
    MEMORY[0x1D3892850](v7);
    goto LABEL_16;
  }

LABEL_15:
  sub_1D1E6922C();
LABEL_16:
  sub_1D1E6922C();
  if (v9 != 3)
  {
    MEMORY[0x1D3892850](v9);
  }

  return sub_1D1E6926C();
}

BOOL sub_1D17178D8(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return 1;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 < *a2;
}

BOOL sub_1D171790C(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    return 0;
  }

  if (*(a1 + 8))
  {
    return 1;
  }

  return *a2 >= *a1;
}

BOOL sub_1D1717940(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return 0;
  }

  if (*(a2 + 8))
  {
    return 1;
  }

  return *a1 >= *a2;
}

BOOL sub_1D1717974(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8))
  {
    return 1;
  }

  if (*(a1 + 8))
  {
    return 0;
  }

  return *a2 < *a1;
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsContext.init(userIsAtHome:homeSizeToModuleSizeRatio:timeSinceLastSuggestionsFetch:hasOpenedRecommendationUIWithin2Minutes:hasOpenedRecommendationUIWithinAWeek:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X3>, char a3@<W4>, char a4@<W5>, char a5@<W6>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 17) = a4;
  *(a6 + 18) = a5;
  return result;
}

uint64_t static HomeAnalyticsUtilities.PredictionAnalyticsContext.gather<A>(for:lastSuggestionsFetchDate:lastRecommendationUIOpenedDate:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v34 = a2;
  v32 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v31 - v12;
  v14 = sub_1D1E669FC();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  v33 = (*(*(a4 + 16) + 160))(a3);
  sub_1D1741C08(v32, v13, &qword_1EC642570, &qword_1D1E6C6A0);
  v21 = *(v15 + 48);
  LODWORD(v32) = v21(v13, 1, v14);
  if (v32 == 1)
  {
    sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
    v22 = 0.0;
  }

  else
  {
    (*(v15 + 32))(v20, v13, v14);
    sub_1D1E6697C();
    v22 = fabs(v23);
    (*(v15 + 8))(v20, v14);
  }

  sub_1D1741C08(v34, v11, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v21(v11, 1, v14) == 1)
  {
    result = sub_1D1741A30(v11, &qword_1EC642570, &qword_1D1E6C6A0);
    v25 = 2;
    v26 = 2;
  }

  else
  {
    (*(v15 + 32))(v18, v11, v14);
    sub_1D1E6697C();
    v26 = fabs(v27) < 120.0;
    sub_1D1E6697C();
    v29 = fabs(v28);
    result = (*(v15 + 8))(v18, v14);
    v25 = v29 < 604800.0;
  }

  v30 = v32 == 1;
  *a5 = v33 == 1;
  *(a5 + 8) = v22;
  *(a5 + 16) = v30;
  *(a5 + 17) = v26;
  *(a5 + 18) = v25;
  return result;
}

uint64_t _s13HomeDataModel16SignificantEventV15ConfidenceLevelO9hashValueSivg_0()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1717D70(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

unint64_t sub_1D1717DB4()
{
  v1 = 0x7441734972657375;
  v2 = 0xD000000000000024;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000027;
  }

  if (*v0)
  {
    v1 = 0xD00000000000001DLL;
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

uint64_t sub_1D1717E44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D173FD04(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1717E6C(uint64_t a1)
{
  v2 = sub_1D173FB30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1717EA8(uint64_t a1)
{
  v2 = sub_1D173FB30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsContext.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642578, &qword_1D1E6C6A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v10 - v6;
  v11 = *(v1 + 8);
  v12 = *(v1 + 16);
  v8 = *(v1 + 17);
  v10[0] = *(v1 + 18);
  v10[1] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D173FB30();
  sub_1D1E6930C();
  v16 = 0;
  sub_1D1E68EDC();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v15 = 1;
  sub_1D1E68E2C();
  v14 = 2;
  sub_1D1E68E1C();
  v13 = 3;
  sub_1D1E68E1C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsContext.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v4 = *(v0 + 18);
  sub_1D1E6922C();
  if (v2 == 1)
  {
    sub_1D1E6922C();
    if (v3 == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D1E6922C();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1D3892890](v5);
    if (v3 == 2)
    {
      goto LABEL_8;
    }
  }

  sub_1D1E6922C();
LABEL_8:
  sub_1D1E6922C();
  if (v4 != 2)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsContext.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v4 = *(v0 + 18);
  sub_1D1E6920C();
  sub_1D1E6922C();
  if (v2 == 1)
  {
    sub_1D1E6922C();
    if (v3 == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D1E6922C();
    if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v5 = v1;
    }

    else
    {
      v5 = 0;
    }

    MEMORY[0x1D3892890](v5);
    if (v3 == 2)
    {
      goto LABEL_8;
    }
  }

  sub_1D1E6922C();
LABEL_8:
  sub_1D1E6922C();
  if (v4 != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t HomeAnalyticsUtilities.PredictionAnalyticsContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642588, &unk_1D1E6C6B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D173FB30();
  sub_1D1E692FC();
  if (!v2)
  {
    v22 = 0;
    v9 = sub_1D1E68D3C();
    v21 = 1;
    v10 = sub_1D1E68C8C();
    v18 = v11;
    v12 = v10;
    v20 = 2;
    v17 = sub_1D1E68C7C();
    v19 = 3;
    v16 = sub_1D1E68C7C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
    *(a2 + 8) = v12;
    *(a2 + 16) = v18 & 1;
    v14 = v16;
    *(a2 + 17) = v17;
    *(a2 + 18) = v14;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1718484(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 17);
  v5 = *(v1 + 18);
  sub_1D1E6920C();
  sub_1D1E6922C();
  if (v3 == 1)
  {
    sub_1D1E6922C();
    if (v4 == 2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    sub_1D1E6922C();
    if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v6 = v2;
    }

    else
    {
      v6 = 0;
    }

    MEMORY[0x1D3892890](v6);
    if (v4 == 2)
    {
      goto LABEL_8;
    }
  }

  sub_1D1E6922C();
LABEL_8:
  sub_1D1E6922C();
  if (v5 != 2)
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t static HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.scores<A>(for:in:filterIDs:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = HomeProtocol.analyticsTileCountValue.getter(a4, a5);
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v8 = result;
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    static PredictionsRelevanceLevel.analyze<A>(predictions:totalPredictableCount:)(v8, &v11);
    return static HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.scores<A>(for:relevance:filterIDs:)(a1, &v11, a3, AssociatedTypeWitness, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t static HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.scores<A>(for:relevance:filterIDs:)(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, void (**a5)(void, void))
{
  v132 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v111 = &v109 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v109 - v12;
  v13 = sub_1D1E66A7C();
  v117 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v113 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v110 = &v109 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v116 = &v109 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v128 = &v109 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v109 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v129 = &v109 - v25;
  v114 = *a2;
  v142 = a1;
  v133 = a4;
  v134 = a5;
  v26 = sub_1D1E67D1C();
  WitnessTable = swift_getWitnessTable();
  v28 = sub_1D1E67ABC();
  v127 = a4;
  v29 = sub_1D1E67CBC();
  v142 = v28;
  MEMORY[0x1D3891090](&v139, v26, WitnessTable);

  v141 = v139;
  sub_1D1E68B6C();
  sub_1D1E68B3C();
  v118 = sub_1D1E68B5C();
  sub_1D1E68B4C();
  if (v140)
  {
    v30 = v140;
    v122 = a5 + 3;
    v121 = (v117 + 48);
    v115 = (v117 + 32);
    v31 = v132;
    v130 = (v117 + 16);
    v131 = v132 + 56;
    v32 = (v117 + 8);
    v120 = a5 + 2;
    v109 = a5 + 5;
    v33 = 20;
    if (v29 > 20)
    {
      v33 = v29;
    }

    v34 = v139;
    v35 = v33;
    v124 = MEMORY[0x1E69E7CC8];
    v36 = v119;
    v123 = a5;
    while (1)
    {
      v112 = v34;
      while (v31)
      {
        a5[3](v127, a5);
        v37 = *v121;
        v38 = (*v121)(v36, 1, v13);
        v126 = v30;
        v125 = v34;
        if (v38 == 1)
        {
          sub_1D1E66A6C();
          if (v37(v36, 1, v13) != 1)
          {
            sub_1D1741A30(v36, &qword_1EC642590, qword_1D1E71260);
          }
        }

        else
        {
          (*v115)(v129, v36, v13);
        }

        v31 = v132;
        if (*(v132 + 16))
        {
          sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
          v31 = v132;
          v39 = sub_1D1E676DC();
          v40 = -1 << *(v31 + 32);
          v41 = v39 & ~v40;
          if ((*(v131 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41))
          {
            v42 = ~v40;
            v43 = *(v117 + 72);
            v44 = *(v117 + 16);
            while (1)
            {
              v44(v24, *(v31 + 48) + v43 * v41, v13);
              sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
              v45 = sub_1D1E6775C();
              v46 = *v32;
              (*v32)(v24, v13);
              if (v45)
              {
                break;
              }

              v41 = (v41 + 1) & v42;
              v31 = v132;
              if (((*(v131 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
              {
                goto LABEL_19;
              }
            }

            v46(v129, v13);
            goto LABEL_27;
          }
        }

LABEL_19:
        v47 = *v32;
        (*v32)(v129, v13);
        a5[2](v127, a5);
        if (*(v31 + 16))
        {
          sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
          v31 = v132;
          v48 = sub_1D1E676DC();
          v49 = -1 << *(v31 + 32);
          v50 = v48 & ~v49;
          if ((*(v131 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50))
          {
            v51 = ~v49;
            v52 = *(v117 + 72);
            v53 = *(v117 + 16);
            while (1)
            {
              v53(v24, *(v31 + 48) + v52 * v50, v13);
              sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
              v54 = sub_1D1E6775C();
              v47(v24, v13);
              if (v54)
              {
                break;
              }

              v50 = (v50 + 1) & v51;
              v31 = v132;
              if (((*(v131 + ((v50 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v50) & 1) == 0)
              {
                goto LABEL_8;
              }
            }

            v47(v128, v13);
            a5 = v123;
LABEL_27:
            v36 = v119;
            v55 = &v144;
            goto LABEL_28;
          }
        }

LABEL_8:
        v47(v128, v13);
        swift_unknownObjectRelease();
        sub_1D1E68B4C();
        v34 = v139;
        v30 = v140;
        a5 = v123;
        v36 = v119;
        if (!v140)
        {
          goto LABEL_53;
        }
      }

      v55 = &v143;
LABEL_28:
      v56 = *(v55 - 32);
      a5[5](v127, a5);
      v58 = v56 + 1;
      if (__OFADD__(v56, 1))
      {
        break;
      }

      if (v56 < 0)
      {
        goto LABEL_55;
      }

      v59 = v57;
      v125 = v56;
      LOBYTE(v139) = 0;
      v136 = 0;
      v135 = 0;
      v60 = v116;
      (v123[2])(v127);
      v61 = v124;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v139 = v61;
      v64 = sub_1D171D44C(v60);
      v65 = *(v61 + 16);
      v66 = (v63 & 1) == 0;
      v67 = v65 + v66;
      if (__OFADD__(v65, v66))
      {
        goto LABEL_56;
      }

      v68 = v63;
      if (*(v61 + 24) >= v67)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D1733D98();
        }
      }

      else
      {
        sub_1D17208D8(v67, isUniquelyReferenced_nonNull_native);
        v69 = sub_1D171D44C(v116);
        if ((v68 & 1) != (v70 & 1))
        {
          goto LABEL_60;
        }

        v64 = v69;
      }

      v71 = v125;
      v72 = 1.0 - v58 / v35;
      v73 = v139;
      v124 = v139;
      if (v68)
      {
        v74 = *(v139 + 56) + 48 * v64;
        *v74 = v59;
        *(v74 + 8) = 0;
        *(v74 + 9) = v141;
        *(v74 + 12) = *(&v141 + 3);
        *(v74 + 16) = v72;
        *(v74 + 24) = 0;
        *(v74 + 25) = v114;
        *(v74 + 26) = v137;
        *(v74 + 30) = v138;
        *(v74 + 32) = v71;
        *(v74 + 40) = 768;
        v75 = *v32;
        (*v32)(v116, v13);
        a5 = v123;
      }

      else
      {
        *(v139 + 8 * (v64 >> 6) + 64) |= 1 << v64;
        v76 = v117;
        v77 = v116;
        (*(v117 + 16))(*(v73 + 48) + *(v117 + 72) * v64, v116, v13);
        v78 = *(v124 + 56) + 48 * v64;
        *v78 = v59;
        *(v78 + 8) = 0;
        *(v78 + 12) = *(&v141 + 3);
        *(v78 + 9) = v141;
        *(v78 + 16) = v72;
        *(v78 + 24) = 0;
        *(v78 + 25) = v114;
        *(v78 + 30) = v138;
        *(v78 + 26) = v137;
        *(v78 + 32) = v71;
        *(v78 + 40) = 768;
        v75 = *(v76 + 8);
        v79 = v124;
        v75(v77, v13);
        v80 = *(v79 + 16);
        v81 = __OFADD__(v80, 1);
        v82 = v80 + 1;
        a5 = v123;
        if (v81)
        {
          goto LABEL_57;
        }

        *(v79 + 16) = v82;
      }

      v83 = v111;
      a5[3](v127, a5);
      if ((*v121)(v83, 1, v13) == 1)
      {
        swift_unknownObjectRelease();
        sub_1D1741A30(v83, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        v112 = v75;
        v84 = v110;
        (*v115)(v110, v83, v13);
        v85 = *v130;
        v86 = v113;
        (*v130)(v113, v84, v13);
        v87 = v124;
        v88 = swift_isUniquelyReferenced_nonNull_native();
        v139 = v87;
        v89 = sub_1D171D44C(v86);
        v91 = *(v87 + 16);
        v92 = (v90 & 1) == 0;
        v81 = __OFADD__(v91, v92);
        v93 = v91 + v92;
        if (v81)
        {
          goto LABEL_58;
        }

        v94 = v90;
        if (*(v87 + 24) >= v93)
        {
          if ((v88 & 1) == 0)
          {
            v107 = v89;
            sub_1D1733D98();
            v89 = v107;
          }
        }

        else
        {
          sub_1D17208D8(v93, v88);
          v89 = sub_1D171D44C(v113);
          if ((v94 & 1) != (v95 & 1))
          {
            goto LABEL_60;
          }
        }

        v96 = v139;
        v124 = v139;
        if (v94)
        {
          v97 = *(v139 + 56) + 48 * v89;
          *v97 = v59;
          *(v97 + 8) = 0;
          *(v97 + 9) = v141;
          *(v97 + 12) = *(&v141 + 3);
          *(v97 + 16) = v72;
          *(v97 + 24) = 0;
          *(v97 + 25) = v114;
          *(v97 + 26) = v137;
          *(v97 + 30) = v138;
          *(v97 + 32) = v125;
          *(v97 + 40) = 768;
          swift_unknownObjectRelease();
          v98 = v112;
          v112(v113, v13);
          v98(v110, v13);
        }

        else
        {
          *(v139 + 8 * (v89 >> 6) + 64) |= 1 << v89;
          v99 = v89;
          v100 = v113;
          v85(*(v96 + 48) + *(v117 + 72) * v89, v113, v13);
          v101 = *(v124 + 56) + 48 * v99;
          *v101 = v59;
          *(v101 + 8) = 0;
          *(v101 + 12) = *(&v141 + 3);
          *(v101 + 9) = v141;
          *(v101 + 16) = v72;
          *(v101 + 24) = 0;
          *(v101 + 25) = v114;
          *(v101 + 30) = v138;
          *(v101 + 26) = v137;
          *(v101 + 32) = v125;
          *(v101 + 40) = 768;
          swift_unknownObjectRelease();
          v102 = v100;
          v103 = v124;
          v104 = v112;
          v112(v102, v13);
          v104(v110, v13);
          v105 = *(v103 + 16);
          v81 = __OFADD__(v105, 1);
          v106 = v105 + 1;
          if (v81)
          {
            goto LABEL_59;
          }

          *(v103 + 16) = v106;
        }
      }

      v31 = v132;
      sub_1D1E68B4C();
      v34 = v139;
      v30 = v140;
      if (!v140)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
LABEL_60:
    result = sub_1D1E690FC();
    __break(1u);
  }

  else
  {
    v124 = MEMORY[0x1E69E7CC8];
LABEL_53:

    return v124;
  }

  return result;
}

uint64_t sub_1D1719534(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 16) && (sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v7 = sub_1D1E676DC(), v8 = -1 << *(a2 + 32), v9 = v7 & ~v8, v18 = a2 + 56, ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0))
  {
    v17 = a2;
    v10 = ~v8;
    v11 = v4 + 16;
    v12 = *(v4 + 16);
    v13 = *(v11 + 56);
    v14 = (v11 - 8);
    do
    {
      v12(v6, *(v17 + 48) + v13 * v9, v3);
      sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1D1E6775C();
      (*v14)(v6, v3);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1D1719764(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  if (*(a2 + 16) && (v5 = sub_1D1E6920C(), a3(v5), sub_1D1E678EC(), , v6 = sub_1D1E6926C(), v7 = -1 << *(a2 + 32), v8 = v6 & ~v7, ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = (a3)();
      v12 = v11;
      if (v10 == (a3)() && v12 == v13)
      {
        break;
      }

      v15 = sub_1D1E6904C();

      if ((v15 & 1) == 0)
      {
        v8 = (v8 + 1) & v9;
        if ((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          continue;
        }
      }

      return v15 & 1;
    }

    v15 = 1;
  }

  else
  {
    v15 = 0;
  }

  return v15 & 1;
}

BOOL sub_1D17198DC(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D1E6920C();
  v4 = dword_1D1E6EF7C[a1];
  sub_1D1E6924C();
  v5 = sub_1D1E6926C();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = dword_1D1E6EF7C[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL sub_1D17199BC(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = sub_1D1E691FC();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + 8 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

BOOL sub_1D1719A64(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D1E6920C();
  v4 = dword_1D1E6EF0C[a1];
  sub_1D1E6924C();
  v5 = sub_1D1E6926C();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = dword_1D1E6EF0C[*(*(a2 + 48) + v7)];
    result = v9 == v4;
    if (v9 == v4)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_1D1719B44(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v42);
  v4 = &v38 - v3;
  v45 = _s7MergeIdVMa(0);
  v5 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v53 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v38 - v14;
  v54 = a2;
  if (*(a2 + 16))
  {
    sub_1D1E6920C();
    sub_1D1741C08(v55, v15, &qword_1EC642590, qword_1D1E71260);
    v52 = *(v8 + 48);
    v16 = v52(v15, 1, v7);
    v40 = v8 + 48;
    if (v16 == 1)
    {
      sub_1D1E6922C();
    }

    else
    {
      v17 = v13;
      v18 = v41;
      (*(v8 + 32))(v41, v15, v7);
      sub_1D1E6922C();
      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      v19 = v18;
      v13 = v17;
      (*(v8 + 8))(v19, v7);
    }

    v20 = (v55 + *(v45 + 20));
    v21 = *v20;
    v46 = v20[1];
    v47 = v21;
    sub_1D1E678EC();
    v22 = sub_1D1E6926C();
    v23 = -1 << *(v54 + 32);
    v24 = v22 & ~v23;
    v51 = v54 + 56;
    if ((*(v54 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
    {
      v48 = ~v23;
      v49 = v7;
      v39 = (v8 + 32);
      v50 = *(v5 + 72);
      v44 = (v8 + 8);
      v25 = v42;
      v26 = v53;
      do
      {
        sub_1D1741C80(*(v54 + 48) + v50 * v24, v26, _s7MergeIdVMa);
        v27 = *(v25 + 48);
        sub_1D1741C08(v26, v4, &qword_1EC642590, qword_1D1E71260);
        sub_1D1741C08(v55, &v4[v27], &qword_1EC642590, qword_1D1E71260);
        v28 = v49;
        v29 = v52;
        if (v52(v4, 1, v49) == 1)
        {
          v30 = v29(&v4[v27], 1, v28);
          v26 = v53;
          if (v30 != 1)
          {
            goto LABEL_8;
          }

          sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
        }

        else
        {
          sub_1D1741C08(v4, v13, &qword_1EC642590, qword_1D1E71260);
          if (v29(&v4[v27], 1, v28) == 1)
          {
            (*v44)(v13, v28);
            v26 = v53;
LABEL_8:
            sub_1D1741A30(v4, &qword_1EC642980, &unk_1D1E6E6E0);
            goto LABEL_9;
          }

          v31 = v13;
          v32 = v41;
          (*v39)(v41, &v4[v27], v28);
          sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v43 = sub_1D1E6775C();
          v33 = *v44;
          v34 = v32;
          v13 = v31;
          (*v44)(v34, v28);
          v33(v31, v28);
          v25 = v42;
          sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
          v26 = v53;
          if ((v43 & 1) == 0)
          {
            goto LABEL_9;
          }
        }

        v35 = (v26 + *(v45 + 20));
        v36 = *v35 == v47 && v35[1] == v46;
        if (v36 || (sub_1D1E6904C() & 1) != 0)
        {
          sub_1D1741D50(v26, _s7MergeIdVMa);
          return 1;
        }

LABEL_9:
        sub_1D1741D50(v26, _s7MergeIdVMa);
        v24 = (v24 + 1) & v48;
      }

      while (((*(v51 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);
    }
  }

  return 0;
}

uint64_t sub_1D171A1C8(uint64_t a1, uint64_t a2)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD8, &unk_1D1E6E820);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v39 - v4;
  v45 = sub_1D1E66A7C();
  v6 = *(v45 - 8);
  v7 = MEMORY[0x1EEE9AC00](v45);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v11 = type metadata accessor for HomeState.Stream.StateSubscription.Reason(0) - 8;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - v18;
  if (!*(a2 + 16))
  {
    return 0;
  }

  v47 = v17;
  sub_1D1E6920C();
  sub_1D1741C80(a1, v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v21 = *(*(v20 - 8) + 48);
  v22 = v21(v19, 3, v20);
  v49 = a1;
  if (v22 > 1)
  {
    v24 = v6;
    if (v22 == 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = 3;
    }
  }

  else
  {
    if (!v22)
    {
      v23 = *(v6 + 32);
      v24 = v6;
      v25 = v45;
      v23(v10, v19, v45);
      MEMORY[0x1D3892850](1);
      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*(v24 + 8))(v10, v25);
      goto LABEL_10;
    }

    v24 = v6;
    v26 = 0;
  }

  MEMORY[0x1D3892850](v26);
LABEL_10:
  v27 = sub_1D1E6926C();
  v28 = -1 << *(a2 + 32);
  v29 = v27 & ~v28;
  v48 = a2 + 56;
  if (((*(a2 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
  {
    return 0;
  }

  v46 = ~v28;
  v47 = *(v47 + 72);
  v43 = (v24 + 8);
  v39 = (v24 + 32);
  v40 = v21;
  v30 = v44;
  while (1)
  {
    v31 = a2;
    sub_1D1741C80(*(a2 + 48) + v47 * v29, v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v32 = *(v50 + 48);
    sub_1D1741C80(v16, v5, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    sub_1D1741C80(v49, &v5[v32], type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v33 = v21(v5, 3, v20);
    if (v33 > 1)
    {
      if (v33 == 2)
      {
        sub_1D1741D50(v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        if (v21(&v5[v32], 3, v20) == 2)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1D1741D50(v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        if (v21(&v5[v32], 3, v20) == 3)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    if (v33)
    {
      sub_1D1741D50(v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      if (v21(&v5[v32], 3, v20) == 1)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    sub_1D1741C80(v5, v30, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    if (!v21(&v5[v32], 3, v20))
    {
      break;
    }

    sub_1D1741D50(v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    (*v43)(v30, v45);
LABEL_22:
    sub_1D1741A30(v5, &qword_1EC642AD8, &unk_1D1E6E820);
LABEL_23:
    v29 = (v29 + 1) & v46;
    a2 = v31;
    if (((*(v48 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      return 0;
    }
  }

  v34 = v42;
  v35 = v45;
  (*v39)(v42, &v5[v32], v45);
  v41 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v36 = *v43;
  v37 = v34;
  v30 = v44;
  (*v43)(v37, v35);
  sub_1D1741D50(v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v36(v30, v35);
  v21 = v40;
  if ((v41 & 1) == 0)
  {
    sub_1D1741D50(v5, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    goto LABEL_23;
  }

LABEL_28:
  sub_1D1741D50(v5, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  return 1;
}

uint64_t sub_1D171A84C(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_1D1E6920C();
  sub_1D1E6922C();
  if (a1 != 28)
  {
    sub_1D1E6924C();
  }

  v5 = sub_1D1E6926C();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    do
    {
      v9 = *(*(a2 + 48) + v7);
      if (v9 == 28)
      {
        if (a1 == 28)
        {
          return 1;
        }
      }

      else if (a1 != 28 && dword_1D1E6EF0C[v9] == dword_1D1E6EF0C[a1])
      {
        return 1;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return 0;
}

uint64_t sub_1D171A97C(uint64_t a1, uint64_t a2)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  MEMORY[0x1EEE9AC00](v57);
  v5 = &v46 - v4;
  v52 = sub_1D1E66A7C();
  v6 = *(v52 - 8);
  v7 = MEMORY[0x1EEE9AC00](v52);
  v48 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - v9;
  v11 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v46 - v16);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v46 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v23 = &v46 - v22;
  if (!*(a2 + 16))
  {
    return 0;
  }

  v55 = v21;
  sub_1D1E6920C();
  sub_1D1741C80(a1, v23, type metadata accessor for StaticAccessory.DeviceIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v53 = a2;
  v56 = a1;
  v50 = v6;
  if (EnumCaseMultiPayload == 1)
  {
    v25 = *(v6 + 32);
    v26 = v6;
    v27 = v52;
    v25(v10, v23, v52);
    MEMORY[0x1D3892850](1);
    sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v26 + 8))(v10, v27);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    sub_1D1E678EC();
    a2 = v53;
  }

  v28 = sub_1D1E6926C();
  v29 = -1 << *(a2 + 32);
  v30 = v28 & ~v29;
  v49 = a2 + 56;
  if (((*(a2 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
  {
    return 0;
  }

  v54 = ~v29;
  v55 = *(v55 + 72);
  v31 = v49;
  v51 = (v50 + 8);
  v47 = (v50 + 32);
  while (1)
  {
    sub_1D1741C80(*(a2 + 48) + v55 * v30, v20, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v32 = &v5[*(v57 + 48)];
    sub_1D1741C80(v20, v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1741C80(v56, v32, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1D1741C80(v5, v14, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v17;
      v34 = v14;
      v35 = v48;
      v36 = v52;
      (*v47)(v48, v32, v52);
      LODWORD(v50) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v37 = *v51;
      v38 = v35;
      v14 = v34;
      v17 = v33;
      v31 = v49;
      (*v51)(v38, v36);
      sub_1D1741D50(v20, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v37(v14, v36);
      if (v50)
      {
        goto LABEL_25;
      }

LABEL_20:
      sub_1D1741D50(v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
      a2 = v53;
      goto LABEL_9;
    }

    sub_1D1741D50(v20, type metadata accessor for StaticAccessory.DeviceIdentifier);
    (*v51)(v14, v52);
LABEL_8:
    sub_1D1741A30(v5, &qword_1EC642AA8, &unk_1D1E9F9F0);
LABEL_9:
    v30 = (v30 + 1) & v54;
    if (((*(v31 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
    {
      return 0;
    }
  }

  sub_1D1741C80(v5, v17, type metadata accessor for StaticAccessory.DeviceIdentifier);
  v40 = *v17;
  v39 = v17[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D1741D50(v20, type metadata accessor for StaticAccessory.DeviceIdentifier);

    a2 = v53;
    goto LABEL_8;
  }

  v41 = *v32;
  v42 = *(v32 + 1);
  if (v40 != v41 || v39 != v42)
  {
    v44 = sub_1D1E6904C();

    sub_1D1741D50(v20, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (v44)
    {
      goto LABEL_25;
    }

    goto LABEL_20;
  }

  sub_1D1741D50(v20, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_25:
  sub_1D1741D50(v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
  return 1;
}

uint64_t sub_1D171B004(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = a1, v4 = sub_1D1CDA80C(*(a2 + 40), a1), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v19 = ~v5;
    while (1)
    {
      v7 = *(*(a2 + 48) + v6);
      if (v7 > 3)
      {
        if (*(*(a2 + 48) + v6) > 5u)
        {
          if (v7 == 6)
          {
            v10 = "17-A590-755E1AAC02AE";
          }

          else
          {
            v10 = "73-8FBD-0E8978A33403";
          }
        }

        else if (v7 == 4)
        {
          v10 = "60-AD68-D91053B75F44";
        }

        else
        {
          v10 = "7E-BE63-1D00B1500545";
        }
      }

      else
      {
        if (v7 == 2)
        {
          v8 = "73-A058-C5E64BC487B2";
        }

        else
        {
          v8 = "CE-986D-63B28F62C9E3";
        }

        if (*(*(a2 + 48) + v6))
        {
          v9 = "13-AA62-01754F256DD5";
        }

        else
        {
          v9 = "00-8000-0026BB765291";
        }

        if (*(*(a2 + 48) + v6) <= 1u)
        {
          v10 = v9;
        }

        else
        {
          v10 = v8;
        }
      }

      v11 = v10 | 0x8000000000000000;
      v12 = "17-A590-755E1AAC02AE";
      if (v3 != 6)
      {
        v12 = "73-8FBD-0E8978A33403";
      }

      v13 = "60-AD68-D91053B75F44";
      if (v3 != 4)
      {
        v13 = "7E-BE63-1D00B1500545";
      }

      if (v3 <= 5u)
      {
        v12 = v13;
      }

      if (v3 == 2)
      {
        v14 = "73-A058-C5E64BC487B2";
      }

      else
      {
        v14 = "CE-986D-63B28F62C9E3";
      }

      if (v3)
      {
        v15 = "13-AA62-01754F256DD5";
      }

      else
      {
        v15 = "00-8000-0026BB765291";
      }

      if (v3 <= 1u)
      {
        v14 = v15;
      }

      v16 = v3 <= 3u ? v14 : v12;
      if (v11 == (v16 | 0x8000000000000000))
      {
        break;
      }

      v17 = sub_1D1E6904C();

      if ((v17 & 1) == 0)
      {
        v6 = (v6 + 1) & v19;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v17 & 1;
    }

    v17 = 1;
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

uint64_t sub_1D171B238(uint64_t a1, uint64_t a2)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A00, &qword_1D1E97330);
  MEMORY[0x1EEE9AC00](v50);
  v5 = &v39 - v4;
  v45 = sub_1D1E66A7C();
  v6 = *(v45 - 8);
  v7 = MEMORY[0x1EEE9AC00](v45);
  v42 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v39 - v9;
  v11 = type metadata accessor for DataModel.StateSubscription.Reason(0) - 8;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v44 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v39 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v39 - v18;
  if (!*(a2 + 16))
  {
    return 0;
  }

  v47 = v17;
  sub_1D1E6920C();
  sub_1D1741C80(a1, v19, type metadata accessor for DataModel.StateSubscription.Reason);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v21 = *(*(v20 - 8) + 48);
  v22 = v21(v19, 3, v20);
  v49 = a1;
  if (v22 > 1)
  {
    v24 = v6;
    if (v22 == 2)
    {
      v26 = 2;
    }

    else
    {
      v26 = 3;
    }
  }

  else
  {
    if (!v22)
    {
      v23 = *(v6 + 32);
      v24 = v6;
      v25 = v45;
      v23(v10, v19, v45);
      MEMORY[0x1D3892850](1);
      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*(v24 + 8))(v10, v25);
      goto LABEL_10;
    }

    v24 = v6;
    v26 = 0;
  }

  MEMORY[0x1D3892850](v26);
LABEL_10:
  v27 = sub_1D1E6926C();
  v28 = -1 << *(a2 + 32);
  v29 = v27 & ~v28;
  v48 = a2 + 56;
  if (((*(a2 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
  {
    return 0;
  }

  v46 = ~v28;
  v47 = *(v47 + 72);
  v43 = (v24 + 8);
  v39 = (v24 + 32);
  v40 = v21;
  v30 = v44;
  while (1)
  {
    v31 = a2;
    sub_1D1741C80(*(a2 + 48) + v47 * v29, v16, type metadata accessor for DataModel.StateSubscription.Reason);
    v32 = *(v50 + 48);
    sub_1D1741C80(v16, v5, type metadata accessor for DataModel.StateSubscription.Reason);
    sub_1D1741C80(v49, &v5[v32], type metadata accessor for DataModel.StateSubscription.Reason);
    v33 = v21(v5, 3, v20);
    if (v33 > 1)
    {
      if (v33 == 2)
      {
        sub_1D1741D50(v16, type metadata accessor for DataModel.StateSubscription.Reason);
        if (v21(&v5[v32], 3, v20) == 2)
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_1D1741D50(v16, type metadata accessor for DataModel.StateSubscription.Reason);
        if (v21(&v5[v32], 3, v20) == 3)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_22;
    }

    if (v33)
    {
      sub_1D1741D50(v16, type metadata accessor for DataModel.StateSubscription.Reason);
      if (v21(&v5[v32], 3, v20) == 1)
      {
        goto LABEL_28;
      }

      goto LABEL_22;
    }

    sub_1D1741C80(v5, v30, type metadata accessor for DataModel.StateSubscription.Reason);
    if (!v21(&v5[v32], 3, v20))
    {
      break;
    }

    sub_1D1741D50(v16, type metadata accessor for DataModel.StateSubscription.Reason);
    (*v43)(v30, v45);
LABEL_22:
    sub_1D1741A30(v5, &qword_1EC642A00, &qword_1D1E97330);
LABEL_23:
    v29 = (v29 + 1) & v46;
    a2 = v31;
    if (((*(v48 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      return 0;
    }
  }

  v34 = v42;
  v35 = v45;
  (*v39)(v42, &v5[v32], v45);
  v41 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v36 = *v43;
  v37 = v34;
  v30 = v44;
  (*v43)(v37, v35);
  sub_1D1741D50(v16, type metadata accessor for DataModel.StateSubscription.Reason);
  v36(v30, v35);
  v21 = v40;
  if ((v41 & 1) == 0)
  {
    sub_1D1741D50(v5, type metadata accessor for DataModel.StateSubscription.Reason);
    goto LABEL_23;
  }

LABEL_28:
  sub_1D1741D50(v5, type metadata accessor for DataModel.StateSubscription.Reason);
  return 1;
}

double static HomeAnalyticsUtilities.PredictionAnalyticsScoringValues.normalizedScore<A>(index:predictionsCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v19[1] = a1;
  v20 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = v19 - v11;
  swift_getAssociatedConformanceWitness();
  sub_1D1E690AC();
  sub_1D1E6902C();
  sub_1D1E68B1C();
  v13 = *(v7 + 8);
  v13(v10, a3);
  if (sub_1D1E6863C() < 65)
  {
    v15 = sub_1D1E6864C();
    v16 = sub_1D1E6862C();
    v13(v12, a3);
    if (v15)
    {
      v14 = v16;
    }

    else
    {
      v14 = v16;
    }
  }

  else
  {
    sub_1D173FC5C();
    sub_1D173FCB0();
    sub_1D1E675CC();
    v13(v12, a3);
    v14 = v21;
  }

  v17 = 20;
  if (v20 > 20)
  {
    v17 = v20;
  }

  return 1.0 - v14 / v17;
}

uint64_t sub_1D171BBB0@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1D171BC08@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t sub_1D171BC60@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

id default argument 0 of HomeState._Client.createHomeManagerIfNecessary(configuration:)()
{
  v0 = [objc_opt_self() defaultPrivateConfiguration];

  return v0;
}

uint64_t default argument 1 of Task.timeout(_:throwingIfExpired:)()
{
  return 1;
}

{
  return 1;
}

uint64_t default argument 1 of AsyncNotifySequence.init(name:queue:)()
{
  v0 = sub_1D1E6750C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741B10(0, &qword_1EC642608, 0x1E69E9610);
  (*(v1 + 104))(v3, *MEMORY[0x1E69E7F98], v0);
  v4 = sub_1D1E683CC();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_1D171BF24(uint64_t a1, id *a2)
{
  result = sub_1D1E677FC();
  *a2 = 0;
  return result;
}

uint64_t sub_1D171BF9C(uint64_t a1, id *a2)
{
  v3 = sub_1D1E6780C();
  *a2 = 0;
  return v3 & 1;
}

uint64_t sub_1D171C01C@<X0>(uint64_t *a1@<X8>)
{
  sub_1D1E6781C();
  v2 = sub_1D1E677EC();

  *a1 = v2;
  return result;
}

uint64_t sub_1D171C060(void *a1, uint64_t *a2)
{
  v2 = sub_1D1E6781C();
  v4 = v3;
  if (v2 == sub_1D1E6781C() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1D1E6904C();
  }

  return v7 & 1;
}

uint64_t sub_1D171C0E8()
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D171C130(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D171C174()
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

uint64_t sub_1D171C1BC(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  return sub_1D1E6926C();
}

BOOL sub_1D171C230(_WORD *a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int16 *sub_1D171C260@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

unsigned __int16 *sub_1D171C28C@<X0>(unsigned __int16 *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 2) = v5 == 0;
  return result;
}

_DWORD *sub_1D171C354@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 4) = v3 == 0;
  return result;
}

int *sub_1D171C380@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 4) = v5 == 0;
  return result;
}

uint64_t sub_1D171C404(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D173FC14(&qword_1EC642838, type metadata accessor for MTRError, &unk_1D1E6E54C);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D171C480(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC6428B0, type metadata accessor for MTRError, &unk_1D1E6D484);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D171C4EC(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC6428B0, type metadata accessor for MTRError, &unk_1D1E6D484);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D171C558(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC642838, type metadata accessor for MTRError, &unk_1D1E6E54C);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D171C5C4(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC642868, type metadata accessor for HMError, &unk_1D1E6DA3C);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1D171C630(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC642868, type metadata accessor for HMError, &unk_1D1E6DA3C);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1D171C69C(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC6428A0, type metadata accessor for HMError, &unk_1D1E6E3FC);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1D171C708()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D171C750(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D171C794(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CFString(0);
  sub_1D173FC14(&qword_1EC642D00, type metadata accessor for CFString, &unk_1D1E6EEDC);
  return sub_1D1E66DEC() & 1;
}

uint64_t sub_1D171C81C@<X0>(uint64_t *a2@<X8>)
{
  v3 = sub_1D1E677EC();

  *a2 = v3;
  return result;
}

uint64_t sub_1D171C864@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D1E6781C();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D171C8A0(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC6428A0, type metadata accessor for HMError, &unk_1D1E6E3FC);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D171C90C(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC6428A0, type metadata accessor for HMError, &unk_1D1E6E3FC);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D171C978(void *a1, uint64_t a2)
{
  v4 = sub_1D173FC14(&qword_1EC6428A0, type metadata accessor for HMError, &unk_1D1E6E3FC);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D171CA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D173FC14(&qword_1EC6428A0, type metadata accessor for HMError, &unk_1D1E6E3FC);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1D171CA84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D1E6920C();
  sub_1D1E676EC();
  return sub_1D1E6926C();
}

uint64_t sub_1D171CAF4(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC642838, type metadata accessor for MTRError, &unk_1D1E6E54C);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1D171CB60(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC642838, type metadata accessor for MTRError, &unk_1D1E6E54C);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1D171CBCC(void *a1, uint64_t a2)
{
  v4 = sub_1D173FC14(&qword_1EC642838, type metadata accessor for MTRError, &unk_1D1E6E54C);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1D171CC5C@<X0>(uint64_t a1@<X0>, _WORD *a2@<X8>)
{
  v3 = sub_1D173FEB0(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1D171CC9C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  v3 = sub_1D173FEE8(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_1D171CCDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D173FC14(&qword_1EC642838, type metadata accessor for MTRError, &unk_1D1E6E54C);

  return sub_1D1E6650C();
}

id sub_1D171CD60@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1D171CD6C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1D1E66DEC();
}

uint64_t sub_1D171CDD8(uint64_t a1)
{
  v2 = sub_1D173FC14(&qword_1EC642D08, type metadata accessor for HMSignificantEvent, &unk_1D1E6EC70);
  v3 = sub_1D173FC14(&qword_1EC642D10, type metadata accessor for HMSignificantEvent, &unk_1D1E6EC10);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1D171CE94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D173FC14(&qword_1EC6428A0, type metadata accessor for HMError, &unk_1D1E6E3FC);

  return sub_1D1E6650C();
}

uint64_t sub_1D171CF18()
{
  v0 = sub_1D1E6781C();
  v1 = MEMORY[0x1D3891000](v0);

  return v1;
}

uint64_t sub_1D171CF54(uint64_t a1)
{
  sub_1D1E6781C();
  sub_1D1E678EC();
}

uint64_t sub_1D171CFA8(uint64_t a1)
{
  sub_1D1E6781C();
  sub_1D1E6920C();
  sub_1D1E678EC();
  v1 = sub_1D1E6926C();

  return v1;
}

uint64_t sub_1D171D0C0(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  swift_getWitnessTable();
  sub_1D1E66DFC();
  return sub_1D1E6926C();
}

unint64_t sub_1D171D15C(uint64_t a1)
{
  v2 = a1;
  v3 = MEMORY[0x1D3892820](*(v1 + 40), a1, 2);

  return sub_1D171E368(v2, v3);
}

unint64_t sub_1D171D1A4(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6924C();
  sub_1D1E6924C();
  v2 = sub_1D1E6926C();

  return sub_1D171E2D4(a1 & 0xFFFFFFFFFFLL, v2);
}

unint64_t sub_1D171D278(uint64_t a1)
{
  v1 = a1;
  sub_1D1E6920C();
  sub_1D1E6924C();
  v2 = sub_1D1E6926C();

  return sub_1D171E3D8(v1, v2);
}

unint64_t sub_1D171D2F0(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E678EC();
  v4 = sub_1D1E6926C();

  return sub_1D171E458(a1, a2, v4);
}

unint64_t sub_1D171D408(uint64_t a1)
{
  v2 = a1;
  v3 = sub_1D1CDA80C(*(v1 + 40), a1);

  return sub_1D171E5DC(v2, v3);
}

unint64_t sub_1D171D44C(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v2 = sub_1D1E676DC();
  return sub_1D171E7F4(a1, v2);
}

unint64_t sub_1D171D4E0(uint64_t a1)
{
  v1 = a1;
  sub_1D1E6920C();
  sub_1D1E6924C();
  v2 = sub_1D1E6926C();

  return sub_1D171E9B4(v1, v2);
}

unint64_t sub_1D171D54C(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  type metadata accessor for BatchRequestError.ID(0);
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v2 = sub_1D1E6926C();

  return sub_1D171EA20(a1, v2);
}

unint64_t sub_1D171D63C(uint64_t a1)
{
  v1 = a1;
  sub_1D1E6920C();
  sub_1D1B33174(v4, v1);
  v2 = sub_1D1E6926C();

  return sub_1D171EC58(v1, v2);
}

unint64_t sub_1D171D6A8(uint64_t a1)
{
  v1 = a1;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  v2 = sub_1D1E6926C();
  return sub_1D171F19C(v1, v2);
}

unint64_t sub_1D171D710(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  type metadata accessor for StaticServiceCharacteristicDoublet(0);
  sub_1D1E676EC();
  StaticCharacteristic.hash(into:)(v4);
  v2 = sub_1D1E6926C();

  return sub_1D171EFE4(a1, v2);
}

unint64_t sub_1D171D804(uint64_t a1)
{
  v2 = sub_1D1E687BC();

  return sub_1D171F20C(a1, v2);
}

unint64_t sub_1D171D848(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  if (a2)
  {
    if (a2 == 1)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1770648(v7, a1);
      goto LABEL_7;
    }

    v4 = 2;
  }

  else
  {
    v4 = 0;
  }

  MEMORY[0x1D3892850](v4);
  sub_1D1E6924C();
  sub_1D1E6923C();
  sub_1D1E6924C();
LABEL_7:
  v5 = sub_1D1E6926C();

  return sub_1D171F2D4(a1, a2, v5);
}

unint64_t sub_1D171D934(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D1E6920C();
  sub_1D1741C08(a1, v8, &qword_1EC642590, qword_1D1E71260);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  _s7MergeIdVMa(0);
  sub_1D1E678EC();
  v9 = sub_1D1E6926C();
  return sub_1D171F57C(a1, v9);
}

unint64_t sub_1D171DB60(uint64_t a1)
{
  v1 = a1;
  sub_1D1E6920C();
  v2 = v1 >> 5;
  if (v2 <= 1)
  {
    if (!(v1 >> 5))
    {
      MEMORY[0x1D3892850](0);
      v4 = v1;
      goto LABEL_11;
    }

    v3 = 1;
  }

  else
  {
    if (v2 == 2)
    {
      v4 = v1 & 0x1F;
      MEMORY[0x1D3892850](2);
      goto LABEL_11;
    }

    if (v2 == 3)
    {
      v3 = 3;
    }

    else
    {
      v3 = 4;
    }
  }

  MEMORY[0x1D3892850](v3);
  v4 = v1 & 1;
LABEL_11:
  MEMORY[0x1D3892850](v4);
  v5 = sub_1D1E6926C();

  return sub_1D171FA6C(v1, v5);
}

unint64_t sub_1D171DC84(uint64_t a1)
{
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D1E6920C();
  sub_1D1741C08(a1, v8, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D173FC14(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  type metadata accessor for DashboardSortableData(0);
  sub_1D1E678EC();
  sub_1D1E66A7C();
  sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v9 = sub_1D1E6926C();
  return sub_1D171FB50(a1, v9);
}

unint64_t sub_1D171DF0C(void *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1D1E6920C();
  sub_1D1E678EC();
  v9 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  sub_1D1741C08(a1 + *(v9 + 20), v8, &qword_1EC642590, qword_1D1E71260);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  v10 = sub_1D1E6926C();
  return sub_1D1720040(a1, v10);
}

uint64_t sub_1D171E134(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1);
  v3 = sub_1D1E6926C();

  return a2(a1, v3);
}

unint64_t sub_1D171E1C8(uint64_t a1, uint64_t (*a2)(void *), uint64_t (*a3)(void))
{
  v6 = sub_1D1E6920C();
  a2(v6);
  sub_1D1E678EC();

  v7 = sub_1D1E6926C();
  return sub_1D1720518(a1, v7, a3);
}

unint64_t sub_1D171E268(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D171E2D4(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      v7 = *(v2 + 48) + 8 * result;
      if (*v7 == a1 && dword_1D1E6EF7C[*(v7 + 4)] == dword_1D1E6EF7C[a1 << 24 >> 56])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D171E368(unsigned __int16 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 2 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D171E3D8(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (dword_1D1E6EF7C[*(*(v2 + 48) + result)] == dword_1D1E6EF7C[a1])
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D171E458(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_1D1E6904C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_1D171E510(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1D1741B10(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1D1E684FC();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

unint64_t sub_1D171E5DC(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v19 + 48) + v4);
      if (v6 > 3)
      {
        if (*(*(v19 + 48) + v4) > 5u)
        {
          if (v6 == 6)
          {
            v9 = "17-A590-755E1AAC02AE";
          }

          else
          {
            v9 = "73-8FBD-0E8978A33403";
          }
        }

        else if (v6 == 4)
        {
          v9 = "60-AD68-D91053B75F44";
        }

        else
        {
          v9 = "7E-BE63-1D00B1500545";
        }
      }

      else
      {
        if (v6 == 2)
        {
          v7 = "73-A058-C5E64BC487B2";
        }

        else
        {
          v7 = "CE-986D-63B28F62C9E3";
        }

        if (*(*(v19 + 48) + v4))
        {
          v8 = "13-AA62-01754F256DD5";
        }

        else
        {
          v8 = "00-8000-0026BB765291";
        }

        if (*(*(v19 + 48) + v4) <= 1u)
        {
          v9 = v8;
        }

        else
        {
          v9 = v7;
        }
      }

      v10 = v9 | 0x8000000000000000;
      v11 = "17-A590-755E1AAC02AE";
      if (v5 != 6)
      {
        v11 = "73-8FBD-0E8978A33403";
      }

      v12 = "60-AD68-D91053B75F44";
      if (v5 != 4)
      {
        v12 = "7E-BE63-1D00B1500545";
      }

      if (v5 <= 5)
      {
        v11 = v12;
      }

      if (v5 == 2)
      {
        v13 = "73-A058-C5E64BC487B2";
      }

      else
      {
        v13 = "CE-986D-63B28F62C9E3";
      }

      if (v5)
      {
        v14 = "13-AA62-01754F256DD5";
      }

      else
      {
        v14 = "00-8000-0026BB765291";
      }

      if (v5 <= 1)
      {
        v13 = v14;
      }

      if (v5 <= 3)
      {
        v11 = v13;
      }

      if (v10 == (v11 | 0x8000000000000000))
      {
        break;
      }

      v15 = sub_1D1E6904C();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        if ((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1D171E7F4(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v15 = sub_1D1E6775C();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1D171E9B4(int a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 4 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D171EA20(uint64_t a1, uint64_t a2)
{
  v20 = type metadata accessor for BatchRequestError.ID(0);
  MEMORY[0x1EEE9AC00](v20);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *(v5 + 72);
    do
    {
      sub_1D1741C80(*(v2 + 48) + v11 * v9, v7, type metadata accessor for BatchRequestError.ID);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v12 = *(v20 + 20);
        v13 = v7[v12];
        LOBYTE(v12) = *(a1 + v12);
        v22 = v13;
        v21 = v12;
        v14 = CharacteristicKind.rawValue.getter();
        v16 = v15;
        if (v14 == CharacteristicKind.rawValue.getter() && v16 == v17)
        {

          sub_1D1741D50(v7, type metadata accessor for BatchRequestError.ID);
          return v9;
        }

        v18 = sub_1D1E6904C();

        sub_1D1741D50(v7, type metadata accessor for BatchRequestError.ID);
        if (v18)
        {
          return v9;
        }
      }

      else
      {
        sub_1D1741D50(v7, type metadata accessor for BatchRequestError.ID);
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_1D171EC58(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v26 = ~v3;
    v5 = 0x4E79616C70736944;
    v27 = a1;
    while (1)
    {
      v6 = *(*(v28 + 48) + v4);
      v29 = v4;
      if (v6 > 4)
      {
        if (*(*(v28 + 48) + v4) <= 6u)
        {
          if (v6 == 5)
          {
            v11 = 0xD000000000000017;
            v12 = 0x80000001D1EB8390;
          }

          else
          {
            v12 = 0xE800000000000000;
            v11 = 0x657A6953656C6954;
          }
        }

        else if (v6 == 7)
        {
          v11 = 0x746169636F737341;
          v12 = 0xEE00657079546465;
        }

        else if (v6 == 8)
        {
          v11 = 0x496564756C636E49;
          v12 = 0xEF7375746174536ELL;
        }

        else
        {
          v11 = 0x6564644165746144;
          v12 = 0xE900000000000064;
        }
      }

      else
      {
        if (v6 == 3)
        {
          v7 = 0x657469726F766146;
        }

        else
        {
          v7 = 0x61446E4F776F6853;
        }

        if (v6 == 3)
        {
          v8 = 0xE800000000000000;
        }

        else
        {
          v8 = 0xEF6472616F626873;
        }

        if (v6 == 2)
        {
          v7 = 0x6E6564496E6F6349;
          v8 = 0xEE00726569666974;
        }

        v9 = *(*(v28 + 48) + v4) ? 0x44496D6F6F52 : v5;
        v10 = v6 ? 0xE600000000000000 : 0xEB00000000656D61;
        v11 = v6 <= 1 ? v9 : v7;
        v12 = v6 <= 1 ? v10 : v8;
      }

      v13 = 0x6564644165746144;
      if (v27 == 8)
      {
        v13 = 0x496564756C636E49;
      }

      v14 = 0xEF7375746174536ELL;
      if (v27 != 8)
      {
        v14 = 0xE900000000000064;
      }

      if (v27 == 7)
      {
        v13 = 0x746169636F737341;
        v14 = 0xEE00657079546465;
      }

      v15 = 0xD000000000000017;
      if (v27 != 5)
      {
        v15 = 0x657A6953656C6954;
      }

      v16 = 0x80000001D1EB8390;
      if (v27 != 5)
      {
        v16 = 0xE800000000000000;
      }

      if (v27 <= 6)
      {
        v13 = v15;
        v14 = v16;
      }

      if (v27 == 3)
      {
        v17 = 0x657469726F766146;
      }

      else
      {
        v17 = 0x61446E4F776F6853;
      }

      if (v27 == 3)
      {
        v18 = 0xE800000000000000;
      }

      else
      {
        v18 = 0xEF6472616F626873;
      }

      if (v27 == 2)
      {
        v17 = 0x6E6564496E6F6349;
        v18 = 0xEE00726569666974;
      }

      if (v27)
      {
        v19 = 0x44496D6F6F52;
      }

      else
      {
        v19 = v5;
      }

      if (v27)
      {
        v20 = 0xE600000000000000;
      }

      else
      {
        v20 = 0xEB00000000656D61;
      }

      if (v27 <= 1)
      {
        v17 = v19;
        v18 = v20;
      }

      v21 = v27 <= 4 ? v17 : v13;
      v22 = v27 <= 4 ? v18 : v14;
      if (v11 == v21 && v12 == v22)
      {
        break;
      }

      v23 = v5;
      v24 = sub_1D1E6904C();

      if (v24)
      {
        return v29;
      }

      v4 = (v29 + 1) & v26;
      v5 = v23;
      if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v29;
  }

  return v4;
}

unint64_t sub_1D171EFE4(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 72);
    do
    {
      sub_1D1741C80(*(v2 + 48) + v12 * v10, v8, type metadata accessor for StaticServiceCharacteristicDoublet);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v13 = _s13HomeDataModel20StaticCharacteristicV2eeoiySbAC_ACtFZ_0(&v8[*(v5 + 24)], a1 + *(v5 + 24));
        sub_1D1741D50(v8, type metadata accessor for StaticServiceCharacteristicDoublet);
        if (v13)
        {
          return v10;
        }
      }

      else
      {
        sub_1D1741D50(v8, type metadata accessor for StaticServiceCharacteristicDoublet);
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1D171F19C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D171F20C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D1741B58(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D3891E00](v9, a1);
      sub_1D1741BB4(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D171F2D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
  {
    return v5;
  }

  v6 = a2;
  v8 = ~v4;
  v23 = a1 << 8 >> 56;
  v24 = a1 & 0xFFFFFFFFFFFFLL;
  while (1)
  {
    v12 = *(v3 + 48) + 16 * v5;
    v13 = *v12;
    v14 = *(v12 + 8);
    if (!*(v12 + 8))
    {
      if (v6)
      {
        goto LABEL_4;
      }

      sub_1D174181C(*v12, 0);
      v17 = a1;
      v18 = 0;
      goto LABEL_36;
    }

    if (v14 == 1)
    {
      break;
    }

    if (v6 != 2)
    {
LABEL_4:
      v9 = a1;
      v10 = v6;
      goto LABEL_5;
    }

    sub_1D174181C(v13, 2);
    v17 = a1;
    v18 = 2;
LABEL_36:
    sub_1D174181C(v17, v18);
    if ((v13 & 0xFFFFFFFFFFFFLL) == v24 && dword_1D1E6EF7C[v13 << 8 >> 56] == dword_1D1E6EF7C[v23])
    {
      return v5;
    }

LABEL_7:
    v5 = (v5 + 1) & v8;
    if (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) == 0)
    {
      return v5;
    }
  }

  if (v6 != 1)
  {
    sub_1D1741808(a1, v6);
    v9 = v13;
    v10 = 1;
LABEL_5:
    sub_1D1741808(v9, v10);
    v11 = v6;
LABEL_6:
    sub_1D174181C(v13, v14);
    sub_1D174181C(a1, v11);
    goto LABEL_7;
  }

  v15 = *(v13 + 16);
  if (v15 != *(a1 + 16))
  {
LABEL_33:
    v11 = 1;
    sub_1D1741808(a1, 1);
    sub_1D1741808(v13, 1);
    goto LABEL_6;
  }

  if (v15)
  {
    if (v13 != a1)
    {
      v16 = 0;
      while (1)
      {
        v19 = *(v13 + v16 + 35);
        v20 = *(a1 + v16 + 34);
        v21 = *(a1 + v16 + 35);
        if (*(v13 + v16 + 34))
        {
          if (!*(a1 + v16 + 34))
          {
            goto LABEL_33;
          }
        }

        else
        {
          if (*(v13 + v16 + 32) != *(a1 + v16 + 32))
          {
            v20 = 1;
          }

          if (v20)
          {
            goto LABEL_33;
          }
        }

        if (v19 == 30)
        {
          if (v21 != 30)
          {
            goto LABEL_33;
          }
        }

        else if (v21 == 30 || dword_1D1E6EF7C[v19] != dword_1D1E6EF7C[v21])
        {
          goto LABEL_33;
        }

        if (*(v13 + v16 + 40))
        {
          if ((*(a1 + v16 + 40) & 1) == 0)
          {
            goto LABEL_33;
          }
        }

        else if ((*(a1 + v16 + 40) & 1) != 0 || *(v13 + v16 + 36) != *(a1 + v16 + 36))
        {
          goto LABEL_33;
        }

        v16 += 12;
        if (!--v15)
        {
          goto LABEL_41;
        }
      }
    }

    v13 = a1;
  }

LABEL_41:
  sub_1D1741808(a1, 1);
  sub_1D1741808(v13, 1);
  sub_1D174181C(v13, 1);
  sub_1D174181C(a1, 1);
  return v5;
}

unint64_t sub_1D171F57C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v44 = a1;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v43 = &v33 - v9;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v41);
  v11 = &v33 - v10;
  v35 = _s7MergeIdVMa(0);
  MEMORY[0x1EEE9AC00](v35);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v3;
  v15 = -1 << *(v3 + 32);
  v16 = a2 & ~v15;
  v40 = v3 + 64;
  if ((*(v3 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = (v6 + 48);
    v18 = *(v12 + 72);
    v38 = ~v15;
    v39 = v18;
    v33 = (v6 + 32);
    v37 = (v6 + 8);
    v19 = &qword_1EC642980;
    do
    {
      sub_1D1741C80(*(v42 + 48) + v39 * v16, v14, _s7MergeIdVMa);
      v20 = *(v41 + 48);
      sub_1D1741C08(v14, v11, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v44, &v11[v20], &qword_1EC642590, qword_1D1E71260);
      v21 = *v17;
      if ((*v17)(v11, 1, v5) == 1)
      {
        if (v21(&v11[v20], 1, v5) != 1)
        {
          goto LABEL_4;
        }

        sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        sub_1D1741C08(v11, v43, &qword_1EC642590, qword_1D1E71260);
        if (v21(&v11[v20], 1, v5) == 1)
        {
          (*v37)(v43, v5);
LABEL_4:
          sub_1D1741A30(v11, v19, &unk_1D1E6E6E0);
          goto LABEL_5;
        }

        v22 = v34;
        (*v33)(v34, &v11[v20], v5);
        sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v36 = sub_1D1E6775C();
        v23 = v19;
        v24 = v14;
        v25 = v17;
        v26 = *v37;
        (*v37)(v22, v5);
        v26(v43, v5);
        v17 = v25;
        v14 = v24;
        v19 = v23;
        sub_1D1741A30(v11, &qword_1EC642590, qword_1D1E71260);
        if ((v36 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      v27 = *(v35 + 20);
      v28 = *&v14[v27];
      v29 = *&v14[v27 + 8];
      v30 = (v44 + v27);
      v31 = v28 == *v30 && v29 == v30[1];
      if (v31 || (sub_1D1E6904C() & 1) != 0)
      {
        sub_1D1741D50(v14, _s7MergeIdVMa);
        return v16;
      }

LABEL_5:
      sub_1D1741D50(v14, _s7MergeIdVMa);
      v16 = (v16 + 1) & v38;
    }

    while (((*(v40 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  return v16;
}

unint64_t sub_1D171FA6C(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = a1 & 0xE0;
    do
    {
      v8 = *(*(v2 + 48) + result);
      v9 = v8 >> 5;
      if (v8 >> 5 <= 1)
      {
        if (v9)
        {
          if (v7 == 32)
          {
LABEL_4:
            if (((v8 ^ a1) & 1) == 0)
            {
              return result;
            }
          }
        }

        else if (a1 <= 0x1Fu && v8 == a1)
        {
          return result;
        }
      }

      else if (v9 == 2)
      {
        if (v7 == 64 && ((v8 ^ a1) & 0x1F) == 0)
        {
          return result;
        }
      }

      else if (v9 == 3)
      {
        if (v7 == 96)
        {
          goto LABEL_4;
        }
      }

      else if (v7 == 128)
      {
        goto LABEL_4;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D171FB50(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v42 = a1;
  v5 = sub_1D1E669FC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v35 = &v31 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v40);
  v11 = &v31 - v10;
  v36 = type metadata accessor for DashboardSortableData(0);
  MEMORY[0x1EEE9AC00](v36);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = v3;
  v15 = -1 << *(v3 + 32);
  v16 = a2 & ~v15;
  v39 = v3 + 64;
  if ((*(v3 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = (v6 + 48);
    v18 = *(v12 + 72);
    v37 = ~v15;
    v38 = v18;
    v31 = (v6 + 32);
    v34 = (v6 + 8);
    v19 = v35;
    do
    {
      sub_1D1741C80(*(v41 + 48) + v38 * v16, v14, type metadata accessor for DashboardSortableData);
      v20 = *(v40 + 48);
      sub_1D1741C08(v14, v11, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741C08(v42, &v11[v20], &qword_1EC642570, &qword_1D1E6C6A0);
      v21 = *v17;
      if ((*v17)(v11, 1, v5) == 1)
      {
        if (v21(&v11[v20], 1, v5) != 1)
        {
          goto LABEL_10;
        }

        sub_1D1741A30(v11, &qword_1EC642570, &qword_1D1E6C6A0);
      }

      else
      {
        sub_1D1741C08(v11, v19, &qword_1EC642570, &qword_1D1E6C6A0);
        if (v21(&v11[v20], 1, v5) == 1)
        {
          (*v34)(v19, v5);
LABEL_10:
          sub_1D1741A30(v11, &qword_1EC642AC0, &qword_1D1E6E810);
          goto LABEL_4;
        }

        v22 = v32;
        (*v31)(v32, &v11[v20], v5);
        sub_1D173FC14(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        v33 = sub_1D1E6775C();
        v23 = *v34;
        v24 = v22;
        v19 = v35;
        (*v34)(v24, v5);
        v23(v19, v5);
        sub_1D1741A30(v11, &qword_1EC642570, &qword_1D1E6C6A0);
        if ((v33 & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      v25 = *(v36 + 20);
      v26 = *&v14[v25];
      v27 = *&v14[v25 + 8];
      v28 = (v42 + v25);
      v29 = v26 == *v28 && v27 == v28[1];
      if (v29 || (sub_1D1E6904C()) && (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        sub_1D1741D50(v14, type metadata accessor for DashboardSortableData);
        return v16;
      }

LABEL_4:
      sub_1D1741D50(v14, type metadata accessor for DashboardSortableData);
      v16 = (v16 + 1) & v37;
    }

    while (((*(v39 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  return v16;
}

unint64_t sub_1D1720040(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v30 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v36 = &v29 - v10;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v29 - v11;
  v35 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
  MEMORY[0x1EEE9AC00](v35);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v39 = v3 + 64;
  v40 = v3;
  v16 = -1 << *(v3 + 32);
  v17 = a2 & ~v16;
  if (((*(v3 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
  {
    return v17;
  }

  v37 = ~v16;
  v18 = *a1;
  v41 = a1[1];
  v42 = v18;
  v19 = (v7 + 48);
  v29 = (v7 + 32);
  v33 = (v7 + 8);
  v34 = a1;
  v38 = *(v13 + 72);
  v20 = v31;
  while (1)
  {
    sub_1D1741C80(*(v40 + 48) + v38 * v17, v15, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
    v21 = *v15 == v42 && v15[1] == v41;
    if (!v21 && (sub_1D1E6904C() & 1) == 0)
    {
      goto LABEL_5;
    }

    v22 = *(v35 + 20);
    v23 = *(v20 + 48);
    sub_1D1741C08(v15 + v22, v12, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741C08(v34 + v22, &v12[v23], &qword_1EC642590, qword_1D1E71260);
    v24 = *v19;
    if ((*v19)(v12, 1, v6) == 1)
    {
      break;
    }

    sub_1D1741C08(v12, v36, &qword_1EC642590, qword_1D1E71260);
    if (v24(&v12[v23], 1, v6) == 1)
    {
      (*v33)(v36, v6);
      goto LABEL_4;
    }

    v25 = v30;
    (*v29)(v30, &v12[v23], v6);
    sub_1D173FC14(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v32 = sub_1D1E6775C();
    v26 = *v33;
    v27 = v25;
    v20 = v31;
    (*v33)(v27, v6);
    v26(v36, v6);
    sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
    if (v32)
    {
      goto LABEL_18;
    }

LABEL_5:
    sub_1D1741D50(v15, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
    v17 = (v17 + 1) & v37;
    if (((*(v39 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
    {
      return v17;
    }
  }

  if (v24(&v12[v23], 1, v6) != 1)
  {
LABEL_4:
    sub_1D1741A30(v12, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_5;
  }

  sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
LABEL_18:
  sub_1D1741D50(v15, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
  return v17;
}

unint64_t sub_1D1720518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3 + 64;
  v5 = -1 << *(v3 + 32);
  v6 = a2 & ~v5;
  if ((*(v3 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v8 = ~v5;
    while (1)
    {
      v9 = a3();
      v11 = v10;
      if (v9 == a3() && v11 == v12)
      {
        break;
      }

      v14 = sub_1D1E6904C();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v8;
        if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v6;
    }
  }

  return v6;
}

uint64_t sub_1D1720648(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BD8, &unk_1D1E7E900);
  v35 = v4;
  result = sub_1D1E68BBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(v5 + 56) + 16 * v20;
      v23 = *v22;
      v24 = *(v22 + 8);
      if ((v35 & 1) == 0)
      {
        v25 = v21;
        sub_1D1741AF8(v23, v24);
      }

      result = sub_1D1E684EC();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v21;
      v16 = *(v7 + 56) + 16 * v15;
      *v16 = v23;
      *(v16 + 8) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D17208D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C90, &qword_1D1E6E9E8);
  v43 = v4;
  result = sub_1D1E68BBC();
  v11 = result;
  if (*(v9 + 16))
  {
    v40 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v5;
    v17 = v15 & *(v9 + 64);
    v18 = (v14 + 63) >> 6;
    v41 = (v6 + 16);
    v42 = v6;
    v44 = (v6 + 32);
    v19 = result + 64;
    v46 = v16;
    v47 = v8;
    while (v17)
    {
      v24 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v27 = v24 | (v12 << 6);
      v28 = *(v9 + 48);
      v45 = *(v6 + 72);
      v29 = v28 + v45 * v27;
      if (v43)
      {
        (*v44)(v47, v29, v46);
      }

      else
      {
        (*v41)(v47, v29, v46);
      }

      v30 = (*(v9 + 56) + 48 * v27);
      v31 = v30[1];
      v48 = *v30;
      *v49 = v31;
      *&v49[10] = *(v30 + 26);
      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v32 = -1 << *(v11 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v19 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v6 = v42;
        v21 = v47;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v19 + 8 * v34);
          if (v38 != -1)
          {
            v20 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v33) & ~*(v19 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v6 = v42;
      v21 = v47;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v44)(*(v11 + 48) + v45 * v20, v21, v46);
      v22 = (*(v11 + 56) + 48 * v20);
      *(v22 + 26) = *&v49[10];
      v23 = *v49;
      *v22 = v48;
      v22[1] = v23;
      ++*(v11 + 16);
    }

    v25 = v12;
    while (1)
    {
      v12 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v18)
      {
        break;
      }

      v26 = v13[v12];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v17 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v9 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v13, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v39;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D1720CD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C80, &unk_1D1E8DED0);
  v35 = v4;
  result = sub_1D1E68BBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1D1E6920C();
      sub_1D1E678EC();
      result = sub_1D1E6926C();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1D1720F88(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v52 = sub_1D1E669FC();
  v5 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v51 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v53 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C78, &unk_1D1E6E9D0);
  v47 = v4;
  result = sub_1D1E68BBC();
  v12 = result;
  if (*(v10 + 16))
  {
    v13 = 0;
    v14 = v8;
    v15 = (v10 + 64);
    v16 = 1 << *(v10 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v10 + 64);
    v19 = (v16 + 63) >> 6;
    v43 = (v14 + 16);
    v44 = v14;
    v41 = v2;
    v42 = v5 + 16;
    v45 = v10;
    v46 = v5;
    v48 = (v5 + 32);
    v49 = (v14 + 32);
    v20 = result + 64;
    v21 = v14;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v50 = *(v21 + 72);
      v28 = v27 + v50 * v26;
      if (v47)
      {
        (*v49)(v53, v28, v7);
        v29 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 32))(v51, v29 + v30 * v26, v52);
      }

      else
      {
        (*v43)(v53, v28, v7);
        v31 = *(v10 + 56);
        v30 = *(v46 + 72);
        (*(v46 + 16))(v51, v31 + v30 * v26, v52);
      }

      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v20 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v49)((*(v12 + 48) + v50 * v22), v53, v7);
      result = (*v48)(*(v12 + 56) + v30 * v22, v51, v52);
      ++*(v12 + 16);
      v21 = v44;
      v10 = v45;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v19)
      {
        break;
      }

      v25 = v15[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v47 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v3 = v41;
    if (v39 >= 64)
    {
      bzero(v15, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D1721458(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StaticHome(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429F0, &qword_1D1E6E748);
  v43 = v4;
  result = sub_1D1E68BBC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741CE8(v27 + v28 * v24, v47, type metadata accessor for StaticHome);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741C80(v29 + v28 * v24, v47, type metadata accessor for StaticHome);
      }

      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D1741CE8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for StaticHome);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D172190C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v38 = &v34 - v6;
  v7 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C60, &qword_1D1E6E9B8);
  v37 = v4;
  result = sub_1D1E68BBC();
  v9 = result;
  if (*(v7 + 16))
  {
    v34 = v3;
    v10 = 0;
    v11 = (v7 + 64);
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = (v5 + 16);
    v36 = v5;
    v16 = (v5 + 32);
    v17 = result + 64;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = *(*(v7 + 48) + 8 * v22);
      v24 = *(v5 + 72);
      v25 = *(v7 + 56) + v24 * v22;
      if (v37)
      {
        (*v16)(v38, v25, v39);
      }

      else
      {
        (*v35)(v38, v25, v39);
      }

      result = sub_1D1E691FC();
      v26 = -1 << *(v9 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v17 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v17 + 8 * v28);
          if (v32 != -1)
          {
            v18 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v27) & ~*(v17 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v9 + 48) + 8 * v18) = v23;
      result = (*v16)(*(v9 + 56) + v24 * v18, v38, v39);
      ++*(v9 + 16);
      v5 = v36;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v34;
      goto LABEL_34;
    }

    v33 = 1 << *(v7 + 32);
    v3 = v34;
    if (v33 >= 64)
    {
      bzero((v7 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v33;
    }

    *(v7 + 16) = 0;
  }

LABEL_34:
  *v3 = v9;
  return result;
}

uint64_t sub_1D1721C9C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BF8, &qword_1D1E7E920);
  result = sub_1D1E68BBC();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        sub_1D16EEE38(v21, v32);
      }

      else
      {
        sub_1D1741970(v21, v32);
        v22 = v20;
      }

      result = sub_1D1E684EC();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = sub_1D16EEE38(v32, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if (v4)
    {
      v30 = 1 << *(v5 + 32);
      if (v30 >= 64)
      {
        bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v30;
      }

      *(v5 + 16) = 0;
    }

    v3 = v31;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1D1721F14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StaticActionSet(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B08, &unk_1D1E6E850);
  v43 = v4;
  result = sub_1D1E68BBC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741CE8(v27 + v28 * v24, v47, type metadata accessor for StaticActionSet);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741C80(v29 + v28 * v24, v47, type metadata accessor for StaticActionSet);
      }

      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D1741CE8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for StaticActionSet);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D17223B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StaticCameraProfile(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B30, &qword_1D1E6E878);
  v43 = v4;
  result = sub_1D1E68BBC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741CE8(v27 + v28 * v24, v47, type metadata accessor for StaticCameraProfile);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741C80(v29 + v28 * v24, v47, type metadata accessor for StaticCameraProfile);
      }

      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D1741CE8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for StaticCameraProfile);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D1722854(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StaticServiceGroup(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A88, &qword_1D1E6E7D8);
  v43 = v4;
  result = sub_1D1E68BBC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741CE8(v27 + v28 * v24, v47, type metadata accessor for StaticServiceGroup);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741C80(v29 + v28 * v24, v47, type metadata accessor for StaticServiceGroup);
      }

      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D1741CE8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for StaticServiceGroup);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D1722CF4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StaticRoom(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B18, &qword_1D1E6E860);
  v43 = v4;
  result = sub_1D1E68BBC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741CE8(v27 + v28 * v24, v47, type metadata accessor for StaticRoom);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741C80(v29 + v28 * v24, v47, type metadata accessor for StaticRoom);
      }

      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D1741CE8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for StaticRoom);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D1723194(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StaticService(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
  v43 = v4;
  result = sub_1D1E68BBC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741CE8(v27 + v28 * v24, v47, type metadata accessor for StaticService);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741C80(v29 + v28 * v24, v47, type metadata accessor for StaticService);
      }

      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D1741CE8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for StaticService);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D1723634(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StaticMediaSystem(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B00, &unk_1D1E7BBF0);
  v43 = v4;
  result = sub_1D1E68BBC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741CE8(v27 + v28 * v24, v47, type metadata accessor for StaticMediaSystem);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741C80(v29 + v28 * v24, v47, type metadata accessor for StaticMediaSystem);
      }

      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D1741CE8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for StaticMediaSystem);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D1723AD4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StaticMediaProfile(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AF8, &unk_1D1E6E840);
  v43 = v4;
  result = sub_1D1E68BBC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741CE8(v27 + v28 * v24, v47, type metadata accessor for StaticMediaProfile);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741C80(v29 + v28 * v24, v47, type metadata accessor for StaticMediaProfile);
      }

      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D1741CE8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for StaticMediaProfile);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D1723F74(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StaticAccessory(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A80, &qword_1D1E6E7D0);
  v43 = v4;
  result = sub_1D1E68BBC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741CE8(v27 + v28 * v24, v47, type metadata accessor for StaticAccessory);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741C80(v29 + v28 * v24, v47, type metadata accessor for StaticAccessory);
      }

      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D1741CE8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for StaticAccessory);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D1724414(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StaticHH2Update(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AF0, &unk_1D1E7E790);
  v43 = v4;
  result = sub_1D1E68BBC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741CE8(v27 + v28 * v24, v47, type metadata accessor for StaticHH2Update);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741C80(v29 + v28 * v24, v47, type metadata accessor for StaticHH2Update);
      }

      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D1741CE8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for StaticHH2Update);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1D17248B4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for StaticUser(0);
  v42 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B40, &qword_1D1E7E7D0);
  v43 = v4;
  result = sub_1D1E68BBC();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741CE8(v27 + v28 * v24, v47, type metadata accessor for StaticUser);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_1D1741C80(v29 + v28 * v24, v47, type metadata accessor for StaticUser);
      }

      sub_1D173FC14(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D1E676DC();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_1D1741CE8(v47, *(v12 + 56) + v28 * v20, type metadata accessor for StaticUser);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}