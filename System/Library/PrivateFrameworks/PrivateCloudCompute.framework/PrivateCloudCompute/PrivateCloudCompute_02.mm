unint64_t sub_1CEF5D5AC()
{
  result = qword_1EC4A95D8;
  if (!qword_1EC4A95D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A95D8);
  }

  return result;
}

unint64_t sub_1CEF5D600()
{
  result = qword_1EC4A95E0;
  if (!qword_1EC4A95E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A95E0);
  }

  return result;
}

uint64_t TrustedCloudComputeError.AvailabilityInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1CEFA8030();
  v20 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95E8, &qword_1CEFAC148);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5D5AC();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v8;
  v11 = v10;
  v13 = v22;
  v12 = v23;
  v26 = 0;
  sub_1CEF5D98C();
  v14 = v24;
  sub_1CEFA8770();
  v18 = v11;
  *v11 = v27;
  v25 = 1;
  sub_1CEF5BA2C(&qword_1EC4A8FE8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1CEFA87D0();
  (*(v13 + 8))(v7, v14);
  v15 = v18;
  (*(v20 + 32))(&v18[*(v19 + 20)], v5, v12);
  sub_1CEF5D9E0(v15, v21, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1CEF5DA48(v15, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
}

unint64_t sub_1CEF5D98C()
{
  result = qword_1EC4A95F0;
  if (!qword_1EC4A95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A95F0);
  }

  return result;
}

uint64_t sub_1CEF5D9E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF5DA48(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEF5DB28@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1CEFA8030();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1CEF5DBE4(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1CEFA8030();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1CEF5DCC4@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  v6 = *(a3(0) + 20);
  v7 = sub_1CEFA8030();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a2, v7);
}

unint64_t sub_1CEF5DD50()
{
  v1 = 0xD000000000000013;
  v2 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
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

uint64_t sub_1CEF5DDBC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF76CFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF5DDE4(uint64_t a1)
{
  v2 = sub_1CEF5E474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5DE20(uint64_t a1)
{
  v2 = sub_1CEF5E474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5DE5C(uint64_t a1)
{
  v2 = sub_1CEF5E570();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5DE98(uint64_t a1)
{
  v2 = sub_1CEF5E570();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5DED4(uint64_t a1)
{
  v2 = sub_1CEF5E51C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5DF10(uint64_t a1)
{
  v2 = sub_1CEF5E51C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5DF4C(uint64_t a1)
{
  v2 = sub_1CEF5E4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5DF88(uint64_t a1)
{
  v2 = sub_1CEF5E4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5DFC4(uint64_t a1)
{
  v2 = sub_1CEF5E5C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5E000(uint64_t a1)
{
  v2 = sub_1CEF5E5C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.TimeoutErrorInfo.Reason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A95F8, &qword_1CEFAC150);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9600, &qword_1CEFAC158);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9608, &qword_1CEFAC160);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9610, &qword_1CEFAC168);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9618, &qword_1CEFAC170);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5E474();
  sub_1CEFA8A60();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1CEF5E51C();
      v18 = v27;
      sub_1CEFA8820();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1CEF5E4C8();
      v18 = v30;
      sub_1CEFA8820();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1CEF5E570();
    v18 = v24;
    sub_1CEFA8820();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1CEF5E5C4();
  sub_1CEFA8820();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1CEF5E474()
{
  result = qword_1EC4A9620;
  if (!qword_1EC4A9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9620);
  }

  return result;
}

unint64_t sub_1CEF5E4C8()
{
  result = qword_1EC4A9628;
  if (!qword_1EC4A9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9628);
  }

  return result;
}

unint64_t sub_1CEF5E51C()
{
  result = qword_1EC4A9630;
  if (!qword_1EC4A9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9630);
  }

  return result;
}

unint64_t sub_1CEF5E570()
{
  result = qword_1EC4A9638;
  if (!qword_1EC4A9638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9638);
  }

  return result;
}

unint64_t sub_1CEF5E5C4()
{
  result = qword_1EC4A9640;
  if (!qword_1EC4A9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9640);
  }

  return result;
}

uint64_t TrustedCloudComputeError.TimeoutErrorInfo.Reason.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9648, &qword_1CEFAC178);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9650, &qword_1CEFAC180);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9658, &qword_1CEFAC188);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9660, &qword_1CEFAC190);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9668, &qword_1CEFAC198);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1CEF5E474();
  v15 = v46;
  sub_1CEFA8A50();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1CEFA8800();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1CEF43794();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1CEFA8680();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20);
      *v28 = &type metadata for TrustedCloudComputeError.TimeoutErrorInfo.Reason;
      sub_1CEFA8720();
      sub_1CEFA8670();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1CEF5E570();
        v32 = v35;
        sub_1CEFA8710();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1CEF5E5C4();
        v25 = v35;
        sub_1CEFA8710();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_0(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1CEF5E51C();
      v31 = v35;
      sub_1CEFA8710();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1CEF5E4C8();
      v33 = v35;
      sub_1CEFA8710();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

uint64_t sub_1CEF5ECA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F73616572 && a2 == 0xE600000000000000;
  if (v6 || (sub_1CEFA8950() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEE00657461447265)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1CEFA8950();

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

uint64_t sub_1CEF5ED84(uint64_t a1)
{
  v2 = sub_1CEF5EFCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5EDC0(uint64_t a1)
{
  v2 = sub_1CEF5EFCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.TimeoutErrorInfo.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9670, &qword_1CEFAC1A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5EFCC();
  sub_1CEFA8A60();
  v10[15] = *v3;
  v10[14] = 0;
  sub_1CEF5F020();
  sub_1CEFA8870();
  if (!v2)
  {
    type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
    v10[13] = 1;
    sub_1CEFA8030();
    sub_1CEF5BA2C(&qword_1EDE380D8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1CEF5EFCC()
{
  result = qword_1EC4A9678;
  if (!qword_1EC4A9678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9678);
  }

  return result;
}

unint64_t sub_1CEF5F020()
{
  result = qword_1EC4A9680;
  if (!qword_1EC4A9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9680);
  }

  return result;
}

uint64_t TrustedCloudComputeError.TimeoutErrorInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v23 = sub_1CEFA8030();
  v20 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9688, &qword_1CEFAC1A8);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v7 = &v17 - v6;
  v8 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5EFCC();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v19 = v8;
  v11 = v10;
  v13 = v22;
  v12 = v23;
  v26 = 0;
  sub_1CEF5F3AC();
  v14 = v24;
  sub_1CEFA8770();
  v18 = v11;
  *v11 = v27;
  v25 = 1;
  sub_1CEF5BA2C(&qword_1EC4A8FE8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1CEFA87D0();
  (*(v13 + 8))(v7, v14);
  v15 = v18;
  (*(v20 + 32))(&v18[*(v19 + 20)], v5, v12);
  sub_1CEF5D9E0(v15, v21, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1CEF5DA48(v15, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
}

unint64_t sub_1CEF5F3AC()
{
  result = qword_1EC4A9690;
  if (!qword_1EC4A9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9690);
  }

  return result;
}

uint64_t sub_1CEF5F4A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5764696C61766E69 && a2 == 0xEF64616F6C6B726FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF5F530(uint64_t a1)
{
  v2 = sub_1CEF5F7F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5F56C(uint64_t a1)
{
  v2 = sub_1CEF5F7F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF5F5A8(uint64_t a1)
{
  v2 = sub_1CEF5F84C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5F5E4(uint64_t a1)
{
  v2 = sub_1CEF5F84C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.Reason.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9698, &qword_1CEFAC1B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96A0, &qword_1CEFAC1B8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5F7F8();
  sub_1CEFA8A60();
  sub_1CEF5F84C();
  sub_1CEFA8820();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_1CEF5F7F8()
{
  result = qword_1EC4A96A8;
  if (!qword_1EC4A96A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A96A8);
  }

  return result;
}

unint64_t sub_1CEF5F84C()
{
  result = qword_1EC4A96B0;
  if (!qword_1EC4A96B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A96B0);
  }

  return result;
}

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.Reason.hashValue.getter()
{
  sub_1CEFA8A00();
  MEMORY[0x1D3866C60](0);
  return sub_1CEFA8A40();
}

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.Reason.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96B8, &qword_1CEFAC1C0);
  v25 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96C0, &qword_1CEFAC1C8);
  v20 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5F7F8();
  sub_1CEFA8A50();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_1CEFA8800();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if (sub_1CEF3F4EC() || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_1CEFA8680();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20);
    *v16 = &type metadata for TrustedCloudComputeError.InvalidRequestErrorInfo.Reason;
    sub_1CEFA8720();
    sub_1CEFA8670();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x1E69E6AF8], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_0(v18);
  }

  sub_1CEF5F84C();
  sub_1CEFA8710();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_0(v18);
}

uint64_t sub_1CEF5FC70(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9698, &qword_1CEFAC1B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96A0, &qword_1CEFAC1B8);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF5F7F8();
  sub_1CEFA8A60();
  sub_1CEF5F84C();
  sub_1CEFA8820();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1CEF5FE5C(uint64_t a1)
{
  v2 = sub_1CEF60020();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF5FE98(uint64_t a1)
{
  v2 = sub_1CEF60020();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96C8, &qword_1CEFAC1D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF60020();
  sub_1CEFA8A60();
  v10 = v7;
  sub_1CEF60074();
  sub_1CEFA8870();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1CEF60020()
{
  result = qword_1EC4A96D0;
  if (!qword_1EC4A96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A96D0);
  }

  return result;
}

unint64_t sub_1CEF60074()
{
  result = qword_1EC4A96D8;
  if (!qword_1EC4A96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A96D8);
  }

  return result;
}

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96E0, &qword_1CEFAC1D8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF60020();
  sub_1CEFA8A50();
  if (!v2)
  {
    sub_1CEF60234();
    sub_1CEFA8770();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1CEF60234()
{
  result = qword_1EC4A96E8;
  if (!qword_1EC4A96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A96E8);
  }

  return result;
}

unint64_t sub_1CEF60310()
{
  v1 = 0x6C42746E616E6574;
  v2 = 0x64616F6C6B726F77;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6572617774666F73;
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

uint64_t sub_1CEF603B4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF76E6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF603DC(uint64_t a1)
{
  v2 = sub_1CEF60A6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF60418(uint64_t a1)
{
  v2 = sub_1CEF60A6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF60454(uint64_t a1)
{
  v2 = sub_1CEF60AC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF60490(uint64_t a1)
{
  v2 = sub_1CEF60AC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF604CC(uint64_t a1)
{
  v2 = sub_1CEF60B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF60508(uint64_t a1)
{
  v2 = sub_1CEF60B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF60544(uint64_t a1)
{
  v2 = sub_1CEF60BBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF60580(uint64_t a1)
{
  v2 = sub_1CEF60BBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF605BC(uint64_t a1)
{
  v2 = sub_1CEF60B14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF605F8(uint64_t a1)
{
  v2 = sub_1CEF60B14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.UnauthorizedErrorInfo.Reason.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96F0, &qword_1CEFAC1E0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A96F8, &qword_1CEFAC1E8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9700, &qword_1CEFAC1F0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9708, &qword_1CEFAC1F8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9710, &qword_1CEFAC200);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF60A6C();
  sub_1CEFA8A60();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1CEF60B14();
      v18 = v27;
      sub_1CEFA8820();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1CEF60AC0();
      v18 = v30;
      sub_1CEFA8820();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1CEF60B68();
    v18 = v24;
    sub_1CEFA8820();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1CEF60BBC();
  sub_1CEFA8820();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1CEF60A6C()
{
  result = qword_1EC4A9718;
  if (!qword_1EC4A9718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9718);
  }

  return result;
}

unint64_t sub_1CEF60AC0()
{
  result = qword_1EC4A9720;
  if (!qword_1EC4A9720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9720);
  }

  return result;
}

unint64_t sub_1CEF60B14()
{
  result = qword_1EC4A9728;
  if (!qword_1EC4A9728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9728);
  }

  return result;
}

unint64_t sub_1CEF60B68()
{
  result = qword_1EC4A9730;
  if (!qword_1EC4A9730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9730);
  }

  return result;
}

unint64_t sub_1CEF60BBC()
{
  result = qword_1EC4A9738;
  if (!qword_1EC4A9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9738);
  }

  return result;
}

uint64_t TrustedCloudComputeError.UnauthorizedErrorInfo.Reason.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9740, &qword_1CEFAC208);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9748, &qword_1CEFAC210);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9750, &qword_1CEFAC218);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9758, &qword_1CEFAC220);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9760, &qword_1CEFAC228);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1CEF60A6C();
  v15 = v46;
  sub_1CEFA8A50();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1CEFA8800();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1CEF43794();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1CEFA8680();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20);
      *v28 = &type metadata for TrustedCloudComputeError.UnauthorizedErrorInfo.Reason;
      sub_1CEFA8720();
      sub_1CEFA8670();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1CEF60B68();
        v32 = v35;
        sub_1CEFA8710();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1CEF60BBC();
        v25 = v35;
        sub_1CEFA8710();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_0(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1CEF60B14();
      v31 = v35;
      sub_1CEFA8710();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1CEF60AC0();
      v33 = v35;
      sub_1CEFA8710();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v47);
}

uint64_t sub_1CEF612CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F73616572 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF61350(uint64_t a1)
{
  v2 = sub_1CEF61514();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6138C(uint64_t a1)
{
  v2 = sub_1CEF61514();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.UnauthorizedErrorInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9768, &qword_1CEFAC230);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF61514();
  sub_1CEFA8A60();
  v10 = v7;
  sub_1CEF61568();
  sub_1CEFA8870();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1CEF61514()
{
  result = qword_1EC4A9770;
  if (!qword_1EC4A9770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9770);
  }

  return result;
}

unint64_t sub_1CEF61568()
{
  result = qword_1EC4A9778;
  if (!qword_1EC4A9778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9778);
  }

  return result;
}

uint64_t TrustedCloudComputeError.UnauthorizedErrorInfo.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9780, &unk_1CEFAC238);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF61514();
  sub_1CEFA8A50();
  if (!v2)
  {
    sub_1CEF61728();
    sub_1CEFA8770();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1CEF61728()
{
  result = qword_1EC4A9788;
  if (!qword_1EC4A9788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9788);
  }

  return result;
}

uint64_t sub_1CEF617E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RopesResponseMetadata(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.retryable.setter(char a1)
{
  result = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.retryAfterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0) + 24);

  return sub_1CEF6196C(v3, a1);
}

uint64_t sub_1CEF6196C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.retryAfterDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0) + 24);

  return sub_1CEF4E644(a1, v3);
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.init(responseMetadata:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  v8 = *(v7 + 24);
  v9 = sub_1CEFA8030();
  v10 = *(v9 - 8);
  v11 = *(v10 + 56);
  v11(a2 + v8, 1, 1, v9);
  sub_1CEF5D9E0(a1, a2, type metadata accessor for RopesResponseMetadata);
  if (a1[64] == 1)
  {
    v12 = a1[16];
    if (v12 == 255 || (v12 & 1) != 0 || (*(a1 + 1) - 17) >= 0x1Cu || ((0xF0C0E13u >> (*(a1 + 1) - 17)) & 1) == 0)
    {
      v14 = a1[1];
      if (v14 > 0xE || (LOBYTE(v13) = 1, ((1 << v14) & 0x4110) == 0))
      {
        v15 = *a1;
        v16 = v15 >= 0x2D;
        v13 = 0x108002000000uLL >> v15;
        if (v16)
        {
          LOBYTE(v13) = 0;
        }
      }
    }

    else
    {
      LOBYTE(v13) = 1;
    }

    *(a2 + *(v7 + 20)) = v13 & 1;
    v17 = type metadata accessor for RopesResponseMetadata(0);
    (*(v10 + 16))(v6, &a1[*(v17 + 60)], v9);
  }

  else
  {
    *(a2 + *(v7 + 20)) = 1;
    type metadata accessor for RopesResponseMetadata(0);
    sub_1CEFA7FF0();
  }

  sub_1CEF5DA48(a1, type metadata accessor for RopesResponseMetadata);
  v11(v6, 0, 1, v9);
  return sub_1CEF4E644(v6, a2 + v8);
}

