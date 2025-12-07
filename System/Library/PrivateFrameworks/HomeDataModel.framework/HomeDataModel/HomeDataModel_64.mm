uint64_t ActionService.statusIcon.getter@<X0>(uint64_t a1@<X8>)
{
  result = type metadata accessor for ActionService(0);
  *a1 = *(v1 + *(result + 44)) | (*(v1 + *(result + 52)) << 8);
  *(a1 + 8) = 23552;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return result;
}

uint64_t ActionService.temperatureStringStatusIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ActionService(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1C8D2B4(v1, v5, type metadata accessor for ActionService);
  return sub_1D18F21EC(v5, a1);
}

uint64_t ActionService.isActivated.getter()
{
  v1 = type metadata accessor for ActionService(0);
  result = 2;
  switch(*(v0 + *(v1 + 44)))
  {
    case 3:
    case 0x11:
    case 0x14:
    case 0x15:
    case 0x2A:
    case 0x2C:
    case 0x2F:
    case 0x30:
      v8 = *(v0 + *(v1 + 60));
      v3 = 3;
      goto LABEL_8;
    case 0xE:
    case 0x33:
    case 0x34:
      v8 = *(v0 + *(v1 + 60));
      v7 = -98;
      v9 = StaticCharacteristicsBag.int(for:)(&v7);
      v4 = v9.value > 0;
      goto LABEL_16;
    case 0x10:
    case 0x1C:
    case 0x22:
    case 0x29:
      v8 = *(v0 + *(v1 + 60));
      v3 = 105;
      goto LABEL_8;
    case 0x13:
      v8 = *(v0 + *(v1 + 60));
      v6 = -107;
      goto LABEL_11;
    case 0x18:
      v8 = *(v0 + *(v1 + 60));
      v3 = 65;
      goto LABEL_8;
    case 0x1E:
      v8 = *(v0 + *(v1 + 60));
      v6 = -100;
LABEL_11:
      v7 = v6;
      v9 = StaticCharacteristicsBag.int(for:)(&v7);
      v5 = v9.value == 1;
      goto LABEL_13;
    case 0x1F:
    case 0x26:
      v8 = *(v0 + *(v1 + 60));
      v3 = 84;
LABEL_8:
      v7 = v3;
      return sub_1D1CE4920(&v7);
    case 0x23:
      v8 = *(v0 + *(v1 + 60));
      v7 = -96;
      v9 = StaticCharacteristicsBag.int(for:)(&v7);
      v5 = v9.value == 3;
      goto LABEL_13;
    case 0x2E:
      v8 = *(v0 + *(v1 + 60));
      v7 = -104;
      v9 = StaticCharacteristicsBag.int(for:)(&v7);
      v5 = v9.value == 0;
LABEL_13:
      v4 = !v5;
LABEL_16:
      if (v9.is_nil)
      {
        result = 2;
      }

      else
      {
        result = v4;
      }

      break;
    default:
      return result;
  }

  return result;
}

uint64_t ActionService.staticCharacteristic(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + *(type metadata accessor for ActionService(0) + 60));
  if (*(v5 + 16))
  {
    v6 = *a1;

    v7 = sub_1D171D140(v6);
    if (v8)
    {
      v9 = v7;
      v10 = *(v5 + 56);
      v11 = type metadata accessor for StaticCharacteristic(0);
      v12 = *(v11 - 8);
      sub_1D1C8D2B4(v10 + *(v12 + 72) * v9, a2, type metadata accessor for StaticCharacteristic);
      (*(v12 + 56))(a2, 0, 1, v11);
    }

    else
    {
      v16 = type metadata accessor for StaticCharacteristic(0);
      (*(*(v16 - 8) + 56))(a2, 1, 1, v16);
    }
  }

  else
  {
    v13 = type metadata accessor for StaticCharacteristic(0);
    v14 = *(*(v13 - 8) + 56);

    return v14(a2, 1, 1, v13);
  }
}

uint64_t ActionService.staticCharacteristic(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for ActionService(0) + 60));

  sub_1D1747C74(sub_1D1C2B338, v3, a1);
}

Swift::Bool_optional __swiftcall ActionService.BOOL(for:)(HomeDataModel::CharacteristicKind a1)
{
  v2 = *a1;
  v5 = *(v1 + *(type metadata accessor for ActionService(0) + 60));
  v4 = v2;
  return sub_1D1CE4920(&v4);
}

Swift::Int_optional __swiftcall ActionService.int(for:)(HomeDataModel::CharacteristicKind a1)
{
  v2 = *a1;
  v8 = *(v1 + *(type metadata accessor for ActionService(0) + 60));
  v7 = v2;

  v9 = StaticCharacteristicsBag.int(for:)(&v7);
  value = v9.value;
  is_nil = v9.is_nil;

  v5 = is_nil;
  v6 = value;
  result.value = v6;
  result.is_nil = v5;
  return result;
}

Swift::Double_optional __swiftcall ActionService.double(for:)(HomeDataModel::CharacteristicKind a1)
{
  v2 = *a1;
  v6 = *(v1 + *(type metadata accessor for ActionService(0) + 60));
  v5 = v2;
  v4 = sub_1D1CE53A4(&v5);
  result.value = v4;
  result.is_nil = v3;
  return result;
}

Swift::String_optional __swiftcall ActionService.string(for:)(HomeDataModel::CharacteristicKind a1)
{
  v1 = sub_1D1C89BB8(a1, StaticCharacteristicsBag.string(for:));
  result.value._object = v2;
  result.value._countAndFlagsBits = v1;
  return result;
}

uint64_t sub_1D1C89BB8(char *a1, uint64_t (*a2)(char *))
{
  v4 = *a1;
  v8 = *(v2 + *(type metadata accessor for ActionService(0) + 60));
  v7 = v4;

  v5 = a2(&v7);

  return v5;
}

uint64_t sub_1D1C89EF4(uint64_t a1)
{
  v3 = type metadata accessor for StaticCharacteristic(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v1 + *(type metadata accessor for ActionService(0) + 60));
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = sub_1D171D140(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_1D1C8D2B4(*(v7 + 56) + *(v4 + 72) * v8, v6, type metadata accessor for StaticCharacteristic);
  v10 = &v6[*(v3 + 24)];
  if (v10[16] == 8)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  sub_1D1C8D31C(v6, type metadata accessor for StaticCharacteristic);
  return v11;
}

uint64_t sub_1D1C8A16C(char a1)
{
  v5 = *(v1 + *(type metadata accessor for ActionService(0) + 60));
  v4 = a1;
  return sub_1D1CE4920(&v4);
}

Swift::Int sub_1D1C8A28C(char a1)
{
  v5 = *(v1 + *(type metadata accessor for ActionService(0) + 60));
  v4 = a1;
  v6 = StaticCharacteristicsBag.int(for:)(&v4);
  if (v6.is_nil)
  {
    v6.value = 0;
  }

  return v6.value;
}

uint64_t sub_1D1C8A33C(char a1, uint64_t (*a2)(char *))
{
  v7 = *(v2 + *(type metadata accessor for ActionService(0) + 60));
  v6 = a1;
  return a2(&v6);
}

uint64_t sub_1D1C8A39C@<X0>(_BYTE *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645548, &unk_1D1E79AE0) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0) + 48);
  *a2 = *a1;
  return sub_1D1C8D2B4(&a1[v4], &a2[v5], type metadata accessor for StaticCharacteristic);
}

