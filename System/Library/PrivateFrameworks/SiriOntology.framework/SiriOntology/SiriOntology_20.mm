uint64_t sub_1C072B218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F320, &qword_1C09979B0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C05145B4(v24, &qword_1EBE1F320, &qword_1C09979B0);
      v31 = v40;
      sub_1C070BA2C(v17, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1EBD0, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserRejected);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F320, &qword_1C09979B0);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F320, &qword_1C09979B0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F320, &qword_1C09979B0);
    return sub_1C05145B4(v32, &qword_1EBE1F320, &qword_1C09979B0);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F320, &qword_1C09979B0);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C072B7D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F328, &qword_1C09979B8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C05145B4(v24, &qword_1EBE1F328, &qword_1C09979B8);
      v31 = v40;
      sub_1C070BA2C(v17, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1EBE8, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDisambiguated);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F328, &qword_1C09979B8);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F328, &qword_1C09979B8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F328, &qword_1C09979B8);
    return sub_1C05145B4(v32, &qword_1EBE1F328, &qword_1C09979B8);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F328, &qword_1C09979B8);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C072BD90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F330, &qword_1C09979C0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C05145B4(v24, &qword_1EBE1F330, &qword_1C09979C0);
      v31 = v40;
      sub_1C070BA2C(v17, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1EC00, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserCancelled);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F330, &qword_1C09979C0);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F330, &qword_1C09979C0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F330, &qword_1C09979C0);
    return sub_1C05145B4(v32, &qword_1EBE1F330, &qword_1C09979C0);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F330, &qword_1C09979C0);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C072C34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F338, &qword_1C09979C8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1C05145B4(v24, &qword_1EBE1F338, &qword_1C09979C8);
      v31 = v40;
      sub_1C070BA2C(v17, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1EC18, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F338, &qword_1C09979C8);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F338, &qword_1C09979C8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F338, &qword_1C09979C8);
    return sub_1C05145B4(v32, &qword_1EBE1F338, &qword_1C09979C8);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F338, &qword_1C09979C8);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C072C908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F340, &qword_1C09979D0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1C05145B4(v24, &qword_1EBE1F340, &qword_1C09979D0);
      v31 = v40;
      sub_1C070BA2C(v17, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1EC30, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserAcknowledged);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F340, &qword_1C09979D0);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F340, &qword_1C09979D0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F340, &qword_1C09979D0);
    return sub_1C05145B4(v32, &qword_1EBE1F340, &qword_1C09979D0);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F340, &qword_1C09979D0);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C072CEC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F348, &qword_1C09979D8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1C05145B4(v24, &qword_1EBE1F348, &qword_1C09979D8);
      v31 = v40;
      sub_1C070BA2C(v17, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1EC48, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToProceed);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F348, &qword_1C09979D8);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F348, &qword_1C09979D8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F348, &qword_1C09979D8);
    return sub_1C05145B4(v32, &qword_1EBE1F348, &qword_1C09979D8);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F348, &qword_1C09979D8);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C072D480(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F350, &qword_1C09979E0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 9)
    {
      sub_1C05145B4(v24, &qword_1EBE1F350, &qword_1C09979E0);
      v31 = v40;
      sub_1C070BA2C(v17, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1EC60, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToPause);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F350, &qword_1C09979E0);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F350, &qword_1C09979E0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F350, &qword_1C09979E0);
    return sub_1C05145B4(v32, &qword_1EBE1F350, &qword_1C09979E0);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F350, &qword_1C09979E0);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C072DA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F358, &qword_1C09979E8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 10)
    {
      sub_1C05145B4(v24, &qword_1EBE1F358, &qword_1C09979E8);
      v31 = v40;
      sub_1C070BA2C(v17, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1EC78, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserResponded);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F358, &qword_1C09979E8);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F358, &qword_1C09979E8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F358, &qword_1C09979E8);
    return sub_1C05145B4(v32, &qword_1EBE1F358, &qword_1C09979E8);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F358, &qword_1C09979E8);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C072DFF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F360, &qword_1C09979F0);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 11)
    {
      sub_1C05145B4(v24, &qword_1EBE1F360, &qword_1C09979F0);
      v31 = v40;
      sub_1C070BA2C(v17, v40, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1EC90, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F360, &qword_1C09979F0);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F360, &qword_1C09979F0);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F360, &qword_1C09979F0);
    return sub_1C05145B4(v32, &qword_1EBE1F360, &qword_1C09979F0);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F360, &qword_1C09979F0);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C072E5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v47 = a4;
  v45 = a2;
  v46 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v39 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v37 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F368, &qword_1C09979F8);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v42 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v37 - v23;
  v41 = v6;
  v25 = *(v6 + 56);
  v44 = v5;
  v26 = v5;
  v27 = v25;
  v25(&v37 - v23, 1, 1, v26);
  v38 = a1;
  sub_1C05149F8(a1, v12, &qword_1EBE17408, &unk_1C0993370);
  v37 = v14;
  v28 = (*(v14 + 48))(v12, 1, v13);
  if (v28 == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17408, &unk_1C0993370);
    v29 = v44;
    v30 = v13;
  }

  else
  {
    sub_1C070BA2C(v12, v19, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    sub_1C070BA2C(v19, v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    v30 = v13;
    if (swift_getEnumCaseMultiPayload() == 12)
    {
      sub_1C05145B4(v24, &qword_1EBE1F368, &qword_1C09979F8);
      v31 = v40;
      sub_1C070BA2C(v17, v40, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
      sub_1C070BA2C(v31, v24, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
      v29 = v44;
      v27(v24, 0, 1, v44);
    }

    else
    {
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v29 = v44;
    }
  }

  v32 = v42;
  sub_1C0752188(&qword_1EBE1ECA8, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserStatedTask);
  v33 = v43;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v24, &qword_1EBE1F368, &qword_1C09979F8);
  }

  sub_1C05149F8(v24, v32, &qword_1EBE1F368, &qword_1C09979F8);
  if ((*(v41 + 48))(v32, 1, v29) == 1)
  {
    sub_1C05145B4(v24, &qword_1EBE1F368, &qword_1C09979F8);
    return sub_1C05145B4(v32, &qword_1EBE1F368, &qword_1C09979F8);
  }

  else
  {
    v35 = v39;
    sub_1C070BA2C(v32, v39, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
    if (v28 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v24, &qword_1EBE1F368, &qword_1C09979F8);
    v36 = v38;
    sub_1C05145B4(v38, &qword_1EBE17408, &unk_1C0993370);
    sub_1C070BA2C(v35, v36, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
    swift_storeEnumTagMultiPayload();
    return (*(v37 + 56))(v36, 0, 1, v30);
  }
}

uint64_t sub_1C072EB70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  sub_1C0752188(&qword_1EBE1E8E8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserDialogAct.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v23 = a2;
  v22 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E8, &qword_1C09933B8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v11 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21 - v15;
  sub_1C05149F8(v6, &v21 - v15, &qword_1EBE17408, &unk_1C0993370);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v17 - 8) + 48))(v16, 1, v17) != 1)
  {
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        sub_1C072F390(v6, v22, v23, a3);
        goto LABEL_22;
      case 2u:
        sub_1C072F5C8(v6, v22, v23, a3);
        goto LABEL_22;
      case 3u:
        sub_1C072F800(v6, v22, v23, a3);
        goto LABEL_22;
      case 4u:
        sub_1C072FA38(v6, v22, v23, a3);
        goto LABEL_22;
      case 5u:
        sub_1C072FC70(v6, v22, v23, a3);
        goto LABEL_22;
      case 6u:
        sub_1C072FEA8(v6, v22, v23, a3);
        goto LABEL_22;
      case 7u:
        sub_1C07300E0(v6, v22, v23, a3);
        if (!v4)
        {
          goto LABEL_12;
        }

        return sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      case 8u:
        sub_1C0730318(v6, v22, v23, a3);
        if (!v4)
        {
          goto LABEL_12;
        }

        return sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      case 9u:
        sub_1C0730550(v6, v22, v23, a3);
        if (!v4)
        {
          goto LABEL_12;
        }

        return sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      case 0xAu:
        sub_1C0730788(v6, v22, v23, a3);
        if (!v4)
        {
          goto LABEL_12;
        }

        return sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      case 0xBu:
        sub_1C07309C0(v6, v22, v23, a3);
        if (v4)
        {
          return sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        }

        goto LABEL_12;
      case 0xCu:
        sub_1C0730BF8(v6, v22, v23, a3);
        if (v4)
        {
          return sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        }

LABEL_12:
        v5 = v4;
        sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        break;
      default:
        sub_1C072F15C(v6, v22, v23, a3);
LABEL_22:
        result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
        if (v4)
        {
          return result;
        }

        v5 = 0;
        break;
    }
  }

  v18 = v21;
  v19 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  sub_1C05149F8(v6 + *(v19 + 24), v10, &qword_1EBE1E7E8, &qword_1C09933B8);
  if ((*(v11 + 48))(v10, 1, v18) == 1)
  {
    sub_1C05145B4(v10, &qword_1EBE1E7E8, &qword_1C09933B8);
    return sub_1C095D36C();
  }

  sub_1C070BA2C(v10, v13, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  sub_1C0752188(&qword_1EBE1E8E8, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  sub_1C095D6AC();
  result = sub_1C0751DA0(v13, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
  if (!v5)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C072F15C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
    sub_1C0752188(&qword_1EBE1EB88, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserStarted);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C072F390(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
    sub_1C0752188(&qword_1EBE1EBA0, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserContinued);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C072F5C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
    sub_1C0752188(&qword_1EBE1EBB8, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserAccepted);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C072F800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
    sub_1C0752188(&qword_1EBE1EBD0, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserRejected);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C072FA38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
    sub_1C0752188(&qword_1EBE1EBE8, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDisambiguated);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C072FC70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
    sub_1C0752188(&qword_1EBE1EC00, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserCancelled);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C072FEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
    sub_1C0752188(&qword_1EBE1EC18, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C07300E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 7)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
    sub_1C0752188(&qword_1EBE1EC30, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserAcknowledged);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C0730318(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 8)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
    sub_1C0752188(&qword_1EBE1EC48, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToProceed);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C0730550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 9)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
    sub_1C0752188(&qword_1EBE1EC60, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToPause);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C0730788(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 10)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
    sub_1C0752188(&qword_1EBE1EC78, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserResponded);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C07309C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 11)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
    sub_1C0752188(&qword_1EBE1EC90, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C0730BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[1] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v13 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C05149F8(a1, v7, &qword_1EBE17408, &unk_1C0993370);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  if ((*(*(v11 - 8) + 48))(v7, 1, v11) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17408, &unk_1C0993370);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 12)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
    sub_1C0752188(&qword_1EBE1ECA8, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserStatedTask);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C0730E7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a2 + v5, 1, 1, v6);
}

uint64_t sub_1C0730F88(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F258, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDialogAct);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0731028(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDialogAct);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0731094(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDialogAct);

  return sub_1C095D5AC();
}

uint64_t sub_1C07311A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t sub_1C0731314(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F250, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserStarted);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07313B4(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EB88, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserStarted);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0731420(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EB88, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserStarted);

  return sub_1C095D5AC();
}

uint64_t sub_1C07314BC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E4A8);
  __swift_project_value_buffer(v0, qword_1EBE1E4A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "step";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07316F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C07317A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserContinued.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_1C05149F8(v4 + v18, v12, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v19 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v17 + 24), v7, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v21 = v24;
    sub_1C070BA2C(v7, v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v22 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v22)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0731CC0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v8 = *(a1 + 20);
  v9 = a2(0);
  (*(*(v9 - 8) + 56))(a4 + v8, 1, 1, v9);
  v10 = *(a1 + 24);
  v11 = a3(0);
  v12 = *(*(v11 - 8) + 56);

  return v12(a4 + v10, 1, 1, v11);
}

uint64_t sub_1C0731DE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F248, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserContinued);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0731E88(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EBA0, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserContinued);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0731EF4(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EBA0, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserContinued);

  return sub_1C095D5AC();
}

uint64_t sub_1C0731FBC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E4C0);
  __swift_project_value_buffer(v0, qword_1EBE1E4C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "offer_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07321F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C07322A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserAccepted.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_1C05149F8(v4 + v18, v12, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v19 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v17 + 24), v7, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v21 = v24;
    sub_1C070BA2C(v7, v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v22 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v22)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C073280C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F240, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserAccepted);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07328AC(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EBB8, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserAccepted);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0732918(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EBB8, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserAccepted);

  return sub_1C095D5AC();
}

uint64_t sub_1C07329E0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E4D8);
  __swift_project_value_buffer(v0, qword_1EBE1E4D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "offer_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0732C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0732CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserRejected.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_1C05149F8(v4 + v18, v12, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v19 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v17 + 24), v7, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v21 = v24;
    sub_1C070BA2C(v7, v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v22 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v22)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0733230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F238, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserRejected);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07332D0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EBD0, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserRejected);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073333C(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EBD0, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserRejected);

  return sub_1C095D5AC();
}

uint64_t sub_1C0733404()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E4F0);
  __swift_project_value_buffer(v0, qword_1EBE1E4F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "disambiguation_id";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "option_query";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0733630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C07336E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserDisambiguated.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_1C05149F8(v4 + v18, v12, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v19 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v17 + 24), v7, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v21 = v24;
    sub_1C070BA2C(v7, v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v22 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v22)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0733C4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F230, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDisambiguated);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0733CEC(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EBE8, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDisambiguated);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0733D58(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EBE8, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDisambiguated);

  return sub_1C095D5AC();
}

uint64_t sub_1C0733E20()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E508);
  __swift_project_value_buffer(v0, qword_1EBE1E508);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0734054(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0734108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserCancelled.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_1C05149F8(v4 + v18, v12, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v19 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v17 + 24), v7, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v21 = v24;
    sub_1C070BA2C(v7, v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v22 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v22)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0734670(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F228, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserCancelled);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0734710(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC00, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserCancelled);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073477C(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EC00, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserCancelled);

  return sub_1C095D5AC();
}

uint64_t sub_1C0734844()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E520);
  __swift_project_value_buffer(v0, qword_1EBE1E520);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system_dialog_act_id";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0734A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0734B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToRepeat.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_1C05149F8(v4 + v18, v12, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v19 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v17 + 24), v7, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v21 = v24;
    sub_1C070BA2C(v7, v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v22 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v22)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0735094(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F220, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToRepeat);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0735134(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC18, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToRepeat);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07351A0(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EC18, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToRepeat);

  return sub_1C095D5AC();
}

uint64_t sub_1C0735268()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E538);
  __swift_project_value_buffer(v0, qword_1EBE1E538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system_dialog_act_id";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C073549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0735550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserAcknowledged.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_1C05149F8(v4 + v18, v12, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v19 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v17 + 24), v7, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v21 = v24;
    sub_1C070BA2C(v7, v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v22 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v22)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0735AB8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F218, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserAcknowledged);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0735B58(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC30, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserAcknowledged);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0735BC4(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EC30, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserAcknowledged);

  return sub_1C095D5AC();
}

uint64_t sub_1C0735C8C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E550);
  __swift_project_value_buffer(v0, qword_1EBE1E550);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0735EC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0735F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToProceed.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_1C05149F8(v4 + v18, v12, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v19 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v17 + 24), v7, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v21 = v24;
    sub_1C070BA2C(v7, v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v22 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v22)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C07364DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F210, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToProceed);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C073657C(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC48, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToProceed);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07365E8(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EC48, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToProceed);

  return sub_1C095D5AC();
}

uint64_t sub_1C07366B0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E568);
  __swift_project_value_buffer(v0, qword_1EBE1E568);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07368E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0736998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_UserWantedToPause.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_1C05149F8(v4 + v18, v12, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v19 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v17 + 24), v7, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v21 = v24;
    sub_1C070BA2C(v7, v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v22 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v22)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C0736F00(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F208, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToPause);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0736FA0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC60, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToPause);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073700C(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EC60, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserWantedToPause);

  return sub_1C095D5AC();
}

uint64_t sub_1C07370D4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E580);
  __swift_project_value_buffer(v0, qword_1EBE1E580);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system_dialog_act_id";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "references";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07372F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0737468(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F200, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserResponded);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0737508(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC78, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserResponded);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0737574(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EC78, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserResponded);

  return sub_1C095D5AC();
}

uint64_t sub_1C073763C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E598);
  __swift_project_value_buffer(v0, qword_1EBE1E598);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "asr_hypothesis_index";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rewritten_utterance";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "external_parser_id";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "asr_uuid";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "spans";
  *(v15 + 8) = 5;
  *(v15 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_DelegatedUserDialogAct.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1C095D52C();
        }

        else if (result == 2)
        {
          sub_1C0737A78(a1, v5, a2, a3, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1C095D50C();
            break;
          case 4:
            sub_1C0737B30(a1, v5, a2, a3);
            break;
          case 5:
            type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
            sub_1C0752188(&qword_1EBE1E958, type metadata accessor for Siri_Nl_Core_Protocol_Span, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Span);
            sub_1C095D54C();
            break;
        }
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0737A78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
  return sub_1C095D55C();
}

uint64_t sub_1C0737B30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_DelegatedUserDialogAct.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = &v22 - v6;
  v27 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v24 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = sub_1C095D32C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v3;
  v28 = v3;
  if (v15)
  {
    result = sub_1C095D67C();
    if (v4)
    {
      return result;
    }

    v3 = v28;
  }

  v23 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  sub_1C05149F8(v3 + *(v23 + 32), v10, &qword_1EBE16D68, &unk_1C09933C0);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1C05145B4(v10, &qword_1EBE16D68, &unk_1C09933C0);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
    sub_1C095D6AC();
    if (v4)
    {
      return (*(v12 + 8))(v14, v11);
    }

    (*(v12 + 8))(v14, v11);
    v3 = v28;
  }

  v17 = *(v3 + 2);
  v18 = HIBYTE(v17) & 0xF;
  if ((v17 & 0x2000000000000000) == 0)
  {
    v18 = *(v3 + 1) & 0xFFFFFFFFFFFFLL;
  }

  if (v18)
  {
    result = sub_1C095D66C();
    if (v4)
    {
      return result;
    }

    v3 = v28;
  }

  v19 = v26;
  sub_1C05149F8(v3 + *(v23 + 36), v26, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v25 + 48))(v19, 1, v27) == 1)
  {
    sub_1C05145B4(v19, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    v20 = v19;
    v21 = v24;
    sub_1C070BA2C(v20, v24, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v4)
    {
      return result;
    }

    v3 = v28;
  }

  if (!*(*(v3 + 3) + 16))
  {
    return sub_1C095D36C();
  }

  type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  sub_1C0752188(&qword_1EBE1E958, type metadata accessor for Siri_Nl_Core_Protocol_Span, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Span);
  result = sub_1C095D69C();
  if (!v4)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C0738164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0xE000000000000000;
  *(a2 + 24) = MEMORY[0x1E69E7CC0];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 32);
  v5 = sub_1C095D32C();
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 36);
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C0738294(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1F8, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0738334(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EC90, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07383A0(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EC90, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);

  return sub_1C095D5AC();
}

uint64_t sub_1C07384AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t sub_1C073858C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v16[0] = a2;
  v16[1] = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v16 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a4(0);
  sub_1C05149F8(v4 + *(v13 + 20), v8, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v14 = v16[3];
    sub_1C095D6AC();
    result = sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v14)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C073881C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a3@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v6 = *(a1 + 20);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a3 + v6, 1, 1, v7);
}

