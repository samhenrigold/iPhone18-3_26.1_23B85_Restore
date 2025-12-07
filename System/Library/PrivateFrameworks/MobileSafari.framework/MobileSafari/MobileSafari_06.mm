uint64_t sub_18B84CAD4(uint64_t a1)
{
  v2 = *(a1 + 1328);
  result = sub_18BC21848();
  if (v4 <= 0x3F)
  {
    v5 = MEMORY[0x1E69E5D08] + 64;
    v12 = *(result - 8) + 64;
    v13 = MEMORY[0x1E69E5D08] + 64;
    v6 = *(a1 + 1320);
    v7 = sub_18B8103B0();
    v9[0] = v6;
    v9[1] = v2;
    v9[2] = &type metadata for SFFluidTabOverviewSupplementary;
    v10 = *(a1 + 1336);
    v11 = v7;
    type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, v9);
    result = sub_18BC21848();
    if (v8 <= 0x3F)
    {
      v14 = *(result - 8) + 64;
      v15 = v5;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_18B84CC04(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v76 = a2;
  v5 = *(*a3 + 600);
  v67 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v67 - v6;
  v9 = v8[76];
  v10 = v8[77];
  v11 = v8[78];
  v12 = sub_18B8103B0();
  *&v86 = v5;
  *(&v86 + 1) = v9;
  *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v87 + 1) = v10;
  *v88 = v11;
  *&v88[8] = v12;
  v75 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v86);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v67 - v13;
  v69 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v68 = &v67 - v15;
  v77 = v5;
  *&v86 = v5;
  *(&v86 + 1) = v9;
  v72 = v9;
  *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v87 + 1) = v10;
  v70 = v10;
  *&v71 = v11;
  *v88 = v11;
  *&v88[8] = v12;
  *(&v71 + 1) = v12;
  v16 = type metadata accessor for SFFluidCollectionView.Element(0, &v86);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v67 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v67 - v24;
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v67 - v28;
  v78 = v17;
  v30 = *(v17 + 16);
  v31 = a1;
  v33 = v32;
  v30(&v67 - v28, v31, v32, v27);
  v79 = v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    v35 = v78;
    v36 = v29;
    if (EnumCaseMultiPayload == 1)
    {
      (v30)(v25, v29, v79);
      v37 = v69;
      v38 = v68;
      v39 = v72;
      (*(v69 + 4))(v68, v25, v72);
      v40 = v76[1];
      v83 = *v76;
      v41 = v76[2];
      v43 = *v76;
      v42 = v76[1];
      v84 = v40;
      v85[0] = v41;
      *(v85 + 9) = *(v76 + 41);
      v80 = v43;
      v81 = v42;
      v82[0] = v76[2];
      *(v82 + 9) = *(v76 + 41);
      *&v86 = v77;
      *(&v86 + 1) = v39;
      *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
      *(&v87 + 1) = v70;
      *v88 = v71;
      v44 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v86);
      v45 = *(v44 - 1);
      (*(v45 + 16))(&v86, &v83, v44);
      v46 = v73;
      sub_18B85F830(v38, &v80, v73);
      v86 = v80;
      v87 = v81;
      *v88 = v82[0];
      *&v88[9] = *(v82 + 9);
      (*(v45 + 8))(&v86, v44);
      SFFluidCollectionView.LayoutSnapshot.insert(_:)(v46, v44);
      (*(v74 + 8))(v46, v75);
      (*(v37 + 8))(v38, v39);
    }

    return (*(v35 + 8))(v36, v79);
  }

  v69 = v7;
  (v30)(v22, v29, v79);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = swift_projectBox();
  v49 = *(TupleTypeMetadata2 + 48);
  v50 = swift_getEnumCaseMultiPayload();
  if (v50 == 3)
  {
    sub_18B833990(v48, &v83);
    v51 = sub_18B833990(&v83, &v80);
    if (*(&v81 + 1) > 1)
    {
      v35 = v78;
      v36 = v29;
      if (*(&v81 + 1) == 2)
      {
        (*(*a3 + 848))(v51);
        v52 = v73;
        sub_18B84D768(v73);
        goto LABEL_20;
      }

      if (*(&v81 + 1) == 3)
      {
        (*(*a3 + 848))(v51);
        v52 = v73;
        sub_18BB82AC0(v73);
        goto LABEL_20;
      }
    }

    else
    {
      v35 = v78;
      v36 = v29;
      if (!*(&v81 + 1))
      {
LABEL_21:
        sub_18B833D9C(&v83);

        return (*(v35 + 8))(v36, v79);
      }

      if (*(&v81 + 1) == 1)
      {
        (*(*a3 + 848))(v51);
        v52 = v73;
        sub_18B86C944(v73);
LABEL_20:

        *&v86 = v77;
        *(&v86 + 1) = v72;
        *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
        *(&v87 + 1) = v70;
        *v88 = v71;
        v65 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v86);
        SFFluidCollectionView.LayoutSnapshot.insert(_:)(v52, v65);
        (*(v74 + 8))(v52, v75);
        goto LABEL_21;
      }
    }

    v89[0] = v80;
    v89[1] = v81;
    v90 = *&v82[0];
    (*(*a3 + 848))(v51);
    v63 = v73;
    sub_18B86CB14(v89, v73);

    *&v86 = v77;
    *(&v86 + 1) = v72;
    *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
    *(&v87 + 1) = v70;
    *v88 = v71;
    v64 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v86);
    SFFluidCollectionView.LayoutSnapshot.insert(_:)(v63, v64);
    (*(v74 + 8))(v63, v75);
    sub_18B831014(v89);
    goto LABEL_21;
  }

  if (v50)
  {

    v35 = v78;
    v36 = v29;
  }

  else
  {
    (v30)(v19, v48 + v49, v79);
    v36 = v29;
    if (*(v48 + 24))
    {
      (*(v67 + 8))(v19, v77);
    }

    else
    {
      v53 = v67;
      v54 = v77;
      (*(v67 + 32))(v69, v19, v77);
      v55 = v76[1];
      v83 = *v76;
      v56 = v76[2];
      v58 = *v76;
      v57 = v76[1];
      v84 = v55;
      v85[0] = v56;
      *(v85 + 9) = *(v76 + 41);
      v80 = v58;
      v81 = v57;
      v82[0] = v76[2];
      *(v82 + 9) = *(v76 + 41);
      *&v86 = v54;
      *(&v86 + 1) = v72;
      *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
      *(&v87 + 1) = v70;
      *v88 = v71;
      v59 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot(0, &v86);
      v60 = *(v59 - 1);
      (*(v60 + 16))(&v86, &v83, v59);
      v61 = v73;
      v62 = v69;
      sub_18BA33C24(v69, &v80, v73);
      v86 = v80;
      v87 = v81;
      *v88 = v82[0];
      *&v88[9] = *(v82 + 9);
      (*(v60 + 8))(&v86, v59);
      SFFluidCollectionView.LayoutSnapshot.insert(_:)(v61, v59);
      (*(v74 + 8))(v61, v75);
      (*(v53 + 8))(v62, v54);
    }

    v35 = v78;
  }

  return (*(v35 + 8))(v36, v79);
}

unint64_t sub_18B84D70C()
{
  result = qword_1EA9D6718[0];
  if (!qword_1EA9D6718[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EA9D6718);
  }

  return result;
}

void sub_18B84D768(uint64_t a1@<X8>)
{
  v3 = *v1;
  sub_18B813BA4();
  v5 = v4;
  v6 = 0.0;
  v7 = 0.0;
  if (*(v1 + 32) == 1)
  {
    v7 = v1[7] + v1[8];
  }

  sub_18B813E2C(&v26);
  sub_18B82B344(&v26);
  v9 = v8;
  sub_18B813E2C(&v26);
  sub_18B84D9B0(&v26);
  v11 = v10;
  sub_18B813E2C(&v26);
  v12 = v30;
  v13 = v1[11];
  sub_18B813E2C(&v26);
  sub_18B82B344(&v26);
  v15 = v13 - v14;
  if (v15 < 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = v15;
  }

  v17 = v5 + v7 + v9 + v11;
  v26 = 0uLL;
  v27 = 0;
  v28 = xmmword_18BC42B60;
  sub_18B84DA50(&v26);
  sub_18B833D9C(&v26);
  if (*(v1 + 33) == 1)
  {
    if (*(v1 + 48))
    {
      v6 = 0.0;
    }

    else
    {
      v6 = 1.0;
    }
  }

  v18 = sub_18B8103B0();
  v19 = *(*&v3 + 96);
  v26 = *(*&v3 + 80);
  v27 = &type metadata for SFFluidTabOverviewSupplementary;
  v28 = v19;
  v29 = v18;
  v20 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v26);
  *(a1 + v20[17]) = v6;
  v21 = 0.0;
  SFFluidCollectionView.LayoutAttributes.frame.setter(v20, 0.0, v17, v12, v16);
  if ((*(v1 + 33) & 1) == 0)
  {
    v21 = v1[5];
  }

  v22 = v20[22];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v26 = *(a1 + v22);
  sub_18B84E858(0x6964615272756C62, 0xEA00000000007375, isUniquelyReferenced_nonNull_native, v21);
  *(a1 + v22) = v26;
  v24 = v1[11];
  v25 = swift_isUniquelyReferenced_nonNull_native();
  *&v26 = *(a1 + v22);
  sub_18B84E858(0x48676E6974736572, 0xED00007468676965, v25, v24);
  *(a1 + v22) = v26;
}

void sub_18B84D9B0(double *a1)
{
  if (*(v1 + 97) == 1)
  {
    v2 = a1[4];
    v3 = a1[5];
    v4 = a1[6];
    v5 = a1[7];
    v6.origin.x = v2;
    v6.origin.y = v3;
    v6.size.width = v4;
    v6.size.height = v5;
    CGRectGetMaxY(v6);
    v7.origin.x = v2;
    v7.origin.y = v3;
    v7.size.width = v4;
    v7.size.height = v5;
    CGRectGetMaxX(v7);
  }
}

uint64_t sub_18B84DA50(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_18B8103B0();
  v5 = *(v3 + 96);
  v12 = *(v3 + 80);
  v13 = &type metadata for SFFluidTabOverviewSupplementary;
  v14 = v5;
  v15 = v4;
  v6 = type metadata accessor for SFFluidCollectionView.Element(0, &v12);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - v8;
  v10 = v1[20];
  swift_storeEnumTagMultiPayload();
  sub_18BC1E1A8();
  v10(a1, v9);

  return (*(v7 + 8))(v9, v6);
}

void sub_18B84DBAC(_OWORD *a1)
{
  v1 = a1[2];
  v15 = a1[1];
  v16 = v1;
  v17 = a1[3];
  v2 = type metadata accessor for SFFluidCollectionView.Element(319, &v15);
  if (v3 <= 0x3F)
  {
    v4 = MEMORY[0x1E69E7DE0];
    *&v15 = v2;
    *(&v15 + 1) = MEMORY[0x1E69E7DE0];
    type metadata accessor for CGPoint(319);
    if (v6 <= 0x3F)
    {
      *&v16 = v5;
      type metadata accessor for CGSize(319);
      if (v8 <= 0x3F)
      {
        *(&v16 + 1) = v7;
        type metadata accessor for CGAffineTransform(319);
        if (v10 <= 0x3F)
        {
          *&v17 = v9;
          *(&v17 + 1) = v4;
          sub_18B84E748();
          if (v12 <= 0x3F)
          {
            v18 = v11;
            v19 = v11;
            type metadata accessor for CGRect(319);
            if (v14 <= 0x3F)
            {
              v20 = v13;
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_18B84DCAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = (*v3 + 600);
  v8 = (*v3 + 616);
  v9 = sub_18B8103B0();
  v15 = *v7;
  v16 = &type metadata for SFFluidTabOverviewSupplementary;
  v17 = *v8;
  v18 = v9;
  v10 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v15);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  sub_18B84DE88(a1, a2, (&v15 - v12));
  sub_18B84E410(v13, a3);
  return (*(v11 + 8))(v13, v10);
}

double sub_18B84DDF4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 48);
  swift_unownedRetainStrong();
  (*(*v5 + 584))(a1, a2);

  return result;
}

uint64_t sub_18B84DE88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v5 = *(*v3 + 88);
  v6 = *(*v3 + 96);
  v7 = *(*v3 + 104);
  v8 = *(*v3 + 112);
  v9 = *(*v3 + 120);
  v24[0] = *(*v3 + 80);
  v4 = v24[0];
  v24[1] = v5;
  v24[2] = v6;
  v24[3] = v7;
  v24[4] = v8;
  v24[5] = v9;
  v10 = type metadata accessor for SFFluidCollectionView.Element(0, v24);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - v12;
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v20 - v16;
  (*(v18 + 16))(&v20 - v16, v21, v6, v15);
  (*(v11 + 16))(v13, v22, v10);
  return sub_18B84E124(v17, v13, v4, v5, v6, v7, v8, v9, v23);
}

uint64_t sub_18B84E09C(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_18B84E124@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v16 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v33);
  *(a9 + v16[17]) = 0x3FF0000000000000;
  v17 = (a9 + v16[18]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a9 + v16[19]);
  *v18 = 0;
  v18[1] = 0;
  v19 = (a9 + v16[20]);
  *v19 = 0x3FF0000000000000;
  v19[1] = 0;
  v19[2] = 0;
  v19[3] = 0x3FF0000000000000;
  v19[4] = 0;
  v19[5] = 0;
  *(a9 + v16[21]) = 0;
  v20 = v16[22];
  v21 = MEMORY[0x1E69E7CC0];
  *(a9 + v20) = sub_18B84E2F8(MEMORY[0x1E69E7CC0]);
  v22 = v16[23];
  *(a9 + v22) = sub_18B84E2F8(v21);
  v23 = (a9 + v16[24]);
  *v23 = 0u;
  v23[1] = 0u;
  v33 = a3;
  v34 = a4;
  v35 = a5;
  v36 = a6;
  v37 = a7;
  v38 = a8;
  v24 = type metadata accessor for SFFluidCollectionView.Element(255, &v33);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v26 = swift_allocBox();
  v28 = v27;
  v29 = *(TupleTypeMetadata2 + 48);
  (*(*(a5 - 8) + 32))(v27, a1, a5);
  (*(*(v24 - 8) + 32))(v28 + v29, a2, v24);
  *a9 = v26;
  return swift_storeEnumTagMultiPayload();
}

unint64_t sub_18B84E2F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72B0, &qword_18BC47900);
    v3 = sub_18BC21D88();
    sub_18BC1E1A8();
    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      sub_18BC1E3F8();
      result = sub_18B831970(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_18B84E410(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = (*v3 + 600);
  v7 = (*v3 + 616);
  v8 = sub_18B8103B0();
  v22 = *v6;
  v23 = &type metadata for SFFluidTabOverviewSupplementary;
  v24 = *v7;
  v25 = v8;
  v9 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v22);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  v10 = *(v9 + 88);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = *(a2 + v10);
  sub_18B84E858(0xD000000000000014, 0x800000018BC65620, isUniquelyReferenced_nonNull_native, 0.0);
  *(a2 + v10) = v22;
  v12 = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = *(a2 + v10);
  sub_18B84E858(0xD000000000000012, 0x800000018BC62700, v12, 1.0);
  *(a2 + v10) = v22;
  v13 = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = *(a2 + v10);
  sub_18B84E858(0x615272656E726F63, 0xEC00000073756964, v13, 0.0);
  *(a2 + v10) = v22;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = *(a2 + v10);
  sub_18B84E858(0x6964615272756C62, 0xEA00000000007375, v14, 0.0);
  *(a2 + v10) = v22;
  v15 = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = *(a2 + v10);
  sub_18B84E858(0x48676E6974736572, 0xED00007468676965, v15, 0.0);
  *(a2 + v10) = v22;
  v16 = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = *(a2 + v10);
  sub_18B84E858(0xD000000000000018, 0x800000018BC655F0, v16, 0.0);
  *(a2 + v10) = v22;
  v17 = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = *(a2 + v10);
  sub_18B84E858(0xD000000000000012, 0x800000018BC65640, v17, 1.0);
  *(a2 + v10) = v22;
  v18 = *(v9 + 92);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = *(a2 + v18);
  sub_18B84E858(0xD000000000000018, 0x800000018BC65660, v19, 1.0);
  *(a2 + v18) = v22;
  v20 = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = *(a2 + v18);
  sub_18B84E858(0xD000000000000010, 0x800000018BC62690, v20, 0.0);
  *(a2 + v18) = v22;
  v21 = swift_isUniquelyReferenced_nonNull_native();
  *&v22 = *(a2 + v18);
  sub_18B84E858(0xD000000000000020, 0x800000018BC626D0, v21, 0.0);
  *(a2 + v18) = v22;
}

void sub_18B84E748()
{
  if (!qword_1EA9D8630)
  {
    v0 = sub_18BC209F8();
    if (!v1)
    {
      atomic_store(v0, &qword_1EA9D8630);
    }
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

void sub_18B84E858(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_18B831970(a1, a2);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      sub_18B860D54();
      v11 = v19;
      goto LABEL_8;
    }

    sub_18B84E998(v16, a3 & 1);
    v11 = sub_18B831970(a1, a2);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_14:
      sub_18BC22078();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a4;
  }

  else
  {
    sub_18BB329AC(v11, a1, a2, v21, a4);

    sub_18BC1E3F8();
  }
}

void sub_18B84E998(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72B0, &qword_18BC47900);
  v34 = v4;
  v6 = sub_18BC21D78();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
        sub_18BC1E3F8();
      }

      sub_18BC22158();
      sub_18BC20C28();
      v25 = sub_18BC221A8();
      v26 = -1 << *(v7 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

id SFFluidCollectionView.LayoutAttributes.frame.setter(int *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v11 = (v5 + a1[19]);
  *v11 = a4;
  v11[1] = a5;
  sub_18B84EE04(a1);
  v17.origin.x = a2;
  v17.origin.y = a3;
  v17.size.width = a4;
  v17.size.height = a5;
  MidX = CGRectGetMidX(v17);
  v18.origin.x = a2;
  v18.origin.y = a3;
  v18.size.width = a4;
  v18.size.height = a5;
  MidY = CGRectGetMidY(v18);
  v14 = (v5 + a1[18]);
  *v14 = MidX;
  v14[1] = MidY;
  sub_18B84EE04(a1);

  return sub_18B84EE04(a1);
}

uint64_t sub_18B84ED80()
{
  __asm { FMOV            V0.2D, #8.0 }

  *(v0 + 528) = _Q0;
  *(v0 + 544) = _Q0;
  v6 = *MEMORY[0x1E69DDCE0];
  v7 = *(MEMORY[0x1E69DDCE0] + 16);
  *(v0 + 560) = xmmword_18BC459C0;
  *(v0 + 576) = v6;
  *(v0 + 512) = 0;
  *(v0 + 520) = 0x4020000000000000;
  *(v0 + 592) = v7;
  *(v0 + 608) = 0;
  *(v0 + 624) = 0;
  *(v0 + 616) = 0;
  *(v0 + 632) = 0x3FE5555555555555;
  swift_unknownObjectWeakInit();
  *(v0 + 648) = 0;
  *(v0 + 656) = 0u;
  *(v0 + 672) = 0u;

  return sub_18B84FA00();
}

id sub_18B84EE04(int *a1)
{
  if (qword_1EA9D2400 != -1)
  {
    swift_once();
  }

  v3 = qword_1EA9D85A8;
  [qword_1EA9D85A8 setPosition_];
  [v3 setBounds_];
  v4 = (v1 + a1[20]);
  v5 = v4[1];
  *&m.a = *v4;
  *&m.c = v5;
  *&m.tx = v4[2];
  CATransform3DMakeAffineTransform(&v12, &m);
  [v3 setTransform_];
  result = [v3 frame];
  v7 = (v1 + a1[24]);
  *v7 = v8;
  v7[1] = v9;
  v7[2] = v10;
  v7[3] = v11;
  return result;
}

id sub_18B84EF04()
{
  result = [objc_allocWithZone(MEMORY[0x1E6979398]) init];
  qword_1EA9D85A8 = result;
  return result;
}

uint64_t SFFluidCollectionView.LayoutSnapshot.insert(_:)(uint64_t a1, void *a2)
{
  v49 = a1;
  v2 = a2[2];
  v3 = a2[3];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a2[6];
  v7 = a2[7];
  v45 = a2;
  v51 = v2;
  v52 = v3;
  v53 = v4;
  v54 = v5;
  v55 = v6;
  v56 = v7;
  v8 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v51);
  v48 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v44 - v9;
  v51 = v2;
  v52 = v3;
  v53 = v4;
  v54 = v5;
  v55 = v6;
  v56 = v7;
  v10 = type metadata accessor for SFFluidCollectionView.Element(0, &v51);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v44 - v12;
  v14 = sub_18BC21848();
  v46 = *(v14 - 8);
  v47 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v44 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v44 - v21;
  swift_getWitnessTable();
  v23 = v49;
  sub_18BC20A28();
  (*(v11 + 16))(v13, v23, v10);
  v24 = v48;
  (*(v48 + 16))(v19, v23, v8);
  (*(v24 + 56))(v19, 0, 1, v8);
  v25 = v24;
  sub_18BC209F8();
  v26 = v46;
  v27 = v47;
  sub_18BC20A38();
  v28 = *(v26 + 16);
  v50 = v22;
  v28(v16, v22, v27);
  if ((*(v24 + 48))(v16, 1, v8) == 1)
  {
    (*(v26 + 8))(v16, v27);
    v29 = v45;
LABEL_6:
    sub_18B84F39C(v23, v29);
    return (*(v26 + 8))(v50, v27);
  }

  v30 = *(v24 + 32);
  v31 = v44;
  v30(v44, v16, v8);
  v32 = SFFluidCollectionView.LayoutAttributes.frame.getter(v8);
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v58.origin.x = SFFluidCollectionView.LayoutAttributes.frame.getter(v8);
  v58.origin.y = v39;
  v58.size.width = v40;
  v58.size.height = v41;
  v57.origin.x = v32;
  v57.origin.y = v34;
  v57.size.width = v36;
  v57.size.height = v38;
  if (!CGRectEqualToRect(v57, v58))
  {
    v42 = v45;
    sub_18BBA6458(v31, v45);
    (*(v25 + 8))(v31, v8);
    v29 = v42;
    goto LABEL_6;
  }

  (*(v25 + 8))(v31, v8);
  return (*(v26 + 8))(v50, v27);
}

uint64_t sub_18B84F39C(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = a2[6];
  v9 = a2[7];
  *&v81 = a2[2];
  v4 = v81;
  *(&v81 + 1) = v5;
  *&v82 = v6;
  *(&v82 + 1) = v7;
  v83 = v8;
  v84 = v9;
  v75 = type metadata accessor for SFFluidCollectionView.Element(0, &v81);
  v10 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v60 = &v56 - v13;
  v14 = *(v2 + 24);
  v15 = *(v2 + 32);
  v61 = v2;
  *&v81 = v4;
  *(&v81 + 1) = v5;
  *&v82 = v6;
  *(&v82 + 1) = v7;
  v83 = v8;
  v84 = v9;
  v16 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v81);
  v68 = a1;
  v17 = SFFluidCollectionView.LayoutAttributes.frame.getter(v16);
  sub_18B82349C(v4, v5, v6, v7, v8, v9, v14, v15, v17, v18, v19, v20);
  v22 = v21;
  v67 = v4;
  *&v81 = v4;
  *(&v81 + 1) = v5;
  v66 = v5;
  v65 = v6;
  *&v82 = v6;
  *(&v82 + 1) = v7;
  v64 = v7;
  v63 = v8;
  v83 = v8;
  v84 = v9;
  v62 = v9;
  v23 = _s14LayoutSnapshotV9RectSliceVMa(0, &v81);
  if (sub_18BC20E28())
  {
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    v28 = 0;
    v59 = (v10 + 16);
    v57 = (v10 + 8);
    v58 = v22;
    while (1)
    {
      v32 = sub_18BC20E08();
      sub_18BC20DC8();
      if ((v32 & 1) == 0)
      {
        break;
      }

      if (__OFADD__(v24, 1))
      {
        goto LABEL_17;
      }

      v69 = v24 + 1;
      v71 = v24;
      v33 = v22 + 32 * v24;
      v34 = *(v33 + 32);
      v76 = *(v33 + 48);
      v77 = v34;
      v35 = swift_allocObject();
      v73 = v27;
      v36 = v35;
      v37 = v67;
      v72 = v28;
      v38 = v66;
      *(v35 + 16) = v67;
      *(v35 + 24) = v38;
      v39 = v25;
      v40 = v65;
      v41 = v23;
      v42 = v64;
      v36[4] = v65;
      v36[5] = v42;
      v43 = v63;
      v44 = v62;
      v36[6] = v63;
      v36[7] = v44;
      sub_18B7B171C(v39, v26);
      (*v59)(v74, v68, v75);
      v81 = v77;
      v82 = v76;
      v45 = swift_allocObject();
      v45[2] = v37;
      v45[3] = v38;
      v45[4] = v40;
      v45[5] = v42;
      v45[6] = v43;
      v45[7] = v44;
      v45[8] = sub_18B84FD54;
      v45[9] = v36;
      v70 = v36;
      sub_18B7B171C(v73, v72);
      v46 = v61;
      swift_isUniquelyReferenced_nonNull_native();
      v47 = v46;
      v48 = *(v46 + 8);
      *&v78 = v48;
      WitnessTable = swift_getWitnessTable();
      sub_18B84FAF0(&v81, v41, WitnessTable);
      if (__OFADD__(*(v48 + 16), (v50 & 1) == 0))
      {
        goto LABEL_18;
      }

      v51 = v50;
      swift_getWitnessTable();
      sub_18BC210E8();
      sub_18BC21CE8();
      if (sub_18BC21CC8())
      {
        sub_18B84FAF0(&v81, v41, WitnessTable);
        v23 = v41;
        if ((v51 & 1) != (v52 & 1))
        {
          goto LABEL_19;
        }
      }

      else
      {
        v23 = v41;
      }

      *(v47 + 8) = v78;
      if ((v51 & 1) == 0)
      {
        v80 = (v45[8])();
        v79 = v76;
        v78 = v77;
        sub_18BC21CD8();
      }

      v29 = v60;
      sub_18BC21078();
      (*v57)(v29, v75);
      v22 = v58;
      v30 = sub_18BC20E28();
      v24 = v71 + 1;
      v27 = sub_18BBA79EC;
      v25 = sub_18B84FD54;
      v31 = v70;
      v26 = v70;
      v28 = v45;
      if (v69 == v30)
      {

        v53 = sub_18BBA79EC;
        v54 = sub_18B84FD54;
        goto LABEL_15;
      }
    }

    sub_18BC21B08();
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    result = sub_18BC22078();
    __break(1u);
  }

  else
  {

    v54 = 0;
    v31 = 0;
    v53 = 0;
    v45 = 0;
LABEL_15:
    sub_18B7B171C(v54, v31);
    return sub_18B7B171C(v53, v45);
  }

  return result;
}

