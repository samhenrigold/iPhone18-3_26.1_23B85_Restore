unint64_t sub_1B4A32B74()
{
  result = qword_1EB8A83F0;
  if (!qword_1EB8A83F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83F0);
  }

  return result;
}

BOOL RingsRepresentable.isNil.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v26 - v15;
  (*(a2 + 64))(a1, a2, v14);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v18 = (*(*(v17 - 8) + 48))(v16, 1, v17);
  sub_1B4975024(v16, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  if (v18 != 1)
  {
    return 0;
  }

  (*(a2 + 72))(a1, a2);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v20 = *(*(v19 - 8) + 48);
  v21 = v20(v12, 1, v19);
  sub_1B4975024(v12, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v21 != 1)
  {
    return 0;
  }

  (*(a2 + 80))(a1, a2);
  v22 = v20(v9, 1, v19);
  sub_1B4975024(v9, &qword_1EB8A6C90, &unk_1B4D1BBD0);
  if (v22 != 1)
  {
    return 0;
  }

  (*(a2 + 88))(a1, a2);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v24 = (*(*(v23 - 8) + 48))(v6, 1, v23) == 1;
  sub_1B4975024(v6, &qword_1EB8A6D18, &unk_1B4D1BCA0);
  return v24;
}

uint64_t RingsRepresentable.measure<A>(metric:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(void, void, double)@<X3>, uint64_t a5@<X8>)
{
  v54[1] = a3;
  v55 = a5;
  v56 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CC0, &unk_1B4D1BC00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v54 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v54 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = v54 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = v54 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v54 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v26 = MEMORY[0x1EEE9AC00](v25 - 8);
  v28 = v54 - v27;
  v29 = *a1;
  if (v29 > 2)
  {
    if (*a1 > 4u)
    {
      if (v29 == 5)
      {
        a4[13](v56, a4, v26);
        v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
        if ((*(*(v35 - 8) + 48))(v12, 1, v35) == 1)
        {
          v31 = &qword_1EB8A6D18;
          v32 = &unk_1B4D1BCA0;
          v33 = v12;
          goto LABEL_21;
        }
      }

      else
      {
        a4[14](v56, a4, v26);
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6830, &unk_1B4D1AB40);
        if ((*(*(v39 - 8) + 48))(v9, 1, v39) == 1)
        {
          v31 = &qword_1EB8A6CC0;
          v32 = &unk_1B4D1BC00;
          v33 = v9;
          goto LABEL_21;
        }
      }
    }

    else if (v29 == 3)
    {
      a4[7](v56, a4, v26);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      if ((*(*(v30 - 8) + 48))(v18, 1, v30) == 1)
      {
        v31 = &qword_1EB8A6D18;
        v32 = &unk_1B4D1BCA0;
        v33 = v18;
LABEL_21:
        sub_1B4975024(v33, v31, v32);
        v40 = sub_1B4D1746C();
        return (*(*(v40 - 8) + 56))(v55, 1, 1, v40);
      }
    }

    else
    {
      a4[12](v56, a4, v26);
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
      if ((*(*(v38 - 8) + 48))(v15, 1, v38) == 1)
      {
        v31 = &qword_1EB8A6D18;
        v32 = &unk_1B4D1BCA0;
        v33 = v15;
        goto LABEL_21;
      }
    }

    goto LABEL_27;
  }

  if (!*a1)
  {
    a4[4](v56, a4, v26);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
    if ((*(*(v36 - 8) + 48))(v28, 1, v36) == 1)
    {
      v31 = &qword_1EB8A6CA8;
      v32 = &unk_1B4D1C2B0;
      v33 = v28;
      goto LABEL_21;
    }

LABEL_27:
    v42 = sub_1B4D1746C();
    v51 = v55;
    v52 = swift_dynamicCast();
    v45 = *(*(v42 - 8) + 56);
    if (v52)
    {
      v46 = v51;
      goto LABEL_29;
    }

    v46 = v51;
    goto LABEL_31;
  }

  if (v29 == 1)
  {
    a4[5](v56, a4, v26);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
    if ((*(*(v34 - 8) + 48))(v24, 1, v34) == 1)
    {
      v31 = &qword_1EB8A6C90;
      v32 = &unk_1B4D1BBD0;
      v33 = v24;
      goto LABEL_21;
    }

    v42 = sub_1B4D1746C();
    v43 = v55;
    v44 = swift_dynamicCast();
    v45 = *(*(v42 - 8) + 56);
    if (v44)
    {
      v46 = v43;
LABEL_29:
      v50 = 0;
LABEL_32:
      v53 = v42;
      return v45(v46, v50, 1, v53);
    }

    v46 = v43;
LABEL_31:
    v50 = 1;
    goto LABEL_32;
  }

  a4[6](v56, a4, v26);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  if ((*(*(v37 - 8) + 48))(v21, 1, v37) == 1)
  {
    v31 = &qword_1EB8A6C90;
    v32 = &unk_1B4D1BBD0;
    v33 = v21;
    goto LABEL_21;
  }

  v47 = sub_1B4D1746C();
  v48 = v55;
  v49 = swift_dynamicCast();
  v45 = *(*(v47 - 8) + 56);
  if (v49)
  {
    v46 = v48;
    v50 = 0;
  }

  else
  {
    v46 = v48;
    v50 = 1;
  }

  v53 = v47;
  return v45(v46, v50, 1, v53);
}

Swift::Bool_optional __swiftcall RingsRepresentable.hasClosedRing(for:)(FitnessIntelligence::Ring a1)
{
  v3 = v2;
  v4 = v1;
  if (*a1 <= 1u)
  {
    if (*a1)
    {
      v5 = COERCE_DOUBLE(RingsRepresentable.exerciseRingPercentage.getter(v1, v2));
    }

    else
    {
      v5 = COERCE_DOUBLE(RingsRepresentable.moveRingPercentage.getter(v1, v2));
    }

    goto LABEL_7;
  }

  if (*a1 == 2)
  {
    v5 = COERCE_DOUBLE(RingsRepresentable.standRingPercentage.getter(v1, v2));
LABEL_7:
    if (v6)
    {
      return 2;
    }

    result.value = v5 >= 1.0;
    return result;
  }

  v8 = RingsRepresentable.moveRingPercentage.getter(v1, v2);
  if (v9)
  {
    return 2;
  }

  v10 = *&v8;
  v11 = RingsRepresentable.exerciseRingPercentage.getter(v4, v3);
  if (v12)
  {
    return 2;
  }

  v13 = *&v11;
  v14 = COERCE_DOUBLE(RingsRepresentable.standRingPercentage.getter(v4, v3));
  if (v15)
  {
    return 2;
  }

  if (v10 < 1.0)
  {
    return 0;
  }

  if (v13 < 1.0)
  {
    return 0;
  }

  result.value = v14 >= 1.0;
  return result;
}

uint64_t RingsRepresentable.moveRingPercentage.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v87 = &v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v85 = &v82 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v86 = &v82 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v96 = &v82 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v98 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v82 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v82 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v82 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v95 = &v82 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v89 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v94 = &v82 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v82 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v88 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v93 = &v82 - v31;
  v33 = MEMORY[0x1EEE9AC00](v32);
  v35 = &v82 - v34;
  v91 = *(a2 + 64);
  v91(a1, a2, v33);
  v90 = v5;
  v36 = *(v5 + 48);
  v97 = v4;
  v92 = v36;
  LODWORD(v4) = v36(v35, 1, v4);
  v37 = v35;
  v38 = v13;
  sub_1B4975024(v37, &qword_1EB8A6CA8, &unk_1B4D1C2B0);
  v39 = v4 == 1;
  v40 = v98;
  if (v39)
  {
    (*(a2 + 72))(a1, a2);
    v41 = (*(v40 + 48))(v27, 1, v13);
    sub_1B4975024(v27, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    if (v41 == 1)
    {
      *&result = 0.0;
      return result;
    }
  }

  v43 = (*(a2 + 120))(a1, a2);
  v44 = a2;
  v45 = a1;
  if ((v46 & 1) != 0 || v43 != 2)
  {
    v53 = v93;
    (v91)(v45, a2);
    v54 = v97;
    v55 = v92;
    if (v92(v53, 1, v97) != 1)
    {
      v56 = v44;
      v57 = v90;
      v58 = v45;
      v59 = *(v90 + 32);
      v59(v96, v53, v54);
      v53 = v88;
      (*(v56 + 32))(v58, v56);
      if (v55(v53, 1, v54) != 1)
      {
        v60 = v86;
        v59(v86, v53, v54);
        sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v62 = [ObjCClassFromMetadata baseUnit];
        v63 = v85;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v65 = v64;
        v66 = *(v57 + 8);
        v66(v63, v54);
        v67 = [ObjCClassFromMetadata baseUnit];
        v68 = v87;
        v69 = v96;
        sub_1B4D1745C();

        sub_1B4D1742C();
        v71 = v70;
        v66(v68, v54);
        v66(v60, v54);
        v66(v69, v54);
        goto LABEL_18;
      }

      (*(v57 + 8))(v96, v54);
    }

    v50 = &qword_1EB8A6CA8;
    v51 = &unk_1B4D1C2B0;
    v52 = v53;
    goto LABEL_15;
  }

  v47 = v94;
  (*(a2 + 72))(a1, a2);
  v48 = *(v40 + 48);
  if (v48(v47, 1, v13) == 1)
  {
LABEL_10:
    v50 = &qword_1EB8A6C90;
    v51 = &unk_1B4D1BBD0;
    v52 = v47;
LABEL_15:
    sub_1B4975024(v52, v50, v51);
    *&result = 0.0;
    return result;
  }

  v49 = *(v40 + 32);
  v49(v95, v47, v13);
  v47 = v89;
  (*(v44 + 40))(v45, v44);
  if (v48(v47, 1, v13) == 1)
  {
    (*(v40 + 8))(v95, v13);
    goto LABEL_10;
  }

  v72 = v83;
  v49(v83, v47, v13);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  v73 = swift_getObjCClassFromMetadata();
  v74 = [v73 baseUnit];
  v75 = v82;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v65 = v76;
  v77 = *(v40 + 8);
  v77(v75, v38);
  v78 = [v73 baseUnit];
  v79 = v84;
  v80 = v95;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v71 = v81;
  v77(v79, v38);
  v77(v72, v38);
  v77(v80, v38);
LABEL_18:
  *&result = v65 / v71;
  return result;
}

uint64_t RingsRepresentable.exerciseRingPercentage.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v43 = &v38 - v21;
  (*(a2 + 80))(a1, a2, v20);
  v42 = v11;
  v22 = *(v11 + 48);
  if (v22(v9, 1, v10) == 1)
  {
    v23 = v9;
LABEL_5:
    sub_1B4975024(v23, &qword_1EB8A6C90, &unk_1B4D1BBD0);
    *&result = 0.0;
    return result;
  }

  v39 = v18;
  v40 = v13;
  v24 = *(v42 + 32);
  v24(v43, v9, v10);
  (*(a2 + 48))(a1, a2);
  if (v22(v6, 1, v10) == 1)
  {
    (*(v42 + 8))(v43, v10);
    v23 = v6;
    goto LABEL_5;
  }

  v26 = v39;
  v24(v39, v6, v10);
  sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v28 = [ObjCClassFromMetadata baseUnit];
  v29 = v41;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v31 = v30;
  v32 = *(v42 + 8);
  v32(v29, v10);
  v33 = [ObjCClassFromMetadata baseUnit];
  v34 = v40;
  v35 = v43;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v37 = v36;
  v32(v34, v10);
  v32(v26, v10);
  v32(v35, v10);
  *&result = v31 / v37;
  return result;
}

uint64_t RingsRepresentable.standRingPercentage.getter(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v38 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v41 = &v38 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v38 - v17;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v43 = &v38 - v21;
  (*(a2 + 88))(a1, a2, v20);
  v42 = v11;
  v22 = *(v11 + 48);
  if (v22(v9, 1, v10) == 1)
  {
    v23 = v9;
LABEL_5:
    sub_1B4975024(v23, &qword_1EB8A6D18, &unk_1B4D1BCA0);
    *&result = 0.0;
    return result;
  }

  v39 = v18;
  v40 = v13;
  v24 = *(v42 + 32);
  v24(v43, v9, v10);
  (*(a2 + 56))(a1, a2);
  if (v22(v6, 1, v10) == 1)
  {
    (*(v42 + 8))(v43, v10);
    v23 = v6;
    goto LABEL_5;
  }

  v26 = v39;
  v24(v39, v6, v10);
  v27 = type metadata accessor for UnitCount();
  v28 = [v27 baseUnit];
  v29 = v41;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v31 = v30;
  v32 = *(v42 + 8);
  v32(v29, v10);
  v33 = [v27 baseUnit];
  v34 = v40;
  v35 = v43;
  sub_1B4D1745C();

  sub_1B4D1742C();
  v37 = v36;
  v32(v34, v10);
  v32(v26, v10);
  v32(v35, v10);
  *&result = v31 / v37;
  return result;
}

