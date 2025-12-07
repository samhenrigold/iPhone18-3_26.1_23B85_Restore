__n128 HKDatabase.Pruning.ShowWithDeletedSampleInfo.deletedSampleInfo.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 176);
  *(a1 + 32) = *(v1 + 160);
  *(a1 + 48) = v2;
  v3 = *(v1 + 208);
  *(a1 + 64) = *(v1 + 192);
  *(a1 + 80) = v3;
  result = *(v1 + 128);
  v5 = *(v1 + 144);
  *a1 = result;
  *(a1 + 16) = v5;
  return result;
}

__n128 HKDatabase.Pruning.ShowWithDeletedSampleInfo.deletedSampleInfo.setter(uint64_t a1)
{
  v2 = *(a1 + 48);
  v1[10] = *(a1 + 32);
  v1[11] = v2;
  v3 = *(a1 + 80);
  v1[12] = *(a1 + 64);
  v1[13] = v3;
  result = *a1;
  v5 = *(a1 + 16);
  v1[8] = *a1;
  v1[9] = v5;
  return result;
}

__n128 HKDatabase.Pruning.ShowWithDeletedSampleInfo.init(show:deletedSampleInfo:)@<Q0>(_OWORD *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a1[5];
  *(a3 + 64) = a1[4];
  *(a3 + 80) = v3;
  v4 = a1[7];
  *(a3 + 96) = a1[6];
  *(a3 + 112) = v4;
  v5 = a1[1];
  *a3 = *a1;
  *(a3 + 16) = v5;
  v6 = a1[3];
  *(a3 + 32) = a1[2];
  *(a3 + 48) = v6;
  v7 = *(a2 + 16);
  *(a3 + 128) = *a2;
  *(a3 + 144) = v7;
  result = *(a2 + 32);
  v9 = *(a2 + 48);
  v10 = *(a2 + 80);
  *(a3 + 192) = *(a2 + 64);
  *(a3 + 208) = v10;
  *(a3 + 160) = result;
  *(a3 + 176) = v9;
  return result;
}

uint64_t sub_191C296D0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 2003789939;
  }
}

