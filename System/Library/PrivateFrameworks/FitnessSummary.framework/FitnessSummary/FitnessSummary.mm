uint64_t sub_1E67084C8()
{

  return swift_deallocObject();
}

uint64_t sub_1E6708504(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096850, &unk_1E67211E0);
  v8 = *(v6 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v6;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_5:

    return v10(v11, a2, v9);
  }

  v12 = type metadata accessor for SummaryWorkoutsCardErrorItem(0, *(a3 + 16), *(a3 + 24), v7);
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a2)
  {
    v9 = v12;
    v10 = *(v13 + 48);
    v11 = a1 + *(a3 + 36);
    goto LABEL_5;
  }

  swift_getFunctionTypeMetadata1();
  v15 = sub_1E671FE1C();
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + *(a3 + 44);

  return v16(v17, a2, v15);
}

uint64_t sub_1E6708678(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096850, &unk_1E67211E0);
  v10 = *(v8 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v8;
    v12 = *(v10 + 56);
    v13 = a1;
LABEL_5:

    return v12(v13, a2, a2, v11);
  }

  v14 = type metadata accessor for SummaryWorkoutsCardErrorItem(0, *(a4 + 16), *(a4 + 24), v9);
  v15 = *(v14 - 8);
  if (*(v15 + 84) == a3)
  {
    v11 = v14;
    v12 = *(v15 + 56);
    v13 = a1 + *(a4 + 36);
    goto LABEL_5;
  }

  swift_getFunctionTypeMetadata1();
  v17 = sub_1E671FE1C();
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + *(a4 + 44);

  return v18(v19, a2, a2, v17);
}

uint64_t sub_1E6708874()
{

  return swift_deallocObject();
}

uint64_t sub_1E67088AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView(0, *(v4 + 16), *(v4 + 24), a4);
  v6 = v4 + ((*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = sub_1E671FEBC();
    (*(*(v7 - 8) + 8))(v6, v7);
  }

  else
  {
  }

  v8 = v5[9];
  v9 = sub_1E671FD7C();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v6 + v8, v9);
  v11(v6 + v5[10], v9);
  v12 = v5[11];
  if (!(*(v10 + 48))(v6 + v12, 1, v9))
  {
    v11(v6 + v12, v9);
  }

  v13 = v6 + v5[13];
  v14 = type metadata accessor for SummaryArtwork(0);
  if (!(*(*(v14 - 8) + 48))(v13, 1, v14))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v15 = sub_1E671FE3C();
      v16 = *(v15 - 8);
      if (!(*(v16 + 48))(v13, 1, v15))
      {
        (*(v16 + 8))(v13, v15);
      }

      v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B0, &qword_1E6720CF8) + 48);
      v18 = sub_1E671FDBC();
    }

    else
    {

      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A0, &qword_1E6720CE8);
      v20 = *(v19 + 48);
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0);
      (*(*(v21 - 8) + 8))(v13 + v20, v21);
      v17 = *(v19 + 64);
      v18 = sub_1E671FE3C();
    }

    v22 = v18;
    v23 = *(v18 - 8);
    if (!(*(v23 + 48))(v13 + v17, 1, v18))
    {
      (*(v23 + 8))(v13 + v17, v22);
    }
  }

  v24 = v5[16];
  v25 = sub_1E671FDCC();
  (*(*(v25 - 8) + 8))(v6 + v24, v25);
  v26 = v5[17];
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B8, &qword_1E6720D00);
  (*(*(v27 - 8) + 8))(v6 + v26, v27);
  v28 = v5[18];
  swift_getFunctionTypeMetadata1();
  v29 = sub_1E671FE1C();
  (*(*(v29 - 8) + 8))(v6 + v28, v29);

  return swift_deallocObject();
}

uint64_t sub_1E6708DC8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096908, &qword_1E6720D50);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6708E68(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096850, &unk_1E67211E0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_1E671FD7C();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[9];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v8 = v14;
    v12 = *(v14 - 8);
    v13 = a3[11];
    goto LABEL_7;
  }

  if (a2 == 254)
  {
    v16 = *(a1 + a3[12]);
    if (v16 >= 2)
    {
      return ((v16 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096870, &qword_1E6720CB0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v12 = *(v17 - 8);
    v13 = a3[13];
    goto LABEL_7;
  }

  v18 = sub_1E671FDCC();
  if (*(*(v18 - 8) + 84) == a2)
  {
    v8 = v18;
    v12 = *(v18 - 8);
    v13 = a3[16];
    goto LABEL_7;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B8, &qword_1E6720D00);
  if (*(*(v19 - 8) + 84) == a2)
  {
    v8 = v19;
    v12 = *(v19 - 8);
    v13 = a3[17];
    goto LABEL_7;
  }

  type metadata accessor for SummaryArtwork(255);
  swift_getFunctionTypeMetadata1();
  v20 = sub_1E671FE1C();
  v21 = *(*(v20 - 8) + 48);
  v22 = a1 + a3[18];

  return v21(v22, a2, v20);
}

uint64_t sub_1E670915C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096850, &unk_1E67211E0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_1E671FD7C();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[9];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  if (*(*(result - 8) + 84) == a3)
  {
    v10 = result;
    v14 = *(result - 8);
    v15 = a4[11];
    goto LABEL_7;
  }

  if (a3 == 254)
  {
    *(a1 + a4[12]) = a2 + 1;
    return result;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096870, &qword_1E6720CB0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[13];
    goto LABEL_7;
  }

  v18 = sub_1E671FDCC();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v10 = v18;
    v14 = *(v18 - 8);
    v15 = a4[16];
    goto LABEL_7;
  }

  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B8, &qword_1E6720D00);
  if (*(*(v19 - 8) + 84) == a3)
  {
    v10 = v19;
    v14 = *(v19 - 8);
    v15 = a4[17];
    goto LABEL_7;
  }

  type metadata accessor for SummaryArtwork(255);
  swift_getFunctionTypeMetadata1();
  v20 = sub_1E671FE1C();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + a4[18];

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1E6709440(void *a1)
{
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096880, &unk_1E6720CC0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
  sub_1E672008C();
  swift_getWitnessTable();
  v1 = MEMORY[0x1E697EC18];
  sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0, MEMORY[0x1E697EC18]);
  swift_getWitnessTable();
  sub_1E670D384();
  swift_getWitnessTable();
  sub_1E672047C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096888, &qword_1E6720CD0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096890, &qword_1E6720CD8);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096898, &qword_1E6720CE0);
  swift_getTupleTypeMetadata2();
  sub_1E672051C();
  swift_getWitnessTable();
  sub_1E672047C();
  sub_1E672008C();
  sub_1E67203DC();
  swift_getWitnessTable();
  sub_1E670DA90(&qword_1EE2C5438, &qword_1ED096888, &qword_1E6720CD0, v1);
  swift_getWitnessTable();
  sub_1E670DA90(&qword_1EE2C5430, &qword_1ED096890, &qword_1E6720CD8, v1);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E670978C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E671FD7C();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 20);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_1E6709888(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1E671FD7C();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, v8);
  }

  else
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
    v13 = *(*(v12 - 8) + 56);
    v14 = a1 + *(a4 + 20);

    return v13(v14, a2, a2, v12);
  }
}

uint64_t sub_1E6709990(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096850, &unk_1E67211E0);
  v8 = *(v6 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = v6;
    v10 = *(v8 + 48);
    v11 = a1;
LABEL_10:

    return v10(v11, a2, v9);
  }

  v12 = type metadata accessor for SummaryWorkoutsCardItem(0, *(a3 + 24), *(a3 + 40), v7);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v13 = *(v12 - 8);
    v14 = *(a3 + 52);
LABEL_9:
    v10 = *(v13 + 48);
    v11 = a1 + v14;
    goto LABEL_10;
  }

  v15 = sub_1E671FDCC();
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v13 = *(v15 - 8);
    v14 = *(a3 + 64);
    goto LABEL_9;
  }

  type metadata accessor for SummaryArtwork(255);
  swift_getFunctionTypeMetadata1();
  v16 = sub_1E671FE1C();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v9 = v16;
    v13 = *(v16 - 8);
    v14 = *(a3 + 68);
    goto LABEL_9;
  }

  swift_getFunctionTypeMetadata1();
  v18 = sub_1E671FE1C();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + *(a3 + 72);

  return v19(v20, a2, v18);
}

uint64_t sub_1E6709BC8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096850, &unk_1E67211E0);
  v10 = *(v8 - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = v8;
    v12 = *(v10 + 56);
    v13 = a1;
LABEL_10:

    return v12(v13, a2, a2, v11);
  }

  v14 = type metadata accessor for SummaryWorkoutsCardItem(0, *(a4 + 24), *(a4 + 40), v9);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v11 = v14;
    v15 = *(v14 - 8);
    v16 = *(a4 + 52);
LABEL_9:
    v12 = *(v15 + 56);
    v13 = a1 + v16;
    goto LABEL_10;
  }

  v17 = sub_1E671FDCC();
  if (*(*(v17 - 8) + 84) == a3)
  {
    v11 = v17;
    v15 = *(v17 - 8);
    v16 = *(a4 + 64);
    goto LABEL_9;
  }

  type metadata accessor for SummaryArtwork(255);
  swift_getFunctionTypeMetadata1();
  v18 = sub_1E671FE1C();
  if (*(*(v18 - 8) + 84) == a3)
  {
    v11 = v18;
    v15 = *(v18 - 8);
    v16 = *(a4 + 68);
    goto LABEL_9;
  }

  swift_getFunctionTypeMetadata1();
  v20 = sub_1E671FE1C();
  v21 = *(*(v20 - 8) + 56);
  v22 = a1 + *(a4 + 72);

  return v21(v22, a2, a2, v20);
}

uint64_t sub_1E6709E0C()
{
  v1 = *(v0 + 40);
  v62 = *(v0 + 16);
  v63 = *(v0 + 24);
  v60 = v63;
  v64 = v1;
  v2 = type metadata accessor for SummaryWorkoutsCardItemView(0, &v62);
  v58 = *(*(v2 - 1) + 80);
  v3 = (v58 + 48) & ~v58;
  v4 = v3 + *(*(v2 - 1) + 64);
  v5 = v60;
  v7 = type metadata accessor for SummaryWorkoutsCardWorkoutItem(0, v60, v1, v6);
  v8 = *(*(v7 - 1) + 80);
  v9 = v4 + v8;
  v10 = v0 + v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E671FEBC();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
  }

  else
  {
  }

  v59 = v0;
  v61 = v9 & ~v8;
  v13 = v10 + v2[13];
  type metadata accessor for SummaryWorkoutsCardItem(0, v5, v1, v12);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    (*(*(v5 - 8) + 8))(v13, v5);
    v26 = type metadata accessor for SummaryWorkoutsCardErrorItem(0, v5, v1, v25);
    v27 = v26[9];
    v28 = sub_1E671FD7C();
    v29 = *(*(v28 - 8) + 8);
    v29(v13 + v27, v28);
    v29(v13 + v26[10], v28);
    v29(v13 + v26[11], v28);
  }

  else if (!EnumCaseMultiPayload)
  {
    (*(*(v5 - 8) + 8))(v13, v5);
    v15 = v7[9];
    v16 = sub_1E671FD7C();
    v17 = *(v16 - 8);
    v18 = *(v17 + 8);
    v18(v13 + v15, v16);
    v18(v13 + v7[10], v16);
    v19 = v7[11];
    if (!(*(v17 + 48))(v13 + v19, 1, v16))
    {
      v18(v13 + v19, v16);
    }

    v20 = v13 + v7[13];
    type metadata accessor for SummaryArtwork(0);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = sub_1E671FE3C();
      v22 = *(v21 - 8);
      if (!(*(v22 + 48))(v20, 1, v21))
      {
        (*(v22 + 8))(v20, v21);
      }

      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B0, &qword_1E6720CF8) + 48);
      v24 = sub_1E671FDBC();
    }

    else
    {

      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A0, &qword_1E6720CE8);
      v31 = *(v30 + 48);
      v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0);
      (*(*(v32 - 8) + 8))(v20 + v31, v32);
      v23 = *(v30 + 64);
      v24 = sub_1E671FE3C();
    }

    v33 = v24;
    v34 = *(v24 - 8);
    if (!(*(v34 + 48))(v20 + v23, 1, v24))
    {
      (*(v34 + 8))(v20 + v23, v33);
    }
  }

  v35 = v2[16];
  v36 = sub_1E671FDCC();
  (*(*(v36 - 8) + 8))(v10 + v35, v36);
  v37 = v2[17];
  type metadata accessor for SummaryArtwork(255);
  swift_getFunctionTypeMetadata1();
  v38 = sub_1E671FE1C();
  (*(*(v38 - 8) + 8))(v10 + v37, v38);
  v39 = v2[18];
  swift_getFunctionTypeMetadata1();
  v40 = sub_1E671FE1C();
  (*(*(v40 - 8) + 8))(v10 + v39, v40);
  v41 = v59 + v61;
  (*(*(v5 - 8) + 8))(v59 + v61, v5);
  v42 = v7[9];
  v43 = sub_1E671FD7C();
  v44 = *(v43 - 8);
  v45 = *(v44 + 8);
  v45(v59 + v61 + v42, v43);
  v45(v59 + v61 + v7[10], v43);
  v46 = v7[11];
  if (!(*(v44 + 48))(v59 + v61 + v46, 1, v43))
  {
    v45(v41 + v46, v43);
  }

  v47 = v41 + v7[13];
  swift_checkMetadataState();
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v48 = sub_1E671FE3C();
    v49 = *(v48 - 8);
    if (!(*(v49 + 48))(v47, 1, v48))
    {
      (*(v49 + 8))(v47, v48);
    }

    v50 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B0, &qword_1E6720CF8) + 48);
    v51 = sub_1E671FDBC();
  }

  else
  {

    v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A0, &qword_1E6720CE8);
    v53 = *(v52 + 48);
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0);
    (*(*(v54 - 8) + 8))(v47 + v53, v54);
    v50 = *(v52 + 64);
    v51 = sub_1E671FE3C();
  }

  v55 = v51;
  v56 = *(v51 - 8);
  if (!(*(v56 + 48))(v47 + v50, 1, v51))
  {
    (*(v56 + 8))(v47 + v50, v55);
  }

  return swift_deallocObject();
}

uint64_t sub_1E670A6D0()
{

  return swift_deallocObject();
}

uint64_t sub_1E670A710(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v5 = a1[3];
  type metadata accessor for SummaryWorkoutsCardWorkoutItemView(255, *a1, a1[2], a4);
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  sub_1E672008C();
  type metadata accessor for SummaryWorkoutsCardErrorItemView(255, v4, v5, v6);
  sub_1E672008C();
  sub_1E67203DC();
  swift_getOpaqueTypeConformance2();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E670A890(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SummaryWorkoutsCardHeader(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5]);
    if (v12 >= 2)
    {
      return ((v12 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = sub_1E671FDCC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_1E670AA1C(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SummaryWorkoutsCardHeader(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5]) = a2 + 1;
    return result;
  }

  v13 = sub_1E671FDCC();
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t sub_1E670AB9C@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E671FFCC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E670AC00@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E671FF6C();
  *a1 = result;
  return result;
}

uint64_t sub_1E670AC58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AA8, &qword_1E67213D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E670ACC8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096A58, &qword_1E6721348);
  sub_1E671BBF4();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1E670AD34(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for SummaryWorkoutsCardHeader(0);
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
    v11 = *(a1 + a3[13]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = sub_1E671FDCC();
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[15];
LABEL_13:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_14;
  }

  type metadata accessor for SummaryArtwork(255);
  swift_getFunctionTypeMetadata1();
  v16 = sub_1E671FE1C();
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[16];
    goto LABEL_13;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  if (*(*(v17 - 8) + 84) == a2)
  {
    v8 = v17;
    v14 = *(v17 - 8);
    v15 = a3[17];
    goto LABEL_13;
  }

  swift_getFunctionTypeMetadata1();
  v18 = sub_1E671FE1C();
  v19 = *(*(v18 - 8) + 48);
  v20 = a1 + a3[18];

  return v19(v20, a2, v18);
}

uint64_t sub_1E670AF88(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for SummaryWorkoutsCardHeader(0);
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
    *(a1 + a4[13]) = (a2 - 1);
    return result;
  }

  v13 = sub_1E671FDCC();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[15];
LABEL_11:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_12;
  }

  type metadata accessor for SummaryArtwork(255);
  swift_getFunctionTypeMetadata1();
  v16 = sub_1E671FE1C();
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[16];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  if (*(*(v17 - 8) + 84) == a3)
  {
    v10 = v17;
    v14 = *(v17 - 8);
    v15 = a4[17];
    goto LABEL_11;
  }

  swift_getFunctionTypeMetadata1();
  v18 = sub_1E671FE1C();
  v19 = *(*(v18 - 8) + 56);
  v20 = a1 + a4[18];

  return v19(v20, a2, a2, v18);
}

uint64_t sub_1E670B1EC(uint64_t a1)
{
  v1 = *(a1 + 24);
  v10 = *a1;
  v11 = *(a1 + 8);
  v9 = v11;
  v12 = v1;
  v2 = type metadata accessor for SummaryWorkoutsCardItemView(255, &v10);
  v4 = type metadata accessor for SummaryWorkoutsCardItem(255, v9, v1, v3);
  WitnessTable = swift_getWitnessTable();
  v6 = swift_getWitnessTable();
  v7 = swift_getWitnessTable();
  v10 = v2;
  *&v11 = v4;
  *(&v11 + 1) = WitnessTable;
  v12 = v6;
  v13 = v7;
  sub_1E671FDEC();
  sub_1E67203DC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B18, &qword_1E6721490);
  sub_1E671FEEC();
  sub_1E671FEEC();
  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1E670DA90(&qword_1ED096B58, &qword_1ED096B18, &qword_1E6721490, MEMORY[0x1E697EC18]);
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

uint64_t sub_1E670B3E4()
{

  return swift_deallocObject();
}

uint64_t sub_1E670B420()
{

  return swift_deallocObject();
}

uint64_t sub_1E670B4B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a3;
  v8[3] = a4;
  v8[4] = a1;
  v8[5] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E671FDFC();
}

uint64_t (*sub_1E670B554(uint64_t a1))()
{
  v2 = *(a1 + 16);
  swift_getFunctionTypeMetadata1();
  sub_1E671FE1C();
  sub_1E671FE0C();
  v3 = swift_allocObject();
  v4 = *(a1 + 24);
  *(v3 + 16) = v2;
  *(v3 + 24) = v4;
  *(v3 + 32) = v6;
  return sub_1E670DE2C;
}

uint64_t sub_1E670B5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E672004C();
  *(a2 + 8) = 0x4014000000000000;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967D0, &qword_1E6720AE0);
  sub_1E670B698(v2, *(a1 + 16), *(a1 + 24), (a2 + *(v5 + 44)));
  KeyPath = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096798, &qword_1E6720AB0);
  v8 = a2 + *(result + 36);
  *v8 = KeyPath;
  *(v8 + 8) = 1;
  return result;
}

uint64_t sub_1E670B698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = a1;
  v77 = a1;
  v95 = a4;
  v91 = sub_1E672038C();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = a2;
  v80 = a3;
  v9 = type metadata accessor for SummaryWorkoutsCardErrorItemView(0, a2, a3, v8);
  v78 = v9;
  v84 = *(v9 - 8);
  v85 = *(v84 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v83 = &v75 - v10;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967D8, &qword_1E6720B18);
  MEMORY[0x1EEE9AC00](v92);
  v86 = &v75 - v11;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967E0, &qword_1E6720B20);
  v100 = *(v94 - 8);
  v12 = MEMORY[0x1EEE9AC00](v94);
  v93 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v75 - v14;
  v97 = v6 + *(v9 + 36);
  type metadata accessor for SummaryWorkoutsCardErrorItem(0, a2, a3, v15);
  v16 = sub_1E671FD5C();
  v18 = v17;
  v20 = v19;
  sub_1E67201BC();
  v21 = sub_1E672027C();
  v23 = v22;
  v25 = v24;

  sub_1E670D8A0(v16, v18, v20 & 1);

  sub_1E672017C();
  v26 = sub_1E672024C();
  v88 = v27;
  v87 = v28;
  v98 = v29;
  sub_1E670D8A0(v21, v23, v25 & 1);

  v30 = sub_1E671FD5C();
  v32 = v31;
  LOBYTE(v6) = v33;
  sub_1E672014C();
  v34 = sub_1E672027C();
  v36 = v35;
  v38 = v37;

  sub_1E670D8A0(v30, v32, v6 & 1);

  LODWORD(v107) = sub_1E67200BC();
  v81 = sub_1E672025C();
  v96 = v39;
  v82 = v40;
  v97 = v41;
  sub_1E670D8A0(v34, v36, v38 & 1);

  v42 = v84;
  v43 = v83;
  v44 = v77;
  v45 = v78;
  (*(v84 + 16))(v83, v77, v78);
  v46 = v42;
  v47 = (*(v42 + 80) + 32) & ~*(v42 + 80);
  v48 = swift_allocObject();
  v49 = v79;
  v50 = v80;
  *(v48 + 16) = v79;
  *(v48 + 24) = v50;
  (*(v46 + 32))(v48 + v47, v43, v45);
  v104 = v49;
  v105 = v50;
  v106 = v44;
  v51 = v86;
  sub_1E672045C();
  (*(v90 + 104))(v89, *MEMORY[0x1E69814D8], v91);
  v52 = sub_1E67203AC();
  KeyPath = swift_getKeyPath();
  v107 = v52;
  v54 = sub_1E671FE7C();
  v55 = (v51 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967E8, &qword_1E6720B58) + 36));
  *v55 = KeyPath;
  v55[1] = v54;
  LOBYTE(v54) = sub_1E672010C();
  sub_1E671FE5C();
  v56 = v51 + *(v92 + 36);
  *v56 = v54;
  *(v56 + 8) = v57;
  *(v56 + 16) = v58;
  *(v56 + 24) = v59;
  *(v56 + 32) = v60;
  *(v56 + 40) = 0;
  v101 = v49;
  v102 = v50;
  v103 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967F0, &qword_1E6720B60);
  sub_1E670D920();
  sub_1E670DA90(&qword_1ED096828, &qword_1ED0967F0, &qword_1E6720B60, MEMORY[0x1E6981F48]);
  v61 = v99;
  sub_1E672034C();
  sub_1E670DAD8(v51);
  LOBYTE(v54) = v87 & 1;
  LOBYTE(v107) = v87 & 1;
  v62 = *(v100 + 16);
  v63 = v93;
  v64 = v94;
  v62(v93, v61, v94);
  v65 = v95;
  v76 = v26;
  v66 = v88;
  *v95 = v26;
  v65[1] = v66;
  *(v65 + 16) = v54;
  v67 = v81;
  v65[3] = v98;
  v65[4] = v67;
  v65[5] = v96;
  LODWORD(v92) = v82 & 1;
  *(v65 + 48) = v82 & 1;
  v65[7] = v97;
  v68 = v65;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096830, &qword_1E6720B78);
  v62(v68 + *(v69 + 64), v63, v64);
  sub_1E670DB40(v26, v66, v54);

  v70 = v67;
  v71 = v67;
  v72 = v96;
  LOBYTE(v67) = v92;
  sub_1E670DB40(v71, v96, v92);
  v73 = *(v100 + 8);

  v73(v99, v64);
  v73(v63, v64);
  sub_1E670D8A0(v70, v72, v67);

  sub_1E670D8A0(v76, v66, v107);
}

