uint64_t sub_1CEF8C02C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4AA688, &qword_1CEFB2B18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CEF8C0A4()
{
  result = qword_1EC4AA6B0;
  if (!qword_1EC4AA6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA6B0);
  }

  return result;
}

uint64_t sub_1CEF8C150(uint64_t a1)
{
  v2 = sub_1CEF8C374();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF8C18C(uint64_t a1)
{
  v2 = sub_1CEF8C374();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TC2TrustedRequestFactoryMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA6B8, &qword_1CEFB2B28);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF8C374();

  sub_1CEFA8A60();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA6C8, &qword_1CEFB2B30);
  sub_1CEF8C580(&qword_1EC4AA6D0, &qword_1EC4AA6D8, &protocol conformance descriptor for TC2TrustedRequestMetadata, MEMORY[0x1E69E6300]);
  sub_1CEFA88D0();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1CEF8C374()
{
  result = qword_1EC4AA6C0;
  if (!qword_1EC4AA6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA6C0);
  }

  return result;
}

uint64_t TC2TrustedRequestFactoryMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA6E0, &qword_1CEFB2B38);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF8C374();
  sub_1CEFA8A50();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA6C8, &qword_1CEFB2B30);
    sub_1CEF8C580(&qword_1EC4AA6E8, &qword_1EC4AA6F0, &protocol conformance descriptor for TC2TrustedRequestMetadata, MEMORY[0x1E69E6330]);
    sub_1CEFA87D0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1CEF8C580(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4AA6C8, &qword_1CEFB2B30);
    sub_1CEF8B07C(a2, type metadata accessor for TC2TrustedRequestMetadata, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CEF8C64C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7374736575716572 && a2 == 0xE800000000000000)
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

uint64_t sub_1CEF8C6D4(uint64_t a1)
{
  v2 = sub_1CEF8C8F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF8C710(uint64_t a1)
{
  v2 = sub_1CEF8C8F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TC2TrustedRequestFactoriesMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA6F8, &qword_1CEFB2B40);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF8C8F0();

  sub_1CEFA8A60();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA708, &qword_1CEFB2B48);
  sub_1CEF8C944(&qword_1EC4AA710, sub_1CEF8C9BC, MEMORY[0x1E69E6300]);
  sub_1CEFA88D0();

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1CEF8C8F0()
{
  result = qword_1EC4AA700;
  if (!qword_1EC4AA700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA700);
  }

  return result;
}

uint64_t sub_1CEF8C944(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4AA708, &qword_1CEFB2B48);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1CEF8C9BC()
{
  result = qword_1EC4AA718;
  if (!qword_1EC4AA718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA718);
  }

  return result;
}

uint64_t TC2TrustedRequestFactoriesMetadata.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA720, &qword_1CEFB2B50);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF8C8F0();
  sub_1CEFA8A50();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA708, &qword_1CEFB2B48);
    sub_1CEF8C944(&qword_1EC4AA728, sub_1CEF8CBC0, MEMORY[0x1E69E6330]);
    sub_1CEFA87D0();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1CEF8CBC0()
{
  result = qword_1EC4AA730;
  if (!qword_1EC4AA730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA730);
  }

  return result;
}

PrivateCloudCompute::RequestLogEntryType_optional __swiftcall RequestLogEntryType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CEFA8700();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t RequestLogEntryType.rawValue.getter()
{
  if (*v0)
  {
    return 0x6863746566657270;
  }

  else
  {
    return 0x5264657473757274;
  }
}

uint64_t sub_1CEF8CCFC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6863746566657270;
  }

  else
  {
    v3 = 0x5264657473757274;
  }

  if (v2)
  {
    v4 = 0xEE00747365757165;
  }

  else
  {
    v4 = 0xEF74736575716552;
  }

  if (*a2)
  {
    v5 = 0x6863746566657270;
  }

  else
  {
    v5 = 0x5264657473757274;
  }

  if (*a2)
  {
    v6 = 0xEF74736575716552;
  }

  else
  {
    v6 = 0xEE00747365757165;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CEFA8950();
  }

  return v8 & 1;
}

uint64_t sub_1CEF8CDBC()
{
  sub_1CEFA8A00();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

uint64_t sub_1CEF8CE58(uint64_t a1)
{
  sub_1CEFA8340();
}

uint64_t sub_1CEF8CEE0(uint64_t a1)
{
  sub_1CEFA8A00();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

uint64_t sub_1CEF8CF78@<X0>(char *a2@<X8>)
{
  v3 = sub_1CEFA8700();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1CEF8CFD8(uint64_t *a1@<X8>)
{
  v2 = 0x5264657473757274;
  if (*v1)
  {
    v2 = 0x6863746566657270;
  }

  v3 = 0xEE00747365757165;
  if (*v1)
  {
    v3 = 0xEF74736575716552;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1CEF8D0E0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D8, &unk_1CEFB3600);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v30 = &v23 - v1;
  v26 = sub_1CEFA80A0();
  v29 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v23 = &v23 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1CEFA7FD0();
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1CEFA7FB0();
  v5 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1CEFA7F90();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1CEFA7FA0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1CEFA7FE0();
  __swift_allocate_value_buffer(v16, qword_1EDE3A430);
  v17 = v26;
  __swift_project_value_buffer(v16, qword_1EDE3A430);
  v18 = v12;
  v19 = v24;
  (*(v13 + 104))(v15, *MEMORY[0x1E6969360], v18);
  (*(v9 + 104))(v11, *MEMORY[0x1E6969358], v8);
  v20 = v29;
  (*(v5 + 104))(v7, *MEMORY[0x1E6969370], v25);
  (*(v27 + 104))(v19, *MEMORY[0x1E6969380], v28);
  v21 = v30;
  sub_1CEFA8080();
  result = (*(v20 + 48))(v21, 1, v17);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v20 + 32))(v23, v21, v17);
    return sub_1CEFA7FC0();
  }

  return result;
}

uint64_t sub_1CEF8D53C@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1CEFA8070();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t TrustedRequestLogEntry.serverRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for TrustedRequestLogEntry(0) + 24);
  v4 = sub_1CEFA8070();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t TrustedRequestLogEntry.environment.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 28));

  return v1;
}

uint64_t sub_1CEF8D6B4(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 32));

  return v2;
}

uint64_t TrustedRequestLogEntry.bundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 36));

  return v1;
}

uint64_t TrustedRequestLogEntry.featureIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 40));

  return v1;
}

uint64_t TrustedRequestLogEntry.sessionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TrustedRequestLogEntry(0) + 44);

  return sub_1CEF8A284(v3, a1);
}

uint64_t sub_1CEF8D7D8(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 48));

  return v2;
}

uint64_t TrustedRequestLogEntry.workloadName.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 52));

  return v1;
}

uint64_t TrustedRequestLogEntry.workloadParameters.getter()
{
  type metadata accessor for TrustedRequestLogEntry(0);
}

uint64_t sub_1CEF8D8AC(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 60));

  return v2;
}

uint64_t TrustedRequestLogEntry.payloadTransportState.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 64));

  return v1;
}

uint64_t TrustedRequestLogEntry.requestHeaders.getter()
{
  type metadata accessor for TrustedRequestLogEntry(0);
}

uint64_t TrustedRequestLogEntry.responseState.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 72));

  return v1;
}

uint64_t TrustedRequestLogEntry.ropesVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for TrustedRequestLogEntry(0) + 80));

  return v1;
}

uint64_t TrustedRequestLogEntry.endpoints.getter()
{
  type metadata accessor for TrustedRequestLogEntry(0);
}

uint64_t TrustedRequestLogEntry.init(_:)@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  *a2 = 0;
  v4 = type metadata accessor for TrustedRequestLogEntry(0);
  v5 = v4[5];
  v6 = sub_1CEFA8070();
  v7 = *(*(v6 - 8) + 16);
  v7(&a2[v5], a1, v6);
  v8 = type metadata accessor for TC2TrustedRequestMetadata(0);
  v7(&a2[v4[6]], a1 + v8[5], v6);
  v9 = (a1 + v8[6]);
  v11 = *v9;
  v10 = v9[1];
  v12 = &a2[v4[7]];
  *v12 = v11;
  v12[1] = v10;
  v13 = qword_1EDE37E60;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = sub_1CEFA7FE0();
  __swift_project_value_buffer(v14, qword_1EDE3A430);
  sub_1CEF8B07C(&qword_1EDE380E0, MEMORY[0x1E69693A0], MEMORY[0x1E6969390]);
  sub_1CEFA8020();
  v15 = &a2[v4[8]];
  *v15 = v53;
  v15[1] = v54;
  v16 = (a1 + v8[8]);
  v17 = *v16;
  v18 = v16[1];
  v19 = &a2[v4[9]];
  *v19 = v17;
  v19[1] = v18;
  v20 = (a1 + v8[9]);
  v21 = *v20;
  v22 = v20[1];
  v23 = &a2[v4[10]];
  *v23 = v21;
  v23[1] = v22;
  sub_1CEF8A284(a1 + v8[10], &a2[v4[11]]);
  v24 = (a1 + v8[11]);
  v25 = *v24;
  v26 = v24[1];
  v27 = &a2[v4[12]];
  *v27 = v25;
  v27[1] = v26;
  v28 = (a1 + v8[12]);
  v29 = *v28;
  v30 = v28[1];
  v31 = &a2[v4[13]];
  *v31 = v29;
  v31[1] = v30;
  *&a2[v4[14]] = *(a1 + v8[13]);
  v32 = (a1 + v8[14]);
  v33 = *v32;
  v34 = v32[1];
  v35 = &a2[v4[15]];
  *v35 = v33;
  v35[1] = v34;
  v36 = (a1 + v8[15]);
  v37 = *v36;
  v38 = v36[1];
  v39 = &a2[v4[16]];
  *v39 = v37;
  v39[1] = v38;
  *&a2[v4[17]] = *(a1 + v8[16]);
  v40 = (a1 + v8[17]);
  v41 = *v40;
  v42 = v40[1];
  v43 = &a2[v4[18]];
  *v43 = v41;
  v43[1] = v42;
  v44 = (a1 + v8[18]);
  v45 = *v44;
  LOBYTE(v44) = *(v44 + 8);
  v46 = &a2[v4[19]];
  *v46 = v45;
  v46[8] = v44;
  v47 = (a1 + v8[19]);
  v49 = *v47;
  v48 = v47[1];
  v50 = &a2[v4[20]];
  *v50 = v49;
  v50[1] = v48;
  v51 = *(a1 + v8[20]);

  result = sub_1CEF8F5A4(a1, type metadata accessor for TC2TrustedRequestMetadata);
  *&a2[v4[21]] = v51;
  return result;
}

uint64_t sub_1CEF8DD7C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      v3 = 0x746E65696C63;
      goto LABEL_9;
    case 2:
      v3 = 0x726576726573;
LABEL_9:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6552000000000000;
      break;
    case 3:
      result = 0x6D6E6F7269766E65;
      break;
    case 4:
      result = 0x6E6F697461657263;
      break;
    case 5:
      result = 0xD000000000000010;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 7565169;
      break;
    case 9:
      result = 0x64616F6C6B726F77;
      break;
    case 10:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0x6574617473;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0x4874736575716572;
      break;
    case 14:
    case 15:
      result = 0x65736E6F70736572;
      break;
    case 16:
      result = 0x7265567365706F72;
      break;
    case 17:
      result = 0x746E696F70646E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CEF8DF94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1CEF90D8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1CEF8DFC8(uint64_t a1)
{
  v2 = sub_1CEF8E5E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF8E004(uint64_t a1)
{
  v2 = sub_1CEF8E5E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TrustedRequestLogEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA738, &qword_1CEFB2B58);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF8E5E0();
  sub_1CEFA8A60();
  LOBYTE(v12) = *v3;
  v13 = 0;
  sub_1CEF8E634();
  sub_1CEFA88D0();
  if (!v2)
  {
    v9 = type metadata accessor for TrustedRequestLogEntry(0);
    LOBYTE(v12) = 1;
    sub_1CEFA8070();
    sub_1CEF8B07C(&qword_1EDE380D0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1CEFA88D0();
    LOBYTE(v12) = 2;
    sub_1CEFA88D0();
    LOBYTE(v12) = 3;
    sub_1CEFA8880();
    LOBYTE(v12) = 4;
    sub_1CEFA8880();
    LOBYTE(v12) = 5;
    sub_1CEFA8880();
    LOBYTE(v12) = 6;
    sub_1CEFA8830();
    LOBYTE(v12) = 7;
    sub_1CEFA8870();
    LOBYTE(v12) = 8;
    sub_1CEFA8880();
    LOBYTE(v12) = 9;
    sub_1CEFA8880();
    v12 = *&v3[v9[14]];
    v13 = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
    sub_1CEF4A21C(&qword_1EDE38108, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1CEFA88D0();
    LOBYTE(v12) = 11;
    sub_1CEFA8880();
    LOBYTE(v12) = 12;
    sub_1CEFA8880();
    v12 = *&v3[v9[17]];
    v13 = 13;
    sub_1CEFA88D0();
    LOBYTE(v12) = 14;
    sub_1CEFA8880();
    LOBYTE(v12) = 15;
    sub_1CEFA8860();
    LOBYTE(v12) = 16;
    sub_1CEFA8830();
    v12 = *&v3[v9[21]];
    v13 = 17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA688, &qword_1CEFB2B18);
    sub_1CEF8C02C(&qword_1EC4AA690, sub_1CEF8B0C4, MEMORY[0x1E69E6300]);
    sub_1CEFA88D0();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1CEF8E5E0()
{
  result = qword_1EC4AA740;
  if (!qword_1EC4AA740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA740);
  }

  return result;
}

unint64_t sub_1CEF8E634()
{
  result = qword_1EDE37E70[0];
  if (!qword_1EDE37E70[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE37E70);
  }

  return result;
}

uint64_t TrustedRequestLogEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v68 = v63 - v4;
  v5 = sub_1CEFA8070();
  v69 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v63 - v9;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA748, &qword_1CEFB2B60);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v12 = v63 - v11;
  v13 = type metadata accessor for TrustedRequestLogEntry(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v74 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_1CEF8E5E0();
  v71 = v12;
  v17 = v73;
  sub_1CEFA8A50();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_0(v74);
  }

  v18 = v10;
  v64 = v8;
  v65 = v13;
  v66 = v5;
  v73 = v15;
  v76 = 0;
  sub_1CEF8F4E8();
  sub_1CEFA87D0();
  v19 = v73;
  *v73 = v75;
  LOBYTE(v75) = 1;
  v20 = sub_1CEF8B07C(&qword_1EC4A9030, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v21 = v66;
  sub_1CEFA87D0();
  v22 = v19;
  v23 = *(v69 + 32);
  v24 = v22;
  v23(&v22[v65[5]], v18, v21);
  LOBYTE(v75) = 2;
  v25 = v64;
  sub_1CEFA87D0();
  v63[3] = v20;
  v23(&v24[v65[6]], v25, v21);
  LOBYTE(v75) = 3;
  v63[0] = 0;
  v26 = sub_1CEFA8780();
  v27 = v65;
  v28 = &v24[v65[7]];
  *v28 = v26;
  v28[1] = v29;
  LOBYTE(v75) = 4;
  v30 = sub_1CEFA8780();
  v31 = &v24[v27[8]];
  *v31 = v30;
  v31[1] = v32;
  LOBYTE(v75) = 5;
  v33 = sub_1CEFA8780();
  v34 = &v24[v27[9]];
  *v34 = v33;
  v34[1] = v35;
  LOBYTE(v75) = 6;
  v36 = sub_1CEFA8730();
  v37 = &v24[v27[10]];
  *v37 = v36;
  v37[1] = v38;
  LOBYTE(v75) = 7;
  v39 = v68;
  sub_1CEFA8770();
  sub_1CEF8A758(v39, &v24[v27[11]]);
  LOBYTE(v75) = 8;
  v40 = sub_1CEFA8780();
  v41 = &v73[v27[12]];
  *v41 = v40;
  v41[1] = v42;
  LOBYTE(v75) = 9;
  v43 = sub_1CEFA8780();
  v44 = &v73[v65[13]];
  *v44 = v43;
  v44[1] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
  v76 = 10;
  sub_1CEF4A21C(&qword_1EDE379D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1CEFA87D0();
  *&v73[v65[14]] = v75;
  LOBYTE(v75) = 11;
  v46 = sub_1CEFA8780();
  v47 = &v73[v65[15]];
  *v47 = v46;
  v47[1] = v48;
  LOBYTE(v75) = 12;
  v49 = sub_1CEFA8780();
  v50 = &v73[v65[16]];
  *v50 = v49;
  v50[1] = v51;
  v76 = 13;
  sub_1CEFA87D0();
  *&v73[v65[17]] = v75;
  LOBYTE(v75) = 14;
  v52 = sub_1CEFA8780();
  v53 = &v73[v65[18]];
  *v53 = v52;
  v53[1] = v54;
  LOBYTE(v75) = 15;
  v55 = sub_1CEFA8760();
  v56 = &v73[v65[19]];
  *v56 = v55;
  v56[8] = v57 & 1;
  LOBYTE(v75) = 16;
  v58 = sub_1CEFA8730();
  v59 = &v73[v65[20]];
  *v59 = v58;
  v59[1] = v60;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA688, &qword_1CEFB2B18);
  v76 = 17;
  sub_1CEF8C02C(&qword_1EC4AA6A8, sub_1CEF8C0A4, MEMORY[0x1E69E6330]);
  sub_1CEFA87D0();
  (*(v70 + 8))(v71, v72);
  v61 = v73;
  *&v73[v65[21]] = v75;
  sub_1CEF8F53C(v61, v67, type metadata accessor for TrustedRequestLogEntry);
  __swift_destroy_boxed_opaque_existential_0(v74);
  return sub_1CEF8F5A4(v61, type metadata accessor for TrustedRequestLogEntry);
}

unint64_t sub_1CEF8F4E8()
{
  result = qword_1EC4AA750;
  if (!qword_1EC4AA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA750);
  }

  return result;
}