uint64_t sub_191C29708@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 2003789939 && a2 == 0xE400000000000000;
  if (v5 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000191D2C4F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

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

uint64_t sub_191C297EC(uint64_t a1)
{
  v2 = sub_191C2DD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C29828(uint64_t a1)
{
  v2 = sub_191C2DD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.ShowWithDeletedSampleInfo.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB4C8, sub_191C2DD6C, &_s14descr1F05F1AE1C7PruningO25ShowWithDeletedSampleInfoV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21[-v5];
  v7 = v1[5];
  v42 = v1[4];
  v43 = v7;
  v8 = v1[7];
  v44 = v1[6];
  v45 = v8;
  v9 = v1[1];
  v38 = *v1;
  v39 = v9;
  v10 = v1[3];
  v40 = v1[2];
  v41 = v10;
  v11 = v1[9];
  v46 = v1[8];
  v47 = v11;
  v12 = v1[10];
  v13 = v1[11];
  v14 = v1[13];
  v50 = v1[12];
  v51 = v14;
  v48 = v12;
  v49 = v13;
  v15 = a1[3];
  v16 = a1;
  v18 = v17;
  __swift_project_boxed_opaque_existential_0(v16, v15);
  sub_191C2DBB4(&v38, &v30);
  sub_191C2DD6C();
  sub_191CC7548();
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  v30 = v38;
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v29 = 0;
  sub_191C2DDC0();
  v19 = v52;
  sub_191CC7348();
  v28[4] = v34;
  v28[5] = v35;
  v28[6] = v36;
  v28[7] = v37;
  v28[0] = v30;
  v28[1] = v31;
  v28[2] = v32;
  v28[3] = v33;
  sub_191C2DBEC(v28);
  if (!v19)
  {
    v24 = v48;
    v25 = v49;
    v26 = v50;
    v27 = v51;
    v22 = v46;
    v23 = v47;
    v21[15] = 1;
    sub_191C2DCC4();
    sub_191CC7348();
  }

  return (*(v4 + 8))(v6, v18);
}

uint64_t HKDatabase.Pruning.ShowWithDeletedSampleInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v24 = a2;
  sub_191C2E288(0, &qword_1EADCB4E0, sub_191C2DD6C, &_s14descr1F05F1AE1C7PruningO25ShowWithDeletedSampleInfoV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v57 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - v6;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2DD6C();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  v9 = v24;
  v34 = 0;
  sub_191C2DE14();
  v10 = v57;
  sub_191CC7268();
  v47 = v39;
  v48 = v40;
  v49 = v41;
  v50 = v42;
  v43 = v35;
  v44 = v36;
  v45 = v37;
  v46 = v38;
  v27 = 1;
  sub_191C2DD18();
  sub_191CC7268();
  (*(v8 + 8))(v7, v10);
  v11 = v31;
  v53 = v30;
  v54 = v31;
  v12 = v49;
  v13 = v50;
  v25[6] = v49;
  v25[7] = v50;
  v14 = v47;
  v15 = v48;
  v25[4] = v47;
  v25[5] = v48;
  v16 = v45;
  v17 = v46;
  v25[2] = v45;
  v25[3] = v46;
  v51 = v28;
  v52 = v29;
  v25[8] = v28;
  v25[9] = v29;
  v55 = v32;
  v56 = v33;
  v25[10] = v30;
  v25[11] = v31;
  v25[12] = v32;
  v25[13] = v33;
  v18 = v43;
  v19 = v44;
  v25[0] = v43;
  v25[1] = v44;
  v9[10] = v30;
  v9[11] = v11;
  v20 = v56;
  v9[12] = v55;
  v9[13] = v20;
  v9[6] = v12;
  v9[7] = v13;
  v21 = v52;
  v9[8] = v51;
  v9[9] = v21;
  v9[2] = v16;
  v9[3] = v17;
  v9[4] = v14;
  v9[5] = v15;
  *v9 = v18;
  v9[1] = v19;
  sub_191C2DE68(v25, v26);
  __swift_destroy_boxed_opaque_existential_0(a1);
  v26[10] = v53;
  v26[11] = v54;
  v26[12] = v55;
  v26[13] = v56;
  v26[6] = v49;
  v26[7] = v50;
  v26[8] = v51;
  v26[9] = v52;
  v26[2] = v45;
  v26[3] = v46;
  v26[4] = v47;
  v26[5] = v48;
  v26[0] = v43;
  v26[1] = v44;
  return sub_191C2DEA0(v26);
}

uint64_t sub_191C29EB4@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_191CC61A8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_191C29F50(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_191CC61A8();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t sub_191C2A0D0@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = v2 + *(a1(0) + 28);

  return sub_191C18FCC(v4, a2);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.endDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0) + 32);

  return sub_191C18FCC(v3, a1);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.endDate.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0) + 32);

  return sub_191C2BBE0(a1, v3);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.eligibleForPruning.setter(char a1)
{
  result = type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.prunedUsingMinAnchor.setter(char a1)
{
  result = type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.prunedUsingRestrictionPredicates.setter(char a1)
{
  result = type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.restrictionPredicates.getter()
{
  type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.restrictionPredicates.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.init(rowID:uuid:createdDate:startDate:endDate:eligibleForPruning:prunedUsingMinAnchor:prunedUsingRestrictionPredicates:restrictionPredicates:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, char *a9@<X8>, uint64_t a10)
{
  v13 = type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
  v14 = v13[7];
  v15 = sub_191CC6148();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v17(&a9[v14], 1, 1, v15);
  v18 = v13[8];
  v17(&a9[v18], 1, 1, v15);
  *a9 = a1;
  v19 = v13[5];
  v20 = sub_191CC61A8();
  (*(*(v20 - 8) + 32))(&a9[v19], a2, v20);
  (*(v16 + 32))(&a9[v13[6]], a3, v15);
  sub_191C2BBE0(a4, &a9[v14]);
  result = sub_191C2BBE0(a5, &a9[v18]);
  a9[v13[9]] = a6;
  a9[v13[10]] = a7;
  a9[v13[11]] = a8;
  *&a9[v13[12]] = a10;
  return result;
}

unint64_t sub_191C2A674(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x4449776F72;
    v5 = 0x4464657461657263;
    if (a1 != 2)
    {
      v5 = 0x7461447472617473;
    }

    if (a1)
    {
      v4 = 1684632949;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000015;
    if (a1 == 7)
    {
      v1 = 0xD000000000000020;
    }

    if (a1 == 6)
    {
      v1 = 0xD000000000000014;
    }

    v2 = 0x65746144646E65;
    if (a1 != 4)
    {
      v2 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v2;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_191C2A7A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_191C32038(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_191C2A7CC(uint64_t a1)
{
  v2 = sub_191C2DEF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C2A808(uint64_t a1)
{
  v2 = sub_191C2DEF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.encode(to:)(void *a1)
{
  v3 = v1;
  sub_191C2E288(0, &qword_1EADCB4F0, sub_191C2DEF0, &_s14descr1F05F1AE1C7PruningO19DeletedSampleDetailV13DeletedSampleV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12[-v8];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2DEF0();
  sub_191CC7548();
  LOBYTE(v13) = 0;
  sub_191CC7368();
  if (!v2)
  {
    v10 = type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
    LOBYTE(v13) = 1;
    sub_191CC61A8();
    sub_191C2153C(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_191CC7348();
    LOBYTE(v13) = 2;
    sub_191CC6148();
    sub_191C2153C(&qword_1EADCB310, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_191CC7348();
    LOBYTE(v13) = 3;
    sub_191CC72F8();
    LOBYTE(v13) = 4;
    sub_191CC72F8();
    LOBYTE(v13) = 5;
    sub_191CC7318();
    LOBYTE(v13) = 6;
    sub_191CC7318();
    LOBYTE(v13) = 7;
    sub_191CC7318();
    v13 = *(v3 + *(v10 + 48));
    v12[15] = 8;
    sub_191C2D5D4(0, &qword_1EADCB500, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification, MEMORY[0x1E69E62F8]);
    sub_191C2DF44();
    sub_191CC7348();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.DeletedSample.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v37 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v35 - v6;
  v7 = sub_191CC6148();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v41 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_191CC61A8();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C2E288(0, &qword_1EADCB518, sub_191C2DEF0, &_s14descr1F05F1AE1C7PruningO19DeletedSampleDetailV13DeletedSampleV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v44 = v12;
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v15 = type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample(0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = (&v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *(v16 + 28);
  v39 = v8;
  v20 = *(v8 + 56);
  v48 = v19;
  v20(v18 + v19, 1, 1, v7);
  v47 = *(v15 + 32);
  v49 = v18;
  v20(v18 + v47, 1, 1, v7);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2DEF0();
  v45 = v14;
  v21 = v46;
  v22 = a1;
  sub_191CC7528();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v26 = v47;
    v27 = v49;
    sub_191C2CC84(v49 + v48);
    return sub_191C2CC84(v27 + v26);
  }

  else
  {
    v23 = v41;
    v46 = v15;
    v24 = v43;
    LOBYTE(v51) = 0;
    *v49 = sub_191CC7288();
    LOBYTE(v51) = 1;
    sub_191C2153C(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v25 = v11;
    sub_191CC7268();
    v28 = v46;
    (*(v40 + 32))(v49 + v46[5], v25, v24);
    LOBYTE(v51) = 2;
    sub_191C2153C(&qword_1EADCB330, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_191CC7268();
    v35 = v7;
    (*(v39 + 32))(v49 + v28[6], v23, v7);
    LOBYTE(v51) = 3;
    v29 = v38;
    v41 = 0;
    sub_191CC7218();
    sub_191C2BBE0(v29, v49 + v48);
    LOBYTE(v51) = 4;
    v30 = v37;
    sub_191CC7218();
    sub_191C2BBE0(v30, v49 + v47);
    LOBYTE(v51) = 5;
    v31 = sub_191CC7238();
    v32 = v46;
    *(v49 + v46[9]) = v31 & 1;
    LOBYTE(v51) = 6;
    *(v49 + v32[10]) = sub_191CC7238() & 1;
    LOBYTE(v51) = 7;
    *(v49 + v46[11]) = sub_191CC7238() & 1;
    sub_191C2D5D4(0, &qword_1EADCB500, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification, MEMORY[0x1E69E62F8]);
    v50 = 8;
    sub_191C2E01C();
    sub_191CC7268();
    (*(v42 + 8))(v45, v44);
    v33 = v49;
    *(v49 + v46[12]) = v51;
    sub_191C2E0F4(v33, v36, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample);
    __swift_destroy_boxed_opaque_existential_0(v22);
    return sub_191C3241C(v33, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample);
  }
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.version.setter(uint64_t result, char a2)
{
  *v2 = result;
  *(v2 + 8) = a2 & 1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.deletedSamples.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.init(deletedSamples:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = result;
  return result;
}

uint64_t sub_191C2B548()
{
  if (*v0)
  {
    return 0x53646574656C6564;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t sub_191C2B590@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (sub_191CC73E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x53646574656C6564 && a2 == 0xEE0073656C706D61)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_191CC73E8();

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

uint64_t sub_191C2B674(uint64_t a1)
{
  v2 = sub_191C2E15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C2B6B0(uint64_t a1)
{
  v2 = sub_191C2E15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.encode(to:)(void *a1)
{
  sub_191C2E288(0, &qword_1EADCB530, sub_191C2E15C, &_s14descr1F05F1AE1C7PruningO19DeletedSampleDetailV10CodingKeysON, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - v6;
  v11 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2E15C();
  sub_191CC7548();
  v15 = 0;
  v8 = v12;
  sub_191CC72E8();
  if (!v8)
  {
    v13 = v11;
    v14 = 1;
    sub_191C2D5D4(0, &qword_1EADCB540, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample, MEMORY[0x1E69E62F8]);
    sub_191C2E1B0();
    sub_191CC7348();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t HKDatabase.Pruning.DeletedSampleDetail.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16[0] = a2;
  sub_191C2E288(0, &qword_1EADCB558, sub_191C2E15C, &_s14descr1F05F1AE1C7PruningO19DeletedSampleDetailV10CodingKeysON, MEMORY[0x1E69E6F48]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C2E15C();
  sub_191CC7528();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = v6;
  v10 = v16[0];
  v19 = 0;
  v11 = sub_191CC7208();
  v17 = v12 & 1;
  sub_191C2D5D4(0, &qword_1EADCB540, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample, MEMORY[0x1E69E62F8]);
  v18 = 1;
  sub_191C2E2F0();
  sub_191CC7268();
  (*(v9 + 8))(v8, v5);
  v13 = v16[1];
  v14 = v17;
  *v10 = v11;
  *(v10 + 8) = v14;
  *(v10 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_191C2BB6C()
{
  result = qword_1EADCB240;
  if (!qword_1EADCB240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB240);
  }

  return result;
}

uint64_t sub_191C2BBE0(uint64_t a1, uint64_t a2)
{
  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_191C2BC74(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + 8 * (v10 | (v4 << 6)));
    result = sub_191CC74B8();
    v14 = -1 << *(a2 + 32);
    v15 = result & ~v14;
    if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
    {
      return 0;
    }

    v16 = ~v14;
    while (*(*(a2 + 48) + 8 * v15) != v13)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v9 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        return 0;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_191CC6148();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v40[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v40[-v12];
  sub_191C32324(0);
  v15 = v14;
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v40[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v40[-v19];
  if ((sub_191CC6178() & 1) == 0)
  {
    return 0;
  }

  v21 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
  if (*(a1 + *(v21 + 20)) != *(a2 + *(v21 + 20)))
  {
    return 0;
  }

  v44 = v11;
  v45 = v7;
  v46 = v21;
  v22 = *(v21 + 24);
  v23 = *(v15 + 48);
  sub_191C18FCC(a1 + v22, v20);
  sub_191C18FCC(a2 + v22, &v20[v23]);
  v47 = v5;
  v24 = *(v5 + 48);
  if (v24(v20, 1, v4) == 1)
  {
    if (v24(&v20[v23], 1, v4) == 1)
    {
      sub_191C2CC84(v20);
      goto LABEL_10;
    }

LABEL_8:
    v25 = v20;
LABEL_16:
    sub_191C3241C(v25, sub_191C32324);
    return 0;
  }

  sub_191C18FCC(v20, v13);
  if (v24(&v20[v23], 1, v4) == 1)
  {
    (*(v47 + 8))(v13, v4);
    goto LABEL_8;
  }

  v26 = *(v47 + 32);
  v42 = v24;
  v27 = v45;
  v26(v45, &v20[v23], v4);
  sub_191C2153C(&qword_1EADCADD8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v41 = sub_191CC6768();
  v43 = *(v47 + 8);
  v28 = v27;
  v24 = v42;
  v43(v28, v4);
  v43(v13, v4);
  sub_191C2CC84(v20);
  if ((v41 & 1) == 0)
  {
    return 0;
  }

LABEL_10:
  v29 = *(v46 + 28);
  v30 = *(v15 + 48);
  sub_191C18FCC(a1 + v29, v18);
  sub_191C18FCC(a2 + v29, &v18[v30]);
  if (v24(v18, 1, v4) != 1)
  {
    v31 = v44;
    sub_191C18FCC(v18, v44);
    if (v24(&v18[v30], 1, v4) != 1)
    {
      v33 = v47;
      v34 = v45;
      (*(v47 + 32))(v45, &v18[v30], v4);
      sub_191C2153C(&qword_1EADCADD8, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
      v35 = sub_191CC6768();
      v36 = *(v33 + 8);
      v36(v34, v4);
      v36(v31, v4);
      sub_191C2CC84(v18);
      if ((v35 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_20;
    }

    (*(v47 + 8))(v31, v4);
    goto LABEL_15;
  }

  if (v24(&v18[v30], 1, v4) != 1)
  {
LABEL_15:
    v25 = v18;
    goto LABEL_16;
  }

  sub_191C2CC84(v18);
LABEL_20:
  v37 = *(v46 + 32);
  v38 = *(a1 + v37);
  v39 = *(a2 + v37);
  if (v38)
  {
    if (v39 && (sub_191C2BC74(v38, v39) & 1) != 0)
    {
      return 1;
    }
  }

  else if (!v39)
  {
    return 1;
  }

  return 0;
}

uint64_t _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV14ClassificationO2eeoiySbAK_AKtFZ_0(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v48 = a2;
  v2 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v44 = &v43 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v43 = &v43 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v43 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v43 - v12;
  v14 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v46 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v43 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v43 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v43 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v43 - v26;
  sub_191C323B8(0);
  v29 = MEMORY[0x1EEE9AC00](v28 - 8);
  v31 = &v43 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *(v29 + 56);
  sub_191C2E0F4(v47, v31, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
  sub_191C2E0F4(v48, &v31[v32], type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_191C2E0F4(v31, v25, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        v41 = sub_191C323B8;
        v36 = 0;
        v27 = v25;
        goto LABEL_18;
      }

      sub_191C2CB70(&v31[v32], v11, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v36 = _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV2eeoiySbAI_AItFZ_0(v25, v11);
      v37 = v11;
      v27 = v25;
      goto LABEL_17;
    }

    v38 = v13;
    sub_191C2E0F4(v31, v27, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
    if (!swift_getEnumCaseMultiPayload())
    {
      v39 = &v31[v32];
LABEL_13:
      sub_191C2CB70(v39, v38, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v36 = _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV2eeoiySbAI_AItFZ_0(v27, v38);
      v37 = v38;
LABEL_17:
      sub_191C3241C(v37, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v41 = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification;
      goto LABEL_18;
    }
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_191C2E0F4(v31, v22, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v41 = sub_191C323B8;
        v36 = 0;
        v27 = v22;
        goto LABEL_18;
      }

      v40 = v43;
      sub_191C2CB70(&v31[v32], v43, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v36 = _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV2eeoiySbAI_AItFZ_0(v22, v40);
      v37 = v40;
      v27 = v22;
      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 3)
    {
      sub_191C2E0F4(v31, v19, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v41 = sub_191C323B8;
        v36 = 0;
        v27 = v19;
        goto LABEL_18;
      }

      v34 = &v31[v32];
      v35 = v44;
      sub_191C2CB70(v34, v44, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
      v36 = _s9HealthKit10HKDatabaseO7PruningO4ShowV0D20RestrictionPredicateV2eeoiySbAI_AItFZ_0(v19, v35);
      v37 = v35;
      v27 = v19;
      goto LABEL_17;
    }

    v27 = v46;
    sub_191C2E0F4(v31, v46, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v39 = &v31[v32];
      v38 = v45;
      goto LABEL_13;
    }
  }

  v41 = sub_191C323B8;
  v36 = 0;
LABEL_18:
  sub_191C3241C(v27, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
  sub_191C3241C(v31, v41);
  return v36 & 1;
}

unint64_t sub_191C2C89C()
{
  result = qword_1EADCB258;
  if (!qword_1EADCB258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB258);
  }

  return result;
}

unint64_t sub_191C2C8F0()
{
  result = qword_1EADCB268;
  if (!qword_1EADCB268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB268);
  }

  return result;
}

unint64_t sub_191C2C944()
{
  result = qword_1EADCB278;
  if (!qword_1EADCB278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB278);
  }

  return result;
}

unint64_t sub_191C2C998()
{
  result = qword_1EADCB288;
  if (!qword_1EADCB288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB288);
  }

  return result;
}

unint64_t sub_191C2C9EC()
{
  result = qword_1EADCB298;
  if (!qword_1EADCB298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB298);
  }

  return result;
}

unint64_t sub_191C2CA60()
{
  result = qword_1EADCB2A8;
  if (!qword_1EADCB2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB2A8);
  }

  return result;
}

void sub_191C2CAB4(uint64_t a1)
{
  if (!qword_1EADCB2E8)
  {
    sub_191C2CB24();
    sub_191CC7018();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCB2E8);
    }
  }
}

unint64_t sub_191C2CB24()
{
  result = qword_1EADCB2F0;
  if (!qword_1EADCB2F0)
  {
    result = swift_getExistentialMetatypeMetadata();
    atomic_store(result, &qword_1EADCB2F0);
  }

  return result;
}

uint64_t sub_191C2CB70(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_191C2CBD8()
{
  result = qword_1EADCB308;
  if (!qword_1EADCB308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB308);
  }

  return result;
}

void sub_191C2CC2C()
{
  if (!qword_1EADCB318)
  {
    v0 = sub_191CC6B88();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB318);
    }
  }
}

uint64_t sub_191C2CC84(uint64_t a1)
{
  sub_191C2D5D4(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_191C2CD10(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_191C2CC2C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_191C2CD90()
{
  result = qword_1EADCB348;
  if (!qword_1EADCB348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB348);
  }

  return result;
}

void sub_191C2CDE4(uint64_t a1)
{
  if (!qword_1EADCB350)
  {
    sub_191C2CE50();
    sub_191C2CEAC();
    v1 = sub_191CC6648();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCB350);
    }
  }
}

void sub_191C2CE50()
{
  if (!qword_1EADCB358)
  {
    v0 = sub_191CC6648();
    if (!v1)
    {
      atomic_store(v0, &qword_1EADCB358);
    }
  }
}

unint64_t sub_191C2CEAC()
{
  result = qword_1EADCB360;
  if (!qword_1EADCB360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB360);
  }

  return result;
}

unint64_t sub_191C2CF00()
{
  result = qword_1EADCB368;
  if (!qword_1EADCB368)
  {
    sub_191C2CDE4(255);
    sub_191C2CFA0();
    sub_191C2D0E8(&qword_1EADCB378, MEMORY[0x1E69E6538], MEMORY[0x1E69E5E38]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB368);
  }

  return result;
}

unint64_t sub_191C2CFA0()
{
  result = qword_1EADCB370;
  if (!qword_1EADCB370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB370);
  }

  return result;
}

unint64_t sub_191C2CFF4()
{
  result = qword_1EADCB388;
  if (!qword_1EADCB388)
  {
    sub_191C2CDE4(255);
    sub_191C2D094();
    sub_191C2D0E8(&qword_1EADCB398, MEMORY[0x1E69E6560], MEMORY[0x1E69E5E58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB388);
  }

  return result;
}

unint64_t sub_191C2D094()
{
  result = qword_1EADCB390;
  if (!qword_1EADCB390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB390);
  }

  return result;
}

uint64_t sub_191C2D0E8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_191C2CE50();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_191C2D148(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

uint64_t sub_191C2D15C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3 != 1)
  {
  }

  return result;
}

unint64_t sub_191C2D170()
{
  result = qword_1EADCB3A8;
  if (!qword_1EADCB3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB3A8);
  }

  return result;
}

void sub_191C2D1C4(uint64_t a1)
{
  if (!qword_1EADCB3B0)
  {
    sub_191CC61A8();
    type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(255);
    sub_191C2153C(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_191CC6648();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCB3B0);
    }
  }
}

unint64_t sub_191C2D270()
{
  result = qword_1EADCB3B8;
  if (!qword_1EADCB3B8)
  {
    sub_191C2D1C4(255);
    sub_191C2153C(&qword_1EADCAD80, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_191C2153C(&qword_1EADCB2B0, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB3B8);
  }

  return result;
}

unint64_t sub_191C2D350()
{
  result = qword_1EADCB3C8;
  if (!qword_1EADCB3C8)
  {
    sub_191C2D1C4(255);
    sub_191C2153C(&qword_1EADCAD70, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_191C2153C(&qword_1EADCB2F8, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB3C8);
  }

  return result;
}

unint64_t sub_191C2D498()
{
  result = qword_1EADCB3D8;
  if (!qword_1EADCB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB3D8);
  }

  return result;
}

unint64_t sub_191C2D4EC()
{
  result = qword_1EADCB3E0;
  if (!qword_1EADCB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB3E0);
  }

  return result;
}

void sub_191C2D540(uint64_t a1)
{
  if (!qword_1EADCB3E8)
  {
    sub_191CC61A8();
    sub_191C2153C(&qword_1EADCAC70, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_191CC6B88();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCB3E8);
    }
  }
}

void sub_191C2D5D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_191C2D638()
{
  result = qword_1EADCB400;
  if (!qword_1EADCB400)
  {
    sub_191C2D5D4(255, &qword_1EADCB3F8, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB408, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity, &protocol conformance descriptor for HKDatabase.Pruning.Show.SyncIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB400);
  }

  return result;
}

unint64_t sub_191C2D710()
{
  result = qword_1EADCB418;
  if (!qword_1EADCB418)
  {
    sub_191C2D5D4(255, &qword_1EADCB410, type metadata accessor for HKDatabase.Pruning.Show.Store, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB420, type metadata accessor for HKDatabase.Pruning.Show.Store, &protocol conformance descriptor for HKDatabase.Pruning.Show.Store);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB418);
  }

  return result;
}

uint64_t sub_191C2D7E8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_191C2EAD4(255, &qword_1EADCB428, &type metadata for HKDatabase.Pruning.Show.Entity, MEMORY[0x1E69E62F8]);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_191C2D878()
{
  result = qword_1EADCB438;
  if (!qword_1EADCB438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB438);
  }

  return result;
}

unint64_t sub_191C2D8CC()
{
  result = qword_1EADCB448;
  if (!qword_1EADCB448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB448);
  }

  return result;
}

uint64_t sub_191C2D920(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_191C2D540(255);
    sub_191C2153C(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_191C2D9B0()
{
  result = qword_1EADCB458;
  if (!qword_1EADCB458)
  {
    sub_191C2D5D4(255, &qword_1EADCB3F8, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB460, type metadata accessor for HKDatabase.Pruning.Show.SyncIdentity, &protocol conformance descriptor for HKDatabase.Pruning.Show.SyncIdentity);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB458);
  }

  return result;
}

unint64_t sub_191C2DA88()
{
  result = qword_1EADCB468;
  if (!qword_1EADCB468)
  {
    sub_191C2D5D4(255, &qword_1EADCB410, type metadata accessor for HKDatabase.Pruning.Show.Store, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB470, type metadata accessor for HKDatabase.Pruning.Show.Store, &protocol conformance descriptor for HKDatabase.Pruning.Show.Store);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB468);
  }

  return result;
}

unint64_t sub_191C2DB60()
{
  result = qword_1EADCB480;
  if (!qword_1EADCB480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB480);
  }

  return result;
}

unint64_t sub_191C2DC1C()
{
  result = qword_1EADCB490;
  if (!qword_1EADCB490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB490);
  }

  return result;
}

unint64_t sub_191C2DC70()
{
  result = qword_1EADCB4A8;
  if (!qword_1EADCB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4A8);
  }

  return result;
}

unint64_t sub_191C2DCC4()
{
  result = qword_1EADCB4B0;
  if (!qword_1EADCB4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4B0);
  }

  return result;
}

unint64_t sub_191C2DD18()
{
  result = qword_1EADCB4C0;
  if (!qword_1EADCB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4C0);
  }

  return result;
}

unint64_t sub_191C2DD6C()
{
  result = qword_1EADCB4D0;
  if (!qword_1EADCB4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4D0);
  }

  return result;
}

unint64_t sub_191C2DDC0()
{
  result = qword_1EADCB4D8;
  if (!qword_1EADCB4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4D8);
  }

  return result;
}

unint64_t sub_191C2DE14()
{
  result = qword_1EADCB4E8;
  if (!qword_1EADCB4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4E8);
  }

  return result;
}

unint64_t sub_191C2DEF0()
{
  result = qword_1EADCB4F8;
  if (!qword_1EADCB4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB4F8);
  }

  return result;
}

unint64_t sub_191C2DF44()
{
  result = qword_1EADCB508;
  if (!qword_1EADCB508)
  {
    sub_191C2D5D4(255, &qword_1EADCB500, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB510, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB508);
  }

  return result;
}

unint64_t sub_191C2E01C()
{
  result = qword_1EADCB520;
  if (!qword_1EADCB520)
  {
    sub_191C2D5D4(255, &qword_1EADCB500, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB528, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification, &protocol conformance descriptor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB520);
  }

  return result;
}

uint64_t sub_191C2E0F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_191C2E15C()
{
  result = qword_1EADCB538;
  if (!qword_1EADCB538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB538);
  }

  return result;
}

unint64_t sub_191C2E1B0()
{
  result = qword_1EADCB548;
  if (!qword_1EADCB548)
  {
    sub_191C2D5D4(255, &qword_1EADCB540, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB550, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample, &protocol conformance descriptor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB548);
  }

  return result;
}

void sub_191C2E288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_191C2E2F0()
{
  result = qword_1EADCB560;
  if (!qword_1EADCB560)
  {
    sub_191C2D5D4(255, &qword_1EADCB540, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample, MEMORY[0x1E69E62F8]);
    sub_191C2153C(&qword_1EADCB568, type metadata accessor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample, &protocol conformance descriptor for HKDatabase.Pruning.DeletedSampleDetail.DeletedSample);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB560);
  }

  return result;
}

unint64_t sub_191C2E3CC()
{
  result = qword_1EADCB570;
  if (!qword_1EADCB570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB570);
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_191C2E454(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C2E49C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 128) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_191C2E530(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[72])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_191C2E584(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_191C2E610(uint64_t a1)
{
  result = sub_191CC61A8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_191C2E69C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_191C2E6F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void sub_191C2E784(uint64_t a1)
{
  sub_191CC61A8();
  if (v1 <= 0x3F)
  {
    sub_191C2D5D4(319, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_191C2D5D4(319, &qword_1EADCB598, sub_191C2CC2C, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_191C2E8D8(uint64_t a1)
{
  result = type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

void sub_191C2E968(uint64_t a1)
{
  sub_191CC61A8();
  if (v1 <= 0x3F)
  {
    sub_191CC6148();
    if (v2 <= 0x3F)
    {
      sub_191C2D5D4(319, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_191C2CDE4(319);
        if (v4 <= 0x3F)
        {
          sub_191C2EAD4(319, &qword_1EADCB5C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_191C2EAD4(319, &qword_1EADCB5C8, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
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

void sub_191C2EAD4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t get_enum_tag_for_layout_string_9HealthKit10HKDatabaseO7PruningO4ShowV20SyncEntityIdentifierVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C2EB48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_191C2EB90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_191C2EC0C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_191C2EC2C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 96) = v3;
  return result;
}

uint64_t sub_191C2EC88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 400))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_191C2ECA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = (a2 - 1);
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

  *(result + 400) = v3;
  return result;
}

__n128 __swift_memcpy224_8(uint64_t a1, uint64_t a2)
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
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 208);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 208) = v11;
  *(a1 + 160) = result;
  *(a1 + 176) = v10;
  return result;
}

uint64_t sub_191C2ED88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 224))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 88);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C2EDD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_191C2EE58(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_191C2EEA0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_191C2EF18(uint64_t a1)
{
  sub_191CC61A8();
  if (v1 <= 0x3F)
  {
    sub_191CC6148();
    if (v2 <= 0x3F)
    {
      sub_191C2D5D4(319, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_191C2D5D4(319, &qword_1EADCB500, type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t _s14descr1F05F1AE1C7PruningO17DeletedSampleInfoV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1F05F1AE1C7PruningO17DeletedSampleInfoV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr1F05F1AE1C7PruningO4ShowV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1F05F1AE1C7PruningO4ShowV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr1F05F1AE1C7PruningO4ShowV6EntityV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1F05F1AE1C7PruningO4ShowV6EntityV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s14descr1F05F1AE1C7PruningO4ShowV5StoreV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14descr1F05F1AE1C7PruningO4ShowV5StoreV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_191C2F5E0(unsigned __int8 *a1, unsigned int a2)
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
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_191C2F670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_191C2F7A0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_191C2F830(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_191C2F8F4()
{
  result = qword_1EADCB5E0;
  if (!qword_1EADCB5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB5E0);
  }

  return result;
}

unint64_t sub_191C2F94C()
{
  result = qword_1EADCB5E8;
  if (!qword_1EADCB5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB5E8);
  }

  return result;
}

unint64_t sub_191C2F9A4()
{
  result = qword_1EADCB5F0;
  if (!qword_1EADCB5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB5F0);
  }

  return result;
}

unint64_t sub_191C2F9FC()
{
  result = qword_1EADCB5F8;
  if (!qword_1EADCB5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB5F8);
  }

  return result;
}

unint64_t sub_191C2FA54()
{
  result = qword_1EADCB600;
  if (!qword_1EADCB600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB600);
  }

  return result;
}

unint64_t sub_191C2FAAC()
{
  result = qword_1EADCB608;
  if (!qword_1EADCB608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB608);
  }

  return result;
}

unint64_t sub_191C2FB04()
{
  result = qword_1EADCB610;
  if (!qword_1EADCB610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB610);
  }

  return result;
}

unint64_t sub_191C2FB5C()
{
  result = qword_1EADCB618;
  if (!qword_1EADCB618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB618);
  }

  return result;
}

unint64_t sub_191C2FBB4()
{
  result = qword_1EADCB620;
  if (!qword_1EADCB620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB620);
  }

  return result;
}

unint64_t sub_191C2FC0C()
{
  result = qword_1EADCB628;
  if (!qword_1EADCB628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB628);
  }

  return result;
}

unint64_t sub_191C2FC64()
{
  result = qword_1EADCB630;
  if (!qword_1EADCB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB630);
  }

  return result;
}

unint64_t sub_191C2FCBC()
{
  result = qword_1EADCB638;
  if (!qword_1EADCB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB638);
  }

  return result;
}

unint64_t sub_191C2FD14()
{
  result = qword_1EADCB640;
  if (!qword_1EADCB640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB640);
  }

  return result;
}

unint64_t sub_191C2FD6C()
{
  result = qword_1EADCB648;
  if (!qword_1EADCB648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB648);
  }

  return result;
}

unint64_t sub_191C2FDC4()
{
  result = qword_1EADCB650;
  if (!qword_1EADCB650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB650);
  }

  return result;
}

unint64_t sub_191C2FE1C()
{
  result = qword_1EADCB658;
  if (!qword_1EADCB658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB658);
  }

  return result;
}

unint64_t sub_191C2FE74()
{
  result = qword_1EADCB660;
  if (!qword_1EADCB660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB660);
  }

  return result;
}

unint64_t sub_191C2FECC()
{
  result = qword_1EADCB668;
  if (!qword_1EADCB668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB668);
  }

  return result;
}

unint64_t sub_191C2FF24()
{
  result = qword_1EADCB670;
  if (!qword_1EADCB670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB670);
  }

  return result;
}

unint64_t sub_191C2FF7C()
{
  result = qword_1EADCB678;
  if (!qword_1EADCB678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB678);
  }

  return result;
}

unint64_t sub_191C2FFD4()
{
  result = qword_1EADCB680;
  if (!qword_1EADCB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB680);
  }

  return result;
}

