void sub_1D670D09C(unint64_t a1)
{
  if (a1 >> 60 == 9)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
    v1 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
    v4 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
    v3 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x28);
    if (v3)
    {
      v5 = qword_1EDF2F8C8;

      if (v5 != -1)
      {
        swift_once();
      }

      v6 = sub_1D619EFB4(v4, v3);
      if (!v6)
      {

        type metadata accessor for FormatDerivedDataError(0);
        sub_1D670E8B0(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        *v7 = v4;
        v7[1] = v3;
LABEL_13:
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return;
      }
    }

    else
    {
      v8 = objc_opt_self();

      v6 = [v8 mainBundle];
      if (!v6)
      {

        type metadata accessor for FormatDerivedDataError(0);
        sub_1D670E8B0(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        goto LABEL_13;
      }
    }

    v9 = v6;
    v10 = sub_1D726203C();
    v11 = [objc_opt_self() imageNamed:v10 inBundle:v9 compatibleWithTraitCollection:0];

    if (v11)
    {
    }

    else
    {
      type metadata accessor for FormatDerivedDataError(0);
      sub_1D670E8B0(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      if (v3)
      {
        *v12 = v4;
        v12[1] = v3;
        v12[2] = v2;
        v12[3] = v1;
      }

      else
      {
        *v12 = v2;
        v12[1] = v1;
      }

      swift_storeEnumTagMultiPayload();
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1D670D3CC(unint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5, __int128 *a6)
{
  v84 = a6;
  v85 = a5;
  sub_1D670E848(0, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8, v10);
  v12 = &v73 - v11;
  if (a1 >> 60 != 10)
  {
LABEL_23:
    __break(1u);
    return;
  }

  v13 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x10);
  v14 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x18);
  v15 = *((a1 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
  v16 = *(a2 + 16) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__types;
  swift_beginAccess();
  v17 = *(v16 + 8);
  v18 = *(v17 + 16);

  if (!v18)
  {
    goto LABEL_14;
  }

  v87 = v13;
  v19 = sub_1D5B69D90(v13, v14);
  if ((v21 & 1) == 0)
  {

LABEL_13:

    v13 = v87;
LABEL_14:
    type metadata accessor for FormatLayoutError(0);
    sub_1D670E8B0(&qword_1EDF2F560, type metadata accessor for FormatLayoutError, &unk_1D73A3BC0);
    swift_allocError();
    *v47 = v13;
    v47[1] = v14;
LABEL_15:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return;
  }

  v86 = v15;
  v74 = a2;
  v75 = v14;
  v22 = *(v17 + 56) + *(v9 + 72) * v19;
  v77 = sub_1D5B4C700;
  v76 = type metadata accessor for FormatObject;
  sub_1D670E3F8(v22, v12, &qword_1EDF33890, sub_1D5B4C700, &type metadata for FormatType, type metadata accessor for FormatObject, v20);
  v23 = *(v12 + 1);
  v24 = *(v12 + 4);
  v78 = *(v12 + 3);
  v79 = v23;
  v26 = *(v12 + 5);
  v82 = *(v12 + 6);
  v25 = v82;
  v83 = v24;
  v27 = *(v12 + 8);
  v80 = *(v12 + 7);
  v81 = v27;
  v28 = *(v12 + 9);
  v29 = v12[80];

  v30 = v24;
  v31 = v25;
  v32 = v80;
  v33 = v81;
  sub_1D618EC0C(v30, v26, v31, v80, v81, v28, v29);
  sub_1D670E5A0(v12, &qword_1EDF33890, v77, &type metadata for FormatType, v76, v34);

  v36 = v82;
  v35 = v83;
  sub_1D618EC0C(v83, v26, v82, v32, v33, v28, v29);

  v79 = v26;
  sub_1D60CF6F4(v35, v26, v36, v32, v33, v28, v29);
  if (v29 >> 6 != 1)
  {
    sub_1D60CF6F4(v83, v79, v82, v32, v33, v28, v29);
    v14 = v75;
    goto LABEL_13;
  }

  LODWORD(v77) = v29;
  v78 = v28;
  v38 = v86;
  v39 = *(v86 + 16);
  v40 = v83;
  if (v39)
  {
    v41 = 0;
    v42 = (v86 + 40);
    while (v41 < *(v38 + 16))
    {
      v44 = *(v42 - 1);
      v43 = *v42;
      *&v94 = v44;
      *(&v94 + 1) = v43;
      MEMORY[0x1EEE9AC00](v38, v37);
      *(&v73 - 2) = &v94;

      v45 = v88;
      if ((sub_1D5BD0418(sub_1D5BD0538, (&v73 - 4), v40) & 1) == 0)
      {

        type metadata accessor for FormatDerivedDataError(0);
        sub_1D670E8B0(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
        swift_allocError();
        LOBYTE(v94) = v77 & 1;
        *v57 = v44;
        *(v57 + 8) = v43;
        v58 = v79;
        *(v57 + 16) = v40;
        *(v57 + 24) = v58;
        v59 = v80;
        v60 = v81;
        *(v57 + 32) = v82;
        *(v57 + 40) = v59;
        v61 = v78;
        *(v57 + 48) = v60;
        *(v57 + 56) = v61;
        *(v57 + 64) = v94;
        goto LABEL_15;
      }

      v88 = v45;

      ++v41;
      v42 += 2;
      v38 = v86;
      v46 = v87;
      if (v39 == v41)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_23;
  }

  v46 = v87;
LABEL_17:

  v98 = v46;
  v99 = v75;
  v100 = 5;
  v48 = v74;
  v49 = v88;
  sub_1D670E148(&v98, v74, &v94);
  if (v49)
  {
    sub_1D5F7C628(v98, v99, v100);
    v51 = v82;
    v50 = v83;
    v52 = v79;
    v53 = v80;
    v54 = v81;
    v55 = v78;
    v56 = v77;
  }

  else
  {
    v62 = v77;
    v101 = v94;
    v102 = v95;
    v103 = v96;
    sub_1D5F7C628(v98, v99, v100);
    v63 = v84[1];
    v94 = *v84;
    v95 = v63;
    v64 = v84[3];
    v66 = *v84;
    v65 = v84[1];
    v96 = v84[2];
    v97 = v64;
    v90 = v66;
    v91 = v65;
    v67 = v84[3];
    v92 = v84[2];
    v93 = v67;
    sub_1D670E544(&v94, v89);
    sub_1D6C50304(&v101, &v90, v48);
    v68 = v78;
    v70 = v80;
    v69 = v81;
    v89[0] = v90;
    v89[1] = v91;
    v89[2] = v92;
    v89[3] = v93;
    sub_1D670E6B8(v89);
    v109 = v101;
    sub_1D670E658(&v109, sub_1D5B81B04);
    v108 = *(&v101 + 1);
    sub_1D670E658(&v108, sub_1D5B81B04);
    v107 = v102;
    sub_1D670E5A0(&v107, &qword_1EC883D60, sub_1D6007784, &type metadata for FormatDerivedDataFileReference, MEMORY[0x1E69E64E8], v71);
    v106 = *(&v102 + 1);
    v72 = MEMORY[0x1E69E62F8];
    sub_1D670E5FC(&v106, &qword_1EC883D68, &type metadata for FormatDerivedDataResultBlockReference, MEMORY[0x1E69E62F8]);
    v105 = v103;
    sub_1D670E658(&v105, sub_1D6107594);
    v104 = *(&v103 + 1);
    sub_1D670E5FC(&v104, &qword_1EC883D78, &type metadata for FormatDerivedDataResultItemReference, v72);
    v51 = v82;
    v50 = v83;
    v52 = v79;
    v53 = v70;
    v54 = v69;
    v55 = v68;
    v56 = v62;
  }

  sub_1D60CF6F4(v50, v52, v51, v53, v54, v55, v56);
}

double sub_1D670DBE0(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a4 + 5);
  v79 = *(a4 + 4);
  v7 = a4[1];
  v77 = *a4;
  v78 = v7;
  v8 = a4[3];
  v76 = v8;
  v9 = *(a3 + 16);
  if (v9)
  {
    v11 = v9 - 1;
    v12 = (a3 + 56);
    v42 = v6;
    while (1)
    {
      v14 = *(v12 - 3);
      v13 = *(v12 - 2);
      v15 = *(v12 - 8);
      v16 = v12[3];
      v73 = v12[2];
      v74 = v16;
      v17 = v12[1];
      v71 = *v12;
      v72 = v17;
      v18 = *(v6 + 16);

      v44 = v11;
      if (!v18)
      {
        break;
      }

      sub_1D670E544(&v71, &v55);
      v19 = sub_1D5B69D90(v14, v13);
      if ((v20 & 1) == 0)
      {
        goto LABEL_10;
      }

      v21 = (*(v6 + 56) + 72 * v19);
      v22 = v21[3];
      v23 = v21[4];
      v25 = v21[5];
      v24 = v21[6];
      v26 = v21[7];
      v27 = v21[8];

      *v46 = v71;
      *&v46[16] = v72;
      *&v46[32] = v73;
      *&v46[48] = v74;
      v67 = v77;
      v68 = v78;
      *&v69 = v79;
      *(&v69 + 1) = v42;
      v70 = v76;
      v28 = v80;
      sub_1D6AECFF0(&v67, a5, &v55);
      v80 = v28;
      if (v28)
      {

        v63 = *v46;
        v64 = *&v46[16];
        v65 = *&v46[32];
        v66 = *&v46[48];
        sub_1D670E6B8(&v63);
        return *&v8;
      }

      v75[0] = v22;
      v75[1] = v23;
      v75[2] = v25;
      v75[3] = v24;
      v75[4] = v26;
      v75[5] = v27;
      v63 = *v46;
      v64 = *&v46[16];
      v65 = *&v46[32];
      v66 = *&v46[48];
      sub_1D670E6B8(&v63);
      v59 = v55;
      v60 = v56;
      v61 = v57;
      v62 = v58[0];
      v29 = v80;
      sub_1D6C50304(v75, &v59, a5);
      v80 = v29;
      if (v29)
      {

        v51 = v59;
        v52 = v60;
        v53 = v61;
        v54 = v62;
        sub_1D670E6B8(&v51);
        return *&v8;
      }

      v51 = v59;
      v52 = v60;
      v53 = v61;
      v54 = v62;
      sub_1D670E6B8(&v51);
      v47 = v77;
      v48 = v78;
      *&v49 = v79;
      *(&v49 + 1) = v42;
      v50 = v76;
      v30 = v80;
      sub_1D670DBE0(a1, a2, v24, &v47, a5, a6);
      v80 = v30;
      if (v30)
      {

        return *&v8;
      }

LABEL_16:
      v6 = v42;
      if (!v44)
      {
        return *&v8;
      }

      v11 = v44 - 1;
      v12 = (v12 + 88);
    }

    sub_1D670E544(&v71, &v55);
LABEL_10:
    v63 = v71;
    v64 = v72;
    v65 = v73;
    v66 = v74;
    v59 = v77;
    v60 = v78;
    *&v61 = v79;
    *(&v61 + 1) = v6;
    v62 = v76;
    v31 = v80;
    sub_1D6AECFF0(&v59, a5, &v67);
    v80 = v31;
    if (v31)
    {

      v55 = v63;
      v56 = v64;
      v57 = v65;
      v58[0] = v66;
      sub_1D670E6B8(&v55);
      return *&v8;
    }

    v47 = v63;
    v48 = v64;
    v49 = v65;
    v50 = v66;
    sub_1D670E6B8(&v47);
    v51 = v67;
    v52 = v68;
    v53 = v69;
    v54 = v70;
    *&v46[7] = v67;
    *&v46[23] = v68;
    *&v46[39] = v69;
    *&v46[55] = v70;
    *(v58 + 15) = *(&v70 + 1);
    v57 = *&v46[32];
    v58[0] = *&v46[48];
    v55 = *v46;
    v56 = *&v46[16];
    v32 = *(a1 + 24);
    sub_1D670E544(&v51, v45);
    v33 = a5;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v32 = sub_1D699246C(0, *(v32 + 2) + 1, 1, v32);
    }

    v35 = *(v32 + 2);
    v34 = *(v32 + 3);
    if (v35 >= v34 >> 1)
    {
      v32 = sub_1D699246C((v34 > 1), v35 + 1, 1, v32);
    }

    sub_1D670E6B8(&v51);
    *(v32 + 2) = v35 + 1;
    v36 = &v32[88 * v35];
    *(v36 + 4) = v14;
    *(v36 + 5) = v13;
    v36[48] = v15;
    v8 = v56;
    v37 = v57;
    v38 = v58[0];
    *(v36 + 14) = *(v58 + 15);
    *(v36 + 97) = v38;
    *(v36 + 81) = v37;
    *(v36 + 65) = v8;
    *&v8 = v55;
    *(v36 + 49) = v55;
    *(a1 + 24) = v32;
    a5 = v33;
    goto LABEL_16;
  }

  return *&v8;
}

void sub_1D670E148(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *a1;
  v6 = *(a1 + 8);
  v8 = *(a1 + 16);
  swift_beginAccess();
  v9 = *(a2 + 40);
  if (*(v9 + 16) && (v10 = sub_1D6D62FB0(v7, v6, v8), (v11 & 1) != 0))
  {
    v12 = (*(v9 + 56) + 48 * v10);
    v13 = *v12;
    v14 = v12[1];
    v15 = v12[2];
    v16 = v12[3];
    v17 = v12[4];
    v18 = v12[5];
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v19 = *(a2 + 24);
    if (!*(v19 + 16) || (v20 = sub_1D6D62FB0(v7, v6, v8), (v21 & 1) == 0))
    {
      type metadata accessor for FormatDerivedDataError(0);
      sub_1D670E8B0(&qword_1EC892A70, type metadata accessor for FormatDerivedDataError, &unk_1D7331324);
      swift_allocError();
      *v23 = v7;
      *(v23 + 8) = v6;
      *(v23 + 16) = v8;
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_1D5F7D230(v7, v6, v8);
      return;
    }

    v22 = *(*(v19 + 56) + 8 * v20);

    sub_1D70E2F38(a2, v22, &v31);
    if (v3)
    {

      return;
    }

    v30 = v31;
    v28 = v33;
    v29 = v32;
    v17 = v34;
    v18 = v35;
    swift_beginAccess();
    sub_1D5F7D230(v7, v6, v8);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(a2 + 40);
    *(a2 + 40) = 0x8000000000000000;
    sub_1D6D79C14(&v31, v7, v6, v8, isUniquelyReferenced_nonNull_native);
    v25 = v7;
    v16 = v28;
    v26 = v6;
    v15 = v29;
    v13 = v30.i64[0];
    v27 = v8;
    v14 = v30.i64[1];
    sub_1D5F7C628(v25, v26, v27);
    *(a2 + 40) = v36;
    swift_endAccess();
  }

  *a3 = v13;
  a3[1] = v14;
  a3[2] = v15;
  a3[3] = v16;
  a3[4] = v17;
  a3[5] = v18;
}

uint64_t sub_1D670E3F8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(void), uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t), __n128 a7)
{
  sub_1D670E848(0, a3, a4, a5, a6);
  (*(*(v9 - 8) + 16))(a2, a1, v9);
  return a2;
}

uint64_t sub_1D670E46C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_1D5B497B0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_1D670E4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D670E5A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t), __n128 a6)
{
  sub_1D670E848(0, a2, a3, a4, a5);
  (*(*(v7 - 8) + 8))(a1, v7);
  return a1;
}

uint64_t sub_1D670E5FC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  sub_1D5B497B0(0, a2, a3, a4);
  (*(*(v5 - 8) + 8))(a1, v5);
  return a1;
}

uint64_t sub_1D670E658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D670E70C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatDerivedDataOptionReferenceResolution(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1D670E770(uint64_t a1, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if (((a6 >> 41) & 0x7F) != 0x7F)
  {
    sub_1D67084F4(a1, a2, a3, a4, a5, a6);
  }
}

void sub_1D670E784(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    sub_1D6007850(a1, a2, a3);
  }
}

void sub_1D670E848(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_1D670E8B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t FeedGroupSlots.absoluteDescription<A>(cursor:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v21 = 0x28746F6C73;
    v4 = *(a2 + 16);
    if (v4)
    {
      v19 = MEMORY[0x1E69E7CC0];
      sub_1D5BFC364(0, v4, 0);
      v5 = v19;
      v6 = a2 + 32;
      sub_1D5E4049C();
      do
      {
        v6 += 8;
        v7 = sub_1D7263ADC();
        v20 = v5;
        v10 = *(v5 + 16);
        v9 = *(v5 + 24);
        if (v10 >= v9 >> 1)
        {
          v12 = v7;
          v13 = v8;
          sub_1D5BFC364((v9 > 1), v10 + 1, 1);
          v8 = v13;
          v7 = v12;
          v5 = v20;
        }

        *(v5 + 16) = v10 + 1;
        v11 = v5 + 16 * v10;
        *(v11 + 32) = v7;
        *(v11 + 40) = v8;
        --v4;
      }

      while (v4);
    }

    sub_1D5B49714(0, &qword_1EDF43BA0, MEMORY[0x1E69E6158]);
    sub_1D5BB0AB8();
    v14 = sub_1D7261F3C();
    v16 = v15;

    MEMORY[0x1DA6F9910](v14, v16);
  }

  else
  {
    v21 = 0x286E65706FLL;
    FeedCursor.absoluteSlotIndex.getter(a1);
    v17 = sub_1D72644BC();
    MEMORY[0x1DA6F9910](v17);
  }

  MEMORY[0x1DA6F9910](11305, 0xE200000000000000);
  MEMORY[0x1DA6F9910](*(a1 + 16), *(a1 + 24));
  return v21;
}

uint64_t FeedGroupSlots.encode(to:)(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  if (a2)
  {
    v4[6] = a2;
    __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_1D5B49714(0, &unk_1EDF3C820, MEMORY[0x1E69E6530]);
    sub_1D670FAB4(&qword_1EDF04A68, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1D726476C();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void *sub_1D670EBF4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D670F96C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1D670EC20(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264B3C();
  if (v2)
  {
    v4[6] = v2;
    __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
    sub_1D5B49714(0, &unk_1EDF3C820, MEMORY[0x1E69E6530]);
    sub_1D670FAB4(&qword_1EDF04A68, MEMORY[0x1E69E6538], MEMORY[0x1E69E6300]);
    sub_1D726476C();
  }

  return __swift_destroy_boxed_opaque_existential_1(v4);
}

BOOL FeedGroupSlots.intersects(_:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    if (a1)
    {
      v3 = a1;

      v4 = sub_1D62DCBF4(a2);

      v5 = sub_1D62DCBF4(v3);

      LOBYTE(v3) = sub_1D670F7B0(v5, v4);

      return (v3 ^ 1) & 1;
    }

    return 0;
  }

  return !a1;
}

void sub_1D670EDB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v11 = v6 + 56;

      v12 = 0;
      v24 = v4;
      while (v9)
      {
        v13 = v9;
LABEL_19:
        v9 = (v13 - 1) & v13;
        if (*(v6 + 16))
        {
          v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
          v17 = *v15;
          v16 = v15[1];
          sub_1D7264A0C();

          sub_1D72621EC();
          v18 = sub_1D7264A5C();
          v19 = -1 << *(v6 + 32);
          v20 = v18 & ~v19;
          if ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            while (1)
            {
              v22 = (*(v6 + 48) + 16 * v20);
              v23 = *v22 == v17 && v22[1] == v16;
              if (v23 || (sub_1D72646CC() & 1) != 0)
              {
                break;
              }

              v20 = (v20 + 1) & v21;
              if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            return;
          }

LABEL_28:

          v4 = v24;
        }
      }

      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v10)
        {

          return;
        }

        v13 = *(v5 + 8 * v14);
        ++v12;
        if (v13)
        {
          v12 = v14;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_1D670EFA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(a1 + 16);
  if (!v3)
  {
    return 1;
  }

  if (v2 >= v3)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  v5 = v4 + 56;
  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = a1;
  }

  v7 = 1 << *(v4 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v4 + 56);
  v10 = (v7 + 63) >> 6;
  v37 = v6 + 56;

  v12 = 0;
  while (1)
  {
    do
    {
      if (v9)
      {
        v13 = v9;
        goto LABEL_19;
      }

      do
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
          return result;
        }

        if (v14 >= v10)
        {

          return 1;
        }

        v13 = *(v5 + 8 * v14);
        ++v12;
      }

      while (!v13);
      v12 = v14;
LABEL_19:
      v9 = (v13 - 1) & v13;
    }

    while (!*(v6 + 16));
    v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
    v16 = *v15;
    v17 = v15[1];
    sub_1D7264A0C();
    v36 = v9;
    switch(v17)
    {
      case 0uLL:
        v18 = 0;
        goto LABEL_37;
      case 1uLL:
        v18 = 1;
        goto LABEL_37;
      case 2uLL:
        v18 = 2;
        goto LABEL_37;
      case 3uLL:
        v18 = 3;
        goto LABEL_37;
      case 4uLL:
        v18 = 4;
        goto LABEL_37;
      case 5uLL:
        v18 = 5;
        goto LABEL_37;
      case 6uLL:
        v18 = 6;
        goto LABEL_37;
      case 7uLL:
        v18 = 7;
        goto LABEL_37;
      case 8uLL:
        v18 = 8;
        goto LABEL_37;
      case 9uLL:
        v18 = 9;
        goto LABEL_37;
      case 0xAuLL:
        v18 = 10;
        goto LABEL_37;
      case 0xBuLL:
        v18 = 11;
        goto LABEL_37;
      case 0xCuLL:
        v18 = 12;
        goto LABEL_37;
      case 0xDuLL:
        v18 = 13;
        goto LABEL_37;
      case 0xEuLL:
        v18 = 14;
        goto LABEL_37;
      case 0xFuLL:
        v18 = 15;
LABEL_37:
        MEMORY[0x1DA6FC0B0](v18);
        break;
      default:
        MEMORY[0x1DA6FC0B0](16);

        sub_1D72621EC();
        break;
    }

    v19 = sub_1D7264A5C();
    v20 = -1 << *(v6 + 32);
    v21 = v19 & ~v20;
    if ((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      break;
    }

LABEL_84:
    result = sub_1D5CBA0FC(v16, v17);
    v9 = v36;
  }

  v22 = ~v20;
  while (2)
  {
    v23 = (*(v6 + 48) + 16 * v21);
    v25 = *v23;
    v24 = v23[1];
    switch(v24)
    {
      case 0uLL:
        if (!v17)
        {
          goto LABEL_89;
        }

        sub_1D5CBA110(v16, v17);
        v26 = 0;
        goto LABEL_75;
      case 1uLL:
        if (v17 == 1)
        {
LABEL_89:
          v30 = v25;
          v31 = v24;
          sub_1D5CBA0FC(v30, v24);
          sub_1D5CBA0FC(v16, v31);

          return 0;
        }

        sub_1D5CBA110(v16, v17);
        v26 = 1;
        goto LABEL_75;
      case 2uLL:
        if (v17 != 2)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 2;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 2uLL);
        v32 = v16;
        v33 = 2;
        goto LABEL_104;
      case 3uLL:
        if (v17 != 3)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 3;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 3uLL);
        v32 = v16;
        v33 = 3;
        goto LABEL_104;
      case 4uLL:
        if (v17 != 4)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 4;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 4uLL);
        v32 = v16;
        v33 = 4;
        goto LABEL_104;
      case 5uLL:
        if (v17 != 5)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 5;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 5uLL);
        v32 = v16;
        v33 = 5;
        goto LABEL_104;
      case 6uLL:
        if (v17 != 6)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 6;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 6uLL);
        v32 = v16;
        v33 = 6;
        goto LABEL_104;
      case 7uLL:
        if (v17 != 7)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 7;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 7uLL);
        v32 = v16;
        v33 = 7;
        goto LABEL_104;
      case 8uLL:
        if (v17 != 8)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 8;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 8uLL);
        v32 = v16;
        v33 = 8;
        goto LABEL_104;
      case 9uLL:
        if (v17 != 9)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 9;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 9uLL);
        v32 = v16;
        v33 = 9;
        goto LABEL_104;
      case 0xAuLL:
        if (v17 != 10)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 10;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 0xAuLL);
        v32 = v16;
        v33 = 10;
        goto LABEL_104;
      case 0xBuLL:
        if (v17 != 11)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 11;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 0xBuLL);
        v32 = v16;
        v33 = 11;
        goto LABEL_104;
      case 0xCuLL:
        if (v17 != 12)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 12;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 0xCuLL);
        v32 = v16;
        v33 = 12;
        goto LABEL_104;
      case 0xDuLL:
        if (v17 != 13)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 13;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 0xDuLL);
        v32 = v16;
        v33 = 13;
        goto LABEL_104;
      case 0xEuLL:
        if (v17 != 14)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 14;
