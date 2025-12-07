uint64_t sub_251BE665C(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v3 = type metadata accessor for PBPollParameters(0);
  v47 = *(v3 - 8);
  v48 = v3;
  MEMORY[0x28223BE20](v3);
  v43 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D83D88];
  sub_251BE161C(0, &qword_27F47BF28, type metadata accessor for PBPollParameters, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v44 = (&v42 - v7);
  sub_251BE7F50(0, &qword_27F47BF30, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v49 = &v42 - v9;
  v10 = type metadata accessor for PBBlobAuth(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BE161C(0, qword_2813E7028, type metadata accessor for PBBlobAuth, v5);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = (&v42 - v15);
  sub_251BE7F50(0, &qword_27F47A940, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v18 = v17 - 8;
  MEMORY[0x28223BE20](v17);
  v20 = &v42 - v19;
  v45 = type metadata accessor for PBPollStateRequest(0);
  v21 = *(v45 + 20);
  v22 = *(v18 + 56);
  v50 = a1;
  sub_251BE7FC8(a1 + v21, v20, qword_2813E7028, type metadata accessor for PBBlobAuth);
  v23 = v51 + v21;
  v24 = v51;
  sub_251BE7FC8(v23, &v20[v22], qword_2813E7028, type metadata accessor for PBBlobAuth);
  v25 = *(v11 + 48);
  if (v25(v20, 1, v10) == 1)
  {
    if (v25(&v20[v22], 1, v10) == 1)
    {
      sub_251BE8048(v20, qword_2813E7028, type metadata accessor for PBBlobAuth);
      goto LABEL_4;
    }

LABEL_9:
    v31 = &qword_27F47A940;
    v32 = qword_2813E7028;
    v33 = type metadata accessor for PBBlobAuth;
    v34 = v20;
LABEL_21:
    sub_251BE6FF8(v34, v31, v32, v33);
    goto LABEL_22;
  }

  sub_251BE7FC8(v20, v16, qword_2813E7028, type metadata accessor for PBBlobAuth);
  if (v25(&v20[v22], 1, v10) == 1)
  {
    sub_251BE6F98(v16, type metadata accessor for PBBlobAuth);
    goto LABEL_9;
  }

  sub_251BE6F30(&v20[v22], v13, type metadata accessor for PBBlobAuth);
  if ((sub_251A9C778(*v16, *v13) & 1) == 0 || !sub_251A9D1F0(v16[1], v16[2], v13[1], v13[2]) || (v16[3] != v13[3] || v16[4] != v13[4]) && (sub_251C719D4() & 1) == 0)
  {
    sub_251BE6F98(v13, type metadata accessor for PBBlobAuth);
    sub_251BE6F98(v16, type metadata accessor for PBBlobAuth);
    sub_251BE8048(v20, qword_2813E7028, type metadata accessor for PBBlobAuth);
    goto LABEL_22;
  }

  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v35 = sub_251C70ED4();
  sub_251BE6F98(v13, type metadata accessor for PBBlobAuth);
  sub_251BE6F98(v16, type metadata accessor for PBBlobAuth);
  sub_251BE8048(v20, qword_2813E7028, type metadata accessor for PBBlobAuth);
  if ((v35 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_4:
  v26 = *(v45 + 24);
  v27 = *(v46 + 48);
  v28 = v49;
  sub_251BE7FC8(v50 + v26, v49, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  sub_251BE7FC8(v24 + v26, v28 + v27, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  v29 = v48;
  v30 = *(v47 + 48);
  if (v30(v28, 1, v48) == 1)
  {
    if (v30(v28 + v27, 1, v29) == 1)
    {
      sub_251BE8048(v28, &qword_27F47BF28, type metadata accessor for PBPollParameters);
LABEL_25:
      sub_251C703B4();
      sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v37 = sub_251C70ED4();
      return v37 & 1;
    }

    goto LABEL_20;
  }

  v36 = v44;
  sub_251BE7FC8(v28, v44, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  if (v30(v28 + v27, 1, v29) == 1)
  {
    sub_251BE6F98(v36, type metadata accessor for PBPollParameters);
LABEL_20:
    v31 = &qword_27F47BF30;
    v32 = &qword_27F47BF28;
    v33 = type metadata accessor for PBPollParameters;
    v34 = v28;
    goto LABEL_21;
  }

  v39 = v28 + v27;
  v40 = v43;
  sub_251BE6F30(v39, v43, type metadata accessor for PBPollParameters);
  v41 = sub_251BE6E1C(v36, v40);
  sub_251BE6F98(v40, type metadata accessor for PBPollParameters);
  sub_251BE6F98(v36, type metadata accessor for PBPollParameters);
  sub_251BE8048(v28, &qword_27F47BF28, type metadata accessor for PBPollParameters);
  if (v41)
  {
    goto LABEL_25;
  }

LABEL_22:
  v37 = 0;
  return v37 & 1;
}

uint64_t sub_251BE6E1C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a2 + 8) == 1)
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

  v4 = a1[2] == *(a2 + 16) && a1[3] == *(a2 + 24);
  if (v4 || (sub_251C719D4() & 1) != 0)
  {
    type metadata accessor for PBPollParameters(0);
    sub_251C703B4();
    sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
    return sub_251C70ED4() & 1;
  }

  return 0;
}

uint64_t sub_251BE6F30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BE6F98(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251BE6FF8(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251BE7F50(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

unint64_t sub_251BE7074()
{
  result = qword_27F47BF50;
  if (!qword_27F47BF50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BF50);
  }

  return result;
}

void sub_251BE70C8(uint64_t a1)
{
  if (!qword_27F47BF60)
  {
    type metadata accessor for PBUpdateParameters.OneOf_Data(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47BF60);
    }
  }
}

uint64_t sub_251BE712C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBUpdateParameters.OneOf_Data(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_251BE7190()
{
  result = qword_27F47BF88;
  if (!qword_27F47BF88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BF88);
  }

  return result;
}

uint64_t sub_251BE71E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PBOtherData(0);
  v56 = *(v4 - 8);
  v57 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_251BE161C(0, &qword_27F47BD70, type metadata accessor for PBOtherData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v50 - v9;
  sub_251BE7F50(0, &qword_27F47BF98, &qword_27F47BD70, type metadata accessor for PBOtherData);
  v55 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v50 - v11;
  v13 = sub_251C70384();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x277D21570];
  sub_251BE161C(0, &qword_27F479130, MEMORY[0x277D21570], v7);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v50 - v19;
  sub_251BE7F50(0, &qword_27F479138, &qword_27F479130, v17);
  v22 = v21;
  MEMORY[0x28223BE20](v21);
  v24 = &v50 - v23;
  if (*a1 != *a2 && (sub_251C719D4() & 1) == 0)
  {
    goto LABEL_52;
  }

  v25 = *(a1 + 16);
  v26 = *(a2 + 16);
  if (*(a2 + 24) == 1)
  {
    if (v26 > 1)
    {
      if (v26 == 2)
      {
        if (v25 != 2)
        {
          goto LABEL_52;
        }
      }

      else if (v25 != 3)
      {
        goto LABEL_52;
      }
    }

    else if (v26)
    {
      if (v25 != 1)
      {
        goto LABEL_52;
      }
    }

    else if (v25)
    {
      goto LABEL_52;
    }
  }

  else if (v25 != v26)
  {
    goto LABEL_52;
  }

  if ((*(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40)) && (sub_251C719D4() & 1) == 0 || (*(a1 + 48) != *(a2 + 48) || *(a1 + 56) != *(a2 + 56)) && (sub_251C719D4() & 1) == 0 || *(a1 + 64) != *(a2 + 64))
  {
    goto LABEL_52;
  }

  v50 = v6;
  v51 = v12;
  v52 = type metadata accessor for PBState(0);
  v27 = *(v52 + 68);
  v28 = *(v22 + 48);
  v29 = MEMORY[0x277D21570];
  sub_251BE7FC8(a1 + v27, v24, &qword_27F479130, MEMORY[0x277D21570]);
  v53 = v28;
  sub_251BE7FC8(a2 + v27, &v24[v28], &qword_27F479130, v29);
  v30 = v14;
  v31 = *(v14 + 48);
  if (v31(v24, 1, v13) == 1)
  {
    if (v31(&v24[v53], 1, v13) == 1)
    {
      sub_251BE8048(v24, &qword_27F479130, MEMORY[0x277D21570]);
      goto LABEL_31;
    }

LABEL_28:
    v33 = &qword_27F479138;
    v34 = &qword_27F479130;
    v35 = MEMORY[0x277D21570];
    v36 = v24;
LABEL_29:
    sub_251BE6FF8(v36, v33, v34, v35);
    goto LABEL_52;
  }

  sub_251BE7FC8(v24, v20, &qword_27F479130, MEMORY[0x277D21570]);
  v32 = v53;
  if (v31(&v24[v53], 1, v13) == 1)
  {
    (*(v30 + 8))(v20, v13);
    goto LABEL_28;
  }

  (*(v30 + 32))(v16, &v24[v32], v13);
  sub_251BE4824(&qword_27F479140, MEMORY[0x277D21570], MEMORY[0x277D21578]);
  v37 = sub_251C70ED4();
  v38 = *(v30 + 8);
  v38(v16, v13);
  v38(v20, v13);
  sub_251BE8048(v24, &qword_27F479130, MEMORY[0x277D21570]);
  if ((v37 & 1) == 0)
  {
    goto LABEL_52;
  }

LABEL_31:
  if (!sub_251A9D1F0(*(a1 + 72), *(a1 + 80), *(a2 + 72), *(a2 + 80)) || !sub_251A9D1F0(*(a1 + 88), *(a1 + 96), *(a2 + 88), *(a2 + 96)) || !sub_251A9D1F0(*(a1 + 104), *(a1 + 112), *(a2 + 104), *(a2 + 112)) || !sub_251A9D1F0(*(a1 + 120), *(a1 + 128), *(a2 + 120), *(a2 + 128)) || !sub_251A9D1F0(*(a1 + 136), *(a1 + 144), *(a2 + 136), *(a2 + 144)) || !sub_251A9D1F0(*(a1 + 152), *(a1 + 160), *(a2 + 152), *(a2 + 160)) || !sub_251BB3774(*(a1 + 168), *(a1 + 176), *(a2 + 168)))
  {
    goto LABEL_52;
  }

  v39 = v51;
  v40 = *(v52 + 72);
  v41 = *(v55 + 48);
  sub_251BE7FC8(a1 + v40, v51, &qword_27F47BD70, type metadata accessor for PBOtherData);
  sub_251BE7FC8(a2 + v40, v39 + v41, &qword_27F47BD70, type metadata accessor for PBOtherData);
  v42 = v57;
  v43 = *(v56 + 48);
  if (v43(v39, 1, v57) != 1)
  {
    v45 = v54;
    sub_251BE7FC8(v39, v54, &qword_27F47BD70, type metadata accessor for PBOtherData);
    if (v43(v39 + v41, 1, v42) == 1)
    {
      sub_251BE6F98(v45, type metadata accessor for PBOtherData);
      goto LABEL_44;
    }

    v46 = v50;
    sub_251BE6F30(v39 + v41, v50, type metadata accessor for PBOtherData);
    if (*v45 == *v46 && (*(v45 + 8) == *(v50 + 1) && *(v45 + 16) == *(v50 + 2) || (sub_251C719D4() & 1) != 0))
    {
      sub_251C703B4();
      sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
      v47 = v50;
      v48 = sub_251C70ED4();
      sub_251BE6F98(v47, type metadata accessor for PBOtherData);
      sub_251BE6F98(v45, type metadata accessor for PBOtherData);
      sub_251BE8048(v39, &qword_27F47BD70, type metadata accessor for PBOtherData);
      if (v48)
      {
        goto LABEL_41;
      }
    }

    else
    {
      sub_251BE6F98(v50, type metadata accessor for PBOtherData);
      sub_251BE6F98(v45, type metadata accessor for PBOtherData);
      sub_251BE8048(v39, &qword_27F47BD70, type metadata accessor for PBOtherData);
    }

LABEL_52:
    v44 = 0;
    return v44 & 1;
  }

  if (v43(v39 + v41, 1, v42) != 1)
  {
LABEL_44:
    v33 = &qword_27F47BF98;
    v34 = &qword_27F47BD70;
    v35 = type metadata accessor for PBOtherData;
    v36 = v39;
    goto LABEL_29;
  }

  sub_251BE8048(v39, &qword_27F47BD70, type metadata accessor for PBOtherData);
LABEL_41:
  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  v44 = sub_251C70ED4();
  return v44 & 1;
}

uint64_t sub_251BE7B54(uint64_t a1, uint64_t a2)
{
  v4 = *(type metadata accessor for PBStateResponse(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a2 + v4);
  if (v5 != v6)
  {

    v7 = sub_251BE2404(v5, v6);

    if (!v7)
    {
      return 0;
    }
  }

  sub_251C703B4();
  sub_251BE4824(&qword_27F478F98, MEMORY[0x277D216C8], MEMORY[0x277D216D0]);
  return sub_251C70ED4() & 1;
}

uint64_t sub_251BE7C50(uint64_t a1)
{
  sub_251BE161C(0, &qword_27F47BD58, type metadata accessor for PBState, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19[-v4];
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v6 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state;
  v7 = type metadata accessor for PBState(0);
  (*(*(v7 - 8) + 56))(v1 + v6, 1, 1, v7);
  v8 = (v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  v9 = v1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__resultCode;
  *v9 = 0;
  *(v9 + 8) = 1;
  swift_beginAccess();
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v10;
  *(v1 + 24) = v11;
  v12 = OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__state;
  swift_beginAccess();
  sub_251BE7FC8(a1 + v12, v5, &qword_27F47BD58, type metadata accessor for PBState);
  swift_beginAccess();

  sub_251BE7EBC(v5, v1 + v6);
  swift_endAccess();
  v13 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__msg);
  swift_beginAccess();
  v15 = *v13;
  v14 = v13[1];
  swift_beginAccess();
  *v8 = v15;
  v8[1] = v14;

  v16 = (a1 + OBJC_IVAR____TtCV19HealthRecordsDaemon15PBStateResponseP33_E538808127C87CE383BCBD536FE36D2A13_StorageClass__resultCode);
  swift_beginAccess();
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  swift_beginAccess();
  *v9 = v17;
  *(v9 + 8) = v16;
  return v1;
}

uint64_t sub_251BE7EBC(uint64_t a1, uint64_t a2)
{
  sub_251BE161C(0, &qword_27F47BD58, type metadata accessor for PBState, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_251BE7F50(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_251BE161C(255, a3, a4, MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_251BE7FC8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251BE161C(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251BE8048(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BE161C(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_251BE80B8()
{
  result = qword_27F47BFB0;
  if (!qword_27F47BFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47BFB0);
  }

  return result;
}

uint64_t sub_251BE810C(uint64_t a1)
{
  result = type metadata accessor for PBOtherData(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_251BE81D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_251C703B4();
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_251BE82BC(uint64_t a1)
{
  sub_251BE161C(319, &qword_27F47BF48, type metadata accessor for PBUpdateParameters.OneOf_Data, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_251C703B4();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_81Tm(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v10 = sub_251C703B4();
  v11 = *(v10 - 8);
  if (*(v11 + 84) == a2)
  {
    v12 = v10;
    v13 = *(v11 + 48);
    v14 = a1;
LABEL_5:

    return v13(v14, a2, v12);
  }

  sub_251BE161C(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v16 = *(v15 - 8);
  if (*(v16 + 84) == a2)
  {
    v12 = v15;
    v13 = *(v16 + 48);
    v14 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  sub_251BE161C(0, a4, a5, MEMORY[0x277D83D88]);
  v19 = v18;
  v20 = *(*(v18 - 8) + 48);
  v21 = a1 + *(a3 + 24);

  return v20(v21, a2, v19);
}

uint64_t __swift_store_extra_inhabitant_index_82Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, unint64_t *a5, uint64_t (*a6)(uint64_t))
{
  v12 = sub_251C703B4();
  v13 = *(v12 - 8);
  if (*(v13 + 84) == a3)
  {
    v14 = v12;
    v15 = *(v13 + 56);
    v16 = a1;
LABEL_5:

    return v15(v16, a2, a2, v14);
  }

  sub_251BE161C(0, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
  v18 = *(v17 - 8);
  if (*(v18 + 84) == a3)
  {
    v14 = v17;
    v15 = *(v18 + 56);
    v16 = a1 + *(a4 + 20);
    goto LABEL_5;
  }

  sub_251BE161C(0, a5, a6, MEMORY[0x277D83D88]);
  v21 = v20;
  v22 = *(*(v20 - 8) + 56);
  v23 = a1 + *(a4 + 24);

  return v22(v23, a2, a2, v21);
}

void sub_251BE8724(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  sub_251C703B4();
  if (v7 <= 0x3F)
  {
    sub_251BE161C(319, qword_2813E7028, type metadata accessor for PBBlobAuth, MEMORY[0x277D83D88]);
    if (v8 <= 0x3F)
    {
      sub_251BE161C(319, a4, a5, MEMORY[0x277D83D88]);
      if (v9 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_251BE8844(uint64_t a1)
{
  result = sub_251C703B4();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_251BE88D4()
{
  result = qword_27F47C018;
  if (!qword_27F47C018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C018);
  }

  return result;
}

unint64_t sub_251BE895C()
{
  result = qword_27F47C030;
  if (!qword_27F47C030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C030);
  }

  return result;
}

unint64_t sub_251BE89B4()
{
  result = qword_27F47C038;
  if (!qword_27F47C038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C038);
  }

  return result;
}

void __swiftcall HKClinicalGatewayEndpointSchemaParameter.asHTTPHeader(using:)(HealthRecordsDaemon::HTTPHeader_optional *__return_ptr retstr, Swift::OpaquePointer_optional using)
{
  v4 = sub_251BE8BE4(using.value._rawValue);
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    v8 = [v2 param];
    v9 = sub_251C70F14();
    v11 = v10;

    retstr->value.name._countAndFlagsBits = v9;
    retstr->value.name._object = v11;
    retstr->value.value._countAndFlagsBits = v6;
    retstr->value.value._object = v7;
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v12 = sub_251C70764();
    __swift_project_value_buffer(v12, qword_2813E8130);
    v13 = v2;
    v14 = sub_251C70744();
    v15 = sub_251C713C4();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v23 = v17;
      *v16 = 136315138;
      v18 = [v13 param];
      v19 = sub_251C70F14();
      v21 = v20;

      v22 = sub_251B10780(v19, v21, &v23);

      *(v16 + 4) = v22;
      _os_log_impl(&dword_251A6C000, v14, v15, "HKClinicalGatewayEndpointSchemaParameter.asHTTPHeader: no value found for parameter %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x25308E2B0](v17, -1, -1);
      MEMORY[0x25308E2B0](v16, -1, -1);
    }

    retstr->value.name = 0u;
    retstr->value.value = 0u;
  }
}

uint64_t sub_251BE8BE4(uint64_t a1)
{
  v3 = [v1 literal];
  if (v3)
  {
    v4 = v3;
    v5 = sub_251C70F14();

    return v5;
  }

  else if (a1)
  {
    return sub_251BE8DBC(a1);
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v7 = sub_251C70764();
    __swift_project_value_buffer(v7, qword_2813E8130);
    v8 = v1;
    v9 = sub_251C70744();
    v10 = sub_251C713C4();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = [v8 param];
      v14 = sub_251C70F14();
      v16 = v15;

      v17 = sub_251B10780(v14, v16, &v18);

      *(v11 + 4) = v17;
      _os_log_impl(&dword_251A6C000, v9, v10, "HKClinicalGatewayEndpointSchemaParameter.paramValue: %s has no literal value and no substitusions is nil.", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v12);
      MEMORY[0x25308E2B0](v12, -1, -1);
      MEMORY[0x25308E2B0](v11, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_251BE8DBC(uint64_t a1)
{
  v2 = v1;
  v4 = [v2 variable];
  if (v4 && (v5 = v4, v6 = sub_251C70F14(), v8 = v7, v5, v9._countAndFlagsBits = v6, v9._object = v8, ContentVariables.init(rawValue:)(v9), v25 != 12) && *(a1 + 16) && (v10 = sub_251AC8DE8(v25), (v11 & 1) != 0))
  {
    v12 = *(*(a1 + 56) + 16 * v10);

    return v12;
  }

  else
  {
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v14 = sub_251C70764();
    __swift_project_value_buffer(v14, qword_2813E8130);
    v15 = v2;
    v16 = sub_251C70744();
    v17 = sub_251C713C4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v26 = v19;
      *v18 = 136315138;
      v20 = [v15 param];
      v21 = sub_251C70F14();
      v23 = v22;

      v24 = sub_251B10780(v21, v23, &v26);

      *(v18 + 4) = v24;
      _os_log_impl(&dword_251A6C000, v16, v17, "HKClinicalGatewayEndpointSchemaParameter.variableValue: %s no substitusions to apply.", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x25308E2B0](v19, -1, -1);
      MEMORY[0x25308E2B0](v18, -1, -1);
    }

    return 0;
  }
}

uint64_t sub_251BE8FC0(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return qword_251C86148[a1 - 1];
  }
}

uint64_t sub_251BE8FEC@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v48 = a2;
  v49 = a3;
  v4 = sub_251C6FE64();
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BE9CC0(0, &qword_27F47A938, type metadata accessor for PBBlobs);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for PBBlobs(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBPushBlobsRequest(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BE9D14(&qword_27F47A918, type metadata accessor for PBPushBlobsRequest, &unk_251C7B878);
  v17 = v50;
  result = sub_251C70594();
  if (!v17)
  {
    v41 = v11;
    v42 = v16;
    v39 = v13;
    v40 = v9;
    v43 = v6;
    v44 = v4;
    v50 = v19;
    v45 = 0;
    v46 = result;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v20 = sub_251C70764();
    __swift_project_value_buffer(v20, qword_2813E8130);
    v21 = v42;
    sub_251BE9D5C(a1, v42, type metadata accessor for PBPushBlobsRequest);
    v22 = sub_251C70744();
    v23 = sub_251C713C4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v10;
      v25 = v23;
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = v40;
      sub_251BE9B98(v21 + *(v14 + 20), v40, &qword_27F47A938, type metadata accessor for PBBlobs);
      v28 = *(v41 + 48);
      if (v28(v27, 1, v24) == 1)
      {
        v29 = v39;
        *v39 = MEMORY[0x277D84F90];
        sub_251C703A4();
        v30 = v28(v27, 1, v24) == 1;
        v31 = v43;
        if (!v30)
        {
          sub_251BE9C04(v27, &qword_27F47A938, type metadata accessor for PBBlobs);
        }
      }

      else
      {
        v29 = v39;
        sub_251BE9DC4(v27, v39, type metadata accessor for PBBlobs);
        v31 = v43;
      }

      v35 = *v29;

      sub_251BE9C60(v29, type metadata accessor for PBBlobs);
      v36 = *(v35 + 16);

      sub_251BE9C60(v21, type metadata accessor for PBPushBlobsRequest);
      *(v26 + 4) = v36;
      _os_log_impl(&dword_251A6C000, v22, v25, "Creating PushBlobRequest. Count: %ld", v26, 0xCu);
      MEMORY[0x25308E2B0](v26, -1, -1);
      v33 = v44;
      v34 = v47;
      v32 = v48;
    }

    else
    {
      sub_251BE9C60(v21, type metadata accessor for PBPushBlobsRequest);
      v32 = v48;
      v31 = v43;
      v33 = v44;
      v34 = v47;
    }

    v37 = __swift_project_boxed_opaque_existential_1(v32, v32[3]);
    (*(v34 + 16))(v31, v37, v33);
    sub_251C6F954();
    sub_251C6F924();
    type metadata accessor for ClinicalSharingCloudStandardAPI(0);

    sub_251C6F914();
    sub_251C6F994();
    sub_251C6F994();
    return sub_251C6F984();
  }

  return result;
}

uint64_t sub_251BE9570@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_251AF86D4(a1, 3);
  *a3 = result;
  return result;
}

uint64_t sub_251BE95C0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v47 = a2;
  v49 = a3;
  v4 = sub_251C6FE64();
  v48 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BE9CC0(0, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v38 - v8;
  v10 = type metadata accessor for PBDeleteBlobs(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PBDeleteBlobsRequest(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BE9D14(&qword_27F47A7E0, type metadata accessor for PBDeleteBlobsRequest, &unk_251C7AA18);
  v17 = v50;
  result = sub_251C70594();
  if (!v17)
  {
    v41 = v11;
    v42 = v16;
    v39 = v13;
    v40 = v9;
    v43 = v6;
    v44 = v4;
    v50 = v19;
    v45 = 0;
    v46 = result;
    if (qword_2813E26F8 != -1)
    {
      swift_once();
    }

    v20 = sub_251C70764();
    __swift_project_value_buffer(v20, qword_2813E8130);
    v21 = v42;
    sub_251BE9D5C(a1, v42, type metadata accessor for PBDeleteBlobsRequest);
    v22 = sub_251C70744();
    v23 = sub_251C713C4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = v10;
      v25 = v23;
      v26 = swift_slowAlloc();
      *v26 = 134217984;
      v27 = v40;
      sub_251BE9B98(v21 + *(v14 + 20), v40, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
      v28 = *(v41 + 48);
      if (v28(v27, 1, v24) == 1)
      {
        v29 = v39;
        *v39 = MEMORY[0x277D84F90];
        sub_251C703A4();
        v30 = v28(v27, 1, v24) == 1;
        v31 = v43;
        if (!v30)
        {
          sub_251BE9C04(v27, qword_2813E6938, type metadata accessor for PBDeleteBlobs);
        }
      }

      else
      {
        v29 = v39;
        sub_251BE9DC4(v27, v39, type metadata accessor for PBDeleteBlobs);
        v31 = v43;
      }

      v34 = *v29;

      sub_251BE9C60(v29, type metadata accessor for PBDeleteBlobs);
      v35 = *(v34 + 16);

      sub_251BE9C60(v21, type metadata accessor for PBDeleteBlobsRequest);
      *(v26 + 4) = v35;
      _os_log_impl(&dword_251A6C000, v22, v25, "Creating DeleteBlobRequest. Count: %ld", v26, 0xCu);
      MEMORY[0x25308E2B0](v26, -1, -1);
      v33 = v44;
      v32 = v48;
    }

    else
    {
      sub_251BE9C60(v21, type metadata accessor for PBDeleteBlobsRequest);
      v32 = v48;
      v31 = v43;
      v33 = v44;
    }

    v36 = __swift_project_boxed_opaque_existential_1(v47, v47[3]);
    v37 = type metadata accessor for ClinicalSharingCloudStandardAPI(0);
    (*(v32 + 16))(v31, &v36[*(v37 + 20)], v33);
    sub_251C6F954();
    sub_251C6F924();

    sub_251C6F914();
    sub_251C6F994();
    sub_251C6F994();
    return sub_251C6F984();
  }

  return result;
}

uint64_t sub_251BE9B48@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  result = sub_251AF90E0(a1, 3);
  *a3 = result;
  return result;
}

uint64_t sub_251BE9B98(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251BE9CC0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251BE9C04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BE9CC0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BE9C60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_251BE9CC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251BE9D14(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_251BE9D5C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BE9DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BE9E2C()
{
  v1 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0);
  v75 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = v2;
  v4 = v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x277D839B0];
  sub_251BED730(0, &qword_27F47C040, &qword_2813E20D0, MEMORY[0x277D839B0], sub_251B41EF8);
  v59 = v6;
  v60 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = v56 - v7;
  sub_251BEA89C(0);
  v61 = v9;
  v62 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v76 = v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BEAAF8(0);
  v12 = *(v11 - 8);
  v64 = v11;
  v65 = v12;
  MEMORY[0x28223BE20](v11);
  v77 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BEABD8(0);
  v15 = *(v14 - 8);
  v67 = v14;
  v68 = v15;
  MEMORY[0x28223BE20](v14);
  v78 = v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BEACF8(0);
  v18 = *(v17 - 8);
  v69 = v17;
  v70 = v18;
  MEMORY[0x28223BE20](v17);
  v63 = v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BEAD34(0);
  v21 = *(v20 - 8);
  v71 = v20;
  v72 = v21;
  MEMORY[0x28223BE20](v20);
  v66 = v56 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(v0, v79);
  v23 = swift_allocObject();
  sub_251AE7B64(v79, v23 + 16);
  sub_251BEA978(0, &qword_2813E1FF0, v5, MEMORY[0x277CBCEA8]);
  swift_allocObject();
  *&v79[0] = sub_251C70A64();
  sub_251B45330();
  v24 = sub_251C70A94();

  *&v79[0] = v24;
  v25 = MEMORY[0x277CBCD88];
  sub_251BEA978(0, &qword_2813E20D0, v5, MEMORY[0x277CBCD88]);
  sub_251B41EF8();
  sub_251C70AE4();

  v26 = v4;
  sub_251BED004(v0, v4);
  v75 = *(v75 + 80);
  v27 = (v75 + 16) & ~v75;
  v58 = v3;
  v28 = swift_allocObject();
  v74 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask;
  sub_251BED354(v26, v28 + v27, type metadata accessor for ClinicalSharingOnboardingSubmissionTask);
  sub_251BEA978(0, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, v25);
  v73 = v29;
  sub_251BEA9F8();
  v30 = sub_251BEAA7C();
  v31 = v59;
  v32 = v30;
  sub_251C70B04();

  (*(v60 + 8))(v8, v31);
  v33 = v0;
  v57 = v0;
  v56[0] = v26;
  sub_251BED004(v0, v26);
  v34 = swift_allocObject();
  sub_251BED354(v26, v34 + v27, type metadata accessor for ClinicalSharingOnboardingSubmissionTask);
  sub_251C70964();
  sub_251BEDC80(&qword_27F47C070, sub_251BEA89C, MEMORY[0x277CBCC40]);
  v35 = v61;
  v56[1] = v32;
  v36 = v76;
  sub_251C70B94();

  (*(v62 + 8))(v36, v35);
  v37 = v56[0];
  sub_251BED004(v33, v56[0]);
  v38 = swift_allocObject();
  v39 = v37;
  v40 = v74;
  sub_251BED354(v37, v38 + v27, v74);
  sub_251C70964();
  v76 = MEMORY[0x277CBCCE0];
  sub_251BEDC80(&qword_27F47C080, sub_251BEAAF8, MEMORY[0x277CBCCE0]);
  v41 = v64;
  v42 = v77;
  sub_251C70B94();

  (*(v65 + 8))(v42, v41);
  v43 = v57;
  sub_251BED004(v57, v39);
  v44 = swift_allocObject();
  v45 = v39;
  sub_251BED354(v39, v44 + v27, v40);
  sub_251C70964();
  v46 = v76;
  sub_251BEDC80(&qword_27F47C090, sub_251BEABD8, v76);
  v47 = v63;
  v48 = v67;
  v49 = v78;
  sub_251C70B94();

  (*(v68 + 8))(v49, v48);
  sub_251BED004(v43, v45);
  v50 = swift_allocObject();
  sub_251BED354(v45, v50 + v27, v74);
  sub_251AA98B0(0, qword_2813E46A0, &protocol descriptor for ClinicalSharingMetric);
  sub_251BEDC80(&qword_27F47C0A0, sub_251BEACF8, v46);
  v51 = v66;
  v52 = v69;
  sub_251C70AE4();

  (*(v70 + 8))(v47, v52);
  sub_251BEDC80(&qword_27F47C0A8, sub_251BEAD34, MEMORY[0x277CBCC08]);
  v53 = v71;
  v54 = sub_251C70A94();
  (*(v72 + 8))(v51, v53);
  return v54;
}

uint64_t type metadata accessor for ClinicalSharingOnboardingSubmissionTask(uint64_t a1)
{
  result = qword_27F47C128;
  if (!qword_27F47C128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_251BEA89C(uint64_t a1)
{
  if (!qword_27F47C048)
  {
    sub_251BED730(255, &qword_27F47C040, &qword_2813E20D0, MEMORY[0x277D839B0], sub_251B41EF8);
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251BEA9F8();
    sub_251BEAA7C();
    v1 = sub_251C70854();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C048);
    }
  }
}

void sub_251BEA978(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_251AA98B0(255, &qword_2813E1C30, MEMORY[0x277D84948]);
    v9 = a4(a1, a3, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

unint64_t sub_251BEA9F8()
{
  result = qword_27F47C058;
  if (!qword_27F47C058)
  {
    sub_251BED730(255, &qword_27F47C040, &qword_2813E20D0, MEMORY[0x277D839B0], sub_251B41EF8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C058);
  }

  return result;
}

unint64_t sub_251BEAA7C()
{
  result = qword_27F47C060;
  if (!qword_27F47C060)
  {
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C060);
  }

  return result;
}

void sub_251BEAAF8(uint64_t a1)
{
  if (!qword_27F47C068)
  {
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251BEA89C(255);
    sub_251BEAA7C();
    sub_251BEDC80(&qword_27F47C070, sub_251BEA89C, MEMORY[0x277CBCC40]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C068);
    }
  }
}

void sub_251BEAC14(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    a3(255);
    sub_251BEAA7C();
    sub_251BEDC80(a4, a5, MEMORY[0x277CBCCE0]);
    v9 = sub_251C708D4();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_251BEAD34(uint64_t a1)
{
  if (!qword_27F47C098)
  {
    sub_251BEACF8(255);
    sub_251AA98B0(255, qword_2813E46A0, &protocol descriptor for ClinicalSharingMetric);
    sub_251BEDC80(&qword_27F47C0A0, sub_251BEACF8, MEMORY[0x277CBCCE0]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C098);
    }
  }
}

_BYTE *sub_251BEADF0@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 1;
  *(a2 + 32) = 0;
  *(a2 + 40) = 0;
  return result;
}

uint64_t sub_251BEAE0C@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_251BED664(0, &qword_27F47C0D0, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCE78]);
  v7 = v6;
  v41 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  sub_251BEA978(0, &qword_27F47C0D8, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCF38]);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v37 - v11;
  v13 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v17 = sub_251C70764();
  __swift_project_value_buffer(v17, qword_2813E8130);
  sub_251BED004(a2, v15);
  v18 = v16;
  v19 = sub_251C70744();
  v20 = sub_251C713C4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v37 = v7;
    v23 = v22;
    v42 = v22;
    *v21 = 136315394;
    v24 = &v15[*(v13 + 36)];
    v38 = a3;
    v25 = *v24;
    v26 = v24[1];

    sub_251BED51C(v15);
    v27 = sub_251B10780(v25, v26, &v42);

    *(v21 + 4) = v27;
    *(v21 + 12) = 2080;
    v43 = v16;
    v28 = v16;
    sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
    sub_251C719F4();
    v29 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v30 = sub_251C70F74();
    v32 = sub_251B10780(v30, v31, &v42);

    *(v21 + 14) = v32;
    _os_log_impl(&dword_251A6C000, v19, v20, "%s Could not retrieve AnalyticsOptInState %s", v21, 0x16u);
    a3 = v38;
    swift_arrayDestroy();
    v33 = v23;
    v7 = v37;
    MEMORY[0x25308E2B0](v33, -1, -1);
    MEMORY[0x25308E2B0](v21, -1, -1);
  }

  else
  {

    sub_251BED51C(v15);
  }

  LOBYTE(v43) = 2;
  v44 = 0;
  v45 = 0;
  v46 = 1;
  v47 = 0;
  v48 = 0;
  sub_251C70A24();
  sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
  sub_251C709F4();
  (*(v41 + 8))(v9, v7);
  sub_251BED6B4();
  v34 = v40;
  v35 = sub_251C70A94();
  result = (*(v39 + 8))(v12, v34);
  *a3 = v35;
  return result;
}

uint64_t sub_251BEB294@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a3;
  sub_251BEDB04(0);
  v57 = v5;
  v55 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v52 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BEDBA0(0);
  v58 = v7;
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0);
  v50 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v15 = *a1;
  v14 = a1[1];
  v16 = *(a1 + 2);
  v63 = *(a1 + 1);
  v64 = v16;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v17 = sub_251C70764();
  __swift_project_value_buffer(v17, qword_2813E8130);
  sub_251BED004(a2, v13);
  v18 = sub_251C70744();
  v19 = sub_251C713C4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v62[0] = v21;
    *v20 = 136315138;
    v22 = &v13[*(v9 + 36)];
    v23 = *v22;
    v24 = v22[1];

    sub_251BED51C(v13);
    v25 = sub_251B10780(v23, v24, v62);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_251A6C000, v18, v19, "%s Retrieving HKClinicalAccount list", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x25308E2B0](v21, -1, -1);
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  else
  {

    sub_251BED51C(v13);
  }

  v26 = __swift_project_boxed_opaque_existential_1(a2, a2[3])[2];
  v62[3] = &type metadata for ClinicalSharingAccountStore;
  v62[4] = &off_2863F67B8;
  v62[0] = v26;
  __swift_project_boxed_opaque_existential_1(v62, &type metadata for ClinicalSharingAccountStore);
  v27 = off_2863F67E8[0];
  v28 = v26;
  v61 = v27();
  v29 = v14;
  v65 = v14;
  v66[0] = v64;
  v30 = swift_allocObject();
  *(v30 + 16) = v15;
  *(v30 + 24) = v14;
  v31 = v64;
  *(v30 + 32) = v63;
  *(v30 + 48) = v31;
  v49 = sub_251AC5BAC;
  v48 = MEMORY[0x277D83D88];
  sub_251BED580(&v65, v60, &qword_2813E1E20, sub_251AC5BAC, MEMORY[0x277D83D88], sub_251BED5F4);
  v32 = MEMORY[0x277D83D88];
  sub_251BED580(v66, v60, &qword_2813E1FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_251BED664);
  sub_251AA8E00(0);
  v47 = v15;
  v33 = a2;
  sub_251BEDC80(&qword_2813E2118, sub_251AA8E00, MEMORY[0x277CBCD90]);
  v34 = v52;
  sub_251C70AE4();

  __swift_destroy_boxed_opaque_existential_1(v62);
  v35 = v53;
  sub_251BED004(v33, v53);
  v36 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v37 = (v51 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_251BED354(v35, v38 + v36, type metadata accessor for ClinicalSharingOnboardingSubmissionTask);
  v39 = v38 + v37;
  *v39 = v47;
  *(v39 + 8) = v29;
  v40 = v64;
  *(v39 + 16) = v63;
  *(v39 + 32) = v40;
  sub_251BED580(&v65, v62, &qword_2813E1E20, v49, v48, sub_251BED5F4);
  sub_251BED580(v66, v62, &qword_2813E1FA0, MEMORY[0x277D837D0], v32, sub_251BED664);
  sub_251BEA978(0, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
  sub_251BEDC80(&qword_27F47C118, sub_251BEDB04, MEMORY[0x277CBCC08]);
  sub_251BEAA7C();
  v41 = v54;
  v42 = v57;
  sub_251C70B04();

  (*(v55 + 8))(v34, v42);
  sub_251BEDC80(&qword_27F47C120, sub_251BEDBA0, MEMORY[0x277CBCC40]);
  v43 = v58;
  v44 = sub_251C70A94();
  result = (*(v56 + 8))(v41, v43);
  *v59 = v44;
  return result;
}

uint64_t sub_251BEB9E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v7 = *(a2 + 32);
  v6 = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 8) = v3;
  *(a3 + 16) = v4;
  *(a3 + 24) = v5;
  *(a3 + 32) = v7;
  *(a3 + 40) = v6;
}

uint64_t sub_251BEBA38@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v59 = a3;
  sub_251BED730(0, &qword_27F47C0E8, &qword_2813E20B8, MEMORY[0x277D83B88], sub_251B45A10);
  v57 = v5;
  v55 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v52 = &v46 - v6;
  sub_251BED7C0(0);
  v58 = v7;
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v54 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0);
  v50 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v53 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v46 - v12;
  v14 = a1[1];
  v60 = *a1;
  v15 = *(a1 + 2);
  v63 = *(a1 + 1);
  v64 = v15;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v16 = sub_251C70764();
  __swift_project_value_buffer(v16, qword_2813E8130);
  sub_251BED004(a2, v13);
  v17 = sub_251C70744();
  v18 = sub_251C713C4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v66[0] = v20;
    *v19 = 136315138;
    v21 = &v13[*(v9 + 36)];
    v22 = *v21;
    v23 = v21[1];

    sub_251BED51C(v13);
    v24 = sub_251B10780(v22, v23, v66);

    *(v19 + 4) = v24;
    _os_log_impl(&dword_251A6C000, v17, v18, "%s Retrieving Age", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x25308E2B0](v20, -1, -1);
    MEMORY[0x25308E2B0](v19, -1, -1);
  }

  else
  {

    sub_251BED51C(v13);
  }

  v25 = __swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v26 = *(v9 + 28);
  v27 = *v25;
  v28 = sub_251B3F5AC(a2 + v26);

  v62 = v28;
  v29 = v14;
  v65 = v14;
  *v66 = v64;
  v30 = swift_allocObject();
  *(v30 + 16) = v60;
  *(v30 + 24) = v14;
  v31 = v64;
  *(v30 + 32) = v63;
  *(v30 + 48) = v31;
  v49 = sub_251AC5BAC;
  v48 = MEMORY[0x277D83D88];
  v47 = sub_251BED5F4;
  sub_251BED580(&v65, v61, &qword_2813E1E20, sub_251AC5BAC, MEMORY[0x277D83D88], sub_251BED5F4);
  v32 = MEMORY[0x277D83D88];
  sub_251BED580(v66, v61, &qword_2813E1FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_251BED664);
  v33 = MEMORY[0x277CBCD88];
  sub_251BEA978(0, &qword_2813E20B8, MEMORY[0x277D83B88], MEMORY[0x277CBCD88]);
  sub_251B45A10();
  v34 = v52;
  sub_251C70AE4();

  v35 = v53;
  sub_251BED004(a2, v53);
  v36 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v37 = (v51 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  sub_251BED354(v35, v38 + v36, type metadata accessor for ClinicalSharingOnboardingSubmissionTask);
  v39 = v38 + v37;
  *v39 = v60;
  *(v39 + 8) = v29;
  v40 = v64;
  *(v39 + 16) = v63;
  *(v39 + 32) = v40;
  sub_251BED580(&v65, v61, &qword_2813E1E20, v49, v48, v47);
  sub_251BED580(v66, v61, &qword_2813E1FA0, MEMORY[0x277D837D0], v32, sub_251BED664);
  sub_251BEA978(0, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, v33);
  sub_251BED89C();
  sub_251BEAA7C();
  v41 = v54;
  v42 = v57;
  sub_251C70B04();

  (*(v55 + 8))(v34, v42);
  sub_251BEDC80(&qword_27F47C100, sub_251BED7C0, MEMORY[0x277CBCC40]);
  v43 = v58;
  v44 = sub_251C70A94();
  result = (*(v56 + 8))(v41, v43);
  *v59 = v44;
  return result;
}

uint64_t sub_251BEC110@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = *(a2 + 8);
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  *a3 = *a2;
  *(a3 + 8) = v4;
  *(a3 + 16) = v3;
  *(a3 + 24) = 0;
  *(a3 + 32) = v6;
  *(a3 + 40) = v5;
}

uint64_t sub_251BEC164@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v62 = a3;
  sub_251BED730(0, &qword_27F47C0B0, &qword_2813E2160, MEMORY[0x277D837D0], sub_251B4576C);
  v60 = v5;
  v58 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v55 = &v48 - v6;
  sub_251BED3BC(0);
  v61 = v7;
  v59 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v57 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0);
  v53 = *(v9 - 8);
  v10 = MEMORY[0x28223BE20](v9);
  v56 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = *a1;
  v15 = a1[1];
  v16 = *(a1 + 2);
  v65 = *(a1 + 1);
  v66 = v16;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v17 = sub_251C70764();
  __swift_project_value_buffer(v17, qword_2813E8130);
  sub_251BED004(a2, v13);
  v18 = sub_251C70744();
  v19 = sub_251C713C4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v68[0] = v21;
    *v20 = 136315138;
    v22 = &v13[*(v9 + 36)];
    v23 = *v22;
    v24 = v22[1];

    sub_251BED51C(v13);
    v25 = sub_251B10780(v23, v24, v68);

    *(v20 + 4) = v25;
    _os_log_impl(&dword_251A6C000, v18, v19, "%s Retrieving Sex", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x25308E2B0](v21, -1, -1);
    MEMORY[0x25308E2B0](v20, -1, -1);
  }

  else
  {

    sub_251BED51C(v13);
  }

  v26 = *__swift_project_boxed_opaque_existential_1(a2, a2[3]);
  v27 = sub_251B3F978();
  v52 = a2;
  v28 = v27;

  v64 = v28;
  v29 = v15;
  v67 = v15;
  *v68 = v66;
  v30 = swift_allocObject();
  *(v30 + 16) = v14;
  *(v30 + 24) = v15;
  v31 = v66;
  *(v30 + 32) = v65;
  *(v30 + 48) = v31;
  v51 = sub_251AC5BAC;
  v50 = MEMORY[0x277D83D88];
  v49 = sub_251BED5F4;
  sub_251BED580(&v67, v63, &qword_2813E1E20, sub_251AC5BAC, MEMORY[0x277D83D88], sub_251BED5F4);
  v32 = MEMORY[0x277D837D0];
  v33 = MEMORY[0x277D83D88];
  sub_251BED580(v68, v63, &qword_2813E1FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_251BED664);
  v34 = MEMORY[0x277CBCD88];
  sub_251BEA978(0, &qword_2813E2160, v32, MEMORY[0x277CBCD88]);
  v35 = v14;
  sub_251B4576C();
  v36 = v55;
  sub_251C70AE4();

  v37 = v56;
  sub_251BED004(v52, v56);
  v38 = (*(v53 + 80) + 16) & ~*(v53 + 80);
  v39 = (v54 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  sub_251BED354(v37, v40 + v38, type metadata accessor for ClinicalSharingOnboardingSubmissionTask);
  v41 = v40 + v39;
  *v41 = v35;
  *(v41 + 8) = v29;
  v42 = v66;
  *(v41 + 16) = v65;
  *(v41 + 32) = v42;
  sub_251BED580(&v67, v63, &qword_2813E1E20, v51, v50, v49);
  sub_251BED580(v68, v63, &qword_2813E1FA0, MEMORY[0x277D837D0], v33, sub_251BED664);
  sub_251BEA978(0, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, v34);
  sub_251BED498();
  sub_251BEAA7C();
  v43 = v57;
  v44 = v60;
  sub_251C70B04();

  (*(v58 + 8))(v36, v44);
  sub_251BEDC80(&qword_27F47C0C8, sub_251BED3BC, MEMORY[0x277CBCC40]);
  v45 = v61;
  v46 = sub_251C70A94();
  result = (*(v59 + 8))(v43, v45);
  *v62 = v46;
  return result;
}

uint64_t sub_251BEC82C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a2 + 24);
  *a3 = *a2;
  *(a3 + 8) = *(a2 + 8);
  *(a3 + 24) = v5;
  *(a3 + 32) = v3;
  *(a3 + 40) = v4;
}

uint64_t sub_251BEC884@<X0>(void **a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, const char *a4@<X3>, uint64_t *a5@<X8>)
{
  v45 = a4;
  sub_251BED664(0, &qword_27F47C0D0, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCE78]);
  v10 = v9;
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v47 = &v42 - v11;
  sub_251BEA978(0, &qword_27F47C0D8, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCF38]);
  v48 = v12;
  v46 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v42 - v13;
  v15 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0);
  MEMORY[0x28223BE20](v15);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  if (qword_2813E26F8 != -1)
  {
    swift_once();
  }

  v19 = sub_251C70764();
  __swift_project_value_buffer(v19, qword_2813E8130);
  sub_251BED004(a2, v17);
  v20 = v18;
  v21 = sub_251C70744();
  v22 = sub_251C713C4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v43 = v10;
    v24 = v23;
    v25 = swift_slowAlloc();
    *&v54 = v25;
    *v24 = 136315394;
    v26 = &v17[*(v15 + 36)];
    v44 = a5;
    v27 = *v26;
    v28 = v26[1];

    sub_251BED51C(v17);
    v29 = sub_251B10780(v27, v28, &v54);

    *(v24 + 4) = v29;
    *(v24 + 12) = 2080;
    *&v51 = v18;
    v30 = v18;
    sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
    sub_251C719F4();
    v31 = HKSensitiveLogItem();
    swift_unknownObjectRelease();
    sub_251C715C4();
    swift_unknownObjectRelease();
    v32 = sub_251C70F74();
    v34 = sub_251B10780(v32, v33, &v54);

    *(v24 + 14) = v34;
    _os_log_impl(&dword_251A6C000, v21, v22, v45, v24, 0x16u);
    a5 = v44;
    swift_arrayDestroy();
    MEMORY[0x25308E2B0](v25, -1, -1);
    v35 = v24;
    v10 = v43;
    MEMORY[0x25308E2B0](v35, -1, -1);
  }

  else
  {

    sub_251BED51C(v17);
  }

  v55 = *(a3 + 1);
  v36 = a3[1];
  v37 = a3[2];
  v51 = *a3;
  v52 = v36;
  v53 = a3[2];
  v54 = v37;
  sub_251BED580(&v55, v50, &qword_2813E1E20, sub_251AC5BAC, MEMORY[0x277D83D88], sub_251BED5F4);
  sub_251BED580(&v54, v50, &qword_2813E1FA0, MEMORY[0x277D837D0], MEMORY[0x277D83D88], sub_251BED664);
  v38 = v47;
  sub_251C70A24();
  sub_251AA98B0(0, &qword_2813E1C30, MEMORY[0x277D84948]);
  sub_251C709F4();
  (*(v49 + 8))(v38, v10);
  sub_251BED6B4();
  v39 = v48;
  v40 = sub_251C70A94();
  result = (*(v46 + 8))(v14, v39);
  *a5 = v40;
  return result;
}

uint64_t sub_251BECDAC@<X0>(unsigned __int8 *a1@<X0>, char *a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for ClinicalSharingOnboardingMetric(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_251C70014();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *a1;
  v13 = *(a1 + 1);
  v32 = *(a1 + 2);
  v33 = v13;
  v31 = a1[24];
  v14 = *(a1 + 4);
  v15 = *(a1 + 5);
  v16 = *(a2 + 6);
  v29 = *(a2 + 5);
  v30 = v14;
  v17 = *(a2 + 7);
  v18 = *(a2 + 8);
  v27 = v15;
  v28 = v17;
  v19 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0);
  (*(v10 + 16))(v12, &a2[*(v19 + 28)], v9);
  LOBYTE(a2) = a2[*(v19 + 32)];
  a3[3] = v6;
  a3[4] = &off_2863FED40;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  v20 = &v8[v6[12]];
  *v20 = 0xD000000000000031;
  *(v20 + 1) = 0x8000000251C90830;
  v21 = v33;
  *v8 = v32;
  v8[8] = v31;
  v22 = v29;
  v23 = v27;
  *(v8 + 2) = v30;
  *(v8 + 3) = v23;
  *(v8 + 4) = v22;
  *(v8 + 5) = v16;
  *(v8 + 6) = v28;
  *(v8 + 7) = v18;
  *(v8 + 8) = v21;
  v8[v6[10]] = a2;
  v8[v6[11]] = v34 & 1;
  (*(v10 + 32))(&v8[v6[9]], v12, v9);
  sub_251BED354(v8, boxed_opaque_existential_1, type metadata accessor for ClinicalSharingOnboardingMetric);
}

uint64_t sub_251BED004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_251BED068@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_251BEAE0C(a1, v6, a2);
}

uint64_t objectdestroy_2Tm_0()
{
  v1 = (type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));

  v5 = v1[9];
  v6 = sub_251C70014();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_251BED240(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_251BED2D4@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0) - 8);
  v6 = (v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80)));

  return sub_251BECDAC(a1, v6, a2);
}