uint64_t sub_18B84F9AC(uint64_t a1, void *a2)
{
  sub_18BC22158();
  sub_18B84FB4C(*v2, v2[1], v2[2], v2[3]);
  return sub_18BC221A8();
}

uint64_t sub_18B84FA00()
{
  v1 = MEMORY[0x1E69E7CC0];
  *(v0 + 16) = MEMORY[0x1E69E7CC0];
  sub_18B838D94(v1);
  *(v0 + 24) = v2;
  *(v0 + 32) = v3;
  *(v0 + 40) = sub_18B839428(v1);
  sub_18B8396E0(v1);
  v4 = MEMORY[0x1E69E7CD0];
  *(v0 + 48) = v5;
  *(v0 + 56) = v6;
  *(v0 + 64) = v4;
  *(v0 + 72) = 0;
  *(v0 + 74) = 0;
  *(v0 + 80) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = sub_18B8509C8(v1);
  *(v0 + 104) = sub_18B850C4C(v1);
  *(v0 + 112) = sub_18B850C04(v1);
  *(v0 + 120) = vdupq_n_s64(0x4090000000000000uLL);
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  *(v0 + 152) = 1;
  *(v0 + 160) = sub_18B850D54(v1);
  sub_18B81F588(__src);
  memcpy((v0 + 168), __src, 0x139uLL);
  *(v0 + 496) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  return v0;
}

unint64_t sub_18B84FAF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_18BC20A68();

  return sub_18B84FBCC(a1, v6, a2, a3);
}

uint64_t sub_18B84FB4C(double a1, double a2, double a3, double a4)
{
  if (a3 == 0.0)
  {
    v7 = 0.0;
  }

  else
  {
    v7 = a3;
  }

  MEMORY[0x18CFFD690](*&v7);
  if (a4 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = a4;
  }

  MEMORY[0x18CFFD690](*&v8);
  if (a1 == 0.0)
  {
    v9 = 0.0;
  }

  else
  {
    v9 = a1;
  }

  MEMORY[0x18CFFD690](*&v9);
  if (a2 == 0.0)
  {
    v10 = 0.0;
  }

  else
  {
    v10 = a2;
  }

  return MEMORY[0x18CFFD690](*&v10);
}

unint64_t sub_18B84FBCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = sub_18BC20AE8();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

uint64_t sub_18B84FD64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[0] = a1;
  v11[1] = a2;
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a5;
  v11[5] = a6;
  v6 = type metadata accessor for SFFluidCollectionView.Element(0, v11);
  v7 = sub_18BC20DE8();
  if (sub_18BC20E28())
  {
    WitnessTable = swift_getWitnessTable();
    v9 = sub_18BB32DD8(v7, v6, WitnessTable);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  return v9;
}

uint64_t _s12MobileSafari31SFFluidTabOverviewSupplementaryO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_18B833990(a1, v8);
  sub_18B833990(a2, &v10);
  if (v9 > 1)
  {
    if (v9 != 2)
    {
      if (v9 == 3)
      {
        if (*(&v11 + 1) == 3)
        {
          goto LABEL_15;
        }

        goto LABEL_13;
      }

LABEL_10:
      sub_18B833990(v8, v7);
      if (*(&v11 + 1) >= 4uLL)
      {
        v5[0] = v10;
        v5[1] = v11;
        v6 = v12;
        v3 = MEMORY[0x18CFFCF40](v7, v5);
        sub_18B831014(v5);
        sub_18B831014(v7);
        sub_18B833D9C(v8);
        return v3 & 1;
      }

      sub_18B831014(v7);
      goto LABEL_13;
    }

    if (*(&v11 + 1) != 2)
    {
      goto LABEL_13;
    }

LABEL_15:
    sub_18B833D9C(v8);
    v3 = 1;
    return v3 & 1;
  }

  if (!v9)
  {
    if (*(&v11 + 1))
    {
      goto LABEL_13;
    }

    goto LABEL_15;
  }

  if (v9 != 1)
  {
    goto LABEL_10;
  }

  if (*(&v11 + 1) == 1)
  {
    goto LABEL_15;
  }

LABEL_13:
  sub_18B86C4A4(v8);
  v3 = 0;
  return v3 & 1;
}

uint64_t sub_18B84FF2C(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(*a2 + 1328);
  v106 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v90 = &v81 - v6;
  v7 = sub_18BC21848();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v91 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v97 = &v81 - v8;
  v93 = *(v7 - 8);
  v104 = v93;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v81 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v81 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v94 = &v81 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v81 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v102 = &v81 - v20;
  v21 = v4[165];
  v22 = v4[167];
  v23 = v4[168];
  v24 = sub_18B8103B0();
  v95 = v21;
  v108 = v21;
  v109 = v5;
  v110 = &type metadata for SFFluidTabOverviewSupplementary;
  v111 = v22;
  v98 = v22;
  v99 = v23;
  v112 = v23;
  v113 = v24;
  v96 = v24;
  v25 = type metadata accessor for SFFluidCollectionView.Element(0, &v108);
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v81 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v105 = &v81 - v30;
  v32 = MEMORY[0x1EEE9AC00](v31);
  v34 = &v81 - v33;
  v107 = v26;
  v35 = *(v26 + 16);
  v100 = a1;
  v36 = a1;
  v38 = v37;
  v35(&v81 - v33, v36, v37, v32);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    (v35)(v28, v34, v38);
    if (!*(swift_projectBox() + 24))
    {
      v61 = v100;
      sub_18BB3BAAC(v100);
      (*(*a2 + 1384))();
      v62 = (*(v106 + 48))(v11, 1, v5);
      v104[1](v11, v7);
      if (v62 != 1)
      {
        sub_18BB3B934(v61);
      }
    }
  }

  else if (EnumCaseMultiPayload == 1)
  {
    v40 = v105;
    v86 = v34;
    v88 = v38;
    v41 = (v35)(v105, v34, v38);
    v42 = *(*a2 + 1384);
    v43 = v102;
    v85 = *a2 + 1384;
    v84 = v42;
    (v42)(v41);
    v103 = v5;
    v44 = v106;
    (*(v106 + 16))(v18, v40, v103);
    (*(v44 + 56))(v18, 0, 1, v103);
    v45 = *(TupleTypeMetadata2 + 48);
    v46 = v104;
    v47 = v104[2];
    v48 = v97;
    (v47)(v97, v43, v7);
    v87 = v45;
    (v47)(&v48[v45], v18, v7);
    v49 = v103;
    v89 = v7;
    v52 = *(v44 + 48);
    v50 = v44 + 48;
    v51 = v52;
    if (v52(v48, 1, v103) == 1)
    {
      v53 = v46[1];
      v54 = v89;
      (v53)(v18, v89);
      (v53)(v43, v54);
      v55 = v49;
      if (v51(&v48[v87], 1, v49) == 1)
      {
        (v53)(v48, v89);
        v56 = v100;
        v57 = v106;
        v34 = v86;
        v58 = v98;
        v60 = v95;
        v59 = v96;
LABEL_17:
        v108 = v60;
        v109 = v55;
        v110 = &type metadata for SFFluidTabOverviewSupplementary;
        v111 = v58;
        v112 = v99;
        v113 = v59;
        v78 = *(type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v108) + 88);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v108 = *(v56 + v78);
        sub_18B84E858(0x615272656E726F63, 0xEC00000073756964, isUniquelyReferenced_nonNull_native, 0.0);
        *(v56 + v78) = v108;
        sub_18BB3B168(v56);
LABEL_18:
        (*(v57 + 8))(v105, v55);
        v38 = v88;
        return (*(v107 + 8))(v34, v38);
      }

      v104 = v53;
      v82 = v51;
      v83 = v50;
      v56 = v100;
      v57 = v106;
      v34 = v86;
      v58 = v98;
      v66 = v89;
    }

    else
    {
      v63 = v94;
      (v47)(v94, v48, v89);
      v64 = v87;
      v83 = v50;
      v82 = v51;
      if (v51(&v48[v87], 1, v49) != 1)
      {
        v73 = v106;
        v74 = v90;
        (*(v106 + 32))(v90, &v48[v64], v49);
        LODWORD(TupleTypeMetadata2) = sub_18BC20AE8();
        v75 = *(v73 + 8);
        v75(v74, v103);
        v76 = v104[1];
        v57 = v73;
        v77 = v89;
        (v76)(v18, v89);
        (v76)(v102, v77);
        v75(v94, v103);
        v55 = v103;
        v104 = v76;
        v67 = (v76)(v48, v77);
        v56 = v100;
        v34 = v86;
        v58 = v98;
        v60 = v95;
        v59 = v96;
        v66 = v77;
        if (TupleTypeMetadata2)
        {
          goto LABEL_17;
        }

LABEL_14:
        v68 = (*(*a2 + 1408))(v67);
        v108 = v60;
        v109 = v55;
        v110 = &type metadata for SFFluidTabOverviewSupplementary;
        v111 = v58;
        v112 = v99;
        v113 = v59;
        v69 = *(type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v108) + 88);
        v70 = swift_isUniquelyReferenced_nonNull_native();
        v108 = *(v56 + v69);
        sub_18B84E858(0x615272656E726F63, 0xEC00000073756964, v70, v68);
        *(v56 + v69) = v108;
        v71 = v92;
        v84();
        v72 = v82(v71, 1, v55);
        (v104)(v71, v66);
        if (v72 != 1)
        {
          sub_18BB3B934(v56);
        }

        goto LABEL_18;
      }

      v65 = v104[1];
      v66 = v89;
      (v65)(v18, v89);
      v104 = v65;
      (v65)(v102, v66);
      v57 = v106;
      (*(v106 + 8))(v63, v49);
      v56 = v100;
      v34 = v86;
      v58 = v98;
      v55 = v49;
    }

    v67 = (*(v91 + 8))(v48, TupleTypeMetadata2);
    v60 = v95;
    v59 = v96;
    goto LABEL_14;
  }

  return (*(v107 + 8))(v34, v38);
}

unint64_t sub_18B8509C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7018, &qword_18BC47640);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7020, &unk_18BC47648);
    v7 = sub_18BC21D88();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v20 = *(v3 + 72);
    v21 = v8;
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7018, &qword_18BC47640);
      result = sub_18B83B1C8(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
      sub_18B7CF39C(v5, v13 + *(*(v14 - 8) + 72) * v12, &unk_1EA9D92F0, &qword_18BC42990);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4F40, &unk_18BC42E70);
      result = sub_18B7CF39C(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &unk_1EA9D4F40, &unk_18BC42E70);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v9 += v20;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18B850C4C(__n128 *a1)
{
  v1 = a1[1].n128_u64[0];
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7010, &qword_18BC47638);
    v3 = sub_18BC21D88();
    sub_18BC1E1A8();
    for (i = a1 + 4; ; i = (i + 40))
    {
      v12 = i[-1];
      v13 = i[-2];
      v5 = i->n128_u64[0];
      sub_18BC1E3F8();
      result = sub_18B86F764(v13.n128_f64[0], v13.n128_f64[1], v12.n128_f64[0], v12.n128_f64[1]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v8 = (v3[6] + 32 * result);
      *v8 = v13;
      v8[1] = v12;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_18B850D54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7028, &qword_18BC47658);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7030, &unk_18BC47660);
    v7 = sub_18BC21D88();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v9, v5, &qword_1EA9D7028, &qword_18BC47658);
      result = sub_18BB8B3DC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s7SectionVMa_1(0);
      result = sub_18B80D3BC(v5, v14 + *(*(v15 - 8) + 72) * v13, _s7SectionVMa_1);
      v16 = (v7[7] + 32 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_18B850F58()
{
  v3 = v0;
  v4 = sub_18B82FEA0();
  v5 = sub_18BC20B98();
  [v4 setAccessibilityIdentifier_];

  v6 = OBJC_IVAR___SFTabOverview____lazy_storage___collectionView;
  [*&v3[OBJC_IVAR___SFTabOverview____lazy_storage___collectionView] setAutomaticallyAdjustsScrollIndicatorInsets_];
  [*&v3[v6] setClipsToBounds_];
  v7 = *&v3[v6];
  v9 = sub_18B812E34(&qword_1EA9D4F08, v8, type metadata accessor for TabOverview, &unk_18BC42E20);
  v10 = MEMORY[0x1E69E7D40];
  v11 = v7 + *((*MEMORY[0x1E69E7D40] & *v7) + 0x88);
  swift_beginAccess();
  *(v11 + 1) = v9;
  swift_unknownObjectWeakAssign();
  [*&v3[v6] setContentInsetAdjustmentBehavior_];
  [*&v3[v6] setDelegate_];
  v12 = *&v3[v6];
  v14 = sub_18B812E34(&qword_1EA9D51B8, v13, type metadata accessor for TabOverview, &unk_18BC42E04);
  v15 = v12 + *((*v10 & *v12) + 0xB8);
  swift_beginAccess();
  *(v15 + 1) = v14;
  swift_unknownObjectWeakAssign();
  v16 = *&v3[v6];
  v18 = sub_18B812E34(&qword_1EA9D51C0, v17, type metadata accessor for TabOverview, &unk_18BC42DE8);
  v19 = v16 + *((*v10 & *v16) + 0xC0);
  swift_beginAccess();
  *(v19 + 1) = v18;
  swift_unknownObjectWeakAssign();
  v20 = *(*&v3[v6] + *((*v10 & **&v3[v6]) + 0x90));
  v21 = sub_18B864B68();
  v22 = qword_1EA9D95D0;
  swift_beginAccess();
  if (*(v20 + v22) >> 62 && sub_18BC219A8() < 0)
  {
    __break(1u);
  }

  else
  {
    v23 = v20;
    sub_18B86456C(0, 0, v21);
    swift_endAccess();
    v24 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    swift_beginAccess();
    v21[2] = sub_18B9D51B4;
    v21[3] = v24;

    sub_18B864788(v21, 0);

    v25 = *&v3[v6];
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = (v25 + *((*v10 & *v25) + 0x850));
    *v27 = sub_18B9D521C;
    v27[1] = v26;
    sub_18BC1E1A8();

    v28 = *&v3[v6];
    v29 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v30 = (v28 + *((*v10 & *v28) + 0xA0));
    swift_beginAccess();
    v31 = *v30;
    v32 = v30[1];
    *v30 = sub_18B9D5224;
    v30[1] = v29;
    v33 = v28;
    sub_18B7B171C(v31, v32);

    v34 = *&v3[v6];
    v35 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v36 = (v34 + *((*v10 & *v34) + 0xA8));
    swift_beginAccess();
    v37 = *v36;
    v38 = v36[1];
    *v36 = sub_18B9D522C;
    v36[1] = v35;
    v39 = v34;
    sub_18B7B171C(v37, v38);

    v40 = *&v3[v6];
    v42 = sub_18B812E34(&qword_1EA9D51C8, v41, type metadata accessor for TabOverview, &unk_18BC42DCC);
    v43 = v40 + *((*v10 & *v40) + 0xD0);
    swift_beginAccess();
    *(v43 + 1) = v42;
    swift_unknownObjectWeakAssign();
    v44 = *&v3[v6];
    v45 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v46 = (v44 + *((*v10 & *v44) + 0xB0));
    swift_beginAccess();
    v47 = *v46;
    v48 = v46[1];
    *v46 = sub_18B9D5234;
    v46[1] = v45;
    v49 = v44;
    sub_18B7B171C(v47, v48);

    v2 = *&v3[v6];
    v15 = *(v2 + *((*v10 & *v2) + 0x190));
    if (!v15)
    {
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D51D0, &qword_18BC43048);
    v20 = swift_allocObject();
    v1 = MEMORY[0x1E69E7CC0] >> 62;
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_4;
    }
  }

  if (!sub_18BC219A8())
  {
LABEL_4:
    v50 = v2;
    sub_18BC1E1A8();
    v51 = MEMORY[0x1E69E7CD0];
    goto LABEL_5;
  }

  v139 = v2;
  sub_18BC1E1A8();
  sub_18BA2925C(MEMORY[0x1E69E7CC0]);
LABEL_5:
  v20[3] = 0;
  v20[4] = v51;
  v20[2] = sub_18B9BBF18;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v151[0] = *(v15 + 3);
  *(v15 + 3) = 0x8000000000000000;
  sub_18B831068(v20, 0x746954656772616CLL, 0xEA0000000000656CLL, isUniquelyReferenced_nonNull_native);
  *(v15 + 3) = v151[0];
  swift_endAccess();

  v53 = *&v3[v6];
  v54 = *(v53 + *((*v10 & *v53) + 0x190));
  if (v54)
  {
    v55 = swift_allocObject();
    if (v1 && sub_18BC219A8())
    {
      v56 = v53;
      sub_18BC1E1A8();
      sub_18BA2925C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v58 = v53;
      sub_18BC1E1A8();
      v57 = MEMORY[0x1E69E7CD0];
    }

    v55[3] = 0;
    v55[4] = v57;
    v55[2] = sub_18B9BBF30;
    swift_beginAccess();
    v59 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = *(v54 + 24);
    *(v54 + 24) = 0x8000000000000000;
    sub_18B831068(v55, 0x79616C7265766FLL, 0xE700000000000000, v59);
    *(v54 + 24) = v151[0];
    swift_endAccess();

    v60 = *&v3[v6];
    v61 = *(v60 + *((*v10 & *v60) + 0x190));
    if (!v61)
    {
      goto LABEL_41;
    }

    v62 = swift_allocObject();
    if (v1 && sub_18BC219A8())
    {
      v63 = v60;
      sub_18BC1E1A8();
      sub_18BA2925C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v65 = v60;
      sub_18BC1E1A8();
      v64 = MEMORY[0x1E69E7CD0];
    }

    v62[3] = 0;
    v62[4] = v64;
    v62[2] = sub_18B9BBF48;
    swift_beginAccess();
    v66 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = *(v61 + 24);
    *(v61 + 24) = 0x8000000000000000;
    sub_18B831068(v62, 0xD000000000000013, 0x800000018BC62760, v66);
    *(v61 + 24) = v151[0];
    swift_endAccess();

    v67 = *&v3[v6];
    v68 = *(v67 + *((*v10 & *v67) + 0x190));
    if (!v68)
    {
      goto LABEL_42;
    }

    v69 = swift_allocObject();
    if (v1 && sub_18BC219A8())
    {
      v70 = v67;
      sub_18BC1E1A8();
      sub_18BA2925C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v72 = v67;
      sub_18BC1E1A8();
      v71 = MEMORY[0x1E69E7CD0];
    }

    v69[3] = 0;
    v69[4] = v71;
    v69[2] = sub_18B9BBF60;
    swift_beginAccess();
    v73 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = *(v68 + 24);
    *(v68 + 24) = 0x8000000000000000;
    sub_18B831068(v69, 0x6142686372616573, 0xE900000000000072, v73);
    *(v68 + 24) = v151[0];
    swift_endAccess();

    v74 = *&v3[v6];
    v75 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v76 = (v74 + *((*v10 & *v74) + 0x858));
    *v76 = sub_18B9D523C;
    v76[1] = v75;
    sub_18BC1E1A8();

    [*&v3[v6] setTracksImmediatelyWhileDecelerating_];
    v77 = *&v3[v6];
    v78 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D51D8, &unk_18BC43050));
    v79 = v77;
    v80 = [v78 init];
    sub_18B865324(v80);

    v81 = *&v3[v6];
    v82 = swift_allocObject();
    swift_unknownObjectUnownedInit();
    v83 = *(v81 + *((*v10 & *v81) + 0x190));
    if (!v83)
    {
      goto LABEL_43;
    }

    v84 = swift_allocObject();
    v140 = v6;
    if (v1 && sub_18BC219A8())
    {
      v85 = v81;
      sub_18BC1E1A8();
      sub_18BC1E1A8();
      sub_18BA2925C(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v87 = v81;
      sub_18BC1E1A8();
      sub_18BC1E1A8();
      v86 = MEMORY[0x1E69E7CD0];
    }

    v84[3] = v82;
    v84[4] = v86;
    v84[2] = sub_18B9D5244;
    swift_beginAccess();
    sub_18BC1E1A8();
    v88 = swift_isUniquelyReferenced_nonNull_native();
    v151[0] = *(v83 + 24);
    *(v83 + 24) = 0x8000000000000000;
    sub_18B831068(v84, 0x776569566D657469, 0xE800000000000000, v88);
    *(v83 + 24) = v151[0];
    swift_endAccess();

    v90 = *&v3[OBJC_IVAR___SFTabOverview_contentBelowSearchBarView];
    v91 = v90[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred];
    v90[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred] = 1;
    if (v91 & 1) == 0 && (v92 = sub_18B7DE654(), [v92 value], v94 = v93, v92, v95 = swift_allocObject(), *(v95 + 16) = v90, *(v95 + 24) = v94, v96 = objc_opt_self(), v97 = swift_allocObject(), *(v97 + 16) = sub_18B7EA1B8, *(v97 + 24) = v95, v98 = swift_allocObject(), *(v98 + 16) = sub_18B9D53AC, *(v98 + 24) = v97, *&v143 = sub_18B9D53B0, *(&v143 + 1) = v98, *&aBlock = MEMORY[0x1E69E9820], *(&aBlock + 1) = 1107296256, *&v142 = sub_18B7E3BF4, *(&v142 + 1) = &block_descriptor_633, v99 = _Block_copy(&aBlock), v100 = v90, sub_18BC1E1A8(), sub_18BC1E1A8(), , objc_msgSend(v96, sel_performWithoutAnimation_, v99), _Block_release(v99), LOBYTE(v96) = swift_isEscapingClosureAtFileLocation(), , , v89 = , (v96))
    {
      __break(1u);
    }

    else
    {
      v101 = *&v3[OBJC_IVAR___SFTabOverview_gridLayout];
      v102 = (*(*v101 + 784))(v89, 16.0, 16.0);
      *((*(*v101 + 848))(v102) + 24) = 0x4030000000000000;

      (*(*v101 + 880))(v103, 0.71);
      v104 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v105 = &v3[OBJC_IVAR___SFTabOverview_hiddenItems];
      swift_beginAccess();
      *v105 = sub_18B9D527C;
      v105[1] = v104;

      v106 = [v3 traitCollection];
      swift_beginAccess();
      sub_18B865910(v106);
      swift_endAccess();

      v107 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v108 = &v3[OBJC_IVAR___SFTabOverview_itemsWithHiddenThumbnail];
      swift_beginAccess();
      *v108 = sub_18B9D5284;
      v108[1] = v107;

      v109 = swift_allocObject();
      swift_unknownObjectUnownedInit();
      v110 = &v3[OBJC_IVAR___SFTabOverview_itemsWithHiddenTitle];
      swift_beginAccess();
      *v110 = sub_18B9D528C;
      v110[1] = v109;

      v111 = *&v3[OBJC_IVAR___SFTabOverview_overlayContainerView];
      v112 = v111[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred];
      v111[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred] = 1;
      if ((v112 & 1) != 0 || (v113 = sub_18B7DE654(), [v113 value], v115 = v114, v113, v116 = swift_allocObject(), *(v116 + 16) = v111, *(v116 + 24) = v115, v117 = objc_opt_self(), v118 = swift_allocObject(), *(v118 + 16) = sub_18B9D53B4, *(v118 + 24) = v116, v119 = swift_allocObject(), *(v119 + 16) = sub_18B9D53AC, *(v119 + 24) = v118, *&v143 = sub_18B9D53B0, *(&v143 + 1) = v119, *&aBlock = MEMORY[0x1E69E9820], *(&aBlock + 1) = 1107296256, *&v142 = sub_18B7E3BF4, *(&v142 + 1) = &block_descriptor_651, v120 = _Block_copy(&aBlock), v121 = v111, sub_18BC1E1A8(), sub_18BC1E1A8(), , objc_msgSend(v117, sel_performWithoutAnimation_, v120), _Block_release(v120), LOBYTE(v117) = swift_isEscapingClosureAtFileLocation(), , , , (v117 & 1) == 0))
      {
        v122 = *&v3[OBJC_IVAR___SFTabOverview_searchBarContainerView];
        v123 = v122[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred];
        v122[OBJC_IVAR____TtC12MobileSafari13BlurrableView_shouldRasterizeWhenBlurred] = 1;
        if ((v123 & 1) != 0 || (v124 = sub_18B7DE654(), [v124 value], v126 = v125, v124, v127 = swift_allocObject(), *(v127 + 16) = v122, *(v127 + 24) = v126, v128 = objc_opt_self(), v129 = swift_allocObject(), *(v129 + 16) = sub_18B9D53B4, *(v129 + 24) = v127, v130 = swift_allocObject(), *(v130 + 16) = sub_18B9D53AC, *(v130 + 24) = v129, *&v143 = sub_18B9D53B0, *(&v143 + 1) = v130, *&aBlock = MEMORY[0x1E69E9820], *(&aBlock + 1) = 1107296256, *&v142 = sub_18B7E3BF4, *(&v142 + 1) = &block_descriptor_666, v131 = _Block_copy(&aBlock), v132 = v122, sub_18BC1E1A8(), sub_18BC1E1A8(), , objc_msgSend(v128, sel_performWithoutAnimation_, v131), _Block_release(v131), LOBYTE(v128) = swift_isEscapingClosureAtFileLocation(), , , , (v128 & 1) == 0))
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D51E0, &unk_18BC44660);
          v133 = swift_allocObject();
          *(v133 + 16) = xmmword_18BC3E410;
          v134 = sub_18BC1FA18();
          v135 = MEMORY[0x1E69DC128];
          *(v133 + 32) = v134;
          *(v133 + 40) = v135;
          MEMORY[0x18CFFCA40](v133, sel_setNeedsLayout);
          swift_unknownObjectRelease();

          v136 = swift_allocObject();
          *(v136 + 16) = xmmword_18BC3E410;
          v137 = sub_18BC1FF28();
          v138 = MEMORY[0x1E69DC2B0];
          *(v136 + 32) = v137;
          *(v136 + 40) = v138;
          MEMORY[0x18CFFCA40](v136, sel_contentSizeCategoryDidChange);
          swift_unknownObjectRelease();

          [*&v3[v140] addSubview_];
          [*&v3[v140] addSubview_];
          [*&v3[v140] addSubview_];
          [*&v3[v140] addSubview_];
          [v3 addSubview_];
          [v3 addSubview_];
          v142 = 0u;
          v143 = 0u;
          aBlock = 0u;
          v144 = 1;
          v145 = 0u;
          v146 = 0u;
          v147 = 0u;
          v148 = 0u;
          v149 = 0u;
          v150 = 0;
          sub_18B830410(&aBlock);
          sub_18B988BAC(&aBlock, &qword_1EA9D51B0, &qword_18BC43040);
          return;
        }

        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_18B852478()
{

  return swift_deallocObject();
}

uint64_t sub_18B8524C0()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B8524F8()
{
  MEMORY[0x18CFFF000](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_18B852530()
{

  return swift_deallocObject();
}

uint64_t sub_18B85268C(uint64_t (*a1)(uint64_t), uint64_t (*a2)(void), __n128 a3)
{
  v14 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = sub_18B82FEA0();
  memset(v15, 0, sizeof(v15));
  v16 = v14;
  swift_storeEnumTagMultiPayload();
  v9 = sub_18B8323E0(v15, v7);

  sub_18B988BAC(v7, &unk_1EA9D92F0, &qword_18BC42990);
  v10 = sub_18B833D9C(v15);
  if (v9)
  {
    a1(v10);
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = *(v11 + OBJC_IVAR____TtC12MobileSafari29SFFluidCollectionReusableView_contentView);

      a2(0);
      return swift_dynamicCastClassUnconditional();
    }
  }

  return 0;
}

void sub_18B8527F0(uint64_t a1)
{
  v2 = *(a1 + 88);
  v3 = OBJC_IVAR___SFTabOverview_peekingOverlayView;
  v4 = *&v1[OBJC_IVAR___SFTabOverview_peekingOverlayView];
  if (v2 != 1)
  {
    if (v4)
    {
      v6 = v2;
      v7 = v4;
    }

    else
    {
      _s18PeekingOverlayViewCMa();
      v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v9 = v2;
      v10 = [v8 init];
      v11 = *&v1[OBJC_IVAR___SFTabOverview_overlayContainerView];
      v12 = v1;
      v7 = v10;
      [v11 addSubview_];
      v13 = *&v12[v3];
      *&v12[v3] = v7;

      v14 = swift_allocObject();
      *(v14 + 16) = v12;
      v15 = objc_opt_self();
      v16 = swift_allocObject();
      *(v16 + 16) = sub_18B86D0A0;
      *(v16 + 24) = v14;
      v17 = swift_allocObject();
      *(v17 + 16) = sub_18B9D53AC;
      *(v17 + 24) = v16;
      v23[4] = sub_18B9D53B0;
      v23[5] = v17;
      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 1107296256;
      v23[2] = sub_18B7E3BF4;
      v23[3] = &block_descriptor_576;
      v18 = _Block_copy(v23);
      v19 = v12;
      sub_18BC1E1A8();
      sub_18BC1E1A8();

      [v15 performWithoutAnimation_];
      _Block_release(v18);
      LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

      if (v15)
      {
        __break(1u);
        return;
      }

      v4 = 0;
    }

    v20 = *&v7[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_image];
    *&v7[OBJC_IVAR____TtCC12MobileSafari11TabOverview18PeekingOverlayView_image] = v2;
    sub_18B86D6D0(v2);
    v21 = v4;
    sub_18B86D6D0(v2);
    v22 = v21;
    sub_18B86D6E0(v20);

    sub_18B86D99C(v2);
    sub_18B86D99C(v2);

    return;
  }

  if (v4)
  {
    [*&v1[OBJC_IVAR___SFTabOverview_peekingOverlayView] removeFromSuperview];
    v5 = *&v1[v3];
  }

  else
  {
    v5 = 0;
  }

  *&v1[v3] = 0;
}

id sub_18B852AE0()
{
  v1 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview14BackgroundView_blurView];
  v2 = [v1 layer];
  [v2 setContentsScale_];

  v3 = [v1 layer];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D3A10, &qword_18BC3EFC0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_18BC3E410;
  v5 = [objc_allocWithZone(MEMORY[0x1E6979378]) initWithType_];
  v6 = sub_18BC20EC8();
  [v5 setValue:v6 forKey:*MEMORY[0x1E6979B78]];

  v7 = sub_18BC1EEA8();
  [v5 setValue:v7 forKey:*MEMORY[0x1E6979BA8]];

  *(v4 + 56) = sub_18B852D10();
  *(v4 + 32) = v5;
  v8 = sub_18BC20D88();

  [v3 setFilters_];

  v9 = [v1 layer];
  [v9 setShouldRasterize_];

  v10 = *&v0[OBJC_IVAR____TtCC12MobileSafari11TabOverview14BackgroundView_fillView];
  v11 = [objc_opt_self() quaternarySystemFillColor];
  [v10 setBackgroundColor_];

  [v0 addSubview_];

  return [v0 addSubview_];
}

unint64_t sub_18B852D10()
{
  result = qword_1EA9D40B8;
  if (!qword_1EA9D40B8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EA9D40B8);
  }

  return result;
}

