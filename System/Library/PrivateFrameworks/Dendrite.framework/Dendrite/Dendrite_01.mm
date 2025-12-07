void sub_1B1A5ACF0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v7, qword_1EDB770A8);
  sub_1B1A7CEC8();

  MEMORY[0x1B2736400](a1, a2);
  sub_1B1A561C0(0xD000000000000011, 0x80000001B1A80E90, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000015, 0x80000001B1A80EB0);

  v9 = *(v3 + qword_1EDB770F8);
  MEMORY[0x1EEE9AC00](v8);
  os_unfair_lock_lock((v9 + 32));
  sub_1B1A60184((v9 + 16), a3);
  os_unfair_lock_unlock((v9 + 32));
}

void sub_1B1A5AE70(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v31 = a3;
  v36 = a4;
  v29 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E528, &qword_1B1A7EAC0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - v8;
  v10 = type metadata accessor for DataFrameStreamContainer(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(a2 + v14, v13, type metadata accessor for DataFrameStreamContainer);
  v15 = sub_1B1A51554();
  sub_1B1A46F50(v13, type metadata accessor for DataFrameStreamContainer);

  *a1 = v15;
  if (v15 && (v18 = *(v15 + 2), v17 = v15 + 16, (v16 = v18) != 0))
  {
    v19 = &v17[16 * v16];
    v21 = *v19;
    v20 = v19[1];
    v22 = *v19 == v31 && v20 == v36;
    if (v22 || (sub_1B1A7CFB8() & 1) != 0)
    {
      swift_beginAccess();
      v23 = v30;
      sub_1B1A51778();
      if (!v23)
      {
        sub_1B1A5B1D4(a2 + v14, a1, v31, v36, &v32);
        if (qword_1EDB767A8 != -1)
        {
          swift_once();
        }

        v25 = qword_1EDB770E0;

        os_unfair_lock_lock(v25 + 6);
        sub_1B1A601A4(&v25[4]);
        os_unfair_lock_unlock(v25 + 6);

        v26 = v35;
        v27 = v29;
        *v29 = v32;
        *(v27 + 1) = v33;
        *(v27 + 3) = v34;
        *(v27 + 10) = v26;
      }

      swift_endAccess();
    }

    else
    {
      (*(v11 + 56))(v9, 1, 1, v10);

      sub_1B1A59F5C(v21, v20, a1, v9, v29);
      sub_1B1A48194(v9, &qword_1EB75E528, &qword_1B1A7EAC0);
    }
  }

  else
  {
    sub_1B1A55EFC();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }
}

uint64_t sub_1B1A5B1D4@<X0>(uint64_t a1@<X0>, char **a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, void *a5@<X8>)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E528, &qword_1B1A7EAC0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v39 - v12;
  *a2 = sub_1B1A51554();

  v14 = *a2;
  if (!*a2 || (v17 = *(v14 + 2), v15 = v14 + 16, (v16 = v17) == 0))
  {
    sub_1B1A55EFC();
    swift_allocError();
    *v22 = 0;
    return swift_willThrow();
  }

  v48 = a5;
  v18 = &v15[16 * v16];
  v19 = *(v18 + 1);
  v42 = *v18;
  sub_1B1A46E9C(a1, v13, type metadata accessor for DataFrameStreamContainer);
  v20 = type metadata accessor for DataFrameStreamContainer(0);
  (*(*(v20 - 8) + 56))(v13, 0, 1, v20);

  sub_1B1A59F5C(a3, a4, a2, v13, &v43);
  sub_1B1A48194(v13, &qword_1EB75E528, &qword_1B1A7EAC0);
  if (v5)
  {
  }

  v23 = *(&v44 + 1);
  v41 = v44;
  v24 = v45;
  v25 = v46;
  if (v42 == a3 && v19 == a4)
  {
  }

  else
  {
    v39 = v43;
    v40 = v47;
    v27 = sub_1B1A7CFB8();

    if ((v27 & 1) == 0)
    {
      v28 = v48;
      v29 = v41;
      *v48 = v39;
      v28[1] = v29;
      v28[2] = v23;
      v28[3] = v24;
      v28[4] = v25;
      *(v28 + 10) = v40;
      return result;
    }
  }

  result = sub_1B1A5A800(a2, &v43);
  v30 = v48;
  v31 = *(v24 + 16);
  v32 = *(v31 + 24);
  v33 = *(v31 + 16);
  v34 = __CFADD__(v32, v33);
  v35 = v32 + v33;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    v36 = v45;
    atomic_store(v35, (*(v45 + 16) + 24));

    v37 = v46;
    v38 = v47;
    *v30 = v43;
    *(v30 + 1) = v44;
    v30[3] = v36;
    v30[4] = v37;
    *(v30 + 10) = v38;
  }

  return result;
}

double sub_1B1A5B4C8@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + qword_1EDB770F8);
  os_unfair_lock_lock(v4 + 8);
  sub_1B1A6040C(&v4[4], &v7);
  os_unfair_lock_unlock(v4 + 8);
  if (!v2)
  {
    v6 = v10;
    *a1 = v7;
    *(a1 + 8) = v8;
    result = *&v9;
    *(a1 + 24) = v9;
    *(a1 + 40) = v6;
  }

  return result;
}

void sub_1B1A5B560(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v4 = qword_1EDB770E8;
    swift_beginAccess();
    sub_1B1A51778();
    if (!v2)
    {
      sub_1B1A5B684(v1 + v4, v1, a1);
      if (qword_1EDB767A8 != -1)
      {
        swift_once();
      }

      v5 = qword_1EDB770E0;

      os_unfair_lock_lock(v5 + 6);
      sub_1B1A603F4(&v5[4]);
      os_unfair_lock_unlock(v5 + 6);
    }

    swift_endAccess();
  }
}

void sub_1B1A5B684(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + qword_1EDB770F8);
  os_unfair_lock_lock((v5 + 32));
  if (!*(v5 + 16))
  {
    goto LABEL_4;
  }

  v6 = sub_1B1A5F848((v5 + 16), a3);

  v7 = *(*(v5 + 16) + 16);
  if (v7 >= v6)
  {
    sub_1B1A5FB54(v6, v7);
LABEL_4:
    sub_1B1A5BB90(a3, a1, v5 + 16);
    os_unfair_lock_unlock((v5 + 32));
    return;
  }

  __break(1u);
}

uint64_t sub_1B1A5B744(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a3;
  v22[0] = sub_1B1A7C768();
  v5 = *(v22[0] - 8);
  MEMORY[0x1EEE9AC00](v22[0]);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1B1A7C808();
  v30 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v14 = a1[1];
  sub_1B1A46E9C(a2, v10, type metadata accessor for DataFrameStreamContainer);
  v25 = v13;
  v26 = v14;

  MEMORY[0x1B2736400](0x746E656D6765732ELL, 0xE800000000000000);
  v15 = v22[0];
  (*(v5 + 104))(v7, *MEMORY[0x1E6968F70], v22[0]);
  sub_1B1A47F94();
  sub_1B1A7C7F8();
  (*(v5 + 8))(v7, v15);

  sub_1B1A46F50(v10, type metadata accessor for DataFrameStreamContainer);
  sub_1B1A5F574(v12, &v25);
  sub_1B1A60378(v25, v26, v27, v28, v29);
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v16, qword_1EDB770A8);
  v25 = 0;
  v26 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v25 = 0xD000000000000017;
  v26 = 0x80000001B1A81020;
  sub_1B1A4DD9C();
  v17 = v23;
  v18 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v18);

  sub_1B1A561C0(v25, v26, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000016, 0x80000001B1A81040);

  v19 = v24;
  sub_1B1A6FDCC();
  if (v19)
  {
    v25 = 0;
    v26 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v25 = 0xD00000000000001FLL;
    v26 = 0x80000001B1A81060;
    v20 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v20);

    sub_1B1A561D8(v25, v26, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000016, 0x80000001B1A81040);
  }

  return (*(v30 + 8))(v12, v17);
}

uint64_t sub_1B1A5BB90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      sub_1B1A5B744(v17, a2, a3);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1B1A5BCC8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = *(*a2 + 80);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v23 - v10;
  v12 = type metadata accessor for DataFrameStreamContainer(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = a1;
  if (*a1)
  {
    goto LABEL_5;
  }

  v23 = a3;
  v24 = a4;
  v16 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(a2 + v16, v15, type metadata accessor for DataFrameStreamContainer);
  v17 = &v15[*(v12 + 20)];
  v18 = type metadata accessor for StorageContainer(0);
  LOBYTE(v17) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*&v17[*(v18 + 20)]);
  result = sub_1B1A46F50(v15, type metadata accessor for DataFrameStreamContainer);
  v20 = v25;
  if ((v17 & 1) == 0)
  {
    sub_1B1A5761C();
    result = sub_1B1A58460();
  }

  v21 = *v20;
  a3 = v23;
  a4 = v24;
  if (v21)
  {
LABEL_5:
    (*(v9 + 16))(v11, a3, v8, v13);
    sub_1B1A7CCD8();
    result = sub_1B1A7CCA8();
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  *a4 = v22;
  return result;
}

void TypedStream.fetchAs<A>(byIdentifier:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v61 = a3;
  v59 = a1;
  v54 = a4;
  v7 = sub_1B1A7C808();
  v58 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1B1A7CE18();
  v51 = *(v10 - 8);
  v52 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v53 = &v48 - v11;
  v12 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(&v15[v4], v14, type metadata accessor for DataFrameStreamContainer);
  v16 = &v14[*(v12 + 20)];
  v17 = type metadata accessor for StorageContainer(0);
  LOBYTE(v16) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*&v16[*(v17 + 20)]);
  v18 = sub_1B1A46F50(v14, type metadata accessor for DataFrameStreamContainer);
  if ((v16 & 1) == 0)
  {
    v60 = a2;
    if (qword_1EDB764F0 == -1)
    {
LABEL_17:
      v35 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v35, qword_1EDB770A8);
      v62 = 0;
      v63 = 0xE000000000000000;
      sub_1B1A7CEC8();

      v62 = 0xD000000000000018;
      v63 = 0x80000001B1A80600;
      sub_1B1A46E9C(&v15[v5], v14, type metadata accessor for DataFrameStreamContainer);
      v36 = v58;
      (*(v58 + 2))(v9, &v14[*(v12 + 20)], v7);
      sub_1B1A46F50(v14, type metadata accessor for DataFrameStreamContainer);
      sub_1B1A4DD9C();
      v37 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v37);

      v36[1](v9, v7);
      sub_1B1A561D8(v62, v63, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000016, 0x80000001B1A80CE0);

      (*(*(v60 - 8) + 56))(v54, 1, 1);
      return;
    }

LABEL_28:
    swift_once();
    goto LABEL_17;
  }

  v14 = *(v4 + qword_1EDB770F8);
  MEMORY[0x1EEE9AC00](v18);
  v19 = v61;
  *(&v48 - 4) = a2;
  *(&v48 - 3) = v19;
  *(&v48 - 2) = v4;
  os_unfair_lock_lock(v14 + 8);
  v20 = v68;
  sub_1B1A5FD3C(v14 + 2, &v62);
  if (v20)
  {
    os_unfair_lock_unlock(v14 + 8);
    __break(1u);
    return;
  }

  v21 = 0;
  v12 = v5;
  os_unfair_lock_unlock(v14 + 8);
  v22 = v62;
  if (!v62)
  {
    goto LABEL_15;
  }

  v23 = *(v62 + 2);
  if (!v23)
  {
    goto LABEL_14;
  }

  v58 = v14;
  v24 = 0;
  v50 = v62 + 40;
  v55 = v23;
  v49 = v23 - 1;
  v60 = a2;
  v56 = v5;
  v57 = v62;
  while (2)
  {
    v15 = &v50[16 * v24];
    v5 = v24;
    while (1)
    {
      if (v5 >= *(v22 + 2))
      {
        __break(1u);
        goto LABEL_28;
      }

      v25 = *v15;
      MEMORY[0x1EEE9AC00](v22);
      v68 = v21;
      *(&v48 - 6) = a2;
      *(&v48 - 5) = v19;
      *(&v48 - 4) = v12;
      *(&v48 - 3) = v26;
      *(&v48 - 2) = v25;

      v27 = v58;
      os_unfair_lock_lock(v58 + 8);
      v28 = v68;
      sub_1B1A5FD5C(&v27[4], &v62);
      if (v28)
      {
        os_unfair_lock_unlock(v27 + 8);

        return;
      }

      v68 = 0;
      os_unfair_lock_unlock(v27 + 8);

      v29 = v62;
      v14 = v63;
      v30 = v64;
      v7 = v65;
      v31 = v66;
      v9 = v67;
      v32 = sub_1B1A68BFC(v59);
      if (v33 != 2)
      {
        break;
      }

      ++v5;

      v15 += 16;
      v12 = v56;
      v21 = v68;
      a2 = v60;
      v19 = v61;
      v22 = v57;
      if (v55 == v5)
      {
        goto LABEL_14;
      }
    }

    v34 = v32;
    if (!v33)
    {

      v62 = v29;
      v63 = v14;
      v64 = v30;
      v65 = v7;
      v66 = v31;
      v67 = v9;
      v38 = v68;
      v39 = DataFrameStreamSegment.frameData(forSegmentIndex:)(v34);
      if (v38)
      {

        return;
      }

      if (v40 >> 60 == 15)
      {

        v41 = *(v60 - 8);
      }

      else
      {
        v42 = v60;
        v43 = v53;
        v44 = v39;
        v45 = v40;
        (*(v61 + 16))();

        sub_1B1A4C400(v44, v45);
        v46 = *(v42 - 8);
        if ((*(v46 + 48))(v43, 1, v42) != 1)
        {
          v47 = v54;
          (*(v46 + 32))(v54, v43, v42);
          (*(v46 + 56))(v47, 0, 1, v42);
          return;
        }

        (*(v51 + 8))(v43, v52);
        v41 = v46;
      }

      (*(v41 + 56))(v54, 1, 1);
      return;
    }

    v24 = v5 + 1;
    v59 = v34;
    v21 = v68;
    a2 = v60;
    v19 = v61;
    v12 = v56;
    v22 = v57;
    if (v49 != v5)
    {
      continue;
    }

    break;
  }

LABEL_14:

LABEL_15:
  (*(*(a2 - 8) + 56))(v54, 1, 1, a2);
}

uint64_t sub_1B1A5C750@<X0>(char **a1@<X0>, uint64_t a2@<X1>, char **a3@<X8>)
{
  v6 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(a2 + v9, v8, type metadata accessor for DataFrameStreamContainer);
  v10 = sub_1B1A51554();
  sub_1B1A46F50(v8, type metadata accessor for DataFrameStreamContainer);

  *a1 = v10;
  *a3 = v10;
  return result;
}

