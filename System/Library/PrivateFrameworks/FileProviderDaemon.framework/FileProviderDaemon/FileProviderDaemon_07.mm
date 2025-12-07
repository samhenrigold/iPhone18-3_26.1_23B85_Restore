uint64_t sub_1CF06A3F0()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = (*(*result + 256))(result);

    return v1 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1CF06A45C@<X0>(uint64_t a1@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v3 = *(*(AssociatedTypeWitness - 8) + 56);

  return v3(a1, 1, 1, AssociatedTypeWitness);
}

uint64_t sub_1CF06A504(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v12 = type metadata accessor for JobLockRule(0, a6, a9, a4);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v43 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v46 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v43 - v22;
  if (!a2)
  {
LABEL_14:
    v29 = 0xD000000000000016;
    sub_1CF657A18(0xD000000000000016, 0x80000001CFA552A0, 0, 2u);
    return v29;
  }

  if (a3)
  {
    return 0;
  }

  v43 = v21;
  if (!sub_1CF9E6DF8())
  {
LABEL_15:
    if (sub_1CF9E6DF8())
    {
      v30 = 0;
      v31 = (v13 + 8);
      v32 = v44;
      while (1)
      {
        v33 = sub_1CF9E6DC8();
        sub_1CF9E6D78();
        if (v33)
        {
          (*(v13 + 16))(v46, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v30, v12);
          v34 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_25;
          }
        }

        else
        {
          result = sub_1CF9E7998();
          if (v43 != 8)
          {
            goto LABEL_31;
          }

          v47 = result;
          (*(v13 + 16))(v46, &v47, v12);
          swift_unknownObjectRelease();
          v34 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
LABEL_25:
            __break(1u);
            return 0;
          }
        }

        (*(v13 + 32))(v32, v46, v12);
        if (sub_1CF06AA3C(v32))
        {
          break;
        }

        (*v31)(v32, v12);
        ++v30;
        if (v34 == sub_1CF9E6DF8())
        {
          return 0;
        }
      }

      v47 = 0;
      v48 = 0xE000000000000000;
      MEMORY[0x1D3868CC0](0x20656C7572, 0xE500000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x7973756220736920, 0xE800000000000000);
      v29 = v47;
      (*v31)(v32, v12);
      return v29;
    }

    return 0;
  }

  v24 = 0;
  v45 = (v13 + 16);
  v25 = (v13 + 8);
  while (1)
  {
    v26 = sub_1CF9E6DC8();
    sub_1CF9E6D78();
    if (v26)
    {
      (*(v13 + 16))(v23, a1 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v24, v12);
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        goto LABEL_13;
      }

      goto LABEL_7;
    }

    result = sub_1CF9E7998();
    if (v43 != 8)
    {
      break;
    }

    v47 = result;
    (*v45)(v23, &v47, v12);
    swift_unknownObjectRelease();
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

LABEL_7:
    (*(v13 + 32))(v19, v23, v12);
    if (sub_1CF068B74(v19))
    {
      v47 = 0;
      v48 = 0xE000000000000000;
      MEMORY[0x1D3868CC0](0x20656C7572, 0xE500000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x7973756220736920, 0xE800000000000000);
      v29 = v47;
      v35 = v48;
      sub_1CF657A18(v47, v48, 0, 2u);
      v35, v36, v37, v38, v39, v40, v41, v42;
      (*v25)(v19, v12);
      return v29;
    }

    (*v25)(v19, v12);
    ++v24;
    if (v27 == sub_1CF9E6DF8())
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1CF06AA3C(uint64_t a1)
{
  v2 = *v1;
  swift_beginAccess();
  v3 = v1[3];
  type metadata accessor for JobLockRule(255, *(v2 + 80), *(v2 + 88), v4);

  swift_getWitnessTable();
  sub_1CF9E7068();
  swift_getWitnessTable();
  v5 = sub_1CF9E6BF8();
  v3, v6, v7, v8, v9, v10, v11, v12;
  return v5 & 1;
}

unint64_t sub_1CF06AB58(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v92 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = *(v8 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v92 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v92 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v2, a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v28 = *v19;
        v29 = *(v19 + 1);
        v30 = v19[16];
        v96 = 0;
        v97 = 0xE000000000000000;
        sub_1CF9E7948();
        if (v28)
        {
          v31 = 0x6465727265666564;
        }

        else
        {
          v31 = 0;
        }

        if (v28)
        {
          v32 = 0xE900000000000020;
        }

        else
        {
          v32 = 0xE000000000000000;
        }

        MEMORY[0x1D3868CC0](v31, v32);
        v32, v33, v34, v35, v36, v37, v38, v39;
        MEMORY[0x1D3868CC0](0x7473207465736572, 0xEE00203A6D616572);
        v40 = sub_1CF953A9C(v29, v30);
        v42 = v41;
        MEMORY[0x1D3868CC0](v40);
        v42, v43, v44, v45, v46, v47, v48, v49;
        return v96;
      }

      v68 = &v19[*(swift_getTupleTypeMetadata2() + 48)];
      v69 = *v68;
      v70 = v68[8];
      (*(v10 + 32))(v15, v19, AssociatedTypeWitness);
      v96 = 0;
      v97 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0x62206E6163736572, 0xED000020776F6C65);
      swift_getAssociatedConformanceWitness();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](8250, 0xE200000000000000);
      v71 = sub_1CF953A9C(v69, v70);
      v73 = v72;
      MEMORY[0x1D3868CC0](v71);
      v73, v74, v75, v76, v77, v78, v79, v80;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        v23 = sub_1CF9E75D8();
        type metadata accessor for JobLockAggregator(255, v4, v94, v24);
        sub_1CF9E75D8();
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v93 = *(TupleTypeMetadata3 + 48);
        if (*&v19[*(TupleTypeMetadata3 + 64)])
        {
          v26 = v23;

          v27 = v93;
          if ((*(v5 + 48))(&v19[v93], 1, v4) == 1)
          {
            (*(v10 + 32))(v15, v19, AssociatedTypeWitness);
            v96 = 0;
            v97 = 0xE000000000000000;
            MEMORY[0x1D3868CC0](0x616863206D657469, 0xED0000206465676ELL);
            swift_getAssociatedConformanceWitness();
            sub_1CF9E7FE8();
            v22 = v96;
            (*(v10 + 8))(v15, AssociatedTypeWitness);
            (*(*(v26 - 8) + 8))(&v19[v27], v26);
          }

          else
          {
            (*(v5 + 32))(v7, &v19[v27], v4);
            v96 = 0;
            v97 = 0xE000000000000000;
            MEMORY[0x1D3868CC0](0x616863206D657469, 0xED0000206465676ELL);
            sub_1CF9E7FE8();
            v22 = v96;
            (*(v5 + 8))(v7, v4);
            (*(v10 + 8))(v19, AssociatedTypeWitness);
          }
        }

        else
        {
          (*(v10 + 32))(v15, v19, AssociatedTypeWitness);
          v96 = 0;
          v97 = 0xE000000000000000;
          sub_1CF9E7948();
          MEMORY[0x1D3868CC0](0xD00000000000001ALL, 0x80000001CFA464B0);
          swift_getAssociatedConformanceWitness();
          sub_1CF9E7FE8();
          v22 = v96;
          (*(v10 + 8))(v15, AssociatedTypeWitness);
          (*(*(v23 - 8) + 8))(&v19[v93], v23);
        }

        return v22;
      }

      (*(v10 + 32))(v15, v19, AssociatedTypeWitness);
      v96 = 0;
      v97 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA5A480);
      swift_getAssociatedConformanceWitness();
      sub_1CF9E7FE8();
    }

    v22 = v96;
    (*(v10 + 8))(v15, AssociatedTypeWitness);
    return v22;
  }

  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload == 6)
    {
      return 0xD000000000000035;
    }

    if (EnumCaseMultiPayload == 7)
    {
      return 0xD000000000000030;
    }

    return 0xD000000000000013;
  }

  if (EnumCaseMultiPayload == 4)
  {
    v50 = *v19;
    v96 = 0;
    v97 = 0xE000000000000000;
    sub_1CF9E7948();
    v97, v51, v52, v53, v54, v55, v56, v57;
    v96 = 0xD000000000000013;
    v97 = 0x80000001CFA5A3C0;
    v95 = v50;
    v58 = sub_1CF9E7F98();
    v60 = v59;
    MEMORY[0x1D3868CC0](v58);
    v60, v61, v62, v63, v64, v65, v66, v67;
    MEMORY[0x1D3868CC0](0x72757020746F6720, 0xEB00000000646567);
    return v96;
  }

  v81 = v19[*(swift_getTupleTypeMetadata2() + 48)];
  (*(v10 + 32))(v12, v19, AssociatedTypeWitness);
  v96 = 0;
  v97 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000012, 0x80000001CFA5A3A0);
  if (v81 > 1)
  {
    if (v81 == 2)
    {
      v82 = 0xE700000000000000;
      v83 = 0x6B6E696C6D7973;
    }

    else
    {
      v82 = 0xE500000000000000;
      v83 = 0x7361696C61;
    }
  }

  else if (v81)
  {
    v82 = 0xE300000000000000;
    v83 = 7498084;
  }

  else
  {
    v82 = 0xE300000000000000;
    v83 = 6516580;
  }

  MEMORY[0x1D3868CC0](v83, v82);
  v82, v84, v85, v86, v87, v88, v89, v90;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  v22 = v96;
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  return v22;
}

uint64_t sub_1CF06B4E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1CF9E75D8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  (*(v9 + 16))(v11, a1, v8, v17);
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    v20 = *(v9 + 8);
    v20(a1, v8);
    v20(v11, v8);
    v22 = 1;
  }

  else
  {
    (*(v12 + 32))(v19, v11, a2);
    (*(v12 + 16))(v15, v19, a2);
    sub_1CF06B77C(v15, a2, a3, a4);
    (*(v9 + 8))(a1, v8);
    (*(v12 + 8))(v19, a2);
    v22 = 0;
  }

  v23 = type metadata accessor for SnapshotItem(0, a2, a3, v21);
  return (*(*(v23 - 8) + 56))(a4, v22, 1, v23);
}

uint64_t sub_1CF06B77C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v61 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v66 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v60 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v59 - v10;
  v13 = type metadata accessor for SnapshotItem(0, a2, a3, v12);
  v14 = a4 + v13[13];
  sub_1CEFE528C(v72);
  v15 = v72[13];
  *(v14 + 192) = v72[12];
  *(v14 + 208) = v15;
  *(v14 + 224) = v72[14];
  *(v14 + 240) = v73;
  v16 = v72[9];
  *(v14 + 128) = v72[8];
  *(v14 + 144) = v16;
  v17 = v72[11];
  *(v14 + 160) = v72[10];
  *(v14 + 176) = v17;
  v18 = v72[5];
  *(v14 + 64) = v72[4];
  *(v14 + 80) = v18;
  v19 = v72[7];
  *(v14 + 96) = v72[6];
  *(v14 + 112) = v19;
  v20 = v72[1];
  *v14 = v72[0];
  *(v14 + 16) = v20;
  v21 = v72[3];
  *(v14 + 32) = v72[2];
  *(v14 + 48) = v21;
  v22 = a4 + v13[14];
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 1;
  v62 = v13;
  v63 = a4;
  v23 = a4 + v13[15];
  *v23 = 0;
  *(v23 + 8) = 0;
  *(v23 + 16) = 1;
  v24 = *(a3 + 64);
  v25 = v61;
  v24(a2, a3);
  v26 = v11;
  v27 = v25;
  v64 = v24;
  v24(a2, a3);
  v65 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v29 = AssociatedTypeWitness;
  LOBYTE(v25) = (*(AssociatedConformanceWitness + 72))(AssociatedTypeWitness, AssociatedConformanceWitness);
  v30 = *(v66 + 8);
  v31 = v26;
  v32 = v27;
  v66 += 8;
  v30(v31, v29);
  if (v25 & 1) != 0 || (v33 = v60, v64(v65, a3), v34 = (*(AssociatedConformanceWitness + 64))(v29, AssociatedConformanceWitness), v30(v33, v29), (v34))
  {
    v36 = v62;
    v35 = v63;
    v37 = v65;
    v64(v65, a3);
  }

  else
  {
    v36 = v62;
    v35 = v63;
    v37 = v65;
    (*(a3 + 72))(v65, a3);
  }

  (*(a3 + 112))(v37, a3);
  (*(a3 + 80))(v70, v37, a3);
  v38 = *(&v70[0] + 1);
  v39 = (v35 + v36[11]);
  *v39 = *&v70[0];
  v39[1] = v38;
  (*(a3 + 104))(v37, a3);
  (*(a3 + 120))(v68, v37, a3);
  v40 = *(v14 + 208);
  v70[12] = *(v14 + 192);
  v70[13] = v40;
  v70[14] = *(v14 + 224);
  v71 = *(v14 + 240);
  v41 = *(v14 + 144);
  v70[8] = *(v14 + 128);
  v70[9] = v41;
  v42 = *(v14 + 176);
  v70[10] = *(v14 + 160);
  v70[11] = v42;
  v43 = *(v14 + 80);
  v70[4] = *(v14 + 64);
  v70[5] = v43;
  v44 = *(v14 + 112);
  v70[6] = *(v14 + 96);
  v70[7] = v44;
  v45 = *(v14 + 16);
  v70[0] = *v14;
  v70[1] = v45;
  v46 = *(v14 + 48);
  v70[2] = *(v14 + 32);
  v70[3] = v46;
  sub_1CF06CF28(v70);
  v47 = v68[13];
  *(v14 + 192) = v68[12];
  *(v14 + 208) = v47;
  *(v14 + 224) = v68[14];
  *(v14 + 240) = v69;
  v48 = v68[9];
  *(v14 + 128) = v68[8];
  *(v14 + 144) = v48;
  v49 = v68[11];
  *(v14 + 160) = v68[10];
  *(v14 + 176) = v49;
  v50 = v68[5];
  *(v14 + 64) = v68[4];
  *(v14 + 80) = v50;
  v51 = v68[7];
  *(v14 + 96) = v68[6];
  *(v14 + 112) = v51;
  v52 = v68[1];
  *v14 = v68[0];
  *(v14 + 16) = v52;
  v53 = v68[3];
  *(v14 + 32) = v68[2];
  *(v14 + 48) = v53;
  (*(a3 + 136))(&v67, v37, a3);
  *(v35 + v36[16]) = v67;
  v54 = (*(a3 + 144))(v37, a3);
  v56 = v55;
  result = (*(*(v37 - 8) + 8))(v32, v37);
  v58 = (v35 + v36[17]);
  *v58 = v54;
  v58[1] = v56;
  return result;
}

void sub_1CF06BC9C(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = &selRef_initWithTarget_;
  v5 = [v1 itemVersion];
  if (v5)
  {
    v6 = v5;
    v7 = [v5 contentVersion];

    v8 = sub_1CF9E5B88();
    v80 = v9;
  }

  else
  {
    v8 = 0;
    v80 = 0xC000000000000000;
  }

  v10 = [v2 itemVersion];
  if (v10)
  {
    v11 = v10;
    v12 = [v10 equivalentContentVersions];

    v13 = sub_1CF9E6D48();
    v21 = *v13->tree;
    if (v21)
    {
      v77 = v2;
      v78 = v8;
      v81 = MEMORY[0x1E69E7CC0];
      sub_1CF06C14C(0, v21, 0);
      v22 = v81;
      anon_8 = v13[1]._anon_8;
      do
      {
        v24 = *(anon_8 - 1);
        v25 = *anon_8;
        sub_1CEFE42D4(v24, *anon_8);
        v34 = *(v81 + 16);
        v33 = *(v81 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1CF06C14C((v33 > 1), v34 + 1, 1);
        }

        anon_8 += 2;
        *(v81 + 16) = v34 + 1;
        v35 = v81 + 16 * v34;
        *(v35 + 32) = v24;
        *(v35 + 40) = v25;
        --v21;
      }

      while (v21);
      v13, v26, v27, v28, v29, v30, v31, v32;
      v2 = v77;
      v8 = v78;
    }

    else
    {
      v13, v14, v15, v16, v17, v18, v19, v20;
      v22 = MEMORY[0x1E69E7CC0];
    }

    v4 = &selRef_initWithTarget_;
  }

  else
  {
    v22 = 0;
  }

  v36 = [v2 itemVersion];
  if (v36)
  {
    v37 = v36;
    v38 = [v36 metadataVersion];

    v39 = sub_1CF9E5B88();
    v41 = v40;
  }

  else
  {
    v39 = 0;
    v41 = 0xC000000000000000;
  }

  v42 = [v2 itemVersion];
  if (v42)
  {
    v75 = v39;
    v76 = v41;
    v43 = v42;
    v44 = [v42 equivalentMetadataVersions];

    v45 = sub_1CF9E6D48();
    v53 = *v45->tree;
    if (v53)
    {
      v79 = v8;
      v74 = a1;
      v82 = MEMORY[0x1E69E7CC0];
      sub_1CF06C14C(0, v53, 0);
      v54 = v82;
      v55 = v45[1]._anon_8;
      do
      {
        v57 = *(v55 - 1);
        v56 = *v55;
        sub_1CEFE42D4(v57, *v55);
        v66 = *(v82 + 16);
        v65 = *(v82 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_1CF06C14C((v65 > 1), v66 + 1, 1);
        }

        v55 += 2;
        *(v82 + 16) = v66 + 1;
        v67 = v82 + 16 * v66;
        *(v67 + 32) = v57;
        *(v67 + 40) = v56;
        --v53;
      }

      while (v53);
      v45, v58, v59, v60, v61, v62, v63, v64;
      a1 = v74;
      v8 = v79;
      v4 = &selRef_initWithTarget_;
    }

    else
    {
      v45, v46, v47, v48, v49, v50, v51, v52;
      v54 = MEMORY[0x1E69E7CC0];
    }

    v39 = v75;
    v41 = v76;
  }

  else
  {
    v54 = 0;
  }

  v68 = [v2 v4[114]];
  if (v68 && (v69 = v68, v70 = [v68 lastEditorDeviceName], v69, v70))
  {
    v71 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v73 = v72;
  }

  else
  {
    v71 = 0;
    v73 = 0;
  }

  *a1 = v8;
  a1[1] = v80;
  a1[2] = v22;
  a1[3] = v39;
  a1[4] = v41;
  a1[5] = v54;
  a1[6] = v71;
  a1[7] = v73;
}

char *sub_1CF06C040(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2280, &qword_1CFA107C8);
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
    v10 = MEMORY[0x1E69E7CC0];
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1CF06C14C(char *a1, int64_t a2, char a3)
{
  result = sub_1CF06C040(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1CF06C190(uint64_t a1@<X8>)
{
  v2 = v1;
  v200 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1180, &unk_1CFA18170);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v176 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v7 = MEMORY[0x1EEE9AC00](v6).n128_u64[0];
  v9 = &v176 - v8;
  v10 = [v2 ownerNameComponents];
  if (v10)
  {
    v11 = v10;
    sub_1CF9E5738();

    v12 = sub_1CF9E5748();
    (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  }

  else
  {
    v13 = sub_1CF9E5748();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = [v2 preformattedOwnerName];
  if (v14)
  {
    v15 = v14;
    v16 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v18 = v17;
  }

  else
  {
    v16 = 0;
    v18 = 0;
  }

  v19 = sub_1CF06CCB8(v16, v18);
  v198 = v20;
  v199 = v19;
  v18, v20, v21, v22, v23, v24, v25, v26;
  sub_1CEFCCC44(v9, &qword_1EC4C1180, &unk_1CFA18170);
  v27 = [v2 mostRecentEditorNameComponents];
  if (v27)
  {
    v28 = v27;
    sub_1CF9E5738();

    v29 = 0;
  }

  else
  {
    v29 = 1;
  }

  v30 = sub_1CF9E5748();
  (*(*(v30 - 8) + 56))(v5, v29, 1, v30);
  v31 = [v2 preformattedMostRecentEditorName];
  if (v31)
  {
    v32 = v31;
    v33 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v35 = v34;
  }

  else
  {
    v33 = 0;
    v35 = 0;
  }

  v36 = sub_1CF06CCB8(v33, v35);
  v196 = v37;
  v197 = v36;
  v35, v37, v38, v39, v40, v41, v42, v43;
  sub_1CEFCCC44(v5, &qword_1EC4C1180, &unk_1CFA18170);
  v44 = [v2 decorations];
  if (v44)
  {
    type metadata accessor for NSFileProviderItemDecorationIdentifier(0);
    v45 = sub_1CF9E6D48();

    v53 = *v45->tree;
    if (v53)
    {
      v54 = v2;
      *&v208 = MEMORY[0x1E69E7CC0];
      sub_1CEFE95CC(0, v53, 0);
      v55 = 32;
      v44 = v208;
      do
      {
        v56 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        *&v208 = v44;
        v65 = v44[2];
        v64 = v44[3];
        if (v65 >= v64 >> 1)
        {
          v67 = v56;
          v68 = v57;
          sub_1CEFE95CC((v64 > 1), v65 + 1, 1);
          v57 = v68;
          v56 = v67;
          v44 = v208;
        }

        v44[2] = v65 + 1;
        v66 = &v44[2 * v65];
        v66[4] = v56;
        v66[5] = v57;
        v55 += 8;
        --v53;
      }

      while (v53);
      v45, v57, v58, v59, v60, v61, v62, v63;
      v2 = v54;
    }

    else
    {
      v45, v46, v47, v48, v49, v50, v51, v52;
      v44 = 0;
    }
  }

  v195 = v44;
  v69 = [v2 userInfo];
  if (v69)
  {
    v70 = v69;
    v71 = sub_1CF9E6638();

    if (*v71->tree)
    {
      v79 = objc_allocWithZone(MEMORY[0x1E69674A8]);
      v80 = sub_1CF9E6618();
      v71, v81, v82, v83, v84, v85, v86, v87;
      v88 = [v79 initWithUserInfo_];

      v89 = [v88 keys];
      v194 = sub_1CF9E6D48();

      v90 = [v88 values];
      v193 = sub_1CF9E6D48();

      goto LABEL_26;
    }

    v71, v72, v73, v74, v75, v76, v77, v78;
  }

  v193 = 0;
  v194 = 0;
LABEL_26:
  v91 = [v2 conflictingVersions];
  if (!v91)
  {
    v204 = 0;
    goto LABEL_44;
  }

  v92 = v91;
  sub_1CEFD57E0(0, &unk_1EDEAB5A0, 0x1E69674E8);
  v93 = sub_1CF9E6D48();

  if (v93 >> 62)
  {
    v101 = sub_1CF9E7818();
    if (v101)
    {
      goto LABEL_29;
    }

LABEL_43:
    v93, v94, v95, v96, v97, v98, v99, v100;
    v204 = MEMORY[0x1E69E7CC0];
    goto LABEL_44;
  }

  v101 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v101)
  {
    goto LABEL_43;
  }

LABEL_29:
  *&v208 = MEMORY[0x1E69E7CC0];
  sub_1CF680B2C(0, v101 & ~(v101 >> 63), 0);
  if (v101 < 0)
  {
    __break(1u);
    return;
  }

  v192 = v2;
  v102 = 0;
  v103 = v208;
  v104 = v93;
  v201 = v93 & 0xC000000000000001;
  v202 = v101;
  v203 = v93;
  do
  {
    v105 = v103;
    if (v201)
    {
      v106 = MEMORY[0x1D3869C30](v102, v104);
    }

    else
    {
      v106 = *(&v104[1].super.isa + v102);
    }

    v107 = v106;
    v108 = [v106 contentVersion];
    v204 = sub_1CF9E5B88();
    v110 = v109;

    v111 = [v107 metadataVersion];
    v112 = sub_1CF9E5B88();
    v114 = v113;

    v115 = [v107 lastEditorDeviceName];
    if (v115)
    {
      v116 = v115;
      v117 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v119 = v118;
    }

    else
    {

      v117 = 0;
      v119 = 0;
    }

    v103 = v105;
    *&v208 = v105;
    v126 = *(v105 + 16);
    v127 = *(v103 + 24);
    if (v126 >= v127 >> 1)
    {
      sub_1CF680B2C((v127 > 1), v126 + 1, 1);
      v103 = v208;
    }

    ++v102;
    *(v103 + 16) = v126 + 1;
    v128 = (v103 + (v126 << 6));
    v104 = v203;
    v128[4] = v204;
    v128[5] = v110;
    v128[6] = 0;
    v128[7] = v112;
    v128[8] = v114;
    v128[9] = 0;
    v128[10] = v117;
    v128[11] = v119;
  }

  while (v202 != v102);
  v204 = v103;
  v104, v104, v120, v121, v122, v123, v124, v125;
  v2 = v192;
LABEL_44:
  v203 = [v2 collaborationIdentifier];
  v202 = [v2 capabilities];
  LODWORD(v201) = [v2 isUploading];
  LODWORD(v192) = [v2 isUploaded];
  v191 = [v2 uploadingError];
  v190 = [v2 downloadingError];
  v189 = [v2 isShared];
  v188 = [v2 isTopLevelSharedItem];
  v187 = [v2 isSharedByCurrentUser];
  v186 = [v2 fp_isLastModifiedByCurrentUser];
  v129 = [v2 sharingPermissions];
  if (v129)
  {
    v130 = v129;
    v131 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v184 = v132;
    v185 = v131;
  }

  else
  {
    v184 = 0;
    v185 = 0;
  }

  v183 = [v2 isContainer];
  v182 = [v2 isContainerPristine];
  v133 = [v2 fp_appContainerBundleIdentifier];
  if (v133)
  {
    v134 = v133;
    v135 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v180 = v136;
    v181 = v135;
  }

  else
  {
    v180 = 0;
    v181 = 0;
  }

  v137 = [v2 cloudContainerIdentifier];
  if (v137)
  {
    v138 = v137;
    v139 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v178 = v140;
    v179 = v139;
  }

  else
  {
    v178 = 0;
    v179 = 0;
  }

  v141 = [v2 containerDisplayName];
  if (v141)
  {
    v142 = v141;
    v177 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v144 = v143;
  }

  else
  {
    v177 = 0;
    v144 = 0;
  }

  v145 = [v2 fp_displayName];
  if (v145)
  {
    v146 = v145;
    v147 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v149 = v148;

    *&v208 = v147;
    *(&v208 + 1) = v149;
    *&v207[0] = 58;
    *(&v207[0] + 1) = 0xE100000000000000;
    v205 = 47;
    v206 = 0xE100000000000000;
    sub_1CEFE4E68();
    v150 = sub_1CF9E7668();
    v152 = v151;
    v149, v151, v153, v154, v155, v156, v157, v158;
  }

  else
  {
    v150 = 0;
    v152 = 0;
  }

  v159 = [v2 hasUnresolvedConflicts];
  if (v159)
  {
    v160 = v159;
    v161 = [v159 BOOLValue];
  }

  else
  {
    v161 = 0;
  }

  v162 = [v2 contentPolicy];
  sub_1CF06BC9C(&v208);
  v163 = v203;

  v207[0] = v208;
  v207[1] = v209;
  v207[2] = v210;
  v207[3] = v211;
  v164 = v211;

  sub_1CEFCCC44(v207, &unk_1EC4BF250, &unk_1CFA01B50);
  *&v208 = v202;
  BYTE8(v208) = v201;
  BYTE9(v208) = v192;
  *&v209 = v191;
  *(&v209 + 1) = v190;
  LOBYTE(v210) = v189;
  BYTE1(v210) = v188;
  BYTE2(v210) = v187;
  *(&v210 + 1) = v199;
  *&v211 = v198;
  *(&v211 + 1) = v197;
  *&v212 = v196;
  BYTE8(v212) = v186;
  *&v213 = v185;
  *(&v213 + 1) = v184;
  *&v214 = v163;
  BYTE8(v214) = v183;
  BYTE9(v214) = v182;
  *&v215 = v181;
  *(&v215 + 1) = v180;
  *&v216 = v179;
  *(&v216 + 1) = v178;
  *&v217 = v177;
  *(&v217 + 1) = v144;
  *&v218 = v150;
  *(&v218 + 1) = v152;
  LOBYTE(v219) = v161;
  *(&v219 + 1) = v195;
  *&v220 = v194;
  *(&v220 + 1) = v193;
  v221 = v162;
  *v222 = v204;
  *&v222[8] = v164;
  nullsub_1();
  v165 = v221;
  v166 = *v222;
  v167 = v219;
  v168 = v200;
  *(v200 + 192) = v220;
  *(v168 + 208) = v165;
  *(v168 + 224) = v166;
  v169 = v217;
  v170 = v218;
  v171 = v215;
  *(v168 + 128) = v216;
  *(v168 + 144) = v169;
  *(v168 + 160) = v170;
  *(v168 + 176) = v167;
  v172 = v213;
  v173 = v214;
  v174 = v211;
  *(v168 + 64) = v212;
  *(v168 + 80) = v172;
  *(v168 + 240) = *&v222[16];
  *(v168 + 96) = v173;
  *(v168 + 112) = v171;
  v175 = v209;
  *v168 = v208;
  *(v168 + 16) = v175;
  *(v168 + 32) = v210;
  *(v168 + 48) = v174;
}

uint64_t sub_1CF06CCB8(uint64_t a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C1180, &unk_1CFA18170);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_1CF9E5748();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    sub_1CEFCCBDC(v2, v7, &qword_1EC4C1180, &unk_1CFA18170);
    if ((*(v9 + 48))(v7, 1, v8) == 1)
    {
      sub_1CEFCCC44(v7, &qword_1EC4C1180, &unk_1CFA18170);
      a1 = 0;
    }

    else
    {
      (*(v9 + 32))(v11, v7, v8);
      if (qword_1EC4BCCE0 != -1)
      {
        swift_once();
      }

      v12 = qword_1EC4EBCA8;
      v13 = sub_1CF9E5728();
      v14 = [v12 stringFromPersonNameComponents_];

      a1 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      (*(v9 + 8))(v11, v8);
    }
  }

  return a1;
}