unint64_t sub_191C3002C()
{
  result = qword_1EADCB688;
  if (!qword_1EADCB688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB688);
  }

  return result;
}

unint64_t sub_191C30084()
{
  result = qword_1EADCB690;
  if (!qword_1EADCB690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB690);
  }

  return result;
}

unint64_t sub_191C300DC()
{
  result = qword_1EADCB698;
  if (!qword_1EADCB698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB698);
  }

  return result;
}

unint64_t sub_191C30134()
{
  result = qword_1EADCB6A0;
  if (!qword_1EADCB6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6A0);
  }

  return result;
}

unint64_t sub_191C3018C()
{
  result = qword_1EADCB6A8;
  if (!qword_1EADCB6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6A8);
  }

  return result;
}

unint64_t sub_191C301E4()
{
  result = qword_1EADCB6B0;
  if (!qword_1EADCB6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6B0);
  }

  return result;
}

unint64_t sub_191C3023C()
{
  result = qword_1EADCB6B8;
  if (!qword_1EADCB6B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6B8);
  }

  return result;
}

unint64_t sub_191C30294()
{
  result = qword_1EADCB6C0;
  if (!qword_1EADCB6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6C0);
  }

  return result;
}

unint64_t sub_191C302EC()
{
  result = qword_1EADCB6C8;
  if (!qword_1EADCB6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6C8);
  }

  return result;
}

unint64_t sub_191C30344()
{
  result = qword_1EADCB6D0;
  if (!qword_1EADCB6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6D0);
  }

  return result;
}

unint64_t sub_191C3039C()
{
  result = qword_1EADCB6D8;
  if (!qword_1EADCB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6D8);
  }

  return result;
}

unint64_t sub_191C303F4()
{
  result = qword_1EADCB6E0;
  if (!qword_1EADCB6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6E0);
  }

  return result;
}

unint64_t sub_191C3044C()
{
  result = qword_1EADCB6E8;
  if (!qword_1EADCB6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6E8);
  }

  return result;
}

unint64_t sub_191C304A4()
{
  result = qword_1EADCB6F0;
  if (!qword_1EADCB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6F0);
  }

  return result;
}

unint64_t sub_191C304FC()
{
  result = qword_1EADCB6F8;
  if (!qword_1EADCB6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB6F8);
  }

  return result;
}

unint64_t sub_191C30554()
{
  result = qword_1EADCB700;
  if (!qword_1EADCB700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB700);
  }

  return result;
}

unint64_t sub_191C305AC()
{
  result = qword_1EADCB708;
  if (!qword_1EADCB708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB708);
  }

  return result;
}

unint64_t sub_191C30604()
{
  result = qword_1EADCB710;
  if (!qword_1EADCB710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB710);
  }

  return result;
}

unint64_t sub_191C3065C()
{
  result = qword_1EADCB718;
  if (!qword_1EADCB718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB718);
  }

  return result;
}

unint64_t sub_191C306B4()
{
  result = qword_1EADCB720;
  if (!qword_1EADCB720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB720);
  }

  return result;
}

unint64_t sub_191C3070C()
{
  result = qword_1EADCB728;
  if (!qword_1EADCB728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB728);
  }

  return result;
}

unint64_t sub_191C30764()
{
  result = qword_1EADCB730;
  if (!qword_1EADCB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB730);
  }

  return result;
}

unint64_t sub_191C307BC()
{
  result = qword_1EADCB738;
  if (!qword_1EADCB738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB738);
  }

  return result;
}

unint64_t sub_191C30814()
{
  result = qword_1EADCB740;
  if (!qword_1EADCB740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB740);
  }

  return result;
}

unint64_t sub_191C3086C()
{
  result = qword_1EADCB748;
  if (!qword_1EADCB748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB748);
  }

  return result;
}

unint64_t sub_191C308C4()
{
  result = qword_1EADCB750;
  if (!qword_1EADCB750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB750);
  }

  return result;
}

unint64_t sub_191C3091C()
{
  result = qword_1EADCB758;
  if (!qword_1EADCB758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB758);
  }

  return result;
}

unint64_t sub_191C30974()
{
  result = qword_1EADCB760;
  if (!qword_1EADCB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB760);
  }

  return result;
}

unint64_t sub_191C309CC()
{
  result = qword_1EADCB768;
  if (!qword_1EADCB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB768);
  }

  return result;
}

unint64_t sub_191C30A24()
{
  result = qword_1EADCB770;
  if (!qword_1EADCB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB770);
  }

  return result;
}

unint64_t sub_191C30A7C()
{
  result = qword_1EADCB778;
  if (!qword_1EADCB778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB778);
  }

  return result;
}

unint64_t sub_191C30AD4()
{
  result = qword_1EADCB780;
  if (!qword_1EADCB780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB780);
  }

  return result;
}

unint64_t sub_191C30B2C()
{
  result = qword_1EADCB788;
  if (!qword_1EADCB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB788);
  }

  return result;
}