uint64_t sub_1CEF8F53C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF8F5A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1CEF8F608()
{
  result = qword_1EC4AA758;
  if (!qword_1EC4AA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA758);
  }

  return result;
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_1CEF8F6C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
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

uint64_t sub_1CEF8F708(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1CEF8F7A8(uint64_t a1)
{
  sub_1CEFA8070();
  if (v1 <= 0x3F)
  {
    v2 = MEMORY[0x1E69E6158];
    sub_1CEFA8030();
    if (v3 <= 0x3F)
    {
      sub_1CEF82314(319, qword_1EDE385E8, v2, MEMORY[0x1E69E6720]);
      if (v4 <= 0x3F)
      {
        sub_1CEF8F940(319);
        if (v5 <= 0x3F)
        {
          sub_1CEF8F998();
          if (v6 <= 0x3F)
          {
            sub_1CEF82314(319, &qword_1EDE37998, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
            if (v7 <= 0x3F)
            {
              sub_1CEF82314(319, &qword_1EC4AA760, &type metadata for TrustedRequestEndpointMetadata, MEMORY[0x1E69E62F8]);
              if (v8 <= 0x3F)
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

void sub_1CEF8F940(uint64_t a1)
{
  if (!qword_1EDE384B8)
  {
    sub_1CEFA8070();
    v1 = sub_1CEFA85B0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDE384B8);
    }
  }
}

void sub_1CEF8F998()
{
  if (!qword_1EDE379D8)
  {
    v0 = sub_1CEFA82C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDE379D8);
    }
  }
}

void sub_1CEF8FA4C(uint64_t a1)
{
  sub_1CEFA8070();
  if (v1 <= 0x3F)
  {
    sub_1CEF82314(319, qword_1EDE385E8, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1CEF8F940(319);
      if (v3 <= 0x3F)
      {
        sub_1CEF8F998();
        if (v4 <= 0x3F)
        {
          sub_1CEF82314(319, &qword_1EDE37998, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1CEF82314(319, &qword_1EC4AA760, &type metadata for TrustedRequestEndpointMetadata, MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for TrustedRequestLogEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrustedRequestLogEntry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for TrustedRequestEndpointMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TrustedRequestEndpointMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1CEF8FEB4()
{
  result = qword_1EC4AA768;
  if (!qword_1EC4AA768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA768);
  }

  return result;
}

unint64_t sub_1CEF8FF0C()
{
  result = qword_1EC4AA770;
  if (!qword_1EC4AA770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA770);
  }

  return result;
}

unint64_t sub_1CEF8FF64()
{
  result = qword_1EC4AA778;
  if (!qword_1EC4AA778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA778);
  }

  return result;
}

unint64_t sub_1CEF8FFBC()
{
  result = qword_1EC4AA780;
  if (!qword_1EC4AA780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA780);
  }

  return result;
}

unint64_t sub_1CEF90014()
{
  result = qword_1EC4AA788;
  if (!qword_1EC4AA788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA788);
  }

  return result;
}

unint64_t sub_1CEF9006C()
{
  result = qword_1EC4AA790;
  if (!qword_1EC4AA790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA790);
  }

  return result;
}

unint64_t sub_1CEF900C4()
{
  result = qword_1EC4AA798;
  if (!qword_1EC4AA798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA798);
  }

  return result;
}

unint64_t sub_1CEF9011C()
{
  result = qword_1EC4AA7A0;
  if (!qword_1EC4AA7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7A0);
  }

  return result;
}

unint64_t sub_1CEF90174()
{
  result = qword_1EC4AA7A8;
  if (!qword_1EC4AA7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7A8);
  }

  return result;
}

unint64_t sub_1CEF901CC()
{
  result = qword_1EC4AA7B0;
  if (!qword_1EC4AA7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7B0);
  }

  return result;
}

unint64_t sub_1CEF90224()
{
  result = qword_1EC4AA7B8;
  if (!qword_1EC4AA7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7B8);
  }

  return result;
}

unint64_t sub_1CEF9027C()
{
  result = qword_1EC4AA7C0;
  if (!qword_1EC4AA7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7C0);
  }

  return result;
}

unint64_t sub_1CEF902D4()
{
  result = qword_1EC4AA7C8;
  if (!qword_1EC4AA7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7C8);
  }

  return result;
}

unint64_t sub_1CEF9032C()
{
  result = qword_1EC4AA7D0;
  if (!qword_1EC4AA7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7D0);
  }

  return result;
}

unint64_t sub_1CEF90384()
{
  result = qword_1EC4AA7D8;
  if (!qword_1EC4AA7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7D8);
  }

  return result;
}

