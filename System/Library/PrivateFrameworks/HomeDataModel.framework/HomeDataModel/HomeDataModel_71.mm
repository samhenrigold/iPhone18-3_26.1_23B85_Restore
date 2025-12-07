uint64_t StaticSoftwareUpdateMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC78, &qword_1D1EA8348);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D30190();
  sub_1D1E6930C();
  v8[15] = 0;
  sub_1D1E68E0C();
  if (!v1)
  {
    type metadata accessor for StaticSoftwareUpdateMetadata(0);
    v8[14] = 1;
    sub_1D1E669FC();
    sub_1D1D300C0(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
    v8[13] = 2;
    sub_1D1E68E0C();
    v8[12] = 3;
    sub_1D1E68E0C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StaticSoftwareUpdateMetadata.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E669FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  if (*(v1 + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  sub_1D1741C08(v1 + updated[5], v8, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D1D300C0(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  if (*(v1 + updated[6] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (!*(v1 + updated[7] + 8))
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E678EC();
}

uint64_t StaticSoftwareUpdateMetadata.hashValue.getter()
{
  v1 = sub_1D1E669FC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1D1E6920C();
  if (*(v0 + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  sub_1D1741C08(v0 + updated[5], v7, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D1E6922C();
    sub_1D1D300C0(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v2 + 8))(v4, v1);
  }

  if (*(v0 + updated[6] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v0 + updated[7] + 8))
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

uint64_t StaticSoftwareUpdateMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC88, &qword_1D1EA8350);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  MEMORY[0x1EEE9AC00](updated);
  v12 = (v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D30190();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = a1;
  v13 = v27;
  v32 = 0;
  *v12 = sub_1D1E68C6C();
  v12[1] = v14;
  v24[1] = v14;
  sub_1D1E669FC();
  v31 = 1;
  sub_1D1D300C0(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68CBC();
  sub_1D1741A90(v6, v12 + updated[5], &qword_1EC642570, &qword_1D1E6C6A0);
  v30 = 2;
  v15 = sub_1D1E68C6C();
  v16 = v25;
  v17 = (v12 + updated[6]);
  *v17 = v15;
  v17[1] = v18;
  v29 = 3;
  v19 = sub_1D1E68C6C();
  v21 = v20;
  (*(v13 + 8))(v9, v28);
  v22 = (v12 + updated[7]);
  *v22 = v19;
  v22[1] = v21;
  sub_1D1D30108(v12, v26, type metadata accessor for StaticSoftwareUpdateMetadata);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_1D1D301E4(v12, type metadata accessor for StaticSoftwareUpdateMetadata);
}

uint64_t sub_1D1D28D64(uint64_t a1, int *a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1D1E6920C();
  if (*(v2 + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1741C08(v2 + a2[5], v10, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D1E6922C();
    sub_1D1D300C0(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  if (*(v2 + a2[6] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v2 + a2[7] + 8))
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

unint64_t sub_1D1D29048()
{
  v1 = 0x7964616572;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000015;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_1D1D290A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D32C7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D290CC(uint64_t a1)
{
  v2 = sub_1D1D30244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D29108(uint64_t a1)
{
  v2 = sub_1D1D30244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D29144(uint64_t a1)
{
  v2 = sub_1D1D30298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D29180(uint64_t a1)
{
  v2 = sub_1D1D30298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D291BC(uint64_t a1)
{
  v2 = sub_1D1D30340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D291F8(uint64_t a1)
{
  v2 = sub_1D1D30340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D29254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4E657361656C6572 && a2 == 0xEB0000000065746FLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D1E6904C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D1D292E0(uint64_t a1)
{
  v2 = sub_1D1D302EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2931C(uint64_t a1)
{
  v2 = sub_1D1D302EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticHH2Update.HH2State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC90, &qword_1D1EA8358);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v18 - v4;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC98, &qword_1D1EA8360);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v21 = &v18 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCA0, &qword_1D1EA8368);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCA8, &qword_1D1EA8370);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v18 - v11;
  v13 = v1[1];
  v18 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D30244();
  sub_1D1E6930C();
  if (!v13)
  {
    v27 = 0;
    sub_1D1D30340();
    sub_1D1E68DFC();
    (*(v19 + 8))(v8, v20);
    return (*(v10 + 8))(v12, v9);
  }

  if (v13 == 1)
  {
    v29 = 2;
    sub_1D1D30298();
    v14 = v23;
    sub_1D1E68DFC();
    (*(v25 + 8))(v14, v26);
    return (*(v10 + 8))(v12, v9);
  }

  v28 = 1;
  sub_1D1D302EC();
  v16 = v21;
  sub_1D1E68DFC();
  v17 = v24;
  sub_1D1E68ECC();
  (*(v22 + 8))(v16, v17);
  return (*(v10 + 8))(v12, v9);
}

uint64_t StaticHH2Update.HH2State.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x1D3892850](v3);
  }

  if (v2 == 1)
  {
    v3 = 2;
    return MEMORY[0x1D3892850](v3);
  }

  MEMORY[0x1D3892850](1);

  return sub_1D1E678EC();
}

uint64_t StaticHH2Update.HH2State.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1D1E6920C();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E678EC();
      return sub_1D1E6926C();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t StaticHH2Update.HH2State.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v46 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCD0, &qword_1D1EA8378);
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v37 - v3;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCD8, &qword_1D1EA8380);
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCE0, &qword_1D1EA8388);
  v43 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCE8, &unk_1D1EA8390);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  v13 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D1D30244();
  v14 = v47;
  sub_1D1E692FC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  v38 = v6;
  v39 = 0;
  v16 = v43;
  v15 = v44;
  v47 = v10;
  v17 = v45;
  v18 = v46;
  v19 = sub_1D1E68DDC();
  v20 = (2 * *(v19 + 16)) | 1;
  v49 = v19;
  v50 = v19 + 32;
  v51 = 0;
  v52 = v20;
  v21 = sub_1D18085C8();
  if (v21 == 3 || v51 != v52 >> 1)
  {
    v24 = sub_1D1E688EC();
    swift_allocError();
    v26 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v26 = &type metadata for StaticHH2Update.HH2State;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v21)
  {
    v53 = 0;
    sub_1D1D30340();
    v28 = v39;
    sub_1D1E68C4C();
    if (!v28)
    {
      (*(v16 + 8))(v8, v38);
      (*(v47 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v29 = 0;
      v30 = 0;
LABEL_17:
      v33 = v18;
      goto LABEL_18;
    }

LABEL_9:
    (*(v47 + 8))(v12, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v48);
  }

  if (v21 != 1)
  {
    v53 = 2;
    sub_1D1D30298();
    v31 = v39;
    sub_1D1E68C4C();
    v32 = v47;
    if (v31)
    {
      goto LABEL_9;
    }

    (*(v17 + 8))(v15, v41);
    (*(v32 + 8))(v12, v9);
    swift_unknownObjectRelease();
    v29 = 0;
    v30 = 1;
    goto LABEL_17;
  }

  v53 = 1;
  sub_1D1D302EC();
  v22 = v39;
  sub_1D1E68C4C();
  v23 = v47;
  if (v22)
  {
    goto LABEL_9;
  }

  v33 = v18;
  v34 = v40;
  v29 = sub_1D1E68D2C();
  v35 = v5;
  v30 = v36;
  (*(v42 + 8))(v35, v34);
  (*(v23 + 8))(v12, v9);
  swift_unknownObjectRelease();
LABEL_18:
  *v33 = v29;
  v33[1] = v30;
  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t sub_1D1D29E68()
{
  v1 = *(v0 + 8);
  sub_1D1E6920C();
  if (v1)
  {
    if (v1 != 1)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E678EC();
      return sub_1D1E6926C();
    }

    v2 = 2;
  }

  else
  {
    v2 = 0;
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D29EE8(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (!v2)
  {
    v3 = 0;
    return MEMORY[0x1D3892850](v3);
  }

  if (v2 == 1)
  {
    v3 = 2;
    return MEMORY[0x1D3892850](v3);
  }

  MEMORY[0x1D3892850](1);

  return sub_1D1E678EC();
}

uint64_t sub_1D1D29F70(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1D1E6920C();
  if (v2)
  {
    if (v2 != 1)
    {
      MEMORY[0x1D3892850](1);
      sub_1D1E678EC();
      return sub_1D1E6926C();
    }

    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  MEMORY[0x1D3892850](v3);
  return sub_1D1E6926C();
}

uint64_t StaticHH2Update.state.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticHH2Update(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t StaticHH2Update.hh2State.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for StaticHH2Update(0) + 24));
  v4 = *v3;
  v5 = v3[1];
  *a1 = *v3;
  a1[1] = v5;

  return sub_1D18614CC(v4, v5);
}

unint64_t sub_1D1D2A0CC()
{
  v1 = 25705;
  v2 = 0x6574617453326868;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t sub_1D1D2A13C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D32DA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D2A164(uint64_t a1)
{
  v2 = sub_1D1D303B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2A1A0(uint64_t a1)
{
  v2 = sub_1D1D303B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticHH2Update.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DCF0, &qword_1D1EA83A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D303B4();
  sub_1D1E6930C();
  LOBYTE(v14) = 0;
  sub_1D1E66A7C();
  sub_1D1D300C0(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticHH2Update(0);
    LOBYTE(v14) = *(v3 + *(v9 + 20));
    v16 = 1;
    sub_1D1807450();
    sub_1D1E68F1C();
    v10 = (v3 + *(v9 + 24));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v16 = 2;
    sub_1D18614CC(v14, v11);
    sub_1D1D30408();
    sub_1D1E68F1C();
    sub_1D18614E0(v14, v15);
    LOBYTE(v14) = 3;
    sub_1D1E68E2C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticHH2Update.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for StaticHH2Update(0);
  v3 = *(v1 + v2[5]);
  if ((v3 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v4 = v3 & 1;
  }

  else
  {
    v4 = qword_1D1EAA0D0[(v3 - 2)];
  }

  MEMORY[0x1D3892850](v4);
  v5 = *(v1 + v2[6] + 8);
  if (!v5)
  {
    v6 = 0;
    goto LABEL_8;
  }

  if (v5 == 1)
  {
    v6 = 2;
LABEL_8:
    MEMORY[0x1D3892850](v6);
    goto LABEL_10;
  }

  MEMORY[0x1D3892850](1);
  sub_1D1E678EC();
LABEL_10:
  v7 = (v1 + v2[7]);
  if (*(v7 + 8) == 1)
  {
    return sub_1D1E6922C();
  }

  v9 = *v7;
  sub_1D1E6922C();
  if ((v9 & 0x7FFFFFFFFFFFFFFFLL) != 0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0;
  }

  return MEMORY[0x1D3892890](v10);
}

uint64_t StaticHH2Update.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticHH2Update(0);
  v2 = *(v0 + v1[5]);
  if ((v2 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v3 = v2 & 1;
  }

  else
  {
    v3 = qword_1D1EAA0D0[(v2 - 2)];
  }

  MEMORY[0x1D3892850](v3);
  v4 = *(v0 + v1[6] + 8);
  if (!v4)
  {
    v5 = 0;
    goto LABEL_8;
  }

  if (v4 == 1)
  {
    v5 = 2;
LABEL_8:
    MEMORY[0x1D3892850](v5);
    goto LABEL_10;
  }

  MEMORY[0x1D3892850](1);
  sub_1D1E678EC();
LABEL_10:
  v6 = (v0 + v1[7]);
  if (*(v6 + 8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v7 = *v6;
    sub_1D1E6922C();
    if ((v7 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }

    MEMORY[0x1D3892890](v8);
  }

  return sub_1D1E6926C();
}

uint64_t StaticHH2Update.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = sub_1D1E66A7C();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD08, &qword_1D1EA83A8);
  v23 = *(v6 - 8);
  v24 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for StaticHH2Update(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D303B4();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v11;
  v13 = v22;
  LOBYTE(v26) = 0;
  sub_1D1D300C0(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68D7C();
  (*(v13 + 32))(v11, v25, v4);
  v27 = 1;
  sub_1D18074A4();
  sub_1D1E68D7C();
  v14 = v9;
  *(v12 + *(v9 + 20)) = v26;
  v27 = 2;
  sub_1D1D3045C();
  sub_1D1E68D7C();
  *(v12 + *(v9 + 24)) = v26;
  LOBYTE(v26) = 3;
  v15 = sub_1D1E68C8C();
  v17 = v16;
  (*(v23 + 8))(v8, v24);
  v18 = v12 + *(v14 + 28);
  *v18 = v15;
  *(v18 + 8) = v17 & 1;
  sub_1D1D30108(v12, v21, type metadata accessor for StaticHH2Update);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1D301E4(v12, type metadata accessor for StaticHH2Update);
}

uint64_t sub_1D1D2AB8C(uint64_t a1, int *a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v4 = *(v2 + a2[5]);
  if ((v4 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v5 = v4 & 1;
  }

  else
  {
    v5 = qword_1D1EAA0D0[(v4 - 2)];
  }

  MEMORY[0x1D3892850](v5);
  v6 = *(v2 + a2[6] + 8);
  if (!v6)
  {
    v7 = 0;
    goto LABEL_8;
  }

  if (v6 == 1)
  {
    v7 = 2;
LABEL_8:
    MEMORY[0x1D3892850](v7);
    goto LABEL_10;
  }

  MEMORY[0x1D3892850](1);
  sub_1D1E678EC();
LABEL_10:
  v8 = (v2 + a2[7]);
  if (*(v8 + 8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v9 = *v8;
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
  }

  return sub_1D1E6926C();
}

unint64_t sub_1D1D2AD34()
{
  v1 = 0x50656D6F48316868;
  v2 = 0xD000000000000015;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000018;
  }

  if (!*v0)
  {
    v1 = 0x50656D6F48326868;
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

uint64_t sub_1D1D2ADA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D32F00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D2ADD0(uint64_t a1)
{
  v2 = sub_1D1D304B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2AE0C(uint64_t a1)
{
  v2 = sub_1D1D304B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2AE48(uint64_t a1)
{
  v2 = sub_1D1D30614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2AE84(uint64_t a1)
{
  v2 = sub_1D1D30614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2AEC0(uint64_t a1)
{
  v2 = sub_1D1D30668();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2AEFC(uint64_t a1)
{
  v2 = sub_1D1D30668();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2AF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x617461646174656DLL && a2 == 0xE800000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
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

uint64_t sub_1D1D2B010(uint64_t a1)
{
  v2 = sub_1D1D305C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2B04C(uint64_t a1)
{
  v2 = sub_1D1D305C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2B088(uint64_t a1)
{
  v2 = sub_1D1D30504();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2B0C4(uint64_t a1)
{
  v2 = sub_1D1D30504();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticSoftwareUpdate.Kind.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD18, &qword_1D1EA83B0);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD20, &qword_1D1EA83B8);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v56 = &v45 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD28, &qword_1D1EA83C0);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v52 = &v45 - v7;
  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  v8 = MEMORY[0x1EEE9AC00](updated);
  v53 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v51 = &v45 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD30, &qword_1D1EA83C8);
  v46 = *(v11 - 8);
  v47 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = type metadata accessor for StaticHH2Update(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD38, &unk_1D1EA83D0);
  v62 = *(v20 - 8);
  v63 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D304B0();
  v61 = v22;
  sub_1D1E6930C();
  sub_1D1D30108(v60, v19, type metadata accessor for StaticSoftwareUpdate.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v28 = v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48)];
      v29 = v53;
      sub_1D1D30558(v19, v53, type metadata accessor for StaticSoftwareUpdateMetadata);
      v73 = 2;
      sub_1D1D305C0();
      v30 = v56;
      v31 = v63;
      v32 = v61;
      sub_1D1E68DFC();
      v72 = 0;
      sub_1D1D300C0(&qword_1EC64DD58, type metadata accessor for StaticSoftwareUpdateMetadata, &protocol conformance descriptor for StaticSoftwareUpdateMetadata);
      v33 = v58;
      v34 = v64;
      sub_1D1E68F1C();
      if (!v34)
      {
        v71 = v28;
        v70 = 1;
        sub_1D1807450();
        sub_1D1E68F1C();
      }

      (*(v57 + 8))(v30, v33);
      sub_1D1D301E4(v29, type metadata accessor for StaticSoftwareUpdateMetadata);
      return (*(v62 + 8))(v32, v31);
    }

    else
    {
      v74 = 3;
      sub_1D1D30504();
      v42 = v48;
      v43 = v63;
      v44 = v61;
      sub_1D1E68DFC();
      (*(v49 + 8))(v42, v50);
      return (*(v62 + 8))(v44, v43);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v35 = v19[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48)];
    v36 = v51;
    sub_1D1D30558(v19, v51, type metadata accessor for StaticSoftwareUpdateMetadata);
    v69 = 1;
    sub_1D1D30614();
    v37 = v52;
    v38 = v63;
    v39 = v61;
    sub_1D1E68DFC();
    v68 = 0;
    sub_1D1D300C0(&qword_1EC64DD58, type metadata accessor for StaticSoftwareUpdateMetadata, &protocol conformance descriptor for StaticSoftwareUpdateMetadata);
    v40 = v55;
    v41 = v64;
    sub_1D1E68F1C();
    if (!v41)
    {
      v67 = v35;
      v66[0] = 1;
      sub_1D1807450();
      sub_1D1E68F1C();
    }

    (*(v54 + 8))(v37, v40);
    sub_1D1D301E4(v36, type metadata accessor for StaticSoftwareUpdateMetadata);
    return (*(v62 + 8))(v39, v38);
  }

  else
  {
    sub_1D1D30558(v19, v16, type metadata accessor for StaticHH2Update);
    v65 = 0;
    sub_1D1D30668();
    v24 = v63;
    v25 = v61;
    sub_1D1E68DFC();
    sub_1D1D300C0(&qword_1EC64CDA0, type metadata accessor for StaticHH2Update, &protocol conformance descriptor for StaticHH2Update);
    v26 = v47;
    sub_1D1E68F1C();
    (*(v46 + 8))(v13, v26);
    sub_1D1D301E4(v16, type metadata accessor for StaticHH2Update);
    return (*(v62 + 8))(v25, v24);
  }
}

uint64_t StaticSoftwareUpdate.Kind.hash(into:)(uint64_t a1)
{
  v2 = v1;
  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  v5 = MEMORY[0x1EEE9AC00](updated - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v31 - v8;
  v10 = type metadata accessor for StaticHH2Update(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1D30108(v2, v15, type metadata accessor for StaticSoftwareUpdate.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      return MEMORY[0x1D3892850](3);
    }

    v19 = v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48)];
    sub_1D1D30558(v15, v7, type metadata accessor for StaticSoftwareUpdateMetadata);
    MEMORY[0x1D3892850](2);
    StaticSoftwareUpdateMetadata.hash(into:)(a1);
    if ((v19 - 2) >= 6u)
    {
      MEMORY[0x1D3892850](5);
      v20 = v19 & 1;
    }

    else
    {
      v20 = qword_1D1EAA0D0[(v19 - 2)];
    }

    MEMORY[0x1D3892850](v20);
    v26 = type metadata accessor for StaticSoftwareUpdateMetadata;
    v27 = v7;
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D1D30558(v15, v12, type metadata accessor for StaticHH2Update);
      MEMORY[0x1D3892850](0);
      sub_1D1E66A7C();
      sub_1D1D300C0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      v17 = v12[v10[5]];
      if ((v17 - 2) >= 6u)
      {
        MEMORY[0x1D3892850](5);
        v18 = v17 & 1;
      }

      else
      {
        v18 = qword_1D1EAA0D0[(v17 - 2)];
      }

      MEMORY[0x1D3892850](v18);
      v24 = *&v12[v10[6] + 8];
      if (v24)
      {
        if (v24 != 1)
        {
          MEMORY[0x1D3892850](1);
          sub_1D1E678EC();
          goto LABEL_22;
        }

        v25 = 2;
      }

      else
      {
        v25 = 0;
      }

      MEMORY[0x1D3892850](v25);
LABEL_22:
      v28 = &v12[v10[7]];
      if (v28[8] == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        v29 = *v28;
        sub_1D1E6922C();
        if ((v29 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v30 = v29;
        }

        else
        {
          v30 = 0;
        }

        MEMORY[0x1D3892890](v30);
      }

      v26 = type metadata accessor for StaticHH2Update;
      v27 = v12;
      return sub_1D1D301E4(v27, v26);
    }

    v21 = v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48)];
    sub_1D1D30558(v15, v9, type metadata accessor for StaticSoftwareUpdateMetadata);
    MEMORY[0x1D3892850](1);
    StaticSoftwareUpdateMetadata.hash(into:)(a1);
    if ((v21 - 2) >= 6u)
    {
      MEMORY[0x1D3892850](5);
      v22 = v21 & 1;
    }

    else
    {
      v22 = qword_1D1EAA0D0[(v21 - 2)];
    }

    MEMORY[0x1D3892850](v22);
    v26 = type metadata accessor for StaticSoftwareUpdateMetadata;
    v27 = v9;
  }

  return sub_1D1D301E4(v27, v26);
}

uint64_t StaticSoftwareUpdate.Kind.hashValue.getter()
{
  sub_1D1E6920C();
  StaticSoftwareUpdate.Kind.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticSoftwareUpdate.Kind.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD70, &qword_1D1EA83E0);
  v63 = *(v3 - 8);
  v64 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v74 = &v57 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD78, &qword_1D1EA83E8);
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v73 = &v57 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD80, &qword_1D1EA83F0);
  v65 = *(v7 - 8);
  v66 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v57 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD88, &qword_1D1EA83F8);
  v61 = *(v9 - 8);
  v62 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v69 = &v57 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DD90, &qword_1D1EA8400);
  v70 = *(v11 - 8);
  v71 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v57 - v12;
  v14 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v57 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v57 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v57 - v24;
  v26 = a1[3];
  v77 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1D1D304B0();
  v27 = v76;
  sub_1D1E692FC();
  if (!v27)
  {
    v57 = v23;
    v58 = v20;
    v28 = v74;
    v59 = v17;
    v30 = v72;
    v29 = v73;
    v60 = v25;
    v76 = v14;
    v32 = v70;
    v31 = v71;
    v33 = v75;
    v34 = sub_1D1E68DDC();
    v35 = (2 * *(v34 + 16)) | 1;
    v78 = v34;
    v79 = v34 + 32;
    v80 = 0;
    v81 = v35;
    v36 = sub_1D18085BC();
    if (v36 == 4 || v80 != v81 >> 1)
    {
      v40 = sub_1D1E688EC();
      swift_allocError();
      v41 = v13;
      v43 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v43 = v76;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v40 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v40);
      swift_willThrow();
      (*(v32 + 8))(v41, v31);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v36 > 1u)
      {
        v45 = v31;
        if (v36 == 2)
        {
          v82 = 2;
          sub_1D1D305C0();
          v46 = v29;
          sub_1D1E68C4C();
          v50 = v33;
          type metadata accessor for StaticSoftwareUpdateMetadata(0);
          v82 = 0;
          sub_1D1D300C0(&qword_1EC64DD98, type metadata accessor for StaticSoftwareUpdateMetadata, &protocol conformance descriptor for StaticSoftwareUpdateMetadata);
          v51 = v59;
          sub_1D1E68D7C();
          v52 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8);
          v82 = 1;
          sub_1D18074A4();
          v55 = v68;
          sub_1D1E68D7C();
          (*(v67 + 8))(v52, v55);
          (*(v32 + 8))(v13, v45);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v56 = v60;
          sub_1D1D30558(v51, v60, type metadata accessor for StaticSoftwareUpdate.Kind);
        }

        else
        {
          v82 = 3;
          sub_1D1D30504();
          sub_1D1E68C4C();
          v50 = v33;
          (*(v63 + 8))(v28, v64);
          (*(v32 + 8))(v13, v31);
          swift_unknownObjectRelease();
          v56 = v60;
          swift_storeEnumTagMultiPayload();
        }
      }

      else
      {
        v74 = v13;
        v37 = v32;
        if (v36)
        {
          v82 = 1;
          sub_1D1D30614();
          sub_1D1E68C4C();
          type metadata accessor for StaticSoftwareUpdateMetadata(0);
          v82 = 0;
          sub_1D1D300C0(&qword_1EC64DD98, type metadata accessor for StaticSoftwareUpdateMetadata, &protocol conformance descriptor for StaticSoftwareUpdateMetadata);
          v53 = v58;
          v54 = v66;
          sub_1D1E68D7C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8);
          v82 = 1;
          sub_1D18074A4();
          sub_1D1E68D7C();
          (*(v65 + 8))(v30, v54);
          (*(v37 + 8))(v74, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v53;
        }

        else
        {
          v82 = 0;
          sub_1D1D30668();
          v38 = v69;
          v39 = v74;
          sub_1D1E68C4C();
          type metadata accessor for StaticHH2Update(0);
          sub_1D1D300C0(&qword_1EC64CE48, type metadata accessor for StaticHH2Update, &protocol conformance descriptor for StaticHH2Update);
          v47 = v57;
          v48 = v62;
          sub_1D1E68D7C();
          (*(v61 + 8))(v38, v48);
          (*(v37 + 8))(v39, v31);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v49 = v47;
        }

        v56 = v60;
        sub_1D1D30558(v49, v60, type metadata accessor for StaticSoftwareUpdate.Kind);
        v50 = v33;
      }

      sub_1D1D30558(v56, v50, type metadata accessor for StaticSoftwareUpdate.Kind);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v77);
}

uint64_t sub_1D1D2CA6C()
{
  sub_1D1E6920C();
  StaticSoftwareUpdate.Kind.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D2CAB0(uint64_t a1)
{
  sub_1D1E6920C();
  StaticSoftwareUpdate.Kind.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D2CB34()
{
  if (*v0)
  {
    return 0x7571655272657375;
  }

  else
  {
    return 0x65746F6D6572;
  }
}

uint64_t sub_1D1D2CB78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65746F6D6572 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7571655272657375 && a2 == 0xED00006465747365)
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

uint64_t sub_1D1D2CC58(uint64_t a1)
{
  v2 = sub_1D1D306BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2CC94(uint64_t a1)
{
  v2 = sub_1D1D306BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2CCD0(uint64_t a1)
{
  v2 = sub_1D1D30764();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2CD0C(uint64_t a1)
{
  v2 = sub_1D1D30764();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2CD48(uint64_t a1)
{
  v2 = sub_1D1D30710();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2CD84(uint64_t a1)
{
  v2 = sub_1D1D30710();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticSoftwareUpdate.InstallingStateType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDA0, &qword_1D1EA8408);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDA8, &qword_1D1EA8410);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDB0, &qword_1D1EA8418);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D306BC();
  sub_1D1E6930C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1D1D30710();
    v14 = v18;
    sub_1D1E68DFC();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1D1D30764();
    sub_1D1E68DFC();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t StaticSoftwareUpdate.InstallingStateType.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

uint64_t StaticSoftwareUpdate.InstallingStateType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDD0, &qword_1D1EA8420);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDD8, &qword_1D1EA8428);
  v26 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDE0, &qword_1D1EA8430);
  v30 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D306BC();
  v12 = v31;
  sub_1D1E692FC();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_1D1E68DDC();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_1D18085D0();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_1D1E688EC();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v22 = &type metadata for StaticSoftwareUpdate.InstallingStateType;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_1D1D30710();
        sub_1D1E68C4C();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_1D1D30764();
        sub_1D1E68C4C();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_1D1D2D5D0(uint64_t a1)
{
  v2 = sub_1D1D30A04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D60C(uint64_t a1)
{
  v2 = sub_1D1D30A04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2D648()
{
  v1 = *v0;
  v2 = 1701736302;
  v3 = 0x696C6C6174736E69;
  if (v1 != 5)
  {
    v3 = 0x656C6C6174736E69;
  }

  v4 = 0x64616F6C6E776F64;
  if (v1 != 3)
  {
    v4 = 0x6574736575716572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x6C62616C69617661;
  if (v1 != 1)
  {
    v5 = 0x64616F6C6E776F64;
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

uint64_t sub_1D1D2D738@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D33070(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D2D760(uint64_t a1)
{
  v2 = sub_1D1D307B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D79C(uint64_t a1)
{
  v2 = sub_1D1D307B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2D7D8(uint64_t a1)
{
  v2 = sub_1D1D3095C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D814(uint64_t a1)
{
  v2 = sub_1D1D3095C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2D850(uint64_t a1)
{
  v2 = sub_1D1D309B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D88C(uint64_t a1)
{
  v2 = sub_1D1D309B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2D8C8(uint64_t a1)
{
  v2 = sub_1D1D3080C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D904(uint64_t a1)
{
  v2 = sub_1D1D3080C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2D940(uint64_t a1)
{
  v2 = sub_1D1D30860();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D97C(uint64_t a1)
{
  v2 = sub_1D1D30860();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2D9B8(uint64_t a1)
{
  v2 = sub_1D1D30A58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2D9F4(uint64_t a1)
{
  v2 = sub_1D1D30A58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D2DA30(uint64_t a1)
{
  v2 = sub_1D1D30908();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D2DA6C(uint64_t a1)
{
  v2 = sub_1D1D30908();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticSoftwareUpdate.State.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDE8, &qword_1D1EA8438);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v45 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDF0, &qword_1D1EA8440);
  v49 = *(v5 - 8);
  v50 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DDF8, &qword_1D1EA8448);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE00, &qword_1D1EA8450);
  v40 = *(v9 - 8);
  v41 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v39 = &v33 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE08, &qword_1D1EA8458);
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v36 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE10, &qword_1D1EA8460);
  v35 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE18, &qword_1D1EA8468);
  v34 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE20, &qword_1D1EA8470);
  v51 = *(v19 - 8);
  v52 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v20 = *v1;
  v21 = a1[3];
  v22 = a1;
  v24 = &v33 - v23;
  __swift_project_boxed_opaque_existential_1(v22, v21);
  sub_1D1D307B8();
  sub_1D1E6930C();
  if (v20 > 4)
  {
    switch(v20)
    {
      case 5:
        v56 = 3;
        sub_1D1D3095C();
        v25 = v39;
        v26 = v52;
        sub_1D1E68DFC();
        v28 = v40;
        v27 = v41;
        goto LABEL_15;
      case 6:
        v57 = 4;
        sub_1D1D30908();
        v25 = v42;
        v26 = v52;
        sub_1D1E68DFC();
        v28 = v43;
        v27 = v44;
        goto LABEL_15;
      case 7:
        v60 = 6;
        sub_1D1D3080C();
        v25 = v45;
        v26 = v52;
        sub_1D1E68DFC();
        v28 = v47;
        v27 = v48;
        goto LABEL_15;
    }

LABEL_12:
    v59 = 5;
    sub_1D1D30860();
    v29 = v46;
    v30 = v52;
    sub_1D1E68DFC();
    v58 = v20 & 1;
    sub_1D1D308B4();
    v31 = v50;
    sub_1D1E68F1C();
    (*(v49 + 8))(v29, v31);
    return (*(v51 + 8))(v24, v30);
  }

  switch(v20)
  {
    case 2:
      v53 = 0;
      sub_1D1D30A58();
      v26 = v52;
      sub_1D1E68DFC();
      (*(v34 + 8))(v18, v16);
      break;
    case 3:
      v54 = 1;
      sub_1D1D30A04();
      v26 = v52;
      sub_1D1E68DFC();
      (*(v35 + 8))(v15, v13);
      break;
    case 4:
      v55 = 2;
      sub_1D1D309B0();
      v25 = v36;
      v26 = v52;
      sub_1D1E68DFC();
      v28 = v37;
      v27 = v38;
LABEL_15:
      (*(v28 + 8))(v25, v27);
      return (*(v51 + 8))(v24, v26);
    default:
      goto LABEL_12;
  }

  return (*(v51 + 8))(v24, v26);
}

uint64_t StaticSoftwareUpdate.State.hash(into:)()
{
  v1 = *v0;
  if ((*v0 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_1D1EAA0D0[(*v0 - 2)];
  }

  return MEMORY[0x1D3892850](v2);
}

uint64_t StaticSoftwareUpdate.State.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  if ((v1 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_1D1EAA0D0[(v1 - 2)];
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t StaticSoftwareUpdate.State.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE70, &qword_1D1EA8478);
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v66 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE78, &qword_1D1EA8480);
  v59 = *(v5 - 8);
  v60 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE80, &qword_1D1EA8488);
  v55 = *(v7 - 8);
  v56 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE88, &qword_1D1EA8490);
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v61 = &v46 - v10;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE90, &qword_1D1EA8498);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v62 = &v46 - v11;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DE98, &qword_1D1EA84A0);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DEA0, &qword_1D1EA84A8);
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DEA8, &qword_1D1EA84B0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v46 - v19;
  v21 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1D1D307B8();
  v22 = v68;
  sub_1D1E692FC();
  if (!v22)
  {
    v23 = v16;
    v46 = v14;
    v47 = v13;
    v25 = v64;
    v24 = v65;
    v26 = v66;
    v68 = v18;
    v27 = sub_1D1E68DDC();
    v28 = (2 * *(v27 + 16)) | 1;
    v69 = v27;
    v70 = v27 + 32;
    v71 = 0;
    v72 = v28;
    v29 = sub_1D18085C4();
    v30 = v20;
    if (v29 != 7 && v71 == v72 >> 1)
    {
      if (v29 <= 2u)
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v73 = 1;
            sub_1D1D30A04();
            v42 = v47;
            sub_1D1E68C4C();
            (*(v49 + 8))(v42, v50);
            (*(v68 + 8))(v30, v17);
            swift_unknownObjectRelease();
            v36 = 3;
          }

          else
          {
            v73 = 2;
            sub_1D1D309B0();
            v44 = v62;
            sub_1D1E68C4C();
            (*(v51 + 8))(v44, v52);
            (*(v68 + 8))(v30, v17);
            swift_unknownObjectRelease();
            v36 = 4;
          }
        }

        else
        {
          v73 = 0;
          sub_1D1D30A58();
          sub_1D1E68C4C();
          (*(v48 + 8))(v23, v46);
          (*(v68 + 8))(v20, v17);
          swift_unknownObjectRelease();
          v36 = 2;
        }
      }

      else
      {
        v31 = v20;
        if (v29 <= 4u)
        {
          v32 = v67;
          v33 = v68;
          v34 = v63;
          if (v29 == 3)
          {
            v73 = 3;
            sub_1D1D3095C();
            v35 = v61;
            sub_1D1E68C4C();
            (*(v53 + 8))(v35, v54);
            (*(v33 + 8))(v31, v17);
            swift_unknownObjectRelease();
            v36 = 5;
          }

          else
          {
            v73 = 4;
            sub_1D1D30908();
            sub_1D1E68C4C();
            (*(v55 + 8))(v25, v56);
            (*(v33 + 8))(v31, v17);
            swift_unknownObjectRelease();
            v36 = 6;
          }

          v40 = v32;
          goto LABEL_22;
        }

        v43 = v68;
        if (v29 == 5)
        {
          v73 = 5;
          sub_1D1D30860();
          sub_1D1E68C4C();
          sub_1D1D30AAC();
          v45 = v60;
          sub_1D1E68D7C();
          (*(v59 + 8))(v24, v45);
          (*(v43 + 8))(v31, v17);
          swift_unknownObjectRelease();
          v36 = v73;
        }

        else
        {
          v73 = 6;
          sub_1D1D3080C();
          sub_1D1E68C4C();
          (*(v57 + 8))(v26, v58);
          (*(v43 + 8))(v31, v17);
          swift_unknownObjectRelease();
          v36 = 7;
        }
      }

      v40 = v67;
      v34 = v63;
LABEL_22:
      *v34 = v36;
      return __swift_destroy_boxed_opaque_existential_1(v40);
    }

    v37 = sub_1D1E688EC();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v39 = &type metadata for StaticSoftwareUpdate.State;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v68 + 8))(v30, v17);
    swift_unknownObjectRelease();
  }

  v40 = v67;
  return __swift_destroy_boxed_opaque_existential_1(v40);
}

uint64_t sub_1D1D2ED24()
{
  v1 = *v0;
  if ((*v0 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v2 = v1 & 1;
  }

  else
  {
    v2 = qword_1D1EAA0D0[(*v0 - 2)];
  }

  return MEMORY[0x1D3892850](v2);
}

uint64_t sub_1D1D2ED80(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  if ((v2 - 2) >= 6u)
  {
    MEMORY[0x1D3892850](5);
    v3 = v2 & 1;
  }

  else
  {
    v3 = qword_1D1EAA0D0[(v2 - 2)];
  }

  MEMORY[0x1D3892850](v3);
  return sub_1D1E6926C();
}

void sub_1D1D2EE24(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v6 = [a1 state];
  if (v6 > 2)
  {
    switch(v6)
    {
      case 3:

        v7 = 0;
        goto LABEL_22;
      case 4:
        v8 = [a1 version];
        if (v8)
        {
          v9 = v8;
          if (!a2)
          {

            goto LABEL_13;
          }

          sub_1D1D332D0();
          v10 = sub_1D1E684FC();

          if ((v10 & 1) == 0)
          {
LABEL_13:
            v7 = 2;
            goto LABEL_22;
          }
        }

        else
        {

          if (a2)
          {

            goto LABEL_13;
          }
        }

        v7 = 7;
        goto LABEL_22;
      case 5:

        v7 = 6;
        goto LABEL_22;
    }

LABEL_12:

    goto LABEL_13;
  }

  if (!v6)
  {

    v7 = 3;
    goto LABEL_22;
  }

  if (v6 == 1)
  {

    v7 = 4;
    goto LABEL_22;
  }

  if (v6 != 2)
  {
    goto LABEL_12;
  }

  v7 = 5;
LABEL_22:
  *a3 = v7;
}

void sub_1D1D2EF78(void *a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v4 = a1;
  switch([a1 status])
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 0x11uLL:
      v7 = [v4 version];
      if (v7)
      {
        v8 = v7;
        if (a2)
        {
          sub_1D1D332D0();
          v9 = sub_1D1E684FC();

          if ((v9 & 1) == 0)
          {
            goto LABEL_17;
          }

          goto LABEL_12;
        }

LABEL_16:
        goto LABEL_17;
      }

      if (a2)
      {
        v4 = a2;
        goto LABEL_16;
      }

LABEL_12:
      v6 = 7;
LABEL_18:
      *a3 = v6;
      return;
    case 3uLL:

      v6 = 3;
      goto LABEL_18;
    case 4uLL:
    case 5uLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x12uLL:

      v6 = 4;
      goto LABEL_18;
    case 6uLL:
    case 7uLL:
    case 8uLL:

      v6 = 5;
      goto LABEL_18;
    case 9uLL:
    case 0xAuLL:

      v6 = 0;
      goto LABEL_18;
    case 0xBuLL:

      v6 = 7;
      goto LABEL_18;
    default:

LABEL_17:
      v6 = 2;
      goto LABEL_18;
  }
}

uint64_t sub_1D1D2F0C0@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for StaticHH2Update(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticSoftwareUpdate(0);
  sub_1D1D30108(v1 + *(v9 + 20), v8, type metadata accessor for StaticSoftwareUpdate.Kind);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 1)
  {
    if (!result)
    {
      sub_1D1D30558(v8, v5, type metadata accessor for StaticHH2Update);
      if (*&v5[*(v3 + 24) + 8])
      {
        v11 = v5[*(v3 + 20)];
      }

      else
      {
        v11 = 8;
      }

      v12 = type metadata accessor for StaticHH2Update;
      v13 = v5;
      goto LABEL_10;
    }

LABEL_6:
    v11 = v8[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48)];
    v12 = type metadata accessor for StaticSoftwareUpdateMetadata;
    v13 = v8;
LABEL_10:
    result = sub_1D1D301E4(v13, v12);
    goto LABEL_11;
  }

  if (result == 2)
  {
    goto LABEL_6;
  }

  v11 = 3;
LABEL_11:
  *a1 = v11;
  return result;
}

uint64_t _s13HomeDataModel15StaticHH2UpdateV0E5StateO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = *(a2 + 8);
  if (!v3)
  {
    if (v5)
    {
      goto LABEL_8;
    }

    sub_1D18614E0(*a1, 0);
    v7 = v4;
    v8 = 0;
LABEL_15:
    sub_1D18614E0(v7, v8);
    return 1;
  }

  if (v3 != 1)
  {
    if (v5 < 2)
    {
      goto LABEL_8;
    }

    v9 = *a1;
    if (v2 != v4 || v3 != v5)
    {
      v11 = sub_1D1E6904C();
      sub_1D18614CC(v4, v5);
      sub_1D18614CC(v2, v3);
      sub_1D18614E0(v2, v3);
      sub_1D18614E0(v4, v5);
      return v11 & 1;
    }

    sub_1D18614CC(v9, v3);
    sub_1D18614CC(v2, v3);
    sub_1D18614E0(v2, v3);
    v7 = v2;
    v8 = v3;
    goto LABEL_15;
  }

  if (v5 != 1)
  {
LABEL_8:
    sub_1D18614CC(*a2, *(a2 + 8));
    sub_1D18614CC(v2, v3);
    sub_1D18614E0(v2, v3);
    sub_1D18614E0(v4, v5);
    return 0;
  }

  v6 = 1;
  sub_1D18614E0(*a1, 1uLL);
  sub_1D18614E0(v4, 1uLL);
  return v6;
}

BOOL _s13HomeDataModel15StaticHH2UpdateV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for StaticHH2Update(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);
  if (v6 > 4)
  {
    switch(v6)
    {
      case 5:
        if (v7 != 5)
        {
          return 0;
        }

        goto LABEL_23;
      case 6:
        if (v7 != 6)
        {
          return 0;
        }

        goto LABEL_23;
      case 7:
        if (v7 != 7)
        {
          return 0;
        }

        goto LABEL_23;
    }

LABEL_17:
    if (v7 - 2) < 6 || ((v7 ^ v6))
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v6 == 2)
  {
    if (v7 != 2)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v6 == 3)
  {
    if (v7 != 3)
    {
      return 0;
    }

    goto LABEL_23;
  }

  if (v6 != 4)
  {
    goto LABEL_17;
  }

  if (v7 != 4)
  {
    return 0;
  }

LABEL_23:
  v8 = v4;
  v9 = *(v4 + 24);
  v10 = *(a1 + v9 + 8);
  v22 = *(a1 + v9);
  v23 = v10;
  v11 = (a2 + v9);
  v12 = v11[1];
  v20 = *v11;
  v21 = v12;
  sub_1D18614CC(v22, v10);
  sub_1D18614CC(v20, v12);
  updated = _s13HomeDataModel15StaticHH2UpdateV0E5StateO2eeoiySbAE_AEtFZ_0(&v22, &v20);
  sub_1D18614E0(v20, v21);
  sub_1D18614E0(v22, v23);
  if (updated)
  {
    v14 = *(v8 + 28);
    v15 = (a1 + v14);
    v16 = *(a1 + v14 + 8);
    v17 = (a2 + v14);
    v18 = *(a2 + v14 + 8);
    if ((v16 & 1) == 0)
    {
      if (*v15 != *v17)
      {
        v18 = 1;
      }

      return (v18 & 1) == 0;
    }

    if (v18)
    {
      return 1;
    }
  }

  return 0;
}

BOOL _s13HomeDataModel20StaticSoftwareUpdateV5StateO2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 <= 4)
  {
    switch(v2)
    {
      case 2u:
        return v3 == 2;
      case 3u:
        return v3 == 3;
      case 4u:
        return v3 == 4;
    }

LABEL_16:
    if ((v3 - 2) >= 6)
    {
      return ((v3 ^ v2) & 1) == 0;
    }

    return 0;
  }

  if (v2 == 5)
  {
    return v3 == 5;
  }

  if (v2 != 6)
  {
    if (v2 == 7)
    {
      return v3 == 7;
    }

    goto LABEL_16;
  }

  return v3 == 6;
}

uint64_t _s13HomeDataModel28StaticSoftwareUpdateMetadataV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v39 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = a1[1];
  v15 = a2[1];
  if (v14)
  {
    if (!v15 || (*a1 != *a2 || v14 != v15) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v15)
  {
    return 0;
  }

  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  v17 = a1;
  v18 = a2;
  v39 = updated;
  v40 = v17;
  v19 = *(updated + 20);
  v20 = *(v11 + 48);
  sub_1D1741C08(v17 + v19, v13, &qword_1EC642570, &qword_1D1E6C6A0);
  v21 = v18 + v19;
  v22 = v18;
  sub_1D1741C08(v21, &v13[v20], &qword_1EC642570, &qword_1D1E6C6A0);
  v23 = *(v5 + 48);
  if (v23(v13, 1, v4) != 1)
  {
    sub_1D1741C08(v13, v10, &qword_1EC642570, &qword_1D1E6C6A0);
    if (v23(&v13[v20], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v20], v4);
      sub_1D1D300C0(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v25 = sub_1D1E6775C();
      v26 = *(v5 + 8);
      v26(v7, v4);
      v26(v10, v4);
      v22 = v18;
      sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
      if ((v25 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_17;
    }

    (*(v5 + 8))(v10, v4);
LABEL_13:
    sub_1D1741A30(v13, &qword_1EC642AC0, &qword_1D1E6E810);
    return 0;
  }

  if (v23(&v13[v20], 1, v4) != 1)
  {
    goto LABEL_13;
  }

  sub_1D1741A30(v13, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_17:
  v28 = v39;
  v27 = v40;
  v29 = *(v39 + 24);
  v30 = (v40 + v29);
  v31 = *(v40 + v29 + 8);
  v32 = (v22 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33 || (*v30 != *v32 || v31 != v33) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v33)
  {
    return 0;
  }

  v34 = *(v28 + 28);
  v35 = (v27 + v34);
  v36 = *(v27 + v34 + 8);
  v37 = (v22 + v34);
  v38 = v37[1];
  if (v36)
  {
    if (v38 && (*v35 == *v37 && v36 == v38 || (sub_1D1E6904C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v38)
  {
    return 1;
  }

  return 0;
}

BOOL _s13HomeDataModel20StaticSoftwareUpdateV4KindO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for StaticSoftwareUpdateMetadata(0);
  v5 = MEMORY[0x1EEE9AC00](updated - 8);
  v42 = (&v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v41 = (&v41 - v7);
  v8 = type metadata accessor for StaticHH2Update(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = (&v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = (&v41 - v16);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E0C0, &qword_1D1EAA0C8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v41 - v22;
  v24 = &v41 + *(v21 + 56) - v22;
  sub_1D1D30108(a1, &v41 - v22, type metadata accessor for StaticSoftwareUpdate.Kind);
  sub_1D1D30108(a2, v24, type metadata accessor for StaticSoftwareUpdate.Kind);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
LABEL_26:
        sub_1D1741A30(v23, &qword_1EC64E0C0, &qword_1D1EAA0C8);
        return 0;
      }

      goto LABEL_22;
    }

    sub_1D1D30108(v23, v14, type metadata accessor for StaticSoftwareUpdate.Kind);
    v28 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48);
    v29 = *(v14 + v28);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v26 = type metadata accessor for StaticSoftwareUpdateMetadata;
      v27 = v14;
      goto LABEL_25;
    }

    v30 = v24[v28];
    v31 = v24;
    v32 = v42;
    sub_1D1D30558(v31, v42, type metadata accessor for StaticSoftwareUpdateMetadata);
    v33 = _s13HomeDataModel28StaticSoftwareUpdateMetadataV2eeoiySbAC_ACtFZ_0(v14, v32);
    sub_1D1D301E4(v32, type metadata accessor for StaticSoftwareUpdateMetadata);
    sub_1D1D301E4(v14, type metadata accessor for StaticSoftwareUpdateMetadata);
    if (v33)
    {
      if (v29 > 4)
      {
        switch(v29)
        {
          case 5:
            goto LABEL_41;
          case 6:
            goto LABEL_45;
          case 7:
            goto LABEL_37;
        }
      }

      else
      {
        switch(v29)
        {
          case 2:
            goto LABEL_39;
          case 3:
            goto LABEL_43;
          case 4:
            goto LABEL_19;
        }
      }

      if (v30 - 2) < 6 || ((v30 ^ v29))
      {
        goto LABEL_49;
      }

      goto LABEL_22;
    }

LABEL_49:
    sub_1D1D301E4(v23, type metadata accessor for StaticSoftwareUpdate.Kind);
    return 0;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D1D30108(v23, v17, type metadata accessor for StaticSoftwareUpdate.Kind);
    v34 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644770, &qword_1D1E75AE8) + 48);
    v35 = *(v17 + v34);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v26 = type metadata accessor for StaticSoftwareUpdateMetadata;
      v27 = v17;
      goto LABEL_25;
    }

    v30 = v24[v34];
    v36 = v24;
    v37 = v41;
    sub_1D1D30558(v36, v41, type metadata accessor for StaticSoftwareUpdateMetadata);
    v38 = _s13HomeDataModel28StaticSoftwareUpdateMetadataV2eeoiySbAC_ACtFZ_0(v17, v37);
    sub_1D1D301E4(v37, type metadata accessor for StaticSoftwareUpdateMetadata);
    sub_1D1D301E4(v17, type metadata accessor for StaticSoftwareUpdateMetadata);
    if (v38)
    {
      if (v35 <= 4)
      {
        if (v35 != 2)
        {
          if (v35 != 3)
          {
            if (v35 == 4)
            {
LABEL_19:
              if (v30 != 4)
              {
                goto LABEL_49;
              }

LABEL_22:
              sub_1D1D301E4(v23, type metadata accessor for StaticSoftwareUpdate.Kind);
              return 1;
            }

LABEL_47:
            if (v30 - 2) < 6 || ((v30 ^ v35))
            {
              goto LABEL_49;
            }

            goto LABEL_22;
          }

LABEL_43:
          if (v30 != 3)
          {
            goto LABEL_49;
          }

          goto LABEL_22;
        }

LABEL_39:
        if (v30 != 2)
        {
          goto LABEL_49;
        }

        goto LABEL_22;
      }

      if (v35 != 5)
      {
        if (v35 != 6)
        {
          if (v35 != 7)
          {
            goto LABEL_47;
          }

LABEL_37:
          if (v30 != 7)
          {
            goto LABEL_49;
          }

          goto LABEL_22;
        }

LABEL_45:
        if (v30 != 6)
        {
          goto LABEL_49;
        }

        goto LABEL_22;
      }

LABEL_41:
      if (v30 != 5)
      {
        goto LABEL_49;
      }

      goto LABEL_22;
    }

    goto LABEL_49;
  }

  sub_1D1D30108(v23, v19, type metadata accessor for StaticSoftwareUpdate.Kind);
  if (swift_getEnumCaseMultiPayload())
  {
    v26 = type metadata accessor for StaticHH2Update;
    v27 = v19;
LABEL_25:
    sub_1D1D301E4(v27, v26);
    goto LABEL_26;
  }

  sub_1D1D30558(v24, v10, type metadata accessor for StaticHH2Update);
  v39 = _s13HomeDataModel15StaticHH2UpdateV2eeoiySbAC_ACtFZ_0(v19, v10);
  sub_1D1D301E4(v10, type metadata accessor for StaticHH2Update);
  sub_1D1D301E4(v19, type metadata accessor for StaticHH2Update);
  sub_1D1D301E4(v23, type metadata accessor for StaticSoftwareUpdate.Kind);
  return v39;
}

unint64_t sub_1D1D3006C()
{
  result = qword_1EC64DC58;
  if (!qword_1EC64DC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DC58);
  }

  return result;
}

uint64_t sub_1D1D300C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1D30108(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1D30190()
{
  result = qword_1EC64DC80;
  if (!qword_1EC64DC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DC80);
  }

  return result;
}

uint64_t sub_1D1D301E4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1D30244()
{
  result = qword_1EC64DCB0;
  if (!qword_1EC64DCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DCB0);
  }

  return result;
}

unint64_t sub_1D1D30298()
{
  result = qword_1EC64DCB8;
  if (!qword_1EC64DCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DCB8);
  }

  return result;
}

unint64_t sub_1D1D302EC()
{
  result = qword_1EC64DCC0;
  if (!qword_1EC64DCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DCC0);
  }

  return result;
}

unint64_t sub_1D1D30340()
{
  result = qword_1EC64DCC8;
  if (!qword_1EC64DCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DCC8);
  }

  return result;
}

unint64_t sub_1D1D303B4()
{
  result = qword_1EC64DCF8;
  if (!qword_1EC64DCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DCF8);
  }

  return result;
}

unint64_t sub_1D1D30408()
{
  result = qword_1EC64DD00;
  if (!qword_1EC64DD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD00);
  }

  return result;
}

unint64_t sub_1D1D3045C()
{
  result = qword_1EC64DD10;
  if (!qword_1EC64DD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD10);
  }

  return result;
}

unint64_t sub_1D1D304B0()
{
  result = qword_1EC64DD40;
  if (!qword_1EC64DD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD40);
  }

  return result;
}

unint64_t sub_1D1D30504()
{
  result = qword_1EC64DD48;
  if (!qword_1EC64DD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD48);
  }

  return result;
}