uint64_t sub_1E670BEC8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  type metadata accessor for SummaryWorkoutsCardErrorItemView(0, a1, a2, a4);
  type metadata accessor for SummaryWorkoutsCardErrorItem(0, a1, a2, v7);
  v8 = sub_1E671FD5C();
  v10 = v9;
  v12 = v11;
  sub_1E672014C();
  v13 = sub_1E672027C();
  v15 = v14;
  v17 = v16;
  v19 = v18;

  sub_1E670D8A0(v8, v10, v12 & 1);

  *a3 = v13;
  *(a3 + 8) = v15;
  *(a3 + 16) = v17 & 1;
  *(a3 + 24) = v19;
  return result;
}

uint64_t sub_1E670BFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>, uint64_t a5@<X3>)
{
  v38 = a3;
  v44 = a4;
  v36 = a2;
  v7 = type metadata accessor for SummaryWorkoutsCardErrorItemView(0, a2, a3, a5);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096838, &qword_1E6720B80);
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v43 = &v35 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v35 - v15;
  v17 = a2;
  v18 = v38;
  type metadata accessor for SummaryWorkoutsCardErrorItem(0, v17, v38, v19);
  v20 = sub_1E671FD5C();
  v39 = v21;
  v40 = v20;
  v41 = v22;
  v42 = v23;
  (*(v8 + 16))(v10, a1, v7);
  v24 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = v36;
  *(v25 + 24) = v18;
  (*(v8 + 32))(v25 + v24, v10, v7);
  v37 = v16;
  sub_1E672045C();
  v26 = *(v12 + 16);
  v27 = v43;
  v26(v43, v16, v11);
  v28 = v39;
  v29 = v40;
  v30 = v44;
  *v44 = v40;
  v30[1] = v28;
  LOBYTE(v10) = v41 & 1;
  *(v30 + 16) = v41 & 1;
  v30[3] = v42;
  v31 = v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096840, &qword_1E6720B88);
  v26(v31 + *(v32 + 48), v27, v11);
  sub_1E670DB40(v29, v28, v10);
  v33 = *(v12 + 8);

  v33(v37, v11);
  v33(v27, v11);
  sub_1E670D8A0(v29, v28, v10);
}

uint64_t sub_1E670C2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for SummaryWorkoutsCardErrorItemView(0, a2, a3, a4);
  sub_1E670B554(v5);
  (*(v6 + 32))(a1 + *(v5 + 36));
}

uint64_t sub_1E670C358@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>, double a7@<D0>)
{
  *a6 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  swift_storeEnumTagMultiPayload();
  v15 = type metadata accessor for SummaryWorkoutsCardErrorItemView(0, a4, a5, v14);
  v16 = *(v15 + 36);
  v18 = type metadata accessor for SummaryWorkoutsCardErrorItem(0, a4, a5, v17);
  (*(*(v18 - 8) + 32))(&a6[v16], a1, v18);
  *&a6[*(v15 + 40)] = a7;
  return sub_1E670B4B0(a2, a3, a4, a5);
}

uint64_t sub_1E670C464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v80 = a1;
  v85 = a2;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096718, &qword_1E6720A68);
  MEMORY[0x1EEE9AC00](v73);
  v3 = &v73 - v2;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096720, &qword_1E6720A70);
  MEMORY[0x1EEE9AC00](v74);
  v76 = &v73 - v4;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096728, &qword_1E6720A78);
  MEMORY[0x1EEE9AC00](v75);
  v78 = &v73 - v5;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096730, &qword_1E6720A80);
  v6 = MEMORY[0x1EEE9AC00](v84);
  v77 = &v73 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v79 = &v73 - v8;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096738, &qword_1E6720A88);
  MEMORY[0x1EEE9AC00](v81);
  v83 = &v73 - v9;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096740, &qword_1E6720A90);
  v10 = MEMORY[0x1EEE9AC00](v82);
  v12 = &v73 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v73 - v13;
  v15 = sub_1E671FEBC();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v73 - v20;
  sub_1E670CEF4(&v73 - v20);
  (*(v16 + 104))(v19, *MEMORY[0x1E697E6C0], v15);
  v22 = sub_1E671FEAC();
  v23 = *(v16 + 8);
  v23(v19, v15);
  v23(v21, v15);
  if (v22)
  {
    v24 = sub_1E672039C();
    sub_1E67204EC();
    sub_1E671FF1C();
    *&v86[54] = v91;
    *&v86[70] = v92;
    *&v86[86] = v93;
    *&v86[102] = v94;
    *&v86[6] = v88;
    *&v86[22] = v89;
    v87 = 0;
    *&v86[38] = v90;
    v25 = sub_1E67204EC();
    v27 = v26;
    v28 = &v12[*(v82 + 36)];
    sub_1E670CC94(*(v80 + 16), *(v80 + 24), v28);
    v29 = (v28 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096768, &qword_1E6720AA8) + 36));
    *v29 = v25;
    v29[1] = v27;
    v30 = *&v86[32];
    *(v12 + 66) = *&v86[48];
    *(v12 + 50) = v30;
    v31 = *v86;
    *(v12 + 34) = *&v86[16];
    *(v12 + 18) = v31;
    *(v12 + 16) = *&v86[110];
    *(v12 + 114) = *&v86[96];
    v32 = *&v86[64];
    *(v12 + 98) = *&v86[80];
    *v12 = v24;
    *(v12 + 1) = 0x3FFC71C71C71C71CLL;
    *(v12 + 8) = 0;
    *(v12 + 82) = v32;
    v33 = &qword_1ED096740;
    v34 = &qword_1E6720A90;
    sub_1E670D7E4(v12, v14, &qword_1ED096740, &qword_1E6720A90);
    sub_1E670D71C(v14, v83, &qword_1ED096740, &qword_1E6720A90);
    swift_storeEnumTagMultiPayload();
    sub_1E670D1F8();
    sub_1E670D408();
    sub_1E672007C();
    v35 = v14;
  }

  else
  {
    sub_1E670B5FC(v80, v3);
    v36 = sub_1E672010C();
    sub_1E671FE5C();
    v37 = &v3[*(v73 + 36)];
    *v37 = v36;
    *(v37 + 1) = v38;
    *(v37 + 2) = v39;
    *(v37 + 3) = v40;
    *(v37 + 4) = v41;
    v37[40] = 0;
    sub_1E67204EC();
    sub_1E671FF1C();
    v42 = v76;
    sub_1E670D7E4(v3, v76, &qword_1ED096718, &qword_1E6720A68);
    v43 = (v42 + *(v74 + 36));
    v44 = v91;
    v45 = v93;
    v46 = v94;
    v43[4] = v92;
    v43[5] = v45;
    v43[6] = v46;
    v47 = v89;
    v48 = v90;
    *v43 = v88;
    v43[1] = v47;
    v43[2] = v48;
    v43[3] = v44;
    v49 = sub_1E672013C();
    sub_1E671FE5C();
    v51 = v50;
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = v78;
    sub_1E670D7E4(v42, v78, &qword_1ED096720, &qword_1E6720A70);
    v59 = v58 + *(v75 + 36);
    *v59 = v49;
    *(v59 + 8) = v51;
    *(v59 + 16) = v53;
    *(v59 + 24) = v55;
    *(v59 + 32) = v57;
    *(v59 + 40) = 0;
    LOBYTE(v42) = sub_1E67200EC();
    sub_1E671FE5C();
    v61 = v60;
    v63 = v62;
    v65 = v64;
    v67 = v66;
    v68 = v58;
    v69 = v77;
    sub_1E670D7E4(v68, v77, &qword_1ED096728, &qword_1E6720A78);
    v70 = v69 + *(v84 + 36);
    *v70 = v42;
    *(v70 + 8) = v61;
    *(v70 + 16) = v63;
    *(v70 + 24) = v65;
    *(v70 + 32) = v67;
    *(v70 + 40) = 0;
    v33 = &qword_1ED096730;
    v34 = &qword_1E6720A80;
    v71 = v79;
    sub_1E670D7E4(v69, v79, &qword_1ED096730, &qword_1E6720A80);
    sub_1E670D71C(v71, v83, &qword_1ED096730, &qword_1E6720A80);
    swift_storeEnumTagMultiPayload();
    sub_1E670D1F8();
    sub_1E670D408();
    sub_1E672007C();
    v35 = v71;
  }

  return sub_1E670D784(v35, v33, v34);
}

__n128 sub_1E670CC94@<Q0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967B8, &qword_1E6720AC8);
  v8 = v7 - 8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = v40 - v9;
  v12 = type metadata accessor for SummaryWorkoutsCardErrorItemView(0, a2, a3, v11);
  sub_1E670B5FC(v12, v10);
  LOBYTE(a3) = sub_1E672010C();
  sub_1E671FE5C();
  v14 = v13;
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v21 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096718, &qword_1E6720A68) + 36)];
  *v21 = a3;
  *(v21 + 1) = v14;
  *(v21 + 2) = v16;
  *(v21 + 3) = v18;
  *(v21 + 4) = v20;
  v21[40] = 0;
  LOBYTE(a3) = sub_1E672013C();
  sub_1E671FE5C();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967C0, &qword_1E6720AD0) + 36)];
  *v30 = a3;
  *(v30 + 1) = v23;
  *(v30 + 2) = v25;
  *(v30 + 3) = v27;
  *(v30 + 4) = v29;
  v30[40] = 0;
  LOBYTE(a3) = sub_1E67200EC();
  sub_1E671FE5C();
  v31 = &v10[*(v8 + 44)];
  *v31 = a3;
  *(v31 + 1) = v32;
  *(v31 + 2) = v33;
  *(v31 + 3) = v34;
  *(v31 + 4) = v35;
  v31[40] = 0;
  sub_1E67204EC();
  sub_1E671FF1C();
  sub_1E670D7E4(v10, a4, &qword_1ED0967B8, &qword_1E6720AC8);
  v36 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967C8, &qword_1E6720AD8) + 36);
  v37 = v40[5];
  *(v36 + 64) = v40[4];
  *(v36 + 80) = v37;
  *(v36 + 96) = v40[6];
  v38 = v40[1];
  *v36 = v40[0];
  *(v36 + 16) = v38;
  result = v40[3];
  *(v36 + 32) = v40[2];
  *(v36 + 48) = result;
  return result;
}

uint64_t sub_1E670CEF4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E671FFFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1E670DE54(v2, &v17 - v9);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_1E671FEBC();
    return (*(*(v11 - 8) + 32))(a1, v10, v11);
  }

  else
  {
    v13 = sub_1E67205DC();
    v14 = sub_1E67200DC();
    if (os_log_type_enabled(v14, v13))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v18 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1E670DEC4(0x5463696D616E7944, 0xEF657A6953657079, &v18);
      _os_log_impl(&dword_1E6707000, v14, v13, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x1E694FF50](v16, -1, -1);
      MEMORY[0x1E694FF50](v15, -1, -1);
    }

    sub_1E671FFEC();
    swift_getAtKeyPath();

    return (*(v5 + 8))(v7, v4);
  }
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

unint64_t sub_1E670D1F8()
{
  result = qword_1ED096748;
  if (!qword_1ED096748)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096740, &qword_1E6720A90);
    sub_1E670D2F8();
    sub_1E670DA90(&qword_1ED096760, &qword_1ED096768, &qword_1E6720AA8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096748);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E670D2F8()
{
  result = qword_1EE2C5460;
  if (!qword_1EE2C5460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096750, &qword_1E6720A98);
    sub_1E670D384();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5460);
  }

  return result;
}

unint64_t sub_1E670D384()
{
  result = qword_1EE2C5488;
  if (!qword_1EE2C5488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5488);
  }

  return result;
}

unint64_t sub_1E670D408()
{
  result = qword_1ED096770;
  if (!qword_1ED096770)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096730, &qword_1E6720A80);
    sub_1E670D494();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096770);
  }

  return result;
}

unint64_t sub_1E670D494()
{
  result = qword_1ED096778;
  if (!qword_1ED096778)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096728, &qword_1E6720A78);
    sub_1E670D520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096778);
  }

  return result;
}

unint64_t sub_1E670D520()
{
  result = qword_1ED096780;
  if (!qword_1ED096780)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096720, &qword_1E6720A70);
    sub_1E670D5AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096780);
  }

  return result;
}

unint64_t sub_1E670D5AC()
{
  result = qword_1ED096788;
  if (!qword_1ED096788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096718, &qword_1E6720A68);
    sub_1E670D638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096788);
  }

  return result;
}

unint64_t sub_1E670D638()
{
  result = qword_1ED096790;
  if (!qword_1ED096790)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096798, &qword_1E6720AB0);
    sub_1E670DA90(&qword_1ED0967A0, &qword_1ED0967A8, &qword_1E6720AB8, MEMORY[0x1E6981870]);
    sub_1E670DA90(&qword_1EE2C5408, &qword_1ED0967B0, &qword_1E6720AC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096790);
  }

  return result;
}

uint64_t sub_1E670D71C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E670D784(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1E670D7E4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_1E670D84C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E671FF4C();
  *a1 = result;
  return result;
}

uint64_t sub_1E670D8A0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_1E670D8BC@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x1E694F590]();
  *a1 = result;
  return result;
}

unint64_t sub_1E670D920()
{
  result = qword_1ED0967F8;
  if (!qword_1ED0967F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0967D8, &qword_1E6720B18);
    sub_1E670D9AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0967F8);
  }

  return result;
}

unint64_t sub_1E670D9AC()
{
  result = qword_1ED096800;
  if (!qword_1ED096800)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0967E8, &qword_1E6720B58);
    sub_1E670DA90(&qword_1ED096808, &qword_1ED096810, &qword_1E6720B68, MEMORY[0x1E697D680]);
    sub_1E670DA90(&qword_1ED096818, &qword_1ED096820, &qword_1E6720B70, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096800);
  }

  return result;
}

uint64_t sub_1E670DA90(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_1E670DAD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0967D8, &qword_1E6720B18);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E670DB40(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t objectdestroy_5Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = type metadata accessor for SummaryWorkoutsCardErrorItemView(0, v5, v6, a4);
  v19 = *(*(v7 - 8) + 80);
  v8 = v4 + ((v19 + 32) & ~v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v9 = sub_1E671FEBC();
    (*(*(v9 - 8) + 8))(v8, v9);
  }

  else
  {
  }

  v10 = v8 + *(v7 + 36);
  (*(*(v5 - 8) + 8))(v10, v5);
  v12 = type metadata accessor for SummaryWorkoutsCardErrorItem(0, v5, v6, v11);
  v13 = v12[9];
  v14 = sub_1E671FD7C();
  v15 = *(*(v14 - 8) + 8);
  v15(v10 + v13, v14);
  v15(v10 + v12[10], v14);
  v15(v10 + v12[11], v14);
  v16 = *(v7 + 44);
  swift_getFunctionTypeMetadata1();
  v17 = sub_1E671FE1C();
  (*(*(v17 - 8) + 8))(v8 + v16, v17);

  return swift_deallocObject();
}

uint64_t sub_1E670DDB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v7 = *(type metadata accessor for SummaryWorkoutsCardErrorItemView(0, v5, v6, a4) - 8);
  return sub_1E670C2EC(v4 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), v5, v6, v8);
}

uint64_t sub_1E670DE54(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E670DEC4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1E670DFDC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1E670E0E8(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

unint64_t sub_1E670DFDC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1E670E144(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1E672060C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t sub_1E670E0E8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *sub_1E670E144(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E670E190(a1, a2);
  sub_1E670E2C0(&unk_1F5FD4888);
  return v3;
}

void *sub_1E670E190(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E670E3AC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1E672060C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1E67205AC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1E670E3AC(v10, 0);
        result = sub_1E67205FC();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1E670E2C0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1E670E420(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1E670E3AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096848, &unk_1E6720B90);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1E670E420(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096848, &unk_1E6720B90);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

void sub_1E670E520(uint64_t a1)
{
  sub_1E670E614(319);
  if (v3 <= 0x3F)
  {
    type metadata accessor for SummaryWorkoutsCardErrorItem(319, *(a1 + 16), *(a1 + 24), v2);
    if (v4 <= 0x3F)
    {
      swift_getFunctionTypeMetadata1();
      sub_1E671FE1C();
      if (v5 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E670E614(uint64_t a1)
{
  if (!qword_1EE2C54B8[0])
  {
    sub_1E671FEBC();
    v1 = sub_1E671FE6C();
    if (!v2)
    {
      atomic_store(v1, qword_1EE2C54B8);
    }
  }
}

unint64_t sub_1E670E66C()
{
  result = qword_1ED096858;
  if (!qword_1ED096858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096860, &qword_1E6720BE8);
    sub_1E670D1F8();
    sub_1E670D408();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096858);
  }

  return result;
}

uint64_t sub_1E670E770(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return sub_1E672052C();
}

uint64_t sub_1E670E940(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v4 = swift_allocObject();
    *(v4 + 16) = a1;
    *(v4 + 24) = a2;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096878, &qword_1E6720CB8);
  return sub_1E671FDFC();
}

uint64_t (*sub_1E670E9D4())()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B8, &qword_1E6720D00);
  sub_1E671FE0C();
  if (!v2)
  {
    return 0;
  }

  v0 = swift_allocObject();
  *(v0 + 16) = v2;
  *(v0 + 24) = v3;
  return sub_1E6712EA8;
}

uint64_t sub_1E670EA64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for SummaryArtwork(255);
  swift_getFunctionTypeMetadata1();
  return sub_1E671FDFC();
}

uint64_t sub_1E670EAC0(uint64_t a1)
{
  type metadata accessor for SummaryArtwork(255);
  swift_getFunctionTypeMetadata1();
  sub_1E671FE1C();
  sub_1E671FE0C();
  return v2;
}

uint64_t sub_1E670EB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v64 = a2;
  v5 = *(a1 + 16);
  v53 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v52 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E671FEEC();
  v56 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v55 = &v51 - v8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096880, &unk_1E6720CC0);
  v63 = v7;
  v9 = sub_1E671FEEC();
  v58 = *(v9 - 8);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v54 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v57 = &v51 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096870, &qword_1E6720CB0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v51 - v14;
  v16 = type metadata accessor for SummaryArtwork(0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
  v20 = sub_1E672008C();
  v61 = *(v20 - 8);
  v62 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v60 = &v51 - v21;
  sub_1E670D71C(v3 + *(a1 + 52), v15, &qword_1ED096870, &qword_1E6720CB0);
  v22 = (*(v17 + 48))(v15, 1, v16);
  v23 = MEMORY[0x1E697F568];
  if (v22 == 1)
  {
    sub_1E670D784(v15, &qword_1ED096870, &qword_1E6720CB0);
    v79[0] = sub_1E672039C();
    v79[1] = 0x3FFC71C71C71C71CLL;
    v80 = 0;
    v24 = *(a1 + 24);
    v77 = v24;
    v78 = v23;
    WitnessTable = swift_getWitnessTable();
    v26 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0, MEMORY[0x1E697EC18]);
    v75 = WitnessTable;
    v76 = v26;
    v27 = swift_getWitnessTable();
    v28 = sub_1E670D384();
    v29 = v60;
    sub_1E6718738(v79, v9, v59, v27, v28);
  }

  else
  {
    sub_1E67133E4(v15, v19);
    v30 = v3;
    v31 = sub_1E670EAC0(a1);
    v32 = v52;
    v33 = v19;
    v51 = v19;
    v31(v19);

    v24 = *(a1 + 24);
    v34 = v55;
    sub_1E67202CC();
    (v53[1])(v32, v5);
    v35 = sub_1E67204DC();
    v52 = v36;
    v53 = &v51;
    MEMORY[0x1EEE9AC00](v35);
    *(&v51 - 4) = v5;
    *(&v51 - 3) = v24;
    *(&v51 - 2) = v30;
    *(&v51 - 1) = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969B0, &qword_1E6720E50);
    v67 = v24;
    v68 = v23;
    v37 = v63;
    v38 = swift_getWitnessTable();
    sub_1E6713454();
    v39 = v54;
    sub_1E672035C();
    (*(v56 + 8))(v34, v37);
    v40 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0, MEMORY[0x1E697EC18]);
    v65 = v38;
    v66 = v40;
    v41 = swift_getWitnessTable();
    v42 = v57;
    sub_1E671EA50();
    v43 = *(v58 + 8);
    v43(v39, v9);
    sub_1E671EA50();
    v44 = sub_1E670D384();
    v29 = v60;
    sub_1E6718640(v39, v9, v59, v41, v44);
    v43(v39, v9);
    v23 = MEMORY[0x1E697F568];
    v43(v42, v9);
    sub_1E671352C(v51);
  }

  v73 = v24;
  v74 = v23;
  v45 = swift_getWitnessTable();
  v46 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0, MEMORY[0x1E697EC18]);
  v71 = v45;
  v72 = v46;
  v47 = swift_getWitnessTable();
  v48 = sub_1E670D384();
  v69 = v47;
  v70 = v48;
  v49 = v62;
  swift_getWitnessTable();
  sub_1E671EA50();
  return (*(v61 + 8))(v29, v49);
}