LABEL_75:
          sub_1D5CBA0FC(v25, v26);
          sub_1D5CBA0FC(v16, v17);
          goto LABEL_76;
        }

        sub_1D5CBA0FC(v25, 0xEuLL);
        v32 = v16;
        v33 = 14;
LABEL_104:
        sub_1D5CBA0FC(v32, v33);
        return 0;
      case 0xFuLL:
        if (v17 != 15)
        {
          sub_1D5CBA110(v16, v17);
          v26 = 15;
          goto LABEL_75;
        }

        sub_1D5CBA0FC(v25, 0xFuLL);
        v32 = v16;
        v33 = 15;
        goto LABEL_104;
      default:
        v35 = v4;
        if (v17 < 0x10)
        {
          v27 = v24;
          sub_1D5CBA110(v16, v17);
          sub_1D5CBA110(v25, v27);
          v26 = v27;
          v4 = v35;
          goto LABEL_75;
        }

        if (v25 != v16 || v24 != v17)
        {
          v29 = v24;
          v34 = sub_1D72646CC();
          sub_1D5CBA110(v16, v17);
          sub_1D5CBA110(v25, v29);
          sub_1D5CBA0FC(v25, v29);
          sub_1D5CBA0FC(v16, v17);
          v4 = v35;
          if (v34)
          {
            sub_1D5CBA0FC(v16, v17);

            goto LABEL_106;
          }

LABEL_76:
          v21 = (v21 + 1) & v22;
          if (((*(v37 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
          {
            goto LABEL_84;
          }

          continue;
        }

        sub_1D5CBA0FC(v16, v17);
        sub_1D5CBA0FC(v16, v17);

LABEL_106:

        return 0;
    }
  }
}

uint64_t sub_1D670F7B0(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 1;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    return 1;
  }

  v4 = 0;
  if (v2 >= v3)
  {
    v5 = result;
  }

  else
  {
    v5 = a2;
  }

  if (v2 >= v3)
  {
    v6 = a2;
  }

  else
  {
    v6 = result;
  }

  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v5 + 56);
  v10 = (v7 + 63) >> 6;
  v11 = v6 + 56;
LABEL_13:
  while (v9)
  {
    v12 = v9;
LABEL_19:
    v9 = (v12 - 1) & v12;
    if (*(v6 + 16))
    {
      v14 = *(*(v5 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      result = sub_1D72649FC();
      v15 = -1 << *(v6 + 32);
      v16 = result & ~v15;
      if ((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
      {
        v17 = ~v15;
        while (*(*(v6 + 48) + 8 * v16) != v14)
        {
          v16 = (v16 + 1) & v17;
          if (((*(v11 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        return 0;
      }
    }
  }

  while (1)
  {
    v13 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v13 >= v10)
    {
      return 1;
    }

    v12 = *(v5 + 56 + 8 * v13);
    ++v4;
    if (v12)
    {
      v4 = v13;
      goto LABEL_19;
    }
  }

  __break(1u);
  return result;
}

BOOL _s8NewsFeed0B10GroupSlotsO2eeoiySbAC_ACtFZ_0(_BOOL8 result, uint64_t a2)
{
  if (!result)
  {
    return !a2;
  }

  if (!a2)
  {
    return 0;
  }

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

void *sub_1D670F96C(void *a1)
{
  v3 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D7264AEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1(v6, v6[3]);
    sub_1D5B49714(0, &unk_1EDF3C820, MEMORY[0x1E69E6530]);
    sub_1D670FAB4(&qword_1EDF3C818, MEMORY[0x1E69E6560], MEMORY[0x1E69E6330]);
    sub_1D726472C();
    v3 = v5;
    if (!v5[2])
    {

      v3 = 0;
    }

    __swift_destroy_boxed_opaque_existential_1(v6);
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v3;
}

uint64_t sub_1D670FAB4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D5B49714(255, &unk_1EDF3C820, MEMORY[0x1E69E6530]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void FeedSportsEvent.init(sportsEvent:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  v5 = sub_1D726207C();
  v7 = v6;

  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
}

uint64_t FeedSportsEvent.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void FeedSportsEvent.layoutDirection.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

uint64_t FeedSportsEvent.init(identifier:sportsEvent:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = 0;
  *(a4 + 32) = 0;
  return result;
}

uint64_t FeedSportsEvent.groupItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  type metadata accessor for FeedGroupItem(0);
  swift_storeEnumTagMultiPayload();

  return swift_unknownObjectRetain();
}

uint64_t sub_1D670FC64@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v4;
  *(a1 + 24) = v3;
  *(a1 + 32) = v5;
  type metadata accessor for FeedGroupItem(0);
  swift_storeEnumTagMultiPayload();

  return swift_unknownObjectRetain();
}

double FeedSportsEvent.kind.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D72E0D50;
  return result;
}

void sub_1D670FD00(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 24);
  *(a1 + 8) = v2;
}

double sub_1D670FD14@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1D72E0D50;
  return result;
}

uint64_t FeedSportsEvent.debugIdentifier.getter()
{
  v1 = [*(v0 + 16) identifier];
  v2 = sub_1D726207C();

  return v2;
}

uint64_t FeedSportsEvent.debugTitle.getter()
{
  v1 = [*(v0 + 16) name];
  v2 = sub_1D726207C();

  return v2;
}

char *sub_1D670FDF0()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  v26 = MEMORY[0x1E69E7CC0];
  ObjectType = swift_getObjectType();
  v4 = sub_1D5EEDC00(0x652D7374726F7073, 0xED00002D746E6576, ObjectType);
  sub_1D6985160(v4);
  v5 = [v1 eventLeagueTag];
  v6 = swift_getObjectType();
  v7 = 0xD00000000000001FLL;
  v8 = sub_1D5EEDC00(0xD000000000000014, 0x80000001D73D2830, v6);
  swift_unknownObjectRelease();
  sub_1D6985160(v8);
  v9 = [v1 eventCompetitorTags];
  if (v9)
  {
    v10 = v9;
    sub_1D5EC01D0();
    v2 = sub_1D726267C();
  }

  if (v2 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D7263BFC())
  {
    v12 = 0;
    v7 -= 7;
    while ((v2 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1DA6FB460](v12, v2);
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_13;
      }

LABEL_9:
      v14 = swift_getObjectType();
      sub_1D7263D4C();

      v15 = sub_1D72644BC();
      MEMORY[0x1DA6F9910](v15);

      MEMORY[0x1DA6F9910](45, 0xE100000000000000);
      v16 = sub_1D5EEDC00(v7, 0x80000001D73D2850, v14);

      sub_1D6985160(v16);
      swift_unknownObjectRelease();
      ++v12;
      if (v13 == i)
      {
        goto LABEL_16;
      }
    }

    if (v12 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    swift_unknownObjectRetain();
    v13 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_9;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  v17 = v26;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1D5B858EC(0, *(v26 + 16) + 1, 1, v26);
  }

  v19 = *(v17 + 2);
  v18 = *(v17 + 3);
  if (v19 >= v18 >> 1)
  {
    v17 = sub_1D5B858EC((v18 > 1), v19 + 1, 1, v17);
  }

  *(v17 + 2) = v19 + 1;
  v20 = &v17[16 * v19];
  *(v20 + 4) = 0xD00000000000001FLL;
  *(v20 + 5) = 0x80000001D73D2870;
  sub_1D7263D4C();

  if (v2 >> 62)
  {
    sub_1D7263BFC();
  }

  v21 = sub_1D72644BC();
  MEMORY[0x1DA6F9910](v21);

  v23 = *(v17 + 2);
  v22 = *(v17 + 3);
  if (v23 >= v22 >> 1)
  {
    v17 = sub_1D5B858EC((v22 > 1), v23 + 1, 1, v17);
  }

  *(v17 + 2) = v23 + 1;
  v24 = &v17[16 * v23];
  *(v24 + 4) = 0xD00000000000001FLL;
  *(v24 + 5) = 0x80000001D73D2890;
  return v17;
}

uint64_t sub_1D67101C8()
{
  v0 = sub_1D670FDF0();
  v1 = *(v0 + 2);
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v1, 0);
    v2 = v10;
    v3 = (v0 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      MEMORY[0x1DA6F9910](v4, v5);

      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        sub_1D5BFC364((v6 > 1), v7 + 1, 1);
      }

      *(v10 + 16) = v7 + 1;
      v8 = v10 + 16 * v7;
      *(v8 + 32) = 0x2D64656566;
      *(v8 + 40) = 0xE500000000000000;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v2;
}

uint64_t _s8NewsFeed0B11SportsEventV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (v5 = 0, (sub_1D72646CC() & 1) != 0))
  {
    v6 = [v2 identifier];
    v7 = sub_1D726207C();
    v9 = v8;

    v10 = [v3 identifier];
    v11 = sub_1D726207C();
    v13 = v12;

    if (v7 == v11 && v9 == v13)
    {
      v5 = 1;
    }

    else
    {
      v5 = sub_1D72646CC();
    }
  }

  return v5 & 1;
}

unint64_t sub_1D6710418(uint64_t a1)
{
  result = sub_1D6710440();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D6710440()
{
  result = qword_1EDF15120;
  if (!qword_1EDF15120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15120);
  }

  return result;
}

void static FeedGroupTopicDiversityRequirements.noRequirements.getter(uint64_t a1@<X8>)
{
  *a1 = 0x3FF0000000000000;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = MEMORY[0x1E69E7CD0];
}

uint64_t FeedGroupTopicDiversityRequirements.init(threshold:windowSize:allowedTopicIDs:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2 & 1;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4 & 1;
  *(a6 + 32) = a5;
  return result;
}

uint64_t FeedGroupTopicDiversityRequirements.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D6710B94(0, &qword_1EDF03B60, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6710740();
  sub_1D7264B0C();
  if (!v2)
  {
    v22 = 0;
    sub_1D726421C();
    v11 = v18;
    v21 = v19;
    v22 = 1;
    sub_1D726421C();
    v12 = v18;
    v20 = v19;
    sub_1D5B81B04();
    v22 = 2;
    sub_1D5CB5D1C(&qword_1EDF3C7D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
    sub_1D726421C();
    (*(v7 + 8))(v10, v6);
    v13 = v18;
    v14 = v21;
    v15 = v20;
    *a2 = v11;
    *(a2 + 8) = v14;
    *(a2 + 16) = v12;
    *(a2 + 24) = v15;
    *(a2 + 32) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_1D6710740()
{
  result = qword_1EDF13178;
  if (!qword_1EDF13178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13178);
  }

  return result;
}

uint64_t sub_1D6710798()
{
  v1 = 0x6953776F646E6977;
  if (*v0 != 1)
  {
    v1 = 0x546465776F6C6C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6C6F687365726874;
  }
}

uint64_t sub_1D6710808@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6710DD8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6710830(uint64_t a1)
{
  v2 = sub_1D6710740();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D671086C(uint64_t a1)
{
  v2 = sub_1D6710740();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FeedGroupTopicDiversityRequirements.encode(to:)(void *a1)
{
  sub_1D6710B94(0, &qword_1EDF02878, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v6);
  v8 = v13 - v7;
  v9 = *(v1 + 16);
  v14 = *(v1 + 24);
  v13[0] = *(v1 + 32);
  v13[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6710740();
  sub_1D7264B5C();
  v17 = 0;
  v10 = v13[2];
  sub_1D726439C();
  if (!v10)
  {
    v11 = v13[0];
    v16 = 1;
    sub_1D72643AC();
    v13[3] = v11;
    v15 = 2;
    sub_1D5B81B04();
    sub_1D5CB5D1C(&qword_1EDF047E0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
    sub_1D72643BC();
  }

  return (*(v5 + 8))(v8, v4);
}

BOOL _s8NewsFeed0B31GroupTopicDiversityRequirementsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a2 + 8);
  v4 = *(a2 + 32);
  if (*(a1 + 8))
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v3 = 1;
    }

    if (v3)
    {
      return 0;
    }
  }

  if (*(a1 + 24))
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 16) == *(a2 + 16))
    {
      v5 = *(a2 + 24);
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

  if (v2)
  {
    if (!v4)
    {
      return 0;
    }

    v6 = sub_1D5BFC390(v2, v4);

    return (v6 & 1) != 0;
  }

  return !v4;
}

void sub_1D6710B94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6710740();
    v7 = a3(a1, &type metadata for FeedGroupTopicDiversityRequirements.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_1D6710BF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1D6710C54(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2;
    }
  }

  return result;
}

unint64_t sub_1D6710CD4()
{
  result = qword_1EC88A2C8;
  if (!qword_1EC88A2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A2C8);
  }

  return result;
}

unint64_t sub_1D6710D2C()
{
  result = qword_1EDF13168;
  if (!qword_1EDF13168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13168);
  }

  return result;
}

unint64_t sub_1D6710D84()
{
  result = qword_1EDF13170;
  if (!qword_1EDF13170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF13170);
  }

  return result;
}

uint64_t sub_1D6710DD8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6953776F646E6977 && a2 == 0xEA0000000000657ALL || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x546465776F6C6C61 && a2 == 0xEF7344496369706FLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t type metadata accessor for DebugFormatCompilerItem(uint64_t a1)
{
  result = qword_1EC88A2D0;
  if (!qword_1EC88A2D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D6710F54(uint64_t a1)
{
  sub_1D6710FDC(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DebugFormatCompilerResultEntry(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for DebugFormatPackageInventory();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1D6710FDC(uint64_t a1)
{
  if (!qword_1EC88A2E0)
  {
    sub_1D6138F84();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88A2E0);
    }
  }
}

uint64_t FeedClusteringOptions.maxPublisherOccurrencesByPublisherID.getter()
{
  type metadata accessor for FeedClusteringOptions(0);
}

uint64_t FeedClusteringOptions.topicDiversity.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for FeedClusteringOptions(0) + 72));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  *a1 = *v3;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;

  return sub_1D67113E8(v4, v5, v6, v7, v8);
}

uint64_t sub_1D67113E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5 != 1)
  {
  }

  return result;
}

uint64_t FeedClusteringOptions.init(min:minDepthTransform:max:maxDepthTransform:bundleArticleQuotas:maxInaccessibleHeadlines:maxInaccessibleHeadlinesDepthTransform:maxEvergreenHeadlines:maxEvergreenHeadlinesDepthTransform:maxPublisherOccurrences:maxPublisherOccurrencesDepthTransform:maxPublisherOccurrencesByPublisherID:maxAIGeneratedContent:maxAIGeneratedContentDepthTransform:topicDiversity:minTagScoreRelativeToBaseline:splittingConfiguration:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25)
{
  v43 = *(a22 + 32);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  v30 = type metadata accessor for FeedClusteringOptions(0);
  v31 = MEMORY[0x1E69E34A8];
  sub_1D671633C(a3, a9 + v30[5], &qword_1EDF188B0, MEMORY[0x1E69E34A8]);
  v32 = a9 + v30[6];
  *v32 = a4;
  *(v32 + 8) = a5 & 1;
  sub_1D671633C(a6, a9 + v30[7], &qword_1EDF188B0, v31);
  sub_1D671633C(a7, a9 + v30[8], qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas);
  v33 = a9 + v30[9];
  *v33 = a8;
  *(v33 + 8) = a10 & 1;
  sub_1D671633C(a11, a9 + v30[10], &qword_1EDF188B0, v31);
  v34 = a9 + v30[11];
  *v34 = a12;
  *(v34 + 8) = a13 & 1;
  sub_1D671633C(a14, a9 + v30[12], &qword_1EDF188B0, v31);
  v35 = a9 + v30[13];
  *v35 = a15;
  *(v35 + 8) = a16 & 1;
  sub_1D671633C(a17, a9 + v30[14], &qword_1EDF188B0, v31);
  *(a9 + v30[15]) = a18;
  v36 = a9 + v30[16];
  *v36 = a19;
  *(v36 + 8) = a20 & 1;
  sub_1D671633C(a21, a9 + v30[17], &qword_1EDF188B0, v31);
  v37 = a9 + v30[18];
  v38 = *(a22 + 16);
  *v37 = *a22;
  *(v37 + 16) = v38;
  *(v37 + 32) = v43;
  v39 = a9 + v30[19];
  *v39 = a23;
  *(v39 + 8) = a24 & 1;
  return sub_1D671633C(a25, a9 + v30[20], &qword_1EDF18910, MEMORY[0x1E69E3480]);
}

uint64_t sub_1D671180C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5CEE544(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t FeedClusteringRequest.customClusteringOptions.getter()
{
  type metadata accessor for FeedClusteringRequest(0);
}

uint64_t FeedClusteringRequest.ignoreTagIDs.getter()
{
  type metadata accessor for FeedClusteringRequest(0);
}

uint64_t FeedClusteringRequest.clusterOrderingMode.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for FeedClusteringRequest(0);
  *a1 = *(v1 + *(result + 68));
  return result;
}

uint64_t FeedClusteringRequest.channelClusteringOption.getter@<X0>(_WORD *a1@<X8>)
{
  result = type metadata accessor for FeedClusteringRequest(0);
  *a1 = *(v1 + *(result + 88));
  return result;
}

uint64_t FeedClusteringRequest.groupingContext.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedClusteringRequest(0) + 92);

  return sub_1D5B68374(v3, a1);
}

uint64_t FeedClusteringRequest.autofavoritedTagIDs.getter()
{
  type metadata accessor for FeedClusteringRequest(0);
}