uint64_t sub_1CF06CF28(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BECF0, &unk_1CF9FEEB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

FileProviderDaemon::Fields sub_1CF06CF90()
{
  v1 = [*v0 unsupportedFields];

  return Fields.init(_:)(v1);
}

FileProviderDaemon::Fields __swiftcall Fields.init(_:)(FileProviderDaemon::Fields result)
{
  v2 = (result.rawValue >> 1) & 3;
  if ((result.rawValue & 0x100) != 0)
  {
    v2 = (result.rawValue >> 1) & 3 | 0x3004;
  }

  *v1 = (16 * result.rawValue) & 0xC00 | (8 * (result.rawValue & 1)) & 0x1F | (32 * ((result.rawValue >> 3) & 7)) & 0xFFFBBFFFFFFFFFFFLL | (result.rawValue >> 1) & 0x100 | (((result.rawValue >> 10) & 1) << 46) & 0xFFFBFFFFFFFFFFFFLL | (((result.rawValue >> 31) & 1) << 50) | v2;
  return result;
}

unint64_t get_enum_tag_for_layout_string_18FileProviderDaemon11SyncabilityO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1CF06D058@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v80 = a6;
  v81 = a7;
  v77 = a5;
  LODWORD(v79) = a4;
  v78 = a3;
  v82 = a8;
  v83 = a9;
  v84 = a11;
  v13 = type metadata accessor for SnapshotItem(0, a8, a11, a4);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v76 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v74 - v20;
  v21 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v23 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v25 = &v74 - v24;
  v27 = *(v26 + 56);
  v28 = *(*(v21 - 8) + 16);
  v28(&v74 - v24, a1, v21, v23);
  (v28)(&v25[v27], a2, v21);
  v29 = *(v14 + 48);
  LODWORD(a1) = v29(v25, 1, v13);
  v30 = v29(&v25[v27], 1, v13);
  if (a1 == 1)
  {
    if (v30 == 1)
    {
      v31 = v84;
      v32 = v82;
      swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v34 = *(AssociatedConformanceWitness + 64);
      v35 = swift_checkMetadataState();
      v36 = v78;
      v37 = v34(v35, AssociatedConformanceWitness);
      if (v37)
      {
        v38 = v83;
        *v83 = 0xD00000000000001ALL;
        *(v38 + 1) = 0x80000001CFA45E10;
        v86 = v32;
        v87 = v32;
        v88 = v31;
        v89 = v31;
        type metadata accessor for ItemChange(0, &v86);
        return swift_storeEnumTagMultiPayload();
      }

      MEMORY[0x1EEE9AC00](v37);
      strcpy(&v74 - 32, "  isRecursive reason ");
      v86 = v35;
      v87 = v21;
      v88 = MEMORY[0x1E69E6370];
      v89 = MEMORY[0x1E69E6158];
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v63 = TupleTypeMetadata[12];
      v64 = TupleTypeMetadata[16];
      v65 = v83;
      v66 = &v83[TupleTypeMetadata[20]];
      (*(*(v35 - 8) + 16))(v83, v36, v35);
      (*(v14 + 56))(&v65[v63], 1, 1, v13);
      v65[v64] = v77 & 1;
      v67 = v81;
      *v66 = v80;
      v66[1] = v67;
      v86 = v32;
      v87 = v32;
      v88 = v31;
      v89 = v31;
      type metadata accessor for ItemChange(0, &v86);
    }

    else
    {
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v49 = *(TupleTypeMetadata3 + 48);
      v50 = v83;
      v51 = &v83[*(TupleTypeMetadata3 + 64)];
      (*(v14 + 32))(v83, &v25[v27], v13);
      v50[v49] = v79 & 1;
      v52 = v81;
      *v51 = v80;
      v51[1] = v52;
      v86 = v82;
      v87 = v82;
      v88 = v84;
      v89 = v84;
      type metadata accessor for ItemChange(0, &v86);
    }
  }

  else
  {
    v74 = v14;
    v39 = *(v14 + 32);
    if (v30 == 1)
    {
      v40 = v75;
      v39(v75, v25, v13);
      v79 = v39;
      v41 = v82;
      swift_getAssociatedTypeWitness();
      v42 = swift_getAssociatedConformanceWitness();
      v43 = *(v42 + 64);
      v44 = swift_checkMetadataState();
      v45 = v43(v44, v42);
      if (v45)
      {
        (*(v74 + 8))(v40, v13);
        v46 = v83;
        *v83 = 0xD00000000000001ALL;
        *(v46 + 1) = 0x80000001CFA45E10;
        v86 = v41;
        v87 = v41;
        v88 = v84;
        v89 = v84;
        type metadata accessor for ItemChange(0, &v86);
        return swift_storeEnumTagMultiPayload();
      }

      MEMORY[0x1EEE9AC00](v45);
      strcpy(&v74 - 32, "  isRecursive reason ");
      v86 = v44;
      v87 = v21;
      v88 = MEMORY[0x1E69E6370];
      v89 = MEMORY[0x1E69E6158];
      v68 = swift_getTupleTypeMetadata();
      v69 = v68[12];
      v70 = v68[16];
      v71 = v83;
      v72 = &v83[v68[20]];
      (*(*(v44 - 8) + 16))(v83, v78, v44);
      v79(&v71[v69], v40, v13);
      (*(v74 + 56))(&v71[v69], 0, 1, v13);
      v71[v70] = v77 & 1;
      v73 = v81;
      *v72 = v80;
      v72[1] = v73;
      v86 = v41;
      v87 = v41;
      v88 = v84;
      v89 = v84;
      type metadata accessor for ItemChange(0, &v86);
    }

    else
    {
      v39(v18, v25, v13);
      v53 = v76;
      v39(v76, &v25[v27], v13);
      swift_getWitnessTable();
      sub_1CF937F9C(v53);
      v55 = v84;
      if ((v79 & 1) != 0 && v85 && (v85 & 0x80000000000) == 0)
      {
        v85 |= 0x80000000000uLL;
      }

      MEMORY[0x1EEE9AC00](v54);
      strcpy(&v74 - 48, "oldItem newItem diffs reason ");
      v86 = v13;
      v87 = v13;
      v88 = &type metadata for Fields;
      v89 = MEMORY[0x1E69E6158];
      v56 = swift_getTupleTypeMetadata();
      v57 = v56[12];
      v58 = v56[16];
      v59 = v83;
      v60 = &v83[v56[20]];
      v39(v83, v18, v13);
      v39(&v59[v57], v53, v13);
      *&v59[v58] = v85;
      v61 = v81;
      *v60 = v80;
      v60[1] = v61;
      v86 = v82;
      v87 = v82;
      v88 = v55;
      v89 = v55;
      type metadata accessor for ItemChange(0, &v86);
    }
  }

  swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF06D940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for ItemMetadata(0);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a2 + 104))(a1, a2, v7);
  LOBYTE(a2) = *v9;
  result = sub_1CF06DA00(v9);
  *a3 = a2;
  return result;
}

uint64_t sub_1CF06DA00(uint64_t a1)
{
  v2 = type metadata accessor for ItemMetadata(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1CF06DA84(uint64_t result, uint64_t a2)
{
  *(result + 16) = a2;
  *(result + 24) = 2 * a2;
  return result;
}

uint64_t sub_1CF06DA94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x204553414328, 0xE600000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD00000000000001FLL, 0x80000001CFA4D770);
  v8 = sub_1CF9E7F98();
  v10 = v9;
  MEMORY[0x1D3868CC0](v8);
  v10, v11, v12, v13, v14, v15, v16, v17;
  MEMORY[0x1D3868CC0](0x204E4548540ALL, 0xE600000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4D790);
  v18 = sub_1CF9E7F98();
  v20 = v19;
  MEMORY[0x1D3868CC0](v18);
  v20, v21, v22, v23, v24, v25, v26, v27;
  MEMORY[0x1D3868CC0](0x204E4548540ALL, 0xE600000000000000);
  v28 = sub_1CF06DCFC(a1, a2);
  v30 = v29;
  MEMORY[0x1D3868CC0](v28);
  v30, v31, v32, v33, v34, v35, v36, v37;
  MEMORY[0x1D3868CC0](0x204E4548570ALL, 0xE600000000000000);
  v38 = sub_1CF9E7F98();
  v40 = v39;
  MEMORY[0x1D3868CC0](v38);
  v40, v41, v42, v43, v44, v45, v46, v47;
  MEMORY[0x1D3868CC0](0x204E4548540ALL, 0xE600000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD000000000000029, 0x80000001CFA4D7C0);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD00000000000001ELL, 0x80000001CFA4D7F0);
  return 0;
}

uint64_t sub_1CF06DCFC(uint64_t a1, uint64_t a2)
{
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x204553414328, 0xE600000000000000);
  MEMORY[0x1D3868CC0](a1, a2);
  MEMORY[0x1D3868CC0](0xD00000000000002BLL, 0x80000001CFA4D810);
  v4 = sub_1CF9E7F98();
  v6 = v5;
  MEMORY[0x1D3868CC0](v4);
  v6, v7, v8, v9, v10, v11, v12, v13;
  MEMORY[0x1D3868CC0](0x20200A4E45485420, 0xEA00000000002020);
  v14 = sub_1CF9E7F98();
  v16 = v15;
  MEMORY[0x1D3868CC0](v14);
  v16, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0x204E45485720200ALL, 0xE800000000000000);
  v24 = sub_1CF9E7F98();
  v26 = v25;
  MEMORY[0x1D3868CC0](v24);
  v26, v27, v28, v29, v30, v31, v32, v33;
  MEMORY[0x1D3868CC0](0x20200A4E45485420, 0xEA00000000002020);
  v34 = sub_1CF9E7F98();
  v36 = v35;
  MEMORY[0x1D3868CC0](v34);
  v36, v37, v38, v39, v40, v41, v42, v43;
  MEMORY[0x1D3868CC0](0x204E45485720200ALL, 0xE800000000000000);
  v44 = sub_1CF9E7F98();
  v46 = v45;
  MEMORY[0x1D3868CC0](v44);
  v46, v47, v48, v49, v50, v51, v52, v53;
  MEMORY[0x1D3868CC0](0x20200A4E45485420, 0xEA00000000002020);
  v54 = sub_1CF9E7F98();
  v56 = v55;
  MEMORY[0x1D3868CC0](v54);
  v56, v57, v58, v59, v60, v61, v62, v63;
  MEMORY[0x1D3868CC0](0x204E45485720200ALL, 0xE800000000000000);
  v64 = sub_1CF9E7F98();
  v66 = v65;
  MEMORY[0x1D3868CC0](v64);
  v66, v67, v68, v69, v70, v71, v72, v73;
  MEMORY[0x1D3868CC0](0x20200A4E45485420, 0xEE00202020202020);
  v74 = sub_1CF9E7F98();
  v76 = v75;
  MEMORY[0x1D3868CC0](v74);
  v76, v77, v78, v79, v80, v81, v82, v83;
  MEMORY[0x1D3868CC0](0x204E45485720200ALL, 0xE800000000000000);
  v84 = sub_1CF9E7F98();
  v86 = v85;
  MEMORY[0x1D3868CC0](v84);
  v86, v87, v88, v89, v90, v91, v92, v93;
  MEMORY[0x1D3868CC0](0x20200A4E45485420, 0xEE00202020202020);
  v94 = sub_1CF9E7F98();
  v96 = v95;
  MEMORY[0x1D3868CC0](v94);
  v96, v97, v98, v99, v100, v101, v102, v103;
  MEMORY[0x1D3868CC0](0xA45534C4520200ALL, 0xEC00000020202020);
  v104 = sub_1CF9E7F98();
  v106 = v105;
  MEMORY[0x1D3868CC0](v104);
  v106, v107, v108, v109, v110, v111, v112, v113;
  MEMORY[0x1D3868CC0](0x29444E45200ALL, 0xE600000000000000);
  return 0;
}

unint64_t sub_1CF06E094()
{
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = sub_1CF06E0D8();

    return v1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1CF06E0D8()
{
  v1 = *(v0 + 80);
  if ((v1 & 0x20000) != 0)
  {
    v2 = 3;
  }

  else
  {
    v2 = 1;
  }

  if ((v1 & 0x200) != 0)
  {
    return v2;
  }

  else
  {
    return (v1 & 0x20000uLL) >> 16;
  }
}

uint64_t sub_1CF06E110(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_getAssociatedTypeWitness();
  v7 = *(swift_getAssociatedConformanceWitness() + 8);
  v8 = *(v7 + 32);
  v9 = swift_checkMetadataState();
  return v8(a2, v9, v7);
}

uint64_t sub_1CF06E1CC@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v29 = a4;
  v28 = a1;
  v25 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v12 + 16);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v6, v19);
  v23 = 1;
  if ((*(v14 + 48))(v21, 1, v13) != 1)
  {
    (*(v14 + 32))(v17, v21, v13);
    v28(v17, v11);
    (*(v14 + 8))(v17, v13);
    if (v7)
    {
      return (*(v25 + 32))(v26, v11, a3);
    }

    v23 = 0;
  }

  return (*(*(v29 - 8) + 56))(a6, v23, 1);
}

uint64_t sub_1CF06E474(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = a1[1];
  result = swift_weakLoadStrong();
  if (result)
  {
    v9[0] = v5;
    v9[1] = v6;
    v8 = sub_1CF06E4F0(v9, a2, a3);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1CF06E4F0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = *a1;
  v8 = a1[1];
  v9 = *(*v4 + 632);
  v13[0] = *(*v4 + 616);
  v13[1] = v9;
  type metadata accessor for SQLJobRegistry(0, v13);
  v10 = swift_dynamicCastClass();
  if (v10 && *(*(v10 + 32) + qword_1EDEBBB18))
  {
    *&v13[0] = v7;
    *(&v13[0] + 1) = v8;

    v11 = (sub_1CF06E608(v13, a3) & 1) != 0 && sub_1CF5A7CE8(a2);
  }

  else
  {
    return 0;
  }

  return v11;
}

uint64_t sub_1CF06E608(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v59 - v7;
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v59 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v59 - v17;
  v20 = *a1;
  v19 = a1[1];
  sub_1CF06EAD4(a2, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1CEFCCC44(v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
LABEL_10:
    v52 = 0;
    return v52 & 1;
  }

  (*(v10 + 32))(v18, v8, v9);
  v60 = v20;
  v61 = v19;
  v59[4] = 47;
  v59[5] = 0xE100000000000000;
  v59[2] = 58;
  v59[3] = 0xE100000000000000;
  v57 = sub_1CEFE4E68();
  v58 = v57;
  v56[0] = MEMORY[0x1E69E6158];
  v56[1] = v57;
  sub_1CF9E7668();
  v22 = v21;
  v23 = sub_1CF9E6888();
  v22, v24, v25, v26, v27, v28, v29, v30;
  v31 = [v23 pathExtension];

  _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v33 = v32;

  v34 = sub_1CF9E6958();
  v36 = v35;
  v33, v35, v37, v38, v39, v40, v41, v42;
  v43 = objc_sync_enter(v3);
  if (v43)
  {
    MEMORY[0x1EEE9AC00](v43);
    v57 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C546C, v56, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 343);
  }

  sub_1CF360398(v3, v34, v36, &v60);
  v44 = objc_sync_exit(v3);
  if (v44)
  {
    MEMORY[0x1EEE9AC00](v44);
    v57 = v3;
    fp_preconditionFailure(_:file:line:)(sub_1CF1C5468, v56, "/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/utilities/Utilities.swift", 98, 2, 347);
  }

  v36, v45, v46, v47, v48, v49, v50, v51;
  if ((v61 & 1) != 0 || v60 < 1)
  {
    (*(v10 + 8))(v18, v9);
    goto LABEL_10;
  }

  if (v60 == 0x7FFFFFFFFFFFFFFFLL)
  {
    (*(v10 + 8))(v18, v9);
    v52 = 1;
  }

  else
  {
    sub_1CF9E5CC8();
    sub_1CF9E5C38();
    v54 = *(v10 + 8);
    v54(v12, v9);
    sub_1CF364624(&qword_1EDEAB3B8, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v55 = sub_1CF9E67E8();
    v54(v15, v9);
    v54(v18, v9);
    v52 = v55 ^ 1;
  }

  return v52 & 1;
}

uint64_t sub_1CF06EAD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1CF06EB8C(uint64_t a1)
{
  v3 = *(*v1 + 216);
  v9[0] = *(*v1 + 200);
  v9[1] = v3;
  v4 = type metadata accessor for ReconciliationMutation(0, v9);
  v5 = MEMORY[0x1EEE9AC00](v4);
  (*(v7 + 16))(v9 - v6, a1, v4, v5);
  swift_beginAccess();
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  return swift_endAccess();
}

uint64_t sub_1CF06ECB4(uint64_t a1)
{
  v3 = *(*v1 + 200);
  v10 = *(*v1 + 216);
  v11 = v3;
  v12[0] = v3;
  v12[1] = v10;
  v4 = type metadata accessor for Mutation(0, v12);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  v8 = type metadata accessor for SnapshotMutation(0, v11, v10, v7);
  (*(*(v8 - 8) + 16))(v6, a1, v8);
  swift_storeEnumTagMultiPayload();
  swift_beginAccess();
  sub_1CF9E6E58();
  sub_1CF9E6E18();
  return swift_endAccess();
}

uint64_t *sub_1CF06EDF4()
{
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  return &qword_1EDEABDE8;
}

uint64_t sub_1CF06EE90(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v42 - v6;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v42 - v10;
  v12 = *(v2 + 16);
  v12(v42 - v10, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 1)
  {
    v23 = (v12)(v4, v11, a1);
    MEMORY[0x1EEE9AC00](v23);
    strcpy(&v42[-4], "from to  reason ");
    v24 = *(a1 + 16);
    v25 = *(a1 + 24);
    v42[0] = type metadata accessor for SnapshotItem(255, v24, v25, v26);
    v42[1] = v42[0];
    v42[2] = &type metadata for Fields;
    v42[3] = MEMORY[0x1E69E6158];
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v28 = TupleTypeMetadata[12];
    v29 = *&v4[TupleTypeMetadata[16]];
    *&v4[TupleTypeMetadata[20] + 8], v30, v31, v32, v33, v34, v35, v36;
    v38 = type metadata accessor for SnapshotItem(0, v24, v25, v37);
    v39 = *(*(v38 - 8) + 8);
    v39(&v4[v28], v38);
    v39(v4, v38);
    if (!v29)
    {
      goto LABEL_6;
    }

LABEL_5:
    v40 = sub_1CF9E72C8();
    (*(v2 + 8))(v11, a1);
    return v40;
  }

  if (EnumCaseMultiPayload != 5)
  {
    goto LABEL_5;
  }

  (v12)(v7, v11, a1);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *&v7[*(TupleTypeMetadata2 + 48) + 8], v16, v17, v18, v19, v20, v21, v22;
  (*(*(AssociatedTypeWitness - 8) + 8))(v7, AssociatedTypeWitness);
LABEL_6:
  (*(v2 + 8))(v11, a1);
  return sub_1CF9E7298();
}

uint64_t sub_1CF06F1D8(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v123 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v121 = &v120 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v120 - v12;
  v15 = type metadata accessor for SnapshotItem(0, v4, v5, v14);
  v122 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v120 - v16;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v120 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 16))(v21, v2, a1, v19);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
        strcpy(&v120 - 32, "from to  reason ");
        v124 = v15;
        v125 = v15;
        v126 = &type metadata for Fields;
        v127 = MEMORY[0x1E69E6158];
        TupleTypeMetadata = swift_getTupleTypeMetadata();
        v25 = *&v21[TupleTypeMetadata[16]];
        v26 = &v21[TupleTypeMetadata[20]];
        v28 = *v26;
        v27 = *(v26 + 1);
        v29 = v122;
        (*(v122 + 32))(v17, &v21[TupleTypeMetadata[12]], v15);
        v124 = 0;
        v125 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x657461647075, 0xE600000000000000);
        swift_getWitnessTable();
        sub_1CF9E7FE8();
        MEMORY[0x1D3868CC0](0x3A736666696420, 0xE700000000000000);
        v30 = sub_1CF071470(v25);
        v32 = v31;
        MEMORY[0x1D3868CC0](v30);
        v32, v33, v34, v35, v36, v37, v38, v39;
        MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
        MEMORY[0x1D3868CC0](v28, v27);
        v27, v40, v41, v42, v43, v44, v45, v46;
        v47 = v124;
        v48 = *(v29 + 8);
        v48(v17, v15);
        v48(v21, v15);
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC4C5730, &qword_1CF9FCCE0);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v90 = v21[*(TupleTypeMetadata3 + 48)];
        v91 = &v21[*(TupleTypeMetadata3 + 64)];
        v93 = *v91;
        v92 = *(v91 + 1);
        v94 = v123;
        (*(v123 + 32))(v13, v21, AssociatedTypeWitness);
        v124 = 0;
        v125 = 0xE000000000000000;
        sub_1CF9E7948();
        MEMORY[0x1D3868CC0](0x693C6574656C6564, 0xEA00000000003A64);
        swift_getAssociatedConformanceWitness();
        sub_1CF9E7FE8();
        if (v90)
        {
          v95 = 0x6973727563657220;
        }

        else
        {
          v95 = 0;
        }

        if (v90)
        {
          v96 = 0xEA00000000006576;
        }

        else
        {
          v96 = 0xE000000000000000;
        }

        MEMORY[0x1D3868CC0](v95, v96);
        v96, v97, v98, v99, v100, v101, v102, v103;
        MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
        MEMORY[0x1D3868CC0](v93, v92);
        v92, v104, v105, v106, v107, v108, v109, v110;
        MEMORY[0x1D3868CC0](62, 0xE100000000000000);
        v47 = v124;
        (*(v94 + 8))(v13, AssociatedTypeWitness);
      }
    }

    else
    {
      v71 = &v21[*(swift_getTupleTypeMetadata2() + 48)];
      v73 = *v71;
      v72 = *(v71 + 1);
      v74 = v122;
      (*(v122 + 32))(v17, v21, v15);
      v124 = 0;
      v125 = 0xE000000000000000;
      MEMORY[0x1D3868CC0](0x747265736E69, 0xE600000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
      MEMORY[0x1D3868CC0](v73, v72);
      v72, v75, v76, v77, v78, v79, v80, v81;
      v47 = v124;
      (*(v74 + 8))(v17, v15);
    }

    return v47;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v82 = &v21[*(swift_getTupleTypeMetadata2() + 48)];
    v84 = *v82;
    v83 = *(v82 + 1);
    v85 = v123;
    v86 = v121;
    (*(v123 + 32))(v121, v21, AssociatedTypeWitness);
    v124 = 0;
    v125 = 0xE000000000000000;
    sub_1CF9E7948();
    v87 = 0x614C6574656C6564;
    v88 = 0xEE003A64693C797ALL;
LABEL_24:
    MEMORY[0x1D3868CC0](v87, v88);
    swift_getAssociatedConformanceWitness();
    sub_1CF9E7FE8();
    MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
    MEMORY[0x1D3868CC0](v84, v83);
    v83, v112, v113, v114, v115, v116, v117, v118;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v47 = v124;
    (*(v85 + 8))(v86, AssociatedTypeWitness);
    return v47;
  }

  if (EnumCaseMultiPayload != 4)
  {
    v111 = &v21[*(swift_getTupleTypeMetadata2() + 48)];
    v84 = *v111;
    v83 = *(v111 + 1);
    v85 = v123;
    v86 = v121;
    (*(v123 + 32))(v121, v21, AssociatedTypeWitness);
    v124 = 0;
    v125 = 0xE000000000000000;
    sub_1CF9E7948();
    v87 = 0x3A64693C656E6F6ELL;
    v88 = 0xE800000000000000;
    goto LABEL_24;
  }

  v49 = swift_getTupleTypeMetadata3();
  v50 = v21[*(v49 + 48)];
  v51 = &v21[*(v49 + 64)];
  v53 = *v51;
  v52 = *(v51 + 1);
  v54 = v123;
  (*(v123 + 32))(v8, v21, AssociatedTypeWitness);
  v124 = 0;
  v125 = 0xE000000000000000;
  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0xD000000000000013, 0x80000001CFA5D2E0);
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  if (v50)
  {
    v55 = 0x6973727563657220;
  }

  else
  {
    v55 = 0;
  }

  if (v50)
  {
    v56 = 0xEA00000000006576;
  }

  else
  {
    v56 = 0xE000000000000000;
  }

  MEMORY[0x1D3868CC0](v55, v56);
  v56, v57, v58, v59, v60, v61, v62, v63;
  MEMORY[0x1D3868CC0](0x3A79687720, 0xE500000000000000);
  MEMORY[0x1D3868CC0](v53, v52);
  v52, v64, v65, v66, v67, v68, v69, v70;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v47 = v124;
  (*(v54 + 8))(v8, AssociatedTypeWitness);
  return v47;
}

uint64_t sub_1CF06FB20(int *a1)
{
  v3 = (v1 + a1[13]);
  v4 = v3[13];
  v192 = v3[12];
  v193 = v4;
  v194 = v3[14];
  v195 = *(v3 + 30);
  v5 = v3[9];
  v188 = v3[8];
  v189 = v5;
  v6 = v3[11];
  v190 = v3[10];
  v191 = v6;
  v7 = v3[5];
  v184 = v3[4];
  v185 = v7;
  v8 = v3[7];
  v186 = v3[6];
  v187 = v8;
  v9 = v3[1];
  v180 = *v3;
  v181 = v9;
  v10 = v3[3];
  v182 = v3[2];
  v183 = v10;
  if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(&v180) == 1)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v175 = v192;
    v176 = v193;
    v177 = v194;
    v178 = v195;
    v171 = v188;
    v172 = v189;
    v173 = v190;
    v174 = v191;
    v167 = v184;
    v168 = v185;
    v169 = v186;
    v170 = v187;
    v164 = v181;
    v165 = v182;
    v166 = v183;
    v13 = ItemNonSyncableAttributes.description.getter();
    v15 = v14;
    *&v163 = 0x3A72747461736E20;
    *(&v163 + 1) = 0xE800000000000000;
    MEMORY[0x1D3868CC0](v13);
    v15, v16, v17, v18, v19, v20, v21, v22;
    v12 = 0xE800000000000000;
    v11 = 0x3A72747461736E20;
  }

  if (*(v1 + a1[14] + 32))
  {
    v23 = 0;
    v24 = 0xE000000000000000;
  }

  else
  {
    v25 = sub_1CF686424();
    v27 = v26;
    *&v163 = 0x3A63657220;
    *(&v163 + 1) = 0xE500000000000000;
    MEMORY[0x1D3868CC0](v25);
    v27, v28, v29, v30, v31, v32, v33, v34;
    v24 = 0xE500000000000000;
    v23 = 0x3A63657220;
  }

  if (*(v1 + a1[15] + 16))
  {
    v35 = 0;
    v36 = 0xE000000000000000;
  }

  else
  {
    v37 = sub_1CF6865D8();
    v39 = v38;
    *&v163 = 0x3A63657220;
    *(&v163 + 1) = 0xE500000000000000;
    MEMORY[0x1D3868CC0](v37);
    v39, v40, v41, v42, v43, v44, v45, v46;
    v36 = 0xE500000000000000;
    v35 = 0x3A63657220;
  }

  v47 = *(v1 + a1[16]);
  if (v47)
  {
    strcpy(&v163, " unsupported:");
    HIWORD(v163) = -4864;
    v48 = sub_1CF071470(v47);
    v50 = v49;
    MEMORY[0x1D3868CC0](v48);
    v50, v51, v52, v53, v54, v55, v56, v57;
    v58 = *(&v163 + 1);
    v158 = v163;
  }

  else
  {
    v158 = 0;
    v58 = 0xE000000000000000;
  }

  v159 = v58;
  v59 = (v1 + a1[17]);
  v60 = *v59;
  v61 = v59[1] >> 62;
  v162 = v11;
  v160 = v23;
  v161 = v24;
  if (!v61)
  {
    v62 = 1852270888;
    goto LABEL_17;
  }

  if (v61 == 1)
  {
    v62 = 1886221352;
LABEL_17:
    *&v163 = v62 & 0xFFFF0000FFFFFFFFLL | 0x3A00000000;
    *(&v163 + 1) = 0xE500000000000000;
    v63 = fpfs_tempfile_pattern_t.description.getter(v60);
    v65 = v64;
    MEMORY[0x1D3868CC0](v63);
    v65, v66, v67, v68, v69, v70, v71, v72;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v73 = 0xE500000000000000;
    v157 = v163;
    goto LABEL_19;
  }

  v157 = 0;
  v73 = 0xE000000000000000;
LABEL_19:
  v156 = v73;
  WitnessTable = swift_getWitnessTable();
  sub_1CF06D940(a1, WitnessTable, &v163);
  v75 = 47;
  if (v163 != 1)
  {
    v75 = 0;
  }

  v155 = v75;
  if (v163 == 1)
  {
    v76 = 0xE100000000000000;
  }

  else
  {
    v76 = 0xE000000000000000;
  }

  *&v163 = 0;
  *(&v163 + 1) = 0xE000000000000000;
  sub_1CF9E7948();
  v179 = v163;
  MEMORY[0x1D3868CC0](3830588, 0xE300000000000000);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](3829792, 0xE300000000000000);
  sub_1CF9E7FE8();
  MEMORY[0x1D3868CC0](574254624, 0xE400000000000000);
  v77 = sub_1CF9E6888();
  v78 = [v77 fp_obfuscatedFilename];

  v79 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  v81 = v80;

  MEMORY[0x1D3868CC0](v79, v81);
  v81, v82, v83, v84, v85, v86, v87, v88;
  MEMORY[0x1D3868CC0](v155, v76);
  v76, v89, v90, v91, v92, v93, v94, v95;
  MEMORY[0x1D3868CC0](34, 0xE100000000000000);
  MEMORY[0x1D3868CC0](v157, v156);
  v156, v96, v97, v98, v99, v100, v101, v102;
  MEMORY[0x1D3868CC0](32, 0xE100000000000000);
  v103 = sub_1CF0720C8();
  v105 = v104;
  MEMORY[0x1D3868CC0](v103);
  v105, v106, v107, v108, v109, v110, v111, v112;
  MEMORY[0x1D3868CC0](v158, v159);
  v159, v113, v114, v115, v116, v117, v118, v119;
  MEMORY[0x1D3868CC0](3831328, 0xE300000000000000);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v121 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v123 = swift_getAssociatedConformanceWitness();
  *&v163 = AssociatedTypeWitness;
  *(&v163 + 1) = v121;
  *&v164 = AssociatedConformanceWitness;
  *(&v164 + 1) = v123;
  type metadata accessor for FileItemVersion(0, &v163);
  swift_getWitnessTable();
  sub_1CF9E7FE8();
  v124 = v179;
  *&v163 = v162;
  *(&v163 + 1) = v12;
  MEMORY[0x1D3868CC0](v160, v161);
  v161, v125, v126, v127, v128, v129, v130, v131;
  MEMORY[0x1D3868CC0](v35, v36);
  v36, v132, v133, v134, v135, v136, v137, v138;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v139 = v163;
  v163 = v124;

  MEMORY[0x1D3868CC0](v139, *(&v139 + 1));
  *(&v124 + 1), v140, v141, v142, v143, v144, v145, v146;
  *(&v139 + 1), v147, v148, v149, v150, v151, v152, v153;
  return v163;
}