uint64_t sub_1C07388F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1F0, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserStatedTask);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0738990(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ECA8, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserStatedTask);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07389FC(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1ECA8, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserStatedTask);

  return sub_1C095D5AC();
}

uint64_t sub_1C0738AC4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E5C8);
  __swift_project_value_buffer(v0, qword_1EBE1E5C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "system_dialog_act";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "child_acts";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogActGroup.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1C0738DB0(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
        sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
        sub_1C095D54C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0738DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  sub_1C0752188(&qword_1EBE1E870, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogAct);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_SystemDialogActGroup.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = a1;
  v17 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB0, &qword_1C0970478);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0) + 24);
  v15 = v3;
  sub_1C05149F8(v3 + v11, v6, &qword_1EBE16DB0, &qword_1C0970478);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE16DB0, &qword_1C0970478);
    v12 = v18;
  }

  else
  {
    sub_1C070BA2C(v6, v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    sub_1C0752188(&qword_1EBE1E870, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogAct);
    v12 = v18;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
    if (v12)
    {
      return result;
    }
  }

  if (!*(*v15 + 16))
  {
    return sub_1C095D36C();
  }

  sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
  result = sub_1C095D69C();
  if (!v12)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C0739180@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, char *a3@<X8>)
{
  *a3 = MEMORY[0x1E69E7CC0];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v6 = *(a1 + 24);
  v7 = a2(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a3[v6], 1, 1, v7);
}

uint64_t sub_1C0739268(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1E8, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogActGroup);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0739308(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogActGroup);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0739374(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E878, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogActGroup);

  return sub_1C095D5AC();
}