uint64_t sub_1D1D30558(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1D305C0()
{
  result = qword_1EC64DD50;
  if (!qword_1EC64DD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD50);
  }

  return result;
}

unint64_t sub_1D1D30614()
{
  result = qword_1EC64DD60;
  if (!qword_1EC64DD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD60);
  }

  return result;
}

unint64_t sub_1D1D30668()
{
  result = qword_1EC64DD68;
  if (!qword_1EC64DD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DD68);
  }

  return result;
}

unint64_t sub_1D1D306BC()
{
  result = qword_1EC64DDB8;
  if (!qword_1EC64DDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DDB8);
  }

  return result;
}

unint64_t sub_1D1D30710()
{
  result = qword_1EC64DDC0;
  if (!qword_1EC64DDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DDC0);
  }

  return result;
}

unint64_t sub_1D1D30764()
{
  result = qword_1EC64DDC8;
  if (!qword_1EC64DDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DDC8);
  }

  return result;
}

unint64_t sub_1D1D307B8()
{
  result = qword_1EC64DE28;
  if (!qword_1EC64DE28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE28);
  }

  return result;
}

unint64_t sub_1D1D3080C()
{
  result = qword_1EC64DE30;
  if (!qword_1EC64DE30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE30);
  }

  return result;
}

unint64_t sub_1D1D30860()
{
  result = qword_1EC64DE38;
  if (!qword_1EC64DE38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE38);
  }

  return result;
}