uint64_t sub_251BED354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251BED3BC(uint64_t a1)
{
  if (!qword_27F47C0B8)
  {
    sub_251BED730(255, &qword_27F47C0B0, &qword_2813E2160, MEMORY[0x277D837D0], sub_251B4576C);
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251BED498();
    sub_251BEAA7C();
    v1 = sub_251C70854();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C0B8);
    }
  }
}

unint64_t sub_251BED498()
{
  result = qword_27F47C0C0;
  if (!qword_27F47C0C0)
  {
    sub_251BED730(255, &qword_27F47C0B0, &qword_2813E2160, MEMORY[0x277D837D0], sub_251B4576C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C0C0);
  }

  return result;
}

uint64_t sub_251BED51C(uint64_t a1)
{
  v2 = type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_251BED580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(0, a3, a4, a5);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_251BED5F4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251BED664(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_251BED6B4()
{
  result = qword_27F47C0E0;
  if (!qword_27F47C0E0)
  {
    sub_251BEA978(255, &qword_27F47C0D8, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C0E0);
  }

  return result;
}

void sub_251BED730(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    sub_251BEA978(255, a3, a4, MEMORY[0x277CBCD88]);
    a5();
    v7 = sub_251C70804();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_251BED7C0(uint64_t a1)
{
  if (!qword_27F47C0F0)
  {
    sub_251BED730(255, &qword_27F47C0E8, &qword_2813E20B8, MEMORY[0x277D83B88], sub_251B45A10);
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251BED89C();
    sub_251BEAA7C();
    v1 = sub_251C70854();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C0F0);
    }
  }
}

unint64_t sub_251BED89C()
{
  result = qword_27F47C0F8;
  if (!qword_27F47C0F8)
  {
    sub_251BED730(255, &qword_27F47C0E8, &qword_2813E20B8, MEMORY[0x277D83B88], sub_251B45A10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C0F8);
  }

  return result;
}

uint64_t objectdestroy_20Tm_0()
{
  v1 = (type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));

  v6 = v1[9];
  v7 = sub_251C70014();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 48, v2 | 7);
}