uint64_t FeedClusteringRequest.init(scoredItems:configuration:limitUnpaidArticles:hardPaywallBundleArticleLimit:autoFavoritesTopicClusteringOptions:channelClusteringOptions:customChannelClusteringOptions:customTopicClusteringOptions:generalTopicClusteringOptions:moreForYouClusteringOptions:ignoreTagIDs:ignoreGroupableTopics:clusterOrderingMode:considerRejectedHeadlinesInMoreForYou:minChannelGroupRatio:minTopicGroupRatio:keepOverflowTopicHeadlinesInInventory:channelClusteringOption:groupingContext:autofavoritedTagIDs:ignoreTagScoreForEligibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, uint64_t a14, char a15, char *a16, char a17, char a18, __int16 *a19, __int128 *a20, uint64_t a21, char a22)
{
  v24 = a1;
  v25 = a9;
  v82 = *a16;
  v83 = *a19;
  *a9 = a1;
  v26 = *(a1 + 16);
  if (!v26)
  {
    a9[1] = MEMORY[0x1E69E7CC0];

LABEL_30:
    v31 = MEMORY[0x1E69E7CC8];
    goto LABEL_31;
  }

  v90 = MEMORY[0x1E69E7CC0];

  sub_1D7263ECC();
  v27 = v24 + 32;
  do
  {
    v27 += 24;
    swift_unknownObjectRetain();
    sub_1D7263E9C();
    sub_1D7263EDC();
    sub_1D7263EEC();
    sub_1D7263EAC();
    --v26;
  }

  while (v26);
  v28 = *(v24 + 16);
  v25[1] = v90;
  if (!v28)
  {
    goto LABEL_30;
  }

  v29 = 0;
  v30 = v24 + 48;
  v88 = v28;
  v76 = v28 - 1;
  v31 = MEMORY[0x1E69E7CC8];
  v89 = v24;
  v77 = v24 + 48;
  while (2)
  {
    v32 = (v30 + 24 * v29);
    v33 = v29;
    while (1)
    {
      if (v33 >= *(v24 + 16))
      {
        __break(1u);
        goto LABEL_37;
      }

      v35 = *(v32 - 2);
      v34 = *(v32 - 1);
      v36 = *v32;
      swift_unknownObjectRetain();
      v37 = v34;
      v38 = [v35 itemID];
      v39 = sub_1D726207C();
      v41 = v40;

      [v37 sortingScore];
      v43 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      if (v43)
      {
        break;
      }

      v44 = sub_1D5B69D90(v39, v41);
      v46 = v45;

      if (v46)
      {
        v90 = v31;
        v24 = v89;
        if (!swift_isUniquelyReferenced_nonNull_native())
        {
          sub_1D6D831E4();
          v31 = v90;
        }

        sub_1D6713788(v44, v31, v65);
        swift_unknownObjectRelease();
        v25 = a9;
        goto LABEL_25;
      }

      ++v33;

      swift_unknownObjectRelease();
      v32 += 3;
      v24 = v89;
      if (v88 == v33)
      {
        v25 = a9;
        goto LABEL_31;
      }
    }

    v47 = v43;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = v31;
    v50 = sub_1D5B69D90(v39, v41);
    v51 = v31[2];
    v52 = (v49 & 1) == 0;
    v53 = v51 + v52;
    if (__OFADD__(v51, v52))
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);

      __break(1u);
      goto LABEL_39;
    }

    v54 = isUniquelyReferenced_nonNull_native;
    if (v31[3] >= v53)
    {
      v25 = a9;
      if (v54)
      {
        if (v49)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v75 = v49;
        sub_1D6D831E4();
        if (v75)
        {
          goto LABEL_23;
        }
      }

LABEL_16:
      v31 = v90;
      v90[(v50 >> 6) + 8] |= 1 << v50;
      v61 = (v31[6] + 16 * v50);
      *v61 = v39;
      v61[1] = v41;
      *(v31[7] + 8 * v50) = v47;

      swift_unknownObjectRelease();
      v62 = v31[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (!v63)
      {
        v31[2] = v64;
        goto LABEL_24;
      }

      goto LABEL_38;
    }

    v55 = v49;
    sub_1D6D6F5E4(v53, v54);
    v56 = sub_1D5B69D90(v39, v41);
    v58 = v57 & 1;
    v59 = v55;
    v60 = v55 & 1;
    v25 = a9;
    if (v60 != v58)
    {
LABEL_39:
      result = sub_1D726493C();
      __break(1u);
      return result;
    }

    v50 = v56;
    if ((v59 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_23:

    v31 = v90;
    v66 = v90[7];
    v67 = *(v66 + 8 * v50);
    *(v66 + 8 * v50) = v47;

    swift_unknownObjectRelease();
LABEL_24:
    v24 = v89;
LABEL_25:
    v29 = v33 + 1;
    v30 = v77;
    if (v76 != v33)
    {
      continue;
    }

    break;
  }

LABEL_31:

  v25[2] = a2;
  v25[3] = v31;
  *(v25 + 32) = a3 & 1;
  v25[5] = a4;
  v68 = type metadata accessor for FeedClusteringRequest(0);
  sub_1D671180C(a5, v25 + v68[10], qword_1EDF14468, type metadata accessor for FeedClusteringOptions);
  sub_1D671180C(a6, v25 + v68[11], qword_1EDF14468, type metadata accessor for FeedClusteringOptions);
  v69 = a7;
  if (!a7)
  {
    v69 = sub_1D605D5F4(MEMORY[0x1E69E7CC0]);
    v70 = a8;
    if (a8)
    {
      goto LABEL_33;
    }

LABEL_35:
    v70 = sub_1D605D5F4(MEMORY[0x1E69E7CC0]);
    goto LABEL_33;
  }

  v70 = a8;
  if (!a8)
  {
    goto LABEL_35;
  }

LABEL_33:
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v90 = v69;
  sub_1D6715EEC(v70, sub_1D6715E64, 0, v71, &v90);

  v72 = v90;
  v73 = MEMORY[0x1E69E6720];
  sub_1D67162DC(a6, qword_1EDF14468, type metadata accessor for FeedClusteringOptions, MEMORY[0x1E69E6720], sub_1D5CEE544);
  sub_1D67162DC(a5, qword_1EDF14468, type metadata accessor for FeedClusteringOptions, v73, sub_1D5CEE544);
  *(a9 + v68[12]) = v72;
  sub_1D671633C(a12, a9 + v68[13], qword_1EDF14468, type metadata accessor for FeedClusteringOptions);
  sub_1D671633C(a13, a9 + v68[14], qword_1EDF14468, type metadata accessor for FeedClusteringOptions);
  *(a9 + v68[15]) = a14;
  *(a9 + v68[16]) = a15 & 1;
  *(a9 + v68[17]) = v82;
  *(a9 + v68[18]) = a17 & 1;
  *(a9 + v68[19]) = a10;
  *(a9 + v68[20]) = a11;
  *(a9 + v68[21]) = a18 & 1;
  *(a9 + v68[22]) = v83;
  result = sub_1D5B63F14(a20, a9 + v68[23]);
  *(a9 + v68[24]) = a21;
  *(a9 + v68[25]) = a22 & 1;
  return result;
}

uint64_t FeedClusteringRequest.init(scoredHeadlines:configuration:limitUnpaidArticles:hardPaywallBundleArticleLimit:autoFavoritesTopicClusteringOptions:channelClusteringOptions:customChannelClusteringOptions:generalTopicClusteringOptions:moreForYouClusteringOptions:ignoreTagIDs:ignoreGroupableTopics:clusterOrderingMode:considerRejectedHeadlinesInMoreForYou:minChannelGroupRatio:minTopicGroupRatio:keepOverflowTopicHeadlinesInInventory:channelClusteringOption:groupingContext:autofavoritedTagIDs:ignoreTagScoreForEligibility:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, double a10@<D0>, double a11@<D1>, uint64_t a12, uint64_t a13, char a14, unsigned __int8 *a15, char a16, char a17, unsigned __int16 *a18, void *a19, uint64_t a20, unsigned __int8 a21)
{
  v111 = a8;
  v103 = a7;
  v113 = a6;
  v102 = a4;
  v101 = a3;
  v100 = a2;
  v109 = a12;
  v108 = a19;
  sub_1D5CEE544(0, qword_1EDF14468, type metadata accessor for FeedClusteringOptions, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v26 - 8, v27);
  v112 = &v96[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v29, v30);
  v110 = &v96[-v31];
  MEMORY[0x1EEE9AC00](v32, v33);
  v115 = &v96[-v34];
  MEMORY[0x1EEE9AC00](v35, v36);
  v114 = &v96[-v37];
  v104 = *a15;
  v105 = *a18;
  v38 = *(a1 + 16);
  v39 = MEMORY[0x1E69E7CC0];
  if (v38)
  {
    *&v119[0] = MEMORY[0x1E69E7CC0];
    sub_1D6997D30(0, v38, 0);
    v40 = 32;
    v41 = *&v119[0];
    do
    {
      v117 = *(a1 + v40);
      *&v119[0] = v41;
      v43 = *(v41 + 16);
      v42 = *(v41 + 24);
      swift_unknownObjectRetain();
      v44 = *(&v117 + 1);
      if (v43 >= v42 >> 1)
      {
        sub_1D6997D30((v42 > 1), v43 + 1, 1);
        v41 = *&v119[0];
      }

      *(v41 + 16) = v43 + 1;
      v45 = v41 + 24 * v43;
      *(v45 + 32) = v117;
      *(v45 + 48) = 0;
      v40 += 16;
      --v38;
    }

    while (v38);

    v46 = v41;
    v39 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v46 = MEMORY[0x1E69E7CC0];
  }

  sub_1D671180C(a5, v114, qword_1EDF14468, type metadata accessor for FeedClusteringOptions);
  sub_1D671180C(v113, v115, qword_1EDF14468, type metadata accessor for FeedClusteringOptions);
  sub_1D671180C(v111, v110, qword_1EDF14468, type metadata accessor for FeedClusteringOptions);
  sub_1D671180C(v109, v112, qword_1EDF14468, type metadata accessor for FeedClusteringOptions);
  sub_1D5B68374(v108, v119);
  *a9 = v46;
  v47 = *(v46 + 16);
  v48 = v46;
  *&v117 = v46;
  if (v47)
  {
    v118 = v39;

    sub_1D7263ECC();
    v49 = v46 + 32;
    do
    {
      v49 += 24;
      swift_unknownObjectRetain();
      sub_1D7263E9C();
      sub_1D7263EDC();
      sub_1D7263EEC();
      sub_1D7263EAC();
      --v47;
    }

    while (v47);
    v50 = v118;
    v48 = v117;
  }

  else
  {

    v50 = MEMORY[0x1E69E7CC0];
  }

  v106 = a5;
  v107 = a9;
  a9[1] = v50;
  v51 = *(v48 + 16);
  if (!v51)
  {
    v54 = MEMORY[0x1E69E7CC8];
    goto LABEL_38;
  }

  v52 = 0;
  v53 = v48 + 48;
  v116 = *(v48 + 16);
  v98 = v51 - 1;
  v54 = MEMORY[0x1E69E7CC8];
  v99 = v48 + 48;
  while (2)
  {
    v55 = (v53 + 24 * v52);
    v56 = v52;
    while (1)
    {
      if (v56 >= *(v48 + 16))
      {
        __break(1u);
        goto LABEL_42;
      }

      v58 = *(v55 - 2);
      v57 = *(v55 - 1);
      v59 = *v55;
      swift_unknownObjectRetain();
      v60 = v57;
      v61 = [v58 itemID];
      v62 = sub_1D726207C();
      v64 = v63;

      [v60 sortingScore];
      v66 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      if (v66)
      {
        break;
      }

      v67 = sub_1D5B69D90(v62, v64);
      v69 = v68;

      if (v69)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v118 = v54;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D6D831E4();
          v54 = v118;
        }

        sub_1D6713788(v67, v54, v80);
        swift_unknownObjectRelease();
        goto LABEL_35;
      }

      ++v56;

      swift_unknownObjectRelease();
      v55 += 3;
      v48 = v117;
      if (v116 == v56)
      {
        goto LABEL_38;
      }
    }

    v70 = v66;
    v97 = swift_isUniquelyReferenced_nonNull_native();
    v118 = v54;
    v72 = sub_1D5B69D90(v62, v64);
    v73 = v54[2];
    v74 = (v71 & 1) == 0;
    v75 = v73 + v74;
    if (__OFADD__(v73, v74))
    {
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v76 = v71;
    if (v54[3] >= v75)
    {
      if (v97)
      {
        if ((v71 & 1) == 0)
        {
          goto LABEL_33;
        }
      }

      else
      {
        sub_1D6D831E4();
        if ((v76 & 1) == 0)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      sub_1D6D6F5E4(v75, v97);
      v77 = sub_1D5B69D90(v62, v64);
      if ((v76 & 1) != (v78 & 1))
      {
        goto LABEL_44;
      }

      v72 = v77;
      if ((v76 & 1) == 0)
      {
LABEL_33:
        v54 = v118;
        v118[(v72 >> 6) + 8] |= 1 << v72;
        v83 = (v54[6] + 16 * v72);
        *v83 = v62;
        v83[1] = v64;
        *(v54[7] + 8 * v72) = v70;

        swift_unknownObjectRelease();
        v84 = v54[2];
        v85 = __OFADD__(v84, 1);
        v86 = v84 + 1;
        if (!v85)
        {
          v54[2] = v86;
          goto LABEL_35;
        }

LABEL_43:
        __break(1u);

        __break(1u);
LABEL_44:
        result = sub_1D726493C();
        __break(1u);
        return result;
      }
    }

    v54 = v118;
    v81 = v118[7];
    v82 = *(v81 + 8 * v72);
    *(v81 + 8 * v72) = v70;

    swift_unknownObjectRelease();
LABEL_35:
    v52 = v56 + 1;
    v48 = v117;
    v53 = v99;
    if (v98 != v56)
    {
      continue;
    }

    break;
  }

LABEL_38:

  v87 = v107;
  v107[2] = v100;
  v87[3] = v54;
  *(v87 + 32) = v101 & 1;
  v87[5] = v102;
  v88 = type metadata accessor for FeedClusteringRequest(0);
  sub_1D671180C(v114, v87 + v88[10], qword_1EDF14468, type metadata accessor for FeedClusteringOptions);
  sub_1D671180C(v115, v87 + v88[11], qword_1EDF14468, type metadata accessor for FeedClusteringOptions);
  v89 = v103;
  if (!v103)
  {
    v89 = sub_1D605D5F4(MEMORY[0x1E69E7CC0]);
  }

  v90 = sub_1D605D5F4(MEMORY[0x1E69E7CC0]);
  v91 = swift_isUniquelyReferenced_nonNull_native();
  v118 = v89;
  sub_1D6715EEC(v90, sub_1D6715E64, 0, v91, &v118);

  v92 = v118;
  LODWORD(v117) = a21;
  v116 = a20;
  __swift_destroy_boxed_opaque_existential_1(v108);
  v93 = MEMORY[0x1E69E6720];
  sub_1D67162DC(v109, qword_1EDF14468, type metadata accessor for FeedClusteringOptions, MEMORY[0x1E69E6720], sub_1D5CEE544);
  sub_1D67162DC(v111, qword_1EDF14468, type metadata accessor for FeedClusteringOptions, v93, sub_1D5CEE544);
  sub_1D67162DC(v113, qword_1EDF14468, type metadata accessor for FeedClusteringOptions, v93, sub_1D5CEE544);
  sub_1D67162DC(v106, qword_1EDF14468, type metadata accessor for FeedClusteringOptions, v93, sub_1D5CEE544);
  sub_1D67162DC(v115, qword_1EDF14468, type metadata accessor for FeedClusteringOptions, v93, sub_1D5CEE544);
  sub_1D67162DC(v114, qword_1EDF14468, type metadata accessor for FeedClusteringOptions, v93, sub_1D5CEE544);
  v94 = v107;
  *(v107 + v88[12]) = v92;
  sub_1D671633C(v110, v94 + v88[13], qword_1EDF14468, type metadata accessor for FeedClusteringOptions);
  sub_1D671633C(v112, v94 + v88[14], qword_1EDF14468, type metadata accessor for FeedClusteringOptions);
  *(v94 + v88[15]) = a13;
  *(v94 + v88[16]) = a14 & 1;
  *(v94 + v88[17]) = v104;
  *(v94 + v88[18]) = a16 & 1;
  *(v94 + v88[19]) = a10;
  *(v94 + v88[20]) = a11;
  *(v94 + v88[21]) = a17 & 1;
  *(v94 + v88[22]) = v105;
  result = sub_1D5B63F14(v119, v94 + v88[23]);
  *(v94 + v88[24]) = v116;
  *(v94 + v88[25]) = v117 & 1;
  return result;
}

uint64_t FeedClusteringOptions.init(knobs:context:)@<X0>(_OWORD *a1@<X0>, uint64_t (**a2)(char *, char *, uint64_t)@<X1>, uint64_t a3@<X8>)
{
  v6 = MEMORY[0x1E69E6720];
  sub_1D5CEE544(0, &qword_1EDF18910, MEMORY[0x1E69E3480], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8, v8);
  v10 = &v84 - v9;
  v11 = type metadata accessor for FeedGroupBundleArticleQuotas(0);
  v100 = *(v11 - 8);
  v101 = v11;
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = (&v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5CEE544(0, qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas, v6);
  MEMORY[0x1EEE9AC00](v15 - 8, v16);
  v105 = &v84 - v17;
  sub_1D5CEE544(0, &qword_1EDF188B0, MEMORY[0x1E69E34A8], v6);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22, v23);
  v106 = &v84 - v24;
  MEMORY[0x1EEE9AC00](v25, v26);
  v104 = &v84 - v27;
  MEMORY[0x1EEE9AC00](v28, v29);
  v103 = &v84 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v34 = &v84 - v33;
  MEMORY[0x1EEE9AC00](v35, v36);
  v38 = &v84 - v37;
  v39 = a1[7];
  v40 = a1[5];
  v117 = a1[6];
  v118 = v39;
  v41 = a1[7];
  v42 = a1[9];
  v119 = a1[8];
  v120 = v42;
  v43 = a1[3];
  v44 = a1[1];
  v113 = a1[2];
  v114 = v43;
  v45 = a1[3];
  v46 = a1[5];
  v115 = a1[4];
  v116 = v46;
  v47 = a1[1];
  v112[0] = *a1;
  v112[1] = v47;
  v127 = v117;
  v128 = v41;
  v48 = a1[9];
  v129 = v119;
  v130 = v48;
  v123 = v113;
  v124 = v45;
  v125 = v115;
  v126 = v40;
  v121 = v112[0];
  v122 = v44;
  if (get_enum_tag_for_layout_string_8NewsFeed0B12JournalEntryVSg_0(&v121) == 1)
  {
    sub_1D5CEC9A0(a2, type metadata accessor for FeedContext);
    v49 = type metadata accessor for FeedClusteringOptions(0);
    return (*(*(v49 - 8) + 56))(a3, 1, 1, v49);
  }

  v102 = v21;
  v99 = v10;
  v96 = sub_1D5E35358(a2);
  sub_1D5E35E60(a2, v38);
  v51 = sub_1D72593CC();
  v52 = v38;
  v53 = v51;
  v54 = *(*(v51 - 8) + 56);
  v97 = v52;
  v54(v52, 0, 1, v51);
  v95 = sub_1D5E35358(a2);
  sub_1D5E35E60(a2, v34);
  v54(v34, 0, 1, v53);
  sub_1D5E35494(a2, v14);
  v98 = v34;
  if (*(&v122 + 1))
  {
    v55 = sub_1D5E35EB4(a2);
  }

  else
  {
    v55 = 0;
  }

  v56 = v105;
  FeedGroupBundleArticleQuotas.merge(explicitSlotBundleArticleQuotas:)(v55, v105);

  sub_1D5CEC9A0(v14, type metadata accessor for FeedGroupBundleArticleQuotas);
  (*(v100 + 56))(v56, 0, 1, v101);
  v92 = v123;
  if (v123)
  {
    v101 = sub_1D5E35358(a2);
    if (v123)
    {

      v57 = v103;
      sub_1D5E35E60(a2, v103);

      v54(v57, 0, 1, v53);
      v94 = sub_1D5E35358(a2);
      LODWORD(v100) = 0;
      goto LABEL_11;
    }
  }

  else
  {
    v101 = 0;
  }

  LODWORD(v100) = 1;
  v54(v103, 1, 1, v53);
  v94 = 0;
LABEL_11:
  v89 = v123;
  if (!v123)
  {
    v54(v104, 1, 1, v53);
    v93 = 0;
    v59 = v123;
    if (v123)
    {
      goto LABEL_13;
    }

LABEL_15:
    v54(v106, 1, 1, v53);
    v90 = 0;
    v91 = 0;
    goto LABEL_16;
  }

  v58 = v104;
  sub_1D5E35E60(a2, v104);

  v54(v58, 0, 1, v53);
  v93 = sub_1D5E35358(a2);
  v59 = v123;
  if (!v123)
  {
    goto LABEL_15;
  }

LABEL_13:

  v60 = v106;
  sub_1D5E35E60(a2, v106);

  v54(v60, 0, 1, v53);
  v91 = sub_1D5E35838(a2);
  v90 = sub_1D5E35358(a2);
LABEL_16:
  v61 = v99;
  if (v123)
  {

    v62 = v102;
    sub_1D5E35E60(a2, v102);

    v63 = 0;
  }

  else
  {
    v63 = 1;
    v62 = v102;
  }

  v54(v62, v63, 1, v53);
  if (v123)
  {

    sub_1D5E35850(a2, &v107);

    v99 = v107;
    v64 = v108;
    v65 = v110;
    v87 = v111;
    v88 = v109;
    if (v126)
    {
      v66 = sub_1D5E35BF4(a2);
      v86 = 0;
    }

    else
    {
      v86 = 1;
      v66 = 0.0;
    }
  }

  else
  {
    v99 = 0;
    v64 = 0;
    v65 = 0;
    v86 = 1;
    v66 = 0.0;
    v87 = 1;
    v88 = 0;
  }

  v85 = v65;
  if (*(&v130 + 1))
  {
    sub_1D5E3602C(a2, v61);
    v67 = 0;
  }

  else
  {
    v67 = 1;
  }

  v68 = v61;
  v69 = v59 == 0;
  v70 = v89 == 0;
  v71 = v92 == 0;
  sub_1D67162DC(v112, &unk_1EDF13CF0, &type metadata for FeedGroupClusteringKnobs, MEMORY[0x1E69E6720], sub_1D6716898);
  sub_1D5CEC9A0(a2, type metadata accessor for FeedContext);
  v72 = sub_1D725935C();
  (*(*(v72 - 8) + 56))(v68, v67, 1, v72);
  *a3 = v96;
  *(a3 + 8) = 0;
  v73 = type metadata accessor for FeedClusteringOptions(0);
  v74 = MEMORY[0x1E69E34A8];
  sub_1D671633C(v97, a3 + v73[5], &qword_1EDF188B0, MEMORY[0x1E69E34A8]);
  v75 = a3 + v73[6];
  *v75 = v95;
  *(v75 + 8) = 0;
  sub_1D671633C(v98, a3 + v73[7], &qword_1EDF188B0, v74);
  sub_1D671633C(v105, a3 + v73[8], qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas);
  v76 = a3 + v73[9];
  *v76 = v101;
  *(v76 + 8) = v71;
  sub_1D671633C(v103, a3 + v73[10], &qword_1EDF188B0, v74);
  v77 = a3 + v73[11];
  *v77 = v94;
  *(v77 + 8) = v100;
  sub_1D671633C(v104, a3 + v73[12], &qword_1EDF188B0, v74);
  v78 = a3 + v73[13];
  *v78 = v93;
  *(v78 + 8) = v70;
  sub_1D671633C(v106, a3 + v73[14], &qword_1EDF188B0, v74);
  v79 = v90;
  *(a3 + v73[15]) = v91;
  v80 = a3 + v73[16];
  *v80 = v79;
  *(v80 + 8) = v69;
  sub_1D671633C(v102, a3 + v73[17], &qword_1EDF188B0, v74);
  v81 = (a3 + v73[18]);
  *v81 = v99;
  v81[1] = v64;
  v82 = v85;
  v81[2] = v88;
  v81[3] = v82;
  LOBYTE(v82) = v86;
  v81[4] = v87;
  v83 = a3 + v73[19];
  *v83 = v66;
  *(v83 + 8) = v82;
  sub_1D671633C(v68, a3 + v73[20], &qword_1EDF18910, MEMORY[0x1E69E3480]);
  return (*(*(v73 - 1) + 56))(a3, 0, 1, v73);
}

void sub_1D67135D8(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    do
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v11 = sub_1D7264A5C();

      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v4);
        v15 = (v13 + 16 * v7);
        if (v4 != v7 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 32 * v4);
        v18 = (v16 + 32 * v7);
        if (v4 != v7 || v17 >= v18 + 2)
        {
          v10 = v18[1];
          *v17 = *v18;
          v17[1] = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

void sub_1D6713788(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    do
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v10 = sub_1D7264A5C();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_1D6713938(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    do
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v10 = sub_1D7264A5C();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 16 * v4);
        v17 = (v15 + 16 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_1D6713B30(int64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1D7263B8C();
    v14 = v12;
    v38 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v39 = *(v15 + 56);
    v36 = (v15 - 8);
    v37 = v16;
    do
    {
      v17 = v9;
      v18 = v39 * v11;
      v19 = v14;
      v20 = v15;
      v37(v8, *(a2 + 48) + v39 * v11, v4);
      sub_1D6716B68();
      v21 = sub_1D7261E7C();
      (*v36)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v38)
      {
        if (v22 >= v38 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v39 * a1;
          v27 = v25 + v18 + v39;
          v28 = v39 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v29 = v39 * a1 == v18;
            v9 = v17;
            if (!v29)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v30 = *(a2 + 56);
          v31 = (v30 + 8 * a1);
          v32 = (v30 + 8 * v11);
          if (a1 != v11 || v31 >= v32 + 1)
          {
            *v31 = *v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v38 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }
}

void sub_1D6713DE8(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    do
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v10 = sub_1D7264A5C();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 104 * v4);
        v17 = (v15 + 104 * v7);
        if (v4 != v7 || v16 >= v17 + 104)
        {
          memmove(v16, v17, 0x68uLL);
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_1D6713FCC(unint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v57 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GenericDataVisualization(0);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v59 = (&v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for WebEmbedDataVisualization(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v65 = (&v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15, v16);
  v64 = (&v57 - v17);
  v58 = type metadata accessor for WebEmbedDatastoreCacheKey(0);
  v18 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58, v19);
  v72 = &v57 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = -1 << *(a2 + 32);
  v22 = *(a2 + 64 + ((((a1 + 1) & ~v21) >> 3) & 0xFFFFFFFFFFFFFF8)) >> ((a1 + 1) & ~v21);
  v66 = a2 + 64;
  if (v22)
  {
    v23 = ~v21;
    v24 = (a1 + 1) & ~v21;
    v25 = sub_1D7263B8C();
    v26 = v24;
    v68 = 0;
    v71 = v23;
    v61 = (v25 + 1) & v23;
    v27 = *(v18 + 72);
    v60 = v5;
    v28 = (v5 + 8);
    v29 = v72;
    v63 = a2;
    v62 = v12;
    v67 = v27;
    do
    {
      v30 = *(a2 + 48);
      v73 = v26;
      v69 = v27 * v26;
      sub_1D5BE73BC(v30 + v27 * v26, v29, type metadata accessor for WebEmbedDatastoreCacheKey);
      sub_1D7264A0C();
      v31 = v64;
      sub_1D5BE73BC(v29, v64, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v32 = v59;
        sub_1D5BE755C(v31, v59, type metadata accessor for GenericDataVisualization);
        v76 = 0x3A636972656E6567;
        v77 = 0xE90000000000003ALL;
        MEMORY[0x1DA6F9910](*v32, v32[1]);
        sub_1D5CEC9A0(v32, type metadata accessor for GenericDataVisualization);
      }

      else
      {
        v33 = *v31;
        v76 = 0x3A3A7374726F7073;
        v77 = 0xE800000000000000;
        v75 = v33;
        v34 = SportsDataVisualization.identifier.getter();
        MEMORY[0x1DA6F9910](v34);
      }

      v70 = a1;
      sub_1D72621EC();

      v35 = v65;
      sub_1D5BE73BC(v72, v65, type metadata accessor for WebEmbedDataVisualization);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v36 = sub_1D6D2968C();
        v37 = sub_1D6D29D78();
        v76 = v36;
        sub_1D6985118(v37);
        sub_1D5CEE544(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
        sub_1D6716BC0();
        sub_1D6716B68();
        v38 = v68;
        v39 = sub_1D72623CC();
        v68 = v38;

        sub_1D5CEC9A0(v35, type metadata accessor for WebEmbedDataVisualization);
      }

      else
      {
        v40 = *v35;
        if (*v35 >> 61 == 2)
        {
          v39 = *(*((v40 & 0x1FFFFFFFFFFFFFFFLL) + 0x10) + OBJC_IVAR____TtC8NewsFeed35SportsBracketGroupDataVisualization_allDataSourceUrls);
        }

        else
        {
          v76 = *v35;
          v41 = sub_1D6F86D04();
          v75 = v40;
          v42 = sub_1D6F87060();
          v74 = v41;
          sub_1D6985118(v42);
          v76 = v74;
          sub_1D5CEE544(0, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
          sub_1D6716BC0();
          sub_1D6716B68();
          v43 = v68;
          v39 = sub_1D72623CC();
          v68 = v43;
        }
      }

      MEMORY[0x1DA6FC0B0](*(v39 + 16));
      v44 = *(v39 + 16);
      if (v44)
      {
        v45 = v39 + ((*(v60 + 80) + 32) & ~*(v60 + 80));
        v46 = *(v60 + 72);
        v47 = *(v60 + 16);
        do
        {
          v47(v8, v45, v4);
          sub_1D6716B68();
          sub_1D7261E8C();
          (*v28)(v8, v4);
          v45 += v46;
          --v44;
        }

        while (v44);
      }

      v48 = sub_1D7264A5C();
      v29 = v72;
      sub_1D5CEC9A0(v72, type metadata accessor for WebEmbedDatastoreCacheKey);
      a1 = v70;
      v49 = v48 & v71;
      if (v70 >= v61)
      {
        a2 = v63;
        v50 = v73;
        v27 = v67;
        if (v49 < v61)
        {
          goto LABEL_4;
        }
      }

      else
      {
        a2 = v63;
        v50 = v73;
        v27 = v67;
        if (v49 >= v61)
        {
          goto LABEL_22;
        }
      }

      if (v70 >= v49)
      {
LABEL_22:
        if (v27 * v70 < v69 || *(a2 + 48) + v27 * v70 >= (*(a2 + 48) + v69 + v27))
        {
          swift_arrayInitWithTakeFrontToBack();
LABEL_27:
          v27 = v67;
          v50 = v73;
        }

        else if (v27 * v70 != v69)
        {
          swift_arrayInitWithTakeBackToFront();
          goto LABEL_27;
        }

        v51 = *(a2 + 56);
        v52 = (v51 + 8 * a1);
        v53 = (v51 + 8 * v50);
        if (a1 != v50 || v52 >= v53 + 1)
        {
          *v52 = *v53;
          a1 = v50;
        }
      }

LABEL_4:
      v26 = (v50 + 1) & v71;
    }

    while (((*(v66 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26) & 1) != 0);
  }

  *(v66 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v54 = *(a2 + 16);
  v55 = __OFSUB__(v54, 1);
  v56 = v54 - 1;
  if (v55)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v56;
    ++*(a2 + 36);
  }
}

uint64_t sub_1D67147F0(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    do
    {
      sub_1D5F42518(*(a2 + 48) + 40 * v7, v26);
      v11 = sub_1D7263C7C();
      result = sub_1D5F42574(v26);
      v12 = v11 & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = v15 + 40 * v4;
          v17 = (v15 + 40 * v7);
          if (v4 != v7 || v16 >= v17 + 40)
          {
            v18 = *v17;
            v19 = v17[1];
            *(v16 + 32) = *(v17 + 4);
            *v16 = v18;
            *(v16 + 16) = v19;
          }

          v20 = *(a2 + 56);
          v21 = (v20 + 32 * v4);
          v22 = (v20 + 32 * v7);
          if (v4 != v7 || v21 >= v22 + 2)
          {
            v10 = v22[1];
            *v21 = *v22;
            v21[1] = v10;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D6714994(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v7);
      result = sub_1D72649FC();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 >= v9 && v4 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v4);
          if (v4 != v7 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 8 * v4);
          v18 = (v16 + 8 * v7);
          if (v4 != v7 || v17 >= v18 + 1)
          {
            *v17 = *v18;
            v4 = v7;
          }
        }
      }

      else if (v12 >= v9 || v4 >= v12)
      {
        goto LABEL_15;
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D6714B4C(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    do
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v12 = sub_1D7264A5C();

      v13 = v12 & v8;
      if (v4 >= v9)
      {
        if (v13 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v4);
        v16 = (v14 + 16 * v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v4;
        v19 = (v17 + 40 * v7);
        if (40 * v4 < (40 * v7) || v18 >= v19 + 40 || v4 != v7)
        {
          v10 = *v19;
          v11 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v10;
          *(v18 + 16) = v11;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

void sub_1D6714D1C(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    do
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v13 = sub_1D7264A5C();

      v14 = v13 & v8;
      if (v4 >= v9)
      {
        if (v14 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v4);
        v17 = (v15 + 16 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = v18 + 56 * v4;
        v20 = (v18 + 56 * v7);
        if (v4 != v7 || v19 >= v20 + 56)
        {
          v10 = *v20;
          v11 = v20[1];
          v12 = v20[2];
          *(v19 + 48) = *(v20 + 6);
          *(v19 + 16) = v11;
          *(v19 + 32) = v12;
          *v19 = v10;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

unint64_t sub_1D6714EE0(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    while (1)
    {
      sub_1D7264A0C();
      sub_1D72621EC();

      result = sub_1D7264A5C();
      v10 = result & v8;
      if (v4 >= v9)
      {
        break;
      }

      if (v10 < v9)
      {
        goto LABEL_10;
      }

LABEL_11:
      v11 = *(a2 + 48);
      v12 = (v11 + v4);
      v13 = (v11 + v7);
      if (v4 != v7 || v12 >= v13 + 1)
      {
        *v12 = *v13;
      }

      v14 = *(a2 + 56);
      v15 = *(*(sub_1D72585BC() - 8) + 72);
      v16 = v15 * v4;
      result = v14 + v15 * v4;
      v17 = v15 * v7;
      v18 = v14 + v15 * v7 + v15;
      if (v16 < v17 || result >= v18)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v16 == v17)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v10 < v9)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v10)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D671510C(int64_t a1, uint64_t a2, uint64_t (*a3)(void), __n128 a4)
{
  v5 = a1;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (a1 + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v10 = ~v7;
    v11 = (sub_1D7263B8C() + 1) & ~v7;
    while (1)
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v12 = sub_1D7264A5C();

      v13 = v12 & v10;
      if (v5 >= v11)
      {
        break;
      }

      if (v13 < v11)
      {
        goto LABEL_10;
      }

LABEL_11:
      v14 = *(a2 + 48);
      v15 = (v14 + 16 * v5);
      v16 = (v14 + 16 * v8);
      if (v5 != v8 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(a3(0) - 8) + 72);
      v19 = v18 * v5;
      v20 = v17 + v18 * v5;
      v21 = v18 * v8;
      v22 = v17 + v18 * v8 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v10;
      if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v13 < v11)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v5 < v13)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

void sub_1D6715300(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    do
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v10 = sub_1D7264A5C();

      v11 = v10 & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v4);
        v14 = (v12 + 16 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + (v4 << 7));
        v17 = (v15 + (v7 << 7));
        if (v4 != v7 || v16 >= v17 + 128)
        {
          memmove(v16, v17, 0x80uLL);
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }
}

void sub_1D67154B0(int64_t a1, uint64_t a2, __n128 a3)
{
  v3 = a2;
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    v30 = v5;
    do
    {
      v11 = 24 * v7;
      v12 = v3;
      v13 = *(v3 + 48) + 24 * v7;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      v17 = v9;
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v16);

      sub_1D72621EC();
      v18 = sub_1D7264A5C();
      sub_1D607F09C(v14, v15);
      v9 = v17;
      v19 = v18 & v8;
      if (v4 >= v17)
      {
        if (v19 < v17)
        {
          v5 = v30;
          v3 = v12;
        }

        else
        {
          v5 = v30;
          v3 = v12;
          if (v4 >= v19)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v5 = v30;
        v3 = v12;
        if (v19 >= v9 || v4 >= v19)
        {
LABEL_11:
          v20 = *(v3 + 48);
          v21 = v20 + 24 * v4;
          v22 = (v20 + v11);
          if (24 * v4 < v11 || v21 >= v22 + 24 || v4 != v7)
          {
            v23 = *v22;
            *(v21 + 16) = *(v22 + 2);
            *v21 = v23;
          }

          v24 = *(v3 + 56);
          v25 = (v24 + 32 * v4);
          v26 = (v24 + 32 * v7);
          if (v4 != v7 || v25 >= v26 + 2)
          {
            v10 = v26[1];
            *v25 = *v26;
            v25[1] = v10;
            v4 = v7;
          }
        }
      }

      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v27 = *(v3 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v29;
    ++*(v3 + 36);
  }
}

void sub_1D67156D0(int64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    do
    {
      sub_1D7264A0C();

      sub_1D72621EC();
      v12 = sub_1D7264A5C();

      v13 = v12 & v8;
      if (v4 >= v9)
      {
        if (v13 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 16 * v4);
        v16 = (v14 + 16 * v7);
        if (v4 != v7 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = v17 + 40 * v4;
        v19 = (v17 + 40 * v7);
        if (v4 != v7 || v18 >= v19 + 40)
        {
          v10 = *v19;
          v11 = v19[1];
          *(v18 + 32) = *(v19 + 4);
          *v18 = v10;
          *(v18 + 16) = v11;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_1D671588C(unint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v7);
      result = sub_1D72649FC();
      v12 = result & v8;
      if (v4 >= v9)
      {
        if (v12 < v9 || v4 < v12)
        {
          goto LABEL_5;
        }
      }

      else if (v12 < v9 && v4 < v12)
      {
        goto LABEL_5;
      }

      v15 = (v10 + 8 * v4);
      if (v4 != v7 || v15 >= v11 + 1)
      {
        *v15 = *v11;
      }

      v16 = *(a2 + 56);
      result = v16 + 16 * v4;
      if (v4 < v7 || result >= v16 + 16 * v7 + 16)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (v4 == v7)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1D6715A1C(int64_t a1, uint64_t a2)
{
  v4 = sub_1D7263FCC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = sub_1D7263B8C();
    v14 = v12;
    v39 = (v13 + 1) & v12;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v40 = *(v15 + 56);
    v37 = (v15 - 8);
    v38 = v16;
    do
    {
      v17 = v9;
      v18 = v40 * v11;
      v19 = v14;
      v20 = v15;
      v38(v8, *(a2 + 48) + v40 * v11, v4);
      v21 = sub_1D7261E7C();
      (*v37)(v8, v4);
      v14 = v19;
      v22 = v21 & v19;
      if (a1 >= v39)
      {
        if (v22 >= v39 && a1 >= v22)
        {
LABEL_15:
          v25 = *(a2 + 48);
          v26 = v25 + v40 * a1;
          v27 = v25 + v18 + v40;
          v28 = v40 * a1 < v18 || v26 >= v27;
          v15 = v20;
          if (v28)
          {
            swift_arrayInitWithTakeFrontToBack();
            v14 = v19;
            v9 = v17;
          }

          else
          {
            v29 = v40 * a1 == v18;
            v9 = v17;
            if (!v29)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v19;
            }
          }

          v30 = *(a2 + 56);
          v31 = (v30 + 32 * a1);
          v32 = (v30 + 32 * v11);
          if (a1 != v11 || v31 >= v32 + 2)
          {
            v33 = v32[1];
            *v31 = *v32;
            v31[1] = v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v22 >= v39 || a1 >= v22)
      {
        goto LABEL_15;
      }

      v15 = v20;
      v9 = v17;
LABEL_4:
      v11 = (v11 + 1) & v14;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

uint64_t sub_1D6715CD0(uint64_t result, uint64_t a2, __n128 a3)
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = ~v6;
    v9 = (sub_1D7263B8C() + 1) & ~v6;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v7);
      sub_1D7264A0C();
      MEMORY[0x1DA6FC0B0](v10);
      result = sub_1D7264A5C();
      v11 = result & v8;
      if (v4 >= v9)
      {
        if (v11 < v9)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v9)
      {
        goto LABEL_10;
      }

      if (v4 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v4);
        v14 = (v12 + 8 * v7);
        if (v4 != v7 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v4);
        v17 = (v15 + 8 * v7);
        if (v4 != v7 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v4 = v7;
        }
      }

LABEL_4:
      v7 = (v7 + 1) & v8;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1D6715E64@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  sub_1D6716D14(0);
  v5 = *(v4 + 48);
  sub_1D6716C48(0);
  v8 = *a1;
  v7 = a1[1];
  sub_1D5BE73BC(a1 + v5, a2 + *(v6 + 48), type metadata accessor for FeedClusteringOptions);
  *a2 = v8;
  a2[1] = v7;
}

void sub_1D6715EEC(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v62 = a5;
  v9 = type metadata accessor for FeedClusteringOptions(0);
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v51 = v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v50 - v14;
  sub_1D5CEE544(0, &unk_1EDF054A0, sub_1D6716C48, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v16 - 8, v17);
  v19 = (v50 - v18);
  v20 = -1 << *(a1 + 32);
  v21 = ~v20;
  v22 = *(a1 + 64);
  v23 = -v20;
  v55 = a1;
  v56 = a1 + 64;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  else
  {
    v24 = -1;
  }

  v57 = v21;
  v58 = 0;
  v59 = v24 & v22;
  v60 = a2;
  v61 = a3;

  v50[1] = a3;

  sub_1D6F5B930(v19);
  sub_1D6716C48(0);
  v26 = v25;
  v27 = *(v25 - 8);
  v28 = *(v27 + 48);
  v52 = v27 + 48;
  v53 = v28;
  for (i = v28(v19, 1, v25); ; i = v53(v19, 1, v26))
  {
    if (i == 1)
    {
      sub_1D5B87E38(v55);

      return;
    }

    v33 = *v19;
    v32 = v19[1];
    v34 = v15;
    sub_1D5BE755C(v19 + *(v26 + 48), v15, type metadata accessor for FeedClusteringOptions);
    v35 = *v62;
    v37 = sub_1D5B69D90(v33, v32);
    v38 = v35[2];
    v39 = (v36 & 1) == 0;
    v40 = v38 + v39;
    if (__OFADD__(v38, v39))
    {
      break;
    }

    v41 = v36;
    if (v35[3] >= v40)
    {
      if ((a4 & 1) == 0)
      {
        sub_1D6D83190();
      }
    }

    else
    {
      sub_1D6D6F590(v40, a4 & 1);
      v42 = sub_1D5B69D90(v33, v32);
      if ((v41 & 1) != (v43 & 1))
      {
        goto LABEL_20;
      }

      v37 = v42;
    }

    v44 = *v62;
    if (v41)
    {
      v30 = *(v54 + 72) * v37;
      v31 = v51;
      sub_1D5BE73BC(v44[7] + v30, v51, type metadata accessor for FeedClusteringOptions);
      v15 = v34;
      sub_1D5CEC9A0(v34, type metadata accessor for FeedClusteringOptions);

      sub_1D6716CB0(v31, v44[7] + v30);
    }

    else
    {
      v44[(v37 >> 6) + 8] |= 1 << v37;
      v45 = (v44[6] + 16 * v37);
      *v45 = v33;
      v45[1] = v32;
      v46 = v44[7] + *(v54 + 72) * v37;
      v15 = v34;
      sub_1D5BE755C(v34, v46, type metadata accessor for FeedClusteringOptions);
      v47 = v44[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_19;
      }

      v44[2] = v49;
    }

    sub_1D6F5B930(v19);
    a4 = 1;
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_1D726493C();
  __break(1u);
}

uint64_t sub_1D67162DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1D671633C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5CEE544(0, a3, a4, MEMORY[0x1E69E6720]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_1D67163E4(uint64_t a1)
{
  sub_1D6716898(319, &qword_1EDF3C7C0, MEMORY[0x1E69E6530], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1D5CEE544(319, &qword_1EDF188B0, MEMORY[0x1E69E34A8], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1D5CEE544(319, qword_1EDF35A50, type metadata accessor for FeedGroupBundleArticleQuotas, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1D5CEE544(319, &qword_1EDF1B808, sub_1D5CEE608, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1D6716898(319, qword_1EDF351C8, &type metadata for FeedGroupTopicDiversityRequirements, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1D6716898(319, &unk_1EDF3C800, MEMORY[0x1E69E63B0], MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1D5CEE544(319, &qword_1EDF18910, MEMORY[0x1E69E3480], MEMORY[0x1E69E6720]);
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

void sub_1D6716678(uint64_t a1)
{
  sub_1D6716898(319, &qword_1EDF052B0, &type metadata for FeedScoredItem, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1D609C43C(319);
    if (v2 <= 0x3F)
    {
      sub_1D5B5534C(319, &unk_1EDF1A990, &protocolRef_FCCoreConfiguration);
      if (v3 <= 0x3F)
      {
        sub_1D67168E8(319, &qword_1EDF05628, sub_1D5BAFAD8);
        if (v4 <= 0x3F)
        {
          sub_1D5CEE544(319, qword_1EDF14468, type metadata accessor for FeedClusteringOptions, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1D67168E8(319, &qword_1EDF057F8, type metadata accessor for FeedClusteringOptions);
            if (v6 <= 0x3F)
            {
              sub_1D5B81B04();
              if (v7 <= 0x3F)
              {
                sub_1D671694C();
                if (v8 <= 0x3F)
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

void sub_1D6716898(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1D67168E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D7261E1C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D671694C()
{
  result = qword_1EDF13DF8;
  if (!qword_1EDF13DF8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF13DF8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FeedClusteringRequest.ChannelClusteringOption(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 65282;
  if (a2 + 65282 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 16)) - 65282;
  }

  if (v4 == 2)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 16)) - 65282;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

_WORD *storeEnumTagSinglePayload for FeedClusteringRequest.ChannelClusteringOption(_WORD *result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 65282;
  if (a3 + 65282 <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 16) + 1;
    *result = a2 - 254;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    result[1] = 0;
  }

  else if (v5)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D6716B18(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_WORD *sub_1D6716B34(_WORD *result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
  }

  else if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

unint64_t sub_1D6716B68()
{
  result = qword_1EDF3C3E0;
  if (!qword_1EDF3C3E0)
  {
    sub_1D72585BC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF3C3E0);
  }

  return result;
}

unint64_t sub_1D6716BC0()
{
  result = qword_1EDF053F0;
  if (!qword_1EDF053F0)
  {
    sub_1D5CEE544(255, &qword_1EDF05400, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF053F0);
  }

  return result;
}

void sub_1D6716C48(uint64_t a1)
{
  if (!qword_1EDF054B0)
  {
    type metadata accessor for FeedClusteringOptions(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF054B0);
    }
  }
}

uint64_t sub_1D6716CB0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeedClusteringOptions(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D6716D14(uint64_t a1)
{
  if (!qword_1EDF05540)
  {
    type metadata accessor for FeedClusteringOptions(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF05540);
    }
  }
}

void sub_1D6716D88()
{
  v1 = *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_isDiffSelected);
  sub_1D5B66EF4(0, &qword_1EDF194C0, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D72816D0;
  v3 = objc_opt_self();
  if (v1 == 1)
  {
    v4 = v3;
    *(v2 + 32) = [v3 whiteColor];
    *(v2 + 40) = [v4 systemGreenColor];
    sub_1D5C0B9F0();
    v5 = sub_1D726265C();

    v6 = [objc_opt_self() configurationWithPaletteColors_];

    v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_diffButton);
    v8 = sub_1D726203C();
    v9 = [objc_opt_self() systemImageNamed_];

    if (v9)
    {
      goto LABEL_5;
    }
  }

  else
  {
    v10 = v3;
    *(v2 + 32) = [v3 systemGray2Color];
    *(v2 + 40) = [v10 systemGray2Color];
    sub_1D5C0B9F0();
    v11 = sub_1D726265C();

    v6 = [objc_opt_self() configurationWithPaletteColors_];

    v7 = *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_diffButton);
    v12 = sub_1D726203C();
    v9 = [objc_opt_self() systemImageNamed_];

    if (v9)
    {
LABEL_5:
      v13 = [v9 imageWithConfiguration_];

      goto LABEL_7;
    }
  }

  v13 = 0;
LABEL_7:
  [v7 setImage:v13 forState:0];
}

char *sub_1D6717190(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_onDiffTap;
  sub_1D5B66EF4(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *&v2[v5] = [objc_allocWithZone(v6) init];
  v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_showDiff] = 1;
  v2[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_isDiffSelected] = 0;
  v7 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_diffButton;
  sub_1D725DB3C();
  *&v2[v7] = [swift_getObjCClassFromMetadata() buttonWithType_];
  if (a2)
  {
    v8 = sub_1D726203C();
  }

  else
  {
    v8 = 0;
  }

  v29.receiver = v2;
  v29.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v29, sel_initWithStyle_reuseIdentifier_, 3, v8);

  v10 = objc_allocWithZone(MEMORY[0x1E69DD250]);
  v11 = v9;
  v12 = [v10 init];
  [v11 setSelectedBackgroundView_];

  v13 = [v11 selectedBackgroundView];
  if (v13)
  {
    v14 = v13;
    v15 = [objc_opt_self() clearColor];
    [v14 setBackgroundColor_];
  }

  v16 = objc_opt_self();
  v17 = v11;
  v18 = [v16 systemBlueColor];
  [v17 setTintColor_];

  v19 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_diffButton;
  v20 = *&v17[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_diffButton];
  v21 = sub_1D726203C();
  v22 = [objc_opt_self() systemImageNamed_];

  [v20 setImage:v22 forState:0];
  [*&v17[v19] setFrame_];
  [*&v17[v19] setContentHorizontalAlignment_];
  [*&v17[v19] setContentVerticalAlignment_];
  v23 = [*&v17[v19] imageView];
  if (v23)
  {
    v24 = v23;
    [v23 setContentMode_];
  }

  [v17 setEditingAccessoryView_];

  v25 = *&v17[v19];
  v26 = *&v17[OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_onDiffTap];
  v27 = v25;
  sub_1D725F67C();

  return v17;
}

void sub_1D67174F4()
{
  v1 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_onDiffTap;
  sub_1D5B66EF4(0, &qword_1EDF3B450, MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69D8770]);
  *(v0 + v1) = [objc_allocWithZone(v2) init];
  *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_showDiff) = 1;
  *(v0 + OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_isDiffSelected) = 0;
  v3 = OBJC_IVAR____TtC8NewsFeed35DebugFormatUploadEntryTableViewCell_diffButton;
  sub_1D725DB3C();
  *(v0 + v3) = [swift_getObjCClassFromMetadata() buttonWithType_];
  sub_1D726402C();
  __break(1u);
}

void *WebEmbedDataSourceService.__allocating_init(appConfigurationManager:resourceService:sceneStateManager:)(uint64_t a1, void *a2, void *a3)
{
  swift_allocObject();
  v6 = sub_1D5B5F93C(a1, a2, a3);
  swift_unknownObjectRelease();
  return v6;
}

void *WebEmbedDataSourceService.init(appConfigurationManager:resourceService:sceneStateManager:)(uint64_t a1, void *a2, void *a3)
{
  v3 = sub_1D5B5F93C(a1, a2, a3);
  swift_unknownObjectRelease();
  return v3;
}

uint64_t WebEmbedDataSourceService.fetchDataVisualizationsConfiguration()()
{
  sub_1D5B5FBFC();
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  v1 = sub_1D725BB6C();

  return v1;
}

uint64_t WebEmbedDataSourceService.unsafeFetchDataVisualizationsConfiguration()()
{

  sub_1D725B96C();

  if (v2 == 255)
  {
    return sub_1D725AD2C();
  }

  if (v2)
  {
    sub_1D6718004(v1, v2);
    return sub_1D725AD2C();
  }

  sub_1D5B5FC80(0, &unk_1EDF3B960, sub_1D5B5FBFC, MEMORY[0x1E69D6B18]);
  swift_allocObject();
  return sub_1D725BB1C();
}

unint64_t sub_1D6717824@<X0>(unint64_t *a2@<X8>)
{
  if (qword_1EDF1BB50 != -1)
  {
    swift_once();
  }

  v4 = qword_1EDFFC828;
  v5 = sub_1D7262EBC();
  sub_1D5B5FC80(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7273AE0;
  swift_getErrorValue();
  v7 = sub_1D726497C();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D5B7E2C0();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  sub_1D725C30C("Failed to fetch web embed data source configuration; error=%{public}@", 69, 2, &dword_1D5B42000, v4, v5, v6);

  result = sub_1D605ACB8(MEMORY[0x1E69E7CC0]);
  *a2 = result;
  return result;
}

uint64_t sub_1D6717980(uint64_t a1)
{
  sub_1D5C483D4();
  sub_1D725BDCC();

  v1 = sub_1D725B92C();
  sub_1D5F7DC80();
  sub_1D725BA7C();

  v2 = sub_1D725B92C();
  sub_1D5B5FBFC();
  v3 = sub_1D725BA8C();

  return v3;
}

uint64_t sub_1D6717A84(id *a1, void *a2)
{
  v3 = *a1;
  if ([*a1 respondsToSelector_])
  {
    v4 = [v3 webEmbedDataSourcesConfigurationResourceId];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1D726207C();
      v8 = v7;

      if (v8)
      {
        v9 = HIBYTE(v8) & 0xF;
        if ((v8 & 0x2000000000000000) == 0)
        {
          v9 = v6 & 0xFFFFFFFFFFFFLL;
        }

        if (v9)
        {
          v10 = a2[6];
          v11 = a2[7];
          __swift_project_boxed_opaque_existential_1(a2 + 3, v10);
          v12 = ResourceServiceType.fetchResource(identifier:)(v6, v8, v10, v11);
          sub_1D5D25B88(v6, v8);
          return v12;
        }

        sub_1D5D25B88(v6, v8);
      }
    }
  }

  sub_1D67180E4();
  swift_allocError();
  *v14 = 0;
  return swift_willThrow();
}

uint64_t sub_1D6717B98@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_1D72585BC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v10, v11).n128_u64[0];
  v14 = v25 - v13;
  v15 = [*a1 fileURL];
  if (v15)
  {
    v16 = v15;
    sub_1D72584EC();

    (*(v6 + 32))(v14, v9, v5);
    v17 = sub_1D72585DC();
    if (v2)
    {
      return (*(v6 + 8))(v14, v5);
    }

    else
    {
      v21 = v17;
      v22 = v18;
      sub_1D725A6CC();
      swift_allocObject();
      sub_1D725A6BC();
      sub_1D6718138();
      sub_1D725A69C();

      v25[1] = v26;
      sub_1D613C260();
      v25[0] = v23;
      sub_1D5B63454(&qword_1EC88A390, 255, sub_1D613C260, MEMORY[0x1E69E6328]);
      v28 = a2;
      sub_1D671818C();
      v24 = sub_1D72623BC();

      v26 = v24;
      v27 = 0;

      sub_1D725B97C();

      sub_1D5B952F8(v21, v22);
      result = (*(v6 + 8))(v14, v5);
      *v28 = v24;
    }
  }

  else
  {
    sub_1D67180E4();
    swift_allocError();
    *v20 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t WebEmbedDataSourceService.deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return v0;
}

uint64_t WebEmbedDataSourceService.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1D6717F24()
{
  sub_1D5B5FBFC();
  sub_1D725BDCC();
  v0 = sub_1D725B92C();
  v1 = sub_1D725BB6C();

  return v1;
}

double sub_1D6718004(uint64_t a1, char a2)
{
  if (a2 != -1)
  {
    return j__swift_bridgeObjectRelease(a1);
  }

  return result;
}

unint64_t sub_1D67180E4()
{
  result = qword_1EC88A378;
  if (!qword_1EC88A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A378);
  }

  return result;
}

unint64_t sub_1D6718138()
{
  result = qword_1EC88A380;
  if (!qword_1EC88A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A380);
  }

  return result;
}

unint64_t sub_1D671818C()
{
  result = qword_1EC88A398;
  if (!qword_1EC88A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A398);
  }

  return result;
}

uint64_t sub_1D67181F8()
{
  if (v0[14])
  {
    v1 = v0[13];
  }

  else
  {
    v1 = sub_1D6E8DD40(v0[2], v0[3]);
    v0[13] = v1;
    v0[14] = v2;
  }

  return v1;
}

uint64_t sub_1D6718274()
{

  sub_1D5D25B88(*(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t sub_1D67182F0()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy110_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 94) = *(a2 + 94);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1D6718378(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 110))
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

uint64_t sub_1D67183C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 108) = 0;
    *(result + 104) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 110) = 1;
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

    *(result + 110) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D6718430(char a1)
{
  result = 0x696669746E656469;
  switch(a1)
  {
    case 1:
      result = 1701667182;
      break;
    case 2:
      result = 0x65746152776F6C66;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      result = 0x7974696C617571;
      break;
    case 5:
      result = 0x79676F6C6F746E6FLL;
      break;
    case 6:
      result = 0x52746E65746E6F63;
      break;
    case 7:
      result = 0x636E6176656C6572;
      break;
    case 8:
      result = 0x646567616E616DLL;
      break;
    case 9:
      result = 0x57646567616E616DLL;
      break;
    case 10:
      result = 0x6C626170756F7267;
      break;
    case 11:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000018;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D67185D0(void *a1)
{
  v3 = v1;
  sub_1D6719578(0, &qword_1EC88A3B0, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v14[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67194BC();
  sub_1D7264B5C();
  v14[31] = 0;
  sub_1D72643FC();
  if (!v2)
  {
    v14[30] = 1;
    sub_1D726437C();
    v14[29] = 2;
    sub_1D726439C();
    v14[28] = 3;
    sub_1D726439C();
    v14[27] = 4;
    sub_1D726439C();
    v14[26] = 5;
    sub_1D72643AC();
    v11 = *(v3 + 96);
    v14[25] = 6;
    v14[24] = v11;
    sub_1D72643CC();
    v12 = *(v3 + 104);
    v14[23] = 7;
    v14[20] = v12;
    sub_1D72643CC();
    v14[19] = 8;
    sub_1D726440C();
    v14[18] = 9;
    sub_1D726440C();
    v14[17] = 10;
    sub_1D726440C();
    v14[16] = 11;
    sub_1D726440C();
    v14[15] = 12;
    sub_1D726440C();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1D67188F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D67189FC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6718918(uint64_t a1)
{
  v2 = sub_1D67194BC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6718954(uint64_t a1)
{
  v2 = sub_1D67194BC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1D6718990@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1D6718E44(a2, v7);
  if (!v2)
  {
    v5 = v8[0];
    *(a1 + 64) = v7[4];
    *(a1 + 80) = v5;
    *(a1 + 94) = *(v8 + 14);
    v6 = v7[1];
    *a1 = v7[0];
    *(a1 + 16) = v6;
    result = v7[3];
    *(a1 + 32) = v7[2];
    *(a1 + 48) = result;
  }

  return result;
}

uint64_t sub_1D67189FC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65746152776F6C66 && a2 == 0xE800000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D73D2B00 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7974696C617571 && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x79676F6C6F746E6FLL && a2 == 0xED00006C6576654CLL || (sub_1D72646CC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x52746E65746E6F63 && a2 == 0xED0000676E697461 || (sub_1D72646CC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x636E6176656C6572 && a2 == 0xEF676E6974615265 || (sub_1D72646CC() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x646567616E616DLL && a2 == 0xE700000000000000 || (sub_1D72646CC() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x57646567616E616DLL && a2 == 0xED000072656E6E69 || (sub_1D72646CC() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6C626170756F7267 && a2 == 0xE900000000000065 || (sub_1D72646CC() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001D73D2B20 == a2 || (sub_1D72646CC() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001D73D2B40 == a2)
  {

    return 12;
  }

  else
  {
    v6 = sub_1D72646CC();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_1D6718E44@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1D6719578(0, &qword_1EC88A3A0, MEMORY[0x1E69E6F48]);
  v93 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v29 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D67194BC();
  sub_1D7264B0C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v6;
  v46 = a2;
  LOBYTE(v53[0]) = 0;
  v11 = sub_1D72642BC();
  v45 = v12;
  LOBYTE(v53[0]) = 1;
  *&v44 = sub_1D726422C();
  *(&v44 + 1) = v13;
  LOBYTE(v53[0]) = 2;
  v43 = sub_1D726424C();
  v92 = v14 & 1;
  LOBYTE(v53[0]) = 3;
  v42 = sub_1D726424C();
  v90 = v15 & 1;
  LOBYTE(v53[0]) = 4;
  v41 = sub_1D726424C();
  v88 = v16 & 1;
  LOBYTE(v53[0]) = 5;
  v40 = sub_1D726425C();
  v86 = v17 & 1;
  LOBYTE(v53[0]) = 6;
  v39 = sub_1D726428C();
  v83 = BYTE4(v39) & 1;
  LOBYTE(v53[0]) = 7;
  v38 = sub_1D726428C();
  v80 = BYTE4(v38) & 1;
  LOBYTE(v53[0]) = 8;
  v37 = sub_1D72642CC();
  LOBYTE(v53[0]) = 9;
  v18 = sub_1D72642CC();
  LOBYTE(v53[0]) = 10;
  v19 = sub_1D72642CC();
  LOBYTE(v53[0]) = 11;
  v36 = sub_1D72642CC();
  v79 = 12;
  v35 = sub_1D72642CC();
  v33 = v19 & 1;
  v34 = v18 & 1;
  v36 &= 1u;
  v37 &= 1u;
  (*(v10 + 8))(v9, v93);
  v20 = v35 & 1;
  v30 = v35 & 1;
  *&v47 = v11;
  *(&v47 + 1) = v45;
  v48 = v44;
  *&v49 = v43;
  LODWORD(v93) = v92;
  BYTE8(v49) = v92;
  *(&v49 + 9) = *v91;
  HIDWORD(v49) = *&v91[3];
  *&v50 = v42;
  v35 = v90;
  BYTE8(v50) = v90;
  *(&v50 + 9) = *v89;
  HIDWORD(v50) = *&v89[3];
  *&v51 = v41;
  v32 = v88;
  BYTE8(v51) = v88;
  *(&v51 + 9) = *v87;
  HIDWORD(v51) = *&v87[3];
  v21 = v39;
  *&v52[0] = v40;
  v31 = v86;
  BYTE8(v52[0]) = v86;
  *(v52 + 9) = v84;
  BYTE11(v52[0]) = v85;
  HIDWORD(v52[0]) = v39;
  v22 = v83;
  LOBYTE(v52[1]) = v83;
  BYTE3(v52[1]) = v82;
  *(&v52[1] + 1) = v81;
  LODWORD(v10) = v38;
  DWORD1(v52[1]) = v38;
  v23 = v80;
  BYTE8(v52[1]) = v80;
  BYTE9(v52[1]) = v37;
  BYTE10(v52[1]) = v34;
  BYTE11(v52[1]) = v33;
  BYTE12(v52[1]) = v36;
  BYTE13(v52[1]) = v20;
  sub_1D6719510(&v47, v53);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v53[0] = v11;
  v53[1] = v45;
  v54 = v44;
  v55 = v43;
  v56 = v93;
  *v57 = *v91;
  *&v57[3] = *&v91[3];
  v58 = v42;
  v59 = v35;
  *v60 = *v89;
  *&v60[3] = *&v89[3];
  v61 = v41;
  v62 = v32;
  *&v63[3] = *&v87[3];
  *v63 = *v87;
  v64 = v40;
  v65 = v31;
  v66 = v84;
  v67 = v85;
  v68 = v21;
  v69 = v22;
  v70 = v81;
  v71 = v82;
  v72 = v10;
  v73 = v23;
  v74 = v37;
  v75 = v34;
  v76 = v33;
  v77 = v36;
  v78 = v30;
  result = sub_1D6719548(v53);
  v25 = v52[0];
  v26 = v46;
  v46[4] = v51;
  v26[5] = v25;
  *(v26 + 94) = *(v52 + 14);
  v27 = v48;
  *v26 = v47;
  v26[1] = v27;
  v28 = v50;
  v26[2] = v49;
  v26[3] = v28;
  return result;
}

unint64_t sub_1D67194BC()
{
  result = qword_1EC88A3A8;
  if (!qword_1EC88A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A3A8);
  }

  return result;
}

void sub_1D6719578(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D67194BC();
    v7 = a3(a1, &type metadata for DebugInspectionTagMetadata.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D67195F0()
{
  result = qword_1EC88A3B8;
  if (!qword_1EC88A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A3B8);
  }

  return result;
}

unint64_t sub_1D6719648()
{
  result = qword_1EC88A3C0;
  if (!qword_1EC88A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A3C0);
  }

  return result;
}

unint64_t sub_1D67196A0()
{
  result = qword_1EC88A3C8;
  if (!qword_1EC88A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A3C8);
  }

  return result;
}

uint64_t FeedCustomItem.action.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedCustomItem(0) + 20);
  v4 = type metadata accessor for FormatCustomItem.Resolved(0);
  return sub_1D6719858(v3 + *(v4 + 24), a1, sub_1D631F8C0);
}

uint64_t FeedCustomItem.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedCustomItem(0) + 20) + 16);

  return v1;
}

uint64_t FeedCustomItem.options.getter()
{
  type metadata accessor for FeedCustomItem(0);
  type metadata accessor for FormatCustomItem.Resolved(0);
}

uint64_t FeedCustomItem.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D6719858(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t FeedCustomItem.dismissingIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedCustomItem(0) + 24));

  return v1;
}

void FeedCustomItem.dismissingIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for FeedCustomItem(0) + 24));

  *v5 = a1;
  v5[1] = a2;
}

uint64_t FeedCustomItem.init(identifier:customItem:dismissingIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v12 = type metadata accessor for FeedCustomItem(0);
  v13 = (a6 + *(v12 + 24));
  *a6 = a1;
  a6[1] = a2;
  result = sub_1D6719A04(a3, a6 + *(v12 + 20));
  *v13 = a4;
  v13[1] = a5;
  return result;
}

uint64_t sub_1D6719A04(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatCustomItem.Resolved(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FeedCustomItem.dragItem.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D725F84C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1D6719ADC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1D725F84C();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t FeedCustomItem.kind.getter@<X0>(void *a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for FeedCustomItem(0) + 20);
  v4 = *(v3 + 24);
  *a1 = *(v3 + 16);
  a1[1] = v4;
}

uint64_t sub_1D6719BB8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2 + *(a1 + 20);
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t FeedCustomItem.debugIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for FeedCustomItem(0) + 20));

  return v1;
}

BOOL FeedCustomItem.isSelectable.getter(__n128 a1)
{
  sub_1D631F8C0(0, a1);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1 + *(type metadata accessor for FeedCustomItem(0) + 20);
  v7 = type metadata accessor for FormatCustomItem.Resolved(0);
  sub_1D6719858(v6 + *(v7 + 24), v5, sub_1D631F8C0);
  v8 = type metadata accessor for FormatCustomItem.Action(0);
  v9 = (*(*(v8 - 8) + 48))(v5, 1, v8) != 1;
  sub_1D671A250(v5, v10);
  return v9;
}

BOOL sub_1D6719D30(uint64_t a1, __n128 a2)
{
  sub_1D631F8C0(0, a2);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v2 + *(a1 + 20);
  v9 = type metadata accessor for FormatCustomItem.Resolved(0);
  sub_1D6719858(v8 + *(v9 + 24), v7, sub_1D631F8C0);
  v10 = type metadata accessor for FormatCustomItem.Action(0);
  v11 = (*(*(v10 - 8) + 48))(v7, 1, v10) != 1;
  sub_1D671A250(v7, v12);
  return v11;
}

uint64_t sub_1D6719EA4@<X0>(uint64_t (*a1)(void)@<X0>, unsigned int *a2@<X1>, unsigned int *a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  sub_1D631F8C0(0, a5);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = v5 + *(type metadata accessor for FeedCustomItem(0) + 20);
  v15 = type metadata accessor for FormatCustomItem.Resolved(0);
  sub_1D6719858(v14 + *(v15 + 24), v13, sub_1D631F8C0);
  v16 = type metadata accessor for FormatCustomItem.Action(0);
  LODWORD(v14) = (*(*(v16 - 8) + 48))(v13, 1, v16);
  sub_1D671A250(v13, v17);
  v18 = a1(0);
  if (v14 == 1)
  {
    v19 = a2;
  }

  else
  {
    v19 = a3;
  }

  return (*(*(v18 - 8) + 104))(a4, *v19, v18);
}

uint64_t sub_1D671A01C@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X2>, unsigned int *a3@<X3>, unsigned int *a4@<X4>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  sub_1D631F8C0(0, a6);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = v6 + *(a1 + 20);
  v17 = type metadata accessor for FormatCustomItem.Resolved(0);
  sub_1D6719858(v16 + *(v17 + 24), v15, sub_1D631F8C0);
  v18 = type metadata accessor for FormatCustomItem.Action(0);
  LODWORD(v16) = (*(*(v18 - 8) + 48))(v15, 1, v18);
  sub_1D671A250(v15, v19);
  v20 = a2(0);
  if (v16 == 1)
  {
    v21 = a3;
  }

  else
  {
    v21 = a4;
  }

  return (*(*(v20 - 8) + 104))(a5, *v21, v20);
}

uint64_t _s8NewsFeed0B10CustomItemV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (sub_1D72646CC() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for FeedCustomItem(0);
  if ((_s8NewsFeed16FormatCustomItemV8ResolvedV2eeoiySbAE_AEtFZ_0((a1 + *(v5 + 20)), (a2 + *(v5 + 20))) & 1) == 0)
  {
    return 0;
  }

  v6 = *(v5 + 24);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  result = (v8 | v10) == 0;
  if (v8)
  {
    v12 = v10 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (*v7 == *v9 && v8 == v10)
    {
      return 1;
    }

    else
    {

      return sub_1D72646CC();
    }
  }

  return result;
}

uint64_t sub_1D671A250(uint64_t a1, __n128 a2)
{
  sub_1D631F8C0(0, a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D671A2AC(uint64_t a1)
{
  result = sub_1D671A2D4();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1D671A2D4()
{
  result = qword_1EDF15720;
  if (!qword_1EDF15720)
  {
    type metadata accessor for FeedCustomItem(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF15720);
  }

  return result;
}

id sub_1D671A398()
{
  v1 = MEMORY[0x1E6968FB0];
  sub_1D5B546D8(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v6, v7).n128_u64[0];
  v10 = v32 - v9;
  v11 = *(v0 + OBJC_IVAR____TtC8NewsFeed28RecipeLinkPresentationSource_recipe);
  v12 = [v11 title];
  v13 = sub_1D726207C();
  v15 = v14;

  v16 = [v11 sourceChannel];
  v32[0] = v13;
  v32[1] = v15;
  MEMORY[0x1DA6F9910](2108704, 0xE300000000000000);
  v17 = [v16 displayName];
  v18 = sub_1D726207C();
  v20 = v19;

  MEMORY[0x1DA6F9910](v18, v20);

  sub_1D671A698(v11, v10);
  v21 = sub_1D671A878(v11);
  v22 = sub_1D671AA6C(v11);
  sub_1D5C00DDC(v10, v5, &qword_1EDF45B40, v1);
  v23 = v21;
  v24 = v22;
  v25 = sub_1D726203C();

  v26 = sub_1D72585BC();
  v27 = *(v26 - 8);
  v28 = 0;
  if ((*(v27 + 48))(v5, 1, v26) != 1)
  {
    v28 = sub_1D725844C();
    (*(v27 + 8))(v5, v26);
  }

  v29 = [objc_allocWithZone(NELinkMetadataSource) initWithTitle:v25 url:v28 imageProvider:v23 iconProvider:v24];

  v30 = [v29 linkMetadata];
  swift_unknownObjectRelease();

  sub_1D5B6EFC0(v10, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  return v30;
}

uint64_t sub_1D671A698@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 identifier];
  if (!v4)
  {
    sub_1D726207C();
    v4 = sub_1D726203C();
  }

  v5 = [a1 articles];
  sub_1D5B5D6A0();
  v6 = sub_1D726267C();

  if (!(v6 >> 62))
  {
    result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_5;
    }

LABEL_11:
    v9 = 0;
    goto LABEL_12;
  }

  result = sub_1D7263BFC();
  if (!result)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v8 = MEMORY[0x1DA6FB460](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v8 = *(v6 + 32);
    swift_unknownObjectRetain();
  }

  v9 = [v8 identifier];
  swift_unknownObjectRelease();
  if (!v9)
  {
    sub_1D726207C();
    v9 = sub_1D726203C();
LABEL_12:
  }

  v10 = [objc_opt_self() nss:v4 NewsURLForRecipeID:v9 articleID:?];

  sub_1D72584EC();
  v11 = sub_1D72585BC();
  v12 = *(*(v11 - 8) + 56);

  return v12(a2, 0, 1, v11);
}

id sub_1D671A878(void *a1)
{
  v2 = sub_1D725C2FC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  sub_1D725C2DC();
  sub_1D725C2CC();
  (*(v3 + 8))(v6, v2);
  v8 = sub_1D726203C();

  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1D671B800;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6F596C0;
  aBlock[3] = &block_descriptor_16_1;
  v11 = _Block_copy(aBlock);
  v12 = a1;

  [v7 registerItemForTypeIdentifier:v8 loadHandler:v11];
  _Block_release(v11);

  return v7;
}

id sub_1D671AA6C(void *a1)
{
  v2 = v1;
  v4 = sub_1D725C2FC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_allocWithZone(MEMORY[0x1E696ACA0]) init];
  sub_1D725C2DC();
  sub_1D725C2CC();
  (*(v5 + 8))(v8, v4);
  v10 = sub_1D726203C();

  v11 = swift_allocObject();
  *(v11 + 16) = v2;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1D671B6C0;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6F596C0;
  aBlock[3] = &block_descriptor_37;
  v12 = _Block_copy(aBlock);
  v13 = v2;
  v14 = a1;

  [v9 registerItemForTypeIdentifier:v10 loadHandler:v12];
  _Block_release(v12);

  return v9;
}

void sub_1D671AC40(void (*a1)(void, void), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  sub_1D5B546D8(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v12 = &v18 - v11;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    v15 = sub_1D726294C();
    (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v14;
    v16[5] = a6;
    v16[6] = a1;
    v16[7] = a2;
    v17 = a6;
    sub_1D5DEA510(a1, a2);
    sub_1D6BD1334(0, 0, v12, &unk_1D72E1700, v16);
  }

  else if (a1)
  {
    a1(0, 0);
  }
}

uint64_t sub_1D671ADBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D671ADE0, 0, 0);
}

uint64_t sub_1D671ADE0()
{
  sub_1D5C00DDC(v0[7] + OBJC_IVAR____TtC8NewsFeed28RecipeLinkPresentationSource_imageShareAttributeProvider, (v0 + 2), &unk_1EDF3CFB0, sub_1D671B79C);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v8 = (*(v2 + 8) + **(v2 + 8));
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1D671AFBC;
    v4 = v0[8];

    return v8(v4, v1, v2);
  }

  else
  {
    sub_1D5B6EFC0((v0 + 2), &unk_1EDF3CFB0, sub_1D671B79C);
    v6 = v0[9];
    if (v6)
    {
      v6(0, 0);
    }

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D671AFBC(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D671B938, 0, 0);
}

double sub_1D671B0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  sub_1D5B546D8(0, &qword_1EDF1ADB0, MEMORY[0x1E69E85F0]);
  MEMORY[0x1EEE9AC00](v10 - 8, v11);
  v13 = &v19 - v12;
  v14 = sub_1D726294C();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a5;
  v15[5] = a6;
  v15[6] = a1;
  v15[7] = a2;
  v16 = a5;
  v17 = a6;
  sub_1D5DEA510(a1, a2);
  sub_1D6BD1334(0, 0, v13, &unk_1D72E16F0, v15);

  return result;
}

uint64_t sub_1D671B1FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D671B220, 0, 0);
}

uint64_t sub_1D671B220()
{
  sub_1D5C00DDC(v0[7] + OBJC_IVAR____TtC8NewsFeed28RecipeLinkPresentationSource_imageShareAttributeProvider, (v0 + 2), &unk_1EDF3CFB0, sub_1D671B79C);
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[6];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v8 = (*(v2 + 16) + **(v2 + 16));
    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_1D671B3FC;
    v4 = v0[8];

    return v8(v4, v1, v2);
  }

  else
  {
    sub_1D5B6EFC0((v0 + 2), &unk_1EDF3CFB0, sub_1D671B79C);
    v6 = v0[9];
    if (v6)
    {
      v6(0, 0);
    }

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1D671B3FC(uint64_t a1)
{
  *(*v1 + 96) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D671B4FC, 0, 0);
}

uint64_t sub_1D671B4FC()
{
  v1 = *(v0 + 96);
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  if (v1)
  {
    v2 = UIImagePNGRepresentation(*(v0 + 96));
    if (v2)
    {
      v3 = v2;
      v4 = sub_1D725867C();
      v6 = v5;

      v7 = sub_1D725865C();
      sub_1D5B952F8(v4, v6);
    }

    else
    {
      v7 = 0;
    }

    v8 = *(v0 + 96);
    v9 = *(v0 + 72);
    if (v9)
    {
      goto LABEL_8;
    }

LABEL_5:
    v10 = v8;
    v8 = v7;
    goto LABEL_9;
  }

  v7 = 0;
  v8 = 0;
  v9 = *(v0 + 72);
  if (!v9)
  {
    goto LABEL_5;
  }

LABEL_8:
  v10 = v7;
  v9(v7, 0);

LABEL_9:
  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D671B6C8(uint64_t a1)
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
  v10[1] = sub_1D5B64684;

  return sub_1D671B1FC(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1D671B79C()
{
  result = qword_1EDF3CFC0;
  if (!qword_1EDF3CFC0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EDF3CFC0);
  }

  return result;
}

uint64_t objectdestroy_4Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D671B860(uint64_t a1)
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
  v10[1] = sub_1D5B64680;

  return sub_1D671ADBC(a1, v4, v5, v6, v7, v9, v8);
}

void (*FormatVideoPlayerProvider.load(with:)(uint64_t (*a1)(char *)))()
{
  v2 = v1;
  sub_1D5B5472C(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8, v5);
  v7 = &v15 - v6;
  v8 = v1 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_data;
  v9 = *(type metadata accessor for FormatVideoPlayerData(0) + 36);
  v10 = sub_1D72585BC();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v7, v8 + v9, v10);
  (*(v11 + 56))(v7, 0, 1, v10);
  v12 = a1(v7);
  sub_1D5E3E404(v7);
  v13 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_metadata;
  swift_beginAccess();
  *(v2 + v13) = v12;
  swift_unknownObjectRelease();
  return nullsub_1;
}

uint64_t sub_1D671BDB0@<X0>(char *a1@<X0>, char *a2@<X8>)
{
  v3 = v2;
  v6 = sub_1D72585BC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 1);
  v27 = *a1;
  v12 = *(a1 + 6);
  v13 = type metadata accessor for FormatVideoPlayerData(0);
  (*(v7 + 16))(v10, &a1[*(v13 + 36)], v6);
  HIDWORD(v26) = a1[56];
  swift_unknownObjectRetain();

  [v3 time];
  v15 = sub_1D671CEF0(v14);
  if ((v15 & 0x100000000) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = v15;
  }

  [v3 timePlayed];
  v18 = sub_1D671CF80(v17);
  if (v19)
  {
    v20 = 0;
  }

  else
  {
    v20 = v18;
  }

  [v3 duration];
  v22 = sub_1D671CEF0(v21);
  if ((v22 & 0x100000000) != 0)
  {
    v23 = 0;
  }

  else
  {
    v23 = v22;
  }

  *a2 = v27;
  *(a2 + 1) = v11;
  *(a2 + 2) = v12;
  v24 = type metadata accessor for FormatVideoPlayerSession(0);
  result = (*(v7 + 32))(&a2[v24[6]], v10, v6);
  a2[v24[7]] = BYTE4(v26);
  *&a2[v24[8]] = v16;
  *&a2[v24[9]] = v20;
  *&a2[v24[10]] = v23;
  return result;
}

Swift::Void __swiftcall FormatVideoPlayerProvider.playbackReadyToStart()()
{
  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  v0 = qword_1EDFFCEB0;
  sub_1D5B5472C(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D7273AE0;
  type metadata accessor for FormatVideoPlayerData(0);
  v2 = sub_1D72583DC();
  v4 = v3;
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 64) = sub_1D5B7E2C0();
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v5 = sub_1D7262EDC();
  sub_1D725C30C("Video playback ready to start for %{public}@", 44, 2, &dword_1D5B42000, v0, v5, v1);
}

Swift::Void __swiftcall FormatVideoPlayerProvider.playbackStarted()()
{
  v1 = type metadata accessor for FormatVideoPlayerSession(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_metadata;
  swift_beginAccess();
  if (*(v0 + v9))
  {
    swift_getObjectType();
    v10 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_data;
    swift_unknownObjectRetain();
    sub_1D671BDB0((v0 + v10), v4);
    swift_unknownObjectRelease();
    sub_1D671D270(v4, v8);
    v11 = (v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator);
    v12 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 24);
    v13 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator), v12);
    (*(v13 + 96))(v8, v12, v13);
    v14 = v11[3];
    v15 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v14);
    (*(v15 + 40))(v8, v14, v15);
    sub_1D671D2D4(v8, type metadata accessor for FormatVideoPlayerSession);
  }
}

Swift::Void __swiftcall FormatVideoPlayerProvider.playbackPaused()()
{
  v1 = type metadata accessor for FormatVideoPlayerSession(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13 - v7;
  v9 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_metadata;
  swift_beginAccess();
  if (*(v0 + v9))
  {
    swift_getObjectType();
    v10 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_data;
    swift_unknownObjectRetain();
    sub_1D671BDB0((v0 + v10), v4);
    swift_unknownObjectRelease();
    sub_1D671D270(v4, v8);
    v11 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 24);
    v12 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator), v11);
    (*(v12 + 48))(v8, v11, v12);
    sub_1D671D2D4(v8, type metadata accessor for FormatVideoPlayerSession);
  }
}

Swift::Void __swiftcall FormatVideoPlayerProvider.playbackResumed()()
{
  v1 = type metadata accessor for FormatVideoPlayerSession(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_metadata;
  swift_beginAccess();
  if (*(v0 + v9))
  {
    swift_getObjectType();
    v10 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_data;
    swift_unknownObjectRetain();
    sub_1D671BDB0((v0 + v10), v4);
    swift_unknownObjectRelease();
    sub_1D671D270(v4, v8);
    v11 = (v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator);
    v12 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 24);
    v13 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator), v12);
    (*(v13 + 96))(v8, v12, v13);
    v14 = v11[3];
    v15 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v14);
    (*(v15 + 56))(v8, v14, v15);
    sub_1D671D2D4(v8, type metadata accessor for FormatVideoPlayerSession);
  }
}

Swift::Void __swiftcall FormatVideoPlayerProvider.playbackFinished()()
{
  v1 = type metadata accessor for FormatVideoPlayerSession(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_metadata;
  swift_beginAccess();
  if (*(v0 + v9))
  {
    swift_getObjectType();
    v10 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_data;
    swift_unknownObjectRetain();
    sub_1D671BDB0((v0 + v10), v4);
    swift_unknownObjectRelease();
    sub_1D671D270(v4, v8);
    v11 = (v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator);
    v12 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 24);
    v13 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator), v12);
    (*(v13 + 72))(v8, v12, v13);
    v14 = v11[3];
    v15 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v14);
    (*(v15 + 104))(v14, v15);
    sub_1D671D2D4(v8, type metadata accessor for FormatVideoPlayerSession);
  }
}

Swift::Void __swiftcall FormatVideoPlayerProvider.startedPictureInPicture()()
{
  v1 = type metadata accessor for FormatVideoPlayerSession(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v13 - v7;
  v9 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_metadata;
  swift_beginAccess();
  if (*(v0 + v9))
  {
    swift_getObjectType();
    v10 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_data;
    swift_unknownObjectRetain();
    sub_1D671BDB0((v0 + v10), v4);
    swift_unknownObjectRelease();
    sub_1D671D270(v4, v8);
    v11 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 24);
    v12 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator), v11);
    (*(v12 + 80))(v8, v11, v12);
    sub_1D671D2D4(v8, type metadata accessor for FormatVideoPlayerSession);
  }
}

Swift::Void __swiftcall FormatVideoPlayerProvider.stoppedPictureInPicture()()
{
  v1 = type metadata accessor for FormatVideoPlayerSession(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v17[-v7];
  v9 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_metadata;
  swift_beginAccess();
  if (*(v0 + v9))
  {
    swift_getObjectType();
    v10 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_data;
    swift_unknownObjectRetain();
    sub_1D671BDB0((v0 + v10), v4);
    swift_unknownObjectRelease();
    sub_1D671D270(v4, v8);
    v11 = (v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator);
    v12 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 24);
    v13 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 32);
    __swift_project_boxed_opaque_existential_1(v11, v11[3]);
    (*(v13 + 88))(v8, v12, v13);
    swift_beginAccess();
    v14 = *(v0 + v9);
    if (v14)
    {
      swift_endAccess();
      if ([v14 playbackState] != 3)
      {
        v15 = v11[3];
        v16 = v11[4];
        __swift_project_boxed_opaque_existential_1(v11, v15);
        (*(v16 + 104))(v15, v16);
      }

      sub_1D671D2D4(v8, type metadata accessor for FormatVideoPlayerSession);
    }

    else
    {
      sub_1D671D2D4(v8, type metadata accessor for FormatVideoPlayerSession);
      swift_endAccess();
    }
  }
}

id FormatVideoPlayerProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FormatVideoPlayerProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D671CEF0(double a1)
{
  v1 = a1 > 2147483650.0;
  if (a1 < -2147483650.0)
  {
    v1 = 1;
  }

  if (v1)
  {
    v2 = 0;
    return v2 | (v1 << 32);
  }

  if ((*&a1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (a1 <= -2147483650.0)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 2147483650.0)
  {
    v2 = a1;
    return v2 | (v1 << 32);
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_1D671CF80(double a1)
{
  if (fabs(a1) > 9.22337204e18)
  {
    return 0;
  }

  if (a1 <= -9.22337204e18)
  {
    __break(1u);
  }

  else if (a1 < 9.22337204e18)
  {
    return a1;
  }

  __break(1u);
  return result;
}

void _s8NewsFeed25FormatVideoPlayerProviderC17playbackInitiated16withButtonTappedySb_tF_0()
{
  v1 = v0;
  v2 = type metadata accessor for FormatVideoPlayerSession(0);
  MEMORY[0x1EEE9AC00](v2 - 8, v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - v8;
  if (qword_1EDF32A58 != -1)
  {
    swift_once();
  }

  v10 = qword_1EDFFCEB0;
  sub_1D5B5472C(0, &qword_1EDF3C5E0, sub_1D5B8EA84, MEMORY[0x1E69E6F90]);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D7273AE0;
  v12 = (v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_data);
  type metadata accessor for FormatVideoPlayerData(0);
  v13 = sub_1D72583DC();
  v15 = v14;
  *(v11 + 56) = MEMORY[0x1E69E6158];
  *(v11 + 64) = sub_1D5B7E2C0();
  *(v11 + 32) = v13;
  *(v11 + 40) = v15;
  v16 = sub_1D7262EDC();
  sub_1D725C30C("Video playback initiated for %{public}@", 39, 2, &dword_1D5B42000, v10, v16, v11);

  v17 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_metadata;
  swift_beginAccess();
  if (*(v1 + v17))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    sub_1D671BDB0(v12, v5);
    swift_unknownObjectRelease();
    sub_1D671D270(v5, v9);
    v18 = (v1 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator);
    v19 = v18[3];
    v20 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v19);
    (*(v20 + 96))(v9, v19, v20);
    v21 = v18[3];
    v22 = v18[4];
    __swift_project_boxed_opaque_existential_1(v18, v21);
    (*(v22 + 32))(v9, v21, v22);
    sub_1D671D2D4(v9, type metadata accessor for FormatVideoPlayerSession);
  }
}

uint64_t sub_1D671D270(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatVideoPlayerSession(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D671D2D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void _s8NewsFeed25FormatVideoPlayerProviderC23playbackFailedWithErroryys0J0_pSgF_0()
{
  v1 = type metadata accessor for FormatVideoPlayerSession(0);
  MEMORY[0x1EEE9AC00](v1 - 8, v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v16 - v7;
  v9 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_metadata;
  swift_beginAccess();
  if (*(v0 + v9))
  {
    swift_getObjectType();
    v10 = OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_data;
    swift_unknownObjectRetain();
    sub_1D671BDB0((v0 + v10), v4);
    swift_unknownObjectRelease();
    sub_1D671D270(v4, v8);
    v11 = (v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator);
    v12 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 24);
    v13 = *(v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator + 32);
    __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC8NewsFeed25FormatVideoPlayerProvider_coordinator), v12);
    (*(v13 + 64))(v8, v12, v13);
    v14 = v11[3];
    v15 = v11[4];
    __swift_project_boxed_opaque_existential_1(v11, v14);
    (*(v15 + 104))(v14, v15);
    sub_1D671D2D4(v8, type metadata accessor for FormatVideoPlayerSession);
  }
}

uint64_t type metadata accessor for FormatVideoPlayerProvider(uint64_t a1)
{
  result = qword_1EC88A4D0;
  if (!qword_1EC88A4D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D671D518(uint64_t a1)
{
  result = type metadata accessor for FormatVideoPlayerData(319);
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

void sub_1D671D5D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v30 = MEMORY[0x1E69E7CC0];
    sub_1D5BFC364(0, v2, 0);
    v27 = v30;
    v3 = a1 + 64;
    v4 = sub_1D7263B7C();
    v5 = 0;
    v6 = *(a1 + 36);
    v24 = v2;
    v25 = v6;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v8 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_22;
      }

      if (v6 != *(a1 + 36))
      {
        goto LABEL_23;
      }

      v26 = v5;
      v9 = (*(a1 + 48) + 16 * v4);
      v10 = (*(a1 + 56) + 16 * v4);
      v12 = *v10;
      v11 = v10[1];
      v28 = *v9;
      v29 = v9[1];
      swift_bridgeObjectRetain_n();

      MEMORY[0x1DA6F9910](8765, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v12, v11);
      MEMORY[0x1DA6F9910](34, 0xE100000000000000);

      v13 = v27;
      v15 = *(v27 + 16);
      v14 = *(v27 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D5BFC364((v14 > 1), v15 + 1, 1);
        v13 = v27;
      }

      *(v13 + 16) = v15 + 1;
      v16 = v13 + 16 * v15;
      *(v16 + 32) = v28;
      *(v16 + 40) = v29;
      v7 = 1 << *(a1 + 32);
      if (v4 >= v7)
      {
        goto LABEL_24;
      }

      v3 = a1 + 64;
      v17 = *(a1 + 64 + 8 * v8);
      if ((v17 & (1 << v4)) == 0)
      {
        goto LABEL_25;
      }

      v27 = v13;
      v6 = v25;
      if (v25 != *(a1 + 36))
      {
        goto LABEL_26;
      }

      v18 = v17 & (-2 << (v4 & 0x3F));
      if (v18)
      {
        v7 = __clz(__rbit64(v18)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v19 = v8 << 6;
        v20 = v8 + 1;
        v21 = (a1 + 72 + 8 * v8);
        while (v20 < (v7 + 63) >> 6)
        {
          v23 = *v21++;
          v22 = v23;
          v19 += 64;
          ++v20;
          if (v23)
          {
            sub_1D5C25E1C(v4, v25, 0);
            v7 = __clz(__rbit64(v22)) + v19;
            goto LABEL_4;
          }
        }

        sub_1D5C25E1C(v4, v25, 0);
      }

LABEL_4:
      v5 = v26 + 1;
      v4 = v7;
      if (v26 + 1 == v24)
      {
        return;
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
LABEL_26:
    __break(1u);
  }
}

uint64_t sub_1D671D884()
{
  if (!*(*(v0 + 32) + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1D5B69D90(0x7373616C63, 0xE500000000000000);
  v1 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    sub_1D5BF4D9C();

    v3 = sub_1D7263ACC();

    v4 = *(v3 + 16);
    if (v4)
    {
      sub_1D5BFC364(0, v4, 0);
      v5 = (v3 + 56);
      do
      {
        v6 = *(v5 - 3);
        v7 = *(v5 - 2);
        v8 = *(v5 - 1);
        v9 = *v5;

        v10 = MEMORY[0x1DA6F97E0](v6, v7, v8, v9);
        v12 = v11;

        v14 = *(v1 + 16);
        v13 = *(v1 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_1D5BFC364((v13 > 1), v14 + 1, 1);
        }

        *(v1 + 16) = v14 + 1;
        v15 = v1 + 16 * v14;
        *(v15 + 32) = v10;
        *(v15 + 40) = v12;
        v5 += 4;
        --v4;
      }

      while (v4);
    }
  }

  return v1;
}

uint64_t sub_1D671DA08()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D671DA80()
{
  result = qword_1EC88A5A0;
  if (!qword_1EC88A5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A5A0);
  }

  return result;
}

uint64_t sub_1D671DAE0()
{
  if (!*(v0 + 40))
  {
    v6 = 60;
    MEMORY[0x1DA6F9910](*(v0 + 16), *(v0 + 24));
    v4 = sub_1D671DBC4(*(v0 + 32));
    MEMORY[0x1DA6F9910](v4);

LABEL_6:
    v2 = 62;
    v3 = 0xE100000000000000;
    goto LABEL_7;
  }

  if (*(v0 + 40) != 1)
  {
    v6 = 12092;
    MEMORY[0x1DA6F9910](*(v0 + 16), *(v0 + 24));
    goto LABEL_6;
  }

  v6 = 60;
  MEMORY[0x1DA6F9910](*(v0 + 16), *(v0 + 24));
  v1 = sub_1D671DBC4(*(v0 + 32));
  MEMORY[0x1DA6F9910](v1);

  v2 = 15919;
  v3 = 0xE200000000000000;
LABEL_7:
  MEMORY[0x1DA6F9910](v2, v3);
  return v6;
}

char *sub_1D671DBC4(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    return 0;
  }

  sub_1D671D5D4(a1);
  v6[0] = v1;

  sub_1D5F81CCC(v6);

  sub_1D5BBE0A8();
  sub_1D5BB0AB8();
  v2 = sub_1D7261F3C();
  v4 = v3;

  v6[0] = 32;
  v6[1] = 0xE100000000000000;
  MEMORY[0x1DA6F9910](v2, v4);

  return v6[0];
}

uint64_t type metadata accessor for DebugJournalGroupItem(uint64_t a1)
{
  result = qword_1EC88A5A8;
  if (!qword_1EC88A5A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D671DD90(uint64_t a1)
{
  sub_1D671DEE0(319, &qword_1EC88A5B8, sub_1D5F17E28, " value ");
  if (v1 <= 0x3F)
  {
    sub_1D671DE7C();
    if (v2 <= 0x3F)
    {
      sub_1D671DEE0(319, &qword_1EC89C820, MEMORY[0x1E69D87C8], " text ");
      if (v3 <= 0x3F)
      {
        sub_1D671DF50(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_1D671DE7C()
{
  if (!qword_1EC88A5C0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC88A5C0);
    }
  }
}

void sub_1D671DEE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1D671DF50(uint64_t a1)
{
  if (!qword_1EC88A5C8[0])
  {
    sub_1D5B49474(255, &qword_1EDF41FC0, &protocol descriptor for FeedItemType);
    type metadata accessor for DebugInspector();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, qword_1EC88A5C8);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_8NewsFeed0B13DatabaseErrorO(uint64_t a1)
{
  if ((*(a1 + 16) & 7) == 7)
  {
    return (*a1 + 7);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1D671DFF0(uint64_t result, unsigned int a2)
{
  if (a2 >= 7)
  {
    *result = a2 - 7;
    *(result + 8) = 0;
    LOBYTE(a2) = 7;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t type metadata accessor for FormatOptionsNodeStatementEvaluation(uint64_t a1)
{
  result = qword_1EDF1D238;
  if (!qword_1EDF1D238)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D671E064(uint64_t a1)
{
  type metadata accessor for FormatOptionsNodeStatementResult(319);
  if (v1 <= 0x3F)
  {
    sub_1D671E0D8(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1D671E0D8(uint64_t a1)
{
  if (!qword_1EDF1B890)
  {
    type metadata accessor for FormatOptionsNodeStatementResult(255);
    v1 = sub_1D7261E1C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF1B890);
    }
  }
}

uint64_t sub_1D671E154(uint64_t a1)
{
  result = type metadata accessor for FeedItem(319);
  if (v2 <= 0x3F)
  {
    result = sub_1D5B5534C(319, &qword_1EDF3C720, &protocolRef_FCHeadlineProviding);
    if (v3 <= 0x3F)
    {
      result = sub_1D5B5534C(319, &qword_1EDF3C770, &protocolRef_FCTagProviding);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

__n128 FormatAssetHandleProvider.focalFrame.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  result = *v1;
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = v4;
  *(a1 + 32) = v2;
  return result;
}

uint64_t FormatAssetHandleProvider.requestData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 72);
  v4 = *(v1 + 104);
  v10 = *(v1 + 88);
  v3 = v10;
  v11 = v4;
  v12 = *(v1 + 120);
  v6 = *(v1 + 56);
  v9[0] = *(v1 + 40);
  v5 = v9[0];
  v9[1] = v6;
  v9[2] = v2;
  *(a1 + 80) = v12;
  *(a1 + 32) = v2;
  *(a1 + 48) = v3;
  *(a1 + 64) = v4;
  *a1 = v5;
  *(a1 + 16) = v6;
  return sub_1D671E418(v9, v8, sub_1D671E290);
}

void sub_1D671E290()
{
  if (!qword_1EDF28820)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF28820);
    }
  }
}

id FormatAssetHandle.fallbackImage.getter()
{
  sub_1D671E418(v0 + 40, v7, sub_1D5FCBD08);
  if (v8)
  {
    __swift_project_boxed_opaque_existential_1(v7, v8);
    sub_1D725D2CC();
    v2 = v1;
    __swift_destroy_boxed_opaque_existential_1(v7);
    if (v2)
    {
      v3 = objc_allocWithZone(MEMORY[0x1E69DCAB8]);
      v4 = sub_1D726203C();

      v5 = [v3 initWithContentsOfFile_];

      return v5;
    }
  }

  else
  {
    sub_1D5EED418(v7);
  }

  return 0;
}

uint64_t sub_1D671E418(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void *sub_1D671E5F4(void *result, uint64_t a2)
{
  if (a2 < 6)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 6)) | 0xC000000000000000;
  }

  return result;
}

uint64_t sub_1D671E630(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 128);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D671E678(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 128) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D671E6FC(uint64_t a1)
{
  type metadata accessor for DebugFormatFileTreeModel(319);
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      sub_1D671EAC8();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1D671E79C(unint64_t *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 8) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if ((v5 & 0x80000000) != 0)
    {
      return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
    }

    v17 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

void *sub_1D671E8E4(void *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *(result + v9) = 0;
      }

      else if (v13)
      {
        *(result + v9) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if ((v6 & 0x80000000) != 0)
      {
        v19 = *(v5 + 56);
        v20 = (result + v8 + 8) & ~v8;

        return v19(v20);
      }

      else
      {
        if ((a2 & 0x80000000) != 0)
        {
          v18 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v18 = a2 - 1;
        }

        *result = v18;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 8) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1D671EAC8()
{
  if (!qword_1EC884DD8)
  {
    v0 = sub_1D726192C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC884DD8);
    }
  }
}

uint64_t sub_1D671EB5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v81 = a2;
  v4 = sub_1D726147C();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x1EEE9AC00](v4, v5);
  v68 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v64 = v9;
  v10 = &v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = sub_1D671F378();
  v94 = v11;
  v95 = &type metadata for DebugFormatFileTreePopoverContentView;
  v66 = v11;
  v96 = v12;
  v97 = v13;
  v85 = v12;
  v14 = v13;
  v67 = v13;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v70 = OpaqueTypeMetadata2;
  v75 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2, v16);
  v87 = &v59 - v17;
  v94 = v11;
  v95 = &type metadata for DebugFormatFileTreePopoverContentView;
  v96 = v12;
  v97 = v14;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v94 = OpaqueTypeMetadata2;
  v95 = OpaqueTypeConformance2;
  v74 = MEMORY[0x1E6981218];
  v72 = swift_getOpaqueTypeMetadata2();
  v77 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v72);
  v88 = &v59 - v18;
  v76 = sub_1D726101C();
  v78 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76, v19);
  v69 = &v59 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21, v22);
  v73 = &v59 - v23;
  v24 = *(a1 + 40);
  v63 = *(a1 + 36);
  v25 = a1;
  v26 = v2;
  v82 = v2;
  v27 = (v2 + v24);
  v28 = *v27;
  v29 = *(v27 + 1);
  v92 = v28;
  v93 = v29;
  sub_1D671EAC8();
  sub_1D726191C();
  v30 = v95;
  v60 = v94;
  v62 = v96;
  v31 = v89;
  v83 = *(v89 + 16);
  v65 = v89 + 16;
  v32 = v10;
  v59 = v10;
  v61 = v25;
  v83(v10, v26, v25);
  v84 = *(v31 + 80);
  v33 = (v84 + 32) & ~v84;
  v34 = swift_allocObject();
  v35 = v66;
  v36 = v85;
  *(v34 + 16) = v66;
  *(v34 + 24) = v36;
  v37 = *(v31 + 32);
  v89 = v31 + 32;
  v86 = v37;
  v37(v34 + v33, v32, v25);
  v38 = v68;
  v39 = v67;
  sub_1D5DEED70(v68);
  v40 = v82;
  sub_1D5DEEDEC(v60, v30, v62, v38, 1, sub_1D671F3CC, v34, v35, &type metadata for DebugFormatFileTreePopoverContentView, v36, v39);

  (*(v79 + 8))(v38, v80);
  v41 = v59;
  v42 = v61;
  v83(v59, v40, v61);
  v43 = swift_allocObject();
  *(v43 + 16) = v35;
  *(v43 + 24) = v36;
  v44 = v42;
  v86(v43 + v33, v41, v42);
  v45 = v87;
  v46 = v70;
  v47 = OpaqueTypeConformance2;
  sub_1D726177C();

  (*(v75 + 8))(v45, v46);
  v83(v41, v82, v44);
  v48 = swift_allocObject();
  v50 = v85;
  v49 = v86;
  *(v48 + 16) = v35;
  *(v48 + 24) = v50;
  v49(v48 + v33, v41, v44);
  v94 = v46;
  v95 = v47;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v69;
  v53 = v72;
  v54 = v88;
  sub_1D726174C();

  (*(v77 + 8))(v54, v53);
  v90 = v51;
  v91 = MEMORY[0x1E69805D0];
  v55 = v76;
  swift_getWitnessTable();
  v56 = v73;
  sub_1D6AE4D1C();
  v57 = *(v78 + 8);
  v57(v52, v55);
  sub_1D6AE4D1C();
  return (v57)(v56, v55);
}

uint64_t sub_1D671F30C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for DebugFormatFileTreePopoverView(0, a2, a3, a4);
  sub_1D671EAC8();
  return sub_1D726190C();
}

unint64_t sub_1D671F378()
{
  result = qword_1EC88A650;
  if (!qword_1EC88A650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A650);
  }

  return result;
}

double sub_1D671F3CC@<D0>(uint64_t a1@<X3>, void *a2@<X8>)
{
  v4 = *(type metadata accessor for DebugFormatFileTreePopoverView(0, *(v2 + 16), *(v2 + 24), a1) - 8);
  *a2 = *(v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)));

  return result;
}

uint64_t sub_1D671F450(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(v4 + 16);
  v7 = *(v4 + 24);
  v8 = *(type metadata accessor for DebugFormatFileTreePopoverView(0, v6, v7, a4) - 8);
  return sub_1D671F30C(v4 + ((*(v8 + 80) + 32) & ~*(v8 + 80)), v6, v7, a1);
}

id sub_1D671F4E4()
{
  type metadata accessor for DebugFormatFileTreeModel(0);
  sub_1D671F790();

  v8 = sub_1D7260F8C();
  v9 = v0;
  sub_1D671F7E8(0);
  v2 = objc_allocWithZone(v1);
  v3 = sub_1D726126C();
  v4 = [v3 navigationItem];
  v5 = sub_1D726203C();
  [v4 setTitle_];

  [v3 setPreferredContentSize_];
  v6 = [objc_allocWithZone(type metadata accessor for DebugFormatNavigationController()) initWithRootViewController_];

  return v6;
}

uint64_t sub_1D671F64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D671F73C();

  return MEMORY[0x1EEDDB778](a1, a2, a3, v6);
}

uint64_t sub_1D671F6B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D671F73C();

  return MEMORY[0x1EEDDB740](a1, a2, a3, v6);
}

void sub_1D671F714(uint64_t a1)
{
  sub_1D671F73C();
  sub_1D726154C();
  __break(1u);
}

unint64_t sub_1D671F73C()
{
  result = qword_1EC88A658;
  if (!qword_1EC88A658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A658);
  }

  return result;
}

unint64_t sub_1D671F790()
{
  result = qword_1EC88A660;
  if (!qword_1EC88A660)
  {
    type metadata accessor for DebugFormatFileTreeModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A660);
  }

  return result;
}

void sub_1D671F7E8(uint64_t a1)
{
  if (!qword_1EC88A668)
  {
    sub_1D671F844();
    v1 = sub_1D726127C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC88A668);
    }
  }
}

unint64_t sub_1D671F844()
{
  result = qword_1EC88A670;
  if (!qword_1EC88A670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A670);
  }

  return result;
}