uint64_t ItemNonSyncableAttributes.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 9);
  v4 = v0[2];
  v5 = v0[3];
  v440 = *(v0 + 32);
  v430 = *(v0 + 33);
  v431 = *(v0 + 34);
  v427 = v0[6];
  v428 = v0[8];
  v432 = *(v0 + 72);
  v433 = v0[11];
  v434 = v0[12];
  v441 = *(v0 + 104);
  v438 = *(v0 + 105);
  v429 = v0[10];
  v435 = v0[15];
  v436 = v0[17];
  v437 = v0[19];
  v6 = v0[21];
  v7 = *(v0 + 176);
  v449 = 0x3A7061633CLL;
  v450 = 0xE500000000000000;
  if (v1)
  {
    v8 = 114;
  }

  else
  {
    v8 = 45;
  }

  v442 = v0[23];
  v443 = v0[24];
  v439 = v0[27];
  v444 = v0[26];
  v445 = v0[28];
  v446 = v0[30];
  MEMORY[0x1D3868CC0](v8, 0xE100000000000000);
  0xE100000000000000, v9, v10, v11, v12, v13, v14, v15;
  if ((v1 & 2) != 0)
  {
    v16 = 119;
  }

  else
  {
    v16 = 45;
  }

  MEMORY[0x1D3868CC0](v16, 0xE100000000000000);
  0xE100000000000000, v17, v18, v19, v20, v21, v22, v23;
  if ((v1 & 0x20) != 0)
  {
    v24 = 100;
  }

  else
  {
    v24 = 45;
  }

  MEMORY[0x1D3868CC0](v24, 0xE100000000000000);
  0xE100000000000000, v25, v26, v27, v28, v29, v30, v31;
  if ((v1 & 4) != 0)
  {
    v32 = 112;
  }

  else
  {
    v32 = 45;
  }

  MEMORY[0x1D3868CC0](v32, 0xE100000000000000);
  0xE100000000000000, v33, v34, v35, v36, v37, v38, v39;
  if ((v1 & 8) != 0)
  {
    v40 = 102;
  }

  else
  {
    v40 = 45;
  }

  MEMORY[0x1D3868CC0](v40, 0xE100000000000000);
  0xE100000000000000, v41, v42, v43, v44, v45, v46, v47;
  if ((v1 & 0x10) != 0)
  {
    v48 = 84;
  }

  else
  {
    v48 = 45;
  }

  MEMORY[0x1D3868CC0](v48, 0xE100000000000000);
  0xE100000000000000, v49, v50, v51, v52, v53, v54, v55;
  if ((v1 & 0x40) != 0)
  {
    v56 = 101;
  }

  else
  {
    v56 = 45;
  }

  MEMORY[0x1D3868CC0](v56, 0xE100000000000000);
  0xE100000000000000, v57, v58, v59, v60, v61, v62, v63;
  if ((v1 & 0x80) != 0)
  {
    v64 = 120;
  }

  else
  {
    v64 = 45;
  }

  MEMORY[0x1D3868CC0](v64, 0xE100000000000000);
  0xE100000000000000, v65, v66, v67, v68, v69, v70, v71;
  if ((*MEMORY[0x1E6967220] & ~v1) != 0)
  {
    v72 = 45;
  }

  else
  {
    v72 = 83;
  }

  MEMORY[0x1D3868CC0](v72, 0xE100000000000000);
  0xE100000000000000, v73, v74, v75, v76, v77, v78, v79;
  if (v6)
  {
    *&v451[0] = 574254112;
    *(&v451[0] + 1) = 0xE400000000000000;
    v80 = sub_1CF9E6888();
    v81 = [v80 fp_obfuscatedFilename];

    v82 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v84 = v83;

    MEMORY[0x1D3868CC0](v82, v84);
    v84, v85, v86, v87, v88, v89, v90, v91;
    MEMORY[0x1D3868CC0](34, 0xE100000000000000);
    MEMORY[0x1D3868CC0](574254112, 0xE400000000000000);
    0xE400000000000000, v92, v93, v94, v95, v96, v97, v98;
  }

  if (v7)
  {
    MEMORY[0x1D3868CC0](0x63696C666E6F6320, 0xE900000000000074);
  }

  if (v3)
  {
    MEMORY[0x1D3868CC0](980186400, 0xE400000000000000);
    v107 = sub_1CF0710C0(0, 1, 1, MEMORY[0x1E69E7CC0], v99, v100, v101, v102);
    v109 = *v107->tree;
    v108 = *v107->tester;
    if (v109 >= v108 >> 1)
    {
      v107 = sub_1CF0710C0((v108 > 1), v109 + 1, 1, v107, v103, v104, v105, v106);
    }

    *v107->tree = v109 + 1;
    v110 = v107 + 16 * v109;
    *(v110 + 4) = 0x646564616F6C7075;
    *(v110 + 5) = 0xE800000000000000;
    if (!v2)
    {
      goto LABEL_47;
    }

    goto LABEL_42;
  }

  if (v4)
  {
    v111 = 1;
  }

  else
  {
    v111 = v2;
  }

  if (v111 != 1)
  {
    goto LABEL_54;
  }

  MEMORY[0x1D3868CC0](980186400, 0xE400000000000000);
  v107 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
LABEL_42:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_1CF0710C0(0, *v107->tree + 1, 1, v107, v112, v113, v114, v115);
    }

    v117 = *v107->tree;
    v116 = *v107->tester;
    if (v117 >= v116 >> 1)
    {
      v107 = sub_1CF0710C0((v116 > 1), v117 + 1, 1, v107, v112, v113, v114, v115);
    }

    *v107->tree = v117 + 1;
    v118 = v107 + 16 * v117;
    *(v118 + 4) = 0x6E6964616F6C7075;
    *(v118 + 5) = 0xE900000000000067;
  }

LABEL_47:
  if (v4)
  {
    *&v451[0] = 0;
    *(&v451[0] + 1) = 0xE000000000000000;
    v119 = v4;
    MEMORY[0x1D3868CC0](0x28726F727265, 0xE600000000000000);
    v447[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v120 = v451[0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v107 = sub_1CF0710C0(0, *v107->tree + 1, 1, v107, v121, v122, v123, v124);
    }

    v126 = *v107->tree;
    v125 = *v107->tester;
    if (v126 >= v125 >> 1)
    {
      v107 = sub_1CF0710C0((v125 > 1), v126 + 1, 1, v107, v121, v122, v123, v124);
    }

    *v107->tree = v126 + 1;
    *(&v107[1].super.isa + v126) = v120;
  }

  *&v451[0] = v107;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CF0711CC();
  v127 = sub_1CF9E67D8();
  v129 = v128;
  v107, v128, v130, v131, v132, v133, v134, v135;
  MEMORY[0x1D3868CC0](v127, v129);
  v129, v136, v137, v138, v139, v140, v141, v142;
LABEL_54:
  if (v5)
  {
    *&v451[0] = 0;
    *(&v451[0] + 1) = 0xE000000000000000;
    v143 = v5;
    MEMORY[0x1D3868CC0](0x726F7272653A6C64, 0xE900000000000028);
    v447[0] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BE340, &unk_1CF9FEF90);
    sub_1CF9E7B58();
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    MEMORY[0x1D3868CC0](0, 0xE000000000000000);
    0xE000000000000000, v144, v145, v146, v147, v148, v149, v150;
  }

  if (!v440)
  {
    if (!v441)
    {
      goto LABEL_58;
    }

    goto LABEL_78;
  }

  MEMORY[0x1D3868CC0](0x3A64657261687320, 0xE90000000000003CLL);
  if (v430)
  {
    MEMORY[0x1D3868CC0](0x206C766C2D706F74, 0xE800000000000000);
  }

  if (v431)
  {
    MEMORY[0x1D3868CC0](0x3E656D3C3A7962, 0xE700000000000000);
    if (!v432)
    {
      goto LABEL_64;
    }

LABEL_73:
    MEMORY[0x1D3868CC0](0x3A726F7469646520, 0xEC0000003E656D3CLL);
    if (!v433)
    {
      goto LABEL_75;
    }

    goto LABEL_74;
  }

  *&v451[0] = 3832162;
  *(&v451[0] + 1) = 0xE300000000000000;
  if (v427)
  {
    v157 = sub_1CF9E6888();
    v158 = [v157 fp_obfuscatedFilename];

    v159 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v161 = v160;
  }

  else
  {
    v159 = 0x6E776F6E6B6E753CLL;
    v161 = 0xE90000000000003ELL;
  }

  MEMORY[0x1D3868CC0](v159, v161);
  v161, v176, v177, v178, v179, v180, v181, v182;
  MEMORY[0x1D3868CC0](*&v451[0], *(&v451[0] + 1));
  *(&v451[0] + 1), v183, v184, v185, v186, v187, v188, v189;
  if (v432)
  {
    goto LABEL_73;
  }

LABEL_64:
  *&v451[0] = 0x3A726F7469646520;
  *(&v451[0] + 1) = 0xE800000000000000;
  if (v428)
  {
    v152 = sub_1CF9E6888();
    v153 = [v152 fp_obfuscatedFilename];

    v154 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v156 = v155;
  }

  else
  {
    v154 = 0x6E776F6E6B6E753CLL;
    v156 = 0xE90000000000003ELL;
  }

  MEMORY[0x1D3868CC0](v154, v156);
  v156, v162, v163, v164, v165, v166, v167, v168;
  MEMORY[0x1D3868CC0](*&v451[0], *(&v451[0] + 1));
  *(&v451[0] + 1), v169, v170, v171, v172, v173, v174, v175;
  if (v433)
  {
LABEL_74:
    *&v451[0] = 3829792;
    *(&v451[0] + 1) = 0xE300000000000000;
    MEMORY[0x1D3868CC0](v429);
    MEMORY[0x1D3868CC0](3829792, 0xE300000000000000);
    0xE300000000000000, v190, v191, v192, v193, v194, v195, v196;
  }

LABEL_75:
  if (v434)
  {
    *&v451[0] = 979985184;
    *(&v451[0] + 1) = 0xE400000000000000;
    v197 = v434;
    v198 = [v197 fp_obfuscatedFilename];
    v199 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v201 = v200;

    MEMORY[0x1D3868CC0](v199, v201);
    v201, v202, v203, v204, v205, v206, v207, v208;
    MEMORY[0x1D3868CC0](979985184, 0xE400000000000000);

    0xE400000000000000, v209, v210, v211, v212, v213, v214, v215;
  }

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  if (!v441)
  {
LABEL_58:
    v151 = v442;
    if (!v442)
    {
      goto LABEL_89;
    }

    goto LABEL_87;
  }

LABEL_78:
  MEMORY[0x1D3868CC0](0x3C3A70706120, 0xE600000000000000);
  if (v435)
  {
    *&v451[0] = 0x3A656C646E7562;
    *(&v451[0] + 1) = 0xE700000000000000;
    v216 = sub_1CF9E6888();
    v217 = [v216 fp_obfuscatedDotSeparatedComponents];

    v218 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v220 = v219;

    MEMORY[0x1D3868CC0](v218, v220);
    v220, v221, v222, v223, v224, v225, v226, v227;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    MEMORY[0x1D3868CC0](0x3A656C646E7562, 0xE700000000000000);
    0xE700000000000000, v228, v229, v230, v231, v232, v233, v234;
  }

  if (v436)
  {
    *&v451[0] = 0x656E6961746E6F63;
    *(&v451[0] + 1) = 0xEA00000000003A72;
    v235 = sub_1CF9E6888();
    v236 = [v235 fp_obfuscatedDotSeparatedComponents];

    v237 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v239 = v238;

    MEMORY[0x1D3868CC0](v237, v239);
    v239, v240, v241, v242, v243, v244, v245, v246;
    MEMORY[0x1D3868CC0](32, 0xE100000000000000);
    MEMORY[0x1D3868CC0](0x656E6961746E6F63, 0xEA00000000003A72);
    0xEA00000000003A72, v247, v248, v249, v250, v251, v252, v253;
  }

  if (v437)
  {
    *&v451[0] = 0x3A79616C70736964;
    *(&v451[0] + 1) = 0xE900000000000022;
    v254 = sub_1CF9E6888();
    v255 = [v254 fp_obfuscatedFilename];

    v256 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v258 = v257;

    MEMORY[0x1D3868CC0](v256, v258);
    v258, v259, v260, v261, v262, v263, v264, v265;
    MEMORY[0x1D3868CC0](8226, 0xE200000000000000);
    MEMORY[0x1D3868CC0](0x3A79616C70736964, 0xE900000000000022);
    0xE900000000000022, v266, v267, v268, v269, v270, v271, v272;
  }

  if (v438)
  {
    MEMORY[0x1D3868CC0](0x656E697473697270, 0xE800000000000000);
  }

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v151 = v442;
  if (v442)
  {
LABEL_87:
    if (*(v151 + 16))
    {
      *&v451[0] = 0x3C3A6F63656420;
      *(&v451[0] + 1) = 0xE700000000000000;
      v447[0] = v151;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
      sub_1CF0711CC();
      v273 = sub_1CF9E67D8();
      v275 = v274;
      MEMORY[0x1D3868CC0](v273);
      v275, v276, v277, v278, v279, v280, v281, v282;
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
      MEMORY[0x1D3868CC0](0x3C3A6F63656420, 0xE700000000000000);
      0xE700000000000000, v283, v284, v285, v286, v287, v288, v289;
    }
  }

LABEL_89:
  if (v443)
  {
    v290 = objc_allocWithZone(MEMORY[0x1E69674A8]);
    v291 = sub_1CF9E6D28();
    v292 = sub_1CF9E6D28();
    v293 = [v290 initWithKeys:v291 values:v292];

    v294 = [v293 keys];
    v295 = sub_1CF9E6D48();

    v296 = *v295->tree;
    v295, v297, v298, v299, v300, v301, v302, v303;
    if (v296)
    {
      *&v451[0] = 0x666E497265737520;
      *(&v451[0] + 1) = 0xEB000000003C3A6FLL;
      v304 = [v293 keys];
      v305 = sub_1CF9E6D48();

      v306 = *v305->tree;
      v305, v307, v308, v309, v310, v311, v312, v313;
      v447[0] = v306;
      v314 = sub_1CF9E7F98();
      v316 = v315;
      MEMORY[0x1D3868CC0](v314);
      v316, v317, v318, v319, v320, v321, v322, v323;
      MEMORY[0x1D3868CC0](0x3E7379656B20, 0xE600000000000000);
      MEMORY[0x1D3868CC0](0x666E497265737520, 0xEB000000003C3A6FLL);

      0xEB000000003C3A6FLL, v324, v325, v326, v327, v328, v329, v330;
    }

    else
    {
    }
  }

  if (v444 == 501)
  {
LABEL_96:
    *&v451[0] = 980443936;
    *(&v451[0] + 1) = 0xE400000000000000;
    v331 = NSFileProviderContentPolicy.description.getter(v444);
    v333 = v332;
    MEMORY[0x1D3868CC0](v331);
    v333, v334, v335, v336, v337, v338, v339, v340;
    MEMORY[0x1D3868CC0](40, 0xE100000000000000);
    v341 = NSFileProviderContentPolicy.description.getter(v439);
    v343 = v342;
    MEMORY[0x1D3868CC0](v341);
    v343, v344, v345, v346, v347, v348, v349, v350;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    goto LABEL_98;
  }

  if (!v444)
  {
    if (!v439)
    {
      MEMORY[0x1D3868CC0](0x747379733A706320, 0xEA00000000006D65);
      if (!v445)
      {
        goto LABEL_105;
      }

      goto LABEL_99;
    }

    goto LABEL_96;
  }

  *&v451[0] = 980443936;
  *(&v451[0] + 1) = 0xE400000000000000;
  v351 = NSFileProviderContentPolicy.description.getter(v444);
  v353 = v352;
  MEMORY[0x1D3868CC0](v351);
  v353, v354, v355, v356, v357, v358, v359, v360;
LABEL_98:
  MEMORY[0x1D3868CC0](*&v451[0], *(&v451[0] + 1));
  *(&v451[0] + 1), v361, v362, v363, v364, v365, v366, v367;
  if (!v445)
  {
    goto LABEL_105;
  }

LABEL_99:
  v368 = *(v445 + 16);
  if (v368)
  {
    v448 = MEMORY[0x1E69E7CC0];
    sub_1CEFE95CC(0, v368, 0);
    v369 = v448;
    v370 = (v445 + 32);
    do
    {
      v371 = *v370;
      v372 = v370[1];
      v373 = v370[3];
      v451[2] = v370[2];
      v451[3] = v373;
      v451[0] = v371;
      v451[1] = v372;
      sub_1CF6809C8(v451, v447);
      v374 = sub_1CF680318();
      v376 = v375;
      sub_1CF680A38(v451);
      v448 = v369;
      v378 = *(v369 + 16);
      v377 = *(v369 + 24);
      if (v378 >= v377 >> 1)
      {
        sub_1CEFE95CC((v377 > 1), v378 + 1, 1);
        v369 = v448;
      }

      *(v369 + 16) = v378 + 1;
      v379 = v369 + 16 * v378;
      *(v379 + 32) = v374;
      *(v379 + 40) = v376;
      v370 += 4;
      --v368;
    }

    while (v368);
    v447[0] = v369;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CF0711CC();
    v380 = sub_1CF9E67D8();
    v382 = v381;

    strcpy(v447, " conflicts:<");
    BYTE5(v447[1]) = 0;
    HIWORD(v447[1]) = -5120;
    MEMORY[0x1D3868CC0](v380, v382);
    v382, v383, v384, v385, v386, v387, v388, v389;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v390 = v447[1];
    MEMORY[0x1D3868CC0](v447[0], v447[1]);
    v390, v391, v392, v393, v394, v395, v396, v397;
  }

LABEL_105:
  if (v446)
  {
    strcpy(v447, " device:<");
    WORD1(v447[1]) = 0;
    HIDWORD(v447[1]) = -385875968;
    v398 = sub_1CF9E6888();
    v399 = [v398 fp_obfuscatedFilename];

    v400 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v402 = v401;

    MEMORY[0x1D3868CC0](v400, v402);
    v402, v403, v404, v405, v406, v407, v408, v409;
    MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    v410 = v447[1];
    MEMORY[0x1D3868CC0](v447[0], v447[1]);
    v410, v411, v412, v413, v414, v415, v416, v417;
  }

  v418 = v450;
  v447[0] = v449;
  v447[1] = v450;

  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v418, v419, v420, v421, v422, v423, v424, v425;
  return v447[0];
}

_TtC18FileProviderDaemon8FSTester *sub_1CF0710C0(_TtC18FileProviderDaemon8FSTester *result, int64_t a2, int64_t a3, _TtC18FileProviderDaemon8FSTester *a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  v9 = result;
  if (a3)
  {
    v10 = *a4->tester;
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = *a4->tree;
  if (v11 <= v12)
  {
    v13 = *a4->tree;
  }

  else
  {
    v13 = v11;
  }

  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C11D0, &unk_1CF9FE760);
    v14 = swift_allocObject();
    v15 = _swift_stdlib_malloc_size(v14);
    v16 = v15 - 32;
    if (v15 < 32)
    {
      v16 = v15 - 17;
    }

    *v14->tree = v12;
    *v14->tester = 2 * (v16 >> 4);
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC0];
  }

  v17 = &v14[1];
  v18 = &a4[1];
  if (v9)
  {
    if (v14 != a4 || v17 >= &v18[16 * v12])
    {
      memmove(v17, v18, 16 * v12);
    }

    *a4->tree = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  a4, v18, a3, a4, a5, a6, a7, a8;
  return v14;
}

unint64_t sub_1CF0711CC()
{
  result = qword_1EDEAB670;
  if (!qword_1EDEAB670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEAB670);
  }

  return result;
}