uint64_t sub_1CEF903D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461745365646F6ELL && a2 == 0xE900000000000065;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E65644965646F6ELL && a2 == 0xEE00726569666974 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F43707474686FLL && a2 == 0xEC00000074786574 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CEFB6360 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6563655261746164 && a2 == 0xEC00000064657669 || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x56534F64756F6C63 && a2 == 0xEE006E6F69737265 || (sub_1CEFA8950() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CEFB50A0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001CEFB6380 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C626D65736E65 && a2 == 0xEA00000000004449 || (sub_1CEFA8950() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x61436D6F72467369 && a2 == 0xEB00000000656863 || (sub_1CEFA8950() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6552646576726573 && a2 == 0xED00007473657571 || (sub_1CEFA8950() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x42646569786F7270 && a2 == 0xE900000000000079 || (sub_1CEFA8950() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001CEFB63A0 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1CEF90820(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6552746E65696C63 && a2 == 0xEF44497473657571;
  if (v4 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552726576726573 && a2 == 0xEF44497473657571 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CEFB5F20 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CEFB5F40 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CEFB63C0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 7565169 && a2 == 0xE300000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x64616F6C6B726F77 && a2 == 0xEC000000656D614ELL || (sub_1CEFA8950() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CEFB5F60 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CEFB63E0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x4874736575716572 && a2 == 0xEE00737265646165 || (sub_1CEFA8950() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xED00006574617453 || (sub_1CEFA8950() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F43 || (sub_1CEFA8950() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x7265567365706F72 && a2 == 0xEC0000006E6F6973 || (sub_1CEFA8950() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE900000000000073)
  {

    return 16;
  }

  else
  {
    v6 = sub_1CEFA8950();

    if (v6)
    {
      return 16;
    }

    else
    {
      return 17;
    }
  }
}

uint64_t sub_1CEF90D8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v3 || (sub_1CEFA8950() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6552746E65696C63 && a2 == 0xEF44497473657571 || (sub_1CEFA8950() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6552726576726573 && a2 == 0xEF44497473657571 || (sub_1CEFA8950() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6E6F7269766E65 && a2 == 0xEB00000000746E65 || (sub_1CEFA8950() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_1CEFA8950() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001CEFB5F20 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CEFB5F40 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001CEFB63C0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 7565169 && a2 == 0xE300000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x64616F6C6B726F77 && a2 == 0xEC000000656D614ELL || (sub_1CEFA8950() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001CEFB5F60 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1CEFA8950() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001CEFB63E0 == a2 || (sub_1CEFA8950() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x4874736575716572 && a2 == 0xEE00737265646165 || (sub_1CEFA8950() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xED00006574617453 || (sub_1CEFA8950() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065646F43 || (sub_1CEFA8950() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x7265567365706F72 && a2 == 0xEC0000006E6F6973 || (sub_1CEFA8950() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x746E696F70646E65 && a2 == 0xE900000000000073)
  {

    return 17;
  }

  else
  {
    v6 = sub_1CEFA8950();

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

unint64_t sub_1CEF91344()
{
  result = qword_1EDE37E68;
  if (!qword_1EDE37E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE37E68);
  }

  return result;
}

PrivateCloudCompute::Workload __swiftcall Workload.init(type:parameters:)(Swift::String type, Swift::OpaquePointer parameters)
{
  *v2 = type;
  *(v2 + 16) = parameters;
  result.type = type;
  result.parameters = parameters;
  return result;
}

uint64_t Workload.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Workload.type.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t Workload.parameters.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t static Workload.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1CEFA8950() & 1) == 0)
  {
    return 0;
  }

  return sub_1CEF91508(v2, v3);
}

uint64_t sub_1CEF91508(uint64_t result, uint64_t a2)
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
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v26 = (v7 - 1) & v7;
LABEL_14:
    v12 = 16 * (v9 | (v3 << 6));
    v13 = result;
    v14 = (*(result + 48) + v12);
    v15 = *v14;
    v16 = v14[1];
    v17 = (*(result + 56) + v12);
    v19 = *v17;
    v18 = v17[1];

    v20 = sub_1CEF76970(v15, v16);
    v22 = v21;

    if ((v22 & 1) == 0)
    {

      return 0;
    }

    v23 = (*(a2 + 56) + 16 * v20);
    if (*v23 == v19 && v23[1] == v18)
    {

      result = v13;
      v7 = v26;
    }

    else
    {
      v25 = sub_1CEFA8950();

      result = v13;
      v7 = v26;
      if ((v25 & 1) == 0)
      {
        return 0;
      }
    }
  }

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
      v26 = (v11 - 1) & v11;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1CEF916AC()
{
  if (*v0)
  {
    return 0x6574656D61726170;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t sub_1CEF916E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (sub_1CEFA8950() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
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

uint64_t sub_1CEF917C8(uint64_t a1)
{
  v2 = sub_1CEF91A0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1CEF91804(uint64_t a1)
{
  v2 = sub_1CEF91A0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Workload.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7E0, &unk_1CEFB3610);
  v10 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF91A0C();
  sub_1CEFA8A60();
  v13 = 0;
  sub_1CEFA8880();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
    sub_1CEF4A21C(&qword_1EDE38108, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1CEFA88D0();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_1CEF91A0C()
{
  result = qword_1EDE38120;
  if (!qword_1EDE38120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE38120);
  }

  return result;
}

uint64_t Workload.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1CEFA8340();

  return sub_1CEF91EFC(a1, v3);
}

uint64_t Workload.hashValue.getter()
{
  v1 = *(v0 + 16);
  sub_1CEFA8A00();
  sub_1CEFA8340();
  sub_1CEF91EFC(v3, v1);
  return sub_1CEFA8A40();
}

uint64_t Workload.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7E8, &qword_1CEFB3620);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEF91A0C();
  sub_1CEFA8A50();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = 0;
  v9 = sub_1CEFA8780();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A91C8, &unk_1CEFAA550);
  v16 = 1;
  sub_1CEF4A21C(&qword_1EDE379D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1CEFA87D0();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_1CEF91D80(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1CEFA8950() & 1) == 0)
  {
    return 0;
  }

  return sub_1CEF91508(v2, v3);
}

uint64_t sub_1CEF91DF4()
{
  v1 = *(v0 + 16);
  sub_1CEFA8A00();
  sub_1CEFA8340();
  sub_1CEF91EFC(v3, v1);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF91E58(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1CEFA8340();

  return sub_1CEF91EFC(a1, v3);
}

uint64_t sub_1CEF91E9C(uint64_t a1)
{
  v2 = *(v1 + 16);
  sub_1CEFA8A00();
  sub_1CEFA8340();
  sub_1CEF91EFC(v4, v2);
  return sub_1CEFA8A40();
}

uint64_t sub_1CEF91EFC(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1D3866C60](v8);
    }

    v5 = *(v2 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;

        sub_1CEFA8340();

        sub_1CEFA8340();

        result = sub_1CEFA8A40();
        v8 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1CEF9206C()
{
  result = qword_1EDE379E0;
  if (!qword_1EDE379E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE379E0);
  }

  return result;
}

unint64_t sub_1CEF920E4()
{
  result = qword_1EC4AA7F0;
  if (!qword_1EC4AA7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA7F0);
  }

  return result;
}

unint64_t sub_1CEF9213C()
{
  result = qword_1EDE38110;
  if (!qword_1EDE38110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE38110);
  }

  return result;
}

unint64_t sub_1CEF92194()
{
  result = qword_1EDE38118;
  if (!qword_1EDE38118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDE38118);
  }

  return result;
}

uint64_t sub_1CEF921F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  type metadata accessor for XPCWrapper();
  sub_1CEF92AB4(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v8 = sub_1CEFA8480();

  return MEMORY[0x1EEE6DFA0](sub_1CEF922B8, v8, v7);
}

uint64_t sub_1CEF922B8()
{
  if (*(v0[10] + 56) == v0[8])
  {
    v1 = v0[9];
    v0[6] = nullsub_1;
    v0[7] = 0;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CEF9F248;
    v0[5] = &block_descriptor;
    v2 = _Block_copy(v0 + 2);
    [v1 cancelWithCompletion_];
    _Block_release(v2);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CEF923A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  type metadata accessor for XPCWrapper();
  sub_1CEF92AB4(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v8 = sub_1CEFA8480();

  return MEMORY[0x1EEE6DFA0](sub_1CEF92464, v8, v7);
}

uint64_t sub_1CEF92464()
{
  if (*(v0[10] + 56) == v0[8])
  {
    v1 = v0[9];
    v0[6] = nullsub_1;
    v0[7] = 0;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1CEF9F248;
    v0[5] = &block_descriptor_9;
    v2 = _Block_copy(v0 + 2);
    [v1 closeWithCompletion_];
    _Block_release(v2);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1CEF92550(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = a6;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 112) = a3;
  *(v6 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  *(v6 + 56) = swift_task_alloc();
  type metadata accessor for XPCWrapper();
  *(v6 + 64) = sub_1CEF92AB4(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v8 = sub_1CEFA8480();
  *(v6 + 72) = v8;
  *(v6 + 80) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1CEF92654, v8, v7);
}

uint64_t sub_1CEF92654(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v23 = v8;
  v9 = *(v8 + 48);
  if (*(v9 + 56) == *(v8 + 32))
  {
    v10 = *(v9 + 16);
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = *(v8 + 64);
      v12 = *(v8 + 40);
      v13 = *(v8 + 112);
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      *(v9 + 16) = v10 + 1;
      v16 = swift_task_alloc();
      *(v8 + 88) = v16;
      *(v16 + 16) = v9;
      *(v16 + 24) = v10;
      *(v16 + 32) = v12;
      *(v16 + 40) = v15;
      *(v16 + 48) = v14;
      *(v16 + 56) = v13;
      a1 = swift_task_alloc();
      *(v8 + 96) = a1;
      *a1 = v8;
      a1[1] = sub_1CEF928B0;
      a6 = sub_1CEF810A0;
      a5 = 0x80000001CEFB6160;
      a8 = MEMORY[0x1E69E7CA8] + 8;
      a2 = v9;
      a3 = v11;
      a4 = 0xD000000000000029;
      a7 = v16;
    }

    return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v17 = *(v8 + 56);
    v22[0] = 22;
    v18 = sub_1CEFA8030();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    type metadata accessor for PrivateCloudComputeError(0);
    sub_1CEF92AB4(&qword_1EDE38038, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    PrivateCloudComputeError.init(code:retryAfterDate:underlying:)(v22, v17, MEMORY[0x1E69E7CC0], v19);
    swift_willThrow();

    v20 = *(v8 + 8);

    return v20();
  }
}

uint64_t sub_1CEF928B0()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1CEF92A30;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1CEF929CC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEF929CC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CEF92A30()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1CEF92AB4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CEF92B04(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  v3[7] = swift_task_alloc();
  v3[8] = sub_1CEF9F084(qword_1EDE38748, v4, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v6 = sub_1CEFA8480();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1CEF92C18, v6, v5);
}

uint64_t sub_1CEF92C18(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), void *a7, uint64_t a8)
{
  v21 = v8;
  v9 = v8[6];
  if (*(v9 + 56) == v8[4])
  {
    v10 = *(v9 + 16);
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      v11 = v8[8];
      v12 = v8[5];
      *(v9 + 16) = v10 + 1;
      v13 = swift_task_alloc();
      v8[11] = v13;
      v13[2] = v9;
      v13[3] = v10;
      v13[4] = v12;
      v14 = swift_task_alloc();
      v8[12] = v14;
      a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA308, &unk_1CEFB3980);
      *v14 = v8;
      v14[1] = sub_1CEF92E70;
      a6 = sub_1CEF9EC30;
      a1 = v8 + 2;
      a5 = 0x80000001CEFB6540;
      a2 = v9;
      a3 = v11;
      a4 = 0xD000000000000019;
      a7 = v13;
    }

    return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
  }

  else
  {
    v15 = v8[7];
    v20[0] = 22;
    v16 = sub_1CEFA8030();
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
    type metadata accessor for PrivateCloudComputeError(0);
    sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    swift_allocError();
    PrivateCloudComputeError.init(code:retryAfterDate:underlying:)(v20, v15, MEMORY[0x1E69E7CC0], v17);
    swift_willThrow();

    v18 = v8[1];

    return v18();
  }
}

uint64_t sub_1CEF92E70()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1CEF92A30;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1CEF92F8C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEF92F8C()
{
  v2 = v0[2];
  v1 = v0[3];

  v3 = v0[1];

  return v3(v2, v1);
}

uint64_t sub_1CEF92FFC(uint64_t a1)
{
  v43 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA820, &qword_1CEFB39F0);
  v39 = *(v1 - 8);
  v40 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v38 = &v29 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA828, &qword_1CEFB39F8);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA830, &qword_1CEFB3A00);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7F8, &unk_1CEFB39C0);
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA838, &qword_1CEFB3A08);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v29 - v18;
  v20 = type metadata accessor for XPCWrapper.Continuation(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CEF9EC68(v42, v22, type metadata accessor for XPCWrapper.Continuation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        (*(v13 + 32))(v15, v22, v12);
        v44 = v43;
        MEMORY[0x1D38670C0]();
        sub_1CEFA8490();
        return (*(v13 + 8))(v15, v12);
      }

      else
      {
        v28 = v41;
        (*(v41 + 32))(v11, v22, v9);
        v44 = v43;
        MEMORY[0x1D38670C0]();
        sub_1CEFA8490();
        return (*(v28 + 8))(v11, v9);
      }
    }

    else
    {
      (*(v17 + 32))(v19, v22, v16);
      v44 = v43;
      MEMORY[0x1D38670C0]();
      sub_1CEFA8490();
      return (*(v17 + 8))(v19, v16);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v24 = v35;
        v25 = v36;
        v26 = v37;
        (*(v36 + 32))(v35, v22, v37);
      }

      else
      {
        v24 = v38;
        v25 = v39;
        v26 = v40;
        (*(v39 + 32))(v38, v22, v40);
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v24 = v29;
      v25 = v30;
      v26 = v31;
      (*(v30 + 32))(v29, v22, v31);
    }

    else
    {
      v24 = v32;
      v25 = v33;
      v26 = v34;
      (*(v33 + 32))(v32, v22, v34);
    }

    v44 = v43;
    MEMORY[0x1D38670C0]();
    sub_1CEFA8490();
    return (*(v25 + 8))(v24, v26);
  }
}

uint64_t sub_1CEF9360C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1CEFA8560();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1CEFA8580();
  MEMORY[0x1EEE9AC00](v7);
  v8 = sub_1CEFA8280();
  MEMORY[0x1EEE9AC00](v8 - 8);
  *(v1 + 16) = xmmword_1CEFB38F0;
  sub_1CEFA7DF0();
  swift_allocObject();
  *(v1 + 40) = sub_1CEFA7DE0();
  *(v1 + 56) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(v2 + 80) = sub_1CEF52C30(MEMORY[0x1E69E7CC0]);
  *(v2 + 48) = a1;
  *(v2 + 52) = BYTE4(a1) & 1;
  v20 = sub_1CEF9F038();
  sub_1CEFA8270();
  aBlock[0] = v9;
  sub_1CEF9F084(&qword_1EDE38598, 255, MEMORY[0x1E69E8120], MEMORY[0x1E69E8128]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA858, &qword_1CEFB3A28);
  sub_1CEF9F0CC(&qword_1EDE385D8, &qword_1EC4AA858, &qword_1CEFB3A28);
  sub_1CEFA8610();
  (*(v21 + 104))(v6, *MEMORY[0x1E69E8098], v22);
  *(v2 + 32) = sub_1CEFA8590();
  v10 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v11 = sub_1CEFA82F0();
  v12 = [v10 initWithMachServiceName:v11 options:0];

  [v12 _setQueue_];
  v13 = objc_opt_self();
  v14 = [v13 interfaceWithProtocol_];
  v15 = [v13 interfaceWithProtocol_];
  [v14 setInterface:v15 forSelector:sel_trustedRequestWithParameters_requestID_bundleIdentifier_originatingBundleIdentifier_featureIdentifier_sessionIdentifier_completion_ argumentIndex:0 ofReply:1];

  [v12 setRemoteObjectInterface_];
  *(v2 + 64) = v12;
  v16 = v12;
  v17 = [v16 remoteObjectProxy];
  sub_1CEFA85E0();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA860, &qword_1CEFB3A30);
  swift_dynamicCast();
  *(v2 + 72) = aBlock[6];
  aBlock[4] = sub_1CEF9F120;
  aBlock[5] = v2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9F248;
  aBlock[3] = &block_descriptor_246;
  v18 = _Block_copy(aBlock);

  [v16 setInterruptionHandler_];
  _Block_release(v18);
  [v16 resume];

  return v2;
}

uint64_t sub_1CEF93AC4(void *a1)
{
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v2 = swift_allocObject();
    *(v2 + 16) = sub_1CEF9E028;
    *(v2 + 24) = 0;
    v4[0] = a1;
    sub_1CEF9F230(v4);

    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();
    __break(1u);
  }

  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF93C78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v54 = &v49 - v2;
  v3 = type metadata accessor for XPCWrapper.Continuation(0);
  v52 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v56 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA868, &qword_1CEFB3A38);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v55 = &v49 - v9;
  swift_beginAccess();
  v50 = v0;
  v10 = *(v0 + 80);
  v13 = *(v10 + 64);
  v12 = v10 + 64;
  v11 = v13;
  v14 = 1 << *(*(v0 + 80) + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v53 = *(v0 + 80);

  v18 = 0;
  v51 = v8;
  if (v16)
  {
    while (1)
    {
      v19 = v18;
LABEL_12:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v22 | (v19 << 6);
      v24 = *(*(v53 + 48) + 8 * v23);
      v25 = v56;
      sub_1CEF9EC68(*(v53 + 56) + *(v52 + 72) * v23, v56, type metadata accessor for XPCWrapper.Continuation);
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA870, &qword_1CEFB3A40);
      v27 = *(v26 + 48);
      v8 = v51;
      *v51 = v24;
      sub_1CEF9ED30(v25, &v8[v27], type metadata accessor for XPCWrapper.Continuation);
      (*(*(v26 - 8) + 56))(v8, 0, 1, v26);
      v21 = v19;
LABEL_13:
      v28 = v55;
      sub_1CEF9F128(v8, v55);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA870, &qword_1CEFB3A40);
      if ((*(*(v29 - 8) + 48))(v28, 1, v29) == 1)
      {
        break;
      }

      v30 = v56;
      sub_1CEF9ED30(v28 + *(v29 + 48), v56, type metadata accessor for XPCWrapper.Continuation);
      LOBYTE(aBlock[0]) = 22;
      v31 = sub_1CEFA8030();
      v32 = v54;
      (*(*(v31 - 8) + 56))(v54, 1, 1, v31);
      type metadata accessor for PrivateCloudComputeError(0);
      sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
      v33 = swift_allocError();
      PrivateCloudComputeError.init(code:retryAfterDate:underlying:)(aBlock, v32, MEMORY[0x1E69E7CC0], v34);
      sub_1CEF92FFC(v33);
      sub_1CEF9ECD0(v30, type metadata accessor for XPCWrapper.Continuation);

      v18 = v21;
      if (!v16)
      {
        goto LABEL_5;
      }
    }

    v36 = v50;
    swift_beginAccess();
    if (*(*(v36 + 80) + 16))
    {
      swift_isUniquelyReferenced_nonNull_native();
      v57 = *(v36 + 80);
      *(v36 + 80) = 0x8000000000000000;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA878, &qword_1CEFB3A48);
      sub_1CEFA86B0();
      *(v36 + 80) = v57;
    }

    swift_endAccess();
    v37 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v38 = sub_1CEFA82F0();
    v39 = [v37 initWithMachServiceName:v38 options:0];

    [v39 _setQueue_];
    v40 = objc_opt_self();
    v41 = [v40 interfaceWithProtocol_];
    v42 = [v40 interfaceWithProtocol_];
    [v41 setInterface:v42 forSelector:sel_trustedRequestWithParameters_requestID_bundleIdentifier_originatingBundleIdentifier_featureIdentifier_sessionIdentifier_completion_ argumentIndex:0 ofReply:1];

    [v39 setRemoteObjectInterface_];
    aBlock[4] = sub_1CEF9F198;
    aBlock[5] = v36;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1CEF9F248;
    aBlock[3] = &block_descriptor_253;
    v43 = _Block_copy(aBlock);

    [v39 setInterruptionHandler_];
    _Block_release(v43);
    [v39 resume];
    v44 = *(v36 + 64);
    *(v36 + 64) = v39;
    v45 = *(v36 + 24);
    if (!__OFADD__(v45, 1))
    {
      *(v36 + 24) = v45 + 1;
      *(v36 + 56) = v45;
      v46 = v39;
      v47 = [v46 remoteObjectProxy];
      sub_1CEFA85E0();
      swift_unknownObjectRelease();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA860, &qword_1CEFB3A30);
      swift_dynamicCast();
      *(v36 + 72) = v57;
      swift_unknownObjectRelease();
      [v44 setInterruptionHandler_];
      [v44 setInvalidationHandler_];
      [v44 invalidate];
      v48 = [*(v36 + 64) remoteObjectProxy];
      sub_1CEFA85E0();

      swift_unknownObjectRelease();
      swift_dynamicCast();
      *(v36 + 72) = v57;
      swift_unknownObjectRelease();
      return;
    }
  }

  else
  {
LABEL_5:
    if (v17 <= v18 + 1)
    {
      v20 = v18 + 1;
    }

    else
    {
      v20 = v17;
    }

    v21 = v20 - 1;
    while (1)
    {
      v19 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v19 >= v17)
      {
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA870, &qword_1CEFB3A40);
        (*(*(v35 - 8) + 56))(v8, 1, 1, v35);
        v16 = 0;
        goto LABEL_13;
      }

      v16 = *(v12 + 8 * v19);
      ++v18;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1CEF94458()
{
  v1 = sub_1CEFA8260();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1CEFA8280();
  v5 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v7 = v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10[1] = *(v0 + 32);
  aBlock[4] = sub_1CEF9EC28;
  v14 = v0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9F248;
  aBlock[3] = &block_descriptor_81;
  v8 = _Block_copy(aBlock);

  sub_1CEFA8270();
  v12 = MEMORY[0x1E69E7CC0];
  sub_1CEF9F084(&qword_1EDE38800, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA810, &qword_1CEFB39E0);
  sub_1CEF9F0CC(&qword_1EDE385E0, &qword_1EC4AA810, &qword_1CEFB39E0);
  sub_1CEFA8610();
  MEMORY[0x1D38667C0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v11);
}

uint64_t sub_1CEF946FC(void *a1)
{
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v2 = swift_allocObject();
    *(v2 + 16) = sub_1CEF9E044;
    *(v2 + 24) = 0;
    v4[0] = a1;
    sub_1CEF9F230(v4);

    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();
    __break(1u);
  }

  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

id sub_1CEF948B0(uint64_t *a1, uint64_t a2)
{
  sub_1CEF9F084(qword_1EDE38748, a2, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = swift_beginAccess();
  if (*(a1[10] + 16))
  {
    __break(1u);
  }

  else
  {
    [a1[8] invalidate];
    return [a1[8] setInterruptionHandler_];
  }

  return result;
}

uint64_t sub_1CEF949C8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

void sub_1CEF94A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13)
{
  v36[1] = a7;
  v38 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = v36 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v36 - v20;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v22, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA820, &qword_1CEFB39F0);
  (*(*(v23 - 8) + 16))(v21, a1, v23);
  v24 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v24 - 8) + 56))(v21, 0, 1, v24);
  swift_beginAccess();
  sub_1CEF4C510(v21, v38);
  swift_endAccess();
  v25 = *(a2 + 72);
  swift_unknownObjectRetain();
  v37 = sub_1CEFA7F60();
  v26 = sub_1CEFA8040();
  if (a8)
  {
    a8 = sub_1CEFA82F0();
  }

  v27 = a12;
  if (a10)
  {
    v28 = sub_1CEFA82F0();
    if (!a12)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v28 = 0;
  if (a12)
  {
LABEL_7:
    v27 = sub_1CEFA82F0();
  }

LABEL_8:
  sub_1CEF8A284(a13, v18);
  v29 = sub_1CEFA8070();
  v30 = *(v29 - 8);
  v31 = 0;
  if ((*(v30 + 48))(v18, 1, v29) != 1)
  {
    v31 = sub_1CEFA8040();
    (*(v30 + 8))(v18, v29);
  }

  v32 = swift_allocObject();
  v33 = v38;
  *(v32 + 16) = a2;
  *(v32 + 24) = v33;
  aBlock[4] = sub_1CEF9F010;
  aBlock[5] = v32;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF961B8;
  aBlock[3] = &block_descriptor_235;
  v34 = _Block_copy(aBlock);

  v35 = v37;
  [v25 trustedRequestWithParameters:v37 requestID:v26 bundleIdentifier:a8 originatingBundleIdentifier:v28 featureIdentifier:v27 sessionIdentifier:v31 completion:v34];
  _Block_release(v34);
  swift_unknownObjectRelease();
}