uint64_t sub_1B1A5C858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E528, &qword_1B1A7EAC0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  v11 = type metadata accessor for DataFrameStreamContainer(0);
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  sub_1B1A59F5C(a2, a3, a1, v10, a4);
  return sub_1B1A48194(v10, &qword_1EB75E528, &qword_1B1A7EAC0);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> TypedStream.delete(byIdentifier:)(Swift::UInt64 byIdentifier)
{
  v2 = v1;
  v38 = byIdentifier;
  v3 = sub_1B1A7C808();
  v37 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(&v9[v1], v8, type metadata accessor for DataFrameStreamContainer);
  v10 = &v8[*(v6 + 20)];
  v11 = type metadata accessor for StorageContainer(0);
  v12 = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*&v10[*(v11 + 20)]);
  sub_1B1A46F50(v8, type metadata accessor for DataFrameStreamContainer);
  if (!v12)
  {
    v14 = v1;
    if (qword_1EDB764F0 != -1)
    {
LABEL_22:
      swift_once();
    }

    v28 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v28, qword_1EDB770A8);
    v39 = 0;
    v40 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v39 = 0xD000000000000018;
    v40 = 0x80000001B1A80600;
    sub_1B1A46E9C(&v9[v14], v8, type metadata accessor for DataFrameStreamContainer);
    v29 = v37;
    (*(v37 + 2))(v5, &v8[*(v6 + 20)], v3);
    sub_1B1A46F50(v8, type metadata accessor for DataFrameStreamContainer);
    sub_1B1A4DD9C();
    v30 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v30);

    (*(v29 + 1))(v5, v3);
    sub_1B1A561D8(v39, v40, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000015, 0x80000001B1A80D00);

    LOBYTE(v19) = 0;
    return v19 & 1;
  }

  v6 = *(v1 + qword_1EDB770F8);
  os_unfair_lock_lock((v6 + 32));
  v13 = v45;
  sub_1B1A603DC((v6 + 16), &v39);
  if (!v13)
  {
    v14 = 0;
    os_unfair_lock_unlock((v6 + 32));
    v8 = v39;
    if (v39)
    {
      v16 = *(v39 + 2);
      if (v16)
      {
        v17 = 0;
        v33 = v39 + 40;
        v34 = v16;
        v32 = v16 - 1;
        v35 = v6;
        v36 = v1;
        v37 = v39;
        while (2)
        {
          v9 = &v33[16 * v17];
          v3 = v17;
          while (1)
          {
            if (v3 >= *(v8 + 2))
            {
              __break(1u);
              goto LABEL_22;
            }

            v18 = *v9;
            MEMORY[0x1EEE9AC00](v15);
            v19 = (&v32 - 6);
            *(&v32 - 4) = v2;
            *(&v32 - 3) = v20;
            *(&v32 - 2) = v18;

            os_unfair_lock_lock((v6 + 32));
            sub_1B1A6040C(v6 + 16, &v39);
            os_unfair_lock_unlock((v6 + 32));

            if (v14)
            {

              return v19 & 1;
            }

            v45 = 0;
            v21 = v39;
            v5 = v40;
            v22 = v41;
            v23 = v42;
            v24 = v43;
            v25 = v44;
            v26 = sub_1B1A68BFC(v38);
            if (v27 != 2)
            {
              break;
            }

            ++v3;

            v9 += 16;
            v6 = v35;
            v14 = v45;
            v2 = v36;
            v8 = v37;
            if (v34 == v3)
            {
              goto LABEL_14;
            }
          }

          v19 = v26;
          if (!v27)
          {

            v39 = v21;
            v40 = v5;
            v41 = v22;
            v42 = v23;
            v43 = v24;
            v44 = v25;
            LOBYTE(v19) = DataFrameStreamSegment.deleteFrame(index:)(v19);

            return v19 & 1;
          }

          v17 = v3 + 1;
          v38 = v19;
          v14 = v45;
          v6 = v35;
          v2 = v36;
          v8 = v37;
          if (v32 != v3)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:

      LOBYTE(v19) = 0;
    }

    else
    {
      LOBYTE(v19) = 0;
    }

    return v19 & 1;
  }

  os_unfair_lock_unlock((v6 + 32));
  __break(1u);
  return result;
}

void TypedStream.mutate(forIdentifier:_:)(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = v4;
  v37 = a2;
  v38 = a3;
  v44 = a1;
  v39 = a4;
  v36 = *v4;
  v7 = sub_1B1A7C808();
  v42 = *(v7 - 1);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(&v13[v4], v12, type metadata accessor for DataFrameStreamContainer);
  v14 = &v12[*(v10 + 20)];
  v15 = type metadata accessor for StorageContainer(0);
  LOBYTE(v14) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*&v14[*(v15 + 20)]);
  sub_1B1A46F50(v12, type metadata accessor for DataFrameStreamContainer);
  if ((v14 & 1) == 0)
  {
    v51 = v5;
    if (qword_1EDB764F0 != -1)
    {
LABEL_22:
      swift_once();
    }

    v29 = type metadata accessor for InternalLogger(0);
    v44 = __swift_project_value_buffer(v29, qword_1EDB770A8);
    v45 = 0;
    v46 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v45 = 0xD000000000000018;
    v46 = 0x80000001B1A80600;
    sub_1B1A46E9C(&v13[v6], v12, type metadata accessor for DataFrameStreamContainer);
    v30 = v42;
    (*(v42 + 2))(v9, &v12[*(v10 + 20)], v7);
    sub_1B1A46F50(v12, type metadata accessor for DataFrameStreamContainer);
    sub_1B1A4DD9C();
    v31 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v31);

    (*(v30 + 1))(v9, v7);
    sub_1B1A561D8(v45, v46, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000018, 0x80000001B1A80D20);
    goto LABEL_17;
  }

  v10 = *(v4 + qword_1EDB770F8);
  os_unfair_lock_lock((v10 + 32));
  sub_1B1A603DC((v10 + 16), &v45);
  if (!v5)
  {
    os_unfair_lock_unlock((v10 + 32));
    v12 = v45;
    if (!v45)
    {
LABEL_18:
      v32 = v39;
      *v39 = 0;
      *(v32 + 8) = 1;
      return;
    }

    v51 = 0;
    v7 = *(v45 + 2);
    if (v7)
    {
      v17 = 0;
      v34 = v7 - 1;
      v35 = v45 + 40;
      v42 = v45;
      v43 = v4;
      v40 = v7;
      v41 = v10;
      while (2)
      {
        v13 = &v35[16 * v17];
        v18 = v17;
        while (1)
        {
          if (v18 >= *(v12 + 2))
          {
            __break(1u);
            goto LABEL_22;
          }

          v19 = *v13;
          MEMORY[0x1EEE9AC00](v16);
          *(&v33 - 4) = v6;
          *(&v33 - 3) = v20;
          *(&v33 - 2) = v19;

          os_unfair_lock_lock((v10 + 32));
          v21 = v51;
          sub_1B1A6040C(v10 + 16, &v45);
          os_unfair_lock_unlock((v10 + 32));

          v51 = v21;
          if (v21)
          {

            return;
          }

          v7 = v45;
          v9 = v46;
          v22 = v47;
          v23 = v48;
          v24 = v49;
          v25 = v50;
          v26 = sub_1B1A68BFC(v44);
          if (v27 != 2)
          {
            break;
          }

          ++v18;

          v13 += 16;
          v7 = v40;
          v10 = v41;
          v12 = v42;
          v6 = v43;
          if (v40 == v18)
          {
            goto LABEL_17;
          }
        }

        v28 = v26;
        if (!v27)
        {

          v45 = v7;
          v46 = v9;
          v47 = v22;
          v48 = v23;
          v49 = v24;
          v50 = v25;
          DataFrameStreamSegment.mutateFrame<A>(frameSegmentIndex:mutate:supersede:)(v28, v37, v38, sub_1B1A5FD80, v43, *(v36 + 80), *(v36 + 88), v39);

          return;
        }

        v17 = v18 + 1;
        v44 = v28;
        v12 = v42;
        v6 = v43;
        v10 = v41;
        if (v34 != v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  os_unfair_lock_unlock((v10 + 32));
  __break(1u);
}

void sub_1B1A5D484(unint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = v3;
  v39 = a2;
  v40 = a3;
  v45 = a1;
  v38 = *v3;
  v6 = sub_1B1A7C808();
  v43 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(&v12[v3], v11, type metadata accessor for DataFrameStreamContainer);
  v13 = &v11[*(v9 + 20)];
  v14 = type metadata accessor for StorageContainer(0);
  LOBYTE(v13) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*&v13[*(v14 + 20)]);
  sub_1B1A46F50(v11, type metadata accessor for DataFrameStreamContainer);
  if ((v13 & 1) == 0)
  {
    v52 = v4;
    if (qword_1EDB764F0 != -1)
    {
LABEL_22:
      swift_once();
    }

    v29 = type metadata accessor for InternalLogger(0);
    v45 = __swift_project_value_buffer(v29, qword_1EDB770A8);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v46 = 0xD000000000000018;
    v47 = 0x80000001B1A80600;
    sub_1B1A46E9C(&v12[v5], v11, type metadata accessor for DataFrameStreamContainer);
    v30 = v43;
    (*(v43 + 2))(v8, &v11[*(v9 + 20)], v6);
    sub_1B1A46F50(v11, type metadata accessor for DataFrameStreamContainer);
    sub_1B1A4DD9C();
    v31 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v31);

    (*(v30 + 1))(v8, v6);
    sub_1B1A561D8(v46, v47, 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD00000000000001CLL, 0x80000001B1A80E70);
    goto LABEL_17;
  }

  v11 = *(v3 + qword_1EDB770F8);
  os_unfair_lock_lock(v11 + 8);
  sub_1B1A603DC(v11 + 2, &v46);
  if (!v4)
  {
    os_unfair_lock_unlock(v11 + 8);
    v6 = v46;
    if (!v46)
    {
LABEL_18:
      v32 = v40;
      *v40 = 0;
      *(v32 + 8) = 1;
      return;
    }

    v52 = 0;
    v16 = *(v46 + 2);
    if (v16)
    {
      v17 = 0;
      v41 = *(v46 + 2);
      v42 = v11;
      v36 = v16 - 1;
      v37 = v46 + 40;
      v43 = v46;
      v44 = v3;
      while (2)
      {
        v12 = &v37[16 * v17];
        v18 = v17;
        while (1)
        {
          if (v18 >= *(v6 + 2))
          {
            __break(1u);
            goto LABEL_22;
          }

          v19 = *v12;
          MEMORY[0x1EEE9AC00](v15);
          *(&v35 - 4) = v5;
          *(&v35 - 3) = v20;
          *(&v35 - 2) = v19;

          os_unfair_lock_lock(v11 + 8);
          v21 = v52;
          sub_1B1A6040C((v11 + 16), &v46);
          os_unfair_lock_unlock(v11 + 8);

          v52 = v21;
          if (v21)
          {

            return;
          }

          v22 = v46;
          v9 = v47;
          v8 = v48;
          v23 = v49;
          v24 = v50;
          v25 = v51;
          v26 = sub_1B1A68BFC(v45);
          if (v27 != 2)
          {
            break;
          }

          ++v18;

          v12 += 16;
          v11 = v42;
          v6 = v43;
          v5 = v44;
          if (v41 == v18)
          {
            goto LABEL_17;
          }
        }

        v28 = v26;
        if (!v27)
        {

          v46 = v22;
          v47 = v9;
          v48 = v8;
          v49 = v23;
          v50 = v24;
          v51 = v25;
          MEMORY[0x1EEE9AC00](v33);
          v34 = v39;
          *(&v35 - 2) = v44;
          *(&v35 - 1) = v34;
          DataFrameStreamSegment.setFrame<A>(frameSegmentIndex:mutated:supersede:)(v28, sub_1B1A60150, (&v35 - 4), *(v38 + 80), *(v38 + 88), v40);

          return;
        }

        v17 = v18 + 1;
        v45 = v28;
        v6 = v43;
        v5 = v44;
        v11 = v42;
        if (v36 != v18)
        {
          continue;
        }

        break;
      }
    }

LABEL_17:

    goto LABEL_18;
  }

  os_unfair_lock_unlock(v11 + 8);
  __break(1u);
}

unint64_t TypedStream.frameCount.getter()
{
  v1 = v0;
  v2 = sub_1B1A7C808();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(&v0[v9], v8, type metadata accessor for DataFrameStreamContainer);
  v10 = &v8[*(v6 + 20)];
  v11 = type metadata accessor for StorageContainer(0);
  LOBYTE(v10) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*&v10[*(v11 + 20)]);
  sub_1B1A46F50(v8, type metadata accessor for DataFrameStreamContainer);
  if (v10)
  {
    v3 = *&v0[qword_1EDB770F8];
    os_unfair_lock_lock((v3 + 32));
    v2 = 0;
    sub_1B1A5FDA4((v3 + 16), &v33);
    os_unfair_lock_unlock((v3 + 32));
    v8 = v33;
    if (!v33)
    {
      v23 = 0;
      v24 = 0;
      goto LABEL_15;
    }

    v29 = v33;
    v30 = v0;
    v13 = 0;
    v1 = v33 + 40;
    v31 = -*(v33 + 2);
    v9 = -1;
    while (1)
    {
      if (v31 + v9 == -1)
      {

        v24 = 0;
        v23 = v13;
        goto LABEL_15;
      }

      if (++v9 >= *(v8 + 2))
      {
        __break(1u);
        goto LABEL_20;
      }

      v14 = *v1;
      MEMORY[0x1EEE9AC00](v12);
      *(&v29 - 4) = v30;
      *(&v29 - 3) = v15;
      *(&v29 - 2) = v14;

      os_unfair_lock_lock((v3 + 32));
      sub_1B1A5FDC0(v3 + 16, &v33);
      os_unfair_lock_unlock((v3 + 32));

      v6 = v35;
      v16 = v36;
      v17 = atomic_load((*(v36 + 16) + 16));
      v18 = atomic_load((*(v16 + 16) + 20));
      v19 = v17 - v18;
      if (v17 < v18)
      {
        break;
      }

      v1 += 16;
      v5 = v34;

      v20 = __CFADD__(v13, v19);
      v13 += v19;
      v8 = v29;
      if (v20)
      {
        __break(1u);
        goto LABEL_10;
      }
    }

    v31 = v34;
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v26, qword_1EDB770A8);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1B1A7CEC8();
    MEMORY[0x1B2736400](0x466E657474697277, 0xEE003A73656D6172);
    v32 = v17;
    v27 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v27);

    MEMORY[0x1B2736400](0xD000000000000026, 0x80000001B1A80D40);
    v32 = v18;
    v28 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v28);

    sub_1B1A561D8(v33, v34, 0xD000000000000069, 0x80000001B1A80D70, 0x756F43656D617266, 0xEA0000000000746ELL);

    **(v16 + 16) = 2;
  }

  else
  {
LABEL_10:
    if (qword_1EDB764F0 != -1)
    {
LABEL_20:
      swift_once();
    }

    v21 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v21, qword_1EDB770A8);
    v33 = 0;
    v34 = 0xE000000000000000;
    sub_1B1A7CEC8();

    v33 = 0xD000000000000018;
    v34 = 0x80000001B1A80600;
    sub_1B1A46E9C(&v1[v9], v8, type metadata accessor for DataFrameStreamContainer);
    (*(v3 + 16))(v5, &v8[*(v6 + 20)], v2);
    sub_1B1A46F50(v8, type metadata accessor for DataFrameStreamContainer);
    sub_1B1A4DD9C();
    v22 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v22);

    (*(v3 + 8))(v5, v2);
    sub_1B1A561D8(v33, v34, 0xD00000000000005ELL, 0x80000001B1A80C10, 0x756F43656D617266, 0xEA0000000000746ELL);
  }

  v23 = 0;
  v24 = 1;
LABEL_15:
  LOBYTE(v33) = v24;
  return v23 | (v24 << 32);
}

uint64_t TypedStream.pruner(reversed:)(int a1)
{
  v2 = v1;
  v23 = a1;
  v3 = *v1;
  v28 = sub_1B1A7C808();
  v24 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DataFrameStreamContainer(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = qword_1EDB770E8;
  swift_beginAccess();
  sub_1B1A46E9C(v1 + v9, v8, type metadata accessor for DataFrameStreamContainer);
  v10 = &v8[*(v6 + 20)];
  v11 = type metadata accessor for StorageContainer(0);
  LOBYTE(v10) = _s8Dendrite7StorageV11isAvailable3forSbSo20NSFileProtectionTypea_tFZ_0(*&v10[*(v11 + 20)]);
  sub_1B1A46F50(v8, type metadata accessor for DataFrameStreamContainer);
  if (v10)
  {
    type metadata accessor for DataFrameStreamPruner(0, *(v3 + 80), *(v3 + 88), v12);
    v26 = v3;
    v27 = &off_1F28B0EE8;
    *&v25 = v2;
    v13 = sub_1B1A55658(&v25, v23 & 1, 1);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v14, qword_1EDB770A8);
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    sub_1B1A7CEC8();

    *&v25 = 0xD000000000000018;
    *(&v25 + 1) = 0x80000001B1A80600;
    sub_1B1A46E9C(v2 + v9, v8, type metadata accessor for DataFrameStreamContainer);
    v15 = *(v6 + 20);
    v16 = v24;
    v17 = v28;
    (*(v24 + 16))(v5, &v8[v15], v28);
    sub_1B1A46F50(v8, type metadata accessor for DataFrameStreamContainer);
    sub_1B1A4DD9C();
    v18 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v18);

    (*(v16 + 8))(v5, v17);
    sub_1B1A561D8(v25, *(&v25 + 1), 0xD00000000000005ELL, 0x80000001B1A80C10, 0xD000000000000011, 0x80000001B1A80BD0);

    sub_1B1A55EFC();
    v19 = swift_allocError();
    *v20 = 1;
    v13 = v19;
    swift_willThrow();
  }

  return v13;
}

uint64_t TypedStream.deinit()
{
  sub_1B1A46F50(v0 + qword_1EDB770E8, type metadata accessor for DataFrameStreamContainer);

  return v0;
}

uint64_t TypedStream.__deallocating_deinit()
{
  TypedStream.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B1A5E4BC(void *a1, uint64_t a2)
{
  v5 = *v2;
  sub_1B1A7D058();
  MEMORY[0x1B2736930](*(a2 + 16));
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = a2 + 32;
    do
    {
      v7 += 4;
      sub_1B1A7D088();
      --v6;
    }

    while (v6);
  }

  result = sub_1B1A7D098();
  v9 = -1 << *(v5 + 32);
  v10 = result & ~v9;
  if ((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(a2 + 16);
    while (1)
    {
      v13 = *(*(v5 + 48) + 8 * v10);
      if (*(v13 + 16) == v12)
      {
        break;
      }

LABEL_6:
      v10 = (v10 + 1) & v11;
      if (((*(v5 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_15;
      }
    }

    if (!v12 || v13 == a2)
    {
LABEL_14:

      *a1 = *(*(v5 + 48) + 8 * v10);

      return 0;
    }

    else
    {
      v14 = 32;
      v15 = *(a2 + 16);
      while (v15)
      {
        if (*(v13 + v14) != *(a2 + v14))
        {
          goto LABEL_6;
        }

        v14 += 4;
        if (!--v15)
        {
          goto LABEL_14;
        }
      }

      __break(1u);
    }
  }

  else
  {
LABEL_15:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;

    sub_1B1A5EC20(v17, v10, isUniquelyReferenced_nonNull_native);
    *v2 = v18;
    *a1 = a2;
    return 1;
  }

  return result;
}

uint64_t sub_1B1A5E640(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1B1A7D058();
  sub_1B1A7CB18();
  v8 = sub_1B1A7D098();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1B1A7CFB8() & 1) != 0)
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

    sub_1B1A5EDE4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1B1A5E790(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB75E550, qword_1B1A7FA40);
  result = sub_1B1A7CE88();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v9 = -1;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    v10 = v9 & *(v3 + 56);
    for (i = (v8 + 63) >> 6; v10; result = sub_1B1A5EB54(*(*(v3 + 48) + 8 * (v12 | (v6 << 6))), v5))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_11:
      ;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        __break(1u);
        return result;
      }

      if (v6 >= i)
      {
        break;
      }

      v14 = v7[v6];
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_11;
      }
    }

    v15 = 1 << *(v3 + 32);
    if (v15 >= 64)
    {
      bzero((v3 + 56), ((v15 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v15;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1B1A5E8F4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E548, &unk_1B1A7EAF0);
  result = sub_1B1A7CE88();
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
      sub_1B1A7D058();
      sub_1B1A7CB18();
      result = sub_1B1A7D098();
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

unint64_t sub_1B1A5EB54(uint64_t a1, uint64_t a2)
{
  sub_1B1A7D058();
  MEMORY[0x1B2736930](*(a1 + 16));
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = a1 + 32;
    do
    {
      v5 += 4;
      sub_1B1A7D088();
      --v4;
    }

    while (v4);
  }

  sub_1B1A7D098();
  result = sub_1B1A7CE68();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

uint64_t sub_1B1A5EC20(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 <= v5 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1B1A5E790(v5 + 1);
    }

    else
    {
      if (v6 > v5)
      {
        v7 = a2;
        result = sub_1B1A5EF64();
        a2 = v7;
        goto LABEL_22;
      }

      sub_1B1A5F210(v5 + 1);
    }

    v8 = *v3;
    sub_1B1A7D058();
    MEMORY[0x1B2736930](*(v4 + 16));
    v9 = *(v4 + 16);
    if (v9)
    {
      v10 = v4 + 32;
      do
      {
        v10 += 4;
        sub_1B1A7D088();
        --v9;
      }

      while (v9);
    }

    result = sub_1B1A7D098();
    v11 = -1 << *(v8 + 32);
    a2 = result & ~v11;
    if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      v13 = *(v4 + 16);
      while (1)
      {
        v14 = *(*(v8 + 48) + 8 * a2);
        if (*(v14 + 16) == v13)
        {
          break;
        }

LABEL_13:
        a2 = (a2 + 1) & v12;
        if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_22;
        }
      }

      if (v13 && v14 != v4)
      {
        v15 = (v14 + 32);
        v16 = (v4 + 32);
        v17 = *(v4 + 16);
        while (v17)
        {
          if (*v15 != *v16)
          {
            goto LABEL_13;
          }

          ++v15;
          ++v16;
          if (!--v17)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_21:
      result = sub_1B1A7CFE8();
      __break(1u);
    }
  }

LABEL_22:
  v18 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = v4;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1B1A5EDE4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
    sub_1B1A5E8F4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1B1A5F0B4();
      goto LABEL_16;
    }

    sub_1B1A5F33C(v8 + 1);
  }

  v10 = *v4;
  sub_1B1A7D058();
  sub_1B1A7CB18();
  result = sub_1B1A7D098();
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

      result = sub_1B1A7CFB8();
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
  result = sub_1B1A7CFE8();
  __break(1u);
  return result;
}

void *sub_1B1A5EF64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB75E550, qword_1B1A7FA40);
  v2 = *v0;
  v3 = sub_1B1A7CE78();
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *sub_1B1A5F0B4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E548, &unk_1B1A7EAF0);
  v2 = *v0;
  v3 = sub_1B1A7CE78();
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

uint64_t sub_1B1A5F210(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB75E550, qword_1B1A7FA40);
  result = sub_1B1A7CE88();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    v8 = -1;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    v9 = v8 & *(v3 + 56);
    for (i = (v7 + 63) >> 6; v9; result = sub_1B1A5EB54(v13, v5))
    {
      v9 &= v9 - 1;
LABEL_11:
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_13;
      }

      v12 = *(v3 + 56 + 8 * v6);
      ++v11;
      if (v12)
      {
        v9 = (v12 - 1) & v12;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_13:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_1B1A5F33C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E548, &unk_1B1A7EAF0);
  result = sub_1B1A7CE88();
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
      sub_1B1A7D058();

      sub_1B1A7CB18();
      result = sub_1B1A7D098();
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