uint64_t NSFileProviderContentPolicy.description.getter(uint64_t a1)
{
  result = 0x6574697265686E69;
  if (a1 <= 500)
  {
    if (a1 <= 1)
    {
      if (!a1)
      {
        return result;
      }

      if (a1 == 1)
      {
        return 2038063468;
      }
    }

    else
    {
      switch(a1)
      {
        case 2:
          return 0x7463697665;
        case 3:
          return 0x6E776F447065656BLL;
        case 500:
          return 0x63617073656D616ELL;
      }
    }

LABEL_27:
    strcpy(v13, "unsupported(");
    v3 = sub_1CF9E7F98();
    v5 = v4;
    MEMORY[0x1D3868CC0](v3);
    v5, v6, v7, v8, v9, v10, v11, v12;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    return v13[0];
  }

  if (a1 > 1000)
  {
    switch(a1)
    {
      case 1001:
        return 0x63617073656D616ELL;
      case 1002:
        return 0xD000000000000016;
      case 1003:
        return 0xD00000000000001ELL;
    }

    goto LABEL_27;
  }

  if (a1 != 501)
  {
    if (a1 == 502)
    {
      return 0xD000000000000014;
    }

    if (a1 == 1000)
    {
      return 0x63617073656D616ELL;
    }

    goto LABEL_27;
  }

  if (fpfs_supports_indexAllRemoteItems())
  {
    return 0x6574697265686E69;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_1CF071470(uint64_t a1)
{
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  if ((qword_1EDEABDE8 & ~a1) != 0)
  {
    result = 0;
    v3 = 0xE000000000000000;
    if (!a1)
    {
      return result;
    }
  }

  else
  {
    result = 7105633;
    v3 = 0xE300000000000000;
    a1 &= ~qword_1EDEABDE8;
    if (!a1)
    {
      return result;
    }
  }

  v41 = result;
  v42 = MEMORY[0x1E69E7CC0];
  sub_1CEFE95CC(0, 0, 0);
  v4 = v42;
  do
  {
    v5 = a1 & -a1;
    v6 = Fields.bitDescription.getter();
    if (!v7)
    {
      sub_1CF056E98();
      v8 = sub_1CF9E6B28();
      v10 = v9;
      MEMORY[0x1D3868CC0](v8);
      v10, v11, v12, v13, v14, v15, v16, v17;
      v6 = 30768;
      v7 = 0xE200000000000000;
    }

    v43 = v4;
    v19 = *(v4 + 16);
    v18 = *(v4 + 24);
    if (v19 >= v18 >> 1)
    {
      v40 = v6;
      v22 = v7;
      sub_1CEFE95CC((v18 > 1), v19 + 1, 1);
      v7 = v22;
      v6 = v40;
      v4 = v43;
    }

    *(v4 + 16) = v19 + 1;
    v20 = v4 + 16 * v19;
    *(v20 + 32) = v6;
    *(v20 + 40) = v7;
    v21 = a1 == v5;
    a1 ^= v5;
  }

  while (!v21);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFCCCEC(&qword_1EDEAB670, &unk_1EC4C4BE0, &unk_1CF9FEE90, MEMORY[0x1E69E6310]);
  v23 = sub_1CF9E67D8();
  v25 = v24;

  if ((v3 & 0x300000000000000) != 0)
  {

    MEMORY[0x1D3868CC0](124, 0xE100000000000000);
    MEMORY[0x1D3868CC0](v23, v25);
    v25, v33, v34, v35, v36, v37, v38, v39;
    v23 = v41;
  }

  v3, v26, v27, v28, v29, v30, v31, v32;
  return v23;
}

uint64_t Fields.bitDescription.getter()
{
  v1 = *v0;
  if (qword_1EDEABDE0 != -1)
  {
    swift_once();
  }

  if (qword_1EDEABDE8 == v1)
  {
    return 7105633;
  }

  if (qword_1EDEA4788 != -1)
  {
    swift_once();
  }

  if (qword_1EDEBB6B0 == v1)
  {
    return 0x70662D6C6C61;
  }

  result = 0;
  if (v1 > 0xFFFFFFF)
  {
    if (v1 > 0x7FFFFFFFFFFLL)
    {
      if (v1 <= 0x3FFFFFFFFFFFFLL)
      {
        if (v1 <= 0x3FFFFFFFFFFFLL)
        {
          switch(v1)
          {
            case 0x80000000000:
              return 0x6165726C4179616DLL;
            case 0x100000000000:
              return 0x746F6F72636E7973;
            case 0x200000000000:
              return 0x6567616B636170;
          }

          return result;
        }

        if (v1 <= 0xFFFFFFFFFFFFLL)
        {
          if (v1 == 0x400000000000)
          {
            return 0x43646E4165707974;
          }

          if (v1 == 0x800000000000)
          {
            return 0x6E756F436B6E696CLL;
          }

          return result;
        }

        if (v1 != 0x1000000000000)
        {
          if (v1 == 0x2000000000000)
          {
            return 0x50746E65746E6F63;
          }

          return result;
        }

        return 0xD000000000000017;
      }

      if (v1 <= 0x1FFFFFFFFFFFFFLL)
      {
        if (v1 != 0x4000000000000)
        {
          if (v1 == 0x8000000000000)
          {
            return 0xD000000000000014;
          }

          if (v1 == 0x10000000000000)
          {
            return 0x6465686361746564;
          }

          return result;
        }

        return 0xD000000000000013;
      }

      if (v1 <= 0xFFFFFFFFFFFFFFLL)
      {
        if (v1 == 0x20000000000000)
        {
          return 0x73756150636E7973;
        }

        if (v1 != 0x40000000000000)
        {
          return result;
        }

        return 0xD000000000000020;
      }

      if (v1 == 0x100000000000000)
      {
        return 0x6E6F697463697665;
      }

      if (v1 != 0x400000000000000)
      {
        return result;
      }
    }

    else
    {
      if (v1 <= 0x7FFFFFFFFLL)
      {
        if (v1 > 0x7FFFFFFF)
        {
          if (v1 > 0x1FFFFFFFFLL)
          {
            if (v1 == 0x200000000)
            {
              return 0xD00000000000001CLL;
            }

            if (v1 == 0x400000000)
            {
              return 0xD000000000000018;
            }

            return result;
          }

          if (v1 == 0x80000000)
          {
            return 0x6961746E6F437369;
          }

          if (v1 != 0x100000000)
          {
            return result;
          }

          return 0xD000000000000013;
        }

        if (v1 != 0x10000000)
        {
          if (v1 != 0x20000000)
          {
            if (v1 == 0x40000000)
            {
              return 0xD000000000000012;
            }

            return result;
          }

          return 0xD000000000000017;
        }

        return 0xD000000000000020;
      }

      if (v1 > 0x3FFFFFFFFFLL)
      {
        if (v1 > 0xFFFFFFFFFFLL)
        {
          if (v1 == 0x10000000000)
          {
            return 1684957547;
          }

          else if (v1 == 0x20000000000)
          {
            return 0x7275746375727473;
          }
        }

        else if (v1 == 0x4000000000)
        {
          return 0x6F6365446D657469;
        }

        else if (v1 == 0x8000000000)
        {
          return 0x6F666E4972657375;
        }

        return result;
      }

      if (v1 == 0x800000000)
      {
        return 0xD000000000000014;
      }

      if (v1 == 0x1000000000)
      {
        return 0x4E79616C70736964;
      }

      if (v1 != 0x2000000000)
      {
        return result;
      }
    }

    return 0xD000000000000016;
  }

  if (v1 < 0x4000)
  {
    if (v1 > 127)
    {
      if (v1 <= 1023)
      {
        switch(v1)
        {
          case 128:
            return 0x657469726F766166;
          case 256:
            return 0x737274746178;
          case 512:
            return 0x64656B636F6CLL;
        }
      }

      else if (v1 > 4095)
      {
        if (v1 == 4096)
        {
          return 0x6E6564646968;
        }

        else if (v1 == 0x2000)
        {
          return 0x6564646948747865;
        }
      }

      else if (v1 == 1024)
      {
        return 0x656D697462;
      }

      else if (v1 == 2048)
      {
        return 0x656D69746DLL;
      }
    }

    else
    {
      if (v1 > 7)
      {
        if (v1 > 31)
        {
          if (v1 == 32)
          {
            return 0x646573557473616CLL;
          }

          else if (v1 == 64)
          {
            return 1936154996;
          }
        }

        else if (v1 == 8)
        {
          return 0x746E65746E6F63;
        }

        else if (v1 == 16)
        {
          return 0x7373656C61746164;
        }

        return result;
      }

      switch(v1)
      {
        case 1:
          return 0x656D616E656C6966;
        case 2:
          return 0x4449746E65726170;
        case 4:
          return 0xD000000000000010;
      }
    }

    return result;
  }

  if (v1 >= 0x200000)
  {
    if (v1 <= 0xFFFFFF)
    {
      switch(v1)
      {
        case 0x200000:
          return 0x6E6964616F6C7075;
        case 0x400000:
          return 0xD000000000000010;
        case 0x800000:
          return 0x65726F6E6769;
      }
    }

    else if (v1 > 0x3FFFFFF)
    {
      if (v1 == 0x4000000 || v1 == 0x8000000)
      {
        return 0xD000000000000015;
      }
    }

    else if (v1 == 0x1000000)
    {
      return 0x6465726168537369;
    }

    else if (v1 == 0x2000000)
    {
      return 0xD000000000000014;
    }

    return result;
  }

  if (v1 >= 0x20000)
  {
    if (v1 >= 0x80000)
    {
      if (v1 == 0x80000 || v1 == 0x100000)
      {
        return 0x64616F6C70557369;
      }
    }

    else if (v1 == 0x20000)
    {
      return 0x64656E6E6970;
    }

    else if (v1 == 0x40000)
    {
      return 0x696C696261706163;
    }

    return result;
  }

  switch(v1)
  {
    case 0x4000:
      return 0x6572646C6968636ELL;
    case 0x8000:
      return 0x7272757365527369;
    case 0x10000:
      return 0x6E6F697463697665;
  }

  return result;
}

uint64_t sub_1CF0720C8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v296 - v3;
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v296 = &v296 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*v0 > 1u)
  {
    if (*v0 != 2)
    {
      v300 = 0x7361696C61;
      v10 = 0xE500000000000000;
      goto LABEL_11;
    }

    v9 = 7040620;
  }

  else if (*v0)
  {
    v9 = 7498084;
  }

  else
  {
    v8 = type metadata accessor for ItemMetadata(0);
    v9 = 6516580;
    if (v0[*(v8 + 112)])
    {
      v9 = 6777712;
    }
  }

  v300 = v9;
  v10 = 0xE300000000000000;
LABEL_11:
  v301 = v10;
  v11 = type metadata accessor for ItemMetadata(0);
  if (v0[v11[20]] == 1)
  {
    MEMORY[0x1D3868CC0](1936483360, 0xE400000000000000);
    v12 = v0[v11[22]];
    if (v0[v11[22]])
    {
      v299[0] = 58;
      v299[1] = 0xE100000000000000;
      if (v12 <= 2)
      {
        if (v12 == 1)
        {
          v13 = 0xEB00000000657465;
          v14 = 0x6C65446568636163;
        }

        else
        {
          v13 = 0xE400000000000000;
          v14 = 1919251317;
        }
      }

      else if (v12 == 3)
      {
        v13 = 0xEA00000000006E6FLL;
        v14 = 0x697461646E756F66;
      }

      else if (v12 == 4)
      {
        v13 = 0xE200000000000000;
        v14 = 28774;
      }

      else
      {
        v13 = 0xEC00000065746164;
        v14 = 0x705565746F6D6572;
      }

      MEMORY[0x1D3868CC0](v14, v13);
      v13, v15, v16, v17, v18, v19, v20, v21;
      v22 = v299[1];
      MEMORY[0x1D3868CC0](v299[0], v299[1]);
      v22, v23, v24, v25, v26, v27, v28, v29;
    }
  }

  if (*v0 != 1)
  {
    v299[0] = 981103392;
    v299[1] = 0xE400000000000000;
    v298 = *&v0[v11[26]];
    v30 = sub_1CF9E7F98();
    v32 = v31;
    MEMORY[0x1D3868CC0](v30);
    v32, v33, v34, v35, v36, v37, v38, v39;
    v40 = v299[1];
    MEMORY[0x1D3868CC0](v299[0], v299[1]);
    v40, v41, v42, v43, v44, v45, v46, v47;
  }

  if ((v0[8] & 1) == 0)
  {
    v48 = *(v0 + 1);
    strcpy(v299, " child:");
    v299[1] = 0xE700000000000000;
    LODWORD(v298) = v48;
    v49 = sub_1CF9E7F98();
    v51 = v50;
    MEMORY[0x1D3868CC0](v49);
    v51, v52, v53, v54, v55, v56, v57, v58;
    v59 = v299[1];
    MEMORY[0x1D3868CC0](v299[0], v299[1]);
    v59, v60, v61, v62, v63, v64, v65, v66;
  }

  v67 = &v0[v11[37]];
  if ((v67[4] & 1) == 0)
  {
    v68 = *v67;
    if (v68 >= 2)
    {
      strcpy(v299, " links:");
      v299[1] = 0xE700000000000000;
      LODWORD(v298) = v68;
      v69 = sub_1CF9E7F98();
      v71 = v70;
      MEMORY[0x1D3868CC0](v69);
      v71, v72, v73, v74, v75, v76, v77, v78;
      v79 = v299[1];
      MEMORY[0x1D3868CC0](v299[0], v299[1]);
      v79, v80, v81, v82, v83, v84, v85, v86;
    }
  }

  MEMORY[0x1D3868CC0](3829024, 0xE300000000000000);
  v87 = *(v0 + 5);
  if ((v87 & 0x100) != 0)
  {
    v88 = 114;
  }

  else
  {
    v88 = 45;
  }

  MEMORY[0x1D3868CC0](v88, 0xE100000000000000);
  if ((v87 & 0x80) != 0)
  {
    v89 = 119;
  }

  else
  {
    v89 = 45;
  }

  MEMORY[0x1D3868CC0](v89, 0xE100000000000000);
  if ((v87 & 0x40) != 0)
  {
    v90 = 120;
  }

  else
  {
    v90 = 45;
  }

  MEMORY[0x1D3868CC0](v90, 0xE100000000000000);
  if (v0[v11[10]] == 1)
  {
    MEMORY[0x1D3868CC0](104, 0xE100000000000000);
  }

  if (v0[v11[13]] == 1)
  {
    MEMORY[0x1D3868CC0](101, 0xE100000000000000);
  }

  if (v0[v11[9]] == 1)
  {
    MEMORY[0x1D3868CC0](108, 0xE100000000000000);
  }

  if (v0[v11[29]] == 1)
  {
    MEMORY[0x1D3868CC0](66, 0xE100000000000000);
  }

  if (v0[v11[15]] == 1)
  {
    MEMORY[0x1D3868CC0](83, 0xE100000000000000);
  }

  v297 = v6;
  if (v0[v11[18]] == 1)
  {
    MEMORY[0x1D3868CC0](68, 0xE100000000000000);
  }

  v91 = v11[21];
  v92 = v0[v11[23]];
  if (v92 == 6)
  {
    if (!v0[v91])
    {
      goto LABEL_99;
    }

    v299[0] = 15397;
    v299[1] = 0xE200000000000000;
    v298 = *&v0[v11[19]];
    v93 = sub_1CF9E7F98();
    v95 = v94;
    MEMORY[0x1D3868CC0](v93);
    v95, v96, v97, v98, v99, v100, v101, v102;
    MEMORY[0x1D3868CC0](58, 0xE100000000000000);
    v103 = v0[v91];
    if (v103 > 2)
    {
      if (v103 == 3)
      {
        v104 = 0xE300000000000000;
        v105 = 6579565;
      }

      else if (v103 == 4)
      {
        v104 = 0xE400000000000000;
        v105 = 1751607656;
      }

      else
      {
        v104 = 0xE200000000000000;
        v105 = 21843;
      }
    }

    else if (v0[v91])
    {
      if (v103 == 1)
      {
        v104 = 0xE700000000000000;
        v105 = 0x6E776F6E6B6E75;
      }

      else
      {
        v105 = 7827308;
        v104 = 0xE300000000000000;
      }
    }

    else
    {
      v105 = 0x74636976456E6F6ELL;
      v104 = 0xEC000000656C6261;
    }
  }

  else if (v0[v91])
  {
    v299[0] = 15397;
    v299[1] = 0xE200000000000000;
    v298 = *&v0[v11[19]];
    v106 = sub_1CF9E7F98();
    v108 = v107;
    MEMORY[0x1D3868CC0](v106);
    v108, v109, v110, v111, v112, v113, v114, v115;
    MEMORY[0x1D3868CC0](58, 0xE100000000000000);
    v116 = v0[v91];
    if (v116 > 2)
    {
      if (v116 == 3)
      {
        v117 = 0xE300000000000000;
        v118 = 6579565;
      }

      else if (v116 == 4)
      {
        v117 = 0xE400000000000000;
        v118 = 1751607656;
      }

      else
      {
        v117 = 0xE200000000000000;
        v118 = 21843;
      }
    }

    else if (v0[v91])
    {
      if (v116 == 1)
      {
        v117 = 0xE700000000000000;
        v118 = 0x6E776F6E6B6E75;
      }

      else
      {
        v118 = 7827308;
        v117 = 0xE300000000000000;
      }
    }

    else
    {
      v118 = 0x74636976456E6F6ELL;
      v117 = 0xEC000000656C6261;
    }

    MEMORY[0x1D3868CC0](v118, v117);
    v117, v119, v120, v121, v122, v123, v124, v125;
    MEMORY[0x1D3868CC0](58, 0xE100000000000000);
    if (v92 > 2)
    {
      if (v92 == 3)
      {
        v105 = 0xD000000000000011;
        v104 = 0x80000001CFA56190;
      }

      else if (v92 == 4)
      {
        v105 = 0x4C64657461657263;
        v104 = 0xEE00796C6C61636FLL;
      }

      else
      {
        v105 = 0x7571655272657375;
        v104 = 0xED00006465747365;
      }
    }

    else if (v92)
    {
      if (v92 == 1)
      {
        v104 = 0x80000001CFA561E0;
        v105 = 0xD000000000000012;
      }

      else
      {
        v104 = 0x80000001CFA561B0;
        v105 = 0xD000000000000029;
      }
    }

    else
    {
      v105 = 0x73746E65636572;
      v104 = 0xE700000000000000;
    }
  }

  else
  {
    v299[0] = 976895013;
    v299[1] = 0xE400000000000000;
    if (v92 > 2)
    {
      if (v92 == 3)
      {
        v105 = 0xD000000000000011;
        v104 = 0x80000001CFA56190;
      }

      else if (v92 == 4)
      {
        v105 = 0x4C64657461657263;
        v104 = 0xEE00796C6C61636FLL;
      }

      else
      {
        v105 = 0x7571655272657375;
        v104 = 0xED00006465747365;
      }
    }

    else if (v92)
    {
      if (v92 == 1)
      {
        v104 = 0x80000001CFA561E0;
        v105 = 0xD000000000000012;
      }

      else
      {
        v104 = 0x80000001CFA561B0;
        v105 = 0xD000000000000029;
      }
    }

    else
    {
      v105 = 0x73746E65636572;
      v104 = 0xE700000000000000;
    }
  }

  MEMORY[0x1D3868CC0](v105, v104);
  v104, v126, v127, v128, v129, v130, v131, v132;
  MEMORY[0x1D3868CC0](62, 0xE100000000000000);
  v133 = v299[1];
  MEMORY[0x1D3868CC0](v299[0], v299[1]);
  v133, v134, v135, v136, v137, v138, v139, v140;
LABEL_99:
  if (v0[v11[11]])
  {
    MEMORY[0x1D3868CC0](0x3A6E697020, 0xE500000000000000);
    v141 = 1718379891;
    v142 = 0xE400000000000000;
  }

  else
  {
    if (v0[v11[12]] != 1)
    {
      goto LABEL_104;
    }

    MEMORY[0x1D3868CC0](0x3A6E697020, 0xE500000000000000);
    v141 = 0x746E65726170;
    v142 = 0xE600000000000000;
  }

  MEMORY[0x1D3868CC0](v141, v142);
LABEL_104:
  if (*&v0[v11[14] + 8])
  {
    strcpy(v299, " orig-name:");
    BYTE5(v299[1]) = 0;
    HIWORD(v299[1]) = -5120;
    v143 = sub_1CF9E6888();
    v144 = [v143 fp_obfuscatedFilename];

    v145 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v147 = v146;

    MEMORY[0x1D3868CC0](v145, v147);
    v147, v148, v149, v150, v151, v152, v153, v154;
    MEMORY[0x1D3868CC0](34, 0xE100000000000000);
    v155 = v299[1];
    MEMORY[0x1D3868CC0](v299[0], v299[1]);
    v155, v156, v157, v158, v159, v160, v161, v162;
  }

  v163 = *&v1[v11[31]];
  if (v163)
  {
    v299[0] = 3830816;
    v299[1] = 0xE300000000000000;
    v164 = sub_1CF66099C(v163);
    v166 = v165;
    MEMORY[0x1D3868CC0](v164);
    v166, v167, v168, v169, v170, v171, v172, v173;
    v174 = v299[1];
    MEMORY[0x1D3868CC0](v299[0], v299[1]);
    v174, v175, v176, v177, v178, v179, v180, v181;
  }

  v299[0] = 0;
  v299[1] = 0xE000000000000000;
  MEMORY[0x1D3868CC0](980706080, 0xE400000000000000);
  sub_1CF9E5C98();
  sub_1CF9E6F78();
  v182 = v299[1];
  MEMORY[0x1D3868CC0](v299[0], v299[1]);
  v182, v183, v184, v185, v186, v187, v188, v189;
  v299[0] = 0;
  v299[1] = 0xE000000000000000;
  MEMORY[0x1D3868CC0](980708640, 0xE400000000000000);
  sub_1CF9E5C98();
  sub_1CF9E6F78();
  v190 = v299[1];
  MEMORY[0x1D3868CC0](v299[0], v299[1]);
  v190, v191, v192, v193, v194, v195, v196, v197;
  sub_1CEFCCBDC(&v1[v11[30]], v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  v198 = v297;
  if ((*(v297 + 48))(v4, 1, v5) == 1)
  {
    sub_1CEFCCC44(v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
  }

  else
  {
    v199 = v296;
    (*(v198 + 32))(v296, v4, v5);
    v299[0] = 0;
    v299[1] = 0xE000000000000000;
    MEMORY[0x1D3868CC0](980773920, 0xE400000000000000);
    sub_1CF9E5C98();
    sub_1CF9E6F78();
    v200 = v299[1];
    MEMORY[0x1D3868CC0](v299[0], v299[1]);
    v200, v201, v202, v203, v204, v205, v206, v207;
    (*(v198 + 8))(v199, v5);
  }

  v208 = &v1[v11[32]];
  if ((v208[8] & 1) == 0)
  {
    v209 = *v208;
    v299[0] = 980837920;
    v299[1] = 0xE400000000000000;
    v298 = v209;
    v210 = sub_1CF9E7F98();
    v212 = v211;
    MEMORY[0x1D3868CC0](v210);
    v212, v213, v214, v215, v216, v217, v218, v219;
    v220 = v299[1];
    MEMORY[0x1D3868CC0](v299[0], v299[1]);
    v220, v221, v222, v223, v224, v225, v226, v227;
  }

  v228 = *&v1[v11[33]];
  if (v228)
  {
    MEMORY[0x1D3868CC0](979466272, 0xE400000000000000);
    sub_1CF6770AC(v228);
    v230 = v229;
    v299[0] = v229;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    sub_1CF0711CC();
    v231 = sub_1CF9E67D8();
    v233 = v232;
    v230, v232, v234, v235, v236, v237, v238, v239;
    MEMORY[0x1D3868CC0](v231, v233);
    v233, v240, v241, v242, v243, v244, v245, v246;
  }

  if (*&v1[v11[34] + 8] >> 60 != 15)
  {
    MEMORY[0x1D3868CC0](1853124896, 0xE400000000000000);
  }

  if (v1[v11[16]])
  {
    v247 = 0xE400000000000000;
    v248 = 1953460082;
LABEL_119:
    strcpy(v299, " ignore:");
    BYTE1(v299[1]) = 0;
    WORD1(v299[1]) = 0;
    HIDWORD(v299[1]) = -402653184;
    MEMORY[0x1D3868CC0](v248, v247);
    v247, v249, v250, v251, v252, v253, v254, v255;
    v256 = v299[1];
    MEMORY[0x1D3868CC0](v299[0], v299[1]);
    v256, v257, v258, v259, v260, v261, v262, v263;
    goto LABEL_123;
  }

  v264 = v1[v11[17]];
  if (v264 != 2 && (v264 & 1) != 0)
  {
    v248 = 0x646C696863;
    v247 = 0xE500000000000000;
    goto LABEL_119;
  }

LABEL_123:
  v265 = &v1[v11[35]];
  if ((v265[8] & 1) == 0)
  {
    v266 = *v265;
    v299[0] = 0;
    v299[1] = 0xE000000000000000;
    MEMORY[0x1D3868CC0](0x3A65707974736F20, 0xE800000000000000);
    v298 = v266;
    type metadata accessor for NSFileProviderTypeAndCreator(0);
    sub_1CF9E7B58();
    v267 = v299[1];
    MEMORY[0x1D3868CC0](v299[0], v299[1]);
    v267, v268, v269, v270, v271, v272, v273, v274;
  }

  if (*&v1[v11[38] + 8])
  {
    strcpy(v299, " collabID:");
    HIDWORD(v299[1]) = -352321536;
    v275 = sub_1CF9E6888();
    v276 = [v275 fp_obfuscatedFilename];

    v277 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v279 = v278;

    MEMORY[0x1D3868CC0](v277, v279);
    v279, v280, v281, v282, v283, v284, v285, v286;
    MEMORY[0x1D3868CC0](34, 0xE100000000000000);
    v287 = v299[1];
    MEMORY[0x1D3868CC0](v299[0], v299[1]);
    v287, v288, v289, v290, v291, v292, v293, v294;
  }

  if (v1[v11[24]] == 1)
  {
    MEMORY[0x1D3868CC0](2342314528, 0xA400000000000000);
  }

  if (v1[v11[25]] == 1)
  {
    MEMORY[0x1D3868CC0](0x83949FF020, 0xA500000000000000);
  }

  return v300;
}

uint64_t FileItemVersion.description.getter(int *a1)
{
  if (*(v1 + a1[15]))
  {
    sub_1CF9E6E58();
    swift_getWitnessTable();
    if ((sub_1CF9E7128() & 1) == 0)
    {
      MEMORY[0x1D3868CC0](980510012, 0xE400000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      MEMORY[0x1D3868CC0](62, 0xE100000000000000);
    }
  }

  if (*(v1 + a1[13]))
  {
    sub_1CF9E6E58();
    swift_getWitnessTable();
    if ((sub_1CF9E7128() & 1) == 0)
    {
      MEMORY[0x1D3868CC0](980510012, 0xE400000000000000);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
    }
  }

  if (*(v1 + a1[16] + 8))
  {
    v3 = sub_1CF9E6888();
    v4 = [v3 fp_obfuscatedFilename];

    v5 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
    v7 = v6;

    MEMORY[0x1D3868CC0](v5, v7);
    v7, v8, v9, v10, v11, v12, v13, v14;
    MEMORY[0x1D3868CC0](41, 0xE100000000000000);
    v16 = 0x3A65636976656420;
    v15 = 0xE800000000000000;
  }

  else
  {
    v16 = 0;
    v15 = 0xE000000000000000;
  }

  sub_1CF9E7948();
  MEMORY[0x1D3868CC0](0x3A72657673, 0xE500000000000000);
  sub_1CF9E7FD8();
  MEMORY[0x1D3868CC0](0, 0xE000000000000000);
  0xE000000000000000, v17, v18, v19, v20, v21, v22, v23;
  MEMORY[0x1D3868CC0](0x3A7265766320, 0xE600000000000000);
  sub_1CF9E7FD8();
  MEMORY[0x1D3868CC0](0, 0xE000000000000000);
  0xE000000000000000, v24, v25, v26, v27, v28, v29, v30;
  MEMORY[0x1D3868CC0](v16, v15);
  v15, v31, v32, v33, v34, v35, v36, v37;
  return 0;
}

uint64_t sub_1CF073320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1CF01E0C4(a2, *(a3 + 8));
  v7 = sub_1CF073398(v6, a1, a2, a3);
  v6, v8, v9, v10, v11, v12, v13, v14;
  return v7;
}

uint64_t sub_1CF073398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = a2;
  v47 = sub_1CF9E75D8();
  v7 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v9 = &v34 - v8;
  v10 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v39 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v49 = &v34 - v18;
  if (sub_1CF9E6DF8())
  {
    v19 = 0;
    v42 = (v7 + 16);
    v43 = (v14 + 32);
    v41 = (v10 + 48);
    v36 = v40 + 16;
    v37 = (v10 + 32);
    v38 = (v10 + 8);
    v44 = (v14 + 8);
    v45 = (v14 + 16);
    v35 = (v7 + 8);
    do
    {
      v20 = sub_1CF9E6DC8();
      sub_1CF9E6D78();
      if (v20)
      {
        (*(v14 + 16))(v49, a1 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v19, AssociatedTypeWitness);
        v21 = v47;
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_12;
        }
      }

      else
      {
        result = sub_1CF9E7998();
        v21 = v47;
        if (v34 != 8)
        {
          __break(1u);
          return result;
        }

        v50[0] = result;
        (*v45)(v49, v50, AssociatedTypeWitness);
        swift_unknownObjectRelease();
        v22 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
LABEL_12:
          __break(1u);
          break;
        }
      }

      (*v43)(v16, v49, AssociatedTypeWitness);
      (*v42)(v9, v46, v21);
      if ((*v41)(v9, 1, a3) == 1)
      {
        (*v35)(v9, v21);
      }

      else
      {
        v23 = v39;
        (*v37)(v39, v9, a3);
        (*(v40 + 16))(v16, v48, a3);
        v24, v24, v25, v26, v27, v28, v29, v30;
        (*v38)(v23, a3);
      }

      (*v44)(v16, AssociatedTypeWitness);
      ++v19;
    }

    while (v22 != sub_1CF9E6DF8());
  }

  sub_1CF9E6DF8();
  result = sub_1CF9E6B18();
  v50[0] = result;
  v50[1] = v32;
  v33 = HIBYTE(v32) & 0xF;
  if ((v32 & 0x2000000000000000) == 0)
  {
    v33 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v33)
  {
    sub_1CF03DE28(2);
    return v50[0];
  }

  return result;
}

char *sub_1CF073914(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v38 - v17;
  if (v6 <= 0x1Eu)
  {
    if (v6 == 28 || v6 == 29)
    {
      swift_getAssociatedTypeWitness();
      v33 = *(swift_getAssociatedConformanceWitness() + 8);
      v34 = *(v33 + 32);
      v35 = swift_checkMetadataState();
      return v34(a2, v35, v33);
    }

    if (v6 != 30)
    {
      return sub_1CF073E1C(v6, a2);
    }

    v22 = (v3 + *(a3 + 44));
    v23 = v22[1];
    if (v23)
    {
      v24 = *v22;

      v25 = MEMORY[0x1E69E6158];
    }

    else
    {
      0, v8, v9, v10, v11, v12, v13, v14;
      v24 = 0;
      v25 = 0;
      v40 = 0;
    }

    v38 = v24;
    v39 = v23;
    v41 = v25;
    v31 = sub_1CEFF8EA0(&v38);
    v37 = v36;
    sub_1CEFCCC44(&v38, &unk_1EC4BEC50, &qword_1CF9FB4B0);
    if (v37)
    {
      return v31;
    }

    result = sub_1CF9E7B68();
    __break(1u);
  }

  else
  {
    if (v6 <= 0x20u)
    {
      if (v6 != 31)
      {
        if (v6 == 32)
        {
          (*(v15 + 16))(v18, v3 + *(a3 + 40), AssociatedTypeWitness, v16);
          swift_dynamicCast();
          v19 = [a2 bindUnsignedIntegerParameter_];
          v20 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

          return v20;
        }

        return sub_1CF073E1C(v6, a2);
      }

      (*(v15 + 16))(v18, v3 + *(a3 + 40), AssociatedTypeWitness, v16);
      swift_dynamicCast();
      v29 = sub_1CF9E8268();
      v30 = [a2 bindObjectParameter_];

      v31 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      return v31;
    }

    if (v6 != 33)
    {
      if (v6 == 34)
      {
        v26 = swift_getAssociatedTypeWitness();
        AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
        v28 = swift_getAssociatedConformanceWitness();
        v38 = AssociatedTypeWitness;
        v39 = v26;
        v40 = AssociatedConformanceWitness;
        v41 = v28;
        type metadata accessor for FileItemVersion(0, &v38);
        return (*(*(v28 + 8) + 32))(a2, v26);
      }

      return sub_1CF073E1C(v6, a2);
    }

    v32 = swift_getAssociatedConformanceWitness();
    return (*(*(v32 + 8) + 32))(a2, AssociatedTypeWitness);
  }

  return result;
}

char *sub_1CF073E1C(char a1, void *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  *&v6 = MEMORY[0x1EEE9AC00](v5 - 8).n128_u64[0];
  v8 = v41 - v7;
  switch(a1)
  {
    case 1:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 2:
      v21 = *(type metadata accessor for ItemMetadata(0) + 104);
      return sub_1CF0744FC(*&v2[v21], 0);
    case 3:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 4:
      v11 = [a2 bindUnsignedShortParameter_];
      goto LABEL_36;
    case 5:
      v24 = *(type metadata accessor for ItemMetadata(0) + 28);
      goto LABEL_30;
    case 6:
      v24 = *(type metadata accessor for ItemMetadata(0) + 32);
LABEL_30:
      v26 = sub_1CF9E5CF8();
      v27 = *(v26 - 8);
      (*(v27 + 16))(v8, &v2[v24], v26);
      (*(v27 + 56))(v8, 0, 1, v26);
      v2 = sub_1CF074698(v8);
      sub_1CEFCCC44(v8, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
      return v2;
    case 7:
      v22 = type metadata accessor for ItemMetadata(0);
      return sub_1CF074698(&v2[*(v22 + 120)]);
    case 8:
      v28 = type metadata accessor for ItemMetadata(0);
      return sub_1CF0748F0(*&v2[*(v28 + 124)]);
    case 9:
      v17 = type metadata accessor for ItemMetadata(0);
      return sub_1CF074ABC(*&v2[*(v17 + 128)], v2[*(v17 + 128) + 8]);
    case 10:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 11:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 12:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 13:
      v25 = *(v2 + 1);
      LOBYTE(v41[0]) = v2[8];
      return sub_1CF074C58(v25 | (LOBYTE(v41[0]) << 32));
    case 14:
      v15 = type metadata accessor for ItemMetadata(0);
      return sub_1CF1DF550(*&v2[*(v15 + 132)]);
    case 15:
      v21 = *(type metadata accessor for ItemMetadata(0) + 108);
      return sub_1CF0744FC(*&v2[v21], 0);
    case 16:
      v12 = type metadata accessor for ItemMetadata(0);
      v13 = v2[*(v12 + 92)];
      if (v13 == 6)
      {
        v14 = 0;
      }

      else
      {
        v14 = (v13 + 1) << 16;
      }

      v11 = [a2 bindUnsignedIntegerParameter_];
      goto LABEL_36;
    case 17:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 18:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 19:
      v30 = type metadata accessor for ItemMetadata(0);
      return sub_1CF074DF4(*&v2[*(v30 + 56)], *&v2[*(v30 + 56) + 8], v31, v32, v33, v34, v35, v36);
    case 20:
      v23 = type metadata accessor for ItemMetadata(0);
      return sub_1CF04E5D8(*&v2[*(v23 + 136)], *&v2[*(v23 + 136) + 8]);
    case 21:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 22:
      v11 = [a2 bindBooleanParameter_];
      goto LABEL_36;
    case 23:
      type metadata accessor for ItemMetadata(0);
      v37 = sub_1CF9E8268();
      v38 = [a2 bindObjectParameter_];

      goto LABEL_45;
    case 24:
      v20 = type metadata accessor for ItemMetadata(0);
      return sub_1CF074EDC(*&v2[*(v20 + 140)], v2[*(v20 + 140) + 8]);
    case 25:
      v18 = 0;
      if ((v2[*(type metadata accessor for ItemMetadata(0) + 148) + 4] & 1) == 0)
      {
        v18 = sub_1CF9E8258();
      }

      v19 = [a2 bindObjectParameter_];
      swift_unknownObjectRelease();
      goto LABEL_37;
    case 26:
      if (*&v2[*(type metadata accessor for ItemMetadata(0) + 152) + 8])
      {
        v39 = sub_1CF9E6888();
      }

      else
      {
        v39 = 0;
      }

      v38 = [a2 bindObjectParameter_];
      swift_unknownObjectRelease();
LABEL_45:
      v40 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      return v40;
    case 27:
      goto LABEL_4;
    default:
      v9 = qword_1CF9FDE78[*v2];
      v41[3] = MEMORY[0x1E69E6530];
      v41[0] = v9;
      v2 = sub_1CEFF8EA0(v41);
      a2 = v10;
      sub_1CEFCCC44(v41, &unk_1EC4BEC50, &qword_1CF9FB4B0);
      if (a2)
      {
        return v2;
      }

      sub_1CF9E7B68();
      __break(1u);
LABEL_4:
      v11 = [a2 bindBooleanParameter_];
LABEL_36:
      v19 = v11;
LABEL_37:
      v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      return v29;
  }
}

uint64_t sub_1CF0744FC(uint64_t a1, char a2)
{
  v10[4] = a1;
  v11 = a2 & 1;
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v10[1] = 0;
    v10[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E7360];
  }

  v10[0] = a1;
  v10[3] = v2;
  v3 = sub_1CEFF8EA0(v10);
  v5 = v4;
  sub_1CEFCCC44(v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v5)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4F0, &unk_1CF9FEF40);
    sub_1CF1E0F44();
    v6 = sub_1CF9E56A8();
    v8 = v7;
    v3 = sub_1CF04E5D8(v6, v7);

    sub_1CEFE4714(v6, v8);
  }

  return v3;
}

uint64_t sub_1CF074698(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BEDC0, &unk_1CF9FEEA0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15[-v3];
  sub_1CF06EAD4(a1, &v15[-v3]);
  v5 = sub_1CF9E5CF8();
  v6 = *(v5 - 8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_1CEFCCC44(v4, &unk_1EC4BEDC0, &unk_1CF9FEEA0);
    v16 = 0u;
    v17 = 0u;
  }

  else
  {
    *(&v17 + 1) = v5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v16);
    (*(v6 + 32))(boxed_opaque_existential_0, v4, v5);
  }

  v8 = sub_1CEFF8EA0(&v16);
  v10 = v9;
  sub_1CEFCCC44(&v16, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v10)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    sub_1CF1E0C04();
    v11 = sub_1CF9E56A8();
    v13 = v12;
    v8 = sub_1CF04E5D8(v11, v12);

    sub_1CEFE4714(v11, v13);
  }

  return v8;
}

uint64_t sub_1CF0748F0(uint64_t a1)
{
  v10[4] = a1;
  if (a1)
  {
    v1 = &type metadata for Tags;
    v2 = a1;
  }

  else
  {
    v2 = 0;
    v1 = 0;
    v10[1] = 0;
    v10[2] = 0;
  }

  v10[0] = v2;
  v10[3] = v1;

  v3 = sub_1CEFF8EA0(v10);
  v5 = v4;
  sub_1CEFCCC44(v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v5)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE488, &qword_1CF9FDDA8);
    sub_1CF04EE34(&qword_1EC4BE4D0, &qword_1EC4BE488, &qword_1CF9FDDA8, sub_1CF1E0CB8);
    v6 = sub_1CF9E56A8();
    v8 = v7;
    v3 = sub_1CF04E5D8(v6, v7);

    sub_1CEFE4714(v6, v8);
  }

  return v3;
}

uint64_t sub_1CF074ABC(uint64_t a1, char a2)
{
  v10[4] = a1;
  v11 = a2 & 1;
  if (a2)
  {
    a1 = 0;
    v2 = 0;
    v10[1] = 0;
    v10[2] = 0;
  }

  else
  {
    v2 = MEMORY[0x1E69E76D8];
  }

  v10[0] = a1;
  v10[3] = v2;
  v3 = sub_1CEFF8EA0(v10);
  v5 = v4;
  sub_1CEFCCC44(v10, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v5)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE490, &unk_1CF9FF020);
    sub_1CF1E0D0C();
    v6 = sub_1CF9E56A8();
    v8 = v7;
    v3 = sub_1CF04E5D8(v6, v7);

    sub_1CEFE4714(v6, v8);
  }

  return v3;
}

uint64_t sub_1CF074C58(uint64_t a1)
{
  v10 = a1;
  v11 = BYTE4(a1) & 1;
  if ((a1 & 0x100000000) != 0)
  {
    v1 = 0;
    memset(v9, 0, 24);
  }

  else
  {
    LODWORD(v9[0]) = a1;
    v1 = MEMORY[0x1E69E7668];
  }

  v9[3] = v1;
  v2 = sub_1CEFF8EA0(v9);
  v4 = v3;
  sub_1CEFCCC44(v9, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v4)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE480, &qword_1CF9FEF30);
    sub_1CF1E0D88();
    v5 = sub_1CF9E56A8();
    v7 = v6;
    v2 = sub_1CF04E5D8(v5, v6);

    sub_1CEFE4714(v5, v7);
  }

  return v2;
}