uint64_t sub_191C30B80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0xD000000000000028 && 0x8000000191D2BFD0 == a2;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000191D2C000 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000191D2C020 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000191D2C040 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000191D2C060 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000191D2C080 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000191D2C0A0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2C0C0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000191D2C0E0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C30E50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2C100 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2C120 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000191D2C140 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C30FC8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65726F7473 && a2 == 0xE500000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656449636E7973 && a2 == 0xEC00000079746974 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746E4965746164 && a2 == 0xEC0000006C617672 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726F68636E61 && a2 == 0xE600000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x686374616DLL && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C31174(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x644965726F7473 && a2 == 0xE700000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x416D756D6978616DLL && a2 == 0xED0000726F68636ELL || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000191D2C1A0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C3133C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000191D2C1C0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E416E657A6F7266 && a2 == 0xEF70614D726F6863 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E656449636E7973 && a2 == 0xEC00000079746974 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2C1E0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x7045657669746361 && a2 == 0xEB0000000068636FLL || (sub_191CC73E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x45676E69646E6570 && a2 == 0xEC00000068636F70 || (sub_191CC73E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E6F7473626D6F74 && a2 == 0xEE0068636F704565)
  {

    return 9;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_191C316A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E7373616C63 && a2 == 0xE900000000000065;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7374726F70707573 && a2 == 0xEF676E696E757250 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000191D2C200 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2C230 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000191D2C250 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_191C318BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x72756769666E6F63 && a2 == 0xED00006E6F697461 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000191D2C270 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000191D2C290 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E656449636E7973 && a2 == 0xEE00736569746974 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7365726F7473 && a2 == 0xE600000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7365697469746E65 && a2 == 0xE800000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C31B1C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2C2C0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000191D2C2E0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000191D2C300 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000191D2C320 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000191D2C350 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000191D2C370 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000191D2C3A0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000191D2C3D0 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000029 && 0x8000000191D2C400 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2C430 == a2)
  {

    return 10;
  }

  else
  {
    v6 = sub_191CC73E8();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_191C31E84(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2C450 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000191D2C470 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000191D2C490 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000191D2C4C0 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_191CC73E8();

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

uint64_t sub_191C32038(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4449776F72 && a2 == 0xE500000000000000;
  if (v4 || (sub_191CC73E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684632949 && a2 == 0xE400000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4464657461657263 && a2 == 0xEB00000000657461 || (sub_191CC73E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_191CC73E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_191CC73E8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000191D2C510 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000191D2C450 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000191D2C490 == a2 || (sub_191CC73E8() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000191D2C530 == a2)
  {

    return 8;
  }

  else
  {
    v6 = sub_191CC73E8();

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

void sub_191C32324(uint64_t a1)
{
  if (!qword_1EADCB790)
  {
    sub_191C2D5D4(255, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCB790);
    }
  }
}

void sub_191C323B8(uint64_t a1)
{
  if (!qword_1EADCB798)
  {
    type metadata accessor for HKDatabase.Pruning.Show.PruningRestrictionPredicate.Classification(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCB798);
    }
  }
}

uint64_t sub_191C3241C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t Range<>.dayIndexRange.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < result)
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
    a3[1] = a2;
  }

  return result;
}

uint64_t DayIndex.init(date:calendar:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v36 = a1;
  v35 = sub_191CC5DC8();
  v5 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_191CC61C8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v34 - v13;
  sub_191CC61E8();
  (*(v9 + 104))(v12, *MEMORY[0x1E6969868], v8);
  v15 = sub_191CC61B8();
  v16 = *(v9 + 8);
  v16(v12, v8);
  result = (v16)(v14, v8);
  if (v15)
  {
    v34 = a3;
    sub_191C33F84(0, &qword_1EADCAE10, MEMORY[0x1E6969AD0], MEMORY[0x1E69E6F90]);
    v18 = sub_191CC6288();
    v19 = *(v18 - 8);
    v20 = *(v19 + 72);
    v21 = (*(v19 + 80) + 32) & ~*(v19 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_191DD1F50;
    v23 = v22 + v21;
    v24 = *(v19 + 104);
    v24(v23, *MEMORY[0x1E6969A68], v18);
    v24(v23 + v20, *MEMORY[0x1E6969A78], v18);
    v24(v23 + 2 * v20, *MEMORY[0x1E6969A48], v18);
    sub_191C19060(v22);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v25 = v36;
    sub_191CC6218();

    result = sub_191CC5D88();
    if ((v26 & 1) == 0)
    {
      v27 = result;
      result = sub_191CC5D98();
      if ((v28 & 1) == 0)
      {
        v29 = result;
        result = sub_191CC5D68();
        if ((v30 & 1) == 0)
        {
          v37[0] = v27;
          v37[1] = v29;
          v37[2] = result;
          v31 = HKDayIndexFromCalendarComponents(v37);
          v32 = sub_191CC62A8();
          (*(*(v32 - 8) + 8))(a2, v32);
          v33 = sub_191CC6148();
          (*(*(v33 - 8) + 8))(v25, v33);
          result = (*(v5 + 8))(v7, v35);
          *v34 = v31;
          return result;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

HealthKit::DayIndex __swiftcall DayIndex.advanced(by:)(HealthKit::DayIndex by)
{
  if (__OFADD__(*v2, by.value))
  {
    __break(1u);
  }

  else
  {
    *v1 = *v2 + by.value;
  }

  return by;
}

uint64_t DayIndex.startDate(in:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v4 = MEMORY[0x1E69E6720];
  sub_191C33F84(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v28 = v27 - v6;
  sub_191C33F84(0, &qword_1EADCAED0, MEMORY[0x1E6969BC0], v4);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v27 - v8;
  sub_191C33F84(0, &qword_1EADCADE0, MEMORY[0x1E6969AE8], v4);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v27 - v11;
  v29 = sub_191CC5DC8();
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v15 = v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  HKCalendarComponentsFromDayIndex(*v2, &v31);
  v27[2] = v31;
  v27[3] = v32;
  v16 = sub_191CC62A8();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v12, a1, v16);
  v18 = *(v17 + 56);
  v27[1] = v16;
  v18(v12, 0, 1, v16);
  v19 = sub_191CC6308();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);
  v21 = v28;
  sub_191CC5DA8();
  sub_191CC6268();
  v20(v9, 0, 1, v19);
  sub_191CC5DB8();
  sub_191CC5D78();
  v22 = sub_191CC6148();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_191C2CC84(v21);
    v31 = 0;
    v32 = 0xE000000000000000;
    sub_191CC6FC8();

    v31 = 0xD000000000000012;
    v32 = 0x8000000191D2C570;
    sub_191C33FE8(&qword_1EADCB7A0, MEMORY[0x1E6968278], MEMORY[0x1E69682A0]);
    v25 = sub_191CC7398();
    MEMORY[0x193B01F90](v25);

    MEMORY[0x193B01F90](0x65746164206F7420, 0xEC000000206E6920);
    sub_191C33FE8(&qword_1EADCB7A8, MEMORY[0x1E6969AE8], MEMORY[0x1E6969B10]);
    v26 = sub_191CC7398();
    MEMORY[0x193B01F90](v26);

    result = sub_191CC7118();
    __break(1u);
  }

  else
  {
    (*(v13 + 8))(v15, v29);
    return (*(v23 + 32))(v30, v21, v22);
  }

  return result;
}

uint64_t DayIndex.daysSinceToday(gregorianCalendar:__today:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_191CC62A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_191CC6148();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  (*(v13 + 16))(v11, a2);
  (*(v6 + 16))(v8, a1, v5);
  DayIndex.init(date:calendar:)(v11, v8, &v16);
  result = v12 - v16;
  if (__OFSUB__(v12, v16))
  {
    __break(1u);
  }

  return result;
}

void *static DayIndex.- infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFSUB__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

uint64_t DayIndex.init(daysSinceToday:gregorianCalendar:__today:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_191CC62A8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_191CC6148();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a3, v12);
  (*(v9 + 16))(v11, a2, v8);
  DayIndex.init(date:calendar:)(v15, v11, &v18);
  (*(v13 + 8))(a3, v12);
  result = (*(v9 + 8))(a2, v8);
  if (__OFADD__(v18, a1))
  {
    __break(1u);
  }

  else
  {
    *a4 = v18 + a1;
  }

  return result;
}

uint64_t sub_191C33278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_191CC73E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_191C332FC(uint64_t a1)
{
  v2 = sub_191C34030();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_191C33338(uint64_t a1)
{
  v2 = sub_191C34030();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DayIndex.encode(to:)(void *a1)
{
  sub_191C34084(0, &qword_1EADCB7B0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C34030();
  sub_191CC7548();
  sub_191CC7338();
  return (*(v4 + 8))(v6, v3);
}

uint64_t DayIndex.hashValue.getter()
{
  v1 = *v0;
  sub_191CC74C8();
  MEMORY[0x193B02C70](v1);
  return sub_191CC7508();
}

uint64_t DayIndex.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_191C34084(0, &qword_1EADCB7C0, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C34030();
  sub_191CC7528();
  if (!v2)
  {
    v10 = sub_191CC7258();
    (*(v7 + 8))(v9, v6);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

void *sub_191C336B0(void *result, void *a2)
{
  if (!__OFSUB__(*a2, *result))
  {
    return (*a2 == *result);
  }

  __break(1u);
  return result;
}

uint64_t sub_191C336E4(void *a1)
{
  sub_191C34084(0, &qword_1EADCB7B0, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_191C34030();
  sub_191CC7548();
  sub_191CC7338();
  return (*(v4 + 8))(v6, v3);
}

Swift::Int __swiftcall DayIndex.distance(to:)(HealthKit::DayIndex to)
{
  v2 = __OFSUB__(*to.value, *v1);
  result = *to.value - *v1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void *sub_191C338B0@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, *v2))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - *v2;
  }

  return result;
}

void *sub_191C338CC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*v2, *result))
  {
    __break(1u);
  }

  else
  {
    *a2 = *v2 + *result;
  }

  return result;
}

void *sub_191C338E8(void *result, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  if (__OFADD__(*a4, *a6))
  {
    __break(1u);
  }

  else
  {
    *result = *a4 + *a6;
    return 0;
  }

  return result;
}

void *static DayIndex.- infix(_:_:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFSUB__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - a2;
  }

  return result;
}

void *static DayIndex.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

void *static DayIndex.+ infix(_:_:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + a2;
  }

  return result;
}

uint64_t DayIndex.gregorianDateComponents(calendar:)(uint64_t a1)
{
  v3 = MEMORY[0x1E69E6720];
  sub_191C33F84(0, &qword_1EADCAED0, MEMORY[0x1E6969BC0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  sub_191C33F84(0, &qword_1EADCADE0, MEMORY[0x1E6969AE8], v3);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  HKCalendarComponentsFromDayIndex(*v1, &v15);
  v10 = sub_191CC62A8();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  v12 = sub_191CC6308();
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
  return sub_191CC5DA8();
}

void DayIndex.sleepDayInterval(in:)()
{
  v1 = *v0;
  v2 = objc_opt_self();
  v3 = sub_191CC6228();
  v4 = [v2 hk:v1 sleepDayIntervalForMorningIndex:v3 calendar:?];

  sub_191CC5CA8();
}

uint64_t Range<>.indexSet.getter()
{
  if (v0[1] < *v0)
  {
    __break(1u);
  }

  return MEMORY[0x1EEDC5780]();
}

uint64_t Range<>.dateInterval(inGregorianCalendar:)(uint64_t a1)
{
  v3 = sub_191CC6148();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v1[1];
  v11 = *v1;
  DayIndex.startDate(in:)(a1, &v10 - v8);
  v11 = v7;
  DayIndex.startDate(in:)(a1, v6);
  return sub_191CC5CC8();
}

uint64_t ClosedRange<>.dateInterval(inGregorianCalendar:)(uint64_t a1)
{
  v3 = sub_191CC6148();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v1[1];
  v11 = *v1;
  result = DayIndex.startDate(in:)(a1, &v10 - v8);
  if (__OFADD__(v7, 1))
  {
    __break(1u);
  }

  else
  {
    v11 = v7 + 1;
    DayIndex.startDate(in:)(a1, v6);
    return sub_191CC5CC8();
  }

  return result;
}

void ClosedRange<>.sleepDayInterval(inGregorianCalendar:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = objc_opt_self();
  v9[0] = v2;
  v9[1] = v1;
  v4 = _sSo15HKDayIndexRangea9HealthKitE06closedC0ABSNyAC03DayB0VG_tcfC_0(v9);
  v6 = v5;
  v7 = sub_191CC6228();
  v8 = [v3 hk:v4 sleepDayIntervalForMorningIndexRange:v6 calendar:v7];

  sub_191CC5CA8();
}

void sub_191C33F84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_191C33FE8(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_191C34030()
{
  result = qword_1EADCB7B8;
  if (!qword_1EADCB7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB7B8);
  }

  return result;
}

void sub_191C34084(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_191C34030();
    v7 = a3(a1, &type metadata for DayIndex.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_191C340F4()
{
  result = qword_1EADCB7C8;
  if (!qword_1EADCB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB7C8);
  }

  return result;
}

unint64_t sub_191C34194()
{
  result = qword_1EADCB7D0;
  if (!qword_1EADCB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB7D0);
  }

  return result;
}

unint64_t sub_191C341EC()
{
  result = qword_1EADCB7D8;
  if (!qword_1EADCB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB7D8);
  }

  return result;
}

unint64_t sub_191C34244()
{
  result = qword_1EADCB7E0;
  if (!qword_1EADCB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB7E0);
  }

  return result;
}

uint64_t HKBloodPressureClassificationManager.pregnancyModelProvider.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___HKBloodPressureClassificationManager_pregnancyModelProvider;
  swift_beginAccess();
  return sub_191C342FC(v1 + v3, a1);
}

uint64_t sub_191C342FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t HKBloodPressureClassificationManager.pregnancyModelProvider.setter(__int128 *a1)
{
  v3 = OBJC_IVAR___HKBloodPressureClassificationManager_pregnancyModelProvider;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((v1 + v3));
  sub_191C343C8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_191C343C8(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

id HKBloodPressureClassificationManager.init(healthStore:)(void *a1)
{
  v2 = sub_191C3B838(a1);

  return v2;
}

id static HKKeyValueDomain.bloodPressureDefaultsDomain(with:)(uint64_t a1)
{
  v2 = objc_allocWithZone(HKKeyValueDomain);

  return [v2 initWithCategory:4 domainName:@"com.apple.private.health.blood-pressure-classification" healthStore:a1];
}

uint64_t HKBloodPressureClassificationManager.unitTest_startObserving(_:)(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  sub_191C3BBE8(0);
  v2[20] = v3;
  v2[21] = *(v3 - 8);
  v2[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C34610, 0, 0);
}

uint64_t sub_191C34610()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0 + 10;
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  v7 = v1[19];
  [*(v7 + OBJC_IVAR___HKBloodPressureClassificationManager_observers) registerObserver:v1[18] queue:*(v7 + OBJC_IVAR___HKBloodPressureClassificationManager_observerQueue)];
  v10 = *(v7 + OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain);
  v1[2] = v1;
  v1[3] = sub_191C347EC;
  swift_continuation_init();
  v1[17] = v6;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v5 + 32))(boxed_opaque_existential_0, v4, v6);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C349D4;
  v1[13] = &block_descriptor_12;
  [v10 unitTest:v7 startObservation:v3 withCompletion:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v6);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_191C347EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_191C34960;
  }

  else
  {
    v2 = sub_191C348FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C348FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_191C34960(uint64_t a1)
{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

void sub_191C349D4(uint64_t a1, int a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a2)
  {
    sub_191C3BBE8(0);
    sub_191CC69E8();
  }

  else if (a3)
  {
    sub_191C3BBE8(0);
    v5 = a3;
    sub_191CC69D8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t HKBloodPressureClassificationManager.startObserving(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___HKBloodPressureClassificationManager_observers);
  v5 = *(v2 + OBJC_IVAR___HKBloodPressureClassificationManager_observerQueue);
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = swift_allocObject();
  *(v7 + 16) = sub_191C3BC80;
  *(v7 + 24) = v6;
  v10[4] = sub_191C3BCA4;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_191C34BE8;
  v10[3] = &block_descriptor_7_0;
  v8 = _Block_copy(v10);

  [v4 registerObserver:a1 queue:v5 runIfFirstObserver:v8];
  _Block_release(v8);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t HKBloodPressureClassificationManager.stopObserving(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + OBJC_IVAR___HKBloodPressureClassificationManager_observers);
  v5 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v6 = swift_allocObject();
  *(v6 + 16) = sub_191C3BCCC;
  *(v6 + 24) = v5;
  v9[4] = sub_191C3D758;
  v9[5] = v6;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_191C34BE8;
  v9[3] = &block_descriptor_15;
  v7 = _Block_copy(v9);

  [v4 unregisterObserver:a1 runIfLastObserver:v7];
  _Block_release(v7);
  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

void sub_191C34D94(uint64_t a1, const char **a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = *a2;
    v5 = Strong;
    [*(Strong + OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain) v4];
  }
}

void sub_191C34E1C(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

Swift::Bool __swiftcall HKBloodPressureClassificationManager.isClassificationAgeGated()()
{
  sub_191C34EF8();
  if (v0)
  {
    return 1;
  }

  v2 = sub_191CC6B98();
  v3 = [v2 integerValue];

  return v3 < 18;
}

id sub_191C34EF8()
{
  v1 = v0;
  v25[1] = *MEMORY[0x1E69E9840];
  swift_getObjectType();
  v2 = sub_191CC6148();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR___HKBloodPressureClassificationManager_healthStore);
  v25[0] = 0;
  v7 = [v6 dateOfBirthComponentsWithError_];
  if (v7)
  {
    v8 = v25[0];
    sub_191CC6138();
    v9 = sub_191CC60A8();
    (*(v3 + 8))(v5, v2);
    v10 = [v7 hk:v9 ageWithCurrentDate:?];
  }

  else
  {
    v11 = v25[0];
    v12 = sub_191CC5FC8();

    swift_willThrow();
    v13 = sub_191CC5FB8();
    v14 = [v13 hk_isDatabaseAccessibilityError];

    if (v14)
    {
      if (qword_1EADCA160 != -1)
      {
        swift_once();
      }

      v15 = sub_191CC6348();
      __swift_project_value_buffer(v15, qword_1EADE7090);
      v16 = sub_191CC6328();
      v17 = sub_191CC6C98();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v25[0] = v19;
        *v18 = 136315138;
        v20 = sub_191CC76A8();
        v22 = sub_191C3B288(v20, v21, v25);

        *(v18 + 4) = v22;
        _os_log_impl(&dword_19197B000, v16, v17, "[%s] database is inaccessible; unable to determine user age", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v19);
        MEMORY[0x193B047C0](v19, -1, -1);
        MEMORY[0x193B047C0](v18, -1, -1);
      }
    }

    else
    {
    }

    return 0;
  }

  return v10;
}

uint64_t HKBloodPressureClassificationManager.preferredClassificationGuidelines(completionHandler:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_191CC6A38();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v2;
  v10[5] = a1;
  v10[6] = a2;
  v10[7] = ObjectType;
  v11 = v2;

  sub_191C35DD0(0, 0, v8, &unk_191DD4560, v10);
}

uint64_t sub_191C3540C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v8 = swift_task_alloc();
  v7[9] = v8;
  *v8 = v7;
  v8[1] = sub_191C354A4;

  return sub_191C3578C();
}

uint64_t sub_191C354A4(uint64_t a1, char a2)
{
  v3 = *v2;
  *(v3 + 32) = a2;
  *(v3 + 16) = v2;
  *(v3 + 24) = a1;
  *(v3 + 80) = a2;

  return MEMORY[0x1EEE6DFA0](sub_191C355AC, 0, 0);
}

uint64_t sub_191C355AC()
{
  v17 = v0;
  if (*(v0 + 80))
  {
    if (qword_1EADCA160 != -1)
    {
      swift_once();
    }

    v1 = sub_191CC6348();
    __swift_project_value_buffer(v1, qword_1EADE7090);
    v2 = sub_191CC6328();
    v3 = sub_191CC6C88();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      v5 = swift_slowAlloc();
      v16 = v5;
      *v4 = 136315138;
      v6 = sub_191CC76A8();
      v8 = sub_191C3B288(v6, v7, &v16);

      *(v4 + 4) = v8;
      _os_log_impl(&dword_19197B000, v2, v3, "[%s]: user preferred blood pressure classification guidelines not available, using default classification guidelines", v4, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v5);
      MEMORY[0x193B047C0](v5, -1, -1);
      MEMORY[0x193B047C0](v4, -1, -1);
    }

    v9 = *(v0 + 40);
    v10 = sub_191C3A200();
    v11 = HKCurrentLocaleCountryCodeIfUnknown(v10);

    v12 = [v9 defaultClassificationGuidelinesForCountryCode_];
    v13 = v12;
  }

  else
  {
    v13 = *(v0 + 24);
  }

  (*(v0 + 48))(v13);
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_191C3578C()
{
  v1[19] = v0;
  v1[20] = swift_getObjectType();
  sub_191C3D4C8(0);
  v1[21] = v2;
  v1[22] = *(v2 - 8);
  v1[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C35858, 0, 0);
}

uint64_t sub_191C35858()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 18;
  v5 = v0[22];
  v6 = v0[23];
  v7 = v0[21];
  v12 = *(v1[19] + OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain);
  v1[24] = @"BloodPressureClassificationGuidelines";
  v11 = v3;
  v1[2] = v2;
  v1[7] = v4;
  v1[3] = sub_191C35A3C;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191C3D538(0);
  sub_191BF92E0();
  v9 = @"BloodPressureClassificationGuidelines";
  sub_191CC69C8();
  (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C3A520;
  v1[13] = &block_descriptor_118;
  [v12 numberForKey:v9 completion:?];
  (*(v5 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x1EEE6DEC8](v11);
}

uint64_t sub_191C35A3C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 200) = v1;
  if (v1)
  {
    v2 = sub_191C35BF0;
  }

  else
  {
    v2 = sub_191C35B4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C35B4C()
{
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = [v1 integerValue];
  }

  else
  {
    v2 = 0;
  }

  v3 = *(v0 + 8);

  return v3(v2, v1 == 0);
}

uint64_t sub_191C35BF0(uint64_t a1)
{
  v17 = v1;
  v2 = *(v1 + 192);
  swift_willThrow();

  v3 = sub_191CC5FB8();
  LOBYTE(v2) = [v3 hk_isDatabaseAccessibilityError];

  if (v2)
  {
    if (qword_1EADCA160 != -1)
    {
      swift_once();
    }

    v4 = sub_191CC6348();
    __swift_project_value_buffer(v4, qword_1EADE7090);
    v5 = sub_191CC6328();
    v6 = sub_191CC6C98();
    v7 = os_log_type_enabled(v5, v6);
    v8 = *(v1 + 200);
    if (v7)
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315138;
      v11 = sub_191CC76A8();
      v13 = sub_191C3B288(v11, v12, &v16);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_19197B000, v5, v6, "[%s] database is inaccessible; unable to determine user preferred blood pressure classification guidelines", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x193B047C0](v10, -1, -1);
      MEMORY[0x193B047C0](v9, -1, -1);
    }
  }

  else
  {
  }

  v14 = *(v1 + 8);

  return v14(0, 1);
}

uint64_t sub_191C35DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = MEMORY[0x1E69E85F0];
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v25 - v11;
  sub_191C3D320(a3, v25 - v11, &qword_1EADCB820, v9);
  v13 = sub_191CC6A38();
  v14 = *(v13 - 8);
  LODWORD(v9) = (*(v14 + 48))(v12, 1, v13);

  if (v9 == 1)
  {
    sub_191C3D3A0(v12, &qword_1EADCB820, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_191CC6A28();
    (*(v14 + 8))(v12, v13);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_191CC69B8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_191CC67D8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_191C3D3A0(a3, &qword_1EADCB820, MEMORY[0x1E69E85F0]);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_191C3D3A0(a3, &qword_1EADCB820, MEMORY[0x1E69E85F0]);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void HKBloodPressureClassificationManager.currentClassificationGuidelines(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_191CC6148();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191CC6138();
  v10 = sub_191CC60A8();
  (*(v7 + 8))(v9, v6);
  aBlock[4] = a1;
  aBlock[5] = a2;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191C3640C;
  aBlock[3] = &block_descriptor_22;
  v11 = _Block_copy(aBlock);

  [v3 classificationGuidelinesOnDate:v10 completionHandler:v11];
  _Block_release(v11);
}

uint64_t sub_191C3640C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t HKBloodPressureClassificationManager.classificationGuidelines(on:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a2;
  ObjectType = swift_getObjectType();
  v6 = sub_191CC6148();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &ObjectType - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &ObjectType - v11;
  v13 = sub_191CC6A38();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v7 + 16))(v9, a1, v6);
  v14 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v15 = (v8 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  *(v16 + 2) = 0;
  *(v16 + 3) = 0;
  *(v16 + 4) = v3;
  (*(v7 + 32))(&v16[v14], v9, v6);
  v17 = &v16[v15];
  *v17 = v21;
  v17[1] = a3;
  *&v16[(v15 + 23) & 0xFFFFFFFFFFFFFFF8] = ObjectType;
  v18 = v3;

  sub_191C35DD0(0, 0, v12, &unk_191DD4570, v16);
}

uint64_t sub_191C36864(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[69] = a8;
  v8[68] = a7;
  v8[67] = a6;
  v8[66] = a5;
  v8[65] = a4;
  sub_191C3D1B8(0);
  v8[70] = v9;
  v8[71] = *(v9 - 8);
  v8[72] = swift_task_alloc();
  v10 = sub_191CC6148();
  v8[73] = v10;
  v8[74] = *(v10 - 8);
  v8[75] = swift_task_alloc();
  v8[76] = swift_task_alloc();
  sub_191C3D220(0);
  v8[77] = v11;
  v8[78] = swift_task_alloc();
  sub_191C3D0F0(0, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
  v8[79] = swift_task_alloc();
  v8[80] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C36A34, 0, 0);
}

uint64_t sub_191C36A34()
{
  v1 = v0[65];
  v2 = OBJC_IVAR___HKBloodPressureClassificationManager_pregnancyModelProvider;
  swift_beginAccess();
  sub_191C342FC(v1 + v2, (v0 + 50));
  v3 = v0[53];
  v4 = v0[54];
  __swift_project_boxed_opaque_existential_0(v0 + 50, v3);
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[81] = v5;
  *v5 = v0;
  v5[1] = sub_191C36B84;

  return v7(v3, v4);
}

uint64_t sub_191C36B84(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 656) = a1;
  *(v3 + 664) = v1;

  if (v1)
  {
    v4 = sub_191C37DC4;
  }

  else
  {
    v4 = sub_191C36C9C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_191C36C9C()
{
  v59 = v0;
  v1 = *(v0 + 656);
  __swift_destroy_boxed_opaque_existential_0((v0 + 400));
  v2 = [v1 state];
  v3 = [v1 physiologicalWashoutEndDate];
  if (v3)
  {
    v4 = v3;
    sub_191CC60F8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v0 + 640);
  v7 = *(v0 + 624);
  v8 = *(v0 + 616);
  (*(*(v0 + 592) + 56))(v6, v5, 1, *(v0 + 584));
  v9 = *(v8 + 48);
  *(v0 + 672) = v9;
  v10 = v7 + v9;
  *v7 = v2;
  sub_191C18F38(v6, v7 + v9);
  if (v2 == 2)
  {
    v17 = *(v0 + 632);
    v18 = *(v0 + 592);
    v19 = *(v0 + 584);
    sub_191C3D320(v10, v17, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
    v20 = (*(v18 + 48))(v17, 1, v19);
    v21 = *(v0 + 632);
    if (v20 == 1)
    {
      sub_191C3D3A0(*(v0 + 632), &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
    }

    else
    {
      v29 = *(v0 + 592);
      v30 = *(v0 + 584);
      v31 = sub_191CC6118();
      (*(v29 + 8))(v21, v30);
      if (v31 == 1)
      {

        goto LABEL_14;
      }
    }

    goto LABEL_18;
  }

  if (v2 != 1)
  {
LABEL_18:
    v22 = v0 + 272;
    v23 = v0 + 80;
    v51 = *(v0 + 576);
    v25 = *(v0 + 568);
    v26 = *(v0 + 560);
    v27 = *(v0 + 520);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 504;
    *(v0 + 88) = sub_191C37930;
    swift_continuation_init();
    *(v0 + 328) = v26;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 304));
    type metadata accessor for HKBloodPressureClassificationGuidelines(0);
    sub_191CC69C8();
    (*(v25 + 32))(boxed_opaque_existential_0, v51, v26);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_191C385E8;
    *(v0 + 296) = &block_descriptor_101;
    goto LABEL_19;
  }

  v11 = [*(v0 + 656) pregnancyStartDate];
  if (v11)
  {
    v12 = *(v0 + 608);
    v13 = *(v0 + 592);
    v14 = *(v0 + 584);
    v15 = v11;
    sub_191CC60F8();

    sub_191C3D64C(&qword_1EADCAE28, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v16 = sub_191CC6718();
    (*(v13 + 8))(v12, v14);
    if (v16)
    {

      v10 = *(v0 + 624) + *(v0 + 672);
LABEL_14:
      sub_191C3D3A0(v10, &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
      if (qword_1EADCA160 != -1)
      {
        swift_once();
      }

      v32 = *(v0 + 600);
      v33 = *(v0 + 592);
      v34 = *(v0 + 584);
      v35 = *(v0 + 528);
      v36 = sub_191CC6348();
      __swift_project_value_buffer(v36, qword_1EADE7090);
      (*(v33 + 16))(v32, v35, v34);
      v37 = sub_191CC6328();
      v38 = sub_191CC6C78();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v57 = swift_slowAlloc();
        v58 = v57;
        *v39 = 136315650;
        v40 = sub_191CC76A8();
        v42 = sub_191C3B288(v40, v41, &v58);

        *(v39 + 4) = v42;
        *(v39 + 12) = 2080;
        v43 = *(v0 + 600);
        v44 = *(v0 + 592);
        v45 = *(v0 + 584);
        v46 = sub_191C3B288(0xD00000000000003CLL, 0x8000000191D2C7D0, &v58);

        *(v39 + 14) = v46;
        *(v39 + 22) = 2080;
        sub_191C3D64C(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
        v47 = sub_191CC7398();
        v49 = v48;
        (*(v44 + 8))(v43, v45);
        v50 = sub_191C3B288(v47, v49, &v58);

        *(v39 + 24) = v50;
        _os_log_impl(&dword_19197B000, v37, v38, "[%s]: Guidelines are %s on %s", v39, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x193B047C0](v57, -1, -1);
        MEMORY[0x193B047C0](v39, -1, -1);
      }

      else
      {
        v52 = *(v0 + 600);
        v53 = *(v0 + 592);
        v54 = *(v0 + 584);

        (*(v53 + 8))(v52, v54);
      }

      (*(v0 + 536))(2);

      v55 = *(v0 + 8);

      return v55();
    }
  }

  v22 = v0 + 336;
  v23 = v0 + 144;
  v24 = *(v0 + 576);
  v25 = *(v0 + 568);
  v26 = *(v0 + 560);
  v27 = *(v0 + 520);
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 512;
  *(v0 + 152) = sub_191C37490;
  swift_continuation_init();
  *(v0 + 392) = v26;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 368));
  type metadata accessor for HKBloodPressureClassificationGuidelines(0);
  sub_191CC69C8();
  (*(v25 + 32))(boxed_opaque_existential_0, v24, v26);
  *(v0 + 336) = MEMORY[0x1E69E9820];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_191C385E8;
  *(v0 + 360) = &block_descriptor_104;
LABEL_19:
  [v27 preferredClassificationGuidelinesWithCompletionHandler_];
  (*(v25 + 8))(boxed_opaque_existential_0, v26);

  return MEMORY[0x1EEE6DEC8](v23);
}

uint64_t sub_191C37490()
{

  return MEMORY[0x1EEE6DFA0](sub_191C37570, 0, 0);
}

uint64_t sub_191C37570()
{
  v32 = v0;

  v1 = *(v0 + 512);
  sub_191C3D3A0(*(v0 + 624) + *(v0 + 672), &unk_1ED5EFFF0, MEMORY[0x1E6969530]);
  if (qword_1EADCA160 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 528);
  v6 = sub_191CC6348();
  __swift_project_value_buffer(v6, qword_1EADE7090);
  (*(v3 + 16))(v2, v5, v4);
  v7 = sub_191CC6328();
  v8 = sub_191CC6C78();
  if (!os_log_type_enabled(v7, v8))
  {
    v16 = *(v0 + 600);
    v17 = *(v0 + 592);
    v18 = *(v0 + 584);

    (*(v17 + 8))(v16, v18);
    goto LABEL_14;
  }

  v9 = 0xD000000000000020;
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v31 = v11;
  *v10 = 136315650;
  v12 = sub_191CC76A8();
  v14 = sub_191C3B288(v12, v13, &v31);

  *(v10 + 4) = v14;
  *(v10 + 12) = 2080;
  v30 = v1;
  if (v1)
  {
    if (v1 == 2)
    {
      v15 = " unavailable for age <";
      v9 = 0xD00000000000003CLL;
    }

    else
    {
      if (v1 != 1)
      {
        v19 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E55;
        goto LABEL_13;
      }

      v15 = "cology and Obstetrics (FIGO)";
      v9 = 0xD000000000000024;
    }
  }

  else
  {
    v15 = " of Cardiology (ESC)";
  }

  v19 = v15 | 0x8000000000000000;
LABEL_13:
  v20 = *(v0 + 600);
  v21 = *(v0 + 592);
  v22 = *(v0 + 584);
  v23 = sub_191C3B288(v9, v19, &v31);

  *(v10 + 14) = v23;
  *(v10 + 22) = 2080;
  sub_191C3D64C(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v24 = sub_191CC7398();
  v26 = v25;
  (*(v21 + 8))(v20, v22);
  v27 = sub_191C3B288(v24, v26, &v31);

  *(v10 + 24) = v27;
  _os_log_impl(&dword_19197B000, v7, v8, "[%s]: Guidelines are %s on %s", v10, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x193B047C0](v11, -1, -1);
  MEMORY[0x193B047C0](v10, -1, -1);

  v1 = v30;
LABEL_14:
  (*(v0 + 536))(v1);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_191C37930()
{

  return MEMORY[0x1EEE6DFA0](sub_191C37A10, 0, 0);
}

uint64_t sub_191C37A10()
{
  v33 = v0;
  v1 = *(v0 + 624);

  v2 = *(v0 + 504);
  sub_191C3D2C0(v1, sub_191C3D220);
  if (qword_1EADCA160 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 600);
  v4 = *(v0 + 592);
  v5 = *(v0 + 584);
  v6 = *(v0 + 528);
  v7 = sub_191CC6348();
  __swift_project_value_buffer(v7, qword_1EADE7090);
  (*(v4 + 16))(v3, v6, v5);
  v8 = sub_191CC6328();
  v9 = sub_191CC6C78();
  if (!os_log_type_enabled(v8, v9))
  {
    v17 = *(v0 + 600);
    v18 = *(v0 + 592);
    v19 = *(v0 + 584);

    (*(v18 + 8))(v17, v19);
    goto LABEL_14;
  }

  v10 = 0xD000000000000020;
  v11 = swift_slowAlloc();
  v12 = swift_slowAlloc();
  v32 = v12;
  *v11 = 136315650;
  v13 = sub_191CC76A8();
  v15 = sub_191C3B288(v13, v14, &v32);

  *(v11 + 4) = v15;
  *(v11 + 12) = 2080;
  v31 = v2;
  if (v2)
  {
    if (v2 == 2)
    {
      v16 = " unavailable for age <";
      v10 = 0xD00000000000003CLL;
    }

    else
    {
      if (v2 != 1)
      {
        v20 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E55;
        goto LABEL_13;
      }

      v16 = "cology and Obstetrics (FIGO)";
      v10 = 0xD000000000000024;
    }
  }

  else
  {
    v16 = " of Cardiology (ESC)";
  }

  v20 = v16 | 0x8000000000000000;
LABEL_13:
  v21 = *(v0 + 600);
  v22 = *(v0 + 592);
  v23 = *(v0 + 584);
  v24 = sub_191C3B288(v10, v20, &v32);

  *(v11 + 14) = v24;
  *(v11 + 22) = 2080;
  sub_191C3D64C(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v25 = sub_191CC7398();
  v27 = v26;
  (*(v22 + 8))(v21, v23);
  v28 = sub_191C3B288(v25, v27, &v32);

  *(v11 + 24) = v28;
  _os_log_impl(&dword_19197B000, v8, v9, "[%s]: Guidelines are %s on %s", v11, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x193B047C0](v12, -1, -1);
  MEMORY[0x193B047C0](v11, -1, -1);

  v2 = v31;
LABEL_14:
  (*(v0 + 536))(v2);

  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_191C37DC4()
{
  v24 = v0;
  __swift_destroy_boxed_opaque_existential_0(v0 + 50);
  if (qword_1EADCA160 != -1)
  {
    swift_once();
  }

  v1 = v0[83];
  v2 = sub_191CC6348();
  __swift_project_value_buffer(v2, qword_1EADE7090);
  v3 = v1;
  v4 = sub_191CC6328();
  v5 = sub_191CC6C98();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v23 = v7;
    *v6 = 136315394;
    v8 = sub_191CC76A8();
    v10 = sub_191C3B288(v8, v9, &v23);

    *(v6 + 4) = v10;
    *(v6 + 12) = 2080;
    swift_getErrorValue();
    v11 = *(v0[59] - 8);
    v12 = swift_task_alloc();
    (*(v11 + 16))(v12);
    v13 = sub_191CC67C8();
    v15 = v14;

    v16 = sub_191C3B288(v13, v15, &v23);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_19197B000, v4, v5, "[%s]: received error from pregnancy state query, using preferred classification guidelines. error: %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B047C0](v7, -1, -1);
    MEMORY[0x193B047C0](v6, -1, -1);
  }

  v17 = v0[72];
  v18 = v0[71];
  v19 = v0[70];
  v20 = v0[65];
  v0[2] = v0;
  v0[7] = v0 + 61;
  v0[3] = sub_191C38174;
  swift_continuation_init();
  v0[33] = v19;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v0 + 30);
  type metadata accessor for HKBloodPressureClassificationGuidelines(0);
  sub_191CC69C8();
  (*(v18 + 32))(boxed_opaque_existential_0, v17, v19);
  v0[26] = MEMORY[0x1E69E9820];
  v0[27] = 1107296256;
  v0[28] = sub_191C385E8;
  v0[29] = &block_descriptor_97;
  [v20 preferredClassificationGuidelinesWithCompletionHandler_];
  (*(v18 + 8))(boxed_opaque_existential_0, v19);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_191C38174()
{

  return MEMORY[0x1EEE6DFA0](sub_191C38254, 0, 0);
}

uint64_t sub_191C38254()
{
  v32 = v0;

  v1 = *(v0 + 488);
  if (qword_1EADCA160 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v4 = *(v0 + 584);
  v5 = *(v0 + 528);
  v6 = sub_191CC6348();
  __swift_project_value_buffer(v6, qword_1EADE7090);
  (*(v3 + 16))(v2, v5, v4);
  v7 = sub_191CC6328();
  v8 = sub_191CC6C78();
  if (!os_log_type_enabled(v7, v8))
  {
    v16 = *(v0 + 600);
    v17 = *(v0 + 592);
    v18 = *(v0 + 584);

    (*(v17 + 8))(v16, v18);
    goto LABEL_14;
  }

  v9 = 0xD000000000000020;
  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v31 = v11;
  *v10 = 136315650;
  v12 = sub_191CC76A8();
  v14 = sub_191C3B288(v12, v13, &v31);

  *(v10 + 4) = v14;
  *(v10 + 12) = 2080;
  v30 = v1;
  if (v1)
  {
    if (v1 == 2)
    {
      v15 = " unavailable for age <";
      v9 = 0xD00000000000003CLL;
    }

    else
    {
      if (v1 != 1)
      {
        v19 = 0xE700000000000000;
        v9 = 0x6E776F6E6B6E55;
        goto LABEL_13;
      }

      v15 = "cology and Obstetrics (FIGO)";
      v9 = 0xD000000000000024;
    }
  }

  else
  {
    v15 = " of Cardiology (ESC)";
  }

  v19 = v15 | 0x8000000000000000;
LABEL_13:
  v20 = *(v0 + 600);
  v21 = *(v0 + 592);
  v22 = *(v0 + 584);
  v23 = sub_191C3B288(v9, v19, &v31);

  *(v10 + 14) = v23;
  *(v10 + 22) = 2080;
  sub_191C3D64C(&qword_1EADCB860, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
  v24 = sub_191CC7398();
  v26 = v25;
  (*(v21 + 8))(v20, v22);
  v27 = sub_191C3B288(v24, v26, &v31);

  *(v10 + 24) = v27;
  _os_log_impl(&dword_19197B000, v7, v8, "[%s]: Guidelines are %s on %s", v10, 0x20u);
  swift_arrayDestroy();
  MEMORY[0x193B047C0](v11, -1, -1);
  MEMORY[0x193B047C0](v10, -1, -1);

  v1 = v30;
LABEL_14:
  (*(v0 + 536))(v1);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_191C385E8(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_191C3D1B8(0);
  return sub_191CC69E8();
}

uint64_t HKBloodPressureClassificationManager.updatePreferredClassificationGuidelines(_:completionHandler:)(uint64_t a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  ObjectType = swift_getObjectType();
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  result = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  if (a1 == 2)
  {
    if (a2)
    {
      sub_191C3C4C4(a2, a3);
      v13 = sub_191C86F64();
      a2(0, v13);

      return sub_191C3C4D4(a2, a3);
    }
  }

  else
  {
    v14 = sub_191CC6A38();
    (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = a1;
    v15[5] = v4;
    v15[6] = a2;
    v15[7] = a3;
    v15[8] = ObjectType;
    v16 = v4;
    sub_191C3C4C4(a2, a3);
    sub_191C38EC8(0, 0, v12, &unk_191DD4580, v15);
  }

  return result;
}

uint64_t sub_191C38AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[4] = a5;
  v8[5] = a6;
  v8[3] = a4;

  return MEMORY[0x1EEE6DFA0](sub_191C38B84, 0, 0);
}

uint64_t sub_191C38B84()
{
  v27 = v0;
  v26[1] = *MEMORY[0x1E69E9840];
  if (qword_1EADCA160 != -1)
  {
    swift_once();
  }

  v1 = sub_191CC6348();
  __swift_project_value_buffer(v1, qword_1EADE7090);
  v2 = sub_191CC6328();
  v3 = sub_191CC6C78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v26[0] = v6;
    *v5 = 136315394;
    v7 = sub_191CC76A8();
    v9 = sub_191C3B288(v7, v8, v26);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E55;
    if (!v4)
    {
      v11 = 0xD000000000000020;
      v10 = 0x8000000191D2C840;
    }

    if (v4 == 1)
    {
      v11 = 0xD000000000000024;
      v10 = 0x8000000191D2C810;
    }

    if (v4 == 2)
    {
      v12 = 0xD00000000000003CLL;
    }

    else
    {
      v12 = v11;
    }

    if (v4 == 2)
    {
      v13 = 0x8000000191D2C7D0;
    }

    else
    {
      v13 = v10;
    }

    v14 = sub_191C3B288(v12, v13, v26);

    *(v5 + 14) = v14;
    _os_log_impl(&dword_19197B000, v2, v3, "[%s]: setting preferred blood pressure guidelines: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x193B047C0](v6, -1, -1);
    MEMORY[0x193B047C0](v5, -1, -1);
  }

  v15 = *(v0[4] + OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain);
  v16 = sub_191CC6B98();
  v0[2] = 0;
  v17 = [v15 setNumber:v16 forKey:@"BloodPressureClassificationGuidelines" error:v0 + 2];

  v18 = v0[2];
  if (v17)
  {
    v19 = v0[5];
    if (v19)
    {
      v20 = v0[6];
      v21 = v18;
      sub_191C3C4C4(v19, v20);
      v19(1, 0);
      sub_191C3C4D4(v19, v20);
    }

    else
    {
      v24 = v18;
    }

    v23 = v0[1];
  }

  else
  {
    v22 = v18;
    sub_191CC5FC8();

    swift_willThrow();
    v23 = v0[1];
  }

  return v23();
}

uint64_t sub_191C38EC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = MEMORY[0x1E69E85F0];
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v22 - v10;
  sub_191C3D320(a3, v22 - v10, &qword_1EADCB820, v8);
  v12 = sub_191CC6A38();
  v13 = *(v12 - 8);
  LODWORD(v8) = (*(v13 + 48))(v11, 1, v12);

  if (v8 == 1)
  {
    sub_191C3D3A0(v11, &qword_1EADCB820, MEMORY[0x1E69E85F0]);
  }

  else
  {
    sub_191CC6A28();
    (*(v13 + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_191CC69B8();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_191CC67D8() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_191C3D3A0(a3, &qword_1EADCB820, MEMORY[0x1E69E85F0]);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_191C3D3A0(a3, &qword_1EADCB820, MEMORY[0x1E69E85F0]);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void sub_191C39278(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_191CC5FB8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

uint64_t HKBloodPressureClassificationManager.removePreferredClassificationGuidelines(completionHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  sub_191C3D0F0(0, &qword_1EADCB820, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_191CC6A38();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = ObjectType;
  v12 = v3;
  sub_191C3C4C4(a1, a2);
  sub_191C38EC8(0, 0, v9, &unk_191DD4590, v11);
}

uint64_t sub_191C39440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;

  return MEMORY[0x1EEE6DFA0](sub_191C394D4, 0, 0);
}

uint64_t sub_191C394D4()
{
  v20 = v0;
  v19[1] = *MEMORY[0x1E69E9840];
  if (qword_1EADCA160 != -1)
  {
    swift_once();
  }

  v1 = sub_191CC6348();
  __swift_project_value_buffer(v1, qword_1EADE7090);
  v2 = sub_191CC6328();
  v3 = sub_191CC6C78();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v19[0] = v5;
    *v4 = 136315138;
    v6 = sub_191CC76A8();
    v8 = sub_191C3B288(v6, v7, v19);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_19197B000, v2, v3, "[%s]: deleting preferred blood pressure guidelines", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x193B047C0](v5, -1, -1);
    MEMORY[0x193B047C0](v4, -1, -1);
  }

  v9 = *(v0[3] + OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain);
  v0[2] = 0;
  v10 = [v9 setNumber:0 forKey:@"BloodPressureClassificationGuidelines" error:v0 + 2];
  v11 = v0[2];
  if (v10)
  {
    v12 = v0[4];
    if (v12)
    {
      v13 = v0[5];
      v14 = v11;
      sub_191C3C4C4(v12, v13);
      v12(1, 0);
      sub_191C3C4D4(v12, v13);
    }

    else
    {
      v17 = v11;
    }

    v16 = v0[1];
  }

  else
  {
    v15 = v11;
    sub_191CC5FC8();

    swift_willThrow();
    v16 = v0[1];
  }

  return v16();
}

id HKBloodPressureClassificationManager.category(for:systolic:diastolic:age:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a1 == 2 || a4 && (v7 = a4, v8 = [v7 integerValue], v7, v8 >= 18))
  {
    type metadata accessor for HKBloodPressureClassificationEvaluator();
    return static HKBloodPressureClassificationEvaluator.category(for:systolic:diastolic:)(a1, a2, a3);
  }

  else
  {
    sub_191C3C69C();
    return swift_willThrow();
  }
}

BOOL HKBloodPressureClassificationManager.hypertensiveEscalation(for:systolic:diastolic:age:)(uint64_t a1, void *a2, void *a3, void *a4)
{
  swift_getObjectType();
  if (a1 == 2)
  {
    [a2 _value];
    if (v17 >= 140.0)
    {
      return 1;
    }

    [a3 _value];
    v16 = 90.0;
    return v15 >= v16;
  }

  if (a1 == 1)
  {
    if (!a4)
    {
      return 0;
    }

    v12 = a4;
    v13 = [v12 integerValue];

    if (v13 < 18)
    {
      return 0;
    }

    [a2 _value];
    if (v14 >= 180.0)
    {
      return 1;
    }

    [a3 _value];
    v16 = 110.0;
    return v15 >= v16;
  }

  if (a1)
  {
    if (qword_1EADCA160 != -1)
    {
      swift_once();
    }

    v19 = sub_191CC6348();
    __swift_project_value_buffer(v19, qword_1EADE7090);
    v20 = sub_191CC6328();
    v21 = sub_191CC6CA8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v27 = v23;
      *v22 = 136315138;
      v24 = sub_191CC76A8();
      v26 = sub_191C3B288(v24, v25, &v27);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_19197B000, v20, v21, "[%s] unexpected classification guidelines provided for hypertensive escalation", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v23);
      MEMORY[0x193B047C0](v23, -1, -1);
      MEMORY[0x193B047C0](v22, -1, -1);
    }

    return 0;
  }

  if (a4)
  {
    v8 = a4;
    v9 = [v8 integerValue];

    if (v9 >= 18)
    {
      [a2 _value];
      if (v10 > 180.0)
      {
        return 1;
      }

      [a3 _value];
      if (v11 > 120.0)
      {
        return 1;
      }
    }
  }

  return 0;
}

void __swiftcall HKBloodPressureClassificationManager.init()(HKBloodPressureClassificationManager *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

Swift::Void __swiftcall HKBloodPressureClassificationManager.keyValueDomain(didUpdate:)(HKKeyValueDomain *didUpdate)
{
  v2 = v1;
  sub_191BFAE6C(0, &qword_1EADCC5C0, 0x1E69E58C0);
  if (sub_191CC6DA8())
  {
    v3 = *&v1[OBJC_IVAR___HKBloodPressureClassificationManager_observers];
    v4 = swift_allocObject();
    *(v4 + 16) = v2;
    v7[4] = sub_191C3CB50;
    v7[5] = v4;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 1107296256;
    v7[2] = sub_191C3A138;
    v7[3] = &block_descriptor_40;
    v5 = _Block_copy(v7);
    v6 = v2;

    [v3 notifyObservers_];
    _Block_release(v5);
  }
}

uint64_t sub_191C3A138(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

__CFString *sub_191C3A200()
{
  v21[1] = *MEMORY[0x1E69E9840];
  v1 = [*(v0 + OBJC_IVAR___HKBloodPressureClassificationManager_healthStore) featureAvailabilityProviderForIdentifier_];
  if (v1)
  {
    v21[0] = 0;
    v2 = [v1 featureOnboardingRecordWithError_];
    if (v2)
    {
      v3 = v2;
      v4 = v21[0];
      v5 = [v3 onboardingCompletion];
      if (v5 && (v6 = v5, v7 = [v5 countryCode], v6, v7))
      {
        swift_unknownObjectRelease();
      }

      else
      {
        v7 = @"XX";

        swift_unknownObjectRelease();
      }

      return v7;
    }

    else
    {
      v9 = v21[0];
      v10 = sub_191CC5FC8();

      swift_willThrow();
      swift_unknownObjectRelease();
      if (qword_1EADCA160 != -1)
      {
        swift_once();
      }

      v11 = sub_191CC6348();
      __swift_project_value_buffer(v11, qword_1EADE7090);
      v12 = v10;
      v13 = sub_191CC6328();
      v14 = sub_191CC6CB8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v21[0] = v16;
        *v15 = 136315138;
        swift_getErrorValue();
        v17 = sub_191CC7468();
        v19 = sub_191C3B288(v17, v18, v21);

        *(v15 + 4) = v19;
        _os_log_impl(&dword_19197B000, v13, v14, "Blood Pressure onboarding record country code unavailable with error: %s", v15, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v16);
        MEMORY[0x193B047C0](v16, -1, -1);
        MEMORY[0x193B047C0](v15, -1, -1);
      }

      v20 = @"XX";
      return v20;
    }
  }

  else
  {

    return @"XX";
  }
}

void sub_191C3A520(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  sub_191C3D4C8(0);
  if (a3)
  {
    v5 = a3;
    sub_191CC69D8();
  }

  else
  {
    v6 = a2;
    sub_191CC69E8();
  }
}

void sub_191C3A5B8()
{
  sub_191C0850C(0, &qword_1EADCAB10, MEMORY[0x1E69E6158]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_191DD4520;
  *(v0 + 32) = sub_191CC67B8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_191CC67B8();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_191CC67B8();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_191CC67B8();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_191CC67B8();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_191CC67B8();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_191CC67B8();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_191CC67B8();
  *(v0 + 152) = v8;
  *(v0 + 160) = sub_191CC67B8();
  *(v0 + 168) = v9;
  v10 = objc_allocWithZone(HKCountrySet);
  v11 = sub_191CC68D8();

  v12 = [v10 initWithSupportedCountryCodes:v11 contentVersion:1];

  qword_1EADCB7E8 = v12;
}

void sub_191C3A718()
{
  sub_191C0850C(0, &qword_1EADCAB10, MEMORY[0x1E69E6158]);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_191DD4530;
  *(v0 + 32) = sub_191CC67B8();
  *(v0 + 40) = v1;
  *(v0 + 48) = sub_191CC67B8();
  *(v0 + 56) = v2;
  *(v0 + 64) = sub_191CC67B8();
  *(v0 + 72) = v3;
  *(v0 + 80) = sub_191CC67B8();
  *(v0 + 88) = v4;
  *(v0 + 96) = sub_191CC67B8();
  *(v0 + 104) = v5;
  *(v0 + 112) = sub_191CC67B8();
  *(v0 + 120) = v6;
  *(v0 + 128) = sub_191CC67B8();
  *(v0 + 136) = v7;
  *(v0 + 144) = sub_191CC67B8();
  *(v0 + 152) = v8;
  v9 = objc_allocWithZone(HKCountrySet);
  v10 = sub_191CC68D8();

  v11 = [v9 initWithSupportedCountryCodes:v10 contentVersion:1];

  v12 = sub_191C3BD08();
  v13 = [v11 countrySetByAddingCountriesInSet_];

  qword_1EADCB7F0 = v13;
}

uint64_t sub_191C3A8B4()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_191BFAE6C(0, &qword_1EADCA778, off_1E7375158);
  *v3 = v0;
  v3[1] = sub_191C3A9C0;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000010, 0x8000000191D2C640, sub_191C3CB60, v2, v4);
}

uint64_t sub_191C3A9C0()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_191C3D750;
  }

  else
  {

    v2 = sub_191C3D778;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_191C3AADC(uint64_t a1, void *a2)
{
  sub_191C3CFE4(0);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v6 + 16))(aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v5);
  v9 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  (*(v6 + 32))(v10 + v9, aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v5);
  v11 = objc_allocWithZone(HKMCPregnancyStateQuery);
  aBlock[4] = sub_191C3D064;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_191BFD5BC;
  aBlock[3] = &block_descriptor_92;
  v12 = _Block_copy(aBlock);

  v13 = [v11 initWithUpdateHandler_];
  _Block_release(v12);

  [a2 executeQuery_];
}

void sub_191C3ACE8(uint64_t a1, void *a2, id a3, uint64_t a4)
{
  if (a2)
  {
    sub_191C3CFE4(0);
    v6 = a2;
    sub_191CC69E8();
  }

  else
  {
    if (!a3)
    {
      v7 = [objc_opt_self() hk:0 error:0 userInfo:?];
      a3 = 0;
    }

    v8 = a3;
    sub_191C3CFE4(0);
    sub_191CC69D8();
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    [Strong stopQuery_];
  }
}

uint64_t sub_191C3AE0C()
{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = sub_191BFAE6C(0, &qword_1EADCA778, off_1E7375158);
  *v3 = v0;
  v3[1] = sub_191C3AF18;

  return MEMORY[0x1EEE6DE38](v0 + 2, 0, 0, 0xD000000000000010, 0x8000000191D2C640, sub_191C3D774, v2, v4);
}

uint64_t sub_191C3AF18()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_191C3B034;
  }

  else
  {

    v2 = sub_191BF92AC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C3B034()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_191C3B098(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_191C3B190;

  return v6(a1);
}

uint64_t sub_191C3B190()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t sub_191C3B288(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_191C3B354(v11, 0, 0, 1, a1, a2);
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
    sub_191C00E88(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_191C3B354(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_191C3B460(a5, a6);
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
    result = sub_191CC7058();
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

void *sub_191C3B460(uint64_t a1, unint64_t a2)
{
  v3 = sub_191C3B4AC(a1, a2);
  sub_191C3B5DC(&unk_1F05F6690);
  return v3;
}

void *sub_191C3B4AC(uint64_t a1, unint64_t a2)
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

  v6 = sub_191C3B6C8(v5, 0);
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

  result = sub_191CC7058();
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
        v10 = sub_191CC6808();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_191C3B6C8(v10, 0);
        result = sub_191CC6FB8();
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

uint64_t sub_191C3B5DC(uint64_t result)
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

  result = sub_191C3B740(result, v11, 1, v3);
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

void *sub_191C3B6C8(uint64_t a1, uint64_t a2)
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

  sub_191C0850C(0, &qword_1EADCB840, MEMORY[0x1E69E7508]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_191C3B740(char *result, int64_t a2, char a3, char *a4)
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
    sub_191C0850C(0, &qword_1EADCB840, MEMORY[0x1E69E7508]);
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

id sub_191C3B838(void *a1)
{
  v17 = sub_191CC6CF8();
  v3 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_191CC6CE8();
  MEMORY[0x1EEE9AC00](v6);
  v7 = sub_191CC63A8();
  MEMORY[0x1EEE9AC00](v7 - 8);
  *&v1[OBJC_IVAR___HKBloodPressureClassificationManager_healthStore] = a1;
  v8 = &v1[OBJC_IVAR___HKBloodPressureClassificationManager_pregnancyModelProvider];
  *(v8 + 3) = sub_191BFAE6C(0, &qword_1EADCB878, off_1E7375020);
  *(v8 + 4) = &protocol witness table for HKHealthStore;
  *v8 = a1;
  v9 = [objc_allocWithZone(HKKeyValueDomain) initWithCategory:4 domainName:@"com.apple.private.health.blood-pressure-classification" healthStore:a1];
  *&v1[OBJC_IVAR___HKBloodPressureClassificationManager_bloodPressureDefaultsDomain] = v9;
  v19 = sub_191C3D5A0();
  sub_191C3D604();
  v10 = sub_191CC67C8();
  v12 = HKLogDefaultCategory(v10, v11);
  v13 = objc_allocWithZone(HKObserverSet);
  v14 = sub_191CC6778();

  v15 = [v13 initWithName:v14 loggingCategory:v12];

  *&v1[OBJC_IVAR___HKBloodPressureClassificationManager_observers] = v15;
  sub_191BFAE6C(0, &qword_1EADCB890, 0x1E69E9610);
  sub_191CC6398();
  v19 = MEMORY[0x1E69E7CC0];
  sub_191C3D64C(&qword_1EADCB898, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_191C3D0F0(0, &qword_1EADCB8A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
  sub_191C3D694();
  sub_191CC6E58();
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8090], v17);
  *&v1[OBJC_IVAR___HKBloodPressureClassificationManager_observerQueue] = sub_191CC6D18();
  v18.receiver = v1;
  v18.super_class = HKBloodPressureClassificationManager;
  return objc_msgSendSuper2(&v18, sel_init);
}

void sub_191C3BBE8(uint64_t a1)
{
  if (!qword_1EADCB800)
  {
    sub_191BF92E0();
    v1 = sub_191CC69F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCB800);
    }
  }
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

{
  return sub_191C00E88(a2 + 32, a1 + 32);
}

uint64_t block_destroy_helper_14(uint64_t a1)
{
}

{
}

id sub_191C3BD08()
{
  v40 = MEMORY[0x1E69E7CC0];
  v0 = @"AT";
  v1 = @"BE";
  v2 = @"BG";
  v3 = @"HR";
  v4 = @"CY";
  v5 = @"CZ";
  v6 = @"DK";
  v7 = @"EE";
  v8 = @"FI";
  v9 = @"FR";
  v10 = @"DE";
  v11 = @"GR";
  v12 = @"HU";
  v13 = @"IE";
  v14 = @"IT";
  v15 = @"LV";
  v16 = @"LT";
  v17 = @"LU";
  v18 = @"MT";
  v19 = @"NL";
  v20 = @"PL";
  v21 = @"PT";
  v22 = @"RO";
  v23 = @"SK";
  v24 = @"SI";
  v25 = @"ES";
  v26 = @"SE";
  sub_191C07DDC(0, 27, 0);
  v27 = 32;
  v28 = v40;
  do
  {
    v29 = sub_191CC67B8();
    v41 = v28;
    v32 = *(v28 + 16);
    v31 = *(v28 + 24);
    if (v32 >= v31 >> 1)
    {
      v34 = v29;
      v35 = v30;
      sub_191C07DDC((v31 > 1), v32 + 1, 1);
      v30 = v35;
      v29 = v34;
      v28 = v41;
    }

    *(v28 + 16) = v32 + 1;
    v33 = v28 + 16 * v32;
    *(v33 + 32) = v29;
    *(v33 + 40) = v30;
    v27 += 8;
  }

  while (v27 != 248);
  type metadata accessor for HKCountryCode(0);
  swift_arrayDestroy();
  v36 = objc_allocWithZone(HKCountrySet);
  v37 = sub_191CC68D8();

  v38 = [v36 initWithSupportedCountryCodes:v37 contentVersion:1];

  return v38;
}

uint64_t _sSo36HKBloodPressureClassificationManagerC9HealthKitE07defaultC10Guidelines3forSo0abcH0VSS_tF_0(uint64_t a1, uint64_t a2)
{
  if (qword_1EADCA140 != -1)
  {
    swift_once();
  }

  v2 = qword_1EADCB7E8;
  v3 = sub_191CC6778();
  LOBYTE(v2) = [v2 containsCountryCode_];

  if (v2)
  {
    return 0;
  }

  if (qword_1EADCA148 != -1)
  {
    swift_once();
  }

  v5 = qword_1EADCB7F0;
  v6 = sub_191CC6778();
  [v5 containsCountryCode_];

  return 1;
}

uint64_t sub_191C3C1C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_191BFF960;

  return sub_191C3540C(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_191C3C294(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_191CC6148() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = v1[4];
  v12 = (v1 + v7);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v1 + v8);
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_191BFF960;

  return sub_191C36864(a1, v9, v10, v11, v1 + v6, v13, v14, v15);
}

uint64_t sub_191C3C3E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_191BFF960;

  return sub_191C38AEC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_191C3C4C4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_191C3C4D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_191C3C4E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_191BFF960;

  return sub_191C39440(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_191C3C5B8(uint64_t a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v2 = [objc_opt_self() categoriesForClassificationGuidelines:a1 error:v8];
  v3 = v8[0];
  if (v2)
  {
    v4 = v2;
    type metadata accessor for HKBloodPressureClassificationCategory(0);
    v1 = sub_191CC68E8();
    v5 = v3;
  }

  else
  {
    v6 = v8[0];
    sub_191CC5FC8();

    swift_willThrow();
  }

  return v1;
}

id sub_191C3C69C()
{
  sub_191C3D0F0(0, &unk_1EADCD110, sub_191C3D154, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4540;
  *(inited + 32) = sub_191CC67B8();
  *(inited + 40) = v1;
  v2 = @"com.apple.healthkit";
  sub_191CC6FC8();
  MEMORY[0x193B01F90](0xD000000000000036, 0x8000000191D2C790);
  v3 = sub_191CC7398();
  MEMORY[0x193B01F90](v3);

  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0;
  *(inited + 56) = 0xE000000000000000;
  sub_191C909D0(inited);
  swift_setDeallocating();
  sub_191C3D2C0(inited + 32, sub_191C3D154);
  v4 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v5 = sub_191CC6638();

  v6 = [v4 initWithDomain:v2 code:110 userInfo:v5];

  return v6;
}

__CFString *_sSo36HKBloodPressureClassificationManagerC9HealthKitE10__category3for8systolic9diastolic3ageSo0abC8CategoryaSo0abC10GuidelinesV_So10HKQuantityCANSo8NSNumberCSgtF_0(uint64_t a1, void *a2, void *a3, void *a4)
{
  if (a1 == 2 || a4 && (v7 = a4, v8 = [v7 integerValue], v7, v8 >= 18))
  {
    type metadata accessor for HKBloodPressureClassificationEvaluator();
    return static HKBloodPressureClassificationEvaluator.category(for:systolic:diastolic:)(a1, a2, a3);
  }

  else
  {
    v9 = sub_191C3C69C();
    swift_willThrow();
    if (qword_1EADCA160 != -1)
    {
      swift_once();
    }

    v11 = sub_191CC6348();
    __swift_project_value_buffer(v11, qword_1EADE7090);
    v12 = v9;
    v13 = sub_191CC6328();
    v14 = sub_191CC6C98();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136315138;
      swift_getErrorValue();
      v17 = sub_191CC7468();
      v19 = sub_191C3B288(v17, v18, &v21);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_19197B000, v13, v14, "Unable to determine blood pressure classification with error: %s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v16);
      MEMORY[0x193B047C0](v16, -1, -1);
      MEMORY[0x193B047C0](v15, -1, -1);
    }

    v20 = @"Unavailable";
    return v20;
  }
}

id sub_191C3CA88(uint64_t a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  v1 = [objc_opt_self() categoryDataForCategory:a1 error:v5];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_191CC5FC8();

    swift_willThrow();
  }

  return v1;
}

uint64_t dispatch thunk of HKBloodPressureClassificationPregnancyModelProviding.pregnancyModel()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_191C1FDFC;

  return v7(a1, a2);
}

uint64_t objectdestroy_32Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_191C3CCE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_191BFD978;

  return sub_191C39440(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_24Tm()
{
  v1 = sub_191CC6148();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_191C3CF10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_191BFD978;

  return sub_191C3540C(a1, v4, v5, v6, v7, v9, v8);
}

void sub_191C3CFE4(uint64_t a1)
{
  if (!qword_1EADCB838)
  {
    sub_191BFAE6C(255, &qword_1EADCA778, off_1E7375158);
    sub_191BF92E0();
    v1 = sub_191CC69F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCB838);
    }
  }
}

void sub_191C3D064(uint64_t a1, void *a2, void *a3)
{
  sub_191C3CFE4(0);
  v7 = *(v3 + 16);

  sub_191C3ACE8(a1, a2, a3, v7);
}

void sub_191C3D0F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_191C3D154()
{
  if (!qword_1EADCB848)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCB848);
    }
  }
}

void sub_191C3D1B8(uint64_t a1)
{
  if (!qword_1EADCB850)
  {
    type metadata accessor for HKBloodPressureClassificationGuidelines(255);
    v1 = sub_191CC69F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCB850);
    }
  }
}

void sub_191C3D220(uint64_t a1)
{
  if (!qword_1EADCB858)
  {
    type metadata accessor for HKMCPregnancyState(255);
    sub_191C3D0F0(255, &unk_1ED5EFFF0, MEMORY[0x1E6969530], MEMORY[0x1E69E6720]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCB858);
    }
  }
}

uint64_t sub_191C3D2C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_191C3D320(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_191C3D0F0(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_191C3D3A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_191C3D0F0(0, a2, a3, MEMORY[0x1E69E6720]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_191C3D410(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_191BFF960;

  return sub_191C3B098(a1, v4);
}

void sub_191C3D4C8(uint64_t a1)
{
  if (!qword_1EADCB868)
  {
    sub_191C3D538(255);
    sub_191BF92E0();
    v1 = sub_191CC69F8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCB868);
    }
  }
}

void sub_191C3D538(uint64_t a1)
{
  if (!qword_1EADCB870)
  {
    sub_191BFAE6C(255, &qword_1EADCD140, 0x1E696AD98);
    v1 = sub_191CC6DD8();
    if (!v2)
    {
      atomic_store(v1, &qword_1EADCB870);
    }
  }
}

unint64_t sub_191C3D5A0()
{
  result = qword_1EADCB880;
  if (!qword_1EADCB880)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EADCB880);
  }

  return result;
}