BOOL _s13HomeDataModel13ActionServiceV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EndpointPath(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v58[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644870, &unk_1D1EABA00);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v58[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CB00, &qword_1D1EA1838);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v58[-v12];
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for ActionService(0);
  v15 = v14[5];
  v16 = *(a1 + v15);
  v17 = *(a1 + v15 + 8);
  v18 = (a2 + v15);
  v19 = v16 == *v18 && v17 == v18[1];
  if (!v19 && (sub_1D1E6904C() & 1) == 0 || *(a1 + v14[6]) != *(a2 + v14[6]) || *(a1 + v14[7]) != *(a2 + v14[7]) || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v20 = v14[9];
  v21 = (a1 + v20);
  v22 = *(a1 + v20 + 8);
  v23 = (a2 + v20);
  v24 = *(a2 + v20 + 8);
  if (v22)
  {
    if (!v24)
    {
      return 0;
    }
  }

  else
  {
    if (*v21 != *v23)
    {
      LOBYTE(v24) = 1;
    }

    if (v24)
    {
      return 0;
    }
  }

  v25 = v14[10];
  v26 = (a1 + v25);
  v27 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  v29 = v28[1];
  if (v27)
  {
    if (!v29 || (*v26 != *v28 || v27 != v29) && (sub_1D1E6904C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v29)
  {
    return 0;
  }

  v30 = v14[11];
  v31 = *(a1 + v30);
  LOBYTE(v30) = *(a2 + v30);
  v67 = v31;
  v66 = v30;
  v62 = ServiceKind.rawValue.getter();
  v63 = v32;
  if (v62 == ServiceKind.rawValue.getter() && v63 == v33)
  {
  }

  else
  {
    LODWORD(v62) = sub_1D1E6904C();

    if ((v62 & 1) == 0)
    {
      return 0;
    }
  }

  v34 = v14[12];
  v35 = *(a1 + v34);
  LOBYTE(v34) = *(a2 + v34);
  v65 = v35;
  v64 = v34;
  v62 = ServiceKind.rawValue.getter();
  v63 = v36;
  if (v62 == ServiceKind.rawValue.getter() && v63 == v37)
  {
  }

  else
  {
    LODWORD(v62) = sub_1D1E6904C();

    if ((v62 & 1) == 0)
    {
      return 0;
    }
  }

  v38 = v14[13];
  v39 = *(a1 + v38);
  v40 = *(a2 + v38);
  if (v39 == 5)
  {
    if (v40 != 5)
    {
      return 0;
    }
  }

  else if (v40 == 5 || (sub_1D17A07A0(v39, v40) & 1) == 0)
  {
    return 0;
  }

  if ((sub_1D177B190(*(a1 + v14[14]), *(a2 + v14[14])) & 1) == 0)
  {
    return 0;
  }

  v41 = v14[15];
  v63 = *(a1 + v41);
  v42 = *(a2 + v41);

  LODWORD(v62) = sub_1D1846E74(v63, v42);

  if ((v62 & 1) == 0)
  {
    return 0;
  }

  v43 = v14[16];
  v44 = *(a1 + v43);
  v61 = *(a1 + v43 + 8);
  v62 = v44;
  v45 = (a2 + v43);
  v46 = *v45;
  v63 = v45[1];

  v60 = v46;
  if ((sub_1D184CF18(v62, v46) & 1) == 0)
  {

    return 0;
  }

  v59 = sub_1D184D5B4(v61, v63);

  if ((v59 & 1) == 0 || (sub_1D177B190(*(a1 + v14[17]), *(a2 + v14[17])) & 1) == 0)
  {
    return 0;
  }

  v47 = v14[18];
  v48 = *(v11 + 48);
  sub_1D1741C08(a1 + v47, v13, &qword_1EC644870, &unk_1D1EABA00);
  v49 = a2 + v47;
  v50 = v48;
  sub_1D1741C08(v49, &v13[v48], &qword_1EC644870, &unk_1D1EABA00);
  v51 = *(v5 + 48);
  if (v51(v13, 1, v4) == 1)
  {
    if (v51(&v13[v50], 1, v4) == 1)
    {
      sub_1D1741A30(v13, &qword_1EC644870, &unk_1D1EABA00);
      return 1;
    }

    goto LABEL_48;
  }

  sub_1D1741C08(v13, v10, &qword_1EC644870, &unk_1D1EABA00);
  if (v51(&v13[v50], 1, v4) == 1)
  {
    sub_1D1C8D31C(v10, type metadata accessor for EndpointPath);
LABEL_48:
    v53 = &qword_1EC64CB00;
    v54 = &qword_1D1EA1838;
LABEL_54:
    sub_1D1741A30(v13, v53, v54);
    return 0;
  }

  sub_1D1C8D398(&v13[v50], v7, type metadata accessor for EndpointPath);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *&v10[*(v4 + 20)] != *&v7[*(v4 + 20)])
  {
    sub_1D1C8D31C(v7, type metadata accessor for EndpointPath);
    sub_1D1C8D31C(v10, type metadata accessor for EndpointPath);
    v53 = &qword_1EC644870;
    v54 = &unk_1D1EABA00;
    goto LABEL_54;
  }

  v55 = *(v4 + 24);
  v56 = *&v10[v55];
  v57 = *&v7[v55];
  sub_1D1C8D31C(v7, type metadata accessor for EndpointPath);
  sub_1D1C8D31C(v10, type metadata accessor for EndpointPath);
  sub_1D1741A30(v13, &qword_1EC644870, &unk_1D1EABA00);
  return v56 == v57;
}

void sub_1D1C8AAD8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v23 = a3;
  v24 = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645578, &qword_1D1E79B20);
  MEMORY[0x1EEE9AC00](v22);
  v8 = &v21 - v7;
  v25 = a1;
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 64);
  v12 = (v9 + 63) >> 6;

  v13 = 0;
  while (v11)
  {
    v14 = v13;
LABEL_10:
    v15 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v16 = v15 | (v14 << 6);
    v17 = *(a2 + 48);
    v18 = sub_1D1E66A7C();
    (*(*(v18 - 8) + 16))(v8, v17 + *(*(v18 - 8) + 72) * v16, v18);
    v19 = *(a2 + 56);
    v20 = type metadata accessor for StaticLightProfile(0);
    sub_1D1C8D2B4(v19 + *(*(v20 - 8) + 72) * v16, &v8[*(v22 + 48)], type metadata accessor for StaticLightProfile);
    sub_1D1C88250(&v25, v8, v23, v24);
    sub_1D1741A30(v8, &qword_1EC645578, &qword_1D1E79B20);
    if (v4)
    {

      return;
    }
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v12)
    {

      return;
    }

    v11 = *(a2 + 64 + 8 * v14);
    ++v13;
    if (v11)
    {
      v13 = v14;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1D1C8ACE8(uint64_t a1, uint64_t a2)
{
  v153 = sub_1D1E669FC();
  v152 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v148 = &v138 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_1D1E66A7C();
  v149 = *(v150 - 8);
  v5 = MEMORY[0x1EEE9AC00](v150);
  v147 = &v138 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v146 = &v138 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v141 = &v138 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v144 = &v138 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v143 = &v138 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v140 = &v138 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v145 = &v138 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v138 - v19;
  v21 = type metadata accessor for StaticService(0);
  v169 = *(v21 - 1);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v138 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v168 = &v138 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v151 = &v138 - v27;
  v166 = type metadata accessor for StaticCharacteristic(0);
  v164 = *(v166 - 1);
  MEMORY[0x1EEE9AC00](v166);
  v157 = &v138 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v142 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = MEMORY[0x1EEE9AC00](v30);
  v158 = &v138 - v33;
  v34 = MEMORY[0x1EEE9AC00](v32);
  v155 = &v138 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v156 = &v138 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v165 = &v138 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v42 = &v138 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v138 - v43;
  v45 = sub_1D18DB9B4(MEMORY[0x1E69E7CC0]);
  v171 = a1;
  v46 = sub_1D18FC598(v45, sub_1D1C8D37C, v170, a2);
  v173 = v46;
  v47 = a1;
  v172 = *(a1 + v21[26]);
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB34F0 == v48)
  {
  }

  else
  {
    v49 = sub_1D1E6904C();

    if ((v49 & 1) == 0)
    {
      return v173;
    }
  }

  if (*(v46 + 16))
  {
    v50 = sub_1D171D140(4);
    if (v51)
    {
      v52 = v164;
      sub_1D1C8D2B4(*(v46 + 56) + *(v164 + 72) * v50, v44, type metadata accessor for StaticCharacteristic);
      (*(v52 + 56))(v44, 0, 1, v166);
      v53 = &qword_1EC643630;
      v54 = &qword_1D1E71D10;
      v55 = v44;
LABEL_15:
      sub_1D1741A30(v55, v53, v54);
      return v173;
    }
  }

  v139 = v20;
  v57 = v164 + 56;
  v56 = *(v164 + 56);
  v58 = v166;
  v56(v44, 1, 1, v166);
  sub_1D1741A30(v44, &qword_1EC643630, &qword_1D1E71D10);
  v59 = *(v47 + v21[32]);
  if (!*(v59 + 16))
  {
    v56(v42, 1, 1, v58);
LABEL_14:
    v53 = &qword_1EC643630;
    v54 = &qword_1D1E71D10;
    v55 = v42;
    goto LABEL_15;
  }

  v162 = v56;

  v60 = sub_1D171D140(4);
  if (v61)
  {
    v62 = v164;
    sub_1D1C8D2B4(*(v59 + 56) + *(v164 + 72) * v60, v42, type metadata accessor for StaticCharacteristic);
    v63 = v166;
    v162(v42, 0, 1, v166);
  }

  else
  {
    v63 = v166;
    v62 = v164;
    v162(v42, 1, 1, v166);
  }

  v160 = *(v62 + 48);
  v161 = v62 + 48;
  if (v160(v42, 1, v63) == 1)
  {
    goto LABEL_14;
  }

  result = sub_1D1C8D398(v42, v157, type metadata accessor for StaticCharacteristic);
  v65 = *(v47 + v21[31]);
  v66 = *(v65 + 16);
  if (v66)
  {
    v159 = v57;
    v67 = 0;
    v163 = v23 + 8;
    v167 = 0x80000001D1EB3100;
    v68 = v156;
    v154 = v66;
    while (1)
    {
      if (v67 >= *(v65 + 16))
      {
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

      sub_1D1C8D2B4(v65 + ((*(v169 + 80) + 32) & ~*(v169 + 80)) + *(v169 + 72) * v67, v23, type metadata accessor for StaticService);
      v172 = v23[v21[26]];
      if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v167 == v70)
      {
      }

      else
      {
        v71 = sub_1D1E6904C();

        if ((v71 & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      if (v163[v21[12]])
      {
        goto LABEL_20;
      }

      v72 = *&v23[v21[32]];
      if (*(v72 + 16))
      {
        v73 = sub_1D171D140(47);
        v74 = v166;
        if (v75)
        {
          sub_1D1C8D2B4(*(v72 + 56) + *(v164 + 72) * v73, v165, type metadata accessor for StaticCharacteristic);
          v76 = 0;
        }

        else
        {
          v76 = 1;
        }
      }

      else
      {
        v76 = 1;
        v74 = v166;
      }

      v77 = v165;
      v162(v165, v76, 1, v74);
      sub_1D1741A90(v77, v68, &qword_1EC643630, &qword_1D1E71D10);
      result = (v160)(v68, 1, v74);
      if (result == 1)
      {
        sub_1D1741A30(v68, &qword_1EC643630, &qword_1D1E71D10);
        v66 = v154;
        goto LABEL_20;
      }

      v78 = v68 + v74[6];
      v79 = *v78;
      v80 = *(v78 + 16);
      v66 = v154;
      if (v80 > 3)
      {
        if (v80 == 4)
        {
          if (v79 < 0)
          {
            goto LABEL_98;
          }
        }

        else
        {
          if (v80 != 6 && v80 != 5)
          {
LABEL_45:
            sub_1D1C8D31C(v68, type metadata accessor for StaticCharacteristic);
            goto LABEL_20;
          }

          v79 = v79;
        }
      }

      else
      {
        switch(v80)
        {
          case 1:
            v79 = v79;
            break;
          case 2:
            v79 = v79;
            break;
          case 3:
            v79 = v79;
            break;
          default:
            goto LABEL_45;
        }
      }

      sub_1D1C8D31C(v68, type metadata accessor for StaticCharacteristic);
      if (v79 == 1)
      {
        goto LABEL_20;
      }

      if (*(v72 + 16))
      {
        v81 = sub_1D171D140(70);
        v82 = v166;
        if (v83)
        {
          sub_1D1C8D2B4(*(v72 + 56) + *(v164 + 72) * v81, v155, type metadata accessor for StaticCharacteristic);
          v84 = 0;
        }

        else
        {
          v84 = 1;
        }
      }

      else
      {
        v84 = 1;
        v82 = v166;
      }

      v85 = v155;
      v162(v155, v84, 1, v82);
      v86 = v85;
      v87 = v158;
      sub_1D1741A90(v86, v158, &qword_1EC643630, &qword_1D1E71D10);
      result = (v160)(v87, 1, v82);
      if (result == 1)
      {
        sub_1D1741A30(v87, &qword_1EC643630, &qword_1D1E71D10);
        v68 = v156;
        goto LABEL_20;
      }

      v88 = v87 + v82[6];
      v89 = *v88;
      v90 = *(v88 + 16);
      if (v90 <= 2)
      {
        v68 = v156;
        if (!v90)
        {
          sub_1D1C8D31C(v158, type metadata accessor for StaticCharacteristic);
          if (v89)
          {
            goto LABEL_96;
          }

          goto LABEL_20;
        }

        if (v90 == 1)
        {
          v89 = v89;
        }

        else
        {
          v89 = v89;
        }
      }

      else
      {
        v68 = v156;
        if (v90 > 4)
        {
          if (v90 != 6 && v90 != 5)
          {
LABEL_73:
            sub_1D1C8D31C(v158, type metadata accessor for StaticCharacteristic);
            goto LABEL_20;
          }

          v89 = v89;
        }

        else if (v90 == 3)
        {
          v89 = v89;
        }

        else if ((v89 & 0x8000000000000000) != 0)
        {
          goto LABEL_101;
        }
      }

      if (v89 > 1)
      {
        goto LABEL_73;
      }

      sub_1D1C8D31C(v158, type metadata accessor for StaticCharacteristic);
      if (v89 == 1)
      {
LABEL_96:
        v92 = v151;
        sub_1D1C8D398(v23, v151, type metadata accessor for StaticService);
        v91 = 0;
        v57 = v159;
        goto LABEL_76;
      }

LABEL_20:
      ++v67;
      result = sub_1D1C8D31C(v23, type metadata accessor for StaticService);
      v69 = v168;
      if (v66 == v67)
      {
        v91 = 1;
        v92 = v151;
        v57 = v159;
        goto LABEL_77;
      }
    }
  }

  v91 = 1;
  v92 = v151;
LABEL_76:
  v69 = v168;
LABEL_77:
  v93 = v169;
  (*(v169 + 56))(v92, v91, 1, v21);
  sub_1D1741C08(v92, v69, &qword_1EC6436F0, &qword_1D1E99BC0);
  v94 = (*(v93 + 48))(v69, 1, v21);
  v95 = v153;
  v96 = v152;
  v97 = v150;
  v98 = v157;
  if (v94 == 1)
  {
    sub_1D1741A30(v92, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1C8D31C(v98, type metadata accessor for StaticCharacteristic);
    v55 = v69;
    v53 = &qword_1EC6436F0;
    v54 = &qword_1D1E99BC0;
    goto LABEL_15;
  }

  v99 = v69 + v21[12];
  v100 = *v99;
  v101 = *(v99 + 8);
  sub_1D1C8D31C(v69, type metadata accessor for StaticService);
  if (v101 == 1)
  {
    sub_1D1741A30(v92, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1C8D31C(v98, type metadata accessor for StaticCharacteristic);
    return v173;
  }

  v102 = *(v149 + 56);
  result = v102(v139, 1, 1, v97);
  if (v100 < 0xFFFFFFFF80000000)
  {
    goto LABEL_99;
  }

  if (v100 <= 0x7FFFFFFF)
  {
    (*(v96 + 56))(v144, 1, 1, v95);
    v102(v145, 1, 1, v97);
    v103 = v140;
    sub_1D1741A90(v139, v140, &qword_1EC642590, qword_1D1E71260);
    v104 = v149;
    v105 = *(v149 + 48);
    v106 = v105(v103, 1, v97);
    v159 = v57;
    v165 = v100;
    if (v106 == 1)
    {
      (*(v104 + 16))(v146, v98, v97);
      if (v105(v103, 1, v97) != 1)
      {
        sub_1D1741A30(v103, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v104 + 32))(v146, v103, v97);
    }

    v107 = v166;
    LODWORD(v164) = *(v98 + v166[5]);
    v108 = v141;
    sub_1D1741A90(v144, v141, &qword_1EC642570, &qword_1D1E6C6A0);
    v109 = *(v96 + 48);
    if (v109(v108, 1, v95) == 1)
    {
      (*(v96 + 16))(v148, v98 + v107[7], v95);
      v110 = v109(v108, 1, v95);
      v111 = v147;
      if (v110 != 1)
      {
        sub_1D1741A30(v108, &qword_1EC642570, &qword_1D1E6C6A0);
      }
    }

    else
    {
      (*(v96 + 32))(v148, v108, v95);
      v111 = v147;
    }

    v112 = v166;
    v113 = v166[9];
    v114 = v98 + v166[8];
    v116 = *v114;
    v115 = *(v114 + 8);
    v168 = *(v114 + 16);
    v169 = v115;
    LODWORD(v167) = *(v114 + 24);
    v163 = *(v98 + v113);
    v117 = v143;
    sub_1D1741A90(v145, v143, &qword_1EC642590, qword_1D1E71260);
    v118 = v105(v117, 1, v97);
    v119 = v149;
    v120 = v165;
    v161 = v116;
    if (v118 == 1)
    {
      (*(v149 + 16))(v111, v98 + v112[10], v97);
      v121 = v105(v117, 1, v97);
      sub_1D17418FC(v116, v169, v168, v167);
      v122 = v97;
      if (v121 != 1)
      {
        sub_1D1741A30(v117, &qword_1EC642590, qword_1D1E71260);
      }
    }

    else
    {
      (*(v149 + 32))(v111, v117, v97);
      sub_1D17418FC(v116, v169, v168, v167);
      v122 = v97;
    }

    v123 = v120;
    v124 = v166;
    v125 = (v98 + v166[11]);
    v126 = v125[1];
    v165 = *v125;
    v127 = v125[2];
    v128 = v125[3];
    v129 = v125[4];
    v130 = *(v119 + 32);
    v131 = v142;
    v130(v142, v146, v122);
    *(v131 + v124[5]) = v164;
    v132 = v131 + v124[6];
    *v132 = v123;
    *(v132 + 8) = 0;
    *(v132 + 16) = 5;
    (*(v152 + 32))(v131 + v124[7], v148, v153);
    v133 = v131 + v124[8];
    v134 = v168;
    v135 = v169;
    *v133 = v161;
    *(v133 + 8) = v135;
    *(v133 + 16) = v134;
    *(v133 + 24) = v167;
    *(v131 + v124[9]) = v163;
    v130((v131 + v124[10]), v147, v122);
    v136 = (v131 + v124[11]);
    v137 = v165;
    *v136 = v165;
    v136[1] = v126;
    v136[2] = v127;
    v136[3] = v128;
    v136[4] = v129;
    v162(v131, 0, 1, v124);
    sub_1D18F323C(v137, v126, v127, v128, v129);
    sub_1D1B0F194(v131, 4);
    sub_1D1741A30(v151, &qword_1EC6436F0, &qword_1D1E99BC0);
    sub_1D1C8D31C(v157, type metadata accessor for StaticCharacteristic);
    return v173;
  }

LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
  return result;
}

uint64_t sub_1D1C8C038(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for StaticCharacteristic(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436A8, &unk_1D1E71DE0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v38 - v15;
  v17 = -1 << *(a1 + 32);
  v18 = ~v17;
  v19 = *(a1 + 64);
  v20 = -v17;
  v39 = a1;
  v40 = a1 + 64;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v41 = v18;
  v42 = 0;
  v43 = v21 & v19;
  v44 = a2;
  v45 = a3;

  v38 = a3;

  while (1)
  {
    sub_1D1AC0C2C(v16);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
    if ((*(*(v22 - 8) + 48))(v16, 1, v22) == 1)
    {
      sub_1D1716918(v39);
    }

    v23 = *v16;
    sub_1D1C8D398(&v16[*(v22 + 48)], v13, type metadata accessor for StaticCharacteristic);
    v24 = *a5;
    v26 = sub_1D171D140(v23);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      break;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if (a4)
      {
        v33 = *a5;
        if ((v25 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D173DAEC();
        v33 = *a5;
        if ((v30 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      sub_1D1C8D250(v13, v33[7] + *(v11 + 72) * v26);
      a4 = 1;
    }

    else
    {
      sub_1D1730FB4(v29, a4 & 1);
      v31 = sub_1D171D140(v23);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_21;
      }

      v26 = v31;
      v33 = *a5;
      if (v30)
      {
        goto LABEL_5;
      }

LABEL_14:
      v33[(v26 >> 6) + 8] |= 1 << v26;
      *(v33[6] + v26) = v23;
      sub_1D1C8D398(v13, v33[7] + *(v11 + 72) * v26, type metadata accessor for StaticCharacteristic);
      v34 = v33[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_20;
      }

      v33[2] = v36;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1C8C368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E669FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v108 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v125 = &v108 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v121 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v120 = &v108 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v122 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v119 = &v108 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v123 = &v108 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v118 = &v108 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v126 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v27);
  v124 = &v108 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v127 = (&v108 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v35 = (&v108 - v34);
  MEMORY[0x1EEE9AC00](v33);
  v128 = &v108 - v36;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v129 = a2;
  sub_1D1C8C038(a1, sub_1D1C8A39C, 0, isUniquelyReferenced_nonNull_native, &v129);

  if (*(a2 + 16) && (v38 = sub_1D171D140(26), (v39 & 1) != 0))
  {
    v40 = v38;
    v116 = v7;
    v41 = v9;
    v42 = v8;
    v43 = v5;
    v44 = v4;
    v45 = *(a2 + 56);
    v46 = type metadata accessor for StaticCharacteristic(0);
    v47 = *(v46 - 8);
    v117 = v12;
    v48 = v47;
    v49 = v45 + *(v47 + 72) * v40;
    v4 = v44;
    v5 = v43;
    v8 = v42;
    v9 = v41;
    v7 = v116;
    v50 = v128;
    sub_1D1C8D2B4(v49, v128, type metadata accessor for StaticCharacteristic);
    (*(v48 + 56))(v50, 0, 1, v46);
    v12 = v117;
    if (!*(a1 + 16))
    {
      goto LABEL_12;
    }
  }

  else
  {
    v51 = type metadata accessor for StaticCharacteristic(0);
    (*(*(v51 - 8) + 56))(v128, 1, 1, v51);
    if (!*(a1 + 16))
    {
LABEL_12:
      v70 = type metadata accessor for StaticCharacteristic(0);
      (*(*(v70 - 8) + 56))(v35, 1, 1, v70);
LABEL_14:
      sub_1D1741A30(v35, &qword_1EC643630, &qword_1D1E71D10);
      goto LABEL_15;
    }
  }

  v52 = sub_1D171D140(57);
  if ((v53 & 1) == 0)
  {
    goto LABEL_12;
  }

  v54 = v52;
  v117 = v12;
  v113 = v4;
  v55 = *(a1 + 56);
  v56 = type metadata accessor for StaticCharacteristic(0);
  v57 = *(v56 - 8);
  v58 = v57[9];
  v59 = v55 + v58 * v54;
  v60 = v56;
  sub_1D1C8D2B4(v59, v35, type metadata accessor for StaticCharacteristic);
  v115 = v57[7];
  v115(v35, 0, 1, v60);
  sub_1D1741A30(v35, &qword_1EC643630, &qword_1D1E71D10);
  if (!*(a1 + 16) || (v114 = v57 + 7, v61 = sub_1D171D140(116), (v62 & 1) == 0))
  {
    v35 = v127;
    v115(v127, 1, 1, v60);
    goto LABEL_14;
  }

  v63 = v127;
  sub_1D1C8D2B4(*(a1 + 56) + v61 * v58, v127, type metadata accessor for StaticCharacteristic);
  v115(v63, 0, 1, v60);
  sub_1D1741A30(v63, &qword_1EC643630, &qword_1D1E71D10);
  v64 = v57[6];
  if (v64(v128, 1, v60) != 1)
  {
    v65 = v60;
    v66 = v126;
    sub_1D1741C08(v128, v126, &qword_1EC643630, &qword_1D1E71D10);
    v127 = v65;
    if (v64(v66, 1, v65) == 1)
    {
      sub_1D1741A30(v66, &qword_1EC643630, &qword_1D1E71D10);
      v67 = 1;
      v68 = v124;
      v69 = v127;
    }

    else
    {
      v73 = *(v9 + 56);
      v74 = v118;
      v73(v118, 1, 1, v8);
      v75 = v120;
      v76 = v113;
      (*(v5 + 56))(v120, 1, 1, v113);
      v73(v123, 1, 1, v8);
      v77 = v119;
      sub_1D1741A90(v74, v119, &qword_1EC642590, qword_1D1E71260);
      v78 = *(v9 + 48);
      v79 = v78(v77, 1, v8);
      v118 = (v9 + 48);
      v110 = v78;
      if (v79 == 1)
      {
        (*(v9 + 16))(v125, v66, v8);
        if (v78(v77, 1, v8) != 1)
        {
          sub_1D1741A30(v77, &qword_1EC642590, qword_1D1E71260);
        }
      }

      else
      {
        (*(v9 + 32))(v125, v77, v8);
      }

      v80 = v127;
      v111 = *(v66 + v127[5]);
      v81 = v121;
      sub_1D1741A90(v75, v121, &qword_1EC642570, &qword_1D1E6C6A0);
      v82 = *(v5 + 48);
      v83 = v82(v81, 1, v76);
      v112 = v5;
      if (v83 == 1)
      {
        v84 = v66;
        v85 = v8;
        (*(v5 + 16))(v7, v84 + v80[7], v76);
        if (v82(v81, 1, v76) != 1)
        {
          sub_1D1741A30(v81, &qword_1EC642570, &qword_1D1E6C6A0);
        }
      }

      else
      {
        v85 = v8;
        (*(v5 + 32))(v7, v81, v76);
      }

      v86 = v126;
      v69 = v127;
      v87 = v127[9];
      v88 = v126 + v127[8];
      v90 = *v88;
      v89 = *(v88 + 8);
      v120 = *(v88 + 16);
      v121 = v89;
      LODWORD(v119) = *(v88 + 24);
      v109 = *(v126 + v87);
      v91 = v122;
      sub_1D1741A90(v123, v122, &qword_1EC642590, qword_1D1E71260);
      v92 = v85;
      v93 = v110;
      v94 = v110(v91, 1, v85);
      v116 = v7;
      v108 = v90;
      if (v94 == 1)
      {
        (*(v9 + 16))(v117, v86 + v69[10], v85);
        v95 = v93(v91, 1, v85);
        sub_1D17418FC(v90, v121, v120, v119);
        if (v95 != 1)
        {
          sub_1D1741A30(v91, &qword_1EC642590, qword_1D1E71260);
        }
      }

      else
      {
        (*(v9 + 32))(v117, v91, v85);
        sub_1D17418FC(v90, v121, v120, v119);
      }

      v96 = (v86 + v69[11]);
      v97 = *v96;
      v98 = v96[1];
      v99 = v96[2];
      v100 = v96[3];
      v101 = v96[4];
      v102 = *(v9 + 32);
      v68 = v124;
      v102(v124, v125, v92);
      *(v68 + v69[5]) = v111;
      v103 = v68 + v69[6];
      *v103 = 0;
      *(v103 + 8) = 0;
      *(v103 + 16) = 5;
      (*(v112 + 32))(v68 + v69[7], v116, v113);
      v104 = v68 + v69[8];
      v105 = v120;
      v106 = v121;
      *v104 = v108;
      *(v104 + 8) = v106;
      *(v104 + 16) = v105;
      *(v104 + 24) = v119;
      *(v68 + v69[9]) = v109;
      v102((v68 + v69[10]), v117, v92);
      v107 = (v68 + v69[11]);
      *v107 = v97;
      v107[1] = v98;
      v107[2] = v99;
      v107[3] = v100;
      v107[4] = v101;
      sub_1D18F323C(v97, v98, v99, v100, v101);
      sub_1D1C8D31C(v126, type metadata accessor for StaticCharacteristic);
      v67 = 0;
    }

    v115(v68, v67, 1, v69);
    sub_1D1B0F194(v68, 26);
  }

LABEL_15:
  v71 = v129;
  sub_1D1741A30(v128, &qword_1EC643630, &qword_1D1E71D10);
  return v71;
}

void sub_1D1C8D038(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D17BDF80(319, &qword_1EE07D1D8, MEMORY[0x1E69E6530]);
    if (v2 <= 0x3F)
    {
      sub_1D17BDF80(319, qword_1EE07D1F8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        sub_1D17BDF80(319, qword_1EE07D8B8, &type metadata for ServiceSubKind);
        if (v4 <= 0x3F)
        {
          sub_1D1C8D1EC(319, &qword_1EC64CC88, type metadata accessor for ActionService, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_1D1C8D1EC(319, qword_1EE07DAD8, type metadata accessor for EndpointPath, MEMORY[0x1E69E6720]);
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

void sub_1D1C8D1EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_1D1C8D250(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCharacteristic(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1C8D2B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C8D31C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1C8D398(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C8D400(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t ActionService.activeString.getter()
{
  v7 = *(v0 + *(type metadata accessor for ActionService(0) + 60));
  v6 = 3;
  v1 = sub_1D1CE4920(&v6);
  result = 0;
  if (v1 != 2)
  {
    if (v1)
    {
      v3 = 0xD000000000000019;
    }

    else
    {
      v3 = 0xD00000000000001ALL;
    }

    if (v1)
    {
      v4 = "HFSceneDescriptionValueOff";
    }

    else
    {
      v4 = ", \n    underlyingType: ";
    }

    v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

    return v5;
  }

  return result;
}

uint64_t ActionService.airPurifierString.getter()
{
  type metadata accessor for ActionService(0);
  v9 = 3;
  v0 = sub_1D1CE4920(&v9);
  result = 0;
  if (v0 != 2)
  {
    if (v0)
    {
      v9 = -109;
      v10 = StaticCharacteristicsBag.int(for:)(&v9);
      if (v10.is_nil)
      {
        goto LABEL_8;
      }

      if (!v10.value)
      {
        v9 = 115;
        sub_1D1CE53A4(&v9);
        if ((v5 & 1) == 0)
        {
          v6 = v4;
          v8 = static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC70E0);
          MEMORY[0x1D3890F70](32, 0xE100000000000000);
          v7 = sub_1D19CB618(1, 0.0, 100.0, v6);
          MEMORY[0x1D3890F70](v7);

          return v8;
        }

        v2 = 0xD000000000000031;
        v3 = 0x80000001D1EC70E0;
        return static String.hfLocalized(_:)(v2, v3);
      }

      if (v10.value != 1)
      {
LABEL_8:
        v3 = 0x80000001D1EC7A50;
        v2 = 0xD000000000000019;
      }

      else
      {
        v2 = 0xD00000000000002FLL;
        v3 = 0x80000001D1EC70B0;
      }
    }

    else
    {
      v2 = 0xD00000000000001ALL;
      v3 = 0x80000001D1EC7A30;
    }

    return static String.hfLocalized(_:)(v2, v3);
  }

  return result;
}

uint64_t ActionService.doorStateString.getter()
{
  v6 = *(v0 + *(type metadata accessor for ActionService(0) + 60));
  v5 = -107;
  v7 = StaticCharacteristicsBag.int(for:)(&v5);
  if (v7.is_nil)
  {
    return 0;
  }

  value = v7.value;
  v2 = 0xD00000000000001BLL;
  if (!value)
  {
    v3 = "HFSceneDescriptionValueClosed";
    return static String.hfLocalized(_:)(v2, v3 | 0x8000000000000000);
  }

  if (value != 1)
  {
    return 0;
  }

  v3 = "HFSceneDescriptionValueOn";
  v2 = 0xD00000000000001DLL;
  return static String.hfLocalized(_:)(v2, v3 | 0x8000000000000000);
}

uint64_t ActionService.faucetString.getter()
{
  v7 = *(v0 + *(type metadata accessor for ActionService(0) + 60));
  v6 = 3;
  v1 = sub_1D1CE4920(&v6);
  result = 0;
  if (v1 != 2)
  {
    if (v1)
    {
      v3 = 0xD00000000000002FLL;
    }

    else
    {
      v3 = 0xD00000000000002BLL;
    }

    if (v1)
    {
      v4 = "tion.FaucetValve, State:Off";
    }

    else
    {
      v4 = "TitleLeakDetectedSimple";
    }

    v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

    return v5;
  }

  return result;
}

uint64_t ActionService.heaterCoolerString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService(0) + 60));
  v31 = v1;
  v30 = 3;
  v2 = sub_1D1CE4920(&v30);
  if (v2 == 2)
  {
    return 0;
  }

  if ((v2 & 1) == 0)
  {
    return static String.hfLocalized(_:)(0xD00000000000001ALL, 0x80000001D1EC7A30);
  }

  v31 = v1;
  v30 = -105;
  v32 = StaticCharacteristicsBag.int(for:)(&v30);
  if (v32.is_nil)
  {
    return 0;
  }

  if (v32.value == 2)
  {
    v31 = v1;
    v30 = 29;
    sub_1D1CE53A4(&v30);
    if (v24)
    {
      return 0;
    }

    v21 = v23;
    v22 = "HFServiceControlDescriptionHeaterCoolerCoolingToWithTemperature";
  }

  else
  {
    if (v32.value != 1)
    {
      if (!v32.value)
      {
        v31 = v1;
        v30 = 55;
        sub_1D1CE53A4(&v30);
        if ((v5 & 1) == 0)
        {
          v6 = v4;
          v31 = v1;
          v30 = 29;
          sub_1D1CE53A4(&v30);
          if ((v8 & 1) == 0)
          {
            v9 = v7;
            static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
            v10 = swift_allocObject();
            *(v10 + 16) = xmmword_1D1E73A90;
            LOBYTE(v31) = 0;
            v11 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v31, v6);
            v13 = v12;
            v14 = MEMORY[0x1E69E6158];
            *(v10 + 56) = MEMORY[0x1E69E6158];
            v15 = sub_1D1757D20();
            *(v10 + 64) = v15;
            *(v10 + 32) = v11;
            *(v10 + 40) = v13;
            LOBYTE(v31) = 0;
            v16 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v31, v9);
            *(v10 + 96) = v14;
            *(v10 + 104) = v15;
            *(v10 + 72) = v16;
            *(v10 + 80) = v17;
            v18 = sub_1D1E6783C();

            return v18;
          }
        }
      }

      return 0;
    }

    v31 = v1;
    v30 = 55;
    sub_1D1CE53A4(&v30);
    if (v20)
    {
      return 0;
    }

    v21 = v19;
    v22 = "HFServiceControlDescriptionHeaterCoolerHeatingToWithTemperature";
  }

  static String.hfLocalized(_:)(0xD00000000000003FLL, (v22 - 32) | 0x8000000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1D1E739C0;
  LOBYTE(v31) = 0;
  v26 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v31, v21);
  v28 = v27;
  *(v25 + 56) = MEMORY[0x1E69E6158];
  *(v25 + 64) = sub_1D1757D20();
  *(v25 + 32) = v26;
  *(v25 + 40) = v28;
  v29 = sub_1D1E6783C();

  return v29;
}

uint64_t ActionService.humidifierDehumidifierString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService(0) + 60));
  v39 = v1;
  v38 = 3;
  v2 = sub_1D1CE4920(&v38);
  if (v2 == 2)
  {
    return 0;
  }

  v3 = v2;
  v39 = v1;
  v38 = -102;
  v40 = StaticCharacteristicsBag.int(for:)(&v38);
  if (v40.is_nil)
  {
    return 0;
  }

  if ((v3 & 1) == 0)
  {
    return static String.hfLocalized(_:)(0xD00000000000001ALL, 0x80000001D1EC7A30);
  }

  value = v40.value;
  result = static String.hfLocalized(_:)(0xD000000000000019, 0x80000001D1EC7A50);
  switch(value)
  {
    case 2:
      v12 = result;
      v39 = v1;
      v38 = 48;
      sub_1D1CE53A4(&v38);
      if ((v20 & 1) == 0)
      {
        v21 = v19;

        v16 = v21;
        v17 = "tionHumidifierAutoWithHumidity";
        v18 = 0xD000000000000034;
        goto LABEL_18;
      }

      return v12;
    case 1:
      v12 = result;
      v39 = v1;
      v38 = 58;
      sub_1D1CE53A4(&v38);
      if ((v14 & 1) == 0)
      {
        v15 = v13;

        v16 = v15;
        v17 = "humidifyWithHumidity";
        v18 = 0xD000000000000032;
LABEL_18:
        static String.hfLocalized(_:)(v18, v17 | 0x8000000000000000);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v22 = swift_allocObject();
        *(v22 + 16) = xmmword_1D1E739C0;
        v23 = sub_1D19CB618(1, 0.0, 100.0, v16);
        v25 = v24;
        *(v22 + 56) = MEMORY[0x1E69E6158];
        *(v22 + 64) = sub_1D1757D20();
        *(v22 + 32) = v23;
        *(v22 + 40) = v25;
        v26 = sub_1D1E6783C();

        return v26;
      }

      return v12;
    case 0:
      v6 = result;
      v39 = v1;
      v38 = 58;
      sub_1D1CE53A4(&v38);
      if (v8)
      {
        return v6;
      }

      v9 = v7;
      v39 = v1;
      v38 = 48;
      sub_1D1CE53A4(&v38);
      if (v11)
      {
        return v6;
      }

      else
      {
        v27 = v10;

        v28 = v9;
        static String.hfLocalized(_:)(0xD000000000000033, 0x80000001D1EC7160);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v29 = swift_allocObject();
        *(v29 + 16) = xmmword_1D1E73A90;
        v30 = sub_1D19CB618(1, 0.0, 100.0, v28);
        v32 = v31;
        v33 = MEMORY[0x1E69E6158];
        *(v29 + 56) = MEMORY[0x1E69E6158];
        v34 = sub_1D1757D20();
        *(v29 + 64) = v34;
        *(v29 + 32) = v30;
        *(v29 + 40) = v32;
        v35 = sub_1D19CB618(1, 0.0, 100.0, v27);
        *(v29 + 96) = v33;
        *(v29 + 104) = v34;
        *(v29 + 72) = v35;
        *(v29 + 80) = v36;
        v37 = sub_1D1E6783C();

        return v37;
      }
  }

  return result;
}

uint64_t ActionService.irrigationSystemString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService(0) + 60));
  v9 = v1;
  v8 = 65;
  v2 = sub_1D1CE4920(&v8);
  result = 0;
  if (v2 != 2)
  {
    v4 = 0xD000000000000030;
    if (v2)
    {
      v4 = 0xD00000000000003ALL;
      v5 = "HFServiceDescription.IrrigationSystem, State:RunningManual";
    }

    else
    {
      v9 = v1;
      v8 = 3;
      v6 = sub_1D1CE4920(&v8);
      if (v6 != 2 && (v6 & 1) != 0)
      {
        v9 = v1;
        v8 = 106;
        v10 = StaticCharacteristicsBag.int(for:)(&v8);
        if (!v10.is_nil)
        {
          if (v10.value)
          {
            v7 = "ystem, State:Off";
            v4 = 0xD000000000000036;
            return static String.hfLocalized(_:)(v4, v7 | 0x8000000000000000);
          }
        }
      }

      v5 = "HFServiceDescription.IrrigationSystem, State:Off";
    }

    v7 = (v5 - 32);
    return static String.hfLocalized(_:)(v4, v7 | 0x8000000000000000);
  }

  return result;
}

uint64_t ActionService.lightBulbString.getter()
{
  type metadata accessor for ActionService(0);
  v13 = 105;
  v0 = sub_1D1CE4920(&v13);
  result = 0;
  if (v0 != 2)
  {
    if (v0)
    {
      v13 = 12;
      v14 = StaticCharacteristicsBag.int(for:)(&v13);
      if (!v14.is_nil)
      {
        value = v14.value;
        if (v14.value >= 1)
        {
          StaticProfileBag.isNaturalLightSupported.getter();
          if (v3)
          {
            StaticProfileBag.isNaturalLightEnabled.getter();
            if (v4)
            {
              v12 = sub_1D19CB618(1, 0.0, 100.0, value);

              MEMORY[0x1D3890F70](0x20A280E220, 0xA500000000000000);

              v5 = static String.hfLocalized(_:)(0xD000000000000017, 0x80000001D1EC6F40);
              v7 = v6;

              MEMORY[0x1D3890F70](v5, v7);

              return v12;
            }
          }
        }
      }

      v13 = 12;
      v15 = StaticCharacteristicsBag.int(for:)(&v13);
      v11 = v15.value;
      v8 = "HFSceneDescriptionValueOff";
      v9 = 0xD000000000000019;
      if (!v15.is_nil && v11 >= 1)
      {
        return sub_1D19CB618(1, 0.0, 100.0, v11);
      }
    }

    else
    {
      v8 = ", \n    underlyingType: ";
      v9 = 0xD00000000000001ALL;
    }

    v10 = static String.hfLocalized(_:)(v9, v8 | 0x8000000000000000);

    return v10;
  }

  return result;
}

uint64_t ActionService.lockStateString.getter()
{
  v6 = *(v0 + *(type metadata accessor for ActionService(0) + 60));
  v5 = -100;
  v7 = StaticCharacteristicsBag.int(for:)(&v5);
  if (v7.is_nil)
  {
    return 0;
  }

  value = v7.value;
  v2 = 0xD00000000000001DLL;
  if (value == 1)
  {
    v3 = "HFSceneDescriptionValueUnlocked";
    return static String.hfLocalized(_:)(v2, v3 | 0x8000000000000000);
  }

  if (value)
  {
    return 0;
  }

  v3 = "HFSceneDescriptionValueOpen";
  v2 = 0xD00000000000001FLL;
  return static String.hfLocalized(_:)(v2, v3 | 0x8000000000000000);
}

uint64_t ActionService.motorizedDoorOrWindowString.getter()
{
  v9 = *(v0 + *(type metadata accessor for ActionService(0) + 60));
  v8 = -98;
  v10 = StaticCharacteristicsBag.int(for:)(&v8);
  value = v10.value;
  result = 0;
  if (!v10.is_nil)
  {
    if (value == 100)
    {
      return static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EC7A90);
    }

    else if (value)
    {
      v3 = sub_1D19CB618(1, 0.0, 100.0, value);
      v5 = v4;
      static String.hfLocalized(_:)(0xD000000000000031, 0x80000001D1EC6D00);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D1E739C0;
      *(v6 + 56) = MEMORY[0x1E69E6158];
      *(v6 + 64) = sub_1D1757D20();
      *(v6 + 32) = v3;
      *(v6 + 40) = v5;
      v7 = sub_1D1E6784C();

      return v7;
    }

    else
    {
      return static String.hfLocalized(_:)(0xD00000000000001DLL, 0x80000001D1EC7A70);
    }
  }

  return result;
}

uint64_t ActionService.securitySystemString.getter()
{
  v7 = *(v0 + *(type metadata accessor for ActionService(0) + 60));
  v6 = -96;
  v8 = StaticCharacteristicsBag.int(for:)(&v6);
  v1 = 0;
  if (!v8.is_nil)
  {
    value = v8.value;
    v1 = 0;
    v3 = 0xD000000000000035;
    if (value > 1)
    {
      if (value == 2)
      {
        v4 = "itySystemStateDisarm";
        v3 = 0xD000000000000036;
        return static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);
      }

      if (value == 3)
      {
        v4 = "HFSceneDescriptionValueLocked";
        v3 = 0xD000000000000034;
        return static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);
      }
    }

    else
    {
      if (!value)
      {
        v4 = "itySystemStateAwayArm";
        return static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);
      }

      if (value == 1)
      {
        v4 = "itySystemStateNightArm";
        return static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);
      }
    }
  }

  return v1;
}

uint64_t ActionService.switchString.getter()
{
  v7 = *(v0 + *(type metadata accessor for ActionService(0) + 60));
  v6 = 105;
  v1 = sub_1D1CE4920(&v6);
  result = 0;
  if (v1 != 2)
  {
    v3 = (v1 & 1) == 0;
    if (v1)
    {
      v4 = "HFSceneDescriptionValueOff";
    }

    else
    {
      v4 = ", \n    underlyingType: ";
    }

    if (v3)
    {
      v5 = 0xD00000000000001ALL;
    }

    else
    {
      v5 = 0xD000000000000019;
    }

    return static String.hfLocalized(_:)(v5, v4 | 0x8000000000000000);
  }

  return result;
}

uint64_t ActionService.televisionString.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ActionService(0);
  v3 = *(v2 - 1);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = &v27[-v8];
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v27[-v11];
  v13 = *(v0 + *(v10 + 60));
  v29 = v13;
  v28 = 3;
  v14 = sub_1D1CE4920(&v28);
  result = 0;
  if (v14 == 2)
  {
    return result;
  }

  if ((v14 & 1) == 0)
  {
    v25 = 0xD00000000000001ALL;
    v26 = 0x80000001D1EC7A30;
    return static String.hfLocalized(_:)(v25, v26);
  }

  v29 = v13;
  v28 = 4;

  v30 = StaticCharacteristicsBag.int(for:)(&v28);
  value = v30.value;
  is_nil = v30.is_nil;

  if (is_nil || (v18 = *(v1 + v2[14]), (v19 = *(v18 + 16)) == 0))
  {
LABEL_13:
    v26 = 0x80000001D1EC7A50;
    v25 = 0xD000000000000019;
    return static String.hfLocalized(_:)(v25, v26);
  }

  v20 = 0;
  v21 = v18 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  while (1)
  {
    if (v20 >= *(v18 + 16))
    {
      __break(1u);
      return result;
    }

    sub_1D1C8ED40(v21 + *(v3 + 72) * v20, v6);
    v22 = &v6[v2[9]];
    if ((v22[8] & 1) == 0 && *v22 == value)
    {
      break;
    }

    ++v20;
    result = sub_1D1C8EDA4(v6);
    if (v19 == v20)
    {
      goto LABEL_13;
    }
  }

  sub_1D1C8EE00(v6, v9);
  sub_1D1C8EE00(v9, v12);
  v29 = *&v12[v2[15]];
  v28 = 27;
  v23 = StaticCharacteristicsBag.string(for:)(&v28);
  if (v23.value._object)
  {
    countAndFlagsBits = v23.value._countAndFlagsBits;
  }

  else
  {
    countAndFlagsBits = *&v12[v2[5]];
  }

  sub_1D1C8EDA4(v12);
  return countAndFlagsBits;
}

uint64_t ActionService.thermostatString.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionService(0) + 60));
  v30 = v1;
  v29 = -104;
  v31 = StaticCharacteristicsBag.int(for:)(&v29);
  if (v31.is_nil)
  {
    return 0;
  }

  value = v31.value;
  v30 = v1;
  v29 = -94;
  sub_1D1CE53A4(&v29);
  if (v4)
  {
    return 0;
  }

  v6 = v3;
  result = 0;
  v7 = v6;
  if (value > 1)
  {
    if (value == 2)
    {
      v8 = "HFServiceControlDescriptionHeaterCoolerCoolingToWithTemperature";
      goto LABEL_16;
    }

    if (value == 3)
    {
      v30 = v1;
      v29 = 55;
      sub_1D1CE53A4(&v29);
      if ((v10 & 1) == 0)
      {
        v11 = v9;
        v30 = v1;
        v29 = 29;
        sub_1D1CE53A4(&v29);
        if ((v13 & 1) == 0)
        {
          v14 = v12;
          static String.hfLocalized(_:)(0xD00000000000001BLL, 0x80000001D1EBA3F0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
          v15 = swift_allocObject();
          *(v15 + 16) = xmmword_1D1E73A90;
          LOBYTE(v30) = 0;
          v16 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v30, v11);
          v18 = v17;
          v19 = MEMORY[0x1E69E6158];
          *(v15 + 56) = MEMORY[0x1E69E6158];
          v20 = sub_1D1757D20();
          *(v15 + 64) = v20;
          *(v15 + 32) = v16;
          *(v15 + 40) = v18;
          LOBYTE(v30) = 0;
          v21 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v30, v14);
          *(v15 + 96) = v19;
          *(v15 + 104) = v20;
          *(v15 + 72) = v21;
          *(v15 + 80) = v22;
          v23 = sub_1D1E6783C();

          return v23;
        }
      }

      return 0;
    }
  }

  else
  {
    if (!value)
    {
      return static String.hfLocalized(_:)(0xD00000000000002ALL, 0x80000001D1EC6EA0);
    }

    if (value == 1)
    {
      v8 = "HFServiceControlDescriptionHeaterCoolerHeatingToWithTemperature";
LABEL_16:
      static String.hfLocalized(_:)(0xD00000000000003FLL, (v8 - 32) | 0x8000000000000000);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v24 = swift_allocObject();
      *(v24 + 16) = xmmword_1D1E739C0;
      LOBYTE(v30) = 0;
      v25 = static ClimateSummarizer.temperatureAverageString(_:temperatureScale:)(&v30, v7);
      v27 = v26;
      *(v24 + 56) = MEMORY[0x1E69E6158];
      *(v24 + 64) = sub_1D1757D20();
      *(v24 + 32) = v25;
      *(v24 + 40) = v27;
      v28 = sub_1D1E6783C();

      return v28;
    }
  }

  return result;
}