uint64_t sub_1CEF94E44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t isEscapingClosureAtFileLocation, uint64_t a5)
{
  v10 = a2;
  v11 = a3;
  v12 = a5;
  v13 = a1;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F018;
    *(v6 + 24) = &v9;
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1CEF9F29C;
    *(v7 + 24) = v6;

    v15[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v15);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v15[0] = 0;
  v15[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v14 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF95020(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v53 = a2;
  v54 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v52 = &v49 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA818, &unk_1CEFB3C40);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for PrivateCloudComputeError(0);
  v14 = *(v13 - 1);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v49 - v18;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v20, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v55 = a1;
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3 >> 60 == 15)
  {
    if (a5)
    {
      v21 = *(v55 + 56);
      swift_unknownObjectRetain();
      sub_1CEF95E84(v54, a5, v21);
      swift_unknownObjectRelease();
      return;
    }

    v38 = sub_1CEFA8030();
    v39 = *(*(v38 - 8) + 56);
    v40 = v52;
    v39(v52, 1, 1, v38);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_1CEFA8650();

    v56 = 0xD000000000000021;
    v57 = 0x80000001CEFB6670;
    v41 = sub_1CEFA8660();
    MEMORY[0x1D38665A0](v41);

    MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
    v58 = 136;
    v42 = sub_1CEFA8910();
    MEMORY[0x1D38665A0](v42);

    v43 = v56;
    v44 = v57;
    v45 = v13[5];
    v39(&v17[v45], 1, 1, v38);
    v46 = &v17[v13[6]];
    v47 = &v17[v13[7]];
    *v17 = 21;
    sub_1CEF3D4EC(v40, &v17[v45]);
    *v46 = 0;
    v46[1] = 0;
    *v47 = v43;
    v47[1] = v44;
    sub_1CEF3D55C(v40, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    *&v17[v13[8]] = MEMORY[0x1E69E7CC0];
    sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    v33 = swift_allocError();
    sub_1CEF9EC68(v17, v48, type metadata accessor for PrivateCloudComputeError);
    sub_1CEF95774(v54, v33);
    goto LABEL_10;
  }

  v22 = v53;
  sub_1CEF9EC14(v53, a3);
  sub_1CEF43738(v22, a3);
  sub_1CEF9FE3C(v22, a3, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1CEF3D55C(v12, &qword_1EC4AA818, &unk_1CEFB3C40);
    v23 = sub_1CEFA8030();
    v51 = *(*(v23 - 8) + 56);
    v24 = v52;
    v51(v52, 1, 1, v23);
    v56 = 0;
    v57 = 0xE000000000000000;
    sub_1CEFA8650();

    v56 = 0xD000000000000032;
    v57 = 0x80000001CEFB66A0;
    v25 = sub_1CEFA8660();
    MEMORY[0x1D38665A0](v25);

    MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
    v58 = 128;
    v26 = sub_1CEFA8910();
    MEMORY[0x1D38665A0](v26);

    v27 = v56;
    v28 = v57;
    v50 = a3;
    v29 = v22;
    v30 = v13[5];
    v51(&v17[v30], 1, 1, v23);
    v31 = &v17[v13[6]];
    v32 = &v17[v13[7]];
    *v17 = 21;
    sub_1CEF3D4EC(v24, &v17[v30]);
    *v31 = 0;
    v31[1] = 0;
    *v32 = v27;
    v32[1] = v28;
    sub_1CEF3D55C(v24, &qword_1EC4A8F20, &unk_1CEFAB3E0);
    *&v17[v13[8]] = MEMORY[0x1E69E7CC0];
    sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
    v33 = swift_allocError();
    sub_1CEF9EC68(v17, v34, type metadata accessor for PrivateCloudComputeError);
    sub_1CEF95774(v54, v33);
    sub_1CEF81204(v29, v50);
LABEL_10:
    sub_1CEF9ECD0(v17, type metadata accessor for PrivateCloudComputeError);
    v37 = v33;
    goto LABEL_11;
  }

  sub_1CEF9ED30(v12, v19, type metadata accessor for PrivateCloudComputeError);
  sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
  v35 = swift_allocError();
  sub_1CEF9EC68(v19, v36, type metadata accessor for PrivateCloudComputeError);
  sub_1CEF95774(v54, v35);
  sub_1CEF81204(v22, a3);
  sub_1CEF9ECD0(v19, type metadata accessor for PrivateCloudComputeError);
  v37 = v35;
LABEL_11:
}

uint64_t sub_1CEF95774(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA820, &qword_1CEFB39F0);
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v40 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA828, &qword_1CEFB39F8);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v40 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  v50 = *(v6 - 8);
  v51 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v40 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA830, &qword_1CEFB3A00);
  v47 = *(v8 - 8);
  v48 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v46 = &v40 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7F8, &unk_1CEFB39C0);
  v44 = *(v10 - 8);
  v45 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v43 = &v40 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA838, &qword_1CEFB3A08);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v40 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  v41 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v40 - v19;
  v21 = type metadata accessor for XPCWrapper.Continuation(0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v40 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v40 - v26;
  swift_beginAccess();
  sub_1CEF9DB30(v59, v20);
  swift_endAccess();
  if ((*(v22 + 48))(v20, 1, v21) == 1)
  {
    return sub_1CEF3D55C(v20, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v20, v27, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v27, v25, type metadata accessor for XPCWrapper.Continuation);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v30 = v52;
        v31 = v53;
        v35 = v25;
        v33 = v54;
        (*(v53 + 32))(v52, v35, v54);
      }

      else
      {
        v30 = v55;
        v31 = v56;
        v39 = v25;
        v33 = v57;
        (*(v56 + 32))(v55, v39, v57);
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      v30 = v49;
      v31 = v50;
      v32 = v25;
      v33 = v51;
      (*(v50 + 32))(v49, v32, v51);
    }

    else
    {
      v30 = v46;
      v31 = v47;
      v38 = v25;
      v33 = v48;
      (*(v47 + 32))(v46, v38, v48);
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v30 = v43;
      v31 = v44;
      v37 = v25;
      v33 = v45;
      (*(v44 + 32))(v43, v37, v45);
LABEL_16:
      v60 = v58;
      MEMORY[0x1D38670C0]();
      sub_1CEFA8490();
      (*(v31 + 8))(v30, v33);
      return sub_1CEF9ECD0(v27, type metadata accessor for XPCWrapper.Continuation);
    }

    v34 = v42;
    (*(v42 + 32))(v14, v25, v12);
    v60 = v58;
    MEMORY[0x1D38670C0]();
    sub_1CEFA8490();
    (*(v34 + 8))(v14, v12);
  }

  else
  {
    v36 = v41;
    (*(v41 + 32))(v17, v25, v15);
    v60 = v58;
    MEMORY[0x1D38670C0]();
    sub_1CEFA8490();
    (*(v36 + 8))(v17, v15);
  }

  return sub_1CEF9ECD0(v27, type metadata accessor for XPCWrapper.Continuation);
}

uint64_t sub_1CEF95E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA820, &qword_1CEFB39F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  swift_beginAccess();
  sub_1CEF9DB30(a1, v10);
  swift_endAccess();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1CEF3D55C(v10, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v10, v17, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v17, v15, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload() <= 5)
  {
    sub_1CEF9ECD0(v15, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  else
  {
    (*(v5 + 32))(v7, v15, v4);
    v22 = v21;
    v23 = v20;
    swift_unknownObjectRetain();
    sub_1CEFA84A0();
    (*(v5 + 8))(v7, v4);
    return sub_1CEF9ECD0(v17, type metadata accessor for XPCWrapper.Continuation);
  }

  return result;
}

uint64_t sub_1CEF961B8(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a3)
  {

    swift_unknownObjectRetain();
    v6 = v3;
    v3 = sub_1CEFA7F70();
    v8 = v7;
  }

  else
  {

    swift_unknownObjectRetain();
    v8 = 0xF000000000000000;
  }

  v5(a2, v3, v8);
  swift_unknownObjectRelease();
  sub_1CEF81204(v3, v8);
}

uint64_t sub_1CEF96270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v9, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA830, &qword_1CEFB3A00);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  swift_beginAccess();
  sub_1CEF4C510(v8, a3);
  swift_endAccess();
  v12 = *(a2 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_1CEF9F1A0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF96A10;
  aBlock[3] = &block_descriptor_263;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 currentEnvironmentWithCompletion_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF96500(uint64_t a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4)
{
  v9 = a4;
  v10 = a1;
  v11 = a2;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9F1A8;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F29C;
    *(v6 + 24) = v5;

    v13[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v13);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v12 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF966DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA830, &qword_1CEFB3A00);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  swift_beginAccess();
  sub_1CEF9DB30(a1, v10);
  swift_endAccess();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1CEF3D55C(v10, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v10, v17, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v17, v15, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    (*(v5 + 32))(v7, v15, v4);
    v22 = v20;
    v23 = v21;

    sub_1CEFA84A0();
    (*(v5 + 8))(v7, v4);
    return sub_1CEF9ECD0(v17, type metadata accessor for XPCWrapper.Continuation);
  }

  else
  {
    sub_1CEF9ECD0(v15, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CEF96A10(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1CEFA8300();
  v5 = v4;

  v2(v3, v5);
}

uint64_t sub_1CEF96A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v9, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  swift_beginAccess();
  sub_1CEF4C510(v8, a3);
  swift_endAccess();
  v12 = *(a2 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_1CEF9EFD0;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF97304;
  aBlock[3] = &block_descriptor_221;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 requestMetadataWithCompletion_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF96D0C(uint64_t a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4)
{
  v9 = a4;
  v10 = a1;
  v11 = a2;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9EFD8;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F29C;
    *(v6 + 24) = v5;

    v13[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v13);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v12 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF96EE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t))
{
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v10, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return a6(a2, a3, a4);
}

uint64_t sub_1CEF96FD0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  swift_beginAccess();
  sub_1CEF9DB30(a1, v10);
  swift_endAccess();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1CEF3D55C(v10, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v10, v17, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v17, v15, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload() == 3)
  {
    (*(v5 + 32))(v7, v15, v4);
    v22 = v20;
    v23 = v21;
    sub_1CEF9EC14(v20, v21);
    sub_1CEFA84A0();
    (*(v5 + 8))(v7, v4);
    return sub_1CEF9ECD0(v17, type metadata accessor for XPCWrapper.Continuation);
  }

  else
  {
    sub_1CEF9ECD0(v15, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CEF97304(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = *(a1 + 32);
  if (a2)
  {

    v4 = v2;
    v2 = sub_1CEFA7F70();
    v6 = v5;
  }

  else
  {

    v6 = 0xF000000000000000;
  }

  v3(v2, v6);
  sub_1CEF81204(v2, v6);
}

uint64_t sub_1CEF9739C(uint64_t a1, uint64_t a2)
{
  *(v3 + 40) = v2;
  *(v3 + 48) = *a1;
  *(v3 + 64) = *(a1 + 16);
  *(v3 + 72) = sub_1CEF9F084(qword_1EDE38748, a2, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v5 = sub_1CEFA8480();
  *(v3 + 80) = v5;
  *(v3 + 88) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1CEF97484, v5, v4);
}

uint64_t sub_1CEF97484(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 40);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v8 + 64);
    v11 = *(v8 + 72);
    v16 = *(v8 + 48);
    *(v9 + 16) = v10 + 1;
    v13 = swift_task_alloc();
    *(v8 + 96) = v13;
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 32) = v16;
    *(v13 + 48) = v12;
    v14 = swift_task_alloc();
    *(v8 + 104) = v14;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA308, &unk_1CEFB3980);
    *v14 = v8;
    v14[1] = sub_1CEF975C8;
    a6 = sub_1CEF9EEA0;
    a1 = v8 + 16;
    a5 = 0x80000001CEFB6600;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000013;
    a7 = v13;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEF975C8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1CEF97804;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1CEF976E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEF976E4()
{
  v1 = v0[3];
  if (v1 >> 60 == 15)
  {
    v2 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v7 = v0[1];

    return v7(v2);
  }

  v3 = v0[2];
  v4 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA840, &unk_1CEFB3A18);
  sub_1CEF9EEB0();
  sub_1CEFA7DD0();
  sub_1CEF81204(v3, v1);
  if (!v4)
  {
    v2 = v0[4];
    goto LABEL_8;
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1CEF97804()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1CEF97868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = aBlock - v11;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v13, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  (*(*(v14 - 8) + 16))(v12, a1, v14);
  v15 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v15 - 8) + 56))(v12, 0, 1, v15);
  swift_beginAccess();
  sub_1CEF4C510(v12, a3);
  swift_endAccess();
  v16 = *(a2 + 72);
  swift_unknownObjectRetain();
  v17 = sub_1CEFA82F0();
  if (!a6)
  {
    sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  }

  v18 = sub_1CEFA82A0();

  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  aBlock[4] = sub_1CEF9EF68;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF97304;
  aBlock[3] = &block_descriptor_193;
  v20 = _Block_copy(aBlock);

  [v16 prefetchRequestWithWorkloadType:v17 workloadParameters:v18 completion:v20];
  _Block_release(v20);
  swift_unknownObjectRelease();
}

uint64_t sub_1CEF97B80(uint64_t a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4)
{
  v9 = a4;
  v10 = a1;
  v11 = a2;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9EF70;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F29C;
    *(v6 + 24) = v5;

    v13[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v13);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v12 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF97D5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, unsigned __int8 a11)
{
  v27 = a7;
  v29 = a9;
  v30 = a10;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v27 - v16;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v18, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v28 = a11;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  (*(*(v19 - 8) + 16))(v17, a1, v19);
  v20 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
  swift_beginAccess();
  sub_1CEF4C510(v17, a3);
  swift_endAccess();
  v21 = *(a2 + 72);
  swift_unknownObjectRetain();
  v22 = sub_1CEFA82F0();
  v23 = sub_1CEFA82A0();
  if (a8)
  {
    a8 = sub_1CEFA82F0();
  }

  v24 = sub_1CEFA82F0();
  v25 = swift_allocObject();
  *(v25 + 16) = a2;
  *(v25 + 24) = a3;
  aBlock[4] = sub_1CEF9EFA8;
  aBlock[5] = v25;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9F248;
  aBlock[3] = &block_descriptor_207;
  v26 = _Block_copy(aBlock);

  [v21 prewarmRequestWithWorkloadType:v22 workloadParameters:v23 bundleIdentifier:a8 featureIdentifier:v24 runOnEventStream:v28 & 1 completion:{v26, v27}];
  _Block_release(v26);
  swift_unknownObjectRelease();
}