void sub_18B852D90(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = MEMORY[0x1E69E7D40];
  v12 = (v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x850));
  *v12 = sub_18B814EE4;
  v12[1] = 0;
  v13 = (v5 + *((*v11 & *v5) + 0x858));
  *v13 = CGRectMake;
  v13[1] = 0;
  v14 = *((*v11 & *v5) + 0x860);
  *(v5 + v14) = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
  *(v5 + *((*v11 & *v5) + 0x868)) = 1;
  *(v5 + *((*v11 & *v5) + 0x870)) = 0;
  *(v5 + *((*v11 & *v5) + 0x878)) = 1;
  *(v5 + *((*v11 & *v5) + 0x880)) = 1;
  *(v5 + *((*v11 & *v5) + 0x888)) = 1;
  *(v5 + *((*v11 & *v5) + 0x890)) = 1;

  sub_18B852F68(a1, a2, a3, a4, a5);
}

void sub_18B852F68(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v11 = MEMORY[0x1E69E7D40];
  v12 = MEMORY[0x1E69E7CD0];
  *(v5 + *((*MEMORY[0x1E69E7D40] & *v5) + 0x80)) = MEMORY[0x1E69E7CD0];
  *(v5 + *((*v11 & *v5) + 0x88) + 8) = 0;
  swift_unknownObjectWeakInit();
  v13 = *((*v11 & *v5) + 0x90);
  *(v5 + v13) = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D51F8 &qword_18BC43068))];
  *(v5 + *((*v11 & *v5) + 0x98)) = 1;
  v14 = (v5 + *((*v11 & *v5) + 0xA0));
  *v14 = 0;
  v14[1] = 0;
  v15 = (v5 + *((*v11 & *v5) + 0xA8));
  *v15 = 0;
  v15[1] = 0;
  v16 = (v5 + *((*v11 & *v5) + 0xB0));
  *v16 = 0;
  v16[1] = 0;
  *(v5 + *((*v11 & *v5) + 0xB8) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v11 & *v5) + 0xC0) + 8) = 0;
  swift_unknownObjectWeakInit();
  v17 = *((*v11 & *v5) + 0xC8);
  v18 = _s4ItemVMa_2(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v5 + v17, 1, 1, v18);
  *(v5 + *((*v11 & *v5) + 0xD0) + 8) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + *((*v11 & *v5) + 0xD8)) = 0;
  *(v5 + *((*v11 & *v5) + 0xE0)) = 0;
  *(v5 + *((*v11 & *v5) + 0xE8)) = v12;
  *(v5 + *((*v11 & *v5) + 0xF0)) = 0;
  *(v5 + *((*v11 & *v5) + 0xF8)) = 0;
  v20 = MEMORY[0x1E69E7CC0];
  v21 = v12;
  if (MEMORY[0x1E69E7CC0] >> 62)
  {
    if (sub_18BC219A8())
    {
      sub_18BA29248(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CD0];
    }
  }

  *(v5 + *((*v11 & *v5) + 0x100)) = v21;
  *(v5 + *((*v11 & *v5) + 0x108)) = 0;
  *(v5 + *((*v11 & *v5) + 0x110)) = 0;
  v19(v5 + *((*v11 & *v5) + 0x118), 1, 1, v18);
  *(v5 + *((*v11 & *v5) + 0x120)) = v20;
  *(v5 + *((*v11 & *v5) + 0x128)) = 0;
  *(v5 + *((*v11 & *v5) + 0x130)) = 0;
  *(v5 + *((*v11 & *v5) + 0x138)) = 0;
  *(v5 + *((*v11 & *v5) + 0x140)) = 0;
  v22 = *((*v11 & *v5) + 0x148);
  type metadata accessor for Assertion();
  v23 = swift_allocObject();
  *(v23 + 16) = v20;
  *(v23 + 24) = 0;
  *(v5 + v22) = v23;
  v24 = *((*v11 & *v5) + 0x150);
  *(v5 + v24) = sub_18B855608(v20);
  v25 = (v5 + *((*v11 & *v5) + 0x158));
  v26 = *(MEMORY[0x1E695F050] + 16);
  *v25 = *MEMORY[0x1E695F050];
  v25[1] = v26;
  *(v5 + *((*v11 & *v5) + 0x160)) = v12;
  v27 = v5 + *((*v11 & *v5) + 0x168);
  *v27 = 0;
  *(v27 + 4) = 0;
  v27[10] = 0;
  v28 = (v5 + *((*v11 & *v5) + 0x170));
  v29 = *(MEMORY[0x1E69DDCE0] + 16);
  *v28 = *MEMORY[0x1E69DDCE0];
  v28[1] = v29;
  v30 = (v5 + *((*v11 & *v5) + 0x178));
  *v30 = 0;
  v30[1] = 0;
  *(v5 + *((*v11 & *v5) + 0x180)) = 0;
  *(v5 + *((*v11 & *v5) + 0x188)) = v20;
  *(v5 + *((*v11 & *v5) + 0x190)) = 0;
  *(v5 + *((*v11 & *v5) + 0x198)) = v12;
  *(v5 + *((*v11 & *v5) + 0x1A0)) = 0;
  v31 = *((*v11 & *v5) + 0x1A8);
  updated = type metadata accessor for SFFluidCollectionViewTrackedUpdateToken(0);
  (*(*(updated - 8) + 56))(v5 + v31, 1, 1, updated);
  v33 = *((*v11 & *v5) + 0x1B0);
  sub_18B81F588(__src);
  memcpy(v5 + v33, __src, 0x139uLL);
  *(v5 + *((*v11 & *v5) + 0x1C8)) = 0;
  v34 = v5 + *((*v11 & *v5) + 0x1D0);
  *v34 = sub_18B8509C8(v20);
  *(v34 + 1) = sub_18B850C4C(v20);
  *(v34 + 2) = sub_18B850C04(v20);
  *(v34 + 24) = vdupq_n_s64(0x4090000000000000uLL);
  *(v34 + 5) = 0;
  *(v34 + 6) = 0;
  v34[56] = 1;
  *(v5 + *((*v11 & *v5) + 0x1D8)) = a1;
  v35 = objc_opt_self();
  sub_18BC1E1A8();
  v36 = [v35 behaviorWithDampingRatio:1.0 response:0.3];
  if (v36)
  {
    v37 = v36;
    [v36 setTrackingDampingRatio:1.0 response:0.08 dampingRatioSmoothing:0.08 responseSmoothing:0.08];
    *(v5 + *((*v11 & *v5) + 0x1B8)) = v37;
    v38 = v5 + *((*v11 & *v5) + 0x1C0);
    *v38 = 0;
    v38[2] = 0;
    v39 = v37;
    v67.receiver = v5;
    v67.super_class = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5110, &unk_18BC46A10);
    v40 = objc_msgSendSuper2(&v67, sel_initWithFrame_, a2, a3, a4, a5);
    swift_unknownObjectUnownedAssign();
    v41 = *((*v11 & *v40) + 0x1D8);
    swift_beginAccess();
    v42 = *(v40 + v41);
    v43 = sub_18B7B0B08(&qword_1EA9D5108, &unk_1EA9D5110, &unk_18BC46A10, &protocol conformance descriptor for SFFluidCollectionView<A, B, C>);
    v44 = *(*v42 + 440);
    v45 = v40;
    sub_18BC1E1A8();
    v44(v40, v43);

    v46 = *(**(v40 + v41) + 464);
    v47 = v45;
    sub_18BC1E1A8();
    v46(v40);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5200, &qword_18BC43070);
    v48 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = v47;
    *(v48 + 24) = sub_18B8638C0(MEMORY[0x1E69E7CC0]);
    swift_unknownObjectWeakAssign();

    *(v49 + *((*v11 & *v49) + 0x190)) = v48;

    v50 = [objc_allocWithZone(MEMORY[0x1E69DC8E0]) initWithDelegate_];

    v51 = *((*v11 & *v49) + 0xF0);
    v52 = *(v49 + v51);
    *(v49 + v51) = v50;

    if (v50)
    {
      [v49 addInteraction_];
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5208, &qword_18BC43078);
      v54 = objc_allocWithZone(v53);
      *&v54[qword_1EA9D6138] = 0;
      swift_unknownObjectUnownedInit();
      v66.receiver = v54;
      v66.super_class = v53;
      v55 = v49;
      v56 = objc_msgSendSuper2(&v66, sel_init);
      v57 = sub_18B8639C4();
      [v55 addInteraction_];

      v58 = *((*v11 & *v55) + 0x108);
      v59 = *(v55 + v58);
      *(v55 + v58) = v56;

      v60 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5210, &qword_18BC43080));
      v62 = sub_18B863A3C(v55, v61);
      v63 = *((*v11 & *v55) + 0x110);
      v64 = *(v55 + v63);
      *(v55 + v63) = v62;

      v65 = sub_18B8649E0();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_18B853B5C(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, void *a6)
{
  v103 = a5;
  v102 = a4;
  v10 = _s4PageVMa_0(0);
  v107 = *(v10 - 8);
  v108 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v110 = v11;
  v104 = &v97 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5340, &qword_18BC43280);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v97 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90, &qword_18BC45500);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v97 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v97 - v22;
  if ((a3 & 1) == 0 && *(a6 + qword_1EA9D6BB8 + 1) != 1)
  {
    return;
  }

  LODWORD(v109) = a3;
  v24 = *((*MEMORY[0x1E69E7D40] & *a6) + 0x88);
  swift_beginAccess();
  v101 = v24;
  sub_18B7CA054(a6 + v24, v171, &unk_1EA9D53A0, &qword_18BC4BFB0);
  v111 = a2;
  v112 = a1;
  v106 = a6;
  if (!*&v171[0])
  {
    sub_18B988BAC(v171, &unk_1EA9D53A0, &qword_18BC4BFB0);
    if ((v109 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_17;
  }

  v172[0] = v171[0];
  v172[1] = v171[1];
  v172[2] = v171[2];
  v172[3] = v171[3];
  sub_18B7CC308();
  sub_18B82F1AC(v172, v23);

  sub_18B82D0A4(a2, v20, _s4PageVMa_0);
  v26 = v107;
  v25 = v108;
  (*(v107 + 56))(v20, 0, 1, v108);
  v27 = *(v12 + 48);
  sub_18B7CA054(v23, v14, &unk_1EA9DBE90, &qword_18BC45500);
  sub_18B7CA054(v20, &v14[v27], &unk_1EA9DBE90, &qword_18BC45500);
  v28 = *(v26 + 48);
  if (v28(v14, 1, v25) != 1)
  {
    sub_18B7CA054(v14, v17, &unk_1EA9DBE90, &qword_18BC45500);
    if (v28(&v14[v27], 1, v25) != 1)
    {
      v31 = v104;
      sub_18B82FD54(&v14[v27], v104, _s4PageVMa_0);
      LODWORD(v105) = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B82D1D4(v31, _s4PageVMa_0);
      sub_18B988BAC(v20, &unk_1EA9DBE90, &qword_18BC45500);
      sub_18B988BAC(v23, &unk_1EA9DBE90, &qword_18BC45500);
      sub_18B82D1D4(v17, _s4PageVMa_0);
      sub_18B988BAC(v14, &unk_1EA9DBE90, &qword_18BC45500);
      a2 = v111;
      v30 = v112;
      a6 = v106;
      if (v105)
      {
        goto LABEL_14;
      }

LABEL_12:
      memset(v171, 0, 64);
      goto LABEL_15;
    }

    sub_18B988BAC(v20, &unk_1EA9DBE90, &qword_18BC45500);
    sub_18B988BAC(v23, &unk_1EA9DBE90, &qword_18BC45500);
    sub_18B82D1D4(v17, _s4PageVMa_0);
    a6 = v106;
LABEL_11:
    sub_18B988BAC(v14, &qword_1EA9D5340, &qword_18BC43280);
    a2 = v111;
    v30 = v112;
    goto LABEL_12;
  }

  sub_18B988BAC(v20, &unk_1EA9DBE90, &qword_18BC45500);
  sub_18B988BAC(v23, &unk_1EA9DBE90, &qword_18BC45500);
  v29 = v28(&v14[v27], 1, v25);
  a6 = v106;
  if (v29 != 1)
  {
    goto LABEL_11;
  }

  sub_18B988BAC(v14, &unk_1EA9DBE90, &qword_18BC45500);
  a2 = v111;
  v30 = v112;
LABEL_14:
  sub_18B9D50A0(v172, v171);
LABEL_15:
  *(v30 + OBJC_IVAR___SFTabOverview_needsResetLayout) = 1;
  sub_18B7CA054(v171, v170, &unk_1EA9D53A0, &qword_18BC4BFB0);
  v32 = OBJC_IVAR___SFTabOverview_targetScrollPositionForNextLayoutPass;
  swift_beginAccess();
  sub_18B7FD070(v170, v30 + v32, &unk_1EA9D53A0, &qword_18BC4BFB0);
  swift_endAccess();
  v33 = sub_18B82FEA0();
  [v33 setNeedsLayout];

  sub_18B988BAC(v171, &unk_1EA9D53A0, &qword_18BC4BFB0);
  sub_18B8303BC(v172);
  if ((v109 & 1) == 0)
  {
LABEL_16:
    if (*(a6 + qword_1EA9D6BB8) != 1)
    {
      return;
    }
  }

LABEL_17:
  v34 = a6 + qword_1EA9D6BA0;
  swift_beginAccess();
  sub_18B7DFE48((v34 + 16), v169);
  v35 = (a6 + qword_1EA9D6BA8);
  v36 = *(a6 + qword_1EA9D6BA8);
  sub_18BC1E1A8();
  v37 = v36(a2);
  v39 = v38;
  v41 = v40;
  v43 = v42;

  *v169 = v37;
  v169[1] = v39;
  v169[2] = v41;
  v169[3] = v43;
  swift_unknownObjectWeakAssign();
  sub_18B7DFE48(v169, v172);
  sub_18B9BB008(v172);
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v109 = _s4PageVMa_0;
  v45 = a2;
  v46 = v104;
  sub_18B82D0A4(v45, v104, _s4PageVMa_0);
  v47 = (*(v107 + 80) + 24) & ~*(v107 + 80);
  v48 = swift_allocObject();
  *(v48 + 16) = v44;
  v105 = _s4PageVMa_0;
  sub_18B82FD54(v46, v48 + v47, _s4PageVMa_0);
  v49 = (v112 + OBJC_IVAR___SFTabOverview_didScroll);
  *v49 = sub_18B861A20;
  v49[1] = v48;

  memcpy(v170, v35 + 5, sizeof(v170));
  v99 = v170[35];
  v100 = v170[37];
  v97 = v170[9];
  v98 = v170[33];
  v50 = v35[6];
  v165 = v35[5];
  v166 = v50;
  v51 = v35[8];
  v167 = v35[7];
  v168 = v51;
  v52 = v35[15];
  v158 = v35[14];
  v159 = v52;
  v53 = v35[11];
  v154 = v35[10];
  v155 = v53;
  v54 = v35[13];
  v156 = v35[12];
  v157 = v54;
  v55 = v35[16];
  v56 = v35[17];
  v57 = v35[19];
  v164 = v35[20];
  v58 = v35[18];
  v163 = v57;
  v162 = v58;
  v160 = v55;
  v161 = v56;
  v153 = v35[24];
  v59 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v60 = v109;
  sub_18B82D0A4(v111, v46, v109);
  v61 = swift_allocObject();
  v107 = v61;
  *(v61 + 16) = v59;
  v62 = v105;
  sub_18B82FD54(v46, v61 + v47, v105);
  sub_18B854B44(v170, v172);

  v63 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_18B82D0A4(v111, v46, v60);
  v64 = swift_allocObject();
  *(v64 + 16) = v63;
  sub_18B82FD54(v46, v64 + v47, v62);

  v65 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v66 = swift_allocObject();
  *(v66 + 24) = &off_1EFF1DFD8;
  swift_unknownObjectUnownedInit();
  v67 = swift_allocObject();
  *(v67 + 16) = v65;
  *(v67 + 24) = v66;

  v68 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v69 = v46;
  sub_18B82D0A4(v111, v46, v109);
  v70 = swift_allocObject();
  *(v70 + 16) = v68;
  v71 = v46;
  v72 = v105;
  sub_18B82FD54(v71, v70 + v47, v105);

  v171[0] = v165;
  v171[1] = v166;
  v171[2] = v167;
  v171[3] = v168;
  *&v171[4] = sub_18BA59E88;
  *(&v171[4] + 1) = v107;
  v171[13] = v162;
  v171[14] = v163;
  v171[15] = v164;
  v171[9] = v158;
  v171[10] = v159;
  v171[12] = v161;
  v171[11] = v160;
  v171[5] = v154;
  v171[6] = v155;
  v171[8] = v157;
  v171[7] = v156;
  *&v171[16] = sub_18BA59EA0;
  v98 = v64;
  v99 = v70;
  *(&v171[16] + 1) = v64;
  *&v171[17] = sub_18BA59F50;
  v100 = v67;
  *(&v171[17] + 1) = v67;
  *&v171[18] = sub_18BA59F58;
  *(&v171[18] + 1) = v70;
  v171[19] = v153;
  memcpy(v172, (v112 + OBJC_IVAR___SFTabOverview_handlers), sizeof(v172));
  memcpy((v112 + OBJC_IVAR___SFTabOverview_handlers), v171, 0x140uLL);
  sub_18B854D4C(v172);
  sub_18B854B44(v171, v132);
  v73 = v106;
  v74 = sub_18B7C2E68();
  swift_unknownObjectWeakAssign();

  v75 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_18B82D0A4(v111, v69, v109);
  v76 = swift_allocObject();
  *(v76 + 16) = v75;
  v77 = v111;
  v78 = v72;
  v79 = v112;
  sub_18B82FD54(v69, v76 + v47, v78);
  v80 = (v79 + OBJC_IVAR___SFTabOverview_searchStateDidChange);
  *v80 = sub_18BA5A15C;
  v80[1] = v76;

  v81 = v77 + *(v108 + 20);
  v82 = *(v81 + 144);
  v83 = *(v81 + 112);
  v180 = *(v81 + 128);
  v181 = v82;
  v84 = *(v81 + 176);
  v182 = *(v81 + 160);
  v183 = v84;
  v85 = *(v81 + 80);
  v86 = *(v81 + 48);
  v176 = *(v81 + 64);
  v177 = v85;
  v87 = *(v81 + 80);
  v88 = *(v81 + 112);
  v178 = *(v81 + 96);
  v179 = v88;
  v89 = *(v81 + 16);
  v173[0] = *v81;
  v173[1] = v89;
  v90 = *(v81 + 48);
  v92 = *v81;
  v91 = *(v81 + 16);
  v174 = *(v81 + 32);
  v175 = v90;
  v126 = v176;
  v127 = v87;
  v124 = v174;
  v125 = v86;
  v129 = v83;
  v130 = v180;
  v128 = v178;
  v131 = *(v81 + 144);
  v122 = v92;
  v123 = v91;
  v93 = *(&v181 + 1);
  v94 = v182;
  v120 = *(v81 + 168);
  v121 = *(v81 + 184);
  if (*(v77 + *(v108 + 24)) == 1)
  {
    if (*(v73 + qword_1EA9D6C00 + 8))
    {
      v93 = *(v73 + qword_1EA9D6C00);
      v95 = *(v73 + qword_1EA9D6C00 + 8);
    }

    else
    {
      v93 = 0;
      v95 = 0xE000000000000000;
    }

    sub_18B82B150(v173, v132);
    sub_18BC1E3F8();

    v94 = v95;
  }

  else
  {
    sub_18B82B150(v173, v132);
  }

  sub_18B7CA054(v73 + v101, v132, &unk_1EA9D53A0, &qword_18BC4BFB0);
  v96 = *&v132[0];
  sub_18B988BAC(v132, &unk_1EA9D53A0, &qword_18BC4BFB0);
  if ((v102 & 1) == 0 || v96)
  {
    memset(v119, 0, sizeof(v119));
  }

  else
  {
    sub_18B854DC4(v77, v119);
  }

  v184[6] = v128;
  v184[7] = v129;
  v184[8] = v130;
  v184[2] = v124;
  v184[3] = v125;
  v184[4] = v126;
  v184[5] = v127;
  v184[0] = v122;
  v184[1] = v123;
  v185 = v131;
  v186 = v93;
  v187 = v94;
  v188 = v120;
  v189 = v121;
  sub_18B85527C(v184, v119, v103);
  sub_18B988BAC(v119, &unk_1EA9D53A0, &qword_18BC4BFB0);
  sub_18B7CA0E4(v169);
  v113[6] = v128;
  v113[7] = v129;
  v113[8] = v130;
  v113[2] = v124;
  v113[3] = v125;
  v113[4] = v126;
  v113[5] = v127;
  v113[0] = v122;
  v113[1] = v123;
  v114 = v131;
  v115 = v93;
  v116 = v94;
  v117 = v120;
  v118 = v121;
  sub_18B82B2F0(v113);
  v132[0] = v165;
  v132[1] = v166;
  v132[2] = v167;
  v132[3] = v168;
  v133 = sub_18BA59E88;
  v134 = v107;
  v143 = v162;
  v144 = v163;
  v145 = v164;
  v139 = v158;
  v140 = v159;
  v141 = v160;
  v142 = v161;
  v135 = v154;
  v136 = v155;
  v137 = v156;
  v138 = v157;
  v146 = sub_18BA59EA0;
  v147 = v98;
  v148 = sub_18BA59F50;
  v149 = v100;
  v150 = sub_18BA59F58;
  v151 = v99;
  v152 = v153;
  sub_18B854D4C(v132);
}

uint64_t sub_18B854A30()
{
  swift_unknownObjectUnownedDestroy();

  return swift_deallocObject();
}

uint64_t sub_18B854A68()
{

  return swift_deallocObject();
}

id SFFluidCollectionView.DataSource.init()()
{
  v1 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x50);
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x58);
  v3 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x60);
  v4 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x68);
  v5 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x70);
  v6 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x78);
  SFFluidCollectionView.DataSource.Snapshot.init()(v1, v2, v3, v4, v5, v6, (v0 + qword_1EA9D95C8));
  SFFluidCollectionView.DataSource.Snapshot.init()(v1, v2, v3, v4, v5, v6, (v0 + qword_1EA9D95C0));
  swift_unknownObjectUnownedInit();
  v7 = qword_1EA9D95D0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  type metadata accessor for SFFluidCollectionView.DataSource.ShadowUpdateSource(0, &v11);
  *(v0 + v7) = sub_18BC20DE8();
  *(v0 + qword_1EA9D95E0) = 0;
  *(v0 + qword_1EA9D95E8) = 0;
  v8 = (v0 + qword_1EA9D95F0);
  *v8 = 0;
  v8[1] = 0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v10.receiver = v0;
  v10.super_class = type metadata accessor for SFFluidCollectionView.DataSource(0, &v11);
  return objc_msgSendSuper2(&v10, sel_init);
}