double sub_1B1A5F574@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1B1A47538(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1B1A731B8();
      v9 = v15;
    }

    v10 = *(v9 + 48);
    v11 = sub_1B1A7C808();
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    v12 = *(v9 + 56) + 48 * v7;
    v13 = *(v12 + 40);
    *a2 = *v12;
    *(a2 + 8) = *(v12 + 8);
    *(a2 + 24) = *(v12 + 24);
    *(a2 + 40) = v13;
    sub_1B1A7237C(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *(a2 + 28) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1B1A5F684(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataFrameStreamContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1A5F6E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  v16 = a1 + 32;
  v5 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_4;
    }

    v6 = (v16 + 16 * v4);
    v8 = *v6;
    v7 = v6[1];
    sub_1B1A7D058();

    sub_1B1A7CB18();
    v9 = sub_1B1A7D098();
    v10 = -1 << *(a2 + 32);
    v11 = v9 & ~v10;
    if ((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
    {
      break;
    }

LABEL_3:

LABEL_4:
    if (++v4 == v2)
    {
      return 0;
    }
  }

  v12 = ~v10;
  while (1)
  {
    v13 = (*(a2 + 48) + 16 * v11);
    v14 = *v13 == v8 && v13[1] == v7;
    if (v14 || (sub_1B1A7CFB8() & 1) != 0)
    {
      break;
    }

    v11 = (v11 + 1) & v12;
    if (((*(v5 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_3;
    }
  }

  return v4;
}

uint64_t sub_1B1A5F848(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  result = sub_1B1A5F6E8(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    return *(v5 + 16);
  }

  v35 = a1;
  v9 = result + 1;
  if (!__OFADD__(result, 1))
  {
    v10 = a2 + 56;
    while (1)
    {
      while (1)
      {
        v13 = *(v5 + 16);
        if (v9 == v13)
        {
          return v8;
        }

        if (v9 >= v13)
        {
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
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v14 = v5 + 32;
        v15 = (v5 + 32 + 16 * v9);
        if (*(a2 + 16))
        {
          break;
        }

LABEL_21:
        if (v8 != v9)
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v24 = *(v5 + 16);
          if (v8 >= v24)
          {
            goto LABEL_37;
          }

          if (v9 >= v24)
          {
            goto LABEL_38;
          }

          v25 = (v14 + 16 * v8);
          v27 = *v25;
          v26 = v25[1];
          v28 = v5;
          v30 = *v15;
          v29 = v15[1];

          v31 = v28;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v31 = sub_1B1A5F670(v28);
          }

          v32 = v31;
          v33 = v31 + 32;
          v34 = &v33[16 * v8];
          *v34 = v30;
          *(v34 + 1) = v29;
          v5 = v32;

          if (v9 >= *(v5 + 16))
          {
            goto LABEL_39;
          }

          v11 = &v33[16 * v9];
          *v11 = v27;
          *(v11 + 1) = v26;

          *v35 = v5;
        }

        v12 = __OFADD__(v8++, 1);
        if (v12)
        {
          goto LABEL_35;
        }

        v12 = __OFADD__(v9++, 1);
        if (v12)
        {
          goto LABEL_34;
        }
      }

      v36 = v5 + 32;
      v37 = v5;
      v17 = *v15;
      v16 = v15[1];
      sub_1B1A7D058();

      sub_1B1A7CB18();
      v18 = sub_1B1A7D098();
      v19 = -1 << *(a2 + 32);
      v20 = v18 & ~v19;
      if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
LABEL_20:

        v5 = v37;
        v14 = v36;
        goto LABEL_21;
      }

      v21 = ~v19;
      while (1)
      {
        v22 = (*(a2 + 48) + 16 * v20);
        v23 = *v22 == v17 && v22[1] == v16;
        if (v23 || (sub_1B1A7CFB8() & 1) != 0)
        {
          break;
        }

        v20 = (v20 + 1) & v21;
        if (((*(v10 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
        {
          goto LABEL_20;
        }
      }

      v5 = v37;
      v12 = __OFADD__(v9++, 1);
      if (v12)
      {
        goto LABEL_34;
      }
    }
  }

LABEL_40:
  __break(1u);
  return result;
}

unint64_t sub_1B1A5FA94(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1B1A5FB54(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1B1A7927C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1B1A5FA94(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1B1A5FC14(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1B1A7CEF8();
  return sub_1B1A7CEE8();
}

unint64_t sub_1B1A5FCC4()
{
  result = qword_1EB75E518;
  if (!qword_1EB75E518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E518);
  }

  return result;
}

uint64_t sub_1B1A5FE30(uint64_t a1)
{
  result = type metadata accessor for DataFrameStreamContainer(319);
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B1A5FF28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1B1A5FF70(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1B1A5FFB8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1B1A5FFF8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1B1A60040(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B1A600A0()
{
  result = qword_1EB75E520;
  if (!qword_1EB75E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E520);
  }

  return result;
}

uint64_t sub_1B1A601DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B1A5471C;

  return sub_1B1A585D4(a1, v4, v5, v6);
}

uint64_t sub_1B1A602E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

void sub_1B1A60378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t sub_1B1A60424()
{

  return swift_deallocClassInstance();
}

void sub_1B1A60480(char *a1, uint64_t a2, int a3)
{
  v6 = sub_1B1A7C958();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = &v32 - v9;
  v34 = v3;
  v33 = a3;
  if (a3)
  {
    v9 = a1 >> 32;
    if (!(a1 >> 32))
    {
      if ((a1 & 0xFFFFF800) == 0xD800)
      {
        __break(1u);
        goto LABEL_22;
      }

      v9 = a1 >> 16;
      if (a1 >> 16 <= 0x10)
      {
        if (a1 <= 0x7F)
        {
          v11 = a1 + 1;
LABEL_9:
          v35 = (v11 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (8 * (4 - (__clz(v11) >> 3))));
          goto LABEL_10;
        }

LABEL_15:
        v27 = (a1 & 0x3F) << 8;
        v28 = (a1 >> 6) + v27 + 33217;
        v29 = (v27 | (a1 >> 6) & 0x3F) << 8;
        v30 = (a1 >> 18) + ((v29 | (a1 >> 12) & 0x3F) << 8) - 2122219023;
        v31 = (a1 >> 12) + v29 + 8487393;
        if (v9)
        {
          v11 = v30;
        }

        else
        {
          v11 = v31;
        }

        if (a1 < 0x800)
        {
          v11 = v28;
        }

        goto LABEL_9;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (!a1)
  {
    __break(1u);
    goto LABEL_13;
  }

LABEL_10:
  v35 = sub_1B1A7CAF8();
  v36 = v12;

  MEMORY[0x1B2736400](46, 0xE100000000000000);
  v13 = v35;
  v14 = v36;
  sub_1B1A7C948();
  v15 = sub_1B1A7C918();
  v17 = v16;
  (*(v7 + 8))(v10, v6);
  v35 = v13;
  v36 = v14;

  MEMORY[0x1B2736400](v15, v17);

  v19 = v35;
  v18 = v36;
  v20 = v34;
  v34[2] = v35;
  v20[3] = v18;

  v21 = sub_1B1A7CD98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E560, &qword_1B1A7EB38);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_1B1A7E110;
  *(v22 + 56) = MEMORY[0x1E69E6158];
  *(v22 + 64) = sub_1B1A60954();
  *(v22 + 32) = v19;
  *(v22 + 40) = v18;
  sub_1B1A566E4();

  v23 = sub_1B1A7CDF8();
  sub_1B1A7C968(v21, &dword_1B1A45000, v23, "Opening transaction - %@", 24, 2, v22);

  sub_1B1A7CAE8();
  v24 = os_transaction_create();

  if (v24)
  {

    v20[4] = v24;
    type metadata accessor for OSActivity();
    v25 = swift_allocObject();
    *(v25 + 32) = 0;
    *(v25 + 24) = 0;
    *(v25 + 16) = sub_1B1A65F20(a1, v33, &dword_1B1A45000);
    swift_beginAccess();
    v26 = swift_unknownObjectRetain();
    os_activity_scope_enter(v26, (v25 + 24));
    swift_endAccess();
    swift_unknownObjectRelease();
    v20[5] = v25;
    return;
  }

LABEL_22:
  __break(1u);
}

void *OSTransaction.deinit(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1B1A7CD98();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E560, &qword_1B1A7EB38);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B1A7E110;
  v5 = *(v1 + 16);
  v6 = *(v2 + 24);
  *(v4 + 56) = MEMORY[0x1E69E6158];
  *(v4 + 64) = sub_1B1A60954();
  *(v4 + 32) = v5;
  *(v4 + 40) = v6;
  sub_1B1A566E4();

  v7 = sub_1B1A7CDF8();
  sub_1B1A7C968(v3, &dword_1B1A45000, v7, "Closing transaction - %@", 24, 2, v4);

  v8 = *(v2 + 40);
  swift_beginAccess();
  os_activity_scope_leave((v8 + 24));
  swift_endAccess();

  swift_unknownObjectRelease();
  return v2;
}

unint64_t sub_1B1A60954()
{
  result = qword_1EB75E568[0];
  if (!qword_1EB75E568[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB75E568);
  }

  return result;
}

uint64_t OSTransaction.__deallocating_deinit(uint64_t a1)
{
  OSTransaction.deinit(a1);

  return swift_deallocClassInstance();
}

uint64_t static OSTransaction.named(_:block:)(char *a1, uint64_t a2, int a3, void (*a4)(void))
{
  swift_initStackObject();
  sub_1B1A60480(a1, a2, a3);
  a4();
}

uint64_t static OSTransaction.named(_:block:)(char *a1, uint64_t a2, int a3, void (*a4)(uint64_t))
{
  v8 = swift_allocObject();
  sub_1B1A60480(a1, a2, a3);
  a4(v8);
}

uint64_t sub_1B1A60B34()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[3];
  v4 = v0[4];
  if (qword_1EDB764F0 != -1)
  {
    goto LABEL_18;
  }

  while (1)
  {
    v5 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v5, qword_1EDB770A8);
    sub_1B1A7CEC8();

    MEMORY[0x1B2736400](v1, v2);
    sub_1B1A561F0(0xD00000000000001DLL, 0x80000001B1A81130, 0xD000000000000070, 0x80000001B1A81150, 0x2928726961706572, 0xE800000000000000);

    v6 = *(v4 + 16);
    v7 = *(v6 + 32);
    v8 = v7 - 8;
    if (!__OFSUB__(v7, 8))
    {
      break;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    swift_once();
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 16;
  while (1)
  {
    v14 = atomic_load((*(v6 + 16) + v8 + 4));
    v15 = v14 - 1;
    if ((v14 - 1) > 4u)
    {
      break;
    }

    v6 = *(v4 + 16);
    v16 = *(v6 + 32);
    if (__OFSUB__(v16, v12 - 8))
    {
      goto LABEL_16;
    }

    v17 = v16 - (v12 - 8);
    if (v10 >= *(*(v6 + 16) + v17))
    {
      goto LABEL_13;
    }

    if (v12 == 0x800000008)
    {
      goto LABEL_17;
    }

    if (((0xCu >> v15) & 1) != 0 && __CFADD__(v11++, 1))
    {
      __break(1u);
LABEL_13:
      sub_1B1A7CEC8();
      MEMORY[0x1B2736400](0xD000000000000016, 0x80000001B1A811F0);
      v19 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v19);

      MEMORY[0x1B2736400](0x646E6920726F6620, 0xEC000000203A7865);
      v20 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v20);

      MEMORY[0x1B2736400](0xD000000000000021, 0x80000001B1A81210);
      sub_1B1A561F0(0, 0xE000000000000000, 0xD000000000000070, 0x80000001B1A81150, 0x2928726961706572, 0xE800000000000000);

      break;
    }

    ++v9;
    v10 = *(*(v6 + 16) + v17);
    v13 = __OFSUB__(v16, v12);
    v8 = v16 - v12;
    v12 += 8;
    if (v13)
    {
      goto LABEL_15;
    }
  }

  atomic_store(v9, (*(v3 + 16) + 16));
  atomic_store(v11, (*(v3 + 16) + 20));
  **(v3 + 16) = 0;
  sub_1B1A7CEC8();
  MEMORY[0x1B2736400](0xD00000000000001DLL, 0x80000001B1A811D0);
  MEMORY[0x1B2736400](v1, v2);
  MEMORY[0x1B2736400](0x7277206874697720, 0xEF203A6E65747469);
  v21 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v21);

  MEMORY[0x1B2736400](0x6C656420646E6120, 0xEE00203A64657465);
  v22 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v22);

  sub_1B1A561F0(0, 0xE000000000000000, 0xD000000000000070, 0x80000001B1A81150, 0x2928726961706572, 0xE800000000000000);
}

uint64_t sub_1B1A60F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

unint64_t sub_1B1A60FE0()
{
  result = qword_1EB75E5F0;
  if (!qword_1EB75E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E5F0);
  }

  return result;
}

uint64_t static SegmentedDataRegion.from<A, B>(tuple:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v38 = a5;
  v39 = a6;
  v40 = a7;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v12 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v37 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v42 = &v34 - v15;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v34 - v18;
  v20 = *(a3 - 8);
  (*(v20 + 16))(&v34 - v18, a1, a3, v17);
  v21 = *(TupleTypeMetadata2 + 48);
  v36 = a4;
  v22 = *(a4 - 8);
  (*(v22 + 16))(&v19[v21], a2, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E5F8, &qword_1B1A7ECD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1A7ECA0;
  v41 = v12;
  v24 = *(v12 + 16);
  v25 = v42;
  v24(v42, v19, TupleTypeMetadata2);
  v35 = *(TupleTypeMetadata2 + 48);
  v26 = v38;
  *(inited + 56) = a3;
  *(inited + 64) = v26;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(v20 + 32))(boxed_opaque_existential_1, v25, a3);
  v28 = v37;
  v24(v37, v19, TupleTypeMetadata2);
  v29 = *(TupleTypeMetadata2 + 48);
  v30 = v36;
  v31 = v39;
  *(inited + 96) = v36;
  *(inited + 104) = v31;
  v32 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(v22 + 32))(v32, &v28[v29], v30);
  (*(v20 + 8))(v28, a3);
  (*(v22 + 8))(&v42[v35], v30);
  SegmentedDataRegion.init(representables:)(inited, v40);
  return (*(v41 + 8))(v19, TupleTypeMetadata2);
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t static SegmentedDataRegion.from<A, B, C>(tuple:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t *a9@<X8>, void (*a10)(void, void))
{
  v66 = a8;
  v64 = a7;
  v69 = a3;
  v63 = a2;
  v68 = a9;
  v67 = a10;
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  v15 = *(TupleTypeMetadata3 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata3);
  v65 = v55 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v71 = v55 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v21 = v55 - v20;
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = v55 - v24;
  v26 = *(a4 - 8);
  v58 = v26;
  (*(v26 + 16))(v55 - v24, a1, a4, v23);
  v27 = *(TupleTypeMetadata3 + 48);
  v28 = a5;
  v70 = a5;
  v29 = *(a5 - 8);
  (*(v29 + 16))(&v25[v27], v63, v28);
  v30 = *(TupleTypeMetadata3 + 64);
  v59 = a6;
  v61 = *(a6 - 8);
  (*(v61 + 16))(&v25[v30], v69, a6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E5F8, &qword_1B1A7ECD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1A7ECB0;
  v69 = v15;
  v32 = *(v15 + 16);
  v60 = v21;
  v32(v21, v25, TupleTypeMetadata3);
  v63 = *(TupleTypeMetadata3 + 48);
  v62 = *(TupleTypeMetadata3 + 64);
  v57 = a4;
  v33 = v64;
  *(inited + 56) = a4;
  *(inited + 64) = v33;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(v26 + 32))(boxed_opaque_existential_1, v21, a4);
  v35 = v71;
  v32(v71, v25, TupleTypeMetadata3);
  v36 = *(TupleTypeMetadata3 + 48);
  v64 = *(TupleTypeMetadata3 + 64);
  v37 = v70;
  v38 = v66;
  *(inited + 96) = v70;
  *(inited + 104) = v38;
  v39 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(v29 + 32))(v39, &v35[v36], v37);
  v40 = v65;
  v66 = v25;
  v32(v65, v25, TupleTypeMetadata3);
  v41 = *(TupleTypeMetadata3 + 48);
  v56 = TupleTypeMetadata3;
  v42 = *(TupleTypeMetadata3 + 64);
  v43 = v59;
  v44 = v67;
  *(inited + 136) = v59;
  *(inited + 144) = v44;
  v45 = __swift_allocate_boxed_opaque_existential_1((inited + 112));
  v46 = v61;
  (*(v61 + 32))(v45, &v40[v42], v43);
  v47 = *(v29 + 8);
  v55[1] = v29 + 8;
  v67 = v47;
  v48 = v70;
  v47(&v40[v41], v70);
  v49 = *(v58 + 8);
  v50 = v57;
  v49(v40, v57);
  v51 = *(v46 + 8);
  v52 = v71;
  v51(&v71[v64], v43);
  v49(v52, v50);
  v53 = v60;
  v51(&v60[v62], v43);
  v67(&v53[v63], v48);
  SegmentedDataRegion.init(representables:)(inited, v68);
  return (*(v69 + 8))(v66, v56);
}

uint64_t static SegmentedDataRegion.from<A, B, C, D>(tuple:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, char *a12, void (*a13)(void, void))
{
  v87 = a4;
  v97 = a3;
  v98 = a2;
  v88 = a9;
  v89 = a13;
  v86 = a12;
  v84 = a11;
  v83 = a10;
  v99 = a5;
  v100 = a6;
  v101 = a7;
  v102 = a8;
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v19 = *(TupleTypeMetadata - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v85 = &v73 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v94 = &v73 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v92 = &v73 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v93 = &v73 - v26;
  v28 = MEMORY[0x1EEE9AC00](v27);
  v30 = &v73 - v29;
  v31 = *(a5 - 8);
  v96 = v31;
  (*(v31 + 16))(&v73 - v29, a1, a5, v28);
  v32 = TupleTypeMetadata[12];
  v95 = a6;
  v103 = *(a6 - 8);
  (*(v103 + 16))(&v30[v32], v98, a6);
  v33 = TupleTypeMetadata[16];
  v91 = a7;
  v98 = *(a7 - 8);
  (*(v98 + 16))(&v30[v33], v97, a7);
  v34 = TupleTypeMetadata[20];
  v78 = a8;
  v97 = *(a8 - 8);
  (*(v97 + 16))(&v30[v34], v87, a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E5F8, &qword_1B1A7ECD0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B1A7ECC0;
  v87 = v19;
  v36 = *(v19 + 16);
  v37 = v93;
  v36(v93, v30, TupleTypeMetadata);
  v82 = TupleTypeMetadata[12];
  v81 = TupleTypeMetadata[16];
  v80 = TupleTypeMetadata[20];
  v90 = a5;
  v38 = v83;
  *(inited + 56) = a5;
  *(inited + 64) = v38;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
  (*(v31 + 32))(boxed_opaque_existential_1, v37, a5);
  v40 = v92;
  v36(v92, v30, TupleTypeMetadata);
  v41 = TupleTypeMetadata[12];
  v83 = TupleTypeMetadata[16];
  v79 = TupleTypeMetadata[20];
  v42 = v95;
  v43 = v84;
  *(inited + 96) = v95;
  *(inited + 104) = v43;
  v44 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(v103 + 32))(v44, &v40[v41], v42);
  v45 = v94;
  v36(v94, v30, TupleTypeMetadata);
  v84 = TupleTypeMetadata[12];
  v46 = TupleTypeMetadata[16];
  v77 = TupleTypeMetadata[20];
  v47 = v91;
  v48 = v86;
  *(inited + 136) = v91;
  *(inited + 144) = v48;
  v49 = __swift_allocate_boxed_opaque_existential_1((inited + 112));
  v50 = &v45[v46];
  v51 = v47;
  (*(v98 + 32))(v49, v50, v47);
  v52 = v85;
  v86 = v30;
  v36(v85, v30, TupleTypeMetadata);
  v53 = TupleTypeMetadata[12];
  v54 = TupleTypeMetadata[16];
  v76 = TupleTypeMetadata;
  v55 = TupleTypeMetadata[20];
  v56 = v78;
  v57 = v89;
  *(inited + 176) = v78;
  *(inited + 184) = v57;
  v58 = __swift_allocate_boxed_opaque_existential_1((inited + 152));
  v59 = v97;
  v60 = v56;
  (*(v97 + 32))(v58, &v52[v55], v56);
  v61 = *(v98 + 8);
  v98 += 8;
  v75 = v61;
  v61(&v52[v54], v51);
  v62 = v103 + 8;
  v89 = *(v103 + 8);
  v63 = v95;
  v89(&v52[v53], v95);
  v103 = v62;
  v74 = *(v96 + 8);
  v96 += 8;
  v64 = v90;
  v74(v52, v90);
  v65 = *(v59 + 8);
  v97 = v59 + 8;
  v66 = v94;
  v65(&v94[v77], v60);
  v89(&v66[v84], v63);
  v67 = v74;
  v74(v66, v64);
  v68 = v92;
  v65(&v92[v79], v60);
  v69 = v91;
  v70 = v75;
  v75(&v68[v83], v91);
  v67(v68, v90);
  v71 = v93;
  v65(&v93[v80], v60);
  v70(&v71[v81], v69);
  v89(&v71[v82], v95);
  SegmentedDataRegion.init(representables:)(inited, v88);
  return (*(v87 + 8))(v86, v76);
}

uint64_t SegmentedDataRegion.toTuple<A, B>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(char *, char *, uint64_t)@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v33 = a4;
  v35 = a3;
  v36 = a5;
  v8 = sub_1B1A7CE18();
  v31 = *(v8 - 8);
  v32 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v30 - v9;
  v34 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v30 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1B1A7CE18();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - v15;
  v17 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *v5;
  v37 = *v5;
  SegmentedDataRegion.subscript.getter(0, a1, v35, v16);
  if ((*(v17 + 48))(v16, 1, a1) == 1)
  {
    (*(v14 + 8))(v16, v13);
LABEL_5:
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    return (*(*(TupleTypeMetadata2 - 8) + 56))(v36, 1, 1, TupleTypeMetadata2);
  }

  v22 = *(v17 + 32);
  v22(v20, v16, a1);
  v37 = v21;
  SegmentedDataRegion.subscript.getter(1, a2, v33, v10);
  v23 = v34;
  if ((*(v34 + 48))(v10, 1, a2) == 1)
  {
    (*(v17 + 8))(v20, a1);
    (*(v31 + 8))(v10, v32);
    goto LABEL_5;
  }

  v35 = *(v23 + 32);
  v26 = v30;
  v35(v30, v10, a2);
  v27 = swift_getTupleTypeMetadata2();
  v28 = *(v27 + 48);
  v29 = v36;
  v22(v36, v20, a1);
  v35(&v29[v28], v26, a2);
  return (*(*(v27 - 8) + 56))(v29, 0, 1, v27);
}

uint64_t SegmentedDataRegion.toTuple<A, B, C>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(uint64_t, char *, uint64_t)@<X3>, double (*a5)(char *, char *, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v46 = a6;
  v50 = a5;
  v52 = a4;
  v53 = a7;
  v11 = sub_1B1A7CE18();
  v41 = *(v11 - 8);
  v42 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v40 - v12;
  v54 = a3;
  v49 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v47 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1B1A7CE18();
  v43 = *(v15 - 8);
  v44 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v51 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v45 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B1A7CE18();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v40 - v22;
  v24 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v40 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *v7;
  v55 = *v7;
  SegmentedDataRegion.subscript.getter(0, a1, v52, v23);
  if ((*(v24 + 48))(v23, 1, a1) == 1)
  {
    (*(v21 + 8))(v23, v20);
  }

  else
  {
    v29 = *(v24 + 32);
    v29(v27, v23, a1);
    v55 = v28;
    SegmentedDataRegion.subscript.getter(1, a2, v50, v17);
    if ((*(v51 + 48))(v17, 1, a2) == 1)
    {
      (*(v24 + 8))(v27, a1);
      v31 = v43;
      v30 = v44;
    }

    else
    {
      v52 = v29;
      v32 = v45;
      v50 = *(v51 + 32);
      v50(v45, v17, a2);
      v55 = v28;
      v17 = v48;
      v33 = v54;
      SegmentedDataRegion.subscript.getter(2, v54, v46, v48);
      v34 = v49;
      if ((*(v49 + 48))(v17, 1, v33) != 1)
      {
        v51 = *(v34 + 32);
        (v51)(v47, v17, v54);
        TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
        v38 = *(TupleTypeMetadata3 + 48);
        v49 = *(TupleTypeMetadata3 + 64);
        v39 = v53;
        v52(v53, v27, a1);
        v50((v39 + v38), v32, a2);
        (v51)(v39 + v49, v47, v54);
        return (*(*(TupleTypeMetadata3 - 8) + 56))(v39, 0, 1, TupleTypeMetadata3);
      }

      (*(v51 + 8))(v32, a2);
      (*(v24 + 8))(v27, a1);
      v31 = v41;
      v30 = v42;
    }

    (*(v31 + 8))(v17, v30);
  }

  v35 = swift_getTupleTypeMetadata3();
  return (*(*(v35 - 8) + 56))(v53, 1, 1, v35);
}

uint64_t SegmentedDataRegion.toTuple<A, B, C, D>()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, void (*a6)(uint64_t, char *, uint64_t)@<X5>, double (*a7)(char *, char *, uint64_t)@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v55 = a8;
  v62 = a7;
  v65 = a6;
  v68 = a5;
  v70 = a9;
  v52 = sub_1B1A7CE18();
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v57 = &v51 - v14;
  v71 = a4;
  v64 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v56 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1B1A7CE18();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v60 = &v51 - v17;
  v69 = a3;
  v61 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v63 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1B1A7CE18();
  v58 = *(v20 - 8);
  v59 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - v21;
  v67 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v66 = &v51 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1B1A7CE18();
  v26 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v28 = &v51 - v27;
  v29 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v51 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = *v9;
  v72 = *v9;
  SegmentedDataRegion.subscript.getter(0, a1, v68, v28);
  if ((*(v29 + 48))(v28, 1, a1) == 1)
  {
    (*(v26 + 8))(v28, v25);
LABEL_5:
    v36 = v71;
    v37 = v69;
    goto LABEL_6;
  }

  v34 = *(v29 + 32);
  v34(v32, v28, a1);
  v72 = v33;
  SegmentedDataRegion.subscript.getter(1, a2, v65, v22);
  v35 = v67;
  if ((*(v67 + 48))(v22, 1, a2) == 1)
  {
    (*(v29 + 8))(v32, a1);
    (*(v58 + 8))(v22, v59);
    goto LABEL_5;
  }

  v65 = v34;
  v68 = v32;
  v58 = *(v35 + 32);
  v59 = v35 + 32;
  (v58)(v66, v22, a2);
  v72 = v33;
  v40 = v60;
  v37 = v69;
  SegmentedDataRegion.subscript.getter(2, v69, v62, v60);
  v41 = v61;
  v42 = (*(v61 + 48))(v40, 1, v37);
  v36 = v71;
  if (v42 == 1)
  {
    (*(v35 + 8))(v66, a2);
    (*(v29 + 8))(v68, a1);
    (*(v53 + 8))(v40, v54);
  }

  else
  {
    v62 = *(v41 + 32);
    v62(v63, v40, v37);
    v72 = v33;
    v43 = v41;
    v44 = v57;
    SegmentedDataRegion.subscript.getter(3, v36, v55, v57);
    v45 = v64;
    if ((*(v64 + 48))(v44, 1, v36) != 1)
    {
      v46 = *(v45 + 32);
      v64 = v45 + 32;
      v46(v56, v44, v36);
      v72 = a1;
      v73 = a2;
      v74 = v37;
      v75 = v36;
      TupleTypeMetadata = swift_getTupleTypeMetadata();
      v48 = TupleTypeMetadata[12];
      v49 = TupleTypeMetadata[16];
      v67 = TupleTypeMetadata[20];
      v50 = v70;
      v65(v70, v68, a1);
      (v58)(v50 + v48, v66, a2);
      v62((v50 + v49), v63, v37);
      v46((v50 + v67), v56, v71);
      return (*(*(TupleTypeMetadata - 1) + 56))(v50, 0, 1, TupleTypeMetadata);
    }

    (*(v43 + 8))(v63, v37);
    (*(v67 + 8))(v66, a2);
    (*(v29 + 8))(v68, a1);
    (*(v51 + 8))(v44, v52);
  }

LABEL_6:
  v72 = a1;
  v73 = a2;
  v74 = v37;
  v75 = v36;
  v38 = swift_getTupleTypeMetadata();
  return (*(*(v38 - 8) + 56))(v70, 1, 1, v38);
}

uint64_t DataFrameStreamQuota.init(maxStreamSizeInBytes:maxSegmentAge:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 4) = BYTE4(result) & 1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

unint64_t TypedStream.applyPolicy(quota:)(int *a1)
{
  v2 = sub_1B1A7C908();
  v33 = *(v2 - 8);
  v34 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v31[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31[-v6];
  v8 = *a1;
  v9 = *(a1 + 4);
  v10 = *(a1 + 1);
  v11 = *(a1 + 16);
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for InternalLogger(0);
  v13 = __swift_project_value_buffer(v12, qword_1EDB770A8);
  v38 = 0;
  v39 = 0xE000000000000000;
  sub_1B1A7CEC8();
  v41 = v38;
  v42 = v39;
  MEMORY[0x1B2736400](0xD000000000000010, 0x80000001B1A81240);
  v32 = v8;
  LODWORD(v38) = v8;
  BYTE4(v38) = v9;
  v39 = v10;
  v40 = v11;
  sub_1B1A7CF18();
  v35 = "edStream+Quota.swift";
  v36 = "Applying quota: ";
  v37 = v13;
  sub_1B1A561F0(v41, v42, 0xD000000000000064, 0x80000001B1A81260, 0xD000000000000013, 0x80000001B1A812D0);

  if (v11 & v9)
  {
    return result;
  }

  result = sub_1B1A5992C();
  if (!result)
  {
    return result;
  }

  v15 = result;
  if (v11)
  {

    if (v9)
    {
      return result;
    }
  }

  else
  {
    sub_1B1A7C8F8();
    sub_1B1A7C8D8();
    v16 = v34;
    v17 = *(v33 + 8);
    v18 = v17(v4, v34);
    MEMORY[0x1EEE9AC00](v18);
    *&v31[-16] = v7;
    result = sub_1B1A63C2C(sub_1B1A63DC8, &v31[-32], v15);
    if ((v19 & 1) == 0 && result >= 1)
    {
      if (*(v15 + 16) < result)
      {
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      v20 = sub_1B1A7A620(v15 + 32, 0, (2 * result) | 1);

      sub_1B1A5B560(v20);
    }

    result = v17(v7, v16);
    if (v9)
    {
      return result;
    }
  }

  result = TypedStream.segmentSize.getter();
  if (!result)
  {
    __break(1u);
    goto LABEL_22;
  }

  v38 = 0;
  v39 = 0xE000000000000000;
  v21 = v32;
  v22 = v32 / result;
  sub_1B1A7CEC8();
  MEMORY[0x1B2736400](0x616572745378616DLL, 0xEF203A657A69536DLL);
  LODWORD(v41) = v21;
  v23 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v23);

  MEMORY[0x1B2736400](0xD000000000000017, 0x80000001B1A812F0);
  LODWORD(v41) = TypedStream.segmentSize.getter();
  v24 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v24);

  MEMORY[0x1B2736400](0xD000000000000019, 0x80000001B1A81310);
  LODWORD(v41) = v22;
  v25 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v25);

  sub_1B1A561F0(v38, v39, 0xD000000000000064, v36 | 0x8000000000000000, 0xD000000000000013, v35 | 0x8000000000000000);

  result = sub_1B1A5992C();
  if (result)
  {
    v26 = *(result + 16);
    v27 = v26 - v22;
    if (v26 > v22)
    {
      v28 = result;
      v38 = 0;
      v39 = 0xE000000000000000;
      sub_1B1A7CEC8();

      v38 = 0x676E6974656C6564;
      v39 = 0xE900000000000020;
      v41 = v27;
      v29 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v29);

      MEMORY[0x1B2736400](0x67657320646C6F20, 0xED000073746E656DLL);
      sub_1B1A561F0(v38, v39, 0xD000000000000064, v36 | 0x8000000000000000, 0xD000000000000013, v35 | 0x8000000000000000);

      if ((v27 & 0x8000000000000000) == 0)
      {
        if (*(v28 + 16) >= v27)
        {
          v30 = sub_1B1A7A620(v28 + 32, 0, (2 * v27) | 1);

          sub_1B1A5B560(v30);
        }

        goto LABEL_24;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
      return result;
    }
  }

  return result;
}

uint64_t sub_1B1A639CC(uint64_t *a1, uint64_t a2)
{
  v3 = sub_1B1A7C908();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v15 - v8;
  v10 = *a1;
  v11 = a1[1];
  v15[0] = 0;
  if (sub_1B1A63CD0(v10, v11, v15))
  {
    sub_1B1A7C8B8();
    (*(v4 + 32))(v9, v6, v3);
    v12 = sub_1B1A7C8E8();
    (*(v4 + 8))(v9, v3);
  }

  else
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v13, qword_1EDB770A8);
    v15[0] = 0;
    v15[1] = 0xE000000000000000;
    sub_1B1A7CEC8();

    strcpy(v15, "segment name:");
    HIWORD(v15[1]) = -4864;
    MEMORY[0x1B2736400](v10, v11);
    MEMORY[0x1B2736400](0xD000000000000018, 0x80000001B1A81350);
    sub_1B1A561D8(v15[0], v15[1], 0xD000000000000064, 0x80000001B1A81260, 0xD000000000000013, 0x80000001B1A812D0);

    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_1B1A63C2C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  result = *(a3 + 16);
  v6 = (a3 + 16 * result + 24);
  do
  {
    v7 = result;
    if (!result)
    {
      break;
    }

    v8 = *v6;
    v10[0] = *(v6 - 1);
    v10[1] = v8;

    v9 = a1(v10);

    if (v3)
    {
      break;
    }

    v6 -= 2;
    result = v7 - 1;
  }

  while ((v9 & 1) == 0);
  return result;
}

BOOL sub_1B1A63CD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      if (a1 > 0x20u || ((0x100003E01uLL >> a1) & 1) == 0)
      {
        goto LABEL_10;
      }

      return 0;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 >= 0x21 || ((0x100003E01uLL >> v4) & 1) == 0)
      {
LABEL_10:
        v6 = _swift_stdlib_strtod_clocale();
        return v6 && *v6 == 0;
      }

      return 0;
    }
  }

  sub_1B1A7CEB8();
  if (!v3)
  {
    return v8;
  }

  return v5;
}