uint64_t sub_1CEF98098(uint64_t isEscapingClosureAtFileLocation, uint64_t a2)
{
  v7 = a2;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1CEF9EFB0;
    *(v3 + 24) = &v6;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9F29C;
    *(v4 + 24) = v3;

    v9[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v9);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v8 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF98270(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for XPCWrapper.Continuation(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - v14;
  swift_beginAccess();
  sub_1CEF9DB30(a1, v8);
  swift_endAccess();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1CEF3D55C(v8, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v8, v15, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v15, v13, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1CEF9ECD0(v13, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  else
  {
    (*(v3 + 32))(v5, v13, v2);
    sub_1CEFA84A0();
    (*(v3 + 8))(v5, v2);
    return sub_1CEF9ECD0(v15, type metadata accessor for XPCWrapper.Continuation);
  }

  return result;
}

uint64_t sub_1CEF9858C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v9, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA828, &qword_1CEFB39F8);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  swift_beginAccess();
  sub_1CEF4C510(v8, a3);
  swift_endAccess();
  v12 = *(a2 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_1CEF9EE00;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF98D28;
  aBlock[3] = &block_descriptor_135;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 prefetchCacheWithCompletion_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF9881C(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3)
{
  v8 = a3;
  v9 = a1;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9EE08;
    *(v4 + 24) = &v7;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9F29C;
    *(v5 + 24) = v4;

    v11[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v11);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v10 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF989F4(uint64_t a1, uint64_t a2)
{
  v18[0] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA828, &qword_1CEFB39F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v18 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  v10 = type metadata accessor for XPCWrapper.Continuation(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v18 - v15;
  swift_beginAccess();
  sub_1CEF9DB30(a1, v9);
  swift_endAccess();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1CEF3D55C(v9, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v9, v16, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v16, v14, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload() == 5)
  {
    (*(v4 + 32))(v6, v14, v3);
    v18[1] = v18[0];

    sub_1CEFA84A0();
    (*(v4 + 8))(v6, v3);
    return sub_1CEF9ECD0(v16, type metadata accessor for XPCWrapper.Continuation);
  }

  else
  {
    sub_1CEF9ECD0(v14, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CEF98D28(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = sub_1CEFA8460();

  v2(v3);
}

uint64_t sub_1CEF98D98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v9, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA828, &qword_1CEFB39F8);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  swift_beginAccess();
  sub_1CEF4C510(v8, a3);
  swift_endAccess();
  v12 = *(a2 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_1CEF9EE78;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF98D28;
  aBlock[3] = &block_descriptor_177;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 prefetchParametersCacheWithCompletion_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF99028(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3)
{
  v8 = a3;
  v9 = a1;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9EE80;
    *(v4 + 24) = &v7;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9F29C;
    *(v5 + 24) = v4;

    v11[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v11);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v10 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF99200(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v6, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_1CEF989F4(a2, a3);
}

uint64_t sub_1CEF992D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v9, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA828, &qword_1CEFB39F8);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  swift_beginAccess();
  sub_1CEF4C510(v8, a3);
  swift_endAccess();
  v12 = *(a2 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_1CEF9EE50;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF98D28;
  aBlock[3] = &block_descriptor_163;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 prefetchParametersCacheSavedStateWithCompletion_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF99560(uint64_t a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3)
{
  v8 = a3;
  v9 = a1;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9EE58;
    *(v4 + 24) = &v7;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9F29C;
    *(v5 + 24) = v4;

    v11[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v11);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v10 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF99738(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v9, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA838, &qword_1CEFB3A08);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  swift_beginAccess();
  sub_1CEF4C510(v8, a3);
  swift_endAccess();
  v12 = *(a2 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_1CEF9EE28;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF99F9C;
  aBlock[3] = &block_descriptor_149;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 prefetchCacheResetWithCompletion_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_1CEF999C8(char a1, uint64_t isEscapingClosureAtFileLocation, uint64_t a3)
{
  v8 = a3;
  v9 = a1;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9EE30;
    *(v4 + 24) = &v7;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9F29C;
    *(v5 + 24) = v4;

    v11[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v11);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v10 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF99BA4(uint64_t a1, uint64_t a2, char a3)
{
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v5, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_1CEF99C68(a2, a3 & 1);
}

uint64_t sub_1CEF99C68(uint64_t a1, int a2)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA838, &qword_1CEFB3A08);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18[-v5];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18[-v8];
  v10 = type metadata accessor for XPCWrapper.Continuation(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v18[-v15];
  swift_beginAccess();
  sub_1CEF9DB30(a1, v9);
  swift_endAccess();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    return sub_1CEF3D55C(v9, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v9, v16, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v16, v14, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v14, v3);
    v20 = v19 & 1;
    sub_1CEFA84A0();
    (*(v4 + 8))(v6, v3);
    return sub_1CEF9ECD0(v16, type metadata accessor for XPCWrapper.Continuation);
  }

  else
  {
    sub_1CEF9ECD0(v14, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  return result;
}

uint64_t sub_1CEF99F9C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_1CEF99FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8)
{
  v23 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v16, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  (*(*(v17 - 8) + 16))(v15, a1, v17);
  v18 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  swift_beginAccess();
  sub_1CEF4C510(v15, a3);
  swift_endAccess();
  v19 = *(a2 + 72);
  if (!a5)
  {
    swift_unknownObjectRetain();
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  swift_unknownObjectRetain();
  a5 = sub_1CEFA82F0();
  if (a7)
  {
LABEL_5:
    a7 = sub_1CEFA82F0();
  }

LABEL_6:
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  aBlock[4] = sub_1CEF9EDC0;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF97304;
  aBlock[3] = &block_descriptor_121;
  v21 = _Block_copy(aBlock);

  [v19 knownRateLimitsWithBundleIdentifier:a5 featureIdentifier:a7 skipFetch:v23 & 1 completion:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

uint64_t sub_1CEF9A2F0(uint64_t a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4)
{
  v9 = a4;
  v10 = a1;
  v11 = a2;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9EDC8;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F29C;
    *(v6 + 24) = v5;

    v13[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v13);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v12 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF9A4CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, int a8)
{
  v23 = a8;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v16, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  (*(*(v17 - 8) + 16))(v15, a1, v17);
  v18 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v18 - 8) + 56))(v15, 0, 1, v18);
  swift_beginAccess();
  sub_1CEF4C510(v15, a3);
  swift_endAccess();
  v19 = *(a2 + 72);
  if (!a5)
  {
    swift_unknownObjectRetain();
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  swift_unknownObjectRetain();
  a5 = sub_1CEFA82F0();
  if (a7)
  {
LABEL_5:
    a7 = sub_1CEFA82F0();
  }

LABEL_6:
  v20 = swift_allocObject();
  *(v20 + 16) = a2;
  *(v20 + 24) = a3;
  aBlock[4] = sub_1CEF9EBD4;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF97304;
  aBlock[3] = &block_descriptor_70;
  v21 = _Block_copy(aBlock);

  [v19 listRateLimitsWithBundleIdentifier:a5 featureIdentifier:a7 fetch:v23 & 1 completion:v21];
  _Block_release(v21);
  swift_unknownObjectRelease();
}

uint64_t sub_1CEF9A7CC(uint64_t a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4)
{
  v9 = a4;
  v10 = a1;
  v11 = a2;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9EBDC;
    *(v5 + 24) = &v8;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F29C;
    *(v6 + 24) = v5;

    v13[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v13);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v13[0] = 0;
  v13[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v12 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

void sub_1CEF9A9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, uint64_t a8, double a9, double a10, double a11, void *a12, uint64_t a13)
{
  v32[1] = a8;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v32 - v22;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v24, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  (*(*(v25 - 8) + 16))(v23, a1, v25);
  v26 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v26 - 8) + 56))(v23, 0, 1, v26);
  swift_beginAccess();
  sub_1CEF4C510(v23, a3);
  swift_endAccess();
  v27 = *(a2 + 72);
  if (a5)
  {
    swift_unknownObjectRetain();
    a5 = sub_1CEFA82F0();
    v28 = a12;
    v29 = a13;
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  swift_unknownObjectRetain();
  v28 = a12;
  v29 = a13;
  if (a7)
  {
LABEL_5:
    a7 = sub_1CEFA82F0();
  }

LABEL_6:
  if (v28)
  {
    v28 = sub_1CEFA82F0();
  }

  v30 = swift_allocObject();
  *(v30 + 16) = a2;
  *(v30 + 24) = a3;
  aBlock[4] = sub_1CEF9EBAC;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9F248;
  aBlock[3] = &block_descriptor_56;
  v31 = _Block_copy(aBlock);

  [v27 addRateLimitWithBundleIdentifier:a5 featureIdentifier:a7 workloadType:v28 count:v29 duration:v31 ttl:a9 jitter:a10 completion:a11];
  _Block_release(v31);
  swift_unknownObjectRelease();
}

void sub_1CEF9ACF0(uint64_t isEscapingClosureAtFileLocation, uint64_t a2)
{
  v6 = a2;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1CEF9EBB4;
    *(v3 + 24) = &v5;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9F29C;
    *(v4 + 24) = v3;

    v8[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v8);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v7 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  sub_1CEFA86C0();
  __break(1u);
}

uint64_t sub_1CEF9AEC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v4, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  return sub_1CEF98270(a2);
}

uint64_t sub_1CEF9AF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v9, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  swift_beginAccess();
  sub_1CEF4C510(v8, a3);
  swift_endAccess();
  v12 = *(a2 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_1CEF9EB84;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9F248;
  aBlock[3] = &block_descriptor_42;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 resetRateLimitsWithCompletion_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

void sub_1CEF9B218(uint64_t isEscapingClosureAtFileLocation, uint64_t a2)
{
  v6 = a2;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v3 = swift_allocObject();
    *(v3 + 16) = sub_1CEF9EB8C;
    *(v3 + 24) = &v5;
    v4 = swift_allocObject();
    *(v4 + 16) = sub_1CEF9F29C;
    *(v4 + 24) = v3;

    v8[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v8);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v8[0] = 0;
  v8[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v7 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  sub_1CEFA86C0();
  __break(1u);
}

uint64_t sub_1CEF9B3F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v9, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7F8, &unk_1CEFB39C0);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  swift_beginAccess();
  sub_1CEF4C510(v8, a3);
  swift_endAccess();
  v12 = *(a2 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_1CEF9EB44;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9BB90;
  aBlock[3] = &block_descriptor_28;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 fetchServerDrivenConfigurationWithCompletion_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

void sub_1CEF9B680(uint64_t a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4)
{
  v8 = a4;
  v9 = a1;
  v10 = a2;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9EB4C;
    *(v5 + 24) = &v7;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F29C;
    *(v6 + 24) = v5;

    v12[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v12);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v11 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  sub_1CEFA86C0();
  __break(1u);
}

uint64_t sub_1CEF9B85C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v20 = a2;
  v21 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7F8, &unk_1CEFB39C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v19 - v16;
  swift_beginAccess();
  sub_1CEF9DB30(a1, v10);
  swift_endAccess();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    return sub_1CEF3D55C(v10, &qword_1EC4A93D0, &unk_1CEFAB9B8);
  }

  sub_1CEF9ED30(v10, v17, type metadata accessor for XPCWrapper.Continuation);
  sub_1CEF9EC68(v17, v15, type metadata accessor for XPCWrapper.Continuation);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    (*(v5 + 32))(v7, v15, v4);
    v22 = v20;
    v23 = v21;
    sub_1CEF43738(v20, v21);
    sub_1CEFA84A0();
    (*(v5 + 8))(v7, v4);
    return sub_1CEF9ECD0(v17, type metadata accessor for XPCWrapper.Continuation);
  }

  else
  {
    sub_1CEF9ECD0(v15, type metadata accessor for XPCWrapper.Continuation);
    result = sub_1CEFA86C0();
    __break(1u);
  }

  return result;
}

double sub_1CEF9BB90(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = sub_1CEFA7F70();
  v7 = v6;

  v3(v5, v7);
  sub_1CEF41BE0(v5, v7);

  return result;
}

uint64_t sub_1CEF9BC18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = aBlock - v7;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v9, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7F8, &unk_1CEFB39C0);
  (*(*(v10 - 8) + 16))(v8, a1, v10);
  v11 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v11 - 8) + 56))(v8, 0, 1, v11);
  swift_beginAccess();
  sub_1CEF4C510(v8, a3);
  swift_endAccess();
  v12 = *(a2 + 72);
  v13 = swift_allocObject();
  *(v13 + 16) = a2;
  *(v13 + 24) = a3;
  aBlock[4] = sub_1CEF9EB04;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9BB90;
  aBlock[3] = &block_descriptor_14;
  v14 = _Block_copy(aBlock);
  swift_unknownObjectRetain();

  [v12 listServerDrivenConfigurationWithCompletion_];
  _Block_release(v14);
  return swift_unknownObjectRelease();
}

void sub_1CEF9BEA8(uint64_t a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4)
{
  v8 = a4;
  v9 = a1;
  v10 = a2;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9EB0C;
    *(v5 + 24) = &v7;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F29C;
    *(v6 + 24) = v5;

    v12[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v12);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v11 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  sub_1CEFA86C0();
  __break(1u);
}

void sub_1CEF9C084(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = aBlock - v9;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v11, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA7F8, &unk_1CEFB39C0);
  (*(*(v12 - 8) + 16))(v10, a1, v12);
  v13 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  swift_beginAccess();
  sub_1CEF4C510(v10, a3);
  swift_endAccess();
  v14 = *(a2 + 72);
  swift_unknownObjectRetain();
  v15 = sub_1CEFA7F60();
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  *(v16 + 24) = a3;
  aBlock[4] = sub_1CEF9DFD0;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9BB90;
  aBlock[3] = &block_descriptor_0;
  v17 = _Block_copy(aBlock);

  [v14 setServerDrivenConfigurationWithJson:v15 completion:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();
}

void sub_1CEF9C33C(uint64_t a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4)
{
  v8 = a4;
  v9 = a1;
  v10 = a2;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9DFF0;
    *(v5 + 24) = &v7;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9E150;
    *(v6 + 24) = v5;

    v12[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9EAD8(v12);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v11 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  sub_1CEFA86C0();
  __break(1u);
}

void sub_1CEF9C518(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, char a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = aBlock - v13;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v15, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA800, &qword_1CEFB39D0);
  (*(*(v16 - 8) + 16))(v14, a1, v16);
  v17 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v17 - 8) + 56))(v14, 0, 1, v17);
  swift_beginAccess();
  sub_1CEF4C510(v14, a3);
  swift_endAccess();
  v18 = sub_1CEFA7F60();
  v19 = swift_allocObject();
  *(v19 + 16) = a2;
  *(v19 + 24) = a3;
  aBlock[4] = sub_1CEF9ED98;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF97304;
  aBlock[3] = &block_descriptor_107;
  v20 = _Block_copy(aBlock);

  [a4 sendWithData:v18 isComplete:a7 & 1 completion:v20];
  _Block_release(v20);
}

void sub_1CEF9C7D0(uint64_t a1, uint64_t a2, uint64_t isEscapingClosureAtFileLocation, uint64_t a4)
{
  v8 = a1;
  v9 = a2;
  v10 = a4;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1CEF9EDA0;
    *(v5 + 24) = &v7;
    v6 = swift_allocObject();
    *(v6 + 16) = sub_1CEF9F29C;
    *(v6 + 24) = v5;

    v12[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v12);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v11 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  sub_1CEFA86C0();
  __break(1u);
}

void sub_1CEF9C9AC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v37 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v36 = &v34 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA818, &unk_1CEFB3C40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - v10;
  v12 = type metadata accessor for PrivateCloudComputeError(0);
  v13 = *(v12 - 1);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v34 - v17;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v19, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v38 = a1;
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3 >> 60 == 15)
  {
    sub_1CEF98270(v37);
  }

  else
  {
    sub_1CEF9EC14(a2, a3);
    sub_1CEF43738(a2, a3);
    sub_1CEF9FE3C(a2, a3, v11);
    if ((*(v13 + 48))(v11, 1, v12) == 1)
    {
      sub_1CEF3D55C(v11, &qword_1EC4AA818, &unk_1CEFB3C40);
      v20 = sub_1CEFA8030();
      v34 = *(*(v20 - 8) + 56);
      v35 = a2;
      v21 = v36;
      v34(v36, 1, 1, v20);
      v39 = 0;
      v40 = 0xE000000000000000;
      sub_1CEFA8650();

      v39 = 0xD000000000000025;
      v40 = 0x80000001CEFB65B0;
      v22 = sub_1CEFA8660();
      MEMORY[0x1D38665A0](v22);

      MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
      v41 = 431;
      v23 = sub_1CEFA8910();
      MEMORY[0x1D38665A0](v23);

      v24 = v39;
      v25 = v40;
      v26 = v12[5];
      v34(&v16[v26], 1, 1, v20);
      v27 = &v16[v12[6]];
      v28 = &v16[v12[7]];
      *v16 = 21;
      sub_1CEF3D4EC(v21, &v16[v26]);
      *v27 = 0;
      v27[1] = 0;
      *v28 = v24;
      v28[1] = v25;
      sub_1CEF3D55C(v21, &qword_1EC4A8F20, &unk_1CEFAB3E0);
      *&v16[v12[8]] = MEMORY[0x1E69E7CC0];
      sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
      v29 = swift_allocError();
      sub_1CEF9EC68(v16, v30, type metadata accessor for PrivateCloudComputeError);
      sub_1CEF95774(v37, v29);
      sub_1CEF81204(v35, a3);
      sub_1CEF9ECD0(v16, type metadata accessor for PrivateCloudComputeError);
      v31 = v29;
    }

    else
    {
      sub_1CEF9ED30(v11, v18, type metadata accessor for PrivateCloudComputeError);
      sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
      v32 = swift_allocError();
      sub_1CEF9EC68(v18, v33, type metadata accessor for PrivateCloudComputeError);
      sub_1CEF95774(v37, v32);
      sub_1CEF81204(a2, a3);
      sub_1CEF9ECD0(v18, type metadata accessor for PrivateCloudComputeError);
      v31 = v32;
    }
  }
}

void sub_1CEF9CEE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A93D0, &unk_1CEFAB9B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = aBlock - v9;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v11, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA808, &qword_1CEFB39D8);
  (*(*(v12 - 8) + 16))(v10, a1, v12);
  v13 = type metadata accessor for XPCWrapper.Continuation(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  swift_beginAccess();
  sub_1CEF4C510(v10, a3);
  swift_endAccess();
  v14 = swift_allocObject();
  *(v14 + 16) = a2;
  *(v14 + 24) = a3;
  aBlock[4] = sub_1CEF9EC3C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1CEF9D89C;
  aBlock[3] = &block_descriptor_93;
  v15 = _Block_copy(aBlock);

  [a4 nextWithCompletion_];
  _Block_release(v15);
}