uint64_t RingsRepresentable.delta<A>(for:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(void, void, double)@<X3>, uint64_t a5@<X8>)
{
  v107 = a2;
  v108 = a4;
  v109 = a3;
  v110 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6D18, &unk_1B4D1BCA0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v99 = &v91 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v101 = &v91 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6870, &unk_1B4D1C2C0);
  v103 = *(v10 - 8);
  v104 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v96 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v95 = &v91 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v102 = &v91 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6C90, &unk_1B4D1BBD0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v98 = &v91 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v91 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v97 = &v91 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v91 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6850, &unk_1B4D1BC10);
  v105 = *(v26 - 8);
  v106 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v94 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v92 = &v91 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v100 = &v91 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v93 = &v91 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v91 = &v91 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v91 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6CA8, &unk_1B4D1C2B0);
  MEMORY[0x1EEE9AC00](v39 - 8);
  v41 = &v91 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v44 = &v91 - v43;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6868, &unk_1B4D1AB80);
  MEMORY[0x1EEE9AC00](v45);
  MEMORY[0x1EEE9AC00](v46);
  v48 = &v91 - v47;
  v51 = MEMORY[0x1EEE9AC00](v49);
  v53 = &v91 - v52;
  if (*a1 > 1u)
  {
    if (*a1 == 2)
    {
      v58 = v107;
      v57 = v108;
      v108[10](v107, v108, v51);
      v59 = v105;
      v60 = v106;
      v61 = *(v105 + 48);
      if (v61(v20, 1, v106) == 1)
      {
LABEL_9:
        v64 = v110;
        v65 = &qword_1EB8A6C90;
        v66 = &unk_1B4D1BBD0;
LABEL_16:
        v77 = v20;
LABEL_23:
        sub_1B4975024(v77, v65, v66);
        v79 = sub_1B4D1746C();
        return (*(*(v79 - 8) + 56))(v64, 1, 1, v79);
      }

      v62 = v59;
      v63 = *(v59 + 32);
      v63(v100, v20, v60);
      v20 = v98;
      (v57[6])(v58, v57);
      if (v61(v20, 1, v60) == 1)
      {
        (*(v62 + 8))(v100, v60);
        goto LABEL_9;
      }

      v81 = v92;
      v63(v92, v20, v60);
      sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
      v82 = v100;
LABEL_26:
      sub_1B4D1744C();
      v83 = *(v62 + 8);
      v83(v81, v60);
      v83(v82, v60);
      v84 = sub_1B4D1746C();
      v85 = v110;
      goto LABEL_30;
    }

    v74 = v107;
    v73 = v108;
    v20 = v101;
    v108[11](v107, v108, v51);
    v62 = v103;
    v60 = v104;
    v75 = *(v103 + 48);
    if (v75(v20, 1, v104) != 1)
    {
      v76 = *(v62 + 32);
      v76(v102, v20, v60);
      v20 = v99;
      (v73[7])(v74, v73);
      if (v75(v20, 1, v60) != 1)
      {
        v81 = v95;
        v76(v95, v20, v60);
        type metadata accessor for UnitCount();
        v82 = v102;
        goto LABEL_26;
      }

      (*(v62 + 8))(v102, v60);
    }

    v64 = v110;
    v65 = &qword_1EB8A6D18;
    v66 = &unk_1B4D1BCA0;
    goto LABEL_16;
  }

  if (*a1)
  {
    v68 = v107;
    v67 = v108;
    v108[9](v107, v108, v51);
    v69 = v105;
    v70 = v106;
    v71 = *(v105 + 48);
    if (v71(v25, 1, v106) == 1)
    {
      v72 = v25;
    }

    else
    {
      v104 = *(v69 + 32);
      v104(v38, v25, v70);
      v78 = v97;
      (v67[5])(v68, v67);
      v72 = v78;
      if (v71(v78, 1, v70) != 1)
      {
        v87 = v91;
        v104(v91, v78, v70);
        sub_1B498AFB8(0, &qword_1EDC378C0, 0x1E696B008);
        sub_1B4D1744C();
        v88 = *(v69 + 8);
        v88(v87, v70);
        v88(v38, v70);
        v84 = sub_1B4D1746C();
        v85 = v110;
        goto LABEL_30;
      }

      (*(v69 + 8))(v38, v70);
    }

    v64 = v110;
    v65 = &qword_1EB8A6C90;
    v66 = &unk_1B4D1BBD0;
    v77 = v72;
    goto LABEL_23;
  }

  v54 = v107;
  v55 = v108;
  v56 = v50;
  v108[8](v107, v108, v51);
  v106 = v56;
  v105 = *(v56 + 48);
  if ((v105)(v44, 1, v45) == 1)
  {
    v41 = v44;
LABEL_19:
    v64 = v110;
    v65 = &qword_1EB8A6CA8;
    v66 = &unk_1B4D1C2B0;
    v77 = v41;
    goto LABEL_23;
  }

  v104 = *(v106 + 32);
  v104(v53, v44, v45);
  (v55[4])(v54, v55);
  if ((v105)(v41, 1, v45) == 1)
  {
    (*(v106 + 8))(v53, v45);
    goto LABEL_19;
  }

  v104(v48, v41, v45);
  sub_1B498AFB8(0, &qword_1EDC378C8, 0x1E696B030);
  sub_1B4D1744C();
  v86 = *(v106 + 8);
  v86(v48, v45);
  v86(v53, v45);
  v84 = sub_1B4D1746C();
  v85 = v110;
LABEL_30:
  if (swift_dynamicCast())
  {
    v89 = v85;
    v90 = 0;
  }

  else
  {
    v89 = v85;
    v90 = 1;
  }

  return (*(*(v84 - 8) + 56))(v89, v90, 1, v84);
}

uint64_t ClosedAllRingsFact.TemplateString.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_1B4D18B1C();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_1B4A35540()
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A355B4(uint64_t a1)
{
  sub_1B4D18E8C();
  sub_1B4D1820C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A35608@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_1B4D18B1C();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_1B4A356A4()
{
  result = qword_1EB8A83F8;
  if (!qword_1EB8A83F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A83F8);
  }

  return result;
}

unint64_t sub_1B4A356FC()
{
  result = qword_1EB8A8400;
  if (!qword_1EB8A8400)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8A8408, &qword_1B4D22358);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8400);
  }

  return result;
}

unint64_t sub_1B4A35764()
{
  result = qword_1EB8A8410;
  if (!qword_1EB8A8410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8410);
  }

  return result;
}

unint64_t sub_1B4A357BC()
{
  result = qword_1EB8A8418;
  if (!qword_1EB8A8418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8418);
  }

  return result;
}

unint64_t sub_1B4A35810(uint64_t a1)
{
  result = sub_1B4A35838();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1B4A35838()
{
  result = qword_1EB8A8420;
  if (!qword_1EB8A8420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8A8420);
  }

  return result;
}

BOOL Apple_Fitness_Intelligence_InferenceResult.hasAnnounceUtteranceResult.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(v0 + *(v4 + 40), v3, &qword_1EB8A6940, &unk_1B4D22400);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A6940, &unk_1B4D22400);
  return v6;
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.announceUtteranceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(v1 + *(v6 + 40), v5, &qword_1EB8A6940, &unk_1B4D22400);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  }

  sub_1B4D17BBC();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a1 + v7[7]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v7[8]) = 2;
  v12 = (a1 + v7[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = a1 + v7[10];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6940, &unk_1B4D22400);
  }

  return result;
}

BOOL Apple_Fitness_Intelligence_InferenceResult.hasVoice.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(v0 + *(v4 + 44), v3, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A6938, &qword_1B4D1ACF8);
  return v6;
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.voice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(v1 + *(v6 + 44), v5, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v9 = (a1 + *(v7 + 20));
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + *(v7 + 24));
  *v10 = 0;
  v10[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.duration.setter(double a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.announceUtteranceResult.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 40);
  sub_1B4975024(v1 + v3, &qword_1EB8A6940, &unk_1B4D22400);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.voice.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 44);
  sub_1B4975024(v1 + v3, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

double Apple_Fitness_Intelligence_AnnounceUtteranceResult.synthesisDuration.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 20);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

double Apple_Fitness_Intelligence_AnnounceUtteranceResult.synthesizedAudioLength.getter()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 40);
  result = *v1;
  if (*(v1 + 8))
  {
    return 0.0;
  }

  return result;
}

double sub_1B4A361A4(uint64_t (*a1)(void))
{
  v2 = v1 + *(a1(0) + 24);
  result = *v2;
  if (*(v2 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t sub_1B4A36280(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceResult.synthesisDuration.setter(double a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceResult.synthesizedAudioLength.setter(double a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v4 = v1 + *(result + 40);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceResult.announceDuration.setter(double a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v4 = v1 + *(result + 24);
  *v4 = a1;
  *(v4 + 8) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceResult.announceResult.setter(char a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t sub_1B4A363E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_1B4A36490(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1B4A36504(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.streamDescription.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C8, &unk_1B4D22410);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(v1 + *(v6 + 28), v5, &qword_1EB8A76C8, &unk_1B4D22410);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  }

  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A76C8, &unk_1B4D22410);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.voice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v9 = (a1 + *(v7 + 20));
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + *(v7 + 24));
  *v10 = 0;
  v10[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.intensity.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C0, &qword_1B4D1E798);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(v1 + *(v6 + 36), v5, &qword_1EB8A76C0, &qword_1B4D1E798);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A76C0, &qword_1B4D1E798);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.streamDescription.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 28);
  sub_1B4975024(v2 + v4, &qword_1EB8A76C8, &unk_1B4D22410);
  sub_1B4A3CCD0(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.voice.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 32);
  sub_1B4975024(v2 + v4, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.intensity.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 36);
  sub_1B4975024(v2 + v4, &qword_1EB8A76C0, &qword_1B4D1E798);
  sub_1B4A3CCD0(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.record.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A83B8, &qword_1B4D22420);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A83B8, &qword_1B4D22420);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  }

  sub_1B4D17BBC();
  v9 = *(v7 + 20);
  if (qword_1EB8A6038 != -1)
  {
    swift_once();
  }

  *(a1 + v9) = qword_1EB8A8440;
  v10 = v8(v5, 1, v7);

  if (v10 != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A83B8, &qword_1B4D22420);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.utteranceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A6940, &unk_1B4D22400);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v8 = *(*(v7 - 1) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  }

  sub_1B4D17BBC();
  v9 = a1 + v7[5];
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = a1 + v7[6];
  *v10 = 0;
  *(v10 + 8) = 1;
  v11 = (a1 + v7[7]);
  *v11 = 0;
  v11[1] = 0;
  *(a1 + v7[8]) = 2;
  v12 = (a1 + v7[9]);
  *v12 = 0;
  v12[1] = 0;
  v13 = a1 + v7[10];
  *v13 = 0;
  *(v13 + 8) = 1;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6940, &unk_1B4D22400);
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.record.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A83B8, &qword_1B4D22420);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.utteranceResult.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A6940, &unk_1B4D22400);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.uuid.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  swift_beginAccess();
  v2 = *(v1 + 16);

  return v2;
}

double sub_1B4A37168@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;

  return result;
}

uint64_t sub_1B4A371C4(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(a2 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4A463BC(v7);
    *(a2 + v5) = v7;
  }

  swift_beginAccess();
  v7[2] = v4;
  v7[3] = v3;
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.uuid.setter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v6);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v8 = sub_1B4A463BC(v8);
    *(v3 + v6) = v8;
  }

  swift_beginAccess();
  v8[2] = a1;
  v8[3] = a2;
}

void (*Apple_Fitness_Intelligence_InferenceRecord.uuid.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  *(v4 + 96) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  v7 = *(v6 + 24);
  *(v4 + 72) = *(v6 + 16);
  *(v4 + 80) = v7;

  return sub_1B4A373C0;
}

void sub_1B4A373C0(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 96);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v6 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v9 = *(v2 + 96);
      v10 = *(v2 + 88);
      type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      swift_allocObject();
      v8 = sub_1B4A463BC(v8);
      *(v10 + v9) = v8;
    }

    swift_beginAccess();
    v8[2] = v3;
    v8[3] = v5;
  }

  else
  {
    v11 = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v6 + v4);
    if ((v11 & 1) == 0)
    {
      v13 = *(v2 + 96);
      v14 = *(v2 + 88);
      type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      swift_allocObject();
      v12 = sub_1B4A463BC(v12);
      *(v14 + v13) = v12;
    }

    swift_beginAccess();
    v12[2] = v3;
    v12[3] = v5;
  }

  free(v2);
}

double Apple_Fitness_Intelligence_InferenceRecord.createdAt.getter()
{
  v1 = *(v0 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  swift_beginAccess();
  return *(v1 + 32);
}

uint64_t sub_1B4A3753C(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(a2 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v6 = sub_1B4A463BC(v6);
    *(a2 + v4) = v6;
  }

  result = swift_beginAccess();
  v6[4] = v3;
  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.createdAt.setter(double a1)
{
  v2 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v6 = sub_1B4A463BC(v6);
    *(v2 + v4) = v6;
  }

  result = swift_beginAccess();
  v6[4] = a1;
  return result;
}

void (*Apple_Fitness_Intelligence_InferenceRecord.createdAt.modify(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x60uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 80) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  *(v4 + 88) = v5;
  v6 = *(v1 + v5);
  swift_beginAccess();
  *(v4 + 72) = *(v6 + 32);
  return sub_1B4A37714;
}

void sub_1B4A37714(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 72);
  v4 = *(*a1 + 88);
  v5 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = *(v2 + 88);
    v9 = *(v2 + 80);
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v7 = sub_1B4A463BC(v7);
    *(v9 + v8) = v7;
  }

  swift_beginAccess();
  v7[4] = v3;

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.request.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8A8748, &qword_1B4D22428);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  }

  sub_1B4D17BBC();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = (a1 + v8[6]);
  *v11 = 0;
  v11[1] = 0;
  v12 = v8[7];
  v13 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  (*(*(v13 - 8) + 56))(a1 + v12, 1, 1, v13);
  v14 = (a1 + v8[8]);
  *v14 = 0;
  v14[1] = 0;
  v15 = v8[9];
  v16 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  v17 = (a1 + v8[10]);
  *v17 = 0;
  v17[1] = 0;
  *(a1 + v8[11]) = 2;
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8748, &qword_1B4D22428);
  }

  return result;
}