void sub_18B854DC4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = _s4PageVMa_0(0);
  if ((*(a1 + *(v5 + 24)) & 1) != 0 || *(a1 + *(v5 + 28)) == 1)
  {
    *(a2 + 56) = 0;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 8) = 0u;
    *a2 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    v13 = 0u;
    v14 = 0u;
    sub_18B8550A8(&v13, 0xD000000000000014, 0x800000018BC62740);
  }

  else
  {
    v6 = qword_1EA9D6C38;
    swift_beginAccess();
    v7 = *(v2 + v6);
    if (*(v7 + 16))
    {
      sub_18BC1E3F8();
      v8 = sub_18B8629FC(a1);
      if (v9)
      {
        sub_18B9D50A0(*(v7 + 56) + (v8 << 6), &v13);

        v10 = v14;
        *a2 = v13;
        *(a2 + 16) = v10;
        v11 = v16;
        *(a2 + 32) = v15;
        *(a2 + 48) = v11;
        return;
      }
    }

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    *(a2 + 8) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 40) = 0u;
    *(a2 + 56) = 0;
    *a2 = sub_18B82E2EC(MEMORY[0x1E69E7CC0]);
    memset(v12, 0, sizeof(v12));
    sub_18B8550A8(v12, 0xD000000000000014, 0x800000018BC62740);
    if (v13)
    {
      sub_18B988BAC(&v13, &unk_1EA9D53A0, &qword_18BC4BFB0);
    }
  }
}

uint64_t SFFluidCollectionView.DataSource.Snapshot.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = MEMORY[0x1E69E7CC0];
  sub_18BC20DE8();
  a7[1] = sub_18BC1F078();
  a7[2] = v14;
  v22[0] = a1;
  v22[1] = a2;
  v22[2] = a3;
  v22[3] = a4;
  v22[4] = a5;
  v22[5] = a6;
  v15 = type metadata accessor for SFFluidCollectionView.Element(255, v22);
  v16 = sub_18BC210E8();
  swift_getTupleTypeMetadata2();
  v17 = sub_18BC20DE8();
  WitnessTable = swift_getWitnessTable();
  v19 = sub_18B7C29AC(v17, v15, v16, WitnessTable);

  a7[3] = v19;
  sub_18BC20DE8();
  result = sub_18BC1F078();
  a7[4] = result;
  a7[5] = v21;
  return result;
}

void sub_18B8550A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_18B7B1AD4(a1, v8);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *v3;
    sub_18BAA7848(v8, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v7;
  }

  else
  {
    sub_18B988BAC(a1, &qword_1EA9D5220, &qword_18BC3FCB0);
    sub_18B8551D8(a2, a3, v8);

    sub_18B988BAC(v8, &qword_1EA9D5220, &qword_18BC3FCB0);
  }
}

double sub_18B8551D8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_18B7C4104(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v13 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_18BB29D84();
      v10 = v13;
    }

    sub_18B7B1AD4((*(v10 + 56) + 32 * v8), a3);
    sub_18BB5B578(v8, v10, v11);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_18B85527C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_18B7CA054(a3, v21, &unk_1EA9D5060, &unk_18BC41870);
  sub_18B7CA054(a3, v19, &unk_1EA9D5060, &unk_18BC41870);
  sub_18B7CA054(a3, &v15, &unk_1EA9D5060, &unk_18BC41870);
  if (*(&v16 + 1))
  {
    v7 = *(*__swift_project_boxed_opaque_existential_1Tm(&v15, *(&v16 + 1)) + 16);
    if (!(v7 >> 62))
    {
      sub_18BC1E1A8();
      __swift_destroy_boxed_opaque_existential_1Tm(&v15);
      sub_18B988BAC(v21, &unk_1EA9D5060, &unk_18BC41870);
      v8 = sub_18B82FEA0();
      v9 = *((*MEMORY[0x1E69E7D40] & *v8) + 0x1B8);
      v10 = *(v8 + v9);
      *(v8 + v9) = v7;
      v11 = v20 != 0;
      sub_18BC1E1A8();
      sub_18B835E98(a1, v11);
      sub_18B7EBAE8(v7);
      *(v8 + v9) = v10;

      swift_unknownObjectRelease();
      goto LABEL_7;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(&v15);
  }

  else
  {
    sub_18B988BAC(&v15, &unk_1EA9D5060, &unk_18BC41870);
  }

  sub_18B835E98(a1, v22 != 0);
  sub_18B988BAC(v21, &unk_1EA9D5060, &unk_18BC41870);
LABEL_7:
  sub_18B7CA054(a2, v14, &unk_1EA9D53A0, &qword_18BC4BFB0);
  if (*&v14[0])
  {
    v15 = v14[0];
    v16 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    v12 = sub_18B82FEA0();
    [v12 layoutIfNeeded];

    [*(v3 + OBJC_IVAR___SFTabOverview____lazy_storage___collectionView) stopScrollingAndZooming];
    sub_18B861588(&v15, a3);
    sub_18B8303BC(&v15);
  }

  else
  {
    sub_18B988BAC(v14, &unk_1EA9D53A0, &qword_18BC4BFB0);
  }

  return sub_18B988BAC(v19, &unk_1EA9D5060, &unk_18BC41870);
}

uint64_t sub_18B8554D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B855538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B8555A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_18B855608(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7228, &unk_18BC47860);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7230, &unk_18BC4E050);
    v7 = sub_18BC21D88();
    v19 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v8, v5, &qword_1EA9D7228, &unk_18BC47860);
      result = sub_18B83B1C8(v5);
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
      result = sub_18B7CF39C(v5, v13 + *(*(v14 - 8) + 72) * v12, &unk_1EA9D92F0, &qword_18BC42990);
      *(v7[7] + 8 * v12) = *&v5[v19];
      v15 = v7[2];
      v16 = __OFADD__(v15, 1);
      v17 = v15 + 1;
      if (v16)
      {
        goto LABEL_10;
      }

      v7[2] = v17;
      v8 += v9;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_18B8557FC(uint64_t a1)
{
  v10 = "\b";
  v11 = &unk_18BC4AE58;
  v1 = *(a1 + 104);
  v9[0] = *(a1 + 88);
  v9[1] = v1;
  v9[2] = *(a1 + 120);
  v2 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(319, v9);
  if (v3 <= 0x3F)
  {
    v4 = *(v2 - 8) + 64;
    v12 = v4;
    sub_18B855968(319);
    if (v6 <= 0x3F)
    {
      v13 = *(v5 - 8) + 64;
      v7 = sub_18BC21848();
      if (v8 <= 0x3F)
      {
        v14 = *(v7 - 8) + 64;
        v15 = v14;
        v16 = v4;
        v17 = MEMORY[0x1E69E5D08] + 64;
        v18 = &unk_18BC4AE70;
        v19 = &unk_18BC4AE58;
        v20 = MEMORY[0x1E69E5D08] + 64;
        v21 = MEMORY[0x1E69E5D20] + 64;
        swift_initClassMetadata2();
      }
    }
  }
}

void sub_18B855968(uint64_t a1)
{
  if (!qword_1EA9D8820)
  {
    type metadata accessor for SFFluidCollectionViewTrackedUpdateToken(255);
    v1 = sub_18BC21848();
    if (!v2)
    {
      atomic_store(v1, &qword_1EA9D8820);
    }
  }
}