void sub_1CEF9D170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t isEscapingClosureAtFileLocation, uint64_t a6)
{
  v10 = a3;
  v11 = a4;
  v12 = a6;
  v13 = a1;
  v14 = a2;
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v7 = swift_allocObject();
    *(v7 + 16) = sub_1CEF9EC44;
    *(v7 + 24) = &v9;
    v8 = swift_allocObject();
    *(v8 + 16) = sub_1CEF9F29C;
    *(v8 + 24) = v7;

    v16[0] = isEscapingClosureAtFileLocation;
    sub_1CEF9F230(v16);

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();

    __break(1u);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  v15 = isEscapingClosureAtFileLocation;
  type metadata accessor for XPCWrapper();
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  sub_1CEFA86C0();
  __break(1u);
}

void sub_1CEF9D350(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v39 = a5;
  v40 = a6;
  v41 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A8F20, &unk_1CEFAB3E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v38 = &v38 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA818, &unk_1CEFB3C40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for PrivateCloudComputeError(0);
  v15 = *(v14 - 1);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v38 - v19;
  type metadata accessor for XPCWrapper();
  sub_1CEF9F084(qword_1EDE38748, v21, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v42 = a1;
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a3 >> 60 == 15)
  {
    sub_1CEF96FD0(v41, v39, v40);
  }

  else
  {
    v22 = a2;
    sub_1CEF9EC14(a2, a3);
    sub_1CEF43738(a2, a3);
    sub_1CEF9FE3C(a2, a3, v13);
    if ((*(v15 + 48))(v13, 1, v14) == 1)
    {
      sub_1CEF3D55C(v13, &qword_1EC4AA818, &unk_1CEFB3C40);
      v23 = sub_1CEFA8030();
      v24 = *(*(v23 - 8) + 56);
      v40 = a3;
      v25 = v38;
      v24(v38, 1, 1, v23);
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_1CEFA8650();

      v43 = 0xD000000000000029;
      v44 = 0x80000001CEFB6580;
      v26 = sub_1CEFA8660();
      MEMORY[0x1D38665A0](v26);

      MEMORY[0x1D38665A0](0x3D656E696C202CLL, 0xE700000000000000);
      v45 = 457;
      v27 = sub_1CEFA8910();
      MEMORY[0x1D38665A0](v27);

      v28 = v43;
      v29 = v44;
      v39 = v22;
      v30 = v14[5];
      v24(&v18[v30], 1, 1, v23);
      v31 = &v18[v14[6]];
      v32 = &v18[v14[7]];
      *v18 = 21;
      sub_1CEF3D4EC(v25, &v18[v30]);
      *v31 = 0;
      v31[1] = 0;
      *v32 = v28;
      v32[1] = v29;
      sub_1CEF3D55C(v25, &qword_1EC4A8F20, &unk_1CEFAB3E0);
      *&v18[v14[8]] = MEMORY[0x1E69E7CC0];
      sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
      v33 = swift_allocError();
      sub_1CEF9EC68(v18, v34, type metadata accessor for PrivateCloudComputeError);
      sub_1CEF95774(v41, v33);
      sub_1CEF81204(v39, v40);
      sub_1CEF9ECD0(v18, type metadata accessor for PrivateCloudComputeError);
      v35 = v33;
    }

    else
    {
      sub_1CEF9ED30(v13, v20, type metadata accessor for PrivateCloudComputeError);
      sub_1CEF9F084(&qword_1EDE38038, 255, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
      v36 = swift_allocError();
      sub_1CEF9EC68(v20, v37, type metadata accessor for PrivateCloudComputeError);
      sub_1CEF95774(v41, v36);
      sub_1CEF81204(a2, a3);
      sub_1CEF9ECD0(v20, type metadata accessor for PrivateCloudComputeError);
      v35 = v36;
    }
  }
}

double sub_1CEF9D89C(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1CEFA7F70();
    v8 = v7;

    if (a3)
    {
LABEL_3:
      v9 = a3;
      a3 = sub_1CEFA7F70();
      v11 = v10;

      goto LABEL_6;
    }
  }

  else
  {

    v8 = 0xF000000000000000;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v11 = 0xF000000000000000;
LABEL_6:
  v5(v4, v8, a3, v11);
  sub_1CEF81204(a3, v11);
  sub_1CEF81204(v4, v8);

  return result;
}

uint64_t sub_1CEF9D97C(void *a1)
{
  sub_1CEFA85A0();
  if (swift_task_isCurrentExecutor())
  {
    v2 = swift_allocObject();
    *(v2 + 16) = sub_1CEF9E05C;
    *(v2 + 24) = 0;
    v4[0] = a1;
    sub_1CEF9F230(v4);

    result = swift_isEscapingClosureAtFileLocation();
    if ((result & 1) == 0)
    {
      return result;
    }

    __break(1u);

    swift_isEscapingClosureAtFileLocation();
    __break(1u);
  }

  v4[0] = 0;
  v4[1] = 0xE000000000000000;
  sub_1CEFA8650();
  MEMORY[0x1D38665A0](0xD00000000000003FLL, 0x80000001CEFB6500);
  sub_1CEFA86A0();
  MEMORY[0x1D38665A0](46, 0xE100000000000000);
  result = sub_1CEFA86C0();
  __break(1u);
  return result;
}

uint64_t sub_1CEF9DB30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1CEF9E1E4(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1CEF9E8A0();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for XPCWrapper.Continuation(0);
    v18 = *(v11 - 8);
    sub_1CEF9ED30(v10 + *(v18 + 72) * v7, a2, type metadata accessor for XPCWrapper.Continuation);
    sub_1CEF9E3D8(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for XPCWrapper.Continuation(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1CEF9DC8C()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDC0](v0, 88, 7);
}

uint64_t type metadata accessor for XPCWrapper.Continuation(uint64_t a1)
{
  result = qword_1EDE387C0;
  if (!qword_1EDE387C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1CEF9DD54(uint64_t a1)
{
  sub_1CEF9DEB8(319, &qword_1EDE385A0, MEMORY[0x1E69E7CA8] + 8);
  if (v1 <= 0x3F)
  {
    sub_1CEF9DEB8(319, &qword_1EDE385A8, MEMORY[0x1E69E6370]);
    if (v2 <= 0x3F)
    {
      sub_1CEF9DEB8(319, &qword_1EDE385C8, MEMORY[0x1E6969080]);
      if (v3 <= 0x3F)
      {
        sub_1CEF9DF2C(319, &qword_1EDE385D0, &qword_1EC4AA308, &unk_1CEFB3980);
        if (v4 <= 0x3F)
        {
          sub_1CEF9DEB8(319, &qword_1EDE385B8, MEMORY[0x1E69E6158]);
          if (v5 <= 0x3F)
          {
            sub_1CEF9DF2C(319, &qword_1EDE385B0, &qword_1EC4A9380, &qword_1CEFAC540);
            if (v6 <= 0x3F)
            {
              sub_1CEF9DF2C(319, &qword_1EDE385C0, &qword_1EC4A9498, &qword_1CEFAC038);
              if (v7 <= 0x3F)
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

void sub_1CEF9DEB8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
    v4 = sub_1CEFA84B0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1CEF9DF2C(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4A9348, &unk_1CEFAB3D0);
    v5 = sub_1CEFA84B0();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1CEF9E078(uint64_t *a1, uint64_t a2)
{
  sub_1CEF9F084(qword_1EDE38748, a2, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  sub_1CEFA8480();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1CEF93C78();
}

unint64_t sub_1CEF9E178(uint64_t a1, uint64_t a2)
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

unint64_t sub_1CEF9E1E4(uint64_t a1)
{
  v2 = sub_1CEFA89F0();

  return sub_1CEF9E178(a1, v2);
}

uint64_t sub_1CEF9E228(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CEFA8620() + 1) & ~v5;
    do
    {
      sub_1CEFA8A00();

      sub_1CEFA8340();
      v9 = sub_1CEFA8A40();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1CEF9E3D8(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1CEFA8620() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_1CEFA89F0();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(type metadata accessor for XPCWrapper.Continuation(0) - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1CEF9E584()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9338, &unk_1CEFAB3C0);
  v2 = *v0;
  v3 = sub_1CEFA86D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1CEF37314(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1CEF49BC0(v25, (*(v4 + 56) + v22));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }
}

void sub_1CEF9E728()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9070, &unk_1CEFAA490);
  v2 = *v0;
  v3 = sub_1CEFA86D0();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void sub_1CEF9E8A0()
{
  v1 = v0;
  v2 = type metadata accessor for XPCWrapper.Continuation(0);
  v27 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v26 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9300, &qword_1CEFAB9E0);
  v4 = *v0;
  v5 = sub_1CEFA86D0();
  v6 = v5;
  if (*(v4 + 16))
  {
    v25 = v1;
    v7 = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || v7 >= v8 + 8 * v9)
    {
      memmove(v7, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v28 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = *(v4 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = *(*(v4 + 48) + 8 * v20);
        v22 = v26;
        v23 = *(v27 + 72) * v20;
        sub_1CEF9EC68(*(v4 + 56) + v23, v26, type metadata accessor for XPCWrapper.Continuation);
        v24 = v28;
        *(*(v28 + 48) + 8 * v20) = v21;
        sub_1CEF9ED30(v22, *(v24 + 56) + v23, type metadata accessor for XPCWrapper.Continuation);
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v25;
        v6 = v28;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
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
    *v1 = v6;
  }
}

uint64_t sub_1CEF9EC14(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1CEF43738(result, a2);
  }

  return result;
}

uint64_t sub_1CEF9EC68(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1CEF9ECD0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1CEF9ED30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CEF9EEB0()
{
  result = qword_1EC4AA848;
  if (!qword_1EC4AA848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4AA840, &unk_1CEFB3A18);
    sub_1CEF9F084(&qword_1EC4AA850, 255, type metadata accessor for Prefetch.Response, &protocol conformance descriptor for Prefetch.Response);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA848);
  }

  return result;
}

unint64_t sub_1CEF9F038()
{
  result = qword_1EDE38590;
  if (!qword_1EDE38590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDE38590);
  }

  return result;
}

uint64_t sub_1CEF9F084(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CEF9F0CC(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1CEF9F128(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA868, &qword_1CEFB3A38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t tc2Logger(forCategory:)()
{
  TC2LogCategory.rawValue.getter();

  return sub_1CEFA8210();
}

PrivateCloudCompute::TC2LogCategory_optional __swiftcall TC2LogCategory.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CEFA8980();

  v5 = 0;
  v6 = 2;
  switch(v3)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v5 = 1;
LABEL_3:
      v6 = v5;
      break;
    case 2:
      break;
    case 3:
      v6 = 3;
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    default:
      v6 = 20;
      break;
  }

  *v2 = v6;
  return result;
}

unint64_t TC2LogCategory.rawValue.getter()
{
  result = 0x6E6F6D656144;
  switch(*v0)
  {
    case 1:
      result = 0x5264657473757254;
      break;
    case 2:
      result = 0xD000000000000016;
      break;
    case 3:
      result = 0x746E65696C43;
      break;
    case 4:
      result = 0x72756769666E6F43;
      break;
    case 5:
      result = 1819242324;
      break;
    case 6:
      result = 0x656C756465686353;
      break;
    case 7:
      result = 0x6B726F7774654ELL;
      break;
    case 8:
      result = 0xD000000000000010;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 0xA:
      result = 0x7473655474696E55;
      break;
    case 0xB:
      result = 0x6863746566657250;
      break;
    case 0xC:
      result = 0x786F62646E6153;
      break;
    case 0xD:
      result = 0x655263697274654DLL;
      break;
    case 0xE:
      result = 0x696D694C65746152;
      break;
    case 0xF:
      result = 0xD000000000000010;
      break;
    case 0x10:
      result = 0xD000000000000012;
      break;
    case 0x11:
      result = 0x6F72506E656B6F54;
      break;
    case 0x12:
      result = 0xD000000000000018;
      break;
    case 0x13:
      result = 0x4C74736575716552;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1CEF9F6AC()
{
  v0 = TC2LogCategory.rawValue.getter();
  v2 = v1;
  if (v0 == TC2LogCategory.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1CEFA8950();
  }

  return v5 & 1;
}

unint64_t sub_1CEF9F74C()
{
  result = qword_1EC4AA880;
  if (!qword_1EC4AA880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA880);
  }

  return result;
}

uint64_t sub_1CEF9F7A0()
{
  sub_1CEFA8A00();
  TC2LogCategory.rawValue.getter();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

uint64_t sub_1CEF9F808(uint64_t a1)
{
  TC2LogCategory.rawValue.getter();
  sub_1CEFA8340();
}

uint64_t sub_1CEF9F86C(uint64_t a1)
{
  sub_1CEFA8A00();
  TC2LogCategory.rawValue.getter();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

unint64_t sub_1CEF9F8DC@<X0>(unint64_t *a1@<X8>)
{
  result = TC2LogCategory.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for TC2LogCategory(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TC2LogCategory(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TC2Client.__allocating_init(userID:)(unint64_t a1)
{
  v2 = swift_allocObject();
  type metadata accessor for XPCWrapper();
  swift_allocObject();
  *(v2 + 16) = sub_1CEF9360C(a1 | ((HIDWORD(a1) & 1) << 32));
  return v2;
}

uint64_t sub_1CEF9FAE8()
{
  v0[5] = *(v0[4] + 16);
  type metadata accessor for XPCWrapper();
  v0[6] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[7] = v2;
  v0[8] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEF9FBAC, v2, v1);
}

uint64_t sub_1CEF9FBAC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[5];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[6];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[9] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = swift_task_alloc();
    v8[10] = v13;
    *v13 = v8;
    v13[1] = sub_1CEF9FCC4;
    a8 = MEMORY[0x1E69E6158];
    a6 = sub_1CEFA4BE8;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB6970;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000014;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEF9FCC4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1CEF9FE20;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1CEF9FE08;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEF9FE3C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CEFA8220();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA818, &unk_1CEFB3C40);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  sub_1CEFA7DF0();
  swift_allocObject();
  sub_1CEFA7DE0();
  v10 = type metadata accessor for PrivateCloudComputeError(0);
  sub_1CEFA4A30(&qword_1EC4AA8C0, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  sub_1CEFA4A78(v9, a3, type metadata accessor for PrivateCloudComputeError);
  return (v11)(a3, 0, 1, v10);
}

uint64_t sub_1CEFA0254(uint64_t a1, unint64_t a2)
{
  v4 = sub_1CEFA8220();
  MEMORY[0x1EEE9AC00](v4);
  sub_1CEFA7DF0();
  swift_allocObject();
  sub_1CEFA7DE0();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA8C8, &qword_1CEFB3C80);
  sub_1CEFA4AE0();
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  return v6;
}

uint64_t sub_1CEFA04F4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CEFA8220();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA8B0, &qword_1CEFB3C38);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  sub_1CEFA7DF0();
  swift_allocObject();
  sub_1CEFA7DE0();
  v10 = type metadata accessor for TrustedCloudComputeError(0);
  sub_1CEFA4A30(&qword_1EC4AA8B8, type metadata accessor for TrustedCloudComputeError, &protocol conformance descriptor for TrustedCloudComputeError);
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  sub_1CEFA4A78(v9, a3, type metadata accessor for TrustedCloudComputeError);
  return (v11)(a3, 0, 1, v10);
}

uint64_t sub_1CEFA08EC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CEFA8220();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA8A0, &qword_1CEFB3C30);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  sub_1CEFA7DF0();
  swift_allocObject();
  sub_1CEFA7DE0();
  v10 = type metadata accessor for TrustedCloudComputeRateLimit(0);
  sub_1CEFA4A30(&qword_1EC4AA8A8, type metadata accessor for TrustedCloudComputeRateLimit, &protocol conformance descriptor for TrustedCloudComputeRateLimit);
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  sub_1CEFA4A78(v9, a3, type metadata accessor for TrustedCloudComputeRateLimit);
  return (v11)(a3, 0, 1, v10);
}

void sub_1CEFA0CE4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CEFA8220();
  MEMORY[0x1EEE9AC00](v6);
  sub_1CEFA7DF0();
  swift_allocObject();
  sub_1CEFA7DE0();
  sub_1CEF8C0A4();
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  nullsub_1();
  v7 = v18;
  *(a3 + 96) = v17;
  *(a3 + 112) = v7;
  *(a3 + 128) = v19;
  *(a3 + 144) = v20;
  v8 = v14;
  *(a3 + 32) = v13;
  *(a3 + 48) = v8;
  v9 = v16;
  *(a3 + 64) = v15;
  *(a3 + 80) = v9;
  v10 = v12;
  *a3 = v11;
  *(a3 + 16) = v10;
  nullsub_1();
}

uint64_t sub_1CEFA109C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CEFA8220();
  MEMORY[0x1EEE9AC00](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA890, &qword_1CEFB3C20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  sub_1CEFA7DF0();
  swift_allocObject();
  sub_1CEFA7DE0();
  v10 = type metadata accessor for TC2TrustedRequestMetadata(0);
  sub_1CEFA4A30(&qword_1EC4AA6F0, type metadata accessor for TC2TrustedRequestMetadata, &protocol conformance descriptor for TC2TrustedRequestMetadata);
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  v11 = *(*(v10 - 8) + 56);
  v11(v9, 0, 1, v10);
  sub_1CEFA4A78(v9, a3, type metadata accessor for TC2TrustedRequestMetadata);
  return (v11)(a3, 0, 1, v10);
}

void sub_1CEFA14B4(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void *a5@<X8>)
{
  v9 = sub_1CEFA8220();
  MEMORY[0x1EEE9AC00](v9);
  sub_1CEFA7DF0();
  swift_allocObject();
  sub_1CEFA7DE0();
  a3();
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  *a5 = v10;
}

double sub_1CEFA1764@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1CEFA8220();
  MEMORY[0x1EEE9AC00](v6);
  sub_1CEFA7DF0();
  swift_allocObject();
  sub_1CEFA7DE0();
  sub_1CEFA4978();
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  *a3 = v8;
  result = *&v9;
  *(a3 + 8) = v9;
  return result;
}

uint64_t TC2Client.requestMetadata()(uint64_t a1)
{
  *(v2 + 32) = a1;
  *(v2 + 40) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1CEFA1A44, 0, 0);
}

uint64_t sub_1CEFA1A44()
{
  v0[6] = *(v0[5] + 16);
  type metadata accessor for XPCWrapper();
  v0[7] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[8] = v2;
  v0[9] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA1B08, v2, v1);
}

uint64_t sub_1CEFA1B08(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[6];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[7];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[10] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = swift_task_alloc();
    v8[11] = v13;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA308, &unk_1CEFB3980);
    *v13 = v8;
    v13[1] = sub_1CEFA1C30;
    a6 = sub_1CEFA33BC;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB6730;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000011;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA1C30()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1CEFA1E34;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1CEFA1D74;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEFA1D98()
{
  v1 = *(v0 + 104);
  if (v1 >> 60 == 15)
  {
    **(v0 + 32) = 0;
  }

  else
  {
    sub_1CEFA14B4(*(v0 + 96), v1, sub_1CEFA4B94, *(v0 + 32));
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t TC2Client.prewarm(request:bundleIdentifier:featureIdentifier:runOnEventStream:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 136) = a6;
  *(v7 + 32) = a4;
  *(v7 + 40) = a5;
  *(v7 + 16) = a2;
  *(v7 + 24) = a3;
  v8 = *a1;
  v9 = a1[1];
  *(v7 + 48) = v6;
  *(v7 + 56) = v8;
  v10 = a1[2];
  *(v7 + 64) = v9;
  *(v7 + 72) = v10;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA1EF0, 0, 0);
}

uint64_t sub_1CEFA1EF0()
{
  v1 = v0[9];
  v0[10] = *(v0[6] + 16);
  if (!v1)
  {
    v1 = sub_1CEF5311C(MEMORY[0x1E69E7CC0]);
  }

  v0[11] = v1;
  type metadata accessor for XPCWrapper();
  v0[12] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v3 = sub_1CEFA8480();
  v0[13] = v3;
  v0[14] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA1FCC, v3, v2);
}

uint64_t sub_1CEFA1FCC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 80);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v12 = *(v8 + 88);
    v11 = *(v8 + 96);
    v13 = *(v8 + 136);
    v14 = *(v8 + 40);
    v18 = *(v8 + 24);
    v19 = *(v8 + 56);
    v15 = *(v8 + 16);
    *(v9 + 16) = v10 + 1;
    v16 = swift_task_alloc();
    *(v8 + 120) = v16;
    *(v16 + 16) = v9;
    *(v16 + 24) = v10;
    *(v16 + 32) = v19;
    *(v16 + 48) = v12;
    *(v16 + 56) = v15;
    *(v16 + 64) = v18;
    *(v16 + 80) = v14;
    *(v16 + 88) = v13;
    a1 = swift_task_alloc();
    *(v8 + 128) = a1;
    *a1 = v8;
    a1[1] = sub_1CEFA2120;
    a6 = sub_1CEF5A0C0;
    a5 = 0x80000001CEFB5270;
    a8 = MEMORY[0x1E69E7CA8] + 8;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000064;
    a7 = v16;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA2120()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 104);
  v4 = *(v2 + 112);

  return MEMORY[0x1EEE6DFA0](sub_1CEFA4BF8, v3, v4);
}

uint64_t TC2Client.prefetch(request:)(uint64_t a1)
{
  *(v2 + 40) = v1;
  *(v2 + 48) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1CEFA22C0, 0, 0);
}

uint64_t sub_1CEFA22C0()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = *(v0 + 48);
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = sub_1CEF59794;

  return sub_1CEF9739C(v0 + 16, v3);
}