unint64_t sub_1D1D308B4()
{
  result = qword_1EC64DE40;
  if (!qword_1EC64DE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE40);
  }

  return result;
}

unint64_t sub_1D1D30908()
{
  result = qword_1EC64DE48;
  if (!qword_1EC64DE48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE48);
  }

  return result;
}

unint64_t sub_1D1D3095C()
{
  result = qword_1EC64DE50;
  if (!qword_1EC64DE50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE50);
  }

  return result;
}

unint64_t sub_1D1D309B0()
{
  result = qword_1EC64DE58;
  if (!qword_1EC64DE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE58);
  }

  return result;
}

unint64_t sub_1D1D30A04()
{
  result = qword_1EC64DE60;
  if (!qword_1EC64DE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE60);
  }

  return result;
}

unint64_t sub_1D1D30A58()
{
  result = qword_1EC64DE68;
  if (!qword_1EC64DE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DE68);
  }

  return result;
}

unint64_t sub_1D1D30AAC()
{
  result = qword_1EC64DEB0;
  if (!qword_1EC64DEB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DEB0);
  }

  return result;
}

unint64_t sub_1D1D30B94()
{
  result = qword_1EC64DEC8;
  if (!qword_1EC64DEC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DEC8);
  }

  return result;
}

unint64_t sub_1D1D30C7C()
{
  result = qword_1EC64DEE0;
  if (!qword_1EC64DEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DEE0);
  }

  return result;
}