uint64_t getEnumTagSinglePayload for DataFrameStreamQuota(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataFrameStreamQuota(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 17) = v3;
  return result;
}

_BYTE *sub_1B1A63E44@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v2 = *result;
  v3 = v2 > 0x20;
  v4 = (1 << v2) & 0x100003E01;
  if (v3 || v4 == 0)
  {
    result = _swift_stdlib_strtod_clocale();
    if (result)
    {
      v7 = *result == 0;
    }

    else
    {
      v7 = 0;
    }

    *a2 = v7;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

uint64_t sub_1B1A63EC4(int a1)
{
  if (a1 == 2)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (a1 == 1)
  {
    return 0;
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1B1A63EE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E7688];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B1A63F5C(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E7678];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1B1A63FC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E7678];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B1A64038(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E7678];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1B1A640A8@<X0>(int *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B1A63EC4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1B1A640D4@<X0>(_DWORD *a1@<X8>)
{
  result = sub_1B1A63EDC(*v1);
  *a1 = result;
  return result;
}

uint64_t AnnotatedMessage.init(annotation:payload:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for AnnotatedMessage(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t AnnotatedMessage.write(to:)(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v24 = *(a2 + 24);
  v23 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 16);
  v9 = *(v8 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v9 + 16);
  v22 = v15;
  v14(v13, v15, v8, v11);
  v16 = *(a2 + 32);
  v17 = *(a2 + 40);
  v25 = 0;
  PBDataWriterPlaceMark();
  (*(v16 + 16))(a1, v8, v16);
  if (v2)
  {
    return (*(v9 + 8))(v13, v8);
  }

  PBDataWriterRecallMark();
  (*(v9 + 8))(v13, v8);
  v19 = v23;
  v20 = v24;
  (*(v23 + 16))(v6, v22 + *(a2 + 52), v24);
  v25 = 0;
  PBDataWriterPlaceMark();
  (*(v17 + 16))(a1, v20, v17);
  PBDataWriterRecallMark();
  return (*(v19 + 8))(v6, v20);
}

uint64_t static AnnotatedMessage.read(from:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v69 = a4;
  v70 = a5;
  v67 = a1;
  v60 = a6;
  v8 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v59 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v58 = &v53 - v11;
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v57 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v61 = &v53 - v17;
  v80 = sub_1B1A7CE18();
  v18 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v63 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v53 - v21;
  v23 = sub_1B1A7CE18();
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v64 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v26);
  v29 = &v53 - v28;
  v66 = v13;
  (*(v13 + 56))(&v53 - v28, 1, 1, a2, v27);
  v62 = v8;
  (*(v8 + 56))(v22, 1, 1, a3);
  v72 = a2;
  v73 = a3;
  v74 = v69;
  v75 = v70;
  v76 = v29;
  v77 = v67;
  v78 = v22;
  v79[0] = a2;
  v65 = a2;
  v79[1] = a3;
  v79[2] = v69;
  v79[3] = v70;
  v30 = type metadata accessor for AnnotatedMessage.Fields(0, v79);
  WitnessTable = swift_getWitnessTable();
  v32 = v30;
  v33 = v23;
  v34 = v68;
  PBDataReader.readFields<A>(each:)(sub_1B1A65444, v71, v32, WitnessTable);
  v35 = v80;
  if (!v34)
  {
    v36 = v63;
    v54 = a3;
    v68 = v22;
    v56 = v18;
    v37 = *(v24 + 16);
    v38 = v64;
    v67 = v29;
    v37(v64, v29, v23);
    v39 = v65;
    v40 = (*(v66 + 48))(v38, 1, v65);
    v55 = v24;
    if (v40 == 1)
    {
      (*(v24 + 8))(v38, v33);
    }

    else
    {
      v53 = v33;
      v41 = v61;
      v64 = *(v66 + 32);
      (v64)(v61, v38, v39);
      v42 = v56;
      v43 = v36;
      v44 = v80;
      (*(v56 + 16))(v36, v68, v80);
      v45 = v62;
      v46 = v54;
      if ((*(v62 + 48))(v43, 1, v54) != 1)
      {
        v49 = *(v45 + 32);
        v50 = v58;
        v49(v58, v43, v46);
        v51 = v57;
        (v64)(v57, v41, v39);
        v52 = v59;
        v49(v59, v50, v46);
        AnnotatedMessage.init(annotation:payload:)(v51, v52, v39, v46, v69, v70, v60);
        (*(v56 + 8))(v68, v80);
        return (*(v55 + 8))(v67, v53);
      }

      (*(v66 + 8))(v41, v39);
      (*(v42 + 8))(v43, v44);
      v33 = v53;
    }

    sub_1B1A65484();
    swift_allocError();
    *v47 = 0;
    v47[1] = 0;
    swift_willThrow();
    v35 = v80;
    v18 = v56;
    v24 = v55;
    v29 = v67;
    v22 = v68;
  }

  (*(v18 + 8))(v22, v35);
  return (*(v24 + 8))(v29, v33);
}

id sub_1B1A64B2C(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a7;
  v26 = a8;
  v23 = a2;
  v24 = a4;
  v11 = sub_1B1A7CE18();
  v22 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v21 - v12;
  v14 = sub_1B1A7CE18();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - v16;
  if (*a1)
  {
    v18 = v27;
    result = PBDataReader.readSubmessage<A>(ofType:)(a6, a6, v26);
    if (!v18)
    {
      (*(*(a6 - 8) + 56))(v13, 0, 1, a6);
      return (*(v22 + 40))(v24, v13, v11);
    }
  }

  else
  {
    v20 = v27;
    result = PBDataReader.readSubmessage<A>(ofType:)(a5, a5, v25);
    if (!v20)
    {
      (*(*(a5 - 8) + 56))(v17, 0, 1, a5);
      return (*(v15 + 40))(v23, v17, v14);
    }
  }

  return result;
}

uint64_t AnnotatedMessage.AnnotationOnly.write(to:)(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 16);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, v10, v5, v7);
  v11 = *(a2 + 32);
  v13[0] = 0;
  PBDataWriterPlaceMark();
  (*(v11 + 16))(a1, v5, v11);
  if (!v2)
  {
    PBDataWriterRecallMark();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t static AnnotatedMessage.AnnotationOnly.read(from:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v37 = a1;
  v34 = a6;
  v10 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v33 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v35 = &v32 - v13;
  v14 = sub_1B1A7CE18();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v32 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = &v32 - v20;
  v36 = v10;
  (*(v10 + 56))(&v32 - v20, 1, 1, a2, v19);
  v39 = a2;
  v40 = a3;
  v41 = a4;
  v42 = a5;
  v43 = v21;
  v44 = v37;
  v45[0] = a2;
  v45[1] = a3;
  v45[2] = a4;
  v45[3] = a5;
  v22 = type metadata accessor for AnnotatedMessage.Fields(0, v45);
  WitnessTable = swift_getWitnessTable();
  v24 = v45[5];
  PBDataReader.readFields<A>(each:)(sub_1B1A654D8, v38, v22, WitnessTable);
  if (v24)
  {
    return (*(v15 + 8))(v21, v14);
  }

  v26 = v35;
  (*(v15 + 16))(v17, v21, v14);
  v27 = v36;
  if ((*(v36 + 48))(v17, 1, a2) == 1)
  {
    v28 = *(v15 + 8);
    v28(v17, v14);
    sub_1B1A65484();
    swift_allocError();
    *v29 = 0;
    v29[1] = 0;
    swift_willThrow();
    return (v28)(v21, v14);
  }

  else
  {
    v30 = *(v27 + 32);
    v30(v26, v17, a2);
    v31 = v33;
    v30(v33, v26, a2);
    v30(v34, v31, a2);
    return (*(v15 + 8))(v21, v14);
  }
}

id sub_1B1A65230(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_1B1A7CE18();
  v13 = *(v12 - 8);
  *&v15 = MEMORY[0x1EEE9AC00](v12).n128_u64[0];
  v17 = &v20 - v16;
  if (*a1)
  {
    return [a3 skipValueWithTag:2 type:{2, v15}];
  }

  v19 = v14;
  result = PBDataReader.readSubmessage<A>(ofType:)(a4, a4, a6);
  if (!v6)
  {
    (*(*(a4 - 8) + 56))(v17, 0, 1, a4);
    return (*(v13 + 40))(a2, v17, v19);
  }

  return result;
}

unint64_t sub_1B1A65484()
{
  result = qword_1EB75E600[0];
  if (!qword_1EB75E600[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB75E600);
  }

  return result;
}

uint64_t sub_1B1A654FC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B1A65588(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_1B1A65764(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
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
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_1B1A65A20(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1A65A90(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1B1A65BD0(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

Swift::Void __swiftcall OSActivity.close()()
{
  swift_beginAccess();
  os_activity_scope_leave((v0 + 24));
  swift_endAccess();
}

uint64_t sub_1B1A65E50()
{
  qword_1EB75E690 = dlsym(0xFFFFFFFFFFFFFFFELL, "_os_activity_current");

  return swift_unknownObjectRetain();
}

uint64_t OSActivity.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

os_activity_t sub_1B1A65F20(char *description, char a2, void *dso)
{
  if ((a2 & 1) == 0)
  {
    if (description)
    {
      if (dso)
      {
        if (qword_1EB75E270 == -1)
        {
LABEL_5:
          v4 = dso;
          v5 = qword_1EB75E690;

          return _os_activity_create(v4, description, v5, OS_ACTIVITY_FLAG_DEFAULT);
        }

LABEL_19:
        v14 = dso;
        swift_once();
        dso = v14;
        goto LABEL_5;
      }

LABEL_28:
      result = sub_1B1A7CF28();
      __break(1u);
      return result;
    }

    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (description >> 32)
  {
    goto LABEL_18;
  }

  if ((description & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    goto LABEL_28;
  }

  if (description >> 16 > 0x10)
  {
    __break(1u);
  }

  else if (description <= 0x7F)
  {
    v7 = description + 1;
    goto LABEL_13;
  }

  v8 = (description & 0x3F) << 8;
  v9 = (description >> 6) + v8 + 33217;
  v10 = (v8 | (description >> 6) & 0x3F) << 8;
  v11 = (description >> 18) + ((v10 | (description >> 12) & 0x3F) << 8) - 2122219023;
  v12 = (description >> 12) + v10 + 8487393;
  if (description >> 16)
  {
    v7 = v11;
  }

  else
  {
    v7 = v12;
  }

  if (description < 0x800)
  {
    v7 = v9;
  }

LABEL_13:
  *descriptiona = (v7 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v7) & 0x18)));
  if (!dso)
  {
    goto LABEL_28;
  }

  if (qword_1EB75E270 != -1)
  {
    v13 = dso;
    swift_once();
    dso = v13;
  }

  return _os_activity_create(dso, descriptiona, qword_1EB75E690, OS_ACTIVITY_FLAG_DEFAULT);
}

uint64_t sub_1B1A66134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 40) = a1;
  *(v4 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1B1A66154, 0, 0);
}

uint64_t sub_1B1A66154()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 56) = Strong;
  if (Strong)
  {
    type metadata accessor for FirstUnlockObserver();
    sub_1B1A67404();
    v3 = sub_1B1A7CCE8();

    return MEMORY[0x1EEE6DFA0](sub_1B1A6623C, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1B1A6623C()
{
  sub_1B1A66588();

  return MEMORY[0x1EEE6DFA0](sub_1B1A662AC, 0, 0);
}

uint64_t sub_1B1A662D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B1A675A0(a3, v25 - v10);
  v12 = sub_1B1A7CD18();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B1A67538(v11);
  }

  else
  {
    sub_1B1A7CD08();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B1A7CCE8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B1A7CAE8() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6A0, &qword_1B1A7EF68);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      return v22;
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

  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6A0, &qword_1B1A7EF68);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1B1A66588()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E540, &qword_1B1A7EAE8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  if ((*(v0 + 48) & 1) == 0)
  {
    *(v0 + 48) = 1;
    if (qword_1EB75E260 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v6, qword_1EB760C70);
    sub_1B1A561C0(0xD000000000000016, 0x80000001B1A81500, 0xD000000000000058, 0x80000001B1A81520, 0x5574737269466E6FLL, 0xEF29286B636F6C6ELL);
    v7 = *(v0 + 32);
    if (v7)
    {
      v8 = *(**(v7 + 56) + 136);

      atomic_store(1u, v8(v9));

      swift_beginAccess();
      notify_cancel(*(v7 + 48));
    }

    *(v0 + 32) = 0;

    v10 = *(v0 + 40);
    if (v10)
    {
      v11 = *(**(v10 + 56) + 136);

      atomic_store(1u, v11(v12));

      swift_beginAccess();
      notify_cancel(*(v10 + 48));
    }

    *(v0 + 40) = 0;

    v13 = *(v0 + 24);
    v14 = *(v13 + 16);
    if (v14)
    {
      v21 = v0;
      v17 = *(v3 + 16);
      v15 = v3 + 16;
      v16 = v17;
      v18 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
      v19 = *(v15 + 56);

      do
      {
        v16(v5, v18, v2);
        sub_1B1A7CCF8();
        (*(v15 - 8))(v5, v2);
        v18 += v19;
        --v14;
      }

      while (v14);

      v1 = v21;
    }

    *(v1 + 24) = MEMORY[0x1E69E7CC0];
  }
}

void sub_1B1A668B0()
{
  if (!v0[4] && !v0[5])
  {
    v1 = v0[2];
    v2 = swift_allocObject();
    swift_weakInit();
    type metadata accessor for DarwinNotificationObserver();
    swift_allocObject();
    v3 = v1;
    v0[4] = sub_1B1A6B4C0(0xD000000000000025, 0x80000001B1A814A0, v3, sub_1B1A67460, v2);

    v4 = swift_allocObject();
    v5 = v0;
    swift_weakInit();
    type metadata accessor for DeviceLockStateNotificationObserver();
    swift_allocObject();
    v6 = swift_allocObject();
    v6[2] = v3;
    v6[3] = sub_1B1A6746C;
    v6[4] = v4;
    v7 = v3;
    swift_retain_n();
    v8 = sub_1B1A6B4C0(0xD000000000000024, 0x80000001B1A814D0, v7, sub_1B1A67474, v6);

    if (v8)
    {
    }

    v5[5] = v8;
  }
}

uint64_t sub_1B1A66A94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  if (qword_1EDB76A30 != -1)
  {
    swift_once();
  }

  v6 = *(*qword_1EDB77100 + 136);

  LOBYTE(v6) = *v6(v7);

  if ((v6 & 1) == 0)
  {
    result = MKBDeviceUnlockedSinceBoot();
    if (result != 1)
    {
      return result;
    }

    v9 = *(*qword_1EDB77100 + 136);

    *v9(v10) = 1;
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = sub_1B1A7CD18();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = swift_allocObject();
    swift_weakInit();
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v12;
    sub_1B1A662D4(0, 0, v5, &unk_1B1A7EF78, v13);

    return sub_1B1A67538(v5);
  }

  return result;
}

uint64_t sub_1B1A66CC0(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v12 - v4;
  v6 = a1[3];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v6);
  result = (*(v7 + 8))(v6, v7);
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v9 = sub_1B1A7CD18();
      (*(*(v9 - 8) + 56))(v5, 1, 1, v9);
      v10 = swift_allocObject();
      swift_weakInit();
      v11 = swift_allocObject();
      v11[2] = 0;
      v11[3] = 0;
      v11[4] = v10;
      sub_1B1A662D4(0, 0, v5, &unk_1B1A7EF50, v11);

      return sub_1B1A67538(v5);
    }
  }

  return result;
}