uint64_t sub_1B4A37A1C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4A463BC(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4A3CCD0(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8A8748, &qword_1B4D22428);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.request.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4A463BC(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4A3CCD0(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8A8748, &qword_1B4D22428);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v3 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v4 = (a2 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + v3[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v3[7];
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  (*(*(v7 - 8) + 56))(a2 + v6, 1, 1, v7);
  v8 = (a2 + v3[8]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v3[9];
  v10 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  result = (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v12 = (a2 + v3[10]);
  *v12 = 0;
  v12[1] = 0;
  *(a2 + v3[11]) = 2;
  return result;
}

void (*Apple_Fitness_Intelligence_InferenceRecord.request.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A8748, &qword_1B4D22428);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = (v14 + v9[6]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v9[7];
    v22 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
    (*(*(v22 - 8) + 56))(v14 + v21, 1, 1, v22);
    v23 = (v14 + v9[8]);
    *v23 = 0;
    v23[1] = 0;
    v24 = v9[9];
    v25 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
    (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
    v26 = (v14 + v9[10]);
    *v26 = 0;
    v26[1] = 0;
    *(v14 + v9[11]) = 2;
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8748, &qword_1B4D22428);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  }

  return sub_1B4A38188;
}

void sub_1B4A38188(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4A467C0(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4A463BC(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4A3CCD0(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8A8748, &qword_1B4D22428);
    swift_endAccess();
    sub_1B4A46828(v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4A463BC(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4A3CCD0(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8A8748, &qword_1B4D22428);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.result.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v20 - v4;
  v6 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  v7 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  sub_1B4974FBC(v6 + v7, v5, &qword_1EB8A8758, &qword_1B4D22430);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v9 = *(*(v8 - 1) + 48);
  if (v9(v5, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  }

  sub_1B4D17BBC();
  v10 = (a1 + v8[5]);
  *v10 = 0;
  v10[1] = 0;
  v11 = a1 + v8[6];
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = (a1 + v8[7]);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a1 + v8[8]);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a1 + v8[9]);
  *v14 = 0;
  v14[1] = 0;
  v15 = v8[10];
  v16 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  (*(*(v16 - 8) + 56))(a1 + v15, 1, 1, v16);
  v17 = v8[11];
  v18 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v18 - 8) + 56))(a1 + v17, 1, 1, v18);
  result = (v9)(v5, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8758, &qword_1B4D22430);
  }

  return result;
}

uint64_t sub_1B4A3867C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  v11 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(a2 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v13 = sub_1B4A463BC(v13);
    *(a2 + v11) = v13;
  }

  sub_1B4A3CCD0(v10, v6, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  (*(v8 + 56))(v6, 0, 1, v7);
  v14 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  sub_1B49A205C(v6, v13 + v14, &qword_1EB8A8758, &qword_1B4D22430);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.result.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *(v1 + v7);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v9 = sub_1B4A463BC(v9);
    *(v2 + v7) = v9;
  }

  sub_1B4A3CCD0(a1, v6, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  (*(*(v10 - 8) + 56))(v6, 0, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  sub_1B49A205C(v6, v9 + v11, &qword_1EB8A8758, &qword_1B4D22430);
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v3 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v4 = (a2 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = a2 + v3[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a2 + v3[7]);
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v3[8]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (a2 + v3[9]);
  *v8 = 0;
  v8[1] = 0;
  v9 = v3[10];
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  (*(*(v10 - 8) + 56))(a2 + v9, 1, 1, v10);
  v11 = v3[11];
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v13 = *(*(v12 - 8) + 56);

  return v13(a2 + v11, 1, 1, v12);
}

void (*Apple_Fitness_Intelligence_InferenceRecord.result.modify(uint64_t *a1))(uint64_t *a1, char a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430) - 8) + 64);
  if (v3)
  {
    *(v5 + 80) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 80) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 88) = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  *(v5 + 96) = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  *(v5 + 104) = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    *(v5 + 112) = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 112) = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  *(v5 + 120) = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  *(v5 + 128) = v15;
  v16 = *(v1 + v15);
  v17 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  sub_1B4974FBC(v16 + v17, v8, &qword_1EB8A8758, &qword_1B4D22430);
  v18 = *(v11 + 48);
  if (v18(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v19 = (v14 + v9[5]);
    *v19 = 0;
    v19[1] = 0;
    v20 = v14 + v9[6];
    *v20 = 0;
    *(v20 + 8) = 1;
    v21 = (v14 + v9[7]);
    *v21 = 0;
    v21[1] = 0;
    v22 = (v14 + v9[8]);
    *v22 = 0;
    v22[1] = 0;
    v23 = (v14 + v9[9]);
    *v23 = 0;
    v23[1] = 0;
    v24 = v9[10];
    v25 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
    (*(*(v25 - 8) + 56))(v14 + v24, 1, 1, v25);
    v26 = v9[11];
    v27 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
    (*(*(v27 - 8) + 56))(v14 + v26, 1, 1, v27);
    if (v18(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8758, &qword_1B4D22430);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  }

  return sub_1B4A38E04;
}

void sub_1B4A38E04(uint64_t *a1, char a2, double a3)
{
  v3 = *a1;
  v4 = *(*a1 + 128);
  if (a2)
  {
    v5 = *(v3 + 72);
    sub_1B4A467C0(*(v3 + 120), *(v3 + 112), type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v3 + 128);
      v9 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      swift_allocObject();
      v7 = sub_1B4A463BC(v7);
      *(v9 + v8) = v7;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v12 = *(v3 + 96);
    v13 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4A3CCD0(v11, v15, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    (*(v13 + 56))(v15, 0, 1, v12);
    v16 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
    swift_beginAccess();
    sub_1B49A205C(v15, v7 + v16, &qword_1EB8A8758, &qword_1B4D22430);
    swift_endAccess();
    sub_1B4A46828(v10, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  }

  else
  {
    v17 = *(v3 + 72);
    v18 = swift_isUniquelyReferenced_nonNull_native();
    v19 = *(v17 + v4);
    if ((v18 & 1) == 0)
    {
      v20 = *(v3 + 128);
      v21 = *(v3 + 72);
      type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      swift_allocObject();
      v19 = sub_1B4A463BC(v19);
      *(v21 + v20) = v19;
    }

    v11 = *(v3 + 112);
    v10 = *(v3 + 120);
    v22 = *(v3 + 96);
    v23 = *(v3 + 104);
    v15 = *(v3 + 80);
    v14 = *(v3 + 88);
    sub_1B4A3CCD0(v10, v15, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    (*(v23 + 56))(v15, 0, 1, v22);
    v24 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
    swift_beginAccess();
    sub_1B49A205C(v15, v19 + v24, &qword_1EB8A8758, &qword_1B4D22430);
    swift_endAccess();
  }

  free(v10);
  free(v11);
  free(v14);
  free(v15);

  free(v3);
}

BOOL sub_1B4A39084(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = *(v4 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20));
  v13 = *a3;
  swift_beginAccess();
  sub_1B4974FBC(v12 + v13, v11, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v11, 1, v14) != 1;
  sub_1B4975024(v11, a1, a2);
  return v15;
}

uint64_t sub_1B4A391CC(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *(v4 + v13);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v15 = sub_1B4A463BC(v15);
    *(v9 + v13) = v15;
  }

  v16 = a3(0);
  (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
  v17 = *a4;
  swift_beginAccess();
  sub_1B49A205C(v12, v15 + v17, a1, a2);
  return swift_endAccess();
}

void (*Apple_Fitness_Intelligence_InferenceRecord.feedbackID.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_1B4A393FC;
}

uint64_t sub_1B4A3942C(void *a1)
{
  v2 = (*(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20)) + *a1);
  swift_beginAccess();
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double sub_1B4A394A8@<D0>(uint64_t a1@<X0>, void *a2@<X3>, void *a3@<X8>)
{
  v4 = (*(a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20)) + *a2);
  swift_beginAccess();
  if (v4[1])
  {
    v5 = *v4;
    v6 = v4[1];
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a3 = v5;
  a3[1] = v6;

  return result;
}

uint64_t sub_1B4A39530(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v8 = *a1;
  v7 = a1[1];
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(a2 + v9);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v11 = sub_1B4A463BC(v11);
    *(a2 + v9) = v11;
  }

  v12 = (v11 + *a5);
  swift_beginAccess();
  *v12 = v8;
  v12[1] = v7;
}

uint64_t sub_1B4A395F4(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v10 = sub_1B4A463BC(v10);
    *(v5 + v8) = v10;
  }

  v11 = (v10 + *a3);
  swift_beginAccess();
  *v11 = a1;
  v11[1] = a2;
}

void (*Apple_Fitness_Intelligence_InferenceRecord.osBuildVersion.modify(uint64_t *a1))(uint64_t *a1, uint64_t a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x68uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 88) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  *(v4 + 96) = v5;
  v6 = (*(v1 + v5) + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
  swift_beginAccess();
  if (v6[1])
  {
    v7 = *v6;
    v8 = v6[1];
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  *(v4 + 72) = v7;
  *(v4 + 80) = v8;

  return sub_1B4A39774;
}

void sub_1B4A39780(uint64_t *a1, char a2, void *a3)
{
  v4 = *a1;
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 80);
  v8 = *(*a1 + 88);
  if (a2)
  {

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(v8 + v6);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v11 = *(v4 + 96);
      v12 = *(v4 + 88);
      type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      swift_allocObject();
      v10 = sub_1B4A463BC(v10);
      *(v12 + v11) = v10;
    }

    v13 = (v10 + *a3);
    swift_beginAccess();
    *v13 = v5;
    v13[1] = v7;
  }

  else
  {
    v14 = swift_isUniquelyReferenced_nonNull_native();
    v15 = *(v8 + v6);
    if ((v14 & 1) == 0)
    {
      v16 = *(v4 + 96);
      v17 = *(v4 + 88);
      type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
      swift_allocObject();
      v15 = sub_1B4A463BC(v15);
      *(v17 + v16) = v15;
    }

    v18 = (v15 + *a3);
    swift_beginAccess();
    *v18 = v5;
    v18[1] = v7;
  }

  free(v4);
}

BOOL sub_1B4A398D8(void *a1)
{
  v2 = *(v1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20)) + *a1;
  swift_beginAccess();
  return *(v2 + 8) != 0;
}

uint64_t sub_1B4A39944(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v6 = sub_1B4A463BC(v6);
    *(v3 + v4) = v6;
  }

  v7 = (v6 + *a1);
  swift_beginAccess();
  *v7 = 0;
  v7[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  if (qword_1EB8A6038 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EB8A8440;
}

uint64_t sub_1B4A39AA4(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1B4A39B18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceRequest.adapter.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceRequest.prompt.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.audioSynthesisSettings.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4974FBC(v1 + *(v6 + 28), v5, &qword_1EB8A8778, &qword_1B4D22438);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  }

  *a1 = 0;
  sub_1B4D17BBC();
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8778, &qword_1B4D22438);
  }

  return result;
}

uint64_t sub_1B4A39F24@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4974FBC(a1 + *(v7 + 28), v6, &qword_1EB8A8778, &qword_1B4D22438);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  }

  *a2 = 0;
  sub_1B4D17BBC();
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8778, &qword_1B4D22438);
  }

  return result;
}

uint64_t sub_1B4A3A0C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8A8778, &qword_1B4D22438);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.audioSynthesisSettings.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A8778, &qword_1B4D22438);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisSettings.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4D17BBC();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(&a1[v3], 1, 1, v4);
}

void (*Apple_Fitness_Intelligence_InferenceRequest.audioSynthesisSettings.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8778, &qword_1B4D22438);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    sub_1B4D17BBC();
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8778, &qword_1B4D22438);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  }

  return sub_1B4A3A598;
}

uint64_t sub_1B4A3A664(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1B4A3A6D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceRequest.osBuildVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.telemetryIdentifier.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8780, &qword_1B4D22440);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4974FBC(v1 + *(v6 + 36), v5, &qword_1EB8A8780, &qword_1B4D22440);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  }

  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  sub_1B4D17BBC();
  v9 = (a1 + *(v7 + 28));
  *v9 = 0;
  v9[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8780, &qword_1B4D22440);
  }

  return result;
}

uint64_t sub_1B4A3A98C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8780, &qword_1B4D22440);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v12 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4974FBC(a1 + *(v7 + 36), v6, &qword_1EB8A8780, &qword_1B4D22440);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  }

  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  sub_1B4D17BBC();
  v10 = (a2 + *(v8 + 28));
  *v10 = 0;
  v10[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8780, &qword_1B4D22440);
  }

  return result;
}

uint64_t sub_1B4A3AB00(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 36);
  sub_1B4975024(a2 + v8, &qword_1EB8A8780, &qword_1B4D22440);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.telemetryIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 36);
  sub_1B4975024(v1 + v3, &qword_1EB8A8780, &qword_1B4D22440);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceTelemetryIdentifier.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  result = sub_1B4D17BBC();
  v4 = (a1 + *(v2 + 28));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

void (*Apple_Fitness_Intelligence_InferenceRequest.telemetryIdentifier.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8780, &qword_1B4D22440) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 36);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8780, &qword_1B4D22440);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 28));
    *v17 = 0;
    v17[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8780, &qword_1B4D22440);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  }

  return sub_1B4A3AF64;
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.requestIdentifier.getter()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