char *SportsTaxonomyGraphSectionNode.parents.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  if (v1 >> 62)
  {
LABEL_34:
    v2 = sub_1D7263BFC();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v2)
  {
    v19 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v3 = 0;
  v19 = MEMORY[0x1E69E7CC0];
  do
  {
    v4 = v3;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1DA6FB460](v4, v1);
        v3 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_32;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_33;
        }

        v3 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }
      }

      if (swift_unknownObjectWeakLoadStrong())
      {
        break;
      }

LABEL_7:
      ++v4;
      if (v3 == v2)
      {
        goto LABEL_31;
      }
    }

    type metadata accessor for SportsTaxonomyGraphRootNode();
    swift_unknownObjectRetain();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      v9 = v5;
      swift_unknownObjectRelease();
      v10 = swift_allocObject();
      *(v10 + 16) = v9;

      goto LABEL_24;
    }

    type metadata accessor for SportsTaxonomyGraphEntityNode();
    v6 = swift_dynamicCastClass();
    if (v6)
    {
      v11 = v6;
      swift_unknownObjectRelease();
      v12 = swift_allocObject();
      *(v12 + 16) = v11;

      v10 = v12 | 0x8000000000000000;
      goto LABEL_24;
    }

    type metadata accessor for SportsTaxonomyGraphLeafEntityNode();
    v7 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v7)
    {
      v13 = swift_allocObject();
      *(v13 + 16) = v7;

      v10 = v13 | 0x4000000000000000;
      goto LABEL_24;
    }

    v8 = swift_dynamicCastClass();
    if (!v8)
    {

      swift_unknownObjectRelease();
      goto LABEL_7;
    }

    v14 = v8;
    v15 = swift_allocObject();
    *(v15 + 16) = v14;

    v10 = v15 | 0xC000000000000000;
