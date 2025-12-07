unint64_t sub_1D1CDF5E4()
{
  result = qword_1EC64D458;
  if (!qword_1EC64D458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D458);
  }

  return result;
}

unint64_t sub_1D1CDF63C()
{
  result = qword_1EC64D460;
  if (!qword_1EC64D460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D460);
  }

  return result;
}

unint64_t sub_1D1CDF694()
{
  result = qword_1EC64D468;
  if (!qword_1EC64D468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D468);
  }

  return result;
}

unint64_t sub_1D1CDF6EC()
{
  result = qword_1EC64D470;
  if (!qword_1EC64D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D470);
  }

  return result;
}

uint64_t sub_1D1CDF740(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7889261 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7235949 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x756C615670657473 && a2 == 0xE900000000000065 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1953066613 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D1EC8310 == a2)
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

uint64_t sub_1D1CDF900(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7630441 && a2 == 0xE300000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74616F6C66 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000)
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

unint64_t sub_1D1CDFA5C()
{
  result = qword_1EC64D478;
  if (!qword_1EC64D478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D478);
  }

  return result;
}

void sub_1D1CDFAC4(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v58 = a1;
  v59 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = &v48[-v6];
  v55 = type metadata accessor for StaticCharacteristic(0);
  v7 = *(v55 - 8);
  v8 = MEMORY[0x1EEE9AC00](v55);
  v51 = &v48[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v48[-v10];
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645548, &unk_1D1E79AE0);
  v11 = MEMORY[0x1EEE9AC00](v60);
  v52 = &v48[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v62 = &v48[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48[-v15];
  v18 = a3 + 64;
  v17 = *(a3 + 64);
  v53 = MEMORY[0x1E69E7CC8];
  v64 = MEMORY[0x1E69E7CC8];
  v19 = 1 << *(a3 + 32);
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v21 = v20 & v17;
  v22 = (v19 + 63) >> 6;
  v56 = v7;
  v54 = (v7 + 48);
  v61 = a3;

  v23 = 0;
  while (1)
  {
    v24 = v23;
    if (!v21)
    {
      break;
    }

LABEL_9:
    v25 = __clz(__rbit64(v21)) | (v23 << 6);
    v26 = v60;
    v27 = *(*(v61 + 48) + v25);
    v28 = *(v56 + 72);
    sub_1D1CE6DD4(*(v61 + 56) + v28 * v25, &v16[*(v60 + 48)], type metadata accessor for StaticCharacteristic);
    *v16 = v27;
    v29 = v62;
    sub_1D1741A90(v16, v62, &qword_1EC645548, &unk_1D1E79AE0);
    v30 = &v29[*(v26 + 48)];
    v31 = v57;
    v58(v30);
    if (v3)
    {
      sub_1D1741A30(v62, &qword_1EC645548, &unk_1D1E79AE0);

      return;
    }

    v21 &= v21 - 1;
    if ((*v54)(v31, 1, v55) == 1)
    {
      sub_1D1741A30(v62, &qword_1EC645548, &unk_1D1E79AE0);
      sub_1D1741A30(v31, &qword_1EC643630, &qword_1D1E71D10);
    }

    else
    {
      v32 = v50;
      sub_1D1CE8D8C(v31, v50);
      sub_1D1741A90(v62, v52, &qword_1EC645548, &unk_1D1E79AE0);
      sub_1D1CE8D8C(v32, v51);
      v33 = v53[2];
      if (v53[3] <= v33)
      {
        sub_1D1730FB4(v33 + 1, 1);
      }

      v34 = v64;
      v35 = *v52;
      sub_1D1E6920C();
      v49 = v35;
      v63 = v35;
      CharacteristicKind.rawValue.getter();
      sub_1D1E678EC();

      v36 = sub_1D1E6926C();
      v37 = v34 + 64;
      v53 = v34;
      v38 = -1 << *(v34 + 32);
      v39 = v36 & ~v38;
      v40 = v39 >> 6;
      if (((-1 << v39) & ~*(v34 + 64 + 8 * (v39 >> 6))) == 0)
      {
        v42 = 0;
        v43 = (63 - v38) >> 6;
        while (++v40 != v43 || (v42 & 1) == 0)
        {
          v44 = v40 == v43;
          if (v40 == v43)
          {
            v40 = 0;
          }

          v42 |= v44;
          v45 = *(v37 + 8 * v40);
          if (v45 != -1)
          {
            v41 = __clz(__rbit64(~v45)) + (v40 << 6);
            goto LABEL_24;
          }
        }

        goto LABEL_28;
      }

      v41 = __clz(__rbit64((-1 << v39) & ~*(v34 + 64 + 8 * (v39 >> 6)))) | v39 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
      v46 = *(v60 + 48);
      *(v37 + ((v41 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v41;
      v47 = v53;
      *(v53[6] + v41) = v49;
      sub_1D1CE8D8C(v51, v47[7] + v41 * v28);
      ++v47[2];
      sub_1D1CE6D74(&v52[v46], type metadata accessor for StaticCharacteristic);
    }
  }

  while (1)
  {
    v23 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return;
    }

    v21 = *(v18 + 8 * v23);
    ++v24;
    if (v21)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t StaticCharacteristicsBag.staticCharacteristic(for:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (*(v4 + 16) && (v5 = sub_1D171D140(*a1), (v6 & 1) != 0))
  {
    v7 = v5;
    v8 = *(v4 + 56);
    v9 = type metadata accessor for StaticCharacteristic(0);
    v16 = *(v9 - 8);
    sub_1D1CE6DD4(v8 + *(v16 + 72) * v7, a2, type metadata accessor for StaticCharacteristic);
    v10 = *(v16 + 56);
    v11 = a2;
    v12 = 0;
    v13 = v9;
  }

  else
  {
    v14 = type metadata accessor for StaticCharacteristic(0);
    v10 = *(*(v14 - 8) + 56);
    v13 = v14;
    v11 = a2;
    v12 = 1;
  }

  return v10(v11, v12, 1, v13);
}

Swift::Bool __swiftcall StaticCharacteristicsBag.isReachable(for:)(HomeDataModel::ServiceKind a1)
{
  v2 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v50 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v48 - v6;
  v61 = type metadata accessor for StaticCharacteristic(0);
  MEMORY[0x1EEE9AC00](v61);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v1;
  v13 = *(*v1 + 64);
  v12 = *v1 + 64;
  v11 = v13;
  v14 = 1 << *(v10 + 32);
  v62 = *v2;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & v11;
  v63 = v9;
  v51 = v9 + 24;
  v17 = (v14 + 63) >> 6;
  v54 = 0x80000001D1EB34F0;
  v52 = 0x80000001D1EB3930;
  v49 = (v7 + 56);
  v60 = v7;
  v48 = (v7 + 48);

  v19 = 0;
  v57 = v17;
  v58 = v12;
  v59 = v10;
  while (v16)
  {
LABEL_12:
    v21 = *(v10 + 56);
    v56 = *(v60 + 72);
    sub_1D1CE6DD4(v21 + v56 * (__clz(__rbit64(v16)) | (v19 << 6)), v63, type metadata accessor for StaticCharacteristic);
    v66 = v62;
    v22 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
    if (!*(v22 + 16) || (v55 = *(v61 + 20), v23 = v63[v55], sub_1D1E6920C(), v64 = v23, CharacteristicKind.rawValue.getter(), sub_1D1E678EC(), , v24 = sub_1D1E6926C(), v25 = -1 << *(v22 + 32), v26 = v24 & ~v25, ((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0))
    {
LABEL_5:

      v10 = v59;
      goto LABEL_6;
    }

    v27 = ~v25;
    while (1)
    {
      v65[0] = *(*(v22 + 48) + v26);
      v64 = v23;
      v28 = CharacteristicKind.rawValue.getter();
      v30 = v29;
      if (v28 == CharacteristicKind.rawValue.getter() && v30 == v31)
      {
        break;
      }

      v33 = sub_1D1E6904C();

      if (v33)
      {
        goto LABEL_23;
      }

      v26 = (v26 + 1) & v27;
      if (((*(v22 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

LABEL_23:

    v65[0] = v62;
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && v54 == v34)
    {

      v10 = v59;
    }

    else
    {
      v35 = sub_1D1E6904C();

      v10 = v59;
      if ((v35 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    v65[0] = v63[v55];
    if (CharacteristicKind.rawValue.getter() == 0xD000000000000024 && v52 == v36)
    {
    }

    else
    {
      v37 = sub_1D1E6904C();

      if ((v37 & 1) == 0)
      {
        goto LABEL_59;
      }
    }

    if (*(v10 + 16))
    {
      v38 = sub_1D171D140(3);
      if (v39)
      {
        sub_1D1CE6DD4(*(v10 + 56) + v38 * v56, v53, type metadata accessor for StaticCharacteristic);
        v40 = 0;
      }

      else
      {
        v40 = 1;
      }
    }

    else
    {
      v40 = 1;
    }

    v41 = v53;
    v42 = v61;
    (*v49)(v53, v40, 1, v61);
    v43 = v50;
    sub_1D1741C08(v41, v50, &qword_1EC643630, &qword_1D1E71D10);
    if ((*v48)(v43, 1, v42) == 1)
    {
      sub_1D1741A30(v41, &qword_1EC643630, &qword_1D1E71D10);
      sub_1D1741A30(v43, &qword_1EC643630, &qword_1D1E71D10);
      goto LABEL_59;
    }

    v44 = v43 + *(v42 + 24);
    v45 = *v44;
    v46 = *(v44 + 16);
    if (v46 <= 2)
    {
      if (!v46)
      {
        sub_1D1741A30(v53, &qword_1EC643630, &qword_1D1E71D10);
        sub_1D1CE6D74(v43, type metadata accessor for StaticCharacteristic);
        if ((v45 & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_59;
      }

      if (v46 == 1)
      {
        v45 = v45;
      }

      else
      {
        v45 = v45;
      }

LABEL_54:
      v18 = v53;
      goto LABEL_55;
    }

    if (v46 <= 4)
    {
      if (v46 == 3)
      {
        v45 = v45;
        goto LABEL_54;
      }

      v18 = v53;
      if ((v45 & 0x8000000000000000) != 0)
      {
        goto LABEL_63;
      }

LABEL_55:
      sub_1D1741A30(v18, &qword_1EC643630, &qword_1D1E71D10);
      if (v45 <= 1)
      {
        sub_1D1CE6D74(v50, type metadata accessor for StaticCharacteristic);
        if (v45 != 1)
        {
          goto LABEL_6;
        }

        goto LABEL_59;
      }

      goto LABEL_58;
    }

    if (v46 == 6 || v46 == 5)
    {
      v45 = v45;
      goto LABEL_54;
    }

    sub_1D1741A30(v53, &qword_1EC643630, &qword_1D1E71D10);
LABEL_58:
    sub_1D1CE6D74(v50, type metadata accessor for StaticCharacteristic);
LABEL_59:
    if (v51[*(v61 + 32)] == 2)
    {

      sub_1D1CE6D74(v63, type metadata accessor for StaticCharacteristic);
      LOBYTE(v18) = 0;
      return v18;
    }

LABEL_6:
    v16 &= v16 - 1;
    LOBYTE(v18) = sub_1D1CE6D74(v63, type metadata accessor for StaticCharacteristic);
    v17 = v57;
    v12 = v58;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v20 >= v17)
    {

      LOBYTE(v18) = 1;
      return v18;
    }

    v16 = *(v12 + 8 * v20);
    ++v19;
    if (v16)
    {
      v19 = v20;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_63:
  __break(1u);
  return v18;
}

void StaticCharacteristicsBag.isUpdating(for:)(void *a1)
{
  v3 = type metadata accessor for StaticCharacteristic(0);
  v4 = *(v3 - 8);
  v28 = v3;
  v29 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = *v1;
  v7 = v6 + 64;
  v8 = 1 << *(v6 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v6 + 64);
  v27 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 24;
  v11 = (v8 + 63) >> 6;
  v33 = a1;
  v31 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = a1 + 7;
  swift_bridgeObjectRetain_n();
  v12 = 0;
  v30 = v6;
  while (v10)
  {
LABEL_13:
    sub_1D1CE6DD4(*(v6 + 56) + *(v29 + 72) * (__clz(__rbit64(v10)) | (v12 << 6)), v31, type metadata accessor for StaticCharacteristic);
    if (v33[2])
    {
      v14 = *(v31 + *(v28 + 20));
      v15 = v33;
      sub_1D1E6920C();
      v34 = v14;
      CharacteristicKind.rawValue.getter();
      sub_1D1E678EC();

      v16 = sub_1D1E6926C();
      v17 = -1 << *(v15 + 32);
      v18 = v16 & ~v17;
      if ((*(v32 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
      {
        v19 = ~v17;
        while (1)
        {
          LOBYTE(v35[0]) = *(v33[6] + v18);
          v34 = v14;
          v20 = CharacteristicKind.rawValue.getter();
          v22 = v21;
          if (v20 == CharacteristicKind.rawValue.getter() && v22 == v23)
          {
            break;
          }

          v25 = sub_1D1E6904C();

          if (v25)
          {
            goto LABEL_6;
          }

          v18 = (v18 + 1) & v19;
          if (((*(v32 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        if (!v27[*(v28 + 32)])
        {

          sub_1D1CE6D74(v31, type metadata accessor for StaticCharacteristic);
LABEL_24:

          return;
        }
      }
    }

LABEL_7:
    v10 &= v10 - 1;
    sub_1D1CE6D74(v31, type metadata accessor for StaticCharacteristic);
    v6 = v30;
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

      goto LABEL_24;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t StaticCharacteristicsBag.staticCharacteristic(for:)@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;

  sub_1D1747C74(sub_1D1CC3E9C, v3, a1);
}

Swift::Bool_optional __swiftcall StaticCharacteristicsBag.BOOL(for:)(HomeDataModel::CharacteristicKind a1)
{
  v2 = *a1;
  v5 = *v1;
  v4 = v2;
  return sub_1D1CE4920(&v4);
}

Swift::Int_optional __swiftcall StaticCharacteristicsBag.int(for:)(HomeDataModel::CharacteristicKind a1)
{
  v2 = a1;
  v3 = type metadata accessor for StaticCharacteristic(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33[-v8];
  v10 = *v2;
  v11 = *v1;
  v36 = v10;
  if (CharacteristicKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3AB0 == v12)
  {
  }

  else
  {
    v13 = sub_1D1E6904C();

    if ((v13 & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  if (!*(v11 + 16) || (v14 = sub_1D171D140(v10), (v15 & 1) == 0))
  {
LABEL_26:
    if (!*(v11 + 16) || (v22 = sub_1D171D140(v10), (v23 & 1) == 0))
    {
      v21 = 0;
      v20 = 1;
      goto LABEL_52;
    }

    v21 = sub_1D1CE6DD4(*(v11 + 56) + *(v4 + 72) * v22, v7, type metadata accessor for StaticCharacteristic);
    v24 = &v7[*(v3 + 24)];
    v25 = *v24;
    v26 = v24[16];
    if (v26 > 3)
    {
      if (v26 == 4)
      {
        if (v25 < 0)
        {
          __break(1u);
          goto LABEL_52;
        }

        v32 = 0;
        goto LABEL_48;
      }

      v27 = v25;
      if (v26 == 5)
      {
        v28 = v25;
      }

      else
      {
        v28 = 0;
      }

      v30 = v26 != 5;
      v31 = v26 == 6;
    }

    else
    {
      v27 = v25;
      v28 = v25;
      v29 = v25;
      if (v26 == 3)
      {
        v30 = 0;
      }

      else
      {
        v29 = 0;
        v30 = 1;
      }

      if (v26 == 2)
      {
        v30 = 0;
      }

      else
      {
        v28 = v29;
      }

      v31 = v26 == 1;
    }

    if (v31)
    {
      v25 = v27;
    }

    else
    {
      v25 = v28;
    }

    v32 = !v31 && v30;
LABEL_48:
    sub_1D1CE6D74(v7, type metadata accessor for StaticCharacteristic);
    v21 = v25;
    v20 = v32;
    goto LABEL_52;
  }

  sub_1D1CE6DD4(*(v11 + 56) + *(v4 + 72) * v14, v9, type metadata accessor for StaticCharacteristic);
  v16 = &v9[*(v3 + 24)];
  v17 = *v16;
  v18 = v16[16];
  if (v18 > 3)
  {
    if (v18 == 4)
    {
      if ((v17 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

      __break(1u);
    }

    else if (v18 == 6 || v18 == 5)
    {
      v17 = v17;
      goto LABEL_21;
    }

LABEL_19:
    sub_1D1CE6D74(v9, type metadata accessor for StaticCharacteristic);
    goto LABEL_26;
  }

  if (v18 == 1)
  {
    v17 = v17;
    goto LABEL_21;
  }

  if (v18 == 2)
  {
    v17 = v17;
    goto LABEL_21;
  }

  if (v18 != 3)
  {
    goto LABEL_19;
  }

  v17 = v17;
LABEL_21:
  sub_1D1CE6D74(v9, type metadata accessor for StaticCharacteristic);
  v35 = v11;
  v34 = 105;
  v19 = sub_1D1CE4920(&v34);
  if (v19 == 2 || (v19 & 1) == 0)
  {
    goto LABEL_26;
  }

  v20 = 0;
  if (v17)
  {
    v21 = v17;
  }

  else
  {
    v21 = 100;
  }

LABEL_52:
  result.value = v21;
  result.is_nil = v20;
  return result;
}

Swift::Double_optional __swiftcall StaticCharacteristicsBag.double(for:)(HomeDataModel::CharacteristicKind a1)
{
  v2 = *a1;
  v6 = *v1;
  v5 = v2;
  v4 = sub_1D1CE53A4(&v5);
  result.value = v4;
  result.is_nil = v3;
  return result;
}

Swift::String_optional __swiftcall StaticCharacteristicsBag.string(for:)(HomeDataModel::CharacteristicKind a1)
{
  v2 = a1;
  v3 = type metadata accessor for StaticCharacteristic(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (*(v7 + 16) && (v8 = sub_1D171D140(*v2), (v9 & 1) != 0))
  {
    sub_1D1CE6DD4(*(v7 + 56) + *(v4 + 72) * v8, v6, type metadata accessor for StaticCharacteristic);
    v10 = &v6[*(v3 + 24)];
    if (v10[16] == 8)
    {
      v11 = *v10;
      v12 = *(v10 + 1);
    }

    else
    {
      v11 = 0;
      v12 = 0;
    }

    sub_1D1CE6D74(v6, type metadata accessor for StaticCharacteristic);
    v13 = v11;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  result.value._object = v14;
  result.value._countAndFlagsBits = v13;
  return result;
}

uint64_t StaticCharacteristicsBag.data(for:)(unsigned __int8 *a1)
{
  v3 = type metadata accessor for StaticCharacteristic(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = sub_1D171D140(*a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_1D1CE6DD4(*(v7 + 56) + *(v4 + 72) * v8, v6, type metadata accessor for StaticCharacteristic);
  v10 = &v6[*(v3 + 24)];
  if (v10[16] == 10)
  {
    v11 = *v10;
    sub_1D1741854(*v10, *(v10 + 1));
  }

  else
  {
    v11 = 0;
  }

  sub_1D1CE6D74(v6, type metadata accessor for StaticCharacteristic);
  return v11;
}

uint64_t sub_1D1CE15C8(uint64_t a1)
{
  v3 = type metadata accessor for StaticCharacteristic(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  if (!*(v7 + 16))
  {
    return 0;
  }

  v8 = sub_1D171D140(a1);
  if ((v9 & 1) == 0)
  {
    return 0;
  }

  sub_1D1CE6DD4(*(v7 + 56) + *(v4 + 72) * v8, v6, type metadata accessor for StaticCharacteristic);
  v10 = &v6[*(v3 + 24)];
  if (v10[16] == 8)
  {
    v11 = *v10;
  }

  else
  {
    v11 = 0;
  }

  sub_1D1CE6D74(v6, type metadata accessor for StaticCharacteristic);
  return v11;
}

uint64_t sub_1D1CE1860(char a1)
{
  v4 = *v1;
  v3 = a1;
  return sub_1D1CE4920(&v3);
}

Swift::Int sub_1D1CE19D0(char a1)
{
  v4 = *v1;
  v3 = a1;
  v5 = StaticCharacteristicsBag.int(for:)(&v3);
  if (v5.is_nil)
  {
    v5.value = 0;
  }

  return v5.value;
}

uint64_t sub_1D1CE1A70(char a1, uint64_t (*a2)(char *))
{
  v5 = *v2;
  v4 = a1;
  return a2(&v4);
}

uint64_t StaticCharacteristicsBag.init(updateType:from:previousStaticCharacteristicsBag:coverages:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void **a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v392 = a5;
  v390 = sub_1D1E66A7C();
  v9 = *(v390 - 8);
  v10 = MEMORY[0x1EEE9AC00](v390);
  v389 = &v363 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v388 = (&v363 - v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v386 = &v363 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v385 = &v363 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v383 = &v363 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v387 = &v363 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v384 = &v363 - v22;
  v391 = type metadata accessor for StaticCharacteristic(0);
  v23 = *(v391 - 8);
  v24 = MEMORY[0x1EEE9AC00](v391);
  v382 = (&v363 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x1EEE9AC00](v24);
  v381 = (&v363 - v27);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v30 = &v363 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v380 = (&v363 - v31);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v34 = &v363 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a3;
  v36 = sub_1D1CC911C(a4);

  if ((v36 & 1) == 0)
  {

    v48 = sub_1D18DB9B4(MEMORY[0x1E69E7CC0]);

    goto LABEL_223;
  }

  sub_1D1CE6DD4(a1, v34, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1D1CE6D74(v34, type metadata accessor for StateSnapshot.UpdateType);
LABEL_13:
    v50 = HMService.supportedCharacteristicKinds.getter();
    MEMORY[0x1EEE9AC00](v50);
    *(&v363 - 4) = a2;
    *(&v363 - 3) = v35;
    *(&v363 - 2) = a1;
    v51 = sub_1D1789A74(sub_1D1CE6E3C, (&v363 - 3), v50);

    if (v51[2])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A28, &qword_1D1E6E780);
      v52 = sub_1D1E68BCC();
    }

    else
    {
      v52 = MEMORY[0x1E69E7CC8];
    }

    *&v400 = v52;
    sub_1D1CE89D4(v51, 1, &v400);

    v48 = v400;
    goto LABEL_223;
  }

  v37 = *(v34 + 1);
  v379 = *v34;
  v38 = v34[16];
  if (!v35)
  {
    sub_1D1AC373C(v379, v37, v38);
    goto LABEL_13;
  }

  v377 = v37;
  if (v38 <= 1)
  {
    if (!v38)
    {
      v53 = a2;
      v54 = v379;
      v55 = v377;
      sub_1D1CC5310(v379, v377, 0);
      v56 = sub_1D1CE7C5C(v54, v53);

      MEMORY[0x1EEE9AC00](v57);
      *(&v363 - 4) = v53;
      *(&v363 - 3) = v35;
      *(&v363 - 2) = a1;

      sub_1D1C9282C(v58, sub_1D1CE8DF0, (&v363 - 3), v56);
      v48 = v59;

      sub_1D1AC373C(v54, v55, 0);

      goto LABEL_223;
    }

    v374 = a1;
    v272 = a2;
    v273 = sub_1D1CE84CC(v379, v272);
    v383 = v272;

    v274 = v273 + 64;
    v275 = 1 << v273[32];
    v276 = -1;
    if (v275 < 64)
    {
      v276 = ~(-1 << v275);
    }

    v277 = v276 & *(v273 + 8);
    v278 = (v275 + 63) >> 6;
    v382 = (v23 + 48);
    v381 = (v23 + 56);
    v389 = v273;

    v279 = 0;
    *&v280 = 138412290;
    v376 = v280;
    v48 = v35;
    v385 = v278;
    if (v277)
    {
      goto LABEL_184;
    }

    do
    {
LABEL_180:
      v281 = v279 + 1;
      if (__OFADD__(v279, 1))
      {
        goto LABEL_227;
      }

      if (v281 >= v278)
      {

        sub_1D1AC373C(v379, v377, 1u);
        goto LABEL_221;
      }

      v277 = *&v274[8 * v281];
      ++v279;
    }

    while (!v277);
    v279 = v281;
    while (1)
    {
LABEL_184:
      v282 = __clz(__rbit64(v277)) | (v279 << 6);
      v283 = *(*(v389 + 48) + 8 * v282);
      v284 = *(v389 + 56) + 32 * v282;
      v286 = *v284;
      v285 = *(v284 + 8);
      v287 = *(v284 + 16);
      v288 = *(v284 + 24);
      v289 = v283;
      v390 = v285;
      sub_1D17418FC(v286, v285, v287, v288);
      if ([v289 value])
      {
        sub_1D1E6866C();
        swift_unknownObjectRelease();
      }

      else
      {
        v400 = 0u;
        v401 = 0u;
      }

      v290 = v289;
      v291 = v390;
      sub_1D17418FC(v286, v390, v287, v288);

      v292 = [v290 service];
      v293 = v288;
      if (!v292)
      {
        break;
      }

      v294 = v292;
      v295 = v286;
      v388 = v287;
      LODWORD(v386) = v293;
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v296 = v383;
      v297 = sub_1D1E684FC();

      if ((v297 & 1) == 0)
      {

        v344 = v390;
        v287 = v388;
        LOBYTE(v293) = v386;
        sub_1D1757A60(v286, v390, v388, v386);
        v342 = v286;
        v343 = v344;
        goto LABEL_205;
      }

      v378 = v48;
      v298 = [v296 serviceType];
      v299 = sub_1D1E6781C();
      v301 = v300;

      v302._countAndFlagsBits = v299;
      v302._object = v301;
      ServiceKind.init(rawValue:)(v302);
      v303 = v397;
      if (v397 == 53)
      {
        v303 = 0;
      }

      LOBYTE(v397) = v303;
      v304 = ServiceKind.requiredCharacteristicKinds.getter();
      v305 = [v296 serviceType];
      v306 = sub_1D1E6781C();
      v308 = v307;

      v309._countAndFlagsBits = v306;
      v309._object = v308;
      ServiceKind.init(rawValue:)(v309);
      v310 = v393;
      if (v393 == 53)
      {
        v310 = 0;
      }

      LOBYTE(v393) = v310;
      v311 = ServiceKind.optionalCharacteristicKinds.getter();
      v312 = sub_1D18C0104(v311, v304);
      v313 = [v290 characteristicType];
      v314 = sub_1D1E6781C();
      v316 = v315;

      v317._countAndFlagsBits = v314;
      v317._object = v316;
      CharacteristicKind.init(rawValue:)(v317);
      if (v397 == 174)
      {
        v318 = 0;
      }

      else
      {
        v318 = v397;
      }

      v319 = sub_1D171974C(v318, v312);

      if (v319)
      {
        v399 = v378;
        sub_1D1741C08(&v400, &v397, &qword_1EC649700, &qword_1D1E6E910);
        v320 = v390;
        v393 = v286;
        v394 = v390;
        v321 = v388;
        v395 = v388;
        v322 = v386;
        v396 = v386;
        v323 = v290;
        v324 = v320;
        v325 = v323;
        sub_1D17418FC(v295, v320, v321, v322);

        v326 = v384;
        StaticCharacteristic.init(from:value:loadingState:)(v325, &v397, &v393, v384);
        v327 = v391;
        if ((*v382)(v326, 1, v391) != 1)
        {
          v348 = v380;
          sub_1D1CE8D8C(v326, v380);
          v349 = [v325 characteristicType];
          v350 = sub_1D1E6781C();
          *&v375 = v325;
          v351 = v327;
          v353 = v352;

          v354._countAndFlagsBits = v350;
          v354._object = v353;
          CharacteristicKind.init(rawValue:)(v354);
          v355 = v397;
          if (v397 == 174)
          {
            v355 = 0;
          }

          LODWORD(v373) = v355;
          v356 = v322;
          v357 = v387;
          sub_1D1CE6DD4(v348, v387, type metadata accessor for StaticCharacteristic);
          (*v381)(v357, 0, 1, v351);
          sub_1D1B0F194(v357, v373);
          sub_1D1CE6D74(v348, type metadata accessor for StaticCharacteristic);

          v358 = v390;
          v359 = v388;
          sub_1D1757A60(v295, v390, v388, v356);
          v338 = v295;
          v339 = v358;
          v340 = v359;
          v341 = v356;
          goto LABEL_216;
        }

        sub_1D1741A30(v326, &qword_1EC643630, &qword_1D1E71D10);
        if ([v325 value])
        {
          sub_1D1E6866C();
          swift_unknownObjectRelease();
          sub_1D1741A30(&v397, &qword_1EC649700, &qword_1D1E6E910);
          if (qword_1EE07B5D0 != -1)
          {
            swift_once();
          }

          v328 = sub_1D1E6709C();
          __swift_project_value_buffer(v328, qword_1EE07B5D8);
          v329 = v325;
          v330 = sub_1D1E6707C();
          v331 = sub_1D1E6833C();

          if (os_log_type_enabled(v330, v331))
          {
            v332 = swift_slowAlloc();
            v333 = v322;
            v334 = swift_slowAlloc();
            *v332 = v376;
            *(v332 + 4) = v329;
            *v334 = v329;
            v335 = v329;
            _os_log_impl(&dword_1D16EC000, v330, v331, "updatedCharacteristicValuesDictionary() unable to slurp value for characteristic %@", v332, 0xCu);
            sub_1D1741A30(v334, &unk_1EC644000, &unk_1D1E75B00);
            MEMORY[0x1D3893640](v334, -1, -1);
            MEMORY[0x1D3893640](v332, -1, -1);

            v336 = v390;
            v337 = v388;
            sub_1D1757A60(v295, v390, v388, v333);
            v338 = v295;
            v339 = v336;
            v340 = v337;
            v341 = v333;
LABEL_216:
            sub_1D1757A60(v338, v339, v340, v341);
            v278 = v385;
            v48 = v399;
            goto LABEL_207;
          }

          v360 = v390;
          v361 = v388;
          sub_1D1757A60(v295, v390, v388, v322);
          v338 = v295;
          v339 = v360;
          v340 = v361;
        }

        else
        {
          v397 = 0u;
          v398 = 0u;
          sub_1D1741A30(&v397, &qword_1EC649700, &qword_1D1E6E910);

          sub_1D1757A60(v295, v324, v321, v322);
          v338 = v295;
          v339 = v324;
          v340 = v321;
        }

        v341 = v322;
        goto LABEL_216;
      }

      v345 = v390;
      v346 = v388;
      v347 = v386;
      sub_1D1757A60(v286, v390, v388, v386);
      sub_1D1757A60(v286, v345, v346, v347);
      v48 = v378;
LABEL_206:
      v278 = v385;
LABEL_207:
      v277 &= v277 - 1;
      sub_1D1741A30(&v400, &qword_1EC649700, &qword_1D1E6E910);
      if (!v277)
      {
        goto LABEL_180;
      }
    }

    sub_1D1757A60(v286, v291, v287, v288);
    v342 = v286;
    v343 = v291;
LABEL_205:
    sub_1D1757A60(v342, v343, v287, v293);
    goto LABEL_206;
  }

  v374 = a1;
  if (v38 == 2)
  {
    v113 = a2;
    v114 = sub_1D1CE868C(v379, v113);
    v382 = v113;

    v115 = v114 + 8;
    v116 = 1 << *(v114 + 32);
    v117 = -1;
    if (v116 < 64)
    {
      v117 = ~(-1 << v116);
    }

    v118 = v117 & v114[8];
    v119 = (v116 + 63) >> 6;
    v380 = (v23 + 48);
    *&v376 = v23 + 56;

    v120 = 0;
    v121 = 0;
    *&v122 = 138412290;
    v375 = v122;
    v48 = v35;
    v384 = v119;
    v381 = v114;
    while (1)
    {
      if (v118)
      {
        goto LABEL_76;
      }

      do
      {
        v123 = v121 + 1;
        if (__OFADD__(v121, 1))
        {
          __break(1u);
          goto LABEL_225;
        }

        if (v123 >= v119)
        {

          sub_1D1AC373C(v379, v377, 2u);
LABEL_221:

          goto LABEL_222;
        }

        v118 = v115[v123];
        ++v121;
      }

      while (!v118);
      v121 = v123;
LABEL_76:
      v124 = __clz(__rbit64(v118)) | (v121 << 6);
      v125 = *(v114[6] + 8 * v124);
      v126 = v114[7] + 24 * v124;
      v128 = *v126;
      v127 = *(v126 + 8);
      v129 = *(v126 + 16);
      LODWORD(v390) = v129;
      v388 = v128;
      v389 = v127;
      if (v129 > 2)
      {
        if (v129 == 3)
        {
          v120 = v128 >> 8;
          sub_1D1741830(v128, v127, 3);

          v131 = MEMORY[0x1E69E6158];
        }

        else if (v129 == 4)
        {
          v120 = v128 >> 8;
          sub_1D1741830(v128, v127, 4);
          sub_1D1741854(v128, v127);
          v131 = MEMORY[0x1E6969080];
        }

        else
        {
          v120 = 0;
          LOBYTE(v128) = 0;
          v131 = 0;
          v127 = 0;
        }
      }

      else
      {
        v130 = MEMORY[0x1E69E63B0];
        if (v129 != 1)
        {
          v130 = MEMORY[0x1E69E6530];
        }

        if (v129)
        {
          v120 = v128 >> 8;
        }

        else
        {
          LOBYTE(v128) = v128 & 1;
        }

        v131 = MEMORY[0x1E69E6370];
        if (v129)
        {
          v131 = v130;
        }

        v127 = v386;
      }

      *&v400 = v128 | (v120 << 8);
      *(&v400 + 1) = v127;
      v386 = v127;
      *&v401 = 0;
      *(&v401 + 1) = v131;
      v132 = v125;
      v133 = [v132 service];
      if (!v133)
      {

        sub_1D1778940(v388, v389, v390);
        goto LABEL_70;
      }

      v134 = v133;
      v385 = v120;
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v135 = v382;
      v136 = sub_1D1E684FC();

      if ((v136 & 1) == 0)
      {

        sub_1D1778940(v388, v389, v390);
LABEL_109:
        v114 = v381;
        v120 = v385;
        goto LABEL_70;
      }

      v378 = v48;
      v137 = [v135 serviceType];
      v138 = sub_1D1E6781C();
      v140 = v139;

      v141._countAndFlagsBits = v138;
      v141._object = v140;
      ServiceKind.init(rawValue:)(v141);
      v142 = v397;
      if (v397 == 53)
      {
        v142 = 0;
      }

      LOBYTE(v397) = v142;
      v143 = ServiceKind.requiredCharacteristicKinds.getter();
      v144 = [v135 serviceType];
      v145 = sub_1D1E6781C();
      v147 = v146;

      v148._countAndFlagsBits = v145;
      v148._object = v147;
      ServiceKind.init(rawValue:)(v148);
      v149 = v393;
      if (v393 == 53)
      {
        v149 = 0;
      }

      LOBYTE(v393) = v149;
      v150 = ServiceKind.optionalCharacteristicKinds.getter();
      v151 = sub_1D18C0104(v150, v143);
      v152 = [v132 characteristicType];
      v153 = sub_1D1E6781C();
      v155 = v154;

      v156._countAndFlagsBits = v153;
      v156._object = v155;
      CharacteristicKind.init(rawValue:)(v156);
      if (v397 == 174)
      {
        v157 = 0;
      }

      else
      {
        v157 = v397;
      }

      v158 = sub_1D171974C(v157, v151);

      if ((v158 & 1) == 0)
      {

        sub_1D1778940(v388, v389, v390);
        v48 = v378;
        goto LABEL_109;
      }

      v399 = v378;
      sub_1D1741C08(&v400, &v397, &qword_1EC649700, &qword_1D1E6E910);
      v393 = 0;
      v394 = 0;
      v395 = 0;
      v396 = 1;
      v159 = v132;

      v160 = v383;
      StaticCharacteristic.init(from:value:loadingState:)(v159, &v397, &v393, v383);
      if ((*v380)(v160, 1, v391) != 1)
      {
        sub_1D1CE8D8C(v160, v30);
        v167 = [v159 characteristicType];
        v168 = sub_1D1E6781C();
        v170 = v169;

        v171._countAndFlagsBits = v168;
        v171._object = v170;
        CharacteristicKind.init(rawValue:)(v171);
        if (v397 == 174)
        {
          v172 = 0;
        }

        else
        {
          v172 = v397;
        }

        v173 = v387;
        sub_1D1CE6DD4(v30, v387, type metadata accessor for StaticCharacteristic);
        (*v376)(v173, 0, 1, v391);
        sub_1D1B0F194(v173, v172);
        sub_1D1CE6D74(v30, type metadata accessor for StaticCharacteristic);

        goto LABEL_115;
      }

      sub_1D1741A30(v160, &qword_1EC643630, &qword_1D1E71D10);
      if (![v159 value])
      {
        v397 = 0u;
        v398 = 0u;
        sub_1D1741A30(&v397, &qword_1EC649700, &qword_1D1E6E910);

LABEL_115:

        goto LABEL_116;
      }

      sub_1D1E6866C();
      swift_unknownObjectRelease();
      sub_1D1741A30(&v397, &qword_1EC649700, &qword_1D1E6E910);
      if (qword_1EE07B5D0 != -1)
      {
        swift_once();
      }

      v161 = sub_1D1E6709C();
      __swift_project_value_buffer(v161, qword_1EE07B5D8);
      v162 = v159;
      v163 = sub_1D1E6707C();
      v164 = sub_1D1E6833C();

      if (os_log_type_enabled(v163, v164))
      {
        v165 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        *v165 = v375;
        *(v165 + 4) = v162;
        *v166 = v162;
        v162 = v162;
        _os_log_impl(&dword_1D16EC000, v163, v164, "updatedCharacteristicValuesDictionary() unable to slurp value for characteristic %@", v165, 0xCu);
        sub_1D1741A30(v166, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v166, -1, -1);
        MEMORY[0x1D3893640](v165, -1, -1);
      }

LABEL_116:
      sub_1D1778940(v388, v389, v390);
      v114 = v381;
      v120 = v385;
      v48 = v399;
LABEL_70:
      v119 = v384;
      v118 &= v118 - 1;
      sub_1D1741A30(&v400, &qword_1EC649700, &qword_1D1E6E910);
    }
  }

  if (v38 != 3)
  {
    v174 = a2;
    v175 = sub_1D1CE868C(v379, v174);
    v368 = v174;

    v176 = v175 + 8;
    v177 = 1 << *(v175 + 32);
    v178 = -1;
    if (v177 < 64)
    {
      v178 = ~(-1 << v177);
    }

    v179 = v178 & v175[8];
    v180 = (v177 + 63) >> 6;
    v370 = *MEMORY[0x1E696CA80];
    v367 = (v9 + 32);
    v366 = (v9 + 8);
    v365 = (v23 + 48);
    v364 = (v23 + 56);
    v372 = v175;

    v383 = 0;
    v181 = 0;
    *&v182 = 138412290;
    v363 = v182;
    v48 = v35;
    v369 = v180;
    while (1)
    {
      if (!v179)
      {
        v188 = v383;
        while (1)
        {
          v189 = v181 + 1;
          if (__OFADD__(v181, 1))
          {
            goto LABEL_226;
          }

          if (v189 >= v180)
          {
            break;
          }

          v179 = v176[v189];
          ++v181;
          if (v179)
          {
            v187 = v48;
            v181 = v189;
            goto LABEL_130;
          }
        }

        sub_1D1AC373C(v379, v377, 4u);

LABEL_222:
        a1 = v374;
LABEL_223:
        *v392 = v48;
        return sub_1D1CE6D74(a1, type metadata accessor for StateSnapshot.UpdateType);
      }

      v187 = v48;
      v188 = v383;
LABEL_130:
      v190 = __clz(__rbit64(v179)) | (v181 << 6);
      v191 = *(v372[6] + 8 * v190);
      v192 = v372[7] + 24 * v190;
      v194 = *v192;
      v193 = *(v192 + 8);
      v195 = *(v192 + 16);
      *&v376 = sub_1D1E6781C();
      v380 = v196;
      v197 = v191;
      v384 = v194;
      v381 = v193;
      LODWORD(v385) = v195;
      sub_1D1741830(v194, v193, v195);
      v198 = [v197 service];
      if (!v198 || (v199 = v198, v200 = [v198 accessory], v199, !v200))
      {
        v208 = 2;
        *&v375 = 4;
        v48 = v187;
        v180 = v369;
        goto LABEL_140;
      }

      v201 = [v200 uniqueIdentifier];

      v202 = v389;
      sub_1D1E66A5C();

      v203 = v388;
      (*v367)(v388, v202, v390);
      v204 = v377;
      if (!*(v377 + 16))
      {
        break;
      }

      v205 = sub_1D1742188();
      if ((v206 & 1) == 0)
      {
        break;
      }

      v207 = *(*(v204 + 56) + v205);
      (*v366)(v203, v390);
      v180 = v369;
      if (v207 != 1)
      {
        goto LABEL_138;
      }

      *&v376 = 0;
      v380 = 0;
      v208 = 3;
      v209 = 1;
LABEL_139:
      *&v375 = v209;
      v48 = v187;
LABEL_140:
      if (v385 > 2)
      {
        if (v385 == 3)
        {
          v216 = v384;
          v188 = v384 >> 8;

          v212 = MEMORY[0x1E69E6158];
          v210 = v216;
        }

        else if (v385 == 4)
        {
          v214 = v384;
          v188 = v384 >> 8;
          v383 = v197;
          v215 = v381;
          sub_1D1741854(v384, v381);
          v213 = v215;
          v197 = v383;
          v212 = MEMORY[0x1E6969080];
          v210 = v214;
        }

        else
        {
          v213 = 0;
          v212 = 0;
          v210 = 0;
          v188 = 0;
        }
      }

      else
      {
        v210 = v384 & 1;
        v211 = MEMORY[0x1E69E63B0];
        if (v385 != 1)
        {
          v211 = MEMORY[0x1E69E6530];
        }

        v212 = MEMORY[0x1E69E6370];
        if (v385)
        {
          v212 = v211;
          v210 = v384;
          v188 = v384 >> 8;
        }

        v213 = v373;
      }

      v383 = v188;
      *&v400 = v210 | (v188 << 8);
      *(&v400 + 1) = v213;
      v373 = v213;
      *&v401 = 0;
      *(&v401 + 1) = v212;
      v217 = [v197 service];
      if (!v217)
      {

        sub_1D1778940(v384, v381, v385);
        v183 = v375;
        v184 = v376;
        v185 = v380;
        v186 = v208;
LABEL_121:
        sub_1D1757A60(v183, v184, v185, v186);
        goto LABEL_122;
      }

      v218 = v217;
      v371 = v208;
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v219 = v368;
      v220 = sub_1D1E684FC();

      if ((v220 & 1) == 0)
      {

        sub_1D1778940(v384, v381, v385);
        v183 = v375;
        v184 = v376;
        v185 = v380;
        v186 = v371;
        goto LABEL_121;
      }

      v378 = v48;
      v221 = [v219 serviceType];
      v222 = sub_1D1E6781C();
      v224 = v223;

      v225._countAndFlagsBits = v222;
      v225._object = v224;
      ServiceKind.init(rawValue:)(v225);
      v226 = v397;
      if (v397 == 53)
      {
        v226 = 0;
      }

      LOBYTE(v397) = v226;
      v227 = ServiceKind.requiredCharacteristicKinds.getter();
      v228 = [v219 serviceType];
      v229 = sub_1D1E6781C();
      v231 = v230;

      v232._countAndFlagsBits = v229;
      v232._object = v231;
      ServiceKind.init(rawValue:)(v232);
      v233 = v393;
      if (v393 == 53)
      {
        v233 = 0;
      }

      LOBYTE(v393) = v233;
      v234 = ServiceKind.optionalCharacteristicKinds.getter();
      v235 = sub_1D18C0104(v234, v227);
      v236 = [v197 characteristicType];
      v237 = sub_1D1E6781C();
      v239 = v238;

      v240._countAndFlagsBits = v237;
      v240._object = v239;
      CharacteristicKind.init(rawValue:)(v240);
      if (v397 == 174)
      {
        v241 = 0;
      }

      else
      {
        v241 = v397;
      }

      v242 = sub_1D171974C(v241, v235);

      if ((v242 & 1) == 0)
      {

        sub_1D1778940(v384, v381, v385);
        sub_1D1757A60(v375, v376, v380, v371);
        v48 = v378;
        goto LABEL_122;
      }

      v399 = v378;
      sub_1D1741C08(&v400, &v397, &qword_1EC649700, &qword_1D1E6E910);
      v243 = v375;
      v244 = v376;
      v393 = v375;
      v394 = v376;
      v245 = v380;
      v395 = v380;
      v246 = v371;
      v396 = v371;
      v247 = v197;
      v248 = v244;
      v249 = v247;
      v250 = v245;

      v251 = v243;
      v252 = v249;
      sub_1D17418FC(v251, v248, v245, v246);
      v253 = v386;
      StaticCharacteristic.init(from:value:loadingState:)(v252, &v397, &v393, v386);
      if ((*v365)(v253, 1, v391) != 1)
      {
        v264 = v382;
        sub_1D1CE8D8C(v253, v382);
        v265 = [v252 characteristicType];
        v266 = sub_1D1E6781C();
        *&v376 = v248;
        v268 = v267;

        v269._countAndFlagsBits = v266;
        v269._object = v268;
        CharacteristicKind.init(rawValue:)(v269);
        if (v397 == 174)
        {
          v270 = 0;
        }

        else
        {
          v270 = v397;
        }

        v380 = v250;
        v271 = v387;
        sub_1D1CE6DD4(v264, v387, type metadata accessor for StaticCharacteristic);
        (*v364)(v271, 0, 1, v391);
        sub_1D1B0F194(v271, v270);
        sub_1D1CE6D74(v264, type metadata accessor for StaticCharacteristic);

        sub_1D1778940(v384, v381, v385);
        v261 = v375;
        v262 = v376;
        v263 = v380;
        goto LABEL_176;
      }

      sub_1D1741A30(v253, &qword_1EC643630, &qword_1D1E71D10);
      if (![v252 value])
      {
        v397 = 0u;
        v398 = 0u;
        sub_1D1741A30(&v397, &qword_1EC649700, &qword_1D1E6E910);

        sub_1D1778940(v384, v381, v385);
        v261 = v375;
        v262 = v248;
LABEL_175:
        v263 = v245;
        goto LABEL_176;
      }

      sub_1D1E6866C();
      swift_unknownObjectRelease();
      sub_1D1741A30(&v397, &qword_1EC649700, &qword_1D1E6E910);
      if (qword_1EE07B5D0 != -1)
      {
        swift_once();
      }

      v254 = sub_1D1E6709C();
      __swift_project_value_buffer(v254, qword_1EE07B5D8);
      v255 = v252;
      v256 = sub_1D1E6707C();
      v257 = sub_1D1E6833C();

      if (!os_log_type_enabled(v256, v257))
      {

        sub_1D1778940(v384, v381, v385);
        v261 = v375;
        v262 = v376;
        goto LABEL_175;
      }

      v258 = swift_slowAlloc();
      v259 = swift_slowAlloc();
      *v258 = v363;
      *(v258 + 4) = v255;
      *v259 = v255;
      v260 = v255;
      _os_log_impl(&dword_1D16EC000, v256, v257, "updatedCharacteristicValuesDictionary() unable to slurp value for characteristic %@", v258, 0xCu);
      sub_1D1741A30(v259, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v259, -1, -1);
      MEMORY[0x1D3893640](v258, -1, -1);

      sub_1D1778940(v384, v381, v385);
      v261 = v375;
      v262 = v376;
      v263 = v245;
LABEL_176:
      sub_1D1757A60(v261, v262, v263, v371);
      v48 = v399;
LABEL_122:
      v179 &= v179 - 1;
      sub_1D1741A30(&v400, &qword_1EC649700, &qword_1D1E6E910);
    }

    (*v366)(v203, v390);
    v180 = v369;
LABEL_138:
    v208 = 2;
    v209 = 4;
    goto LABEL_139;
  }

  v39 = a2;
  v40 = sub_1D1CE868C(v379, v39);
  v383 = v39;

  v41 = v40 + 8;
  v42 = 1 << *(v40 + 32);
  v43 = -1;
  if (v42 < 64)
  {
    v43 = ~(-1 << v42);
  }

  v44 = v43 & v40[8];
  v45 = (v42 + 63) >> 6;
  v382 = (v23 + 48);
  v380 = (v23 + 56);
  v386 = v40;

  v46 = 0;
  *&v47 = 138412290;
  v376 = v47;
  v48 = v35;
  v49 = 0;
  while (v44)
  {
LABEL_26:
    v61 = __clz(__rbit64(v44)) | (v46 << 6);
    v62 = *(*(v386 + 48) + 8 * v61);
    v63 = *(v386 + 56) + 24 * v61;
    v65 = *v63;
    v64 = *(v63 + 8);
    v66 = *(v63 + 16);
    v389 = *v63;
    v390 = v64;
    if (v66 > 2)
    {
      if (v66 == 3)
      {
        v49 = v65 >> 8;
        sub_1D1741830(v65, v64, 3);

        v69 = MEMORY[0x1E69E6158];
      }

      else if (v66 == 4)
      {
        v49 = v65 >> 8;
        sub_1D1741830(v65, v64, 4);
        sub_1D1741854(v65, v64);
        v69 = MEMORY[0x1E6969080];
      }

      else
      {
        LOBYTE(v65) = 0;
        v69 = 0;
        v49 = 0;
        v64 = 0;
      }
    }

    else
    {
      v67 = MEMORY[0x1E69E63B0];
      if (v66 != 1)
      {
        v67 = MEMORY[0x1E69E6530];
      }

      v68 = v65 >> 8;
      if (!v66)
      {
        LOBYTE(v65) = v65 & 1;
      }

      v69 = MEMORY[0x1E69E6370];
      if (v66)
      {
        v69 = v67;
        v49 = v68;
      }

      v64 = v388;
    }

    *&v400 = v65 | (v49 << 8);
    *(&v400 + 1) = v64;
    v388 = v64;
    *&v401 = 0;
    *(&v401 + 1) = v69;
    v70 = v62;
    v71 = [v70 service];
    if (!v71)
    {

      sub_1D1778940(v389, v390, v66);
      goto LABEL_20;
    }

    v72 = v71;
    v384 = v49;
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v73 = v383;
    v74 = sub_1D1E684FC();

    if ((v74 & 1) == 0)
    {

      sub_1D1778940(v389, v390, v66);
LABEL_58:
      v49 = v384;
      goto LABEL_20;
    }

    v378 = v48;
    v75 = [v73 serviceType];
    v76 = sub_1D1E6781C();
    v78 = v77;

    v79._countAndFlagsBits = v76;
    v79._object = v78;
    ServiceKind.init(rawValue:)(v79);
    v80 = v397;
    if (v397 == 53)
    {
      v80 = 0;
    }

    LOBYTE(v397) = v80;
    v81 = ServiceKind.requiredCharacteristicKinds.getter();
    v82 = [v73 serviceType];
    v83 = sub_1D1E6781C();
    v85 = v84;

    v86._countAndFlagsBits = v83;
    v86._object = v85;
    ServiceKind.init(rawValue:)(v86);
    v87 = v393;
    if (v393 == 53)
    {
      v87 = 0;
    }

    LOBYTE(v393) = v87;
    v88 = ServiceKind.optionalCharacteristicKinds.getter();
    v89 = sub_1D18C0104(v88, v81);
    v90 = [v70 characteristicType];
    v91 = sub_1D1E6781C();
    v93 = v92;

    v94._countAndFlagsBits = v91;
    v94._object = v93;
    CharacteristicKind.init(rawValue:)(v94);
    if (v397 == 174)
    {
      v95 = 0;
    }

    else
    {
      v95 = v397;
    }

    v96 = sub_1D171974C(v95, v89);

    if ((v96 & 1) == 0)
    {

      sub_1D1778940(v389, v390, v66);
      v48 = v378;
      goto LABEL_58;
    }

    v399 = v378;
    sub_1D1741C08(&v400, &v397, &qword_1EC649700, &qword_1D1E6E910);
    v393 = 2;
    v394 = 0;
    v395 = 0;
    v396 = 3;
    v97 = v70;

    v98 = v385;
    StaticCharacteristic.init(from:value:loadingState:)(v97, &v397, &v393, v385);
    if ((*v382)(v98, 1, v391) == 1)
    {
      sub_1D1741A30(v98, &qword_1EC643630, &qword_1D1E71D10);
      if ([v97 value])
      {
        sub_1D1E6866C();
        swift_unknownObjectRelease();
        sub_1D1741A30(&v397, &qword_1EC649700, &qword_1D1E6E910);
        if (qword_1EE07B5D0 != -1)
        {
          swift_once();
        }

        v99 = sub_1D1E6709C();
        __swift_project_value_buffer(v99, qword_1EE07B5D8);
        v100 = v97;
        v101 = sub_1D1E6707C();
        v102 = sub_1D1E6833C();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = swift_slowAlloc();
          v104 = swift_slowAlloc();
          *v103 = v376;
          *(v103 + 4) = v100;
          *v104 = v100;
          v100 = v100;
          _os_log_impl(&dword_1D16EC000, v101, v102, "updatedCharacteristicValuesDictionary() unable to slurp value for characteristic %@", v103, 0xCu);
          sub_1D1741A30(v104, &unk_1EC644000, &unk_1D1E75B00);
          MEMORY[0x1D3893640](v104, -1, -1);
          MEMORY[0x1D3893640](v103, -1, -1);
        }

        goto LABEL_65;
      }

      v397 = 0u;
      v398 = 0u;
      sub_1D1741A30(&v397, &qword_1EC649700, &qword_1D1E6E910);
    }

    else
    {
      v105 = v381;
      sub_1D1CE8D8C(v98, v381);
      v106 = [v97 characteristicType];
      v107 = sub_1D1E6781C();
      *&v375 = v97;
      v109 = v108;

      v110._countAndFlagsBits = v107;
      v110._object = v109;
      CharacteristicKind.init(rawValue:)(v110);
      if (v397 == 174)
      {
        v111 = 0;
      }

      else
      {
        v111 = v397;
      }

      v112 = v387;
      sub_1D1CE6DD4(v105, v387, type metadata accessor for StaticCharacteristic);
      (*v380)(v112, 0, 1, v391);
      sub_1D1B0F194(v112, v111);
      sub_1D1CE6D74(v105, type metadata accessor for StaticCharacteristic);
    }

LABEL_65:
    sub_1D1778940(v389, v390, v66);
    v49 = v384;
    v48 = v399;
LABEL_20:
    v44 &= v44 - 1;
    sub_1D1741A30(&v400, &qword_1EC649700, &qword_1D1E6E910);
  }

  while (1)
  {
    v60 = v46 + 1;
    if (__OFADD__(v46, 1))
    {
      break;
    }

    if (v60 >= v45)
    {

      sub_1D1AC373C(v379, v377, 3u);
      goto LABEL_221;
    }

    v44 = v41[v60];
    ++v46;
    if (v44)
    {
      v46 = v60;
      goto LABEL_26;
    }
  }

LABEL_225:
  __break(1u);
LABEL_226:
  __break(1u);
LABEL_227:
  __break(1u);

  __break(1u);
  return result;
}

void *StaticCharacteristicsBag.staticCharacteristics.getter()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1D18044EC(v2, 0);
  v4 = *(type metadata accessor for StaticCharacteristic(0) - 8);
  v5 = sub_1D1805F54(&v8, v3 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v2, v1);
  v6 = v8;

  sub_1D1716918(v6);
  if (v5 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D1CE43CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001ELL && 0x80000001D1EC8330 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D1E6904C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D1CE4460(uint64_t a1)
{
  v2 = sub_1D1CE8E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CE449C(uint64_t a1)
{
  v2 = sub_1D1CE8E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCharacteristicsBag.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D480, &qword_1D1EA56E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CE8E10();

  sub_1D1E6930C();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D490, &qword_1D1EA56E8);
  sub_1D1CE8E64();
  sub_1D1E68F1C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t StaticCharacteristicsBag.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D18563E0(v3, v1);
  return sub_1D1E6926C();
}

uint64_t StaticCharacteristicsBag.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D4A0, &qword_1D1EA56F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CE8E10();
  sub_1D1E692FC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D490, &qword_1D1EA56E8);
    sub_1D1CE8F20();
    sub_1D1E68D7C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D1CE4828()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D18563E0(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CE4878(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  sub_1D18563E0(v4, v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CE4920(unsigned __int8 *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v69 = &v66 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v66 - v10;
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v66 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v66 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v66 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v66 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v66 - v24;
  v26 = *a1;
  v27 = *v1;
  if (*(v27 + 16) && (v28 = sub_1D171D140(v26), (v29 & 1) != 0))
  {
    v30 = v28;
    v67 = v6;
    v31 = v23;
    v32 = v20;
    v33 = v14;
    v34 = v11;
    v35 = *(v27 + 56);
    v36 = type metadata accessor for StaticCharacteristic(0);
    v37 = *(v36 - 8);
    v68 = v17;
    v38 = v37;
    v39 = v35 + *(v37 + 72) * v30;
    v11 = v34;
    v14 = v33;
    v20 = v32;
    v23 = v31;
    v6 = v67;
    sub_1D1CE6DD4(v39, v25, type metadata accessor for StaticCharacteristic);
    (*(v38 + 56))(v25, 0, 1, v36);
    v17 = v68;
    if (v26 > 113)
    {
LABEL_4:
      if (v26 != 114)
      {
        if (v26 != 149)
        {
          if (v26 == 156)
          {
            sub_1D1741A90(v25, v17, &qword_1EC643630, &qword_1D1E71D10);
            v40 = type metadata accessor for StaticCharacteristic(0);
            if ((*(*(v40 - 8) + 48))(v17, 1, v40) == 1)
            {
              v41 = v17;
LABEL_25:
              sub_1D1741A30(v41, &qword_1EC643630, &qword_1D1E71D10);
              return 2;
            }

            v57 = &v17[*(v40 + 24)];
            v52 = *v57;
            v58 = v57[16];
            if (v58 <= 3)
            {
              switch(v58)
              {
                case 1:
                  v52 = v52;
                  goto LABEL_111;
                case 2:
                  v52 = v52;
                  goto LABEL_111;
                case 3:
                  v52 = v52;
LABEL_111:
                  v65 = v17;
                  goto LABEL_118;
              }

              goto LABEL_106;
            }

            if (v58 != 4)
            {
              if (v58 == 6 || v58 == 5)
              {
                v52 = v52;
                goto LABEL_111;
              }

LABEL_106:
              sub_1D1CE6D74(v17, type metadata accessor for StaticCharacteristic);
              return 2;
            }

            if ((v52 & 0x8000000000000000) == 0)
            {
              goto LABEL_111;
            }

            __break(1u);
LABEL_94:
            if (v52 < 0)
            {
              __break(1u);
              goto LABEL_96;
            }

LABEL_113:
            sub_1D1CE6D74(v11, type metadata accessor for StaticCharacteristic);
            return v52 != 1;
          }

          goto LABEL_19;
        }

        sub_1D1741A90(v25, v23, &qword_1EC643630, &qword_1D1E71D10);
        v48 = type metadata accessor for StaticCharacteristic(0);
        if ((*(*(v48 - 8) + 48))(v23, 1, v48) == 1)
        {
          v41 = v23;
          goto LABEL_25;
        }

        v61 = &v23[*(v48 + 24)];
        v52 = *v61;
        v62 = v61[16];
        if (v62 <= 3)
        {
          switch(v62)
          {
            case 1:
              v52 = v52;
              goto LABEL_115;
            case 2:
              v52 = v52;
              goto LABEL_115;
            case 3:
              v52 = v52;
LABEL_115:
              v65 = v23;
              goto LABEL_118;
          }

          goto LABEL_108;
        }

        if (v62 != 4)
        {
          if (v62 == 6 || v62 == 5)
          {
            v52 = v52;
            goto LABEL_115;
          }

LABEL_108:
          sub_1D1CE6D74(v23, type metadata accessor for StaticCharacteristic);
          return 2;
        }

        if ((v52 & 0x8000000000000000) == 0)
        {
          goto LABEL_115;
        }

        __break(1u);
        goto LABEL_104;
      }

      v44 = v69;
      sub_1D1741A90(v25, v69, &qword_1EC643630, &qword_1D1E71D10);
      v45 = type metadata accessor for StaticCharacteristic(0);
      if ((*(*(v45 - 8) + 48))(v44, 1, v45) == 1)
      {
        v41 = v69;
        goto LABEL_25;
      }

      v51 = (v69 + *(v45 + 24));
      v52 = *v51;
      v53 = *(v51 + 16);
      if (v53 <= 3)
      {
        switch(v53)
        {
          case 1:
            v52 = v52;
            goto LABEL_97;
          case 2:
LABEL_96:
            v52 = v52;
            goto LABEL_97;
          case 3:
            v52 = v52;
LABEL_97:
            v65 = v69;
LABEL_118:
            sub_1D1CE6D74(v65, type metadata accessor for StaticCharacteristic);
            return v52 == 0;
        }

        goto LABEL_88;
      }

      if (v53 != 4)
      {
        if (v53 == 6 || v53 == 5)
        {
          v52 = v52;
          goto LABEL_97;
        }

LABEL_88:
        sub_1D1CE6D74(v69, type metadata accessor for StaticCharacteristic);
        return 2;
      }

      if ((v52 & 0x8000000000000000) == 0)
      {
        goto LABEL_97;
      }

      __break(1u);
      goto LABEL_86;
    }
  }

  else
  {
    v42 = type metadata accessor for StaticCharacteristic(0);
    (*(*(v42 - 8) + 56))(v25, 1, 1, v42);
    if (v26 > 113)
    {
      goto LABEL_4;
    }
  }

  switch(v26)
  {
    case 0x1F:
      sub_1D1741A90(v25, v20, &qword_1EC643630, &qword_1D1E71D10);
      v46 = type metadata accessor for StaticCharacteristic(0);
      if ((*(*(v46 - 8) + 48))(v20, 1, v46) == 1)
      {
        v41 = v20;
        goto LABEL_25;
      }

      v54 = &v20[*(v46 + 24)];
      v52 = *v54;
      v55 = v54[16];
      if (v55 > 3)
      {
        if (v55 == 4)
        {
LABEL_86:
          if (v52 < 0)
          {
            __break(1u);
            goto LABEL_88;
          }

LABEL_99:
          v65 = v20;
          goto LABEL_118;
        }

        if (v55 == 6 || v55 == 5)
        {
          v52 = v52;
          goto LABEL_99;
        }
      }

      else
      {
        switch(v55)
        {
          case 1:
            v52 = v52;
            goto LABEL_99;
          case 2:
            v52 = v52;
            goto LABEL_99;
          case 3:
            v52 = v52;
            goto LABEL_99;
        }
      }

      sub_1D1CE6D74(v20, type metadata accessor for StaticCharacteristic);
      return 2;
    case 0x26:
      sub_1D1741A90(v25, v14, &qword_1EC643630, &qword_1D1E71D10);
      v49 = type metadata accessor for StaticCharacteristic(0);
      if ((*(*(v49 - 8) + 48))(v14, 1, v49) == 1)
      {
        v41 = v14;
        goto LABEL_25;
      }

      v63 = &v14[*(v49 + 24)];
      v52 = *v63;
      v64 = v63[16];
      if (v64 > 3)
      {
        if (v64 == 4)
        {
LABEL_104:
          if (v52 < 0)
          {
            __break(1u);
            goto LABEL_106;
          }

LABEL_117:
          v65 = v14;
          goto LABEL_118;
        }

        if (v64 == 6 || v64 == 5)
        {
          v52 = v52;
          goto LABEL_117;
        }
      }

      else
      {
        switch(v64)
        {
          case 1:
            v52 = v52;
            goto LABEL_117;
          case 2:
            v52 = v52;
            goto LABEL_117;
          case 3:
            v52 = v52;
            goto LABEL_117;
        }
      }

      sub_1D1CE6D74(v14, type metadata accessor for StaticCharacteristic);
      return 2;
    case 0x2F:
      sub_1D1741A90(v25, v11, &qword_1EC643630, &qword_1D1E71D10);
      v43 = type metadata accessor for StaticCharacteristic(0);
      if ((*(*(v43 - 8) + 48))(v11, 1, v43) == 1)
      {
        v41 = v11;
        goto LABEL_25;
      }

      v59 = &v11[*(v43 + 24)];
      v52 = *v59;
      v60 = v59[16];
      if (v60 > 3)
      {
        if (v60 == 4)
        {
          goto LABEL_94;
        }

        if (v60 == 6 || v60 == 5)
        {
          v52 = v52;
          goto LABEL_113;
        }
      }

      else
      {
        switch(v60)
        {
          case 1:
            v52 = v52;
            goto LABEL_113;
          case 2:
            v52 = v52;
            goto LABEL_113;
          case 3:
            v52 = v52;
            goto LABEL_113;
        }
      }

      sub_1D1CE6D74(v11, type metadata accessor for StaticCharacteristic);
      return 2;
  }

LABEL_19:
  sub_1D1741A90(v25, v6, &qword_1EC643630, &qword_1D1E71D10);
  v47 = type metadata accessor for StaticCharacteristic(0);
  if ((*(*(v47 - 8) + 48))(v6, 1, v47) == 1)
  {
    v41 = v6;
    goto LABEL_25;
  }

  v56 = StaticCharacteristic.BOOLValue.getter();
  sub_1D1CE6D74(v6, type metadata accessor for StaticCharacteristic);
  return v56;
}

double sub_1D1CE53A4(unsigned __int8 *a1)
{
  v3 = type metadata accessor for StaticCharacteristic(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = *v1;
  if (*(v8 + 16))
  {
    v9 = sub_1D171D140(v7);
    if (v10)
    {
      sub_1D1CE6DD4(*(v8 + 56) + *(v4 + 72) * v9, v6, type metadata accessor for StaticCharacteristic);
      if (v6[*(v3 + 24) + 16] == 7)
      {
        sub_1D1CE6D74(v6, type metadata accessor for StaticCharacteristic);
        return result;
      }

      sub_1D1CE6D74(v6, type metadata accessor for StaticCharacteristic);
    }
  }

  v13 = v8;
  HIBYTE(v12) = v7;
  v14 = StaticCharacteristicsBag.int(for:)((&v12 + 7));
  if (!v14.is_nil)
  {
    return v14.value;
  }

  return result;
}

Swift::Bool __swiftcall StaticCharacteristicsBag.isWriting(for:)(HomeDataModel::ServiceKind a1)
{
  v2 = a1;
  v35 = type metadata accessor for StaticCharacteristic(0);
  v39 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v41 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = *v2;
  v4 = *v1;
  v7 = *(*v1 + 64);
  v6 = *v1 + 64;
  v5 = v7;
  v8 = 1 << *(v4 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v40 = v4;
  result = swift_bridgeObjectRetain_n();
  v13 = 0;
  v36 = v11;
  v37 = v6;
  while (v10)
  {
LABEL_12:
    v15 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_1D1CE6DD4(*(v40 + 56) + *(v39 + 72) * (v15 | (v13 << 6)), v41, type metadata accessor for StaticCharacteristic);
    v44 = v38;
    v16 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
    if (*(v16 + 16) && (v17 = *(v41 + *(v35 + 20)), sub_1D1E6920C(), v42 = v17, CharacteristicKind.rawValue.getter(), sub_1D1E678EC(), , v18 = sub_1D1E6926C(), v19 = -1 << *(v16 + 32), v20 = v18 & ~v19, ((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) != 0))
    {
      v21 = ~v19;
      while (1)
      {
        v43[0] = *(*(v16 + 48) + v20);
        v42 = v17;
        v22 = CharacteristicKind.rawValue.getter();
        v24 = v23;
        if (v22 == CharacteristicKind.rawValue.getter() && v24 == v25)
        {
          break;
        }

        v27 = sub_1D1E6904C();

        if (v27)
        {
          goto LABEL_23;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v16 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

LABEL_23:

      v28 = v41;
      v29 = v41 + *(v35 + 32);
      v30 = *v29;
      v31 = *(v29 + 8);
      v32 = *(v29 + 16);
      v33 = *(v29 + 24);
      sub_1D17418FC(*v29, v31, v32, *(v29 + 24));
      sub_1D1CE6D74(v28, type metadata accessor for StaticCharacteristic);
      if (v33 == 1)
      {
        v34 = 1;
LABEL_26:

        return v34;
      }

      result = sub_1D1757A60(v30, v31, v32, v33);
    }

    else
    {
LABEL_5:

      result = sub_1D1CE6D74(v41, type metadata accessor for StaticCharacteristic);
    }

    v11 = v36;
    v6 = v37;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      v34 = 0;
      goto LABEL_26;
    }

    v10 = *(v6 + 8 * v14);
    ++v13;
    if (v10)
    {
      v13 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1CE5894@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v36 - v9;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v13 = v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v14 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D4D0, &qword_1D1EA5918);
  if (swift_dynamicCast())
  {
    sub_1D16EEE20(v36, v39);
    v15 = v40;
    v16 = v41;
    __swift_project_boxed_opaque_existential_1(v39, v40);
    sub_1D18BA9DC(v15, v16, a4);
    return __swift_destroy_boxed_opaque_existential_1(v39);
  }

  v37 = 0;
  memset(v36, 0, sizeof(v36));
  sub_1D1741A30(v36, &qword_1EC64D4D8, &unk_1D1EA5920);
  sub_1D1CE6DD4(a3, v13, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *v13;
    v18 = *(v13 + 1);
    v20 = v13[16];
    if (v20 == 1)
    {
      if (*(v19 + 16))
      {
        v21 = *(v13 + 1);
        v22 = sub_1D171D368(v14);
        if (v23)
        {
          v24 = *(v19 + 56) + 32 * v22;
          v25 = *v24;
          v26 = *(v24 + 8);
          v27 = *(v24 + 16);
          v28 = *(v24 + 24);
          sub_1D17418FC(*v24, v26, v27, v28);
          result = sub_1D1AC373C(v19, v21, 1u);
          *a4 = v25;
          *(a4 + 8) = v26;
          *(a4 + 16) = v27;
          *(a4 + 24) = v28;
          return result;
        }

        v29 = v19;
        v18 = v21;
      }

      else
      {
        v29 = *v13;
      }

      LOBYTE(v20) = 1;
    }

    else
    {
      v29 = *v13;
    }

    sub_1D1AC373C(v29, v18, v20);
  }

  else
  {
    sub_1D1CE6D74(v13, type metadata accessor for StateSnapshot.UpdateType);
  }

  sub_1D1741C08(a2, v10, &qword_1EC643630, &qword_1D1E71D10);
  v30 = type metadata accessor for StaticCharacteristic(0);
  if ((*(*(v30 - 8) + 48))(v10, 1, v30) == 1)
  {
    result = sub_1D1741A30(v10, &qword_1EC643630, &qword_1D1E71D10);
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *a4 = 0;
    *(a4 + 24) = -1;
  }

  else
  {
    v31 = &v10[*(v30 + 32)];
    v32 = *v31;
    v33 = *(v31 + 1);
    v34 = *(v31 + 2);
    v35 = v31[24];
    sub_1D17418FC(*v31, v33, v34, v35);
    result = sub_1D1CE6D74(v10, type metadata accessor for StaticCharacteristic);
    *a4 = v32;
    *(a4 + 8) = v33;
    *(a4 + 16) = v34;
    *(a4 + 24) = v35;
  }

  return result;
}

uint64_t sub_1D1CE5BF8@<X0>(uint64_t *a1@<X0>, void **a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v32 = a6;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v14 = *a1;
  v15 = *a2;
  if ([v15 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  v16 = [v15 characteristicType];
  v17 = sub_1D1E6781C();
  v19 = v18;

  v20._countAndFlagsBits = v17;
  v20._object = v19;
  CharacteristicKind.init(rawValue:)(v20);
  if (*(a4 + 16) && (v36 != 174 ? (v21 = v36) : (v21 = 0), v22 = sub_1D171D140(v21), (v23 & 1) != 0))
  {
    v24 = v22;
    v25 = *(a4 + 56);
    v26 = type metadata accessor for StaticCharacteristic(0);
    v27 = *(v26 - 8);
    sub_1D1CE6DD4(v25 + *(v27 + 72) * v24, v13, type metadata accessor for StaticCharacteristic);
    (*(v27 + 56))(v13, 0, 1, v26);
  }

  else
  {
    v28 = type metadata accessor for StaticCharacteristic(0);
    (*(*(v28 - 8) + 56))(v13, 1, 1, v28);
  }

  sub_1D1CE5894(v15, v13, a5, &v36);
  sub_1D1741A30(v13, &qword_1EC643630, &qword_1D1E71D10);
  v33 = v36;
  v34 = v37;
  v35 = v38;
  v29 = sub_1D1CE915C(v15, v39, a3, v14, &v33);
  sub_1D1B0C0CC(v33, *(&v33 + 1), v34, v35);
  result = sub_1D1741A30(v39, &qword_1EC649700, &qword_1D1E6E910);
  *v32 = v29;
  return result;
}

uint64_t sub_1D1CE5EB0(id *a1, uint64_t a2, void *a3)
{
  v34 = a3;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v35 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v32 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v32 - v16;
  v18 = [*a1 service];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 uniqueIdentifier];

    sub_1D1E66A5C();
    v21 = *(v5 + 56);
    v21(v17, 0, 1, v4);
  }

  else
  {
    v21 = *(v5 + 56);
    v21(v17, 1, 1, v4);
  }

  v22 = [v34 uniqueIdentifier];
  sub_1D1E66A5C();

  v21(v15, 0, 1, v4);
  v23 = *(v7 + 48);
  sub_1D1741C08(v17, v9, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v15, &v9[v23], &qword_1EC642590, qword_1D1E71260);
  v24 = v5;
  v25 = *(v5 + 48);
  if (v25(v9, 1, v4) != 1)
  {
    sub_1D1741C08(v9, v35, &qword_1EC642590, qword_1D1E71260);
    if (v25(&v9[v23], 1, v4) != 1)
    {
      v27 = v24;
      v28 = v33;
      (*(v24 + 32))(v33, &v9[v23], v4);
      sub_1D1CE9684(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v29 = v35;
      v26 = sub_1D1E6775C();
      v30 = *(v27 + 8);
      v30(v28, v4);
      sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
      v30(v29, v4);
      sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
      return v26 & 1;
    }

    sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
    (*(v24 + 8))(v35, v4);
    goto LABEL_9;
  }

  sub_1D1741A30(v15, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v17, &qword_1EC642590, qword_1D1E71260);
  if (v25(&v9[v23], 1, v4) != 1)
  {
LABEL_9:
    sub_1D1741A30(v9, &qword_1EC642980, &unk_1D1E6E6E0);
    v26 = 0;
    return v26 & 1;
  }

  sub_1D1741A30(v9, &qword_1EC642590, qword_1D1E71260);
  v26 = 1;
  return v26 & 1;
}

uint64_t sub_1D1CE6390@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  v45 = a3;
  v47 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v44 - v10;
  v12 = type metadata accessor for StaticCharacteristic(0);
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v44 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v46 = &v44 - v19;
  v20 = *a1;
  LOBYTE(v54[0]) = v20;
  v21 = HMService.subscript.getter();
  if (!v21)
  {
    goto LABEL_12;
  }

  v22 = v21;
  if ([v21 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  else
  {
    memset(v54, 0, sizeof(v54));
    if (!a2)
    {
      goto LABEL_9;
    }
  }

  if (*(a2 + 16))
  {
    v23 = sub_1D171D140(v20);
    if (v24)
    {
      sub_1D1CE6DD4(*(a2 + 56) + *(v13 + 72) * v23, v9, type metadata accessor for StaticCharacteristic);
      (*(v13 + 56))(v9, 0, 1, v12);
      goto LABEL_10;
    }
  }

LABEL_9:
  (*(v13 + 56))(v9, 1, 1, v12);
LABEL_10:
  sub_1D1CE5894(v22, v9, v45, &v51);
  sub_1D1741A30(v9, &qword_1EC643630, &qword_1D1E71D10);
  v48 = v51;
  v49 = v52;
  v50 = v53;
  v25 = v22;
  StaticCharacteristic.init(from:value:loadingState:)(v25, v54, &v48, v11);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {

    sub_1D1741A30(v11, &qword_1EC643630, &qword_1D1E71D10);
LABEL_12:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
    return (*(*(v26 - 8) + 56))(v47, 1, 1, v26);
  }

  sub_1D1CE8D8C(v11, v46);
  if (a2 && *(a2 + 16) && (v28 = sub_1D171D140(v20), (v29 & 1) != 0))
  {
    sub_1D1CE6DD4(*(a2 + 56) + *(v13 + 72) * v28, v16, type metadata accessor for StaticCharacteristic);
    v30 = v44;
    sub_1D1CE8D8C(v16, v44);
  }

  else
  {
    v30 = v44;
    sub_1D1CE6DD4(v46, v44, type metadata accessor for StaticCharacteristic);
  }

  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
  v32 = *(v31 + 48);
  v33 = v47;
  *v47 = v20;
  v34 = v30 + *(v12 + 32);
  v35 = *(v34 + 24);
  if (v35 == 1)
  {
    goto LABEL_19;
  }

  v36 = *v34;
  v37 = *(v34 + 8);
  v38 = *(v34 + 16);
  if (!*(v34 + 24))
  {
    v41 = *v34;
    v42 = *(v34 + 8);
    v43 = 0;
LABEL_30:
    sub_1D1757A60(v41, v42, v38, v43);
    sub_1D1757A60(2, 0, 0, 3);

    goto LABEL_31;
  }

  if (v35 == 2)
  {
    v39 = *(v34 + 16);
    swift_bridgeObjectRetain_n();
    sub_1D1757A60(v36, v37, v39, 2);
    sub_1D1757A60(2, 0, 0, 3);

    v40 = v39;
    v30 = v44;
    sub_1D1757A60(v36, v37, v40, 2);
LABEL_31:
    sub_1D1CE8D8C(v46, &v33[v32]);
    goto LABEL_32;
  }

  if (!(v38 | v37 | v36))
  {
    v41 = 0;
    goto LABEL_29;
  }

  if (v36 == 1 && !(v38 | v37))
  {
    v41 = 1;
LABEL_29:
    v42 = 0;
    v38 = 0;
    v43 = 3;
    goto LABEL_30;
  }

  sub_1D1757A60(2, 0, 0, 3);
  sub_1D1757A60(2, 0, 0, 3);
LABEL_19:

  sub_1D1CE6D74(v46, type metadata accessor for StaticCharacteristic);
  sub_1D1CE6DD4(v30, &v33[v32], type metadata accessor for StaticCharacteristic);
LABEL_32:
  (*(*(v31 - 8) + 56))(v33, 0, 1, v31);
  return sub_1D1CE6D74(v30, type metadata accessor for StaticCharacteristic);
}

HomeDataModel::StaticCharacteristicsBag __swiftcall StaticCharacteristicsBag.copyReplacing(characteristicValuesDictionary:)(Swift::OpaquePointer_optional characteristicValuesDictionary)
{
  v3 = v1;
  if (characteristicValuesDictionary.value._rawValue)
  {
    rawValue = characteristicValuesDictionary.value._rawValue;
  }

  else
  {
    rawValue = *v2;
  }

  *v3 = rawValue;
}

void StaticCharacteristicsBag.copy(mappingCharacteristics:addingCharacteristics:)(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v36 = a4;
  v8 = type metadata accessor for StaticCharacteristic(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v35 - v13;
  v15 = *v4;
  if (a1)
  {

    sub_1D18AFEFC(a1);
    sub_1D1CDFAC4(a1, a2, v15);
    v17 = v16;

    sub_1D17169C0(a1, a2);
    v15 = v17;
    if (!a3)
    {
      goto LABEL_19;
    }
  }

  else
  {

    if (!a3)
    {
LABEL_19:
      *v36 = v15;
      return;
    }
  }

  v18 = *(a3 + 16);
  if (!v18)
  {
    goto LABEL_19;
  }

  v19 = *(v8 + 20);
  v20 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v21 = *(v9 + 72);
  while (1)
  {
    sub_1D1CE6DD4(v20, v14, type metadata accessor for StaticCharacteristic);
    v22 = v14[v19];
    sub_1D1CE8D8C(v14, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = v15;
    v24 = sub_1D171D140(v22);
    v26 = v15[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v15[3] < v29)
    {
      sub_1D1730FB4(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1D171D140(v22);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_22;
      }

LABEL_14:
      v15 = v37;
      if (v30)
      {
        goto LABEL_7;
      }

      goto LABEL_15;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_14;
    }

    v34 = v24;
    sub_1D173DAEC();
    v24 = v34;
    v15 = v37;
    if (v30)
    {
LABEL_7:
      sub_1D1C8D250(v12, v15[7] + v24 * v21);
      goto LABEL_8;
    }

LABEL_15:
    v15[(v24 >> 6) + 8] |= 1 << v24;
    *(v15[6] + v24) = v22;
    sub_1D1CE8D8C(v12, v15[7] + v24 * v21);
    v32 = v15[2];
    v28 = __OFADD__(v32, 1);
    v33 = v32 + 1;
    if (v28)
    {
      goto LABEL_21;
    }

    v15[2] = v33;
LABEL_8:
    v20 += v21;
    if (!--v18)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  sub_1D1E690FC();
  __break(1u);
}

unint64_t *sub_1D1CE6C3C(unint64_t *result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = a4;
    sub_1D1CE8838(v7, a2, a3, v8);
    v10 = v9;

    return v10;
  }

  return result;
}

void *sub_1D1CE6CD4(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void *, uint64_t, uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v10 = a4;
    v11 = a5(v9, a2, a3, v10);

    return v11;
  }

  return result;
}

uint64_t sub_1D1CE6D74(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1CE6DD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1D1CE6E5C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v56 = a2;
  v70 = a4;
  v59 = a1;
  v72 = sub_1D1E66A7C();
  v5 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v58 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v69);
  v8 = &v56 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v73 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v56 - v15;
  v60 = 0;
  v17 = 0;
  v71 = a3;
  v18 = a3;
  v19 = v16;
  v22 = *(v18 + 56);
  v21 = v18 + 56;
  v20 = v22;
  v23 = 1 << *(v21 - 24);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v65 = (v5 + 48);
  v66 = (v5 + 56);
  v57 = (v5 + 32);
  v61 = (v5 + 8);
  v62 = v19;
  v27 = v12;
  v28 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  v67 = v26;
  v68 = v21;
  v63 = v27;
  while (v25)
  {
    v30 = __clz(__rbit64(v25));
    v76 = (v25 - 1) & v25;
LABEL_13:
    v33 = v30 | (v17 << 6);
    v34 = *(v71 + 48);
    v64 = v33;
    v75 = *(v34 + 8 * v33);
    v35 = [v75 service];
    if (v35)
    {
      v36 = v35;
      v37 = [v35 v28[61]];

      sub_1D1E66A5C();
      v38 = 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = *v66;
    v40 = v72;
    (*v66)(v19, v38, 1, v72);
    v41 = [v70 v28[61]];
    v42 = v19;
    v43 = v40;
    v44 = v73;
    sub_1D1E66A5C();

    v39(v44, 0, 1, v43);
    v45 = *(v69 + 48);
    sub_1D1741C08(v42, v8, &qword_1EC642590, qword_1D1E71260);
    v74 = v45;
    sub_1D1741C08(v44, &v8[v45], &qword_1EC642590, qword_1D1E71260);
    v46 = *v65;
    if ((*v65)(v8, 1, v43) == 1)
    {
      sub_1D1741A30(v44, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v42, &qword_1EC642590, qword_1D1E71260);
      v29 = v46(&v8[v74], 1, v43);
      v19 = v42;
      if (v29 != 1)
      {
        goto LABEL_5;
      }

      sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);

      v26 = v67;
      v21 = v68;
      v28 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      v25 = v76;
LABEL_22:
      *(v59 + ((v64 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v64;
      if (__OFADD__(v60++, 1))
      {
        __break(1u);
LABEL_25:
        v55 = v71;

        sub_1D19E2060(v59, v56, v60, v55);
        return;
      }
    }

    else
    {
      v47 = v63;
      sub_1D1741C08(v8, v63, &qword_1EC642590, qword_1D1E71260);
      v48 = v74;
      if (v46(&v8[v74], 1, v43) == 1)
      {
        sub_1D1741A30(v73, &qword_1EC642590, qword_1D1E71260);
        v19 = v62;
        sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
        (*v61)(v47, v72);
LABEL_5:
        sub_1D1741A30(v8, &qword_1EC642980, &unk_1D1E6E6E0);

        v26 = v67;
        v21 = v68;
        v28 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        v25 = v76;
      }

      else
      {
        v49 = v58;
        v50 = &v8[v48];
        v51 = v72;
        (*v57)(v58, v50, v72);
        sub_1D1CE9684(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        LODWORD(v74) = sub_1D1E6775C();
        v52 = *v61;
        (*v61)(v49, v51);
        v53 = v52;
        sub_1D1741A30(v73, &qword_1EC642590, qword_1D1E71260);
        v19 = v62;
        sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
        v53(v47, v51);
        sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);

        v26 = v67;
        v21 = v68;
        v28 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        v25 = v76;
        if (v74)
        {
          goto LABEL_22;
        }
      }
    }
  }

  v31 = v17;
  while (1)
  {
    v17 = v31 + 1;
    if (__OFADD__(v31, 1))
    {
      break;
    }

    if (v17 >= v26)
    {
      goto LABEL_25;
    }

    v32 = *(v21 + 8 * v17);
    ++v31;
    if (v32)
    {
      v30 = __clz(__rbit64(v32));
      v76 = (v32 - 1) & v32;
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1D1CE7490(uint64_t a1, void *a2)
{
  v3 = v2;
  v76 = *MEMORY[0x1E69E9840];
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v56 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v69);
  v68 = v53 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v62 = v53 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v72 = (v53 - v16);
  v17 = *(a1 + 32);
  v18 = v17 & 0x3F;
  v54 = ((1 << v17) + 63) >> 6;
  v19 = 8 * v54;
  v20 = a2;
  v71 = v20;
  if (v18 > 0xD)
  {
    goto LABEL_29;
  }

  while (2)
  {
    v61 = v13;
    v53[1] = v3;
    v53[0] = v53;
    MEMORY[0x1EEE9AC00](v20);
    v57 = v53 - ((v19 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v57, v19);
    v59 = 0;
    v19 = 0;
    v70 = a1;
    v22 = *(a1 + 56);
    a1 += 56;
    v21 = v22;
    v23 = 1 << *(a1 - 24);
    v24 = -1;
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    v25 = v24 & v21;
    v26 = (v23 + 63) >> 6;
    v67 = (v7 + 7);
    v55 = (v7 + 4);
    v60 = v7 + 1;
    v27 = v62;
    v64 = a1;
    v65 = v26;
    v73 = v6;
    v66 = (v7 + 6);
    while (v25)
    {
      v29 = __clz(__rbit64(v25));
      v75 = (v25 - 1) & v25;
LABEL_14:
      v32 = v29 | (v19 << 6);
      v33 = *(v70 + 48);
      v63 = v32;
      v74 = *(v33 + 8 * v32);
      v34 = [v74 service];
      if (v34)
      {
        v35 = v34;
        v36 = [v34 uniqueIdentifier];

        v6 = v72;
        sub_1D1E66A5C();

        v37 = 0;
      }

      else
      {
        v37 = 1;
        v6 = v72;
      }

      v38 = *v67;
      v7 = v73;
      (*v67)(v6, v37, 1, v73);
      v39 = [v71 uniqueIdentifier];
      sub_1D1E66A5C();

      v38(v27, 0, 1, v7);
      v13 = v68;
      v40 = *(v69 + 48);
      sub_1D1741C08(v6, v68, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v27, &v13[v40], &qword_1EC642590, qword_1D1E71260);
      v3 = *v66;
      if ((*v66)(v13, 1, v7) == 1)
      {
        sub_1D1741A30(v27, &qword_1EC642590, qword_1D1E71260);
        v28 = v6;
        v6 = &qword_1EC642590;
        sub_1D1741A30(v28, &qword_1EC642590, qword_1D1E71260);
        if ((v3)(&v13[v40], 1, v7) != 1)
        {
          goto LABEL_6;
        }

        sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);

        a1 = v64;
        v26 = v65;
        v25 = v75;
LABEL_23:
        *&v57[(v63 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v63;
        if (__OFADD__(v59++, 1))
        {
          __break(1u);
LABEL_26:
          v49 = sub_1D19E2060(v57, v54, v59, v70);

          return v49;
        }
      }

      else
      {
        v41 = v61;
        sub_1D1741C08(v13, v61, &qword_1EC642590, qword_1D1E71260);
        v42 = (v3)(&v13[v40], 1, v7);
        v3 = v7;
        if (v42 == 1)
        {
          v43 = v62;
          v7 = &qword_1EC642590;
          sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
          sub_1D1741A30(v72, &qword_1EC642590, qword_1D1E71260);
          v27 = v43;
          (*v60)(v41, v3);
LABEL_6:
          sub_1D1741A30(v13, &qword_1EC642980, &unk_1D1E6E6E0);

          a1 = v64;
          v26 = v65;
          v25 = v75;
        }

        else
        {
          v44 = &v13[v40];
          v45 = v56;
          (*v55)(v56, v44, v7);
          sub_1D1CE9684(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v46 = sub_1D1E6775C();
          v6 = v73;
          v58 = v46;
          v7 = v60;
          v3 = *v60;
          (*v60)(v45, v73);
          v47 = v62;
          sub_1D1741A30(v62, &qword_1EC642590, qword_1D1E71260);
          sub_1D1741A30(v72, &qword_1EC642590, qword_1D1E71260);
          (v3)(v41, v6);
          v27 = v47;
          sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);

          a1 = v64;
          v26 = v65;
          v25 = v75;
          if (v58)
          {
            goto LABEL_23;
          }
        }
      }
    }

    v30 = v19;
    while (1)
    {
      v19 = v30 + 1;
      if (__OFADD__(v30, 1))
      {
        break;
      }

      if (v19 >= v26)
      {
        goto LABEL_26;
      }

      v31 = *(a1 + 8 * v19);
      ++v30;
      if (v31)
      {
        v29 = __clz(__rbit64(v31));
        v75 = (v31 - 1) & v31;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_29:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v51 = swift_slowAlloc();
  v52 = v71;
  v49 = sub_1D1CE6CD4(v51, v54, a1, v52, sub_1D1CE6E5C);

  MEMORY[0x1D3893640](v51, -1, -1);

  return v49;
}

uint64_t sub_1D1CE7C5C(uint64_t a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v50 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v64 = &v50 - v14;
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1D1CE7490(a1, a2);
  }

  v58 = v4;
  v54 = v13;
  v63 = MEMORY[0x1E69E7CD0];
  v67 = MEMORY[0x1E69E7CD0];
  v62 = a2;
  v61 = sub_1D1E686EC();
  v15 = sub_1D1E6877C();
  if (v15)
  {
    v16 = v15;
    v57 = sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    v17 = v16;
    v55 = (v5 + 48);
    v56 = (v5 + 56);
    v51 = (v5 + 32);
    v63 = MEMORY[0x1E69E7CD0];
    v53 = (v5 + 8);
    v18 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v19 = v54;
    v20 = v59;
    while (1)
    {
      v65 = v17;
      swift_dynamicCast();
      v29 = [v66 service];
      if (v29)
      {
        v30 = v18[61];
        v31 = v29;
        v32 = [v29 v30];

        v18 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        sub_1D1E66A5C();

        v33 = 0;
      }

      else
      {
        v33 = 1;
      }

      v34 = *v56;
      v35 = v64;
      v36 = v58;
      (*v56)(v64, v33, 1, v58);
      v37 = [v62 v18[61]];
      sub_1D1E66A5C();

      v34(v12, 0, 1, v36);
      v38 = *(v60 + 48);
      sub_1D1741C08(v35, v20, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741C08(v12, v20 + v38, &qword_1EC642590, qword_1D1E71260);
      v39 = *v55;
      if ((*v55)(v20, 1, v36) == 1)
      {
        break;
      }

      sub_1D1741C08(v20, v19, &qword_1EC642590, qword_1D1E71260);
      if (v39(v20 + v38, 1, v36) == 1)
      {
        sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
        sub_1D1741A30(v64, &qword_1EC642590, qword_1D1E71260);
        (*v53)(v19, v36);
LABEL_16:
        sub_1D1741A30(v20, &qword_1EC642980, &unk_1D1E6E6E0);
        goto LABEL_17;
      }

      v40 = v52;
      (*v51)(v52, v20 + v38, v36);
      sub_1D1CE9684(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v41 = sub_1D1E6775C();
      v42 = *v53;
      v43 = v40;
      v19 = v54;
      (*v53)(v43, v36);
      sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v64, &qword_1EC642590, qword_1D1E71260);
      v42(v19, v36);
      sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
      if (v41)
      {
        goto LABEL_19;
      }

LABEL_17:

LABEL_7:
      v17 = sub_1D1E6877C();
      v18 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      if (!v17)
      {
        goto LABEL_29;
      }
    }

    sub_1D1741A30(v12, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v64, &qword_1EC642590, qword_1D1E71260);
    if (v39(v20 + v38, 1, v36) == 1)
    {
      sub_1D1741A30(v20, &qword_1EC642590, qword_1D1E71260);
LABEL_19:
      v44 = v66;
      v45 = v63[2];
      if (v63[3] <= v45)
      {
        sub_1D1939118(v45 + 1);
      }

      v21 = v67;
      result = sub_1D1E684EC();
      v23 = v21 + 56;
      v63 = v21;
      v24 = -1 << *(v21 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v21 + 56 + 8 * (v25 >> 6))) != 0)
      {
        v27 = __clz(__rbit64((-1 << v25) & ~*(v21 + 56 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v46 = 0;
        v47 = (63 - v24) >> 6;
        do
        {
          if (++v26 == v47 && (v46 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v48 = v26 == v47;
          if (v26 == v47)
          {
            v26 = 0;
          }

          v46 |= v48;
          v49 = *(v23 + 8 * v26);
        }

        while (v49 == -1);
        v27 = __clz(__rbit64(~v49)) + (v26 << 6);
      }

      *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      v28 = v63;
      *(v63[6] + 8 * v27) = v44;
      ++v28[2];
      goto LABEL_7;
    }

    goto LABEL_16;
  }

LABEL_29:

  return v63;
}

void sub_1D1CE831C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v28 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v31 = (v10 - 1) & v10;
    v32 = v5;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 56);
    v37 = *(*(a3 + 48) + 8 * v15);
    v17 = v15;
    v18 = v16 + 32 * v15;
    v20 = *(v18 + 8);
    v21 = *(v18 + 16);
    v33 = *v18;
    v19 = v33;
    v34 = v20;
    v35 = v21;
    v36 = *(v18 + 24);
    v22 = v36;
    v23 = v37;
    sub_1D17418FC(v19, v20, v21, v22);
    v24 = sub_1D1CE5EB0(&v37, &v33, a4);
    v5 = v32;
    sub_1D1757A60(v33, v34, v35, v36);

    if (v32)
    {
      return;
    }

    v10 = v31;
    if (v24)
    {
      *(a1 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1D188DD5C(a1, a2, v28, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v31 = (v14 - 1) & v14;
      v32 = v5;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1D1CE84CC(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      v15 = v9;
      v12 = sub_1D1CE6CD4(v14, v6, a1, v15, sub_1D1CE831C);
      MEMORY[0x1D3893640](v14, -1, -1);

      return v12;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  bzero(v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  sub_1D1CE831C((v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);
  v12 = v11;

  if (v2)
  {
    swift_willThrow();
  }

  return v12;
}

unint64_t *sub_1D1CE868C(uint64_t a1, void *a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;
  v8 = a2;
  v9 = v8;
  if (v5 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();
      v15 = v9;
      v12 = sub_1D1CE6C3C(v14, v6, a1, v15);
      MEMORY[0x1D3893640](v14, -1, -1);

      return v12;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  bzero(v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), 8 * v6);
  v10 = v9;
  sub_1D1CE8838((v16 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a1, v10);
  v12 = v11;

  if (v2)
  {
    swift_willThrow();
  }

  return v12;
}

void sub_1D1CE8838(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v26 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v29 = v5;
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    v16 = *(a3 + 56);
    v33 = *(*(a3 + 48) + 8 * v15);
    v17 = v16 + 24 * v15;
    v19 = *(v17 + 8);
    v30 = *v17;
    v18 = v30;
    v31 = v19;
    v32 = *(v17 + 16);
    v20 = v32;
    v21 = v33;
    sub_1D1741830(v18, v19, v20);
    v22 = sub_1D1CE5EB0(&v33, &v30, a4);
    v5 = v29;
    sub_1D1778940(v30, v31, v32);

    if (v29)
    {
      return;
    }

    if (v22)
    {
      *(a1 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v26++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1D188DB08(a1, a2, v26, a3);
        return;
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      goto LABEL_16;
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v29 = v5;
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1D1CE89D4(uint64_t a1, char a2, void *a3)
{
  v6 = type metadata accessor for StaticCharacteristic(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
  result = MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - v13;
  v15 = *(a1 + 16);
  if (v15)
  {
    v45 = a1;
    v46 = v7;
    v16 = *(result + 48);
    v17 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v48 = *(v12 + 72);
    v44 = v17;
    sub_1D1741C08(a1 + v17, &v43 - v13, &qword_1EC643248, &qword_1D1E716A0);
    v18 = *v14;
    v47 = v16;
    sub_1D1CE8D8C(&v14[v16], v9);
    v19 = *a3;
    v21 = sub_1D171D140(v18);
    v22 = v19[2];
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      goto LABEL_23;
    }

    LOBYTE(v7) = v20;
    if (v19[3] >= v24)
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_25;
      }

      goto LABEL_7;
    }

    sub_1D1730FB4(v24, a2 & 1);
    v25 = sub_1D171D140(v18);
    if ((v7 & 1) == (v26 & 1))
    {
      v21 = v25;
LABEL_7:
      v27 = v46;
      while (1)
      {
        v46 = v15;
        v28 = *a3;
        if (v7)
        {
          v15 = *(v27 + 72);
          result = sub_1D1C8D250(v9, v28[7] + v15 * v21);
        }

        else
        {
          v28[(v21 >> 6) + 8] |= 1 << v21;
          *(v28[6] + v21) = v18;
          v15 = *(v27 + 72);
          result = sub_1D1CE8D8C(v9, v28[7] + v15 * v21);
          v29 = v28[2];
          v30 = __OFADD__(v29, 1);
          v31 = v29 + 1;
          if (v30)
          {
            goto LABEL_24;
          }

          v28[2] = v31;
        }

        v32 = v46 - 1;
        if (v46 == 1)
        {
          return result;
        }

        v7 = v45 + v48 + v44;
        while (1)
        {
          sub_1D1741C08(v7, v14, &qword_1EC643248, &qword_1D1E716A0);
          v18 = *v14;
          sub_1D1CE8D8C(&v14[v47], v9);
          v33 = *a3;
          v34 = sub_1D171D140(v18);
          v36 = v33[2];
          v37 = (v35 & 1) == 0;
          v30 = __OFADD__(v36, v37);
          v38 = v36 + v37;
          if (v30)
          {
            break;
          }

          v21 = v35;
          if (v33[3] < v38)
          {
            sub_1D1730FB4(v38, 1);
            v34 = sub_1D171D140(v18);
            if ((v21 & 1) != (v39 & 1))
            {
              goto LABEL_26;
            }
          }

          v40 = *a3;
          if (v21)
          {
            result = sub_1D1C8D250(v9, v40[7] + v15 * v34);
          }

          else
          {
            v40[(v34 >> 6) + 8] |= 1 << v34;
            *(v40[6] + v34) = v18;
            result = sub_1D1CE8D8C(v9, v40[7] + v15 * v34);
            v41 = v40[2];
            v30 = __OFADD__(v41, 1);
            v42 = v41 + 1;
            if (v30)
            {
              goto LABEL_24;
            }

            v40[2] = v42;
          }

          v7 += v48;
          if (!--v32)
          {
            return result;
          }
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v27 = v46;
        sub_1D173DAEC();
      }
    }

LABEL_26:
    result = sub_1D1E690FC();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D1CE8D8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticCharacteristic(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D1CE8E10()
{
  result = qword_1EC64D488;
  if (!qword_1EC64D488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D488);
  }

  return result;
}

unint64_t sub_1D1CE8E64()
{
  result = qword_1EC64D498;
  if (!qword_1EC64D498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64D490, &qword_1D1EA56E8);
    sub_1D1CD8BC8();
    sub_1D1CE9684(&qword_1EC644B10, type metadata accessor for StaticCharacteristic, &protocol conformance descriptor for StaticCharacteristic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D498);
  }

  return result;
}

unint64_t sub_1D1CE8F20()
{
  result = qword_1EC64D4A8;
  if (!qword_1EC64D4A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64D490, &qword_1D1EA56E8);
    sub_1D1CD8D6C();
    sub_1D1CE9684(&qword_1EC644B28, type metadata accessor for StaticCharacteristic, &protocol conformance descriptor for StaticCharacteristic);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D4A8);
  }

  return result;
}

unint64_t sub_1D1CE8FE0()
{
  result = qword_1EC64D4B0;
  if (!qword_1EC64D4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D4B0);
  }

  return result;
}

unint64_t sub_1D1CE9058()
{
  result = qword_1EC64D4B8;
  if (!qword_1EC64D4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D4B8);
  }

  return result;
}

unint64_t sub_1D1CE90B0()
{
  result = qword_1EC64D4C0;
  if (!qword_1EC64D4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D4C0);
  }

  return result;
}

unint64_t sub_1D1CE9108()
{
  result = qword_1EC64D4C8;
  if (!qword_1EC64D4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D4C8);
  }

  return result;
}

uint64_t sub_1D1CE915C(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v56 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643630, &qword_1D1E71D10);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v52 - v13;
  v15 = type metadata accessor for StaticCharacteristic(0);
  v57 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a5;
  v19 = *(a5 + 8);
  v54 = *(a5 + 16);
  v55 = v18;
  v53 = *(a5 + 24);
  v20 = [a1 service];
  if (v20 && (v21 = v20, sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40), v22 = a3, v23 = sub_1D1E684FC(), v22, v21, (v23 & 1) != 0) && ((v52 = v12, v24 = HMService.supportedCharacteristicKinds.getter(), v25 = [a1 characteristicType], v26 = sub_1D1E6781C(), v28 = v27, v25, v29._countAndFlagsBits = v26, v29._object = v28, CharacteristicKind.init(rawValue:)(v29), LOBYTE(v60[0]) != 174) ? (v30 = LOBYTE(v60[0])) : (v30 = 0), v31 = sub_1D171974C(v30, v24), , (v31 & 1) != 0))
  {
    v61 = a4;
    sub_1D1741C08(v56, v60, &qword_1EC649700, &qword_1D1E6E910);
    v33 = v54;
    v32 = v55;
    v58[0] = v55;
    v58[1] = v19;
    v58[2] = v54;
    v34 = v53;
    v59 = v53;

    v35 = a1;
    sub_1D1CD8B60(v32, v19, v33, v34);
    StaticCharacteristic.init(from:value:loadingState:)(v35, v60, v58, v14);
    v36 = v57;
    if ((*(v57 + 48))(v14, 1, v15) == 1)
    {
      sub_1D1741A30(v14, &qword_1EC643630, &qword_1D1E71D10);
      if ([v35 value])
      {
        sub_1D1E6866C();
        swift_unknownObjectRelease();
        sub_1D1741A30(v60, &qword_1EC649700, &qword_1D1E6E910);
        if (qword_1EE07B5D0 != -1)
        {
          swift_once();
        }

        v37 = sub_1D1E6709C();
        __swift_project_value_buffer(v37, qword_1EE07B5D8);
        v38 = v35;
        v39 = sub_1D1E6707C();
        v40 = sub_1D1E6833C();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = 138412290;
          *(v41 + 4) = v38;
          *v42 = v38;
          v43 = v38;
          _os_log_impl(&dword_1D16EC000, v39, v40, "updatedCharacteristicValuesDictionary() unable to slurp value for characteristic %@", v41, 0xCu);
          sub_1D1741A30(v42, &unk_1EC644000, &unk_1D1E75B00);
          MEMORY[0x1D3893640](v42, -1, -1);
          MEMORY[0x1D3893640](v41, -1, -1);
        }

        return v61;
      }

      else
      {
        memset(v60, 0, sizeof(v60));
        sub_1D1741A30(v60, &qword_1EC649700, &qword_1D1E6E910);
        return v61;
      }
    }

    else
    {
      sub_1D1CE8D8C(v14, v17);
      v45 = [v35 characteristicType];
      v46 = sub_1D1E6781C();
      v48 = v47;

      v49._countAndFlagsBits = v46;
      v49._object = v48;
      CharacteristicKind.init(rawValue:)(v49);
      if (LOBYTE(v60[0]) == 174)
      {
        v50 = 0;
      }

      else
      {
        v50 = LOBYTE(v60[0]);
      }

      v51 = v52;
      sub_1D1CE6DD4(v17, v52, type metadata accessor for StaticCharacteristic);
      (*(v36 + 56))(v51, 0, 1, v15);
      sub_1D1B0F194(v51, v50);
      sub_1D1CE6D74(v17, type metadata accessor for StaticCharacteristic);
      return v61;
    }
  }

  else
  {
  }

  return a4;
}

uint64_t sub_1D1CE9684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1CE96D0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v5 = [a1 manufacturer];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1D1E6781C();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = type metadata accessor for StaticDeviceMetadata(0);
  v11 = (a2 + v10[5]);
  *v11 = v7;
  v11[1] = v9;
  v12 = [a1 model];
  if (v12)
  {
    v13 = v12;
    v14 = sub_1D1E6781C();
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  v17 = (a2 + v10[6]);
  *v17 = v14;
  v17[1] = v16;
  v18 = [a1 serialNumber];
  if (v18)
  {
    v19 = v18;
    v20 = sub_1D1E6781C();
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0;
  }

  v23 = (a2 + v10[7]);
  *v23 = v20;
  v23[1] = v22;
  v24 = [a1 firmwareVersion];
  if (v24)
  {
    v25 = v24;
    v26 = sub_1D1E6781C();
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0;
  }

  v29 = (a2 + v10[8]);
  *v29 = v26;
  v29[1] = v28;
  *(a2 + v10[9]) = [a1 supportsCHIP];
  *(a2 + v10[10]) = [a1 certificationStatus] == 2;
  *(a2 + v10[11]) = [a1 mfiCertifiedACWG];
  v30 = [a1 supportsUWBUnlock];

  *(a2 + v10[12]) = v30;
}

uint64_t StaticDeviceMetadata.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticDeviceMetadata.manufacturer.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticDeviceMetadata(0) + 20));

  return v1;
}

uint64_t type metadata accessor for StaticDeviceMetadata(uint64_t a1)
{
  result = qword_1EE07DF38;
  if (!qword_1EE07DF38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t StaticDeviceMetadata.model.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticDeviceMetadata(0) + 24));

  return v1;
}

uint64_t StaticDeviceMetadata.serialNumber.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticDeviceMetadata(0) + 28));

  return v1;
}

uint64_t StaticDeviceMetadata.firmwareVersion.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticDeviceMetadata(0) + 32));

  return v1;
}

uint64_t sub_1D1CE9B0C(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x6C65646F6DLL;
    if (a1 != 2)
    {
      v6 = 0x754E6C6169726573;
    }

    if (a1)
    {
      v5 = 0x74636166756E616DLL;
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
    v1 = 0x6669747265437369;
    if (a1 == 7)
    {
      v2 = 0xD000000000000012;
    }

    else
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x657261776D726966;
    if (a1 != 4)
    {
      v3 = 0x72657474614D7369;
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

uint64_t sub_1D1CE9C4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1CEB164(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1CE9C74(uint64_t a1)
{
  v2 = sub_1D1CEAD9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CE9CB0(uint64_t a1)
{
  v2 = sub_1D1CEAD9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticDeviceMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D4E0, &qword_1D1EA5930);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CEAD9C();
  sub_1D1E6930C();
  v8[15] = 0;
  sub_1D1E66A7C();
  sub_1D1CEAEF8(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v1)
  {
    type metadata accessor for StaticDeviceMetadata(0);
    v8[14] = 1;
    sub_1D1E68E0C();
    v8[13] = 2;
    sub_1D1E68E0C();
    v8[12] = 3;
    sub_1D1E68E0C();
    v8[11] = 4;
    sub_1D1E68E0C();
    v8[10] = 5;
    sub_1D1E68EDC();
    v8[9] = 6;
    sub_1D1E68EDC();
    v8[8] = 7;
    sub_1D1E68EDC();
    v8[7] = 8;
    sub_1D1E68EDC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StaticDeviceMetadata.hash(into:)(uint64_t a1)
{
  sub_1D1E66A7C();
  sub_1D1CEAEF8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v2 = type metadata accessor for StaticDeviceMetadata(0);
  if (*(v1 + v2[5] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v1 + v2[6] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v1 + v2[7] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  if (*(v1 + v2[8] + 8))
  {
    sub_1D1E6922C();
    sub_1D1E678EC();
  }

  else
  {
    sub_1D1E6922C();
  }

  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6922C();
}

uint64_t StaticDeviceMetadata.hashValue.getter()
{
  sub_1D1E6920C();
  StaticDeviceMetadata.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticDeviceMetadata.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = sub_1D1E66A7C();
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D4F0, &unk_1D1EA5938);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v27 - v6;
  v8 = type metadata accessor for StaticDeviceMetadata(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CEAD9C();
  v32 = v7;
  sub_1D1E692FC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v30;
  v42 = 0;
  sub_1D1CEAEF8(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v12 = v31;
  sub_1D1E68D7C();
  (*(v29 + 32))(v10, v12, v4);
  v41 = 1;
  v13 = sub_1D1E68C6C();
  v27 = v4;
  v14 = &v10[v8[5]];
  *v14 = v13;
  v14[1] = v15;
  v40 = 2;
  v31 = 0;
  v16 = sub_1D1E68C6C();
  v17 = &v10[v8[6]];
  *v17 = v16;
  v17[1] = v18;
  v39 = 3;
  v19 = sub_1D1E68C6C();
  v20 = &v10[v8[7]];
  *v20 = v19;
  v20[1] = v21;
  v38 = 4;
  v22 = sub_1D1E68C6C();
  v23 = &v10[v8[8]];
  *v23 = v22;
  v23[1] = v24;
  v37 = 5;
  v10[v8[9]] = sub_1D1E68D3C() & 1;
  v36 = 6;
  v10[v8[10]] = sub_1D1E68D3C() & 1;
  v35 = 7;
  v10[v8[11]] = sub_1D1E68D3C() & 1;
  v34 = 8;
  v25 = sub_1D1E68D3C();
  (*(v11 + 8))(v32, v33);
  v10[v8[12]] = v25 & 1;
  sub_1D1CEADF0(v10, v28);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1CEAE54(v10);
}

uint64_t sub_1D1CEA760()
{
  sub_1D1E6920C();
  StaticDeviceMetadata.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CEA7A4(uint64_t a1)
{
  sub_1D1E6920C();
  StaticDeviceMetadata.hash(into:)(v2);
  return sub_1D1E6926C();
}

double StaticDeviceMetadata.copyReplacing(id:manufacturer:model:serialNumber:firmwareVersion:isMatter:isCertified:isMFICertifiedACWG:supportsUWBUnlock:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11, char a12, char a13, char a14)
{
  v56 = a6;
  v57 = a8;
  v54 = a2;
  v55 = a4;
  v58 = a3;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v47 - v20;
  v22 = sub_1D1E66A7C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D17783E0(a1, v21);
  v26 = *(v23 + 48);
  v27 = v26(v21, 1, v22);
  v50 = v22;
  v51 = v25;
  if (v27 == 1)
  {
    (*(v23 + 16))(v25, v14, v22);
    if (v26(v21, 1, v22) != 1)
    {
      sub_1D1835548(v21);
    }
  }

  else
  {
    (*(v23 + 32))(v25, v21, v22);
  }

  v28 = v58;
  if (!v58)
  {
    v29 = (v14 + *(type metadata accessor for StaticDeviceMetadata(0) + 20));
    v28 = v29[1];
    v54 = *v29;
  }

  v30 = a5;
  v52 = a5;
  if (!a5)
  {
    v55 = *(v14 + *(type metadata accessor for StaticDeviceMetadata(0) + 24));
  }

  v49 = v30;
  v31 = a7;
  v53 = a7;
  if (!a7)
  {
    v56 = *(v14 + *(type metadata accessor for StaticDeviceMetadata(0) + 28));
  }

  v48 = v31;
  v32 = a11;
  v33 = a10;
  if (!a10)
  {
    v34 = (v14 + *(type metadata accessor for StaticDeviceMetadata(0) + 32));
    v33 = v34[1];
    v57 = *v34;
  }

  v35 = a12;
  if (a11 == 2)
  {
    v32 = *(v14 + *(type metadata accessor for StaticDeviceMetadata(0) + 36));
  }

  v36 = a13;
  if (a12 == 2)
  {
    v35 = *(v14 + *(type metadata accessor for StaticDeviceMetadata(0) + 40));
  }

  v37 = a14;
  if (a13 == 2)
  {
    v36 = *(v14 + *(type metadata accessor for StaticDeviceMetadata(0) + 44));
  }

  if (a14 == 2)
  {
    v37 = *(v14 + *(type metadata accessor for StaticDeviceMetadata(0) + 48));
  }

  (*(v23 + 32))(a9, v51, v50);
  v38 = type metadata accessor for StaticDeviceMetadata(0);
  v39 = (a9 + v38[5]);
  v40 = v55;
  *v39 = v54;
  v39[1] = v28;
  v41 = (a9 + v38[6]);
  v42 = v49;
  *v41 = v40;
  v41[1] = v42;
  v43 = (a9 + v38[7]);
  v44 = v48;
  *v43 = v56;
  v43[1] = v44;
  v45 = (a9 + v38[8]);
  *v45 = v57;
  v45[1] = v33;
  *(a9 + v38[9]) = v32 & 1;
  *(a9 + v38[10]) = v35 & 1;
  *(a9 + v38[11]) = v36 & 1;
  *(a9 + v38[12]) = v37 & 1;

  return result;
}

uint64_t _s13HomeDataModel20StaticDeviceMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    goto LABEL_39;
  }

  v4 = type metadata accessor for StaticDeviceMetadata(0);
  v5 = v4[5];
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 8);
  v8 = (a2 + v5);
  v9 = v8[1];
  if (v7)
  {
    if (!v9)
    {
      goto LABEL_39;
    }

    if (*v6 != *v8 || v7 != v9)
    {
      v11 = v4;
      v12 = sub_1D1E6904C();
      v4 = v11;
      if ((v12 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v9)
  {
    goto LABEL_39;
  }

  v13 = v4[6];
  v14 = (a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  v17 = v16[1];
  if (v15)
  {
    if (!v17)
    {
      goto LABEL_39;
    }

    if (*v14 != *v16 || v15 != v17)
    {
      v19 = v4;
      v20 = sub_1D1E6904C();
      v4 = v19;
      if ((v20 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v17)
  {
    goto LABEL_39;
  }

  v21 = v4[7];
  v22 = (a1 + v21);
  v23 = *(a1 + v21 + 8);
  v24 = (a2 + v21);
  v25 = v24[1];
  if (v23)
  {
    if (!v25)
    {
      goto LABEL_39;
    }

    if (*v22 != *v24 || v23 != v25)
    {
      v27 = v4;
      v28 = sub_1D1E6904C();
      v4 = v27;
      if ((v28 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v25)
  {
    goto LABEL_39;
  }

  v29 = v4[8];
  v30 = (a1 + v29);
  v31 = *(a1 + v29 + 8);
  v32 = (a2 + v29);
  v33 = v32[1];
  if (v31)
  {
    if (!v33)
    {
      goto LABEL_39;
    }

    if (*v30 != *v32 || v31 != v33)
    {
      v34 = v4;
      v35 = sub_1D1E6904C();
      v4 = v34;
      if ((v35 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v33)
  {
    goto LABEL_39;
  }

  if (*(a1 + v4[9]) == *(a2 + v4[9]) && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11]))
  {
    v36 = *(a1 + v4[12]) ^ *(a2 + v4[12]) ^ 1;
    return v36 & 1;
  }

LABEL_39:
  v36 = 0;
  return v36 & 1;
}

unint64_t sub_1D1CEAD9C()
{
  result = qword_1EC64D4E8;
  if (!qword_1EC64D4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D4E8);
  }

  return result;
}

uint64_t sub_1D1CEADF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticDeviceMetadata(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1CEAE54(uint64_t a1)
{
  v2 = type metadata accessor for StaticDeviceMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D1CEAEF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1CEAFB0(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D17786E4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1D1CEB060()
{
  result = qword_1EC64D500;
  if (!qword_1EC64D500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D500);
  }

  return result;
}

unint64_t sub_1D1CEB0B8()
{
  result = qword_1EC64D508;
  if (!qword_1EC64D508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D508);
  }

  return result;
}

unint64_t sub_1D1CEB110()
{
  result = qword_1EC64D510;
  if (!qword_1EC64D510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D510);
  }

  return result;
}

uint64_t sub_1D1CEB164(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74636166756E616DLL && a2 == 0xEC00000072657275 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C65646F6DLL && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x657261776D726966 && a2 == 0xEF6E6F6973726556 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x72657474614D7369 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6669747265437369 && a2 == 0xEB00000000646569 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D1EC8350 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D1EC8370 == a2)
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

uint64_t StaticHome.home.getter()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1CEB4E8;

  return sub_1D1CF1B0C();
}

uint64_t sub_1D1CEB4E8(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1CEB5E8, 0, 0);
}

uint64_t sub_1D1CEB5E8()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v0[2];
    v3 = v1;
    v4 = [v3 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v5 = sub_1D1E67C1C();

    v6 = swift_task_alloc();
    *(v6 + 16) = v2;
    v7 = sub_1D174A6C4(sub_1D1BFA878, v6, v5);
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v8 = sub_1D1E6709C();
    __swift_project_value_buffer(v8, qword_1EE07B5D8);
    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6833C();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D16EC000, v9, v10, "StaticHome → HMHome: Failed to find a valid HMHomeManager instance for this process, returning nil", v11, 2u);
      MEMORY[0x1D3893640](v11, -1, -1);
    }

    v7 = 0;
  }

  v12 = v0[1];

  return v12(v7);
}

uint64_t StaticHome.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticHome(0) + 20));

  return v1;
}

double StaticHome.actionSetsSortOrder.getter()
{
  type metadata accessor for StaticHome(0);

  return result;
}

double StaticHome.cameraProfilesSortOrder.getter()
{
  type metadata accessor for StaticHome(0);

  return result;
}

double StaticHome.residentsSortOrder.getter()
{
  type metadata accessor for StaticHome(0);

  return result;
}

uint64_t sub_1D1CEB928(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticHome(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v9 = sub_1D1E67C1C();

  if (!(v9 >> 62))
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:

    v12 = MEMORY[0x1E69E7CC0];
LABEL_14:
    v19 = v12;

    sub_1D1CF8424(&v19, a2);

    return v19;
  }

  v10 = sub_1D1E6873C();
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  v19 = MEMORY[0x1E69E7CC0];
  sub_1D178D050(0, v10 & ~(v10 >> 63), 0);
  if ((v10 & 0x8000000000000000) == 0)
  {
    v18 = a2;
    v11 = 0;
    v12 = v19;
    do
    {
      if ((v9 & 0xC000000000000001) != 0)
      {
        v13 = MEMORY[0x1D3891EF0](v11, v9);
      }

      else
      {
        v13 = *(v9 + 8 * v11 + 32);
      }

      sub_1D1CEBBBC(v13, a1, v7);
      v19 = v12;
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D178D050((v14 > 1), v15 + 1, 1);
        v12 = v19;
      }

      ++v11;
      *(v12 + 16) = v15 + 1;
      sub_1D1CF8DC4(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v15, type metadata accessor for StaticHome);
    }

    while (v10 != v11);

    a2 = v18;
    goto LABEL_14;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_1D1CEBBBC(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v102 = a2;
  v95 = sub_1D1E66A7C();
  v103 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v84 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v96);
  v101 = &v83 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v97 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v99 = &v83 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v100 = &v83 - v12;
  v13 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v14 = [a1 name];
  v15 = sub_1D1E6781C();
  v17 = v16;

  v18 = type metadata accessor for StaticHome(0);
  v19 = (a3 + v18[5]);
  *v19 = v15;
  v19[1] = v17;
  v20 = a3 + v18[6];
  v21 = a3;
  v93 = a3;
  HMHome.dateAdded.getter(v20);
  v22 = a1;
  v23 = [v22 roomForEntireHome];
  v24 = MEMORY[0x1E69E7CC0];
  v25 = sub_1D18D5304(MEMORY[0x1E69E7CC0]);
  v26 = sub_1D18D50D4(v24);
  v27 = sub_1D18D5520(v24);
  v28 = sub_1D18D573C(v24);
  v29 = sub_1D18D5958(v24);
  v86 = sub_1D18D5B74(v24);
  v94 = sub_1D18D5D90(v24);
  v30 = v21 + v18[7];
  v98 = sub_1D1D1B8DC(v22, v23);
  v31 = v23;
  v92 = sub_1D1CBA2C4(v25, v31);

  v32 = v31;
  v91 = sub_1D1CBA9B4(v26, v32);

  v33 = v32;
  v90 = sub_1D1CBB268(v27, v33);

  v34 = v33;
  v89 = sub_1D1CBB77C(v28, v34);

  v35 = v34;
  v88 = sub_1D1CBBC90(v29, v35);

  v36 = v35;
  v87 = sub_1D1CBC380(v86, v36);

  v37 = v36;
  v86 = sub_1D1CBCA70(v94, v37);

  v38 = [v37 uniqueIdentifier];
  sub_1D1E66A5C();

  v39 = [v37 name];
  v85 = sub_1D1E6781C();
  v41 = v40;

  v42 = type metadata accessor for StaticRoom(0);
  sub_1D18B1B7C(v30 + v42[6]);
  sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
  v43 = [v22 roomForEntireHome];
  LOBYTE(v23) = sub_1D1E684FC();

  v44 = [v22 uniqueIdentifier];
  sub_1D1E66A5C();

  v94 = "showPredictedScenesOnDashboard";
  v45 = sub_1D18AF4CC();
  v46 = sub_1D18AF4CC();
  v47 = sub_1D18B13F4();

  v48 = (v30 + v42[5]);
  *v48 = v85;
  v48[1] = v41;
  *(v30 + v42[7]) = v23 & 1;
  *(v30 + v42[8]) = v98;
  v49 = v93;
  *(v30 + v42[10]) = v92;
  v50 = v90;
  *(v30 + v42[11]) = v91;
  *(v30 + v42[12]) = v50;
  v51 = v88;
  *(v30 + v42[13]) = v89;
  *(v30 + v42[14]) = v51;
  v52 = v86;
  *(v30 + v42[15]) = v87;
  *(v30 + v42[16]) = v52;
  *(v30 + v42[17]) = v45;
  *(v30 + v42[18]) = v46;
  *(v30 + v42[19]) = v47;
  v53 = v100;
  v54 = [v22 currentUser];
  v55 = v18[8];
  v56 = v22;
  v57 = v95;
  v58 = v56;
  sub_1D1D3335C(v54, v56, v49 + v55);
  v98 = v58;
  v59 = [v58 uniqueIdentifier];
  sub_1D1E66A5C();

  v60 = *(v103 + 56);
  v61 = 1;
  v60(v53, 0, 1, v57);
  v62 = [v102 currentHome];
  if (v62)
  {
    v63 = v62;
    v64 = [v62 uniqueIdentifier];

    v65 = v99;
    sub_1D1E66A5C();

    v61 = 0;
  }

  else
  {
    v65 = v99;
  }

  v60(v65, v61, 1, v57);
  v66 = *(v96 + 48);
  v67 = v101;
  sub_1D1741C08(v53, v101, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741C08(v65, v67 + v66, &qword_1EC642590, qword_1D1E71260);
  v68 = *(v103 + 48);
  v69 = v68(v67, 1, v57);
  v70 = v97;
  if (v69 == 1)
  {
    sub_1D1741A30(v65, &qword_1EC642590, qword_1D1E71260);
    v71 = v101;
    sub_1D1741A30(v53, &qword_1EC642590, qword_1D1E71260);
    if (v68(v71 + v66, 1, v57) == 1)
    {
      sub_1D1741A30(v71, &qword_1EC642590, qword_1D1E71260);
      v72 = 1;
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  sub_1D1741C08(v67, v97, &qword_1EC642590, qword_1D1E71260);
  if (v68(v67 + v66, 1, v57) == 1)
  {
    sub_1D1741A30(v99, &qword_1EC642590, qword_1D1E71260);
    v71 = v101;
    sub_1D1741A30(v100, &qword_1EC642590, qword_1D1E71260);
    (*(v103 + 8))(v70, v57);
LABEL_9:
    sub_1D1741A30(v71, &qword_1EC642980, &unk_1D1E6E6E0);
    v72 = 0;
    goto LABEL_11;
  }

  v73 = v103;
  v74 = v84;
  (*(v103 + 32))(v84, v67 + v66, v57);
  sub_1D1CF8D7C(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v72 = sub_1D1E6775C();
  v75 = *(v73 + 8);
  v75(v74, v57);
  sub_1D1741A30(v99, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v100, &qword_1EC642590, qword_1D1E71260);
  v75(v70, v57);
  sub_1D1741A30(v67, &qword_1EC642590, qword_1D1E71260);
LABEL_11:
  *(v49 + v18[9]) = v72 & 1;
  v76 = v98;
  sub_1D1CEF2D4(v76, &v104);
  v77 = v104;
  *(v49 + v18[10]) = v104;
  v78 = 0x10200u >> (8 * v77);
  if (v72)
  {
    LOBYTE(v78) = 0;
  }

  *(v49 + v18[11]) = v78;
  *(v49 + v18[12]) = sub_1D18AF4CC();
  *(v49 + v18[13]) = HMHome.sectionsSortOrder.getter();
  *(v49 + v18[14]) = sub_1D18AF4CC();
  *(v49 + v18[15]) = sub_1D18AF4CC();
  *(v49 + v18[16]) = sub_1D18AF4CC();
  *(v49 + v18[17]) = sub_1D18AF4CC();
  v79 = sub_1D18AD70C();
  if (!v79)
  {
    v79 = sub_1D18ADE40();
    if (!v79)
    {
      v79 = MEMORY[0x1E69E7CC0];
    }
  }

  *(v49 + v18[18]) = v79;
  *(v49 + v18[19]) = [v76 isAutomaticSoftwareUpdateEnabled];
  *(v49 + v18[20]) = sub_1D1D03040(v76);
  *(v49 + v18[21]) = [v76 supportsResidentSelection];
  v80 = v18[22];
  v81 = [v76 userSelectedPreferredResident];
  if (v81)
  {
    StaticResident.init(with:home:)(v81, v76, v49 + v80);
  }

  else
  {

    v82 = type metadata accessor for StaticResident(0);
    (*(*(v82 - 8) + 56))(v49 + v80, 1, 1, v82);
  }
}

uint64_t StaticHome.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticHome.remoteAccessState.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticHome(0);
  *a1 = *(v1 + *(result + 40));
  return result;
}

uint64_t StaticHome.nonResponsiveType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticHome(0);
  *a1 = *(v1 + *(result + 44));
  return result;
}

double StaticHome.sidebarRoomsSortOrder.getter()
{
  type metadata accessor for StaticHome(0);

  return result;
}

double StaticHome.sectionsSortOrder.getter()
{
  type metadata accessor for StaticHome(0);

  return result;
}

double StaticHome.servicesSortOrder.getter()
{
  type metadata accessor for StaticHome(0);

  return result;
}

double StaticHome.umbrellaCategoriesSortOrder.getter()
{
  type metadata accessor for StaticHome(0);

  return result;
}

double StaticHome.colorPickerFavorites.getter()
{
  type metadata accessor for StaticHome(0);

  return result;
}

uint64_t StaticHome.init(id:name:dateAdded:defaultRoom:currentStaticUser:isUserAtHome:remoteAccessState:nonResponsiveType:sidebarRoomsSortOrder:sectionsSortOrder:actionSetsSortOrder:servicesSortOrder:cameraProfilesSortOrder:umbrellaCategoriesSortOrder:colorPickerFavorites:supportAutomaticSoftwareUpdate:residentsSortOrder:supportsResidentSelection:userSelectedResident:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char *a8@<X7>, uint64_t a9@<X8>, char *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, char a18, uint64_t a19, char a20, uint64_t a21)
{
  v27 = *a8;
  v28 = *a10;
  v29 = sub_1D1E66A7C();
  (*(*(v29 - 8) + 32))(a9, a1, v29);
  v30 = type metadata accessor for StaticHome(0);
  v31 = (a9 + v30[5]);
  *v31 = a2;
  v31[1] = a3;
  sub_1D1741A90(a4, a9 + v30[6], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1CF8DC4(a5, a9 + v30[7], type metadata accessor for StaticRoom);
  sub_1D1CF8DC4(a6, a9 + v30[8], type metadata accessor for StaticUser);
  *(a9 + v30[9]) = a7;
  *(a9 + v30[10]) = v27;
  *(a9 + v30[11]) = v28;
  *(a9 + v30[12]) = a11;
  *(a9 + v30[13]) = a12;
  *(a9 + v30[14]) = a13;
  *(a9 + v30[15]) = a14;
  *(a9 + v30[16]) = a15;
  *(a9 + v30[17]) = a16;
  *(a9 + v30[20]) = a19;
  *(a9 + v30[18]) = a17;
  *(a9 + v30[19]) = a18;
  *(a9 + v30[21]) = a20;
  return sub_1D1741A90(a21, a9 + v30[22], &qword_1EC64D530, &qword_1D1EA5BD8);
}

unint64_t sub_1D1CECC30(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x6564644165746164;
      break;
    case 3:
      result = 0x52746C7561666564;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x7441726573557369;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0xD000000000000011;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000011;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD00000000000001BLL;
      break;
    case 14:
    case 18:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD00000000000001ELL;
      break;
    case 16:
      result = 0xD000000000000012;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D1CECE50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1CF850C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1CECE78(uint64_t a1)
{
  v2 = sub_1D1CF4D90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CECEB4(uint64_t a1)
{
  v2 = sub_1D1CF4D90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticHome.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D538, &qword_1D1EA5BE0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CF4D90();
  sub_1D1E6930C();
  LOBYTE(v12) = 0;
  sub_1D1E66A7C();
  sub_1D1CF8D7C(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticHome(0);
    LOBYTE(v12) = 1;
    sub_1D1E68ECC();
    LOBYTE(v12) = 2;
    sub_1D1E669FC();
    sub_1D1CF8D7C(&qword_1EC642EC8, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1D1E68E5C();
    LOBYTE(v12) = 3;
    type metadata accessor for StaticRoom(0);
    sub_1D1CF8D7C(&qword_1EC6448A0, type metadata accessor for StaticRoom, &protocol conformance descriptor for StaticRoom);
    sub_1D1E68F1C();
    LOBYTE(v12) = 4;
    type metadata accessor for StaticUser(0);
    sub_1D1CF8D7C(&qword_1EC64CD70, type metadata accessor for StaticUser, &protocol conformance descriptor for StaticUser);
    sub_1D1E68F1C();
    LOBYTE(v12) = 5;
    sub_1D1E68EDC();
    LOBYTE(v12) = *(v3 + v9[10]);
    v13 = 6;
    sub_1D1CF4DE4();
    sub_1D1E68F1C();
    LOBYTE(v12) = *(v3 + v9[11]);
    v13 = 7;
    sub_1D1BC90EC();
    sub_1D1E68F1C();
    v12 = *(v3 + v9[12]);
    v13 = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1CF4E8C(&qword_1EC644D58, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E6300]);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[13]);
    v13 = 9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
    sub_1D1CF4F28(&qword_1EC64D550, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[14]);
    v13 = 10;
    sub_1D1E68F1C();
    v12 = *(v3 + v9[15]);
    v13 = 11;
    sub_1D1E68F1C();
    v12 = *(v3 + v9[16]);
    v13 = 12;
    sub_1D1E68F1C();
    v12 = *(v3 + v9[17]);
    v13 = 13;
    sub_1D1E68F1C();
    v12 = *(v3 + v9[18]);
    v13 = 14;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D558, &qword_1D1EA5BE8);
    sub_1D1CF4F94(&qword_1EC64D560, &qword_1EC64D568, &protocol conformance descriptor for ColorPickerFavorite, MEMORY[0x1E69E6300]);
    sub_1D1E68F1C();
    LOBYTE(v12) = 15;
    sub_1D1E68EDC();
    v12 = *(v3 + v9[20]);
    v13 = 16;
    sub_1D1E68E5C();
    LOBYTE(v12) = 17;
    sub_1D1E68EDC();
    LOBYTE(v12) = 18;
    type metadata accessor for StaticResident(0);
    sub_1D1CF8D7C(&qword_1EC64CDB8, type metadata accessor for StaticResident, &protocol conformance descriptor for StaticResident);
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticHome.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for StaticResident(0);
  v89 = *(v4 - 8);
  v90 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v86 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D530, &qword_1D1EA5BD8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v86 - v7;
  v9 = sub_1D1E66A7C();
  v91 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v95 = &v86 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v99 = &v86 - v13;
  v14 = MEMORY[0x1EEE9AC00](v12);
  v98 = &v86 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v97 = &v86 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v96 = &v86 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v86 - v20;
  v22 = sub_1D1E669FC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v92 = &v86 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v86 - v26;
  v94 = sub_1D1CF8D7C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v28 = type metadata accessor for StaticHome(0);
  sub_1D1E678EC();
  v93 = v28;
  sub_1D1741C08(&v2[*(v28 + 24)], v27, &qword_1EC642570, &qword_1D1E6C6A0);
  v29 = (*(v23 + 48))(v27, 1, v22);
  v88 = v8;
  if (v29 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v30 = v92;
    (*(v23 + 32))(v92, v27, v22);
    sub_1D1E6922C();
    sub_1D1CF8D7C(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
    sub_1D1E676EC();
    (*(v23 + 8))(v30, v22);
  }

  v31 = v93;
  StaticRoom.hash(into:)(a1);
  v32 = &v2[v31[8]];
  sub_1D1E676EC();
  v33 = type metadata accessor for StaticUser(0);
  sub_1D1E678EC();
  sub_1D1E676EC();
  MEMORY[0x1D3892850](v32[*(v33 + 28)]);
  MEMORY[0x1D3892850](v32[*(v33 + 32)]);
  sub_1D1E6922C();
  MEMORY[0x1D3892850](v2[v31[10]]);
  MEMORY[0x1D3892850](v2[v31[11]]);
  v34 = v31[12];
  v92 = v2;
  v35 = *&v2[v34];
  MEMORY[0x1D3892850](*(v35 + 16));
  v36 = *(v35 + 16);
  if (v36)
  {
    v37 = *(v91 + 16);
    v38 = v35 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v39 = *(v91 + 72);
    v40 = (v91 + 8);
    do
    {
      v37(v21, v38, v9);
      sub_1D1E676EC();
      (*v40)(v21, v9);
      v38 += v39;
      --v36;
    }

    while (v36);
  }

  v41 = *&v92[v93[13]];
  MEMORY[0x1D3892850](*(v41 + 16));
  v42 = *(v41 + 16);
  if (v42)
  {
    v43 = v41 + 40;
    do
    {

      sub_1D1E678EC();

      v43 += 16;
      --v42;
    }

    while (v42);
  }

  v44 = *&v92[v93[14]];
  MEMORY[0x1D3892850](*(v44 + 16));
  v45 = *(v44 + 16);
  v46 = v96;
  if (v45)
  {
    v47 = *(v91 + 16);
    v48 = v44 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v49 = *(v91 + 72);
    v50 = (v91 + 8);
    do
    {
      v47(v46, v48, v9);
      sub_1D1E676EC();
      v46 = v96;
      (*v50)(v96, v9);
      v48 += v49;
      --v45;
    }

    while (v45);
  }

  v51 = *&v92[v93[15]];
  MEMORY[0x1D3892850](*(v51 + 16));
  v52 = *(v51 + 16);
  v53 = v97;
  if (v52)
  {
    v54 = *(v91 + 16);
    v55 = v51 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v56 = *(v91 + 72);
    v57 = (v91 + 8);
    do
    {
      v54(v53, v55, v9);
      sub_1D1E676EC();
      v53 = v97;
      (*v57)(v97, v9);
      v55 += v56;
      --v52;
    }

    while (v52);
  }

  v58 = *&v92[v93[16]];
  MEMORY[0x1D3892850](*(v58 + 16));
  v59 = *(v58 + 16);
  v60 = v98;
  if (v59)
  {
    v61 = *(v91 + 16);
    v62 = v58 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v63 = *(v91 + 72);
    v64 = (v91 + 8);
    do
    {
      v61(v60, v62, v9);
      sub_1D1E676EC();
      v60 = v98;
      (*v64)(v98, v9);
      v62 += v63;
      --v59;
    }

    while (v59);
  }

  v65 = *&v92[v93[17]];
  MEMORY[0x1D3892850](*(v65 + 16));
  v66 = *(v65 + 16);
  v67 = v99;
  if (v66)
  {
    v68 = *(v91 + 16);
    v69 = v65 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
    v70 = *(v91 + 72);
    v71 = (v91 + 8);
    do
    {
      v68(v67, v69, v9);
      sub_1D1E676EC();
      v67 = v99;
      (*v71)(v99, v9);
      v69 += v70;
      --v66;
    }

    while (v66);
  }

  v73 = v92;
  v72 = v93;
  sub_1D1771168(a1, *&v92[v93[18]]);
  sub_1D1E6922C();
  v74 = *&v73[v72[20]];
  if (v74)
  {
    sub_1D1E6922C();
    MEMORY[0x1D3892850](*(v74 + 16));
    v75 = *(v74 + 16);
    v76 = v95;
    if (v75)
    {
      v77 = *(v91 + 16);
      v78 = v74 + ((*(v91 + 80) + 32) & ~*(v91 + 80));
      v79 = *(v91 + 72);
      v80 = (v91 + 8);
      do
      {
        v77(v76, v78, v9);
        sub_1D1E676EC();
        v76 = v95;
        (*v80)(v95, v9);
        v78 += v79;
        --v75;
      }

      while (v75);
    }
  }

  else
  {
    sub_1D1E6922C();
  }

  v82 = v92;
  v81 = v93;
  sub_1D1E6922C();
  v83 = v88;
  sub_1D1741C08(&v82[v81[22]], v88, &qword_1EC64D530, &qword_1D1EA5BD8);
  if ((*(v89 + 48))(v83, 1, v90) == 1)
  {
    return sub_1D1E6922C();
  }

  v85 = v87;
  sub_1D1CF8DC4(v83, v87, type metadata accessor for StaticResident);
  sub_1D1E6922C();
  StaticResident.hash(into:)(a1);
  return sub_1D1CF5098(v85, type metadata accessor for StaticResident);
}

uint64_t StaticHome.hashValue.getter()
{
  sub_1D1E6920C();
  StaticHome.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticHome.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D530, &qword_1D1EA5BD8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v51 = &v48 - v4;
  v54 = type metadata accessor for StaticUser(0);
  MEMORY[0x1EEE9AC00](v54);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for StaticRoom(0);
  MEMORY[0x1EEE9AC00](v55);
  v57 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v48 - v8;
  v10 = sub_1D1E66A7C();
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D570, &qword_1D1EA5BF0);
  v59 = *(v12 - 8);
  v60 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - v13;
  v15 = type metadata accessor for StaticHome(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v48 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CF4D90();
  v61 = v14;
  v18 = v62;
  sub_1D1E692FC();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v57;
  v49 = v15;
  v50 = a1;
  v62 = v17;
  LOBYTE(v63) = 0;
  sub_1D1CF8D7C(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v20 = v58;
  sub_1D1E68D7C();
  v22 = *(v56 + 32);
  v23 = v62;
  v48 = v10;
  v22(v62, v20, v10);
  LOBYTE(v63) = 1;
  v24 = sub_1D1E68D2C();
  v25 = v49;
  v26 = &v23[v49[5]];
  *v26 = v24;
  v26[1] = v27;
  sub_1D1E669FC();
  LOBYTE(v63) = 2;
  sub_1D1CF8D7C(&qword_1EC642EB8, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
  sub_1D1E68CBC();
  sub_1D1741A90(v9, &v23[v25[6]], &qword_1EC642570, &qword_1D1E6C6A0);
  LOBYTE(v63) = 3;
  sub_1D1CF8D7C(&qword_1EC6448B8, type metadata accessor for StaticRoom, &protocol conformance descriptor for StaticRoom);
  sub_1D1E68D7C();
  sub_1D1CF8DC4(v19, &v23[v25[7]], type metadata accessor for StaticRoom);
  LOBYTE(v63) = 4;
  sub_1D1CF8D7C(&qword_1EC64CE28, type metadata accessor for StaticUser, &protocol conformance descriptor for StaticUser);
  v28 = v53;
  sub_1D1E68D7C();
  sub_1D1CF8DC4(v28, &v23[v25[8]], type metadata accessor for StaticUser);
  LOBYTE(v63) = 5;
  v23[v25[9]] = sub_1D1E68D3C() & 1;
  v64 = 6;
  sub_1D1CF4E38();
  sub_1D1E68D7C();
  v23[v25[10]] = v63;
  v64 = 7;
  sub_1D1BC934C();
  sub_1D1E68D7C();
  v55 = 0;
  v23[v25[11]] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
  v64 = 8;
  sub_1D1CF4E8C(&qword_1EC644DA0, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6330]);
  sub_1D1E68D7C();
  v58 = 0;
  *&v62[v49[12]] = v63;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  v64 = 9;
  sub_1D1CF4F28(&qword_1EC64D580, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  v31 = v58;
  sub_1D1E68D7C();
  v58 = v31;
  if (v31)
  {
    (*(v59 + 8))(v61, v60);
    v32 = 0;
    v33 = 0;
    v34 = 0;
    LODWORD(v57) = 0;
    LODWORD(v59) = 0;
    LODWORD(v60) = 0;
    LODWORD(v61) = 0;
    v35 = v55;
  }

  else
  {
    *&v62[v49[13]] = v63;
    v64 = 10;
    v36 = v58;
    sub_1D1E68D7C();
    v58 = v36;
    if (v36)
    {
      (*(v59 + 8))(v61, v60);
      v33 = 0;
      v34 = 0;
      LODWORD(v57) = 0;
      LODWORD(v59) = 0;
      LODWORD(v60) = 0;
      LODWORD(v61) = 0;
      v32 = 1;
      v35 = v55;
    }

    else
    {
      *&v62[v49[14]] = v63;
      v64 = 11;
      v37 = v58;
      sub_1D1E68D7C();
      v58 = v37;
      if (v37)
      {
        (*(v59 + 8))(v61, v60);
        v34 = 0;
        LODWORD(v57) = 0;
        LODWORD(v59) = 0;
        LODWORD(v60) = 0;
        LODWORD(v61) = 0;
        v32 = 1;
        v33 = 1;
        v35 = v55;
      }

      else
      {
        *&v62[v49[15]] = v63;
        v64 = 12;
        v38 = v58;
        sub_1D1E68D7C();
        v58 = v38;
        if (v38)
        {
          (*(v59 + 8))(v61, v60);
          LODWORD(v57) = 0;
          LODWORD(v59) = 0;
          LODWORD(v60) = 0;
          LODWORD(v61) = 0;
          v32 = 1;
          v33 = 1;
          v34 = 1;
          v35 = v55;
        }

        else
        {
          *&v62[v49[16]] = v63;
          v64 = 13;
          v39 = v58;
          sub_1D1E68D7C();
          v58 = v39;
          if (v39)
          {
            (*(v59 + 8))(v61, v60);
            LODWORD(v59) = 0;
            LODWORD(v60) = 0;
            LODWORD(v61) = 0;
            v32 = 1;
            v33 = 1;
            v34 = 1;
            LODWORD(v57) = 1;
            v35 = v55;
          }

          else
          {
            *&v62[v49[17]] = v63;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D558, &qword_1D1EA5BE8);
            v64 = 14;
            sub_1D1CF4F94(&qword_1EC64D588, &qword_1EC64D590, &protocol conformance descriptor for ColorPickerFavorite, MEMORY[0x1E69E6330]);
            v40 = v58;
            sub_1D1E68D7C();
            v58 = v40;
            if (v40)
            {
              (*(v59 + 8))(v61, v60);
              LODWORD(v60) = 0;
              LODWORD(v61) = 0;
              v32 = 1;
              v33 = 1;
              v34 = 1;
              LODWORD(v57) = 1;
              LODWORD(v59) = 1;
              v35 = v55;
            }

            else
            {
              *&v62[v49[18]] = v63;
              LOBYTE(v63) = 15;
              v41 = v58;
              v42 = sub_1D1E68D3C();
              v58 = v41;
              if (v41 || (v62[v49[19]] = v42 & 1, v64 = 16, v43 = v58, sub_1D1E68CBC(), (v58 = v43) != 0))
              {
                (*(v59 + 8))(v61, v60);
                LODWORD(v61) = 0;
                v32 = 1;
                v33 = 1;
                v34 = 1;
                LODWORD(v57) = 1;
                LODWORD(v59) = 1;
                LODWORD(v60) = 1;
                v35 = v55;
              }

              else
              {
                *&v62[v49[20]] = v63;
                LOBYTE(v63) = 17;
                v44 = v58;
                v45 = sub_1D1E68D3C();
                v58 = v44;
                if (!v44)
                {
                  v62[v49[21]] = v45 & 1;
                  type metadata accessor for StaticResident(0);
                  LOBYTE(v63) = 18;
                  sub_1D1CF8D7C(&qword_1EC64CE58, type metadata accessor for StaticResident, &protocol conformance descriptor for StaticResident);
                  v46 = v58;
                  sub_1D1E68CBC();
                  v58 = v46;
                  if (!v46)
                  {
                    (*(v59 + 8))(v61, v60);
                    v47 = v62;
                    sub_1D1741A90(v51, &v62[v49[22]], &qword_1EC64D530, &qword_1D1EA5BD8);
                    sub_1D1CF5030(v47, v52, type metadata accessor for StaticHome);
                    __swift_destroy_boxed_opaque_existential_1(v50);
                    return sub_1D1CF5098(v47, type metadata accessor for StaticHome);
                  }
                }

                (*(v59 + 8))(v61, v60);
                v32 = 1;
                v33 = 1;
                v34 = 1;
                LODWORD(v57) = 1;
                LODWORD(v59) = 1;
                LODWORD(v60) = 1;
                LODWORD(v61) = 1;
                v35 = v55;
              }
            }
          }
        }
      }
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v50);
  (*(v56 + 8))(v62, v48);
  if (!v35)
  {
  }

  v29 = v49;
  v30 = v62;
  sub_1D1741A30(&v62[v49[6]], &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1CF5098(&v30[v29[7]], type metadata accessor for StaticRoom);
  sub_1D1CF5098(&v30[v29[8]], type metadata accessor for StaticUser);

  if (v32)
  {

    if (v33)
    {
      goto LABEL_17;
    }

LABEL_9:
    if (!v34)
    {
      goto LABEL_18;
    }

LABEL_10:

    if (v57)
    {
      goto LABEL_19;
    }

LABEL_11:
    if (!v59)
    {
      goto LABEL_20;
    }

LABEL_12:

    if (v60)
    {
      goto LABEL_21;
    }

LABEL_13:
    if (v61)
    {
    }

    return result;
  }

  if (!v33)
  {
    goto LABEL_9;
  }

LABEL_17:

  if (v34)
  {
    goto LABEL_10;
  }

LABEL_18:
  if (!v57)
  {
    goto LABEL_11;
  }

LABEL_19:

  if (v59)
  {
    goto LABEL_12;
  }

LABEL_20:
  if (!v60)
  {
    goto LABEL_13;
  }

LABEL_21:

  if (v61)
  {
  }

  return result;
}

uint64_t sub_1D1CEF114()
{
  sub_1D1E6920C();
  StaticHome.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1CEF158(uint64_t a1)
{
  sub_1D1E6920C();
  StaticHome.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticHome.description.getter()
{
  sub_1D1E6884C();

  sub_1D1E66A7C();
  sub_1D1CF8D7C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
  v1 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v1);

  MEMORY[0x1D3890F70](32, 0xE100000000000000);
  v2 = type metadata accessor for StaticHome(0);
  MEMORY[0x1D3890F70](*(v0 + *(v2 + 20)), *(v0 + *(v2 + 20) + 8));
  return 0x6F48636974617453;
}

uint64_t sub_1D1CEF2D4@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v3 = [a1 residentDevices];
  sub_1D1741B10(0, &qword_1EE07B270, 0x1E696CC28);
  v4 = sub_1D1E67C1C();

  if (!(v4 >> 62))
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_3;
    }

LABEL_24:
    v7 = 1;
    goto LABEL_25;
  }

LABEL_23:
  v5 = sub_1D1E6873C();
  if (!v5)
  {
    goto LABEL_24;
  }

LABEL_3:
  v6 = 0;
  v7 = 1;
  while (2)
  {
    while (1)
    {
      v8 = v6;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          v9 = MEMORY[0x1D3891EF0](v8, v4);
        }

        else
        {
          if (v8 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }

          v9 = *(v4 + 8 * v8 + 32);
        }

        v10 = v9;
        v6 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        if ([v9 isEnabled])
        {
          break;
        }

        ++v8;
        if (v6 == v5)
        {
          goto LABEL_25;
        }
      }

      if (v7 == 3)
      {
        break;
      }

      v11 = [v10 status];

      if (v11)
      {
        v7 = 3;
      }

      else
      {
        v7 = 2;
      }

      if (v6 == v5)
      {
        goto LABEL_25;
      }
    }

    v7 = 3;
    if (v6 != v5)
    {
      continue;
    }

    break;
  }

LABEL_25:

  *a2 = v7;
  return result;
}

uint64_t sub_1D1CEF46C(uint64_t a1)
{
  v2 = sub_1D1CF5260();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CEF4A8(uint64_t a1)
{
  v2 = sub_1D1CF5260();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CEF4E4(uint64_t a1)
{
  v2 = sub_1D1CF52B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CEF520(uint64_t a1)
{
  v2 = sub_1D1CF52B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CEF55C()
{
  v1 = 0x746553746F6ELL;
  v2 = 0x656C6261706163;
  if (*v0 != 2)
  {
    v2 = 0x6C62616C69617661;
  }

  if (*v0)
  {
    v1 = 0x6261706143746F6ELL;
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

uint64_t sub_1D1CEF5DC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1CF8AE4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1CEF604(uint64_t a1)
{
  v2 = sub_1D1CF520C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CEF640(uint64_t a1)
{
  v2 = sub_1D1CF520C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CEF67C(uint64_t a1)
{
  v2 = sub_1D1CF5308();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CEF6B8(uint64_t a1)
{
  v2 = sub_1D1CF5308();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CEF6F4(uint64_t a1)
{
  v2 = sub_1D1CF535C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CEF730(uint64_t a1)
{
  v2 = sub_1D1CF535C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticHome.RemoteAccessState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D598, &qword_1D1EA5BF8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5A0, &qword_1D1EA5C00);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5A8, &qword_1D1EA5C08);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5B0, &qword_1D1EA5C10);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5B8, &qword_1D1EA5C18);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CF520C();
  sub_1D1E6930C();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1D1CF52B4();
      v18 = v27;
      sub_1D1E68DFC();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1D1CF5260();
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
    sub_1D1CF5308();
    v18 = v24;
    sub_1D1E68DFC();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1D1CF535C();
  sub_1D1E68DFC();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

uint64_t StaticHome.RemoteAccessState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5E8, &qword_1D1EA5C20);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5F0, &qword_1D1EA5C28);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D5F8, &qword_1D1EA5C30);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D600, &qword_1D1EA5C38);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D608, &unk_1D1EA5C40);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D1CF520C();
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
      *v28 = &type metadata for StaticHome.RemoteAccessState;
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
        sub_1D1CF5308();
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
        sub_1D1CF535C();
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
      sub_1D1CF52B4();
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
      sub_1D1CF5260();
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

uint64_t sub_1D1CF0230(uint64_t a1, unsigned __int8 *a2)
{
  v40 = a1;
  v3 = sub_1D1E66BAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E669FC();
  v39 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66BBC();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v43 = &type metadata for HomeAppFeatures;
  v44 = sub_1D19C6154();
  LOBYTE(v41) = 3;
  LOBYTE(a2) = sub_1D1E66D5C();
  __swift_destroy_boxed_opaque_existential_1(&v41);
  if ((a2 & 1) == 0)
  {
    return static String.hfLocalized(_:)(0xD00000000000001ELL, 0x80000001D1EBAD70);
  }

  v41 = 0xD00000000000001ELL;
  v42 = 0x80000001D1EC8690;
  if (v14 != 2)
  {
    if (v14)
    {
      v15 = sub_1D1E6904C();

      if ((v15 & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      swift_bridgeObjectRelease_n();
    }

    MEMORY[0x1D3890F70](0x6574746142776F4CLL, 0xEA00000000007972);
  }

LABEL_9:
  v38 = v7;
  sub_1D1E66B9C();
  v17 = sub_1D1E66AFC();
  v18 = *(v11 + 8);
  v18(v13, v10);
  if (v17)
  {
    MEMORY[0x1D3890F70](0x746E6572727543, 0xE700000000000000);
    v19 = static String.hfLocalized(_:)(v41, v42);
    v21 = v20;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1D1E739C0;
    if (qword_1EC642420 == -1)
    {
      goto LABEL_11;
    }

LABEL_23:
    swift_once();
    goto LABEL_11;
  }

  sub_1D1E66B9C();
  v26 = sub_1D1E66B3C();
  v18(v13, v10);
  if ((v26 & 1) == 0)
  {
    sub_1D1E66B9C();
    sub_1D1E669EC();
    (*(v4 + 104))(v6, *MEMORY[0x1E6969A68], v3);
    v28 = sub_1D1E66B8C();
    (*(v4 + 8))(v6, v3);
    (*(v39 + 8))(v9, v38);
    v18(v13, v10);
    if (v28)
    {
      MEMORY[0x1D3890F70](1953718608, 0xE400000000000000);
      v19 = static String.hfLocalized(_:)(v41, v42);
      v21 = v29;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D1E739C0;
      if (qword_1EC642418 != -1)
      {
        swift_once();
      }

      v30 = qword_1EC6BE268;
      v24 = sub_1D1E6694C();
      v25 = [v30 stringFromDate_];
    }

    else
    {
      MEMORY[0x1D3890F70](0x7261655974736150, 0xE800000000000000);
      v19 = static String.hfLocalized(_:)(v41, v42);
      v21 = v31;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1D1E739C0;
      if (qword_1EC642430 != -1)
      {
        swift_once();
      }

      v32 = qword_1EC6BE280;
      v24 = sub_1D1E6694C();
      v25 = [v32 stringFromDate_];
    }

    goto LABEL_22;
  }

  MEMORY[0x1D3890F70](0x6164726574736559, 0xE900000000000079);
  v19 = static String.hfLocalized(_:)(v41, v42);
  v21 = v27;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1D1E739C0;
  if (qword_1EC642420 != -1)
  {
    goto LABEL_23;
  }

LABEL_11:
  v23 = qword_1EC6BE270;
  v24 = sub_1D1E6694C();
  v25 = [v23 stringFromDate_];
LABEL_22:
  v33 = v25;

  v34 = sub_1D1E6781C();
  v36 = v35;

  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1D1757D20();
  *(v22 + 32) = v34;
  *(v22 + 40) = v36;
  static String.hfLocalized(_:)(v19, v21);

  v37 = sub_1D1E6784C();

  return v37;
}

uint64_t sub_1D1CF096C(uint64_t a1)
{
  v2 = sub_1D1E66BAC();
  v36 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D1E669FC();
  v35 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66BBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6697C();
  if (v12 < -60.0)
  {
    v13 = v12;
    sub_1D1E66B9C();
    v14 = sub_1D1E66AFC();
    v15 = *(v9 + 8);
    v15(v11, v8);
    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D1E739C0;
      v17 = _s13HomeDataModel06StaticA0V25abbreviatedRelativeString4dateSS10Foundation4DateV_tFZ_0(a1);
      v19 = v18;
      *(v16 + 56) = MEMORY[0x1E69E6158];
      *(v16 + 64) = sub_1D1757D20();
      *(v16 + 32) = v17;
      *(v16 + 40) = v19;
      static String.hfLocalized(_:)(0xD00000000000001CLL, 0x80000001D1EC8640);
      v20 = sub_1D1E6784C();
    }

    else
    {
      sub_1D1E66B9C();
      v22 = sub_1D1E66B3C();
      v15(v11, v8);
      if (v22)
      {
        return static String.hfLocalized(_:)(0xD000000000000025, 0x80000001D1EC8610);
      }

      if (v13 >= -604800.0)
      {
        v24 = "etailsHeaderPast";
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1D1E739C0;
        if (qword_1EC642438 != -1)
        {
          swift_once();
        }

        v29 = qword_1EC6BE288;
        v27 = sub_1D1E6694C();
        v28 = [v29 stringFromDate_];
      }

      else
      {
        sub_1D1E66B9C();
        sub_1D1E669EC();
        (*(v36 + 104))(v4, *MEMORY[0x1E6969A68], v2);
        v23 = sub_1D1E66B8C();
        (*(v36 + 8))(v4, v2);
        (*(v35 + 8))(v7, v5);
        v15(v11, v8);
        v24 = "HFCameraSnapshotAgeNow";
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642E70, &qword_1D1E77660);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_1D1E739C0;
        if (v23)
        {
          if (qword_1EC642428 != -1)
          {
            swift_once();
          }

          v26 = qword_1EC6BE278;
          v27 = sub_1D1E6694C();
          v28 = [v26 stringFromDate_];
        }

        else
        {
          if (qword_1EC642430 != -1)
          {
            swift_once();
          }

          v30 = qword_1EC6BE280;
          v27 = sub_1D1E6694C();
          v28 = [v30 stringFromDate_];
        }
      }

      v31 = v28;

      v32 = sub_1D1E6781C();
      v34 = v33;

      *(v25 + 56) = MEMORY[0x1E69E6158];
      *(v25 + 64) = sub_1D1757D20();
      *(v25 + 32) = v32;
      *(v25 + 40) = v34;
      static String.hfLocalized(_:)(0xD000000000000020, v24 | 0x8000000000000000);
      v20 = sub_1D1E6784C();
    }

    return v20;
  }

  return static String.hfLocalized(_:)(0xD000000000000023, 0x80000001D1EC8660);
}

uint64_t sub_1D1CF0F68(uint64_t a1)
{
  v2 = sub_1D1CF5458();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CF0FA4(uint64_t a1)
{
  v2 = sub_1D1CF5458();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CF0FE0()
{
  v1 = 0x656C6261706163;
  if (*v0 != 1)
  {
    v1 = 0x6261706163746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E6F707365726F6ELL;
  }
}

uint64_t sub_1D1CF1040@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1CF8C54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1CF1068(uint64_t a1)
{
  v2 = sub_1D1CF53B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CF10A4(uint64_t a1)
{
  v2 = sub_1D1CF53B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CF10E0(uint64_t a1)
{
  v2 = sub_1D1CF54AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CF111C(uint64_t a1)
{
  v2 = sub_1D1CF54AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1CF1158(uint64_t a1)
{
  v2 = sub_1D1CF5404();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1CF1194(uint64_t a1)
{
  v2 = sub_1D1CF5404();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticHome.NonResponsiveType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D610, &qword_1D1EA5C50);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D618, &qword_1D1EA5C58);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D620, &qword_1D1EA5C60);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D628, &qword_1D1EA5C68);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1CF53B0();
  sub_1D1E6930C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1D1CF5458();
      v9 = v21;
      sub_1D1E68DFC();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1D1CF5404();
      v9 = v24;
      sub_1D1E68DFC();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1D1CF54AC();
    sub_1D1E68DFC();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

uint64_t StaticHome.NonResponsiveType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D650, &qword_1D1EA5C70);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D658, &qword_1D1EA5C78);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D660, &qword_1D1EA5C80);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D668, &qword_1D1EA5C88);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D1CF53B0();
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
      *v24 = &type metadata for StaticHome.NonResponsiveType;
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
          sub_1D1CF5458();
          sub_1D1E68C4C();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1D1CF5404();
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
        sub_1D1CF54AC();
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

uint64_t sub_1D1CF1B0C()
{
  sub_1D1E67E1C();
  v0[8] = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();
  v0[9] = v2;
  v0[10] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1D1CF1BA0, v2, v1);
}

uint64_t sub_1D1CF1BA0()
{
  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 == 3)
  {
    if (qword_1EE07AC80 != -1)
    {
      swift_once();
    }

    v1 = v0[9];
    v2 = v0[10];
    v3 = sub_1D1CF1D78;
LABEL_11:

    return MEMORY[0x1EEE6DFA0](v3, v1, v2);
  }

  v4 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[11] = v4;
  if (v4)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v1 = qword_1EC64ABE8;
    v3 = sub_1D1CF1DDC;
    v2 = 0;
    goto LABEL_11;
  }

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE07DC60;
  v6 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v7 = *(v5 + v6);
  v10 = v0[1];
  v8 = v7;

  return v10(v7);
}

uint64_t sub_1D1CF1D78()
{

  v1 = _s13HomeDataModel06WidgetbC0C11homeManagerSo06HMHomeF0CSgvg_0();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1CF1DDC()
{
  v1 = v0[11];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[12] = v2;
  v3 = v0[9];
  v4 = v0[10];
  v5 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1CF1E70, v3, v4);
}

uint64_t sub_1D1CF1E70()
{
  v1 = *(v0 + 96);

  if (v1)
  {
    v2 = *(v0 + 96);
  }

  else
  {
    if (qword_1EE07DC58 != -1)
    {
      swift_once();
    }

    v3 = qword_1EE07DC60;
    v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
    swift_beginAccess();
    v2 = *(v3 + v4);
    v5 = v2;
  }

  v6 = *(v0 + 8);

  return v6(v2);
}

uint64_t StaticHome.isEmptyStaticHome.getter()
{
  if (qword_1EE07DD70 != -1)
  {
    swift_once();
  }

  v0 = sub_1D1E66A7C();
  __swift_project_value_buffer(v0, qword_1EE081518);

  return _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
}

uint64_t StaticHome.set(colorPickerFavorites:)(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1CF204C;

  return StaticHome.home.getter();
}

uint64_t sub_1D1CF204C(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1CF214C, 0, 0);
}

uint64_t sub_1D1CF214C()
{
  v1 = v0[4];
  if (v1)
  {
    sub_1D18AE40C(v0[2]);
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    __swift_project_value_buffer(v2, qword_1EE07B5D8);
    v1 = sub_1D1E6707C();
    v3 = sub_1D1E6833C();
    if (os_log_type_enabled(v1, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D16EC000, v1, v3, "While trying to set color picker favorites, couldn't find HMHome", v4, 2u);
      MEMORY[0x1D3893640](v4, -1, -1);
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t StaticHome.turnOffManualSelectionMode()()
{
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1D1CF2300;

  return StaticHome.home.getter();
}

uint64_t sub_1D1CF2300(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1CF2400, 0, 0);
}

uint64_t sub_1D1CF2400()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v2 = [*(v0 + 152) userSelectedPreferredResident];
    if (v2)
    {

      if (qword_1EE07B5D0 != -1)
      {
        swift_once();
      }

      v3 = sub_1D1E6709C();
      *(v0 + 160) = __swift_project_value_buffer(v3, qword_1EE07B5D8);
      v4 = v1;
      v5 = sub_1D1E6707C();
      v6 = sub_1D1E6835C();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = *(v0 + 152);
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        *v8 = 138412290;
        *(v8 + 4) = v4;
        *v9 = v7;
        v10 = v4;
        _os_log_impl(&dword_1D16EC000, v5, v6, "turning off selectPreferredResident on %@", v8, 0xCu);
        sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
        MEMORY[0x1D3893640](v9, -1, -1);
        MEMORY[0x1D3893640](v8, -1, -1);
      }

      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1D1CF27FC;
      v11 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D17B04C8;
      *(v0 + 104) = &block_descriptor_53;
      *(v0 + 112) = v11;
      [v4 selectPreferredResident:0 completion:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v16 = sub_1D1E6709C();
    __swift_project_value_buffer(v16, qword_1EE07B5D8);
    v13 = sub_1D1E6707C();
    v17 = sub_1D1E6835C();
    if (os_log_type_enabled(v13, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D16EC000, v13, v17, "selectPreferredResident already nil", v18, 2u);
      MEMORY[0x1D3893640](v18, -1, -1);
    }
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE07B5D8);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D16EC000, v13, v14, "turning off selectPreferredResident failed due to missing home", v15, 2u);
      MEMORY[0x1D3893640](v15, -1, -1);
    }
  }

  v19 = *(v0 + 8);

  return v19();
}

uint64_t sub_1D1CF27FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_1D1CF2970;
  }

  else
  {
    v2 = sub_1D1CF290C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1CF290C()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1CF2970(uint64_t a1)
{
  v2 = *(v1 + 152);
  swift_willThrow();
  v3 = v2;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 152);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_1D16EC000, v4, v5, "turning off selectPreferredResident failed on %@", v7, 0xCu);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v10 = *(v1 + 152);

  swift_willThrow();
  v11 = *(v1 + 8);

  return v11();
}

uint64_t StaticHome.setAutomaticSoftwareUpdateEnabled(enabled:)(char a1)
{
  *(v1 + 216) = a1;
  *(v1 + 144) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v1 + 152) = swift_task_alloc();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  *(v1 + 160) = v2;
  *(v1 + 168) = *(v2 - 8);
  *(v1 + 176) = swift_task_alloc();
  v3 = swift_task_alloc();
  *(v1 + 184) = v3;
  *v3 = v1;
  v3[1] = sub_1D1CF2BE8;

  return StaticHome.home.getter();
}

uint64_t sub_1D1CF2BE8(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1CF2CE8, 0, 0);
}

uint64_t sub_1D1CF2CE8()
{
  v1 = *(v0 + 192);
  if (v1)
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v2 = sub_1D1E6709C();
    *(v0 + 200) = __swift_project_value_buffer(v2, qword_1EE07B5D8);
    v3 = v1;
    v4 = sub_1D1E6707C();
    v5 = sub_1D1E6835C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 192);
      v7 = *(v0 + 216);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 67109378;
      *(v8 + 4) = v7;
      *(v8 + 8) = 2112;
      *(v8 + 10) = v3;
      *v9 = v6;
      v10 = v3;
      _os_log_impl(&dword_1D16EC000, v4, v5, "setAutomaticSoftwareUpdateEnabled to %{BOOL}d on %@", v8, 0x12u);
      sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v9, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    v11 = *(v0 + 216);

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1D1CF3040;
    v12 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1D17B04C8;
    *(v0 + 104) = &block_descriptor_8;
    *(v0 + 112) = v12;
    [v3 updateAutomaticSoftwareUpdateEnabled:v11 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EE07B5D8);
    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6833C();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1D16EC000, v14, v15, "setAutomaticSoftwareUpdateEnabled failed due to missing home", v16, 2u);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_1D1CF3040()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_1D1CF328C;
  }

  else
  {
    v2 = sub_1D1CF3150;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1CF3150()
{
  if (qword_1EE07DC88 != -1)
  {
    swift_once();
  }

  v1 = v0[24];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[19];
  v5 = v0[20];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
  __swift_project_value_buffer(v6, qword_1EE07DCE0);
  *v4 = v1;
  swift_storeEnumTagMultiPayload();
  v7 = v1;
  sub_1D1E67ECC();

  (*(v3 + 8))(v2, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1D1CF328C(uint64_t a1)
{
  v2 = *(v1 + 192);
  swift_willThrow();
  v3 = v2;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6833C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v1 + 192);
    v7 = *(v1 + 216);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 67109378;
    *(v8 + 4) = v7;
    *(v8 + 8) = 2112;
    *(v8 + 10) = v6;
    *v9 = v6;
    v10 = v6;
    _os_log_impl(&dword_1D16EC000, v4, v5, "setAutomaticSoftwareUpdateEnabled to %{BOOL}d failed on %@", v8, 0x12u);
    sub_1D1741A30(v9, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  v11 = *(v1 + 192);

  swift_willThrow();

  v12 = *(v1 + 8);

  return v12();
}

uint64_t sub_1D1CF340C()
{
  v0 = type metadata accessor for StaticRoom(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticHome(0);
  __swift_allocate_value_buffer(v10, qword_1EE081500);
  v11 = __swift_project_value_buffer(v10, qword_1EE081500);
  if (qword_1EE07DD70 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_1EE081518);
  (*(v7 + 16))(v9, v12, v6);
  sub_1D1E669EC();
  v13 = sub_1D1E669FC();
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  if (qword_1EE07DC08 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, qword_1EE07DC10);
  sub_1D1CF5030(v14, v2, type metadata accessor for StaticRoom);
  if (qword_1EE07DB90 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for StaticUser(0);
  v16 = __swift_project_value_buffer(v15, qword_1EE0814B0);
  sub_1D1CF5030(v16, v11 + v10[8], type metadata accessor for StaticUser);
  v17 = v10[22];
  v18 = type metadata accessor for StaticResident(0);
  (*(*(v18 - 8) + 56))(v11 + v17, 1, 1, v18);
  (*(v7 + 32))(v11, v9, v6);
  v19 = (v11 + v10[5]);
  *v19 = 0;
  v19[1] = 0xE000000000000000;
  sub_1D1741A90(v5, v11 + v10[6], &qword_1EC642570, &qword_1D1E6C6A0);
  result = sub_1D1CF8DC4(v2, v11 + v10[7], type metadata accessor for StaticRoom);
  *(v11 + v10[9]) = 0;
  *(v11 + v10[10]) = 0;
  *(v11 + v10[11]) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v11 + v10[12]) = MEMORY[0x1E69E7CC0];
  *(v11 + v10[13]) = v21;
  *(v11 + v10[14]) = v21;
  *(v11 + v10[15]) = v21;
  *(v11 + v10[16]) = v21;
  *(v11 + v10[17]) = v21;
  *(v11 + v10[20]) = 0;
  *(v11 + v10[18]) = v21;
  *(v11 + v10[19]) = 1;
  *(v11 + v10[21]) = 1;
  return result;
}

uint64_t sub_1D1CF3818()
{
  v0 = type metadata accessor for StaticRoom(0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22 - v4;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticHome(0);
  __swift_allocate_value_buffer(v10, qword_1EC64D518);
  v11 = __swift_project_value_buffer(v10, qword_1EC64D518);
  if (qword_1EC6423E0 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, qword_1EC6BE208);
  (*(v7 + 16))(v9, v12, v6);
  sub_1D1E669EC();
  v13 = sub_1D1E669FC();
  (*(*(v13 - 8) + 56))(v5, 0, 1, v13);
  if (qword_1EC6423E8 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v0, qword_1EC64DA80);
  sub_1D1CF5030(v14, v2, type metadata accessor for StaticRoom);
  if (qword_1EE07DB90 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for StaticUser(0);
  v16 = __swift_project_value_buffer(v15, qword_1EE0814B0);
  sub_1D1CF5030(v16, v11 + v10[8], type metadata accessor for StaticUser);
  v17 = v10[22];
  v18 = type metadata accessor for StaticResident(0);
  (*(*(v18 - 8) + 56))(v11 + v17, 1, 1, v18);
  (*(v7 + 32))(v11, v9, v6);
  v19 = (v11 + v10[5]);
  *v19 = 0x4820656C706D6153;
  v19[1] = 0xEB00000000656D6FLL;
  sub_1D1741A90(v5, v11 + v10[6], &qword_1EC642570, &qword_1D1E6C6A0);
  result = sub_1D1CF8DC4(v2, v11 + v10[7], type metadata accessor for StaticRoom);
  *(v11 + v10[9]) = 0;
  *(v11 + v10[10]) = 0;
  *(v11 + v10[11]) = 0;
  v21 = MEMORY[0x1E69E7CC0];
  *(v11 + v10[12]) = MEMORY[0x1E69E7CC0];
  *(v11 + v10[13]) = v21;
  *(v11 + v10[14]) = v21;
  *(v11 + v10[15]) = v21;
  *(v11 + v10[16]) = v21;
  *(v11 + v10[17]) = v21;
  *(v11 + v10[20]) = 0;
  *(v11 + v10[18]) = v21;
  *(v11 + v10[19]) = 1;
  *(v11 + v10[21]) = 1;
  return result;
}

uint64_t static StaticHome.sample.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6423D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for StaticHome(0);
  v3 = __swift_project_value_buffer(v2, qword_1EC64D518);
  return sub_1D1CF5030(v3, a1, type metadata accessor for StaticHome);
}

uint64_t sub_1D1CF3CBC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v3, qword_1EE081518);
  v4 = __swift_project_value_buffer(v3, qword_1EE081518);
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

uint64_t sub_1D1CF3DEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v7 - v1;
  v3 = sub_1D1E66A7C();
  __swift_allocate_value_buffer(v3, qword_1EC6BE208);
  v4 = __swift_project_value_buffer(v3, qword_1EC6BE208);
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

uint64_t type metadata accessor for StaticHome(uint64_t a1)
{
  result = qword_1EE07DD58;
  if (!qword_1EE07DD58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1CF3F68(char *a1, char *a2, char *a3, char *a4, uint64_t a5)
{
  v6 = v5;
  v62 = a5;
  v61 = type metadata accessor for StaticHome(0);
  v11 = MEMORY[0x1EEE9AC00](v61);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v52 - v16;
  result = MEMORY[0x1EEE9AC00](v15);
  v21 = &v52 - v20;
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_64;
  }

  v24 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_65;
  }

  v25 = (a2 - a1) / v23;
  v66 = a1;
  v65 = a4;
  v60 = v23;
  if (v25 >= v24 / v23)
  {
    v27 = v24 / v23 * v23;
    v59 = v19;
    if (a4 < a2 || &a2[v27] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37 = &a4[v27];
    if (v27 >= 1)
    {
      v38 = -v60;
      v39 = &a4[v27];
      v40 = v14;
      v56 = a4;
      v57 = a1;
      v55 = -v60;
      do
      {
        v41 = a1;
        v53 = v37;
        v42 = &a2[v38];
        v58 = a2;
        while (1)
        {
          if (a2 <= v41)
          {
            v66 = a2;
            v64 = v53;
            goto LABEL_62;
          }

          v44 = a3;
          v54 = v37;
          v60 = v39;
          v45 = &v39[v38];
          sub_1D1CF5030(&v39[v38], v40, type metadata accessor for StaticHome);
          v46 = v6;
          v47 = v40;
          v48 = v59;
          sub_1D1CF5030(v42, v59, type metadata accessor for StaticHome);
          v49 = sub_1D1D0D970(v47, v48, v62);
          if (v46)
          {
            sub_1D1CF5098(v48, type metadata accessor for StaticHome);
            sub_1D1CF5098(v47, type metadata accessor for StaticHome);
            v66 = v58;
            v64 = v54;
            goto LABEL_62;
          }

          v50 = v49;
          v63 = 0;
          v51 = &v44[v38];
          sub_1D1CF5098(v48, type metadata accessor for StaticHome);
          sub_1D1CF5098(v47, type metadata accessor for StaticHome);
          v40 = v47;
          if (v50)
          {
            break;
          }

          v37 = v45;
          a3 = &v44[v38];
          if (v44 < v60 || v51 >= v60)
          {
            swift_arrayInitWithTakeFrontToBack();
            v37 = v45;
            v6 = v63;
          }

          else
          {
            v6 = v63;
            if (v44 != v60)
            {
              swift_arrayInitWithTakeBackToFront();
              v37 = v45;
            }
          }

          v39 = v37;
          v41 = v57;
          v43 = v45 > v56;
          v38 = v55;
          a2 = v58;
          if (!v43)
          {
            goto LABEL_58;
          }
        }

        a3 = &v44[v38];
        if (v44 < v58 || v51 >= v58)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v6 = v63;
          v38 = v55;
        }

        else
        {
          a2 = v42;
          v6 = v63;
          v38 = v55;
          if (v44 != v58)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        a1 = v57;
        v39 = v60;
        v37 = v54;
      }

      while (v60 > v56);
    }

LABEL_58:
    v66 = a2;
    v64 = v37;
  }

  else
  {
    v26 = v25 * v23;
    if (a4 < a1 || &a1[v26] <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v59 = &a4[v26];
    v64 = &a4[v26];
    if (v26 >= 1 && a2 < a3)
    {
      v29 = v60;
      v58 = v21;
      while (1)
      {
        v30 = a3;
        sub_1D1CF5030(a2, v21, type metadata accessor for StaticHome);
        sub_1D1CF5030(a4, v17, type metadata accessor for StaticHome);
        v31 = sub_1D1D0D970(v21, v17, v62);
        if (v6)
        {
          break;
        }

        v32 = v31;
        v63 = 0;
        v33 = v17;
        v34 = a4;
        v35 = v33;
        sub_1D1CF5098(v33, type metadata accessor for StaticHome);
        sub_1D1CF5098(v21, type metadata accessor for StaticHome);
        if (v32)
        {
          v36 = &a2[v29];
          if (a1 < a2 || a1 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 = v36;
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 = v36;
          }
        }

        else
        {
          a4 += v29;
          if (a1 < v34 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v30;
          }

          else
          {
            a3 = v30;
            if (a1 != v34)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v65 = &v34[v29];
        }

        v17 = v35;
        v29 = v60;
        a1 += v60;
        v66 = a1;
        v21 = v58;
        v6 = v63;
        if (a4 >= v59 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_1D1CF5098(v17, type metadata accessor for StaticHome);
      sub_1D1CF5098(v21, type metadata accessor for StaticHome);
    }
  }

LABEL_62:
  sub_1D1DC715C(&v66, &v65, &v64);

  return 1;
}

BOOL _s13HomeDataModel06StaticA0V2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticResident(0);
  v59 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D530, &qword_1D1EA5BD8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v52 - v8;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64D740, &unk_1D1EA6888);
  MEMORY[0x1EEE9AC00](v58);
  v10 = &v52 - v9;
  v11 = sub_1D1E669FC();
  v61 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v52 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v52 - v18;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v55 = type metadata accessor for StaticHome(0);
  v56 = a1;
  v20 = v55[5];
  v21 = *(a1 + v20);
  v22 = *(a1 + v20 + 8);
  v57 = a2;
  v23 = (a2 + v20);
  if ((v21 != *v23 || v22 != v23[1]) && (sub_1D1E6904C() & 1) == 0)
  {
    return 0;
  }

  v53 = v4;
  v54 = v10;
  v52 = v6;
  v25 = v55;
  v24 = v56;
  v26 = v55[6];
  v27 = *(v17 + 48);
  sub_1D1741C08(v56 + v26, v19, &qword_1EC642570, &qword_1D1E6C6A0);
  v28 = v57 + v26;
  v29 = v57;
  sub_1D1741C08(v28, &v19[v27], &qword_1EC642570, &qword_1D1E6C6A0);
  v30 = *(v61 + 48);
  if (v30(v19, 1, v11) == 1)
  {
    if (v30(&v19[v27], 1, v11) == 1)
    {
      sub_1D1741A30(v19, &qword_1EC642570, &qword_1D1E6C6A0);
      goto LABEL_13;
    }

LABEL_10:
    v31 = &qword_1EC642AC0;
    v32 = &qword_1D1E6E810;
    v33 = v19;
LABEL_11:
    sub_1D1741A30(v33, v31, v32);
    return 0;
  }

  sub_1D1741C08(v19, v16, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v30(&v19[v27], 1, v11) == 1)
  {
    (*(v61 + 8))(v16, v11);
    goto LABEL_10;
  }

  v34 = v61;
  (*(v61 + 32))(v13, &v19[v27], v11);
  sub_1D1CF8D7C(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v35 = sub_1D1E6775C();
  v36 = *(v34 + 8);
  v36(v13, v11);
  v36(v16, v11);
  v29 = v57;
  sub_1D1741A30(v19, &qword_1EC642570, &qword_1D1E6C6A0);
  if ((v35 & 1) == 0)
  {
    return 0;
  }

LABEL_13:
  if ((_s13HomeDataModel10StaticRoomV2eeoiySbAC_ACtFZ_0(v24 + v25[7], v29 + v25[7]) & 1) == 0 || !_s13HomeDataModel10StaticUserV2eeoiySbAC_ACtFZ_0(v24 + v25[8], v29 + v25[8]) || *(v24 + v25[9]) != *(v29 + v25[9]) || *(v24 + v25[10]) != *(v29 + v25[10]) || *(v24 + v25[11]) != *(v29 + v25[11]) || (sub_1D17796E4(*(v24 + v25[12]), *(v29 + v25[12])) & 1) == 0 || (sub_1D177BC5C(*(v24 + v25[13]), *(v29 + v25[13])) & 1) == 0 || (sub_1D17796E4(*(v24 + v25[14]), *(v29 + v25[14])) & 1) == 0 || (sub_1D17796E4(*(v24 + v25[15]), *(v29 + v25[15])) & 1) == 0 || (sub_1D17796E4(*(v24 + v25[16]), *(v29 + v25[16])) & 1) == 0 || (sub_1D17796E4(*(v24 + v25[17]), *(v29 + v25[17])) & 1) == 0 || (sub_1D177BCEC(*(v24 + v25[18]), *(v29 + v25[18])) & 1) == 0 || *(v56 + v55[19]) != *(v57 + v55[19]))
  {
    return 0;
  }

  v38 = v55[20];
  v39 = *(v56 + v38);
  v40 = *(v57 + v38);
  if (v39)
  {
    if (!v40)
    {
      return 0;
    }

    v41 = sub_1D17796E4(v39, v40);

    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v40)
  {
    return 0;
  }

  if (*(v56 + v55[21]) != *(v57 + v55[21]))
  {
    return 0;
  }

  v42 = v54;
  v43 = v55[22];
  v44 = *(v58 + 48);
  sub_1D1741C08(v56 + v43, v54, &qword_1EC64D530, &qword_1D1EA5BD8);
  sub_1D1741C08(v57 + v43, v42 + v44, &qword_1EC64D530, &qword_1D1EA5BD8);
  v45 = *(v59 + 48);
  if (v45(v42, 1, v53) == 1)
  {
    if (v45(&v54[v44], 1, v53) == 1)
    {
      sub_1D1741A30(v54, &qword_1EC64D530, &qword_1D1EA5BD8);
      return 1;
    }

    goto LABEL_39;
  }

  v46 = v54;
  sub_1D1741C08(v54, v60, &qword_1EC64D530, &qword_1D1EA5BD8);
  if (v45((v46 + v44), 1, v53) == 1)
  {
    sub_1D1CF5098(v60, type metadata accessor for StaticResident);
LABEL_39:
    v31 = &qword_1EC64D740;
    v32 = &unk_1D1EA6888;
    v33 = v54;
    goto LABEL_11;
  }

  v47 = v54;
  v48 = &v54[v44];
  v49 = v52;
  sub_1D1CF8DC4(v48, v52, type metadata accessor for StaticResident);
  v50 = v60;
  v51 = _s13HomeDataModel14StaticResidentV2eeoiySbAC_ACtFZ_0(v60, v49);
  sub_1D1CF5098(v49, type metadata accessor for StaticResident);
  sub_1D1CF5098(v50, type metadata accessor for StaticResident);
  sub_1D1741A30(v47, &qword_1EC64D530, &qword_1D1EA5BD8);
  return (v51 & 1) != 0;
}

unint64_t sub_1D1CF4D90()
{
  result = qword_1EC64D540;
  if (!qword_1EC64D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D540);
  }

  return result;
}

unint64_t sub_1D1CF4DE4()
{
  result = qword_1EC64D548;
  if (!qword_1EC64D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D548);
  }

  return result;
}

unint64_t sub_1D1CF4E38()
{
  result = qword_1EC64D578;
  if (!qword_1EC64D578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D578);
  }

  return result;
}

uint64_t sub_1D1CF4E8C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    sub_1D1CF8D7C(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1CF4F28(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643CB0, &qword_1D1E73640);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1CF4F94(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64D558, &qword_1D1EA5BE8);
    sub_1D1CF8D7C(a2, type metadata accessor for ColorPickerFavorite, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1CF5030(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1CF5098(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s13HomeDataModel06StaticA0V25abbreviatedRelativeString4dateSS10Foundation4DateV_tFZ_0(uint64_t a1)
{
  sub_1D1E6697C();
  if (v1 <= -1.0)
  {
    if (qword_1EC642440 != -1)
    {
      swift_once();
    }

    v4 = [qword_1EC6BE290 stringFromTimeInterval_];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1D1E6781C();

      return v6;
    }

    v3 = 0xD00000000000001ELL;
    v2 = 0x80000001D1EBAD70;
  }

  else
  {
    v2 = 0x80000001D1EC8590;
    v3 = 0xD000000000000016;
  }

  return static String.hfLocalized(_:)(v3, v2);
}

unint64_t sub_1D1CF520C()
{
  result = qword_1EC64D5C0;
  if (!qword_1EC64D5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D5C0);
  }

  return result;
}

unint64_t sub_1D1CF5260()
{
  result = qword_1EC64D5C8;
  if (!qword_1EC64D5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D5C8);
  }

  return result;
}

unint64_t sub_1D1CF52B4()
{
  result = qword_1EC64D5D0;
  if (!qword_1EC64D5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D5D0);
  }

  return result;
}

unint64_t sub_1D1CF5308()
{
  result = qword_1EC64D5D8;
  if (!qword_1EC64D5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D5D8);
  }

  return result;
}

unint64_t sub_1D1CF535C()
{
  result = qword_1EC64D5E0;
  if (!qword_1EC64D5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D5E0);
  }

  return result;
}

unint64_t sub_1D1CF53B0()
{
  result = qword_1EC64D630;
  if (!qword_1EC64D630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D630);
  }

  return result;
}

unint64_t sub_1D1CF5404()
{
  result = qword_1EC64D638;
  if (!qword_1EC64D638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D638);
  }

  return result;
}

unint64_t sub_1D1CF5458()
{
  result = qword_1EC64D640;
  if (!qword_1EC64D640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D640);
  }

  return result;
}

unint64_t sub_1D1CF54AC()
{
  result = qword_1EC64D648;
  if (!qword_1EC64D648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D648);
  }

  return result;
}

unint64_t sub_1D1CF55C0()
{
  result = qword_1EC64D678;
  if (!qword_1EC64D678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D678);
  }

  return result;
}

unint64_t sub_1D1CF5618()
{
  result = qword_1EC64D680;
  if (!qword_1EC64D680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D680);
  }

  return result;
}

void sub_1D1CF5694(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1CF5974(319, &qword_1EE07E020, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for StaticRoom(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for StaticUser(319);
        if (v4 <= 0x3F)
        {
          sub_1D1CF5974(319, &qword_1EE07B750, MEMORY[0x1E69695A8], MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            sub_1D1CF58C0();
            if (v6 <= 0x3F)
            {
              sub_1D1CF5974(319, &qword_1EE07B728, type metadata accessor for ColorPickerFavorite, MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
              {
                sub_1D1CF5910(319);
                if (v8 <= 0x3F)
                {
                  sub_1D1CF5974(319, &qword_1EE07D8A0, type metadata accessor for StaticResident, MEMORY[0x1E69E6720]);
                  if (v9 <= 0x3F)
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

void sub_1D1CF58C0()
{
  if (!qword_1EE07B708)
  {
    v0 = sub_1D1E67D1C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B708);
    }
  }
}

void sub_1D1CF5910(uint64_t a1)
{
  if (!qword_1EE07B748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC644D50, &qword_1D1E77910);
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B748);
    }
  }
}

void sub_1D1CF5974(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_1D1CF5A9C()
{
  result = qword_1EC64D688;
  if (!qword_1EC64D688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D688);
  }

  return result;
}

unint64_t sub_1D1CF5AF4()
{
  result = qword_1EC64D690;
  if (!qword_1EC64D690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D690);
  }

  return result;
}

unint64_t sub_1D1CF5B4C()
{
  result = qword_1EC64D698;
  if (!qword_1EC64D698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D698);
  }

  return result;
}

unint64_t sub_1D1CF5BA4()
{
  result = qword_1EC64D6A0;
  if (!qword_1EC64D6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6A0);
  }

  return result;
}

unint64_t sub_1D1CF5BFC()
{
  result = qword_1EC64D6A8;
  if (!qword_1EC64D6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6A8);
  }

  return result;
}

unint64_t sub_1D1CF5C54()
{
  result = qword_1EC64D6B0;
  if (!qword_1EC64D6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6B0);
  }

  return result;
}

unint64_t sub_1D1CF5CAC()
{
  result = qword_1EC64D6B8;
  if (!qword_1EC64D6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6B8);
  }

  return result;
}

unint64_t sub_1D1CF5D04()
{
  result = qword_1EC64D6C0;
  if (!qword_1EC64D6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6C0);
  }

  return result;
}

unint64_t sub_1D1CF5D5C()
{
  result = qword_1EC64D6C8;
  if (!qword_1EC64D6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6C8);
  }

  return result;
}

unint64_t sub_1D1CF5DB4()
{
  result = qword_1EC64D6D0;
  if (!qword_1EC64D6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6D0);
  }

  return result;
}

unint64_t sub_1D1CF5E0C()
{
  result = qword_1EC64D6D8;
  if (!qword_1EC64D6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6D8);
  }

  return result;
}

unint64_t sub_1D1CF5E64()
{
  result = qword_1EC64D6E0;
  if (!qword_1EC64D6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6E0);
  }

  return result;
}

unint64_t sub_1D1CF5EBC()
{
  result = qword_1EC64D6E8;
  if (!qword_1EC64D6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6E8);
  }

  return result;
}

unint64_t sub_1D1CF5F14()
{
  result = qword_1EC64D6F0;
  if (!qword_1EC64D6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6F0);
  }

  return result;
}

unint64_t sub_1D1CF5F6C()
{
  result = qword_1EC64D6F8;
  if (!qword_1EC64D6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D6F8);
  }

  return result;
}

unint64_t sub_1D1CF5FC4()
{
  result = qword_1EC64D700;
  if (!qword_1EC64D700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D700);
  }

  return result;
}

unint64_t sub_1D1CF601C()
{
  result = qword_1EC64D708;
  if (!qword_1EC64D708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D708);
  }

  return result;
}

unint64_t sub_1D1CF6074()
{
  result = qword_1EC64D710;
  if (!qword_1EC64D710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D710);
  }

  return result;
}

unint64_t sub_1D1CF60CC()
{
  result = qword_1EC64D718;
  if (!qword_1EC64D718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D718);
  }

  return result;
}

unint64_t sub_1D1CF6124()
{
  result = qword_1EC64D720;
  if (!qword_1EC64D720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D720);
  }

  return result;
}

unint64_t sub_1D1CF617C()
{
  result = qword_1EC64D728;
  if (!qword_1EC64D728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D728);
  }

  return result;
}

unint64_t sub_1D1CF61D4()
{
  result = qword_1EC64D730;
  if (!qword_1EC64D730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D730);
  }

  return result;
}

unint64_t sub_1D1CF622C()
{
  result = qword_1EC64D738;
  if (!qword_1EC64D738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64D738);
  }

  return result;
}

uint64_t sub_1D1CF6280(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v216 = a1;
  v10 = sub_1D1E669FC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v229 = &v210 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v228 = &v210 - v15;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v213 = &v210 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v212 = &v210 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642570, &qword_1D1E6C6A0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v233 = &v210 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v234 = &v210 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v218 = &v210 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v210 - v26;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AC0, &qword_1D1E6E810);
  v28 = MEMORY[0x1EEE9AC00](v242);
  v239 = &v210 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v210 - v30;
  v249 = type metadata accessor for StaticHome(0);
  v231 = *(v249 - 8);
  v32 = MEMORY[0x1EEE9AC00](v249);
  v223 = &v210 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x1EEE9AC00](v32);
  v247 = &v210 - v35;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v210 - v37;
  v39 = MEMORY[0x1EEE9AC00](v36);
  v250 = &v210 - v40;
  v41 = MEMORY[0x1EEE9AC00](v39);
  v238 = &v210 - v42;
  v43 = MEMORY[0x1EEE9AC00](v41);
  v237 = &v210 - v44;
  v45 = MEMORY[0x1EEE9AC00](v43);
  MEMORY[0x1EEE9AC00](v45);
  v232 = a3;
  v48 = a3[1];
  v244 = a5;
  if (v48 < 1)
  {
    swift_bridgeObjectRetain_n();
    v219 = MEMORY[0x1E69E7CC0];
LABEL_148:
    v250 = *v216;
    if (!v250)
    {
      goto LABEL_187;
    }

    swift_bridgeObjectRetain_n();
    v10 = v219;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
LABEL_150:
      v255 = v10;
      v200 = *(v10 + 16);
      if (v200 >= 2)
      {
        do
        {
          v201 = *v232;
          if (!*v232)
          {
            goto LABEL_185;
          }

          v202 = *(v10 + 16 * v200);
          v203 = *(v10 + 16 * (v200 - 1) + 40);
          v204 = *(v231 + 72);
          v205 = (v201 + v204 * v202);
          v206 = (v201 + v204 * *(v10 + 16 * (v200 - 1) + 32));
          v207 = (v201 + v204 * v203);
          v208 = v244;

          sub_1D1CF3F68(v205, v206, v207, v250, v208);
          if (v6)
          {
            break;
          }

          if (v203 < v202)
          {
            goto LABEL_174;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v200 - 2 >= *(v10 + 16))
          {
            goto LABEL_175;
          }

          v209 = (v10 + 16 * v200);
          *v209 = v202;
          v209[1] = v203;
          v255 = v10;
          sub_1D1E0BDB8(v200 - 1);
          v10 = v255;
          v200 = *(v255 + 16);
        }

        while (v200 > 1);
      }

      return swift_bridgeObjectRelease_n();
    }

LABEL_181:
    v10 = sub_1D1E0BE44(v10);
    goto LABEL_150;
  }

  v210 = &v210 - v46;
  v211 = v47;
  v240 = (v11 + 48);
  v230 = (v11 + 32);
  v236 = (v11 + 8);
  swift_bridgeObjectRetain_n();
  v219 = MEMORY[0x1E69E7CC0];
  v215 = a4;
  v241 = v10;
  v217 = v27;
  v49 = v239;
  v221 = v31;
  v243 = v38;
  v50 = 0;
LABEL_4:
  if (v50 + 1 >= v48)
  {
    v61 = v50 + 1;
    goto LABEL_49;
  }

  v235 = v48;
  v51 = *v232;
  v52 = *(v231 + 72);
  v53 = *v232 + v52 * (v50 + 1);
  v54 = v50;
  v55 = v210;
  sub_1D1CF5030(v53, v210, type metadata accessor for StaticHome);
  v245 = v51;
  v56 = v51 + v52 * v54;
  v57 = v211;
  sub_1D1CF5030(v56, v211, type metadata accessor for StaticHome);
  LODWORD(v248) = sub_1D1D0D970(v55, v57, v244);
  if (v6)
  {
    sub_1D1CF5098(v57, type metadata accessor for StaticHome);
    sub_1D1CF5098(v55, type metadata accessor for StaticHome);
    swift_bridgeObjectRelease_n();
  }

  v220 = 0;
  sub_1D1CF5098(v57, type metadata accessor for StaticHome);
  sub_1D1CF5098(v55, type metadata accessor for StaticHome);
  v214 = v54;
  v58 = v54 + 2;
  v246 = v52;
  v10 = v244;
  v59 = v245 + v52 * v58;
  while (1)
  {
    v61 = v235;
    if (v235 == v58)
    {
      break;
    }

    v62 = v237;
    sub_1D1CF5030(v59, v237, type metadata accessor for StaticHome);
    v63 = v238;
    sub_1D1CF5030(v53, v238, type metadata accessor for StaticHome);
    v64 = sub_1D18E4158(v62, v10);
    LOBYTE(v62) = v65;
    v66 = sub_1D18E4158(v63, v10);
    if (v62)
    {
      if ((v67 & 1) == 0)
      {
        v60 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      if (v67)
      {
        v60 = 1;
        goto LABEL_8;
      }

      if (v64 != v66)
      {
        v60 = v64 < v66;
        goto LABEL_8;
      }
    }

    v68 = *(v249 + 24);
    v69 = *(v242 + 48);
    v70 = v221;
    sub_1D1741C08(v237 + v68, v221, &qword_1EC642570, &qword_1D1E6C6A0);
    v245 = v69;
    sub_1D1741C08(v238 + v68, v70 + v69, &qword_1EC642570, &qword_1D1E6C6A0);
    v71 = v241;
    v72 = *v240;
    if ((*v240)(v70, 1, v241) == 1)
    {
      if (v72(v70 + v245, 1, v71) == 1)
      {
        goto LABEL_23;
      }

      sub_1D1741A30(v70 + v245, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v70, &qword_1EC642570, &qword_1D1E6C6A0);
      v60 = 0;
      v49 = v239;
    }

    else
    {
      v73 = v217;
      sub_1D1741C08(v70, v217, &qword_1EC642570, &qword_1D1E6C6A0);
      if (v72(v70 + v245, 1, v71) == 1)
      {
        (*v236)(v73, v71);
        sub_1D1741A30(v70 + v245, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v70, &qword_1EC642570, &qword_1D1E6C6A0);
        v60 = 1;
        v49 = v239;
        v10 = v244;
      }

      else
      {
        sub_1D1741C08(v70 + v245, v218, &qword_1EC642570, &qword_1D1E6C6A0);
        v74 = *v230;
        v75 = v212;
        (*v230)(v212, v73, v71);
        v76 = v213;
        v74(v213, v218, v71);
        sub_1D1CF8D7C(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
        if (sub_1D1E6775C())
        {
          v77 = *v236;
          (*v236)(v76, v71);
          v77(v75, v71);
LABEL_23:
          sub_1D1741A30(v70, &qword_1EC642AC0, &qword_1D1E6E810);
          v78 = *(v249 + 20);
          v79 = (v237 + v78);
          v81 = *(v237 + v78);
          v80 = *(v237 + v78 + 8);
          v82 = (v238 + v78);
          v84 = *v82;
          v83 = v82[1];
          if (*v79 == *v82 && v80 == v83 || (sub_1D1E6904C() & 1) != 0)
          {
            v85 = sub_1D1E66A1C();
            v87 = v86;
            v88 = sub_1D1E66A1C();
            v49 = v239;
            if (v85 == v88 && v87 == v89)
            {

              v60 = 0;
            }

            else
            {
              v60 = sub_1D1E6904C();
            }

            v10 = v244;
          }

          else
          {
            v253 = v81;
            v254 = v80;
            v251 = v84;
            v252 = v83;
            sub_1D17D8EF0();
            v60 = sub_1D1E685FC() == -1;
            v10 = v244;
            v49 = v239;
          }

          goto LABEL_8;
        }

        v60 = sub_1D1E6696C();
        v90 = v76;
        v91 = v75;
        v92 = *v236;
        (*v236)(v90, v71);
        v92(v91, v71);
        v10 = v244;
        sub_1D1741A30(v70 + v245, &qword_1EC642570, &qword_1D1E6C6A0);
        sub_1D1741A30(v70, &qword_1EC642570, &qword_1D1E6C6A0);
        v49 = v239;
      }
    }

LABEL_8:
    sub_1D1CF5098(v238, type metadata accessor for StaticHome);
    sub_1D1CF5098(v237, type metadata accessor for StaticHome);
    ++v58;
    v59 += v246;
    v53 += v246;
    if ((v248 ^ v60))
    {
      v61 = v58 - 1;
      break;
    }
  }

  v6 = v220;
  a4 = v215;
  v50 = v214;
  if ((v248 & 1) == 0)
  {
    goto LABEL_49;
  }

  if (v61 < v214)
  {
    goto LABEL_180;
  }

  if (v214 < v61)
  {
    v93 = v61;
    v10 = v246;
    v94 = v246 * (v61 - 1);
    v95 = v61 * v246;
    v235 = v61;
    v96 = v214;
    v97 = v214 * v246;
    do
    {
      if (v96 != --v93)
      {
        v98 = *v232;
        if (!*v232)
        {
          goto LABEL_184;
        }

        sub_1D1CF8DC4(v98 + v97, v223, type metadata accessor for StaticHome);
        if (v97 < v94 || v98 + v97 >= (v98 + v95))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v97 != v94)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_1D1CF8DC4(v223, v98 + v94, type metadata accessor for StaticHome);
        v6 = v220;
      }

      ++v96;
      v94 -= v10;
      v95 -= v10;
      v97 += v10;
    }

    while (v96 < v93);
    a4 = v215;
    v61 = v235;
    v50 = v214;
  }

LABEL_49:
  v99 = v232[1];
  if (v61 >= v99)
  {
    goto LABEL_58;
  }

  if (__OFSUB__(v61, v50))
  {
    goto LABEL_177;
  }

  if (v61 - v50 >= a4)
  {
LABEL_58:
    v101 = v61;
    goto LABEL_59;
  }

  if (__OFADD__(v50, a4))
  {
    goto LABEL_178;
  }

  if (v50 + a4 >= v99)
  {
    v100 = v232[1];
  }

  else
  {
    v100 = v50 + a4;
  }

  if (v100 < v50)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  if (v61 == v100)
  {
    goto LABEL_58;
  }

  v220 = v6;
  v157 = *v232;
  v158 = *(v231 + 72);
  v159 = *v232 + v158 * (v61 - 1);
  v245 = -v158;
  v214 = v50;
  v160 = (v50 - v61);
  v246 = v157;
  v222 = v158;
  v161 = v157 + v61 * v158;
  v162 = v243;
  v10 = v244;
  v224 = v100;
  while (2)
  {
    v235 = v61;
    v225 = v161;
    v226 = v160;
    v163 = v160;
    v227 = v159;
    v164 = v159;
LABEL_113:
    v165 = v250;
    sub_1D1CF5030(v161, v250, type metadata accessor for StaticHome);
    sub_1D1CF5030(v164, v162, type metadata accessor for StaticHome);
    v166 = sub_1D18E4158(v165, v10);
    LOBYTE(v165) = v167;
    v168 = sub_1D18E4158(v162, v10);
    if ((v165 & 1) == 0)
    {
      if (v169)
      {
        goto LABEL_123;
      }

      if (v166 == v168)
      {
        goto LABEL_118;
      }

      v193 = v166 < v168;
      goto LABEL_138;
    }

    if ((v169 & 1) == 0)
    {
      goto LABEL_110;
    }

LABEL_118:
    v248 = v163;
    v170 = *(v249 + 24);
    v171 = *(v242 + 48);
    sub_1D1741C08(&v250[v170], v49, &qword_1EC642570, &qword_1D1E6C6A0);
    sub_1D1741C08(v162 + v170, v49 + v171, &qword_1EC642570, &qword_1D1E6C6A0);
    v172 = v241;
    v173 = *v240;
    if ((*v240)(v49, 1, v241) == 1)
    {
      if (v173(v49 + v171, 1, v172) == 1)
      {
        goto LABEL_126;
      }

      sub_1D1741A30(v49 + v171, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
LABEL_110:
      sub_1D1CF5098(v162, type metadata accessor for StaticHome);
      sub_1D1CF5098(v250, type metadata accessor for StaticHome);
LABEL_111:
      v61 = v235 + 1;
      v159 = v227 + v222;
      v160 = v226 - 1;
      v161 = v225 + v222;
      v101 = v224;
      if (v235 + 1 != v224)
      {
        continue;
      }

      v6 = v220;
      v50 = v214;
LABEL_59:
      v102 = v219;
      if (v101 < v50)
      {
        goto LABEL_176;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v224 = v101;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v102 = sub_1D177D070(0, *(v102 + 2) + 1, 1, v102);
      }

      v105 = *(v102 + 2);
      v104 = *(v102 + 3);
      v106 = v105 + 1;
      v10 = v244;
      if (v105 >= v104 >> 1)
      {
        v102 = sub_1D177D070((v104 > 1), v105 + 1, 1, v102);
      }

      *(v102 + 2) = v106;
      v107 = &v102[16 * v105];
      v108 = v224;
      *(v107 + 4) = v50;
      *(v107 + 5) = v108;
      v248 = *v216;
      if (!v248)
      {
        goto LABEL_186;
      }

      if (v105)
      {
        while (2)
        {
          v109 = v106 - 1;
          if (v106 >= 4)
          {
            v114 = &v102[16 * v106 + 32];
            v115 = *(v114 - 64);
            v116 = *(v114 - 56);
            v120 = __OFSUB__(v116, v115);
            v117 = v116 - v115;
            if (v120)
            {
              goto LABEL_163;
            }

            v119 = *(v114 - 48);
            v118 = *(v114 - 40);
            v120 = __OFSUB__(v118, v119);
            v112 = v118 - v119;
            v113 = v120;
            if (v120)
            {
              goto LABEL_164;
            }

            v121 = &v102[16 * v106];
            v123 = *v121;
            v122 = *(v121 + 1);
            v120 = __OFSUB__(v122, v123);
            v124 = v122 - v123;
            if (v120)
            {
              goto LABEL_166;
            }

            v120 = __OFADD__(v112, v124);
            v125 = v112 + v124;
            if (v120)
            {
              goto LABEL_169;
            }

            if (v125 >= v117)
            {
              v143 = &v102[16 * v109 + 32];
              v145 = *v143;
              v144 = *(v143 + 1);
              v120 = __OFSUB__(v144, v145);
              v146 = v144 - v145;
              if (v120)
              {
                goto LABEL_173;
              }

              if (v112 < v146)
              {
                v109 = v106 - 2;
              }
            }

            else
            {
LABEL_79:
              if (v113)
              {
                goto LABEL_165;
              }

              v126 = &v102[16 * v106];
              v128 = *v126;
              v127 = *(v126 + 1);
              v129 = __OFSUB__(v127, v128);
              v130 = v127 - v128;
              v131 = v129;
              if (v129)
              {
                goto LABEL_168;
              }

              v132 = &v102[16 * v109 + 32];
              v134 = *v132;
              v133 = *(v132 + 1);
              v120 = __OFSUB__(v133, v134);
              v135 = v133 - v134;
              if (v120)
              {
                goto LABEL_171;
              }

              if (__OFADD__(v130, v135))
              {
                goto LABEL_172;
              }

              if (v130 + v135 < v112)
              {
                goto LABEL_93;
              }

              if (v112 < v135)
              {
                v109 = v106 - 2;
              }
            }
          }

          else
          {
            if (v106 == 3)
            {
              v110 = *(v102 + 4);
              v111 = *(v102 + 5);
              v120 = __OFSUB__(v111, v110);
              v112 = v111 - v110;
              v113 = v120;
              goto LABEL_79;
            }

            v136 = &v102[16 * v106];
            v138 = *v136;
            v137 = *(v136 + 1);
            v120 = __OFSUB__(v137, v138);
            v130 = v137 - v138;
            v131 = v120;
LABEL_93:
            if (v131)
            {
              goto LABEL_167;
            }

            v139 = &v102[16 * v109];
            v141 = *(v139 + 4);
            v140 = *(v139 + 5);
            v120 = __OFSUB__(v140, v141);
            v142 = v140 - v141;
            if (v120)
            {
              goto LABEL_170;
            }

            if (v142 < v130)
            {
              break;
            }
          }

          v147 = v109 - 1;
          if (v109 - 1 >= v106)
          {
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
            __break(1u);
LABEL_166:
            __break(1u);
LABEL_167:
            __break(1u);
LABEL_168:
            __break(1u);
LABEL_169:
            __break(1u);
LABEL_170:
            __break(1u);
LABEL_171:
            __break(1u);
LABEL_172:
            __break(1u);
LABEL_173:
            __break(1u);
LABEL_174:
            __break(1u);
LABEL_175:
            __break(1u);
LABEL_176:
            __break(1u);
LABEL_177:
            __break(1u);
LABEL_178:
            __break(1u);
            goto LABEL_179;
          }

          v148 = *v232;
          if (!*v232)
          {
            goto LABEL_183;
          }

          v10 = v102;
          v149 = *&v102[16 * v147 + 32];
          v150 = *&v102[16 * v109 + 40];
          v151 = *(v231 + 72);
          v152 = (v148 + v151 * v149);
          v153 = (v148 + v151 * *&v102[16 * v109 + 32]);
          v154 = (v148 + v151 * v150);
          v155 = v244;

          sub_1D1CF3F68(v152, v153, v154, v248, v155);
          if (v6)
          {
            swift_bridgeObjectRelease_n();
          }

          if (v150 < v149)
          {
            goto LABEL_161;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v10 = sub_1D1E0BE44(v10);
          }

          if (v147 >= *(v10 + 16))
          {
            goto LABEL_162;
          }

          v156 = v10 + 16 * v147;
          *(v156 + 32) = v149;
          *(v156 + 40) = v150;
          v255 = v10;
          sub_1D1E0BDB8(v109);
          v102 = v255;
          v106 = *(v255 + 16);
          v49 = v239;
          if (v106 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v219 = v102;
      v48 = v232[1];
      v50 = v224;
      a4 = v215;
      if (v224 >= v48)
      {
        goto LABEL_148;
      }

      goto LABEL_4;
    }

    break;
  }

  v174 = v10;
  v175 = v234;
  sub_1D1741C08(v49, v234, &qword_1EC642570, &qword_1D1E6C6A0);
  if (v173(v49 + v171, 1, v172) != 1)
  {
    sub_1D1741C08(v49 + v171, v233, &qword_1EC642570, &qword_1D1E6C6A0);
    v176 = *v230;
    v177 = v228;
    (*v230)(v228, v175, v172);
    v178 = v229;
    v176(v229, v233, v172);
    sub_1D1CF8D7C(&qword_1EC642AC8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
    if (sub_1D1E6775C())
    {
      v179 = *v236;
      (*v236)(v178, v172);
      v179(v177, v172);
      v162 = v243;
LABEL_126:
      sub_1D1741A30(v49, &qword_1EC642AC0, &qword_1D1E6E810);
      v180 = *(v249 + 20);
      v181 = &v250[v180];
      v182 = *&v250[v180];
      v183 = *&v250[v180 + 8];
      v184 = (v162 + v180);
      v185 = *v184;
      v186 = v184[1];
      v187 = *v181 == *v184 && v183 == v186;
      if (v187 || (sub_1D1E6904C() & 1) != 0)
      {
        v188 = sub_1D1E66A1C();
        v190 = v189;
        v162 = v243;
        v191 = sub_1D1E66A1C();
        v163 = v248;
        if (v188 == v191 && v190 == v192)
        {

          v10 = v244;
          v49 = v239;
          goto LABEL_110;
        }

        v193 = sub_1D1E6904C();

        v10 = v244;
        v49 = v239;
        goto LABEL_138;
      }

      v253 = v182;
      v254 = v183;
      v251 = v185;
      v252 = v186;
      sub_1D17D8EF0();
      v193 = sub_1D1E685FC() == -1;
      v162 = v243;
      v10 = v244;
      v49 = v239;
    }

    else
    {
      v193 = sub_1D1E6696C();
      v194 = v178;
      v195 = v177;
      v196 = *v236;
      (*v236)(v194, v172);
      v196(v195, v172);
      v10 = v244;
      sub_1D1741A30(v49 + v171, &qword_1EC642570, &qword_1D1E6C6A0);
      sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
      v162 = v243;
    }

    v163 = v248;
LABEL_138:
    sub_1D1CF5098(v162, type metadata accessor for StaticHome);
    sub_1D1CF5098(v250, type metadata accessor for StaticHome);
    if ((v193 & 1) == 0)
    {
      goto LABEL_111;
    }

    goto LABEL_139;
  }

  (*v236)(v175, v172);
  sub_1D1741A30(v49 + v171, &qword_1EC642570, &qword_1D1E6C6A0);
  sub_1D1741A30(v49, &qword_1EC642570, &qword_1D1E6C6A0);
  v10 = v174;
  v162 = v243;
  v163 = v248;
LABEL_123:
  sub_1D1CF5098(v162, type metadata accessor for StaticHome);
  sub_1D1CF5098(v250, type metadata accessor for StaticHome);
LABEL_139:
  if (v246)
  {
    v197 = v247;
    sub_1D1CF8DC4(v161, v247, type metadata accessor for StaticHome);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D1CF8DC4(v197, v164, type metadata accessor for StaticHome);
    v164 += v245;
    v161 += v245;
    if (__CFADD__(v163++, 1))
    {
      goto LABEL_111;
    }

    goto LABEL_113;
  }

  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_183:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_184:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_185:

  __break(1u);
LABEL_186:
  swift_bridgeObjectRelease_n();
  __break(1u);
LABEL_187:
  result = swift_bridgeObjectRelease_n();
  __break(1u);
  return result;
}