uint64_t sub_1CEFA238C()
{
  v0[4] = *(v0[3] + 16);
  type metadata accessor for XPCWrapper();
  v0[5] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[6] = v2;
  v0[7] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA2450, v2, v1);
}

uint64_t sub_1CEFA2450(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[4];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[5];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[8] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = swift_task_alloc();
    v8[9] = v13;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
    *v13 = v8;
    v13[1] = sub_1CEFA2578;
    a6 = sub_1CEFA4844;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB6750;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000019;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA2578()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1CEFA4BFC;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1CEFA4C04;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEFA26DC()
{
  v0[4] = *(v0[3] + 16);
  type metadata accessor for XPCWrapper();
  v0[5] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[6] = v2;
  v0[7] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA27A0, v2, v1);
}

uint64_t sub_1CEFA27A0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[4];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[5];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[8] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = swift_task_alloc();
    v8[9] = v13;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
    *v13 = v8;
    v13[1] = sub_1CEFA2578;
    a6 = sub_1CEFA484C;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB6770;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000023;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA28E8()
{
  v0[3] = *(v0[2] + 16);
  type metadata accessor for XPCWrapper();
  v0[4] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[5] = v2;
  v0[6] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA29AC, v2, v1);
}

uint64_t sub_1CEFA29AC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[3];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[4];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[7] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = swift_task_alloc();
    v8[8] = v13;
    *v13 = v8;
    v13[1] = sub_1CEFA2AC4;
    a8 = MEMORY[0x1E69E6370];
    a6 = sub_1CEFA4854;
    a1 = v8 + 9;
    a5 = 0x80000001CEFB67A0;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000014;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA2AC4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1CEFA2C20;
  }

  else
  {

    v3 = *(v2 + 40);
    v4 = *(v2 + 48);
    v5 = sub_1CEFA2C08;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEFA2C58()
{
  v0[4] = *(v0[3] + 16);
  type metadata accessor for XPCWrapper();
  v0[5] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[6] = v2;
  v0[7] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA2D1C, v2, v1);
}

uint64_t sub_1CEFA2D1C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[4];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[5];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[8] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = swift_task_alloc();
    v8[9] = v13;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9380, &qword_1CEFAC540);
    *v13 = v8;
    v13[1] = sub_1CEFA2E44;
    a6 = sub_1CEFA485C;
    a4 = 0x6863746566657270;
    a5 = 0xEF29286568636143;
    a1 = v8 + 2;
    a2 = v9;
    a3 = v11;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA2E44()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1CEFA2FA0;
  }

  else
  {

    v3 = *(v2 + 48);
    v4 = *(v2 + 56);
    v5 = sub_1CEFA2F88;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t TC2Client.knownRateLimits(bundleIdentifier:featureIdentifier:skipFetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 136) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CEFA2FE8, 0, 0);
}

uint64_t sub_1CEFA2FE8()
{
  v0[9] = *(v0[8] + 16);
  type metadata accessor for XPCWrapper();
  v0[10] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[11] = v2;
  v0[12] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA30AC, v2, v1);
}

uint64_t sub_1CEFA30AC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 72);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v8 + 80);
    v12 = *(v8 + 136);
    v16 = *(v8 + 32);
    v17 = *(v8 + 48);
    *(v9 + 16) = v10 + 1;
    v13 = swift_task_alloc();
    *(v8 + 104) = v13;
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 32) = v16;
    *(v13 + 48) = v17;
    *(v13 + 64) = v12;
    v14 = swift_task_alloc();
    *(v8 + 112) = v14;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA308, &unk_1CEFB3980);
    *v14 = v8;
    v14[1] = sub_1CEFA31F4;
    a6 = sub_1CEFA4864;
    a1 = v8 + 16;
    a5 = 0x80000001CEFB67C0;
    a2 = v9;
    a3 = v11;
    a4 = 0xD00000000000003ELL;
    a7 = v13;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA31F4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1CEFA4BFC;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1CEFA3338;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t TC2Client.init(userID:)(unint64_t a1)
{
  v2 = v1;
  type metadata accessor for XPCWrapper();
  swift_allocObject();
  *(v2 + 16) = sub_1CEF9360C(a1 | ((HIDWORD(a1) & 1) << 32));
  return v2;
}

uint64_t TC2Client.deinit()
{

  sub_1CEF94458();

  return v0;
}

uint64_t TC2Client.__deallocating_deinit()
{

  sub_1CEF94458();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t TC2Client.listRateLimits(bundleIdentifier:featureIdentifier:fetch:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = a4;
  *(v6 + 64) = v5;
  *(v6 + 136) = a5;
  *(v6 + 40) = a2;
  *(v6 + 48) = a3;
  *(v6 + 32) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CEFA3490, 0, 0);
}

uint64_t sub_1CEFA3490()
{
  v0[9] = *(v0[8] + 16);
  type metadata accessor for XPCWrapper();
  v0[10] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[11] = v2;
  v0[12] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA3554, v2, v1);
}

uint64_t sub_1CEFA3554(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 72);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v8 + 80);
    v12 = *(v8 + 136);
    v16 = *(v8 + 32);
    v17 = *(v8 + 48);
    *(v9 + 16) = v10 + 1;
    v13 = swift_task_alloc();
    *(v8 + 104) = v13;
    *(v13 + 16) = v9;
    *(v13 + 24) = v10;
    *(v13 + 32) = v16;
    *(v13 + 48) = v17;
    *(v13 + 64) = v12;
    v14 = swift_task_alloc();
    *(v8 + 112) = v14;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA308, &unk_1CEFB3980);
    *v14 = v8;
    v14[1] = sub_1CEFA369C;
    a6 = sub_1CEFA487C;
    a1 = v8 + 16;
    a5 = 0x80000001CEFB6800;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000039;
    a7 = v13;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA369C()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1CEFA2FA0;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1CEFA37E0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEFA3804()
{
  v1 = v0[16];
  v2 = MEMORY[0x1E69E7CC0];
  if (v1 >> 60 != 15)
  {
    v3 = v0[15];
    sub_1CEF43738(v3, v0[16]);
    v4 = sub_1CEFA0254(v3, v1);
    sub_1CEF81204(v3, v1);
    if (v4)
    {
      v2 = v4;
    }
  }

  v5 = v0[1];

  return v5(v2);
}

uint64_t TC2Client.addRateLimit(bundleIdentifier:featureIdentifier:workloadType:count:duration:ttl:jitter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10)
{
  *(v11 + 96) = v10;
  *(v11 + 80) = a9;
  *(v11 + 88) = a10;
  *(v11 + 72) = a8;
  *(v11 + 56) = a6;
  *(v11 + 64) = a7;
  *(v11 + 40) = a4;
  *(v11 + 48) = a5;
  *(v11 + 24) = a2;
  *(v11 + 32) = a3;
  *(v11 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CEFA38EC, 0, 0);
}

uint64_t sub_1CEFA38EC()
{
  v0[13] = *(v0[12] + 16);
  type metadata accessor for XPCWrapper();
  v0[14] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[15] = v2;
  v0[16] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA39B0, v2, v1);
}

uint64_t sub_1CEFA39B0(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 104);
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = *(v8 + 112);
    v12 = *(v8 + 88);
    v13 = *(v8 + 64);
    v18 = *(v8 + 48);
    v19 = *(v8 + 72);
    v14 = swift_task_alloc();
    v15 = *(v8 + 16);
    v16 = *(v8 + 32);
    *(v9 + 16) = v10 + 1;
    *(v8 + 136) = v14;
    *(v14 + 16) = v9;
    *(v14 + 24) = v10;
    *(v14 + 32) = v15;
    *(v14 + 48) = v16;
    *(v14 + 64) = v18;
    *(v14 + 80) = v13;
    *(v14 + 88) = v19;
    *(v14 + 104) = v12;
    a1 = swift_task_alloc();
    *(v8 + 144) = a1;
    *a1 = v8;
    a1[1] = sub_1CEFA3B04;
    a6 = sub_1CEFA48B0;
    a5 = 0x80000001CEFB6840;
    a8 = MEMORY[0x1E69E7CA8] + 8;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000058;
    a7 = v14;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA3B04()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1CEFA4BF8;
  }

  else
  {

    v3 = *(v2 + 120);
    v4 = *(v2 + 128);
    v5 = sub_1CEFA3C48;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEFA3C7C()
{
  v0[3] = *(v0[2] + 16);
  type metadata accessor for XPCWrapper();
  v0[4] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[5] = v2;
  v0[6] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA3D40, v2, v1);
}

uint64_t sub_1CEFA3D40(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[3];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[4];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[7] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    a1 = swift_task_alloc();
    v8[8] = a1;
    *a1 = v8;
    a1[1] = sub_1CEFA3E54;
    a6 = sub_1CEFA48F0;
    a5 = 0x80000001CEFB68A0;
    a8 = MEMORY[0x1E69E7CA8] + 8;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000011;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA3E54()
{
  v2 = *v1;

  if (v0)
  {
  }

  v3 = *(v2 + 40);
  v4 = *(v2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1CEFA4BF8, v3, v4);
}

uint64_t sub_1CEFA3FB8()
{
  v0[5] = *(v0[4] + 16);
  type metadata accessor for XPCWrapper();
  v0[6] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[7] = v2;
  v0[8] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA407C, v2, v1);
}

uint64_t sub_1CEFA407C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[5];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[6];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[9] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = swift_task_alloc();
    v8[10] = v13;
    *v13 = v8;
    v13[1] = sub_1CEFA4194;
    a8 = MEMORY[0x1E6969080];
    a6 = sub_1CEFA48F8;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB68C0;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000020;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA4194()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1CEFA4C00;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1CEFA4BF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1CEFA42F8()
{
  v0[5] = *(v0[4] + 16);
  type metadata accessor for XPCWrapper();
  v0[6] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[7] = v2;
  v0[8] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA43BC, v2, v1);
}

uint64_t sub_1CEFA43BC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = v8[5];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[6];
    *(v9 + 16) = v10 + 1;
    v12 = swift_task_alloc();
    v8[9] = v12;
    *(v12 + 16) = v9;
    *(v12 + 24) = v10;
    v13 = swift_task_alloc();
    v8[10] = v13;
    *v13 = v8;
    v13[1] = sub_1CEFA4194;
    a8 = MEMORY[0x1E6969080];
    a6 = sub_1CEFA4900;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB68F0;
    a2 = v9;
    a3 = v11;
    a4 = 0xD00000000000001FLL;
    a7 = v12;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t TC2Client.setServerDrivenConfiguration(json:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1CEFA44F8, 0, 0);
}

uint64_t sub_1CEFA44F8()
{
  v0[7] = *(v0[6] + 16);
  type metadata accessor for XPCWrapper();
  v0[8] = sub_1CEFA4A30(qword_1EDE38748, type metadata accessor for XPCWrapper, &unk_1CEFB3990);
  v2 = sub_1CEFA8480();
  v0[9] = v2;
  v0[10] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA45BC, v2, v1);
}