void *sub_1E670F360@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1E671FEBC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  sub_1E670CEF4(v16 - v7);
  (*(v3 + 104))(v6, *MEMORY[0x1E697E6C0], v2);
  v9 = sub_1E671FEAC();
  v10 = *(v3 + 8);
  v10(v6, v2);
  result = (v10)(v8, v2);
  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969B8, &qword_1E6720E58);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_1E6720C00;
    *(v12 + 32) = sub_1E671EA58();
    *(v12 + 40) = sub_1E672039C();
    sub_1E672053C();
    MEMORY[0x1E694FA90](v12);
    result = sub_1E671FE9C();
    v13 = v16[1];
    v14 = v17;
    v15 = v18;
  }

  else
  {
    v13 = 0;
    v14 = 0uLL;
    v15 = 0uLL;
  }

  *a1 = v13;
  *(a1 + 8) = v14;
  *(a1 + 24) = v15;
  return result;
}

uint64_t sub_1E670F550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_1E672005C();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096980, &qword_1E6720DC0);
  return sub_1E670F5B0(v2, *(a1 + 16), *(a1 + 24), a2 + *(v5 + 44));
}

uint64_t sub_1E670F5B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v103 = a3;
  v99 = a2;
  v100 = a4;
  v5 = sub_1E67201EC();
  v97 = *(v5 - 8);
  v98 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v96 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E672038C();
  v93 = *(v7 - 8);
  v94 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096988, &qword_1E6720DC8);
  v95 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v11 = &v90 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v90 - v13;
  v15 = sub_1E671FD7C();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096990, &qword_1E6720DD0);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v104 = &v90 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v90 - v22;
  v103 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView(0, v99, v103, v24);
  v25 = *(v103 + 44);
  v99 = a1;
  sub_1E670D71C(a1 + v25, v14, &qword_1ED096868, &unk_1E6721040);
  v26 = (*(v16 + 48))(v14, 1, v15);
  v101 = v23;
  if (v26 == 1)
  {
    sub_1E670D784(v14, &qword_1ED096868, &unk_1E6721040);
    v27 = 1;
  }

  else
  {
    v28 = *(v16 + 32);
    v91 = v18;
    v92 = v15;
    v28(v18, v14, v15);
    v29 = sub_1E671FD5C();
    v31 = v30;
    v33 = v32;
    (*(v93 + 104))(v9, *MEMORY[0x1E69814D8], v94);
    v105 = sub_1E67203AC();
    v34 = sub_1E672025C();
    v36 = v35;
    v38 = v37;
    v93 = v39;
    sub_1E670D8A0(v29, v31, v33 & 1);

    sub_1E672020C();
    sub_1E672018C();
    sub_1E67201DC();

    v40 = sub_1E672027C();
    v42 = v41;
    v44 = v43;
    v94 = v45;

    sub_1E670D8A0(v34, v36, v38 & 1);

    (*(v16 + 8))(v91, v92);
    KeyPath = swift_getKeyPath();
    v47 = &v11[*(v102 + 36)];
    v48 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969A0, &qword_1E6720E10) + 28);
    v49 = *MEMORY[0x1E6980FD8];
    v50 = sub_1E672026C();
    v51 = *(v50 - 8);
    (*(v51 + 104))(v47 + v48, v49, v50);
    (*(v51 + 56))(v47 + v48, 0, 1, v50);
    *v47 = swift_getKeyPath();
    *v11 = v40;
    *(v11 + 1) = v42;
    v52 = v44 & 1;
    v23 = v101;
    v11[16] = v52;
    *(v11 + 3) = v94;
    *(v11 + 4) = KeyPath;
    *(v11 + 5) = 1;
    v11[48] = 0;
    sub_1E670D7E4(v11, v23, &qword_1ED096988, &qword_1E6720DC8);
    v27 = 0;
  }

  (*(v95 + 56))(v23, v27, 1, v102);
  v53 = sub_1E671FD5C();
  v55 = v54;
  v57 = v56;
  sub_1E67201CC();
  sub_1E672016C();

  v59 = v96;
  v58 = v97;
  v60 = v98;
  (*(v97 + 104))(v96, *MEMORY[0x1E6980EA8], v98);
  sub_1E672022C();

  (*(v58 + 8))(v59, v60);
  v97 = sub_1E672027C();
  v98 = v61;
  v102 = v62;
  LODWORD(v95) = v63;

  sub_1E670D8A0(v53, v55, v57 & 1);

  v96 = swift_getKeyPath();
  v64 = sub_1E671FD5C();
  v66 = v65;
  v68 = v67;
  sub_1E672020C();
  sub_1E672019C();
  sub_1E67201DC();

  v103 = sub_1E672027C();
  v70 = v69;
  v72 = v71;
  v99 = v73;

  sub_1E670D8A0(v64, v66, v68 & 1);

  v74 = swift_getKeyPath();
  LODWORD(v94) = sub_1E67200BC();
  v108 = v72 & 1;
  v107 = 0;
  v75 = v101;
  v76 = v104;
  sub_1E670D71C(v101, v104, &qword_1ED096990, &qword_1E6720DD0);
  v77 = v95 & 1;
  v106 = v95 & 1;
  LOBYTE(v64) = v107;
  v78 = v108;
  v79 = v100;
  sub_1E670D71C(v76, v100, &qword_1ED096990, &qword_1E6720DD0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096998, &qword_1E6720E08);
  v81 = v79 + *(v80 + 48);
  v82 = v97;
  v83 = v98;
  v84 = v102;
  *v81 = v97;
  *(v81 + 8) = v84;
  *(v81 + 16) = v77;
  v85 = v96;
  *(v81 + 24) = v83;
  *(v81 + 32) = v85;
  *(v81 + 40) = 2;
  *(v81 + 48) = 0;
  v86 = v79 + *(v80 + 64);
  v87 = v103;
  *v86 = v103;
  *(v86 + 8) = v70;
  *(v86 + 16) = v78;
  *(v86 + 24) = v99;
  *(v86 + 32) = v74;
  *(v86 + 40) = 1;
  *(v86 + 48) = v64;
  *(v86 + 52) = v94;
  v88 = v82;
  sub_1E670DB40(v82, v84, v77);

  sub_1E670DB40(v87, v70, v78 & 1);

  sub_1E670D784(v75, &qword_1ED096990, &qword_1E6720DD0);
  sub_1E670D8A0(v87, v70, v78 & 1);

  sub_1E670D8A0(v88, v102, v106);

  return sub_1E670D784(v104, &qword_1ED096990, &qword_1E6720DD0);
}

uint64_t sub_1E670FEDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  swift_storeEnumTagMultiPayload();
  v22 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView(0, a14, a15, v21);
  v23 = v22[9];
  v24 = sub_1E671FD7C();
  v25 = *(*(v24 - 8) + 32);
  v25(&a9[v23], a1, v24);
  v25(&a9[v22[10]], a2, v24);
  sub_1E670D7E4(a3, &a9[v22[11]], &qword_1ED096868, &unk_1E6721040);
  a9[v22[12]] = a4;
  sub_1E670D7E4(a5, &a9[v22[13]], &qword_1ED096870, &qword_1E6720CB0);
  *&a9[v22[14]] = a10;
  *&a9[v22[15]] = a11;
  v26 = v22[16];
  v27 = sub_1E671FDCC();
  (*(*(v27 - 8) + 32))(&a9[v26], a6, v27);
  sub_1E670E940(a7, a8);
  return sub_1E670EA64(a12, a13, a14);
}

uint64_t sub_1E67100C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v50 = a2;
  v48 = *(a1 - 8);
  v49 = *(v48 + 64);
  v2 = MEMORY[0x1EEE9AC00](a1);
  v46 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *(v2 + 16);
  v4 = v2;
  v44 = v2;
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096880, &unk_1E6720CC0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
  sub_1E672008C();
  v42 = *(v4 + 24);
  v67 = v42;
  v68 = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v6 = MEMORY[0x1E697EC18];
  v7 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0, MEMORY[0x1E697EC18]);
  v65 = WitnessTable;
  v66 = v7;
  v8 = swift_getWitnessTable();
  v9 = sub_1E670D384();
  v63 = v8;
  v64 = v9;
  v41 = MEMORY[0x1E697F968];
  swift_getWitnessTable();
  sub_1E672047C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096888, &qword_1E6720CD0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096890, &qword_1E6720CD8);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096898, &qword_1E6720CE0);
  swift_getTupleTypeMetadata2();
  sub_1E672051C();
  swift_getWitnessTable();
  sub_1E672047C();
  sub_1E672008C();
  v10 = sub_1E67203DC();
  v43 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v37 = &v37 - v11;
  v12 = swift_getWitnessTable();
  v13 = sub_1E670DA90(&qword_1EE2C5438, &qword_1ED096888, &qword_1E6720CD0, v6);
  v61 = v12;
  v62 = v13;
  v14 = swift_getWitnessTable();
  v15 = sub_1E670DA90(&qword_1EE2C5430, &qword_1ED096890, &qword_1E6720CD8, v6);
  v59 = v14;
  v60 = v15;
  v16 = swift_getWitnessTable();
  v17 = swift_getWitnessTable();
  v57 = v16;
  v58 = v17;
  v56 = swift_getWitnessTable();
  v38 = v10;
  v39 = swift_getWitnessTable();
  v54 = v10;
  v55 = v39;
  v40 = MEMORY[0x1E6981218];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v41 = *(OpaqueTypeMetadata2 - 8);
  v19 = MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v37 - v22;
  v24 = v45;
  v25 = v42;
  v51 = v45;
  v52 = v42;
  v26 = v47;
  v53 = v47;
  sub_1E67203CC();
  v27 = v48;
  v28 = v46;
  v29 = v44;
  (*(v48 + 16))(v46, v26, v44);
  v30 = (*(v27 + 80) + 32) & ~*(v27 + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = v24;
  *(v31 + 24) = v25;
  (*(v27 + 32))(v31 + v30, v28, v29);
  v32 = v38;
  v33 = v39;
  v34 = v37;
  sub_1E67202DC();

  (*(v43 + 8))(v34, v32);
  v54 = v32;
  v55 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1E671EA50();
  v35 = *(v41 + 8);
  v35(v21, OpaqueTypeMetadata2);
  sub_1E671EA50();
  return (v35)(v23, OpaqueTypeMetadata2);
}

uint64_t sub_1E67107A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void, void)@<X2>, uint64_t a4@<X8>)
{
  v84 = a1;
  v94 = a4;
  v87 = a2;
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096880, &unk_1E6720CC0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
  sub_1E672008C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096898, &qword_1E6720CE0);
  swift_getTupleTypeMetadata2();
  v78 = sub_1E672051C();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1E672047C();
  v83 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v75 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v86 = v74 - v8;
  v88 = a3;
  v114 = a3;
  v115 = MEMORY[0x1E697F568];
  v9 = swift_getWitnessTable();
  v10 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0, MEMORY[0x1E697EC18]);
  v112 = v9;
  v113 = v10;
  v11 = swift_getWitnessTable();
  v12 = sub_1E670D384();
  v110 = v11;
  v111 = v12;
  v74[1] = swift_getWitnessTable();
  v13 = sub_1E672047C();
  v76 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v74 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096888, &qword_1E6720CD0);
  v95 = v13;
  v16 = sub_1E671FEEC();
  v79 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v85 = v74 - v17;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096890, &qword_1E6720CD8);
  v92 = v16;
  v18 = sub_1E671FEEC();
  v82 = *(v18 - 8);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v81 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v80 = v74 - v21;
  v22 = sub_1E671FEBC();
  v23 = *(v22 - 8);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v26 = v74 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = v74 - v27;
  v93 = v5;
  v91 = sub_1E672008C();
  v90 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v89 = v74 - v29;
  v30 = v84;
  sub_1E670CEF4(v28);
  (*(v23 + 104))(v26, *MEMORY[0x1E697E6C0], v22);
  LOBYTE(v5) = sub_1E671FEAC();
  v31 = *(v23 + 8);
  v31(v26, v22);
  v32 = (v31)(v28, v22);
  if (v5)
  {
    MEMORY[0x1EEE9AC00](v32);
    v33 = v87;
    v86 = v18;
    v34 = v88;
    v74[-4] = v87;
    v74[-3] = v34;
    v74[-2] = v30;
    sub_1E672004C();
    sub_1E672046C();
    WitnessTable = sub_1E67204AC();
    v75 = v35;
    v78 = v74;
    MEMORY[0x1EEE9AC00](WitnessTable);
    v74[-4] = v33;
    v74[-3] = v34;
    v74[-2] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968C0, &qword_1E6720D08);
    v83 = MEMORY[0x1E6981870];
    v36 = v95;
    v37 = swift_getWitnessTable();
    sub_1E670DA90(&qword_1EE2C53E0, &qword_1ED0968C0, &qword_1E6720D08, MEMORY[0x1E69817F8]);
    sub_1E672035C();
    (*(v76 + 8))(v15, v36);
    WitnessTable = sub_1E67204BC();
    v76 = v38;
    v78 = v74;
    MEMORY[0x1EEE9AC00](WitnessTable);
    v74[-4] = v33;
    v74[-3] = v34;
    v39 = v86;
    v74[-2] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968C8, &qword_1E6720D10);
    v40 = MEMORY[0x1E697EC18];
    v41 = sub_1E670DA90(&qword_1EE2C5438, &qword_1ED096888, &qword_1E6720CD0, MEMORY[0x1E697EC18]);
    v98 = v37;
    v99 = v41;
    v42 = v92;
    v43 = swift_getWitnessTable();
    sub_1E670DA90(&qword_1EE2C53D0, &qword_1ED0968C8, &qword_1E6720D10, MEMORY[0x1E6981F48]);
    v44 = v81;
    v45 = v85;
    sub_1E672035C();
    (*(v79 + 8))(v45, v42);
    v46 = sub_1E670DA90(&qword_1EE2C5430, &qword_1ED096890, &qword_1E6720CD8, v40);
    v96 = v43;
    v97 = v46;
    v47 = swift_getWitnessTable();
    v48 = v80;
    sub_1E671EA50();
    v49 = *(v82 + 8);
    v49(v44, v39);
    sub_1E671EA50();
    v50 = v93;
    v51 = swift_getWitnessTable();
    v52 = v89;
    sub_1E6718640(v44, v39, v50, v47, v51);
    v49(v44, v39);
    v49(v48, v39);
  }

  else
  {
    v53 = sub_1E672005C();
    MEMORY[0x1EEE9AC00](v53);
    v54 = v88;
    v74[-4] = v87;
    v74[-3] = v54;
    v74[-2] = v30;
    v55 = v75;
    sub_1E672046C();
    v56 = v93;
    v57 = swift_getWitnessTable();
    sub_1E671EA50();
    v88 = *(v83 + 8);
    v88(v55, v56);
    sub_1E671EA50();
    v58 = swift_getWitnessTable();
    v59 = MEMORY[0x1E697EC18];
    v60 = sub_1E670DA90(&qword_1EE2C5438, &qword_1ED096888, &qword_1E6720CD0, MEMORY[0x1E697EC18]);
    v108 = v58;
    v109 = v60;
    v61 = swift_getWitnessTable();
    v62 = sub_1E670DA90(&qword_1EE2C5430, &qword_1ED096890, &qword_1E6720CD8, v59);
    v106 = v61;
    v107 = v62;
    v63 = swift_getWitnessTable();
    v52 = v89;
    sub_1E6718738(v55, v18, v56, v63, v57);
    v64 = v88;
    v88(v55, v56);
    v64(v86, v56);
  }

  v65 = swift_getWitnessTable();
  v66 = MEMORY[0x1E697EC18];
  v67 = sub_1E670DA90(&qword_1EE2C5438, &qword_1ED096888, &qword_1E6720CD0, MEMORY[0x1E697EC18]);
  v104 = v65;
  v105 = v67;
  v68 = swift_getWitnessTable();
  v69 = sub_1E670DA90(&qword_1EE2C5430, &qword_1ED096890, &qword_1E6720CD8, v66);
  v102 = v68;
  v103 = v69;
  v70 = swift_getWitnessTable();
  v71 = swift_getWitnessTable();
  v100 = v70;
  v101 = v71;
  v72 = v91;
  swift_getWitnessTable();
  sub_1E671EA50();
  return (*(v90 + 8))(v52, v72);
}

uint64_t sub_1E6711528@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096880, &unk_1E6720CC0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
  v5 = sub_1E672008C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  v13 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView(0, a1, a2, v12);
  sub_1E670EB2C(v13, v9);
  v20[6] = a2;
  v20[7] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v15 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0, MEMORY[0x1E697EC18]);
  v20[4] = WitnessTable;
  v20[5] = v15;
  v16 = swift_getWitnessTable();
  v17 = sub_1E670D384();
  v20[2] = v16;
  v20[3] = v17;
  swift_getWitnessTable();
  sub_1E671EA50();
  v18 = *(v6 + 8);
  v18(v9, v5);
  sub_1E671EA50();
  return (v18)(v11, v5);
}

uint64_t sub_1E6711780@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = sub_1E672000C();
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096958, &qword_1E6720D98);
  return sub_1E67117F0(a2, a3, a4 + *(v7 + 44));
}

uint64_t sub_1E67117F0@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096960, &qword_1E6720DA0);
  v8 = v7 - 8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v41 - v12;
  v15 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView(0, a2, a3, v14);
  sub_1E670F550(v15, v13);
  LOBYTE(a2) = sub_1E67200EC();
  sub_1E671FE5C();
  v17 = v16;
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096968, &qword_1E6720DA8) + 36)];
  *v24 = a2;
  *(v24 + 1) = v17;
  *(v24 + 2) = v19;
  *(v24 + 3) = v21;
  *(v24 + 4) = v23;
  v24[40] = 0;
  LOBYTE(a2) = sub_1E672010C();
  sub_1E671FE5C();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  v33 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096970, &qword_1E6720DB0) + 36)];
  *v33 = a2;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  LOBYTE(a2) = sub_1E672011C();
  sub_1E671FE5C();
  v34 = &v13[*(v8 + 44)];
  *v34 = a2;
  *(v34 + 1) = v35;
  *(v34 + 2) = v36;
  *(v34 + 3) = v37;
  *(v34 + 4) = v38;
  v34[40] = 0;
  sub_1E670D71C(v13, v11, &qword_1ED096960, &qword_1E6720DA0);
  sub_1E670D71C(v11, a4, &qword_1ED096960, &qword_1E6720DA0);
  v39 = a4 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096978, &qword_1E6720DB8) + 48);
  *v39 = 0;
  *(v39 + 8) = 1;
  sub_1E670D784(v13, &qword_1ED096960, &qword_1E6720DA0);
  return sub_1E670D784(v11, &qword_1ED096960, &qword_1E6720DA0);
}

uint64_t sub_1E6711A34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v111 = a2;
  v112 = a3;
  v6 = sub_1E671FDCC();
  v110 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v89 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E672057C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968D0, &qword_1E6720D18);
  MEMORY[0x1EEE9AC00](v98);
  v13 = &v89 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968D8, &qword_1E6720D20);
  v104 = *(v14 - 8);
  v105 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v101 = &v89 - v15;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968E0, &qword_1E6720D28);
  MEMORY[0x1EEE9AC00](v97);
  v100 = &v89 - v16;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968E8, &qword_1E6720D30);
  MEMORY[0x1EEE9AC00](v99);
  v103 = &v89 - v17;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968F0, &qword_1E6720D38);
  MEMORY[0x1EEE9AC00](v102);
  v106 = &v89 - v18;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968F8, &qword_1E6720D40);
  MEMORY[0x1EEE9AC00](v108);
  v109 = &v89 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096900, &qword_1E6720D48);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v107 = &v89 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096908, &qword_1E6720D50);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v89 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v89 - v27;
  v30 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView(0, v111, v112, v29);
  if ((*(a1 + *(v30 + 48)) & 1) == 0)
  {
    v89 = v30;
    v90 = v28;
    v91 = v21;
    v92 = v20;
    v93 = v26;
    v94 = v11;
    v95 = v8;
    v96 = v6;
    v111 = a1;
    v112 = a4;
    sub_1E672049C();
    sub_1E67203EC();
    v31 = sub_1E672028C();
    v33 = v32;
    v35 = v34;
    LODWORD(v113) = sub_1E67200AC();
    v36 = sub_1E672025C();
    v38 = v37;
    v40 = v39;
    sub_1E670D8A0(v31, v33, v35 & 1);

    sub_1E67201FC();
    sub_1E672016C();

    v41 = sub_1E672027C();
    v43 = v42;
    v45 = v44;
    v47 = v46;

    sub_1E670D8A0(v36, v38, v40 & 1);

    v113 = v41;
    v114 = v43;
    v115 = v45 & 1;
    v116 = v47;
    v48 = *MEMORY[0x1E697E728];
    v49 = sub_1E671FEBC();
    (*(*(v49 - 8) + 104))(v13, v48, v49);
    sub_1E6712EE0();
    if (sub_1E672055C())
    {
      sub_1E670DA90(&qword_1ED096918, &qword_1ED0968D0, &qword_1E6720D18, MEMORY[0x1E69E6ED8]);
      v50 = v101;
      sub_1E67202FC();
      sub_1E670D784(v13, &qword_1ED0968D0, &qword_1E6720D18);
      sub_1E670D8A0(v41, v43, v45 & 1);

      v51 = v100;
      v52 = &v100[*(v97 + 36)];
      v53 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096920, &qword_1E6720D58) + 28);
      v54 = *MEMORY[0x1E69816E0];
      v55 = sub_1E67203FC();
      (*(*(v55 - 8) + 104))(v52 + v53, v54, v55);
      *v52 = swift_getKeyPath();
      (*(v104 + 32))(v51, v50, v105);
      LOBYTE(v54) = sub_1E672012C();
      sub_1E671FE5C();
      v57 = v56;
      v59 = v58;
      v61 = v60;
      v63 = v62;
      v64 = v103;
      sub_1E670D7E4(v51, v103, &qword_1ED0968E0, &qword_1E6720D28);
      v65 = v64 + *(v99 + 36);
      *v65 = v54;
      *(v65 + 8) = v57;
      *(v65 + 16) = v59;
      *(v65 + 24) = v61;
      *(v65 + 32) = v63;
      *(v65 + 40) = 0;
      LOBYTE(v54) = sub_1E672011C();
      sub_1E671FE5C();
      v67 = v66;
      v69 = v68;
      v71 = v70;
      v73 = v72;
      v74 = v64;
      v75 = v106;
      sub_1E670D7E4(v74, v106, &qword_1ED0968E8, &qword_1E6720D30);
      v76 = v75 + *(v102 + 36);
      *v76 = v54;
      *(v76 + 8) = v67;
      *(v76 + 16) = v69;
      *(v76 + 24) = v71;
      *(v76 + 32) = v73;
      *(v76 + 40) = 0;
      [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.435294118 alpha:1.0];
      v77 = sub_1E672037C();
      v13 = v109;
      sub_1E670D7E4(v75, v109, &qword_1ED0968F0, &qword_1E6720D38);
      v78 = &v13[*(v108 + 36)];
      *v78 = v77;
      *(v78 + 8) = xmmword_1E6720C10;
      *(v78 + 3) = 0x4000000000000000;
      sub_1E672056C();
      if (qword_1EE2C53B0 == -1)
      {
LABEL_5:
        v79 = qword_1EE2C6190;
        (*(v110 + 16))(v95, v111 + *(v89 + 64), v96);
        v80 = v79;
        v113 = sub_1E672058C();
        v114 = v81;
        v82 = sub_1E67130B0();
        sub_1E6713390(v82, v83, v84);
        v85 = v107;
        sub_1E672031C();

        sub_1E670D784(v13, &qword_1ED0968F8, &qword_1E6720D40);
        v86 = v85;
        v28 = v90;
        sub_1E670D7E4(v86, v90, &qword_1ED096900, &qword_1E6720D48);
        (*(v91 + 56))(v28, 0, 1, v92);
        a4 = v112;
        v26 = v93;
        goto LABEL_6;
      }
    }

    else
    {
      __break(1u);
    }

    swift_once();
    goto LABEL_5;
  }

  (*(v21 + 56))(v28, 1, 1, v20);