uint64_t sub_1B1A66E64()
{
  v1[2] = v0;
  type metadata accessor for FirstUnlockObserver();
  v1[3] = sub_1B1A67404();
  v3 = sub_1B1A7CCE8();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B1A66EEC, v3, v2);
}

uint64_t sub_1B1A66EEC()
{
  if (qword_1EDB76A30 != -1)
  {
    swift_once();
  }

  v1 = *(*qword_1EDB77100 + 136);

  LOBYTE(v1) = *v1(v2);

  if (v1)
  {
    goto LABEL_6;
  }

  if (MKBDeviceUnlockedSinceBoot() == 1)
  {
    v3 = *(*qword_1EDB77100 + 136);

    *v3(v4) = 1;

LABEL_6:
    v5 = *(v0 + 8);

    return v5();
  }

  sub_1B1A668B0();
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_1B1A670CC;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1B1A670CC()
{
  v1 = *v0;

  v2 = *(v1 + 40);
  v3 = *(v1 + 32);

  return MEMORY[0x1EEE6DFA0](sub_1B1A581E8, v3, v2);
}

uint64_t sub_1B1A671EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E540, &qword_1B1A7EAE8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  (*(v5 + 16))(&v14 - v7, a1, v4, v6);
  v9 = *(a2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1B1A79388(0, v9[2] + 1, 1, v9);
    *(a2 + 24) = v9;
  }

  v12 = v9[2];
  v11 = v9[3];
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1B1A79388((v11 > 1), v12 + 1, 1, v9);
  }

  v9[2] = v12 + 1;
  result = (*(v5 + 32))(v9 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v12, v8, v4);
  *(a2 + 24) = v9;
  return result;
}

uint64_t sub_1B1A6736C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1B1A67404()
{
  result = qword_1EB75E698;
  if (!qword_1EB75E698)
  {
    type metadata accessor for FirstUnlockObserver();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E698);
  }

  return result;
}

uint64_t sub_1B1A67484(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B1A67A7C;

  return sub_1B1A66134(a1, v4, v5, v6);
}

uint64_t sub_1B1A67538(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1A675A0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E538, &qword_1B1A7EAD0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1A67610(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B1A67704;

  return v5(v2 + 32);
}

uint64_t sub_1B1A67704()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1B1A67818(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B1A67A7C;

  return sub_1B1A67610(a1, v4);
}

uint64_t sub_1B1A678D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B1A5471C;

  return sub_1B1A67610(a1, v4);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1B1A679C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B1A5471C;

  return sub_1B1A66134(a1, v4, v5, v6);
}

uint64_t sub_1B1A67A88()
{
  sub_1B1A7D058();
  MEMORY[0x1B2736930](0);
  return sub_1B1A7D098();
}

uint64_t sub_1B1A67AF4(uint64_t a1)
{
  sub_1B1A7D058();
  MEMORY[0x1B2736930](0);
  return sub_1B1A7D098();
}

uint64_t sub_1B1A67B54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53746E656D676573 && a2 == 0xEB00000000657A69)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1B1A7CFB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1B1A67BF8(uint64_t a1)
{
  v2 = sub_1B1A680C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B1A67C34(uint64_t a1)
{
  v2 = sub_1B1A680C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B1A67C70@<X0>(void *a1@<X0>, _DWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6B0, &qword_1B1A7F0F8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1A680C4();
  sub_1B1A7D0A8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v9 = sub_1B1A7CF68();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  return result;
}

uint64_t sub_1B1A67DD0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6B8, &qword_1B1A7F100);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B1A680C4();
  sub_1B1A7D0B8();
  sub_1B1A7CF78();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_1B1A67F08(uint64_t a1)
{
  sub_1B1A7C6A8();
  swift_allocObject();
  sub_1B1A7C698();
  sub_1B1A5361C();
  v1 = sub_1B1A7C688();

  return v1;
}

uint64_t sub_1B1A67F9C@<X0>(uint64_t a4@<X8>)
{
  sub_1B1A7C678();
  swift_allocObject();
  sub_1B1A7C668();
  sub_1B1A53670();
  sub_1B1A7C658();

  if (!v4)
  {
    *a4 = v7;
    *(a4 + 4) = 0;
  }

  return result;
}

unint64_t sub_1B1A68070()
{
  result = qword_1EB75E6A8;
  if (!qword_1EB75E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E6A8);
  }

  return result;
}

unint64_t sub_1B1A680C4()
{
  result = qword_1EDB76548[0];
  if (!qword_1EDB76548[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDB76548);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataFrameStreamConfiguration.CodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for DataFrameStreamConfiguration.CodingKeys(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t sub_1B1A68204()
{
  result = qword_1EB75E6C0;
  if (!qword_1EB75E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E6C0);
  }

  return result;
}

unint64_t sub_1B1A6825C()
{
  result = qword_1EDB76538;
  if (!qword_1EDB76538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB76538);
  }

  return result;
}

unint64_t sub_1B1A682B4()
{
  result = qword_1EDB76540;
  if (!qword_1EDB76540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB76540);
  }

  return result;
}

Swift::Bool __swiftcall DataFrameStreamSegment.deleteFrame(index:)(Swift::UInt32 index)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = v1[3];
  v5 = v1[4];
  v6 = *(v1 + 10);
  if (*(*(v4 + 16) + 16) > index)
  {
    v7 = 8 * index + 8;
    v8 = *(v5 + 16);
    v9 = *(v8 + 32);
    v10 = __OFSUB__(v9, v7);
    v11 = v9 - v7;
    if (v10)
    {
      __break(1u);
      goto LABEL_20;
    }

    v12 = atomic_load((*(v8 + 16) + v11 + 4));
    if (v12 <= 5)
    {
      v13 = 1 << v12;
      if ((v13 & 0x26) != 0)
      {
        v14 = *(v5 + 16);
        v15 = *(v14 + 32);
        v10 = __OFSUB__(v15, v7);
        v16 = v15 - v7;
        if (!v10)
        {
          atomic_exchange((*(v14 + 16) + v16 + 4), 3u);
          *v28 = v2;
          *&v28[8] = v3;
          v29 = v4;
          v30 = v5;
          v31 = v6;
          v17 = sub_1B1A69A30(*&index);
          if ((v17 & 1) == 0)
          {
            if (qword_1EDB764F0 != -1)
            {
              swift_once();
            }

            v23 = type metadata accessor for InternalLogger(0);
            __swift_project_value_buffer(v23, qword_1EDB770A8);
            sub_1B1A7CEC8();

            *v28 = 0xD000000000000023;
            *&v28[8] = 0x80000001B1A815C0;
            v24 = sub_1B1A7CF98();
            MEMORY[0x1B2736400](v24);

            sub_1B1A561D8(0xD000000000000023, 0x80000001B1A815C0, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000013, 0x80000001B1A815A0);
          }

          v25 = *(v5 + 16);
          v26 = *(v25 + 32);
          v10 = __OFSUB__(v26, v7);
          v27 = v26 - v7;
          if (!v10)
          {
            atomic_exchange((*(v25 + 16) + v27 + 4), 4u);
            result = 1;
            atomic_fetch_add((*(v4 + 16) + 20), 1u);
            return result;
          }

          goto LABEL_21;
        }

LABEL_20:
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      if ((v13 & 0x18) != 0)
      {
        if (qword_1EDB764F0 == -1)
        {
LABEL_9:
          v18 = type metadata accessor for InternalLogger(0);
          __swift_project_value_buffer(v18, qword_1EDB770A8);
          sub_1B1A7CEC8();

          strcpy(v28, "Frame index: ");
          *&v28[14] = -4864;
          v19 = sub_1B1A7CF98();
          MEMORY[0x1B2736400](v19);

          MEMORY[0x1B2736400](0xD000000000000010, 0x80000001B1A815F0);
          sub_1B1A561C0(*v28, *&v28[8], 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000013, 0x80000001B1A815A0);

          return 1;
        }

LABEL_22:
        swift_once();
        goto LABEL_9;
      }
    }
  }

  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v21, qword_1EDB770A8);
  sub_1B1A7CEC8();

  v22 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v22);

  sub_1B1A561D8(0xD000000000000015, 0x80000001B1A81580, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000013, 0x80000001B1A815A0);

  return 0;
}