LABEL_24:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v19 = sub_1D698BF5C(0, *(v19 + 2) + 1, 1, v19);
    }

    v17 = *(v19 + 2);
    v16 = *(v19 + 3);
    if (v17 >= v16 >> 1)
    {
      v19 = sub_1D698BF5C((v16 > 1), v17 + 1, 1, v19);
    }

    *(v19 + 2) = v17 + 1;
    *&v19[8 * v17 + 32] = v10;
  }

  while (v3 != v2);
LABEL_31:

  return v19;
}

uint64_t SportsTaxonomyGraphSectionNode.header.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = v2;
  a1[1] = v3;
  return sub_1D671FDCC(v2, v3);
}

__n128 SportsTaxonomyGraphSectionNode.__allocating_init(header:isHidden:isChildrenOrderCurated:)(__n128 *a1, char a2, char a3)
{
  v6 = swift_allocObject();
  v7 = MEMORY[0x1E69E7CC0];
  *(v6 + 40) = MEMORY[0x1E69E7CC0];
  *(v6 + 48) = v7;
  *(v6 + 16) = a2;
  result = *a1;
  *(v6 + 24) = *a1;
  *(v6 + 17) = a3;
  return result;
}

uint64_t SportsTaxonomyGraphSectionNode.init(header:isHidden:isChildrenOrderCurated:)(_OWORD *a1, char a2, char a3)
{
  v4 = MEMORY[0x1E69E7CC0];
  *(v3 + 40) = MEMORY[0x1E69E7CC0];
  *(v3 + 48) = v4;
  *(v3 + 16) = a2;
  *(v3 + 24) = *a1;
  *(v3 + 17) = a3;
  return v3;
}