uint64_t sub_1CEF61CB4()
{
  v1 = 0x6C62617972746572;
  if (*v0 != 1)
  {
    v1 = 0x7466417972746572;
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

uint64_t sub_1CEF61D24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF76FF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF61D4C(uint64_t a1)
{
  v2 = sub_1CEF61FF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF61D88(uint64_t a1)
{
  v2 = sub_1CEF61FF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9790, &qword_1CEFAC248);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF61FF4();
  sub_1CEFA8A60();
  v8[15] = 0;
  type metadata accessor for RopesResponseMetadata(0);
  sub_1CEF5BA2C(&qword_1EC4A97A0, type metadata accessor for RopesResponseMetadata, &protocol conformance descriptor for RopesResponseMetadata);
  sub_1CEFA88D0();
  if (!v1)
  {
    type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
    v8[14] = 1;
    sub_1CEFA8890();
    v8[13] = 2;
    sub_1CEFA8030();
    sub_1CEF5BA2C(&qword_1EDE380D8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1CEFA8870();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1CEF61FF4()
{
  result = qword_1EC4A9798;
  if (!qword_1EC4A9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9798);
  }

  return result;
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  v6 = type metadata accessor for RopesResponseMetadata(0);
  MEMORY[0x1EEE9AC00](v6);
  v27 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97A8, &qword_1CEFAC250);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v9 = &v24 - v8;
  v10 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v11 + 24);
  v15 = sub_1CEFA8030();
  v16 = *(*(v15 - 8) + 56);
  v30 = v14;
  v31 = v13;
  v16(&v13[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF61FF4();
  v17 = v29;
  sub_1CEFA8A50();
  if (v17)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_1CEF6249C(&v31[v30]);
  }

  else
  {
    v18 = v26;
    v34 = 0;
    sub_1CEF5BA2C(&qword_1EC4A97B0, type metadata accessor for RopesResponseMetadata, &protocol conformance descriptor for RopesResponseMetadata);
    sub_1CEFA87D0();
    v19 = v31;
    sub_1CEF6AB6C(v27, v31, type metadata accessor for RopesResponseMetadata);
    v33 = 1;
    *(v19 + *(v10 + 20)) = sub_1CEFA8790() & 1;
    v32 = 2;
    sub_1CEF5BA2C(&qword_1EC4A8FE8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v20 = v19;
    v21 = v5;
    v22 = v28;
    sub_1CEFA8770();
    (*(v18 + 8))(v9, v22);
    sub_1CEF4E644(v21, v20 + v30);
    sub_1CEF5D9E0(v20, v25, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return sub_1CEF5DA48(v20, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
  }
}

uint64_t sub_1CEF6249C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.privacyProxyErrorReason.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.privacyProxyErrorReason.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall TrustedCloudComputeError.InternalErrorInfo.init(message:)(PrivateCloudCompute::TrustedCloudComputeError::InternalErrorInfo *__return_ptr retstr, Swift::String message)
{
  retstr->message = message;
  retstr->reason.value = PrivateCloudCompute_TrustedCloudComputeError_InternalErrorInfo_Reason_unknownDefault;
  retstr->privacyProxyErrorReason.value._countAndFlagsBits = 0;
  retstr->privacyProxyErrorReason.value._object = 0;
}

void __swiftcall TrustedCloudComputeError.InternalErrorInfo.init(message:reason:)(PrivateCloudCompute::TrustedCloudComputeError::InternalErrorInfo *__return_ptr retstr, Swift::String message, PrivateCloudCompute::TrustedCloudComputeError::InternalErrorInfo::Reason reason)
{
  v3 = *reason;
  retstr->message = message;
  retstr->reason.value = v3;
  retstr->privacyProxyErrorReason.value._countAndFlagsBits = 0;
  retstr->privacyProxyErrorReason.value._object = 0;
}

void __swiftcall TrustedCloudComputeError.InternalErrorInfo.init(message:reason:privacyProxyErrorReason:)(PrivateCloudCompute::TrustedCloudComputeError::InternalErrorInfo *__return_ptr retstr, Swift::String message, PrivateCloudCompute::TrustedCloudComputeError::InternalErrorInfo::Reason reason, Swift::String privacyProxyErrorReason)
{
  v4 = *reason;
  retstr->message = message;
  retstr->reason.value = v4;
  retstr->privacyProxyErrorReason.value = privacyProxyErrorReason;
}

unint64_t sub_1CEF62650(char a1)
{
  result = 0xD000000000000018;
  switch(a1)
  {
    case 1:
    case 28:
      result = 0xD000000000000013;
      break;
    case 2:
    case 29:
      result = 0xD00000000000001CLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 9:
    case 17:
      result = 0xD00000000000001BLL;
      break;
    case 6:
      result = 0xD00000000000001DLL;
      break;
    case 7:
    case 11:
      result = 0xD000000000000021;
      break;
    case 8:
    case 32:
      result = 0xD000000000000019;
      break;
    case 10:
    case 33:
      result = 0xD000000000000017;
      break;
    case 12:
    case 13:
      result = 0xD00000000000001ALL;
      break;
    case 14:
    case 19:
    case 20:
      result = 0xD00000000000001FLL;
      break;
    case 15:
      result = 0xD00000000000001ELL;
      break;
    case 16:
      result = 0xD000000000000016;
      break;
    case 18:
      result = 0xD000000000000012;
      break;
    case 21:
      result = 0xD000000000000027;
      break;
    case 22:
      result = 0xD000000000000025;
      break;
    case 23:
      result = 0xD000000000000026;
      break;
    case 24:
      result = 0xD00000000000002CLL;
      break;
    case 25:
      result = 0xD000000000000032;
      break;
    case 31:
      result = 0xD000000000000029;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CEF62904(uint64_t a1)
{
  v2 = sub_1CEF6583C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62940(uint64_t a1)
{
  v2 = sub_1CEF6583C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62984@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF77124(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF629B8(uint64_t a1)
{
  v2 = sub_1CEF657E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF629F4(uint64_t a1)
{
  v2 = sub_1CEF657E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62A30(uint64_t a1)
{
  v2 = sub_1CEF65938();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62A6C(uint64_t a1)
{
  v2 = sub_1CEF65938();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62AA8(uint64_t a1)
{
  v2 = sub_1CEF662BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62AE4(uint64_t a1)
{
  v2 = sub_1CEF662BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62B20(uint64_t a1)
{
  v2 = sub_1CEF65CD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62B5C(uint64_t a1)
{
  v2 = sub_1CEF65CD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62B98(uint64_t a1)
{
  v2 = sub_1CEF65A34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62BD4(uint64_t a1)
{
  v2 = sub_1CEF65A34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62C10(uint64_t a1)
{
  v2 = sub_1CEF65A88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62C4C(uint64_t a1)
{
  v2 = sub_1CEF65A88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62C88(uint64_t a1)
{
  v2 = sub_1CEF6598C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62CC4(uint64_t a1)
{
  v2 = sub_1CEF6598C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62D00(uint64_t a1)
{
  v2 = sub_1CEF65D28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62D3C(uint64_t a1)
{
  v2 = sub_1CEF65D28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62D78(uint64_t a1)
{
  v2 = sub_1CEF6601C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62DB4(uint64_t a1)
{
  v2 = sub_1CEF6601C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62DF0(uint64_t a1)
{
  v2 = sub_1CEF65F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62E2C(uint64_t a1)
{
  v2 = sub_1CEF65F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62E68(uint64_t a1)
{
  v2 = sub_1CEF66118();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62EA4(uint64_t a1)
{
  v2 = sub_1CEF66118();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62EE0(uint64_t a1)
{
  v2 = sub_1CEF660C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62F1C(uint64_t a1)
{
  v2 = sub_1CEF660C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62F58(uint64_t a1)
{
  v2 = sub_1CEF65E24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF62F94(uint64_t a1)
{
  v2 = sub_1CEF65E24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF62FD0(uint64_t a1)
{
  v2 = sub_1CEF6616C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6300C(uint64_t a1)
{
  v2 = sub_1CEF6616C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63048(uint64_t a1)
{
  v2 = sub_1CEF65F20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63084(uint64_t a1)
{
  v2 = sub_1CEF65F20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF630C0(uint64_t a1)
{
  v2 = sub_1CEF65D7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF630FC(uint64_t a1)
{
  v2 = sub_1CEF65D7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63138(uint64_t a1)
{
  v2 = sub_1CEF661C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63174(uint64_t a1)
{
  v2 = sub_1CEF661C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF631B0(uint64_t a1)
{
  v2 = sub_1CEF66214();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF631EC(uint64_t a1)
{
  v2 = sub_1CEF66214();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63228(uint64_t a1)
{
  v2 = sub_1CEF65ECC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63264(uint64_t a1)
{
  v2 = sub_1CEF65ECC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF632A0(uint64_t a1)
{
  v2 = sub_1CEF66268();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF632DC(uint64_t a1)
{
  v2 = sub_1CEF66268();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63318(uint64_t a1)
{
  v2 = sub_1CEF65FC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63354(uint64_t a1)
{
  v2 = sub_1CEF65FC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63390(uint64_t a1)
{
  v2 = sub_1CEF66070();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF633CC(uint64_t a1)
{
  v2 = sub_1CEF66070();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63408(uint64_t a1)
{
  v2 = sub_1CEF65DD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63444(uint64_t a1)
{
  v2 = sub_1CEF65DD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63480(uint64_t a1)
{
  v2 = sub_1CEF65E78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF634BC(uint64_t a1)
{
  v2 = sub_1CEF65E78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF634F8(uint64_t a1)
{
  v2 = sub_1CEF65C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63534(uint64_t a1)
{
  v2 = sub_1CEF65C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63570(uint64_t a1)
{
  v2 = sub_1CEF65BD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF635AC(uint64_t a1)
{
  v2 = sub_1CEF65BD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF635E8(uint64_t a1)
{
  v2 = sub_1CEF65B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63624(uint64_t a1)
{
  v2 = sub_1CEF65B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63660(uint64_t a1)
{
  v2 = sub_1CEF65B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6369C(uint64_t a1)
{
  v2 = sub_1CEF65B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF636D8(uint64_t a1)
{
  v2 = sub_1CEF65ADC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63714(uint64_t a1)
{
  v2 = sub_1CEF65ADC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63750(uint64_t a1)
{
  v2 = sub_1CEF65C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6378C(uint64_t a1)
{
  v2 = sub_1CEF65C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF637C8(uint64_t a1)
{
  v2 = sub_1CEF659E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF63804(uint64_t a1)
{
  v2 = sub_1CEF659E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63840(uint64_t a1)
{
  v2 = sub_1CEF65890();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6387C(uint64_t a1)
{
  v2 = sub_1CEF65890();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF638B8(uint64_t a1)
{
  v2 = sub_1CEF658E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF638F4(uint64_t a1)
{
  v2 = sub_1CEF658E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF63930(uint64_t a1)
{
  v2 = sub_1CEF66310();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6396C(uint64_t a1)
{
  v2 = sub_1CEF66310();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.Reason.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97B8, &qword_1CEFAC258);
  v187 = *(v4 - 8);
  v188 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v186 = &v89 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97C0, &qword_1CEFAC260);
  v184 = *(v6 - 8);
  v185 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v183 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97C8, &qword_1CEFAC268);
  v181 = *(v8 - 8);
  v182 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v180 = &v89 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97D0, &qword_1CEFAC270);
  v178 = *(v10 - 8);
  v179 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v177 = &v89 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97D8, &qword_1CEFAC278);
  v175 = *(v12 - 8);
  v176 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v174 = &v89 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97E0, &qword_1CEFAC280);
  v172 = *(v14 - 8);
  v173 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v171 = &v89 - v15;
  v170 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97E8, &qword_1CEFAC288);
  v169 = *(v170 - 8);
  MEMORY[0x1EEE9AC00](v170);
  v168 = &v89 - v16;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97F0, &qword_1CEFAC290);
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v165 = &v89 - v17;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A97F8, &qword_1CEFAC298);
  v163 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v162 = &v89 - v18;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9800, &qword_1CEFAC2A0);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v159 = &v89 - v19;
  v158 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9808, &qword_1CEFAC2A8);
  v157 = *(v158 - 8);
  MEMORY[0x1EEE9AC00](v158);
  v156 = &v89 - v20;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9810, &qword_1CEFAC2B0);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v153 = &v89 - v21;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9818, &qword_1CEFAC2B8);
  v151 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152);
  v150 = &v89 - v22;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9820, &qword_1CEFAC2C0);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v147 = &v89 - v23;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9828, &qword_1CEFAC2C8);
  v145 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v144 = &v89 - v24;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9830, &qword_1CEFAC2D0);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v141 = &v89 - v25;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9838, &qword_1CEFAC2D8);
  v139 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v89 - v26;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9840, &qword_1CEFAC2E0);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v135 = &v89 - v27;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9848, &qword_1CEFAC2E8);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v89 - v28;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9850, &qword_1CEFAC2F0);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v89 - v29;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9858, &qword_1CEFAC2F8);
  v127 = *(v128 - 8);
  MEMORY[0x1EEE9AC00](v128);
  v126 = &v89 - v30;
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9860, &qword_1CEFAC300);
  v124 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v123 = &v89 - v31;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9868, &qword_1CEFAC308);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v120 = &v89 - v32;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9870, &qword_1CEFAC310);
  v118 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v117 = &v89 - v33;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9878, &qword_1CEFAC318);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v114 = &v89 - v34;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9880, &qword_1CEFAC320);
  v112 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v111 = &v89 - v35;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9888, &qword_1CEFAC328);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v89 - v36;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9890, &qword_1CEFAC330);
  v106 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v105 = &v89 - v37;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9898, &qword_1CEFAC338);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v102 = &v89 - v38;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A98A0, &qword_1CEFAC340);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v99 = &v89 - v39;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A98A8, &qword_1CEFAC348);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v96 = &v89 - v40;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A98B0, &qword_1CEFAC350);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v89 - v41;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A98B8, &qword_1CEFAC358);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v43 = &v89 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A98C0, &qword_1CEFAC360);
  v90 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v89 - v45;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A98C8, &qword_1CEFAC368);
  v47 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190);
  v49 = &v89 - v48;
  v50 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF657E8();
  v189 = v49;
  sub_1CEFA8A60();
  v51 = (v47 + 8);
  switch(v50)
  {
    case 1:
      v192 = 1;
      sub_1CEF662BC();
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v91 + 8);
      v59 = v43;
      v60 = &v124;
      goto LABEL_37;
    case 2:
      v192 = 2;
      sub_1CEF66268();
      v72 = v93;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v94 + 8);
      v59 = v72;
      v60 = &v127;
      goto LABEL_37;
    case 3:
      v192 = 3;
      sub_1CEF66214();
      v74 = v96;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v97 + 8);
      v59 = v74;
      v60 = &v130;
      goto LABEL_37;
    case 4:
      v192 = 4;
      sub_1CEF661C0();
      v67 = v99;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v100 + 8);
      v59 = v67;
      v60 = &v133;
      goto LABEL_37;
    case 5:
      v192 = 5;
      sub_1CEF6616C();
      v78 = v102;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v103 + 8);
      v59 = v78;
      v60 = &v136;
      goto LABEL_37;
    case 6:
      v192 = 6;
      sub_1CEF66118();
      v81 = v105;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v106 + 8);
      v59 = v81;
      v60 = &v139;
      goto LABEL_37;
    case 7:
      v192 = 7;
      sub_1CEF660C4();
      v75 = v108;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v109 + 8);
      v59 = v75;
      v60 = &v142;
      goto LABEL_37;
    case 8:
      v192 = 8;
      sub_1CEF66070();
      v84 = v111;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v112 + 8);
      v59 = v84;
      v60 = &v145;
      goto LABEL_37;
    case 9:
      v192 = 9;
      sub_1CEF6601C();
      v69 = v114;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v115 + 8);
      v59 = v69;
      v60 = &v148;
      goto LABEL_37;
    case 10:
      v192 = 10;
      sub_1CEF65FC8();
      v83 = v117;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v118 + 8);
      v59 = v83;
      v60 = &v151;
      goto LABEL_37;
    case 11:
      v192 = 11;
      sub_1CEF65F74();
      v66 = v120;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v121 + 8);
      v59 = v66;
      v60 = &v154;
      goto LABEL_37;
    case 12:
      v192 = 12;
      sub_1CEF65F20();
      v68 = v123;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v124 + 8);
      v59 = v68;
      v60 = &v157;
      goto LABEL_37;
    case 13:
      v192 = 13;
      sub_1CEF65ECC();
      v80 = v126;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v127 + 8);
      v59 = v80;
      v60 = &v160;
      goto LABEL_37;
    case 14:
      v192 = 14;
      sub_1CEF65E78();
      v62 = v129;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v130 + 8);
      v59 = v62;
      v60 = &v163;
      goto LABEL_37;
    case 15:
      v192 = 15;
      sub_1CEF65E24();
      v73 = v132;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v133 + 8);
      v59 = v73;
      v60 = &v166;
      goto LABEL_37;
    case 16:
      v192 = 16;
      sub_1CEF65DD0();
      v61 = v135;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v136 + 8);
      v59 = v61;
      v60 = &v169;
      goto LABEL_37;
    case 17:
      v192 = 17;
      sub_1CEF65D7C();
      v76 = v138;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v139 + 8);
      v59 = v76;
      v60 = &v172;
      goto LABEL_37;
    case 18:
      v192 = 18;
      sub_1CEF65D28();
      v82 = v141;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v142 + 8);
      v59 = v82;
      v60 = &v175;
      goto LABEL_37;
    case 19:
      v192 = 19;
      sub_1CEF65CD4();
      v86 = v144;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v145 + 8);
      v59 = v86;
      v60 = &v178;
      goto LABEL_37;
    case 20:
      v192 = 20;
      sub_1CEF65C80();
      v77 = v147;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v148 + 8);
      v59 = v77;
      v60 = &v181;
      goto LABEL_37;
    case 21:
      v192 = 21;
      sub_1CEF65C2C();
      v79 = v150;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v151 + 8);
      v59 = v79;
      v60 = &v184;
      goto LABEL_37;
    case 22:
      v192 = 22;
      sub_1CEF65BD8();
      v85 = v153;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v154 + 8);
      v59 = v85;
      v60 = &v187;
      goto LABEL_37;
    case 23:
      v192 = 23;
      sub_1CEF65B84();
      v87 = v156;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v157 + 8);
      v59 = v87;
      v60 = &v190;
      goto LABEL_37;
    case 24:
      v192 = 24;
      sub_1CEF65B30();
      v71 = v159;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v160 + 8);
      v59 = v71;
      v60 = &v191;
      goto LABEL_37;
    case 25:
      v192 = 25;
      sub_1CEF65ADC();
      v70 = v162;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v163 + 8);
      v59 = v70;
      v60 = &v193;
      goto LABEL_37;
    case 26:
      v192 = 26;
      sub_1CEF65A88();
      v88 = v165;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v166 + 8);
      v59 = v88;
      v60 = &v194;
      goto LABEL_37;
    case 27:
      v192 = 27;
      sub_1CEF65A34();
      v55 = v168;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v58 = *(v169 + 8);
      v59 = v55;
      v60 = &v195;
LABEL_37:
      v58(v59, *(v60 - 32));
      goto LABEL_38;
    case 28:
      v192 = 28;
      sub_1CEF659E0();
      v63 = v171;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v65 = v172;
      v64 = v173;
      goto LABEL_35;
    case 29:
      v192 = 29;
      sub_1CEF6598C();
      v63 = v174;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v65 = v175;
      v64 = v176;
      goto LABEL_35;
    case 30:
      v192 = 30;
      sub_1CEF65938();
      v63 = v177;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v65 = v178;
      v64 = v179;
      goto LABEL_35;
    case 31:
      v192 = 31;
      sub_1CEF658E4();
      v63 = v180;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v65 = v181;
      v64 = v182;
      goto LABEL_35;
    case 32:
      v192 = 32;
      sub_1CEF65890();
      v63 = v183;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v65 = v184;
      v64 = v185;
      goto LABEL_35;
    case 33:
      v192 = 33;
      sub_1CEF6583C();
      v63 = v186;
      v57 = v189;
      v56 = v190;
      sub_1CEFA8820();
      v65 = v187;
      v64 = v188;
LABEL_35:
      (*(v65 + 8))(v63, v64);
LABEL_38:
      result = (*v51)(v57, v56);
      break;
    default:
      v192 = 0;
      sub_1CEF66310();
      v52 = v189;
      v53 = v190;
      sub_1CEFA8820();
      (*(v90 + 8))(v46, v44);
      result = (*v51)(v52, v53);
      break;
  }

  return result;
}

unint64_t sub_1CEF657E8()
{
  result = qword_1EC4A98D0;
  if (!qword_1EC4A98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A98D0);
  }

  return result;
}

unint64_t sub_1CEF6583C()
{
  result = qword_1EC4A98D8;
  if (!qword_1EC4A98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A98D8);
  }

  return result;
}

unint64_t sub_1CEF65890()
{
  result = qword_1EC4A98E0;
  if (!qword_1EC4A98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A98E0);
  }

  return result;
}

unint64_t sub_1CEF658E4()
{
  result = qword_1EC4A98E8;
  if (!qword_1EC4A98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A98E8);
  }

  return result;
}

unint64_t sub_1CEF65938()
{
  result = qword_1EC4A98F0;
  if (!qword_1EC4A98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A98F0);
  }

  return result;
}

unint64_t sub_1CEF6598C()
{
  result = qword_1EC4A98F8;
  if (!qword_1EC4A98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A98F8);
  }

  return result;
}

unint64_t sub_1CEF659E0()
{
  result = qword_1EC4A9900;
  if (!qword_1EC4A9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9900);
  }

  return result;
}

unint64_t sub_1CEF65A34()
{
  result = qword_1EC4A9908;
  if (!qword_1EC4A9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9908);
  }

  return result;
}

unint64_t sub_1CEF65A88()
{
  result = qword_1EC4A9910;
  if (!qword_1EC4A9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9910);
  }

  return result;
}

unint64_t sub_1CEF65ADC()
{
  result = qword_1EC4A9918;
  if (!qword_1EC4A9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9918);
  }

  return result;
}

unint64_t sub_1CEF65B30()
{
  result = qword_1EC4A9920;
  if (!qword_1EC4A9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9920);
  }

  return result;
}

unint64_t sub_1CEF65B84()
{
  result = qword_1EC4A9928;
  if (!qword_1EC4A9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9928);
  }

  return result;
}

unint64_t sub_1CEF65BD8()
{
  result = qword_1EC4A9930;
  if (!qword_1EC4A9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9930);
  }

  return result;
}

unint64_t sub_1CEF65C2C()
{
  result = qword_1EC4A9938;
  if (!qword_1EC4A9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9938);
  }

  return result;
}

unint64_t sub_1CEF65C80()
{
  result = qword_1EC4A9940;
  if (!qword_1EC4A9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9940);
  }

  return result;
}

unint64_t sub_1CEF65CD4()
{
  result = qword_1EC4A9948;
  if (!qword_1EC4A9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9948);
  }

  return result;
}

unint64_t sub_1CEF65D28()
{
  result = qword_1EC4A9950;
  if (!qword_1EC4A9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9950);
  }

  return result;
}