unint64_t sub_1D1D30CD4()
{
  result = qword_1EC64DEE8;
  if (!qword_1EC64DEE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DEE8);
  }

  return result;
}

uint64_t sub_1D1D30D50(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StaticSoftwareUpdate.Kind(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1D1D30DFC(uint64_t a1)
{
  sub_1D17BDF80(319, qword_1EE07D1F8, MEMORY[0x1E69E6158]);
  if (v1 <= 0x3F)
  {
    sub_1D17B77BC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1D30EC4(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07D1E8, MEMORY[0x1E69E63B0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel15StaticHH2UpdateV0E5StateO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D1D30F88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1D30FDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1D1D31038(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

void sub_1D1D31068(uint64_t a1)
{
  type metadata accessor for StaticHH2Update(319);
  if (v1 <= 0x3F)
  {
    sub_1D1D310DC(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D1D310DC(uint64_t a1)
{
  if (!qword_1EE07D230[0])
  {
    type metadata accessor for StaticSoftwareUpdateMetadata(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EE07D230);
    }
  }
}

uint64_t getEnumTagSinglePayload for StaticSoftwareUpdate.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_20;
  }

  v2 = a2 + 7;
  if (a2 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 7;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 7;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 7)
  {
    return v8 - 6;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StaticSoftwareUpdate.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 7;
  if (a3 + 7 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xF9)
  {
    v5 = 0;
  }

  if (a2 > 0xF8)
  {
    v6 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D1D312B0(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D1D312C4(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1D1D31458()
{
  result = qword_1EC64DEF0;
  if (!qword_1EC64DEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DEF0);
  }

  return result;
}

unint64_t sub_1D1D314B0()
{
  result = qword_1EC64DEF8;
  if (!qword_1EC64DEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DEF8);
  }

  return result;
}

unint64_t sub_1D1D31508()
{
  result = qword_1EC64DF00;
  if (!qword_1EC64DF00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF00);
  }

  return result;
}

unint64_t sub_1D1D31560()
{
  result = qword_1EC64DF08;
  if (!qword_1EC64DF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF08);
  }

  return result;
}

unint64_t sub_1D1D315B8()
{
  result = qword_1EC64DF10;
  if (!qword_1EC64DF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF10);
  }

  return result;
}

unint64_t sub_1D1D31610()
{
  result = qword_1EC64DF18;
  if (!qword_1EC64DF18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF18);
  }

  return result;
}

unint64_t sub_1D1D31668()
{
  result = qword_1EC64DF20;
  if (!qword_1EC64DF20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF20);
  }

  return result;
}

unint64_t sub_1D1D316C0()
{
  result = qword_1EC64DF28;
  if (!qword_1EC64DF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF28);
  }

  return result;
}

unint64_t sub_1D1D31718()
{
  result = qword_1EC64DF30;
  if (!qword_1EC64DF30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF30);
  }

  return result;
}

unint64_t sub_1D1D31770()
{
  result = qword_1EC64DF38;
  if (!qword_1EC64DF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF38);
  }

  return result;
}

unint64_t sub_1D1D317C8()
{
  result = qword_1EC64DF40;
  if (!qword_1EC64DF40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF40);
  }

  return result;
}

unint64_t sub_1D1D31820()
{
  result = qword_1EC64DF48;
  if (!qword_1EC64DF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF48);
  }

  return result;
}

unint64_t sub_1D1D31878()
{
  result = qword_1EC64DF50;
  if (!qword_1EC64DF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF50);
  }

  return result;
}

unint64_t sub_1D1D318D0()
{
  result = qword_1EC64DF58;
  if (!qword_1EC64DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF58);
  }

  return result;
}

unint64_t sub_1D1D31928()
{
  result = qword_1EC64DF60;
  if (!qword_1EC64DF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF60);
  }

  return result;
}

unint64_t sub_1D1D31980()
{
  result = qword_1EC64DF68;
  if (!qword_1EC64DF68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF68);
  }

  return result;
}

unint64_t sub_1D1D319D8()
{
  result = qword_1EC64DF70;
  if (!qword_1EC64DF70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF70);
  }

  return result;
}

unint64_t sub_1D1D31A30()
{
  result = qword_1EC64DF78;
  if (!qword_1EC64DF78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF78);
  }

  return result;
}

unint64_t sub_1D1D31A88()
{
  result = qword_1EC64DF80;
  if (!qword_1EC64DF80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF80);
  }

  return result;
}

unint64_t sub_1D1D31AE0()
{
  result = qword_1EC64DF88;
  if (!qword_1EC64DF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF88);
  }

  return result;
}

unint64_t sub_1D1D31B38()
{
  result = qword_1EC64DF90;
  if (!qword_1EC64DF90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF90);
  }

  return result;
}

unint64_t sub_1D1D31B90()
{
  result = qword_1EC64DF98;
  if (!qword_1EC64DF98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DF98);
  }

  return result;
}

unint64_t sub_1D1D31BE8()
{
  result = qword_1EC64DFA0;
  if (!qword_1EC64DFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFA0);
  }

  return result;
}

unint64_t sub_1D1D31C40()
{
  result = qword_1EC64DFA8;
  if (!qword_1EC64DFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFA8);
  }

  return result;
}

unint64_t sub_1D1D31C98()
{
  result = qword_1EC64DFB0;
  if (!qword_1EC64DFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFB0);
  }

  return result;
}

unint64_t sub_1D1D31CF0()
{
  result = qword_1EC64DFB8;
  if (!qword_1EC64DFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFB8);
  }

  return result;
}

unint64_t sub_1D1D31D48()
{
  result = qword_1EC64DFC0;
  if (!qword_1EC64DFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFC0);
  }

  return result;
}

unint64_t sub_1D1D31DA0()
{
  result = qword_1EC64DFC8;
  if (!qword_1EC64DFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFC8);
  }

  return result;
}

unint64_t sub_1D1D31DF8()
{
  result = qword_1EC64DFD0;
  if (!qword_1EC64DFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFD0);
  }

  return result;
}

unint64_t sub_1D1D31E50()
{
  result = qword_1EC64DFD8;
  if (!qword_1EC64DFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFD8);
  }

  return result;
}

unint64_t sub_1D1D31EA8()
{
  result = qword_1EC64DFE0;
  if (!qword_1EC64DFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFE0);
  }

  return result;
}

unint64_t sub_1D1D31F00()
{
  result = qword_1EC64DFE8;
  if (!qword_1EC64DFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFE8);
  }

  return result;
}

unint64_t sub_1D1D31F58()
{
  result = qword_1EC64DFF0;
  if (!qword_1EC64DFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFF0);
  }

  return result;
}

unint64_t sub_1D1D31FB0()
{
  result = qword_1EC64DFF8;
  if (!qword_1EC64DFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64DFF8);
  }

  return result;
}

unint64_t sub_1D1D32008()
{
  result = qword_1EC64E000;
  if (!qword_1EC64E000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E000);
  }

  return result;
}

unint64_t sub_1D1D32060()
{
  result = qword_1EC64E008;
  if (!qword_1EC64E008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E008);
  }

  return result;
}

unint64_t sub_1D1D320B8()
{
  result = qword_1EC64E010;
  if (!qword_1EC64E010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E010);
  }

  return result;
}

unint64_t sub_1D1D32110()
{
  result = qword_1EC64E018;
  if (!qword_1EC64E018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E018);
  }

  return result;
}

unint64_t sub_1D1D32168()
{
  result = qword_1EC64E020;
  if (!qword_1EC64E020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E020);
  }

  return result;
}

unint64_t sub_1D1D321C0()
{
  result = qword_1EC64E028;
  if (!qword_1EC64E028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E028);
  }

  return result;
}

unint64_t sub_1D1D32218()
{
  result = qword_1EC64E030;
  if (!qword_1EC64E030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E030);
  }

  return result;
}

unint64_t sub_1D1D32270()
{
  result = qword_1EC64E038;
  if (!qword_1EC64E038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E038);
  }

  return result;
}

unint64_t sub_1D1D322C8()
{
  result = qword_1EC64E040;
  if (!qword_1EC64E040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E040);
  }

  return result;
}

unint64_t sub_1D1D32320()
{
  result = qword_1EC64E048;
  if (!qword_1EC64E048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E048);
  }

  return result;
}

unint64_t sub_1D1D32378()
{
  result = qword_1EC64E050;
  if (!qword_1EC64E050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E050);
  }

  return result;
}

unint64_t sub_1D1D323D0()
{
  result = qword_1EC64E058;
  if (!qword_1EC64E058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E058);
  }

  return result;
}

unint64_t sub_1D1D32428()
{
  result = qword_1EC64E060;
  if (!qword_1EC64E060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E060);
  }

  return result;
}

unint64_t sub_1D1D32480()
{
  result = qword_1EC64E068;
  if (!qword_1EC64E068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E068);
  }

  return result;
}

unint64_t sub_1D1D324D8()
{
  result = qword_1EC64E070;
  if (!qword_1EC64E070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E070);
  }

  return result;
}

unint64_t sub_1D1D32530()
{
  result = qword_1EC64E078;
  if (!qword_1EC64E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E078);
  }

  return result;
}

unint64_t sub_1D1D32588()
{
  result = qword_1EC64E080;
  if (!qword_1EC64E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E080);
  }

  return result;
}

unint64_t sub_1D1D325E0()
{
  result = qword_1EC64E088;
  if (!qword_1EC64E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E088);
  }

  return result;
}

unint64_t sub_1D1D32638()
{
  result = qword_1EC64E090;
  if (!qword_1EC64E090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E090);
  }

  return result;
}

unint64_t sub_1D1D32690()
{
  result = qword_1EC64E098;
  if (!qword_1EC64E098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E098);
  }

  return result;
}

unint64_t sub_1D1D326E8()
{
  result = qword_1EC64E0A0;
  if (!qword_1EC64E0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E0A0);
  }

  return result;
}

unint64_t sub_1D1D32740()
{
  result = qword_1EC64E0A8;
  if (!qword_1EC64E0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E0A8);
  }

  return result;
}

unint64_t sub_1D1D32798()
{
  result = qword_1EC64E0B0;
  if (!qword_1EC64E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E0B0);
  }

  return result;
}

unint64_t sub_1D1D327F0()
{
  result = qword_1EC64E0B8;
  if (!qword_1EC64E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E0B8);
  }

  return result;
}

uint64_t sub_1D1D32844(uint64_t a1, unsigned __int8 *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17[-v5];
  v7 = type metadata accessor for StaticSoftwareUpdate(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = *a2;
  sub_1D1741C08(a1, v6, &qword_1EC644760, &unk_1D1E9E530);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_1D1D30558(v6, v10, type metadata accessor for StaticSoftwareUpdate);
    sub_1D1D2F0C0(&v18);
    if (v18 == 8 || (v11 & 0xFFFFFFFB) == 0)
    {
      goto LABEL_17;
    }

    if (v18 > 4u)
    {
      if (v18 != 5)
      {
        if (v18 == 6)
        {
          v14 = 0x80000001D1EC7980;
          v13 = 0xD000000000000019;
          goto LABEL_21;
        }

        if (v18 != 7)
        {
          goto LABEL_13;
        }

LABEL_17:
        sub_1D1D301E4(v10, type metadata accessor for StaticSoftwareUpdate);
        return 0;
      }
    }

    else
    {
      if (v18 == 2)
      {
        goto LABEL_17;
      }

      if (v18 != 3)
      {
        if (v18 == 4)
        {
          v12 = "HFSoftwareUpdateRequested";
          v13 = 0xD000000000000026;
LABEL_16:
          v14 = v12 | 0x8000000000000000;
LABEL_21:
          v16 = static String.hfLocalized(_:)(v13, v14);
          sub_1D1D301E4(v10, type metadata accessor for StaticSoftwareUpdate);
          return v16;
        }

LABEL_13:
        v12 = "StateDescriptionUpdateAvailable";
        v13 = 0xD000000000000025;
        goto LABEL_16;
      }
    }

    if ((v11 & 0xFE) == 2)
    {
      v12 = "toggle(options:context:)";
      v13 = 0xD00000000000002FLL;
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  sub_1D1741A30(v6, &qword_1EC644760, &unk_1D1E9E530);
  return 0;
}

uint64_t sub_1D1D32AF4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x4E657361656C6572 && a2 == 0xEB0000000065746FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x44657361656C6572 && a2 == 0xEB00000000657461 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x536E6F6973726576 && a2 == 0xED0000676E697274 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC8890 == a2)
  {

    return 3;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D1D32C7C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001D1EC88B0 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7964616572 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC88D0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D1E6904C();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D1D32DA0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574617453326868 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC88F0 == a2)
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

uint64_t sub_1D1D32F00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x50656D6F48326868 && a2 == 0xEA0000000000646FLL;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x50656D6F48316868 && a2 == 0xEA0000000000646FLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D1EC8910 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D1EC8930 == a2)
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

uint64_t sub_1D1D33070(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C62616C69617661 && a2 == 0xE900000000000065 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEB00000000676E69 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F6C6E776F64 && a2 == 0xEA00000000006465 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xE900000000000064 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x696C6C6174736E69 && a2 == 0xEA0000000000676ELL || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656C6C6174736E69 && a2 == 0xE900000000000064)
  {

    return 6;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

unint64_t sub_1D1D332D0()
{
  result = qword_1EC64E0C8;
  if (!qword_1EC64E0C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC64E0C8);
  }

  return result;
}

void sub_1D1D3335C(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v7 = [a1 name];
  v8 = sub_1D1E6781C();
  v10 = v9;

  v11 = type metadata accessor for StaticUser(0);
  v12 = (a3 + v11[5]);
  *v12 = v8;
  v12[1] = v10;
  v13 = [a2 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1D3676C(a2, a1, &v17);
  *(a3 + v11[7]) = v17;
  v14 = [a2 homeAccessControlForUser_];
  v15 = [v14 camerasAccessLevel];

  if (v15 == 2)
  {
    v16 = 2;
  }

  else
  {
    v16 = 1;
  }

  if (!v15)
  {
    v16 = 0;
  }

  *(a3 + v11[8]) = v16;
}

uint64_t StaticUser.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticUser.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticUser(0) + 20));

  return v1;
}

uint64_t StaticUser.homeId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for StaticUser(0) + 24);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t StaticUser.kind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticUser(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t StaticUser.cameraAccess.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticUser(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t type metadata accessor for StaticUser(uint64_t a1)
{
  result = qword_1EE07DB80;
  if (!qword_1EE07DB80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1D33694()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6449656D6F68;
  v4 = 1684957547;
  if (v1 != 3)
  {
    v4 = 0x63416172656D6163;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1701667182;
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

uint64_t sub_1D1D33718@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D38AAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D33740(uint64_t a1)
{
  v2 = sub_1D1D3707C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3377C(uint64_t a1)
{
  v2 = sub_1D1D3707C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticUser.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E0E8, &qword_1D1EAA100);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3707C();
  sub_1D1E6930C();
  v18 = 0;
  sub_1D1E66A7C();
  sub_1D1D3800C(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticUser(0);
    v17 = 1;
    sub_1D1E68ECC();
    v16 = 2;
    sub_1D1E68F1C();
    v15 = *(v3 + *(v9 + 28));
    v14 = 3;
    sub_1D1D370D0();
    sub_1D1E68F1C();
    v13 = *(v3 + *(v9 + 32));
    v12 = 4;
    sub_1D1D37124();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticUser.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1D3800C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for StaticUser(0);
  sub_1D1E678EC();
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v1 + *(v2 + 28)));
  return MEMORY[0x1D3892850](*(v1 + *(v2 + 32)));
}

uint64_t StaticUser.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D3800C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for StaticUser(0);
  sub_1D1E678EC();
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v0 + *(v1 + 28)));
  MEMORY[0x1D3892850](*(v0 + *(v1 + 32)));
  return sub_1D1E6926C();
}

uint64_t StaticUser.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v30 = sub_1D1E66A7C();
  v27 = *(v30 - 8);
  v3 = MEMORY[0x1EEE9AC00](v30);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = v24 - v6;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E108, &qword_1D1EAA108);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v9 = v24 - v8;
  v10 = type metadata accessor for StaticUser(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3707C();
  v29 = v9;
  v13 = v32;
  sub_1D1E692FC();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v32 = v5;
  v14 = v12;
  v39 = 0;
  sub_1D1D3800C(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68D7C();
  v15 = *(v27 + 32);
  v16 = v7;
  v17 = v30;
  v15(v14, v16, v30);
  v38 = 1;
  v18 = sub_1D1E68D2C();
  v24[0] = v15;
  v24[1] = 0;
  v25 = v10;
  v19 = (v14 + *(v10 + 20));
  *v19 = v18;
  v19[1] = v20;
  v37 = 2;
  v21 = v32;
  sub_1D1E68D7C();
  v22 = v25;
  (v24[0])(v14 + *(v25 + 24), v21, v17);
  v35 = 3;
  sub_1D1D37178();
  sub_1D1E68D7C();
  *(v14 + *(v22 + 28)) = v36;
  v33 = 4;
  sub_1D1D371CC();
  sub_1D1E68D7C();
  (*(v28 + 8))(v29, v31);
  *(v14 + *(v22 + 32)) = v34;
  sub_1D1D37220(v14, v26);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1D37284(v14);
}

uint64_t sub_1D1D340F0(int *a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D3800C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E678EC();
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v1 + a1[7]));
  MEMORY[0x1D3892850](*(v1 + a1[8]));
  return sub_1D1E6926C();
}

uint64_t sub_1D1D341E0(uint64_t a1, int *a2)
{
  sub_1D1E66A7C();
  sub_1D1D3800C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E678EC();
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v2 + a2[7]));
  return MEMORY[0x1D3892850](*(v2 + a2[8]));
}

uint64_t sub_1D1D342B4(uint64_t a1, int *a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1D3800C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E678EC();
  sub_1D1E676EC();
  MEMORY[0x1D3892850](*(v2 + a2[7]));
  MEMORY[0x1D3892850](*(v2 + a2[8]));
  return sub_1D1E6926C();
}