uint64_t sub_1C0739410()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E5E0);
  __swift_project_value_buffer(v0, qword_1EBE1E5E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1C0973520;
  v4 = v23 + v3;
  v5 = v23 + v3 + v1[14];
  *(v23 + v3) = 1;
  *v5 = "id";
  *(v5 + 8) = 2;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "prompted";
  *(v9 + 8) = 8;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "offered";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "gave_options";
  *(v13 + 1) = 12;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "informed";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "reported_success";
  *(v17 + 1) = 16;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "reported_failure";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 101;
  *v21 = "rendered_text";
  *(v21 + 1) = 13;
  v21[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t sub_1C0739784()
{
  type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  (*(*(v4 - 8) + 56))(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  v6 = sub_1C095D32C();
  result = (*(*(v6 - 8) + 56))(v0 + v5, 1, 1, v6);
  qword_1EBE1E5F8 = v0;
  return result;
}

uint64_t sub_1C0739898(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v22[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22[-v10];
  v12 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  v17 = sub_1C095D32C();
  (*(*(v17 - 8) + 56))(v1 + v16, 1, 1, v17);
  v18 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  swift_beginAccess();
  sub_1C05149F8(a1 + v18, v11, &qword_1EBE17420, &qword_1C0993380);
  swift_beginAccess();
  sub_1C051F9D4(v11, v1 + v12, &qword_1EBE17420, &qword_1C0993380);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v19, v8, &qword_1EBE1E800, &qword_1C09933D0);
  swift_beginAccess();
  sub_1C051F9D4(v8, v1 + v14, &qword_1EBE1E800, &qword_1C09933D0);
  swift_endAccess();
  v20 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C05149F8(a1 + v20, v5, &qword_1EBE16D68, &unk_1C09933C0);

  swift_beginAccess();
  sub_1C051F9D4(v5, v1 + v16, &qword_1EBE16D68, &unk_1C09933C0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C0739BF0()
{
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct, &qword_1EBE1E800, &qword_1C09933D0);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText, &qword_1EBE16D68, &unk_1C09933C0);

  return swift_deallocClassInstance();
}

uint64_t sub_1C0739D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 4)
    {
      if (result > 6)
      {
        if (result == 7)
        {
          sub_1C073BDFC(a1, a2, a3, a4);
        }

        else if (result == 101)
        {
          sub_1C073C418(a2, a1, a3, a4);
        }
      }

      else if (result == 5)
      {
        sub_1C073B1C4(a1, a2, a3, a4);
      }

      else
      {
        sub_1C073B7E0(a1, a2, a3, a4);
      }
    }

    else if (result > 2)
    {
      if (result == 3)
      {
        sub_1C073A58C(a1, a2, a3, a4);
      }

      else
      {
        sub_1C073ABA8(a1, a2, a3, a4);
      }
    }

    else if (result == 1)
    {
      sub_1C0739E90(a2, a1, a3, a4);
    }

    else if (result == 2)
    {
      sub_1C0739F6C(a1, a2, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1C0739E90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0739F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = a4;
  v51 = a2;
  v52 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v39 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v41 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v39 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v39 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2C8, &qword_1C0997950);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v48 = &v39 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v39 - v25;
  v47 = v6;
  v27 = *(v6 + 56);
  v50 = v5;
  v43 = v27;
  v27(&v39 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v42 = a1;
  sub_1C05149F8(a1 + v28, v14, &qword_1EBE1E800, &qword_1C09933D0);
  v40 = v16;
  v29 = (*(v16 + 48))(v14, 1, v15);
  v45 = v15;
  if (v29 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE1E800, &qword_1C09933D0);
    v30 = v50;
  }

  else
  {
    sub_1C070BA2C(v14, v21, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C070BA2C(v21, v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
      v30 = v50;
    }

    else
    {
      sub_1C05145B4(v26, &qword_1EBE1F2C8, &qword_1C0997950);
      v31 = v44;
      sub_1C070BA2C(v19, v44, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
      sub_1C070BA2C(v31, v26, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
      v30 = v50;
      v43(v26, 0, 1, v50);
    }
  }

  v32 = v48;
  sub_1C0752188(&qword_1EBE1ECE0, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemPrompted);
  v33 = v49;
  sub_1C095D55C();
  if (v33)
  {
    return sub_1C05145B4(v26, &qword_1EBE1F2C8, &qword_1C0997950);
  }

  sub_1C05149F8(v26, v32, &qword_1EBE1F2C8, &qword_1C0997950);
  if ((*(v47 + 48))(v32, 1, v30) == 1)
  {
    sub_1C05145B4(v26, &qword_1EBE1F2C8, &qword_1C0997950);
    return sub_1C05145B4(v32, &qword_1EBE1F2C8, &qword_1C0997950);
  }

  else
  {
    v35 = v46;
    sub_1C070BA2C(v32, v46, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    if (v29 != 1)
    {
      sub_1C095D42C();
    }

    v36 = v45;
    sub_1C05145B4(v26, &qword_1EBE1F2C8, &qword_1C0997950);
    v37 = v41;
    sub_1C070BA2C(v35, v41, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    swift_storeEnumTagMultiPayload();
    (*(v40 + 56))(v37, 0, 1, v36);
    v38 = v42;
    swift_beginAccess();
    sub_1C051F9D4(v37, v38 + v28, &qword_1EBE1E800, &qword_1C09933D0);
    return swift_endAccess();
  }
}

uint64_t sub_1C073A58C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2D0, &qword_1C0997958);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v40 = a1;
  sub_1C05149F8(a1 + v28, v14, &qword_1EBE1E800, &qword_1C09933D0);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    sub_1C070BA2C(v14, v21, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C070BA2C(v21, v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1C05145B4(v26, &qword_1EBE1F2D0, &qword_1C0997958);
      v29 = v44;
      sub_1C070BA2C(v19, v44, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
      sub_1C070BA2C(v29, v26, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_1C0752188(&qword_1EBE1ECF8, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemOffered);
  v32 = v47;
  sub_1C095D55C();
  if (v32)
  {
    return sub_1C05145B4(v26, &qword_1EBE1F2D0, &qword_1C0997958);
  }

  sub_1C05149F8(v26, v31, &qword_1EBE1F2D0, &qword_1C0997958);
  if ((*(v45 + 48))(v31, 1, v30) == 1)
  {
    sub_1C05145B4(v26, &qword_1EBE1F2D0, &qword_1C0997958);
    return sub_1C05145B4(v31, &qword_1EBE1F2D0, &qword_1C0997958);
  }

  else
  {
    v34 = v42;
    sub_1C070BA2C(v31, v42, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
    if (v41 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v26, &qword_1EBE1F2D0, &qword_1C0997958);
    v35 = v39;
    sub_1C070BA2C(v34, v39, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
    swift_storeEnumTagMultiPayload();
    (*(v38 + 56))(v35, 0, 1, v15);
    v36 = v40;
    swift_beginAccess();
    sub_1C051F9D4(v35, v36 + v28, &qword_1EBE1E800, &qword_1C09933D0);
    return swift_endAccess();
  }
}

uint64_t sub_1C073ABA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2D8, &qword_1C0997960);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v40 = a1;
  sub_1C05149F8(a1 + v28, v14, &qword_1EBE1E800, &qword_1C09933D0);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    sub_1C070BA2C(v14, v21, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C070BA2C(v21, v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1C05145B4(v26, &qword_1EBE1F2D8, &qword_1C0997960);
      v29 = v44;
      sub_1C070BA2C(v19, v44, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
      sub_1C070BA2C(v29, v26, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_1C0752188(&qword_1EBE1ED10, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemGaveOptions);
  v32 = v47;
  sub_1C095D55C();
  if (v32)
  {
    return sub_1C05145B4(v26, &qword_1EBE1F2D8, &qword_1C0997960);
  }

  sub_1C05149F8(v26, v31, &qword_1EBE1F2D8, &qword_1C0997960);
  if ((*(v45 + 48))(v31, 1, v30) == 1)
  {
    sub_1C05145B4(v26, &qword_1EBE1F2D8, &qword_1C0997960);
    return sub_1C05145B4(v31, &qword_1EBE1F2D8, &qword_1C0997960);
  }

  else
  {
    v34 = v42;
    sub_1C070BA2C(v31, v42, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
    if (v41 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v26, &qword_1EBE1F2D8, &qword_1C0997960);
    v35 = v39;
    sub_1C070BA2C(v34, v39, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
    swift_storeEnumTagMultiPayload();
    (*(v38 + 56))(v35, 0, 1, v15);
    v36 = v40;
    swift_beginAccess();
    sub_1C051F9D4(v35, v36 + v28, &qword_1EBE1E800, &qword_1C09933D0);
    return swift_endAccess();
  }
}

uint64_t sub_1C073B1C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2E0, &qword_1C0997968);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v40 = a1;
  sub_1C05149F8(a1 + v28, v14, &qword_1EBE1E800, &qword_1C09933D0);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    sub_1C070BA2C(v14, v21, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C070BA2C(v21, v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1C05145B4(v26, &qword_1EBE1F2E0, &qword_1C0997968);
      v29 = v44;
      sub_1C070BA2C(v19, v44, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
      sub_1C070BA2C(v29, v26, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_1C0752188(&qword_1EBE1ED28, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemInformed);
  v32 = v47;
  sub_1C095D55C();
  if (v32)
  {
    return sub_1C05145B4(v26, &qword_1EBE1F2E0, &qword_1C0997968);
  }

  sub_1C05149F8(v26, v31, &qword_1EBE1F2E0, &qword_1C0997968);
  if ((*(v45 + 48))(v31, 1, v30) == 1)
  {
    sub_1C05145B4(v26, &qword_1EBE1F2E0, &qword_1C0997968);
    return sub_1C05145B4(v31, &qword_1EBE1F2E0, &qword_1C0997968);
  }

  else
  {
    v34 = v42;
    sub_1C070BA2C(v31, v42, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
    if (v41 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v26, &qword_1EBE1F2E0, &qword_1C0997968);
    v35 = v39;
    sub_1C070BA2C(v34, v39, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
    swift_storeEnumTagMultiPayload();
    (*(v38 + 56))(v35, 0, 1, v15);
    v36 = v40;
    swift_beginAccess();
    sub_1C051F9D4(v35, v36 + v28, &qword_1EBE1E800, &qword_1C09933D0);
    return swift_endAccess();
  }
}

uint64_t sub_1C073B7E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2E8, &qword_1C0997970);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v40 = a1;
  sub_1C05149F8(a1 + v28, v14, &qword_1EBE1E800, &qword_1C09933D0);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    sub_1C070BA2C(v14, v21, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C070BA2C(v21, v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1C05145B4(v26, &qword_1EBE1F2E8, &qword_1C0997970);
      v29 = v44;
      sub_1C070BA2C(v19, v44, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
      sub_1C070BA2C(v29, v26, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_1C0752188(&qword_1EBE1ED40, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
  v32 = v47;
  sub_1C095D55C();
  if (v32)
  {
    return sub_1C05145B4(v26, &qword_1EBE1F2E8, &qword_1C0997970);
  }

  sub_1C05149F8(v26, v31, &qword_1EBE1F2E8, &qword_1C0997970);
  if ((*(v45 + 48))(v31, 1, v30) == 1)
  {
    sub_1C05145B4(v26, &qword_1EBE1F2E8, &qword_1C0997970);
    return sub_1C05145B4(v31, &qword_1EBE1F2E8, &qword_1C0997970);
  }

  else
  {
    v34 = v42;
    sub_1C070BA2C(v31, v42, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
    if (v41 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v26, &qword_1EBE1F2E8, &qword_1C0997970);
    v35 = v39;
    sub_1C070BA2C(v34, v39, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
    swift_storeEnumTagMultiPayload();
    (*(v38 + 56))(v35, 0, 1, v15);
    v36 = v40;
    swift_beginAccess();
    sub_1C051F9D4(v35, v36 + v28, &qword_1EBE1E800, &qword_1C09933D0);
    return swift_endAccess();
  }
}

uint64_t sub_1C073BDFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v51 = a4;
  v49 = a2;
  v50 = a3;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v39 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v37 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v37 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2F0, &unk_1C0997978);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v46 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v37 - v25;
  v45 = v6;
  v27 = *(v6 + 56);
  v48 = v5;
  v43 = v27;
  v27(&v37 - v25, 1, 1, v5);
  v28 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v40 = a1;
  sub_1C05149F8(a1 + v28, v14, &qword_1EBE1E800, &qword_1C09933D0);
  v38 = v16;
  v41 = (*(v16 + 48))(v14, 1, v15);
  if (v41 == 1)
  {
    sub_1C05145B4(v14, &qword_1EBE1E800, &qword_1C09933D0);
  }

  else
  {
    sub_1C070BA2C(v14, v21, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C070BA2C(v21, v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1C05145B4(v26, &qword_1EBE1F2F0, &unk_1C0997978);
      v29 = v44;
      sub_1C070BA2C(v19, v44, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
      sub_1C070BA2C(v29, v26, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
      v30 = v48;
      v43(v26, 0, 1, v48);
      goto LABEL_7;
    }

    sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  }

  v30 = v48;
LABEL_7:
  v31 = v46;
  sub_1C0752188(&qword_1EBE1ED58, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemReportedFailure);
  v32 = v47;
  sub_1C095D55C();
  if (v32)
  {
    return sub_1C05145B4(v26, &qword_1EBE1F2F0, &unk_1C0997978);
  }

  sub_1C05149F8(v26, v31, &qword_1EBE1F2F0, &unk_1C0997978);
  if ((*(v45 + 48))(v31, 1, v30) == 1)
  {
    sub_1C05145B4(v26, &qword_1EBE1F2F0, &unk_1C0997978);
    return sub_1C05145B4(v31, &qword_1EBE1F2F0, &unk_1C0997978);
  }

  else
  {
    v34 = v42;
    sub_1C070BA2C(v31, v42, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
    if (v41 != 1)
    {
      sub_1C095D42C();
    }

    sub_1C05145B4(v26, &qword_1EBE1F2F0, &unk_1C0997978);
    v35 = v39;
    sub_1C070BA2C(v34, v39, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
    swift_storeEnumTagMultiPayload();
    (*(v38 + 56))(v35, 0, 1, v15);
    v36 = v40;
    swift_beginAccess();
    sub_1C051F9D4(v35, v36 + v28, &qword_1EBE1E800, &qword_1C09933D0);
    return swift_endAccess();
  }
}

uint64_t sub_1C073C418(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C073C534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void, uint64_t, uint64_t, uint64_t))
{
  v11 = a4(0);
  result = a5(*(v5 + *(v11 + 20)), a1, a2, a3);
  if (!v6)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C073C5B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a2;
  v45 = a4;
  v44 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v38 - v6;
  v7 = sub_1C095D32C();
  v40 = *(v7 - 8);
  v41 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  swift_beginAccess();
  sub_1C05149F8(a1 + v19, v14, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    v21 = v43;
    v20 = v44;
    v22 = v45;
    v23 = v42;
    sub_1C05145B4(v14, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v14, v18, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v25 = v42;
    v24 = v43;
    v20 = v44;
    v26 = v45;
    sub_1C095D6AC();
    v23 = v25;
    result = sub_1C0751DA0(v18, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v25)
    {
      return result;
    }

    v21 = v24;
    v22 = v26;
  }

  v28 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v28, v11, &qword_1EBE1E800, &qword_1C09933D0);
  v29 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v29 - 8) + 48))(v11, 1, v29) == 1)
  {
    goto LABEL_18;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v31 = v23;
      sub_1C073D2B0(a1, v21, v20, v22);
    }

    else
    {
      v31 = v23;
      if (EnumCaseMultiPayload == 4)
      {
        sub_1C073D508(a1, v21, v20, v22);
      }

      else
      {
        sub_1C073D760(a1, v21, v20, v22);
      }
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v31 = v23;
    if (EnumCaseMultiPayload == 1)
    {
      sub_1C073CE00(a1, v21, v20, v22);
    }

    else
    {
      sub_1C073D058(a1, v21, v20, v22);
    }
  }

  else
  {
    v31 = v23;
    sub_1C073CBAC(a1, v21, v20, v22);
  }

  result = sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  if (!v31)
  {
LABEL_18:
    v32 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
    swift_beginAccess();
    v33 = a1 + v32;
    v34 = v39;
    sub_1C05149F8(v33, v39, &qword_1EBE16D68, &unk_1C09933C0);
    v36 = v40;
    v35 = v41;
    if ((*(v40 + 48))(v34, 1, v41) == 1)
    {
      return sub_1C05145B4(v34, &qword_1EBE16D68, &unk_1C09933C0);
    }

    else
    {
      v37 = v38;
      (*(v36 + 32))(v38, v34, v35);
      sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
      sub_1C095D6AC();
      return (*(v36 + 8))(v37, v35);
    }
  }

  return result;
}

uint64_t sub_1C073CBAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v11, v7, &qword_1EBE1E800, &qword_1C09933D0);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1E800, &qword_1C09933D0);
    __break(1u);
  }

  else if (!swift_getEnumCaseMultiPayload())
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    sub_1C0752188(&qword_1EBE1ECE0, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemPrompted);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C073CE00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v11, v7, &qword_1EBE1E800, &qword_1C09933D0);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1E800, &qword_1C09933D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
    sub_1C0752188(&qword_1EBE1ECF8, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemOffered);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C073D058(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v11, v7, &qword_1EBE1E800, &qword_1C09933D0);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1E800, &qword_1C09933D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 2)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
    sub_1C0752188(&qword_1EBE1ED10, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemGaveOptions);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C073D2B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v11, v7, &qword_1EBE1E800, &qword_1C09933D0);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1E800, &qword_1C09933D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 3)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
    sub_1C0752188(&qword_1EBE1ED28, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemInformed);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C073D508(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v11, v7, &qword_1EBE1E800, &qword_1C09933D0);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1E800, &qword_1C09933D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
    sub_1C0752188(&qword_1EBE1ED40, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  __break(1u);
  return result;
}

uint64_t sub_1C073D760(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[5] = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  sub_1C05149F8(a1 + v11, v7, &qword_1EBE1E800, &qword_1C09933D0);
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  if ((*(*(v12 - 8) + 48))(v7, 1, v12) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE1E800, &qword_1C09933D0);
    __break(1u);
  }

  else if (swift_getEnumCaseMultiPayload() == 5)
  {
    sub_1C070BA2C(v7, v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
    sub_1C0752188(&qword_1EBE1ED58, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemReportedFailure);
    sub_1C095D6AC();
    return sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
  }

  result = sub_1C0751DA0(v7, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  __break(1u);
  return result;
}

BOOL sub_1C073D9FC(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v69 = sub_1C095D32C();
  v71 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v66 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  MEMORY[0x1EEE9AC00](v68);
  v79 = &v66 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v78 = &v66 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v66 - v8;
  v75 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v67 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2C0, &qword_1C0997948);
  MEMORY[0x1EEE9AC00](v73);
  v76 = &v66 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E800, &qword_1C09933D0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v70 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v81 = &v66 - v14;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v72 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v66 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v80 = &v66 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v66 - v25;
  v27 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  swift_beginAccess();
  sub_1C05149F8(a1 + v27, v26, &qword_1EBE17420, &qword_1C0993380);
  v28 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__id;
  v29 = v82;
  swift_beginAccess();
  v30 = *(v19 + 56);
  sub_1C05149F8(v26, v21, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05149F8(v29 + v28, &v21[v30], &qword_1EBE17420, &qword_1C0993380);
  v31 = *(v16 + 48);
  if (v31(v21, 1, v15) == 1)
  {

    sub_1C05145B4(v26, &qword_1EBE17420, &qword_1C0993380);
    v32 = a1;
    if (v31(&v21[v30], 1, v15) == 1)
    {
      sub_1C05145B4(v21, &qword_1EBE17420, &qword_1C0993380);
      goto LABEL_8;
    }

LABEL_6:
    v34 = &qword_1EBE16D60;
    v35 = &unk_1C0970430;
    v36 = v21;
LABEL_14:
    sub_1C05145B4(v36, v34, v35);
    goto LABEL_15;
  }

  v32 = a1;
  v33 = v80;
  sub_1C05149F8(v21, v80, &qword_1EBE17420, &qword_1C0993380);
  if (v31(&v21[v30], 1, v15) == 1)
  {

    sub_1C05145B4(v26, &qword_1EBE17420, &qword_1C0993380);
    sub_1C0751DA0(v33, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    goto LABEL_6;
  }

  v37 = v72;
  sub_1C070BA2C(&v21[v30], v72, type metadata accessor for Siri_Nl_Core_Protocol_UUID);

  v38 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)();
  sub_1C0751DA0(v37, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v26, &qword_1EBE17420, &qword_1C0993380);
  sub_1C0751DA0(v33, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v21, &qword_1EBE17420, &qword_1C0993380);
  if ((v38 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v39 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v40 = v81;
  sub_1C05149F8(v32 + v39, v81, &qword_1EBE1E800, &qword_1C09933D0);
  v41 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__systemDialogAct;
  swift_beginAccess();
  v42 = *(v73 + 48);
  v43 = v76;
  sub_1C05149F8(v40, v76, &qword_1EBE1E800, &qword_1C09933D0);
  sub_1C05149F8(v29 + v41, v43 + v42, &qword_1EBE1E800, &qword_1C09933D0);
  v44 = *(v74 + 48);
  v45 = v75;
  if (v44(v43, 1, v75) != 1)
  {
    v50 = v70;
    sub_1C05149F8(v43, v70, &qword_1EBE1E800, &qword_1C09933D0);
    v51 = v44(v43 + v42, 1, v45);
    v47 = v79;
    v52 = v78;
    v49 = v77;
    if (v51 == 1)
    {
      sub_1C05145B4(v81, &qword_1EBE1E800, &qword_1C09933D0);
      sub_1C0751DA0(v50, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
      goto LABEL_13;
    }

    v54 = v43 + v42;
    v55 = v67;
    sub_1C070BA2C(v54, v67, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    LODWORD(v80) = _s12SiriOntology0A33_Nl_Core_Protocol_SystemDialogActV06OneOf_fgH0O2eeoiySbAE_AEtFZ_0(v50, v55);
    sub_1C0751DA0(v55, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C05145B4(v81, &qword_1EBE1E800, &qword_1C09933D0);
    sub_1C0751DA0(v50, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    sub_1C05145B4(v43, &qword_1EBE1E800, &qword_1C09933D0);
    v48 = v52;
    if (v80)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_1C05145B4(v40, &qword_1EBE1E800, &qword_1C09933D0);
  v46 = v44(v43 + v42, 1, v45);
  v47 = v79;
  v48 = v78;
  v49 = v77;
  if (v46 != 1)
  {
LABEL_13:
    v34 = &qword_1EBE1F2C0;
    v35 = &qword_1C0997948;
    v36 = v43;
    goto LABEL_14;
  }

  sub_1C05145B4(v43, &qword_1EBE1E800, &qword_1C09933D0);
LABEL_19:
  v56 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  sub_1C05149F8(v32 + v56, v49, &qword_1EBE16D68, &unk_1C09933C0);
  v57 = OBJC_IVAR____TtCV12SiriOntology37Siri_Nl_Core_Protocol_SystemDialogActP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__renderedText;
  swift_beginAccess();
  v58 = *(v68 + 48);
  sub_1C05149F8(v49, v47, &qword_1EBE16D68, &unk_1C09933C0);
  sub_1C05149F8(v29 + v57, v47 + v58, &qword_1EBE16D68, &unk_1C09933C0);
  v59 = *(v71 + 48);
  v60 = v69;
  if (v59(v47, 1, v69) == 1)
  {

    sub_1C05145B4(v49, &qword_1EBE16D68, &unk_1C09933C0);
    if (v59(v47 + v58, 1, v60) == 1)
    {
      sub_1C05145B4(v47, &qword_1EBE16D68, &unk_1C09933C0);
      return 1;
    }

    goto LABEL_24;
  }

  sub_1C05149F8(v47, v48, &qword_1EBE16D68, &unk_1C09933C0);
  if (v59(v47 + v58, 1, v60) == 1)
  {

    sub_1C05145B4(v49, &qword_1EBE16D68, &unk_1C09933C0);
    (*(v71 + 8))(v48, v60);
LABEL_24:
    sub_1C05145B4(v47, &qword_1EBE16D70, &qword_1C0970440);
    return 0;
  }

  v61 = v71;
  v62 = v47 + v58;
  v63 = v66;
  (*(v71 + 32))(v66, v62, v60);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680], MEMORY[0x1E69D2688]);
  v64 = sub_1C095D73C();

  v65 = *(v61 + 8);
  v65(v63, v60);
  sub_1C05145B4(v49, &qword_1EBE16D68, &unk_1C09933C0);
  v65(v48, v60);
  sub_1C05145B4(v47, &qword_1EBE16D68, &unk_1C09933C0);
  return (v64 & 1) != 0;
}

uint64_t sub_1C073E6C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1E0, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogAct);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C073E768(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E870, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogAct);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073E7D4(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E870, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemDialogAct);

  return sub_1C095D5AC();
}

uint64_t sub_1C073E8B0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E600);
  __swift_project_value_buffer(v0, qword_1EBE1E600);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "target";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C073EAE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C073EB98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_SystemPrompted.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_1C05149F8(v4 + v18, v12, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v19 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v17 + 24), v7, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v21 = v24;
    sub_1C070BA2C(v7, v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v22 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v22)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C073F100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1D8, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemPrompted);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C073F1A0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ECE0, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemPrompted);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073F20C(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1ECE0, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemPrompted);

  return sub_1C095D5AC();
}

uint64_t sub_1C073F318(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  while (1)
  {
    result = sub_1C095D41C();
    if (v5 || (v12 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v7, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C073F39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDialogAct);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_SystemOffered.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[1] = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E810, &qword_1C09933D8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  sub_1C05149F8(v3 + *(v11 + 20), v6, &qword_1EBE1E810, &qword_1C09933D8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE1E810, &qword_1C09933D8);
  }

  else
  {
    sub_1C070BA2C(v6, v10, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
    sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDialogAct);
    v12 = v14[3];
    sub_1C095D6AC();
    result = sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
    if (v12)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C073F740(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1D0, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemOffered);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C073F7E0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ECF8, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemOffered);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073F84C(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1ECF8, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemOffered);

  return sub_1C095D5AC();
}

uint64_t sub_1C073F908(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, unsigned int *a5)
{
  v9 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v9, a2);
  __swift_project_value_buffer(v9, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v10 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v11 = (*(*v10 + 80) + 32) & ~*(*v10 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1C096E0C0;
  v13 = v12 + v11 + v10[14];
  *(v12 + v11) = 1;
  *v13 = a3;
  *(v13 + 8) = a4;
  *(v13 + 16) = 2;
  v14 = *a5;
  v15 = sub_1C095D6BC();
  (*(*(v15 - 8) + 104))(v13, v14, v15);
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_SystemGaveOptions.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1C095D41C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
        sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDialogAct);
        sub_1C095D54C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t Siri_Nl_Core_Protocol_SystemGaveOptions.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0), sub_1C0752188(&qword_1EBE1E8C8, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UserDialogAct), result = sub_1C095D69C(), !v4))
  {
    type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0);
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C073FCF4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1C8, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemGaveOptions);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C073FD94(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ED10, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemGaveOptions);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C073FE00(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1ED10, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemGaveOptions);

  return sub_1C095D5AC();
}

uint64_t sub_1C073FE7C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1C055C1E0(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C073FF40()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E648);
  __swift_project_value_buffer(v0, qword_1EBE1E648);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "entities";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0740160(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = v4;
  result = sub_1C095D41C();
  if (!v5)
  {
    while ((v12 & 1) == 0)
    {
      if (result == 1)
      {
        a4(a1, v7, a2, a3);
      }

      else if (result == 2)
      {
        type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
        sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
        sub_1C095D54C();
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0740268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0740348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v17 = a1;
  v18 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a4(0);
  sub_1C05149F8(v4 + *(v16 + 24), v8, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE17420, &qword_1C0993380);
    v13 = v19;
  }

  else
  {
    sub_1C070BA2C(v8, v12, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v13 = v19;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v13)
    {
      return result;
    }
  }

  if (!*(*v4 + 16))
  {
    return sub_1C095D36C();
  }

  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  result = sub_1C095D69C();
  if (!v13)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C07406A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1C0, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemInformed);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0740748(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ED28, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemInformed);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07407B4(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1ED28, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemInformed);

  return sub_1C095D5AC();
}

uint64_t sub_1C074087C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E660);
  __swift_project_value_buffer(v0, qword_1EBE1E660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "task";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0740AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0740B64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_SystemReportedSuccess.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v29 = a2;
  v30 = a3;
  v28 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v23 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v24 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  v18 = *(v17 + 20);
  v27 = v4;
  sub_1C05149F8(v4 + v18, v12, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_1C05145B4(v12, &qword_1EBE17420, &qword_1C0993380);
  }

  else
  {
    sub_1C070BA2C(v12, v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v19 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v19)
    {
      return result;
    }

    v31 = 0;
  }

  sub_1C05149F8(v27 + *(v17 + 24), v7, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v25 + 48))(v7, 1, v26) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v21 = v24;
    sub_1C070BA2C(v7, v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v22 = v31;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v21, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v22)
    {
      return result;
    }
  }

  return sub_1C095D36C();
}

uint64_t sub_1C07410CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1B8, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemReportedSuccess);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C074116C(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ED40, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemReportedSuccess);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07411D8(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1ED40, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemReportedSuccess);

  return sub_1C095D5AC();
}

uint64_t sub_1C07412A0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E678);
  __swift_project_value_buffer(v0, qword_1EBE1E678);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "task";
  *(v11 + 8) = 4;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C07414E4()
{
  type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v5 = *(*(v4 - 8) + 56);
  v5(v0 + v3, 1, 1, v4);
  result = (v5)(v0 + OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task, 1, 1, v4);
  qword_1EBE1E690 = v0;
  return result;
}

uint64_t sub_1C07415E8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19[-v7];
  v9 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v13 = *(*(v12 - 8) + 56);
  v13(v1 + v11, 1, 1, v12);
  v14 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  v13(v1 + OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task, 1, 1, v12);
  v15 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  swift_beginAccess();
  sub_1C05149F8(a1 + v15, v8, &qword_1EBE17420, &qword_1C0993380);
  swift_beginAccess();
  sub_1C051F9D4(v8, v1 + v9, &qword_1EBE17420, &qword_1C0993380);
  swift_endAccess();
  v16 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  sub_1C05149F8(a1 + v16, v5, &qword_1EBE17400, &unk_1C0970CA0);
  swift_beginAccess();
  sub_1C051F9D4(v5, v1 + v11, &qword_1EBE17400, &unk_1C0970CA0);
  swift_endAccess();
  v17 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  sub_1C05149F8(a1 + v17, v5, &qword_1EBE17400, &unk_1C0970CA0);

  swift_beginAccess();
  sub_1C051F9D4(v5, v1 + v14, &qword_1EBE17400, &unk_1C0970CA0);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C07418CC()
{
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C05145B4(v0 + OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task, &qword_1EBE17400, &unk_1C0970CA0);

  return swift_deallocClassInstance();
}

uint64_t sub_1C07419F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(uint64_t), uint64_t (*a7)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v10 = v7;
  v14 = *(a4(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v7 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v17 = *(v7 + v14);
    a5(0);
    swift_allocObject();
    v16 = a6(v17);
    *(v10 + v14) = v16;
  }

  return a7(v16, a1, a2, a3);
}

uint64_t sub_1C0741AC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C0741D38(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C0741C5C(a2, a1, a3, a4);
        break;
      case 1:
        sub_1C0741B80(a2, a1, a3, a4);
        break;
    }
  }

  return result;
}

uint64_t sub_1C0741B80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0741C5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0741D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C095D55C();
  return swift_endAccess();
}

uint64_t sub_1C0741E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = a3;
  v46 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v40 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v41 = &v37 - v8;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v42 = *(v9 - 8);
  v43 = v9;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v38 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v39 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v37 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v37 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  swift_beginAccess();
  v21 = a1 + v20;
  v22 = a1;
  sub_1C05149F8(v21, v15, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
    v23 = v44;
  }

  else
  {
    sub_1C070BA2C(v15, v19, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v24 = v44;
    sub_1C095D6AC();
    v23 = v24;
    result = sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v24)
    {
      return result;
    }
  }

  v26 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  v27 = a1 + v26;
  v28 = v41;
  sub_1C05149F8(v27, v41, &qword_1EBE17400, &unk_1C0970CA0);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v31 = v28;
    v32 = v39;
    sub_1C070BA2C(v31, v39, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C095D6AC();
    result = sub_1C0751DA0(v32, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v23)
    {
      return result;
    }
  }

  v33 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  v34 = v22 + v33;
  v35 = v40;
  sub_1C05149F8(v34, v40, &qword_1EBE17400, &unk_1C0970CA0);
  if (v30(v35, 1, v29) == 1)
  {
    return sub_1C05145B4(v35, &qword_1EBE17400, &unk_1C0970CA0);
  }

  v36 = v38;
  sub_1C070BA2C(v35, v38, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C095D6AC();
  return sub_1C0751DA0(v36, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
}

BOOL sub_1C07423D4(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v77 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v70 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  v4 = MEMORY[0x1EEE9AC00](v79);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v75 = &v69 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v69 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v73 = &v69 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v72 = &v69 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v80 = &v69 - v14;
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v74 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v19 = v18 - 8;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v69 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v78 = (&v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v69 - v25;
  v27 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  swift_beginAccess();
  sub_1C05149F8(a1 + v27, v26, &qword_1EBE17420, &qword_1C0993380);
  v28 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__taskID;
  v29 = v81;
  swift_beginAccess();
  v30 = *(v19 + 56);
  sub_1C05149F8(v26, v21, &qword_1EBE17420, &qword_1C0993380);
  v31 = v29 + v28;
  v32 = v29;
  sub_1C05149F8(v31, &v21[v30], &qword_1EBE17420, &qword_1C0993380);
  v33 = *(v16 + 48);
  if (v33(v21, 1, v15) == 1)
  {

    sub_1C05145B4(v26, &qword_1EBE17420, &qword_1C0993380);
    if (v33(&v21[v30], 1, v15) == 1)
    {
      sub_1C05145B4(v21, &qword_1EBE17420, &qword_1C0993380);
      goto LABEL_8;
    }

LABEL_6:
    v36 = &qword_1EBE16D60;
    v37 = &unk_1C0970430;
LABEL_14:
    sub_1C05145B4(v21, v36, v37);
    goto LABEL_15;
  }

  v34 = a1;
  v35 = v78;
  sub_1C05149F8(v21, v78, &qword_1EBE17420, &qword_1C0993380);
  if (v33(&v21[v30], 1, v15) == 1)
  {

    sub_1C05145B4(v26, &qword_1EBE17420, &qword_1C0993380);
    sub_1C0751DA0(v35, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    goto LABEL_6;
  }

  v38 = v74;
  sub_1C070BA2C(&v21[v30], v74, type metadata accessor for Siri_Nl_Core_Protocol_UUID);

  v39 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)();
  sub_1C0751DA0(v38, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v26, &qword_1EBE17420, &qword_1C0993380);
  v40 = v35;
  a1 = v34;
  sub_1C0751DA0(v40, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v21, &qword_1EBE17420, &qword_1C0993380);
  if ((v39 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_8:
  v41 = v32;
  v42 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  v43 = v80;
  sub_1C05149F8(a1 + v42, v80, &qword_1EBE17400, &unk_1C0970CA0);
  v44 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__reason;
  swift_beginAccess();
  v45 = *(v79 + 48);
  v21 = v75;
  sub_1C05149F8(v43, v75, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C05149F8(v41 + v44, &v21[v45], &qword_1EBE17400, &unk_1C0970CA0);
  v46 = *(v76 + 48);
  v47 = v77;
  if (v46(v21, 1, v77) != 1)
  {
    v48 = v72;
    sub_1C05149F8(v21, v72, &qword_1EBE17400, &unk_1C0970CA0);
    if (v46(&v21[v45], 1, v47) == 1)
    {
      sub_1C05145B4(v80, &qword_1EBE17400, &unk_1C0970CA0);
      sub_1C0751DA0(v48, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
      goto LABEL_13;
    }

    v78 = v46;
    v50 = &v21[v45];
    v51 = v70;
    sub_1C070BA2C(v50, v70, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    v52 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v48, v51);
    sub_1C0751DA0(v51, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C05145B4(v80, &qword_1EBE17400, &unk_1C0970CA0);
    sub_1C0751DA0(v48, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C05145B4(v21, &qword_1EBE17400, &unk_1C0970CA0);
    if (v52)
    {
      goto LABEL_19;
    }

LABEL_15:

    return 0;
  }

  sub_1C05145B4(v43, &qword_1EBE17400, &unk_1C0970CA0);
  if (v46(&v21[v45], 1, v47) != 1)
  {
LABEL_13:
    v36 = &qword_1EBE16DE8;
    v37 = &qword_1C09704C0;
    goto LABEL_14;
  }

  v78 = v46;
  sub_1C05145B4(v21, &qword_1EBE17400, &unk_1C0970CA0);
LABEL_19:
  v53 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  v54 = a1 + v53;
  v55 = v73;
  sub_1C05149F8(v54, v73, &qword_1EBE17400, &unk_1C0970CA0);
  v56 = OBJC_IVAR____TtCV12SiriOntology43Siri_Nl_Core_Protocol_SystemReportedFailureP33_C00432D0398FDC59A6695A04F384D31813_StorageClass__task;
  swift_beginAccess();
  v57 = v47;
  v58 = *(v79 + 48);
  v59 = v71;
  sub_1C05149F8(v55, v71, &qword_1EBE17400, &unk_1C0970CA0);
  v60 = v41 + v56;
  v61 = v58;
  v62 = v59 + v58;
  v63 = v57;
  sub_1C05149F8(v60, v62, &qword_1EBE17400, &unk_1C0970CA0);
  v64 = v57;
  v65 = v78;
  if (v78(v59, 1, v64) == 1)
  {

    sub_1C05145B4(v55, &qword_1EBE17400, &unk_1C0970CA0);
    if (v65(v59 + v61, 1, v63) == 1)
    {
      sub_1C05145B4(v59, &qword_1EBE17400, &unk_1C0970CA0);
      return 1;
    }

    goto LABEL_24;
  }

  v66 = v69;
  sub_1C05149F8(v59, v69, &qword_1EBE17400, &unk_1C0970CA0);
  if (v65(v59 + v61, 1, v63) == 1)
  {

    sub_1C05145B4(v73, &qword_1EBE17400, &unk_1C0970CA0);
    sub_1C0751DA0(v66, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
LABEL_24:
    sub_1C05145B4(v59, &qword_1EBE16DE8, &qword_1C09704C0);
    return 0;
  }

  v67 = v70;
  sub_1C070BA2C(v59 + v61, v70, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v68 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v66, v67);

  sub_1C0751DA0(v67, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C05145B4(v73, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C0751DA0(v66, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C05145B4(v59, &qword_1EBE17400, &unk_1C0970CA0);
  return (v68 & 1) != 0;
}

double sub_1C0742F10@<D0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t *a3@<X3>, uint64_t a5@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v9 = *(a1 + 20);
  if (*a2 != -1)
  {
    swift_once();
  }

  *(a5 + v9) = *a3;

  return result;
}

uint64_t sub_1C0742FD8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1B0, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemReportedFailure);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0743078(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1ED58, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemReportedFailure);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07430E4(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1ED58, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure, &protocol conformance descriptor for Siri_Nl_Core_Protocol_SystemReportedFailure);

  return sub_1C095D5AC();
}

uint64_t sub_1C07431C0()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E698);
  __swift_project_value_buffer(v0, qword_1EBE1E698);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "group_id";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "seq";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_RRGroupIdentifier.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C0743444(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C095D48C();
    }
  }

  return result;
}

uint64_t sub_1C0743444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_RRGroupIdentifier.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v18 = a2;
  v17 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - v7;
  v9 = sub_1C095D32C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v16 = v5;
  sub_1C05149F8(v5 + *(v15 + 24), v8, &qword_1EBE16D68, &unk_1C09933C0);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C05145B4(v8, &qword_1EBE16D68, &unk_1C09933C0);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
    sub_1C095D6AC();
    if (v4)
    {
      return (*(v10 + 8))(v12, v9);
    }

    (*(v10 + 8))(v12, v9);
  }

  if (!*v16)
  {
    return sub_1C095D36C();
  }

  result = sub_1C095D62C();
  if (!v4)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C07437E4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 24);
  v5 = sub_1C095D32C();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C07438B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1A8, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RRGroupIdentifier);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0743954(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E9C8, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RRGroupIdentifier);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07439C0(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E9C8, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RRGroupIdentifier);

  return sub_1C095D5AC();
}

uint64_t sub_1C0743A5C()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E6B0);
  __swift_project_value_buffer(v0, qword_1EBE1E6B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "key";
  *(v6 + 8) = 3;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "value";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t sub_1C0743C88(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t), void (*a5)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v9 = v5;
  while (1)
  {
    result = sub_1C095D41C();
    if (v6 || (v14 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      a4(a1, v9, a2, a3);
    }

    else if (result == 2)
    {
      a5(a1, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C0743D34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
  return sub_1C095D55C();
}

uint64_t sub_1C0743DE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_RRAnnotation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a1;
  v29 = a3;
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = sub_1C095D32C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v24 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  v17 = *(v16 + 20);
  v25 = v3;
  sub_1C05149F8(v3 + v17, v9, &qword_1EBE16D68, &unk_1C09933C0);
  v18 = *(v11 + 48);
  if (v18(v9, 1, v10) == 1)
  {
    sub_1C05145B4(v9, &qword_1EBE16D68, &unk_1C09933C0);
    v19 = v26;
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
    v20 = v26;
    sub_1C095D6AC();
    v19 = v20;
    if (v20)
    {
      return (*(v11 + 8))(v15, v10);
    }

    (*(v11 + 8))(v15, v10);
  }

  sub_1C05149F8(v25 + *(v16 + 24), v7, &qword_1EBE16D68, &unk_1C09933C0);
  if (v18(v7, 1, v10) != 1)
  {
    v21 = v24;
    (*(v11 + 32))(v24, v7, v10);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
    sub_1C095D6AC();
    if (!v19)
    {
      (*(v11 + 8))(v21, v10);
      return sub_1C095D36C();
    }

    v15 = v21;
    return (*(v11 + 8))(v15, v10);
  }

  sub_1C05145B4(v7, &qword_1EBE16D68, &unk_1C09933C0);
  return sub_1C095D36C();
}

uint64_t sub_1C07442A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 20);
  v5 = sub_1C095D32C();
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v6 = a2 + *(a1 + 24);

  return v8(v6, 1, 1, v5);
}

uint64_t sub_1C07443A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F1A0, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RRAnnotation);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0744448(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E9C0, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RRAnnotation);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07444B4(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E9C0, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RRAnnotation);

  return sub_1C095D5AC();
}

uint64_t sub_1C0744550()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E6C8);
  __swift_project_value_buffer(v0, qword_1EBE1E6C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C09787B0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "entity";
  *(v5 + 8) = 6;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E0];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "score";
  *(v9 + 8) = 5;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "entity_id";
  *(v11 + 1) = 9;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "app_bundle_id";
  *(v13 + 1) = 13;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "group_id";
  *(v15 + 1) = 8;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "annotations";
  *(v17 + 1) = 11;
  v17[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_1C0744ABC(a1, v5, a2, a3);
            break;
          case 5:
            sub_1C0744B70(a1, v5, a2, a3);
            break;
          case 6:
            type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
            sub_1C0752188(&qword_1EBE1E9C0, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RRAnnotation);
            sub_1C095D54C();
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1C0744A08(a1, v5, a2, a3);
            break;
          case 2:
            sub_1C0745E88(a1, v5, a2, a3, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate);
            break;
          case 3:
            sub_1C0737A78(a1, v5, a2, a3, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate);
            break;
        }
      }

      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0744A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t sub_1C0744ABC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
  return sub_1C095D55C();
}

uint64_t sub_1C0744B70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  sub_1C0752188(&qword_1EBE1E9C8, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_EntityCandidate.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v4 = v3;
  v64 = a1;
  v65 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v48 - v6;
  v53 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v49 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v51 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v48 - v11;
  v12 = sub_1C095D32C();
  v57 = *(v12 - 8);
  v58 = v12;
  v13 = MEMORY[0x1EEE9AC00](v12);
  v60 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v48 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v48 - v17;
  v19 = sub_1C095D2EC();
  v59 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v54 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v48 - v22;
  v24 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v48 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  v28 = v66[6];
  v63 = v4;
  sub_1C05149F8(v4 + v28, v23, &qword_1EBE17400, &unk_1C0970CA0);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1C05145B4(v23, &qword_1EBE17400, &unk_1C0970CA0);
    v29 = v61;
  }

  else
  {
    sub_1C070BA2C(v23, v27, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    v30 = v61;
    sub_1C095D6AC();
    v29 = v30;
    result = sub_1C0751DA0(v27, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v30)
    {
      return result;
    }
  }

  sub_1C05149F8(v63 + v66[7], v18, &qword_1EBE1E830, &qword_1C09933E0);
  v32 = v59;
  v33 = (*(v59 + 48))(v18, 1, v19);
  v34 = v60;
  if (v33 == 1)
  {
    sub_1C05145B4(v18, &qword_1EBE1E830, &qword_1C09933E0);
  }

  else
  {
    v35 = v54;
    (*(v32 + 32))();
    sub_1C0752188(&qword_1EBE1E9D0, MEMORY[0x1E69D2668], MEMORY[0x1E69D2660]);
    sub_1C095D6AC();
    if (v29)
    {
      return (*(v32 + 8))(v35, v19);
    }

    (*(v32 + 8))(v35, v19);
  }

  v36 = v57;
  v37 = v55;
  sub_1C05149F8(v63 + v66[8], v55, &qword_1EBE16D68, &unk_1C09933C0);
  v38 = *(v36 + 48);
  v39 = v58;
  v40 = v38(v37, 1, v58);
  v41 = v56;
  if (v40 == 1)
  {
    sub_1C05145B4(v37, &qword_1EBE16D68, &unk_1C09933C0);
  }

  else
  {
    (*(v36 + 32))(v56, v37, v39);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
    sub_1C095D6AC();
    if (v29)
    {
      return (*(v36 + 8))(v41, v39);
    }

    (*(v36 + 8))(v41, v39);
    v34 = v60;
  }

  v42 = v63;
  v43 = v51;
  sub_1C05149F8(v63 + v66[9], v51, &qword_1EBE16D68, &unk_1C09933C0);
  if (v38(v43, 1, v39) == 1)
  {
    sub_1C05145B4(v43, &qword_1EBE16D68, &unk_1C09933C0);
    v45 = v52;
    v44 = v53;
  }

  else
  {
    (*(v36 + 32))(v34, v43, v39);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
    v46 = v36;
    sub_1C095D6AC();
    v45 = v52;
    v44 = v53;
    if (v29)
    {
      return (*(v46 + 8))(v34, v39);
    }

    (*(v46 + 8))(v34, v39);
  }

  sub_1C05149F8(v42 + v66[10], v45, &qword_1EBE1E838, &qword_1C09933E8);
  if ((*(v50 + 48))(v45, 1, v44) == 1)
  {
    sub_1C05145B4(v45, &qword_1EBE1E838, &qword_1C09933E8);
  }

  else
  {
    v47 = v49;
    sub_1C070BA2C(v45, v49, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    sub_1C0752188(&qword_1EBE1E9C8, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    sub_1C095D6AC();
    result = sub_1C0751DA0(v47, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    if (v29)
    {
      return result;
    }
  }

  if (!*(*v42 + 16))
  {
    return sub_1C095D36C();
  }

  type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  sub_1C0752188(&qword_1EBE1E9C0, type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RRAnnotation);
  result = sub_1C095D69C();
  if (!v29)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C0745690@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = a1[6];
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = sub_1C095D2EC();
  (*(*(v7 - 8) + 56))(&a2[v6], 1, 1, v7);
  v8 = a1[8];
  v9 = sub_1C095D32C();
  v10 = *(*(v9 - 8) + 56);
  v10(&a2[v8], 1, 1, v9);
  v10(&a2[a1[9]], 1, 1, v9);
  v11 = a1[10];
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(&a2[v11], 1, 1, v12);
}

uint64_t sub_1C0745868(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F198, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate, &protocol conformance descriptor for Siri_Nl_Core_Protocol_EntityCandidate);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0745908(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E868, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate, &protocol conformance descriptor for Siri_Nl_Core_Protocol_EntityCandidate);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0745974(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E868, type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate, &protocol conformance descriptor for Siri_Nl_Core_Protocol_EntityCandidate);

  return sub_1C095D5AC();
}

uint64_t sub_1C0745A10()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E6E0);
  __swift_project_value_buffer(v0, qword_1EBE1E6E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971210;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "task_id";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "task";
  *(v10 + 1) = 4;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "score";
  *(v11 + 8) = 5;
  *(v11 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_Task.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        sub_1C0745E88(a1, v5, a2, a3, type metadata accessor for Siri_Nl_Core_Protocol_Task);
        break;
      case 2:
        sub_1C0745DD4(a1, v5, a2, a3);
        break;
      case 1:
        sub_1C0745D20(a1, v5, a2, a3);
        break;
    }
  }

  return result;
}

uint64_t sub_1C0745D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t sub_1C0745DD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t sub_1C0745E88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  sub_1C095D2EC();
  sub_1C0752188(&qword_1EBE1E9D0, MEMORY[0x1E69D2668], MEMORY[0x1E69D2660]);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_Task.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a1;
  v4 = v3;
  v44 = a3;
  v42 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v32 - v6;
  v7 = sub_1C095D2EC();
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v38 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v36 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v12 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v33 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v32 - v15;
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Siri_Nl_Core_Protocol_Task(0);
  v21 = v43[5];
  v39 = v4;
  sub_1C05149F8(v4 + v21, v16, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    sub_1C05145B4(v16, &qword_1EBE17420, &qword_1C0993380);
    v22 = v40;
  }

  else
  {
    sub_1C070BA2C(v16, v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v23 = v40;
    sub_1C095D6AC();
    v22 = v23;
    result = sub_1C0751DA0(v20, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v23)
    {
      return result;
    }
  }

  v25 = v39;
  sub_1C05149F8(v39 + v43[6], v11, &qword_1EBE17400, &unk_1C0970CA0);
  v26 = (*(v12 + 48))(v11, 1, v36);
  v28 = v37;
  v27 = v38;
  if (v26 == 1)
  {
    sub_1C05145B4(v11, &qword_1EBE17400, &unk_1C0970CA0);
  }

  else
  {
    v29 = v33;
    sub_1C070BA2C(v11, v33, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
    sub_1C095D6AC();
    result = sub_1C0751DA0(v29, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    if (v22)
    {
      return result;
    }
  }

  sub_1C05149F8(v25 + v43[7], v28, &qword_1EBE1E830, &qword_1C09933E0);
  v31 = v34;
  v30 = v35;
  if ((*(v34 + 48))(v28, 1, v35) == 1)
  {
    sub_1C05145B4(v28, &qword_1EBE1E830, &qword_1C09933E0);
  }

  else
  {
    (*(v31 + 32))(v27, v28, v30);
    sub_1C0752188(&qword_1EBE1E9D0, MEMORY[0x1E69D2668], MEMORY[0x1E69D2660]);
    sub_1C095D6AC();
    if (v22)
    {
      return (*(v31 + 8))(v27, v30);
    }

    (*(v31 + 8))(v27, v30);
  }

  return sub_1C095D36C();
}

uint64_t sub_1C074659C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = a1[5];
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = a1[6];
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = a1[7];
  v9 = sub_1C095D2EC();
  v10 = *(*(v9 - 8) + 56);

  return v10(a2 + v8, 1, 1, v9);
}

uint64_t sub_1C07466F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F190, type metadata accessor for Siri_Nl_Core_Protocol_Task, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Task);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0746790(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Task);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C07467FC(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E860, type metadata accessor for Siri_Nl_Core_Protocol_Task, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Task);

  return sub_1C095D5AC();
}