unint64_t sub_191C3D604()
{
  result = qword_1EADCB888;
  if (!qword_1EADCB888)
  {
    sub_191C3D5A0();
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EADCB888);
  }

  return result;
}

uint64_t sub_191C3D64C(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_191C3D694()
{
  result = qword_1EADCB8A8;
  if (!qword_1EADCB8A8)
  {
    sub_191C3D0F0(255, &qword_1EADCB8A0, MEMORY[0x1E69E8030], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB8A8);
  }

  return result;
}

HealthKit::_HKWorkoutMetricType_optional __swiftcall _HKWorkoutMetricType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

id HKWorkoutMetric.__allocating_init(type:metric:)(_BYTE *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v5[OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_type] = *a1;
  *&v5[OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_metric] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id HKWorkoutMetric.init(type:metric:)(_BYTE *a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v2[OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_type] = *a1;
  *&v2[OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_metric] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

Swift::Void __swiftcall HKWorkoutMetric.encode(with:)(NSCoder with)
{
  v3 = *(v1 + OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_type);
  v4 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeInteger:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_metric);
  v6 = sub_191CC6778();
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];
}

uint64_t HKWorkoutMetric.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  sub_191C3DB74(a1);
  v5 = v4;

  return v5;
}

uint64_t HKWorkoutMetric.init(coder:)(void *a1)
{
  sub_191C3DB74(a1);
  v3 = v2;

  return v3;
}

