uint64_t sub_39E34(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v3 = *(a2 + 16);
  if (!v3)
  {
    return 0;
  }

  v13 = a3(a1);
  v14._countAndFlagsBits = 0x28204E4920;
  v14._object = 0xE500000000000000;
  sub_75608(v14);
  sub_67C58(0, v3, 0);
  v4 = _swiftEmptyArrayStorage[2];
  v5 = 2 * v4;
  do
  {
    v6 = _swiftEmptyArrayStorage[3];
    v7 = v4 + 1;
    if (v4 >= v6 >> 1)
    {
      sub_67C58((v6 > 1), v4 + 1, 1);
    }

    _swiftEmptyArrayStorage[2] = v7;
    v8 = &_swiftEmptyArrayStorage[v5];
    v8[4] = 63;
    v8[5] = 0xE100000000000000;
    v5 += 2;
    v4 = v7;
    --v3;
  }

  while (v3);
  sub_38F8(&qword_8F280, &unk_7ABA0);
  sub_7718(&qword_8FBA0, &qword_8F280, &unk_7ABA0, &protocol conformance descriptor for [A]);
  v9 = sub_75538();
  v11 = v10;

  v15._countAndFlagsBits = v9;
  v15._object = v11;
  sub_75608(v15);

  v16._countAndFlagsBits = 41;
  v16._object = 0xE100000000000000;
  sub_75608(v16);
  return v13;
}

uint64_t sub_39FE8(sqlite3_stmt *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(sqlite3_stmt *, uint64_t, uint64_t), uint64_t (*a6)(uint64_t))
{
  v40 = a3;
  v41 = a5;
  v39 = a4;
  v47 = sub_74CA8();
  v9 = *(v47 - 8);
  __chkstk_darwin(v47);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_754B8();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_751D8();
  __chkstk_darwin(v16);
  v19 = v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a2 + 16);
  if (v20)
  {
    v21 = v19;
    v38[0] = a6;
    v38[1] = v15;
    v38[2] = v13;
    v38[3] = v12;
    v23 = *(v17 + 16);
    v22 = v17 + 16;
    v45 = v23;
    v46 = v11;
    v24 = a2 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
    v42 = *(v22 + 56);
    v43 = v22;
    v25 = (v9 + 8);
    v44 = (v22 - 8);
    v49 = 1;
    v26 = 0x3FFFFFFFLL;
    while (1)
    {
      v48 = v20;
      v45(v21, v24, v16);
      sub_751B8();
      v27 = sub_74C98();
      v28 = *v25;
      v29 = v47;
      (*v25)(v11, v47);
      result = sqlite3_bind_int64(a1, v49, v27);
      if (!v26)
      {
        break;
      }

      sub_75198();
      v31 = sub_74C98();
      v32 = v29;
      v33 = v31;
      v28(v11, v32);
      v34 = v49 + 1;
      sqlite3_bind_int64(a1, v49 + 1, v33);
      result = (*v44)(v21, v16);
      v35 = (v34 + 1);
      if (__OFADD__(v34, 1))
      {
        goto LABEL_10;
      }

      --v26;
      v24 += v42;
      v49 = v34 + 1;
      v20 = v48 - 1;
      if (v48 == 1)
      {
        a6 = v38[0];
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    v35 = 1;
LABEL_8:
    v36 = v41(a1, v40, v35);
    v37 = a6(v39);
    sub_6C4F0(a1, v36, v37);
  }

  return result;
}

uint64_t sub_3A468(sqlite3_stmt *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_74CA8();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v49 = v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_751D8();
  __chkstk_darwin(v11);
  v14 = v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 16);
  if (v15)
  {
    v42[1] = a3;
    v43 = a4;
    v50 = a1;
    v17 = *(v12 + 16);
    v16 = v12 + 16;
    v47 = v17;
    v48 = v8;
    v18 = a2 + ((*(v16 + 64) + 32) & ~*(v16 + 64));
    v44 = *(v16 + 56);
    v45 = v16;
    v19 = (v9 + 8);
    v46 = (v16 - 8);
    v52 = 1;
    v20 = 0x3FFFFFFFLL;
    v21 = v14;
    v22 = v8;
    while (1)
    {
      v51 = v15;
      v47(v21, v18, v11);
      v23 = v49;
      sub_751B8();
      v24 = sub_74C98();
      v25 = *v19;
      (*v19)(v23, v22);
      v26 = v50;
      result = sqlite3_bind_int64(v50, v52, v24);
      if (!v20)
      {
        break;
      }

      sub_75198();
      v28 = sub_74C98();
      v29 = v23;
      v30 = v28;
      v25(v29, v22);
      v31 = v52 + 1;
      sqlite3_bind_int64(v26, v52 + 1, v30);
      result = (*v46)(v21, v11);
      v32 = (v31 + 1);
      if (__OFADD__(v31, 1))
      {
        goto LABEL_10;
      }

      --v20;
      v18 += v44;
      v52 = v31 + 1;
      v15 = v51 - 1;
      if (v51 == 1)
      {
        a1 = v50;
        a4 = v43;
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    v32 = 1;
LABEL_8:
    v33 = sub_752A8();
    v34 = sub_4ADC(v33);

    v35 = sub_6C4F0(a1, v32, v34);

    v36 = sub_752C8();
    v37 = sub_4B18(v36);

    v38 = sub_6C4F0(a1, v35, v37);

    v39 = sub_752B8();
    v40 = sub_6C668(a1, v38, v39);

    v41 = sub_4F80(a4);
    sub_6C4F0(a1, v40, v41);
  }

  return result;
}

BOOL sub_3A7C4(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v81 = a7;
  v82 = a4;
  v78 = a6;
  v88 = a5;
  v89 = a1;
  v85 = a2;
  v8 = sub_750F8();
  __chkstk_darwin(v8 - 8);
  v10 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_754B8();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_751D8();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = __chkstk_darwin(v14);
  v77 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v69 - v17;
  v18 = sub_74CA8();
  v79 = *(v18 - 1);
  v19 = __chkstk_darwin(v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v69 - v22;
  v24 = sub_38F8(&qword_8F8F8, &qword_7A6E8);
  __chkstk_darwin(v24 - 8);
  v26 = &v69 - v25;
  v27 = sub_74AD8();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v76 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = (&v69 - v31);

  sub_567C0(a3, v26);
  v33 = (*(v28 + 48))(v26, 1, v27);
  if (v33 != 1)
  {
    v89 = v28;
    v36 = *(v28 + 32);
    v35 = v28 + 32;
    v34 = v36;
    (v36)(v32, v26, v27);
    v37 = *v82 + 1;
    if (__OFADD__(*v82, 1))
    {
      __break(1u);
    }

    else
    {
      v38 = v27;
      v83 = v34;
      v84 = v35;
      v74 = v10;
      LODWORD(v85) = v33;
      *v82 = v37;
      v39 = sub_43B30(&qword_8F900, &type metadata accessor for FitnessPlusPropertyRecord, &protocol conformance descriptor for FitnessPlusPropertyRecord);
      v82 = v32;
      v73 = v39;
      sub_750B8();
      v40 = v86;
      v41 = v87;
      v42 = v80;
      v72 = *(v86 + 16);
      v72(v80, v88, v87);
      sub_75198();
      v71 = *(v40 + 8);
      v71(v42, v41);
      sub_43B30(&qword_8F2A0, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
      v43 = sub_75548();
      v75 = v38;
      v44 = v79[1];
      v44(v21, v18);
      v44(v23, v18);
      if (v43)
      {
        v45 = v87;
        v76 = v21;
        v46 = v88;
        v70 = v23;
        v47 = v72;
        (v72)(v42);
        sub_751B8();
        v79 = v18;
        v48 = v71;
        v71(v42, v45);
        v49 = v77;
        v47(v77, v46, v45);
        v50 = v76;
        sub_75198();
        v48(v49, v45);
        v51 = v81;
        v52 = *v81;

        v53 = v70;
        sub_31278(v70, v50, v52, &unk_88198, &unk_881C0, sub_438AC, &unk_881D8);

        v54 = v79;
        v44(v50, v79);
        v44(v53, v54);
        v55 = v82;
        v56 = v75;
        sub_750C8();
        sub_750B8();
        sub_74A88();
        sub_43B30(&qword_8F8E0, &type metadata accessor for FitnessPlusProperties, &protocol conformance descriptor for FitnessPlusProperties);
        sub_74E88();
        sub_751A8();
        (*(v86 + 40))(v88, v42, v45);
        sub_38F8(&qword_8F908, &qword_7A6F0);
        v57 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_79BF0;
        (v83)(v58 + v57, v55, v56);
        *v51 = v58;

        v33 = v85;
        return v33 != 1;
      }

      v35 = v89;
      v27 = v75;
      v21 = v76;
      v10 = v82;
      (*(v89 + 16))(v76, v82, v75);
      v18 = v81;
      v23 = *v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v23;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }
    }

    v23 = sub_6777C(0, *(v23 + 2) + 1, 1, v23);
    *v18 = v23;
LABEL_10:
    v33 = v85;
    v66 = *(v23 + 2);
    v65 = *(v23 + 3);
    if (v66 >= v65 >> 1)
    {
      *v18 = sub_6777C((v65 > 1), v66 + 1, 1, v23);
    }

    (*(v35 + 8))(v10, v27);
    v67 = *v18;
    *(v67 + 16) = v66 + 1;
    (v83)(v67 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v66, v21, v27);
    return v33 != 1;
  }

  sub_3D48(v26, &qword_8F8F8, &qword_7A6E8);
  sub_75378();
  v59 = sub_754A8();
  v60 = sub_75738();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_0, v59, v60, "Failed to create row", v61, 2u);
  }

  v83[1](v13, v84);
  v62 = v85;
  if (v85)
  {
    sub_431DC();
    swift_allocError();
    *v63 = 2;
    *v62 = sub_74888();
  }

  return v33 != 1;
}

BOOL sub_3B0CC(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v81 = a7;
  v82 = a4;
  v78 = a6;
  v88 = a5;
  v89 = a1;
  v85 = a2;
  v8 = sub_750F8();
  __chkstk_darwin(v8 - 8);
  v10 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_754B8();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_751D8();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = __chkstk_darwin(v14);
  v77 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v69 - v17;
  v18 = sub_74CA8();
  v79 = *(v18 - 1);
  v19 = __chkstk_darwin(v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v69 - v22;
  v24 = sub_38F8(&qword_8F8B8, &qword_7A6C0);
  __chkstk_darwin(v24 - 8);
  v26 = &v69 - v25;
  v27 = sub_75048();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v76 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = (&v69 - v31);

  sub_6BCAC(a3, v26);
  v33 = (*(v28 + 48))(v26, 1, v27);
  if (v33 != 1)
  {
    v89 = v28;
    v36 = *(v28 + 32);
    v35 = v28 + 32;
    v34 = v36;
    (v36)(v32, v26, v27);
    v37 = *v82 + 1;
    if (__OFADD__(*v82, 1))
    {
      __break(1u);
    }

    else
    {
      v38 = v27;
      v83 = v34;
      v84 = v35;
      v74 = v10;
      LODWORD(v85) = v33;
      *v82 = v37;
      v39 = sub_43B30(&qword_8F8C0, &type metadata accessor for WorkoutPropertyRecord, &protocol conformance descriptor for WorkoutPropertyRecord);
      v82 = v32;
      v73 = v39;
      sub_750B8();
      v40 = v86;
      v41 = v87;
      v42 = v80;
      v72 = *(v86 + 16);
      v72(v80, v88, v87);
      sub_75198();
      v71 = *(v40 + 8);
      v71(v42, v41);
      sub_43B30(&qword_8F2A0, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
      v43 = sub_75548();
      v75 = v38;
      v44 = v79[1];
      v44(v21, v18);
      v44(v23, v18);
      if (v43)
      {
        v45 = v87;
        v76 = v21;
        v46 = v88;
        v70 = v23;
        v47 = v72;
        (v72)(v42);
        sub_751B8();
        v79 = v18;
        v48 = v71;
        v71(v42, v45);
        v49 = v77;
        v47(v77, v46, v45);
        v50 = v76;
        sub_75198();
        v48(v49, v45);
        v51 = v81;
        v52 = *v81;

        v53 = v70;
        sub_31278(v70, v50, v52, &unk_87FB8, &unk_87FE0, sub_434D0, &unk_87FF8);

        v54 = v79;
        v44(v50, v79);
        v44(v53, v54);
        v55 = v82;
        v56 = v75;
        sub_750C8();
        sub_750B8();
        sub_74E18();
        sub_43B30(&qword_8F878, &type metadata accessor for WorkoutProperties, &protocol conformance descriptor for WorkoutProperties);
        sub_74E88();
        sub_751A8();
        (*(v86 + 40))(v88, v42, v45);
        sub_38F8(&qword_8F8C8, &qword_7A6C8);
        v57 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_79BF0;
        (v83)(v58 + v57, v55, v56);
        *v51 = v58;

        v33 = v85;
        return v33 != 1;
      }

      v35 = v89;
      v27 = v75;
      v21 = v76;
      v10 = v82;
      (*(v89 + 16))(v76, v82, v75);
      v18 = v81;
      v23 = *v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v23;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }
    }

    v23 = sub_677CC(0, *(v23 + 2) + 1, 1, v23);
    *v18 = v23;
LABEL_10:
    v33 = v85;
    v66 = *(v23 + 2);
    v65 = *(v23 + 3);
    if (v66 >= v65 >> 1)
    {
      *v18 = sub_677CC((v65 > 1), v66 + 1, 1, v23);
    }

    (*(v35 + 8))(v10, v27);
    v67 = *v18;
    *(v67 + 16) = v66 + 1;
    (v83)(v67 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v66, v21, v27);
    return v33 != 1;
  }

  sub_3D48(v26, &qword_8F8B8, &qword_7A6C0);
  sub_75378();
  v59 = sub_754A8();
  v60 = sub_75738();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_0, v59, v60, "Failed to create row", v61, 2u);
  }

  v83[1](v13, v84);
  v62 = v85;
  if (v85)
  {
    sub_431DC();
    swift_allocError();
    *v63 = 2;
    *v62 = sub_74888();
  }

  return v33 != 1;
}