double sub_1B4A3B06C@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = (a1 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40));
  v4 = v3[1];
  if (v4)
  {
    v5 = *v3;
    v6 = v4;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *a2 = v5;
  a2[1] = v6;

  return result;
}

uint64_t sub_1B4A3B0D0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (a2 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40));

  *v4 = v3;
  v4[1] = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.requestIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceRequest.requestIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_InferenceRequest.clearRequestIdentifier()()
{
  v1 = (v0 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 40));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.streamAudio.setter(char a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceRequest.streamAudio.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0) + 44);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1B4A3B338;
}

double sub_1B4A3B3D8@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 20));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;

  return result;
}

uint64_t sub_1B4A3B440(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 20));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceRequest.utterance.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3B5A8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 20));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.settings.getter@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A8778, &qword_1B4D22438);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  }

  *a1 = 0;
  sub_1B4D17BBC();
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  (*(*(v10 - 8) + 56))(&a1[v9], 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8778, &qword_1B4D22438);
  }

  return result;
}

uint64_t sub_1B4A3B788@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  sub_1B4974FBC(a1 + *(v7 + 24), v6, &qword_1EB8A8778, &qword_1B4D22438);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  }

  *a2 = 0;
  sub_1B4D17BBC();
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  (*(*(v11 - 8) + 56))(&a2[v10], 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8778, &qword_1B4D22438);
  }

  return result;
}

uint64_t sub_1B4A3B92C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 24);
  sub_1B4975024(a2 + v8, &qword_1EB8A8778, &qword_1B4D22438);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.settings.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A8778, &qword_1B4D22438);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceRequest.settings.modify(void *a1))(uint64_t, uint64_t)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8778, &qword_1B4D22438);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    sub_1B4D17BBC();
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
    (*(*(v18 - 8) + 56))(&v14[v17], 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8778, &qword_1B4D22438);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  }

  return sub_1B4A60864;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.bypassSiriAnnounce.setter(char a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceRequest.bypassSiriAnnounce.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 28);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1B4A6084C;
}

double sub_1B4A3BF08@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 32));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;

  return result;
}

uint64_t sub_1B4A3BF70(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 32));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceRequest.requestIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3C0D8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 32));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.streamAudio.setter(char a1)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceRequest.streamAudio.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0) + 36);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1B4A6084C;
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  v4 = (a2 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = v3[6];
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  result = (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  *(a2 + v3[7]) = 2;
  v8 = (a2 + v3[8]);
  *v8 = 0;
  v8[1] = 0;
  *(a2 + v3[9]) = 2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceResult.synthesisDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 20);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_1B4A608B8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_AnnounceUtteranceResult.clearSynthesisDuration()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 20);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceResult.announceDuration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_1B4A608B8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_AnnounceUtteranceResult.clearAnnounceDuration()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceResult.debugAudioURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceResult.announceResult.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 32);
  *(a1 + 8) = v3;
  *(a1 + 12) = *(v1 + v3) & 1;
  return sub_1B4A6084C;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceResult.announceSource.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t (*Apple_Fitness_Intelligence_AnnounceUtteranceResult.synthesizedAudioLength.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 40);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_1B4A608B8;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_AnnounceUtteranceResult.clearSynthesizedAudioLength()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

int *Apple_Fitness_Intelligence_AnnounceUtteranceResult.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v4 = a2 + result[5];
  *v4 = 0;
  *(v4 + 8) = 1;
  v5 = a2 + result[6];
  *v5 = 0;
  *(v5 + 8) = 1;
  v6 = (a2 + result[7]);
  *v6 = 0;
  v6[1] = 0;
  *(a2 + result[8]) = 2;
  v7 = (a2 + result[9]);
  *v7 = 0;
  v7[1] = 0;
  v8 = a2 + result[10];
  *v8 = 0;
  *(v8 + 8) = 1;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.voice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(v1 + *(v6 + 28), v5, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v9 = (a1 + *(v7 + 20));
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + *(v7 + 24));
  *v10 = 0;
  v10[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t sub_1B4A3C930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(a1 + *(v7 + 28), v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v10 = (a2 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t sub_1B4A3CAA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.voice.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 28);
  sub_1B4975024(v2 + v4, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoice.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  result = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v4 = (a2 + *(result + 20));
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + *(result + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1B4A3CCD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t (*Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.voice.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 20));
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + *(v9 + 24));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  return sub_1B4A60880;
}

BOOL sub_1B4A3CFB8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 28), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t sub_1B4A3D0F0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 28);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

void Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.downloadStatus.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  *a1 = *(v1 + 8);
  *(a1 + 8) = v2;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.downloadStatus.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 8) = *result;
  *(v1 + 16) = v2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.downloadProgress.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8788, &qword_1B4D22448);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A8788, &qword_1B4D22448);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  }

  *a1 = 0;
  a1[1] = 0;
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8788, &qword_1B4D22448);
  }

  return result;
}

uint64_t sub_1B4A3D370@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8788, &qword_1B4D22448);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(a1 + *(v7 + 32), v6, &qword_1EB8A8788, &qword_1B4D22448);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  }

  *a2 = 0;
  a2[1] = 0;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8788, &qword_1B4D22448);
  }

  return result;
}

uint64_t sub_1B4A3D4D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 32);
  sub_1B4975024(a2 + v8, &qword_1EB8A8788, &qword_1B4D22448);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.downloadProgress.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 32);
  sub_1B4975024(v2 + v4, &qword_1EB8A8788, &qword_1B4D22448);
  sub_1B4A3CCD0(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress.init()@<X0>(void *a1@<X8>)
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  *a1 = 0;
  a1[1] = 0;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.downloadProgress.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8788, &qword_1B4D22448) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8788, &qword_1B4D22448);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    v14[1] = 0;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8788, &qword_1B4D22448);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  }

  return sub_1B4A3D908;
}

BOOL sub_1B4A3D980(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 32), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t sub_1B4A3DB4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C3A8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B4A3DC10@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A3DCAC(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 24);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  v3 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4D17BBC();
  v4 = *(v3 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  v6 = *(v3 + 32);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, 1, 1, v7);
}

uint64_t (*Apple_Fitness_Intelligence_AudioSynthesisVoice.name.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3DF98(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

double sub_1B4A3DFF4@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 24));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;

  return result;
}

uint64_t sub_1B4A3E05C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 24));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t sub_1B4A3E0CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v6 = (v3 + *(a3(0) + 24));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_AudioSynthesisVoice.language.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3E210(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 24));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceResult.text.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 20);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceResult.duration.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 24);
  *(a1 + 16) = v3;
  v4 = v1 + v3;
  v5 = *v4;
  if (*(v4 + 8))
  {
    v5 = 0.0;
  }

  *a1 = v5;
  return sub_1B4A3E3D4;
}

uint64_t sub_1B4A3E3D4(uint64_t result)
{
  v1 = *(result + 8) + *(result + 16);
  *v1 = *result;
  *(v1 + 8) = 0;
  return result;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_InferenceResult.clearDuration()()
{
  v1 = v0 + *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 24);
  *v1 = 0;
  *(v1 + 8) = 1;
}

double sub_1B4A3E464@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 28));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;

  return result;
}

uint64_t sub_1B4A3E4CC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 28));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceResult.debugAudioURL.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3E634(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 28));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceResult.systemVersion.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 32);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

double sub_1B4A3E73C@<D0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X3>, void *a3@<X8>)
{
  v4 = (a1 + *(a2(0) + 36));
  v5 = v4[1];
  if (v5)
  {
    v6 = *v4;
    v7 = v5;
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  *a3 = v6;
  a3[1] = v7;

  return result;
}

uint64_t sub_1B4A3E7A4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = *a1;
  v5 = a1[1];
  v7 = (a2 + *((a5)(0, a2, a3, a4) + 36));

  *v7 = v6;
  v7[1] = v5;
  return result;
}

void (*Apple_Fitness_Intelligence_InferenceResult.modelVersion.modify(uint64_t *a1))(uint64_t **, char)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 36);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A3E8AC;
}

uint64_t sub_1B4A3E8C8(uint64_t (*a1)(void))
{
  v2 = (v1 + *(a1(0) + 36));

  *v2 = 0;
  v2[1] = 0;
  return result;
}

uint64_t sub_1B4A3E908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 40);
  sub_1B4975024(a2 + v8, &qword_1EB8A6940, &unk_1B4D22400);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_InferenceResult.announceUtteranceResult.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 40);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6940, &unk_1B4D22400);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    *(v14 + v9[8]) = 2;
    v20 = (v14 + v9[9]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v14 + v9[10];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6940, &unk_1B4D22400);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  }

  return sub_1B4A3ECA0;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_InferenceResult.clearAnnounceUtteranceResult()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 40);
  sub_1B4975024(v0 + v1, &qword_1EB8A6940, &unk_1B4D22400);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1B4A3ED68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(a1 + *(v7 + 44), v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v10 = (a2 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t sub_1B4A3EED8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 44);
  sub_1B4975024(a2 + v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_InferenceResult.voice.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 44);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 20));
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + *(v9 + 24));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  return sub_1B4A3F230;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_InferenceResult.clearVoice()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0) + 44);
  sub_1B4975024(v0 + v1, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t sub_1B4A3F318@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A83B8, &qword_1B4D22420);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4974FBC(a1 + *(v7 + 24), v6, &qword_1EB8A83B8, &qword_1B4D22420);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  }

  sub_1B4D17BBC();
  v10 = *(v8 + 20);
  if (qword_1EB8A6038 != -1)
  {
    swift_once();
  }

  *(a2 + v10) = qword_1EB8A8440;
  v11 = v9(v6, 1, v8);

  if (v11 != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A83B8, &qword_1B4D22420);
  }

  return result;
}

uint64_t sub_1B4A3F4C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 24);
  sub_1B4975024(a2 + v8, &qword_1EB8A83B8, &qword_1B4D22420);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_InferenceFeedback.record.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A83B8, &qword_1B4D22420) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A83B8, &qword_1B4D22420);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = *(v9 + 20);
    if (qword_1EB8A6038 != -1)
    {
      swift_once();
    }

    *(v14 + v17) = qword_1EB8A8440;
    v18 = v16(v8, 1, v9);

    if (v18 != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A83B8, &qword_1B4D22420);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  }

  return sub_1B4A3F850;
}

BOOL sub_1B4A3F8C8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 24), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t sub_1B4A3FA00(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 24);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.sentiment.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.sentiment.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceFeedback.userDescription.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A3FBFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 32);
  sub_1B4975024(a2 + v8, &qword_1EB8A6940, &unk_1B4D22400);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t (*Apple_Fitness_Intelligence_InferenceFeedback.utteranceResult.modify(void *a1))(uint64_t, uint64_t)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v5[2] = v9;
  v10 = *(v9 - 1);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6940, &unk_1B4D22400);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = v14 + v9[5];
    *v17 = 0;
    *(v17 + 8) = 1;
    v18 = v14 + v9[6];
    *v18 = 0;
    *(v18 + 8) = 1;
    v19 = (v14 + v9[7]);
    *v19 = 0;
    v19[1] = 0;
    *(v14 + v9[8]) = 2;
    v20 = (v14 + v9[9]);
    *v20 = 0;
    v20[1] = 0;
    v21 = v14 + v9[10];
    *v21 = 0;
    *(v21 + 8) = 1;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6940, &unk_1B4D22400);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  }

  return sub_1B4A6088C;
}

uint64_t sub_1B4A3FFD0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 32);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4D17BBC();
  v3 = v2[6];
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = &a1[v2[7]];
  *v5 = 0;
  *(v5 + 1) = 0;
  v6 = v2[8];
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(&a1[v6], 1, 1, v7);
}

void Apple_Fitness_Intelligence_InferenceAvailability.value.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v2;
}

uint64_t Apple_Fitness_Intelligence_InferenceAvailability.value.setter(uint64_t result)
{
  v2 = *(result + 8);
  *v1 = *result;
  *(v1 + 8) = v2;
  return result;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceAvailability.reason.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0) + 24);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

uint64_t sub_1B4A40364@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_1B4A40400(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  v5 = sub_1B4D17BCC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

unint64_t Apple_Fitness_Intelligence_InferenceAvailability.AvailabilityValue.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 2;
  *(a2 + 9) = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceAvailability.AvailabilityValue.rawValue.getter()
{
  if (v0[8])
  {
    return *v0 != 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t sub_1B4A40528(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C3FC();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Fitness_Intelligence_InferenceAvailability.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
  result = sub_1B4D17BBC();
  v4 = (a1 + *(v2 + 24));
  *v4 = 0;
  v4[1] = 0;
  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection.voice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v9 = (a1 + *(v7 + 20));
  *v9 = 0;
  v9[1] = 0;
  v10 = (a1 + *(v7 + 24));
  *v10 = 0;
  v10[1] = 0;
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t sub_1B4A40750@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  sub_1B4974FBC(a1 + *(v7 + 24), v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v10 = (a2 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t sub_1B4A408C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0) + 24);
  sub_1B4975024(a2 + v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection.voice.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection.voice.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 20));
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + *(v9 + 24));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  return sub_1B4A60880;
}

uint64_t sub_1B4A40DDC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C450();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  sub_1B4D17BBC();
  v3 = *(v2 + 24);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisSettings.voiceSelection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A8790, &qword_1B4D22450);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  sub_1B4D17BBC();
  v9 = *(v7 + 24);
  v10 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v10 - 8) + 56))(a1 + v9, 1, 1, v10);
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8790, &qword_1B4D22450);
  }

  return result;
}