uint64_t sub_18B855A20(uint64_t a1, uint64_t a2)
{
  v4 = sub_18BC1EC08();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void *sub_18B855A90(void *a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &qword_1EA9D4C48, &qword_18BC42930, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

uint64_t sub_18B855AD4(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_18B82BA00(&qword_1EA9D3970, MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_18BC20A68();
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
      sub_18B82BA00(&qword_1EA9D9FE0, MEMORY[0x1E69695C8]);
      v21 = sub_18BC20AE8();
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
    sub_18B855EDC(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_18B855D8C(void *a1, double a2, double a3, CGFloat a4, CGFloat a5)
{
  v9 = a1;
  sub_18B855E04(a2, a3, a4, a5);
}

id sub_18B855E04(double a1, double a2, CGFloat a3, CGFloat a4)
{
  v9 = (*MEMORY[0x1E69E7D40] & *v4);
  [v4 bounds];
  sub_18B82A494(v10, v11, a3, a4);
  v12 = v9[6];
  v15[0] = v9[5];
  v15[1] = v12;
  v15[2] = v9[7];
  v13 = type metadata accessor for SFFluidCollectionView(0, v15);
  v16.receiver = v4;
  v16.super_class = v13;
  return objc_msgSendSuper2(&v16, sel_setFrame_, a1, a2, a3, a4);
}

uint64_t sub_18B855EDC(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_18BC1EC08();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18BB60104(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_18B9CC528();
      goto LABEL_12;
    }

    sub_18BB63BC4(v11 + 1);
  }

  v13 = *v3;
  sub_18B82BA00(&qword_1EA9D3970, MEMORY[0x1E69695B8]);
  v14 = sub_18BC20A68();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_18B82BA00(&qword_1EA9D9FE0, MEMORY[0x1E69695C8]);
      v22 = sub_18BC20AE8();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

uint64_t sub_18B856158(uint64_t a1, uint64_t a2)
{
  v95 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D3AE0, &qword_18BC432A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v66 - v9);
  v11 = sub_18BC1EC08();
  MEMORY[0x1EEE9AC00](v11);
  v86 = (&v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v66 - v14);
  MEMORY[0x1EEE9AC00](v16);
  v81 = (&v66 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v67 = v10;
  v69 = v7;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
  v21 = -1 << *(a1 + 32);
  v80 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v88 = (v22 & v19);
  v73 = (63 - v21) >> 6;
  v87 = v17 + 16;
  v78 = (v17 + 48);
  v79 = (v17 + 56);
  v77 = (v17 + 32);
  v83 = (a2 + 56);
  v68 = v17;
  v89 = (v17 + 8);
  sub_18BC1E3F8();
  v24 = 0;
  v70 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v88;
    v26 = v24;
    if (v88)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v67;
      (*(v68 + 16))(v67, *(a1 + 48) + *(v68 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v73 <= (v24 + 1) ? v24 + 1 : v73;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v73)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v67;
    }

    v75 = *v79;
    v75(v30, v31, 1, v11);
    v90 = a1;
    v91 = v20;
    v92 = v80;
    v93 = v28;
    v94 = v2;
    v74 = *v78;
    if (v74(v30, 1, v11) == 1)
    {
      sub_18B988BAC(v30, &unk_1EA9D3AE0, &qword_18BC432A0);
      v59 = a1;
      goto LABEL_53;
    }

    v72 = *v77;
    v72(v81, v30, v11);
    v71 = sub_18B7F4EE4(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v32 = sub_18BC20A68();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) != 0)
    {
      break;
    }

    (*v89)(v81, v11);
LABEL_22:
    v24 = v28;
    v88 = v2;
  }

  v66 = v89 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v82 = ~v33;
  v34 = *(v68 + 72);
  v84 = *(v68 + 16);
  v85 = v34;
  while (1)
  {
    v84(v15, *(a2 + 48) + v85 * v24, v11);
    v35 = sub_18B7F4EE4(&qword_1EA9D9FE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v36 = sub_18BC20AE8();
    v88 = *v89;
    v88(v15, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v82;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v83[v24 >> 6]) == 0)
    {
      a1 = v70;
      v88(v81, v11);
      goto LABEL_22;
    }
  }

  v82 = v35;
  v37 = (v88)(v81, v11);
  v38 = *(a2 + 32);
  v66 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v66;
  a1 = v70;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v67 = &v66;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v66 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v83, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v81 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v69;
    v44 = i;
    v45 = v73;
LABEL_26:
    v68 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v84(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v85, v11);
      v50 = 0;
LABEL_39:
      v75(v24, v50, 1, v11);
      v90 = a1;
      v91 = v44;
      v92 = v80;
      v93 = v28;
      v94 = v2;
      if (v74(v24, 1, v11) == 1)
      {
        sub_18B988BAC(v24, &unk_1EA9D3AE0, &qword_18BC432A0);
        a2 = sub_18B86E524(v81, v66, v68, a2);
        goto LABEL_52;
      }

      v72(v86, v24, v11);
      v51 = sub_18BC20A68();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v83[v54 >> 6]) != 0)
      {
        v84(v15, *(v52 + 48) + v54 * v85, v11);
        v55 = sub_18BC20AE8();
        v88(v15, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v83[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v84(v15, *(v52 + 48) + v54 * v85, v11);
            v57 = sub_18BC20AE8();
            v88(v15, v11);
          }

          while ((v57 & 1) == 0);
        }

        v88(v86, v11);
        v58 = v81[v26];
        v81[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
        if ((v58 & v20) != 0)
        {
          v43 = v68 - 1;
          if (__OFSUB__(v68, 1))
          {
            __break(1u);
          }

          if (v68 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v88(v86, v11);
        a2 = v52;
        a1 = v70;
        v24 = v69;
        v44 = i;
        v45 = v73;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;
    sub_18BC1E1A8();
    v81 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v81;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v83, v62);
  sub_18BC05A04(v64, v66, v81, v24, &v90);
  a2 = v65;

  MEMORY[0x18CFFEEE0](v64, -1, -1);
LABEL_52:
  v59 = v90;
LABEL_53:
  sub_18B7D2E34(v59);
  return a2;
}

uint64_t sub_18B856BBC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 40);
  if (!*(v8 + 16))
  {
    goto LABEL_7;
  }

  sub_18BC1E3F8();
  v9 = sub_18B857EE4(a1);
  if ((v10 & 1) == 0)
  {

    goto LABEL_7;
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  sub_18BC1E3F8();

  v12 = sub_18BA61730(v11);

  if (!v12)
  {
LABEL_7:
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    goto LABEL_8;
  }

  swift_beginAccess();
  v13 = v12[2];
  v35 = v12[1];
  v36 = v13;
  v14 = v12[4];
  v37 = v12[3];
  v38 = v14;
  sub_18B7CA054(&v35, &v43, &qword_1EA9D92C0, &qword_18BC42F60);

  if (*(&v35 + 1))
  {
    v39 = v35;
    v40 = v36;
    v41 = v37;
    v42 = v38;
    goto LABEL_11;
  }

  v43 = v35;
  v44 = v36;
  v45 = v37;
  v46 = v38;
LABEL_8:
  swift_beginAccess();
  v15 = *(v2 + 16);
  if (v15)
  {
    v16 = *(v2 + 24);
    sub_18BC1E1A8();
    v15(&v39, a1);
    sub_18B7B171C(v15, v16);
    sub_18B988BAC(&v43, &qword_1EA9D92C0, &qword_18BC42F60);
  }

  else
  {
    sub_18B988BAC(&v43, &qword_1EA9D92C0, &qword_18BC42F60);
    v39 = 0u;
    v40 = 0u;
    v41 = 0u;
    v42 = 0u;
  }

LABEL_11:
  v31 = v39;
  v32 = v40;
  v33 = v41;
  v34 = v42;
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for TabSnapshotRegistration(0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0u;
  v18 = (v17 + 16);
  *(v17 + 32) = 0u;
  *(v17 + 48) = 0u;
  *(v17 + 64) = 0u;
  *(v17 + 80) = CGRectMake;
  *(v17 + 88) = 0;
  v19 = OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibility;
  sub_18B7CA054(&v31, &v35, &qword_1EA9D92C0, &qword_18BC42F60);
  if (qword_1EA9D2410 != -1)
  {
    swift_once();
  }

  v20 = (v17 + v19);
  v21 = qword_1EA9D8AE8;
  *v20 = qword_1EA9D8AE0;
  v20[1] = v21;
  v22 = (v17 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
  *v22 = CGRectMake;
  v22[1] = 0;
  swift_beginAccess();
  v23 = *(v17 + 32);
  v35 = *v18;
  v36 = v23;
  v24 = *(v17 + 64);
  v37 = *(v17 + 48);
  v38 = v24;
  v25 = v32;
  *v18 = v31;
  *(v17 + 32) = v25;
  v26 = v34;
  *(v17 + 48) = v33;
  *(v17 + 64) = v26;
  sub_18B988BAC(&v35, &qword_1EA9D92C0, &qword_18BC42F60);
  (*(v5 + 32))(v17 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_id, v7, v4);
  sub_18B857348(v17);
  swift_unownedRetainStrong();
  sub_18B988BAC(&v31, &qword_1EA9D92C0, &qword_18BC42F60);
  swift_unownedRetain();

  v27 = swift_allocObject();
  *(v27 + 16) = v2;
  v28 = (v17 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_visibilityDidChangeHandler);
  *v28 = sub_18BA79F44;
  v28[1] = v27;

  return v17;
}

uint64_t sub_18B856FF0()
{
  swift_unownedRelease();

  return swift_deallocObject();
}

double sub_18B857030@<D0>(_OWORD *a2@<X8>)
{
  Strong = swift_unknownObjectUnownedLoadStrong();
  v4 = [Strong contentProvider];

  v5 = sub_18BC1EBC8();
  v6 = v4[2](v4, v5);

  _Block_release(v4);
  if (v6)
  {
    v7 = *&v6[OBJC_IVAR___SFTabSnapshotContent_wrapped + 48];
    v9 = *&v6[OBJC_IVAR___SFTabSnapshotContent_wrapped];
    v8 = *&v6[OBJC_IVAR___SFTabSnapshotContent_wrapped + 16];
    v16 = *&v6[OBJC_IVAR___SFTabSnapshotContent_wrapped + 32];
    v17 = v7;
    v14 = v9;
    v15 = v8;
    sub_18BA1A744(&v14, &v13);

    v10 = v15;
    *a2 = v14;
    a2[1] = v10;
    result = *&v16;
    v12 = v17;
    a2[2] = v16;
    a2[3] = v12;
  }

  else
  {
    result = 0.0;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

id sub_18B8571CC(uint64_t a1, uint64_t a2)
{
  v3 = sub_18BC1EC08();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_18BC1EBE8();
  sub_18BC1E1A8();
  v8 = v7(v6);

  (*(v4 + 8))(v6, v3);

  return v8;
}

id sub_18B8572E0(uint64_t a1, uint64_t a2)
{
  v3 = sub_18BC1EBC8();
  v4 = (*(a2 + 16))(a2, v3);

  return v4;
}

double sub_18B857348(uint64_t a1)
{
  v2 = v1;
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v41 - v10;
  v12 = *(v5 + 16);
  v12(&v41 - v10, a1 + OBJC_IVAR____TtC12MobileSafari23TabSnapshotRegistration_id, v4, v9);
  swift_beginAccess();
  v13 = *(v1 + 40);
  if (*(v13 + 16))
  {
    sub_18BC1E3F8();
    v14 = sub_18B857EE4(v11);
    if (v15)
    {
      v16 = *(*(v13 + 56) + 8 * v14);
      sub_18BC1E3F8();

      goto LABEL_7;
    }
  }

  if (MEMORY[0x1E69E7CC0] >> 62 && sub_18BC219A8())
  {
    sub_18BA29528(MEMORY[0x1E69E7CC0]);
    v16 = v40;
  }

  else
  {
    v16 = MEMORY[0x1E69E7CD0];
  }

LABEL_7:
  v47 = v16;
  sub_18BC1E1A8();
  sub_18B857890(v46, a1);

  v17 = v47;
  swift_beginAccess();
  sub_18BC1E3F8();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v45 = *(v2 + 40);
  *(v2 + 40) = 0x8000000000000000;
  sub_18B857EA4(v17, v11, isUniquelyReferenced_nonNull_native);
  *(v2 + 40) = v45;
  swift_endAccess();
  if (qword_1EA9D2298 != -1)
  {
    swift_once();
  }

  v19 = sub_18BC1F2C8();
  __swift_project_value_buffer(v19, qword_1EA9F7E80);
  (v12)(v7, v11, v4);
  v20 = sub_18BC1F2A8();
  v21 = v7;
  v22 = sub_18BC21218();
  v23 = os_log_type_enabled(v20, v22);
  v24 = v17 & 0xC000000000000001;
  v44 = v5;
  if (v23)
  {
    v43 = v11;
    v25 = v21;
    v26 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v46[0] = v41;
    *v26 = 136315394;
    v42 = v17 & 0xC000000000000001;
    if (v24)
    {
      sub_18BC1E3F8();
      v27 = sub_18BC219A8();
    }

    else
    {
      v27 = *(v17 + 16);
    }

    if (v27 == 1)
    {
      v30 = 0x20747372696620;
    }

    else
    {
      v30 = 32;
    }

    if (v27 == 1)
    {
      v31 = 0xE700000000000000;
    }

    else
    {
      v31 = 0xE100000000000000;
    }

    v32 = sub_18B7EA850(v30, v31, v46);

    *(v26 + 4) = v32;
    *(v26 + 12) = 2080;
    sub_18B8585EC(&qword_1EA9DBE50, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v33 = v25;
    v34 = sub_18BC21F48();
    v36 = v35;
    v28 = *(v5 + 8);
    v28(v33, v4);
    v37 = sub_18B7EA850(v34, v36, v46);

    *(v26 + 14) = v37;
    _os_log_impl(&dword_18B7AC000, v20, v22, "Pool retained%sregistration for %s.", v26, 0x16u);
    v38 = v41;
    swift_arrayDestroy();
    MEMORY[0x18CFFEEE0](v38, -1, -1);
    MEMORY[0x18CFFEEE0](v26, -1, -1);

    v11 = v43;
    if (!v42)
    {
LABEL_23:
      if (*(v17 + 16) != 1)
      {
        goto LABEL_26;
      }

      goto LABEL_24;
    }
  }

  else
  {

    v28 = *(v5 + 8);
    v28(v21, v4);
    if (!v24)
    {
      goto LABEL_23;
    }
  }

  sub_18BC1E3F8();
  v29 = sub_18BC219A8();

  if (v29 != 1)
  {
    goto LABEL_26;
  }

LABEL_24:
  if ((*(v2 + 32) & 1) == 0)
  {
    *(v2 + 32) = 1;
    sub_18BA7A18C();
    sub_18BC1E1A8();
    sub_18B858634(1, sub_18BA7A1DC, v2);
  }

LABEL_26:
  v28(v11, v4);

  return result;
}

uint64_t sub_18B857890(void *a1, uint64_t a2)
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

    sub_18BC1E1A8();
    sub_18BC1E3F8();
    v8 = sub_18BC219B8();

    if (v8)
    {

      type metadata accessor for TabSnapshotRegistration(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_18BC219A8();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_18BB5F76C(v7, result + 1, &unk_1EA9D5230, &qword_18BC430A0, type metadata accessor for TabSnapshotRegistration);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_18BB60FB4(v17 + 1, &unk_1EA9D5230, &qword_18BC430A0);
    }

    v18 = sub_18BC1E1A8();
    sub_18BB61E48(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_18BC22158();
  MEMORY[0x18CFFD660](a2);
  v10 = sub_18BC221A8();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;
    v15 = sub_18BC1E1A8();
    sub_18B857D20(v15, v12, isUniquelyReferenced_nonNull_native, &unk_1EA9D5230, &qword_18BC430A0, type metadata accessor for TabSnapshotRegistration, sub_18B9CC760);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);
  sub_18BC1E1A8();
  return 0;
}

void sub_18B857B00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = sub_18BC21A88();
  v7 = v6;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = v6 + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      sub_18BC22158();
      MEMORY[0x18CFFD660](v18);
      v19 = sub_18BC221A8();
      v20 = -1 << *(v7 + 32);
      v21 = v19 & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
      sub_18BC1E1A8();
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v3;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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
    *v4 = v7;
  }
}

uint64_t sub_18B857D20(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v8 = result;
  v9 = *(*v7 + 16);
  v10 = *(*v7 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    sub_18BB60FB4(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      v12 = a2;
      result = a7();
      a2 = v12;
      goto LABEL_12;
    }

    v11 = a6;
    sub_18B857B00(v9 + 1, a4, a5);
  }

  v13 = *v7;
  sub_18BC22158();
  MEMORY[0x18CFFD660](v8);
  result = sub_18BC221A8();
  v14 = -1 << *(v13 + 32);
  a2 = result & ~v14;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = result & ~v14;
    result = v11(0);
    a2 = v16;
    while (*(*(v13 + 48) + 8 * a2) != v8)
    {
      a2 = (a2 + 1) & v15;
      if (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v17 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v17 + 48) + 8 * a2) = v8;
  v18 = *(v17 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v17 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

unint64_t sub_18B857EE4(uint64_t a1)
{
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970, MEMORY[0x1E69695B8]);
  v2 = sub_18BC20A68();

  return sub_18BB8B948(a1, v2);
}

void sub_18B857F68(uint64_t a1, uint64_t a2, char a3, void (*a4)(void), void (*a5)(void), void (*a6)(uint64_t, char *, uint64_t, uint64_t))
{
  v29 = a5;
  v30 = a6;
  v28 = a4;
  v7 = v6;
  v11 = sub_18BC1EC08();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v6;
  v17 = sub_18B857EE4(a2);
  v18 = *(v15 + 16);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v21 = v16;
  v22 = *(v15 + 24);
  if (v22 < v20 || (a3 & 1) == 0)
  {
    if (v22 >= v20 && (a3 & 1) == 0)
    {
      v28();
      goto LABEL_9;
    }

    v29();
    v23 = sub_18B857EE4(a2);
    if ((v21 & 1) == (v24 & 1))
    {
      v17 = v23;
      goto LABEL_9;
    }

LABEL_15:
    sub_18BC22078();
    __break(1u);
    return;
  }

LABEL_9:
  v25 = a1;
  v26 = *v7;
  if (v21)
  {
    *(*(v26 + 56) + 8 * v17) = v25;
  }

  else
  {
    (*(v12 + 16))(v14, a2, v11);
    v30(v17, v14, v25, v26);
  }
}

void sub_18B85816C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v8 = a2;
  v9 = sub_18BC1EC08();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v46 = v8;
  v14 = sub_18BC21D78();
  v15 = v14;
  if (*(v13 + 16))
  {
    v49 = v12;
    v41 = v4;
    v16 = 0;
    v17 = (v13 + 64);
    v18 = 1 << *(v13 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v13 + 64);
    v21 = (v18 + 63) >> 6;
    v42 = (v10 + 16);
    v43 = v13;
    v44 = v9;
    v45 = v10;
    v47 = (v10 + 32);
    v22 = v14 + 64;
    while (v20)
    {
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v27 = v24 | (v16 << 6);
      v28 = *(v13 + 48);
      v48 = *(v45 + 72);
      v29 = v28 + v48 * v27;
      if (v46)
      {
        (*v47)(v49, v29, v9);
        v30 = *(*(v13 + 56) + 8 * v27);
      }

      else
      {
        (*v42)(v49, v29, v9);
        v30 = *(*(v13 + 56) + 8 * v27);
        sub_18BC1E3F8();
      }

      sub_18B80D494();
      v31 = sub_18BC20A68();
      v32 = -1 << *(v15 + 32);
      v33 = v31 & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v22 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v22 + 8 * v34);
          if (v38 != -1)
          {
            v23 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v23 = __clz(__rbit64((-1 << v33) & ~*(v22 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      v9 = v44;
      (*v47)((*(v15 + 48) + v48 * v23), v49, v44);
      *(*(v15 + 56) + 8 * v23) = v30;
      ++*(v15 + 16);
      v13 = v43;
    }

    v25 = v16;
    while (1)
    {
      v16 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v16 >= v21)
      {
        break;
      }

      v26 = v17[v16];
      ++v25;
      if (v26)
      {
        v24 = __clz(__rbit64(v26));
        v20 = (v26 - 1) & v26;
        goto LABEL_15;
      }
    }

    if ((v46 & 1) == 0)
    {

      v7 = v41;
      goto LABEL_34;
    }

    v39 = 1 << *(v13 + 32);
    v7 = v41;
    if (v39 >= 64)
    {
      bzero(v17, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v39;
    }

    *(v13 + 16) = 0;
  }

LABEL_34:
  *v7 = v15;
}

uint64_t sub_18B85850C(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_18BC1EC08();
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  *(a4[7] + 8 * a1) = a3;
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_18B8585EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_18B858634(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v7 = [ObjCClassFromMetadata currentPhase];
  if (v7 > a1 || v7 == -1)
  {
    v17 = a2;
    v18 = a3;
    v13 = MEMORY[0x1E69E9820];
    v14 = 1107296256;
    v15 = sub_18B7B0DB0;
    v16 = &block_descriptor_3;
    v9 = _Block_copy(&v13);
    sub_18BC1E1A8();

    [ObjCClassFromMetadata addCommitHandler:v9 forPhase:a1];
    _Block_release(v9);
  }

  else
  {
    v10 = *MEMORY[0x1E69DDA98];
    if (*MEMORY[0x1E69DDA98])
    {
      v17 = a2;
      v18 = a3;
      v13 = MEMORY[0x1E69E9820];
      v14 = 1107296256;
      v15 = sub_18B7B0DB0;
      v16 = &block_descriptor_41;
      v11 = _Block_copy(&v13);
      sub_18BC1E1A8();
      v12 = v10;

      [v12 _performBlockAfterCATransactionCommits_];
      _Block_release(v11);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_18B8587D4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_18BC1EC08();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v42 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D7208, &qword_18BC47840);
  v41 = v4;
  v9 = sub_18BC21D78();
  v10 = v9;
  if (*(v8 + 16))
  {
    v45 = v5;
    v37 = v2;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v38 = (v6 + 16);
    v39 = v8;
    v40 = v6;
    v43 = (v6 + 32);
    v17 = v9 + 64;
    v18 = v42;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 48);
      v44 = *(v40 + 72);
      v25 = v24 + v44 * v23;
      if (v41)
      {
        (*v43)(v18, v25, v45);
        v26 = *(*(v8 + 56) + 8 * v23);
      }

      else
      {
        (*v38)(v18, v25, v45);
        v26 = *(*(v8 + 56) + 8 * v23);
        sub_18BC1E1A8();
      }

      sub_18B80D494();
      v27 = sub_18BC20A68();
      v28 = -1 << *(v10 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        v18 = v42;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v19 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
      v18 = v42;
LABEL_7:
      *(v17 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v43)((*(v10 + 48) + v44 * v19), v18, v45);
      *(*(v10 + 56) + 8 * v19) = v26;
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_34;
    }

    v35 = 1 << *(v8 + 32);
    v3 = v37;
    if (v35 >= 64)
    {
      bzero(v12, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
}

void sub_18B858B80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), void (*a5)(BOOL, uint64_t, uint64_t), void (*a6)(void))
{
  v24 = a2;
  v11 = a3(0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v24 - v13;
  sub_18B815248(a1, &v24 - v13, a4);
  v15 = v6 + 1;
  v16 = v6[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6[1] = v16;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a5(0, *(v16 + 16) + 1, 1);
    v16 = *v15;
  }

  v19 = *(v16 + 16);
  v18 = *(v16 + 24);
  if (v19 >= v18 >> 1)
  {
    a5(v18 > 1, v19 + 1, 1);
    v16 = *v15;
  }

  *(v16 + 16) = v19 + 1;
  sub_18B80D354(v14, v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v19, a4);
  v6[1] = v16;
  v20 = *v6;
  if (*v6)
  {
    swift_beginAccess();
    if (MEMORY[0x18CFFA660](*(v20 + 16) & 0x3FLL) > v19)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v22 = *v6;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v22)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v23 = sub_18BC1F178();

        *v6 = v23;
        v22 = v23;
      }

      if (v22)
      {
        sub_18BC1F128();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v19 < 0xF)
  {
    return;
  }

  a6();
}

char *sub_18B858E00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D4C68, &qword_18BC42950);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

void sub_18B858F04(uint64_t a1, int64_t a2, unint64_t a3)
{
  v48 = a1;
  v49 = a2;
  v53 = _s4ItemVMa_2(0);
  v51 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46 - v8;
  updated = _s7SectionVMa_1(0);
  MEMORY[0x1EEE9AC00](updated);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v52 = v3;
  v16 = (v3 + 4);
  v17 = v3[4];
  v46 = v16;
  v47 = v18;
  v19 = *(v16 + 8);
  v50 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v20 = v19 + v50;
  v21 = *(v19 + 16);
  if (v17)
  {
    sub_18BC1E1A8();
    sub_18B9D0D54(a3, v20, v21, (v17 + 16), v17 + 32);
    v23 = v22;

    if ((v23 & 1) == 0)
    {
      goto LABEL_18;
    }

LABEL_11:
    sub_18BA3A0F0(a3);
    v26 = *v52;
    v27 = *(*v52 + 16);
    if (v27)
    {
      v28 = *(*v52 + 16 + 16 * v27 + 8);
    }

    else
    {
      v28 = 0;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_15;
    }

    goto LABEL_55;
  }

  if (!v21)
  {
    goto LABEL_11;
  }

  v24 = *(v47 + 72);
  while (1)
  {
    sub_18B815248(v20, v15, _s7SectionVMa_1);
    if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
    {
      break;
    }

    sub_18B82A40C(v15, _s7SectionVMa_1);
LABEL_7:
    v20 += v24;
    if (!--v21)
    {
      goto LABEL_11;
    }
  }

  v25 = v15[*(updated + 20)];
  sub_18B82A40C(v15, _s7SectionVMa_1);
  if (v25 != *(a3 + *(updated + 20)))
  {
    goto LABEL_7;
  }

  while (1)
  {
LABEL_18:
    v26 = v52[4];
    v31 = v52[5];
    v27 = v31 + v50;
    v28 = *(v31 + 16);
    if (!v26)
    {
      goto LABEL_22;
    }

    sub_18BC1E1A8();
    v32 = sub_18B9D0D54(a3, v27, v28, (v26 + 16), v26 + 32);
    v27 = v33;

    if (v27)
    {
      goto LABEL_56;
    }

    if ((v32 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_28:
    if (v32 >= *(*v52 + 16))
    {
      goto LABEL_51;
    }

    v35 = *v52 + 16 * v32;
    v36 = *(v35 + 32);
    v37 = *(v35 + 40);
    v38 = __OFSUB__(v37, v36);
    v39 = v37 - v36;
    if (!v38)
    {
      if (v49 < 0 || v39 < v49)
      {
        goto LABEL_53;
      }

      v46 = v36 + v49;
      if (__OFADD__(v36, v49))
      {
        goto LABEL_54;
      }

      v40 = sub_18BC1E3F8();
      sub_18B859530(v40);
      v50 = *(v41 + 16);
      if (!v50)
      {

        v12 = 0;
LABEL_48:
        sub_18B859708(v32, v12);
        return;
      }

      v12 = 0;
      a3 = 0;
      v49 = (*(v51 + 80) + 32) & ~*(v51 + 80);
      v47 = v41;
      v48 = v41 + v49;
      while (2)
      {
        if (a3 >= *(v41 + 16))
        {
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
          break;
        }

        v42 = *(v51 + 72);
        sub_18B815248(v48 + v42 * a3, v9, _s4ItemVMa_2);
        v28 = v52[1];
        v43 = v52[2];
        v26 = v43 + v49;
        v27 = *(v43 + 16);
        if (v28)
        {
          sub_18BC1E1A8();
          sub_18B9D0B20(v9, v26, v27, v28 + 2, v28 + 32);
          v27 = v44;
          v26 = v45;

          if ((v27 & 1) == 0)
          {
            goto LABEL_41;
          }

LABEL_36:
          v27 = (v52 + 1);
          sub_18B859EA4(v9, v46, v26);
          sub_18B82A40C(v9, _s4ItemVMa_2);
          v38 = __OFADD__(v12++, 1);
          if (v38)
          {
            goto LABEL_50;
          }
        }

        else
        {
          if (!v27)
          {
LABEL_35:
            v26 = 0;
            goto LABEL_36;
          }

          while (1)
          {
            v28 = _s4ItemVMa_2;
            sub_18B815248(v26, v6, _s4ItemVMa_2);
            updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
            sub_18B82A40C(v6, _s4ItemVMa_2);
            if (updated)
            {
              break;
            }

            v26 += v42;
            if (!--v27)
            {
              goto LABEL_35;
            }
          }

LABEL_41:
          sub_18B82A40C(v9, _s4ItemVMa_2);
        }

        ++a3;
        v41 = v47;
        if (a3 == v50)
        {

          goto LABEL_48;
        }

        continue;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    v26 = sub_18B858E00(0, v27 + 1, 1, v26);
LABEL_15:
    v30 = *(v26 + 16);
    v29 = *(v26 + 24);
    if (v30 >= v29 >> 1)
    {
      v26 = sub_18B858E00((v29 > 1), v30 + 1, 1, v26);
    }

    *(v26 + 16) = v30 + 1;
    *(v26 + 16 * v30 + 32) = vdupq_n_s64(v28);
    *v52 = v26;
  }

  __break(1u);
LABEL_22:
  if (v28)
  {
    v32 = 0;
    v26 = *(v47 + 72);
    do
    {
      sub_18B815248(v27, v12, _s7SectionVMa_1);
      if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
      {
        v34 = v12[*(updated + 20)];
        sub_18B82A40C(v12, _s7SectionVMa_1);
        if (v34 == *(a3 + *(updated + 20)))
        {
          goto LABEL_28;
        }
      }

      else
      {
        sub_18B82A40C(v12, _s7SectionVMa_1);
      }

      ++v32;
      v27 += v26;
    }

    while (v28 != v32);
  }

LABEL_56:
  __break(1u);
}

void sub_18B859530(void *a1)
{
  v2 = _s4ItemVMa_2(0);
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v15 = &v14 - v6;
  v7 = a1[2];
  if (v7 < 2)
  {
    return;
  }

  v8 = 0;
  v9 = v7 >> 1;
  for (i = v7 - 1; ; --i)
  {
    if (v8 == i)
    {
      goto LABEL_5;
    }

    v11 = a1[2];
    if (v8 >= v11)
    {
      break;
    }

    v12 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v13 = *(v14 + 72);
    sub_18B815248(a1 + v12 + v13 * v8, v15, _s4ItemVMa_2);
    if (i >= v11)
    {
      goto LABEL_14;
    }

    sub_18B815248(a1 + v12 + v13 * i, v4, _s4ItemVMa_2);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_18BAE37B0(a1);
    }

    sub_18BA3B58C(v4, a1 + v12 + v13 * v8);
    if (i >= a1[2])
    {
      goto LABEL_15;
    }

    sub_18BA3B58C(v15, a1 + v12 + v13 * i);
LABEL_5:
    if (v9 == ++v8)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_18B859708(unint64_t a1, uint64_t a2)
{
  if ((a1 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v5 = a1;
  v4 = *v3;
  if (*(*v3 + 2) <= a1)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v2 = a2;
  v8 = &v4[16 * a1];
  v9 = *(v8 + 5);
  v6 = v9 + a2;
  if (__OFADD__(v9, a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v7 = *(v8 + 4);
  if (v6 >= v7)
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_6;
    }

    goto LABEL_27;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v4 = sub_18BA79D48(v4);
LABEL_6:
  v10 = &v4[16 * v5];
  *(v10 + 4) = v7;
  *(v10 + 5) = v6;
  *v3 = v4;
  ++v5;
  v6 = *(v4 + 2);
  v11 = v6 - v5;
  if (v6 > v5)
  {
    v19 = v3;
    v20 = MEMORY[0x1E69E7CC0];
    sub_18BC1E3F8();
    sub_18B9B66E0(0, v11 & ~(v11 >> 63), 0);
    if (v11 < 0)
    {
      __break(1u);
    }

    else
    {
      v17 = v6;
      v18 = v5;
      v7 = v20;
      v12 = v10 + 56;
      do
      {
        v13 = *(v12 - 1);
        v14 = v13 + v2;
        if (__OFADD__(v13, v2))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v5 = *v12 + v2;
        if (__OFADD__(*v12, v2))
        {
          goto LABEL_21;
        }

        if (v5 < v14)
        {
          goto LABEL_22;
        }

        v6 = *(v20 + 16);
        v15 = *(v20 + 24);
        if (v6 >= v15 >> 1)
        {
          sub_18B9B66E0((v15 > 1), v6 + 1, 1);
          v3 = v19;
        }

        *(v20 + 16) = v6 + 1;
        v16 = v20 + 16 * v6;
        *(v16 + 32) = v14;
        *(v16 + 40) = v5;
        v12 += 2;
        --v11;
      }

      while (v11);

      sub_18BB7A5A0(v18, v17, v20);
    }
  }
}

uint64_t sub_18B8598D4(uint64_t a1, uint64_t a2)
{
  v44 = _s4ItemVMa_2(0);
  MEMORY[0x1EEE9AC00](v44);
  v5 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = _s7SectionVMa_1(0);
  MEMORY[0x1EEE9AC00](v43);
  v7 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v8);
  v45 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v46 = &v43 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v43 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v43 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v43 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9DA528, &qword_18BC506E8);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v43 - v22;
  v25 = *(v24 + 56);
  sub_18B83AA0C(a1, &v43 - v22);
  sub_18B83AA0C(a2, &v23[v25]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_18B83AA0C(v23, v14);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D5090, &unk_18BC4CB80);
        v30 = swift_projectBox();
        v31 = *(v29 + 48);
        v32 = swift_projectBox();
        sub_18B833990(v30, v48);
        sub_18B833990(v32, v47);
        v33 = v46;
        sub_18B83AA0C(v30 + v31, v46);
        v34 = v45;
        sub_18B83AA0C(v32 + v31, v45);
        if ((_s12MobileSafari31SFFluidTabOverviewSupplementaryO2eeoiySbAC_ACtFZ_0(v48, v47) & 1) == 0)
        {
          sub_18B988BAC(v34, &unk_1EA9D92F0, &qword_18BC42990);
          sub_18B988BAC(v33, &unk_1EA9D92F0, &qword_18BC42990);
          sub_18B833D9C(v47);
          sub_18B833D9C(v48);

          v38 = v23;
          v36 = &unk_1EA9D92F0;
          v37 = &qword_18BC42990;
          goto LABEL_18;
        }

        updated = sub_18B8598D4(v33, v34);
        sub_18B988BAC(v34, &unk_1EA9D92F0, &qword_18BC42990);
        sub_18B988BAC(v33, &unk_1EA9D92F0, &qword_18BC42990);
        sub_18B833D9C(v47);
        sub_18B833D9C(v48);

        sub_18B988BAC(v23, &unk_1EA9D92F0, &qword_18BC42990);
        return updated & 1;
      }
    }

    else if (swift_getEnumCaseMultiPayload() == 3)
    {
LABEL_12:
      sub_18B988BAC(v23, &unk_1EA9D92F0, &qword_18BC42990);
      updated = 1;
      return updated & 1;
    }

LABEL_16:
    v36 = &qword_1EA9DA528;
    v37 = &qword_18BC506E8;
LABEL_17:
    v38 = v23;
LABEL_18:
    sub_18B988BAC(v38, v36, v37);
    updated = 0;
    return updated & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_18B83AA0C(v23, v20);
    if (swift_getEnumCaseMultiPayload())
    {
      v27 = _s7SectionVMa_1;
      v28 = v20;
LABEL_15:
      sub_18B8154A0(v28, v27);
      goto LABEL_16;
    }

    sub_18B8297D4(&v23[v25], v7, _s7SectionVMa_1);
    if ((_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0() & 1) == 0)
    {
      sub_18B8154A0(v7, _s7SectionVMa_1);
      sub_18B8154A0(v20, _s7SectionVMa_1);
LABEL_25:
      v36 = &unk_1EA9D92F0;
      v37 = &qword_18BC42990;
      goto LABEL_17;
    }

    v40 = *(v43 + 20);
    v41 = v20[v40];
    v42 = v7[v40];
    sub_18B8154A0(v7, _s7SectionVMa_1);
    sub_18B8154A0(v20, _s7SectionVMa_1);
    if (v41 != v42)
    {
      goto LABEL_25;
    }

    goto LABEL_12;
  }

  sub_18B83AA0C(v23, v17);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v27 = _s4ItemVMa_2;
    v28 = v17;
    goto LABEL_15;
  }

  sub_18B8297D4(&v23[v25], v5, _s4ItemVMa_2);
  updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
  sub_18B8154A0(v5, _s4ItemVMa_2);
  sub_18B8154A0(v17, _s4ItemVMa_2);
  sub_18B988BAC(v23, &unk_1EA9D92F0, &qword_18BC42990);
  return updated & 1;
}

void sub_18B859EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D68D0, &qword_18BC45E68);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = v3[1];
  v10 = *(v9 + 16);
  v11 = *v3;
  if (*v3)
  {
    swift_beginAccess();
    if (v10 >= MEMORY[0x18CFFA660](*(v11 + 16) & 0x3FLL))
    {
      goto LABEL_14;
    }

    isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
    v10 = *v3;
    if ((isUniquelyReferenced_native & 1) == 0)
    {
      if (!v10)
      {
LABEL_24:
        __break(1u);
        return;
      }

      v13 = sub_18BC1F178();

      *v3 = v13;
      v10 = v13;
    }

    if (!v10)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_18BC1E1A8();
    sub_18BC1E1A8();
    sub_18BA3AF58(a2, v9, (v10 + 16), v10 + 32);

    sub_18BC1F128();

    if (*(v9 + 16) < a2)
    {
      goto LABEL_20;
    }

    if ((a2 & 0x8000000000000000) == 0)
    {
LABEL_13:
      sub_18B815248(a1, v8, _s4ItemVMa_2);
      sub_18B85A0D0(a2, a2, v8);
      return;
    }

    __break(1u);
  }

  if (v10 < 0xF)
  {
    if (v10 >= a2)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      goto LABEL_22;
    }

LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_14:
  if (v10 < a2)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (a2 < 0)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_18B815248(a1, v8, _s4ItemVMa_2);
  sub_18B85A0D0(a2, a2, v8);
  sub_18BA407E8(v14);
}

unint64_t sub_18B85A0D0(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_22:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    goto LABEL_14;
  }

  if (v11 > *(v5 + 24) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

LABEL_14:
    sub_18B85A1AC(isUniquelyReferenced_nonNull_native, v14, 1);
  }

  return sub_18B85A1F0(v7, a2, 1, a3);
}

void *sub_18B85A1AC(void *a1, int64_t a2, char a3)
{
  result = sub_18B825BA0(a1, a2, a3, *v3, &unk_1EA9D4FB0, &qword_18BC42888, _s4ItemVMa_2);
  *v3 = result;
  return result;
}

unint64_t sub_18B85A1F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  result = _s4ItemVMa_2(0);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_22;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
      return result;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_15:
  if (a3 >= 1 && v17 >= 1)
  {
    result = sub_18B85A364(a4, v15);
    if (v12 < v17)
    {
      goto LABEL_25;
    }
  }

  return sub_18B85A3C8(a4);
}

uint64_t sub_18B85A364(uint64_t a1, uint64_t a2)
{
  v4 = _s4ItemVMa_2(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_18B85A3C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D68D0, &qword_18BC45E68);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_18B85A430(uint64_t a1)
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82AD7C(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  return sub_18BC221A8();
}

uint64_t sub_18B85A52C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B85A594(uint64_t a1, unint64_t a2, char a3)
{
  v26 = a1;
  v6 = _s4ItemVMa_2(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v24 = v7;
  v25 = v3;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_18BB5FDBC(v10 + 1, _s4ItemVMa_2, &qword_1EA9D4F60, &qword_18BC42E88, _s4ItemVMa_2);
  }

  else
  {
    if (v11 > v10)
    {
      sub_18B9CBEBC();
      goto LABEL_12;
    }

    sub_18BB638A8(v10 + 1);
  }

  v12 = *v3;
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970, MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  v13 = sub_18BC221A8();
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v16 = *(v7 + 72);
    do
    {
      sub_18B85A52C(*(v12 + 48) + v16 * a2, v9, _s4ItemVMa_2);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18BB69570(v9, _s4ItemVMa_2);
      if (updated)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = v26;
  v19 = *v25;
  *(*v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_18B85A83C(v18, *(v19 + 48) + *(v24 + 72) * a2, _s4ItemVMa_2);
  v21 = *(v19 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v19 + 16) = v23;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_18BC22068();
  __break(1u);
  return result;
}

uint64_t sub_18B85A83C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B85A8A4(uint64_t a1, uint64_t a2)
{
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B84B080(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  sub_18BC22178();
  return sub_18BC221A8();
}

uint64_t sub_18B85A944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_18B85A99C(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = _s7SectionVMa_1(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v23 = &v22 - v9;
  v24 = v2;
  v10 = *v2;
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970, MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  v26 = v4;
  v11 = *(a2 + *(v4 + 20));
  sub_18BC22178();
  v12 = sub_18BC221A8();
  v13 = -1 << *(v10 + 32);
  v14 = v12 & ~v13;
  if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = *(v5 + 72);
    do
    {
      sub_18B85A52C(*(v10 + 48) + v16 * v14, v7, _s7SectionVMa_1);
      if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
      {
        v17 = v7[*(v26 + 20)];
        sub_18BB69570(v7, _s7SectionVMa_1);
        if (v11 == v17)
        {
          sub_18BB69570(a2, _s7SectionVMa_1);
          sub_18B85A52C(*(v10 + 48) + v16 * v14, v25, _s7SectionVMa_1);
          return 0;
        }
      }

      else
      {
        sub_18BB69570(v7, _s7SectionVMa_1);
      }

      v14 = (v14 + 1) & v15;
    }

    while (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  v19 = v24;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = v23;
  sub_18B85A52C(a2, v23, _s7SectionVMa_1);
  v27 = *v19;
  sub_18B85AC7C(v21, v14, isUniquelyReferenced_nonNull_native);
  *v19 = v27;
  sub_18B85A83C(a2, v25, _s7SectionVMa_1);
  return 1;
}

uint64_t sub_18B85AC7C(uint64_t a1, unint64_t a2, char a3)
{
  v7 = _s7SectionVMa_1(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v26 = v8;
  v27 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_18B85B24C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_18B9CC0EC();
      goto LABEL_15;
    }

    sub_18B85AF28(v11 + 1);
  }

  v13 = *v3;
  sub_18BC22158();
  sub_18BC1EC08();
  sub_18B82BA00(&qword_1EA9D3970, MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  v14 = *(a1 + *(v7 + 20));
  sub_18BC22178();
  v15 = sub_18BC221A8();
  v16 = -1 << *(v13 + 32);
  a2 = v15 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v18 = *(v8 + 72);
    do
    {
      sub_18B85A52C(*(v13 + 48) + v18 * a2, v10, _s7SectionVMa_1);
      if (_s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0())
      {
        v19 = v10[*(v7 + 20)];
        sub_18BB69570(v10, _s7SectionVMa_1);
        if (v14 == v19)
        {
          sub_18BC22068();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_18BB69570(v10, _s7SectionVMa_1);
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v20 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_18B85A83C(a1, *(v20 + 48) + *(v26 + 72) * a2, _s7SectionVMa_1);
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }

  return result;
}

void sub_18B85AF28(uint64_t a1)
{
  v2 = v1;
  v3 = _s7SectionVMa_1(0);
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5140, &qword_18BC42FE8);
  v7 = sub_18BC21A88();
  v8 = v7;
  if (*(v6 + 16))
  {
    v31 = v1;
    v32 = v6;
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v33 + 72);
      sub_18B85A52C(v20 + v21 * (v17 | (v9 << 6)), v5, _s7SectionVMa_1);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970, MEMORY[0x1E69695B8]);
      sub_18BC20A78();
      sub_18BC22178();
      v22 = sub_18BC221A8();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_18B85A83C(v5, *(v8 + 48) + v16 * v21, _s7SectionVMa_1);
      ++*(v8 + 16);
      v6 = v32;
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

        v2 = v31;
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
    *v2 = v8;
  }
}

void sub_18B85B24C(uint64_t a1)
{
  v2 = v1;
  v3 = _s7SectionVMa_1(0);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5140, &qword_18BC42FE8);
  v7 = sub_18BC21A88();
  v8 = v7;
  if (*(v6 + 16))
  {
    v32 = v1;
    v33 = v6;
    v9 = 0;
    v10 = (v6 + 56);
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
    v15 = v7 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v6 + 48);
      v21 = *(v34 + 72);
      sub_18B85A83C(v20 + v21 * (v17 | (v9 << 6)), v5, _s7SectionVMa_1);
      sub_18BC22158();
      sub_18BC1EC08();
      sub_18B82BA00(&qword_1EA9D3970, MEMORY[0x1E69695B8]);
      sub_18BC20A78();
      sub_18BC22178();
      v22 = sub_18BC221A8();
      v23 = -1 << *(v8 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v15 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v15 + 8 * v25);
          if (v29 != -1)
          {
            v16 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v16 = __clz(__rbit64((-1 << v24) & ~*(v15 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      sub_18B85A83C(v5, *(v8 + 48) + v16 * v21, _s7SectionVMa_1);
      ++*(v8 + 16);
      v6 = v33;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v30 = 1 << *(v6 + 32);
    if (v30 >= 64)
    {
      bzero(v10, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v30;
    }

    v2 = v32;
    *(v6 + 16) = 0;
  }

  *v2 = v8;
}

uint64_t sub_18B85B5A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B85B608(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_18B85B670@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, uint64_t a4@<X8>)
{
  sub_18B8554D0(a1, a4, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18B85B700(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_18B85B760(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_18B85B7F0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v8 = v5;
  v39 = a2;
  v40 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v36 - v10;
  v12 = *v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v13 = sub_18BC21A88();
  v14 = v13;
  if (*(v12 + 16))
  {
    v37 = v5;
    v15 = 0;
    v16 = (v12 + 56);
    v17 = 1 << *(v12 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v12 + 56);
    v20 = (v17 + 63) >> 6;
    v21 = v13 + 56;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_15:
      v26 = *(v38 + 72);
      sub_18B7CF39C(*(v12 + 48) + v26 * (v23 | (v15 << 6)), v11, v39, v40);
      sub_18BC22158();
      sub_18B83ADFC(v41);
      v27 = sub_18BC221A8();
      v28 = -1 << *(v14 + 32);
      v29 = v27 & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v21 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v21 + 8 * v30);
          if (v34 != -1)
          {
            v22 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v29) & ~*(v21 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      sub_18B7CF39C(v11, *(v14 + 48) + v22 * v26, v39, v40);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    v35 = 1 << *(v12 + 32);
    if (v35 >= 64)
    {
      bzero((v12 + 56), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v35;
    }

    v8 = v37;
    *(v12 + 16) = 0;
  }

  *v8 = v14;
}

void sub_18B85BADC(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (v3)
  {
    v4 = v3;
    if (sub_18B81280C())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 56))(v4, v1, a1, ObjectType, v6);
      v10 = v9;
      swift_unknownObjectRelease();

      if (v8 != 0.0 || v10 != 0.0)
      {
        return;
      }
    }

    else
    {
    }
  }

  v11 = *(*v1 + 776);

  v11();
}

double sub_18B85BC44(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (!v3)
  {
    return *MEMORY[0x1E69DDCE0];
  }

  v4 = v3;
  v5 = (*(*v1 + 752))();
  if (sub_18B81280C())
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v25 = v5;
    v5 = (*(v7 + 40))(v4, v1, a1, ObjectType, v7);
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v15 = *(MEMORY[0x1E69DC5C0] + 8);
    v16 = *(MEMORY[0x1E69DC5C0] + 24);
    v23 = *MEMORY[0x1E69DC5C0];
    v24 = *(MEMORY[0x1E69DC5C0] + 16);
    swift_unknownObjectRelease();
    v17 = v25;
    if (v14 != v16)
    {
      v17 = v5;
    }

    if (v5 == v23 && v10 == v15 && v12 == v24)
    {
      v5 = v17;
    }
  }

  v20 = v4;
  v21 = [v20 traitCollection];
  [v21 layoutDirection];

  [v20 safeAreaInsets];
  [v20 safeAreaInsets];

  return v5;
}

unint64_t sub_18B85BEA4(uint64_t a1, double a2, double a3, double a4, double a5, double a6)
{
  v13 = (*(*v6 + 456))();
  if (v13)
  {
    v15 = v13;
    if (sub_18B81280C())
    {
      v17 = v16;
      ObjectType = swift_getObjectType();
      v19 = (*(v17 + 32))(v15, v6, a1, ObjectType, v17);
      swift_unknownObjectRelease();

      if (v19)
      {
        return v19;
      }
    }

    else
    {
    }
  }

  return sub_18B85BFC8(v6[82], v6[83], v6[84], v6[85], a6, v14, a2, a3, a4, a5);
}

unint64_t sub_18B85BFC8(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v30 = *(*v18 + 728);
  if (!v30())
  {
    return SFTabOverviewNumberOfColumns(v18[648], a1, a2, a3, a4, a5, v25, v26, v27, a7, a8, a9, a10);
  }

  return v30();
}

unint64_t SFTabOverviewNumberOfColumns(int a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, double a9, double a10, double a11, double a12, double a13)
{
  Width = CGRectGetWidth(*&a2);
  if (a1)
  {
    if (Width <= 896.0)
    {
      v20 = 2;
    }

    else
    {
      v20 = 3;
    }
  }

  else if (Width < 981.0)
  {
    v20 = 3;
  }

  else
  {
    v20 = 4;
  }

  v21 = SFTabOverviewMinimumItemWidthForBounds(a2, a3, a4, a5) + a6;
  v22 = a3 + a10;
  v23 = a4 - (a11 + a13);
  v24 = a5 - (a10 + a12);
  v27.origin.x = a2 + a11;
  v27.origin.y = v22;
  v27.size.width = v23;
  v27.size.height = v24;
  if (floor(CGRectGetWidth(v27) / v21) >= 2.0)
  {
    v28.origin.x = a2 + a11;
    v28.origin.y = v22;
    v28.size.width = v23;
    v28.size.height = v24;
    v25 = vcvtmd_u64_f64(CGRectGetWidth(v28) / v21);
  }

  else
  {
    v25 = 2;
  }

  if (v25 >= v20)
  {
    return v20;
  }

  else
  {
    return v25;
  }
}

double SFTabOverviewMinimumItemWidthForBounds(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4)
{
  if (CGRectGetHeight(*&a1) <= 1194.0)
  {
    v13.origin.x = a1;
    v13.origin.y = a2;
    v13.size.width = a3;
    v13.size.height = a4;
    Width = CGRectGetWidth(v13);
    v14.origin.x = a1;
    v14.origin.y = a2;
    v14.size.width = a3;
    v14.size.height = a4;
    v11 = Width / CGRectGetHeight(v14) <= 2.0;
    v9 = 0.0;
    v8 = 30.0;
    if (v11)
    {
      v8 = 0.0;
    }
  }

  else
  {
    v8 = 0.0;
    v9 = 10.0;
  }

  return 195.0 - v9 + v8;
}

uint64_t sub_18B85C2D4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D92F0, &qword_18BC42990);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v17[-v3 - 8];
  v5 = *(sub_18B85C534() + 24);

  if (v5 == a1)
  {
    return 0;
  }

  swift_beginAccess();
  v6 = a1[5];
  swift_storeEnumTagMultiPayload();
  v7 = *(v6 + 16);
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  sub_18BC1E1A8();
  sub_18BC1E1A8();
  sub_18BC1E3F8();
  if (v7 && (v8 = sub_18B83B1C8(v4), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
    sub_18BC1E3F8();
  }

  else
  {
    v10 = MEMORY[0x1E69E7CD0];
  }

  sub_18B988BAC(v4, &unk_1EA9D92F0, &qword_18BC42990);
  v18 = 0uLL;
  *v19 = 0;
  *&v19[8] = xmmword_18BC3FCA0;
  v11 = sub_18B85CEA8(&v18, v10);

  sub_18B833D9C(&v18);
  if (v11)
  {
    return 0;
  }

  v13 = *(a1 + 2);
  v18 = *(a1 + 1);
  *v19 = v13;
  *&v19[16] = *(a1 + 3);
  sub_18B7CA054(&v18, v17, &unk_1EA9D4F90, &unk_18BC4F810);
  v14 = sub_18B85D160();
  sub_18B988BAC(&v18, &unk_1EA9D4F90, &unk_18BC4F810);
  v15 = sub_18B85D34C(v14);

  return v15;
}

uint64_t sub_18B85C534()
{
  v1 = OBJC_IVAR___SFTabOverview____lazy_storage___gridSizingInfo;
  if (*(v0 + OBJC_IVAR___SFTabOverview____lazy_storage___gridSizingInfo))
  {
    v2 = *(v0 + OBJC_IVAR___SFTabOverview____lazy_storage___gridSizingInfo);
  }

  else
  {
    v3 = sub_18B82FEA0();
    _s14GridSizingInfoCMa(0);
    swift_allocObject();
    v2 = sub_18B85C6C8(v3);

    *(v0 + v1) = v2;
    sub_18BC1E1A8();
  }

  sub_18BC1E1A8();
  return v2;
}

uint64_t _s14GridSizingInfoCMa(uint64_t a1)
{
  result = qword_1EA9D68C0;
  if (!qword_1EA9D68C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_18B85C61C(uint64_t a1)
{
  result = _s7SectionVMa_1(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_18B85C6C8(void *a1)
{
  v2 = v1;
  v4 = sub_18BC1EC08();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + OBJC_IVAR____TtCC12MobileSafari11TabOverview14GridSizingInfo_section;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D4FB0, &qword_18BC42888);
  v9 = (_s4ItemVMa_2(0) - 8);
  v10 = (*(*v9 + 80) + 32) & ~*(*v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_18BC3E410;
  v12 = (v11 + v10);
  *v12 = 1;
  sub_18BC1DE28();
  v12[v9[8]] = 0;
  v12[v9[9]] = 0;
  v12[v9[10]] = 0;
  v12[v9[11]] = 0;
  *&v12[v9[12]] = 0;
  v13 = &v12[v9[13]];
  *v13 = sub_18B814EE4;
  v13[1] = 0;
  *&v12[v9[14]] = MEMORY[0x1E69E7CC0];
  v14 = &v12[v9[15]];
  *v14 = 0;
  v14[1] = 0;
  sub_18BC1DE28();
  (*(v5 + 32))(v8, v7, v4);
  v15 = _s7SectionVMa_1(0);
  *(v8 + v15[5]) = 0;
  *(v8 + v15[6]) = 0;
  *(v8 + v15[7]) = v11;
  v16 = (v8 + v15[8]);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D68D8, &qword_18BC45E70);
  v18 = objc_allocWithZone(v17);
  v19 = &v18[qword_1EA9DAF80];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  *&v18[qword_1EA9DAF88] = a1;
  v29.receiver = v18;
  v29.super_class = v17;
  v20 = a1;
  *(v2 + 16) = objc_msgSendSuper2(&v29, sel_init);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D68E0, &qword_18BC45E78);
  swift_allocObject();
  v21 = sub_18B84ED80();
  *(v2 + 24) = v21;
  v22 = *(v2 + 16);
  v23 = sub_18B85CAA8();
  v24 = *(*v21 + 440);
  sub_18BC1E1A8();
  v25 = v22;
  v24(v22, v23);

  v26 = *(**(v2 + 24) + 464);
  v27 = v20;
  sub_18BC1E1A8();
  v26(v20);

  return v2;
}

unint64_t sub_18B85CAA8()
{
  result = qword_1EA9D68E8;
  if (!qword_1EA9D68E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA9D68D8, &qword_18BC45E70);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA9D68E8);
  }

  return result;
}

uint64_t sub_18B85CB0C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

double sub_18B85CB48(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 496) = a2;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return result;
}

void sub_18B85CBA8(void *a1)
{
  sub_18B85CBE4(a1);
  sub_18B85CC2C();
}

void sub_18B85CC2C()
{
  (*(*v0 + 848))();
  v1 = (*(*v0 + 456))();
  sub_18B85CE9C(v1);
}

uint64_t sub_18B85CCEC(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  swift_unknownObjectWeakInit();
  *(v2 + 56) = xmmword_18BC50260;
  *(v2 + 72) = xmmword_18BC50270;
  v6 = MEMORY[0x1E69DDCE0];
  *(v2 + 104) = xmmword_18BC50280;
  v7 = v6[1];
  *(v2 + 120) = *v6;
  *(v2 + 24) = 0;
  *(v2 + 32) = 257;
  *(v2 + 40) = 0x4018000000000000;
  *(v2 + 48) = 0;
  *(v2 + 88) = 0x404A000000000000;
  *(v2 + 96) = 1;
  *(v2 + 136) = v7;
  *(v2 + 152) = 0;
  v8 = v5[10];
  v9 = v5[11];
  v10 = v5[12];
  v11 = v5[13];
  v12 = sub_18B8103B0();
  SFFluidCollectionView.DataSource.Snapshot.init()(v8, v9, &type metadata for SFFluidTabOverviewSupplementary, v10, v11, v12, (v2 + 176));
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
  if ([objc_opt_self() isSolariumEnabled])
  {
    *(v2 + 72) = 0x404A800000000000;
    *(v2 + 88) = 0x404C000000000000;
  }

  return v2;
}

uint64_t sub_18B85CE4C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  sub_18B85CCEC(a1, a2);
  return v4;
}

uint64_t sub_18B85CEA8(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  sub_18BC22158();
  sub_18B833990(a1, &v20);
  if (*(&v21 + 1) > 1)
  {
    if (*(&v21 + 1) == 2)
    {
      v4 = 3;
      goto LABEL_13;
    }

    if (*(&v21 + 1) == 3)
    {
      v4 = 4;
      goto LABEL_13;
    }
  }

  else
  {
    if (!*(&v21 + 1))
    {
      v4 = 0;
      goto LABEL_13;
    }

    if (*(&v21 + 1) == 1)
    {
      v4 = 1;
LABEL_13:
      MEMORY[0x18CFFD660](v4);
      goto LABEL_14;
    }
  }

  v13[0] = v20;
  v13[1] = v21;
  v14 = v22;
  MEMORY[0x18CFFD660](2);
  sub_18BC21A58();
  sub_18B831014(v13);
LABEL_14:
  v6 = sub_18BC221A8();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    sub_18B833990(*(a2 + 48) + 40 * v8, &v20);
    sub_18B833990(&v20, v15);
    sub_18B833990(a1, &v17);
    if (v16 > 1)
    {
      if (v16 == 2)
      {
        sub_18B833D9C(&v20);
        if (*(&v18 + 1) == 2)
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v16 == 3)
      {
        sub_18B833D9C(&v20);
        if (*(&v18 + 1) == 3)
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    else
    {
      if (!v16)
      {
        sub_18B833D9C(&v20);
        if (!*(&v18 + 1))
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }

      if (v16 == 1)
      {
        sub_18B833D9C(&v20);
        if (*(&v18 + 1) == 1)
        {
          goto LABEL_36;
        }

        goto LABEL_30;
      }
    }

    sub_18B833990(v15, v13);
    if (*(&v18 + 1) >= 4uLL)
    {
      break;
    }

    sub_18B833D9C(&v20);
    sub_18B831014(v13);
LABEL_30:
    sub_18B988BAC(v15, &unk_1EA9D4F50, &qword_18BC42380);
LABEL_31:
    v8 = (v8 + 1) & v9;
    if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  v11[0] = v17;
  v11[1] = v18;
  v12 = v19;
  v10 = MEMORY[0x18CFFCF40](v13, v11);
  sub_18B831014(v11);
  sub_18B833D9C(&v20);
  sub_18B831014(v13);
  if ((v10 & 1) == 0)
  {
    sub_18B833D9C(v15);
    goto LABEL_31;
  }

LABEL_36:
  sub_18B833D9C(v15);
  return 1;
}

uint64_t sub_18B85D160()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v9 = MEMORY[0x1E69E7CC0];
    sub_18B85D32C(0, v2, 0);
    result = v9;
    v4 = (v1 + 40);
    while (1)
    {
      v5 = *(v4 - 1);
      v6 = *v4 - v5;
      if (__OFSUB__(*v4, v5))
      {
        break;
      }

      v10 = result;
      v8 = *(result + 16);
      v7 = *(result + 24);
      if (v8 >= v7 >> 1)
      {
        sub_18B85D32C((v7 > 1), v8 + 1, 1);
        result = v10;
      }

      v4 += 2;
      *(result + 16) = v8 + 1;
      *(result + 8 * v8 + 32) = v6;
      if (!--v2)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

char *sub_18B85D228(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DB730, &unk_18BC42A20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_18B85D32C(char *a1, int64_t a2, char a3)
{
  result = sub_18B85D228(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

int64_t sub_18B85D34C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    if (v1 >= 5)
    {
      v4 = v3 & 0xFFFFFFFFFFFFFFFCLL | 1;
      v5 = vdupq_n_s64(v2);
      v6 = (a1 + 56);
      v7 = v3 & 0xFFFFFFFFFFFFFFFCLL;
      v8 = v5;
      do
      {
        v5 = vbslq_s8(vcgtq_s64(v5, v6[-1]), v5, v6[-1]);
        v8 = vbslq_s8(vcgtq_s64(v8, *v6), v8, *v6);
        v6 += 2;
        v7 -= 4;
      }

      while (v7);
      v9 = vbslq_s8(vcgtq_s64(v5, v8), v5, v8);
      v10 = vextq_s8(v9, v9, 8uLL).u64[0];
      v2 = vbsl_s8(vcgtd_s64(v9.i64[0], v10), *v9.i8, v10);
      if (v3 == (v3 & 0xFFFFFFFFFFFFFFFCLL))
      {
        return v2;
      }
    }

    else
    {
      v4 = 1;
    }

    v11 = v1 - v4;
    v12 = (a1 + 8 * v4 + 32);
    do
    {
      v14 = *v12++;
      v13 = v14;
      if (v2 <= v14)
      {
        v2 = v13;
      }

      --v11;
    }

    while (v11);
  }

  return v2;
}

uint64_t SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  v16[0] = a4;
  v16[1] = a5;
  v16[2] = a6;
  v16[3] = a7;
  v16[4] = a8;
  v16[5] = a10;
  v16[6] = a11;
  v14 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.MetricKey(0, v16);
  return (*(*(a7 - 8) + 32))(&a9[*(v14 + 76)], a3, a7);
}

uint64_t sub_18B85D4B4(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_18B85D54C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_18B85D588(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v6 = v5;
  v27 = a2;
  v28 = a1;
  v10 = a4[3];
  v11 = a4[4];
  v12 = a4[5];
  v13 = a4[6];
  v14 = a4[7];
  v31 = a4[2];
  v9 = v31;
  v32 = v10;
  v33 = v11;
  v34 = v12;
  v35 = v13;
  v36 = v14;
  v15 = type metadata accessor for SFFluidCollectionView.Element(0, &v31);
  v26 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v25 = &v25 - v16;
  v31 = v9;
  v32 = v10;
  v33 = v11;
  v34 = a5;
  v35 = v12;
  v36 = v13;
  v37 = v14;
  type metadata accessor for SFFluidCollectionView.LayoutSnapshot.MetricKey(0, &v31);
  swift_getWitnessTable();
  sub_18BC21E18();
  v30[3] = a5;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v30);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0Tm, v28, a5);
  swift_isUniquelyReferenced_nonNull_native();
  v29 = *v6;
  v18 = v29;
  *v6 = 0x8000000000000000;
  WitnessTable = swift_getWitnessTable();
  sub_18B84FAF0(a3, v15, WitnessTable);
  if (__OFADD__(*(v18 + 16), (v20 & 1) == 0))
  {
    __break(1u);
LABEL_8:
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

  v21 = v20;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EA9DAA28, &qword_18BC51F80);
  sub_18BC21CE8();
  if (sub_18BC21CC8())
  {
    sub_18B84FAF0(a3, v15, WitnessTable);
    if ((v21 & 1) != (v22 & 1))
    {
      goto LABEL_8;
    }
  }

  v23 = v29;

  *v6 = v23;
  if ((v21 & 1) == 0)
  {
    v29 = sub_18B85D9C0(MEMORY[0x1E69E7CC0]);
    (*(v26 + 16))(v25, a3, v15);
    sub_18BC21CD8();
  }

  return sub_18B85D904(v30, &v31);
}

uint64_t sub_18B85D878(uint64_t a1, uint64_t a2)
{
  sub_18BC1EC08();
  sub_18B84B080(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_18BC20A78();
  return sub_18BC22178();
}

uint64_t sub_18B85D904(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_18B7B1AD4(a1, v7);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = *v2;
    sub_18B85DAFC(v7, a2, isUniquelyReferenced_nonNull_native);
    result = sub_18B831014(a2);
    *v2 = v6;
  }

  else
  {
    sub_18B988BAC(a1, &qword_1EA9D5220, &qword_18BC3FCB0);
    sub_18BB5A0C4(a2, v7);
    sub_18B831014(a2);
    return sub_18B988BAC(v7, &qword_1EA9D5220, &qword_18BC3FCB0);
  }

  return result;
}

unint64_t sub_18B85D9C0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72A0, &qword_18BC478F0);
    v3 = sub_18BC21D88();
    v4 = a1 + 32;
    sub_18BC1E1A8();
    while (1)
    {
      sub_18B7CA054(v4, v13, &qword_1EA9D72A8, &qword_18BC478F8);
      result = sub_18B85DC48(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_18B7B1AD4(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

_OWORD *sub_18B85DAFC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_18B85DC48(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      sub_18BB2AF24();
      goto LABEL_7;
    }

    sub_18B85DCD0(v13, a3 & 1);
    v19 = sub_18B85DC48(a2);
    if ((v14 & 1) == (v20 & 1))
    {
      v10 = v19;
      v16 = *v4;
      if (v14)
      {
        goto LABEL_8;
      }

LABEL_13:
      sub_18B7F44EC(a2, v21);
      return sub_18B85E050(v10, v21, a1, v16);
    }

LABEL_15:
    result = sub_18BC22078();
    __break(1u);
    return result;
  }

LABEL_7:
  v16 = *v4;
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v17 = (v16[7] + 32 * v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);

  return sub_18B7B1AD4(a1, v17);
}

unint64_t sub_18B85DC48(uint64_t a1)
{
  v2 = sub_18BC21A38();

  return sub_18B85DF88(a1, v2);
}

uint64_t sub_18B85DC8C(uint64_t a1)
{
  sub_18BC22158();
  SFFluidCollectionView.LayoutSnapshot.MetricKey.hash(into:)(v2);
  return sub_18BC221A8();
}

void sub_18B85DCD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72A0, &qword_18BC478F0);
  v6 = sub_18BC21D78();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v39 = *(v23 + 32);
        v37 = v24;
        v38 = v25;
        sub_18B7B1AD4((*(v5 + 56) + 32 * v22), v36);
      }

      else
      {
        sub_18B7F44EC(v23, &v37);
        sub_18B7B193C(*(v5 + 56) + 32 * v22, v36);
      }

      v26 = sub_18BC21A38();
      v27 = -1 << *(v7 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v37;
      v18 = v38;
      *(v16 + 32) = v39;
      *v16 = v17;
      *(v16 + 16) = v18;
      sub_18B7B1AD4(v36, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
  }

  else
  {
  }

  *v3 = v7;
}

unint64_t sub_18B85DF88(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_18B7F44EC(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x18CFFCF40](v9, a1);
      sub_18B831014(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

_OWORD *sub_18B85E050(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v5 = a4[6] + 40 * a1;
  v6 = *(a2 + 16);
  *v5 = *a2;
  *(v5 + 16) = v6;
  *(v5 + 32) = *(a2 + 32);
  result = sub_18B7B1AD4(a3, (a4[7] + 32 * a1));
  v8 = a4[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v10;
  }

  return result;
}

uint64_t sub_18B85E0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, char *a8@<X8>, uint64_t a9)
{
  v17 = *(MEMORY[0x1E69DDCE0] + 16);
  v20[0] = *MEMORY[0x1E69DDCE0];
  v20[1] = v17;
  type metadata accessor for UIEdgeInsets(0);
  return SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(a7, a9, v20, a1, a2, a3, v18, a4, a8, a5, a6);
}

double sub_18B85E178(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (v3)
  {
    v4 = v3;
    if (sub_18B81280C())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      v8 = (*(v6 + 48))(v4, v1, a1, ObjectType, v6);
      v17 = v9;
      v18 = v8;
      v15 = v11;
      v16 = v10;
      swift_unknownObjectRelease();
      v12.f64[0] = v18;
      v13.f64[0] = v17;
      v12.f64[1] = v16;
      v13.f64[1] = v15;
      if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(v12, *MEMORY[0x1E69DC5C0]), vceqq_f64(v13, *(MEMORY[0x1E69DC5C0] + 16))))) & 1) == 0)
      {
        [v4 effectiveUserInterfaceLayoutDirection];

        return v18;
      }
    }
  }

  return *MEMORY[0x1E69DDCE0];
}

void sub_18B85E2B4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 40) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 40) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
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
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t sub_18B85E504(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 40) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 40) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

uint64_t SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v59 = a2;
  v61 = a5;
  v8 = a3[3];
  v9 = a3[4];
  v10 = a3[5];
  v12 = a3[6];
  v11 = a3[7];
  v70 = a3[2];
  v7 = v70;
  v71 = v8;
  v72 = v9;
  v73 = a4;
  v74 = v10;
  v75 = v12;
  v76 = v11;
  v13 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.MetricKey(0, &v70);
  v60 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v57 = (&v53 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v58 = &v53 - v16;
  v62 = a4;
  v17 = sub_18BC21848();
  v64 = *(v17 - 8);
  v65 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v53 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v63 = &v53 - v21;
  v70 = v7;
  v71 = v8;
  v72 = v9;
  v73 = v10;
  v74 = v12;
  v75 = v11;
  type metadata accessor for SFFluidCollectionView.Element(0, &v70);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EA9DAA28, &qword_18BC51F80);
  swift_getWitnessTable();
  sub_18BC20A28();
  v22 = v66;
  if (!v66)
  {
    v67 = 0u;
    v68 = 0u;
    v23 = a1;
    v27 = v62;
    v28 = v65;
    v24 = v13;
    goto LABEL_8;
  }

  swift_getWitnessTable();
  sub_18BC21E18();
  v23 = a1;
  v24 = v13;
  if (!*(v22 + 16) || (v25 = sub_18B85DC48(&v70), (v26 & 1) == 0))
  {

    sub_18B831014(&v70);
    v67 = 0u;
    v68 = 0u;
    v27 = v62;
    v28 = v65;
LABEL_8:
    v29 = v64;
    v30 = v60;
    goto LABEL_9;
  }

  sub_18B7B193C(*(v22 + 56) + 32 * v25, &v67);
  sub_18B831014(&v70);

  v27 = v62;
  v29 = v64;
  v28 = v65;
  v30 = v60;
  if (*(&v68 + 1))
  {
    sub_18B7B1AD4(&v67, &v69);
    v31 = v63;
    swift_dynamicCast();
    v32 = *(v27 - 8);
    (*(v32 + 56))(v31, 0, 1, v27);
    goto LABEL_10;
  }

LABEL_9:
  sub_18B988BAC(&v67, &qword_1EA9D5220, &qword_18BC3FCB0);
  v32 = *(v27 - 8);
  v31 = v63;
  (*(v32 + 56))(v63, 1, 1, v27);
LABEL_10:
  (*(v29 + 16))(v19, v31, v28);
  if ((*(v32 + 48))(v19, 1, v27) == 1)
  {
    v59 = v24;
    v34 = *(v29 + 8);
    v33 = v29 + 8;
    v60 = v34;
    (v34)(v19, v28);
    if (qword_1EA9D2280 != -1)
    {
      swift_once();
    }

    v35 = v33 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v36 = sub_18BC1F2C8();
    __swift_project_value_buffer(v36, qword_1EA9F7E38);
    v37 = v30[2];
    v38 = v58;
    v39 = v59;
    v37(v58, v23, v59);
    v40 = sub_18BC1F2A8();
    v56 = sub_18BC21228();
    if (os_log_type_enabled(v40, v56))
    {
      v41 = swift_slowAlloc();
      v64 = v35;
      v42 = v41;
      v43 = swift_slowAlloc();
      v55 = v23;
      v54 = v43;
      v70 = v43;
      *v42 = 136315138;
      v44 = v57;
      v37(v57, v38, v39);
      v45 = v30[1];
      v45(v38, v39);
      v46 = *v44;
      v47 = v44[1];
      sub_18BC1E3F8();
      v45(v44, v39);
      v48 = sub_18B7EA850(v46, v47, &v70);
      v49 = v65;

      *(v42 + 4) = v48;
      _os_log_impl(&dword_18B7AC000, v40, v56, "Requested metric not set: %s", v42, 0xCu);
      v50 = v54;
      __swift_destroy_boxed_opaque_existential_1Tm(v54);
      v51 = v50;
      v23 = v55;
      v27 = v62;
      MEMORY[0x18CFFEEE0](v51, -1, -1);
      MEMORY[0x18CFFEEE0](v42, -1, -1);
    }

    else
    {
      (v30[1])(v38, v39);

      v49 = v65;
    }

    (*(v32 + 16))(v61, v23 + *(v39 + 76), v27);
    return (v60)(v63, v49);
  }

  else
  {
    (*(v32 + 32))(v61, v19, v27);
    return (*(v29 + 8))(v31, v28);
  }
}

uint64_t static SFFluidCollectionView.LayoutSnapshot.MetricKey.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_18BC21FD8();
  }
}

Swift::Int __swiftcall SFFluidCollectionView.DataSource.Snapshot.numberOfItems(inSectionAt:)(Swift::Int inSectionAt)
{
  if (inSectionAt < 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (*(*v1 + 16) <= inSectionAt)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v2 = *v1 + 16 * inSectionAt;
  v4 = *(v2 + 32);
  v3 = *(v2 + 40);
  inSectionAt = v3 - v4;
  if (__OFSUB__(v3, v4))
  {
LABEL_7:
    __break(1u);
  }

  return inSectionAt;
}

uint64_t sub_18B85EDB0(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType() && a2)
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9D35B0, &unk_18BC3E460);
  }

  else
  {

    return sub_18BC21F58();
  }
}