uint64_t DataFrameStreamSegment.init(name:filePath:byteSize:access:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = a4;
  v31 = a2;
  v25 = a1;
  v26 = a6;
  v9 = sub_1B1A7C808();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *a5;
  if (qword_1EDB764F0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v13, qword_1EDB770A8);
  v29 = 0;
  v30 = 0xE000000000000000;
  sub_1B1A7CEC8();

  v29 = 0xD000000000000011;
  v30 = 0x80000001B1A80E20;
  sub_1B1A4DD9C();
  v14 = sub_1B1A7CF98();
  MEMORY[0x1B2736400](v14);

  sub_1B1A561C0(v29, v30, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000024, 0x80000001B1A80E40);

  if (v7 < 0x41)
  {
    sub_1B1A5FCC4();
    swift_allocError();
    *v24 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    LOBYTE(v29) = v27;
    type metadata accessor for MemoryMappedRegion();
    swift_allocObject();
    v15 = v28;
    v16 = MemoryMappedRegion.init(filePath:requestedByteSize:minimumByteSize:access:)(v12, v7, 0x440u, &v29);
    if (!v15)
    {
      v17 = v16;
      (*(v10 + 8))(a3, v9);
      v18 = v17[2];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E530, &qword_1B1A7EAC8);
      v19 = swift_allocObject();
      *(v19 + 16) = v18;
      type metadata accessor for SegmentOffsetTable();
      v20 = swift_allocObject();
      *(v20 + 16) = v17;
      v21 = v26;
      v22 = v31;
      *v26 = v25;
      v21[1] = v22;
      v21[2] = v17;
      v21[3] = v19;
      v21[4] = v20;
      *(v21 + 10) = v7;
    }
  }

  (*(v10 + 8))(a3, v9);
}

uint64_t sub_1B1A68BFC(unint64_t a1)
{
  v2 = *(*(v1 + 24) + 16);
  v3 = *(v2 + 24);
  v4 = *(v2 + 16);
  v5 = v3 + v4;
  if (__CFADD__(v3, v4))
  {
    __break(1u);
    goto LABEL_24;
  }

  if (v5 < v3)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v6 = a1 - v3;
  if (a1 < v3)
  {
    return 0;
  }

  if (v5 <= a1)
  {
    return 1;
  }

  result = v6;
  v8 = 8 * v6 + 8;
  v9 = *(*(v1 + 32) + 16);
  v10 = *(v9 + 32);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
    goto LABEL_25;
  }

  v13 = atomic_load((*(v9 + 16) + v12 + 4));
  if ((v13 - 1) < 2)
  {
    return result;
  }

  if ((v13 - 3) < 2)
  {
    return 2;
  }

  if (v13 != 5)
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_15:
      v15 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v15, qword_1EDB770A8);
      sub_1B1A7CEC8();

      v16 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v16);

      sub_1B1A561D8(0xD000000000000022, 0x80000001B1A817A0, 0xD000000000000069, 0x80000001B1A80D70, 0xD00000000000001BLL, 0x80000001B1A817D0);

      return 3;
    }

LABEL_26:
    swift_once();
    goto LABEL_15;
  }

  v14 = sub_1B1A69DC0(v6);
  if (!v14)
  {
    return 2;
  }

  v17 = *(*(*(v14 + 32) + 16) + 16);
  if (!v17)
  {

    return 2;
  }

  if (v17 < v3 || v17 >= v5)
  {
    v19 = *(*(*(v14 + 32) + 16) + 16);

    return v19;
  }

  else
  {
    v18 = sub_1B1A68BFC(v17);

    return v18;
  }
}

size_t DataFrameStreamSegment.frameData(forSegmentIndex:)(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v11[0] = *v1;
  v11[1] = v3;
  v11[2] = v4;
  v11[3] = v5;
  v11[4] = v6;
  v12 = v7;
  result = sub_1B1A69DC0(a1);
  if (!v2)
  {
    if (result)
    {
      sub_1B1A4EE44(result, v11);

      return v11[0];
    }

    else
    {
      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v9, qword_1EDB770A8);
      sub_1B1A7CEC8();

      v10 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v10);

      sub_1B1A561D8(0xD000000000000023, 0x80000001B1A81660, 0xD000000000000069, 0x80000001B1A80D70, 0xD00000000000001BLL, 0x80000001B1A81690);

      return 0;
    }
  }

  return result;
}

uint64_t DataFrameStreamSegment.mutateFrame<A>(frameSegmentIndex:mutate:supersede:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = a1;
  v18 = v8[1];
  v27 = *v8;
  v28[0] = v18;
  *(v28 + 12) = *(v8 + 28);
  result = sub_1B1A69DC0(a1);
  if (!v9)
  {
    v20 = result;
    if (result && (v24[1] = v24, v25 = 0, v26 = 1, v29 = 0, MEMORY[0x1EEE9AC00](result), v21[2] = a6, v21[3] = a7, v21[4] = a2, v21[5] = a3, v21[6] = v20, v21[7] = &v29, v21[8] = a4, v21[9] = a5, v21[10] = &v27, v22 = v16, v23 = &v25, sub_1B1A4F008(sub_1B1A6AC3C, v21), result = , v29 == 1))
    {
      if (v26)
      {
        *a8 = 1;
        *(a8 + 8) = 1;
      }

      else
      {
        *a8 = v25;
        *(a8 + 8) = 0;
      }
    }

    else
    {
      *a8 = 0;
      *(a8 + 8) = 1;
    }
  }

  return result;
}

void DataFrameStreamSegment.setFrame<A>(frameSegmentIndex:mutated:supersede:)(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = a1;
  v14 = v6[1];
  v25 = *v6;
  v26[0] = v14;
  *(v26 + 12) = *(v6 + 28);
  v15 = sub_1B1A69DC0(a1);
  if (v7)
  {

LABEL_3:
    *a6 = 0;
    *(a6 + 8) = 1;
    return;
  }

  if (!v15)
  {
    goto LABEL_3;
  }

  v20 = a3;
  v21 = v15;
  v16 = *(a5 + 8);

  v23 = 0;
  v24 = 1;
  v27 = 0;
  v17 = v16(a4, a5);
  v19 = v18;

  sub_1B1A4C414(v17, v19);
  sub_1B1A600F4(&v25, v22);
  sub_1B1A4FA84(v21, v21, v17, v19, &v27, a2, v20, &v25, v12, &v23);
  sub_1B1A6AC88(&v25);
  sub_1B1A4696C(v17, v19);

  sub_1B1A4696C(v17, v19);

  if ((v27 & 1) == 0)
  {
    goto LABEL_3;
  }

  if (v24)
  {
    *a6 = 1;
    *(a6 + 8) = 1;
  }

  else
  {
    *a6 = v23;
    *(a6 + 8) = 0;
  }
}

uint64_t sub_1B1A69684()
{
  v1 = *(v0 + 24);
  v2 = atomic_load((*(v1 + 16) + 16));
  v3 = atomic_load((*(v1 + 16) + 20));
  result = v2 - v3;
  if (v2 < v3)
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v5, qword_1EDB770A8);
    sub_1B1A7CEC8();
    MEMORY[0x1B2736400](0x466E657474697277, 0xEE003A73656D6172);
    v6 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v6);

    MEMORY[0x1B2736400](0xD000000000000026, 0x80000001B1A80D40);
    v7 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v7);

    sub_1B1A561D8(0, 0xE000000000000000, 0xD000000000000069, 0x80000001B1A80D70, 0x756F43656D617266, 0xEA0000000000746ELL);

    **(v1 + 16) = 2;
    sub_1B1A6ABE8();
    swift_allocError();
    *(v8 + 4) = -3;
    *v8 = 0;
    return swift_willThrow();
  }

  return result;
}

void DataFrameStreamSegment.state.getter(_BYTE *a1@<X8>)
{
  v2 = **(*(v1 + 24) + 16);
  if (v2 >= 4)
  {
    LOBYTE(v2) = 1;
  }

  *a1 = v2;
}

Dendrite::SegmentState_optional __swiftcall SegmentState.init(rawValue:)(Dendrite::SegmentState_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = Dendrite_SegmentState_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_1B1A698EC()
{
  sub_1B1A7D058();
  sub_1B1A7D078();
  return sub_1B1A7D098();
}

uint64_t sub_1B1A69960(uint64_t a1)
{
  sub_1B1A7D058();
  sub_1B1A7D078();
  return sub_1B1A7D098();
}

uint64_t DataFrameStreamSegment.name.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t *(*DataFrameStreamSegment.identifierSeed.modify(void *a1))(unint64_t *result)
{
  v2 = *(v1 + 24);
  a1[1] = v2;
  *a1 = *(*(v2 + 16) + 24);
  return sub_1B1A69A1C;
}

uint64_t sub_1B1A69A30(uint64_t a1)
{
  v18 = *(v1 + 16);
  result = sub_1B1A69CB8(a1);
  if (v2)
  {
    return v6 & 1;
  }

  if (v5)
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v7, qword_1EDB770A8);
    sub_1B1A7CEC8();

    v8 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v8);

    sub_1B1A561D8(0xD000000000000023, 0x80000001B1A81660, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000018, 0x80000001B1A81940);

    v6 = 0;
    return v6 & 1;
  }

  v9 = __OFSUB__(v4, result);
  v10 = v4 - result;
  if (v9)
  {
    __break(1u);
    goto LABEL_28;
  }

  v11 = result + v10;
  if (__OFADD__(result, v10))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v11 < result)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v12 = *(v18 + 24);
  v13 = *(v18 + 32);
  if (result < v12 || result > v13 || v11 < v12 || v13 < v11)
  {
    if (qword_1EDB764F0 == -1)
    {
LABEL_21:
      v17 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v17, qword_1EDB770A8);
      sub_1B1A561D8(0xD000000000000027, 0x80000001B1A81960, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000018, 0x80000001B1A81940);
      v6 = 0;
      return v6 & 1;
    }