uint64_t ActionService.valveString.getter()
{
  v7 = *(v0 + *(type metadata accessor for ActionService(0) + 60));
  v6 = 3;
  v1 = sub_1D1CE4920(&v6);
  result = 0;
  if (v1 != 2)
  {
    if (v1)
    {
      v3 = 0xD000000000000023;
    }

    else
    {
      v3 = 0xD00000000000001FLL;
    }

    if (v1)
    {
      v4 = "ionValve_OneStarting";
    }

    else
    {
      v4 = "rolHeaderCurrentTemp";
    }

    v5 = static String.hfLocalized(_:)(v3, v4 | 0x8000000000000000);

    return v5;
  }

  return result;
}

uint64_t sub_1D1C8EB34(char a1)
{
  v3 = *(v1 + *(type metadata accessor for ActionService(0) + 60));
  v12 = v3;
  v11 = a1;
  v4 = sub_1D1CE4920(&v11);
  result = 0;
  if (v4 != 2)
  {
    v6 = 0xD000000000000019;
    if (v4)
    {
      v12 = v3;
      v11 = 115;
      sub_1D1CE53A4(&v11);
      v8 = "HFSceneDescriptionValueOff";
      if ((v9 & 1) == 0 && v7 > 0.0)
      {
        return sub_1D19CB618(1, 0.0, 100.0, v7);
      }
    }

    else
    {
      v8 = ", \n    underlyingType: ";
      v6 = 0xD00000000000001ALL;
    }

    v10 = static String.hfLocalized(_:)(v6, v8 | 0x8000000000000000);

    return v10;
  }

  return result;
}

