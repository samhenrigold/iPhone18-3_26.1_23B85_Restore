uint64_t sub_1B0B3BB5C(int *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(a1 + 10);
  v48[8] = *(a1 + 9);
  v48[9] = v11;
  v48[10] = *(a1 + 11);
  v49 = *(a1 + 192);
  v12 = *(a1 + 6);
  v48[4] = *(a1 + 5);
  v48[5] = v12;
  v13 = *(a1 + 8);
  v48[6] = *(a1 + 7);
  v48[7] = v13;
  v14 = *(a1 + 2);
  v48[0] = *(a1 + 1);
  v48[1] = v14;
  v15 = *(a1 + 4);
  v48[2] = *(a1 + 3);
  v48[3] = v15;
  result = sub_1B07AB810(v48);
  if (result == 1 && !*(*(a1 + 25) + 16))
  {
    v17 = *(a1 + 22);
    v50[8] = *(a1 + 21);
    v50[9] = v17;
    v50[10] = *(a1 + 23);
    v51 = *(a1 + 384);
    v18 = *(a1 + 18);
    v50[4] = *(a1 + 17);
    v50[5] = v18;
    v19 = *(a1 + 20);
    v50[6] = *(a1 + 19);
    v50[7] = v19;
    v20 = *(a1 + 14);
    v50[0] = *(a1 + 13);
    v50[1] = v20;
    v21 = *(a1 + 16);
    v50[2] = *(a1 + 15);
    v50[3] = v21;
    result = sub_1B07AB810(v50);
    if (result == 1 && !*(a1 + 54) && (a1[134] & 1) != 0)
    {
      v22 = *(a1 + 64);
      v23 = a1[2];
      LOBYTE(v47[0]) = *(a1 + 12);
      v39 = v47[0];
      v40 = v23;
      sub_1B0B3BE00(v22, v23 | (LOBYTE(v47[0]) << 32));
      if (v22)
      {
        v24 = 0x100000000;
        if (!v5[148])
        {
          v24 = 0;
        }

        v25 = 0x1000000;
        if (!v5[147])
        {
          v25 = 0;
        }

        v26 = 0x10000;
        if (!v5[146])
        {
          v26 = 0;
        }

        v27 = 256;
        if (!v5[145])
        {
          v27 = 0;
        }

        v28 = FlagDecoder.decode(_:)(v22, v27 | v5[144] | v26 | v25 | v24);
        LOBYTE(v22) = v29;
      }

      else
      {
        v28 = 2;
      }

      v30 = *(a1 + 65);
      v46 = v30;
      if (v28 != 2 || v30)
      {
        sub_1B03B5C80(&v46, v47, &qword_1EB6E4898, &qword_1B0EC6340);
        v31 = *a1;
        v32 = *(a1 + 4);
        v33 = *(a1 + 69);
        v34 = *(a1 + 560);
        *&v41 = v28;
        BYTE8(v41) = v22;
        *&v42 = v30;
        DWORD2(v42) = v31;
        BYTE12(v42) = v32;
        LODWORD(v43) = v40;
        BYTE4(v43) = v39;
        *(&v43 + 1) = v33;
        LOBYTE(v44) = v34;
        DWORD2(v44) = a2;
        *&v45 = a3;
        *(&v45 + 1) = a4;
        v47[3] = v44;
        v47[4] = v45;
        v47[1] = v42;
        v47[2] = v43;
        v47[0] = v41;
        v35 = &v5[*(type metadata accessor for MailboxSyncState(0) + 48)];
        v36 = *(v35 + 24);
        v37 = *(v35 + 32);
        __swift_mutable_project_boxed_opaque_existential_1(v35, v36);
        v38 = *(v37 + 16);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
        v38(v47, a5, v36, v37);
        return sub_1B0B3C034(&v41);
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_1B0B3BE00(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for MessageBatches(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    if ((a2 & 0x100000000) == 0)
    {
      v9 = *(type metadata accessor for MailboxSyncState(0) + 60);
      if (!(*(v6 + 48))(v2 + v9, 1, v5))
      {
        sub_1B03BD4C8(v2 + v9, v8, type metadata accessor for MessageBatches);
        v10 = *(v8 + 1);
        v11 = *(v10 + 16);
        if (v11)
        {
          v12 = *(v10 + 8 * v11 + 24);
        }

        else
        {
          v12 = 1;
        }

        sub_1B03BD5FC(v8, type metadata accessor for MessageBatches);
        if (v12 > a2)
        {
          sub_1B03BDE74(0xEu);
          sub_1B03BDD7C(&v14, 14);
        }
      }
    }
  }
}

BOOL sub_1B0B3BF68(_BOOL8 result, char a2, uint64_t a3, char a4)
{
  if (a2)
  {
    if (a2 != 1)
    {
      return a4 == 2 && !a3;
    }

    if (a4 != 1)
    {
      return 0;
    }

    if (((a3 | result) & 0x8000000000000000) == 0)
    {
      return a3 == result;
    }

    __break(1u);
  }

  if (a4)
  {
    return 0;
  }

  if (((a3 | result) & 0x8000000000000000) == 0)
  {
    return a3 == result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B3BFD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownloadPerPass(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B3C088(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    v5 = 0;
    v7 = result;
    v4[0] = swift_getAssociatedTypeWitness();
    v4[1] = swift_getAssociatedTypeWitness();
    v4[2] = swift_getAssociatedConformanceWitness();
    v4[3] = swift_getAssociatedConformanceWitness();
    result = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap(319, v4);
    if (v3 <= 0x3F)
    {
      v6 = 0;
      v8 = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy36_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B0B3C1EC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 36))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B0B3C234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 36) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 36) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B0B3C2AC(uint64_t a1, uint64_t a2)
{
  swift_getDynamicType();
  swift_getMetatypeMetadata();
  v4 = sub_1B0E44B88();
  v5 = (*(a2 + 96))(a1, a2);
  if (v6)
  {
    MEMORY[0x1B2726E80](v5);

    MEMORY[0x1B2726E80](45, 0xE100000000000000);
  }

  return v4;
}

uint64_t sub_1B0B3C384()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 32);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  sub_1B0E46C78();
  MEMORY[0x1B2728D70](v2 | (v2 << 32));
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B3C3F4()
{
  v1 = *(v0 + 32);
  MEMORY[0x1B2728D70](*(v0 + 8));
  sub_1B0E46C78();
  return MEMORY[0x1B2728D70](v1 | (v1 << 32));
}

uint64_t sub_1B0B3C440(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 32);
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  sub_1B0E46C78();
  MEMORY[0x1B2728D70](v3 | (v3 << 32));
  return sub_1B0E46CB8();
}

unint64_t sub_1B0B3C4AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1B0B3DB2C(v5, v7) & 1;
}

unint64_t sub_1B0B3C4FC()
{
  result = qword_1EB6E48A0[0];
  if (!qword_1EB6E48A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB6E48A0);
  }

  return result;
}

uint64_t sub_1B0B3C598(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Task.Logger(0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for MailboxTaskLogger(0);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v24[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B0B3DA68(a1, v7);
  v14 = a2 + 16;
  v13 = *(a2 + 16);
  v12 = *(v14 + 8);
  (*(v12 + 64))(&v26, v13, v12);
  v25 = v27;
  v15 = v28;
  v16 = v29;
  v17 = sub_1B0E439A8();
  (*(*(v17 - 8) + 16))(v11, v7, v17);
  v18 = &v7[*(v5 + 28)];
  v20 = *v18;
  v19 = v18[1];
  v21 = v18[2];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v30 = v26;
  sub_1B039E440(&v30);
  sub_1B0B3DACC(v7, type metadata accessor for Task.Logger);
  v22 = &v11[*(v9 + 28)];
  *v22 = v20;
  *(v22 + 1) = v19;
  *(v22 + 2) = v21;
  *(v22 + 12) = v25;
  *(v22 + 4) = v15;
  *(v22 + 10) = v16;
  (*(v12 + 104))(v11, v13, v12);
  return sub_1B0B3DACC(v11, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1B0B3C7A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  __88__MFMessageContentRequest__contentRepresentationForLoadingEvent_existingRepresentation___block_invoke_136_cold_1();
  v4 = v3;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  return v4;
}

uint64_t sub_1B0B3C8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Task.Logger(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B3DA68(a1, v9);
  (*(*(a2 + 24) + 64))(&v20, *(a2 + 16));
  LOWORD(a2) = v21;
  v10 = v22;
  v11 = v23;
  v12 = sub_1B0E439A8();
  (*(*(v12 - 8) + 16))(a3, v9, v12);
  v13 = &v9[*(v7 + 28)];
  v14 = *v13;
  v15 = *(v13 + 1);
  v16 = *(v13 + 2);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v24 = v20;
  sub_1B039E440(&v24);
  sub_1B0B3DACC(v9, type metadata accessor for Task.Logger);
  result = type metadata accessor for MailboxTaskLogger(0);
  v18 = a3 + *(result + 20);
  *v18 = v14;
  *(v18 + 8) = v15;
  *(v18 + 16) = v16;
  *(v18 + 24) = a2;
  *(v18 + 32) = v10;
  *(v18 + 40) = v11;
  return result;
}

uint64_t sub_1B0B3CA48@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v53 = a5;
  v54 = a4;
  v51 = a1;
  v56 = a7;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a6 + 16);
  v52 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = type metadata accessor for ClientCommand(255);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1B0E45D88();
  v46 = *(v16 - 8);
  v47 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v45 - v17;
  v50 = AssociatedTypeWitness;
  v49 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v48 = &v45 - v20;
  v21 = sub_1B0B3C7A4(a2, a3, a6);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v28 = v53;
  v53 = a6;
  v29 = a6;
  v30 = v52;
  sub_1B0B3C8E0(v28, v29, v12);
  v31 = *(v30 + 112);
  v32 = v54;
  v54 = v13;
  v31(v21, v23, v25, v27, v32, v12, v13, v30);

  sub_1B0B3DACC(v12, type metadata accessor for MailboxTaskLogger);
  if ((*(*(TupleTypeMetadata2 - 8) + 48))(v18, 1, TupleTypeMetadata2) == 1)
  {
    (*(v46 + 8))(v18, v47);
    v33 = 1;
    v34 = v56;
  }

  else
  {
    v35 = *(TupleTypeMetadata2 + 48);
    v36 = v48;
    v37 = v49;
    v38 = v50;
    (*(v49 + 32))(v48, v18, v50);
    v39 = v56;
    sub_1B0A90A00(&v18[v35], v56);
    v53 = *(v53 + 36);
    v40 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v42 = swift_getAssociatedConformanceWitness();
    v57[0] = v38;
    v57[1] = v40;
    v57[2] = AssociatedConformanceWitness;
    v57[3] = v42;
    v43 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap(0, v57);
    sub_1B0BB2B34(v51, v36, v43);
    (*(v37 + 8))(v36, v38);
    v33 = 0;
    v34 = v39;
  }

  return (*(*(v55 - 8) + 56))(v34, v33, 1);
}

unint64_t sub_1B0B3CE50(unsigned int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v48 = a5;
  v49 = a4;
  v46 = a1;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a6 + 16);
  v14 = *(a6 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1B0E45D88();
  v40 = *(v16 - 8);
  v41 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v40 - v17;
  v45 = AssociatedTypeWitness;
  v43 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v19);
  v42 = &v40 - v20;
  v21 = sub_1B0B3C7A4(a2, a3, a6);
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v44 = a6;
  sub_1B0B3C8E0(v48, a6, v12);
  v28 = *(v14 + 120);
  v29 = v49;
  v48 = v13;
  v49 = v6;
  v28(v21, v23, v25, v27, v29, v12, v13, v14);

  v30 = TupleTypeMetadata2;

  sub_1B0B3DACC(v12, type metadata accessor for MailboxTaskLogger);
  if ((*(*(v30 - 8) + 48))(v18, 1, v30) == 1)
  {
    (*(v40 + 8))(v18, v41);
    return 0xF000000000000007;
  }

  else
  {
    v31 = *&v18[*(v30 + 48)];
    v32 = v42;
    v33 = v43;
    v34 = v45;
    (*(v43 + 32))(v42, v18, v45);
    v35 = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v37 = swift_getAssociatedConformanceWitness();
    v50[0] = v35;
    v50[1] = v34;
    v50[2] = AssociatedConformanceWitness;
    v50[3] = v37;
    v38 = type metadata accessor for TaskHistoryWithCustomIDs.CustomIDMap(0, v50);
    sub_1B0BB2CD4(v46, v32, v38);
    (*(v33 + 8))(v32, v34);
  }

  return v31;
}

uint64_t sub_1B0B3D20C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B0B3C7A4(a2, a3, a6);
  v17 = v16;
  v19 = v18;
  v21 = v20;
  sub_1B0B3C8E0(a5, a6, v14);
  (*(*(a6 + 24) + 128))(a1, v15, v17, v19, v21, a4, v14, *(a6 + 16), *(a6 + 24));

  return sub_1B0B3DACC(v14, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1B0B3D350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B0B3C7A4(a2, a3, a5);
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_1B0B3C8E0(a4, a5, v12);
  (*(*(a5 + 24) + 136))(a1, v13, v15, v17, v19, v12, *(a5 + 16));

  return sub_1B0B3DACC(v12, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1B0B3D484(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v37 = a8;
  v38 = a3;
  v42 = a7;
  v45 = a6;
  v46 = a1;
  v39 = a4;
  v40 = a5;
  v10 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v41 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a9 + 16);
  v13 = *(a9 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_1B0E45D88();
  v33 = *(v15 - 8);
  v34 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  v44 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v35 = &v32 - v19;
  v36 = a9;
  v20 = *(a9 + 36);
  v43 = v9;
  v21 = *(v9 + v20);
  v22 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v24 = swift_getAssociatedConformanceWitness();
  v25 = AssociatedConformanceWitness;
  v26 = v44;
  sub_1B0BB2E6C(v46, v21, AssociatedTypeWitness, v22, v25, v24, v17);
  if ((*(v26 + 48))(v17, 1, AssociatedTypeWitness) == 1)
  {
    (*(v33 + 8))(v17, v34);
    type metadata accessor for MailboxTaskWithCustomHistory.Error(0, v12, v13, v27);
    swift_getWitnessTable();
    swift_allocError();
    *v28 = v46;
    *(v28 + 4) = 0;
    return swift_willThrow();
  }

  else
  {
    v30 = v35;
    (*(v26 + 32))(v35, v17, AssociatedTypeWitness);
    v31 = v41;
    sub_1B0B3C8E0(v37, v36, v41);
    (*(v13 + 144))(v30, v38, v39, v40, v45, v42, v31, v12, v13);
    sub_1B0B3DACC(v31, type metadata accessor for MailboxTaskLogger);
    return (*(v26 + 8))(v30, AssociatedTypeWitness);
  }
}

uint64_t sub_1B0B3D818(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B3C8E0(a2, a3, v8);
  (*(*(a3 + 24) + 160))(a1, v8, *(a3 + 16));
  return sub_1B0B3DACC(v8, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1B0B3D8E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B3C8E0(a2, a3, v8);
  (*(*(a3 + 24) + 168))(a1, v8, *(a3 + 16));
  return sub_1B0B3DACC(v8, type metadata accessor for MailboxTaskLogger);
}

uint64_t sub_1B0B3DA2C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1B0B3DA68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Task.Logger(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B3DACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t *sub_1B0B3DB2C(uint64_t *result, uint64_t *a2)
{
  if (result[1] != a2[1])
  {
    return 0;
  }

  v2 = *result;
  v3 = *a2;
  v4 = *(*result + 16);
  if (v4 != *(*a2 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    return (*(result + 8) == *(a2 + 8) && (*(result + 8) | (*(result + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)) && (sub_1B04520BC(result[3], a2[3]) & 1) != 0);
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (*v6 != *v7)
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      return (*(result + 8) == *(a2 + 8) && (*(result + 8) | (*(result + 8) << 32)) == (*(a2 + 8) | (*(a2 + 8) << 32)) && (sub_1B04520BC(result[3], a2[3]) & 1) != 0);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B3DBEC(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a3;
  v33 = a2;
  v37 = a1;
  v6 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a4 + 16);
  v8 = *(a4 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1B0E45D88();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v28 - v12;
  v36 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v14);
  v30 = &v28 - v15;
  v32 = a4;
  v16 = *(a4 + 36);
  v35 = v4;
  v17 = *(v4 + v16 + 8);
  v18 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = swift_getAssociatedConformanceWitness();
  v21 = AssociatedConformanceWitness;
  v22 = v36;
  sub_1B0BB3114(v37, v17, v18, AssociatedTypeWitness, v21, v20, v13);
  if ((*(v22 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    (*(v28 + 8))(v13, v29);
    type metadata accessor for MailboxTaskWithCustomHistory.Error(0, v9, v8, v23);
    swift_getWitnessTable();
    swift_allocError();
    *v24 = v37;
    *(v24 + 4) = 1;
    return swift_willThrow();
  }

  else
  {
    v26 = v30;
    (*(v22 + 32))(v30, v13, AssociatedTypeWitness);
    v27 = v34;
    sub_1B0B3C8E0(v31, v32, v34);
    (*(v8 + 152))(v26, v33, v27, v9, v8);
    sub_1B0B3DACC(v27, type metadata accessor for MailboxTaskLogger);
    return (*(v22 + 8))(v26, AssociatedTypeWitness);
  }
}

void sub_1B0B3DF88(uint64_t a1)
{
  sub_1B0B3E074(319, &qword_1EB6DB578, &unk_1EB6E2640, &qword_1B0E9B010, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1B0B3E074(319, &qword_1EB6DE248, &unk_1EB6E26C0, &unk_1B0E9DE10, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B3E074(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

char *sub_1B0B3E0D8(void (*a1)(uint64_t *__return_ptr, uint64_t *, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v14 = *v6;
    a1(&v12, &v14, a2);
    if (v3)
    {
      break;
    }

    if ((v13 & 1) == 0)
    {
      v8 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B0AFF55C(0, *(v7 + 2) + 1, 1, v7);
      }

      v10 = *(v7 + 2);
      v9 = *(v7 + 3);
      if (v10 >= v9 >> 1)
      {
        v7 = sub_1B0AFF55C((v9 > 1), v10 + 1, 1, v7);
      }

      *(v7 + 2) = v10 + 1;
      *&v7[8 * v10 + 32] = v8;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1B0B3E208(void (*a1)(__int128 *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E7CC0];
  for (i = (a3 + 32); ; ++i)
  {
    v56[0] = *i;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    (a1)(&v42, v56);
    if (v3)
    {
      break;
    }

    v40[12] = v54;
    v41[0] = v55[0];
    *(v41 + 9) = *(v55 + 9);
    v40[8] = v50;
    v40[9] = v51;
    v40[10] = v52;
    v40[11] = v53;
    v40[4] = v46;
    v40[5] = v47;
    v40[6] = v48;
    v40[7] = v49;
    v40[0] = v42;
    v40[1] = v43;
    v40[2] = v44;
    v40[3] = v45;
    if (get_enum_tag_for_layout_string_12NIOIMAPCore213BodyStructureO9MultipartV9ExtensionVSg_0(v40) == 1)
    {
      v38 = v54;
      v39[0] = v55[0];
      *(v39 + 9) = *(v55 + 9);
      v34 = v50;
      v35 = v51;
      v36 = v52;
      v37 = v53;
      v30 = v46;
      v31 = v47;
      v32 = v48;
      v33 = v49;
      v26 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v45;
      sub_1B0398EFC(&v26, &qword_1EB6E4940, &unk_1B0EC6680);
    }

    else
    {
      v38 = v54;
      v39[0] = v55[0];
      *(v39 + 9) = *(v55 + 9);
      v34 = v50;
      v35 = v51;
      v36 = v52;
      v37 = v53;
      v30 = v46;
      v31 = v47;
      v32 = v48;
      v33 = v49;
      v26 = v42;
      v27 = v43;
      v28 = v44;
      v29 = v45;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1B0AFFC58(0, *(v6 + 2) + 1, 1, v6);
      }

      v9 = *(v6 + 2);
      v8 = *(v6 + 3);
      if (v9 >= v8 >> 1)
      {
        v6 = sub_1B0AFFC58((v8 > 1), v9 + 1, 1, v6);
      }

      v16 = v30;
      v17 = v31;
      v14 = v28;
      v15 = v29;
      v20 = v34;
      v21 = v35;
      v18 = v32;
      v19 = v33;
      *&v25[9] = *(v39 + 9);
      v24 = v38;
      *v25 = v39[0];
      v22 = v36;
      v23 = v37;
      v12 = v26;
      v13 = v27;
      *(v6 + 2) = v9 + 1;
      v10 = &v6[240 * v9];
      *(v10 + 3) = v13;
      *(v10 + 4) = v14;
      *(v10 + 2) = v12;
      *(v10 + 7) = v17;
      *(v10 + 8) = v18;
      *(v10 + 5) = v15;
      *(v10 + 6) = v16;
      *(v10 + 11) = v21;
      *(v10 + 12) = v22;
      *(v10 + 9) = v19;
      *(v10 + 10) = v20;
      *(v10 + 249) = *&v25[9];
      *(v10 + 14) = v24;
      *(v10 + 15) = *v25;
      *(v10 + 13) = v23;
    }

    if (!--v4)
    {
      return v6;
    }
  }

  return v6;
}

char *sub_1B0B3E4C8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v5 = a1;
  v6 = (a3 + 40);
  v7 = MEMORY[0x1E69E7CC0];
  v19 = a1;
  while (1)
  {
    v9 = *v6;
    v17 = *(v6 - 1);
    v18 = v9;
    (v5)(&v15, &v17, a2);
    if (v3)
    {
      break;
    }

    v10 = v16;
    if (v16 != 2)
    {
      v11 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_1B0AFFFFC(0, *(v7 + 2) + 1, 1, v7);
      }

      v13 = *(v7 + 2);
      v12 = *(v7 + 3);
      if (v13 >= v12 >> 1)
      {
        v7 = sub_1B0AFFFFC((v12 > 1), v13 + 1, 1, v7);
      }

      *(v7 + 2) = v13 + 1;
      v8 = &v7[12 * v13];
      *(v8 + 4) = v11;
      v8[40] = v10 & 1;
      v5 = v19;
    }

    v6 += 12;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

char *sub_1B0B3E618(void (*a1)(uint64_t *__return_ptr, int *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = (a3 + 80);
  v42 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v7 = *v6;
    v8 = *(v6 - 2);
    v9 = *(v6 - 1);
    v10 = *(v6 - 3);
    v11 = *(v6 - 8);
    v12 = *(v6 - 5);
    v35 = *(v6 - 12);
    v36 = v12;
    v37 = v11;
    v38 = v10;
    v39 = v8;
    v40 = v9;
    v41 = v7;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B03B2000(v10, v8);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    a1(&v30, &v35);
    if (v4)
    {
      break;
    }

    v13 = v38;
    v14 = v39;

    sub_1B0391D50(v13, v14);

    v15 = v30;
    v16 = v31;
    v17 = v32;
    v18 = v33;
    v19 = v34;
    if (v33 == 1)
    {
      sub_1B0B4152C(v30, v31, v32, 1);
    }

    else
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v42 = sub_1B0B00060(0, *(v42 + 2) + 1, 1, v42);
      }

      v21 = *(v42 + 2);
      v20 = *(v42 + 3);
      v22 = v21 + 1;
      if (v21 >= v20 >> 1)
      {
        v25 = sub_1B0B00060((v20 > 1), v21 + 1, 1, v42);
        v22 = v21 + 1;
        v42 = v25;
      }

      v23 = v42;
      *(v42 + 2) = v22;
      v24 = &v23[40 * v21];
      *(v24 + 8) = v15;
      *(v24 + 5) = v16;
      *(v24 + 6) = v17;
      *(v24 + 7) = v18;
      v24[64] = v19;
    }

    v6 += 56;
    if (!--v5)
    {
      return v42;
    }
  }

  v26 = v38;
  v27 = v39;

  sub_1B0391D50(v26, v27);

  return v42;
}

void sub_1B0B3E814(void (*a1)(void *__return_ptr, void), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v11 = 0;
  v12 = MEMORY[0x1E69E7CC0];
  v31 = a1;
  if (v9)
  {
LABEL_10:
    while (1)
    {
      v14 = __clz(__rbit64(v9)) | (v11 << 6);
      v15 = *(a3 + 56) + 24 * v14;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      LOBYTE(v15) = *(v15 + 17);
      v26 = *(*(a3 + 48) + 16 * v14);
      v27 = v16;
      v28 = v17;
      v29 = v18;
      v30 = v15;
      sub_1B03B2000(v26, *(&v26 + 1));
      a1(&v25, &v26);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;
      sub_1B0391D50(v26, *(&v26 + 1));
      if (*(&v25 + 1) >> 60 == 15)
      {
        sub_1B050755C(v25, *(&v25 + 1));
        if (!v9)
        {
          goto LABEL_6;
        }
      }

      else
      {
        v24 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_1B0B006F4(0, *(v12 + 2) + 1, 1, v12);
        }

        v20 = *(v12 + 2);
        v19 = *(v12 + 3);
        v21 = v12;
        v22 = v24;
        if (v20 >= v19 >> 1)
        {
          v23 = sub_1B0B006F4((v19 > 1), v20 + 1, 1, v12);
          v22 = v24;
          v21 = v23;
        }

        *(v21 + 2) = v20 + 1;
        v12 = v21;
        *&v21[16 * v20 + 32] = v22;
        a1 = v31;
        if (!v9)
        {
          goto LABEL_6;
        }
      }
    }

    sub_1B0391D50(v26, *(&v26 + 1));

LABEL_19:
  }

  else
  {
LABEL_6:
    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        goto LABEL_19;
      }

      v9 = *(v6 + 8 * v13);
      ++v11;
      if (v9)
      {
        v11 = v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B0B3EA18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  v26 = a3;
  v25 = a1;
  v28 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v25 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - v16;
  v27 = a2;
  v18 = sub_1B0B417E8(a2);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B03B5C80(v17, v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v19 = 1;
  }

  else
  {
    sub_1B03C60A4(v14, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v8, v11, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v19 = 0;
  }

  (*(v6 + 56))(v11, v19, 1, v5);
  v20 = v28;
  sub_1B0B3EF98(v25, v18, v11, v28);
  sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if ((v26 & 1) == 0)
  {
    return sub_1B0398EFC(v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v21 = v20[1];
  v22 = *(v21 + 2);
  if (!v22)
  {
    return sub_1B0398EFC(v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v30 = 1;
  v29 = *&v21[8 * v22 + 28];
  sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(&v30, &v29, &type metadata for UID, &v31);
  v23 = v31;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v21 = sub_1B0B8C8B0(v21);
  }

  result = sub_1B0398EFC(v27, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v22 > *(v21 + 2))
  {
    __break(1u);
  }

  else
  {
    *&v21[8 * v22 + 24] = v23;
    v20[1] = v21;
  }

  return result;
}

uint64_t sub_1B0B3ED74()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + 8 * v2 + 24);
  v5 = *(v1 + 36);
  v6 = v3;
  sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(&v6, &v5, &type metadata for UID, &v7);
  return v7;
}

uint64_t sub_1B0B3EDEC(uint64_t result)
{
  if ((result & 0x100000000) == 0)
  {
    v2 = v1;
    v3 = *(v1 + 8);
    if (*(v3 + 16))
    {
      v4 = *(v3 + 32);
      if (*(v3 + 36) <= result)
      {
        v5 = result;
      }

      else
      {
        v5 = *(v3 + 36);
      }

      v9 = v5;
      v10 = v4;
      sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v10, &v9, &type metadata for UID, &v11);
      v6 = v11;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if (*(v3 + 16))
        {
LABEL_8:
          *(v3 + 32) = v6;
          *(v1 + 8) = v3;
          return result;
        }
      }

      else
      {
        result = sub_1B0B8C8B0(v3);
        v3 = result;
        if (*(result + 16))
        {
          goto LABEL_8;
        }
      }

      __break(1u);
    }

    else
    {
      v7 = result;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_1B0EC1E70;
      v10 = v7;
      LODWORD(v11) = 1;
      sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v11, &v10, &type metadata for UID, v8 + 32);

      *(v2 + 8) = v8;
    }
  }

  return result;
}

unint64_t sub_1B0B3EF14()
{
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = *(v1 + 8 * v2 + 24);
    v6 = *(v1 + 36);
    v7 = v3;
    sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v7, &v6, &type metadata for UID, &v8);
    v4 = v8;
  }

  else
  {
    v4 = 0;
  }

  return v4 | ((v2 == 0) << 32);
}

uint64_t sub_1B0B3EF98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v32 = a3;
  v30 = a1;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v33);
  v8 = &v29 - v7;
  v9 = *(type metadata accessor for MessageBatches(0) + 24);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v11 = *(*(v10 - 8) + 56);
  v31 = a4;
  v29 = v9;
  v11(a4 + v9, 1, 1, v10);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = 0;
    v4 = &qword_1B0E9CC60;
    while (v13 < *(a2 + 16))
    {
      v35[0] = *(a2 + 32 + 8 * v13);
      v14 = sub_1B041C1E8();
      v36 = Range<>.init<A>(_:)(v35, &type metadata for UID, v14);
      if (HIDWORD(v36) != v36)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
        v15 = sub_1B0E46E88();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
        sub_1B0E46E38();
        v15(v35, 0);
      }

      if (v12 == ++v13)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_7:
  v16 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  swift_getKeyPath();
  v17 = *(a2 + 16);
  if (v17)
  {
    v35[0] = MEMORY[0x1E69E7CC0];
    sub_1B0452620(0, v17, 0);
    v18 = v35[0];
    v4 = (a2 + 32);
    do
    {
      v34 = *v4;
      swift_getAtKeyPath();
      v19 = v36;
      v35[0] = v18;
      v21 = *(v18 + 2);
      v20 = *(v18 + 3);
      if (v21 >= v20 >> 1)
      {
        sub_1B0452620((v20 > 1), v21 + 1, 1);
        v18 = v35[0];
      }

      *(v18 + 2) = v21 + 1;
      *&v18[8 * v21 + 32] = v19;
      ++v4;
      --v17;
    }

    while (v17);

    v22 = *(v18 + 2);
    if (v22)
    {
LABEL_13:
      v23 = 0;
      v24 = (v18 + 32);
      while (1)
      {
        v25 = *v24++;
        v26 = __OFADD__(v23, v25);
        v23 += v25;
        if (v26)
        {
          break;
        }

        if (!--v22)
        {
          goto LABEL_19;
        }
      }

LABEL_22:
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
    v22 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v22)
    {
      goto LABEL_13;
    }
  }

  v23 = 0;
LABEL_19:

  if (v16 == v23)
  {
    v27 = v31;
    *v31 = v30;
    v35[0] = a2;
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B40B94(v35);

    v27[1] = v35[0];
    return sub_1B0B41460(v32, v27 + v29);
  }

LABEL_23:
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1B0B3F320(uint64_t result)
{
  v1 = 4507;
  if (result < 4507)
  {
    v1 = result;
  }

  if (v1 <= 1000)
  {
    v2 = 1000;
  }

  else
  {
    v2 = v1;
  }

LABEL_8:
  v3 = v2;
  v4 = v2 / 2;
  if ((v2 / 2))
  {
    v6 = 1;
    v8 = 1;
    if ((v2 + 1) < 3)
    {
      goto LABEL_17;
    }

LABEL_39:
    v8 = 1;
    v15 = 31;
    while (1)
    {
      if (v4)
      {
        v17 = v8 * v15;
        if ((v8 * v15) >> 64 != (v8 * v15) >> 63)
        {
          goto LABEL_57;
        }

        if (v2 == -1 && v17 == 0x8000000000000000)
        {
          goto LABEL_58;
        }

        v8 = v17 % v2;
      }

      v18 = v15 * v15;
      if ((v15 * v15) >> 64 != (v15 * v15) >> 63)
      {
        goto LABEL_54;
      }

      if (v2 == -1 && v18 == 0x8000000000000000)
      {
        break;
      }

      v15 = v18 % v2;
      v16 = v4 >= 2;
      v4 >>= 1;
      if (!v16)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
    goto LABEL_51;
  }

  v5 = 1;
  do
  {
    v6 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    v7 = v4;
    v4 /= 2;
    ++v5;
  }

  while ((v4 & 1) == 0);
  if ((v7 + 1) >= 3)
  {
    if (!v2)
    {
      goto LABEL_62;
    }

    goto LABEL_39;
  }

  v8 = 1;
LABEL_14:
  if (v6 < 1)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

LABEL_17:
  if (v2)
  {
    --v2;
    v9 = __OFSUB__(v3, 1);
    v10 = 1;
    while (1)
    {
      v11 = v8 * v8;
      if ((v8 * v8) >> 64 != (v8 * v8) >> 63)
      {
        break;
      }

      if (v3 == -1 && v11 == 0x8000000000000000)
      {
        goto LABEL_55;
      }

      v12 = v11 % v3;
      if (v12 == 1 && v8 != 1)
      {
        if (v9)
        {
          goto LABEL_56;
        }

        if (v8 != v2)
        {
          goto LABEL_7;
        }
      }

      if (v6 == v10)
      {
        if (v12 == 1)
        {
          result = sub_1B0B3F590(73, v3);
          if ((result & 1) == 0)
          {
            return v3;
          }
        }

LABEL_7:
        if (v3 == 0x8000000000000000)
        {
          goto LABEL_61;
        }

        goto LABEL_8;
      }

      v8 = v12;
      if (__OFADD__(v10++, 1))
      {
        __break(1u);
        goto LABEL_53;
      }
    }

LABEL_51:
    __break(1u);
    return v3;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

uint64_t sub_1B0B3F500(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (!a2)
  {
    return 1;
  }

  if (a3)
  {
    v3 = result;
    result = 1;
    while (1)
    {
      if (a2)
      {
        v4 = result * v3;
        if ((result * v3) >> 64 != (result * v3) >> 63)
        {
          goto LABEL_20;
        }

        if (v4 == 0x8000000000000000 && a3 == -1)
        {
          goto LABEL_22;
        }

        result = v4 % a3;
      }

      v6 = v3 * v3;
      if ((v3 * v3) >> 64 != (v3 * v3) >> 63)
      {
        break;
      }

      if (v6 == 0x8000000000000000 && a3 == -1)
      {
        goto LABEL_21;
      }

      v3 = v6 % a3;
      v8 = a2 > 1;
      a2 = a2 >> 1;
      if (!v8)
      {
        return result;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B3F590(uint64_t result, uint64_t a2)
{
  v3 = a2 / 2;
  if ((v3 & 1) == 0)
  {
    v4 = 1;
    while (1)
    {
      v5 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_29;
      }

      v3 /= 2;
      ++v4;
      if (v3)
      {
        result = sub_1B0B3F500(result, v3, a2);
        if (v5 >= 1)
        {
          goto LABEL_8;
        }

        __break(1u);
        break;
      }
    }
  }

  result = sub_1B0B3F500(result, v3, a2);
  v5 = 1;
LABEL_8:
  if (a2)
  {
    v6 = __OFSUB__(a2, 1);
    v7 = 1;
    while (1)
    {
      v8 = result * result;
      if ((result * result) >> 64 != (result * result) >> 63)
      {
        break;
      }

      if (a2 == -1 && v8 == 0x8000000000000000)
      {
        goto LABEL_30;
      }

      v9 = v8 % a2;
      v11 = v8 % a2 == 1;
      v10 = v8 % a2 != 1;
      v11 = !v11 || result == 1;
      if (!v11)
      {
        if (v6)
        {
          goto LABEL_31;
        }

        if (result != a2 - 1)
        {
          return 1;
        }
      }

      if (v5 == v7)
      {
        return v10;
      }

      result = v9;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
        return 1;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B3F688()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v16 - v3;
  v5 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v0 + 8);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v17 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
    v18 = v0;
    v21 = MEMORY[0x1E69E7CC0];
    sub_1B0B09F04(0, v9, 0);
    v10 = v21;
    v11 = (v8 + 32);
    v12 = sub_1B041C1E8();
    do
    {
      v20 = *v11;
      v19 = Range<>.init<A>(_:)(&v20, &type metadata for UID, v12);
      sub_1B03D06F8();
      sub_1B0E46F08();
      v21 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1B0B09F04((v13 > 1), v14 + 1, 1);
        v10 = v21;
      }

      *(v10 + 16) = v14 + 1;
      sub_1B03C60A4(v4, v10 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v14, &unk_1EB6E26C0, &unk_1B0E9DE10);
      ++v11;
      --v9;
    }

    while (v9);
    v7 = v17;
  }

  v21 = v10;
  sub_1B0B3F8AC(v7);
  sub_1B0AFC16C(v7);
  return v21;
}

uint64_t sub_1B0B3F8AC@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - v11;
  v13 = type metadata accessor for MessageBatches(0);
  sub_1B03B5C80(v1 + *(v13 + 24), v5, &unk_1EB6E3670, &unk_1B0E9B260);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  if ((*(*(v14 - 8) + 48))(v5, 1, v14) == 1)
  {
    sub_1B0398EFC(v5, &unk_1EB6E3670, &unk_1B0E9B260);
    (*(v10 + 56))(v8, 1, 1, v9);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    if ((*(v10 + 48))(v8, 1, v9) != 1)
    {
      sub_1B0398EFC(v8, &qword_1EB6E3920, &qword_1B0E9B070);
    }
  }

  else
  {
    sub_1B03B5C80(v5, v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v5, &unk_1EB6E26C0, &unk_1B0E9DE10);
    (*(v10 + 56))(v8, 0, 1, v9);
    sub_1B03C60A4(v8, v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  v15 = *v1;
  sub_1B03C60A4(v12, a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  *(a1 + *(result + 20)) = v15;
  return result;
}

uint64_t sub_1B0B3FBB4@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v54 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v49 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v12);
  v53 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v49 - v18;
  v57 = v1;
  v58 = v6;
  if (sub_1B0E46E98())
  {
    v20 = *(v54 + 56);

    return v20(a1, 1, 1, v3);
  }

  else
  {
    v50 = v5;
    v51 = v3;
    v52 = a1;
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v55 = (v7 + 16);
    v22 = v57;
    while (1)
    {
      MessageIdentifierSet.ranges.getter(v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      v23 = sub_1B0E46E18();
      v24 = sub_1B0E46E28();
      v25 = sub_1B0E46E18();
      result = sub_1B0E46E28();
      if (v23 < v25 || result < v23)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return result;
      }

      v27 = sub_1B0E46E18();
      v28 = sub_1B0E46E28();
      result = sub_1B0398EFC(v11, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v24 < v27 || v28 < v24)
      {
        goto LABEL_32;
      }

      if (__OFSUB__(v24, v23))
      {
        goto LABEL_33;
      }

      if (v24 - v23 > 486)
      {
        break;
      }

      v29 = MessageIdentifierSet.count.getter();
      v30 = *(v22 + *(type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0) + 20));
      if (v29 >= v30 || (sub_1B0E46E98() & 1) != 0)
      {
        break;
      }

      result = MessageIdentifierSet.count.getter();
      v31 = v30 - result;
      if (__OFSUB__(v30, result))
      {
        goto LABEL_34;
      }

      MessageIdentifierSet.ranges.getter(v11);
      v32 = sub_1B0E46E18();
      v33 = sub_1B0E46E28();
      v34 = sub_1B0E46E18();
      result = sub_1B0E46E28();
      if (v32 < v34 || result < v32)
      {
        goto LABEL_35;
      }

      v35 = sub_1B0E46E18();
      v36 = sub_1B0E46E28();
      result = sub_1B0398EFC(v11, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v33 < v35 || v36 < v33)
      {
        goto LABEL_36;
      }

      v37 = v33 - v32;
      if (__OFSUB__(v33, v32))
      {
        goto LABEL_37;
      }

      v38 = __OFSUB__(487, v37);
      v39 = 487 - v37;
      if (v38)
      {
        goto LABEL_38;
      }

      if (v39 >= v31)
      {
        v40 = v31;
      }

      else
      {
        v40 = v39;
      }

      v22 = v57;
      MessageIdentifierSet.suffix(_:)(v40, v12, v16);
      v41 = v58;
      sub_1B0E46EC8();
      (*v55)(v56, v16, v41);
      sub_1B0E46ED8();
      sub_1B0398EFC(v16, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    v42 = v53;
    sub_1B03B5C80(v19, v53, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v43 = MessageIdentifierSet.count.getter();
    v44 = v50;
    v45 = v51;
    if (v43 < 1)
    {
      sub_1B0398EFC(v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v48 = 1;
      v47 = v52;
    }

    else
    {
      sub_1B03C60A4(v42, v50, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v46 = v44;
      v47 = v52;
      sub_1B03C60A4(v46, v52, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v48 = 0;
    }

    (*(v54 + 56))(v47, v48, 1, v45);
    return sub_1B0398EFC(v19, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }
}

uint64_t sub_1B0B4018C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + *(a1 + 20));
  sub_1B03C60A4(v2, a2, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(0);
  *(a2 + *(result + 20)) = v4;
  return result;
}

void *sub_1B0B401E8()
{
  v1 = sub_1B0AE1190(v0);
  sub_1B0B4178C(v0);
  return v1;
}

uint64_t sub_1B0B40220@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v57 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v56 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v55 = v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v59 = v51 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v17 = v51 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3920, &qword_1B0E9B070);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = v51 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v58 = v51 - v26;
  MEMORY[0x1EEE9AC00](v27);
  if ((a1 & 0x100000000) != 0)
  {
    v43 = *v3;
    v44 = type metadata accessor for MessageBatches(0);
    sub_1B03B5C80(v3 + *(v44 + 24), v12, &unk_1EB6E3670, &unk_1B0E9B260);
    return sub_1B0B3EF98(v43, MEMORY[0x1E69E7CC0], v12, a2);
  }

  else
  {
    v53 = a2;
    LODWORD(v61) = a1;
    LODWORD(v60) = -1;
    v29 = v51 - v28;
    v30 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v61, &v60, &type metadata for UID, &v62);
    v61 = v62;
    v60 = Range<>.init<A>(_:)(&v61, &type metadata for UID, v30);
    v51[1] = sub_1B03D06F8();
    v31 = sub_1B0E46F08();
    v52 = *v3;
    MEMORY[0x1EEE9AC00](v31);
    v54 = v29;
    v51[-2] = v29;
    v33 = sub_1B0B3E0D8(sub_1B0B41510, &v51[-4], v32);
    v34 = type metadata accessor for MessageBatches(0);
    sub_1B03B5C80(v3 + *(v34 + 24), v17, &unk_1EB6E3670, &unk_1B0E9B260);
    v35 = v57;
    v36 = 1;
    if ((*(v57 + 48))(v17, 1, v6) != 1)
    {
      v37 = v55;
      sub_1B03C60A4(v17, v55, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03C60A4(v37, v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v36 = 0;
    }

    (*(v22 + 56))(v20, v36, 1, v21);
    v38 = *(v22 + 48);
    v39 = v6;
    if (v38(v20, 1, v21) == 1)
    {
      v40 = v58;
      sub_1B0E46EE8();
      v41 = v38(v20, 1, v21);
      v42 = v53;
      if (v41 != 1)
      {
        sub_1B0398EFC(v20, &qword_1EB6E3920, &qword_1B0E9B070);
      }
    }

    else
    {
      v40 = v58;
      sub_1B03C60A4(v20, v58, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v42 = v53;
    }

    sub_1B03B5C80(v40, v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (MessageIdentifierSet.count.getter() < 1)
    {
      sub_1B0398EFC(v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v49 = 1;
      v50 = v39;
      v48 = v59;
    }

    else
    {
      v46 = v56;
      sub_1B03C60A4(v24, v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v47 = v46;
      v48 = v59;
      sub_1B03C60A4(v47, v59, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v49 = 0;
      v50 = v39;
    }

    (*(v35 + 56))(v48, v49, 1, v50);
    sub_1B0B3EF98(v52, v33, v48, v42);
    sub_1B0398EFC(v40, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return sub_1B0398EFC(v54, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }
}

uint64_t sub_1B0B4083C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v24 - v13;
  v25 = *a1;
  v15 = sub_1B041C1E8();
  v24[1] = Range<>.init<A>(_:)(&v25, &type metadata for UID, v15);
  sub_1B03D06F8();
  sub_1B0E46F08();
  MessageIdentifierSet.intersection(_:)(a2, v14);
  sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v16 = sub_1B0B4AAF0();
  if ((v16 & 0x100000000) != 0)
  {
    result = sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    goto LABEL_6;
  }

  v17 = v16;
  MessageIdentifierSet.ranges.getter(v8);
  v18 = sub_1B0B4A3E8();
  v20 = v19;
  sub_1B0398EFC(v8, &unk_1EB6E2780, &unk_1B0E9C5E0);
  result = sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v20)
  {
LABEL_6:
    v23 = 0;
    v22 = 1;
    goto LABEL_7;
  }

  if (HIDWORD(v18) >= v17)
  {
    v22 = 0;
    v23 = v18 & 0xFFFFFFFF00000000 | v17;
LABEL_7:
    *a3 = v23;
    *(a3 + 8) = v22;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B0B40A68@<X0>(uint64_t a1@<X0>, int64_t a2@<X1>, unsigned int a3@<W2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  result = swift_beginAccess();
  v15 = *(a1 + 16);
  v16 = *(a1 + 20);
  *a7 = v15;
  *(a7 + 4) = v16;
  if ((v16 & 1) != 0 || v15 - a3 < a2)
  {
    LODWORD(v17) = 0;
    v18 = 1;
LABEL_14:
    result = swift_beginAccess();
    *(a1 + 16) = v17;
    *(a1 + 20) = v18;
    return result;
  }

  if (v15 != a4)
  {
    goto LABEL_9;
  }

  if (!a6)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (a5 == 0x8000000000000000 && a6 == -1)
  {
    goto LABEL_21;
  }

  v19 = __OFSUB__(a2, a5 % a6);
  a2 -= a5 % a6;
  if (!v19)
  {
LABEL_9:
    v20 = -a2;
    if (__OFSUB__(0, a2))
    {
      __break(1u);
    }

    else if (v20 <= 0xFFFFFFFFLL)
    {
      v17 = v15 - a2;
      if (v20 + v15 >= 1)
      {
        if (!HIDWORD(v17))
        {
          v18 = 0;
          goto LABEL_14;
        }

        goto LABEL_18;
      }

LABEL_17:
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    __break(1u);
    goto LABEL_17;
  }

LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1B0B40B94(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1B0B945A0(v2);
  }

  v3 = *(v2 + 2);
  v18[0] = (v2 + 32);
  v18[1] = v3;
  result = sub_1B0E469A8();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = v8;
        v13 = v10;
        do
        {
          if (*v13 >= v11)
          {
            break;
          }

          v14 = *(v13 + 3);
          *(v13 + 1) = *v13;
          *v13 = v11;
          *(v13 + 1) = v14;
          v13 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
      v7 = sub_1B0E45278();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v16[0] = v7 + 32;
    v16[1] = v6;
    sub_1B0B40CE8(v16, v17, v18, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1B0B40CE8(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v87 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *v87;
    if (!*v87)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_1B0B9443C(v8);
      v8 = result;
    }

    v79 = (v8 + 16);
    v80 = *(v8 + 16);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = (v8 + 16 * v80);
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_1B0B4125C((*a3 + 8 * *v81), (*a3 + 8 * *v83), (*a3 + 8 * v84), v5);
        if (v4)
        {
        }

        if (v84 < v82)
        {
          goto LABEL_114;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_115;
        }

        *v81 = v82;
        v81[1] = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_116;
        }

        v80 = *v79 - 1;
        result = memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v86 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = 8 * v9;
      v12 = (*a3 + 8 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 2;
        v19 = (v13 < v10) ^ (v17 >= v18);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v13 >= v10)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v13 >= v10)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 8 * v7 - 8;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v24 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = *(v24 + v11);
            *(v24 + v11) = *(v24 + v20);
            *(v24 + v20) = v23;
          }

          ++v22;
          v20 -= 8;
          v11 += 8;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1B0AFF300(0, *(v8 + 16) + 1, 1, v8);
      v8 = result;
    }

    v5 = *(v8 + 16);
    v33 = *(v8 + 24);
    v34 = v5 + 1;
    if (v5 >= v33 >> 1)
    {
      result = sub_1B0AFF300((v33 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 16) = v34;
    v35 = v8 + 32;
    v36 = (v8 + 32 + 16 * v5);
    *v36 = v9;
    v36[1] = v7;
    v88 = *v87;
    if (!*v87)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v37 = *(v8 + 32);
          v38 = *(v8 + 40);
          v47 = __OFSUB__(v38, v37);
          v39 = v38 - v37;
          v40 = v47;
LABEL_57:
          if (v40)
          {
            goto LABEL_104;
          }

          v53 = (v8 + 16 * v34);
          v55 = *v53;
          v54 = v53[1];
          v56 = __OFSUB__(v54, v55);
          v57 = v54 - v55;
          v58 = v56;
          if (v56)
          {
            goto LABEL_106;
          }

          v59 = (v35 + 16 * v5);
          v61 = *v59;
          v60 = v59[1];
          v47 = __OFSUB__(v60, v61);
          v62 = v60 - v61;
          if (v47)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v57, v62))
          {
            goto LABEL_111;
          }

          if (v57 + v62 >= v39)
          {
            if (v39 < v62)
            {
              v5 = v34 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v34 < 2)
        {
          goto LABEL_112;
        }

        v63 = (v8 + 16 * v34);
        v65 = *v63;
        v64 = v63[1];
        v47 = __OFSUB__(v64, v65);
        v57 = v64 - v65;
        v58 = v47;
LABEL_72:
        if (v58)
        {
          goto LABEL_108;
        }

        v66 = (v35 + 16 * v5);
        v68 = *v66;
        v67 = v66[1];
        v47 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v47)
        {
          goto LABEL_110;
        }

        if (v69 < v57)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v34)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v74 = (v35 + 16 * (v5 - 1));
        v75 = *v74;
        v76 = (v35 + 16 * v5);
        v77 = v76[1];
        sub_1B0B4125C((*a3 + 8 * *v74), (*a3 + 8 * *v76), (*a3 + 8 * v77), v88);
        if (v4)
        {
        }

        if (v77 < v75)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 16))
        {
          goto LABEL_100;
        }

        *v74 = v75;
        v74[1] = v77;
        v78 = *(v8 + 16);
        if (v5 >= v78)
        {
          goto LABEL_101;
        }

        v34 = v78 - 1;
        result = memmove((v35 + 16 * v5), v76 + 2, 16 * (v78 - 1 - v5));
        *(v8 + 16) = v78 - 1;
        if (v78 <= 2)
        {
          goto LABEL_3;
        }
      }

      v41 = v35 + 16 * v34;
      v42 = *(v41 - 64);
      v43 = *(v41 - 56);
      v47 = __OFSUB__(v43, v42);
      v44 = v43 - v42;
      if (v47)
      {
        goto LABEL_102;
      }

      v46 = *(v41 - 48);
      v45 = *(v41 - 40);
      v47 = __OFSUB__(v45, v46);
      v39 = v45 - v46;
      v40 = v47;
      if (v47)
      {
        goto LABEL_103;
      }

      v48 = (v8 + 16 * v34);
      v50 = *v48;
      v49 = v48[1];
      v47 = __OFSUB__(v49, v50);
      v51 = v49 - v50;
      if (v47)
      {
        goto LABEL_105;
      }

      v47 = __OFADD__(v39, v51);
      v52 = v39 + v51;
      if (v47)
      {
        goto LABEL_107;
      }

      if (v52 >= v44)
      {
        v70 = (v35 + 16 * v5);
        v72 = *v70;
        v71 = v70[1];
        v47 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v47)
        {
          goto LABEL_113;
        }

        if (v39 < v73)
        {
          v5 = v34 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v86;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v25 = *a3;
  v26 = *a3 + 8 * v7 - 8;
  v27 = v9 - v7;
LABEL_30:
  v28 = *(v25 + 8 * v7);
  v29 = v27;
  v30 = v26;
  while (1)
  {
    if (*v30 >= v28)
    {
LABEL_29:
      ++v7;
      v26 += 8;
      --v27;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v25)
    {
      break;
    }

    v31 = *(v30 + 12);
    *(v30 + 8) = *v30;
    *v30 = v28;
    *(v30 + 4) = v31;
    v30 -= 8;
    if (__CFADD__(v29++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1B0B4125C(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v4 < *v6)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v20 = *(v18 - 2);
      v18 -= 8;
      if (*v17 < v20)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v21 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v21 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v21 >> 3));
  }

  return 1;
}

uint64_t sub_1B0B41460(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B4152C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
    sub_1B0391D50(a2, a3);
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_9Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t __swift_store_extra_inhabitant_index_10Tm(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

unint64_t sub_1B0B416BC(uint64_t a1)
{
  result = sub_1B043B29C(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1B0B41734()
{
  result = qword_1EB6E4928;
  if (!qword_1EB6E4928)
  {
    type metadata accessor for MessageBatches.OtherUIDsBatchSequence.Iterator(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4928);
  }

  return result;
}

uint64_t sub_1B0B4178C(uint64_t a1)
{
  v2 = type metadata accessor for MessageBatches.OtherUIDsBatchSequence(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B417E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4930, &qword_1B0EC6670);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v39 - v3;
  v39[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4938, &qword_1B0EC6678);
  MEMORY[0x1EEE9AC00](v39[0]);
  v6 = v39 - v5;
  v39[1] = a1;
  sub_1B03B5C80(a1, v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v4, v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = MessageIdentifierSet.endIndex.getter(v7);
  v10 = v9;
  sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v8 == MessageIdentifierSet.startIndex.getter(v7) && v10 == v11)
  {
    goto LABEL_25;
  }

  v13 = 0;
  v14 = 1;
  v15 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    MessageIdentifierSet.index(_:offsetBy:)(v8, v10, 0xFFFFFFFFFFFFFFFFLL);
    v8 = v16;
    v10 = v17;
    MessageIdentifierSet.subscript.getter(v17, v7, &v42);
    v18 = v42;
    if (v14)
    {
      if (v8 == MessageIdentifierSet.startIndex.getter(v7) && v10 == v19)
      {
        goto LABEL_26;
      }

      MessageIdentifierSet.index(_:offsetBy:)(v8, v10, 0xFFFFFFFFFFFFFFFFLL);
      v8 = v20;
      v10 = v21;
      MessageIdentifierSet.subscript.getter(v21, v7, &v42);
      v22 = v42;
    }

    else
    {
      v22 = v42;
      v18 = v13;
    }

    v23 = MessageIdentifierSet.startIndex.getter(v7);
    v25 = v24;
    if (v23 == MessageIdentifierSet.endIndex.getter(v7) && v25 == v26)
    {
      break;
    }

    MessageIdentifierSet.subscript.getter(v25, v7, &v42);
    if (v42 != v22)
    {
      break;
    }

    v41 = v22;
LABEL_17:
    v40 = v18;
    sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(&v41, &v40, &type metadata for UID, &v42);
    v27 = v42;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v15 = sub_1B0AFF55C(0, *(v15 + 2) + 1, 1, v15);
    }

    v29 = *(v15 + 2);
    v28 = *(v15 + 3);
    if (v29 >= v28 >> 1)
    {
      v15 = sub_1B0AFF55C((v28 > 1), v29 + 1, 1, v15);
    }

    *(v15 + 2) = v29 + 1;
    *&v15[8 * v29 + 32] = v27;
    v14 = 0;
    v13 = v22;
    if (v8 == MessageIdentifierSet.startIndex.getter(v7))
    {
      v13 = v22;
      if (v10 == v30)
      {
        goto LABEL_26;
      }
    }
  }

  if (v22 != -1)
  {
    v41 = v22 + 1;
    goto LABEL_17;
  }

  __break(1u);
LABEL_25:
  v15 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v31 = &v6[*(v39[0] + 36)];
  *v31 = v8;
  v31[1] = v10;
  sub_1B0398EFC(v6, &qword_1EB6E4938, &qword_1B0EC6678);
  if (*(v15 + 2))
  {
    return sub_1B0B20838(v15);
  }

  v32 = MessageIdentifierSet.startIndex.getter(v7);
  v34 = v33;
  if (v32 == MessageIdentifierSet.endIndex.getter(v7) && v34 == v35)
  {
    return sub_1B0B20838(v15);
  }

  MessageIdentifierSet.subscript.getter(v34, v7, &v42);

  v37 = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E42D0, &unk_1B0EC5990);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1B0EC1E70;
  v41 = v37;
  LODWORD(v42) = v37;
  sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(&v42, &v41, &type metadata for UID, v38 + 32);
  return v38;
}

void sub_1B0B41C3C(uint64_t a1)
{
  sub_1B0B41CC0(319);
  if (v1 <= 0x3F)
  {
    sub_1B043B29C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B41CC0(uint64_t a1)
{
  if (!qword_1EB6DB798)
  {
    sub_1B043CF70();
    v1 = sub_1B0E44708();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB6DB798);
    }
  }
}

unint64_t sub_1B0B41D24()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v20[-((v1 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20[-v7];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B24198();
  MessageIdentifierSet.ranges.getter(v5);
  v9 = sub_1B0B4A3E8();
  v11 = v10;
  sub_1B0398EFC(v5, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v11)
  {
    v12 = 0;
  }

  else
  {
    v12 = HIDWORD(v9);
  }

  type metadata accessor for MessagesPendingDownload(0);
  MessageIdentifierSet.ranges.getter(v2);
  v13 = sub_1B0B4A3E8();
  v15 = v14;
  v16 = HIDWORD(v13);
  if (v14)
  {
    LODWORD(v16) = 0;
  }

  if (v16 <= v12)
  {
    v17 = v12;
  }

  else
  {
    v17 = v16;
  }

  if (v14)
  {
    v17 = v12;
  }

  if (v11)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  sub_1B0398EFC(v2, &unk_1EB6E2780, &unk_1B0E9C5E0);
  sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return v18 | ((v11 & v15 & 1) << 32);
}

void *sub_1B0B41F0C(void *result)
{
  v2 = result[2];
  if (!v2)
  {
    return result;
  }

  v3 = v1;
  for (i = result + 49; ; i += 24)
  {
    v7 = *(i - 17);
    v8 = *(i - 9);
    v9 = *(i - 1);
    v10 = *i;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v3;
    v12 = v27;
    v13 = sub_1B03FE284(v7);
    v15 = v12[2];
    v16 = (v14 & 1) == 0;
    v17 = __OFADD__(v15, v16);
    v18 = v15 + v16;
    if (v17)
    {
      break;
    }

    v19 = v14;
    if (v12[3] < v18)
    {
      sub_1B0B30B44(v18, isUniquelyReferenced_nonNull_native);
      v13 = sub_1B03FE284(v7);
      if ((v19 & 1) != (v20 & 1))
      {
        goto LABEL_18;
      }

LABEL_10:
      v21 = v27;
      if (v19)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v13;
    sub_1B0B8DCCC();
    v13 = v25;
    v21 = v27;
    if (v19)
    {
LABEL_3:
      v5 = v21[7] + 24 * v13;
      *v5 = v7;
      *(v5 + 8) = v8;
      *(v5 + 16) = v9;
      *(v5 + 17) = v10;
      goto LABEL_4;
    }

LABEL_11:
    v21[(v13 >> 6) + 8] |= 1 << v13;
    *(v21[6] + 4 * v13) = v7;
    v22 = v21[7] + 24 * v13;
    *v22 = v7;
    *(v22 + 8) = v8;
    *(v22 + 16) = v9;
    *(v22 + 17) = v10;
    v23 = v21[2];
    v17 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v17)
    {
      goto LABEL_17;
    }

    v21[2] = v24;
LABEL_4:
    *v3 = v21;
    v26 = v7;
    type metadata accessor for MessagesPendingDownload(0);
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    result = MessageIdentifierSet.remove(_:)(&v26, v6, &v27);
    if (!--v2)
    {
      return result;
    }
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1B0E46BA8();
  __break(1u);
  return result;
}

void sub_1B0B420DC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v6 - v2;
  if (!*(*v0 + 16))
  {
    v4 = sub_1B03D985C(MEMORY[0x1E69E7CC0]);

    *v0 = v4;
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v5 = type metadata accessor for MessagesPendingDownload(0);
    sub_1B074F0FC(v3, v0 + *(v5 + 20));
  }
}

uint64_t sub_1B0B421A8(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  if ((sub_1B03D3188(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1B03D06F8();

  return sub_1B0E46E08();
}

uint64_t sub_1B0B42228(int a1)
{
  v3 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.contains(_:)(&v3, v1) & 1;
}

uint64_t sub_1B0B42284(int *a1, uint64_t a2, unsigned __int8 a3)
{
  v4 = *(a1 + 18);
  v7 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return (v4 == a3) & ~MessageIdentifierSet.contains(_:)(&v7, v5);
}

uint64_t sub_1B0B422FC@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (*(a2 + 16) && (v5 = *(result + 32), result = sub_1B0AE002C(*(result + 8), *(result + 16)), (v6 & 1) != 0))
  {
    v7 = (*(a2 + 56) + 24 * result);
    v8 = *v7;
    v9 = *(v7 + 1);
    v10 = *(v7 + 16);
    if (*(v7 + 17))
    {
      v11 = 256;
    }

    else
    {
      v11 = 0;
    }

    v12 = v11 | v10;
    *a3 = v8;
    *(a3 + 8) = v9;
    *(a3 + 18) = v5;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 18) = 0;
    v12 = 512;
  }

  *(a3 + 16) = v12;
  return result;
}

uint64_t sub_1B0B42388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v26 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = *(a2 + 16);
  v13 = MEMORY[0x1E69E7CC0];
  if (v12)
  {
    v24 = a1;
    v28 = MEMORY[0x1E69E7CC0];
    sub_1B0B0A044(0, v12, 0);
    v13 = v28;
    v14 = (a2 + 32);
    v15 = *(v28 + 16);
    do
    {
      v17 = *v14;
      v14 += 6;
      v16 = v17;
      v28 = v13;
      v18 = *(v13 + 24);
      if (v15 >= v18 >> 1)
      {
        sub_1B0B0A044((v18 > 1), v15 + 1, 1);
        v13 = v28;
      }

      *(v13 + 16) = v15 + 1;
      *(v13 + 4 * v15++ + 32) = v16;
      --v12;
    }

    while (v12);
    a1 = v24;
  }

  sub_1B03D06F8();
  sub_1B0E46EE8();
  v19 = *(v13 + 16);
  if (v19)
  {
    v20 = (v13 + 32);
    do
    {
      v21 = *v20++;
      v27 = v21;
      MessageIdentifierSet.insert(_:)(&v28, &v27, v6);
      --v19;
    }

    while (v19);
  }

  sub_1B074BA2C(v8, v11);
  if ((v26 & 0x100000000) != 0)
  {
    sub_1B0B425DC(a1, v25);
  }

  else
  {
    sub_1B0B42884(a1, v26, v25);
  }

  return sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0B42580(int *a1)
{
  v3 = *a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.contains(_:)(&v3, v1) & 1;
}

uint64_t sub_1B0B425DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v36 - v5;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  if (sub_1B0E46E98())
  {
    sub_1B0E46EE8();
    return sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  else
  {
    v8 = MessageIdentifierSet.endIndex.getter(v4);
    MessageIdentifierSet.index(_:offsetBy:)(v8, v9, 0xFFFFFFFFFFFFFFFFLL);
    v11 = v10;
    v13 = v12;
    v14 = MessageIdentifierSet.startIndex.getter(v4);
    v16 = v13 < v15;
    if (v11 != v14)
    {
      v16 = v11 < v14;
    }

    if (!v16)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v13, v4, &v37);
        HIDWORD(v36) = v37;
        MessageIdentifierSet.insert(_:)(v38, &v36 + 4, v4);
        MessageIdentifierSet.index(_:offsetBy:)(v11, v13, 0xFFFFFFFFFFFFFFFELL);
        v11 = v17;
        v13 = v18;
        v19 = MessageIdentifierSet.startIndex.getter(v4);
        v21 = v13 < v20;
        if (v11 != v19)
        {
          v21 = v11 < v19;
        }
      }

      while (!v21);
    }

    v22 = MessageIdentifierSet.endIndex.getter(v4);
    MessageIdentifierSet.index(_:offsetBy:)(v22, v23, 0xFFFFFFFFFFFFFFFELL);
    v25 = v24;
    v27 = v26;
    v28 = MessageIdentifierSet.startIndex.getter(v4);
    v30 = v27 < v29;
    if (v25 != v28)
    {
      v30 = v25 < v28;
    }

    if (!v30)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v27, v4, &v37);
        HIDWORD(v36) = v37;
        MessageIdentifierSet.insert(_:)(v38, &v36 + 4, v4);
        MessageIdentifierSet.index(_:offsetBy:)(v25, v27, 0xFFFFFFFFFFFFFFFELL);
        v25 = v31;
        v27 = v32;
        v33 = MessageIdentifierSet.startIndex.getter(v4);
        v35 = v27 < v34;
        if (v25 != v33)
        {
          v35 = v25 < v33;
        }
      }

      while (!v35);
    }

    return sub_1B074BA2C(v6, a2);
  }
}

uint64_t sub_1B0B42884@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  if (sub_1B0E46E98())
  {
    sub_1B0E46EE8();
    return sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  else
  {
    v10 = MessageIdentifierSet.endIndex.getter(v6);
    MessageIdentifierSet.index(_:offsetBy:)(v10, v11, 0xFFFFFFFFFFFFFFFFLL);
    v13 = v12;
    v15 = v14;
    v16 = MessageIdentifierSet.startIndex.getter(v6);
    v18 = v17 < v15;
    if (v16 != v13)
    {
      v18 = v16 < v13;
    }

    if (v18)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v15, v6, &v48);
        if (v48 <= a2)
        {
          break;
        }

        v47 = v48;
        MessageIdentifierSet.insert(_:)(&v48, &v47, v6);
        MessageIdentifierSet.index(_:offsetBy:)(v13, v15, 0xFFFFFFFFFFFFFFFFLL);
        v13 = v19;
        v15 = v20;
        v21 = MessageIdentifierSet.startIndex.getter(v6);
        v23 = v22 < v15;
        if (v21 != v13)
        {
          v23 = v21 < v13;
        }
      }

      while (v23);
    }

    v24 = MessageIdentifierSet.startIndex.getter(v6);
    v26 = v15 < v25;
    if (v13 != v24)
    {
      v26 = v13 < v24;
    }

    if (!v26)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v15, v6, &v47);
        HIDWORD(v46) = v47;
        MessageIdentifierSet.insert(_:)(&v48, &v46 + 4, v6);
        MessageIdentifierSet.index(_:offsetBy:)(v13, v15, 0xFFFFFFFFFFFFFFFELL);
        v13 = v27;
        v15 = v28;
        v29 = MessageIdentifierSet.startIndex.getter(v6);
        v31 = v15 < v30;
        if (v13 != v29)
        {
          v31 = v13 < v29;
        }
      }

      while (!v31);
    }

    v32 = MessageIdentifierSet.endIndex.getter(v6);
    MessageIdentifierSet.index(_:offsetBy:)(v32, v33, 0xFFFFFFFFFFFFFFFELL);
    v35 = v34;
    v37 = v36;
    v38 = MessageIdentifierSet.startIndex.getter(v6);
    v40 = v37 < v39;
    if (v35 != v38)
    {
      v40 = v35 < v38;
    }

    if (!v40)
    {
      do
      {
        if (MessageIdentifierSet.count.getter() >= a1)
        {
          break;
        }

        MessageIdentifierSet.subscript.getter(v37, v6, &v47);
        HIDWORD(v46) = v47;
        MessageIdentifierSet.insert(_:)(&v48, &v46 + 4, v6);
        MessageIdentifierSet.index(_:offsetBy:)(v35, v37, 0xFFFFFFFFFFFFFFFELL);
        v35 = v41;
        v37 = v42;
        v43 = MessageIdentifierSet.startIndex.getter(v6);
        v45 = v37 < v44;
        if (v35 != v43)
        {
          v45 = v35 < v43;
        }
      }

      while (!v45);
    }

    return sub_1B074BA2C(v8, a3);
  }
}

uint64_t sub_1B0B42C18(uint64_t a1)
{
  result = type metadata accessor for MessagesPendingDownload(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_1B0B42C84(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  result = 0;
  if (sub_1B03D3188(*a1, *a2))
  {
    type metadata accessor for MessagesPendingDownload(0);
    sub_1B03D06F8();
    if (sub_1B0E46E08() & 1) != 0 && (sub_1B03D3188(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20))) & 1) != 0 && (sub_1B0E46E08())
    {
      return 1;
    }
  }

  return result;
}

uint64_t sub_1B0B42D48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MessagesPendingDownload(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B0B42DAC(int *a1)
{
  v3 = *a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  return MessageIdentifierSet.contains(_:)(&v3, v1) & 1;
}

uint64_t sub_1B0B42E08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4068, &unk_1B0EC2D20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B0B42E70(uint64_t a1, uint64_t (*a2)(uint64_t *, unint64_t), uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v11 = a1;
  v8 = *(a4 + 16);
  while (v8 != v7)
  {
    v9 = *(type metadata accessor for MessagesToRemoveHelper.Range(0) - 8);
    result = a2(&v11, a4 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v7++);
    if (v4)
    {
      return result;
    }
  }

  return v11;
}

void sub_1B0B42F4C(uint64_t a1@<X0>, void (*a2)(uint64_t, int *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = a3 + 64;
  v10 = 1 << *(a3 + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & *(a3 + 64);
  v13 = (v10 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v14 = 0;
  if (v12)
  {
    while (1)
    {
      v15 = v14;
LABEL_8:
      v16 = __clz(__rbit64(v12)) | (v15 << 6);
      v17 = *(*(a3 + 48) + 4 * v16);
      v18 = *(a3 + 56) + 16 * v16;
      v19 = *v18;
      v20 = *(v18 + 8);
      LOBYTE(v18) = *(v18 + 9);
      v21 = v17;
      v22 = v19;
      v23 = v20;
      v24 = v18;
      a2(a1, &v21);
      if (v4)
      {
        break;
      }

      v12 &= v12 - 1;
      v14 = v15;
      if (!v12)
      {
        goto LABEL_5;
      }
    }

    sub_1B0398EFC(a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        sub_1B03C60A4(a1, a4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        return;
      }

      v12 = *(v9 + 8 * v15);
      ++v14;
      if (v12)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1B0B430BC(uint64_t a1)
{
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v41 - v4;
  v46 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v6 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v41 - v9;
  v11 = *(a1 + 16);
  if (!v11)
  {
    return 32123;
  }

  if (v11 >= 0xA)
  {
    v21 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v22 = -1;
    v23 = *(v6 + 72);
    v43 = v8;
    v44 = v23;
    v24 = v21;
    v25 = v11;
    do
    {
      sub_1B0B48F08(v24, v10, type metadata accessor for MessagesToRemoveHelper.Range);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      MessageIdentifierSet.ranges.getter(v5);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      v26 = v5;
      v27 = sub_1B0E46E18();
      if (v27 == sub_1B0E46E28())
      {
LABEL_26:
        sub_1B0398EFC(v5, &unk_1EB6E2780, &unk_1B0E9C5E0);
        __break(1u);
        goto LABEL_27;
      }

      MessageIdentifierSet.RangeView.subscript.getter(v45, &v48);
      sub_1B0398EFC(v5, &unk_1EB6E2780, &unk_1B0E9C5E0);
      v28 = v48;
      sub_1B0B48F70(v10, type metadata accessor for MessagesToRemoveHelper.Range);
      if (v28 < v22)
      {
        v22 = v28;
      }

      v24 += v44;
      --v25;
    }

    while (v25);
    v29 = 1;
    v31 = v42;
    v30 = v43;
    while (1)
    {
      sub_1B0B48F08(v21, v30, type metadata accessor for MessagesToRemoveHelper.Range);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      MessageIdentifierSet.ranges.getter(v31);
      v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
      v26 = v31;
      v32 = sub_1B0E46E18();
      if (v32 == sub_1B0E46E28())
      {
        break;
      }

      v33 = sub_1B0E46E28();
      v34 = v33 - 1;
      if (__OFSUB__(v33, 1))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v35 = sub_1B0E46E18();
      v36 = sub_1B0E46E28();
      if (v34 < v35 || v34 >= v36)
      {
        goto LABEL_25;
      }

      MessageIdentifierSet.RangeView.subscript.getter(v45, &v48);
      sub_1B0398EFC(v26, &unk_1EB6E2780, &unk_1B0E9C5E0);
      v31 = v26;
      v37 = HIDWORD(v48);
      v30 = v43;
      sub_1B0B48F70(v43, type metadata accessor for MessagesToRemoveHelper.Range);
      if (v37 < v29)
      {
        v29 = v37;
      }

      v21 += v44;
      if (!--v11)
      {
        v48 = 0;
        v49 = 0xE000000000000000;
        LODWORD(v47) = v22;
        sub_1B0E46508();
        MEMORY[0x1B2726E80](58, 0xE100000000000000);
        LODWORD(v47) = v29;
        sub_1B0E46508();
        return v48;
      }
    }

LABEL_27:
    result = sub_1B0398EFC(v26, &unk_1EB6E2780, &unk_1B0E9C5E0);
    __break(1u);
  }

  else
  {
    v47 = MEMORY[0x1E69E7CC0];
    sub_1B041D32C(0, v11, 0);
    v12 = v47;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    do
    {
      sub_1B0B46ABC(v13, &v48);
      v15 = v48;
      v16 = v49;
      v47 = v12;
      v18 = *(v12 + 16);
      v17 = *(v12 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1B041D32C((v17 > 1), v18 + 1, 1);
        v12 = v47;
      }

      *(v12 + 16) = v18 + 1;
      v19 = v12 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      v13 += v14;
      --v11;
    }

    while (v11);
    v48 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2A70, &qword_1B0E9B5F0);
    sub_1B03B11C4();
    v38 = sub_1B0E448E8();
    v40 = v39;

    v48 = 123;
    v49 = 0xE100000000000000;
    MEMORY[0x1B2726E80](v38, v40);

    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    MEMORY[0x1B2726E80](125, 0xE100000000000000);

    return v48;
  }

  return result;
}

uint64_t sub_1B0B43634(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, int a5, char a6, uint64_t a7, uint64_t a8)
{
  v131 = a7;
  v128 = a5;
  v126 = a3;
  v127 = a4;
  v125 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v114 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v130 = &v114 - v15;
  v120 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v120);
  v117 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v119 = &v114 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v129 = &v114 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v118 = &v114 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v114 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v114 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FA0, &unk_1B0EC2670);
  MEMORY[0x1EEE9AC00](v29 - 8);
  v31 = &v114 - v30;
  v32 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v122 = &v114 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v35);
  v124 = &v114 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v123 = &v114 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &v114 - v40;
  v121 = a1;
  v42 = a1;
  v44 = v43;
  sub_1B0B46EB8(v42, a8, v31);
  if ((*(v33 + 48))(v31, 1, v44) == 1)
  {
    return sub_1B0398EFC(v31, &qword_1EB6E3FA0, &unk_1B0EC2670);
  }

  sub_1B0B48EA0(v31, v41, type metadata accessor for MessagesToRemoveHelper.Range);
  v46 = v41;
  v47 = v129;
  if ((a6 & 1) != 0 && (*(v46 + *(v44 + 32)) & 1) == 0)
  {
    v48 = v131;
    sub_1B0B48F08(v131, v28, type metadata accessor for MailboxTaskLogger);
    sub_1B0B48F08(v48, v25, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v49 = sub_1B0E43988();
    v50 = sub_1B0E458E8();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      v134 = v116;
      *v51 = 68159491;
      v115 = v50;
      *(v51 + 4) = 2;
      *(v51 + 8) = 256;
      v52 = v120;
      v53 = v46;
      v54 = &v25[*(v120 + 20)];
      *(v51 + 10) = *v54;
      *(v51 + 11) = 2082;
      v55 = *(v52 + 20);
      v114 = v49;
      v56 = &v28[v55];
      *(v51 + 13) = sub_1B0399D64(*&v28[v55 + 8], *&v28[v55 + 16], &v134);
      *(v51 + 21) = 1040;
      *(v51 + 23) = 2;
      *(v51 + 27) = 512;
      LOWORD(v54) = *(v54 + 12);
      sub_1B0B48F70(v25, type metadata accessor for MailboxTaskLogger);
      *(v51 + 29) = v54;
      v46 = v53;
      v47 = v129;
      *(v51 + 31) = 2160;
      *(v51 + 33) = 0x786F626C69616DLL;
      *(v51 + 41) = 2085;
      v57 = *(v56 + 4);
      LODWORD(v56) = *(v56 + 10);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B48F70(v28, type metadata accessor for MailboxTaskLogger);
      v132 = v57;
      v133 = v56;
      v58 = sub_1B0E44BA8();
      v60 = sub_1B0399D64(v58, v59, &v134);

      *(v51 + 43) = v60;
      *(v51 + 51) = 2048;
      *(v51 + 53) = v121;
      v61 = v114;
      _os_log_impl(&dword_1B0389000, v114, v115, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search completed for range #%ld, but server never sent a response. rdar://127003347", v51, 0x3Du);
      v62 = v116;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v62, -1, -1);
      MEMORY[0x1B272C230](v51, -1, -1);
    }

    else
    {
      sub_1B0B48F70(v25, type metadata accessor for MailboxTaskLogger);

      sub_1B0B48F70(v28, type metadata accessor for MailboxTaskLogger);
    }
  }

  v63 = v130;
  sub_1B03B5C80(v46 + *(v44 + 20), v130, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v13);
  sub_1B0398EFC(v63, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v64 = sub_1B0E46E18();
  v65 = sub_1B0E46E28();
  v66 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v64 < v66 || result < v64)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v67 = sub_1B0E46E18();
  v68 = sub_1B0E46E28();
  result = sub_1B0398EFC(v13, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v65 < v67 || v68 < v65)
  {
    goto LABEL_25;
  }

  if (__OFSUB__(v65, v64))
  {
LABEL_26:
    __break(1u);
    return result;
  }

  if (v65 - v64 > 9)
  {
    v69 = v131;
    v96 = v119;
    sub_1B0B48F08(v131, v119, type metadata accessor for MailboxTaskLogger);
    v97 = v117;
    sub_1B0B48F08(v69, v117, type metadata accessor for MailboxTaskLogger);
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    sub_1B0394868();
    v98 = v122;
    sub_1B0B48F08(v46, v122, type metadata accessor for MessagesToRemoveHelper.Range);
    v74 = sub_1B0E43988();
    v99 = sub_1B0E45908();
    if (os_log_type_enabled(v74, v99))
    {
      v100 = swift_slowAlloc();
      v124 = v44;
      v101 = v100;
      v130 = swift_slowAlloc();
      v134 = v130;
      *v101 = 68159747;
      *(v101 + 4) = 2;
      *(v101 + 8) = 256;
      v102 = v120;
      v103 = v97 + *(v120 + 20);
      *(v101 + 10) = *v103;
      *(v101 + 11) = 2082;
      v104 = *(v102 + 20);
      v116 = v46;
      v105 = v96 + v104;
      *(v101 + 13) = sub_1B0399D64(*(v96 + v104 + 8), *(v96 + v104 + 16), &v134);
      *(v101 + 21) = 1040;
      *(v101 + 23) = 2;
      *(v101 + 27) = 512;
      LOWORD(v103) = *(v103 + 24);
      sub_1B0B48F70(v97, type metadata accessor for MailboxTaskLogger);
      *(v101 + 29) = v103;
      *(v101 + 31) = 2160;
      *(v101 + 33) = 0x786F626C69616DLL;
      *(v101 + 41) = 2085;
      v106 = *(v105 + 32);
      LODWORD(v105) = *(v105 + 40);
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      sub_1B0B48F70(v96, type metadata accessor for MailboxTaskLogger);
      v132 = v106;
      v133 = v105;
      v46 = v116;
      v107 = sub_1B0E44BA8();
      v109 = sub_1B0399D64(v107, v108, &v134);

      *(v101 + 43) = v109;
      *(v101 + 51) = 2048;
      v110 = v122;
      *(v101 + 53) = v121;
      *(v101 + 61) = 2048;
      v111 = MessageIdentifierSet.count.getter();
      sub_1B0B48F70(v110, type metadata accessor for MessagesToRemoveHelper.Range);
      *(v101 + 63) = v111;
      _os_log_impl(&dword_1B0389000, v74, v99, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search completed for range #%ld. Got %ld UIDs.", v101, 0x47u);
      v112 = v130;
      swift_arrayDestroy();
      MEMORY[0x1B272C230](v112, -1, -1);
      v95 = v101;
      goto LABEL_18;
    }

    sub_1B0B48F70(v98, type metadata accessor for MessagesToRemoveHelper.Range);
    sub_1B0B48F70(v97, type metadata accessor for MailboxTaskLogger);

    v113 = v96;
LABEL_21:
    sub_1B0B48F70(v113, type metadata accessor for MailboxTaskLogger);
    goto LABEL_22;
  }

  v69 = v131;
  v70 = v118;
  sub_1B0B48F08(v131, v118, type metadata accessor for MailboxTaskLogger);
  sub_1B0B48F08(v69, v47, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v71 = v123;
  sub_1B0B48F08(v46, v123, type metadata accessor for MessagesToRemoveHelper.Range);
  v72 = v47;
  v73 = v124;
  sub_1B0B48F08(v46, v124, type metadata accessor for MessagesToRemoveHelper.Range);
  v74 = sub_1B0E43988();
  v75 = sub_1B0E45908();
  if (!os_log_type_enabled(v74, v75))
  {
    sub_1B0B48F70(v73, type metadata accessor for MessagesToRemoveHelper.Range);
    sub_1B0B48F70(v72, type metadata accessor for MailboxTaskLogger);

    sub_1B0B48F70(v71, type metadata accessor for MessagesToRemoveHelper.Range);
    v113 = v70;
    goto LABEL_21;
  }

  v76 = swift_slowAlloc();
  v122 = swift_slowAlloc();
  v134 = v122;
  *v76 = 68160003;
  LODWORD(v119) = v75;
  *(v76 + 4) = 2;
  *(v76 + 8) = 256;
  v77 = v120;
  v78 = *(v120 + 20);
  v116 = v46;
  v79 = v72 + v78;
  *(v76 + 10) = *(v72 + v78);
  *(v76 + 11) = 2082;
  v80 = v70;
  v81 = v70 + *(v77 + 20);
  *(v76 + 13) = sub_1B0399D64(*(v81 + 8), *(v81 + 16), &v134);
  *(v76 + 21) = 1040;
  *(v76 + 23) = 2;
  *(v76 + 27) = 512;
  LOWORD(v79) = *(v79 + 24);
  sub_1B0B48F70(v72, type metadata accessor for MailboxTaskLogger);
  *(v76 + 29) = v79;
  *(v76 + 31) = 2160;
  *(v76 + 33) = 0x786F626C69616DLL;
  *(v76 + 41) = 2085;
  v82 = *(v81 + 32);
  LODWORD(v81) = *(v81 + 40);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B48F70(v80, type metadata accessor for MailboxTaskLogger);
  v132 = v82;
  v133 = v81;
  v83 = sub_1B0E44BA8();
  v85 = sub_1B0399D64(v83, v84, &v134);

  *(v76 + 43) = v85;
  *(v76 + 51) = 2048;
  *(v76 + 53) = v121;
  *(v76 + 61) = 2082;
  v86 = v123;
  v87 = v130;
  sub_1B03B5C80(v123 + *(v44 + 20), v130, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v88 = MessageIdentifierSet.debugDescription.getter();
  v90 = v89;
  sub_1B0B48F70(v86, type metadata accessor for MessagesToRemoveHelper.Range);
  sub_1B0398EFC(v87, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v91 = sub_1B0399D64(v88, v90, &v134);
  v69 = v131;

  *(v76 + 63) = v91;
  *(v76 + 71) = 2048;
  v46 = v116;
  v92 = v124;
  v93 = MessageIdentifierSet.count.getter();
  sub_1B0B48F70(v92, type metadata accessor for MessagesToRemoveHelper.Range);
  *(v76 + 73) = v93;
  _os_log_impl(&dword_1B0389000, v74, v119, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Search completed for range #%ld %{public}s. Got %ld UIDs.", v76, 0x51u);
  v94 = v122;
  swift_arrayDestroy();
  MEMORY[0x1B272C230](v94, -1, -1);
  v95 = v76;
LABEL_18:
  MEMORY[0x1B272C230](v95, -1, -1);

LABEL_22:
  sub_1B0A92068(v69, v125, v126, v127, v128);
  return sub_1B0B48F70(v46, type metadata accessor for MessagesToRemoveHelper.Range);
}

void sub_1B0B443EC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v243 = a6;
  v249 = a4;
  v244 = a3;
  v241 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FF8, &unk_1B0EC6940);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v239 = &v219 - v9;
  v10 = _s15MissingMessagesO10NewMissingVMa(0);
  v237 = *(v10 - 8);
  v238 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v229 = &v219 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v228 = &v219 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v227 = &v219 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v234 = &v219 - v17;
  v248 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v248);
  v19 = &v219 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v219 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v245 = &v219 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v246 = &v219 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v235 = &v219 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v219 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v226 = &v219 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v233 = &v219 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v224 = &v219 - v37;
  MEMORY[0x1EEE9AC00](v38);
  v225 = &v219 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v230 = &v219 - v41;
  MEMORY[0x1EEE9AC00](v42);
  v232 = &v219 - v43;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v219 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v231 = &v219 - v48;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v51 = &v219 - v50;
  v242 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v242);
  v247 = &v219 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v53);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v219 - v55;
  MEMORY[0x1EEE9AC00](v57);
  MEMORY[0x1EEE9AC00](v58);
  v60 = &v219 - v59;
  MEMORY[0x1EEE9AC00](v61);
  v65 = &v219 - v62;
  if (*(a5 + 16))
  {
    v221 = v64;
    v222 = v63;
    v236 = a1;
    v223 = v31;
    sub_1B0B45FF0(a5, &v219 - v62);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v66 = sub_1B0E46E98();
    v67 = v65;
    v68 = a5;
    v240 = v65;
    if (v66)
    {
      goto LABEL_22;
    }

    v220 = a5;
    MessageIdentifierSet.ranges.getter(v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    v69 = sub_1B0E46E18();
    v70 = sub_1B0E46E28();
    v71 = sub_1B0E46E18();
    v72 = sub_1B0E46E28();
    if (v69 < v71 || v72 < v69)
    {
      __break(1u);
    }

    else
    {
      v73 = sub_1B0E46E18();
      v74 = sub_1B0E46E28();
      sub_1B0398EFC(v51, &unk_1EB6E2780, &unk_1B0E9C5E0);
      if (v70 >= v73 && v74 >= v70)
      {
        if (!__OFSUB__(v70, v69))
        {
          if (v70 - v69 > 19)
          {
            v109 = v249;
            v110 = v232;
            sub_1B0B48F08(v249, v232, type metadata accessor for MailboxTaskLogger);
            v111 = v230;
            sub_1B0B48F08(v109, v230, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v67 = v240;
            sub_1B03B5C80(v240, v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v112 = v222;
            sub_1B03B5C80(v67, v222, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v113 = sub_1B0E43988();
            v114 = sub_1B0E45908();
            if (os_log_type_enabled(v113, v114))
            {
              v115 = v111;
              v116 = swift_slowAlloc();
              v231 = swift_slowAlloc();
              v252 = v231;
              *v116 = 68159747;
              *(v116 + 4) = 2;
              *(v116 + 8) = 256;
              v117 = v248;
              v118 = v115 + *(v248 + 20);
              *(v116 + 10) = *v118;
              *(v116 + 11) = 2082;
              v119 = v110 + *(v117 + 20);
              *(v116 + 13) = sub_1B0399D64(*(v119 + 8), *(v119 + 16), &v252);
              *(v116 + 21) = 1040;
              *(v116 + 23) = 2;
              *(v116 + 27) = 512;
              LOWORD(v118) = *(v118 + 24);
              sub_1B0B48F70(v115, type metadata accessor for MailboxTaskLogger);
              *(v116 + 29) = v118;
              *(v116 + 31) = 2160;
              *(v116 + 33) = 0x786F626C69616DLL;
              *(v116 + 41) = 2085;
              v120 = *(v119 + 32);
              LODWORD(v119) = *(v119 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0B48F70(v110, type metadata accessor for MailboxTaskLogger);
              v250 = v120;
              v251 = v119;
              v121 = sub_1B0E44BA8();
              v123 = sub_1B0399D64(v121, v122, &v252);

              *(v116 + 43) = v123;
              *(v116 + 51) = 2048;
              v124 = v242;
              v125 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v116 + 53) = v125;
              *(v116 + 61) = 2082;
              v126 = v247;
              MessageIdentifierSet.suffix(_:)(20, v124, v247);
              v127 = MessageIdentifierSet.debugDescription.getter();
              v129 = v128;
              sub_1B0398EFC(v126, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v67 = v240;
              sub_1B0398EFC(v112, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v130 = sub_1B0399D64(v127, v129, &v252);

              *(v116 + 63) = v130;
              _os_log_impl(&dword_1B0389000, v113, v114, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: ... %{public}s", v116, 0x47u);
              v131 = v231;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v131, -1, -1);
              MEMORY[0x1B272C230](v116, -1, -1);

              goto LABEL_21;
            }

            sub_1B0398EFC(v56, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0B48F70(v111, type metadata accessor for MailboxTaskLogger);

            sub_1B0398EFC(v112, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v132 = v110;
          }

          else
          {
            v75 = v249;
            v76 = v231;
            sub_1B0B48F08(v249, v231, type metadata accessor for MailboxTaskLogger);
            sub_1B0B48F08(v75, v46, type metadata accessor for MailboxTaskLogger);
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            sub_1B0394868();
            v67 = v240;
            sub_1B03B5C80(v240, v60, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v77 = v221;
            sub_1B03B5C80(v67, v221, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v78 = sub_1B0E43988();
            v79 = sub_1B0E45908();
            if (os_log_type_enabled(v78, v79))
            {
              v80 = swift_slowAlloc();
              v232 = swift_slowAlloc();
              v252 = v232;
              *v80 = 68159747;
              *(v80 + 4) = 2;
              *(v80 + 8) = 256;
              v81 = v248;
              v82 = &v46[*(v248 + 20)];
              *(v80 + 10) = *v82;
              *(v80 + 11) = 2082;
              v83 = v76 + *(v81 + 20);
              *(v80 + 13) = sub_1B0399D64(*(v83 + 8), *(v83 + 16), &v252);
              *(v80 + 21) = 1040;
              *(v80 + 23) = 2;
              *(v80 + 27) = 512;
              LOWORD(v82) = *(v82 + 12);
              sub_1B0B48F70(v46, type metadata accessor for MailboxTaskLogger);
              *(v80 + 29) = v82;
              *(v80 + 31) = 2160;
              *(v80 + 33) = 0x786F626C69616DLL;
              *(v80 + 41) = 2085;
              v84 = *(v83 + 32);
              LODWORD(v82) = *(v83 + 40);
              _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
              sub_1B0B48F70(v76, type metadata accessor for MailboxTaskLogger);
              v250 = v84;
              v251 = v82;
              v85 = sub_1B0E44BA8();
              v87 = sub_1B0399D64(v85, v86, &v252);

              *(v80 + 43) = v87;
              *(v80 + 51) = 2048;
              v88 = MessageIdentifierSet.count.getter();
              sub_1B0398EFC(v60, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              *(v80 + 53) = v88;
              *(v80 + 61) = 2082;
              v89 = MessageIdentifierSet.debugDescription.getter();
              v91 = v90;
              v67 = v240;
              sub_1B0398EFC(v77, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v92 = sub_1B0399D64(v89, v91, &v252);

              *(v80 + 63) = v92;
              _os_log_impl(&dword_1B0389000, v78, v79, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld UIDs: %{public}s", v80, 0x47u);
              v93 = v232;
              swift_arrayDestroy();
              MEMORY[0x1B272C230](v93, -1, -1);
              MEMORY[0x1B272C230](v80, -1, -1);

LABEL_21:
              v68 = v220;
LABEL_22:
              v133 = v243;
              v134 = HIDWORD(v243) & 1;
              v135 = v247;
              v136 = sub_1B0B476B8(v68, v243 | (v134 << 32));
              MEMORY[0x1EEE9AC00](v136);
              *(&v219 - 2) = v135;
              v137 = sub_1B0B42E70(0, sub_1B0AA9244, (&v219 - 4), v68);
              sub_1B0398EFC(v135, &unk_1EB6E1AF0, &unk_1B0E9AF40);
              v139 = v245;
              v138 = v246;
              v140 = v236;
              if (v137 < 1)
              {
                goto LABEL_25;
              }

              v141 = v133 | (v134 << 32);
              v142 = v239;
              sub_1B0B46268(0x455, v68, v141, v239);
              if ((*(v237 + 48))(v142, 1, v238) == 1)
              {
                sub_1B0398EFC(v142, &qword_1EB6E3FF8, &unk_1B0EC6940);
LABEL_25:
                if (v244)
                {
LABEL_26:
                  v143 = v249;
                  sub_1B0B48F08(v249, v138, type metadata accessor for MailboxTaskLogger);
                  sub_1B0B48F08(v143, v139, type metadata accessor for MailboxTaskLogger);
                  sub_1B0394868();
                  sub_1B0394868();
                  sub_1B0394868();
                  sub_1B0394868();
                  sub_1B0394868();
                  sub_1B0394868();
                  v144 = sub_1B0E43988();
                  v145 = sub_1B0E45908();
                  if (os_log_type_enabled(v144, v145))
                  {
                    v146 = swift_slowAlloc();
                    v147 = swift_slowAlloc();
                    v252 = v147;
                    *v146 = 68159235;
                    *(v146 + 4) = 2;
                    *(v146 + 8) = 256;
                    v148 = v248;
                    v149 = v139 + *(v248 + 20);
                    *(v146 + 10) = *v149;
                    *(v146 + 11) = 2082;
                    v150 = v138 + *(v148 + 20);
                    *(v146 + 13) = sub_1B0399D64(*(v150 + 8), *(v150 + 16), &v252);
                    *(v146 + 21) = 1040;
                    *(v146 + 23) = 2;
                    *(v146 + 27) = 512;
                    LOWORD(v149) = *(v149 + 24);
                    sub_1B0B48F70(v139, type metadata accessor for MailboxTaskLogger);
                    *(v146 + 29) = v149;
                    *(v146 + 31) = 2160;
                    *(v146 + 33) = 0x786F626C69616DLL;
                    *(v146 + 41) = 2085;
                    v151 = *(v150 + 32);
                    LODWORD(v150) = *(v150 + 40);
                    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                    sub_1B0B48F70(v138, type metadata accessor for MailboxTaskLogger);
                    v250 = v151;
                    v251 = v150;
                    v152 = sub_1B0E44BA8();
                    v154 = sub_1B0399D64(v152, v153, &v252);

                    *(v146 + 43) = v154;
                    _os_log_impl(&dword_1B0389000, v144, v145, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Did not remove any pending expunge.", v146, 0x33u);
                    swift_arrayDestroy();
                    MEMORY[0x1B272C230](v147, -1, -1);
                    MEMORY[0x1B272C230](v146, -1, -1);

LABEL_45:
                    v218 = v67;
                    goto LABEL_46;
                  }

                  sub_1B0B48F70(v139, type metadata accessor for MailboxTaskLogger);

                  v177 = v138;
LABEL_44:
                  sub_1B0B48F70(v177, type metadata accessor for MailboxTaskLogger);
                  goto LABEL_45;
                }

LABEL_39:
                v202 = v140 + *(type metadata accessor for MailboxSyncState(0) + 48);
                sub_1B0B638C4(v241);
                v203 = *(v202 + 40);
                if ((*(v202 + 48) & 1) == 0)
                {
                  v203 = *(v203 + 16);
                }

                v204 = v235;
                v205 = v249;
                v206 = v223;
                sub_1B0B48F08(v249, v223, type metadata accessor for MailboxTaskLogger);
                sub_1B0B48F08(v205, v204, type metadata accessor for MailboxTaskLogger);
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                v207 = sub_1B0E43988();
                v208 = sub_1B0E45908();
                if (os_log_type_enabled(v207, v208))
                {
                  v209 = swift_slowAlloc();
                  v210 = swift_slowAlloc();
                  v252 = v210;
                  *v209 = 68159747;
                  *(v209 + 4) = 2;
                  *(v209 + 8) = 256;
                  v211 = v248;
                  v212 = v204 + *(v248 + 20);
                  *(v209 + 10) = *v212;
                  *(v209 + 11) = 2082;
                  v213 = v206 + *(v211 + 20);
                  *(v209 + 13) = sub_1B0399D64(*(v213 + 8), *(v213 + 16), &v252);
                  *(v209 + 21) = 1040;
                  *(v209 + 23) = 2;
                  *(v209 + 27) = 512;
                  LOWORD(v212) = *(v212 + 24);
                  sub_1B0B48F70(v204, type metadata accessor for MailboxTaskLogger);
                  *(v209 + 29) = v212;
                  *(v209 + 31) = 2160;
                  *(v209 + 33) = 0x786F626C69616DLL;
                  *(v209 + 41) = 2085;
                  v214 = *(v213 + 32);
                  LODWORD(v213) = *(v213 + 40);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B0B48F70(v206, type metadata accessor for MailboxTaskLogger);
                  v250 = v214;
                  v251 = v213;
                  v215 = sub_1B0E44BA8();
                  v217 = sub_1B0399D64(v215, v216, &v252);

                  *(v209 + 43) = v217;
                  *(v209 + 51) = 2048;
                  *(v209 + 53) = v241;
                  *(v209 + 61) = 2048;
                  *(v209 + 63) = v203;
                  _os_log_impl(&dword_1B0389000, v207, v208, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Removed %ld pending expunge, %ld remaining.", v209, 0x47u);
                  swift_arrayDestroy();
                  MEMORY[0x1B272C230](v210, -1, -1);
                  MEMORY[0x1B272C230](v209, -1, -1);

                  v218 = v240;
LABEL_46:
                  sub_1B0398EFC(v218, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  return;
                }

                sub_1B0B48F70(v204, type metadata accessor for MailboxTaskLogger);

                v177 = v206;
                goto LABEL_44;
              }

              v155 = v234;
              sub_1B0B48EA0(v142, v234, _s15MissingMessagesO10NewMissingVMa);
              if (v137 > 0x13)
              {
                v178 = v249;
                sub_1B0B48F08(v249, v233, type metadata accessor for MailboxTaskLogger);
                v179 = v226;
                sub_1B0B48F08(v178, v226, type metadata accessor for MailboxTaskLogger);
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                v180 = v228;
                sub_1B0B48F08(v155, v228, _s15MissingMessagesO10NewMissingVMa);
                v181 = v229;
                sub_1B0B48F08(v155, v229, _s15MissingMessagesO10NewMissingVMa);
                v160 = sub_1B0E43988();
                v182 = sub_1B0E458E8();
                if (os_log_type_enabled(v160, v182))
                {
                  v162 = swift_slowAlloc();
                  v243 = swift_slowAlloc();
                  v252 = v243;
                  *v162 = 68160003;
                  LODWORD(v239) = v182;
                  *(v162 + 4) = 2;
                  *(v162 + 8) = 256;
                  v183 = v248;
                  v184 = v180;
                  v185 = v179 + *(v248 + 20);
                  *(v162 + 10) = *v185;
                  *(v162 + 11) = 2082;
                  v186 = v233;
                  v187 = v233 + *(v183 + 20);
                  *(v162 + 13) = sub_1B0399D64(*(v187 + 8), *(v187 + 16), &v252);
                  *(v162 + 21) = 1040;
                  *(v162 + 23) = 2;
                  *(v162 + 27) = 512;
                  LOWORD(v185) = *(v185 + 24);
                  sub_1B0B48F70(v179, type metadata accessor for MailboxTaskLogger);
                  *(v162 + 29) = v185;
                  *(v162 + 31) = 2160;
                  *(v162 + 33) = 0x786F626C69616DLL;
                  *(v162 + 41) = 2085;
                  v188 = *(v187 + 32);
                  LODWORD(v187) = *(v187 + 40);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B0B48F70(v186, type metadata accessor for MailboxTaskLogger);
                  v250 = v188;
                  v251 = v187;
                  v138 = v246;
                  v189 = sub_1B0E44BA8();
                  v191 = sub_1B0399D64(v189, v190, &v252);

                  *(v162 + 43) = v191;
                  *(v162 + 51) = 2048;
                  *(v162 + 53) = v137;
                  *(v162 + 61) = 2048;
                  v192 = v242;
                  v193 = MessageIdentifierSet.count.getter();
                  sub_1B0B48F70(v184, _s15MissingMessagesO10NewMissingVMa);
                  *(v162 + 63) = v193;
                  *(v162 + 71) = 2082;
                  v139 = v245;
                  v194 = v247;
                  MessageIdentifierSet.suffix(_:)(20, v192, v247);
                  v195 = MessageIdentifierSet.debugDescription.getter();
                  v197 = v196;
                  sub_1B0398EFC(v194, &unk_1EB6E1AF0, &unk_1B0E9AF40);
                  sub_1B0B48F70(v181, _s15MissingMessagesO10NewMissingVMa);
                  v198 = sub_1B0399D64(v195, v197, &v252);

                  *(v162 + 73) = v198;
                  _os_log_impl(&dword_1B0389000, v160, v239, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs, adding %ld UIDs as missing: ... %{public}s", v162, 0x51u);
                  v199 = v243;
                  swift_arrayDestroy();
                  v176 = v199;
                  goto LABEL_34;
                }

                sub_1B0B48F70(v180, _s15MissingMessagesO10NewMissingVMa);
                sub_1B0B48F70(v179, type metadata accessor for MailboxTaskLogger);

                sub_1B0B48F70(v181, _s15MissingMessagesO10NewMissingVMa);
                v201 = v233;
              }

              else
              {
                v156 = v249;
                v157 = v225;
                sub_1B0B48F08(v249, v225, type metadata accessor for MailboxTaskLogger);
                v158 = v224;
                sub_1B0B48F08(v156, v224, type metadata accessor for MailboxTaskLogger);
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                sub_1B0394868();
                v159 = v227;
                sub_1B0B48F08(v155, v227, _s15MissingMessagesO10NewMissingVMa);
                v160 = sub_1B0E43988();
                v161 = sub_1B0E458E8();
                if (os_log_type_enabled(v160, v161))
                {
                  v162 = swift_slowAlloc();
                  v163 = swift_slowAlloc();
                  v252 = v163;
                  *v162 = 68159747;
                  LODWORD(v247) = v161;
                  *(v162 + 4) = 2;
                  *(v162 + 8) = 256;
                  v164 = v248;
                  v165 = v157;
                  v166 = v158 + *(v248 + 20);
                  *(v162 + 10) = *v166;
                  *(v162 + 11) = 2082;
                  v167 = v165 + *(v164 + 20);
                  *(v162 + 13) = sub_1B0399D64(*(v167 + 8), *(v167 + 16), &v252);
                  *(v162 + 21) = 1040;
                  *(v162 + 23) = 2;
                  *(v162 + 27) = 512;
                  LOWORD(v166) = *(v166 + 24);
                  sub_1B0B48F70(v158, type metadata accessor for MailboxTaskLogger);
                  *(v162 + 29) = v166;
                  *(v162 + 31) = 2160;
                  *(v162 + 33) = 0x786F626C69616DLL;
                  *(v162 + 41) = 2085;
                  v168 = *(v167 + 32);
                  LODWORD(v167) = *(v167 + 40);
                  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
                  sub_1B0B48F70(v165, type metadata accessor for MailboxTaskLogger);
                  v250 = v168;
                  v251 = v167;
                  v138 = v246;
                  v169 = sub_1B0E44BA8();
                  v171 = sub_1B0399D64(v169, v170, &v252);

                  *(v162 + 43) = v171;
                  *(v162 + 51) = 2048;
                  *(v162 + 53) = v137;
                  *(v162 + 61) = 2082;
                  v139 = v245;
                  v172 = MessageIdentifierSet.debugDescription.getter();
                  v174 = v173;
                  sub_1B0B48F70(v159, _s15MissingMessagesO10NewMissingVMa);
                  v175 = sub_1B0399D64(v172, v174, &v252);

                  *(v162 + 63) = v175;
                  _os_log_impl(&dword_1B0389000, v160, v247, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Found %ld missing UIDs: %{public}s", v162, 0x47u);
                  swift_arrayDestroy();
                  v176 = v163;
LABEL_34:
                  v155 = v234;
                  MEMORY[0x1B272C230](v176, -1, -1);
                  v200 = v162;
                  v140 = v236;
                  MEMORY[0x1B272C230](v200, -1, -1);

                  goto LABEL_38;
                }

                sub_1B0B48F70(v158, type metadata accessor for MailboxTaskLogger);

                sub_1B0B48F70(v159, _s15MissingMessagesO10NewMissingVMa);
                v201 = v157;
              }

              sub_1B0B48F70(v201, type metadata accessor for MailboxTaskLogger);
LABEL_38:
              type metadata accessor for MailboxSyncState(0);
              sub_1B0B494D4(v155);
              sub_1B0B48F70(v155, _s15MissingMessagesO10NewMissingVMa);
              v67 = v240;
              if (v244)
              {
                goto LABEL_26;
              }

              goto LABEL_39;
            }

            sub_1B0398EFC(v60, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0B48F70(v46, type metadata accessor for MailboxTaskLogger);

            sub_1B0398EFC(v77, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            v132 = v76;
          }

          sub_1B0B48F70(v132, type metadata accessor for MailboxTaskLogger);
          goto LABEL_21;
        }

LABEL_50:
        __break(1u);
        return;
      }
    }

    __break(1u);
    goto LABEL_50;
  }

  v94 = a1 + *(type metadata accessor for MailboxSyncState(0) + 48);
  v95 = *(v94 + 40);
  v96 = v95;
  if ((*(v94 + 48) & 1) == 0)
  {
    v96 = *(v95 + 16);
  }

  sub_1B0AA93E0(v95, *(v94 + 48));
  *(v94 + 40) = MEMORY[0x1E69E7CC0];
  *(v94 + 48) = 0;
  v97 = v249;
  sub_1B0B48F08(v249, v22, type metadata accessor for MailboxTaskLogger);
  sub_1B0B48F08(v97, v19, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  v98 = sub_1B0E43988();
  v99 = sub_1B0E45908();
  if (os_log_type_enabled(v98, v99))
  {
    v100 = swift_slowAlloc();
    v101 = swift_slowAlloc();
    v252 = v101;
    *v100 = 68159491;
    *(v100 + 4) = 2;
    *(v100 + 8) = 256;
    v102 = v248;
    v103 = &v19[*(v248 + 20)];
    *(v100 + 10) = *v103;
    *(v100 + 11) = 2082;
    v104 = &v22[*(v102 + 20)];
    *(v100 + 13) = sub_1B0399D64(*(v104 + 1), *(v104 + 2), &v252);
    *(v100 + 21) = 1040;
    *(v100 + 23) = 2;
    *(v100 + 27) = 512;
    LOWORD(v103) = *(v103 + 12);
    sub_1B0B48F70(v19, type metadata accessor for MailboxTaskLogger);
    *(v100 + 29) = v103;
    *(v100 + 31) = 2160;
    *(v100 + 33) = 0x786F626C69616DLL;
    *(v100 + 41) = 2085;
    v105 = *(v104 + 4);
    LODWORD(v103) = *(v104 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B48F70(v22, type metadata accessor for MailboxTaskLogger);
    v250 = v105;
    v251 = v103;
    v106 = sub_1B0E44BA8();
    v108 = sub_1B0399D64(v106, v107, &v252);

    *(v100 + 43) = v108;
    *(v100 + 51) = 2048;
    *(v100 + 53) = v96;
    _os_log_impl(&dword_1B0389000, v98, v99, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Local mailbox is empty. Removed %ld pending expunge.", v100, 0x3Du);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v101, -1, -1);
    MEMORY[0x1B272C230](v100, -1, -1);
  }

  else
  {
    sub_1B0B48F70(v19, type metadata accessor for MailboxTaskLogger);

    sub_1B0B48F70(v22, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1B0B45FF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - v6;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v22);
  v9 = v21 - v8;
  v10 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D06F8();
  v23 = a2;
  result = sub_1B0E46EE8();
  v15 = *(a1 + 16);
  if (v15)
  {
    v16 = *(v10 + 28);
    v21[0] = *(v10 + 24);
    v21[1] = v16;
    v17 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v18 = v5;
    v19 = *(v11 + 72);
    v20 = (v18 + 16);
    do
    {
      sub_1B0B48F08(v17, v13, type metadata accessor for MessagesToRemoveHelper.Range);
      MessageIdentifierSet.subtracting(_:)(&v13[v21[0]], v9);
      (*v20)(v7, v9, v4);
      sub_1B0E46ED8();
      sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      result = sub_1B0B48F70(v13, type metadata accessor for MessagesToRemoveHelper.Range);
      v17 += v19;
      --v15;
    }

    while (v15);
  }

  return result;
}

uint64_t sub_1B0B46268@<X0>(void (*a1)(void, void, void)@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15MissingMessagesO10NewMissingVMa(0);
  v28 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v28 - v20;
  sub_1B0B476B8(a2, a3 | ((HIDWORD(a3) & 1) << 32));
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  sub_1B03C60A4(v15, v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03C60A4(v18, v12, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v22 = &v12[*(v10 + 20)];
  *v22 = 0;
  v22[4] = 1;
  *(v22 + 2) = 0;
  v22[12] = 1;
  *(v22 + 4) = 0;
  v22[20] = 1;
  sub_1B0B48EA0(v9, &v12[*(v10 + 24)], _s15MissingMessagesO11QueriedUIDsVMa);
  v23 = 0;
  v24 = *(a2 + 16);
  while (v24 != v23)
  {
    v25 = *(type metadata accessor for MessagesToRemoveHelper.Range(0) - 8);
    sub_1B0B479B4(v12, a2 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v23++, a1, v21);
  }

  v26 = v29;
  sub_1B0B48EA0(v12, v29, _s15MissingMessagesO10NewMissingVMa);
  (*(v28 + 56))(v26, 0, 1, v10);
  return sub_1B0398EFC(v21, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0B465E0(uint64_t a1)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();
  sub_1B0E447C8();
  sub_1B0E447C8();
  sub_1B0E447C8();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B466B4(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1B2728D70](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();
  sub_1B0E447C8();
  sub_1B0E447C8();
  sub_1B0E447C8();
  return sub_1B0E46C68();
}

uint64_t sub_1B0B46770(uint64_t a1, uint64_t a2)
{
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](*v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  sub_1B0B0D328();
  sub_1B0E447C8();
  sub_1B0E447C8();
  sub_1B0E447C8();
  sub_1B0E46C68();
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B46844()
{
  v1 = *v0;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B468B8(uint64_t a1)
{
  v2 = *v1;
  sub_1B0E46C28();
  MEMORY[0x1B2728D70](v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B468FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  sub_1B03B5C80(a2, &v17 - v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B03D06F8();
  sub_1B0E46EE8();
  sub_1B0E46EE8();
  *a3 = a1;
  v15 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  sub_1B03C60A4(v14, a3 + v15[5], &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B03C60A4(v11, a3 + v15[6], &unk_1EB6E1AF0, &unk_1B0E9AF40);
  result = sub_1B03C60A4(v8, a3 + v15[7], &unk_1EB6E1AF0, &unk_1B0E9AF40);
  *(a3 + v15[8]) = 0;
  return result;
}

uint64_t sub_1B0B46ABC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v33 = *(type metadata accessor for MessagesToRemoveHelper.Range(0) + 20);
  v34 = a1;
  sub_1B03B5C80(a1 + v33, v10, &unk_1EB6E26C0, &unk_1B0E9DE10);
  sub_1B03C60A4(v10, v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v14 = sub_1B0E46E18();
  v15 = sub_1B0E46E28();
  v16 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v14 < v16 || result < v14)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v19 = sub_1B0E46E18();
  v20 = sub_1B0E46E28();
  result = sub_1B0398EFC(v7, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v15 < v19 || v20 < v15)
  {
    goto LABEL_17;
  }

  if (__OFSUB__(v15, v14))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v15 - v14 <= 1)
  {
    v36 = 0;
    v37 = 0xE000000000000000;
LABEL_15:
    sub_1B0E46508();
    v28 = v36;
    v29 = v37;
    v30 = v35;
    result = sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *v30 = v28;
    v30[1] = v29;
    return result;
  }

  v36 = 0;
  v37 = 0xE000000000000000;
  sub_1B03B5C80(v34 + v33, v10, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v22 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v38 = v22;
  v23 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v23);

  MEMORY[0x1B2726E80](544106784, 0xE400000000000000);
  result = sub_1B0B4AAF0();
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_19;
  }

  LODWORD(v38) = result;
  sub_1B0E46508();
  MEMORY[0x1B2726E80](58, 0xE100000000000000);
  v24 = v32;
  MessageIdentifierSet.ranges.getter(v32);
  v25 = sub_1B0B4A3E8();
  v27 = v26;
  result = sub_1B0398EFC(v24, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if ((v27 & 1) == 0)
  {
    LODWORD(v38) = HIDWORD(v25);
    goto LABEL_15;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_1B0B46EB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a2 + 16);
  if (v11)
  {
    v12 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    while (1)
    {
      sub_1B0B48F08(v12, v10, type metadata accessor for MessagesToRemoveHelper.Range);
      v14 = *v10;
      sub_1B0B48F70(v10, type metadata accessor for MessagesToRemoveHelper.Range);
      if (v14 == a1)
      {
        break;
      }

      v12 += v13;
      if (!--v11)
      {
        goto LABEL_5;
      }
    }

    sub_1B0B48F08(v12, a3, type metadata accessor for MessagesToRemoveHelper.Range);
    v15 = 0;
  }

  else
  {
LABEL_5:
    v15 = 1;
  }

  return (*(v7 + 56))(a3, v15, 1, v6, v8);
}

uint64_t sub_1B0B47028(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - v6;
  *(a1 + *(type metadata accessor for MessagesToRemoveHelper.Range(0) + 32)) = 1;
  (*(v5 + 16))(v7, a2, v4);
  return sub_1B0E46ED8();
}

uint64_t sub_1B0B47124(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  sub_1B03B5C80(a1 + *(v5 + 20), v4, &unk_1EB6E26C0, &unk_1B0E9DE10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v6 = sub_1B0E46EB8();
  sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return v6 & 1;
}

uint64_t sub_1B0B47218@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - v15;
  v17 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  MessageIdentifierSet.subtracting(_:)(a1 + *(v17 + 24), v6);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v18 = 1;
  }

  else
  {
    sub_1B03C60A4(v6, v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v13, v9, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v18 = 0;
  }

  (*(v11 + 56))(v9, v18, 1, v10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1B0398EFC(v9, &unk_1EB6E3670, &unk_1B0E9B260);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC0, &unk_1B0EC2690);
    return (*(*(v19 - 8) + 56))(a2, 1, 1, v19);
  }

  else
  {
    sub_1B03C60A4(v9, v16, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FC0, &unk_1B0EC2690);
    v22 = *(v21 + 48);
    *a2 = *a1;
    sub_1B03C60A4(v16, a2 + v22, &unk_1EB6E26C0, &unk_1B0E9DE10);
    return (*(*(v21 - 8) + 56))(a2, 0, 1, v21);
  }
}

uint64_t sub_1B0B47568(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MessagesToRemoveHelper.Range(0);
  sub_1B03D06F8();
  return sub_1B0E46E08() & 1;
}

uint64_t sub_1B0B475C8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  type metadata accessor for MessagesToRemoveHelper.Range(0);
  (*(v4 + 16))(v6, a2, v3);
  return sub_1B0E46ED8();
}

unint64_t sub_1B0B476B8(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x100000000) != 0)
  {
    LODWORD(v7[0]) = 1;
    LODWORD(v8) = -1;
    v3 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(v7, &v8, &type metadata for UID, &v9);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v4 = v9;
  }

  else
  {
    if (a2 == -1)
    {
      sub_1B03D06F8();

      return sub_1B0E46EE8();
    }

    LODWORD(v7[0]) = a2 + 1;
    LODWORD(v8) = -1;
    v3 = sub_1B041C1E8();
    static MessageIdentifier.... infix(_:_:)(v7, &v8, &type metadata for UID, &v6);
    sub_1B03D06F8();
    sub_1B0E46EE8();
    v4 = v6;
  }

  v7[0] = v4;
  result = Range<>.init<A>(_:)(v7, &type metadata for UID, v3);
  v8 = result;
  if (HIDWORD(result) != result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    v5 = sub_1B0E46E88();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
    sub_1B0E46E38();
    return v5(v7, 0);
  }

  return result;
}

uint64_t sub_1B0B47868(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v15 - v10;
  v12 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  MessageIdentifierSet.subtracting(_:)(a2 + *(v12 + 28), v8);
  MessageIdentifierSet.subtracting(_:)(a3, v11);
  sub_1B0398EFC(v8, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v13 = MessageIdentifierSet.count.getter();
  result = sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (__OFADD__(*a1, v13))
  {
    __break(1u);
  }

  else
  {
    *a1 += v13;
  }

  return result;
}

uint64_t sub_1B0B479B4(uint64_t a1, uint64_t a2, void (*a3)(void, void, void), uint64_t a4)
{
  v58 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
  v56 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v45 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v13);
  v52 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v45 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v54 = &v45 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v45 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v45 - v23;
  result = MessageIdentifierSet.count.getter();
  v57 = a3;
  if (result < a3)
  {
    v49 = v12;
    v53 = a1;
    v26 = type metadata accessor for MessagesToRemoveHelper.Range(0);
    v27 = a2 + *(v26 + 28);
    v48 = a2;
    MessageIdentifierSet.subtracting(_:)(v27, v21);
    MessageIdentifierSet.subtracting(_:)(v58, v24);
    sub_1B0398EFC(v21, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v50 = v10;
    if (sub_1B0E46E98())
    {
      return sub_1B0398EFC(v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    v28 = v21;
    v47 = v4;
    v29 = MessageIdentifierSet.count.getter();
    result = MessageIdentifierSet.count.getter();
    if (__OFADD__(v29, result))
    {
      __break(1u);
    }

    else
    {
      v30 = v57;
      if (v29 + result <= v57)
      {
        v57 = *(v56 + 16);
        v43 = v49;
        v42 = v50;
        v57(v49, v24, v50);
        sub_1B0E46ED8();
        v44 = v55;
        sub_1B03B5C80(v48 + *(v26 + 20), v55, &unk_1EB6E26C0, &unk_1B0E9DE10);
        MessageIdentifierSet.subtracting(_:)(v58, v28);
        sub_1B0398EFC(v44, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        _s15MissingMessagesO10NewMissingVMa(0);
        v57(v43, v28, v42);
        sub_1B0E46ED8();
        v33 = v28;
LABEL_10:
        sub_1B0398EFC(v33, &unk_1EB6E1AF0, &unk_1B0E9AF40);
        return sub_1B0398EFC(v24, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      }

      v31 = MessageIdentifierSet.count.getter();
      result = MessageIdentifierSet.count.getter();
      v32 = v31 + result;
      if (!__OFADD__(v31, result))
      {
        v46 = v28;
        result = v32 - v30;
        v33 = v54;
        if (!__OFSUB__(v32, v30))
        {
          MessageIdentifierSet.suffix(_:)(result, v13, v54);
          v34 = sub_1B0B4AAF0();
          if ((v34 & 0x100000000) == 0)
          {
            v35 = v34;
            v57 = *(v56 + 16);
            v36 = v49;
            v57(v49, v33, v50);
            sub_1B0E46ED8();
            v37 = v55;
            sub_1B03B5C80(v48 + *(v26 + 20), v55, &unk_1EB6E26C0, &unk_1B0E9DE10);
            v38 = v51;
            MessageIdentifierSet.subtracting(_:)(v58, v51);
            sub_1B0398EFC(v37, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            LODWORD(v60) = v35;
            LODWORD(v59) = -1;
            v39 = sub_1B041C1E8();
            static MessageIdentifier.... infix(_:_:)(&v60, &v59, &type metadata for UID, &v61);
            v60 = v61;
            v59 = Range<>.init<A>(_:)(&v60, &type metadata for UID, v39);
            sub_1B03D06F8();
            v40 = v52;
            sub_1B0E46F08();
            v41 = v46;
            MessageIdentifierSet.intersection(_:)(v40, v46);
            sub_1B0398EFC(v40, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            sub_1B0398EFC(v38, &unk_1EB6E1AF0, &unk_1B0E9AF40);
            _s15MissingMessagesO10NewMissingVMa(0);
            v57(v36, v41, v50);
            sub_1B0E46ED8();
            sub_1B0398EFC(v41, &unk_1EB6E1AF0, &unk_1B0E9AF40);
          }

          goto LABEL_10;
        }

LABEL_15:
        __break(1u);
        return result;
      }
    }

    __break(1u);
    goto LABEL_15;
  }

  return result;
}

uint64_t sub_1B0B47F80(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  sub_1B03D06F8();
  if (sub_1B0E46E08() & 1) != 0 && (sub_1B0E46E08() & 1) != 0 && (sub_1B0E46E08())
  {
    v5 = *(a1 + *(v4 + 32)) ^ *(a2 + *(v4 + 32)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1B0B48064(uint64_t a1, unint64_t a2, char a3)
{
  v6 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v24[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v24[-v16];
  if (!*(*(a1 + 8) + 16))
  {
    sub_1B03B5C80(a1 + *(v6 + 24), v17, &unk_1EB6E3670, &unk_1B0E9B260);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
    if ((*(*(v21 - 8) + 48))(v17, 1, v21) == 1)
    {
      sub_1B0398EFC(v17, &unk_1EB6E3670, &unk_1B0E9B260);
    }

    else
    {
      sub_1B03B5C80(v17, v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      sub_1B0398EFC(v17, &unk_1EB6E26C0, &unk_1B0E9DE10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      v22 = sub_1B0E46E98();
      sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      if ((v22 & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    return MEMORY[0x1E69E7CC0];
  }

LABEL_2:
  sub_1B0B48F08(a1, v8, type metadata accessor for MessageBatches);
  v18 = a3 & 1;
  v24[12] = v18;
  if (v18)
  {
    v19 = 0;
  }

  else
  {
    v19 = HIDWORD(a2);
  }

  if (v18)
  {
    a2 = 0;
  }

  else
  {
    a2 = a2;
  }

  sub_1B0B3EDEC(v19 | (v18 << 32));
  v24[8] = v18;
  sub_1B0B40220(a2 | (v18 << 32), v11);
  sub_1B0B48F70(v8, type metadata accessor for MessageBatches);
  v20 = sub_1B0B3F688();
  sub_1B0B48F70(v11, type metadata accessor for MessageBatches);
  return v20;
}

uint64_t sub_1B0B48350(uint64_t a1, unint64_t a2, int a3)
{
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4948, &qword_1B0EC6768);
  MEMORY[0x1EEE9AC00](v37);
  v34 = (&v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v36 = &v26 - v8;
  v9 = type metadata accessor for MessagesToRemoveHelper.Range(0);
  v35 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_1B0B48064(a1, a2, a3 & 1);
  v13 = *(v12 + 16);
  if (v13)
  {
    v27 = a1;
    v28 = a2;
    v29 = a3;
    v39 = MEMORY[0x1E69E7CC0];
    sub_1B0B09F24(0, v13, 0);
    v14 = v39;
    v33 = *(v12 + 16);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
    v16 = 0;
    v18 = *(v15 - 8);
    result = v15 - 8;
    v30 = v12 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v31 = v18;
    v32 = v12;
    while (v33 != v16)
    {
      if (v16 >= *(v12 + 16))
      {
        goto LABEL_12;
      }

      v19 = v36;
      v20 = v37;
      v21 = *(v37 + 48);
      sub_1B03B5C80(v30 + *(v31 + 72) * v16, &v36[v21], &unk_1EB6E26C0, &unk_1B0E9DE10);
      v22 = v34;
      *v34 = v16;
      v23 = *(v20 + 48);
      sub_1B03C60A4(&v19[v21], v22 + v23, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B0B468FC(v16, v22 + v23, v11);
      sub_1B0398EFC(v22, &qword_1EB6E4948, &qword_1B0EC6768);
      v39 = v14;
      v25 = *(v14 + 16);
      v24 = *(v14 + 24);
      if (v25 >= v24 >> 1)
      {
        sub_1B0B09F24((v24 > 1), v25 + 1, 1);
        v14 = v39;
      }

      ++v16;
      *(v14 + 16) = v25 + 1;
      result = sub_1B0B48EA0(v11, v14 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v25, type metadata accessor for MessagesToRemoveHelper.Range);
      v12 = v32;
      if (v13 == v16)
      {

        sub_1B0B48F70(v27, type metadata accessor for MessageBatches);
        LOBYTE(a3) = v29;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {

    sub_1B0B48F70(a1, type metadata accessor for MessageBatches);
    v14 = MEMORY[0x1E69E7CC0];
LABEL_10:
    v38 = a3 & 1;
    return v14;
  }

  return result;
}

uint64_t type metadata accessor for MessagesToRemoveHelper.Range(uint64_t a1)
{
  result = qword_1EB6DD8A0;
  if (!qword_1EB6DD8A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B0B48718(uint64_t a1, unint64_t a2, int a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v45 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v41 - v9;
  v10 = type metadata accessor for MessageBatches(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v41 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v41 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v42 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v43 = &v41 - v23;
  sub_1B0B48F08(a1, v12, type metadata accessor for MessageBatches);
  v46 = a3;
  v25 = a3 & 1;
  v24 = (a3 & 1) == 0;
  LOBYTE(v48) = a3 & 1;
  v26 = a3 & 1;
  if (a3)
  {
    v27 = 0;
  }

  else
  {
    v27 = HIDWORD(a2);
  }

  if (v24)
  {
    a2 = a2;
  }

  else
  {
    a2 = 0;
  }

  sub_1B0B3EDEC(v27 | (v26 << 32));
  LOBYTE(v48) = v25;
  sub_1B0B40220(a2 | (v25 << 32), v15);
  sub_1B0B48F70(v12, type metadata accessor for MessageBatches);
  v28 = v15[1];
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0B48F70(v15, type metadata accessor for MessageBatches);
  if (*(v28 + 16))
  {
    v29 = *(v28 + 32);

    v48 = v29;
    v30 = sub_1B041C1E8();
    v47 = Range<>.init<A>(_:)(&v48, &type metadata for UID, v30);
    sub_1B03D06F8();
    sub_1B0E46F08();
    v31 = 0;
  }

  else
  {

    v31 = 1;
  }

  (*(v20 + 56))(v18, v31, 1, v19);
  if ((*(v20 + 48))(v18, 1, v19) == 1)
  {
    sub_1B0398EFC(v18, &unk_1EB6E3670, &unk_1B0E9B260);
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
    v33 = v43;
    sub_1B03C60A4(v18, v43, &unk_1EB6E26C0, &unk_1B0E9DE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E44D8, &qword_1B0EC5258);
    v34 = (type metadata accessor for MessagesToRemoveHelper.Range(0) - 8);
    v35 = (*(*v34 + 80) + 32) & ~*(*v34 + 80);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1B0EC1E70;
    v37 = (v36 + v35);
    v38 = v42;
    sub_1B03B5C80(v33, v42, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B03D06F8();
    v39 = v44;
    sub_1B0E46EE8();
    v40 = v45;
    sub_1B0E46EE8();
    *v37 = 0;
    sub_1B03C60A4(v38, v37 + v34[7], &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B03C60A4(v39, v37 + v34[8], &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v40, v37 + v34[9], &unk_1EB6E1AF0, &unk_1B0E9AF40);
    *(v37 + v34[10]) = 0;
    sub_1B0398EFC(v33, &unk_1EB6E26C0, &unk_1B0E9DE10);
    return v36;
  }
}

void sub_1B0B48C6C(uint64_t a1)
{
  sub_1B0B48D48(319, qword_1EB6DE250, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v1 <= 0x3F)
  {
    sub_1B0B48D48(319, &qword_1EB6DE3E0, type metadata accessor for MessageIdentifierSet);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B48D48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B041C1E8();
    v7 = a3(a1, &type metadata for UID, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1B0B48DF0()
{
  result = qword_1EB6E4950;
  if (!qword_1EB6E4950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4950);
  }

  return result;
}

unint64_t sub_1B0B48E48()
{
  result = qword_1EB6E4958;
  if (!qword_1EB6E4958)
  {
    type metadata accessor for MessagesToRemoveHelper.Range(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4958);
  }

  return result;
}

uint64_t sub_1B0B48EA0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B48F08(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B0B48F70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B0B48FD4(uint64_t a1)
{
  result = _s15MissingMessagesO10IncompleteVMa(319);
  if (v2 <= 0x3F)
  {
    result = _s15MissingMessagesO8CompleteVMa(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1B0B4909C(uint64_t a1)
{
  sub_1B0AA967C();
  if (v1 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1B0B49150(uint64_t a1)
{
  sub_1B0B493C0(319, &qword_1EB6DE3E0, type metadata accessor for MessageIdentifierSet);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1B0B49220(uint64_t a1)
{
  _s15MissingMessagesO8ProgressVMa(319);
  if (v1 <= 0x3F)
  {
    sub_1B0AA967C();
    if (v2 <= 0x3F)
    {
      _s15MissingMessagesO11QueriedUIDsVMa(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0B492EC(uint64_t a1)
{
  sub_1B0B493C0(319, qword_1EB6DE250, type metadata accessor for MessageIdentifierSetNonEmpty);
  if (v1 <= 0x3F)
  {
    sub_1B0B493C0(319, &qword_1EB6DE3E0, type metadata accessor for MessageIdentifierSet);
    if (v2 <= 0x3F)
    {
      sub_1B0AA967C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1B0B493C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1B041C1E8();
    v7 = a3(a1, &type metadata for UID, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t _s15MissingMessagesO7UnknownVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1B0B494D4(uint64_t a1)
{
  v190 = a1;
  v188 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v188);
  v181 = &v167 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v182 = &v167 - v3;
  v185 = _s15MissingMessagesO8CompleteVMa(0);
  MEMORY[0x1EEE9AC00](v185);
  v173 = &v167 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v180 = &v167 - v6;
  v187 = _s15MissingMessagesO8ProgressVMa(0);
  MEMORY[0x1EEE9AC00](v187);
  v178 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v175 = &v167 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v179 = &v167 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v176 = &v167 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v177 = &v167 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v174 = &v167 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v172 = &v167 - v19;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4978, &qword_1B0EC6B98);
  MEMORY[0x1EEE9AC00](v189);
  v21 = &v167 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v184 = &v167 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v171 = &v167 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v183 = &v167 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v170 = &v167 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v167 = &v167 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v167 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v36);
  v169 = &v167 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v168 = &v167 - v39;
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v167 - v41;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v45 = &v167 - v44;
  v46 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v167 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3E8C(v191, v48, _s15MissingMessagesOMa);
  sub_1B03B5C80(v190, v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v186 = v36;
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v42, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v49 = 1;
  }

  else
  {
    sub_1B03C60A4(v42, v35, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v35, v45, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v49 = 0;
  }

  (*(v23 + 56))(v45, v49, 1, v22);
  v50 = *(v189 + 48);
  sub_1B03D3E8C(v48, v21, _s15MissingMessagesOMa);
  sub_1B03C60A4(v45, &v21[v50], &unk_1EB6E3670, &unk_1B0E9B260);
  v189 = v46;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v78 = *v21;
    if ((*(v23 + 48))(&v21[v50], 1, v22) == 1)
    {
      v79 = _s15MissingMessagesO10NewMissingVMa(0);
      v80 = v191;
      v81 = v190 + *(v79 + 20);
      v82 = *(v81 + 16);
      v83 = *(v81 + 20);
      v84 = v185;
      sub_1B03D3DBC(v190 + *(v79 + 24), v191 + *(v185 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
      *v80 = v82;
      *(v80 + 4) = v83;
      *(v80 + *(v84 + 24)) = v78;
    }

    else
    {
      v124 = v167;
      sub_1B03C60A4(&v21[v50], v167, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v125 = v170;
      sub_1B03B5C80(v124, v170, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D06F8();
      v126 = v168;
      sub_1B0E46EE8();
      sub_1B0398EFC(v124, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v127 = _s15MissingMessagesO10NewMissingVMa(0);
      v128 = v190;
      v129 = (v190 + *(v127 + 20));
      v130 = *v129;
      v131 = v129[2];
      if (*v129 <= v131)
      {
        v132 = v129[2];
      }

      else
      {
        v132 = *v129;
      }

      if (*(v129 + 4))
      {
        v130 = v129[2];
      }

      else
      {
        v131 = v132;
      }

      if (*(v129 + 12))
      {
        v133 = v130;
      }

      else
      {
        v133 = v131;
      }

      v134 = v129[3] & v129[1];
      v135 = v125;
      v136 = v172;
      sub_1B03C60A4(v135, v172, &unk_1EB6E26C0, &unk_1B0E9DE10);
      v137 = v187;
      sub_1B03C60A4(v126, v136 + *(v187 + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
      v138 = v136 + *(v137 + 24);
      *v138 = v133;
      *(v138 + 4) = v134;
      LODWORD(v137) = v129[4];
      v139 = *(v129 + 20);
      v140 = v188;
      v141 = v128 + *(v127 + 24);
      v142 = v191;
      sub_1B03D3DBC(v141, v191 + *(v188 + 24), _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1B03D3E8C(v136, v142, _s15MissingMessagesO8ProgressVMa);
      v143 = v142 + *(v140 + 20);
      *v143 = v137;
      *(v143 + 4) = v139;
      *(v142 + *(v140 + 28)) = v78;
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload == 1)
  {
    if ((*(v23 + 48))(&v21[v50], 1, v22) == 1)
    {
      v52 = v181;
      sub_1B03D3E8C(v21, v181, _s15MissingMessagesO10IncompleteVMa);
      v53 = v175;
      sub_1B03D3DBC(v52, v175, _s15MissingMessagesO8ProgressVMa);
      v54 = v53 + *(v187 + 24);
      v55 = *v54;
      v56 = *(v54 + 4);
      v57 = _s15MissingMessagesO10NewMissingVMa(0);
      v58 = v190;
      v59 = (v190 + *(v57 + 20));
      v60 = *v59;
      v61 = v59[2];
      if (*v59 <= v61)
      {
        v62 = v59[2];
      }

      else
      {
        v62 = *v59;
      }

      if (*(v59 + 4))
      {
        v60 = v59[2];
      }

      else
      {
        v61 = v62;
      }

      if (!*(v59 + 12))
      {
        v60 = v61;
      }

      v63 = v59[3] & v59[1];
      if (v60 >= v55)
      {
        v64 = v55;
      }

      else
      {
        v64 = v60;
      }

      if (v59[3] & v59[1])
      {
        v60 = v55;
        v64 = v55;
      }

      if (!v56)
      {
        v60 = v64;
      }

      *v54 = v60;
      *(v54 + 4) = v56 & v63;
      v65 = v178;
      sub_1B03D3DBC(v53, v178, _s15MissingMessagesO8ProgressVMa);
      v66 = v188;
      v67 = v52 + *(v188 + 20);
      v68 = *v67;
      v69 = v59[4];
      v70 = *(v59 + 20);
      if (v69 <= *v67)
      {
        v71 = *v67;
      }

      else
      {
        v71 = v59[4];
      }

      if (*(v59 + 20))
      {
        v69 = *v67;
      }

      else
      {
        v68 = v71;
      }

      v72 = *(v67 + 4);
      if (v72)
      {
        v73 = v69;
      }

      else
      {
        v73 = v68;
      }

      v74 = v72 & v70;
      v75 = v191;
      MessageIdentifierSet.union(_:)(v58 + *(v57 + 24), v191 + *(v188 + 24));
      sub_1B03D3F5C(v53, _s15MissingMessagesO8ProgressVMa);
      v76 = *(v52 + *(v66 + 28));
      sub_1B03D3F5C(v52, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03D3E8C(v65, v75, _s15MissingMessagesO8ProgressVMa);
      v77 = v75 + *(v66 + 20);
      *v77 = v73;
      *(v77 + 4) = v74;
      *(v75 + *(v66 + 28)) = v76;
      return swift_storeEnumTagMultiPayload();
    }

    v98 = v182;
    sub_1B03D3E8C(v21, v182, _s15MissingMessagesO10IncompleteVMa);
    v99 = v184;
    sub_1B03C60A4(&v21[v50], v184, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v100 = v176;
    sub_1B03D3DBC(v98, v176, _s15MissingMessagesO8ProgressVMa);
    sub_1B0B4C3A4(v99);
    v101 = v100 + *(v187 + 24);
    v102 = *v101;
    v103 = *(v101 + 4);
    v104 = _s15MissingMessagesO10NewMissingVMa(0);
    v105 = v190;
    v106 = (v190 + *(v104 + 20));
    v107 = *v106;
    v108 = v106[2];
    if (*v106 <= v108)
    {
      v109 = v106[2];
    }

    else
    {
      v109 = *v106;
    }

    if (*(v106 + 4))
    {
      v107 = v106[2];
    }

    else
    {
      v108 = v109;
    }

    if (!*(v106 + 12))
    {
      v107 = v108;
    }

    v110 = v106[3] & v106[1];
    if (v107 >= v102)
    {
      v111 = v102;
    }

    else
    {
      v111 = v107;
    }

    if (v106[3] & v106[1])
    {
      v107 = v102;
      v111 = v102;
    }

    if (!v103)
    {
      v107 = v111;
    }

    *v101 = v107;
    *(v101 + 4) = v103 & v110;
    v112 = v179;
    sub_1B03D3DBC(v100, v179, _s15MissingMessagesO8ProgressVMa);
    v113 = v188;
    v114 = v98 + *(v188 + 20);
    v115 = *v114;
    v116 = v106[4];
    if (v116 <= *v114)
    {
      v117 = *v114;
    }

    else
    {
      v117 = v106[4];
    }

    if (*(v106 + 20))
    {
      v116 = *v114;
    }

    else
    {
      v115 = v117;
    }

    v118 = *(v114 + 4);
    if (v118)
    {
      v119 = v116;
    }

    else
    {
      v119 = v115;
    }

    v120 = v118 & v106[5];
    v121 = v191;
    MessageIdentifierSet.union(_:)(v105 + *(v104 + 24), v191 + *(v188 + 24));
    sub_1B03D3F5C(v100, _s15MissingMessagesO8ProgressVMa);
    sub_1B0398EFC(v184, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v122 = *(v98 + *(v113 + 28));
    v123 = _s15MissingMessagesO10IncompleteVMa;
LABEL_98:
    sub_1B03D3F5C(v98, v123);
    sub_1B03D3E8C(v112, v121, _s15MissingMessagesO8ProgressVMa);
    v165 = v121 + *(v113 + 20);
    *v165 = v119;
    *(v165 + 4) = v120;
    *(v121 + *(v113 + 28)) = v122;
    return swift_storeEnumTagMultiPayload();
  }

  if ((*(v23 + 48))(&v21[v50], 1, v22) != 1)
  {
    v98 = v180;
    sub_1B03D3E8C(v21, v180, _s15MissingMessagesO8CompleteVMa);
    v144 = v183;
    sub_1B03C60A4(&v21[v50], v183, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v145 = v144;
    v146 = v171;
    sub_1B03B5C80(v145, v171, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B03D06F8();
    v147 = v169;
    sub_1B0E46EE8();
    v148 = _s15MissingMessagesO10NewMissingVMa(0);
    v149 = v190;
    v150 = (v190 + *(v148 + 20));
    v151 = *v150;
    v152 = v150[2];
    if (*v150 <= v152)
    {
      v153 = v150[2];
    }

    else
    {
      v153 = *v150;
    }

    if (*(v150 + 4))
    {
      v151 = v150[2];
    }

    else
    {
      v152 = v153;
    }

    if (*(v150 + 12))
    {
      v154 = v151;
    }

    else
    {
      v154 = v152;
    }

    v155 = v150[3] & v150[1];
    v156 = v146;
    v157 = v174;
    sub_1B03C60A4(v156, v174, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v158 = v187;
    sub_1B03C60A4(v147, v157 + *(v187 + 20), &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v159 = v157 + *(v158 + 24);
    *v159 = v154;
    *(v159 + 4) = v155;
    v112 = v177;
    sub_1B03D3DBC(v157, v177, _s15MissingMessagesO8ProgressVMa);
    v160 = *v98;
    v161 = v150[4];
    v162 = *(v150 + 20);
    if (v161 <= *v98)
    {
      v163 = *v98;
    }

    else
    {
      v163 = v150[4];
    }

    if (*(v150 + 20))
    {
      v161 = *v98;
    }

    else
    {
      v160 = v163;
    }

    if (*(v98 + 4))
    {
      v119 = v161;
    }

    else
    {
      v119 = v160;
    }

    v120 = *(v98 + 4) & v162;
    v164 = v185;
    v113 = v188;
    v121 = v191;
    MessageIdentifierSet.union(_:)(v149 + *(v148 + 24), v191 + *(v188 + 24));
    sub_1B03D3F5C(v157, _s15MissingMessagesO8ProgressVMa);
    sub_1B0398EFC(v183, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v122 = *(v98 + *(v164 + 24));
    v123 = _s15MissingMessagesO8CompleteVMa;
    goto LABEL_98;
  }

  v85 = v173;
  sub_1B03D3E8C(v21, v173, _s15MissingMessagesO8CompleteVMa);
  v86 = *v85;
  v87 = *(v85 + 4);
  v88 = _s15MissingMessagesO10NewMissingVMa(0);
  v89 = v191;
  v90 = v190 + *(v88 + 20);
  v91 = *(v90 + 16);
  v92 = *(v90 + 20);
  if (v91 <= v86)
  {
    v93 = v86;
  }

  else
  {
    v93 = v91;
  }

  if (v92)
  {
    v91 = v86;
    v93 = v86;
  }

  if (v87)
  {
    v94 = v91;
  }

  else
  {
    v94 = v93;
  }

  v95 = v87 & v92;
  v96 = v185;
  MessageIdentifierSet.union(_:)(v190 + *(v88 + 24), v191 + *(v185 + 20));
  v97 = *(v85 + *(v96 + 24));
  sub_1B03D3F5C(v85, _s15MissingMessagesO8CompleteVMa);
  *v89 = v94;
  *(v89 + 4) = v95;
  *(v89 + *(v96 + 24)) = v97;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1B0B4A410(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v4 = sub_1B0E46E18();
  if (v4 == sub_1B0E46E28())
  {
    return 0;
  }

  result = sub_1B0E46E28();
  v6 = result - 1;
  if (__OFSUB__(result, 1))
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  v7 = sub_1B0E46E18();
  result = sub_1B0E46E28();
  if (v6 < v7 || v6 >= result)
  {
    goto LABEL_9;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MessageIdentifierSet.RangeView.subscript.getter(v8, &v9);
  return v9;
}

uint64_t sub_1B0B4A4F4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4980, &qword_1B0EC6BA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  v7 = _s15MissingMessagesO8ProgressVMa(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3DBC(v2, v16, _s15MissingMessagesOMa);
  result = swift_getEnumCaseMultiPayload();
  if (result)
  {
    if (result == 1)
    {
      sub_1B03D3F5C(v2, _s15MissingMessagesOMa);
      sub_1B03D3E8C(v16, v13, _s15MissingMessagesO10IncompleteVMa);
      sub_1B0B4C674(a1, v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        sub_1B0398EFC(v6, &qword_1EB6E4980, &qword_1B0EC6BA0);
        v18 = v11[6];
        v19 = &v13[v11[5]];
        v20 = *v19;
        v21 = v19[4];
        v22 = _s15MissingMessagesO8CompleteVMa(0);
        sub_1B03D3DBC(&v13[v18], v2 + *(v22 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
        v23 = v13[v11[7]];
        sub_1B03D3F5C(v13, _s15MissingMessagesO10IncompleteVMa);
        *v2 = v20;
        *(v2 + 4) = v21;
        *(v2 + *(v22 + 24)) = v23;
      }

      else
      {
        sub_1B03D3E8C(v6, v10, _s15MissingMessagesO8ProgressVMa);
        sub_1B0B4BE48();
        if (v24)
        {
          v25 = &v13[v11[5]];
          v26 = *v25;
          LOBYTE(v25) = v25[4];
          v27 = &v10[*(v7 + 24)];
          *v27 = v26;
          v27[4] = v25;
        }

        sub_1B03D3E8C(v10, v2, _s15MissingMessagesO8ProgressVMa);
        v28 = &v13[v11[5]];
        v29 = *v28;
        v30 = v28[4];
        sub_1B03D3DBC(&v13[v11[6]], v2 + v11[6], _s15MissingMessagesO11QueriedUIDsVMa);
        v31 = v13[v11[7]];
        sub_1B03D3F5C(v13, _s15MissingMessagesO10IncompleteVMa);
        v32 = v2 + v11[5];
        *v32 = v29;
        *(v32 + 4) = v30;
        *(v2 + v11[7]) = v31;
      }

      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      return sub_1B03D3F5C(v16, _s15MissingMessagesOMa);
    }
  }

  return result;
}

uint64_t sub_1B0B4A8E4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - v3;
  v5 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3DBC(v1, v10, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B03D3E8C(v10, v7, _s15MissingMessagesO10IncompleteVMa);
    sub_1B03B5C80(v7, v4, &unk_1EB6E26C0, &unk_1B0E9DE10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
    v12 = MessageIdentifierSet.count.getter();
    sub_1B03D3F5C(v7, _s15MissingMessagesO10IncompleteVMa);
    sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    return v12;
  }

  else
  {
    sub_1B03D3F5C(v10, _s15MissingMessagesOMa);
    return 0;
  }
}

unint64_t sub_1B0B4AAF0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v0);
  v2 = &v7 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E2790, &qword_1B0E9CC60);
  v3 = sub_1B0E46E18();
  v4 = sub_1B0E46E28();
  if (v3 == v4)
  {
    sub_1B0398EFC(v2, &unk_1EB6E2780, &unk_1B0E9C5E0);
    v5 = 0;
  }

  else
  {
    MessageIdentifierSet.RangeView.subscript.getter(v0, &v8);
    sub_1B0398EFC(v2, &unk_1EB6E2780, &unk_1B0E9C5E0);
    v5 = v8;
  }

  return v5 | ((v3 == v4) << 32);
}

unint64_t sub_1B0B4AC30()
{
  v1 = v0;
  v2 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = _s15MissingMessagesO8CompleteVMa(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B03D3DBC(v1, v7, _s15MissingMessagesOMa);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v14 = _s15MissingMessagesOMa;
    v15 = v7;
LABEL_8:
    sub_1B03D3F5C(v15, v14);
    v12 = 0;
    v13 = 1;
    return v12 | (v13 << 32);
  }

  sub_1B03D3E8C(v7, v10, _s15MissingMessagesO8CompleteVMa);
  if (v10[*(v8 + 24)] != 1)
  {
    v14 = _s15MissingMessagesO8CompleteVMa;
    v15 = v10;
    goto LABEL_8;
  }

  sub_1B03D3DBC(&v10[*(v8 + 20)], v4, _s15MissingMessagesO11QueriedUIDsVMa);
  v11 = sub_1B0B4AAF0();
  sub_1B03D3F5C(v10, _s15MissingMessagesO8CompleteVMa);
  sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v12 = 0;
  v13 = 1;
  if ((v11 & 0x100000000) == 0 && (v11 & 0xFFFFFFFE) != 0)
  {
    v13 = 0;
    v12 = (v11 - 1);
  }

  return v12 | (v13 << 32);
}

uint64_t sub_1B0B4AE74@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = _s15MissingMessagesO8ProgressVMa(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3DBC(v2, v15, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03D3E8C(v15, v12, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03D3DBC(v12, v9, _s15MissingMessagesO8ProgressVMa);
      sub_1B03D3F5C(v12, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03B5C80(v9, v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
      sub_1B03D3F5C(v9, _s15MissingMessagesO8ProgressVMa);
      return sub_1B03C60A4(v6, a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    sub_1B03D3F5C(v15, _s15MissingMessagesOMa);
  }

  sub_1B03D06F8();
  return sub_1B0E46EE8();
}

uint64_t sub_1B0B4B0F4(uint64_t a1, uint64_t a2)
{
  v26 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E4970, &unk_1B0EC6B40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v26 - v12;
  v14 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3DBC(v2, v19, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03D3E8C(v19, v16, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03B5C80(v16, v13, &unk_1EB6E26C0, &unk_1B0E9DE10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v21 = MessageIdentifierSet.count.getter();
      sub_1B03D3F5C(v16, _s15MissingMessagesO10IncompleteVMa);
      sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    else
    {
      sub_1B03D3F5C(v19, _s15MissingMessagesOMa);
      v21 = 0;
    }
  }

  else
  {
    v21 = 0;
  }

  if (v21 >= v26 / 2)
  {
    goto LABEL_13;
  }

  sub_1B0B4BAC0(v6);
  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_1B03D3E8C(v6, v10, _s15MissingMessagesO11QueriedUIDsVMa);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    if ((sub_1B0E46E98() & 1) == 0 && (a2 & 0x100000000) == 0)
    {
      v27 = a2;
      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
      v24 = MessageIdentifierSet.contains(_:)(&v27, v23);
      sub_1B03D3F5C(v10, _s15MissingMessagesO11QueriedUIDsVMa);
      v22 = v24 ^ 1;
      return v22 & 1;
    }

    sub_1B03D3F5C(v10, _s15MissingMessagesO11QueriedUIDsVMa);
LABEL_13:
    v22 = 0;
    return v22 & 1;
  }

  sub_1B0398EFC(v6, &qword_1EB6E4970, &unk_1B0EC6B40);
  v22 = 1;
  return v22 & 1;
}

uint64_t sub_1B0B4B4F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s15MissingMessagesO8CompleteVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3DBC(v2, v12, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03D3E8C(v12, v9, _s15MissingMessagesO10IncompleteVMa);
      v14 = *(v7 + 24);
      v15 = &v9[*(v7 + 20)];
      v16 = *v15;
      v17 = v15[4];
      v18 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
      sub_1B03D3DBC(&v9[v14], a1 + *(v18 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1B03D3F5C(v9, _s15MissingMessagesO10IncompleteVMa);
      *a1 = v16;
      *(a1 + 4) = v17;
    }

    else
    {
      sub_1B03D3E8C(v12, v6, _s15MissingMessagesO8CompleteVMa);
      v21 = *v6;
      v22 = v6[4];
      v23 = *(v4 + 20);
      v18 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
      sub_1B03D3E8C(&v6[v23], a1 + *(v18 + 20), _s15MissingMessagesO11QueriedUIDsVMa);
      *a1 = v21;
      *(a1 + 4) = v22;
    }

    return (*(*(v18 - 8) + 56))(a1, 0, 1, v18);
  }

  else
  {
    v19 = _s15MissingMessagesO30WindowUpperBoundAndQueriedUIDsVMa(0);
    return (*(*(v19 - 8) + 56))(a1, 1, 1, v19);
  }
}

uint64_t sub_1B0B4B7A8@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1B03D06F8();
  sub_1B0E46EE8();
  return sub_1B03C60A4(v4, a1, &unk_1EB6E1AF0, &unk_1B0E9AF40);
}

uint64_t sub_1B0B4B854()
{
  v1 = _s15MissingMessagesO8CompleteVMa(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3E8C(v0, v9, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03D3E8C(v9, v6, _s15MissingMessagesO10IncompleteVMa);
      v11 = *(v4 + 28);
      if (v6[v11])
      {
        v12 = 3;
      }

      else
      {
        v12 = 1;
        v6[v11] = 1;
      }

      sub_1B03D3E8C(v6, v0, _s15MissingMessagesO10IncompleteVMa);
    }

    else
    {
      sub_1B03D3E8C(v9, v3, _s15MissingMessagesO8CompleteVMa);
      v13 = *(v1 + 24);
      if (v3[v13])
      {
        v12 = 3;
      }

      else
      {
        v3[v13] = 1;
        v12 = 2;
      }

      sub_1B03D3E8C(v3, v0, _s15MissingMessagesO8CompleteVMa);
    }
  }

  else
  {
    if (*v9)
    {
      v12 = 3;
    }

    else
    {
      v12 = 0;
    }

    *v0 = 1;
  }

  swift_storeEnumTagMultiPayload();
  return v12;
}

uint64_t sub_1B0B4BAC0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = _s15MissingMessagesO8CompleteVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B03D3DBC(v2, v12, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1B03D3E8C(v12, v9, _s15MissingMessagesO10IncompleteVMa);
      sub_1B03D3DBC(&v9[*(v7 + 24)], a1, _s15MissingMessagesO11QueriedUIDsVMa);
      sub_1B03D3F5C(v9, _s15MissingMessagesO10IncompleteVMa);
    }

    else
    {
      sub_1B03D3E8C(v12, v6, _s15MissingMessagesO8CompleteVMa);
      sub_1B03D3E8C(&v6[*(v4 + 20)], a1, _s15MissingMessagesO11QueriedUIDsVMa);
    }

    v14 = 0;
  }

  else
  {
    v14 = 1;
  }

  v15 = _s15MissingMessagesO11QueriedUIDsVMa(0);
  return (*(*(v15 - 8) + 56))(a1, v14, 1, v15);
}

uint64_t sub_1B0B4BD10(uint64_t a1, uint64_t a2)
{
  sub_1B03D06F8();

  return sub_1B0E46E08();
}

uint64_t sub_1B0B4BD5C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B0E46508();
  return 0;
}

uint64_t sub_1B0B4BDB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return 0;
    }
  }

  else
  {
    if (*a2 != *a1)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  sub_1B03D06F8();

  return sub_1B0E46E08();
}

uint64_t sub_1B0B4BE48()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v13 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v13 - v8;
  sub_1B0B4C04C();
  sub_1B03B5C80(v0, v3, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessageIdentifierSet.intersection(_:)(v9, v6);
  sub_1B0398EFC(v3, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v10 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v10 < 1)
  {
    v11 = 0;
  }

  else
  {
    _s15MissingMessagesO8ProgressVMa(0);
    MessageIdentifierSet.intersection(_:)(v9, v6);
    MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v11 = v10;
  }

  sub_1B0398EFC(v9, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  return v11;
}

uint64_t sub_1B0B4C04C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = _s15MissingMessagesO8ProgressVMa(0);
  v15 = v1 + *(v14 + 24);
  if ((*(v15 + 4) & 1) == 0)
  {
    v16 = *v15;
    if (v16 != -1)
    {
      LODWORD(v32) = v16 + 1;
LABEL_14:
      LODWORD(v31) = -1;
      v28 = sub_1B041C1E8();
      static MessageIdentifier.... infix(_:_:)(&v32, &v31, &type metadata for UID, &v33);
      v32 = v33;
      v31 = Range<>.init<A>(_:)(&v32, &type metadata for UID, v28);
      sub_1B03D06F8();
      return sub_1B0E46F08();
    }
  }

  sub_1B03B5C80(v1, v7, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessageIdentifierSet.union(_:)(v1 + *(v14 + 20), v10);
  sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.suffix(_:)(3000, v8, v13);
  sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v17 = MessageIdentifierSet.startIndex.getter(v8);
  v19 = v18;
  if (v17 != MessageIdentifierSet.endIndex.getter(v8) || v19 != v20)
  {
    MessageIdentifierSet.subscript.getter(v19, v8, &v33);
    sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    LODWORD(v32) = v33;
    goto LABEL_14;
  }

  sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v1, v4, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v22 = MessageIdentifierSet.startIndex.getter(v8);
  v24 = v23;
  if (v22 != MessageIdentifierSet.endIndex.getter(v8) || v24 != v25)
  {
    MessageIdentifierSet.subscript.getter(v24, v8, &v33);
    v27 = v33;
    sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    LODWORD(v32) = v27;
    goto LABEL_14;
  }

  result = sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  __break(1u);
  return result;
}

uint64_t sub_1B0B4C3A4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v19 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v19 - v15;
  sub_1B03B5C80(v2, v10, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v19[1] = a1;
  MessageIdentifierSet.union(_:)(a1, v13);
  sub_1B0398EFC(v10, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v13, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v17 = 1;
  }

  else
  {
    sub_1B03C60A4(v13, v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B03C60A4(v7, v16, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v17 = 0;
  }

  (*(v5 + 56))(v16, v17, 1, v4);
  result = (*(v5 + 48))(v16, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    sub_1B0B4E054(v16, v2);
    _s15MissingMessagesO8ProgressVMa(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
    return sub_1B0E46EC8();
  }

  return result;
}

uint64_t sub_1B0B4C674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v41 = a1;
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E3670, &unk_1B0E9B260);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v40 = &v36 - v5;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v38 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v37 = &v36 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v36 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v36 - v19;
  sub_1B03B5C80(v3, v11, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessageIdentifierSet.intersection(_:)(v41, v20);
  sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v41 = v3;
  sub_1B03B5C80(v3, v11, &unk_1EB6E26C0, &unk_1B0E9DE10);
  MessageIdentifierSet.subtracting(_:)(v20, v17);
  sub_1B0398EFC(v11, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  sub_1B03B5C80(v17, v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (MessageIdentifierSet.count.getter() < 1)
  {
    sub_1B0398EFC(v14, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v23 = 1;
    v22 = v40;
  }

  else
  {
    v21 = v38;
    sub_1B03C60A4(v14, v38, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v22 = v40;
    sub_1B03C60A4(v21, v40, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v23 = 0;
  }

  v24 = v39;
  v25 = v42;
  (*(v39 + 56))(v22, v23, 1, v42);
  if ((*(v24 + 48))(v22, 1, v25) == 1)
  {
    sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v22, &unk_1EB6E3670, &unk_1B0E9B260);
    v26 = _s15MissingMessagesO8ProgressVMa(0);
    return (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
  }

  else
  {
    v28 = v37;
    sub_1B03C60A4(v22, v37, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v29 = v43;
    sub_1B03B5C80(v28, v43, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v30 = _s15MissingMessagesO8ProgressVMa(0);
    v31 = v41;
    MessageIdentifierSet.union(_:)(v20, v29 + *(v30 + 20));
    sub_1B0398EFC(v28, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0398EFC(v17, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    sub_1B0398EFC(v20, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v32 = *(v30 + 24);
    v33 = *(v31 + v32);
    v34 = *(v31 + v32 + 4);
    v35 = v29 + v32;
    *v35 = v33;
    *(v35 + 4) = v34;
    return (*(*(v30 - 8) + 56))(v29, 0, 1, v30);
  }
}

uint64_t sub_1B0B4CBCC()
{
  v1 = _s15MissingMessagesO8CompleteVMa(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v27[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = _s15MissingMessagesO10IncompleteVMa(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = _s15MissingMessagesOMa(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v27[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1B03D3DBC(v0, v9, _s15MissingMessagesOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    return 0x6E776F6E6B6E75;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1B03D3E8C(v9, v6, _s15MissingMessagesO10IncompleteVMa);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD000000000000016, 0x80000001B0F2B4C0);
    v11 = sub_1B0B4D06C();
    MEMORY[0x1B2726E80](v11);

    MEMORY[0x1B2726E80](0xD000000000000015, 0x80000001B0F2B4E0);
    v12 = &v6[*(v4 + 20)];
    if (v12[4])
    {
      v13 = 7104878;
      v14 = 0xE300000000000000;
    }

    else
    {
      v18 = *v12;
      v29 = 0;
      v30 = 0xE000000000000000;
      v28 = v18;
      sub_1B0E46508();
      v13 = v29;
      v14 = v30;
    }

    MEMORY[0x1B2726E80](v13, v14);

    MEMORY[0x1B2726E80](0x656972657571202CLL, 0xEF203A7344495564);
    _s15MissingMessagesO11QueriedUIDsVMa(0);
    sub_1B0B4DB1C();
    v19 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v19);

    MEMORY[0x1B2726E80](41, 0xE100000000000000);
    v15 = v31;
    v20 = _s15MissingMessagesO10IncompleteVMa;
    v21 = v6;
  }

  else
  {
    sub_1B03D3E8C(v9, v3, _s15MissingMessagesO8CompleteVMa);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0xD00000000000001BLL, 0x80000001B0F2B4A0);
    if (v3[4])
    {
      v16 = 7104878;
      v17 = 0xE300000000000000;
    }

    else
    {
      v22 = *v3;
      v29 = 0;
      v30 = 0xE000000000000000;
      v28 = v22;
      sub_1B0E46508();
      v16 = v29;
      v17 = v30;
    }

    MEMORY[0x1B2726E80](v16, v17);

    MEMORY[0x1B2726E80](0x656972657571202CLL, 0xEF203A7344495564);
    _s15MissingMessagesO11QueriedUIDsVMa(0);
    sub_1B0B4DB1C();
    v23 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v23);

    MEMORY[0x1B2726E80](0x646C756F6873202CLL, 0xEF203A776F726720);
    if (v3[*(v1 + 24)])
    {
      v24 = 1702195828;
    }

    else
    {
      v24 = 0x65736C6166;
    }

    if (v3[*(v1 + 24)])
    {
      v25 = 0xE400000000000000;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    MEMORY[0x1B2726E80](v24, v25);

    MEMORY[0x1B2726E80](41, 0xE100000000000000);
    v15 = v31;
    v20 = _s15MissingMessagesO8CompleteVMa;
    v21 = v3;
  }

  sub_1B03D3F5C(v21, v20);
  return v15;
}

uint64_t sub_1B0B4D06C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v41 - v6;
  sub_1B03B5C80(v0, &v41 - v6, &unk_1EB6E26C0, &unk_1B0E9DE10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  v8 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v7, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v9 = _s15MissingMessagesO8ProgressVMa(0);
  v10 = *(v9 + 20);
  v11 = MessageIdentifierSet.count.getter();
  if (v8 <= 0xA && v11 <= 0xA)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0x20676E697373696DLL, 0xE800000000000000);
    sub_1B03B5C80(v0, v4, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v23 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v43 = v23;
    v41 = v9;
    v24 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v24);

    MEMORY[0x1B2726E80](0x207344495520, 0xE600000000000000);
    sub_1B03B5C80(v1, v4, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0E46508();
    sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1B2726E80](0x203A656E6F64202CLL, 0xE800000000000000);
    v43 = MessageIdentifierSet.count.getter();
    v25 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v25);

    MEMORY[0x1B2726E80](0x207344495520, 0xE600000000000000);
    sub_1B0E46508();
    MEMORY[0x1B2726E80](0xD000000000000023, 0x80000001B0F2B500);
    v26 = v1 + *(v41 + 24);
    if ((*(v26 + 4) & 1) == 0)
    {
      v27 = *v26;
      v43 = 0;
LABEL_20:
      v44 = 0xE000000000000000;
      v42 = v27;
      sub_1B0E46508();
      v39 = v43;
      v40 = v44;
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v11 <= 0xA)
  {
    v41 = v10;
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0x20676E697373696DLL, 0xE800000000000000);
    sub_1B03B5C80(v0, v4, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v28 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v43 = v28;
    v29 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v29);

    MEMORY[0x1B2726E80](0x6E69207344495520, 0xEF2065676E617220);
    sub_1B03B5C80(v1, v4, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v30 = sub_1B0B4D9F0();
    v32 = v31;
    result = sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    if (v32)
    {
      __break(1u);
      goto LABEL_23;
    }

    v43 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    sub_1B0E46508();
    MEMORY[0x1B2726E80](0x203A656E6F64202CLL, 0xE800000000000000);
    v43 = MessageIdentifierSet.count.getter();
    v33 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v33);

    MEMORY[0x1B2726E80](0x207344495520, 0xE600000000000000);
    sub_1B0E46508();
    MEMORY[0x1B2726E80](0xD000000000000023, 0x80000001B0F2B500);
    v22 = *(v9 + 24);
LABEL_17:
    v38 = (v1 + v22);
    if ((v38[1] & 1) == 0)
    {
      v27 = *v38;
      v43 = 0;
      goto LABEL_20;
    }

LABEL_18:
    v39 = 7104878;
    v40 = 0xE300000000000000;
LABEL_21:
    MEMORY[0x1B2726E80](v39, v40);

    return v45;
  }

  v41 = v9;
  if (v8 <= 0xA)
  {
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1B0E46298();
    MEMORY[0x1B2726E80](0x20676E697373696DLL, 0xE800000000000000);
    sub_1B03B5C80(v0, v4, &unk_1EB6E26C0, &unk_1B0E9DE10);
    v34 = MessageIdentifierSet.count.getter();
    sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    v43 = v34;
    v35 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v35);

    MEMORY[0x1B2726E80](0x207344495520, 0xE600000000000000);
    sub_1B03B5C80(v1, v4, &unk_1EB6E26C0, &unk_1B0E9DE10);
    sub_1B0E46508();
    sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    MEMORY[0x1B2726E80](0x203A656E6F64202CLL, 0xE800000000000000);
    v43 = MessageIdentifierSet.count.getter();
    v36 = sub_1B0E469C8();
    MEMORY[0x1B2726E80](v36);

    MEMORY[0x1B2726E80](0x6E69207344495520, 0xEF2065676E617220);
    result = sub_1B0B4D9F0();
    if (v37)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v43 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
    sub_1B0E46508();
    MEMORY[0x1B2726E80](0xD000000000000023, 0x80000001B0F2B500);
    v22 = *(v41 + 24);
    goto LABEL_17;
  }

  v45 = 0;
  v46 = 0xE000000000000000;
  sub_1B0E46298();
  MEMORY[0x1B2726E80](0x20676E697373696DLL, 0xE800000000000000);
  sub_1B03B5C80(v0, v4, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v13 = MessageIdentifierSet.count.getter();
  sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  v43 = v13;
  v14 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v14);

  MEMORY[0x1B2726E80](0x6E69207344495520, 0xEF2065676E617220);
  sub_1B03B5C80(v1, v4, &unk_1EB6E26C0, &unk_1B0E9DE10);
  v15 = sub_1B0B4D9F0();
  v17 = v16;
  result = sub_1B0398EFC(v4, &unk_1EB6E1AF0, &unk_1B0E9AF40);
  if (v17)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v43 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2640, &qword_1B0E9B010);
  sub_1B0E46508();
  MEMORY[0x1B2726E80](0x203A656E6F64202CLL, 0xE800000000000000);
  v43 = MessageIdentifierSet.count.getter();
  v19 = sub_1B0E469C8();
  MEMORY[0x1B2726E80](v19);

  MEMORY[0x1B2726E80](0x6E69207344495520, 0xEF2065676E617220);
  result = sub_1B0B4D9F0();
  v20 = v41;
  if ((v21 & 1) == 0)
  {
    v43 = result;
    sub_1B0E46508();
    MEMORY[0x1B2726E80](0xD000000000000023, 0x80000001B0F2B500);
    v22 = *(v20 + 24);
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B0B4D9F0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E2780, &unk_1B0E9C5E0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1B0B4AAF0();
  if ((v3 & 0x100000000) != 0)
  {
    return 0;
  }

  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MessageIdentifierSet.ranges.getter(v2);
  v5 = sub_1B0B4A410(&unk_1EB6E2780, &unk_1B0E9C5E0) >> 32;
  v7 = v6;
  sub_1B0398EFC(v2, &unk_1EB6E2780, &unk_1B0E9C5E0);
  if (v7)
  {
    return 0;
  }

  v9 = v5;
  v10 = v4;
  sub_1B041C1E8();
  static MessageIdentifier.... infix(_:_:)(&v10, &v9, &type metadata for UID, &v11);
  return v11;
}

unint64_t sub_1B0B4DB1C()
{
  result = qword_1EB6E4960;
  if (!qword_1EB6E4960)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB6E4960);
  }

  return result;
}

uint64_t sub_1B0B4DB74(uint64_t a1, uint64_t a2)
{
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v4 = *(_s15MissingMessagesO10NewMissingVMa(0) + 20);
  v5 = (a1 + v4);
  v6 = *(a1 + v4 + 4);
  v7 = *(a1 + v4 + 8);
  v8 = *(a1 + v4 + 12);
  v9 = *(a1 + v4 + 16);
  v10 = *(a1 + v4 + 20);
  v11 = (a2 + v4);
  v12 = *(a2 + v4 + 4);
  v13 = *(a2 + v4 + 8);
  v14 = *(a2 + v4 + 12);
  v15 = *(a2 + v4 + 16);
  v16 = *(a2 + v4 + 20);
  if (v6)
  {
    if (!v12)
    {
      return 0;
    }
  }

  else
  {
    if (*v11 == *v5)
    {
      v17 = v12;
    }

    else
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  if (v8)
  {
    if (!v14)
    {
      return 0;
    }
  }

  else
  {
    if (v13 == v7)
    {
      v18 = v14;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      return 0;
    }
  }

  if (v10)
  {
    if (!v16)
    {
      return 0;
    }
  }

  else
  {
    if (v15 == v9)
    {
      v20 = v16;
    }

    else
    {
      v20 = 1;
    }

    if (v20)
    {
      return 0;
    }
  }

  return sub_1B0E46E08();
}

uint64_t sub_1B0B4DC88(uint64_t a1, uint64_t a2)
{
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    goto LABEL_17;
  }

  v4 = _s15MissingMessagesO8ProgressVMa(0);
  if ((sub_1B0E46E08() & 1) == 0)
  {
    goto LABEL_17;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return v9 & 1;
    }
  }

  else
  {
    if (*v8 != *v6)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      goto LABEL_17;
    }
  }

  v10 = _s15MissingMessagesO10IncompleteVMa(0);
  v11 = *(v10 + 20);
  v12 = (a1 + v11);
  v13 = *(a1 + v11 + 4);
  v14 = (a2 + v11);
  v9 = *(a2 + v11 + 4);
  if ((v13 & 1) == 0)
  {
    if (*v14 != *v12)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v9)
  {
LABEL_15:
    if (sub_1B0E46E08())
    {
      LOBYTE(v9) = *(a1 + *(v10 + 28)) ^ *(a2 + *(v10 + 28)) ^ 1;
      return v9 & 1;
    }

LABEL_17:
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

BOOL sub_1B0B4DDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a1 & 0x100000000) != 0)
  {
    if ((a4 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else if ((a4 & 0x100000000) != 0 || a4 != a1)
  {
    return 0;
  }

  if ((a2 & 0x100000000) != 0)
  {
    if ((a5 & 0x100000000) == 0)
    {
      return 0;
    }
  }

  else if ((a5 & 0x100000000) != 0 || a5 != a2)
  {
    return 0;
  }

  if ((a3 & 0x100000000) != 0)
  {
    return (a6 & 0x100000000) != 0;
  }

  return (a6 & 0x100000000) == 0 && a6 == a3;
}

uint64_t sub_1B0B4DE0C(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 4);
  if (*(a1 + 4))
  {
    if (!*(a2 + 4))
    {
      return v4 & 1;
    }
  }

  else
  {
    if (*a2 != *a1)
    {
      v4 = 1;
    }

    if (v4)
    {
      goto LABEL_9;
    }
  }

  v5 = _s15MissingMessagesO8CompleteVMa(0);
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
LABEL_9:
    v4 = 0;
    return v4 & 1;
  }

  v4 = *(a1 + *(v5 + 24)) ^ *(a2 + *(v5 + 24)) ^ 1;
  return v4 & 1;
}

uint64_t sub_1B0B4DEB0(uint64_t a1, uint64_t a2)
{
  sub_1B03D06F8();
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v4 = _s15MissingMessagesO8ProgressVMa(0);
  if ((sub_1B0E46E08() & 1) == 0)
  {
    return 0;
  }

  v5 = *(v4 + 24);
  v6 = (a1 + v5);
  v7 = *(a1 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if ((v9 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v8 != *v6)
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return 1;
}

void sub_1B0B4DFB0(uint64_t a1)
{
  sub_1B0AA967C();
  if (v1 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B0B4E054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E26C0, &unk_1B0E9DE10);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1B0B4E0EC(uint64_t a1)
{
  sub_1B0B493C0(319, &qword_1EB6DE3E0, type metadata accessor for MessageIdentifierSet);
  if (v1 <= 0x3F)
  {
    _s15MissingMessagesO11QueriedUIDsVMa(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy21_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t _s15MissingMessagesO12WindowUpdateVwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 21))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s15MissingMessagesO12WindowUpdateVwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
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

  *(result + 21) = v3;
  return result;
}

char *sub_1B0B4E208(uint64_t a1, int a2, uint64_t a3)
{
  v7 = *v3;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1B0B00A7C(0, *(v7 + 2) + 1, 1, v7);
    v7 = result;
  }

  v10 = *(v7 + 2);
  v9 = *(v7 + 3);
  if (v10 >= v9 >> 1)
  {
    result = sub_1B0B00A7C((v9 > 1), v10 + 1, 1, v7);
    v7 = result;
  }

  *(v7 + 2) = v10 + 1;
  v11 = &v7[24 * v10];
  *(v11 + 4) = a1;
  *(v11 + 10) = a2;
  *(v11 + 6) = a3;
  *v3 = v7;
  return result;
}

void sub_1B0B4E2C4(void (*a1)(void, void)@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v107 = a2;
  v109 = a1;
  v101 = a3;
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v98 = &v96 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v97 = &v96 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v99 = &v96 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v108 = &v96 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v125 = &v96 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v115 = &v96 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v117 = &v96 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v120 = &v96 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49E0, &qword_1B0EC6FE8);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v102 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v105 = &v96 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v110 = &v96 - v28;
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v96 - v31;
  v33 = *(v5 + 56);
  v104 = v5 + 56;
  v103 = v33;
  (v33)(&v96 - v31, 1, 1, v4, v30);
  v123 = v3;
  v34 = *v3;
  v126 = v4;
  v114 = sub_1B0B5C4EC(&qword_1EB6DD960, &unk_1B0EC6DBC);
  v127 = v114;
  KeyPath = swift_getKeyPath();

  v36 = 0;
  v37 = sub_1B0B582AC(v34, KeyPath);

  v38 = sub_1B0B3876C(v37);

  v39 = 0;
  v40 = v38 + 56;
  v41 = 1 << *(v38 + 32);
  if (v41 < 64)
  {
    v42 = ~(-1 << v41);
  }

  else
  {
    v42 = -1;
  }

  v43 = v42 & *(v38 + 56);
  v44 = (v41 + 63) >> 6;
  v121 = (v5 + 48);
  v122 = v5;
  v106 = MEMORY[0x1E69E7CC0];
  v112 = v32;
  v113 = v4;
  v118 = v44;
  v119 = v38 + 56;
  v111 = v38;
  while (1)
  {
    while (1)
    {
      v45 = v117;
      if (!v43)
      {
        goto LABEL_10;
      }

LABEL_14:
      while (1)
      {
        v47 = __clz(__rbit64(v43));
        v43 &= v43 - 1;
        v48 = *(v38 + 48);
        v124 = *(v122 + 72);
        v49 = v120;
        sub_1B0B5E6D0(v48 + v124 * (v47 | (v39 << 6)), v120, type metadata accessor for MoveAndCopyMessages.CommandID);
        sub_1B0B5E798(v49, v45, type metadata accessor for MoveAndCopyMessages.CommandID);
        v50 = v123[2];
        v51 = v123[3];
        if (!*(v51 + 16))
        {
          break;
        }

        sub_1B0AE0058(v45);
        if ((v52 & 1) == 0)
        {
          break;
        }

LABEL_9:
        sub_1B0B5E738(v45, type metadata accessor for MoveAndCopyMessages.CommandID);
        v44 = v118;
        v40 = v119;
        if (!v43)
        {
          goto LABEL_10;
        }
      }

      v53 = v115;
      sub_1B0B5E6D0(v45, v115, type metadata accessor for MoveAndCopyMessages.CommandID);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
      v54 = swift_allocObject();
      sub_1B0B5E798(v53, v54 + *(*v54 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
      if (*(v50 + 16) && (v55 = sub_1B0AE00C4(v54), (v56 & 1) != 0))
      {
        v57 = *(*(v50 + 56) + 8 * v55);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      else
      {
        v57 = MEMORY[0x1E69E7CD0];
      }

      MEMORY[0x1EEE9AC00](v58);
      v59 = v114;
      *(&v96 - 2) = v4;
      *(&v96 - 1) = v59;
      v60 = swift_getKeyPath();

      v61 = sub_1B0B582AC(v57, v60);

      v62 = sub_1B0B3876C(v61);

      v63 = 1 << *(v62 + 32);
      v64 = v63 < 64 ? ~(-1 << v63) : -1;
      v65 = v64 & *(v62 + 56);
      v66 = (v63 + 63) >> 6;
      _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      v67 = 0;
      while (v65)
      {
        v68 = v125;
LABEL_31:
        sub_1B0B5E6D0(*(v62 + 48) + (__clz(__rbit64(v65)) | (v67 << 6)) * v124, v68, type metadata accessor for MoveAndCopyMessages.CommandID);
        if (!*(v51 + 16) || (v70 = sub_1B0AE0058(v68), v68 = v125, (v71 & 1) == 0))
        {
          sub_1B0B5E738(v68, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_8:

          v32 = v112;
          v4 = v113;
          v45 = v117;
          v38 = v111;
          goto LABEL_9;
        }

        v65 &= v65 - 1;
        v72 = *(*(v51 + 56) + v70);
        sub_1B0B5E738(v125, type metadata accessor for MoveAndCopyMessages.CommandID);
        if ((v72 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      v68 = v125;
      while (1)
      {
        v69 = v67 + 1;
        if (__OFADD__(v67, 1))
        {
          __break(1u);
          goto LABEL_58;
        }

        if (v69 >= v66)
        {
          break;
        }

        v65 = *(v62 + 56 + 8 * v69);
        ++v67;
        if (v65)
        {
          v67 = v69;
          goto LABEL_31;
        }
      }

      v32 = v112;
      v73 = v110;
      sub_1B03B5C80(v112, v110, &qword_1EB6E49E0, &qword_1B0EC6FE8);
      v74 = *v121;
      v4 = v113;
      if ((*v121)(v73, 1, v113) != 1)
      {
        break;
      }

      sub_1B0398EFC(v32, &qword_1EB6E49E0, &qword_1B0EC6FE8);
      sub_1B0398EFC(v73, &qword_1EB6E49E0, &qword_1B0EC6FE8);
      v80 = v117;
      sub_1B0B5E6D0(v117, v32, type metadata accessor for MoveAndCopyMessages.CommandID);
      v103(v32, 0, 1, v4);
      sub_1B0B5E6D0(v80, v99, type metadata accessor for MoveAndCopyMessages.CommandID);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v82 = v109;
      v38 = v111;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v106 = sub_1B0B00934(0, v106[2] + 1, 1, v106);
      }

      v44 = v118;
      v84 = v106[2];
      v83 = v106[3];
      if (v84 >= v83 >> 1)
      {
        v106 = sub_1B0B00934((v83 > 1), v84 + 1, 1, v106);
      }

      sub_1B0B5E738(v117, type metadata accessor for MoveAndCopyMessages.CommandID);
      v85 = v106;
      v106[2] = v84 + 1;
      sub_1B0B5E798(v99, v85 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + v84 * v124, type metadata accessor for MoveAndCopyMessages.CommandID);
      v40 = v119;
      if (!v82)
      {
LABEL_53:

        v90 = v102;
        sub_1B03B5C80(v32, v102, &qword_1EB6E49E0, &qword_1B0EC6FE8);
        if ((*v121)(v90, 1, v4) == 1)
        {
          sub_1B0398EFC(v32, &qword_1EB6E49E0, &qword_1B0EC6FE8);

          sub_1B0398EFC(v90, &qword_1EB6E49E0, &qword_1B0EC6FE8);
          v91 = 1;
          v92 = v101;
        }

        else
        {
          v92 = v101;
          sub_1B0B5E798(v90, v101, type metadata accessor for MoveAndCopyMessages.CommandID);
          v93 = v123;
          sub_1B0B4F05C(v106, v92);

          v94 = v100;
          sub_1B0B5E6D0(v92, v100, type metadata accessor for MoveAndCopyMessages.CommandID);
          v95 = swift_isUniquelyReferenced_nonNull_native();
          v128 = v93[3];
          sub_1B0A9C6C4(0, v94, v95);
          sub_1B0B5E738(v94, type metadata accessor for MoveAndCopyMessages.CommandID);
          sub_1B0398EFC(v32, &qword_1EB6E49E0, &qword_1B0EC6FE8);
          v91 = 0;
          v93[3] = v128;
        }

        v103(v92, v91, 1, v4);
        return;
      }
    }

    v116 = v36;
    v75 = v32;
    v76 = v108;
    sub_1B0B5E798(v73, v108, type metadata accessor for MoveAndCopyMessages.CommandID);
    v77 = v107;
    v78 = v109;
    v45 = v117;
    if (!v109)
    {
      break;
    }

    v79 = v105;
    v78(v76, v45);
    if (v74(v79, 1, v4) == 1)
    {
      sub_1B03B1AF0(v78, v77);
      sub_1B0B5E738(v76, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B5E738(v45, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0398EFC(v79, &qword_1EB6E49E0, &qword_1B0EC6FE8);
      goto LABEL_40;
    }

    v32 = v75;
    sub_1B0398EFC(v75, &qword_1EB6E49E0, &qword_1B0EC6FE8);
    v86 = v97;
    sub_1B0B5E798(v79, v97, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E6D0(v86, v75, type metadata accessor for MoveAndCopyMessages.CommandID);
    v103(v75, 0, 1, v4);
    sub_1B0B5E6D0(v117, v98, type metadata accessor for MoveAndCopyMessages.CommandID);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v106 = sub_1B0B00934(0, v106[2] + 1, 1, v106);
    }

    v38 = v111;
    v36 = v116;
    v88 = v106[2];
    v87 = v106[3];
    if (v88 >= v87 >> 1)
    {
      v106 = sub_1B0B00934((v87 > 1), v88 + 1, 1, v106);
    }

    sub_1B03B1AF0(v78, v77);
    sub_1B0B5E738(v97, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E738(v108, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B5E738(v117, type metadata accessor for MoveAndCopyMessages.CommandID);
    v89 = v106;
    v106[2] = v88 + 1;
    sub_1B0B5E798(v98, v89 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + v88 * v124, type metadata accessor for MoveAndCopyMessages.CommandID);
    v44 = v118;
    v40 = v119;
  }

  sub_1B0B5E738(v76, type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B5E738(v45, type metadata accessor for MoveAndCopyMessages.CommandID);
LABEL_40:
  v38 = v111;
  v44 = v118;
  v40 = v119;
  v32 = v75;
  v36 = v116;
  if (v43)
  {
    goto LABEL_14;
  }

LABEL_10:
  while (1)
  {
    v46 = v39 + 1;
    if (__OFADD__(v39, 1))
    {
      break;
    }

    if (v46 >= v44)
    {
      goto LABEL_53;
    }

    v43 = *(v40 + 8 * v46);
    ++v39;
    if (v43)
    {
      v39 = v46;
      goto LABEL_14;
    }
  }

LABEL_58:
  __break(1u);
}

uint64_t sub_1B0B4F05C(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49E0, &qword_1B0EC6FE8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v34 - v6;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0) - 8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v34 - v16;
  v18 = MEMORY[0x1E69E7CD0];
  v40 = MEMORY[0x1E69E7CD0];
  v41 = MEMORY[0x1E69E7CD0];
  v19 = *(a1 + 16);
  if (v19)
  {
    v34 = v10;
    v35 = a2;
    v20 = *(v2 + 8);
    v37 = *(v2 + 16);
    v38 = v20;
    v36 = v2;
    v21 = a1 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v22 = *(v15 + 72);
    v23 = v21;
    v24 = v19;
    do
    {
      sub_1B0B5E6D0(v23, v17, type metadata accessor for MoveAndCopyMessages.CommandID);
      v25 = sub_1B0B5BD58(v17, v38);
      sub_1B0AFBB0C(v25);
      v26 = sub_1B0B5BD58(v17, v37);
      sub_1B0B5E738(v17, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0AFBB0C(v26);
      v23 += v22;
      --v24;
    }

    while (v24);
    if (*(v41 + 16))
    {
      v27 = v21;
      v28 = v19;
      do
      {
        sub_1B0B92E1C(v27, v7);
        sub_1B0398EFC(v7, &qword_1EB6E49E0, &qword_1B0EC6FE8);
        v27 += v22;
        --v28;
      }

      while (v28);
    }

    if (*(v40 + 16))
    {
      v29 = v21;
      v30 = v19;
      do
      {
        sub_1B0B92E1C(v29, v7);
        sub_1B0398EFC(v7, &qword_1EB6E49E0, &qword_1B0EC6FE8);
        v29 += v22;
        --v30;
      }

      while (v30);
    }

    do
    {
      sub_1B0B5E6D0(v21, v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B4F5AC(v13);
      sub_1B0B5E738(v13, type metadata accessor for MoveAndCopyMessages.CommandID);
      v21 += v22;
      --v19;
    }

    while (v19);
    v18 = v40;
    v31 = v41;
    v10 = v34;
    a2 = v35;
  }

  else
  {
    v31 = MEMORY[0x1E69E7CD0];
  }

  sub_1B0B5E6D0(a2, v10, type metadata accessor for MoveAndCopyMessages.CommandID);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
  v32 = swift_allocObject();
  sub_1B0B5E798(v10, v32 + *(*v32 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B028E4(&v39, v32);

  sub_1B0B4FB20(v31, a2);

  sub_1B0B4F414(a2, v18);
}

void sub_1B0B4F414(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a2 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a2 + 56);
  v11 = (v8 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_1B0B5E6D0(*(a2 + 48) + *(v5 + 72) * (v14 | (v13 << 6)), v7, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B4FD48(a1, v7);
    sub_1B0B5E738(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
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

      return;
    }

    v10 = *(a2 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

void *sub_1B0B4F5AC(uint64_t a1)
{
  v3 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B5E6D0(a1, v5, type metadata accessor for MoveAndCopyMessages.CommandID);
  v51[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
  v6 = swift_allocObject();
  sub_1B0B5E798(v5, v6 + *(*v6 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B92B34(v6);

  v52 = v1;
  v7 = v1 + 8;
  v8 = *(v1 + 8);
  v51[2] = v7;
  v9 = *(v8 + 16);

  if (v9 && (v10 = sub_1B0AE00C4(v6), (v11 & 1) != 0))
  {
    v12 = *(*(v8 + 56) + 8 * v10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  }

  else
  {
    v12 = MEMORY[0x1E69E7CD0];
  }

  if ((v12 & 0xC000000000000001) != 0)
  {
    sub_1B0E460F8();
    sub_1B039E3F8(&qword_1EB6E49B8, &qword_1EB6E43B8, &unk_1B0EC5100, &unk_1B0EC2E60);
    result = sub_1B0E45518();
    v12 = v54[4];
    v14 = v54[5];
    v15 = v54[6];
    v16 = v54[7];
    v17 = v54[8];
  }

  else
  {
    v16 = 0;
    v18 = -1 << *(v12 + 32);
    v14 = (v12 + 56);
    v15 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v17 = (v20 & *(v12 + 56));
  }

  v51[0] = v15;
  v21 = (v15 + 64) >> 6;
  while (v12 < 0)
  {
    v27 = sub_1B0E46168();
    if (!v27 || (v54[0] = v27, swift_dynamicCast(), v26 = v55[0], v24 = v16, v25 = v17, !v55[0]))
    {
LABEL_24:
      sub_1B03D91F8(v12);
      sub_1B0B8FE8C(v6);

      v30 = *(v52 + 16);
      v31 = *(v30 + 16);

      if (v31 && (v32 = sub_1B0AE00C4(v6), (v33 & 1) != 0))
      {
        v34 = *(*(v30 + 56) + 8 * v32);
        _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
      }

      else
      {
        v34 = MEMORY[0x1E69E7CD0];
      }

      if ((v34 & 0xC000000000000001) != 0)
      {
        sub_1B0E460F8();
        sub_1B039E3F8(&qword_1EB6E49B8, &qword_1EB6E43B8, &unk_1B0EC5100, &unk_1B0EC2E60);
        result = sub_1B0E45518();
        v34 = v55[0];
        v35 = v55[1];
        v36 = v55[2];
        v37 = v55[3];
        v38 = v55[4];
      }

      else
      {
        v37 = 0;
        v39 = -1 << *(v34 + 32);
        v35 = (v34 + 56);
        v36 = ~v39;
        v40 = -v39;
        if (v40 < 64)
        {
          v41 = ~(-1 << v40);
        }

        else
        {
          v41 = -1;
        }

        v38 = (v41 & *(v34 + 56));
      }

      v51[0] = v36;
      v42 = (v36 + 64) >> 6;
      while (1)
      {
        if (v34 < 0)
        {
          v48 = sub_1B0E46168();
          if (!v48 || (v53 = v48, swift_dynamicCast(), v47 = v54[0], v45 = v37, v46 = v38, !v54[0]))
          {
LABEL_47:
            sub_1B03D91F8(v34);
            sub_1B0B8FE8C(v6);
          }
        }

        else
        {
          v43 = v37;
          v44 = v38;
          v45 = v37;
          if (!v38)
          {
            do
            {
              v45 = (v43 + 1);
              if (__OFADD__(v43, 1))
              {
                goto LABEL_49;
              }

              if (v45 >= v42)
              {
                goto LABEL_47;
              }

              v44 = v35[v45];
              v43 = (v43 + 1);
            }

            while (!v44);
          }

          v46 = (v44 - 1) & v44;
          v47 = *(*(v34 + 48) + ((v45 << 9) | (8 * __clz(__rbit64(v44)))));

          if (!v47)
          {
            goto LABEL_47;
          }
        }

        v49 = sub_1B0B6C0C4(v54, v47);
        if (*v50)
        {
          sub_1B0B92B34(v6);
        }

        (v49)(v54, 0);

        v37 = v45;
        v38 = v46;
      }
    }

LABEL_22:
    v28 = sub_1B0B6C0C4(v55, v26);
    if (*v29)
    {
      sub_1B0B92B34(v6);
    }

    (v28)(v55, 0);

    v16 = v24;
    v17 = v25;
  }

  v22 = v16;
  v23 = v17;
  v24 = v16;
  if (v17)
  {
LABEL_18:
    v25 = (v23 - 1) & v23;
    v26 = *(*(v12 + 48) + ((v24 << 9) | (8 * __clz(__rbit64(v23)))));

    if (!v26)
    {
      goto LABEL_24;
    }

    goto LABEL_22;
  }

  while (1)
  {
    v24 = (v22 + 1);
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v24 >= v21)
    {
      goto LABEL_24;
    }

    v23 = v14[v24];
    v22 = (v22 + 1);
    if (v23)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_49:
  __break(1u);
  return result;
}

void sub_1B0B4FB20(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_9:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    sub_1B0B5E6D0(*(a1 + 48) + *(v5 + 72) * (v14 | (v13 << 6)), v7, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0B4FD48(v7, a2);
    sub_1B0B5E738(v7, type metadata accessor for MoveAndCopyMessages.CommandID);
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

      return;
    }

    v10 = *(a1 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_1B0B4FCB8()
{
  if (!(*v0 >> 62))
  {
    result = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_3:
    result = sub_1B0B57CF8();
    if (result)
    {
      return result;
    }

    if (*v0 >> 62)
    {
      v4 = sub_1B0E46138();
      v3 = __OFSUB__(v4, 1);
      result = v4 - 1;
      if (!v3)
      {
        return sub_1B0BAFFF0(result);
      }
    }

    else
    {
      v2 = *((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v3 = __OFSUB__(v2, 1);
      result = v2 - 1;
      if (!v3)
      {
        return sub_1B0BAFFF0(result);
      }
    }

    __break(1u);
    return result;
  }

  result = sub_1B0E46138();
  if (result)
  {
    goto LABEL_3;
  }

  return result;
}

uint64_t sub_1B0B4FD48(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for MoveAndCopyMessages.CommandID;
  sub_1B0B5E6D0(a1, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E43B8, &unk_1B0EC5100);
  v10 = swift_allocObject();
  sub_1B0B5E798(v8, v10 + *(*v10 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  sub_1B0B5E6D0(a2, v8, type metadata accessor for MoveAndCopyMessages.CommandID);
  v11 = swift_allocObject();
  sub_1B0B5E798(v8, v11 + *(*v11 + 96), type metadata accessor for MoveAndCopyMessages.CommandID);
  v12 = sub_1B0B58DF4(v11, v10, *(v3 + 16));
  if (v12)
  {
    __break(1u);
    goto LABEL_18;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v3 + 16);
  v14 = v30;
  v12 = sub_1B0AE00C4(v10);
  v16 = v14[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  LOBYTE(v9) = v15;
  if (v14[3] >= v19)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    sub_1B0B325B0(v19, isUniquelyReferenced_nonNull_native);
    v14 = v30;
    v12 = sub_1B0AE00C4(v10);
    if ((v9 & 1) != (v20 & 1))
    {
LABEL_12:
      v12 = sub_1B0E46BA8();
      __break(1u);
      goto LABEL_13;
    }
  }

  *(v3 + 16) = v14;
  if (v9)
  {
    goto LABEL_9;
  }

LABEL_8:
  LOBYTE(v9) = v12;
  sub_1B0A9BD3C(v12, v10, MEMORY[0x1E69E7CD0], v14);

LABEL_9:
  while (1)
  {

    sub_1B0B028E4(&v30, v11);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v30 = *(v3 + 8);
    v14 = v30;
    v12 = sub_1B0AE00C4(v11);
    v22 = v14[2];
    v23 = (v21 & 1) == 0;
    v18 = __OFADD__(v22, v23);
    v24 = v22 + v23;
    if (!v18)
    {
      break;
    }

LABEL_19:
    __break(1u);
LABEL_20:
    v27 = v12;
    sub_1B0B8E9DC();
    v12 = v27;
    v14 = v30;
    *(v3 + 16) = v30;
    if ((v9 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  LOBYTE(v9) = v21;
  if (v14[3] < v24)
  {
    sub_1B0B325B0(v24, isUniquelyReferenced_nonNull_native);
    v14 = v30;
    v12 = sub_1B0AE00C4(v11);
    if ((v9 & 1) == (v25 & 1))
    {
      goto LABEL_14;
    }

    goto LABEL_12;
  }

LABEL_13:
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v28 = v12;
    sub_1B0B8E9DC();
    v12 = v28;
    v14 = v30;
    *(v3 + 8) = v30;
    if (v9)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

LABEL_14:
  *(v3 + 8) = v14;
  if ((v9 & 1) == 0)
  {
LABEL_15:
    sub_1B0A9BD3C(v12, v11, MEMORY[0x1E69E7CD0], v14);
  }

LABEL_16:

  sub_1B0B028E4(&v30, v10);
}

void sub_1B0B500B0(__int128 *a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  *(a3 + 96) = sub_1B03D0770(&unk_1F2711218);
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(a3 + 128) = sub_1B0B5BF38(MEMORY[0x1E69E7CC0]);
  *(a3 + 136) = v7;
  *(a3 + 144) = v8;
  *(a3 + 152) = v9;
  *(a3 + 160) = 0;
  *(a3 + 168) = v6;
  *(a3 + 176) = v6;
  *(a3 + 184) = MEMORY[0x1E69E7CD0];
  v11 = a1[1];
  v19 = *a1;
  v10 = v19;
  v17 = *(a1 + 3);
  v18 = *(a1 + 8);
  *(a3 + 40) = v18;
  *(a3 + 24) = v11;
  *(a3 + 8) = v10;
  v15 = *(a1 + 3);
  v16 = *(a1 + 8);
  *(a3 + 48) = &type metadata for MoveAndCopyMessages;
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B08A6A60(&v17, &v13);
  sub_1B03D091C(&v19, &v13);
  sub_1B0451F2C();
  sub_1B0E461E8();
  *(a3 + 105) = a2 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3FE8, &unk_1B0EC2790);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1B0EC1E70;
  v13 = v17;
  v14 = v18;
  *(v12 + 32) = type metadata accessor for NotifyMessagesVanished(0);
  _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
  sub_1B0E461E8();
  sub_1B039E440(&v19);
  sub_1B039E440(&v17);
  *a3 = v12;
}

uint64_t sub_1B0B50244(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB6E1AF0, &unk_1B0E9AF40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B0B5E6D0(v2, v9, type metadata accessor for MoveAndCopyMessages.CommandID);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1B03C60A4(v9, v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
      MEMORY[0x1B2728D70](0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E3120, qword_1B0E9B270);
      sub_1B0B0D328();
      sub_1B0E447C8();
      return sub_1B0398EFC(v6, &unk_1EB6E1AF0, &unk_1B0E9AF40);
    }

    v14 = *(v9 + 2);
    v15 = *(v9 + 2);
    MEMORY[0x1B2728D70](2);
    MEMORY[0x1B2728D70](v14 | (v14 << 32));
    sub_1B0B0A9B8(a1, v15);
    goto LABEL_7;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v12 = *(v9 + 2);
    v13 = *(v9 + 2);
    MEMORY[0x1B2728D70](3);
    MEMORY[0x1B2728D70](v12 | (v12 << 32));
    sub_1B0B0A854(a1, v13);
LABEL_7:
  }

  return MEMORY[0x1B2728D70](1);
}

uint64_t sub_1B0B50434()
{
  sub_1B0E46C28();
  sub_1B0B50244(v1);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B50478(uint64_t a1)
{
  sub_1B0E46C28();
  sub_1B0B50244(v2);
  return sub_1B0E46CB8();
}

uint64_t sub_1B0B504B8()
{
  result = sub_1B03D0770(&unk_1F27111F0);
  qword_1EB737D68 = result;
  return result;
}

void sub_1B0B504E0(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for MailboxTaskLogger(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - v8;
  sub_1B0B5E6D0(a1, &v23 - v8, type metadata accessor for MailboxTaskLogger);
  sub_1B0B5E6D0(a1, v6, type metadata accessor for MailboxTaskLogger);
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0394868();
  sub_1B0B23DC4(v2, v26);
  v10 = sub_1B0E43988();
  v11 = sub_1B0E45908();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v25 = v13;
    *v12 = 68159491;
    *(v12 + 4) = 2;
    *(v12 + 8) = 256;
    v14 = &v6[*(v4 + 20)];
    *(v12 + 10) = *v14;
    *(v12 + 11) = 2082;
    v15 = &v9[*(v4 + 20)];
    *(v12 + 13) = sub_1B0399D64(*(v15 + 1), *(v15 + 2), &v25);
    *(v12 + 21) = 1040;
    *(v12 + 23) = 2;
    *(v12 + 27) = 512;
    v16 = *(v14 + 12);
    sub_1B0B5E738(v6, type metadata accessor for MailboxTaskLogger);
    *(v12 + 29) = v16;
    *(v12 + 31) = 2160;
    *(v12 + 33) = 0x786F626C69616DLL;
    *(v12 + 41) = 2085;
    v17 = *(v15 + 4);
    v18 = *(v15 + 10);
    _s13IMAP2Behavior27ConnectionIDsGroupedByStateV11connectionsSayAC0C0VGvg_0();
    sub_1B0B5E738(v9, type metadata accessor for MailboxTaskLogger);
    v23 = v17;
    v24 = v18;
    v19 = sub_1B0E44BA8();
    v21 = sub_1B0399D64(v19, v20, &v25);

    *(v12 + 43) = v21;
    *(v12 + 51) = 1024;
    v22 = (v26[105] & 1) == 0;
    sub_1B0B23E20(v26);
    *(v12 + 53) = v22;
    _os_log_impl(&dword_1B0389000, v10, v11, "[%.*hhx-%{public}s] [{%.*hx}-%{sensitive,mask.mailbox}s] Created task. Server supports move: %{BOOL}d", v12, 0x39u);
    swift_arrayDestroy();
    MEMORY[0x1B272C230](v13, -1, -1);
    MEMORY[0x1B272C230](v12, -1, -1);
  }

  else
  {
    sub_1B0B23E20(v26);
    sub_1B0B5E738(v6, type metadata accessor for MailboxTaskLogger);

    sub_1B0B5E738(v9, type metadata accessor for MailboxTaskLogger);
  }
}

uint64_t sub_1B0B507F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v55 = a4;
  v8 = type metadata accessor for MoveAndCopyMessages.CommandID(0);
  v54 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49E0, &qword_1B0EC6FE8);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49E8, &qword_1B0EC6FF0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v50 - v25;
  if (sub_1B0B126CC(0, a1, a2, a3))
  {
    v50 = v4;
    sub_1B0B4E2C4(sub_1B0B50E20, 0, v20);
    sub_1B03B5C80(v20, v17, &qword_1EB6E49E0, &qword_1B0EC6FE8);
    v27 = *(v54 + 48);
    v28 = 1;
    v51 = v8;
    v29 = v27(v17, 1, v8);
    v30 = v26;
    if (v29 != 1)
    {
      sub_1B0B5E798(v17, v12, type metadata accessor for MoveAndCopyMessages.CommandID);
      sub_1B0B515F4(v12, v26);
      sub_1B0B5E738(v12, type metadata accessor for MoveAndCopyMessages.CommandID);
      v28 = 0;
    }

    sub_1B0398EFC(v20, &qword_1EB6E49E0, &qword_1B0EC6FE8);
    v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F0, &qword_1B0EC6FF8);
    (*(*(v31 - 8) + 56))(v26, v28, 1, v31);
    sub_1B03B5C80(v26, v23, &qword_1EB6E49E8, &qword_1B0EC6FF0);
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F0, &qword_1B0EC6FF8);
    v33 = *(v32 - 8);
    if ((*(v33 + 48))(v23, 1, v32) == 1)
    {
      sub_1B0398EFC(v23, &qword_1EB6E49E8, &qword_1B0EC6FF0);
      (*(v54 + 56))(v53, 1, 1, v51);
      v34 = v55;
      return sub_1B03C60A4(v30, v34, &qword_1EB6E49E8, &qword_1B0EC6FF0);
    }

    v40 = *(v32 + 48);
    v41 = v53;
    sub_1B0B5E798(v23, v53, type metadata accessor for MoveAndCopyMessages.CommandID);
    v42 = v51;
    (*(v54 + 56))(v41, 0, 1, v51);
    sub_1B0B5E738(&v23[v40], type metadata accessor for ClientCommand);
    v43 = v27(v41, 1, v42);
    v34 = v55;
    if (v43 == 1)
    {
      return sub_1B03C60A4(v30, v34, &qword_1EB6E49E8, &qword_1B0EC6FF0);
    }

    v44 = v55;
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        *(v50 + 160) = 1;
      }

      goto LABEL_14;
    }

    if (EnumCaseMultiPayload == 2)
    {
LABEL_14:
      sub_1B0B5E738(v41, type metadata accessor for MoveAndCopyMessages.CommandID);
      v34 = v44;
      return sub_1B03C60A4(v30, v34, &qword_1EB6E49E8, &qword_1B0EC6FF0);
    }

    v34 = v44;
    if (*(v50 + 160))
    {
      return sub_1B03C60A4(v30, v34, &qword_1EB6E49E8, &qword_1B0EC6FF0);
    }

    v46 = v30;
    v47 = v52;
    swift_storeEnumTagMultiPayload();
    v48 = v50;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v56 = *(v48 + 152);
    sub_1B0A9C6C4(1, v47, isUniquelyReferenced_nonNull_native);
    sub_1B0B5E738(v47, type metadata accessor for MoveAndCopyMessages.CommandID);
    sub_1B0398EFC(v46, &qword_1EB6E49E8, &qword_1B0EC6FF0);
    *(v48 + 152) = v56;
    return (*(v33 + 56))(v44, 1, 1, v32);
  }

  else
  {
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB6E49F0, &qword_1B0EC6FF8);
    v36 = *(*(v35 - 8) + 56);
    v37 = v35;
    v38 = v55;

    return v36(v38, 1, 1, v37);
  }
}