LABEL_30:
    swift_once();
    goto LABEL_21;
  }

  if ((v10 & 0x8000000000000000) == 0)
  {
    if (v10)
    {
      bzero((*(v18 + 16) + result), v10);
    }

    v6 = 1;
    return v6 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1A69CB8(uint64_t result)
{
  v3 = v1[2];
  if (*(*(v1[3] + 16) + 16) <= result)
  {
    return 0;
  }

  v4 = 8 * result + 8;
  v5 = *(v1[4] + 16);
  v6 = *(v5 + 32);
  v7 = __OFSUB__(v6, v4);
  v8 = v6 - v4;
  if (v7)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  result = sub_1B1A6A794(*(*(v5 + 16) + v8));
  if (v2)
  {
    return result;
  }

  v9 = result + 24;
  if (__OFADD__(result, 24))
  {
    goto LABEL_23;
  }

  if (v9 < result)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v10 = v3[3];
  v11 = v3[4];
  if (result < v10 || result > v11 || v9 < v10 || v11 < v9)
  {
    return 0;
  }

  result = sub_1B1A6BD44(0, 0, 1, *(v3[2] + result + 4));
  v15 = v9 + result;
  if (__OFADD__(v9, result))
  {
    goto LABEL_25;
  }

  result = v9;
  if (v15 < v9)
  {
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_1B1A69DC0(Swift::UInt32 a1)
{
  if (*(*(*(v1 + 24) + 16) + 16) <= a1)
  {
    return 0;
  }

  v4 = 8 * a1 + 8;
  v5 = *(*(v1 + 32) + 16);
  v6 = *(v5 + 32);
  v7 = __OFSUB__(v6, v4);
  v8 = v6 - v4;
  if (v7)
  {
    __break(1u);
    goto LABEL_11;
  }

  result = sub_1B1A6A794(*(*(v5 + 16) + v8));
  if (!v2)
  {
    v10 = result;
    type metadata accessor for DataFrameReader();
    swift_allocObject();

    result = sub_1B1A4E8DC(v11, v10);
    if (!result)
    {
      if (qword_1EDB764F0 == -1)
      {
LABEL_8:
        v12 = type metadata accessor for InternalLogger(0);
        __swift_project_value_buffer(v12, qword_1EDB770A8);
        sub_1B1A7CEC8();
        MEMORY[0x1B2736400](0xD00000000000002FLL, 0x80000001B1A816E0);
        v13 = sub_1B1A7CF98();
        MEMORY[0x1B2736400](v13);

        MEMORY[0x1B2736400](0xD000000000000011, 0x80000001B1A81710);
        sub_1B1A561D8(0, 0xE000000000000000, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000011, 0x80000001B1A81730);

        DataFrameStreamSegment.deleteFrame(index:)(a1);
        return 0;
      }

LABEL_11:
      swift_once();
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1B1A69FF4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, _BYTE *a6, uint64_t (*a7)(char *), uint64_t a8, uint64_t a9, unsigned int a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v78 = a7;
  v79 = a8;
  v77 = a6;
  v80 = a5;
  v82 = a4;
  v83 = a3;
  v15 = sub_1B1A7CE18();
  v81 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v74 - v16;
  v18 = *(a12 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v25 = &v74 - v24;
  v26 = v84;
  (*(a13 + 16))(a1, a2, a12, a13, v23);
  if (v26)
  {
    return;
  }

  v75 = a1;
  v76 = v21;
  v84 = v25;
  if ((*(v18 + 48))(v17, 1, a12) == 1)
  {
    (*(v81 + 8))(v17, v15);
    sub_1B1A6B15C();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v27 = v84;
  (*(v18 + 32))(v84, v17, a12);
  (v83)(v27);
  v83 = v18;
  v28 = (*(a13 + 8))(a12, a13);
  v30 = v29;
  v82 = a12;
  v31 = v80;
  v32 = *(v80 + 24);
  v33 = BYTE6(a2);
  v34 = a2 >> 62;
  v35 = v28;
  v36 = v29;
  if ((a2 >> 62) > 1)
  {
    v37 = v75;
    if (v34 != 2)
    {
      goto LABEL_16;
    }

    v40 = *(v75 + 16);
    v39 = *(v75 + 24);
    v38 = v39 - v40;
    if (!__OFSUB__(v39, v40))
    {
      goto LABEL_13;
    }

    __break(1u);
  }

  else
  {
    v37 = v75;
    if (!v34)
    {
      v38 = BYTE6(a2);
      goto LABEL_14;
    }
  }

  if (__OFSUB__(HIDWORD(v37), v37))
  {
LABEL_81:
    __break(1u);
    goto LABEL_82;
  }

  v38 = HIDWORD(v37) - v37;
LABEL_13:
  if ((v38 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_81;
  }

LABEL_14:
  if (v38)
  {
    bzero(v32, v38);
    v30 = v36;
    v33 = BYTE6(a2);
    v37 = v75;
    v28 = v35;
  }

LABEL_16:
  v41 = v30 >> 62;
  if ((v30 >> 62) <= 1)
  {
    v42 = v27;
    v43 = v78;
    if (!v41)
    {
      v44 = BYTE6(v30);
      goto LABEL_26;
    }

LABEL_23:
    LODWORD(v44) = HIDWORD(v28) - v28;
    if (!__OFSUB__(HIDWORD(v28), v28))
    {
      v44 = v44;
      goto LABEL_26;
    }

LABEL_82:
    __break(1u);
    goto LABEL_83;
  }

  v42 = v27;
  v43 = v78;
  if (v41 == 2)
  {
    v46 = *(v28 + 16);
    v45 = *(v28 + 24);
    v47 = __OFSUB__(v45, v46);
    v44 = v45 - v46;
    if (v47)
    {
      __break(1u);
      goto LABEL_23;
    }
  }

  else
  {
    v44 = 0;
  }

LABEL_26:
  if (v34 <= 1)
  {
    if (!v34)
    {
      v48 = v33;
      goto LABEL_35;
    }

LABEL_33:
    LODWORD(v48) = HIDWORD(v37) - v37;
    if (!__OFSUB__(HIDWORD(v37), v37))
    {
      v48 = v48;
      goto LABEL_35;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  if (v34 != 2)
  {
    if (v44 <= 0)
    {
      goto LABEL_36;
    }

    goto LABEL_40;
  }

  v50 = *(v37 + 16);
  v49 = *(v37 + 24);
  v47 = __OFSUB__(v49, v50);
  v48 = v49 - v50;
  if (v47)
  {
    __break(1u);
    goto LABEL_33;
  }

LABEL_35:
  if (v48 >= v44)
  {
LABEL_36:
    if (v41 <= 1)
    {
      if (v41)
      {
        LODWORD(v51) = HIDWORD(v28) - v28;
        if (__OFSUB__(HIDWORD(v28), v28))
        {
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v51 = v51;
      }

      else
      {
        v51 = BYTE6(v30);
      }

      goto LABEL_51;
    }

    if (v41 != 2)
    {
      v51 = 0;
      goto LABEL_51;
    }

    v53 = *(v28 + 16);
    v52 = *(v28 + 24);
    v47 = __OFSUB__(v52, v53);
    v51 = v52 - v53;
    if (!v47)
    {
LABEL_51:
      if (v34 > 1)
      {
        if (v34 != 2)
        {
          if (!v51)
          {
LABEL_79:

            sub_1B1A4C414(v35, v36);
            sub_1B1A6A974(v35, v36, v31, v35, v36, v71);
            sub_1B1A4696C(v35, v36);
            v72 = v82;
            v73 = *(v83 + 8);
            v73(v76, v82);
            v73(v42, v72);
            *v77 = 1;
            return;
          }

          goto LABEL_63;
        }

        v58 = *(v37 + 16);
        v57 = *(v37 + 24);
        v47 = __OFSUB__(v57, v58);
        v56 = v57 - v58;
        if (!v47)
        {
LABEL_60:
          if (v51 == v56)
          {
            goto LABEL_79;
          }

LABEL_63:
          v59 = *(*(v31 + 32) + 16);
          if (v41 <= 1)
          {
            if (!v41)
            {
              LODWORD(v60) = BYTE6(v36);
LABEL_78:
              atomic_store(v60, (v59 + 4));
              goto LABEL_79;
            }

            LODWORD(v60) = HIDWORD(v35) - v35;
            if (__OFSUB__(HIDWORD(v35), v35))
            {
              goto LABEL_88;
            }

            v60 = v60;
            goto LABEL_74;
          }

          if (v41 != 2)
          {
            goto LABEL_77;
          }

          v62 = *(v35 + 16);
          v61 = *(v35 + 24);
          v47 = __OFSUB__(v61, v62);
          v60 = v61 - v62;
          if (!v47)
          {
LABEL_74:
            if ((v60 & 0x8000000000000000) == 0)
            {
              if (!HIDWORD(v60))
              {
                goto LABEL_78;
              }

              __break(1u);
LABEL_77:
              LODWORD(v60) = 0;
              goto LABEL_78;
            }

            goto LABEL_84;
          }

          __break(1u);
LABEL_70:
          v63 = 8 * a10 + 8;
          v64 = *(*(a9 + 32) + 16);
          v65 = *(v64 + 32);
          v47 = __OFSUB__(v65, v63);
          v66 = v65 - v63;
          if (!v47)
          {
            atomic_exchange((*(v64 + 16) + v66 + 4), 5u);
            atomic_fetch_add((*(*(a9 + 24) + 16) + 20), 1u);
            atomic_store(v32, (*(*(v31 + 32) + 16) + 16));
            v68 = v32;
            sub_1B1A4696C(v35, v36);
            v69 = v82;
            v70 = *(v83 + 8);
            v70(v76, v82);
            v70(v84, v69);
            *v77 = 1;
            *a11 = v68;
            *(a11 + 8) = 0;
            return;
          }

          goto LABEL_87;
        }

        __break(1u);
      }

      else if (!v34)
      {
        v56 = v33;
        goto LABEL_60;
      }

      LODWORD(v56) = HIDWORD(v37) - v37;
      if (__OFSUB__(HIDWORD(v37), v37))
      {
LABEL_86:
        __break(1u);
LABEL_87:
        __break(1u);
LABEL_88:
        __break(1u);
        return;
      }

      v56 = v56;
      goto LABEL_60;
    }

    __break(1u);
    goto LABEL_45;
  }

LABEL_40:
  v32 = v43(v76);
LABEL_45:
  if ((v43 & 1) == 0)
  {
    goto LABEL_70;
  }

  sub_1B1A4696C(v35, v36);
  v54 = v82;
  v55 = *(v83 + 8);
  v55(v76, v82);
  v55(v42, v54);
}

void *sub_1B1A6A6F8(void *__src, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!__src)
  {
    goto LABEL_17;
  }

  v5 = __src;
  __src = *(a3 + 24);
  v6 = a5 >> 62;
  if ((a5 >> 62) > 1)
  {
    if (v6 != 2)
    {
      v7 = 0;
      return memmove(__src, v5, v7);
    }

    v9 = *(a4 + 16);
    v8 = *(a4 + 24);
    v7 = v8 - v9;
    if (!__OFSUB__(v8, v9))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v6)
  {
    v7 = BYTE6(a5);
    return memmove(__src, v5, v7);
  }

  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v7 = HIDWORD(a4) - a4;
LABEL_12:
    if ((v7 & 0x8000000000000000) == 0)
    {
      return memmove(__src, v5, v7);
    }

    __break(1u);
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return __src;
}

uint64_t sub_1B1A6A794(uint64_t a1)
{
  v3 = *(v1 + 24);
  result = sub_1B1A6BD44(*(*(v1 + 16) + 24), *(*(v1 + 16) + 32), 0, a1);
  if (v2)
  {
    v5 = result;
    v6 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E458, &qword_1B1A7E390);
    if (swift_dynamicCast())
    {

      if (qword_1EDB764F0 != -1)
      {
        swift_once();
      }

      v7 = type metadata accessor for InternalLogger(0);
      __swift_project_value_buffer(v7, qword_1EDB770A8);
      sub_1B1A7CEC8();

      v8 = sub_1B1A7CF98();
      MEMORY[0x1B2736400](v8);

      sub_1B1A561D8(0xD000000000000015, 0x80000001B1A81750, 0xD000000000000069, 0x80000001B1A80D70, 0xD000000000000024, 0x80000001B1A81770);

      **(v3 + 16) = 3;
      sub_1B1A6ABE8();
      swift_allocError();
      *(v9 + 4) = -5;
      *v9 = 0;
      swift_willThrow();
    }

    return v5;
  }

  return result;
}

void sub_1B1A6A974(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v9)
    {
      v31[0] = a1;
      LOWORD(v31[1]) = a2;
      BYTE2(v31[1]) = BYTE2(a2);
      BYTE3(v31[1]) = BYTE3(a2);
      BYTE4(v31[1]) = BYTE4(a2);
      BYTE5(v31[1]) = BYTE5(a2);
      v10 = a5 >> 62;
      v11 = *(a3 + 24);
      if ((a5 >> 62) > 1)
      {
        if (v10 != 2)
        {
LABEL_41:
          v13 = 0;
          goto LABEL_42;
        }

        v28 = *(a4 + 16);
        v12 = *(a4 + 24);
        v13 = v12 - v28;
        if (!__OFSUB__(v12, v28))
        {
          goto LABEL_31;
        }

LABEL_49:
        __break(1u);
        goto LABEL_50;
      }

      if (v10)
      {
        LODWORD(v12) = HIDWORD(a4) - a4;
        if (!__OFSUB__(HIDWORD(a4), a4))
        {
          v13 = v12;
LABEL_31:
          if ((v13 & 0x8000000000000000) == 0)
          {
            goto LABEL_42;
          }

          __break(1u);
          goto LABEL_33;
        }

        goto LABEL_48;
      }

LABEL_28:
      v13 = BYTE6(a5);
      goto LABEL_42;
    }

    v22 = a1;
    v23 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v32 = a6;
      v16 = sub_1B1A7C6D8();
      if (!v16)
      {
        goto LABEL_19;
      }

      v24 = sub_1B1A7C708();
      if (!__OFSUB__(v22, v24))
      {
        v16 += v22 - v24;
LABEL_19:
        v25 = sub_1B1A7C6F8();
        if (v25 >= v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v25;
        }

        goto LABEL_22;
      }

LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    __break(1u);
    goto LABEL_45;
  }

  if (v9 == 2)
  {
    v32 = a6;
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    v16 = sub_1B1A7C6D8();
    if (v16)
    {
      v17 = sub_1B1A7C708();
      if (__OFSUB__(v15, v17))
      {
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v16 += v15 - v17;
    }

    v18 = __OFSUB__(v14, v15);
    v19 = v14 - v15;
    if (!v18)
    {
      v20 = sub_1B1A7C6F8();
      if (v20 >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

LABEL_22:
      v26 = &v16[v21];
      if (v16)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      sub_1B1A6A6F8(v16, v27, a3, a4, a5);
      goto LABEL_43;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  memset(v31, 0, 14);
  v11 = *(a3 + 24);
  v12 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (v12)
    {
      goto LABEL_37;
    }

    goto LABEL_28;
  }

LABEL_33:
  v13 = 0;
  if (v12 != 2)
  {
    goto LABEL_42;
  }

  v30 = *(a4 + 16);
  v29 = *(a4 + 24);
  v13 = v29 - v30;
  if (!__OFSUB__(v29, v30))
  {
    goto LABEL_39;
  }

  __break(1u);
LABEL_37:
  if (!__OFSUB__(HIDWORD(a4), a4))
  {
    v13 = HIDWORD(a4) - a4;
LABEL_39:
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_41;
    }

LABEL_42:
    memcpy(v11, v31, v13);
LABEL_43:

    sub_1B1A4696C(a4, a5);
    return;
  }

LABEL_50:
  __break(1u);
}

unint64_t sub_1B1A6ABE8()
{
  result = qword_1EB75E6C8;
  if (!qword_1EB75E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E6C8);
  }

  return result;
}

unint64_t sub_1B1A6ACBC()
{
  result = qword_1EB75E6D0;
  if (!qword_1EB75E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E6D0);
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for DataFrameMutationResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataFrameMutationResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B1A6AD74(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1A6AD90(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SegmentState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SegmentState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B1A6AF2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_1B1A6AF74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataFrameStreamSegmentError.headerCorruptionType(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for DataFrameStreamSegmentError.headerCorruptionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataFrameStreamSegmentError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 5))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 4);
  if (v3 > 1)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 6)
  {
    return v4 - 5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DataFrameStreamSegmentError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 4) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -5 - a2;
    }
  }

  return result;
}

uint64_t sub_1B1A6B110(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1A6B124(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
  }

  else if (a2)
  {
    *(result + 4) = -a2;
  }

  return result;
}

unint64_t sub_1B1A6B15C()
{
  result = qword_1EB75E6D8;
  if (!qword_1EB75E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E6D8);
  }

  return result;
}

uint64_t StorageContainer.init(url:protection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1B1A7C808();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for StorageContainer(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t StorageContainer.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B1A7C808();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

id StorageContainer.protection.getter()
{
  v1 = *(v0 + *(type metadata accessor for StorageContainer(0) + 20));

  return v1;
}

void sub_1B1A6B2F0(uint64_t a1)
{
  sub_1B1A7C808();
  if (v1 <= 0x3F)
  {
    type metadata accessor for FileProtectionType(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1B1A6B37C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StorageContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MultiStreamContainer(uint64_t a1)
{
  result = qword_1EB75E6E0;
  if (!qword_1EB75E6E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B1A6B454(uint64_t a1)
{
  result = type metadata accessor for StorageContainer(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1B1A6B4C0(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  *(v6 + 48) = -1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6F0, "PG");
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v6 + 56) = v11;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 40) = a5;
  v12 = qword_1EB75E260;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v13, qword_1EB760C70);
  sub_1B1A7CEC8();

  MEMORY[0x1B2736400](a1, a2);
  sub_1B1A561C0(0xD000000000000013, 0x80000001B1A819E0, 0xD00000000000005FLL, 0x80000001B1A81A00, 0xD00000000000001ALL, 0x80000001B1A81A60);

  swift_unownedRetainStrong();

  v14 = a3;
  swift_unownedRetain();

  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = a2;
  v15[4] = v6;
  v25 = sub_1B1A6BD20;
  v26 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v22 = 1107296256;
  v23 = sub_1B1A6BCA8;
  v24 = &block_descriptor_0;
  v16 = _Block_copy(&aBlock);

  v17 = sub_1B1A7CAE8();
  swift_beginAccess();
  v18 = notify_register_dispatch((v17 + 32), (v6 + 48), v14, v16);
  swift_endAccess();

  _Block_release(v16);

  if (v18)
  {
    aBlock = 0;
    v22 = 0xE000000000000000;
    sub_1B1A7CEC8();

    aBlock = 0xD000000000000017;
    v22 = 0x80000001B1A81A90;
    MEMORY[0x1B2736400](a1, a2);

    sub_1B1A561D8(aBlock, v22, 0xD00000000000005FLL, 0x80000001B1A81A00, 0xD00000000000001ALL, 0x80000001B1A81A60);

    return 0;
  }

  else
  {
  }

  return v6;
}

uint64_t sub_1B1A6B80C()
{
  state64[4] = *MEMORY[0x1E69E9840];
  state64[0] = 0;
  swift_beginAccess();
  if (!notify_get_state(*(v0 + 48), state64))
  {
    return state64[0];
  }

  if (qword_1EB75E260 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v1, qword_1EB760C70);
  sub_1B1A7CEC8();

  MEMORY[0x1B2736400](*(v0 + 16), *(v0 + 24));
  sub_1B1A561D8(0xD000000000000020, 0x80000001B1A81AF0, 0xD00000000000005FLL, 0x80000001B1A81A00, 0x53746E6572727563, 0xEC00000065746174);

  return 0;
}

uint64_t sub_1B1A6B984()
{
  v1 = *(**(v0 + 56) + 136);

  LOBYTE(v1) = atomic_load(v1(v2));

  if ((v1 & 1) == 0)
  {
    v4 = sub_1B1A6B80C();
    v6 = v5;
    if (qword_1EB75E260 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v7, qword_1EB760C70);
    sub_1B1A7CEC8();

    MEMORY[0x1B2736400](*(v0 + 16), *(v0 + 24));
    MEMORY[0x1B2736400](0x7473206874697720, 0xED0000203A657461);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E6F8, "ZG");
    v8 = sub_1B1A7CAD8();
    MEMORY[0x1B2736400](v8);

    sub_1B1A561C0(0x6E69796669746F4ELL, 0xEF3A656D616E2067, 0xD00000000000005FLL, 0x80000001B1A81A00, 0xD000000000000014, 0x80000001B1A81AD0);

    return (*(v0 + 32))(v4, v6 & 1);
  }

  return result;
}

uint64_t sub_1B1A6BB6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EB75E260 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v6, qword_1EB760C70);
  sub_1B1A7CEC8();

  MEMORY[0x1B2736400](a2, a3);
  sub_1B1A561C0(0xD00000000000001ALL, 0x80000001B1A81AB0, 0xD00000000000005FLL, 0x80000001B1A81A00, 0xD00000000000001ALL, 0x80000001B1A81A60);

  swift_unownedRetainStrong();
  sub_1B1A6B984();
}

uint64_t sub_1B1A6BCA8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1B1A6BD44(uint64_t a1, uint64_t a2, char a3, unsigned int a4)
{
  v4 = a4;
  if ((a3 & 1) == 0 && (a4 < a1 || a4 >= a2))
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v6, qword_1EDB770A8);
    sub_1B1A7CEC8();

    v7 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v7);

    MEMORY[0x1B2736400](0x206E6920746F6E20, 0xEF203A65676E6172);
    sub_1B1A7CF18();
    MEMORY[0x1B2736400](3943982, 0xE300000000000000);
    sub_1B1A7CF18();
    MEMORY[0x1B2736400](0, 0xE000000000000000);

    sub_1B1A561D8(0xD000000000000012, 0x80000001B1A81B20, 0xD00000000000005CLL, 0x80000001B1A81B40, 0xD000000000000021, 0x80000001B1A81BA0);

    sub_1B1A6C224();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
  }

  return v4;
}

Dendrite::MemoryAlignment_optional __swiftcall MemoryAlignment.init(rawValue:)(Dendrite::MemoryAlignment_optional rawValue)
{
  value = rawValue.value;
  if (rawValue.value)
  {
    if (rawValue.value == 8)
    {
      v3 = 2;
    }

    else
    {
      v3 = 3;
    }

    if (rawValue.value == 4)
    {
      value = Dendrite_MemoryAlignment_fourByte;
    }

    else
    {
      value = v3;
    }
  }

  *v1 = value;
  return rawValue;
}

unint64_t sub_1B1A6BFAC()
{
  result = qword_1EB75E700;
  if (!qword_1EB75E700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E700);
  }

  return result;
}

uint64_t sub_1B1A6C000()
{
  sub_1B1A7D058();
  sub_1B1A7D078();
  return sub_1B1A7D098();
}

uint64_t sub_1B1A6C078(uint64_t a1)
{
  sub_1B1A7D058();
  sub_1B1A7D078();
  return sub_1B1A7D098();
}

uint64_t getEnumTagSinglePayload for MemoryAlignment(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MemoryAlignment(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B1A6C224()
{
  result = qword_1EB75E708;
  if (!qword_1EB75E708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E708);
  }

  return result;
}

unint64_t sub_1B1A6C28C()
{
  result = qword_1EB75E710;
  if (!qword_1EB75E710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E710);
  }

  return result;
}

uint64_t DataRepresentableError.hashValue.getter()
{
  sub_1B1A7D058();
  MEMORY[0x1B2736930](0);
  return sub_1B1A7D098();
}

unint64_t UUID.serialize()()
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = sub_1B1A7C938();
  v10 = v0;
  v11 = v1;
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v6;
  v17 = v7;
  return sub_1B1A46AEC(&v9, 0x10uLL);
}

uint64_t static UUID.deserialize(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v4)
    {
      goto LABEL_15;
    }

    if (BYTE6(a2) != 16)
    {
      goto LABEL_17;
    }

LABEL_8:
    while (v4 != 2)
    {
      if (v4 != 1)
      {
        goto LABEL_21;
      }

      v9 = a1;
      if (a1 > a1 >> 32)
      {
        goto LABEL_27;
      }

      v10 = sub_1B1A7C6D8();
      if (!v10)
      {
        goto LABEL_32;
      }

      v11 = v10;
      v12 = sub_1B1A7C708();
      if (__OFSUB__(v9, v12))
      {
        goto LABEL_29;
      }

      v13 = v9 - v12 + v11;
      a1 = sub_1B1A7C6F8();
      if (v13)
      {
        goto LABEL_21;
      }

      __break(1u);
LABEL_15:
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_26;
      }

      if (HIDWORD(a1) - a1 != 16)
      {
        goto LABEL_17;
      }
    }

    v15 = *(a1 + 16);
    v16 = sub_1B1A7C6D8();
    if (!v16)
    {
      goto LABEL_30;
    }

    v17 = v16;
    v18 = sub_1B1A7C708();
    if (!__OFSUB__(v15, v18))
    {
      v19 = v15 - v18 + v17;
      sub_1B1A7C6F8();
      if (!v19)
      {
        goto LABEL_31;
      }

LABEL_21:
      sub_1B1A7C928();
      v14 = 0;
      goto LABEL_22;
    }

LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    sub_1B1A7C6F8();
LABEL_31:
    __break(1u);
LABEL_32:
    result = sub_1B1A7C6F8();
    __break(1u);
    return result;
  }

  if (v4 != 2)
  {
    goto LABEL_17;
  }

  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = __OFSUB__(v5, v6);
  v8 = v5 - v6;
  if (v7)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v8 == 16)
  {
    goto LABEL_8;
  }

LABEL_17:
  v14 = 1;
LABEL_22:
  v20 = sub_1B1A7C958();
  v21 = *(*(v20 - 8) + 56);

  return v21(a3, v14, 1, v20);
}

uint64_t String.serialize()(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1A7CAC8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1A7CAB8();
  v6 = sub_1B1A7CA98();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    sub_1B1A6B15C();
    swift_allocError();
    swift_willThrow();
  }

  return v6;
}

uint64_t static String.deserialize(data:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B1A7CAC8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1B1A7CAB8();
  sub_1B1A6CAF0();
  return sub_1B1A7CAA8();
}

uint64_t sub_1B1A6C85C()
{
  v0 = sub_1B1A7CAC8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1B1A7CAB8();
  v4 = sub_1B1A7CA98();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    sub_1B1A6B15C();
    swift_allocError();
    swift_willThrow();
  }

  return v4;
}

uint64_t sub_1B1A6C988@<X0>(uint64_t *a3@<X8>)
{
  v4 = sub_1B1A7CAC8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  sub_1B1A7CAB8();
  sub_1B1A6CAF0();
  result = sub_1B1A7CAA8();
  *a3 = result;
  a3[1] = v6;
  return result;
}

uint64_t sub_1B1A6CA80()
{
  v1 = *v0;
  sub_1B1A4C414(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_1B1A6CAC4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return sub_1B1A4C414(a1, a2);
}

unint64_t sub_1B1A6CAF0()
{
  result = qword_1EB75E718;
  if (!qword_1EB75E718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E718);
  }

  return result;
}

unint64_t sub_1B1A6CB48()
{
  result = qword_1EB75E720;
  if (!qword_1EB75E720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB75E720);
  }

  return result;
}

uint64_t SegmentedDataRegion.init(representables:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = result;
  v20 = *(result + 16);
  if (v20)
  {
    v4 = 0;
    v5 = result + 32;
    v6 = MEMORY[0x1E69E7CC0];
    while (v4 < *(v3 + 16))
    {
      sub_1B1A4E37C(v5, v17);
      v7 = v18;
      v8 = v19;
      __swift_project_boxed_opaque_existential_1(v17, v18);
      v9 = (*(v8 + 8))(v7, v8);
      if (v2)
      {
        __swift_destroy_boxed_opaque_existential_1(v17);
      }

      v11 = v9;
      v12 = v10;
      __swift_destroy_boxed_opaque_existential_1(v17);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1B1A79578(0, *(v6 + 16) + 1, 1, v6);
        v6 = result;
      }

      v14 = *(v6 + 16);
      v13 = *(v6 + 24);
      if (v14 >= v13 >> 1)
      {
        result = sub_1B1A79578((v13 > 1), v14 + 1, 1, v6);
        v6 = result;
      }

      ++v4;
      *(v6 + 16) = v14 + 1;
      v15 = v6 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v5 += 40;
      if (v20 == v4)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
LABEL_12:

    *a2 = v6;
  }

  return result;
}