uint64_t ActionService.actionCharaceristicDescription.getter()
{
  v1 = type metadata accessor for ActionService(0);
  result = 0;
  switch(*(v0 + *(v1 + 44)))
  {
    case 3:
      result = ActionService.airPurifierString.getter();
      break;
    case 0xE:
    case 0x33:
    case 0x34:
      result = ActionService.motorizedDoorOrWindowString.getter();
      break;
    case 0x10:
      result = ActionService.fanString.getter();
      break;
    case 0x11:
      result = ActionService.faucetString.getter();
      break;
    case 0x13:
      result = ActionService.doorStateString.getter();
      break;
    case 0x14:
      result = ActionService.heaterCoolerString.getter();
      break;
    case 0x15:
      result = ActionService.humidifierDehumidifierString.getter();
      break;
    case 0x18:
      result = ActionService.irrigationSystemString.getter();
      break;
    case 0x1C:
      result = ActionService.lightBulbString.getter();
      break;
    case 0x1E:
      result = ActionService.lockStateString.getter();
      break;
    case 0x22:
    case 0x29:
      result = ActionService.switchString.getter();
      break;
    case 0x23:
      result = ActionService.securitySystemString.getter();
      break;
    case 0x2C:
      result = ActionService.televisionString.getter();
      break;
    case 0x2E:
      result = ActionService.thermostatString.getter();
      break;
    case 0x2F:
      result = ActionService.valveString.getter();
      break;
    case 0x30:
      result = ActionService.ventilationFan.getter();
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1C8ED40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionService(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1C8EDA4(uint64_t a1)
{
  v2 = type metadata accessor for ActionService(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1C8EE00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionService(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ActionServiceGroup.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActionServiceGroup.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActionServiceGroup(0) + 20));

  return v1;
}

uint64_t type metadata accessor for ActionServiceGroup(uint64_t a1)
{
  result = qword_1EC64CC98;
  if (!qword_1EC64CC98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double ActionServiceGroup.actionServicesDictionary.getter()
{
  type metadata accessor for ActionServiceGroup(0);

  return result;
}

uint64_t ActionServiceGroup.init(staticServiceGroup:overrideCharacteristicValues:overrideProfileValues:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v81 = a2;
  v82 = a3;
  v6 = type metadata accessor for ActionService(0);
  v75 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v78 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v89 = &v68 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v68 - v16;
  v18 = sub_1D1E66A7C();
  v19 = *(v18 - 8);
  v20 = *(v19 + 16);
  v88 = v18;
  v84 = v20;
  v85 = v19 + 16;
  (v20)(a4, a1);
  v21 = type metadata accessor for StaticServiceGroup(0);
  v22 = (a1 + *(v21 + 20));
  v23 = *v22;
  v24 = v22[1];
  v68 = type metadata accessor for ActionServiceGroup(0);
  v25 = *(v68 + 20);
  v70 = a4;
  v26 = (a4 + v25);
  *v26 = v23;
  v26[1] = v24;
  v27 = *(v21 + 56);
  v69 = a1;
  v28 = *(a1 + v27);

  v29 = sub_1D18DBB98(MEMORY[0x1E69E7CC0]);
  v30 = v28 + 64;
  v31 = 1 << *(v28 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(v28 + 64);
  v34 = (v31 + 63) >> 6;
  v77 = v19;
  v87 = v19 + 8;
  v80 = v28;

  v35 = 0;
  v71 = v34;
  v72 = v28 + 64;
  v73 = v11;
  v74 = v17;
  v76 = v9;
  while (v33)
  {
    v86 = v29;
LABEL_12:
    v39 = __clz(__rbit64(v33)) | (v35 << 6);
    v40 = v80;
    v41 = *(v80 + 48);
    v42 = v77;
    v83 = *(v77 + 72);
    v43 = v88;
    v84(v17, v41 + v83 * v39, v88);
    v44 = *(v40 + 56);
    v45 = type metadata accessor for StaticService(0);
    sub_1D1C916E4(v44 + *(*(v45 - 8) + 72) * v39, &v17[*(v11 + 48)], type metadata accessor for StaticService);
    sub_1D182C148(v17, v89);
    v46 = v17;
    v47 = v78;
    sub_1D182C148(v46, v78);
    v48 = *(v11 + 48);
    v49 = v81;

    v50 = v82;

    v51 = v79;
    ActionService.init(with:overrideCharacteristicValues:overrideProfileValues:)(v47 + v48, v49, v50, v79);
    v52 = *(v42 + 8);
    v52(v47, v43);
    v53 = v76;
    sub_1D1C8EE00(v51, v76);
    v54 = v86;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v54;
    v57 = sub_1D1742188();
    v58 = v54[2];
    v59 = (v56 & 1) == 0;
    v60 = v58 + v59;
    if (__OFADD__(v58, v59))
    {
      goto LABEL_25;
    }

    v61 = v56;
    if (v54[3] >= v60)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v29 = v90;
        if (v56)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1D173DFA4();
        v29 = v90;
        if (v61)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1D1731AC4(v60, isUniquelyReferenced_nonNull_native);
      v62 = sub_1D1742188();
      if ((v61 & 1) != (v63 & 1))
      {
        goto LABEL_27;
      }

      v57 = v62;
      v29 = v90;
      if (v61)
      {
LABEL_4:
        sub_1D1C91680(v53, v29[7] + *(v75 + 72) * v57);
        v17 = v74;
        sub_1D1C91618(v74);
        goto LABEL_5;
      }
    }

    v29[(v57 >> 6) + 8] |= 1 << v57;
    v84((v29[6] + v57 * v83), v89, v88);
    sub_1D1C8EE00(v53, v29[7] + *(v75 + 72) * v57);
    v17 = v74;
    sub_1D1C91618(v74);
    v64 = v29[2];
    v65 = __OFADD__(v64, 1);
    v66 = v64 + 1;
    if (v65)
    {
      goto LABEL_26;
    }

    v29[2] = v66;
LABEL_5:
    v33 &= v33 - 1;
    v11 = v73;
    v36 = *(v73 + 48);
    v37 = v89;
    v52(v89, v88);
    sub_1D1C9174C(v37 + v36, type metadata accessor for StaticService);
    v34 = v71;
    v30 = v72;
  }

  while (1)
  {
    v38 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v38 >= v34)
    {
      sub_1D1C9174C(v69, type metadata accessor for StaticServiceGroup);

      *(v70 + *(v68 + 24)) = v29;
      return result;
    }

    v33 = *(v30 + 8 * v38);
    ++v35;
    if (v33)
    {
      v86 = v29;
      v35 = v38;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t static ActionServiceGroup.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for ActionServiceGroup(0);
  v5 = *(v4 + 20);
  v6 = *(a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v6 == *v8 && v7 == v8[1];
  if (!v9 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v10 = *(v4 + 24);
  v11 = *(a1 + v10);
  v12 = *(a2 + v10);

  return sub_1D184B5C4(v11, v12);
}

uint64_t ActionServiceGroup.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1C917F4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for ActionServiceGroup(0);
  sub_1D1E678EC();
  v4 = *(v1 + *(v3 + 24));

  return sub_1D1857700(a1, v4);
}

uint64_t ActionServiceGroup.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C917F4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v1 = type metadata accessor for ActionServiceGroup(0);
  sub_1D1E678EC();
  sub_1D1857700(v3, *(v0 + *(v1 + 24)));
  return sub_1D1E6926C();
}

uint64_t sub_1D1C8F750(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v11 = *(a3 + 24);
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1D184B5C4(v12, v13);
}

uint64_t sub_1D1C8F7E4(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C917F4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E678EC();
  sub_1D1857700(v4, *(v1 + *(a1 + 24)));
  return sub_1D1E6926C();
}

uint64_t sub_1D1C8F89C(uint64_t a1, uint64_t a2)
{
  sub_1D1E66A7C();
  sub_1D1C917F4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E678EC();
  v5 = *(v2 + *(a2 + 24));

  return sub_1D1857700(a1, v5);
}

uint64_t sub_1D1C8F948(uint64_t a1, uint64_t a2)
{
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1C917F4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D1E678EC();
  sub_1D1857700(v5, *(v2 + *(a2 + 24)));
  return sub_1D1E6926C();
}

uint64_t ActionServiceGroup.actionServices.getter()
{
  type metadata accessor for ActionServiceGroup(0);

  return sub_1D1782AC0(v0);
}

void *ActionServiceGroup.sortedActionServices.getter()
{
  type metadata accessor for ActionServiceGroup(0);

  v1 = sub_1D1782AC0(v0);
  v2 = v1;
  v3 = *(v1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  v4 = sub_1D1804514(*(v1 + 16), 0);
  v5 = *(type metadata accessor for ActionService(0) - 8);
  v6 = sub_1D18061F8(&v9, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v3, v2);
  v7 = v9;

  sub_1D1716918(v7);
  if (v6 != v3)
  {
    __break(1u);
LABEL_4:
    v4 = MEMORY[0x1E69E7CC0];
  }

  v9 = v4;
  sub_1D1C9041C(&v9);

  return v9;
}

uint64_t ActionServiceGroup.statusIcon.getter@<X0>(unint64_t *a1@<X8>)
{
  v18 = a1;
  v1 = type metadata accessor for ActionService(0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionServiceGroup(0);

  v6 = sub_1D1782AC0(v5);
  v7 = v6[2];
  if (v7)
  {
    v17 = v1;
    v8 = sub_1D1804514(v7, 0);
    v16 = v2;
    v9 = sub_1D18061F8(&v19, v8 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v7, v6);
    v10 = v19;

    sub_1D1716918(v10);
    if (v9 != v7)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v2 = v16;
    v1 = v17;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v19 = v8;
  sub_1D1C9041C(&v19);

  if (v19[2])
  {
    sub_1D1C916E4(v19 + ((*(v2 + 80) + 32) & ~*(v2 + 80)), v4, type metadata accessor for ActionService);

    v11 = v4[*(v1 + 44)] | (v4[*(v1 + 52)] << 8);
    result = sub_1D1C9174C(v4, type metadata accessor for ActionService);
    v13 = 0;
  }

  else
  {

    v11 = 0;
    v13 = 0x80;
  }

  v14 = v18;
  *v18 = v11;
  *(v14 + 8) = v13;
  *(v14 + 9) = 92;
  v14[2] = 0;
  v14[3] = 0;
  return result;
}

uint64_t ActionServiceGroup.temperatureStringIcon.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ActionService(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v16 - v7;
  type metadata accessor for ActionServiceGroup(0);

  v10 = sub_1D1782AC0(v9);
  v11 = v10[2];
  if (v11)
  {
    v18 = v6;
    v19 = a1;
    v12 = sub_1D1804514(v11, 0);
    v17 = v3;
    v13 = sub_1D18061F8(&v20, v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v11, v10);
    v14 = v20;

    sub_1D1716918(v14);
    if (v13 != v11)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v6 = v18;
    a1 = v19;
    v3 = v17;
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  v20 = v12;
  sub_1D1C9041C(&v20);

  if (v20[2])
  {
    sub_1D1C916E4(v20 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v8, type metadata accessor for ActionService);

    sub_1D1C916E4(v8, v6, type metadata accessor for ActionService);
    sub_1D18F21EC(v6, a1);
    return sub_1D1C9174C(v8, type metadata accessor for ActionService);
  }

  else
  {

    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  return result;
}

uint64_t ActionServiceGroup.actionCharaceristicDescription.getter()
{
  v0 = type metadata accessor for ActionService(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v13 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionServiceGroup(0);

  v5 = sub_1D1782AC0(v4);
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = sub_1D1804514(*(v5 + 16), 0);
    v14 = v1;
    v9 = sub_1D18061F8(&v15, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v7, v6);
    v10 = v15;

    sub_1D1716918(v10);
    if (v9 != v7)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v1 = v14;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v15 = v8;
  sub_1D1C9041C(&v15);

  if (v15[2])
  {
    sub_1D1C916E4(v15 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v3, type metadata accessor for ActionService);

    v11 = ActionService.actionCharaceristicDescription.getter();
    sub_1D1C9174C(v3, type metadata accessor for ActionService);
  }

  else
  {

    return 0;
  }

  return v11;
}

uint64_t ActionServiceGroup.isActivated.getter()
{
  v0 = type metadata accessor for ActionService(0);
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ActionServiceGroup(0);

  v5 = sub_1D1782AC0(v4);
  v6 = v5;
  v7 = *(v5 + 16);
  if (v7)
  {
    v8 = sub_1D1804514(*(v5 + 16), 0);
    v18 = v1;
    v9 = sub_1D18061F8(&v19, v8 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), v7, v6);
    v10 = v19;

    sub_1D1716918(v10);
    if (v9 != v7)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    v1 = v18;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v19 = v8;
  sub_1D1C9041C(&v19);

  v11 = v19[2];
  if (v11)
  {
    v12 = 0;
    v13 = v19 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v14 = *(v1 + 72);
    do
    {
      sub_1D1C916E4(v13, v3, type metadata accessor for ActionService);
      v15 = ActionService.isActivated.getter();
      sub_1D1C9174C(v3, type metadata accessor for ActionService);
      v12 |= v15;
      v13 += v14;
      --v11;
    }

    while (v11);
  }

  else
  {

    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1D1C9041C(uint64_t *a1)
{
  v2 = *(type metadata accessor for ActionService(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D1E0C120(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D1C904C4(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D1C904C4(uint64_t *a1)
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
        type metadata accessor for ActionService(0);
        v6 = sub_1D1E67C8C();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ActionService(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D1C90824(v8, v9, a1, v4);
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
    return sub_1D1C905F0(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D1C905F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v34 = type metadata accessor for ActionService(0);
  v8 = MEMORY[0x1EEE9AC00](v34);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = &v26 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
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
      sub_1D1C916E4(v23, v17, type metadata accessor for ActionService);
      sub_1D1C916E4(v20, v13, type metadata accessor for ActionService);
      v24 = MEMORY[0x1D3890070](v17, v13);
      sub_1D1C9174C(v13, type metadata accessor for ActionService);
      result = sub_1D1C9174C(v17, type metadata accessor for ActionService);
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

      sub_1D1C8EE00(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D1C8EE00(v10, v20);
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

uint64_t sub_1D1C90824(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v96 = a1;
  v108 = type metadata accessor for ActionService(0);
  v104 = *(v108 - 8);
  v9 = MEMORY[0x1EEE9AC00](v108);
  v98 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v107 = &v93 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v93 - v14;
  result = MEMORY[0x1EEE9AC00](v13);
  v18 = &v93 - v17;
  v106 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v5 = *v96;
    if (!*v96)
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

    v109 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      while (*v106)
      {
        v89 = *(result + 16 * a4);
        v90 = result;
        v91 = *(result + 16 * (a4 - 1) + 40);
        sub_1D1C91104(*v106 + *(v104 + 72) * v89, *v106 + *(v104 + 72) * *(result + 16 * (a4 - 1) + 32), *v106 + *(v104 + 72) * v91, v5);
        if (v6)
        {
        }

        if (v91 < v89)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1D1E0BE44(v90);
        }

        if (a4 - 2 >= *(v90 + 2))
        {
          goto LABEL_123;
        }

        v92 = &v90[16 * a4];
        *v92 = v89;
        *(v92 + 1) = v91;
        v109 = v90;
        sub_1D1E0BDB8(a4 - 1);
        result = v109;
        a4 = *(v109 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_133;
    }
  }

  v20 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  v95 = a4;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v99 = v21;
    if (v23 >= v19)
    {
      v29 = v23;
    }

    else
    {
      v24 = *(v104 + 72);
      v5 = *v106 + v24 * v23;
      v102 = *v106;
      v25 = v102;
      sub_1D1C916E4(v102 + v24 * v23, v18, type metadata accessor for ActionService);
      sub_1D1C916E4(v25 + v24 * v22, v15, type metadata accessor for ActionService);
      LODWORD(v103) = MEMORY[0x1D3890070](v18, v15);
      sub_1D1C9174C(v15, type metadata accessor for ActionService);
      result = sub_1D1C9174C(v18, type metadata accessor for ActionService);
      v94 = v22;
      v26 = v22 + 2;
      v105 = v24;
      v27 = v102 + v24 * (v22 + 2);
      while (v19 != v26)
      {
        sub_1D1C916E4(v27, v18, type metadata accessor for ActionService);
        sub_1D1C916E4(v5, v15, type metadata accessor for ActionService);
        v28 = MEMORY[0x1D3890070](v18, v15) & 1;
        sub_1D1C9174C(v15, type metadata accessor for ActionService);
        result = sub_1D1C9174C(v18, type metadata accessor for ActionService);
        ++v26;
        v27 += v105;
        v5 += v105;
        if ((v103 & 1) != v28)
        {
          v29 = v26 - 1;
          goto LABEL_11;
        }
      }

      v29 = v19;
LABEL_11:
      v22 = v94;
      a4 = v95;
      if (v103)
      {
        if (v29 < v94)
        {
          goto LABEL_126;
        }

        if (v94 < v29)
        {
          v93 = v6;
          v30 = v105 * (v29 - 1);
          v31 = v29 * v105;
          v103 = v29;
          v32 = v29;
          v33 = v94 * v105;
          do
          {
            if (v22 != --v32)
            {
              v34 = *v106;
              if (!*v106)
              {
                goto LABEL_132;
              }

              v5 = v34 + v33;
              sub_1D1C8EE00(v34 + v33, v98);
              if (v33 < v30 || v5 >= v34 + v31)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v33 != v30)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1D1C8EE00(v98, v34 + v30);
            }

            ++v22;
            v30 -= v105;
            v31 -= v105;
            v33 += v105;
          }

          while (v22 < v32);
          v6 = v93;
          v22 = v94;
          a4 = v95;
          v29 = v103;
        }
      }
    }

    v35 = v106[1];
    if (v29 < v35)
    {
      if (__OFSUB__(v29, v22))
      {
        goto LABEL_125;
      }

      if (v29 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v35)
        {
          v36 = v106[1];
        }

        else
        {
          v36 = v22 + a4;
        }

        if (v36 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v29 != v36)
        {
          break;
        }
      }
    }

    v37 = v29;
    if (v29 < v22)
    {
      goto LABEL_124;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v21 = v99;
    }

    else
    {
      result = sub_1D177D070(0, *(v99 + 2) + 1, 1, v99);
      v21 = result;
    }

    a4 = *(v21 + 2);
    v38 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v38 >> 1)
    {
      result = sub_1D177D070((v38 > 1), a4 + 1, 1, v21);
      v21 = result;
    }

    *(v21 + 2) = v5;
    v39 = &v21[16 * a4];
    *(v39 + 4) = v22;
    *(v39 + 5) = v37;
    v40 = *v96;
    if (!*v96)
    {
      goto LABEL_134;
    }

    v100 = v37;
    if (a4)
    {
      while (1)
      {
        v41 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v42 = *(v21 + 4);
          v43 = *(v21 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_54:
          if (v45)
          {
            goto LABEL_113;
          }

          v58 = &v21[16 * v5];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_116;
          }

          v64 = &v21[16 * v41 + 32];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_120;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v68 = &v21[16 * v5];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_68:
        if (v63)
        {
          goto LABEL_115;
        }

        v71 = &v21[16 * v41];
        v73 = *(v71 + 4);
        v72 = *(v71 + 5);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_118;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v41 - 1;
        if (v41 - 1 >= v5)
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

        if (!*v106)
        {
          goto LABEL_131;
        }

        v79 = v21;
        v80 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v41 + 40];
        sub_1D1C91104(*v106 + *(v104 + 72) * v80, *v106 + *(v104 + 72) * *&v21[16 * v41 + 32], *v106 + *(v104 + 72) * v5, v40);
        if (v6)
        {
        }

        if (v5 < v80)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v79 = sub_1D1E0BE44(v79);
        }

        if (a4 >= *(v79 + 2))
        {
          goto LABEL_110;
        }

        v81 = &v79[16 * a4];
        *(v81 + 4) = v80;
        *(v81 + 5) = v5;
        v109 = v79;
        result = sub_1D1E0BDB8(v41);
        v21 = v109;
        v5 = *(v109 + 16);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v46 = &v21[16 * v5 + 32];
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_111;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_112;
      }

      v53 = &v21[16 * v5];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_114;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_117;
      }

      if (v57 >= v49)
      {
        v75 = &v21[16 * v41 + 32];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_121;
        }

        if (v44 < v78)
        {
          v41 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v19 = v106[1];
    v20 = v100;
    a4 = v95;
    if (v100 >= v19)
    {
      goto LABEL_96;
    }
  }

  v93 = v6;
  v94 = v22;
  v82 = *v106;
  v83 = *(v104 + 72);
  v84 = *v106 + v83 * (v29 - 1);
  v85 = -v83;
  v86 = v22 - v29;
  v97 = v83;
  v5 = v82 + v29 * v83;
  v100 = v36;
LABEL_86:
  v102 = v86;
  v103 = v29;
  v101 = v5;
  v87 = v86;
  v105 = v84;
  while (1)
  {
    sub_1D1C916E4(v5, v18, type metadata accessor for ActionService);
    sub_1D1C916E4(v84, v15, type metadata accessor for ActionService);
    a4 = MEMORY[0x1D3890070](v18, v15);
    sub_1D1C9174C(v15, type metadata accessor for ActionService);
    result = sub_1D1C9174C(v18, type metadata accessor for ActionService);
    if ((a4 & 1) == 0)
    {
LABEL_85:
      v29 = v103 + 1;
      v84 = v105 + v97;
      v86 = v102 - 1;
      v37 = v100;
      v5 = v101 + v97;
      if (v103 + 1 != v100)
      {
        goto LABEL_86;
      }

      v6 = v93;
      v22 = v94;
      if (v100 < v94)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!v82)
    {
      break;
    }

    a4 = v107;
    sub_1D1C8EE00(v5, v107);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1C8EE00(a4, v84);
    v84 += v85;
    v5 += v85;
    if (__CFADD__(v87++, 1))
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

uint64_t sub_1D1C91104(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v42 = type metadata accessor for ActionService(0);
  v8 = MEMORY[0x1EEE9AC00](v42);
  v44 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v8);
  v43 = &v36 - v11;
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
  v47 = a1;
  v46 = a4;
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

    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v22 = -v13;
      v23 = a4 + v17;
      v24 = v42;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = v22;
      do
      {
        v36 = v25;
        v26 = a2 + v22;
        v41 = a2;
        v42 = a2 + v22;
        while (1)
        {
          if (a2 <= a1)
          {
            v47 = a2;
            v45 = v36;
            goto LABEL_59;
          }

          v37 = v25;
          v28 = v24;
          v29 = a3 + v22;
          v30 = v23 + v22;
          v31 = v43;
          sub_1D1C916E4(v30, v43, type metadata accessor for ActionService);
          v32 = v26;
          v33 = v44;
          sub_1D1C916E4(v32, v44, type metadata accessor for ActionService);
          v34 = MEMORY[0x1D3890070](v31, v33);
          sub_1D1C9174C(v33, type metadata accessor for ActionService);
          sub_1D1C9174C(v31, type metadata accessor for ActionService);
          if (v34)
          {
            break;
          }

          v25 = v30;
          if (a3 < v23 || v29 >= v23)
          {
            a3 = v29;
            v24 = v28;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v39;
          }

          else
          {
            v35 = a3 == v23;
            a3 = v29;
            v24 = v28;
            a1 = v39;
            if (!v35)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v23 = v30;
          a2 = v41;
          v27 = v30 > v40;
          v26 = v42;
          v22 = v38;
          if (!v27)
          {
            goto LABEL_57;
          }
        }

        if (a3 < v41 || v29 >= v41)
        {
          a3 = v29;
          v24 = v28;
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v22 = v38;
          a1 = v39;
          v25 = v37;
        }

        else
        {
          v35 = a3 == v41;
          a3 = v29;
          v24 = v28;
          a2 = v42;
          v22 = v38;
          a1 = v39;
          v25 = v37;
          if (!v35)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v23 > v40);
    }

LABEL_57:
    v47 = a2;
    v45 = v25;
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

    v41 = a4 + v16;
    v45 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v43;
        sub_1D1C916E4(a2, v43, type metadata accessor for ActionService);
        v20 = v44;
        sub_1D1C916E4(a4, v44, type metadata accessor for ActionService);
        v21 = MEMORY[0x1D3890070](v19, v20);
        sub_1D1C9174C(v20, type metadata accessor for ActionService);
        sub_1D1C9174C(v19, type metadata accessor for ActionService);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v46 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v47 = a1;
      }

      while (a4 < v41 && a2 < a3);
    }
  }

LABEL_59:
  sub_1D1DC7204(&v47, &v46, &v45);
  return 1;
}

uint64_t sub_1D1C91618(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1C91680(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionService(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1C916E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1C9174C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1C917F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1C918AC(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1C91938(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1C91938(uint64_t a1)
{
  if (!qword_1EC64CCA8)
  {
    sub_1D1E66A7C();
    type metadata accessor for ActionService(255);
    sub_1D1C917F4(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1D1E6769C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC64CCA8);
    }
  }
}

void sub_1D1C919E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v69 = &v55 - v3;
  v68 = type metadata accessor for StaticMatterDevice(0);
  v4 = *(v68 - 8);
  v5 = MEMORY[0x1EEE9AC00](v68);
  v59 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v58 = &v55 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644B30, &qword_1D1E77280);
  v8 = MEMORY[0x1EEE9AC00](v70);
  v60 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v67 = &v55 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v55 - v12;
  v14 = a1 + 64;
  v13 = *(a1 + 64);
  v61 = MEMORY[0x1E69E7CC8];
  v72 = MEMORY[0x1E69E7CC8];
  v15 = 1 << *(a1 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & v13;
  v18 = (v15 + 63) >> 6;
  v57 = v4;
  v65 = (v4 + 48);
  v71 = a1;

  v19 = 0;
  v63 = v18;
  for (i = a1 + 64; ; v14 = i)
  {
    v20 = v19;
    if (!v17)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v19 = v20;
LABEL_10:
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v22 = v21 | (v19 << 6);
      v23 = v71;
      v24 = *(v71 + 48);
      v25 = sub_1D1E66A7C();
      v62 = *(v25 - 8);
      v26 = *(v62 + 72);
      v27 = v66;
      (*(v62 + 16))(v66, v24 + v26 * v22, v25);
      v28 = *(v23 + 56);
      v29 = (type metadata accessor for StaticAccessory(0) - 8);
      v30 = v28 + *(*v29 + 72) * v22;
      v31 = v70;
      sub_1D1CB2110(v30, &v27[*(v70 + 48)], type metadata accessor for StaticAccessory);
      v32 = v27;
      v33 = v67;
      sub_1D1741A90(v32, v67, &qword_1EC644B30, &qword_1D1E77280);
      v34 = v33 + *(v31 + 48) + v29[40];
      v35 = v69;
      sub_1D1741C08(v34, v69, &qword_1EC643650, &qword_1D1E71D40);
      if ((*v65)(v35, 1, v68) != 1)
      {
        break;
      }

      sub_1D1741A30(v33, &qword_1EC644B30, &qword_1D1E77280);
      sub_1D1741A30(v35, &qword_1EC643650, &qword_1D1E71D40);
      v20 = v19;
      v18 = v63;
      v14 = i;
      if (!v17)
      {
LABEL_7:
        while (1)
        {
          v19 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            break;
          }

          if (v19 >= v18)
          {

            return;
          }

          v17 = *(v14 + 8 * v19);
          ++v20;
          if (v17)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_28;
      }
    }

    v56 = v26;
    v36 = v35;
    v37 = v58;
    sub_1D1CB2178(v36, v58, type metadata accessor for StaticMatterDevice);
    sub_1D1741A90(v33, v60, &qword_1EC644B30, &qword_1D1E77280);
    sub_1D1CB2178(v37, v59, type metadata accessor for StaticMatterDevice);
    v38 = v61[2];
    if (v61[3] <= v38)
    {
      sub_1D1725208(v38 + 1, 1);
    }

    v39 = v72;
    sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v40 = sub_1D1E676DC();
    v41 = v39 + 64;
    v61 = v39;
    v42 = -1 << *(v39 + 32);
    v43 = v40 & ~v42;
    v44 = v43 >> 6;
    if (((-1 << v43) & ~*(v39 + 64 + 8 * (v43 >> 6))) == 0)
    {
      break;
    }

    v45 = __clz(__rbit64((-1 << v43) & ~*(v39 + 64 + 8 * (v43 >> 6)))) | v43 & 0x7FFFFFFFFFFFFFC0;
    v46 = v62;
    v47 = v56;
LABEL_25:
    v52 = *(v70 + 48);
    *(v41 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v45;
    v53 = v61;
    v54 = v60;
    (*(v46 + 32))(v61[6] + v45 * v47, v60, v25);
    sub_1D1CB2178(v59, v53[7] + *(v57 + 72) * v45, type metadata accessor for StaticMatterDevice);
    ++v53[2];
    sub_1D1CB2248(v54 + v52, type metadata accessor for StaticAccessory);
    v18 = v63;
  }

  v48 = 0;
  v49 = (63 - v42) >> 6;
  v46 = v62;
  v47 = v56;
  while (++v44 != v49 || (v48 & 1) == 0)
  {
    v50 = v44 == v49;
    if (v44 == v49)
    {
      v44 = 0;
    }

    v48 |= v50;
    v51 = *(v41 + 8 * v44);
    if (v51 != -1)
    {
      v45 = __clz(__rbit64(~v51)) + (v44 << 6);
      goto LABEL_25;
    }
  }

LABEL_28:
  __break(1u);
}

uint64_t sub_1D1C92010(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_1D1E66A7C() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

void sub_1D1C920FC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436F0, &qword_1D1E99BC0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v35 - v5;
  v6 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1 + 64;
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 64);
  v14 = (v11 + 63) >> 6;
  v41 = v7 + 16;
  v43 = v7;
  v15 = (v7 + 8);

  v16 = v6;
  v17 = 0;
  v39 = a1 + 64;
  v40 = v6;
  v36 = a2;
  v37 = a1;
  v42 = v9;
  while (v13)
  {
LABEL_11:
    v23 = *(v43 + 72);
    (*(v43 + 16))(v9, *(a1 + 48) + v23 * (__clz(__rbit64(v13)) | (v17 << 6)), v16);
    v24 = sub_1D1742188();
    if (v25)
    {
      v26 = v24;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = *a2;
      v45 = *a2;
      *a2 = 0x8000000000000000;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1735934();
        v28 = v45;
      }

      v21 = v40;
      (*v15)(*(v28 + 48) + v26 * v23, v40);
      v29 = *(v28 + 56);
      v38 = type metadata accessor for StaticService(0);
      v30 = v26;
      v31 = *(v38 - 8);
      v32 = v29 + *(v31 + 72) * v30;
      v33 = v44;
      sub_1D1CB2178(v32, v44, type metadata accessor for StaticService);
      sub_1D174F594(v30, v28);
      v34 = v36;
      *v36 = v28;

      (*(v31 + 56))(v33, 0, 1, v38);
      v20 = v33;
      v18 = v37;
      a2 = v34;
    }

    else
    {
      v18 = a1;
      v19 = type metadata accessor for StaticService(0);
      v20 = v44;
      (*(*(v19 - 8) + 56))(v44, 1, 1, v19);
      v21 = v40;
    }

    v10 = v39;
    v13 &= v13 - 1;
    sub_1D1741A30(v20, &qword_1EC6436F0, &qword_1D1E99BC0);
    v9 = v42;
    (*v15)(v42, v21);
    v16 = v21;
    a1 = v18;
  }

  while (1)
  {
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 >= v14)
    {

      return;
    }

    v13 = *(v10 + 8 * v22);
    ++v17;
    if (v13)
    {
      v17 = v22;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t StateSnapshot.staticResidents.getter()
{
  type metadata accessor for StateSnapshot(0);

  return sub_1D1782540(v0);
}

uint64_t sub_1D1C924D0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, id *), uint64_t a3, unint64_t a4)
{
  v16 = a1;
  v6 = a1;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D1E6873C())
  {

    if (!i)
    {
      break;
    }

    v8 = 0;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1D3891EF0](v8, a4);
      }

      else
      {
        if (v8 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v9 = *(a4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v15 = v9;
      a2(&v14, &v16, &v15);

      if (!v4)
      {
        v6 = v14;
        v16 = v14;
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return v6;
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return v6;
}

uint64_t sub_1D1C92604(uint64_t a1, uint64_t a2, void (*a3)(void *__return_ptr, uint64_t *, uint64_t), uint64_t a4, uint64_t a5)
{
  v17 = a2;
  v6 = v5;
  v9 = a1;
  v16 = a1;
  v10 = *(a5 + 16);

  if (v10)
  {
    v11 = *(type metadata accessor for StaticService(0) - 8);
    v12 = a5 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v13 = *(v11 + 72);
    while (1)
    {
      v9 = v6;
      a3(v15, &v16, v12);
      if (v6)
      {
        break;
      }

      v9 = v15[0];
      v16 = v15[0];
      v17 = v15[1];
      v12 += v13;
      if (!--v10)
      {
        return v9;
      }
    }
  }

  return v9;
}

uint64_t sub_1D1C92714(char a1, void (*a2)(char *__return_ptr, char *, void *, __n128), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a1;
  v17 = a1;
  v7 = *(a4 + 16);
  if (v7)
  {
    for (i = (a4 + 64); ; i += 5)
    {
      v11 = *(i - 1);
      v10 = *i;
      v12 = *(i - 3);
      v13 = *(i - 2);
      v16[0] = *(i - 4);
      v16[1] = v12;
      v16[2] = v13;
      v16[3] = v11;
      v16[4] = v10;

      (a2)(&v15, &v17, v16);
      if (v5)
      {
        break;
      }

      v6 = v15;
      v17 = v15;
      if (!--v7)
      {
        return v6 & 1;
      }
    }
  }

  return v6 & 1;
}

void sub_1D1C9282C(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t *, id *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v24 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {

    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38, MEMORY[0x1E69E81B8]);
    sub_1D1E681BC();
    v6 = v23[1];
    v7 = v23[2];
    v8 = v23[3];
    v9 = v23[4];
    v10 = v23[5];
  }

  else
  {
    v11 = -1 << *(a4 + 32);
    v7 = a4 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a4 + 56);

    v9 = 0;
  }

  v21 = v6;
  if (v6 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v14 = v9;
  v15 = v10;
  v16 = v9;
  if (v10)
  {
LABEL_12:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v6 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (v18)
    {
      while (1)
      {
        v23[0] = v18;
        a2(&v22, &v24, v23);
        if (v5)
        {
          break;
        }

        v24 = v22;
        v9 = v16;
        v10 = v17;
        v6 = v21;
        if ((v21 & 0x8000000000000000) == 0)
        {
          goto LABEL_8;
        }

LABEL_14:
        v19 = sub_1D1E6877C();
        if (!v19)
        {
          goto LABEL_19;
        }

        v22 = v19;
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        swift_dynamicCast();
        v18 = v23[0];
        v16 = v9;
        v17 = v10;
        if (!v23[0])
        {
          goto LABEL_20;
        }
      }

      sub_1D1716918(v21);
    }

    else
    {
LABEL_20:
      v6 = v21;
LABEL_19:
      sub_1D1716918(v6);
    }
  }

  else
  {
    while (1)
    {
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v16 >= ((v8 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v15 = *(v7 + 8 * v16);
      ++v14;
      if (v15)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

double StateSnapshot.tileInfo(for:)@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v97 = a2;
  v98 = a1;
  v79 = type metadata accessor for StaticMediaProfile(0);
  v76 = *(v79 - 8);
  v3 = MEMORY[0x1EEE9AC00](v79);
  v77 = &v76 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v76 - v5;
  v83 = type metadata accessor for StaticMediaSystem(0);
  v80 = *(v83 - 8);
  v6 = MEMORY[0x1EEE9AC00](v83);
  v81 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v76 - v8;
  v87 = type metadata accessor for StaticCameraProfile(0);
  v84 = *(v87 - 8);
  v9 = MEMORY[0x1EEE9AC00](v87);
  v85 = &v76 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v76 - v11;
  v91 = type metadata accessor for StaticService(0);
  v88 = *(v91 - 8);
  v12 = MEMORY[0x1EEE9AC00](v91);
  v89 = &v76 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v90 = &v76 - v14;
  v95 = type metadata accessor for StaticServiceGroup(0);
  v92 = *(v95 - 8);
  v15 = MEMORY[0x1EEE9AC00](v95);
  v93 = &v76 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v94 = &v76 - v17;
  v18 = type metadata accessor for StaticActionSet(0);
  v96 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v76 - v22;
  v24 = type metadata accessor for StaticAccessory(0);
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v76 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v76 - v29;
  v31 = type metadata accessor for StateSnapshot(0);
  v32 = v2;
  v33 = *(v2 + v31[8]);
  if (*(v33 + 16) && (v34 = sub_1D1742188(), (v35 & 1) != 0))
  {
    sub_1D1CB2110(*(v33 + 56) + *(v25 + 72) * v34, v28, type metadata accessor for StaticAccessory);
    v36 = type metadata accessor for StaticAccessory;
    sub_1D1CB2178(v28, v30, type metadata accessor for StaticAccessory);
    v37 = v97;
    v97[3] = v24;
    v37[4] = sub_1D1CB21E0(&qword_1EC64BA18, type metadata accessor for StaticAccessory, &protocol conformance descriptor for StaticAccessory);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v37);
    v39 = v30;
  }

  else
  {
    v40 = *(v32 + v31[9]);
    if (*(v40 + 16) && (v41 = sub_1D1742188(), (v42 & 1) != 0))
    {
      sub_1D1CB2110(*(v40 + 56) + *(v96 + 72) * v41, v21, type metadata accessor for StaticActionSet);
      v36 = type metadata accessor for StaticActionSet;
      sub_1D1CB2178(v21, v23, type metadata accessor for StaticActionSet);
      v43 = v97;
      v97[3] = v18;
      v43[4] = sub_1D1CB21E0(&qword_1EC64C000, type metadata accessor for StaticActionSet, &protocol conformance descriptor for StaticActionSet);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v43);
      v39 = v23;
    }

    else
    {
      v44 = *(v32 + v31[14]);
      if (*(v44 + 16) && (v45 = sub_1D1742188(), (v46 & 1) != 0))
      {
        v47 = *(v44 + 56);
        v48 = v93;
        sub_1D1CB2110(v47 + *(v92 + 72) * v45, v93, type metadata accessor for StaticServiceGroup);
        v36 = type metadata accessor for StaticServiceGroup;
        v49 = v94;
        sub_1D1CB2178(v48, v94, type metadata accessor for StaticServiceGroup);
        v50 = v97;
        v97[3] = v95;
        v51 = &unk_1EC64BA10;
        v52 = type metadata accessor for StaticServiceGroup;
        v53 = &protocol conformance descriptor for StaticServiceGroup;
      }

      else
      {
        v54 = *(v32 + v31[15]);
        if (*(v54 + 16) && (v55 = sub_1D1742188(), (v56 & 1) != 0))
        {
          v57 = *(v54 + 56);
          v58 = v89;
          sub_1D1CB2110(v57 + *(v88 + 72) * v55, v89, type metadata accessor for StaticService);
          v36 = type metadata accessor for StaticService;
          v49 = v90;
          sub_1D1CB2178(v58, v90, type metadata accessor for StaticService);
          v50 = v97;
          v97[3] = v91;
          v51 = &unk_1EC646AF0;
          v52 = type metadata accessor for StaticService;
          v53 = &protocol conformance descriptor for StaticService;
        }

        else
        {
          v59 = *(v32 + v31[10]);
          if (*(v59 + 16) && (v60 = sub_1D1742188(), (v61 & 1) != 0))
          {
            v62 = *(v59 + 56);
            v63 = v85;
            sub_1D1CB2110(v62 + *(v84 + 72) * v60, v85, type metadata accessor for StaticCameraProfile);
            v36 = type metadata accessor for StaticCameraProfile;
            v49 = v86;
            sub_1D1CB2178(v63, v86, type metadata accessor for StaticCameraProfile);
            v50 = v97;
            v97[3] = v87;
            v51 = &unk_1EC64C010;
            v52 = type metadata accessor for StaticCameraProfile;
            v53 = &protocol conformance descriptor for StaticCameraProfile;
          }

          else
          {
            v64 = *(v32 + v31[11]);
            if (*(v64 + 16) && (v65 = sub_1D1742188(), (v66 & 1) != 0))
            {
              v67 = *(v64 + 56);
              v68 = v81;
              sub_1D1CB2110(v67 + *(v80 + 72) * v65, v81, type metadata accessor for StaticMediaSystem);
              v36 = type metadata accessor for StaticMediaSystem;
              v49 = v82;
              sub_1D1CB2178(v68, v82, type metadata accessor for StaticMediaSystem);
              v50 = v97;
              v97[3] = v83;
              v51 = &unk_1EC64BFE8;
              v52 = type metadata accessor for StaticMediaSystem;
              v53 = &protocol conformance descriptor for StaticMediaSystem;
            }

            else
            {
              v69 = *(v32 + v31[12]);
              if (!*(v69 + 16) || (v70 = sub_1D1742188(), (v71 & 1) == 0))
              {
                v75 = v97;
                v97[4] = 0;
                result = 0.0;
                *v75 = 0u;
                *(v75 + 1) = 0u;
                return result;
              }

              v72 = *(v69 + 56) + *(v76 + 72) * v70;
              v73 = v77;
              sub_1D1CB2110(v72, v77, type metadata accessor for StaticMediaProfile);
              v36 = type metadata accessor for StaticMediaProfile;
              v49 = v78;
              sub_1D1CB2178(v73, v78, type metadata accessor for StaticMediaProfile);
              v50 = v97;
              v97[3] = v79;
              v51 = &unk_1EC64BFD0;
              v52 = type metadata accessor for StaticMediaProfile;
              v53 = &protocol conformance descriptor for StaticMediaProfile;
            }
          }
        }
      }

      v50[4] = sub_1D1CB21E0(v51, v52, v53);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v50);
      v39 = v49;
    }
  }

  sub_1D1CB2178(v39, boxed_opaque_existential_1, v36);
  return result;
}

HMHome_optional __swiftcall StateSnapshot.UpdateType.relevantHome(in:)(Swift::OpaquePointer in)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v38 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v38 - v12;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v16 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(v2, v16, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v19 = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v29 = *v16;
      v30 = *(v16 + 1);
      v31 = v16[16];
      v38[1] = v29;
      v38[2] = v30;
      v39 = v31;
      v32 = sub_1D1C9EE9C();
      sub_1D1AC373C(v29, v30, v31);
      v19 = v32;
      goto LABEL_23;
    case 2:
      v26 = sub_1D1778968();

      v27 = [v26 home];

      v19 = v27;
      goto LABEL_23;
    case 3:
    case 10:
    case 11:
      sub_1D1CB2248(v16, type metadata accessor for StateSnapshot.UpdateType);
      goto LABEL_22;
    case 4:
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

      goto LABEL_9;
    case 5:
LABEL_9:
      (*(v5 + 8))(v16, v4);
      goto LABEL_22;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);

      (*(v5 + 32))(v13, v16, v4);
      if (*(in._rawValue + 2))
      {
        v36 = sub_1D1742188();
        if (v37)
        {
          v22 = *(v5 + 8);
          v23 = *(*(in._rawValue + 7) + 8 * v36);
          v24 = v13;
          goto LABEL_18;
        }
      }

      (*(v5 + 8))(v13, v4);
      goto LABEL_22;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080);

      (*(v5 + 32))(v11, v16, v4);
      if (*(in._rawValue + 2))
      {
        v20 = sub_1D1742188();
        if (v21)
        {
          v22 = *(v5 + 8);
          v23 = *(*(in._rawValue + 7) + 8 * v20);
          v24 = v11;
          goto LABEL_18;
        }
      }

      (*(v5 + 8))(v11, v4);
      goto LABEL_22;
    case 8:
    case 13:
      goto LABEL_23;
    case 9:

      v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
      sub_1D1CB2248(&v16[*(v25 + 48)], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      goto LABEL_22;
    case 12:

      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20);
      (*(v5 + 32))(v8, &v16[*(v33 + 48)], v4);
      if (*(in._rawValue + 2) && (v34 = sub_1D1742188(), (v35 & 1) != 0))
      {
        v22 = *(v5 + 8);
        v23 = *(*(in._rawValue + 7) + 8 * v34);
        v24 = v8;
LABEL_18:
        v22(v24, v4);
        v19 = v23;
      }

      else
      {
        (*(v5 + 8))(v8, v4);
LABEL_22:
        v19 = 0;
      }

LABEL_23:
      result.value.super.isa = v19;
      result.is_nil = v17;
      return result;
    default:
      v19 = *v16;
      goto LABEL_23;
  }
}

uint64_t StateSnapshot.init(updateType:homeManager:home:previousStateSnapshot:coverages:)@<X0>(char *a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char **a6@<X8>)
{
  v399 = a5;
  v401 = a4;
  v409 = a3;
  v383 = a2;
  v404 = a1;
  v377 = a6;
  v405 = 0;
  v419 = type metadata accessor for StaticZone(0);
  v411 = *(v419 - 8);
  v6 = MEMORY[0x1EEE9AC00](v419);
  v418 = &v357 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v410 = &v357 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v417 = &v357 - v10;
  v386 = type metadata accessor for StaticRoom(0);
  v392 = *(v386 - 8);
  MEMORY[0x1EEE9AC00](v386);
  v387 = &v357 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v407 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643740, &qword_1D1E71E98);
  v406 = *(v407 - 8);
  MEMORY[0x1EEE9AC00](v407);
  v372 = &v357 - v12;
  v420 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643710, &unk_1D1EA2630);
  v416 = *(v420 - 8);
  MEMORY[0x1EEE9AC00](v420);
  v385 = &v357 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643750, &unk_1D1E7E6B0);
  v423 = *(v14 - 8);
  v424 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v388 = &v357 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643768, &qword_1D1E71EC0);
  v421 = *(v16 - 8);
  v422 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v389 = &v357 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437E0, &unk_1D1E96B80);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v396 = &v357 - v19;
  v413 = type metadata accessor for StaticHome(0);
  v414 = *(v413 - 8);
  v20 = MEMORY[0x1EEE9AC00](v413);
  v378 = &v357 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v415 = (&v357 - v23);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v403 = &v357 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v357 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v382 = &v357 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCB0, &qword_1D1EA2640);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v398 = &v357 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v369 = (&v357 - v34);
  MEMORY[0x1EEE9AC00](v33);
  v367 = &v357 - v35;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644768, &qword_1D1E75AE0);
  MEMORY[0x1EEE9AC00](v36 - 8);
  v359 = &v357 - v37;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v38 - 8);
  v358 = &v357 - v39;
  v362 = type metadata accessor for StaticAccessory(0);
  v360 = *(v362 - 8);
  MEMORY[0x1EEE9AC00](v362);
  v361 = &v357 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644760, &unk_1D1E9E530);
  MEMORY[0x1EEE9AC00](v41 - 8);
  v366 = &v357 - v42;
  v365 = type metadata accessor for StaticSoftwareUpdate(0);
  v364 = *(v365 - 8);
  v43 = MEMORY[0x1EEE9AC00](v365);
  v357 = &v357 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v363 = &v357 - v45;
  v46 = sub_1D1E66A7C();
  v425 = *(v46 - 8);
  v426 = v46;
  v47 = MEMORY[0x1EEE9AC00](v46);
  v427 = &v357 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = MEMORY[0x1EEE9AC00](v47);
  v412 = &v357 - v50;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v391 = (&v357 - v52);
  MEMORY[0x1EEE9AC00](v51);
  v370 = &v357 - v53;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v395 = *(updated - 8);
  v55 = MEMORY[0x1EEE9AC00](updated);
  v375 = &v357 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = MEMORY[0x1EEE9AC00](v55);
  v376 = &v357 - v58;
  v59 = MEMORY[0x1EEE9AC00](v57);
  v381 = &v357 - v60;
  v61 = MEMORY[0x1EEE9AC00](v59);
  v379 = &v357 - v62;
  MEMORY[0x1EEE9AC00](v61);
  v64 = &v357 - v63;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v66 = MEMORY[0x1EEE9AC00](v65 - 8);
  v374 = &v357 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = MEMORY[0x1EEE9AC00](v66);
  v373 = &v357 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v400 = &v357 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v390 = &v357 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v368 = (&v357 - v75);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v380 = &v357 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v371 = (&v357 - v79);
  v80 = MEMORY[0x1EEE9AC00](v78);
  v82 = &v357 - v81;
  v83 = MEMORY[0x1EEE9AC00](v80);
  v85 = (&v357 - v84);
  v86 = MEMORY[0x1EEE9AC00](v83);
  v88 = (&v357 - v87);
  MEMORY[0x1EEE9AC00](v86);
  v90 = &v357 - v89;
  v91 = type metadata accessor for StateSnapshot(0);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v94 = (&v357 - ((v93 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1741C08(v401, v90, &unk_1EC649E30, &unk_1D1E91250);
  v384 = v92;
  v95 = *(v92 + 48);
  v397 = v91;
  v394 = v92 + 48;
  v393 = v95;
  v96 = v95(v90, 1, v91);
  v402 = updated;
  if (v96 == 1)
  {
    sub_1D1741A30(v90, &unk_1EC649E30, &unk_1D1E91250);
    v97 = v409;
    v98 = v426;
    v99 = v415;
    goto LABEL_40;
  }

  v100 = v94;
  sub_1D1CB2178(v90, v94, type metadata accessor for StateSnapshot);
  sub_1D1CB2110(v404, v64, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v98 = v426;
  v408 = v64;
  if (EnumCaseMultiPayload <= 3)
  {
    v99 = v415;
    if (EnumCaseMultiPayload == 1)
    {
      v127 = v404;
      v128 = v409;
      sub_1D1CA2C9C(v404, v409, v94, v88);
      sub_1D1CB2248(v94, type metadata accessor for StateSnapshot);
      if (v393(v88, 1, v397) != 1)
      {

        sub_1D1741A30(v401, &unk_1EC649E30, &unk_1D1E91250);
        sub_1D1CB2248(v127, type metadata accessor for StateSnapshot.UpdateType);
        sub_1D1CB2178(v88, v377, type metadata accessor for StateSnapshot);
        return sub_1D1CB2248(v408, type metadata accessor for StateSnapshot.UpdateType);
      }

      sub_1D1741A30(v88, &unk_1EC649E30, &unk_1D1E91250);
      v97 = v128;
      goto LABEL_39;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v102 = v404;
        sub_1D1CA519C(v404, v94, v82);
        sub_1D1CB2248(v94, type metadata accessor for StateSnapshot);
        if (v393(v82, 1, v397) == 1)
        {
          sub_1D1741A30(v82, &unk_1EC649E30, &unk_1D1E91250);
LABEL_21:
          v97 = v409;
          goto LABEL_39;
        }

        sub_1D1741A30(v401, &unk_1EC649E30, &unk_1D1E91250);
        sub_1D1CB2248(v102, type metadata accessor for StateSnapshot.UpdateType);
        v146 = v82;
        goto LABEL_159;
      }

LABEL_20:
      sub_1D1CB2248(v94, type metadata accessor for StateSnapshot);
      goto LABEL_21;
    }

    v133 = v404;
    v134 = v409;
    sub_1D1CA49F8(v404, v409, v94, v85);
    sub_1D1CB2248(v94, type metadata accessor for StateSnapshot);
    if (v393(v85, 1, v397) == 1)
    {
      sub_1D1741A30(v85, &unk_1EC649E30, &unk_1D1E91250);
      v97 = v134;
      goto LABEL_39;
    }

    sub_1D1741A30(v401, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1CB2248(v133, type metadata accessor for StateSnapshot.UpdateType);
    v146 = v85;
LABEL_159:
    sub_1D1CB2178(v146, v377, type metadata accessor for StateSnapshot);
    return sub_1D1CB2248(v408, type metadata accessor for StateSnapshot.UpdateType);
  }

  v99 = v415;
  if (EnumCaseMultiPayload != 4)
  {
    v103 = v404;
    if (EnumCaseMultiPayload != 5)
    {
      if (EnumCaseMultiPayload != 12)
      {
        goto LABEL_20;
      }

      v104 = v375;
      sub_1D1CB2110(v408, v375, type metadata accessor for StateSnapshot.UpdateType);
      v105 = *v104;
      v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20);
      v107 = v425;
      v108 = v391;
      (*(v425 + 32))(v391, &v104[*(v106 + 48)], v98);
      v97 = v409;
      v109 = [v409 uniqueIdentifier];
      v110 = v412;
      sub_1D1E66A5C();

      LOBYTE(v109) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v112 = *(v107 + 8);
      v111 = v107 + 8;
      v113 = v110;
      v114 = v112;
      (v112)(v113, v98);
      if ((v109 & 1) == 0)
      {

        (v114)(v108, v98);
        sub_1D1CB2248(v100, type metadata accessor for StateSnapshot);
        goto LABEL_39;
      }

      v370 = v114;
      v115 = v397;
      v116 = *(v100 + v397[8]);

      v117 = v405;
      v118 = sub_1D1CBCAE4(v116, v105);

      v119 = *(v100 + *(v115 + 13));

      v366 = sub_1D1CBD344(v119, v105, v118);
      v405 = v117;
      v371 = v105;

      v365 = v118;

      v120 = v414;
      v121 = v367;
      v122 = v413;
      (*(v414 + 56))(v367, 1, 1, v413);
      v381 = *v100;
      v123 = v369;
      sub_1D1741A90(v121, v369, &qword_1EC64CCB0, &qword_1D1EA2640);
      v124 = *(v120 + 48);
      v125 = v124(v123, 1, v122);
      v364 = v111;
      if (v125 == 1)
      {
        sub_1D1CB2110(v100 + *(v115 + 5), v382, type metadata accessor for StaticHome);
        v126 = v124(v123, 1, v122);

        if (v126 != 1)
        {
          sub_1D1741A30(v123, &qword_1EC64CCB0, &qword_1D1EA2640);
        }
      }

      else
      {
LABEL_155:
        sub_1D1CB2178(v123, v382, type metadata accessor for StaticHome);
      }

      v320 = *(v115 + 5);
      v369 = *(v100 + *(v115 + 6));
      v321 = v369;
      v322 = *(v100 + *(v115 + 7));
      v323 = *(v100 + v397[9]);
      v324 = v100;
      v379 = *(v100 + v397[10]);
      v325 = *(v100 + v397[11]);
      v326 = *(v100 + v397[12]);
      v327 = v397[15];
      v375 = *(v100 + v397[14]);
      v380 = *(v100 + v327);
      v328 = *(v100 + v397[16]);
      v376 = *(v100 + v397[17]);
      v329 = v368;
      *v368 = v381;
      v330 = v397[19];
      v367 = *(v324 + v397[18]);
      v381 = *(v324 + v330);
      sub_1D1CB2178(v382, v329 + v320, type metadata accessor for StaticHome);
      *(v329 + v397[6]) = v321;
      *(v329 + v397[7]) = v322;
      *(v329 + v397[8]) = v365;
      *(v329 + v397[9]) = v323;
      *(v329 + v397[10]) = v379;
      *(v329 + v397[11]) = v325;
      *(v329 + v397[12]) = v326;
      *(v329 + v397[13]) = v366;
      *(v329 + v397[14]) = v375;
      *(v329 + v397[15]) = v380;
      *(v329 + v397[16]) = v328;
      *(v329 + v397[17]) = v376;
      *(v329 + v397[18]) = v367;
      *(v329 + v397[19]) = v381;
      (*(v384 + 56))(v329, 0, 1, v397);

      (v370)(v391, v98);
      sub_1D1CB2248(v324, type metadata accessor for StateSnapshot);
      if (v393(v329, 1, v397) == 1)
      {
        sub_1D1741A30(v329, &unk_1EC649E30, &unk_1D1E91250);
        v97 = v409;
        v99 = v415;
        goto LABEL_39;
      }

      sub_1D1741A30(v401, &unk_1EC649E30, &unk_1D1E91250);
      sub_1D1CB2248(v404, type metadata accessor for StateSnapshot.UpdateType);
      v146 = v329;
      goto LABEL_159;
    }

    v135 = v381;
    sub_1D1CB2110(v408, v381, type metadata accessor for StateSnapshot.UpdateType);
    v136 = v376;
    sub_1D1CB2110(v103, v376, type metadata accessor for StateSnapshot.UpdateType);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      v137 = *(v136 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650000, &unk_1D1EA2648) + 48));
      v138 = v370;
      (*(v425 + 32))(v370, v136, v98);
      v139 = *(v94 + v397[8]);
      v97 = v409;
      if (*(v139 + 16) && (v140 = sub_1D1742188(), (v141 & 1) != 0))
      {
        v142 = *(v139 + 56) + *(v360 + 72) * v140;
        v143 = v361;
        sub_1D1CB2110(v142, v361, type metadata accessor for StaticAccessory);
        v144 = v366;
        sub_1D1741C08(v143 + *(v362 + 120), v366, &qword_1EC644760, &unk_1D1E9E530);
        sub_1D1CB2248(v143, type metadata accessor for StaticAccessory);
        if ((*(v364 + 48))(v144, 1, v365) != 1)
        {
          sub_1D1CB2178(v144, v363, type metadata accessor for StaticSoftwareUpdate);
          v331 = v358;
          (*(v425 + 56))(v358, 1, 1, v98);
          LOBYTE(v429) = v137;
          v332 = v359;
          sub_1D1D26B94(&v429, v359);
          v333 = type metadata accessor for StaticSoftwareUpdate.Kind(0);
          (*(*(v333 - 8) + 56))(v332, 0, 1, v333);
          v334 = v357;
          sub_1D1D26F90(v331, v332, v357);
          sub_1D1741A30(v332, &qword_1EC644768, &qword_1D1E75AE0);
          sub_1D1741A30(v331, &qword_1EC642590, qword_1D1E71260);
          v147 = v380;
          sub_1D1CAC7EC(v334, v100, v380);
          sub_1D1CB2248(v334, type metadata accessor for StaticSoftwareUpdate);
          sub_1D1CB2248(v363, type metadata accessor for StaticSoftwareUpdate);
          (*(v425 + 8))(v370, v98);
          v103 = v404;
          v148 = v397;
          goto LABEL_37;
        }

        (*(v425 + 8))(v370, v98);
      }

      else
      {
        (*(v425 + 8))(v138, v98);
        v144 = v366;
        (*(v364 + 56))(v366, 1, 1, v365);
      }

      v103 = v404;
      sub_1D1741A30(v144, &qword_1EC644760, &unk_1D1E9E530);
      v147 = v380;
      v148 = v397;
      (*(v384 + 56))(v380, 1, 1, v397);
    }

    else
    {
      sub_1D1CB2248(v136, type metadata accessor for StateSnapshot.UpdateType);
      v147 = v380;
      v148 = v397;
      (*(v384 + 56))(v380, 1, 1, v397);
      v97 = v409;
    }

LABEL_37:
    sub_1D1CB2248(v100, type metadata accessor for StateSnapshot);
    if (v393(v147, 1, v148) == 1)
    {
      sub_1D1741A30(v147, &unk_1EC649E30, &unk_1D1E91250);
      (*(v425 + 8))(v135, v98);
      goto LABEL_39;
    }

    sub_1D1741A30(v401, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1CB2248(v103, type metadata accessor for StateSnapshot.UpdateType);
    sub_1D1CB2178(v147, v377, type metadata accessor for StateSnapshot);
    (*(v425 + 8))(v135, v98);
    return sub_1D1CB2248(v408, type metadata accessor for StateSnapshot.UpdateType);
  }

  v129 = v379;
  sub_1D1CB2110(v408, v379, type metadata accessor for StateSnapshot.UpdateType);
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

  v131 = v371;
  v132 = v404;
  v97 = v409;
  sub_1D1CA5A08(v404, v100, v409, v371);
  sub_1D1CB2248(v100, type metadata accessor for StateSnapshot);
  if (v393(v131, 1, v397) != 1)
  {

    sub_1D1741A30(v401, &unk_1EC649E30, &unk_1D1E91250);
    sub_1D1CB2248(v132, type metadata accessor for StateSnapshot.UpdateType);
    sub_1D1CB2178(v131, v377, type metadata accessor for StateSnapshot);
    (*(v425 + 8))(v129, v98);
    return sub_1D1CB2248(v408, type metadata accessor for StateSnapshot.UpdateType);
  }

  sub_1D1741A30(v131, &unk_1EC649E30, &unk_1D1E91250);
  (*(v425 + 8))(v129, v98);
LABEL_39:
  sub_1D1CB2248(v408, type metadata accessor for StateSnapshot.UpdateType);
LABEL_40:
  v149 = sub_1D1D3798C(v97);
  v150 = v383;
  v151 = sub_1D16F8F48();
  v152 = sub_1D1CEB928(v150, v151);

  if (qword_1EE07B5D0 != -1)
  {
    goto LABEL_165;
  }

  while (1)
  {
    v153 = sub_1D1E6709C();
    __swift_project_value_buffer(v153, qword_1EE07B5D8);

    v154 = sub_1D1E6707C();
    v155 = sub_1D1E6831C();

    v156 = os_log_type_enabled(v154, v155);
    v157 = v152;
    v408 = v152;
    v371 = v149;
    if (v156)
    {
      v158 = swift_slowAlloc();
      v391 = swift_slowAlloc();
      v429 = v391;
      *v158 = 136315138;
      v159 = *(v152 + 16);
      v160 = MEMORY[0x1E69E7CC0];
      if (v159)
      {
        v381 = v158;
        LODWORD(v382) = v155;
        v384 = v154;
        v428 = MEMORY[0x1E69E7CC0];
        sub_1D178CD24(0, v159, 0);
        v160 = v428;
        v161 = v152 + ((*(v414 + 80) + 32) & ~*(v414 + 80));
        v162 = *(v414 + 72);
        v163 = v413;
        do
        {
          sub_1D1CB2110(v161, v28, type metadata accessor for StaticHome);
          v164 = (v28 + *(v163 + 20));
          v165 = *v164;
          v166 = v164[1];

          sub_1D1CB2248(v28, type metadata accessor for StaticHome);
          v428 = v160;
          v168 = *(v160 + 2);
          v167 = *(v160 + 3);
          if (v168 >= v167 >> 1)
          {
            sub_1D178CD24((v167 > 1), v168 + 1, 1);
            v163 = v413;
            v160 = v428;
          }

          *(v160 + 2) = v168 + 1;
          v169 = &v160[16 * v168];
          *(v169 + 4) = v165;
          *(v169 + 5) = v166;
          v161 += v162;
          --v159;
        }

        while (v159);
        v98 = v426;
        v99 = v415;
        v154 = v384;
        LOBYTE(v155) = v382;
        v158 = v381;
      }

      v428 = v160;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
      sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640, MEMORY[0x1E69E6310]);
      v170 = sub_1D1E6770C();
      v172 = v171;

      v173 = sub_1D1B1312C(v170, v172, &v429);

      *(v158 + 4) = v173;
      _os_log_impl(&dword_1D16EC000, v154, v155, "Homes found: [%s]", v158, 0xCu);
      v174 = v391;
      __swift_destroy_boxed_opaque_existential_1(v391);
      MEMORY[0x1D3893640](v174, -1, -1);
      MEMORY[0x1D3893640](v158, -1, -1);

      v157 = v408;
    }

    else
    {
    }

    v175 = v414;
    v28 = v412;
    v176 = *(v157 + 16);
    if (v176)
    {
      v149 = 0;
      v152 = v425 + 8;
      while (v149 < *(v157 + 16))
      {
        sub_1D1CB2110(v157 + ((*(v175 + 80) + 32) & ~*(v175 + 80)) + *(v175 + 72) * v149, v99, type metadata accessor for StaticHome);
        v177 = [v409 uniqueIdentifier];
        sub_1D1E66A5C();

        LOBYTE(v177) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
        (*v152)(v28, v98);
        if (v177)
        {
          v183 = v398;
          sub_1D1CB2178(v99, v398, type metadata accessor for StaticHome);
          v179 = v413;
          (*(v175 + 56))(v183, 0, 1, v413);
          sub_1D1CB2178(v183, v403, type metadata accessor for StaticHome);
          v180 = v409;
          goto LABEL_58;
        }

        ++v149;
        sub_1D1CB2248(v99, type metadata accessor for StaticHome);
        v157 = v408;
        if (v176 == v149)
        {
          goto LABEL_55;
        }
      }

      __break(1u);
      goto LABEL_163;
    }

LABEL_55:
    v178 = v398;
    v179 = v413;
    (*(v175 + 56))(v398, 1, 1, v413);
    v180 = v409;
    v181 = v409;
    v182 = v383;
    sub_1D1CEBBBC(v181, v182, v403);
    if ((*(v175 + 48))(v178, 1, v179) != 1)
    {
      sub_1D1741A30(v178, &qword_1EC64CCB0, &qword_1D1EA2640);
    }

LABEL_58:
    v370 = sub_1D1D41A94(v180);
    v99 = *(v179 + 44);
    v184 = v403;
    v185 = *(v403 + v99);
    v186 = [v180 accessories];
    v414 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v187 = sub_1D1E67C1C();

    v188 = sub_1D18D5D90(MEMORY[0x1E69E7CC0]);
    v189 = MEMORY[0x1EEE9AC00](v188);
    v190 = v401;
    v191 = v404;
    *(&v357 - 6) = v401;
    *(&v357 - 5) = v191;
    *(&v357 - 4) = v180;
    *(&v357 - 24) = v185;
    *(&v357 - 2) = v399;
    v149 = v405;
    v192 = sub_1D1C924D0(v189, sub_1D1CBD74C, (&v357 - 8), v187);

    LOBYTE(v429) = *(v184 + v99);
    v398 = v192;
    v391 = sub_1D1C4CFD8(v180, &v429, v192);
    v193 = [v180 uniqueIdentifier];
    sub_1D1E66A5C();

    v194 = v396;
    (*(v395 + 56))(v396, 1, 1, v402);
    v195 = sub_1D1CBDB94(v190, v28, v194);
    sub_1D1741A30(v194, &qword_1EC6437E0, &unk_1D1E96B80);
    v196 = v426;
    (*(v425 + 8))(v28, v426);
    v415 = v99;
    LOBYTE(v429) = *(v184 + v99);
    v197 = v390;
    sub_1D1741C08(v190, v390, &unk_1EC649E30, &unk_1D1E91250);
    v198 = v397;
    if (v393(v197, 1, v397) == 1)
    {
      sub_1D1741A30(v197, &unk_1EC649E30, &unk_1D1E91250);
      v199 = sub_1D18D61C8(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v199 = *(v197 + v198[18]);

      sub_1D1CB2248(v197, type metadata accessor for StateSnapshot);
    }

    v200 = v409;
    v201 = sub_1D1BC6D18(v409, &v429, v398, v199, v195);

    v202 = v403;
    v203 = v415;
    LOBYTE(v429) = *(v415 + v403);
    v390 = sub_1D1B7DCCC(v200, &v429, v201);
    v204 = *(v203 + v202);
    v205 = [v200 mediaSystems];
    sub_1D1741B10(0, qword_1EE079CF8, 0x1E696CBF8);
    v206 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v207);
    *(&v357 - 6) = v404;
    *(&v357 - 5) = v200;
    *(&v357 - 32) = v204;
    v396 = v201;
    v208 = v399;
    *(&v357 - 3) = v201;
    *(&v357 - 2) = v208;
    v209 = sub_1D1787364(sub_1D1CBDF48, (&v357 - 8), v206);

    v28 = *(v209 + 2);
    if (v28)
    {
      v413 = v149;
      v429 = MEMORY[0x1E69E7CC0];
      sub_1D178D318(0, v28, 0);
      v210 = v429;
      v211 = *(type metadata accessor for StaticMediaSystem(0) - 8);
      v212 = (*(v211 + 80) + 32) & ~*(v211 + 80);
      v412 = v209;
      v213 = &v209[v212];
      v214 = *(v211 + 72);
      v215 = (v425 + 16);
      v99 = &qword_1D1E71EC0;
      v216 = v389;
      do
      {
        v217 = *(v422 + 48);
        sub_1D1CB2110(v213, v216 + v217, type metadata accessor for StaticMediaSystem);
        (*v215)(v216, v216 + v217, v196);
        v429 = v210;
        v219 = *(v210 + 16);
        v218 = *(v210 + 24);
        if (v219 >= v218 >> 1)
        {
          sub_1D178D318((v218 > 1), v219 + 1, 1);
          v210 = v429;
        }

        *(v210 + 16) = v219 + 1;
        sub_1D1741A90(v216, v210 + ((*(v421 + 80) + 32) & ~*(v421 + 80)) + *(v421 + 72) * v219, &qword_1EC643768, &qword_1D1E71EC0);
        v213 += v214;
        --v28;
        v196 = v426;
      }

      while (v28);

      v149 = v413;
      if (!*(v210 + 16))
      {
LABEL_69:
        v220 = MEMORY[0x1E69E7CC8];
        goto LABEL_70;
      }
    }

    else
    {

      v210 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_69;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B00, &unk_1D1E7BBF0);
    v220 = sub_1D1E68BCC();
LABEL_70:
    v429 = v220;
    sub_1D1CBDF6C(v210, 1, &v429);
    if (v149)
    {
      goto LABEL_185;
    }

    v389 = v429;
    v221 = *(v415 + v403);
    v115 = v409;
    v222 = [v409 accessories];
    v223 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v224);
    v225 = v396;
    *(&v357 - 6) = v404;
    *(&v357 - 5) = v225;
    *(&v357 - 4) = v115;
    *(&v357 - 24) = v221;
    *(&v357 - 2) = v399;
    v226 = sub_1D17876AC(sub_1D1CBE370, (&v357 - 8), v223);

    v227 = v226[2];
    if (v227)
    {
      v422 = 0;
      v429 = MEMORY[0x1E69E7CC0];
      sub_1D178D358(0, v227, 0);
      v228 = v429;
      v229 = *(type metadata accessor for StaticMediaProfile(0) - 8);
      v230 = *(v229 + 80);
      v421 = v226;
      v231 = v226 + ((v230 + 32) & ~v230);
      v232 = *(v229 + 72);
      v115 = (v425 + 16);
      v99 = &unk_1D1E7E6B0;
      v233 = v388;
      do
      {
        v234 = v424[12];
        sub_1D1CB2110(v231, v233 + v234, type metadata accessor for StaticMediaProfile);
        (*v115)(v233, v233 + v234, v426);
        v429 = v228;
        v28 = *(v228 + 16);
        v235 = *(v228 + 24);
        if (v28 >= v235 >> 1)
        {
          sub_1D178D358((v235 > 1), v28 + 1, 1);
          v228 = v429;
        }

        *(v228 + 16) = v28 + 1;
        sub_1D1741A90(v233, v228 + ((*(v423 + 80) + 32) & ~*(v423 + 80)) + *(v423 + 72) * v28, &qword_1EC643750, &unk_1D1E7E6B0);
        v231 += v232;
        --v227;
      }

      while (v227);

      v149 = v422;
    }

    else
    {

      v228 = MEMORY[0x1E69E7CC0];
    }

    v236 = v400;
    if (*(v228 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AF8, &unk_1D1E6E840);
      v237 = sub_1D1E68BCC();
    }

    else
    {
      v237 = MEMORY[0x1E69E7CC8];
    }

    v238 = v399;
    v429 = v237;
    sub_1D1CBE398(v228, 1, &v429);
    if (v149)
    {
      goto LABEL_185;
    }

    v395 = v429;
    sub_1D1741C08(v401, v236, &unk_1EC649E30, &unk_1D1E91250);
    v239 = v397;
    if (v393(v236, 1, v397) == 1)
    {
      sub_1D1741A30(v236, &unk_1EC649E30, &unk_1D1E91250);
      v98 = 0;
    }

    else
    {
      v98 = *(v236 + v239[9]);

      sub_1D1CB2248(v236, type metadata accessor for StateSnapshot);
    }

    if ((sub_1D1CC8FBC(v238) & 1) == 0)
    {

      v388 = sub_1D18D50D4(MEMORY[0x1E69E7CC0]);
      goto LABEL_99;
    }

    v240 = v238;
    v241 = v409;
    v242 = [v409 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v243 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v244);
    v245 = v404;
    *(&v357 - 6) = v240;
    *(&v357 - 5) = v245;
    v246 = v398;
    *(&v357 - 4) = v98;
    *(&v357 - 3) = v246;
    *(&v357 - 2) = v395;
    *(&v357 - 1) = v241;
    v247 = sub_1D178701C(sub_1D1CBE7B8, (&v357 - 8), v243);

    v248 = v247[2];
    if (v248)
    {
      v423 = 0;
      v424 = v98;
      v429 = MEMORY[0x1E69E7CC0];
      sub_1D178D0D4(0, v248, 0);
      v115 = v429;
      v249 = *(type metadata accessor for StaticActionSet(0) - 8);
      v250 = *(v249 + 80);
      v422 = v247;
      v28 = v247 + ((v250 + 32) & ~v250);
      v251 = *(v249 + 72);
      v252 = (v425 + 16);
      v253 = v385;
      do
      {
        v254 = *(v420 + 48);
        sub_1D1CB2110(v28, v253 + v254, type metadata accessor for StaticActionSet);
        (*v252)(v253, v253 + v254, v426);
        v429 = v115;
        v99 = v115[2];
        v255 = v115[3];
        if (v99 >= v255 >> 1)
        {
          sub_1D178D0D4((v255 > 1), v99 + 1, 1);
          v115 = v429;
        }

        v115[2] = (v99 + 1);
        sub_1D1741A90(v253, v115 + ((*(v416 + 80) + 32) & ~*(v416 + 80)) + v416[9] * v99, &qword_1EC643710, &unk_1D1EA2630);
        v28 += v251;
        --v248;
      }

      while (v248);

      v149 = v423;
      v98 = v424;
      if (!v115[2])
      {
LABEL_96:
        v256 = MEMORY[0x1E69E7CC8];
        goto LABEL_97;
      }
    }

    else
    {

      v115 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
        goto LABEL_96;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B08, &unk_1D1E6E850);
    v256 = sub_1D1E68BCC();
LABEL_97:
    v429 = v256;
    sub_1D1CB961C(v115, 1, &v429);
    if (v149)
    {
      goto LABEL_185;
    }

    v388 = v429;
LABEL_99:
    v100 = &selRef_addZoneWithName_completionHandler_;
    v152 = v409;
    v257 = [v409 rooms];
    v258 = sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
    v259 = sub_1D1E67C1C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E73FA0;
    *(inited + 32) = [v152 roomForEntireHome];
    v429 = v259;
    sub_1D17A3D24(inited);
    v384 = v429;
    if (v429 >> 62)
    {
      break;
    }

    v261 = *((v429 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v261)
    {
      goto LABEL_167;
    }

LABEL_101:
    v429 = MEMORY[0x1E69E7CC0];
    sub_1D178D1D4(0, v261 & ~(v261 >> 63), 0);
    if (v261 < 0)
    {
      __break(1u);
LABEL_185:

      __break(1u);
      return result;
    }

    v405 = v429;
    v381 = sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
    v262 = 0;
    v380 = "showPredictedScenesOnDashboard";
    v379 = "erStrings_roomActionSets";
    v385 = (v384 & 0xC000000000000001);
    v376 = v384 & 0xFFFFFFFFFFFFFF8;
    v375 = (v384 + 32);
    v424 = (v425 + 32);
    v414 = v258;
    v382 = v261;
    while (!__OFADD__(v262, 1))
    {
      v400 = v262 + 1;
      if (v385)
      {
        v263 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        if (v262 >= *(v376 + 16))
        {
          goto LABEL_164;
        }

        v263 = *&v375[8 * v262];
      }

      v98 = v263;
      v264 = [v409 zones];
      sub_1D1741B10(0, &qword_1EE07B268, 0x1E696CCC8);
      v265 = sub_1D1E67C1C();

      if (v265 >> 62)
      {
        v28 = sub_1D1E6873C();
      }

      else
      {
        v28 = *((v265 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v402 = v265;
      if (v28)
      {
        v266 = 0;
        v421 = v265 & 0xFFFFFFFFFFFFFF8;
        v422 = v265 & 0xC000000000000001;
        v420 = v265 + 32;
        v123 = MEMORY[0x1E69E7CC0];
        v413 = v28;
        v412 = v98;
        while (1)
        {
          if (v422)
          {
            v267 = MEMORY[0x1D3891EF0](v266, v402);
            v268 = __OFADD__(v266, 1);
            v269 = v266 + 1;
            if (v268)
            {
              goto LABEL_153;
            }
          }

          else
          {
            if (v266 >= *(v421 + 16))
            {
              goto LABEL_154;
            }

            v267 = *(v420 + 8 * v266);
            v268 = __OFADD__(v266, 1);
            v269 = v266 + 1;
            if (v268)
            {
LABEL_153:
              __break(1u);
LABEL_154:
              __break(1u);
              goto LABEL_155;
            }
          }

          v423 = v269;
          v115 = v267;
          v270 = [v267 v100[6]];
          v271 = sub_1D1E67C1C();

          v428 = v98;
          MEMORY[0x1EEE9AC00](v272);
          *(&v357 - 2) = &v428;
          LOBYTE(v270) = sub_1D18B8754(sub_1D1CBE79C, (&v357 - 4), v271);

          if (v270)
          {
            v415 = v123;
            v416 = v149;
            v273 = [v115 uniqueIdentifier];
            v274 = v418;
            sub_1D1E66A5C();

            v275 = [v115 name];
            v276 = sub_1D1E6781C();
            v278 = v277;

            v279 = &v274[*(v419 + 20)];
            *v279 = v276;
            v279[1] = v278;
            v149 = v115;
            v280 = [v115 v100[6]];
            v281 = sub_1D1E67C1C();

            if (v281 >> 62)
            {
              v282 = sub_1D1E6873C();
              if (v282)
              {
LABEL_120:
                v283 = 0;
                v115 = (v281 & 0xC000000000000001);
                v284 = MEMORY[0x1E69E7CC0];
                while (1)
                {
                  if (v115)
                  {
                    v285 = MEMORY[0x1D3891EF0](v283, v281);
                  }

                  else
                  {
                    if (v283 >= *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10))
                    {
                      goto LABEL_149;
                    }

                    v285 = *(v281 + 8 * v283 + 32);
                  }

                  v286 = v285;
                  v287 = v283 + 1;
                  if (__OFADD__(v283, 1))
                  {
                    break;
                  }

                  v288 = [v285 uniqueIdentifier];
                  sub_1D1E66A5C();

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v284 = sub_1D177D0AC(0, v284[2] + 1, 1, v284);
                  }

                  v290 = v284[2];
                  v289 = v284[3];
                  if (v290 >= v289 >> 1)
                  {
                    v284 = sub_1D177D0AC((v289 > 1), v290 + 1, 1, v284);
                  }

                  v284[2] = v290 + 1;
                  (*(v425 + 32))(v284 + ((*(v425 + 80) + 32) & ~*(v425 + 80)) + *(v425 + 72) * v290, v427, v426);
                  ++v283;
                  if (v287 == v282)
                  {
                    goto LABEL_137;
                  }
                }

                __break(1u);
LABEL_149:
                __break(1u);
                goto LABEL_150;
              }
            }

            else
            {
              v282 = *((v281 & 0xFFFFFFFFFFFFFF8) + 0x10);
              if (v282)
              {
                goto LABEL_120;
              }
            }

            v284 = MEMORY[0x1E69E7CC0];
LABEL_137:

            v291 = v418;
            *&v418[*(v419 + 24)] = v284;
            v292 = v410;
            sub_1D1CB2178(v291, v410, type metadata accessor for StaticZone);
            sub_1D1CB2178(v292, v417, type metadata accessor for StaticZone);
            v123 = v415;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v123 = sub_1D177D7A4(0, *(v123 + 2) + 1, 1, v123);
            }

            v100 = &selRef_addZoneWithName_completionHandler_;
            v98 = v412;
            v28 = v413;
            v294 = *(v123 + 2);
            v293 = *(v123 + 3);
            v149 = v416;
            if (v294 >= v293 >> 1)
            {
              v123 = sub_1D177D7A4((v293 > 1), v294 + 1, 1, v123);
            }

            *(v123 + 2) = v294 + 1;
            sub_1D1CB2178(v417, v123 + ((*(v411 + 80) + 32) & ~*(v411 + 80)) + *(v411 + 72) * v294, type metadata accessor for StaticZone);
          }

          else
          {
          }

          v266 = v423;
          if (v423 == v28)
          {
            goto LABEL_143;
          }
        }
      }

      v123 = MEMORY[0x1E69E7CC0];
LABEL_143:

      v423 = sub_1D17843EC(v123);

      v295 = v98;
      v422 = sub_1D1CBAA28(v396, v295, sub_1D1CB9E24, sub_1D1CB9E24);

      v296 = v295;
      v421 = sub_1D1CBAA28(v388, v296, sub_1D1CBA338, sub_1D1CBA338);

      v297 = v296;
      v420 = sub_1D1CBAA28(v390, v297, sub_1D1CBABEC, sub_1D1CBABEC);

      v298 = v297;
      v416 = sub_1D1CBAA28(v389, v298, sub_1D1CBB2DC, sub_1D1CBB2DC);

      v299 = v298;
      v415 = sub_1D1CBAA28(v395, v299, sub_1D1CBB7F0, sub_1D1CBB7F0);

      v300 = v299;
      v413 = sub_1D1CBAA28(v391, v300, sub_1D1CBBD04, sub_1D1CBBD04);

      v98 = v300;
      v412 = sub_1D1CBAA28(v398, v98, sub_1D1CBC3F4, sub_1D1CBC3F4);

      v301 = [v98 uniqueIdentifier];
      v302 = v387;
      sub_1D1E66A5C();

      v303 = [v98 name];
      v402 = sub_1D1E6781C();
      v28 = v304;

      v99 = v386;
      sub_1D18B1B7C(v302 + *(v386 + 24));
      v115 = v409;
      v305 = [v409 roomForEntireHome];
      LOBYTE(v298) = sub_1D1E684FC();

      v306 = [v115 uniqueIdentifier];
      sub_1D1E66A5C();

      v307 = sub_1D18AF4CC();
      v308 = sub_1D18AF4CC();
      v309 = sub_1D18B13F4();

      v310 = (v302 + *(v99 + 20));
      *v310 = v402;
      v310[1] = v28;
      *(v302 + *(v99 + 28)) = v298 & 1;
      v311 = v422;
      *(v302 + *(v99 + 32)) = v423;
      *(v302 + *(v99 + 40)) = v311;
      v312 = v420;
      *(v302 + *(v99 + 44)) = v421;
      *(v302 + *(v99 + 48)) = v312;
      v313 = v415;
      *(v302 + *(v99 + 52)) = v416;
      *(v302 + *(v99 + 56)) = v313;
      *(v302 + *(v99 + 60)) = v413;
      *(v302 + *(v99 + 64)) = v412;
      *(v302 + *(v99 + 68)) = v307;
      *(v302 + *(v99 + 72)) = v308;
      *(v302 + *(v99 + 76)) = v309;
      v314 = v405;
      v429 = v405;
      v152 = *(v405 + 16);
      v315 = *(v405 + 24);
      if (v152 >= v315 >> 1)
      {
        sub_1D178D1D4((v315 > 1), v152 + 1, 1);
        v302 = v387;
        v314 = v429;
      }

      *(v314 + 16) = v152 + 1;
      v316 = (*(v392 + 80) + 32) & ~*(v392 + 80);
      v405 = v314;
      sub_1D1CB2178(v302, v314 + v316 + *(v392 + 72) * v152, type metadata accessor for StaticRoom);
      v262 = v400;
      v100 = &selRef_addZoneWithName_completionHandler_;
      if (v400 == v382)
      {
LABEL_150:

        v317 = v405;
        v318 = *(v405 + 16);
        if (v318)
        {
          goto LABEL_168;
        }

        goto LABEL_151;
      }
    }

LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    swift_once();
  }

  v261 = sub_1D1E6873C();
  if (v261)
  {
    goto LABEL_101;
  }

LABEL_167:

  v317 = MEMORY[0x1E69E7CC0];
  v318 = *(MEMORY[0x1E69E7CC0] + 16);
  if (v318)
  {
LABEL_168:
    v429 = MEMORY[0x1E69E7CC0];
    v335 = v317;
    sub_1D178D194(0, v318, 0);
    v319 = v429;
    v336 = (*(v392 + 80) + 32) & ~*(v392 + 80);
    v405 = v335;
    v337 = v335 + v336;
    v338 = *(v392 + 72);
    v339 = (v425 + 16);
    v340 = v372;
    do
    {
      v341 = *(v407 + 48);
      sub_1D1CB2110(v337, v340 + v341, type metadata accessor for StaticRoom);
      (*v339)(v340, v340 + v341, v426);
      v429 = v319;
      v343 = *(v319 + 16);
      v342 = *(v319 + 24);
      if (v343 >= v342 >> 1)
      {
        sub_1D178D194((v342 > 1), v343 + 1, 1);
        v340 = v372;
        v319 = v429;
      }

      *(v319 + 16) = v343 + 1;
      sub_1D1741A90(v340, v319 + ((*(v406 + 80) + 32) & ~*(v406 + 80)) + *(v406 + 72) * v343, &qword_1EC643740, &qword_1D1E71E98);
      v337 += v338;
      --v318;
    }

    while (v318);
  }

  else
  {
LABEL_151:

    v319 = MEMORY[0x1E69E7CC0];
  }

  v344 = v374;
  if (*(v319 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B18, &qword_1D1E6E860);
    v345 = sub_1D1E68BCC();
  }

  else
  {
    v345 = MEMORY[0x1E69E7CC8];
  }

  v346 = v373;
  v429 = v345;
  sub_1D1CB9A20(v319, 1, &v429);
  if (v149)
  {
    goto LABEL_185;
  }

  v347 = v429;
  v348 = sub_1D1CFD39C(v409);
  sub_1D1CB2110(v403, v378, type metadata accessor for StaticHome);
  sub_1D1741C08(v401, v346, &unk_1EC649E30, &unk_1D1E91250);
  v349 = v397;
  if (v393(v346, 1, v397) == 1)
  {
    sub_1D1741A30(v346, &unk_1EC649E30, &unk_1D1E91250);
    v350 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v350 = *(v346 + v349[17]);

    sub_1D1CB2248(v346, type metadata accessor for StateSnapshot);
  }

  sub_1D1741C08(v401, v344, &unk_1EC649E30, &unk_1D1E91250);
  if (v393(v344, 1, v349) == 1)
  {
    sub_1D1741A30(v344, &unk_1EC649E30, &unk_1D1E91250);
    v351 = v349;
    v352 = sub_1D18D61C8(MEMORY[0x1E69E7CC0]);
    v353 = v409;
    v354 = &v415;
  }

  else
  {
    v351 = v349;
    v352 = *(v344 + v349[18]);

    sub_1D1CB2248(v344, type metadata accessor for StateSnapshot);
    v353 = v383;
    v354 = &v430;
  }

  v355 = *(v354 - 32);

  sub_1D1CB2248(v403, type metadata accessor for StaticHome);
  sub_1D1741A30(v401, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1CB2248(v404, type metadata accessor for StateSnapshot.UpdateType);
  v356 = v377;
  *v377 = v399;
  result = sub_1D1CB2178(v378, v356 + v351[5], type metadata accessor for StaticHome);
  *(v356 + v351[6]) = v408;
  *(v356 + v351[7]) = v370;
  *(v356 + v351[8]) = v396;
  *(v356 + v351[9]) = v388;
  *(v356 + v351[10]) = v390;
  *(v356 + v351[11]) = v389;
  *(v356 + v351[12]) = v395;
  *(v356 + v351[13]) = v347;
  *(v356 + v351[14]) = v391;
  *(v356 + v351[15]) = v398;
  *(v356 + v351[16]) = v371;
  *(v356 + v351[17]) = v350;
  *(v356 + v351[18]) = v352;
  *(v356 + v351[19]) = v348;
  return result;
}

uint64_t StateSnapshot.CharacteristicUpdateType.ValueType.init(value:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D1741C08(a1, &v11, &qword_1EC649700, &qword_1D1E6E910);
  if (!*(&v12 + 1))
  {
    sub_1D1741A30(&v11, &qword_1EC649700, &qword_1D1E6E910);
LABEL_5:
    sub_1D1741C08(a1, &v11, &qword_1EC649700, &qword_1D1E6E910);
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        v4 = v9;
        result = sub_1D1741A30(a1, &qword_1EC649700, &qword_1D1E6E910);
        v6 = 0;
        v7 = 1;
        goto LABEL_27;
      }
    }

    else
    {
      sub_1D1741A30(&v11, &qword_1EC649700, &qword_1D1E6E910);
    }

    sub_1D1741C08(a1, &v11, &qword_1EC649700, &qword_1D1E6E910);
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        v4 = v9;
LABEL_16:
        result = sub_1D1741A30(a1, &qword_1EC649700, &qword_1D1E6E910);
        v6 = 0;
        v7 = 2;
        goto LABEL_27;
      }
    }

    else
    {
      sub_1D1741A30(&v11, &qword_1EC649700, &qword_1D1E6E910);
    }

    sub_1D1741C08(a1, &v11, &qword_1EC649700, &qword_1D1E6E910);
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        v4 = v9;
        goto LABEL_16;
      }
    }

    else
    {
      sub_1D1741A30(&v11, &qword_1EC649700, &qword_1D1E6E910);
    }

    sub_1D1741C08(a1, &v11, &qword_1EC649700, &qword_1D1E6E910);
    if (*(&v12 + 1))
    {
      if (swift_dynamicCast())
      {
        v4 = v9;
        v6 = v10;
        result = sub_1D1741A30(a1, &qword_1EC649700, &qword_1D1E6E910);
        v7 = 3;
        goto LABEL_27;
      }
    }

    else
    {
      sub_1D1741A30(&v11, &qword_1EC649700, &qword_1D1E6E910);
    }

    v8 = a1[1];
    v11 = *a1;
    v12 = v8;
    if (*(&v8 + 1))
    {
      result = swift_dynamicCast();
      if (result)
      {
        v4 = v9;
        v6 = v10;
        v7 = 4;
        goto LABEL_27;
      }
    }

    else
    {
      result = sub_1D1741A30(&v11, &qword_1EC649700, &qword_1D1E6E910);
    }

    v4 = 0;
    v6 = 0;
    v7 = 5;
    goto LABEL_27;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_5;
  }

  v4 = v9;
  result = sub_1D1741A30(a1, &qword_1EC649700, &qword_1D1E6E910);
  v6 = 0;
  v7 = 0;
LABEL_27:
  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  return result;
}

const char *StateSnapshot.UpdateType.metricsID.getter()
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v3 = &v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(v0, v3, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = "StateSnapshot.unknownHome";
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v6 = *v3;
      v7 = *(v3 + 1);
      v8 = v3[16];
      if (v8 <= 1)
      {
        if (v3[16])
        {
          sub_1D1AC373C(v6, v7, 1u);
          result = "StateSnapshot.characteristics.loadingStates";
        }

        else
        {
          sub_1D1AC373C(v6, v7, 0);
          result = "StateSnapshot.characteristics.refresh";
        }
      }

      else if (v8 == 2)
      {
        sub_1D1AC373C(v6, v7, 2u);
        result = "StateSnapshot.characteristics.overrideValues";
      }

      else if (v8 == 3)
      {
        sub_1D1AC373C(v6, v7, 3u);
        result = "StateSnapshot.characteristics.localOverrideValues";
      }

      else
      {
        sub_1D1AC373C(v6, v7, 4u);
        result = "StateSnapshot.characteristics.statelessValues";
      }

      break;
    case 2:
      sub_1D1CB2248(v3, type metadata accessor for StateSnapshot.UpdateType);
      result = "StateSnapshot.actionSets";
      break;
    case 3:
      sub_1D1CB2248(v3, type metadata accessor for StateSnapshot.UpdateType);
      result = "StateSnapshot.userActionPredictions";
      break;
    case 4:
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);

      v11 = sub_1D1E66A7C();
      (*(*(v11 - 8) + 8))(v3, v11);
      result = "StateSnapshot.softwareUpdate";
      break;
    case 5:
      v14 = sub_1D1E66A7C();
      (*(*(v14 - 8) + 8))(v3, v14);
      result = "StateSnapshot.softwareUpdateOverride";
      break;
    case 6:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);

      v9 = sub_1D1E66A7C();
      (*(*(v9 - 8) + 8))(v3, v9);
      result = "StateSnapshot.profiles";
      break;
    case 7:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080);

      v16 = sub_1D1E66A7C();
      (*(*(v16 - 8) + 8))(v3, v16);
      result = "StateSnapshot.lightProfile";
      break;
    case 8:
      result = "StateSnapshot.snapshotStream";
      break;
    case 9:

      v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
      sub_1D1CB2248(&v3[*(v15 + 48)], type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      result = "StateSnapshot.adaptiveTemperatureSetting";
      break;
    case 10:
      sub_1D1CB2248(v3, type metadata accessor for StateSnapshot.UpdateType);
      result = "StateSnapshot.adaptiveTemperatureSleepSchedule";
      break;
    case 11:
      sub_1D1CB2248(v3, type metadata accessor for StateSnapshot.UpdateType);
      result = "StateSnapshot.cleanEnergySetting";
      break;
    case 12:

      v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
      v13 = sub_1D1E66A7C();
      (*(*(v13 - 8) + 8))(&v3[v12], v13);
      result = "StateSnapshot.matterDevices";
      break;
    case 13:
      return result;
    default:
      sub_1D1CB2248(v3, type metadata accessor for StateSnapshot.UpdateType);
      result = "StateSnapshot.all";
      break;
  }

  return result;
}