uint64_t sub_1D1D343D0(uint64_t a1)
{
  v2 = sub_1D1D373DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3440C(uint64_t a1)
{
  v2 = sub_1D1D373DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D34448()
{
  v1 = 0x72656E776FLL;
  v2 = 0x746E656469736572;
  if (*v0 != 2)
  {
    v2 = 0x7463697274736572;
  }

  if (*v0)
  {
    v1 = 0x7473696E696D6461;
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

uint64_t sub_1D1D344D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D38C54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D34500(uint64_t a1)
{
  v2 = sub_1D1D372E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3453C(uint64_t a1)
{
  v2 = sub_1D1D372E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D34578(uint64_t a1)
{
  v2 = sub_1D1D37430();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D345B4(uint64_t a1)
{
  v2 = sub_1D1D37430();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D345F0(uint64_t a1)
{
  v2 = sub_1D1D37388();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3462C(uint64_t a1)
{
  v2 = sub_1D1D37388();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D34668(uint64_t a1)
{
  v2 = sub_1D1D37334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D346A4(uint64_t a1)
{
  v2 = sub_1D1D37334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticUser.Kind.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E120, &qword_1D1EAA110);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E128, &qword_1D1EAA118);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E130, &qword_1D1EAA120);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E138, &qword_1D1EAA128);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E140, &qword_1D1EAA130);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D372E0();
  sub_1D1E6930C();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D1D37388();
      v18 = v27;
      sub_1D1E68DFC();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D1D37334();
      v18 = v30;
      sub_1D1E68DFC();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1D1D373DC();
    v18 = v24;
    sub_1D1E68DFC();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D1D37430();
  sub_1D1E68DFC();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t StaticUser.Kind.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E170, &qword_1D1EAA138);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E178, &qword_1D1EAA140);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E180, &qword_1D1EAA148);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E188, &qword_1D1EAA150);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E190, &unk_1D1EAA158);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D1D372E0();
  v15 = v46;
  sub_1D1E692FC();
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
    v22 = sub_1D1E68DDC();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1D18085BC();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1D1E688EC();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v28 = &type metadata for StaticUser.Kind;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1D1D373DC();
        v32 = v35;
        sub_1D1E68C4C();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1D1D37430();
        v25 = v35;
        sub_1D1E68C4C();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_1(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1D1D37388();
      v31 = v35;
      sub_1D1E68C4C();
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
      sub_1D1D37334();
      v33 = v35;
      sub_1D1E68C4C();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1D1D351A4()
{
  v1 = 0x6D6165727473;
  if (*v0 != 1)
  {
    v1 = 0x6E416D6165727473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7373656363416F6ELL;
  }
}

uint64_t sub_1D1D35208@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D38DC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D35230(uint64_t a1)
{
  v2 = sub_1D1D37484();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3526C(uint64_t a1)
{
  v2 = sub_1D1D37484();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D352A8(uint64_t a1)
{
  v2 = sub_1D1D37580();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D352E4(uint64_t a1)
{
  v2 = sub_1D1D37580();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D35320(uint64_t a1)
{
  v2 = sub_1D1D374D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3535C(uint64_t a1)
{
  v2 = sub_1D1D374D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D35398(uint64_t a1)
{
  v2 = sub_1D1D3752C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D353D4(uint64_t a1)
{
  v2 = sub_1D1D3752C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticUser.CameraAccessLevel.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E198, &qword_1D1EAA168);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1A0, &qword_1D1EAA170);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1A8, &qword_1D1EAA178);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1B0, &qword_1D1EAA180);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D37484();
  sub_1D1E6930C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D1D3752C();
      v9 = v21;
      sub_1D1E68DFC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D1D374D8();
      v9 = v24;
      sub_1D1E68DFC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D1D37580();
    sub_1D1E68DFC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t StaticUser.CameraAccessLevel.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1D8, &qword_1D1EAA188);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1E0, &qword_1D1EAA190);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1E8, &qword_1D1EAA198);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E1F0, &qword_1D1EAA1A0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D1D37484();
  v15 = v36;
  sub_1D1E692FC();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1D1E68DDC();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1D18085C8();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1D1E688EC();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v24 = &type metadata for StaticUser.CameraAccessLevel;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
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
          sub_1D1D3752C();
          sub_1D1E68C4C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D1D374D8();
          v26 = v17;
          sub_1D1E68C4C();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1D1D37580();
        sub_1D1E68C4C();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v37);
}

uint64_t StaticUser.user.getter()
{
  v1[15] = v0;
  v2 = sub_1D1E66A7C();
  v1[16] = v2;
  v1[17] = *(v2 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D35E18, 0, 0);
}

uint64_t sub_1D1D35E18()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[20] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1D35F08;
    v4 = 0;
  }

  else
  {
    v0[22] = sub_1D1E67E1C();
    v0[23] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1D364A0;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1D35F08()
{
  v45 = v0;
  v2 = v0[20];
  swift_beginAccess();
  v3 = *(v2 + 64);
  if (v3)
  {
    v4 = [v3 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v44 = sub_1D1749970(v5);
    sub_1D1747DDC(&v44);

    v6 = v44;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = v0[18];
  v8 = v0[16];
  v9 = v0[15];
  v10 = *(v0[17] + 16);
  v10(v0[19], v9, v8);
  v10(v7, v9, v8);
  v41 = v6 >> 62;
  if (v6 >> 62)
  {
LABEL_31:
    v43 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = sub_1D1E6873C();
  }

  else
  {
    v43 = v6 & 0xFFFFFFFFFFFFFF8;
    v11 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = 0;
  v42 = v6 & 0xC000000000000001;
  v40 = v6 + 32;
  while (v11 != v12)
  {
    if (v42)
    {
      v13 = v6;
      v14 = MEMORY[0x1D3891EF0](v12, v6);
    }

    else
    {
      if (v12 >= *(v43 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v13 = v6;
      v14 = *(v6 + 8 * v12 + 32);
    }

    v15 = v14;
    v16 = v0[18];
    v17 = [v14 users];
    sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
    v18 = sub_1D1E67C1C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73FA0;
    *(inited + 32) = [v15 currentUser];
    v44 = v18;
    sub_1D17A3D50(inited);
    v20 = v44;
    v1 = swift_task_alloc();
    *(v1 + 16) = v16;
    v21 = sub_1D174A6C4(sub_1D1749C64, v1, v20);

    if (v21)
    {
      v11 = v12;
      v6 = v13;
      break;
    }

    v22 = __OFADD__(v12++, 1);
    v6 = v13;
    if (v22)
    {
      goto LABEL_30;
    }
  }

  if (!v41)
  {
    if (v11 != *(v43 + 16))
    {
      goto LABEL_19;
    }

LABEL_25:
    v1 = *(v0[17] + 8);
    (v1)(v0[19], v0[16]);
    v33 = 0;
    goto LABEL_26;
  }

  if (v11 == sub_1D1E6873C())
  {
    goto LABEL_25;
  }

LABEL_19:
  if (v42)
  {
    v23 = MEMORY[0x1D3891EF0](v11, v6);
  }

  else
  {
    if (v11 >= *(v43 + 16))
    {
      __break(1u);
      goto LABEL_34;
    }

    v23 = *(v40 + 8 * v11);
  }

  v24 = v23;
  v25 = v0[19];
  v27 = v0[16];
  v26 = v0[17];
  v28 = [v23 users];
  sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
  v29 = sub_1D1E67C1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  v30 = swift_initStackObject();
  *(v30 + 16) = xmmword_1D1E73FA0;
  *(v30 + 32) = [v24 currentUser];
  v44 = v29;
  sub_1D17A3D50(v30);
  v31 = v44;
  v32 = swift_task_alloc();
  *(v32 + 16) = v25;
  v33 = sub_1D174A6C4(sub_1D1778988, v32, v31);

  v1 = *(v26 + 8);
  (v1)(v25, v27);

  if (!v33)
  {
LABEL_34:
    v36 = (v1)(v0[18], v0[16]);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v36, v37, v38);
  }

LABEL_26:
  v0[21] = v33;
  v34 = v0[18];
  v35 = v0[16];

  (v1)(v34, v35);
  v36 = sub_1D1D36428;
  v37 = 0;
  v38 = 0;

  return MEMORY[0x1EEE6DFA0](v36, v37, v38);
}

uint64_t sub_1D1D36428()
{

  v1 = *(v0 + 168);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1D364A0()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1D36538, 0, 0);
}

uint64_t sub_1D1D36538(uint64_t a1)
{
  *(v1 + 192) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D365C4, v3, v2);
}

uint64_t sub_1D1D365C4()
{

  *(v0 + 200) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1D36638, 0, 0);
}

uint64_t sub_1D1D36638(uint64_t a1)
{
  *(v1 + 208) = sub_1D1E66A2C();
  *(v1 + 216) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D366D0, v3, v2);
}

uint64_t sub_1D1D366D0()
{
  v1 = v0[26];
  v2 = v0[25];

  v3 = [v2 userFor_];

  v4 = v0[1];

  return v4(v3);
}

void sub_1D1D3676C(void *a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v4 = [a1 homeAccessControlForUser_];
  if ([v4 isOwner])
  {

    v5 = 0;
  }

  else
  {
    if (![v4 isAdministrator])
    {
      if ([v4 isRestrictedGuest])
      {
        v7[3] = &type metadata for HomeKitFeatures;
        v7[4] = sub_1D18076E8();
        LOBYTE(v7[0]) = 1;
        v6 = sub_1D1E66D5C();

        __swift_destroy_boxed_opaque_existential_1(v7);
        if (v6)
        {
          v5 = 3;
          goto LABEL_10;
        }
      }

      else
      {
      }

      v5 = 2;
      goto LABEL_10;
    }

    v5 = 1;
  }

LABEL_10:
  *a3 = v5;
}

uint64_t static StaticUser.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for StaticUser(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  v8 = v5 == *v7 && v6 == v7[1];
  if (v8 || (v9 = 1, (sub_1D1E6904C() & 1) == 0) && (v9 = 0, (sub_1D1E6904C() & 1) != 0))
  {

    JUMPOUT(0x1D3890070);
  }

  return v9;
}

uint64_t sub_1D1D3692C()
{
  v0 = sub_1D1E66A7C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticUser(0);
  __swift_allocate_value_buffer(v4, qword_1EE0814B0);
  v5 = __swift_project_value_buffer(v4, qword_1EE0814B0);
  if (qword_1EE07DB98 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EE0814C8);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  if (qword_1EE07DD70 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EE081518);
  v7((v5 + v4[6]), v8, v0);
  result = (*(v1 + 32))(v5, v3, v0);
  v10 = (v5 + v4[5]);
  *v10 = 0;
  v10[1] = 0xE000000000000000;
  *(v5 + v4[7]) = 0;
  *(v5 + v4[8]) = 1;
  return result;
}

uint64_t sub_1D1D36B04()
{
  v0 = sub_1D1E66A7C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticUser(0);
  __swift_allocate_value_buffer(v4, qword_1EC64E0D0);
  v5 = __swift_project_value_buffer(v4, qword_1EC64E0D0);
  if (qword_1EC642400 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EC6BE220);
  v7 = *(v1 + 16);
  v7(v3, v6, v0);
  if (qword_1EC6423E0 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_1EC6BE208);
  v7((v5 + v4[6]), v8, v0);
  result = (*(v1 + 32))(v5, v3, v0);
  v10 = (v5 + v4[5]);
  *v10 = 0x5520656C706D6153;
  v10[1] = 0xEB00000000726573;
  *(v5 + v4[7]) = 0;
  *(v5 + v4[8]) = 1;
  return result;
}

uint64_t static StaticUser.sample.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6423F8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StaticUser(0);
  v3 = __swift_project_value_buffer(v2, qword_1EC64E0D0);

  return sub_1D1D37220(v3, a1);
}

uint64_t sub_1D1D36D6C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v3, qword_1EE0814C8);
  v4 = __swift_project_value_buffer(v3, qword_1EE0814C8);
  sub_1D1E66A0C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1D36E9C()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v3, qword_1EC6BE220);
  v4 = __swift_project_value_buffer(v3, qword_1EC6BE220);
  sub_1D1E66A0C();
  v5 = *(v3 - 8);
  result = (*(v5 + 48))(v2, 1, v3);
  if (result != 1)
  {
    return (*(v5 + 32))(v4, v2, v3);
  }

  __break(1u);
  return result;
}

BOOL _s13HomeDataModel10StaticUserV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && ((v4 = type metadata accessor for StaticUser(0), v5 = v4[5], v6 = *(a1 + v5), v7 = *(a1 + v5 + 8), v8 = (a2 + v5), v6 == *v8) ? (v9 = v7 == v8[1]) : (v9 = 0), (v9 || (sub_1D1E6904C()) && (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && *(a1 + v4[7]) == *(a2 + v4[7])))
  {
    return *(a1 + v4[8]) == *(a2 + v4[8]);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D1D3707C()
{
  result = qword_1EC64E0F0;
  if (!qword_1EC64E0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E0F0);
  }

  return result;
}

unint64_t sub_1D1D370D0()
{
  result = qword_1EC64E0F8;
  if (!qword_1EC64E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E0F8);
  }

  return result;
}

unint64_t sub_1D1D37124()
{
  result = qword_1EC64E100;
  if (!qword_1EC64E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E100);
  }

  return result;
}

unint64_t sub_1D1D37178()
{
  result = qword_1EC64E110;
  if (!qword_1EC64E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E110);
  }

  return result;
}

unint64_t sub_1D1D371CC()
{
  result = qword_1EC64E118;
  if (!qword_1EC64E118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E118);
  }

  return result;
}

uint64_t sub_1D1D37220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticUser(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D37284(uint64_t a1)
{
  v2 = type metadata accessor for StaticUser(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D1D372E0()
{
  result = qword_1EC64E148;
  if (!qword_1EC64E148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E148);
  }

  return result;
}

unint64_t sub_1D1D37334()
{
  result = qword_1EC64E150;
  if (!qword_1EC64E150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E150);
  }

  return result;
}

unint64_t sub_1D1D37388()
{
  result = qword_1EC64E158;
  if (!qword_1EC64E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E158);
  }

  return result;
}

unint64_t sub_1D1D373DC()
{
  result = qword_1EC64E160;
  if (!qword_1EC64E160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E160);
  }

  return result;
}

unint64_t sub_1D1D37430()
{
  result = qword_1EC64E168;
  if (!qword_1EC64E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E168);
  }

  return result;
}

unint64_t sub_1D1D37484()
{
  result = qword_1EC64E1B8;
  if (!qword_1EC64E1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E1B8);
  }

  return result;
}

unint64_t sub_1D1D374D8()
{
  result = qword_1EC64E1C0;
  if (!qword_1EC64E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E1C0);
  }

  return result;
}

unint64_t sub_1D1D3752C()
{
  result = qword_1EC64E1C8;
  if (!qword_1EC64E1C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E1C8);
  }

  return result;
}

unint64_t sub_1D1D37580()
{
  result = qword_1EC64E1D0;
  if (!qword_1EC64E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E1D0);
  }

  return result;
}

uint64_t sub_1D1D375D4(uint64_t a1, char a2, void *a3)
{
  v45 = a3;
  v5 = type metadata accessor for StaticUser(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437D8, &unk_1D1EAAD40);
  result = MEMORY[0x1EEE9AC00](v10);
  v41 = &v35 - v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v39 = *(result + 48);
    v15 = a1 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v38 = *(v12 + 72);
    v42 = (v37 + 32);
    v36 = (v37 + 8);
    while (1)
    {
      v43 = v14;
      v17 = v41;
      sub_1D1D38FB4(v15, v41);
      v18 = *v42;
      v19 = v8;
      (*v42)(v44, v17, v8);
      v20 = v7;
      sub_1D1D38EE0(v17 + v39, v7);
      v21 = *v45;
      v23 = sub_1D1742188();
      v24 = v21[2];
      v25 = (v22 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      if (v21[3] >= v26)
      {
        if ((a2 & 1) == 0)
        {
          sub_1D1736910();
        }
      }

      else
      {
        sub_1D17248B4(v26, a2 & 1);
        v28 = sub_1D1742188();
        if ((v27 & 1) != (v29 & 1))
        {
          goto LABEL_17;
        }

        v23 = v28;
      }

      v30 = *v45;
      if (v27)
      {
        v8 = v19;
        (*v36)(v44, v19);
        v16 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1D39024(v20, v16);
      }

      else
      {
        v30[(v23 >> 6) + 8] |= 1 << v23;
        v8 = v19;
        v18((v30[6] + *(v37 + 72) * v23), v44, v19);
        v31 = v30[7] + *(v40 + 72) * v23;
        v7 = v20;
        result = sub_1D1D38EE0(v20, v31);
        v32 = v30[2];
        v33 = __OFADD__(v32, 1);
        v34 = v32 + 1;
        if (v33)
        {
          goto LABEL_16;
        }

        v30[2] = v34;
      }

      v15 += v38;
      a2 = 1;
      v14 = v43 - 1;
      if (v43 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1D3798C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437D8, &unk_1D1EAAD40);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v44 - v3;
  v55 = type metadata accessor for StaticUser(0);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 users];
  sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
  v8 = sub_1D1E67C1C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E73FA0;
  *(inited + 32) = [a1 currentUser];
  v56[0] = v8;
  sub_1D17A3D50(inited);
  v10 = v56[0];
  if (v56[0] >> 62)
  {
    goto LABEL_42;
  }

  v11 = *((v56[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = 0;
    v48 = v10 & 0xFFFFFFFFFFFFFF8;
    v49 = v10 & 0xC000000000000001;
    v46 = v10;
    v47 = v4;
    v45 = v11;
    do
    {
      if (v49)
      {
        v14 = MEMORY[0x1D3891EF0](v13, v10);
      }

      else
      {
        if (v13 >= *(v48 + 16))
        {
          goto LABEL_41;
        }

        v14 = *(v10 + 8 * v13 + 32);
      }

      v15 = v14;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        v11 = sub_1D1E6873C();
        goto LABEL_3;
      }

      v53 = v13 + 1;
      v54 = v12;
      v16 = [v14 uniqueIdentifier];
      sub_1D1E66A5C();

      v17 = [v15 name];
      v18 = sub_1D1E6781C();
      v19 = a1;
      v21 = v20;

      v22 = &v6[*(v55 + 20)];
      *v22 = v18;
      v22[1] = v21;
      a1 = v19;
      v23 = [v19 uniqueIdentifier];
      sub_1D1E66A5C();

      v24 = [v19 homeAccessControlForUser_];
      if ([v24 isOwner])
      {

        v25 = 0;
        v4 = v47;
        v12 = v54;
      }

      else
      {
        v26 = [v24 isAdministrator];
        v12 = v54;
        if (v26)
        {

          v25 = 1;
          v4 = v47;
        }

        else
        {
          if (![v24 isRestrictedGuest])
          {

            v4 = v47;
LABEL_17:
            v25 = 2;
            goto LABEL_18;
          }

          v56[3] = &type metadata for HomeKitFeatures;
          v56[4] = sub_1D18076E8();
          LOBYTE(v56[0]) = 1;
          v27 = sub_1D1E66D5C();

          __swift_destroy_boxed_opaque_existential_1(v56);
          v4 = v47;
          if ((v27 & 1) == 0)
          {
            goto LABEL_17;
          }

          v25 = 3;
        }
      }

LABEL_18:
      v28 = v55;
      v6[*(v55 + 28)] = v25;
      v29 = [a1 homeAccessControlForUser_];
      v30 = [v29 camerasAccessLevel];

      if (v30 == 2)
      {
        v31 = 2;
      }

      else
      {
        v31 = 1;
      }

      if (!v30)
      {
        v31 = 0;
      }

      v6[*(v28 + 32)] = v31;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_1D177D7F4(0, v12[2] + 1, 1, v12);
      }

      v33 = v12[2];
      v32 = v12[3];
      if (v33 >= v32 >> 1)
      {
        v12 = sub_1D177D7F4((v32 > 1), v33 + 1, 1, v12);
      }

      v12[2] = v33 + 1;
      sub_1D1D38EE0(v6, v12 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v33);
      ++v13;
      v10 = v46;
    }

    while (v53 != v45);
  }

  v34 = v12[2];
  if (v34)
  {
    v56[0] = MEMORY[0x1E69E7CC0];
    sub_1D178D218(0, v34, 0);
    v35 = v56[0];
    v36 = v12 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v37 = *(v52 + 72);
    do
    {
      v38 = *(v51 + 48);
      sub_1D1D37220(v36, &v4[v38]);
      v39 = sub_1D1E66A7C();
      (*(*(v39 - 8) + 16))(v4, &v4[v38], v39);
      v56[0] = v35;
      v41 = *(v35 + 16);
      v40 = *(v35 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1D178D218((v40 > 1), v41 + 1, 1);
        v35 = v56[0];
      }

      *(v35 + 16) = v41 + 1;
      sub_1D1D38F44(v4, v35 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v41);
      v36 += v37;
      --v34;
    }

    while (v34);

    if (*(v35 + 16))
    {
      goto LABEL_36;
    }

LABEL_38:
    v42 = MEMORY[0x1E69E7CC8];
    goto LABEL_39;
  }

  v35 = MEMORY[0x1E69E7CC0];
  if (!*(MEMORY[0x1E69E7CC0] + 16))
  {
    goto LABEL_38;
  }

LABEL_36:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B40, &qword_1D1E7E7D0);
  v42 = sub_1D1E68BCC();
LABEL_39:
  v56[0] = v42;
  sub_1D1D375D4(v35, 1, v56);

  return v56[0];
}