unint64_t sub_1CEF65D7C()
{
  result = qword_1EC4A9958;
  if (!qword_1EC4A9958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9958);
  }

  return result;
}

unint64_t sub_1CEF65DD0()
{
  result = qword_1EC4A9960;
  if (!qword_1EC4A9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9960);
  }

  return result;
}

unint64_t sub_1CEF65E24()
{
  result = qword_1EC4A9968;
  if (!qword_1EC4A9968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9968);
  }

  return result;
}

unint64_t sub_1CEF65E78()
{
  result = qword_1EC4A9970;
  if (!qword_1EC4A9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9970);
  }

  return result;
}

unint64_t sub_1CEF65ECC()
{
  result = qword_1EC4A9978;
  if (!qword_1EC4A9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9978);
  }

  return result;
}

unint64_t sub_1CEF65F20()
{
  result = qword_1EC4A9980;
  if (!qword_1EC4A9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9980);
  }

  return result;
}

unint64_t sub_1CEF65F74()
{
  result = qword_1EC4A9988;
  if (!qword_1EC4A9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9988);
  }

  return result;
}

unint64_t sub_1CEF65FC8()
{
  result = qword_1EC4A9990;
  if (!qword_1EC4A9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9990);
  }

  return result;
}

unint64_t sub_1CEF6601C()
{
  result = qword_1EC4A9998;
  if (!qword_1EC4A9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9998);
  }

  return result;
}

unint64_t sub_1CEF66070()
{
  result = qword_1EC4A99A0;
  if (!qword_1EC4A99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99A0);
  }

  return result;
}

unint64_t sub_1CEF660C4()
{
  result = qword_1EC4A99A8;
  if (!qword_1EC4A99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99A8);
  }

  return result;
}

unint64_t sub_1CEF66118()
{
  result = qword_1EC4A99B0;
  if (!qword_1EC4A99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99B0);
  }

  return result;
}

unint64_t sub_1CEF6616C()
{
  result = qword_1EC4A99B8;
  if (!qword_1EC4A99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99B8);
  }

  return result;
}

unint64_t sub_1CEF661C0()
{
  result = qword_1EC4A99C0;
  if (!qword_1EC4A99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99C0);
  }

  return result;
}

unint64_t sub_1CEF66214()
{
  result = qword_1EC4A99C8;
  if (!qword_1EC4A99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99C8);
  }

  return result;
}

unint64_t sub_1CEF66268()
{
  result = qword_1EC4A99D0;
  if (!qword_1EC4A99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99D0);
  }

  return result;
}

unint64_t sub_1CEF662BC()
{
  result = qword_1EC4A99D8;
  if (!qword_1EC4A99D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99D8);
  }

  return result;
}

unint64_t sub_1CEF66310()
{
  result = qword_1EC4A99E0;
  if (!qword_1EC4A99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A99E0);
  }

  return result;
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.Reason.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v230 = a2;
  v229 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A99E8, &qword_1CEFAC370);
  v196 = *(v229 - 8);
  MEMORY[0x1EEE9AC00](v229);
  v225 = &v126 - v3;
  v195 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A99F0, &qword_1CEFAC378);
  v194 = *(v195 - 8);
  MEMORY[0x1EEE9AC00](v195);
  v224 = &v126 - v4;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A99F8, &qword_1CEFAC380);
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193);
  v223 = &v126 - v5;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A00, &qword_1CEFAC388);
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191);
  v222 = &v126 - v6;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A08, &qword_1CEFAC390);
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v221 = &v126 - v7;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A10, &qword_1CEFAC398);
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187);
  v220 = &v126 - v8;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A18, &qword_1CEFAC3A0);
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185);
  v219 = &v126 - v9;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A20, &qword_1CEFAC3A8);
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v218 = &v126 - v10;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A28, &qword_1CEFAC3B0);
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181);
  v217 = &v126 - v11;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A30, &qword_1CEFAC3B8);
  v178 = *(v179 - 8);
  MEMORY[0x1EEE9AC00](v179);
  v216 = &v126 - v12;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A38, &qword_1CEFAC3C0);
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v215 = &v126 - v13;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A40, &qword_1CEFAC3C8);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175);
  v214 = &v126 - v14;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A48, &qword_1CEFAC3D0);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v213 = &v126 - v15;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A50, &qword_1CEFAC3D8);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171);
  v212 = &v126 - v16;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A58, &qword_1CEFAC3E0);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v211 = &v126 - v17;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A60, &qword_1CEFAC3E8);
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v210 = &v126 - v18;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A68, &qword_1CEFAC3F0);
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v209 = &v126 - v19;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A70, &qword_1CEFAC3F8);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v208 = &v126 - v20;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A78, &qword_1CEFAC400);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v207 = &v126 - v21;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A80, &qword_1CEFAC408);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v206 = &v126 - v22;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A88, &qword_1CEFAC410);
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v205 = &v126 - v23;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A90, &qword_1CEFAC418);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155);
  v204 = &v126 - v24;
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9A98, &qword_1CEFAC420);
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v203 = &v126 - v25;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AA0, &qword_1CEFAC428);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v202 = &v126 - v26;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AA8, &qword_1CEFAC430);
  v149 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148);
  v199 = &v126 - v27;
  v146 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AB0, &qword_1CEFAC438);
  v147 = *(v146 - 8);
  MEMORY[0x1EEE9AC00](v146);
  v228 = &v126 - v28;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AB8, &qword_1CEFAC440);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145);
  v227 = &v126 - v29;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AC0, &qword_1CEFAC448);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v201 = &v126 - v30;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AC8, &qword_1CEFAC450);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v200 = &v126 - v31;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AD0, &qword_1CEFAC458);
  v138 = *(v139 - 8);
  MEMORY[0x1EEE9AC00](v139);
  v226 = &v126 - v32;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AD8, &qword_1CEFAC460);
  v136 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v198 = &v126 - v33;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AE0, &qword_1CEFAC468);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v197 = &v126 - v34;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AE8, &qword_1CEFAC470);
  v132 = *(v133 - 8);
  MEMORY[0x1EEE9AC00](v133);
  v36 = &v126 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AF0, &qword_1CEFAC478);
  v131 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v39 = &v126 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9AF8, &qword_1CEFAC480);
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v126 - v42;
  v44 = a1[3];
  v231 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v44);
  sub_1CEF657E8();
  v45 = v232;
  sub_1CEFA8A50();
  if (v45)
  {
LABEL_8:
    v61 = v231;
    return __swift_destroy_boxed_opaque_existential_0(v61);
  }

  v128 = v39;
  v127 = v37;
  v129 = v36;
  v46 = v226;
  v47 = v227;
  v48 = v228;
  v130 = 0;
  v50 = v229;
  v49 = v230;
  v232 = v41;
  v51 = v43;
  v52 = sub_1CEFA8800();
  v53 = (2 * *(v52 + 16)) | 1;
  v233 = v52;
  v234 = v52 + 32;
  v235 = 0;
  v236 = v53;
  v54 = sub_1CEF3F54C();
  if (v235 != v236 >> 1)
  {
LABEL_6:
    v58 = sub_1CEFA8680();
    swift_allocError();
    v60 = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20);
    *v60 = &type metadata for TrustedCloudComputeError.InternalErrorInfo.Reason;
    sub_1CEFA8720();
    sub_1CEFA8670();
    (*(*(v58 - 8) + 104))(v60, *MEMORY[0x1E69E6AF8], v58);
    swift_willThrow();
LABEL_7:
    (*(v232 + 8))(v51, v40);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v55 = v54;
  switch(v54)
  {
    case 0:
      v237 = 0;
      sub_1CEF66310();
      v56 = v128;
      v57 = v130;
      sub_1CEFA8710();
      if (v57)
      {
        goto LABEL_7;
      }

      (*(v131 + 8))(v56, v127);
      goto LABEL_76;
    case 1:
      v237 = 1;
      sub_1CEF662BC();
      v89 = v129;
      v90 = v130;
      sub_1CEFA8710();
      if (v90)
      {
        goto LABEL_7;
      }

      (*(v132 + 8))(v89, v133);
      goto LABEL_76;
    case 2:
      v237 = 2;
      sub_1CEF66268();
      v82 = v197;
      v83 = v130;
      sub_1CEFA8710();
      if (v83)
      {
        goto LABEL_7;
      }

      (*(v134 + 8))(v82, v135);
      goto LABEL_76;
    case 3:
      v237 = 3;
      sub_1CEF66214();
      v86 = v198;
      v87 = v130;
      sub_1CEFA8710();
      if (v87)
      {
        goto LABEL_7;
      }

      (*(v136 + 8))(v86, v137);
      goto LABEL_76;
    case 4:
      v237 = 4;
      sub_1CEF661C0();
      v73 = v130;
      sub_1CEFA8710();
      if (v73)
      {
        goto LABEL_7;
      }

      (*(v138 + 8))(v46, v139);
      goto LABEL_76;
    case 5:
      v237 = 5;
      sub_1CEF6616C();
      v97 = v200;
      v98 = v130;
      sub_1CEFA8710();
      if (v98)
      {
        goto LABEL_7;
      }

      (*(v140 + 8))(v97, v141);
      goto LABEL_76;
    case 6:
      v237 = 6;
      sub_1CEF66118();
      v103 = v201;
      v104 = v130;
      sub_1CEFA8710();
      if (v104)
      {
        goto LABEL_7;
      }

      (*(v142 + 8))(v103, v143);
      goto LABEL_76;
    case 7:
      v237 = 7;
      sub_1CEF660C4();
      v88 = v130;
      sub_1CEFA8710();
      if (v88)
      {
        goto LABEL_7;
      }

      (*(v144 + 8))(v47, v145);
      goto LABEL_76;
    case 8:
      v237 = 8;
      sub_1CEF66070();
      v109 = v130;
      sub_1CEFA8710();
      if (v109)
      {
        goto LABEL_7;
      }

      (*(v147 + 8))(v48, v146);
      goto LABEL_76;
    case 9:
      v237 = 9;
      sub_1CEF6601C();
      v76 = v199;
      v77 = v130;
      sub_1CEFA8710();
      if (v77)
      {
        goto LABEL_7;
      }

      (*(v149 + 8))(v76, v148);
      goto LABEL_76;
    case 10:
      v237 = 10;
      sub_1CEF65FC8();
      v107 = v202;
      v108 = v130;
      sub_1CEFA8710();
      if (v108)
      {
        goto LABEL_7;
      }

      (*(v150 + 8))(v107, v151);
      goto LABEL_76;
    case 11:
      v237 = 11;
      sub_1CEF65F74();
      v71 = v203;
      v72 = v130;
      sub_1CEFA8710();
      if (v72)
      {
        goto LABEL_7;
      }

      (*(v152 + 8))(v71, v153);
      goto LABEL_76;
    case 12:
      v237 = 12;
      sub_1CEF65F20();
      v74 = v204;
      v75 = v130;
      sub_1CEFA8710();
      if (v75)
      {
        goto LABEL_7;
      }

      (*(v154 + 8))(v74, v155);
      goto LABEL_76;
    case 13:
      v237 = 13;
      sub_1CEF65ECC();
      v101 = v205;
      v102 = v130;
      sub_1CEFA8710();
      if (v102)
      {
        goto LABEL_7;
      }

      (*(v156 + 8))(v101, v157);
      goto LABEL_76;
    case 14:
      v237 = 14;
      sub_1CEF65E78();
      v67 = v206;
      v68 = v130;
      sub_1CEFA8710();
      if (v68)
      {
        goto LABEL_7;
      }

      (*(v158 + 8))(v67, v159);
      goto LABEL_76;
    case 15:
      v237 = 15;
      sub_1CEF65E24();
      v84 = v207;
      v85 = v130;
      sub_1CEFA8710();
      if (v85)
      {
        goto LABEL_7;
      }

      (*(v160 + 8))(v84, v161);
      goto LABEL_76;
    case 16:
      v237 = 16;
      sub_1CEF65DD0();
      v65 = v208;
      v66 = v130;
      sub_1CEFA8710();
      if (v66)
      {
        goto LABEL_7;
      }

      (*(v162 + 8))(v65, v163);
      goto LABEL_76;
    case 17:
      v237 = 17;
      sub_1CEF65D7C();
      v93 = v209;
      v94 = v130;
      sub_1CEFA8710();
      if (v94)
      {
        goto LABEL_7;
      }

      (*(v164 + 8))(v93, v165);
      goto LABEL_76;
    case 18:
      v237 = 18;
      sub_1CEF65D28();
      v105 = v210;
      v106 = v130;
      sub_1CEFA8710();
      if (v106)
      {
        goto LABEL_7;
      }

      (*(v166 + 8))(v105, v167);
      goto LABEL_76;
    case 19:
      v237 = 19;
      sub_1CEF65CD4();
      v116 = v211;
      v117 = v130;
      sub_1CEFA8710();
      if (v117)
      {
        goto LABEL_7;
      }

      (*(v168 + 8))(v116, v169);
      goto LABEL_76;
    case 20:
      v237 = 20;
      sub_1CEF65C80();
      v95 = v212;
      v96 = v130;
      sub_1CEFA8710();
      if (v96)
      {
        goto LABEL_7;
      }

      (*(v170 + 8))(v95, v171);
      goto LABEL_76;
    case 21:
      v237 = 21;
      sub_1CEF65C2C();
      v99 = v213;
      v100 = v130;
      sub_1CEFA8710();
      if (v100)
      {
        goto LABEL_7;
      }

      (*(v172 + 8))(v99, v173);
      goto LABEL_76;
    case 22:
      v237 = 22;
      sub_1CEF65BD8();
      v114 = v214;
      v115 = v130;
      sub_1CEFA8710();
      if (v115)
      {
        goto LABEL_7;
      }

      (*(v174 + 8))(v114, v175);
      goto LABEL_76;
    case 23:
      v237 = 23;
      sub_1CEF65B84();
      v118 = v215;
      v119 = v130;
      sub_1CEFA8710();
      if (v119)
      {
        goto LABEL_7;
      }

      (*(v176 + 8))(v118, v177);
      goto LABEL_76;
    case 24:
      v237 = 24;
      sub_1CEF65B30();
      v80 = v216;
      v81 = v130;
      sub_1CEFA8710();
      if (v81)
      {
        goto LABEL_7;
      }

      (*(v178 + 8))(v80, v179);
      goto LABEL_76;
    case 25:
      v237 = 25;
      sub_1CEF65ADC();
      v78 = v217;
      v79 = v130;
      sub_1CEFA8710();
      if (v79)
      {
        goto LABEL_7;
      }

      (*(v180 + 8))(v78, v181);
      goto LABEL_76;
    case 26:
      v237 = 26;
      sub_1CEF65A88();
      v124 = v218;
      v125 = v130;
      sub_1CEFA8710();
      if (v125)
      {
        goto LABEL_7;
      }

      (*(v182 + 8))(v124, v183);
      goto LABEL_76;
    case 27:
      v237 = 27;
      sub_1CEF65A34();
      v63 = v219;
      v64 = v130;
      sub_1CEFA8710();
      if (v64)
      {
        goto LABEL_7;
      }

      (*(v184 + 8))(v63, v185);
      goto LABEL_76;
    case 28:
      v237 = 28;
      sub_1CEF659E0();
      v120 = v220;
      v121 = v130;
      sub_1CEFA8710();
      if (v121)
      {
        goto LABEL_7;
      }

      (*(v186 + 8))(v120, v187);
      goto LABEL_76;
    case 29:
      v237 = 29;
      sub_1CEF6598C();
      v122 = v221;
      v123 = v130;
      sub_1CEFA8710();
      if (v123)
      {
        goto LABEL_7;
      }

      (*(v188 + 8))(v122, v189);
      goto LABEL_76;
    case 30:
      v237 = 30;
      sub_1CEF65938();
      v110 = v222;
      v111 = v130;
      sub_1CEFA8710();
      if (v111)
      {
        goto LABEL_7;
      }

      (*(v190 + 8))(v110, v191);
      goto LABEL_76;
    case 31:
      v237 = 31;
      sub_1CEF658E4();
      v91 = v223;
      v92 = v130;
      sub_1CEFA8710();
      if (v92)
      {
        goto LABEL_7;
      }

      (*(v192 + 8))(v91, v193);
      goto LABEL_76;
    case 32:
      v237 = 32;
      sub_1CEF65890();
      v112 = v224;
      v113 = v130;
      sub_1CEFA8710();
      if (v113)
      {
        goto LABEL_7;
      }

      (*(v194 + 8))(v112, v195);
LABEL_76:
      (*(v232 + 8))(v51, v40);
      swift_unknownObjectRelease();
      v61 = v231;
      goto LABEL_77;
    case 33:
      v237 = 33;
      sub_1CEF6583C();
      v69 = v225;
      v70 = v130;
      sub_1CEFA8710();
      if (v70)
      {
        (*(v232 + 8))(v51, v40);
        swift_unknownObjectRelease();
        v61 = v231;
      }

      else
      {
        (*(v196 + 8))(v69, v50);
        (*(v232 + 8))(v51, v40);
        swift_unknownObjectRelease();
        v61 = v231;
LABEL_77:
        *v49 = v55;
      }

      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v61);
}

unint64_t sub_1CEF68634()
{
  v1 = 0x6E6F73616572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6567617373656DLL;
  }
}

uint64_t sub_1CEF68690@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF77B50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF686B8(uint64_t a1)
{
  v2 = sub_1CEF688FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF686F4(uint64_t a1)
{
  v2 = sub_1CEF688FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B00, &qword_1CEFAC488);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v11 = *(v1 + 16);
  v7 = *(v1 + 24);
  v10[1] = *(v1 + 32);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF688FC();
  sub_1CEFA8A60();
  v15 = 0;
  v8 = v10[3];
  sub_1CEFA8880();
  if (!v8)
  {
    v14 = v11;
    v13 = 1;
    sub_1CEF68950();
    sub_1CEFA8870();
    v12 = 2;
    sub_1CEFA8830();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1CEF688FC()
{
  result = qword_1EC4A9B08;
  if (!qword_1EC4A9B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B08);
  }

  return result;
}

unint64_t sub_1CEF68950()
{
  result = qword_1EC4A9B10;
  if (!qword_1EC4A9B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B10);
  }

  return result;
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B18, &qword_1CEFAC490);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF688FC();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v24 = 0;
  v9 = sub_1CEFA8780();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  sub_1CEF68BF0();
  sub_1CEFA8770();
  v20 = v23;
  v21 = 2;
  v13 = sub_1CEFA8730();
  v16 = v15;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v20;
  *(a2 + 24) = v19;
  *(a2 + 32) = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1CEF68BF0()
{
  result = qword_1EC4A9B20;
  if (!qword_1EC4A9B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B20);
  }

  return result;
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.domain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.domain.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.message.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.message.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

void __swiftcall TrustedCloudComputeError.NetworkErrorInfo.init(domain:code:message:)(PrivateCloudCompute::TrustedCloudComputeError::NetworkErrorInfo *__return_ptr retstr, Swift::String domain, Swift::Int code, Swift::String message)
{
  retstr->domain = domain;
  retstr->code = code;
  retstr->message = message;
}

uint64_t sub_1CEF68DC4()
{
  v1 = 1701080931;
  if (*v0 != 1)
  {
    v1 = 0x6567617373656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E69616D6F64;
  }
}