id HKWorkoutMetric.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HKWorkoutMetric.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_191C3DB74(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_191CC6778();
  v6 = [a1 decodeIntegerForKey_];

  if (v6 > 3)
  {
    __break(1u);
  }

  else
  {
    v2[OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_type] = v6;
    sub_191C3DD30();
    v7 = sub_191CC6D88();
    if (v7)
    {
      *&v2[OBJC_IVAR____TtC9HealthKit15HKWorkoutMetric_metric] = v7;
      v8.receiver = v2;
      v8.super_class = ObjectType;
      objc_msgSendSuper2(&v8, sel_init);
      return;
    }
  }

  __break(1u);
}

unint64_t sub_191C3DC68()
{
  result = qword_1EADCB8C0;
  if (!qword_1EADCB8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EADCB8C0);
  }

  return result;
}

unint64_t sub_191C3DD30()
{
  result = qword_1EADCB930;
  if (!qword_1EADCB930)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCB930);
  }

  return result;
}

uint64_t HKHealthStore.requestAuthorization(toShare:read:)(uint64_t a1, uint64_t a2)
{
  v3[19] = a2;
  v3[20] = v2;
  v3[18] = a1;
  sub_191C3BBE8(0);
  v3[21] = v4;
  v3[22] = *(v4 - 8);
  v3[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_191C3DE40, 0, 0);
}