uint64_t sub_251BEDA5C@<X0>(const char *a1@<X1>, void **a2@<X0>, uint64_t *a3@<X8>, ...)
{
  v7 = *(type metadata accessor for ClinicalSharingOnboardingSubmissionTask(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  return sub_251BEC884(a2, v3 + v8, (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8)), a1, a3);
}

void sub_251BEDB04(uint64_t a1)
{
  if (!qword_27F47C108)
  {
    sub_251AA8E00(255);
    sub_251BEDC80(&qword_2813E2118, sub_251AA8E00, MEMORY[0x277CBCD90]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C108);
    }
  }
}

void sub_251BEDBA0(uint64_t a1)
{
  if (!qword_27F47C110)
  {
    sub_251BEDB04(255);
    sub_251BEA978(255, &qword_27F47C050, &type metadata for OnboardingMetricDetailList, MEMORY[0x277CBCD88]);
    sub_251BEDC80(&qword_27F47C118, sub_251BEDB04, MEMORY[0x277CBCC08]);
    sub_251BEAA7C();
    v1 = sub_251C70854();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C110);
    }
  }
}

uint64_t sub_251BEDC80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_17Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_251BEDD1C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 48))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_251BEDD78(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_251BEDE10(uint64_t a1)
{
  result = sub_251AA98B0(319, qword_2813E7418, &protocol descriptor for ClinicalSharingDaemonEnvironment);
  if (v2 <= 0x3F)
  {
    result = sub_251C70014();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_251BEDEC4@<X0>(uint64_t a2@<X8>)
{
  sub_251ABCCD4(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    if (qword_27F478930 != -1)
    {
      swift_once();
    }

    v7 = qword_27F4A2878;
    v8 = sub_251C70EE4();
    v9 = [v7 dateFromString_];

    if (v9)
    {
      sub_251C6FFE4();

      v10 = sub_251C70014();
      (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
    }

    else
    {
      v14 = sub_251C70014();
      (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    }

    return sub_251AC55A0(v5, a2);
  }

  else
  {
    v11 = sub_251C70014();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

id sub_251BEE0B4()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  qword_27F4A2878 = result;
  return result;
}

uint64_t sub_251BEE0F8(uint64_t a1, void *a2)
{
  sub_251BEF55C(0);
  v20 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251A823B4(a1 + 16, v22);
  v8 = *__swift_project_boxed_opaque_existential_1(v22, v22[3]);
  v9 = objc_allocWithZone(MEMORY[0x277D62528]);
  v10 = v8;
  v11 = sub_251C70EE4();
  v12 = [v9 initWithIdentifier:v11 healthStore:v10];

  v13 = sub_251AD8F3C();
  v21 = v13;
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  sub_251BEF608(0);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251BEF680(&qword_27F47C148, sub_251BEF608, MEMORY[0x277CBCD90]);

  v15 = a2;
  sub_251C70AA4();

  __swift_destroy_boxed_opaque_existential_1(v22);
  sub_251BEF680(&qword_27F47C150, sub_251BEF55C, MEMORY[0x277CBCB10]);
  v16 = v20;
  v17 = sub_251C70A94();
  (*(v5 + 8))(v7, v16);
  return v17;
}

uint64_t sub_251BEE36C@<X0>(id *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v29[0] = a4;
  v7 = sub_251C702E4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BEF6C8(0, &qword_27F4793C8, type metadata accessor for PBTypedData);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = v29 - v12;
  v14 = type metadata accessor for PBTypedData(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    goto LABEL_4;
  }

  v18 = *a1;
  sub_251BEE750(v18, a2, a3, v13);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {

    sub_251BEF71C(v13, &qword_27F4793C8, type metadata accessor for PBTypedData);
LABEL_4:
    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    return (*(*(Output - 8) + 56))(v29[0], 1, 1, Output);
  }

  sub_251BEF778(v13, v17, type metadata accessor for PBTypedData);
  v21 = *(a2 + 56);
  v22 = sub_251BF24A4(a3, v10);
  MEMORY[0x28223BE20](v22);
  v29[-2] = v10;
  v23 = sub_251BF1DA0(MEMORY[0x277D84F90], sub_251AD6374, &v29[-4], v21);
  (*(v8 + 8))(v10, v7);
  if (*(v23 + 16))
  {
    v24 = v29[0];
    sub_251BEF7E0(v17, v29[0], type metadata accessor for PBTypedData);
    v25 = sub_251BFAE40(v23);

    v26 = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(v24 + *(v26 + 20)) = v25;
    v27 = (v24 + *(v26 + 24));
    *v27 = 0;
    v27[1] = 0;
    (*(*(v26 - 8) + 56))(v24, 0, 1, v26);
  }

  else
  {

    v28 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v28 - 8) + 56))(v29[0], 1, 1, v28);
  }

  return sub_251BEF848(v17, type metadata accessor for PBTypedData);
}

uint64_t sub_251BEE750@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a3;
  v58 = a2;
  v59 = a1;
  v5 = sub_251C70014();
  v54 = *(v5 - 8);
  v6 = MEMORY[0x28223BE20](v5);
  v53 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v52 = &v43 - v8;
  sub_251BEF6C8(0, &qword_27F478D90, MEMORY[0x277CC88A8]);
  MEMORY[0x28223BE20](v9 - 8);
  v56 = &v43 - v10;
  v11 = type metadata accessor for PBDateRange(0);
  v60 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v55 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PBTypedData(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BEF6C8(0, &qword_27F479090, type metadata accessor for PBSleepSummary);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v43 - v18;
  v20 = type metadata accessor for PBSleepSummary(0);
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v51 = &v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v43 - v24;
  sub_251BEEDE0(v59, v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_251BEF71C(v19, &qword_27F479090, type metadata accessor for PBSleepSummary);
    v26 = 1;
  }

  else
  {
    v47 = v25;
    v48 = type metadata accessor for PBSleepSummary;
    sub_251BEF778(v19, v25, type metadata accessor for PBSleepSummary);
    *v16 = 0;
    v16[8] = 1;
    v27 = *(v13 + 20);
    v46 = v27;
    v49 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    v28 = *(v49 - 8);
    v50 = *(v28 + 56);
    v59 = (v28 + 56);
    v50(&v16[v27], 1, 1, v49);
    sub_251C703A4();
    v29 = *(v13 + 28);
    v30 = *(v60 + 56);
    v60 += 56;
    v43 = v29;
    v44 = v30;
    v30(&v16[v29], 1, 1, v11);
    v45 = a4;
    v31 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date;
    v32 = *(v54 + 16);
    v54 = v11;
    v33 = v58;
    v32(v52, v58 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_date, v5);
    v32(v53, v33 + v31, v5);
    v34 = v56;
    sub_251C6FA94();
    v35 = sub_251C6FAE4();
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v36 = v55;
    sub_251BFC468();
    sub_251BEF71C(v34, &qword_27F478D90, MEMORY[0x277CC88A8]);
    v37 = v43;
    sub_251BEF71C(&v16[v43], qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251BEF778(v36, &v16[v37], type metadata accessor for PBDateRange);
    v44(&v16[v37], 0, 1, v54);
    *v16 = 113;
    v16[8] = 1;
    v38 = v48;
    v39 = v51;
    sub_251BEF778(v47, v51, v48);
    v40 = v46;
    sub_251BEF71C(&v16[v46], qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251BEF778(v39, &v16[v40], v38);
    v41 = v49;
    swift_storeEnumTagMultiPayload();
    v50(&v16[v40], 0, 1, v41);
    a4 = v45;
    sub_251BEF778(v16, v45, type metadata accessor for PBTypedData);
    v26 = 0;
  }

  return (*(v14 + 56))(a4, v26, 1, v13);
}

uint64_t sub_251BEEDE0@<X0>(void *a1@<X0>, unint64_t a2@<X8>)
{
  v70 = sub_251C6FC94();
  v4 = *(v70 - 8);
  v5 = MEMORY[0x28223BE20](v70);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v58 - v8;
  v10 = type metadata accessor for PBSleepSummary.Schedule(0);
  v64 = *(v10 - 8);
  v65 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v71 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v69 = &v58 - v13;
  v14 = type metadata accessor for PBSleepSummary(0);
  v61 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([a1 isEnabled])
  {
    v62 = v7;
    sub_251C703A4();
    [a1 sleepDurationGoal];
    *&v17 = v17 / 60.0;
    *(v16 + 8) = LODWORD(v17);
    v18 = [a1 occurrences];
    sub_251A8223C(0, &qword_27F47C158, 0x277D62508);
    v19 = sub_251C71154();

    v63 = v19;
    if (v19 >> 62)
    {
      goto LABEL_77;
    }

    v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:
    v58 = v16;
    v59 = v14;
    v60 = a2;
    if (v20)
    {
      v14 = v20;
      v16 = 0;
      a2 = v63;
      v21 = v63 & 0xC000000000000001;
      v22 = v63 & 0xFFFFFFFFFFFFFF8;
      v68 = (v4 + 1);
      v4 = MEMORY[0x277D84F90];
      v23 = &selRef_dateComponentsValue;
      while (1)
      {
        if (v21)
        {
          v24 = MEMORY[0x25308D460](v16, a2);
        }

        else
        {
          if (v16 >= *(v22 + 16))
          {
            goto LABEL_66;
          }

          v24 = *(a2 + 8 * v16 + 32);
        }

        v25 = v24;
        v26 = (v16 + 1);
        if (__OFADD__(v16, 1))
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
LABEL_76:
          __break(1u);
LABEL_77:
          v20 = sub_251C717F4();
          goto LABEL_4;
        }

        if (([v24 v23[218]] & 1) == 0)
        {
          break;
        }

LABEL_7:
        ++v16;
        if (v26 == v14)
        {
          goto LABEL_64;
        }
      }

      v27 = v71;
      *(v71 + 3) = 0;
      *v27 = 0;
      sub_251C703A4();
      v28 = [v25 bedtimeComponents];
      sub_251C6FBD4();

      v29 = sub_251C6FC04();
      if (v30)
      {
        v31 = 0;
      }

      else
      {
        v31 = v29;
      }

      a2 = 60 * v31;
      if ((v31 * 60) >> 64 != (60 * v31) >> 63)
      {
        goto LABEL_67;
      }

      v32 = sub_251C6FC44();
      if (v33)
      {
        v34 = 0;
      }

      else
      {
        v34 = v32;
      }

      v35 = __OFADD__(a2, v34);
      a2 += v34;
      if (v35)
      {
        goto LABEL_68;
      }

      v36 = sub_251C6FC64() / 60;
      if (v37)
      {
        v36 = 0;
      }

      v35 = __OFADD__(a2, v36);
      a2 += v36;
      if (v35)
      {
        goto LABEL_69;
      }

      v67 = (v16 + 1);
      v38 = v14;
      v14 = *v68;
      (*v68)(v9, v70);
      if ((a2 & 0x8000000000000000) != 0)
      {
        goto LABEL_70;
      }

      if (HIDWORD(a2))
      {
        goto LABEL_71;
      }

      v39 = v22;
      v66 = v4;
      v40 = v21;
      v41 = v9;
      *(v71 + 8) = a2;
      v42 = [v25 wakeUpComponents];
      v4 = v62;
      sub_251C6FBD4();

      v9 = v4;
      v43 = sub_251C6FC04();
      if (v44)
      {
        v45 = 0;
      }

      else
      {
        v45 = v43;
      }

      a2 = 60 * v45;
      if ((v45 * 60) >> 64 != (60 * v45) >> 63)
      {
        goto LABEL_72;
      }

      v9 = v4;
      v46 = sub_251C6FC44();
      if (v47)
      {
        v48 = 0;
      }

      else
      {
        v48 = v46;
      }

      v35 = __OFADD__(a2, v48);
      a2 += v48;
      if (v35)
      {
        goto LABEL_73;
      }

      v49 = sub_251C6FC64() / 60;
      if (v50)
      {
        v49 = 0;
      }

      v9 = a2 + v49;
      if (__OFADD__(a2, v49))
      {
        goto LABEL_74;
      }

      (v14)(v4, v70);
      if ((v9 & 0x8000000000000000) != 0)
      {
        goto LABEL_75;
      }

      if (HIDWORD(v9))
      {
        goto LABEL_76;
      }

      *(v71 + 12) = v9;
      v51 = [v25 weekdays];

      if (v51)
      {
        *(v71 + 1) = 1;
      }

      a2 = v63;
      v14 = v38;
      v9 = v41;
      if ((v51 & 2) != 0)
      {
        *(v71 + 2) = 1;
        v21 = v40;
        if ((v51 & 4) == 0)
        {
LABEL_43:
          v22 = v39;
          if ((v51 & 8) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v21 = v40;
        if ((v51 & 4) == 0)
        {
          goto LABEL_43;
        }
      }

      *(v71 + 3) = 1;
      v22 = v39;
      if ((v51 & 8) == 0)
      {
LABEL_44:
        v23 = &selRef_dateComponentsValue;
        if ((v51 & 0x10) == 0)
        {
          goto LABEL_45;
        }

        goto LABEL_56;
      }

LABEL_55:
      *(v71 + 4) = 1;
      v23 = &selRef_dateComponentsValue;
      if ((v51 & 0x10) == 0)
      {
LABEL_45:
        if ((v51 & 0x20) == 0)
        {
          goto LABEL_46;
        }

        goto LABEL_57;
      }

LABEL_56:
      *(v71 + 5) = 1;
      if ((v51 & 0x20) == 0)
      {
LABEL_46:
        if ((v51 & 0x40) == 0)
        {
LABEL_48:
          sub_251BEF778(v71, v69, type metadata accessor for PBSleepSummary.Schedule);
          v4 = v66;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v4 = sub_251C3982C(0, v4[2] + 1, 1, v4);
          }

          v53 = v4[2];
          v52 = v4[3];
          if (v53 >= v52 >> 1)
          {
            v4 = sub_251C3982C((v52 > 1), v53 + 1, 1, v4);
          }

          v4[2] = v53 + 1;
          sub_251BEF778(v69, v4 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v53, type metadata accessor for PBSleepSummary.Schedule);
          v26 = v67;
          goto LABEL_7;
        }

LABEL_47:
        *v71 = 1;
        goto LABEL_48;
      }

LABEL_57:
      *(v71 + 6) = 1;
      if ((v51 & 0x40) == 0)
      {
        goto LABEL_48;
      }

      goto LABEL_47;
    }

    v4 = MEMORY[0x277D84F90];
LABEL_64:

    v56 = v58;
    *v58 = v4;
    v57 = v60;
    sub_251BEF7E0(v56, v60, type metadata accessor for PBSleepSummary);
    (*(v61 + 56))(v57, 0, 1, v59);
    return sub_251BEF848(v56, type metadata accessor for PBSleepSummary);
  }

  else
  {
    v54 = *(v61 + 56);

    return v54(a2, 1, 1, v14);
  }
}

void sub_251BEF55C(uint64_t a1)
{
  if (!qword_27F47C138)
  {
    sub_251BEF608(255);
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251BEF680(&qword_27F47C148, sub_251BEF608, MEMORY[0x277CBCD90]);
    v1 = sub_251C70784();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C138);
    }
  }
}

void sub_251BEF608(uint64_t a1)
{
  if (!qword_27F47C140)
  {
    sub_251AD9254(255);
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C140);
    }
  }
}

uint64_t sub_251BEF680(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_251BEF6C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251BEF71C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BEF6C8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BEF778(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BEF7E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BEF848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251BEF8A8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_251BEF8F0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

BOOL sub_251BEF948(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5 = a2[2];
  v6 = a2[3];
  v7 = a2[4];
  v8 = *a1 == *a2 && a1[1] == a2[1];
  if (v8 || (sub_251C719D4()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_251C719D4()))
  {
    return v4 == v7;
  }

  else
  {
    return 0;
  }
}

id sub_251BEF9E4(void *a1)
{
  v2 = type metadata accessor for VerifiableHealthRecordsParsingServiceServer();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtC19HealthRecordsDaemon43VerifiableHealthRecordsParsingServiceServer_client] = a1;
  v6.receiver = v3;
  v6.super_class = v2;
  v4 = a1;
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t sub_251BEFA7C()
{
  sub_251B3F554(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_251C74800;
  if (qword_2813E74B8 != -1)
  {
    swift_once();
  }

  v1 = qword_2813E81A0;
  v2 = *algn_2813E81A8;
  v3 = type metadata accessor for DefaultDaemonXPCService();
  v4 = objc_allocWithZone(v3);
  v5 = &v4[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_identifier];
  *v5 = v1;
  v5[1] = v2;
  v6 = &v4[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_requiredEntitlementOverride];
  *v6 = 0xD000000000000041;
  *(v6 + 1) = 0x8000000251C908B0;
  v7 = objc_allocWithZone(MEMORY[0x277D10BF0]);
  swift_bridgeObjectRetain_n();
  v8 = sub_251C70EE4();

  v9 = [v7 initWithLabel_];

  *&v4[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_listener] = v9;
  v10 = &v4[OBJC_IVAR____TtC19HealthRecordsDaemon23DefaultDaemonXPCService_serverGenerator];
  *v10 = sub_251BEF9E4;
  v10[1] = 0;
  v13.receiver = v4;
  v13.super_class = v3;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  *(v0 + 56) = v3;
  *(v0 + 64) = &off_2863F5E58;
  *(v0 + 32) = v11;
  return v0;
}

unint64_t sub_251BEFC0C(uint64_t a1, uint64_t a2, void *a3, void *a4, __int16 a5)
{
  sub_251C716A4();

  MEMORY[0x25308CDA0](a1, a2);
  if (a3)
  {
    v9 = a3;
    [v9 code];
    v10 = sub_251C719A4();
    MEMORY[0x25308CDA0](v10);

    MEMORY[0x25308CDA0](45, 0xE100000000000000);
  }

  if ((a5 & 0x100) == 0)
  {
    v11 = sub_251C70F74();
    MEMORY[0x25308CDA0](v11);

    MEMORY[0x25308CDA0](45, 0xE100000000000000);
  }

  return 0xD000000000000011;
}

uint64_t sub_251BEFEA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t *, char *)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v12 = sub_251C702E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*v6 + 56);

  sub_251BF20BC(a3, v15);
  v28 = v15;
  v17 = sub_251BF1DA0(MEMORY[0x277D84F90], a4, v27, v16);

  (*(v13 + 8))(v15, v12);
  if (*(v17 + 16))
  {
    sub_251BFB8EC(a1, a6, type metadata accessor for PBTypedData);
    v18 = sub_251BFAE40(v17);

    if (a2)
    {
      v19 = *(v6 + *(v26(0) + 24));
      v20 = v19;
    }

    else
    {
      v19 = 0;
    }

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a6 + *(Output + 20)) = v18;
    v24 = (a6 + *(Output + 24));
    *v24 = v19;
    v24[1] = a2;
    (*(*(Output - 8) + 56))(a6, 0, 1, Output);
  }

  else
  {
    v21 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v21 - 8) + 56))(a6, 1, 1, v21);
  }
}

