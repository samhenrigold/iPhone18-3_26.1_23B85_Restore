void CROrderedSet.MergeableDelta.visitReferences(_:)(void *a1, uint64_t *a2)
{
  v5 = v2[6];
  if (*v2)
  {
    v6 = type metadata accessor for CRSet.Partial(0, a2[2], a2[3], a2[4]);

    CRSet.Partial.visitReferences(_:)(a1, v6);
  }

  if (v5)
  {
    v7 = type metadata accessor for CROrderedSetElement(255, a2[2], a2[3], a2[4]);
    v9 = type metadata accessor for CRSequence.MergeableDelta(0, v7, &off_1F23C8BA0, v8);
    v10 = v5;
    CRSequence.MergeableDelta.visitReferences(_:)(a1, v9);
  }
}

void CROrderedSet.MergeableDelta.init(from:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if (!*(a1 + 64))
  {
    sub_1ADE42E40(a1, a2, a3);
    swift_allocError();
    *v13 = 0xD000000000000014;
    *(v13 + 8) = 0x80000001AE25FB50;
    *(v13 + 16) = 0;
    swift_willThrow();
LABEL_16:

    return;
  }

  v89 = a2;
  v120 = a3;
  v88 = a5;
  type metadata accessor for CRDecoder.CRDTContainer();
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = 0;
  *(v8 + 32) = 1;

  sub_1ADDE78C8();
  v10 = *(v9 + 16);
  if ((~v10 & 0xF000000000000007) != 0 && (v10 & 0xF000000000000000) == 0x8000000000000000)
  {
    v12 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v12 = &off_1ED967FA0;
  }

  v14 = *v12;

  swift_beginAccess();
  v15 = *(v14 + 16);
  v16 = *(v14 + 24);
  v17 = *(v14 + 48);
  v99 = *(v14 + 32);
  v100 = v17;
  v18 = *(v14 + 80);
  v101 = *(v14 + 64);
  v102 = v18;
  if (v16)
  {
    v96 = v15;
    *&v97[0] = v16;
    *(v97 + 8) = v99;
    *(&v97[1] + 8) = v100;
    *(&v97[2] + 8) = v101;
    *(&v97[3] + 8) = v102;
    sub_1ADFAEE10(&v96, &v91);

    v19 = *(&v97[3] + 8);
    v20 = v97[2];
    v21 = v97[3];
    v22 = v97[1];
    v23 = v97[0];
    v24 = v96;
  }

  else
  {

    v24 = 0;
    v23 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v22 = 0uLL;
    v21 = 1;
    v20 = 0uLL;
    v19 = 0uLL;
  }

  v98 = v21;
  v114 = v24;
  v115 = v23;
  v116 = v22;
  v117 = v20;
  v118 = v21;
  v119 = v19;

  sub_1AE17AEEC(&v114, a1, v89, v120, a4, &v103);
  if (v5)
  {

    swift_setDeallocating();
    swift_deallocClassInstance();
    goto LABEL_16;
  }

  v81 = a4;
  v82 = v103;
  v83 = v104;
  v25 = v105;
  v26 = v106;
  v27 = v107;
  sub_1ADDE78C8();
  v29 = *(v28 + 16);
  v86 = v27;
  if ((~v29 & 0xF000000000000007) != 0 && (v29 & 0xF000000000000000) == 0x8000000000000000)
  {
    v30 = ((v29 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v30 = &off_1ED967FA0;
  }

  v31 = *v30;

  swift_beginAccess();
  v32 = *(v31 + 104);
  if (v32)
  {
    v96 = *(v31 + 96);
    *&v97[0] = v32;
    v33 = *(v31 + 160);
    *(&v97[2] + 8) = *(v31 + 144);
    *(&v97[3] + 8) = v33;
    *(&v97[4] + 8) = *(v31 + 176);
    *(&v97[5] + 1) = *(v31 + 192);
    v34 = *(v31 + 128);
    *(v97 + 8) = *(v31 + 112);
    *(&v97[1] + 8) = v34;
    sub_1ADE51B64(&v96, &v91);

    v35 = v97[5];
    v36 = v97[4];
    v37 = v97[3];
    v38 = v97[2];
    v39 = *(&v97[1] + 1);
    v40 = *(v97 + 8);
    v41 = v96;
    v42 = *&v97[0];
  }

  else
  {

    v41 = 0;
    v39 = MEMORY[0x1E69E7CC0];
    v40 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v38 = 0uLL;
    v42 = 0xE000000000000000;
    v37 = 0uLL;
    v36 = 0uLL;
    v35 = 0uLL;
  }

  v96 = v41;
  *&v97[0] = v42;
  *(v97 + 8) = v40;
  *(&v97[1] + 1) = v39;
  v97[2] = v38;
  v97[3] = v37;
  v97[4] = v36;
  v43 = v40.i64[0];
  v97[5] = v35;

  sub_1AE030800(&v96);
  sub_1ADDE78C8();
  v45 = *(v44 + 16);
  v87 = v8;
  v84 = v25;
  v85 = v26;
  if ((~v45 & 0xF000000000000007) != 0 && (v45 & 0xF000000000000000) == 0x8000000000000000)
  {
    v46 = ((v45 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v46 = &off_1ED967FA0;
  }

  v47 = *v46;

  swift_beginAccess();
  v48 = *(v47 + 200);

  v80[2] = v80;
  v91 = v43;
  v92 = v48;
  MEMORY[0x1EEE9AC00](v49);
  v50 = v89;
  v80[1] = v43;
  v51 = v120;
  v79[2] = v89;
  v79[3] = v120;
  v52 = v81;
  v79[4] = v81;
  v79[5] = a1;
  v80[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE470, &unk_1AE2593A8);
  v53 = type metadata accessor for CROrderedSetElement(0, v50, v51, v52);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
  v55 = sub_1AE1EA004();
  v56 = sub_1ADE13AA8(sub_1AE1E9FE0, v79, v80[0], v53, v54, v55, MEMORY[0x1E69E7288], v90);
  v120 = 0;

  sub_1ADDE78C8();
  v58 = *(v57 + 16);
  if ((~v58 & 0xF000000000000007) != 0 && (v58 & 0xF000000000000000) == 0x8000000000000000)
  {
    v59 = ((v58 & 0xFFFFFFFFFFFFFFFLL) + 16);
  }

  else
  {
    if (qword_1ED967F98 != -1)
    {
      swift_once();
    }

    v59 = &off_1ED967FA0;
  }

  v60 = *v59;

  swift_beginAccess();
  v61 = *(v60 + 104);
  if (v61)
  {
    v62 = *(v60 + 144);
    v63 = *(v60 + 176);
    v94[2] = *(v60 + 160);
    v94[3] = v63;
    v64 = *(v60 + 128);
    v93 = *(v60 + 112);
    v91 = *(v60 + 96);
    v92 = v61;
    *&v94[4] = *(v60 + 192);
    v94[0] = v64;
    v94[1] = v62;
    sub_1ADE51B64(&v91, v90);

    v65 = *(&v94[3] + 8);
    v66 = *(&v94[2] + 8);
    v67 = *(&v94[1] + 8);
    v68 = *(v94 + 8);
    v69 = *&v94[0];
    v70 = v93;
    v71 = v91;
    v72 = v92;
  }

  else
  {

    v71 = 0;
    v69 = MEMORY[0x1E69E7CC0];
    v70 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
    v68 = 0uLL;
    v72 = 0xE000000000000000;
    v67 = 0uLL;
    v66 = 0uLL;
    v65 = 0uLL;
  }

  v73 = v86;
  *&v108[0] = v71;
  *(&v108[0] + 1) = v72;
  v108[1] = v70;
  v109 = v69;
  v110 = v68;
  v111 = v67;
  v112 = v66;
  v113 = v65;
  v74 = v120;
  sub_1AE169F80(v108, a1, v56, v53, &off_1F23C8BA0, v95);

  if (v74)
  {
    sub_1AE1EA068(v82);
  }

  else
  {
    swift_setDeallocating();
    swift_deallocClassInstance();
    v75 = v95[0];
    v76 = v88;
    v77 = *(&v82 + 1);
    *v88 = v82;
    v76[1] = v77;
    v78 = v84;
    v76[2] = v83;
    v76[3] = v78;
    v76[4] = v85;
    v76[5] = v73;
    v76[6] = v75;
  }
}

void sub_1AE1E7ADC(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X8>)
{
  v39 = a6;
  v31 = a7;
  v32 = a5;
  v11 = type metadata accessor for Timestamp(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v37 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v38 = &v30 - v14;
  v36 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v33 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v30 - v18;
  v21 = *a1;
  v20 = a1[1];
  v34 = a1[2];
  v35 = v20;
  type metadata accessor for CRDecoder();
  swift_allocObject();

  sub_1ADE0262C(v21, a2);

  v22 = a4;
  v23 = *(*(a4 + 8) + 8);
  v24 = *(v23 + 8);

  v26 = v40;
  v24(v25, a3, v23);
  if (v26)
  {

    *v39 = v26;
  }

  else
  {
    v27 = v33;
    v28 = v36;
    v29 = v37;

    sub_1ADE017C0(v35, v34, a2, v38);

    (*(v28 + 32))(v27, v19, a3);
    sub_1AE017B14(v38, v29);
    sub_1ADE0C8B4(v27, v29, a3, v22, v32, v31);
  }
}

void CROrderedSet.MergeableDelta.encode(to:)(uint64_t a1, uint64_t *a2)
{
  v4 = v3;
  v7 = *v2;
  v82 = v2[1];
  v83 = v7;
  v81 = v2[2];
  v8 = *(v2 + 6);
  v9 = qword_1ED967F98;
  v10 = v8;
  if (v9 != -1)
  {
    v68 = v10;
    swift_once();
    v10 = v68;
  }

  v11 = off_1ED967FA0;
  if (v8)
  {
    v103 = v10;
    v12 = a2[2];
    v13 = a2[3];
    v14 = a2[4];
    v112 = v10;
    v79 = a2;
    v15 = off_1ED967FA0;
    v16 = type metadata accessor for CROrderedSetElement(255, v12, v13, v14);
    type metadata accessor for CRSequence.MergeableDelta(0, v16, &off_1F23C8BA0, v17);

    v80 = a1;
    sub_1AE16A304(v109, a1);
    if (v3)
    {

      return;
    }

    v78.i64[0] = v14;
    *&v77 = v13;
    *&v76 = v12;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v28 = sub_1AE1D0514(v15);

      v15 = v28;
    }

    v29 = v77;
    v93 = v109[4];
    v94 = v109[5];
    v95 = v110;
    v89 = v109[0];
    v90 = v109[1];
    v91 = v109[2];
    v92 = v109[3];
    swift_beginAccess();
    v102 = v15[24];
    v30 = *(v15 + 11);
    v100 = *(v15 + 10);
    v101 = v30;
    v31 = *(v15 + 7);
    v96 = *(v15 + 6);
    v97 = v31;
    v32 = *(v15 + 9);
    v98 = *(v15 + 8);
    v99 = v32;
    v33 = v90;
    *(v15 + 6) = v89;
    *(v15 + 7) = v33;
    v34 = v91;
    v35 = v92;
    v36 = v93;
    v37 = v94;
    v15[24] = v95;
    *(v15 + 10) = v36;
    *(v15 + 11) = v37;
    *(v15 + 8) = v34;
    *(v15 + 9) = v35;
    sub_1ADDCEDE0(&v96, &qword_1EB5BCC28, &unk_1AE251820);
    v38 = [v112 attributedString];
    type metadata accessor for CRSequenceStorage(0, v16, &off_1F23C8BA0, v39);
    swift_dynamicCastClassUnconditional();
    v40 = sub_1AE16A958();

    v41 = swift_unknownObjectRelease();
    v42 = v40;
    *&v86 = v40;
    MEMORY[0x1EEE9AC00](v41);
    v70 = v76;
    v71 = v29;
    v72 = v78.i64[0];
    v73 = v80;
    v43 = sub_1AE23D11C();
    WitnessTable = swift_getWitnessTable();
    v46 = sub_1ADE08EB0(sub_1AE1EA0E8, v69, v43, &type metadata for Proto_Timestamp, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v45);
    *&v75 = 0;
    v11 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v47 = sub_1AE1D0514(v15);

      v11 = v47;
    }

    swift_beginAccess();
    *(v11 + 25) = v46;

    v88[1] = v42;
    MEMORY[0x1EEE9AC00](v48);
    v70 = v76;
    v71 = v77;
    v72 = v78.i64[0];
    v73 = v80;
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BB180, &unk_1AE2427A0);
    v50 = v75;
    v51 = sub_1ADE08EB0(sub_1ADF87ED8, v69, v43, &type metadata for Proto_Value, v49, WitnessTable, MEMORY[0x1E69E7288], v88);
    if (v50)
    {

      return;
    }

    v53 = v51;
    v4 = 0;

    swift_beginAccess();
    v54 = *(v11 + 11);
    v87[3] = *(v11 + 10);
    v87[4] = v54;
    v55 = *(v11 + 6);
    v56 = *(v11 + 7);
    *&v87[5] = *(v11 + 24);
    v86 = v55;
    v87[0] = v56;
    v57 = *(v11 + 9);
    v87[1] = *(v11 + 8);
    v87[2] = v57;
    v58 = *(&v86 + 1);
    if (*(&v86 + 1))
    {
      v59 = v86;
      v77 = *(&v87[1] + 8);
      v78 = *(v87 + 8);
      v75 = *(&v87[4] + 8);
      v76 = *(&v87[2] + 8);
      v60 = *(&v87[3] + 8);
    }

    else
    {
      v59 = 0;
      v60 = 0uLL;
      v77 = 0u;
      v78 = vdupq_n_s64(MEMORY[0x1E69E7CC0]);
      v58 = 0xE000000000000000;
      v75 = 0u;
      v76 = 0u;
    }

    v74 = v60;
    sub_1ADDCEE40(&v86, v84, &qword_1EB5BCC28, &unk_1AE251820);

    if (swift_isUniquelyReferenced_nonNull_native())
    {
    }

    else
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();

      v62 = sub_1AE1D0514(v61);

      v11 = v62;
    }

    swift_beginAccess();
    v85 = *(v11 + 24);
    v63 = *(v11 + 11);
    v84[4] = *(v11 + 10);
    v84[5] = v63;
    v64 = *(v11 + 7);
    v84[0] = *(v11 + 6);
    v84[1] = v64;
    v65 = *(v11 + 9);
    v84[2] = *(v11 + 8);
    v84[3] = v65;
    *(v11 + 12) = v59;
    *(v11 + 13) = v58;
    *(v11 + 14) = v53;
    v66 = v77;
    *(v11 + 120) = v78;
    *(v11 + 136) = v66;
    *(v11 + 152) = v76;
    v67 = v75;
    *(v11 + 168) = v74;
    *(v11 + 184) = v67;
    v18 = sub_1ADDCEDE0(v84, &qword_1EB5BCC28, &unk_1AE251820);
    a2 = v79;
    a1 = v80;
  }

  else
  {
  }

  if (!v83)
  {
    goto LABEL_12;
  }

  v89 = v83;
  v90 = v82;
  v91 = v81;
  v21 = type metadata accessor for CRSet.Partial(0, a2[2], a2[3], a2[4]);
  sub_1AE17B124(a1, v21, v111);
  if (!v4)
  {
    v106 = v111[2];
    v107 = v111[3];
    v108 = v111[4];
    v104 = v111[0];
    v105 = v111[1];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      type metadata accessor for Proto_OrderedSet._StorageClass();
      swift_allocObject();
      v22 = sub_1AE1D0514(v11);

      v11 = v22;
    }

    swift_beginAccess();
    v23 = *(v11 + 2);
    v24 = *(v11 + 3);
    v25 = *(v11 + 5);
    v99 = *(v11 + 4);
    v100 = v25;
    v97 = v23;
    v98 = v24;
    v96 = *(v11 + 1);
    v26 = v108;
    *(v11 + 1) = v104;
    *(v11 + 4) = v107;
    *(v11 + 5) = v26;
    v27 = v106;
    *(v11 + 2) = v105;
    *(v11 + 3) = v27;
    v18 = sub_1ADDCEDE0(&v96, &qword_1EB5BCC30, &qword_1AE2580D0);
LABEL_12:
    sub_1ADDFCC74(v18, v19, v20);
    if (!v4)
    {
      swift_beginAccess();

      sub_1AE1B6E5C(v52);
      swift_endAccess();
    }
  }
}

uint64_t sub_1AE1E8500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  v10 = type metadata accessor for Replica(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1 + *(type metadata accessor for CROrderedSetElement(0, a2, a3, a4) + 44);
  sub_1ADDF8030(v13, v12, type metadata accessor for Replica);
  v14 = sub_1ADDF66A8(v12);
  v15 = sub_1AE23BFEC();
  (*(*(v15 - 8) + 8))(v12, v15);
  result = type metadata accessor for Timestamp(0);
  v17 = *(v13 + *(result + 20));
  *a5 = v14;
  a5[1] = v17;
  return result;
}

uint64_t CROrderedSet.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v36 = a2;
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v34 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v35 = &v30 - v7;
  v9 = *(v8 + 24);
  v32 = *(v8 + 32);
  v33 = v9;
  v10 = type metadata accessor for CROrderedSetElement(255, v3, v9, v32);
  v11 = sub_1AE23D7CC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v30 - v16;
  v18 = *v2;
  v19 = sub_1AE23D0AC();
  v20 = v2[1];
  if (v20 == v19)
  {
    v21 = *(v10 - 8);
    (*(v21 + 56))(v17, 1, 1, v10);
    goto LABEL_6;
  }

  v31 = v4;
  v22 = sub_1AE23D08C();
  sub_1AE23D00C();
  if ((v22 & 1) == 0)
  {
    result = sub_1AE23DAAC();
    v23 = *(v10 - 8);
    if (*(v23 + 64) != 8)
    {
LABEL_14:
      __break(1u);
      return result;
    }

    v37 = result;
    (*(v23 + 16))(v17, &v37, v10);
    result = swift_unknownObjectRelease();
    v25 = v20 + 1;
    if (!__OFADD__(v20, 1))
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v23 = *(v10 - 8);
  result = (*(v23 + 16))(v17, v18 + ((*(v23 + 80) + 32) & ~*(v23 + 80)) + *(v23 + 72) * v20, v10);
  v25 = v20 + 1;
  if (__OFADD__(v20, 1))
  {
    goto LABEL_13;
  }

LABEL_5:
  v2[1] = v25;
  v21 = v23;
  (*(v23 + 56))(v17, 0, 1, v10);
  v4 = v31;
LABEL_6:
  (*(v12 + 16))(v14, v17, v11);
  if ((*(v21 + 48))(v14, 1, v10) == 1)
  {
    v26 = *(v12 + 8);
    v26(v17, v11);
    v26(v14, v11);
    return (*(v4 + 56))(v36, 1, 1, v3);
  }

  else
  {
    v27 = v34;
    (*(v4 + 16))(v34, v14, v3);
    (*(v21 + 8))(v14, v10);
    v28 = v35;
    (*(v4 + 32))(v35, v27, v3);
    v37 = v2[2];
    v29 = type metadata accessor for CRSet(0, v3, v33, v32);
    CRSet.subscript.getter(v28, v29, v36);
    (*(v4 + 8))(v28, v3);
    return (*(v12 + 8))(v17, v11);
  }
}

uint64_t CROrderedSet.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1ADDEF390(a1);
  v5 = *(v2 + 8);
  *a2 = v4;
  a2[1] = 0;
  a2[2] = v5;
}

uint64_t sub_1AE1E8BA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  CROrderedSet.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_1AE1E8C08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEE698E0](a1, WitnessTable);
}

uint64_t sub_1AE1E8C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v6 = sub_1AE23836C(v3, a1, WitnessTable);
  (*(*(a1 - 8) + 8))(v3, a1);
  return v6;
}

uint64_t CROrderedSet.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1AE23C12C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1AE23D44C())
  {
    sub_1AE23C00C();
    CROrderedSet.remove(atOffsets:)(v15, a4);
    return (*(v13 + 8))(v15, v12);
  }

  else
  {

    return sub_1AE1E1C78(a1, a2, a3, a4, a5, a6);
  }
}

uint64_t (*sub_1AE1E8E64(void *a1, uint64_t *a2, uint64_t *a3))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = CROrderedSet.subscript.modify(v6, *a2, a3);
  return sub_1ADECDC64;
}

uint64_t sub_1AE1E8EEC(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  sub_1AE1E9F48(a1, &v7, a3, a4);
  swift_getWitnessTable();
  v5 = sub_1AE23E2DC();
  return (*(*(v5 - 8) + 8))(a1, v5);
}

uint64_t (*sub_1AE1E8F8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_1AE1DF030(v8, a2, a3, a4);
  return sub_1ADEBEB94;
}

uint64_t sub_1AE1E90BC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  CROrderedSet.replaceSubrange<A>(_:with:)(*a1, a1[1], a2, a5, a3, a4);
  v7 = *(*(a3 - 8) + 8);

  return v7(a2, a3);
}

uint64_t sub_1AE1E915C(uint64_t a1, uint64_t a2)
{
  CROrderedSet.append(_:)(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1AE1E91C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  CROrderedSet.append<A>(contentsOf:)(a1, a4, a2, a3);
  v6 = *(*(a2 - 8) + 8);

  return v6(a1, a2);
}

uint64_t sub_1AE1E925C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, void))
{
  (a5)(a1, *a2, a3, a4);
  v7 = *(*(*(a3 + 16) - 8) + 8);

  return v7(a1);
}

uint64_t sub_1AE1E92D0(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  CROrderedSet.insert<A>(contentsOf:at:)(a1, *a2, a5, a3, *(a4 + 8));
  v7 = *(*(a3 - 8) + 8);

  return v7(a1, a3);
}

uint64_t sub_1AE1E9380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a4@<X8>)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1AE1DF3FC(a1, a2, WitnessTable, a4);
}

void *sub_1AE1E93E8()
{
  swift_getWitnessTable();

  return sub_1AE23D3FC();
}

Swift::Int sub_1AE1E9458@<X0>(Swift::Int *a1@<X0>, Swift::Int *a2@<X8>)
{
  result = CROrderedSet.index(after:)(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1AE1E9484(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getWitnessTable();

  return sub_1AE23D3DC();
}

uint64_t sub_1AE1E9564(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[7] = *a2;
  v11[2] = a4;
  v11[3] = a5;
  v11[4] = a6;
  v11[5] = a1;
  v11[6] = a3;
  v6 = type metadata accessor for CROrderedSetElement(255, a4, a5, a6);
  v8 = type metadata accessor for CRSequence(0, v6, &off_1F23C8BA0, v7);

  v9 = sub_1AE165268(sub_1AE1EA5EC, v11, v8, &type metadata for Proto_Set.Element);

  return v9;
}

void sub_1AE1E961C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  if (!*(v17 + 16))
  {
    __break(1u);
    goto LABEL_7;
  }

  v38 = v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1ADDFFB6C(v15, a4, a6);
  if ((v19 & 1) == 0)
  {
LABEL_7:
    __break(1u);
    return;
  }

  v36 = v14;
  v37 = a7;
  v20 = *(a2 + 36);
  v21 = *(a3 + 112);
  v22 = *(a3 + 120);
  *(a3 + 112) = 0;
  *(a3 + 120) = 0;
  v23 = sub_1AE1E9860(a2, v18, v20, 0, a3, a4, a5);
  if (v7)
  {
    v39 = v7;
  }

  else
  {
    v35[1] = v20;
    v26 = sub_1ADE71C08(v23, v24, v25);
    v39 = 0;
    v27 = v26;
    swift_beginAccess();
    v28 = *(v27 + 24);
    *(a3 + 112) = v21;

    *(a3 + 120) = v22;

    v29 = v38;
    sub_1AE23CB9C();
    (*(v36 + 8))(v29, a4);
    sub_1ADF78ED0(v42, &v41);
    v40 = v41;
    sub_1ADDF5C7C(a3);
    v31 = v30;
    v33 = v32;

    v34 = v37;
    *v37 = v28;
    v34[1] = 0;
    v34[2] = v31;
    v34[3] = v33;
    v34[4] = 0;
  }
}

uint64_t sub_1AE1E9860(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AE23CB9C();

  (*(*(*(a7 + 8) + 8) + 16))(a5, a6);
  return (*(v10 + 8))(v12, a6);
}

uint64_t CROrderedSet<>.encode(to:)(void *a1, void *a2, uint64_t a3)
{
  v5 = v4;
  v6 = v3;
  v29[6] = a3;
  v9 = a2[2];
  v22 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1AE23D7CC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v22 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1AE23E3AC();
  v15 = sub_1ADDEF390(a2);
  v16 = *(v6 + 8);
  v26 = v15;
  v27 = 0;
  v28 = v16;
  v17 = type metadata accessor for CROrderedSet.Iterator(0, v9, a2[3], a2[4]);

  v25 = v17;
  CROrderedSet.Iterator.next()(v17, v14);
  v18 = v22;
  v23 = *(v22 + 48);
  v24 = v22 + 48;
  if (v23(v14, 1, v9) != 1)
  {
    v20 = *(v18 + 32);
    v19 = v18 + 32;
    v22 = v20;
    do
    {
      (v22)(v11, v14, v9);
      __swift_mutable_project_boxed_opaque_existential_1(v29, v29[3]);
      sub_1AE23DE6C();
      (*(v19 - 24))(v11, v9);
      if (v5)
      {
        break;
      }

      CROrderedSet.Iterator.next()(v25, v14);
    }

    while (v23(v14, 1, v9) != 1);
  }

  return __swift_destroy_boxed_opaque_existential_1(v29);
}

uint64_t sub_1AE1E9C30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1AE1E9CB4(uint64_t a1, Swift::Int a2, uint64_t *a3)
{
  v4 = v3;
  v8 = a3[2];
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a3[4];
  v28 = *(v12 + 24);
  v30 = v13;
  v14 = type metadata accessor for CROrderedSetElement(0, v8, v28, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - v16;
  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  v29 = a1;
  v31 = a2;
  v18 = CROrderedSet.count.getter(a3);
  v19 = v31;
  if (v18 <= v31)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_1ADE10650(a3);
  v32 = *v4;
  type metadata accessor for CRSequence(0, v14, &off_1F23C8BA0, v20);
  CRSequence.subscript.getter(v19);
  (*(v9 + 16))(v11, v17, v8);
  (*(v15 + 8))(v17, v14);
  v22 = v29;
  v21 = v30;
  v23 = sub_1AE23CCBC();
  (*(v9 + 8))(v11, v8);
  if ((v23 & 1) == 0)
  {
    v32 = v4[1];
    v24 = type metadata accessor for CRSet(0, v8, v28, v21);

    v25 = CRSet.contains(_:)(v22, v24);

    if (!v25)
    {
      v26 = v31;
      CROrderedSet.remove(at:)(v31);
      CROrderedSet.insert(_:at:)(v22, v26, a3);
    }
  }
}

uint64_t sub_1AE1E9F48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1AE23E2DC();
  swift_getWitnessTable();

  return sub_1AE23DD8C();
}

unint64_t sub_1AE1EA004()
{
  result = qword_1EB5BE478;
  if (!qword_1EB5BE478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB5BE470, &unk_1AE2593A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB5BE478);
  }

  return result;
}

uint64_t sub_1AE1EA068(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AE1EA130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 24) = result;
  return result;
}