uint64_t sub_1CF074DF4(uint64_t a1, uint64_t a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  if (a2)
  {

    v10 = MEMORY[0x1E69E6158];
  }

  else
  {
    0, 0, a3, a4, a5, a6, a7, a8;
    a1 = 0;
    v10 = 0;
    v15[2] = 0;
  }

  v15[0] = a1;
  v15[1] = a2;
  v15[3] = v10;
  v11 = sub_1CEFF8EA0(v15);
  v13 = v12;
  sub_1CEFCCC44(v15, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v13)
  {
    return v11;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF074EDC(uint64_t a1, char a2)
{
  if (a2)
  {
    v2 = 0;
    v3 = 0;
    v8[1] = 0;
    v8[2] = 0;
  }

  else
  {
    v2 = __ROR8__(a1, 32);
    v3 = MEMORY[0x1E69E76D8];
  }

  v8[0] = v2;
  v8[3] = v3;
  v4 = sub_1CEFF8EA0(v8);
  v6 = v5;
  sub_1CEFCCC44(v8, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (v6)
  {
    return v4;
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF074FA8(void *a1)
{
  v2 = sub_1CF9E5B48();
  v3 = [a1 bindObjectParameter_];

  v4 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
  return v4;
}

uint64_t sub_1CF07501C(uint64_t a1, __int128 *a2)
{
  v3 = a2[13];
  v72 = a2[12];
  v73 = v3;
  v74 = a2[14];
  v4 = a2[9];
  v68 = a2[8];
  v69 = v4;
  v5 = a2[11];
  v70 = a2[10];
  v71 = v5;
  v6 = a2[5];
  v64 = a2[4];
  v65 = v6;
  v7 = a2[7];
  v66 = a2[6];
  v67 = v7;
  v8 = a2[1];
  v60 = *a2;
  v61 = v8;
  v9 = a2[3];
  v62 = a2[2];
  v75 = *(a2 + 30);
  v63 = v9;
  if (*(a1 + 16))
  {
    v11 = (a1 + 32);
    v12 = *(a1 + 16);
    do
    {
      v14 = *v11++;
      v13 = v14;
      v15 = a2[13];
      v58[12] = a2[12];
      v58[13] = v15;
      v58[14] = a2[14];
      v59 = *(a2 + 30);
      v16 = a2[9];
      v58[8] = a2[8];
      v58[9] = v16;
      v17 = a2[11];
      v58[10] = a2[10];
      v58[11] = v17;
      v18 = a2[5];
      v58[4] = a2[4];
      v58[5] = v18;
      v19 = a2[7];
      v58[6] = a2[6];
      v58[7] = v19;
      v20 = a2[1];
      v58[0] = *a2;
      v58[1] = v20;
      v21 = a2[3];
      v58[2] = a2[2];
      v58[3] = v21;
      if (get_enum_tag_for_layout_string_18FileProviderDaemon25ItemNonSyncableAttributesVSg_0(v58) == 1)
      {
      }

      else
      {
        v57 = v75;
        v54 = v72;
        v55 = v73;
        v56 = v74;
        v50 = v68;
        v51 = v69;
        v52 = v70;
        v53 = v71;
        v46 = v64;
        v47 = v65;
        v48 = v66;
        v49 = v67;
        v42 = v60;
        v43 = v61;
        v44 = v62;
        v45 = v63;
        v40[12] = v72;
        v40[13] = v73;
        v40[14] = v74;
        v41 = v75;
        v40[8] = v68;
        v40[9] = v69;
        v40[10] = v70;
        v40[11] = v71;
        v40[4] = v64;
        v40[5] = v65;
        v40[6] = v66;
        v40[7] = v67;
        v40[0] = v60;
        v40[1] = v61;
        v40[2] = v62;
        v40[3] = v63;
        sub_1CEFF7474(v40, v38);
        sub_1CF0753A8(v13, v2, v22, v23, v24, v25, v26, v27);
        v28, v28, v29, v30, v31, v32, v33, v34;
        v38[12] = v54;
        v38[13] = v55;
        v38[14] = v56;
        v39 = v57;
        v38[8] = v50;
        v38[9] = v51;
        v38[10] = v52;
        v38[11] = v53;
        v38[4] = v46;
        v38[5] = v47;
        v38[6] = v48;
        v38[7] = v49;
        v38[0] = v42;
        v38[1] = v43;
        v38[2] = v44;
        v38[3] = v45;
        sub_1CF07574C(v38);
      }

      --v12;
    }

    while (v12);
  }

  result = sub_1CF9E6B18();
  *&v42 = result;
  *(&v42 + 1) = v36;
  v37 = HIBYTE(v36) & 0xF;
  if ((v36 & 0x2000000000000000) == 0)
  {
    v37 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v37)
  {
    sub_1CF03DE28(2);
    return v42;
  }

  return result;
}

void *sub_1CF0753A8(char a1, id a2, int64_t a3, int64_t a4, void *a5, void *a6, uint64_t a7, void *a8)
{
  result = v8[2];
  switch(a1)
  {
    case 1:
      v16 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 2:
      v16 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 3:
      if (!result)
      {
        goto LABEL_38;
      }

      swift_getErrorValue();
      v17 = v27;
      v18 = v28;
      goto LABEL_16;
    case 4:
      if (!v8[3])
      {
        goto LABEL_37;
      }

      swift_getErrorValue();
      v17 = v29;
      v18 = v30;
LABEL_16:
      result = sub_1CF4C2330(v17, v18);
      if (v9)
      {
        return result;
      }

      goto LABEL_39;
    case 5:
      v16 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 6:
      v16 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 7:
      v16 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 8:
      v16 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 9:
      v14 = v8[5];
      v15 = v8[6];
      return sub_1CF0757A0(v14, v15);
    case 10:
      v14 = v8[7];
      v15 = v8[8];
      return sub_1CF0757A0(v14, v15);
    case 11:
      v16 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 12:
      v14 = v8[10];
      v15 = v8[11];
      return sub_1CF0757A0(v14, v15);
    case 13:
      v16 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 14:
      v16 = [a2 bindBooleanParameter_];
      goto LABEL_32;
    case 15:
      v14 = v8[14];
      v15 = v8[15];
      return sub_1CF0757A0(v14, v15);
    case 16:
      v14 = v8[16];
      v15 = v8[17];
      return sub_1CF0757A0(v14, v15);
    case 17:
      v14 = v8[18];
      v15 = v8[19];
      return sub_1CF0757A0(v14, v15);
    case 18:
      return sub_1CF074DF4(v8[20], v8[21], a3, a4, a5, a6, a7, a8);
    case 19:
      v16 = [a2 bindBooleanParameter_];
LABEL_32:
      v20 = v16;
      v21 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();

      return v21;
    case 20:
      return sub_1CF075944(v8[23]);
    case 21:
      return sub_1CF075B2C(v8[24], v8[25]);
    case 22:
      v12 = v8[26];
      goto LABEL_34;
    case 23:
      v12 = v8[27];
LABEL_34:
      v13 = MEMORY[0x1E69E6530];
      goto LABEL_35;
    case 24:
      return sub_1CF075F44(v8[28]);
    case 25:
      v14 = v8[29];
      v15 = v8[30];
      return sub_1CF0757A0(v14, v15);
    default:
      v12 = *v8;
      v13 = MEMORY[0x1E69E6810];
LABEL_35:
      v31[3] = v13;
      v31[0] = v12;
      v22 = sub_1CEFF8EA0(v31);
      v24 = v23;
      sub_1CF0248E0(v31);
      if (!v24)
      {
        sub_1CF9E7B68();
        __break(1u);
LABEL_37:
        result = 0;
LABEL_38:
        v19 = 0xF000000000000000;
LABEL_39:
        v25 = result;
        v26 = v19;
        v22 = sub_1CF04E5D8(result, v19);
        sub_1CEFE48D8(v25, v26);
      }

      return v22;
  }
}

uint64_t sub_1CF0757A0(uint64_t a1, uint64_t a2)
{
  v11[4] = a1;
  v11[5] = a2;
  if (a2)
  {
    v2 = MEMORY[0x1E69E6158];
    v3 = a2;
  }

  else
  {
    a1 = 0;
    v3 = 0;
    v2 = 0;
    v11[2] = 0;
  }

  v11[0] = a1;
  v11[1] = v3;
  v11[3] = v2;

  v4 = sub_1CEFF8EA0(v11);
  v6 = v5;
  sub_1CEFCCC44(v11, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C10D0, &unk_1CF9FEEF0);
    sub_1CF1E1420();
    v7 = sub_1CF9E56A8();
    v9 = v8;
    v4 = sub_1CF04E5D8(v7, v8);

    sub_1CEFE4714(v7, v9);
  }

  return v4;
}

uint64_t sub_1CF075944(uint64_t a1)
{
  v11[4] = a1;
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
    v3 = a1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v11[1] = 0;
    v11[2] = 0;
  }

  v11[0] = v3;
  v11[3] = v2;

  v4 = sub_1CEFF8EA0(v11);
  v6 = v5;
  sub_1CEFCCC44(v11, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE558, &unk_1CF9FEEE0);
    sub_1CF04EE34(&qword_1EC4BE560, &qword_1EC4BE558, &unk_1CF9FEEE0, sub_1CF1E14F0);
    v7 = sub_1CF9E56A8();
    v9 = v8;
    v4 = sub_1CF04E5D8(v7, v8);

    sub_1CEFE4714(v7, v9);
  }

  return v4;
}

uint64_t sub_1CF075B2C(uint64_t a1, uint64_t a2)
{
  v12[4] = a1;
  v12[5] = a2;
  if (a1)
  {
    v2 = &type metadata for UserInfo;
    v3 = a1;
    v4 = a2;
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v2 = 0;
    v12[2] = 0;
  }

  v12[0] = v3;
  v12[1] = v4;
  v12[3] = v2;
  sub_1CF075D00(a1, a2);
  v5 = sub_1CEFF8EA0(v12);
  v7 = v6;
  sub_1CEFCCC44(v12, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v7)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE568, &qword_1CF9FDDD8);
    sub_1CF04EE34(&qword_1EDEA42B8, &qword_1EC4BE568, &qword_1CF9FDDD8, sub_1CF1E156C);
    v8 = sub_1CF9E56A8();
    v10 = v9;
    v5 = sub_1CF04E5D8(v8, v9);

    sub_1CEFE4714(v8, v10);
  }

  return v5;
}

uint64_t sub_1CF075D00(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1CF075D40(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4C2278, &unk_1CFA107B8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1CEFE7B7C();
  sub_1CF9E82A8();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4C4BE0, &unk_1CF9FEE90);
  sub_1CEFE7C14(&qword_1EDEA3780, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  sub_1CF9E7F08();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    sub_1CF9E7F08();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1CF075F44(uint64_t a1)
{
  v11[4] = a1;
  if (a1)
  {
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC4BF630, &unk_1CF9FEEC0);
    v3 = a1;
  }

  else
  {
    v3 = 0;
    v2 = 0;
    v11[1] = 0;
    v11[2] = 0;
  }

  v11[0] = v3;
  v11[3] = v2;

  v4 = sub_1CEFF8EA0(v11);
  v6 = v5;
  sub_1CEFCCC44(v11, &unk_1EC4BEC50, &qword_1CF9FB4B0);
  if (!v6)
  {
    sub_1CF9E56C8();
    swift_allocObject();
    sub_1CF9E56B8();
    sub_1CF9E5698();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE570, &unk_1CF9FEED0);
    sub_1CF04EE34(&qword_1EDEA37F8, &qword_1EC4BE570, &unk_1CF9FEED0, sub_1CF1E15C0);
    v7 = sub_1CF9E56A8();
    v9 = v8;
    v4 = sub_1CF04E5D8(v7, v8);

    sub_1CEFE4714(v7, v9);
  }

  return v4;
}

uint64_t sub_1CF07612C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

uint64_t sub_1CF0761B4(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1CF0761F4(a1, v3, v4, v5);
  return v2;
}

uint64_t sub_1CF0761F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 96);
  v7 = type metadata accessor for SnapshotItem(0, *(*v4 + 80), *(*v4 + 88), a4);
  (*(*(v7 - 8) + 32))(v4 + v6, a1, v7);
  return v4;
}

uint64_t sub_1CF07629C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  v6 = type metadata accessor for SnapshotItem(0, *(*v4 + 80), *(*v4 + 88), a4);
  (*(*(v6 - 8) + 8))(v4 + v5, v6);
  return v4;
}

uint64_t sub_1CF076334(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1CF07629C(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

uint64_t sub_1CF07638C(uint64_t a1, unint64_t a2)
{
  if ((a2 >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_1CF0763AC(uint64_t a1, void *a2)
{
  v63 = a2;
  v67 = a1;
  v3 = *(*v2 + 80);
  v4 = *(*v2 + 88);
  v5 = *(*v2 + 96);
  v6 = *(*v2 + 104);
  v68 = v3;
  v69 = v4;
  v70 = v5;
  v71 = v6;
  v7 = type metadata accessor for ReconciliationMutation(0, &v68);
  v66 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v64 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v55 - v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_getAssociatedTypeWitness();
  v59 = v3;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v60 = v6;
  v61 = v4;
  v15 = v66;
  v16 = swift_getAssociatedConformanceWitness();
  v68 = AssociatedTypeWitness;
  v69 = v13;
  v70 = AssociatedConformanceWitness;
  v71 = v16;
  v17 = type metadata accessor for ReconciliationID(0, &v68);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = &v55 - v22;
  v63 = *v63;
  v24 = *(v15 + 16);
  v24(v11, v67, v7, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v62 = v18;
  if (EnumCaseMultiPayload != 10)
  {
    (*(v15 + 8))(v11, v7);
    goto LABEL_10;
  }

  v58 = v7;
  v27 = type metadata accessor for ReconciliationSideMutation(255, v59, v5, v26);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v29 = &v11[*(TupleTypeMetadata2 + 48)];
  v30 = v11;
  v31 = *(v18 + 32);
  v31(v23, v30, v17);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v18 + 8))(v23, v17);
    (*(*(v27 - 8) + 8))(v29, v27);
  }

  else
  {
    v57 = TupleTypeMetadata2;
    v32 = v29[1];
    v59 = *v29;
    v33 = v29[2];
    if (sub_1CF056558() && (v59 & v63) != 0)
    {
      v55 = v33;
      v56 = v32;
      v15 = v66;
      v34 = v67;
      v35 = v58;
      (*(v66 + 8))(v67, v58);
      v36 = v31;
      v37 = (v34 + *(v57 + 48));
      v36(v34, v23, v17);
      *v37 = v59 & ~v63;
      v38 = v55;
      v37[1] = v56;
      v37[2] = v38;
      v7 = v35;
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      goto LABEL_10;
    }

    (*(v62 + 8))(v23, v17);
  }

  v15 = v66;
  v7 = v58;
LABEL_10:
  v39 = v64;
  (v24)(v64, v67, v7);
  v40 = swift_getEnumCaseMultiPayload();
  v42 = v65;
  if (v40 != 9)
  {
    return (*(v15 + 8))(v39, v7);
  }

  v43 = type metadata accessor for ReconciliationSideMutation(255, v61, v60, v41);
  v44 = swift_getTupleTypeMetadata2();
  v45 = &v39[*(v44 + 48)];
  v46 = v62;
  v47 = v39;
  v48 = *(v62 + 32);
  v48(v42, v47, v17);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v46 + 8))(v42, v17);
    return (*(*(v43 - 8) + 8))(v45, v43);
  }

  else
  {
    v64 = v48;
    v50 = *v45;
    v61 = *(v45 + 1);
    v51 = *(v45 + 2);
    if (sub_1CF056558() && (v50 & v63) != 0)
    {
      v52 = v51;
      v53 = v67;
      (*(v15 + 8))(v67, v7);
      v54 = (v53 + *(v44 + 48));
      (v64)(v53, v65, v17);
      *v54 = v50 & ~v63;
      v54[1] = v61;
      v54[2] = v52;
      swift_storeEnumTagMultiPayload();
      return swift_storeEnumTagMultiPayload();
    }

    else
    {
      return (*(v46 + 8))(v65, v17);
    }
  }
}

uint64_t sub_1CF0769FC@<X0>(void *a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v141 = a3;
  v4 = a1[2];
  v5 = a1[4];
  v6 = type metadata accessor for ReconciliationSideMutation(0, v4, v5, a2);
  v134 = *(v6 - 8);
  v135 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v133 = &v129 - v7;
  v8 = a1[3];
  v9 = a1[5];
  v11 = type metadata accessor for ReconciliationSideMutation(0, v8, v9, v10);
  v131 = *(v11 - 8);
  v132 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v129 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v129 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v15 = &v129 - v14;
  v16 = swift_getAssociatedTypeWitness();
  *(&v139 + 1) = v4;
  v140 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v138 = v9;
  *&v139 = v8;
  v18 = swift_getAssociatedConformanceWitness();
  v19 = AssociatedTypeWitness;
  *&v142 = AssociatedTypeWitness;
  *(&v142 + 1) = v16;
  v20 = v16;
  *&v136 = v18;
  *(&v136 + 1) = AssociatedConformanceWitness;
  *&v143 = AssociatedConformanceWitness;
  *(&v143 + 1) = v18;
  v21 = type metadata accessor for ReconciliationID(0, &v142);
  v22 = v21[-1].i64[1];
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v129 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v129 - v26;
  v29 = MEMORY[0x1EEE9AC00](v28);
  v31 = &v129 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v32 + 16))(v31, v137, a1, v29);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v95 = v19;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v97 = *(TupleTypeMetadata3 + 48);
      v98 = v31[*(TupleTypeMetadata3 + 64)];
      v99 = *(v129 + 32);
      v99(v15, v31, v95);
      v100 = swift_getTupleTypeMetadata3();
      v101 = *(v100 + 48);
      v102 = *(v100 + 64);
      v103 = &v31[v97];
      v104 = v141;
      (*(*(v20 - 8) + 32))(v141, v103, v20);
      v99((v104 + v101), v15, v95);
      *(v104 + v102) = v98;
      *&v105 = v138;
      *(&v105 + 1) = v140;
      v143 = v105;
      v142 = v139;
      type metadata accessor for ReconciliationMutation(0, &v142);
      break;
    case 4u:
      (*(v22 + 32))(v27, v31, v21);
      sub_1CF050768(v21, v141);
      (*(v22 + 8))(v27, v21);
      *&v59 = v138;
      *(&v59 + 1) = v140;
      v143 = v59;
      v142 = v139;
      type metadata accessor for ReconciliationMutation(0, &v142);
      break;
    case 5u:
    case 6u:
    case 0x10u:
      v106 = v21;
      v107 = *&v31[*(swift_getTupleTypeMetadata2() + 48)];
      (*(v22 + 32))(v27, v31, v106);
      *&v142 = v16;
      *(&v142 + 1) = v19;
      v143 = v136;
      type metadata accessor for ReconciliationID(255, &v142);
      v108 = *(swift_getTupleTypeMetadata2() + 48);
      v109 = v27;
      v110 = v141;
      sub_1CF050768(v106, v141);
      (*(v22 + 8))(v109, v106);
      *(v110 + v108) = v107;
      *&v111 = v138;
      *(&v111 + 1) = v140;
      v143 = v111;
      v142 = v139;
      type metadata accessor for ReconciliationMutation(0, &v142);
      break;
    case 7u:
      v87 = *(swift_getTupleTypeMetadata2() + 48);
      v88 = v21;
      v89 = *(v22 + 32);
      v89(v27, v31, v88);
      v89(v24, &v31[v87], v88);
      *&v142 = v20;
      *(&v142 + 1) = v19;
      v143 = v136;
      type metadata accessor for ReconciliationID(255, &v142);
      v90 = *(swift_getTupleTypeMetadata2() + 48);
      v91 = v27;
      v92 = v141;
      sub_1CF050768(v88, v141);
      v93 = *(v22 + 8);
      v93(v91, v88);
      sub_1CF050768(v88, v92 + v90);
      v93(v24, v88);
      *&v94 = v138;
      *(&v94 + 1) = v140;
      v143 = v94;
      v142 = v139;
      type metadata accessor for ReconciliationMutation(0, &v142);
      break;
    case 8u:
      v120 = *(swift_getTupleTypeMetadata2() + 48);
      v121 = v21;
      v122 = *(v22 + 32);
      v122(v27, v31, v121);
      v122(v24, &v31[v120], v121);
      *&v142 = v20;
      *(&v142 + 1) = v19;
      v143 = v136;
      type metadata accessor for ReconciliationID(255, &v142);
      v123 = *(swift_getTupleTypeMetadata2() + 48);
      v124 = v27;
      v125 = v141;
      sub_1CF050768(v121, v141);
      v126 = *(v22 + 8);
      v126(v124, v121);
      sub_1CF050768(v121, v125 + v123);
      v126(v24, v121);
      *&v127 = v138;
      *(&v127 + 1) = v140;
      v143 = v127;
      v142 = v139;
      type metadata accessor for ReconciliationMutation(0, &v142);
      break;
    case 9u:
      v69 = v132;
      v70 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v22 + 32))(v27, v31, v21);
      v137 = *(v131 + 32);
      v71 = &v31[v70];
      v72 = v130;
      v137(v130, v71, v69);
      *&v142 = v20;
      *(&v142 + 1) = v19;
      v143 = v136;
      type metadata accessor for ReconciliationID(255, &v142);
      v73 = *(swift_getTupleTypeMetadata2() + 48);
      v74 = v27;
      v75 = v141;
      sub_1CF050768(v21, v141);
      (*(v22 + 8))(v74, v21);
      v137((v75 + v73), v72, v69);
      *&v76 = v138;
      *(&v76 + 1) = v140;
      v143 = v76;
      v142 = v139;
      type metadata accessor for ReconciliationMutation(0, &v142);
      break;
    case 0xAu:
      v112 = v135;
      v113 = *(swift_getTupleTypeMetadata2() + 48);
      (*(v22 + 32))(v27, v31, v21);
      v137 = *(v134 + 32);
      v114 = &v31[v113];
      v115 = v133;
      v137(v133, v114, v112);
      *&v142 = v20;
      *(&v142 + 1) = v19;
      v143 = v136;
      type metadata accessor for ReconciliationID(255, &v142);
      v116 = *(swift_getTupleTypeMetadata2() + 48);
      v117 = v27;
      v118 = v141;
      sub_1CF050768(v21, v141);
      (*(v22 + 8))(v117, v21);
      v137((v118 + v116), v115, v112);
      *&v119 = v138;
      *(&v119 + 1) = v140;
      v143 = v119;
      v142 = v139;
      type metadata accessor for ReconciliationMutation(0, &v142);
      break;
    case 0xBu:
      v50 = &v31[*(swift_getTupleTypeMetadata2() + 48)];
      v51 = v21;
      v52 = *v50;
      v53 = v22;
      v54 = v50[8];
      (*(v53 + 32))(v27, v31, v51);
      *&v142 = v16;
      *(&v142 + 1) = v19;
      v143 = v136;
      type metadata accessor for ReconciliationID(255, &v142);
      v55 = v141 + *(swift_getTupleTypeMetadata2() + 48);
      sub_1CF050768(v51, v141);
      (*(v53 + 8))(v27, v51);
      *v55 = v52;
      *&v57 = v138;
      v56 = v139;
      v58 = v140;
      *(v55 + 8) = v54;
      *(&v57 + 1) = v58;
      v143 = v57;
      v142 = v56;
      type metadata accessor for ReconciliationMutation(0, &v142);
      break;
    case 0xCu:
      v60 = &v31[*(swift_getTupleTypeMetadata2() + 48)];
      v61 = v21;
      v62 = v22;
      v63 = *v60;
      v64 = *(v60 + 1);
      (*(v62 + 32))(v27, v31, v61);
      *&v142 = v16;
      *(&v142 + 1) = v19;
      v143 = v136;
      type metadata accessor for ReconciliationID(255, &v142);
      v65 = (v141 + *(swift_getTupleTypeMetadata2() + 48));
      sub_1CF050768(v61, v141);
      (*(v62 + 8))(v27, v61);
      *&v67 = v138;
      v66 = v139;
      v68 = v140;
      *v65 = v63;
      v65[1] = v64;
      *(&v67 + 1) = v68;
      v143 = v67;
      v142 = v66;
      type metadata accessor for ReconciliationMutation(0, &v142);
      break;
    case 0xEu:
      v39 = swift_getTupleTypeMetadata3();
      v40 = v21;
      v41 = *&v31[*(v39 + 48)];
      v42 = v22;
      v43 = *&v31[*(v39 + 64)];
      (*(v42 + 32))(v27, v31, v40);
      *&v142 = v16;
      *(&v142 + 1) = v19;
      v143 = v136;
      type metadata accessor for ReconciliationID(255, &v142);
      v44 = swift_getTupleTypeMetadata3();
      v45 = *(v44 + 48);
      v46 = *(v44 + 64);
      v47 = v27;
      v48 = v141;
      sub_1CF050768(v40, v141);
      (*(v42 + 8))(v47, v40);
      *(v48 + v45) = v41;
      *(v48 + v46) = v43;
      *&v49 = v138;
      *(&v49 + 1) = v140;
      v143 = v49;
      v142 = v139;
      type metadata accessor for ReconciliationMutation(0, &v142);
      break;
    case 0xFu:
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC4BE9A8, &unk_1CF9FEF60);
      v77 = swift_getTupleTypeMetadata3();
      v78 = v31[*(v77 + 48)];
      v79 = v22;
      v80 = v31[*(v77 + 64)];
      (*(v79 + 32))(v27, v31, v21);
      *&v142 = v16;
      *(&v142 + 1) = v19;
      v143 = v136;
      type metadata accessor for ReconciliationID(255, &v142);
      v81 = swift_getTupleTypeMetadata3();
      v82 = *(v81 + 48);
      v83 = *(v81 + 64);
      v84 = v27;
      v85 = v141;
      sub_1CF050768(v21, v141);
      (*(v79 + 8))(v84, v21);
      *(v85 + v82) = v78;
      *(v85 + v83) = v80;
      *&v86 = v138;
      *(&v86 + 1) = v140;
      v143 = v86;
      v142 = v139;
      type metadata accessor for ReconciliationMutation(0, &v142);
      break;
    default:
      v33 = v21;
      v34 = v31[*(swift_getTupleTypeMetadata2() + 48)];
      (*(v22 + 32))(v27, v31, v33);
      *&v142 = v16;
      *(&v142 + 1) = v19;
      v143 = v136;
      type metadata accessor for ReconciliationID(255, &v142);
      v35 = *(swift_getTupleTypeMetadata2() + 48);
      v36 = v27;
      v37 = v141;
      sub_1CF050768(v33, v141);
      (*(v22 + 8))(v36, v33);
      *(v37 + v35) = v34;
      *&v38 = v138;
      *(&v38 + 1) = v140;
      v143 = v38;
      v142 = v139;
      type metadata accessor for ReconciliationMutation(0, &v142);
      break;
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1CF077DEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = a1[4];
  v9 = a1[2];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = a1[5];
  v12 = a1[3];
  v13 = swift_getAssociatedTypeWitness();
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v35 = *(swift_getTupleTypeMetadata3() + 48);
      (*(*(AssociatedTypeWitness - 8) + 32))(v36, v5, AssociatedTypeWitness);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v30 = swift_getAssociatedConformanceWitness();
      v37 = AssociatedTypeWitness;
      v38 = v13;
      v39 = AssociatedConformanceWitness;
      v40 = v30;
      type metadata accessor for ReconciliationID(0, &v37);
      swift_storeEnumTagMultiPayload();
      result = (*(*(v13 - 8) + 8))(&v5[v35], v13);
      break;
    case 7:
    case 8:
      v18 = swift_getAssociatedConformanceWitness();
      v19 = swift_getAssociatedConformanceWitness();
      v37 = AssociatedTypeWitness;
      v38 = v13;
      v39 = v18;
      v40 = v19;
      v20 = type metadata accessor for ReconciliationID(255, &v37);
      v21 = *(swift_getTupleTypeMetadata2() + 48);
      v22 = *(v20 - 8);
      (*(v22 + 32))(v36, v5, v20);
      result = (*(v22 + 8))(&v5[v21], v20);
      break;
    case 9:
      v31 = swift_getAssociatedConformanceWitness();
      v32 = swift_getAssociatedConformanceWitness();
      v37 = AssociatedTypeWitness;
      v38 = v13;
      v39 = v31;
      v40 = v32;
      v26 = type metadata accessor for ReconciliationID(255, &v37);
      v27 = v12;
      v28 = v11;
      goto LABEL_8;
    case 10:
      v23 = swift_getAssociatedConformanceWitness();
      v24 = swift_getAssociatedConformanceWitness();
      v37 = AssociatedTypeWitness;
      v38 = v13;
      v39 = v23;
      v40 = v24;
      v26 = type metadata accessor for ReconciliationID(255, &v37);
      v27 = v9;
      v28 = v8;
LABEL_8:
      v33 = type metadata accessor for ReconciliationSideMutation(255, v27, v28, v25);
      v34 = *(swift_getTupleTypeMetadata2() + 48);
      (*(*(v26 - 8) + 32))(v36, v5, v26);
      result = (*(*(v33 - 8) + 8))(&v5[v34], v33);
      break;
    default:
      v14 = swift_getAssociatedConformanceWitness();
      v15 = swift_getAssociatedConformanceWitness();
      v37 = AssociatedTypeWitness;
      v38 = v13;
      v39 = v14;
      v40 = v15;
      v16 = type metadata accessor for ReconciliationID(0, &v37);
      result = (*(*(v16 - 8) + 32))(v36, v5, v16);
      break;
  }

  return result;
}

uint64_t sub_1CF078348@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v38 = a1;
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *(*v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v39 = &v34 - v8;
  v9 = *(v4 + 96);
  v10 = *(v4 + 80);
  v11 = swift_getAssociatedTypeWitness();
  v36 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v34 - v12;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  *&v40 = v11;
  *(&v40 + 1) = AssociatedTypeWitness;
  *&v41 = AssociatedConformanceWitness;
  *(&v41 + 1) = v14;
  v15 = type metadata accessor for ReconciliationID(0, &v40);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v34 - v17;
  sub_1CF078804(v10, v6, v9, v5, a2);
  (*(v16 + 16))(v18, v38, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = v37;
    v20 = *(v37 + 32);
    v20(v39, v18, AssociatedTypeWitness);
    *&v21 = v10;
    *(&v21 + 1) = v6;
    *&v22 = v9;
    *(&v22 + 1) = v5;
    v40 = v21;
    v41 = v22;
    v23 = *(type metadata accessor for ItemReconciliation(0, &v40) + 52);
    v25 = type metadata accessor for ItemReconciliationHalf(0, v6, v5, v24);
    (*(*(v25 - 8) + 8))(&a2[v23], v25);
    sub_1CF078A84(v6, v5, &a2[v23]);
    v26 = sub_1CF9E75D8();
    (*(*(v26 - 8) + 8))(&a2[v23], v26);
    v20(&a2[v23], v39, AssociatedTypeWitness);
    return (*(v19 + 56))(&a2[v23], 0, 1, AssociatedTypeWitness);
  }

  else
  {
    v29 = v35;
    v28 = v36;
    v30 = *(v36 + 32);
    v30(v35, v18, v11);
    v32 = type metadata accessor for ItemReconciliationHalf(0, v10, v9, v31);
    (*(*(v32 - 8) + 8))(a2, v32);
    sub_1CF078A84(v10, v9, a2);
    v33 = sub_1CF9E75D8();
    (*(*(v33 - 8) + 8))(a2, v33);
    v30(a2, v29, v11);
    return (*(v28 + 56))(a2, 0, 1, v11);
  }
}