uint64_t StateSnapshot.staticAccessories.getter()
{
  type metadata accessor for StateSnapshot(0);

  return sub_1D1781AF4(v0);
}

uint64_t StateSnapshot.staticServiceGroups.getter()
{
  type metadata accessor for StateSnapshot(0);

  return sub_1D17821C0(v0);
}

uint64_t StateSnapshot.staticServices.getter()
{
  type metadata accessor for StateSnapshot(0);

  return sub_1D1781D38(v0);
}

void *StateSnapshot.staticCameraProfilesInOrder.getter()
{
  v1 = type metadata accessor for StaticHome(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StateSnapshot(0);

  v7 = sub_1D1781428(v6);
  sub_1D1CB2110(v0 + *(v5 + 20), v4, type metadata accessor for StaticHome);
  v8 = *&v4[*(v2 + 72)];

  sub_1D1CB2248(v4, type metadata accessor for StaticHome);
  v9 = v7[2];
  if (!v9)
  {

    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_5;
  }

  v10 = sub_1D18042F0(v7[2], 0);
  v11 = *(type metadata accessor for StaticCameraProfile(0) - 8);
  v12 = sub_1D1804998(&v16, v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v9, v7);
  v13 = v16;
  swift_bridgeObjectRetain_n();

  sub_1D1716918(v13);
  if (v12 == v9)
  {

LABEL_5:
    v16 = v10;
    sub_1D1CB94F8(&v16, v8);

    swift_bridgeObjectRelease_n();
    return v16;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t StateSnapshot.staticMediaSystems.getter()
{
  type metadata accessor for StateSnapshot(0);

  return sub_1D17818B0(v0);
}

uint64_t StateSnapshot.staticMediaProfiles.getter()
{
  type metadata accessor for StateSnapshot(0);

  return sub_1D178166C(v0);
}

double StateSnapshot.staticHomesInOrder.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticZonesDictionary.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticAccessoriesDictionary.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticActionSetsDictionary.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticCameraProfilesDictionary.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticMediaSystemsDictionary.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticMediaProfilesDictionary.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticRoomsDictionary.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticServiceGroupsDictionary.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticServicesDictionary.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticUsersDictionary.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticUserActionPredictions.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticHH2UpdatesDictionary.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

double StateSnapshot.staticResidentDictionary.getter()
{
  type metadata accessor for StateSnapshot(0);

  return result;
}

unint64_t sub_1D1C98808(char a1)
{
  result = 0x6567617265766F63;
  switch(a1)
  {
    case 1:
      result = 0x6F48636974617473;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 5:
    case 14:
      result = 0xD00000000000001ALL;
      break;
    case 6:
      result = 0xD00000000000001ELL;
      break;
    case 7:
      result = 0xD00000000000001CLL;
      break;
    case 8:
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 11:
    case 15:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1C989C0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1CC0044(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1C989F4(uint64_t a1)
{
  v2 = sub_1D1CBE7D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1C98A30(uint64_t a1)
{
  v2 = sub_1D1CBE7D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StateSnapshot.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCB8, &qword_1D1EA2658);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CBE7D0();
  sub_1D1E6930C();
  v12 = *v3;
  HIBYTE(v11) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCC8, &qword_1D1EA2660);
  sub_1D1CBF160(&qword_1EC64CCD0, sub_1D1CBE824, MEMORY[0x1E69E64F0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StateSnapshot(0);
    LOBYTE(v12) = 1;
    type metadata accessor for StaticHome(0);
    sub_1D1CB21E0(&qword_1EC64CCE0, type metadata accessor for StaticHome, &protocol conformance descriptor for StaticHome);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[6]);
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCE8, &qword_1D1EA2668);
    sub_1D1CBF22C(&qword_1EC64CCF0, &qword_1EC64CCE0, &protocol conformance descriptor for StaticHome, MEMORY[0x1E69E6300]);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCF8, &unk_1D1EA2670);
    sub_1D1CBE878();
    sub_1D1E68F1C();
    v12 = *(v3 + v9[8]);
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B958, &unk_1D1E9B0D0);
    sub_1D1B86AB4();
    sub_1D1E68F1C();
    v12 = *(v3 + v9[9]);
    HIBYTE(v11) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD10, &qword_1D1EA2680);
    sub_1D1CBE964();
    sub_1D1E68F1C();
    v12 = *(v3 + v9[10]);
    HIBYTE(v11) = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD20, &qword_1D1EA2688);
    sub_1D1CBEA50();
    sub_1D1E68F1C();
    v12 = *(v3 + v9[11]);
    HIBYTE(v11) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD30, &qword_1D1EA2690);
    sub_1D1CBEB3C();
    sub_1D1E68F1C();
    v12 = *(v3 + v9[12]);
    HIBYTE(v11) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD40, &qword_1D1EA2698);
    sub_1D1CBEC28();
    sub_1D1E68F1C();
    v12 = *(v3 + v9[13]);
    HIBYTE(v11) = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD50, &qword_1D1EA26A0);
    sub_1D1CBED14();
    sub_1D1E68F1C();
    v12 = *(v3 + v9[14]);
    HIBYTE(v11) = 10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B968, &unk_1D1E9B0E0);
    sub_1D1B86BA0();
    sub_1D1E68F1C();
    v12 = *(v3 + v9[15]);
    HIBYTE(v11) = 11;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
    sub_1D1B43D98();
    sub_1D1E68F1C();
    v12 = *(v3 + v9[16]);
    HIBYTE(v11) = 12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD60, &qword_1D1EA26A8);
    sub_1D1CBEE00();
    sub_1D1E68F1C();
    v12 = *(v3 + v9[17]);
    HIBYTE(v11) = 13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD78, &qword_1D1EA26B0);
    sub_1D1CBEEEC(&qword_1EC64CD80, &qword_1EC64CD88, &protocol conformance descriptor for StaticUserActionPrediction, MEMORY[0x1E69E6300]);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[18]);
    HIBYTE(v11) = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD90, &qword_1D1EA26B8);
    sub_1D1CBEF88();
    sub_1D1E68F1C();
    v12 = *(v3 + v9[19]);
    HIBYTE(v11) = 15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CDA8, &qword_1D1EA26C0);
    sub_1D1CBF074();
    sub_1D1E68F1C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StateSnapshot.hash(into:)(__int128 *a1)
{
  v3 = type metadata accessor for StaticHome(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D176D714(a1, *v1);
  v7 = type metadata accessor for StateSnapshot(0);
  StaticHome.hash(into:)(a1);
  v8 = *(v1 + v7[6]);
  MEMORY[0x1D3892850](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1D1CB2110(v10, v6, type metadata accessor for StaticHome);
      StaticHome.hash(into:)(a1);
      sub_1D1CB2248(v6, type metadata accessor for StaticHome);
      v10 += v11;
      --v9;
    }

    while (v9);
  }

  sub_1D185EFC0(a1, *(v1 + v7[7]));
  sub_1D1859F70(a1, *(v1 + v7[8]));
  sub_1D185EA44(a1, *(v1 + v7[9]));
  sub_1D185E4C8(a1, *(v1 + v7[10]));
  sub_1D185DF4C(a1, *(v1 + v7[11]));
  sub_1D185D9D0(a1, *(v1 + v7[12]));
  sub_1D185D454(a1, *(v1 + v7[13]));
  sub_1D1859478(a1, *(v1 + v7[14]));
  sub_1D18599F4(a1, *(v1 + v7[15]));
  sub_1D185CE7C(a1, *(v1 + v7[16]));
  sub_1D1770734(a1, *(v1 + v7[17]));
  sub_1D185C7AC(a1, *(v1 + v7[18]));
  return sub_1D185C048(a1, *(v1 + v7[19]));
}