uint64_t sub_251BF00E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(uint64_t *, char *)@<X3>, uint64_t (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v26 = a5;
  v12 = sub_251C702E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(*v6 + 56);

  sub_251BF266C(a3, v15);
  v28 = v15;
  v17 = sub_251BF1DA0(MEMORY[0x277D84F90], a4, v27, v16);

  (*(v13 + 8))(v15, v12);
  if (*(v17 + 16))
  {
    sub_251BFB8EC(a1, a6, type metadata accessor for PBTypedData);
    v18 = sub_251BFAE40(v17);

    if (a2)
    {
      v19 = *(v6 + *(v26(0) + 32));
      v20 = v19;
    }

    else
    {
      v19 = 0;
    }

    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    *(a6 + *(Output + 20)) = v18;
    v24 = (a6 + *(Output + 24));
    *v24 = v19;
    v24[1] = a2;
    (*(*(Output - 8) + 56))(a6, 0, 1, Output);
  }

  else
  {
    v21 = type metadata accessor for ClinicalSharingQueryOutput(0);
    (*(*(v21 - 8) + 56))(a6, 1, 1, v21);
  }
}

uint64_t sub_251BF0320@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_251C70014();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CC88A8];
  sub_251BFB6EC(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  v15 = sub_251C6FAE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  type metadata accessor for PBDateRange(0);
  sub_251C703A4();
  *(a4 + 32) = a1;
  *(a4 + 40) = a2 & 1;
  sub_251BFBA24(a3, v14, &qword_27F478D90, v11);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_251BFB954(v14, &qword_27F478D90, MEMORY[0x277CC88A8]);
  }

  (*(v16 + 32))(v18, v14, v15);
  sub_251C6FAB4();
  v33 = *v34;
  v34 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter;
  v20 = *(v33 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v21 = sub_251C6FF94();
  v22 = [v20 stringFromDate_];

  v23 = sub_251C70F14();
  v25 = v24;

  v26 = v36;
  v35 = *(v35 + 8);
  (v35)(v10, v36);
  *a4 = v23;
  *(a4 + 8) = v25;
  sub_251C6FA84();
  v27 = *(v34 + v33);
  v28 = sub_251C6FF94();
  v29 = [v27 stringFromDate_];

  v30 = sub_251C70F14();
  v32 = v31;

  (v35)(v10, v26);
  result = (*(v16 + 8))(v18, v15);
  *(a4 + 16) = v30;
  *(a4 + 24) = v32;
  return result;
}

uint64_t sub_251BF06C4@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v34 = a4;
  v9 = sub_251C70014();
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x277CC88A8];
  sub_251BFB6EC(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = sub_251C6FAE4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a5 = 0;
  *(a5 + 8) = 0xE000000000000000;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0xE000000000000000;
  type metadata accessor for PBDateRange(0);
  sub_251C703A4();
  *(a5 + 32) = a1;
  *(a5 + 40) = a2 & 1;
  sub_251BFBA24(a3, v15, &qword_27F478D90, v12);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    return sub_251BFB954(v15, &qword_27F478D90, MEMORY[0x277CC88A8]);
  }

  (*(v17 + 32))(v19, v15, v16);
  sub_251C6FAB4();
  v21 = *(v34 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v22 = sub_251C6FF94();
  v23 = [v21 stringFromDate_];

  v24 = sub_251C70F14();
  v26 = v25;

  v34 = v16;
  v27 = v36;
  v35 = *(v35 + 8);
  (v35)(v11, v36);
  *a5 = v24;
  *(a5 + 8) = v26;
  sub_251C6FA84();
  v28 = sub_251C6FF94();
  v29 = [v21 stringFromDate_];

  v30 = sub_251C70F14();
  v32 = v31;

  (v35)(v11, v27);
  result = (*(v17 + 8))(v19, v34);
  *(a5 + 16) = v30;
  *(a5 + 24) = v32;
  return result;
}

uint64_t sub_251BF0A40@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_251C70014();
  v35 = *(v8 - 8);
  v36 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CC88A8];
  sub_251BFB6EC(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v33 - v13;
  v15 = sub_251C6FAE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  type metadata accessor for PBDateRange(0);
  sub_251C703A4();
  *(a4 + 32) = a1;
  *(a4 + 40) = a2 & 1;
  sub_251BFBA24(a3, v14, &qword_27F478D90, v11);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_251BFB954(v14, &qword_27F478D90, MEMORY[0x277CC88A8]);
  }

  (*(v16 + 32))(v18, v14, v15);
  sub_251C6FAB4();
  v33 = *(v34 + *(type metadata accessor for ClinicalSharingCycleTrackingQuery(0) + 20));
  v34 = OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter;
  v20 = *(v33 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v21 = sub_251C6FF94();
  v22 = [v20 stringFromDate_];

  v23 = sub_251C70F14();
  v25 = v24;

  v26 = v36;
  v35 = *(v35 + 8);
  (v35)(v10, v36);
  *a4 = v23;
  *(a4 + 8) = v25;
  sub_251C6FA84();
  v27 = *(v33 + v34);
  v28 = sub_251C6FF94();
  v29 = [v27 stringFromDate_];

  v30 = sub_251C70F14();
  v32 = v31;

  (v35)(v10, v26);
  result = (*(v16 + 8))(v18, v15);
  *(a4 + 16) = v30;
  *(a4 + 24) = v32;
  return result;
}

uint64_t sub_251BF0DF0@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_251C70014();
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277CC88A8];
  sub_251BFB6EC(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v32 - v13;
  v15 = sub_251C6FAE4();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v32 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a4 = 0;
  *(a4 + 8) = 0xE000000000000000;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0xE000000000000000;
  type metadata accessor for PBDateRange(0);
  sub_251C703A4();
  *(a4 + 32) = a1;
  *(a4 + 40) = a2 & 1;
  sub_251BFBA24(a3, v14, &qword_27F478D90, v11);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_251BFB954(v14, &qword_27F478D90, MEMORY[0x277CC88A8]);
  }

  (*(v16 + 32))(v18, v14, v15);
  sub_251C6FAB4();
  v20 = *(*v33 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v21 = sub_251C6FF94();
  v22 = [v20 stringFromDate_];

  v23 = sub_251C70F14();
  v25 = v24;

  v33 = v15;
  v26 = v35;
  v34 = *(v34 + 8);
  (v34)(v10, v35);
  *a4 = v23;
  *(a4 + 8) = v25;
  sub_251C6FA84();
  v27 = sub_251C6FF94();
  v28 = [v20 stringFromDate_];

  v29 = sub_251C70F14();
  v31 = v30;

  (v34)(v10, v26);
  result = (*(v16 + 8))(v18, v33);
  *(a4 + 16) = v29;
  *(a4 + 24) = v31;
  return result;
}

uint64_t sub_251BF1170@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251BFB6EC(0, &qword_27F478D90, MEMORY[0x277CC88A8], MEMORY[0x277D83D88]);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v31 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v27 - v7;
  v9 = sub_251C6FAE4();
  v10 = MEMORY[0x28223BE20](v9);
  v30 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = v27 - v12;
  v15 = v14;
  v36 = *(v14 + 56);
  v37 = v14 + 56;
  result = v36(a2, 1, 1, v9);
  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = *(v15 + 16);
    v19 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v20 = *(v15 + 72);
    v34 = (v15 + 48);
    v35 = v20;
    v32 = v18;
    v33 = (v15 + 32);
    v21 = v15 + 16;
    v28 = (v21 - 8);
    v29 = v8;
    v27[1] = v21;
    v22 = v30;
    v18(v13, v19, v9);
    while (1)
    {
      sub_251BFBA24(a2, v8, &qword_27F478D90, MEMORY[0x277CC88A8]);
      if ((*v34)(v8, 1, v9) == 1)
      {
        v23 = MEMORY[0x277CC88A8];
        sub_251BFB954(a2, &qword_27F478D90, MEMORY[0x277CC88A8]);
        sub_251BFB954(v8, &qword_27F478D90, v23);
        (*v33)(a2, v13, v9);
        result = v36(a2, 0, 1, v9);
      }

      else
      {
        (*v33)(v22, v8, v9);
        v24 = v31;
        sub_251C6FAD4();
        v25 = *v28;
        (*v28)(v22, v9);
        v25(v13, v9);
        sub_251BFB954(a2, &qword_27F478D90, MEMORY[0x277CC88A8]);
        v36(v24, 0, 1, v9);
        v26 = v24;
        v8 = v29;
        result = sub_251AAFBF8(v26, a2);
      }

      v19 += v35;
      if (!--v17)
      {
        break;
      }

      v32(v13, v19, v9);
    }
  }

  return result;
}

uint64_t sub_251BF1518@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a1;
  sub_251BFB6EC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for PBDateRange(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v10 = type metadata accessor for PBTypedData(0);
  v11 = *(v10 + 20);
  v12 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  sub_251C703A4();
  v13 = *(v10 + 28);
  v19 = *(v7 + 56);
  v19(a2 + v13, 1, 1, v6);
  v14 = [objc_opt_self() activitySummaryType];
  v15 = sub_251B3C450();
  v17 = v16;

  if ((v17 & 0x100) == 0)
  {
    *a2 = v15;
    *(a2 + 8) = v17 & 1;
  }

  sub_251BFBA24(v20, v5, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_251BFB954(v5, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BFBAA4(v5, v9, type metadata accessor for PBDateRange);
  sub_251BFB954(a2 + v13, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BFBAA4(v9, a2 + v13, type metadata accessor for PBDateRange);
  return (v19)(a2 + v13, 0, 1, v6);
}

uint64_t sub_251BF1814@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251BFB6EC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v11 = type metadata accessor for PBTypedData(0);
  v12 = *(v11 + 20);
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  sub_251C703A4();
  v14 = *(v11 + 28);
  v15 = *(v8 + 56);
  v15(a2 + v14, 1, 1, v7);
  type metadata accessor for ClinicalSharingElectrocardiogramQuery(0);
  v16 = sub_251B3C450();
  if ((v17 & 0x100) == 0)
  {
    *a2 = v16;
    *(a2 + 8) = v17 & 1;
  }

  sub_251BFBA24(a1, v6, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_251BFB954(v6, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BFBAA4(v6, v10, type metadata accessor for PBDateRange);
  sub_251BFB954(a2 + v14, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BFBAA4(v10, a2 + v14, type metadata accessor for PBDateRange);
  return (v15)(a2 + v14, 0, 1, v7);
}

uint64_t sub_251BF1AE0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_251BFB6EC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  v7 = type metadata accessor for PBDateRange(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *a2 = 0;
  *(a2 + 8) = 1;
  v11 = type metadata accessor for PBTypedData(0);
  v12 = *(v11 + 20);
  v13 = type metadata accessor for PBTypedData.OneOf_Raw(0);
  (*(*(v13 - 8) + 56))(a2 + v12, 1, 1, v13);
  sub_251C703A4();
  v14 = *(v11 + 28);
  v15 = *(v8 + 56);
  v15(a2 + v14, 1, 1, v7);
  v16 = sub_251B3C450();
  if ((v17 & 0x100) == 0)
  {
    *a2 = v16;
    *(a2 + 8) = v17 & 1;
  }

  sub_251BFBA24(a1, v6, qword_2813E6EE8, type metadata accessor for PBDateRange);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_251BFB954(v6, qword_2813E6EE8, type metadata accessor for PBDateRange);
  }

  sub_251BFBAA4(v6, v10, type metadata accessor for PBDateRange);
  sub_251BFB954(a2 + v14, qword_2813E6EE8, type metadata accessor for PBDateRange);
  sub_251BFBAA4(v10, a2 + v14, type metadata accessor for PBDateRange);
  return (v15)(a2 + v14, 0, 1, v7);
}

uint64_t sub_251BF1DA0(uint64_t a1, void (*a2)(uint64_t *, char *), uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v26 = a2;
  sub_251BFB7E4(0);
  v25 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = a1;
  v11 = a4 + 64;
  v12 = 1 << *(a4 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a4 + 64);
  v15 = (v12 + 63) >> 6;
  v27 = a4;

  v17 = 0;
  while (v14)
  {
    v28 = v5;
    v18 = v17;
LABEL_10:
    v19 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    v20 = v19 | (v18 << 6);
    v21 = v27;
    v22 = *(v27 + 48);
    v23 = sub_251C70074();
    (*(*(v23 - 8) + 16))(v10, v22 + *(*(v23 - 8) + 72) * v20, v23);
    *&v10[*(v25 + 48)] = *(*(v21 + 56) + 8 * v20);

    v24 = v28;
    v26(&v29, v10);
    v5 = v24;
    result = sub_251BFB9C4(v10, sub_251BFB7E4);
    if (v24)
    {
    }
  }

  while (1)
  {
    v18 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v18 >= v15)
    {

      return v29;
    }

    v14 = *(v11 + 8 * v18);
    ++v17;
    if (v14)
    {
      v28 = v5;
      v17 = v18;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

void sub_251BF1F94(id a1, void (*a2)(id *, id *), uint64_t a3, unint64_t a4)
{
  v13 = a1;
  if (a4 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v10)
  {
    for (j = 0; ; ++j)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        a1 = MEMORY[0x25308D460](j, a4, a3);
      }

      else
      {
        if (j >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        a1 = *(a4 + 8 * j + 32);
      }

      v8 = a1;
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v12 = a1;
      a2(&v13, &v12);

      if (v4)
      {

        return;
      }

      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    v10 = a1;
    i = sub_251C717F4();
  }
}

uint64_t sub_251BF20BC@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  v5 = *(v2 + *(a1(0) + 24));
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v6 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC978]);
  v7 = sub_251C71534();

  if (v7 & 1) != 0 || (v8 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]), v9 = sub_251C71534(), v8, (v9))
  {
    v10 = [objc_opt_self() correlationTypeForIdentifier_];
    if (!v10)
    {
      result = sub_251C717E4();
      __break(1u);
      return result;
    }

    *a2 = v10;
  }

  else
  {
    *a2 = v5;
    v11 = v5;
  }

  v12 = *MEMORY[0x277D112F0];
  v13 = sub_251C702E4();
  v14 = *(*(v13 - 8) + 104);

  return v14(a2, v12, v13);
}

uint64_t sub_251BF2294@<X0>(void *a1@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  v2 = objc_opt_self();
  v3 = [v2 activitySummaryType];
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v4 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC978]);
  v5 = sub_251C71534();

  if (v5 & 1) != 0 || (v6 = [v2 activitySummaryType], v7 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]), v8 = sub_251C71534(), v6, v7, (v8))
  {
    v9 = [v2 correlationTypeForIdentifier_];
    if (v9)
    {
      goto LABEL_6;
    }

    LODWORD(v15) = 0;
    v14 = 76;
    sub_251C717E4();
    __break(1u);
  }

  v9 = [v2 activitySummaryType];