uint64_t sub_1CF078804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_1CF9E5CF8();
  v26 = *(v10 - 8);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1CF078A84(a1, a3, a5);
  v28 = a1;
  v29 = a2;
  v30 = a3;
  v31 = a4;
  v13 = type metadata accessor for ItemReconciliation(0, &v28);
  sub_1CF078A84(a2, a4, a5 + v13[13]);
  *(a5 + v13[14]) = 4;
  v25 = v13[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v17 = swift_getAssociatedConformanceWitness();
  v28 = AssociatedTypeWitness;
  v29 = v15;
  v30 = AssociatedConformanceWitness;
  v31 = v17;
  type metadata accessor for ReconciliationID(0, &v28);
  *(a5 + v25) = sub_1CF9E6DA8();
  v18 = v13[16];
  sub_1CF9E5CE8();
  sub_1CF9E5C98();
  v20 = v19;
  result = (*(v26 + 8))(v12, v27);
  v22 = v20 * 1000000000.0;
  if (COERCE__INT64(fabs(v20 * 1000000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v22 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v22 < 9.22337204e18)
  {
    v23 = (a5 + v18);
    *v23 = 0x2000000000000000;
    v23[1] = v22;
    *(a5 + v13[17]) = 0;
    *(a5 + v13[18]) = 0;
    *(a5 + v13[19]) = 0;
    *(a5 + v13[20]) = 0;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

double sub_1CF078A84@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a3, 1, 1, AssociatedTypeWitness);
  v8 = type metadata accessor for ItemReconciliationHalf(0, a1, a2, v7);
  *(a3 + v8[9]) = 0;
  *(a3 + v8[10]) = 0;
  *(a3 + v8[11]) = 5;
  v9 = v8[12];
  v14[0] = swift_getAssociatedTypeWitness();
  v14[1] = swift_getAssociatedTypeWitness();
  v14[2] = swift_getAssociatedConformanceWitness();
  v14[3] = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for FileItemVersion(0, v14);
  (*(*(v10 - 8) + 56))(a3 + v9, 1, 1, v10);
  *(a3 + v8[13]) = 0;
  *(a3 + v8[14]) = 6;
  *(a3 + v8[15]) = 0;
  v11 = a3 + v8[16];
  *v11 = xmmword_1CF9FD920;
  *(v11 + 16) = 4;
  v12 = a3 + v8[17];
  *v12 = 0;
  *(v12 + 8) = 0;
  *(v12 + 16) = 0;
  *(v12 + 24) = 0xB000000000000000;
  result = 0.0;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0u;
  *(a3 + v8[18]) = 0;
  *(a3 + v8[19]) = 0;
  return result;
}

uint64_t sub_1CF078C8C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = v6;
  (*(v6 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedTypeWitness();
  if (EnumCaseMultiPayload == 1)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v11 = v20;
    (*(*(v9 - 8) + 32))(v20, &v5[*(TupleTypeMetadata3 + 48)], v9);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = swift_getAssociatedConformanceWitness();
    v21 = AssociatedTypeWitness;
    v22 = v9;
    v23 = AssociatedConformanceWitness;
    v24 = v13;
    v14 = type metadata accessor for ReconciliationID(0, &v21);
    swift_storeEnumTagMultiPayload();
    (*(*(v14 - 8) + 56))(v11, 0, 1, v14);
    return (*(*(AssociatedTypeWitness - 8) + 8))(v5, AssociatedTypeWitness);
  }

  else
  {
    v16 = swift_getAssociatedConformanceWitness();
    v17 = swift_getAssociatedConformanceWitness();
    v21 = AssociatedTypeWitness;
    v22 = v9;
    v23 = v16;
    v24 = v17;
    v18 = type metadata accessor for ReconciliationID(0, &v21);
    (*(*(v18 - 8) + 56))(v20, 1, 1, v18);
    return (*(v19 + 8))(v5, a1);
  }
}

uint64_t sub_1CF078FAC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[5];
  v45 = a1[3];
  v7 = type metadata accessor for ReconciliationSideMutation(0, v45, v6, a4);
  v43 = *(v7 - 8);
  v44 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v42 - v8;
  v11 = type metadata accessor for ReconciliationSideMutation(0, a1[2], a1[4], v10);
  v42 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = *(a1 - 1);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v18, v4, a1, v16);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  switch(EnumCaseMultiPayload)
  {
    case 9:
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v34 = swift_getAssociatedTypeWitness();
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      v36 = swift_getAssociatedConformanceWitness();
      v46 = AssociatedTypeWitness;
      v47 = v34;
      v48 = AssociatedConformanceWitness;
      v49 = v36;
      v37 = type metadata accessor for ReconciliationID(255, &v46);
      v38 = v44;
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      v40 = v43;
      (*(v43 + 32))(v9, &v18[*(TupleTypeMetadata2 + 48)], v38);
      v27 = sub_1CF07CB20(v38);
      (*(v40 + 8))(v9, v38);
      (*(*(v37 - 8) + 8))(v18, v37);
      break;
    case 12:
      v28 = swift_getAssociatedTypeWitness();
      v29 = swift_getAssociatedTypeWitness();
      v30 = swift_getAssociatedConformanceWitness();
      v31 = swift_getAssociatedConformanceWitness();
      v46 = v28;
      v47 = v29;
      v48 = v30;
      v49 = v31;
      v32 = type metadata accessor for ReconciliationID(255, &v46);
      v27 = *&v18[*(swift_getTupleTypeMetadata2() + 48)];
      (*(*(v32 - 8) + 8))(v18, v32);
      break;
    case 10:
      v20 = swift_getAssociatedTypeWitness();
      v21 = swift_getAssociatedTypeWitness();
      v22 = swift_getAssociatedConformanceWitness();
      v23 = swift_getAssociatedConformanceWitness();
      v46 = v20;
      v47 = v21;
      v48 = v22;
      v49 = v23;
      v24 = type metadata accessor for ReconciliationID(255, &v46);
      v25 = swift_getTupleTypeMetadata2();
      v26 = v42;
      (*(v42 + 32))(v13, &v18[*(v25 + 48)], v11);
      v27 = sub_1CF07CB20(v11);
      (*(v26 + 8))(v13, v11);
      (*(*(v24 - 8) + 8))(v18, v24);
      break;
    default:
      (*(v14 + 8))(v18, a1);
      return 0;
  }

  return v27;
}

uint64_t sub_1CF079564(unint64_t a1, char a2, uint64_t a3, unsigned __int8 a4)
{
  if (a2 == -1 || a2 == 2 && a1 == 3)
  {
    if (a4 <= 1u)
    {
      return 3;
    }

    return a3;
  }

  if (a4 < 2u)
  {
    return a1;
  }

  if (a4 == 2)
  {
    if (a3 > 1)
    {
      if (a3 == 2)
      {
        return a3;
      }

      v5 = a3 == 3;
      a3 = a1;
      if (v5)
      {
        return a3;
      }
    }

    else if (a3)
    {
      if (a3 == 1 && a2 == 2 && a1 < 2)
      {
        return 1;
      }
    }

    else if (a2 == 2 && a1 < 2)
    {
      return a1;
    }
  }

  result = sub_1CF9E7B68();
  __break(1u);
  return result;
}

uint64_t sub_1CF079694@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = *a5;
  v17 = *a6;
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v18 = type metadata accessor for ReconciliationTable.CachedEntry(0, &v30);
  v19 = v18[13];
  v30 = a11;
  v31 = a12;
  v32 = a13;
  v33 = a14;
  v20 = type metadata accessor for ItemReconciliation(0, &v30);
  v21 = *(*(v20 - 8) + 32);
  v21(a9 + v19, a3, v20);
  v21(a9 + v18[14], a4, v20);
  v22 = (a9 + v18[15]);
  *v22 = v16;
  v22[1] = v17;
  v23 = a9 + v18[16];
  *v23 = a7;
  *(v23 + 8) = a8;
  v24 = v18[17];
  v25 = sub_1CF9E75D8();
  return (*(*(v25 - 8) + 32))(a9 + v24, a10, v25);
}

BOOL sub_1CF0797FC(uint64_t a1, uint64_t a2)
{
  v154 = a1;
  v3 = *(a2 + 40);
  v4 = *(a2 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1CF9E75D8();
  v146 = *(v6 - 8);
  v147 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v145 = &v124 - v7;
  v149 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v8);
  v155 = &v124 - v9;
  v10 = *(a2 + 32);
  v11 = *(a2 + 16);
  v12 = swift_getAssociatedTypeWitness();
  v156 = v10;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v157 = v4;
  *&v158 = v3;
  v14 = swift_getAssociatedConformanceWitness();
  v160 = AssociatedTypeWitness;
  *&v161 = v12;
  *(&v161 + 1) = AssociatedTypeWitness;
  *&v162 = AssociatedConformanceWitness;
  v150 = v14;
  v151 = AssociatedConformanceWitness;
  *(&v162 + 1) = v14;
  v15 = type metadata accessor for ReconciliationID(255, &v161);
  v16 = sub_1CF9E75D8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v134 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v133 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v136 = &v124 - v19;
  v148 = v16;
  v144 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v131 = &v124 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v135 = &v124 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v138 = &v124 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v132 = &v124 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v139 = &v124 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v142 = &v124 - v31;
  v153 = v15;
  v32 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v35 = &v124 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v124 - v37;
  v39 = sub_1CF9E75D8();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v124 - v41;
  v43 = *(v12 - 8);
  v45 = MEMORY[0x1EEE9AC00](v44);
  *&v159 = &v124 - v46;
  v47 = *(v40 + 16);
  v152 += *(a2 + 56);
  v47(v42, v45);
  v48 = (*(v43 + 48))(v42, 1, v12);
  v141 = v32;
  v140 = v38;
  v137 = v35;
  if (v48 == 1)
  {
    v49 = v153;
    (*(v40 + 8))(v42, v39);
    v51 = v155;
    v50 = v156;
    v52 = v157;
    v53 = v158;
    goto LABEL_3;
  }

  v63 = v159;
  (*(v43 + 32))(v159, v42, v12);
  v127 = v11;
  *&v64 = v11;
  *(&v64 + 1) = v157;
  *&v65 = v156;
  *(&v65 + 1) = v158;
  v162 = v65;
  v161 = v64;
  v129 = type metadata accessor for ReconciliationMutation(0, &v161);
  sub_1CF077DEC(v129, v38);
  v128 = *(v43 + 16);
  v128(v35, v63, v12);
  v66 = v43;
  v67 = v153;
  swift_storeEnumTagMultiPayload();
  v68 = sub_1CF024490(v38, v35, v12, v160);
  v69 = *(v32 + 8);
  v69(v35, v67);
  v126 = v32 + 8;
  v125 = v69;
  v69(v38, v67);
  if ((v68 & 1) == 0)
  {
    v78 = v32;
    v124 = v66;
    v79 = v142;
    sub_1CF078C8C(v129, v142);
    v80 = v139;
    v128(v139, v159, v12);
    swift_storeEnumTagMultiPayload();
    (*(v32 + 56))(v80, 0, 1, v67);
    v81 = *(TupleTypeMetadata2 + 48);
    v82 = v144;
    v83 = *(v144 + 16);
    v84 = v136;
    v85 = v79;
    v86 = v148;
    v83(v136, v85, v148);
    v129 = v81;
    v83(&v81[v84], v80, v86);
    v87 = *(v78 + 48);
    v88 = v87(v84, 1, v67);
    v89 = v159;
    if (v88 == 1)
    {
      v90 = *(v82 + 8);
      v91 = v80;
      v92 = v148;
      v90(v91, v148);
      v90(v142, v92);
      (*(v124 + 8))(v89, v12);
      v49 = v67;
      if (v87(&v129[v84], 1, v67) == 1)
      {
        v90(v84, v92);
        return 1;
      }
    }

    else
    {
      v105 = v132;
      v106 = v148;
      v83(v132, v84, v148);
      v107 = v129;
      if (v87(&v129[v84], 1, v67) != 1)
      {
        v114 = v140;
        (*(v141 + 32))(v140, &v107[v84], v67);
        LODWORD(v129) = sub_1CF024490(v105, v114, v12, v160);
        v115 = v84;
        v116 = v125;
        v125(v114, v67);
        v117 = *(v144 + 8);
        v117(v139, v106);
        v117(v142, v106);
        (*(v124 + 8))(v89, v12);
        v49 = v67;
        v116(v105, v67);
        v117(v115, v106);
        v51 = v155;
        v50 = v156;
        v52 = v157;
        v53 = v158;
        v11 = v127;
        if (v129)
        {
          return 1;
        }

LABEL_3:
        v130 = v12;
        *&v54 = v11;
        *(&v54 + 1) = v52;
        *&v55 = v50;
        *(&v55 + 1) = v53;
        v158 = v55;
        v159 = v54;
        v162 = v55;
        v161 = v54;
        v56 = type metadata accessor for ItemReconciliation(0, &v161);
        v58 = v146;
        v57 = v147;
        v59 = v145;
        (*(v146 + 16))(v145, v152 + *(v56 + 52), v147);
        v60 = v149;
        v61 = v160;
        if ((*(v149 + 48))(v59, 1, v160) == 1)
        {
          (*(v58 + 8))(v59, v57);
          return 0;
        }

        (*(v60 + 32))(v51, v59, v61);
        v162 = v158;
        v161 = v159;
        v70 = type metadata accessor for ReconciliationMutation(0, &v161);
        v71 = v140;
        *&v159 = v70;
        sub_1CF077DEC(v70, v140);
        v72 = v137;
        *&v158 = *(v60 + 16);
        (v158)(v137, v51, v61);
        v73 = v49;
        swift_storeEnumTagMultiPayload();
        v74 = sub_1CF024490(v71, v72, v130, v61);
        v75 = v141;
        v76 = v141 + 8;
        v77 = *(v141 + 8);
        v77(v72, v73);
        v156 = v77;
        v157 = v76;
        v77(v71, v73);
        if (v74)
        {
          (*(v60 + 8))(v155, v160);
          return 1;
        }

        v93 = v138;
        sub_1CF078C8C(v159, v138);
        v94 = v135;
        v95 = v160;
        (v158)(v135, v155, v160);
        swift_storeEnumTagMultiPayload();
        (*(v75 + 56))(v94, 0, 1, v73);
        v96 = *(TupleTypeMetadata2 + 48);
        v97 = v144;
        v98 = *(v144 + 16);
        v99 = v133;
        v100 = v93;
        v101 = v148;
        v98(v133, v100, v148);
        *&v159 = v96;
        v98(&v99[v96], v94, v101);
        v102 = *(v75 + 48);
        if (v102(v99, 1, v73) == 1)
        {
          v103 = *(v97 + 8);
          v103(v94, v101);
          v103(v138, v101);
          (*(v149 + 8))(v155, v95);
          v104 = v99;
          if (v102(&v99[v159], 1, v73) == 1)
          {
            v103(v99, v101);
            return 1;
          }
        }

        else
        {
          v109 = v131;
          v110 = v101;
          v98(v131, v99, v101);
          v111 = v159;
          v112 = v73;
          v104 = v99;
          if (v102(&v99[v159], 1, v73) != 1)
          {
            v118 = &v99[v111];
            v119 = v140;
            (*(v141 + 32))(v140, v118, v73);
            v120 = sub_1CF024490(v109, v119, v130, v95);
            v121 = v73;
            v122 = v156;
            v156(v119, v121);
            v123 = *(v144 + 8);
            v123(v135, v110);
            v123(v138, v110);
            (*(v149 + 8))(v155, v95);
            v122(v109, v112);
            v123(v99, v110);
            return (v120 & 1) != 0;
          }

          v113 = *(v144 + 8);
          v113(v135, v110);
          v113(v138, v110);
          (*(v149 + 8))(v155, v95);
          v156(v109, v73);
        }

        (*(v134 + 8))(v104, TupleTypeMetadata2);
        return 0;
      }

      v108 = *(v144 + 8);
      v108(v139, v106);
      v108(v142, v106);
      (*(v124 + 8))(v89, v12);
      v49 = v67;
      v125(v105, v67);
    }

    (*(v134 + 8))(v84, TupleTypeMetadata2);
    v51 = v155;
    v50 = v156;
    v52 = v157;
    v53 = v158;
    v11 = v127;
    goto LABEL_3;
  }

  (*(v66 + 8))(v159, v12);
  return 1;
}

uint64_t sub_1CF07A814(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t), void *a3, void (*a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t (*a9)(char *, uint64_t, uint64_t))
{
  v368 = a2;
  v369 = a8;
  v336 = a7;
  v328 = a6;
  v357 = a5;
  v366 = a4;
  v367 = a1;
  v354 = a3;
  v370 = a9;
  v10 = *v9;
  v11 = sub_1CF9E6118();
  v331 = *(v11 - 8);
  v332 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v338 = &v321 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = v10[12];
  v14 = v10[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = sub_1CF9E75D8();
  v326 = *(v16 - 8);
  v327 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v325 = &v321 - v17;
  v329 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v18);
  v321 = &v321 - v19;
  v20 = v10[13];
  v361 = v9;
  v21 = v10[11];
  v22 = swift_getAssociatedTypeWitness();
  v355 = sub_1CF9E75D8();
  v334 = *(v355 - 8);
  MEMORY[0x1EEE9AC00](v355);
  v333 = &v321 - v23;
  v335 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v322 = &v321 - v25;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v330 = AssociatedTypeWitness;
  *&v382 = AssociatedTypeWitness;
  *(&v382 + 1) = v22;
  v337 = v22;
  *&v383 = AssociatedConformanceWitness;
  *(&v383 + 1) = v27;
  v356 = type metadata accessor for ReconciliationID(0, &v382);
  v351 = *(v356 - 8);
  MEMORY[0x1EEE9AC00](v356);
  v339 = &v321 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v348 = &v321 - v30;
  *&v31 = v14;
  *(&v31 + 1) = v21;
  *&v32 = v13;
  *(&v32 + 1) = v20;
  v382 = v31;
  v383 = v32;
  v33 = type metadata accessor for PersistenceTrigger(0, &v382);
  v346 = *(v33 - 8);
  v347 = v33;
  MEMORY[0x1EEE9AC00](v33);
  v345 = &v321 - v34;
  v36 = v369;
  v35 = v370;
  v37 = swift_getAssociatedTypeWitness();
  v324 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v344 = &v321 - v38;
  v39 = v35;
  v40 = swift_getAssociatedTypeWitness();
  v323 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v343 = &v321 - v41;
  v42 = swift_getAssociatedConformanceWitness();
  v43 = swift_getAssociatedConformanceWitness();
  v349 = v40;
  v350 = v37;
  *&v382 = v40;
  *(&v382 + 1) = v37;
  v341 = v43;
  v342 = v42;
  *&v383 = v42;
  *(&v383 + 1) = v43;
  v44 = type metadata accessor for FileItemVersion(255, &v382);
  v45 = sub_1CF9E75D8();
  v358 = *(v45 - 8);
  v359 = v45;
  MEMORY[0x1EEE9AC00](v45);
  v340 = &v321 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v47);
  v352 = &v321 - v48;
  v353 = v44;
  v360 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v362 = &v321 - v50;
  v363 = swift_getAssociatedTypeWitness();
  v51 = sub_1CF9E75D8();
  v364 = *(v51 - 8);
  v365 = v51;
  MEMORY[0x1EEE9AC00](v51);
  v53 = &v321 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v54);
  v56 = &v321 - v55;
  MEMORY[0x1EEE9AC00](v57);
  v59 = &v321 - v58;
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v321 - v61;
  MEMORY[0x1EEE9AC00](v63);
  v65 = &v321 - v64;
  MEMORY[0x1EEE9AC00](v66);
  v68 = &v321 - v67;
  MEMORY[0x1EEE9AC00](v69);
  v71 = &v321 - v70;
  v73 = type metadata accessor for ReconciliationSideMutation(0, v36, v39, v72);
  v74 = MEMORY[0x1EEE9AC00](v73);
  v76 = &v321 - v75;
  LODWORD(v366) = *v366;
  (*(v77 + 16))(&v321 - v75, v367, v73, v74);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v149 = *v76;
      v151 = v364;
      v150 = v365;
      v152 = v368;
      (*(v364 + 16))(v68, v368, v365);
      v153 = (*(*(v363 - 8) + 48))(v68, 1);
      (*(v151 + 8))(v68, v150);
      if (v153 == 1)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 518);
      }

      v155 = type metadata accessor for ItemReconciliationHalf(0, v369, v370, v154);
      *(v152 + *(v155 + 40)) &= ~v149;
      v156 = *(v155 + 36);
      v157 = *(v152 + v156);
      if ((v157 & 1) == 0)
      {
        return 1;
      }

      *(v152 + v156) = v157 & 0xFFFFFFFFFFFFFFFELL;
      return 1;
    case 2u:
      v134 = type metadata accessor for ItemReconciliationHalf(0, v369, v370, v78);
      v135 = *(v134 + 36);
      v136 = v368;
      if ((*(v368 + v135) & 9) == 1)
      {
        goto LABEL_37;
      }

      v137 = *(v368 + v135) & 0xFFFFFFFFFFFFFFF6 | 1;
      goto LABEL_36;
    case 3u:
      v138 = *v76;
      v140 = v364;
      v139 = v365;
      v141 = v368;
      (*(v364 + 16))(v62, v368, v365);
      v142 = (*(*(v363 - 8) + 48))(v62, 1);
      (*(v140 + 8))(v62, v139);
      if (v142 == 1)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 574);
      }

      v144 = *(type metadata accessor for ItemReconciliationHalf(0, v369, v370, v143) + 36);
      v145 = *(v141 + v144);
      if (v138)
      {
        result = 0;
        if ((v145 & 2) == 0)
        {
          *(v141 + v144) = v145 | 2;
        }
      }

      else
      {
        if ((v145 & 0x22) == 0)
        {
          return 0;
        }

        result = 0;
        *(v141 + v144) = v145 & 0xFFFFFFFFFFFFFFDDLL;
      }

      return result;
    case 4u:
      v117 = *v76;
      v119 = v364;
      v118 = v365;
      v120 = v368;
      (*(v364 + 16))(v56, v368, v365);
      v121 = (*(*(v363 - 8) + 48))(v56, 1);
      (*(v119 + 8))(v56, v118);
      if (v121 == 1)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 593);
      }

      v123 = *(type metadata accessor for ItemReconciliationHalf(0, v369, v370, v122) + 36);
      v124 = *(v120 + v123);
      result = 0;
      if (v117)
      {
        if ((v124 & 4) == 0)
        {
          *(v120 + v123) = v124 | 4;
        }
      }

      else if ((v124 & 4) != 0)
      {
        *(v120 + v123) = v124 & 0xFFFFFFFFFFFFFFFBLL;
      }

      return result;
    case 5u:
      v158 = *v76;
      v160 = v364;
      v159 = v365;
      v97 = v368;
      (*(v364 + 16))(v53, v368, v365);
      v161 = (*(*(v363 - 8) + 48))(v53, 1);
      (*(v160 + 8))(v53, v159);
      if (v161 == 1)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 602);
      }

      v104 = *(type metadata accessor for ItemReconciliationHalf(0, v369, v370, v162) + 36);
      v163 = *(v97 + v104);
      if (v158)
      {
        result = 0;
        if ((v163 & 0x10) != 0)
        {
          return result;
        }

        v106 = v163 | 0x10;
      }

      else
      {
        if ((v163 & 0x30) == 0)
        {
          return 0;
        }

        result = 0;
        v106 = v163 & 0xFFFFFFFFFFFFFFCFLL;
      }

      goto LABEL_96;
    case 6u:
      v183 = *v76;
      v184 = *(type metadata accessor for ItemReconciliationHalf(0, v369, v370, v78) + 36);
      v185 = *(v368 + v184);
      if (v183 == 1)
      {
        result = 0;
        if ((v185 & 0x20) == 0)
        {
          *(v368 + v184) = v185 | 0x20;
        }
      }

      else
      {
        result = 0;
        if ((v185 & 0x20) != 0)
        {
          *(v368 + v184) = v185 & 0xFFFFFFFFFFFFFFDFLL;
        }
      }

      return result;
    case 7u:
      v146 = *v76;
      v147 = *(type metadata accessor for ItemReconciliationHalf(0, v369, v370, v78) + 36);
      v148 = *(v368 + v147);
      if (v146 == 1)
      {
        result = 0;
        if ((v148 & 0x40) == 0)
        {
          *(v368 + v147) = v148 | 0x40;
        }
      }

      else
      {
        result = 0;
        if ((v148 & 0x40) != 0)
        {
          *(v368 + v147) = v148 & 0xFFFFFFFFFFFFFFBFLL;
        }
      }

      return result;
    case 8u:
      v194 = v353;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      LODWORD(v366) = v76[*(TupleTypeMetadata3 + 48)];
      LODWORD(v367) = v76[*(TupleTypeMetadata3 + 64)];
      v196 = v360;
      (*(v360 + 32))(v362, v76, v194);
      v198 = v364;
      v197 = v365;
      v199 = v368;
      (*(v364 + 16))(v65, v368, v365);
      v200 = (*(*(v363 - 8) + 48))(v65, 1);
      (*(v198 + 8))(v65, v197);
      if (v200 == 1)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 557);
      }

      v202 = v199 + *(type metadata accessor for ItemReconciliationHalf(0, v369, v370, v201) + 48);
      v204 = v358;
      v203 = v359;
      v205 = v352;
      (*(v358 + 16))(v352, v202, v359);
      v206 = *(v196 + 48);
      v207 = v206(v205, 1, v194);
      (*(v204 + 8))(v205, v203);
      if (v207 == 1)
      {
        v209 = v342;
        v208 = v343;
        v210 = *(v342 + 40);
        v211 = v362;
        v370 = v206;
        v212 = v349;
        v210(v362, v349, v342);
        v213 = v341;
        v214 = &v211[*(v194 + 56)];
        v215 = v344;
        v216 = v350;
        (*(v341 + 40))(v214, v350, v341);
        v320 = v209;
        v217 = v340;
        v218 = v215;
        v196 = v360;
        v219 = v212;
        v206 = v370;
        sub_1CF023878(v208, 0, v218, 0, 0, 0, v219, v216, v340, v320, v213);
        (*(v196 + 56))(v217, 0, 1, v194);
        (*(v358 + 40))(v202, v217, v359);
      }

      if (v366 && !v206(v202, 1, v194))
      {
        (*(v323 + 24))(v202, v362, v349);
      }

      if (v367 && !v206(v202, 1, v194))
      {
        (*(v324 + 24))(&v202[*(v194 + 56)], &v362[*(v194 + 56)], v350);
      }

      v220 = *(v196 + 8);
      v221 = v362;
      v222 = v194;
      goto LABEL_76;
    case 9u:
      v131 = *v76;
      v132 = *(type metadata accessor for ItemReconciliationHalf(0, v369, v370, v78) + 72);
      v133 = v368;

      result = 0;
      *(v133 + v132) = v131;
      return result;
    case 0xAu:
      v186 = *v76;
      v187 = type metadata accessor for ItemReconciliationHalf(0, v369, v370, v78);
      v188 = *(v187 + 52);
      v189 = v368;
      v190 = *(v368 + v188);
      if (v190 <= 1)
      {
        v191 = v356;
        v192 = v357;
        v193 = v355;
        if (!*(v368 + v188))
        {
          if (v186 - 1 < 3)
          {
            goto LABEL_114;
          }

LABEL_140:
          if (v190 != v186)
          {
            v281 = fpfs_current_or_default_log();
            v282 = v338;
            sub_1CF9E6128();
            v283 = sub_1CF9E6108();
            v284 = sub_1CF9E72A8();
            if (os_log_type_enabled(v283, v284))
            {
              v285 = 0xED00006465747365;
              v286 = 0x7265746E49746F6ELL;
              v287 = swift_slowAlloc();
              v288 = swift_slowAlloc();
              *&v382 = v288;
              *v287 = 136446466;
              v289 = v186;
              if (v190 <= 1)
              {
                v290 = 0x7265746E49746F6ELL;
                v291 = 0xED00006465747365;
                if (v190)
                {
                  v290 = 0x746F687370616E73;
                  v291 = 0xEC000000676E6974;
                }
              }

              else if (v190 == 2)
              {
                v291 = 0xE800000000000000;
                v290 = 0x676E696863746177;
              }

              else if (v190 == 3)
              {
                v290 = 0xD000000000000011;
                v291 = 0x80000001CFA45AC0;
              }

              else
              {
                v291 = 0x80000001CFA45AA0;
                v290 = 0xD000000000000015;
              }

              v301 = sub_1CEFD0DF0(v290, v291, &v382);
              v291, v302, v303, v304, v305, v306, v307, v308;
              *(v287 + 4) = v301;
              *(v287 + 12) = 2082;
              if (v289 <= 1)
              {
                v309 = v338;
                if (v289)
                {
                  v286 = 0x746F687370616E73;
                  v285 = 0xEC000000676E6974;
                }
              }

              else
              {
                v309 = v338;
                if (v289 == 2)
                {
                  v285 = 0xE800000000000000;
                  v286 = 0x676E696863746177;
                }

                else if (v289 == 3)
                {
                  v286 = 0xD000000000000011;
                  v285 = 0x80000001CFA45AC0;
                }

                else
                {
                  v285 = 0x80000001CFA45AA0;
                  v286 = 0xD000000000000015;
                }
              }

              v310 = sub_1CEFD0DF0(v286, v285, &v382);
              v285, v311, v312, v313, v314, v315, v316, v317;
              *(v287 + 14) = v310;
              _os_log_impl(&dword_1CEFC7000, v283, v284, "❌  invalid transition %{public}s -> %{public}s", v287, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x1D386CDC0](v288, -1, -1);
              MEMORY[0x1D386CDC0](v287, -1, -1);

              (*(v331 + 8))(v309, v332);
            }

            else
            {

              (*(v331 + 8))(v282, v332);
            }
          }

          return 3;
        }

        if (v186 == 1)
        {
          goto LABEL_140;
        }
      }

      else
      {
        v191 = v356;
        v192 = v357;
        v193 = v355;
        if (v190 != 2)
        {
          if (v190 == 3)
          {
            if (v186 >= 3)
            {
              goto LABEL_140;
            }

            goto LABEL_116;
          }

          if (v186 - 1 >= 2)
          {
            if (!v186)
            {
              return 3;
            }

            goto LABEL_140;
          }

LABEL_114:
          *(v368 + v188) = v186;
          goto LABEL_122;
        }

        if (v186 && v186 != 3)
        {
          if (v186 == 1 && v366 != 1 && v366 != 4)
          {
            goto LABEL_114;
          }

          goto LABEL_140;
        }
      }