uint64_t sub_1D671FC84(unint64_t *a1)
{
  v4[0] = *a1;
  type metadata accessor for SportsTaxonomyGraphNodeWeakReference();
  swift_allocObject();

  sub_1D613DCC8(v4);
  v2 = swift_beginAccess();
  MEMORY[0x1DA6F9CE0](v2);
  if (*((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v1 + 48) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D726272C();
  }

  sub_1D726278C();
  return swift_endAccess();
}

uint64_t SportsTaxonomyGraphSectionNode.deinit()
{
  sub_1D671FDDC(*(v0 + 24), *(v0 + 32));

  return v0;
}

uint64_t SportsTaxonomyGraphSectionNode.__deallocating_deinit()
{
  sub_1D671FDDC(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_1D671FDCC(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1D5D64C6C(a1, a2);
  }

  return a1;
}

uint64_t sub_1D671FDDC(uint64_t a1, uint64_t a2)
{
  if (a2 != 2)
  {
    return sub_1D5D25B88(a1, a2);
  }

  return a1;
}

void *sub_1D671FE3C(uint64_t a1, uint64_t a2)
{
  sub_1D5BBDC0C(0);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v73 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v70 = &v68 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v69 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v68 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v68 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = &v68 - v25;
  v27 = MEMORY[0x1E69E6F90];
  sub_1D5BBDBA8(0, &qword_1EC880AC0, sub_1D5E4F358, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D7273AE0;
  sub_1D5BBDBA8(0, &qword_1EC880490, sub_1D5EA74B8, v27);
  sub_1D5EA74B8(0);
  v72 = v28;
  v29 = *(*(v28 - 8) + 72);
  v30 = (*(*(v28 - 8) + 80) + 32) & ~*(*(v28 - 8) + 80);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1D727E3C0;
  v71 = v31;
  v32 = (v31 + v30);
  v76 = a2;
  sub_1D67207B4(a2, v26);
  v33 = sub_1D725D4AC();
  v34 = *(v33 - 8);
  v78 = *(v34 + 48);
  v35 = v78(v26, 1, v33);
  v75 = v34;
  if (v35 == 1)
  {
    sub_1D6720818(v26, sub_1D5BBDC0C);
    v36 = 0;
    v37 = 1;
  }

  else
  {
    v36 = sub_1D725D48C();
    v37 = v38;
    (*(v34 + 8))(v26, v33);
  }

  sub_1D71224F4(0x6E6F697461727544, 0xE800000000000000, v36, v37 & 1, v32);
  v39 = type metadata accessor for FormatInspectionItem(0);
  v77 = *(*(v39 - 8) + 56);
  v77(v32, 0, 1, v39);
  sub_1D67207B4(v76, v22);
  if (v78(v22, 1, v33) == 1)
  {
    sub_1D6720818(v22, sub_1D5BBDC0C);
    v40 = 0;
    LOBYTE(v41) = 1;
  }

  else
  {
    v42 = sub_1D725D46C();
    v43 = v42;
    v41 = HIDWORD(v42) & 1;
    (*(v75 + 8))(v22, v33);
    v40 = v43;
  }

  LOBYTE(v79[0]) = v41;
  sub_1D7122D18(0x6465657053, 0xE500000000000000, v40 | (v41 << 32), &v32[v29]);
  v77(&v32[v29], 0, 1, v39);
  sub_1D67207B4(v76, v18);
  if (v78(v18, 1, v33) == 1)
  {
    sub_1D6720818(v18, sub_1D5BBDC0C);
    v44 = 0;
    v45 = 1;
  }

  else
  {
    v44 = sub_1D725D42C();
    v45 = v46;
    (*(v75 + 8))(v18, v33);
  }

  sub_1D71224F4(0x66664F20656D6954, 0xEB00000000746573, v44, v45 & 1, &v32[2 * v29]);
  v77(&v32[2 * v29], 0, 1, v39);
  v47 = v76;
  v48 = v68;
  sub_1D67207B4(v76, v68);
  v49 = v78(v48, 1, v33);
  v50 = v69;
  if (v49 == 1)
  {
    sub_1D6720818(v48, sub_1D5BBDC0C);
    v51 = 0;
  }

  else
  {
    v52 = v48;
    v51 = sub_1D725D49C();
    (*(v75 + 8))(v52, v33);
  }

  sub_1D7125A0C(0x646F4D206C6C6946, 0xE900000000000065, v51, &v32[3 * v29]);
  v77(&v32[3 * v29], 0, 1, v39);
  sub_1D67207B4(v47, v50);
  if (v78(v50, 1, v33) == 1)
  {
    sub_1D6720818(v50, sub_1D5BBDC0C);
    v53 = 0;
    LOBYTE(v54) = 1;
  }

  else
  {
    v55 = sub_1D725D43C();
    v56 = v55;
    v54 = HIDWORD(v55) & 1;
    (*(v75 + 8))(v50, v33);
    v53 = v56;
  }

  LOBYTE(v79[0]) = v54;
  sub_1D7122D18(0x4320746165706552, 0xEC000000746E756FLL, v53 | (v54 << 32), &v32[4 * v29]);
  v77(&v32[4 * v29], 0, 1, v39);
  v57 = v70;
  sub_1D67207B4(v47, v70);
  if (v78(v57, 1, v33) == 1)
  {
    sub_1D6720818(v57, sub_1D5BBDC0C);
    v58 = 0;
    v59 = 1;
  }

  else
  {
    v58 = sub_1D725D45C();
    v59 = v60;
    (*(v75 + 8))(v57, v33);
  }

  sub_1D71224F4(0x4420746165706552, 0xEF6E6F6974617275, v58, v59 & 1, &v32[5 * v29]);
  v77(&v32[5 * v29], 0, 1, v39);
  v61 = v73;
  sub_1D67207B4(v47, v73);
  if (v78(v61, 1, v33) == 1)
  {
    sub_1D6720818(v61, sub_1D5BBDC0C);
    v62 = 2;
  }

  else
  {
    v62 = sub_1D725D44C();
    (*(v75 + 8))(v61, v33);
  }

  sub_1D711E9F0(0x657665726F747541, 0xEC00000073657372, v62, &v32[6 * v29]);
  v77(&v32[6 * v29], 0, 1, v39);
  sub_1D6795150(0x695420616964654DLL, 0xEC000000676E696DLL, 0, 0, v71, v79);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v63 = inited;
  *(inited + 56) = &type metadata for FormatInspectionGroup;
  *(v63 + 64) = &off_1F518B2C0;
  v64 = swift_allocObject();
  *(v63 + 32) = v64;
  *(v64 + 48) = v80;
  v65 = v79[1];
  *(v64 + 16) = v79[0];
  *(v64 + 32) = v65;
  v66 = sub_1D7073500(v63);
  swift_setDeallocating();
  sub_1D6720818(v63 + 32, sub_1D5E4F358);
  return v66;
}

uint64_t sub_1D67207B4(uint64_t a1, uint64_t a2)
{
  sub_1D5BBDC0C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D6720818(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatContentSubgroupFilterOnce.type.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t static FormatContentSubgroupFilterOnce.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D72646CC();
  }
}

uint64_t sub_1D67208D8(uint64_t a1)
{
  v2 = sub_1D6720A9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6720914(uint64_t a1)
{
  v2 = sub_1D6720A9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatContentSubgroupFilterOnce.encode(to:)(void *a1)
{
  sub_1D6720C74(0, &qword_1EC88A678, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6720A9C();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6720A9C()
{
  result = qword_1EDF093F8;
  if (!qword_1EDF093F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF093F8);
  }

  return result;
}

uint64_t FormatContentSubgroupFilterOnce.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D6720C74(0, &qword_1EDF03910, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6720A9C();
  sub_1D7264B0C();
  if (!v2)
  {
    v11 = sub_1D72642BC();
    v13 = v12;
    (*(v7 + 8))(v10, v6);
    *a2 = v11;
    a2[1] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_1D6720C74(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1D6720A9C();
    v7 = a3(a1, &type metadata for FormatContentSubgroupFilterOnce.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D6720CD8(void *a1)
{
  a1[1] = sub_1D6720D10();
  a1[2] = sub_1D6720D64();
  result = sub_1D6720DB8();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6720D10()
{
  result = qword_1EDF093E0;
  if (!qword_1EDF093E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF093E0);
  }

  return result;
}

unint64_t sub_1D6720D64()
{
  result = qword_1EC88A680;
  if (!qword_1EC88A680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A680);
  }

  return result;
}

unint64_t sub_1D6720DB8()
{
  result = qword_1EC88A688;
  if (!qword_1EC88A688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A688);
  }

  return result;
}

uint64_t sub_1D6720E24(void *a1)
{
  sub_1D6720C74(0, &qword_1EC88A678, MEMORY[0x1E69E6F58]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v5);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6720A9C();
  sub_1D7264B5C();
  sub_1D72643FC();
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D6720F94()
{
  result = qword_1EC88A690;
  if (!qword_1EC88A690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A690);
  }

  return result;
}

unint64_t sub_1D6720FEC()
{
  result = qword_1EDF093E8;
  if (!qword_1EDF093E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF093E8);
  }

  return result;
}

unint64_t sub_1D6721044()
{
  result = qword_1EDF093F0;
  if (!qword_1EDF093F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF093F0);
  }

  return result;
}

double FormatColorNotExpression.expression.getter@<D0>(void *a1@<X8>)
{
  *a1 = *v1;

  return result;
}

unint64_t static FormatColorNotExpression.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  LOBYTE(v2) = static FormatColorExpression.== infix(_:_:)(&v5, &v4);

  return v2 & 1;
}

unint64_t sub_1D6721140(uint64_t a1)
{
  result = sub_1D6721168();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D6721168()
{
  result = qword_1EC88A698;
  if (!qword_1EC88A698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A698);
  }

  return result;
}

unint64_t sub_1D67211BC(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v4 = *a2;
  v5 = v2;

  LOBYTE(v2) = static FormatColorExpression.== infix(_:_:)(&v5, &v4);

  return v2 & 1;
}

unint64_t sub_1D6721228(void *a1)
{
  a1[1] = sub_1D667F838();
  a1[2] = sub_1D66FFFD8();
  result = sub_1D6721260();
  a1[3] = result;
  return result;
}

unint64_t sub_1D6721260()
{
  result = qword_1EC88A6A0;
  if (!qword_1EC88A6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6A0);
  }

  return result;
}

double sub_1D67212E4(uint64_t a1, uint64_t a2)
{

  FormatColorExpression.bindChildren(binder:context:)(a1, a2);

  return result;
}

double sub_1D6721348(uint64_t a1, _OWORD *a2)
{
  v4 = a2[5];
  v8[4] = a2[4];
  v8[5] = v4;
  v8[6] = a2[6];
  v5 = a2[1];
  v8[0] = *a2;
  v8[1] = v5;
  v6 = a2[3];
  v8[2] = a2[2];
  v8[3] = v6;
  v9 = *v2;

  sub_1D62A755C(a1, v8);

  return result;
}

double static Commands.Reload.article.getter()
{
  if (qword_1EDF3AE30 != -1)
  {
    swift_once();
  }

  return result;
}

uint64_t sub_1D6721440(uint64_t a1)
{
  v2 = sub_1D725DC6C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDF3AE30 != -1)
  {
    swift_once();
  }

  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v8 = objc_opt_self();

  v9 = [v8 bundleForClass_];
  sub_1D725811C();

  if (qword_1EC87DAD8 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC895160;
  (*(v3 + 104))(v6, *MEMORY[0x1E69D7B48], v2);
  v13[1] = a1;
  sub_1D725D3DC();
  swift_allocObject();
  v11 = v10;
  swift_unknownObjectRetain();
  return sub_1D725D3AC();
}

uint64_t FormatLayoutAttributes.reposition(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = *(v4 + 56);
  v21 = *(v4 + 48);
  v11 = *(v4 + 64);
  v10 = *(v4 + 72);
  v13 = *(v4 + 80);
  v12 = *(v4 + 88);
  v14 = *(v4 + 96);
  v15 = *(v4 + 104);
  v16 = *(v4 + 112);
  v17 = *(v4 + 120);
  v20 = *(v4 + 128);
  v18 = swift_allocObject();
  *(v18 + 16) = a1;
  *(v18 + 24) = a2;
  *(v18 + 32) = a3;
  *(v18 + 40) = a4;
  *(v18 + 48) = v21;
  *(v18 + 56) = v9;
  *(v18 + 64) = v11;
  *(v18 + 72) = v10;
  *(v18 + 80) = v13;
  *(v18 + 88) = v12;
  *(v18 + 96) = v14;
  *(v18 + 104) = v15;
  *(v18 + 112) = v16;
  *(v18 + 120) = v17;
  *(v18 + 128) = v20;

  return v18;
}

uint64_t FormatLayoutAttributes.identifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t FormatLayoutAttributes.itemIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormatLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t FormatLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 96);

  return v1;
}

uint64_t FormatLayoutAttributes.__allocating_init(frame:identifier:itemIdentifier:layoutIdentifier:nodeIdentifier:layoutValues:accessibilityValues:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, char *a15)
{
  result = swift_allocObject();
  v26 = *a15;
  *(result + 16) = a9;
  *(result + 24) = a10;
  *(result + 32) = a11;
  *(result + 40) = a12;
  *(result + 48) = a1;
  *(result + 56) = a2;
  *(result + 64) = a3;
  *(result + 72) = a4;
  *(result + 80) = a5;
  *(result + 88) = a6;
  *(result + 96) = a7;
  *(result + 104) = a8;
  *(result + 112) = a13;
  *(result + 120) = a14;
  *(result + 128) = v26;
  return result;
}

uint64_t FormatLayoutAttributes.init(frame:identifier:itemIdentifier:layoutIdentifier:nodeIdentifier:layoutValues:accessibilityValues:accessibilityRole:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, char *a15)
{
  v16 = *a15;
  *(v15 + 16) = a9;
  *(v15 + 24) = a10;
  *(v15 + 32) = a11;
  *(v15 + 40) = a12;
  *(v15 + 48) = a1;
  *(v15 + 56) = a2;
  *(v15 + 64) = a3;
  *(v15 + 72) = a4;
  *(v15 + 80) = a5;
  *(v15 + 88) = a6;
  *(v15 + 96) = a7;
  *(v15 + 104) = a8;
  *(v15 + 112) = a13;
  *(v15 + 120) = a14;
  *(v15 + 128) = v16;
  return v15;
}

unint64_t sub_1D6721984()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000011;
    if (v1 == 6)
    {
      v5 = 0xD000000000000013;
    }

    v6 = 0x6E65644965646F6ELL;
    if (v1 != 4)
    {
      v6 = 0x615674756F79616CLL;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x656D617266;
    v3 = 0x6E6564496D657469;
    if (v1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = 0x696669746E656469;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D6721AAC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D6722C54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D6721AD4(uint64_t a1)
{
  v2 = sub_1D6721F50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D6721B10(uint64_t a1)
{
  v2 = sub_1D6721F50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t FormatLayoutAttributes.deinit()
{

  return v0;
}

uint64_t FormatLayoutAttributes.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatLayoutAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D672270C(0, &qword_1EC88A6A8, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6721F50();
  sub_1D7264B5C();
  v11 = *(v3 + 32);
  v17 = *(v3 + 16);
  v18 = v11;
  v16 = 0;
  type metadata accessor for CGRect(0);
  sub_1D6722F00(&qword_1EC8801E8, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF68]);
  sub_1D726443C();
  if (!v2)
  {
    LOBYTE(v17) = 1;
    sub_1D72643FC();
    LOBYTE(v17) = 2;
    sub_1D726437C();
    LOBYTE(v17) = 3;
    sub_1D72643FC();
    LOBYTE(v17) = 4;
    sub_1D72643FC();
    *&v17 = *(v3 + 112);
    v16 = 5;
    sub_1D6721FA4();
    sub_1D6722770(&qword_1EC88A6B8, sub_1D6721FF4, MEMORY[0x1E69E6300]);
    sub_1D726443C();
    *&v17 = *(v3 + 120);
    v16 = 6;
    sub_1D6722048(0, v13);
    sub_1D67220A0(&qword_1EC88A6C0, &qword_1EDF20A70, &protocol conformance descriptor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E6300], v14);
    sub_1D726443C();
    LOBYTE(v17) = *(v3 + 128);
    v16 = 7;
    sub_1D6327494();
    sub_1D72643BC();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_1D6721F50()
{
  result = qword_1EC88A6B0;
  if (!qword_1EC88A6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC88A6B0);
  }

  return result;
}

void sub_1D6721FA4()
{
  if (!qword_1EDF04F98)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF04F98);
    }
  }
}

unint64_t sub_1D6721FF4()
{
  result = qword_1EDF2F490;
  if (!qword_1EDF2F490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF2F490);
  }

  return result;
}

void sub_1D6722048(uint64_t a1, __n128 a2)
{
  if (!qword_1EDF1AFA8)
  {
    type metadata accessor for FormatAccessibilityLayoutValue();
    v2 = sub_1D72627FC();
    if (!v3)
    {
      atomic_store(v2, &qword_1EDF1AFA8);
    }
  }
}

uint64_t sub_1D67220A0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_1D6722048(255, a5);
    sub_1D6722F00(a2, 255, type metadata accessor for FormatAccessibilityLayoutValue, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t FormatLayoutAttributes.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatLayoutAttributes.init(from:)(a1);
  return v2;
}

void *FormatLayoutAttributes.init(from:)(void *a1)
{
  sub_1D672270C(0, &qword_1EC88A6C8, MEMORY[0x1E69E6F48]);
  v23 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D6721F50();
  v24 = v8;
  sub_1D7264B0C();
  if (v2)
  {
    swift_deallocPartialClassInstance();
    v20 = a1;
  }

  else
  {
    v9 = v5;
    type metadata accessor for CGRect(0);
    v27 = 0;
    sub_1D6722F00(&qword_1EDF1A740, 255, type metadata accessor for CGRect, MEMORY[0x1E695EF80]);
    v10 = v23;
    sub_1D726431C();
    v11 = v26;
    *(v1 + 16) = v25;
    *(v1 + 32) = v11;
    LOBYTE(v25) = 1;
    *(v1 + 48) = sub_1D72642BC();
    *(v1 + 56) = v12;
    LOBYTE(v25) = 2;
    *(v1 + 64) = sub_1D726422C();
    *(v1 + 72) = v13;
    LOBYTE(v25) = 3;
    *(v1 + 80) = sub_1D72642BC();
    *(v1 + 88) = v14;
    LOBYTE(v25) = 4;
    v15 = sub_1D72642BC();
    v22 = a1;
    *(v1 + 96) = v15;
    *(v1 + 104) = v16;
    sub_1D6721FA4();
    v27 = 5;
    sub_1D6722770(&qword_1EDF04F90, sub_1D67227DC, MEMORY[0x1E69E6330]);
    sub_1D726431C();
    *(v1 + 112) = v25;
    sub_1D6722048(0, v17);
    v27 = 6;
    sub_1D67220A0(&qword_1EC88A6D0, &qword_1EDF20A68, &protocol conformance descriptor for FormatAccessibilityLayoutValue, MEMORY[0x1E69E6330], v18);
    sub_1D726431C();
    *(v1 + 120) = v25;
    v27 = 7;
    sub_1D5CA5BD0();
    sub_1D726427C();
    (*(v9 + 8))(v24, v10);
    *(v1 + 128) = v25;
    v20 = v22;
  }

  __swift_destroy_boxed_opaque_existential_1(v20);
  return v1;
}