LABEL_6:
  *a1 = v9;
  v10 = *MEMORY[0x277D112F0];
  v11 = sub_251C702E4();
  v12 = *(*(v11 - 8) + 104);

  return v12(a1, v10, v11);
}

uint64_t sub_251BF24A4@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v4 = *MEMORY[0x277CCC978];
  v5 = a1;
  v6 = MEMORY[0x25308D1E0](v4);
  LOBYTE(a1) = sub_251C71534();

  if ((a1 & 1) != 0 || (v7 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]), v8 = sub_251C71534(), v7, (v8)) && (v5, (v5 = [objc_opt_self() correlationTypeForIdentifier_]) == 0))
  {
    result = sub_251C717E4();
    __break(1u);
  }

  else
  {
    *a2 = v5;
    v9 = *MEMORY[0x277D112F0];
    v10 = sub_251C702E4();
    v11 = *(*(v10 - 8) + 104);

    return v11(a2, v9, v10);
  }

  return result;
}

uint64_t sub_251BF266C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  v5 = *(v2 + *(a1(0) + 32));
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v6 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC978]);
  v7 = sub_251C71534();

  if (v7 & 1) != 0 || (v8 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]), v9 = sub_251C71534(), v8, (v9))
  {
    v10 = [objc_opt_self() correlationTypeForIdentifier_];
    if (!v10)
    {
      result = sub_251C717E4();
      __break(1u);
      return result;
    }

    *a2 = v10;
  }

  else
  {
    *a2 = v5;
    v11 = v5;
  }

  v12 = *MEMORY[0x277D112F0];
  v13 = sub_251C702E4();
  v14 = *(*(v13 - 8) + 104);

  return v14(a2, v12, v13);
}

uint64_t sub_251BF2844@<X0>(void *a1@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  v3 = *(v1 + 16);
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v4 = *MEMORY[0x277CCC978];
  v5 = v3;
  v6 = MEMORY[0x25308D1E0](v4);
  LOBYTE(v3) = sub_251C71534();

  if ((v3 & 1) != 0 || (v7 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]), v8 = sub_251C71534(), v7, (v8)) && (v5, (v5 = [objc_opt_self() correlationTypeForIdentifier_]) == 0))
  {
    result = sub_251C717E4();
    __break(1u);
  }

  else
  {
    *a1 = v5;
    v9 = *MEMORY[0x277D112F0];
    v10 = sub_251C702E4();
    v11 = *(*(v10 - 8) + 104);

    return v11(a1, v9, v10);
  }

  return result;
}

uint64_t sub_251BF2A0C@<X0>(void *a1@<X3>, void *a2@<X8>)
{
  sub_251A8223C(0, &qword_2813E1D20, 0x277D82BB8);
  sub_251A8223C(0, &qword_27F4797C0, 0x277CCD830);
  v4 = *MEMORY[0x277CCC978];
  v5 = a1;
  v6 = MEMORY[0x25308D1E0](v4);
  LOBYTE(a1) = sub_251C71534();

  if ((a1 & 1) != 0 || (v7 = MEMORY[0x25308D1E0](*MEMORY[0x277CCC980]), v8 = sub_251C71534(), v7, (v8)) && (v5, (v5 = [objc_opt_self() correlationTypeForIdentifier_]) == 0))
  {
    result = sub_251C717E4();
    __break(1u);
  }

  else
  {
    *a2 = v5;
    v9 = *MEMORY[0x277D112F0];
    v10 = sub_251C702E4();
    v11 = *(*(v10 - 8) + 104);

    return v11(a2, v9, v10);
  }

  return result;
}