LABEL_116:
      *(v368 + v188) = v186;
      if (!v186)
      {
        v224 = v191;
        v225 = v189 + *(v187 + 68);
        v226 = *(v225 + 1);
        v382 = *v225;
        v383 = v226;
        v227 = *(v225 + 3);
        v384 = *(v225 + 2);
        v385 = v227;
        v378 = v382;
        *&v379 = *(v225 + 2);
        v228 = *(&v226 + 1);
        v371 = v384;
        v372 = v227;
        if (*(&v226 + 1) >> 60 != 11)
        {
          Strong = swift_weakLoadStrong();
          if (Strong)
          {
            v230 = Strong;
            v231 = v345;
            *v345 = v378;
            *(v231 + 2) = v379;
            *(v231 + 3) = v228;
            v232 = v372;
            *(v231 + 2) = v371;
            *(v231 + 3) = v232;
            v233 = v347;
            swift_storeEnumTagMultiPayload();
            v234 = *(*v230 + 312);
            v374 = v382;
            v375 = v383;
            v376 = v384;
            v377 = v385;
            sub_1CF023C28(&v382, v373);
            sub_1CF1AE1DC(&v374, v373);
            v234(v231);

            sub_1CEFCCC44(&v382, &unk_1EC4BF260, &unk_1CFA01B60);
            v235 = v233;
            v224 = v356;
            v192 = v357;
            (*(v346 + 8))(v231, v235);
          }

          v236 = *(v225 + 1);
          v374 = *v225;
          v375 = v236;
          v237 = *(v225 + 3);
          v376 = *(v225 + 2);
          v377 = v237;
          sub_1CEFCCC44(&v374, &unk_1EC4BF260, &unk_1CFA01B60);
          *v225 = 0;
          *(v225 + 1) = 0;
          *(v225 + 2) = 0;
          *(v225 + 3) = 0xB000000000000000;
          *(v225 + 2) = 0u;
          *(v225 + 3) = 0u;
        }

        v193 = v355;
        v191 = v224;
      }

LABEL_122:
      LODWORD(v369) = v190;
      LODWORD(v370) = v186;
      v238 = v351;
      v239 = v351 + 16;
      v240 = *(v351 + 16);
      v241 = v348;
      v240(v348, v192, v191);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v243 = *(v238 + 8);
      v243(v241, v191);
      if (EnumCaseMultiPayload != 1)
      {
        v366 = v243;
        v367 = v239;
        v368 = v240;
        v244 = v333;
        v245 = v334;
        (*(v334 + 16))(v333, v336, v193);
        v246 = v335;
        v247 = v337;
        if ((*(v335 + 48))(v244, 1, v337) != 1)
        {
          v264 = v322;
          (*(v246 + 32))(v322, v244, v247);
          v265 = swift_weakLoadStrong();
          v254 = v247;
          v266 = v246;
          if (v265)
          {
            v267 = v265;
            v268 = v191;
            *&v382 = v191;
            *(&v382 + 1) = sub_1CF9E75D8();
            *&v383 = &type metadata for ContentStatus;
            *(&v383 + 1) = &type metadata for ContentStatus;
            TupleTypeMetadata = swift_getTupleTypeMetadata();
            v270 = TupleTypeMetadata[12];
            v271 = TupleTypeMetadata[16];
            v366 = TupleTypeMetadata[20];
            v272 = v345;
            v368(v345, v192, v268);
            (*(v266 + 16))(&v272[v270], v264, v254);
            swift_storeEnumTagMultiPayload();
            (*(v351 + 56))(&v272[v270], 0, 1, v268);
            v272[v271] = v369;
            *(v366 + v272) = v370;
            v273 = v347;
            swift_storeEnumTagMultiPayload();
            (*(*v267 + 312))(v272);

            (*(v346 + 8))(v272, v273);
          }

          v220 = *(v266 + 8);
          v221 = v264;
LABEL_149:
          v222 = v254;
LABEL_76:
          v220(v221, v222);
          return 0;
        }

        (*(v245 + 8))(v244, v193);
        v240 = v368;
        v243 = v366;
      }

      v248 = v339;
      v240(v339, v192, v191);
      v249 = swift_getEnumCaseMultiPayload();
      v243(v248, v191);
      v250 = v370;
      if (v249 != 1)
      {
        goto LABEL_128;
      }

      v368 = v240;
      v252 = v325;
      v251 = v326;
      v253 = v327;
      (*(v326 + 16))(v325, v328, v327);
      v255 = v329;
      v254 = v330;
      if ((*(v329 + 48))(v252, 1, v330) != 1)
      {
        v292 = v321;
        (*(v255 + 32))(v321, v252, v254);
        v293 = swift_weakLoadStrong();
        if (!v293)
        {
          (*(v255 + 8))(v292, v254);
          return 0;
        }

        v294 = v293;
        *&v382 = v191;
        *(&v382 + 1) = sub_1CF9E75D8();
        *&v383 = &type metadata for ContentStatus;
        *(&v383 + 1) = &type metadata for ContentStatus;
        v295 = swift_getTupleTypeMetadata();
        v296 = v255;
        v297 = v295[12];
        v298 = v295[16];
        v367 = v295[20];
        v299 = v345;
        v368(v345, v357, v191);
        (*(v296 + 16))(&v299[v297], v292, v254);
        swift_storeEnumTagMultiPayload();
        (*(v351 + 56))(&v299[v297], 0, 1, v191);
        v299[v298] = v369;
        v299[v367] = v370;
        v300 = v347;
        swift_storeEnumTagMultiPayload();
        (*(*v294 + 312))(v299);

        (*(v346 + 8))(v299, v300);
        v220 = *(v296 + 8);
        v221 = v292;
        goto LABEL_149;
      }

      (*(v251 + 8))(v252, v253);
      v250 = v370;
      v240 = v368;
LABEL_128:
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      v256 = result;
      *&v382 = v191;
      *(&v382 + 1) = sub_1CF9E75D8();
      *&v383 = &type metadata for ContentStatus;
      *(&v383 + 1) = &type metadata for ContentStatus;
      v257 = swift_getTupleTypeMetadata();
      v258 = v257[12];
      v259 = v240;
      v260 = v257[16];
      v261 = v257[20];
      v262 = v345;
      v259(v345, v357, v191);
      (*(v351 + 56))(&v262[v258], 1, 1, v191);
      v262[v260] = v369;
      v262[v261] = v250;
      v263 = v347;
      swift_storeEnumTagMultiPayload();
      (*(*v256 + 312))(v262);

      (*(v346 + 8))(v262, v263);
      return 0;
    case 0xBu:
      v108 = *v76;
      v107 = *(v76 + 1);
      v109 = v76[16];
      v110 = type metadata accessor for ItemReconciliationHalf(0, v369, v370, v78);
      v111 = v368 + *(v110 + 64);
      v112 = *v111;
      v113 = *(v111 + 1);
      v114 = v111[16];
      if (v114 > 2)
      {
        if (v114 != 3)
        {
          if (v114 != 4 || v112 != 1 || v113 || v109 != 2)
          {
            goto LABEL_106;
          }

LABEL_105:
          result = 0;
          *v111 = v108;
          *(v111 + 1) = v107;
          v111[16] = v109;
          return result;
        }

        if (v109 != 2)
        {
          goto LABEL_106;
        }

        v223 = 3;
      }

      else
      {
        if (v114 != 1)
        {
          if (v114 == 2 && (v109 == 3 || v109 == 4 && __PAIR128__(v107, v108) < 2))
          {
            sub_1CF03D7A8(v112, v113, 2u);
            v115 = *(v110 + 36);
            v116 = *(v368 + v115);
            if ((v116 & 8) != 0)
            {
              *(v368 + v115) = v116 & 0xFFFFFFFFFFFFFFF7;
            }

            goto LABEL_105;
          }

LABEL_106:
          sub_1CF03D7A8(v108, v107, v109);
          return 3;
        }

        if (v109 != 2)
        {
          goto LABEL_106;
        }

        v223 = 1;
      }

      sub_1CF03D7A8(v112, v113, v223);
      goto LABEL_105;
    case 0xCu:
      v125 = *v76;
      v126 = v76[1];
      v127 = v368;
      v128 = v369;
      v129 = v370;
      if (v125 != 5 && *(v127 + *(type metadata accessor for ItemReconciliationHalf(0, v369, v370, v78) + 44)) != v125)
      {
        return 3;
      }

      v130 = type metadata accessor for ItemReconciliationHalf(0, v128, v129, v78);
      *(v127 + *(v130 + 44)) = v126;
      result = 0;
      if (((1 << v126) & 0x2E) == 0)
      {
        result = 0;
        *(v127 + *(v130 + 60)) = 0;
      }

      return result;
    case 0xDu:
      v164 = *(v76 + 1);
      v382 = *v76;
      v383 = v164;
      v165 = *(v76 + 3);
      v384 = *(v76 + 2);
      v385 = v165;
      v166 = v76[64];
      v167 = v76[65];
      v168 = v368;
      v169 = v369;
      v170 = v370;
      if (v166 == 1 && !v167)
      {
        goto LABEL_136;
      }

      v171 = (v168 + *(type metadata accessor for ItemReconciliationHalf(0, v369, v370, v78) + 68));
      v172 = v171[1];
      v374 = *v171;
      v375 = v172;
      v173 = v171[3];
      v376 = v171[2];
      v377 = v173;
      v379 = v173;
      v380 = v374;
      v381 = *(v171 + 2);
      v174 = *(&v172 + 1);
      v378 = v376;
      if (*(&v172 + 1) >> 60 == 11)
      {
        goto LABEL_136;
      }

      v175 = swift_weakLoadStrong();
      v176 = v175;
      if (v167)
      {
        if (!v175)
        {
          goto LABEL_136;
        }

        v177 = v356;
        TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
        v179 = v345;
        v180 = &v345[*(TupleTypeMetadata2 + 48)];
        (*(v351 + 16))(v345, v357, v177);
        v181 = v379;
        *v180 = v380;
        *(v180 + 2) = v381;
        *(v180 + 3) = v174;
        *(v180 + 2) = v378;
        *(v180 + 3) = v181;
        v182 = v347;
      }

      else
      {
        if (!v175)
        {
          goto LABEL_136;
        }

        v274 = v379;
        v179 = v345;
        *v345 = v380;
        *(v179 + 2) = v381;
        *(v179 + 3) = v174;
        *(v179 + 2) = v378;
        *(v179 + 3) = v274;
        v182 = v347;
      }

      swift_storeEnumTagMultiPayload();
      v275 = *(*v176 + 312);
      v373[0] = v374;
      v373[1] = v375;
      v373[2] = v376;
      v373[3] = v377;
      sub_1CF023C28(&v374, &v371);
      sub_1CF1AE1DC(v373, &v371);
      v275(v179);

      sub_1CEFCCC44(&v374, &unk_1EC4BF260, &unk_1CFA01B60);
      (*(v346 + 8))(v179, v182);
LABEL_136:
      v276 = (v168 + *(type metadata accessor for ItemReconciliationHalf(0, v169, v170, v78) + 68));
      v277 = v276[1];
      v374 = *v276;
      v375 = v277;
      v278 = v276[3];
      v376 = v276[2];
      v377 = v278;
      v279 = v385;
      v276[2] = v384;
      v276[3] = v279;
      v280 = v383;
      *v276 = v382;
      v276[1] = v280;
      sub_1CF023C28(&v382, v373);
      sub_1CEFCCC44(&v374, &unk_1EC4BF260, &unk_1CFA01B60);
      if (*(&v383 + 1) >> 60 == 11)
      {
        return 0;
      }

      sub_1CEFCCC44(&v382, &unk_1EC4BF260, &unk_1CFA01B60);
      return 1;
    case 0xEu:
      v94 = *v76;
      v96 = v364;
      v95 = v365;
      v97 = v368;
      (*(v364 + 16))(v59, v368, v365);
      v98 = (*(*(v363 - 8) + 48))(v59, 1);
      (*(v96 + 8))(v59, v95);
      if (v98 == 1)
      {
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 584);
      }

      v99 = swift_weakLoadStrong();
      v101 = v369;
      v100 = v370;
      if (!v99)
      {
        __break(1u);
LABEL_167:
        sub_1CF50EC84("/Library/Caches/com.apple.xbs/Sources/FileProviderTools/fssync/libfssync/interfaces/persistence/ReconciliationTable.swift", 121, 2, 508);
      }

      v102 = (*(*v99 + 152))(v99);

      v104 = *(type metadata accessor for ItemReconciliationHalf(0, v101, v100, v103) + 36);
      v105 = *(v97 + v104);
      result = 0;
      if ((((v102 & 0x4000) != 0) & v94) != 0)
      {
        if ((v105 & 0x80) != 0)
        {
          return result;
        }

        v106 = v105 | 0x80;
      }

      else
      {
        if ((v105 & 0x80) == 0)
        {
          return result;
        }

        v106 = v105 & 0xFFFFFFFFFFFFFF7FLL;
      }

LABEL_96:
      *(v97 + v104) = v106;
      return result;
    case 0xFu:
      v134 = type metadata accessor for ItemReconciliationHalf(0, v369, v370, v78);
      v135 = *(v134 + 36);
      v136 = v368;
      if ((*(v368 + v135) & 9) == 8)
      {
        goto LABEL_37;
      }

      v137 = ~*(v368 + v135) & 8 | *(v368 + v135) & 0xFFFFFFFFFFFFFFFELL;
LABEL_36:
      *(v136 + v135) = v137;
LABEL_37:
      result = 0;
      *(v136 + *(v134 + 40)) = 0;
      return result;
    case 0x10u:
      v93 = *(type metadata accessor for ItemReconciliationHalf(0, v369, v370, v78) + 60);
      result = 1;
      *(v368 + v93) = 1;
      return result;
    default:
      v79 = *v76;
      v81 = v364;
      v80 = v365;
      v82 = v368;
      (*(v364 + 16))(v71, v368, v365);
      v83 = (*(*(v363 - 8) + 48))(v71, 1);
      (*(v81 + 8))(v71, v80);
      if (v83 == 1)
      {
        goto LABEL_167;
      }

      v85 = v370;
      if ((v79 & ~*v354) != 0)
      {
        *v354 |= v79;
      }

      v86 = v79 & 0xFFFFFFFFFF7FFFEFLL;
      v87 = v369;
      if (qword_1EDEABDE0 != -1)
      {
        v318 = v369;
        v319 = v85;
        swift_once();
        v87 = v318;
        v85 = v319;
      }

      v88 = v86 & (qword_1EDEABDE8 | 0x409000000C000);
      v89 = type metadata accessor for ItemReconciliationHalf(0, v87, v85, v84);
      *(v82 + *(v89 + 40)) |= v88;
      v90 = *(v89 + 36);
      v91 = *(v82 + v90);
      if ((v91 & 9) == 0)
      {
        return 1;
      }

      *(v82 + v90) = v91 & 0xFFFFFFFFFFFFFFF6;
      return 1;
  }
}

uint64_t sub_1CF07CB20(uint64_t a1)
{
  v2 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v16 - v6);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *(v2 + 16);
  v12(&v16 - v10, v9);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 12)
  {
    (v12)(v4, v11, a1);
    v14 = v4[1];
    if (v14 != 5 && v14 != 2)
    {
      v16 = *(v4 + 8);
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (EnumCaseMultiPayload == 2)
  {
    (v12)(v7, v11, a1);
    v16 = *v7;
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload)
  {
LABEL_8:
    v16 = 0u;
    goto LABEL_9;
  }

  (v12)(v7, v11, a1);
  v16 = *(v7 + 8);
LABEL_9:
  (*(v2 + 8))(v11, a1);
  return v16;
}

BOOL sub_1CF07CD0C(uint64_t a1)
{
  if (!sub_1CF07CD80(a1) || *(v1 + *(type metadata accessor for ItemReconciliationHalf(0, *(a1 + 16), *(a1 + 32), v3) + 36)))
  {
    return 0;
  }

  v6 = v1 + *(a1 + 52);
  return *(v6 + *(type metadata accessor for ItemReconciliationHalf(0, *(a1 + 24), *(a1 + 40), v4) + 36)) == 0;
}

BOOL sub_1CF07CD80(uint64_t a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_1CF9E75D8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - v6;
  v8 = swift_getAssociatedTypeWitness();
  v9 = sub_1CF9E75D8();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v16 - v12;
  (*(v10 + 16))(&v16 - v12, v1, v9, v11);
  LODWORD(v8) = (*(*(v8 - 8) + 48))(v13, 1, v8);
  (*(v10 + 8))(v13, v9);
  if (v8 == 1)
  {
    return 0;
  }

  (*(v5 + 16))(v7, v1 + *(a1 + 52), v4);
  v14 = (*(*(AssociatedTypeWitness - 8) + 48))(v7, 1, AssociatedTypeWitness) != 1;
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_1CF07CFF8(void *a1)
{
  v2 = a1[5];
  v3 = a1[3];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v62 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v64 = swift_getAssociatedConformanceWitness();
  v50 = type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  v51 = sub_1CF9E75D8();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v48 - v4;
  v60 = a1;
  v5 = a1[4];
  v6 = a1[2];
  v7 = swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedTypeWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v10 = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = v7;
  v62 = v8;
  AssociatedConformanceWitness = v9;
  v64 = v10;
  v56 = type metadata accessor for FileItemVersion(255, &AssociatedTypeWitness);
  v57 = sub_1CF9E75D8();
  v55 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v54 = &v48 - v11;
  v52 = v3;
  v53 = v2;
  v58 = swift_getAssociatedTypeWitness();
  v59 = sub_1CF9E75D8();
  v12 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v14 = &v48 - v13;
  v15 = swift_getAssociatedTypeWitness();
  v16 = sub_1CF9E75D8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v48 - v19;
  v21 = v65;
  (*(v17 + 16))(&v48 - v19, v65, v16, v18);
  LODWORD(v15) = (*(*(v15 - 8) + 48))(v20, 1, v15);
  (*(v17 + 8))(v20, v16);
  v22 = v60;
  if (v15 == 1)
  {
    v23 = v59;
    (*(v12 + 16))(v14, v21 + *(v60 + 13), v59);
    v24 = (*(*(v58 - 8) + 48))(v14, 1);
    (*(v12 + 8))(v14, v23);
    if (v24 == 1)
    {
      sub_1CF24CD3C();
      swift_allocError();
      v26 = v25;
      AssociatedTypeWitness = 0;
      v62 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD000000000000011, 0x80000001CFA45930);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      v27 = v62;
      *v26 = AssociatedTypeWitness;
      *(v26 + 8) = v27;
      v28 = 5;
LABEL_13:
      *(v26 + 48) = v28;
      return swift_willThrow();
    }
  }

  if (*(v21 + *(v22 + 56)) == 4)
  {
    sub_1CF24CD3C();
    swift_allocError();
    v26 = v29;
    AssociatedTypeWitness = 0;
    v62 = 0xE000000000000000;
    sub_1CF9E7948();
    MEMORY[0x1D3868CC0](0xD000000000000014, 0x80000001CFA45950);
    swift_getWitnessTable();
    sub_1CF9E7FE8();
    v30 = v62;
    *v26 = AssociatedTypeWitness;
    *(v26 + 8) = v30;
    v28 = 6;
    goto LABEL_13;
  }

  if (sub_1CF07CD80(v22))
  {
    v32 = type metadata accessor for ItemReconciliationHalf(0, v6, v5, v31);
    v34 = v54;
    v33 = v55;
    v35 = v57;
    (*(v55 + 16))(v54, v21 + *(v32 + 48), v57);
    v36 = (*(*(v56 - 8) + 48))(v34, 1);
    (*(v33 + 8))(v34, v35);
    if (v36 == 1)
    {
      sub_1CF24CD3C();
      swift_allocError();
      v26 = v37;
      AssociatedTypeWitness = 0;
      v62 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA45990);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      v38 = AssociatedTypeWitness;
      v39 = v62;
      *v26 = 0;
LABEL_12:
      *(v26 + 8) = v38;
      *(v26 + 16) = v39;
      v28 = 7;
      goto LABEL_13;
    }
  }

  result = sub_1CF07CD80(v22);
  if (result)
  {
    v42 = v21 + *(v22 + 52);
    v43 = type metadata accessor for ItemReconciliationHalf(0, v52, v53, v41);
    v45 = v48;
    v44 = v49;
    v46 = v51;
    (*(v49 + 16))(v48, v42 + *(v43 + 48), v51);
    LODWORD(v42) = (*(*(v50 - 8) + 48))(v45, 1);
    result = (*(v44 + 8))(v45, v46);
    if (v42 == 1)
    {
      sub_1CF24CD3C();
      swift_allocError();
      v26 = v47;
      AssociatedTypeWitness = 0;
      v62 = 0xE000000000000000;
      sub_1CF9E7948();
      MEMORY[0x1D3868CC0](0xD00000000000001BLL, 0x80000001CFA45970);
      swift_getWitnessTable();
      sub_1CF9E7FE8();
      v38 = AssociatedTypeWitness;
      v39 = v62;
      *v26 = 1;
      goto LABEL_12;
    }
  }

  return result;
}

uint64_t sub_1CF07D89C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4, void *a5)
{
  v10 = a5[2];
  v12 = a5[4];
  v11 = a5[5];
  v62 = a5[3];
  v77 = v62;
  *&v78 = v10;
  v70 = v10;
  v61 = v11;
  *(&v78 + 1) = v11;
  v79 = v12;
  v69 = v12;
  v13 = type metadata accessor for ItemReconciliation(0, &v77);
  v72 = *(v13 - 1);
  v73 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v65 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v64 = &v60 - v16;
  v17 = sub_1CF9E75D8();
  MEMORY[0x1EEE9AC00](v17);
  v68 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v60 - v21;
  v66 = *a2;
  v23 = *a3;
  v25 = v24;
  v60 = v23;
  v26 = *(v24 + 16);
  v71 = a1;
  v67 = v26;
  (v26)(&v60 - v21, a1, v17, v20);
  v27 = *(a5 - 1);
  v28 = *(v27 + 48);
  v29 = v28(v22, 1, a5);
  v63 = v25;
  if (v29 == 1)
  {
    (*(v25 + 8))(v22, v17);
    v30 = 0uLL;
    v31 = 89;
    v32 = v74;
  }

  else
  {
    v32 = v74;
    sub_1CF07DE7C(a4, 1, a5, &v77);
    (*(v27 + 8))(v22, a5);
    if (v32)
    {
      return v34 & 1;
    }

    v31 = v77;
    if (v77 == 89)
    {
      v30 = 0uLL;
    }

    else
    {
      v30 = v78;
    }
  }

  v77 = v31;
  v78 = v30;
  sub_1CF07DE7C(a4, 1, a5, &v75);
  if (!v32)
  {
    v35 = vdup_n_s32(v75 == 89);
    v36.i64[0] = v35.u32[0];
    v36.i64[1] = v35.u32[1];
    v74 = 0;
    v75 = v75;
    v76 = vandq_s8(v76, vcgezq_s64(vshlq_n_s64(v36, 0x3FuLL)));
    v80 = v66;
    v37 = type metadata accessor for ItemReconciliationHalf(0, v70, v69, v33);
    LODWORD(v70) = sub_1CF07ECB8(&v77, &v75, &v80, v37);
    v38 = v68;
    v67(v68, v71, v17);
    if (v28(v38, 1, a5) == 1)
    {
      (*(v63 + 8))(v38, v17);
      v41 = 0uLL;
      v42 = 89;
      v44 = v72;
      v43 = v73;
      v45 = a4;
    }

    else
    {
      v47 = v64;
      sub_1CF07EE34(a5, v39, v64);
      v48 = (*(v27 + 8))(v38, a5);
      v45 = a4;
      v49 = (*(*a4 + 176))(v48);
      v43 = v73;
      v50 = v74;
      sub_1CF07DE7C(v49, 1, v73, &v77);
      v74 = v50;
      if (v50)
      {
        (*(v72 + 8))(v47, v43);

        return v34 & 1;
      }

      v44 = v72;
      (*(v72 + 8))(v47, v43);

      v42 = v77;
      if (v77 == 89)
      {
        v41 = 0uLL;
      }

      else
      {
        v41 = v78;
      }
    }

    v51 = v65;
    v77 = v42;
    v78 = v41;
    v52 = sub_1CF07EE34(a5, v40, v65);
    v53 = (*(*v45 + 176))(v52);
    v54 = v74;
    sub_1CF07DE7C(v53, 1, v43, &v75);
    (*(v44 + 8))(v51, v43);

    if (!v54)
    {
      v56 = vdup_n_s32(v75 == 89);
      v57.i64[0] = v56.u32[0];
      v57.i64[1] = v56.u32[1];
      v75 = v75;
      v76 = vandq_s8(v76, vcgezq_s64(vshlq_n_s64(v57, 0x3FuLL)));
      v80 = v60;
      v58 = type metadata accessor for ItemReconciliationHalf(0, v62, v61, v55);
      v59 = sub_1CF07ECB8(&v77, &v75, &v80, v58);
      v34 = v70 | v59;
    }
  }

  return v34 & 1;
}