void SegmentedDataRegion.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a1 < 0 || *(*v4 + 16) <= a1)
  {
    if (qword_1EDB764F0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for InternalLogger(0);
    __swift_project_value_buffer(v12, qword_1EDB770A8);
    sub_1B1A7CEC8();

    v13 = sub_1B1A7CF98();
    MEMORY[0x1B2736400](v13);

    sub_1B1A561D8(0xD000000000000014, 0x80000001B1A81BD0, 0xD000000000000066, 0x80000001B1A81BF0, 0x7069726373627573, 0xED0000293A5F2874);

    (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }

  else
  {
    v7 = *v4 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    v10 = *(a3 + 16);
    sub_1B1A4C414(v8, v9);
    v10(v8, v9, a2, a3);

    sub_1B1A4696C(v8, v9);
  }
}

uint64_t SegmentedDataRegion.serialize()()
{
  v38 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v37 = xmmword_1B1A7F810;
  v2 = *(v1 + 16);
  if (!v2)
  {
    v31 = 0;
    v32 = 0xC000000000000000;
    goto LABEL_49;
  }

  v3 = (v1 + 40);
  do
  {
    v7 = *(v3 - 1);
    v6 = *v3;
    v8 = *v3 >> 62;
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_16;
      }

      v10 = *(v7 + 16);
      v9 = *(v7 + 24);
      v11 = v9 - v10;
      if (__OFSUB__(v9, v10))
      {
        goto LABEL_53;
      }
    }

    else
    {
      if (!v8)
      {
        goto LABEL_16;
      }

      if (__OFSUB__(HIDWORD(v7), v7))
      {
        goto LABEL_54;
      }

      v11 = HIDWORD(v7) - v7;
    }

    sub_1B1A4C414(*(v3 - 1), *v3);
    if ((v11 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
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
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
    }

    if (HIDWORD(v11))
    {
      goto LABEL_51;
    }

LABEL_16:
    sub_1B1A7C8A8();
    sub_1B1A7C8A8();
    v13 = BYTE14(v37);
    v12 = v37;
    v14 = *(&v37 + 1) >> 62;
    if ((*(&v37 + 1) >> 62) <= 1)
    {
      if (v14)
      {
        if (__OFSUB__(DWORD1(v37), v37))
        {
          goto LABEL_56;
        }

        v15 = DWORD1(v37) - v37;
      }

      else
      {
        v15 = BYTE14(v37);
      }

      v18 = NSRoundUpToMultipleOfPageSize(v15);
      if (v15 >= v18)
      {
        goto LABEL_3;
      }

LABEL_27:
      if (v14 == 2)
      {
        v23 = *(v12 + 16);
        v22 = *(v12 + 24);
        v24 = __OFSUB__(v22, v23);
        v21 = v22 - v23;
        if (v24)
        {
          goto LABEL_60;
        }
      }

      else if (v14 == 1)
      {
        LODWORD(v21) = HIDWORD(v12) - v12;
        if (__OFSUB__(HIDWORD(v12), v12))
        {
          goto LABEL_59;
        }

        v21 = v21;
      }

      else
      {
        v21 = v13;
      }

      goto LABEL_37;
    }

    if (v14 == 2)
    {
      v17 = *(v37 + 16);
      v16 = *(v37 + 24);
      if (__OFSUB__(v16, v17))
      {
        goto LABEL_55;
      }

      v18 = NSRoundUpToMultipleOfPageSize(v16 - v17);
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (__OFSUB__(v19, v20))
      {
        goto LABEL_57;
      }

      if (v19 - v20 >= v18)
      {
LABEL_3:
        v4 = v7;
        v5 = v6;
        goto LABEL_4;
      }

      goto LABEL_27;
    }

    v18 = NSRoundUpToMultipleOfPageSize(0);
    if (v18 <= 0)
    {
      goto LABEL_3;
    }

    v21 = 0;
LABEL_37:
    v25 = v18 - v21;
    if (__OFSUB__(v18, v21))
    {
      goto LABEL_52;
    }

    if (v25)
    {
      if (v25 <= 14)
      {
        if (v25 < 0)
        {
          goto LABEL_58;
        }

        v27 = 0;
        v28 = v34 & 0xF00000000000000 | (v25 << 48);
        v34 = v28;
      }

      else
      {
        sub_1B1A7C728();
        swift_allocObject();
        v26 = sub_1B1A7C6E8();
        if (v25 >= 0x7FFFFFFF)
        {
          sub_1B1A7C868();
          v27 = swift_allocObject();
          *(v27 + 16) = 0;
          *(v27 + 24) = v25;
          v28 = v26 | 0x8000000000000000;
        }

        else
        {
          v27 = v25 << 32;
          v28 = v26 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v27 = 0;
      v28 = 0xC000000000000000;
    }

    v35 = v27;
    v36 = v28;
    sub_1B1A6DAF0(&v35, 0);
    v29 = v35;
    v30 = v36;
    sub_1B1A7C8A8();
    sub_1B1A4696C(v7, v6);
    v4 = v29;
    v5 = v30;
LABEL_4:
    sub_1B1A4696C(v4, v5);
    v3 += 2;
    --v2;
  }

  while (v2);
  v32 = *(&v37 + 1);
  v31 = v37;
LABEL_49:
  sub_1B1A4C414(v31, v32);
  sub_1B1A4696C(v31, v32);
  return v31;
}

uint64_t static SegmentedDataRegion.deserialize(data:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v8 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  sub_1B1A4C414(a1, a2);
  sub_1B1A6D8EC(a1, a2, &v8, a1, a2, &v7, a3);
}

uint64_t sub_1B1A6D4C0@<X0>(uint64_t result@<X0>, int64_t *a2@<X2>, uint64_t a3@<X3>, unint64_t a4@<X4>, char **a5@<X5>, char **a6@<X8>)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!result)
  {
    *a6 = 0;
    return result;
  }

  v8 = result;
  v9 = a4 >> 62;
  v10 = __OFSUB__(HIDWORD(a3), a3);
  v35 = v10;
  v34 = HIDWORD(a3) - a3;
  v38 = BYTE6(a4);
  while (1)
  {
    v11 = *a2;
    if (v9 <= 1)
    {
      v12 = v38;
      if (v9)
      {
        v12 = v34;
        if (v35)
        {
          goto LABEL_49;
        }
      }

      goto LABEL_12;
    }

    if (v9 == 2)
    {
      v14 = *(a3 + 16);
      v13 = *(a3 + 24);
      v15 = __OFSUB__(v13, v14);
      v12 = v13 - v14;
      if (v15)
      {
        goto LABEL_50;
      }

LABEL_12:
      if (v11 >= v12)
      {
        goto LABEL_45;
      }

      goto LABEL_15;
    }

    if ((v11 & 0x8000000000000000) == 0)
    {
      goto LABEL_45;
    }

LABEL_15:
    v16 = v11 + 4;
    if (__OFADD__(v11, 4))
    {
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
      goto LABEL_53;
    }

    v17 = *(v8 + v11);
    *a2 = v16;
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v20 = *(a3 + 16);
        v19 = *(a3 + 24);
        v15 = __OFSUB__(v19, v20);
        v18 = v19 - v20;
        if (v15)
        {
          goto LABEL_51;
        }
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = v38;
      if (v9)
      {
        v18 = v34;
        if (v35)
        {
          goto LABEL_52;
        }
      }
    }

    if (__OFADD__(v16, v17))
    {
      goto LABEL_47;
    }

    if (v18 < (v16 + v17))
    {
      break;
    }

    if (v17)
    {
      if (v17 <= 0xE)
      {
        memset(__dst, 0, sizeof(__dst));
        v40 = v17;
        memcpy(__dst, (v8 + v16), v17);
        v23 = *__dst;
        v24 = v37 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v40 << 16)) << 32);
        v37 = v24;
      }

      else
      {
        sub_1B1A7C728();
        swift_allocObject();
        v21 = sub_1B1A7C6C8();
        v22 = v21;
        if (v17 >= 0x7FFFFFFF)
        {
          sub_1B1A7C868();
          v23 = swift_allocObject();
          *(v23 + 16) = 0;
          *(v23 + 24) = v17;
          v24 = v22 | 0x8000000000000000;
        }

        else
        {
          v23 = v17 << 32;
          v24 = v21 | 0x4000000000000000;
        }
      }
    }

    else
    {
      v23 = 0;
      v24 = 0xC000000000000000;
    }

    v25 = *a2 + v17;
    if (__OFADD__(*a2, v17))
    {
      goto LABEL_48;
    }

    *a2 = v25;
    v26 = NSRoundUpToMultipleOfPageSize(v25);
    if (*a2 < v26)
    {
      *a2 = v26;
    }

    v27 = *a5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a5 = v27;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v27 = sub_1B1A79578(0, *(v27 + 2) + 1, 1, v27);
      *a5 = v27;
    }

    v30 = *(v27 + 2);
    v29 = *(v27 + 3);
    if (v30 >= v29 >> 1)
    {
      v27 = sub_1B1A79578((v29 > 1), v30 + 1, 1, v27);
      *a5 = v27;
    }

    *(v27 + 2) = v30 + 1;
    v31 = &v27[16 * v30];
    *(v31 + 4) = v23;
    *(v31 + 5) = v24;
  }

  if (qword_1EDB764F0 == -1)
  {
    goto LABEL_44;
  }

LABEL_53:
  swift_once();
LABEL_44:
  v32 = type metadata accessor for InternalLogger(0);
  __swift_project_value_buffer(v32, qword_1EDB770A8);
  sub_1B1A561D8(0xD00000000000003ELL, 0x80000001B1A81C80, 0xD000000000000066, 0x80000001B1A81BF0, 0xD000000000000012, 0x80000001B1A81CC0);
LABEL_45:
  *a6 = *a5;
}

uint64_t sub_1B1A6D868@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  v8 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  sub_1B1A4C414(a1, a2);
  sub_1B1A6D8EC(a1, a2, &v8, a1, a2, &v7, a3);
}

void sub_1B1A6D8EC(uint64_t a1@<X0>, unint64_t a2@<X1>, int64_t *a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, char **a6@<X5>, char **a7@<X8>)
{
  v7 = a5;
  v8 = a4;
  v19[2] = *MEMORY[0x1E69E9840];
  v9 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v9 != 2)
    {
      memset(v19, 0, 14);
      v10 = v19;
      goto LABEL_17;
    }

    v11 = a7;
    v12 = a3;
    v18 = a6;
    v13 = *(a1 + 16);
    v14 = *(a1 + 24);
    a1 = sub_1B1A7C6D8();
    v15 = a1;
    if (a1)
    {
      a1 = sub_1B1A7C708();
      a7 = (v13 - a1);
      if (__OFSUB__(v13, a1))
      {
        goto LABEL_19;
      }

      v15 += a7;
    }

    if (!__OFSUB__(v14, v13))
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_11:
    v16 = a1;
    if (a1 >> 32 >= a1)
    {
      v11 = a7;
      v12 = a3;
      v18 = a6;
      v15 = sub_1B1A7C6D8();
      if (!v15)
      {
LABEL_15:
        sub_1B1A7C6F8();
        a7 = v11;
        v10 = v15;
        a3 = v12;
        a4 = v8;
        a5 = v7;
        a6 = v18;
        goto LABEL_17;
      }

      v17 = sub_1B1A7C708();
      if (!__OFSUB__(v16, v17))
      {
        v15 += v16 - v17;
        goto LABEL_15;
      }

LABEL_20:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v9)
  {
    goto LABEL_11;
  }

  v19[0] = a1;
  LOWORD(v19[1]) = a2;
  BYTE2(v19[1]) = BYTE2(a2);
  BYTE3(v19[1]) = BYTE3(a2);
  BYTE4(v19[1]) = BYTE4(a2);
  BYTE5(v19[1]) = BYTE5(a2);
  v10 = v19;
LABEL_17:
  sub_1B1A6D4C0(v10, a3, a4, a5, a6, a7);
  sub_1B1A4696C(v8, v7);
}

uint64_t *sub_1B1A6DAF0(uint64_t *result, uint64_t a2)
{
  v2 = a2;
  v3 = result;
  v22 = *MEMORY[0x1E69E9840];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1B1A4696C(v5, v4);
      __b = v5;
      v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_1B1A7F810;
      sub_1B1A4696C(0, 0xC000000000000000);
      result = sub_1B1A6DDF8(&__b, v2);
      v7 = __b;
      v8 = v21 | 0x4000000000000000;
    }

    else
    {
      __c = a2;
      sub_1B1A4696C(v5, v4);
      __b = v5;
      LOWORD(v21) = v4;
      BYTE2(v21) = BYTE2(v4);
      BYTE3(v21) = BYTE3(v4);
      BYTE4(v21) = BYTE4(v4);
      BYTE5(v21) = BYTE5(v4);
      BYTE6(v21) = BYTE6(v4);
      result = memset(&__b, __c, BYTE6(v4));
      v7 = __b;
      v8 = v21 | ((WORD2(v21) | (BYTE6(v21) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    return result;
  }

  if (v6 != 2)
  {
    return result;
  }

  sub_1B1A4696C(v5, v4);
  __b = v5;
  v21 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_1B1A7F810;
  sub_1B1A4696C(0, 0xC000000000000000);
  sub_1B1A7C818();
  v9 = v21;
  v10 = *(__b + 16);
  v11 = *(__b + 24);
  result = sub_1B1A7C6D8();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v12 = result;
  v13 = sub_1B1A7C708();
  v14 = v10 - v13;
  if (__OFSUB__(v10, v13))
  {
    __break(1u);
LABEL_16:
    __break(1u);
  }

  v15 = __OFSUB__(v11, v10);
  v16 = v11 - v10;
  if (v15)
  {
    goto LABEL_16;
  }

  v17 = sub_1B1A7C6F8();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = memset(v12 + v14, v2, v18);
  *v3 = __b;
  v3[1] = v9 | 0x8000000000000000;
  return result;
}

uint64_t sub_1B1A6DD64(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1B1A6DDAC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1A6DDF8(int *a1, int a2)
{
  result = sub_1B1A7C858();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = sub_1B1A7C6D8();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v7 = result;
  result = sub_1B1A7C708();
  v8 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v9 = v6 - v5;
  v10 = sub_1B1A7C6F8();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  memset((v7 + v8), a2, v11);
}

void static Storage.ensureFileExists(fileURL:)(unsigned __int8 *a1@<X8>)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1B1A7C808();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() defaultManager];
  sub_1B1A7C7E8();
  v7 = sub_1B1A7CA58();

  v8 = [v6 fileExistsAtPath_];

  if (v8)
  {

    *a1 = 2;
    return;
  }

  sub_1B1A7C7D8();
  sub_1B1A7C7E8();
  v9 = sub_1B1A7CA58();

  v10 = [v6 fileExistsAtPath_];

  if ((v10 & 1) == 0)
  {
    v11 = sub_1B1A7C7B8();
    v18[0] = 0;
    v12 = [v6 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v18];

    if (!v12)
    {
      v16 = v18[0];
      sub_1B1A7C758();

      swift_willThrow();
      (*(v3 + 8))(v5, v2);
      return;
    }

    v13 = v18[0];
  }

  sub_1B1A7C7E8();
  v14 = sub_1B1A7CA58();

  v15 = [v6 createFileAtPath:v14 contents:0 attributes:0];

  (*(v3 + 8))(v5, v2);
  *a1 = v15;
}

uint64_t sub_1B1A6E198()
{
  v1 = sub_1B1A7CA88();
  v3 = v2;
  if (v1 == sub_1B1A7CA88() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_1B1A7CFB8();

    if ((v6 & 1) == 0)
    {
      v7 = *(v0 + 8);

      return v7();
    }
  }

  v9 = swift_task_alloc();
  *(v0 + 24) = v9;
  *v9 = v0;
  v9[1] = sub_1B1A6E2E8;

  return sub_1B1A709A8();
}

uint64_t sub_1B1A6E2E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void (**static Storage.listDirectories(directoryURL:)())(char *, uint64_t)
{
  v52 = *MEMORY[0x1E69E9840];
  v42 = sub_1B1A7C748();
  v0 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v46 = &v34 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1B1A7C808();
  v47 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v34 - v5;
  v6 = [objc_opt_self() defaultManager];
  v7 = sub_1B1A7C7B8();
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB75E728, &qword_1B1A7F898);
  v8 = swift_allocObject();
  v44 = xmmword_1B1A7E110;
  *(v8 + 16) = xmmword_1B1A7E110;
  v9 = *MEMORY[0x1E695DB78];
  *(v8 + 32) = *MEMORY[0x1E695DB78];
  type metadata accessor for URLResourceKey(0);
  v43 = v9;
  v10 = sub_1B1A7CC48();

  v51 = 0;
  v11 = [v6 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:v10 options:0 error:&v51];

  v12 = v51;
  if (v11)
  {
    v35 = v6;
    v48 = v2;
    v13 = sub_1B1A7CC58();
    v14 = v12;

    v15 = v13;
    v40 = *(v13 + 16);
    if (v40)
    {
      v16 = 0;
      v38 = v0 + 1;
      v39 = v47 + 16;
      v36 = (v47 + 8);
      v37 = (v47 + 32);
      v0 = MEMORY[0x1E69E7CC0];
      v17 = v48;
      while (1)
      {
        if (v16 >= *(v15 + 16))
        {
          __break(1u);
LABEL_21:
          __break(1u);
        }

        v18 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v19 = *(v47 + 72);
        v20 = v15;
        (*(v47 + 16))(v49, v15 + v18 + v19 * v16, v17);
        inited = swift_initStackObject();
        *(inited + 16) = v44;
        v22 = v43;
        *(inited + 32) = v43;
        v23 = v22;
        sub_1B1A6F67C(inited);
        swift_setDeallocating();
        v24 = v46;
        sub_1B1A6FEB4(inited + 32);
        v25 = v50;
        sub_1B1A7C788();
        if (v25)
        {
          break;
        }

        v50 = 0;

        v26 = sub_1B1A7C738();
        if (v26 == 2)
        {
          goto LABEL_21;
        }

        v27 = v26;
        (*v38)(v24, v42);
        if (v27)
        {
          v28 = *v37;
          v17 = v48;
          (*v37)(v41, v49, v48);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v51 = v0;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1B1A6EE3C(0, v0[2] + 1, 1);
            v17 = v48;
            v0 = v51;
          }

          v31 = v0[2];
          v30 = v0[3];
          if (v31 >= v30 >> 1)
          {
            sub_1B1A6EE3C((v30 > 1), v31 + 1, 1);
            v17 = v48;
            v0 = v51;
          }

          v0[2] = (v31 + 1);
          v28(v0 + v18 + v31 * v19, v41, v17);
        }

        else
        {
          v17 = v48;
          (*v36)(v49, v48);
        }

        ++v16;
        v15 = v20;
        if (v40 == v16)
        {
          goto LABEL_17;
        }
      }

      (*v36)(v49, v48);
    }

    else
    {
      v0 = MEMORY[0x1E69E7CC0];
LABEL_17:
    }
  }

  else
  {
    v32 = v51;
    sub_1B1A7C758();

    swift_willThrow();
  }

  return v0;
}