uint64_t sub_1B4A41064@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4974FBC(a1 + *(v7 + 24), v6, &qword_1EB8A8790, &qword_1B4D22450);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1B4D17BBC();
  v10 = *(v8 + 24);
  v11 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8790, &qword_1B4D22450);
  }

  return result;
}

uint64_t sub_1B4A41210(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0) + 24);
  sub_1B4975024(a2 + v8, &qword_1EB8A8790, &qword_1B4D22450);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisSettings.voiceSelection.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A8790, &qword_1B4D22450);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_AudioSynthesisSettings.voiceSelection.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8790, &qword_1B4D22450);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    sub_1B4D17BBC();
    v17 = *(v9 + 24);
    v18 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
    (*(*(v18 - 8) + 56))(v14 + v17, 1, 1, v18);
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8790, &qword_1B4D22450);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  }

  return sub_1B4A4165C;
}

uint64_t (*Apple_Fitness_Intelligence_InferenceTelemetryIdentifier.deviceIdentifier.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0) + 28);
  *(v4 + 32) = v5;
  v6 = (v1 + v5);
  v7 = v6[1];
  if (v7)
  {
    v8 = *v6;
    v9 = v7;
  }

  else
  {
    v8 = 0;
    v9 = 0xE000000000000000;
  }

  *(v4 + 24) = v7;
  *v4 = v8;
  *(v4 + 8) = v9;

  return sub_1B4A60858;
}

void sub_1B4A41888(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v5 = *(*a1 + 8);
  v6 = (*a1)[2];
  if (a2)
  {
    v7 = (v6 + v5);

    *v7 = v4;
    v7[1] = v3;
  }

  else
  {

    v8 = (v6 + v5);
    *v8 = v4;
    v8[1] = v3;
  }

  free(v2);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.generativeModels.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(v1 + *(v6 + 20), v5, &qword_1EB8A8798, &qword_1B4D22458);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A41B30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v7 + 20), v6, &qword_1EB8A8798, &qword_1B4D22458);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A41CA4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 20);
  sub_1B4975024(a2 + v8, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.generativeModels.setter(uint64_t a1, double a2)
{
  v4 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 20);
  sub_1B4975024(v2 + v4, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(a1, v2 + v4, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(v2 + v4, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_DeviceInferenceAvailability.generativeModels.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 20);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8798, &qword_1B4D22458);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8798, &qword_1B4D22458);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  return sub_1B4A42104;
}

BOOL Apple_Fitness_Intelligence_DeviceInferenceAvailability.hasGenerativeModels.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8 - v2;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(v0 + *(v4 + 20), v3, &qword_1EB8A8798, &qword_1B4D22458);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v6 = (*(*(v5 - 8) + 48))(v3, 1, v5) != 1;
  sub_1B4975024(v3, &qword_1EB8A8798, &qword_1B4D22458);
  return v6;
}

Swift::Void __swiftcall Apple_Fitness_Intelligence_DeviceInferenceAvailability.clearGenerativeModels()()
{
  v1 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 20);
  sub_1B4975024(v0 + v1, &qword_1EB8A8798, &qword_1B4D22458);
  v2 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v3 = *(*(v2 - 8) + 56);

  v3(v0 + v1, 1, 1, v2);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.siri.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(v1 + *(v6 + 24), v5, &qword_1EB8A8798, &qword_1B4D22458);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A42430@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v7 + 24), v6, &qword_1EB8A8798, &qword_1B4D22458);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A425A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 24);
  sub_1B4975024(a2 + v8, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.siri.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 24);
  sub_1B4975024(v1 + v3, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Fitness_Intelligence_DeviceInferenceAvailability.siri.modify(void *a1))(uint64_t, uint64_t)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 24);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8798, &qword_1B4D22458);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8798, &qword_1B4D22458);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  return sub_1B4A60890;
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.selectedVoiceAsset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(v1 + *(v6 + 28), v5, &qword_1EB8A8798, &qword_1B4D22458);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A42BA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v7 + 28), v6, &qword_1EB8A8798, &qword_1B4D22458);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A42D14(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 28);
  sub_1B4975024(a2 + v8, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.selectedVoiceAsset.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 28);
  sub_1B4975024(v1 + v3, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Fitness_Intelligence_DeviceInferenceAvailability.selectedVoiceAsset.modify(void *a1))(uint64_t, uint64_t)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8798, &qword_1B4D22458);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8798, &qword_1B4D22458);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  return sub_1B4A60890;
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.locale.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(v1 + *(v6 + 32), v5, &qword_1EB8A8798, &qword_1B4D22458);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v8 = *(*(v7 - 8) + 48);
  if (v8(v5, 1, v7) != 1)
  {
    return sub_1B4A3CCD0(v5, a1, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a1 = 0;
  *(a1 + 8) = 1;
  *(a1 + 16) = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v8)(v5, 1, v7);
  if (result != 1)
  {
    return sub_1B4975024(v5, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A43310@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v7 + 32), v6, &qword_1EB8A8798, &qword_1B4D22458);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = MEMORY[0x1E69E7CC0];
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A8798, &qword_1B4D22458);
  }

  return result;
}

uint64_t sub_1B4A43484(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 32);
  sub_1B4975024(a2 + v8, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.locale.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 32);
  sub_1B4975024(v1 + v3, &qword_1EB8A8798, &qword_1B4D22458);
  sub_1B4A3CCD0(a1, v1 + v3, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  v4 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(v1 + v3, 0, 1, v4);
}

uint64_t (*Apple_Fitness_Intelligence_DeviceInferenceAvailability.locale.modify(void *a1))(uint64_t, uint64_t)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A8798, &qword_1B4D22458);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    *(v14 + 16) = MEMORY[0x1E69E7CC0];
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A8798, &qword_1B4D22458);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  }

  return sub_1B4A60890;
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_InferenceRecordV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4D17BCC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t _s19FitnessIntelligence06Apple_a1_B16_InferenceRecordV13unknownFields21InternalSwiftProtobuf14UnknownStorageVvs_0(uint64_t a1)
{
  v3 = sub_1B4D17BCC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability.unavailableReasons.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_1B4A43B08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C4A4();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.init()@<X0>(uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v3 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  v4 = v3[5];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v8(a2 + v3[6], 1, 1, v5);
  v8(a2 + v3[7], 1, 1, v5);
  v6 = a2 + v3[8];

  return (v8)(v6, 1, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry.value.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry.value.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry.init()@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0xE000000000000000;
  a1[2] = 0;
  a1[3] = 0xE000000000000000;
  type metadata accessor for Apple_Fitness_Intelligence_WorkoutVoiceTranscript.Entry(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_AnnounceCancellationResult.init()@<X0>(_BYTE *a1@<X8>)
{
  *a1 = 0;
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceCancellationResult(0);
  return sub_1B4D17BBC();
}

unint64_t Apple_Fitness_Intelligence_AudioSynthesisIntensity.Intensity.init(rawValue:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result;
  *(a2 + 8) = result < 3;
  *(a2 + 9) = 0;
  return result;
}

uint64_t sub_1B4A440D0(uint64_t a1, uint64_t a2)
{
  sub_1B4D18E8C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t sub_1B4A4413C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C4F8();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B4A44188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B4D18E8C();
  sub_1B4D1808C();
  return sub_1B4D18EDC();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisIntensity.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 1;
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  return sub_1B4D17BBC();
}

uint64_t sub_1B4A44250(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v8, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  v9 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 28);
  sub_1B4975024(a2 + v9, &qword_1EB8A76C8, &unk_1B4D22410);
  sub_1B4A3CCD0(v8, a2 + v9, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  return (*(v6 + 56))(a2 + v9, 0, 1, v5);
}

uint64_t Apple_Fitness_Intelligence_AudioStreamDescription.init()@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0;
  return sub_1B4D17BBC();
}

void (*Apple_Fitness_Intelligence_StreamingAudioAvailable.streamDescription.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C8, &unk_1B4D22410) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 28);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A76C8, &unk_1B4D22410);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *(v14 + 32) = 0;
    *v14 = 0u;
    *(v14 + 16) = 0u;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A76C8, &unk_1B4D22410);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription);
  }

  return sub_1B4A44680;
}

uint64_t sub_1B4A44754@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(a1 + *(v7 + 32), v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  sub_1B4D17BBC();
  v10 = (a2 + *(v8 + 20));
  *v10 = 0;
  v10[1] = 0;
  v11 = (a2 + *(v8 + 24));
  *v11 = 0;
  v11[1] = 0;
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  return result;
}

uint64_t sub_1B4A448C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 32);
  sub_1B4975024(a2 + v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

uint64_t (*Apple_Fitness_Intelligence_StreamingAudioAvailable.voice.modify(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 32);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    sub_1B4D17BBC();
    v17 = (v14 + *(v9 + 20));
    *v17 = 0;
    v17[1] = 0;
    v18 = (v14 + *(v9 + 24));
    *v18 = 0;
    v18[1] = 0;
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A6938, &qword_1B4D1ACF8);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  }

  return sub_1B4A60880;
}

uint64_t sub_1B4A44C94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C0, &qword_1B4D1E798);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  v7 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4974FBC(a1 + *(v7 + 36), v6, &qword_1EB8A76C0, &qword_1B4D1E798);
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v9 = *(*(v8 - 8) + 48);
  if (v9(v6, 1, v8) != 1)
  {
    return sub_1B4A3CCD0(v6, a2, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  }

  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1B4D17BBC();
  result = (v9)(v6, 1, v8);
  if (result != 1)
  {
    return sub_1B4975024(v6, &qword_1EB8A76C0, &qword_1B4D1E798);
  }

  return result;
}

uint64_t sub_1B4A44DFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B4A467C0(a1, v7, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 36);
  sub_1B4975024(a2 + v8, &qword_1EB8A76C0, &qword_1B4D1E798);
  sub_1B4A3CCD0(v7, a2 + v8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  return (*(v5 + 56))(a2 + v8, 0, 1, v4);
}

void (*Apple_Fitness_Intelligence_StreamingAudioAvailable.intensity.modify(void *a1))(uint64_t **a1, uint64_t a2, double a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x38uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A76C0, &qword_1B4D1E798) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v5[2] = v9;
  v10 = *(v9 - 8);
  v11 = v10;
  v5[3] = v10;
  v12 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v13 = malloc(v12);
  }

  v14 = v13;
  v5[5] = v13;
  v15 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0) + 36);
  *(v5 + 12) = v15;
  sub_1B4974FBC(v1 + v15, v8, &qword_1EB8A76C0, &qword_1B4D1E798);
  v16 = *(v11 + 48);
  if (v16(v8, 1, v9) == 1)
  {
    *v14 = 0;
    *(v14 + 8) = 1;
    sub_1B4D17BBC();
    if (v16(v8, 1, v9) != 1)
    {
      sub_1B4975024(v8, &qword_1EB8A76C0, &qword_1B4D1E798);
    }
  }

  else
  {
    sub_1B4A3CCD0(v8, v14, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity);
  }

  return sub_1B4A4514C;
}

void sub_1B4A45188(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), double a7)
{
  v10 = *a1;
  v11 = *(*a1 + 12);
  v12 = (*a1)[4];
  v13 = (*a1)[5];
  v14 = (*a1)[2];
  v15 = (*a1)[3];
  v16 = **a1;
  v18 = (*a1)[1];
  if (a2)
  {
    sub_1B4A467C0(v13, v12, a6);
    sub_1B4975024(v16 + v11, a3, a4);
    sub_1B4A3CCD0(v12, v16 + v11, a5);
    (*(v15 + 56))(v16 + v11, 0, 1, v14);
    sub_1B4A46828(v13, a6);
  }

  else
  {
    sub_1B4975024(v16 + v11, a3, a4);
    sub_1B4A3CCD0(v13, v16 + v11, a5);
    (*(v15 + 56))(v16 + v11, 0, 1, v14);
  }

  free(v13);
  free(v12);
  free(v18);

  free(v10);
}

BOOL sub_1B4A45300(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void, double), uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v17 - v11;
  v13 = a3(0, v10);
  sub_1B4974FBC(v4 + *(v13 + 36), v12, a1, a2);
  v14 = a4(0);
  v15 = (*(*(v14 - 8) + 48))(v12, 1, v14) != 1;
  sub_1B4975024(v12, a1, a2);
  return v15;
}