uint64_t StateSnapshot.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for StaticHome(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CDC0, &qword_1D1EA26C8);
  v22 = *(v7 - 8);
  v23 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v18 - v8;
  v10 = type metadata accessor for StateSnapshot(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v25 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D1CBE7D0();
  v24 = v9;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v25);
  }

  v19 = v10;
  v20 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCC8, &qword_1D1EA2660);
  v26 = 0;
  sub_1D1CBF160(&qword_1EC64CDC8, sub_1D1CBF1D8, MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  v14 = v20;
  *v20 = v27;
  LOBYTE(v27) = 1;
  sub_1D1CB21E0(&qword_1EC64CDD8, type metadata accessor for StaticHome, &protocol conformance descriptor for StaticHome);
  sub_1D1E68D7C();
  v15 = v19;
  sub_1D1CB2178(v6, v14 + v19[5], type metadata accessor for StaticHome);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCE8, &qword_1D1EA2668);
  v26 = 2;
  sub_1D1CBF22C(&qword_1EC64CDE0, &qword_1EC64CDD8, &protocol conformance descriptor for StaticHome, MEMORY[0x1E69E6330]);
  v18[1] = 0;
  sub_1D1E68D7C();
  *(v14 + v15[6]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CCF8, &unk_1D1EA2670);
  v26 = 3;
  sub_1D1CBF2C8();
  sub_1D1E68D7C();
  *(v14 + v15[7]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B958, &unk_1D1E9B0D0);
  v26 = 4;
  sub_1D1B86D78();
  sub_1D1E68D7C();
  *(v14 + v15[8]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD10, &qword_1D1EA2680);
  v26 = 5;
  sub_1D1CBF3B4();
  sub_1D1E68D7C();
  *(v14 + v15[9]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD20, &qword_1D1EA2688);
  v26 = 6;
  sub_1D1CBF4A0();
  sub_1D1E68D7C();
  *(v14 + v15[10]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD30, &qword_1D1EA2690);
  v26 = 7;
  sub_1D1CBF58C();
  sub_1D1E68D7C();
  *(v20 + v19[11]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD40, &qword_1D1EA2698);
  v26 = 8;
  sub_1D1CBF678();
  sub_1D1E68D7C();
  *(v20 + v19[12]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD50, &qword_1D1EA26A0);
  v26 = 9;
  sub_1D1CBF764();
  sub_1D1E68D7C();
  *(v20 + v19[13]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B968, &unk_1D1E9B0E0);
  v26 = 10;
  sub_1D1B86E64();
  sub_1D1E68D7C();
  *(v20 + v19[14]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64B1B8, &qword_1D1E99BE0);
  v26 = 11;
  sub_1D1B43CAC();
  sub_1D1E68D7C();
  *(v20 + v19[15]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD60, &qword_1D1EA26A8);
  v26 = 12;
  sub_1D1CBF850();
  sub_1D1E68D7C();
  *(v20 + v19[16]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD78, &qword_1D1EA26B0);
  v26 = 13;
  sub_1D1CBEEEC(&qword_1EC64CE30, &qword_1EC64CE38, &protocol conformance descriptor for StaticUserActionPrediction, MEMORY[0x1E69E6330]);
  sub_1D1E68D7C();
  *(v20 + v19[17]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CD90, &qword_1D1EA26B8);
  v26 = 14;
  sub_1D1CBF93C();
  sub_1D1E68D7C();
  *(v20 + v19[18]) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CDA8, &qword_1D1EA26C0);
  v26 = 15;
  sub_1D1CBFA28();
  sub_1D1E68D7C();
  (*(v22 + 8))(v24, v23);
  v16 = v20;
  *(v20 + v19[19]) = v27;
  sub_1D1CB2110(v16, v21, type metadata accessor for StateSnapshot);
  __swift_destroy_boxed_opaque_existential_1(v25);
  return sub_1D1CB2248(v16, type metadata accessor for StateSnapshot);
}

uint64_t static UTType.frozenHomeType.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C868, &qword_1D1EA26D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_1D1E66F6C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  return sub_1D1E66F3C();
}

uint64_t _s13HomeDataModel13StateSnapshotV20readableContentTypesSay22UniformTypeIdentifiers6UTTypeVGvgZ_0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64C868, &qword_1D1EA26D0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64CE60, &qword_1D1EA26D8);
  v3 = sub_1D1E66F6C();
  v4 = *(v3 - 8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D1E739C0;
  (*(v4 + 56))(v2, 1, 1, v3);
  sub_1D1E66F3C();
  return v5;
}

uint64_t StateSnapshot.init(configuration:)(uint64_t a1)
{
  v2 = sub_1D1E6726C();
  v3 = [v2 regularFileContents];

  if (v3)
  {
    v4 = sub_1D1E668BC();
    v6 = v5;

    sub_1D1E65F1C();
    swift_allocObject();
    sub_1D1E65F0C();
    type metadata accessor for StateSnapshot(0);
    sub_1D1CB21E0(&qword_1EC64CE70, type metadata accessor for StateSnapshot, &protocol conformance descriptor for StateSnapshot);
    sub_1D1E65EFC();
    v7 = sub_1D1E6727C();
    (*(*(v7 - 8) + 8))(a1, v7);

    return sub_1D174E7C4(v4, v6);
  }

  else
  {
    sub_1D1CBFB14();
    swift_allocError();
    swift_willThrow();
    v9 = sub_1D1E6727C();
    return (*(*(v9 - 8) + 8))(a1, v9);
  }
}

id StateSnapshot.fileWrapper(configuration:)()
{
  sub_1D1E65F8C();
  swift_allocObject();
  sub_1D1E65F7C();
  type metadata accessor for StateSnapshot(0);
  sub_1D1CB21E0(&qword_1EC64CE78, type metadata accessor for StateSnapshot, &protocol conformance descriptor for StateSnapshot);
  v1 = sub_1D1E65F6C();
  v3 = v2;

  if (!v0)
  {
    v5 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v6 = sub_1D1E6688C();
    v7 = [v5 initRegularFileWithContents_];

    sub_1D174E7C4(v1, v3);
    return v7;
  }

  return result;
}

uint64_t StateSnapshot.StateSnapshotFileErrors.hashValue.getter()
{
  sub_1D1E6920C();
  MEMORY[0x1D3892850](0);
  return sub_1D1E6926C();
}

id sub_1D1C9A850(uint64_t a1, uint64_t a2)
{
  sub_1D1E65F8C();
  swift_allocObject();
  sub_1D1E65F7C();
  sub_1D1CB21E0(&qword_1EC64CE78, type metadata accessor for StateSnapshot, &protocol conformance descriptor for StateSnapshot);
  v3 = sub_1D1E65F6C();
  v5 = v4;

  if (!v2)
  {
    v7 = objc_allocWithZone(MEMORY[0x1E696AC38]);
    v8 = sub_1D1E6688C();
    v9 = [v7 initRegularFileWithContents_];

    sub_1D174E7C4(v3, v5);
    return v9;
  }

  return result;
}

uint64_t StateSnapshot.staticZones.getter()
{
  type metadata accessor for StateSnapshot(0);

  return sub_1D1782D04(v0);
}

uint64_t StateSnapshot.staticActionSets.getter()
{
  type metadata accessor for StateSnapshot(0);

  return sub_1D1782F48(v0);
}

uint64_t StateSnapshot.staticCameraProfiles.getter()
{
  type metadata accessor for StateSnapshot(0);

  return sub_1D1781428(v0);
}

uint64_t StateSnapshot.staticRooms.getter()
{
  type metadata accessor for StateSnapshot(0);

  return sub_1D178318C(v0);
}

uint64_t StateSnapshot.staticUsers.getter()
{
  type metadata accessor for StateSnapshot(0);

  return sub_1D17833D0(v0);
}