uint64_t sub_251BF2C8C(uint64_t a1)
{
  result = type metadata accessor for ClinicalSharingQueryContext(319);
  if (v2 <= 0x3F)
  {
    result = sub_251C6FAE4();
    if (v3 <= 0x3F)
    {
      result = sub_251A8223C(319, &qword_27F47C170, 0x277CCD3A8);
      if (v4 <= 0x3F)
      {
        result = sub_251A8223C(319, &qword_27F479EA8, 0x277CCDAB0);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_251BF2D78(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_251BF2D98(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 32) = v3;
  return result;
}

uint64_t sub_251BF2DD4()
{
  v1 = v0;
  v2 = type metadata accessor for ClinicalSharingElectrocardiogramQuery(0);
  v3 = (v2 - 8);
  v43 = *(v2 - 8);
  v42 = *(v43 + 64);
  MEMORY[0x28223BE20](v2);
  v41 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BF50FC(0);
  v6 = *(v5 - 8);
  v45 = v5;
  v46 = v6;
  MEMORY[0x28223BE20](v5);
  v44 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_251C70014();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = (v0 + v3[9]);
  type metadata accessor for ClinicalSharingElectrocardiogramQuery.State();
  v13 = swift_allocObject();
  v14 = v12[1];
  *(v13 + 16) = *v12;
  *(v13 + 32) = v14;
  v39 = *(v1 + v3[10]);
  v40 = v13;
  v15 = objc_opt_self();
  sub_251C6FAB4();
  v16 = sub_251C6FF94();
  v17 = *(v9 + 8);
  v17(v11, v8);
  sub_251C6FA84();
  v18 = sub_251C6FF94();
  v17(v11, v8);
  v19 = [v15 predicateForSamplesWithStartDate:v16 endDate:v18 options:0];

  v20 = objc_allocWithZone(MEMORY[0x277CCD848]);
  v21 = v39;
  v22 = [v20 initWithSampleType:v39 predicate:v19];

  v23 = sub_251BEFC0C(0x706D61732D676365, 0xEB0000000073656CLL, v21, 5, 1);
  v25 = v24;
  sub_251A823B4(*v1 + 16, v48);
  __swift_project_boxed_opaque_existential_1(v48, v48[3]);
  sub_251B0E638(0, &qword_27F47BD20, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_251C74560;
  *(v26 + 32) = v22;
  v39 = v22;
  v27 = sub_251AFCF70();
  v28 = off_2863FD760(v26, v27, *(v1 + v3[8]), v23, v25, &type metadata for ClinicalSharingQueryDefaultDataProvider);

  v47 = v28;
  v29 = v41;
  sub_251BFB8EC(v1, v41, type metadata accessor for ClinicalSharingElectrocardiogramQuery);
  v30 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v31 = (v42 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = swift_allocObject();
  sub_251BFBAA4(v29, v32 + v30, type metadata accessor for ClinicalSharingElectrocardiogramQuery);
  *(v32 + v31) = v40;
  v33 = MEMORY[0x277CBCD88];
  sub_251BF521C(0, &qword_27F478D60, sub_251A821D4, MEMORY[0x277CBCD88]);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251BF521C(0, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput, v33);
  sub_251BFB314(&qword_27F478D78, &qword_27F478D60, sub_251A821D4);
  sub_251BFB314(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);

  v34 = v44;
  sub_251C70B94();

  __swift_destroy_boxed_opaque_existential_1(v48);
  sub_251BFC204(&qword_27F47C180, sub_251BF50FC, MEMORY[0x277CBCCE0]);
  v35 = v45;
  v36 = sub_251C70A94();

  (*(v46 + 8))(v34, v35);
  return v36;
}

uint64_t sub_251BF33B0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ClinicalSharingElectrocardiogramQuery(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_251BFB07C(0);
  v40 = v9;
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFB12C(0);
  v13 = *(v12 - 8);
  v43 = v12;
  v44 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFB378(0);
  v17 = *(v16 - 8);
  v45 = v16;
  v46 = v17;
  MEMORY[0x28223BE20](v16);
  v39 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFB40C(0);
  v20 = *(v19 - 8);
  v47 = v19;
  v48 = v20;
  MEMORY[0x28223BE20](v19);
  v41 = &v34 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  sub_251A821D4(0);
  sub_251BFC204(&qword_27F47C190, sub_251A821D4, MEMORY[0x277D83970]);
  sub_251C710D4();
  v36 = type metadata accessor for ClinicalSharingElectrocardiogramQuery;
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFB8EC(v3, v34, type metadata accessor for ClinicalSharingElectrocardiogramQuery);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v38 = v22 + v8;
  v23 = swift_allocObject();
  v35 = type metadata accessor for ClinicalSharingElectrocardiogramQuery;
  sub_251BFBAA4(&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v23 + v22, type metadata accessor for ClinicalSharingElectrocardiogramQuery);
  *(v23 + ((v22 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;
  sub_251BF521C(0, &qword_27F47C1A0, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData, MEMORY[0x277CBCD88]);
  sub_251BFC204(&qword_27F47C1B0, sub_251BFB07C, MEMORY[0x277CBCD18]);
  sub_251BFB314(&qword_27F47C1B8, &qword_27F47C1A0, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);

  v24 = v40;
  sub_251C70BD4();

  (*(v42 + 8))(v11, v24);
  sub_251BFC204(&qword_27F47C1D0, sub_251BFB12C, MEMORY[0x277CBCCE0]);
  v25 = v39;
  v26 = v43;
  sub_251C70B64();
  (*(v44 + 8))(v15, v26);
  v27 = v34;
  sub_251BFB8EC(v37, v34, v36);
  v28 = swift_allocObject();
  sub_251BFBAA4(v27, v28 + v22, v35);
  type metadata accessor for ClinicalSharingQueryOutput(0);
  sub_251BFC204(&qword_27F47C1E0, sub_251BFB378, MEMORY[0x277CBCCD0]);
  v29 = v41;
  v30 = v45;
  sub_251C70AA4();

  (*(v46 + 8))(v25, v30);
  sub_251BFC204(&qword_27F47C1E8, sub_251BFB40C, MEMORY[0x277CBCB10]);
  v31 = v47;
  v32 = sub_251C70A94();
  (*(v48 + 8))(v29, v31);
  return v32;
}

void sub_251BF39D8(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    v5 = v4;
    v6 = v3;
    v7 = sub_251BF4388([v5 classification]);
    v8 = sub_251BF4400(v5, v7);

    *a2 = v8;
  }

  else
  {
    sub_251C716A4();
    v9 = [v3 description];
    sub_251C70F14();

    MEMORY[0x25308CDA0](0xD00000000000001CLL, 0x8000000251C909D0);
    sub_251C717E4();
    __break(1u);
  }
}

uint64_t sub_251BF3B1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v59 = a2;
  v4 = sub_251C70014();
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v63 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v62 = &v49 - v7;
  v61 = sub_251C6FAE4();
  v64 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D83D88];
  sub_251BFB6EC(0, &qword_27F4793C8, type metadata accessor for PBTypedData, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49 - v11;
  v13 = type metadata accessor for PBTypedData(0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFB6EC(0, &qword_27F478D90, MEMORY[0x277CC88A8], v9);
  MEMORY[0x28223BE20](v17 - 8);
  v55 = &v49 - v18;
  v19 = type metadata accessor for PBDateRange(0);
  MEMORY[0x28223BE20](v19 - 8);
  v56 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
  v21 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v23 = (&v49 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = type metadata accessor for PBECGMeasurement(0);
  v60 = *(v24 - 8);
  MEMORY[0x28223BE20](v24 - 8);
  v26 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;

  sub_251BF92C4(&v66);
  v57 = v14;
  v58 = v13;
  v27 = v66;
  v28 = *(v66 + 16);
  if (v28)
  {
    v50 = v16;
    v51 = v12;
    v52 = v2;
    v66 = MEMORY[0x277D84F90];
    sub_251C0BDF4(0, v28, 0);
    v29 = v66;
    v30 = *(v21 + 80);
    v49 = v27;
    v31 = v27 + ((v30 + 32) & ~v30);
    v65 = *(v21 + 72);
    v32 = v31;
    v33 = v28;
    v34 = v53;
    do
    {
      sub_251BFB8EC(v32, v23, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      sub_251BFB8EC(v23 + *(v34 + 20), v26, type metadata accessor for PBECGMeasurement);
      sub_251BFB9C4(v23, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v66 = v29;
      v36 = *(v29 + 16);
      v35 = *(v29 + 24);
      if (v36 >= v35 >> 1)
      {
        sub_251C0BDF4((v35 > 1), v36 + 1, 1);
        v34 = v53;
        v29 = v66;
      }

      *(v29 + 16) = v36 + 1;
      sub_251BFBAA4(v26, v29 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v36, type metadata accessor for PBECGMeasurement);
      v32 += v65;
      --v33;
    }

    while (v33);
    v66 = MEMORY[0x277D84F90];
    sub_251C0B714(0, v28, 0);
    v37 = v66;
    v38 = v54;
    do
    {
      sub_251BFB8EC(v31, v23, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v39 = *v23;
      v40 = [*v23 startDate];
      sub_251C6FFE4();

      v41 = [v39 endDate];
      sub_251C6FFE4();

      sub_251C6FA94();
      sub_251BFB9C4(v23, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v66 = v37;
      v43 = *(v37 + 16);
      v42 = *(v37 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_251C0B714((v42 > 1), v43 + 1, 1);
        v38 = v54;
        v37 = v66;
      }

      *(v37 + 16) = v43 + 1;
      (*(v64 + 32))(v37 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v43, v38, v61);
      v31 += v65;
      --v28;
    }

    while (v28);

    v44 = v59;
    v12 = v51;
    v16 = v50;
  }

  else
  {

    v37 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    v44 = v59;
  }

  v45 = v55;
  sub_251BF1170(v37, v55);
  v46 = v56;
  sub_251BF0320(5, 1, v45, v56);
  sub_251BFB954(v45, &qword_27F478D90, MEMORY[0x277CC88A8]);
  sub_251BF4A08(v29, v46, v12);

  if ((*(v57 + 48))(v12, 1, v58) == 1)
  {
    sub_251BFB9C4(v46, type metadata accessor for PBDateRange);

    sub_251BFB954(v12, &qword_27F4793C8, type metadata accessor for PBTypedData);
    Output = type metadata accessor for ClinicalSharingQueryOutput(0);
    return (*(*(Output - 8) + 56))(v44, 1, 1, Output);
  }

  else
  {
    sub_251BFBAA4(v12, v16, type metadata accessor for PBTypedData);
    sub_251BF00E0(v16, v37, type metadata accessor for ClinicalSharingElectrocardiogramQuery, sub_251AD6374, type metadata accessor for ClinicalSharingElectrocardiogramQuery, v44);

    sub_251BFB9C4(v16, type metadata accessor for PBTypedData);
    return sub_251BFB9C4(v46, type metadata accessor for PBDateRange);
  }
}

BOOL sub_251BF4388(uint64_t a1)
{
  v3 = v1[2];
  result = v3 > 0;
  v5 = v3 < 1;
  v6 = v3 - 1;
  if (!v5)
  {
    v1[2] = v6;
  }

  if (a1 == 2)
  {
    v10 = v1[4];
    v8 = v1 + 4;
    v7 = v10;
LABEL_7:
    if (v7 <= 0)
    {
      return result;
    }

    goto LABEL_8;
  }

  if (a1 == 1)
  {
    v9 = v1[3];
    v8 = v1 + 3;
    v7 = v9;
    goto LABEL_7;
  }

  if ((a1 - 3) <= 3)
  {
    v11 = v1[5];
    v8 = v1 + 5;
    v7 = v11;
    if (v11 >= 1)
    {
LABEL_8:
      *v8 = v7 - 1;
      return 1;
    }
  }

  return result;
}

uint64_t sub_251BF4400(void *a1, int a2)
{
  v37 = a2;
  v38 = a1;
  v39 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
  MEMORY[0x28223BE20](v39);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_251BFB6EC(0, &qword_27F47C210, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData, MEMORY[0x277CBCE78]);
  v6 = v5;
  v36 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - v7;
  sub_251BF521C(0, &qword_27F47C218, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData, MEMORY[0x277CBCF38]);
  v10 = v9;
  v35 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v34 - v11;
  v13 = type metadata accessor for ClinicalSharingElectrocardiogramQuery(0);
  v34 = *(v13 - 8);
  v14 = *(v34 + 64);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_251BFBB90(0);
  v17 = MEMORY[0x28223BE20](v16);
  v20 = &v34 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v37)
  {
    v21 = v17;
    v22 = v18;
    sub_251A823B4(*v2 + 16, v41);
    __swift_project_boxed_opaque_existential_1(v41, v41[3]);
    v23 = v38;
    v40 = off_2863FD740(v38, 1, *(v2 + *(v13 + 36)), &type metadata for ClinicalSharingQueryDefaultDataProvider);
    sub_251BFB8EC(v2, &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ClinicalSharingElectrocardiogramQuery);
    v24 = (*(v34 + 80) + 16) & ~*(v34 + 80);
    v25 = (v14 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v26 = swift_allocObject();
    sub_251BFBAA4(v15, v26 + v24, type metadata accessor for ClinicalSharingElectrocardiogramQuery);
    *(v26 + v25) = v23;
    sub_251BFBC3C(0);
    sub_251BFC204(&qword_27F47C230, sub_251BFBC3C, MEMORY[0x277CBCD90]);
    v27 = v23;
    sub_251C70AE4();

    __swift_destroy_boxed_opaque_existential_1(v41);
    sub_251BFC204(&qword_27F47C240, sub_251BFBB90, MEMORY[0x277CBCC08]);
    v28 = sub_251C70A94();
    (*(v22 + 8))(v20, v21);
  }

  else
  {
    v29 = *(v2 + *(v13 + 36));
    v30 = MEMORY[0x25308DB30](v17);
    v31 = v38;
    sub_251BF4D58(v38, MEMORY[0x277D84F90], v29, v4 + *(v39 + 20));
    *v4 = v31;
    v32 = v31;
    objc_autoreleasePoolPop(v30);
    sub_251C70A24();
    sub_251A82284();
    sub_251C709F4();
    (*(v36 + 8))(v8, v6);
    sub_251BFBCD0();
    v28 = sub_251C70A94();
    (*(v35 + 8))(v12, v10);
  }

  return v28;
}

void sub_251BF4978(uint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X8>)
{
  v6 = *a1;
  v7 = *(a2 + *(type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) + 36));
  v8 = MEMORY[0x25308DB30]();
  v9 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
  sub_251BF4D58(a3, v6, v7, a4 + *(v9 + 20));
  *a4 = a3;
  v10 = a3;

  objc_autoreleasePoolPop(v8);
}

uint64_t sub_251BF4A08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_251BFB6EC(0, qword_2813E6EE8, type metadata accessor for PBDateRange, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = type metadata accessor for PBECGs(0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = (&v22 - v13);
  if (*(a1 + 16))
  {
    sub_251C703A4();
    *v14 = a1;
    sub_251BFB8EC(a2, v8, type metadata accessor for PBDateRange);
    v15 = type metadata accessor for PBDateRange(0);
    (*(*(v15 - 8) + 56))(v8, 0, 1, v15);

    sub_251BF1814(v8, a3);
    sub_251BFB954(v8, qword_2813E6EE8, type metadata accessor for PBDateRange);
    sub_251BFB8EC(v14, v12, type metadata accessor for PBECGs);
    v16 = type metadata accessor for PBTypedData(0);
    v17 = *(v16 + 20);
    sub_251BFB954(a3 + v17, qword_2813E6C90, type metadata accessor for PBTypedData.OneOf_Raw);
    sub_251BFBAA4(v12, a3 + v17, type metadata accessor for PBECGs);
    v18 = type metadata accessor for PBTypedData.OneOf_Raw(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v18 - 8) + 56))(a3 + v17, 0, 1, v18);
    (*(*(v16 - 8) + 56))(a3, 0, 1, v16);
    return sub_251BFB9C4(v14, type metadata accessor for PBECGs);
  }

  else
  {
    v20 = type metadata accessor for PBTypedData(0);
    v21 = *(*(v20 - 8) + 56);

    return v21(a3, 1, 1, v20);
  }
}

void sub_251BF4D58(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_251C70014();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0xE000000000000000;
  v13 = MEMORY[0x277D84F90];
  *(a4 + 40) = 0;
  *(a4 + 48) = 0xE000000000000000;
  *(a4 + 96) = v13;
  *(a4 + 104) = 0;
  *(a4 + 112) = 0;
  *(a4 + 120) = 1;
  type metadata accessor for PBECGMeasurement(0);
  sub_251C703A4();
  v14 = [a1 startDate];
  sub_251C6FFE4();

  v15 = *(*v4 + OBJC_IVAR____TtC19HealthRecordsDaemon27ClinicalSharingQueryContext_isoDateFormatter);
  v16 = sub_251C6FF94();
  v17 = [v15 stringFromDate_];

  v18 = sub_251C70F14();
  v20 = v19;

  (*(v10 + 8))(v12, v9);
  *a4 = v18;
  *(a4 + 8) = v20;
  v21 = [a1 samplingFrequency];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() hertzUnit];
    [v22 doubleValueForUnit_];
    v25 = v24;

    v26 = v25;
    *(a4 + 16) = v26;
  }

  v27 = [a1 device];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 name];

    if (v29)
    {
      v30 = sub_251C70F14();
      v32 = v31;

      *(a4 + 24) = v30;
      *(a4 + 32) = v32;
    }
  }

  v33 = [a1 _localizedSymptoms];
  v34 = sub_251C71154();

  *(a4 + 88) = v34;
  v35 = sub_251BF50B8([a1 classification]);
  if ((v36 & 0x100) == 0)
  {
    *(a4 + 112) = v35;
    *(a4 + 120) = v36 & 1;
  }

  v37 = [a1 averageHeartRate];
  if (v37)
  {
    v38 = v37;
    [v37 _beatsPerMinute];
    v40 = v39;

    v41 = v40;
    *(a4 + 104) = v41;
  }

  *(a4 + 56) = 73;
  *(a4 + 64) = 0xE100000000000000;
  v42 = [a3 unitString];
  v43 = sub_251C70F14();
  v45 = v44;

  *(a4 + 72) = v43;
  *(a4 + 80) = v45;
  if (*(a2 + 16))
  {
    *(a4 + 96) = a2;
  }
}

unint64_t sub_251BF50B8(unint64_t result)
{
  v1 = 7;
  if (result != 100)
  {
    v1 = 0;
  }

  if (result >= 7)
  {
    return v1;
  }

  return result;
}

void sub_251BF50FC(uint64_t a1)
{
  if (!qword_27F47C178)
  {
    v1 = MEMORY[0x277CBCD88];
    sub_251BF521C(255, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput, MEMORY[0x277CBCD88]);
    sub_251BF521C(255, &qword_27F478D60, sub_251A821D4, v1);
    sub_251BFB314(&qword_2813E21C8, &qword_2813E21C0, type metadata accessor for ClinicalSharingQueryOutput);
    sub_251BFB314(&qword_27F478D78, &qword_27F478D60, sub_251A821D4);
    v2 = sub_251C708D4();
    if (!v3)
    {
      atomic_store(v2, &qword_27F47C178);
    }
  }
}

void sub_251BF521C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = sub_251A82284();
    v9 = a4(a1, v7, v8, MEMORY[0x277D84950]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_251BF5298(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_251BFC204(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v33 = a2;
  v11 = sub_251C70E84();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_251BFC204(&qword_27F4796A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_251C70ED4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_251BF70C4(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_251BF5578(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_251BFC204(&qword_2813E74C0, MEMORY[0x277D11300], MEMORY[0x277D11308]);
  v33 = a2;
  v11 = sub_251C70E84();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_251BFC204(&qword_27F4797C8, MEMORY[0x277D11300], MEMORY[0x277D11310]);
      v21 = sub_251C70ED4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_251BF7390(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_251BF5858(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_251C71AA4();
  sub_251C70FB4();
  v8 = sub_251C71AD4();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_251C719D4() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_251BF765C(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_251BF59A8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v60 = *MEMORY[0x277D85DE8];
  v10 = *v5;
  sub_251C71AA4();
  sub_251C70FB4();
  sub_251C6FEF4();
  v11 = sub_251C71AD4();
  v12 = -1 << *(v10 + 32);
  v13 = v11 & ~v12;
  if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
    v18 = a2;
LABEL_68:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v59 = *v48;

    sub_251A858C4(a4, a5);
    sub_251BF77DC(v18, a3, a4, a5, v13, isUniquelyReferenced_nonNull_native);
    *v48 = *v59;
    *a1 = v18;
    a1[1] = a3;
    a1[2] = a4;
    a1[3] = a5;
    return 1;
  }

  v57 = ~v12;
  if (a4)
  {
    v14 = 0;
  }

  else
  {
    v14 = a5 == 0xC000000000000000;
  }

  v15 = !v14;
  v56 = v15;
  v16 = a5 >> 62;
  v17 = __OFSUB__(HIDWORD(a4), a4);
  v54 = v17;
  v53 = HIDWORD(a4) - a4;
  v55 = BYTE6(a5);
  v50 = a4;
  v51 = a5;
  v49 = a3;
  v18 = a2;
  while (1)
  {
    v19 = (*(v10 + 48) + 32 * v13);
    v20 = v19[2];
    v21 = v19[3];
    v22 = *v19 == v18 && v19[1] == a3;
    if (!v22 && (sub_251C719D4() & 1) == 0)
    {
      goto LABEL_13;
    }

    v23 = v21 >> 62;
    if (v21 >> 62 == 3)
    {
      if (v20)
      {
        v24 = 0;
      }

      else
      {
        v24 = v21 == 0xC000000000000000;
      }

      v26 = !v24 || v16 < 3;
      if (((v26 | v56) & 1) == 0)
      {

        v42 = 0;
        v43 = 0xC000000000000000;
        goto LABEL_69;
      }

LABEL_41:
      v27 = 0;
      if (v16 <= 1)
      {
        goto LABEL_38;
      }

      goto LABEL_42;
    }

    if (v23 > 1)
    {
      if (v23 != 2)
      {
        goto LABEL_41;
      }

      v29 = *(v20 + 16);
      v28 = *(v20 + 24);
      v30 = __OFSUB__(v28, v29);
      v27 = v28 - v29;
      if (v30)
      {
        goto LABEL_73;
      }

      if (v16 <= 1)
      {
        goto LABEL_38;
      }
    }

    else if (v23)
    {
      LODWORD(v27) = HIDWORD(v20) - v20;
      if (__OFSUB__(HIDWORD(v20), v20))
      {
        goto LABEL_72;
      }

      v27 = v27;
      if (v16 <= 1)
      {
LABEL_38:
        v31 = v55;
        if (v16)
        {
          v31 = v53;
          if (v54)
          {
            goto LABEL_71;
          }
        }

        goto LABEL_44;
      }
    }

    else
    {
      v27 = BYTE6(v21);
      if (v16 <= 1)
      {
        goto LABEL_38;
      }
    }

LABEL_42:
    if (v16 != 2)
    {
      if (!v27)
      {
        goto LABEL_66;
      }

      goto LABEL_13;
    }

    v33 = *(a4 + 16);
    v32 = *(a4 + 24);
    v30 = __OFSUB__(v32, v33);
    v31 = v32 - v33;
    if (v30)
    {
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
    }

LABEL_44:
    if (v27 != v31)
    {
      goto LABEL_13;
    }

    if (v27 < 1)
    {
      goto LABEL_66;
    }

    if (v23 <= 1)
    {
      if (!v23)
      {
        *v59 = v20;
        *&v59[8] = v21;
        v59[10] = BYTE2(v21);
        v59[11] = BYTE3(v21);
        v59[12] = BYTE4(v21);
        v59[13] = BYTE5(v21);

        sub_251A858C4(v20, v21);
        v18 = a2;
        goto LABEL_65;
      }

      if (v20 >> 32 < v20)
      {
        goto LABEL_74;
      }

      sub_251A858C4(v20, v21);
      v36 = sub_251C6FB74();
      if (v36)
      {
        v38 = sub_251C6FBA4();
        if (__OFSUB__(v20, v38))
        {
          goto LABEL_77;
        }

        v36 += v20 - v38;
      }

      goto LABEL_62;
    }

    if (v23 != 2)
    {
      break;
    }

    v35 = *(v20 + 16);
    v34 = *(v20 + 24);

    sub_251A858C4(v20, v21);
    v36 = sub_251C6FB74();
    if (v36)
    {
      v37 = sub_251C6FBA4();
      if (__OFSUB__(v35, v37))
      {
        goto LABEL_76;
      }

      v36 += v35 - v37;
    }

    if (__OFSUB__(v34, v35))
    {
      goto LABEL_75;
    }

LABEL_62:
    sub_251C6FB94();
    v39 = v36;
    a4 = v50;
    a5 = v51;
    sub_251A9CD78(v39, v50, v51, v59);

    sub_251A83028(v20, v21);
    a3 = v49;
    v18 = a2;
    if (v59[0])
    {
      goto LABEL_66;
    }

LABEL_13:
    v13 = (v13 + 1) & v57;
    if (((*(v10 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  *&v59[6] = 0;
  *v59 = 0;

  sub_251A858C4(v20, v21);
LABEL_65:
  sub_251A9CD78(v59, a4, a5, &v58);

  sub_251A83028(v20, v21);
  if (!v58)
  {
    goto LABEL_13;
  }

LABEL_66:

  v42 = a4;
  v43 = a5;
LABEL_69:
  sub_251A83028(v42, v43);
  v44 = (*(v10 + 48) + 32 * v13);
  v45 = v44[1];
  v46 = v44[2];
  v47 = v44[3];
  *a1 = *v44;
  a1[1] = v45;
  a1[2] = v46;
  a1[3] = v47;

  sub_251A858C4(v46, v47);
  return 0;
}

uint64_t sub_251BF5EFC(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_251C701C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_251BFC204(&qword_27F47A048, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
  v33 = a2;
  v11 = sub_251C70E84();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_251BFC204(&qword_27F47A050, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
      v21 = sub_251C70ED4();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_251BF7CF8(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_251BF61DC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_251C70074();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_251BFB750(0);
  result = sub_251C71664();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_251BFC204(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_251C70E84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_251BF652C(uint64_t a1)
{
  v2 = v1;
  v36 = sub_251C702E4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_251AD642C(0);
  result = sub_251C71664();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_251BFC204(&qword_2813E74C0, MEMORY[0x277D11300], MEMORY[0x277D11308]);
      result = sub_251C70E84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_251BF687C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_251BFBF64(0, &qword_27F47C248, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_251C71664();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_251C71AA4();
      sub_251C70FB4();
      result = sub_251C71AD4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_251BF6AFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_251BFC00C(0);
  result = sub_251C71664();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v1;
    v32 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_251C71AA4();
      sub_251C70FB4();
      sub_251C6FEF4();
      result = sub_251C71AD4();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v32;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v3 + 32);
    if (v30 >= 64)
    {
      bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v30;
    }

    v2 = v31;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_251BF6D74(uint64_t a1)
{
  v2 = v1;
  v36 = sub_251C701C4();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_251B1D700(0);
  result = sub_251C71664();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_251BFC204(&qword_27F47A048, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      result = sub_251C70E84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_251BF70C4(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_251C70074();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_251BF61DC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_251BF82AC(MEMORY[0x277CC95F0], sub_251BFB750);
      goto LABEL_12;
    }

    sub_251BF84E0(v10 + 1);
  }

  v12 = *v3;
  sub_251BFC204(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v13 = sub_251C70E84();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_251BFC204(&qword_27F4796A0, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v21 = sub_251C70ED4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_251C71A04();
  __break(1u);
  return result;
}

uint64_t sub_251BF7390(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_251C702E4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_251BF652C(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_251BF82AC(MEMORY[0x277D11300], sub_251AD642C);
      goto LABEL_12;
    }

    sub_251BF87F0(v10 + 1);
  }

  v12 = *v3;
  sub_251BFC204(&qword_2813E74C0, MEMORY[0x277D11300], MEMORY[0x277D11308]);
  v13 = sub_251C70E84();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_251BFC204(&qword_27F4797C8, MEMORY[0x277D11300], MEMORY[0x277D11310]);
      v21 = sub_251C70ED4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_251C71A04();
  __break(1u);
  return result;
}

uint64_t sub_251BF765C(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_251BF687C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_251BF7FC4();
      goto LABEL_16;
    }

    sub_251BF8B00(v8 + 1);
  }

  v10 = *v4;
  sub_251C71AA4();
  sub_251C70FB4();
  result = sub_251C71AD4();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_251C719D4();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_251C71A04();
  __break(1u);
  return result;
}

uint64_t sub_251BF77DC(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, char a6)
{
  v11 = result;
  v59 = *MEMORY[0x277D85DE8];
  v12 = *(*v6 + 16);
  v13 = *(*v6 + 24);
  if (v13 <= v12 || (a6 & 1) == 0)
  {
    v51 = result;
    if (a6)
    {
      sub_251BF6AFC(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        result = sub_251BF8140();
        goto LABEL_74;
      }

      sub_251BF8D58(v12 + 1);
    }

    v14 = *v6;
    sub_251C71AA4();
    sub_251C70FB4();
    sub_251C6FEF4();
    result = sub_251C71AD4();
    v52 = v14;
    v15 = -1 << *(v14 + 32);
    a5 = result & ~v15;
    v56 = v14 + 56;
    if ((*(v14 + 56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5))
    {
      v55 = ~v15;
      if (a3)
      {
        v16 = 0;
      }

      else
      {
        v16 = a4 == 0xC000000000000000;
      }

      v17 = !v16;
      v54 = v17;
      v18 = a4 >> 62;
      v19 = __OFSUB__(HIDWORD(a3), a3);
      v48 = v19;
      v46 = a3;
      v47 = HIDWORD(a3) - a3;
      v53 = BYTE6(a4);
      v49 = a2;
      v20 = a4;
      v11 = v51;
      a4 = v52;
      while (1)
      {
        v21 = (*(a4 + 48) + 32 * a5);
        result = *v21;
        v23 = v21[2];
        v22 = v21[3];
        if (*v21 != v11 || v21[1] != a2)
        {
          result = sub_251C719D4();
          if ((result & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        v25 = v22 >> 62;
        if (v22 >> 62 == 3)
        {
          break;
        }

        if (v25 > 1)
        {
          if (v25 != 2)
          {
            goto LABEL_37;
          }

          v35 = *(v23 + 16);
          v34 = *(v23 + 24);
          v33 = __OFSUB__(v34, v35);
          v29 = v34 - v35;
          if (v33)
          {
            goto LABEL_82;
          }
        }

        else if (v25)
        {
          LODWORD(v29) = HIDWORD(v23) - v23;
          if (__OFSUB__(HIDWORD(v23), v23))
          {
            goto LABEL_81;
          }

          v29 = v29;
        }

        else
        {
          v29 = BYTE6(v22);
        }

LABEL_38:
        if (v18 > 1)
        {
          if (v18 != 2)
          {
            if (!v29)
            {
              goto LABEL_73;
            }

            goto LABEL_20;
          }

          v32 = *(a3 + 16);
          v31 = *(a3 + 24);
          v33 = __OFSUB__(v31, v32);
          v30 = v31 - v32;
          if (v33)
          {
            __break(1u);
LABEL_79:
            __break(1u);
            goto LABEL_80;
          }
        }

        else
        {
          v30 = v53;
          if (v18)
          {
            v30 = v47;
            if (v48)
            {
              goto LABEL_79;
            }
          }
        }

        if (v29 == v30)
        {
          if (v29 < 1)
          {
            goto LABEL_73;
          }

          if (v25 > 1)
          {
            if (v25 == 2)
            {
              v36 = v20;
              v37 = *(v23 + 16);
              v38 = *(v23 + 24);

              sub_251A858C4(v23, v22);
              v39 = sub_251C6FB74();
              if (v39)
              {
                v40 = sub_251C6FBA4();
                if (__OFSUB__(v37, v40))
                {
                  goto LABEL_85;
                }

                v39 += v37 - v40;
              }

              if (__OFSUB__(v38, v37))
              {
                goto LABEL_84;
              }

              goto LABEL_69;
            }

            *&v58[6] = 0;
            *v58 = 0;

            sub_251A858C4(v23, v22);
          }

          else
          {
            if (v25)
            {
              if (v23 >> 32 < v23)
              {
                goto LABEL_83;
              }

              v36 = v20;

              sub_251A858C4(v23, v22);
              v39 = sub_251C6FB74();
              if (v39)
              {
                v41 = sub_251C6FBA4();
                if (__OFSUB__(v23, v41))
                {
                  goto LABEL_86;
                }

                v39 += v23 - v41;
              }

LABEL_69:
              sub_251C6FB94();
              a3 = v46;
              v20 = v36;
              sub_251A9CD78(v39, v46, v36, v58);

              result = sub_251A83028(v23, v22);
              a2 = v49;
              v11 = v51;
              a4 = v52;
              if (v58[0])
              {
                goto LABEL_73;
              }

              goto LABEL_20;
            }

            *v58 = v23;
            *&v58[8] = v22;
            v58[10] = BYTE2(v22);
            v58[11] = BYTE3(v22);
            v58[12] = BYTE4(v22);
            v58[13] = BYTE5(v22);

            sub_251A858C4(v23, v22);
            a2 = v49;
          }

          sub_251A9CD78(v58, a3, v20, &v57);

          result = sub_251A83028(v23, v22);
          a4 = v52;
          if (v57)
          {
            goto LABEL_73;
          }
        }

LABEL_20:
        a5 = (a5 + 1) & v55;
        if (((*(v56 + ((a5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a5) & 1) == 0)
        {
          goto LABEL_76;
        }
      }

      if (v23)
      {
        v26 = 0;
      }

      else
      {
        v26 = v22 == 0xC000000000000000;
      }

      v28 = !v26 || v18 < 3;
      if (((v28 | v54) & 1) == 0)
      {
LABEL_73:
        result = sub_251C71A04();
        __break(1u);
        goto LABEL_74;
      }

LABEL_37:
      v29 = 0;
      goto LABEL_38;
    }

LABEL_74:
    v11 = v51;
  }

  v20 = a4;
LABEL_76:
  v42 = *v50;
  *(*v50 + 8 * (a5 >> 6) + 56) |= 1 << a5;
  v43 = (*(v42 + 48) + 32 * a5);
  *v43 = v11;
  v43[1] = a2;
  v43[2] = a3;
  v43[3] = v20;
  v44 = *(v42 + 16);
  v33 = __OFADD__(v44, 1);
  v45 = v44 + 1;
  if (v33)
  {
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
LABEL_85:
    __break(1u);
LABEL_86:
    __break(1u);
  }

  *(v42 + 16) = v45;
  return result;
}

uint64_t sub_251BF7CF8(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_251C701C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_251BF6D74(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_251BF82AC(MEMORY[0x277CC99D0], sub_251B1D700);
      goto LABEL_12;
    }

    sub_251BF8FB4(v10 + 1);
  }

  v12 = *v3;
  sub_251BFC204(&qword_27F47A048, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
  v13 = sub_251C70E84();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_251BFC204(&qword_27F47A050, MEMORY[0x277CC99D0], MEMORY[0x277CC99E0]);
      v21 = sub_251C70ED4();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_251C71A04();
  __break(1u);
  return result;
}

void *sub_251BF7FC4()
{
  v1 = v0;
  sub_251BFBF64(0, &qword_27F47C248, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  v2 = *v0;
  v3 = sub_251C71654();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void *sub_251BF8140()
{
  v1 = v0;
  sub_251BFC00C(0);
  v2 = *v0;
  v3 = sub_251C71654();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 32 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = v18[2];
        v21 = v18[3];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v19;
        v22[2] = v20;
        v22[3] = v21;

        result = sub_251A858C4(v20, v21);
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void *sub_251BF82AC(uint64_t (*a1)(void), void (*a2)(void))
{
  v4 = v2;
  v5 = a1(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24 - v7;
  a2(0);
  v9 = *v2;
  v10 = sub_251C71654();
  v11 = v10;
  if (*(v9 + 16))
  {
    v25 = v4;
    result = (v10 + 56);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 56 + 8 * v13)
    {
      result = memmove(result, (v9 + 56), 8 * v13);
    }

    v15 = 0;
    *(v11 + 16) = *(v9 + 16);
    v16 = 1 << *(v9 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v9 + 56);
    v19 = (v16 + 63) >> 6;
    v26 = v6 + 32;
    for (i = v6 + 16; v18; result = (*(v6 + 32))(*(v11 + 48) + v23, v8, v5))
    {
      v20 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_17:
      v23 = *(v6 + 72) * (v20 | (v15 << 6));
      (*(v6 + 16))(v8, *(v9 + 48) + v23, v5);
    }

    v21 = v15;
    while (1)
    {
      v15 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v15 >= v19)
      {

        v4 = v25;
        goto LABEL_21;
      }

      v22 = *(v9 + 56 + 8 * v15);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v18 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v11;
  }

  return result;
}

uint64_t sub_251BF84E0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_251C70074();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_251BFB750(0);
  v7 = sub_251C71664();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_251BFC204(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      result = sub_251C70E84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_251BF87F0(uint64_t a1)
{
  v2 = v1;
  v33 = sub_251C702E4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_251AD642C(0);
  v7 = sub_251C71664();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_251BFC204(&qword_2813E74C0, MEMORY[0x277D11300], MEMORY[0x277D11308]);
      result = sub_251C70E84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_251BF8B00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_251BFBF64(0, &qword_27F47C248, MEMORY[0x277D837D0], MEMORY[0x277D837E0], MEMORY[0x277D84098]);
  result = sub_251C71664();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_251C71AA4();

      sub_251C70FB4();
      result = sub_251C71AD4();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_251BF8D58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_251BFC00C(0);
  result = sub_251C71664();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v1;
    v31 = v3;
    v6 = 0;
    v7 = v3 + 56;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 32 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      v22 = v18[3];
      sub_251C71AA4();

      sub_251A858C4(v21, v22);
      sub_251C70FB4();
      sub_251C6FEF4();
      result = sub_251C71AD4();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 32 * v13);
      *v14 = v19;
      v14[1] = v20;
      v14[2] = v21;
      v14[3] = v22;
      ++*(v5 + 16);
      v3 = v31;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v6 >= v11)
      {

        v2 = v30;
        goto LABEL_26;
      }

      v17 = *(v7 + 8 * v6);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_251BF8FB4(uint64_t a1)
{
  v2 = v1;
  v33 = sub_251C701C4();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_251B1D700(0);
  v7 = sub_251C71664();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_251BFC204(&qword_27F47A048, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
      result = sub_251C70E84();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_251BF92C4(uint64_t *a1)
{
  v2 = *(type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_251BFAE2C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_251BF936C(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_251BF936C(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_251C71994();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
        v6 = sub_251C71184();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_251BF9840(v8, v9, a1, v4);
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
    return sub_251BF9498(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_251BF9498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v51 = sub_251C70014();
  v8 = *(v51 - 8);
  v9 = MEMORY[0x28223BE20](v51);
  v50 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v49 = &v35 - v11;
  v45 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
  v12 = MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v48 = (&v35 - v15);
  result = MEMORY[0x28223BE20](v14);
  v47 = (&v35 - v18);
  v37 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v17 + 72);
    v46 = (v8 + 8);
    v21 = v19 + v20 * (a3 - 1);
    v42 = -v20;
    v43 = v19;
    v22 = a1 - a3;
    v36 = v20;
    v23 = v19 + v20 * a3;
    v24 = v49;
LABEL_5:
    v40 = v21;
    v41 = a3;
    v38 = v23;
    v39 = v22;
    v52 = v22;
    while (1)
    {
      v25 = v47;
      sub_251BFB8EC(v23, v47, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v26 = v48;
      sub_251BFB8EC(v21, v48, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v27 = [*v25 endDate];
      sub_251C6FFE4();

      v28 = [*v26 endDate];
      v29 = v50;
      sub_251C6FFE4();

      LOBYTE(v28) = sub_251C6FFB4();
      v30 = *v46;
      v31 = v29;
      v32 = v51;
      (*v46)(v31, v51);
      v30(v24, v32);
      sub_251BFB9C4(v26, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      result = sub_251BFB9C4(v25, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      if ((v28 & 1) == 0)
      {
LABEL_4:
        a3 = v41 + 1;
        v21 = v40 + v36;
        v22 = v39 - 1;
        v23 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v33 = v44;
      sub_251BFBAA4(v23, v44, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_251BFBAA4(v33, v21, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v21 += v42;
      v23 += v42;
      if (__CFADD__(v52++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_251BF9840(uint64_t *a1, uint64_t a2, void *a3, unint64_t a4)
{
  v5 = v4;
  v129 = a1;
  v148 = sub_251C70014();
  v8 = *(v148 - 8);
  v9 = MEMORY[0x28223BE20](v148);
  v147 = &v125 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v146 = &v125 - v11;
  v142 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
  v12 = *(v142 - 8);
  v13 = MEMORY[0x28223BE20](v142);
  v15 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v141 = &v125 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v145 = (&v125 - v19);
  result = MEMORY[0x28223BE20](v18);
  v144 = (&v125 - v21);
  v22 = a3[1];
  if (v22 < 1)
  {
    v24 = MEMORY[0x277D84F90];
LABEL_96:
    v8 = *v129;
    if (!*v129)
    {
      goto LABEL_136;
    }

    a4 = v24;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_130:
      result = sub_251BFABE4(a4);
    }

    v150 = result;
    a4 = *(result + 16);
    if (a4 >= 2)
    {
      v121 = v12;
      while (*a3)
      {
        v12 = *(result + 16 * a4);
        v122 = result;
        v123 = *(result + 16 * (a4 - 1) + 40);
        sub_251BFA434((*a3 + *(v121 + 72) * v12), (*a3 + *(v121 + 72) * *(result + 16 * (a4 - 1) + 32)), (*a3 + *(v121 + 72) * v123), v8);
        if (v5)
        {
        }

        if (v123 < v12)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = sub_251BFABE4(v122);
        }

        if (a4 - 2 >= *(v122 + 2))
        {
          goto LABEL_124;
        }

        v124 = &v122[16 * a4];
        *v124 = v12;
        *(v124 + 1) = v123;
        v150 = v122;
        sub_251BFAB58(a4 - 1);
        result = v150;
        a4 = *(v150 + 16);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_134;
    }
  }

  v23 = 0;
  v143 = (v8 + 8);
  v24 = MEMORY[0x277D84F90];
  v128 = a4;
  v130 = a3;
  v126 = v12;
  v125 = v15;
  while (1)
  {
    v133 = v24;
    v131 = v23;
    if (v23 + 1 >= v22)
    {
      v47 = v12;
      v12 = v23 + 1;
    }

    else
    {
      v138 = v22;
      v127 = v5;
      v25 = *(v12 + 72);
      v8 = *a3 + v25 * (v23 + 1);
      v149 = *a3;
      v26 = v149;
      v27 = v23;
      v28 = v144;
      sub_251BFB8EC(v8, v144, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v29 = v145;
      sub_251BFB8EC(v26 + v25 * v27, v145, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v30 = [*v28 endDate];
      v31 = v146;
      sub_251C6FFE4();

      v32 = [*v29 endDate];
      v33 = v147;
      sub_251C6FFE4();

      LODWORD(v139) = sub_251C6FFB4();
      v34 = *v143;
      v35 = v148;
      (*v143)(v33, v148);
      v137 = v34;
      v34(v31, v35);
      sub_251BFB9C4(v29, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      result = sub_251BFB9C4(v28, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
      v36 = v131 + 2;
      v140 = v25;
      v37 = v149 + v25 * (v131 + 2);
      while (1)
      {
        v12 = v138;
        if (v138 == v36)
        {
          break;
        }

        v38 = v144;
        sub_251BFB8EC(v37, v144, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        v39 = v145;
        sub_251BFB8EC(v8, v145, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        v40 = [*v38 endDate];
        v41 = v146;
        sub_251C6FFE4();

        v42 = [*v39 endDate];
        v43 = v147;
        sub_251C6FFE4();

        LOBYTE(v149) = sub_251C6FFB4() & 1;
        LODWORD(v149) = v149;
        v44 = v148;
        v45 = v8;
        v46 = v137;
        v137(v43, v148);
        v46(v41, v44);
        sub_251BFB9C4(v39, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        result = sub_251BFB9C4(v38, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        ++v36;
        v37 += v140;
        v8 = v45 + v140;
        if ((v139 & 1) != v149)
        {
          v12 = v36 - 1;
          break;
        }
      }

      a3 = v130;
      v23 = v131;
      v47 = v126;
      a4 = v128;
      v5 = v127;
      v48 = v125;
      if (v139)
      {
        if (v12 < v131)
        {
          goto LABEL_127;
        }

        if (v131 < v12)
        {
          v49 = v140 * (v12 - 1);
          v50 = v12 * v140;
          v51 = v12;
          v52 = v131 * v140;
          do
          {
            if (v23 != --v51)
            {
              v53 = *v130;
              if (!*v130)
              {
                goto LABEL_133;
              }

              v8 = v53 + v52;
              sub_251BFBAA4(v53 + v52, v48, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
              if (v52 < v49 || v8 >= (v53 + v50))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v52 != v49)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_251BFBAA4(v48, v53 + v49, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
            }

            ++v23;
            v49 -= v140;
            v50 -= v140;
            v52 += v140;
          }

          while (v23 < v51);
          v5 = v127;
          a3 = v130;
          v23 = v131;
          v47 = v126;
          a4 = v128;
        }
      }
    }

    v54 = a3[1];
    if (v12 < v54)
    {
      if (__OFSUB__(v12, v23))
      {
        goto LABEL_126;
      }

      if (v12 - v23 < a4)
      {
        if (__OFADD__(v23, a4))
        {
          goto LABEL_128;
        }

        if ((v23 + a4) >= v54)
        {
          v8 = a3[1];
        }

        else
        {
          v8 = v23 + a4;
        }

        if (v8 < v23)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v12 != v8)
        {
          break;
        }
      }
    }

    v8 = v12;
    v12 = v47;
    if (v8 < v23)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    v134 = v8;
    if (result)
    {
      v24 = v133;
    }

    else
    {
      result = sub_251C38DF0(0, *(v133 + 2) + 1, 1, v133);
      v24 = result;
    }

    v8 = *(v24 + 2);
    v55 = *(v24 + 3);
    v56 = v8 + 1;
    if (v8 >= v55 >> 1)
    {
      result = sub_251C38DF0((v55 > 1), v8 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v56;
    v57 = &v24[16 * v8];
    v58 = v134;
    *(v57 + 4) = v131;
    *(v57 + 5) = v58;
    if (!*v129)
    {
      goto LABEL_135;
    }

    if (v8)
    {
      v59 = *v129;
      while (1)
      {
        v8 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v60 = *(v24 + 4);
          v61 = *(v24 + 5);
          v70 = __OFSUB__(v61, v60);
          v62 = v61 - v60;
          v63 = v70;
LABEL_53:
          if (v63)
          {
            goto LABEL_114;
          }

          v76 = &v24[16 * v56];
          v78 = *v76;
          v77 = *(v76 + 1);
          v79 = __OFSUB__(v77, v78);
          v80 = v77 - v78;
          v81 = v79;
          if (v79)
          {
            goto LABEL_117;
          }

          v82 = &v24[16 * v8 + 32];
          v84 = *v82;
          v83 = *(v82 + 1);
          v70 = __OFSUB__(v83, v84);
          v85 = v83 - v84;
          if (v70)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v80, v85))
          {
            goto LABEL_121;
          }

          if (v80 + v85 >= v62)
          {
            if (v62 < v85)
            {
              v8 = v56 - 2;
            }

            goto LABEL_74;
          }

          goto LABEL_67;
        }

        v86 = &v24[16 * v56];
        v88 = *v86;
        v87 = *(v86 + 1);
        v70 = __OFSUB__(v87, v88);
        v80 = v87 - v88;
        v81 = v70;
LABEL_67:
        if (v81)
        {
          goto LABEL_116;
        }

        v89 = &v24[16 * v8];
        v91 = *(v89 + 4);
        v90 = *(v89 + 5);
        v70 = __OFSUB__(v90, v91);
        v92 = v90 - v91;
        if (v70)
        {
          goto LABEL_119;
        }

        if (v92 < v80)
        {
          goto LABEL_3;
        }

LABEL_74:
        a4 = v8 - 1;
        if (v8 - 1 >= v56)
        {
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
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (!*a3)
        {
          goto LABEL_132;
        }

        v97 = v24;
        v98 = *&v24[16 * a4 + 32];
        v99 = *&v24[16 * v8 + 40];
        sub_251BFA434((*a3 + *(v12 + 72) * v98), (*a3 + *(v12 + 72) * *&v24[16 * v8 + 32]), (*a3 + *(v12 + 72) * v99), v59);
        if (v5)
        {
        }

        if (v99 < v98)
        {
          goto LABEL_110;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v97 = sub_251BFABE4(v97);
        }

        if (a4 >= *(v97 + 2))
        {
          goto LABEL_111;
        }

        v100 = &v97[16 * a4];
        *(v100 + 4) = v98;
        *(v100 + 5) = v99;
        v150 = v97;
        a4 = &v150;
        result = sub_251BFAB58(v8);
        v24 = v150;
        v56 = *(v150 + 16);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v64 = &v24[16 * v56 + 32];
      v65 = *(v64 - 64);
      v66 = *(v64 - 56);
      v70 = __OFSUB__(v66, v65);
      v67 = v66 - v65;
      if (v70)
      {
        goto LABEL_112;
      }

      v69 = *(v64 - 48);
      v68 = *(v64 - 40);
      v70 = __OFSUB__(v68, v69);
      v62 = v68 - v69;
      v63 = v70;
      if (v70)
      {
        goto LABEL_113;
      }

      v71 = &v24[16 * v56];
      v73 = *v71;
      v72 = *(v71 + 1);
      v70 = __OFSUB__(v72, v73);
      v74 = v72 - v73;
      if (v70)
      {
        goto LABEL_115;
      }

      v70 = __OFADD__(v62, v74);
      v75 = v62 + v74;
      if (v70)
      {
        goto LABEL_118;
      }

      if (v75 >= v67)
      {
        v93 = &v24[16 * v8 + 32];
        v95 = *v93;
        v94 = *(v93 + 1);
        v70 = __OFSUB__(v94, v95);
        v96 = v94 - v95;
        if (v70)
        {
          goto LABEL_122;
        }

        if (v62 < v96)
        {
          v8 = v56 - 2;
        }

        goto LABEL_74;
      }

      goto LABEL_53;
    }

LABEL_3:
    v22 = a3[1];
    v23 = v134;
    a4 = v128;
    if (v134 >= v22)
    {
      goto LABEL_96;
    }
  }

  v127 = v5;
  v101 = v47;
  v102 = *a3;
  v103 = *(v101 + 72);
  v104 = *a3 + v103 * (v12 - 1);
  v139 = -v103;
  v140 = v102;
  v105 = v23 - v12;
  v132 = v103;
  v106 = v102 + v12 * v103;
  v134 = v8;
LABEL_86:
  v137 = v104;
  v138 = v12;
  v135 = v106;
  v136 = v105;
  v107 = v106;
  v108 = v105;
  while (1)
  {
    v149 = v108;
    v109 = v144;
    sub_251BFB8EC(v107, v144, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    v110 = v145;
    sub_251BFB8EC(v104, v145, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    v111 = [*v109 endDate];
    v112 = v146;
    sub_251C6FFE4();

    v113 = [*v110 endDate];
    v114 = v147;
    sub_251C6FFE4();

    a4 = sub_251C6FFB4();
    v115 = *v143;
    v116 = v114;
    v117 = v148;
    (*v143)(v116, v148);
    v115(v112, v117);
    sub_251BFB9C4(v110, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    result = sub_251BFB9C4(v109, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    if ((a4 & 1) == 0)
    {
LABEL_85:
      v12 = v138 + 1;
      v104 = v137 + v132;
      v105 = v136 - 1;
      v106 = v135 + v132;
      v8 = v134;
      if (v138 + 1 != v134)
      {
        goto LABEL_86;
      }

      v5 = v127;
      a3 = v130;
      v12 = v126;
      if (v134 < v131)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    v118 = v149;
    if (!v140)
    {
      break;
    }

    a4 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData;
    v119 = v141;
    sub_251BFBAA4(v107, v141, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    swift_arrayInitWithTakeFrontToBack();
    sub_251BFBAA4(v119, v104, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    v104 += v139;
    v107 += v139;
    v120 = __CFADD__(v118, 1);
    v108 = v118 + 1;
    if (v120)
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_132:
  __break(1u);
LABEL_133:
  __break(1u);
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
  return result;
}

uint64_t sub_251BFA434(char *a1, char *a2, char *a3, char *a4)
{
  v65 = a4;
  v62 = sub_251C70014();
  v7 = *(v62 - 8);
  v8 = MEMORY[0x28223BE20](v62);
  v61 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v60 = &v51 - v10;
  v58 = type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(0);
  v11 = MEMORY[0x28223BE20](v58);
  v59 = (&v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x28223BE20](v11);
  v64 = (&v51 - v14);
  v16 = *(v15 + 72);
  if (!v16)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_61;
  }

  v17 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v16 == -1)
  {
    goto LABEL_62;
  }

  v18 = (a2 - a1) / v16;
  v68 = a1;
  v67 = v65;
  if (v18 >= v17 / v16)
  {
    v20 = v17 / v16 * v16;
    if (v65 < a2 || &a2[v20] <= v65)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v65 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v34 = &v65[v20];
    if (v20 >= 1)
    {
      v35 = -v16;
      v53 = (v7 + 8);
      v54 = a1;
      v36 = &v65[v20];
      v55 = v35;
      do
      {
        v51 = v34;
        v37 = a2;
        v38 = &a2[v35];
        v56 = v37;
        v57 = v38;
        while (1)
        {
          if (v37 <= a1)
          {
            v68 = v37;
            v66 = v51;
            goto LABEL_59;
          }

          v40 = a3;
          v52 = v34;
          v63 = &a3[v35];
          v41 = v36 + v35;
          v42 = v64;
          sub_251BFB8EC(v41, v64, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
          v43 = v59;
          sub_251BFB8EC(v38, v59, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
          v44 = [*v42 endDate];
          v45 = v60;
          sub_251C6FFE4();

          v46 = [*v43 endDate];
          v47 = v61;
          sub_251C6FFE4();

          LOBYTE(v46) = sub_251C6FFB4();
          v48 = *v53;
          v49 = v47;
          v50 = v62;
          (*v53)(v49, v62);
          v48(v45, v50);
          sub_251BFB9C4(v43, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
          sub_251BFB9C4(v64, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
          if (v46)
          {
            break;
          }

          v34 = v41;
          a3 = v63;
          if (v40 < v36 || v63 >= v36)
          {
            swift_arrayInitWithTakeFrontToBack();
            v38 = v57;
            a1 = v54;
          }

          else
          {
            v38 = v57;
            a1 = v54;
            if (v40 != v36)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v36 = v41;
          v39 = v41 > v65;
          v35 = v55;
          v37 = v56;
          if (!v39)
          {
            a2 = v56;
            goto LABEL_58;
          }
        }

        a3 = v63;
        if (v40 < v56 || v63 >= v56)
        {
          a2 = v57;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v54;
          v35 = v55;
          v34 = v52;
        }

        else
        {
          a2 = v57;
          a1 = v54;
          v35 = v55;
          v34 = v52;
          if (v40 != v56)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v36 > v65);
    }

LABEL_58:
    v68 = a2;
    v66 = v34;
  }

  else
  {
    v19 = v18 * v16;
    if (v65 < a1 || &a1[v19] <= v65)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v65 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v57 = &v65[v19];
    v66 = &v65[v19];
    if (v19 >= 1 && a2 < a3)
    {
      v55 = v16;
      v56 = (v7 + 8);
      v63 = a3;
      do
      {
        v22 = v64;
        sub_251BFB8EC(a2, v64, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        v23 = v59;
        sub_251BFB8EC(v65, v59, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        v24 = [*v22 endDate];
        v25 = v60;
        sub_251C6FFE4();

        v26 = [*v23 endDate];
        v27 = v61;
        sub_251C6FFE4();

        LOBYTE(v26) = sub_251C6FFB4();
        v28 = *v56;
        v29 = v27;
        v30 = v62;
        (*v56)(v29, v62);
        v28(v25, v30);
        sub_251BFB9C4(v23, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        sub_251BFB9C4(v22, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
        if (v26)
        {
          v31 = v55;
          if (a1 < a2 || a1 >= &a2[v55])
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v31;
            v32 = v63;
          }

          else
          {
            v32 = v63;
            if (a1 == a2)
            {
              a2 += v55;
            }

            else
            {
              swift_arrayInitWithTakeBackToFront();
              a2 += v31;
            }
          }
        }

        else
        {
          v31 = v55;
          v33 = &v65[v55];
          if (a1 < v65 || a1 >= v33)
          {
            swift_arrayInitWithTakeFrontToBack();
            v32 = v63;
          }

          else
          {
            v32 = v63;
            if (a1 != v65)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v67 = v33;
          v65 = v33;
        }

        a1 += v31;
        v68 = a1;
      }

      while (v65 < v57 && a2 < v32);
    }
  }

LABEL_59:
  sub_251BFAC10(&v68, &v67, &v66, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
  return 1;
}

uint64_t sub_251BFAB58(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_251BFABE4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_251BFAC10(unint64_t *a1, unint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = *a1;
  v5 = *a2;
  v6 = *a3;
  result = a4(0);
  v8 = *(*(result - 8) + 72);
  if (!v8)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v6 - v5 == 0x8000000000000000 && v8 == -1)
  {
    goto LABEL_17;
  }

  if (v4 < v5 || v4 >= v5 + (v6 - v5) / v8 * v8)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v4 != v5)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_251BFACF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_251BFBB0C(0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

uint64_t sub_251BFAE40(uint64_t a1)
{
  v2 = sub_251C70074();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_251BFC204(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  result = MEMORY[0x25308D030](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_251BF5298(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_251BFAFDC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) - 8);
  result = sub_251BF33B0(*a1, *(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)));
  *a2 = result;
  return result;
}

void sub_251BFB07C(uint64_t a1)
{
  if (!qword_27F47C188)
  {
    sub_251A821D4(255);
    sub_251BFC204(&qword_27F47C190, sub_251A821D4, MEMORY[0x277D83970]);
    v1 = sub_251C70904();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C188);
    }
  }
}

void sub_251BFB12C(uint64_t a1)
{
  if (!qword_27F47C198)
  {
    sub_251BF521C(255, &qword_27F47C1A0, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData, MEMORY[0x277CBCD88]);
    sub_251BFB258(255);
    sub_251BFB314(&qword_27F47C1B8, &qword_27F47C1A0, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData);
    sub_251BFC204(&qword_27F47C1C0, sub_251BFB258, MEMORY[0x277CBCBA0]);
    v1 = sub_251C708D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C198);
    }
  }
}

void sub_251BFB258(uint64_t a1)
{
  if (!qword_27F47C1A8)
  {
    sub_251BFB07C(255);
    sub_251A82284();
    sub_251BFC204(&qword_27F47C1B0, sub_251BFB07C, MEMORY[0x277CBCD18]);
    v1 = sub_251C707E4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C1A8);
    }
  }
}

uint64_t sub_251BFB314(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    sub_251BF521C(255, a2, a3, MEMORY[0x277CBCD88]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_251BFB378(uint64_t a1)
{
  if (!qword_27F47C1C8)
  {
    sub_251BFB12C(255);
    sub_251BFC204(&qword_27F47C1D0, sub_251BFB12C, MEMORY[0x277CBCCE0]);
    v1 = sub_251C708C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C1C8);
    }
  }
}

void sub_251BFB40C(uint64_t a1)
{
  if (!qword_27F47C1D8)
  {
    sub_251BFB378(255);
    type metadata accessor for ClinicalSharingQueryOutput(255);
    sub_251BFC204(&qword_27F47C1E0, sub_251BFB378, MEMORY[0x277CBCCD0]);
    v1 = sub_251C70784();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C1D8);
    }
  }
}

uint64_t objectdestroyTm_8()
{
  v1 = (type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = (*(*v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = v0 + v3;

  v6 = v1[7];
  v7 = sub_251C6FAE4();
  (*(*(v7 - 8) + 8))(v5 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + 8, v2 | 7);
}

void sub_251BFB5CC(void **a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for ClinicalSharingElectrocardiogramQuery(0);

  sub_251BF39D8(a1, a2);
}

void sub_251BFB6EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_251BFB750(uint64_t a1)
{
  if (!qword_27F47C1F0)
  {
    sub_251C70074();
    sub_251BFC204(&qword_2813E74E0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    v1 = sub_251C71684();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C1F0);
    }
  }
}

void sub_251BFB7E4(uint64_t a1)
{
  if (!qword_27F47C1F8)
  {
    sub_251C70074();
    sub_251BFB858(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F47C1F8);
    }
  }
}

void sub_251BFB858(uint64_t a1)
{
  if (!qword_2813E1DF0)
  {
    sub_251C702E4();
    sub_251BFC204(&qword_2813E74C0, MEMORY[0x277D11300], MEMORY[0x277D11308]);
    v1 = sub_251C71294();
    if (!v2)
    {
      atomic_store(v1, &qword_2813E1DF0);
    }
  }
}

uint64_t sub_251BFB8EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BFB954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BFB6EC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BFB9C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_251BFBA24(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251BFB6EC(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251BFBAA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251BFBB0C(uint64_t a1)
{
  if (!qword_27F47C200)
  {
    sub_251BFBF64(255, &qword_27F47C208, MEMORY[0x277D83B88], MEMORY[0x277D83BA0], MEMORY[0x277D83D00]);
    v1 = sub_251C719B4();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C200);
    }
  }
}

void sub_251BFBB90(uint64_t a1)
{
  if (!qword_27F47C220)
  {
    sub_251BFBC3C(255);
    type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData(255);
    sub_251BFC204(&qword_27F47C230, sub_251BFBC3C, MEMORY[0x277CBCD90]);
    v1 = sub_251C70804();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C220);
    }
  }
}

void sub_251BFBC3C(uint64_t a1)
{
  if (!qword_27F47C228)
  {
    sub_251B0E638(255, &qword_2813E1E38, MEMORY[0x277D83A90], MEMORY[0x277D83940]);
    sub_251A82284();
    v1 = sub_251C70974();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C228);
    }
  }
}

unint64_t sub_251BFBCD0()
{
  result = qword_27F47C238;
  if (!qword_27F47C238)
  {
    sub_251BF521C(255, &qword_27F47C218, type metadata accessor for ClinicalSharingElectrocardiogramQuery.ElectrocardiogramData, MEMORY[0x277CBCF38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C238);
  }

  return result;
}

void sub_251BFBD58(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = *(type metadata accessor for ClinicalSharingElectrocardiogramQuery(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_251BF4978(a1, v2 + v6, v7, a2);
}

uint64_t sub_251BFBE04(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_251BFBFB8();
  result = MEMORY[0x25308D030](v2, &type metadata for ClinicalSharingNodeMetadata, v3);
  v13 = result;
  if (v2)
  {
    v5 = (a1 + 56);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      v9 = *(v5 - 3);
      v8 = *(v5 - 2);

      sub_251A858C4(v7, v6);
      sub_251BF59A8(v12, v9, v8, v7, v6);
      v10 = v12[2];
      v11 = v12[3];

      sub_251A83028(v10, v11);
      v5 += 4;
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_251BFBECC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x25308D030](v2, MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_251BF5858(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_251BFBF64(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_251BFBFB8()
{
  result = qword_2813E37C0;
  if (!qword_2813E37C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813E37C0);
  }

  return result;
}

void sub_251BFC00C(uint64_t a1)
{
  if (!qword_27F47C250)
  {
    sub_251BFBFB8();
    v1 = sub_251C71684();
    if (!v2)
    {
      atomic_store(v1, &qword_27F47C250);
    }
  }
}

uint64_t sub_251BFC068(uint64_t a1)
{
  v2 = sub_251C701C4();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_251BFC204(&qword_27F47A048, MEMORY[0x277CC99D0], MEMORY[0x277CC99D8]);
  result = MEMORY[0x25308D030](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_251BF5EFC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_251BFC204(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t __swift_get_extra_inhabitant_indexTm_1(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *__swift_store_extra_inhabitant_indexTm_1(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 20);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t sub_251BFC3CC(uint64_t a1)
{
  result = sub_251A8223C(319, &qword_27F47C268, 0x277CCD378);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PBECGMeasurement(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

id sub_251BFC488(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, int a5, uint64_t a6, uint64_t a7, unint64_t a8, char *a9, char *a10)
{
  v206 = a8;
  v204 = a7;
  v209 = a6;
  v205 = a5;
  v212 = a3;
  v213 = a4;
  v170 = a2;
  v169 = a1;
  sub_251BFDF78(0, &qword_27F47C270, MEMORY[0x277CC5408]);
  MEMORY[0x28223BE20](v10 - 8);
  v173 = &v166 - v11;
  v168 = sub_251C70D84();
  v167 = *(v168 - 8);
  MEMORY[0x28223BE20](v168);
  v174 = &v166 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_251C70D54();
  v199 = *(v200 - 8);
  v13 = MEMORY[0x28223BE20](v200);
  v176 = &v166 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v198 = &v166 - v15;
  v16 = sub_251C70D14();
  MEMORY[0x28223BE20](v16 - 8);
  v197 = &v166 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_251C70C94();
  v184 = *(v185 - 8);
  MEMORY[0x28223BE20](v185);
  v207 = &v166 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = sub_251C70DC4();
  v195 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v194 = &v166 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v210 = type metadata accessor for PBAssociatedData(0);
  v215 = *(v210 - 8);
  v20 = MEMORY[0x28223BE20](v210);
  v193 = &v166 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v208 = &v166 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v166 - v25;
  MEMORY[0x28223BE20](v24);
  v190 = &v166 - v27;
  v188 = type metadata accessor for PBNode(0);
  MEMORY[0x28223BE20](v188);
  v211 = &v166 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_251C70DA4();
  v171 = *(v172 - 8);
  MEMORY[0x28223BE20](v172);
  v175 = &v166 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v202 = type metadata accessor for PBPlainText;
  sub_251BFDF78(0, &qword_27F47C278, type metadata accessor for PBPlainText);
  MEMORY[0x28223BE20](v30 - 8);
  v178 = &v166 - v31;
  v203 = MEMORY[0x277CC53B0];
  sub_251BFDF78(0, &qword_27F47C280, MEMORY[0x277CC53B0]);
  v33 = MEMORY[0x28223BE20](v32 - 8);
  v191 = &v166 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = MEMORY[0x28223BE20](v33);
  v192 = &v166 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v187 = &v166 - v38;
  v39 = MEMORY[0x28223BE20](v37);
  v189 = &v166 - v40;
  MEMORY[0x28223BE20](v39);
  v42 = &v166 - v41;
  v43 = sub_251C70CF4();
  v216 = *(v43 - 8);
  v44 = MEMORY[0x28223BE20](v43);
  v180 = &v166 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = MEMORY[0x28223BE20](v44);
  v179 = &v166 - v47;
  MEMORY[0x28223BE20](v46);
  v182 = &v166 - v48;
  v49 = type metadata accessor for PBPlainText(0);
  v50 = *(v49 - 8);
  v51 = MEMORY[0x28223BE20](v49);
  v177 = &v166 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v51);
  v54 = &v166 - v53;
  v55 = type metadata accessor for PBPayload(0);
  MEMORY[0x28223BE20](v55);
  v57 = (&v166 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0));
  v214 = xmmword_251C745D0;
  *v57 = xmmword_251C745D0;
  sub_251C703A4();
  v186 = v55;
  v58 = *(v55 + 24);
  v181 = v50;
  v59 = *(v50 + 56);
  v59(v57 + v58, 1, 1, v49);
  sub_251BFE1B8(v212, v54, type metadata accessor for PBPlainText);
  sub_251BFDEB4(v57 + v58, &qword_27F47C278, v202);
  v60 = v54;
  v61 = v43;
  v62 = v216;
  sub_251BFDF10(v60, v57 + v58, type metadata accessor for PBPlainText);
  v212 = v57;
  v63 = v57 + v58;
  v64 = v49;
  v59(v63, 0, 1, v49);
  sub_251BFDE48(v209, v42, &qword_27F47C280, v203);
  v65 = *(v62 + 48);
  v203 = (v62 + 48);
  v202 = v65;
  if ((v65)(v42, 1, v61) == 1)
  {
    sub_251BFDEB4(v42, &qword_27F47C280, MEMORY[0x277CC53B0]);
LABEL_10:
    v77 = v211;
    v78 = v61;
    goto LABEL_11;
  }

  v66 = v182;
  (*(v62 + 32))(v182, v42, v61);
  if (v213 != 1)
  {
    (*(v62 + 8))(v66, v61);
    goto LABEL_10;
  }

  v67 = v178;
  sub_251BFDE48(v212 + v58, v178, &qword_27F47C278, type metadata accessor for PBPlainText);
  v68 = v181 + 48;
  v69 = *(v181 + 6);
  v70 = v64;
  v71 = v69(v67, 1, v64);
  v72 = v211;
  if (v71 == 1)
  {
    v181 = v68;
    v73 = v61;
    v74 = v177;
    sub_251C703A4();
    v75 = *(v70 + 20);
    if (qword_27F478468 != -1)
    {
      swift_once();
    }

    *(v74 + v75) = qword_27F4794E0;
    v76 = v69(v67, 1, v70);

    v61 = v73;
    v62 = v216;
    v72 = v211;
    if (v76 != 1)
    {
      sub_251BFDEB4(v67, &qword_27F47C278, type metadata accessor for PBPlainText);
    }
  }

  else
  {
    v74 = v177;
    sub_251BFDF10(v67, v177, type metadata accessor for PBPlainText);
  }

  sub_251BFE220(&qword_27F479530, type metadata accessor for PBPlainText, &unk_251C755C8);
  v137 = v201;
  v139 = sub_251C70594();
  if (v137)
  {
    sub_251BFDFCC(v74, type metadata accessor for PBPlainText);
    (*(v62 + 8))(v66, v61);
    goto LABEL_24;
  }

  v144 = v138;
  v183 = v61;
  sub_251BFDFCC(v74, type metadata accessor for PBPlainText);
  v219 = v139;
  v220 = v144;
  sub_251BFE02C();
  v145 = v175;
  sub_251C70CE4();
  v201 = 0;
  v150 = sub_251C70D94();
  v151 = v145;
  v153 = v152;
  sub_251A83028(v139, v144);
  (*(v171 + 8))(v151, v172);
  v77 = v72;
  v78 = v183;
  (*(v62 + 8))(v182, v183);
  v154 = v212;
  sub_251A83028(*v212, v212[1]);
  *v154 = v150;
  v154[1] = v153;
LABEL_11:
  v79 = v193;
  v193 = a9;
  v80 = v214;
  *v77 = v214;
  *(v77 + 1) = v80;
  *(v77 + 4) = 0;
  v77[40] = 1;
  *(v77 + 6) = 0;
  v77[56] = 1;
  *(v77 + 8) = 0;
  *(v77 + 9) = 0xE000000000000000;
  v81 = v188;
  sub_251C703A4();
  v82 = v81[10];
  v83 = *(v215 + 56);
  v215 += 56;
  v188 = v83;
  (v83)(&v77[v82], 1, 1, v210);
  v84 = v189;
  (*(v216 + 56))(v189, 1, 1, v78);
  v85 = v214;
  *(v26 + 1) = v214;
  *(v26 + 2) = v85;
  *(v26 + 8) = 0;
  v26[72] = 1;
  sub_251C703A4();
  v86 = v193;
  if (a10)
  {
    v87 = a10;
  }

  else
  {
    v86 = 0;
    v87 = 0xE000000000000000;
  }

  v182 = v86;
  *v26 = v86;
  *(v26 + 1) = v87;
  v181 = v87;
  v88 = *(v26 + 2);
  v89 = *(v26 + 3);
  v193 = a10;

  v90 = v204;
  v91 = v206;
  sub_251A858C4(v204, v206);
  sub_251A83028(v88, v89);
  *(v26 + 2) = v90;
  *(v26 + 3) = v91;
  v92 = v84;
  *(v26 + 6) = v213;
  v26[56] = v205 & 1;
  v93 = v187;
  sub_251BFDE48(v84, v187, &qword_27F47C280, MEMORY[0x277CC53B0]);
  v94 = (v202)(v93, 1, v78);
  v183 = v78;
  if (v94 == 1)
  {
    v95 = MEMORY[0x277CC53B0];
    sub_251BFDEB4(v84, &qword_27F47C280, MEMORY[0x277CC53B0]);
    sub_251BFDEB4(v93, &qword_27F47C280, v95);
  }

  else
  {
    v96 = v216;
    v97 = v179;
    (*(v216 + 32))(v179, v93, v78);
    v98 = v194;
    v99 = sub_251C70CA4();
    v187 = MEMORY[0x25308CB60](v99);
    v101 = v100;
    (*(v195 + 8))(v98, v196);
    (*(v96 + 8))(v97, v78);
    sub_251BFDEB4(v92, &qword_27F47C280, MEMORY[0x277CC53B0]);
    sub_251A83028(*(v26 + 4), *(v26 + 5));
    *(v26 + 4) = v187;
    *(v26 + 5) = v101;
  }

  v102 = v190;
  sub_251BFDF10(v26, v190, type metadata accessor for PBAssociatedData);
  v103 = v211;
  sub_251BFDEB4(&v211[v82], &qword_27F47B9A8, type metadata accessor for PBAssociatedData);
  sub_251BFDF10(v102, v103 + v82, type metadata accessor for PBAssociatedData);
  (v188)(v103 + v82, 0, 1, v210);
  v104 = MEMORY[0x277CC53B0];
  v105 = v192;
  sub_251BFDE48(v209, v192, &qword_27F47C280, MEMORY[0x277CC53B0]);
  v106 = v214;
  *(v79 + 16) = v214;
  *(v79 + 32) = v106;
  *(v79 + 64) = 0;
  *(v79 + 72) = 1;
  sub_251C703A4();
  v107 = v181;
  *v79 = v182;
  *(v79 + 8) = v107;
  v108 = *(v79 + 16);
  v109 = *(v79 + 24);

  v110 = v204;
  v111 = v206;
  sub_251A858C4(v204, v206);
  sub_251A83028(v108, v109);
  *(v79 + 16) = v110;
  *(v79 + 24) = v111;
  *(v79 + 48) = v213;
  *(v79 + 56) = v205 & 1;
  v112 = v191;
  sub_251BFDE48(v105, v191, &qword_27F47C280, v104);
  v113 = v183;
  if ((v202)(v112, 1, v183) == 1)
  {
    v114 = MEMORY[0x277CC53B0];
    sub_251BFDEB4(v105, &qword_27F47C280, MEMORY[0x277CC53B0]);
    sub_251BFDEB4(v112, &qword_27F47C280, v114);
  }

  else
  {
    v115 = v216;
    v116 = v180;
    (*(v216 + 32))(v180, v112, v113);
    v117 = v194;
    v118 = sub_251C70CA4();
    v119 = MEMORY[0x25308CB60](v118);
    v121 = v120;
    (*(v195 + 8))(v117, v196);
    (*(v115 + 8))(v116, v113);
    sub_251BFDEB4(v105, &qword_27F47C280, MEMORY[0x277CC53B0]);
    sub_251A83028(*(v79 + 32), *(v79 + 40));
    *(v79 + 32) = v119;
    *(v79 + 40) = v121;
  }

  v122 = v200;
  sub_251BFDF10(v79, v208, type metadata accessor for PBAssociatedData);
  sub_251C70D04();
  sub_251C70C84();
  v123 = v198;
  sub_251C70D44();
  v221 = v122;
  v222 = sub_251BFE220(&qword_27F47C288, MEMORY[0x277CC5408], MEMORY[0x277CC53F8]);
  v124 = __swift_allocate_boxed_opaque_existential_1(&v219);
  v125 = v199;
  v126 = *(v199 + 16);
  v126(v124, v123, v122);
  __swift_project_boxed_opaque_existential_1(&v219, v221);
  v127 = v201;
  sub_251C6FCE4();
  v70 = v127;
  v216 = *(v125 + 8);
  (v216)(v123, v122);
  v128 = v217;
  v129 = v218;
  __swift_destroy_boxed_opaque_existential_1(&v219);
  sub_251A83028(*v103, *(v103 + 8));
  *v103 = v128;
  *(v103 + 8) = v129;
  *(v103 + 48) = 1;
  *(v103 + 56) = 1;
  *(v103 + 32) = 2;
  *(v103 + 40) = 1;
  result = [objc_opt_self() currentOSVersion];
  if (result)
  {
    v131 = result;
    v132 = sub_251C70F14();
    v134 = v133;

    *(v103 + 64) = v132;
    *(v103 + 72) = v134;
    sub_251BFE220(&qword_27F47C290, type metadata accessor for PBPayload, &unk_251C87780);
    v135 = sub_251C70594();
    if (!v127)
    {
      *&v214 = v135;
      v215 = v136;
      sub_251BFE220(&qword_27F47B968, type metadata accessor for PBAssociatedData, &unk_251C83808);
      v140 = sub_251C70594();
      v142 = v141;
      v143 = *(v103 + 8);
      v219 = *v103;
      v220 = v143;
      sub_251A858C4(v219, v143);
      sub_251BFE02C();
      sub_251C70D34();
      v219 = v214;
      v220 = v215;
      v213 = v142;
      v146 = v173;
      v147 = v200;
      v126(v173, v176, v200);
      (*(v199 + 56))(v146, 0, 1, v147);
      v148 = v140;
      v217 = v140;
      v218 = v213;
      v149 = v174;
      sub_251C70D24();
      sub_251BFDEB4(v146, &qword_27F47C270, MEMORY[0x277CC5408]);
      v210 = 0;
      v155 = sub_251C70D64();
      v157 = v156;
      v158 = sub_251C70D74();
      v160 = v159;
      v217 = v155;
      v218 = v157;
      v221 = MEMORY[0x277CC9318];
      v222 = MEMORY[0x277CC9300];
      v219 = v158;
      v220 = v159;
      v161 = __swift_project_boxed_opaque_existential_1(&v219, MEMORY[0x277CC9318]);
      v162 = *v161;
      v209 = v161[1];
      sub_251A858C4(v155, v157);
      sub_251A858C4(v158, v160);
      sub_251BFE080(v162, v209, &v217);
      sub_251A83028(v158, v160);
      sub_251A83028(v155, v157);
      sub_251A83028(v148, v213);
      sub_251A83028(v214, v215);
      (*(v167 + 8))(v149, v168);
      (v216)(v176, v200);
      __swift_destroy_boxed_opaque_existential_1(&v219);
      v163 = v217;
      v164 = v218;
      sub_251A83028(*(v103 + 16), *(v103 + 24));
      *(v103 + 16) = v163;
      *(v103 + 24) = v164;
      sub_251BFE1B8(v103, v169, type metadata accessor for PBNode);
      (*(v184 + 32))(v170, v207, v185);
      v165 = v208;
      v70 = *(v208 + 32);
      sub_251A858C4(v70, *(v208 + 40));
      sub_251BFDFCC(v165, type metadata accessor for PBAssociatedData);
      sub_251BFDFCC(v103, type metadata accessor for PBNode);
      sub_251BFDFCC(v212, type metadata accessor for PBPayload);
      return v70;
    }

    (*(v184 + 8))(v207, v185);
    sub_251BFDFCC(v208, type metadata accessor for PBAssociatedData);
    sub_251BFDFCC(v103, type metadata accessor for PBNode);
LABEL_24:
    sub_251BFDFCC(v212, type metadata accessor for PBPayload);
    return v70;
  }

  __break(1u);
  return result;
}

uint64_t sub_251BFDE48(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_251BFDF78(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_251BFDEB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_251BFDF78(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_251BFDF10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_251BFDF78(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_251C71574();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_251BFDFCC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_251BFE02C()
{
  result = qword_27F47C298;
  if (!qword_27F47C298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F47C298);
  }

  return result;
}

uint64_t sub_251BFE080(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_251C6FEB4();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_251BFE268(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_251BFE268(v4, v5);
  }

  return sub_251C6FEB4();
}

uint64_t sub_251BFE1B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_251BFE220(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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