LABEL_6:
  sub_1E6708DC8(v28, v26);
  *a4 = 0;
  *(a4 + 8) = 1;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096950, &qword_1E6720D90);
  sub_1E6708DC8(v26, a4 + *(v87 + 48));
  sub_1E670D784(v28, &qword_1ED096908, &qword_1E6720D50);
  return sub_1E670D784(v26, &qword_1ED096908, &qword_1E6720D50);
}

uint64_t sub_1E67124E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v85 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096870, &qword_1E6720CB0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v76 = &v73 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096968, &qword_1E6720DA8);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v73 = &v73 - v11;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096970, &qword_1E6720DB0);
  MEMORY[0x1EEE9AC00](v77);
  v79 = &v73 - v12;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096960, &qword_1E6720DA0);
  MEMORY[0x1EEE9AC00](v78);
  v81 = &v73 - v13;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096898, &qword_1E6720CE0);
  v14 = MEMORY[0x1EEE9AC00](v83);
  v84 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v80 = &v73 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v82 = &v73 - v18;
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096880, &unk_1E6720CC0);
  sub_1E671FEEC();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096758, &qword_1E6720AA0);
  v19 = sub_1E672008C();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v73 - v24;
  v27 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView(0, a2, a3, v26);
  sub_1E670EB2C(v27, v23);
  v89[6] = a3;
  v89[7] = MEMORY[0x1E697F568];
  WitnessTable = swift_getWitnessTable();
  v29 = sub_1E670DA90(&qword_1EE2C5440, &qword_1ED096880, &unk_1E6720CC0, MEMORY[0x1E697EC18]);
  v89[4] = WitnessTable;
  v89[5] = v29;
  v30 = swift_getWitnessTable();
  v31 = sub_1E670D384();
  v89[2] = v30;
  v89[3] = v31;
  v32 = swift_getWitnessTable();
  v33 = v25;
  v34 = v73;
  v74 = v32;
  sub_1E671EA50();
  v75 = *(v20 + 8);
  v75(v23, v19);
  sub_1E670F550(v27, v34);
  LOBYTE(v30) = sub_1E67200EC();
  sub_1E671FE5C();
  v35 = v34 + *(v10 + 44);
  *v35 = v30;
  v36 = v76;
  *(v35 + 8) = v37;
  *(v35 + 16) = v38;
  *(v35 + 24) = v39;
  *(v35 + 32) = v40;
  *(v35 + 40) = 0;
  LOBYTE(v10) = sub_1E672010C();
  sub_1E670D71C(a1 + *(v27 + 52), v36, &qword_1ED096870, &qword_1E6720CB0);
  v41 = type metadata accessor for SummaryArtwork(0);
  (*(*(v41 - 8) + 48))(v36, 1, v41);
  sub_1E670D784(v36, &qword_1ED096870, &qword_1E6720CB0);
  sub_1E671FE5C();
  v43 = v42;
  v45 = v44;
  v47 = v46;
  v49 = v48;
  v50 = v34;
  v51 = v79;
  sub_1E670D7E4(v50, v79, &qword_1ED096968, &qword_1E6720DA8);
  v52 = v51 + *(v77 + 36);
  *v52 = v10;
  *(v52 + 8) = v43;
  *(v52 + 16) = v45;
  *(v52 + 24) = v47;
  *(v52 + 32) = v49;
  *(v52 + 40) = 0;
  LOBYTE(v36) = sub_1E672011C();
  sub_1E671FE5C();
  v54 = v53;
  v56 = v55;
  v58 = v57;
  v60 = v59;
  v61 = v81;
  sub_1E670D7E4(v51, v81, &qword_1ED096970, &qword_1E6720DB0);
  v62 = v61 + *(v78 + 36);
  *v62 = v36;
  *(v62 + 8) = v54;
  *(v62 + 16) = v56;
  *(v62 + 24) = v58;
  *(v62 + 32) = v60;
  *(v62 + 40) = 0;
  sub_1E67204FC();
  sub_1E671FF1C();
  v63 = v80;
  sub_1E670D7E4(v61, v80, &qword_1ED096960, &qword_1E6720DA0);
  v64 = v83;
  v65 = (v63 + *(v83 + 36));
  v66 = v95;
  v65[4] = v94;
  v65[5] = v66;
  v65[6] = v96;
  v67 = v91;
  *v65 = v90;
  v65[1] = v67;
  v68 = v93;
  v65[2] = v92;
  v65[3] = v68;
  v69 = v82;
  sub_1E670D7E4(v63, v82, &qword_1ED096898, &qword_1E6720CE0);
  (*(v20 + 16))(v23, v33, v19);
  v89[0] = v23;
  v70 = v84;
  sub_1E670D71C(v69, v84, &qword_1ED096898, &qword_1E6720CE0);
  v89[1] = v70;
  v88[0] = v19;
  v88[1] = v64;
  v86 = v74;
  v87 = sub_1E6713588();
  sub_1E670E770(v89, 2uLL, v88);
  sub_1E670D784(v69, &qword_1ED096898, &qword_1E6720CE0);
  v71 = v75;
  v75(v33, v19);
  sub_1E670D784(v70, &qword_1ED096898, &qword_1E6720CE0);
  return v71(v23, v19);
}

double sub_1E6712CE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for SummaryWorkoutsCardWorkoutItemView(0, a2, a3, a4);
  v4 = sub_1E670E9D4();
  if (v4)
  {
    v7 = v5;
    v8 = v4;
    v4();

    return sub_1E6712E98(v8, v7);
  }

  return result;
}

double sub_1E6712E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  v8 = *(type metadata accessor for SummaryWorkoutsCardWorkoutItemView(0, v5, v6, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80));

  return sub_1E6712CE8(v9, v5, v6, v7);
}

double sub_1E6712E98(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

unint64_t sub_1E6712EE0()
{
  result = qword_1ED096910;
  if (!qword_1ED096910)
  {
    sub_1E671FEBC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096910);
  }

  return result;
}

uint64_t sub_1E6712F38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969A8, &qword_1E6720E48);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1E670D71C(a1, &v5 - v3, &qword_1ED0969A8, &qword_1E6720E48);
  return sub_1E671FFBC();
}

uint64_t sub_1E6712FE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v13 - v9;
  (*(v11 + 16))(&v13 - v9, a1);
  return a6(v10);
}

unint64_t sub_1E67130B0()
{
  result = qword_1ED096928;
  if (!qword_1ED096928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968F8, &qword_1E6720D40);
    sub_1E671313C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096928);
  }

  return result;
}

unint64_t sub_1E671313C()
{
  result = qword_1ED096930;
  if (!qword_1ED096930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968F0, &qword_1E6720D38);
    sub_1E67131C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096930);
  }

  return result;
}

unint64_t sub_1E67131C8()
{
  result = qword_1ED096938;
  if (!qword_1ED096938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968E8, &qword_1E6720D30);
    sub_1E6713254();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096938);
  }

  return result;
}

unint64_t sub_1E6713254()
{
  result = qword_1ED096940;
  if (!qword_1ED096940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968E0, &qword_1E6720D28);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968D0, &qword_1E6720D18);
    sub_1E670DA90(&qword_1ED096918, &qword_1ED0968D0, &qword_1E6720D18, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    sub_1E670DA90(&qword_1ED096948, &qword_1ED096920, &qword_1E6720D58, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096940);
  }

  return result;
}

unint64_t sub_1E6713390(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2C53C8;
  if (!qword_1EE2C53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C53C8);
  }

  return result;
}

uint64_t sub_1E67133E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryArtwork(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E6713454()
{
  result = qword_1EE2C54A8;
  if (!qword_1EE2C54A8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0969B0, &qword_1E6720E50);
    sub_1E67134D8(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C54A8);
  }

  return result;
}

unint64_t sub_1E67134D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2C54B0;
  if (!qword_1EE2C54B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C54B0);
  }

  return result;
}

uint64_t sub_1E671352C(uint64_t a1)
{
  v2 = type metadata accessor for SummaryArtwork(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E6713588()
{
  result = qword_1ED0969C0;
  if (!qword_1ED0969C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096898, &qword_1E6720CE0);
    sub_1E6713614();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0969C0);
  }

  return result;
}

unint64_t sub_1E6713614()
{
  result = qword_1ED0969C8;
  if (!qword_1ED0969C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096960, &qword_1E6720DA0);
    sub_1E67136A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0969C8);
  }

  return result;
}

unint64_t sub_1E67136A0()
{
  result = qword_1ED0969D0;
  if (!qword_1ED0969D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096970, &qword_1E6720DB0);
    sub_1E671372C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0969D0);
  }

  return result;
}

unint64_t sub_1E671372C()
{
  result = qword_1ED0969D8;
  if (!qword_1ED0969D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096968, &qword_1E6720DA8);
    sub_1E670DA90(&qword_1ED0969E0, &qword_1ED0969E8, &unk_1E6720E60, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0969D8);
  }

  return result;
}

void sub_1E67137EC(uint64_t a1)
{
  sub_1E67139DC(319, qword_1EE2C54B8, MEMORY[0x1E697E730], MEMORY[0x1E697DCC0]);
  if (v1 <= 0x3F)
  {
    sub_1E671FD7C();
    if (v2 <= 0x3F)
    {
      sub_1E67139DC(319, &qword_1EE2C5AF0, MEMORY[0x1E6968848], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E67139DC(319, qword_1EE2C55C8, type metadata accessor for SummaryArtwork, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1E671FDCC();
          if (v5 <= 0x3F)
          {
            sub_1E6713A40(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for SummaryArtwork(255);
              swift_getFunctionTypeMetadata1();
              sub_1E671FE1C();
              if (v7 <= 0x3F)
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

void sub_1E67139DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E6713A40(uint64_t a1)
{
  if (!qword_1EE2C5AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096878, &qword_1E6720CB8);
    v1 = sub_1E671FE1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C5AD0);
    }
  }
}

uint64_t SummaryWorkoutsCardErrorItem.title.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1E671FD7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SummaryWorkoutsCardErrorItem.description.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1E671FD7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SummaryWorkoutsCardErrorItem.buttonTitle.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 44);
  v5 = sub_1E671FD7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SummaryWorkoutsCardErrorItem.init(context:title:description:buttonTitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a5 - 8) + 32))(a7, a1, a5);
  v14 = type metadata accessor for SummaryWorkoutsCardErrorItem(0, a5, a6, v13);
  v15 = v14[9];
  v16 = sub_1E671FD7C();
  v19 = *(*(v16 - 8) + 32);
  (v19)((v16 - 8), a7 + v15, a2, v16);
  v19(a7 + v14[10], a3, v16);
  v17 = a7 + v14[11];

  return (v19)(v17, a4, v16);
}

uint64_t static SummaryWorkoutsCardErrorItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((sub_1E672055C() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for SummaryWorkoutsCardErrorItem(0, a3, a4, v6);
  if ((sub_1E671FD6C() & 1) == 0 || (sub_1E671FD6C() & 1) == 0)
  {
    return 0;
  }

  return sub_1E671FD6C();
}

uint64_t SummaryWorkoutsCardErrorItem.hash(into:)(uint64_t a1, uint64_t a2)
{
  sub_1E672054C();
  sub_1E671FD7C();
  sub_1E6713ECC();
  sub_1E672054C();
  sub_1E672054C();
  return sub_1E672054C();
}

unint64_t sub_1E6713ECC()
{
  result = qword_1EE2C5B00;
  if (!qword_1EE2C5B00)
  {
    sub_1E671FD7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5B00);
  }

  return result;
}

uint64_t SummaryWorkoutsCardErrorItem.hashValue.getter(uint64_t a1)
{
  sub_1E672062C();
  SummaryWorkoutsCardErrorItem.hash(into:)(v3, a1);
  return sub_1E672065C();
}

uint64_t sub_1E6713F74(uint64_t a1, uint64_t a2)
{
  sub_1E672062C();
  SummaryWorkoutsCardErrorItem.hash(into:)(v4, a2);
  return sub_1E672065C();
}

uint64_t sub_1E6713FE0(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1E671FD7C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E6714070(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  v8 = sub_1E671FD7C();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  if (a2 <= v12)
  {
    goto LABEL_28;
  }

  v14 = ((*(*(v8 - 8) + 64) + v11 + ((*(*(v8 - 8) + 64) + v11 + (v13 & ~v11)) & ~v11)) & ~v11) + *(*(v8 - 8) + 64);
  v15 = 8 * v14;
  if (v14 <= 3)
  {
    v17 = ((a2 - v12 + ~(-1 << v15)) >> v15) + 1;
    if (HIWORD(v17))
    {
      v16 = *(a1 + v14);
      if (!v16)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 > 0xFF)
    {
      v16 = *(a1 + v14);
      if (!*(a1 + v14))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v17 < 2)
    {
LABEL_27:
      if (v12)
      {
LABEL_28:
        if (v7 >= v10)
        {
          v23 = *(v6 + 48);

          return v23(a1, v7, v5);
        }

        else
        {
          v21 = *(v9 + 48);

          return v21((a1 + v13) & ~v11);
        }
      }

      return 0;
    }
  }

  v16 = *(a1 + v14);
  if (!*(a1 + v14))
  {
    goto LABEL_27;
  }

LABEL_14:
  v18 = (v16 - 1) << v15;
  if (v14 > 3)
  {
    v18 = 0;
  }

  if (v14)
  {
    if (v14 <= 3)
    {
      v19 = v14;
    }

    else
    {
      v19 = 4;
    }

    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v20 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v20 = *a1;
      }
    }

    else if (v19 == 1)
    {
      v20 = *a1;
    }

    else
    {
      v20 = *a1;
    }
  }

  else
  {
    v20 = 0;
  }

  return v12 + (v20 | v18) + 1;
}

void sub_1E67142E8(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 16);
  v8 = *(v7 - 8);
  v24 = v8;
  v9 = *(v8 + 84);
  v10 = *(sub_1E671FD7C() - 8);
  v11 = *(v10 + 84);
  if (v11 <= v9)
  {
    v12 = v9;
  }

  else
  {
    v12 = *(v10 + 84);
  }

  v13 = *(v10 + 80);
  v14 = *(v8 + 64) + v13;
  v15 = ((*(v10 + 64) + v13 + ((*(v10 + 64) + v13 + (v14 & ~v13)) & ~v13)) & ~v13) + *(v10 + 64);
  if (a3 <= v12)
  {
    v16 = 0;
  }

  else if (v15 <= 3)
  {
    v19 = ((a3 - v12 + ~(-1 << (8 * v15))) >> (8 * v15)) + 1;
    if (HIWORD(v19))
    {
      v16 = 4;
    }

    else
    {
      if (v19 < 0x100)
      {
        v20 = 1;
      }

      else
      {
        v20 = 2;
      }

      if (v19 >= 2)
      {
        v16 = v20;
      }

      else
      {
        v16 = 0;
      }
    }
  }

  else
  {
    v16 = 1;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v15 < 4)
    {
      v18 = (v17 >> (8 * v15)) + 1;
      if (v15)
      {
        v21 = v17 & ~(-1 << (8 * v15));
        bzero(a1, v15);
        if (v15 != 3)
        {
          if (v15 == 2)
          {
            *a1 = v21;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&a1[v15] = v18;
              }

              else
              {
                *&a1[v15] = v18;
              }

              return;
            }
          }

          else
          {
            *a1 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v21;
        a1[2] = BYTE2(v21);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v15);
      *a1 = v17;
      v18 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      a1[v15] = v18;
    }

    return;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&a1[v15] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v15] = 0;
  }

  else if (v16)
  {
    a1[v15] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if (v9 >= v11)
  {
    v23 = *(v24 + 56);

    v23(a1, a2, v9, v7);
  }

  else
  {
    v22 = *(v10 + 56);

    v22(&a1[v14] & ~v13, a2);
  }
}

id sub_1E6714620()
{
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE2C6190 = result;
  return result;
}

uint64_t SummaryArtwork.hash(into:)(uint64_t a1)
{
  v52 = a1;
  v1 = sub_1E671FDBC();
  v49 = *(v1 - 8);
  v50 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v46 = &v45 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969F0, &qword_1E6720F88);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v45 - v6;
  v8 = sub_1E671FE3C();
  v9 = *(v8 - 8);
  v53 = v8;
  v54 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969F8, &qword_1E6720F90);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v45 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v45 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v45 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v45 - v25;
  v27 = type metadata accessor for SummaryArtwork(0);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v45 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E6715EAC(v51, v29);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v30 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B0, &qword_1E6720CF8) + 48);
    sub_1E670D7E4(v29, v17, &qword_1ED0969F8, &qword_1E6720F90);
    sub_1E670D7E4(&v29[v30], v7, &qword_1ED0969F0, &qword_1E6720F88);
    MEMORY[0x1E694FC40](1);
    sub_1E670D71C(v17, v14, &qword_1ED0969F8, &qword_1E6720F90);
    if ((*(v54 + 48))(v14, 1, v53) == 1)
    {
      sub_1E672064C();
    }

    else
    {
      v34 = v53;
      v33 = v54;
      v35 = v48;
      (*(v54 + 32))(v48, v14, v53);
      sub_1E672064C();
      sub_1E67161A0(&qword_1EE2C5AC8, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
      sub_1E672054C();
      (*(v33 + 8))(v35, v34);
    }

    v36 = v50;
    v37 = v47;
    sub_1E670D71C(v7, v47, &qword_1ED0969F0, &qword_1E6720F88);
    v38 = v49;
    if ((*(v49 + 48))(v37, 1, v36) == 1)
    {
      sub_1E672064C();
    }

    else
    {
      v44 = v46;
      (*(v38 + 32))(v46, v37, v36);
      sub_1E672064C();
      sub_1E67161A0(&qword_1EE2C5AE8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1E672054C();
      (*(v38 + 8))(v44, v36);
    }

    sub_1E670D784(v7, &qword_1ED0969F0, &qword_1E6720F88);
    return sub_1E670D784(v17, &qword_1ED0969F8, &qword_1E6720F90);
  }

  else
  {
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A0, &qword_1E6720CE8);
    v32 = *(v31 + 64);
    (*(v24 + 32))(v26, &v29[*(v31 + 48)], v23);
    sub_1E670D7E4(&v29[v32], v22, &qword_1ED0969F8, &qword_1E6720F90);
    MEMORY[0x1E694FC40](0);
    sub_1E672059C();

    sub_1E6715F10();
    sub_1E672054C();
    sub_1E670D71C(v22, v20, &qword_1ED0969F8, &qword_1E6720F90);
    if ((*(v54 + 48))(v20, 1, v53) == 1)
    {
      sub_1E672064C();
    }

    else
    {
      v39 = v54;
      v40 = v48;
      v41 = v20;
      v42 = v53;
      (*(v54 + 32))(v48, v41, v53);
      sub_1E672064C();
      sub_1E67161A0(&qword_1EE2C5AC8, MEMORY[0x1E699DB98], MEMORY[0x1E699DBA8]);
      sub_1E672054C();
      (*(v39 + 8))(v40, v42);
    }

    sub_1E670D784(v22, &qword_1ED0969F8, &qword_1E6720F90);
    return (*(v24 + 8))(v26, v23);
  }
}

uint64_t SummaryArtwork.hashValue.getter()
{
  sub_1E672062C();
  SummaryArtwork.hash(into:)(v1);
  return sub_1E672065C();
}

uint64_t sub_1E6714E20()
{
  sub_1E672062C();
  SummaryArtwork.hash(into:)(v1);
  return sub_1E672065C();
}

uint64_t sub_1E6714E64(uint64_t a1)
{
  sub_1E672062C();
  SummaryArtwork.hash(into:)(v2);
  return sub_1E672065C();
}