uint64_t sub_1AE1EA398(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1EA3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1EA428(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1AE1EA484(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1AE1EA4FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1AE1EA644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1ADDCEE40(a3, v22 - v9, &unk_1EB5BDD00, &qword_1AE242340);
  v11 = sub_1AE23D1BC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1ADDCEDE0(v10, &unk_1EB5BDD00, &qword_1AE242340);
  }

  else
  {
    sub_1AE23D1AC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1AE23D16C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1AE23CD8C() + 32;

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

  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

void Capsule.versionUUID.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  if (v2)
  {
    v4 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
    swift_beginAccess();
    v5 = sub_1AE23BFEC();
    (*(*(v5 - 8) + 16))(a1, v2 + v4, v5);
  }

  else
  {
    __break(1u);
  }
}

void sub_1AE1EA944()
{
  v66 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v66);
  v2 = &v64 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = *v0;
  v68 = v0[1];
  v69 = v3;
  v67 = *(v0 + 4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
  v4 = swift_allocObject();
  v5 = v69;
  v6 = *(&v69 + 1);
  v7 = v69;
  *(v4 + 16) = xmmword_1AE2418F0;
  *(v4 + 32) = v5;
  sub_1ADDD86D8(v7, v6);
  sub_1AE1FBBA0(v4);
  v10 = v9;
  if (!*(v9 + 16))
  {
    return;
  }

  v11 = 0;
  v64 = v8;
  v12 = v8;
  v13 = v9;
  v65 = v2;
  while (1)
  {
    v83 = v69;
    v84 = v68;
    v85 = v67;
    sub_1ADDFC54C(v2);
    if (v11 >= *(v13 + 16))
    {
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v76 = v11;
    v17 = v13 + 16 * v11;
    v18 = *(v17 + 32);
    v19 = *(v17 + 40);
    v20 = *&v2[*(v66 + 20)];
    sub_1ADDD86D8(v18, v19);
    sub_1ADDDF7A8(v18, v19, v20, v78);
    sub_1ADDCC35C(v18, v19);
    sub_1ADE73DF4(v2);
    if (v79)
    {
      break;
    }

    v15 = v13;
LABEL_4:
    v11 = v76 + 1;
    v16 = *(v13 + 16);
    v13 = v15;
    if (v76 + 1 >= v16)
    {
      return;
    }
  }

  v74 = v79;
  v72 = v78[1];
  v73 = v78[0];
  v71 = v80;
  v70 = v82;
  v21 = v81 + 64;
  v22 = 1 << *(v81 + 32);
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v24 = v23 & *(v81 + 64);
  v25 = (v22 + 63) >> 6;
  v77 = v81;
  swift_bridgeObjectRetain_n();
  v26 = 0;
  v27 = v12;
  while (2)
  {
    while (2)
    {
      while (2)
      {
        v12 = v27;
        v75 = v13;
        while (1)
        {
          if (!v24)
          {
            while (1)
            {
              v29 = v26 + 1;
              if (__OFADD__(v26, 1))
              {
                break;
              }

              if (v29 >= v25)
              {
                v14 = v77;

                sub_1ADDDC21C(v73, v72, v74, v71, v14, v70);

                v2 = v65;
                v15 = v75;
                goto LABEL_4;
              }

              v24 = *(v21 + 8 * v29);
              ++v26;
              if (v24)
              {
                v26 = v29;
                goto LABEL_19;
              }
            }

            __break(1u);
            goto LABEL_55;
          }

LABEL_19:
          v30 = __clz(__rbit64(v24));
          v24 &= v24 - 1;
          v31 = (*(v77 + 48) + ((v26 << 10) | (16 * v30)));
          v32 = *v31;
          v33 = v31[1];
          v34 = *(v10 + 16);
          sub_1ADDD86D8(*v31, v33);
          if (!v12)
          {
            break;
          }

          sub_1AE1FC868(v32, v33, v10 + 32, v34, (v12 + 16), v12 + 32);
          v36 = v35;
          v38 = v37;

          if (v36)
          {
            goto LABEL_23;
          }

LABEL_13:
          sub_1ADDCC35C(v32, v33);
          v13 = v10;
        }

        sub_1AE1FC1B0(v32, v33, v10 + 32, v34);
        if ((v28 & 1) == 0)
        {
          goto LABEL_13;
        }

        v38 = 0;
LABEL_23:
        v39 = v10;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v86 = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1ADE6F2E4(0, *(v10 + 16) + 1, 1);
          v39 = v86;
        }

        v42 = *(v39 + 16);
        v41 = *(v39 + 24);
        v43 = v42 + 1;
        if (v42 >= v41 >> 1)
        {
          v75 = *(v39 + 16);
          v63 = v42 + 1;
          sub_1ADE6F2E4((v41 > 1), v63, 1);
          v43 = v63;
          v42 = v75;
          v39 = v86;
        }

        *(v39 + 16) = v43;
        v44 = v39 + 16 * v42;
        *(v44 + 32) = v32;
        *(v44 + 40) = v33;
        if (!v12)
        {
          v27 = 0;
          v45 = 0;
          v13 = v39;
          v46 = v42 > 0xE;
          v10 = v39;
          if (!v46)
          {
            continue;
          }

LABEL_30:
          v47 = MEMORY[0x1B26FAA50]();
          if (v45 <= v47)
          {
            v48 = v47;
          }

          else
          {
            v48 = v45;
          }

          v49 = sub_1AE1FBFA4(v10, v48, 0, v45);

          v64 = v49;
          v27 = v49;
          v13 = v10;
          continue;
        }

        break;
      }

      v75 = v43;
      swift_beginAccess();
      if (MEMORY[0x1B26FAA30](*(v12 + 16) & 0x3FLL) <= v42)
      {
        v45 = *(v12 + 24) & 0x3FLL;
        if (v42 > 0xE)
        {
          v10 = v39;
        }

        else
        {
          v10 = v39;
          if (!v45)
          {

            v64 = 0;
            v27 = 0;
            v13 = v39;
            continue;
          }
        }

        goto LABEL_30;
      }

      break;
    }

    sub_1ADDD86D8(v32, v33);
    v50 = v64;
    if ((swift_isUniquelyReferenced_native() & 1) == 0)
    {
      if (!v50)
      {
        goto LABEL_58;
      }

      v50 = sub_1AE23C19C();
    }

    if (v50)
    {
      v51 = *(v50 + 16);
      v52 = *(v39 + 16) + ~(*(v50 + 24) >> 6);
      v53 = (-1 << v51) ^ ~(((v52 >> 63) & ~(-1 << v51)) + v52);
      v54 = (v51 & 0x3F) * v38;
      v55 = v54 >> 6;
      *(v50 + 32 + 8 * (v54 >> 6)) = (v53 << v54) | ((((-1 << v51) + 1) << v54) - 1) & *(v50 + 32 + 8 * (v54 >> 6));
      v56 = 64 - (v54 & 0x3F);
      if (v56 < (v51 & 0x3Fu))
      {
        v57 = (v51 & 0x3F) << (v51 & 0x3F);
        v58 = __OFADD__(v57, 64);
        v59 = v57 + 64;
        if (v58)
        {
          goto LABEL_56;
        }

        v60 = v59 - 1;
        v46 = v59 < 1;
        v61 = v59 + 62;
        if (!v46)
        {
          v61 = v60;
        }

        if (v55 + 1 == v61 >> 6)
        {
          v62 = 0;
        }

        else
        {
          v62 = v55 + 1;
        }

        *(v50 + 32 + 8 * v62) = *(v50 + 32 + 8 * v62) & (-1 << (v51 - v56)) | (v53 >> v56);
      }

      sub_1ADDCC35C(v32, v33);
      v64 = v50;
      v27 = v50;
      v10 = v39;
      v13 = v39;
      continue;
    }

    break;
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

BOOL Capsule.merge<A>(_:)(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2].n128_u64[0];
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9 = v4;
  Capsule.merge<A>(_:)(v8, a2, a3, a4, v10);
  return v10[0] > 1u || v10[1] > 1u;
}

void sub_1AE1EAF78(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1ADDF8128(a2);
  if (v5[4])
  {
    sub_1ADEB18E4(a1, a4, a5);
    if (!v6)
    {
      v10 = v5[3];
      v14 = v5[2];
      v15 = v10;
      v11 = v5[1];
      v12 = *v5;
      v13 = v11;
      sub_1ADDD86D8(v14, v10);
      sub_1ADDD86D8(v12, v11);
      sub_1ADEA9BC0(0, 0, &v14, &v12);
      sub_1ADDE158C(v12, v13);
      sub_1ADDE158C(v14, v15);
    }
  }

  else
  {
    __break(1u);
  }
}

__n128 sub_1AE1EB038@<Q0>(__n128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  result = *a1;
  v5 = *a2;
  *a4 = *a1;
  *(a4 + 16) = v5;
  *(a4 + 32) = a3;
  return result;
}

double sub_1AE1EB04C@<D0>(void *a1@<X8>)
{
  v3 = (*v1 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *a1 = v4;
  a1[1] = v5;

  return result;
}

uint64_t sub_1AE1EB0AC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID;
  swift_beginAccess();
  v5 = sub_1AE23BFEC();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t Capsule.delta(_:from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (*(v3 + 32))
  {
    v4 = *(a2 + 32);
    if (v4)
    {
      return sub_1ADEBB0BC(result, v4, a3);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t *Capsule.merge(delta:)(uint64_t *result)
{
  if (v1[4])
  {
    v2 = *result;
    v3 = result[1];
    v13 = *result;
    v14 = v3;
    sub_1ADEBBF48(&v13);
    v6 = v5;
    if ((v5 & 1) == 0)
    {
      return (v6 & 1);
    }

    result = sub_1ADDF8128(v4);
    if (v1[4])
    {
      sub_1ADEB99CC();
      v13 = v2;
      v14 = v3;
      v7 = v1[3];
      v11 = v1[2];
      v12 = v7;
      v8 = v1[1];
      v9 = *v1;
      v10 = v8;
      sub_1ADDD86D8(v11, v7);
      sub_1ADDD86D8(v9, v8);
      sub_1ADEBC798(&v13, &v11, &v9);
      sub_1ADDE158C(v9, v10);
      sub_1ADDE158C(v11, v12);
      return (v6 & 1);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1AE1EB234(_BYTE *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, int a5@<W5>, uint64_t a6@<X6>, uint64_t a7@<X7>, __n128 *a8@<X8>)
{
  v42 = a7;
  v37 = a6;
  v36 = a5;
  v33 = a8;
  v13 = sub_1AE23BFEC();
  v34 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v32 - v16;
  LOBYTE(a1) = *a1;
  type metadata accessor for CRDecoder();
  inited = swift_initStackObject();
  v19 = inited;
  v20 = MEMORY[0x1E69E7CC0];
  *(inited + 24) = MEMORY[0x1E69E7CC0];
  *(inited + 32) = v20;
  v21 = MEMORY[0x1E69E7CC8];
  *(inited + 40) = v20;
  *(inited + 48) = v21;
  *(inited + 56) = 0;
  *(inited + 64) = 0;
  *(inited + 72) = 0;
  *(inited + 57) = a1;
  if (a3)
  {
    *(inited + 16) = a3;
    sub_1ADE73B00(a2, v40);
  }

  else
  {
    *(inited + 16) = 0;
    type metadata accessor for CRProtoDecodeContext();
    v22 = swift_allocObject();
    v22[2] = v21;
    v22[3] = v21;
    v22[4] = a4;
    v22[5] = v21;
    v23 = a2[3];

    sub_1ADE73B00(a2, v40);

    sub_1ADE73B00(a2, v40);

    sub_1AE1B5950(v23);

    if (v8)
    {
      sub_1ADE6AF00(a2);

      sub_1ADE6AF00(a2);
      goto LABEL_7;
    }

    sub_1ADE6AF00(a2);
    *(v19 + 16) = v22;
  }

  swift_retain_n();
  sub_1ADDD5D3C(a2);
  if (v8)
  {
    sub_1ADE6AF00(a2);

LABEL_7:

    sub_1ADE6AF00(a2);

    return;
  }

  v24 = v13;

  sub_1ADE6AF00(a2);
  *(v19 + 56) = v36 & 1;
  sub_1ADDE9B40(v40, v39, v17, v37, a2, 0, v37, v42);
  v37 = v25;
  sub_1ADE6AF00(a2);
  v26 = v40[0];
  v27 = v34;
  (*(v34 + 16))(v35, v17, v24);
  v38 = v26;
  v42 = v26.n128_u64[0];
  sub_1ADDD86D8(v26.n128_i64[0], v26.n128_u64[1]);
  v28 = sub_1AE1F6098(v37, v39, v35, &v38, v40);
  (*(v27 + 8))(v17, v24, v28);
  sub_1ADDCC35C(v42, v26.n128_u64[1]);

  swift_setDeallocating();
  CRDecoder.deinit();
  swift_deallocClassInstance();
  v29 = v41;
  v30 = v40[1];
  v31 = v33;
  *v33 = v40[0];
  v31[1] = v30;
  v31[2].n128_u64[0] = v29;
}

uint64_t Capsule.ObservableDifference.subscript.getter@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  return sub_1AE1F420C(a1, a2, a3, a4, type metadata accessor for Ref, a5);
}

{
  return sub_1AE1F420C(a1, a2, a3, a4, type metadata accessor for WeakRef, a5);
}

uint64_t sub_1AE1EB6C0(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 120) = a4;
  *(v5 + 128) = v4;
  *(v5 + 176) = a2;
  *(v5 + 104) = a1;
  *(v5 + 112) = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  *(v5 + 136) = v6;
  *(v5 + 144) = *(v6 - 8);
  *(v5 + 152) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1EB794, 0, 0);
}

uint64_t sub_1AE1EB7BC()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[18];
  v0[2] = v0;
  v0[3] = sub_1AE1EB8F0;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v0[10] = &unk_1AE25A2A0;
  v0[11] = v5;
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE1EB8F0()
{
  v1 = *v0;
  v2 = *v0;
  v9 = *v0;
  v3 = swift_task_alloc();
  v2[21] = v3;
  *v3 = v9;
  v3[1] = sub_1AE1EBA74;
  v4 = v1[15];
  v5 = v1[14];
  v6 = *(v2 + 176);
  v7 = v1[13];

  return sub_1AE026228(v7, v6, v5, v4);
}

uint64_t sub_1AE1EBA74(char a1)
{
  v4 = *v2;

  if (v1)
  {
    v5 = *(v4 + 8);

    return v5();
  }

  else
  {
    v7 = *(v4 + 8);

    return v7(a1 & 1);
  }
}

uint64_t sub_1AE1EBBDC()
{

  sub_1ADDE158C(*(v0 + 24), *(v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t Capsule.Ref.rootID.getter@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  *a1 = v3;
  a1[1] = v4;
  return sub_1ADDD86D8(v3, v4);
}

__n128 sub_1AE1EBC6C(__n128 *a1, unint64_t a2)
{
  v4 = swift_allocObject();
  result = *a1;
  v4[1] = *a1;
  v4[2].n128_u64[0] = a2;
  return result;
}

uint64_t Capsule.baseID.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  a1[1] = v3;
  return sub_1ADDD86D8(v2, v3);
}

void Capsule.copy()(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (v2[4])
  {
    v6 = v2[2];
    v5 = v2[3];
    v7 = v2[1];
    v12 = *v2;
    v13 = v7;
    v10 = v6;
    v11 = v5;
    sub_1ADDD86D8(v12, v7);
    sub_1ADDD86D8(v6, v5);
    sub_1ADEAA2FC(&v12, &v10, *(a1 + 16), *(a1 + 24), a2);
    sub_1ADDCC35C(v10, v11);
    v8 = v12;
    v9 = v13;

    sub_1ADDCC35C(v8, v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t Capsule.copyAssets(to:)(uint64_t a1, uint64_t a2)
{
  v3[65] = v2;
  v3[63] = a1;
  v3[64] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v3[66] = swift_task_alloc();
  v4 = sub_1AE23BDDC();
  v3[67] = v4;
  v3[68] = *(v4 - 8);
  v3[69] = swift_task_alloc();
  v3[70] = swift_task_alloc();
  v3[71] = swift_task_alloc();
  v3[72] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v3[73] = v5;
  v3[74] = *(v5 - 8);
  v3[75] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1EBEFC, 0, 0);
}

uint64_t sub_1AE1EBEFC(__n128 a1)
{
  v2 = *(v1 + 520);
  v3 = sub_1ADDF8128(a1);
  v6 = *(v2 + 32);
  *(v1 + 608) = v6;
  if (v6)
  {
    v7 = sub_1AE1FDF30();
    v8 = v7;
    *(v1 + 616) = v7;
    v9 = *(v7 + 32);
    *(v1 + 824) = v9;
    v10 = v7 + 64;
    v11 = 1 << v9;
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v7 + 64);
    *(v1 + 624) = OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory;
    *(v1 + 632) = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
    *(v1 + 640) = 0;
    v14 = (v11 + 63) >> 6;

    v15 = 0;
    while (v13)
    {
      v16 = v15;
LABEL_11:
      *(v1 + 656) = v16;
      *(v1 + 648) = v13;
      v17 = *(v1 + 504);
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v19 = v18 | (v16 << 6);
      v20 = *(*(v8 + 56) + 16 * v19);
      *(v1 + 664) = v20;
      if (*(v20 + 32) != v17)
      {
        v21 = (*(v8 + 48) + 16 * v19);
        v22 = *v21;
        *(v1 + 672) = *v21;
        v23 = v21[1];
        *(v1 + 680) = v23;

        sub_1ADDD86D8(v22, v23);

        sub_1ADDD86D8(v22, v23);
        v24 = *(v20 + 32);
        *(v1 + 688) = v24;
        *(v1 + 696) = *(v24 + 24);

        v3 = sub_1AE1EC19C;
        v4 = 0;
        v5 = 0;

        return MEMORY[0x1EEE6DFA0](v3, v4, v5);
      }
    }

    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_19;
      }

      if (v16 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v16);
      ++v15;
      if (v13)
      {
        v15 = v16;
        goto LABEL_11;
      }
    }

    v25 = *(v1 + 8);

    return v25();
  }

  else
  {
LABEL_19:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v3, v4, v5);
  }
}

uint64_t sub_1AE1EC19C()
{
  v1 = v0[75];
  v2 = v0[74];
  v3 = v0[73];
  v0[2] = v0;
  v0[3] = sub_1AE1EC2EC;
  v4 = swift_continuation_init();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v0[44] = &unk_1AE2544C0;
  v0[45] = v5;
  swift_weakInit();
  v0[88] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
  sub_1AE23D1FC();
  v6 = *(v2 + 8);
  v0[89] = v6;
  v0[90] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AE1EC2EC()
{

  return MEMORY[0x1EEE6DFA0](sub_1AE1EC3CC, 0, 0);
}

uint64_t sub_1AE1EC3CC()
{
  v1 = v0[85];
  v2 = v0[84];
  v3 = *(v0[86] + 24);
  v0[91] = v3;

  sub_1ADDD86D8(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1AE1EC480, v3, 0);
}

uint64_t sub_1AE1EC480()
{
  v40 = v0;
  if (qword_1ED966B00 != -1)
  {
    swift_once();
  }

  v1 = sub_1AE23C78C();
  v0[92] = __swift_project_value_buffer(v1, qword_1ED96F1C8);

  v2 = sub_1AE23C76C();
  v3 = sub_1AE23D60C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[91];
    v5 = v0[83];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v39 = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1AE1FB594(*(v4 + 120), *(v4 + 128), &v39);
    *(v6 + 12) = 2080;
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    sub_1ADDD86D8(v8, v9);
    v10 = sub_1AE23BEAC();
    v0[56] = v10;
    v0[57] = v11;
    v0[58] = 47;
    v0[59] = 0xE100000000000000;
    v0[60] = 95;
    v0[61] = 0xE100000000000000;
    sub_1ADE42DEC(v10, v11, v12);
    v13 = sub_1AE23D82C();
    v15 = v14;
    sub_1ADDCC35C(v8, v9);

    v16 = sub_1AE1FB594(v13, v15, &v39);

    *(v6 + 14) = v16;
    _os_log_impl(&dword_1ADDCA000, v2, v3, "%s readAsset %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1B26FDA50](v7, -1, -1);
    MEMORY[0x1B26FDA50](v6, -1, -1);
  }

  v17 = v0[91];
  v18 = v0[83];
  v20 = *(v18 + 16);
  v19 = *(v18 + 24);
  swift_beginAccess();
  v21 = *(v17 + 112);
  if (!*(v21 + 16))
  {
    goto LABEL_10;
  }

  sub_1ADDD86D8(v20, v19);

  v22 = sub_1ADDDE7CC(v20, v19);
  if ((v23 & 1) == 0)
  {

    sub_1ADDCC35C(v20, v19);
    goto LABEL_10;
  }

  v24 = (*(v21 + 56) + 24 * v22);
  v0[94] = *v24;
  v25 = v24[1];
  swift_unknownObjectRetain();
  sub_1ADDCC35C(v20, v19);

  ObjectType = swift_getObjectType();
  v27 = *(v25 + 16);
  swift_unknownObjectRetain();
  v28 = v27(ObjectType, v25);
  swift_unknownObjectRelease();
  if (v28)
  {
    swift_unknownObjectRelease();
LABEL_10:
    v0[93] = v0[80];
    v29 = v0[85];
    v30 = v0[84];
    sub_1ADDCC35C(v30, v29);

    sub_1ADDCC35C(v30, v29);

    return MEMORY[0x1EEE6DFA0](sub_1AE1EC960, 0, 0);
  }

  v31 = v0[91];
  v32 = *(v31 + 120);
  v0[95] = v32;
  v33 = *(v31 + 128);
  v0[96] = v33;
  v34 = *(v25 + 32);
  swift_unknownObjectRetain();
  v38 = (v34 + *v34);
  v35 = swift_task_alloc();
  v0[97] = v35;
  *v35 = v0;
  v35[1] = sub_1AE1ECB98;
  v36 = v0[66];

  return v38(v36, v32, v33, ObjectType, v25);
}

uint64_t sub_1AE1EC960()
{
  v1 = *(v0 + 680);
  v2 = *(v0 + 672);

  sub_1ADDCC35C(v2, v1);
  v6 = *(v0 + 656);
  v7 = (*(v0 + 648) - 1) & *(v0 + 648);
  *(v0 + 640) = *(v0 + 744);
  while (v7)
  {
    v3 = *(v0 + 616);
LABEL_8:
    *(v0 + 656) = v6;
    *(v0 + 648) = v7;
    v9 = *(v0 + 504);
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = v10 | (v6 << 6);
    v12 = *(*(v3 + 7) + 16 * v11);
    *(v0 + 664) = v12;
    if (*(v12 + 32) != v9)
    {
      v13 = (*(v3 + 6) + 16 * v11);
      v14 = *v13;
      *(v0 + 672) = *v13;
      v15 = v13[1];
      *(v0 + 680) = v15;

      sub_1ADDD86D8(v14, v15);

      sub_1ADDD86D8(v14, v15);
      v16 = *(v12 + 32);
      *(v0 + 688) = v16;
      *(v0 + 696) = *(v16 + 24);

      v3 = sub_1AE1EC19C;
      v4 = 0;
      v5 = 0;

      return MEMORY[0x1EEE6DFA0](v3, v4, v5);
    }
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v3, v4, v5);
    }

    v3 = *(v0 + 616);
    if (v8 >= (((1 << *(v0 + 824)) + 63) >> 6))
    {
      break;
    }

    v7 = *(v3 + v8 + 8);
    ++v6;
    if (v7)
    {
      v6 = v8;
      goto LABEL_8;
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1AE1ECB98()
{
  v1 = *(*v0 + 728);

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6DFA0](sub_1AE1ECCC4, v1, 0);
}

uint64_t sub_1AE1ECCC4()
{
  v29 = v0;
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[66];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    swift_unknownObjectRelease();
    sub_1ADDCEDE0(v3, &qword_1EB5B9DC0, &qword_1AE240B90);
    v0[93] = v0[80];
    v4 = v0[85];
    v5 = v0[84];
    sub_1ADDCC35C(v5, v4);

    sub_1ADDCC35C(v5, v4);
    v6 = sub_1AE1EC960;
  }

  else
  {
    v7 = v0[72];
    v8 = v0[71];
    v9 = *(v1 + 32);
    v0[98] = v9;
    v0[99] = (v1 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v9(v7, v3, v2);
    (*(v1 + 16))(v8, v7, v2);

    v10 = sub_1AE23C76C();
    v11 = sub_1AE23D60C();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = v0[96];
      v13 = v0[95];
      v14 = v0[71];
      v15 = v0[68];
      v16 = v0[67];
      v17 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28 = v27;
      *v17 = 136315394;
      *(v17 + 4) = sub_1AE1FB594(v13, v12, &v28);
      *(v17 + 12) = 2080;
      sub_1AE030ACC();
      v18 = sub_1AE23DD9C();
      v20 = v19;
      v21 = *(v15 + 8);
      v21(v14, v16);
      v22 = sub_1AE1FB594(v18, v20, &v28);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_1ADDCA000, v10, v11, "%s reading url %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B26FDA50](v27, -1, -1);
      MEMORY[0x1B26FDA50](v17, -1, -1);
    }

    else
    {
      v23 = v0[71];
      v24 = v0[68];
      v25 = v0[67];

      v21 = *(v24 + 8);
      v21(v23, v25);
    }

    v0[100] = v21;
    v6 = sub_1AE1ECFDC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1AE1ECFDC()
{
  v52 = v0;
  v1 = *(*(v0 + 664) + 32);
  sub_1ADDCEE40(v1 + 56, v0 + 80, &qword_1EB5B9DB0, &qword_1AE240B80);
  v2 = *(v0 + 104);
  sub_1ADDCEDE0(v0 + 80, &qword_1EB5B9DB0, &qword_1AE240B80);
  if (v2 || (sub_1ADDCEE40(*(v0 + 504) + 56, v0 + 120, &qword_1EB5B9DB0, &qword_1AE240B80), v3 = *(v0 + 144), sub_1ADDCEDE0(v0 + 120, &qword_1EB5B9DB0, &qword_1AE240B80), v3))
  {
    sub_1ADDCEE40(v1 + 56, v0 + 200, &qword_1EB5B9DB0, &qword_1AE240B80);
    v4 = *(v0 + 640);
    v5 = *(v0 + 576);
    if (*(v0 + 224))
    {
      sub_1ADE23E6C((v0 + 200), v0 + 160);
      v6 = sub_1AE23BDFC();
      if (!v4)
      {
        v8 = v6;
        v9 = v7;
        v10 = *(v0 + 184);
        v11 = *(v0 + 192);
        __swift_project_boxed_opaque_existential_1((v0 + 160), v10);
        v50 = (*(v11 + 16))(v8, v9, v10, v11);
        v26 = v12;
        v27 = *(v0 + 664);
        v28 = *(v0 + 560);
        v29 = *(v0 + 504);
        v31 = *(v27 + 16);
        v30 = *(v27 + 24);
        type metadata accessor for CRAssetRef();
        v19 = swift_allocObject();
        v19[2] = v31;
        v19[3] = v30;
        v19[4] = v29;
        type metadata accessor for CRFileSnapshot(0);
        sub_1ADDD86D8(v31, v30);

        v47 = v30;
        v48 = v31;
        sub_1ADDD86D8(v31, v30);
        sub_1AE162BBC(0, 0, v28);
        sub_1ADDCEE40(v29 + 56, v0 + 280, &qword_1EB5B9DB0, &qword_1AE240B80);
        v49 = v26;
        if (*(v0 + 304))
        {
          sub_1ADE23E6C((v0 + 280), v0 + 240);
          v32 = v26;
          v33 = *(v0 + 264);
          v34 = *(v0 + 272);
          __swift_project_boxed_opaque_existential_1((v0 + 240), v33);
          v35 = (*(v34 + 8))(v50, v32, v33, v34);
          v26 = v36;
          __swift_destroy_boxed_opaque_existential_1((v0 + 240));
        }

        else
        {
          sub_1ADDCEDE0(v0 + 280, &qword_1EB5B9DB0, &qword_1AE240B80);
          v35 = v50;
          sub_1ADDD86D8(v50, v26);
        }

        sub_1AE23BEDC();
        v37 = *(v0 + 784);
        v46 = *(v0 + 712);
        v44 = *(v0 + 600);
        v45 = *(v0 + 584);
        v38 = *(v0 + 560);
        v39 = *(v0 + 552);
        v40 = *(v0 + 536);
        sub_1ADDCC35C(v35, v26);
        v37(v39, v38, v40);
        v41 = swift_allocObject();
        v37(v41 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url, v39, v40);
        v42 = swift_allocObject();
        v42[2] = v48;
        v42[3] = v47;
        v42[4] = v41;
        *(v0 + 424) = &unk_1AE242370;
        *(v0 + 432) = v42;
        swift_weakInit();
        sub_1ADDD86D8(v48, v47);

        sub_1AE23D1FC();
        sub_1ADDCC35C(v8, v9);

        sub_1ADDCC35C(v48, v47);

        sub_1ADDCC35C(v50, v49);
        v46(v44, v45);
        __swift_destroy_boxed_opaque_existential_1((v0 + 160));
        v20 = 0;
        goto LABEL_11;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 160));
LABEL_8:
      *(v0 + 816) = v4;
      v13 = *(v0 + 728);
      v14 = sub_1AE1ED6B4;
      goto LABEL_14;
    }

    sub_1ADDCEDE0(v0 + 200, &qword_1EB5B9DB0, &qword_1AE240B80);
    sub_1AE1AD190(v5, 0, (v0 + 496));
    if (v4)
    {
      goto LABEL_8;
    }

    v20 = 0;
    v19 = *(v0 + 496);
  }

  else
  {
    v15 = *(v0 + 664);
    v16 = *(v0 + 576);
    v17 = *(v15 + 16);
    v18 = *(v15 + 24);
    sub_1ADDD86D8(v17, v18);
    sub_1AE1A4038(v17, v18, v16, &v51);
    sub_1ADDCC35C(v17, v18);
    v19 = v51;
    v20 = *(v0 + 640);
  }

LABEL_11:
  *(v0 + 808) = v20;
  v21 = *(v0 + 680);
  v22 = *(v0 + 672);
  swift_beginAccess();
  v24 = sub_1ADF5EFC4((v0 + 320), v22, v21);
  if (*v23)
  {
    *v23 = v19;
  }

  (v24)(v0 + 320, 0);
  v25 = *(v0 + 728);
  swift_endAccess();

  v14 = sub_1AE1ED598;
  v13 = v25;
LABEL_14:

  return MEMORY[0x1EEE6DFA0](v14, v13, 0);
}

uint64_t sub_1AE1ED598()
{
  v1 = v0[100];
  v2 = v0[72];
  v3 = v0[67];

  v1(v2, v3);
  swift_unknownObjectRelease();

  v0[93] = v0[101];
  v4 = v0[85];
  v5 = v0[84];
  sub_1ADDCC35C(v5, v4);

  sub_1ADDCC35C(v5, v4);

  return MEMORY[0x1EEE6DFA0](sub_1AE1EC960, 0, 0);
}

uint64_t sub_1AE1ED6B4()
{
  v1 = v0[100];
  v2 = v0[85];
  v3 = v0[84];
  v4 = v0[72];
  v5 = v0[67];
  swift_unknownObjectRelease();
  v1(v4, v5);
  sub_1ADDCC35C(v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1AE1ED79C, 0, 0);
}

uint64_t sub_1AE1ED79C()
{
  v1 = v0[85];
  v2 = v0[84];

  sub_1ADDCC35C(v2, v1);

  sub_1ADDCC35C(v2, v1);

  v3 = v0[1];

  return v3();
}

void Capsule.copyAssetsSync(to:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v131 = a1;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BDCC0, &qword_1AE242360);
  v5 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v97 = &v89 - v6;
  v96 = sub_1AE23BDDC();
  v7 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v89 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5BDD00, &qword_1AE242340);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v105 = &v89 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x1EEE9AC00](v14);
  v111 = &v89 - v16;
  sub_1ADDF8128(v15);
  v17 = *(v2 + 32);
  if (!v17)
  {
    goto LABEL_43;
  }

  v18 = *(v2 + 16);
  v129[0] = *v2;
  v129[1] = v18;
  v130 = v17;
  v19 = sub_1AE1FDF30();
  v20 = *(v19 + 64);
  v101 = v19 + 64;
  v21 = 1 << *(v19 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v94 = OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory;
  v102 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
  v100 = (v21 + 63) >> 6;
  v93 = (v7 + 32);
  v92 = (v5 + 8);

  v107 = v17;

  v24 = 0;
  v103 = xmmword_1AE259AF0;
  v99 = v11;
  v104 = v19;
  while (v23)
  {
LABEL_10:
    v26 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v27 = (v24 << 10) | (16 * v26);
    v28 = *(*(v19 + 56) + v27);
    if (*(v28 + 32) != v131)
    {
      v116 = v4;
      v29 = (*(v19 + 48) + v27);
      v31 = *v29;
      v30 = v29[1];
      type metadata accessor for AssetWrapper();
      v32 = swift_allocObject();
      *(v32 + 16) = 0;
      v108 = (v32 + 16);
      *(v32 + 24) = 0;
      *(v32 + 32) = v103;
      swift_retain_n();
      v113 = v31;
      v109 = v30;
      sub_1ADDD86D8(v31, v30);
      v114 = dispatch_semaphore_create(0);
      sub_1ADDCEE40(*(v28 + 32) + 56, v129, &qword_1EB5B9DB0, &qword_1AE240B80);
      v33 = sub_1AE23D1BC();
      v112 = *(v33 - 8);
      v34 = v111;
      (*(v112 + 56))(v111, 1, 1, v33);
      sub_1ADDCEE40(v129, &v126, &qword_1EB5B9DB0, &qword_1AE240B80);
      v35 = v131;
      sub_1ADDCEE40(v131 + 56, &v123, &qword_1EB5B9DB0, &qword_1AE240B80);
      v36 = swift_allocObject();
      *(v36 + 16) = 0;
      *(v36 + 24) = 0;
      *(v36 + 32) = v28;
      v37 = v127;
      *(v36 + 40) = v126;
      *(v36 + 56) = v37;
      *(v36 + 72) = v128;
      v38 = v124;
      *(v36 + 80) = v123;
      *(v36 + 96) = v38;
      *(v36 + 112) = v125;
      *(v36 + 120) = v32;
      v39 = v114;
      *(v36 + 128) = v35;
      *(v36 + 136) = v39;
      v40 = v34;
      v41 = v105;
      sub_1ADDCEE40(v40, v105, &unk_1EB5BDD00, &qword_1AE242340);
      v42 = *(v112 + 48);
      v106 = v33;
      LODWORD(v33) = v42(v41, 1, v33);
      v110 = v28;

      v115 = v32;

      v114 = v39;

      if (v33 == 1)
      {
        sub_1ADDCEDE0(v41, &unk_1EB5BDD00, &qword_1AE242340);
      }

      else
      {
        sub_1AE23D1AC();
        (*(v112 + 8))(v41, v106);
      }

      v43 = *(v36 + 16);
      swift_unknownObjectRetain();

      v4 = v116;
      if (v43)
      {
        swift_getObjectType();
        v44 = sub_1AE23D16C();
        v46 = v45;
        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        v46 = 0;
      }

      if (v46 | v44)
      {
        v119 = 0;
        v120 = 0;
        v121 = v44;
        v122 = v46;
      }

      swift_task_create();
      sub_1ADDCEDE0(v111, &unk_1EB5BDD00, &qword_1AE242340);

      v47 = sub_1AE23D75C();
      v50 = v115;
      if (*(v115 + 32) >> 60 != 15)
      {
        v112 = *(v115 + 32);
        v51 = *(v115 + 24);
        sub_1ADDCEE40(v129, &v123, &qword_1EB5B9DB0, &qword_1AE240B80);
        if (*(&v124 + 1))
        {
          sub_1ADE23E6C(&v123, &v126);
          v52 = *(&v127 + 1);
          v53 = v128;
          v54 = v51;
          __swift_project_boxed_opaque_existential_1(&v126, *(&v127 + 1));
          v55 = *(v53 + 16);
          v56 = v51;
          v57 = v112;
          sub_1ADDD86D8(v56, v112);
          v91 = v54;
          v58 = v116;
          v59 = v55(v54, v57, v52, v53);
          v106 = v60;
          if (v58)
          {
            sub_1ADDCEDE0(v129, &qword_1EB5B9DB0, &qword_1AE240B80);

            sub_1ADDE158C(v91, v112);

            sub_1ADDCC35C(v113, v109);

            __swift_destroy_boxed_opaque_existential_1(&v126);
            return;
          }

          v61 = v59;
          v116 = 0;
          v62 = *(v110 + 16);
          v63 = *(v110 + 24);
          type metadata accessor for CRAssetRef();
          v64 = swift_allocObject();
          v64[2] = v62;
          v64[3] = v63;
          v65 = v131;
          v90 = v64;
          v64[4] = v131;
          type metadata accessor for CRFileSnapshot(0);
          sub_1ADDD86D8(v62, v63);

          v89 = v62;
          sub_1ADDD86D8(v62, v63);
          sub_1AE162BBC(0, 0, v99);
          sub_1ADDCEE40(v65 + 56, &v117, &qword_1EB5B9DB0, &qword_1AE240B80);
          if (v118)
          {
            sub_1ADE23E6C(&v117, &v123);
            v67 = *(&v124 + 1);
            v66 = v125;
            __swift_project_boxed_opaque_existential_1(&v123, *(&v124 + 1));
            v68 = (*(v66 + 8))(v61, v106, v67, v66);
            v70 = v69;
            __swift_destroy_boxed_opaque_existential_1(&v123);
          }

          else
          {
            sub_1ADDCEDE0(&v117, &qword_1EB5B9DB0, &qword_1AE240B80);
            v68 = v61;
            v70 = v106;
            sub_1ADDD86D8(v61, v106);
          }

          v75 = v99;
          v76 = v116;
          sub_1AE23BEDC();
          v116 = v76;
          if (v76)
          {
            goto LABEL_44;
          }

          sub_1ADDCC35C(v68, v70);
          v77 = *v93;
          v78 = v95;
          v79 = v75;
          v80 = v96;
          (*v93)(v95, v79, v96);
          v81 = swift_allocObject();
          v77((v81 + OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url), v78, v80);
          v82 = swift_allocObject();
          v83 = v89;
          v82[2] = v89;
          v82[3] = v63;
          v82[4] = v81;
          *&v123 = &unk_1AE259B40;
          *(&v123 + 1) = v82;
          swift_weakInit();
          sub_1ADDD86D8(v83, v63);

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA350, &unk_1AE251B70);
          v84 = v97;
          sub_1AE23D1FC();
          sub_1ADDE158C(v91, v112);

          sub_1ADDCC35C(v83, v63);

          sub_1ADDCC35C(v61, v106);
          (*v92)(v84, v98);
          v74 = v108;
          *v108 = v90;

          v47 = __swift_destroy_boxed_opaque_existential_1(&v126);
          v4 = v116;
          v73 = v109;
          goto LABEL_32;
        }

        v47 = sub_1ADDCEDE0(&v123, &qword_1EB5B9DB0, &qword_1AE240B80);
      }

      v71 = *(v50 + 40);
      if (v71)
      {
        v72 = OBJC_IVAR____TtC9Coherence14CRFileSnapshot_url;

        sub_1AE1AD190(v71 + v72, 0, &v126);
        v73 = v109;
        if (v4)
        {

          sub_1ADDCC35C(v113, v73);

          sub_1ADDCEDE0(v129, &qword_1EB5B9DB0, &qword_1AE240B80);
LABEL_38:

          return;
        }

        v74 = v108;
        *v108 = v126;
      }

      else
      {
        v73 = v109;
        v74 = v108;
      }

LABEL_32:
      v85 = *v74;
      if (!*v74)
      {
        sub_1ADE42E40(v47, v48, v49);
        swift_allocError();
        *v88 = 0xD000000000000014;
        *(v88 + 8) = 0x80000001AE263EA0;
        *(v88 + 16) = 3;
        swift_willThrow();

        sub_1ADDCC35C(v113, v73);

        sub_1ADDCEDE0(v129, &qword_1EB5B9DB0, &qword_1AE240B80);
        return;
      }

      swift_beginAccess();

      v87 = sub_1ADF5EFC4(&v126, v113, v73);
      if (*v86)
      {
        *v86 = v85;

        (v87)(&v126, 0);
        swift_endAccess();
      }

      else
      {
        (v87)(&v126, 0);
        swift_endAccess();
      }

      sub_1ADDCC35C(v113, v73);

      sub_1ADDCEDE0(v129, &qword_1EB5B9DB0, &qword_1AE240B80);
      v19 = v104;
    }
  }

  while (1)
  {
    v25 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v25 >= v100)
    {

      goto LABEL_38;
    }

    v23 = *(v101 + 8 * v25);
    ++v24;
    if (v23)
    {
      v24 = v25;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  swift_unexpectedError();
  __break(1u);
}

uint64_t sub_1AE1EE714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a8;
  v8[7] = v10;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  return MEMORY[0x1EEE6DFA0](sub_1AE1EE744, 0, 0);
}

uint64_t sub_1AE1EE744()
{
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  *(v0 + 72) = *(v1 + 32);

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1AE1EE84C;
  v5 = *(v0 + 16);

  return sub_1AE1EB6C0(v5, 0, &unk_1AE25A288, v2);
}

uint64_t sub_1AE1EE84C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1AE1EE9F0;
  }

  else
  {

    v2 = sub_1AE1EE98C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AE1EE98C()
{
  sub_1AE23D76C();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AE1EE9F0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1AE1EEA54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a6;
  v7[7] = a7;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5B9DC0, &qword_1AE240B90);
  v7[8] = swift_task_alloc();
  v8 = sub_1AE23BDDC();
  v7[9] = v8;
  v7[10] = *(v8 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AE1EEB54, 0, 0);
}

uint64_t sub_1AE1EEB54()
{
  v20 = v0;
  if (*(v0[3] + 24))
  {
    v1 = sub_1AE23BDFC();
    v2 = v0[5];
    v3 = *(v2 + 24);
    v4 = *(v2 + 32);
    *(v2 + 24) = v1;
    *(v2 + 32) = v5;
    sub_1ADDE158C(v3, v4);
  }

  else
  {
    if (*(v0[4] + 24))
    {
      v7 = v0[10];
      v6 = v0[11];
      v9 = v0[8];
      v8 = v0[9];
      v10 = v0[6];
      v11 = *(v7 + 16);
      v11(v6, v0[2], v8);
      v11(v9, v10 + OBJC_IVAR____TtC9Coherence14CRAssetManager_temporaryDirectory, v8);
      (*(v7 + 56))(v9, 0, 1, v8);
      *(v0[5] + 40) = sub_1AE163454(v6, 0, 0, 0, v9);
    }

    else
    {
      v12 = v0[7];
      v13 = v0[5];
      v14 = v0[2];
      v15 = *(v12 + 16);
      v16 = *(v12 + 24);
      sub_1ADDD86D8(v15, v16);
      sub_1AE1A4038(v15, v16, v14, &v19);
      sub_1ADDCC35C(v15, v16);
      *(v13 + 16) = v19;
    }
  }

  v17 = v0[1];

  return v17();
}

void Capsule.in(_:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v4[2] = a1;
  v4[3] = a2;
  Capsule.mutate<A>(_:)(sub_1AE1FE18C, v4, a3, a4);
}

void Capsule.mutate<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v6[2] = a4;
  v6[3] = a1;
  v6[4] = a2;
  sub_1ADDE1854(sub_1AE1FE1B4, v6, a3, a5);
  sub_1ADDE1320(v5);
}

uint64_t sub_1AE1EEE90(uint64_t a1, void (*a2)(void *), uint64_t a3, uint64_t a4)
{
  v7[3] = type metadata accessor for Capsule.Ref(0, *(*a1 + 80), *(*a1 + 88), a4);
  v7[4] = &protocol witness table for Capsule<A>.Ref;
  v7[0] = a1;

  a2(v7);
  return __swift_destroy_boxed_opaque_existential_1(v7);
}

void Capsule.mutateCachedValues(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 32);
  if (v4)
  {
    v8 = OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated;
    v9 = swift_beginAccess();
    v10 = *(v4 + v8);
    MEMORY[0x1EEE9AC00](v9);
    v14[2] = a1;
    v14[3] = a2;

    sub_1ADDE1854(sub_1AE1FEAF8, v14, a3, v11);
    v12 = *(v3 + 32);
    if (v12)
    {
      v13 = OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated;
      swift_beginAccess();
      *(v12 + v13) = v10;

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void Capsule.version(for:)(uint64_t *a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + 32))
  {
    v5 = *a1;
    v4 = a1[1];
    swift_beginAccess();
    v11 = v5;
    v12 = v4;
    sub_1ADDD86D8(v5, v4);
    v7 = sub_1AE031554(v10, &v11);
    v8 = *(v6 + 16);
    if (v8)
    {
      v9 = *(v6 + 24);

      (v7)(v10, 0);
      swift_endAccess();
      sub_1ADDCC35C(v11, v12);
    }

    else
    {
      (v7)(v10, 0);
      sub_1ADDCC35C(v11, v12);
      swift_endAccess();
      v9 = 0;
    }

    *a2 = v8;
    a2[1] = v9;
  }

  else
  {
    __break(1u);
  }
}

id Capsule.context.getter()
{
  v3 = 0;
  memset(v2, 0, sizeof(v2));
  v0 = sub_1ADDCE2E4(0, v2);
  sub_1ADDCEDE0(v2, &qword_1EB5B9DB0, &qword_1AE240B80);
  return v0;
}

void Capsule.merge<A>(_:)(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[2].n128_u64[0];
  v5 = a1[1];
  v6[0] = *a1;
  v6[1] = v5;
  v7 = v4;
  Capsule.merge<A>(_:)(v6, a2, a3, a4, v8);
}

void Capsule.merge<A>(_:)(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v11 = a1[1];
  v57[0] = *a1;
  v57[1] = v11;
  v12 = a1[2].n128_i64[0];
  v58 = v12;
  v13 = *(v5 + 32);
  if (v13)
  {
    if (v13 == v12)
    {
LABEL_3:
      if (qword_1EB5B9908 != -1)
      {
        swift_once();
      }

      v14 = byte_1EB5D750A;
      *a5 = word_1EB5D7508;
      *(a5 + 2) = v14;
      return;
    }
  }

  else if (!v12)
  {
    goto LABEL_3;
  }

  Capsule.version.getter(&v56);
  v15 = *(v5 + 32);
  v16 = *(v5 + 16);
  v52 = *v5;
  v53 = v16;
  v54 = v15;
  Capsule.version.getter(&v55);
  v17 = swift_allocObject();
  v17[3] = 0;
  v17[4] = 0;
  v17[2] = 0;
  if (!v15)
  {
    __break(1u);
    goto LABEL_38;
  }

  if (!v12)
  {
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
    return;
  }

  v18 = v17;
  v44 = a3;
  v45 = a4;
  v48 = a2;
  if (sub_1ADEACB44(v12))
  {
    v46 = a5;
    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    sub_1AE23D6AC();
    v19 = v52.n128_u64[0];
    v20 = v52.n128_u8[8];
    v21 = v53;
    v18[2] = v52.n128_u64[0];
    v18[3] = v20;
    v18[4] = v21;
    v22 = *(&v56 + 1);
    if (*(*(&v56 + 1) + 16))
    {
      v23 = v56;
      if (*(v21 + 16))
      {
        v52 = v56;

        sub_1ADDF8898(v19, v20, v21);

        v22 = v52.n128_u64[1];
        v23 = v52.n128_u64[0];
      }

      *&v56 = v23;
      *(&v56 + 1) = v22;
    }

    v24 = *(&v55 + 1);
    v25 = v55;
    if (*(*(&v55 + 1) + 16))
    {
      if (*(v21 + 16))
      {
        v52 = v55;

        sub_1ADDF8898(v19, v20, v21);
      }

      a5 = v46;
      *&v55 = v25;
      *(&v55 + 1) = v24;
    }

    else
    {
      a5 = v46;
    }
  }

  else
  {
    v24 = *(&v55 + 1);
    v25 = v55;
  }

  v26 = v56;
  v52.n128_u64[0] = 0;

  sub_1ADF6457C(v27, &v52, v24);
  sub_1ADF6457C(v26, &v52, v25);

  switch(v52.n128_u64[0])
  {
    case 3uLL:
      v47 = a5;
      sub_1ADDF8128(v28);
      if (*(v5 + 32))
      {
        sub_1ADEAEF54(v12, 0, 0, 0, &v52);
        v30 = v52.n128_u16[0];
        v31 = v52.n128_u8[2];

        v32 = *(v5 + 24);
        v52.n128_u64[0] = *(v5 + 16);
        v52.n128_u64[1] = v32;
        v33 = *(v5 + 8);
        v50 = *v5;
        v51 = v33;
        sub_1ADDD86D8(v52.n128_i64[0], v32);
        sub_1ADDD86D8(v50, v33);
        sub_1ADEA9BC0(0, 0, &v52, &v50);
        sub_1ADDE158C(v50, v51);
        sub_1ADDE158C(v52.n128_i64[0], v52.n128_u64[1]);

        *v47 = v30;
        *(v47 + 2) = v31;
        return;
      }

      goto LABEL_39;
    case 2uLL:

      if (qword_1EB5B9908 != -1)
      {
        swift_once();
      }

      v29 = &word_1EB5D7508;
      break;
    case 1uLL:

      sub_1AE1EF764(v5, v57, v18, *(v48 + 16), v44, *(v48 + 24), v45, a5);

      return;
    default:

      v34 = *(v5 + 32);
      v35 = *(v5 + 16);
      v52 = *v5;
      v53 = v35;
      v54 = v34;
      Capsule.version.getter(&v50);
      v36 = v51;

      sub_1ADF684B4(v36);
      v38 = v37;

      Capsule.version.getter(v49);
      v39 = v49[1];

      sub_1ADF684B4(v39);
      v41 = v40;

      if (v41 < v38)
      {
        sub_1AE1EF764(v6, v57, v18, *(v48 + 16), v44, *(v48 + 24), v45, &v52);
      }

      if (qword_1ED9670C0 != -1)
      {
        swift_once();
      }

      v29 = &word_1ED96F220;
      break;
  }

  v42 = *v29;
  v43 = *(v29 + 2);

  *a5 = v42;
  *(a5 + 2) = v43;
}

void sub_1AE1EF764(__n128 *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _WORD *a8@<X8>)
{
  v77 = a7;
  v78 = a6;
  v76 = a5;
  v79 = a8;
  v12 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v75 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[1].n128_i64[0];
  v16 = a1[1].n128_u64[1];
  v17 = a2[1].n128_i64[0];
  v18 = a2[1].n128_u64[1];
  sub_1ADDD86D8(v15, v16);
  LOBYTE(v17) = sub_1ADDD6F8C(v15, v16, v17, v18);
  sub_1ADDCC35C(v15, v16);
  if ((v17 & 1) == 0)
  {
    v32 = a2[2].n128_i64[0];
    if (v32)
    {
      swift_beginAccess();
      v34 = *(a3 + 32);
      if (v34)
      {
        v35 = *(a3 + 16);
        v36 = *(a3 + 24);
        v37 = v32 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version;
        swift_beginAccess();
        v38 = *(*(v37 + 8) + 16);

        if (v38)
        {
          v40 = sub_1ADEADF58(0);
          sub_1ADEB0918(v35, v36 & 1, v34, 0);

          v32 = v40;
        }

        v41 = a1[2].n128_i64[0];
        v42 = a1[1];
        v85 = *a1;
        v86 = v42;
        v87 = v41;
        type metadata accessor for Capsule(0, a4, v78, v39);
        Capsule.version.getter(&v90);
        v43 = *(v90.n128_u64[1] + 16);

        if (v43)
        {
          sub_1ADDF8128(v44);
          if (!a1[2].n128_u64[0])
          {
LABEL_29:
            __break(1u);
            return;
          }

          sub_1ADEB0918(v35, v36 & 1, v34, 0);
        }
      }

      else
      {
        type metadata accessor for Capsule(0, a4, v78, v33);
      }

      sub_1ADDF8128(v45);
      if (a1[2].n128_u64[0])
      {

        v46 = sub_1ADEB7A00(v32);

        if (!v46)
        {

          v51 = v79;
          *v79 = 512;
          *(v51 + 2) = 0;
          return;
        }

        if (a1[2].n128_u64[0])
        {
          v48 = a1[1].n128_u64[1];
          v85.n128_u64[0] = a1[1].n128_u64[0];
          v47 = v85.n128_u64[0];
          v85.n128_u64[1] = v48;
          v50 = a1->n128_u64[0];
          v49 = a1->n128_u64[1];
          v90.n128_u64[0] = v50;
          v90.n128_u64[1] = v49;

          sub_1ADDD86D8(v47, v48);
          sub_1ADDD86D8(v50, v49);
          sub_1ADEA9BC0(0, 0, &v85, &v90);

          sub_1ADDE158C(v90.n128_i64[0], v90.n128_u64[1]);
          sub_1ADDE158C(v85.n128_i64[0], v85.n128_u64[1]);
          goto LABEL_22;
        }

        goto LABEL_28;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v19 = a1->n128_u64[0];
  v20 = a1->n128_u64[1];
  v21 = a1[1].n128_i64[0];
  v22 = a1[1].n128_u64[1];
  sub_1ADDD86D8(a1->n128_u64[0], v20);
  sub_1ADDD86D8(v21, v22);
  v23 = sub_1ADDD6F8C(v19, v20, v21, v22);
  sub_1ADDCC35C(v21, v22);
  sub_1ADDCC35C(v19, v20);
  if (!v23)
  {
    sub_1ADDFC54C(v14);
    v24 = a1->n128_u64[0];
    v25 = a1->n128_u64[1];
    v26 = *&v14[*(v12 + 20)];
    sub_1ADDD86D8(a1->n128_u64[0], v25);
    sub_1ADDDF7A8(v24, v25, v26, &v85);
    sub_1ADDCC35C(v24, v25);
    sub_1ADE73DF4(v14);
    if (!v86.n128_u64[0])
    {
      v53 = a1->n128_u64[1];
      v54 = a1[1].n128_i64[0];
      v55 = a1[1].n128_u64[1];
      v56 = a1[2].n128_i64[0];
      v80 = a1->n128_u64[0];
      v52 = v80;
      v81 = v53;
      v82 = v54;
      v83 = v55;
      v84 = v56;
      v85.n128_u64[0] = v80;
      v85.n128_u64[1] = v53;
      v57 = v78;
      Ref.init(id:)(&v85, v89);
      v90 = v89[0];
      sub_1ADDD86D8(v52, v53);
      sub_1ADDD86D8(v54, v55);

      sub_1ADDD86D8(v52, v53);
      v59 = type metadata accessor for Capsule(0, a4, v57, v58);
      v61 = type metadata accessor for Ref(0, a4, v57, v60);
      WitnessTable = swift_getWitnessTable();
      Capsule.encapsulate<A>(_:)(&v90, v59, v61, WitnessTable, &v85);
      sub_1ADDCC35C(v90.n128_i64[0], v90.n128_u64[1]);
      v63 = v82;
      v64 = v83;
      sub_1ADDCC35C(v80, v81);
      sub_1ADDCC35C(v63, v64);

      v65 = v87;
      v66 = a1->n128_u64[0];
      v67 = a1->n128_u64[1];
      v68 = a1[1].n128_i64[0];
      v69 = a1[1].n128_u64[1];
      v70 = v86;
      *a1 = v85;
      a1[1] = v70;
      a1[2].n128_u64[0] = v65;
      sub_1ADDCC35C(v66, v67);
      sub_1ADDCC35C(v68, v69);

      v71 = a2[2].n128_u64[0];
      v72 = a2[1];
      v85 = *a2;
      v86 = v72;
      v87 = v71;
      Capsule.merge<A>(_:)(&v85, v59, v76, v77, &v80);
      goto LABEL_22;
    }

    sub_1ADDDC21C(v85.n128_i64[0], v85.n128_i64[1], v86.n128_i64[0], v86.n128_i64[1], v87, v88);
  }

  v27 = a1->n128_u64[0];
  v28 = a1->n128_u64[1];
  v29 = a1[1].n128_i64[0];
  v30 = a1[1].n128_u64[1];
  v31 = a2[2].n128_i64[0];
  v85.n128_u64[0] = v31;
  if (!v31)
  {
    goto LABEL_27;
  }

  a1[2].n128_u64[0] = v31;
  sub_1ADDD86D8(v27, v28);
  sub_1ADDD86D8(v29, v30);
  sub_1ADDCEE40(&v85, &v80, &qword_1EB5BE828, &qword_1AE25A278);
  sub_1ADDCC35C(v27, v28);
  sub_1ADDCC35C(v29, v30);

LABEL_22:
  if (qword_1EB5B9910 != -1)
  {
    swift_once();
  }

  v73 = byte_1EB5D750D;
  v74 = v79;
  *v79 = word_1EB5D750B;
  *(v74 + 2) = v73;
}

void Capsule.encapsulate<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v11 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v34 - v16;
  v17 = *(v5 + 4);
  if (!v17)
  {
    __break(1u);
    goto LABEL_6;
  }

  v40 = v15;
  v41 = a2;
  v42 = a5;
  v18 = *v5;
  v36 = v5[1];
  v37 = v18;
  v19 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADDD9E68(v17 + v19, v13);
  v20 = *(a4 + 48);
  v38 = a1;
  v39 = a3;
  v35 = v20;
  v20(&v51, a3, a4);
  v21 = v51;
  sub_1ADDDF7A8(v51, *(&v51 + 1), *&v13[*(v11 + 20)], &v47);
  sub_1ADDCC35C(v21, *(&v21 + 1));
  sub_1ADE73DF4(v13);
  v22 = v48;
  if (!v48)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v24 = v49;
  v23 = v50;
  v25 = *(&v48 + 1);
  v26 = v47;

  v28 = sub_1ADDDC21C(v27, *(&v26 + 1), v22, v25, v24, v23);
  if (v26)
  {
    (*(*v26 + 88))(v45, v28);

    v29 = v43;
    swift_dynamicCast();
    v45[1] = v36;
    v45[0] = v37;
    v46 = v17;
    v35(&v51, v39, a4);
    v44 = v51;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    Capsule.encapsulate<A>(crdt:id:)(v29, &v44, AssociatedTypeWitness, AssociatedConformanceWitness, &v47);
    sub_1ADDCC35C(v44, *(&v44 + 1));
    v31 = v49;
    v32 = v48;
    v33 = v42;
    *v42 = v47;
    v33[1] = v32;
    *(v33 + 4) = v31;
    (*(v40 + 8))(v29, AssociatedTypeWitness);
    return;
  }

LABEL_7:
  __break(1u);
}

void Capsule.mergeCopied(_:)(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = v2[2];
  v10 = v2[3];
  sub_1ADDD86D8(v9, v10);
  sub_1ADDD86D8(v6, v7);
  v11 = sub_1ADDD6F8C(v9, v10, v6, v7);
  sub_1ADDCC35C(v6, v7);
  sub_1ADDCC35C(v9, v10);
  if (v11)
  {
    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
    v16.n128_u64[0] = v5;
    v16.n128_u64[1] = v4;
    v17 = v6;
    v18 = v7;
    v19 = v8;
    Capsule.merge<A>(_:)(&v16, a2, v12, v13, v20);
  }

  else
  {
    v14 = v2[2];
    v15 = v2[3];
    sub_1ADDCC35C(*v2, v2[1]);
    sub_1ADDCC35C(v14, v15);

    *v2 = v5;
    v2[1] = v4;
    v2[2] = v6;
    v2[3] = v7;
    v2[4] = v8;
    sub_1ADDD86D8(v5, v4);
    sub_1ADDD86D8(v6, v7);
  }
}

void Capsule.mergingWithResult(_:)(uint64_t *a1, uint64_t a2, __n128 *a3, uint64_t a4)
{
  v8 = a3[2].n128_u64[0];
  v9 = *v4;
  v10 = v4[1];
  v11 = v4[2];
  v12 = v4[3];
  v13 = v4[4];
  *a1 = v9;
  a1[1] = v10;
  a1[2] = v11;
  a1[3] = v12;
  a1[4] = v13;
  v14 = a3[1];
  v18[0] = *a3;
  v18[1] = v14;
  v19 = v8;
  sub_1ADDD86D8(v9, v10);
  sub_1ADDD86D8(v11, v12);
  v15 = *(a4 + 16);
  v16 = *(a4 + 24);

  Capsule.merge<A>(_:)(v18, a4, v15, v16, &v20);
  v17 = v21;
  *a2 = v20;
  *(a2 + 2) = v17;
}

void Capsule.merging(_:)(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = a1[2].n128_u64[0];
  v7 = *v3;
  v8 = v3[1];
  v9 = v3[2];
  v10 = v3[3];
  v11 = v3[4];
  *a3 = v7;
  a3[1] = v8;
  a3[2] = v9;
  a3[3] = v10;
  a3[4] = v11;
  sub_1ADDD86D8(v7, v8);
  sub_1ADDD86D8(v9, v10);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);

  v14 = a1[1];
  v15[0] = *a1;
  v15[1] = v14;
  v16 = v6;
  Capsule.merge<A>(_:)(v15, a2, v12, v13, v17);
}

void Capsule.merging<A>(_:)(__n128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1[2].n128_u64[0];
  v11 = *v5;
  v12 = v5[1];
  v13 = v5[2];
  v14 = v5[3];
  v15 = v5[4];
  *a5 = v11;
  a5[1] = v12;
  a5[2] = v13;
  a5[3] = v14;
  a5[4] = v15;
  sub_1ADDD86D8(v11, v12);
  sub_1ADDD86D8(v13, v14);

  v16 = a1[1];
  v17[0] = *a1;
  v17[1] = v16;
  v18 = v10;
  Capsule.merge<A>(_:)(v17, a2, a3, a4, v19);
}

void Capsule.encapsulate<A>(crdt:id:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = a2[1];
  v11 = *v6;
  v12 = v6[1];
  v14 = v6[2];
  v13 = v6[3];
  v15 = v6[4];
  sub_1ADDD86D8(v11, v12);
  sub_1ADDD86D8(v11, v12);
  v16 = sub_1ADDD6F8C(v11, v12, v9, v10);
  sub_1ADDCC35C(v11, v12);
  if (v16)
  {
    sub_1ADDD86D8(v11, v12);
    sub_1ADDD86D8(v14, v13);
    v17 = sub_1ADDD6F8C(v11, v12, v14, v13);
    sub_1ADDCC35C(v11, v12);
    sub_1ADDCC35C(v14, v13);
    sub_1ADDCC35C(v11, v12);
    if (v17)
    {
      v21 = v11;
      v22 = v12;
      v23 = v14;
      v24 = v13;
      v25 = v15;
      sub_1ADDD86D8(v11, v12);
      sub_1ADDD86D8(v14, v13);
      type metadata accessor for Capsule(0, a4, a5, v18);

      swift_dynamicCast();
      return;
    }
  }

  else
  {
    sub_1ADDCC35C(v11, v12);
  }

  if (v15)
  {
    v21 = v9;
    v22 = v10;
    sub_1ADEAB444(a1, &v21, a4, a5, a6);
  }

  else
  {
    __break(1u);
  }
}

void Capsule.hashState<A>(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v32 = *(AssociatedTypeWitness - 1);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v31 = &v27 - v12;
  v13 = *(v4 + 32);
  if (!v13)
  {
    __break(1u);
    goto LABEL_6;
  }

  v14 = OBJC_IVAR____TtC9Coherence10CapsuleRef_references;
  swift_beginAccess();
  sub_1ADDD9E68(v13 + v14, v10);
  v15 = *(a4 + 48);
  v29 = a1;
  v30 = a3;
  v28 = v15;
  v15(&v38, a3, a4);
  v16 = v38;
  v17 = v39;
  sub_1ADDDF7A8(v38, v39, *&v10[*(v8 + 20)], &v33);
  sub_1ADDCC35C(v16, v17);
  sub_1ADE73DF4(v10);
  v18 = v34;
  if (!v34)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v20 = v36;
  v19 = v37;
  v21 = v35;
  v22 = v33;

  v24 = sub_1ADDDC21C(v23, *(&v22 + 1), v18, v21, v20, v19);
  if (v22)
  {
    (*(*v22 + 88))(v40, v24);

    v25 = v31;
    swift_dynamicCast();
    v28(&v33, v30, a4);
    *v40 = v33;
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_1ADEABF90(v25, v40, AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_1ADDCC35C(v40[0], v40[1]);
    (*(v32 + 8))(v25, AssociatedTypeWitness);
    return;
  }

LABEL_7:
  __break(1u);
}

void *Capsule.encapsulateTransient<A>(_:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = *(a2 + 48);
  sub_1ADDD86D8(v7, v8);

  result = v10(&v12, a1, a2);
  if (v9)
  {
    *a3 = v12;
    *(a3 + 16) = v7;
    *(a3 + 24) = v8;
    *(a3 + 32) = v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall Capsule.finalizeTimestamps()()
{
  v2 = 0;
  memset(v1, 0, sizeof(v1));
  v0 = sub_1ADDCE2E4(0, v1);
  sub_1ADDCEDE0(v1, &qword_1EB5B9DB0, &qword_1AE240B80);
  Capsule.finalizeTimestamps(_:)(v0);
}

uint64_t Capsule.hasDelta(from:)(uint64_t result)
{
  if (*(v1 + 32))
  {
    result = *(result + 32);
    if (result)
    {
      return sub_1ADEAC8A8(result) & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t Capsule.hasDelta(to:)(uint64_t result)
{
  if (*(result + 32))
  {
    result = *(v1 + 32);
    if (result)
    {
      return sub_1ADEAC8A8(result) & 1;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void Capsule.actionUndoing(deltaTo:)(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 4);
  v4 = *(v2 + 32);
  v5 = a1[1];
  v9 = *a1;
  v10 = v5;
  v11 = v3;
  v6 = *(v2 + 16);
  v7[0] = *v2;
  v7[1] = v6;
  v8 = v4;
  Capsule.actionUndoingDifference(from:)(v7, a2);
}

void Capsule.actionUndoingDifference(from:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(v2 + 32))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = *(a1 + 32);
  if (!v3)
  {
LABEL_8:
    __break(1u);
    return;
  }

  sub_1ADEACC78(v3, v8);
  v5 = v8[0];
  if (v8[0])
  {
    v7 = v8[1];
    v6 = v8[2];

    sub_1AE1FE29C(v5, v7, v6, MEMORY[0x1E69E7CF8]);
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
  a2[2] = v6;
}

void Capsule.apply(_:)(uint64_t *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = a1[2];

    sub_1ADDF8128(v5);
    if (v1[4])
    {
      v10 = v2;
      v11 = v3;
      v12 = v4;

      sub_1ADEB9440(&v10);
      sub_1AE1FE29C(v10, v11, v12, MEMORY[0x1E69E7CF8]);

      v6 = v1[3];
      v10 = v1[2];
      v11 = v6;
      v7 = v1[1];
      v8 = *v1;
      v9 = v7;
      sub_1ADDD86D8(v10, v6);
      sub_1ADDD86D8(v8, v7);
      sub_1ADEA9BC0(1, 0, &v10, &v8);
      sub_1ADDE158C(v8, v9);
      sub_1ADDE158C(v10, v11);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t Capsule.applying(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v6 = *v3;
  v5 = v3[1];
  v8 = v3[2];
  v7 = v3[3];
  v9 = v3[4];
  if (*a1)
  {
    v11 = a1[1];
    v10 = a1[2];
    *a3 = v6;
    a3[1] = v5;
    a3[2] = v8;
    a3[3] = v7;
    a3[4] = v9;
    v14[0] = v4;
    v14[1] = v11;
    v14[2] = v10;

    sub_1ADDD86D8(v6, v5);
    sub_1ADDD86D8(v8, v7);

    Capsule.apply(_:)(v14, v12);
    return sub_1AE1FE29C(v4, v11, v10, MEMORY[0x1E69E7CF8]);
  }

  else
  {
    *a3 = v6;
    a3[1] = v5;
    a3[2] = v8;
    a3[3] = v7;
    a3[4] = v9;
    sub_1ADDD86D8(v6, v5);
    sub_1ADDD86D8(v8, v7);
  }
}

void Capsule.apply(_:)(uint64_t *a1, __n128 a2)
{
  v3 = *a1;
  if (*a1)
  {
    v5 = a1[1];
    v4 = a1[2];
    sub_1ADDF8128(a2);
    if (v2[4])
    {
      v10 = v3;
      v11 = v5;
      v12 = v4;

      sub_1ADEB9440(&v10);
      sub_1AE1FE29C(v10, v11, v12, MEMORY[0x1E69E7CF8]);
      v6 = v2[3];
      v10 = v2[2];
      v11 = v6;
      v7 = v2[1];
      v8 = *v2;
      v9 = v7;
      sub_1ADDD86D8(v10, v6);
      sub_1ADDD86D8(v8, v7);
      sub_1ADEA9BC0(1, 0, &v10, &v8);
      sub_1ADDE158C(v8, v9);
      sub_1ADDE158C(v10, v11);
    }

    else
    {
      __break(1u);
    }
  }
}

void Capsule.actionUndoingDifference(from:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(v2 + 32))
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      sub_1ADEACC78(v3, a2);
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t Capsule.applying(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v5 = *v2;
  v4 = v2[1];
  v7 = v2[2];
  v6 = v2[3];
  v8 = v2[4];
  if (*a1)
  {
    v10 = a1[1];
    v9 = a1[2];
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v7;
    a2[3] = v6;
    a2[4] = v8;
    v13[0] = v3;
    v13[1] = v10;
    v13[2] = v9;
    sub_1AE1FE1D4(v3, v10, v9);
    sub_1ADDD86D8(v5, v4);
    sub_1ADDD86D8(v7, v6);

    Capsule.apply(_:)(v13, v11);
    return sub_1AE1FE29C(v3, v10, v9, MEMORY[0x1E69E7CF8]);
  }

  else
  {
    *a2 = v5;
    a2[1] = v4;
    a2[2] = v7;
    a2[3] = v6;
    a2[4] = v8;
    sub_1ADDD86D8(v5, v4);
    sub_1ADDD86D8(v7, v6);
  }
}

void Capsule.isReferentiallyConsistent.getter()
{
  if (v0[4])
  {
    v1 = v0[3];
    v3 = *v0;
    v2 = v0[1];
    v6 = v0[2];
    v7 = v1;
    v4 = v3;
    v5 = v2;
    sub_1ADDD86D8(v6, v1);
    sub_1ADDD86D8(v3, v2);
    sub_1ADEB4434(&v6, &v4);
    sub_1ADDE158C(v4, v5);
    sub_1ADDE158C(v6, v7);
  }

  else
  {
    __break(1u);
  }
}

uint64_t Capsule.getCachedValue<A>(forKey:recompute:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v19 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v12;
  v14 = v12[1];
  v15 = *(v5 + 16);
  v24[0] = *v5;
  v24[1] = v15;
  v25 = *(v5 + 32);
  if (qword_1EB5B8EE0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CD8);
  v16 = *(a3 + 16);
  sub_1AE1F1344(v24, v13, v14, &v22);
  os_unfair_lock_unlock(&dword_1EB5D7CD8);
  if (*(&v23 + 1))
  {
    v20 = v22;
    v21 = v23;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA00, &qword_1AE2587A0);
    return swift_dynamicCast();
  }

  else
  {
    a2();
    os_unfair_lock_lock(&dword_1EB5D7CD8);
    sub_1AE1F14B4(&dword_1EB5D7CD8, v24, v13, v14, v11, v16, a4);
    os_unfair_lock_unlock(&dword_1EB5D7CD8);
    sub_1ADDCEDE0(&v22, &qword_1EB5BAA00, &qword_1AE2587A0);
    return (*(v9 + 32))(v19, v11, a4);
  }
}

uint64_t Capsule.getCachedValue<A>(forKey:)@<X0>(uint64_t *a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *(v4 + 16);
  v13[0] = *v4;
  v13[1] = v9;
  v14 = *(v4 + 32);
  if (qword_1EB5B8EE0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CD8);
  sub_1AE1F1344(v13, v7, v8, &v12);
  os_unfair_lock_unlock(&dword_1EB5D7CD8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BAA00, &qword_1AE2587A0);
  v10 = swift_dynamicCast();
  return (*(*(a3 - 8) + 56))(a4, v10 ^ 1u, 1, a3);
}

void sub_1AE1F1344(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _OWORD *a4@<X8>)
{
  v4 = *(a1 + 32);
  if (v4)
  {
    v8 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
    swift_beginAccess();
    v9 = *(v4 + v8);
    if (*(v9 + 16) && (v10 = sub_1ADDDE7CC(a2, a3), (v11 & 1) != 0))
    {
      sub_1ADDE4E28(*(v9 + 56) + 32 * v10, a4);
    }

    else
    {
      *a4 = 0u;
      a4[1] = 0u;
    }

    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void Capsule.setCachedValue<A>(_:forKey:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = *a2;
  v9 = a2[1];
  v10 = *(v4 + 16);
  v11[0] = *v4;
  v11[1] = v10;
  v12 = *(v4 + 32);
  if (qword_1EB5B8EE0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CD8);
  sub_1AE1F14B4(&dword_1EB5D7CD8, v11, v8, v9, a1, *(a3 + 16), a4);

  os_unfair_lock_unlock(&dword_1EB5D7CD8);
}

void sub_1AE1F14B4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (*(a2 + 32))
  {
    v12[3] = a7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
    (*(*(a7 - 8) + 16))(boxed_opaque_existential_1, a5, a7);
    swift_beginAccess();
    sub_1ADDD86D8(a3, a4);
    sub_1AE1D1A7C(v12, a3, a4);
    swift_endAccess();
  }

  else
  {
    __break(1u);
  }
}

void Capsule.clearCachedValue(forKey:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(v2 + 16);
  v6[0] = *v2;
  v6[1] = v5;
  v7 = *(v2 + 32);
  if (qword_1EB5B8EE0 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EB5D7CD8);
  sub_1AE1F1634(&dword_1EB5D7CD8, v6, v3, v4);

  os_unfair_lock_unlock(&dword_1EB5D7CD8);
}

uint64_t sub_1AE1F1634(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (*(a2 + 32))
  {
    memset(v7, 0, sizeof(v7));
    swift_beginAccess();
    sub_1ADDD86D8(a3, a4);
    sub_1AE1D1A7C(v7, a3, a4);
    return swift_endAccess();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t Capsule.minAppFormatVersion.getter()
{
  v1 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 4);
  v5 = v0[1];
  v15 = *v0;
  v16 = v5;
  *&v17 = v4;
  sub_1ADDFC54C(v3);
  sub_1AE23C1FC();
  sub_1ADE73DF4(v3);
  v6 = 0;
  while (1)
  {
    v7 = v24;
    if (v24 >= DWORD1(v24))
    {
      v8 = sub_1AE23C20C();
      if (!v8)
      {
        v21 = v29;
        v22[0] = v30[0];
        *(v22 + 11) = *(v30 + 11);
        v17 = v25;
        v18 = v26;
        v19 = v27;
        v20 = v28;
        v15 = v23;
        v16 = v24;
        sub_1ADDFD834(&v15);
        return v6;
      }
    }

    else
    {
      v8 = *(&v23 + 1);
      LODWORD(v24) = v24 + 1;
    }

    v9 = (v8 + *(v8 + 24) + (~v7 << 6));
    v10 = v9[4];
    v11 = v9[5];
    v12 = v9[6];
    sub_1ADDD86D8(v10, v11);

    sub_1ADDD86D8(v10, v11);

    if (!v12)
    {
      break;
    }

    sub_1ADDCC35C(v10, v11);
    v14 = (*(*v12 + 208))();
    sub_1ADDCC35C(v10, v11);

    if (v14 <= v6)
    {
      v6 = v6;
    }

    else
    {
      v6 = v14;
    }
  }

  __break(1u);
  return result;
}

double Capsule.init(_:_:id:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v10 = *(a3 - 8);
  v11 = MEMORY[0x1EEE9AC00](a1);
  v13 = &v21[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v14;
  v16 = v14[1];
  (*(v10 + 16))(v13, v11);
  *&v20 = v15;
  *(&v20 + 1) = v16;
  Capsule.init(_:id:)(v13, &v20, a3, a4, v21);

  (*(v10 + 8))(a2, a3);
  v17 = v22;
  result = *v21;
  v19 = v21[1];
  *a5 = v21[0];
  *(a5 + 16) = v19;
  *(a5 + 32) = v17;
  return result;
}

uint64_t Capsule.init(_:id:)@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v27 = a5;
  v9 = sub_1AE23CD5C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(a4 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(v13 + 16);
  v28 = a1;
  v18(v17, a1, a4, v15);
  *&v30[0] = sub_1ADDCC6B4(&unk_1F23BC190);
  *(&v30[0] + 1) = v19;
  sub_1AE23CD4C();
  v20 = sub_1AE23CD1C();
  v22 = v21;
  result = (*(v10 + 8))(v12, v9);
  if (v22 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {

    sub_1AE23BEEC();
    sub_1ADDE158C(v20, v22);
    v29 = v30[0];
    v24 = Capsule.init(_:id:)(v17, &v29, a4, v27, v30);
    result = (*(v13 + 8))(v28, a4, v24);
    v25 = v31;
    v26 = v30[1];
    *a6 = v30[0];
    *(a6 + 16) = v26;
    *(a6 + 32) = v25;
  }

  return result;
}

double Capsule.init<A>(_:initClosure:)@<D0>(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  Capsule.init<A>(initClosure:)(a2, a3, a4, a5, a6, v12);

  v9 = v13;
  result = *v12;
  v11 = v12[1];
  *a7 = v12[0];
  *(a7 + 16) = v11;
  *(a7 + 32) = v9;
  return result;
}

uint64_t (*Capsule.init<A>(initClosure:)@<X0>(void (*a1)(void *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>))()
{
  v49 = a3;
  v50 = a5;
  v51 = a2;
  v52 = a1;
  v48 = a6;
  v47 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v53 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v47 - v9;
  v11 = sub_1AE23BFEC();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED969288 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v11, qword_1ED96F228);
  (*(v12 + 16))(v14, v15, v11);
  type metadata accessor for ReplicaState(0);
  v16 = swift_allocObject();
  v17 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v18 = type metadata accessor for Replica(0);
  v19 = *(*(v18 - 8) + 56);
  v19(v16 + v17, 1, 1, v18);
  (*(v12 + 32))(v16 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v14, v11);
  *(v16 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v16 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v19(v10, 1, 1, v18);
  swift_beginAccess();
  sub_1ADDD85E4(v10, v16 + v17);
  swift_endAccess();
  v20 = sub_1ADDD94CC(v16);
  v21 = v49;
  v22 = v50;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for Capsule.Ref(0, v21, AssociatedConformanceWitness, v24);
  v25 = a4;
  if (qword_1ED96AC50 != -1)
  {
    swift_once();
  }

  sub_1ADDD0F70();
  sub_1AE23BFBC();
  v54 = sub_1ADDCC6B4(&unk_1F23BC1B8);
  v55 = v26;
  v27 = sub_1ADDD8E0C(v54);
  v29 = v28;
  sub_1AE23BEEC();
  sub_1ADDCC35C(v27, v29);
  (*(v12 + 8))(v14, v11);
  v30 = v54;
  v31 = v55;
  v32 = swift_allocObject();
  v32[2] = v30;
  v32[3] = v31;
  v32[4] = v20;

  v33 = v53;
  v52(v32);

  v34 = *(v22 + 48);
  v34(&v54, v25, v22);
  v36 = v54;
  v35 = v55;
  v34(&v54, v25, v22);
  v38 = v54;
  v37 = v55;
  swift_beginAccess();
  v56 = v36;
  v57 = v35;

  sub_1ADDD86D8(v36, v35);
  result = sub_1ADDDD4A0(&v54, &v56);
  if (!*(v40 + 16))
  {
    (result)(&v54, 0);
    sub_1ADDCC35C(v56, v57);
    swift_endAccess();
    goto LABEL_9;
  }

  v41 = *(v40 + 8);
  v42 = __OFADD__(v41, 1);
  v43 = v41 + 1;
  if (!v42)
  {
    *(v40 + 8) = v43;
    (result)(&v54, 0);
    swift_endAccess();
    sub_1ADDCC35C(v56, v57);
LABEL_9:
    swift_beginAccess();
    sub_1ADDD86D8(v36, v35);
    sub_1ADDE0110(&v58, v36, v35);
    swift_endAccess();
    sub_1ADDCC35C(v58, v59);
    v54 = v38;
    v55 = v37;
    v58 = v36;
    v59 = v35;
    sub_1ADDD86D8(v38, v37);
    sub_1ADDD86D8(v36, v35);
    sub_1ADEA9BC0(1, 1, &v54, &v58);

    sub_1ADDE158C(v58, v59);
    sub_1ADDE158C(v54, v55);
    result = (*(v47 + 8))(v33, v25);
    *&v44 = v36;
    *(&v44 + 1) = v35;
    *&v45 = v38;
    *(&v45 + 1) = v37;
    v46 = v48;
    *v48 = v44;
    v46[1] = v45;
    *(v46 + 4) = v20;
    return result;
  }

  __break(1u);
  return result;
}

double Capsule.init(_:id:initClosure:)@<D0>(void *a1@<X0>, __int128 *a2@<X1>, void (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X8>)
{
  v12 = *a2;
  Capsule.init(id:initClosure:)(&v12, a3, a4, a5, a6, v13);

  v9 = v14;
  result = *v13;
  v11 = v13[1];
  *a7 = v13[0];
  *(a7 + 16) = v11;
  *(a7 + 32) = v9;
  return result;
}

void Capsule.init(id:initClosure:)(__int128 *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, __int128 *a6@<X8>)
{
  v48 = a4;
  v49 = a5;
  v46 = a3;
  v47 = a2;
  v45 = a6;
  v44 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v42 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v42 - v12;
  v14 = sub_1AE23BFEC();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a1;
  if (qword_1ED969288 != -1)
  {
    swift_once();
  }

  v18 = __swift_project_value_buffer(v14, qword_1ED96F228);
  (*(v15 + 16))(v17, v18, v14);
  type metadata accessor for ReplicaState(0);
  v19 = swift_allocObject();
  v20 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v21 = type metadata accessor for Replica(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v19 + v20, 1, 1, v21);
  (*(v15 + 32))(v19 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v17, v14);
  *(v19 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v19 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v22(v13, 1, 1, v21);
  swift_beginAccess();
  sub_1ADDD85E4(v13, v19 + v20);
  swift_endAccess();
  v23 = sub_1ADDD94CC(v19);
  v24 = *(&v50 + 1);
  v25 = v50;
  v55 = v50;
  v56 = v50;
  v57 = v23;
  v26 = v48;
  v28 = type metadata accessor for Capsule(0, v48, v49, v27);
  v32 = sub_1ADE1D940(v28, v29, v30, v31);
  sub_1ADDD86D8(v25, v24);

  v47(v32);

  if (v23)
  {
    v33 = v44;
    v34 = v43;
    (*(v44 + 16))(v43, v10, v26);

    sub_1ADDD9FE4(v34, v26, &v55);
    v49 = v10;
    v35 = v55;
    v36 = MEMORY[0x1E69E7CC0];
    v37 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v38 = sub_1ADDD9ECC(v36);
    sub_1ADDDA5BC(v36);
    sub_1ADDD9ECC(v36);

    v39 = MEMORY[0x1E69E7CC8];
    swift_bridgeObjectRelease_n();
    *&v55 = v35;
    *(&v55 + 1) = 1;
    *&v56 = v39;
    *(&v56 + 1) = v39;
    v57 = v37;
    v58 = v38;
    v53 = v25;
    v54 = v24;
    swift_beginAccess();
    sub_1ADDD86D8(v25, v24);
    sub_1ADDD82B0(&v55, &v53);
    swift_endAccess();

    sub_1ADDCC35C(v53, v54);

    swift_beginAccess();

    sub_1ADDD86D8(v25, v24);
    sub_1ADDE0110(&v51, v25, v24);
    swift_endAccess();

    sub_1ADDCC35C(v51, v52);
    *&v55 = v25;
    *(&v55 + 1) = v24;
    v51 = v25;
    v52 = v24;
    sub_1ADDD86D8(v25, v24);
    sub_1ADDD86D8(v25, v24);
    sub_1ADEA9BC0(1, 1, &v55, &v51);

    sub_1ADDE158C(v51, v52);
    sub_1ADDE158C(v55, *(&v55 + 1));
    (*(v33 + 8))(v49, v26);
    v40 = v45;
    v41 = v50;
    *v45 = v50;
    v40[1] = v41;
    *(v40 + 4) = v23;
  }

  else
  {
    __break(1u);
  }
}

void Capsule.init(id:initClosure:)(__int128 *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X8>)
{
  v48 = a5;
  v45 = a3;
  v46 = a2;
  v43 = a6;
  v59 = a4;
  v44 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v42 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_1AE23BFEC();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *a1;
  if (qword_1ED969288 != -1)
  {
    swift_once();
  }

  v17 = __swift_project_value_buffer(v13, qword_1ED96F228);
  (*(v14 + 16))(v16, v17, v13);
  type metadata accessor for ReplicaState(0);
  v18 = swift_allocObject();
  v19 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
  v20 = type metadata accessor for Replica(0);
  v21 = *(*(v20 - 8) + 56);
  v21(v18 + v19, 1, 1, v20);
  (*(v14 + 32))(v18 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v16, v13);
  *(v18 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
  *(v18 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
  v21(v12, 1, 1, v20);
  swift_beginAccess();
  sub_1ADDD85E4(v12, v18 + v19);
  swift_endAccess();
  v22 = sub_1ADDD94CC(v18);
  v23 = *(&v50 + 1);
  v24 = v50;
  v55 = v50;
  v56 = v50;
  v57 = v22;
  v25 = v59;
  v27 = type metadata accessor for Capsule(0, v59, v48, v26);
  v31 = sub_1ADE1D940(v27, v28, v29, v30);
  sub_1ADDD86D8(v24, v23);
  v32 = v49;
  v33 = v47;
  v46(v31);

  if (v33)
  {
    sub_1ADDCC35C(v24, v23);
    sub_1ADDCC35C(v24, v23);
  }

  else if (v22)
  {
    v34 = v42;
    (*(v44 + 16))(v42, v32, v25);
    sub_1ADDD9FE4(v34, v25, &v55);
    v35 = v55;
    v36 = MEMORY[0x1E69E7CC0];
    v37 = sub_1ADDDA5BC(MEMORY[0x1E69E7CC0]);
    v38 = sub_1ADDD9ECC(v36);
    sub_1ADDDA5BC(v36);
    sub_1ADDD9ECC(v36);

    v39 = MEMORY[0x1E69E7CC8];
    swift_bridgeObjectRelease_n();
    *&v55 = v35;
    *(&v55 + 1) = 1;
    *&v56 = v39;
    *(&v56 + 1) = v39;
    v57 = v37;
    v58 = v38;
    v53 = v24;
    v54 = v23;
    swift_beginAccess();
    sub_1ADDD86D8(v24, v23);
    sub_1ADDD82B0(&v55, &v53);
    swift_endAccess();
    sub_1ADDCC35C(v53, v54);

    swift_beginAccess();
    sub_1ADDD86D8(v24, v23);
    sub_1ADDE0110(&v51, v24, v23);
    swift_endAccess();
    sub_1ADDCC35C(v51, v52);
    *&v55 = v24;
    *(&v55 + 1) = v23;
    v51 = v24;
    v52 = v23;
    sub_1ADDD86D8(v24, v23);
    sub_1ADDD86D8(v24, v23);
    sub_1ADEA9BC0(1, 1, &v55, &v51);
    sub_1ADDE158C(v51, v52);
    sub_1ADDE158C(v55, *(&v55 + 1));
    (*(v44 + 8))(v49, v59);
    v40 = v43;
    v41 = v50;
    *v43 = v50;
    v40[1] = v41;
    *(v40 + 4) = v22;
  }

  else
  {
    __break(1u);
  }
}

uint64_t Capsule.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v2 + 32);
  v8 = *(v2 + 16);
  v14[0] = *v2;
  v14[1] = v8;
  v15 = v7;
  Capsule.root.getter(v9, v9, v10, v11, v12);
  swift_getAtKeyPath();
  return (*(v4 + 8))(v6, v3);
}

void Capsule.observableDifference(from:)(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v5 = *(a2 + 24);
  v39 = *(a2 + 16);
  v40 = v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = sub_1AE23D7CC();
  v36 = *(v6 - 8);
  v37 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v30 - v7;
  v8 = *a1;
  v9 = a1[1];
  v10 = a1[3];
  v32 = a1[2];
  v11 = v32;
  v31 = v10;
  v12 = a1[4];
  v13 = *v3;
  v14 = v3[1];
  v16 = v3[2];
  v15 = v3[3];
  v17 = v3[4];
  v33 = type metadata accessor for Capsule.CapsuleReferenceDifferencer(0, v39, v40, v18);
  v49[0] = v13;
  v49[1] = v14;
  v45.n128_u64[0] = v8;
  v45.n128_u64[1] = v9;
  v46 = v11;
  v19 = v31;
  v47 = v31;
  v48 = v12;
  v41.n128_u64[0] = v13;
  v41.n128_u64[1] = v14;
  v42 = v16;
  v43 = v15;
  v44 = v17;
  sub_1ADDD86D8(v13, v14);
  sub_1ADDD86D8(v13, v14);
  sub_1ADDD86D8(v8, v9);
  sub_1ADDD86D8(v32, v19);

  sub_1ADDD86D8(v13, v14);
  sub_1ADDD86D8(v16, v15);
  v20 = swift_allocObject();

  sub_1AE1F32D8(v49, &v45, &v41, v21);
  v41.n128_u64[0] = v13;
  v41.n128_u64[1] = v14;
  v23 = v39;
  v22 = v40;
  Ref.init(id:)(&v41, &v45);
  v24 = v45;
  v41 = v45;
  v25 = v34;
  sub_1AE1F33C4(&v41, v23, v22, v34);
  sub_1ADDCC35C(v24.n128_i64[0], v24.n128_u64[1]);
  if ((*(*(AssociatedTypeWitness - 8) + 48))(v25, 1) == 1)
  {

    (*(v36 + 8))(v25, v37);
    v26 = 0;
    v27 = 0;
    v28 = 0;
  }

  else
  {
    (*(v36 + 8))(v25, v37);
    swift_beginAccess();
    v26 = v20[2];
    v27 = v20[3];
    v28 = v20[4];
    sub_1ADDD86D8(v26, v27);
  }

  v29 = v38;
  *v38 = v26;
  v29[1] = v27;
  v29[2] = v28;
}

uint64_t sub_1AE1F3230(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1AE1F32D8(a1, a2, a3, v7);
  return v6;
}

void Capsule.delta(to:)(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *(a1 + 4);
  v5 = *(v3 + 32);
  v6 = a1[1];
  v10 = *a1;
  v11 = v6;
  v12 = v4;
  v7 = *(v3 + 16);
  v8[0] = *v3;
  v8[1] = v7;
  v9 = v5;
  Capsule.observableDifference(from:)(v8, a2, a3);
}

uint64_t *sub_1AE1F32D8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = *(a2 + 32);
  v9 = *(a3 + 32);
  v10 = *(a2 + 16);
  *(v4 + 5) = *a2;
  *(v4 + 7) = v10;
  v4[9] = v8;
  v11 = *(a3 + 16);
  *(v4 + 5) = *a3;
  *(v4 + 6) = v11;
  v4[14] = v9;
  v12 = type metadata accessor for Capsule.ObservableDifference.ReferenceDifference(255, *(v5 + 80), *(v5 + 88), a4);
  swift_getTupleTypeMetadata2();
  v13 = sub_1AE23D05C();
  v16 = sub_1ADDDF1A4(v13, v14, v15);
  v17 = sub_1ADDEAF38(v13, &type metadata for CRKeyPath, v12, v16);

  v4[2] = v6;
  v4[3] = v7;
  v4[4] = v17;
  return v4;
}

uint64_t sub_1AE1F33C4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v82 = a4;
  v9 = *v5;
  v74 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = sub_1AE23D7CC();
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v73 = &v66 - v11;
  v79 = AssociatedTypeWitness;
  v77 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v66 - v13;
  v75 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v83 = &v66 - v18;
  v19 = a1[1];
  v72 = *a1;
  *&v85 = v72;
  *(&v85 + 1) = v19;
  v71 = v19;
  v76 = a2;
  v21 = type metadata accessor for Ref(0, a2, a3, v20);
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v21, WitnessTable);
  v23 = v84[0];
  v81 = v5 + 2;
  swift_beginAccess();
  v78 = v5 + 4;
  v84[0] = v23;
  sub_1ADDD86D8(v23, *(&v23 + 1));
  v24 = *(v9 + 80);
  v25 = *(v9 + 88);
  v27 = type metadata accessor for Capsule.ObservableDifference.ReferenceDifference(0, v24, v25, v26);
  sub_1ADDDF1A4(v27, v28, v29);

  sub_1AE23CB7C();

  sub_1ADDCC35C(*&v84[0], *(&v84[0] + 1));
  if (*(&v86 + 1) == 2)
  {
    v66 = v14;
    v30 = sub_1AE23D7CC();
    (*(*(v30 - 8) + 8))(&v85, v30);
    v85 = 0u;
    v86 = 0u;
    v88 = v23;
    swift_beginAccess();
    v67 = *(&v23 + 1);
    sub_1ADDD86D8(v23, *(&v23 + 1));
    v68 = sub_1AE23CB1C();
    sub_1AE23CB8C();
    swift_endAccess();
    v31 = v5[5];
    v32 = v5[6];
    v33 = v5[7];
    v34 = v5[8];
    v35 = v5[9];
    v36 = v72;
    v37 = v25;
    v38 = v24;
    v39 = v71;
    *&v84[0] = v72;
    *(&v84[0] + 1) = v71;
    *&v85 = v31;
    *(&v85 + 1) = v32;
    *&v86 = v33;
    *(&v86 + 1) = v34;
    v87 = v35;
    sub_1ADDD86D8(v31, v32);
    sub_1ADDD86D8(v33, v34);

    Ref.subscript.getter(&v85, v21, v38, v37);
    v40 = v86;
    sub_1ADDCC35C(v85, *(&v85 + 1));
    sub_1ADDCC35C(v40, *(&v40 + 1));

    v41 = v5[10];
    v42 = v5[11];
    v43 = v5[12];
    v44 = v5[13];
    v45 = v5[14];
    *&v84[0] = v36;
    *(&v84[0] + 1) = v39;
    *&v85 = v41;
    *(&v85 + 1) = v42;
    *&v86 = v43;
    *(&v86 + 1) = v44;
    v87 = v45;
    sub_1ADDD86D8(v41, v42);
    sub_1ADDD86D8(v43, v44);

    Ref.subscript.getter(&v85, v21, v38, v37);
    v46 = v86;
    sub_1ADDCC35C(v85, *(&v85 + 1));
    sub_1ADDCC35C(v46, *(&v46 + 1));

    *(&v86 + 1) = type metadata accessor for Capsule.CapsuleReferenceDifferencer(0, v38, v37, v47);
    v87 = &off_1F23C9228;
    *&v85 = v5;
    v48 = v74;
    v49 = *(v74 + 40);

    v50 = v73;
    v51 = v76;
    v49(v83, &v85, v76, v48);
    sub_1ADDCEDE0(&v85, &qword_1EB5BAA40, &unk_1AE24EC50);
    v52 = v77;
    v53 = v79;
    if ((*(v77 + 48))(v50, 1, v79) == 1)
    {
      (*(v69 + 8))(v50, v70);
      v85 = 0uLL;
      *&v86 = 0;
      *(&v86 + 1) = 1;
      v54 = v67;
      *&v88 = v23;
      *(&v88 + 1) = v67;
      swift_beginAccess();
      sub_1ADDD86D8(v23, v54);
      sub_1AE23CB8C();
      swift_endAccess();
      sub_1ADDCC35C(v23, v54);
      v55 = *(v75 + 8);
      v55(v80, v51);
      v55(v83, v51);
      return (*(v52 + 56))(v82, 1, 1, v53);
    }

    else
    {
      v59 = *(v52 + 32);
      v60 = v66;
      v59(v66, v50, v53);
      *(&v86 + 1) = v53;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v85);
      (*(v52 + 16))(boxed_opaque_existential_1, v60, v53);
      v62 = v67;
      *&v88 = v23;
      *(&v88 + 1) = v67;
      swift_beginAccess();
      sub_1ADDD86D8(v23, v62);
      sub_1AE23CB8C();
      swift_endAccess();
      sub_1ADDCC35C(v23, v62);
      v63 = *(v75 + 8);
      v63(v80, v51);
      v63(v83, v51);
      v64 = v82;
      v59(v82, v60, v53);
      return (*(v52 + 56))(v64, 0, 1, v53);
    }
  }

  else
  {
    v57 = v77;
    v58 = v79;
    sub_1ADDCC35C(v23, *(&v23 + 1));
    v84[0] = v85;
    v84[1] = v86;
    if (*(&v86 + 1) >= 2uLL)
    {
      sub_1ADDEE390(v84, &v85);
      sub_1ADDEE390(&v85, v84);
      v65 = v82;
      swift_dynamicCast();
      return (*(v57 + 56))(v65, 0, 1, v58);
    }

    else
    {
      (*(*(v27 - 8) + 8))(v84, v27);
      return (*(v57 + 56))(v82, 1, 1, v58);
    }
  }
}

uint64_t sub_1AE1F3C20@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v5 = v4;
  v70 = a4;
  v9 = *v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v63 = sub_1AE23D7CC();
  v60 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v59 = &v57 - v10;
  v65 = a2;
  v11 = sub_1AE23D7CC();
  v68 = *(v11 - 8);
  v69 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v67 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v57 - v14;
  v16 = *a1;
  v17 = a1[1];
  v18 = v5[5];
  v19 = v5[6];
  v20 = v5[7];
  v21 = v5[8];
  v22 = v5[9];
  v75.n128_u64[0] = v16;
  v75.n128_u64[1] = v17;
  v71.n128_u64[0] = v18;
  v71.n128_u64[1] = v19;
  v72 = v20;
  v73 = v21;
  v74 = v22;
  sub_1ADDD86D8(v18, v19);
  sub_1ADDD86D8(v20, v21);
  v61 = a3;
  v24 = type metadata accessor for WeakRef(0, a2, a3, v23);
  v25 = *(v9 + 80);
  v26 = *(v9 + 88);

  WeakRef.subscript.getter(&v71, v24, v25, v26);
  v27 = v72;
  v28 = v73;
  sub_1ADDCC35C(v71.n128_i64[0], v71.n128_u64[1]);
  sub_1ADDCC35C(v27, v28);

  v29 = v5[10];
  v30 = v5[11];
  v31 = v5[12];
  v32 = v5[13];
  v33 = v5[14];
  v64 = v16;
  v74 = v33;
  v75.n128_u64[0] = v16;
  v34 = v15;
  v35 = v17;
  v36 = v65;
  v75.n128_u64[1] = v35;
  v71.n128_u64[0] = v29;
  v71.n128_u64[1] = v30;
  v72 = v31;
  v73 = v32;
  sub_1ADDD86D8(v29, v30);
  sub_1ADDD86D8(v31, v32);
  v37 = v67;

  WeakRef.subscript.getter(&v71, v24, v25, v26);
  v38 = v72;
  v39 = v73;
  sub_1ADDCC35C(v71.n128_i64[0], v71.n128_u64[1]);
  sub_1ADDCC35C(v38, v39);

  v40 = *(*(v36 - 8) + 48);
  v66 = v34;
  LODWORD(v39) = v40(v34, 1, v36);
  v41 = v40(v37, 1, v36);
  v42 = v41;
  if (v39 != 1)
  {
    v46 = v35;
    v47 = v68;
    v43 = v69;
    if (v41 == 1)
    {
      v44 = *(v68 + 8);
      v44(v66, v69);
      v45 = xmmword_1AE259B00;
      goto LABEL_8;
    }

    v48 = v64;
    v75.n128_u64[0] = v64;
    v75.n128_u64[1] = v46;
    v49 = v61;
    Ref.init(id:)(&v75, &v71);
    v50 = v71;
    v75 = v71;
    v58 = v46;
    sub_1ADDD86D8(v48, v46);
    v51 = v59;
    sub_1AE1F33C4(&v75, v36, v49, v59);
    sub_1ADDCC35C(v50.n128_i64[0], v50.n128_u64[1]);
    v52 = (*(*(AssociatedTypeWitness - 8) + 48))(v51, 1);
    (*(v60 + 8))(v51, v63);
    v44 = *(v47 + 8);
    v44(v66, v43);
    if (v52 != 1)
    {
      v54 = v70;
      v55 = v64;
      v56 = v58;
      *v70 = v64;
      v54[1] = v56;
      sub_1ADDD86D8(v55, v56);
      return (v44)(v37, v43);
    }

LABEL_7:
    v45 = xmmword_1AE259B10;
    goto LABEL_8;
  }

  v43 = v69;
  v44 = *(v68 + 8);
  v44(v66, v69);
  if (v42 == 1)
  {
    goto LABEL_7;
  }

  v45 = xmmword_1AE250CD0;
LABEL_8:
  *v70 = v45;
  return (v44)(v37, v43);
}

void *sub_1AE1F40E0()
{
  sub_1ADDCC35C(v0[2], v0[3]);

  v1 = v0[7];
  v2 = v0[8];
  sub_1ADDCC35C(v0[5], v0[6]);
  sub_1ADDCC35C(v1, v2);

  v3 = v0[12];
  v4 = v0[13];
  sub_1ADDCC35C(v0[10], v0[11]);
  sub_1ADDCC35C(v3, v4);

  return v0;
}

uint64_t sub_1AE1F4164()
{
  sub_1AE1F40E0();

  return swift_deallocClassInstance();
}

uint64_t sub_1AE1F420C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(void, uint64_t, uint64_t)@<X4>, uint64_t a7@<X8>)
{
  v32 = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = sub_1AE23D7CC();
  v30 = *(v13 - 8);
  v31 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v37 = *a1;
  v16 = a5(0, a3, a4);
  WitnessTable = swift_getWitnessTable();
  Reference.identity.getter(v16, WitnessTable);
  v33 = v36;
  v19 = type metadata accessor for Capsule.ObservableDifference.ReferenceDifference(0, *(a2 + 16), *(a2 + 24), v18);
  sub_1ADDDF1A4(v19, v20, v21);
  sub_1AE23CB7C();
  sub_1ADDCC35C(v33, *(&v33 + 1));
  if (v35 < 2)
  {
    goto LABEL_5;
  }

  if (v35 == 2)
  {
    v19 = sub_1AE23D7CC();
LABEL_5:
    (*(*(v19 - 8) + 8))(&v34, v19);
    return (*(*(AssociatedTypeWitness - 8) + 56))(v32, 1, 1, AssociatedTypeWitness);
  }

  sub_1ADDEE390(&v34, v38);
  sub_1ADDEE390(v38, &v34);
  v23 = swift_dynamicCast();
  v24 = *(*(AssociatedTypeWitness - 8) + 56);
  if (v23)
  {
    v25 = *(AssociatedTypeWitness - 8);
    v24(v15, 0, 1, AssociatedTypeWitness);
    v26 = v32;
    (*(v25 + 32))(v32, v15, AssociatedTypeWitness);
    v27 = v26;
    v28 = 0;
  }

  else
  {
    v24(v15, 1, 1, AssociatedTypeWitness);
    (*(v30 + 8))(v15, v31);
    v27 = v32;
    v28 = 1;
  }

  return (v24)(v27, v28, 1, AssociatedTypeWitness);
}

uint64_t Capsule.ObservableDifference.subscript.getter(void *a1)
{
  v2 = *(*a1 + *MEMORY[0x1E69E6CE8]);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v9 - v4;
  v6 = *(v1 + 2);
  v9 = *v1;
  v10 = v6;
  Capsule.ObservableDifference.root.getter(v7);
  swift_getAtKeyPath();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Capsule.ObservableDifference.root.getter(uint64_t a1)
{
  v9 = *v2;
  v10 = v2[1];
  sub_1ADDD86D8(*v2, v10);
  v5 = type metadata accessor for Capsule.ObservableDifference.ReferenceDifference(0, *(a1 + 16), *(a1 + 24), v4);
  sub_1ADDDF1A4(v5, v6, v7);
  sub_1AE23CB7C();
  sub_1ADDCC35C(v9, v10);
  if (v12 >= 2)
  {
    if (v12 != 2)
    {
      sub_1ADDEE390(&v11, v13);
      sub_1ADDEE390(v13, &v11);
      swift_getAssociatedTypeWitness();
      return swift_dynamicCast();
    }

    v5 = sub_1AE23D7CC();
  }

  (*(*(v5 - 8) + 8))(&v11, v5);
  result = sub_1AE23DC5C();
  __break(1u);
  return result;
}

uint64_t Capsule.Ref.mutate<A>(_:)(void (*a1)(void *))
{
  v4[3] = *v1;
  v4[4] = &protocol witness table for Capsule<A>.Ref;
  v4[0] = v1;

  a1(v4);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

double Capsule.init(_:serializedData:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __n128 *a6@<X8>)
{
  Capsule.init(serializedData:allowedAppFormats:fileSignature:)(a2, a3, 0, 0, 0xF000000000000000, a4, a5, v12);

  if (!v6)
  {
    v10 = v13;
    result = v12[0].n128_f64[0];
    v11 = v12[1];
    *a6 = v12[0];
    a6[1] = v11;
    a6[2].n128_u64[0] = v10;
  }

  return result;
}

void Capsule.init(serializedData:allowedAppFormats:fileSignature:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X8>)
{
  v50 = a7;
  v14 = a5 >> 60;
  if (a5 >> 60 != 15)
  {
    v17 = a5 >> 62;
    if ((a5 >> 62) > 1)
    {
      if (v17 != 2)
      {
        goto LABEL_37;
      }

      v20 = *(a4 + 16);
      v19 = *(a4 + 24);
      v18 = v19 - v20;
      if (!__OFSUB__(v19, v20))
      {
        goto LABEL_14;
      }

      __break(1u);
    }

    else if (!v17)
    {
      v18 = BYTE6(a5);
      goto LABEL_15;
    }

    if (__OFSUB__(HIDWORD(a4), a4))
    {
      __break(1u);
      goto LABEL_36;
    }

    v18 = HIDWORD(a4) - a4;
LABEL_14:
    sub_1ADDD86D8(a4, a5);
LABEL_15:
    if (v18 == 4)
    {
      sub_1ADDE158C(a4, a5);
      v15 = a4;
      v16 = a5;
      goto LABEL_17;
    }

LABEL_37:
    sub_1AE23DC5C();
    __break(1u);
    return;
  }

  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  v15 = qword_1ED96F240;
  v16 = *algn_1ED96F248;
  sub_1ADDD86D8(qword_1ED96F240, *algn_1ED96F248);
LABEL_17:
  sub_1ADDE0F78(a4, a5);
  sub_1ADE60090(v41, a1, a2, v15, v16);
  if (v8)
  {
LABEL_18:
    sub_1ADDE158C(a4, a5);

    sub_1ADDCC35C(a1, a2);
    sub_1ADDCC35C(v15, v16);
    return;
  }

  sub_1ADDCC35C(v15, v16);
  if (v41[0] >= 3u)
  {
    sub_1AE1F5054(a1, a2, a3, a4, a5, a6, v50, v41);
    v27 = *v41;
    v28 = *&v41[16];
    v29 = *&v41[32];
LABEL_33:
    *a8 = v27;
    a8[1] = v28;
    a8[2].n128_u64[0] = v29;
    return;
  }

  v15 = a4;
  v16 = a5;
  if (v14 >= 0xF)
  {
    if (qword_1ED9697D8 == -1)
    {
LABEL_22:
      v15 = qword_1ED96F240;
      v16 = *algn_1ED96F248;
      sub_1ADDD86D8(qword_1ED96F240, *algn_1ED96F248);
      goto LABEL_23;
    }

LABEL_36:
    swift_once();
    goto LABEL_22;
  }

LABEL_23:
  sub_1ADDE0F78(a4, a5);
  sub_1ADE60630(&v48, a1, a2, v15, v16, 0, 0, v41);
  if (v8)
  {
    goto LABEL_18;
  }

  v34 = *v41;
  v21 = *v41;
  sub_1ADDCC35C(v15, v16);
  v22 = v48;
  if (!a3)
  {
LABEL_29:
    v49[4] = v44;
    v49[5] = v45;
    v49[6] = v46;
    v49[7] = v47;
    v49[0] = *&v41[8];
    v49[1] = *&v41[24];
    v49[2] = v42;
    v49[3] = v43;
    v38 = v22;
    sub_1ADDCEE40(v41, v37, &qword_1EB5BA278, &unk_1AE241D30);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v26 = qword_1ED96F2A8;

    sub_1AE1EB234(&v38, v49, 0, v26, 0, a6, v50, v39);
    sub_1ADDE158C(a4, a5);
    sub_1ADDCC35C(a1, a2);
    sub_1ADDCEDE0(v41, &qword_1EB5BA278, &unk_1AE241D30);
    v27 = v39[0];
    v28 = v39[1];
    v29 = v40;
    goto LABEL_33;
  }

  v23 = *(a3 + 16);
  v24 = 32;
  while (v23)
  {
    v25 = *(a3 + v24);
    v24 += 2;
    --v23;
    if (v25 == v21)
    {

      goto LABEL_29;
    }
  }

  sub_1ADE42E40(v30, v31, v32);
  swift_allocError();
  *v33 = v34;
  *(v33 + 8) = 0;
  *(v33 + 16) = 1;
  swift_willThrow();
  sub_1ADDE158C(a4, a5);
  sub_1ADDCC35C(a1, a2);
  sub_1ADDCEDE0(v41, &qword_1EB5BA278, &unk_1AE241D30);
}

void Capsule.init(serializedData:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __n128 *a5@<X8>)
{
  if (qword_1ED9697D8 != -1)
  {
    swift_once();
  }

  sub_1ADE60630(&v27, a1, a2, qword_1ED96F240, *algn_1ED96F248, 0, 0, &v18);
  if (v5)
  {
    sub_1ADDCC35C(a1, a2);
  }

  else
  {
    v28[4] = v23;
    v28[5] = v24;
    v28[6] = v25;
    v28[7] = v26;
    v28[0] = v19;
    v28[1] = v20;
    v28[2] = v21;
    v28[3] = v22;
    v15 = v27;
    sub_1ADDCEE40(&v18, &v14, &qword_1EB5BA278, &unk_1AE241D30);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v11 = qword_1ED96F2A8;

    sub_1AE1EB234(&v15, v28, 0, v11, 0, a3, a4, v16);
    sub_1ADDCEDE0(&v18, &qword_1EB5BA278, &unk_1AE241D30);
    sub_1ADDCC35C(a1, a2);
    v12 = v17;
    v13 = v16[1];
    *a5 = v16[0];
    a5[1] = v13;
    a5[2].n128_u64[0] = v12;
  }
}

uint64_t sub_1AE1F5054@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, __n128 *a8@<X8>)
{
  v103 = a6;
  v104 = a7;
  v131 = a5;
  v115 = a4;
  v112 = a2;
  v94 = a8;
  v10 = sub_1AE23BFEC();
  v96 = *(v10 - 8);
  v97 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v95 = &v88 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v98 = &v88 - v13;
  v14 = sub_1AE23C6DC();
  v113 = *(v14 - 8);
  v114 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v105 = &v88 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v88 - v17;
  v102 = v19;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v88 - v21;
  v23 = sub_1AE23C70C();
  v109 = *(v23 - 8);
  v110 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v100 = v24;
  v101 = &v88 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v88 - v26;
  sub_1AE23C6FC();
  sub_1AE23C6EC();
  sub_1AE23C6BC();
  v108 = v27;
  v28 = sub_1AE23C6EC();
  v29 = sub_1AE23D73C();
  if (sub_1AE23D79C())
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = sub_1AE23C6CC();
    _os_signpost_emit_with_name_impl(&dword_1ADDCA000, v28, v29, v31, "decodeDocument", "", v30, 2u);
    MEMORY[0x1B26FDA50](v30, -1, -1);
  }

  v99 = *(v113 + 16);
  v99(v18, v22, v114);
  sub_1AE23C74C();
  swift_allocObject();
  v107 = sub_1AE23C73C();
  v32 = v131;
  v33 = v131 >> 60;
  v34 = v115;
  if (v131 >> 60 == 15)
  {
    if (qword_1ED9697D8 != -1)
    {
      swift_once();
    }

    v34 = qword_1ED96F240;
    v32 = *algn_1ED96F248;
    sub_1ADDD86D8(qword_1ED96F240, *algn_1ED96F248);
  }

  v111 = v22;
  sub_1ADDE0F78(v115, v131);
  v35 = a1;
  v36 = a1;
  v37 = v112;
  v38 = v106;
  v39 = sub_1ADE60090(v120, v35, v112, v34, v32);
  v106 = v38;
  if (v38)
  {

    sub_1ADDCC35C(v34, v32);
    v40 = v108;
    sub_1AE1F88EC(v108, v107, "decodeDocument");

    sub_1ADDCC35C(v36, v37);
    v41 = v111;
LABEL_24:
    sub_1ADDE158C(v115, v131);
    (*(v113 + 8))(v41, v114);
    return (*(v109 + 8))(v40, v110);
  }

  v42 = v39;
  sub_1ADDCC35C(v34, v32);
  v43 = v120[0];
  v44 = v36;
  v41 = v111;
  if (a3)
  {
    v45 = *(a3 + 16);
    v46 = 32;
    while (v45)
    {
      v47 = *(a3 + v46);
      v46 += 2;
      --v45;
      if (v47 == v42)
      {

        goto LABEL_14;
      }
    }

    sub_1ADE42E40(v66, v67, v68);
    swift_allocError();
    *v69 = v42;
    *(v69 + 8) = 0;
    *(v69 + 16) = 1;
    swift_willThrow();
    v40 = v108;
    sub_1AE1F88EC(v108, v107, "decodeDocument");

    sub_1ADDCC35C(v44, v112);
    goto LABEL_24;
  }

LABEL_14:
  v90 = v43;
  v93 = v44;
  v48 = swift_allocObject();
  v92 = v48;
  *(v48 + 16) = 0;
  v88 = (v48 + 16);
  v49 = v115;
  v50 = v131;
  if (v33 >= 0xF)
  {
    if (qword_1ED9697D8 != -1)
    {
      swift_once();
    }

    v49 = qword_1ED96F240;
    v50 = *algn_1ED96F248;
    sub_1ADDD86D8(qword_1ED96F240, *algn_1ED96F248);
  }

  v89 = v50;
  v91 = v49;
  v51 = v109;
  v52 = v101;
  v53 = v110;
  (*(v109 + 16))(v101, v108, v110);
  v99(v105, v41, v114);
  v54 = (*(v51 + 80) + 44) & ~*(v51 + 80);
  v55 = v113;
  v56 = (v100 + *(v113 + 80) + v54) & ~*(v113 + 80);
  v57 = swift_allocObject();
  v58 = v104;
  *(v57 + 16) = v103;
  *(v57 + 24) = v58;
  *(v57 + 32) = v92;
  *(v57 + 40) = v90;
  *(v57 + 42) = v42;
  v59 = v53;
  v60 = v89;
  v61 = v91;
  (*(v51 + 32))(v57 + v54, v52, v59);
  (*(v55 + 32))(v57 + v56, v105, v114);
  sub_1ADDE0F78(v115, v131);

  v62 = v93;
  v63 = v112;
  v64 = v106;
  sub_1ADE60630(&v129, v93, v112, v61, v60, sub_1AE1FE7B4, v57, v120);
  if (v64)
  {
    sub_1ADDCC35C(v61, v60);

    v65 = v108;
    sub_1AE1F88EC(v108, v107, "decodeDocument");

    sub_1ADDCC35C(v62, v63);
    v41 = v111;
    v40 = v65;
    goto LABEL_24;
  }

  sub_1ADDCC35C(v61, v60);

  v70 = v88;
  v71 = swift_beginAccess();
  if (!*v70)
  {
    sub_1ADE42E40(v71, v72, v73);
    swift_allocError();
    *v75 = 0xD000000000000012;
    *(v75 + 8) = 0x80000001AE264030;
    *(v75 + 16) = 0;
    swift_willThrow();
    sub_1ADDCEDE0(v120, &qword_1EB5BA278, &unk_1AE241D30);

    v40 = v108;
    sub_1AE1F88EC(v108, v107, "decodeDocument");

    sub_1ADDCC35C(v62, v63);
    v41 = v111;
    goto LABEL_24;
  }

  v130[4] = v125;
  v130[5] = v126;
  v130[6] = v127;
  v130[7] = v128;
  v130[0] = v121;
  v130[1] = v122;
  v130[2] = v123;
  v130[3] = v124;

  v74 = v98;
  sub_1ADDE9B40(v117, v119, v98, v103, v130, 0, v103, v104);
  v76 = v117[0];
  v77 = v95;
  v78 = v96;
  v79 = *(v96 + 16);
  v106 = v80;
  v81 = v74;
  v82 = v97;
  v79(v95, v81, v97);
  v116 = v76;
  sub_1ADDD86D8(v76.n128_i64[0], v76.n128_u64[1]);
  v83 = sub_1AE1F6098(v106, v119, v77, &v116, v117);
  (*(v78 + 8))(v98, v82, v83);
  sub_1ADDCC35C(v76.n128_i64[0], v76.n128_u64[1]);

  sub_1ADDCEDE0(v120, &qword_1EB5BA278, &unk_1AE241D30);

  v85 = v118;
  v86 = v117[1];
  v87 = v94;
  *v94 = v117[0];
  v87[1] = v86;
  v87[2].n128_u64[0] = v85;
  v40 = v108;
  sub_1AE1F88EC(v108, v107, "decodeDocument");

  sub_1ADDCC35C(v93, v63);
  sub_1ADDE158C(v115, v131);
  (*(v113 + 8))(v111, v114);
  return (*(v109 + 8))(v40, v110);
}

void sub_1AE1F5B00(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  swift_beginAccess();
  v15 = *(a2 + 16);
  if (!v15)
  {
    v52 = a8;
    v57[4] = a5;
    v21 = *(a1 + 80);
    v56[4] = *(a1 + 64);
    v56[5] = v21;
    v22 = *(a1 + 112);
    v56[6] = *(a1 + 96);
    v56[7] = v22;
    v23 = *(a1 + 16);
    v56[0] = *a1;
    v56[1] = v23;
    v24 = *(a1 + 48);
    v56[2] = *(a1 + 32);
    v56[3] = v24;
    v25 = *(&v23 + 1);
    if (qword_1ED96AE88 != -1)
    {
      swift_once();
    }

    v26 = qword_1ED96F2A8;
    type metadata accessor for CRDecoder();
    v27 = swift_allocObject();
    v28 = MEMORY[0x1E69E7CC0];
    *(v27 + 32) = MEMORY[0x1E69E7CC0];
    *(v27 + 40) = v28;
    v29 = MEMORY[0x1E69E7CC8];
    *(v27 + 48) = MEMORY[0x1E69E7CC8];
    *(v27 + 56) = 0;
    *(v27 + 64) = 0;
    *(v27 + 72) = 0;
    *(v27 + 57) = a3;
    *(v27 + 16) = 0;
    *(v27 + 24) = v28;
    type metadata accessor for CRProtoDecodeContext();
    v30 = swift_allocObject();
    v30[2] = v29;
    v30[3] = v29;
    v30[4] = v26;
    v30[5] = v29;
    swift_retain_n();
    sub_1ADE73B00(v56, v55);

    sub_1AE1B5950(v25);
    if (!v8)
    {

      sub_1ADE6AF00(v56);
      *(v27 + 16) = v30;

      sub_1ADDD5D3C(v56);
      v57[0] = *&v56[0];
      if ((~*&v56[0] & 0xF000000000000007) != 0 && (*&v56[0] & 0xC000000000000000) == 0x8000000000000000)
      {
        v34 = (*&v56[0] & 0x3FFFFFFFFFFFFFFFLL);
        swift_beginAccess();
        v35 = v34[8];
        v36 = v34[9];
        v37 = v34[10];
        if (v35)
        {
          v38 = v35;
        }

        else
        {
          v38 = MEMORY[0x1E69E7CC0];
        }

        if (v35)
        {
          v39 = v36;
        }

        else
        {
          v39 = 0;
        }

        v48 = v39;
        v50 = v38;
        v40 = 0xC000000000000000;
        if (v35)
        {
          v40 = v37;
        }

        v47 = v40;

        sub_1ADDCEE40(v57, v54, &qword_1EB5BA300, &qword_1AE25A270);
        sub_1ADE56F74(v35, v36, v37);
        sub_1ADDE94BC(v50, v48, v47, v53);
        if (!*(v27 + 16))
        {
          goto LABEL_31;
        }

        v49 = v53[0];
        v51 = v53[1];

        sub_1AE1DDF08(a7, v53, v27, a7, v52);
        v42 = MEMORY[0x1E69E7CC0];

        *(a1 + 24) = v42;
        sub_1ADE73B5C(*(a1 + 80), *(a1 + 88), *(a1 + 96));
        *(a1 + 80) = xmmword_1AE241910;
        *(a1 + 96) = v42;
        *(a1 + 104) = v42;
        v43 = sub_1AE23C6EC();
        v44 = sub_1AE23D74C();
        if (sub_1AE23D79C())
        {
          v45 = swift_slowAlloc();
          *v45 = 0;
          v46 = sub_1AE23C6CC();
          _os_signpost_emit_with_name_impl(&dword_1ADDCA000, v43, v44, v46, "Decoded root.", "", v45, 2u);
          MEMORY[0x1B26FDA50](v45, -1, -1);

          sub_1ADDCC35C(v49, v51);
          sub_1ADDCEDE0(v57, &qword_1EB5BA300, &qword_1AE25A270);
        }

        else
        {
          sub_1ADDCC35C(v49, v51);
          sub_1ADDCEDE0(v57, &qword_1EB5BA300, &qword_1AE25A270);
        }

        swift_beginAccess();
        *(a2 + 16) = v27;
      }

      else
      {
        sub_1ADE42E40(v31, v32, v33);
        swift_allocError();
        *v41 = 0xD000000000000019;
        *(v41 + 8) = 0x80000001AE260230;
        *(v41 + 16) = 0;
        swift_willThrow();
      }

LABEL_11:

      return;
    }

    sub_1ADE6AF00(v56);
LABEL_10:

    goto LABEL_11;
  }

  v16 = *(v15 + 16);
  if (v16)
  {
    v17 = *(a1 + 24);
    v18 = *(*v16 + 160);

    v19 = v18(v17, v15);
    if (!v8)
    {
      v20 = v19;

      if (*(v15 + 16))
      {

        sub_1AE1DE048(v20, v15);

        *(a1 + 24) = MEMORY[0x1E69E7CC0];
        return;
      }

      goto LABEL_30;
    }

    goto LABEL_10;
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

__n128 sub_1AE1F6098@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, char *a3@<X2>, __n128 *a4@<X3>, __n128 *a5@<X8>)
{
  v87 = a3;
  v82 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB5B9E70, &unk_1AE240EC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v68 - v9;
  v85 = sub_1AE23BFEC();
  v83 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v79 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v68 - v12;
  v14 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - v18;
  v20 = a2[1];
  v86 = *a2;
  v21 = *a4;
  v90 = a1;
  v22 = v21;
  v81 = v21;
  v89 = v21;

  sub_1ADDD86D8(v22.n128_i64[0], v22.n128_u64[1]);
  v23 = v84;
  sub_1ADECBDF8(&v89, &v90);
  if (v23)
  {
    sub_1ADDCC35C(v22.n128_i64[0], v22.n128_u64[1]);

    (*(v83 + 8))(v87, v85);
    sub_1ADDE158C(v89.n128_i64[0], v89.n128_u64[1]);
  }

  else
  {
    v84 = v16;
    v73 = v22;
    v78 = v13;
    v74 = v25;
    v75 = v24;
    v27 = v83;
    v77 = 0;
    sub_1ADDE158C(v89.n128_i64[0], v89.n128_u64[1]);
    v28 = v90;
    v29 = qword_1ED96AC50;
    v30 = v86;

    if (v29 != -1)
    {
      swift_once();
    }

    v76 = a1;
    sub_1ADDD0F70();
    sub_1AE23BFBC();

    sub_1AE1FDB14(v31);
    v32 = &v19[v14[5]];
    *v32 = v33;
    *(v32 + 1) = v34;
    *(v32 + 2) = v35;
    v36 = sub_1AE23C1EC();
    v37 = *v36;
    v38 = &v19[v14[7]];
    *v38 = *v36;
    *(v38 + 1) = 0;
    *(v38 + 2) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA138, &qword_1AE251E60);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1AE2418F0;

    sub_1ADE1AFA0(v28);
    *(v39 + 32) = v30;
    *(v39 + 40) = v20;
    *(v39 + 48) = v40;
    *(v39 + 56) = v41;
    *(v39 + 64) = v42;
    *&v19[v14[6]] = v39;
    v72 = v19;
    sub_1ADDD9E68(v19, v84);
    v43 = v27;
    v71 = v28;
    v44 = *(v27 + 16);
    v45 = v85;
    v44(v78, v87, v85);
    v46 = qword_1ED969288;

    v70 = v20;

    if (v46 != -1)
    {
      swift_once();
    }

    v47 = __swift_project_value_buffer(v45, qword_1ED96F228);
    v48 = v79;
    v44(v79, v47, v45);
    type metadata accessor for ReplicaState(0);
    v49 = swift_allocObject();
    v50 = OBJC_IVAR____TtC9Coherence12ReplicaState__replica;
    v51 = type metadata accessor for Replica(0);
    v69 = v44;
    v52 = v51;
    v53 = *(*(v51 - 8) + 56);
    v53(v49 + v50, 1, 1, v51);
    (*(v43 + 32))(v49 + OBJC_IVAR____TtC9Coherence12ReplicaState_identity, v48, v45);
    *(v49 + OBJC_IVAR____TtC9Coherence12ReplicaState_localCounter) = 0;
    *(v49 + OBJC_IVAR____TtC9Coherence12ReplicaState_localAlternateCounter) = 0;
    v54 = v80;
    v53(v80, 1, 1, v52);
    swift_beginAccess();
    sub_1ADDD85E4(v54, v49 + v50);
    swift_endAccess();
    type metadata accessor for CapsuleRef(0);
    v55 = swift_allocObject();
    v56 = OBJC_IVAR____TtC9Coherence10CapsuleRef_caches;
    v57 = MEMORY[0x1E69E7CC0];
    *(v55 + v56) = sub_1ADDD9D48(MEMORY[0x1E69E7CC0]);
    v58 = (v55 + OBJC_IVAR____TtC9Coherence10CapsuleRef_version);
    v59 = v70;
    *v58 = v86;
    v58[1] = v59;
    v60 = v78;
    v69(v55 + OBJC_IVAR____TtC9Coherence10CapsuleRef_versionUUID, v78, v45);
    *(v55 + OBJC_IVAR____TtC9Coherence10CapsuleRef_replicaState) = v49;
    v61 = v84;
    sub_1ADDD9E68(v84, v55 + OBJC_IVAR____TtC9Coherence10CapsuleRef_references);
    v62 = sub_1ADDD9ECC(v57);
    v63 = v60;
    v64 = *(v43 + 8);
    v64(v63, v45);
    sub_1ADE73DF4(v61);
    v65 = OBJC_IVAR____TtC9Coherence10CapsuleRef_assets;
    *(v55 + OBJC_IVAR____TtC9Coherence10CapsuleRef_assets) = v62;
    *(v55 + OBJC_IVAR____TtC9Coherence10CapsuleRef_isUpdated) = MEMORY[0x1E69E7CD0];
    v66 = OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration;
    *(v55 + OBJC_IVAR____TtC9Coherence10CapsuleRef_renameGeneration) = 0;

    sub_1ADDD86D8(v73.n128_i64[0], v73.n128_u64[1]);

    swift_beginAccess();
    *(v55 + v65) = v74;

    if (qword_1ED96B308 != -1)
    {
      swift_once();
    }

    sub_1AE23D6AC();
    v64(v87, v45);
    sub_1ADE73DF4(v72);
    *(v55 + v66) = v88;

    v67 = v82;
    result = v81;
    *v82 = v81;
    v67[1] = result;
    v67[2].n128_u64[0] = v55;
  }

  return result;
}

char *Capsule.serializedData()(uint64_t a1)
{
  v3 = *(v1 + 4);
  v10 = 0;
  v8 = 0u;
  v9 = 0u;
  v4 = sub_1ADDCE2E4(0, &v8);
  sub_1ADDCEDE0(&v8, &qword_1EB5B9DB0, &qword_1AE240B80);
  v5 = v1[1];
  v8 = *v1;
  v9 = v5;
  v10 = v3;
  v11 = 1;
  v6 = Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)(v4, &v11, 0, 0, 0xF000000000000000, a1);

  return v6;
}

char *Capsule.serializedData(_:version:allowedAppFormats:fileSignature:)(uint64_t a1, unsigned __int8 *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v79 = a6;
  *&v78 = a5;
  *&v77 = a4;
  v83 = a3;
  *&v76 = a1;
  v122 = sub_1AE23C6DC();
  v89 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v67 - v11;
  v13 = sub_1AE23C70C();
  v85 = *(v13 - 8);
  v86 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  LODWORD(v88) = *a2;
  v16 = *v6;
  v80 = v6[1];
  v81 = v16;
  v17 = v6[2];
  v82 = v6[3];
  v87 = v6[4];
  sub_1AE23C6FC();
  sub_1AE23C6EC();
  sub_1AE23C6BC();
  v84 = v15;
  v18 = sub_1AE23C6EC();
  v19 = sub_1AE23D73C();
  if (sub_1AE23D79C())
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1AE23C6CC();
    _os_signpost_emit_with_name_impl(&dword_1ADDCA000, v18, v19, v21, "encodeDocument", "", v20, 2u);
    MEMORY[0x1B26FDA50](v20, -1, -1);
  }

  v22 = v89;
  (*(v89 + 16))(v9, v12, v122);
  sub_1AE23C74C();
  swift_allocObject();
  v23 = sub_1AE23C73C();
  v25 = v80;
  v24 = v81;
  *&v94 = v81;
  *(&v94 + 1) = v80;
  v26 = v82;
  *&v95[0] = v17;
  *(&v95[0] + 1) = v82;
  *&v95[1] = v87;
  LOBYTE(v110) = v88;
  v27 = v90;
  v28 = sub_1AE1F721C(&v110, v83);
  v90 = v27;
  if (v27)
  {
    v29 = v84;
    sub_1AE1F88EC(v84, v23, "encodeDocument");

    v30 = v122;
  }

  else
  {
    v75 = v23;
    v83 = v12;
    v117 = v24;
    v118 = v25;
    v119 = v17;
    v120 = v26;
    v121 = v87;
    LODWORD(v74) = v28;
    sub_1ADDD86D8(v24, v25);
    sub_1ADDD86D8(v17, v26);

    v31 = v76;
    Capsule.finalizeTimestamps(_:)(v76);
    LOBYTE(v94) = v88;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v32 = v31;
    v33 = v77;
    v34 = v78;
    sub_1ADDE0F78(v77, v78);
    CREncoder.init(_:version:fileSignature:)(v32, &v94, v33, v34);
    v36 = v117;
    v35 = v118;
    v37 = v119;
    v38 = v120;
    v39 = v121;
    v105 = v117;
    v106 = v118;
    v107 = v119;
    v108 = v120;
    v109 = v121;
    sub_1ADDD86D8(v117, v118);
    sub_1ADDD86D8(v37, v38);
    v41 = *(v79 + 16);
    v40 = *(v79 + 24);

    v42 = v41;
    v43 = v90;
    sub_1ADE6A25C(&v105, v74, 0, v42, v40, &v94);
    v90 = v43;
    if (v43)
    {

      v44 = v107;
      v45 = v108;
      sub_1ADDCC35C(v105, v106);
      sub_1ADDCC35C(v44, v45);

      sub_1ADDCC35C(v36, v35);
      sub_1ADDCC35C(v37, v38);

      v29 = v84;
      sub_1AE1F88EC(v84, v75, "encodeDocument");

      v22 = v89;
      v12 = v83;
      v30 = v122;
    }

    else
    {
      v80 = v36;
      v81 = v35;
      v82 = v37;
      v87 = v38;
      v88 = v39;
      v46 = v94;
      v71 = *&v95[0];
      v72 = *(&v94 + 1);
      v69 = v96;
      v70 = *(&v95[1] + 1);
      v68 = *(&v96 + 1);
      v76 = v98;
      v77 = v97;
      v78 = *(v95 + 8);
      v73 = v100;
      v74 = v99;
      v47 = v101;
      v48 = v102;
      v79 = v103;
      v49 = v104;
      v50 = v107;
      v51 = v108;
      sub_1ADDCC35C(v105, v106);
      sub_1ADDCC35C(v50, v51);

      *&v110 = v46;
      *(&v110 + 1) = v72;
      *(v111 + 8) = v78;
      *&v111[0] = v71;
      *(&v111[1] + 1) = v70;
      *&v112 = v69;
      *(&v112 + 1) = v68;
      v113 = v77;
      v114 = v76;
      v115 = v74;
      v116 = v73;
      v52 = v90;
      sub_1ADE67778(&v110);
      if (!v52)
      {
        *&v76 = v49;
        v97 = v113;
        v98 = v114;
        v99 = v115;
        v100 = v116;
        v94 = v110;
        v95[0] = v111[0];
        v95[1] = v111[1];
        v96 = v112;
        v92 = v47;
        v93 = v48;
        *&v77 = v47;
        *&v78 = v48;
        v54 = sub_1ADDD86D8(v47, v48);
        sub_1ADE73BC8(v54, v55, v56);
        v57 = sub_1AE23C51C();
        v90 = 0;
        v59 = v80;
        v58 = v81;
        v60 = v87;
        v61 = v57;
        v63 = v62;
        sub_1AE23BEEC();
        sub_1ADDCC35C(v61, v63);
        v64 = v79;
        v65 = v76;
        sub_1AE23BEEC();
        sub_1ADDF6EEC();
        sub_1ADDCC35C(v64, v65);
        sub_1ADDCC35C(v77, v78);
        sub_1ADDCC35C(v59, v58);
        sub_1ADDCC35C(v82, v60);

        v29 = v92;
        v91[4] = v113;
        v91[5] = v114;
        v91[6] = v115;
        v91[7] = v116;
        v91[0] = v110;
        v91[1] = v111[0];
        v91[2] = v111[1];
        v91[3] = v112;
        sub_1ADE6AF00(v91);
        v66 = v84;
        sub_1AE1F88EC(v84, v75, "encodeDocument");

        (*(v89 + 8))(v83, v122);
        (*(v85 + 8))(v66, v86);
        return v29;
      }

      sub_1ADDCC35C(v80, v81);
      sub_1ADDCC35C(v82, v87);

      sub_1ADDCC35C(v79, v49);
      sub_1ADDCC35C(v47, v48);
      v97 = v113;
      v98 = v114;
      v99 = v115;
      v100 = v116;
      v94 = v110;
      v95[0] = v111[0];
      v95[1] = v111[1];
      v96 = v112;
      sub_1ADE6AF00(&v94);
      v29 = v84;
      sub_1AE1F88EC(v84, v75, "encodeDocument");

      v30 = v122;
      v22 = v89;
      v12 = v83;
    }
  }

  (*(v22 + 8))(v12, v30);
  (*(v85 + 8))(v29, v86);
  return v29;
}

uint64_t sub_1AE1F721C(_BYTE *a1, uint64_t a2)
{
  v5 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*a1)
  {
    sub_1ADE42E40(v6, v7, v8);
    swift_allocError();
    *v18 = 0xD00000000000002ALL;
    *(v18 + 8) = 0x80000001AE2604C0;
    *(v18 + 16) = 0;
    return swift_willThrow();
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(a2 + 16);
  if (!v11)
  {
    return 0;
  }

  v12 = *v2;
  v13 = v2[1];
  v14 = *(v2 + 4);
  v15 = *(a2 + 32);
  v16 = v11 - 1;
  v49 = (a2 + 32);
  if (v11 == 1)
  {
    goto LABEL_26;
  }

  if (v11 < 5)
  {
    v19 = 1;
    goto LABEL_21;
  }

  if (v11 >= 0x11)
  {
    v20 = v16 & 0xFFFFFFFFFFFFFFF0;
    v21 = vdupq_n_s16(v15);
    v22 = (a2 + 50);
    v23 = v16 & 0xFFFFFFFFFFFFFFF0;
    v24 = v21;
    do
    {
      v21 = vminq_s16(v22[-1], v21);
      v24 = vminq_s16(*v22, v24);
      v22 += 2;
      v23 -= 16;
    }

    while (v23);
    v25 = vminq_s16(v21, v24);
    v25.i16[0] = vminvq_s16(v25);
    v15 = v25.i32[0];
    if (v16 == v20)
    {
      goto LABEL_26;
    }

    if ((v16 & 0xC) == 0)
    {
      v19 = v20 | 1;
      goto LABEL_21;
    }
  }

  else
  {
    v20 = 0;
  }

  v19 = v16 & 0xFFFFFFFFFFFFFFFCLL | 1;
  v26 = vdup_n_s16(v15);
  v27 = (a2 + 2 * v20 + 34);
  v28 = v20 - (v16 & 0xFFFFFFFFFFFFFFFCLL);
  do
  {
    v29 = *v27++;
    v26 = vmin_s16(v29, v26);
    v28 += 4;
  }

  while (v28);
  v26.i16[0] = vminv_s16(v26);
  v15 = v26.i32[0];
  if (v16 != (v16 & 0xFFFFFFFFFFFFFFFCLL))
  {
LABEL_21:
    v30 = v11 - v19;
    v31 = (a2 + 2 * v19 + 32);
    do
    {
      v33 = *v31++;
      v32 = v33;
      if (v33 >= v15)
      {
        v15 = v15;
      }

      else
      {
        v15 = v32;
      }

      --v30;
    }

    while (v30);
  }

LABEL_26:
  v67 = v15;
  v50 = v11;
  v51 = v12;
  v52 = v13;
  *&v53 = v14;
  sub_1ADDFC54C(v10);

  sub_1ADE73DF4(v10);
  sub_1AE23C1FC();

  v34 = 0;
  while (1)
  {
    v35 = v60;
    if (v60 < DWORD1(v60))
    {
      v36 = *(&v59 + 1);
      LODWORD(v60) = v60 + 1;
      goto LABEL_30;
    }

    v36 = sub_1AE23C20C();
    if (!v36)
    {
      break;
    }

LABEL_30:
    v68 = v34;
    v37 = (v36 + *(v36 + 24) + (~v35 << 6));
    v38 = v37[4];
    v39 = v37[5];
    v40 = v37[6];
    sub_1ADDD86D8(v38, v39);

    sub_1ADDD86D8(v38, v39);

    if (!v40)
    {
      __break(1u);
      return result;
    }

    sub_1ADDCC35C(v38, v39);
    v34 = (*(*v40 + 208))();
    sub_1ADDCC35C(v38, v39);

    if (v34 <= v68)
    {
      v34 = v68;
    }
  }

  v57 = v65;
  v58[0] = v66[0];
  *(v58 + 11) = *(v66 + 11);
  v53 = v61;
  v54 = v62;
  v55 = v63;
  v56 = v64;
  v51 = v59;
  v52 = v60;
  sub_1ADDCEDE0(&v51, &qword_1EB5BA9F0, &unk_1AE25A260);
  if (v67 <= v34)
  {
    result = v34;
  }

  else
  {
    result = v67;
  }

  v44 = v49;
  for (i = v50; i; --i)
  {
    v45 = *v44++;
    if (v45 == result)
    {
      return result;
    }
  }

  v46 = result;
  sub_1ADE42E40(result, v41, v42);
  swift_allocError();
  *v47 = v46;
  *(v47 + 8) = 0;
  *(v47 + 16) = 1;
  return swift_willThrow();
}

uint64_t Capsule.serializedDataWithAssets(_:version:allowedAppFormats:fileSignature:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v7 + 672) = a6;
  *(v7 + 664) = a5;
  *(v7 + 656) = a4;
  *(v7 + 648) = a3;
  *(v7 + 640) = a1;
  v9 = sub_1AE23C6DC();
  *(v7 + 680) = v9;
  *(v7 + 688) = *(v9 - 8);
  *(v7 + 696) = swift_task_alloc();
  *(v7 + 704) = swift_task_alloc();
  v10 = sub_1AE23C70C();
  *(v7 + 712) = v10;
  *(v7 + 720) = *(v10 - 8);
  *(v7 + 728) = swift_task_alloc();
  *(v7 + 1008) = *a2;
  v11 = *(v6 + 16);
  *(v7 + 736) = *v6;
  *(v7 + 752) = v11;
  *(v7 + 768) = *(v6 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1AE1F77B0, 0, 0);
}

uint64_t sub_1AE1F77B0(double a1)
{
  v100 = v1;
  sub_1AE23C6FC();
  sub_1AE23C6EC();
  sub_1AE23C6BC();
  v2 = sub_1AE23C6EC();
  v3 = sub_1AE23D73C();
  if (sub_1AE23D79C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1AE23C6CC();
    _os_signpost_emit_with_name_impl(&dword_1ADDCA000, v2, v3, v5, "encodeDocument", "", v4, 2u);
    MEMORY[0x1B26FDA50](v4, -1, -1);
  }

  v6 = *(v1 + 768);
  v7 = *(v1 + 1008);
  v8 = *(v1 + 704);
  v9 = *(v1 + 696);
  v10 = *(v1 + 688);
  v11 = *(v1 + 680);
  v12 = *(v1 + 648);
  v85 = *(v1 + 752);
  v86 = *(v1 + 736);

  (*(v10 + 16))(v9, v8, v11);
  sub_1AE23C74C();
  swift_allocObject();
  *(v1 + 776) = sub_1AE23C73C();
  v89 = v86;
  v90 = v85;
  v91 = v6;
  v88 = v7;
  v13 = sub_1AE1F721C(&v88, v12);
  v14 = *(v1 + 768);
  v15 = *(v1 + 760);
  v16 = *(v1 + 752);
  v17 = *(v1 + 744);
  v83 = v13;
  v18 = *(v1 + 736);
  LOBYTE(v11) = *(v1 + 1008);
  v19 = *(v1 + 672);
  v20 = *(v1 + 664);
  v21 = *(v1 + 656);
  v22 = *(v1 + 640);
  *(v1 + 528) = v18;
  *(v1 + 536) = v17;
  *(v1 + 544) = v16;
  *(v1 + 552) = v15;
  *(v1 + 560) = v14;
  sub_1ADDD86D8(v18, v17);
  sub_1ADDD86D8(v16, v15);

  Capsule.finalizeTimestamps(_:)(v22);
  LOBYTE(v89) = v11;
  type metadata accessor for CREncoder();
  swift_allocObject();
  v23 = v22;
  sub_1ADDE0F78(v21, v20);
  v24 = CREncoder.init(_:version:fileSignature:)(v23, &v89, v21, v20);
  *(v1 + 784) = v24;
  v25 = *(v1 + 528);
  *(v1 + 792) = v25;
  v26 = *(v1 + 536);
  *(v1 + 800) = v26;
  v27 = *(v1 + 544);
  *(v1 + 808) = v27;
  v28 = *(v1 + 552);
  *(v1 + 816) = v28;
  v29 = *(v1 + 560);
  *(v1 + 824) = v29;
  *(v1 + 568) = v25;
  *(v1 + 576) = v26;
  *(v1 + 584) = v27;
  *(v1 + 592) = v28;
  *(v1 + 600) = v29;
  sub_1ADDD86D8(v25, v26);
  sub_1ADDD86D8(v27, v28);
  v30 = v19;
  v31 = *(v19 + 16);
  v32 = *(v30 + 24);

  v33 = v32;
  v34 = v24;
  sub_1ADE6A25C((v1 + 568), v83, 0, v31, v33, &v89);
  *(v1 + 832) = v89;
  v35 = *(&v90 + 1);
  *(v1 + 848) = v90;
  *(v1 + 856) = v35;
  v36 = v91;
  *(v1 + 864) = v91;
  *(v1 + 872) = v92;
  *(v1 + 888) = v93;
  v37 = v95;
  *(v1 + 896) = v94;
  *(v1 + 912) = v37;
  v38 = v97;
  *(v1 + 928) = v96;
  *(v1 + 944) = v38;
  v39 = v99;
  *(v1 + 960) = v98;
  *(v1 + 976) = v39;
  v40 = v36;
  v41 = *(v1 + 584);
  v42 = *(v1 + 592);
  sub_1ADDCC35C(*(v1 + 568), *(v1 + 576));
  sub_1ADDCC35C(v41, v42);

  swift_beginAccess();
  if (*(*(v34 + 88) + 16))
  {
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA280, &unk_1AE259B60);
    v44 = swift_task_alloc();
    *(v1 + 992) = v44;
    *v44 = v1;
    v44[1] = sub_1AE1F8148;
    v102 = v43;

    return MEMORY[0x1EEE6DD58](v1 + 632, &type metadata for Proto_Asset, v43, 0, 0, &unk_1AE241D50, v34, &type metadata for Proto_Asset);
  }

  else
  {
    v45 = *(v1 + 968);
    v46 = *(v1 + 960);
    v47 = *(v1 + 888);
    v87 = *(v1 + 872);
    v48 = *(v1 + 856);
    v49 = *(v1 + 848);
    v81 = *(v1 + 912);
    v82 = *(v1 + 928);
    v84 = *(v1 + 896);
    v79 = *(v1 + 832);
    v80 = *(v1 + 944);
    *(*(v1 + 784) + 88) = MEMORY[0x1E69E7CC0];

    *&v89 = v46;
    *(&v89 + 1) = v45;
    *(v1 + 144) = v79;
    *(v1 + 160) = v49;
    *(v1 + 168) = v48;
    v50 = v40;
    *(v1 + 176) = v40;
    *(v1 + 184) = v87;
    *(v1 + 200) = v47;
    *(v1 + 208) = v84;
    *(v1 + 224) = v81;
    *(v1 + 240) = v82;
    *(v1 + 256) = v80;
    v51 = sub_1ADDD86D8(v46, v45);
    sub_1ADE73BC8(v51, v52, v53);
    v54 = sub_1AE23C51C();
    v56 = v55;
    v57 = *(v1 + 984);
    v58 = *(v1 + 976);
    v69 = *(v1 + 968);
    v67 = *(v1 + 960);
    *&v79 = *(v1 + 888);
    v77 = *(v1 + 872);
    v103 = *(v1 + 856);
    v76 = *(v1 + 848);
    v75 = *(v1 + 832);
    v70 = *(v1 + 816);
    v68 = *(v1 + 808);
    v65 = *(v1 + 792);
    v66 = *(v1 + 800);
    *&v80 = *(v1 + 776);
    v78 = *(v1 + 728);
    v59 = *(v1 + 720);
    *&v84 = *(v1 + 712);
    *&v82 = *(v1 + 704);
    v60 = *(v1 + 688);
    *&v81 = *(v1 + 680);
    v73 = *(v1 + 928);
    v74 = *(v1 + 896);
    v71 = *(v1 + 944);
    v72 = *(v1 + 912);
    sub_1AE23BEEC();
    sub_1ADDCC35C(v54, v56);
    sub_1AE23BEEC();
    sub_1ADDF6EEC();
    sub_1ADDCC35C(v58, v57);
    sub_1ADDCC35C(v67, v69);
    sub_1ADDCC35C(v65, v66);
    sub_1ADDCC35C(v68, v70);

    v61 = v89;
    *(v1 + 400) = v75;
    v62 = v103;
    *(v1 + 416) = v76;
    *(v1 + 424) = v62;
    *(v1 + 432) = v50;
    *(v1 + 440) = v77;
    *(v1 + 456) = v79;
    *(v1 + 464) = v74;
    *(v1 + 480) = v72;
    *(v1 + 496) = v73;
    *(v1 + 512) = v71;
    sub_1ADE6AF00(v1 + 400);
    sub_1AE1F88EC(v78, v80, "encodeDocument");

    (*(v60 + 8))(v82, v81);
    (*(v59 + 8))(v78, v84);

    v63 = *(v1 + 8);

    return v63(v61, *(&v61 + 1));
  }
}

uint64_t sub_1AE1F8148()
{
  *(*v1 + 1000) = v0;

  if (v0)
  {
    v2 = sub_1AE1F8700;
  }

  else
  {
    v2 = sub_1AE1F825C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1AE1F825C()
{

  v1 = *(v0 + 632);
  v2 = *(v0 + 1000);
  v3 = *(v0 + 968);
  v4 = *(v0 + 960);
  v5 = *(v0 + 888);
  v6 = *(v0 + 856);
  v7 = *(v0 + 848);
  v55 = *(v0 + 872);
  v57 = *(v0 + 832);
  v53 = *(v0 + 896);
  v49 = *(v0 + 912);
  v51 = *(v0 + 928);
  v47 = *(v0 + 944);
  *(*(v0 + 784) + 88) = MEMORY[0x1E69E7CC0];

  *(v0 + 144) = v57;
  v59 = v4;
  v60 = v3;
  *(v0 + 160) = v7;
  *(v0 + 168) = v6;
  v58 = v1;
  *(v0 + 176) = v1;
  *(v0 + 184) = v55;
  *(v0 + 200) = v5;
  *(v0 + 208) = v53;
  *(v0 + 224) = v49;
  *(v0 + 240) = v51;
  *(v0 + 256) = v47;
  v8 = sub_1ADDD86D8(v4, v3);
  sub_1ADE73BC8(v8, v9, v10);
  v11 = sub_1AE23C51C();
  v13 = *(v0 + 984);
  v14 = *(v0 + 976);
  v15 = *(v0 + 968);
  v16 = *(v0 + 960);
  v56 = *(v0 + 952);
  v52 = *(v0 + 944);
  v50 = *(v0 + 936);
  v46 = *(v0 + 920);
  v48 = *(v0 + 928);
  v44 = *(v0 + 904);
  v45 = *(v0 + 912);
  v42 = *(v0 + 888);
  v43 = *(v0 + 896);
  v40 = *(v0 + 872);
  v41 = *(v0 + 880);
  v38 = *(v0 + 848);
  v39 = *(v0 + 856);
  v36 = *(v0 + 832);
  v37 = *(v0 + 840);
  v35 = *(v0 + 816);
  v33 = *(v0 + 800);
  v34 = *(v0 + 808);
  v32 = *(v0 + 792);
  v54 = *(v0 + 776);
  v17 = *(v0 + 728);
  if (v2)
  {
    sub_1ADDCC35C(v14, v13);

    sub_1ADDCC35C(v16, v15);
    sub_1ADDCC35C(v16, v15);
    sub_1ADDCC35C(v32, v33);
    sub_1ADDCC35C(v34, v35);

    *(v0 + 272) = v36;
    *(v0 + 280) = v37;
    *(v0 + 288) = v38;
    *(v0 + 296) = v39;
    *(v0 + 304) = v58;
    *(v0 + 312) = v40;
    *(v0 + 320) = v41;
    *(v0 + 328) = v42;
    *(v0 + 336) = v43;
    *(v0 + 344) = v44;
    *(v0 + 352) = v45;
    *(v0 + 360) = v46;
    *(v0 + 368) = v48;
    *(v0 + 376) = v50;
    *(v0 + 384) = v52;
    *(v0 + 392) = v56;
    sub_1ADE6AF00(v0 + 272);
    sub_1AE1F88EC(v17, v54, "encodeDocument");

    v18 = *(v0 + 728);
    v19 = *(v0 + 720);
    v20 = *(v0 + 712);
    (*(*(v0 + 688) + 8))(*(v0 + 704), *(v0 + 680));
    (*(v19 + 8))(v18, v20);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = v11;
    v30 = *(v0 + 720);
    v31 = *(v0 + 712);
    v27 = *(v0 + 688);
    v28 = *(v0 + 680);
    v29 = *(v0 + 704);
    v24 = *(v0 + 728);
    v25 = v12;
    sub_1AE23BEEC();
    sub_1ADDCC35C(v23, v25);
    sub_1AE23BEEC();
    sub_1ADDF6EEC();
    sub_1ADDCC35C(v14, v13);
    sub_1ADDCC35C(v16, v15);
    sub_1ADDCC35C(v32, v33);
    sub_1ADDCC35C(v34, v35);

    *(v0 + 400) = v36;
    *(v0 + 408) = v37;
    *(v0 + 416) = v38;
    *(v0 + 424) = v39;
    *(v0 + 432) = v58;
    *(v0 + 440) = v40;
    *(v0 + 448) = v41;
    *(v0 + 456) = v42;
    *(v0 + 464) = v43;
    *(v0 + 472) = v44;
    *(v0 + 480) = v45;
    *(v0 + 488) = v46;
    *(v0 + 496) = v48;
    *(v0 + 504) = v50;
    *(v0 + 512) = v52;
    *(v0 + 520) = v56;
    sub_1ADE6AF00(v0 + 400);
    sub_1AE1F88EC(v24, v54, "encodeDocument");

    (*(v27 + 8))(v29, v28);
    (*(v30 + 8))(v24, v31);

    v26 = *(v0 + 8);

    return v26(v59, v60);
  }
}

uint64_t sub_1AE1F8700()
{
  v1 = *(v0 + 968);
  v2 = *(v0 + 960);
  v22 = *(v0 + 888);
  v20 = *(v0 + 872);
  v19 = *(v0 + 848);
  v18 = *(v0 + 832);
  v3 = *(v0 + 816);
  v4 = *(v0 + 808);
  v5 = *(v0 + 800);
  v6 = *(v0 + 792);
  v7 = *(v0 + 776);
  v21 = *(v0 + 728);
  v16 = *(v0 + 928);
  v17 = *(v0 + 896);
  v14 = *(v0 + 944);
  v15 = *(v0 + 912);
  v13 = *(v0 + 856);
  sub_1ADDCC35C(*(v0 + 976), *(v0 + 984));

  sub_1ADDCC35C(v2, v1);
  sub_1ADDCC35C(v6, v5);
  sub_1ADDCC35C(v4, v3);

  *(v0 + 16) = v18;
  *(v0 + 32) = v19;
  *(v0 + 40) = v13;
  *(v0 + 56) = v20;
  *(v0 + 72) = v22;
  *(v0 + 80) = v17;
  *(v0 + 96) = v15;
  *(v0 + 112) = v16;
  *(v0 + 128) = v14;
  sub_1ADE6AF00(v0 + 16);
  sub_1AE1F88EC(v21, v7, "encodeDocument");

  v8 = *(v0 + 728);
  v9 = *(v0 + 720);
  v10 = *(v0 + 712);
  (*(*(v0 + 688) + 8))(*(v0 + 704), *(v0 + 680));
  (*(v9 + 8))(v8, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1AE1F88EC(uint64_t a1, uint64_t a2, const char *a3)
{
  v18 = a3;
  v3 = sub_1AE23C71C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1AE23C6DC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1AE23C6EC();
  sub_1AE23C72C();
  v12 = sub_1AE23D72C();
  if (sub_1AE23D79C())
  {

    sub_1AE23C75C();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_1AE23C6CC();
    _os_signpost_emit_with_name_impl(&dword_1ADDCA000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1B26FDA50](v14, -1, -1);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1AE1F8B78(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x73746E65746E6F63;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x73746E65746E6F63;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1AE23E00C();
  }

  return v8 & 1;
}

uint64_t sub_1AE1F8C14()
{
  sub_1AE23E31C();
  sub_1AE23CDAC();

  return sub_1AE23E34C();
}

uint64_t sub_1AE1F8C8C(uint64_t a1)
{
  sub_1AE23CDAC();
}

uint64_t sub_1AE1F8CF0(uint64_t a1)
{
  sub_1AE23E31C();
  sub_1AE23CDAC();

  return sub_1AE23E34C();
}

uint64_t sub_1AE1F8D64@<X0>(char *a2@<X8>)
{
  v3 = sub_1AE23DD1C();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1AE1F8DC4(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x73746E65746E6F63;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1AE1F8DF8()
{
  if (*v0)
  {
    return 0x73746E65746E6F63;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1AE1F8E28@<X0>(char *a3@<X8>)
{
  v4 = sub_1AE23DD1C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1AE1F8E8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1FE688(a1, a2, a3);

  return MEMORY[0x1EEE6BB70](a1, v4);
}

uint64_t sub_1AE1F8EC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1AE1FE688(a1, a2, a3);

  return MEMORY[0x1EEE6BB78](a1, v4);
}

uint64_t sub_1AE1F8F04(void *a1)
{
  v131[5] = *MEMORY[0x1E69E9840];
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE800, &unk_1AE25A240);
  v91 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v86 = &v78 - v3;
  v94 = type metadata accessor for PartiallyOrderedReferenceMap(0);
  MEMORY[0x1EEE9AC00](v94);
  v90 = &v78 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v78 - v6;
  v8 = *v1;
  v9 = v1[1];
  v11 = v1[2];
  v10 = v1[3];
  v12 = v1[4];
  v13 = a1;
  v14 = a1[3];
  v93 = v13[4];
  __swift_project_boxed_opaque_existential_1(v13, v14);
  sub_1AE23E3AC();
  v129 = v8;
  v130 = v9;
  v124 = v8;
  v125 = v9;
  v93 = v11;
  v126 = v11;
  v127 = v10;
  v89 = v10;
  v84 = v12;
  v128 = v12;
  sub_1ADDFC54C(v7);
  v15 = *&v7[*(v94 + 20)];
  sub_1ADDD86D8(v8, v9);
  v88 = v8;
  v85 = v9;
  sub_1ADDDF7A8(v8, v9, v15, &v120);
  sub_1ADE73DF4(v7);
  if (!v121)
  {
    goto LABEL_85;
  }

  v116 = v120;
  v117 = v121;
  v118 = v122;
  v119 = v123;
  v16 = v92;
  sub_1AE1F9A28(&v129, &v116, v131);
  v17 = v16;
  if (!v16)
  {

    sub_1ADDCC35C(v129, v130);
    v18 = v88;
    v19 = v85;
    *&v108 = v88;
    *(&v108 + 1) = v85;
    v20 = v90;
    *&v109 = v93;
    *(&v109 + 1) = v89;
    *&v110 = v84;
    sub_1ADDFC54C(v90);
    sub_1AE23C1FC();
    sub_1ADE73DF4(v20);
    if (v18)
    {
      v21 = 0;
    }

    else
    {
      v21 = v19 == 0xC000000000000000;
    }

    v22 = !v21;
    v83 = v22;
    v23 = v19 >> 62;
    v24 = __OFSUB__(HIDWORD(v18), v18);
    v80 = v24;
    v79 = HIDWORD(v18) - v18;
    v81 = BYTE6(v19);
    v82 = (v91 + 8);
    v84 = v19 >> 62;
    while (1)
    {
      v27 = v97;
      v94 = v17;
      if (v97 >= DWORD1(v97))
      {
        v28 = sub_1AE23C20C();
        if (!v28)
        {
          v114 = v102;
          v115[0] = v103[0];
          *(v115 + 11) = *(v103 + 11);
          v110 = v98;
          v111 = v99;
          v112 = v100;
          v113 = v101;
          v108 = v96;
          v109 = v97;
          sub_1ADDFD834(&v108);
          return __swift_destroy_boxed_opaque_existential_1(v131);
        }
      }

      else
      {
        v28 = *(&v96 + 1);
        LODWORD(v97) = v97 + 1;
      }

      v29 = (v28 + *(v28 + 24) + (~v27 << 6));
      v31 = v29[4];
      v30 = v29[5];
      v32 = v29[3];
      v105[0] = v29[2];
      v105[1] = v32;
      v106 = v31;
      v107 = v30;
      v33 = v105[0];
      v93 = v32;
      v34 = *(&v105[0] + 1) >> 62;
      if (*(&v105[0] + 1) >> 62 == 3)
      {
        break;
      }

      if (v34 > 1)
      {
        if (v34 != 2)
        {
          goto LABEL_38;
        }

        v40 = *(*&v105[0] + 16);
        v39 = *(*&v105[0] + 24);
        v41 = __OFSUB__(v39, v40);
        v38 = v39 - v40;
        if (v41)
        {
          goto LABEL_79;
        }
      }

      else if (v34)
      {
        LODWORD(v38) = DWORD1(v105[0]) - LODWORD(v105[0]);
        if (__OFSUB__(DWORD1(v105[0]), v105[0]))
        {
          goto LABEL_80;
        }

        v38 = v38;
      }

      else
      {
        v38 = BYTE14(v105[0]);
      }

LABEL_41:
      v91 = *(&v106 + 1);
      v92 = v31;
      if (v23 > 1)
      {
        if (v23 != 2)
        {
          if (v38)
          {
LABEL_53:
            v89 = *(&v30 + 1);
            v90 = v30;
            sub_1ADDCEE40(v105, &v108, &qword_1EB5BA9E8, &qword_1AE251DE0);
            v50 = v93;
            v17 = v94;
            goto LABEL_54;
          }

          goto LABEL_56;
        }

        v44 = *(v88 + 16);
        v43 = *(v88 + 24);
        v41 = __OFSUB__(v43, v44);
        v42 = v43 - v44;
        if (v41)
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
LABEL_85:
          __break(1u);
        }
      }

      else
      {
        v42 = v81;
        if (v23)
        {
          v42 = v79;
          if (v80)
          {
            goto LABEL_78;
          }
        }
      }

      if (v38 != v42)
      {
        goto LABEL_53;
      }

      if (v38 < 1)
      {
LABEL_56:
        v59 = v88;
        v60 = v85;
        sub_1ADDD86D8(v88, v85);
        sub_1ADDCEE40(v105, &v108, &qword_1EB5BA9E8, &qword_1AE251DE0);

        sub_1ADDCC35C(v33, *(&v33 + 1));
        v25 = v59;
        v26 = v60;
LABEL_15:
        sub_1ADDCC35C(v25, v26);
        v17 = v94;
      }

      else
      {
        v89 = *(&v30 + 1);
        v90 = v30;
        if (v34 > 1)
        {
          if (v34 == 2)
          {
            v62 = *(*&v105[0] + 16);
            v61 = *(*&v105[0] + 24);
            sub_1ADDD86D8(v88, v85);
            sub_1ADDCEE40(v105, &v108, &qword_1EB5BA9E8, &qword_1AE251DE0);
            v63 = sub_1AE23BB7C();
            v50 = v93;
            if (v63)
            {
              v64 = sub_1AE23BBAC();
              if (__OFSUB__(v62, v64))
              {
                goto LABEL_83;
              }

              v63 += v62 - v64;
            }

            if (__OFSUB__(v61, v62))
            {
              goto LABEL_82;
            }

            sub_1AE23BB9C();
            v65 = v63;
            v66 = v88;
            v67 = v88;
            v68 = v85;
            v69 = v85;
            v70 = v94;
            goto LABEL_72;
          }

          *(&v104 + 6) = 0;
          *&v104 = 0;
          v74 = v88;
          v75 = v85;
          sub_1ADDD86D8(v88, v85);
          sub_1ADDCEE40(v105, &v108, &qword_1EB5BA9E8, &qword_1AE251DE0);
          v76 = v94;
          sub_1ADDD8820(&v104, v74, v75, &v108);
          v17 = v76;
          v48 = v74;
          v49 = v75;
LABEL_68:
          sub_1ADDCC35C(v48, v49);
          v50 = v93;
          if ((v108 & 1) == 0)
          {
            goto LABEL_54;
          }

LABEL_73:

          sub_1ADDCC35C(v33, *(&v33 + 1));
          v23 = v84;
        }

        else
        {
          if (!v34)
          {
            *&v104 = *&v105[0];
            DWORD2(v104) = DWORD2(v105[0]);
            WORD6(v104) = WORD6(v105[0]);
            v45 = v88;
            v46 = v85;
            sub_1ADDD86D8(v88, v85);
            sub_1ADDCEE40(v105, &v108, &qword_1EB5BA9E8, &qword_1AE251DE0);
            v47 = v94;
            sub_1ADDD8820(&v104, v45, v46, &v108);
            v17 = v47;
            v48 = v45;
            v49 = v46;
            goto LABEL_68;
          }

          if (*&v105[0] >> 32 < SLODWORD(v105[0]))
          {
            goto LABEL_81;
          }

          v78 = (*&v105[0] >> 32) - SLODWORD(v105[0]);
          sub_1ADDD86D8(v88, v85);
          sub_1ADDCEE40(v105, &v108, &qword_1EB5BA9E8, &qword_1AE251DE0);
          v71 = sub_1AE23BB7C();
          if (v71)
          {
            v72 = sub_1AE23BBAC();
            v50 = v93;
            v73 = v94;
            if (__OFSUB__(v33, v72))
            {
              goto LABEL_84;
            }

            v71 += v33 - v72;
          }

          else
          {
            v50 = v93;
            v73 = v94;
          }

          sub_1AE23BB9C();
          v65 = v71;
          v66 = v88;
          v67 = v88;
          v68 = v85;
          v69 = v85;
          v70 = v73;
LABEL_72:
          sub_1ADDD8820(v65, v67, v69, &v108);
          v17 = v70;
          sub_1ADDCC35C(v66, v68);
          if (v108)
          {
            goto LABEL_73;
          }

LABEL_54:
          swift_beginAccess();
          v51 = __swift_mutable_project_boxed_opaque_existential_1(v131, v131[3]);
          sub_1AE1FE688(v51, v52, v53);
          v54 = v86;
          sub_1AE23DE5C();
          v55 = swift_endAccess();
          v104 = v33;
          v95 = 0;
          sub_1AE1FE6DC(v55, v56, v57);
          v58 = v87;
          sub_1AE23DD5C();
          if (v17)
          {
            (*v82)(v54, v58);
            v114 = v102;
            v115[0] = v103[0];
            *(v115 + 11) = *(v103 + 11);
            v110 = v98;
            v111 = v99;
            v112 = v100;
            v113 = v101;
            v108 = v96;
            v109 = v97;
            sub_1ADDFD834(&v108);
            sub_1ADDCC35C(v33, *(&v33 + 1));

            return __swift_destroy_boxed_opaque_existential_1(v131);
          }

          *&v104 = v50;
          v95 = 1;

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE818, &unk_1AE25A250);
          sub_1AE1FE730();
          sub_1AE23DD5C();
          sub_1ADDCC35C(v33, *(&v33 + 1));

          (*v82)(v54, v58);

          v23 = v84;
        }
      }
    }

    if (*&v105[0])
    {
      v35 = 0;
    }

    else
    {
      v35 = *(&v105[0] + 1) == 0xC000000000000000;
    }

    v37 = !v35 || v23 < 3;
    if (((v37 | v83) & 1) == 0)
    {
      sub_1ADDD86D8(0, 0xC000000000000000);
      sub_1ADDCEE40(v105, &v108, &qword_1EB5BA9E8, &qword_1AE251DE0);

      sub_1ADDCC35C(0, 0xC000000000000000);
      v25 = 0;
      v26 = 0xC000000000000000;
      goto LABEL_15;
    }

LABEL_38:
    v38 = 0;
    goto LABEL_41;
  }

  sub_1ADDCC35C(v129, v130);
  return __swift_destroy_boxed_opaque_existential_1(v131);
}

double sub_1AE1F9A28(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE800, &unk_1AE25A240);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v11 = *a1;
  v10 = a1[1];
  v12 = *a2;
  swift_beginAccess();
  v13 = __swift_mutable_project_boxed_opaque_existential_1(a3, *(a3 + 24));
  sub_1AE1FE688(v13, v14, v15);
  sub_1AE23DE5C();
  v16 = swift_endAccess();
  v22 = v11;
  v23 = v10;
  v24 = 0;
  sub_1AE1FE6DC(v16, v17, v18);
  v19 = v21;
  sub_1AE23DD5C();
  if (v19)
  {
    (*(v7 + 8))(v9, v6);
  }

  else
  {
    v22 = v12;
    v24 = 1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BE818, &unk_1AE25A250);
    sub_1AE1FE730();
    sub_1AE23DD5C();
    (*(v7 + 8))(v9, v6);
  }

  return result;
}

uint64_t Capsule.encode(to:)(void *a1, uint64_t a2)
{
  v3 = *v2;
  v4 = v2[1];
  v5 = v2[2];
  v6 = v2[3];
  v7 = *(a2 + 24);
  v10 = *(a2 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1ADDD86D8(v3, v4);
  sub_1ADDD86D8(v5, v6);

  sub_1AE23E3BC();
  __swift_mutable_project_boxed_opaque_existential_1(v11, v11[3]);
  type metadata accessor for _CapsuleCodable(0, v10, v7, v8);
  swift_getWitnessTable();
  sub_1AE23E06C();
  sub_1ADDCC35C(v3, v4);
  sub_1ADDCC35C(v5, v6);

  return __swift_destroy_boxed_opaque_existential_1(v11);
}

void sub_1AE1F9D8C(_OWORD *a1@<X8>)
{
  v2 = v1;
  swift_beginAccess();
  v3 = *(v1 + 24);
  v4 = MEMORY[0x1E69E7CC8];
  *&v43 = MEMORY[0x1E69E7CC8];
  *(&v43 + 1) = v3;
  swift_beginAccess();

  sub_1ADF5F770(v5, v40);
  sub_1ADF5F770(v4, &v36);
  v41 = v36;
  v42 = v37;
  v6 = &v41;
  MergeResult.merge(_:)(v6);

  swift_beginAccess();
  v33 = v2;
  v7 = *(v2 + 48);
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
    v13 = v12;
LABEL_11:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = *(*(v7 + 56) + 24 * (v14 | (v13 << 6)) + 8);

    v16 = *(v15 + 16);

    if (v16)
    {

      sub_1ADF5F770(v17, &v36);
      sub_1ADF5F770(MEMORY[0x1E69E7CC8], &v41);

      v38 = v41;
      v39 = v42;
      v18 = &v38;
      MergeResult.merge(_:)(v18);
    }

    else
    {
    }

    v12 = v13;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
      goto LABEL_27;
    }

    if (v13 >= v11)
    {
      break;
    }

    v10 = *(v7 + 64 + 8 * v13);
    ++v12;
    if (v10)
    {
      goto LABEL_11;
    }
  }

  swift_beginAccess();
  v19 = *(v33 + 56);
  v20 = 1 << *(v19 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v19 + 64);
  v23 = (v20 + 63) >> 6;

  v24 = 0;
  v25 = MEMORY[0x1E69E7CC8];
  while (v22)
  {
    v26 = v24;
LABEL_23:
    v27 = __clz(__rbit64(v22));
    v22 &= v22 - 1;
    v28 = *(*(v19 + 56) + 24 * (v27 | (v26 << 6)) + 8);

    v29 = *(v28 + 16);

    if (v29)
    {

      sub_1ADF5F770(v30, &v41);
      sub_1ADF5F770(v25, &v38);

      v34 = v38;
      v35 = v39;
      v31 = &v34;
      MergeResult.merge(_:)(v31);
    }

    else
    {
    }

    v24 = v26;
  }

  while (1)
  {
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      break;
    }

    if (v26 >= v23)
    {

      *a1 = v43;
      return;
    }

    v22 = *(v19 + 64 + 8 * v26);
    ++v24;
    if (v22)
    {
      goto LABEL_23;
    }
  }

LABEL_27:
  __break(1u);
}

uint64_t sub_1AE1FA14C()
{
  if (qword_1ED96B308 != -1)
  {
    swift_once();
  }

  sub_1AE1F9D8C(&v3);
  v2 = v3;
  sub_1ADDF8100(&v2);

  return v0;
}

uint64_t sub_1AE1FA218()
{
  sub_1AE1FA14C();

  return swift_deallocClassInstance();
}

double CapsuleMergeableDelta.init<A>(_:serializedData:in:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, _OWORD *a7@<X8>)
{
  v10 = *(a4 + 32);
  v11 = *(a4 + 16);
  v13[0] = *a4;
  v13[1] = v11;
  v14 = v10;
  CapsuleMergeableDelta.init<A>(serializedData:in:)(a2, a3, v13, a5, a6, &v15);

  if (!v7)
  {
    result = *&v15;
    *a7 = v15;
  }

  return result;
}

double CapsuleMergeableDelta.init<A>(serializedData:in:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v12 = a3[3];
  v13 = a3[4];
  type metadata accessor for CRDecoder();
  *&v18 = v9;
  *(&v18 + 1) = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v14 = v23;
  sub_1ADE63600(a1, a2, &v18, qword_1ED96F2A8, 0, a4, a5, &v22);
  sub_1ADDCC35C(a1, a2);
  sub_1ADDCC35C(v9, v10);
  sub_1ADDCC35C(v11, v12);

  if (!v14)
  {
    result = *&v22;
    *a6 = v22;
  }

  return result;
}

double CapsuleMergeableDelta.init<A>(serializedData:version:in:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  v9 = *a3;
  v10 = a3[1];
  v11 = a3[2];
  v12 = a3[3];
  v13 = a3[4];
  type metadata accessor for CRDecoder();
  *&v18 = v9;
  *(&v18 + 1) = v10;
  v19 = v11;
  v20 = v12;
  v21 = v13;
  if (qword_1ED96AE88 != -1)
  {
    swift_once();
  }

  v14 = v23;
  sub_1ADE63600(a1, a2, &v18, qword_1ED96F2A8, 0, a4, a5, &v22);
  sub_1ADDCC35C(a1, a2);
  sub_1ADDCC35C(v9, v10);
  sub_1ADDCC35C(v11, v12);

  if (!v14)
  {
    result = *&v22;
    *a6 = v22;
  }

  return result;
}

uint64_t CapsuleMergeableDelta.deltaSerializedData(_:version:)(void *a1, char *a2)
{
  v4 = v3;
  v6 = *a2;
  v8 = *v2;
  v7 = v2[1];
  v15 = *v2;
  v16 = v7;
  if (CapsuleMergeableDelta.needsToFinalizeTimestamps()())
  {
    v15 = v8;
    v16 = v7;

    CapsuleMergeableDelta.finalizeTimestamps(_:)(a1);
    LOBYTE(v14[0]) = v6;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v9 = CREncoder.init(_:version:fileSignature:)(a1, v14, 0, 0xF000000000000000);
    v14[0] = v15;
    v14[1] = v16;

    sub_1ADE69718(v14, v17);
    if (!v3)
    {
      sub_1ADE675B8(v17, *(v9 + 104) + 4, 0);
      v4 = v11;
      sub_1ADE6AF00(v17);

      swift_bridgeObjectRelease_n();

      return v4;
    }

    swift_bridgeObjectRelease_n();
  }

  else
  {
    LOBYTE(v15) = v6;
    type metadata accessor for CREncoder();
    swift_allocObject();
    v10 = CREncoder.init(_:version:fileSignature:)(a1, &v15, 0, 0xF000000000000000);
    v15 = v8;
    v16 = v7;
    sub_1ADE69718(&v15, v18);
    if (!v3)
    {
      sub_1ADE675B8(v18, *(v10 + 104) + 4, 0);
      v4 = v12;
      sub_1ADE6AF00(v18);

      return v4;
    }
  }

  return v4;
}

Swift::Bool __swiftcall CapsuleMergeableDelta.needsToFinalizeTimestamps()()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 48);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v6 = 1 << *(*(v1 + 48) + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & v3;
  v9 = (v6 + 63) >> 6;
  v36 = v1;
  v37 = *(v1 + 48);
  result = swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v8)
  {
    v12 = v11;
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = v13 | (v12 << 6);
    v15 = (*(v37 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(*(v37 + 56) + 24 * v14 + 8) + 16);
    sub_1ADDD86D8(*v15, v17);

    sub_1ADDCC35C(v16, v17);

    if (v18)
    {
LABEL_22:
      v35 = 1;
LABEL_24:

      return v35;
    }
  }

  while (1)
  {
    v12 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  swift_beginAccess();
  v19 = *(v36 + 56);
  v22 = *(v19 + 64);
  v21 = v19 + 64;
  v20 = v22;
  v23 = 1 << *(*(v36 + 56) + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v20;
  v26 = (v23 + 63) >> 6;
  v38 = *(v36 + 56);
  result = swift_bridgeObjectRetain_n();
  v27 = 0;
  while (v25)
  {
    v28 = v27;
LABEL_21:
    v29 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v30 = v29 | (v28 << 6);
    v31 = (*(v38 + 48) + 16 * v30);
    v32 = *v31;
    v33 = v31[1];
    v34 = *(*(*(v38 + 56) + 24 * v30 + 8) + 16);
    sub_1ADDD86D8(*v31, v33);

    sub_1ADDCC35C(v32, v33);

    if (v34)
    {
      goto LABEL_22;
    }
  }

  while (1)
  {
    v28 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v28 >= v26)
    {
      v35 = 0;
      goto LABEL_24;
    }

    v25 = *(v21 + 8 * v28);
    ++v27;
    if (v25)
    {
      v27 = v28;
      goto LABEL_21;
    }
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t CapsuleMergeableDelta.finalizeTimestamps(_:)(unint64_t a1)
{
  sub_1AE1FB0C8();
  v2 = *v1;
  sub_1AE1F9D8C(&v71);
  v5 = *(&v71 + 1);
  v4 = v71;
  if (qword_1ED96B308 != -1)
  {
LABEL_45:
    v3 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v3);
  v58 = v4;
  v57 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA4A8, &unk_1AE242540);
  sub_1AE23D6AC();
  v64 = BYTE8(v71);
  v65 = v71;
  v66 = v72;
  swift_beginAccess();
  v6 = *(v2 + 48);
  v9 = *(v6 + 64);
  v8 = v6 + 64;
  v7 = v9;
  v10 = 1 << *(*(v2 + 48) + 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v61 = *(v2 + 48);

  v4 = 0;
  v63 = v2;
  for (i = v8; ; v8 = i)
  {
    if (!v12)
    {
      while (1)
      {
        v15 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v15 >= v13)
        {
          goto LABEL_21;
        }

        v12 = *(v8 + 8 * v15);
        ++v4;
        if (v12)
        {
          v4 = v15;
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_42;
    }

LABEL_10:
    v16 = (*(v61 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v12)))));
    v18 = *v16;
    v17 = v16[1];
    swift_beginAccess();
    sub_1ADDD86D8(v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *(v2 + 48);
    *(v2 + 48) = 0x8000000000000000;
    v22 = sub_1ADDDE7CC(v18, v17);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_43;
    }

    v5 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v21 & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_1ADF70BA4();
      if ((v5 & 1) == 0)
      {
LABEL_20:
        __break(1u);
LABEL_21:

        swift_beginAccess();
        v32 = *(v2 + 56);
        v35 = *(v32 + 64);
        v34 = v32 + 64;
        v33 = v35;
        v36 = 1 << *(*(v2 + 56) + 32);
        v37 = -1;
        if (v36 < 64)
        {
          v37 = ~(-1 << v36);
        }

        v38 = v37 & v33;
        v39 = (v36 + 63) >> 6;
        v62 = *(v2 + 56);

        v4 = 0;
        v60 = v34;
        while (v38)
        {
LABEL_29:
          v42 = (*(v62 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v38)))));
          v43 = *v42;
          v44 = v42[1];
          swift_beginAccess();
          sub_1ADDD86D8(v43, v44);
          v45 = swift_isUniquelyReferenced_nonNull_native();
          v46 = *(v2 + 56);
          *(v2 + 56) = 0x8000000000000000;
          v48 = sub_1ADDDE7CC(v43, v44);
          v49 = v46[2];
          v50 = (v47 & 1) == 0;
          v51 = v49 + v50;
          if (__OFADD__(v49, v50))
          {
            goto LABEL_44;
          }

          v52 = v47;
          if (v46[3] >= v51)
          {
            if (v45)
            {
              if ((v47 & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            else
            {
              sub_1ADF70B90();
              if ((v52 & 1) == 0)
              {
                goto LABEL_39;
              }
            }
          }

          else
          {
            sub_1ADF6BA98(v51, v45);
            v53 = sub_1ADDDE7CC(v43, v44);
            if ((v52 & 1) != (v54 & 1))
            {
              goto LABEL_46;
            }

            v48 = v53;
            if ((v52 & 1) == 0)
            {
LABEL_39:
              __break(1u);
LABEL_40:

              swift_beginAccess();
              sub_1ADDF8898(v65, v64, v66);
              swift_endAccess();
              swift_beginAccess();
              sub_1ADDF8898(v65, v64, v66);
              swift_endAccess();

              *&v69 = v58;
              *(&v69 + 1) = v57;
              sub_1ADDF8100(&v69);
            }
          }

          v5 = v46;
          v55 = v46[7] + 24 * v48;
          v67 = *v55;
          v68 = *(v55 + 16);
          if (!*v55)
          {
            goto LABEL_39;
          }

          sub_1ADDF8898(v65, v64, v66);
          v40 = v46[7] + 24 * v48;
          *v40 = v67;
          *(v40 + 16) = v68;
          v38 &= v38 - 1;
          sub_1AE1FE250(v67, *(&v67 + 1), v68);
          sub_1AE1FE29C(v67, *(&v67 + 1), v68, MEMORY[0x1E69E7D48]);
          v2 = v63;
          *(v63 + 56) = v46;
          swift_endAccess();
          sub_1ADDCC35C(v43, v44);
          v34 = v60;
        }

        while (1)
        {
          v41 = v4 + 1;
          if (__OFADD__(v4, 1))
          {
            break;
          }

          if (v41 >= v39)
          {
            goto LABEL_40;
          }

          v38 = *(v34 + 8 * v41);
          ++v4;
          if (v38)
          {
            v4 = v41;
            goto LABEL_29;
          }
        }

LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }
    }

LABEL_17:
    v5 = v20;
    v28 = v20[7] + 24 * v22;
    v29 = *(v28 + 16);
    v69 = *v28;
    v70 = v29;
    if (!v69)
    {
      goto LABEL_20;
    }

    sub_1ADDF8898(v65, v64, v66);
    v30 = v69;
    v31 = v70;
    v14 = v20[7] + 24 * v22;
    *v14 = v69;
    *(v14 + 16) = v31;
    v12 &= v12 - 1;
    sub_1AE1FE250(v30, *(&v30 + 1), v31);
    sub_1AE1FE29C(v30, *(&v30 + 1), v31, MEMORY[0x1E69E7D48]);
    v2 = v63;
    *(v63 + 48) = v20;
    swift_endAccess();
    sub_1ADDCC35C(v18, v17);
  }

  sub_1ADF6BAAC(v25, isUniquelyReferenced_nonNull_native);
  v26 = sub_1ADDDE7CC(v18, v17);
  if ((v5 & 1) == (v27 & 1))
  {
    v22 = v26;
    if ((v5 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

LABEL_46:
  result = sub_1AE23E27C();
  __break(1u);
  return result;
}

uint64_t sub_1AE1FB0C8()
{
  v1 = v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    v3 = *v0;
    swift_beginAccess();
    v8 = *(v3 + 16);
    swift_beginAccess();
    v9 = *(v3 + 32);
    swift_beginAccess();
    v4 = *(v3 + 48);
    swift_beginAccess();
    v5 = *(v3 + 56);
    type metadata accessor for CapsuleMergeableDelta.Storage();
    v6 = swift_allocObject();
    *(v6 + 16) = v8;
    *(v6 + 32) = v9;
    *(v6 + 48) = v4;
    *(v6 + 56) = v5;
    v7 = qword_1ED96B308;

    if (v7 != -1)
    {
      swift_once();
    }

    sub_1AE1F9D8C(&v11);
    v10 = v11;
    sub_1ADDE1CB8(&v10);

    *v1 = v6;
  }

  return result;
}

void CapsuleMergeableDelta.visitReferences(_:)(void *a1)
{
  v3 = *v1;
  swift_beginAccess();
  v36 = v3;
  v4 = *(v3 + 48);
  v7 = *(v4 + 64);
  v6 = v4 + 64;
  v5 = v7;
  v8 = 1 << *(*(v3 + 48) + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & v5;
  v11 = (v8 + 63) >> 6;
  v39 = *(v3 + 48);

  v12 = 0;
  v37 = v6;
  if (!v10)
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v11)
      {
        goto LABEL_12;
      }

      v10 = *(v6 + 8 * v13);
      ++v12;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  while (1)
  {
    v13 = v12;
LABEL_8:
    v14 = *(*(v39 + 56) + 24 * (__clz(__rbit64(v10)) | (v13 << 6)) + 16);
    v16 = a1[3];
    v15 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v16);
    v41 = *(v15 + 8);

    if (v41(v16, v15))
    {
      break;
    }

    v10 &= v10 - 1;
    v44[0] = v14;
    v17 = a1[3];
    v18 = a1[4];
    v19 = __swift_project_boxed_opaque_existential_1(a1, v17);
    sub_1AE213254(v19, v44, v17, v18);

    v12 = v13;
    v6 = v37;
    if (!v10)
    {
      goto LABEL_5;
    }
  }

LABEL_12:

  swift_beginAccess();
  v20 = *(v36 + 56);
  v23 = *(v20 + 64);
  v22 = v20 + 64;
  v21 = v23;
  v24 = 1 << *(*(v36 + 56) + 32);
  v25 = -1;
  if (v24 < 64)
  {
    v25 = ~(-1 << v24);
  }

  v26 = v25 & v21;
  v27 = (v24 + 63) >> 6;
  v40 = *(v36 + 56);

  v28 = 0;
  v38 = v22;
  if (!v26)
  {
LABEL_16:
    while (1)
    {
      v29 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v29 >= v27)
      {
        goto LABEL_23;
      }

      v26 = *(v22 + 8 * v29);
      ++v28;
      if (v26)
      {
        goto LABEL_19;
      }
    }

LABEL_25:
    __break(1u);
    return;
  }

  while (1)
  {
    v29 = v28;
LABEL_19:
    v30 = *(*(v40 + 56) + 24 * (__clz(__rbit64(v26)) | (v29 << 6)) + 16);
    v32 = a1[3];
    v31 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v32);
    v42 = *(v31 + 8);

    if (v42(v32, v31))
    {
      break;
    }

    v26 &= v26 - 1;
    v43 = v30;
    v33 = a1[3];
    v34 = a1[4];
    v35 = __swift_project_boxed_opaque_existential_1(a1, v33);
    sub_1AE2131AC(v35, &v43, v33, v34);

    v28 = v29;
    v22 = v38;
    if (!v26)
    {
      goto LABEL_16;
    }
  }

LABEL_23:
}

unint64_t sub_1AE1FB594(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1AE1FB660(v11, 0, 0, 1, a1, a2);
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
    sub_1ADDE4E28(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1AE1FB660(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_1AE1FB76C(a5, a6);
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
    result = sub_1AE23DADC();
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

void *sub_1AE1FB76C(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AE1FB7B8(a1, a2);
  sub_1AE1FB8E8(&unk_1F23BBAC8);
  return v3;
}

void *sub_1AE1FB7B8(uint64_t a1, unint64_t a2)
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

  v6 = sub_1ADDD6E00(v5, 0);
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

  result = sub_1AE23DADC();
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
        v10 = sub_1AE23CDFC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1ADDD6E00(v10, 0);
        result = sub_1AE23DA1C();
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

uint64_t sub_1AE1FB8E8(uint64_t result)
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

  result = sub_1AE1FB9D4(result, v11, 1, v3);
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

char *sub_1AE1FB9D4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA108, &qword_1AE241920);
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

void sub_1AE1FBAC8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB5BA258, &qword_1AE2421F0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1AE1FBBA0(uint64_t a1)
{
  v2 = sub_1ADDFB3E0();
  v3 = sub_1AE1FCCFC(&v19, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v19;
  if (v19 != v4)
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_17;
    }

    if (v4 < v19)
    {
LABEL_18:
      __break(1u);
    }

    else
    {
      sub_1AE1FBAC8(a1, a1 + 32, 0, (2 * v19) | 1);
      v20 = v3;
      v21 = v6;
      if (*(a1 + 16) >= v4)
      {

        for (i = (a1 + 16 * v5 + 40); ; i += 2)
        {
          if (v5 >= v4)
          {
            __break(1u);
LABEL_17:
            __break(1u);
            goto LABEL_18;
          }

          v8 = *(i - 1);
          v9 = *i;
          v10 = v20;
          v11 = v21;
          v12 = *(v21 + 16);
          v13 = *i;
          if (v20)
          {
            sub_1ADDD86D8(v8, v13);

            sub_1AE1FC868(v8, v9, v11 + 32, v12, (v10 + 16), v10 + 32);
            v15 = v14;
            v17 = v16;

            if ((v15 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          else
          {
            sub_1ADDD86D8(v8, v13);
            sub_1AE1FC1B0(v8, v9, v11 + 32, v12);
            if ((v18 & 1) == 0)
            {
              goto LABEL_7;
            }

            v17 = 0;
          }

          sub_1AE1FBD48(v8, v9, v17);
LABEL_7:
          ++v5;
          sub_1ADDCC35C(v8, v9);
          if (v4 == v5)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

void sub_1AE1FBD48(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1ADE6F2E4(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    sub_1ADE6F2E4((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  v14 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (MEMORY[0x1B26FAA30](*(v14 + 16) & 0x3FLL) > v12)
    {
      sub_1ADDD86D8(a1, a2);
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v4;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_18:
          __break(1u);
          return;
        }

        v17 = sub_1AE23C19C();

        *v4 = v17;
        v16 = v17;
      }

      if (v16)
      {
        sub_1AE23C14C();
        return;
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_13:
    sub_1ADDD86D8(a1, a2);
    sub_1AE1FBF04();
    return;
  }

  if (v12 >= 0xF)
  {
    goto LABEL_13;
  }

  sub_1ADDD86D8(a1, a2);
}

void sub_1AE1FBF04()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1B26FAA50](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1AE1FBFA4(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
}

uint64_t sub_1AE1FBFA4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1B26FAA50](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1B26FAA60](v8, a4);
    sub_1AE1FC024(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_1AE1FC074(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  v10 = result;
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      while (1)
      {
        v6 = (v10 + 16 * v5);
        v7 = *v6;
        v8 = v6[1];
        sub_1AE23E31C();
        sub_1ADDD86D8(v7, v8);
        sub_1AE23BECC();
        result = sub_1AE23E34C();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v9 = sub_1AE23C13C();
        sub_1ADDCC35C(v7, v8);
        if (v9)
        {
          while (1)
          {
            sub_1AE23C17C();
          }
        }

        result = sub_1AE23C16C();
        if (++v5 == a2)
        {
          return result;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return result;
}

void sub_1AE1FC1B0(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  __s2[2] = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    return;
  }

  v4 = a4;
  v5 = a2;
  v7 = 0;
  v8 = 0;
  if (a1)
  {
    v9 = 0;
  }

  else
  {
    v9 = a2 == 0xC000000000000000;
  }

  v10 = !v9;
  v65 = v10;
  v11 = a2 >> 62;
  v58 = HIDWORD(a1);
  v12 = __OFSUB__(HIDWORD(a1), a1);
  v62 = v12;
  v61 = HIDWORD(a1) - a1;
  __n = BYTE6(a2);
  v59 = a1;
  v56 = (a1 >> 32) - a1;
  v57 = a1 >> 32;
  for (i = (a3 + 8); ; i += 2)
  {
    v15 = *(i - 1);
    v14 = *i;
    v16 = *i >> 62;
    if (v16 == 3)
    {
      if (v15)
      {
        v17 = 0;
      }

      else
      {
        v17 = v14 == 0xC000000000000000;
      }

      v19 = !v17 || v11 < 3;
      if (((v19 | v65) & 1) == 0)
      {
        return;
      }

LABEL_36:
      v20 = 0;
      if (v11 <= 1)
      {
        goto LABEL_33;
      }

      goto LABEL_37;
    }

    if (v16 > 1)
    {
      if (v16 != 2)
      {
        goto LABEL_36;
      }

      v22 = *(v15 + 16);
      v21 = *(v15 + 24);
      v23 = __OFSUB__(v21, v22);
      v20 = v21 - v22;
      if (v23)
      {
        goto LABEL_115;
      }

      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

    else if (v16)
    {
      LODWORD(v20) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_116;
      }

      v20 = v20;
      if (v11 <= 1)
      {
LABEL_33:
        v24 = __n;
        if (v11)
        {
          v24 = v61;
          if (v62)
          {
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
          }
        }

        goto LABEL_39;
      }
    }

    else
    {
      v20 = BYTE6(v14);
      if (v11 <= 1)
      {
        goto LABEL_33;
      }
    }

LABEL_37:
    if (v11 != 2)
    {
      if (!v20)
      {
        return;
      }

      goto LABEL_13;
    }

    v26 = *(a1 + 16);
    v25 = *(a1 + 24);
    v23 = __OFSUB__(v25, v26);
    v24 = v25 - v26;
    if (v23)
    {
      goto LABEL_114;
    }

LABEL_39:
    if (v20 != v24)
    {
      goto LABEL_13;
    }

    if (v20 < 1)
    {
      return;
    }

    if (v16 > 1)
    {
      break;
    }

    if (!v16)
    {
      __s2[0] = *(i - 1);
      LOWORD(__s2[1]) = v14;
      BYTE2(__s2[1]) = BYTE2(v14);
      BYTE3(__s2[1]) = BYTE3(v14);
      BYTE4(__s2[1]) = BYTE4(v14);
      BYTE5(__s2[1]) = BYTE5(v14);
      sub_1ADDD86D8(v15, v14);
      goto LABEL_56;
    }

    if (v15 > v15 >> 32)
    {
      goto LABEL_117;
    }

    sub_1ADDD86D8(*(i - 1), *i);
    v32 = sub_1AE23BB7C();
    v63 = v8;
    if (v32)
    {
      v33 = v32;
      v34 = sub_1AE23BBAC();
      if (__OFSUB__(v15, v34))
      {
        goto LABEL_119;
      }

      v31 = (v15 - v34 + v33);
    }

    else
    {
      v31 = 0;
    }

    sub_1AE23BB9C();
    if (v11 == 2)
    {
      v47 = *(a1 + 16);
      v53 = v31;
      v55 = *(a1 + 24);
      v35 = sub_1AE23BB7C();
      if (v35)
      {
        v48 = sub_1AE23BBAC();
        if (__OFSUB__(v47, v48))
        {
          goto LABEL_126;
        }

        v35 += v47 - v48;
      }

      v31 = (v55 - v47);
      if (__OFSUB__(v55, v47))
      {
        goto LABEL_123;
      }

      v49 = sub_1AE23BB9C();
      if (v49 >= v31)
      {
        v46 = v55 - v47;
      }

      else
      {
        v46 = v49;
      }

      v42 = v53;
      if (!v53)
      {
        goto LABEL_130;
      }

      if (!v35)
      {
        goto LABEL_129;
      }

LABEL_104:
      v5 = a2;
      if (v42 == v35)
      {
LABEL_112:
        sub_1ADDCC35C(v15, v14);
        return;
      }

      v41 = v46;
      goto LABEL_106;
    }

    if (v11 == 1)
    {
      v5 = a2;
      if (v57 < v59)
      {
        goto LABEL_122;
      }

      v35 = sub_1AE23BB7C();
      if (v35)
      {
        v39 = sub_1AE23BBAC();
        if (__OFSUB__(v59, v39))
        {
          goto LABEL_127;
        }

        v35 += v59 - v39;
      }

      v40 = sub_1AE23BB9C();
      v38 = v56;
      if (v40 < v56)
      {
        v38 = v40;
      }

      if (!v31)
      {
        goto LABEL_132;
      }

      if (!v35)
      {
        goto LABEL_131;
      }

LABEL_81:
      if (v31 == v35)
      {
        goto LABEL_112;
      }

      v41 = v38;
      v42 = v31;
LABEL_106:
      v50 = v35;
      goto LABEL_109;
    }

    v5 = a2;
    LOWORD(__s2[0]) = a1;
    BYTE2(__s2[0]) = BYTE2(a1);
    BYTE3(__s2[0]) = BYTE3(a1);
    BYTE4(__s2[0]) = v58;
    BYTE5(__s2[0]) = BYTE5(a1);
    BYTE6(__s2[0]) = BYTE6(a1);
    HIBYTE(__s2[0]) = HIBYTE(a1);
    LODWORD(__s2[1]) = a2;
    WORD2(__s2[1]) = WORD2(a2);
    if (!v31)
    {
      goto LABEL_128;
    }

LABEL_108:
    v50 = __s2;
    v42 = v31;
    v41 = __n;
LABEL_109:
    v51 = memcmp(v42, v50, v41);
    sub_1ADDCC35C(v15, v14);
    v4 = a4;
    v8 = v63;
    if (!v51)
    {
      return;
    }

LABEL_13:
    if (v4 == ++v7)
    {
      return;
    }
  }

  if (v16 != 2)
  {
    memset(__s2, 0, 14);
    sub_1ADDD86D8(v15, v14);
LABEL_56:
    sub_1ADDD8820(__s2, a1, v5, &v67);
    sub_1ADDCC35C(v15, v14);
    v5 = a2;
    if (v67)
    {
      return;
    }

    goto LABEL_13;
  }

  v27 = *(v15 + 16);
  sub_1ADDD86D8(*(i - 1), *i);
  v28 = sub_1AE23BB7C();
  v63 = v8;
  if (v28)
  {
    v29 = v28;
    v30 = sub_1AE23BBAC();
    if (__OFSUB__(v27, v30))
    {
      goto LABEL_118;
    }

    v31 = (v27 - v30 + v29);
  }

  else
  {
    v31 = 0;
  }

  sub_1AE23BB9C();
  if (v11 == 2)
  {
    v43 = *(a1 + 16);
    v52 = v31;
    v54 = *(a1 + 24);
    v35 = sub_1AE23BB7C();
    if (v35)
    {
      v44 = sub_1AE23BBAC();
      if (__OFSUB__(v43, v44))
      {
        goto LABEL_124;
      }

      v35 += v43 - v44;
    }

    v31 = (v54 - v43);
    if (__OFSUB__(v54, v43))
    {
      goto LABEL_121;
    }

    v45 = sub_1AE23BB9C();
    if (v45 >= v31)
    {
      v46 = v54 - v43;
    }

    else
    {
      v46 = v45;
    }

    v42 = v52;
    if (!v52)
    {
      goto LABEL_136;
    }

    if (!v35)
    {
      goto LABEL_135;
    }

    goto LABEL_104;
  }

  if (v11 == 1)
  {
    v5 = a2;
    if (v57 < v59)
    {
      goto LABEL_120;
    }

    v35 = sub_1AE23BB7C();
    if (v35)
    {
      v36 = sub_1AE23BBAC();
      if (__OFSUB__(v59, v36))
      {
        goto LABEL_125;
      }

      v35 += v59 - v36;
    }

    v37 = sub_1AE23BB9C();
    v38 = v56;
    if (v37 < v56)
    {
      v38 = v37;
    }

    if (!v31)
    {
      goto LABEL_134;
    }

    if (!v35)
    {
      goto LABEL_133;
    }

    goto LABEL_81;
  }

  v5 = a2;
  LOWORD(__s2[0]) = a1;
  BYTE2(__s2[0]) = BYTE2(a1);
  BYTE3(__s2[0]) = BYTE3(a1);
  BYTE4(__s2[0]) = v58;
  BYTE5(__s2[0]) = BYTE5(a1);
  BYTE6(__s2[0]) = BYTE6(a1);
  HIBYTE(__s2[0]) = HIBYTE(a1);
  LODWORD(__s2[1]) = a2;
  WORD2(__s2[1]) = WORD2(a2);
  if (v31)
  {
    goto LABEL_108;
  }

  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
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

  __break(1u);
}