BOOL sub_3B9D4(uint64_t a1, void *a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v81 = a7;
  v82 = a4;
  v78 = a6;
  v88 = a5;
  v89 = a1;
  v85 = a2;
  v8 = sub_750F8();
  __chkstk_darwin(v8 - 8);
  v10 = (&v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_754B8();
  v83 = *(v11 - 8);
  v84 = v11;
  __chkstk_darwin(v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_751D8();
  v86 = *(v14 - 8);
  v87 = v14;
  v15 = __chkstk_darwin(v14);
  v77 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v80 = &v69 - v17;
  v18 = sub_74CA8();
  v79 = *(v18 - 1);
  v19 = __chkstk_darwin(v18);
  v21 = &v69 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v69 - v22;
  v24 = sub_38F8(&qword_8F860, &qword_7A680);
  __chkstk_darwin(v24 - 8);
  v26 = &v69 - v25;
  v27 = sub_74EE8();
  v28 = *(v27 - 8);
  v29 = __chkstk_darwin(v27);
  v76 = &v69 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v32 = (&v69 - v31);

  sub_13B34(a3, v26);
  v33 = (*(v28 + 48))(v26, 1, v27);
  if (v33 != 1)
  {
    v89 = v28;
    v36 = *(v28 + 32);
    v35 = v28 + 32;
    v34 = v36;
    (v36)(v32, v26, v27);
    v37 = *v82 + 1;
    if (__OFADD__(*v82, 1))
    {
      __break(1u);
    }

    else
    {
      v38 = v27;
      v83 = v34;
      v84 = v35;
      v74 = v10;
      LODWORD(v85) = v33;
      *v82 = v37;
      v39 = sub_43B30(&qword_8F2A8, &type metadata accessor for RingsPropertyRecord, &protocol conformance descriptor for RingsPropertyRecord);
      v82 = v32;
      v73 = v39;
      sub_750B8();
      v40 = v86;
      v41 = v87;
      v42 = v80;
      v72 = *(v86 + 16);
      v72(v80, v88, v87);
      sub_75198();
      v71 = *(v40 + 8);
      v71(v42, v41);
      sub_43B30(&qword_8F2A0, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
      v43 = sub_75548();
      v75 = v38;
      v44 = v79[1];
      v44(v21, v18);
      v44(v23, v18);
      if (v43)
      {
        v45 = v87;
        v76 = v21;
        v46 = v88;
        v70 = v23;
        v47 = v72;
        (v72)(v42);
        sub_751B8();
        v79 = v18;
        v48 = v71;
        v71(v42, v45);
        v49 = v77;
        v47(v77, v46, v45);
        v50 = v76;
        sub_75198();
        v48(v49, v45);
        v51 = v81;
        v52 = *v81;

        v53 = v70;
        sub_31278(v70, v50, v52, &unk_87DD8, &unk_87E00, sub_432C0, &unk_87E18);

        v54 = v79;
        v44(v50, v79);
        v44(v53, v54);
        v55 = v82;
        v56 = v75;
        sub_750C8();
        sub_750B8();
        sub_74D98();
        sub_43B30(&qword_8F5E0, &type metadata accessor for RingsProperties, &protocol conformance descriptor for RingsProperties);
        sub_74E88();
        sub_751A8();
        (*(v86 + 40))(v88, v42, v45);
        sub_38F8(&qword_8F868, &qword_7A688);
        v57 = (*(v89 + 80) + 32) & ~*(v89 + 80);
        v58 = swift_allocObject();
        *(v58 + 16) = xmmword_79BF0;
        (v83)(v58 + v57, v55, v56);
        *v51 = v58;

        v33 = v85;
        return v33 != 1;
      }

      v35 = v89;
      v27 = v75;
      v21 = v76;
      v10 = v82;
      (*(v89 + 16))(v76, v82, v75);
      v18 = v81;
      v23 = *v81;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v18 = v23;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_10;
      }
    }

    v23 = sub_6781C(0, *(v23 + 2) + 1, 1, v23);
    *v18 = v23;
LABEL_10:
    v33 = v85;
    v66 = *(v23 + 2);
    v65 = *(v23 + 3);
    if (v66 >= v65 >> 1)
    {
      *v18 = sub_6781C((v65 > 1), v66 + 1, 1, v23);
    }

    (*(v35 + 8))(v10, v27);
    v67 = *v18;
    *(v67 + 16) = v66 + 1;
    (v83)(v67 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v66, v21, v27);
    return v33 != 1;
  }

  sub_3D48(v26, &qword_8F860, &qword_7A680);
  sub_75378();
  v59 = sub_754A8();
  v60 = sub_75738();
  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    *v61 = 0;
    _os_log_impl(&dword_0, v59, v60, "Failed to create row", v61, 2u);
  }

  v83[1](v13, v84);
  v62 = v85;
  if (v85)
  {
    sub_431DC();
    swift_allocError();
    *v63 = 2;
    *v62 = sub_74888();
  }

  return v33 != 1;
}

uint64_t *sub_3C2DC(void *a1, void *a2)
{
  v118 = a1;
  v119 = a2;
  v137 = type metadata accessor for DatabaseChecksum(0);
  v105 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_750F8();
  __chkstk_darwin(v3 - 8);
  v130 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_751D8();
  v131 = *(v129 - 8);
  __chkstk_darwin(v129);
  v103 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_38F8(&qword_8F7C8, &qword_7A618);
  __chkstk_darwin(v6 - 8);
  v8 = &v102 - v7;
  v116 = sub_74E58();
  v108 = *(v116 - 8);
  v9 = __chkstk_darwin(v116);
  v112 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v102 - v11;
  v128 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v114 = *(v128 - 8);
  v12 = __chkstk_darwin(v128);
  v127 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = (&v102 - v14);
  v133 = sub_74E18();
  v111 = *(v133 - 8);
  __chkstk_darwin(v133);
  v110 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_38F8(&qword_8F7D0, &qword_7AD50);
  v138 = *(v135 - 8);
  v16 = __chkstk_darwin(v135);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v117 = &v102 - v19;
  v106 = sub_75358();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v109 = (&v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_74968();
  v121 = *(v21 - 8);
  v122 = v21;
  __chkstk_darwin(v21);
  v23 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_74CA8();
  v124 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v126 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v125 = &v102 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v102 - v30;
  __chkstk_darwin(v29);
  v132 = &v102 - v32;
  v120 = sub_754B8();
  v33 = *(v120 - 1);
  __chkstk_darwin(v120);
  v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75388();
  v36 = sub_754A8();
  v37 = sub_75738();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v134 = v24;
    v39 = v38;
    v40 = swift_slowAlloc();
    v113 = v8;
    v41 = v40;
    v139 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_31B4(0xD00000000000001BLL, 0x80000000000778B0, &v139);
    _os_log_impl(&dword_0, v36, v37, "[%s] Querying checksums", v39, 0xCu);
    sub_3940(v41);
    v8 = v113;

    v24 = v134;
  }

  (*(v33 + 8))(v35, v120);
  sub_74958();
  sub_74908();
  (*(v121 + 8))(v23, v122);
  v42 = v132;
  v43 = v123;
  sub_74C68();
  v44 = v43;
  if (v43)
  {
    v45 = (v124 + 8);
    (*(v124 + 8))(v31, v24);
    return v45;
  }

  v46 = v124 + 8;
  v47 = *(v124 + 8);
  v47(v31, v24);
  v48 = sub_1AD00(v42, v118, v119);
  v120 = v47;
  v121 = v46;
  v49 = v48[2];
  v113 = v8;
  v134 = v24;
  if (v49)
  {
    v123 = 0;
    v139 = _swiftEmptyArrayStorage;
    v50 = v48;
    sub_67E84(0, v49, 0);
    v51 = v139;
    v52 = *(v105 + 80);
    v122 = v50;
    v53 = v50 + ((v52 + 32) & ~v52);
    v54 = v105[9];
    do
    {
      v55 = v136;
      sub_430D8(v53, v136);
      v56 = *(v135 + 48);
      sub_FCE0(v55, v18, &qword_8F000, &qword_7A5D0);
      v57 = *(v55 + *(v137 + 20));
      sub_4313C(v55);
      *&v18[v56] = v57;
      v139 = v51;
      v59 = v51[2];
      v58 = v51[3];
      if (v59 >= v58 >> 1)
      {
        sub_67E84((v58 > 1), v59 + 1, 1);
        v51 = v139;
      }

      v51[2] = v59 + 1;
      sub_1B748(v18, v51 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + v138[9] * v59, &qword_8F7D0, &qword_7AD50);
      v53 += v54;
      --v49;
    }

    while (v49);

    v8 = v113;
    v24 = v134;
    v44 = v123;
  }

  else
  {

    v51 = _swiftEmptyArrayStorage;
  }

  v60 = v115;
  if (v51[2])
  {
    sub_38F8(&qword_8F7D8, &qword_7A620);
    v61 = sub_75A08();
  }

  else
  {
    v61 = &_swiftEmptyDictionarySingleton;
  }

  v62 = v109;
  v139 = v61;

  sub_40C40(v63, 1, &v139);
  if (v44)
  {
    while (1)
    {
LABEL_56:
      swift_unexpectedError();
      __break(1u);
    }
  }

  v64 = v139;
  v65 = sub_74C48();
  v122 = v64;
  v123 = 0;
  v67 = *(v65 + 16);
  v68 = _swiftEmptyArrayStorage;
  v105 = v65;
  if (v67)
  {
    v139 = _swiftEmptyArrayStorage;
    v69 = v65;
    sub_67E40(0, v67, 0);
    v68 = v139;
    v70 = v69 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v71 = *(v114 + 72);
    v135 = v124 + 16;
    v136 = v71;
    v124 = v131 + 32;
    v72 = v103;
    v73 = v135;
    do
    {
      v137 = v68;
      v74 = v127;
      sub_FCE0(v70, v127, &qword_8F000, &qword_7A5D0);
      v75 = *v73;
      v76 = v134;
      (*v73)(v125, v74, v134);
      v75(v126, v74 + *(v128 + 36), v76);
      sub_43B30(&qword_8F878, &type metadata accessor for WorkoutProperties, &protocol conformance descriptor for WorkoutProperties);
      sub_74E88();
      v68 = v137;
      sub_751A8();
      sub_3D48(v74, &qword_8F000, &qword_7A5D0);
      v139 = v68;
      v78 = v68[2];
      v77 = v68[3];
      if (v78 >= v77 >> 1)
      {
        sub_67E40((v77 > 1), v78 + 1, 1);
        v72 = v103;
        v68 = v139;
      }

      v68[2] = v78 + 1;
      (*(v131 + 32))(v68 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v78, v72, v129);
      v70 += v136;
      --v67;
    }

    while (v67);
    v8 = v113;
    v60 = v115;
    v24 = v134;
    v62 = v109;
  }

  sub_43B30(&qword_8F880, &type metadata accessor for WorkoutPropertyDimensionsFilters, &protocol conformance descriptor for WorkoutPropertyDimensionsFilters);
  sub_751E8();
  sub_38F8(&qword_8F888, &qword_7A698);
  v79 = sub_74F28();
  v80 = *(v79 - 1);
  v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v45 = swift_allocObject();
  *(v45 + 1) = xmmword_79BF0;
  if (qword_8E9F0 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v82 = sub_19C20(v79, qword_90010);
    (v80[2])(v45 + v81, v82, v79);
    v83 = v123;
    v84 = sub_3444C(v68, v62, v45, _swiftEmptyArrayStorage, 0, v118, v119);
    v81 = v62;
    v80 = v83;
    if (v83)
    {

      (*(v104 + 8))(v62, v106);
      v120(v132, v24);
      return v45;
    }

    v85 = v84;
    (*(v104 + 8))(v81, v106);

    v86 = *(v85 + 2);
    if (v86)
    {
      v139 = _swiftEmptyArrayStorage;
      v136 = v86;
      sub_67E84(0, v86, 0);
      v8 = 0;
      v87 = *(v111 + 80);
      v45 = v139;
      v137 = v85;
      v68 = (v85 + ((v87 + 32) & ~v87));
      v62 = (v111 + 16);
      v60 = (v111 + 8);
      v79 = 0;
      while (v8 < *(v137 + 16))
      {
        v88 = v110;
        v89 = v133;
        (*(v111 + 16))(v110, v68 + *(v111 + 72) * v8, v133);
        sub_3F3B0(v88, v117);
        v90 = v88;
        v80 = v24;
        (*v60)(v90, v89);
        v139 = v45;
        v92 = v45[2];
        v91 = v45[3];
        if (v92 >= v91 >> 1)
        {
          sub_67E84((v91 > 1), v92 + 1, 1);
          v79 = 0;
          v45 = v139;
        }

        ++v8;
        v45[2] = v92 + 1;
        sub_1B748(v117, v45 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + v138[9] * v92, &qword_8F7D0, &qword_7AD50);
        v81 = v116;
        if (v136 == v8)
        {

          v8 = v113;
          v60 = v115;
          goto LABEL_35;
        }
      }

      goto LABEL_53;
    }

    v45 = _swiftEmptyArrayStorage;
    v81 = v116;
LABEL_35:
    if (v45[2])
    {
      sub_38F8(&qword_8F7D8, &qword_7A620);
      v93 = sub_75A08();
    }

    else
    {
      v93 = &_swiftEmptyDictionarySingleton;
    }

    v139 = v93;

    sub_40C40(v94, 1, &v139);

    v138 = v139;
    v139 = v105;

    sub_41184(&v139);
    v123 = 0;

    v95 = v139;
    v137 = v139[2];
    if (!v137)
    {
      break;
    }

    v24 = 0;
    v135 = v108 + 32;
    v136 = v108 + 48;
    v45 = _swiftEmptyArrayStorage;
    v80 = &qword_8F000;
    v79 = &qword_7A5D0;
    v62 = &qword_8F878;
    while (v24 < v95[2])
    {
      v68 = v95;
      sub_FCE0(v95 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v24, v60, &qword_8F000, &qword_7A5D0);
      v96 = v123;
      sub_3FBE4(v60, v122, v138, &type metadata accessor for WorkoutProperties, &qword_8F878, &type metadata accessor for WorkoutProperties, &protocol conformance descriptor for WorkoutProperties, v8);
      v123 = v96;
      if (v96)
      {

        sub_3D48(v60, &qword_8F000, &qword_7A5D0);

        __break(1u);
        goto LABEL_56;
      }

      sub_3D48(v60, &qword_8F000, &qword_7A5D0);
      if ((*v136)(v8, 1, v81) == 1)
      {
        sub_3D48(v8, &qword_8F7C8, &qword_7A618);
      }

      else
      {
        v97 = *v135;
        v98 = v107;
        (*v135)(v107, v8, v81);
        v97(v112, v98, v81);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_6761C(0, v45[2] + 1, 1, v45);
        }

        v100 = v45[2];
        v99 = v45[3];
        if (v100 >= v99 >> 1)
        {
          v45 = sub_6761C((v99 > 1), v100 + 1, 1, v45);
        }

        v45[2] = v100 + 1;
        v101 = v45 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v100;
        v81 = v116;
        v97(v101, v112, v116);
        v60 = v115;
        v62 = &qword_8F878;
      }

      ++v24;
      v95 = v68;
      v80 = &qword_8F000;
      if (v137 == v24)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_51:

  v120(v132, v134);
  return v45;
}

uint64_t *sub_3D72C(void *a1, void *a2)
{
  v118 = a1;
  v119 = a2;
  v137 = type metadata accessor for DatabaseChecksum(0);
  v105 = *(v137 - 8);
  __chkstk_darwin(v137);
  v136 = &v102 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_750F8();
  __chkstk_darwin(v3 - 8);
  v130 = &v102 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_751D8();
  v131 = *(v129 - 8);
  __chkstk_darwin(v129);
  v103 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_38F8(&qword_8F7C8, &qword_7A618);
  __chkstk_darwin(v6 - 8);
  v8 = &v102 - v7;
  v116 = sub_74E58();
  v108 = *(v116 - 8);
  v9 = __chkstk_darwin(v116);
  v112 = &v102 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v107 = &v102 - v11;
  v128 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v114 = *(v128 - 8);
  v12 = __chkstk_darwin(v128);
  v127 = &v102 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v115 = (&v102 - v14);
  v133 = sub_74D98();
  v111 = *(v133 - 8);
  __chkstk_darwin(v133);
  v110 = &v102 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = sub_38F8(&qword_8F7D0, &qword_7AD50);
  v138 = *(v135 - 8);
  v16 = __chkstk_darwin(v135);
  v18 = &v102 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v117 = &v102 - v19;
  v106 = sub_752D8();
  v104 = *(v106 - 8);
  __chkstk_darwin(v106);
  v109 = (&v102 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_74968();
  v121 = *(v21 - 8);
  v122 = v21;
  __chkstk_darwin(v21);
  v23 = &v102 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_74CA8();
  v124 = *(v24 - 8);
  v25 = __chkstk_darwin(v24);
  v126 = &v102 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v125 = &v102 - v28;
  v29 = __chkstk_darwin(v27);
  v31 = &v102 - v30;
  __chkstk_darwin(v29);
  v132 = &v102 - v32;
  v120 = sub_754B8();
  v33 = *(v120 - 1);
  __chkstk_darwin(v120);
  v35 = &v102 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_75388();
  v36 = sub_754A8();
  v37 = sub_75738();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v134 = v24;
    v39 = v38;
    v40 = swift_slowAlloc();
    v113 = v8;
    v41 = v40;
    v139 = v40;
    *v39 = 136315138;
    *(v39 + 4) = sub_31B4(0xD000000000000019, 0x8000000000077890, &v139);
    _os_log_impl(&dword_0, v36, v37, "[%s] Querying checksums", v39, 0xCu);
    sub_3940(v41);
    v8 = v113;

    v24 = v134;
  }

  (*(v33 + 8))(v35, v120);
  sub_74958();
  sub_74908();
  (*(v121 + 8))(v23, v122);
  v42 = v132;
  v43 = v123;
  sub_74C68();
  v44 = v43;
  if (v43)
  {
    v45 = (v124 + 8);
    (*(v124 + 8))(v31, v24);
    return v45;
  }

  v46 = v124 + 8;
  v47 = *(v124 + 8);
  v47(v31, v24);
  v48 = sub_6D6E0(v42, v118, v119);
  v120 = v47;
  v121 = v46;
  v49 = v48[2];
  v113 = v8;
  v134 = v24;
  if (v49)
  {
    v123 = 0;
    v139 = _swiftEmptyArrayStorage;
    v50 = v48;
    sub_67E84(0, v49, 0);
    v51 = v139;
    v52 = *(v105 + 80);
    v122 = v50;
    v53 = v50 + ((v52 + 32) & ~v52);
    v54 = v105[9];
    do
    {
      v55 = v136;
      sub_430D8(v53, v136);
      v56 = *(v135 + 48);
      sub_FCE0(v55, v18, &qword_8F000, &qword_7A5D0);
      v57 = *(v55 + *(v137 + 20));
      sub_4313C(v55);
      *&v18[v56] = v57;
      v139 = v51;
      v59 = v51[2];
      v58 = v51[3];
      if (v59 >= v58 >> 1)
      {
        sub_67E84((v58 > 1), v59 + 1, 1);
        v51 = v139;
      }

      v51[2] = v59 + 1;
      sub_1B748(v18, v51 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + v138[9] * v59, &qword_8F7D0, &qword_7AD50);
      v53 += v54;
      --v49;
    }

    while (v49);

    v8 = v113;
    v24 = v134;
    v44 = v123;
  }

  else
  {

    v51 = _swiftEmptyArrayStorage;
  }

  v60 = v115;
  if (v51[2])
  {
    sub_38F8(&qword_8F7D8, &qword_7A620);
    v61 = sub_75A08();
  }

  else
  {
    v61 = &_swiftEmptyDictionarySingleton;
  }

  v62 = v109;
  v139 = v61;

  sub_40C40(v63, 1, &v139);
  if (v44)
  {
    while (1)
    {
LABEL_56:
      swift_unexpectedError();
      __break(1u);
    }
  }

  v64 = v139;
  v65 = sub_74C48();
  v122 = v64;
  v123 = 0;
  v67 = *(v65 + 16);
  v68 = _swiftEmptyArrayStorage;
  v105 = v65;
  if (v67)
  {
    v139 = _swiftEmptyArrayStorage;
    v69 = v65;
    sub_67E40(0, v67, 0);
    v68 = v139;
    v70 = v69 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v71 = *(v114 + 72);
    v135 = v124 + 16;
    v136 = v71;
    v124 = v131 + 32;
    v72 = v103;
    v73 = v135;
    do
    {
      v137 = v68;
      v74 = v127;
      sub_FCE0(v70, v127, &qword_8F000, &qword_7A5D0);
      v75 = *v73;
      v76 = v134;
      (*v73)(v125, v74, v134);
      v75(v126, v74 + *(v128 + 36), v76);
      sub_43B30(&qword_8F5E0, &type metadata accessor for RingsProperties, &protocol conformance descriptor for RingsProperties);
      sub_74E88();
      v68 = v137;
      sub_751A8();
      sub_3D48(v74, &qword_8F000, &qword_7A5D0);
      v139 = v68;
      v78 = v68[2];
      v77 = v68[3];
      if (v78 >= v77 >> 1)
      {
        sub_67E40((v77 > 1), v78 + 1, 1);
        v72 = v103;
        v68 = v139;
      }

      v68[2] = v78 + 1;
      (*(v131 + 32))(v68 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v78, v72, v129);
      v70 += v136;
      --v67;
    }

    while (v67);
    v8 = v113;
    v60 = v115;
    v24 = v134;
    v62 = v109;
  }

  sub_43B30(&qword_8F7E0, &type metadata accessor for RingsPropertyDimensionsFilters, &protocol conformance descriptor for RingsPropertyDimensionsFilters);
  sub_751E8();
  sub_38F8(&qword_8F7E8, &qword_7A628);
  v79 = sub_74DD8();
  v80 = *(v79 - 1);
  v81 = (*(v80 + 80) + 32) & ~*(v80 + 80);
  v45 = swift_allocObject();
  *(v45 + 1) = xmmword_79BF0;
  if (qword_8EA10 != -1)
  {
    goto LABEL_54;
  }

  while (1)
  {
    v82 = sub_19C20(v79, qword_90060);
    (v80[2])(v45 + v81, v82, v79);
    v83 = v123;
    v84 = sub_32FE4(v68, v62, v45, _swiftEmptyArrayStorage, 0, v118, v119);
    v81 = v62;
    v80 = v83;
    if (v83)
    {

      (*(v104 + 8))(v62, v106);
      v120(v132, v24);
      return v45;
    }

    v85 = v84;
    (*(v104 + 8))(v81, v106);

    v86 = *(v85 + 2);
    if (v86)
    {
      v139 = _swiftEmptyArrayStorage;
      v136 = v86;
      sub_67E84(0, v86, 0);
      v8 = 0;
      v87 = *(v111 + 80);
      v45 = v139;
      v137 = v85;
      v68 = (v85 + ((v87 + 32) & ~v87));
      v62 = (v111 + 16);
      v60 = (v111 + 8);
      v79 = 0;
      while (v8 < *(v137 + 16))
      {
        v88 = v110;
        v89 = v133;
        (*(v111 + 16))(v110, v68 + *(v111 + 72) * v8, v133);
        sub_3EB7C(v88, v117);
        v90 = v88;
        v80 = v24;
        (*v60)(v90, v89);
        v139 = v45;
        v92 = v45[2];
        v91 = v45[3];
        if (v92 >= v91 >> 1)
        {
          sub_67E84((v91 > 1), v92 + 1, 1);
          v79 = 0;
          v45 = v139;
        }

        ++v8;
        v45[2] = v92 + 1;
        sub_1B748(v117, v45 + ((*(v138 + 80) + 32) & ~*(v138 + 80)) + v138[9] * v92, &qword_8F7D0, &qword_7AD50);
        v81 = v116;
        if (v136 == v8)
        {

          v8 = v113;
          v60 = v115;
          goto LABEL_35;
        }
      }

      goto LABEL_53;
    }

    v45 = _swiftEmptyArrayStorage;
    v81 = v116;
LABEL_35:
    if (v45[2])
    {
      sub_38F8(&qword_8F7D8, &qword_7A620);
      v93 = sub_75A08();
    }

    else
    {
      v93 = &_swiftEmptyDictionarySingleton;
    }

    v139 = v93;

    sub_40C40(v94, 1, &v139);

    v138 = v139;
    v139 = v105;

    sub_41184(&v139);
    v123 = 0;

    v95 = v139;
    v137 = v139[2];
    if (!v137)
    {
      break;
    }

    v24 = 0;
    v135 = v108 + 32;
    v136 = v108 + 48;
    v45 = _swiftEmptyArrayStorage;
    v80 = &qword_8F000;
    v79 = &qword_7A5D0;
    v62 = &qword_8F5E0;
    while (v24 < v95[2])
    {
      v68 = v95;
      sub_FCE0(v95 + ((*(v114 + 80) + 32) & ~*(v114 + 80)) + *(v114 + 72) * v24, v60, &qword_8F000, &qword_7A5D0);
      v96 = v123;
      sub_3FBE4(v60, v122, v138, &type metadata accessor for RingsProperties, &qword_8F5E0, &type metadata accessor for RingsProperties, &protocol conformance descriptor for RingsProperties, v8);
      v123 = v96;
      if (v96)
      {

        sub_3D48(v60, &qword_8F000, &qword_7A5D0);

        __break(1u);
        goto LABEL_56;
      }

      sub_3D48(v60, &qword_8F000, &qword_7A5D0);
      if ((*v136)(v8, 1, v81) == 1)
      {
        sub_3D48(v8, &qword_8F7C8, &qword_7A618);
      }

      else
      {
        v97 = *v135;
        v98 = v107;
        (*v135)(v107, v8, v81);
        v97(v112, v98, v81);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v45 = sub_6761C(0, v45[2] + 1, 1, v45);
        }

        v100 = v45[2];
        v99 = v45[3];
        if (v100 >= v99 >> 1)
        {
          v45 = sub_6761C((v99 > 1), v100 + 1, 1, v45);
        }

        v45[2] = v100 + 1;
        v101 = v45 + ((*(v108 + 80) + 32) & ~*(v108 + 80)) + *(v108 + 72) * v100;
        v81 = v116;
        v97(v101, v112, v116);
        v60 = v115;
        v62 = &qword_8F5E0;
      }

      ++v24;
      v95 = v68;
      v80 = &qword_8F000;
      if (v137 == v24)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
  }

  v45 = _swiftEmptyArrayStorage;
LABEL_51:

  v120(v132, v134);
  return v45;
}

uint64_t sub_3EB7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_38F8(&qword_8F808, &qword_7A638);
  __chkstk_darwin(v3 - 8);
  v55 = &v44 - v4;
  v5 = sub_38F8(&qword_8F810, &qword_7A640);
  __chkstk_darwin(v5 - 8);
  v45 = &v44 - v6;
  v7 = sub_74E38();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v44 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_38F8(&qword_8F288, &qword_7A128);
  v9 = __chkstk_darwin(v54);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = sub_74CA8();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v44 - v19;
  v49 = sub_38F8(&qword_8F000, &qword_7A5D0);
  __chkstk_darwin(v49);
  v51 = &v44 - v21;
  v22 = sub_74D98();
  v23 = sub_43B30(&qword_8F5E0, &type metadata accessor for RingsProperties, &protocol conformance descriptor for RingsProperties);
  sub_74E78();
  v56 = a1;
  v52 = v23;
  v53 = v22;
  sub_74E68();
  sub_43B30(&qword_8F2A0, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
  v50 = v18;
  if (sub_75568())
  {
    v24 = *(v15 + 32);
    v24(v13, v20, v14);
    v25 = v54;
    v24(&v13[*(v54 + 48)], v50, v14);
    sub_FCE0(v13, v11, &qword_8F288, &qword_7A128);
    v50 = *(v25 + 48);
    v20 = v51;
    v24(v51, v11, v14);
    v26 = *(v15 + 8);
    v26(&v50[v11], v14);
    sub_1B748(v13, v11, &qword_8F288, &qword_7A128);
    v24(&v20[*(v49 + 36)], (v11 + *(v25 + 48)), v14);
    v26(v11, v14);
    if (qword_8EA10 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v27 = sub_74DD8();
  sub_19C20(v27, qword_90060);
  v28 = sub_752D8();
  v29 = v55;
  (*(*(v28 - 8) + 56))(v55, 1, 1, v28);
  v30 = v62;
  sub_74EA8();
  sub_3D48(v29, &qword_8F808, &qword_7A638);
  if (v30)
  {
    return sub_3D48(v20, &qword_8F000, &qword_7A5D0);
  }

  if (!v58)
  {
    sub_3D48(v57, &qword_8F818, &qword_7A648);
    v59 = 0u;
    v60 = 0u;
    AssociatedConformanceWitness = 0;
    goto LABEL_10;
  }

  sub_43198(v57, v58);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(&v60 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_5914(&v59);
  sub_74DC8();
  sub_3940(v57);
  if (!*(&v60 + 1))
  {
LABEL_10:
    sub_3D48(&v59, &qword_8F820, &qword_7A650);
    v32 = v45;
    (*(v46 + 56))(v45, 1, 1, v47);
    goto LABEL_11;
  }

  sub_38F8(&qword_8F828, &qword_7A658);
  v32 = v45;
  v33 = v47;
  v34 = swift_dynamicCast();
  v35 = v46;
  (*(v46 + 56))(v32, v34 ^ 1u, 1, v33);
  if ((*(v35 + 48))(v32, 1, v33) != 1)
  {
    v36 = v44;
    (*(v35 + 32))(v44, v32, v33);
    v37 = *(sub_38F8(&qword_8F7D0, &qword_7AD50) + 48);
    v38 = v20;
    v39 = v35;
    v40 = v48;
    sub_FCE0(v38, v48, &qword_8F000, &qword_7A5D0);
    v41 = sub_74E28();
    (*(v39 + 8))(v36, v33);
    result = sub_3D48(v38, &qword_8F000, &qword_7A5D0);
    *(v40 + v37) = v41;
    return result;
  }

LABEL_11:
  sub_3D48(v32, &qword_8F810, &qword_7A640);
  v42 = *(sub_38F8(&qword_8F7D0, &qword_7AD50) + 48);
  v43 = v48;
  result = sub_1B748(v20, v48, &qword_8F000, &qword_7A5D0);
  *(v43 + v42) = 0;
  return result;
}

uint64_t sub_3F3B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v48 = a2;
  v3 = sub_38F8(&qword_8F890, &qword_7A6A0);
  __chkstk_darwin(v3 - 8);
  v55 = &v44 - v4;
  v5 = sub_38F8(&qword_8F810, &qword_7A640);
  __chkstk_darwin(v5 - 8);
  v45 = &v44 - v6;
  v7 = sub_74E38();
  v46 = *(v7 - 8);
  v47 = v7;
  __chkstk_darwin(v7);
  v44 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_38F8(&qword_8F288, &qword_7A128);
  v9 = __chkstk_darwin(v54);
  v11 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v44 - v12;
  v14 = sub_74CA8();
  v15 = *(v14 - 8);
  v16 = __chkstk_darwin(v14);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v44 - v19;
  v49 = sub_38F8(&qword_8F000, &qword_7A5D0);
  __chkstk_darwin(v49);
  v51 = &v44 - v21;
  v22 = sub_74E18();
  v23 = sub_43B30(&qword_8F878, &type metadata accessor for WorkoutProperties, &protocol conformance descriptor for WorkoutProperties);
  sub_74E78();
  v56 = a1;
  v52 = v23;
  v53 = v22;
  sub_74E68();
  sub_43B30(&qword_8F2A0, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
  v50 = v18;
  if (sub_75568())
  {
    v24 = *(v15 + 32);
    v24(v13, v20, v14);
    v25 = v54;
    v24(&v13[*(v54 + 48)], v50, v14);
    sub_FCE0(v13, v11, &qword_8F288, &qword_7A128);
    v50 = *(v25 + 48);
    v20 = v51;
    v24(v51, v11, v14);
    v26 = *(v15 + 8);
    v26(&v50[v11], v14);
    sub_1B748(v13, v11, &qword_8F288, &qword_7A128);
    v24(&v20[*(v49 + 36)], (v11 + *(v25 + 48)), v14);
    v26(v11, v14);
    if (qword_8E9F0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v27 = sub_74F28();
  sub_19C20(v27, qword_90010);
  v28 = sub_75358();
  v29 = v55;
  (*(*(v28 - 8) + 56))(v55, 1, 1, v28);
  v30 = v62;
  sub_74EA8();
  sub_3D48(v29, &qword_8F890, &qword_7A6A0);
  if (v30)
  {
    return sub_3D48(v20, &qword_8F000, &qword_7A5D0);
  }

  if (!v58)
  {
    sub_3D48(v57, &qword_8F818, &qword_7A648);
    v59 = 0u;
    v60 = 0u;
    AssociatedConformanceWitness = 0;
    goto LABEL_10;
  }

  sub_43198(v57, v58);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  *(&v60 + 1) = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_5914(&v59);
  sub_74DC8();
  sub_3940(v57);
  if (!*(&v60 + 1))
  {
LABEL_10:
    sub_3D48(&v59, &qword_8F820, &qword_7A650);
    v32 = v45;
    (*(v46 + 56))(v45, 1, 1, v47);
    goto LABEL_11;
  }

  sub_38F8(&qword_8F828, &qword_7A658);
  v32 = v45;
  v33 = v47;
  v34 = swift_dynamicCast();
  v35 = v46;
  (*(v46 + 56))(v32, v34 ^ 1u, 1, v33);
  if ((*(v35 + 48))(v32, 1, v33) != 1)
  {
    v36 = v44;
    (*(v35 + 32))(v44, v32, v33);
    v37 = *(sub_38F8(&qword_8F7D0, &qword_7AD50) + 48);
    v38 = v20;
    v39 = v35;
    v40 = v48;
    sub_FCE0(v38, v48, &qword_8F000, &qword_7A5D0);
    v41 = sub_74E28();
    (*(v39 + 8))(v36, v33);
    result = sub_3D48(v38, &qword_8F000, &qword_7A5D0);
    *(v40 + v37) = v41;
    return result;
  }

LABEL_11:
  sub_3D48(v32, &qword_8F810, &qword_7A640);
  v42 = *(sub_38F8(&qword_8F7D0, &qword_7AD50) + 48);
  v43 = v48;
  result = sub_1B748(v20, v48, &qword_8F000, &qword_7A5D0);
  *(v43 + v42) = 0;
  return result;
}

uint64_t sub_3FBE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void)@<X3>, unint64_t *a5@<X4>, uint64_t (*a6)(uint64_t)@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v58 = a6;
  v59 = a4;
  v61 = a5;
  v62 = a8;
  v12 = sub_750F8();
  __chkstk_darwin(v12 - 8);
  v60 = &v49[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v15 = __chkstk_darwin(v14);
  v57 = &v49[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v15);
  v18 = &v49[-v17];
  v19 = sub_754B8();
  v55 = *(v19 - 8);
  v56 = v19;
  __chkstk_darwin(v19);
  v21 = &v49[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = *(a2 + 16);
  v63 = a1;
  if (v22 && (v23 = sub_42788(a1), (v24 & 1) != 0))
  {
    v25 = 0;
    v26 = *(*(a2 + 56) + 8 * v23);
  }

  else
  {
    v26 = 0;
    v25 = 1;
  }

  v27 = v63;
  if (!*(a3 + 16) || (v28 = v25, v29 = sub_42788(v63), v25 = v28, v27 = v63, (v30 & 1) == 0))
  {
    if (!v25)
    {
      LOBYTE(v28) = 0;
      v54 = 0;
      v53 = 1;
      goto LABEL_15;
    }

LABEL_13:
    v32 = sub_74E58();
    return (*(*(v32 - 8) + 56))(v62, 1, 1, v32);
  }

  v54 = *(*(a3 + 56) + 8 * v29);
  if (v54 == v26)
  {
    v31 = v28;
  }

  else
  {
    v31 = 1;
  }

  if ((v31 & 1) == 0)
  {
    goto LABEL_13;
  }

  v53 = 0;
LABEL_15:
  sub_75378();
  sub_FCE0(v27, v18, &qword_8F000, &qword_7A5D0);
  v34 = sub_754A8();
  v35 = sub_75738();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v52 = a7;
    v37 = v36;
    v51 = swift_slowAlloc();
    v66 = v51;
    *v37 = 136315650;
    v64 = 0;
    v65 = 0xE000000000000000;
    sub_74CA8();
    sub_759A8();
    v50 = v35;
    v67._countAndFlagsBits = 3026478;
    v67._object = 0xE300000000000000;
    sub_75608(v67);
    sub_759A8();
    v38 = v64;
    v39 = v65;
    sub_3D48(v18, &qword_8F000, &qword_7A5D0);
    v40 = sub_31B4(v38, v39, &v66);

    *(v37 + 4) = v40;
    *(v37 + 12) = 2080;
    v64 = v26;
    LOBYTE(v65) = v28;
    sub_38F8(&qword_8F7F0, &qword_7A630);
    v41 = sub_75838();
    v43 = sub_31B4(v41, v42, &v66);

    *(v37 + 14) = v43;
    *(v37 + 22) = 2080;
    v64 = v54;
    LOBYTE(v65) = v53;
    v44 = sub_75838();
    v46 = sub_31B4(v44, v45, &v66);

    *(v37 + 24) = v46;
    _os_log_impl(&dword_0, v34, v50, "Checksum mismatch: %s db = %s ; snapshot = %s", v37, 0x20u);
    swift_arrayDestroy();

    a7 = v52;
  }

  else
  {

    sub_3D48(v18, &qword_8F000, &qword_7A5D0);
  }

  (*(v55 + 8))(v21, v56);
  sub_FCE0(v63, v57, &qword_8F000, &qword_7A5D0);
  v59(0);
  sub_43B30(v61, v58, a7);
  sub_74E88();
  v47 = v62;
  sub_74E48();
  v48 = sub_74E58();
  return (*(*(v48 - 8) + 56))(v47, 0, 1, v48);
}

uint64_t SanityTaskServer.queryMismatchingCheckpoints(completion:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_754C8();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_754F8();
  v9 = *(v17 - 8);
  __chkstk_darwin(v17);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[1] = *&v2[OBJC_IVAR____TtC25FitnessIntelligencePlugin16SanityTaskServer_queue];
  v12 = swift_allocObject();
  v12[2] = v2;
  v12[3] = a1;
  v12[4] = a2;
  aBlock[4] = sub_407D8;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_87D00;
  v13 = _Block_copy(aBlock);
  v14 = v2;

  sub_754D8();
  v18 = _swiftEmptyArrayStorage;
  sub_43B30(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_7718(&qword_8F3B8, &qword_8F3B0, &qword_7A1D8, &protocol conformance descriptor for [A]);
  sub_75858();
  sub_75788();
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v17);
}

void sub_40460(char *a1, void (*a2)(void, void), uint64_t a3)
{
  v6 = sub_754B8();
  __chkstk_darwin(v6);
  v7 = sub_75508();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = (&v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *&a1[OBJC_IVAR____TtC25FitnessIntelligencePlugin16SanityTaskServer_queue];
  *v10 = v11;
  (*(v8 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v7);
  v12 = v11;
  LOBYTE(v11) = sub_75518();
  (*(v8 + 8))(v10, v7);
  if (v11)
  {
    v13 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
    [v13 setRequiresWrite:0];
    [v13 setRequiresProtectedData:1];
    sub_407FC(v13, a1, a2, a3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_40798()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_407E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_407FC(void *a1, void *a2, void (*a3)(void, void), uint64_t a4)
{
  v9 = sub_74E58();
  v42 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = [a2 client];
  v13 = [v12 profile];

  v14 = sub_3C2DC(v13, a1);
  if (!v4)
  {
    v34 = v11;
    v41 = v9;
    v15 = [a2 client];
    v16 = [v15 profile];

    v17 = sub_3D72C(v16, a1);
    v43 = 0;
    v18 = v17;

    v44 = v14;
    sub_67054(v18);
    v19 = v44;
    v20 = v44[2];
    if (v20)
    {
      v44 = _swiftEmptyArrayStorage;
      sub_67DDC(0, v20, 0);
      v21 = 0;
      v22 = v44;
      v23 = v42;
      v39 = v19 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v37 = a4;
      v38 = v42 + 16;
      v40 = (v42 + 8);
      v24 = v34;
      v35 = v20;
      v36 = a3;
      while (v21 < v19[2])
      {
        v25 = v41;
        (*(v23 + 16))(v24, &v39[*(v23 + 72) * v21], v41);
        sub_43B30(&qword_8F7C0, &type metadata accessor for SanityTaskMismatch, &protocol conformance descriptor for SanityTaskMismatch);
        v26 = v43;
        v27 = sub_74F78();
        v43 = v26;
        if (v26)
        {
          (*v40)(v24, v25);

          goto LABEL_13;
        }

        v29 = v27;
        v30 = v28;
        (*v40)(v24, v25);
        v44 = v22;
        v32 = v22[2];
        v31 = v22[3];
        if (v32 >= v31 >> 1)
        {
          sub_67DDC((v31 > 1), v32 + 1, 1);
          v24 = v34;
          v22 = v44;
        }

        ++v21;
        v22[2] = v32 + 1;
        v33 = &v22[2 * v32];
        v33[4] = v29;
        v33[5] = v30;
        a3 = v36;
        v23 = v42;
        if (v35 == v21)
        {

          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {

      v22 = _swiftEmptyArrayStorage;
LABEL_12:
      a3(v22, 0);
LABEL_13:
    }
  }
}

uint64_t sub_40C08()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_40C40(unint64_t a1, char a2, void *a3)
{
  v7 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v51 - v9;
  v11 = sub_38F8(&qword_8F7D0, &qword_7AD50);
  v12 = __chkstk_darwin(v11);
  v15 = v51 - v14;
  v55 = *(a1 + 16);
  if (!v55)
  {
  }

  v51[1] = v7;
  v51[2] = v3;
  v16 = *(v12 + 48);
  v17 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v54 = *(v13 + 72);
  v56 = a1;
  sub_FCE0(a1 + v17, v51 - v14, &qword_8F7D0, &qword_7AD50);
  sub_1B748(v15, v10, &qword_8F000, &qword_7A5D0);
  v53 = v16;
  v18 = *&v15[v16];
  v19 = *a3;
  v20 = sub_42788(v10);
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_42AC4(v25, a2 & 1);
    v20 = sub_42788(v10);
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_5:
      sub_75A98();
      __break(1u);
    }

LABEL_8:
    if (v26)
    {
      goto LABEL_9;
    }

    goto LABEL_12;
  }

  if (a2)
  {
    goto LABEL_8;
  }

  v30 = v20;
  sub_42874();
  v20 = v30;
  if (v26)
  {
LABEL_9:
    v28 = swift_allocError();
    swift_willThrow();
    v59 = v28;
    swift_errorRetain();
    sub_38F8(&qword_8F870, &qword_7A690);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_3D48(v10, &qword_8F000, &qword_7A5D0);
    }

    goto LABEL_26;
  }

LABEL_12:
  v31 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v32 = v31[6];
  v52 = *(v8 + 72);
  v33 = v20;
  sub_1B748(v10, v32 + v52 * v20, &qword_8F000, &qword_7A5D0);
  *(v31[7] + 8 * v33) = v18;
  v34 = v31[2];
  v24 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v24)
  {
    v31[2] = v35;
    if (v55 == 1)
    {
    }

    v36 = v56 + v54 + v17;
    v37 = 1;
    while (v37 < *(v56 + 16))
    {
      sub_FCE0(v36, v15, &qword_8F7D0, &qword_7AD50);
      sub_1B748(v15, v10, &qword_8F000, &qword_7A5D0);
      v38 = *&v15[v53];
      v39 = *a3;
      v40 = sub_42788(v10);
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v24 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v24)
      {
        goto LABEL_23;
      }

      v45 = v41;
      if (v39[3] < v44)
      {
        sub_42AC4(v44, 1);
        v40 = sub_42788(v10);
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v45)
      {
        goto LABEL_9;
      }

      v47 = *a3;
      *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v48 = v40;
      sub_1B748(v10, v47[6] + v52 * v40, &qword_8F000, &qword_7A5D0);
      *(v47[7] + 8 * v48) = v38;
      v49 = v47[2];
      v24 = __OFADD__(v49, 1);
      v50 = v49 + 1;
      if (v24)
      {
        goto LABEL_24;
      }

      ++v37;
      v47[2] = v50;
      v36 += v54;
      if (v55 == v37)
      {
      }
    }

    goto LABEL_25;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  v57 = 0;
  v58 = 0xE000000000000000;
  sub_75908(30);
  v60._object = 0x8000000000078E80;
  v60._countAndFlagsBits = 0xD00000000000001BLL;
  sub_75608(v60);
  sub_759A8();
  v61._countAndFlagsBits = 39;
  v61._object = 0xE100000000000000;
  sub_75608(v61);
  result = sub_759B8();
  __break(1u);
  return result;
}

Swift::Int sub_41184(uint64_t *a1)
{
  v2 = *(sub_38F8(&qword_8F000, &qword_7A5D0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_4309C(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_41238(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_41238(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_75A28(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_38F8(&qword_8F000, &qword_7A5D0);
        v6 = sub_756C8();
        v6[2] = v5;
      }

      v7 = *(sub_38F8(&qword_8F000, &qword_7A5D0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_415CC(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_4137C(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_4137C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v35 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v8 = __chkstk_darwin(v35);
  v34 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v26 - v11;
  result = __chkstk_darwin(v10);
  v16 = &v26 - v15;
  v28 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v18 = *(v14 + 72);
    v19 = *a4 + v18 * (a3 - 1);
    v20 = -v18;
    v21 = a1 - a3;
    v33 = v17;
    v27 = v18;
    v22 = v17 + v18 * a3;
LABEL_5:
    v31 = v19;
    v32 = a3;
    v29 = v22;
    v30 = v21;
    while (1)
    {
      sub_FCE0(v22, v16, &qword_8F000, &qword_7A5D0);
      sub_FCE0(v19, v12, &qword_8F000, &qword_7A5D0);
      v23 = sub_74C78();
      sub_3D48(v12, &qword_8F000, &qword_7A5D0);
      result = sub_3D48(v16, &qword_8F000, &qword_7A5D0);
      if ((v23 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v19 = v31 + v27;
        v21 = v30 - 1;
        v22 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      v24 = v34;
      sub_1B748(v22, v34, &qword_8F000, &qword_7A5D0);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1B748(v24, v19, &qword_8F000, &qword_7A5D0);
      v19 += v20;
      v22 += v20;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_415CC(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v103 = a1;
  v116 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v113 = *(v116 - 8);
  v9 = __chkstk_darwin(v116);
  v107 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v115 = &v99 - v12;
  v13 = __chkstk_darwin(v11);
  v118 = &v99 - v14;
  result = __chkstk_darwin(v13);
  v117 = &v99 - v16;
  v17 = a3[1];
  if (v17 < 1)
  {
    v19 = _swiftEmptyArrayStorage;
LABEL_96:
    a4 = *v103;
    if (!*v103)
    {
      goto LABEL_136;
    }

    v4 = v19;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = v4;
    }

    else
    {
LABEL_130:
      result = sub_4249C(v4);
    }

    v94 = v6;
    v119 = result;
    v4 = *(result + 16);
    if (v4 >= 2)
    {
      while (1)
      {
        v95 = *a3;
        if (!*a3)
        {
          goto LABEL_134;
        }

        v6 = a3;
        a3 = *(result + 16 * v4);
        v96 = result;
        v97 = *(result + 16 * (v4 - 1) + 40);
        sub_41F0C(v95 + *(v113 + 72) * a3, v95 + *(v113 + 72) * *(result + 16 * (v4 - 1) + 32), v95 + *(v113 + 72) * v97, a4);
        if (v94)
        {
        }

        if (v97 < a3)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_4249C(v96);
        }

        if (v4 - 2 >= *(v96 + 2))
        {
          goto LABEL_124;
        }

        v98 = &v96[16 * v4];
        *v98 = a3;
        *(v98 + 1) = v97;
        v119 = v96;
        sub_42410(v4 - 1);
        result = v119;
        v4 = *(v119 + 16);
        a3 = v6;
        if (v4 <= 1)
        {
        }
      }
    }
  }

  v100 = a4;
  v18 = 0;
  v19 = _swiftEmptyArrayStorage;
  v104 = a3;
  while (1)
  {
    v20 = v18;
    v108 = v19;
    if (v18 + 1 >= v17)
    {
      v17 = v18 + 1;
    }

    else
    {
      v102 = v6;
      v21 = v18;
      v22 = *a3;
      v23 = *(v113 + 72);
      a4 = *a3 + v23 * (v18 + 1);
      v24 = v117;
      sub_FCE0(a4, v117, &qword_8F000, &qword_7A5D0);
      v25 = v118;
      sub_FCE0(v22 + v23 * v21, v118, &qword_8F000, &qword_7A5D0);
      LODWORD(v112) = sub_74C78();
      sub_3D48(v25, &qword_8F000, &qword_7A5D0);
      result = sub_3D48(v24, &qword_8F000, &qword_7A5D0);
      v101 = v21;
      v4 = v21 + 2;
      v114 = v23;
      v26 = v22 + v23 * (v21 + 2);
      while (v17 != v4)
      {
        v27 = v117;
        sub_FCE0(v26, v117, &qword_8F000, &qword_7A5D0);
        v28 = v118;
        sub_FCE0(a4, v118, &qword_8F000, &qword_7A5D0);
        v29 = v17;
        v30 = sub_74C78() & 1;
        sub_3D48(v28, &qword_8F000, &qword_7A5D0);
        result = sub_3D48(v27, &qword_8F000, &qword_7A5D0);
        ++v4;
        v26 += v114;
        a4 += v114;
        v31 = (v112 & 1) == v30;
        v17 = v29;
        if (!v31)
        {
          v17 = v4 - 1;
          break;
        }
      }

      a3 = v104;
      v20 = v101;
      v6 = v102;
      if (v112)
      {
        if (v17 < v101)
        {
          goto LABEL_127;
        }

        if (v101 < v17)
        {
          v4 = v114 * (v17 - 1);
          v32 = v17 * v114;
          v33 = v17;
          v34 = v17;
          v35 = v101;
          a4 = v101 * v114;
          do
          {
            if (v35 != --v34)
            {
              v36 = *v104;
              if (!*v104)
              {
                goto LABEL_133;
              }

              sub_1B748(v36 + a4, v107, &qword_8F000, &qword_7A5D0);
              if (a4 < v4 || v36 + a4 >= (v36 + v32))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (a4 != v4)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_1B748(v107, v36 + v4, &qword_8F000, &qword_7A5D0);
            }

            ++v35;
            v4 -= v114;
            v32 -= v114;
            a4 += v114;
          }

          while (v35 < v34);
          v20 = v101;
          v6 = v102;
          a3 = v104;
          v17 = v33;
        }
      }
    }

    v37 = a3[1];
    if (v17 < v37)
    {
      if (__OFSUB__(v17, v20))
      {
        goto LABEL_126;
      }

      if (v17 - v20 < v100)
      {
        if (__OFADD__(v20, v100))
        {
          goto LABEL_128;
        }

        if (v20 + v100 >= v37)
        {
          v38 = a3[1];
        }

        else
        {
          v38 = v20 + v100;
        }

        if (v38 < v20)
        {
LABEL_129:
          __break(1u);
          goto LABEL_130;
        }

        if (v17 != v38)
        {
          break;
        }
      }
    }

    v18 = v17;
    if (v17 < v20)
    {
      goto LABEL_125;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v19 = v108;
    }

    else
    {
      result = sub_42684(0, *(v108 + 2) + 1, 1, v108);
      v19 = result;
    }

    v4 = *(v19 + 2);
    v39 = *(v19 + 3);
    a4 = v4 + 1;
    if (v4 >= v39 >> 1)
    {
      result = sub_42684((v39 > 1), v4 + 1, 1, v19);
      v19 = result;
    }

    *(v19 + 2) = a4;
    v40 = &v19[16 * v4];
    *(v40 + 4) = v20;
    *(v40 + 5) = v18;
    v41 = *v103;
    if (!*v103)
    {
      goto LABEL_135;
    }

    if (v4)
    {
      while (1)
      {
        v42 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v43 = *(v19 + 4);
          v44 = *(v19 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_52:
          if (v46)
          {
            goto LABEL_114;
          }

          v59 = &v19[16 * a4];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_117;
          }

          v65 = &v19[16 * v42 + 32];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_120;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_121;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v42 = a4 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v69 = &v19[16 * a4];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_66:
        if (v64)
        {
          goto LABEL_116;
        }

        v72 = &v19[16 * v42];
        v74 = *(v72 + 4);
        v73 = *(v72 + 5);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_119;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_73:
        v4 = v42 - 1;
        if (v42 - 1 >= a4)
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

        v80 = v19;
        a4 = *&v19[16 * v4 + 32];
        v81 = *&v19[16 * v42 + 40];
        sub_41F0C(*a3 + *(v113 + 72) * a4, *a3 + *(v113 + 72) * *&v19[16 * v42 + 32], *a3 + *(v113 + 72) * v81, v41);
        if (v6)
        {
        }

        if (v81 < a4)
        {
          goto LABEL_110;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v82 = v80;
        }

        else
        {
          v82 = sub_4249C(v80);
        }

        if (v4 >= *(v82 + 2))
        {
          goto LABEL_111;
        }

        v83 = &v82[16 * v4];
        *(v83 + 4) = a4;
        *(v83 + 5) = v81;
        v119 = v82;
        v4 = &v119;
        result = sub_42410(v42);
        v19 = v119;
        a4 = *(v119 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v47 = &v19[16 * a4 + 32];
      v48 = *(v47 - 64);
      v49 = *(v47 - 56);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_112;
      }

      v52 = *(v47 - 48);
      v51 = *(v47 - 40);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_113;
      }

      v54 = &v19[16 * a4];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_115;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_118;
      }

      if (v58 >= v50)
      {
        v76 = &v19[16 * v42 + 32];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_122;
        }

        if (v45 < v79)
        {
          v42 = a4 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v17 = a3[1];
    if (v18 >= v17)
    {
      goto LABEL_96;
    }
  }

  v101 = v20;
  v102 = v6;
  v84 = *a3;
  v85 = *(v113 + 72);
  v86 = *a3 + v85 * (v17 - 1);
  v87 = -v85;
  v88 = v20 - v17;
  v105 = v85;
  v106 = v38;
  v114 = v84;
  a4 = v84 + v17 * v85;
LABEL_86:
  v111 = v86;
  v112 = v17;
  v109 = a4;
  v110 = v88;
  v89 = v86;
  while (1)
  {
    v4 = v117;
    sub_FCE0(a4, v117, &qword_8F000, &qword_7A5D0);
    v90 = v118;
    sub_FCE0(v89, v118, &qword_8F000, &qword_7A5D0);
    v91 = sub_74C78();
    sub_3D48(v90, &qword_8F000, &qword_7A5D0);
    result = sub_3D48(v4, &qword_8F000, &qword_7A5D0);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v17 = v112 + 1;
      v18 = v106;
      v86 = v111 + v105;
      v88 = v110 - 1;
      a4 = v109 + v105;
      if (v112 + 1 != v106)
      {
        goto LABEL_86;
      }

      v20 = v101;
      v6 = v102;
      a3 = v104;
      if (v106 < v101)
      {
        goto LABEL_125;
      }

      goto LABEL_33;
    }

    if (!v114)
    {
      break;
    }

    v92 = v115;
    sub_1B748(a4, v115, &qword_8F000, &qword_7A5D0);
    swift_arrayInitWithTakeFrontToBack();
    sub_1B748(v92, v89, &qword_8F000, &qword_7A5D0);
    v89 += v87;
    a4 += v87;
    if (__CFADD__(v88++, 1))
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

uint64_t sub_41F0C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v8 = __chkstk_darwin(v43);
  v45 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v44 = &v35 - v11;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_60;
  }

  v14 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v15 = (a2 - a1) / v13;
  v48 = a1;
  v47 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v23 = a4 + v17;
    if (v17 >= 1)
    {
      v24 = -v13;
      v25 = a4 + v17;
      v39 = a1;
      v40 = a4;
      v38 = -v13;
      do
      {
        v36 = v23;
        v26 = a2;
        v27 = a2 + v24;
        v41 = v26;
        v42 = v27;
        while (1)
        {
          if (v26 <= a1)
          {
            v48 = v26;
            v46 = v36;
            goto LABEL_58;
          }

          v29 = a3;
          v37 = v23;
          a3 += v24;
          v30 = v25 + v24;
          v31 = v44;
          sub_FCE0(v30, v44, &qword_8F000, &qword_7A5D0);
          v32 = v27;
          v33 = v45;
          sub_FCE0(v32, v45, &qword_8F000, &qword_7A5D0);
          v34 = sub_74C78();
          sub_3D48(v33, &qword_8F000, &qword_7A5D0);
          sub_3D48(v31, &qword_8F000, &qword_7A5D0);
          if (v34)
          {
            break;
          }

          v23 = v30;
          if (v29 < v25 || a3 >= v25)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v42;
            a1 = v39;
          }

          else
          {
            v27 = v42;
            a1 = v39;
            if (v29 != v25)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v25 = v30;
          v26 = v41;
          v28 = v30 > v40;
          v24 = v38;
          if (!v28)
          {
            a2 = v41;
            goto LABEL_57;
          }
        }

        if (v29 < v41 || a3 >= v41)
        {
          a2 = v42;
          swift_arrayInitWithTakeFrontToBack();
          v24 = v38;
          a1 = v39;
          v23 = v37;
        }

        else
        {
          a2 = v42;
          v24 = v38;
          a1 = v39;
          v23 = v37;
          if (v29 != v41)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v25 > v40);
    }

LABEL_57:
    v48 = a2;
    v46 = v23;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v41 = a3;
    v42 = a4 + v16;
    v46 = a4 + v16;
    if (v16 >= 1 && a2 < a3)
    {
      do
      {
        v19 = v13;
        v20 = v44;
        sub_FCE0(a2, v44, &qword_8F000, &qword_7A5D0);
        v21 = v45;
        sub_FCE0(a4, v45, &qword_8F000, &qword_7A5D0);
        v22 = sub_74C78();
        sub_3D48(v21, &qword_8F000, &qword_7A5D0);
        sub_3D48(v20, &qword_8F000, &qword_7A5D0);
        v13 = v19;
        if (v22)
        {
          if (a1 < a2 || a1 >= a2 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v19;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v19)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v47 = a4 + v19;
          a4 += v19;
        }

        a1 += v19;
        v48 = a1;
      }

      while (a4 < v42 && a2 < v41);
    }
  }

LABEL_58:
  sub_424B0(&v48, &v47, &v46);
  return 1;
}

uint64_t sub_42410(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_4249C(v3);
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

uint64_t sub_424B0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_38F8(&qword_8F000, &qword_7A5D0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_425A0(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_751D8();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

char *sub_42684(char *result, int64_t a2, char a3, char *a4)
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
    sub_38F8(&qword_8F800, &qword_7AD10);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_42788(uint64_t a1)
{
  sub_75AE8();
  sub_74CA8();
  sub_43B30(&qword_8F7F8, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
  sub_75528();
  sub_38F8(&qword_8F000, &qword_7A5D0);
  sub_75528();
  v2 = sub_75B08();

  return sub_42EA0(a1, v2);
}

void *sub_42874()
{
  v1 = v0;
  v2 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v29 = *(v2 - 8);
  __chkstk_darwin(v2 - 8);
  v28 = &v27 - v3;
  sub_38F8(&qword_8F7D8, &qword_7A620);
  v4 = *v0;
  v5 = sub_759E8();
  v6 = v5;
  if (*(v4 + 16))
  {
    v27 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v30 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    v14 = *(v4 + 64);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v15 = v13 & v14;
    v16 = (v12 + 63) >> 6;
    if ((v13 & v14) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_14:
        v20 = v17 | (v10 << 6);
        v21 = v28;
        v22 = *(v29 + 72) * v20;
        sub_FCE0(*(v4 + 48) + v22, v28, &qword_8F000, &qword_7A5D0);
        v23 = *(*(v4 + 56) + 8 * v20);
        v24 = v4;
        v25 = v30;
        result = sub_1B748(v21, *(v30 + 48) + v22, &qword_8F000, &qword_7A5D0);
        v26 = *(v25 + 56);
        v4 = v24;
        *(v26 + 8 * v20) = v23;
      }

      while (v15);
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v16)
      {

        v1 = v27;
        v6 = v30;
        goto LABEL_18;
      }

      v19 = *(v8 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

uint64_t sub_42AC4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v35 = *(v5 - 8);
  v36 = v5;
  __chkstk_darwin(v5);
  v7 = &v33 - v6;
  v8 = *v2;
  sub_38F8(&qword_8F7D8, &qword_7A620);
  v37 = v4;
  result = sub_759F8();
  v10 = result;
  if (*(v8 + 16))
  {
    v33 = v2;
    v34 = v8;
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
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v22 = v19 | (v11 << 6);
      v23 = *(v8 + 48);
      v39 = *(v35 + 72);
      v24 = v23 + v39 * v22;
      if (v37)
      {
        sub_1B748(v24, v7, &qword_8F000, &qword_7A5D0);
      }

      else
      {
        sub_FCE0(v24, v7, &qword_8F000, &qword_7A5D0);
      }

      v38 = *(*(v8 + 56) + 8 * v22);
      sub_75AE8();
      sub_74CA8();
      sub_43B30(&qword_8F7F8, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
      sub_75528();
      sub_75528();
      result = sub_75B08();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v17 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        v8 = v34;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v17 + 8 * v27);
          if (v31 != -1)
          {
            v18 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v26) & ~*(v17 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
      v8 = v34;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_1B748(v7, *(v10 + 48) + v39 * v18, &qword_8F000, &qword_7A5D0);
      *(*(v10 + 56) + 8 * v18) = v38;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v33;
      goto LABEL_34;
    }

    v32 = 1 << *(v8 + 32);
    v3 = v33;
    if (v32 >= 64)
    {
      bzero(v12, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v32;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

unint64_t sub_42EA0(uint64_t a1, uint64_t a2)
{
  v13 = sub_38F8(&qword_8F000, &qword_7A5D0);
  v4 = *(v13 - 8);
  __chkstk_darwin(v13);
  v6 = &v13 - v5;
  v14 = v2;
  v7 = -1 << *(v2 + 32);
  v8 = a2 & ~v7;
  if ((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_74CA8();
    v10 = *(v4 + 72);
    do
    {
      sub_FCE0(*(v14 + 48) + v10 * v8, v6, &qword_8F000, &qword_7A5D0);
      sub_43B30(&qword_8F088, &type metadata accessor for CacheIndex, &protocol conformance descriptor for CacheIndex);
      if (sub_75588())
      {
        v11 = sub_75588();
        sub_3D48(v6, &qword_8F000, &qword_7A5D0);
        if (v11)
        {
          return v8;
        }
      }

      else
      {
        sub_3D48(v6, &qword_8F000, &qword_7A5D0);
      }

      v8 = (v8 + 1) & v9;
    }

    while (((*(v2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

uint64_t sub_430D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DatabaseChecksum(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_4313C(uint64_t a1)
{
  v2 = type metadata accessor for DatabaseChecksum(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_43198(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_431DC()
{
  result = qword_8F840;
  if (!qword_8F840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8F840);
  }

  return result;
}

uint64_t sub_43230(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_43284()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_432F0(sqlite3_stmt *a1)
{
  v3 = *(sub_752D8() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_3A468(a1, v5, v1 + v4, v6);
}

uint64_t sub_433EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void, void, unint64_t, void, void, void, void))
{
  v8 = *(a3(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a4(a1, a2, *(v4 + 16), *(v4 + 24), v4 + v9, *(v4 + v10), *(v4 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v4 + ((((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8))) & 1;
}

uint64_t sub_434E8(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(sub_74CA8() - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = v1 + ((*(v2 + 64) + v3 + v4) & ~v3);

  return a1(v5, v6, v1 + v4, v7);
}

uint64_t sub_43614(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 32) & ~v4;
  v6 = (((((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v4 | 7);
}

uint64_t sub_43768@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 32);
}

uint64_t sub_437B8()
{
  v1 = sub_74CA8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;

  v7 = *(v2 + 8);
  v7(v0 + v4, v1);
  v7(v0 + v6, v1);

  return _swift_deallocObject(v0, v6 + v5, v3 | 7);
}

uint64_t sub_438DC(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_439FC(sqlite3_stmt *a1, uint64_t (*a2)(void), uint64_t (*a3)(sqlite3_stmt *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t))
{
  v8 = *(a2(0) - 8);
  v9 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  return sub_39FE8(a1, *(v4 + 16), v4 + v9, *(v4 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8)), a3, a4);
}

uint64_t sub_43AC0()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_43B30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id SnapshotContainerTaskServer.init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v42 = a4;
  v43 = a2;
  v40 = a3;
  v41 = a1;
  v5 = sub_754B8();
  v44 = *(v5 - 8);
  v45 = v5;
  __chkstk_darwin(v5);
  v39 = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_75768();
  v7 = *(v37 - 8);
  __chkstk_darwin(v37);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_75758();
  __chkstk_darwin(v38);
  v10 = sub_754F8();
  __chkstk_darwin(v10 - 8);
  v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutActive] = 0;
  sub_74CE8();
  swift_allocObject();
  *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_lock] = sub_74CD8();
  type metadata accessor for CountedAssertion();
  v11 = swift_allocObject();
  v11[2] = 0xD000000000000042;
  v11[3] = 0x8000000000078EA0;
  v11[4] = 1;
  swift_allocObject();
  v12 = sub_74CD8();
  v11[6] = 0;
  v11[7] = 0;
  v11[5] = v12;
  *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_snapshotProcessingAssertion] = v11;
  v13 = swift_allocObject();
  v13[2] = 0xD000000000000039;
  v13[3] = 0x8000000000078EF0;
  v13[4] = 3;
  swift_allocObject();
  v14 = sub_74CD8();
  v13[6] = 0;
  v13[7] = 0;
  v13[5] = v14;
  *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_workoutAssertion] = v13;
  v36[0] = sub_1720C();
  sub_754E8();
  sub_75748();
  v15 = enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:);
  v16 = v7 + 104;
  v17 = *(v7 + 104);
  v36[1] = v16;
  v18 = v37;
  v17(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v37);
  *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_queue] = sub_75798();
  v19 = v4;
  sub_754E8();
  v47 = _swiftEmptyArrayStorage;
  sub_17258();
  sub_38F8(&qword_8F3A0, &unk_7A440);
  sub_172B0();
  v20 = v40;
  sub_75858();
  v17(v9, v15, v18);
  v21 = v39;
  v22 = v41;
  v23 = v42;
  *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_threadLimitQueue] = sub_75798();
  *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin27SnapshotContainerTaskServer_threadLimitSemaphore] = dispatch_semaphore_create(6);
  isa = sub_74988().super.isa;
  v25 = type metadata accessor for SnapshotContainerTaskServer();
  v46.receiver = v19;
  v46.super_class = v25;
  v26 = v43;
  v27 = objc_msgSendSuper2(&v46, "initWithUUID:configuration:client:delegate:", isa, v43, v20, v23);

  sub_75378();
  v28 = sub_754A8();
  v29 = sub_75738();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_0, v28, v29, "Registering workout observer", v30, 2u);
  }

  (*(v44 + 8))(v21, v45);
  v31 = [v20 profile];
  v32 = [v31 workoutManager];

  if (v32)
  {
    [v32 registerCurrentWorkoutObserver:v27];

    swift_unknownObjectRelease();
    v33 = sub_749B8();
    (*(*(v33 - 8) + 8))(v22, v33);
  }

  else
  {
    v34 = sub_749B8();
    (*(*(v34 - 8) + 8))(v22, v34);

    swift_unknownObjectRelease();
  }

  return v27;
}

id SnapshotContainerTaskServer.__deallocating_deinit()
{
  v1 = v0;
  v2 = [v1 client];
  v3 = [v2 profile];

  v4 = [v3 workoutManager];
  if (v4)
  {
    [v4 unregisterCurrentWorkoutObserver:v1];
  }

  v6.receiver = v1;
  v6.super_class = type metadata accessor for SnapshotContainerTaskServer();
  return objc_msgSendSuper2(&v6, "dealloc");
}

NSXPCInterface __swiftcall SnapshotContainerTaskServer.exportedInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence36SnapshotContainerTaskServerInterface_];

  return v0;
}

uint64_t sub_446DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_754B8();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_75378();
  v8 = sub_754A8();
  v9 = sub_75738();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 67109120;
    *(v10 + 4) = a1 != 0;
    _os_log_impl(&dword_0, v8, v9, "Workout active: %{BOOL}d", v10, 8u);
  }

  v11 = (*(v5 + 8))(v7, v4);
  __chkstk_darwin(v11);
  *&v13[-16] = v2;
  v13[-8] = a1 != 0;

  sub_74CC8();
}

uint64_t sub_44AEC()
{
  result = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData);
  v2 = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData + 8);
  if (v2 >> 60 == 15)
  {
    v3 = 0;
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData);
  }

  if (v2 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = *(v0 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData + 8);
  }

  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      sub_11760(result, v2);
      sub_FB28(v3, v4);
      return BYTE6(v4);
    }

    goto LABEL_14;
  }

  if (v5 != 2)
  {
    sub_11760(result, v2);
    sub_FB28(v3, v4);
    return 0;
  }

  v7 = *(v3 + 16);
  v6 = *(v3 + 24);
  sub_11760(result, v2);
  sub_FB28(v3, v4);
  result = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_14:
    sub_11760(result, v2);
    result = sub_FB28(v3, v4);
    if (__OFSUB__(HIDWORD(v3), v3))
    {
      __break(1u);
    }

    else
    {
      return HIDWORD(v3) - v3;
    }
  }

  return result;
}

id sub_44C24()
{
  v2.receiver = v0;
  v2.super_class = _s31InferenceRecordContainerWrapperCMa(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

id static InferenceRecordContainerEntity.syncEntityIdentifier.getter()
{
  v0 = objc_allocWithZone(HDSyncEntityIdentifier);
  v1 = sub_75598();
  v2 = [v0 initWithEntityIdentifier:2 schemaIdentifier:v1];

  return v2;
}

uint64_t sub_44DAC@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v21 = sub_74968();
  v1 = *(v21 - 8);
  __chkstk_darwin(v21);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_74A28();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_74A38();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_38F8(&qword_8FA68, &qword_7A790);
  __chkstk_darwin(v12 - 8);
  v14 = &v20 - v13;
  sub_749E8();
  (*(v5 + 104))(v7, enum case for Calendar.Component.year(_:), v4);
  sub_74948();
  sub_74A08();
  v15 = v3;
  v16 = v21;
  (*(v1 + 8))(v15, v21);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
  if ((*(v1 + 48))(v14, 1, v16) != 1)
  {
    return (*(v1 + 32))(v20, v14, v16);
  }

  sub_3D48(v14, &qword_8FA68, &qword_7A790);
  v17 = sub_753B8();
  sub_479D0(&unk_8FA70, &type metadata accessor for DateError, &protocol conformance descriptor for DateError);
  swift_allocError();
  (*(*(v17 - 8) + 104))(v18, enum case for DateError.invalidDate(_:), v17);
  return swift_willThrow();
}

uint64_t static InferenceRecordContainerEntity.generateSyncObjects(for:syncAnchorRange:profile:messageHandler:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v104 = a5;
  v108 = a3;
  v109 = a4;
  v107 = a2;
  v111 = a1;
  v6 = sub_754B8();
  v110 = *(v6 - 8);
  v7 = __chkstk_darwin(v6);
  v9 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v7);
  v12 = &v93 - v11;
  __chkstk_darwin(v10);
  v106 = &v93 - v13;
  v14 = sub_74968();
  v113 = *(v14 - 8);
  v15 = *(v113 + 64);
  v16 = __chkstk_darwin(v14);
  v17 = __chkstk_darwin(v16);
  v19 = &v93 - v18;
  __chkstk_darwin(v17);
  v21 = &v93 - v20;
  result = sub_44DAC(&v93 - v20);
  if (!v5)
  {
    v102 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
    v96 = v12;
    v94 = v9;
    v103 = v6;
    v95 = 0;
    v23 = v106;
    sub_75378();
    v24 = *(v113 + 16);
    v105 = v21;
    v101 = v24;
    v24(v19, v21, v14);
    v25 = sub_754A8();
    v26 = v14;
    v27 = sub_75738();
    if (os_log_type_enabled(v25, v27))
    {
      v28 = swift_slowAlloc();
      ObjCClassFromMetadata = swift_slowAlloc();
      aBlock[0] = ObjCClassFromMetadata;
      *v28 = 136315138;
      sub_479D0(&qword_8F9F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v29 = sub_75A38();
      v30 = v26;
      v32 = v31;
      v33 = v19;
      v34 = v30;
      (*(v113 + 8))(v33, v30);
      v35 = sub_31B4(v29, v32, aBlock);

      *(v28 + 4) = v35;
      _os_log_impl(&dword_0, v25, v27, "Generate sync objects from %s", v28, 0xCu);
      sub_3940(ObjCClassFromMetadata);

      (*(v110 + 8))(v23, v103);
      v36 = v34;
    }

    else
    {

      (*(v113 + 8))(v19, v14);
      (*(v110 + 8))(v23, v103);
      v36 = v14;
    }

    v37 = v111;
    v38 = v102;
    v39 = swift_allocObject();
    v106 = v39;
    *(v39 + 16) = -1;
    v98 = (v39 + 16);
    v102 = swift_allocObject();
    *(v102 + 2) = 0;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v99 = [v37 maxEncodedBytesPerCodableChangeForSyncEntityClass:ObjCClassFromMetadata];
    v40 = swift_allocObject();
    *(v40 + 16) = &_swiftEmptySetSingleton;
    v97 = (v40 + 16);
    v101(v38, v105, v36);
    v41 = v113;
    v42 = (*(v113 + 80) + 16) & ~*(v113 + 80);
    v43 = (v15 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v44 = (v43 + 15) & 0xFFFFFFFFFFFFFFF8;
    v45 = v38;
    v46 = (v44 + 15) & 0xFFFFFFFFFFFFFFF8;
    v47 = swift_allocObject();
    v48 = v41;
    v49 = v102;
    v50 = *(v48 + 32);
    v101 = v36;
    v50(v47 + v42, v45, v36);
    *(v47 + v43) = v49;
    *(v47 + v44) = v99;
    *(v47 + v46) = v40;
    v51 = swift_allocObject();
    v52 = v111;
    v51[2] = v112;
    v51[3] = v52;
    v53 = v108;
    v51[4] = v107;
    v51[5] = v53;
    v54 = v109;
    v51[6] = v106;
    v51[7] = v54;
    v51[8] = sub_46E9C;
    v51[9] = v47;

    v108 = v40;

    v55 = v52;

    v56 = v54;

    v57 = [v56 database];
    v58 = swift_allocObject();
    v58[2] = sub_46FF0;
    v58[3] = v51;
    aBlock[4] = sub_FC94;
    aBlock[5] = v58;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_2BB8;
    aBlock[3] = &unk_883B8;
    v59 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v60 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v57 error:aBlock block:v59];
    _Block_release(v59);

    v61 = aBlock[0];
    LOBYTE(v59) = swift_isEscapingClosureAtFileLocation();

    if (v59)
    {
      __break(1u);
      goto LABEL_31;
    }

    if (!v60)
    {
      v46 = v113;
      v60 = v101;
LABEL_25:
      sub_74898();

      swift_willThrow();

      (*(v46 + 8))(v105, v60);
    }

    v62 = v98;
    swift_beginAccess();
    v46 = v113;
    if (*v62 != -1)
    {
      v63 = v96;
      sub_75378();

      v64 = sub_754A8();
      v65 = sub_75738();
      v66 = os_log_type_enabled(v64, v65);
      v67 = v103;
      if (v66)
      {
        v68 = swift_slowAlloc();
        *v68 = 134217984;
        v69 = v97;
        swift_beginAccess();
        v70 = *v69;
        if ((v70 & 0xC000000000000001) != 0)
        {

          v71 = sub_75898();
        }

        else
        {
          v71 = *(v70 + 16);
        }

        *(v68 + 4) = v71;

        _os_log_impl(&dword_0, v64, v65, "Syncing over %ld inference records", v68, 0xCu);

        v82 = v110;
        v60 = v101;
        v63 = v96;
      }

      else
      {

        v82 = v110;
        v60 = v101;
      }

      (*(v82 + 8))(v63, v67);
      swift_beginAccess();

      v84 = sub_3B9C(v83);

      v61 = v104;
      if ((v84 & 0x8000000000000000) == 0 && (v84 & 0x4000000000000000) == 0)
      {
        sub_75A78();
LABEL_22:

        sub_38F8(&qword_8EB00, &qword_79B18);
        isa = sub_75678().super.isa;

        v86 = *v98;
        v114 = 0;
        v87 = [v61 sendCodableChange:isa version:0 resultAnchor:v86 sequence:0 done:1 error:&v114];

        if (v87)
        {
          v88 = *(v46 + 8);
          v89 = v114;
          v88(v105, v60);
        }

        v61 = v114;
        goto LABEL_25;
      }

LABEL_31:
      sub_38F8(&qword_8EB00, &qword_79B18);
      sub_759C8();

      goto LABEL_22;
    }

    v111 = v47;
    v72 = v94;
    sub_75378();

    v73 = sub_754A8();
    v74 = sub_75738();
    v75 = os_log_type_enabled(v73, v74);
    v76 = v103;
    if (v75)
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v115[0] = v78;
      *v77 = 134218242;
      v79 = v97;
      swift_beginAccess();
      v80 = *v79;
      if ((v80 & 0xC000000000000001) != 0)
      {

        v81 = sub_75898();
      }

      else
      {
        v81 = *(v80 + 16);
      }

      *(v77 + 4) = v81;

      *(v77 + 12) = 2080;
      v90 = sub_75B18();
      v92 = sub_31B4(v90, v91, v115);

      *(v77 + 14) = v92;
      _os_log_impl(&dword_0, v73, v74, "Last anchor is invalid, not syncing %ld %s", v77, 0x16u);
      sub_3940(v78);

      (*(v110 + 8))(v72, v103);
      (*(v113 + 8))(v105, v101);
    }

    else
    {

      (*(v110 + 8))(v72, v76);
      (*(v46 + 8))(v105, v101);
    }
  }

  return result;
}

uint64_t sub_45E58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v53 = a5;
  v54 = a8;
  v52 = a6;
  v11 = sub_754B8();
  v55 = *(v11 - 8);
  v56 = v11;
  __chkstk_darwin(v11);
  v13 = &v51 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_74968();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_38F8(&unk_8FA00, &qword_7A740);
  __chkstk_darwin(v18 - 8);
  v20 = &v51 - v19;
  v21 = sub_74D78();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v27 = &v51 - v26;
  sub_11AD8(v20);
  v28 = (*(v22 + 48))(v20, 1, v21);
  if (v28 == 1)
  {
    sub_3D48(v20, &unk_8FA00, &qword_7A740);
    sub_75378();
    v45 = sub_754A8();
    v46 = sub_75718();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 134217984;
      *(v47 + 4) = v53;
      _os_log_impl(&dword_0, v45, v46, "Failed to decode InferenceRecord from row: %ld", v47, 0xCu);
    }

    (*(v55 + 8))(v13, v56);
    return v28 != 1;
  }

  (*(v22 + 32))(v27, v20, v21);
  sub_74D68();
  v29 = sub_74928();
  (*(v15 + 8))(v17, v14);
  if ((v29 & 1) == 0)
  {
    (*(v22 + 8))(v27, v21);
    return v28 != 1;
  }

  v30 = *(v22 + 16);
  v30(v25, v27, v21);
  v31 = _s31InferenceRecordContainerWrapperCMa(0);
  v32 = objc_allocWithZone(v31);
  v33 = OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecord;
  v30(&v32[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecord], v25, v21);
  (*(v22 + 56))(&v32[v33], 0, 1, v21);
  sub_479D0(&qword_8F178, &type metadata accessor for InferenceRecord, &protocol conformance descriptor for InferenceRecord);
  v34 = sub_74F78();
  v35 = &v32[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData];
  *v35 = v34;
  v35[1] = v36;
  v58.receiver = v32;
  v58.super_class = v31;
  v37 = objc_msgSendSuper2(&v58, "init");
  v38 = *(v22 + 8);
  v38(v25, v21);
  v39 = sub_44AEC();
  if (v39 < 1)
  {
LABEL_6:
    *v52 = 1;

    v38(v27, v21);
    return v28 != 1;
  }

  v40 = v39;
  result = swift_beginAccess();
  v42 = *(a9 + 16);
  v43 = __OFADD__(v42, v40);
  v44 = v42 + v40;
  if (v43)
  {
    __break(1u);
  }

  else
  {
    if (v44 > a10)
    {
      goto LABEL_6;
    }

    swift_beginAccess();
    v48 = v37;
    sub_68D40(&v57, v48);
    swift_endAccess();

    v38(v27, v21);
    result = swift_beginAccess();
    v49 = *(a9 + 16);
    v43 = __OFADD__(v49, v40);
    v50 = v49 + v40;
    if (!v43)
    {
      *(a9 + 16) = v50;
      return v28 != 1;
    }
  }

  __break(1u);
  return result;
}

id sub_463E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10)
{
  v15 = sub_754B8();
  v35 = *(v15 - 8);
  v36 = v15;
  __chkstk_darwin(v15);
  v34 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a7 + 16;
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = sub_1D420();
  sub_462C(v19);

  isa = sub_75678().super.isa;

  v21 = [a8 database];
  v22 = swift_allocObject();
  *(v22 + 16) = a9;
  *(v22 + 24) = a10;
  aBlock[4] = sub_3D1C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_778C;
  aBlock[3] = &unk_88408;
  v23 = _Block_copy(aBlock);

  swift_beginAccess();
  v37 = 0;
  v24 = [ObjCClassFromMetadata enumerateEntitiesForSyncWithProperties:isa predicate:0 session:a4 syncAnchorRange:a5 limit:a6 lastSyncAnchor:0 healthDatabase:v17 error:v21 block:{&v37, v23}];
  v25 = v37;
  swift_endAccess();
  v26 = v25;
  _Block_release(v23);

  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  if (!v24)
  {
    sub_74898();

    swift_willThrow();
    v27 = v34;
    sub_75378();
    swift_errorRetain();
    v28 = sub_754A8();
    v29 = sub_75718();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_0, v28, v29, "Error while enumerating entities for sync: %@", v30, 0xCu);
      sub_3D48(v31, &unk_8EB30, &unk_7A270);
    }

    else
    {
    }

    (*(v35 + 8))(v27, v36);
  }

  return v24;
}

id static InferenceRecordContainerEntity.decodeSyncObject(with:)(uint64_t a1, unint64_t a2)
{
  v4 = sub_38F8(&unk_8FA00, &qword_7A740);
  __chkstk_darwin(v4 - 8);
  v6 = &v12 - v5;
  v7 = _s31InferenceRecordContainerWrapperCMa(0);
  v8 = objc_allocWithZone(v7);
  v9 = sub_74D78();
  sub_398C(a1, a2);
  sub_398C(a1, a2);
  sub_479D0(&qword_8F178, &type metadata accessor for InferenceRecord, &protocol conformance descriptor for InferenceRecord);
  sub_74F88();
  (*(*(v9 - 8) + 56))(v6, 0, 1, v9);
  sub_477F8(v6, &v8[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecord]);
  v10 = &v8[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecordData];
  *v10 = a1;
  *(v10 + 1) = a2;
  v13.receiver = v8;
  v13.super_class = v7;
  return objc_msgSendSuper2(&v13, "init");
}

uint64_t sub_46DB0()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_46DE8()
{
  v1 = sub_74968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_46E9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t a7)
{
  v15 = *(sub_74968() - 8);
  v16 = (*(v15 + 80) + 16) & ~*(v15 + 80);
  v17 = (*(v15 + 64) + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_45E58(a1, a2, a3, a4, a5, a6, a7, v7 + v16, *(v7 + v17), *(v7 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v7 + ((((v17 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8))) & 1;
}

uint64_t sub_46FA0()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_47038(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_47050(unint64_t a1, unint64_t a2, void *a3)
{
  v45 = a3;
  v5 = sub_38F8(&unk_8FA00, &qword_7A740);
  __chkstk_darwin(v5 - 8);
  v7 = v44 - v6;
  v8 = sub_74D78();
  v48 = *(v8 - 8);
  v49 = v8;
  __chkstk_darwin(v8);
  v51 = v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_754B8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = v44 - v16;
  v18 = __chkstk_darwin(v15);
  v50 = v44 - v19;
  __chkstk_darwin(v18);
  v21 = v44 - v20;
  sub_75378();

  v22 = sub_754A8();
  LOBYTE(v23) = sub_75738();
  v24 = os_log_type_enabled(v22, v23);
  v44[3] = v14;
  if (!v24)
  {

    goto LABEL_6;
  }

  v46 = v10;
  v25 = a2;
  a2 = swift_slowAlloc();
  *a2 = 134217984;
  if (a1 >> 62)
  {
    goto LABEL_31;
  }

  for (i = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)); ; i = sub_759D8())
  {
    *(a2 + 4) = i;

    _os_log_impl(&dword_0, v22, v23, "Received synced inference records count: %ld", a2, 0xCu);

    a2 = v25;
    v10 = v46;
LABEL_6:
    v29 = *(v11 + 8);
    v27 = v11 + 8;
    v28 = v29;
    v29(v21, v10);
    if ((a2 & 0x8000000000000000) != 0 || a2 > 0)
    {
      sub_75378();
      v36 = sub_754A8();
      v37 = sub_75738();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 67109376;
        *(v38 + 4) = a2;
        *(v38 + 8) = 1024;
        *(v38 + 10) = HIDWORD(a2);
        _os_log_impl(&dword_0, v36, v37, "Sync version [%d, %d] not supported, dropping.", v38, 0xEu);
      }

      v28(v17, v10);
      return 1;
    }

    v52 = sub_65550(a1);
    if (!v52)
    {
      break;
    }

    v47 = v52 & 0xFFFFFFFFFFFFFF8;
    if (v52 >> 62)
    {
      v21 = sub_759D8();
      if (!v21)
      {
LABEL_33:

        break;
      }
    }

    else
    {
      v21 = *(&dword_10 + (v52 & 0xFFFFFFFFFFFFFF8));
      if (!v21)
      {
        goto LABEL_33;
      }
    }

    v44[1] = v28;
    v44[2] = v27;
    v46 = v10;
    v23 = 0;
    v50 = (v52 & 0xC000000000000001);
    v25 = v49;
    v30 = (v48 + 48);
    a1 = _swiftEmptyArrayStorage;
    v22 = (v48 + 32);
    v11 = v47;
    while (1)
    {
      if (v50)
      {
        v31 = sub_75928();
      }

      else
      {
        if (v23 >= *(v11 + 16))
        {
          goto LABEL_30;
        }

        v31 = *(v52 + 8 * v23 + 32);
      }

      a2 = v31;
      v17 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      sub_47960(v31 + OBJC_IVAR____TtCC25FitnessIntelligencePlugin30InferenceRecordContainerEntityP33_B585107B97BC3D4BB109E3030F1DB06531InferenceRecordContainerWrapper_inferenceRecord, v7);

      if ((*v30)(v7, 1, v25) == 1)
      {
        sub_3D48(v7, &unk_8FA00, &qword_7A740);
      }

      else
      {
        isa = v22->isa;
        (v22->isa)(v51, v7, v25);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_67844(0, *(a1 + 16) + 1, 1, a1);
        }

        v34 = *(a1 + 16);
        v33 = *(a1 + 24);
        a2 = v34 + 1;
        if (v34 >= v33 >> 1)
        {
          a1 = sub_67844((v33 > 1), v34 + 1, 1, a1);
        }

        *(a1 + 16) = a2;
        v35 = a1 + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v34;
        v25 = v49;
        isa(v35, v51, v49);
        v11 = v47;
      }

      ++v23;
      if (v17 == v21)
      {

        sub_705B8(a1, 0, v45);

        return 0;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    ;
  }

  v40 = v50;
  sub_75378();
  v41 = sub_754A8();
  v42 = sub_75738();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_0, v41, v42, "No sync object received, skipping.", v43, 2u);
  }

  v28(v40, v10);
  return 0;
}

uint64_t _s31InferenceRecordContainerWrapperCMa(uint64_t a1)
{
  result = qword_8FA48;
  if (!qword_8FA48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_477F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&unk_8FA00, &qword_7A740);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_47870(uint64_t a1)
{
  sub_47908(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_47908(uint64_t a1)
{
  if (!qword_8FA58)
  {
    sub_74D78();
    v1 = sub_75848();
    if (!v2)
    {
      atomic_store(v1, &qword_8FA58);
    }
  }
}

uint64_t sub_47960(uint64_t a1, uint64_t a2)
{
  v4 = sub_38F8(&unk_8FA00, &qword_7A740);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_479D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_47A28()
{
  result = qword_8FA80;
  if (!qword_8FA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_8FA80);
  }

  return result;
}

void *sub_47A7C(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_750F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = _swiftEmptyArrayStorage;
  if (a3)
  {
    v25 = a3;
  }

  else
  {
    v25 = [objc_opt_self() contextForReadingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = a3;
  v13 = [a2 database];
  (*(v9 + 16))(&v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v11, v8);
  *(v16 + v15) = &v28;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v17 = swift_allocObject();
  v17[2] = sub_4E6CC;
  v17[3] = v16;
  aBlock[4] = sub_1008C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_88958;
  v18 = _Block_copy(aBlock);
  v19 = v25;

  aBlock[0] = 0;
  v20 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v13 context:v19 error:aBlock block:v18];
  _Block_release(v18);

  v21 = aBlock[0];
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  if (v20)
  {

    v22 = v28;
  }

  else
  {
    sub_74898();

    swift_willThrow();
    v22 = v28;
  }

  return v22;
}

id sub_47DDC(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  v8 = sub_751D8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = _swiftEmptyArrayStorage;
  if (a3)
  {
    v26 = a3;
  }

  else
  {
    v26 = [objc_opt_self() contextForReadingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = a3;
  v13 = [a2 database];
  (*(v9 + 16))(v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v8);
  v14 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v15 = (v10 + v14 + 7) & 0xFFFFFFFFFFFFFFF8;
  v16 = swift_allocObject();
  (*(v9 + 32))(v16 + v14, v11, v8);
  *(v16 + v15) = &v29;
  *(v16 + ((v15 + 15) & 0xFFFFFFFFFFFFFFF8)) = v4;
  v17 = swift_allocObject();
  v17[2] = sub_4E580;
  v17[3] = v16;
  aBlock[4] = sub_1008C;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_887F0;
  v18 = _Block_copy(aBlock);
  v19 = v26;

  aBlock[0] = 0;
  v20 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v13 context:v19 error:aBlock block:v18];
  _Block_release(v18);

  v21 = aBlock[0];
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
  }

  if (!v20)
  {
    sub_74898();

    swift_willThrow();
    v23 = v29;

    return v23;
  }

  aBlock[0] = v29;
  swift_bridgeObjectRetain_n();
  v22 = v25[1];
  sub_4BC50(aBlock);
  if (!v22)
  {

    v23 = aBlock[0];

    return v23;
  }

  __break(1u);
  return result;
}

id sub_48188(void *a1, void *a2)
{
  v4 = v2;
  v21 = _swiftEmptyArrayStorage;
  if (a2)
  {
    v7 = a2;
  }

  else
  {
    v7 = [objc_opt_self() contextForReadingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v9 = a2;
  v10 = [a1 database];
  v11 = swift_allocObject();
  *(v11 + 16) = &v21;
  *(v11 + 24) = v4;
  v12 = swift_allocObject();
  v12[2] = sub_4E570;
  v12[3] = v11;
  v20[4] = sub_1008C;
  v20[5] = v12;
  v20[0] = _NSConcreteStackBlock;
  v20[1] = 1107296256;
  v20[2] = sub_2BB8;
  v20[3] = &unk_88700;
  v13 = _Block_copy(v20);
  v14 = v7;

  v20[0] = 0;
  v15 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v10 context:v14 error:v20 block:v13];
  _Block_release(v13);

  v16 = v20[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if (!v15)
  {
    sub_74898();

    swift_willThrow();
    v18 = v21;

    return v18;
  }

  v20[0] = v21;
  swift_bridgeObjectRetain_n();
  sub_4BCF8(sub_4A61C, 0);
  if (!v3)
  {

    v18 = v20[0];

    return v18;
  }

  __break(1u);
  return result;
}

void sub_48464(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v50 = a2;
  v43 = a1;
  v6 = sub_751D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v49 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a3 syncIdentityManager];
  v10 = [v9 currentSyncIdentity];

  v11 = [v10 entity];
  v45 = [v11 persistentID];

  if (a4)
  {
    v46 = a4;
  }

  else
  {
    v46 = [objc_opt_self() contextForWritingProtectedData];
  }

  v12 = a4;
  v13 = [a3 database];
  v47 = a3;
  v48 = v13;
  v14 = *(v7 + 16);
  v42 = v7 + 16;
  v44 = v14;
  v15 = v49;
  v16 = v43;
  v17 = v6;
  v14(v49, v43, v6);
  v18 = *(v7 + 80);
  v19 = (v18 + 24) & ~v18;
  v39 = v19;
  v20 = (v8 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = v20;
  v41 = v18;
  v21 = (v20 + 15) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = v51;
  v38 = *(v7 + 32);
  v23 = v17;
  v38(v22 + v19, v15, v17);
  *(v22 + v20) = v50;
  *(v22 + v21) = v45;
  v24 = swift_allocObject();
  *(v24 + 16) = sub_118F8;
  *(v24 + 24) = v22;
  v37[2] = v22;
  v56 = sub_FC94;
  v57 = v24;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v37[3] = &v54;
  v54 = sub_2BB8;
  v55 = &unk_884F8;
  v45 = _Block_copy(&aBlock);
  v25 = v46;

  v26 = v15;
  v44(v15, v16, v23);
  v27 = swift_allocObject();
  *(v27 + 16) = v51;
  v28 = v25;
  v38(v27 + v39, v26, v23);
  *(v27 + v40) = v50;
  v29 = v47;
  *(v27 + v21) = v47;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_119DC;
  *(v30 + 24) = v27;
  v56 = sub_11AC4;
  v57 = v30;
  aBlock = _NSConcreteStackBlock;
  v53 = 1107296256;
  v54 = sub_65494;
  v55 = &unk_88570;
  v31 = _Block_copy(&aBlock);
  v32 = v29;

  aBlock = 0;
  v33 = v48;
  v34 = v45;
  v35 = [v48 performTransactionWithContext:v28 error:&aBlock block:v45 inaccessibilityHandler:v31];
  _Block_release(v31);
  _Block_release(v34);

  v36 = aBlock;
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  if ((v35 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

void sub_489A0(uint64_t a1, void *a2, void *a3)
{
  v4 = v3;
  if (a3)
  {
    v8 = a3;
  }

  else
  {
    v8 = [objc_opt_self() contextForWritingProtectedData];
  }

  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v10 = a3;
  v11 = [a2 database];
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = v4;
  v13 = swift_allocObject();
  v13[2] = sub_4E55C;
  v13[3] = v12;
  aBlock[4] = sub_1008C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_885E8;
  v14 = _Block_copy(aBlock);
  v15 = v8;

  aBlock[0] = 0;
  v16 = [ObjCClassFromMetadata performReadTransactionWithHealthDatabase:v11 context:v15 error:aBlock block:v14];
  _Block_release(v14);

  v17 = aBlock[0];
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  if ((v16 & 1) == 0)
  {
    sub_74898();

    swift_willThrow();
  }
}

uint64_t sub_48BE4(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_754B8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v34 - v11;
  v13 = [a1 protectedDatabase];
  if (v13)
  {
    v14 = v13;
    v35 = a2;
    *&aBlock = 0;
    *(&aBlock + 1) = 0xE000000000000000;
    sub_75908(28);

    strcpy(&aBlock, "DELETE FROM ");
    BYTE13(aBlock) = 0;
    HIWORD(aBlock) = -5120;
    v41._object = 0x80000000000791C0;
    v41._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v41);
    v42._countAndFlagsBits = 0x20455245485720;
    v42._object = 0xE700000000000000;
    sub_75608(v42);
    v43._countAndFlagsBits = 0x6568636143646E65;
    v43._object = 0xED00007865646E49;
    sub_75608(v43);
    v44._countAndFlagsBits = 0x3F203D3E20;
    v44._object = 0xE500000000000000;
    sub_75608(v44);
    v15 = sub_75598();

    v16 = swift_allocObject();
    v34 = a3;
    *(v16 + 16) = a3;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_4E564;
    *(v17 + 24) = v16;
    v39 = sub_303D0;
    v40 = v17;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v37 = sub_644E0;
    v38 = &unk_88660;
    v18 = _Block_copy(&aBlock);

    v39 = static PropertyRecordCheckpointEntity.supportedNanoSyncDirections(for:);
    v40 = 0;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v37 = sub_4F494;
    v38 = &unk_88688;
    v19 = _Block_copy(&aBlock);

    *&aBlock = 0;
    v20 = [v14 executeSQL:v15 error:&aBlock bindingHandler:v18 enumerationHandler:v19];
    _Block_release(v19);
    _Block_release(v18);

    if (v20)
    {
      v21 = aBlock;

      return 1;
    }

    v27 = aBlock;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v28 = sub_754A8();
    v29 = sub_75718();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 134218242;
      *(v30 + 4) = v34;
      *(v30 + 12) = 2112;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v30 + 14) = v32;
      *v31 = v32;
      _os_log_impl(&dword_0, v28, v29, "Failed to invalidate snapshots after %lld: %@", v30, 0x16u);
      sub_3D48(v31, &unk_8EB30, &unk_7A270);
    }

    (*(v7 + 8))(v10, v6);
    v33 = v35;
    if (v35)
    {
      *v33 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v23 = sub_754A8();
    v24 = sub_75718();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 134217984;
      *(v25 + 4) = a3;
      _os_log_impl(&dword_0, v23, v24, "Failed to invalidate snapshots after cacheIndex: %lld: no protected database", v25, 0xCu);
    }

    (*(v7 + 8))(v12, v6);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v26 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_49180(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_754B8();
  v41 = *(v11 - 8);
  v42 = v11;
  __chkstk_darwin(v11);
  v40 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_751D8();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = [a1 protectedDatabase];
  if (v17)
  {
    v18 = v17;
    v37 = a2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    sub_55A6C();
    isa = sub_75678().super.isa;

    (*(v14 + 16))(&v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v13);
    v19 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v20 = (v15 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
    v21 = swift_allocObject();
    (*(v14 + 32))(v21 + v19, v16, v13);
    *(v21 + v20) = a5;
    *(v21 + ((v20 + 15) & 0xFFFFFFFFFFFFFFF8)) = a6;
    v22 = swift_allocObject();
    v22[2] = sub_4E35C;
    v22[3] = v21;
    aBlock[4] = sub_2FE7C;
    aBlock[5] = v22;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_644E0;
    aBlock[3] = &unk_88480;
    v23 = _Block_copy(aBlock);

    aBlock[0] = 0;
    v24 = isa;
    v25 = [ObjCClassFromMetadata insertOrReplaceEntity:1 database:v18 properties:isa error:aBlock bindingHandler:v23];
    _Block_release(v23);

    v26 = aBlock[0];
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    if (v25)
    {

      return 1;
    }

    sub_74898();

    swift_willThrow();
    v30 = sub_4E35C;
    a2 = v37;
  }

  else
  {
    sub_19A60();
    swift_allocError();
    *v29 = 0;
    swift_willThrow();
    v30 = 0;
    v21 = 0;
  }

  v31 = v40;
  sub_75378();
  swift_errorRetain();
  v32 = sub_754A8();
  v33 = sub_75718();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    swift_errorRetain();
    v36 = _swift_stdlib_bridgeErrorToNSError();
    *(v34 + 4) = v36;
    *v35 = v36;
    _os_log_impl(&dword_0, v32, v33, "Failed to insert cache registry entry: %@", v34, 0xCu);
    sub_3D48(v35, &unk_8EB30, &unk_7A270);
  }

  (*(v41 + 8))(v31, v42);
  if (a2)
  {
    *a2 = sub_74888();
  }

  sub_43230(v30, v21);
  return 0;
}

void sub_49698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v36 = a4;
  v4 = sub_74968();
  v33 = *(v4 - 8);
  v34 = v4;
  __chkstk_darwin(v4);
  v32 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_75028();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_750F8();
  v8 = *(v28 - 8);
  __chkstk_darwin(v28);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_74CA8();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_75598();
  sub_751B8();
  sub_74C98();
  v16 = *(v12 + 8);
  v16(v14, v11);
  HDSQLiteBindInt64ToProperty();

  v17 = sub_75598();
  sub_75198();
  sub_74C98();
  v16(v14, v11);
  HDSQLiteBindInt64ToProperty();

  v18 = sub_75598();
  sub_751C8();
  sub_750E8();
  (*(v8 + 8))(v10, v28);
  v19 = sub_75598();

  HDSQLiteBindStringToProperty();

  v20 = sub_75598();
  v21 = v29;
  sub_75008();
  sub_75018();
  (*(v30 + 8))(v21, v31);
  HDSQLiteBindInt64ToProperty();

  v22 = sub_75598();
  v23 = v32;
  sub_74958();
  isa = sub_74918().super.isa;
  (*(v33 + 8))(v23, v34);
  HDSQLiteBindDateToProperty();

  v25 = sub_75598();
  HDSQLiteBindInt64ToProperty();

  v26 = sub_75598();
  HDSQLiteBindInt64ToProperty();
}

id sub_49B5C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v36 = a2;
  v37 = a6;
  v38 = sub_754B8();
  v8 = *(v38 - 8);
  v9 = __chkstk_darwin(v38);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v36 - v12;
  sub_75378();
  swift_errorRetain();
  v14 = sub_754A8();
  v15 = sub_75718();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v18;
    *v17 = v18;
    _os_log_impl(&dword_0, v14, v15, "Failed to insert an PropertyRecordCheckpoint entry: %@. Journaling entries", v16, 0xCu);
    sub_3D48(v17, &unk_8EB30, &unk_7A270);
  }

  v19 = *(v8 + 8);
  v19(v13, v38);
  sub_38F8(&qword_8FAA0, &unk_7ACA0);
  v20 = sub_751D8();
  v21 = *(v20 - 8);
  v22 = (*(v21 + 80) + 32) & ~*(v21 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_79BF0;
  (*(v21 + 16))(v23 + v22, a4, v20);
  sub_4E014(v23, a5);
  swift_setDeallocating();
  (*(v21 + 8))(v23 + v22, v20);
  swift_deallocClassInstance();
  v24 = [v37 database];
  sub_4E2F8();
  isa = sub_75678().super.isa;

  v39 = 0;
  v26 = [v24 addJournalEntries:isa error:&v39];

  if (v26)
  {
    v27 = v39;
  }

  else
  {
    v28 = v39;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v29 = sub_754A8();
    v30 = sub_75718();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      *v31 = 138412290;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 4) = v33;
      *v32 = v33;
      _os_log_impl(&dword_0, v29, v30, "Failed to add journal entries: %@", v31, 0xCu);
      sub_3D48(v32, &unk_8EB30, &unk_7A270);
    }

    v19(v11, v38);
    v34 = v36;
    if (v36)
    {
      *v34 = sub_74888();
    }
  }

  return v26;
}

uint64_t sub_4A008(void *a1, void *a2, uint64_t a3)
{
  v6 = sub_754B8();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v33 - v11;
  v13 = [a1 protectedDatabase];
  if (v13)
  {
    v14 = v13;
    aBlock = 0;
    v36 = 0xE000000000000000;
    sub_75908(68);
    v41._countAndFlagsBits = 0xD000000000000010;
    v41._object = 0x8000000000079200;
    sub_75608(v41);
    v42._countAndFlagsBits = 0x6361437472617473;
    v42._object = 0xEF7865646E496568;
    sub_75608(v42);
    v43._countAndFlagsBits = 0x204D4F524620;
    v43._object = 0xE600000000000000;
    sub_75608(v43);
    v44._object = 0x80000000000791C0;
    v44._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v44);
    v45._countAndFlagsBits = 0x20455245485720;
    v45._object = 0xE700000000000000;
    sub_75608(v45);
    v46._countAndFlagsBits = 0x6E6F6973726576;
    v46._object = 0xE700000000000000;
    sub_75608(v46);
    v47._countAndFlagsBits = 0xD00000000000001ELL;
    v47._object = 0x8000000000078E00;
    sub_75608(v47);
    v48._object = 0x80000000000791C0;
    v48._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v48);
    v49._countAndFlagsBits = 41;
    v49._object = 0xE100000000000000;
    sub_75608(v49);
    v15 = sub_75598();

    v16 = swift_allocObject();
    *(v16 + 16) = a3;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_4E578;
    *(v17 + 24) = v16;
    v39 = sub_1B6F8;
    v40 = v17;
    aBlock = _NSConcreteStackBlock;
    v36 = 1107296256;
    v37 = sub_4F494;
    v38 = &unk_88778;
    v18 = _Block_copy(&aBlock);

    aBlock = 0;
    v19 = [v14 executeSQL:v15 error:&aBlock bindingHandler:0 enumerationHandler:v18];
    _Block_release(v18);

    if (v19)
    {
      v20 = aBlock;

      return 1;
    }

    v26 = aBlock;
    sub_74898();

    swift_willThrow();
    sub_75378();
    swift_errorRetain();
    v27 = sub_754A8();
    v28 = sub_75718();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v34 = a2;
      v31 = v30;
      *v29 = 138412290;
      swift_errorRetain();
      v32 = _swift_stdlib_bridgeErrorToNSError();
      *(v29 + 4) = v32;
      *v31 = v32;
      _os_log_impl(&dword_0, v27, v28, "Failed to list all cache indexes %@", v29, 0xCu);
      sub_3D48(v31, &unk_8EB30, &unk_7A270);
      a2 = v34;
    }

    (*(v7 + 8))(v10, v6);
    if (a2)
    {
      *a2 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v22 = sub_754A8();
    v23 = sub_75718();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_0, v22, v23, "Failed to list cache indexes: no protected database", v24, 2u);
    }

    (*(v7 + 8))(v12, v6);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v25 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_4A564(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = HDSQLiteColumnAsInt64();
  v5 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v5 = sub_674CC(0, *(v5 + 2) + 1, 1, v5);
    *a3 = v5;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    v5 = sub_674CC((v7 > 1), v8 + 1, 1, v5);
    *a3 = v5;
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = v4;
  return 1;
}

uint64_t sub_4A630(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v47 = a3;
  v48 = a4;
  v6 = sub_751D8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v9 = sub_754B8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v41 - v14;
  v16 = [a1 protectedDatabase];
  if (v16)
  {
    v44 = a2;
    v45 = v13;
    v42 = v10;
    v43 = v9;
    aBlock = 0;
    v50 = 0xE000000000000000;
    v46 = v16;
    sub_75908(113);
    v55._countAndFlagsBits = 0xD000000000000010;
    v55._object = 0x8000000000079200;
    sub_75608(v55);
    v56._countAndFlagsBits = 0x6361437472617473;
    v56._object = 0xEF7865646E496568;
    sub_75608(v56);
    v57._countAndFlagsBits = 8236;
    v57._object = 0xE200000000000000;
    sub_75608(v57);
    v58._countAndFlagsBits = 0x6568636143646E65;
    v58._object = 0xED00007865646E49;
    sub_75608(v58);
    v59._countAndFlagsBits = 8236;
    v59._object = 0xE200000000000000;
    sub_75608(v59);
    v60._object = 0x80000000000773B0;
    v60._countAndFlagsBits = 0xD000000000000016;
    sub_75608(v60);
    v61._countAndFlagsBits = 0x204D4F524620;
    v61._object = 0xE600000000000000;
    sub_75608(v61);
    v62._countAndFlagsBits = 0xD000000000000033;
    v62._object = 0x80000000000791C0;
    sub_75608(v62);
    v63._countAndFlagsBits = 0x20455245485720;
    v63._object = 0xE700000000000000;
    sub_75608(v63);
    v64._countAndFlagsBits = 0x6E6F6973726576;
    v64._object = 0xE700000000000000;
    sub_75608(v64);
    v65._countAndFlagsBits = 0xD00000000000001ELL;
    v65._object = 0x8000000000078E00;
    sub_75608(v65);
    v66._countAndFlagsBits = 0xD000000000000033;
    v66._object = 0x80000000000791C0;
    sub_75608(v66);
    v67._countAndFlagsBits = 0x20444E412029;
    v67._object = 0xE600000000000000;
    sub_75608(v67);
    v68._object = 0x80000000000773B0;
    v68._countAndFlagsBits = 0xD000000000000016;
    sub_75608(v68);
    v69._countAndFlagsBits = 0x4E41203F203D3D20;
    v69._object = 0xEA00000000002044;
    sub_75608(v69);
    v70._countAndFlagsBits = 0x6361437472617473;
    v70._object = 0xEF7865646E496568;
    sub_75608(v70);
    v71._countAndFlagsBits = 0x4E41203F203D3E20;
    v71._object = 0xEA00000000002044;
    sub_75608(v71);
    v72._countAndFlagsBits = 0x6568636143646E65;
    v72._object = 0xED00007865646E49;
    sub_75608(v72);
    v73._countAndFlagsBits = 0x3B3F203D3C20;
    v73._object = 0xE600000000000000;
    sub_75608(v73);
    v17 = sub_75598();

    (*(v7 + 16))(&v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v47, v6);
    v18 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v19 = swift_allocObject();
    (*(v7 + 32))(v19 + v18, &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
    v20 = swift_allocObject();
    *(v20 + 16) = sub_4E5C4;
    *(v20 + 24) = v19;
    v53 = sub_303D0;
    v54 = v20;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_644E0;
    v52 = &unk_88868;
    v21 = _Block_copy(&aBlock);

    v22 = swift_allocObject();
    *(v22 + 16) = v48;
    v23 = swift_allocObject();
    *(v23 + 16) = sub_4E5F0;
    *(v23 + 24) = v22;
    v53 = sub_43BA8;
    v54 = v23;
    aBlock = _NSConcreteStackBlock;
    v50 = 1107296256;
    v51 = sub_4F494;
    v52 = &unk_888E0;
    v24 = _Block_copy(&aBlock);

    aBlock = 0;
    v25 = v46;
    v26 = [v46 executeSQL:v17 error:&aBlock bindingHandler:v21 enumerationHandler:v24];
    _Block_release(v24);
    _Block_release(v21);

    if (v26)
    {
      v27 = aBlock;

      return 1;
    }

    v33 = aBlock;
    sub_74898();

    swift_willThrow();
    v34 = v45;
    sub_75378();
    swift_errorRetain();
    v35 = sub_754A8();
    v36 = sub_75718();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *v37 = 138412290;
      swift_errorRetain();
      v39 = _swift_stdlib_bridgeErrorToNSError();
      *(v37 + 4) = v39;
      *v38 = v39;
      _os_log_impl(&dword_0, v35, v36, "Failed to list all cache indexes %@", v37, 0xCu);
      sub_3D48(v38, &unk_8EB30, &unk_7A270);

      v34 = v45;
    }

    (*(v42 + 8))(v34, v43);
    v40 = v44;
    if (v44)
    {
      *v40 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v29 = sub_754A8();
    v30 = sub_75718();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_0, v29, v30, "Failed to list cache indexes: no protected database", v31, 2u);
    }

    (*(v10 + 8))(v15, v9);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v32 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_4AE0C(sqlite3_stmt *a1)
{
  v2 = sub_74CA8();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_750F8();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_751C8();
  sub_750E8();
  (*(v7 + 8))(v9, v6);
  if (qword_8E9E0 != -1)
  {
    swift_once();
  }

  v10 = qword_90000;
  v11 = sub_755C8();

  sqlite3_bind_text(a1, 1, (v11 + 32), -1, v10);

  sub_751B8();
  v12 = sub_74C98();
  v13 = *(v3 + 8);
  v13(v5, v2);
  sqlite3_bind_int64(a1, 2, v12);
  sub_75198();
  v14 = sub_74C98();
  v13(v5, v2);
  return sqlite3_bind_int64(a1, 3, v14);
}

uint64_t sub_4B064(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v50 = a3;
  v51 = sub_750F8();
  v7 = *(v51 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v51);
  v49 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_754B8();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v43 - v14;
  v16 = [a1 protectedDatabase];
  if (v16)
  {
    v17 = v16;
    v45 = a2;
    v46 = v13;
    v43 = v10;
    v44 = v9;
    aBlock = 0;
    v53 = 0xE000000000000000;
    sub_75908(177);
    v58._countAndFlagsBits = 0xD000000000000010;
    v58._object = 0x8000000000079200;
    sub_75608(v58);
    v59._countAndFlagsBits = 0x6361437472617473;
    v59._object = 0xEF7865646E496568;
    sub_75608(v59);
    v60._countAndFlagsBits = 8236;
    v60._object = 0xE200000000000000;
    sub_75608(v60);
    v47 = a4;
    v61._countAndFlagsBits = 0x6568636143646E65;
    v61._object = 0xED00007865646E49;
    sub_75608(v61);
    v62._countAndFlagsBits = 8236;
    v62._object = 0xE200000000000000;
    sub_75608(v62);
    v63._object = 0x80000000000773B0;
    v63._countAndFlagsBits = 0xD000000000000016;
    sub_75608(v63);
    v64._countAndFlagsBits = 0x204D4F524620;
    v64._object = 0xE600000000000000;
    sub_75608(v64);
    v65._object = 0x80000000000791C0;
    v65._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v65);
    v66._countAndFlagsBits = 0x20455245485720;
    v66._object = 0xE700000000000000;
    sub_75608(v66);
    v67._countAndFlagsBits = 0x6568636143646E65;
    v67._object = 0xED00007865646E49;
    sub_75608(v67);
    v68._countAndFlagsBits = 0x454C455328203D20;
    v68._object = 0xEF2858414D205443;
    sub_75608(v68);
    v69._countAndFlagsBits = 0x6568636143646E65;
    v69._object = 0xED00007865646E49;
    sub_75608(v69);
    v70._countAndFlagsBits = 0x204D4F52462029;
    v70._object = 0xE700000000000000;
    sub_75608(v70);
    v71._object = 0x80000000000791C0;
    v71._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v71);
    v72._countAndFlagsBits = 0x20455245485720;
    v72._object = 0xE700000000000000;
    sub_75608(v72);
    v73._countAndFlagsBits = 0x6E6F6973726576;
    v73._object = 0xE700000000000000;
    sub_75608(v73);
    v48 = v17;
    v74._object = 0x8000000000078E00;
    v74._countAndFlagsBits = 0xD00000000000001ELL;
    sub_75608(v74);
    v75._object = 0x80000000000791C0;
    v75._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v75);
    v76._countAndFlagsBits = 0x20444E412029;
    v76._object = 0xE600000000000000;
    sub_75608(v76);
    v77._object = 0x80000000000773B0;
    v77._countAndFlagsBits = 0xD000000000000016;
    sub_75608(v77);
    v78._countAndFlagsBits = 0x4120293F203D3D20;
    v78._object = 0xEB0000000020444ELL;
    sub_75608(v78);
    v79._countAndFlagsBits = 0x6E6F6973726576;
    v79._object = 0xE700000000000000;
    sub_75608(v79);
    v80._object = 0x8000000000078E00;
    v18 = v48;
    v80._countAndFlagsBits = 0xD00000000000001ELL;
    sub_75608(v80);
    v81._object = 0x80000000000791C0;
    v81._countAndFlagsBits = 0xD000000000000033;
    sub_75608(v81);
    v82._countAndFlagsBits = 0x20444E412029;
    v82._object = 0xE600000000000000;
    sub_75608(v82);
    v83._object = 0x80000000000773B0;
    v83._countAndFlagsBits = 0xD000000000000016;
    sub_75608(v83);
    v84._countAndFlagsBits = 0x3B3F203D3D20;
    v84._object = 0xE600000000000000;
    sub_75608(v84);
    v19 = sub_75598();

    v20 = v49;
    v21 = v51;
    (*(v7 + 16))(v49, v50, v51);
    v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
    v23 = swift_allocObject();
    (*(v7 + 32))(v23 + v22, v20, v21);
    v24 = swift_allocObject();
    *(v24 + 16) = sub_4E870;
    *(v24 + 24) = v23;
    v56 = sub_303D0;
    v57 = v24;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_644E0;
    v55 = &unk_889D0;
    v25 = _Block_copy(&aBlock);

    v26 = swift_allocObject();
    *(v26 + 16) = v47;
    v27 = swift_allocObject();
    *(v27 + 16) = sub_4E9C0;
    *(v27 + 24) = v26;
    v56 = sub_43BA8;
    v57 = v27;
    aBlock = _NSConcreteStackBlock;
    v53 = 1107296256;
    v54 = sub_4F494;
    v55 = &unk_88A48;
    v28 = _Block_copy(&aBlock);

    aBlock = 0;
    LOBYTE(v20) = [v18 executeSQL:v19 error:&aBlock bindingHandler:v25 enumerationHandler:v28];
    _Block_release(v28);
    _Block_release(v25);

    if (v20)
    {
      v29 = aBlock;

      return 1;
    }

    v35 = aBlock;
    sub_74898();

    swift_willThrow();
    v36 = v46;
    sub_75378();
    swift_errorRetain();
    v37 = sub_754A8();
    v38 = sub_75718();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v39 = 138412290;
      swift_errorRetain();
      v41 = _swift_stdlib_bridgeErrorToNSError();
      *(v39 + 4) = v41;
      *v40 = v41;
      _os_log_impl(&dword_0, v37, v38, "Failed to list all cache indexes %@", v39, 0xCu);
      sub_3D48(v40, &unk_8EB30, &unk_7A270);
      v18 = v48;

      v36 = v46;
    }

    (*(v43 + 8))(v36, v44);
    v42 = v45;
    if (v45)
    {
      *v42 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v31 = sub_754A8();
    v32 = sub_75718();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_0, v31, v32, "Failed to list cache indexes: no protected database", v33, 2u);
    }

    (*(v10 + 8))(v15, v9);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v34 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_4B8E4(sqlite3_stmt *a1)
{
  sub_750E8();
  if (qword_8E9E0 != -1)
  {
    swift_once();
  }

  v2 = qword_90000;
  v3 = sub_755C8();

  sqlite3_bind_text(a1, 1, (v3 + 32), -1, v2);

  sub_750E8();
  v4 = sub_755C8();

  sqlite3_bind_text(a1, 2, (v4 + 32), -1, v2);
}

uint64_t sub_4B9DC(uint64_t a1, uint64_t a2, char **a3)
{
  v5 = sub_38F8(&qword_8EB18, &qword_7A950);
  __chkstk_darwin(v5 - 8);
  v7 = &v22 - v6;
  v8 = sub_751D8();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v22 - v13;
  sub_4E9F8(a1, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_3D48(v7, &qword_8EB18, &qword_7A950);
  }

  else
  {
    v15 = *(v9 + 32);
    v15(v14, v7, v8);
    (*(v9 + 16))(v12, v14, v8);
    v16 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = sub_675F4(0, *(v16 + 2) + 1, 1, v16);
      *a3 = v16;
    }

    v19 = *(v16 + 2);
    v18 = *(v16 + 3);
    if (v19 >= v18 >> 1)
    {
      *a3 = sub_675F4((v18 > 1), v19 + 1, 1, v16);
    }

    (*(v9 + 8))(v14, v8);
    v20 = *a3;
    *(v20 + 2) = v19 + 1;
    v15(&v20[((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v19], v12, v8);
  }

  return 1;
}

Swift::Int sub_4BC50(uint64_t *a1)
{
  v2 = *(sub_751D8() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_430B0(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_4BD7C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_4BCF8(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_430C4(v5);
  }

  result = sub_4BEA8(a1, a2);
  *v2 = v5;
  return result;
}

Swift::Int sub_4BD7C(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_75A28(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_751D8();
        v6 = sub_756C8();
        v6[2] = v5;
      }

      v7 = *(sub_751D8() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_4C420(v8, v9, a1, v4);
      v6[2] = 0;
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
    return sub_4BFB0(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_4BEA8(uint64_t (*a1)(uint64_t *, uint64_t *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_75A28(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      if (v5 < 2)
      {
        v8 = _swiftEmptyArrayStorage;
      }

      else
      {
        v8 = sub_756C8();
        v8[2] = v5 / 2;
      }

      v10[0] = v8 + 4;
      v10[1] = v5 / 2;
      v9 = v8;
      sub_4D020(v10, v11, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_4C350(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_4BFB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v60 = sub_74CA8();
  v8 = *(v60 - 8);
  v9 = __chkstk_darwin(v60);
  v59 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v58 = &v41 - v11;
  v12 = sub_751D8();
  v13 = __chkstk_darwin(v12);
  v51 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v57 = &v41 - v16;
  result = __chkstk_darwin(v15);
  v56 = &v41 - v19;
  v43 = a2;
  if (a3 != a2)
  {
    v20 = *a4;
    v22 = *(v18 + 16);
    v21 = v18 + 16;
    v23 = *(v21 + 56);
    v53 = (v8 + 8);
    v54 = v22;
    v52 = (v21 - 8);
    v55 = v21;
    v24 = (v20 + v23 * (a3 - 1));
    v48 = -v23;
    v49 = (v21 + 16);
    v25 = a1 - a3;
    v50 = v20;
    v42 = v23;
    v26 = v20 + v23 * a3;
    v27 = v58;
LABEL_5:
    v46 = v24;
    v47 = a3;
    v44 = v26;
    v45 = v25;
    v61 = v25;
    while (1)
    {
      v28 = v56;
      v29 = v54;
      v54(v56, v26, v12);
      v30 = v12;
      v31 = v57;
      v29(v57, v24, v30);
      sub_75198();
      v32 = v59;
      sub_75198();
      v62 = sub_74C78();
      v33 = *v53;
      v34 = v32;
      v35 = v60;
      (*v53)(v34, v60);
      v33(v27, v35);
      v36 = *v52;
      v37 = v31;
      v12 = v30;
      (*v52)(v37, v30);
      result = v36(v28, v30);
      if ((v62 & 1) == 0)
      {
LABEL_4:
        a3 = v47 + 1;
        v24 = &v46[v42];
        v25 = v45 - 1;
        v26 = v44 + v42;
        if (v47 + 1 == v43)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v50)
      {
        break;
      }

      v38 = *v49;
      v39 = v51;
      (*v49)(v51, v26, v30);
      swift_arrayInitWithTakeFrontToBack();
      result = v38(v24, v39, v30);
      v24 += v48;
      v26 += v48;
      if (__CFADD__(v61++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_4C350(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *))
{
  if (a3 != a2)
  {
    v7 = a3;
    v9 = *v4;
    v10 = *v4 + 8 * a3 - 8;
    v11 = result - a3;
LABEL_4:
    v12 = *(v9 + 8 * v7);
    v13 = v11;
    v14 = v10;
    while (1)
    {
      v18 = v12;
      v17 = *v14;
      result = a4(&v18, &v17);
      if (v5)
      {
        break;
      }

      if (result)
      {
        if (!v9)
        {
          __break(1u);
          return result;
        }

        v15 = *v14;
        v12 = v14[1];
        *v14 = v12;
        v14[1] = v15;
        --v14;
        if (!__CFADD__(v13++, 1))
        {
          continue;
        }
      }

      ++v7;
      v10 += 8;
      --v11;
      if (v7 != a2)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_4C420(char **a1, uint64_t a2, char *a3, uint64_t a4)
{
  v5 = v4;
  v137 = a1;
  v159 = sub_74CA8();
  v8 = *(v159 - 8);
  v9 = __chkstk_darwin(v159);
  v158 = &v133 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v157 = &v133 - v11;
  v12 = sub_751D8();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v140 = &v133 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v149 = &v133 - v17;
  v18 = __chkstk_darwin(v16);
  v156 = &v133 - v19;
  result = __chkstk_darwin(v18);
  v160 = &v133 - v21;
  v22 = *(a3 + 1);
  v145 = a3;
  if (v22 < 1)
  {
    v24 = _swiftEmptyArrayStorage;
LABEL_96:
    v12 = v24;
    v24 = *v137;
    if (!*v137)
    {
      goto LABEL_134;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v52 = v145;
    if ((result & 1) == 0)
    {
LABEL_128:
      result = sub_4249C(v12);
      v12 = result;
    }

    v162 = v12;
    v129 = *(v12 + 16);
    if (v129 >= 2)
    {
      while (*v52)
      {
        v130 = *(v12 + 16 * v129);
        v131 = *(v12 + 16 * (v129 - 1) + 40);
        sub_4D638(*v52 + *(v13 + 72) * v130, *v52 + *(v13 + 72) * *(v12 + 16 * (v129 - 1) + 32), *v52 + *(v13 + 72) * v131, v24);
        if (v5)
        {
        }

        if (v131 < v130)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_4249C(v12);
        }

        if (v129 - 2 >= *(v12 + 16))
        {
          goto LABEL_122;
        }

        v132 = (v12 + 16 * v129);
        *v132 = v130;
        v132[1] = v131;
        v162 = v12;
        result = sub_42410(v129 - 1);
        v12 = v162;
        v129 = *(v162 + 16);
        if (v129 <= 1)
        {
        }
      }

      goto LABEL_132;
    }
  }

  v133 = a4;
  v23 = 0;
  v153 = (v8 + 8);
  v154 = v13 + 16;
  v151 = (v13 + 32);
  v152 = (v13 + 8);
  v24 = _swiftEmptyArrayStorage;
  v155 = v12;
  v136 = v13;
  while (1)
  {
    v25 = v23 + 1;
    if (v23 + 1 >= v22)
    {
      v41 = v23 + 1;
      v52 = v145;
    }

    else
    {
      v146 = v22;
      v134 = v24;
      v135 = v5;
      v26 = v23;
      v138 = v23;
      v27 = *v145;
      v161 = v27;
      v28 = *(v13 + 72);
      v29 = (v27 + v28 * v25);
      v30 = v12;
      v31 = *(v13 + 16);
      (v31)(v160, v29, v12);
      v32 = v156;
      v147 = v31;
      (v31)(v156, v27 + v28 * v26, v30);
      v33 = v157;
      sub_75198();
      v34 = v158;
      sub_75198();
      LODWORD(v148) = sub_74C78();
      v35 = *v153;
      v36 = v34;
      v37 = v159;
      (*v153)(v36, v159);
      v144 = v35;
      (v35)(v33, v37);
      v38 = *(v136 + 8);
      v24 = v152;
      v38(v32, v30);
      v143 = v38;
      result = (v38)(v160, v30);
      v39 = v138 + 2;
      v150 = v28;
      v40 = v161 + v28 * (v138 + 2);
      while (1)
      {
        v41 = v146;
        if (v146 == v39)
        {
          break;
        }

        v42 = v155;
        v43 = v147;
        v147();
        v44 = v156;
        v43(v156, v29, v42);
        v45 = v157;
        sub_75198();
        v46 = v158;
        sub_75198();
        LOBYTE(v161) = sub_74C78() & 1;
        LODWORD(v161) = v161;
        v47 = v46;
        v48 = v159;
        v49 = v29;
        v50 = v144;
        (v144)(v47, v159);
        v50(v45, v48);
        v24 = v152;
        v51 = v143;
        (v143)(v44, v42);
        result = v51(v160, v42);
        ++v39;
        v40 += v150;
        v29 = &v150[v49];
        if ((v148 & 1) != v161)
        {
          v41 = v39 - 1;
          goto LABEL_9;
        }
      }

      v5 = v135;
      v52 = v145;
      v13 = v136;
      v12 = v155;
      v23 = v138;
      if ((v148 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_9:
      if (v41 < v138)
      {
        goto LABEL_125;
      }

      if (v138 < v41)
      {
        v53 = v41;
        v54 = v150 * (v41 - 1);
        v55 = v41 * v150;
        v146 = v41;
        v56 = v138;
        v57 = v138 * v150;
        do
        {
          if (v56 != --v53)
          {
            v58 = *v52;
            if (!v58)
            {
              goto LABEL_131;
            }

            v59 = *v151;
            (*v151)(v140, v58 + v57, v12);
            if (v57 < v54 || v58 + v57 >= (v58 + v55))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v57 != v54)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = (v59)(v58 + v54, v140, v12);
            v52 = v145;
          }

          ++v56;
          v54 -= v150;
          v55 -= v150;
          v57 += v150;
        }

        while (v56 < v53);
        v5 = v135;
        v13 = v136;
        v24 = v134;
        v23 = v138;
        v41 = v146;
      }

      else
      {
LABEL_23:
        v24 = v134;
      }
    }

    v60 = v52[1];
    if (v41 < v60)
    {
      if (__OFSUB__(v41, v23))
      {
        goto LABEL_124;
      }

      if (v41 - v23 < v133)
      {
        if (__OFADD__(v23, v133))
        {
          goto LABEL_126;
        }

        if (v23 + v133 >= v60)
        {
          v61 = v52[1];
        }

        else
        {
          v61 = v23 + v133;
        }

        if (v61 < v23)
        {
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (v41 != v61)
        {
          break;
        }
      }
    }

    v62 = v41;
    if (v41 < v23)
    {
      goto LABEL_123;
    }

LABEL_35:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_42684(0, *(v24 + 2) + 1, 1, v24);
      v24 = result;
    }

    v64 = *(v24 + 2);
    v63 = *(v24 + 3);
    v65 = v64 + 1;
    v52 = v13;
    if (v64 >= v63 >> 1)
    {
      result = sub_42684((v63 > 1), v64 + 1, 1, v24);
      v24 = result;
    }

    *(v24 + 2) = v65;
    v66 = &v24[16 * v64];
    *(v66 + 4) = v23;
    *(v66 + 5) = v62;
    v67 = *v137;
    if (!*v137)
    {
      goto LABEL_133;
    }

    v141 = v62;
    if (v64)
    {
      v13 = v67;
      while (1)
      {
        v68 = v65 - 1;
        if (v65 >= 4)
        {
          break;
        }

        if (v65 == 3)
        {
          v69 = *(v24 + 4);
          v70 = *(v24 + 5);
          v79 = __OFSUB__(v70, v69);
          v71 = v70 - v69;
          v72 = v79;
LABEL_55:
          if (v72)
          {
            goto LABEL_112;
          }

          v85 = &v24[16 * v65];
          v87 = *v85;
          v86 = *(v85 + 1);
          v88 = __OFSUB__(v86, v87);
          v89 = v86 - v87;
          v90 = v88;
          if (v88)
          {
            goto LABEL_115;
          }

          v91 = &v24[16 * v68 + 32];
          v93 = *v91;
          v92 = *(v91 + 1);
          v79 = __OFSUB__(v92, v93);
          v94 = v92 - v93;
          if (v79)
          {
            goto LABEL_118;
          }

          if (__OFADD__(v89, v94))
          {
            goto LABEL_119;
          }

          if (v89 + v94 >= v71)
          {
            if (v71 < v94)
            {
              v68 = v65 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v95 = &v24[16 * v65];
        v97 = *v95;
        v96 = *(v95 + 1);
        v79 = __OFSUB__(v96, v97);
        v89 = v96 - v97;
        v90 = v79;
LABEL_69:
        if (v90)
        {
          goto LABEL_114;
        }

        v98 = &v24[16 * v68];
        v100 = *(v98 + 4);
        v99 = *(v98 + 5);
        v79 = __OFSUB__(v99, v100);
        v101 = v99 - v100;
        if (v79)
        {
          goto LABEL_117;
        }

        if (v101 < v89)
        {
          goto LABEL_3;
        }

LABEL_76:
        v106 = v68 - 1;
        if (v68 - 1 >= v65)
        {
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
          goto LABEL_127;
        }

        if (!*v145)
        {
          goto LABEL_130;
        }

        v107 = *&v24[16 * v106 + 32];
        v108 = *&v24[16 * v68 + 40];
        sub_4D638(*v145 + v52[9] * v107, *v145 + v52[9] * *&v24[16 * v68 + 32], *v145 + v52[9] * v108, v13);
        if (v5)
        {
        }

        if (v108 < v107)
        {
          goto LABEL_108;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v24 = sub_4249C(v24);
        }

        if (v106 >= *(v24 + 2))
        {
          goto LABEL_109;
        }

        v109 = &v24[16 * v106];
        *(v109 + 4) = v107;
        *(v109 + 5) = v108;
        v162 = v24;
        result = sub_42410(v68);
        v24 = v162;
        v65 = *(v162 + 16);
        if (v65 <= 1)
        {
          goto LABEL_3;
        }
      }

      v73 = &v24[16 * v65 + 32];
      v74 = *(v73 - 64);
      v75 = *(v73 - 56);
      v79 = __OFSUB__(v75, v74);
      v76 = v75 - v74;
      if (v79)
      {
        goto LABEL_110;
      }

      v78 = *(v73 - 48);
      v77 = *(v73 - 40);
      v79 = __OFSUB__(v77, v78);
      v71 = v77 - v78;
      v72 = v79;
      if (v79)
      {
        goto LABEL_111;
      }

      v80 = &v24[16 * v65];
      v82 = *v80;
      v81 = *(v80 + 1);
      v79 = __OFSUB__(v81, v82);
      v83 = v81 - v82;
      if (v79)
      {
        goto LABEL_113;
      }

      v79 = __OFADD__(v71, v83);
      v84 = v71 + v83;
      if (v79)
      {
        goto LABEL_116;
      }

      if (v84 >= v76)
      {
        v102 = &v24[16 * v68 + 32];
        v104 = *v102;
        v103 = *(v102 + 1);
        v79 = __OFSUB__(v103, v104);
        v105 = v103 - v104;
        if (v79)
        {
          goto LABEL_120;
        }

        if (v71 < v105)
        {
          v68 = v65 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v22 = *(v145 + 1);
    v23 = v141;
    v13 = v52;
    if (v141 >= v22)
    {
      goto LABEL_96;
    }
  }

  v134 = v24;
  v135 = v5;
  v110 = *v52;
  v111 = *(v13 + 72);
  v150 = *(v13 + 16);
  v112 = (v110 + v111 * (v41 - 1));
  v147 = -v111;
  v138 = v23;
  v113 = (v23 - v41);
  v148 = v110;
  v139 = v111;
  v114 = v110 + v41 * v111;
  v141 = v61;
LABEL_87:
  v146 = v41;
  v142 = v114;
  v143 = v113;
  v115 = v114;
  v144 = v112;
  v116 = v112;
  while (1)
  {
    v52 = v160;
    v117 = v150;
    (v150)(v160, v115, v12);
    v118 = v156;
    v117(v156, v116, v12);
    v119 = v157;
    sub_75198();
    v120 = v158;
    sub_75198();
    LODWORD(v161) = sub_74C78();
    v121 = *v153;
    v122 = v120;
    v123 = v159;
    (*v153)(v122, v159);
    v124 = v119;
    v12 = v155;
    v121(v124, v123);
    v125 = *v152;
    (*v152)(v118, v12);
    result = v125(v52, v12);
    if ((v161 & 1) == 0)
    {
LABEL_86:
      v41 = v146 + 1;
      v112 = &v144[v139];
      v113 = v143 - 1;
      v62 = v141;
      v114 = v142 + v139;
      if (v146 + 1 != v141)
      {
        goto LABEL_87;
      }

      v5 = v135;
      v13 = v136;
      v24 = v134;
      v23 = v138;
      if (v141 < v138)
      {
        goto LABEL_123;
      }

      goto LABEL_35;
    }

    if (!v148)
    {
      break;
    }

    v126 = *v151;
    v127 = v149;
    (*v151)(v149, v115, v12);
    swift_arrayInitWithTakeFrontToBack();
    v126(v116, v127, v12);
    v116 = v147 + v116;
    v115 += v147;
    if (__CFADD__(v113++, 1))
    {
      goto LABEL_86;
    }
  }

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
  return result;
}

uint64_t sub_4D020(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t (*a4)(uint64_t *, uint64_t *), uint64_t a5, uint64_t a6)
{
  v88 = result;
  v9 = a3[1];
  if (v9 < 1)
  {
    v11 = _swiftEmptyArrayStorage;
LABEL_91:
    v7 = *v88;
    if (*v88)
    {
      v9 = v6;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_120;
      }

      goto LABEL_93;
    }

    goto LABEL_129;
  }

  v10 = 0;
  v11 = _swiftEmptyArrayStorage;
  while (1)
  {
    v12 = v10;
    v13 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      goto LABEL_15;
    }

    v14 = *a3;
    v15 = *(*a3 + 8 * v13);
    v90 = *(*a3 + 8 * v10);
    v91 = v15;
    result = a4(&v91, &v90);
    if (v6)
    {
    }

    v16 = v12;
    v17 = result;
    v18 = (v14 + 8 * v16 + 16);
    v85 = v16;
    v7 = v16;
    while (v9 - 2 != v7)
    {
      v19 = *v18;
      v90 = *(v18 - 1);
      v91 = v19;
      result = a4(&v91, &v90);
      ++v7;
      ++v18;
      if ((v17 ^ result))
      {
        v9 = v7 + 1;
        if ((v17 & 1) == 0)
        {
          goto LABEL_10;
        }

LABEL_12:
        v12 = v85;
        if (v9 >= v85)
        {
          if (v85 <= v7)
          {
            v73 = v9 - 1;
            v74 = v85;
            do
            {
              if (v74 != v73)
              {
                v76 = *a3;
                if (!*a3)
                {
                  goto LABEL_127;
                }

                v77 = *(v76 + 8 * v74);
                *(v76 + 8 * v74) = *(v76 + 8 * v73);
                *(v76 + 8 * v73) = v77;
              }
            }

            while (++v74 < v73--);
          }

          v13 = v9;
          goto LABEL_15;
        }

LABEL_123:
        __break(1u);
LABEL_124:
        __break(1u);
LABEL_125:
        __break(1u);
        goto LABEL_126;
      }
    }

    v7 = v9 - 1;
    if (v17)
    {
      goto LABEL_12;
    }

LABEL_10:
    v13 = v9;
    v12 = v85;
LABEL_15:
    v20 = a3[1];
    if (v13 >= v20)
    {
      goto LABEL_132;
    }

    if (__OFSUB__(v13, v12))
    {
      goto LABEL_119;
    }

    if (v13 - v12 >= a6)
    {
      goto LABEL_132;
    }

    if (__OFADD__(v12, a6))
    {
      __break(1u);
LABEL_122:
      __break(1u);
      goto LABEL_123;
    }

    if (v12 + a6 >= v20)
    {
      v21 = a3[1];
    }

    else
    {
      v21 = v12 + a6;
    }

    if (v21 < v12)
    {
      goto LABEL_122;
    }

    if (v13 == v21)
    {
LABEL_132:
      if (v13 < v12)
      {
        goto LABEL_118;
      }
    }

    else
    {
      v67 = v12;
      v68 = *a3;
      v7 = *a3 + 8 * v13 - 8;
      v87 = v67;
      v9 = v67 - v13;
      v82 = v21;
      do
      {
        v69 = *(v68 + 8 * v13);
        v70 = v9;
        v83 = v7;
        do
        {
          v91 = v69;
          v90 = *v7;
          result = a4(&v91, &v90);
          if (v6)
          {
          }

          if ((result & 1) == 0)
          {
            break;
          }

          if (!v68)
          {
            goto LABEL_125;
          }

          v71 = *v7;
          v69 = *(v7 + 8);
          *v7 = v69;
          *(v7 + 8) = v71;
          v7 -= 8;
        }

        while (!__CFADD__(v70++, 1));
        ++v13;
        v7 = v83 + 8;
        --v9;
      }

      while (v13 != v82);
      v13 = v82;
      v12 = v87;
      if (v82 < v87)
      {
        goto LABEL_118;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_42684(0, *(v11 + 2) + 1, 1, v11);
      v11 = result;
    }

    v7 = *(v11 + 2);
    v22 = *(v11 + 3);
    v23 = v7 + 1;
    if (v7 >= v22 >> 1)
    {
      result = sub_42684((v22 > 1), v7 + 1, 1, v11);
      v11 = result;
    }

    *(v11 + 2) = v23;
    v24 = &v11[16 * v7];
    *(v24 + 4) = v12;
    *(v24 + 5) = v13;
    v25 = *v88;
    if (!*v88)
    {
      goto LABEL_128;
    }

    v86 = v13;
    if (v7)
    {
      break;
    }

LABEL_3:
    v9 = a3[1];
    v10 = v86;
    if (v86 >= v9)
    {
      goto LABEL_91;
    }
  }

  while (1)
  {
    v26 = v23 - 1;
    if (v23 >= 4)
    {
      v31 = &v11[16 * v23 + 32];
      v32 = *(v31 - 64);
      v33 = *(v31 - 56);
      v37 = __OFSUB__(v33, v32);
      v34 = v33 - v32;
      if (v37)
      {
        goto LABEL_105;
      }

      v36 = *(v31 - 48);
      v35 = *(v31 - 40);
      v37 = __OFSUB__(v35, v36);
      v29 = v35 - v36;
      v30 = v37;
      if (v37)
      {
        goto LABEL_106;
      }

      v38 = &v11[16 * v23];
      v40 = *v38;
      v39 = *(v38 + 1);
      v37 = __OFSUB__(v39, v40);
      v41 = v39 - v40;
      if (v37)
      {
        goto LABEL_108;
      }

      v37 = __OFADD__(v29, v41);
      v42 = v29 + v41;
      if (v37)
      {
        goto LABEL_111;
      }

      if (v42 >= v34)
      {
        v60 = &v11[16 * v26 + 32];
        v62 = *v60;
        v61 = *(v60 + 1);
        v37 = __OFSUB__(v61, v62);
        v63 = v61 - v62;
        if (v37)
        {
          goto LABEL_117;
        }

        if (v29 < v63)
        {
          v26 = v23 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_44;
    }

    if (v23 == 3)
    {
      v27 = *(v11 + 4);
      v28 = *(v11 + 5);
      v37 = __OFSUB__(v28, v27);
      v29 = v28 - v27;
      v30 = v37;
LABEL_44:
      if (v30)
      {
        goto LABEL_107;
      }

      v43 = &v11[16 * v23];
      v45 = *v43;
      v44 = *(v43 + 1);
      v46 = __OFSUB__(v44, v45);
      v47 = v44 - v45;
      v48 = v46;
      if (v46)
      {
        goto LABEL_110;
      }

      v49 = &v11[16 * v26 + 32];
      v51 = *v49;
      v50 = *(v49 + 1);
      v37 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v37)
      {
        goto LABEL_113;
      }

      if (__OFADD__(v47, v52))
      {
        goto LABEL_114;
      }

      if (v47 + v52 >= v29)
      {
        if (v29 < v52)
        {
          v26 = v23 - 2;
        }

        goto LABEL_65;
      }

      goto LABEL_58;
    }

    v53 = &v11[16 * v23];
    v55 = *v53;
    v54 = *(v53 + 1);
    v37 = __OFSUB__(v54, v55);
    v47 = v54 - v55;
    v48 = v37;
LABEL_58:
    if (v48)
    {
      goto LABEL_109;
    }

    v56 = &v11[16 * v26];
    v58 = *(v56 + 4);
    v57 = *(v56 + 5);
    v37 = __OFSUB__(v57, v58);
    v59 = v57 - v58;
    if (v37)
    {
      goto LABEL_112;
    }

    if (v59 < v47)
    {
      goto LABEL_3;
    }

LABEL_65:
    v9 = v26 - 1;
    if (v26 - 1 >= v23)
    {
      break;
    }

    if (!*a3)
    {
      goto LABEL_124;
    }

    v64 = *&v11[16 * v9 + 32];
    v65 = *&v11[16 * v26 + 40];
    sub_4DD14((*a3 + 8 * v64), (*a3 + 8 * *&v11[16 * v26 + 32]), (*a3 + 8 * v65), v25, a4);
    if (v6)
    {
    }

    if (v65 < v64)
    {
      goto LABEL_103;
    }

    v7 = 0;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_4249C(v11);
    }

    if (v9 >= *(v11 + 2))
    {
      goto LABEL_104;
    }

    v66 = &v11[16 * v9];
    *(v66 + 4) = v64;
    *(v66 + 5) = v65;
    v92 = v11;
    result = sub_42410(v26);
    v11 = v92;
    v23 = *(v92 + 2);
    if (v23 <= 1)
    {
      goto LABEL_3;
    }
  }

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
  result = sub_4249C(v11);
  v11 = result;
LABEL_93:
  v92 = v11;
  v78 = *(v11 + 2);
  if (v78 < 2)
  {
  }

  while (*a3)
  {
    v79 = *&v11[16 * v78];
    v80 = *&v11[16 * v78 + 24];
    sub_4DD14((*a3 + 8 * v79), (*a3 + 8 * *&v11[16 * v78 + 16]), (*a3 + 8 * v80), v7, a4);
    if (v9)
    {
    }

    if (v80 < v79)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v11 = sub_4249C(v11);
    }

    if (v78 - 2 >= *(v11 + 2))
    {
      goto LABEL_116;
    }

    v81 = &v11[16 * v78];
    *v81 = v79;
    *(v81 + 1) = v80;
    v92 = v11;
    result = sub_42410(v78 - 1);
    v11 = v92;
    v78 = *(v92 + 2);
    if (v78 <= 1)
    {
    }
  }

LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
  return result;
}

uint64_t sub_4D638(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v73 = a3;
  v68 = sub_74CA8();
  v7 = *(v68 - 8);
  v8 = __chkstk_darwin(v68);
  v67 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v66 = &v56 - v10;
  v72 = sub_751D8();
  v11 = *(v72 - 8);
  v12 = __chkstk_darwin(v72);
  v65 = &v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v12);
  v70 = &v56 - v15;
  v17 = *(v16 + 72);
  if (!v17)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_61;
  }

  v18 = v73 - a2;
  if (v73 - a2 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_62;
  }

  v19 = (a2 - a1) / v17;
  v76 = a1;
  v75 = a4;
  if (v19 >= v18 / v17)
  {
    v21 = v18 / v17 * v17;
    if (a4 < a2 || a2 + v21 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v38 = a4 + v21;
    if (v21 >= 1)
    {
      v39 = -v17;
      v60 = (v7 + 8);
      v61 = (v11 + 16);
      v58 = a4;
      v59 = (v11 + 8);
      v40 = v38;
      v71 = a1;
      v62 = -v17;
      v41 = v72;
      while (2)
      {
        while (1)
        {
          v56 = v38;
          v42 = a2;
          v43 = a2 + v39;
          v63 = v42;
          v64 = v43;
          while (1)
          {
            v44 = v73;
            if (v42 <= a1)
            {
              v76 = v42;
              v74 = v56;
              goto LABEL_59;
            }

            v57 = v38;
            v73 += v39;
            v45 = v40 + v39;
            v46 = *v61;
            (*v61)();
            v47 = v65;
            (v46)(v65, v43, v41);
            v48 = v66;
            sub_75198();
            v49 = v67;
            sub_75198();
            v69 = sub_74C78();
            v50 = *v60;
            v51 = v49;
            v52 = v68;
            (*v60)(v51, v68);
            v50(v48, v52);
            v53 = *v59;
            (*v59)(v47, v41);
            v53(v70, v41);
            if (v69)
            {
              break;
            }

            v38 = v45;
            v54 = v58;
            if (v44 < v40 || v73 >= v40)
            {
              swift_arrayInitWithTakeFrontToBack();
              v43 = v64;
              v39 = v62;
            }

            else
            {
              v43 = v64;
              v39 = v62;
              if (v44 != v40)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v40 = v45;
            a1 = v71;
            v42 = v63;
            if (v45 <= v54)
            {
              a2 = v63;
              goto LABEL_58;
            }
          }

          v55 = v58;
          if (v44 < v63 || v73 >= v63)
          {
            break;
          }

          a2 = v64;
          a1 = v71;
          v38 = v57;
          v39 = v62;
          if (v44 != v63)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v40 <= v55)
          {
            goto LABEL_58;
          }
        }

        a2 = v64;
        swift_arrayInitWithTakeFrontToBack();
        a1 = v71;
        v38 = v57;
        v39 = v62;
        if (v40 > v55)
        {
          continue;
        }

        break;
      }
    }

LABEL_58:
    v76 = a2;
    v74 = v38;
  }

  else
  {
    v20 = v19 * v17;
    if (a4 < a1 || a1 + v20 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v64 = a4 + v20;
    v74 = a4 + v20;
    if (v20 >= 1 && a2 < v73)
    {
      v23 = *(v11 + 16);
      v60 = (v7 + 8);
      v61 = v23;
      v62 = v17;
      v63 = v11 + 16;
      v59 = (v11 + 8);
      v24 = v72;
      do
      {
        v71 = a1;
        v25 = v70;
        v26 = v61;
        (v61)(v70, a2, v24);
        v27 = v65;
        (v26)(v65, a4, v24);
        v28 = v66;
        sub_75198();
        v29 = v67;
        sub_75198();
        v69 = sub_74C78();
        v30 = a2;
        v31 = *v60;
        v32 = v29;
        v33 = a4;
        v34 = v68;
        (*v60)(v32, v68);
        v31(v28, v34);
        v35 = *v59;
        (*v59)(v27, v24);
        v35(v25, v24);
        if (v69)
        {
          v36 = v62;
          a2 = v30 + v62;
          v37 = v71;
          a4 = v33;
          if (v71 < v30 || v71 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v30)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        else
        {
          a2 = v30;
          v36 = v62;
          a4 = v33 + v62;
          v37 = v71;
          if (v71 < v33 || v71 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v71 != v33)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v75 = a4;
        }

        a1 = v37 + v36;
        v76 = a1;
      }

      while (a4 < v64 && a2 < v73);
    }
  }

LABEL_59:
  sub_425A0(&v76, &v75, &v74);
  return 1;
}

uint64_t sub_4DD14(char *__dst, char *__src, char *a3, char *a4, uint64_t (*a5)(uint64_t *, uint64_t *))
{
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v11 = __src - __dst;
  }

  v12 = v11 >> 3;
  v13 = a3 - __src;
  v14 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v14 = a3 - __src;
  }

  v15 = v14 >> 3;
  if (v12 >= v14 >> 3)
  {
    if (a4 != __src || &__src[8 * v15] <= a4)
    {
      memmove(a4, __src, 8 * v15);
    }

    v16 = &v6[8 * v15];
    if (v13 >= 8 && v8 > v9)
    {
      v20 = -v6;
      while (1)
      {
        v32 = v8;
        v8 -= 8;
        v21 = &v16[v20];
        v7 -= 8;
        v22 = v16;
        while (1)
        {
          v23 = *(v22 - 1);
          v22 -= 8;
          v35 = v23;
          v34 = *v8;
          v24 = a5(&v35, &v34);
          if (v5)
          {
            if (v21 >= 0)
            {
              v29 = v21;
            }

            else
            {
              v29 = v21 + 7;
            }

            v28 = v32;
            if (v32 >= v6 && v32 < &v6[v29 & 0xFFFFFFFFFFFFFFF8] && v32 == v6)
            {
              return 1;
            }

            v27 = 8 * (v29 >> 3);
            goto LABEL_58;
          }

          v25 = v7 + 8;
          if (v24)
          {
            break;
          }

          if (v25 != v16)
          {
            *v7 = *v22;
          }

          v21 -= 8;
          v7 -= 8;
          v16 = v22;
          if (v22 <= v6)
          {
            v16 = v22;
            v8 = v32;
            goto LABEL_52;
          }
        }

        if (v25 != v32)
        {
          *v7 = *v8;
        }

        if (v16 > v6)
        {
          v20 = -v6;
          if (v8 > v9)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_52:
    v30 = v16 - v6 + 7;
    if (v16 - v6 >= 0)
    {
      v30 = v16 - v6;
    }

    if (v8 >= v6 && v8 < &v6[v30 & 0xFFFFFFFFFFFFFFF8] && v8 == v6)
    {
      return 1;
    }

    v27 = 8 * (v30 >> 3);
    v28 = v8;
LABEL_58:
    memmove(v28, v6, v27);
    return 1;
  }

  if (a4 != __dst || &__dst[8 * v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v16 = &v6[8 * v12];
  if (v10 < 8 || v8 >= v7)
  {
LABEL_20:
    v8 = v9;
    goto LABEL_52;
  }

  while (1)
  {
    v35 = *v8;
    v34 = *v6;
    v17 = a5(&v35, &v34);
    if (v5)
    {
      break;
    }

    if ((v17 & 1) == 0)
    {
      v18 = v6;
      v19 = v9 == v6;
      v6 += 8;
      if (v19)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v9 = *v18;
      goto LABEL_18;
    }

    v18 = v8;
    v19 = v9 == v8;
    v8 += 8;
    if (!v19)
    {
      goto LABEL_17;
    }

LABEL_18:
    v9 += 8;
    if (v6 >= v16 || v8 >= v7)
    {
      goto LABEL_20;
    }
  }

  v26 = v16 - v6 + 7;
  if (v16 - v6 >= 0)
  {
    v26 = v16 - v6;
  }

  if (v9 < v6 || v9 >= &v6[v26 & 0xFFFFFFFFFFFFFFF8] || v9 != v6)
  {
    v27 = 8 * (v26 >> 3);
    v28 = v9;
    goto LABEL_58;
  }

  return 1;
}

void *sub_4E014(uint64_t a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_751D8();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin(v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v26 - v8;
  v10 = *(a1 + 16);
  result = _swiftEmptyArrayStorage;
  if (v10)
  {
    v36 = _swiftEmptyArrayStorage;
    sub_75978();
    v13 = *(v4 + 16);
    v12 = v4 + 16;
    v14 = (a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64)));
    v29 = *(v12 + 56);
    v30 = v13;
    v31 = v9;
    v32 = v12;
    v27 = (v12 - 8);
    v28 = (v12 + 40);
    do
    {
      v20 = v30;
      v30(v9, v14, v3);
      v20(v7, v9, v3);
      v21 = type metadata accessor for PropertyRecordCheckpointEntity.EntityWrapper(0);
      v22 = objc_allocWithZone(v21);
      v23 = OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry;
      v20(&v22[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_entry], v7, v3);
      (*v28)(&v22[v23], 0, 1, v3);
      sub_39E0();
      v24 = sub_74F78();
      v15 = &v22[OBJC_IVAR____TtCC25FitnessIntelligencePlugin30PropertyRecordCheckpointEntity13EntityWrapper_serializedEntity];
      *v15 = v24;
      v15[1] = v25;
      v35.receiver = v22;
      v35.super_class = v21;
      v16 = objc_msgSendSuper2(&v35, "init");
      v17 = *v27;
      (*v27)(v7, v3);
      v18 = type metadata accessor for PropertyRecordCheckpointJournalEntry();
      v19 = objc_allocWithZone(v18);
      *&v19[OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_entity] = v16;
      *&v19[OBJC_IVAR____TtC25FitnessIntelligencePlugin36PropertyRecordCheckpointJournalEntry_provenance] = v33;
      v34.receiver = v19;
      v34.super_class = v18;
      objc_msgSendSuper2(&v34, "init");
      v9 = v31;
      v17(v31, v3);
      sub_75958();
      sub_75988();
      sub_75998();
      sub_75968();
      v14 += v29;
      --v10;
    }

    while (v10);
    return v36;
  }

  return result;
}

unint64_t sub_4E2F8()
{
  result = qword_8EF18;
  if (!qword_8EF18)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_8EF18);
  }

  return result;
}

void sub_4E35C(uint64_t a1)
{
  v3 = *(sub_751D8() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_49698(a1, v1 + v4, v6, v7);
}

uint64_t sub_4E404(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_4E41C()
{
  v1 = sub_751D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_4E4B8()
{
  v1 = sub_751D8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_4E628(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = (((*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v6 + 8, v4 | 7);
}

uint64_t sub_4E6F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(v4 + v9);
  v11 = *(v4 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8));

  return a4(a1, a2, v4 + v8, v10, v11);
}

uint64_t sub_4E7E0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v1 + v5, v2);

  return _swift_deallocObject(v1, v5 + v6, v4 | 7);
}

uint64_t sub_4E89C(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(uint64_t, uint64_t))
{
  v5 = *(a2(0) - 8);
  v6 = v3 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return a3(a1, v6);
}

uint64_t sub_4E9F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = sub_74CA8();
  v4 = __chkstk_darwin(v3 - 8);
  v41 = v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v40 = v37 - v6;
  v7 = sub_38F8(&qword_8F680, &unk_7A4B0);
  __chkstk_darwin(v7 - 8);
  v9 = v37 - v8;
  v10 = sub_750F8();
  v11 = *(v10 - 8);
  v12 = __chkstk_darwin(v10);
  v39 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v38 = v37 - v14;
  v15 = sub_55A6C();
  v16 = v15[2];
  if (v16)
  {
    v17 = 0;
    v18 = v15 + 5;
    do
    {
      if (*(v18 - 1) == 0x6361437472617473 && *v18 == 0xEF7865646E496568)
      {
        break;
      }

      if (sub_75A68())
      {
        break;
      }

      ++v17;
      v18 += 2;
    }

    while (v16 != v17);
  }

  v37[2] = HDSQLiteColumnAsInt64();
  v20 = sub_55A6C();
  v21 = v20[2];
  if (v21)
  {
    v22 = 0;
    v23 = v20 + 5;
    do
    {
      if (*(v23 - 1) == 0x6568636143646E65 && *v23 == 0xED00007865646E49)
      {
        break;
      }

      if (sub_75A68())
      {
        break;
      }

      ++v22;
      v23 += 2;
    }

    while (v21 != v22);
  }

  HDSQLiteColumnAsInt64();
  v25 = sub_55A6C();
  v26 = v25[2];
  if (v26)
  {
    v37[1] = a1;
    v27 = 0;
    v28 = v25 + 5;
    do
    {
      if (*(v28 - 1) == 0xD000000000000016 && 0x80000000000773B0 == *v28)
      {
        break;
      }

      if (sub_75A68())
      {
        break;
      }

      ++v27;
      v28 += 2;
    }

    while (v26 != v27);
  }

  v30 = HDSQLiteColumnAsString();
  if (v30)
  {
    v31 = v30;
    sub_755A8();

    sub_750D8();
    if ((*(v11 + 48))(v9, 1, v10) != 1)
    {
      v34 = v38;
      (*(v11 + 32))(v38, v9, v10);
      sub_74CB8();
      sub_74CB8();
      (*(v11 + 16))(v39, v34, v10);
      v33 = v42;
      sub_751A8();
      (*(v11 + 8))(v34, v10);
      v32 = 0;
      goto LABEL_30;
    }

    sub_4EEA4(v9);
  }

  v32 = 1;
  v33 = v42;
LABEL_30:
  v35 = sub_751D8();
  return (*(*(v35 - 8) + 56))(v33, v32, 1, v35);
}

uint64_t sub_4EEA4(uint64_t a1)
{
  v2 = sub_38F8(&qword_8F680, &unk_7A4B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id WorkoutTaskServer.init(uuid:configuration:client:delegate:)(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v6 = sub_4F1B4(a1, a2, a3, a4);

  swift_unknownObjectRelease();
  return v6;
}

NSXPCInterface __swiftcall WorkoutTaskServer.exportedInterface()()
{
  v0 = [objc_opt_self() interfaceWithProtocol:&OBJC_PROTOCOL____TtP19FitnessIntelligence26WorkoutTaskServerInterface_];

  return v0;
}

id WorkoutTaskServer.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WorkoutTaskServer();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_4F1B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v21 = a3;
  v22 = a4;
  v18 = a1;
  v4 = sub_75768();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_75758();
  __chkstk_darwin(v8);
  v9 = sub_754F8();
  __chkstk_darwin(v9 - 8);
  sub_1720C();
  sub_754E8();
  v24 = _swiftEmptyArrayStorage;
  sub_17258();
  sub_38F8(&qword_8F3A0, &unk_7A440);
  sub_172B0();
  sub_75858();
  (*(v5 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v4);
  v10 = sub_75798();
  v11 = v18;
  v12 = v19;
  *&v19[OBJC_IVAR____TtC25FitnessIntelligencePlugin17WorkoutTaskServer_queue] = v10;
  isa = sub_74988().super.isa;
  v14 = type metadata accessor for WorkoutTaskServer();
  v23.receiver = v12;
  v23.super_class = v14;
  v15 = objc_msgSendSuper2(&v23, "initWithUUID:configuration:client:delegate:", isa, v20, v21, v22);

  v16 = sub_749B8();
  (*(*(v16 - 8) + 8))(v11, v16);
  return v15;
}

void sub_4F4C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5.super.isa = sub_75678().super.isa;
  if (a2)
  {
    v6 = sub_74888();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

uint64_t WorkoutTaskServer.query(startDate:endDate:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a3;
  v33 = a4;
  v37 = sub_754C8();
  v39 = *(v37 - 8);
  __chkstk_darwin(v37);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_754F8();
  v36 = *(v38 - 8);
  __chkstk_darwin(v38);
  v31 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_74968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v31 - v14;
  v34 = *&v4[OBJC_IVAR____TtC25FitnessIntelligencePlugin17WorkoutTaskServer_queue];
  v16 = *(v10 + 16);
  v16(&v31 - v14, a1, v9);
  v16(v13, a2, v9);
  v17 = *(v10 + 80);
  v18 = (v17 + 24) & ~v17;
  v19 = (v11 + v17 + v18) & ~v17;
  v20 = (v11 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  v22 = *(v10 + 32);
  v22(v21 + v18, v15, v9);
  v22(v21 + v19, v13, v9);
  v23 = (v21 + v20);
  v24 = v33;
  *v23 = v32;
  v23[1] = v24;
  aBlock[4] = sub_4FC94;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_17314;
  aBlock[3] = &unk_88A98;
  v25 = _Block_copy(aBlock);
  v26 = v4;

  v27 = v31;
  sub_754D8();
  v40 = _swiftEmptyArrayStorage;
  sub_5457C(&qword_8F3A8, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_38F8(&qword_8F3B0, &qword_7A1D8);
  sub_17B0C();
  v28 = v35;
  v29 = v37;
  sub_75858();
  sub_75788();
  _Block_release(v25);
  (*(v39 + 8))(v28, v29);
  (*(v36 + 8))(v27, v38);
}

void sub_4F964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = sub_754B8();
  __chkstk_darwin(v5);
  sub_50074(sub_503B8);
}

uint64_t sub_4FB90()
{
  v1 = sub_74968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = (v5 + v3 + v4) & ~v3;
  v7 = (v5 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;

  v8 = *(v2 + 8);
  v8(v0 + v4, v1);
  v8(v0 + v6, v1);

  return _swift_deallocObject(v0, v7 + 16, v3 | 7);
}

void sub_4FC94()
{
  v1 = *(sub_74968() - 8);
  v2 = *(v1 + 80);
  v3 = *(v1 + 64);
  v4 = (v2 + 24) & ~v2;
  v5 = (v3 + v2 + v4) & ~v2;
  v6 = *(v0 + 16);
  v7 = (v0 + ((v3 + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_4F964(v6, v0 + v4, v0 + v5, v8, v9);
}

uint64_t sub_4FD38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_4FD50(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void *, void), uint64_t a6)
{
  v36 = a6;
  v37 = a5;
  v11 = sub_74D28();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a4 client];
  v16 = [v15 profile];

  v17 = sub_53D08(a2, a3, v16, a1);
  if (!v6)
  {
    v18 = v37;
    v42 = v12;
    v43 = 0;
    v35 = v14;
    v41 = v11;
    v19 = v17[2];
    if (v19)
    {
      v44 = _swiftEmptyArrayStorage;
      sub_67DDC(0, v19, 0);
      v20 = 0;
      v21 = v44;
      v22 = v42;
      v39 = v17 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
      v38 = v42 + 16;
      v40 = (v42 + 8);
      v23 = v35;
      while (v20 < v17[2])
      {
        v24 = v19;
        v25 = v41;
        (*(v22 + 16))(v23, &v39[*(v22 + 72) * v20], v41);
        sub_5457C(&qword_8FAD8, &type metadata accessor for WorkoutRecord, &protocol conformance descriptor for WorkoutRecord);
        v26 = v43;
        v27 = sub_74F78();
        v43 = v26;
        if (v26)
        {
          (*v40)(v23, v25);

          goto LABEL_12;
        }

        v29 = v27;
        v30 = v28;
        (*v40)(v23, v25);
        v44 = v21;
        v32 = v21[2];
        v31 = v21[3];
        if (v32 >= v31 >> 1)
        {
          sub_67DDC((v31 > 1), v32 + 1, 1);
          v23 = v35;
          v21 = v44;
        }

        ++v20;
        v21[2] = v32 + 1;
        v33 = &v21[2 * v32];
        v33[4] = v29;
        v33[5] = v30;
        v19 = v24;
        v22 = v42;
        if (v24 == v20)
        {

          v37(v21, 0);
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {

      v18(_swiftEmptyArrayStorage, 0);
LABEL_12:
    }
  }
}

void sub_50074(void (*a1)(id))
{
  v3 = sub_75508();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC25FitnessIntelligencePlugin17WorkoutTaskServer_queue);
  *v6 = v7;
  (*(v4 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v3);
  v8 = v7;
  LOBYTE(v7) = sub_75518();
  (*(v4 + 8))(v6, v3);
  if (v7)
  {
    v9 = [objc_allocWithZone(HDMutableDatabaseTransactionContext) init];
    [v9 setRequiresWrite:0];
    [v9 setRequiresProtectedData:1];
    a1(v9);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_50380()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_503DC(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v54 = a5;
  v9 = sub_74968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v13 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v50 - v14;
  v16 = sub_754B8();
  v55 = *(v16 - 8);
  v56 = v16;
  v17 = __chkstk_darwin(v16);
  v53 = &v50 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v20 = &v50 - v19;
  v21 = [a1 protectedDatabase];
  if (v21)
  {
    v22 = v21;
    v51 = a2;
    v63 = 1;
    v52 = sub_75598();
    v23 = v22;
    v24 = *(v10 + 16);
    v24(v15, a3, v9);
    v24(v13, a4, v9);
    v25 = *(v10 + 80);
    v26 = (v25 + 24) & ~v25;
    v27 = (v11 + v25 + v26) & ~v25;
    v28 = swift_allocObject();
    *(v28 + 16) = &v63;
    v29 = *(v10 + 32);
    v29(v28 + v26, v15, v9);
    v29(v28 + v27, v13, v9);
    v30 = swift_allocObject();
    *(v30 + 16) = sub_54680;
    *(v30 + 24) = v28;
    v61 = sub_2FE7C;
    v62 = v30;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_644E0;
    v60 = &unk_88BB0;
    v31 = _Block_copy(&aBlock);

    v32 = swift_allocObject();
    *(v32 + 16) = v54;
    v33 = swift_allocObject();
    *(v33 + 16) = sub_54740;
    *(v33 + 24) = v32;
    v61 = sub_54748;
    v62 = v33;
    aBlock = _NSConcreteStackBlock;
    v58 = 1107296256;
    v59 = sub_4F494;
    v60 = &unk_88C28;
    v34 = _Block_copy(&aBlock);

    aBlock = 0;
    v35 = v52;
    LOBYTE(v27) = [v23 executeSQL:v52 error:&aBlock bindingHandler:v31 enumerationHandler:v34];
    _Block_release(v34);
    _Block_release(v31);

    if (v27)
    {
      v36 = aBlock;

      return 1;
    }

    v42 = aBlock;
    sub_74898();

    swift_willThrow();
    v43 = v53;
    sub_75378();
    swift_errorRetain();
    v44 = sub_754A8();
    v45 = sub_75718();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138412290;
      swift_errorRetain();
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v46 + 4) = v48;
      *v47 = v48;
      _os_log_impl(&dword_0, v44, v45, "Failed to list all cache indexes %@", v46, 0xCu);
      sub_3D48(v47, &unk_8EB30, &unk_7A270);
    }

    (*(v55 + 8))(v43, v56);
    v49 = v51;
    if (v51)
    {
      *v49 = sub_74888();
    }
  }

  else
  {
    sub_75378();
    v38 = sub_754A8();
    v39 = sub_75718();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_0, v38, v39, "Failed to list cache indexes: no protected database", v40, 2u);
    }

    (*(v55 + 8))(v20, v56);
    if (a2)
    {
      sub_19A60();
      swift_allocError();
      *v41 = 0;
      *a2 = sub_74888();
    }
  }

  return 0;
}

uint64_t sub_50A58(sqlite3_stmt *a1, int *a2)
{
  v4 = *a2;
  sub_748E8();
  result = sqlite3_bind_double(a1, v4, v5);
  v7 = __OFADD__(v4, 1);
  v8 = v4 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    *a2 = v8;
    sub_748E8();
    result = sqlite3_bind_double(a1, v8, v9);
    if (!__OFADD__(v8, 1))
    {
      *a2 = v8 + 1;
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_50ADC(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = sub_38F8(&qword_8FAE0, &qword_7A7D8);
  __chkstk_darwin(v4 - 8);
  v6 = &v21 - v5;
  v7 = sub_74D28();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v21 - v12;
  sub_50D50(v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_3D48(v6, &qword_8FAE0, &qword_7A7D8);
  }

  else
  {
    v14 = *(v8 + 32);
    v14(v13, v6, v7);
    (*(v8 + 16))(v11, v13, v7);
    v15 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v15;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v15 = sub_6786C(0, *(v15 + 2) + 1, 1, v15);
      *a3 = v15;
    }

    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    if (v18 >= v17 >> 1)
    {
      *a3 = sub_6786C((v17 > 1), v18 + 1, 1, v15);
    }

    (*(v8 + 8))(v13, v7);
    v19 = *a3;
    *(v19 + 2) = v18 + 1;
    v14(&v19[((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18], v11, v7);
  }

  return 1;
}

uint64_t sub_50D50@<X0>(uint64_t a2@<X8>)
{
  v92 = a2;
  v2 = sub_754B8();
  v89 = *(v2 - 8);
  v90 = v2;
  __chkstk_darwin(v2);
  v4 = v76 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_38F8(&unk_8FAE8, &unk_7A7E0);
  __chkstk_darwin(v5 - 8);
  v83 = v76 - v6;
  v7 = sub_74F18();
  v81 = *(v7 - 8);
  v82 = v7;
  v8 = __chkstk_darwin(v7);
  v79 = v76 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v80 = v76 - v10;
  v88 = sub_74968();
  v84 = *(v88 - 8);
  v11 = __chkstk_darwin(v88);
  v78 = v76 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v77 = v76 - v14;
  v15 = __chkstk_darwin(v13);
  v86 = v76 - v16;
  __chkstk_darwin(v15);
  v94 = v76 - v17;
  v18 = sub_749B8();
  v87 = *(v18 - 8);
  v19 = __chkstk_darwin(v18);
  v85 = v76 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v96 = v76 - v22;
  v91 = v21;
  v23 = sub_75A68();

  if ((v23 & 1) == 0)
  {
  }

  v95 = HDSQLiteColumnAsInt64();
  v24 = sub_75A68();

  if ((v24 & 1) == 0)
  {
    v25 = sub_75A68();

    if ((v25 & 1) == 0)
    {
    }
  }

  v76[2] = HDSQLiteColumnAsInt64();
  v26 = sub_75A68();

  if ((v26 & 1) == 0)
  {
    v27 = sub_75A68();

    if ((v27 & 1) == 0)
    {
      v28 = sub_75A68();

      if ((v28 & 1) == 0)
      {
      }
    }
  }

  v76[1] = HDSQLiteColumnAsInt64();
  v29 = sub_75A68();

  if ((v29 & 1) == 0)
  {
    v30 = sub_75A68();

    if ((v30 & 1) == 0)
    {
      v31 = sub_75A68();

      if ((v31 & 1) == 0)
      {
        v32 = sub_75A68();

        if ((v32 & 1) == 0)
        {
          v33 = sub_75A68();

          if ((v33 & 1) == 0)
          {
            v34 = sub_75A68();

            if ((v34 & 1) == 0)
            {
            }
          }
        }
      }
    }
  }

  v35 = HDSQLiteColumnAsString();
  if (v35)
  {
    v36 = v35;
    v76[0] = sub_755A8();
    v93 = v37;

    v38 = v95;
    if ((v95 & 0x8000000000000000) == 0)
    {
LABEL_30:

      goto LABEL_31;
    }
  }

  else
  {
    v76[0] = 0;
    v93 = 0;
    v38 = v95;
    if ((v95 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
  if (!v38)
  {
    goto LABEL_30;
  }

  v39 = sub_75A68();

  if ((v39 & 1) == 0)
  {
    v40 = sub_75A68();

    if ((v40 & 1) == 0)
    {
      v41 = sub_75A68();

      if ((v41 & 1) == 0)
      {
        v42 = sub_75A68();

        if ((v42 & 1) == 0)
        {
          v43 = sub_75A68();

          if ((v43 & 1) == 0)
          {
            sub_75A68();
          }
        }
      }
    }
  }

LABEL_31:
  v44 = HDSQLiteColumnAsUUID();
  if (!v44)
  {
LABEL_40:

    v51 = v92;
    goto LABEL_41;
  }

  v45 = v44;
  sub_74998();

  LOBYTE(v45) = sub_75A68();

  if ((v45 & 1) == 0)
  {
    v46 = sub_75A68();

    if ((v46 & 1) == 0)
    {
      v47 = sub_75A68();

      if ((v47 & 1) == 0)
      {
        v48 = sub_75A68();

        if ((v48 & 1) == 0)
        {
        }
      }
    }
  }

  v49 = HDSQLiteColumnAsDate();
  if (!v49)
  {
    (*(v87 + 8))(v96, v91);
    goto LABEL_40;
  }

  v50 = v49;
  sub_74938();

  v56 = sub_75A68();

  if (v56 & 1) != 0 || (v57 = sub_75A68(), , (v57) || (v58 = sub_75A68(), , (v58) || (v59 = sub_75A68(), , (v59) || (v60 = sub_75A68(), , (v60))
  {
    v51 = v92;
    v61 = v88;
  }

  else
  {
    v51 = v92;
    v61 = v88;
  }

  v62 = v84;
  v63 = HDSQLiteColumnAsDate();
  if (v63)
  {
    v64 = v86;
    v65 = v63;
    sub_74938();

    v66 = v80;
    sub_74EF8();
    v67 = v87;
    (*(v87 + 16))(v85, v96, v91);
    v68 = *(v62 + 16);
    v68(v77, v94, v61);
    v68(v78, v64, v61);
    v70 = v81;
    v69 = v82;
    (*(v81 + 16))(v79, v66, v82);
    v71 = sub_74AB8();
    (*(*(v71 - 8) + 56))(v83, 1, 1, v71);
    sub_74D18();
    (*(v70 + 8))(v66, v69);
    v72 = *(v62 + 8);
    v73 = v88;
    v72(v86, v88);
    v72(v94, v73);
    (*(v67 + 8))(v96, v91);
    v55 = 0;
    goto LABEL_53;
  }

  (*(v62 + 8))(v94, v61);
  (*(v87 + 8))(v96, v91);
LABEL_41:
  sub_75378();
  v52 = sub_754A8();
  v53 = sub_75718();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 0;
    _os_log_impl(&dword_0, v52, v53, "Failed to initialize WorkoutRecord from row: no uuid, or dates", v54, 2u);
  }

  (*(v89 + 8))(v4, v90);
  v55 = 1;
LABEL_53:
  v74 = sub_74D28();
  return (*(*(v74 - 8) + 56))(v51, v55, 1, v74);
}

void *sub_53D08(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v63 = a4;
  v7 = sub_754B8();
  v59 = *(v7 - 8);
  v60 = v7;
  __chkstk_darwin(v7);
  v61 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_74968();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v56 = v52 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v12);
  v55 = v52 - v14;
  v15 = __chkstk_darwin(v13);
  v17 = v52 - v16;
  __chkstk_darwin(v15);
  v19 = v52 - v18;
  v64 = _swiftEmptyArrayStorage;
  v62 = [a3 database];
  v20 = *(v10 + 16);
  v53 = a1;
  v20(v19, a1, v9);
  v54 = a2;
  v52[1] = v10 + 16;
  v52[0] = v20;
  v20(v17, a2, v9);
  v21 = *(v10 + 80);
  v22 = (v21 + 16) & ~v21;
  v23 = (v11 + v21 + v22) & ~v21;
  v24 = (v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = swift_allocObject();
  v57 = v10;
  v26 = *(v10 + 32);
  v26(v25 + v22, v19, v9);
  v58 = v9;
  v26(v25 + v23, v17, v9);
  *(v25 + v24) = &v64;
  v27 = swift_allocObject();
  v27[2] = sub_544C0;
  v27[3] = v25;
  aBlock[4] = sub_FC94;
  aBlock[5] = v27;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2BB8;
  aBlock[3] = &unk_88B38;
  v28 = _Block_copy(aBlock);

  aBlock[0] = 0;
  v29 = v62;
  v30 = [v62 performTransactionWithContext:v63 error:aBlock block:v28 inaccessibilityHandler:0];
  _Block_release(v28);

  v31 = aBlock[0];
  LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

  if (v22)
  {
    __break(1u);
  }

  if (v30)
  {
    v32 = v61;
    sub_75378();
    v33 = v55;
    v34 = v58;
    v35 = v52[0];
    (v52[0])(v55, v53, v58);
    v36 = v56;
    v35(v56, v54, v34);
    v37 = sub_754A8();
    v38 = sub_75738();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v39 = 136315650;
      sub_5457C(&qword_8F9F8, &type metadata accessor for Date, &protocol conformance descriptor for Date);
      v40 = sub_75A38();
      LODWORD(v54) = v38;
      v42 = v41;
      v63 = v25;
      v43 = *(v57 + 8);
      v43(v33, v34);
      v44 = sub_31B4(v40, v42, aBlock);

      *(v39 + 4) = v44;
      *(v39 + 12) = 2080;
      v45 = sub_75A38();
      v47 = v46;
      v43(v36, v34);
      v48 = sub_31B4(v45, v47, aBlock);

      *(v39 + 14) = v48;
      *(v39 + 22) = 2048;
      swift_beginAccess();
      *(v39 + 24) = v64[2];
      _os_log_impl(&dword_0, v37, v54, "Found workouts from %s to %s: %ld", v39, 0x20u);
      swift_arrayDestroy();

      (*(v59 + 8))(v61, v60);
    }

    else
    {

      v50 = *(v57 + 8);
      v50(v36, v34);
      v50(v33, v34);
      (*(v59 + 8))(v32, v60);
    }

    swift_beginAccess();
    v49 = v64;
  }

  else
  {
    sub_74898();

    swift_willThrow();
    v49 = v64;
  }

  return v49;
}

uint64_t sub_543F8()
{
  v1 = sub_74968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v8 = (v6 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v8 + 8, v4 | 7);
}

uint64_t sub_544C0(void *a1, void *a2)
{
  v5 = *(sub_74968() - 8);
  v6 = *(v5 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64);
  v9 = (v8 + v6 + v7) & ~v6;
  v10 = *(v2 + ((v8 + v9 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_503DC(a1, a2, v2 + v7, v2 + v9, v10);
}

uint64_t sub_5457C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_545C4()
{
  v1 = sub_74968();
  v2 = *(v1 - 8);
  v3 = *(v2 + 8);
  v4 = *(v2 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v2 + 64);
  v7 = (v6 + v4 + v5) & ~v4;
  v3(v0 + v5, v1);
  v3(v0 + v7, v1);

  return _swift_deallocObject(v0, v7 + v6, v4 | 7);
}

uint64_t sub_54680(sqlite3_stmt *a1)
{
  sub_74968();
  v3 = *(v1 + 16);

  return sub_50A58(a1, v3);
}

uint64_t sub_54794(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x766F7250636E7973;
    v10 = 0xEE0065636E616E65;
    if (a1 != 6)
    {
      v9 = 0x6E656449636E7973;
      v10 = 0xEC00000079746974;
    }

    v11 = 0xE700000000000000;
    v12 = 0x6E6F6973726576;
    if (a1 != 4)
    {
      v12 = 0x4164657461657263;
      v11 = 0xE900000000000074;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x6568636143646E65;
    v5 = 0xED00007865646E49;
    if (a1 != 2)
    {
      v4 = 0xD000000000000016;
      v5 = 0x80000000000773B0;
    }

    v6 = 0x6361437472617473;
    if (a1)
    {
      v3 = 0xEF7865646E496568;
    }

    else
    {
      v6 = 0x4449574F52;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xEE0065636E616E65;
        if (v7 != 0x766F7250636E7973)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xEC00000079746974;
        if (v7 != 0x6E656449636E7973)
        {
LABEL_47:
          v14 = sub_75A68();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x6E6F6973726576)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE900000000000074;
      if (v7 != 0x4164657461657263)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xED00007865646E49;
      if (v7 != 0x6568636143646E65)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0x80000000000773B0;
      if (v7 != 0xD000000000000016)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0xEF7865646E496568;
    if (v7 != 0x6361437472617473)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE500000000000000;
    if (v7 != 0x4449574F52)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}