uint64_t sub_1B4A45438(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = *(a1(0) + 36);
  sub_1B4975024(v4 + v8, a2, a3);
  v9 = a4(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(v4 + v8, 1, 1, v9);
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioAvailable.init()@<X0>(char *a1@<X8>)
{
  *a1 = 0;
  *(a1 + 1) = 0xE000000000000000;
  *(a1 + 2) = 0;
  *(a1 + 3) = 0xE000000000000000;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioAvailable(0);
  sub_1B4D17BBC();
  v3 = v2[7];
  v4 = type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0);
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[8];
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = v2[9];
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisIntensity(0);
  v9 = *(*(v8 - 8) + 56);

  return v9(&a1[v7], 1, 1, v8);
}

uint64_t sub_1B4A45730@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a1(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioData.audioChunks.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1B4A45858@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  *a2 = MEMORY[0x1E69E7CC0];
  a1(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.audioData.getter()
{
  v1 = *(v0 + 24);
  sub_1B498FC0C(v1, *(v0 + 32));
  return v1;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.audioData.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B49DDD2C(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.packetDescriptions.getter()
{
  v1 = *(v0 + 48);
  sub_1B498FC0C(v1, *(v0 + 56));
  return v1;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.packetDescriptions.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1B49DDD2C(*(v2 + 48), *(v2 + 56));
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return result;
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0) + 36);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioChunk.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  *(a1 + 24) = xmmword_1B4D223D0;
  *(a1 + 40) = 0;
  *(a1 + 48) = xmmword_1B4D223D0;
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioChunk(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_StreamingAudioComplete.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  *(a1 + 16) = 0;
  type metadata accessor for Apple_Fitness_Intelligence_StreamingAudioComplete(0);
  return sub_1B4D17BBC();
}

uint64_t Apple_Fitness_Intelligence_AudioStreamDescription.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0) + 52);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t Apple_Fitness_Intelligence_AudioStreamDescription.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Apple_Fitness_Intelligence_AudioStreamDescription(0) + 52);
  v4 = sub_1B4D17BCC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t sub_1B4A45FC0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8428);
  __swift_project_value_buffer(v0, qword_1EB8A8428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1B4D223E0;
  v4 = v19 + v3;
  v5 = v19 + v3 + v1[14];
  *(v19 + v3) = 1;
  *v5 = "uuid";
  *(v5 + 8) = 4;
  *(v5 + 16) = 2;
  v6 = *MEMORY[0x1E69AADC8];
  v7 = sub_1B4D17E7C();
  v8 = *(*(v7 - 8) + 104);
  (v8)(v5, v6, v7);
  v9 = v4 + v2 + v1[14];
  *(v4 + v2) = 2;
  *v9 = "createdAt";
  *(v9 + 8) = 9;
  *(v9 + 16) = 2;
  v8();
  v10 = (v4 + 2 * v2);
  v11 = v10 + v1[14];
  *v10 = 3;
  *v11 = "request";
  *(v11 + 1) = 7;
  v11[16] = 2;
  v8();
  v12 = (v4 + 3 * v2);
  v13 = v12 + v1[14];
  *v12 = 4;
  *v13 = "result";
  *(v13 + 1) = 6;
  v13[16] = 2;
  v8();
  v14 = (v4 + 4 * v2);
  v15 = v14 + v1[14];
  *v14 = 5;
  *v15 = "feedbackId";
  *(v15 + 1) = 10;
  v15[16] = 2;
  v8();
  v16 = (v4 + 5 * v2);
  v17 = v16 + v1[14];
  *v16 = 6;
  *v17 = "osBuildVersion";
  *(v17 + 1) = 14;
  v17[16] = 2;
  v8();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A462A4()
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
  v0 = swift_allocObject();
  *(v0 + 2) = 0;
  *(v0 + 3) = 0xE000000000000000;
  *(v0 + 4) = 0;
  v1 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  v2 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  (*(*(v2 - 8) + 56))(&v0[v1], 1, 1, v2);
  v3 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  result = (*(*(v4 - 8) + 56))(&v0[v3], 1, 1, v4);
  v6 = &v0[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID];
  *v6 = 0;
  *(v6 + 1) = 0;
  v7 = &v0[OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion];
  *v7 = 0;
  *(v7 + 1) = 0;
  qword_1EB8A8440 = v0;
  return result;
}

void *sub_1B4A463BC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v31 = &v29 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v1[2] = 0;
  v1[3] = 0xE000000000000000;
  v1[4] = 0;
  v9 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  v10 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  (*(*(v10 - 8) + 56))(v1 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  v30 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  (*(*(v12 - 8) + 56))(v1 + v11, 1, 1, v12);
  v13 = (v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
  *v13 = 0;
  v13[1] = 0;
  v14 = (v1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
  *v14 = 0;
  v14[1] = 0;
  swift_beginAccess();
  v16 = a1[2];
  v15 = a1[3];
  swift_beginAccess();
  v1[2] = v16;
  v1[3] = v15;
  swift_beginAccess();
  v17 = a1[4];
  swift_beginAccess();
  v1[4] = v17;
  v18 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v18, v8, &qword_1EB8A8748, &qword_1B4D22428);
  swift_beginAccess();

  sub_1B49A205C(v8, v2 + v9, &qword_1EB8A8748, &qword_1B4D22428);
  swift_endAccess();
  v19 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  v20 = v31;
  sub_1B4974FBC(a1 + v19, v31, &qword_1EB8A8758, &qword_1B4D22430);
  v21 = v30;
  swift_beginAccess();
  sub_1B49A205C(v20, v2 + v21, &qword_1EB8A8758, &qword_1B4D22430);
  swift_endAccess();
  v22 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
  swift_beginAccess();
  v24 = *v22;
  v23 = v22[1];
  swift_beginAccess();
  *v13 = v24;
  v13[1] = v23;

  v25 = (a1 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
  swift_beginAccess();
  v27 = *v25;
  v26 = v25[1];

  swift_beginAccess();
  *v14 = v27;
  v14[1] = v26;

  return v2;
}

uint64_t sub_1B4A467C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4A46828(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4A46A68()
{

  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request, &qword_1EB8A8748, &qword_1B4D22428);
  sub_1B4975024(v0 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result, &qword_1EB8A8758, &qword_1B4D22430);

  return swift_deallocClassInstance();
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = *(v3 + v8);
    type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord._StorageClass(0);
    swift_allocObject();
    v10 = sub_1B4A463BC(v11);
    *(v4 + v8) = v10;
  }

  return sub_1B4A46BD4(v10, a1, a2, a3);
}

uint64_t sub_1B4A46BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 3)
      {
        switch(result)
        {
          case 4:
            sub_1B4A46F10(a2, a1, a3, a4);
            break;
          case 5:
            sub_1B4A46FEC(a2, a1, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
            break;
          case 6:
            sub_1B4A46FEC(a2, a1, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
            break;
        }
      }

      else
      {
        switch(result)
        {
          case 1:
            sub_1B4A46D2C(a2, a1, a3, a4);
            break;
          case 2:
            sub_1B4A46DB0(a2, a1, a3, a4);
            break;
          case 3:
            sub_1B4A46E34(a2, a1, a3, a4);
            break;
        }
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4A46D2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B4D17D1C();
  return swift_endAccess();
}

uint64_t sub_1B4A46DB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B4D17CFC();
  return swift_endAccess();
}

uint64_t sub_1B4A46E34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4A5C360(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRequest);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4A46F10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4A5C360(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceResult);
  sub_1B4D17D4C();
  return swift_endAccess();
}

uint64_t sub_1B4A46FEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  swift_beginAccess();
  sub_1B4D17D0C();
  return swift_endAccess();
}

uint64_t Apple_Fitness_Intelligence_InferenceRecord.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  result = sub_1B4A470E0(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A470E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = a1[3];
  v11 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v11 = a1[2] & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {

    sub_1B4D17E3C();

    if (v4)
    {
      return result;
    }

    v5 = 0;
  }

  swift_beginAccess();
  if (a1[4])
  {
    v13 = v5;
    result = sub_1B4D17E2C();
    if (v5)
    {
      return result;
    }
  }

  else
  {
    v13 = v5;
  }

  result = sub_1B4A47244(a1, a2, a3, a4);
  if (!v13)
  {
    sub_1B4A4746C(a1, a2, a3, a4);
    sub_1B4A47694(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID, 5);
    return sub_1B4A47694(a1, a2, a3, a4, &OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion, 6);
  }

  return result;
}

uint64_t sub_1B4A47244(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8A8748, &qword_1B4D22428);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8748, &qword_1B4D22428);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  sub_1B4A5C360(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRequest);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
}

uint64_t sub_1B4A4746C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[7] = a4;
  v14[1] = a2;
  v14[2] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  sub_1B4974FBC(a1 + v12, v7, &qword_1EB8A8758, &qword_1B4D22430);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8758, &qword_1B4D22430);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  sub_1B4A5C360(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceResult);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
}

uint64_t sub_1B4A47694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v6 = a1 + *a5;
  result = swift_beginAccess();
  if (*(v6 + 8))
  {

    sub_1B4D17E3C();
  }

  return result;
}