uint64_t sub_1C0746898()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E6F8);
  __swift_project_value_buffer(v0, qword_1EBE1E6F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C096E0D0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "rewritten_utterance";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E8];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "score";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_RewrittenUtterance.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C095D41C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C0746B1C(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1C095D4EC();
    }
  }

  return result;
}

uint64_t sub_1C0746B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0);
  sub_1C095D32C();
  sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_RewrittenUtterance.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v18 = a1;
  v19 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1C095D32C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0) + 24);
  v17 = v4;
  sub_1C05149F8(v4 + v12, v7, &qword_1EBE16D68, &unk_1C09933C0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1C05145B4(v7, &qword_1EBE16D68, &unk_1C09933C0);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1C0752188(&qword_1EBE1E888, MEMORY[0x1E69D2680], MEMORY[0x1E69D2678]);
    v13 = v20;
    sub_1C095D6AC();
    v20 = v13;
    if (v13)
    {
      return (*(v9 + 8))(v11, v8);
    }

    (*(v9 + 8))(v11, v8);
  }

  v15 = v20;
  if (*v17 == 0.0)
  {
    return sub_1C095D36C();
  }

  result = sub_1C095D65C();
  if (!v15)
  {
    return sub_1C095D36C();
  }

  return result;
}

uint64_t sub_1C0746EBC@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 24);
  v5 = sub_1C095D32C();
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C0746F8C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F188, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RewrittenUtterance);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C074702C(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E9F8, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RewrittenUtterance);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0747098(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E9F8, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RewrittenUtterance);

  return sub_1C095D5AC();
}