uint64_t sub_1D1D3800C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1D380A0()
{
  result = qword_1EC64E200;
  if (!qword_1EC64E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E200);
  }

  return result;
}

unint64_t sub_1D1D380F8()
{
  result = qword_1EC64E208;
  if (!qword_1EC64E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E208);
  }

  return result;
}

uint64_t sub_1D1D38174(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1D1D382C8()
{
  result = qword_1EC64E210;
  if (!qword_1EC64E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E210);
  }

  return result;
}

unint64_t sub_1D1D38320()
{
  result = qword_1EC64E218;
  if (!qword_1EC64E218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E218);
  }

  return result;
}

unint64_t sub_1D1D38378()
{
  result = qword_1EC64E220;
  if (!qword_1EC64E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E220);
  }

  return result;
}

unint64_t sub_1D1D383D0()
{
  result = qword_1EC64E228;
  if (!qword_1EC64E228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E228);
  }

  return result;
}

unint64_t sub_1D1D38428()
{
  result = qword_1EC64E230;
  if (!qword_1EC64E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E230);
  }

  return result;
}

unint64_t sub_1D1D38480()
{
  result = qword_1EC64E238;
  if (!qword_1EC64E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E238);
  }

  return result;
}

unint64_t sub_1D1D384D8()
{
  result = qword_1EC64E240;
  if (!qword_1EC64E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E240);
  }

  return result;
}

unint64_t sub_1D1D38530()
{
  result = qword_1EC64E248;
  if (!qword_1EC64E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E248);
  }

  return result;
}

unint64_t sub_1D1D38588()
{
  result = qword_1EC64E250;
  if (!qword_1EC64E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E250);
  }

  return result;
}

unint64_t sub_1D1D385E0()
{
  result = qword_1EC64E258;
  if (!qword_1EC64E258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E258);
  }

  return result;
}

unint64_t sub_1D1D38638()
{
  result = qword_1EC64E260;
  if (!qword_1EC64E260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E260);
  }

  return result;
}

unint64_t sub_1D1D38690()
{
  result = qword_1EC64E268;
  if (!qword_1EC64E268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E268);
  }

  return result;
}

unint64_t sub_1D1D386E8()
{
  result = qword_1EC64E270;
  if (!qword_1EC64E270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E270);
  }

  return result;
}

unint64_t sub_1D1D38740()
{
  result = qword_1EC64E278;
  if (!qword_1EC64E278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E278);
  }

  return result;
}

unint64_t sub_1D1D38798()
{
  result = qword_1EC64E280;
  if (!qword_1EC64E280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E280);
  }

  return result;
}

unint64_t sub_1D1D387F0()
{
  result = qword_1EC64E288;
  if (!qword_1EC64E288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E288);
  }

  return result;
}

unint64_t sub_1D1D38848()
{
  result = qword_1EC64E290;
  if (!qword_1EC64E290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E290);
  }

  return result;
}

unint64_t sub_1D1D388A0()
{
  result = qword_1EC64E298;
  if (!qword_1EC64E298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E298);
  }

  return result;
}

unint64_t sub_1D1D388F8()
{
  result = qword_1EC64E2A0;
  if (!qword_1EC64E2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E2A0);
  }

  return result;
}

unint64_t sub_1D1D38950()
{
  result = qword_1EC64E2A8;
  if (!qword_1EC64E2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E2A8);
  }

  return result;
}

unint64_t sub_1D1D389A8()
{
  result = qword_1EC64E2B0;
  if (!qword_1EC64E2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E2B0);
  }

  return result;
}

unint64_t sub_1D1D38A00()
{
  result = qword_1EC64E2B8;
  if (!qword_1EC64E2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E2B8);
  }

  return result;
}

unint64_t sub_1D1D38A58()
{
  result = qword_1EC64E2C0;
  if (!qword_1EC64E2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64E2C0);
  }

  return result;
}

uint64_t sub_1D1D38AAC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x63416172656D6163 && a2 == 0xEC00000073736563)
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

uint64_t sub_1D1D38C54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72656E776FLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7473696E696D6461 && a2 == 0xED0000726F746172 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E656469736572 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463697274736572 && a2 == 0xEF74736575476465)
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