void sub_1CF07DE7C(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X2>, void *a4@<X8>)
{
  v129 = a1;
  v136 = a4;
  v9 = a3[2];
  v8 = a3[3];
  v10 = a3[4];
  v134 = a3[5];
  v135 = v8;
  v137 = v8;
  v138 = v9;
  v139 = v134;
  v140 = v10;
  v11 = type metadata accessor for ItemReconciliation(0, &v137);
  v131 = *(v11 - 8);
  v132 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v130 = &v124 - v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = sub_1CF9E75D8();
  v133 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v124 - v16;
  if (a2)
  {
    v18 = a3;
    sub_1CF07CFF8(a3);
    if (v5)
    {
      return;
    }
  }

  else
  {
    v18 = a3;
  }

  v19 = type metadata accessor for ItemReconciliationHalf(0, v9, v10, v15);
  if (*(v4 + *(v19 + 64) + 16) == 2 || *(v4 + *(v19 + 52)) == 1)
  {
    goto LABEL_7;
  }

  v126 = *(v4 + *(v19 + 52));
  v127 = v19;
  v128 = v5;
  v21 = v133;
  v22 = v4;
  (v133[2])(v17, v4, v14);
  v23 = (*(*(AssociatedTypeWitness - 8) + 48))(v17, 1, AssociatedTypeWitness);
  (v21[1])(v17, v14);
  if (v23 == 1)
  {
    v25 = v22 + *(v18 + 13);
    if (*(v25 + *(type metadata accessor for ItemReconciliationHalf(0, v135, v134, v24) + 36)))
    {
LABEL_11:
      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v26 = qword_1EDEABDE8;
      v27 = v136;
      *v136 = 2;
      v27[1] = v26;
      v27[2] = 0;
      return;
    }

LABEL_7:
    v20 = v136;
    v136[1] = 0;
    v20[2] = 0;
    *v20 = 89;
    return;
  }

  v133 = v18;
  v141 = *(v22 + *(v18 + 15));
  v28 = v134;
  v29 = v135;
  v30 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v32 = swift_getAssociatedConformanceWitness();
  v137 = AssociatedTypeWitness;
  v138 = v30;
  v139 = AssociatedConformanceWitness;
  v140 = v32;
  type metadata accessor for ReconciliationID(255, &v137);
  sub_1CF9E6E58();
  swift_getWitnessTable();
  if ((sub_1CF9E7128() & 1) == 0)
  {
    goto LABEL_122;
  }

  v34 = v133;
  v35 = v22 + *(v133 + 13);
  v36 = type metadata accessor for ItemReconciliationHalf(0, v29, v28, v33);
  v38 = *(v35 + v36[19]);
  if ((v38 & 3) != 0)
  {
    goto LABEL_7;
  }

  v39 = *(v22 + v127[9]);
  v40 = v22;
  if ((v39 & 0x55) == 0)
  {
    v43 = v127[10];
    v44 = *(v22 + v43);
    v45 = *(v35 + v36[14]);
    if (v45 == 4)
    {
      v46 = v126;
      if (v126 == 2)
      {
        v47 = *(v35 + v36[11]);
        if (*(v35 + v36[11]))
        {
          goto LABEL_7;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v50 = *(v40 + v127[14]);
      v46 = v126;
      if (v50 != 3)
      {
        if (v50 == 6 && v45 == 6)
        {
          v47 = *(v35 + v36[11]);
        }

        else
        {
          v47 = 5;
        }

        goto LABEL_40;
      }

      if (v126 == 2)
      {
        goto LABEL_7;
      }
    }

    v47 = 0;
LABEL_40:
    v51 = 1843460;
    v135 = v40;
    if ((v44 & 0x10000000000) != 0)
    {
      v54 = *(v40 + *(v34 + 56));
      if (v54 == 4)
      {
        __break(1u);
LABEL_183:
        __break(1u);
        goto LABEL_184;
      }

      if (!v46 && v54 == 2)
      {
        goto LABEL_51;
      }
    }

    if (v47 > 2)
    {
      if (v47 == 3)
      {
        if ((*(v35 + v36[10]) & 8) == 0 && (*(v35 + v36[9]) & 0x51) == 0)
        {
          goto LABEL_44;
        }

        v51 = 1843456;
        if (!v44)
        {
          if ((~v38 & 0xC) != 0)
          {
            goto LABEL_7;
          }

          v125 = v45;
          v134 = v43;
LABEL_94:
          v53 = v36;
          v55 = 0;
LABEL_95:
          if (sub_1CF07CD80(v34) && (*(v35 + v53[9]) & 1) == 0)
          {
            v79 = v51 | 0x402;
            if ((v55 & 2) == 0)
            {
              v79 = v51;
            }

            v80 = v79 | ((v55 & 1) << 10);
            v81 = (v55 >> 4) & 1;
            if (v44 != 0x10000)
            {
              LODWORD(v81) = 1;
            }

            if (v81)
            {
              v82 = v80;
            }

            else
            {
              v82 = v80 | 0x1000;
            }

            v83 = v127;
            v84 = v135;
            if ((v44 & 0x100000000000) != 0 && !*(v135 + v127[11]))
            {
              v82 |= 0x4000uLL;
            }

            v85 = *(v135 + v127[19]);
            if ((v38 & 0xC) == 4 || (v85 & 4) != 0)
            {
              if ((v85 & 0x30) == 0)
              {
                if (qword_1EDEABDE0 != -1)
                {
                  v123 = v82;
                  swift_once();
                  v82 = v123;
                }

                v106 = v55 & 0xFFFFDFFFFFFEF6E7 & (qword_1EDEABDE8 | 0x6409000000C000);
                if (v106)
                {
                  v107 = v136;
                  *v136 = 1;
                  v107[1] = v106;
                  v107[2] = v82;
                  return;
                }

                goto LABEL_7;
              }

              v124 = (v38 & 0xC);
              v129 = v82;
            }

            else
            {
              v129 = v82;
              v124 = (v38 & 0xC);
              if (v124 == 12)
              {
                v86 = unk_1F4BEC680;
                if ((unk_1F4BEC680 & ~qword_1F4BEC678) == 0)
                {
                  v86 = 0;
                }

                v87 = qword_1F4BEC688;
                if ((qword_1F4BEC688 & ~(v86 | qword_1F4BEC678)) == 0)
                {
                  v87 = 0;
                }

                v55 |= v87 | v86 | qword_1F4BEC678;
              }
            }

            if ((v55 & 0x200000010918) != 0)
            {
              v97 = v130;
              sub_1CF07EE34(v34, v74, v130);
              v98 = v132;
              v99 = sub_1CF07F1A0(v132);
              (*(v131 + 8))(v97, v98);
              v84 = v135;
              v83 = v127;
              if (v99)
              {
                if (*(v35 + v53[11]))
                {
                  if (qword_1EDEABDE0 != -1)
                  {
                    swift_once();
                  }

                  v100 = v55 & 0xFFFFDFFFFFFEF6E7 & (qword_1EDEABDE8 | 0x6409000000C000);
                  if (!v100)
                  {
                    goto LABEL_7;
                  }

LABEL_145:
                  v101 = v136;
                  *v136 = 1;
                  v101[1] = v100;
                  v101[2] = v129;
                  return;
                }
              }
            }

            if ((v55 & 8) == 0)
            {
LABEL_143:
              if ((v55 & 0x10) != 0)
              {
                v105 = v136;
                *v136 = xmmword_1CFA1B840;
                v105[2] = v129;
                return;
              }

              v100 = *(v84 + v134);
              goto LABEL_145;
            }

            v102 = v129 & 0xFFFFF;
            if (v126 <= 1)
            {
              if (v126)
              {
                goto LABEL_7;
              }
            }

            else if (v126 != 3)
            {
              v103 = *(v84 + *(v34 + 56));
              if (v103 == 1)
              {
                v118 = *(v84 + v83[17] + 24) >> 60 == 11;
                goto LABEL_178;
              }

              if (v103 != 4)
              {
                if (*(v135 + v127[17] + 24) >> 60 == 11)
                {
                  v104 = &unk_1F4BEC690;
LABEL_175:
                  sub_1CEFF5464(v104, &v137, v72, v73, v74, v75, v76, v77, v78);
                  v116 = v136;
                  v117 = v137 & v55;
                  *v136 = 23;
                  v116[1] = v117;
                  v116[2] = v102;
                  return;
                }

                v118 = 0;
                v84 = v135;
LABEL_178:
                if (v124 == 12 && !v118)
                {
                  sub_1CEFF5464(&stru_1F4BEC6D0, &v137, v72, v73, v74, v75, v76, v77, v78);
                  v119 = v136;
                  v120 = v137 | v44;
                  *v136 = 1;
                  v119[1] = v120;
                  v119[2] = v129;
                  return;
                }

                goto LABEL_143;
              }

              goto LABEL_186;
            }

            if (v125 == 3)
            {
              goto LABEL_7;
            }

            v115 = *(v84 + *(v34 + 56));
            if (v115 == 1)
            {
              v121 = sub_1CEFF8C8C();
              v122 = v136;
              *v136 = 6;
              v122[1] = v55 & 0x10;
              v122[2] = v121;
              return;
            }

            if (v115 != 4)
            {
              v104 = &unk_1F4BEC700;
              goto LABEL_175;
            }

LABEL_187:
            __break(1u);
            return;
          }

          if (sub_1CF07CD80(v34) && (v88 = *(v35 + v53[9]), (v88 & 1) != 0) && (v44 & 8) == 0 && ((v89 = (*(*v129 + 152))(), (v88 & 0x80) == 0) || (v89 & 0x4000) == 0 || (v55 & 2) == 0) || (v90 = v135, v91 = *(v135 + v127[14]), v91 == 5))
          {
LABEL_122:
            v92 = v136;
            v136[1] = 0;
            v92[2] = 0;
            *v92 = 89;
            return;
          }

          v93 = *(v135 + *(v34 + 56));
          if (v93 == 1)
          {
            v96 = sub_1CF07CD80(v34);
            v90 = v135;
            if (v91 != 6 && v96 && !v44)
            {
              goto LABEL_7;
            }

            goto LABEL_169;
          }

          if (v93 != 4)
          {
            if ((v126 - 3) < 2)
            {
              goto LABEL_7;
            }

            if (v126)
            {
              if (*(v135 + v127[14]) || (*(v135 + v127[15]) & 1) == 0)
              {
                if (sub_1CF07CD80(v34) && (*(v35 + v53[13]) | 4) == 4)
                {
                  goto LABEL_122;
                }

                v90 = v135;
                if (*(v135 + v127[17] + 24) >> 60 == 11)
                {
                  if (!*(v135 + v127[11]))
                  {
                    goto LABEL_122;
                  }

LABEL_128:
                  v94 = sub_1CEFF8C8C();
                  v95 = v136;
                  *v136 = xmmword_1CFA04E90;
                  v95[2] = v94;
                  return;
                }
              }
            }

            else if (v93 == 2)
            {
              goto LABEL_128;
            }

LABEL_169:
            v112 = *(v90 + v134);
            v113 = sub_1CEFF8C8C();
            v114 = v136;
            *v136 = 0;
            v114[1] = v112;
            v114[2] = v113;
            return;
          }

          goto LABEL_183;
        }

        v125 = v45;
        v134 = v43;
        goto LABEL_74;
      }

      if (v47 != 5)
      {
        v64 = unk_1F4BEC568;
        if ((unk_1F4BEC568 & ~qword_1F4BEC560) == 0)
        {
          v64 = 0;
        }

        v65 = v64 | qword_1F4BEC560;
        v67 = qword_1F4BEC570;
        v66 = unk_1F4BEC578;
        if ((qword_1F4BEC570 & ~v65) == 0)
        {
          v67 = 0;
        }

        v68 = v67 | v65;
        if ((unk_1F4BEC578 & ~v68) == 0)
        {
          v66 = 0;
        }

        v69 = v66 | v68;
        v70 = v136;
        *v136 = xmmword_1CFA04E80;
        v70[2] = v69;
        return;
      }
    }

    else
    {
      if (!v47)
      {
LABEL_51:
        v125 = v45;
        v134 = v43;
        v53 = v36;
        v55 = 24;
        goto LABEL_95;
      }

      if (v47 == 1)
      {
LABEL_44:
        v52 = *(v40 + *(v34 + 56));
        if ((v44 & 0x10000) != 0)
        {
          if (v52 != 1)
          {
            if (v52 != 4)
            {
              v71 = v136;
              *v136 = xmmword_1CFA00360;
              v71[2] = 1843456;
              return;
            }

            goto LABEL_185;
          }
        }

        else if (v52 != 1)
        {
          v125 = v45;
          v134 = v43;
          if (v52 == 4)
          {
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
            goto LABEL_187;
          }

          v53 = v36;
          v51 = 1876224;
          goto LABEL_88;
        }

        v125 = v45;
        v134 = v43;
        v53 = v36;
        v51 = 1876244;
LABEL_88:
        v55 = 16;
        goto LABEL_95;
      }
    }

    v134 = v43;
    v125 = v45;
    if (v46 != 4 && (v46 || (v56 = v130, v124 = v36, sub_1CF07EE34(v34, v37, v130), v57 = v132, v58 = sub_1CF07F1A0(v132), v59 = v56, v43 = v134, (*(v131 + 8))(v59, v57), v40 = v135, v36 = v124, v58)) && (*(v35 + v36[13]) & 0xFB) != 0)
    {
      v51 = 1876224;
      if (!v44)
      {
LABEL_62:
        if ((~v38 & 0xC) != 0)
        {
          goto LABEL_7;
        }

        goto LABEL_94;
      }
    }

    else
    {
      v51 = 1876224;
      if ((v44 & 8) != 0)
      {
        v55 = v44 & 0xFFFFFFFFFFFFFFF7;
        if ((v44 & 0xFFFFFFFFFFFFFFF7) == 0)
        {
          v108 = *(v40 + v43);
          v109 = v136;
          *v136 = 1;
          v109[1] = v108;
          v109[2] = 794880;
          return;
        }

        v53 = v36;
        goto LABEL_95;
      }

      if (!v44)
      {
        goto LABEL_62;
      }
    }

LABEL_74:
    v53 = v36;
    v55 = v44;
    goto LABEL_95;
  }

  if ((v39 & 0x51) == 0)
  {
    goto LABEL_7;
  }

  if ((*(v22 + v127[9]) & 0x41) == 0x40)
  {
    if (qword_1EDEABDE0 != -1)
    {
      swift_once();
    }

    v41 = qword_1EDEABDE8;
    v42 = v136;
    *v136 = 12;
    v42[1] = v41;
    v42[2] = 1310976;
  }

  else
  {
    if ((*(v35 + v36[9]) & 0x51) != 0)
    {
      goto LABEL_11;
    }

    v48 = sub_1CF07CD80(v34);
    if ((v39 & 0x10) != 0)
    {
      if (!v48)
      {
        goto LABEL_7;
      }

      if (qword_1EDEABDE0 != -1)
      {
        swift_once();
      }

      v60 = qword_1EDEABDE8;
      v61 = unk_1F4BEC4B8;
      if ((unk_1F4BEC4B8 & ~qword_1F4BEC4B0) == 0)
      {
        v61 = 0;
      }

      v62 = v61 | qword_1F4BEC4B0;
      v63 = v136;
      *v136 = 2;
      v63[1] = v60;
      v63[2] = v62;
    }

    else
    {
      if (v48)
      {
        if ((v39 & 2) != 0)
        {
          if (qword_1EDEABDE0 != -1)
          {
            swift_once();
          }

          v49 = qword_1EDEABDE8;
        }

        else
        {
          if (qword_1EDEABDE0 != -1)
          {
            swift_once();
          }

          v49 = qword_1EDEABDE8;
        }
      }

      else
      {
        if (qword_1EDEABDE0 != -1)
        {
          swift_once();
        }

        v49 = qword_1EDEABDE8;
      }

      v110 = sub_1CEFF8C8C();
      v111 = v136;
      *v136 = 2;
      v111[1] = v49;
      v111[2] = v110;
    }
  }
}

uint64_t sub_1CF07ECB8(unsigned __int8 *a1, unsigned __int8 *a2, void *a3, uint64_t a4)
{
  v5 = *a2;
  if (v5 == 89)
  {
    v6 = v4 + *(a4 + 64);
    v7 = *(v6 + 16);
    if (v7 <= 1)
    {
      sub_1CF03D7A8(*v6, *(v6 + 8), v7);
      result = 0;
      *v6 = xmmword_1CF9FD920;
      *(v6 + 16) = 4;
      return result;
    }

    return 0;
  }

  v9 = *a1;
  v10 = *(a2 + 2);
  if (v9 != 89 && qword_1CFA1C4B0[v5] == qword_1CFA1C4B0[v9])
  {
    v11 = *(a1 + 2);
    v12 = v4 + *(a4 + 64);
    if (*(v12 + 16) == 1)
    {
      v14 = (v10 & v11) == 0;
    }

    else
    {
      v13 = *(a2 + 2);
      if (*(v12 + 16))
      {
        goto LABEL_13;
      }

      v11 &= ~*v12;
      v14 = (v11 & v10) == 0;
    }

    v15 = v10 & ~v11;
    if (v14)
    {
      v13 = *(a2 + 2);
    }

    else
    {
      v13 = v15;
    }

LABEL_13:
    v16 = (v10 & 2) == 0 || (*a3 & 2) == 0;
    v17 = v13 | 2;
    if (v16)
    {
      v17 = v13;
    }

    if ((v10 & 0x400) == 0 || (*a3 & 3) == 0)
    {
      v10 = v17;
    }

    else
    {
      v10 = v17 | 0x400;
    }
  }

  v19 = v4 + *(a4 + 64);
  v20 = *v19;
  v21 = *(v19 + 8);
  v22 = *(v19 + 16);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      return 0;
    }

    if (v22 != 3)
    {
      if (v10)
      {
LABEL_28:
        *v19 = v10;
        *(v19 + 8) = 0;
        result = 1;
        *(v19 + 16) = 0;
        return result;
      }

      goto LABEL_34;
    }

LABEL_33:
    sub_1CF03D7A8(v20, v21, v22);
    if (v10)
    {
      goto LABEL_28;
    }

LABEL_34:
    *v19 = 0;
    *(v19 + 8) = 0;
    result = 1;
    *(v19 + 16) = 1;
    return result;
  }

  if (*(v19 + 16))
  {
    goto LABEL_33;
  }

  sub_1CF03D7A8(v20, v21, 0);
  result = 0;
  if (v10)
  {
    *v19 = v10;
    *(v19 + 8) = 0;
    *(v19 + 16) = 0;
  }

  else
  {
    *v19 = 0;
    *(v19 + 8) = 0;
    *(v19 + 16) = 1;
  }

  return result;
}

uint64_t sub_1CF07EE34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v4 = v3;
  v47 = a3;
  v6 = *(a1 + 32);
  v7 = *(a1 + 16);
  v8 = type metadata accessor for ItemReconciliationHalf(0, v7, v6, a2);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v42 - v10;
  v45 = &v42 - v10;
  v12 = *(a1 + 40);
  v13 = *(a1 + 24);
  v15 = type metadata accessor for ItemReconciliationHalf(0, v13, v12, v14);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v46 = &v42 - v17;
  (*(v18 + 16))(v16);
  (*(v9 + 16))(v11, v4, v8);
  v19 = *(a1 + 60);
  v56[0] = *(v4 + *(a1 + 56));
  v42 = *(v4 + v19);
  *&v20 = v7;
  *(&v20 + 1) = v13;
  v21 = v13;
  v55 = v42;
  v22 = v6;
  *&v23 = v6;
  *(&v23 + 1) = v12;
  v49 = v20;
  v50 = v23;
  v44 = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v43 = v12;
  v25 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v27 = swift_getAssociatedConformanceWitness();
  v28 = v42;

  v51 = AssociatedTypeWitness;
  v52 = v25;
  v53 = AssociatedConformanceWitness;
  v54 = v27;
  type metadata accessor for ReconciliationID(255, &v51);
  v29 = sub_1CF9E6E58();
  v51 = v25;
  v52 = AssociatedTypeWitness;
  v53 = v27;
  v54 = AssociatedConformanceWitness;
  v30 = type metadata accessor for ReconciliationID(0, &v51);
  WitnessTable = swift_getWitnessTable();
  v33 = sub_1CF054A5C(sub_1CF95EA1C, v48, v29, v30, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v32);
  v28, v34, v35, v36, v37, v38, v39, v40;
  return sub_1CF023FF0(v46, v45, v56, v33, *(v4 + *(a1 + 64)), *(v4 + *(a1 + 64) + 8), *(v4 + *(a1 + 68)), *(v4 + *(a1 + 72)), v47, *(v4 + *(a1 + 76)), *(v4 + *(a1 + 80)), v21, v44, v43, v22);
}

BOOL sub_1CF07F1A0(uint64_t a1)
{
  if (!sub_1CF07CD80(a1) || *(v1 + *(type metadata accessor for ItemReconciliationHalf(0, *(a1 + 16), *(a1 + 32), v3) + 68) + 24) >> 60 == 11)
  {
    return 0;
  }

  v6 = v1 + *(a1 + 52);
  return *(v6 + *(type metadata accessor for ItemReconciliationHalf(0, *(a1 + 24), *(a1 + 40), v4) + 52)) == 0;
}

uint64_t sub_1CF07F238()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 96);
  v5[0] = *(*v0 + 80);
  v5[1] = v2;
  v3 = type metadata accessor for ItemReconciliation(0, v5);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  return v0;
}

uint64_t sub_1CF07F2E4()
{
  sub_1CF07F238();

  return swift_deallocClassInstance();
}

void sub_1CF07F38C(id a1@<X1>, char a2@<W0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  if (a2 <= 0x1Eu)
  {
    if (a2 != 28 && a2 != 29)
    {
      if (a2 == 30)
      {
        a6[3] = &type metadata for Filename;
        v10 = [a1 stringAtIndex_];
        v11 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v13 = v12;

        *a6 = v11;
        a6[1] = v13;
        return;
      }

      goto LABEL_14;
    }

LABEL_17:
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    v17 = *(swift_getAssociatedConformanceWitness() + 8);
    v18 = *(v17 + 16);
    a6[3] = AssociatedTypeWitness;
    __swift_allocate_boxed_opaque_existential_0(a6);
    v18(a1, a3, AssociatedTypeWitness, v17);
    if (v6)
    {
      __swift_deallocate_boxed_opaque_existential_0(a6);
    }

    return;
  }

  if (a2 > 0x20u)
  {
    if (a2 != 33 && a2 != 34)
    {
LABEL_14:
      sub_1CF07F730(a2, a1, a3, a6);
      return;
    }

    goto LABEL_17;
  }

  if (a2 != 31)
  {
    if (a2 == 32)
    {
      v9 = [a1 unsignedIntAtIndex_];
      a6[3] = MEMORY[0x1E69E7668];
      *a6 = v9;
      return;
    }

    goto LABEL_14;
  }

  v14 = [a1 longLongAtIndex_];
  a6[3] = MEMORY[0x1E69E76D8];
  if (v14 < 0)
  {
    __break(1u);
  }

  else
  {
    *a6 = v14;
  }
}

uint64_t sub_1CF07F5FC(uint64_t a1)
{
  v2 = *v1;
  sub_1CF9E81D8();
  sub_1CF07F640(v4, v2);
  return sub_1CF9E8228();
}

void sub_1CF07F640(uint64_t a1, uint64_t a2)
{
  if (a2 <= 0x1Eu)
  {
    switch(a2)
    {
      case 0x1Cu:
        v2 = 0;
        goto LABEL_20;
      case 0x1Du:
        v2 = 1;
        goto LABEL_20;
      case 0x1Eu:
        v2 = 2;
        goto LABEL_20;
    }
  }

  else if (a2 > 0x20u)
  {
    if (a2 == 33)
    {
      v2 = 6;
      goto LABEL_20;
    }

    if (a2 == 34)
    {
      v2 = 7;
      goto LABEL_20;
    }
  }

  else
  {
    if (a2 == 31)
    {
      v2 = 4;
      goto LABEL_20;
    }

    if (a2 == 32)
    {
      v2 = 5;
LABEL_20:
      MEMORY[0x1D386A470](v2);
      return;
    }
  }

  v3 = a2;
  MEMORY[0x1D386A470](3);
  sub_1CF07FC44(v3);
  v5 = v4;
  sub_1CF9E69C8();

  v5, v6, v7, v8, v9, v10, v11, v12;
}

void sub_1CF07F730(char a1@<W0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = sub_1CF9E5CF8();
  v10 = *(v9 - 8);
  *&v12 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v14 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(a1)
  {
    case 1:
    case 3:
    case 10:
    case 11:
    case 12:
    case 17:
    case 18:
    case 21:
    case 22:
    case 27:
      v15 = [a2 BOOLAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E6370];
      *a4 = v15;
      return;
    case 2:
    case 15:
      v20 = [a2 longLongAtIndex_];
      v21 = MEMORY[0x1E69E6530];
      goto LABEL_22;
    case 4:
      v35 = [a2 intAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E75F8];
      if ((v35 & 0x80000000) != 0)
      {
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
        JUMPOUT(0x1CF07FBD4);
      }

      if (HIWORD(v35))
      {
        goto LABEL_37;
      }

      *a4 = v35;
      return;
    case 5:
    case 6:
    case 7:
      v17 = v11;
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v18 = [a2 dateAtIndex_];
      sub_1CF9E5CB8();

      *(a4 + 24) = v17;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a4);
      (*(v10 + 32))(boxed_opaque_existential_0, v14, v17);
      return;
    case 8:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v20 = sub_1CF1E02D0(a3);
      if (v4)
      {
        return;
      }

      v21 = &type metadata for Tags;
LABEL_22:
      *(a4 + 24) = v21;
      *a4 = v20;
      return;
    case 9:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v20 = [a2 unsignedLongLongAtIndex_];
      v21 = MEMORY[0x1E69E76D8];
      goto LABEL_22;
    case 13:
    case 16:
    case 25:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v16 = [a2 unsignedIntAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E7668];
      *a4 = v16;
      return;
    case 14:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v26 = sub_1CF1E0144(a3);
      if (!v4)
      {
        v27 = v26;
        *(a4 + 24) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC4BE4B8, &qword_1CFA0F9C0);
        *a4 = v27;
      }

      return;
    case 19:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v28 = [a2 stringAtIndex_];
      v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
      v31 = v30;

      v32 = &type metadata for Filename;
      goto LABEL_34;
    case 20:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v37 = [a2 dataAtIndex_];
      v29 = sub_1CF9E5B88();
      v31 = v38;

      v32 = MEMORY[0x1E6969080];
      goto LABEL_34;
    case 23:
      v36 = [a2 longLongAtIndex_];
      *(a4 + 24) = MEMORY[0x1E69E76D8];
      if ((v36 & 0x8000000000000000) != 0)
      {
        goto LABEL_36;
      }

      *a4 = v36;
      return;
    case 24:
      if ([a2 isNullAtIndex_])
      {
        goto LABEL_31;
      }

      v22 = [a2 unsignedLongLongAtIndex_];
      v23 = v22;
      v24 = HIDWORD(v22);
      type metadata accessor for NSFileProviderTypeAndCreator(0);
      *(a4 + 24) = v25;
      *a4 = v24;
      *(a4 + 4) = v23;
      return;
    case 26:
      if ([a2 isNullAtIndex_])
      {
LABEL_31:
        *a4 = 0u;
        *(a4 + 16) = 0u;
      }

      else
      {
        v33 = [a2 stringAtIndex_];
        v29 = _sSo28NSFileProviderItemIdentifiera04FileB6DaemonE15parseableStringSSvg_0();
        v31 = v34;

        v32 = MEMORY[0x1E69E6158];
LABEL_34:
        *(a4 + 24) = v32;
        *a4 = v29;
        *(a4 + 8) = v31;
      }

      return;
    default:
      *(a4 + 24) = &type metadata for FileItemKind;
      sub_1CEFEC210(a3, a4);
      if (v4)
      {
        __swift_deallocate_boxed_opaque_existential_0(a4);
      }

      return;
  }
}

unint64_t sub_1CF07FC44(char a1)
{
  result = 1684957547;
  switch(a1)
  {
    case 1:
      result = 0x6C617461645F7369;
      break;
    case 2:
      result = 1702521203;
      break;
    case 3:
      result = 0x656B636F6C5F7369;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x6E6F697461657263;
      break;
    case 6:
      result = 0xD000000000000019;
      break;
    case 7:
      result = 0x6573755F7473616CLL;
      break;
    case 8:
      result = 0x617461645F676174;
      break;
    case 9:
      result = 0x657469726F766166;
      break;
    case 10:
      result = 0x616B6361705F7369;
      break;
    case 11:
      result = 0x65646469685F7369;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    case 13:
      result = 0xD000000000000010;
      break;
    case 14:
    case 18:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0x6C61636973796870;
      break;
    case 16:
      result = 0x74636976655F7369;
      break;
    case 17:
      result = 0x656E6E69705F7369;
      break;
    case 19:
      result = 0xD000000000000016;
      break;
    case 20:
      result = 0x69746E6172617571;
      break;
    case 21:
      result = 0x72636E79735F7369;
      break;
    case 22:
      result = 0x726F6E67695F7369;
      break;
    case 23:
      result = 0xD000000000000010;
      break;
    case 24:
      result = 0x657079745F736FLL;
      break;
    case 25:
      result = 0x756F635F6B6E696CLL;
      break;
    case 26:
      result = 0xD000000000000018;
      break;
    case 27:
      result = 0xD000000000000010;
      break;
    default:
      return result;
  }

  return result;
}

BOOL sub_1CF07FFF4(char a1, char a2)
{
  if (a1 <= 0x1Eu)
  {
    if (a1 == 28)
    {
      return a2 == 28;
    }

    if (a1 == 29)
    {
      return a2 == 29;
    }

    if (a1 != 30)
    {
      goto LABEL_18;
    }

    return a2 == 30;
  }

  if (a1 <= 0x20u)
  {
    if (a1 != 31)
    {
      if (a1 == 32)
      {
        return a2 == 32;
      }

      goto LABEL_18;
    }

    return a2 == 31;
  }

  if (a1 == 33)
  {
    return a2 == 33;
  }

  if (a1 == 34)
  {
    return a2 == 34;
  }

LABEL_18:
  if ((a2 - 28) < 7u)
  {
    return 0;
  }

  v3 = sub_1CF07FC44(a1);
  v5 = v4;
  v7 = sub_1CF07FC44(a2);
  v13 = v6;
  if (v3 == v7 && v5 == v6)
  {
    v5, v6, v7, v8, v9, v10, v11, v12;
    v13, v14, v15, v16, v17, v18, v19, v20;
    return 1;
  }

  else
  {
    v22 = sub_1CF9E8048();
    v5, v23, v24, v25, v26, v27, v28, v29;
    v13, v30, v31, v32, v33, v34, v35, v36;
    return v22 & 1;
  }
}

uint64_t sub_1CF08016C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v118 = a1;
  v89 = a6;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *&v122 = AssociatedTypeWitness;
  *(&v122 + 1) = v11;
  v95 = swift_getAssociatedConformanceWitness();
  v96 = AssociatedConformanceWitness;
  *&v123 = AssociatedConformanceWitness;
  *(&v123 + 1) = v95;
  v13 = type metadata accessor for FileItemVersion(0, &v122);
  v91 = *(v13 - 8);
  v92 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v87 - v14;
  v15 = swift_getAssociatedTypeWitness();
  v101 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v99 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v87 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v105 = &v87 - v20;
  v88 = a4;
  v90 = a2;
  v21 = swift_getAssociatedConformanceWitness();
  v107 = v15;
  v98 = v21;
  v108 = type metadata accessor for ItemStateVersion(0, v15, v21, v22);
  MEMORY[0x1EEE9AC00](v108);
  v97 = &v87 - v23;
  v114 = v11;
  v109 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v94 = &v87 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v103 = &v87 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v104 = &v87 - v29;
  v113 = AssociatedTypeWitness;
  v106 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v30);
  v93 = &v87 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v110 = &v87 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v111 = &v87 - v35;
  v116 = sub_1CF080DBC();
  *&v122 = &_s9SQLFieldsON;
  v36 = a3;
  *(&v122 + 1) = a3;
  *&v123 = v116;
  *(&v123 + 1) = a5;
  v37 = type metadata accessor for SQLCodableAccessorWrapper(0, &v122);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = (&v87 - v39);
  v100 = type metadata accessor for ItemMetadata(0);
  MEMORY[0x1EEE9AC00](v100);
  v42 = &v87 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v87 - v44;
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v87 - v47;
  v115 = v36;
  sub_1CF021034(sub_1CEFED338, 0, v36, &_s9SQLFieldsON, a5, v116, v40);
  WitnessTable = swift_getWitnessTable();
  v50 = v117;
  sub_1CF080E10(v40, v37, WitnessTable, v48);
  if (v50)
  {
    return (*(v38 + 8))(v40, v37);
  }

  v87 = v42;
  v116 = v48;
  v117 = a5;
  v52 = v114;
  (*(v38 + 8))(v40, v37);
  v53 = v113;
  if (swift_dynamicCastMetatype())
  {
    LOBYTE(v138[0]) = 31;
    v54 = v115;
    v55 = v117;
    sub_1CF0230B4(v138, MEMORY[0x1E69E76D8], v115, MEMORY[0x1E69E76D8], v117);
    v59 = v54;
    v60 = *&v119[0];
    LOBYTE(v121[0]) = 32;
    sub_1CF0230B4(v121, MEMORY[0x1E69E7668], v59, MEMORY[0x1E69E7668], v55);
    v61 = v138[0];
    v62 = v45;
    sub_1CEFF4408(v116, v45);
    v63 = *v45;
    if (v63 == 1)
    {
      v64 = 0;
      v65 = 0;
    }

    else
    {
      v65 = 0;
      v64 = 0;
      if (v63 != 2)
      {
        v71 = v61;
        v66 = 1;
        if (!*(v62 + v100[20]))
        {
          if (*(v62 + v100[28]))
          {
            v64 = 0;
          }

          else
          {
            v66 = 0;
            v64 = *(v62 + v100[26]);
          }

          v65 = v71;
        }

        goto LABEL_9;
      }
    }

    v66 = 1;
LABEL_9:
    sub_1CF06DA00(v62);
    *&v122 = v60;
    DWORD2(v122) = v65;
    *&v123 = v64;
    BYTE8(v123) = v66;
    swift_dynamicCast();
    v58 = v106;
    v57 = v112;
    goto LABEL_10;
  }

  LOBYTE(v122) = 33;
  v56 = v110;
  sub_1CF0230B4(&v122, v53, v115, v53, v117);
  v57 = v112;
  v58 = v106;
  (*(v106 + 32))(v111, v56, v53);
LABEL_10:
  v67 = v109;
  if (swift_dynamicCastMetatype())
  {
    LOBYTE(v122) = 29;
    v68 = v115;
    v69 = v117;
    sub_1CF0230B4(&v122, v107, v115, v107, v117);
    LOBYTE(v119[0]) = 30;
    sub_1CF0230B4(v119, &type metadata for Filename, v68, &type metadata for Filename, v69);
    v110 = 0;
    v119[0] = v122;
    v72 = v107;
    ItemStateVersion.init(parentID:filename:)(v105, v119, v107, v98, v97);
    swift_dynamicCast();
  }

  else
  {
    LOBYTE(v122) = 34;
    v70 = v103;
    sub_1CF0230B4(&v122, v52, v115, v52, v117);
    v110 = 0;
    (*(v67 + 32))(v104, v70, v52);
    v72 = v107;
    v57 = v112;
  }

  LOBYTE(v122) = 28;
  v73 = v115;
  v74 = v117;
  v75 = v110;
  sub_1CF0230B4(&v122, v72, v115, v72, v117);
  if (v75)
  {
    sub_1CF06DA00(v116);
    (*(v109 + 8))(v104, v114);
    return (*(v58 + 8))(v111, v53);
  }

  else
  {
    LOBYTE(v122) = 29;
    sub_1CF0230B4(&v122, v72, v73, v72, v74);
    v76 = v114;
    v77 = *(v58 + 16);
    v110 = 0;
    v78 = v93;
    v77(v93, v111, v53);
    v79 = v94;
    (*(v109 + 16))(v94, v104, v76);
    sub_1CF023878(v78, 0, v79, 0, 0, 0, v53, v76, v57, v96, v95);
    v139 = 30;
    v80 = v110;
    sub_1CF0230B4(&v139, &type metadata for Filename, v115, &type metadata for Filename, v74);
    v81 = v101;
    if (v80)
    {
      (*(v91 + 8))(v57, v92);
      v82 = *(v81 + 8);
      v83 = v107;
      v82(v99, v107);
      v82(v102, v83);
      v84 = v116;
    }

    else
    {
      v121[0] = v138[0];
      v121[1] = v138[1];
      v85 = v116;
      v86 = v87;
      sub_1CEFF4408(v116, v87);
      sub_1CEFE528C(&v122);
      v119[12] = v134;
      v119[13] = v135;
      v119[14] = v136;
      v120 = v137;
      v119[8] = v130;
      v119[9] = v131;
      v119[10] = v132;
      v119[11] = v133;
      v119[4] = v126;
      v119[5] = v127;
      v119[6] = v128;
      v119[7] = v129;
      v119[0] = v122;
      v119[1] = v123;
      v119[2] = v124;
      v119[3] = v125;
      sub_1CF082390(v102, v99, v57, v121, v86, v119, v90, v88, v89);
      v84 = v85;
    }

    sub_1CF06DA00(v84);
    (*(v109 + 8))(v104, v76);
    return (*(v58 + 8))(v111, v53);
  }
}