uint64_t sub_1C0747134()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E710);
  __swift_project_value_buffer(v0, qword_1EBE1E710);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971220;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "id";
  *(v6 + 8) = 2;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "utterance";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "probability";
  *(v12 + 1) = 11;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "asr_tokens";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "rewritten_utterances";
  *(v15 + 8) = 20;
  *(v15 + 16) = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_AsrHypothesis.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 2)
      {
        if (result == 1)
        {
          sub_1C0747598(a1, v5, a2, a3);
        }

        else if (result == 2)
        {
          sub_1C095D50C();
        }
      }

      else
      {
        switch(result)
        {
          case 3:
            sub_1C095D4EC();
            goto LABEL_5;
          case 4:
            v11 = v4;
            type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0);
            sub_1C0752188(&qword_1EBE1E9F0, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation, &protocol conformance descriptor for Siri_Nl_Core_Protocol_AsrTokenInformation);
            break;
          case 5:
            v11 = v4;
            type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0);
            sub_1C0752188(&qword_1EBE1E9F8, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RewrittenUtterance);
            break;
          default:
            goto LABEL_5;
        }

        v4 = v11;
        sub_1C095D54C();
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0747598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_AsrHypothesis.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0);
  v18 = v3;
  sub_1C05149F8(v3 + *(v17 + 36), v6, &qword_1EBE17420, &qword_1C0993380);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1C05145B4(v6, &qword_1EBE17420, &qword_1C0993380);
    v11 = v20;
  }

  else
  {
    sub_1C070BA2C(v6, v10, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    sub_1C0752188(&qword_1EBE18230, type metadata accessor for Siri_Nl_Core_Protocol_UUID, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UUID);
    v11 = v20;
    sub_1C095D6AC();
    result = sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    if (v11)
    {
      return result;
    }
  }

  v13 = v18;
  v14 = *(v18 + 1);
  v15 = HIBYTE(v14) & 0xF;
  if ((v14 & 0x2000000000000000) == 0)
  {
    v15 = *v18 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15 || (result = sub_1C095D66C(), !v11))
  {
    if (v13[2] == 0.0 || (result = sub_1C095D65C(), !v11))
    {
      if (!*(*(v13 + 3) + 16) || (type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0), sub_1C0752188(&qword_1EBE1E9F0, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation, &protocol conformance descriptor for Siri_Nl_Core_Protocol_AsrTokenInformation), result = sub_1C095D69C(), !v11))
      {
        if (!*(*(v13 + 4) + 16))
        {
          return sub_1C095D36C();
        }

        type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0);
        sub_1C0752188(&qword_1EBE1E9F8, type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance, &protocol conformance descriptor for Siri_Nl_Core_Protocol_RewrittenUtterance);
        result = sub_1C095D69C();
        if (!v11)
        {
          return sub_1C095D36C();
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C0747A3C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  v4 = MEMORY[0x1E69E7CC0];
  *(a2 + 2) = 0;
  *(a2 + 3) = v4;
  *(a2 + 4) = v4;
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v5 = *(a1 + 36);
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(&a2[v5], 1, 1, v6);
}

uint64_t sub_1C0747B20(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F180, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis, &protocol conformance descriptor for Siri_Nl_Core_Protocol_AsrHypothesis);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C0747BC0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1EDC0, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis, &protocol conformance descriptor for Siri_Nl_Core_Protocol_AsrHypothesis);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0747C2C(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1EDC0, type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis, &protocol conformance descriptor for Siri_Nl_Core_Protocol_AsrHypothesis);

  return sub_1C095D5AC();
}

uint64_t sub_1C0747CC8()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E728);
  __swift_project_value_buffer(v0, qword_1EBE1E728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1C0993350;
  v4 = v28 + v3;
  v5 = v28 + v3 + v1[14];
  *(v28 + v3) = 1;
  *v5 = "post_itn_text";
  *(v5 + 8) = 13;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69D26E8];
  v7 = sub_1C095D6BC();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "phone_sequence";
  *(v9 + 8) = 14;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "ipa_phone_sequence";
  *(v11 + 1) = 18;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "add_space_after";
  *(v13 + 1) = 15;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "remove_space_after";
  *(v15 + 1) = 18;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "remove_space_before";
  *(v17 + 1) = 19;
  v17[16] = 2;
  v8();
  v18 = (v4 + 6 * v2);
  v19 = v18 + v1[14];
  *v18 = 7;
  *v19 = "confidence_score";
  *(v19 + 1) = 16;
  v19[16] = 2;
  v8();
  v20 = (v4 + 7 * v2);
  v21 = v20 + v1[14];
  *v20 = 8;
  *v21 = "begin_index";
  *(v21 + 1) = 11;
  v21[16] = 2;
  v8();
  v22 = v4 + 8 * v2 + v1[14];
  *(v4 + 8 * v2) = 9;
  *v22 = "end_index";
  *(v22 + 8) = 9;
  *(v22 + 16) = 2;
  v8();
  v23 = (v4 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 10;
  *v24 = "start_milli_seconds";
  *(v24 + 1) = 19;
  v24[16] = 2;
  v8();
  v25 = (v4 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 11;
  *v26 = "end_milli_seconds";
  *(v26 + 1) = 17;
  v26[16] = 2;
  v8();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C095D41C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result <= 5)
    {
      if (result <= 2)
      {
        if (result == 1 || result == 2)
        {
LABEL_2:
          sub_1C095D50C();
        }
      }

      else
      {
        if (result == 3)
        {
          goto LABEL_2;
        }

LABEL_23:
        sub_1C095D44C();
      }
    }

    else if (result > 8)
    {
      if (result == 9)
      {
        goto LABEL_24;
      }

      if (result == 10 || result == 11)
      {
        sub_1C095D48C();
      }
    }

    else
    {
      if (result == 6)
      {
        goto LABEL_23;
      }

      if (result == 7)
      {
        sub_1C095D4EC();
      }

      else
      {
LABEL_24:
        sub_1C095D52C();
      }
    }
  }
}

uint64_t Siri_Nl_Core_Protocol_AsrTokenInformation.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 8);
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v6 || (result = sub_1C095D66C(), !v4))
  {
    v8 = *(v3 + 24);
    v9 = HIBYTE(v8) & 0xF;
    if ((v8 & 0x2000000000000000) == 0)
    {
      v9 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v9 || (result = sub_1C095D66C(), !v4))
    {
      v10 = *(v3 + 40);
      v11 = HIBYTE(v10) & 0xF;
      if ((v10 & 0x2000000000000000) == 0)
      {
        v11 = *(v3 + 32) & 0xFFFFFFFFFFFFLL;
      }

      if (!v11 || (result = sub_1C095D66C(), !v4))
      {
        if (*(v3 + 48) != 1 || (result = sub_1C095D5FC(), !v4))
        {
          if (*(v3 + 49) != 1 || (result = sub_1C095D5FC(), !v4))
          {
            if (*(v3 + 50) != 1 || (result = sub_1C095D5FC(), !v4))
            {
              if (*(v3 + 56) == 0.0 || (result = sub_1C095D65C(), !v4))
              {
                if (!*(v3 + 64) || (result = sub_1C095D67C(), !v4))
                {
                  if (!*(v3 + 68) || (result = sub_1C095D67C(), !v4))
                  {
                    if (!*(v3 + 72) || (result = sub_1C095D62C(), !v4))
                    {
                      if (!*(v3 + 76) || (result = sub_1C095D62C(), !v4))
                      {
                        type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0);
                        return sub_1C095D36C();
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

  return result;
}

uint64_t sub_1C07484A4@<X0>(uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0xE000000000000000;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0xE000000000000000;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0xE000000000000000;
  *(a2 + 48) = 0;
  *(a2 + 50) = 0;
  *(a2 + 64) = 0;
  *(a2 + 72) = 0;
  *(a2 + 56) = 0;
  return _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
}

uint64_t sub_1C0748500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C0748574(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 60);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C074863C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F178, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation, &protocol conformance descriptor for Siri_Nl_Core_Protocol_AsrTokenInformation);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07486DC(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E9F0, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation, &protocol conformance descriptor for Siri_Nl_Core_Protocol_AsrTokenInformation);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C0748748(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E9F0, type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation, &protocol conformance descriptor for Siri_Nl_Core_Protocol_AsrTokenInformation);

  return sub_1C095D5AC();
}

uint64_t sub_1C07487E4()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E740);
  __swift_project_value_buffer(v0, qword_1EBE1E740);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C0993360;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "label";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69D26E0];
  v6 = sub_1C095D6BC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "input";
  *(v8 + 8) = 5;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "start_token_index";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "end_token_index";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "uso_graph";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "score";
  *(v16 + 1) = 5;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "matcher_names";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v7();
  return sub_1C095D6CC();
}

uint64_t Siri_Nl_Core_Protocol_Span.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1C095D41C();
  if (!v4)
  {
    while (1)
    {
      if (v10)
      {
        return result;
      }

      if (result <= 3)
      {
        if (result != 1 && result != 2)
        {
          if (result != 3)
          {
            goto LABEL_5;
          }

          goto LABEL_19;
        }

        sub_1C095D50C();
      }

      else
      {
        if (result <= 5)
        {
          if (result != 4)
          {
            sub_1C0748C7C(a1, v5, a2, a3);
            goto LABEL_5;
          }

LABEL_19:
          sub_1C095D52C();
          goto LABEL_5;
        }

        if (result == 6)
        {
          sub_1C095D4EC();
        }

        else if (result == 7)
        {
          sub_1C0752320(7, v10, v11);
          sub_1C095D43C();
        }
      }

LABEL_5:
      result = sub_1C095D41C();
    }
  }

  return result;
}

uint64_t sub_1C0748C7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
  type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
  return sub_1C095D55C();
}

uint64_t Siri_Nl_Core_Protocol_Span.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v3 + 8);
  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = *v3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13 || (result = sub_1C095D66C(), !v4))
  {
    v15 = *(v3 + 24);
    v16 = HIBYTE(v15) & 0xF;
    if ((v15 & 0x2000000000000000) == 0)
    {
      v16 = *(v3 + 16) & 0xFFFFFFFFFFFFLL;
    }

    if (!v16 || (result = sub_1C095D66C(), !v4))
    {
      if (!*(v3 + 32) || (result = sub_1C095D67C(), !v4))
      {
        if (!*(v3 + 36) || (result = sub_1C095D67C(), !v4))
        {
          v20 = type metadata accessor for Siri_Nl_Core_Protocol_Span(0);
          sub_1C05149F8(v3 + *(v20 + 44), v7, &qword_1EBE17400, &unk_1C0970CA0);
          if ((*(v9 + 48))(v7, 1, v8) == 1)
          {
            result = sub_1C05145B4(v7, &qword_1EBE17400, &unk_1C0970CA0);
          }

          else
          {
            sub_1C070BA2C(v7, v11, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
            sub_1C0752188(&qword_1EBE1E8F8, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph, &protocol conformance descriptor for Siri_Nl_Core_Protocol_UsoGraph);
            sub_1C095D6AC();
            result = sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
            if (v4)
            {
              return result;
            }
          }

          if (*(v3 + 40) == 0.0 || (result = sub_1C095D65C(), !v4))
          {
            if (!*(*(v3 + 48) + 16))
            {
              return sub_1C095D36C();
            }

            sub_1C0752320(result, v17, v18);
            result = sub_1C095D5DC();
            if (!v4)
            {
              return sub_1C095D36C();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C07490D8(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C095DFEC();
  a1(0);
  sub_1C0752188(a2, a3, a4);
  sub_1C095D71C();
  return sub_1C095E03C();
}

uint64_t sub_1C0749160@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0xE000000000000000;
  *(a2 + 4) = 0;
  *(a2 + 5) = 0;
  *(a2 + 6) = MEMORY[0x1E69E7CC0];
  _s12SiriOntology010Com_Apple_A33_Product_Proto_NonTerminalElementVACycfC_0();
  v4 = *(a1 + 44);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1C0749218@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1C074928C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1C095D38C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_1C0749330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C0752188(&qword_1EBE1F170, type metadata accessor for Siri_Nl_Core_Protocol_Span, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Span);

  return MEMORY[0x1EEE3F548](a1, a2, v4);
}

uint64_t sub_1C07493D0(uint64_t a1)
{
  v2 = sub_1C0752188(&qword_1EBE1E958, type metadata accessor for Siri_Nl_Core_Protocol_Span, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Span);

  return MEMORY[0x1EEE3F638](a1, v2);
}

uint64_t sub_1C074943C(uint64_t a1, uint64_t a2)
{
  sub_1C0752188(&qword_1EBE1E958, type metadata accessor for Siri_Nl_Core_Protocol_Span, &protocol conformance descriptor for Siri_Nl_Core_Protocol_Span);

  return sub_1C095D5AC();
}

uint64_t sub_1C07494BC()
{
  v0 = sub_1C095D6EC();
  __swift_allocate_value_buffer(v0, qword_1EBE1E758);
  __swift_project_value_buffer(v0, qword_1EBE1E758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C30, &qword_1C096E820);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16C38, &qword_1C0972E20) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C0971200;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69D26E0];
  v8 = sub_1C095D6BC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "SIRI_VOCABULARY_MATCHER";
  *(v10 + 8) = 23;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MRR_DETECTOR";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "MRR_MATCHER";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1C095D6CC();
}

uint64_t _s12SiriOntology0A40_Nl_Core_Protocol_DelegatedUserDialogActV2eeoiySbAC_ACtFZ_0(_DWORD *a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v47 = &v43 - v8;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v43 - v9;
  v11 = sub_1C095D32C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  if (*a1 != *a2)
  {
    goto LABEL_19;
  }

  v45 = v10;
  v43 = v6;
  v44 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  v21 = *(v44 + 32);
  v22 = *(v18 + 48);
  v46 = a1;
  sub_1C05149F8(a1 + v21, v20, &qword_1EBE16D68, &unk_1C09933C0);
  v23 = a2 + v21;
  v24 = a2;
  sub_1C05149F8(v23, &v20[v22], &qword_1EBE16D68, &unk_1C09933C0);
  v25 = *(v12 + 48);
  if (v25(v20, 1, v11) == 1)
  {
    if (v25(&v20[v22], 1, v11) == 1)
    {
      sub_1C05145B4(v20, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_9;
    }

LABEL_7:
    v26 = &qword_1EBE16D70;
    v27 = &qword_1C0970440;
    v28 = v20;
LABEL_18:
    sub_1C05145B4(v28, v26, v27);
    goto LABEL_19;
  }

  sub_1C05149F8(v20, v17, &qword_1EBE16D68, &unk_1C09933C0);
  if (v25(&v20[v22], 1, v11) == 1)
  {
    (*(v12 + 8))(v17, v11);
    goto LABEL_7;
  }

  (*(v12 + 32))(v14, &v20[v22], v11);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680], MEMORY[0x1E69D2688]);
  v29 = sub_1C095D73C();
  v30 = *(v12 + 8);
  v30(v14, v11);
  v30(v17, v11);
  sub_1C05145B4(v20, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v29 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_9:
  v31 = v46;
  if ((*(v46 + 1) != *(a2 + 8) || *(v46 + 2) != *(a2 + 16)) && (sub_1C095DF3C() & 1) == 0)
  {
    goto LABEL_19;
  }

  v32 = v45;
  v33 = *(v44 + 36);
  v34 = *(v48 + 48);
  sub_1C05149F8(v31 + v33, v45, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05149F8(v24 + v33, v32 + v34, &qword_1EBE17420, &qword_1C0993380);
  v35 = v50;
  v36 = *(v49 + 48);
  if (v36(v32, 1, v50) != 1)
  {
    v37 = v47;
    sub_1C05149F8(v32, v47, &qword_1EBE17420, &qword_1C0993380);
    if (v36(v32 + v34, 1, v35) != 1)
    {
      v40 = v32 + v34;
      v41 = v43;
      sub_1C070BA2C(v40, v43, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      v42 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)();
      sub_1C0751DA0(v41, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C0751DA0(v37, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C05145B4(v32, &qword_1EBE17420, &qword_1C0993380);
      if ((v42 & 1) == 0)
      {
        goto LABEL_19;
      }

      goto LABEL_22;
    }

    sub_1C0751DA0(v37, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    goto LABEL_17;
  }

  if (v36(v32 + v34, 1, v35) != 1)
  {
LABEL_17:
    v26 = &qword_1EBE16D60;
    v27 = &unk_1C0970430;
    v28 = v32;
    goto LABEL_18;
  }

  sub_1C05145B4(v32, &qword_1EBE17420, &qword_1C0993380);
LABEL_22:
  if (sub_1C055B8F0(*(v31 + 3), *(v24 + 24)))
  {
    sub_1C095D38C();
    sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v38 = sub_1C095D73C();
    return v38 & 1;
  }

LABEL_19:
  v38 = 0;
  return v38 & 1;
}

uint64_t _s12SiriOntology0A36_Nl_Core_Protocol_RewrittenUtteranceV2eeoiySbAC_ACtFZ_0(double *a1, double *a2)
{
  v4 = sub_1C095D32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v22 = type metadata accessor for Siri_Nl_Core_Protocol_RewrittenUtterance(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE16D68, &unk_1C09933C0);
  v25 = a2;
  sub_1C05149F8(a2 + v14, &v13[v15], &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C05145B4(v13, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v13, v9, &qword_1EBE16D68, &unk_1C09933C0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_6:
    sub_1C05145B4(v13, &qword_1EBE16D70, &qword_1C0970440);
LABEL_10:
    v20 = 0;
    return v20 & 1;
  }

  v17 = v23;
  (*(v5 + 32))(v23, &v13[v15], v4);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680], MEMORY[0x1E69D2688]);
  v18 = sub_1C095D73C();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v19(v9, v4);
  sub_1C05145B4(v13, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v24 != *v25)
  {
    goto LABEL_10;
  }

  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v20 = sub_1C095D73C();
  return v20 & 1;
}

uint64_t _s12SiriOntology0A35_Nl_Core_Protocol_RRGroupIdentifierV2eeoiySbAC_ACtFZ_0(_DWORD *a1, _DWORD *a2)
{
  v4 = sub_1C095D32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v22 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v14 = *(v22 + 24);
  v15 = *(v11 + 56);
  v24 = a1;
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE16D68, &unk_1C09933C0);
  v25 = a2;
  sub_1C05149F8(a2 + v14, &v13[v15], &qword_1EBE16D68, &unk_1C09933C0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C05145B4(v13, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v13, v9, &qword_1EBE16D68, &unk_1C09933C0);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v9, v4);
LABEL_6:
    sub_1C05145B4(v13, &qword_1EBE16D70, &qword_1C0970440);
LABEL_10:
    v20 = 0;
    return v20 & 1;
  }

  v17 = v23;
  (*(v5 + 32))(v23, &v13[v15], v4);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680], MEMORY[0x1E69D2688]);
  v18 = sub_1C095D73C();
  v19 = *(v5 + 8);
  v19(v17, v4);
  v19(v9, v4);
  sub_1C05145B4(v13, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v18 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if (*v24 != *v25)
  {
    goto LABEL_10;
  }

  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v20 = sub_1C095D73C();
  return v20 & 1;
}

uint64_t _s12SiriOntology0A34_Nl_Core_Protocol_RepetitionResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        if (v2 != 2)
        {
          return 0;
        }
      }

      else if (v2 != 3)
      {
        return 0;
      }
    }

    else if (v3)
    {
      if (v2 != 1)
      {
        return 0;
      }
    }

    else if (v2)
    {
      return 0;
    }
  }

  else if (v2 != v3)
  {
    return 0;
  }

  type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C074A660(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v25 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v13 = v12 - 8;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - v14;
  v24 = a3(0);
  v16 = *(v24 + 24);
  v17 = *(v13 + 56);
  v26 = a1;
  sub_1C05149F8(a1 + v16, v15, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05149F8(a2 + v16, &v15[v17], &qword_1EBE17420, &qword_1C0993380);
  v18 = *(v7 + 48);
  if (v18(v15, 1, v6) == 1)
  {
    if (v18(&v15[v17], 1, v6) == 1)
    {
      sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v15, v11, &qword_1EBE17420, &qword_1C0993380);
  if (v18(&v15[v17], 1, v6) == 1)
  {
    sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
LABEL_6:
    sub_1C05145B4(v15, &qword_1EBE16D60, &unk_1C0970430);
LABEL_10:
    v21 = 0;
    return v21 & 1;
  }

  v19 = v25;
  sub_1C070BA2C(&v15[v17], v25, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v20 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)();
  sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v15, &qword_1EBE17420, &qword_1C0993380);
  if ((v20 & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_8:
  if ((sub_1C055C9E4(*v26, *a2) & 1) == 0)
  {
    goto LABEL_10;
  }

  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v21 = sub_1C095D73C();
  return v21 & 1;
}

uint64_t _s12SiriOntology0A31_Nl_Core_Protocol_SystemOfferedV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v21[0] = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E810, &qword_1C09933D8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F390, &qword_1C0997A20);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - v12;
  v14 = *(type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0) + 20);
  v15 = *(v11 + 56);
  v21[1] = a1;
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE1E810, &qword_1C09933D8);
  sub_1C05149F8(a2 + v14, &v13[v15], &qword_1EBE1E810, &qword_1C09933D8);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C05145B4(v13, &qword_1EBE1E810, &qword_1C09933D8);
LABEL_9:
      sub_1C095D38C();
      sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v17 = sub_1C095D73C();
      return v17 & 1;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v13, v9, &qword_1EBE1E810, &qword_1C09933D8);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