uint64_t StateSnapshot.staticActionSetsInOrder.getter()
{
  v36[5] = *MEMORY[0x1E69E9840];
  v1 = type metadata accessor for StaticHome(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticActionSet(0);
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StateSnapshot(0);

  v9 = sub_1D1782F48(v8);
  v10 = v9;
  v11 = *(v9 + 32);
  v12 = ((1 << v11) + 63) >> 6;
  if ((v11 & 0x3Fu) > 0xD)
  {
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_27;
    }
  }

  v29 = v12;
  v30 = v7;
  v31 = v3;
  v32 = v1;
  v33 = v0;
  v28[1] = v28;
  MEMORY[0x1EEE9AC00](v9);
  v14 = v28 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v14, v13);
  v34 = 0;
  v0 = 0;
  v7 = v10 + 56;
  v15 = 1 << *(v10 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v3 = v16 & *(v10 + 56);
  v12 = (v15 + 63) >> 6;
  while (1)
  {
    if (!v3)
    {
      v18 = v0;
      while (1)
      {
        v0 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v0 >= v12)
        {
          goto LABEL_16;
        }

        v19 = *(v7 + 8 * v0);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v3 = (v19 - 1) & v19;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_24;
    }

    v17 = __clz(__rbit64(v3));
    v3 &= v3 - 1;
LABEL_12:
    v1 = v17 | (v0 << 6);
    sub_1D1CB2110(*(v10 + 48) + *(v35 + 72) * v1, v6, type metadata accessor for StaticActionSet);
    v20 = v6[*(v4 + 32)];
    sub_1D1CB2248(v6, type metadata accessor for StaticActionSet);
    if ((v20 & 1) == 0)
    {
      *&v14[(v1 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v1;
      if (__OFADD__(v34++, 1))
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_16:
  v22 = sub_1D19E22C8(v14, v29, v34, v10);
  v23 = 0;
  v1 = v32;
  v0 = v33;
  v7 = v30;
  v3 = v31;
  while (1)
  {
    sub_1D1CB2110(v0 + *(v7 + 20), v3, type metadata accessor for StaticHome);
    v0 = *(v3 + *(v1 + 56));

    sub_1D1CB2248(v3, type metadata accessor for StaticHome);
    v3 = v22[2];
    if (!v3)
    {
      break;
    }

    v34 = 0;
    v24 = sub_1D1804318(v3, 0);
    v25 = sub_1D1806238(v36, v24 + ((*(v35 + 80) + 32) & ~*(v35 + 80)), v3, v22);
    v10 = v36[0];
    v7 = v36[1];
    v12 = v36[2];
    v1 = v36[4];
    swift_retain_n();

    sub_1D1716918(v10);
    if (v25 == v3)
    {

      v23 = v34;
      goto LABEL_21;
    }

    __break(1u);
LABEL_27:
    v27 = swift_slowAlloc();
    v23 = 0;
    v22 = sub_1D1CB5540(v27, v12, v10, sub_1D1C9AF28, 0);

    MEMORY[0x1D3893640](v27, -1, -1);
  }

  v24 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v36[0] = v24;
  sub_1D1CC1BF4(v36, v0);
  if (v23)
  {

    __break(1u);
  }

  else
  {

    swift_bridgeObjectRelease_n();
    return v36[0];
  }

  return result;
}

void *StateSnapshot.filteredStaticActionSetsInOrder(filterCategory:)(unsigned __int8 *a1)
{
  v57[5] = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for StaticHome(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for StaticActionSet(0);
  v6 = *(v56 - 1);
  v7 = MEMORY[0x1EEE9AC00](v56);
  v54 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v44 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v51 = v44 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v44 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = v44 - v17;
  v55 = *a1;
  v49 = type metadata accessor for StateSnapshot(0);

  v20 = sub_1D1782F48(v19);
  v21 = v20;
  v22 = *(v20 + 32);
  v48 = ((1 << v22) + 63) >> 6;
  v23 = 8 * v48;
  v53 = v11;
  if ((v22 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {

    if (swift_stdlib_isStackAllocationSafe())
    {

LABEL_2:
      v46 = v5;
      v47 = v3;
      v44[1] = v44;
      v45 = v1;
      MEMORY[0x1EEE9AC00](v20);
      v50 = v44 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0);
      bzero(v50, v23);
      v52 = 0;
      v5 = 0;
      v1 = v21;
      v3 = v21 + 56;
      v24 = 1 << *(v21 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v21 + 56);
      v23 = (v24 + 63) >> 6;
      while (v26)
      {
        v27 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
LABEL_12:
        v21 = v27 | (v5 << 6);
        sub_1D1CB2110(v1[6] + *(v6 + 72) * v21, v18, type metadata accessor for StaticActionSet);
        v11 = v18[v56[8]];
        sub_1D1CB2248(v18, type metadata accessor for StaticActionSet);
        if ((v11 & 1) == 0)
        {
          *&v50[(v21 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v21;
          if (__OFADD__(v52++, 1))
          {
            __break(1u);
LABEL_16:
            v21 = sub_1D19E22C8(v50, v48, v52, v29);
            v1 = v45;
            v5 = v46;
            v3 = v47;
            goto LABEL_17;
          }
        }
      }

      v28 = v5;
      v11 = v53;
      v29 = v1;
      while (1)
      {
        v5 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v5 >= v23)
        {
          goto LABEL_16;
        }

        v30 = *(v3 + 8 * v5);
        ++v28;
        if (v30)
        {
          v27 = __clz(__rbit64(v30));
          v26 = (v30 - 1) & v30;
          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_48;
    }

    v43 = swift_slowAlloc();
    v21 = sub_1D1CB5540(v43, v48, v21, sub_1D1C9AF28, 0);

    MEMORY[0x1D3893640](v43, -1, -1);
LABEL_17:
    sub_1D1CB2110(v1 + *(v49 + 20), v5, type metadata accessor for StaticHome);
    v32 = *(v5 + *(v3 + 56));

    sub_1D1CB2248(v5, type metadata accessor for StaticHome);
    v33 = *(v21 + 16);
    if (v33)
    {
      v34 = sub_1D1804318(*(v21 + 16), 0);
      v5 = sub_1D1806238(v57, v34 + ((*(v6 + 80) + 32) & ~*(v6 + 80)), v33, v21);
      v35 = v57[0];
      v52 = v57[1];
      v49 = v57[3];
      v50 = v57[2];
      v48 = v57[4];

      sub_1D1716918(v35);
      if (v5 == v33)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    v34 = MEMORY[0x1E69E7CC0];
LABEL_21:
    v57[0] = v34;

    sub_1D1CC1BF4(v57, v32);

    swift_bridgeObjectRelease_n();
    v23 = v57[0];
    v3 = *(v57[0] + 16);
    if (v3)
    {
      v5 = 0;
      v18 = MEMORY[0x1E69E7CC0];
      v1 = v51;
      v52 = v16;
      while (v5 < *(v23 + 16))
      {
        v21 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v36 = *(v6 + 72);
        sub_1D1CB2110(v23 + v21 + v36 * v5, v16, type metadata accessor for StaticActionSet);
        if (v16[v56[12]] == 1)
        {
          sub_1D1CB2178(v16, v1, type metadata accessor for StaticActionSet);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v57[0] = v18;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D178CE74(0, *(v18 + 2) + 1, 1);
            v1 = v51;
            v18 = v57[0];
          }

          v39 = *(v18 + 2);
          v38 = *(v18 + 3);
          if (v39 >= v38 >> 1)
          {
            sub_1D178CE74((v38 > 1), v39 + 1, 1);
            v1 = v51;
            v18 = v57[0];
          }

          *(v18 + 2) = v39 + 1;
          sub_1D1CB2178(v1, &v18[v21 + v39 * v36], type metadata accessor for StaticActionSet);
          v16 = v52;
        }

        else
        {
          sub_1D1CB2248(v16, type metadata accessor for StaticActionSet);
        }

        ++v5;
        v11 = v53;
        if (v3 == v5)
        {
          goto LABEL_33;
        }
      }

LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v18 = MEMORY[0x1E69E7CC0];
LABEL_33:

    v16 = *(v18 + 2);
    if (!v16)
    {
      break;
    }

    v23 = 0;
    v1 = MEMORY[0x1E69E7CC0];
    while (v23 < *(v18 + 2))
    {
      v3 = (*(v6 + 80) + 32) & ~*(v6 + 80);
      v5 = *(v6 + 72);
      sub_1D1CB2110(&v18[v3 + v5 * v23], v11, type metadata accessor for StaticActionSet);
      if (v55 == 8 || (sub_1D171B004(v55, *(v11 + v56[13])) & 1) != 0)
      {
        sub_1D1CB2178(v11, v54, type metadata accessor for StaticActionSet);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v57[0] = v1;
        if ((v40 & 1) == 0)
        {
          sub_1D178CE74(0, v1[2] + 1, 1);
          v1 = v57[0];
        }

        v21 = v1[2];
        v41 = v1[3];
        if (v21 >= v41 >> 1)
        {
          sub_1D178CE74((v41 > 1), v21 + 1, 1);
          v1 = v57[0];
        }

        v1[2] = v21 + 1;
        sub_1D1CB2178(v54, v1 + v3 + v21 * v5, type metadata accessor for StaticActionSet);
      }

      else
      {
        sub_1D1CB2248(v11, type metadata accessor for StaticActionSet);
      }

      if (v16 == ++v23)
      {
        goto LABEL_46;
      }
    }

LABEL_49:
    __break(1u);
  }

  v1 = MEMORY[0x1E69E7CC0];
LABEL_46:

  return v1;
}

void *StateSnapshot.staticRoomsToShowInOrder.getter()
{
  v1 = type metadata accessor for StateSnapshot(0);

  v3 = sub_1D178318C(v2);
  v14 = v0;
  v4 = sub_1D1B529D0(sub_1D1CC1D18, v13, v3);
  v5 = v0 + *(v1 + 20);
  v6 = *(v5 + *(type metadata accessor for StaticHome(0) + 48));
  v7 = v4[2];
  if (!v7)
  {

    v8 = MEMORY[0x1E69E7CC0];
LABEL_5:
    v15 = v8;

    sub_1D1CC3D58(&v15, v6);

    swift_bridgeObjectRelease_n();
    return v15;
  }

  v8 = sub_1D18043CC(v7, 0);
  v9 = *(type metadata accessor for StaticRoom(0) - 8);
  v10 = sub_1D1806278(&v15, v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)), v7, v4);
  v11 = v15;

  sub_1D1716918(v11);
  if (v10 == v7)
  {
    goto LABEL_5;
  }

  __break(1u);
  swift_bridgeObjectRelease_n();

  __break(1u);
  return result;
}

BOOL sub_1D1C9B940(uint64_t a1, uint64_t a2)
{
  type metadata accessor for StateSnapshot(0);
  type metadata accessor for StaticHome(0);
  sub_1D1E66A7C();
  sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  return (sub_1D1E6775C() & 1) == 0;
}

void *StateSnapshot.staticRoomTypesToShowInOrder.getter()
{
  v3 = 0;
  v148 = 0;
  v173 = type metadata accessor for RoomType(0);
  v151 = *(v173 - 8);
  v4 = MEMORY[0x1EEE9AC00](v173);
  v170 = &v146 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v162 = &v146 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v147 = &v146 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v159 = &v146 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v165 = &v146 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v158 = &v146 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v166 = &v146 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v179 = &v146 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v182 = (&v146 - v21);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v146 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64ABD8, &unk_1D1E97C30);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v164 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v163 = &v146 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v146 - v29;
  v181 = sub_1D1E66A7C();
  v31 = *(v181 - 8);
  v32 = MEMORY[0x1EEE9AC00](v181);
  v169 = &v146 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v152 = &v146 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v176 = &v146 - v37;
  v38 = MEMORY[0x1EEE9AC00](v36);
  v146 = &v146 - v39;
  MEMORY[0x1EEE9AC00](v38);
  v174 = &v146 - v40;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645518, &qword_1D1E79AB0);
  v41 = MEMORY[0x1EEE9AC00](v161);
  v160 = &v146 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v41);
  v157 = &v146 - v43;
  v185 = MEMORY[0x1E69E7CC8];
  v149 = type metadata accessor for StateSnapshot(0);
  v44 = *(v149 + 52);
  v153 = v0;
  v45 = *&v0[v44];
  v46 = v45 + 64;
  v47 = 1 << *(v45 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(v45 + 64);
  v50 = ((v47 + 63) >> 6);
  v175 = (v31 + 16);
  v167 = (v31 + 56);
  v180 = (v31 + 48);
  v171 = v31;
  v172 = v45;
  v177 = (v31 + 32);
  v178 = (v31 + 8);

  v150 = MEMORY[0x1E69E7CC0];
  v156 = v46;
  v155 = v50;
  v168 = v30;
LABEL_4:
  v51 = v3;
  if (!v49)
  {
    goto LABEL_6;
  }

  do
  {
    v3 = v51;
LABEL_9:
    v52 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v53 = v52 | (v3 << 6);
    v2 = v171;
    v54 = v172;
    v55 = *(v172 + 48);
    v154 = *(v171 + 72);
    v56 = *(v171 + 16);
    v57 = v157;
    v58 = v181;
    v1 = v175;
    v56(v157, v55 + v154 * v53, v181);
    v59 = *(v54 + 56);
    v60 = v59 + *(*(type metadata accessor for StaticRoom(0) - 8) + 72) * v53;
    v61 = v161;
    sub_1D1CB2110(v60, v57 + *(v161 + 48), type metadata accessor for StaticRoom);
    v62 = v160;
    sub_1D1741A90(v57, v160, &qword_1EC645518, &qword_1D1E79AB0);
    v63 = *(v61 + 48);
    v64 = v168;
    v56(v168, &v62[v63], v58);
    sub_1D1CB2248(&v62[v63], type metadata accessor for StaticRoom);
    (*(v2 + 56))(v64, 0, 1, v58);
    (*(v2 + 8))(v62, v58);
    if ((*(v2 + 48))(v64, 1, v58) != 1)
    {
      v65 = v154;
      v66 = *v177;
      (*v177)(v146, v64, v181);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v50 = v155;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v150 = sub_1D177D0AC(0, *(v150 + 2) + 1, 1, v150);
      }

      v46 = v156;
      v2 = *(v150 + 2);
      v68 = *(v150 + 3);
      v1 = (v2 + 1);
      if (v2 >= v68 >> 1)
      {
        v150 = sub_1D177D0AC((v68 > 1), v2 + 1, 1, v150);
      }

      v69 = v150;
      *(v150 + 2) = v1;
      v66(&v69[((*(v171 + 80) + 32) & ~*(v171 + 80)) + v2 * v65], v146, v181);
      goto LABEL_4;
    }

    sub_1D1741A30(v64, &qword_1EC642590, qword_1D1E71260);
    v51 = v3;
    v46 = v156;
    v50 = v155;
  }

  while (v49);
  while (1)
  {
LABEL_6:
    v3 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      __break(1u);
      goto LABEL_78;
    }

    if (v3 >= v50)
    {
      break;
    }

    v49 = *(v46 + 8 * v3);
    ++v51;
    if (v49)
    {
      goto LABEL_9;
    }
  }

  v70 = v150;
  v184 = v150;
  v71 = *(v150 + 2);
  v72 = v181;
  if (v71)
  {
    type metadata accessor for StaticHome(0);
    v73 = v70 + ((*(v171 + 80) + 32) & ~*(v171 + 80));
    v74 = *(v171 + 72);
    v172 = *(v171 + 16);
    v160 = (v151 + 56);

    v161 = v74;
    do
    {
      (v172)(v174, v73, v72);
      sub_1D1CB21E0(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      if ((sub_1D1E6775C() & 1) == 0)
      {
        v75 = v174;
        v76 = sub_1D1E66A1C();
        v168 = v77;
        v78 = v163;
        (v172)(v163, v75, v181);
        (*v167)(v78, 0, 4, v181);
        (*v160)(v78, 0, 1, v173);
        v79 = v76;
        v72 = v181;
        v74 = v161;
        sub_1D1B0F3E8(v78, v79, v168);
      }

      (*v178)(v174, v72);
      v73 += v74;
      --v71;
    }

    while (v71);
  }

  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6431F0, &unk_1D1EA26E0);
  v81 = *(v151 + 72);
  v82 = (*(v151 + 80) + 32) & ~*(v151 + 80);
  v161 = *(v151 + 80);
  v163 = v80;
  v83 = swift_allocObject();
  *(v83 + 16) = xmmword_1D1E6F900;
  v84 = *v167;
  (*v167)(v83 + v82, 2, 4, v72);
  v84(v83 + v82 + v81, 1, 4, v72);
  v168 = v83 + v82;
  v84(v83 + v82 + 2 * v81, 3, 4, v72);
  v174 = v82;
  v160 = (2 * v81);
  v167 = v83;
  v85 = v83 + v82 + 2 * v81;
  v172 = v81;
  v86 = -v81;
  v87 = -3;
  do
  {
    sub_1D1CB2110(v85, v23, type metadata accessor for RoomType);
    v97 = v182;
    sub_1D1CB2110(v23, v182, type metadata accessor for RoomType);
    v98 = *v180;
    v99 = (*v180)(v97, 4, v72);
    if (v99 > 1)
    {
      v88 = 0xD000000000000010;
      if (v99 != 3)
      {
        v88 = 0x526E776F6E6B6E75;
      }

      v89 = 0xEB000000006D6F6FLL;
      if (v99 == 3)
      {
        v89 = 0x80000001D1EC7C10;
      }

      if (v99 == 2)
      {
        v90 = 0x53736172656D6163;
      }

      else
      {
        v90 = v88;
      }

      if (v99 == 2)
      {
        v91 = 0xEE006E6F69746365;
      }

      else
      {
        v91 = v89;
      }
    }

    else if (v99)
    {
      v90 = 0x655373656E656373;
      v91 = 0xED00006E6F697463;
    }

    else
    {
      v100 = v176;
      (*v177)(v176, v182, v72);
      v101 = sub_1D1E66A1C();
      v102 = v72;
      v90 = v101;
      v91 = v103;
      (*v178)(v100, v102);
    }

    v92 = v179;
    sub_1D1CB2110(v23, v179, type metadata accessor for RoomType);
    v93 = v185;
    v94 = swift_isUniquelyReferenced_nonNull_native();
    v183 = v93;
    sub_1D1756BEC(v92, v90, v91, v94);

    sub_1D1CB2248(v23, type metadata accessor for RoomType);
    v95 = v183;
    v185 = v183;
    v85 += v86;
    v96 = __CFADD__(v87++, 1);
    v72 = v181;
  }

  while (!v96);
  v104 = &v153[*(v149 + 20)];
  v105 = *&v104[*(type metadata accessor for StaticHome(0) + 52)];
  v106 = *(v105 + 16);
  if (v106)
  {
    v107 = (v105 + 40);
    v182 = MEMORY[0x1E69E7CC0];
    v50 = v148;
    v108 = v172;
    while (1)
    {
      if (v95[2])
      {
        v109 = *(v107 - 1);
        v110 = *v107;

        v111 = sub_1D171D2F0(v109, v110);
        v113 = v112;

        if (v113)
        {
          v114 = v158;
          sub_1D1CB2110(v95[7] + v111 * v108, v158, type metadata accessor for RoomType);
          v115 = v114;
          v116 = v166;
          sub_1D1CB2178(v115, v166, type metadata accessor for RoomType);
          sub_1D1CB2110(v116, v165, type metadata accessor for RoomType);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v182 = sub_1D177FE24(0, v182[2] + 1, 1, v182);
          }

          v118 = v182[2];
          v117 = v182[3];
          if (v118 >= v117 >> 1)
          {
            v182 = sub_1D177FE24((v117 > 1), v118 + 1, 1, v182);
          }

          v119 = v182;
          v182[2] = v118 + 1;
          sub_1D1CB2178(v165, &v174[v119 + v118 * v108], type metadata accessor for RoomType);
          v120 = v166;
          v1 = v159;
          sub_1D1CB2110(v166, v159, type metadata accessor for RoomType);
          v2 = v181;
          if (v98(v1, 4, v181))
          {
            sub_1D1CB2248(v120, type metadata accessor for RoomType);
            sub_1D1CB2248(v1, type metadata accessor for RoomType);
          }

          else
          {
            v121 = v152;
            v122 = (*v177)(v152, v1, v2);
            MEMORY[0x1EEE9AC00](v122);
            *(&v146 - 2) = v121;
            v123 = sub_1D1CB55D0(sub_1D1CC3E9C, (&v146 - 4));
            v124 = *(v184 + 2);
            if (v124 < v123)
            {
              goto LABEL_79;
            }

            sub_1D1CC3ECC(v123, v124);
            sub_1D1CB2248(v166, type metadata accessor for RoomType);
            (*v178)(v121, v2);
            v108 = v172;
          }
        }
      }

      v107 += 2;
      if (!--v106)
      {
        goto LABEL_53;
      }
    }
  }

  v182 = MEMORY[0x1E69E7CC0];
  v50 = v148;
  v108 = v172;
LABEL_53:
  v125 = v147;
  sub_1D1CB2110(&v160[v168], v147, type metadata accessor for RoomType);
  v1 = v182;
  if (sub_1D17C5B18(v125, v182))
  {
    sub_1D1CB2248(v125, type metadata accessor for RoomType);
    v126 = v164;
    v2 = v163;
  }

  else
  {
    v127 = v174;
    v2 = v163;
    v128 = swift_allocObject();
    *(v128 + 16) = xmmword_1D1E739C0;
    sub_1D1CB2110(v125, &v127[v128], type metadata accessor for RoomType);
    v183 = v128;
    sub_1D17A63EC(v1);
    sub_1D1CB2248(v125, type metadata accessor for RoomType);
    v1 = v183;
    v126 = v164;
  }

  sub_1D1CB2110(v168 + v108, v125, type metadata accessor for RoomType);
  if (sub_1D17C5B18(v125, v1))
  {
    sub_1D1CB2248(v125, type metadata accessor for RoomType);
  }

  else
  {
    v129 = v174;
    v130 = swift_allocObject();
    *(v130 + 16) = xmmword_1D1E739C0;
    sub_1D1CB2110(v125, &v129[v130], type metadata accessor for RoomType);
    v183 = v130;
    sub_1D17A63EC(v1);
    sub_1D1CB2248(v125, type metadata accessor for RoomType);
    v1 = v183;
  }

  sub_1D1CB2110(v168, v125, type metadata accessor for RoomType);
  if (sub_1D17C5B18(v125, v1))
  {
    sub_1D1CB2248(v125, type metadata accessor for RoomType);
  }

  else
  {
    v131 = v174;
    v132 = swift_allocObject();
    *(v132 + 16) = xmmword_1D1E739C0;
    sub_1D1CB2110(v125, &v131[v132], type metadata accessor for RoomType);
    v183 = v132;
    sub_1D17A63EC(v1);
    sub_1D1CB2248(v125, type metadata accessor for RoomType);
    v1 = v183;
  }

  v182 = v1;

  v134 = v184;
  v135 = *(v184 + 2);
  if (v135)
  {
    v136 = 0;
    v137 = (v151 + 48);
    v138 = MEMORY[0x1E69E7CC0];
    while (v136 < *(v134 + 2))
    {
      v1 = v169;
      v2 = v181;
      (*(v171 + 16))(v169, &v134[((*(v171 + 80) + 32) & ~*(v171 + 80)) + *(v171 + 72) * v136], v181);
      sub_1D1C9CEDC(v1, v126);
      if (v50)
      {
        goto LABEL_80;
      }

      (*v178)(v1, v2);
      if ((*v137)(v126, 1, v173) == 1)
      {
        v133 = sub_1D1741A30(v126, &qword_1EC64ABD8, &unk_1D1E97C30);
      }

      else
      {
        v139 = v126;
        v140 = v162;
        sub_1D1CB2178(v139, v162, type metadata accessor for RoomType);
        sub_1D1CB2178(v140, v170, type metadata accessor for RoomType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_1D177FE24(0, v138[2] + 1, 1, v138);
        }

        v2 = v138[2];
        v141 = v138[3];
        if (v2 >= v141 >> 1)
        {
          v138 = sub_1D177FE24((v141 > 1), v2 + 1, 1, v138);
        }

        v138[2] = v2 + 1;
        v133 = sub_1D1CB2178(v170, &v174[v138 + v2 * v172], type metadata accessor for RoomType);
        v126 = v164;
      }

      if (v135 == ++v136)
      {
        goto LABEL_75;
      }
    }

LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:

    (*v178)(v1, v2);

    __break(1u);
    goto LABEL_81;
  }

  v138 = MEMORY[0x1E69E7CC0];
LABEL_75:
  MEMORY[0x1EEE9AC00](v133);
  *(&v146 - 2) = v153;
  v183 = v138;
  v142 = v182;

  sub_1D1CB22A8(sub_1D1CC3E7C, (&v146 - 4));
  if (!v50)
  {

    v143 = v183;
    v183 = v142;
    sub_1D17A63EC(v143);
    v144 = v183;

    return v144;
  }

LABEL_81:

  __break(1u);
  return result;
}

uint64_t sub_1D1C9CEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a2, a1, v4);
  (*(v5 + 56))(a2, 0, 4, v4);
  v6 = type metadata accessor for RoomType(0);
  return (*(*(v6 - 8) + 56))(a2, 0, 1, v6);
}

uint64_t sub_1D1C9CFE4(uint64_t a1, char *a2, uint64_t a3)
{
  v61 = a3;
  v62 = a2;
  v57 = type metadata accessor for StaticRoom(0);
  v60 = *(v57 - 8);
  v4 = MEMORY[0x1EEE9AC00](v57);
  v56 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v58 = &v53 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v59 = &v53 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v53 - v10;
  v12 = type metadata accessor for RoomType(0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v53 - v16;
  v18 = sub_1D1E66A7C();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v53 - v23;
  sub_1D1CB2110(a1, v17, type metadata accessor for RoomType);
  v25 = *(v19 + 48);
  if (v25(v17, 4, v18))
  {
    v26 = type metadata accessor for RoomType;
    v27 = v17;
LABEL_5:
    sub_1D1CB2248(v27, v26);
LABEL_6:
    v30 = 1;
    return v30 & 1;
  }

  v54 = v11;
  v55 = v22;
  v28 = *(v19 + 32);
  v28(v24, v17, v18);
  sub_1D1CB2110(v62, v15, type metadata accessor for RoomType);
  v29 = v18;
  if (v25(v15, 4, v18))
  {
    (*(v19 + 8))(v24, v18);
    v26 = type metadata accessor for RoomType;
    v27 = v15;
    goto LABEL_5;
  }

  v32 = v55;
  v28(v55, v15, v18);
  v33 = *(v61 + *(type metadata accessor for StateSnapshot(0) + 52));
  if (!*(v33 + 16) || (v34 = sub_1D1742188(), (v35 & 1) == 0))
  {
    v49 = *(v19 + 8);
    v49(v32, v18);
    v49(v24, v18);
    goto LABEL_6;
  }

  v36 = v59;
  v37 = *(v60 + 72);
  sub_1D1CB2110(*(v33 + 56) + v37 * v34, v59, type metadata accessor for StaticRoom);
  v38 = v36;
  v39 = v54;
  sub_1D1CB2178(v38, v54, type metadata accessor for StaticRoom);
  if (!*(v33 + 16) || (v40 = sub_1D1742188(), (v41 & 1) == 0))
  {
    v50 = v39;
    v51 = *(v19 + 8);
    v51(v55, v29);
    v51(v24, v29);
    v26 = type metadata accessor for StaticRoom;
    v27 = v50;
    goto LABEL_5;
  }

  v62 = v24;
  v42 = *(v33 + 56) + v40 * v37;
  v43 = v56;
  sub_1D1CB2110(v42, v56, type metadata accessor for StaticRoom);
  v44 = v58;
  sub_1D1CB2178(v43, v58, type metadata accessor for StaticRoom);
  v45 = *(v57 + 20);
  v46 = *(v39 + v45);
  v47 = *(v39 + v45 + 8);
  v48 = (v44 + v45);
  if (v46 == *v48 && v47 == v48[1] || (v30 = 1, (sub_1D1E6904C() & 1) == 0) && (v30 = 0, (sub_1D1E6904C() & 1) != 0))
  {
    v30 = MEMORY[0x1D3890070](v54, v58);
  }

  v52 = *(v19 + 8);
  v52(v55, v29);
  v52(v62, v29);
  sub_1D1CB2248(v58, type metadata accessor for StaticRoom);
  sub_1D1CB2248(v54, type metadata accessor for StaticRoom);
  return v30 & 1;
}

void *StateSnapshot.staticResidentsInOrder.getter()
{
  v1 = type metadata accessor for StaticHome(0);
  v2 = v1 - 8;
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StateSnapshot(0);

  v7 = sub_1D1782540(v6);
  sub_1D1CB2110(v0 + *(v5 + 20), v4, type metadata accessor for StaticHome);
  v8 = *&v4[*(v2 + 88)];

  sub_1D1CB2248(v4, type metadata accessor for StaticHome);
  if (!v8)
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v9 = v7[2];
  if (!v9)
  {

    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v10 = sub_1D18043A4(v7[2], 0);
  v11 = *(type metadata accessor for StaticResident(0) - 8);
  v12 = sub_1D18067A4(&v16, v10 + ((*(v11 + 80) + 32) & ~*(v11 + 80)), v9, v7);
  v13 = v16;
  swift_bridgeObjectRetain_n();

  sub_1D1716918(v13);
  if (v12 == v9)
  {

LABEL_7:
    v16 = v10;
    sub_1D1CB2368(&v16, v8);

    return v16;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t StateSnapshot.accessoryDetails(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v84 = a2;
  v85 = a1;
  v4 = sub_1D1E66A7C();
  v82 = *(v4 - 8);
  v83 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticService(0);
  v76 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v78 = &v75 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v75 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v77 = &v75 - v12;
  v13 = type metadata accessor for StaticServiceGroup(0);
  v79 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v80 = &v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v75 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v75 - v19;
  v21 = type metadata accessor for StaticAccessory(0);
  v22 = *(v21 - 8);
  v23 = MEMORY[0x1EEE9AC00](v21 - 8);
  v25 = &v75 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v23);
  v28 = &v75 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v30 = &v75 - v29;
  v31 = type metadata accessor for StateSnapshot(0);
  v32 = *(v2 + v31[8]);
  if (*(v32 + 16) && (v33 = sub_1D1742188(), (v34 & 1) != 0))
  {
    sub_1D1CB2110(*(v32 + 56) + *(v22 + 72) * v33, v28, type metadata accessor for StaticAccessory);
    sub_1D1CB2178(v28, v30, type metadata accessor for StaticAccessory);
    sub_1D1CB2110(v30, v25, type metadata accessor for StaticAccessory);
    v35 = v84;
    AccessoryDetails.init(_:)(v25, v84);
    v36 = type metadata accessor for StaticAccessory;
    v37 = v30;
  }

  else
  {
    v38 = *(v3 + v31[14]);
    v39 = v85;
    if (*(v38 + 16))
    {
      v40 = sub_1D1742188();
      if (v41)
      {
        sub_1D1CB2110(*(v38 + 56) + *(v79 + 72) * v40, v18, type metadata accessor for StaticServiceGroup);
        sub_1D1CB2178(v18, v20, type metadata accessor for StaticServiceGroup);
        v42 = v80;
        sub_1D1CB2178(v20, v80, type metadata accessor for StaticServiceGroup);
        v43 = type metadata accessor for AccessoryDetails(0);
        v44 = v84;
        *(v84 + v43[7]) = 8;
        sub_1D1CB2110(v42, v44, type metadata accessor for StaticServiceGroup);
        type metadata accessor for AccessoryDetails.Payload(0);
        swift_storeEnumTagMultiPayload();
        v45 = v44 + v43[5];
        v46 = type metadata accessor for AccessoryDetailsBasicInfo(0);
        v47 = (v45 + v46[5]);
        *v47 = 0;
        v47[1] = 0;
        v48 = v46[6];
        v49 = type metadata accessor for StaticRoom(0);
        (*(*(v49 - 8) + 56))(v45 + v48, 1, 1, v49);
        v50 = (v45 + v46[7]);
        *v50 = 0;
        v50[1] = 0;
        *(v45 + v46[8]) = 2;
        *(v45 + v46[9]) = 2;
        *(v45 + v46[10]) = 92;
        sub_1D1CB2178(v42, v45, type metadata accessor for StaticServiceGroup);
        swift_storeEnumTagMultiPayload();
        v51 = v43[6];
        v52 = type metadata accessor for StaticDeviceMetadata(0);
        (*(*(v52 - 8) + 56))(v44 + v51, 1, 1, v52);
        return (*(*(v43 - 1) + 56))(v44, 0, 1, v43);
      }
    }

    v54 = *(v3 + v31[15]);
    if (!*(v54 + 16) || (v55 = sub_1D1742188(), (v56 & 1) == 0))
    {
      if (qword_1EE07B5D0 != -1)
      {
        swift_once();
      }

      v63 = sub_1D1E6709C();
      __swift_project_value_buffer(v63, qword_1EE07B5D8);
      v65 = v81;
      v64 = v82;
      v66 = v83;
      (*(v82 + 16))(v81, v39, v83);
      v67 = sub_1D1E6707C();
      v68 = sub_1D1E6833C();
      if (os_log_type_enabled(v67, v68))
      {
        v69 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v86 = v70;
        *v69 = 136315650;
        *(v69 + 4) = sub_1D1B1312C(0xD000000000000021, 0x80000001D1EC7C30, &v86);
        *(v69 + 12) = 2080;
        *(v69 + 14) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EC7C60, &v86);
        *(v69 + 22) = 2080;
        sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v71 = sub_1D1E68FAC();
        v73 = v72;
        (*(v64 + 8))(v65, v66);
        v74 = sub_1D1B1312C(v71, v73, &v86);

        *(v69 + 24) = v74;
        _os_log_impl(&dword_1D16EC000, v67, v68, "%s - %s Could not create AccessoryDetails for uuid: %s", v69, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v70, -1, -1);
        MEMORY[0x1D3893640](v69, -1, -1);
      }

      else
      {

        (*(v64 + 8))(v65, v66);
      }

      v59 = type metadata accessor for AccessoryDetails(0);
      v60 = *(*(v59 - 8) + 56);
      v61 = v84;
      v62 = 1;
      return v60(v61, v62, 1, v59);
    }

    sub_1D1CB2110(*(v54 + 56) + *(v76 + 72) * v55, v11, type metadata accessor for StaticService);
    v57 = v77;
    sub_1D1CB2178(v11, v77, type metadata accessor for StaticService);
    v58 = v78;
    sub_1D1CB2110(v57, v78, type metadata accessor for StaticService);
    v35 = v84;
    AccessoryDetails.init(_:)(v58, v84);
    v36 = type metadata accessor for StaticService;
    v37 = v57;
  }

  sub_1D1CB2248(v37, v36);
  v59 = type metadata accessor for AccessoryDetails(0);
  v60 = *(*(v59 - 8) + 56);
  v61 = v35;
  v62 = 0;
  return v60(v61, v62, 1, v59);
}

void StateSnapshot.findServiceGroup(with:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v3 = MEMORY[0x1EEE9AC00](v105);
  v104 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v103 = &v83 - v6;
  MEMORY[0x1EEE9AC00](v5);
  v102 = &v83 - v7;
  v114 = sub_1D1E66A7C();
  v8 = *(v114 - 8);
  v9 = MEMORY[0x1EEE9AC00](v114);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v101 = &v83 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v83 - v14;
  v16 = type metadata accessor for StaticServiceGroup(0);
  v92 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v95 = &v83 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v83 - v19;
  type metadata accessor for StateSnapshot(0);

  v21 = sub_1D17821C0(v20);
  v22 = *(v21 + 56);
  v91 = v21 + 56;
  v23 = 1 << *(v21 + 32);
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v25 = v24 & v22;
  v90 = (v23 + 63) >> 6;
  v26 = v8 + 16;
  v100 = v8 + 32;
  v27 = (v8 + 8);

  v29 = 0;
  v89 = a1;
  v88 = v16;
  v99 = v11;
  v85 = v15;
  v86 = v28;
  v97 = (v8 + 8);
  v98 = v8 + 16;
  v108 = v8;
  while (1)
  {
    if (!v25)
    {
      while (1)
      {
        v30 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_45;
        }

        if (v30 >= v90)
        {

          v82 = 1;
          goto LABEL_38;
        }

        v25 = *(v91 + 8 * v30);
        ++v29;
        if (v25)
        {
          goto LABEL_10;
        }
      }
    }

    v30 = v29;
LABEL_10:
    v94 = v25;
    v93 = v30;
    v31 = v87;
    sub_1D1CB2110(*(v21 + 48) + *(v92 + 72) * (__clz(__rbit64(v25)) | (v30 << 6)), v87, type metadata accessor for StaticServiceGroup);
    v32 = v31;
    v33 = v95;
    sub_1D1CB2178(v32, v95, type metadata accessor for StaticServiceGroup);
    v34 = *(v33 + *(v16 + 56));
    v35 = *(v34 + 16);
    if (v35)
    {
      v115 = MEMORY[0x1E69E7CC0];
      v106 = v35;
      sub_1D178CEFC(0, v35, 0);
      v112 = v34 + 64;
      v113 = v115;
      v36 = sub_1D1E6869C();
      v37 = 0;
      v96 = v34 + 72;
      v38 = v34;
      v107 = v34;
      while ((v36 & 0x8000000000000000) == 0 && v36 < 1 << *(v38 + 32))
      {
        v40 = v36 >> 6;
        if ((*(v112 + 8 * (v36 >> 6)) & (1 << v36)) == 0)
        {
          goto LABEL_41;
        }

        v41 = *(v38 + 36);
        v109 = v37;
        v110 = v41;
        v42 = v105;
        v43 = *(v105 + 48);
        v44 = *(v38 + 48);
        v111 = *(v8 + 72);
        v45 = v38;
        v46 = v114;
        v47 = v102;
        (*(v8 + 16))(v102, v44 + v111 * v36, v114);
        v48 = *(v45 + 56);
        v49 = type metadata accessor for StaticService(0);
        sub_1D1CB2110(v48 + *(*(v49 - 8) + 72) * v36, &v47[v43], type metadata accessor for StaticService);
        v50 = *(v8 + 32);
        v51 = v103;
        v50(v103, v47, v46);
        v52 = &v47[v43];
        v53 = v46;
        sub_1D1CB2178(v52, &v51[*(v42 + 48)], type metadata accessor for StaticService);
        v54 = v51;
        v55 = v104;
        sub_1D1741A90(v54, v104, &qword_1EC642DB0, &unk_1D1E6F360);
        v56 = *(v42 + 48);
        v57 = v101;
        v50(v101, v55, v53);
        sub_1D1CB2248(v55 + v56, type metadata accessor for StaticService);
        v58 = v113;
        v115 = v113;
        v60 = v113[2];
        v59 = v113[3];
        if (v60 >= v59 >> 1)
        {
          sub_1D178CEFC((v59 > 1), v60 + 1, 1);
          v58 = v115;
        }

        v58[2] = v60 + 1;
        v61 = v108;
        v62 = (*(v61 + 80) + 32) & ~*(v61 + 80);
        v113 = v58;
        v50(v58 + v62 + v60 * v111, v57, v114);
        v38 = v107;
        v39 = 1 << *(v107 + 32);
        if (v36 >= v39)
        {
          goto LABEL_42;
        }

        v63 = *(v112 + 8 * v40);
        if ((v63 & (1 << v36)) == 0)
        {
          goto LABEL_43;
        }

        if (v110 != *(v107 + 36))
        {
          goto LABEL_44;
        }

        v8 = v61;
        v64 = v63 & (-2 << (v36 & 0x3F));
        if (v64)
        {
          v39 = __clz(__rbit64(v64)) | v36 & 0x7FFFFFFFFFFFFFC0;
          v26 = v98;
          v11 = v99;
          v27 = v97;
        }

        else
        {
          v65 = v40 << 6;
          v66 = v40 + 1;
          v27 = v97;
          v67 = (v96 + 8 * v40);
          v26 = v98;
          v11 = v99;
          while (v66 < (v39 + 63) >> 6)
          {
            v69 = *v67++;
            v68 = v69;
            v65 += 64;
            ++v66;
            if (v69)
            {
              sub_1D1716920(v36, v110, 0);
              v39 = __clz(__rbit64(v68)) + v65;
              goto LABEL_13;
            }
          }

          sub_1D1716920(v36, v110, 0);
        }

LABEL_13:
        v37 = v109 + 1;
        v36 = v39;
        if (v109 + 1 == v106)
        {
          a1 = v89;
          v16 = v88;
          v70 = v113;
          goto LABEL_30;
        }
      }

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
      return;
    }

    v70 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v113 = v70;
    v71 = v70[2];
    v72 = sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v115 = MEMORY[0x1D38917C0](v71, v114, v72);
    v73 = v113[2];
    if (v73)
    {
      v74 = v113 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v75 = *(v8 + 72);
      v76 = v8;
      v77 = v26;
      v78 = *(v76 + 16);
      v79 = v85;
      do
      {
        v80 = v114;
        v78(v79, v74, v114);
        sub_1D1762CB8(v11, v79);
        (*v27)(v11, v80);
        v74 += v75;
        --v73;
      }

      while (v73);

      v26 = v77;
      v8 = v108;
      a1 = v89;
      v16 = v88;
    }

    else
    {
    }

    v81 = sub_1D1A46FB0(a1, v115);

    if ((v81 & 1) == 0)
    {
      break;
    }

    v25 = (v94 - 1) & v94;
    sub_1D1CB2248(v95, type metadata accessor for StaticServiceGroup);
    v29 = v93;
    v21 = v86;
  }

  sub_1D1CB2178(v95, v84, type metadata accessor for StaticServiceGroup);
  v82 = 0;
LABEL_38:
  (*(v92 + 56))(v84, v82, 1, v16);
}

uint64_t StateSnapshot.ActionSetUpdateType.description.getter()
{
  v1 = *v0;
  if (!(v1 >> 14))
  {
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD000000000000027, 0x80000001D1EC7CA0);
    if (v1)
    {
      v2 = 1702195828;
    }

    else
    {
      v2 = 0x65736C6166;
    }

    if (v1)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE500000000000000;
    }

    MEMORY[0x1D3890F70](v2, v3);

    MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC7CD0);
    goto LABEL_11;
  }

  if (v1 >> 14 == 1)
  {
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD000000000000018, 0x80000001D1EC7C80);
LABEL_11:
    sub_1D1E68ABC();
    return 0;
  }

  return 1684104562;
}