uint64_t sub_191C3DE40()
{
  v1 = v0;
  v2 = v0 + 2;
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[21];
  v10 = v1[20];
  sub_191BFAE6C(0, &qword_1EADCAAD0, off_1E7375460);
  sub_191C3E29C(&qword_1EADCB9A0, &qword_1EADCAAD0, off_1E7375460);
  v6 = sub_191CC6B28();
  v1[24] = v6;
  sub_191BFAE6C(0, &qword_1EADCB9A8, off_1E73752E0);
  sub_191C3E29C(&qword_1EADCB9B0, &qword_1EADCB9A8, off_1E73752E0);
  v7 = sub_191CC6B28();
  v1[25] = v7;
  v1[2] = v1;
  v1[3] = sub_191C3E090;
  swift_continuation_init();
  v1[17] = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  sub_191BF92E0();
  sub_191CC69C8();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C349D4;
  v1[13] = &block_descriptor_13;
  [v10 requestAuthorizationToShareTypes:v6 readTypes:v7 completion:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x1EEE6DEC8](v2);
}

uint64_t sub_191C3E090()
{
  v1 = *(*v0 + 48);
  *(*v0 + 208) = v1;
  if (v1)
  {
    v2 = sub_191C3E214;
  }

  else
  {
    v2 = sub_191C3E1A0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_191C3E1A0()
{
  v1 = *(v0 + 192);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_191C3E214(uint64_t a1)
{
  v2 = v1[25];
  v3 = v1[24];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_191C3E29C(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_191BFAE6C(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id static HKBloodPressureClassificationEvaluator.category(for:systolic:diastolic:)(uint64_t a1, void *a2, void *a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = objc_opt_self();
  v7 = [v6 millimeterOfMercuryUnit];
  v8 = [a2 isCompatibleWithUnit_];

  if (!v8)
  {
    sub_191C40908();
    goto LABEL_12;
  }

  v6 = [v6 millimeterOfMercuryUnit];
  v9 = [a3 isCompatibleWithUnit_];

  if (!v9)
  {
    sub_191C407F8();
    goto LABEL_12;
  }

  v19[0] = 0;
  v10 = [swift_getObjCClassFromMetadata() categoriesForClassificationGuidelines:a1 error:v19];
  v6 = v19[0];
  if (!v10)
  {
    v17 = v19[0];
    sub_191CC5FC8();

    goto LABEL_12;
  }

  v11 = v10;
  type metadata accessor for HKBloodPressureClassificationCategory(0);
  v12 = sub_191CC68E8();
  v13 = v6;

  v14 = *(v12 + 16);
  if (!v14)
  {
LABEL_9:

    sub_191C406EC();
LABEL_12:
    swift_willThrow();
    return v6;
  }

  while (1)
  {
    if (v14 > *(v12 + 16))
    {
      __break(1u);
    }

    v19[0] = *(v12 + 8 * v14 + 24);
    v6 = v19[0];
    v15 = sub_191C3FD78(v19, a2, a3);
    if (v3)
    {

      return v6;
    }

    if (v15)
    {
      break;
    }

    --v14;

    if (!v14)
    {
      goto LABEL_9;
    }
  }

  return v6;
}

uint64_t sub_191C3E51C()
{
  sub_191C40BD0(0, &qword_1EADCB9C8, sub_191C40C24);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4750;
  v158 = inited;
  *(inited + 32) = @"AHA.Normal";
  v1 = qword_1EADCA168;
  v2 = @"AHA.Normal";
  if (v1 != -1)
  {
    swift_once();
  }

  v3 = *&qword_1EADE70A8;
  v4 = objc_opt_self();
  v5 = [v4 millimeterOfMercuryUnit];
  v6 = objc_opt_self();
  v7 = [v6 quantityWithUnit:v5 doubleValue:v3];

  v8 = [v4 millimeterOfMercuryUnit];
  v9 = [v6 quantityWithUnit:v8 doubleValue:120.0];

  v10 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v7 maximum:v9 isMinimumInclusive:1 isMaximumInclusive:0];
  v11 = *&qword_1EADE70A8;
  v12 = [v4 millimeterOfMercuryUnit];
  v13 = [v6 quantityWithUnit:v12 doubleValue:v11];

  v14 = [v4 millimeterOfMercuryUnit];
  v15 = [v6 quantityWithUnit:v14 doubleValue:80.0];

  v16 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v13 maximum:v15 isMinimumInclusive:1 isMaximumInclusive:0];
  v17 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:0 identifier:v2 systolicRange:v10 diastolicRange:v16 rangeRelationship:0];

  v158[5] = v17;
  v158[6] = @"AHA.Elevated";
  v157 = objc_opt_self();
  v18 = @"AHA.Elevated";
  v19 = [v4 millimeterOfMercuryUnit];
  v20 = [v6 quantityWithUnit:v19 doubleValue:120.0];

  v21 = [v4 millimeterOfMercuryUnit];
  v22 = [v6 quantityWithUnit:v21 doubleValue:129.0];

  v23 = [v157 inclusiveRangeWithMinimum:v20 maximum:v22];
  v24 = *&qword_1EADE70A8;
  v25 = [v4 millimeterOfMercuryUnit];
  v26 = [v6 &selRef_pints + 3];

  v27 = [v4 millimeterOfMercuryUnit];
  v28 = [v6 &selRef_pints + 3];

  v29 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v26 maximum:v28 isMinimumInclusive:1 isMaximumInclusive:0];
  v30 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:0 identifier:v18 systolicRange:v23 diastolicRange:v29 rangeRelationship:0];

  v158[7] = v30;
  v158[8] = @"AHA.HypertensionStage1";
  v31 = @"AHA.HypertensionStage1";
  v32 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v33 = [v6 &selRef_pints + 3];

  v34 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v35 = [v6 &selRef_pints + 3];

  v36 = [v157 inclusiveRangeWithMinimum:v33 maximum:v35];
  v37 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v38 = [v6 &selRef_pints + 3];

  v39 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v40 = [v6 &selRef_pints + 3];

  v41 = [v157 inclusiveRangeWithMinimum:v38 maximum:v40];
  v42 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:0 identifier:v31 systolicRange:v36 diastolicRange:v41 rangeRelationship:1];

  v158[9] = v42;
  v158[10] = @"AHA.HypertensionStage2";
  v43 = @"AHA.HypertensionStage2";
  v44 = [v4 millimeterOfMercuryUnit];
  v45 = [v6 quantityWithUnit:v44 doubleValue:140.0];

  v46 = [v4 millimeterOfMercuryUnit];
  v47 = [v6 quantityWithUnit:v46 doubleValue:1.79769313e308];

  v48 = [v157 inclusiveRangeWithMinimum:v45 maximum:v47];
  v49 = [v4 millimeterOfMercuryUnit];
  v50 = [v6 &selRef_pints + 3];

  v51 = [v4 millimeterOfMercuryUnit];
  v52 = [v6 &selRef_pints + 3];

  v53 = [v157 inclusiveRangeWithMinimum:v50 maximum:v52];
  v54 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:0 identifier:v43 systolicRange:v48 diastolicRange:v53 rangeRelationship:1];

  v158[11] = v54;
  v158[12] = @"AHA.HypertensiveCrisis";
  v55 = @"AHA.HypertensiveCrisis";
  v56 = [v4 millimeterOfMercuryUnit];
  v57 = [v6 quantityWithUnit:v56 doubleValue:180.0];

  v58 = [v4 millimeterOfMercuryUnit];
  v59 = [v6 quantityWithUnit:v58 doubleValue:1.79769313e308];

  v60 = [v157 inclusiveRangeWithMinimum:v57 maximum:v59];
  v61 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v62 = [v6 quantityWithUnit:v61 doubleValue:120.0];

  v63 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v64 = [v6 quantityWithUnit:v63 doubleValue:1.79769313e308];

  v65 = [v157 inclusiveRangeWithMinimum:v62 maximum:v64];
  v66 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:0 identifier:v55 systolicRange:v60 diastolicRange:v65 rangeRelationship:1];

  v158[13] = v66;
  v158[14] = @"ESC.NonElevated";
  v67 = *&qword_1EADE70A8;
  v68 = @"ESC.NonElevated";
  v69 = [v4 millimeterOfMercuryUnit];
  v70 = [v6 quantityWithUnit:v69 doubleValue:v67];

  v71 = [v4 millimeterOfMercuryUnit];
  v72 = [v6 quantityWithUnit:v71 doubleValue:120.0];

  v73 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v70 maximum:v72 isMinimumInclusive:1 isMaximumInclusive:0];
  v74 = *&qword_1EADE70A8;
  v75 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v76 = [v6 quantityWithUnit:v75 doubleValue:v74];

  v77 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v78 = [v6 quantityWithUnit:v77 doubleValue:70.0];

  v79 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v76 maximum:v78 isMinimumInclusive:1 isMaximumInclusive:0];
  v80 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:1 identifier:v68 systolicRange:v73 diastolicRange:v79 rangeRelationship:0];

  v158[15] = v80;
  v158[16] = @"ESC.Elevated";
  v81 = @"ESC.Elevated";
  v82 = [v4 millimeterOfMercuryUnit];
  v83 = [v6 quantityWithUnit:v82 doubleValue:120.0];

  v84 = [v4 millimeterOfMercuryUnit];
  v85 = [v6 quantityWithUnit:v84 doubleValue:139.0];

  v86 = [v157 inclusiveRangeWithMinimum:v83 maximum:v85];
  v87 = [v4 millimeterOfMercuryUnit];
  v88 = [v6 &selRef_pints + 3];

  v89 = [v4 millimeterOfMercuryUnit];
  v90 = [v6 &selRef_pints + 3];

  v91 = [v157 inclusiveRangeWithMinimum:v88 maximum:v90];
  v92 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:1 identifier:v81 systolicRange:v86 diastolicRange:v91 rangeRelationship:1];

  v158[17] = v92;
  v158[18] = @"ESC.Hypertension";
  v93 = @"ESC.Hypertension";
  v94 = [v4 millimeterOfMercuryUnit];
  v95 = [v6 quantityWithUnit:v94 doubleValue:140.0];

  v96 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v97 = [v6 quantityWithUnit:v96 doubleValue:179.0];

  v98 = [v157 inclusiveRangeWithMinimum:v95 maximum:v97];
  v99 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v100 = [v6 &selRef_pints + 3];

  v101 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v102 = [v6 &selRef_pints + 3];

  v103 = [v157 inclusiveRangeWithMinimum:v100 maximum:v102];
  v104 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:1 identifier:v93 systolicRange:v98 diastolicRange:v103 rangeRelationship:1];

  v158[19] = v104;
  v158[20] = @"ESC.HypertensiveEmergency";
  v155 = @"ESC.HypertensiveEmergency";
  v105 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v106 = [v6 quantityWithUnit:v105 doubleValue:180.0];

  v107 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v108 = [v6 quantityWithUnit:v107 doubleValue:1.79769313e308];

  v109 = [v157 inclusiveRangeWithMinimum:v106 maximum:v108];
  v110 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v111 = [v6 quantityWithUnit:v110 doubleValue:110.0];

  v112 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v113 = [v6 quantityWithUnit:v112 doubleValue:1.79769313e308];

  v114 = [v157 inclusiveRangeWithMinimum:v111 maximum:v113];
  v115 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:1 identifier:v155 systolicRange:v109 diastolicRange:v114 rangeRelationship:1];

  v158[21] = v115;
  v158[22] = @"FIGO.Normal";
  v116 = *&qword_1EADE70A8;
  v117 = @"FIGO.Normal";
  v118 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v119 = [v6 quantityWithUnit:v118 doubleValue:v116];

  v120 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v121 = [v6 quantityWithUnit:v120 doubleValue:140.0];

  v122 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v119 maximum:v121 isMinimumInclusive:1 isMaximumInclusive:0];
  v123 = *&qword_1EADE70A8;
  v124 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v125 = [v6 &selRef_pints + 3];

  v126 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v127 = [v6 &selRef_pints + 3];

  v128 = [objc_allocWithZone(HKQuantityRange) initWithMinimum:v125 maximum:v127 isMinimumInclusive:1 isMaximumInclusive:0];
  v129 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:2 identifier:v117 systolicRange:v122 diastolicRange:v128 rangeRelationship:0];

  v158[23] = v129;
  v158[24] = @"FIGO.MildlyElevated";
  v156 = @"FIGO.MildlyElevated";
  v130 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v131 = [v6 quantityWithUnit:v130 doubleValue:140.0];

  v132 = [v4 &selRef_pathForResource_ofType_inDirectory_ + 7];
  v133 = [v6 quantityWithUnit:v132 doubleValue:1.79769313e308];

  v134 = [v157 inclusiveRangeWithMinimum:v131 maximum:v133];
  v135 = [v4 millimeterOfMercuryUnit];
  v136 = [v6 &selRef_pints + 3];

  v137 = [v4 millimeterOfMercuryUnit];
  v138 = [v6 &selRef_pints + 3];

  v139 = [v157 inclusiveRangeWithMinimum:v136 maximum:v138];
  v140 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:2 identifier:v156 systolicRange:v134 diastolicRange:v139 rangeRelationship:1];

  v158[25] = v140;
  v158[26] = @"FIGO.SeverelyElevated";
  v141 = @"FIGO.SeverelyElevated";
  v142 = [v4 millimeterOfMercuryUnit];
  v143 = [v6 quantityWithUnit:v142 doubleValue:160.0];

  v144 = [v4 millimeterOfMercuryUnit];
  v145 = [v6 quantityWithUnit:v144 doubleValue:1.79769313e308];

  v146 = [v157 inclusiveRangeWithMinimum:v143 maximum:v145];
  v147 = [v4 millimeterOfMercuryUnit];
  v148 = [v6 quantityWithUnit:v147 doubleValue:110.0];

  v149 = [v4 millimeterOfMercuryUnit];
  v150 = [v6 quantityWithUnit:v149 doubleValue:1.79769313e308];

  v151 = [v157 inclusiveRangeWithMinimum:v148 maximum:v150];
  v152 = [objc_allocWithZone(HKBloodPressureClassificationCategoryData) initWithClassificationGuidelines:2 identifier:v141 systolicRange:v146 diastolicRange:v151 rangeRelationship:1];

  v158[27] = v152;
  v153 = sub_191C90EDC(v158);
  swift_setDeallocating();
  sub_191C40C24(0);
  result = swift_arrayDestroy();
  off_1EADCB9B8 = v153;
  return result;
}

