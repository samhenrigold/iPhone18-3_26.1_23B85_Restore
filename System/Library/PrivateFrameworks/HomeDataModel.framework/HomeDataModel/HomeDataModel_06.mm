uint64_t sub_1D1767EBC(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D1E6920C();
  sub_1D1E6922C();
  if (a3)
  {
    sub_1D1E678EC();
  }

  v8 = sub_1D1E6926C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D1943728(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_1D1E6904C() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_1D1768044(uint64_t a1, uint64_t a2)
{
  v36 = a1;
  v4 = type metadata accessor for MatterTilePath(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v33 - v9;
  v35 = v2;
  v10 = *v2;
  sub_1D1E6920C();
  sub_1D1E66A7C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v11 = *(a2 + *(v4 + 20));
  MEMORY[0x1D3892890](v11);
  v12 = (a2 + *(v4 + 24));
  v13 = *v12;
  v39 = *(v12 + 2);
  if (v39 == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  v14 = sub_1D1E6926C();
  v15 = v10 + 56;
  v16 = -1 << *(v10 + 32);
  v17 = v14 & ~v16;
  if ((*(v10 + 56 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v37 = v13;
    v18 = ~v16;
    v19 = *(v5 + 72);
    v38 = v19;
    do
    {
      v20 = v19 * v17;
      sub_1D1771BF4(*(v10 + 48) + v19 * v17, v8, type metadata accessor for MatterTilePath);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && *&v8[*(v4 + 20)] == v11)
      {
        v21 = v18;
        v22 = v15;
        v23 = v11;
        v24 = a2;
        v25 = v4;
        v26 = &v8[*(v4 + 24)];
        v40 = *v26;
        v27 = v26[2];
        sub_1D1771C5C(v8, type metadata accessor for MatterTilePath);
        if (v27)
        {
          v4 = v25;
          a2 = v24;
          v11 = v23;
          v15 = v22;
          v18 = v21;
          v19 = v38;
          if (v39)
          {
            goto LABEL_16;
          }
        }

        else
        {
          v28 = v39;
          if (v40 != v37)
          {
            v28 = 1;
          }

          v4 = v25;
          a2 = v24;
          v11 = v23;
          v15 = v22;
          v18 = v21;
          v19 = v38;
          if ((v28 & 1) == 0)
          {
LABEL_16:
            sub_1D1771C5C(a2, type metadata accessor for MatterTilePath);
            sub_1D1771BF4(*(v10 + 48) + v20, v36, type metadata accessor for MatterTilePath);
            return 0;
          }
        }
      }

      else
      {
        sub_1D1771C5C(v8, type metadata accessor for MatterTilePath);
      }

      v17 = (v17 + 1) & v18;
    }

    while (((*(v15 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0);
  }

  v30 = v35;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v32 = v34;
  sub_1D1771BF4(a2, v34, type metadata accessor for MatterTilePath);
  v41 = *v30;
  sub_1D19438E4(v32, v17, isUniquelyReferenced_nonNull_native);
  *v30 = v41;
  sub_1D1771B6C(a2, v36, type metadata accessor for MatterTilePath);
  return 1;
}

uint64_t sub_1D1768400(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EC643048, 0x1E696CBE8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D176BFE8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D193C0C0(v20 + 1);
    }

    v18 = v8;
    sub_1D176D2C8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EC643048, 0x1E696CBE8);
  v11 = sub_1D1E684EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D1943C38(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1E684FC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D1768638(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD8, &unk_1D1E6E820);
  MEMORY[0x1EEE9AC00](v57);
  v5 = &v44 - v4;
  v52 = sub_1D1E66A7C();
  v50 = *(v52 - 8);
  v6 = MEMORY[0x1EEE9AC00](v52);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for HomeState.Stream.StateSubscription.Reason(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v46 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - v19;
  v47 = v2;
  v59 = *v2;
  sub_1D1E6920C();
  v58 = a2;
  sub_1D1771BF4(a2, v20, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v20, 3, v21);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = 3;
    }

    goto LABEL_8;
  }

  if (v23)
  {
    v27 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v27);
    goto LABEL_9;
  }

  v56 = v11;
  v24 = v50;
  v25 = v52;
  (*(v50 + 32))(v9, v20, v52);
  MEMORY[0x1D3892850](1);
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v26 = v24;
  v11 = v56;
  (*(v26 + 8))(v9, v25);
LABEL_9:
  v28 = v53;
  v29 = sub_1D1E6926C();
  v30 = -1 << *(v59 + 32);
  v31 = v29 & ~v30;
  v56 = v59 + 56;
  if (((*(v59 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
  {
LABEL_26:
    v39 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v58;
    v42 = v46;
    sub_1D1771BF4(v58, v46, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v60 = *v39;
    sub_1D1943C5C(v42, v31, isUniquelyReferenced_nonNull_native);
    *v39 = v60;
    sub_1D1771B6C(v41, v48, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    return 1;
  }

  v54 = ~v30;
  v55 = *(v11 + 72);
  v51 = (v50 + 8);
  v44 = (v50 + 32);
  v45 = v22;
  while (1)
  {
    v32 = v55 * v31;
    sub_1D1771BF4(*(v59 + 48) + v55 * v31, v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v33 = *(v57 + 48);
    sub_1D1771BF4(v16, v5, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    sub_1D1771BF4(v58, &v5[v33], type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v34 = v22(v5, 3, v21);
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        sub_1D1771C5C(v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        if (v22(&v5[v33], 3, v21) == 2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1D1771C5C(v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        if (v22(&v5[v33], 3, v21) == 3)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_21;
    }

    if (v34)
    {
      sub_1D1771C5C(v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      if (v22(&v5[v33], 3, v21) == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    sub_1D1771BF4(v5, v28, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    if (!v22(&v5[v33], 3, v21))
    {
      break;
    }

    sub_1D1771C5C(v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    (*v51)(v28, v52);
LABEL_21:
    sub_1D1741A30(v5, &qword_1EC642AD8, &unk_1D1E6E820);
LABEL_22:
    v31 = (v31 + 1) & v54;
    if (((*(v56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v35 = v49;
  v36 = v52;
  (*v44)(v49, &v5[v33], v52);
  LODWORD(v50) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v37 = *v51;
  v38 = v35;
  v28 = v53;
  (*v51)(v38, v36);
  sub_1D1771C5C(v16, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v37(v28, v36);
  v22 = v45;
  if ((v50 & 1) == 0)
  {
    sub_1D1771C5C(v5, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    goto LABEL_22;
  }

LABEL_27:
  sub_1D1771C5C(v5, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  sub_1D1771C5C(v58, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  sub_1D1771BF4(*(v59 + 48) + v32, v48, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  return 0;
}

uint64_t sub_1D1768DB8(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EC643000, 0x1E696CAF8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D176C1D8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D193C2DC(v20 + 1);
    }

    v18 = v8;
    sub_1D176D2C8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EC643000, 0x1E696CAF8);
  v11 = sub_1D1E684EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D19443A0(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1E684FC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D1768FF0(uint64_t a1, uint64_t a2)
{
  v52 = a1;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AA8, &unk_1D1E9F9F0);
  MEMORY[0x1EEE9AC00](v64);
  v5 = &v50 - v4;
  v6 = sub_1D1E66A7C();
  v63 = *(v6 - 8);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v54 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - v9;
  v11 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v62 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v59 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v58 = (&v50 - v15);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v50 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = &v50 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v50 - v22;
  v51 = v2;
  v24 = *v2;
  sub_1D1E6920C();
  v65 = a2;
  sub_1D1771BF4(a2, v23, type metadata accessor for StaticAccessory.DeviceIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v50 = v21;
  if (EnumCaseMultiPayload == 1)
  {
    v26 = v63;
    (*(v63 + 32))(v10, v23, v6);
    MEMORY[0x1D3892850](1);
    sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v26 + 8))(v10, v6);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    sub_1D1E678EC();

    v26 = v63;
  }

  v27 = sub_1D1E6926C();
  v28 = -1 << *(v24 + 32);
  v29 = v27 & ~v28;
  v63 = v24 + 56;
  if (((*(v24 + 56 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
  {
LABEL_21:
    v45 = v51;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v47 = v65;
    v48 = v50;
    sub_1D1771BF4(v65, v50, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v66 = *v45;
    sub_1D19443C4(v48, v29, isUniquelyReferenced_nonNull_native);
    *v45 = v66;
    sub_1D1771B6C(v47, v52, type metadata accessor for StaticAccessory.DeviceIdentifier);
    return 1;
  }

  v61 = ~v28;
  v62 = *(v62 + 72);
  v56 = (v26 + 8);
  v57 = v6;
  v53 = (v26 + 32);
  v30 = v59;
  while (1)
  {
    v31 = v62 * v29;
    sub_1D1771BF4(*(v24 + 48) + v62 * v29, v18, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v32 = &v5[*(v64 + 48)];
    sub_1D1771BF4(v18, v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1771BF4(v65, v32, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      break;
    }

    sub_1D1771BF4(v5, v30, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v60 = v31;
      v33 = v24;
      v34 = v54;
      v35 = v57;
      (*v53)(v54, v32, v57);
      v55 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v36 = *v56;
      v37 = v34;
      v24 = v33;
      v30 = v59;
      (*v56)(v37, v35);
      sub_1D1771C5C(v18, type metadata accessor for StaticAccessory.DeviceIdentifier);
      v36(v30, v35);
      if (v55)
      {
        goto LABEL_23;
      }

LABEL_19:
      sub_1D1771C5C(v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
      goto LABEL_8;
    }

    sub_1D1771C5C(v18, type metadata accessor for StaticAccessory.DeviceIdentifier);
    (*v56)(v30, v57);
LABEL_7:
    sub_1D1741A30(v5, &qword_1EC642AA8, &unk_1D1E9F9F0);
LABEL_8:
    v29 = (v29 + 1) & v61;
    if (((*(v63 + ((v29 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v29) & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  v60 = v31;
  v38 = v58;
  sub_1D1771BF4(v5, v58, type metadata accessor for StaticAccessory.DeviceIdentifier);
  v40 = *v38;
  v39 = v38[1];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1D1771C5C(v18, type metadata accessor for StaticAccessory.DeviceIdentifier);

    goto LABEL_7;
  }

  v41 = *v32;
  v42 = *(v32 + 1);
  if (v40 != v41 || v39 != v42)
  {
    v44 = sub_1D1E6904C();

    sub_1D1771C5C(v18, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (v44)
    {
      goto LABEL_23;
    }

    goto LABEL_19;
  }

  sub_1D1771C5C(v18, type metadata accessor for StaticAccessory.DeviceIdentifier);
LABEL_23:
  sub_1D1771C5C(v5, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1771C5C(v65, type metadata accessor for StaticAccessory.DeviceIdentifier);
  sub_1D1771BF4(*(v24 + 48) + v60, v52, type metadata accessor for StaticAccessory.DeviceIdentifier);
  return 0;
}

uint64_t sub_1D1769794(_BYTE *a1, uint64_t a2, void (*a3)(uint64_t, unint64_t, uint64_t))
{
  v7 = *v3;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](a2);
  v8 = sub_1D1E6926C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (*(*(v7 + 48) + v10) != a2)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    a3(a2, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D176989C(_BYTE *a1, uint64_t a2)
{
  v3 = a2;
  v4 = *v2;
  v5 = sub_1D1CDA80C(*(*v2 + 40), a2);
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v23 = ~v6;
    while (1)
    {
      v8 = *(*(v4 + 48) + v7);
      if (v8 > 3)
      {
        if (*(*(v4 + 48) + v7) > 5u)
        {
          if (v8 == 6)
          {
            v11 = "17-A590-755E1AAC02AE";
          }

          else
          {
            v11 = "73-8FBD-0E8978A33403";
          }
        }

        else if (v8 == 4)
        {
          v11 = "60-AD68-D91053B75F44";
        }

        else
        {
          v11 = "7E-BE63-1D00B1500545";
        }
      }

      else
      {
        if (v8 == 2)
        {
          v9 = "73-A058-C5E64BC487B2";
        }

        else
        {
          v9 = "CE-986D-63B28F62C9E3";
        }

        if (*(*(v4 + 48) + v7))
        {
          v10 = "13-AA62-01754F256DD5";
        }

        else
        {
          v10 = "00-8000-0026BB765291";
        }

        if (*(*(v4 + 48) + v7) <= 1u)
        {
          v11 = v10;
        }

        else
        {
          v11 = v9;
        }
      }

      v12 = v11 | 0x8000000000000000;
      v13 = "17-A590-755E1AAC02AE";
      if (v3 != 6)
      {
        v13 = "73-8FBD-0E8978A33403";
      }

      v14 = "60-AD68-D91053B75F44";
      if (v3 != 4)
      {
        v14 = "7E-BE63-1D00B1500545";
      }

      if (v3 <= 5u)
      {
        v13 = v14;
      }

      if (v3 == 2)
      {
        v15 = "73-A058-C5E64BC487B2";
      }

      else
      {
        v15 = "CE-986D-63B28F62C9E3";
      }

      if (v3)
      {
        v16 = "13-AA62-01754F256DD5";
      }

      else
      {
        v16 = "00-8000-0026BB765291";
      }

      if (v3 <= 1u)
      {
        v15 = v16;
      }

      v17 = v3 <= 3u ? v15 : v13;
      if (v12 == (v17 | 0x8000000000000000))
      {
        break;
      }

      v18 = sub_1D1E6904C();

      if (v18)
      {
        goto LABEL_43;
      }

      v7 = (v7 + 1) & v23;
      if (((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_41;
      }
    }

LABEL_43:
    result = 0;
    LOBYTE(v3) = *(*(v4 + 48) + v7);
  }

  else
  {
LABEL_41:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v21;
    sub_1D1944C44(v3, v7, isUniquelyReferenced_nonNull_native);
    *v21 = v24;
    result = 1;
  }

  *a1 = v3;
  return result;
}

uint64_t sub_1D1769B04(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D176C3C8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D193C814(v20 + 1);
    }

    v18 = v8;
    sub_1D176D2C8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
  v11 = sub_1D1E684EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D1944F00(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1E684FC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D1769D3C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for ActionService(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1E6920C();
  ActionService.hash(into:)(v20);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for ActionService);
      v15 = _s13HomeDataModel13ActionServiceV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D1771C5C(v8, type metadata accessor for ActionService);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for ActionService);
    sub_1D1771BF4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for ActionService);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v8, type metadata accessor for ActionService);
    v20[0] = *v3;
    sub_1D1944F24(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = v20[0];
    sub_1D1771B6C(a2, v17, type metadata accessor for ActionService);
    return 1;
  }
}

uint64_t sub_1D1769F7C(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v4 = type metadata accessor for StaticZone(0);
  v64 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v61 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v46 = &v46 - v7;
  v8 = sub_1D1E66A7C();
  v49 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v66 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v67 = &v46 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - v13;
  v47 = v2;
  v59 = *v2;
  sub_1D1E6920C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v15 = (a2 + *(v4 + 20));
  v16 = v15[1];
  v51 = *v15;
  v50 = v16;
  sub_1D1E678EC();
  v54 = v4;
  v17 = *(v4 + 24);
  v58 = a2;
  v18 = *(a2 + v17);
  MEMORY[0x1D3892850](*(v18 + 16));
  v53 = v18;
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v49 + 16);
    v21 = v53 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v22 = *(v49 + 72);
    v23 = (v49 + 8);
    do
    {
      v20(v14, v21, v8);
      sub_1D1E676EC();
      (*v23)(v14, v8);
      v21 += v22;
      --v19;
    }

    while (v19);
  }

  v24 = sub_1D1E6926C();
  v25 = -1 << *(v59 + 32);
  v26 = v24 & ~v25;
  v56 = v59 + 56;
  if ((*(v59 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
  {
    v65 = v8;
    v52 = ~v25;
    v57 = *(v64 + 72);
    v63 = v49 + 16;
    v64 = v49 + 8;
    v27 = v61;
    do
    {
      v28 = *(v59 + 48);
      v60 = v26;
      v55 = v57 * v26;
      sub_1D1771BF4(v28 + v57 * v26, v27, type metadata accessor for StaticZone);
      if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
      {
        v29 = (v61 + *(v54 + 20));
        v30 = *v29 == v51 && v29[1] == v50;
        if (v30 || (sub_1D1E6904C() & 1) != 0)
        {
          v31 = *(v61 + *(v54 + 24));
          v32 = *(v31 + 16);
          if (v32 == *(v53 + 16))
          {
            if (!v32 || v31 == v53)
            {
LABEL_19:
              sub_1D1771C5C(v61, type metadata accessor for StaticZone);
              sub_1D1771C5C(v58, type metadata accessor for StaticZone);
              sub_1D1771BF4(*(v59 + 48) + v55, v48, type metadata accessor for StaticZone);
              return 0;
            }

            v33 = (*(v49 + 80) + 32) & ~*(v49 + 80);
            v34 = v31 + v33;
            v35 = v53 + v33;
            v62 = *(v49 + 72);
            v36 = *(v49 + 16);
            while (1)
            {
              v37 = v67;
              v36(v67, v34, v8);
              v38 = v66;
              v36(v66, v35, v8);
              sub_1D1771994(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
              v39 = v37;
              LOBYTE(v37) = sub_1D1E6775C();
              v40 = *v64;
              (*v64)(v38, v8);
              v40(v39, v8);
              if ((v37 & 1) == 0)
              {
                break;
              }

              v35 += v62;
              v34 += v62;
              if (!--v32)
              {
                goto LABEL_19;
              }
            }
          }
        }
      }

      v27 = v61;
      sub_1D1771C5C(v61, type metadata accessor for StaticZone);
      v26 = (v60 + 1) & v52;
    }

    while (((*(v56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
  }

  v42 = v47;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v44 = v58;
  v45 = v46;
  sub_1D1771BF4(v58, v46, type metadata accessor for StaticZone);
  v68 = *v42;
  sub_1D1945168(v45, v26, isUniquelyReferenced_nonNull_native);
  *v42 = v68;
  sub_1D1771B6C(v44, v48, type metadata accessor for StaticZone);
  return 1;
}

uint64_t sub_1D176A610(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for StaticActionSet(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1E6920C();
  StaticActionSet.hash(into:)(v20);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for StaticActionSet);
      v15 = _s13HomeDataModel15StaticActionSetV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D1771C5C(v8, type metadata accessor for StaticActionSet);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticActionSet);
    sub_1D1771BF4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for StaticActionSet);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v8, type metadata accessor for StaticActionSet);
    *&v20[0] = *v3;
    sub_1D1945778(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D1771B6C(a2, v17, type metadata accessor for StaticActionSet);
    return 1;
  }
}

uint64_t sub_1D176A850(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v19 = a1;
  v5 = type metadata accessor for StaticRoom(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1E6920C();
  StaticRoom.hash(into:)(v20);
  v10 = sub_1D1E6926C();
  v11 = -1 << *(v9 + 32);
  v12 = v10 & ~v11;
  if ((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = *(v6 + 72);
    while (1)
    {
      sub_1D1771BF4(*(v9 + 48) + v14 * v12, v8, type metadata accessor for StaticRoom);
      v15 = _s13HomeDataModel10StaticRoomV2eeoiySbAC_ACtFZ_0(v8, a2);
      sub_1D1771C5C(v8, type metadata accessor for StaticRoom);
      if (v15)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      if (((*(v9 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D1771C5C(a2, type metadata accessor for StaticRoom);
    sub_1D1771BF4(*(v9 + 48) + v14 * v12, v19, type metadata accessor for StaticRoom);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D1771BF4(a2, v8, type metadata accessor for StaticRoom);
    *&v20[0] = *v3;
    sub_1D19459BC(v8, v12, isUniquelyReferenced_nonNull_native);
    v17 = v19;
    *v3 = *&v20[0];
    sub_1D1771B6C(a2, v17, type metadata accessor for StaticRoom);
    return 1;
  }
}

uint64_t sub_1D176AA90(uint64_t a1, uint64_t a2)
{
  v48 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A00, &qword_1D1E97330);
  MEMORY[0x1EEE9AC00](v57);
  v5 = &v44 - v4;
  v52 = sub_1D1E66A7C();
  v50 = *(v52 - 8);
  v6 = MEMORY[0x1EEE9AC00](v52);
  v49 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v44 - v8;
  v10 = type metadata accessor for DataModel.StateSubscription.Reason(0);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = &v44 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v46 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v44 - v19;
  v47 = v2;
  v59 = *v2;
  sub_1D1E6920C();
  v58 = a2;
  sub_1D1771BF4(a2, v20, type metadata accessor for DataModel.StateSubscription.Reason);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v22 = *(*(v21 - 8) + 48);
  v23 = v22(v20, 3, v21);
  if (v23 > 1)
  {
    if (v23 == 2)
    {
      v27 = 2;
    }

    else
    {
      v27 = 3;
    }

    goto LABEL_8;
  }

  if (v23)
  {
    v27 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v27);
    goto LABEL_9;
  }

  v56 = v11;
  v24 = v50;
  v25 = v52;
  (*(v50 + 32))(v9, v20, v52);
  MEMORY[0x1D3892850](1);
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v26 = v24;
  v11 = v56;
  (*(v26 + 8))(v9, v25);
LABEL_9:
  v28 = v53;
  v29 = sub_1D1E6926C();
  v30 = -1 << *(v59 + 32);
  v31 = v29 & ~v30;
  v56 = v59 + 56;
  if (((*(v59 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
  {
LABEL_26:
    v39 = v47;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v58;
    v42 = v46;
    sub_1D1771BF4(v58, v46, type metadata accessor for DataModel.StateSubscription.Reason);
    v60 = *v39;
    sub_1D1945F60(v42, v31, isUniquelyReferenced_nonNull_native);
    *v39 = v60;
    sub_1D1771B6C(v41, v48, type metadata accessor for DataModel.StateSubscription.Reason);
    return 1;
  }

  v54 = ~v30;
  v55 = *(v11 + 72);
  v51 = (v50 + 8);
  v44 = (v50 + 32);
  v45 = v22;
  while (1)
  {
    v32 = v55 * v31;
    sub_1D1771BF4(*(v59 + 48) + v55 * v31, v16, type metadata accessor for DataModel.StateSubscription.Reason);
    v33 = *(v57 + 48);
    sub_1D1771BF4(v16, v5, type metadata accessor for DataModel.StateSubscription.Reason);
    sub_1D1771BF4(v58, &v5[v33], type metadata accessor for DataModel.StateSubscription.Reason);
    v34 = v22(v5, 3, v21);
    if (v34 > 1)
    {
      if (v34 == 2)
      {
        sub_1D1771C5C(v16, type metadata accessor for DataModel.StateSubscription.Reason);
        if (v22(&v5[v33], 3, v21) == 2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1D1771C5C(v16, type metadata accessor for DataModel.StateSubscription.Reason);
        if (v22(&v5[v33], 3, v21) == 3)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_21;
    }

    if (v34)
    {
      sub_1D1771C5C(v16, type metadata accessor for DataModel.StateSubscription.Reason);
      if (v22(&v5[v33], 3, v21) == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    sub_1D1771BF4(v5, v28, type metadata accessor for DataModel.StateSubscription.Reason);
    if (!v22(&v5[v33], 3, v21))
    {
      break;
    }

    sub_1D1771C5C(v16, type metadata accessor for DataModel.StateSubscription.Reason);
    (*v51)(v28, v52);
LABEL_21:
    sub_1D1741A30(v5, &qword_1EC642A00, &qword_1D1E97330);
LABEL_22:
    v31 = (v31 + 1) & v54;
    if (((*(v56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
      goto LABEL_26;
    }
  }

  v35 = v49;
  v36 = v52;
  (*v44)(v49, &v5[v33], v52);
  LODWORD(v50) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v37 = *v51;
  v38 = v35;
  v28 = v53;
  (*v51)(v38, v36);
  sub_1D1771C5C(v16, type metadata accessor for DataModel.StateSubscription.Reason);
  v37(v28, v36);
  v22 = v45;
  if ((v50 & 1) == 0)
  {
    sub_1D1771C5C(v5, type metadata accessor for DataModel.StateSubscription.Reason);
    goto LABEL_22;
  }

LABEL_27:
  sub_1D1771C5C(v5, type metadata accessor for DataModel.StateSubscription.Reason);
  sub_1D1771C5C(v58, type metadata accessor for DataModel.StateSubscription.Reason);
  sub_1D1771BF4(*(v59 + 48) + v32, v48, type metadata accessor for DataModel.StateSubscription.Reason);
  return 0;
}

uint64_t sub_1D176B210(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1D1E6874C();

    if (v9)
    {

      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1D1E6873C();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1D176C5B8(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1D193DBA8(v20 + 1);
    }

    v18 = v8;
    sub_1D176D2C8(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v11 = sub_1D1E684EC();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1D19466A4(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1D1E684FC();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_1D176B448(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643080, &qword_1D1E71150);
    v2 = sub_1D1E6881C();
    v15 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D1937C54(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1E684EC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176B638(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643070, &unk_1D1EA0D80);
    v2 = sub_1D1E6881C();
    v15 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EE079BF0, 0x1E696CAE8);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D193862C(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1E684EC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176B828(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643060, &qword_1D1E71140);
    v2 = sub_1D1E6881C();
    v15 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EC643058, 0x1E696CB30);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D1938640(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1E684EC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176BA18(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642FF0, &qword_1D1E71108);
    v2 = sub_1D1E6881C();
    v15 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D1939118(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1E684EC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176BC08(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642FF8, &qword_1D1E71110);
    v2 = sub_1D1E6881C();
    v15 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D1939A58(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1E684EC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176BDF8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643020, &qword_1D1E71120);
    v2 = sub_1D1E6881C();
    v15 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D193B3B4(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1E684EC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176BFE8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643050, &qword_1D1E71138);
    v2 = sub_1D1E6881C();
    v15 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EC643048, 0x1E696CBE8);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D193C0C0(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1E684EC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176C1D8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643008, &qword_1D1E71118);
    v2 = sub_1D1E6881C();
    v15 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EC643000, 0x1E696CAF8);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D193C2DC(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1E684EC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176C3C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643030, &qword_1D1E71130);
    v2 = sub_1D1E6881C();
    v15 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D193C814(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1E684EC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176C5B8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643028, &qword_1D1E71128);
    v2 = sub_1D1E6881C();
    v15 = v2;
    sub_1D1E686EC();
    if (sub_1D1E6877C())
    {
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1D193DBA8(v9 + 1);
        }

        v2 = v15;
        result = sub_1D1E684EC();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1D1E6877C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1D176C7A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a2;
  sub_1D1E6920C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v8 = type metadata accessor for StaticZone(0);
  sub_1D1E678EC();
  v20 = v8;
  v21 = a1;
  v9 = *(a1 + *(v8 + 24));
  MEMORY[0x1D3892850](*(v9 + 16));
  v10 = *(v9 + 16);
  if (v10)
  {
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = v9 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v15 = *(v12 + 56);
    do
    {
      v11(v7, v14, v4);
      sub_1D1E676EC();
      (*(v12 - 8))(v7, v4);
      v14 += v15;
      --v10;
    }

    while (v10);
  }

  sub_1D1E6926C();
  v16 = v22;
  v17 = v22 + 56;
  v18 = sub_1D1E686CC();
  *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
  result = sub_1D1771B6C(v21, *(v16 + 48) + *(*(v20 - 8) + 72) * v18, type metadata accessor for StaticZone);
  ++*(v16 + 16);
  return result;
}

uint64_t sub_1D176CA00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v15[-1] - v9;
  sub_1D1E6920C();
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v11 = type metadata accessor for StaticMediaSystemComponent(0);
  StaticMediaProfile.hash(into:)(v15);
  MEMORY[0x1D3892850](*(a1 + v11[6]));
  sub_1D176D4E8(v15, *(a1 + v11[7]));
  sub_1D1741C08(a1 + v11[8], v10, &qword_1EC642590, qword_1D1E71260);
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

  sub_1D1E6926C();
  v12 = sub_1D1E686CC();
  *(a2 + 56 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
  result = sub_1D1771B6C(a1, *(a2 + 48) + *(*(v11 - 1) + 72) * v12, type metadata accessor for StaticMediaSystemComponent);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D176CD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E6920C();
  sub_1D1771BF4(a1, v11, type metadata accessor for StaticAccessory.DeviceIdentifier);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v7, v11, v4);
    MEMORY[0x1D3892850](1);
    sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    (*(v5 + 8))(v7, v4);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    sub_1D1E678EC();
  }

  sub_1D1E6926C();
  v12 = sub_1D1E686CC();
  *(a2 + 56 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
  result = sub_1D1771B6C(a1, *(a2 + 48) + *(v9 + 72) * v12, type metadata accessor for StaticAccessory.DeviceIdentifier);
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D176CFF8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a3(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v23 - v16;
  sub_1D1E6920C();
  sub_1D1771BF4(a1, v17, a4);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v19 = (*(*(v18 - 8) + 48))(v17, 3, v18);
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }

    goto LABEL_8;
  }

  if (v19)
  {
    v20 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v20);
    goto LABEL_9;
  }

  (*(v11 + 32))(v13, v17, v10);
  MEMORY[0x1D3892850](1);
  sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  (*(v11 + 8))(v13, v10);
LABEL_9:
  sub_1D1E6926C();
  v21 = sub_1D1E686CC();
  *(a2 + 56 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
  result = sub_1D1771B6C(a1, *(a2 + 48) + *(v15 + 72) * v21, a5);
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D176D2C8(uint64_t a1, uint64_t a2)
{
  sub_1D1E684EC();
  result = sub_1D1E686CC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1D176D34C(__int128 *a1, uint64_t a2)
{
  sub_1D1E6926C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  v9 = 0;
  while (v5)
  {
LABEL_9:
    sub_1D1E6920C();
    sub_1D1E6923C();
    sub_1D1E678EC();
    v5 &= v5 - 1;
    result = sub_1D1E6926C();
    v8 ^= result;
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

      return MEMORY[0x1D3892850](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176D4E8(__int128 *a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[3];
  v25 = a1[2];
  v26 = v8;
  v27 = *(a1 + 8);
  v10 = *a1;
  v9 = a1[1];
  v22[0] = a1;
  v23 = v10;
  v24 = v9;
  v11 = sub_1D1E6926C();
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 56);
  v15 = (v12 + 63) >> 6;
  v22[2] = v5 + 16;
  v22[3] = v11;
  v22[1] = v5 + 8;

  v17 = 0;
  for (i = 0; v14; v17 ^= v21)
  {
    v19 = i;
LABEL_9:
    v20 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    (*(v5 + 16))(v7, *(a2 + 48) + *(v5 + 72) * (v20 | (v19 << 6)), v4);
    sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v21 = sub_1D1E676DC();
    result = (*(v5 + 8))(v7, v4);
  }

  while (1)
  {
    v19 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      return MEMORY[0x1D3892850](v17);
    }

    v14 = *(a2 + 56 + 8 * v19);
    ++i;
    if (v14)
    {
      i = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176D714(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v16[13] = *(a1 + 32);
  *&v16[15] = v3;
  v16[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v16[9] = *a1;
  *&v16[11] = v4;
  sub_1D1E6926C();
  v5 = 1 << *(a2 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a2 + 56);
  v8 = (v5 + 63) >> 6;

  v10 = 0;
  v11 = 0;
  while (v7)
  {
LABEL_12:
    v15 = *(*(a2 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v7)))));
    sub_1D1E6920C();
    if (v15 == 2)
    {
      v12 = 2;
LABEL_5:
      MEMORY[0x1D3892850](v12);
      goto LABEL_6;
    }

    if (v15 == 1)
    {
      v12 = 0;
      goto LABEL_5;
    }

    MEMORY[0x1D3892850](1);
    sub_1D1E6922C();
    if (v15)
    {

      sub_1D176D4E8(v16, v15);
    }

LABEL_6:
    v7 &= v7 - 1;
    v13 = sub_1D1E6926C();
    result = sub_1D1771B10(v15);
    v10 ^= v13;
  }

  while (1)
  {
    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v14 >= v8)
    {

      return MEMORY[0x1D3892850](v10);
    }

    v7 = *(a2 + 56 + 8 * v14);
    ++v11;
    if (v7)
    {
      v11 = v14;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176D8A8(__int128 *a1, uint64_t a2)
{
  sub_1D1E6926C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
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

      return MEMORY[0x1D3892850](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++v9;
    if (v5)
    {
      v9 = v10;
      do
      {
LABEL_9:
        v5 &= v5 - 1;
        sub_1D1E6920C();

        sub_1D1E678EC();
        v11 = sub_1D1E6926C();

        v8 ^= v11;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176DA04(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48);
  *&v20[13] = *(a1 + 32);
  *&v20[15] = v3;
  v20[17] = *(a1 + 64);
  v4 = *(a1 + 16);
  *&v20[9] = *a1;
  *&v20[11] = v4;
  sub_1D1E6926C();
  v19 = a2;
  v5 = a2 + 56;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;

  v11 = 0;
  for (i = 0; v8; v11 ^= v18)
  {
    v13 = i;
LABEL_9:
    v14 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v15 = (*(v19 + 48) + ((v13 << 11) | (32 * v14)));
    v16 = *v15;
    v17 = v15[3];
    sub_1D1E6920C();
    MEMORY[0x1D3892850](v16);

    sub_1D1E678EC();
    sub_1D176D34C(v20, v17);
    v18 = sub_1D1E6926C();
  }

  while (1)
  {
    v13 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1D3892850](v11);
    }

    v8 = *(v5 + 8 * v13);
    ++i;
    if (v8)
    {
      i = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176DB8C(__int128 *a1, uint64_t a2)
{
  result = sub_1D1E6926C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    goto LABEL_9;
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
      return MEMORY[0x1D3892850](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      do
      {
LABEL_9:
        v8 &= v8 - 1;
        sub_1D1E6920C();
        sub_1D1E6924C();
        result = sub_1D1E6926C();
        v4 ^= result;
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176DCC0(uint64_t a1, uint64_t a2)
{
  result = sub_1D1E6926C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    goto LABEL_9;
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
      return MEMORY[0x1D3892850](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
    ++v5;
    if (v8)
    {
      v5 = v10;
      do
      {
LABEL_9:
        v8 &= v8 - 1;
        result = sub_1D1E691FC();
        v4 ^= result;
      }

      while (v8);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176DDD0(__int128 *a1, uint64_t a2)
{
  result = sub_1D1E6926C();
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 56);
  for (i = (v6 + 63) >> 6; v8; v4 ^= result)
  {
    v10 = v5;
LABEL_9:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(*(a2 + 48) + (v11 | (v10 << 6)));
    sub_1D1E6920C();
    MEMORY[0x1D3892850](v12);
    result = sub_1D1E6926C();
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
      return MEMORY[0x1D3892850](v4);
    }

    v8 = *(a2 + 56 + 8 * v10);
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

uint64_t sub_1D176DEFC(__int128 *a1, uint64_t a2)
{
  v33 = sub_1D1E66A7C();
  v4 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticAccessory.DeviceIdentifier(0);
  v36 = *(v6 - 8);
  v37 = v6;
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = v29 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v35 = v29 - v13;
  v14 = a1[3];
  v41 = a1[2];
  v42 = v14;
  v43 = *(a1 + 8);
  v16 = *a1;
  v15 = a1[1];
  v29[1] = a1;
  v39 = v16;
  v40 = v15;
  v34 = sub_1D1E6926C();
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 56);
  v20 = (v17 + 63) >> 6;
  v31 = (v4 + 32);
  v30 = (v4 + 8);

  v22 = 0;
  v23 = 0;
  while (v19)
  {
    v38 = v22;
LABEL_12:
    v28 = v35;
    sub_1D1771BF4(*(a2 + 48) + *(v36 + 72) * (__clz(__rbit64(v19)) | (v23 << 6)), v35, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1771B6C(v28, v12, type metadata accessor for StaticAccessory.DeviceIdentifier);
    sub_1D1E6920C();
    sub_1D1771BF4(v12, v9, type metadata accessor for StaticAccessory.DeviceIdentifier);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v24 = v32;
      v25 = v33;
      (*v31)(v32, v9, v33);
      MEMORY[0x1D3892850](1);
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      (*v30)(v24, v25);
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D1E678EC();
    }

    v19 &= v19 - 1;
    v26 = sub_1D1E6926C();
    result = sub_1D1771C5C(v12, type metadata accessor for StaticAccessory.DeviceIdentifier);
    v22 = v26 ^ v38;
  }

  while (1)
  {
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v27 >= v20)
    {

      return MEMORY[0x1D3892850](v22);
    }

    v19 = *(a2 + 56 + 8 * v27);
    ++v23;
    if (v19)
    {
      v38 = v22;
      v23 = v27;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176E30C(__int128 *a1, uint64_t a2)
{
  sub_1D1E6926C();
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 56);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  for (i = 0; v5; i = v10)
  {
    v10 = i;
LABEL_8:
    v5 &= v5 - 1;
    sub_1D1E6920C();
    sub_1D1E678EC();

    result = sub_1D1E6926C();
    v8 ^= result;
  }

  while (1)
  {
    v10 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return MEMORY[0x1D3892850](v8);
    }

    v5 = *(a2 + 56 + 8 * v10);
    ++i;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176E508(uint64_t a1, uint64_t a2)
{
  result = sub_1D1E6926C();
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = 1 << *(a2 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a2 + 56);
  for (i = (v7 + 63) >> 6; v9; v5 ^= result)
  {
    v11 = v6;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    result = MEMORY[0x1D3892820](v4, *(*(a2 + 48) + ((v11 << 7) | (2 * v12))), 2);
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= i)
    {
      return MEMORY[0x1D3892850](v5);
    }

    v9 = *(a2 + 56 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176E61C(__int128 *a1, uint64_t a2)
{
  v4 = type metadata accessor for Action(0);
  v18 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = a1[3];
  *&v19[13] = a1[2];
  *&v19[15] = v7;
  v19[17] = *(a1 + 8);
  v8 = a1[1];
  *&v19[9] = *a1;
  *&v19[11] = v8;
  sub_1D1E6926C();
  v9 = 1 << *(a2 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a2 + 56);
  v12 = (v9 + 63) >> 6;

  v14 = 0;
  for (i = 0; v11; v14 ^= result)
  {
    v16 = i;
LABEL_9:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    sub_1D1771BF4(*(a2 + 48) + *(v18 + 72) * (v17 | (v16 << 6)), v6, type metadata accessor for Action);
    sub_1D1E6920C();
    Action.hash(into:)(v19);
    sub_1D1771C5C(v6, type metadata accessor for Action);
    result = sub_1D1E6926C();
  }

  while (1)
  {
    v16 = i + 1;
    if (__OFADD__(i, 1))
    {
      break;
    }

    if (v16 >= v12)
    {

      return MEMORY[0x1D3892850](v14);
    }

    v11 = *(a2 + 56 + 8 * v16);
    ++i;
    if (v11)
    {
      i = v16;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176E808(__int128 *a1, uint64_t a2)
{
  v55 = type metadata accessor for Event.CharacteristicEvent(0);
  MEMORY[0x1EEE9AC00](v55);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Event.TimeEvent(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v53 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Event(0);
  v59 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v62 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v51 - v14;
  v15 = a1[3];
  *&v64[13] = a1[2];
  *&v64[15] = v15;
  v64[17] = *(a1 + 8);
  v17 = *a1;
  v16 = a1[1];
  v51 = a1;
  *&v64[9] = v17;
  *&v64[11] = v16;
  v57 = sub_1D1E6926C();
  v18 = a2 + 56;
  v19 = 1 << *(a2 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a2 + 56);
  v22 = (v19 + 63) >> 6;

  v24 = 0;
  v25 = 0;
  v60 = v13;
  v54 = v5;
  v52 = a2;
  while (v21)
  {
    v61 = v24;
LABEL_13:
    v31 = v58;
    sub_1D1771BF4(*(a2 + 48) + *(v59 + 72) * (__clz(__rbit64(v21)) | (v25 << 6)), v58, type metadata accessor for Event);
    sub_1D1771B6C(v31, v13, type metadata accessor for Event);
    sub_1D1E6920C();
    sub_1D1771BF4(v13, v62, type metadata accessor for Event);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (!EnumCaseMultiPayload)
    {
      v40 = *v62;
      v39 = *(v62 + 8);
      v41 = *(v62 + 16);
      v42 = *(v62 + 24);
      MEMORY[0x1D3892850](0);
      if (v42 == 1)
      {
        MEMORY[0x1D3892850](1);
        if ((v40 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v43 = v40;
        }

        else
        {
          v43 = 0;
        }

        MEMORY[0x1D3892890](v43);
        if ((v39 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v44 = v39;
        }

        else
        {
          v44 = 0;
        }

        MEMORY[0x1D3892890](v44);
        if ((v41 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v45 = v41;
        }

        else
        {
          v45 = 0;
        }

        MEMORY[0x1D3892890](v45);
      }

      else
      {
        MEMORY[0x1D3892850](0);
        MEMORY[0x1D3892850](v40);
        if (v39)
        {
          if (v39 == 1)
          {
            MEMORY[0x1D3892850](1);
            v46 = v40;
            v47 = 1;
          }

          else
          {
            MEMORY[0x1D3892850](2);
            sub_1D176D4E8(v64, v39);
            v46 = v40;
            v47 = v39;
          }
        }

        else
        {
          MEMORY[0x1D3892850](0);
          v46 = v40;
          v47 = 0;
        }

        sub_1D1771BD4(v46, v47, v41, 0);
      }

      a2 = v52;
      v5 = v54;
      goto LABEL_5;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643078, &qword_1D1E71148);
      v27 = *(v62 + *(v26 + 48));
      v28 = v53;
      sub_1D1771B6C(v62, v53, type metadata accessor for Event.TimeEvent);
      MEMORY[0x1D3892850](1);
      Event.TimeEvent.hash(into:)(v64);
      MEMORY[0x1D3892850](v27);
      sub_1D1771C5C(v28, type metadata accessor for Event.TimeEvent);
LABEL_5:
      v13 = v60;
      goto LABEL_6;
    }

    sub_1D1771B6C(v62, v5, type metadata accessor for Event.CharacteristicEvent);
    MEMORY[0x1D3892850](2);
    sub_1D1E66A7C();
    sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    v33 = v55;
    v63 = v5[*(v55 + 20)];
    CharacteristicKind.rawValue.getter();
    sub_1D1E678EC();

    v34 = &v5[*(v33 + 24)];
    v35 = *v34;
    v36 = v34[16];
    v37 = v36 >> 6;
    v56 = v35;
    if (v36 >> 6)
    {
      v36 &= 0x3Fu;
      if (v37 == 1)
      {
        v38 = 1;
      }

      else
      {
        v38 = 2;
      }
    }

    else
    {
      v38 = 0;
    }

    MEMORY[0x1D3892850](v38);
    if (v36 > 5)
    {
      if (v36 <= 8)
      {
        if (v36 == 6)
        {
          MEMORY[0x1D3892850](7);
          sub_1D1E6924C();
        }

        else if (v36 == 7)
        {
          MEMORY[0x1D3892850](8);
          if ((v56 & 0x7FFFFFFFFFFFFFFFLL) != 0)
          {
            v48 = v56;
          }

          else
          {
            v48 = 0;
          }

          MEMORY[0x1D3892890](v48);
        }

        else
        {
          MEMORY[0x1D3892850](9);
          sub_1D1E678EC();
        }

        goto LABEL_66;
      }

      if (v36 == 9)
      {
        v49 = 10;
LABEL_60:
        MEMORY[0x1D3892850](v49);
        sub_1D1E668CC();
      }

      else
      {
        if (v36 == 10)
        {
          v49 = 11;
          goto LABEL_60;
        }

        MEMORY[0x1D3892850](0);
      }

LABEL_66:
      v13 = v60;
      goto LABEL_67;
    }

    if (v36 <= 2)
    {
      v13 = v60;
      if (v36)
      {
        if (v36 == 1)
        {
          MEMORY[0x1D3892850](2);
          sub_1D1E6922C();
        }

        else
        {
          MEMORY[0x1D3892850](3);
          sub_1D1E6923C();
        }
      }

      else
      {
        MEMORY[0x1D3892850](1);
        sub_1D1E6922C();
      }

      goto LABEL_67;
    }

    v13 = v60;
    if (v36 == 3)
    {
      v50 = 4;
LABEL_64:
      MEMORY[0x1D3892850](v50);
      sub_1D1E6924C();
      goto LABEL_67;
    }

    if (v36 != 4)
    {
      v50 = 6;
      goto LABEL_64;
    }

    MEMORY[0x1D3892850](5);
    MEMORY[0x1D3892890](v56);
LABEL_67:
    sub_1D1771C5C(v5, type metadata accessor for Event.CharacteristicEvent);
LABEL_6:
    v21 &= v21 - 1;
    v29 = sub_1D1E6926C();
    result = sub_1D1771C5C(v13, type metadata accessor for Event);
    v24 = v29 ^ v61;
  }

  while (1)
  {
    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v30 >= v22)
    {

      return MEMORY[0x1D3892850](v24);
    }

    v21 = *(v18 + 8 * v30);
    ++v25;
    if (v21)
    {
      v61 = v24;
      v25 = v30;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

void sub_1D176EF68(__int128 *a1, uint64_t a2)
{
  sub_1D1E6926C();
  if ((a2 & 0xC000000000000001) != 0)
  {

    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D1771944(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D1E681BC();
    a2 = v18;
    v3 = v19;
    v4 = v20;
    v5 = v21;
    v6 = v22;
  }

  else
  {
    v7 = -1 << *(a2 + 32);
    v3 = a2 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a2 + 56);

    v5 = 0;
  }

  v10 = 0;
  v11 = (v4 + 64) >> 6;
  while (a2 < 0)
  {
    if (!sub_1D1E6877C())
    {
LABEL_20:
      sub_1D1716918(a2);
      MEMORY[0x1D3892850](v10);
      return;
    }

    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    swift_dynamicCast();
    v14 = v17;
LABEL_10:
    v15 = sub_1D1E684EC();

    v10 ^= v15;
  }

  if (v6)
  {
    v12 = v5;
LABEL_9:
    v13 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v17 = *(*(a2 + 48) + ((v12 << 9) | (8 * v13)));
    v14 = v17;
    goto LABEL_10;
  }

  v16 = v5;
  while (1)
  {
    v12 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_20;
    }

    v6 = *(v3 + 8 * v12);
    ++v16;
    if (v6)
    {
      v5 = v12;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1D176F198(__int128 *a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for StaticZone(0);
  v44 = *(v45 - 8);
  v8 = MEMORY[0x1EEE9AC00](v45);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v42 = &v37 - v11;
  v12 = a1[3];
  v52 = a1[2];
  v53 = v12;
  v54 = *(a1 + 8);
  v14 = *a1;
  v13 = a1[1];
  v37 = a1;
  v50 = v14;
  v51 = v13;
  v41 = sub_1D1E6926C();
  v15 = a2 + 56;
  v16 = 1 << *(a2 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(a2 + 56);
  v19 = (v16 + 63) >> 6;
  v38 = v5;
  v20 = (v5 + 8);
  v46 = a2;

  v22 = v5 + 16;
  v23 = 0;
  v24 = 0;
  v40 = v15;
  v39 = v19;
  v43 = v10;
  while (v18)
  {
    v48 = v23;
    v27 = v22;
LABEL_11:
    v47 = v18;
    v29 = v42;
    sub_1D1771BF4(*(v46 + 48) + *(v44 + 72) * (__clz(__rbit64(v18)) | (v24 << 6)), v42, type metadata accessor for StaticZone);
    sub_1D1771B6C(v29, v10, type metadata accessor for StaticZone);
    sub_1D1E6920C();
    v49 = sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D1E676EC();
    v30 = v45;
    sub_1D1E678EC();
    v31 = *&v10[*(v30 + 24)];
    MEMORY[0x1D3892850](*(v31 + 16));
    v32 = *(v31 + 16);
    v33 = v27;
    if (v32)
    {
      v34 = v31 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
      v35 = *(v38 + 72);
      v36 = *(v38 + 16);
      do
      {
        v36(v7, v34, v4);
        sub_1D1E676EC();
        (*v20)(v7, v4);
        v34 += v35;
        --v32;
      }

      while (v32);
    }

    v25 = v47;
    v26 = sub_1D1E6926C();
    v10 = v43;
    result = sub_1D1771C5C(v43, type metadata accessor for StaticZone);
    v23 = v26 ^ v48;
    v15 = v40;
    v19 = v39;
    v22 = v33;
    v18 = (v25 - 1) & v25;
  }

  while (1)
  {
    v28 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v28 >= v19)
    {

      return MEMORY[0x1D3892850](v23);
    }

    v18 = *(v15 + 8 * v28);
    ++v24;
    if (v18)
    {
      v48 = v23;
      v27 = v22;
      v24 = v28;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D176F5DC(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ActionCommand(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v7);
  if (v7)
  {
    v13 = *(v3 + 20);
    v9 = &v6[*(v3 + 28)];
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1D1771BF4(v10, v6, type metadata accessor for ActionCommand);
      sub_1D1E66A7C();
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      MEMORY[0x1D3892890](*&v6[v13]);
      sub_1D1E6923C();
      __swift_project_boxed_opaque_existential_1(v9, *(v9 + 3));
      sub_1D1E676EC();
      result = sub_1D1771C5C(v6, type metadata accessor for ActionCommand);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1D176F7B0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 52);
    do
    {
      v6 = *(v5 - 8);
      v7 = *v5;
      sub_1D1E6924C();
      sub_1D1E6922C();
      if (v6 == 1)
      {
        sub_1D1E6922C();
        if (!v7)
        {
          goto LABEL_9;
        }
      }

      else
      {
        sub_1D1E6922C();
        sub_1D1E6924C();
        if (!v7)
        {
LABEL_9:
          sub_1D1E6922C();
          result = sub_1D1E6924C();
          goto LABEL_4;
        }
      }

      result = sub_1D1E6922C();
LABEL_4:
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D176F87C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      if (v6 == 0.0)
      {
        v7 = 0.0;
      }

      result = MEMORY[0x1D3892890](*&v7);
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D176F8E4(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StaticTimer(0);
  v4 = *(v3 - 1);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v7);
  if (v7)
  {
    v9 = v3[5];
    v19 = v3[6];
    v20 = v9;
    v10 = v3[8];
    v11 = v6 + v3[7];
    v12 = v3[10];
    v17[2] = v3[9];
    v18 = v10;
    v17[1] = v12;
    v13 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v14 = *(v4 + 72);
    do
    {
      sub_1D1771BF4(v13, v6, type metadata accessor for StaticTimer);
      v15 = *v6;
      if (*v6 == 0.0)
      {
        v15 = 0.0;
      }

      MEMORY[0x1D3892890](*&v15);
      sub_1D1E669FC();
      sub_1D1771994(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1D1E676EC();
      v16 = *(v6 + v19);
      if (v16 == 0.0)
      {
        v16 = 0.0;
      }

      MEMORY[0x1D3892890](*&v16);
      if (*(v11 + 1))
      {
        sub_1D1E6922C();
        sub_1D1E678EC();
      }

      else
      {
        sub_1D1E6922C();
      }

      MEMORY[0x1D3892850](*(v6 + v18));
      sub_1D1E6922C();
      sub_1D1E66A7C();
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      result = sub_1D1771C5C(v6, type metadata accessor for StaticTimer);
      v13 += v14;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1D176FB98(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for StaticAlarm(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v7);
  if (v7)
  {
    v9 = 0;
    v10 = *(v3 + 36);
    v17[0] = *(v3 + 40);
    v17[1] = v10;
    v11 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v12 = *(v4 + 72);
    do
    {
      sub_1D1771BF4(v11 + v12 * v9, v6, type metadata accessor for StaticAlarm);
      MEMORY[0x1D3892850](*v6);
      MEMORY[0x1D3892850](v6[1]);
      if (v6[3])
      {
        sub_1D1E6922C();
        sub_1D1E678EC();
      }

      else
      {
        sub_1D1E6922C();
      }

      v13 = v6[4];
      MEMORY[0x1D3892850](*(v13 + 16));
      v14 = *(v13 + 16);
      if (v14)
      {
        v15 = (v13 + 32);
        do
        {
          v16 = *v15++;
          MEMORY[0x1D3892850](v16);
          --v14;
        }

        while (v14);
      }

      sub_1D1E6924C();
      ++v9;
      sub_1D1E6922C();
      sub_1D1E66A7C();
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      result = sub_1D1771C5C(v6, type metadata accessor for StaticAlarm);
    }

    while (v9 != v7);
  }

  return result;
}

uint64_t sub_1D176FDE8(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v7);
  if (v7)
  {
    v9 = *(v3 + 24);
    v10 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);
    do
    {
      sub_1D1771BF4(v10, v6, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      sub_1D1E662EC();
      sub_1D1771994(&qword_1EC643040, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      MEMORY[0x1D3892850](*&v6[v9]);
      result = sub_1D1771C5C(v6, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      v10 += v11;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1D176FF94(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v7);
  if (v7)
  {
    v9 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v10 = *(v4 + 72);
    do
    {
      sub_1D1771BF4(v9, v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      sub_1D1E66A7C();
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      sub_1D1E678EC();
      sub_1D1E676EC();
      result = sub_1D1771C5C(v6, type metadata accessor for AutoClimateModel.Thermostat.AdaptiveTemperatureConfig.RoomConfig);
      v9 += v10;
      --v7;
    }

    while (v7);
  }

  return result;
}

uint64_t sub_1D1770174(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v5);
  if (v5)
  {
    v7 = a2 + 32;
    do
    {
      ++v7;
      a3(result);
      sub_1D1E678EC();

      --v5;
    }

    while (v5);
  }

  return result;
}

uint64_t sub_1D1770208(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = a2 + 49;
    do
    {
      v6 = *(v5 - 17);
      v7 = *(v5 - 9);
      v8 = *(v5 - 1);
      if (v7 >> 60 == 15)
      {
        sub_1D1E6922C();
        if (v8 != 9)
        {
          goto LABEL_8;
        }
      }

      else
      {
        sub_1D1E6922C();
        sub_1D1771B38(v6, v7);
        sub_1D1E668CC();
        if (v8 != 9)
        {
LABEL_8:
          sub_1D1E6922C();
        }
      }

      sub_1D1E6922C();
      sub_1D1E6922C();
      result = sub_1D1716AA4(v6, v7);
      v5 += 24;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D17702F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 48);
    do
    {
      v6 = *(v5 - 1);
      v7 = v5[1];
      v8 = v5[2];
      v9 = v5[5];
      MEMORY[0x1D3892890](*(v5 - 2));
      MEMORY[0x1D3892890](v6);
      sub_1D1E6922C();
      sub_1D1E6922C();
      sub_1D1771B38(v7, v8);

      if (v8 >> 60 != 15)
      {
        sub_1D1E668CC();
      }

      sub_1D1E6922C();
      sub_1D1E6922C();
      if (v9)
      {
        sub_1D1E678EC();
      }

      sub_1D1716AA4(v7, v8);

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D1770448(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = a2 + 48;
    do
    {
      v6 = *(v5 - 8);
      v5 += 24;
      sub_1D1E6922C();
      MEMORY[0x1D3892890](v6);
      result = sub_1D1E6922C();
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D17704D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 2);
      v7 = *v5;
      if (*(v5 - 6) == 1)
      {
        sub_1D1E6922C();
        if (v6)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1D1E6922C();
        sub_1D1E6923C();
        if (v6)
        {
LABEL_6:
          sub_1D1E6922C();
          if ((v7 & 1) == 0)
          {
            goto LABEL_10;
          }

          goto LABEL_3;
        }
      }

      sub_1D1E6922C();
      sub_1D1E6923C();
      if ((v7 & 1) == 0)
      {
LABEL_10:
        sub_1D1E6922C();
      }

LABEL_3:
      result = sub_1D1E6922C();
      v5 += 10;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D17705AC(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v4);
  if (v4)
  {
    v6 = (a2 + 56);
    do
    {
      v7 = *v6;
      MEMORY[0x1D3892850](*(v6 - 3));

      sub_1D1E678EC();
      sub_1D176D34C(a1, v7);

      v6 += 4;
      --v4;
    }

    while (v4);
  }

  return result;
}

uint64_t sub_1D1770648(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 40);
    do
    {
      v6 = *(v5 - 5);
      v7 = *v5;
      if (*(v5 - 6) == 1)
      {
        sub_1D1E6922C();
        if (v6 == 30)
        {
          goto LABEL_7;
        }
      }

      else
      {
        sub_1D1E6922C();
        sub_1D1E6923C();
        if (v6 == 30)
        {
LABEL_7:
          sub_1D1E6922C();
          if (!v7)
          {
            goto LABEL_11;
          }

          goto LABEL_3;
        }
      }

      sub_1D1E6922C();
      sub_1D1E6924C();
      if (!v7)
      {
LABEL_11:
        sub_1D1E6922C();
        result = sub_1D1E6924C();
        goto LABEL_4;
      }

LABEL_3:
      result = sub_1D1E6922C();
LABEL_4:
      v5 += 12;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D1770734(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for StaticUserActionPrediction(0);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v13);
  if (v13)
  {
    v15 = v9[5];
    v25 = v9[6];
    v26 = v15;
    v16 = v9[7];
    v17 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = v21;
    v19 = (v21 + 6);
    v23 = *(v10 + 72);
    v24 = v16;
    ++v21;
    v22 = (v18 + 4);
    do
    {
      sub_1D1771BF4(v17, v12, type metadata accessor for StaticUserActionPrediction);
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      v20 = *&v12[v26];
      if (v20 == 0.0)
      {
        v20 = 0.0;
      }

      MEMORY[0x1D3892890](*&v20);
      sub_1D1741C08(&v12[v25], v8, &qword_1EC642590, qword_1D1E71260);
      if ((*v19)(v8, 1, v3) == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        (*v22)(v5, v8, v3);
        sub_1D1E6922C();
        sub_1D1E676EC();
        (*v21)(v5, v3);
      }

      MEMORY[0x1D3892850](v12[v24]);
      result = sub_1D1771C5C(v12, type metadata accessor for StaticUserActionPrediction);
      v17 += v23;
      --v13;
    }

    while (v13);
  }

  return result;
}

void sub_1D1770A8C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = sub_1D1E6873C();
    MEMORY[0x1D3892850](v8);
    v3 = sub_1D1E6873C();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    MEMORY[0x1D3892850](*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      MEMORY[0x1D3891EF0](i, a2);
      sub_1D1E6850C();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      sub_1D1E6850C();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1D1770B7C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v3);
  if (v3)
  {
    v5 = (a2 + 72);
    do
    {
      v6 = *(v5 - 32);
      v7 = *(v5 - 2);
      v8 = *(v5 - 6);
      v9 = *(v5 - 4);
      v10 = *(v5 - 2);
      v11 = *v5;
      sub_1D1E6924C();
      if (v6 == 1)
      {
        sub_1D1E6922C();
        if (!v7)
        {
          goto LABEL_6;
        }
      }

      else
      {
        sub_1D1E6922C();
        sub_1D1E6924C();
        if (!v7)
        {
LABEL_6:
          sub_1D1E6922C();
          if (v8)
          {
            goto LABEL_11;
          }

          goto LABEL_7;
        }
      }

      sub_1D1E6922C();

      sub_1D1E678EC();
      if (v8)
      {
LABEL_11:
        sub_1D1E6922C();
        if (v9)
        {
          goto LABEL_12;
        }

LABEL_8:
        sub_1D1E6922C();
        goto LABEL_12;
      }

LABEL_7:
      sub_1D1E6922C();
      sub_1D1E6923C();
      if ((v9 & 1) == 0)
      {
        goto LABEL_8;
      }

LABEL_12:
      sub_1D1E6922C();
      if ((v10 & 1) == 0)
      {
        sub_1D1E6922C();
      }

      sub_1D1E6922C();
      if ((v11 & 1) == 0)
      {
        sub_1D1E6922C();
      }

      sub_1D1E6922C();

      v5 += 48;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1D1770D00(uint64_t a1, uint64_t a2)
{
  v3 = sub_1D1E6680C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642EA8, &qword_1D1E73C60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SignificantEvent(0);
  v10 = *(v9 - 1);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v13);
  if (v13)
  {
    v15 = v9[5];
    v30 = v9[6];
    v31 = v15;
    v16 = v9[7];
    v28 = v9[8];
    v29 = v16;
    v17 = v9[9];
    v26 = &v12[v9[10]];
    v27 = v17;
    v18 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = (v4 + 48);
    v22 = (v4 + 8);
    v23 = (v4 + 32);
    v25 = *(v10 + 72);
    do
    {
      sub_1D1771BF4(v18, v12, type metadata accessor for SignificantEvent);
      sub_1D1E66A7C();
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      sub_1D1E676EC();
      MEMORY[0x1D3892850](v12[v30]);
      sub_1D1E669FC();
      sub_1D1771994(&qword_1EC642A50, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
      sub_1D1E676EC();
      v20 = v12[v28];
      sub_1D1E6922C();
      if (v20 != 4)
      {
        MEMORY[0x1D3892850](v20);
      }

      sub_1D1741C08(&v12[v27], v8, &qword_1EC642EA8, &qword_1D1E73C60);
      if ((*v19)(v8, 1, v3) == 1)
      {
        sub_1D1E6922C();
      }

      else
      {
        v21 = v24;
        (*v23)(v24, v8, v3);
        sub_1D1E6922C();
        sub_1D1771994(&qword_1EC643068, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
        sub_1D1E676EC();
        (*v22)(v21, v3);
      }

      if (*(v26 + 1) >> 60 == 15)
      {
        sub_1D1E6922C();
      }

      else
      {
        sub_1D1E6922C();
        sub_1D1E668CC();
      }

      result = sub_1D1771C5C(v12, type metadata accessor for SignificantEvent);
      v18 += v25;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t sub_1D1771168(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ColorPickerFavorite(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  result = MEMORY[0x1D3892850](v8);
  if (v8)
  {
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    do
    {
      sub_1D1771BF4(v10, v7, type metadata accessor for ColorPickerFavorite);
      v12 = *(v7 + 2);
      v13 = v7[24];
      v15 = *v7;
      v16 = v12;
      v17 = v13;
      LightbulbColor.hash(into:)(a1);
      v14 = *(v7 + 4);
      if (v14 == 0.0)
      {
        v14 = 0.0;
      }

      MEMORY[0x1D3892890](*&v14);
      sub_1D1E66A7C();
      sub_1D1771994(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      result = sub_1D1771C5C(v7, type metadata accessor for ColorPickerFavorite);
      v10 += v11;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t _s13HomeDataModel6ActionO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Action.NaturalLightAction(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v46 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Action.CharacteristicAction(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Action(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v45 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v45 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643088, &qword_1D1E71158);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v45 - v22;
  v24 = &v45 + *(v21 + 56) - v22;
  sub_1D1771BF4(a1, &v45 - v22, type metadata accessor for Action);
  sub_1D1771BF4(a2, v24, type metadata accessor for Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_1D1771BF4(v23, v14, type metadata accessor for Action);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_1D1771C5C(v14, type metadata accessor for Action.NaturalLightAction);
        goto LABEL_16;
      }

      v26 = v24;
      v27 = v46;
      sub_1D1771B6C(v26, v46, type metadata accessor for Action.NaturalLightAction);
      v28 = static Action.NaturalLightAction.== infix(_:_:)(v14, v27);
      v29 = type metadata accessor for Action.NaturalLightAction;
      sub_1D1771C5C(v27, type metadata accessor for Action.NaturalLightAction);
      v30 = v14;
      goto LABEL_19;
    }

    sub_1D1771BF4(v23, v11, type metadata accessor for Action);
    v40 = *(v11 + 1);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      if (*v11 == *v24)
      {
        v44 = sub_1D17792F4(v40, *(v24 + 1));

        if (v44)
        {
          sub_1D1771C5C(v23, type metadata accessor for Action);
          v28 = 1;
          return v28 & 1;
        }
      }

      else
      {
      }

      sub_1D1771C5C(v23, type metadata accessor for Action);
      goto LABEL_17;
    }

LABEL_15:

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload)
  {
    sub_1D1771BF4(v23, v17, type metadata accessor for Action);
    v31 = *v17;
    v32 = *(v17 + 4);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v17[24];
      v34 = *(v17 + 2);
      v35 = v17[8];
      v36 = *v24;
      v37 = v24[8];
      v38 = *(v24 + 2);
      v39 = v24[24];
      v51 = *(v24 + 4);
      v52 = v31;
      v53 = v35;
      v54 = v34;
      v55 = v33;
      v56 = v32;
      v47 = v36;
      v48 = v37;
      v49 = v38;
      v50 = v39;
      v28 = static Action.MediaPlaybackAction.== infix(_:_:)(&v52, &v47);

LABEL_20:
      sub_1D1771C5C(v23, type metadata accessor for Action);
      return v28 & 1;
    }

    goto LABEL_15;
  }

  sub_1D1771BF4(v23, v19, type metadata accessor for Action);
  if (!swift_getEnumCaseMultiPayload())
  {
    v41 = v24;
    v42 = v45;
    sub_1D1771B6C(v41, v45, type metadata accessor for Action.CharacteristicAction);
    v28 = static Action.CharacteristicAction.== infix(_:_:)(v19, v42);
    v29 = type metadata accessor for Action.CharacteristicAction;
    sub_1D1771C5C(v42, type metadata accessor for Action.CharacteristicAction);
    v30 = v19;
LABEL_19:
    sub_1D1771C5C(v30, v29);
    goto LABEL_20;
  }

  sub_1D1771C5C(v19, type metadata accessor for Action.CharacteristicAction);
LABEL_16:
  sub_1D1741A30(v23, &qword_1EC643088, &qword_1D1E71158);
LABEL_17:
  v28 = 0;
  return v28 & 1;
}

uint64_t type metadata accessor for Action(uint64_t a1)
{
  result = qword_1EC642FD8;
  if (!qword_1EC642FD8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D17718F0()
{
  result = qword_1EC642FB0;
  if (!qword_1EC642FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642FB0);
  }

  return result;
}

uint64_t sub_1D1771944(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D1741B10(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1771994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1771A28()
{
  result = qword_1EC642FD0;
  if (!qword_1EC642FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC642FD0);
  }

  return result;
}

uint64_t sub_1D1771A7C(uint64_t a1)
{
  result = type metadata accessor for Action.CharacteristicAction(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Action.NaturalLightAction(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1771B10(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1D1771B24(uint64_t result)
{
  if ((result - 1) >= 2)
  {
  }

  return result;
}

uint64_t sub_1D1771B38(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1D1741854(result, a2);
  }

  return result;
}

uint64_t sub_1D1771B4C(uint64_t result, char a2)
{
  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_1D1771B5C(uint64_t result, char a2)
{
  if (!a2)
  {
  }

  return v2;
}

uint64_t sub_1D1771B6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D1771BD4(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    sub_1D1771BE4(a2);
  }
}

unint64_t sub_1D1771BE4(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

uint64_t sub_1D1771BF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1771C5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_1D1771CC0@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_1D1E6869C();
  if (result == (1 << *(a1 + 32)))
  {
    v5 = 28;
  }

  else
  {
    result = sub_1D179084C(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1D1771DBC@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1D1E6869C();
  v11 = 1;
  if (v10 != 1 << *(a1 + 32))
  {
    sub_1D1777624(v10, *(a1 + 36), a1, a2, a3, a5);
    v11 = 0;
  }

  v12 = a4(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a5, v11, 1, v12);
}

unint64_t sub_1D1771ED8()
{
  v1 = v0[1];
  v11 = *v0;
  v12 = v1;
  v13 = *(v0 + 4);
  result = sub_1D1777C94();
  if (v11 >> 62)
  {
    v3 = result;
    v4 = sub_1D1E6873C();
    result = v3;
    if (v3 == v4)
    {
      return 0;
    }
  }

  else if (result == *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return 0;
  }

  if ((v11 & 0xC000000000000001) != 0)
  {
    v5 = MEMORY[0x1D3891EF0]();
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (result >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v5 = *(v11 + 8 * result + 32);
LABEL_9:
  v6 = v5;
  v7 = *(v0 + 5);
  v9 = v5;
  (*(&v11 + 1))(&v10, &v9);

  v8 = v10;
  v9 = v10;
  v7(&v10, &v9);

  return v10;
}

uint64_t sub_1D1771FF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = sub_1D1E6869C();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v13 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = sub_1D18D3B20(v6, v7, *(a1 + 36), 0, a1);
    v11 = sub_1D1E66A7C();
    (*(*(v11 - 8) + 32))(a2, v6, v11);
    *(a2 + *(v4 + 48)) = v10;
    return (*(v13 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_1D1772210@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t, void, void, uint64_t)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1D1E6869C();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    a2(v8, *(a1 + 36), 0, a1);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

void *sub_1D17722E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  result = sub_1D1E6869C();
  if (result == (1 << *(a1 + 32)))
  {
    v5 = -16;
  }

  else
  {
    result = sub_1D179084C(result, *(a1 + 36), a1, &v6);
    v5 = v6;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_1D1772378@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D1E6869C();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v9 = 0;
  }

  else
  {
    v10 = sub_1D18D3E20(v12, result, *(a1 + 36), 0, a1);
    v6 = v12[0];
    v7 = v12[1];
    v8 = v12[2];
    v9 = v13;
    v11 = v10;
    sub_1D17418FC(v6, v7, v8, v9);
    v5 = v11;
    sub_1D17418FC(v6, v7, v8, v9);

    sub_1D1757A60(v6, v7, v8, v9);
    result = sub_1D1757A60(v6, v7, v8, v9);
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  return result;
}

uint64_t sub_1D1772494@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D1E6869C();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
  }

  else
  {
    v9 = sub_1D18D3D7C(v11, result, *(a1 + 36), 0, a1);
    v6 = v11[0];
    v7 = v11[1];
    v8 = v12;
    v10 = v9;
    sub_1D1741830(v6, v7, v8);
    v5 = v10;
    sub_1D1741830(v6, v7, v8);

    sub_1D1778940(v6, v7, v8);
    result = sub_1D1778940(v6, v7, v8);
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

void *sub_1D1772598(uint64_t a1)
{
  v2 = sub_1D1E6869C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1D17784B8(v2, *(a1 + 36), 0, a1);
  v5 = v4;
  return v4;
}

uint64_t sub_1D1772608(uint64_t a1)
{
  v2 = sub_1D1E6869C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1D1790F38(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_1D177269C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, BOOL, uint64_t))
{
  v4 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_1D1E686DC();
    v7 = v6;
    v8 = sub_1D1E6879C();
    v10 = v9;
    v11 = MEMORY[0x1D3891D40](v5, v7, v8, v9);
    sub_1D1716920(v8, v10, 1);
    if (v11)
    {
LABEL_3:
      sub_1D1716920(v5, v7, v4 != 0);
      return 0;
    }
  }

  else
  {
    v5 = sub_1D1E6869C();
    v7 = *(a1 + 36);
    if (v5 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v13 = a2(v5, v7, v4 != 0, a1);
  sub_1D1716920(v5, v7, v4 != 0);
  return v13;
}

uint64_t sub_1D17727C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v13 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  v7 = sub_1D1E6869C();
  if (v7 == 1 << *(a1 + 32))
  {
    v8 = *(v13 + 56);

    return v8(a2, 1, 1, v4);
  }

  else
  {
    v10 = *(v4 + 48);
    sub_1D18D3C80(v6, &v6[v10], v7, *(a1 + 36), 0, a1);
    v11 = sub_1D1E66A7C();
    (*(*(v11 - 8) + 32))(a2, v6, v11);
    sub_1D17788D8(&v6[v10], a2 + *(v4 + 48), type metadata accessor for StaticService);
    return (*(v13 + 56))(a2, 0, 1, v4);
  }
}

void Action.CharacteristicAction.init(action:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v40 - v6;
  v7 = sub_1D1E66A7C();
  v48 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 characteristic];
  v11 = [a1 targetValue];
  v49[3] = swift_getObjectType();
  v49[0] = v11;
  static CharacteristicKind.Value.typedValue(for:value:)(v10, v49, &v50);
  sub_1D1741A30(v49, &qword_1EC649700, &qword_1D1E6E910);
  v12 = v52;
  if (v52 == 255)
  {
    type metadata accessor for Action.CharacteristicAction.Error(0);
    sub_1D1778398(&qword_1EC643090, type metadata accessor for Action.CharacteristicAction.Error, &protocol conformance descriptor for Action.CharacteristicAction.Error);
    swift_allocError();
    v20 = v19;
    *v19 = [a1 targetValue];
    v20[1] = a1;
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
  }

  else
  {
    v47 = a2;
    v14 = v50;
    v13 = v51;
    sub_1D1778244(v50, v51, v52);
    v15 = [v10 service];
    if (v15)
    {
      v16 = v15;
      sub_1D1778270(v14, v13, v12);
      if (qword_1EE07B280 != -1)
      {
        swift_once();
      }

      v45 = v13;
      v46 = v2;
      v43 = byte_1EE07B288;
      v44 = v14;
      if (byte_1EE07B288 == 1)
      {
        v17 = [v16 name];
        v41 = sub_1D1E6781C();
        v42 = v18;
      }

      else
      {
        v41 = 0;
        v42 = 0;
      }

      v23 = [v16 uniqueIdentifier];
      sub_1D1E66A5C();

      v24 = [v10 characteristicType];
      v25 = sub_1D1E6781C();
      v27 = v26;

      v28._countAndFlagsBits = v25;
      v28._object = v27;
      CharacteristicKind.init(rawValue:)(v28);
      if (LOBYTE(v49[0]) == 174)
      {
        v29 = 0;
      }

      else
      {
        v29 = v49[0];
      }

      v30 = [a1 uniqueIdentifier];
      v31 = v53;
      sub_1D1E66A5C();

      v32 = v48;
      (*(v48 + 56))(v31, 0, 1, v7);
      v33 = v47;
      (*(v32 + 16))(v47, v9, v7);
      v34 = type metadata accessor for Action.CharacteristicAction(0);
      *(v33 + v34[5]) = v29;
      v35 = v33 + v34[6];
      v36 = v45;
      *v35 = v44;
      *(v35 + 8) = v36;
      *(v35 + 16) = v12;
      sub_1D1778308(v31, v33 + v34[7]);
      (*(v32 + 8))(v9, v7);
      if (v43)
      {
        v38 = v41;
        v37 = v42;
      }

      else
      {

        v38 = 0;
        v37 = 0;
      }

      v39 = (v33 + v34[8]);
      *v39 = v38;
      v39[1] = v37;
    }

    else
    {
      type metadata accessor for Action.CharacteristicAction.Error(0);
      sub_1D1778398(&qword_1EC643090, type metadata accessor for Action.CharacteristicAction.Error, &protocol conformance descriptor for Action.CharacteristicAction.Error);
      swift_allocError();
      *v21 = v10;
      v21[1] = a1;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      v22 = v10;
      sub_1D1778270(v14, v13, v12);
      sub_1D1778270(v14, v13, v12);
    }
  }
}

uint64_t Action.CharacteristicAction.createAction(in:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v40 - v9;
  v11 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v12 = sub_1D1E67C1C();

  v41 = v10;
  v42 = v5;
  v13 = *(v5 + 16);
  v13(v10, v2, v4);
  v46 = v8;
  v43 = v4;
  v44 = v2;
  v14 = v4;
  v15 = v12;
  v13(v8, v2, v14);
  v45 = v12 >> 62;
  if (v12 >> 62)
  {
LABEL_29:
    v47 = v15 & 0xFFFFFFFFFFFFFF8;
    v16 = sub_1D1E6873C();
  }

  else
  {
    v47 = v12 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = 0;
  v18 = v15 & 0xC000000000000001;
  v40 = v15 + 32;
  while (v16 != v17)
  {
    if (v18)
    {
      v19 = v15;
      v20 = MEMORY[0x1D3891EF0](v17, v15);
    }

    else
    {
      if (v17 >= *(v47 + 16))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      v19 = v15;
      v20 = *(v15 + 8 * v17 + 32);
    }

    v21 = v20;
    v22 = [v20 services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v2 = sub_1D1E67C1C();

    MEMORY[0x1EEE9AC00](v23);
    *(&v40 - 2) = v46;
    v13 = sub_1D174A6C4(sub_1D1778378, (&v40 - 4), v2);

    if (v13)
    {
      v16 = v17;
      v15 = v19;
      break;
    }

    v24 = __OFADD__(v17++, 1);
    v15 = v19;
    if (v24)
    {
      goto LABEL_28;
    }
  }

  if (!v45)
  {
    if (v16 != *(v47 + 16))
    {
      goto LABEL_16;
    }

LABEL_23:
    v36 = *(v42 + 8);
    v37 = v43;
    v36(v41, v43);

    v36(v46, v37);
    v32 = v44;
    goto LABEL_25;
  }

  if (v16 == sub_1D1E6873C())
  {
    goto LABEL_23;
  }

LABEL_16:
  if (v18)
  {
    v25 = MEMORY[0x1D3891EF0](v16, v15);
  }

  else
  {
    if (v16 >= *(v47 + 16))
    {
      __break(1u);
      goto LABEL_32;
    }

    v25 = *(v40 + 8 * v16);
  }

  v26 = v25;
  v27 = [v25 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v28 = sub_1D1E67C1C();

  MEMORY[0x1EEE9AC00](v29);
  v30 = v41;
  *(&v40 - 2) = v41;
  v31 = sub_1D174A6C4(sub_1D177896C, (&v40 - 4), v28);

  v2 = v43;
  v13 = *(v42 + 8);
  (v13)(v30, v43);

  v32 = v44;
  if (v31)
  {

    (v13)(v46, v2);
    v48 = *(v32 + *(type metadata accessor for Action.CharacteristicAction(0) + 20));
    v33 = HMService.subscript.getter();
    if (v33)
    {
      v34 = v33;
      v35 = Action.CharacteristicAction.createAction(characteristic:)(v33);

      return v35;
    }

LABEL_25:
    v35 = type metadata accessor for Action.CharacteristicAction.Error(0);
    sub_1D1778398(&qword_1EC643090, type metadata accessor for Action.CharacteristicAction.Error, &protocol conformance descriptor for Action.CharacteristicAction.Error);
    swift_allocError();
    sub_1D1778450(v32, v38, type metadata accessor for Action.CharacteristicAction);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return v35;
  }

LABEL_32:
  result = (v13)(v46, v2);
  __break(1u);
  return result;
}

uint64_t Action.CharacteristicAction.debugDescription.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EB89D0);
  v1 = type metadata accessor for Action.CharacteristicAction(0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](544108320, 0xE400000000000000);
  v2 = (v0 + *(v1 + 32));
  if (*(v2 + 1))
  {
    v9 = *v2;

    MEMORY[0x1D3890F70](10272, 0xE200000000000000);
    sub_1D1E66A7C();
    sub_1D1778398(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v3 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v3);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    v5 = *(&v9 + 1);
    v4 = v9;
  }

  else
  {
    sub_1D1E66A7C();
    sub_1D1778398(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v4 = sub_1D1E68FAC();
    v5 = v6;
  }

  MEMORY[0x1D3890F70](v4, v5);

  MEMORY[0x1D3890F70](544175136, 0xE400000000000000);
  v7 = CharacteristicKind.Value.description.getter();
  MEMORY[0x1D3890F70](v7);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return 0;
}

uint64_t Action.CharacteristicAction.serviceID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Action.CharacteristicAction.characteristicKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for Action.CharacteristicAction(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t Action.CharacteristicAction.targetValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Action.CharacteristicAction(0) + 24);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1D1778244(v4, v5, v6);
}

uint64_t Action.CharacteristicAction.targetValue.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = v1 + *(type metadata accessor for Action.CharacteristicAction(0) + 24);
  result = sub_1D1778284(*v5, *(v5 + 8), *(v5 + 16));
  *v5 = v2;
  *(v5 + 8) = v3;
  *(v5 + 16) = v4;
  return result;
}

uint64_t Action.CharacteristicAction.originalActionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Action.CharacteristicAction(0) + 28);

  return sub_1D17783E0(v3, a1);
}

uint64_t Action.CharacteristicAction.init(serviceID:characteristicKind:targetValue:originalActionID:serviceName:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v12 = *a3;
  v11 = a3[1];
  v13 = *(a3 + 16);
  v14 = sub_1D1E66A7C();
  v15 = *(v14 - 8);
  (*(v15 + 16))(a7, a1, v14);
  v16 = type metadata accessor for Action.CharacteristicAction(0);
  *(a7 + v16[5]) = v10;
  v17 = a7 + v16[6];
  *v17 = v12;
  *(v17 + 8) = v11;
  *(v17 + 16) = v13;
  sub_1D17783E0(a4, a7 + v16[7]);
  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  v18 = byte_1EE07B288;
  sub_1D1741A30(a4, &qword_1EC642590, qword_1D1E71260);
  result = (*(v15 + 8))(a1, v14);
  if (v18)
  {
    v21 = a5;
    v20 = a6;
  }

  else
  {

    v21 = 0;
    v20 = 0;
  }

  v22 = (a7 + v16[8]);
  *v22 = v21;
  v22[1] = v20;
  return result;
}

uint64_t Action.CharacteristicAction.Error.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Action.CharacteristicAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Action.CharacteristicAction.Error(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1778450(v1, v7, type metadata accessor for Action.CharacteristicAction.Error);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v15 = *v7;
    v14 = *(v7 + 1);
    v31 = 0;
    v32 = 0xE000000000000000;
    if (EnumCaseMultiPayload)
    {
      sub_1D1E6884C();
      MEMORY[0x1D3890F70](0xD000000000000033, 0x80000001D1EB8AE0);
      v22 = [v15 description];
      v23 = sub_1D1E6781C();
      v25 = v24;

      MEMORY[0x1D3890F70](v23, v25);

      MEMORY[0x1D3890F70](544106784, 0xE400000000000000);
      v26 = [v14 description];
      v27 = sub_1D1E6781C();
      v29 = v28;

      MEMORY[0x1D3890F70](v27, v29);
    }

    else
    {
      sub_1D1E6884C();
      MEMORY[0x1D3890F70](0xD00000000000004ALL, 0x80000001D1EB8B20);
      v34 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643098, &qword_1D1E71278);
      sub_1D1E68ABC();
      MEMORY[0x1D3890F70](544106784, 0xE400000000000000);
      v16 = [v14 description];
      v17 = sub_1D1E6781C();
      v19 = v18;

      MEMORY[0x1D3890F70](v17, v19);
      swift_unknownObjectRelease();
    }

    return v31;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1D17788D8(v7, v4, type metadata accessor for Action.CharacteristicAction);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1D1E6884C();
    MEMORY[0x1D3890F70](0xD000000000000021, 0x80000001D1EB8AB0);
    sub_1D1E66A7C();
    sub_1D1778398(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v20);

    MEMORY[0x1D3890F70](0x646E696B20666F20, 0xE900000000000020);
    LOBYTE(v34) = v4[*(v2 + 20)];
    sub_1D1E68ABC();
    v21 = v31;
    sub_1D1778508(v4, type metadata accessor for Action.CharacteristicAction);
    return v21;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v9 = *v7;
    v10 = *(v7 + 1);
    v11 = v7[16];
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1D1E6884C();
    v34 = v31;
    v35 = v32;
    MEMORY[0x1D3890F70](0xD00000000000002ELL, 0x80000001D1EB8A40);
    v31 = v9;
    v32 = v10;
    v33 = v11;
    v12 = CharacteristicKind.Value.description.getter();
    MEMORY[0x1D3890F70](v12);

    MEMORY[0x1D3890F70](0xD000000000000031, 0x80000001D1EB8A70);
    sub_1D1778284(v9, v10, v11);
    return v34;
  }

  else
  {
    return 0xD000000000000046;
  }
}

uint64_t Action.CharacteristicAction.hash(into:)(uint64_t a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  sub_1D1778398(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v10 = type metadata accessor for Action.CharacteristicAction(0);
  LOBYTE(v14) = *(v1 + v10[5]);
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v11 = (v1 + v10[6]);
  v12 = *(v11 + 16);
  v14 = *v11;
  v15 = v12;
  CharacteristicKind.Value.hash(into:)(a1);
  sub_1D17783E0(v1 + v10[7], v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1D1E6922C();
    sub_1D1E676EC();
    (*(v4 + 8))(v6, v3);
  }

  if (!*(v1 + v10[8] + 8))
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  return sub_1D1E678EC();
}

uint64_t Action.CharacteristicAction.hashValue.getter()
{
  v1 = sub_1D1E66A7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1D1E6920C();
  sub_1D1778398(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v8 = type metadata accessor for Action.CharacteristicAction(0);
  LOBYTE(v12) = *(v0 + v8[5]);
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v9 = (v0 + v8[6]);
  v10 = *(v9 + 16);
  v12 = *v9;
  v13 = v10;
  CharacteristicKind.Value.hash(into:)(v14);
  sub_1D17783E0(v0 + v8[7], v7);
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

  if (*(v0 + v8[8] + 8))
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

uint64_t sub_1D177436C(uint64_t a1, int *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v14 - v9;
  sub_1D1E6920C();
  sub_1D1778398(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  LOBYTE(v14) = *(v2 + a2[5]);
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  v11 = (v2 + a2[6]);
  v12 = *(v11 + 16);
  v14 = *v11;
  v15 = v12;
  CharacteristicKind.Value.hash(into:)(v16);
  sub_1D17783E0(v2 + a2[7], v10);
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

uint64_t Action.CharacteristicAction.staticCharacteristic.getter(uint64_t a1)
{
  v2[6] = a1;
  v2[7] = v1;
  v3 = type metadata accessor for StateSnapshot(0);
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v2[11] = swift_task_alloc();
  v4 = type metadata accessor for StaticService(0);
  v2[12] = v4;
  v2[13] = *(v4 - 8);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1774770, 0, 0);
}

uint64_t sub_1D1774770()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[16] = v1;
  if (v1)
  {
    v0[17] = v1[3];
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D1774868;
    v4 = 0;
  }

  else
  {
    v0[18] = sub_1D1E67E1C();
    v0[19] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1774C24;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D1774868()
{
  HomeState.AllHomesModel.currentStateSnapshot.getter(*(v0 + 88));

  return MEMORY[0x1EEE6DFA0](sub_1D17748D4, 0, 0);
}

uint64_t sub_1D17748D4()
{
  v1 = v0[11];
  v2 = v0[8];
  if ((*(v0[9] + 48))(v1, 1, v2) == 1)
  {

    sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);
LABEL_9:
    v18 = v0[6];
    v19 = type metadata accessor for StaticCharacteristic(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
    goto LABEL_10;
  }

  v3 = *(v1 + *(v2 + 60));

  sub_1D1778508(v1, type metadata accessor for StateSnapshot);
  if (!*(v3 + 16) || (v4 = sub_1D1742188(), (v5 & 1) == 0))
  {

    goto LABEL_9;
  }

  v6 = v0[15];
  v7 = v0[12];
  sub_1D1778450(*(v3 + 56) + *(v0[13] + 72) * v4, v6, type metadata accessor for StaticService);

  v8 = type metadata accessor for Action.CharacteristicAction(0);
  v9 = *(v6 + *(v7 + 128));
  if (*(v9 + 16))
  {
    v10 = *(v0[7] + *(v8 + 20));

    v11 = sub_1D171D140(v10);
    v12 = v0[6];
    if (v13)
    {
      v14 = v11;
      v15 = *(v9 + 56);
      v16 = type metadata accessor for StaticCharacteristic(0);
      v17 = *(v16 - 8);
      sub_1D1778450(v15 + *(v17 + 72) * v14, v12, type metadata accessor for StaticCharacteristic);
      (*(v17 + 56))(v12, 0, 1, v16);
    }

    else
    {
      v24 = type metadata accessor for StaticCharacteristic(0);
      (*(*(v24 - 8) + 56))(v12, 1, 1, v24);
    }
  }

  else
  {
    v22 = v0[6];
    v23 = type metadata accessor for StaticCharacteristic(0);
    (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  }

  sub_1D1778508(v0[15], type metadata accessor for StaticService);
LABEL_10:

  v20 = v0[1];

  return v20();
}

uint64_t sub_1D1774C24()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1774CBC, 0, 0);
}

uint64_t sub_1D1774CBC()
{
  *(v0 + 160) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1774D48, v2, v1);
}

uint64_t sub_1D1774D48()
{

  *(v0 + 168) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1774DBC, 0, 0);
}

uint64_t sub_1D1774DBC()
{
  *(v0 + 176) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1774E48, v2, v1);
}

uint64_t sub_1D1774E48()
{
  v1 = v0[21];
  v2 = v0[10];

  swift_getKeyPath();
  v0[5] = v1;
  sub_1D1778398(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D1778450(v1 + v3, v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1774F70, 0, 0);
}

uint64_t sub_1D1774F70()
{
  v1 = v0[10];
  v2 = *(v1 + *(v0[8] + 60));

  sub_1D1778508(v1, type metadata accessor for StateSnapshot);
  if (*(v2 + 16) && (v3 = sub_1D1742188(), (v4 & 1) != 0))
  {
    v5 = v0[14];
    v6 = v0[12];
    sub_1D1778450(*(v2 + 56) + *(v0[13] + 72) * v3, v5, type metadata accessor for StaticService);

    v7 = type metadata accessor for Action.CharacteristicAction(0);
    v8 = *(v5 + *(v6 + 128));
    if (*(v8 + 16))
    {
      v9 = *(v0[7] + *(v7 + 20));

      v10 = sub_1D171D140(v9);
      v11 = v0[6];
      if (v12)
      {
        v13 = v10;
        v14 = *(v8 + 56);
        v15 = type metadata accessor for StaticCharacteristic(0);
        v16 = *(v15 - 8);
        sub_1D1778450(v14 + *(v16 + 72) * v13, v11, type metadata accessor for StaticCharacteristic);
        (*(v16 + 56))(v11, 0, 1, v15);
      }

      else
      {
        v21 = type metadata accessor for StaticCharacteristic(0);
        (*(*(v21 - 8) + 56))(v11, 1, 1, v21);
      }
    }

    else
    {
      v19 = v0[6];
      v20 = type metadata accessor for StaticCharacteristic(0);
      (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
    }

    sub_1D1778508(v0[14], type metadata accessor for StaticService);
  }

  else
  {
    v17 = v0[6];

    v18 = type metadata accessor for StaticCharacteristic(0);
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  }

  v22 = v0[1];

  return v22();
}

uint64_t Action.CharacteristicAction.characteristic.getter()
{
  v1[5] = v0;
  v2 = sub_1D1E66A7C();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D177534C, 0, 0);
}

uint64_t sub_1D177534C()
{
  v1 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  v0[14] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v3 = sub_1D177543C;
    v4 = 0;
  }

  else
  {
    v0[16] = sub_1D1E67E1C();
    v0[17] = sub_1D1E67E0C();
    v5 = sub_1D1E67D4C();
    v7 = v6;
    v3 = sub_1D1776070;
    v2 = v5;
    v4 = v7;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, v4);
}

uint64_t sub_1D177543C()
{
  v98 = v1;
  v3 = v1[14];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v97 = sub_1D1749970(v6);
    v0 = 0;
    sub_1D1747DDC(&v97);

    v7 = v97;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v1[12];
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[5];
  v12 = *(v10 + 16);
  (v12)(v1[13], v11, v9);
  v86 = v12;
  v87 = (v10 + 16);
  (v12)(v8, v11, v9);
  v81 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_76:
    v90 = v7 & 0xFFFFFFFFFFFFFF8;
    v89 = sub_1D1E6873C();
  }

  else
  {
    v90 = v7 & 0xFFFFFFFFFFFFFF8;
    v89 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v88 = v7 & 0xC000000000000001;
  v82 = v7;
  v14 = (v1[7] + 8);
  v94 = v1;
  v84 = v14;
  v85 = v7 + 32;
  while (1)
  {
    if (v13 == v89)
    {
      v35 = v89;
      if (v81)
      {
        goto LABEL_55;
      }

      goto LABEL_34;
    }

    v93 = v13;
    if (v88)
    {
      v15 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v13 >= *(v90 + 16))
      {
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

      v15 = *(v85 + 8 * v13);
    }

    v17 = v1[11];
    v16 = v1[12];
    v18 = v1[10];
    v19 = v1[6];
    v91 = v15;
    v20 = [v15 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v21 = sub_1D1E67C1C();

    v2 = v21;
    v1 = v86;
    (v86)(v17, v16, v19);
    (v86)(v18, v16, v19);
    v92 = (v21 >> 62);
    v95 = v21 & 0xFFFFFFFFFFFFFF8;
    v7 = v21 >> 62 ? sub_1D1E6873C() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = 0;
    v23 = v21 & 0xC000000000000001;
    v83 = v21 + 32;
    while (v7 != v22)
    {
      if (v23)
      {
        v24 = v2;
        v25 = MEMORY[0x1D3891EF0](v22, v2);
      }

      else
      {
        if (v22 >= *(v95 + 16))
        {
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v24 = v2;
        v25 = *(v2 + 8 * v22 + 32);
      }

      v26 = v25;
      v27 = v94[10];
      v28 = [v25 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v29 = sub_1D1E67C1C();

      v30 = swift_task_alloc();
      *(v30 + 16) = v27;
      v0 = 0;
      v1 = sub_1D174A6C4(sub_1D1749C64, v30, v29);

      if (v1)
      {
        v7 = v22;
        v2 = v24;
        break;
      }

      v31 = __OFADD__(v22++, 1);
      v2 = v24;
      if (v31)
      {
        goto LABEL_71;
      }
    }

    if (!v92)
    {
      break;
    }

    if (v7 != sub_1D1E6873C())
    {
      goto LABEL_50;
    }

LABEL_28:
    v1 = v94;
    v32 = v94[10];
    v33 = v94[6];
    v14 = v84;
    v34 = *v84;
    (*v84)(v94[11], v33);

    v34(v32, v33);

    v13 = v93 + 1;
    if (__OFADD__(v93, 1))
    {
      goto LABEL_73;
    }
  }

  if (v7 == *(v95 + 16))
  {
    goto LABEL_28;
  }

LABEL_50:
  if (v23)
  {
    goto LABEL_82;
  }

  if (v7 < *(v95 + 16))
  {
    for (i = *(v83 + 8 * v7); ; i = MEMORY[0x1D3891EF0](v7, v2))
    {
      v51 = i;
      v1 = v94;
      v52 = v94[11];
      v53 = v94[6];
      v54 = [i services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v55 = sub_1D1E67C1C();

      v56 = swift_task_alloc();
      *(v56 + 16) = v52;
      v57 = sub_1D174A6C4(sub_1D1778988, v56, v55);

      v14 = v84;
      v58 = *v84;
      (*v84)(v52, v53);

      v59 = v94[10];
      v0 = v94[6];
      if (!v57)
      {
        goto LABEL_86;
      }

      v58(v59, v0);

      v35 = v93;
      if (v81)
      {
LABEL_55:
        if (v35 == sub_1D1E6873C())
        {
LABEL_56:
          v60 = v1[12];
          v61 = v1[6];
          v62 = *v14;
          (*v14)(v1[13], v61);

          v62(v60, v61);
          v63 = sub_1D1775EE4;
          goto LABEL_67;
        }
      }

      else
      {
LABEL_34:
        if (v35 == *(v90 + 16))
        {
          goto LABEL_56;
        }
      }

      if (v88)
      {
        v36 = MEMORY[0x1D3891EF0](v35, v82);
      }

      else
      {
        if (v35 >= *(v90 + 16))
        {
          __break(1u);
LABEL_80:
          v65 = MEMORY[0x1D3891EF0](v35, v2);
LABEL_65:
          v59 = v65;
          v66 = v0[9];
          v67 = v0;
          v68 = v0[6];
          v69 = [v65 services];
          sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
          v58 = sub_1D1E67C1C();

          v70 = swift_task_alloc();
          *(v70 + 16) = v66;
          v0 = sub_1D174A6C4(sub_1D1778988, v70, v58);
          v67[15] = v0;

          v71 = *v84;
          (*v84)(v66, v68);

          if (!v0)
          {
            goto LABEL_85;
          }

          v73 = v67[12];
          v72 = v67[13];
          v74 = v67[8];
          v75 = v67[6];

          v71(v74, v75);
          v71(v72, v75);

          v71(v73, v75);
          v63 = sub_1D1775F90;
LABEL_67:
          v76 = v63;
          v77 = 0;
          v78 = 0;

          return MEMORY[0x1EEE6DFA0](v76, v77, v78);
        }

        v36 = *(v85 + 8 * v35);
      }

      v37 = v1[13];
      v39 = v1[8];
      v38 = v1[9];
      v40 = v1[6];
      v92 = v36;
      v41 = [v36 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v2 = sub_1D1E67C1C();

      v1 = v87;
      (v86)(v38, v37, v40);
      (v86)(v39, v37, v40);
      v93 = v2 >> 62;
      v96 = v2 & 0xFFFFFFFFFFFFFF8;
      if (v2 >> 62)
      {
        v35 = sub_1D1E6873C();
      }

      else
      {
        v35 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v7 = 0;
      v42 = v2 & 0xC000000000000001;
      v91 = (v2 + 32);
      v0 = v94;
      while (v35 != v7)
      {
        if (v42)
        {
          v43 = v2;
          v44 = MEMORY[0x1D3891EF0](v7, v2);
        }

        else
        {
          if (v7 >= *(v96 + 16))
          {
            goto LABEL_74;
          }

          v43 = v2;
          v44 = *(v2 + 8 * v7 + 32);
        }

        v45 = v44;
        v46 = v0[8];
        v47 = [v44 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v48 = sub_1D1E67C1C();

        v1 = swift_task_alloc();
        v1[2] = v46;
        v49 = sub_1D174A6C4(sub_1D1778988, v1, v48);

        if (v49)
        {
          v35 = v7;
          v0 = v94;
          v2 = v43;
          break;
        }

        v31 = __OFADD__(v7++, 1);
        v0 = v94;
        v2 = v43;
        if (v31)
        {
          goto LABEL_75;
        }
      }

      if (v93)
      {
        v64 = sub_1D1E6873C();
      }

      else
      {
        v64 = *(v96 + 16);
      }

      if (v35 == v64)
      {
        goto LABEL_84;
      }

      if (v42)
      {
        goto LABEL_80;
      }

      if (v35 < *(v96 + 16))
      {
        v65 = *(v91 + v35);
        goto LABEL_65;
      }

      __break(1u);
LABEL_82:
      ;
    }
  }

  __break(1u);
LABEL_84:
  v67 = v0[12];
  v59 = v0[13];
  v58 = v0[8];
  v79 = v0[9];
  v0 = v0[6];
  v71 = *v84;
  (*v84)(v79, v0);

  v71(v58, v0);
  v71(v59, v0);

  v71(v67, v0);
  __break(1u);
LABEL_85:
  v71(v67[8], v67[6]);
  __break(1u);
LABEL_86:
  v76 = (v58)(v59, v0);
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v76, v77, v78);
}

uint64_t sub_1D1775EE4()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_1D1775F90()
{
  v1 = *(v0 + 120);
  type metadata accessor for Action.CharacteristicAction(0);
  v2 = HMService.subscript.getter();

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1D1776070()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D1776108, 0, 0);
}

uint64_t sub_1D1776108()
{
  *(v0 + 144) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1776194, v2, v1);
}

uint64_t sub_1D1776194()
{

  *(v0 + 152) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D1776208, 0, 0);
}

uint64_t sub_1D1776208()
{
  *(v0 + 160) = sub_1D1E66A2C();
  *(v0 + 168) = sub_1D1E67E0C();
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D17762A0, v2, v1);
}

uint64_t sub_1D17762A0()
{
  v1 = v0[20];
  v2 = v0[19];

  v0[22] = [v2 serviceFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D1776330, 0, 0);
}

uint64_t sub_1D1776330()
{
  v1 = *(v0 + 176);
  if (v1)
  {
    type metadata accessor for Action.CharacteristicAction(0);
    v2 = HMService.subscript.getter();
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t Action.CharacteristicAction.staticCharacteristic(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for StaticService(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v10 + 16) && (v11 = sub_1D1742188(), (v12 & 1) != 0))
  {
    sub_1D1778450(*(v10 + 56) + *(v7 + 72) * v11, v9, type metadata accessor for StaticService);
    v13 = type metadata accessor for Action.CharacteristicAction(0);
    v14 = *&v9[*(v6 + 128)];
    if (*(v14 + 16))
    {
      v15 = *(v3 + *(v13 + 20));

      v16 = sub_1D171D140(v15);
      if (v17)
      {
        v18 = v16;
        v19 = *(v14 + 56);
        v20 = type metadata accessor for StaticCharacteristic(0);
        v21 = *(v20 - 8);
        sub_1D1778450(v19 + *(v21 + 72) * v18, a2, type metadata accessor for StaticCharacteristic);
        (*(v21 + 56))(a2, 0, 1, v20);
      }

      else
      {
        v26 = type metadata accessor for StaticCharacteristic(0);
        (*(*(v26 - 8) + 56))(a2, 1, 1, v26);
      }
    }

    else
    {
      v25 = type metadata accessor for StaticCharacteristic(0);
      (*(*(v25 - 8) + 56))(a2, 1, 1, v25);
    }

    return sub_1D1778508(v9, type metadata accessor for StaticService);
  }

  else
  {
    v22 = type metadata accessor for StaticCharacteristic(0);
    v23 = *(*(v22 - 8) + 56);

    return v23(a2, 1, 1, v22);
  }
}

uint64_t Action.CharacteristicAction.containingStaticService(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for StateSnapshot(0) + 60));
  if (*(v3 + 16) && (v4 = sub_1D1742188(), (v5 & 1) != 0))
  {
    v6 = v4;
    v7 = *(v3 + 56);
    v8 = type metadata accessor for StaticService(0);
    v15 = *(v8 - 8);
    sub_1D1778450(v7 + *(v15 + 72) * v6, a2, type metadata accessor for StaticService);
    v9 = *(v15 + 56);
    v10 = a2;
    v11 = 0;
    v12 = v8;
  }

  else
  {
    v13 = type metadata accessor for StaticService(0);
    v9 = *(*(v13 - 8) + 56);
    v12 = v13;
    v10 = a2;
    v11 = 1;
  }

  return v9(v10, v11, 1, v12);
}

uint64_t Action.CharacteristicAction.init(service:characteristicKind:targetValue:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t *a3@<X2>, _BYTE *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v29[-v9];
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = *a2;
  v16 = *a3;
  v31 = a3[1];
  v32 = v16;
  v30 = *(a3 + 16);
  v17 = *(v12 + 16);
  v17(v14, a1, v11);
  (*(v12 + 56))(v10, 1, 1, v11);
  v18 = *(type metadata accessor for StaticService(0) + 20);
  v33 = a1;
  v19 = (a1 + v18);
  v21 = *v19;
  v20 = v19[1];
  v17(a4, v14, v11);
  v22 = type metadata accessor for Action.CharacteristicAction(0);
  a4[v22[5]] = v15;
  v23 = &a4[v22[6]];
  v24 = v31;
  *v23 = v32;
  *(v23 + 1) = v24;
  v23[16] = v30;
  sub_1D17783E0(v10, &a4[v22[7]]);
  v25 = qword_1EE07B280;

  if (v25 != -1)
  {
    swift_once();
  }

  v26 = byte_1EE07B288;
  sub_1D1778508(v33, type metadata accessor for StaticService);
  sub_1D1741A30(v10, &qword_1EC642590, qword_1D1E71260);
  result = (*(v12 + 8))(v14, v11);
  if (v26 != 1)
  {

    v21 = 0;
    v20 = 0;
  }

  v28 = &a4[v22[8]];
  *v28 = v21;
  v28[1] = v20;
  return result;
}

uint64_t Action.CharacteristicAction.createAction()()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1D1776B54;

  return Action.CharacteristicAction.characteristic.getter();
}

uint64_t sub_1D1776B54(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1776C54, 0, 0);
}

uint64_t sub_1D1776C54()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16);
  if (v1)
  {
    v3 = Action.CharacteristicAction.createAction(characteristic:)(*(v0 + 32));

    v4 = *(v0 + 8);

    return v4(v3);
  }

  else
  {
    type metadata accessor for Action.CharacteristicAction.Error(0);
    sub_1D1778398(&qword_1EC643090, type metadata accessor for Action.CharacteristicAction.Error, &protocol conformance descriptor for Action.CharacteristicAction.Error);
    swift_allocError();
    sub_1D1778450(v2, v6, type metadata accessor for Action.CharacteristicAction);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t *Action.CharacteristicAction.createAction(characteristic:)(void *a1)
{
  v2 = v1;
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v55 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v58);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v54 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v54 - v15;
  v59 = a1;
  v17 = [a1 characteristicType];
  v18 = sub_1D1E6781C();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  CharacteristicKind.init(rawValue:)(v21);
  if (v61 == 174)
  {
    v22 = 0;
  }

  else
  {
    v22 = v61;
  }

  v56 = type metadata accessor for Action.CharacteristicAction(0);
  v23 = *(v56 + 20);
  v60 = v2;
  LOBYTE(v23) = *(v2 + v23);
  LOBYTE(v61) = v22;
  v63 = v23;
  v24 = CharacteristicKind.rawValue.getter();
  v26 = v25;
  v27 = CharacteristicKind.rawValue.getter();
  v29 = v28;
  if (v24 == v27 && v26 == v28)
  {
  }

  else
  {
    v30 = sub_1D1E6904C();

    if ((v30 & 1) == 0)
    {
      goto LABEL_17;
    }
  }

  v31 = [v59 service];
  if (v31)
  {
    v32 = v31;
    v33 = [v31 uniqueIdentifier];

    sub_1D1E66A5C();
    v34 = *(v5 + 56);
    v34(v16, 0, 1, v4);
  }

  else
  {
    v34 = *(v5 + 56);
    v34(v16, 1, 1, v4);
  }

  (*(v5 + 16))(v14, v60, v4);
  v34(v14, 0, 1, v4);
  v35 = *(v58 + 48);
  sub_1D17783E0(v16, v8);
  sub_1D17783E0(v14, &v8[v35]);
  v36 = *(v5 + 48);
  if (v36(v8, 1, v4) != 1)
  {
    v39 = v57;
    sub_1D17783E0(v8, v57);
    if (v36(&v8[v35], 1, v4) == 1)
    {
      v40 = v39;
      v29 = qword_1D1E71260;
      sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
      sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
      (*(v5 + 8))(v40, v4);
      goto LABEL_16;
    }

    v42 = &v8[v35];
    v43 = v55;
    (*(v5 + 32))(v55, v42, v4);
    sub_1D1778398(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v44 = v39;
    LODWORD(v58) = sub_1D1E6775C();
    v45 = *(v5 + 8);
    v45(v43, v4);
    v29 = &qword_1EC642590;
    sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
    sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
    v45(v44, v4);
    v37 = sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
    if (v58)
    {
      goto LABEL_21;
    }

LABEL_17:
    type metadata accessor for Action.CharacteristicAction.Error(0);
    sub_1D1778398(&qword_1EC643090, type metadata accessor for Action.CharacteristicAction.Error, &protocol conformance descriptor for Action.CharacteristicAction.Error);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    goto LABEL_18;
  }

  v29 = qword_1D1E71260;
  sub_1D1741A30(v14, &qword_1EC642590, qword_1D1E71260);
  sub_1D1741A30(v16, &qword_1EC642590, qword_1D1E71260);
  if (v36(&v8[v35], 1, v4) != 1)
  {
LABEL_16:
    sub_1D1741A30(v8, &qword_1EC642980, &unk_1D1E6E6E0);
    goto LABEL_17;
  }

  v37 = sub_1D1741A30(v8, &qword_1EC642590, qword_1D1E71260);
LABEL_21:
  v46 = (v60 + *(v56 + 24));
  v47 = *(v46 + 16);
  v61 = *v46;
  v62 = v47;
  v48 = CharacteristicKind.Value.rawObjectValue.getter(v37, v38);
  if (v48)
  {
    v49 = v48;
    v50 = objc_allocWithZone(MEMORY[0x1E696CB68]);
    v29 = [v50 initWithCharacteristic:v59 targetValue:v49];

    return v29;
  }

  type metadata accessor for Action.CharacteristicAction.Error(0);
  sub_1D1778398(&qword_1EC643090, type metadata accessor for Action.CharacteristicAction.Error, &protocol conformance descriptor for Action.CharacteristicAction.Error);
  swift_allocError();
  v29 = *v46;
  v51 = *(v46 + 1);
  v52 = *(v46 + 16);
  *v53 = v29;
  *(v53 + 8) = v51;
  *(v53 + 16) = v52;
  swift_storeEnumTagMultiPayload();
  sub_1D1778244(v29, v51, v52);
LABEL_18:
  swift_willThrow();
  return v29;
}

uint64_t sub_1D17774A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D1778398(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v4 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  return sub_1D1778450(v3 + v4, a2, type metadata accessor for StateSnapshot);
}

uint64_t sub_1D1777584(uint64_t a1)
{
  v2 = type metadata accessor for StateSnapshot(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = (&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D1778450(a1, v4, type metadata accessor for StateSnapshot);
  return sub_1D1DE5D08(v4);
}

uint64_t sub_1D1777624@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a4@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t (*x5_0)(void)@<X5>, uint64_t a6@<X8>)
{
  if (result < 0 || (v7 = result, 1 << *(a4 + 32) <= result))
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v10 = *(a4 + 56);
    v11 = a5(0);
    return sub_1D1778450(v10 + *(*(v11 - 8) + 72) * v7, a6, x5_0);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D17776CC()
{
  v36 = sub_1D1E66A7C();
  v1 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v31 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v30 = &v26 - v4;
  v6 = *v0;
  v5 = v0[1];
  v7 = v0[3];
  v34 = v0[2];
  v35 = v5;
  v32 = v0[4];
  v33 = v7;
  v8 = v6 + 56;
  result = sub_1D1E6869C();
  v10 = result;
  v11 = *(v6 + 36);
  v12 = 1 << *(v6 + 32);
  if (result == v12)
  {
    return result;
  }

  else
  {
    v28 = v1 + 8;
    v29 = v1 + 16;
    v26 = v6 + 64;
    v27 = v1;
    v14 = v36;
    while ((v10 & 0x8000000000000000) == 0 && v10 < v12)
    {
      v15 = v10 >> 6;
      if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_22;
      }

      v37 = v11;
      v16 = v31;
      (*(v1 + 16))(v31, *(v6 + 48) + *(v1 + 72) * v10, v14);
      v17 = v30;
      v35(v16);
      (*(v1 + 8))(v16, v14);
      v18 = v33(v17);
      result = sub_1D1741A30(v17, &qword_1EC6430E8, &unk_1D1E71440);
      if (v18)
      {
        return v10;
      }

      v13 = 1 << *(v6 + 32);
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

      v19 = *(v8 + 8 * v15);
      if ((v19 & (1 << v10)) == 0)
      {
        goto LABEL_24;
      }

      if (v37 != *(v6 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v10 & 0x3F));
      if (v20)
      {
        v13 = __clz(__rbit64(v20)) | v10 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v15 << 6;
        v22 = v15 + 1;
        v23 = (v26 + 8 * v15);
        while (v22 < (v13 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_1D1716920(v10, v37, 0);
            v13 = __clz(__rbit64(v24)) + v21;
            goto LABEL_5;
          }
        }

        result = sub_1D1716920(v10, v37, 0);
      }

LABEL_5:
      v11 = *(v6 + 36);
      v12 = 1 << *(v6 + 32);
      v10 = v13;
      v1 = v27;
      if (v13 == v12)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1D17779F4()
{
  v1 = type metadata accessor for Event(0);
  v26 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0;
  v4 = v0[1];
  v6 = v0[3];
  v24 = v0[2];
  v25 = v4;
  v23 = v6;
  v7 = v5 + 56;
  result = sub_1D1E6869C();
  v9 = result;
  v10 = *(v5 + 36);
  v11 = 1 << *(v5 + 32);
  if (result == v11)
  {
    return v9;
  }

  else
  {
    v22 = v5 + 64;
    while ((v9 & 0x8000000000000000) == 0 && v9 < v11)
    {
      v13 = v9 >> 6;
      if ((*(v7 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
      {
        goto LABEL_21;
      }

      sub_1D1778450(*(v5 + 48) + *(v26 + 72) * v9, v3, type metadata accessor for Event);
      v25(&v29, v3);
      sub_1D1778508(v3, type metadata accessor for Event);
      v27 = v29;
      v28 = v30;
      result = v23(&v27);
      if (result)
      {
        return v9;
      }

      v12 = 1 << *(v5 + 32);
      if (v9 >= v12)
      {
        goto LABEL_22;
      }

      v14 = *(v7 + 8 * v13);
      if ((v14 & (1 << v9)) == 0)
      {
        goto LABEL_23;
      }

      if (v10 != *(v5 + 36))
      {
        goto LABEL_24;
      }

      v15 = v14 & (-2 << (v9 & 0x3F));
      if (v15)
      {
        v12 = __clz(__rbit64(v15)) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v13 << 6;
        v17 = v13 + 1;
        v18 = (v22 + 8 * v13);
        while (v17 < (v12 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            result = sub_1D1716920(v9, v10, 0);
            v12 = __clz(__rbit64(v19)) + v16;
            goto LABEL_6;
          }
        }

        result = sub_1D1716920(v9, v10, 0);
      }

LABEL_6:
      v10 = *(v5 + 36);
      v11 = 1 << *(v5 + 32);
      v9 = v12;
      if (v12 == v11)
      {
        return v12;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }

  return result;
}

unint64_t sub_1D1777C94()
{
  v1 = *v0;
  v10 = *(v0 + 8);
  if (*v0 >> 62)
  {
LABEL_17:
    v2 = sub_1D1E6873C();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = *(v0 + 24);
  while (v2 != v3)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1D3891EF0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_16:
        __break(1u);
        goto LABEL_17;
      }

      v5 = *(v1 + 8 * v3 + 32);
    }

    v6 = v5;
    v11 = v5;
    v10(&v12, &v11);

    v7 = v12;
    v11 = v12;
    v0 = v4(&v11);

    if (v0)
    {
      return v3;
    }

    if (__OFADD__(v3++, 1))
    {
      goto LABEL_16;
    }
  }

  return v2;
}

uint64_t _s13HomeDataModel6ActionO014CharacteristicD0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642980, &unk_1D1E6E6E0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v44 = v5;
  v45 = type metadata accessor for Action.CharacteristicAction(0);
  v14 = v45[5];
  v15 = *(a1 + v14);
  LOBYTE(v14) = *(a2 + v14);
  LOBYTE(v49) = v15;
  LOBYTE(v46) = v14;
  v16 = CharacteristicKind.rawValue.getter();
  v18 = v17;
  if (v16 == CharacteristicKind.rawValue.getter() && v18 == v19)
  {
  }

  else
  {
    v20 = sub_1D1E6904C();

    if ((v20 & 1) == 0)
    {
      return 0;
    }
  }

  v43 = v7;
  v21 = v45;
  v22 = v45[6];
  v23 = *(a1 + v22 + 8);
  v24 = *(a1 + v22 + 16);
  v49 = *(a1 + v22);
  v50 = v23;
  v51 = v24;
  v25 = a2 + v22;
  v27 = *(v25 + 8);
  v28 = *(v25 + 16);
  v46 = *v25;
  v26 = v46;
  v47 = v27;
  v48 = v28;
  sub_1D1778244(v49, v23, v24);
  sub_1D1778244(v26, v27, v28);
  LOBYTE(v26) = _s13HomeDataModel18CharacteristicKindO5ValueO2eeoiySbAE_AEtFZ_0(&v49, &v46);
  sub_1D1778284(v46, v47, v48);
  sub_1D1778284(v49, v50, v51);
  if ((v26 & 1) == 0)
  {
    return 0;
  }

  v29 = v21[7];
  v30 = *(v11 + 48);
  sub_1D17783E0(a1 + v29, v13);
  sub_1D17783E0(a2 + v29, &v13[v30]);
  v31 = v44;
  v32 = *(v44 + 48);
  if (v32(v13, 1, v4) != 1)
  {
    sub_1D17783E0(v13, v10);
    if (v32(&v13[v30], 1, v4) != 1)
    {
      v34 = v43;
      (*(v31 + 32))(v43, &v13[v30], v4);
      sub_1D1778398(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v35 = sub_1D1E6775C();
      v36 = *(v31 + 8);
      v36(v34, v4);
      v36(v10, v4);
      sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
      if ((v35 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_16;
    }

    (*(v31 + 8))(v10, v4);
LABEL_12:
    sub_1D1741A30(v13, &qword_1EC642980, &unk_1D1E6E6E0);
    return 0;
  }

  if (v32(&v13[v30], 1, v4) != 1)
  {
    goto LABEL_12;
  }

  sub_1D1741A30(v13, &qword_1EC642590, qword_1D1E71260);
LABEL_16:
  v37 = v45[8];
  v38 = (a1 + v37);
  v39 = *(a1 + v37 + 8);
  v40 = (a2 + v37);
  v41 = v40[1];
  if (v39)
  {
    if (v41 && (*v38 == *v40 && v39 == v41 || (sub_1D1E6904C() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v41)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1D1778244(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 10 || a3 == 9)
  {
    return sub_1D1741854(result, a2);
  }

  if (a3 == 8)
  {
  }

  return result;
}

uint64_t sub_1D1778270(uint64_t result, unint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_1D1778284(result, a2, a3);
  }

  return result;
}

uint64_t sub_1D1778284(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 10 || a3 == 9)
  {
    return sub_1D174E7C4(result, a2);
  }

  if (a3 == 8)
  {
  }

  return result;
}

uint64_t sub_1D17782D0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1778308(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1778398(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D17783E0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1778450(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D17784B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D1778508(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D17785D8(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D177868C(319);
    if (v2 <= 0x3F)
    {
      sub_1D17786E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D177868C(uint64_t a1)
{
  if (!qword_1EE07E018)
  {
    sub_1D1E66A7C();
    v1 = sub_1D1E685AC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07E018);
    }
  }
}

void sub_1D17786E4()
{
  if (!qword_1EE07D1F8[0])
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, qword_1EE07D1F8);
    }
  }
}

void sub_1D1778734(uint64_t a1)
{
  sub_1D17787C4(319);
  if (v1 <= 0x3F)
  {
    sub_1D177884C(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Action.CharacteristicAction(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D17787C4(uint64_t a1)
{
  if (!qword_1EC6430C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC643098, &qword_1D1E71278);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6430D0, &qword_1D1E71410);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6430C8);
    }
  }
}

void sub_1D177884C(uint64_t a1)
{
  if (!qword_1EC6430D8)
  {
    sub_1D1741B10(255, &qword_1EE079CD0, 0x1E696CB38);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6430D0, &qword_1D1E71410);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC6430D8);
    }
  }
}

uint64_t sub_1D17788D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1778940(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 4)
  {
    return sub_1D174E7C4(result, a2);
  }

  if (a3 == 3)
  {
  }

  return result;
}

uint64_t Action.MatterCommandAction.init(action:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430F0, &qword_1D1E71450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28[-v5];
  v7 = type metadata accessor for ActionCommand(0);
  v34 = *(v7 - 8);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v40 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v28[-v11];
  MEMORY[0x1EEE9AC00](v10);
  v33 = &v28[-v13];
  v29 = [a1 enforceExecutionOrder];
  v31 = a1;
  v14 = [a1 commands];
  sub_1D1741B10(0, &qword_1EC6430F8, 0x1E696CBD8);
  v15 = sub_1D1E67C1C();

  if (v15 >> 62)
  {
    goto LABEL_22;
  }

  for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v17 = 0;
    v39 = v15 & 0xC000000000000001;
    v37 = v12;
    v38 = v15 & 0xFFFFFFFFFFFFFF8;
    v35 = (v34 + 48);
    v36 = (v34 + 56);
    v41 = MEMORY[0x1E69E7CC0];
    v32 = v7;
    while (v39)
    {
      v18 = MEMORY[0x1D3891EF0](v17, v15);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_20;
      }

LABEL_9:
      v12 = v15;
      v20 = v18;
      v21 = v37;
      ActionCommand.init(command:)(v20, v37);
      if (v2)
      {
      }

      sub_1D1779544(v21, v6);
      (*v36)(v6, 0, 1, v7);

      if ((*v35)(v6, 1, v7) == 1)
      {
        sub_1D1741A30(v6, &qword_1EC6430F0, &qword_1D1E71450);
      }

      else
      {
        v22 = v33;
        sub_1D1779544(v6, v33);
        sub_1D1779544(v22, v40);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_1D17800DC(0, v41[2] + 1, 1, v41, &qword_1EC6434B8, &qword_1D1E71930, type metadata accessor for ActionCommand);
        }

        v24 = v41[2];
        v23 = v41[3];
        if (v24 >= v23 >> 1)
        {
          v41 = sub_1D17800DC((v23 > 1), v24 + 1, 1, v41, &qword_1EC6434B8, &qword_1D1E71930, type metadata accessor for ActionCommand);
        }

        v25 = v41;
        v41[2] = v24 + 1;
        sub_1D1779544(v40, v25 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v24);
        v7 = v32;
      }

      v15 = v12;
      ++v17;
      if (v19 == i)
      {
        goto LABEL_24;
      }
    }

    if (v17 >= *(v38 + 16))
    {
      goto LABEL_21;
    }

    v18 = *(v15 + 8 * v17 + 32);
    v19 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_9;
    }

LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    ;
  }

  v41 = MEMORY[0x1E69E7CC0];
LABEL_24:

  v27 = v30;
  *v30 = v29;
  *(v27 + 1) = v41;
  return result;
}

id sub_1D1778E28(void *a1)
{
  v40 = sub_1D1E66A7C();
  v35 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v1;
  v32 = *(v1 + 1);
  v4 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v5 = sub_1D1E67C1C();

  v6 = sub_1D18D6B70(MEMORY[0x1E69E7CC0]);
  if (v5 >> 62)
  {
LABEL_26:
    v7 = sub_1D1E6873C();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_27:

    LOBYTE(v41) = v33;
    v42 = v32;
    v30 = sub_1D177C7EC(v6);

    return v30;
  }

  v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_27;
  }

LABEL_3:
  v8 = 0;
  v38 = v5 & 0xFFFFFFFFFFFFFF8;
  v39 = v5 & 0xC000000000000001;
  v34 = v35 + 16;
  v36 = v5;
  v37 = (v35 + 8);
  while (1)
  {
    if (v39)
    {
      v11 = MEMORY[0x1D3891EF0](v8, v5);
    }

    else
    {
      if (v8 >= *(v38 + 16))
      {
        goto LABEL_23;
      }

      v11 = *(v5 + 8 * v8 + 32);
    }

    v12 = v11;
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v14 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    v15 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v41 = v6;
    v5 = v6;
    v18 = sub_1D1742188();
    v19 = v6[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      goto LABEL_24;
    }

    v22 = v17;
    if (v6[3] < v21)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v6 = v41;
      if (v17)
      {
        goto LABEL_4;
      }
    }

    else
    {
      sub_1D1734504();
      v6 = v41;
      if (v22)
      {
LABEL_4:
        v9 = v6[7];
        v10 = *(v9 + 8 * v18);
        *(v9 + 8 * v18) = v15;

        (*v37)(v43, v40);
        goto LABEL_5;
      }
    }

LABEL_17:
    v6[(v18 >> 6) + 8] |= 1 << v18;
    v25 = v35;
    v26 = v43;
    v5 = v40;
    (*(v35 + 16))(v6[6] + *(v35 + 72) * v18, v43, v40);
    *(v6[7] + 8 * v18) = v15;

    (*(v25 + 8))(v26, v5);
    v27 = v6[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_25;
    }

    v6[2] = v29;
LABEL_5:
    ++v8;
    v5 = v36;
    if (v13 == v7)
    {
      goto LABEL_27;
    }
  }

  sub_1D1721444(v21, isUniquelyReferenced_nonNull_native);
  v23 = sub_1D1742188();
  if ((v22 & 1) == (v24 & 1))
  {
    v18 = v23;
    v6 = v41;
    if (v22)
    {
      goto LABEL_4;
    }

    goto LABEL_17;
  }

  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t Action.MatterCommandAction.debugDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  sub_1D1E6884C();

  if (v1)
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (v1)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x1D3890F70](v3, v4);

  MEMORY[0x1D3890F70](8236, 0xE200000000000000);
  v5 = type metadata accessor for ActionCommand(0);
  v6 = MEMORY[0x1D38912A0](v2, v5);
  MEMORY[0x1D3890F70](v6);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return 0xD00000000000001ELL;
}

uint64_t Action.MatterCommandAction.init(enforceExecutionOrder:commands:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  return result;
}

BOOL sub_1D17792F4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionCommand(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v21 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D178078C(v13, v10, type metadata accessor for ActionCommand);
      sub_1D178078C(v14, v7, type metadata accessor for ActionCommand);
      if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || *&v10[v4[5]] != *&v7[v4[5]] || *&v10[v4[6]] != *&v7[v4[6]])
      {
        break;
      }

      v16 = &v10[v4[7]];
      v17 = *(v16 + 3);
      v18 = *(v16 + 4);
      __swift_project_boxed_opaque_existential_1(v16, v17);
      v19 = MatterCommand.isEqual(_:)(&v7[v4[7]], v17, v18);
      sub_1D178083C(v7, type metadata accessor for ActionCommand);
      sub_1D178083C(v10, type metadata accessor for ActionCommand);
      if (v19)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v19;
    }

    sub_1D178083C(v7, type metadata accessor for ActionCommand);
    sub_1D178083C(v10, type metadata accessor for ActionCommand);
    return 0;
  }

  return 1;
}

uint64_t sub_1D1779544(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActionCommand(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D17795D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (v3 && a1 != a2)
  {
    v5 = a1 + 32;
    v6 = a2 + 32;
    do
    {
      v7 = a3();
      v9 = v8;
      if (v7 == a3() && v9 == v10)
      {
      }

      else
      {
        v12 = sub_1D1E6904C();

        if ((v12 & 1) == 0)
        {
          return 0;
        }
      }

      ++v5;
      ++v6;
      --v3;
    }

    while (v3);
  }

  return 1;
}

uint64_t sub_1D17796E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1D17807F4(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v21 = sub_1D1E6775C();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D17798F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticAlarm(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v26 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_29:
    v25 = 0;
    return v25 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v25 = 1;
    return v25 & 1;
  }

  v12 = 0;
  v13 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v14 = a1 + v13;
  v15 = a2 + v13;
  v16 = *(v8 + 72);
  while (1)
  {
    result = sub_1D178078C(v14 + v16 * v12, v10, type metadata accessor for StaticAlarm);
    if (v12 == v11)
    {
      break;
    }

    sub_1D178078C(v15 + v16 * v12, v7, type metadata accessor for StaticAlarm);
    if (*v10 != *v7 || *(v10 + 1) != *(v7 + 1))
    {
      goto LABEL_28;
    }

    v18 = *(v10 + 3);
    v19 = *(v7 + 3);
    if (v18)
    {
      if (!v19 || (*(v10 + 2) != *(v7 + 2) || v18 != v19) && (sub_1D1E6904C() & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    else if (v19)
    {
      goto LABEL_28;
    }

    v20 = *(v10 + 4);
    v21 = *(v7 + 4);
    v22 = *(v20 + 16);
    if (v22 != *(v21 + 16))
    {
      goto LABEL_28;
    }

    if (v22 && v20 != v21)
    {
      v23 = (v20 + 32);
      v24 = (v21 + 32);
      while (*v23 == *v24)
      {
        ++v23;
        ++v24;
        if (!--v22)
        {
          goto LABEL_21;
        }
      }

LABEL_28:
      sub_1D178083C(v7, type metadata accessor for StaticAlarm);
      sub_1D178083C(v10, type metadata accessor for StaticAlarm);
      goto LABEL_29;
    }

LABEL_21:
    if (*(v10 + 10) != *(v7 + 10) || v10[44] != v7[44] || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
    {
      goto LABEL_28;
    }

    v25 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
    sub_1D178083C(v7, type metadata accessor for StaticAlarm);
    sub_1D178083C(v10, type metadata accessor for StaticAlarm);
    if ((v25 & 1) != 0 && ++v12 != v11)
    {
      continue;
    }

    return v25 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1779BD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticTimer(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v10 = (&v24 - v9);
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_25:
    v22 = 0;
    return v22 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_1D178078C(v13, v10, type metadata accessor for StaticTimer);
      sub_1D178078C(v14, v7, type metadata accessor for StaticTimer);
      if (*v10 != *v7 || (sub_1D1E669AC() & 1) == 0 || *(v10 + v4[6]) != *(v7 + v4[6]))
      {
        break;
      }

      v16 = v4[7];
      v17 = (v10 + v16);
      v18 = *(v10 + v16 + 8);
      v19 = (v7 + v16);
      v20 = v19[1];
      if (v18)
      {
        if (!v20)
        {
          break;
        }

        v21 = *v17 == *v19 && v18 == v20;
        if (!v21 && (sub_1D1E6904C() & 1) == 0)
        {
          break;
        }
      }

      else if (v20)
      {
        break;
      }

      if (*(v10 + v4[8]) != *(v7 + v4[8]) || *(v10 + v4[9]) != *(v7 + v4[9]) || (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
      {
        break;
      }

      v22 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D178083C(v7, type metadata accessor for StaticTimer);
      sub_1D178083C(v10, type metadata accessor for StaticTimer);
      if (v22)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v22 & 1;
    }

    sub_1D178083C(v7, type metadata accessor for StaticTimer);
    sub_1D178083C(v10, type metadata accessor for StaticTimer);
    goto LABEL_25;
  }

  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1D1779E84(uint64_t a1, uint64_t a2)
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

  v3 = a1 + 32;
  for (i = a2 + 32; ; i += 40)
  {
    sub_1D17417AC(v3, v14);
    sub_1D17417AC(i, v13);
    sub_1D17417AC(v14, v9);
    sub_1D17417AC(v13, v11);
    if (v10 <= 2u)
    {
      if (v10)
      {
        if (v10 == 1)
        {
          sub_1D17417AC(v9, v8);
          if (v12 != 1)
          {
            goto LABEL_33;
          }
        }

        else
        {
          sub_1D17417AC(v9, v8);
          if (v12 != 2)
          {
            goto LABEL_33;
          }
        }

        v5 = v8[0] == v11[0];
      }

      else
      {
        sub_1D17417AC(v9, v8);
        if (v12)
        {
          goto LABEL_33;
        }

        v5 = LOBYTE(v8[0]) ^ LOBYTE(v11[0]) ^ 1;
      }

      goto LABEL_7;
    }

    if (v10 > 4u)
    {
      break;
    }

    if (v10 == 3)
    {
      sub_1D17417AC(v9, v8);
      if (v12 != 3)
      {
        goto LABEL_32;
      }

      if (v8[0] == v11[0] && v8[1] == v11[1])
      {
        v5 = 1;
        goto LABEL_29;
      }

      v6 = sub_1D1E6904C();
LABEL_28:
      v5 = v6;
LABEL_29:

LABEL_7:
      sub_1D17805D8(v9);
      sub_1D17805D8(v13);
      sub_1D17805D8(v14);
      if ((v5 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_8;
    }

    if (v12 != 4)
    {
      goto LABEL_33;
    }

    sub_1D17805D8(v11);
    sub_1D17805D8(v9);
    sub_1D17805D8(v13);
    sub_1D17805D8(v14);
LABEL_8:
    v3 += 40;
    if (!--v2)
    {
      return 1;
    }
  }

  if (v10 != 5)
  {
    goto LABEL_33;
  }

  sub_1D17417AC(v9, v8);
  if (v12 == 5)
  {
    v6 = sub_1D1779E84(v8[0], v11[0]);
    goto LABEL_28;
  }

LABEL_32:

LABEL_33:
  sub_1D1741A30(v9, &qword_1EC643118, &qword_1D1E71570);
  sub_1D17805D8(v13);
  sub_1D17805D8(v14);
  return 0;
}

uint64_t sub_1D177A0E4(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D177A140(uint64_t a1, uint64_t a2)
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

  v3 = (a2 + 52);
  for (i = (a1 + 52); ; i += 24)
  {
    result = 0;
    if (*(i - 5) != *(v3 - 5) || *(i - 16) != *(v3 - 16))
    {
      break;
    }

    v7 = *(v3 - 8);
    if (*(i - 8))
    {
      if (!*(v3 - 8))
      {
        return 0;
      }
    }

    else
    {
      if (*(i - 3) != *(v3 - 3))
      {
        v7 = 1;
      }

      if (v7)
      {
        return 0;
      }
    }

    if (*i)
    {
      if (!*v3)
      {
        return 0;
      }
    }

    else
    {
      if (*(i - 1) == *(v3 - 1))
      {
        v5 = *v3;
      }

      else
      {
        v5 = 1;
      }

      if (v5)
      {
        return 0;
      }
    }

    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D177A200(uint64_t result, uint64_t a2)
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

uint64_t sub_1D177A25C(uint64_t result, uint64_t a2)
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
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D177A2B8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    do
    {
      v5 = *(a1 + v3 + 35);
      v6 = *(a2 + v3 + 34);
      v7 = *(a2 + v3 + 35);
      if (*(a1 + v3 + 34))
      {
        if (!*(a2 + v3 + 34))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 32) != *(a2 + v3 + 32))
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (v5 == 30)
      {
        if (v7 != 30)
        {
          return 0;
        }
      }

      else if (v7 == 30 || dword_1D1E7193C[v5] != dword_1D1E7193C[v7])
      {
        return 0;
      }

      if (*(a1 + v3 + 40))
      {
        if (!*(a2 + v3 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(a1 + v3 + 36) == *(a2 + v3 + 36))
        {
          v4 = *(a2 + v3 + 40);
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      v3 += 12;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D177A394(uint64_t a1, uint64_t a2)
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

  v3 = 0;
  do
  {
    v5 = (0xFE060504030201uLL >> (8 * *(a1 + v3 + 32))) != (0xFE060504030201uLL >> (8 * *(a2 + v3 + 32))) || *(a1 + v3 + 40) != *(a2 + v3 + 40);
    v6 = v5 | *(a1 + v3 + 48) ^ *(a2 + v3 + 48);
    if (v6)
    {
      break;
    }

    v3 += 24;
    --v2;
  }

  while (v2);
  return (v6 ^ 1) & 1;
}

uint64_t sub_1D177A44C(uint64_t a1, uint64_t a2)
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

  v32 = v2;
  v33 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[1];
    v24[0] = *v5;
    v24[1] = v8;
    v9 = v5[3];
    v25 = v5[2];
    v26 = v9;
    v20 = v24[0];
    v21 = v8;
    v22 = v25;
    v23 = v9;
    v10 = *v6;
    v11 = v6[1];
    v12 = v6[3];
    v28 = v6[2];
    v29 = v12;
    v27[0] = v10;
    v27[1] = v11;
    v16 = v10;
    v17 = v11;
    v18 = v28;
    v19 = v12;
    sub_1D17806DC(v24, v15);
    sub_1D17806DC(v27, v15);
    v13 = _s13HomeDataModel16ThermostatPresetV2eeoiySbAC_ACtFZ_0(&v20, &v16);
    v30[0] = v16;
    v30[1] = v17;
    v30[2] = v18;
    v30[3] = v19;
    sub_1D1780738(v30);
    v31[0] = v20;
    v31[1] = v21;
    v31[2] = v22;
    v31[3] = v23;
    sub_1D1780738(v31);
    if ((v13 & 1) == 0)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 4;
    v5 += 4;
  }

  return 1;
}

uint64_t sub_1D177A568(uint64_t a1, uint64_t a2)
{
  v44[3] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a2 + 49);
  for (i = (a1 + 49); ; i += 24)
  {
    v5 = *(i - 17);
    v6 = *(i - 9);
    v7 = *i;
    v8 = *(v3 - 17);
    v9 = *(v3 - 9);
    v10 = *(v3 - 1);
    v11 = *v3;
    v42 = *(i - 1);
    if (v6 >> 60 == 15)
    {
      if (v9 >> 60 != 15)
      {
        goto LABEL_72;
      }

      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      goto LABEL_41;
    }

    if (v9 >> 60 == 15)
    {
LABEL_72:
      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      sub_1D1716AA4(v5, v6);
      v36 = v8;
      v37 = v9;
      goto LABEL_75;
    }

    v12 = v6 >> 62;
    v13 = v9 >> 62;
    if (v6 >> 62 == 3)
    {
      v14 = 0;
      if (!v5 && v6 == 0xC000000000000000 && v9 >> 62 == 3)
      {
        v14 = 0;
        if (!v8 && v9 == 0xC000000000000000)
        {
          sub_1D1771B38(0, 0xC000000000000000);
          sub_1D1771B38(0, 0xC000000000000000);
          sub_1D1771B38(0, 0xC000000000000000);
          sub_1D1771B38(0, 0xC000000000000000);
          v15 = 0;
          v16 = 0xC000000000000000;
          goto LABEL_40;
        }
      }

LABEL_26:
      if (v13 <= 1)
      {
        goto LABEL_27;
      }

      goto LABEL_20;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v22 = *(v5 + 16);
        v21 = *(v5 + 24);
        v19 = __OFSUB__(v21, v22);
        v14 = v21 - v22;
        if (v19)
        {
          goto LABEL_80;
        }

        goto LABEL_26;
      }

      v14 = 0;
      if (v13 <= 1)
      {
        goto LABEL_27;
      }
    }

    else if (v12)
    {
      LODWORD(v14) = HIDWORD(v5) - v5;
      if (__OFSUB__(HIDWORD(v5), v5))
      {
        goto LABEL_79;
      }

      v14 = v14;
      if (v13 <= 1)
      {
LABEL_27:
        if (v13)
        {
          LODWORD(v20) = HIDWORD(v8) - v8;
          if (__OFSUB__(HIDWORD(v8), v8))
          {
            goto LABEL_78;
          }

          v20 = v20;
        }

        else
        {
          v20 = BYTE6(v9);
        }

        goto LABEL_33;
      }
    }

    else
    {
      v14 = BYTE6(v6);
      if (v13 <= 1)
      {
        goto LABEL_27;
      }
    }

LABEL_20:
    if (v13 != 2)
    {
      if (v14)
      {
        break;
      }

LABEL_39:
      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      v15 = v8;
      v16 = v9;
LABEL_40:
      sub_1D1716AA4(v15, v16);
LABEL_41:
      sub_1D1716AA4(v5, v6);
      goto LABEL_42;
    }

    v18 = *(v8 + 16);
    v17 = *(v8 + 24);
    v19 = __OFSUB__(v17, v18);
    v20 = v17 - v18;
    if (v19)
    {
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
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
    }

LABEL_33:
    if (v14 != v20)
    {
      break;
    }

    if (v14 < 1)
    {
      goto LABEL_39;
    }

    v41 = *v3;
    v40 = *(v3 - 1);
    if (v12 > 1)
    {
      v39 = *i;
      if (v12 == 2)
      {
        v31 = *(v5 + 16);
        v38 = *(v5 + 24);
        sub_1D1771B38(v5, v6);
        sub_1D1771B38(v8, v9);
        sub_1D1771B38(v5, v6);
        sub_1D1771B38(v8, v9);
        sub_1D1771B38(v8, v9);
        v32 = sub_1D1E6616C();
        if (v32)
        {
          v33 = sub_1D1E6619C();
          if (__OFSUB__(v31, v33))
          {
            goto LABEL_83;
          }

          v32 += v31 - v33;
        }

        if (__OFSUB__(v38, v31))
        {
          goto LABEL_82;
        }

LABEL_66:
        sub_1D1E6618C();
        sub_1D199EDB4(v32, v8, v9, v44);
        sub_1D1716AA4(v8, v9);
        sub_1D1716AA4(v8, v9);
        v35 = v44[0];
      }

      else
      {
        memset(v44, 0, 14);
        sub_1D1771B38(v5, v6);
        sub_1D1771B38(v8, v9);
        sub_1D1771B38(v5, v6);
        sub_1D1771B38(v8, v9);
        sub_1D1771B38(v8, v9);
        sub_1D199EDB4(v44, v8, v9, &v43);
        sub_1D1716AA4(v8, v9);
        sub_1D1716AA4(v8, v9);
        v35 = v43;
      }

      sub_1D1716AA4(v5, v6);
      if ((v35 & 1) == 0)
      {
        goto LABEL_74;
      }

      v7 = v39;
      goto LABEL_70;
    }

    if (v12)
    {
      v39 = *i;
      if (v5 >> 32 < v5)
      {
        goto LABEL_81;
      }

      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      sub_1D1771B38(v5, v6);
      sub_1D1771B38(v8, v9);
      sub_1D1771B38(v8, v9);
      v32 = sub_1D1E6616C();
      if (v32)
      {
        v34 = sub_1D1E6619C();
        if (__OFSUB__(v5, v34))
        {
          goto LABEL_84;
        }

        v32 += v5 - v34;
      }

      goto LABEL_66;
    }

    v23 = *i;
    v44[0] = *(i - 17);
    LOWORD(v44[1]) = v6;
    BYTE2(v44[1]) = BYTE2(v6);
    BYTE3(v44[1]) = BYTE3(v6);
    BYTE4(v44[1]) = BYTE4(v6);
    BYTE5(v44[1]) = BYTE5(v6);
    sub_1D1771B38(v5, v6);
    sub_1D1771B38(v8, v9);
    sub_1D1771B38(v5, v6);
    sub_1D1771B38(v8, v9);
    sub_1D1771B38(v8, v9);
    sub_1D199EDB4(v44, v8, v9, &v43);
    sub_1D1716AA4(v8, v9);
    sub_1D1716AA4(v8, v9);
    v24 = v43;
    sub_1D1716AA4(v5, v6);
    if (!v24)
    {
      goto LABEL_74;
    }

    v7 = v23;
LABEL_70:
    v11 = v41;
    v10 = v40;
LABEL_42:
    if (v42 == 9)
    {
      sub_1D1716AA4(v8, v9);
      sub_1D1716AA4(v5, v6);
      result = 0;
      if (v10 != 9 || ((v7 ^ v11) & 1) != 0)
      {
        return result;
      }
    }

    else
    {
      if (v10 == 9)
      {
        goto LABEL_74;
      }

      v26 = v10;
      v27 = v7;
      v28 = byte_1D1E719B4[v42];
      v29 = v8;
      v30 = byte_1D1E719B4[v26];
      sub_1D1716AA4(v29, v9);
      sub_1D1716AA4(v5, v6);
      result = 0;
      if (v28 != v30 || ((v27 ^ v11) & 1) != 0)
      {
        return result;
      }
    }

    v3 += 24;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_1D1771B38(v5, v6);
  sub_1D1771B38(v8, v9);
  sub_1D1771B38(v5, v6);
  sub_1D1771B38(v8, v9);
  sub_1D1716AA4(v8, v9);
  sub_1D1716AA4(v5, v6);
LABEL_74:
  sub_1D1716AA4(v8, v9);
  v36 = v5;
  v37 = v6;
LABEL_75:
  sub_1D1716AA4(v36, v37);
  return 0;
}

uint64_t sub_1D177AC5C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 3) == *(i - 3); i += 4)
    {
      v5 = *v3;
      v6 = *i;
      v7 = *(v3 - 2) == *(i - 2) && *(v3 - 1) == *(i - 1);
      if (!v7 && (sub_1D1E6904C() & 1) == 0)
      {
        break;
      }

      v8 = sub_1D17A7B94(v5, v6);

      if ((v8 & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D177AD6C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v10 = 1;
    }

    else
    {
      v3 = (a2 + 48);
      v4 = (a1 + 48);
      do
      {
        v5 = *(v4 - 1);
        v6 = *v4;
        v15 = *(v4 - 2);
        v16 = v5;
        v17 = v6;
        v8 = *(v3 - 1);
        v12 = *(v3 - 2);
        v7 = v12;
        v13 = v8;
        v14 = *v3;
        v9 = v14;
        sub_1D1780654(v15, v5, v6);
        sub_1D1780654(v7, v8, v9);
        v10 = static AttributeValue.== infix(_:_:)(&v15, &v12);
        sub_1D1780698(v12, v13, v14);
        sub_1D1780698(v15, v16, v17);
        if ((v10 & 1) == 0)
        {
          break;
        }

        v4 += 24;
        v3 += 24;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

uint64_t sub_1D177AE98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v20 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    return 0;
  }

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
    result = sub_1D178078C(v13, v10, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    if (!v11)
    {
      break;
    }

    sub_1D178078C(v14, v7, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    if ((MEMORY[0x1D388F840](v10, v7) & 1) == 0 || (MEMORY[0x1D388F840](&v10[*(v4 + 20)], &v7[*(v4 + 20)]) & 1) == 0)
    {
      sub_1D178083C(v7, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      sub_1D178083C(v10, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
      return 0;
    }

    v17 = *&v10[*(v4 + 24)];
    sub_1D178083C(v10, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    v18 = *&v7[*(v4 + 24)];
    sub_1D178083C(v7, type metadata accessor for AutoClimateModel.Thermostat.WeekdayScheduleRule);
    result = v17 == v18;
    v19 = v17 != v18 || v11-- == 1;
    v14 += v15;
    v13 += v15;
    if (v19)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D177B0AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 40);
    v4 = (a1 + 40);
    do
    {
      v6 = *(v3 - 6);
      if (*(v4 - 6))
      {
        if (!*(v3 - 6))
        {
          return 0;
        }
      }

      else
      {
        if (*(v4 - 4) != *(v3 - 4))
        {
          v6 = 1;
        }

        if (v6)
        {
          return 0;
        }
      }

      if (*(v4 - 2))
      {
        if (!*(v3 - 2))
        {
          return 0;
        }
      }

      else
      {
        if (*(v4 - 2) == *(v3 - 2))
        {
          v7 = *(v3 - 2);
        }

        else
        {
          v7 = 1;
        }

        if (v7)
        {
          return 0;
        }
      }

      if (*v4)
      {
        if (!*v3)
        {
          return 0;
        }
      }

      else
      {
        if (*(v4 - 1) == *(v3 - 1))
        {
          v5 = *v3;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return 0;
        }
      }

      v3 += 10;
      v4 += 10;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1D177B1D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = a3(0) - 8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v23 - v14;
  v16 = *(a1 + 16);
  if (v16 == *(a2 + 16))
  {
    if (!v16 || a1 == a2)
    {
      v21 = 1;
    }

    else
    {
      v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
      v18 = a1 + v17;
      v19 = a2 + v17;
      v20 = *(v13 + 72);
      do
      {
        sub_1D178078C(v18, v15, a4);
        sub_1D178078C(v19, v12, a4);
        v21 = a5(v15, v12);
        sub_1D178083C(v12, a4);
        sub_1D178083C(v15, a4);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v19 += v20;
        v18 += v20;
        --v16;
      }

      while (v16);
    }
  }

  else
  {
    v21 = 0;
  }

  return v21 & 1;
}

uint64_t sub_1D177B36C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = 0;
    v41 = a2;
    v42 = a1;
    while (1)
    {
      v6 = a1 + v3;
      v7 = a2 + v3;
      if (*(a1 + v3 + 32) != *(a2 + v3 + 32))
      {
        break;
      }

      v8 = *(v6 + 48);
      v9 = *(v6 + 56);
      v10 = *(v6 + 64);
      v11 = *(v6 + 66);
      v12 = *(v6 + 67);
      v13 = *(v6 + 68);
      v14 = *(v6 + 69);
      v15 = *(v6 + 70);
      v16 = *(v6 + 71);
      v17 = *(v6 + 72);
      v18 = *(v7 + 56);
      v19 = *(v7 + 64);
      v20 = *(v7 + 66);
      v21 = *(v7 + 67);
      v22 = *(v7 + 68);
      v23 = *(v7 + 69);
      v24 = *(v7 + 70);
      v25 = *(v7 + 71);
      v26 = *(v7 + 72);
      if (*(v6 + 40))
      {
        if (!*(v7 + 40))
        {
          return 0;
        }
      }

      else
      {
        if (*(v6 + 36) == *(v7 + 36))
        {
          v27 = *(v7 + 40);
        }

        else
        {
          v27 = 1;
        }

        if (v27)
        {
          return 0;
        }
      }

      if (v9)
      {
        if (!v18)
        {
          return 0;
        }

        if (v8 != *(v7 + 48) || v9 != v18)
        {
          v49 = *(v7 + 69);
          v50 = *(v7 + 71);
          v44 = *(v7 + 67);
          v45 = v10;
          v28 = v16;
          v29 = v17;
          v30 = *(v7 + 72);
          v47 = *(v7 + 68);
          v48 = v13;
          v31 = v14;
          v32 = v15;
          v46 = v11;
          v33 = *(v7 + 70);
          v43 = *(v7 + 64);
          v34 = v12;
          v35 = sub_1D1E6904C();
          v12 = v34;
          v24 = v33;
          v15 = v32;
          v11 = v46;
          v22 = v47;
          v14 = v31;
          v13 = v48;
          v26 = v30;
          v19 = v43;
          v21 = v44;
          v17 = v29;
          v23 = v49;
          v25 = v50;
          v16 = v28;
          v10 = v45;
          v36 = v35;
          a2 = v41;
          a1 = v42;
          if ((v36 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v18)
      {
        return 0;
      }

      if (v11)
      {
        if (!v20)
        {
          return 0;
        }
      }

      else
      {
        if (v10 == v19)
        {
          v37 = v20;
        }

        else
        {
          v37 = 1;
        }

        if (v37)
        {
          return 0;
        }
      }

      if (v13)
      {
        if (!v22)
        {
          return 0;
        }
      }

      else
      {
        if (v12 == v21)
        {
          v38 = v22;
        }

        else
        {
          v38 = 1;
        }

        if (v38)
        {
          return 0;
        }
      }

      if (v15)
      {
        if (!v24)
        {
          return 0;
        }
      }

      else
      {
        if (v14 == v23)
        {
          v39 = v24;
        }

        else
        {
          v39 = 1;
        }

        if (v39)
        {
          return 0;
        }
      }

      if (v17)
      {
        if ((v26 & 1) == 0)
        {
          return 0;
        }
      }

      else
      {
        if (v16 == v25)
        {
          v4 = v26;
        }

        else
        {
          v4 = 1;
        }

        if (v4)
        {
          return 0;
        }
      }

      v3 += 48;
      v5 = 1;
      if (!--v2)
      {
        return v5;
      }
    }
  }

  return 0;
}