uint64_t sub_1CEF68E14@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF77C6C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF68E3C(uint64_t a1)
{
  v2 = sub_1CEF69078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF68E78(uint64_t a1)
{
  v2 = sub_1CEF69078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B28, &qword_1CEFAC498);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = v1[2];
  v10[1] = v1[3];
  v10[2] = v7;
  v10[0] = v1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF69078();
  sub_1CEFA8A60();
  v13 = 0;
  v8 = v10[3];
  sub_1CEFA8880();
  if (v8)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v12 = 1;
  sub_1CEFA88B0();
  v11 = 2;
  sub_1CEFA8880();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1CEF69078()
{
  result = qword_1EC4A9B30;
  if (!qword_1EC4A9B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B30);
  }

  return result;
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B38, &unk_1CEFAC4A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF69078();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = 0;
  v9 = sub_1CEFA8780();
  v11 = v10;
  v12 = v9;
  v22 = 1;
  v20 = sub_1CEFA87B0();
  v21 = 2;
  v13 = sub_1CEFA8780();
  v16 = v15;
  v17 = *(v6 + 8);
  v19 = v13;
  v17(v8, v5);
  *a2 = v12;
  a2[1] = v11;
  v18 = v19;
  a2[2] = v20;
  a2[3] = v18;
  a2[4] = v16;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t TrustedCloudComputeError.rawCode.getter()
{
  v1 = type metadata accessor for TrustedCloudComputeError(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v0, v3, type metadata accessor for TrustedCloudComputeError);
  LODWORD(result) = swift_getEnumCaseMultiPayload();
  if (result > 3)
  {
    if (result > 5)
    {
      if (result == 6)
      {
        sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError);
        return 6;
      }

      else
      {
        sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError);
        return 7;
      }
    }

    else if (result == 4)
    {
      return 4;
    }

    else
    {
      sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      return 5;
    }
  }

  else if (result > 1)
  {
    if (result == 2)
    {
      sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      return 2;
    }

    else
    {
      return result;
    }
  }

  else if (result)
  {
    sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
    return 1;
  }

  else
  {
    sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
    return 0;
  }
}

uint64_t sub_1CEF69504()
{
  v1 = type metadata accessor for TrustedCloudComputeError(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v0, v3, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError);
        return 0x6C616E7265746E49;
      }

      else
      {
        sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError);
        return 0x456B726F7774654ELL;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0xD000000000000011;
    }

    else
    {
      sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      return 0x7245726576726553;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      return 0x4574756F656D6954;
    }

    else
    {
      return 0xD000000000000013;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
    return 0xD000000000000017;
  }

  else
  {
    sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
    return 0xD000000000000014;
  }
}

uint64_t sub_1CEF69778@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1CEFA8100();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for TrustedCloudComputeError(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CEF5D9E0(v1, v11, type metadata accessor for TrustedCloudComputeError);
  if (swift_getEnumCaseMultiPayload() == 7)
  {
    v22 = *v11;
  }

  else
  {
    countAndFlagsBits = TrustedCloudComputeError.errorCaseString()()._countAndFlagsBits;
    v23 = 0xD00000000000001ELL;
    v24 = 0x80000001CEFB5F00;
    MEMORY[0x1D38665A0](countAndFlagsBits);

    v22 = v23;
    sub_1CEF5DA48(v11, type metadata accessor for TrustedCloudComputeError);
  }

  v13 = sub_1CEF69A70();
  if (v14)
  {
    v15 = v13;
    v16 = v14;
    v23 = sub_1CEF69ECC();
    v24 = v17;
    MEMORY[0x1D38665A0](8251, 0xE200000000000000);
    MEMORY[0x1D38665A0](v15, v16);
  }

  else
  {
    sub_1CEF69ECC();
  }

  sub_1CEF6A424();

  TrustedCloudComputeError.retryAfterDate.getter(v8);
  TrustedCloudComputeError.category.getter(v5);
  sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  v18 = sub_1CEFA80E0();
  swift_allocObject();
  v19 = sub_1CEFA80D0();
  a1[3] = v18;
  result = sub_1CEF5BA2C(&qword_1EC4AA230, MEMORY[0x1E698C278], MEMORY[0x1E698C270]);
  a1[4] = result;
  *a1 = v19;
  return result;
}

uint64_t sub_1CEF69A70()
{
  v1 = v0;
  v2 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for TrustedCloudComputeError(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v1, v16, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v23 = *(v16 + 1);
        v24 = v16[16];
        v25 = *(v16 + 3);
        v26 = *(v16 + 4);
        v33 = *v16;
        v34 = v23;
        v35 = v24;
        v36 = v25;
        v37 = v26;
        v27 = TrustedCloudComputeError.InternalErrorInfo.description.getter();

        return v27;
      }

      else
      {
        v30 = *v16;
        v29 = *(v16 + 1);
        v31 = *(v16 + 2);
        v33 = 0;
        v34 = 0xE000000000000000;
        sub_1CEFA8650();

        v33 = 0x3D6E69616D6F64;
        v34 = 0xE700000000000000;
        MEMORY[0x1D38665A0](v30, v29);
        MEMORY[0x1D38665A0](0x3D65646F6320, 0xE600000000000000);
        v38 = v31;
        v32 = sub_1CEFA8910();
        MEMORY[0x1D38665A0](v32);

        return v33;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      LOBYTE(v33) = *v16;
      return TrustedCloudComputeError.UnauthorizedErrorInfo.description.getter();
    }

    else
    {
      sub_1CEF6AB6C(v16, v4, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      v28 = TrustedCloudComputeError.ServerErrorInfo.description.getter();
      sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      return v28;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1CEF6AB6C(v16, v7, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      v22 = TrustedCloudComputeError.TimeoutErrorInfo.description.getter();
      sub_1CEF5DA48(v7, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      return v22;
    }

    else
    {
      LOBYTE(v33) = *v16;
      return TrustedCloudComputeError.InvalidRequestErrorInfo.description.getter();
    }
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      sub_1CEF6AB6C(v16, v10, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
      v18 = TrustedCloudComputeError.AvailabilityInfo.description.getter();
      v19 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo;
      v20 = v10;
    }

    else
    {
      sub_1CEF6AB6C(v16, v13, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
      v18 = TrustedCloudComputeError.RateLimitInfo.description.getter();
      v19 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo;
      v20 = v13;
    }

    sub_1CEF5DA48(v20, v19);
    return v18;
  }
}

uint64_t sub_1CEF69ECC()
{
  v1 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TrustedCloudComputeError(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1CEF5D9E0(v0, v12, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v14 = *v12;
      }

      else
      {
        v14 = v12[3];
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v17 = *v12;
      if (v17 <= 1)
      {
        if (*v12)
        {
          return 0xD000000000000021;
        }

        else
        {
          return 0xD000000000000011;
        }
      }

      else if (v17 == 2)
      {
        return 0xD000000000000013;
      }

      else if (v17 == 3)
      {
        return 0xD000000000000014;
      }

      else
      {
        return 0x726F687475616E75;
      }
    }

    else
    {
      sub_1CEF5DA48(v12, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      return 0xD000000000000015;
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1CEF6AB6C(v12, v9, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
        v14 = TrustedCloudComputeError.RateLimitInfo.message.getter();
        v15 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo;
        v16 = v9;
LABEL_50:
        sub_1CEF5DA48(v16, v15);
        return v14;
      }

      sub_1CEF6AB6C(v12, v6, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
      v19 = *v6;
      if (v19 <= 3)
      {
        if (*v6 <= 1u)
        {
          if (!*v6)
          {
            v14 = 0xD000000000000010;
LABEL_49:
            v15 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo;
            v16 = v6;
            goto LABEL_50;
          }

LABEL_46:
          v14 = 0xD000000000000012;
          goto LABEL_49;
        }

        if (v19 == 2)
        {
          v14 = 0x7562207365646F6ELL;
          goto LABEL_49;
        }

LABEL_47:
        v14 = 0xD000000000000018;
        goto LABEL_49;
      }

      if (*v6 > 5u)
      {
        if (v19 == 6)
        {
          goto LABEL_47;
        }
      }

      else if (v19 != 4)
      {
        goto LABEL_46;
      }

      v14 = 0xD00000000000001ALL;
      goto LABEL_49;
    }

    if (EnumCaseMultiPayload == 2)
    {
      sub_1CEF6AB6C(v12, v3, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      v18 = *v3;
      if (v18 <= 1)
      {
        if (*v3)
        {
LABEL_44:
          v14 = 0xD000000000000022;
          goto LABEL_45;
        }

        v14 = 0xD000000000000020;
      }

      else if (v18 == 2)
      {
        v14 = 0xD00000000000001CLL;
      }

      else
      {
        if (v18 == 3)
        {
          goto LABEL_44;
        }

        v14 = 0xD000000000000015;
      }

LABEL_45:
      v15 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo;
      v16 = v3;
      goto LABEL_50;
    }

    if (*v12)
    {
      return 0x2064696C61766E69;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  return v14;
}

uint64_t sub_1CEF6A424()
{
  v1 = v0;
  v2 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TrustedCloudComputeError(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v1, v10, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v15 = v10[16];

        return qword_1CEFB1270[v15];
      }

      else
      {
        v17 = *(v10 + 2);

        return v17;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v13 = *v10;
      if (v13 == 4)
      {
        return 32017;
      }

      else
      {
        return v13 + 32018;
      }
    }

    else
    {
      sub_1CEF5DA48(v10, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      return 32058;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1CEF6AB6C(v10, v4, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      v14 = *v4;
      sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      if (v14 == 4)
      {
        return 32010;
      }

      else
      {
        return v14 + 32011;
      }
    }

    else if (*v10)
    {
      return 32015;
    }

    else
    {
      return 32016;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_1CEF6AB6C(v10, v7, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
    v16 = *v7;
    sub_1CEF5DA48(v7, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
    if (v16 == 7)
    {
      return 32002;
    }

    else
    {
      return v16 + 32003;
    }
  }

  else
  {
    sub_1CEF5DA48(v10, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
    return 32001;
  }
}

uint64_t TrustedCloudComputeError.retryAfterDate.getter@<X0>(uint64_t a1@<X8>)
{
  v29 = a1;
  v1 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TrustedCloudComputeError(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v28, v15, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if ((EnumCaseMultiPayload - 3) >= 2)
    {
      if ((EnumCaseMultiPayload - 6) >= 2)
      {
        sub_1CEF6AB6C(v15, v3, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
        sub_1CEF6196C(&v3[*(v1 + 24)], v29);
        return sub_1CEF5DA48(v3, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
      }

      sub_1CEF5DA48(v15, type metadata accessor for TrustedCloudComputeError);
    }

    v22 = sub_1CEFA8030();
    return (*(*(v22 - 8) + 56))(v29, 1, 1, v22);
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1CEF6AB6C(v15, v9, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
      v17 = *(v7 + 20);
      v18 = sub_1CEFA8030();
      v19 = *(v18 - 8);
      v20 = *(v19 + 32);
      v21 = &v9[v17];
    }

    else
    {
      sub_1CEF6AB6C(v15, v6, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      v27 = *(v4 + 20);
      v18 = sub_1CEFA8030();
      v19 = *(v18 - 8);
      v20 = *(v19 + 32);
      v21 = &v6[v27];
    }

    v26 = v29;
    v20(v29, v21, v18);
  }

  else
  {
    sub_1CEF6AB6C(v15, v12, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
    v24 = *(v10 + 40);
    v18 = sub_1CEFA8030();
    v19 = *(v18 - 8);
    v25 = &v12[v24];
    v26 = v29;
    (*(v19 + 16))(v29, v25, v18);
    sub_1CEF5DA48(v12, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
  }

  return (*(v19 + 56))(v26, 0, 1, v18);
}

uint64_t sub_1CEF6AB6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t TrustedCloudComputeError.category.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for TrustedCloudComputeError(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v2, v6, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        sub_1CEF5DA48(v6, type metadata accessor for TrustedCloudComputeError);
        v11 = MEMORY[0x1E698C2B0];
      }

      else
      {
        sub_1CEF5DA48(v6, type metadata accessor for TrustedCloudComputeError);
        v11 = MEMORY[0x1E698C328];
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v16 = *MEMORY[0x1E698C2A8];
        v17 = sub_1CEFA8100();
        (*(*(v17 - 8) + 104))(a1, v16, v17);
        v10 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo;
        return sub_1CEF5DA48(v6, v10);
      }

      v11 = MEMORY[0x1E698C2E0];
    }
  }

  else
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        v14 = *MEMORY[0x1E698C2D0];
        v15 = sub_1CEFA8100();
        (*(*(v15 - 8) + 104))(a1, v14, v15);
        v10 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo;
      }

      else
      {
        v8 = *MEMORY[0x1E698C2C0];
        v9 = sub_1CEFA8100();
        (*(*(v9 - 8) + 104))(a1, v8, v9);
        v10 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo;
      }

      return sub_1CEF5DA48(v6, v10);
    }

    if (EnumCaseMultiPayload == 2)
    {
      v12 = *MEMORY[0x1E698C338];
      v13 = sub_1CEFA8100();
      (*(*(v13 - 8) + 104))(a1, v12, v13);
      v10 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo;
      return sub_1CEF5DA48(v6, v10);
    }

    v11 = MEMORY[0x1E698C2A0];
  }

  v19 = *v11;
  v20 = sub_1CEFA8100();
  return (*(*(v20 - 8) + 104))(a1, v19, v20);
}

uint64_t TrustedCloudComputeError.underlyingErrors.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9320, &qword_1CEFAB3A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CEFAA480;
  sub_1CEF69778((v0 + 32));
  return v0;
}

uint64_t sub_1CEF6AF28()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0x6C616E7265746E69;
    if (v1 != 6)
    {
      v5 = 0x456B726F7774656ELL;
    }

    v6 = 0xD000000000000011;
    if (v1 != 4)
    {
      v6 = 0x7245726576726573;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x4574756F656D6974;
    if (v1 != 2)
    {
      v2 = 0xD000000000000013;
    }

    v3 = 0xD000000000000017;
    if (!*v0)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1CEF6B048@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF77D80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF6B07C(uint64_t a1)
{
  v2 = sub_1CEF6C81C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B0B8(uint64_t a1)
{
  v2 = sub_1CEF6C81C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B110@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001CEFB5EE0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CEFA8950();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CEF6B1A4(uint64_t a1)
{
  v2 = sub_1CEF6CBB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B1E0(uint64_t a1)
{
  v2 = sub_1CEF6CBB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B240@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696D694C65746172 && a2 == 0xED00006F666E4974)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF6B2D0(uint64_t a1)
{
  v2 = sub_1CEF6CC0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B30C(uint64_t a1)
{
  v2 = sub_1CEF6CC0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B364@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001CEFB5E60 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CEFA8950();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CEF6B3F8(uint64_t a1)
{
  v2 = sub_1CEF6C918();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B434(uint64_t a1)
{
  v2 = sub_1CEF6C918();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001CEFB5EA0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CEFA8950();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CEF6B520(uint64_t a1)
{
  v2 = sub_1CEF6CABC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B55C(uint64_t a1)
{
  v2 = sub_1CEF6CABC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B5B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001CEFB5E40 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CEFA8950();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CEF6B648(uint64_t a1)
{
  v2 = sub_1CEF6C870();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B684(uint64_t a1)
{
  v2 = sub_1CEF6C870();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B6E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7245726576726573 && a2 == 0xEF6F666E49726F72)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1CEFA8950();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1CEF6B774(uint64_t a1)
{
  v2 = sub_1CEF6C9C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B7B0(uint64_t a1)
{
  v2 = sub_1CEF6C9C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B808@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001CEFB5EC0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CEFA8950();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CEF6B89C(uint64_t a1)
{
  v2 = sub_1CEF6CB64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6B8D8(uint64_t a1)
{
  v2 = sub_1CEF6CB64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1CEF6B930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000015 && 0x80000001CEFB5E80 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1CEFA8950();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1CEF6B9C4(uint64_t a1)
{
  v2 = sub_1CEF6CA14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF6BA00(uint64_t a1)
{
  v2 = sub_1CEF6CA14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedCloudComputeError.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B40, &qword_1CEFAC4B0);
  v94 = *(v2 - 8);
  v95 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v93 = &v66 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B48, &qword_1CEFAC4B8);
  v91 = *(v4 - 8);
  v92 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v90 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B50, &qword_1CEFAC4C0);
  v88 = *(v6 - 8);
  v89 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v87 = &v66 - v7;
  v85 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  MEMORY[0x1EEE9AC00](v85);
  v86 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B58, &qword_1CEFAC4C8);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v66 - v9;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B60, &qword_1CEFAC4D0);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v66 - v10;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B68, &qword_1CEFAC4D8);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v66 - v11;
  v74 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  MEMORY[0x1EEE9AC00](v74);
  v75 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B70, &qword_1CEFAC4E0);
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v71 = &v66 - v13;
  v69 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  MEMORY[0x1EEE9AC00](v69);
  v70 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B78, &qword_1CEFAC4E8);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v16 = &v66 - v15;
  v17 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for TrustedCloudComputeError(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v66 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9B80, &qword_1CEFAC4F0);
  v24 = *(v23 - 8);
  v98 = v23;
  v99 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v66 - v25;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF6C81C();
  v97 = v26;
  sub_1CEFA8A60();
  sub_1CEF5D9E0(v96, v22, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        sub_1CEF6AB6C(v22, v19, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
        LOBYTE(v100) = 0;
        sub_1CEF6CC0C();
        v29 = v97;
        v28 = v98;
        sub_1CEFA8820();
        sub_1CEF5BA2C(&qword_1EC4A9C08, type metadata accessor for TrustedCloudComputeError.RateLimitInfo, &protocol conformance descriptor for TrustedCloudComputeError.RateLimitInfo);
        v30 = v68;
        sub_1CEFA88D0();
        (*(v67 + 8))(v16, v30);
        sub_1CEF5DA48(v19, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
        return (*(v99 + 8))(v29, v28);
      }

      v38 = v70;
      sub_1CEF6AB6C(v22, v70, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
      LOBYTE(v100) = 1;
      sub_1CEF6CBB8();
      v54 = v71;
      v41 = v97;
      v40 = v98;
      sub_1CEFA8820();
      sub_1CEF5BA2C(&qword_1EC4A9BF8, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo, &protocol conformance descriptor for TrustedCloudComputeError.AvailabilityInfo);
      v55 = v73;
      sub_1CEFA88D0();
      (*(v72 + 8))(v54, v55);
      v43 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo;
      goto LABEL_13;
    }

    if (EnumCaseMultiPayload == 2)
    {
      v38 = v75;
      sub_1CEF6AB6C(v22, v75, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      LOBYTE(v100) = 2;
      sub_1CEF6CB64();
      v39 = v76;
      v41 = v97;
      v40 = v98;
      sub_1CEFA8820();
      sub_1CEF5BA2C(&qword_1EC4A9BE8, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo, &protocol conformance descriptor for TrustedCloudComputeError.TimeoutErrorInfo);
      v42 = v78;
      sub_1CEFA88D0();
      (*(v77 + 8))(v39, v42);
      v43 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo;
LABEL_13:
      sub_1CEF5DA48(v38, v43);
      return (*(v99 + 8))(v41, v40);
    }

    v60 = *v22;
    LOBYTE(v100) = 3;
    sub_1CEF6CABC();
    v34 = v79;
    v32 = v97;
    v35 = v98;
    sub_1CEFA8820();
    LOBYTE(v100) = v60;
    sub_1CEF6CB10();
    v36 = v81;
    sub_1CEFA88D0();
    v37 = &v105;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload > 5)
  {
    v44 = v97;
    if (EnumCaseMultiPayload == 6)
    {
      v46 = *v22;
      v45 = *(v22 + 1);
      v47 = v22[16];
      v49 = *(v22 + 3);
      v48 = *(v22 + 4);
      LOBYTE(v100) = 6;
      sub_1CEF6C918();
      v50 = v90;
      v51 = v98;
      sub_1CEFA8820();
      v100 = v46;
      v101 = v45;
      LOBYTE(v102) = v47;
      v103 = v49;
      v104 = v48;
      sub_1CEF6C96C();
      v52 = v92;
      sub_1CEFA88D0();
      v53 = v91;
    }

    else
    {
      v62 = *v22;
      v61 = *(v22 + 1);
      v63 = *(v22 + 2);
      v64 = *(v22 + 3);
      v65 = *(v22 + 4);
      LOBYTE(v100) = 7;
      sub_1CEF6C870();
      v50 = v93;
      v51 = v98;
      sub_1CEFA8820();
      v100 = v62;
      v101 = v61;
      v102 = v63;
      v103 = v64;
      v104 = v65;
      sub_1CEF6C8C4();
      v52 = v95;
      sub_1CEFA88D0();
      v53 = v94;
    }

    (*(v53 + 8))(v50, v52);
    (*(v99 + 8))(v44, v51);
  }

  else
  {
    v32 = v97;
    if (EnumCaseMultiPayload == 4)
    {
      v33 = *v22;
      LOBYTE(v100) = 4;
      sub_1CEF6CA14();
      v34 = v82;
      v35 = v98;
      sub_1CEFA8820();
      LOBYTE(v100) = v33;
      sub_1CEF6CA68();
      v36 = v84;
      sub_1CEFA88D0();
      v37 = &v106;
LABEL_17:
      (*(*(v37 - 32) + 8))(v34, v36);
      return (*(v99 + 8))(v32, v35);
    }

    v56 = v86;
    sub_1CEF6AB6C(v22, v86, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
    LOBYTE(v100) = 5;
    sub_1CEF6C9C0();
    v57 = v87;
    v58 = v98;
    sub_1CEFA8820();
    sub_1CEF5BA2C(&qword_1EC4A9BB8, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo, &protocol conformance descriptor for TrustedCloudComputeError.ServerErrorInfo);
    v59 = v89;
    sub_1CEFA88D0();
    (*(v88 + 8))(v57, v59);
    sub_1CEF5DA48(v56, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
    return (*(v99 + 8))(v32, v58);
  }
}

unint64_t sub_1CEF6C81C()
{
  result = qword_1EC4A9B88;
  if (!qword_1EC4A9B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B88);
  }

  return result;
}

unint64_t sub_1CEF6C870()
{
  result = qword_1EC4A9B90;
  if (!qword_1EC4A9B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B90);
  }

  return result;
}

unint64_t sub_1CEF6C8C4()
{
  result = qword_1EC4A9B98;
  if (!qword_1EC4A9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9B98);
  }

  return result;
}

unint64_t sub_1CEF6C918()
{
  result = qword_1EC4A9BA0;
  if (!qword_1EC4A9BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BA0);
  }

  return result;
}

unint64_t sub_1CEF6C96C()
{
  result = qword_1EC4A9BA8;
  if (!qword_1EC4A9BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BA8);
  }

  return result;
}

unint64_t sub_1CEF6C9C0()
{
  result = qword_1EC4A9BB0;
  if (!qword_1EC4A9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BB0);
  }

  return result;
}

unint64_t sub_1CEF6CA14()
{
  result = qword_1EC4A9BC0;
  if (!qword_1EC4A9BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BC0);
  }

  return result;
}

unint64_t sub_1CEF6CA68()
{
  result = qword_1EC4A9BC8;
  if (!qword_1EC4A9BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BC8);
  }

  return result;
}

unint64_t sub_1CEF6CABC()
{
  result = qword_1EC4A9BD0;
  if (!qword_1EC4A9BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BD0);
  }

  return result;
}

unint64_t sub_1CEF6CB10()
{
  result = qword_1EC4A9BD8;
  if (!qword_1EC4A9BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BD8);
  }

  return result;
}

unint64_t sub_1CEF6CB64()
{
  result = qword_1EC4A9BE0;
  if (!qword_1EC4A9BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BE0);
  }

  return result;
}

unint64_t sub_1CEF6CBB8()
{
  result = qword_1EC4A9BF0;
  if (!qword_1EC4A9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9BF0);
  }

  return result;
}

unint64_t sub_1CEF6CC0C()
{
  result = qword_1EC4A9C00;
  if (!qword_1EC4A9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9C00);
  }

  return result;
}

uint64_t TrustedCloudComputeError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v124 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C10, &qword_1CEFAC4F8);
  v112 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v122 = &v87 - v3;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C18, &qword_1CEFAC500);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v121 = &v87 - v4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C20, &qword_1CEFAC508);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v116 = &v87 - v5;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C28, &qword_1CEFAC510);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v115 = &v87 - v6;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C30, &qword_1CEFAC518);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v114 = &v87 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C38, &qword_1CEFAC520);
  v102 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v120 = &v87 - v8;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C40, &qword_1CEFAC528);
  v100 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v119 = &v87 - v9;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C48, &qword_1CEFAC530);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v113 = &v87 - v10;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9C50, &qword_1CEFAC538);
  v123 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v12 = &v87 - v11;
  v117 = type metadata accessor for TrustedCloudComputeError(0);
  v13 = MEMORY[0x1EEE9AC00](v117);
  v95 = (&v87 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v94 = (&v87 - v16);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v96 = &v87 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v93 = &v87 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v87 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v87 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v87 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v87 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v87 - v33;
  v35 = a1[3];
  v134 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v35);
  sub_1CEF6C81C();
  v125 = v12;
  v36 = v126;
  sub_1CEFA8A50();
  if (!v36)
  {
    v89 = v32;
    v90 = v29;
    v88 = v23;
    v91 = v26;
    v37 = v119;
    v38 = v120;
    v126 = 0;
    v39 = v121;
    v40 = v122;
    v92 = v34;
    v42 = v124;
    v41 = v125;
    v43 = v118;
    v44 = sub_1CEFA8800();
    v45 = (2 * *(v44 + 16)) | 1;
    v130 = v44;
    v131 = v44 + 32;
    v132 = 0;
    v133 = v45;
    v46 = sub_1CEF3F580();
    if (v46 == 8 || v132 != v133 >> 1)
    {
      v54 = v41;
      v55 = sub_1CEFA8680();
      swift_allocError();
      v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8FD8, &qword_1CEFB1B20);
      *v57 = v117;
      sub_1CEFA8720();
      sub_1CEFA8670();
      (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
      swift_willThrow();
      (*(v123 + 8))(v54, v43);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v134);
    }

    if (v46 <= 3u)
    {
      v47 = v126;
      if (v46 <= 1u)
      {
        if (!v46)
        {
          LOBYTE(v127) = 0;
          sub_1CEF6CC0C();
          v48 = v113;
          v49 = v41;
          sub_1CEFA8710();
          v50 = v123;
          if (!v47)
          {
            type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
            sub_1CEF5BA2C(&qword_1EC4A9C90, type metadata accessor for TrustedCloudComputeError.RateLimitInfo, &protocol conformance descriptor for TrustedCloudComputeError.RateLimitInfo);
            v51 = v89;
            v52 = v98;
            sub_1CEFA87D0();
            (*(v97 + 8))(v48, v52);
            (*(v50 + 8))(v41, v43);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v53 = v92;
            sub_1CEF6AB6C(v51, v92, type metadata accessor for TrustedCloudComputeError);
            v42 = v124;
LABEL_38:
            sub_1CEF6AB6C(v53, v42, type metadata accessor for TrustedCloudComputeError);
            return __swift_destroy_boxed_opaque_existential_0(v134);
          }

          goto LABEL_24;
        }

        LOBYTE(v127) = 1;
        sub_1CEF6CBB8();
        v69 = v37;
        v49 = v41;
        sub_1CEFA8710();
        v50 = v123;
        if (v47)
        {
LABEL_24:
          (*(v50 + 8))(v49, v43);
          goto LABEL_10;
        }

        type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        sub_1CEF5BA2C(&qword_1EC4A9C88, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo, &protocol conformance descriptor for TrustedCloudComputeError.AvailabilityInfo);
        v73 = v90;
        v81 = v101;
        sub_1CEFA87D0();
        (*(v100 + 8))(v69, v81);
        (*(v50 + 8))(v125, v43);
        swift_unknownObjectRelease();
        goto LABEL_36;
      }

      if (v46 == 2)
      {
        LOBYTE(v127) = 2;
        sub_1CEF6CB64();
        v65 = v41;
        sub_1CEFA8710();
        if (v47)
        {
LABEL_18:
          (*(v123 + 8))(v41, v43);
          goto LABEL_10;
        }

        type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
        sub_1CEF5BA2C(&qword_1EC4A9C80, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo, &protocol conformance descriptor for TrustedCloudComputeError.TimeoutErrorInfo);
        v73 = v91;
        v79 = v99;
        sub_1CEFA87D0();
        v80 = v123;
        (*(v102 + 8))(v38, v79);
        (*(v80 + 8))(v65, v43);
        swift_unknownObjectRelease();
LABEL_36:
        swift_storeEnumTagMultiPayload();
        v86 = v73;
        goto LABEL_37;
      }

      LOBYTE(v127) = 3;
      sub_1CEF6CABC();
      v75 = v114;
      sub_1CEFA8710();
      if (v47)
      {
        goto LABEL_18;
      }

      sub_1CEF6DF60();
      v76 = v104;
      sub_1CEFA87D0();
      (*(v103 + 8))(v75, v76);
      (*(v123 + 8))(v41, v43);
      swift_unknownObjectRelease();
      v64 = v88;
      *v88 = v127;
LABEL_35:
      swift_storeEnumTagMultiPayload();
      v86 = v64;
LABEL_37:
      v53 = v92;
      sub_1CEF6AB6C(v86, v92, type metadata accessor for TrustedCloudComputeError);
      goto LABEL_38;
    }

    v59 = v123;
    if (v46 > 5u)
    {
      if (v46 == 6)
      {
        LOBYTE(v127) = 6;
        sub_1CEF6C918();
        v66 = v39;
        v61 = v41;
        v67 = v126;
        sub_1CEFA8710();
        if (!v67)
        {
          sub_1CEF6DEB8();
          v68 = v111;
          sub_1CEFA87D0();
          (*(v110 + 8))(v66, v68);
          (*(v59 + 8))(v41, v43);
          swift_unknownObjectRelease();
          v82 = v128;
          v83 = v129[0];
          v64 = v94;
          *v94 = v127;
          *(v64 + 1) = v82;
          v64[16] = v83;
          *(v64 + 24) = *&v129[8];
          goto LABEL_35;
        }

        goto LABEL_22;
      }

      LOBYTE(v127) = 7;
      sub_1CEF6C870();
      v71 = v41;
      v77 = v126;
      sub_1CEFA8710();
      if (!v77)
      {
        sub_1CEF6DE64();
        v78 = v107;
        sub_1CEFA87D0();
        (*(v112 + 8))(v40, v78);
        (*(v59 + 8))(v41, v43);
        swift_unknownObjectRelease();
        v84 = v128;
        v85 = *&v129[16];
        v64 = v95;
        *v95 = v127;
        *(v64 + 1) = v84;
        *(v64 + 1) = *v129;
        *(v64 + 4) = v85;
        goto LABEL_35;
      }
    }

    else
    {
      if (v46 == 4)
      {
        LOBYTE(v127) = 4;
        sub_1CEF6CA14();
        v60 = v115;
        v61 = v41;
        v62 = v126;
        sub_1CEFA8710();
        if (!v62)
        {
          sub_1CEF6DF0C();
          v63 = v106;
          sub_1CEFA87D0();
          (*(v105 + 8))(v60, v63);
          (*(v59 + 8))(v41, v43);
          swift_unknownObjectRelease();
          v64 = v93;
          *v93 = v127;
          goto LABEL_35;
        }

LABEL_22:
        (*(v59 + 8))(v61, v43);
        goto LABEL_10;
      }

      LOBYTE(v127) = 5;
      sub_1CEF6C9C0();
      v70 = v116;
      v71 = v41;
      v72 = v126;
      sub_1CEFA8710();
      if (!v72)
      {
        type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
        sub_1CEF5BA2C(&qword_1EC4A9C68, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo, &protocol conformance descriptor for TrustedCloudComputeError.ServerErrorInfo);
        v73 = v96;
        v74 = v109;
        sub_1CEFA87D0();
        (*(v108 + 8))(v70, v74);
        (*(v59 + 8))(v125, v43);
        swift_unknownObjectRelease();
        goto LABEL_36;
      }
    }

    (*(v59 + 8))(v71, v43);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v134);
}