uint64_t _s14FitnessSummary0B7ArtworkO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v130 = a2;
  v3 = sub_1E671FDBC();
  v116 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v111 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A10, &qword_1E6721028);
  MEMORY[0x1EEE9AC00](v115);
  v6 = &v110 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969F0, &qword_1E6720F88);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v112 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v126 = &v110 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v127 = &v110 - v12;
  v13 = sub_1E671FE3C();
  v14 = *(v13 - 8);
  v122 = v13;
  v123 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A18, &qword_1E6721030);
  v16 = MEMORY[0x1EEE9AC00](v120);
  v18 = &v110 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v119 = &v110 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969F8, &qword_1E6720F90);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v21);
  v113 = &v110 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v118 = &v110 - v27;
  MEMORY[0x1EEE9AC00](v26);
  v124 = &v110 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0);
  v128 = *(v29 - 8);
  v129 = v29;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v121 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v125 = &v110 - v32;
  v33 = type metadata accessor for SummaryArtwork(0);
  v34 = MEMORY[0x1EEE9AC00](v33);
  v36 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v38 = &v110 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A20, &qword_1E6721038);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v42 = &v110 - v41;
  v43 = (&v110 + *(v40 + 56) - v41);
  sub_1E6715EAC(a1, &v110 - v41);
  sub_1E6715EAC(v130, v43);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v117 = v42;
    sub_1E6715EAC(v42, v38);
    v55 = *v38;
    v54 = *(v38 + 1);
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A0, &qword_1E6720CE8);
    v57 = *(v56 + 48);
    v58 = *(v56 + 64);
    if (swift_getEnumCaseMultiPayload() == 1)
    {

      sub_1E670D784(&v38[v58], &qword_1ED0969F8, &qword_1E6720F90);
      (*(v128 + 8))(&v38[v57], v129);
      v42 = v117;
      goto LABEL_9;
    }

    v59 = v43[1];
    v130 = *v43;
    v60 = v129;
    v61 = *(v128 + 32);
    v61(v125, &v38[v57], v129);
    sub_1E670D7E4(&v38[v58], v124, &qword_1ED0969F8, &qword_1E6720F90);
    v62 = v43 + v57;
    v63 = v121;
    v61(v121, v62, v60);
    v64 = v118;
    sub_1E670D7E4(v43 + v58, v118, &qword_1ED0969F8, &qword_1E6720F90);
    if (v55 == v130 && v54 == v59)
    {

      v65 = v117;
      v66 = v119;
    }

    else
    {
      v67 = sub_1E672061C();

      v65 = v117;
      v66 = v119;
      if ((v67 & 1) == 0)
      {
        sub_1E670D784(v64, &qword_1ED0969F8, &qword_1E6720F90);
        v83 = v129;
        v81 = *(v128 + 8);
        v81(v63, v129);
        sub_1E670D784(v124, &qword_1ED0969F8, &qword_1E6720F90);
        v84 = v125;
        goto LABEL_24;
      }
    }

    sub_1E67161E8();
    v68 = v125;
    v69 = sub_1E671FE4C();
    v70 = v63;
    v71 = v124;
    if (v69)
    {
      v72 = *(v120 + 48);
      sub_1E670D71C(v124, v66, &qword_1ED0969F8, &qword_1E6720F90);
      sub_1E670D71C(v64, v66 + v72, &qword_1ED0969F8, &qword_1E6720F90);
      v73 = v122;
      v74 = *(v123 + 48);
      if (v74(v66, 1, v122) == 1)
      {
        sub_1E670D784(v64, &qword_1ED0969F8, &qword_1E6720F90);
        v75 = v129;
        v76 = *(v128 + 8);
        v76(v121, v129);
        sub_1E670D784(v71, &qword_1ED0969F8, &qword_1E6720F90);
        v76(v68, v75);
        if (v74(v66 + v72, 1, v73) == 1)
        {
          sub_1E670D784(v66, &qword_1ED0969F8, &qword_1E6720F90);
          v77 = v117;
LABEL_43:
          sub_1E671352C(v77);
          return 1;
        }
      }

      else
      {
        v95 = v113;
        sub_1E670D71C(v66, v113, &qword_1ED0969F8, &qword_1E6720F90);
        if (v74(v66 + v72, 1, v73) != 1)
        {
          v104 = v123;
          v105 = v66 + v72;
          v106 = v114;
          (*(v123 + 32))(v114, v105, v73);
          sub_1E67161A0(&qword_1EE2C5AC0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB0]);
          LODWORD(v130) = sub_1E672055C();
          v107 = *(v104 + 8);
          v107(v106, v73);
          sub_1E670D784(v64, &qword_1ED0969F8, &qword_1E6720F90);
          v108 = v129;
          v109 = *(v128 + 8);
          v109(v121, v129);
          sub_1E670D784(v71, &qword_1ED0969F8, &qword_1E6720F90);
          v109(v125, v108);
          v107(v113, v73);
          sub_1E670D784(v66, &qword_1ED0969F8, &qword_1E6720F90);
          v77 = v117;
          if (v130)
          {
            goto LABEL_43;
          }

          goto LABEL_34;
        }

        v96 = v64;
        v97 = v95;
        sub_1E670D784(v96, &qword_1ED0969F8, &qword_1E6720F90);
        v98 = v129;
        v99 = *(v128 + 8);
        v99(v121, v129);
        sub_1E670D784(v71, &qword_1ED0969F8, &qword_1E6720F90);
        v99(v68, v98);
        (*(v123 + 8))(v97, v73);
      }

      sub_1E670D784(v66, &qword_1ED096A18, &qword_1E6721030);
      v77 = v117;
LABEL_34:
      sub_1E671352C(v77);
      return 0;
    }

    sub_1E670D784(v64, &qword_1ED0969F8, &qword_1E6720F90);
    v81 = *(v128 + 8);
    v82 = v70;
    v83 = v129;
    v81(v82, v129);
    sub_1E670D784(v71, &qword_1ED0969F8, &qword_1E6720F90);
    v84 = v68;
LABEL_24:
    v81(v84, v83);
    v77 = v65;
    goto LABEL_34;
  }

  v130 = v3;
  sub_1E6715EAC(v42, v36);
  v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B0, &qword_1E6720CF8) + 48);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v45 = v42;
    sub_1E670D7E4(&v36[v44], v127, &qword_1ED0969F0, &qword_1E6720F88);
    sub_1E670D7E4(v43 + v44, v126, &qword_1ED0969F0, &qword_1E6720F88);
    v46 = *(v120 + 48);
    sub_1E670D7E4(v36, v18, &qword_1ED0969F8, &qword_1E6720F90);
    sub_1E670D7E4(v43, &v18[v46], &qword_1ED0969F8, &qword_1E6720F90);
    v47 = v122;
    v48 = v123;
    v49 = *(v123 + 48);
    if (v49(v18, 1, v122) == 1)
    {
      v50 = v49(&v18[v46], 1, v47);
      v52 = v126;
      v51 = v127;
      if (v50 == 1)
      {
        sub_1E670D784(v18, &qword_1ED0969F8, &qword_1E6720F90);
        v53 = v45;
LABEL_26:
        v88 = *(v115 + 48);
        sub_1E670D71C(v51, v6, &qword_1ED0969F0, &qword_1E6720F88);
        sub_1E670D71C(v52, &v6[v88], &qword_1ED0969F0, &qword_1E6720F88);
        v89 = v116;
        v90 = v52;
        v91 = *(v116 + 48);
        v92 = v130;
        if (v91(v6, 1, v130) == 1)
        {
          sub_1E670D784(v90, &qword_1ED0969F0, &qword_1E6720F88);
          sub_1E670D784(v51, &qword_1ED0969F0, &qword_1E6720F88);
          if (v91(&v6[v88], 1, v92) == 1)
          {
            sub_1E670D784(v6, &qword_1ED0969F0, &qword_1E6720F88);
LABEL_41:
            v77 = v53;
            goto LABEL_43;
          }
        }

        else
        {
          v93 = v112;
          sub_1E670D71C(v6, v112, &qword_1ED0969F0, &qword_1E6720F88);
          if (v91(&v6[v88], 1, v92) != 1)
          {
            v100 = v111;
            (*(v89 + 32))(v111, &v6[v88], v92);
            sub_1E67161A0(&qword_1EE2C5AE0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
            v101 = v93;
            v102 = sub_1E672055C();
            v103 = *(v89 + 8);
            v103(v100, v92);
            sub_1E670D784(v126, &qword_1ED0969F0, &qword_1E6720F88);
            sub_1E670D784(v127, &qword_1ED0969F0, &qword_1E6720F88);
            v103(v101, v92);
            sub_1E670D784(v6, &qword_1ED0969F0, &qword_1E6720F88);
            if (v102)
            {
              goto LABEL_41;
            }

            goto LABEL_33;
          }

          sub_1E670D784(v126, &qword_1ED0969F0, &qword_1E6720F88);
          sub_1E670D784(v127, &qword_1ED0969F0, &qword_1E6720F88);
          (*(v89 + 8))(v93, v92);
        }

        v79 = &qword_1ED096A10;
        v80 = &qword_1E6721028;
        v78 = v6;
LABEL_32:
        sub_1E670D784(v78, v79, v80);
LABEL_33:
        v77 = v53;
        goto LABEL_34;
      }
    }

    else
    {
      sub_1E670D71C(v18, v23, &qword_1ED0969F8, &qword_1E6720F90);
      if (v49(&v18[v46], 1, v47) != 1)
      {
        v85 = v114;
        (*(v48 + 32))(v114, &v18[v46], v47);
        sub_1E67161A0(&qword_1EE2C5AC0, MEMORY[0x1E699DB98], MEMORY[0x1E699DBB0]);
        v86 = sub_1E672055C();
        v87 = *(v48 + 8);
        v87(v85, v47);
        v87(v23, v47);
        sub_1E670D784(v18, &qword_1ED0969F8, &qword_1E6720F90);
        v53 = v45;
        v52 = v126;
        v51 = v127;
        if (v86)
        {
          goto LABEL_26;
        }

LABEL_21:
        sub_1E670D784(v52, &qword_1ED0969F0, &qword_1E6720F88);
        v78 = v51;
        v79 = &qword_1ED0969F0;
        v80 = &qword_1E6720F88;
        goto LABEL_32;
      }

      (*(v48 + 8))(v23, v47);
      v52 = v126;
      v51 = v127;
    }

    sub_1E670D784(v18, &qword_1ED096A18, &qword_1E6721030);
    v53 = v45;
    goto LABEL_21;
  }

  sub_1E670D784(&v36[v44], &qword_1ED0969F0, &qword_1E6720F88);
  sub_1E670D784(v36, &qword_1ED0969F8, &qword_1E6720F90);
LABEL_9:
  sub_1E670D784(v42, &qword_1ED096A20, &qword_1E6721038);
  return 0;
}

uint64_t type metadata accessor for SummaryArtwork(uint64_t a1)
{
  result = qword_1EE2C55F8;
  if (!qword_1EE2C55F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E6715EAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryArtwork(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E6715F10()
{
  result = qword_1ED096A00;
  if (!qword_1ED096A00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968A8, &qword_1E6720CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096A00);
  }

  return result;
}

void sub_1E671600C(uint64_t a1)
{
  sub_1E6716080(319);
  if (v1 <= 0x3F)
  {
    sub_1E6716114(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1E6716080(uint64_t a1)
{
  if (!qword_1EE2C53C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0968A8, &qword_1E6720CF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0969F8, &qword_1E6720F90);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EE2C53C0);
    }
  }
}

void sub_1E6716114(uint64_t a1)
{
  if (!qword_1EE2C5AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0969F8, &qword_1E6720F90);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0969F0, &qword_1E6720F88);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EE2C5AB8);
    }
  }
}

uint64_t sub_1E67161A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E67161E8()
{
  result = qword_1ED096A28;
  if (!qword_1ED096A28)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED096A28);
  }

  return result;
}