uint64_t sub_1D1D38DC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7373656363416F6ELL && a2 == 0xE800000000000000;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D6165727473 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E416D6165727473 && a2 == 0xEE007370696C4364)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1D38EE0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticUser(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D38F44(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437D8, &unk_1D1EAAD40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D38FB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437D8, &unk_1D1EAAD40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1D39024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticUser(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D1D39098(void (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v18 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  v17[1] = v6 + 8;
  v17[2] = v6 + 16;
  v19 = a3;

  v14 = 0;
  while (v12)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    (*(v6 + 16))(v8, *(v19 + 56) + *(v6 + 72) * (v16 | (v15 << 6)), v5);
    v18(v8);
    (*(v6 + 8))(v8, v5);
    if (v3)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v13)
    {
      goto LABEL_11;
    }

    v12 = *(v9 + 8 * v15);
    ++v14;
    if (v12)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1D1D3926C(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

void sub_1D1D3936C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v25 = a1;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  MEMORY[0x1EEE9AC00](v24);
  v23 = &v23 - v6;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v26 = a3;

  v12 = 0;
  while (v10)
  {
    v27 = v4;
    v13 = v12;
LABEL_10:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = v14 | (v13 << 6);
    v16 = v26;
    v17 = *(v26 + 48);
    v18 = sub_1D1E66A7C();
    v19 = v23;
    (*(*(v18 - 8) + 16))(v23, v17 + *(*(v18 - 8) + 72) * v15, v18);
    v20 = *(v16 + 56);
    v21 = type metadata accessor for StaticService(0);
    sub_1D1D401E4(v20 + *(*(v21 - 8) + 72) * v15, v19 + *(v24 + 48), type metadata accessor for StaticService);
    v22 = v27;
    v25(v19);
    v4 = v22;
    sub_1D1741A30(v19, &qword_1EC642DB0, &unk_1D1E6F360);
    if (v22)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_11;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v27 = v4;
      v12 = v13;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1D1D395CC(uint64_t a1)
{
  v2 = sub_1D1D3EDF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D39608(uint64_t a1)
{
  v2 = sub_1D1D3EDF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D39644()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x726F737365636361;
  v4 = 0x4765636976726573;
  if (v1 != 3)
  {
    v4 = 0x737953616964656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656E656373;
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

uint64_t sub_1D1D396F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D3EEF0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D39718(uint64_t a1)
{
  v2 = sub_1D1D3ECF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D39754(uint64_t a1)
{
  v2 = sub_1D1D3ECF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D39790(uint64_t a1)
{
  v2 = sub_1D1D3ED4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D397CC(uint64_t a1)
{
  v2 = sub_1D1D3ED4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D39808(uint64_t a1)
{
  v2 = sub_1D1D3EE48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D39844(uint64_t a1)
{
  v2 = sub_1D1D3EE48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D39880(uint64_t a1)
{
  v2 = sub_1D1D3EDA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D398BC(uint64_t a1)
{
  v2 = sub_1D1D3EDA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1D398F8(uint64_t a1)
{
  v2 = sub_1D1D3EE9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D39934(uint64_t a1)
{
  v2 = sub_1D1D3EE9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PredictionKind.encode(to:)(void *a1, int a2)
{
  v40 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E2C8, &qword_1D1EAAD50);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v29 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E2D0, &qword_1D1EAAD58);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v29 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E2D8, &qword_1D1EAAD60);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E2E0, &qword_1D1EAAD68);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E2E8, &qword_1D1EAAD70);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E2F0, &unk_1D1EAAD78);
  v15 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v29 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3ECF8();
  sub_1D1E6930C();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_1D1D3EE48();
      v28 = v41;
      sub_1D1E68DFC();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_1D1D3EE9C();
    v25 = v41;
    sub_1D1E68DFC();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_1D1D3EDF4();
    v26 = v29;
    v25 = v41;
    sub_1D1E68DFC();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_1D1D3EDA0();
    v19 = v32;
    v20 = v41;
    sub_1D1E68DFC();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_1D1D3ED4C();
    v19 = v35;
    v20 = v41;
    sub_1D1E68DFC();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

uint64_t PredictionKind.hashValue.getter(unsigned __int8 a1)
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1D39F6C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D1D3F0AC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t StaticUserActionPrediction.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1D1D3A0AC()
{
  v1 = 25705;
  v2 = 0x4965636976726573;
  if (*v0 != 2)
  {
    v2 = 1684957547;
  }

  if (*v0)
  {
    v1 = 0x65726F6373;
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

uint64_t sub_1D1D3A114@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1D40084(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1D3A13C(uint64_t a1)
{
  v2 = sub_1D1D3F810();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1D3A178(uint64_t a1)
{
  v2 = sub_1D1D3F810();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticUserActionPrediction.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E328, &qword_1D1EAAD88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3F810();
  sub_1D1E6930C();
  v16 = 0;
  sub_1D1E66A7C();
  sub_1D1D40314(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticUserActionPrediction(0);
    v15 = 1;
    sub_1D1E68EEC();
    v14 = 2;
    sub_1D1E68E5C();
    v13 = *(v3 + *(v9 + 28));
    v12 = 3;
    sub_1D1D3F864();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticUserActionPrediction.hash(into:)(uint64_t a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1D1D40314(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v9 = type metadata accessor for StaticUserActionPrediction(0);
  v10 = *(v1 + v9[5]);
  if (v10 == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x1D3892890](*&v10);
  sub_1D1741C08(v1 + v9[6], v8, &qword_1EC642590, qword_1D1E71260);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v3 + 8))(v5, v2);
  }

  return MEMORY[0x1D3892850](*(v1 + v9[7]));
}

uint64_t StaticUserActionPrediction.hashValue.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  sub_1D1E6920C();
  sub_1D1D40314(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v8 = type metadata accessor for StaticUserActionPrediction(0);
  v9 = *(v0 + v8[5]);
  if (v9 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x1D3892890](*&v9);
  sub_1D1741C08(v0 + v8[6], v7, &qword_1EC642590, qword_1D1E71260);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v2 + 8))(v4, v1);
  }

  MEMORY[0x1D3892850](*(v0 + v8[7]));
  return sub_1D1E6926C();
}

uint64_t StaticUserActionPrediction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v23 = sub_1D1E66A7C();
  v20 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64E340, &unk_1D1EAAD90);
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v17 - v8;
  v10 = type metadata accessor for StaticUserActionPrediction(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1D3F810();
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = v6;
  v13 = v20;
  v29 = 0;
  sub_1D1D40314(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68D7C();
  (*(v13 + 32))(v12, v22, v23);
  v28 = 1;
  sub_1D1E68D4C();
  *&v12[v10[5]] = v14;
  v27 = 2;
  v15 = v18;
  sub_1D1E68CBC();
  sub_1D1778308(v15, &v12[v10[6]]);
  v25 = 3;
  sub_1D1D3F8B8();
  sub_1D1E68D7C();
  (*(v21 + 8))(v9, v24);
  v12[v10[7]] = v26;
  sub_1D1D401E4(v12, v19, type metadata accessor for StaticUserActionPrediction);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1D402B4(v12, type metadata accessor for StaticUserActionPrediction);
}

uint64_t sub_1D1D3AD30(uint64_t a1, int *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1D1E6920C();
  sub_1D1D40314(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v11 = *(v2 + a2[5]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1D3892890](*&v11);
  sub_1D1741C08(v2 + a2[6], v10, &qword_1EC642590, qword_1D1E71260);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  MEMORY[0x1D3892850](*(v2 + a2[7]));
  return sub_1D1E6926C();
}

void sub_1D1D3B008(char *a1, uint64_t a2)
{
  v79 = type metadata accessor for StaticService(0);
  v91 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v90 = &v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  MEMORY[0x1EEE9AC00](v84);
  v89 = &v75 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC40, &unk_1D1EAADA0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v75 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v75 - v16;
  v18 = type metadata accessor for StaticUserActionPrediction(0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v75 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1E69E7CC0];
  v94 = MEMORY[0x1E69E7CC0];
  v22 = *(a2 + 16);

  v85 = v22;
  if (!v22)
  {
    v88 = v21;
LABEL_53:

    MEMORY[0x1EEE9AC00](v74);
    *(&v75 - 2) = a1;
    *(&v75 - 1) = &v94;
    sub_1D178A420(sub_1D1D40360, (&v75 - 4), a2);

    return;
  }

  v83 = v17;
  v23 = 0;
  v93 = a2 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
  v92 = *(v19 + 72);
  v80 = MEMORY[0x1E69E7CC0];
  v81 = v15;
  v88 = MEMORY[0x1E69E7CC0];
  v82 = v18;
  v24 = v87;
  v25 = v85;
  v77 = a1;
  v78 = a2;
  v75 = v11;
  v76 = v9;
  while (1)
  {
    sub_1D1D401E4(v93 + v92 * v23, v24, type metadata accessor for StaticUserActionPrediction);
    v26 = *(v24 + *(v18 + 28));
    if (v26 > 2)
    {
      break;
    }

    if (v26 < 2)
    {
      goto LABEL_3;
    }

    v27 = *&a1[*(type metadata accessor for StateSnapshot(0) + 32)];
    if (*(v27 + 16) && (v28 = sub_1D1742188(), (v29 & 1) != 0))
    {
      v30 = v28;
      v31 = *(v27 + 56);
      v32 = type metadata accessor for StaticAccessory(0);
      v33 = *(v32 - 8);
      v34 = v31 + *(v33 + 72) * v30;
      v35 = v83;
      sub_1D1D401E4(v34, v83, type metadata accessor for StaticAccessory);
      (*(v33 + 56))(v35, 0, 1, v32);
      v15 = v81;
    }

    else
    {
      v32 = type metadata accessor for StaticAccessory(0);
      v35 = v83;
      (*(*(v32 - 8) + 56))(v83, 1, 1, v32);
    }

    sub_1D1741C08(v35, v15, &qword_1EC6436C8, &unk_1D1E97C40);
    type metadata accessor for StaticAccessory(0);
    if ((*(*(v32 - 8) + 48))(v15, 1, v32) == 1)
    {
      sub_1D1741A30(v15, &qword_1EC6436C8, &unk_1D1E97C40);
      v43 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      StaticAccessory.visibleStaticServices.getter();
      v43 = v44;
      sub_1D1D402B4(v15, type metadata accessor for StaticAccessory);
    }

    v45 = *(v43 + 16);
    v46 = v88[2];
    v47 = v46 + v45;
    if (__OFADD__(v46, v45))
    {
      goto LABEL_55;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v88;
    if (!isUniquelyReferenced_nonNull_native || v47 > v88[3] >> 1)
    {
      if (v46 <= v47)
      {
        v50 = v46 + v45;
      }

      else
      {
        v50 = v46;
      }

      v49 = sub_1D177D048(isUniquelyReferenced_nonNull_native, v50, 1, v88);
    }

    v18 = v82;
    v51 = *(v43 + 16);
    v88 = v49;
    if (v51)
    {
      if ((v49[3] >> 1) - v49[2] < v45)
      {
        goto LABEL_57;
      }

      swift_arrayInitWithCopy();

      v24 = v87;
      v25 = v85;
      if (v45)
      {
        v52 = v88[2];
        v53 = __OFADD__(v52, v45);
        v54 = v52 + v45;
        if (v53)
        {
          goto LABEL_58;
        }

        v88[2] = v54;
      }
    }

    else
    {

      v24 = v87;
      v25 = v85;
      if (v45)
      {
        goto LABEL_56;
      }
    }

    sub_1D1741A30(v83, &qword_1EC6436C8, &unk_1D1E97C40);
    sub_1D1D402B4(v24, type metadata accessor for StaticUserActionPrediction);
LABEL_4:
    if (++v23 == v25)
    {
      goto LABEL_53;
    }
  }

  if (v26 != 3)
  {
LABEL_3:
    sub_1D1D402B4(v24, type metadata accessor for StaticUserActionPrediction);
    goto LABEL_4;
  }

  v36 = *&a1[*(type metadata accessor for StateSnapshot(0) + 56)];
  if (*(v36 + 16) && (v37 = sub_1D1742188(), (v38 & 1) != 0))
  {
    v39 = v37;
    v40 = *(v36 + 56);
    v41 = type metadata accessor for StaticServiceGroup(0);
    v42 = *(v41 - 8);
    sub_1D1D401E4(v40 + *(v42 + 72) * v39, v11, type metadata accessor for StaticServiceGroup);
    (*(v42 + 56))(v11, 0, 1, v41);
    v15 = v81;
  }

  else
  {
    v41 = type metadata accessor for StaticServiceGroup(0);
    (*(*(v41 - 8) + 56))(v11, 1, 1, v41);
  }

  sub_1D1741C08(v11, v9, &qword_1EC64CC40, &unk_1D1EAADA0);
  type metadata accessor for StaticServiceGroup(0);
  if ((*(*(v41 - 8) + 48))(v9, 1, v41) == 1)
  {
    sub_1D1741A30(v11, &qword_1EC64CC40, &unk_1D1EAADA0);
    v24 = v87;
    sub_1D1D402B4(v87, type metadata accessor for StaticUserActionPrediction);
    sub_1D1741A30(v9, &qword_1EC64CC40, &unk_1D1EAADA0);
LABEL_51:
    v18 = v82;
    v25 = v85;
    goto LABEL_4;
  }

  v55 = *&v9[*(v41 + 56)];

  sub_1D1D402B4(v9, type metadata accessor for StaticServiceGroup);
  v56 = v55 + 64;
  v57 = 1 << *(v55 + 32);
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  else
  {
    v58 = -1;
  }

  v59 = v58 & *(v55 + 64);
  v60 = (v57 + 63) >> 6;
  v86 = v55;

  v61 = 0;
  v62 = v80;
  if (v59)
  {
    goto LABEL_44;
  }

  while (1)
  {
    v63 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      break;
    }

    if (v63 >= v60)
    {
      v80 = v62;

      v11 = v75;
      sub_1D1741A30(v75, &qword_1EC64CC40, &unk_1D1EAADA0);
      v24 = v87;
      sub_1D1D402B4(v87, type metadata accessor for StaticUserActionPrediction);

      a1 = v77;
      a2 = v78;
      v9 = v76;
      v15 = v81;
      goto LABEL_51;
    }

    v59 = *(v56 + 8 * v63);
    ++v61;
    if (v59)
    {
      v61 = v63;
      do
      {
LABEL_44:
        v64 = __clz(__rbit64(v59)) | (v61 << 6);
        v65 = v86;
        v66 = *(v86 + 48);
        v67 = sub_1D1E66A7C();
        v68 = v89;
        (*(*(v67 - 8) + 16))(v89, v66 + *(*(v67 - 8) + 72) * v64, v67);
        v69 = *(v91 + 72);
        v70 = *(v65 + 56) + v69 * v64;
        v71 = *(v84 + 48);
        sub_1D1D401E4(v70, v68 + v71, type metadata accessor for StaticService);
        sub_1D1D401E4(v68 + v71, v90, type metadata accessor for StaticService);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v62 = sub_1D177D048(0, v62[2] + 1, 1, v62);
        }

        v73 = v62[2];
        v72 = v62[3];
        if (v73 >= v72 >> 1)
        {
          v62 = sub_1D177D048((v72 > 1), v73 + 1, 1, v62);
        }

        v59 &= v59 - 1;
        v62[2] = v73 + 1;
        sub_1D1D4024C(v90, v62 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + v73 * v69, type metadata accessor for StaticService);
        v94 = v62;
        sub_1D1741A30(v89, &qword_1EC642DB0, &unk_1D1E6F360);
      }

      while (v59);
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
}

void Collection<>.mapSnapshot(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v110 = a1;
  v98 = type metadata accessor for StaticService(0);
  v113 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v112 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  MEMORY[0x1EEE9AC00](v107);
  v111 = &v92 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC40, &unk_1D1EAADA0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v103 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v92 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436C8, &unk_1D1E97C40);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v102 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v106 = &v92 - v16;
  v99 = type metadata accessor for StaticUserActionPrediction(0);
  v104 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v18 = &v92 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CC00, &unk_1D1EA1FA0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v22 = &v92 - v21;
  v23 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v25 = &v92 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v93 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v29 = &v92 - v28;
  v30 = MEMORY[0x1E69E7CC0];
  v117 = MEMORY[0x1E69E7CC0];
  v31 = *(v23 + 16);
  v96 = v4;
  v31(v25, v4, a2);
  sub_1D1E67A2C();
  v94 = v26;
  v32 = v22;
  v95 = a2;
  v34 = v99;
  v33 = v100;
  v35 = v104;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_1D1E685CC();
  v37 = *(v35 + 48);
  v36 = v35 + 48;
  v114 = v37;
  if (v37(v22, 1, v34) == 1)
  {
LABEL_2:
    (*(v93 + 8))(v29, AssociatedTypeWitness);

    MEMORY[0x1EEE9AC00](v38);
    *(&v92 - 2) = v110;
    *(&v92 - 1) = &v117;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
    sub_1D1E67A4C();

    return;
  }

  v116 = v30;
  v104 = v36;
  v105 = AssociatedTypeWitness;
  v108 = v29;
  v101 = v18;
  v97 = v22;
  while (1)
  {
    sub_1D1D4024C(v32, v18, type metadata accessor for StaticUserActionPrediction);
    v39 = v18[*(v34 + 28)];
    if (v39 > 2)
    {
      break;
    }

    if (v39 < 2)
    {
      goto LABEL_4;
    }

    v40 = *(v110 + *(type metadata accessor for StateSnapshot(0) + 32));
    if (*(v40 + 16) && (v41 = sub_1D1742188(), (v42 & 1) != 0))
    {
      v43 = v41;
      v44 = *(v40 + 56);
      v45 = type metadata accessor for StaticAccessory(0);
      v46 = *(v45 - 8);
      v109 = v30;
      v47 = v33;
      v48 = v46;
      v49 = v44 + *(v46 + 72) * v43;
      v50 = v106;
      sub_1D1D401E4(v49, v106, type metadata accessor for StaticAccessory);
      (*(v48 + 56))(v50, 0, 1, v45);
      v33 = v47;
      v30 = v109;
    }

    else
    {
      v45 = type metadata accessor for StaticAccessory(0);
      v50 = v106;
      (*(*(v45 - 8) + 56))(v106, 1, 1, v45);
    }

    v61 = v102;
    sub_1D1741C08(v50, v102, &qword_1EC6436C8, &unk_1D1E97C40);
    type metadata accessor for StaticAccessory(0);
    if ((*(*(v45 - 8) + 48))(v61, 1, v45) == 1)
    {
      sub_1D1741A30(v61, &qword_1EC6436C8, &unk_1D1E97C40);
      v62 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      StaticAccessory.visibleStaticServices.getter();
      v62 = v63;
      sub_1D1D402B4(v61, type metadata accessor for StaticAccessory);
    }

    v18 = v101;
    v64 = *(v62 + 16);
    v65 = v30[2];
    v66 = v65 + v64;
    if (__OFADD__(v65, v64))
    {
      goto LABEL_54;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v66 > v30[3] >> 1)
    {
      if (v65 <= v66)
      {
        v68 = v65 + v64;
      }

      else
      {
        v68 = v65;
      }

      v30 = sub_1D177D048(isUniquelyReferenced_nonNull_native, v68, 1, v30);
    }

    AssociatedTypeWitness = v105;
    v29 = v108;
    if (*(v62 + 16))
    {
      if ((v30[3] >> 1) - v30[2] < v64)
      {
        goto LABEL_56;
      }

      swift_arrayInitWithCopy();

      v69 = v106;
      if (v64)
      {
        v70 = v30[2];
        v71 = __OFADD__(v70, v64);
        v72 = v70 + v64;
        if (v71)
        {
          goto LABEL_57;
        }

        v30[2] = v72;
      }
    }

    else
    {

      v69 = v106;
      if (v64)
      {
        goto LABEL_55;
      }
    }

    sub_1D1741A30(v69, &qword_1EC6436C8, &unk_1D1E97C40);
    sub_1D1D402B4(v18, type metadata accessor for StaticUserActionPrediction);
LABEL_5:
    sub_1D1E685CC();
    if (v114(v32, 1, v34) == 1)
    {
      goto LABEL_2;
    }
  }

  if (v39 != 3)
  {
LABEL_4:
    sub_1D1D402B4(v18, type metadata accessor for StaticUserActionPrediction);
    goto LABEL_5;
  }

  v51 = *(v110 + *(type metadata accessor for StateSnapshot(0) + 56));
  v52 = *(v51 + 16);
  v109 = v30;
  if (v52 && (v53 = sub_1D1742188(), (v54 & 1) != 0))
  {
    v55 = v53;
    v56 = *(v51 + 56);
    v57 = type metadata accessor for StaticServiceGroup(0);
    v58 = v33;
    v59 = *(v57 - 8);
    v60 = v56 + *(v59 + 72) * v55;
    v29 = v108;
    sub_1D1D401E4(v60, v58, type metadata accessor for StaticServiceGroup);
    (*(v59 + 56))(v58, 0, 1, v57);
    v33 = v58;
  }

  else
  {
    v57 = type metadata accessor for StaticServiceGroup(0);
    (*(*(v57 - 8) + 56))(v33, 1, 1, v57);
  }

  v73 = v103;
  sub_1D1741C08(v33, v103, &qword_1EC64CC40, &unk_1D1EAADA0);
  type metadata accessor for StaticServiceGroup(0);
  if ((*(*(v57 - 8) + 48))(v73, 1, v57) == 1)
  {
    sub_1D1741A30(v33, &qword_1EC64CC40, &unk_1D1EAADA0);
    sub_1D1D402B4(v18, type metadata accessor for StaticUserActionPrediction);
    sub_1D1741A30(v73, &qword_1EC64CC40, &unk_1D1EAADA0);
    v30 = v109;
    AssociatedTypeWitness = v105;
    goto LABEL_5;
  }

  v74 = v73;
  v75 = *(v73 + *(v57 + 56));

  sub_1D1D402B4(v74, type metadata accessor for StaticServiceGroup);
  v76 = 1 << *(v75 + 32);
  if (v76 < 64)
  {
    v77 = ~(-1 << v76);
  }

  else
  {
    v77 = -1;
  }

  v78 = v77 & *(v75 + 64);
  v79 = (v76 + 63) >> 6;

  v80 = 0;
  while (v78)
  {
LABEL_47:
    v82 = __clz(__rbit64(v78)) | (v80 << 6);
    v83 = *(v75 + 48);
    v84 = sub_1D1E66A7C();
    v85 = v111;
    (*(*(v84 - 8) + 16))(v111, v83 + *(*(v84 - 8) + 72) * v82, v84);
    v86 = *(v113 + 72);
    v87 = *(v75 + 56) + v86 * v82;
    v88 = *(v107 + 48);
    sub_1D1D401E4(v87, v85 + v88, type metadata accessor for StaticService);
    sub_1D1D401E4(v85 + v88, v112, type metadata accessor for StaticService);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v116 = sub_1D177D048(0, v116[2] + 1, 1, v116);
    }

    v90 = v116[2];
    v89 = v116[3];
    if (v90 >= v89 >> 1)
    {
      v116 = sub_1D177D048((v89 > 1), v90 + 1, 1, v116);
    }

    v78 &= v78 - 1;
    v91 = v116;
    v116[2] = v90 + 1;
    sub_1D1D4024C(v112, v91 + ((*(v113 + 80) + 32) & ~*(v113 + 80)) + v90 * v86, type metadata accessor for StaticService);
    v117 = v91;
    sub_1D1741A30(v111, &qword_1EC642DB0, &unk_1D1E6F360);
  }

  v29 = v108;
  while (1)
  {
    v81 = v80 + 1;
    if (__OFADD__(v80, 1))
    {
      break;
    }

    if (v81 >= v79)
    {

      v33 = v100;
      sub_1D1741A30(v100, &qword_1EC64CC40, &unk_1D1EAADA0);
      sub_1D1D402B4(v18, type metadata accessor for StaticUserActionPrediction);

      v34 = v99;
      AssociatedTypeWitness = v105;
      v32 = v97;
      v30 = v109;
      goto LABEL_5;
    }

    v78 = *(v75 + 64 + 8 * v81);
    ++v80;
    if (v78)
    {
      v80 = v81;
      goto LABEL_47;
    }
  }

  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
}

uint64_t sub_1D1D3C888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t *a4@<X8>)
{
  v125 = a3;
  v130 = a2;
  v131 = a4;
  v123 = type metadata accessor for StaticServiceGroup(0);
  v120 = *(v123 - 8);
  v5 = MEMORY[0x1EEE9AC00](v123);
  v121 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v122 = &v109 - v7;
  v8 = type metadata accessor for StaticActionSet(0);
  v128 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v109 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v109 - v12;
  v119 = type metadata accessor for StaticMediaSystem(0);
  v116 = *(v119 - 8);
  v14 = MEMORY[0x1EEE9AC00](v119);
  v117 = &v109 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v109 - v16;
  v17 = type metadata accessor for StaticService(0);
  v112 = *(v17 - 8);
  v113 = v17;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v111 = &v109 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v114 = &v109 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v110 = &v109 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v109 - v24;
  v26 = sub_1D1E66A7C();
  v126 = *(v26 - 8);
  v127 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v115 = &v109 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = type metadata accessor for StaticAccessory(0);
  v28 = *(v124 - 8);
  v29 = MEMORY[0x1EEE9AC00](v124);
  v31 = &v109 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v33 = &v109 - v32;
  result = type metadata accessor for StaticUserActionPrediction(0);
  v35 = *(result + 28);
  v129 = a1;
  v36 = *(a1 + v35);
  if (v36 <= 1)
  {
    v47 = v128;
    if (v36)
    {
      result = type metadata accessor for StateSnapshot(0);
      v48 = *(v130 + *(result + 36));
      if (*(v48 + 16))
      {
        result = sub_1D1742188();
        if (v49)
        {
          sub_1D1D401E4(*(v48 + 56) + *(v47 + 72) * result, v11, type metadata accessor for StaticActionSet);
          sub_1D1D4024C(v11, v13, type metadata accessor for StaticActionSet);
          if (v13[*(v8 + 48)] == 1)
          {
            v50 = v131;
            v131[3] = v8;
            v50[4] = sub_1D1D40314(&qword_1EC64C000, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
            return sub_1D1D4024C(v13, boxed_opaque_existential_1, type metadata accessor for StaticActionSet);
          }

          result = sub_1D1D402B4(v13, type metadata accessor for StaticActionSet);
        }
      }
    }

    goto LABEL_32;
  }

  if (v36 != 2)
  {
    if (v36 == 3)
    {
      result = type metadata accessor for StateSnapshot(0);
      v37 = *(v130 + *(result + 56));
      if (*(v37 + 16))
      {
        result = sub_1D1742188();
        if (v38)
        {
          v39 = *(v37 + 56);
          v40 = v121;
          sub_1D1D401E4(v39 + *(v120 + 72) * result, v121, type metadata accessor for StaticServiceGroup);
          v41 = type metadata accessor for StaticServiceGroup;
          v42 = v122;
          sub_1D1D4024C(v40, v122, type metadata accessor for StaticServiceGroup);
          v43 = v131;
          v131[3] = v123;
          v44 = &qword_1EC64BA10;
          v45 = type metadata accessor for StaticServiceGroup;
          v46 = &protocol conformance descriptor for StaticServiceGroup;
LABEL_19:
          v43[4] = sub_1D1D40314(v44, v45, v46);
          v64 = __swift_allocate_boxed_opaque_existential_1(v43);
          return sub_1D1D4024C(v42, v64, v41);
        }
      }
    }

    else
    {
      result = type metadata accessor for StateSnapshot(0);
      v60 = *(v130 + *(result + 44));
      if (*(v60 + 16))
      {
        result = sub_1D1742188();
        if (v61)
        {
          v62 = *(v60 + 56);
          v63 = v117;
          sub_1D1D401E4(v62 + *(v116 + 72) * result, v117, type metadata accessor for StaticMediaSystem);
          v41 = type metadata accessor for StaticMediaSystem;
          v42 = v118;
          sub_1D1D4024C(v63, v118, type metadata accessor for StaticMediaSystem);
          v43 = v131;
          v131[3] = v119;
          v44 = &qword_1EC64BFE8;
          v45 = type metadata accessor for StaticMediaSystem;
          v46 = &protocol conformance descriptor for StaticMediaSystem;
          goto LABEL_19;
        }
      }
    }

    goto LABEL_32;
  }

  v52 = result;
  result = type metadata accessor for StateSnapshot(0);
  v53 = *(v130 + *(result + 32));
  if (!*(v53 + 16) || (v54 = result, result = sub_1D1742188(), (v55 & 1) == 0))
  {
LABEL_32:
    v80 = v131;
    v131[4] = 0;
    *v80 = 0u;
    *(v80 + 1) = 0u;
    return result;
  }

  sub_1D1D401E4(*(v53 + 56) + *(v28 + 72) * result, v31, type metadata accessor for StaticAccessory);
  sub_1D1D4024C(v31, v33, type metadata accessor for StaticAccessory);
  sub_1D1741C08(v129 + *(v52 + 24), v25, &qword_1EC642590, qword_1D1E71260);
  v57 = v126;
  v56 = v127;
  v58 = *(v126 + 48);
  if (v58(v25, 1, v127) == 1)
  {
    v59 = sub_1D1741A30(v25, &qword_1EC642590, qword_1D1E71260);
LABEL_34:
    v81 = v124;
    goto LABEL_35;
  }

  v65 = v115;
  (*(v57 + 32))(v115, v25, v56);
  v66 = *(v130 + v54[15]);
  if (!*(v66 + 16) || (v67 = sub_1D1742188(), (v68 & 1) == 0))
  {
    v59 = (*(v57 + 8))(v65, v56);
    goto LABEL_34;
  }

  v69 = *(v66 + 56);
  v70 = v111;
  v71 = *(v112 + 72);
  sub_1D1D401E4(v69 + v71 * v67, v111, type metadata accessor for StaticService);
  v72 = v114;
  sub_1D1D4024C(v70, v114, type metadata accessor for StaticService);
  if (qword_1EC642398 != -1)
  {
    swift_once();
  }

  v73 = v113;
  v74 = *(v113 + 104);
  if ((sub_1D171951C(*(v72 + v74), qword_1EC6BE1B0) & 1) == 0)
  {
    goto LABEL_30;
  }

  v75 = v72 + *(v73 + 116);
  v76 = v110;
  sub_1D1741C08(v75, v110, &qword_1EC642590, qword_1D1E71260);
  v77 = v58(v76, 1, v127);
  v56 = v127;
  v78 = v125;
  sub_1D1741A30(v76, &qword_1EC642590, qword_1D1E71260);
  v79 = v77 == 1;
  v72 = v114;
  if (!v79)
  {
    goto LABEL_30;
  }

  if (qword_1EE07AB30 != -1)
  {
    swift_once();
  }

  if (sub_1D171951C(*(v72 + v74), off_1EE07AB38))
  {
LABEL_30:
    sub_1D1D402B4(v72, type metadata accessor for StaticService);
    v59 = (*(v126 + 8))(v115, v56);
    goto LABEL_34;
  }

  v81 = v124;
  if ((v33[*(v124 + 76)] & 1) != 0 || (StaticAccessory.staticServicesExcludingComponents.getter(), v78 = v125, v96 = *(v95 + 16), , v96 == 1))
  {
    v97 = *v78;
    v98 = *(*v78 + 16);

    v99 = v98 + 1;
    v100 = v97;
    v101 = v126;
    v102 = v112;
    v103 = v113;
    while (--v99)
    {
      v104 = v100 + v71;
      v105 = _s13HomeDataModel13StaticServiceV2eeoiySbAC_ACtFZ_0(v100 + ((*(v102 + 80) + 32) & ~*(v102 + 80)), v114);
      v100 = v104;
      if (v105)
      {

        sub_1D1D402B4(v114, type metadata accessor for StaticService);
        (*(v101 + 8))(v115, v127);
        v106 = v131;
        v131[4] = 0;
        *v106 = 0u;
        *(v106 + 1) = 0u;
        return sub_1D1D402B4(v33, type metadata accessor for StaticAccessory);
      }
    }

    v107 = v131;
    v131[3] = v103;
    v107[4] = sub_1D1D40314(&qword_1EC646AF0, type metadata accessor for StaticService, &protocol conformance descriptor for StaticService);
    v108 = __swift_allocate_boxed_opaque_existential_1(v107);
    sub_1D1D4024C(v114, v108, type metadata accessor for StaticService);
    (*(v101 + 8))(v115, v127);
    return sub_1D1D402B4(v33, type metadata accessor for StaticAccessory);
  }

  sub_1D1D402B4(v72, type metadata accessor for StaticService);
  v59 = (*(v126 + 8))(v115, v127);
LABEL_35:
  v82 = &v33[*(v81 + 92)];
  v83 = v82[8];
  if (v83 <= 2)
  {
    if (v83 >= 2)
    {
      v84 = *v82;
      if (v84 & 0x100) == 0 && (v84)
      {
        goto LABEL_39;
      }
    }

LABEL_42:
    v93 = v131;
    v131[4] = 0;
    *v93 = 0u;
    *(v93 + 1) = 0u;
    return sub_1D1D402B4(v33, type metadata accessor for StaticAccessory);
  }

  if (v83 == 3)
  {
    goto LABEL_42;
  }

LABEL_39:
  MEMORY[0x1EEE9AC00](v59);
  *(&v109 - 2) = v33;
  v86 = sub_1D17868B8(sub_1D1820ECC, (&v109 - 4), v85);
  v87 = sub_1D1785078(v86);

  v89 = sub_1D1785078(v88);

  v90 = sub_1D1A47370(v89, v87);

  if (v90)
  {
    v91 = v131;
    v131[3] = v81;
    v91[4] = sub_1D1D40314(&qword_1EC64BA18, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    v92 = __swift_allocate_boxed_opaque_existential_1(v91);
    sub_1D1D401E4(v33, v92, type metadata accessor for StaticAccessory);
  }

  else
  {
    v94 = v131;
    v131[4] = 0;
    *v94 = 0u;
    *(v94 + 1) = 0u;
  }

  return sub_1D1D402B4(v33, type metadata accessor for StaticAccessory);
}

uint64_t StateSnapshot.userRecommendationsTileInfos.getter()
{
  v4 = *&v0[*(type metadata accessor for StateSnapshot(0) + 68)];
  swift_bridgeObjectRetain_n();
  sub_1D1D3D69C(&v4);

  sub_1D1D3B008(v0, v4);
  v2 = v1;

  return v2;
}

uint64_t sub_1D1D3D69C(uint64_t *a1)
{
  v2 = *(type metadata accessor for StaticUserActionPrediction(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C148(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1D3D744(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1D3D744(unint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D1E68F9C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for StaticUserActionPrediction(0);
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for StaticUserActionPrediction(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1D3DAC8(v8, v9, a1, v4);
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
    return sub_1D1D3D870(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1D3D870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for StaticUserActionPrediction(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v29 - v13;
  result = MEMORY[0x1EEE9AC00](v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_1D1D401E4(v24, v18, type metadata accessor for StaticUserActionPrediction);
      sub_1D1D401E4(v21, v14, type metadata accessor for StaticUserActionPrediction);
      v25 = *(v8 + 20);
      v26 = *&v18[v25];
      v27 = *&v14[v25];
      sub_1D1D402B4(v14, type metadata accessor for StaticUserActionPrediction);
      result = sub_1D1D402B4(v18, type metadata accessor for StaticUserActionPrediction);
      if (v27 >= v26)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      sub_1D1D4024C(v24, v11, type metadata accessor for StaticUserActionPrediction);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1D4024C(v11, v21, type metadata accessor for StaticUserActionPrediction);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1D3DAC8(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v110 = a1;
  v9 = type metadata accessor for StaticUserActionPrediction(0);
  v118 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v113 = &v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v121 = &v107 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v122 = &v107 - v15;
  result = MEMORY[0x1EEE9AC00](v14);
  v18 = &v107 - v17;
  v120 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v110;
    if (!*v110)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_129:
      result = sub_1D1E0BE44(a4);
    }

    v124 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v120)
      {
        v103 = *(result + 16 * a4);
        v104 = result;
        v105 = *(result + 16 * (a4 - 1) + 40);
        sub_1D1D3E42C(*v120 + *(v118 + 72) * v103, *v120 + *(v118 + 72) * *(result + 16 * (a4 - 1) + 32), *v120 + *(v118 + 72) * v105, v5);
        if (v6)
        {
        }

        if (v105 < v103)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_1D1E0BE44(v104);
        }

        if (a4 - 2 >= *(v104 + 2))
        {
          goto LABEL_123;
        }

        v106 = &v104[16 * a4];
        *v106 = v103;
        *(v106 + 1) = v105;
        v124 = v104;
        sub_1D1E0BDB8(a4 - 1);
        result = v124;
        a4 = *(v124 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v109 = a4;
  v123 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v114 = v21;
    if (v20 + 1 >= v19)
    {
      v19 = v20 + 1;
    }

    else
    {
      v24 = *(v118 + 72);
      v5 = *v120 + v24 * v23;
      v117 = *v120;
      v25 = v117;
      sub_1D1D401E4(v117 + v24 * v23, v18, type metadata accessor for StaticUserActionPrediction);
      v26 = v25 + v24 * v22;
      v27 = v22;
      v28 = v122;
      sub_1D1D401E4(v26, v122, type metadata accessor for StaticUserActionPrediction);
      v29 = *(v9 + 20);
      v30 = *&v18[v29];
      v31 = *(v28 + v29);
      sub_1D1D402B4(v28, type metadata accessor for StaticUserActionPrediction);
      result = sub_1D1D402B4(v18, type metadata accessor for StaticUserActionPrediction);
      v108 = v27;
      v32 = v27 + 2;
      v119 = v24;
      v33 = v117 + v24 * (v27 + 2);
      while (v19 != v32)
      {
        sub_1D1D401E4(v33, v18, type metadata accessor for StaticUserActionPrediction);
        v34 = v122;
        sub_1D1D401E4(v5, v122, type metadata accessor for StaticUserActionPrediction);
        v35 = *(v123 + 20);
        v36 = *&v18[v35];
        v37 = *(v34 + v35);
        sub_1D1D402B4(v34, type metadata accessor for StaticUserActionPrediction);
        result = sub_1D1D402B4(v18, type metadata accessor for StaticUserActionPrediction);
        ++v32;
        v33 += v119;
        v5 += v119;
        if (v31 < v30 == v37 >= v36)
        {
          v19 = v32 - 1;
          break;
        }
      }

      v22 = v108;
      a4 = v109;
      v9 = v123;
      if (v31 < v30)
      {
        if (v19 < v108)
        {
          goto LABEL_126;
        }

        if (v108 < v19)
        {
          v107 = v6;
          v38 = v119 * (v19 - 1);
          v39 = v19 * v119;
          v40 = v19;
          v41 = v19;
          v42 = v108;
          v43 = v108 * v119;
          do
          {
            if (v42 != --v41)
            {
              v44 = *v120;
              if (!*v120)
              {
                goto LABEL_132;
              }

              v5 = v44 + v43;
              sub_1D1D4024C(v44 + v43, v113, type metadata accessor for StaticUserActionPrediction);
              if (v43 < v38 || v5 >= v44 + v39)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v43 != v38)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D1D4024C(v113, v44 + v38, type metadata accessor for StaticUserActionPrediction);
            }

            ++v42;
            v38 -= v119;
            v39 -= v119;
            v43 += v119;
          }

          while (v42 < v41);
          v6 = v107;
          v22 = v108;
          a4 = v109;
          v9 = v123;
          v19 = v40;
        }
      }
    }

    v45 = v120[1];
    if (v19 < v45)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v45)
        {
          v46 = v120[1];
        }

        else
        {
          v46 = v22 + a4;
        }

        if (v46 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v46)
        {
          break;
        }
      }
    }

    v20 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v114;
    }

    else
    {
      result = sub_1D1E0BE58(0, *(v114 + 2) + 1, 1, v114);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v47 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v47 >> 1)
    {
      result = sub_1D1E0BE58((v47 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v48 = &v21[16 * a4];
    *(v48 + 4) = v22;
    *(v48 + 5) = v20;
    v49 = *v110;
    if (!*v110)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (1)
      {
        v50 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v51 = *(v21 + 4);
          v52 = *(v21 + 5);
          v61 = __OFSUB__(v52, v51);
          v53 = v52 - v51;
          v54 = v61;
LABEL_52:
          if (v54)
          {
            goto LABEL_113;
          }

          v67 = &v21[16 * v5];
          v69 = *v67;
          v68 = *(v67 + 1);
          v70 = __OFSUB__(v68, v69);
          v71 = v68 - v69;
          v72 = v70;
          if (v70)
          {
            goto LABEL_116;
          }

          v73 = &v21[16 * v50 + 32];
          v75 = *v73;
          v74 = *(v73 + 1);
          v61 = __OFSUB__(v74, v75);
          v76 = v74 - v75;
          if (v61)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v71, v76))
          {
            goto LABEL_120;
          }

          if (v71 + v76 >= v53)
          {
            if (v53 < v76)
            {
              v50 = v5 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v77 = &v21[16 * v5];
        v79 = *v77;
        v78 = *(v77 + 1);
        v61 = __OFSUB__(v78, v79);
        v71 = v78 - v79;
        v72 = v61;
LABEL_66:
        if (v72)
        {
          goto LABEL_115;
        }

        v80 = &v21[16 * v50];
        v82 = *(v80 + 4);
        v81 = *(v80 + 5);
        v61 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v61)
        {
          goto LABEL_118;
        }

        if (v83 < v71)
        {
          goto LABEL_3;
        }

LABEL_73:
        a4 = v50 - 1;
        if (v50 - 1 >= v5)
        {
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
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v120)
        {
          goto LABEL_131;
        }

        v88 = v21;
        v89 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v50 + 40];
        sub_1D1D3E42C(*v120 + *(v118 + 72) * v89, *v120 + *(v118 + 72) * *&v21[16 * v50 + 32], *v120 + *(v118 + 72) * v5, v49);
        if (v6)
        {
        }

        if (v5 < v89)
        {
          goto LABEL_109;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v90 = v88;
        }

        else
        {
          v90 = sub_1D1E0BE44(v88);
        }

        v9 = v123;
        if (a4 >= *(v90 + 2))
        {
          goto LABEL_110;
        }

        v91 = &v90[16 * a4];
        *(v91 + 4) = v89;
        *(v91 + 5) = v5;
        v124 = v90;
        result = sub_1D1E0BDB8(v50);
        v21 = v124;
        v5 = *(v124 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v55 = &v21[16 * v5 + 32];
      v56 = *(v55 - 64);
      v57 = *(v55 - 56);
      v61 = __OFSUB__(v57, v56);
      v58 = v57 - v56;
      if (v61)
      {
        goto LABEL_111;
      }

      v60 = *(v55 - 48);
      v59 = *(v55 - 40);
      v61 = __OFSUB__(v59, v60);
      v53 = v59 - v60;
      v54 = v61;
      if (v61)
      {
        goto LABEL_112;
      }

      v62 = &v21[16 * v5];
      v64 = *v62;
      v63 = *(v62 + 1);
      v61 = __OFSUB__(v63, v64);
      v65 = v63 - v64;
      if (v61)
      {
        goto LABEL_114;
      }

      v61 = __OFADD__(v53, v65);
      v66 = v53 + v65;
      if (v61)
      {
        goto LABEL_117;
      }

      if (v66 >= v58)
      {
        v84 = &v21[16 * v50 + 32];
        v86 = *v84;
        v85 = *(v84 + 1);
        v61 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v61)
        {
          goto LABEL_121;
        }

        if (v53 < v87)
        {
          v50 = v5 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v19 = v120[1];
    a4 = v109;
    if (v20 >= v19)
    {
      goto LABEL_96;
    }
  }

  v107 = v6;
  v108 = v22;
  a4 = *v120;
  v92 = *(v118 + 72);
  v93 = *v120 + v92 * (v19 - 1);
  v94 = -v92;
  v95 = v22 - v19;
  v111 = v92;
  v112 = v46;
  v5 = a4 + v19 * v92;
LABEL_86:
  v119 = v19;
  v115 = v5;
  v116 = v95;
  v117 = v93;
  v96 = v123;
  while (1)
  {
    sub_1D1D401E4(v5, v18, type metadata accessor for StaticUserActionPrediction);
    v97 = v122;
    sub_1D1D401E4(v93, v122, type metadata accessor for StaticUserActionPrediction);
    v98 = *(v96 + 20);
    v99 = *&v18[v98];
    v100 = *(v97 + v98);
    sub_1D1D402B4(v97, type metadata accessor for StaticUserActionPrediction);
    result = sub_1D1D402B4(v18, type metadata accessor for StaticUserActionPrediction);
    if (v100 >= v99)
    {
LABEL_85:
      v19 = v119 + 1;
      v20 = v112;
      v93 = v117 + v111;
      v95 = v116 - 1;
      v5 = v115 + v111;
      if (v119 + 1 != v112)
      {
        goto LABEL_86;
      }

      v6 = v107;
      v22 = v108;
      v9 = v123;
      if (v112 < v108)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (!a4)
    {
      break;
    }

    v101 = v121;
    sub_1D1D4024C(v5, v121, type metadata accessor for StaticUserActionPrediction);
    v96 = v123;
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1D4024C(v101, v93, type metadata accessor for StaticUserActionPrediction);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_131:
  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
  return result;
}

uint64_t sub_1D1D3E42C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v48 = a3;
  v47 = type metadata accessor for StaticUserActionPrediction(0);
  v8 = MEMORY[0x1EEE9AC00](v47);
  v46 = v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v12 = v42 - v11;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = v48 - a2;
  if (v48 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v51 = a1;
  v50 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v42[1] = v4;
    v25 = a4 + v18;
    if (v18 < 1)
    {
      v28 = a4 + v18;
    }

    else
    {
      v26 = -v14;
      v27 = a4 + v18;
      v28 = v25;
      v44 = v26;
      v45 = a4;
      do
      {
        v42[0] = v28;
        v29 = a2;
        v30 = a2 + v26;
        while (1)
        {
          v32 = v48;
          if (v29 <= a1)
          {
            v51 = v29;
            v49 = v42[0];
            goto LABEL_59;
          }

          v43 = v28;
          v48 += v26;
          v33 = v27 + v26;
          sub_1D1D401E4(v33, v12, type metadata accessor for StaticUserActionPrediction);
          v34 = v30;
          v35 = v30;
          v36 = v12;
          v37 = v46;
          sub_1D1D401E4(v35, v46, type metadata accessor for StaticUserActionPrediction);
          v38 = *(v47 + 20);
          v39 = *(v36 + v38);
          v40 = *(v37 + v38);
          v41 = v37;
          v12 = v36;
          sub_1D1D402B4(v41, type metadata accessor for StaticUserActionPrediction);
          sub_1D1D402B4(v36, type metadata accessor for StaticUserActionPrediction);
          if (v40 < v39)
          {
            break;
          }

          v28 = v33;
          if (v32 < v27 || v48 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v30 = v34;
          }

          else
          {
            v30 = v34;
            if (v32 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v31 = v33 > v45;
          v26 = v44;
          if (!v31)
          {
            a2 = v29;
            goto LABEL_58;
          }
        }

        if (v32 < v29 || v48 >= v29)
        {
          a2 = v34;
          swift_arrayInitWithTakeFrontToBack();
          v28 = v43;
          v26 = v44;
        }

        else
        {
          v28 = v43;
          v26 = v44;
          a2 = v34;
          if (v32 != v29)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v45);
    }

LABEL_58:
    v51 = a2;
    v49 = v28;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v19 = a4 + v17;
    v49 = a4 + v17;
    if (v17 >= 1 && a2 < v48)
    {
      do
      {
        sub_1D1D401E4(a2, v12, type metadata accessor for StaticUserActionPrediction);
        v21 = v46;
        sub_1D1D401E4(a4, v46, type metadata accessor for StaticUserActionPrediction);
        v22 = *(v47 + 20);
        v23 = *&v12[v22];
        v24 = *(v21 + v22);
        sub_1D1D402B4(v21, type metadata accessor for StaticUserActionPrediction);
        sub_1D1D402B4(v12, type metadata accessor for StaticUserActionPrediction);
        if (v24 >= v23)
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v50 = a4 + v14;
          a4 += v14;
        }

        else
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v14;
        }

        a1 += v14;
        v51 = a1;
      }

      while (a4 < v19 && a2 < v48);
    }
  }

LABEL_59:
  sub_1D1DC7234(&v51, &v50, &v49);
  return 1;
}

BOOL _s13HomeDataModel26StaticUserActionPredictionV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for StaticUserActionPrediction(0);
  if (*(a1 + *(v14 + 20)) != *(a2 + *(v14 + 20)))
  {
    return 0;
  }

  v15 = *(v14 + 24);
  v16 = a1;
  v17 = *(v11 + 48);
  v23 = v16;
  v24 = v14;
  sub_1D1741C08(v16 + v15, v13, &qword_1EC642590, qword_1D1E71260);
  v25 = a2;
  sub_1D1741C08(a2 + v15, &v13[v17], &qword_1EC642590, qword_1D1E71260);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
      return *(v23 + *(v24 + 28)) == *(v25 + *(v24 + 28));
    }

    goto LABEL_8;
  }

  sub_1D1741C08(v13, v10, &qword_1EC642590, qword_1D1E71260);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_8:
    sub_1D1741A30(v13, &qword_1EC642980, &unk_1D1E6E6E0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  sub_1D1D40314(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v20 = sub_1D1E6775C();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
  if (v20)
  {
    return *(v23 + *(v24 + 28)) == *(v25 + *(v24 + 28));
  }

  return 0;
}