unint64_t sub_1CEF6DE64()
{
  result = qword_1EC4A9C58;
  if (!qword_1EC4A9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9C58);
  }

  return result;
}

unint64_t sub_1CEF6DEB8()
{
  result = qword_1EC4A9C60;
  if (!qword_1EC4A9C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9C60);
  }

  return result;
}

unint64_t sub_1CEF6DF0C()
{
  result = qword_1EC4A9C70;
  if (!qword_1EC4A9C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9C70);
  }

  return result;
}

unint64_t sub_1CEF6DF60()
{
  result = qword_1EC4A9C78;
  if (!qword_1EC4A9C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9C78);
  }

  return result;
}

uint64_t sub_1CEF6DFB4(uint64_t a1)
{
  v2 = sub_1CEF5BA2C(&qword_1EC4A9CC0, type metadata accessor for TrustedCloudComputeError, &protocol conformance descriptor for TrustedCloudComputeError);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1CEF6E020(uint64_t a1)
{
  v2 = sub_1CEF5BA2C(&qword_1EC4A9CC0, type metadata accessor for TrustedCloudComputeError, &protocol conformance descriptor for TrustedCloudComputeError);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1CEF6E0C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9320, &qword_1CEFAB3A8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1CEFAA480;
  sub_1CEF69778((v0 + 32));
  return v0;
}

void sub_1CEF6E128()
{
  sub_1CEF5BA2C(&qword_1EC4AA228, type metadata accessor for TrustedCloudComputeError, &protocol conformance descriptor for TrustedCloudComputeError);

  JUMPOUT(0x1D3866390);
}

void sub_1CEF6E198()
{
  sub_1CEF5BA2C(&qword_1EC4AA228, type metadata accessor for TrustedCloudComputeError, &protocol conformance descriptor for TrustedCloudComputeError);

  JUMPOUT(0x1D38663C0);
}

uint64_t TrustedCloudComputeError.init(file:line:)@<X0>(uint64_t a4@<X8>)
{
  sub_1CEFA8650();

  v5 = sub_1CEFA8660();
  MEMORY[0x1D38665A0](v5);

  MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
  v6 = sub_1CEFA8910();
  MEMORY[0x1D38665A0](v6);

  *a4 = 0xD000000000000014;
  *(a4 + 8) = 0x80000001CEFB5430;
  *(a4 + 16) = 34;
  type metadata accessor for TrustedCloudComputeError(0);
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t TrustedCloudComputeError.init(file:line:message:)@<X0>(uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  sub_1CEFA8650();

  MEMORY[0x1D38665A0](0x3D656C696620, 0xE600000000000000);
  v9 = sub_1CEFA8660();
  MEMORY[0x1D38665A0](v9);

  MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
  v10 = sub_1CEFA8910();
  MEMORY[0x1D38665A0](v10);

  *a6 = a4;
  *(a6 + 8) = a5;
  *(a6 + 16) = 34;
  type metadata accessor for TrustedCloudComputeError(0);
  *(a6 + 24) = 0;
  *(a6 + 32) = 0;
  return swift_storeEnumTagMultiPayload();
}

uint64_t static TrustedCloudComputeError.xpcConnectionInterrupted.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000016;
  *(a1 + 8) = 0x80000001CEFB5450;
  *(a1 + 16) = 0;
  type metadata accessor for TrustedCloudComputeError(0);
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;

  return swift_storeEnumTagMultiPayload();
}

uint64_t TrustedCloudComputeError.init(responseMetadata:)@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v111 = a2;
  v110 = type metadata accessor for RopesResponseMetadata(0);
  MEMORY[0x1EEE9AC00](v110);
  v4 = &v108 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v108 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CEFA8030();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v108 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v108 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v108 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v108 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v108 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v108 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v108 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v108 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v44 = a1;
  v45 = &v108 - v40;
  v46 = *(v44 + 16);
  if (v46 == 255 || (v46 & 1) != 0)
  {
LABEL_3:
    v47 = v44;
    sub_1CEF5D9E0(v44, v4, type metadata accessor for RopesResponseMetadata);
    TrustedCloudComputeError.ServerErrorInfo.init(responseMetadata:)(v4, v111);
    sub_1CEF5DA48(v47, type metadata accessor for RopesResponseMetadata);
    type metadata accessor for TrustedCloudComputeError(0);
  }

  else
  {
    switch(*(v44 + 8))
    {
      case 2u:
        sub_1CEF5DA48(v44, type metadata accessor for RopesResponseMetadata);
        *v111 = 0;
        type metadata accessor for TrustedCloudComputeError(0);
        goto LABEL_36;
      case 0x11u:
        v57 = v36;
        v58 = v41;
        v64 = v44;
        v60 = v39;
        if (*(v44 + 64))
        {
          (*(v41 + 16))(v39, v44 + *(v110 + 60), v36);
        }

        else
        {
          sub_1CEFA7FF0();
        }

        v92 = v111;
        sub_1CEF5DA48(v64, type metadata accessor for RopesResponseMetadata);
        *v92 = 0;
        goto LABEL_73;
      case 0x12u:
        v57 = v36;
        v58 = v41;
        v73 = v44;
        v60 = v38;
        if (*(v44 + 64))
        {
          (*(v41 + 16))(v38, v44 + *(v110 + 60), v36);
        }

        else
        {
          sub_1CEFA7FF0();
        }

        v92 = v111;
        sub_1CEF5DA48(v73, type metadata accessor for RopesResponseMetadata);
        v93 = 1;
        goto LABEL_72;
      case 0x13u:
        v57 = v36;
        if (*(v44 + 64))
        {
          v60 = v37;
          v58 = v41;
          v72 = v44;
          (*(v41 + 16))(v37, v44 + *(v110 + 60), v36);
        }

        else
        {
          v58 = v41;
          v72 = v44;
          v60 = v37;
          sub_1CEFA7FF0();
        }

        v92 = v111;
        sub_1CEF5DA48(v72, type metadata accessor for RopesResponseMetadata);
        v93 = 2;
        goto LABEL_72;
      case 0x14u:
        v57 = v36;
        v58 = v41;
        v59 = v44;
        v60 = v43;
        if (*(v44 + 64))
        {
          (*(v41 + 16))(v43, v44 + *(v110 + 60), v36);
        }

        else
        {
          sub_1CEFA7FF0();
        }

        v92 = v111;
        sub_1CEF5DA48(v59, type metadata accessor for RopesResponseMetadata);
        v93 = 3;
        goto LABEL_72;
      case 0x15u:
        v65 = v36;
        if (*(v44 + 64))
        {
          v66 = v41;
          v67 = v44;
          (*(v41 + 16))(&v108 - v40, v44 + *(v110 + 60), v36);
          v68 = 0;
        }

        else
        {
          v68 = *(v44 + 56);
          v66 = v41;
          v67 = v44;
          sub_1CEFA7FF0();
        }

        v96 = v111;
        v98 = v108;
        v97 = v109;
        *(v109 + 1) = 0u;
        *(v97 + 32) = 0u;
        *v97 = 0u;
        sub_1CEF5DA48(v67, type metadata accessor for RopesResponseMetadata);
        *(v97 + 48) = MEMORY[0x1E69E7CC0];
        *(v97 + 56) = 0;
        *(v97 + 64) = v68;
        (*(v66 + 32))(v97 + *(v98 + 40), v45, v65);
        sub_1CEF6AB6C(v97, v96, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
        type metadata accessor for TrustedCloudComputeError(0);
        return swift_storeEnumTagMultiPayload();
      case 0x16u:
        sub_1CEF5DA48(v44, type metadata accessor for RopesResponseMetadata);
        *v111 = 0;
        goto LABEL_35;
      case 0x17u:
        sub_1CEF5DA48(v44, type metadata accessor for RopesResponseMetadata);
        v74 = 1;
        goto LABEL_34;
      case 0x18u:
        sub_1CEF5DA48(v44, type metadata accessor for RopesResponseMetadata);
        v74 = 2;
        goto LABEL_34;
      case 0x19u:
        sub_1CEF5DA48(v44, type metadata accessor for RopesResponseMetadata);
        v74 = 3;
LABEL_34:
        *v111 = v74;
LABEL_35:
        type metadata accessor for TrustedCloudComputeError(0);
LABEL_36:

        return swift_storeEnumTagMultiPayload();
      case 0x1Au:
        v54 = v36;
        v55 = v41;
        v56 = v44;
        if (*(v44 + 64))
        {
          (*(v41 + 16))(v35, v44 + *(v110 + 60), v36);
        }

        else
        {
          sub_1CEFA7FF0();
        }

        sub_1CEF5DA48(v56, type metadata accessor for RopesResponseMetadata);
        v90 = v111;
        *v111 = 0;
        v91 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v55 + 32))(&v90[*(v91 + 20)], v35, v54);
        goto LABEL_69;
      case 0x1Bu:
        v69 = v36;
        v70 = v41;
        v71 = v44;
        if (*(v44 + 64))
        {
          (*(v41 + 16))(v32, v44 + *(v110 + 60), v36);
        }

        else
        {
          sub_1CEFA7FF0();
        }

        v99 = v111;
        sub_1CEF5DA48(v71, type metadata accessor for RopesResponseMetadata);
        *v99 = 1;
        v100 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v70 + 32))(&v99[*(v100 + 20)], v32, v69);
        goto LABEL_69;
      case 0x1Cu:
        v61 = v36;
        v62 = v41;
        v63 = v44;
        if (*(v44 + 64))
        {
          (*(v41 + 16))(v29, v44 + *(v110 + 60), v36);
        }

        else
        {
          sub_1CEFA7FF0();
        }

        v94 = v111;
        sub_1CEF5DA48(v63, type metadata accessor for RopesResponseMetadata);
        *v94 = 2;
        v95 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v62 + 32))(&v94[*(v95 + 20)], v29, v61);
        goto LABEL_69;
      case 0x1Du:
        v51 = v36;
        v52 = v41;
        v53 = v44;
        if (*(v44 + 64))
        {
          (*(v41 + 16))(v23, v44 + *(v110 + 60), v36);
        }

        else
        {
          sub_1CEFA7FF0();
        }

        v88 = v111;
        sub_1CEF5DA48(v53, type metadata accessor for RopesResponseMetadata);
        *v88 = 4;
        v89 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v52 + 32))(&v88[*(v89 + 20)], v23, v51);
        goto LABEL_69;
      case 0x1Eu:
        v75 = v36;
        v76 = v41;
        v77 = v44;
        if (*(v44 + 64))
        {
          (*(v41 + 16))(v20, v44 + *(v110 + 60), v36);
        }

        else
        {
          sub_1CEFA7FF0();
        }

        v101 = v111;
        sub_1CEF5DA48(v77, type metadata accessor for RopesResponseMetadata);
        *v101 = 5;
        v102 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v76 + 32))(&v101[*(v102 + 20)], v20, v75);
        goto LABEL_69;
      case 0x1Fu:
        v78 = v36;
        v79 = v41;
        v80 = v44;
        if (*(v44 + 64))
        {
          (*(v41 + 16))(v17, v44 + *(v110 + 60), v36);
        }

        else
        {
          sub_1CEFA7FF0();
        }

        v103 = v111;
        sub_1CEF5DA48(v80, type metadata accessor for RopesResponseMetadata);
        *v103 = 6;
        v104 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v79 + 32))(&v103[*(v104 + 20)], v17, v78);
        goto LABEL_69;
      case 0x23u:
        v57 = v36;
        v58 = v41;
        v85 = v44;
        v60 = v42;
        if (*(v44 + 64))
        {
          (*(v41 + 16))(v42, v44 + *(v110 + 60), v36);
        }

        else
        {
          sub_1CEFA7FF0();
        }

        v92 = v111;
        sub_1CEF5DA48(v85, type metadata accessor for RopesResponseMetadata);
        v93 = 4;