BOOL sub_1B4A47748(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D80, &qword_1B4D25780);
  MEMORY[0x1EEE9AC00](v69);
  v7 = &v65 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8758, &qword_1B4D22430);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v67 = &v65 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v65 - v11;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  v75 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v68 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D88, &qword_1B4D25788);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v65 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8748, &qword_1B4D22428);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v74 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v65 - v20;
  swift_beginAccess();
  v22 = *(a1 + 16);
  v23 = *(a1 + 24);
  swift_beginAccess();
  if (__PAIR128__(v23, v22) != *(a2 + 16) && (sub_1B4D18DCC() & 1) == 0)
  {
    return 0;
  }

  swift_beginAccess();
  v24 = *(a1 + 32);
  swift_beginAccess();
  if (v24 != *(a2 + 32))
  {
    return 0;
  }

  v65 = v7;
  v25 = a1;
  v73 = a2;
  v26 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  v27 = a1 + v26;
  v28 = v73;
  sub_1B4974FBC(v27, v21, &qword_1EB8A8748, &qword_1B4D22428);
  v29 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__request;
  swift_beginAccess();
  v30 = *(v14 + 48);
  sub_1B4974FBC(v21, v16, &qword_1EB8A8748, &qword_1B4D22428);
  sub_1B4974FBC(v28 + v29, &v16[v30], &qword_1EB8A8748, &qword_1B4D22428);
  v31 = *(v75 + 48);
  if (v31(v16, 1, v12) == 1)
  {

    sub_1B4975024(v21, &qword_1EB8A8748, &qword_1B4D22428);
    v32 = v25;
    if (v31(&v16[v30], 1, v12) == 1)
    {
      sub_1B4975024(v16, &qword_1EB8A8748, &qword_1B4D22428);
      goto LABEL_12;
    }

LABEL_9:
    sub_1B4975024(v16, &qword_1EB8A8D88, &qword_1B4D25788);
    goto LABEL_18;
  }

  v33 = v74;
  sub_1B4974FBC(v16, v74, &qword_1EB8A8748, &qword_1B4D22428);
  if (v31(&v16[v30], 1, v12) == 1)
  {

    sub_1B4975024(v21, &qword_1EB8A8748, &qword_1B4D22428);
    sub_1B4A46828(v33, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    goto LABEL_9;
  }

  v34 = v33;
  v35 = v68;
  sub_1B4A3CCD0(&v16[v30], v68, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  v32 = v25;

  v36 = _s19FitnessIntelligence06Apple_a1_B17_InferenceRequestV2eeoiySbAC_ACtFZ_0(v34, v35);
  sub_1B4A46828(v35, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  sub_1B4975024(v21, &qword_1EB8A8748, &qword_1B4D22428);
  sub_1B4A46828(v34, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  sub_1B4975024(v16, &qword_1EB8A8748, &qword_1B4D22428);
  if ((v36 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_12:
  v37 = v32;
  v38 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  v39 = v37;
  v40 = v37 + v38;
  v41 = v70;
  sub_1B4974FBC(v40, v70, &qword_1EB8A8758, &qword_1B4D22430);
  v42 = OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__result;
  swift_beginAccess();
  v43 = *(v69 + 48);
  v44 = v65;
  sub_1B4974FBC(v41, v65, &qword_1EB8A8758, &qword_1B4D22430);
  sub_1B4974FBC(v28 + v42, v44 + v43, &qword_1EB8A8758, &qword_1B4D22430);
  v45 = v72;
  v46 = *(v71 + 48);
  if (v46(v44, 1, v72) == 1)
  {
    sub_1B4975024(v41, &qword_1EB8A8758, &qword_1B4D22430);
    v47 = v46(v44 + v43, 1, v45);
    v48 = v39;
    if (v47 == 1)
    {
      sub_1B4975024(v44, &qword_1EB8A8758, &qword_1B4D22430);
      goto LABEL_21;
    }

LABEL_17:
    sub_1B4975024(v44, &qword_1EB8A8D80, &qword_1B4D25780);
    goto LABEL_18;
  }

  v49 = v67;
  sub_1B4974FBC(v44, v67, &qword_1EB8A8758, &qword_1B4D22430);
  if (v46(v44 + v43, 1, v45) == 1)
  {
    sub_1B4975024(v41, &qword_1EB8A8758, &qword_1B4D22430);
    sub_1B4A46828(v49, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    goto LABEL_17;
  }

  v51 = v44 + v43;
  v52 = v66;
  sub_1B4A3CCD0(v51, v66, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  v53 = _s19FitnessIntelligence06Apple_a1_B16_InferenceResultV2eeoiySbAC_ACtFZ_0(v49, v52);
  sub_1B4A46828(v52, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  sub_1B4975024(v41, &qword_1EB8A8758, &qword_1B4D22430);
  sub_1B4A46828(v49, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  sub_1B4975024(v44, &qword_1EB8A8758, &qword_1B4D22430);
  v48 = v39;
  if ((v53 & 1) == 0)
  {
    goto LABEL_18;
  }

LABEL_21:
  v54 = (v48 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
  swift_beginAccess();
  v55 = *v54;
  v56 = v54[1];
  v57 = (v73 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__feedbackID);
  swift_beginAccess();
  v58 = v57[1];
  if (v56)
  {
    if (!v58 || (v55 != *v57 || v56 != v58) && (sub_1B4D18DCC() & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  else if (v58)
  {
    goto LABEL_18;
  }

  v59 = (v48 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
  swift_beginAccess();
  v60 = *v59;
  v61 = v59[1];
  v62 = (v73 + OBJC_IVAR____TtCV19FitnessIntelligence42Apple_Fitness_Intelligence_InferenceRecordP33_33AB6A1C14BBB03993CB1A3D542982BE13_StorageClass__osBuildVersion);
  swift_beginAccess();
  v63 = v62[1];
  if (!v61)
  {

    if (!v63)
    {
      return 1;
    }

    return 0;
  }

  if (!v63)
  {
LABEL_18:

    return 0;
  }

  if (v60 != *v62 || v61 != v63)
  {
    v64 = sub_1B4D18DCC();

    return (v64 & 1) != 0;
  }

  return 1;
}

uint64_t sub_1B4A48140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = *(a1 + 20);
  if (qword_1EB8A6038 != -1)
  {
    swift_once();
  }

  *(a2 + v4) = qword_1EB8A8440;
}

uint64_t sub_1B4A48224(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D30, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRecord);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A482C4(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRecord);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A48330(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRecord);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A483CC()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8448);
  __swift_project_value_buffer(v0, qword_1EB8A8448);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D223F0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "adapter";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "prompt";
  *(v10 + 8) = 6;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "audioSynthesisSettings";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "osBuildVersion";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "telemetryIdentifier";
  *(v16 + 1) = 19;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "requestIdentifier";
  *(v18 + 1) = 17;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 8;
  *v20 = "streamAudio";
  *(v20 + 1) = 11;
  v20[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 4)
    {
      if (result == 1 || result == 2)
      {
LABEL_2:
        type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
        sub_1B4D17D0C();
      }

      else if (result == 3)
      {
        sub_1B4A48868(a1, v5, a2, a3);
      }
    }

    else if (result > 6)
    {
      if (result == 7)
      {
        goto LABEL_2;
      }

      if (result == 8)
      {
        type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
        sub_1B4D17C4C();
      }
    }

    else
    {
      if (result == 5)
      {
        goto LABEL_2;
      }

      sub_1B4A4891C(a1, v5, a2, a3);
    }
  }
}

uint64_t sub_1B4A48868(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4A5C360(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A4891C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  sub_1B4A5C360(&qword_1EB8A69C0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_InferenceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A498BC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
  if (!v4)
  {
    sub_1B4A4C32C(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest);
    sub_1B4A48AF8(v3, a1, a2, a3);
    sub_1B4A49BCC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, 5);
    sub_1B4A48D14(v3, a1, a2, a3);
    sub_1B4A48F30(v3, a1, a2, a3);
    sub_1B4A48FA8(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A48AF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A8778, &qword_1B4D22438);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8778, &qword_1B4D22438);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  sub_1B4A5C360(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
}

uint64_t sub_1B4A48D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8780, &qword_1B4D22440);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  sub_1B4974FBC(a1 + *(v12 + 36), v7, &qword_1EB8A8780, &qword_1B4D22440);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8780, &qword_1B4D22440);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  sub_1B4A5C360(&qword_1EB8A69C0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);
}

uint64_t sub_1B4A48F30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  if (*(a1 + *(result + 40) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A48FA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest(0);
  if (*(a1 + *(result + 44)) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4A4906C@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + v4);
  *v6 = 0;
  v6[1] = 0;
  v7 = a1[7];
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  (*(*(v8 - 8) + 56))(a2 + v7, 1, 1, v8);
  v9 = a1[9];
  v10 = (a2 + a1[8]);
  *v10 = 0;
  v10[1] = 0;
  v11 = type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
  result = (*(*(v11 - 8) + 56))(a2 + v9, 1, 1, v11);
  v13 = a1[11];
  v14 = (a2 + a1[10]);
  *v14 = 0;
  v14[1] = 0;
  *(a2 + v13) = 2;
  return result;
}

uint64_t sub_1B4A491A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D28, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A49240(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A492AC(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A8940, type metadata accessor for Apple_Fitness_Intelligence_InferenceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRequest);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A49348()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8460);
  __swift_project_value_buffer(v0, qword_1EB8A8460);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1CBF0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "utterance";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "settings";
  *(v10 + 8) = 8;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "bypassSiriAnnounce";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "requestIdentifier";
  *(v14 + 1) = 17;
  v14[16] = 2;
  v9();
  v15 = v5 + 4 * v2 + v1[14];
  *(v5 + 4 * v2) = 5;
  *v15 = "streamAudio";
  *(v15 + 8) = 11;
  *(v15 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 2)
    {
      if (result == 1)
      {
        goto LABEL_2;
      }

      if (result == 2)
      {
        sub_1B4A49724(a1, v5, a2, a3);
      }
    }

    else
    {
      switch(result)
      {
        case 3:
          goto LABEL_13;
        case 4:
LABEL_2:
          type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
          sub_1B4D17D0C();
          break;
        case 5:
LABEL_13:
          type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
          sub_1B4D17C4C();
          break;
      }
    }
  }
}

uint64_t sub_1B4A49724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4A5C360(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A498BC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);
  if (!v4)
  {
    sub_1B4A49938(v3, a1, a2, a3);
    sub_1B4A49B54(v3, a1, a2, a3);
    sub_1B4A49BCC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest, 4);
    sub_1B4A49C50(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A498BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 20) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A49938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8778, &qword_1B4D22438);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  sub_1B4974FBC(a1 + *(v12 + 24), v7, &qword_1EB8A8778, &qword_1B4D22438);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8778, &qword_1B4D22438);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  sub_1B4A5C360(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings);
}

uint64_t sub_1B4A49B54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  if (*(a1 + *(result + 28)) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4A49BCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 32) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A49C50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest(0);
  if (*(a1 + *(result + 36)) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4A49D14@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  result = (*(*(v6 - 8) + 56))(a2 + v4, 1, 1, v6);
  v8 = a1[8];
  *(a2 + a1[7]) = 2;
  v9 = (a2 + v8);
  *v9 = 0;
  v9[1] = 0;
  *(a2 + a1[9]) = 2;
  return result;
}

uint64_t sub_1B4A49DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D20, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A49E98(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8958, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A49F04(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A8958, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceRequest);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A49FA0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8478);
  __swift_project_value_buffer(v0, qword_1EB8A8478);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B4D223E0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "synthesisDuration";
  *(v4 + 8) = 17;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B4D17E7C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "announceDuration";
  *(v8 + 8) = 16;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "debugAudioURL";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "announceResult";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "announceSource";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "synthesizedAudioLength";
  *(v16 + 1) = 22;
  v16[16] = 2;
  v7();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    if (result > 3)
    {
      switch(result)
      {
        case 4:
          type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
          sub_1B4D17C4C();
          break;
        case 5:
          goto LABEL_16;
        case 6:
LABEL_2:
          type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
          sub_1B4D17CEC();
          break;
      }
    }

    else
    {
      if (result == 1 || result == 2)
      {
        goto LABEL_2;
      }

      if (result == 3)
      {
LABEL_16:
        type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
        sub_1B4D17D0C();
      }
    }
  }
}

uint64_t Apple_Fitness_Intelligence_AnnounceUtteranceResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A4A4E4(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1B4A4CD68(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    sub_1B4A4CDE4(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, 3);
    sub_1B4A4A55C(v3, a1, a2, a3);
    sub_1B4A4CE68(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
    sub_1B4A4A5D4(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A4A4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  if ((*(a1 + *(result + 20) + 8) & 1) == 0)
  {
    return sub_1B4D17E2C();
  }

  return result;
}

uint64_t sub_1B4A4A55C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  if (*(a1 + *(result + 32)) != 2)
  {
    return sub_1B4D17DCC();
  }

  return result;
}

uint64_t sub_1B4A4A5D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  if ((*(a1 + *(result + 40) + 8) & 1) == 0)
  {
    return sub_1B4D17E2C();
  }

  return result;
}

uint64_t sub_1B4A4A698@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4D17BBC();
  v5 = a1[6];
  v6 = a2 + a1[5];
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a2 + v5;
  *v7 = 0;
  *(v7 + 8) = 1;
  v8 = a1[8];
  v9 = (a2 + a1[7]);
  *v9 = 0;
  v9[1] = 0;
  *(a2 + v8) = 2;
  v10 = a1[10];
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = a2 + v10;
  *v12 = 0;
  *(v12 + 8) = 1;
  return result;
}

uint64_t sub_1B4A4A758(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D18, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4A7F8(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4A864(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4A900()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8490);
  __swift_project_value_buffer(v0, qword_1EB8A8490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "voice";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "userSelected";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "downloadStatus";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "downloadProgress";
  *(v14 + 1) = 16;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result > 2)
      {
        if (result == 3)
        {
          sub_1B4A5C3A8();
          sub_1B4D17C6C();
        }

        else if (result == 4)
        {
          sub_1B4A4AD2C(a1, v5, a2, a3);
        }
      }

      else if (result == 1)
      {
        sub_1B4A4AC78(a1, v5, a2, a3);
      }

      else if (result == 2)
      {
        sub_1B4D17C5C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4A4AC78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A4AD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  sub_1B4A5C360(&qword_1EB8A8980, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A4AEF0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3 == 1)
    {
      sub_1B4D17DCC();
    }

    if (*(v3 + 8))
    {
      sub_1B4A5C3A8();
      sub_1B4D17DDC();
    }

    sub_1B4A4B10C(v3, a1, a2, a3);
    type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A4AEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
}

uint64_t sub_1B4A4B10C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8788, &qword_1B4D22448);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset(0);
  sub_1B4974FBC(a1 + *(v12 + 32), v7, &qword_1EB8A8788, &qword_1B4D22448);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8788, &qword_1B4D22448);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  sub_1B4A5C360(&qword_1EB8A8980, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);
}

uint64_t sub_1B4A4B374@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  sub_1B4D17BBC();
  v4 = *(a1 + 28);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v6 = *(a1 + 32);
  v7 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a2 + v6, 1, 1, v7);
}