uint64_t sub_191C3FD78(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v16[0] = 0;
  v6 = [swift_getObjCClassFromMetadata() categoryDataForCategory:v5 error:v16];
  if (!v6)
  {
    v14 = v16[0];
    sub_191CC5FC8();

    swift_willThrow();
    return v13 & 1;
  }

  v7 = v6;
  v8 = *&v6[OBJC_IVAR___HKBloodPressureClassificationCategoryData_systolicRange];
  v9 = v16[0];
  v10 = [v8 containsQuantity_];
  v11 = [*&v7[OBJC_IVAR___HKBloodPressureClassificationCategoryData_diastolicRange] containsQuantity_];
  v12 = [v7 rangeRelationship];
  if (v12 == 1)
  {

    v13 = v10 | v11;
    return v13 & 1;
  }

  if (!v12)
  {

    v13 = v10 & v11;
    return v13 & 1;
  }

  result = sub_191CC7118();
  __break(1u);
  return result;
}

uint64_t static HKBloodPressureClassificationEvaluator.categories(for:)(uint64_t a1)
{
  v1 = HKBloodPressureClassificationCategoryForGuidelines(a1);
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HKBloodPressureClassificationCategory(0);
    v3 = sub_191CC68E8();

    return v3;
  }

  else
  {
    sub_191C86F64();
    return swift_willThrow();
  }
}

id static HKBloodPressureClassificationEvaluator.categoryData(for:)(uint64_t a1)
{
  if (qword_1EADCA150 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = off_1EADCB9B8;
  if (*(off_1EADCB9B8 + 2))
  {
    v2 = sub_191C402C0(a1);
    if (v3)
    {
      return *(v1[7] + 8 * v2);
    }
  }

  sub_191C40A18();
  return swift_willThrow();
}

HKBloodPressureClassificationEvaluator __swiftcall HKBloodPressureClassificationEvaluator.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t sub_191C40248(uint64_t a1, uint64_t a2)
{
  sub_191CC74C8();
  sub_191CC67E8();
  v4 = sub_191CC7508();

  return sub_191C40404(a1, a2, v4);
}

unint64_t sub_191C402C0(uint64_t a1)
{
  sub_191CC67B8();
  sub_191CC74C8();
  sub_191CC67E8();
  v2 = sub_191CC7508();

  return sub_191C404BC(a1, v2);
}

unint64_t sub_191C40354(uint64_t *a1)
{
  sub_191CC74C8();
  v2 = a1[2];
  MEMORY[0x193B02C70](*a1);
  sub_191CC74E8();
  if (v2)
  {
    sub_191CC67E8();
  }

  sub_191CC67E8();
  v3 = sub_191CC7508();

  return sub_191C405C0(a1, v3);
}

unint64_t sub_191C40404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_191CC73E8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_191C404BC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_191CC67B8();
      v8 = v7;
      if (v6 == sub_191CC67B8() && v8 == v9)
      {
        break;
      }

      v11 = sub_191CC73E8();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_191C405C0(uint64_t *a1, uint64_t a2)
{
  v3 = v2 + 64;
  v4 = -1 << *(v2 + 32);
  v5 = a2 & ~v4;
  if ((*(v2 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    v7 = *a1;
    v8 = a1[2];
    v18 = a1[3];
    v19 = a1[1];
    v9 = a1[4];
    v10 = *(v2 + 48);
    do
    {
      v11 = (v10 + 40 * v5);
      if (*v11 != v7)
      {
        goto LABEL_4;
      }

      v12 = v11[2];
      v13 = v11[3];
      v14 = v11[4];
      if (v12)
      {
        if (!v8)
        {
          goto LABEL_4;
        }

        v15 = v11[1] == v19 && v12 == v8;
        if (!v15 && (sub_191CC73E8() & 1) == 0)
        {
          goto LABEL_4;
        }
      }

      else if (v8)
      {
        goto LABEL_4;
      }

      v16 = v13 == v18 && v14 == v9;
      if (v16 || (sub_191CC73E8() & 1) != 0)
      {
        return v5;
      }

LABEL_4:
      v5 = (v5 + 1) & v6;
    }

    while (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_191C406EC()
{
  type metadata accessor for HKError(0);
  sub_191C40BD0(0, &unk_1EADCD110, sub_191C3D154);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4540;
  *(inited + 32) = sub_191CC67B8();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000032;
  *(inited + 56) = 0x8000000191D2CA40;
  sub_191C909D0(inited);
  swift_setDeallocating();
  sub_191C40B74(inited + 32);
  sub_191BFC39C();
  sub_191CC5FA8();
  v2 = sub_191CC5FB8();

  return v2;
}

uint64_t sub_191C407F8()
{
  type metadata accessor for HKError(0);
  sub_191C40BD0(0, &unk_1EADCD110, sub_191C3D154);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4540;
  *(inited + 32) = sub_191CC67B8();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000034;
  *(inited + 56) = 0x8000000191D2CAE0;
  sub_191C909D0(inited);
  swift_setDeallocating();
  sub_191C40B74(inited + 32);
  sub_191BFC39C();
  sub_191CC5FA8();
  v2 = sub_191CC5FB8();

  return v2;
}

uint64_t sub_191C40908()
{
  type metadata accessor for HKError(0);
  sub_191C40BD0(0, &unk_1EADCD110, sub_191C3D154);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4540;
  *(inited + 32) = sub_191CC67B8();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000033;
  *(inited + 56) = 0x8000000191D2CB20;
  sub_191C909D0(inited);
  swift_setDeallocating();
  sub_191C40B74(inited + 32);
  sub_191BFC39C();
  sub_191CC5FA8();
  v2 = sub_191CC5FB8();

  return v2;
}

uint64_t sub_191C40A18()
{
  type metadata accessor for HKError(0);
  sub_191C40BD0(0, &unk_1EADCD110, sub_191C3D154);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_191DD4540;
  *(inited + 32) = sub_191CC67B8();
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 40) = v1;
  *(inited + 48) = 0xD000000000000032;
  *(inited + 56) = 0x8000000191D2CA00;
  sub_191C909D0(inited);
  swift_setDeallocating();
  sub_191C40B74(inited + 32);
  sub_191BFC39C();
  sub_191CC5FA8();
  v2 = sub_191CC5FB8();

  return v2;
}

unint64_t type metadata accessor for HKBloodPressureClassificationEvaluator()
{
  result = qword_1EADCB9C0;
  if (!qword_1EADCB9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EADCB9C0);
  }

  return result;
}

uint64_t sub_191C40B74(uint64_t a1)
{
  sub_191C3D154();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_191C40BD0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_191CC73A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_191C40C24(uint64_t a1)
{
  if (!qword_1EADCB9D0)
  {
    type metadata accessor for HKBloodPressureClassificationCategory(255);
    type metadata accessor for HKBloodPressureClassificationCategoryData();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EADCB9D0);
    }
  }
}

id HKWorkoutEffortRelationshipQueryDescriptor.predicate.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *HKWorkoutEffortRelationshipQueryDescriptor.anchor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

uint64_t HKWorkoutEffortRelationshipQueryDescriptor.queryAttributes.getter@<X0>(uint64_t a1@<X8>)
{
  *a1 = *(v1 + 24);
  *(a1 + 8) = *(v1 + 32);
}

__n128 HKWorkoutEffortRelationshipQueryDescriptor.queryAttributes.setter(__n128 *a1)
{
  v4 = *a1;
  v2 = a1[1].n128_u64[0];

  result = v4;
  *(v1 + 24) = v4;
  *(v1 + 40) = v2;
  return result;
}

uint64_t HKWorkoutEffortRelationshipQueryDescriptor.init(predicate:anchor:option:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  a4[4] = 0;
  a4[5] = -1;
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 0;
  return result;
}

uint64_t HKWorkoutEffortRelationshipQueryDescriptor.result(for:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 144) = a1;
  *(v3 + 152) = a2;
  v4 = v2[1];
  *(v3 + 160) = *v2;
  *(v3 + 176) = v4;
  *(v3 + 192) = v2[2];
  return MEMORY[0x1EEE6DFA0](sub_191C40E7C, 0, 0);
}

uint64_t sub_191C40E7C()
{
  v1 = v0;
  v2 = v0;
  v3 = v0 + 2;
  v4 = v0 + 10;
  v5 = v0 + 16;
  v6 = v0[24];
  v8 = v1[21];
  v7 = v1[22];
  v10 = v1[19];
  v9 = v1[20];
  v1[2] = v2;
  v1[7] = v5;
  v1[3] = sub_191C4108C;
  v11 = swift_continuation_init();
  v12 = swift_allocObject();
  *(v12 + 16) = v10;
  *(v12 + 24) = v11;
  v13 = objc_allocWithZone(HKWorkoutEffortRelationshipQuery);
  v1[14] = sub_191C412FC;
  v1[15] = v12;
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_191C41D8C;
  v1[13] = &block_descriptor_14;
  v14 = _Block_copy(v4);
  v15 = v10;
  v16 = [v13 initWithPredicate:v9 anchor:v8 options:v7 resultsHandler:v14];
  _Block_release(v14);

  if (v6)
  {

    v17 = sub_191CC6778();
  }

  else
  {
    v17 = 0;
  }

  v18 = v1[25];
  v19 = v1[19];
  [v16 setDebugIdentifier_];

  [v16 setQualityOfService_];

  [v19 executeQuery_];

  return MEMORY[0x1EEE6DEC8](v3);
}

uint64_t sub_191C4108C(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 48))
  {
    swift_willThrow();
  }

  else
  {
    **(*v1 + 144) = *(*v1 + 128);
  }

  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_191C411A0(uint64_t a1, uint64_t a2, void *a3, void *a4, id a5, uint64_t a6)
{
  [a5 stopQuery_];
  if (a2 && a3)
  {
    v10 = *(*(a6 + 64) + 40);
    *v10 = a2;
    v10[1] = a3;

    v11 = a3;

    return swift_continuation_throwingResume();
  }

  else
  {
    if (a4)
    {
      v13 = a4;
    }

    else
    {
      type metadata accessor for HKError(0);
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C41F64(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
      sub_191CC5FA8();
      v13 = v16;
    }

    sub_191BF92E0();
    swift_allocError();
    *v14 = v13;
    v15 = a4;
    return swift_continuation_throwingResumeWithError();
  }
}

uint64_t sub_191C41304(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_191BFF960;

  return HKWorkoutEffortRelationshipQueryDescriptor.result(for:)(a1, a2);
}

uint64_t HKWorkoutEffortRelationshipQueryDescriptor.Results.Iterator.next()(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  sub_191C42394(0, &qword_1EADCB9D8, MEMORY[0x1E69E87B8]);
  *v3 = v1;
  v3[1] = sub_191BFD978;

  return MEMORY[0x1EEE6DB98](a1, v4);
}

uint64_t sub_191C41478(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  sub_191C42394(0, &qword_1EADCB9D8, MEMORY[0x1E69E87B8]);
  *v3 = v1;
  v3[1] = sub_191BFF960;

  return MEMORY[0x1EEE6DB98](a1, v4);
}

uint64_t HKWorkoutEffortRelationshipQueryDescriptor.Results.makeAsyncIterator()()
{
  sub_191C42394(0, &qword_1EADCB9E0, MEMORY[0x1E69E87C8]);

  return sub_191CC6AB8();
}

uint64_t sub_191C4159C()
{
  sub_191C42394(0, &qword_1EADCB9E0, MEMORY[0x1E69E87C8]);
  sub_191CC6AB8();

  return sub_191C42284(v0);
}

uint64_t HKWorkoutEffortRelationshipQueryDescriptor.results(for:)(uint64_t a1)
{
  sub_191C42394(0, &qword_1EADCB9E8, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-v6];
  v8 = v1[1];
  v17[0] = *v1;
  v17[1] = v8;
  v17[2] = v1[2];
  v9 = swift_allocObject();
  v10 = v1[1];
  v9[1] = *v1;
  v9[2] = v10;
  v9[3] = v1[2];
  v13 = sub_191C41E68;
  v14 = v9;
  v15 = a1;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);
  sub_191C41E7C(v17, v16);
  sub_191CC6AF8();
}

id sub_191C41788(uint64_t a1, uint64_t *a2)
{
  sub_191C42394(0, &qword_1EADCA7D8, MEMORY[0x1E69E87A0]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v23[-v7 - 8];
  v9 = *a2;
  v10 = a2[1];
  v11 = a2[2];
  (*(v6 + 16))(&v23[-v7 - 8], a1, v5);
  v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v13 = swift_allocObject();
  (*(v6 + 32))(v13 + v12, v8, v5);
  v14 = objc_allocWithZone(HKWorkoutEffortRelationshipQuery);
  v27 = sub_191C422E0;
  v28 = v13;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  v25 = sub_191C41D8C;
  v26 = &block_descriptor_43;
  v15 = _Block_copy(&aBlock);
  v16 = [v14 initWithPredicate:v9 anchor:v10 options:v11 resultsHandler:v15];
  _Block_release(v15);

  aBlock = *(a2 + 3);
  v25 = a2[5];
  v17 = *(&aBlock + 1);
  if (*(&aBlock + 1))
  {
    v18 = v16;
    sub_191BFC340(&aBlock, v23);
    v17 = sub_191CC6778();
  }

  else
  {
    v19 = v16;
  }

  v20 = v25;
  [v16 setDebugIdentifier_];

  [v16 setQualityOfService_];
  sub_191BFC2EC(&aBlock);
  return v16;
}

uint64_t sub_191C419FC(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  sub_191C42394(0, &qword_1EADCBA28, MEMORY[0x1E69E8780]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v16 - v10;
  if (a2 && a3)
  {
    v17 = a2;
    v18 = a3;
    sub_191C42394(0, &qword_1EADCA7D8, MEMORY[0x1E69E87A0]);

    v12 = a3;
    sub_191CC6A88();
    return (*(v9 + 8))(v11, v8);
  }

  else
  {
    v14 = a4;
    if (!a4)
    {
      type metadata accessor for HKError(0);
      v19 = 0;
      sub_191CA212C(MEMORY[0x1E69E7CC0]);
      sub_191C41F64(&qword_1EADCD100, type metadata accessor for HKError, &unk_191DD08EC);
      sub_191CC5FA8();
      v14 = v17;
    }

    v17 = v14;
    v15 = a4;
    sub_191C42394(0, &qword_1EADCA7D8, MEMORY[0x1E69E87A0]);
    return sub_191CC6A98();
  }
}

uint64_t sub_191C41C00(uint64_t a1)
{
  sub_191C42394(0, &qword_1EADCB9E8, MEMORY[0x1E69E8798]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v12[-v6];
  v8 = v1[1];
  v17[0] = *v1;
  v17[1] = v8;
  v17[2] = v1[2];
  v9 = swift_allocObject();
  v10 = v1[1];
  v9[1] = *v1;
  v9[2] = v10;
  v9[3] = v1[2];
  v13 = sub_191C42454;
  v14 = v9;
  v15 = a1;
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8790], v4);
  sub_191C41E7C(v17, v16);
  sub_191CC6AF8();
}