LABEL_72:
        *v92 = v93;
LABEL_73:
        v107 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
        (*(v58 + 32))(&v92[*(v107 + 20)], v60, v57);
        type metadata accessor for TrustedCloudComputeError(0);
        return swift_storeEnumTagMultiPayload();
      case 0x24u:
        v82 = v36;
        v83 = v41;
        v84 = v44;
        if (*(v44 + 64))
        {
          (*(v41 + 16))(v14, v44 + *(v110 + 60), v36);
        }

        else
        {
          sub_1CEFA7FF0();
        }

        sub_1CEF5DA48(v84, type metadata accessor for RopesResponseMetadata);
        v105 = v111;
        *v111 = 7;
        v106 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v83 + 32))(&v105[*(v106 + 20)], v14, v82);
        goto LABEL_69;
      case 0x29u:
        v48 = v36;
        v49 = v41;
        v50 = v44;
        if (*(v44 + 64))
        {
          (*(v41 + 16))(v26, v44 + *(v110 + 60), v36);
        }

        else
        {
          sub_1CEFA7FF0();
        }

        v86 = v111;
        sub_1CEF5DA48(v50, type metadata accessor for RopesResponseMetadata);
        *v86 = 3;
        v87 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
        (*(v49 + 32))(&v86[*(v87 + 20)], v26, v48);
LABEL_69:
        type metadata accessor for TrustedCloudComputeError(0);
        break;
      default:
        goto LABEL_3;
    }
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t TrustedCloudComputeError.retryable.getter()
{
  v1 = v0;
  v2 = type metadata accessor for TrustedCloudComputeError.ServerErrorInfo(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for TrustedCloudComputeError(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF5D9E0(v1, v7, type metadata accessor for TrustedCloudComputeError);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v10 = type metadata accessor for TrustedCloudComputeError.AvailabilityInfo;
      }

      else
      {
        v10 = type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo;
      }
    }

    else
    {
      v10 = type metadata accessor for TrustedCloudComputeError.RateLimitInfo;
    }

    sub_1CEF5DA48(v7, v10);
    return 1;
  }

  else if (EnumCaseMultiPayload > 5)
  {
    sub_1CEF5DA48(v7, type metadata accessor for TrustedCloudComputeError);
    return 0;
  }

  else if ((EnumCaseMultiPayload - 3) >= 2)
  {
    sub_1CEF6AB6C(v7, v4, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
    v11 = v4[*(v2 + 20)];
    sub_1CEF5DA48(v4, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
    return v11;
  }

  else
  {
    return 0;
  }
}

uint64_t TrustedCloudComputeError.description.getter()
{
  v0 = TrustedCloudComputeError.errorCaseString()();
  sub_1CEF69778(&v5._countAndFlagsBits);
  __swift_project_boxed_opaque_existential_1(&v5, v6);
  v1 = sub_1CEFA8910();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_0(&v5);
  v5 = v0;
  MEMORY[0x1D38665A0](8250, 0xE200000000000000);
  MEMORY[0x1D38665A0](v1, v3);

  return v5._countAndFlagsBits;
}

unint64_t TrustedCloudComputeError.RateLimitInfo.message.getter()
{
  if (!*(v0 + 56))
  {
    return 0xD00000000000003ALL;
  }

  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD000000000000017, 0x80000001CEFB5470);
  v1 = sub_1CEFA8910();
  MEMORY[0x1D38665A0](v1);

  MEMORY[0x1D38665A0](47, 0xE100000000000000);
  sub_1CEFA8510();
  MEMORY[0x1D38665A0](0xD00000000000001ALL, 0x80000001CEFB5490);
  return 0;
}