unint64_t SFFluidCollectionView.DataSource.Snapshot.items(in:)(uint64_t a1, void *a2)
{
  v3 = *v2;
  result = sub_18BC1F098();
  if ((v5 & 1) == 0)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (result < *(v3 + 16))
    {
      sub_18BC1F0F8();
      sub_18BC1F068();
      swift_getWitnessTable();
      return sub_18BC20E98();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_18B85EF10(uint64_t result, int a2, int a3)
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

uint64_t sub_18B85EF40(uint64_t a1, int a2)
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

double sub_18B85EF60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = _s7SectionVMa_1(0);
  result = 0.0;
  if (*(a3 + *(v5 + 20)) == 1)
  {
    v7 = v3 + OBJC_IVAR___SFTabOverview_itemViewMetrics;
    swift_beginAccess();
    return *(v7 + 184);
  }

  return result;
}

void sub_18B85EFFC(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (v3)
  {
    v4 = v3;
    v5 = sub_18B81280C();
    v7 = v6;
    if ((v5 && (v8 = swift_getObjectType(), v9 = v7[11], swift_unknownObjectRetain(), v10 = v9(v4, v1, a1, v8, v7), swift_unknownObjectRelease(), v10 != 0.0) || ((*(*v1 + 872))(), v5)) && (v11 = swift_getObjectType(), v12 = v7[12], swift_unknownObjectRetain(), v13 = v12(v4, v1, a1, v11, v7), swift_unknownObjectRelease(), v13 != 0.0) || ((*(*v1 + 896))(), v5))
    {
      ObjectType = swift_getObjectType();
      v15 = v7[14];
      swift_unknownObjectRetain();
      v15(v4, v1, a1, ObjectType, v7);

      swift_unknownObjectRelease_n();
    }

    else
    {
    }
  }
}

double sub_18B85F2CC()
{
  v1 = v0 + OBJC_IVAR___SFTabOverview_itemViewMetrics;
  swift_beginAccess();
  return *(v1 + 192) + *(v1 + 208);
}

CGFloat sub_18B85F31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v28 = a3;
  v32 = a1;
  v10 = *(*a4 + 600);
  v11 = *(*a4 + 608);
  v12 = *(*a4 + 616);
  v13 = *(*a4 + 624);
  v14 = sub_18B8103B0();
  v37 = v10;
  v38 = v11;
  v39 = &type metadata for SFFluidTabOverviewSupplementary;
  v40 = v12;
  v41 = v13;
  v42 = v14;
  v29 = v13;
  v15 = type metadata accessor for SFFluidCollectionView.Element(0, &v37);
  v16 = *(v15 - 8);
  v30 = v15;
  v31 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v28 - v17;
  LOBYTE(v37) = 0;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x49737265746E6563, 0xEC000000736D6574, &v37, v10, v11, &type metadata for SFFluidTabOverviewSupplementary, MEMORY[0x1E69E6370], v12, v35, v13, v14);
  v19 = v35[0];
  v20 = v35[1];
  v21 = v36;
  (*(*(v10 - 8) + 16))(v18, a2, v10);
  v22 = v30;
  swift_storeEnumTagMultiPayload();
  v33[0] = v19;
  v33[1] = v20;
  v34 = v21;
  v37 = v10;
  v38 = v11;
  v39 = &type metadata for SFFluidTabOverviewSupplementary;
  v40 = v12;
  v41 = v29;
  v42 = v14;
  v23 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics(0, &v37);
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(v33, v18, v23, MEMORY[0x1E69E6370], &v37);

  v24 = (*(v31 + 8))(v18, v22);
  if (v37 == 1)
  {
    v25 = v28 * a5;
    v26 = v25 - (*(*a4 + 776))(v24);
    return (CGRectGetWidth(*(a4 + 656)) - v26) * 0.5;
  }

  return a6;
}