uint64_t SummaryWorkoutsCardWorkoutItem.title.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1E671FD7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SummaryWorkoutsCardWorkoutItem.subtitle.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1E671FD7C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1E6716360(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SummaryWorkoutsCardWorkoutItem.init(context:title:subtitle:caption:isAvailable:artwork:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  (*(*(a7 - 8) + 32))(a9, a1, a7);
  v17 = type metadata accessor for SummaryWorkoutsCardWorkoutItem(0, a7, a8, v16);
  v18 = v17[9];
  v19 = sub_1E671FD7C();
  v20 = *(*(v19 - 8) + 32);
  v20(a9 + v18, a2, v19);
  v20(a9 + v17[10], a3, v19);
  sub_1E6716544(a4, a9 + v17[11]);
  *(a9 + v17[12]) = a5;
  v21 = a9 + v17[13];

  return sub_1E67133E4(a6, v21);
}

uint64_t sub_1E6716544(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SummaryWorkoutsCardWorkoutItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E671FD7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A30, &unk_1E67211D0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  if ((sub_1E672055C() & 1) == 0)
  {
    goto LABEL_12;
  }

  v19 = type metadata accessor for SummaryWorkoutsCardWorkoutItem(0, a3, a4, v18);
  if ((sub_1E671FD6C() & 1) == 0 || (sub_1E671FD6C() & 1) == 0)
  {
    goto LABEL_12;
  }

  v20 = v19[11];
  v21 = *(v15 + 48);
  sub_1E6716360(a1 + v20, v17);
  v28 = v21;
  sub_1E6716360(a2 + v20, &v17[v21]);
  v22 = *(v9 + 48);
  if (v22(v17, 1, v8) != 1)
  {
    sub_1E6716360(v17, v14);
    if (v22(&v17[v28], 1, v8) != 1)
    {
      (*(v9 + 32))(v11, &v17[v28], v8);
      sub_1E6716C0C(&qword_1EE2C5AF8, MEMORY[0x1E6968860]);
      v23 = sub_1E672055C();
      v24 = *(v9 + 8);
      v24(v11, v8);
      v24(v14, v8);
      sub_1E670D784(v17, &qword_1ED096868, &unk_1E6721040);
      if ((v23 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    (*(v9 + 8))(v14, v8);
LABEL_9:
    sub_1E670D784(v17, &qword_1ED096A30, &unk_1E67211D0);
    goto LABEL_12;
  }

  if (v22(&v17[v28], 1, v8) != 1)
  {
    goto LABEL_9;
  }

  sub_1E670D784(v17, &qword_1ED096868, &unk_1E6721040);
LABEL_11:
  if (*(a1 + v19[12]) == *(a2 + v19[12]))
  {
    v25 = _s14FitnessSummary0B7ArtworkO2eeoiySbAC_ACtFZ_0(a1 + v19[13], a2 + v19[13]);
    return v25 & 1;
  }

LABEL_12:
  v25 = 0;
  return v25 & 1;
}

uint64_t SummaryWorkoutsCardWorkoutItem.hash(into:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E671FD7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v13 - v10;
  sub_1E672054C();
  sub_1E6716C0C(&qword_1EE2C5B00, MEMORY[0x1E6968858]);
  sub_1E672054C();
  sub_1E672054C();
  sub_1E6716360(v2 + *(a2 + 44), v11);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    sub_1E672064C();
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    sub_1E672064C();
    sub_1E672054C();
    (*(v6 + 8))(v8, v5);
  }

  sub_1E672064C();
  return SummaryArtwork.hash(into:)(a1);
}

uint64_t SummaryWorkoutsCardWorkoutItem.hashValue.getter(uint64_t a1)
{
  sub_1E672062C();
  SummaryWorkoutsCardWorkoutItem.hash(into:)(v3, a1);
  return sub_1E672065C();
}

uint64_t sub_1E6716BBC(uint64_t a1, uint64_t a2)
{
  sub_1E672062C();
  SummaryWorkoutsCardWorkoutItem.hash(into:)(v4, a2);
  return sub_1E672065C();
}

uint64_t sub_1E6716C0C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1E671FD7C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1E6716C74(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1E671FD7C();
    if (v2 <= 0x3F)
    {
      sub_1E671766C(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SummaryArtwork(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1E6716D34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = *(v3 + 84);
  v46 = sub_1E671FD7C();
  v5 = *(v46 - 8);
  v6 = *(v5 + 84);
  if (v6 <= v4)
  {
    v7 = v4;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = v6 - 1;
  if (!v6)
  {
    v8 = 0;
  }

  v45 = v8;
  if (v8 > v7)
  {
    v7 = v8;
  }

  if (v7 <= 0xFE)
  {
    v7 = 254;
  }

  v47 = v4;
  v48 = v7;
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0) - 8);
  v10 = *(v9 + 80);
  v11 = *(v9 + 64);
  v12 = *(sub_1E671FE3C() - 8);
  v13 = *(v12 + 80);
  v14 = (((v10 + 16) & ~v10) + v11 + v13) & ~v13;
  v15 = *(v12 + 84);
  v16 = *(v12 + 64);
  v17 = *(sub_1E671FDBC() - 8);
  v18 = v17;
  if (v6)
  {
    v19 = 1;
  }

  else
  {
    v19 = 2;
  }

  v20 = *(v17 + 80);
  v21 = *(v17 + 64);
  if (v15)
  {
    v22 = v16;
  }

  else
  {
    v22 = v16 + 1;
  }

  v23 = *(v5 + 80);
  v24 = *(v5 + 64);
  v25 = v14 + v22;
  v26 = (v22 + v20) & ~v20;
  if (!*(v18 + 84))
  {
    ++v21;
  }

  v27 = v21 + v26;
  if (v27 > v25)
  {
    v25 = v27;
  }

  if (!a2)
  {
    return 0;
  }

  v28 = *(v3 + 64) + v23;
  v29 = v24 + v23;
  v30 = a1;
  if (a2 > v48)
  {
    v31 = v25 + ((v19 + v24 + (v10 | v13 | v20 | 7) + ((v29 + ((v29 + (v28 & ~v23)) & ~v23)) & ~v23)) & ~(v10 | v13 | v20 | 7)) + 1;
    v32 = 8 * v31;
    if (v31 > 3)
    {
      goto LABEL_23;
    }

    v34 = ((a2 - v48 + ~(-1 << v32)) >> v32) + 1;
    if (HIWORD(v34))
    {
      v33 = *(a1 + v31);
      if (!v33)
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (v34 > 0xFF)
    {
      v33 = *(a1 + v31);
      if (!*(a1 + v31))
      {
        goto LABEL_43;
      }

      goto LABEL_30;
    }

    if (v34 >= 2)
    {
LABEL_23:
      v33 = *(a1 + v31);
      if (!*(a1 + v31))
      {
        goto LABEL_43;
      }

LABEL_30:
      v35 = (v33 - 1) << v32;
      if (v31 > 3)
      {
        v35 = 0;
      }

      if (v31)
      {
        if (v31 <= 3)
        {
          v36 = v31;
        }

        else
        {
          v36 = 4;
        }

        if (v36 > 2)
        {
          if (v36 == 3)
          {
            v37 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v37 = *a1;
          }
        }

        else if (v36 == 1)
        {
          v37 = *a1;
        }

        else
        {
          v37 = *a1;
        }
      }

      else
      {
        v37 = 0;
      }

      v44 = v48 + (v37 | v35);
      return (v44 + 1);
    }
  }

LABEL_43:
  if (v47 != v48)
  {
    v39 = ~v23;
    v30 = ((a1 + v28) & v39);
    if (v6 == v48)
    {
      v38 = *(v5 + 48);
      goto LABEL_47;
    }

    v41 = (v29 + ((v30 + v29) & v39)) & v39;
    if (v45 == v48)
    {
      if (v6 >= 2)
      {
        v42 = (*(v5 + 48))(v41, v6, v46);
        if (v42 >= 2)
        {
          return v42 - 1;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }

    if (!v6)
    {
      ++v24;
    }

    v43 = *(v24 + v41);
    if (v43 < 2)
    {
      return 0;
    }

    v44 = (v43 + 2147483646) & 0x7FFFFFFF;
    return (v44 + 1);
  }

  v38 = *(v3 + 48);
LABEL_47:

  return v38(v30);
}

void sub_1E671719C(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(a4 + 16) - 8);
  v44 = v4;
  v5 = *(v4 + 84);
  v6 = *(sub_1E671FD7C() - 8);
  v7 = *(v6 + 84);
  v45 = v5;
  if (v7 <= v5)
  {
    v8 = v5;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = v7 - 1;
  if (!v7)
  {
    v9 = 0;
  }

  v43 = v9;
  if (v9 > v8)
  {
    v8 = v9;
  }

  if (v8 <= 0xFE)
  {
    v8 = 254;
  }

  v46 = v8;
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0) - 8);
  v11 = *(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(sub_1E671FE3C() - 8);
  v14 = *(v13 + 80);
  v15 = (((v11 + 16) & ~v11) + v12 + v14) & ~v14;
  v16 = *(v13 + 84);
  v17 = *(v13 + 64);
  v18 = sub_1E671FDBC();
  v19 = 0;
  v20 = *(v18 - 8);
  if (v7)
  {
    v21 = 1;
  }

  else
  {
    v21 = 2;
  }

  v22 = *(v20 + 80);
  v23 = *(*(v18 - 8) + 64);
  if (v16)
  {
    v24 = v17;
  }

  else
  {
    v24 = v17 + 1;
  }

  v25 = *(v6 + 80);
  v26 = *(v4 + 64) + v25;
  v27 = *(v6 + 64);
  v28 = v27 + v25;
  v29 = (v21 + v27 + (v11 | v14 | v22 | 7) + ((v27 + v25 + ((v27 + v25 + (v26 & ~v25)) & ~v25)) & ~v25)) & ~(v11 | v14 | v22 | 7);
  v30 = (v24 + v22) & ~v22;
  if (!*(v20 + 84))
  {
    ++v23;
  }

  v31 = v23 + v30;
  if (v31 <= v15 + v24)
  {
    v31 = v15 + v24;
  }

  v32 = v31 + v29 + 1;
  if (a3 > v46)
  {
    if (v32 <= 3)
    {
      v33 = ((a3 - v46 + ~(-1 << (8 * v32))) >> (8 * v32)) + 1;
      if (HIWORD(v33))
      {
        v19 = 4;
      }

      else
      {
        if (v33 < 0x100)
        {
          v34 = 1;
        }

        else
        {
          v34 = 2;
        }

        if (v33 >= 2)
        {
          v19 = v34;
        }

        else
        {
          v19 = 0;
        }
      }
    }

    else
    {
      v19 = 1;
    }
  }

  if (v46 < a2)
  {
    v35 = ~v46 + a2;
    if (v32 < 4)
    {
      v37 = (v35 >> (8 * v32)) + 1;
      if (v32)
      {
        v39 = v19;
        v40 = v35 & ~(-1 << (8 * v32));
        bzero(a1, v32);
        if (v32 != 3)
        {
          v19 = v39;
          if (v32 == 2)
          {
            *a1 = v40;
            if (v39 > 1)
            {
LABEL_63:
              if (v19 == 2)
              {
                *&a1[v32] = v37;
              }

              else
              {
                *&a1[v32] = v37;
              }

              return;
            }
          }

          else
          {
            *a1 = v35;
            if (v39 > 1)
            {
              goto LABEL_63;
            }
          }

          goto LABEL_60;
        }

        *a1 = v40;
        a1[2] = BYTE2(v40);
        v19 = v39;
      }

      if (v19 > 1)
      {
        goto LABEL_63;
      }
    }

    else
    {
      v36 = v19;
      bzero(a1, v32);
      v19 = v36;
      *a1 = v35;
      v37 = 1;
      if (v19 > 1)
      {
        goto LABEL_63;
      }
    }

LABEL_60:
    if (v19)
    {
      a1[v32] = v37;
    }

    return;
  }

  v38 = a1;
  if (v19 > 1)
  {
    if (v19 != 2)
    {
      *&a1[v32] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *&a1[v32] = 0;
  }

  else if (v19)
  {
    a1[v32] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  if (v45 == v46)
  {
    v41 = *(v44 + 56);
LABEL_55:

    v41(v38);
    return;
  }

  v42 = ~v25;
  v38 = (&a1[v26] & v42);
  if (v7 == v46)
  {
    v41 = *(v6 + 56);
    goto LABEL_55;
  }

  v38 = ((v28 + (&v38[v28] & v42)) & v42);
  if (v43 == v46)
  {
    v41 = *(v6 + 56);
    goto LABEL_55;
  }

  if (!v7)
  {
    ++v27;
  }

  v38[v27] = a2 + 1;
}

void sub_1E671766C(uint64_t a1)
{
  if (!qword_1EE2C5AF0)
  {
    sub_1E671FD7C();
    v1 = sub_1E67205EC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C5AF0);
    }
  }
}

uint64_t SummaryWorkoutsCardHeader.title.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E671FD7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SummaryWorkoutsCardHeader.subtitle.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SummaryWorkoutsCardHeader(0) + 20);

  return sub_1E6716360(v3, a1);
}

uint64_t type metadata accessor for SummaryWorkoutsCardHeader(uint64_t a1)
{
  result = qword_1EE2C59A8;
  if (!qword_1EE2C59A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SummaryWorkoutsCardHeader.init(title:subtitle:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E671FD7C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  v7 = a3 + *(type metadata accessor for SummaryWorkoutsCardHeader(0) + 20);

  return sub_1E6716544(a2, v7);
}

uint64_t SummaryWorkoutsCardHeader.hash(into:)(uint64_t a1)
{
  v2 = sub_1E671FD7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1E6718440(&qword_1EE2C5B00, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E672054C();
  v9 = type metadata accessor for SummaryWorkoutsCardHeader(0);
  sub_1E6716360(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_1E672064C();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1E672064C();
  sub_1E672054C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SummaryWorkoutsCardHeader.hashValue.getter()
{
  v1 = sub_1E671FD7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1E672062C();
  sub_1E6718440(&qword_1EE2C5B00, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E672054C();
  v8 = type metadata accessor for SummaryWorkoutsCardHeader(0);
  sub_1E6716360(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1E672064C();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1E672064C();
    sub_1E672054C();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1E672065C();
}

uint64_t sub_1E6717C40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E671FD7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1E6718440(&qword_1EE2C5B00, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E672054C();
  sub_1E6716360(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_1E672064C();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_1E672064C();
  sub_1E672054C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1E6717E2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E671FD7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1E672062C();
  sub_1E6718440(&qword_1EE2C5B00, MEMORY[0x1E6968848], MEMORY[0x1E6968858]);
  sub_1E672054C();
  sub_1E6716360(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1E672064C();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1E672064C();
    sub_1E672054C();
    (*(v5 + 8))(v7, v4);
  }

  return sub_1E672065C();
}

BOOL _s14FitnessSummary0B18WorkoutsCardHeaderV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E671FD7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A30, &unk_1E67211D0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  if ((sub_1E671FD6C() & 1) == 0)
  {
    return 0;
  }

  v14 = *(type metadata accessor for SummaryWorkoutsCardHeader(0) + 20);
  v15 = *(v11 + 48);
  sub_1E6716360(a1 + v14, v13);
  sub_1E6716360(a2 + v14, &v13[v15]);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) == 1)
  {
    if (v16(&v13[v15], 1, v4) == 1)
    {
      sub_1E670D784(v13, &qword_1ED096868, &unk_1E6721040);
      return 1;
    }

    goto LABEL_7;
  }

  sub_1E6716360(v13, v10);
  if (v16(&v13[v15], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_7:
    sub_1E670D784(v13, &qword_1ED096A30, &unk_1E67211D0);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v15], v4);
  sub_1E6718440(&qword_1EE2C5AF8, MEMORY[0x1E6968848], MEMORY[0x1E6968860]);
  v18 = sub_1E672055C();
  v19 = *(v5 + 8);
  v19(v7, v4);
  v19(v10, v4);
  sub_1E670D784(v13, &qword_1ED096868, &unk_1E6721040);
  return (v18 & 1) != 0;
}

void sub_1E67183BC(uint64_t a1)
{
  sub_1E671FD7C();
  if (v1 <= 0x3F)
  {
    sub_1E671766C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1E6718440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E6718488(void *a1)
{
  sub_1E670E614(319);
  if (v3 <= 0x3F)
  {
    type metadata accessor for SummaryWorkoutsCardItem(319, a1[3], a1[5], v2);
    if (v4 <= 0x3F)
    {
      sub_1E671FDCC();
      if (v5 <= 0x3F)
      {
        type metadata accessor for SummaryArtwork(255);
        swift_getFunctionTypeMetadata1();
        sub_1E671FE1C();
        if (v6 <= 0x3F)
        {
          swift_getFunctionTypeMetadata1();
          sub_1E671FE1C();
          if (v7 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1E6718640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E672006C();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a2 - 8) + 16))(&v10 - v8, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_1E672007C();
}

uint64_t sub_1E6718738(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_1E672006C();
  MEMORY[0x1EEE9AC00](v7);
  (*(*(a3 - 8) + 16))(&v10 - v8, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_1E672007C();
}

uint64_t sub_1E6718830(uint64_t a1)
{
  type metadata accessor for SummaryArtwork(255);
  swift_getFunctionTypeMetadata1();
  sub_1E671FE1C();
  sub_1E671FE0C();
  return v2;
}

uint64_t sub_1E671889C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E671FDFC();
}

uint64_t (*sub_1E6718954(uint64_t a1))()
{
  v2 = *(a1 + 24);
  swift_getFunctionTypeMetadata1();
  sub_1E671FE1C();
  sub_1E671FE0C();
  v3 = swift_allocObject();
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 24) = v2;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v5;
  return sub_1E671A59C;
}

uint64_t sub_1E6718A00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13)
{
  *a9 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096710, &qword_1E6720A60);
  swift_storeEnumTagMultiPayload();
  v31[0] = a7;
  v31[1] = a8;
  v31[2] = a12;
  v31[3] = a13;
  v21 = type metadata accessor for SummaryWorkoutsCardItemView(0, v31);
  v22 = v21[13];
  v24 = type metadata accessor for SummaryWorkoutsCardItem(0, a8, a13, v23);
  (*(*(v24 - 8) + 32))(&a9[v22], a1, v24);
  *&a9[v21[14]] = a10;
  *&a9[v21[15]] = a11;
  v25 = v21[16];
  v26 = sub_1E671FDCC();
  (*(*(v26 - 8) + 32))(&a9[v25], a2, v26);
  sub_1E670EA64(a3, a4, a7);
  return sub_1E671889C(a5, a6, a7, a8, a12, a13);
}

uint64_t sub_1E6718B94@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v28 = a3;
  v4 = a1[4];
  v25 = a1[2];
  v26 = v4;
  v5 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView(255, v25, v4, a2);
  WitnessTable = swift_getWitnessTable();
  v37 = v5;
  v38 = WitnessTable;
  v24[0] = MEMORY[0x1E6981458];
  swift_getOpaqueTypeMetadata2();
  sub_1E672008C();
  v7 = a1[3];
  v8 = a1[5];
  v24[1] = type metadata accessor for SummaryWorkoutsCardErrorItemView(255, v7, v8, v9);
  sub_1E672008C();
  v10 = sub_1E67203DC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v24 - v15;
  *&v17 = v25;
  *&v18 = v26;
  *(&v17 + 1) = v7;
  *(&v18 + 1) = v8;
  v29 = v17;
  v30 = v18;
  v31 = v27;
  v37 = v5;
  v38 = WitnessTable;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = WitnessTable;
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v33 = v19;
  v34 = v20;
  v21 = swift_getWitnessTable();
  sub_1E67203CC();
  v32 = v21;
  swift_getWitnessTable();
  sub_1E671EA50();
  v22 = *(v11 + 8);
  v22(v14, v10);
  sub_1E671EA50();
  return (v22)(v16, v10);
}

uint64_t sub_1E6718E54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v170 = a1;
  v183 = a6;
  v10 = type metadata accessor for SummaryWorkoutsCardErrorItemView(0, a3, a5, a4);
  v150 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v147 = &v138 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v146 = &v138 - v13;
  v158 = type metadata accessor for SummaryWorkoutsCardErrorItem(0, a3, a5, v14);
  v157 = *(v158 - 1);
  v15 = MEMORY[0x1EEE9AC00](v158);
  v17 = &v138 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v156 = &v138 - v18;
  v195 = a2;
  v196 = a3;
  v197 = a4;
  v198 = a5;
  v19 = type metadata accessor for SummaryWorkoutsCardItemView(0, &v195);
  v140 = *(v19 - 8);
  v143 = *(v140 + 64);
  MEMORY[0x1EEE9AC00](v19);
  v155 = &v138 - v20;
  v163 = type metadata accessor for SummaryWorkoutsCardWorkoutItem(0, a3, a5, v21);
  v162 = *(v163 - 8);
  v22 = MEMORY[0x1EEE9AC00](v163);
  v142 = &v138 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v161 = &v138 - v24;
  v166 = a2;
  v165 = a4;
  v26 = type metadata accessor for SummaryWorkoutsCardWorkoutItemView(255, a2, a4, v25);
  WitnessTable = swift_getWitnessTable();
  v195 = v26;
  v196 = WitnessTable;
  v181 = WitnessTable;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v29 = sub_1E672008C();
  v169 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v168 = &v138 - v30;
  v149 = sub_1E671FF0C();
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149);
  v145 = &v138 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_1E671FDCC();
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160);
  v175 = &v138 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096870, &qword_1E6720CB0);
  MEMORY[0x1EEE9AC00](v33 - 8);
  v173 = &v138 - v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  MEMORY[0x1EEE9AC00](v35 - 8);
  v172 = &v138 - v36;
  v37 = sub_1E671FDAC();
  MEMORY[0x1EEE9AC00](v37 - 8);
  v152 = sub_1E671FD7C();
  v151 = *(v152 - 8);
  v38 = MEMORY[0x1EEE9AC00](v152);
  v171 = &v138 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = MEMORY[0x1EEE9AC00](v38);
  v184 = &v138 - v41;
  v179 = v26;
  v42 = v26;
  v43 = a5;
  v164 = *(v42 - 8);
  v44 = MEMORY[0x1EEE9AC00](v40);
  v139 = &v138 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x1EEE9AC00](v44);
  v174 = &v138 - v47;
  v167 = OpaqueTypeMetadata2;
  v144 = *(OpaqueTypeMetadata2 - 8);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v154 = &v138 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v48);
  v153 = &v138 - v50;
  v52 = type metadata accessor for SummaryWorkoutsCardItem(0, a3, a5, v51);
  v53 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v55 = &v138 - v54;
  v180 = v29;
  v56 = v19;
  v182 = v10;
  v57 = v170;
  v178 = sub_1E672008C();
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178);
  v176 = &v138 - v58;
  v59 = *(v19 + 52);
  v60 = v57;
  (*(v53 + 16))(v55, v57 + v59, v52);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v62 = v157;
      v63 = v156;
      v64 = v158;
      (*(v157 + 32))(v156, v55, v158);
      (*(v62 + 16))(v17, v63, v64);
      v65 = *(v60 + v56[14]);
      sub_1E6718954(v56);
      v66 = v147;
      sub_1E670C358(v17, sub_1E671A59C, v67, a3, v43, v147, v65);
      v68 = v182;
      v69 = swift_getWitnessTable();
      v70 = v146;
      sub_1E671EA50();
      v71 = *(v150 + 8);
      v71(v66, v68);
      sub_1E671EA50();
      v72 = v179;
      v73 = v181;
      v195 = v179;
      v196 = v181;
      OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
      v194 = v73;
      v74 = v180;
      v75 = swift_getWitnessTable();
      v76 = v176;
      sub_1E6718738(v66, v74, v68, v75, v69);
      v71(v66, v68);
      v71(v70, v68);
      (*(v157 + 8))(v156, v158);
    }

    else
    {
      v110 = sub_1E67205BC();
      v110[2] = 20;
      v110[4] = 88;
      v110[5] = 0xE100000000000000;
      v110[6] = 88;
      v110[7] = 0xE100000000000000;
      v110[8] = 88;
      v110[9] = 0xE100000000000000;
      v110[10] = 88;
      v110[11] = 0xE100000000000000;
      v110[12] = 88;
      v110[13] = 0xE100000000000000;
      v110[14] = 88;
      v110[15] = 0xE100000000000000;
      v110[16] = 88;
      v110[17] = 0xE100000000000000;
      v110[18] = 88;
      v110[19] = 0xE100000000000000;
      v110[20] = 88;
      v110[21] = 0xE100000000000000;
      v110[22] = 88;
      v110[23] = 0xE100000000000000;
      v110[24] = 88;
      v110[25] = 0xE100000000000000;
      v110[26] = 88;
      v110[27] = 0xE100000000000000;
      v110[28] = 88;
      v110[29] = 0xE100000000000000;
      v110[30] = 88;
      v110[31] = 0xE100000000000000;
      v110[32] = 88;
      v110[33] = 0xE100000000000000;
      v110[34] = 88;
      v110[35] = 0xE100000000000000;
      v110[36] = 88;
      v110[37] = 0xE100000000000000;
      v110[38] = 88;
      v110[39] = 0xE100000000000000;
      v110[40] = 88;
      v110[41] = 0xE100000000000000;
      v110[42] = 88;
      v110[43] = 0xE100000000000000;
      v195 = v110;
      sub_1E671FD9C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A40, &qword_1E6721270);
      sub_1E671A510();
      sub_1E671FD8C();
      v111 = sub_1E67205BC();
      v111[2] = 20;
      v111[4] = 88;
      v111[5] = 0xE100000000000000;
      v111[6] = 88;
      v111[7] = 0xE100000000000000;
      v111[8] = 88;
      v111[9] = 0xE100000000000000;
      v111[10] = 88;
      v111[11] = 0xE100000000000000;
      v111[12] = 88;
      v111[13] = 0xE100000000000000;
      v111[14] = 88;
      v111[15] = 0xE100000000000000;
      v111[16] = 88;
      v111[17] = 0xE100000000000000;
      v111[18] = 88;
      v111[19] = 0xE100000000000000;
      v111[20] = 88;
      v111[21] = 0xE100000000000000;
      v111[22] = 88;
      v111[23] = 0xE100000000000000;
      v111[24] = 88;
      v111[25] = 0xE100000000000000;
      v111[26] = 88;
      v111[27] = 0xE100000000000000;
      v111[28] = 88;
      v111[29] = 0xE100000000000000;
      v111[30] = 88;
      v111[31] = 0xE100000000000000;
      v111[32] = 88;
      v111[33] = 0xE100000000000000;
      v111[34] = 88;
      v111[35] = 0xE100000000000000;
      v111[36] = 88;
      v111[37] = 0xE100000000000000;
      v111[38] = 88;
      v111[39] = 0xE100000000000000;
      v111[40] = 88;
      v111[41] = 0xE100000000000000;
      v111[42] = 88;
      v111[43] = 0xE100000000000000;
      v195 = v111;
      sub_1E671FD9C();
      v112 = v171;
      sub_1E671FD8C();
      v113 = sub_1E67205BC();
      v113[2] = 18;
      v113[4] = 88;
      v113[5] = 0xE100000000000000;
      v113[6] = 88;
      v113[7] = 0xE100000000000000;
      v113[8] = 88;
      v113[9] = 0xE100000000000000;
      v113[10] = 88;
      v113[11] = 0xE100000000000000;
      v113[12] = 88;
      v113[13] = 0xE100000000000000;
      v113[14] = 88;
      v113[15] = 0xE100000000000000;
      v113[16] = 88;
      v113[17] = 0xE100000000000000;
      v113[18] = 88;
      v113[19] = 0xE100000000000000;
      v113[20] = 88;
      v113[21] = 0xE100000000000000;
      v113[22] = 88;
      v113[23] = 0xE100000000000000;
      v113[24] = 88;
      v113[25] = 0xE100000000000000;
      v113[26] = 88;
      v113[27] = 0xE100000000000000;
      v113[28] = 88;
      v113[29] = 0xE100000000000000;
      v113[30] = 88;
      v113[31] = 0xE100000000000000;
      v113[32] = 88;
      v113[33] = 0xE100000000000000;
      v113[34] = 88;
      v113[35] = 0xE100000000000000;
      v113[36] = 88;
      v113[37] = 0xE100000000000000;
      v113[38] = 88;
      v113[39] = 0xE100000000000000;
      v195 = v113;
      sub_1E671FD9C();
      v114 = v172;
      sub_1E671FD8C();
      (*(v151 + 56))(v114, 0, 1, v152);
      v115 = type metadata accessor for SummaryArtwork(0);
      v116 = v173;
      (*(*(v115 - 8) + 56))(v173, 1, 1, v115);
      v117 = *(v57 + v56[14]);
      v118 = *(v57 + v56[15]);
      v119 = v175;
      (*(v159 + 16))(v175, v60 + v56[16], v160);
      v120 = sub_1E6718830(v56);
      v121 = v174;
      sub_1E670FEDC(v184, v112, v114, 1, v116, v119, 0, 0, v174, v117, v118, v120, v122, v166, v165);
      v123 = v145;
      sub_1E671FEFC();
      v124 = v154;
      v72 = v179;
      v73 = v181;
      sub_1E672036C();
      (*(v148 + 8))(v123, v149);
      (*(v164 + 8))(v121, v72);
      v195 = v72;
      v196 = v73;
      v125 = swift_getOpaqueTypeConformance2();
      v126 = v167;
      sub_1E671EA50();
      v127 = *(v144 + 8);
      v127(v124, v126);
      sub_1E671EA50();
      v128 = v168;
      sub_1E6718640(v124, v126, v72, v125, v73);
      v185 = v125;
      v186 = v73;
      v129 = v180;
      v130 = swift_getWitnessTable();
      v131 = v182;
      v132 = swift_getWitnessTable();
      v76 = v176;
      sub_1E6718640(v128, v129, v131, v130, v132);
      (*(v169 + 8))(v128, v129);
      v127(v154, v126);
      v127(v153, v126);
    }
  }

  else
  {
    v77 = v162;
    v78 = *(v162 + 32);
    v157 = v162 + 32;
    v158 = v78;
    v79 = v161;
    v80 = v55;
    v154 = v43;
    v81 = v163;
    (v78)(v161, v80, v163);
    v82 = *(v151 + 16);
    v83 = v152;
    v82(v184, &v79[v81[9]], v152);
    v82(v171, &v79[v81[10]], v83);
    sub_1E6716360(&v79[v81[11]], v172);
    v84 = v81[13];
    LODWORD(v156) = v79[v81[12]];
    v85 = v173;
    sub_1E6715EAC(&v79[v84], v173);
    v86 = type metadata accessor for SummaryArtwork(0);
    (*(*(v86 - 8) + 56))(v85, 0, 1, v86);
    v87 = *(v60 + v56[14]);
    v88 = *(v60 + v56[15]);
    (*(v159 + 16))(v175, v60 + v56[16], v160);
    v89 = v140;
    (*(v140 + 16))(v155, v60, v56);
    v90 = v142;
    v91 = v79;
    v92 = v81;
    (*(v77 + 16))(v142, v91, v81);
    v93 = (*(v89 + 80) + 48) & ~*(v89 + 80);
    v94 = (v143 + *(v77 + 80) + v93) & ~*(v77 + 80);
    v95 = swift_allocObject();
    v96 = v166;
    *(v95 + 2) = v166;
    *(v95 + 3) = a3;
    v97 = v56;
    v98 = v165;
    v99 = v154;
    *(v95 + 4) = v165;
    *(v95 + 5) = v99;
    (*(v89 + 32))(&v95[v93], v155, v97);
    (v158)(&v95[v94], v90, v92);
    v100 = sub_1E6718830(v97);
    v101 = v139;
    sub_1E670FEDC(v184, v171, v172, v156, v173, v175, sub_1E671A400, v95, v139, v87, v88, v100, v102, v96, v98);
    v72 = v179;
    v73 = v181;
    sub_1E671EA50();
    v103 = *(v164 + 8);
    v103(v101, v72);
    sub_1E671EA50();
    v195 = v72;
    v196 = v73;
    v104 = swift_getOpaqueTypeConformance2();
    v105 = v168;
    sub_1E6718738(v101, v167, v72, v104, v73);
    v187 = v104;
    v188 = v73;
    v106 = v180;
    v107 = swift_getWitnessTable();
    v108 = v182;
    v109 = swift_getWitnessTable();
    v76 = v176;
    sub_1E6718640(v105, v106, v108, v107, v109);
    (*(v169 + 8))(v105, v106);
    v103(v101, v72);
    v103(v174, v72);
    (*(v162 + 8))(v161, v163);
  }

  v133 = v178;
  v134 = v177;
  v195 = v72;
  v196 = v73;
  v191 = swift_getOpaqueTypeConformance2();
  v192 = v73;
  v135 = swift_getWitnessTable();
  v136 = swift_getWitnessTable();
  v189 = v135;
  v190 = v136;
  swift_getWitnessTable();
  sub_1E671EA50();
  return (*(v134 + 8))(v76, v133);
}

double sub_1E671A384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10[0] = a3;
  v10[1] = a4;
  v10[2] = a5;
  v10[3] = a6;
  v7 = type metadata accessor for SummaryWorkoutsCardItemView(0, v10);
  sub_1E6718954(v7);
  (*(v8 + 48))(a2);

  return result;
}