unint64_t TrustedCloudComputeError.AvailabilityInfo.message.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000018;
    v6 = 0xD00000000000001ALL;
    if (v1 != 6)
    {
      v5 = 0xD00000000000001ALL;
    }

    if (v1 != 4)
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x7562207365646F6ELL;
    if (v1 != 2)
    {
      v2 = 0xD000000000000018;
    }

    v3 = 0xD000000000000010;
    if (*v0)
    {
      v3 = 0xD000000000000012;
    }

    if (*v0 <= 1u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t TrustedCloudComputeError.TimeoutErrorInfo.message.getter()
{
  v1 = 0xD000000000000022;
  v2 = *v0;
  v3 = 0xD00000000000001CLL;
  v4 = 0xD000000000000015;
  if (v2 == 3)
  {
    v4 = 0xD000000000000022;
  }

  if (v2 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000020;
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

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.message.getter()
{
  if (*v0)
  {
    return 0x2064696C61766E69;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t TrustedCloudComputeError.UnauthorizedErrorInfo.message.getter()
{
  v1 = *v0;
  v2 = 0x726F687475616E75;
  if (v1 == 3)
  {
    v2 = 0xD000000000000014;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000013;
  }

  v3 = 0xD000000000000011;
  if (*v0)
  {
    v3 = 0xD000000000000021;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1CEF6F958()
{
  v0 = TrustedCloudComputeError.errorCaseString()();
  sub_1CEF69778(&v5._countAndFlagsBits);
  __swift_project_boxed_opaque_existential_1(&v5, v6);
  v1 = sub_1CEFA8910();
  v3 = v2;
  __swift_destroy_boxed_opaque_existential_0(&v5);
  v5 = v0;
  MEMORY[0x1D38665A0](8250, 0xE200000000000000);
  MEMORY[0x1D38665A0](v1, v3);

  return v5._countAndFlagsBits;
}

uint64_t TrustedCloudComputeError.RateLimitInfo.description.getter()
{
  v1 = sub_1CEFA7FD0();
  v80 = *(v1 - 8);
  v81 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v79 = &v65 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CEFA7FB0();
  v76 = *(v3 - 8);
  v77 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1CEFA7F90();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1CEFA7FA0();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v72 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CEFA80A0();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v69 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CEFA7FE0();
  v70 = *(v10 - 8);
  v71 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v67 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!v0[1])
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (!v0[3])
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v12 = *v0;
  strcpy(v84, "bundleID=");
  WORD1(v84[1]) = 0;
  HIDWORD(v84[1]) = -385875968;
  MEMORY[0x1D38665A0](v12);
  v13 = v84[0];
  v14 = v84[1];
  v15 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1CEF47FD8((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[16 * v17];
  *(v18 + 4) = v13;
  *(v18 + 5) = v14;
  if (v0[3])
  {
LABEL_7:
    v19 = v0[2];
    strcpy(v84, "featureID=");
    BYTE3(v84[1]) = 0;
    HIDWORD(v84[1]) = -369098752;
    MEMORY[0x1D38665A0](v19);
    v20 = v84[0];
    v21 = v84[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1CEF47FD8(0, *(v15 + 2) + 1, 1, v15);
    }

    v23 = *(v15 + 2);
    v22 = *(v15 + 3);
    if (v23 >= v22 >> 1)
    {
      v15 = sub_1CEF47FD8((v22 > 1), v23 + 1, 1, v15);
    }

    *(v15 + 2) = v23 + 1;
    v24 = &v15[16 * v23];
    *(v24 + 4) = v20;
    *(v24 + 5) = v21;
  }

LABEL_12:
  if (v0[5])
  {
    v25 = v0[4];
    strcpy(v84, "workloadType=");
    HIWORD(v84[1]) = -4864;
    MEMORY[0x1D38665A0](v25);
    v26 = v84[0];
    v27 = v84[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1CEF47FD8(0, *(v15 + 2) + 1, 1, v15);
    }

    v29 = *(v15 + 2);
    v28 = *(v15 + 3);
    if (v29 >= v28 >> 1)
    {
      v15 = sub_1CEF47FD8((v28 > 1), v29 + 1, 1, v15);
    }

    *(v15 + 2) = v29 + 1;
    v30 = &v15[16 * v29];
    *(v30 + 4) = v26;
    *(v30 + 5) = v27;
  }

  v82 = v0;
  v31 = v0[6];
  v32 = *(v31 + 16);
  if (v32)
  {
    v33 = (v31 + 56);
    do
    {
      v35 = *(v33 - 3);
      v34 = *(v33 - 2);
      v36 = *(v33 - 1);
      v37 = *v33;
      v84[0] = 0;
      v84[1] = 0xE000000000000000;

      sub_1CEFA8650();

      v84[0] = 0x64616F6C6B726F77;
      v84[1] = 0xEF283D6D61726150;
      MEMORY[0x1D38665A0](v35, v34);

      MEMORY[0x1D38665A0](44, 0xE100000000000000);
      MEMORY[0x1D38665A0](v36, v37);

      MEMORY[0x1D38665A0](41, 0xE100000000000000);
      v38 = v84[0];
      v39 = v84[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_1CEF47FD8(0, *(v15 + 2) + 1, 1, v15);
      }

      v41 = *(v15 + 2);
      v40 = *(v15 + 3);
      if (v41 >= v40 >> 1)
      {
        v15 = sub_1CEF47FD8((v40 > 1), v41 + 1, 1, v15);
      }

      *(v15 + 2) = v41 + 1;
      v42 = &v15[16 * v41];
      *(v42 + 4) = v38;
      *(v42 + 5) = v39;
      v33 += 4;
      --v32;
    }

    while (v32);
  }

  v84[0] = 0x3D746E756F63;
  v84[1] = 0xE600000000000000;
  v83 = v82[7];
  v43 = sub_1CEFA8910();
  MEMORY[0x1D38665A0](v43);

  v44 = v84[0];
  v45 = v84[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1CEF47FD8(0, *(v15 + 2) + 1, 1, v15);
  }

  v47 = *(v15 + 2);
  v46 = *(v15 + 3);
  if (v47 >= v46 >> 1)
  {
    v15 = sub_1CEF47FD8((v46 > 1), v47 + 1, 1, v15);
  }

  *(v15 + 2) = v47 + 1;
  v48 = &v15[16 * v47];
  *(v48 + 4) = v44;
  *(v48 + 5) = v45;
  v84[0] = 0;
  v84[1] = 0xE000000000000000;
  MEMORY[0x1D38665A0](0x6E6F697461727564, 0xE90000000000003DLL);
  sub_1CEFA8510();
  v49 = v84[0];
  v50 = v84[1];
  v52 = *(v15 + 2);
  v51 = *(v15 + 3);
  if (v52 >= v51 >> 1)
  {
    v15 = sub_1CEF47FD8((v51 > 1), v52 + 1, 1, v15);
  }

  *(v15 + 2) = v52 + 1;
  v53 = &v15[16 * v52];
  *(v53 + 4) = v49;
  *(v53 + 5) = v50;
  type metadata accessor for TrustedCloudComputeError.RateLimitInfo(0);
  sub_1CEFA8090();
  (*(v66 + 104))(v72, *MEMORY[0x1E6969360], v68);
  (*(v73 + 104))(v75, *MEMORY[0x1E6969358], v74);
  (*(v76 + 104))(v78, *MEMORY[0x1E6969370], v77);
  (*(v80 + 104))(v79, *MEMORY[0x1E6969380], v81);
  v54 = v67;
  sub_1CEFA7FC0();
  v55 = sub_1CEFA7F80();
  v57 = v56;
  (*(v70 + 8))(v54, v71);
  v84[0] = 0;
  v84[1] = 0xE000000000000000;
  sub_1CEFA8650();

  v84[0] = 0x7466417972746572;
  v84[1] = 0xEF3D657461447265;
  MEMORY[0x1D38665A0](v55, v57);

  v58 = v84[0];
  v59 = v84[1];
  v61 = *(v15 + 2);
  v60 = *(v15 + 3);
  if (v61 >= v60 >> 1)
  {
    v15 = sub_1CEF47FD8((v60 > 1), v61 + 1, 1, v15);
  }

  *(v15 + 2) = v61 + 1;
  v62 = &v15[16 * v61];
  *(v62 + 4) = v58;
  *(v62 + 5) = v59;
  v84[0] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v63 = sub_1CEFA82E0();

  return v63;
}

uint64_t TrustedCloudComputeError.AvailabilityInfo.description.getter()
{
  v1 = sub_1CEFA7FD0();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CEFA7FB0();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1CEFA7F90();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CEFA7FA0();
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CEFA80A0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v34 = sub_1CEFA7FE0();
  v11 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v0;
  v14 = *v0;
  if (v14 == 7)
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    MEMORY[0x1D38665A0](0x3D6E6F73616572, 0xE700000000000000);
    v43 = v14;
    sub_1CEFA86A0();
    v31 = v45;
    v32 = v44;
    v15 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1CEF47FD8((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[16 * v17];
    v19 = v31;
    *(v18 + 4) = v32;
    *(v18 + 5) = v19;
  }

  type metadata accessor for TrustedCloudComputeError.AvailabilityInfo(0);
  sub_1CEFA8090();
  (*(v7 + 104))(v9, *MEMORY[0x1E6969360], v33);
  (*(v4 + 104))(v6, *MEMORY[0x1E6969358], v35);
  (*(v36 + 104))(v37, *MEMORY[0x1E6969370], v38);
  (*(v40 + 104))(v39, *MEMORY[0x1E6969380], v41);
  sub_1CEFA7FC0();
  v20 = sub_1CEFA7F80();
  v22 = v21;
  (*(v11 + 8))(v13, v34);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1CEFA8650();

  v44 = 0x7466417972746572;
  v45 = 0xEF3D657461447265;
  MEMORY[0x1D38665A0](v20, v22);

  v23 = v44;
  v24 = v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1CEF47FD8(0, *(v15 + 2) + 1, 1, v15);
  }

  v26 = *(v15 + 2);
  v25 = *(v15 + 3);
  if (v26 >= v25 >> 1)
  {
    v15 = sub_1CEF47FD8((v25 > 1), v26 + 1, 1, v15);
  }

  *(v15 + 2) = v26 + 1;
  v27 = &v15[16 * v26];
  *(v27 + 4) = v23;
  *(v27 + 5) = v24;
  v44 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v28 = sub_1CEFA82E0();

  return v28;
}

uint64_t TrustedCloudComputeError.TimeoutErrorInfo.description.getter()
{
  v1 = sub_1CEFA7FD0();
  v40 = *(v1 - 8);
  v41 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v39 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_1CEFA7FB0();
  v36 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_1CEFA7F90();
  v4 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1CEFA7FA0();
  v7 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CEFA80A0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v34 = sub_1CEFA7FE0();
  v11 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v0;
  v14 = *v0;
  if (v14 == 4)
  {
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v44 = 0;
    v45 = 0xE000000000000000;
    MEMORY[0x1D38665A0](0x3D6E6F73616572, 0xE700000000000000);
    v43 = v14;
    sub_1CEFA86A0();
    v31 = v45;
    v32 = v44;
    v15 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v17 = *(v15 + 2);
    v16 = *(v15 + 3);
    if (v17 >= v16 >> 1)
    {
      v15 = sub_1CEF47FD8((v16 > 1), v17 + 1, 1, v15);
    }

    *(v15 + 2) = v17 + 1;
    v18 = &v15[16 * v17];
    v19 = v31;
    *(v18 + 4) = v32;
    *(v18 + 5) = v19;
  }

  type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo(0);
  sub_1CEFA8090();
  (*(v7 + 104))(v9, *MEMORY[0x1E6969360], v33);
  (*(v4 + 104))(v6, *MEMORY[0x1E6969358], v35);
  (*(v36 + 104))(v37, *MEMORY[0x1E6969370], v38);
  (*(v40 + 104))(v39, *MEMORY[0x1E6969380], v41);
  sub_1CEFA7FC0();
  v20 = sub_1CEFA7F80();
  v22 = v21;
  (*(v11 + 8))(v13, v34);
  v44 = 0;
  v45 = 0xE000000000000000;
  sub_1CEFA8650();

  v44 = 0x7466417972746572;
  v45 = 0xEF3D657461447265;
  MEMORY[0x1D38665A0](v20, v22);

  v23 = v44;
  v24 = v45;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1CEF47FD8(0, *(v15 + 2) + 1, 1, v15);
  }

  v26 = *(v15 + 2);
  v25 = *(v15 + 3);
  if (v26 >= v25 >> 1)
  {
    v15 = sub_1CEF47FD8((v25 > 1), v26 + 1, 1, v15);
  }

  *(v15 + 2) = v26 + 1;
  v27 = &v15[16 * v26];
  *(v27 + 4) = v23;
  *(v27 + 5) = v24;
  v44 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v28 = sub_1CEFA82E0();

  return v28;
}

uint64_t TrustedCloudComputeError.InvalidRequestErrorInfo.description.getter()
{
  if ((*v0 & 1) == 0)
  {
    MEMORY[0x1D38665A0](0x3D6E6F73616572, 0xE700000000000000);
    sub_1CEFA86A0();
    v1 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1CEF47FD8((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0;
    *(v4 + 5) = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v5 = sub_1CEFA82E0();

  return v5;
}

uint64_t TrustedCloudComputeError.UnauthorizedErrorInfo.description.getter()
{
  if (*v0 != 4)
  {
    MEMORY[0x1D38665A0](0x3D6E6F73616572, 0xE700000000000000);
    sub_1CEFA86A0();
    v1 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1CEF47FD8((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0;
    *(v4 + 5) = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v5 = sub_1CEFA82E0();

  return v5;
}

uint64_t TrustedCloudComputeError.ServerErrorInfo.description.getter()
{
  v1 = sub_1CEFA7FD0();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v98 = &v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1CEFA7FB0();
  v95 = *(v4 - 8);
  v96 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v97 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1CEFA7F90();
  v92 = *(v6 - 8);
  v93 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v94 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_1CEFA7FA0();
  v8 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v91 = &v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1CEFA80A0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v88 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CEFA7FE0();
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v85 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = sub_1CEFA8030();
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v15 = &v84 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *v0;
  if (v16 == 47)
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v101[0] = 0;
    v101[1] = 0xE000000000000000;
    sub_1CEFA8650();
    MEMORY[0x1D38665A0](0x65736E6F70736572, 0xEE003D65646F632DLL);
    LOBYTE(v100) = v16;
    sub_1CEFA86A0();
    v18 = v101[0];
    v19 = v101[1];
    v17 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v21 = *(v17 + 2);
    v20 = *(v17 + 3);
    if (v21 >= v20 >> 1)
    {
      v17 = sub_1CEF47FD8((v20 > 1), v21 + 1, 1, v17);
    }

    *(v17 + 2) = v21 + 1;
    v22 = &v17[16 * v21];
    *(v22 + 4) = v18;
    *(v22 + 5) = v19;
  }

  v23 = v0[1];
  if (v23 != 17)
  {
    v101[0] = 0;
    v101[1] = 0xE000000000000000;
    MEMORY[0x1D38665A0](0x3D737574617473, 0xE700000000000000);
    LOBYTE(v100) = v23;
    sub_1CEFA86A0();
    v24 = v101[0];
    v25 = v101[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1CEF47FD8(0, *(v17 + 2) + 1, 1, v17);
    }

    v27 = *(v17 + 2);
    v26 = *(v17 + 3);
    if (v27 >= v26 >> 1)
    {
      v17 = sub_1CEF47FD8((v26 > 1), v27 + 1, 1, v17);
    }

    *(v17 + 2) = v27 + 1;
    v28 = &v17[16 * v27];
    *(v28 + 4) = v24;
    *(v28 + 5) = v25;
  }

  v29 = v0[16];
  v99 = v1;
  if (v29 != 255)
  {
    if (v29)
    {
      goto LABEL_20;
    }

    v30 = *(v0 + 1);
    v101[0] = 0;
    v101[1] = 0xE000000000000000;
    MEMORY[0x1D38665A0](0x6F632D726F727265, 0xEB000000003D6564);
    LOBYTE(v100) = v30;
    sub_1CEFA86A0();
    v32 = v101[0];
    v31 = v101[1];
    v33 = v2;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1CEF47FD8(0, *(v17 + 2) + 1, 1, v17);
    }

    v35 = *(v17 + 2);
    v34 = *(v17 + 3);
    if (v35 >= v34 >> 1)
    {
      v17 = sub_1CEF47FD8((v34 > 1), v35 + 1, 1, v17);
    }

    *(v17 + 2) = v35 + 1;
    v36 = &v17[16 * v35];
    *(v36 + 4) = v32;
    *(v36 + 5) = v31;
    v37 = v0[16];
    v2 = v33;
    if (v37 != 255 && (v37 & 1) != 0)
    {
LABEL_20:
      v38 = *(v0 + 1);
      strcpy(v101, "error-code=");
      HIDWORD(v101[1]) = -352321536;
      v100 = v38;
      v39 = sub_1CEFA8910();
      MEMORY[0x1D38665A0](v39);

      v40 = v101[0];
      v41 = v101[1];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v17 = sub_1CEF47FD8(0, *(v17 + 2) + 1, 1, v17);
      }

      v43 = *(v17 + 2);
      v42 = *(v17 + 3);
      if (v43 >= v42 >> 1)
      {
        v17 = sub_1CEF47FD8((v42 > 1), v43 + 1, 1, v17);
      }

      *(v17 + 2) = v43 + 1;
      v44 = &v17[16 * v43];
      *(v44 + 4) = v40;
      *(v44 + 5) = v41;
    }
  }

  if (*(v0 + 4))
  {
    v45 = *(v0 + 3);
    strcpy(v101, "description=");
    BYTE5(v101[1]) = 0;
    HIWORD(v101[1]) = -5120;
    MEMORY[0x1D38665A0](v45);
    v46 = v101[0];
    v47 = v101[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1CEF47FD8(0, *(v17 + 2) + 1, 1, v17);
    }

    v49 = *(v17 + 2);
    v48 = *(v17 + 3);
    if (v49 >= v48 >> 1)
    {
      v17 = sub_1CEF47FD8((v48 > 1), v49 + 1, 1, v17);
    }

    *(v17 + 2) = v49 + 1;
    v50 = &v17[16 * v49];
    *(v50 + 4) = v46;
    *(v50 + 5) = v47;
  }

  if (*(v0 + 6))
  {
    v51 = *(v0 + 5);
    v101[0] = 0x3D6573756163;
    v101[1] = 0xE600000000000000;
    MEMORY[0x1D38665A0](v51);
    v52 = v101[0];
    v53 = v101[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1CEF47FD8(0, *(v17 + 2) + 1, 1, v17);
    }

    v55 = *(v17 + 2);
    v54 = *(v17 + 3);
    if (v55 >= v54 >> 1)
    {
      v17 = sub_1CEF47FD8((v54 > 1), v55 + 1, 1, v17);
    }

    *(v17 + 2) = v55 + 1;
    v56 = &v17[16 * v55];
    *(v56 + 4) = v52;
    *(v56 + 5) = v53;
  }

  v57 = v0[64];
  if (v57 != 1 || (v58 = v0[16], v58 != 255) && (v58 & 1) == 0 && (v66 = *(v0 + 1), v66 <= 0x2Cu) && ((1 << v66) & 0x1E181C260000) != 0 || (v59 = v0[1], v59 <= 0xE) && ((1 << v59) & 0x4110) != 0 || (v60 = *v0, v60 <= 0x2C) && ((1 << v60) & 0x108002000000) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1CEF47FD8(0, *(v17 + 2) + 1, 1, v17);
    }

    v67 = v8;
    v69 = *(v17 + 2);
    v68 = *(v17 + 3);
    v70 = v2;
    if (v69 >= v68 >> 1)
    {
      v17 = sub_1CEF47FD8((v68 > 1), v69 + 1, 1, v17);
    }

    *(v17 + 2) = v69 + 1;
    v71 = &v17[16 * v69];
    strcpy(v71 + 32, "retryable=yes");
    *(v71 + 23) = -4864;
    v72 = *(type metadata accessor for RopesResponseMetadata(0) + 60);
    if (v57)
    {
      v73 = v15;
      v74 = v84;
      v75 = v86;
      (*(v84 + 16))(v73, &v0[v72], v86);
    }

    else
    {
      sub_1CEFA7FF0();
      v75 = v86;
      v73 = v15;
      v74 = v84;
    }

    sub_1CEFA8090();
    (*(v67 + 104))(v91, *MEMORY[0x1E6969360], v87);
    (*(v92 + 104))(v94, *MEMORY[0x1E6969358], v93);
    (*(v95 + 104))(v97, *MEMORY[0x1E6969370], v96);
    (*(v70 + 104))(v98, *MEMORY[0x1E6969380], v99);
    v76 = v85;
    sub_1CEFA7FC0();
    v77 = sub_1CEFA7F80();
    v79 = v78;
    (*(v89 + 8))(v76, v90);
    (*(v74 + 8))(v73, v75);
    v101[0] = 0;
    v101[1] = 0xE000000000000000;
    sub_1CEFA8650();

    v101[0] = 0x7466417972746572;
    v101[1] = 0xEF3D657461447265;
    MEMORY[0x1D38665A0](v77, v79);

    v65 = v101[0];
    v61 = v101[1];
    v63 = *(v17 + 2);
    v80 = *(v17 + 3);
    v64 = v63 + 1;
    if (v63 >= v80 >> 1)
    {
      v17 = sub_1CEF47FD8((v80 > 1), v63 + 1, 1, v17);
    }
  }

  else
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1CEF47FD8(0, *(v17 + 2) + 1, 1, v17);
    }

    v61 = 0xEC0000006F6E3D65;
    v63 = *(v17 + 2);
    v62 = *(v17 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v17 = sub_1CEF47FD8((v62 > 1), v63 + 1, 1, v17);
    }

    v65 = 0x6C62617972746572;
  }

  *(v17 + 2) = v64;
  v81 = &v17[16 * v63];
  *(v81 + 4) = v65;
  *(v81 + 5) = v61;
  v101[0] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v82 = sub_1CEFA82E0();

  return v82;
}

uint64_t TrustedCloudComputeError.InternalErrorInfo.description.getter()
{
  if (*(v0 + 16) != 34)
  {
    MEMORY[0x1D38665A0](0x3D6E6F73616572, 0xE700000000000000);
    sub_1CEFA86A0();
    v1 = sub_1CEF47FD8(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_1CEF47FD8((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0;
    *(v4 + 5) = 0xE000000000000000;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
  sub_1CEF53230();
  v5 = sub_1CEFA82E0();

  return v5;
}

uint64_t TrustedCloudComputeError.NetworkErrorInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1CEFA8650();

  MEMORY[0x1D38665A0](v1, v2);
  MEMORY[0x1D38665A0](0x3D65646F6320, 0xE600000000000000);
  v3 = sub_1CEFA8910();
  MEMORY[0x1D38665A0](v3);

  return 0x3D6E69616D6F64;
}

unint64_t sub_1CEF71F08()
{
  result = qword_1EC4A9C98;
  if (!qword_1EC4A9C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9C98);
  }

  return result;
}

unint64_t sub_1CEF71F60()
{
  result = qword_1EC4A9CA0;
  if (!qword_1EC4A9CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CA0);
  }

  return result;
}

unint64_t sub_1CEF71FB8()
{
  result = qword_1EC4A9CA8;
  if (!qword_1EC4A9CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CA8);
  }

  return result;
}

unint64_t sub_1CEF72010()
{
  result = qword_1EC4A9CB0;
  if (!qword_1EC4A9CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CB0);
  }

  return result;
}

unint64_t sub_1CEF72068()
{
  result = qword_1EC4A9CB8;
  if (!qword_1EC4A9CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CB8);
  }

  return result;
}

void sub_1CEF72194(uint64_t a1)
{
  sub_1CEF722F0(319, &qword_1EDE38350, type metadata accessor for TrustedCloudComputeError.RateLimitInfo);
  if (v1 <= 0x3F)
  {
    sub_1CEF722F0(319, qword_1EDE382A0, type metadata accessor for TrustedCloudComputeError.AvailabilityInfo);
    if (v2 <= 0x3F)
    {
      sub_1CEF722F0(319, &qword_1EDE383F8, type metadata accessor for TrustedCloudComputeError.TimeoutErrorInfo);
      if (v3 <= 0x3F)
      {
        sub_1CEF7233C();
        if (v4 <= 0x3F)
        {
          sub_1CEF7236C();
          if (v5 <= 0x3F)
          {
            sub_1CEF722F0(319, &qword_1EDE384A0, type metadata accessor for TrustedCloudComputeError.ServerErrorInfo);
            if (v6 <= 0x3F)
            {
              sub_1CEF7239C();
              if (v7 <= 0x3F)
              {
                sub_1CEF723CC();
                if (v8 <= 0x3F)
                {
                  swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1CEF722F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_1CEF7233C()
{
  result = qword_1EDE384A8;
  if (!qword_1EDE384A8)
  {
    result = &type metadata for TrustedCloudComputeError.InvalidRequestErrorInfo;
    atomic_store(&type metadata for TrustedCloudComputeError.InvalidRequestErrorInfo, &qword_1EDE384A8);
  }

  return result;
}

ValueMetadata *sub_1CEF7236C()
{
  result = qword_1EDE384B0;
  if (!qword_1EDE384B0)
  {
    result = &type metadata for TrustedCloudComputeError.UnauthorizedErrorInfo;
    atomic_store(&type metadata for TrustedCloudComputeError.UnauthorizedErrorInfo, &qword_1EDE384B0);
  }

  return result;
}

ValueMetadata *sub_1CEF7239C()
{
  result = qword_1EDE38358[0];
  if (!qword_1EDE38358[0])
  {
    result = &type metadata for TrustedCloudComputeError.InternalErrorInfo;
    atomic_store(&type metadata for TrustedCloudComputeError.InternalErrorInfo, qword_1EDE38358);
  }

  return result;
}

ValueMetadata *sub_1CEF723CC()
{
  result = qword_1EDE38400[0];
  if (!qword_1EDE38400[0])
  {
    result = &type metadata for TrustedCloudComputeError.NetworkErrorInfo;
    atomic_store(&type metadata for TrustedCloudComputeError.NetworkErrorInfo, qword_1EDE38400);
  }

  return result;
}

void sub_1CEF72424(uint64_t a1)
{
  sub_1CEF72660(319, qword_1EDE385E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1CEF72660(319, &qword_1EDE38100, &type metadata for TrustedCloudComputeError.RateLimitInfo.WorkloadTag, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1CEFA8030();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1CEF725C0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t a5)
{
  sub_1CEF72660(319, a4, a5, MEMORY[0x1E69E6720]);
  if (v5 <= 0x3F)
  {
    sub_1CEFA8030();
    if (v6 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1CEF72660(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for TrustedCloudComputeError.InvalidRequestErrorInfo(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    if ((a2 + 255) >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 255) >> 8 < 0xFF)
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
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (*(a1 + 1))
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }

    else
    {
      v4 = a1[1];
      if (a1[1])
      {
        return (*a1 | (v4 << 8)) - 255;
      }
    }
  }

  return 0;
}

uint64_t storeEnumTagSinglePayload for TrustedCloudComputeError.InvalidRequestErrorInfo(uint64_t result, int a2, int a3)
{
  if ((a3 + 255) >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 255) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    v5 = ((a2 - 1) >> 8) + 1;
    *result = a2 - 1;
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
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *(result + 1) = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v4)
  {
    *(result + 1) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrustedCloudComputeError.UnauthorizedErrorInfo(unsigned __int8 *a1, unsigned int a2)
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
  if (v6 <= 4)
  {
    v7 = 4;
  }

  else
  {
    v7 = *a1;
  }

  v8 = v7 - 5;
  if (v6 < 4)
  {
    v9 = -1;
  }

  else
  {
    v9 = v8;
  }

  return (v9 + 1);
}

void sub_1CEF728CC(uint64_t a1)
{
  type metadata accessor for RopesResponseMetadata(319);
  if (v1 <= 0x3F)
  {
    sub_1CEF53598(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1CEF72A38(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1CEF72AC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CEF72F5C()
{
  result = qword_1EC4A9CE0;
  if (!qword_1EC4A9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CE0);
  }

  return result;
}

unint64_t sub_1CEF72FB4()
{
  result = qword_1EC4A9CE8;
  if (!qword_1EC4A9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CE8);
  }

  return result;
}

unint64_t sub_1CEF7300C()
{
  result = qword_1EC4A9CF0;
  if (!qword_1EC4A9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CF0);
  }

  return result;
}

unint64_t sub_1CEF73064()
{
  result = qword_1EC4A9CF8;
  if (!qword_1EC4A9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9CF8);
  }

  return result;
}

unint64_t sub_1CEF730BC()
{
  result = qword_1EC4A9D00;
  if (!qword_1EC4A9D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D00);
  }

  return result;
}

unint64_t sub_1CEF73114()
{
  result = qword_1EC4A9D08;
  if (!qword_1EC4A9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D08);
  }

  return result;
}

unint64_t sub_1CEF7316C()
{
  result = qword_1EC4A9D10;
  if (!qword_1EC4A9D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D10);
  }

  return result;
}

unint64_t sub_1CEF731C4()
{
  result = qword_1EC4A9D18;
  if (!qword_1EC4A9D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D18);
  }

  return result;
}

unint64_t sub_1CEF7321C()
{
  result = qword_1EC4A9D20;
  if (!qword_1EC4A9D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D20);
  }

  return result;
}

unint64_t sub_1CEF73274()
{
  result = qword_1EC4A9D28;
  if (!qword_1EC4A9D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D28);
  }

  return result;
}

unint64_t sub_1CEF732CC()
{
  result = qword_1EC4A9D30;
  if (!qword_1EC4A9D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D30);
  }

  return result;
}

unint64_t sub_1CEF73324()
{
  result = qword_1EC4A9D38;
  if (!qword_1EC4A9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D38);
  }

  return result;
}

unint64_t sub_1CEF7337C()
{
  result = qword_1EC4A9D40;
  if (!qword_1EC4A9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D40);
  }

  return result;
}

unint64_t sub_1CEF733D4()
{
  result = qword_1EC4A9D48;
  if (!qword_1EC4A9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D48);
  }

  return result;
}

unint64_t sub_1CEF7342C()
{
  result = qword_1EC4A9D50;
  if (!qword_1EC4A9D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D50);
  }

  return result;
}

unint64_t sub_1CEF73484()
{
  result = qword_1EC4A9D58;
  if (!qword_1EC4A9D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D58);
  }

  return result;
}

unint64_t sub_1CEF734DC()
{
  result = qword_1EC4A9D60;
  if (!qword_1EC4A9D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D60);
  }

  return result;
}

unint64_t sub_1CEF73534()
{
  result = qword_1EC4A9D68;
  if (!qword_1EC4A9D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D68);
  }

  return result;
}

unint64_t sub_1CEF7358C()
{
  result = qword_1EC4A9D70;
  if (!qword_1EC4A9D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D70);
  }

  return result;
}

unint64_t sub_1CEF735E4()
{
  result = qword_1EC4A9D78;
  if (!qword_1EC4A9D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D78);
  }

  return result;
}

unint64_t sub_1CEF7363C()
{
  result = qword_1EC4A9D80;
  if (!qword_1EC4A9D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D80);
  }

  return result;
}

unint64_t sub_1CEF73694()
{
  result = qword_1EC4A9D88;
  if (!qword_1EC4A9D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D88);
  }

  return result;
}