void sub_18B85F5E8(uint64_t a1)
{
  v3 = (*(*v1 + 456))();
  if (v3)
  {
    v4 = v3;
    if (sub_18B81280C())
    {
      v6 = v5;
      ObjectType = swift_getObjectType();
      (*(v6 + 64))(v4, v1, a1, ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

unint64_t sub_18B85F6BC(uint64_t a1)
{
  v3 = *v1;
  sub_18B810930(v17);
  v12 = v17[0];
  v13 = v17[1];
  v14 = v18;
  v15 = v19;
  v16 = v20;
  v4 = sub_18B8103B0();
  v8 = *(v3 + 600);
  v9 = &type metadata for SFFluidTabOverviewSupplementary;
  v10 = *(v3 + 616);
  v11 = v4;
  v5 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, &v8);
  v6 = SFFluidCollectionView.DataSource.Snapshot.numberOfItems(in:)(a1, v5);

  return v6;
}

unint64_t SFFluidCollectionView.DataSource.Snapshot.numberOfItems(in:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  result = sub_18BC1F098();
  if (v5)
  {
    goto LABEL_9;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (result >= *(v3 + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  v6 = v3 + 16 * result;
  v8 = *(v6 + 32);
  v7 = *(v6 + 40);
  result = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_8:
    __break(1u);
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_18B85F830@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v51 = a1;
  v57 = a3;
  v6 = *(*v4 + 600);
  v7 = *(*v4 + 608);
  v8 = *(*v4 + 616);
  v9 = *(*v4 + 624);
  v10 = sub_18B8103B0();
  *&v60 = v6;
  *(&v60 + 1) = v7;
  v11 = v7;
  v47 = v7;
  *v61 = &type metadata for SFFluidTabOverviewSupplementary;
  *&v61[8] = v8;
  v50 = v8;
  *&v61[16] = v9;
  v49 = v9;
  *&v62 = v10;
  v48 = v10;
  v58 = type metadata accessor for SFFluidCollectionView.Element(0, &v60);
  v54 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v55 = &v46 - v12;
  v53 = *(v6 - 8);
  v13 = v53;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v46 - v15;
  v76 = *a2;
  v56 = *(a2 + 2);
  v17 = *(a2 + 40);
  v73 = *(a2 + 24);
  v74 = v17;
  v75 = *(a2 + 56);
  sub_18B810930(&v60);
  v69 = v60;
  v70 = *v61;
  v71 = *&v61[16];
  v72 = v62;
  *&v64 = v6;
  *(&v64 + 1) = v11;
  v65 = &type metadata for SFFluidTabOverviewSupplementary;
  v66 = v8;
  v67 = v9;
  v68 = v10;
  v18 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, &v64);
  v52 = v16;
  v19 = v51;
  SFFluidCollectionView.DataSource.Snapshot.section(for:)(v51, v18);

  (*(v13 + 16))(v55, v16, v6);
  swift_storeEnumTagMultiPayload();
  v20 = v57;
  (*(*v4 + 576))(v19);
  v60 = v76;
  *v61 = v56;
  *&v61[8] = v73;
  v62 = v74;
  v63 = v75;
  sub_18B8603E4(v19, &v60);
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  *&v60 = v6;
  v29 = v47;
  *(&v60 + 1) = v47;
  *v61 = &type metadata for SFFluidTabOverviewSupplementary;
  v30 = v50;
  *&v61[8] = v50;
  v31 = v49;
  *&v61[16] = v49;
  v32 = v48;
  *&v62 = v48;
  v33 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v60);
  SFFluidCollectionView.LayoutAttributes.frame.setter(v33, v22, v24, v26, v28);
  *(v20 + v33[21]) = 0;
  *&v60 = 0;
  v44 = v31;
  v45 = v32;
  v34 = v32;
  v35 = v31;
  v36 = MEMORY[0x1E69E7DE0];
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0xD000000000000018, 0x800000018BC655F0, &v60, v6, v29, &type metadata for SFFluidTabOverviewSupplementary, MEMORY[0x1E69E7DE0], v30, &v69, v44, v45);
  v59 = v56;
  v64 = v69;
  v65 = v70;
  *&v60 = v6;
  *(&v60 + 1) = v29;
  *v61 = &type metadata for SFFluidTabOverviewSupplementary;
  *&v61[8] = v30;
  *&v61[16] = v35;
  *&v62 = v34;
  v37 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics(0, &v60);
  v38 = v55;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v64, v55, v37, v36, &v60);

  v39 = *&v60;
  v40 = v33[22];
  v41 = v57;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v64 = *(v41 + v40);
  sub_18B84E858(0xD000000000000018, 0x800000018BC655F0, isUniquelyReferenced_nonNull_native, v39);
  (*(v54 + 8))(v38, v58);
  result = (*(v53 + 8))(v52, v6);
  *(v41 + v40) = v64;
  return result;
}

uint64_t SFFluidCollectionView.DataSource.Snapshot.section(for:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_18BC1EDD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + 8);
  v10 = *(v2 + 32);
  v11 = *(v2 + 40);
  v13[0] = *v2;
  v13[1] = v9;
  v14 = *(v2 + 16);
  v15 = v10;
  v16 = v11;
  SFFluidCollectionView.DataSource.Snapshot.indexPath(of:)(a1, a2);
  sub_18BC1EDC8();
  (*(v6 + 8))(v8, v5);
  return sub_18BC21C08();
}

void SFFluidCollectionView.DataSource.Snapshot.indexPath(of:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = sub_18BC1F098();
  if ((v6 & 1) == 0)
  {
    v7 = *(v3 + 16);
    if (v7)
    {
      v8 = 0;
      v9 = (v3 + 40);
      while (1)
      {
        v5 = *(v9 - 1);
        if (v4 >= v5 && v4 < *v9)
        {
          break;
        }

        v9 += 2;
        if (v7 == ++v8)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      __break(1u);
    }

    if (!__OFSUB__(v4, v5))
    {

LABEL_16:
      JUMPOUT(0x18CFFA290);
    }

    __break(1u);
  }

  __break(1u);
  goto LABEL_16;
}

uint64_t sub_18B860018@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = (*v2 + 600);
  v6 = (*v2 + 616);
  v7 = sub_18B8103B0();
  v13 = *v5;
  v14 = &type metadata for SFFluidTabOverviewSupplementary;
  v15 = *v6;
  v16 = v7;
  v8 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v13);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  sub_18B86014C(a1, &v13 - v10);
  sub_18B84E410(v11, a2);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_18B86014C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  v5 = (*v2)[11];
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v11 - v7;
  (*(v9 + 16))(&v11 - v7, v6);
  return sub_18B860290(v8, v4[10], v5, v4[12], v4[13], v4[14], v4[15], a2);
}