LABEL_6:
    sub_1C05145B4(v13, &qword_1EBE1F390, &qword_1C0997A20);
    goto LABEL_7;
  }

  v18 = v21[0];
  sub_1C070BA2C(&v13[v15], v21[0], type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  v19 = _s12SiriOntology0A31_Nl_Core_Protocol_UserDialogActV2eeoiySbAC_ACtFZ_0(v9, v18);
  sub_1C0751DA0(v18, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct);
  sub_1C05145B4(v13, &qword_1EBE1E810, &qword_1C09933D8);
  if (v19)
  {
    goto LABEL_9;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s12SiriOntology0A37_Nl_Core_Protocol_AsrTokenInformationV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 1) == *(a2 + 8);
  if (!v4 && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 2) == *(a2 + 16) && *(a1 + 3) == *(a2 + 24);
  if (!v5 && (sub_1C095DF3C() & 1) == 0 || (*(a1 + 4) != *(a2 + 32) || *(a1 + 5) != *(a2 + 40)) && (sub_1C095DF3C() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 48) != *(a2 + 48) || *(a1 + 49) != *(a2 + 49) || *(a1 + 50) != *(a2 + 50) || a1[7] != *(a2 + 56) || *(a1 + 16) != *(a2 + 64) || *(a1 + 17) != *(a2 + 68) || *(a1 + 18) != *(a2 + 72) || *(a1 + 19) != *(a2 + 76))
  {
    return 0;
  }

  type metadata accessor for Siri_Nl_Core_Protocol_AsrTokenInformation(0);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology0A31_Nl_Core_Protocol_AsrHypothesisV2eeoiySbAC_ACtFZ_0(double *a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v22 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for Siri_Nl_Core_Protocol_AsrHypothesis(0);
  v14 = *(v23 + 36);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05149F8(a2 + v14, &v13[v15], &qword_1EBE17420, &qword_1C0993380);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C05149F8(v13, v9, &qword_1EBE17420, &qword_1C0993380);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v19 = v24;
      sub_1C070BA2C(&v13[v15], v24, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      v20 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)();
      sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C05145B4(v13, &qword_1EBE17420, &qword_1C0993380);
      if ((v20 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
LABEL_6:
    sub_1C05145B4(v13, &qword_1EBE16D60, &unk_1C0970430);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C05145B4(v13, &qword_1EBE17420, &qword_1C0993380);
LABEL_10:
  v21 = v25;
  if (*v25 == *a2 && *(v25 + 1) == *(a2 + 8) || (sub_1C095DF3C()) && v21[2] == *(a2 + 16) && (sub_1C055DF14(*(v21 + 3), *(a2 + 24)) & 1) != 0 && (sub_1C055E108(*(v21 + 4), *(a2 + 32)))
  {
    sub_1C095D38C();
    sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v17 = sub_1C095D73C();
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

uint64_t _s12SiriOntology0A30_Nl_Core_Protocol_RRAnnotationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C095D32C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v34 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v38 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v33 - v15;
  v36 = type metadata accessor for Siri_Nl_Core_Protocol_RRAnnotation(0);
  v37 = v12;
  v17 = *(v36 + 20);
  v18 = *(v12 + 48);
  v40 = a1;
  v19 = a1 + v17;
  v20 = v5;
  sub_1C05149F8(v19, v16, &qword_1EBE16D68, &unk_1C09933C0);
  v39 = a2;
  sub_1C05149F8(a2 + v17, &v16[v18], &qword_1EBE16D68, &unk_1C09933C0);
  v21 = *(v5 + 48);
  if (v21(v16, 1, v4) == 1)
  {
    if (v21(&v16[v18], 1, v4) != 1)
    {
LABEL_11:
      sub_1C05145B4(v16, &qword_1EBE16D70, &qword_1C0970440);
      goto LABEL_12;
    }

    sub_1C05145B4(v16, &qword_1EBE16D68, &unk_1C09933C0);
LABEL_6:
    v26 = *(v36 + 24);
    v27 = *(v37 + 48);
    v16 = v38;
    sub_1C05149F8(v40 + v26, v38, &qword_1EBE16D68, &unk_1C09933C0);
    sub_1C05149F8(v39 + v26, &v16[v27], &qword_1EBE16D68, &unk_1C09933C0);
    if (v21(v16, 1, v4) == 1)
    {
      if (v21(&v16[v27], 1, v4) == 1)
      {
        sub_1C05145B4(v16, &qword_1EBE16D68, &unk_1C09933C0);
LABEL_15:
        sub_1C095D38C();
        sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
        v28 = sub_1C095D73C();
        return v28 & 1;
      }

      goto LABEL_11;
    }

    v11 = v34;
    sub_1C05149F8(v16, v34, &qword_1EBE16D68, &unk_1C09933C0);
    if (v21(&v16[v27], 1, v4) == 1)
    {
      goto LABEL_10;
    }

    v30 = v35;
    (*(v20 + 32))(v35, &v16[v27], v4);
    sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680], MEMORY[0x1E69D2688]);
    v31 = sub_1C095D73C();
    v32 = *(v20 + 8);
    v32(v30, v4);
    v32(v11, v4);
    sub_1C05145B4(v16, &qword_1EBE16D68, &unk_1C09933C0);
    if (v31)
    {
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  sub_1C05149F8(v16, v11, &qword_1EBE16D68, &unk_1C09933C0);
  if (v21(&v16[v18], 1, v4) == 1)
  {
LABEL_10:
    (*(v20 + 8))(v11, v4);
    goto LABEL_11;
  }

  v22 = *(v5 + 32);
  v23 = v35;
  v22(v35, &v16[v18], v4);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680], MEMORY[0x1E69D2688]);
  v24 = sub_1C095D73C();
  v25 = *(v20 + 8);
  v25(v23, v4);
  v25(v11, v4);
  sub_1C05145B4(v16, &qword_1EBE16D68, &unk_1C09933C0);
  if (v24)
  {
    goto LABEL_6;
  }

LABEL_12:
  v28 = 0;
  return v28 & 1;
}

uint64_t _s12SiriOntology0A33_Nl_Core_Protocol_LegacyNLContextV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 2) != *(a2 + 2))
  {
    v3 = a1;
    v4 = a2;
    v5 = sub_1C095DF3C();
    a2 = v4;
    v6 = v5;
    a1 = v3;
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[24] != a2[24])
  {
    return 0;
  }

  v7 = a1;
  v8 = a2;
  if ((sub_1C055E730(*(a1 + 4), *(a2 + 4)) & 1) == 0)
  {
    return 0;
  }

  v9 = *(v7 + 5);
  v10 = *(v8 + 5);
  if (v8[48] == 1)
  {
    if (v10 > 1)
    {
      if (v10 == 2)
      {
        if (v9 != 2)
        {
          return 0;
        }
      }

      else if (v9 != 3)
      {
        return 0;
      }
    }

    else if (v10)
    {
      if (v9 != 1)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t _s12SiriOntology0A29_Nl_Core_Protocol_TurnContextV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v46 = a2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext(0);
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v38 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D0, &qword_1C09933A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v39 = &v37 - v6;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F380, &qword_1C0997A10);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v37 - v7;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7C8, &qword_1C0993398);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v37 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F388, &qword_1C0997A18);
  v16 = v15 - 8;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v37 - v17;
  v40 = type metadata accessor for Siri_Nl_Core_Protocol_TurnContext(0);
  v19 = *(v40 + 20);
  v20 = *(v16 + 56);
  v45 = a1;
  sub_1C05149F8(a1 + v19, v18, &qword_1EBE1E7C8, &qword_1C0993398);
  sub_1C05149F8(v46 + v19, &v18[v20], &qword_1EBE1E7C8, &qword_1C0993398);
  v21 = *(v9 + 48);
  if (v21(v18, 1, v8) != 1)
  {
    sub_1C05149F8(v18, v14, &qword_1EBE1E7C8, &qword_1C0993398);
    if (v21(&v18[v20], 1, v8) != 1)
    {
      sub_1C070BA2C(&v18[v20], v11, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
      v25 = _s12SiriOntology0A27_Nl_Core_Protocol_NLContextV2eeoiySbAC_ACtFZ_0(v14, v11);
      sub_1C0751DA0(v11, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
      sub_1C0751DA0(v14, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
      sub_1C05145B4(v18, &qword_1EBE1E7C8, &qword_1C0993398);
      if ((v25 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C0751DA0(v14, type metadata accessor for Siri_Nl_Core_Protocol_NLContext);
LABEL_6:
    v22 = &qword_1EBE1F388;
    v23 = &qword_1C0997A18;
    v24 = v18;
LABEL_14:
    sub_1C05145B4(v24, v22, v23);
    goto LABEL_15;
  }

  if (v21(&v18[v20], 1, v8) != 1)
  {
    goto LABEL_6;
  }

  sub_1C05145B4(v18, &qword_1EBE1E7C8, &qword_1C0993398);
LABEL_8:
  v26 = *(v40 + 24);
  v27 = *(v41 + 48);
  v28 = v44;
  sub_1C05149F8(v45 + v26, v44, &qword_1EBE1E7D0, &qword_1C09933A0);
  sub_1C05149F8(v46 + v26, v28 + v27, &qword_1EBE1E7D0, &qword_1C09933A0);
  v29 = v43;
  v30 = *(v42 + 48);
  if (v30(v28, 1, v43) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_1C05145B4(v28, &qword_1EBE1E7D0, &qword_1C09933A0);
LABEL_18:
      sub_1C095D38C();
      sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v32 = sub_1C095D73C();
      return v32 & 1;
    }

    goto LABEL_13;
  }

  v31 = v39;
  sub_1C05149F8(v28, v39, &qword_1EBE1E7D0, &qword_1C09933A0);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_1C0751DA0(v31, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
LABEL_13:
    v22 = &qword_1EBE1F380;
    v23 = &qword_1C0997A10;
    v24 = v28;
    goto LABEL_14;
  }

  v34 = v28 + v27;
  v35 = v38;
  sub_1C070BA2C(v34, v38, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  v36 = _s12SiriOntology0A33_Nl_Core_Protocol_LegacyNLContextV2eeoiySbAC_ACtFZ_0(v31, v35);
  sub_1C0751DA0(v35, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  sub_1C0751DA0(v31, type metadata accessor for Siri_Nl_Core_Protocol_LegacyNLContext);
  sub_1C05145B4(v28, &qword_1EBE1E7D0, &qword_1C09933A0);
  if (v36)
  {
    goto LABEL_18;
  }

LABEL_15:
  v32 = 0;
  return v32 & 1;
}

uint64_t sub_1C074BFB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v23 = a1;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v22 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  v12 = v11 - 8;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - v13;
  v15 = *(a3(0) + 20);
  v16 = *(v12 + 56);
  sub_1C05149F8(v23 + v15, v14, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C05149F8(a2 + v15, &v14[v16], &qword_1EBE17400, &unk_1C0970CA0);
  v17 = *(v6 + 48);
  if (v17(v14, 1, v5) == 1)
  {
    if (v17(&v14[v16], 1, v5) == 1)
    {
      sub_1C05145B4(v14, &qword_1EBE17400, &unk_1C0970CA0);
LABEL_9:
      sub_1C095D38C();
      sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v18 = sub_1C095D73C();
      return v18 & 1;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v14, v10, &qword_1EBE17400, &unk_1C0970CA0);
  if (v17(&v14[v16], 1, v5) == 1)
  {
    sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
LABEL_6:
    sub_1C05145B4(v14, &qword_1EBE16DE8, &qword_1C09704C0);
    goto LABEL_7;
  }

  v19 = v22;
  sub_1C070BA2C(&v14[v16], v22, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v20 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v10, v19);
  sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C0751DA0(v10, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C05145B4(v14, &qword_1EBE17400, &unk_1C0970CA0);
  if (v20)
  {
    goto LABEL_9;
  }

LABEL_7:
  v18 = 0;
  return v18 & 1;
}

uint64_t _s12SiriOntology0A31_Nl_Core_Protocol_UserDialogActV06OneOf_fgH0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v114 = a2;
  v115 = a1;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v106 = (&v93 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v105 = (&v93 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v104 = (&v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v103 = (&v93 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v102 = (&v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v101 = (&v93 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v100 = (&v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v99 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v98 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected(0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v97 = (&v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v22 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted(0);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v96 = &v93 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v95 = &v93 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted(0);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v94 = &v93 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v29 = MEMORY[0x1EEE9AC00](v28);
  v113 = (&v93 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  v31 = MEMORY[0x1EEE9AC00](v29);
  v112 = (&v93 - v32);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v111 = (&v93 - v34);
  v35 = MEMORY[0x1EEE9AC00](v33);
  v110 = (&v93 - v36);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v109 = (&v93 - v38);
  v39 = MEMORY[0x1EEE9AC00](v37);
  v108 = (&v93 - v40);
  v41 = MEMORY[0x1EEE9AC00](v39);
  v107 = (&v93 - v42);
  v43 = MEMORY[0x1EEE9AC00](v41);
  v45 = &v93 - v44;
  v46 = MEMORY[0x1EEE9AC00](v43);
  v48 = &v93 - v47;
  v49 = MEMORY[0x1EEE9AC00](v46);
  v51 = (&v93 - v50);
  v52 = MEMORY[0x1EEE9AC00](v49);
  v54 = &v93 - v53;
  v55 = MEMORY[0x1EEE9AC00](v52);
  v57 = &v93 - v56;
  MEMORY[0x1EEE9AC00](v55);
  v59 = &v93 - v58;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F3A0, &unk_1C0997A30);
  v61 = MEMORY[0x1EEE9AC00](v60 - 8);
  v63 = &v93 - v62;
  v64 = *(v61 + 56);
  sub_1C0751E60(v115, &v93 - v62, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  v115 = v64;
  sub_1C0751E60(v114, &v63[v64], type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1C0751E60(v63, v57, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v83 = v115;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v84 = v95;
        sub_1C070BA2C(&v63[v83], v95, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
        v70 = sub_1C074F284(v57, v84, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
        v80 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued;
        sub_1C0751DA0(v84, type metadata accessor for Siri_Nl_Core_Protocol_UserContinued);
        v74 = v57;
        goto LABEL_29;
      }

      v66 = type metadata accessor for Siri_Nl_Core_Protocol_UserContinued;
      v67 = v57;
      goto LABEL_44;
    case 2u:
      sub_1C0751E60(v63, v54, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v78 = v115;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v79 = v96;
        sub_1C070BA2C(&v63[v78], v96, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
        v70 = sub_1C074F284(v54, v79, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
        v80 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted;
        sub_1C0751DA0(v79, type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted);
        v74 = v54;
        goto LABEL_29;
      }

      v66 = type metadata accessor for Siri_Nl_Core_Protocol_UserAccepted;
      v67 = v54;
      goto LABEL_44;
    case 3u:
      sub_1C0751E60(v63, v51, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v81 = v115;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v69 = v97;
        sub_1C070BA2C(&v63[v81], v97, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
        v70 = sub_1C074F284(v51, v69, type metadata accessor for Siri_Nl_Core_Protocol_UserRejected);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected;
        goto LABEL_28;
      }

      v90 = type metadata accessor for Siri_Nl_Core_Protocol_UserRejected;
      goto LABEL_43;
    case 4u:
      sub_1C0751E60(v63, v48, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v72 = v115;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v73 = v98;
        sub_1C070BA2C(&v63[v72], v98, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
        v70 = sub_1C074F284(v48, v73, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
        sub_1C0751DA0(v73, type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated);
        v74 = v48;
        v75 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated;
        goto LABEL_30;
      }

      v66 = type metadata accessor for Siri_Nl_Core_Protocol_UserDisambiguated;
      v67 = v48;
      goto LABEL_44;
    case 5u:
      sub_1C0751E60(v63, v45, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v85 = v115;
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v86 = v99;
        sub_1C070BA2C(&v63[v85], v99, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
        v70 = sub_1C074F284(v45, v86, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
        v80 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled;
        sub_1C0751DA0(v86, type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled);
        v74 = v45;
        goto LABEL_29;
      }

      v66 = type metadata accessor for Siri_Nl_Core_Protocol_UserCancelled;
      v67 = v45;
      goto LABEL_44;
    case 6u:
      v51 = v107;
      sub_1C0751E60(v63, v107, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v87 = v115;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v69 = v100;
        sub_1C070BA2C(&v63[v87], v100, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
        v70 = sub_1C074F284(v51, v69, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat;
        goto LABEL_28;
      }

      v90 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToRepeat;
      goto LABEL_43;
    case 7u:
      v51 = v108;
      sub_1C0751E60(v63, v108, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v82 = v115;
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        v69 = v101;
        sub_1C070BA2C(&v63[v82], v101, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
        v70 = sub_1C074F284(v51, v69, type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged;
        goto LABEL_28;
      }

      v90 = type metadata accessor for Siri_Nl_Core_Protocol_UserAcknowledged;
      goto LABEL_43;
    case 8u:
      v51 = v109;
      sub_1C0751E60(v63, v109, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v89 = v115;
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        v69 = v102;
        sub_1C070BA2C(&v63[v89], v102, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
        v70 = sub_1C074F284(v51, v69, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed;
        goto LABEL_28;
      }

      v90 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToProceed;
      goto LABEL_43;
    case 9u:
      v51 = v110;
      sub_1C0751E60(v63, v110, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v77 = v115;
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        v69 = v103;
        sub_1C070BA2C(&v63[v77], v103, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
        v70 = sub_1C074F284(v51, v69, type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause;
        goto LABEL_28;
      }

      v90 = type metadata accessor for Siri_Nl_Core_Protocol_UserWantedToPause;
      goto LABEL_43;
    case 0xAu:
      v51 = v111;
      sub_1C0751E60(v63, v111, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v88 = v115;
      if (swift_getEnumCaseMultiPayload() == 10)
      {
        v69 = v104;
        sub_1C070BA2C(&v63[v88], v104, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
        v70 = sub_1C074A660(v51, v69, type metadata accessor for Siri_Nl_Core_Protocol_UserResponded);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded;
        goto LABEL_28;
      }

      v90 = type metadata accessor for Siri_Nl_Core_Protocol_UserResponded;
      goto LABEL_43;
    case 0xBu:
      v51 = v112;
      sub_1C0751E60(v63, v112, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v68 = v115;
      if (swift_getEnumCaseMultiPayload() == 11)
      {
        v69 = v105;
        sub_1C070BA2C(&v63[v68], v105, type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct);
        v70 = _s12SiriOntology0A40_Nl_Core_Protocol_DelegatedUserDialogActV2eeoiySbAC_ACtFZ_0(v51, v69);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct;
        goto LABEL_28;
      }

      v90 = type metadata accessor for Siri_Nl_Core_Protocol_DelegatedUserDialogAct;
      goto LABEL_43;
    case 0xCu:
      v51 = v113;
      sub_1C0751E60(v63, v113, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v76 = v115;
      if (swift_getEnumCaseMultiPayload() == 12)
      {
        v69 = v106;
        sub_1C070BA2C(&v63[v76], v106, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
        v70 = sub_1C074BFB4(v51, v69, type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask);
        v71 = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask;
LABEL_28:
        v80 = v71;
        sub_1C0751DA0(v69, v71);
        v74 = v51;
        goto LABEL_29;
      }

      v90 = type metadata accessor for Siri_Nl_Core_Protocol_UserStatedTask;
LABEL_43:
      v66 = v90;
      v67 = v51;
      goto LABEL_44;
    default:
      sub_1C0751E60(v63, v59, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      v65 = v115;
      if (swift_getEnumCaseMultiPayload())
      {
        v66 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted;
        v67 = v59;
LABEL_44:
        sub_1C0751DA0(v67, v66);
        sub_1C05145B4(v63, &qword_1EBE1F3A0, &unk_1C0997A30);
        v70 = 0;
      }

      else
      {
        v92 = v94;
        sub_1C070BA2C(&v63[v65], v94, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
        v70 = sub_1C074BFB4(v59, v92, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
        v80 = type metadata accessor for Siri_Nl_Core_Protocol_UserStarted;
        sub_1C0751DA0(v92, type metadata accessor for Siri_Nl_Core_Protocol_UserStarted);
        v74 = v59;
LABEL_29:
        v75 = v80;
LABEL_30:
        sub_1C0751DA0(v74, v75);
        sub_1C0751DA0(v63, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
      }

      return v70 & 1;
  }
}

uint64_t _s12SiriOntology0A31_Nl_Core_Protocol_UserDialogActV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment(0);
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E8, &qword_1C09933B8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v37 = &v36 - v7;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2F8, &qword_1C0997988);
  MEMORY[0x1EEE9AC00](v38);
  v41 = &v36 - v8;
  v9 = type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17408, &unk_1C0993370);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F300, &qword_1C0997990);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v36 - v18;
  v20 = *(v17 + 56);
  v42 = a1;
  sub_1C05149F8(a1, &v36 - v18, &qword_1EBE17408, &unk_1C0993370);
  v43 = a2;
  sub_1C05149F8(a2, &v19[v20], &qword_1EBE17408, &unk_1C0993370);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) == 1)
  {
    if (v21(&v19[v20], 1, v9) == 1)
    {
      sub_1C05145B4(v19, &qword_1EBE17408, &unk_1C0993370);
      goto LABEL_8;
    }

LABEL_6:
    v22 = &qword_1EBE1F300;
    v23 = &qword_1C0997990;
    v24 = v19;
LABEL_22:
    sub_1C05145B4(v24, v22, v23);
    goto LABEL_23;
  }

  sub_1C05149F8(v19, v15, &qword_1EBE17408, &unk_1C0993370);
  if (v21(&v19[v20], 1, v9) == 1)
  {
    sub_1C0751DA0(v15, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
    goto LABEL_6;
  }

  sub_1C070BA2C(&v19[v20], v12, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  v25 = _s12SiriOntology0A31_Nl_Core_Protocol_UserDialogActV06OneOf_fgH0O2eeoiySbAE_AEtFZ_0(v15, v12);
  sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  sub_1C0751DA0(v15, type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct.OneOf_UserDialogAct);
  sub_1C05145B4(v19, &qword_1EBE17408, &unk_1C0993370);
  if ((v25 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_8:
  v26 = *(type metadata accessor for Siri_Nl_Core_Protocol_UserDialogAct(0) + 24);
  v27 = *(v38 + 48);
  v28 = v41;
  sub_1C05149F8(v42 + v26, v41, &qword_1EBE1E7E8, &qword_1C09933B8);
  sub_1C05149F8(v43 + v26, v28 + v27, &qword_1EBE1E7E8, &qword_1C09933B8);
  v29 = v40;
  v30 = *(v39 + 48);
  if (v30(v28, 1, v40) != 1)
  {
    v32 = v37;
    sub_1C05149F8(v28, v37, &qword_1EBE1E7E8, &qword_1C09933B8);
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_1C0751DA0(v32, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      goto LABEL_14;
    }

    v33 = v36;
    sub_1C070BA2C(v28 + v27, v36, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    if (*v32 != *v33 || (sub_1C055BF38(*(v32 + 8), *(v33 + 8)) & 1) == 0 || *(v32 + 16) != *(v33 + 16))
    {
      sub_1C0751DA0(v33, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      sub_1C0751DA0(v32, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
      v22 = &qword_1EBE1E7E8;
      v23 = &qword_1C09933B8;
      goto LABEL_21;
    }

    sub_1C095D38C();
    sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v34 = sub_1C095D73C();
    sub_1C0751DA0(v33, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    sub_1C0751DA0(v32, type metadata accessor for Siri_Nl_Core_Protocol_UtteranceAlignment);
    sub_1C05145B4(v28, &qword_1EBE1E7E8, &qword_1C09933B8);
    if (v34)
    {
      goto LABEL_11;
    }

LABEL_23:
    v31 = 0;
    return v31 & 1;
  }

  if (v30(v28 + v27, 1, v29) != 1)
  {
LABEL_14:
    v22 = &qword_1EBE1F2F8;
    v23 = &qword_1C0997988;
LABEL_21:
    v24 = v28;
    goto LABEL_22;
  }

  sub_1C05145B4(v28, &qword_1EBE1E7E8, &qword_1C09933B8);
LABEL_11:
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v31 = sub_1C095D73C();
  return v31 & 1;
}

uint64_t _s12SiriOntology0A27_Nl_Core_Protocol_UserParseV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v70 = a2;
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_Parser(0);
  v60 = *(v3 - 8);
  v61 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v56 = (&v55 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7E0, &qword_1C09933B0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v57 = (&v55 - v6);
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F370, &qword_1C0997A00);
  MEMORY[0x1EEE9AC00](v59);
  v62 = &v55 - v7;
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult(0);
  v65 = *(v8 - 8);
  v66 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E7D8, &qword_1C09933A8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v55 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F378, &qword_1C0997A08);
  MEMORY[0x1EEE9AC00](v64);
  v67 = &v55 - v12;
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v55 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v21 = v20 - 8;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v68 = type metadata accessor for Siri_Nl_Core_Protocol_UserParse(0);
  v69 = a1;
  v24 = *(v68 + 32);
  v25 = *(v21 + 56);
  sub_1C05149F8(a1 + v24, v23, &qword_1EBE17420, &qword_1C0993380);
  v26 = v70;
  sub_1C05149F8(v70 + v24, &v23[v25], &qword_1EBE17420, &qword_1C0993380);
  v27 = *(v14 + 48);
  if (v27(v23, 1, v13) == 1)
  {
    if (v27(&v23[v25], 1, v13) == 1)
    {
      sub_1C05145B4(v23, &qword_1EBE17420, &qword_1C0993380);
      goto LABEL_10;
    }

LABEL_6:
    v28 = &qword_1EBE16D60;
    v29 = &unk_1C0970430;
LABEL_7:
    v30 = v23;
LABEL_8:
    sub_1C05145B4(v30, v28, v29);
    goto LABEL_30;
  }

  sub_1C05149F8(v23, v19, &qword_1EBE17420, &qword_1C0993380);
  if (v27(&v23[v25], 1, v13) == 1)
  {
    sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
    goto LABEL_6;
  }

  sub_1C070BA2C(&v23[v25], v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  v31 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)();
  sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
  sub_1C05145B4(v23, &qword_1EBE17420, &qword_1C0993380);
  if ((v31 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_10:
  v32 = v69;
  if ((sub_1C055C1E0(*v69, *v26) & 1) == 0 || *(v32 + 1) != *(v26 + 8) || (v32[2] != *(v26 + 16) || v32[3] != *(v26 + 24)) && (sub_1C095DF3C() & 1) == 0)
  {
    goto LABEL_30;
  }

  v23 = v67;
  v33 = v68;
  v34 = *(v68 + 36);
  v35 = *(v64 + 48);
  sub_1C05149F8(v32 + v34, v67, &qword_1EBE1E7D8, &qword_1C09933A8);
  sub_1C05149F8(v26 + v34, &v23[v35], &qword_1EBE1E7D8, &qword_1C09933A8);
  v36 = v66;
  v37 = *(v65 + 48);
  if (v37(v23, 1, v66) == 1)
  {
    if (v37(&v23[v35], 1, v36) == 1)
    {
      sub_1C05145B4(v23, &qword_1EBE1E7D8, &qword_1C09933A8);
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v38 = v63;
  sub_1C05149F8(v23, v63, &qword_1EBE1E7D8, &qword_1C09933A8);
  if (v37(&v23[v35], 1, v36) == 1)
  {
    sub_1C0751DA0(v38, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
LABEL_20:
    v28 = &qword_1EBE1F378;
    v29 = &qword_1C0997A08;
    goto LABEL_7;
  }

  v39 = &v23[v35];
  v40 = v58;
  sub_1C070BA2C(v39, v58, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  v41 = _s12SiriOntology0A34_Nl_Core_Protocol_RepetitionResultV2eeoiySbAC_ACtFZ_0(v38, v40);
  sub_1C0751DA0(v40, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  sub_1C0751DA0(v38, type metadata accessor for Siri_Nl_Core_Protocol_RepetitionResult);
  sub_1C05145B4(v23, &qword_1EBE1E7D8, &qword_1C09933A8);
  if ((v41 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_22:
  v42 = *(v33 + 40);
  v43 = *(v59 + 48);
  v44 = v62;
  sub_1C05149F8(v32 + v42, v62, &qword_1EBE1E7E0, &qword_1C09933B0);
  v45 = v26 + v42;
  v46 = v44;
  sub_1C05149F8(v45, v44 + v43, &qword_1EBE1E7E0, &qword_1C09933B0);
  v47 = v61;
  v48 = *(v60 + 48);
  if (v48(v44, 1, v61) != 1)
  {
    v49 = v57;
    sub_1C05149F8(v46, v57, &qword_1EBE1E7E0, &qword_1C09933B0);
    if (v48(v46 + v43, 1, v47) != 1)
    {
      v50 = v46 + v43;
      v51 = v56;
      sub_1C070BA2C(v50, v56, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
      v52 = _s12SiriOntology0A24_Nl_Core_Protocol_ParserV2eeoiySbAC_ACtFZ_0(v49, v51);
      sub_1C0751DA0(v51, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
      sub_1C0751DA0(v49, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
      sub_1C05145B4(v46, &qword_1EBE1E7E0, &qword_1C09933B0);
      if (v52)
      {
        goto LABEL_29;
      }

LABEL_30:
      v53 = 0;
      return v53 & 1;
    }

    sub_1C0751DA0(v49, type metadata accessor for Siri_Nl_Core_Protocol_Parser);
    goto LABEL_27;
  }

  if (v48(v44 + v43, 1, v47) != 1)
  {
LABEL_27:
    v28 = &qword_1EBE1F370;
    v29 = &qword_1C0997A00;
    v30 = v46;
    goto LABEL_8;
  }

  sub_1C05145B4(v44, &qword_1EBE1E7E0, &qword_1C09933B0);
LABEL_29:
  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v53 = sub_1C095D73C();
  return v53 & 1;
}

uint64_t _s12SiriOntology0A33_Nl_Core_Protocol_EntityCandidateV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v103 = a2;
  v104 = a1;
  v2 = type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier(0);
  v86 = *(v2 - 8);
  v87 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v83 = (&v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E838, &qword_1C09933E8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v84 = (&v82 - v5);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2B8, &qword_1C0997940);
  MEMORY[0x1EEE9AC00](v85);
  v88 = &v82 - v6;
  v95 = sub_1C095D32C();
  v98 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v90 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D68, &unk_1C09933C0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v89 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v92 = &v82 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D70, &qword_1C0970440);
  v12 = MEMORY[0x1EEE9AC00](v97);
  v91 = &v82 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v94 = &v82 - v14;
  v15 = sub_1C095D2EC();
  v100 = *(v15 - 8);
  v101 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v82 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E830, &qword_1C09933E0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v82 - v18;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2A8, &qword_1C0997938);
  MEMORY[0x1EEE9AC00](v99);
  v20 = &v82 - v19;
  v21 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v82 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v82 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  v29 = v28 - 8;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v82 - v30;
  v102 = type metadata accessor for Siri_Nl_Core_Protocol_EntityCandidate(0);
  v32 = v102[6];
  v33 = *(v29 + 56);
  sub_1C05149F8(v104 + v32, v31, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C05149F8(v103 + v32, &v31[v33], &qword_1EBE17400, &unk_1C0970CA0);
  v34 = *(v22 + 48);
  if (v34(v31, 1, v21) == 1)
  {
    if (v34(&v31[v33], 1, v21) == 1)
    {
      sub_1C05145B4(v31, &qword_1EBE17400, &unk_1C0970CA0);
      goto LABEL_9;
    }

LABEL_6:
    v35 = &qword_1EBE16DE8;
    v36 = &qword_1C09704C0;
LABEL_7:
    v37 = v31;
LABEL_29:
    sub_1C05145B4(v37, v35, v36);
    goto LABEL_30;
  }

  sub_1C05149F8(v31, v27, &qword_1EBE17400, &unk_1C0970CA0);
  if (v34(&v31[v33], 1, v21) == 1)
  {
    sub_1C0751DA0(v27, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
    goto LABEL_6;
  }

  sub_1C070BA2C(&v31[v33], v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v38 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v27, v24);
  sub_1C0751DA0(v24, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C0751DA0(v27, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C05145B4(v31, &qword_1EBE17400, &unk_1C0970CA0);
  if ((v38 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_9:
  v39 = v102;
  v40 = v102[7];
  v41 = *(v99 + 48);
  v42 = v104;
  sub_1C05149F8(v104 + v40, v20, &qword_1EBE1E830, &qword_1C09933E0);
  v43 = v103;
  sub_1C05149F8(v103 + v40, &v20[v41], &qword_1EBE1E830, &qword_1C09933E0);
  v45 = v100;
  v44 = v101;
  v46 = *(v100 + 48);
  if (v46(v20, 1, v101) == 1)
  {
    if (v46(&v20[v41], 1, v44) == 1)
    {
      sub_1C05145B4(v20, &qword_1EBE1E830, &qword_1C09933E0);
      goto LABEL_16;
    }

LABEL_14:
    v35 = &qword_1EBE1F2A8;
    v36 = &qword_1C0997938;
    v37 = v20;
    goto LABEL_29;
  }

  v47 = v96;
  sub_1C05149F8(v20, v96, &qword_1EBE1E830, &qword_1C09933E0);
  if (v46(&v20[v41], 1, v44) == 1)
  {
    (*(v45 + 8))(v47, v44);
    goto LABEL_14;
  }

  v48 = v93;
  (*(v45 + 32))(v93, &v20[v41], v44);
  sub_1C0752188(&qword_1EBE1F2B0, MEMORY[0x1E69D2668], MEMORY[0x1E69D2670]);
  v49 = sub_1C095D73C();
  v50 = *(v45 + 8);
  v50(v48, v44);
  v50(v47, v44);
  sub_1C05145B4(v20, &qword_1EBE1E830, &qword_1C09933E0);
  if ((v49 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_16:
  v51 = v39[8];
  v52 = *(v97 + 48);
  v53 = v94;
  sub_1C05149F8(v42 + v51, v94, &qword_1EBE16D68, &unk_1C09933C0);
  v54 = v53;
  sub_1C05149F8(v43 + v51, v53 + v52, &qword_1EBE16D68, &unk_1C09933C0);
  v55 = *(v98 + 48);
  v56 = v95;
  if (v55(v54, 1, v95) == 1)
  {
    if (v55(v54 + v52, 1, v56) == 1)
    {
      sub_1C05145B4(v54, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_23;
    }

LABEL_21:
    v35 = &qword_1EBE16D70;
    v36 = &qword_1C0970440;
    v37 = v54;
    goto LABEL_29;
  }

  v57 = v92;
  sub_1C05149F8(v54, v92, &qword_1EBE16D68, &unk_1C09933C0);
  if (v55(v54 + v52, 1, v56) == 1)
  {
    (*(v98 + 8))(v57, v56);
    goto LABEL_21;
  }

  v58 = v98;
  v59 = v90;
  (*(v98 + 32))(v90, v54 + v52, v56);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680], MEMORY[0x1E69D2688]);
  LODWORD(v101) = sub_1C095D73C();
  v60 = *(v58 + 8);
  v39 = v102;
  v60(v59, v56);
  v42 = v104;
  v60(v57, v56);
  sub_1C05145B4(v54, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v101 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_23:
  v61 = v39[9];
  v62 = *(v97 + 48);
  v63 = v91;
  sub_1C05149F8(v42 + v61, v91, &qword_1EBE16D68, &unk_1C09933C0);
  v64 = v43 + v61;
  v65 = v63;
  sub_1C05149F8(v64, v63 + v62, &qword_1EBE16D68, &unk_1C09933C0);
  if (v55(v63, 1, v56) == 1)
  {
    if (v55(v63 + v62, 1, v56) == 1)
    {
      sub_1C05145B4(v63, &qword_1EBE16D68, &unk_1C09933C0);
      goto LABEL_33;
    }

LABEL_28:
    v35 = &qword_1EBE16D70;
    v36 = &qword_1C0970440;
    v37 = v65;
    goto LABEL_29;
  }

  v66 = v63;
  v67 = v89;
  sub_1C05149F8(v66, v89, &qword_1EBE16D68, &unk_1C09933C0);
  if (v55(v65 + v62, 1, v56) == 1)
  {
    (*(v98 + 8))(v67, v56);
    goto LABEL_28;
  }

  v70 = v98;
  v71 = v90;
  (*(v98 + 32))(v90, v65 + v62, v56);
  sub_1C0752188(&qword_1EBE16D78, MEMORY[0x1E69D2680], MEMORY[0x1E69D2688]);
  v72 = sub_1C095D73C();
  v73 = *(v70 + 8);
  v73(v71, v56);
  v73(v67, v56);
  sub_1C05145B4(v65, &qword_1EBE16D68, &unk_1C09933C0);
  if ((v72 & 1) == 0)
  {
    goto LABEL_30;
  }

LABEL_33:
  v74 = v102[10];
  v75 = *(v85 + 48);
  v31 = v88;
  sub_1C05149F8(v42 + v74, v88, &qword_1EBE1E838, &qword_1C09933E8);
  sub_1C05149F8(v43 + v74, &v31[v75], &qword_1EBE1E838, &qword_1C09933E8);
  v76 = v87;
  v77 = *(v86 + 48);
  if (v77(v31, 1, v87) != 1)
  {
    v78 = v84;
    sub_1C05149F8(v31, v84, &qword_1EBE1E838, &qword_1C09933E8);
    if (v77(&v31[v75], 1, v76) != 1)
    {
      v79 = &v31[v75];
      v80 = v83;
      sub_1C070BA2C(v79, v83, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
      v81 = _s12SiriOntology0A35_Nl_Core_Protocol_RRGroupIdentifierV2eeoiySbAC_ACtFZ_0(v78, v80);
      sub_1C0751DA0(v80, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
      sub_1C0751DA0(v78, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
      sub_1C05145B4(v31, &qword_1EBE1E838, &qword_1C09933E8);
      if ((v81 & 1) == 0)
      {
        goto LABEL_30;
      }

      goto LABEL_40;
    }

    sub_1C0751DA0(v78, type metadata accessor for Siri_Nl_Core_Protocol_RRGroupIdentifier);
    goto LABEL_38;
  }

  if (v77(&v31[v75], 1, v76) != 1)
  {
LABEL_38:
    v35 = &qword_1EBE1F2B8;
    v36 = &qword_1C0997940;
    goto LABEL_7;
  }

  sub_1C05145B4(v31, &qword_1EBE1E838, &qword_1C09933E8);
LABEL_40:
  if (sub_1C055C234(*v42, *v43))
  {
    sub_1C095D38C();
    sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
    v68 = sub_1C095D73C();
    return v68 & 1;
  }

LABEL_30:
  v68 = 0;
  return v68 & 1;
}

uint64_t sub_1C074F190(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8 != v9)
  {

    v10 = a4(v8, v9);

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  return sub_1C095D73C() & 1;
}

uint64_t sub_1C074F284(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v48 = a2;
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph(0);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v40 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17400, &unk_1C0970CA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v39 - v8;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DE8, &qword_1C09704C0);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v39 - v9;
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_UUID(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE17420, &qword_1C0993380);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16D60, &unk_1C0970430);
  v18 = v17 - 8;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v42 = a3(0);
  v21 = *(v42 + 20);
  v22 = *(v18 + 56);
  v47 = a1;
  sub_1C05149F8(a1 + v21, v20, &qword_1EBE17420, &qword_1C0993380);
  sub_1C05149F8(v48 + v21, &v20[v22], &qword_1EBE17420, &qword_1C0993380);
  v23 = *(v11 + 48);
  if (v23(v20, 1, v10) != 1)
  {
    sub_1C05149F8(v20, v16, &qword_1EBE17420, &qword_1C0993380);
    if (v23(&v20[v22], 1, v10) != 1)
    {
      sub_1C070BA2C(&v20[v22], v13, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      v27 = static Siri_Nl_Core_Protocol_UUID.== infix(_:_:)();
      sub_1C0751DA0(v13, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
      sub_1C05145B4(v20, &qword_1EBE17420, &qword_1C0993380);
      if ((v27 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_1C0751DA0(v16, type metadata accessor for Siri_Nl_Core_Protocol_UUID);
LABEL_6:
    v24 = &qword_1EBE16D60;
    v25 = &unk_1C0970430;
    v26 = v20;
LABEL_14:
    sub_1C05145B4(v26, v24, v25);
    goto LABEL_15;
  }

  if (v23(&v20[v22], 1, v10) != 1)
  {
    goto LABEL_6;
  }

  sub_1C05145B4(v20, &qword_1EBE17420, &qword_1C0993380);
LABEL_8:
  v28 = *(v42 + 24);
  v29 = *(v43 + 48);
  v30 = v46;
  sub_1C05149F8(v47 + v28, v46, &qword_1EBE17400, &unk_1C0970CA0);
  sub_1C05149F8(v48 + v28, v30 + v29, &qword_1EBE17400, &unk_1C0970CA0);
  v31 = v45;
  v32 = *(v44 + 48);
  if (v32(v30, 1, v45) == 1)
  {
    if (v32(v30 + v29, 1, v31) == 1)
    {
      sub_1C05145B4(v30, &qword_1EBE17400, &unk_1C0970CA0);
LABEL_18:
      sub_1C095D38C();
      sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
      v34 = sub_1C095D73C();
      return v34 & 1;
    }

    goto LABEL_13;
  }

  v33 = v41;
  sub_1C05149F8(v30, v41, &qword_1EBE17400, &unk_1C0970CA0);
  if (v32(v30 + v29, 1, v31) == 1)
  {
    sub_1C0751DA0(v33, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
LABEL_13:
    v24 = &qword_1EBE16DE8;
    v25 = &qword_1C09704C0;
    v26 = v30;
    goto LABEL_14;
  }

  v36 = v30 + v29;
  v37 = v40;
  sub_1C070BA2C(v36, v40, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  v38 = static Siri_Nl_Core_Protocol_UsoGraph.== infix(_:_:)(v33, v37);
  sub_1C0751DA0(v37, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C0751DA0(v33, type metadata accessor for Siri_Nl_Core_Protocol_UsoGraph);
  sub_1C05145B4(v30, &qword_1EBE17400, &unk_1C0970CA0);
  if (v38)
  {
    goto LABEL_18;
  }

LABEL_15:
  v34 = 0;
  return v34 & 1;
}

uint64_t _s12SiriOntology0A33_Nl_Core_Protocol_SystemDialogActV06OneOf_fgH0O2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v66 = a1;
  v67 = a2;
  v63 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure(0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = (&v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v58 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions(0);
  MEMORY[0x1EEE9AC00](v58);
  v62 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v59 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v65 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v58 - v17;
  v19 = MEMORY[0x1EEE9AC00](v16);
  v21 = (&v58 - v20);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v24 = (&v58 - v23);
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v58 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v29 = &v58 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F398, &qword_1C0997A28);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = &v58 - v32;
  v34 = *(v31 + 56);
  sub_1C0751E60(v66, &v58 - v32, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  sub_1C0751E60(v67, &v33[v34], type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1C0751E60(v33, v21, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v43 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed;
        v44 = v21;
        goto LABEL_29;
      }

      v45 = v60;
      sub_1C070BA2C(&v33[v34], v60, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
      v38 = sub_1C074A660(v21, v45, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
      v42 = type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed;
      sub_1C0751DA0(v45, type metadata accessor for Siri_Nl_Core_Protocol_SystemInformed);
      v39 = v21;
    }

    else
    {
      if (EnumCaseMultiPayload != 4)
      {
        v49 = v65;
        sub_1C0751E60(v33, v65, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
        if (swift_getEnumCaseMultiPayload() == 5)
        {
          v50 = v64;
          sub_1C070BA2C(&v33[v34], v64, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
          v51 = *(v63 + 20);
          v52 = *(v49 + v51);
          v53 = *(v50 + v51);
          if (v52 == v53 || (, , v54 = sub_1C07423D4(v52, v53), , , v54))
          {
            sub_1C095D38C();
            sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
            if (sub_1C095D73C())
            {
              v47 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure;
              sub_1C0751DA0(v50, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
              v48 = v49;
              goto LABEL_23;
            }
          }

          v56 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure;
          sub_1C0751DA0(v50, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure);
          v57 = v49;
LABEL_37:
          sub_1C0751DA0(v57, v56);
          sub_1C0751DA0(v33, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
          goto LABEL_30;
        }

        v43 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedFailure;
        v44 = v49;
LABEL_29:
        sub_1C0751DA0(v44, v43);
        sub_1C05145B4(v33, &qword_1EBE1F398, &qword_1C0997A28);
LABEL_30:
        v38 = 0;
        return v38 & 1;
      }

      sub_1C0751E60(v33, v18, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v43 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess;
        v44 = v18;
        goto LABEL_29;
      }

      v41 = v61;
      sub_1C070BA2C(&v33[v34], v61, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
      v38 = sub_1C074F284(v18, v41, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
      v42 = type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess;
      sub_1C0751DA0(v41, type metadata accessor for Siri_Nl_Core_Protocol_SystemReportedSuccess);
      v39 = v18;
    }

LABEL_32:
    v40 = v42;
    goto LABEL_33;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1C0751E60(v33, v29, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload())
    {
      v43 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted;
      v44 = v29;
      goto LABEL_29;
    }

    sub_1C070BA2C(&v33[v34], v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    v38 = sub_1C074F284(v29, v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    v42 = type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted;
    sub_1C0751DA0(v12, type metadata accessor for Siri_Nl_Core_Protocol_SystemPrompted);
    v39 = v29;
    goto LABEL_32;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1C0751E60(v33, v27, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = &v33[v34];
      v37 = v59;
      sub_1C070BA2C(v36, v59, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
      v38 = _s12SiriOntology0A31_Nl_Core_Protocol_SystemOfferedV2eeoiySbAC_ACtFZ_0(v27, v37);
      sub_1C0751DA0(v37, type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered);
      v39 = v27;
      v40 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered;
LABEL_33:
      sub_1C0751DA0(v39, v40);
      sub_1C0751DA0(v33, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
      return v38 & 1;
    }

    v43 = type metadata accessor for Siri_Nl_Core_Protocol_SystemOffered;
    v44 = v27;
    goto LABEL_29;
  }

  sub_1C0751E60(v33, v24, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v43 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions;
    v44 = v24;
    goto LABEL_29;
  }

  v46 = v62;
  sub_1C070BA2C(&v33[v34], v62, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
  if ((sub_1C055C1E0(*v24, *v46) & 1) == 0 || (sub_1C095D38C(), sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]), (sub_1C095D73C() & 1) == 0))
  {
    v56 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions;
    sub_1C0751DA0(v46, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
    v57 = v24;
    goto LABEL_37;
  }

  v47 = type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions;
  sub_1C0751DA0(v46, type metadata accessor for Siri_Nl_Core_Protocol_SystemGaveOptions);
  v48 = v24;
LABEL_23:
  sub_1C0751DA0(v48, v47);
  sub_1C0751DA0(v33, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct.OneOf_SystemDialogAct);
  v38 = 1;
  return v38 & 1;
}

uint64_t _s12SiriOntology0A38_Nl_Core_Protocol_SystemDialogActGroupV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB0, &qword_1C0970478);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v27 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE16DB8, &unk_1C0970480);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v27 - v12;
  v28 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v14 = *(v28 + 24);
  v15 = *(v11 + 56);
  v30 = a1;
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE16DB0, &qword_1C0970478);
  sub_1C05149F8(a2 + v14, &v13[v15], &qword_1EBE16DB0, &qword_1C0970478);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1C05145B4(v13, &qword_1EBE16DB0, &qword_1C0970478);
      goto LABEL_11;
    }

    goto LABEL_6;
  }

  sub_1C05149F8(v13, v9, &qword_1EBE16DB0, &qword_1C0970478);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
LABEL_6:
    v17 = &qword_1EBE16DB8;
    v18 = &unk_1C0970480;
LABEL_7:
    sub_1C05145B4(v13, v17, v18);
LABEL_13:
    v25 = 0;
    return v25 & 1;
  }

  v19 = v29;
  sub_1C070BA2C(&v13[v15], v29, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  v20 = *(v4 + 20);
  v21 = *&v9[v20];
  v22 = *(v19 + v20);
  if (v21 != v22)
  {

    v23 = sub_1C073D9FC(v21, v22);

    if (!v23)
    {
      sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
      sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
      v17 = &qword_1EBE16DB0;
      v18 = &qword_1C0970478;
      goto LABEL_7;
    }
  }

  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v24 = sub_1C095D73C();
  sub_1C0751DA0(v19, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogAct);
  sub_1C05145B4(v13, &qword_1EBE16DB0, &qword_1C0970478);
  if ((v24 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  if ((sub_1C055EEC0(*v30, *a2) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v25 = sub_1C095D73C();
  return v25 & 1;
}

uint64_t _s12SiriOntology0A27_Nl_Core_Protocol_NLContextV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v4 = type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = (&v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1E770, &qword_1C0993388);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (&v22 - v8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE1F2A0, &unk_1C0997928);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - v12;
  v23 = type metadata accessor for Siri_Nl_Core_Protocol_NLContext(0);
  v14 = *(v23 + 36);
  v15 = *(v11 + 56);
  v25 = a1;
  sub_1C05149F8(a1 + v14, v13, &qword_1EBE1E770, &qword_1C0993388);
  sub_1C05149F8(a2 + v14, &v13[v15], &qword_1EBE1E770, &qword_1C0993388);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1C05149F8(v13, v9, &qword_1EBE1E770, &qword_1C0993388);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      v17 = v24;
      sub_1C070BA2C(&v13[v15], v24, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
      v18 = _s12SiriOntology0A38_Nl_Core_Protocol_SystemDialogActGroupV2eeoiySbAC_ACtFZ_0(v9, v17);
      sub_1C0751DA0(v17, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
      sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
      sub_1C05145B4(v13, &qword_1EBE1E770, &qword_1C0993388);
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      v20 = 0;
      return v20 & 1;
    }

    sub_1C0751DA0(v9, type metadata accessor for Siri_Nl_Core_Protocol_SystemDialogActGroup);
LABEL_6:
    sub_1C05145B4(v13, &qword_1EBE1F2A0, &unk_1C0997928);
    goto LABEL_13;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1C05145B4(v13, &qword_1EBE1E770, &qword_1C0993388);
LABEL_8:
  v19 = v25;
  if ((sub_1C055F4F4(*v25, *a2) & 1) == 0 || (sub_1C055F4F4(v19[1], a2[1]) & 1) == 0 || (sub_1C055F548(v19[2], a2[2]) & 1) == 0 || (sub_1C055F59C(v19[3], a2[3]) & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1C095D38C();
  sub_1C0752188(&qword_1EBE16B78, MEMORY[0x1E69D26B8], MEMORY[0x1E69D26C0]);
  v20 = sub_1C095D73C();
  return v20 & 1;
}