unint64_t sub_1CEF736EC()
{
  result = qword_1EC4A9D90;
  if (!qword_1EC4A9D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D90);
  }

  return result;
}

unint64_t sub_1CEF73744()
{
  result = qword_1EC4A9D98;
  if (!qword_1EC4A9D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9D98);
  }

  return result;
}

unint64_t sub_1CEF7379C()
{
  result = qword_1EC4A9DA0;
  if (!qword_1EC4A9DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DA0);
  }

  return result;
}

unint64_t sub_1CEF737F4()
{
  result = qword_1EC4A9DA8;
  if (!qword_1EC4A9DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DA8);
  }

  return result;
}

unint64_t sub_1CEF7384C()
{
  result = qword_1EC4A9DB0;
  if (!qword_1EC4A9DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DB0);
  }

  return result;
}

unint64_t sub_1CEF738A4()
{
  result = qword_1EC4A9DB8;
  if (!qword_1EC4A9DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DB8);
  }

  return result;
}

unint64_t sub_1CEF738FC()
{
  result = qword_1EC4A9DC0;
  if (!qword_1EC4A9DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DC0);
  }

  return result;
}

unint64_t sub_1CEF73954()
{
  result = qword_1EC4A9DC8;
  if (!qword_1EC4A9DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DC8);
  }

  return result;
}

unint64_t sub_1CEF739AC()
{
  result = qword_1EC4A9DD0;
  if (!qword_1EC4A9DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DD0);
  }

  return result;
}

unint64_t sub_1CEF73A04()
{
  result = qword_1EC4A9DD8;
  if (!qword_1EC4A9DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DD8);
  }

  return result;
}

unint64_t sub_1CEF73A5C()
{
  result = qword_1EC4A9DE0;
  if (!qword_1EC4A9DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DE0);
  }

  return result;
}

unint64_t sub_1CEF73AB4()
{
  result = qword_1EC4A9DE8;
  if (!qword_1EC4A9DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DE8);
  }

  return result;
}

unint64_t sub_1CEF73B0C()
{
  result = qword_1EC4A9DF0;
  if (!qword_1EC4A9DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DF0);
  }

  return result;
}

unint64_t sub_1CEF73B64()
{
  result = qword_1EC4A9DF8;
  if (!qword_1EC4A9DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9DF8);
  }

  return result;
}

unint64_t sub_1CEF73BBC()
{
  result = qword_1EC4A9E00;
  if (!qword_1EC4A9E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E00);
  }

  return result;
}

unint64_t sub_1CEF73C14()
{
  result = qword_1EC4A9E08;
  if (!qword_1EC4A9E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E08);
  }

  return result;
}

unint64_t sub_1CEF73C6C()
{
  result = qword_1EC4A9E10;
  if (!qword_1EC4A9E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E10);
  }

  return result;
}

unint64_t sub_1CEF73CC4()
{
  result = qword_1EC4A9E18;
  if (!qword_1EC4A9E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E18);
  }

  return result;
}

unint64_t sub_1CEF73D1C()
{
  result = qword_1EC4A9E20;
  if (!qword_1EC4A9E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E20);
  }

  return result;
}

unint64_t sub_1CEF73D74()
{
  result = qword_1EC4A9E28;
  if (!qword_1EC4A9E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E28);
  }

  return result;
}

unint64_t sub_1CEF73DCC()
{
  result = qword_1EC4A9E30;
  if (!qword_1EC4A9E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E30);
  }

  return result;
}

unint64_t sub_1CEF73E24()
{
  result = qword_1EC4A9E38;
  if (!qword_1EC4A9E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E38);
  }

  return result;
}

unint64_t sub_1CEF73E7C()
{
  result = qword_1EC4A9E40;
  if (!qword_1EC4A9E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E40);
  }

  return result;
}

unint64_t sub_1CEF73ED4()
{
  result = qword_1EC4A9E48;
  if (!qword_1EC4A9E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E48);
  }

  return result;
}

unint64_t sub_1CEF73F2C()
{
  result = qword_1EC4A9E50;
  if (!qword_1EC4A9E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E50);
  }

  return result;
}

unint64_t sub_1CEF73F84()
{
  result = qword_1EC4A9E58;
  if (!qword_1EC4A9E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E58);
  }

  return result;
}

unint64_t sub_1CEF73FDC()
{
  result = qword_1EC4A9E60;
  if (!qword_1EC4A9E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E60);
  }

  return result;
}

unint64_t sub_1CEF74034()
{
  result = qword_1EC4A9E68;
  if (!qword_1EC4A9E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E68);
  }

  return result;
}

unint64_t sub_1CEF7408C()
{
  result = qword_1EC4A9E70;
  if (!qword_1EC4A9E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E70);
  }

  return result;
}

unint64_t sub_1CEF740E4()
{
  result = qword_1EC4A9E78;
  if (!qword_1EC4A9E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E78);
  }

  return result;
}

unint64_t sub_1CEF7413C()
{
  result = qword_1EC4A9E80;
  if (!qword_1EC4A9E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E80);
  }

  return result;
}

unint64_t sub_1CEF74194()
{
  result = qword_1EC4A9E88;
  if (!qword_1EC4A9E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E88);
  }

  return result;
}

unint64_t sub_1CEF741EC()
{
  result = qword_1EC4A9E90;
  if (!qword_1EC4A9E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E90);
  }

  return result;
}

unint64_t sub_1CEF74244()
{
  result = qword_1EC4A9E98;
  if (!qword_1EC4A9E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9E98);
  }

  return result;
}

unint64_t sub_1CEF7429C()
{
  result = qword_1EC4A9EA0;
  if (!qword_1EC4A9EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EA0);
  }

  return result;
}

unint64_t sub_1CEF742F4()
{
  result = qword_1EC4A9EA8;
  if (!qword_1EC4A9EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EA8);
  }

  return result;
}

unint64_t sub_1CEF7434C()
{
  result = qword_1EC4A9EB0;
  if (!qword_1EC4A9EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EB0);
  }

  return result;
}

unint64_t sub_1CEF743A4()
{
  result = qword_1EC4A9EB8;
  if (!qword_1EC4A9EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EB8);
  }

  return result;
}

unint64_t sub_1CEF743FC()
{
  result = qword_1EC4A9EC0;
  if (!qword_1EC4A9EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EC0);
  }

  return result;
}

unint64_t sub_1CEF74454()
{
  result = qword_1EC4A9EC8;
  if (!qword_1EC4A9EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EC8);
  }

  return result;
}

unint64_t sub_1CEF744AC()
{
  result = qword_1EC4A9ED0;
  if (!qword_1EC4A9ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9ED0);
  }

  return result;
}

unint64_t sub_1CEF74504()
{
  result = qword_1EC4A9ED8;
  if (!qword_1EC4A9ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9ED8);
  }

  return result;
}

unint64_t sub_1CEF7455C()
{
  result = qword_1EC4A9EE0;
  if (!qword_1EC4A9EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EE0);
  }

  return result;
}

unint64_t sub_1CEF745B4()
{
  result = qword_1EC4A9EE8;
  if (!qword_1EC4A9EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EE8);
  }

  return result;
}

unint64_t sub_1CEF7460C()
{
  result = qword_1EC4A9EF0;
  if (!qword_1EC4A9EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EF0);
  }

  return result;
}

unint64_t sub_1CEF74664()
{
  result = qword_1EC4A9EF8;
  if (!qword_1EC4A9EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9EF8);
  }

  return result;
}

unint64_t sub_1CEF746BC()
{
  result = qword_1EC4A9F00;
  if (!qword_1EC4A9F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F00);
  }

  return result;
}

unint64_t sub_1CEF74714()
{
  result = qword_1EC4A9F08;
  if (!qword_1EC4A9F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F08);
  }

  return result;
}

unint64_t sub_1CEF7476C()
{
  result = qword_1EC4A9F10;
  if (!qword_1EC4A9F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F10);
  }

  return result;
}

unint64_t sub_1CEF747C4()
{
  result = qword_1EC4A9F18;
  if (!qword_1EC4A9F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F18);
  }

  return result;
}

unint64_t sub_1CEF7481C()
{
  result = qword_1EC4A9F20;
  if (!qword_1EC4A9F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F20);
  }

  return result;
}

unint64_t sub_1CEF74874()
{
  result = qword_1EC4A9F28;
  if (!qword_1EC4A9F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F28);
  }

  return result;
}

unint64_t sub_1CEF748CC()
{
  result = qword_1EC4A9F30;
  if (!qword_1EC4A9F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F30);
  }

  return result;
}

unint64_t sub_1CEF74924()
{
  result = qword_1EC4A9F38;
  if (!qword_1EC4A9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F38);
  }

  return result;
}

unint64_t sub_1CEF7497C()
{
  result = qword_1EC4A9F40;
  if (!qword_1EC4A9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F40);
  }

  return result;
}

unint64_t sub_1CEF749D4()
{
  result = qword_1EC4A9F48;
  if (!qword_1EC4A9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F48);
  }

  return result;
}

unint64_t sub_1CEF74A2C()
{
  result = qword_1EC4A9F50;
  if (!qword_1EC4A9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F50);
  }

  return result;
}

unint64_t sub_1CEF74A84()
{
  result = qword_1EC4A9F58;
  if (!qword_1EC4A9F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F58);
  }

  return result;
}

unint64_t sub_1CEF74ADC()
{
  result = qword_1EC4A9F60;
  if (!qword_1EC4A9F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F60);
  }

  return result;
}

unint64_t sub_1CEF74B34()
{
  result = qword_1EC4A9F68;
  if (!qword_1EC4A9F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F68);
  }

  return result;
}

unint64_t sub_1CEF74B8C()
{
  result = qword_1EC4A9F70;
  if (!qword_1EC4A9F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F70);
  }

  return result;
}

unint64_t sub_1CEF74BE4()
{
  result = qword_1EC4A9F78;
  if (!qword_1EC4A9F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F78);
  }

  return result;
}

unint64_t sub_1CEF74C3C()
{
  result = qword_1EC4A9F80;
  if (!qword_1EC4A9F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F80);
  }

  return result;
}

unint64_t sub_1CEF74C94()
{
  result = qword_1EC4A9F88;
  if (!qword_1EC4A9F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F88);
  }

  return result;
}

unint64_t sub_1CEF74CEC()
{
  result = qword_1EC4A9F90;
  if (!qword_1EC4A9F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F90);
  }

  return result;
}

unint64_t sub_1CEF74D44()
{
  result = qword_1EC4A9F98;
  if (!qword_1EC4A9F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9F98);
  }

  return result;
}

unint64_t sub_1CEF74D9C()
{
  result = qword_1EC4A9FA0;
  if (!qword_1EC4A9FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9FA0);
  }

  return result;
}

unint64_t sub_1CEF74DF4()
{
  result = qword_1EC4A9FA8;
  if (!qword_1EC4A9FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9FA8);
  }

  return result;
}

unint64_t sub_1CEF74E4C()
{
  result = qword_1EC4A9FB0;
  if (!qword_1EC4A9FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9FB0);
  }

  return result;
}

unint64_t sub_1CEF74EA4()
{
  result = qword_1EC4A9FB8;
  if (!qword_1EC4A9FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9FB8);
  }

  return result;
}

unint64_t sub_1CEF74EFC()
{
  result = qword_1EC4A9FC0;
  if (!qword_1EC4A9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9FC0);
  }

  return result;
}

unint64_t sub_1CEF74F54()
{
  result = qword_1EC4A9FC8;
  if (!qword_1EC4A9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9FC8);
  }

  return result;
}

unint64_t sub_1CEF74FAC()
{
  result = qword_1EC4A9FD0;
  if (!qword_1EC4A9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9FD0);
  }

  return result;
}

unint64_t sub_1CEF75004()
{
  result = qword_1EC4A9FD8;
  if (!qword_1EC4A9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9FD8);
  }

  return result;
}

unint64_t sub_1CEF7505C()
{
  result = qword_1EC4A9FE0;
  if (!qword_1EC4A9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9FE0);
  }

  return result;
}

unint64_t sub_1CEF750B4()
{
  result = qword_1EC4A9FE8;
  if (!qword_1EC4A9FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9FE8);
  }

  return result;
}

unint64_t sub_1CEF7510C()
{
  result = qword_1EC4A9FF0;
  if (!qword_1EC4A9FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9FF0);
  }

  return result;
}

unint64_t sub_1CEF75164()
{
  result = qword_1EC4A9FF8;
  if (!qword_1EC4A9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4A9FF8);
  }

  return result;
}

unint64_t sub_1CEF751BC()
{
  result = qword_1EC4AA000;
  if (!qword_1EC4AA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA000);
  }

  return result;
}

unint64_t sub_1CEF75214()
{
  result = qword_1EC4AA008;
  if (!qword_1EC4AA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA008);
  }

  return result;
}

unint64_t sub_1CEF7526C()
{
  result = qword_1EC4AA010;
  if (!qword_1EC4AA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA010);
  }

  return result;
}

unint64_t sub_1CEF752C4()
{
  result = qword_1EC4AA018;
  if (!qword_1EC4AA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA018);
  }

  return result;
}

unint64_t sub_1CEF7531C()
{
  result = qword_1EC4AA020;
  if (!qword_1EC4AA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA020);
  }

  return result;
}

unint64_t sub_1CEF75374()
{
  result = qword_1EC4AA028;
  if (!qword_1EC4AA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA028);
  }

  return result;
}

unint64_t sub_1CEF753CC()
{
  result = qword_1EC4AA030;
  if (!qword_1EC4AA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA030);
  }

  return result;
}

unint64_t sub_1CEF75424()
{
  result = qword_1EC4AA038;
  if (!qword_1EC4AA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA038);
  }

  return result;
}

unint64_t sub_1CEF7547C()
{
  result = qword_1EC4AA040;
  if (!qword_1EC4AA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA040);
  }

  return result;
}

unint64_t sub_1CEF754D4()
{
  result = qword_1EC4AA048;
  if (!qword_1EC4AA048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA048);
  }

  return result;
}

unint64_t sub_1CEF7552C()
{
  result = qword_1EC4AA050;
  if (!qword_1EC4AA050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA050);
  }

  return result;
}

unint64_t sub_1CEF75584()
{
  result = qword_1EC4AA058;
  if (!qword_1EC4AA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA058);
  }

  return result;
}

unint64_t sub_1CEF755DC()
{
  result = qword_1EC4AA060;
  if (!qword_1EC4AA060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA060);
  }

  return result;
}

unint64_t sub_1CEF75634()
{
  result = qword_1EC4AA068;
  if (!qword_1EC4AA068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA068);
  }

  return result;
}

unint64_t sub_1CEF7568C()
{
  result = qword_1EC4AA070;
  if (!qword_1EC4AA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA070);
  }

  return result;
}

unint64_t sub_1CEF756E4()
{
  result = qword_1EC4AA078;
  if (!qword_1EC4AA078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA078);
  }

  return result;
}

unint64_t sub_1CEF7573C()
{
  result = qword_1EC4AA080;
  if (!qword_1EC4AA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA080);
  }

  return result;
}

unint64_t sub_1CEF75794()
{
  result = qword_1EC4AA088;
  if (!qword_1EC4AA088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA088);
  }

  return result;
}

unint64_t sub_1CEF757EC()
{
  result = qword_1EC4AA090;
  if (!qword_1EC4AA090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA090);
  }

  return result;
}

unint64_t sub_1CEF75844()
{
  result = qword_1EC4AA098;
  if (!qword_1EC4AA098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA098);
  }

  return result;
}

unint64_t sub_1CEF7589C()
{
  result = qword_1EC4AA0A0;
  if (!qword_1EC4AA0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA0A0);
  }

  return result;
}

unint64_t sub_1CEF758F4()
{
  result = qword_1EC4AA0A8;
  if (!qword_1EC4AA0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA0A8);
  }

  return result;
}

unint64_t sub_1CEF7594C()
{
  result = qword_1EC4AA0B0;
  if (!qword_1EC4AA0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA0B0);
  }

  return result;
}

unint64_t sub_1CEF759A4()
{
  result = qword_1EC4AA0B8;
  if (!qword_1EC4AA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA0B8);
  }

  return result;
}

unint64_t sub_1CEF759FC()
{
  result = qword_1EC4AA0C0;
  if (!qword_1EC4AA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA0C0);
  }

  return result;
}

unint64_t sub_1CEF75A54()
{
  result = qword_1EC4AA0C8;
  if (!qword_1EC4AA0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA0C8);
  }

  return result;
}

unint64_t sub_1CEF75AAC()
{
  result = qword_1EC4AA0D0;
  if (!qword_1EC4AA0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA0D0);
  }

  return result;
}

unint64_t sub_1CEF75B04()
{
  result = qword_1EC4AA0D8;
  if (!qword_1EC4AA0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA0D8);
  }

  return result;
}

unint64_t sub_1CEF75B5C()
{
  result = qword_1EC4AA0E0;
  if (!qword_1EC4AA0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA0E0);
  }

  return result;
}

unint64_t sub_1CEF75BB4()
{
  result = qword_1EC4AA0E8;
  if (!qword_1EC4AA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA0E8);
  }

  return result;
}

unint64_t sub_1CEF75C0C()
{
  result = qword_1EC4AA0F0;
  if (!qword_1EC4AA0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA0F0);
  }

  return result;
}

unint64_t sub_1CEF75C64()
{
  result = qword_1EC4AA0F8;
  if (!qword_1EC4AA0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA0F8);
  }

  return result;
}

unint64_t sub_1CEF75CBC()
{
  result = qword_1EC4AA100;
  if (!qword_1EC4AA100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA100);
  }

  return result;
}

unint64_t sub_1CEF75D14()
{
  result = qword_1EC4AA108;
  if (!qword_1EC4AA108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA108);
  }

  return result;
}

unint64_t sub_1CEF75D6C()
{
  result = qword_1EC4AA110;
  if (!qword_1EC4AA110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA110);
  }

  return result;
}

unint64_t sub_1CEF75DC4()
{
  result = qword_1EC4AA118;
  if (!qword_1EC4AA118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA118);
  }

  return result;
}

unint64_t sub_1CEF75E1C()
{
  result = qword_1EC4AA120;
  if (!qword_1EC4AA120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA120);
  }

  return result;
}

unint64_t sub_1CEF75E74()
{
  result = qword_1EC4AA128;
  if (!qword_1EC4AA128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA128);
  }

  return result;
}

unint64_t sub_1CEF75ECC()
{
  result = qword_1EC4AA130;
  if (!qword_1EC4AA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA130);
  }

  return result;
}

unint64_t sub_1CEF75F24()
{
  result = qword_1EC4AA138;
  if (!qword_1EC4AA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA138);
  }

  return result;
}

unint64_t sub_1CEF75F7C()
{
  result = qword_1EC4AA140;
  if (!qword_1EC4AA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA140);
  }

  return result;
}

unint64_t sub_1CEF75FD4()
{
  result = qword_1EC4AA148;
  if (!qword_1EC4AA148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA148);
  }

  return result;
}

unint64_t sub_1CEF7602C()
{
  result = qword_1EC4AA150;
  if (!qword_1EC4AA150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA150);
  }

  return result;
}

unint64_t sub_1CEF76084()
{
  result = qword_1EC4AA158;
  if (!qword_1EC4AA158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA158);
  }

  return result;
}

unint64_t sub_1CEF760DC()
{
  result = qword_1EC4AA160;
  if (!qword_1EC4AA160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA160);
  }

  return result;
}

unint64_t sub_1CEF76134()
{
  result = qword_1EC4AA168;
  if (!qword_1EC4AA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA168);
  }

  return result;
}

unint64_t sub_1CEF7618C()
{
  result = qword_1EC4AA170;
  if (!qword_1EC4AA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA170);
  }

  return result;
}