uint64_t sub_1B4A4B4C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D10, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4B560(uint64_t a1)
{
  v2 = sub_1B4A5C360(qword_1EDC3B640, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4B5CC(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(qword_1EDC3B640, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4B64C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A84A8);
  __swift_project_value_buffer(v0, qword_1EB8A84A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNAVAILABLE";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "DOWNLOADING";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 2;
  *v11 = "DOWNLOADED";
  *(v11 + 8) = 10;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A4B8A4()
{
  result = MEMORY[0x1B8C7C620](0xD000000000000011, 0x80000001B4D60440);
  qword_1EB8A84C0 = 0xD000000000000033;
  *algn_1EB8A84C8 = 0x80000001B4D5FBD0;
  return result;
}

uint64_t sub_1B4A4B944()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A84D0);
  __swift_project_value_buffer(v0, qword_1EB8A84D0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "bytesWriten";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "bytesExpected";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      sub_1B4D17CCC();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (result = sub_1B4D17E0C(), !v4))
  {
    if (!v3[1] || (result = sub_1B4D17E0C(), !v4))
    {
      type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t static Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress(0);
  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A4BDAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D08, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4BE4C(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A8980, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4BEB8(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A8980, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceAsset.DownloadProgress);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4BF34(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  sub_1B4D17BCC();
  sub_1B4A5C360(&qword_1EB8A7CA8, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1B4D1816C() & 1;
}

uint64_t sub_1B4A4C000()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A84E8);
  __swift_project_value_buffer(v0, qword_1EB8A84E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "name";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "language";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoice.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    if (result == 1 || result == 2)
    {
      type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
      sub_1B4D17D0C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoice.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A498BC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  if (!v4)
  {
    sub_1B4A4C32C(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A4C32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 24) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A4C3F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1B4D17BBC();
  v5 = *(a1 + 24);
  v6 = (a2 + *(a1 + 20));
  *v6 = 0;
  v6[1] = 0;
  v7 = (a2 + v5);
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1B4A4C47C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8D00, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4C51C(uint64_t a1)
{
  v2 = sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4C588(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4C624()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8500);
  __swift_project_value_buffer(v0, qword_1EB8A8500);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1B4D223F0;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "text";
  *(v4 + 8) = 4;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B4D17E7C();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "duration";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "debugAudioURL";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "systemVersion";
  *(v12 + 1) = 13;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "modelVersion";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "AnnounceUtteranceResult";
  *(v16 + 1) = 23;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "voice";
  *(v18 + 1) = 5;
  v18[16] = 2;
  v7();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    if (result <= 3)
    {
      switch(result)
      {
        case 1:
          goto LABEL_2;
        case 2:
          type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
          sub_1B4D17CEC();
          break;
        case 3:
LABEL_2:
          type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
          sub_1B4D17D0C();
          break;
      }
    }

    else
    {
      if (result <= 5)
      {
        goto LABEL_2;
      }

      if (result == 6)
      {
        sub_1B4A4CAAC(a1, v5, a2, a3);
      }

      else if (result == 7)
      {
        sub_1B4A4CB60(a1, v5, a2, a3);
      }
    }
  }
}

uint64_t sub_1B4A4CAAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  sub_1B4A5C360(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A4CB60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_InferenceResult.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A498BC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
  if (!v4)
  {
    sub_1B4A4CD68(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    sub_1B4A4CDE4(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, 3);
    sub_1B4A49BCC(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, 4);
    sub_1B4A4CE68(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult);
    sub_1B4A4CEE4(v3, a1, a2, a3);
    sub_1B4A4D100(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A4CD68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if ((*(a1 + *(result + 24) + 8) & 1) == 0)
  {
    return sub_1B4D17E2C();
  }

  return result;
}

uint64_t sub_1B4A4CDE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6)
{
  result = a5(0);
  if (*(a1 + *(result + 28) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A4CE68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  if (*(a1 + *(result + 36) + 8))
  {
    return sub_1B4D17E3C();
  }

  return result;
}

uint64_t sub_1B4A4CEE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(a1 + *(v12 + 40), v7, &qword_1EB8A6940, &unk_1B4D22400);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6940, &unk_1B4D22400);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  sub_1B4A5C360(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
}

uint64_t sub_1B4A4D100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceResult(0);
  sub_1B4974FBC(a1 + *(v12 + 44), v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
}

uint64_t sub_1B4A4D368@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = a1[6];
  v5 = (a2 + a1[5]);
  *v5 = 0;
  v5[1] = 0;
  v6 = a2 + v4;
  *v6 = 0;
  *(v6 + 8) = 1;
  v7 = a1[8];
  v8 = (a2 + a1[7]);
  *v8 = 0;
  v8[1] = 0;
  v9 = (a2 + v7);
  *v9 = 0;
  v9[1] = 0;
  v10 = a1[10];
  v11 = (a2 + a1[9]);
  *v11 = 0;
  v11[1] = 0;
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  (*(*(v12 - 8) + 56))(a2 + v10, 1, 1, v12);
  v13 = a1[11];
  v14 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v15 = *(*(v14 - 8) + 56);

  return v15(a2 + v13, 1, 1, v14);
}

uint64_t sub_1B4A4D4B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CF8, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceResult);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4D550(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceResult);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4D5BC(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A6958, type metadata accessor for Apple_Fitness_Intelligence_InferenceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceResult);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4D658()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8518);
  __swift_project_value_buffer(v0, qword_1EB8A8518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "record";
  *(v6 + 8) = 6;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "sentiment";
  *(v10 + 8) = 9;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "userDescription";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "utteranceResult";
  *(v14 + 1) = 15;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
        sub_1B4D17D0C();
      }

      else if (result == 4)
      {
        sub_1B4A4DA78(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1B4A4D9C4(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1B4D17D1C();
    }
  }

  return result;
}

uint64_t sub_1B4A4D9C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  sub_1B4A5C360(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRecord);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A4DA78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  sub_1B4A5C360(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_InferenceFeedback.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A4DC24(v3, a1, a2, a3);
  if (!v4)
  {
    v9 = v3[1];
    v10 = HIBYTE(v9) & 0xF;
    if ((v9 & 0x2000000000000000) == 0)
    {
      v10 = *v3 & 0xFFFFFFFFFFFFLL;
    }

    if (v10)
    {
      sub_1B4D17E3C();
    }

    sub_1B4A4CDE4(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback, 3);
    sub_1B4A4DE40(v3, a1, a2, a3);
    type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A4DC24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A83B8, &qword_1B4D22420);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4974FBC(a1 + *(v12 + 24), v7, &qword_1EB8A83B8, &qword_1B4D22420);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A83B8, &qword_1B4D22420);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
  sub_1B4A5C360(&qword_1EB8A83E0, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceRecord);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord);
}

uint64_t sub_1B4A4DE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6940, &unk_1B4D22400);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback(0);
  sub_1B4974FBC(a1 + *(v12 + 32), v7, &qword_1EB8A6940, &unk_1B4D22400);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6940, &unk_1B4D22400);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  sub_1B4A5C360(&qword_1EB8A6970, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult, &protocol conformance descriptor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult);
}

uint64_t sub_1B4A4E0A8@<X0>(int *a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  *(a2 + 1) = 0xE000000000000000;
  sub_1B4D17BBC();
  v4 = a1[6];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_InferenceRecord(0);
  (*(*(v5 - 8) + 56))(&a2[v4], 1, 1, v5);
  v6 = a1[7];
  v7 = a1[8];
  v8 = &a2[v6];
  *v8 = 0;
  *(v8 + 1) = 0;
  v9 = type metadata accessor for Apple_Fitness_Intelligence_AnnounceUtteranceResult(0);
  v10 = *(*(v9 - 8) + 56);

  return v10(&a2[v7], 1, 1, v9);
}

uint64_t sub_1B4A4E1F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CF0, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceFeedback);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4E294(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A83C8, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceFeedback);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4E300(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A83C8, type metadata accessor for Apple_Fitness_Intelligence_InferenceFeedback, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceFeedback);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4E39C()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8530);
  __swift_project_value_buffer(v0, qword_1EB8A8530);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reason";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_InferenceAvailability.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4D17C2C();
  if (!v3)
  {
    while ((v5 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1B4A5C3FC();
        sub_1B4D17C6C();
      }

      else if (result == 2)
      {
        type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
        sub_1B4D17D0C();
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t Apple_Fitness_Intelligence_InferenceAvailability.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1B4A5C3FC(), result = sub_1B4D17DDC(), !v4))
  {
    result = sub_1B4A4C32C(v3, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability);
    if (!v4)
    {
      type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A4E784@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  result = sub_1B4D17BBC();
  v5 = (a2 + *(a1 + 24));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1B4A4E818(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CE8, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceAvailability);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4E8B8(uint64_t a1)
{
  v2 = sub_1B4A5C360(qword_1EDC3BD10, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceAvailability);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4E924(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(qword_1EDC3BD10, type metadata accessor for Apple_Fitness_Intelligence_InferenceAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceAvailability);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4E9A4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8548);
  __swift_project_value_buffer(v0, qword_1EB8A8548);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "AVAILABLE";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "UNAVAILABLE";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A4EBD0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8560);
  __swift_project_value_buffer(v0, qword_1EB8A8560);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "value";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "voice";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  result = sub_1B4D17C2C();
  if (!v4)
  {
    while ((v10 & 1) == 0)
    {
      if (result == 1)
      {
        sub_1B4A5C450();
        sub_1B4D17C6C();
      }

      else if (result == 2)
      {
        sub_1B4A4EE7C(a1, v5, a2, a3);
      }

      result = sub_1B4D17C2C();
    }
  }

  return result;
}

uint64_t sub_1B4A4EE7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*v3 || (sub_1B4A5C450(), result = sub_1B4D17DDC(), !v4))
  {
    result = sub_1B4A4EFFC(v3, a1, a2, a3);
    if (!v4)
    {
      type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A4EFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A6938, &qword_1B4D1ACF8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  sub_1B4974FBC(a1 + *(v12 + 24), v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A6938, &qword_1B4D1ACF8);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4A5C360(qword_1EDC3C320, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice);
}

uint64_t sub_1B4A4F264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 1;
  sub_1B4D17BBC();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoice(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(a2 + v4, 1, 1, v5);
}

uint64_t sub_1B4A4F33C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CE0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4F3DC(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4F448(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4F4C8()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8578);
  __swift_project_value_buffer(v0, qword_1EB8A8578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "USER_SELECTED";
  *(v6 + 8) = 13;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CUSTOM";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t sub_1B4A4F6F4()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A8590);
  __swift_project_value_buffer(v0, qword_1EB8A8590);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1AA70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "voiceSelection";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "intensity";
  *(v10 + 1) = 9;
  v10[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisSettings.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1B4A4F970(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1B4D17CAC();
    }
  }

  return result;
}

uint64_t sub_1B4A4F970(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  sub_1B4A5C360(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_AudioSynthesisSettings.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A4FAC0(v3, a1, a2, a3);
  if (!v4)
  {
    if (*v3)
    {
      sub_1B4D17DFC();
    }

    type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A4FAC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8790, &qword_1B4D22450);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings(0);
  sub_1B4974FBC(a1 + *(v12 + 24), v7, &qword_1EB8A8790, &qword_1B4D22450);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8790, &qword_1B4D22450);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  sub_1B4A5C360(&qword_1EB8A89B8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection);
}

uint64_t sub_1B4A4FD28@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  *a2 = 0;
  sub_1B4D17BBC();
  v4 = *(a1 + 24);
  v5 = type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisVoiceSelection(0);
  v6 = *(*(v5 - 8) + 56);

  return v6(&a2[v4], 1, 1, v5);
}

uint64_t sub_1B4A4FDF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CD8, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A4FE98(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A4FF04(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A89D0, type metadata accessor for Apple_Fitness_Intelligence_AudioSynthesisSettings, &protocol conformance descriptor for Apple_Fitness_Intelligence_AudioSynthesisSettings);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A4FFA0()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A85A8);
  __swift_project_value_buffer(v0, qword_1EB8A85A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1BE00;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "featureIdentifier";
  *(v6 + 8) = 17;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "deviceIdentifier";
  *(v10 + 1) = 16;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "momentIdentifier";
  *(v11 + 8) = 16;
  *(v11 + 16) = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_InferenceTelemetryIdentifier.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
        sub_1B4D17D0C();
        break;
      case 1:
LABEL_8:
        sub_1B4D17D1C();
        break;
    }
  }
}

uint64_t Apple_Fitness_Intelligence_InferenceTelemetryIdentifier.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v9 = v4[1];
  v10 = HIBYTE(v9) & 0xF;
  if ((v9 & 0x2000000000000000) == 0)
  {
    v10 = *v4 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10 || (result = sub_1B4D17E3C(), !v5))
  {
    result = sub_1B4A4CDE4(v4, a1, a2, a3, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier, 2);
    if (!v5)
    {
      v12 = v4[3];
      v13 = HIBYTE(v12) & 0xF;
      if ((v12 & 0x2000000000000000) == 0)
      {
        v13 = v4[2] & 0xFFFFFFFFFFFFLL;
      }

      if (v13)
      {
        sub_1B4D17E3C();
      }

      type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier(0);
      return sub_1B4D17BAC();
    }
  }

  return result;
}

uint64_t sub_1B4A503CC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = 0;
  a2[3] = 0xE000000000000000;
  result = sub_1B4D17BBC();
  v5 = (a2 + *(a1 + 28));
  *v5 = 0;
  v5[1] = 0;
  return result;
}

uint64_t sub_1B4A50460(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B4A5C360(&qword_1EB8A8CD0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B4A50500(uint64_t a1)
{
  v2 = sub_1B4A5C360(&qword_1EB8A69C0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B4A5056C(uint64_t a1, uint64_t a2)
{
  sub_1B4A5C360(&qword_1EB8A69C0, type metadata accessor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier, &protocol conformance descriptor for Apple_Fitness_Intelligence_InferenceTelemetryIdentifier);

  return sub_1B4D17D9C();
}

uint64_t sub_1B4A50608()
{
  v0 = sub_1B4D17E9C();
  __swift_allocate_value_buffer(v0, qword_1EB8A85C0);
  __swift_project_value_buffer(v0, qword_1EB8A85C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D38, &unk_1B4D29F10);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8D40, &qword_1B4D25740) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B4D1B2D0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "generativeModels";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B4D17E7C();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "siri";
  *(v10 + 8) = 4;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "selectedVoiceAsset";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "locale";
  *(v14 + 1) = 6;
  v14[16] = 2;
  v9();
  return sub_1B4D17E8C();
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1B4D17C2C();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result > 2)
    {
      if (result == 3)
      {
        sub_1B4A50AC0(a1, v5, a2, a3);
      }

      else if (result == 4)
      {
        sub_1B4A50B74(a1, v5, a2, a3);
      }
    }

    else if (result == 1)
    {
      sub_1B4A50958(a1, v5, a2, a3);
    }

    else if (result == 2)
    {
      sub_1B4A50A0C(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1B4A50958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A50A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A50AC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return sub_1B4D17D4C();
}

uint64_t sub_1B4A50B74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  return sub_1B4D17D4C();
}

uint64_t Apple_Fitness_Intelligence_DeviceInferenceAvailability.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4A50CC8(v3, a1, a2, a3);
  if (!v4)
  {
    sub_1B4A50EE4(v3, a1, a2, a3);
    sub_1B4A51100(v3, a1, a2, a3);
    sub_1B4A5131C(v3, a1, a2, a3);
    return sub_1B4D17BAC();
  }

  return result;
}

uint64_t sub_1B4A50CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v12 + 20), v7, &qword_1EB8A8798, &qword_1B4D22458);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8798, &qword_1B4D22458);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
}

uint64_t sub_1B4A50EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v12 + 24), v7, &qword_1EB8A8798, &qword_1B4D22458);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8798, &qword_1B4D22458);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
}

uint64_t sub_1B4A51100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v12 + 28), v7, &qword_1EB8A8798, &qword_1B4D22458);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8798, &qword_1B4D22458);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
}

uint64_t sub_1B4A5131C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14[3] = a4;
  v14[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8A8798, &qword_1B4D22458);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v14 - v6;
  v8 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability(0);
  sub_1B4974FBC(a1 + *(v12 + 32), v7, &qword_1EB8A8798, &qword_1B4D22458);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    return sub_1B4975024(v7, &qword_1EB8A8798, &qword_1B4D22458);
  }

  sub_1B4A3CCD0(v7, v11, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4A5C360(&qword_1EDC3B2B8, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability, &protocol conformance descriptor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
  sub_1B4D17E6C();
  return sub_1B4A46828(v11, type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability);
}

uint64_t sub_1B4A51584@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1B4D17BBC();
  v4 = a1[5];
  v5 = type metadata accessor for Apple_Fitness_Intelligence_DeviceInferenceAvailability.ComponentAvailability(0);
  v8 = *(*(v5 - 8) + 56);
  (v8)((v5 - 8), a2 + v4, 1, 1, v5);
  v8(a2 + a1[6], 1, 1, v5);
  v8(a2 + a1[7], 1, 1, v5);
  v6 = a2 + a1[8];

  return (v8)(v6, 1, 1, v5);
}