uint64_t sub_18B860290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  v15 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(0, &v25);
  *(a8 + v15[17]) = 0x3FF0000000000000;
  v16 = (a8 + v15[18]);
  *v16 = 0;
  v16[1] = 0;
  v17 = (a8 + v15[19]);
  *v17 = 0;
  v17[1] = 0;
  v18 = (a8 + v15[20]);
  *v18 = 0x3FF0000000000000;
  v18[1] = 0;
  v18[2] = 0;
  v18[3] = 0x3FF0000000000000;
  v18[4] = 0;
  v18[5] = 0;
  *(a8 + v15[21]) = 0;
  v19 = v15[22];
  v20 = MEMORY[0x1E69E7CC0];
  *(a8 + v19) = sub_18B84E2F8(MEMORY[0x1E69E7CC0]);
  v21 = v15[23];
  *(a8 + v21) = sub_18B84E2F8(v20);
  v22 = (a8 + v15[24]);
  *v22 = 0u;
  v22[1] = 0u;
  (*(*(a3 - 8) + 32))(a8, a1, a3);
  v25 = a2;
  v26 = a3;
  v27 = a4;
  v28 = a5;
  v29 = a6;
  v30 = a7;
  type metadata accessor for SFFluidCollectionView.Element(0, &v25);
  return swift_storeEnumTagMultiPayload();
}

void *sub_18B8603E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v68 = a1;
  v5 = *(*v3 + 600);
  v6 = *(*v3 + 608);
  v7 = *(*v3 + 616);
  v8 = *(*v3 + 624);
  v9 = sub_18B8103B0();
  *&v86.width = v5;
  *&v86.height = v6;
  v10 = v6;
  v75 = v6;
  *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v87 + 1) = v7;
  v69 = v7;
  v88 = v8;
  v89 = v9;
  v67 = v8;
  v74 = v9;
  v72 = type metadata accessor for SFFluidCollectionView.Element(0, &v86);
  v64 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v12 = &v60 - v11;
  v73 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v60 - v14;
  v63 = sub_18BC1EDD8();
  v61 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = *(a2 + 16);
  sub_18B810930(&v86);
  v82 = v86;
  v83 = v87;
  v84 = v88;
  v85 = v89;
  *&v77.width = v5;
  *&v77.height = v10;
  v78 = &type metadata for SFFluidTabOverviewSupplementary;
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v18 = type metadata accessor for SFFluidCollectionView.DataSource.Snapshot(0, &v77);
  v71 = v17;
  SFFluidCollectionView.DataSource.Snapshot.indexPath(of:)(v68, v18);

  v65 = v3;
  sub_18B810930(&v86);
  sub_18BC1E1A8();

  sub_18BC1EDC8();
  sub_18BC21C08();

  v19 = *(v73 + 16);
  v62 = v15;
  v19(v12, v15, v5);
  swift_storeEnumTagMultiPayload();
  *&v86.width = 1;
  v20 = v74;
  v21 = v67;
  v22 = MEMORY[0x1E69E6530];
  v23 = v5;
  v24 = v75;
  v25 = v69;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x736E6D756C6F63, 0xE700000000000000, &v86, v5, v75, &type metadata for SFFluidTabOverviewSupplementary, MEMORY[0x1E69E6530], v69, &v82, v67, v74);
  v26 = v70;
  v76 = v70;
  v77 = v82;
  v78 = v83;
  *&v86.width = v5;
  *&v86.height = v24;
  *&v87 = &type metadata for SFFluidTabOverviewSupplementary;
  *(&v87 + 1) = v25;
  v88 = v21;
  v89 = v20;
  v66 = type metadata accessor for SFFluidCollectionView.LayoutSnapshot.Metrics(0, &v86);
  v27 = v12;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v77, v12, v66, v22, &v86);

  v68 = *&v86.width;
  type metadata accessor for CGSize(0);
  v29 = v28;
  v82 = 0;
  v30 = v25;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x657A69536D657469, 0xE800000000000000, &v82, v23, v24, &type metadata for SFFluidTabOverviewSupplementary, v28, v25, &v86, v21, v20);
  v31 = v26;
  v76 = v26;
  v82 = v86;
  v83 = v87;
  v32 = v66;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v82, v27, v66, v29, &v77);

  v33 = v77;
  type metadata accessor for CGPoint(0);
  v35 = v34;
  v82 = 0;
  v59 = v20;
  v36 = v75;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x66664F736D657469, 0xEB00000000746573, &v82, v23, v75, &type metadata for SFFluidTabOverviewSupplementary, v34, v30, &v86, v21, v59);
  v76 = v31;
  v82 = v86;
  v83 = v87;
  v37 = v35;
  v38 = v68;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v82, v27, v32, v37, &v77);

  v39 = v77;
  v82 = 0;
  v58 = v21;
  v40 = v23;
  SFFluidCollectionView.LayoutSnapshot.MetricKey.init(_:default:)(0x657A695374696E75, 0xE800000000000000, &v82, v23, v36, &type metadata for SFFluidTabOverviewSupplementary, v29, v30, &v86, v58, v74);
  v76 = v31;
  v82 = v86;
  v83 = v87;
  SFFluidCollectionView.LayoutSnapshot.Metrics.subscript.getter(&v82, v27, v32, v29, &v77);

  v41 = v77;
  v42 = v71;
  result = sub_18BC1EDB8();
  if (!v38)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v44 = result;
  if (result == 0x8000000000000000 && v38 == -1)
  {
    goto LABEL_9;
  }

  result = (*(*v65 + 456))();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v45 = result;
  v46 = v39.width + v41.width * (v44 % v38);
  v47 = v39.height + v41.height * (v44 / v38) + 0.0;
  v48 = [result effectiveUserInterfaceLayoutDirection];
  [v45 bounds];
  if (v48)
  {
    CGRectGetMaxX(*&v49);
    v90.origin.x = v46;
    v90.origin.y = v47;
    v90.size = v33;
    CGRectGetMaxX(v90);
    v91.origin.x = v46;
    v91.origin.y = v47;
    v91.size = v33;
    CGRectGetMinY(v91);
    v92.origin.x = v46;
    v92.origin.y = v47;
    v92.size = v33;
    CGRectGetWidth(v92);
    v93.origin.x = v46;
    v93.origin.y = v47;
    v93.size = v33;
    CGRectGetHeight(v93);
  }

  v53 = v64;
  v54 = v73;
  v55 = v63;
  v56 = v62;
  v57 = v61;

  (*(v53 + 8))(v27, v72);
  (*(v54 + 8))(v56, v40);
  return (*(v57 + 8))(v42, v55);
}

uint64_t sub_18B860C84(uint64_t a1)
{
  sub_18BC1EC08();
  sub_18B82AD7C(&qword_1EA9D3970, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  return sub_18BC20A78();
}

double sub_18B860D04()
{
  v1 = *(*v0 + 1360);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_18B860D54()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D72B0, &qword_18BC47900);
  v2 = *v0;
  v3 = sub_18BC21D68();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
        sub_18BC1E3F8();
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

      v16 = *(v2 + 64 + 8 * v8);
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
}

void sub_18B860EBC(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v36 = a1;
  v37 = a3;
  v34 = *(a2[4] - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 + 24);
  v32 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 56);
  v38[0] = *(v11 + 16);
  v38[1] = v7;
  v35 = v13;
  v38[2] = v13;
  v39 = *(v11 + 40);
  v40 = v12;
  v14 = type metadata accessor for SFFluidCollectionView.Element(0, v38);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v32 - v19);
  v21 = v3[1];
  v41 = *v3;
  v42 = v21;
  v43[0] = v3[2];
  *(v43 + 9) = *(v3 + 41);
  v22 = *(v15 + 16);
  v22(&v32 - v19, v36, v14);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v36 = *v20;
    v32 = v15;
    v24 = v35;
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v26 = swift_projectBox();
    v27 = *(TupleTypeMetadata2 + 48);
    v29 = v33;
    v28 = v34;
    (*(v34 + 16))(v33, v26, v24);
    v22(v17, v26 + v27, v14);
    SFFluidCollectionView.LayoutSnapshot.layoutAttributesForSupplementary(_:reference:)(v29, v17, a2, v37);
    (*(v32 + 8))(v17, v14);
    (*(v28 + 8))(v29, v24);
  }

  else
  {
    v30 = v37;
    if (EnumCaseMultiPayload == 1)
    {
      v31 = v32;
      (*(v32 + 32))(v10, v20, v7);
      SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)(v10, a2, v30);
      (*(v31 + 8))(v10, v7);
    }

    else
    {
      sub_18BC21CF8();
      __break(1u);
    }
  }
}

uint64_t SFFluidCollectionView.LayoutSnapshot.layoutAttributesForItem(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v9 = a2[6];
  v8 = a2[7];
  v22 = a3;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v9;
  v28 = v8;
  v10 = type metadata accessor for SFFluidCollectionView.LayoutAttributes(255, &v23);
  v11 = sub_18BC21848();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v23 = v4;
  v24 = v5;
  v25 = v6;
  v26 = v7;
  v27 = v9;
  v28 = v8;
  v14 = type metadata accessor for SFFluidCollectionView.Element(0, &v23);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v21 - v17;
  (*(*(v5 - 8) + 16))(&v21 - v17, a1, v5, v16);
  swift_storeEnumTagMultiPayload();
  swift_getWitnessTable();
  sub_18BC20A28();
  v19 = *(v10 - 8);
  result = (*(v19 + 48))(v13, 1, v10);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v15 + 8))(v18, v14);
    return (*(v19 + 32))(v22, v13, v10);
  }

  return result;
}

id sub_18B8614BC()
{
  v1 = (*MEMORY[0x1E69E7D40] & *v0);
  v2 = v1[6];
  v5[0] = v1[5];
  v5[1] = v2;
  v5[2] = v1[7];
  v3 = type metadata accessor for SFFluidCollectionView(0, v5);
  v6.receiver = v0;
  v6.super_class = v3;
  objc_msgSendSuper2(&v6, sel_stopScrollingAndZooming);
  return sub_18B82A0C0();
}

void sub_18B861540(void *a1)
{
  v1 = a1;
  sub_18B8614BC();
}

void sub_18B861588(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR___SFTabOverview_gridLayout);
  v6 = (*(*v5 + 456))();
  if (v6)
  {
    v47 = v6;
    sub_18B8290F0(a1);
    if (v7)
    {
    }

    else
    {
      [v47 adjustedContentInset];
      [v47 adjustedContentInset];
      v45 = v9;
      v46 = v8;
      v43 = v11;
      v44 = v10;
      [v47 bounds];
      v41 = v13;
      v42 = v12;
      v39 = v15;
      v40 = v14;
      sub_18B7E0E4C();
      v17 = v16;
      v19 = v18;
      v21 = v20;
      v23 = v22;
      [v47 contentSize];
      [v47 frame];
      v25 = v24;
      v27 = v26;
      v29 = v28;
      v31 = v30;
      v32 = [v47 isTracking];
      swift_beginAccess();
      v50[8] = v46;
      v50[9] = v45;
      v50[10] = v44;
      v50[11] = v43;
      v50[12] = v42;
      v50[13] = v41;
      v50[14] = v40;
      v50[15] = v39;
      v50[16] = v17;
      v50[17] = v19;
      v50[18] = v21;
      v50[19] = v23;
      v51 = *(v5 + 136);
      v52 = v25;
      v53 = v27;
      v54 = v29;
      v55 = v31;
      v56 = v32;
      sub_18B829B78();
      v34 = v33;
      v36 = v35;

      sub_18B7CA054(a2, &v48, &unk_1EA9D5060, &unk_18BC41870);
      if (v49)
      {
        sub_18B7C3FA4(&v48, v50);
        v37 = sub_18B82FEA0();
        sub_18B80DBC4(v50, &v48);
        sub_18B9CA280(&v48, v34, v36);

        sub_18B988BAC(&v48, &unk_1EA9D5060, &unk_18BC41870);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
      }

      else
      {
        sub_18B988BAC(&v48, &unk_1EA9D5060, &unk_18BC41870);
        v38 = sub_18B82FEA0();
        [v38 setContentOffset_];
      }
    }
  }
}

uint64_t sub_18B86184C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v20[5] = a8;
  v20[0] = a3;
  v20[1] = a4;
  v20[2] = a5;
  v20[3] = a6;
  v20[4] = a7;
  v13 = type metadata accessor for SFFluidCollectionView.Element(255, v20);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = swift_allocBox();
  v17 = v16;
  v18 = *(TupleTypeMetadata2 + 48);
  (*(*(a5 - 8) + 16))(v16, a1, a5);
  (*(*(v13 - 8) + 16))(v17 + v18, a2, v13);
  *a9 = v15;
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_18B8619A8(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(_s4PageVMa_0(0) - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void sub_18B861A38(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_18B861AC8(v4, a2);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

void sub_18B861AC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v67 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D52E0, &unk_18BC49EA0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = &v60 - v6;
  v70 = _s4PageVMa(0);
  v68 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = _s4PageVMa_0(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v64 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA9D5340, &qword_18BC43280);
  MEMORY[0x1EEE9AC00](v66);
  v13 = &v60 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA9DBE90, &qword_18BC45500);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v60 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v60 - v20;
  v22 = sub_18B7E2098();
  v24 = v23;
  v25 = &v2[OBJC_IVAR___SFTabOverviewDisplayItem_layout];
  swift_beginAccess();
  v26 = v25[5];
  v71 = v2;
  if (v26 == v22 && v25[6] == v24)
  {
    goto LABEL_10;
  }

  v62 = a2;
  v25[5] = v22;
  v25[6] = v24;
  Strong = swift_unknownObjectUnownedLoadStrong();
  sub_18B7C9B24(v78);

  sub_18B7DFD58(v78);
  v63 = v8;
  if ((v78[25] & 1) == 0)
  {
    goto LABEL_8;
  }

  sub_18B7C9974();
  v29 = v28;
  v30 = sub_18B7CEA3C();
  if (!v30)
  {

    goto LABEL_8;
  }

  v31 = *&v30[OBJC_IVAR___SFTabOverview_searchState + 8];

  if (!v31)
  {
LABEL_8:
    v32 = sub_18B7CFAA0();
    goto LABEL_9;
  }

  v32 = 1;
LABEL_9:
  *(v25 + *(_s6LayoutVMa(0) + 68)) = v32;
  v33 = swift_allocObject();
  *(v33 + 16) = v3;
  v61 = objc_opt_self();
  v76 = sub_18B862CAC;
  v77 = v33;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_18B7B0DB0;
  v75 = &block_descriptor_289;
  v34 = _Block_copy(&aBlock);
  v35 = v71;
  sub_18BC1E1A8();

  v76 = CGRectMake;
  v77 = 0;
  aBlock = MEMORY[0x1E69E9820];
  v73 = 1107296256;
  v74 = sub_18B8043A0;
  v75 = &block_descriptor_292;
  v36 = _Block_copy(&aBlock);

  [v61 _animateByRetargetingAnimations_completion_];
  _Block_release(v36);
  _Block_release(v34);

  v8 = v63;
  a2 = v62;
LABEL_10:
  sub_18B7DF568(a2, v21, _s4PageVMa_0);
  v37 = *(v10 + 56);
  v37(v21, 0, 1, v9);
  if (*(v67 + qword_1EA9F7FF0))
  {
    v37(v18, 1, 1, v9);
  }

  else
  {
    sub_18B7CC308();
    v38 = sub_18B7C2E68();
    [v38 bounds];
    v40 = v39;
    v42 = v41;
    v44 = v43;
    v46 = v45;

    v79.origin.x = v40;
    v79.origin.y = v42;
    v79.size.width = v44;
    v79.size.height = v46;
    MidX = CGRectGetMidX(v79);
    v80.origin.x = v40;
    v80.origin.y = v42;
    v80.size.width = v44;
    v80.size.height = v46;
    MidY = CGRectGetMidY(v80);
    sub_18B7CECB4(v18, MidX, MidY);
  }

  v49 = *(v66 + 48);
  sub_18B7CA054(v21, v13, &unk_1EA9DBE90, &qword_18BC45500);
  sub_18B7CA054(v18, &v13[v49], &unk_1EA9DBE90, &qword_18BC45500);
  v50 = *(v10 + 48);
  if (v50(v13, 1, v9) != 1)
  {
    v54 = v65;
    sub_18B7CA054(v13, v65, &unk_1EA9DBE90, &qword_18BC45500);
    if (v50(&v13[v49], 1, v9) != 1)
    {
      v55 = v64;
      sub_18B81F940(&v13[v49], v64, _s4PageVMa_0);
      updated = _s12MobileSafari39SFFluidCollectionViewTrackedUpdateTokenV2eeoiySbAC_ACtFZ_0();
      sub_18B7DFF04(v55, _s4PageVMa_0);
      sub_18B988BAC(v18, &unk_1EA9DBE90, &qword_18BC45500);
      sub_18B988BAC(v21, &unk_1EA9DBE90, &qword_18BC45500);
      sub_18B7DFF04(v54, _s4PageVMa_0);
      sub_18B988BAC(v13, &unk_1EA9DBE90, &qword_18BC45500);
      v51 = v71;
      v52 = v70;
      v53 = v69;
      if ((updated & 1) == 0)
      {
        goto LABEL_21;
      }

      goto LABEL_20;
    }

    sub_18B988BAC(v18, &unk_1EA9DBE90, &qword_18BC45500);
    sub_18B988BAC(v21, &unk_1EA9DBE90, &qword_18BC45500);
    sub_18B7DFF04(v54, _s4PageVMa_0);
LABEL_18:
    sub_18B988BAC(v13, &qword_1EA9D5340, &qword_18BC43280);
    v51 = v71;
    v52 = v70;
    v53 = v69;
    goto LABEL_21;
  }

  sub_18B988BAC(v18, &unk_1EA9DBE90, &qword_18BC45500);
  sub_18B988BAC(v21, &unk_1EA9DBE90, &qword_18BC45500);
  if (v50(&v13[v49], 1, v9) != 1)
  {
    goto LABEL_18;
  }

  sub_18B988BAC(v13, &unk_1EA9DBE90, &qword_18BC45500);
  v51 = v71;
  v52 = v70;
  v53 = v69;
LABEL_20:
  sub_18B862CB8(0x8000000000000000);
LABEL_21:
  sub_18B7CFD08(v53);
  if ((*(v68 + 48))(v53, 1, v52) == 1)
  {
    sub_18B988BAC(v53, &qword_1EA9D52E0, &unk_18BC49EA0);
  }

  else
  {
    sub_18B81F940(v53, v8, _s4PageVMa);
    if ((([objc_opt_self() isSolariumEnabled] & 1) != 0 || (v8[*(v52 + 40)] & 1) != 0 || v8[*(v52 + 48)] != 1) && (v57 = *&v51[OBJC_IVAR___SFTabOverviewDisplayItem_navigationBarTitleView]) != 0 && v57[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_configuration + 2] == 1)
    {
      v58 = *&v57[OBJC_IVAR___SFTabOverviewNavigationBarTitleView_textField];
      v59 = v57;
      [v58 resignFirstResponder];
      sub_18B7DFF04(v8, _s4PageVMa);
    }

    else
    {
      sub_18B7DFF04(v8, _s4PageVMa);
    }
  }
}