uint64_t sub_1CEFA45BC(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), void *a7, uint64_t a8)
{
  v9 = v8[7];
  v10 = *(v9 + 16);
  if (__OFADD__(v10, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v8[8];
    v13 = v8[4];
    v12 = v8[5];
    *(v9 + 16) = v10 + 1;
    v14 = swift_task_alloc();
    v8[11] = v14;
    v14[2] = v9;
    v14[3] = v10;
    v14[4] = v13;
    v14[5] = v12;
    v15 = swift_task_alloc();
    v8[12] = v15;
    *v15 = v8;
    v15[1] = sub_1CEFA46E4;
    a8 = MEMORY[0x1E6969080];
    a6 = sub_1CEFA4908;
    a1 = v8 + 2;
    a5 = 0x80000001CEFB6910;
    a2 = v9;
    a3 = v11;
    a4 = 0xD000000000000023;
    a7 = v14;
  }

  return MEMORY[0x1EEE6DE38](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_1CEFA46E4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1CEFA4828;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1CEFA4BF4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

unint64_t sub_1CEFA4978()
{
  result = qword_1EC4AA888;
  if (!qword_1EC4AA888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA888);
  }

  return result;
}

void sub_1CEFA49CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }
}

double sub_1CEFA4A10(uint64_t a1)
{
  *(a1 + 144) = 0;
  result = 0.0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  return result;
}

uint64_t sub_1CEFA4A30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1CEFA4A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1CEFA4AE0()
{
  result = qword_1EC4AA8D0;
  if (!qword_1EC4AA8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4AA8C8, &qword_1CEFB3C80);
    sub_1CEFA4A30(&qword_1EC4AA8A8, type metadata accessor for TrustedCloudComputeRateLimit, &protocol conformance descriptor for TrustedCloudComputeRateLimit);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA8D0);
  }

  return result;
}

unint64_t sub_1CEFA4B94()
{
  result = qword_1EC4AA8D8;
  if (!qword_1EC4AA8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA8D8);
  }

  return result;
}

NSXPCInterface __swiftcall interfaceForTC2DaemonProtocol()()
{
  v0 = objc_opt_self();
  v1 = [v0 interfaceWithProtocol_];
  v2 = [v0 interfaceWithProtocol_];
  [v1 setInterface:v2 forSelector:sel_trustedRequestWithParameters_requestID_bundleIdentifier_originatingBundleIdentifier_featureIdentifier_sessionIdentifier_completion_ argumentIndex:0 ofReply:1];

  return v1;
}

uint64_t sub_1CEFA4CB0()
{
  sub_1CEFA7E20();
  swift_allocObject();
  sub_1CEFA7E10();
  type metadata accessor for PrivateCloudComputeError(0);
  sub_1CEFA6288(&qword_1EC4AA900, type metadata accessor for PrivateCloudComputeError, &protocol conformance descriptor for PrivateCloudComputeError);
  v0 = sub_1CEFA7E00();

  return v0;
}

uint64_t sub_1CEFA4E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1CEFA7E20();
  swift_allocObject();
  sub_1CEFA7E10();
  sub_1CEFA612C();
  v3 = sub_1CEFA7E00();

  return v3;
}

uint64_t sub_1CEFA4F88()
{
  sub_1CEFA7E20();
  swift_allocObject();
  sub_1CEFA7E10();
  type metadata accessor for TrustedCloudComputeError(0);
  sub_1CEFA6288(&qword_1EC4AA8F8, type metadata accessor for TrustedCloudComputeError, &protocol conformance descriptor for TrustedCloudComputeError);
  v0 = sub_1CEFA7E00();

  return v0;
}

uint64_t sub_1CEFA5110()
{
  sub_1CEFA7E20();
  swift_allocObject();
  sub_1CEFA7E10();
  type metadata accessor for TrustedCloudComputeRateLimit(0);
  sub_1CEFA6288(&qword_1EC4AA8F0, type metadata accessor for TrustedCloudComputeRateLimit, &protocol conformance descriptor for TrustedCloudComputeRateLimit);
  v0 = sub_1CEFA7E00();

  return v0;
}

uint64_t sub_1CEFA5294(uint64_t a1)
{
  sub_1CEFA7E20();
  swift_allocObject();
  sub_1CEFA7E10();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4AA8C8, &qword_1CEFB3C80);
  sub_1CEFA61D4();
  v1 = sub_1CEFA7E00();

  return v1;
}

uint64_t sub_1CEFA53F4()
{
  sub_1CEFA7E20();
  swift_allocObject();
  sub_1CEFA7E10();
  sub_1CEF8B0C4();
  v0 = sub_1CEFA7E00();

  return v0;
}

uint64_t sub_1CEFA5578()
{
  sub_1CEFA7E20();
  swift_allocObject();
  sub_1CEFA7E10();
  type metadata accessor for TC2TrustedRequestMetadata(0);
  sub_1CEFA6288(&qword_1EC4AA6D8, type metadata accessor for TC2TrustedRequestMetadata, &protocol conformance descriptor for TC2TrustedRequestMetadata);
  v0 = sub_1CEFA7E00();

  return v0;
}

uint64_t sub_1CEFA56FC(uint64_t a1)
{
  sub_1CEFA7E20();
  swift_allocObject();
  sub_1CEFA7E10();
  sub_1CEF8C9BC();
  v1 = sub_1CEFA7E00();

  return v1;
}

uint64_t sub_1CEFA5848(uint64_t a1)
{
  sub_1CEFA7E20();
  swift_allocObject();
  sub_1CEFA7E10();
  sub_1CEFA6180();
  v1 = sub_1CEFA7E00();

  return v1;
}

uint64_t TC2JSON<>.json.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CEFA7E20();
  swift_allocObject();
  sub_1CEFA7E10();
  v4 = sub_1CEFA7E00();

  return v4;
}

uint64_t TC2JSON<>.init(json:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v9 = sub_1CEFA8220();
  v16[3] = *(v9 - 8);
  v16[4] = v9;
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1CEFA85B0();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v16 - v11;
  sub_1CEFA7DF0();
  swift_allocObject();
  sub_1CEFA7DE0();
  sub_1CEFA7DD0();
  sub_1CEF41BE0(a1, a2);

  v13 = *(a3 - 8);
  v14 = *(v13 + 56);
  v14(v12, 0, 1, a3);
  (*(v13 + 32))(a5, v12, a3);
  return (v14)(a5, 0, 1, a3);
}

uint64_t sub_1CEFA5F7C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_1CEFA0254(a1, a2);
  *a3 = result;
  return result;
}

unint64_t sub_1CEFA612C()
{
  result = qword_1EDE379E8[0];
  if (!qword_1EDE379E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDE379E8);
  }

  return result;
}

unint64_t sub_1CEFA6180()
{
  result = qword_1EC4AA8E0;
  if (!qword_1EC4AA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA8E0);
  }

  return result;
}

unint64_t sub_1CEFA61D4()
{
  result = qword_1EC4AA8E8;
  if (!qword_1EC4AA8E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4AA8C8, &qword_1CEFB3C80);
    sub_1CEFA6288(&qword_1EC4AA8F0, type metadata accessor for TrustedCloudComputeRateLimit, &protocol conformance descriptor for TrustedCloudComputeRateLimit);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA8E8);
  }

  return result;
}

uint64_t sub_1CEFA6288(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t trustedRequestEventInfo(with:step:errors:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1CEF8A284(a1, v18 - v8);
  v9 = *(a3 + 16);
  if (v9)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1CEF4B2B8(0, v9, 0);
    v10 = v19;
    v11 = (a3 + 32);
    do
    {
      v12 = *v11;
      MEMORY[0x1D38670C0](*v11);
      sub_1CEFA80F0();

      v19 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1CEF4B2B8((v13 > 1), v14 + 1, 1);
        v10 = v19;
      }

      *(v10 + 16) = v14 + 1;
      sub_1CEF53104(v18, v10 + 40 * v14 + 32);
      ++v11;
      --v9;
    }

    while (v9);
  }

  sub_1CEFA81F0();
  v15 = *MEMORY[0x1E698C388];
  v16 = sub_1CEFA8180();
  return (*(*(v16 - 8) + 104))(a4, v15, v16);
}

uint64_t sub_1CEFA6578()
{
  v0 = sub_1CEFA8220();
  __swift_allocate_value_buffer(v0, qword_1EC4AA908);
  __swift_project_value_buffer(v0, qword_1EC4AA908);
  return sub_1CEFA8210();
}

PrivateCloudCompute::StepIdentifier_optional __swiftcall StepIdentifier.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1CEFA8700();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t StepIdentifier.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000022;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t sub_1CEFA6688(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000022;
  }

  else
  {
    v3 = 0xD000000000000023;
  }

  if (v2)
  {
    v4 = "a";
  }

  else
  {
    v4 = "uteRequestInProcess";
  }

  if (*a2)
  {
    v5 = 0xD000000000000022;
  }

  else
  {
    v5 = 0xD000000000000023;
  }

  if (*a2)
  {
    v6 = "uteRequestInProcess";
  }

  else
  {
    v6 = "a";
  }

  if (v3 == v5 && (v4 | 0x8000000000000000) == (v6 | 0x8000000000000000))
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1CEFA8950();
  }

  return v8 & 1;
}

uint64_t sub_1CEFA6730()
{
  sub_1CEFA8A00();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

uint64_t sub_1CEFA67AC(uint64_t a1)
{
  sub_1CEFA8340();
}

uint64_t sub_1CEFA6814(uint64_t a1)
{
  sub_1CEFA8A00();
  sub_1CEFA8340();

  return sub_1CEFA8A40();
}

uint64_t sub_1CEFA688C@<X0>(char *a2@<X8>)
{
  v3 = sub_1CEFA8700();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1CEFA68EC(unint64_t *a1@<X8>)
{
  v2 = "uteRequestInProcess";
  v3 = 0xD000000000000022;
  if (!*v1)
  {
    v3 = 0xD000000000000023;
    v2 = "a";
  }

  *a1 = v3;
  a1[1] = v2 | 0x8000000000000000;
}

uint64_t withAppleIntelligenceEvent<A>(isolation:id:step:operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = a8;
  *(v8 + 64) = a4;
  *(v8 + 72) = a6;
  *(v8 + 56) = a1;
  v12 = sub_1CEFA8070();
  *(v8 + 96) = v12;
  *(v8 + 104) = *(v12 - 8);
  *(v8 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9490, &unk_1CEFB1850);
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = *(a8 - 8);
  *(v8 + 144) = swift_task_alloc();
  v13 = sub_1CEFA8190();
  *(v8 + 152) = v13;
  *(v8 + 160) = *(v13 - 8);
  *(v8 + 168) = swift_task_alloc();
  *(v8 + 176) = swift_task_alloc();
  *(v8 + 184) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9068, qword_1CEFAC020);
  *(v8 + 192) = swift_task_alloc();
  v14 = sub_1CEFA8180();
  *(v8 + 200) = v14;
  *(v8 + 208) = *(v14 - 8);
  *(v8 + 216) = swift_task_alloc();
  *(v8 + 224) = swift_task_alloc();
  *(v8 + 232) = swift_task_alloc();
  v15 = sub_1CEFA81E0();
  *(v8 + 240) = v15;
  *(v8 + 248) = *(v15 - 8);
  *(v8 + 256) = swift_task_alloc();
  *(v8 + 264) = swift_task_alloc();
  *(v8 + 384) = *a5;
  if (a2)
  {
    swift_getObjectType();
    v16 = sub_1CEFA8480();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  *(v8 + 272) = v16;
  *(v8 + 280) = v18;

  return MEMORY[0x1EEE6DFA0](sub_1CEFA6C5C, v16, v18);
}

uint64_t sub_1CEFA6C5C()
{
  v0[36] = sub_1CEFA81D0();
  sub_1CEFA81C0();
  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[12];
  v4 = v0[13];
  v5 = v0[8];
  v6 = *(v4 + 16);
  v0[37] = v6;
  v0[38] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = *(v4 + 56);
  v0[39] = v7;
  v0[40] = (v4 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v7(v2, 0, 1, v3);
  trustedRequestEventInfo(with:step:errors:)(v2, MEMORY[0x1E69E7CC0], v1);
  sub_1CEF3D55C(v2, &qword_1EC4A9068, qword_1CEFAC020);
  sub_1CEFA81B0();
  v10 = v0[32];
  v9 = v0[33];
  v11 = v0[30];
  v12 = v0[31];
  v13 = v0[29];
  v14 = v0[25];
  v15 = v0[26];
  v16 = v0[9];
  v17 = *(v15 + 8);
  v0[41] = v17;
  v0[42] = (v15 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v17(v13, v14);

  (*(v12 + 32))(v9, v10, v11);
  v20 = (v16 + *v16);
  v18 = swift_task_alloc();
  v0[43] = v18;
  *v18 = v0;
  v18[1] = sub_1CEFA71F4;
  v19 = v0[18];

  return v20(v19);
}

uint64_t sub_1CEFA71F4()
{
  v2 = *v1;
  *(*v1 + 352) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_1CEFA79BC;
  }

  else
  {
    v5 = sub_1CEFA7330;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CEFA7330()
{
  v1 = *(v0 + 352);
  sub_1CEFA81C0();
  if (v1)
  {
    (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
  }

  else
  {
    v13 = *(v0 + 328);
    v2 = *(v0 + 312);
    v11 = *(v0 + 264);
    v3 = *(v0 + 248);
    v10 = *(v0 + 240);
    v4 = *(v0 + 224);
    v5 = *(v0 + 192);
    v12 = *(v0 + 200);
    v6 = *(v0 + 128);
    v7 = *(v0 + 96);
    (*(v0 + 296))(v5, *(v0 + 64), v7);
    v2(v5, 0, 1, v7);
    trustedRequestEventInfo(with:step:errors:)(v5, MEMORY[0x1E69E7CC0], v4);
    sub_1CEF3D55C(v5, &qword_1EC4A9068, qword_1CEFAC020);
    (*(v3 + 16))(v6, v11, v10);
    (*(v3 + 56))(v6, 0, 1, v10);
    sub_1CEFA81A0();

    sub_1CEF3D55C(v6, &qword_1EC4A9490, &unk_1CEFB1850);
    v13(v4, v12);
    (*(*(v0 + 248) + 8))(*(v0 + 264), *(v0 + 240));
  }

  (*(*(v0 + 136) + 32))(*(v0 + 56), *(v0 + 144), *(v0 + 88));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1CEFA765C()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 280);
  v4 = *(v2 + 272);
  if (v0)
  {
    v5 = sub_1CEFA78A8;
  }

  else
  {
    v5 = sub_1CEFA7798;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1CEFA7798()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CEFA78A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1CEFA79BC()
{
  sub_1CEFA81C0();
  v1 = *(v0 + 352);
  v2 = *(v0 + 312);
  v3 = *(v0 + 248);
  v18 = *(v0 + 240);
  v19 = *(v0 + 264);
  v17 = *(v0 + 216);
  v4 = *(v0 + 192);
  v5 = *(v0 + 120);
  v6 = *(v0 + 96);
  (*(v0 + 296))(v4, *(v0 + 64), v6);
  v2(v4, 0, 1, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4A9340, &qword_1CEFB19C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1CEFAA480;
  *(inited + 32) = v1;
  MEMORY[0x1D38670C0](v1);
  trustedRequestEventInfo(with:step:errors:)(v4, inited, v17);
  swift_setDeallocating();

  sub_1CEF3D55C(v4, &qword_1EC4A9068, qword_1CEFAC020);
  (*(v3 + 16))(v5, v19, v18);
  (*(v3 + 56))(v5, 0, 1, v18);
  sub_1CEFA81A0();
  v8 = *(v0 + 328);
  v9 = *(v0 + 216);
  v10 = *(v0 + 200);
  v11 = *(v0 + 120);

  sub_1CEF3D55C(v11, &qword_1EC4A9490, &unk_1CEFB1850);
  v8(v9, v10);
  v12 = *(v0 + 264);
  v13 = *(v0 + 240);
  v14 = *(v0 + 248);
  swift_willThrow();
  (*(v14 + 8))(v12, v13);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_1CEFA7D20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1CEFA7D6C()
{
  result = qword_1EC4AA920;
  if (!qword_1EC4AA920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC4AA920);
  }

  return result;
}