double sub_1E671A400()
{
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v12[0] = v0[2];
  v1 = v12[0];
  v12[1] = v2;
  v12[2] = v3;
  v12[3] = v4;
  v5 = *(type metadata accessor for SummaryWorkoutsCardItemView(0, v12) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v9 = *(type metadata accessor for SummaryWorkoutsCardWorkoutItem(0, v2, v4, v8) - 8);
  v10 = v0 + ((v7 + *(v9 + 80)) & ~*(v9 + 80));

  return sub_1E671A384(v0 + v6, v10, v1, v2, v3, v4);
}

unint64_t sub_1E671A510()
{
  result = qword_1EE2C53B8;
  if (!qword_1EE2C53B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096A40, &qword_1E6721270);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C53B8);
  }

  return result;
}

uint64_t type metadata accessor for SummaryWorkoutsCardHeaderView(uint64_t a1)
{
  result = qword_1EE2C5810;
  if (!qword_1EE2C5810)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E671A688(uint64_t a1)
{
  type metadata accessor for SummaryWorkoutsCardHeader(319);
  if (v1 <= 0x3F)
  {
    sub_1E671FDCC();
    if (v2 <= 0x3F)
    {
      sub_1E671A72C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E671A72C(uint64_t a1)
{
  if (!qword_1EE2C5AD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096A50, &qword_1E67212F0);
    v1 = sub_1E671FE1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE2C5AD8);
    }
  }
}

uint64_t sub_1E671A7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A78, &unk_1E6721368);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096868, &unk_1E6721040);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v46[-v9];
  v11 = sub_1E671FD7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A80, &qword_1E6721378);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v56 = &v46[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v54 = &v46[-v18];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A88, &qword_1E6721380);
  v20 = MEMORY[0x1EEE9AC00](v19 - 8);
  v55 = &v46[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v46[-v22];
  *v23 = sub_1E672000C();
  *(v23 + 1) = 0;
  v23[16] = 0;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A90, &qword_1E6721388);
  sub_1E671AD60(a1, &v23[*(v24 + 44)]);
  v25 = type metadata accessor for SummaryWorkoutsCardHeader(0);
  sub_1E670D71C(a1 + *(v25 + 20), v10, &qword_1ED096868, &unk_1E6721040);
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1E670D784(v10, &qword_1ED096868, &unk_1E6721040);
    v26 = v54;
    (*(v5 + 56))(v54, 1, 1, v4);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    v51 = v4;
    v27 = sub_1E671FD5C();
    v53 = v5;
    v29 = v28;
    v31 = v30;
    v48 = v11;
    sub_1E672014C();
    v32 = sub_1E672027C();
    v49 = v33;
    v50 = v32;
    v47 = v34;
    v52 = v35;

    sub_1E670D8A0(v27, v29, v31 & 1);

    KeyPath = swift_getKeyPath();
    LODWORD(v29) = sub_1E67200BC();
    (*(v12 + 8))(v14, v48);
    v61 = v47 & 1;
    v59 = 0;
    v37 = v51;
    v38 = *(v51 + 36);
    v39 = *MEMORY[0x1E6981DB8];
    v40 = sub_1E672050C();
    (*(*(v40 - 8) + 104))(&v7[v38], v39, v40);
    v41 = v49;
    *v7 = v50;
    *(v7 + 1) = v41;
    v7[16] = v61;
    *(v7 + 17) = *v60;
    *(v7 + 5) = *&v60[3];
    *(v7 + 3) = v52;
    *(v7 + 4) = KeyPath;
    *(v7 + 5) = 2;
    v7[48] = v59;
    *(v7 + 49) = v57;
    v7[51] = v58;
    *(v7 + 13) = v29;
    v26 = v54;
    sub_1E671BD64(v7, v54);
    (*(v53 + 56))(v26, 0, 1, v37);
  }

  v42 = v55;
  sub_1E670D71C(v23, v55, &qword_1ED096A88, &qword_1E6721380);
  v43 = v56;
  sub_1E670D71C(v26, v56, &qword_1ED096A80, &qword_1E6721378);
  sub_1E670D71C(v42, a2, &qword_1ED096A88, &qword_1E6721380);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A98, &qword_1E6721390);
  sub_1E670D71C(v43, a2 + *(v44 + 48), &qword_1ED096A80, &qword_1E6721378);
  sub_1E670D784(v26, &qword_1ED096A80, &qword_1E6721378);
  sub_1E670D784(v23, &qword_1ED096A88, &qword_1E6721380);
  sub_1E670D784(v43, &qword_1ED096A80, &qword_1E6721378);
  return sub_1E670D784(v42, &qword_1ED096A88, &qword_1E6721380);
}

uint64_t sub_1E671AD60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v102 = a2;
  v103 = type metadata accessor for SummaryWorkoutsCardHeaderView(0);
  v93 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v94 = v3;
  v95 = &v77 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = sub_1E671FDCC();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v77 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E672057C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v89 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E672003C();
  v86 = *(v7 - 8);
  v87 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E672038C();
  v79 = *(v9 - 8);
  v80 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v78 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AA0, &qword_1E67213C8);
  MEMORY[0x1EEE9AC00](v82);
  v83 = &v77 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AA8, &qword_1E67213D0);
  v100 = *(v97 - 8);
  v12 = MEMORY[0x1EEE9AC00](v97);
  v81 = &v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v84 = &v77 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v88 = &v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AB0, &qword_1E67213D8);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v101 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v96 = &v77 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AB8, &qword_1E67213E0);
  v22 = v21 - 8;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v99 = &v77 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v77 - v25;
  v27 = sub_1E671FD5C();
  v29 = v28;
  v31 = v30;
  v33 = v32;
  KeyPath = swift_getKeyPath();
  v35 = sub_1E67200FC();
  sub_1E671FE5C();
  LOBYTE(v104) = v31 & 1;
  v116 = 0;
  v115 = 0;
  *&v108 = v27;
  *(&v108 + 1) = v29;
  LOBYTE(v109) = v31 & 1;
  *(&v109 + 1) = v33;
  *&v110 = KeyPath;
  *(&v110 + 1) = 1;
  LOBYTE(v111) = 0;
  BYTE8(v111) = v35;
  *&v112 = v36;
  *(&v112 + 1) = v37;
  *&v113 = v38;
  *(&v113 + 1) = v39;
  v114 = 0;
  sub_1E67201AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AC0, &qword_1E67213E8);
  sub_1E671BF70(&qword_1EE2C5468, &qword_1ED096AC0, &qword_1E67213E8, sub_1E671BDD4);
  v40 = a1;
  sub_1E67202BC();
  v117[4] = v112;
  v117[5] = v113;
  v118 = v114;
  v117[0] = v108;
  v117[1] = v109;
  v117[2] = v110;
  v117[3] = v111;
  sub_1E670D784(v117, &qword_1ED096AC0, &qword_1E67213E8);
  sub_1E672015C();
  v41 = sub_1E672021C();

  v42 = swift_getKeyPath();
  v43 = &v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AD8, &qword_1E6721430) + 36)];
  *v43 = v42;
  v43[1] = v41;
  LODWORD(v42) = sub_1E67200AC();
  *&v26[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AE0, &qword_1E6721438) + 36)] = v42;
  v44 = *(v22 + 44);
  v45 = *MEMORY[0x1E6981DB8];
  v46 = sub_1E672050C();
  v47 = *(*(v46 - 8) + 104);
  v98 = v26;
  v47(&v26[v44], v45, v46);
  if (*(a1 + *(v103 + 20)) == 1)
  {
    v48 = sub_1E67203EC();
    v49 = sub_1E67200FC();
    LOBYTE(v108) = 0;
    v50 = sub_1E672023C();
    v51 = swift_getKeyPath();
    *&v104 = v48;
    BYTE8(v104) = 1;
    LOBYTE(v105[0]) = v49;
    *(v105 + 8) = xmmword_1E67212B0;
    *(&v105[1] + 1) = 0;
    *&v106 = 0;
    BYTE8(v106) = 0;
    *&v107 = v51;
    *(&v107 + 1) = v50;
    sub_1E67201AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AF0, &qword_1E6721448);
    sub_1E671BE8C();
    v52 = v83;
    sub_1E67202BC();
    v111 = v106;
    v112 = v107;
    v109 = v105[0];
    v110 = v105[1];
    v108 = v104;
    sub_1E670D784(&v108, &qword_1ED096AF0, &qword_1E6721448);
    (*(v79 + 104))(v78, *MEMORY[0x1E69814D8], v80);
    *(v52 + *(v82 + 36)) = sub_1E67203AC();
    v53 = v85;
    sub_1E672001C();
    sub_1E671C0D4();
    v54 = v81;
    sub_1E672032C();
    v55 = v87;
    v56 = *(v86 + 8);
    v56(v53, v87);
    sub_1E670D784(v52, &qword_1ED096AA0, &qword_1E67213C8);
    sub_1E672002C();
    v57 = v84;
    v58 = v97;
    sub_1E671FEDC();
    v56(v53, v55);
    sub_1E670D784(v54, &qword_1ED096AA8, &qword_1E67213D0);
    sub_1E672056C();
    if (qword_1EE2C53B0 != -1)
    {
      swift_once();
    }

    v59 = qword_1EE2C6190;
    (*(v90 + 16))(v91, v40 + *(v103 + 24), v92);
    v60 = v59;
    *&v104 = sub_1E672058C();
    *(&v104 + 1) = v61;
    v62 = v95;
    sub_1E671BB14(v40, v95);
    v63 = (*(v93 + 80) + 16) & ~*(v93 + 80);
    v64 = swift_allocObject();
    v65 = sub_1E671BB78(v62, v64 + v63);
    sub_1E6713390(v65, v66, v67);
    v68 = v88;
    sub_1E671FECC();

    sub_1E670D784(v57, &qword_1ED096AA8, &qword_1E67213D0);
    v69 = v96;
    sub_1E670AC58(v68, v96);
    (*(v100 + 56))(v69, 0, 1, v58);
  }

  else
  {
    v69 = v96;
    (*(v100 + 56))(v96, 1, 1, v97);
  }

  v71 = v98;
  v70 = v99;
  sub_1E670D71C(v98, v99, &qword_1ED096AB8, &qword_1E67213E0);
  v72 = v101;
  sub_1E670D71C(v69, v101, &qword_1ED096AB0, &qword_1E67213D8);
  v73 = v102;
  sub_1E670D71C(v70, v102, &qword_1ED096AB8, &qword_1E67213E0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096AE8, &qword_1E6721440);
  v75 = v73 + *(v74 + 48);
  *v75 = 0;
  *(v75 + 8) = 0;
  sub_1E670D71C(v72, v73 + *(v74 + 64), &qword_1ED096AB0, &qword_1E67213D8);
  sub_1E670D784(v69, &qword_1ED096AB0, &qword_1E67213D8);
  sub_1E670D784(v71, &qword_1ED096AB8, &qword_1E67213E0);
  sub_1E670D784(v72, &qword_1ED096AB0, &qword_1E67213D8);
  return sub_1E670D784(v70, &qword_1ED096AB8, &qword_1E67213E0);
}

double sub_1E671B864()
{
  type metadata accessor for SummaryWorkoutsCardHeaderView(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  v0 = sub_1E671FE0C();
  v2(v0);

  return result;
}

double sub_1E671B8CC(uint64_t a1)
{
  if (*(a1 + *(type metadata accessor for SummaryWorkoutsCardHeaderView(0) + 20)) == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
    v2 = sub_1E671FE0C();
    v3(v2);
  }

  return result;
}

uint64_t sub_1E671B944(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](a1 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A58, &qword_1E6721348);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v12 - v6;
  *v7 = sub_1E672005C();
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A60, &qword_1E6721350);
  sub_1E671A7AC(v2, &v7[*(v8 + 44)]);
  v7[*(v5 + 36)] = 0;
  sub_1E671BB14(v2, &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v10 = swift_allocObject();
  sub_1E671BB78(&v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v10 + v9);
  sub_1E671BBF4();
  sub_1E67202DC();

  return sub_1E670D784(v7, &qword_1ED096A58, &qword_1E6721348);
}

uint64_t sub_1E671BB14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryWorkoutsCardHeaderView(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E671BB78(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryWorkoutsCardHeaderView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E671BBF4()
{
  result = qword_1EE2C5478;
  if (!qword_1EE2C5478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096A58, &qword_1E6721348);
    sub_1E670DA90(&qword_1EE2C53D8, &qword_1ED096A68, &qword_1E6721358, MEMORY[0x1E6981870]);
    sub_1E670DA90(&qword_1EE2C5420, &qword_1ED096A70, &qword_1E6721360, MEMORY[0x1E697FD58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5478);
  }

  return result;
}

uint64_t sub_1E671BD00@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E671FFCC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

uint64_t sub_1E671BD64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A78, &unk_1E6721368);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E671BDD4()
{
  result = qword_1EE2C5498;
  if (!qword_1EE2C5498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096AC8, &qword_1E67213F0);
    sub_1E670DA90(&qword_1EE2C53F8, &qword_1ED096AD0, &qword_1E67213F8, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5498);
  }

  return result;
}

unint64_t sub_1E671BE8C()
{
  result = qword_1EE2C5448;
  if (!qword_1EE2C5448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096AF0, &qword_1E6721448);
    sub_1E671BF70(&qword_1EE2C5458, &qword_1ED096AF8, &qword_1E6721450, sub_1E671BFF4);
    sub_1E670DA90(&qword_1EE2C5400, &qword_1ED096B08, &qword_1E6721460, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5448);
  }

  return result;
}

uint64_t sub_1E671BF70(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E671BFF4()
{
  result = qword_1EE2C5480;
  if (!qword_1EE2C5480)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B00, &qword_1E6721458);
    sub_1E671C080(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5480);
  }

  return result;
}

unint64_t sub_1E671C080(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2C5428;
  if (!qword_1EE2C5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5428);
  }

  return result;
}

unint64_t sub_1E671C0D4()
{
  result = qword_1EE2C5490;
  if (!qword_1EE2C5490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096AA0, &qword_1E67213C8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096AF0, &qword_1E6721448);
    sub_1E671BE8C();
    swift_getOpaqueTypeConformance2();
    sub_1E670DA90(&qword_1EE2C5410, &qword_1ED096B10, &qword_1E6721468, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5490);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for SummaryWorkoutsCardHeaderView(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = sub_1E671FD7C();
  v4 = *(v3 - 8);
  v5 = *(v4 + 8);
  v5(v2, v3);
  v6 = *(type metadata accessor for SummaryWorkoutsCardHeader(0) + 20);
  if (!(*(v4 + 48))(v2 + v6, 1, v3))
  {
    v5(v2 + v6, v3);
  }

  v7 = *(v1 + 24);
  v8 = sub_1E671FDCC();
  (*(*(v8 - 8) + 8))(v2 + v7, v8);
  v9 = *(v1 + 28);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  (*(*(v10 - 8) + 8))(v2 + v9, v10);

  return swift_deallocObject();
}

uint64_t sub_1E671C3BC(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for SummaryWorkoutsCardHeaderView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_1E671C468(uint64_t a1)
{
  type metadata accessor for SummaryArtwork(255);
  swift_getFunctionTypeMetadata1();
  sub_1E671FE1C();
  sub_1E671FE0C();
  return v2;
}

uint64_t sub_1E671C4D4(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A50, &qword_1E67212F0);
  return sub_1E671FDFC();
}

uint64_t (*sub_1E671C55C())()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  sub_1E671FE0C();
  *(swift_allocObject() + 16) = v1;
  return sub_1E6712EA8;
}

uint64_t sub_1E671C5D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = a4;
  v12[4] = a5;
  v12[5] = a6;
  v12[6] = a1;
  v12[7] = a2;
  swift_getFunctionTypeMetadata1();
  return sub_1E671FDFC();
}

uint64_t (*sub_1E671C690(uint64_t a1))(uint64_t a1)
{
  v2 = *(a1 + 24);
  swift_getFunctionTypeMetadata1();
  sub_1E671FE1C();
  sub_1E671FE0C();
  v3 = swift_allocObject();
  *(v3 + 16) = *(a1 + 16);
  *(v3 + 24) = v2;
  *(v3 + 32) = *(a1 + 32);
  *(v3 + 48) = v5;
  return sub_1E671EA30;
}

uint64_t sub_1E671C73C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B68, &qword_1E6721558);
  sub_1E672043C();
  return v2;
}

double sub_1E671C794(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B60, &qword_1E6721550);
  sub_1E672041C();
  return v2;
}

double sub_1E671C854(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B60, &qword_1E6721550);
  sub_1E672041C();
  return v2;
}

uint64_t SummaryWorkoutsCardView.init(header:items:isInteractive:locale:artworkViewBuilder:headerAction:itemAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, __int128 a12, uint64_t a13, uint64_t a14)
{
  v34 = a12;
  v35 = a13;
  v36 = a14;
  v19 = type metadata accessor for SummaryWorkoutsCardView(0, &v34);
  v20 = v19[19];
  v37 = 0;
  sub_1E672040C();
  *(a9 + v20) = v34;
  v21 = (a9 + v19[20]);
  v37 = 0;
  sub_1E672040C();
  v22 = *(&v34 + 1);
  *v21 = v34;
  v21[1] = v22;
  v23 = (a9 + v19[21]);
  v37 = 0;
  sub_1E672040C();
  v24 = *(&v34 + 1);
  *v23 = v34;
  v23[1] = v24;
  sub_1E671CB58(a1, a9);
  *(a9 + v19[13]) = a2;
  *(a9 + v19[14]) = a3;
  v25 = v19[15];
  v26 = sub_1E671FDCC();
  v27 = *(v26 - 8);
  (*(v27 + 16))(a9 + v25, a4, v26);

  sub_1E670EA64(a5, a6, a12);

  sub_1E671C4D4(a7, a8);
  sub_1E671C5D8(a10, a11, a12, *(&a12 + 1), a13, a14);

  (*(v27 + 8))(a4, v26);
  return sub_1E671CBBC(a1);
}

uint64_t sub_1E671CB58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SummaryWorkoutsCardHeader(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E671CBBC(uint64_t a1)
{
  v2 = type metadata accessor for SummaryWorkoutsCardHeader(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SummaryWorkoutsCardView.body.getter@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v46 = a2;
  v45 = a1;
  v3 = a1[3];
  v5 = a1[4];
  v4 = a1[5];
  v62 = a1[2];
  v2 = v62;
  v63 = v3;
  v64 = v5;
  v65 = v4;
  v6 = type metadata accessor for SummaryWorkoutsCardItemView(255, &v62);
  v8 = type metadata accessor for SummaryWorkoutsCardItem(255, v3, v4, v7);
  WitnessTable = swift_getWitnessTable();
  v10 = swift_getWitnessTable();
  v11 = swift_getWitnessTable();
  v62 = v6;
  v63 = v8;
  v64 = WitnessTable;
  v65 = v10;
  v66 = v11;
  sub_1E671FDEC();
  v12 = sub_1E67203DC();
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v35 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B18, &qword_1E6721490);
  v39 = sub_1E671FEEC();
  v44 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v37 = &v35 - v14;
  v15 = sub_1E671FEEC();
  v43 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v38 = &v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v40 = &v35 - v18;
  v52 = v2;
  v53 = v3;
  v19 = v5;
  v54 = v5;
  v55 = v4;
  v20 = v4;
  v21 = v41;
  v56 = v41;
  v22 = swift_getWitnessTable();
  sub_1E67203CC();
  sub_1E67204CC();
  v47 = v2;
  v48 = v3;
  v49 = v19;
  v50 = v20;
  v51 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B20, &qword_1E6721498);
  v61 = v22;
  v23 = swift_getWitnessTable();
  sub_1E671DDC0();
  v24 = v37;
  v25 = v36;
  sub_1E672035C();
  (*(v42 + 8))(v25, v12);
  v26 = sub_1E670DA90(&qword_1ED096B58, &qword_1ED096B18, &qword_1E6721490, MEMORY[0x1E697EC18]);
  v59 = v23;
  v60 = v26;
  v27 = v39;
  v28 = swift_getWitnessTable();
  v29 = v38;
  sub_1E672030C();
  (*(v44 + 8))(v24, v27);
  v57 = v28;
  v58 = MEMORY[0x1E69805B0];
  swift_getWitnessTable();
  v30 = v43;
  v31 = *(v43 + 16);
  v32 = v40;
  v31(v40, v29, v15);
  v33 = *(v30 + 8);
  v33(v29, v15);
  v31(v46, v32, v15);
  return (v33)(v32, v15);
}

uint64_t sub_1E671D17C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v64 = a6;
  v65 = a4;
  v66 = a2;
  v67 = a3;
  v61 = a2;
  v68 = a4;
  v69 = a5;
  v54 = a5;
  v11 = type metadata accessor for SummaryWorkoutsCardView(0, &v66);
  v12 = *(v11 - 8);
  v46 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - v13;
  v66 = a2;
  v67 = a3;
  v68 = a4;
  v69 = a5;
  v15 = type metadata accessor for SummaryWorkoutsCardItemView(255, &v66);
  v45 = a3;
  v17 = type metadata accessor for SummaryWorkoutsCardItem(255, a3, a5, v16);
  v60 = v15;
  WitnessTable = swift_getWitnessTable();
  v58 = WitnessTable;
  v59 = v17;
  v19 = swift_getWitnessTable();
  v57 = v19;
  v55 = swift_getWitnessTable();
  v66 = v15;
  v67 = v17;
  v68 = WitnessTable;
  v69 = v19;
  v70 = v55;
  v20 = sub_1E671FDEC();
  v62 = *(v20 - 8);
  v63 = v20;
  v21 = MEMORY[0x1EEE9AC00](v20);
  v53 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v56 = &v44 - v23;
  v24 = a1;
  v48 = a1;
  v25 = sub_1E671C73C(v11);
  v51 = v26;
  v52 = v25;
  v50 = v27;
  v49 = *(a1 + *(v11 + 52));
  v47 = *(v12 + 16);
  v28 = v14;
  v47(v14, v24, v11);
  v29 = v12;
  v30 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v31 = swift_allocObject();
  v32 = v61;
  *(v31 + 2) = v61;
  *(v31 + 3) = a3;
  v33 = v54;
  *(v31 + 4) = v65;
  *(v31 + 5) = v33;
  v34 = *(v29 + 32);
  v44 = v28;
  v34(&v31[v30], v28, v11);
  v47(v28, v48, v11);
  v35 = swift_allocObject();
  v36 = v45;
  *(v35 + 2) = v32;
  *(v35 + 3) = v36;
  *(v35 + 4) = v65;
  *(v35 + 5) = v33;
  v34(&v35[v30], v44, v11);

  v37 = v53;
  sub_1E671FDDC();
  v38 = v63;
  swift_getWitnessTable();
  v39 = v62;
  v40 = *(v62 + 16);
  v41 = v56;
  v40(v56, v37, v38);
  v42 = *(v39 + 8);
  v42(v37, v38);
  v40(v64, v41, v38);
  return (v42)(v41, v38);
}