uint64_t StateSnapshot.ActionSetUpdateType.hash(into:)()
{
  v1 = *v0;
  if (v1 >> 14)
  {
    if (v1 >> 14 == 1)
    {
      MEMORY[0x1D3892850](2);
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = v1 >> 8;
    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
  }

  return MEMORY[0x1D3892850](v2);
}

uint64_t StateSnapshot.ActionSetUpdateType.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  if (v1 >> 14)
  {
    if (v1 >> 14 == 1)
    {
      MEMORY[0x1D3892850](2);
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = v1 >> 8;
    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
  }

  MEMORY[0x1D3892850](v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C9EB88()
{
  v1 = *v0;
  if (v1 >> 14)
  {
    if (v1 >> 14 == 1)
    {
      MEMORY[0x1D3892850](2);
      v2 = v1;
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = v1 >> 8;
    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
  }

  return MEMORY[0x1D3892850](v2);
}

uint64_t sub_1D1C9EBFC(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  if (v2 >> 14)
  {
    if (v2 >> 14 == 1)
    {
      MEMORY[0x1D3892850](2);
      v3 = v2;
    }

    else
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = v2 >> 8;
    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
  }

  MEMORY[0x1D3892850](v3);
  return sub_1D1E6926C();
}

uint64_t StateSnapshot.CharacteristicUpdateType.ValueType.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 <= 2)
  {
    if (!*(v1 + 16))
    {
      MEMORY[0x1D3892850](0);
      return sub_1D1E6922C();
    }

    if (v3 == 1)
    {
      MEMORY[0x1D3892850](1);
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v4 = v2;
      }

      else
      {
        v4 = 0;
      }

      return MEMORY[0x1D3892890](v4);
    }

    MEMORY[0x1D3892850](2);
    v6 = v2;
    return MEMORY[0x1D3892850](v6);
  }

  if (v3 == 3)
  {
    MEMORY[0x1D3892850](3);

    return sub_1D1E678EC();
  }

  else
  {
    if (v3 != 4)
    {
      v6 = 5;
      return MEMORY[0x1D3892850](v6);
    }

    MEMORY[0x1D3892850](4);

    return sub_1D1E668CC();
  }
}

uint64_t StateSnapshot.CharacteristicUpdateType.ValueType.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  StateSnapshot.CharacteristicUpdateType.ValueType.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C9EDF4()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  StateSnapshot.CharacteristicUpdateType.ValueType.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D1C9EE4C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1D1E6920C();
  StateSnapshot.CharacteristicUpdateType.ValueType.hash(into:)(v4);
  return sub_1D1E6926C();
}

id sub_1D1C9EE9C()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 1)
  {
    if (*(v0 + 16))
    {
      sub_1D1772378(v1, &v17);
      v15 = v17;
      if (v17)
      {
        sub_1D1757A60(v18, v19, v20, v21);
        v16 = [v15 service];

        if (v16)
        {
          v5 = [v16 accessory];

          if (v5)
          {
            goto LABEL_19;
          }
        }
      }

      return 0;
    }

    v6 = sub_1D1772360(v1);
    v7 = [v6 service];

    v5 = [v7 accessory];
    v8 = [v5 home];
LABEL_15:
    v13 = v8;

    return v13;
  }

  if (v2 == 2)
  {
    sub_1D1772494(v1, &v17);
    v9 = v17;
    if (v17)
    {
      sub_1D1778940(v18, v19, v20);
      v10 = [v9 service];

      if (v10)
      {
        v5 = [v10 accessory];

        if (v5)
        {
          goto LABEL_19;
        }
      }
    }

    return 0;
  }

  if (v2 != 3)
  {
    v11 = sub_1D1778968();
    v12 = [v11 service];

    v5 = [v12 accessory];
    v8 = [v5 home];
    goto LABEL_15;
  }

  sub_1D1772494(v1, &v17);
  v3 = v17;
  if (v17)
  {
    sub_1D1778940(v18, v19, v20);
    v4 = [v3 service];

    if (v4)
    {
      v5 = [v4 accessory];

      if (v5)
      {
LABEL_19:
        v8 = [v5 home];
        goto LABEL_15;
      }
    }
  }

  return 0;
}

unint64_t StateSnapshot.CharacteristicUpdateType.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  v3 = byte_1EE07B288;
  if (v2 <= 1)
  {
    if (!v2)
    {
      v7 = 0x3A68736572666572;
      if ((byte_1EE07B288 & 1) == 0)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          sub_1D1E6873C();
        }

        goto LABEL_22;
      }

      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38, MEMORY[0x1E69E81B8]);
      v4 = sub_1D1E6817C();
      goto LABEL_23;
    }

    sub_1D1E6884C();

    v7 = 0x53676E6964616F6CLL;
    if ((v3 & 1) == 0)
    {
      goto LABEL_22;
    }

LABEL_16:
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38, MEMORY[0x1E69E81B8]);
    v4 = sub_1D1E6760C();
    goto LABEL_23;
  }

  if (v2 == 2)
  {
    sub_1D1E6884C();

    v7 = 0xD000000000000010;
    if ((v3 & 1) == 0)
    {
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  if (v2 == 3)
  {
    sub_1D1E6884C();

    v7 = 0xD000000000000015;
    if ((v3 & 1) == 0)
    {
LABEL_22:
      sub_1D1B2D144();
      v4 = sub_1D1E6865C();
      goto LABEL_23;
    }

    goto LABEL_16;
  }

  sub_1D1E6884C();

  v7 = 0xD00000000000001ALL;
  if (v3)
  {
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38, MEMORY[0x1E69E81B8]);
    v5 = sub_1D1E6760C();
  }

  else
  {
    sub_1D1B2D144();
    v5 = sub_1D1E6865C();
  }

  MEMORY[0x1D3890F70](v5);

  MEMORY[0x1D3890F70](0x616863616572202CLL, 0xED0000203A656C62);
  sub_1D1E66A7C();
  sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v4 = sub_1D1E6760C();
LABEL_23:
  MEMORY[0x1D3890F70](v4);

  return v7;
}

void StateSnapshot.CharacteristicUpdateType.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 1)
  {
    if (*(v1 + 16))
    {
      MEMORY[0x1D3892850](1);

      sub_1D185FD68(a1, v3);
    }

    else
    {
      MEMORY[0x1D3892850](0);

      sub_1D176EF68(a1, v3);
    }
  }

  else
  {
    if (v4 == 2)
    {
      v5 = 2;
      goto LABEL_10;
    }

    if (v4 == 3)
    {
      v5 = 3;
LABEL_10:
      MEMORY[0x1D3892850](v5);

      sub_1D185FB54(a1, v3);
      return;
    }

    v6 = *(v1 + 8);
    MEMORY[0x1D3892850](4);
    sub_1D185FB54(a1, v3);

    sub_1D185F6BC(a1, v6);
  }
}

uint64_t StateSnapshot.CharacteristicUpdateType.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  if (v3 <= 1)
  {
    if (v3)
    {
      MEMORY[0x1D3892850](1);
      sub_1D185FD68(v6, v1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D176EF68(v6, v1);
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = 2;
    }

    else
    {
      if (v3 != 3)
      {
        MEMORY[0x1D3892850](4);
        sub_1D185FB54(v6, v1);
        sub_1D185F6BC(v6, v2);
        return sub_1D1E6926C();
      }

      v4 = 3;
    }

    MEMORY[0x1D3892850](v4);
    sub_1D185FB54(v6, v1);
  }

  return sub_1D1E6926C();
}

void sub_1D1C9F79C(__int128 *a1)
{
  v3 = *v1;
  v4 = *(v1 + 16);
  if (v4 <= 1)
  {
    if (*(v1 + 16))
    {
      MEMORY[0x1D3892850](1);

      sub_1D185FD68(a1, v3);
    }

    else
    {
      MEMORY[0x1D3892850](0);

      sub_1D176EF68(a1, v3);
    }
  }

  else
  {
    if (v4 == 2)
    {
      v5 = 2;
      goto LABEL_10;
    }

    if (v4 == 3)
    {
      v5 = 3;
LABEL_10:
      MEMORY[0x1D3892850](v5);

      sub_1D185FB54(a1, v3);
      return;
    }

    v6 = *(v1 + 8);
    MEMORY[0x1D3892850](4);
    sub_1D185FB54(a1, v3);

    sub_1D185F6BC(a1, v6);
  }
}

uint64_t sub_1D1C9F8C0(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D1E6920C();
  if (v4 <= 1)
  {
    if (v4)
    {
      MEMORY[0x1D3892850](1);
      sub_1D185FD68(v7, v2);
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D176EF68(v7, v2);
    }
  }

  else
  {
    if (v4 == 2)
    {
      v5 = 2;
    }

    else
    {
      if (v4 != 3)
      {
        MEMORY[0x1D3892850](4);
        sub_1D185FB54(v7, v2);
        sub_1D185F6BC(v7, v3);
        return sub_1D1E6926C();
      }

      v5 = 3;
    }

    MEMORY[0x1D3892850](v5);
    sub_1D185FB54(v7, v2);
  }

  return sub_1D1E6926C();
}

unint64_t StateSnapshot.UpdateType.description.getter()
{
  v1 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v80 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v80 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v80 - v9;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1CB2110(v0, v13, type metadata accessor for StateSnapshot.UpdateType);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v52 = *v13;
      v53 = *(v13 + 1);
      v54 = v13[16];
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1D1E6884C();

      v86 = 0xD000000000000011;
      v87 = 0x80000001D1EC7EB0;
      v81 = v52;
      v82 = v53;
      LOBYTE(v83) = v54;
      v55 = StateSnapshot.CharacteristicUpdateType.description.getter();
      v57 = v56;
      sub_1D1AC373C(v52, v53, v54);
      MEMORY[0x1D3890F70](v55, v57);
      goto LABEL_13;
    case 2u:
      v81 = 0x65736E6F69746361;
      v82 = 0xEB00000000207374;
      sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
      sub_1D174A5B8(&qword_1EE07B678, &qword_1EE07B680, 0x1E696CAF0, MEMORY[0x1E69E81B8]);
      v42 = sub_1D1E6760C();
      goto LABEL_19;
    case 3u:
      v44 = *v13;
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1D1E6884C();

      v81 = 0xD000000000000019;
      v82 = 0x80000001D1EC7E90;
      v45 = sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
      v46 = MEMORY[0x1D3891260](v44, v45);
      v48 = v47;

      goto LABEL_20;
    case 4u:
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
      v30 = *&v13[v29[12]];
      v31 = *&v13[v29[16]];
      v32 = *&v13[v29[20]];
      (*(v5 + 32))(v10, v13, v4);
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1D1E6884C();
      MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC7E50);
      v80 = v30;
      if (v30)
      {
        v33 = [v30 description];
        v34 = sub_1D1E6781C();
        v36 = v35;
      }

      else
      {
        v34 = 0;
        v36 = 0;
      }

      v86 = v34;
      v87 = v36;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434D0, &qword_1D1E71C60);
      v67 = sub_1D1E6789C();
      MEMORY[0x1D3890F70](v67);

      MEMORY[0x1D3890F70](0x736572676F725020, 0xEB00000000203A73);
      if (v31)
      {
        v68 = [v31 &selRef_snapshotControl];
        v69 = sub_1D1E6781C();
        v71 = v70;
      }

      else
      {
        v69 = 0;
        v71 = 0;
      }

      v86 = v69;
      v87 = v71;
      v72 = sub_1D1E6789C();
      MEMORY[0x1D3890F70](v72);

      MEMORY[0x1D3890F70](0xD000000000000010, 0x80000001D1EC7E70);
      if (v32)
      {
        v73 = [v32 &selRef_snapshotControl];
        v74 = sub_1D1E6781C();
        v76 = v75;
      }

      else
      {
        v74 = 0;
        v76 = 0;
      }

      v86 = v74;
      v87 = v76;
      v77 = sub_1D1E6789C();
      MEMORY[0x1D3890F70](v77);

      MEMORY[0x1D3890F70](0x20726F6620, 0xE500000000000000);
      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v78 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v78);

      v39 = v81;
      (*(v5 + 8))(v10, v4);
      return v39;
    case 5u:
      v58 = v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650000, &unk_1D1EA2648) + 48)];
      (*(v5 + 32))(v8, v13, v4);
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1D1E6884C();
      MEMORY[0x1D3890F70](0xD00000000000001ELL, 0x80000001D1EC7E30);
      LOBYTE(v86) = v58;
      sub_1D1E68ABC();
      MEMORY[0x1D3890F70](0x20726F6620, 0xE500000000000000);
      sub_1D1CB21E0(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v59 = sub_1D1E68FAC();
      MEMORY[0x1D3890F70](v59);

      v39 = v81;
      (*(v5 + 8))(v8, v4);
      return v39;
    case 6u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);
      v81 = 0x73656C69666F7270;
      v82 = 0xEA0000000000203ALL;
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v60 = sub_1D1E6817C();
      v62 = v61;

      MEMORY[0x1D3890F70](v60, v62);
      goto LABEL_17;
    case 7u:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080);
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1D1E6884C();

      v81 = 0xD00000000000001ALL;
      v82 = 0x80000001D1EC7E10;
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v49 = sub_1D1E6760C();
      v51 = v50;

      MEMORY[0x1D3890F70](v49, v51);
LABEL_17:

      v39 = v81;
      (*(v5 + 8))(v13, v4);
      return v39;
    case 8u:
      v64 = *v13;
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1D1E6884C();
      if (v64)
      {
        v65 = 0x676E6973756170;
      }

      else
      {
        v65 = 0x676E696D75736572;
      }

      if (v64)
      {
        v66 = 0xE700000000000000;
      }

      else
      {
        v66 = 0xE800000000000000;
      }

      MEMORY[0x1D3890F70](v65, v66);

      MEMORY[0x1D3890F70](0x206D616572747320, 0xEF73657461647075);
      return v81;
    case 9u:

      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AD58, &unk_1D1EA1810);
      sub_1D1CB2178(&v13[*(v40 + 48)], v3, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1D1E6884C();

      v81 = 0xD00000000000001FLL;
      v82 = 0x80000001D1EC7DD0;
      v41 = AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting.description.getter();
      MEMORY[0x1D3890F70](v41);

      v39 = v81;
      sub_1D1CB2248(v3, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.Setting);
      return v39;
    case 0xAu:
      v63 = *(v13 + 1);

      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1D1E6884C();

      v81 = 0xD00000000000002ELL;
      v82 = 0x80000001D1EC7DA0;
      v86 = v63;
      v42 = AutoClimateModel.Thermostat.WeekdaySchedule.description.getter();
LABEL_19:
      v46 = v42;
      v48 = v43;

LABEL_20:
      MEMORY[0x1D3890F70](v46, v48);
      goto LABEL_39;
    case 0xBu:
      v19 = *v13;
      v20 = v13[8];
      v21 = v13[9];
      v23 = *(v13 + 2);
      v22 = *(v13 + 3);
      v24 = *(v13 + 4);
      v25 = v13[40];

      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1D1E6884C();

      v86 = 0xD000000000000017;
      v87 = 0x80000001D1EC7D80;
      LOBYTE(v81) = v20;
      BYTE1(v81) = v21;
      v82 = v23;
      v83 = v22;
      v84 = v24;
      v85 = v25;
      v26 = AutoClimateModel.Thermostat.CleanEnergySettingConfig.description.getter();
      v28 = v27;

      MEMORY[0x1D3890F70](v26, v28);
LABEL_13:

      return v86;
    case 0xCu:
      v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
      v81 = 0;
      v82 = 0xE000000000000000;
      sub_1D1E6884C();

      v81 = 0xD000000000000020;
      v82 = 0x80000001D1EC7D50;
      type metadata accessor for StaticMatterDevice(0);
      sub_1D1CB21E0(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v38 = sub_1D1E6762C();
      MEMORY[0x1D3890F70](v38);

      v39 = v81;
      (*(v5 + 8))(&v13[v37], v4);
      return v39;
    case 0xDu:
      return 0xD00000000000001FLL;
    default:
      v14 = *v13;
      v81 = 543976513;
      v82 = 0xE400000000000000;
      if (v14)
      {
        v15 = [v14 name];
        v16 = sub_1D1E6781C();
        v18 = v17;
      }

      else
      {
        v18 = 0xE700000000000000;
        v16 = 0x676E697373696DLL;
      }

      MEMORY[0x1D3890F70](v16, v18);

LABEL_39:

      return v81;
  }
}