uint64_t sub_1E671D614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, char *a7@<X8>)
{
  v46 = a1;
  v50 = a7;
  v12 = sub_1E671FDCC();
  v48 = *(v12 - 8);
  v49 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v47 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a4;
  v14 = a6;
  v43 = type metadata accessor for SummaryWorkoutsCardItem(0, a4, a6, v15);
  v16 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v18 = &v39 - v17;
  v44 = &v39 - v17;
  v45 = a3;
  v51 = a3;
  v52 = a4;
  v53 = a5;
  v54 = a6;
  v19 = a5;
  v41 = v14;
  v42 = a5;
  v20 = type metadata accessor for SummaryWorkoutsCardItemView(0, &v51);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v39 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v39 - v25;
  (*(v16 + 16))(v18, v46, v43);
  v51 = a3;
  v27 = v40;
  v52 = v40;
  v53 = v19;
  v54 = v14;
  v28 = type metadata accessor for SummaryWorkoutsCardView(0, &v51);
  v29 = sub_1E671C794(v28);
  v30 = sub_1E671C854(v28);
  v31 = v47;
  (*(v48 + 16))(v47, a2 + *(v28 + 60), v49);
  v32 = sub_1E671C468(v28);
  v34 = v33;
  sub_1E671C690(v28);
  sub_1E6718A00(v44, v31, v32, v34, sub_1E671EA30, v35, v45, v27, v24, v29, v30, v42, v41);
  swift_getWitnessTable();
  v36 = *(v21 + 16);
  v36(v26, v24, v20);
  v37 = *(v21 + 8);
  v37(v24, v20);
  v36(v50, v26, v20);
  return (v37)(v26, v20);
}

uint64_t sub_1E671D988@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v42 = a4;
  v43 = a5;
  v40 = a2;
  v41 = a3;
  v44 = a6;
  *&v45 = a2;
  *(&v45 + 1) = a3;
  *&v46 = a4;
  *(&v46 + 1) = a5;
  v7 = type metadata accessor for SummaryWorkoutsCardView(0, &v45);
  v8 = *(v7 - 8);
  v38 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B38, &qword_1E67214A8);
  v11 = v10 - 8;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v36 - v12;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B30, &qword_1E67214A0);
  MEMORY[0x1EEE9AC00](v39);
  v15 = &v36 - v14;
  sub_1E671CB58(a1, v13);
  v16 = *(v7 + 60);
  v17 = *(a1 + *(v7 + 56));
  v18 = type metadata accessor for SummaryWorkoutsCardHeaderView(0);
  v19 = *(v18 + 24);
  v20 = sub_1E671FDCC();
  (*(*(v20 - 8) + 16))(&v13[v19], a1 + v16, v20);
  sub_1E671C55C();
  v22 = v21;
  v13[*(v18 + 20)] = v17;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1E6712EA8;
  *(v23 + 24) = v22;
  *&v45 = sub_1E671E448;
  *(&v45 + 1) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A50, &qword_1E67212F0);
  sub_1E671FDFC();
  LOBYTE(v18) = sub_1E67200FC();
  v24 = &v13[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B40, &qword_1E67214B0) + 36)];
  *v24 = v18;
  *(v24 + 8) = xmmword_1E6721470;
  *(v24 + 24) = xmmword_1E6721480;
  v24[40] = 0;
  v25 = v37;
  (*(v8 + 16))(v37, a1, v7);
  v26 = (*(v8 + 80) + 48) & ~*(v8 + 80);
  v27 = swift_allocObject();
  v28 = v41;
  *(v27 + 2) = v40;
  *(v27 + 3) = v28;
  v29 = v43;
  *(v27 + 4) = v42;
  *(v27 + 5) = v29;
  (*(v8 + 32))(&v27[v26], v25, v7);
  v30 = &v13[*(v11 + 44)];
  *v30 = sub_1E671E0C4;
  v30[1] = 0;
  v30[2] = sub_1E671E450;
  v30[3] = v27;
  sub_1E67204FC();
  sub_1E671FF1C();
  sub_1E671E500(v13, v15);
  v31 = &v15[*(v39 + 36)];
  v32 = v50;
  *(v31 + 4) = v49;
  *(v31 + 5) = v32;
  *(v31 + 6) = v51;
  v33 = v46;
  *v31 = v45;
  *(v31 + 1) = v33;
  v34 = v48;
  *(v31 + 2) = v47;
  *(v31 + 3) = v34;
  sub_1E671DE7C();
  sub_1E672033C();
  return sub_1E671E570(v15);
}

unint64_t sub_1E671DDC0()
{
  result = qword_1ED096B28;
  if (!qword_1ED096B28)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B20, &qword_1E6721498);
    sub_1E671DE7C();
    sub_1E671E07C(&qword_1ED096B50, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED096B28);
  }

  return result;
}

unint64_t sub_1E671DE7C()
{
  result = qword_1EE2C5450;
  if (!qword_1EE2C5450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B30, &qword_1E67214A0);
    sub_1E671DF08();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5450);
  }

  return result;
}

unint64_t sub_1E671DF08()
{
  result = qword_1EE2C5470;
  if (!qword_1EE2C5470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B38, &qword_1E67214A8);
    sub_1E671DFC0();
    sub_1E670DA90(&qword_1EE2C5418, &qword_1ED096B48, &qword_1E67214B8, MEMORY[0x1E69802E0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C5470);
  }

  return result;
}

unint64_t sub_1E671DFC0()
{
  result = qword_1EE2C54A0;
  if (!qword_1EE2C54A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED096B40, &qword_1E67214B0);
    sub_1E671E07C(qword_1EE2C5820, type metadata accessor for SummaryWorkoutsCardHeaderView, &unk_1E67212F8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2C54A0);
  }

  return result;
}

uint64_t sub_1E671E07C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E671E0C4@<D0>(double *a1@<X8>)
{
  v2 = sub_1E672009C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E67200CC();
  sub_1E671FE8C();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v13 = v12;
  (*(v3 + 8))(v5, v2);
  v16.origin.x = v7;
  v16.origin.y = v9;
  v16.size.width = v11;
  v16.size.height = v13;
  result = ceil(CGRectGetHeight(v16));
  *a1 = result;
  return result;
}

void sub_1E671E234(void *a1)
{
  type metadata accessor for SummaryWorkoutsCardHeader(319);
  if (v3 <= 0x3F)
  {
    type metadata accessor for SummaryWorkoutsCardItem(255, a1[3], a1[5], v2);
    sub_1E67205CC();
    if (v4 <= 0x3F)
    {
      sub_1E671FDCC();
      if (v5 <= 0x3F)
      {
        type metadata accessor for SummaryArtwork(255);
        swift_getFunctionTypeMetadata1();
        sub_1E671FE1C();
        if (v6 <= 0x3F)
        {
          sub_1E671A72C(319);
          if (v7 <= 0x3F)
          {
            swift_getFunctionTypeMetadata1();
            sub_1E671FE1C();
            if (v8 <= 0x3F)
            {
              sub_1E671E3FC(319, &qword_1EE2C53E8, MEMORY[0x1E69E6530]);
              if (v9 <= 0x3F)
              {
                sub_1E671E3FC(319, &qword_1EE2C53F0, MEMORY[0x1E69E7DE0]);
                if (v10 <= 0x3F)
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

void sub_1E671E3FC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1E672044C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1E671E450(double *a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v10 = v1[2];
  v3 = v10;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  type metadata accessor for SummaryWorkoutsCardView(0, &v10);
  v7 = *a1;
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v8 = type metadata accessor for SummaryWorkoutsCardView(0, &v10);
  return sub_1E671C7F4(v8, v7);
}

uint64_t sub_1E671E500(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B38, &qword_1E67214A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E671E570(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096B30, &qword_1E67214A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E671E5D8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v6 = v2[3];
  v7 = v2[4];
  v8 = v2[5];
  v12[0] = v2[2];
  v5 = v12[0];
  v12[1] = v6;
  v12[2] = v7;
  v12[3] = v8;
  v9 = *(type metadata accessor for SummaryWorkoutsCardView(0, v12) - 8);
  v10 = v2 + ((*(v9 + 80) + 48) & ~*(v9 + 80));

  return sub_1E671D614(a1, v10, v5, v6, v7, v8, a2);
}

uint64_t objectdestroy_3Tm()
{
  v1 = *(v0 + 40);
  v17 = *(v0 + 16);
  v18 = *(v0 + 24);
  v19 = v1;
  v2 = type metadata accessor for SummaryWorkoutsCardView(0, &v17);
  v3 = v0 + ((*(*(v2 - 1) + 80) + 48) & ~*(*(v2 - 1) + 80));
  v4 = sub_1E671FD7C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  v6(v3, v4);
  v7 = *(type metadata accessor for SummaryWorkoutsCardHeader(0) + 20);
  if (!(*(v5 + 48))(v3 + v7, 1, v4))
  {
    v6(v3 + v7, v4);
  }

  v8 = v2[15];
  v9 = sub_1E671FDCC();
  (*(*(v9 - 8) + 8))(v3 + v8, v9);
  v10 = v2[16];
  type metadata accessor for SummaryArtwork(255);
  swift_getFunctionTypeMetadata1();
  v11 = sub_1E671FE1C();
  (*(*(v11 - 8) + 8))(v3 + v10, v11);
  v12 = v2[17];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED096A48, &unk_1E67212C0);
  (*(*(v13 - 8) + 8))(v3 + v12, v13);
  v14 = v2[18];
  swift_getFunctionTypeMetadata1();
  v15 = sub_1E671FE1C();
  (*(*(v15 - 8) + 8))(v3 + v14, v15);

  return swift_deallocObject();
}

uint64_t sub_1E671E984(double a1)
{
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v9 = v1[2];
  v3 = v9;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  type metadata accessor for SummaryWorkoutsCardView(0, &v9);
  v9 = v3;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v7 = type metadata accessor for SummaryWorkoutsCardView(0, &v9);
  return sub_1E671C8B4(v7, a1);
}

uint64_t sub_1E671EA58()
{
  v1 = v0;
  v2 = sub_1E671FE3C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SummaryArtwork(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969F8, &qword_1E6720F90);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v21 - v13;
  sub_1E6715EAC(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968B0, &qword_1E6720CF8) + 48);
    sub_1E671ED38(v8, v14);
    sub_1E670D784(&v8[v15], &qword_1ED0969F0, &qword_1E6720F88);
  }

  else
  {

    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A0, &qword_1E6720CE8);
    v17 = *(v16 + 48);
    sub_1E671ED38(&v8[*(v16 + 64)], v14);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0);
    (*(*(v18 - 8) + 8))(&v8[v17], v18);
  }

  sub_1E671ED38(v14, v12);
  if ((*(v3 + 48))(v12, 1, v2) == 1)
  {
    sub_1E670D784(v12, &qword_1ED0969F8, &qword_1E6720F90);
    return sub_1E672039C();
  }

  else
  {
    (*(v3 + 32))(v5, v12, v2);
    sub_1E671FE2C();
    v20 = sub_1E672037C();
    (*(v3 + 8))(v5, v2);
    return v20;
  }
}

uint64_t sub_1E671ED38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0969F8, &qword_1E6720F90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t static SummaryWorkoutsCardItem.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a1;
  v49 = a2;
  v6 = type metadata accessor for SummaryWorkoutsCardErrorItem(0, a3, a4, a4);
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v40 = &v40 - v7;
  v9 = type metadata accessor for SummaryWorkoutsCardWorkoutItem(0, a3, a4, v8);
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v40 - v10;
  v41 = a3;
  v42 = a4;
  v13 = type metadata accessor for SummaryWorkoutsCardItem(0, a3, a4, v12);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v40 - v18;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v21 = *(TupleTypeMetadata2 - 8);
  v22 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v24 = &v40 - v23;
  v25 = *(v22 + 48);
  v47 = v14;
  v26 = *(v14 + 16);
  v26(&v40 - v23, v48, v13);
  v26(&v24[v25], v49, v13);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v33 = v45;
    v26(v19, v24, v13);
    if (!swift_getEnumCaseMultiPayload())
    {
      v35 = v33;
      v36 = *(v33 + 32);
      v37 = v11;
      v38 = v46;
      v36(v11, &v24[v25], v46);
      v31 = static SummaryWorkoutsCardWorkoutItem.== infix(_:_:)(v19, v11, v41, v42);
      v39 = *(v35 + 8);
      v39(v37, v38);
      v39(v19, v38);
      v21 = v47;
      goto LABEL_11;
    }

    (*(v33 + 8))(v19, v46);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v31 = 1;
      v21 = v47;
      goto LABEL_11;
    }

LABEL_10:
    v31 = 0;
    v13 = TupleTypeMetadata2;
    goto LABEL_11;
  }

  v26(v17, v24, v13);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v43 + 8))(v17, v44);
    goto LABEL_10;
  }

  v29 = v43;
  v28 = v44;
  v30 = v40;
  (*(v43 + 32))(v40, &v24[v25], v44);
  v31 = static SummaryWorkoutsCardErrorItem.== infix(_:_:)(v17, v30, v41, v42);
  v32 = *(v29 + 8);
  v32(v30, v28);
  v32(v17, v28);
  v21 = v47;
LABEL_11:
  (*(v21 + 8))(v24, v13);
  return v31 & 1;
}

uint64_t SummaryWorkoutsCardItem.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  v10 = type metadata accessor for SummaryWorkoutsCardErrorItem(0, v8, v9, a4);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - v12;
  v15 = type metadata accessor for SummaryWorkoutsCardWorkoutItem(0, v8, v9, v14);
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v25 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v5, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      (*(v11 + 32))(v13, v21, v10);
      MEMORY[0x1E694FC40](2);
      SummaryWorkoutsCardErrorItem.hash(into:)(a1, v10);
      return (*(v11 + 8))(v13, v10);
    }

    else
    {
      return MEMORY[0x1E694FC40](0);
    }
  }

  else
  {
    (*(v16 + 32))(v19, v21, v15);
    MEMORY[0x1E694FC40](1);
    SummaryWorkoutsCardWorkoutItem.hash(into:)(a1, v15);
    return (*(v16 + 8))(v19, v15);
  }
}

uint64_t SummaryWorkoutsCardItem.hashValue.getter(uint64_t a1)
{
  sub_1E672062C();
  SummaryWorkoutsCardItem.hash(into:)(v5, a1, v2, v3);
  return sub_1E672065C();
}

uint64_t sub_1E671F554(uint64_t a1, uint64_t a2)
{
  sub_1E672062C();
  SummaryWorkoutsCardItem.hash(into:)(v6, a2, v3, v4);
  return sub_1E672065C();
}

uint64_t sub_1E671F5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  result = type metadata accessor for SummaryWorkoutsCardWorkoutItem(319, v4, v5, a4);
  if (v8 <= 0x3F)
  {
    result = type metadata accessor for SummaryWorkoutsCardErrorItem(319, v4, v5, v7);
    if (v9 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1E671F674(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(sub_1E671FD7C() - 8);
  v5 = *(v4 + 80);
  v6 = *(v4 + 64);
  v7 = (v6 + v5 + ((v6 + v5 + ((v3 + v5) & ~v5)) & ~v5)) & ~v5;
  v8 = *(v4 + 84);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0) - 8);
  v10 = *(v9 + 80);
  v11 = *(sub_1E671FE3C() - 8);
  v12 = *(v11 + 80);
  v13 = *(sub_1E671FDBC() - 8);
  v14 = v13;
  v15 = *(v13 + 80);
  v16 = v7 + v6;
  if (v8)
  {
    v17 = v7 + v6;
  }

  else
  {
    v17 = v16 + 1;
  }

  v18 = (v17 + (v10 | v12 | v15 | 7) + 1) & ~(v10 | v12 | v15 | 7);
  if (*(v11 + 84))
  {
    v19 = *(v11 + 64);
  }

  else
  {
    v19 = *(v11 + 64) + 1;
  }

  v20 = (v19 + v15) & ~v15;
  v21 = *(v13 + 64);
  if (!*(v14 + 84))
  {
    ++v21;
  }

  v22 = v21 + v20;
  if (v22 <= v19 + ((((v10 + 16) & ~v10) + v12 + *(v9 + 64)) & ~v12))
  {
    v22 = v19 + ((((v10 + 16) & ~v10) + v12 + *(v9 + 64)) & ~v12);
  }

  v23 = v22 + v18;
  if (v16 <= v23 + 1)
  {
    v24 = v23 + 1;
  }

  else
  {
    v24 = v7 + v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_36;
  }

  v25 = v24 + 1;
  v26 = 8 * (v24 + 1);
  if ((v24 + 1) <= 3)
  {
    v29 = ((a2 + ~(-1 << v26) - 253) >> v26) + 1;
    if (HIWORD(v29))
    {
      v27 = *(a1 + v25);
      if (!v27)
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v29 > 0xFF)
    {
      v27 = *(a1 + v25);
      if (!*(a1 + v25))
      {
        goto LABEL_36;
      }

      goto LABEL_25;
    }

    if (v29 < 2)
    {
LABEL_36:
      v31 = *(a1 + v24);
      if (v31 >= 3)
      {
        return (v31 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v27 = *(a1 + v25);
  if (!*(a1 + v25))
  {
    goto LABEL_36;
  }

LABEL_25:
  v30 = (v27 - 1) << v26;
  if (v25 > 3)
  {
    v30 = 0;
  }

  if (v25)
  {
    if (v25 > 3)
    {
      LODWORD(v25) = 4;
    }

    if (v25 > 2)
    {
      if (v25 == 3)
      {
        LODWORD(v25) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v25) = *a1;
      }
    }

    else if (v25 == 1)
    {
      LODWORD(v25) = *a1;
    }

    else
    {
      LODWORD(v25) = *a1;
    }
  }

  return (v25 | v30) + 254;
}

void sub_1E671F9A8(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v4 = *(*(*(a4 + 16) - 8) + 64);
  v5 = *(sub_1E671FD7C() - 8);
  v6 = *(v5 + 80);
  v7 = *(v5 + 64);
  v8 = (v7 + v6 + ((v7 + v6 + ((v4 + v6) & ~v6)) & ~v6)) & ~v6;
  v9 = *(v5 + 84);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0968A8, &qword_1E6720CF0) - 8);
  v11 = *(v10 + 80);
  v12 = *(sub_1E671FE3C() - 8);
  v13 = *(v12 + 80);
  v14 = *(sub_1E671FDBC() - 8);
  v15 = v14;
  v16 = *(v14 + 80);
  v17 = v8 + v7;
  if (v9)
  {
    v18 = v8 + v7;
  }

  else
  {
    v18 = v17 + 1;
  }

  v19 = (v18 + (v11 | v13 | v16 | 7) + 1) & ~(v11 | v13 | v16 | 7);
  if (*(v12 + 84))
  {
    v20 = *(v12 + 64);
  }

  else
  {
    v20 = *(v12 + 64) + 1;
  }

  v21 = (v20 + v16) & ~v16;
  v22 = *(v14 + 64);
  if (!*(v15 + 84))
  {
    ++v22;
  }

  v23 = v22 + v21;
  if (v23 <= v20 + ((((v11 + 16) & ~v11) + v13 + *(v10 + 64)) & ~v13))
  {
    v23 = v20 + ((((v11 + 16) & ~v11) + v13 + *(v10 + 64)) & ~v13);
  }

  v24 = v23 + v19;
  if (v17 <= v24 + 1)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = v8 + v7;
  }

  v26 = v25 + 1;
  if (a3 < 0xFE)
  {
    v29 = 0;
    v27 = a1;
    v28 = a2;
  }

  else
  {
    v27 = a1;
    v28 = a2;
    if (v26 <= 3)
    {
      v32 = ((a3 + ~(-1 << (8 * v26)) - 253) >> (8 * v26)) + 1;
      if (HIWORD(v32))
      {
        v29 = 4;
      }

      else
      {
        if (v32 < 0x100)
        {
          v33 = 1;
        }

        else
        {
          v33 = 2;
        }

        if (v32 >= 2)
        {
          v29 = v33;
        }

        else
        {
          v29 = 0;
        }
      }
    }

    else
    {
      v29 = 1;
    }
  }

  if (v28 > 0xFD)
  {
    v30 = v28 - 254;
    if (v26 >= 4)
    {
      bzero(v27, v25 + 1);
      *v27 = v30;
      v31 = 1;
      if (v29 > 1)
      {
        goto LABEL_50;
      }

      goto LABEL_47;
    }

    v31 = (v30 >> (8 * v26)) + 1;
    if (v25 != -1)
    {
      v34 = v30 & ~(-1 << (8 * v26));
      bzero(v27, v26);
      if (v26 != 3)
      {
        if (v26 == 2)
        {
          *v27 = v34;
          if (v29 > 1)
          {
LABEL_50:
            if (v29 == 2)
            {
              *&v27[v26] = v31;
            }

            else
            {
              *&v27[v26] = v31;
            }

            return;
          }
        }

        else
        {
          *v27 = v30;
          if (v29 > 1)
          {
            goto LABEL_50;
          }
        }

LABEL_47:
        if (v29)
        {
          v27[v26] = v31;
        }

        return;
      }

      *v27 = v34;
      v27[2] = BYTE2(v34);
    }

    if (v29 > 1)
    {
      goto LABEL_50;
    }

    goto LABEL_47;
  }

  if (v29 <= 1)
  {
    if (v29)
    {
      v27[v26] = 0;
      if (!v28)
      {
        return;
      }

LABEL_36:
      v27[v25] = -v28;
      return;
    }

LABEL_35:
    if (!v28)
    {
      return;
    }

    goto LABEL_36;
  }

  if (v29 == 2)
  {
    *&v27[v26] = 0;
    goto LABEL_35;
  }

  *&v27[v26] = 0;
  if (v28)
  {
    goto LABEL_36;
  }
}