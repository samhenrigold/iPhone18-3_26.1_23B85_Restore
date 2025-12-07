uint64_t Location.hash(into:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  sub_1B809736C(&qword_1EBA671C8, MEMORY[0x1E699C7E8]);
  sub_1B80C905C();
  v3 = type metadata accessor for Location(0);
  v4 = (v1 + v3[5]);
  v5 = v4[9];
  v6 = v4[7];
  v50 = v4[8];
  v51 = v5;
  v7 = v4[9];
  v8 = v4[11];
  v52 = v4[10];
  v53 = v8;
  v9 = v4[5];
  v10 = v4[3];
  v46 = v4[4];
  v47 = v9;
  v11 = v4[5];
  v12 = v4[7];
  v48 = v4[6];
  v49 = v12;
  v13 = v4[1];
  v14 = v4[3];
  v44 = v4[2];
  v45 = v14;
  v15 = v4[1];
  v42 = *v4;
  v43 = v15;
  v54[8] = v50;
  v54[9] = v7;
  v16 = v4[11];
  v54[10] = v52;
  v54[11] = v16;
  v54[4] = v46;
  v54[5] = v11;
  v54[6] = v48;
  v54[7] = v6;
  v54[0] = v42;
  v54[1] = v13;
  v54[2] = v44;
  v54[3] = v10;
  if (sub_1B8032DBC(v54) == 1)
  {
    sub_1B80C995C();
  }

  else
  {
    v36 = v50;
    v37 = v51;
    v38 = v52;
    v39 = v53;
    v32 = v46;
    v33 = v47;
    v34 = v48;
    v35 = v49;
    v28 = v42;
    v29 = v43;
    v30 = v44;
    v31 = v45;
    sub_1B80C995C();
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
    sub_1B806FB80(v40, v41);
    PlaceMark.hash(into:)(a1);
    v41[8] = v36;
    v41[9] = v37;
    v41[10] = v38;
    v41[11] = v39;
    v41[4] = v32;
    v41[5] = v33;
    v41[6] = v34;
    v41[7] = v35;
    v41[0] = v28;
    v41[1] = v29;
    v41[2] = v30;
    v41[3] = v31;
    sub_1B806FC7C(v41);
  }

  v17 = *(v1 + v3[6]);
  if (v17 == 0.0)
  {
    v17 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v17);
  MEMORY[0x1B8CB8250](*(v1 + v3[7]));
  v18 = *(v1 + v3[8]);
  if (v18 == 0.0)
  {
    v18 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v18);
  v19 = *(v1 + v3[9]);
  MEMORY[0x1B8CB8250](*(v19 + 16));
  v20 = *(v19 + 16);
  if (v20)
  {
    v21 = v19 + 40;
    do
    {

      sub_1B80C911C();

      v21 += 16;
      --v20;
    }

    while (v20);
  }

  v22 = *(v1 + v3[10]);
  if (v22 == 0.0)
  {
    v22 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v22);
  v23 = *(v1 + v3[11]);
  if (v23 == 0.0)
  {
    v23 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v23);
  v24 = *(v1 + v3[12]);
  if (v24 == 0.0)
  {
    v24 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v24);
  v25 = *(v1 + v3[13]);
  if (v25 == 0.0)
  {
    v25 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v25);
  v26 = *(v1 + v3[14]);
  if (v26 == 0.0)
  {
    v26 = 0.0;
  }

  MEMORY[0x1B8CB8270](*&v26);
  MEMORY[0x1B8CB8250](*(v1 + v3[15]));
  return MEMORY[0x1B8CB8250](*(v1 + v3[16]));
}

uint64_t Location.hashValue.getter()
{
  sub_1B80C993C();
  Location.hash(into:)(v1);
  return sub_1B80C997C();
}

uint64_t Location.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E30, &qword_1B80DC700);
  v35 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - v5;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA671D0, &qword_1B80DAE40);
  v36 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v8 = v32 - v7;
  v9 = type metadata accessor for Location(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1B8097270();
  v38 = v8;
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v54);
  }

  v13 = v36;
  v33 = v11;
  LOBYTE(v42) = 0;
  sub_1B809736C(&qword_1EBA671D8, MEMORY[0x1E699C7F0]);
  sub_1B80C972C();
  v14 = v33;
  (*(v35 + 32))(v33, v6, v4);
  v41 = 1;
  sub_1B807F1E0();
  sub_1B80C96CC();
  v32[2] = v4;
  v15 = &v14[v9[5]];
  v16 = v51;
  v17 = v52;
  v18 = v49;
  *(v15 + 8) = v50;
  *(v15 + 9) = v16;
  v19 = v53;
  *(v15 + 10) = v17;
  *(v15 + 11) = v19;
  v20 = v47;
  *(v15 + 4) = v46;
  *(v15 + 5) = v20;
  *(v15 + 6) = v48;
  *(v15 + 7) = v18;
  v21 = v43;
  *v15 = v42;
  *(v15 + 1) = v21;
  v22 = v45;
  *(v15 + 2) = v44;
  *(v15 + 3) = v22;
  LOBYTE(v40) = 2;
  v32[1] = 0;
  sub_1B80C96FC();
  *&v14[v9[6]] = v23;
  LOBYTE(v40) = 3;
  *&v14[v9[7]] = sub_1B80C970C();
  LOBYTE(v40) = 4;
  sub_1B80C96FC();
  *&v14[v9[8]] = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
  v39 = 5;
  sub_1B7FCA738(&qword_1ED8DBB80, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1B80C972C();
  *&v14[v9[9]] = v40;
  LOBYTE(v40) = 6;
  sub_1B80C96FC();
  *&v14[v9[10]] = v25;
  LOBYTE(v40) = 7;
  sub_1B80C96FC();
  *&v14[v9[11]] = v26;
  LOBYTE(v40) = 8;
  sub_1B80C96FC();
  *&v14[v9[12]] = v27;
  LOBYTE(v40) = 9;
  sub_1B80C96FC();
  *&v33[v9[13]] = v28;
  LOBYTE(v40) = 10;
  sub_1B80C96FC();
  *&v33[v9[14]] = v29;
  v39 = 11;
  sub_1B80973BC();
  sub_1B80C972C();
  v33[v9[15]] = v40;
  v39 = 12;
  sub_1B8097410();
  sub_1B80C972C();
  (*(v13 + 8))(v38, v37);
  v30 = v33;
  v33[v9[16]] = v40;
  sub_1B7FD7C58(v30, v34);
  __swift_destroy_boxed_opaque_existential_0(v54);
  return sub_1B7FD7CBC(v30);
}

uint64_t sub_1B8096A64()
{
  sub_1B80C993C();
  Location.hash(into:)(v1);
  return sub_1B80C997C();
}

uint64_t sub_1B8096AA8(uint64_t a1)
{
  sub_1B80C993C();
  Location.hash(into:)(v2);
  return sub_1B80C997C();
}

uint64_t Location.LabelLength.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

BOOL _s12FindMyLocate8LocationV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Location(0);
  if ((_s12FindMyLocate5FenceV2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v5 = (a1 + v4[5]);
  v7 = v5[1];
  v6 = v5[2];
  v8 = v6;
  v84[3] = v5[3];
  v84[2] = v6;
  v9 = v5[5];
  v10 = v5[6];
  v11 = v10;
  v84[7] = v5[7];
  v84[6] = v10;
  v12 = v5[4];
  v13 = v5[3];
  v84[5] = v5[5];
  v84[4] = v12;
  v14 = v5[9];
  v15 = v5[10];
  v16 = v15;
  v84[11] = v5[11];
  v84[10] = v15;
  v17 = v5[8];
  v18 = v5[7];
  v84[9] = v5[9];
  v84[8] = v17;
  v19 = *v5;
  v20 = *v5;
  v84[1] = v5[1];
  v84[0] = v19;
  v21 = (a2 + v4[5]);
  v22 = v21[9];
  v23 = v21[7];
  v92 = v21[8];
  v93 = v22;
  v24 = v21[9];
  v25 = v21[11];
  v94 = v21[10];
  v95 = v25;
  v26 = v21[5];
  v27 = v21[3];
  v88 = v21[4];
  v89 = v26;
  v28 = v21[5];
  v29 = v21[7];
  v90 = v21[6];
  v91 = v29;
  v30 = v21[1];
  v85[0] = *v21;
  v85[1] = v30;
  v31 = v21[3];
  v33 = *v21;
  v32 = v21[1];
  v86 = v21[2];
  v87 = v31;
  v34 = v5[9];
  __src[8] = v5[8];
  __src[9] = v34;
  v35 = v5[11];
  __src[10] = v5[10];
  __src[11] = v35;
  v36 = v5[5];
  __src[4] = v5[4];
  __src[5] = v36;
  v37 = v5[7];
  __src[6] = v5[6];
  __src[7] = v37;
  v38 = v5[1];
  __src[0] = *v5;
  __src[1] = v38;
  v39 = v5[3];
  __src[2] = v5[2];
  __src[3] = v39;
  __src[20] = v92;
  __src[21] = v24;
  v40 = v21[11];
  __src[22] = v94;
  __src[23] = v40;
  __src[16] = v88;
  __src[17] = v28;
  __src[18] = v90;
  __src[19] = v23;
  __src[12] = v33;
  __src[13] = v32;
  __src[14] = v86;
  __src[15] = v27;
  v96[8] = v17;
  v96[9] = v14;
  v41 = v5[11];
  v96[10] = v16;
  v96[11] = v41;
  v96[4] = v12;
  v96[5] = v9;
  v96[6] = v11;
  v96[7] = v18;
  v96[0] = v20;
  v96[1] = v7;
  v96[2] = v8;
  v96[3] = v13;
  if (sub_1B8032DBC(v96) != 1)
  {
    v79 = __src[8];
    v80 = __src[9];
    v81 = __src[10];
    v82 = __src[11];
    v75 = __src[4];
    v76 = __src[5];
    v77 = __src[6];
    v78 = __src[7];
    v71 = __src[0];
    v72 = __src[1];
    v73 = __src[2];
    v74 = __src[3];
    v66 = __src[8];
    v67 = __src[9];
    v68 = __src[10];
    v69 = __src[11];
    v62 = __src[4];
    v63 = __src[5];
    v64 = __src[6];
    v65 = __src[7];
    v58 = __src[0];
    v59 = __src[1];
    v60 = __src[2];
    v61 = __src[3];
    __dst[8] = __src[20];
    __dst[9] = __src[21];
    __dst[10] = __src[22];
    __dst[11] = __src[23];
    __dst[4] = __src[16];
    __dst[5] = __src[17];
    __dst[6] = __src[18];
    __dst[7] = __src[19];
    __dst[0] = __src[12];
    __dst[1] = __src[13];
    __dst[2] = __src[14];
    __dst[3] = __src[15];
    if (sub_1B8032DBC(__dst) != 1)
    {
      v54 = __src[20];
      v55 = __src[21];
      v56 = __src[22];
      v57 = __src[23];
      v50 = __src[16];
      v51 = __src[17];
      v52 = __src[18];
      v53 = __src[19];
      v46 = __src[12];
      v47 = __src[13];
      v48 = __src[14];
      v49 = __src[15];
      MyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0 = _s12FindMyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0(&v58, &v46);
      v44[8] = v54;
      v44[9] = v55;
      v44[10] = v56;
      v44[11] = v57;
      v44[4] = v50;
      v44[5] = v51;
      v44[6] = v52;
      v44[7] = v53;
      v44[0] = v46;
      v44[1] = v47;
      v44[2] = v48;
      v44[3] = v49;
      sub_1B7FD7BE8(v84, v45);
      sub_1B7FD7BE8(v85, v45);
      sub_1B7FD7BE8(&v71, v45);
      sub_1B806FC7C(v44);
      v45[8] = v66;
      v45[9] = v67;
      v45[10] = v68;
      v45[11] = v69;
      v45[4] = v62;
      v45[5] = v63;
      v45[6] = v64;
      v45[7] = v65;
      v45[0] = v58;
      v45[1] = v59;
      v45[2] = v60;
      v45[3] = v61;
      sub_1B806FC7C(v45);
      v54 = __src[8];
      v55 = __src[9];
      v56 = __src[10];
      v57 = __src[11];
      v50 = __src[4];
      v51 = __src[5];
      v52 = __src[6];
      v53 = __src[7];
      v46 = __src[0];
      v47 = __src[1];
      v48 = __src[2];
      v49 = __src[3];
      sub_1B7FB86D4(&v46, &qword_1EBA65D70, &qword_1B80D1BB0);
      if (!MyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0)
      {
        return 0;
      }

      goto LABEL_10;
    }

    v54 = __src[8];
    v55 = __src[9];
    v56 = __src[10];
    v57 = __src[11];
    v50 = __src[4];
    v51 = __src[5];
    v52 = __src[6];
    v53 = __src[7];
    v46 = __src[0];
    v47 = __src[1];
    v48 = __src[2];
    v49 = __src[3];
    sub_1B7FD7BE8(v84, v45);
    sub_1B7FD7BE8(v85, v45);
    sub_1B7FD7BE8(&v71, v45);
    sub_1B806FC7C(&v46);
LABEL_8:
    memcpy(__dst, __src, sizeof(__dst));
    sub_1B7FB86D4(__dst, &qword_1EBA67218, &unk_1B80DB180);
    return 0;
  }

  __dst[8] = __src[20];
  __dst[9] = __src[21];
  __dst[10] = __src[22];
  __dst[11] = __src[23];
  __dst[4] = __src[16];
  __dst[5] = __src[17];
  __dst[6] = __src[18];
  __dst[7] = __src[19];
  __dst[0] = __src[12];
  __dst[1] = __src[13];
  __dst[2] = __src[14];
  __dst[3] = __src[15];
  if (sub_1B8032DBC(__dst) != 1)
  {
    sub_1B7FD7BE8(v84, &v71);
    sub_1B7FD7BE8(v85, &v71);
    goto LABEL_8;
  }

  v79 = __src[8];
  v80 = __src[9];
  v81 = __src[10];
  v82 = __src[11];
  v75 = __src[4];
  v76 = __src[5];
  v77 = __src[6];
  v78 = __src[7];
  v71 = __src[0];
  v72 = __src[1];
  v73 = __src[2];
  v74 = __src[3];
  sub_1B7FD7BE8(v84, &v58);
  sub_1B7FD7BE8(v85, &v58);
  sub_1B7FB86D4(&v71, &qword_1EBA65D70, &qword_1B80D1BB0);
LABEL_10:
  if (*(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && (sub_1B808ADA8(*(a1 + v4[9]), *(a2 + v4[9])) & 1) != 0 && *(a1 + v4[10]) == *(a2 + v4[10]) && *(a1 + v4[11]) == *(a2 + v4[11]) && *(a1 + v4[12]) == *(a2 + v4[12]) && *(a1 + v4[13]) == *(a2 + v4[13]) && *(a1 + v4[14]) == *(a2 + v4[14]) && *(a1 + v4[15]) == *(a2 + v4[15]))
  {
    return *(a1 + v4[16]) == *(a2 + v4[16]);
  }

  return 0;
}

unint64_t sub_1B8097270()
{
  result = qword_1EBA671A8;
  if (!qword_1EBA671A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671A8);
  }

  return result;
}

unint64_t sub_1B80972C4()
{
  result = qword_1EBA671B8;
  if (!qword_1EBA671B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671B8);
  }

  return result;
}

unint64_t sub_1B8097318()
{
  result = qword_1EBA671C0;
  if (!qword_1EBA671C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671C0);
  }

  return result;
}

uint64_t sub_1B809736C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA65E30, &qword_1B80DC700);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B80973BC()
{
  result = qword_1EBA671E0;
  if (!qword_1EBA671E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671E0);
  }

  return result;
}

unint64_t sub_1B8097410()
{
  result = qword_1EBA671E8;
  if (!qword_1EBA671E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671E8);
  }

  return result;
}

unint64_t sub_1B8097464()
{
  result = qword_1EBA671F0;
  if (!qword_1EBA671F0)
  {
    type metadata accessor for Location(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671F0);
  }

  return result;
}

unint64_t sub_1B80974C0()
{
  result = qword_1EBA671F8;
  if (!qword_1EBA671F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA671F8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Location.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for Location.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B80976A0()
{
  result = qword_1EBA67200;
  if (!qword_1EBA67200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67200);
  }

  return result;
}

unint64_t sub_1B80976F8()
{
  result = qword_1EBA67208;
  if (!qword_1EBA67208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67208);
  }

  return result;
}

unint64_t sub_1B8097750()
{
  result = qword_1EBA67210;
  if (!qword_1EBA67210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67210);
  }

  return result;
}

uint64_t sub_1B80977A4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6564757469746C61 && a2 == 0xE800000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x76654C726F6F6C66 && a2 == 0xEA00000000006C65 || (sub_1B80C981C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B80CE030 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736C6562616CLL && a2 == 0xE600000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x656475746974616CLL && a2 == 0xE800000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x64757469676E6F6CLL && a2 == 0xE900000000000065 || (sub_1B80C981C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6465657073 && a2 == 0xE500000000000000 || (sub_1B80C981C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1B80C981C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001B80CE050 == a2 || (sub_1B80C981C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC00000065707954 || (sub_1B80C981C() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001B80CE070 == a2)
  {

    return 12;
  }

  else
  {
    v5 = sub_1B80C981C();

    if (v5)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t LocationShiftingRequest.__allocating_init(location:)(uint64_t a1)
{
  v2 = sub_1B80C8E9C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  v7 = sub_1B80C8E4C();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v10 = (v6 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
  *v10 = v7;
  v10[1] = v9;
  sub_1B8083A34(a1, v6 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location);
  return v6;
}

uint64_t LocationShiftingRequest.__allocating_init(identifier:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1B8083A34(a3, v6 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location);
  v7 = (v6 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
  *v7 = a1;
  v7[1] = a2;
  return v6;
}

uint64_t LocationShiftingRequest.init(identifier:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1B8083A34(a3, v3 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location);
  v6 = (v3 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
  *v6 = a1;
  v6[1] = a2;
  return v3;
}

uint64_t LocationShiftingRequest.init(location:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1B80C8E9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  v8 = sub_1B80C8E4C();
  v10 = v9;
  (*(v5 + 8))(v7, v4);
  v11 = (v2 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_identifier);
  *v11 = v8;
  v11[1] = v10;
  sub_1B8083A34(a1, v2 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location);
  return v2;
}

uint64_t LocationShiftingRequest.deinit()
{
  sub_1B7FD7CBC(v0 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location);

  return v0;
}

uint64_t LocationShiftingRequest.__deallocating_deinit()
{
  sub_1B7FD7CBC(v0 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LocationShiftingRequest(uint64_t a1)
{
  result = qword_1EBA67220;
  if (!qword_1EBA67220)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B8097FCC(uint64_t a1)
{
  result = type metadata accessor for Location(319);
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

unint64_t LocationType.description.getter()
{
  v1 = 0x79636167656C2ELL;
  v2 = 0x6576696C2ELL;
  if (*v0 != 2)
  {
    v2 = 0x696C6C657461732ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

FindMyLocate::LocationType_optional __swiftcall LocationType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B8098150()
{
  result = qword_1EBA67230;
  if (!qword_1EBA67230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67230);
  }

  return result;
}

unint64_t sub_1B8098260()
{
  result = qword_1EBA67238;
  if (!qword_1EBA67238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA67240, &qword_1B80DB2C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67238);
  }

  return result;
}

unint64_t sub_1B80982D4()
{
  v1 = 0x79636167656C2ELL;
  v2 = 0x6576696C2ELL;
  if (*v0 != 2)
  {
    v2 = 0x696C6C657461732ELL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1B8098364()
{
  result = qword_1EBA67248;
  if (!qword_1EBA67248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67248);
  }

  return result;
}

uint64_t MotionActivityState.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x676E696E6E75722ELL;
  v4 = 0x676E696C6379632ELL;
  if (v1 != 4)
  {
    v4 = 0x746F6D6F7475612ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F69746174732ELL;
  if (v1 != 1)
  {
    v5 = 0x676E696B6C61772ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

FindMyLocate::MotionActivityState_optional __swiftcall MotionActivityState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 6;
  if (rawValue < 6)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t sub_1B80984B0()
{
  result = qword_1EBA67250;
  if (!qword_1EBA67250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67250);
  }

  return result;
}

unint64_t sub_1B80985C0()
{
  result = qword_1EBA67258;
  if (!qword_1EBA67258)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBA67260, &qword_1B80DB440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67258);
  }

  return result;
}

uint64_t sub_1B8098634()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x676E696E6E75722ELL;
  v4 = 0x676E696C6379632ELL;
  if (v1 != 4)
  {
    v4 = 0x746F6D6F7475612ELL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F69746174732ELL;
  if (v1 != 1)
  {
    v5 = 0x676E696B6C61772ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t getEnumTagSinglePayload for MotionActivityState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for MotionActivityState(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B8098850()
{
  result = qword_1EBA67268;
  if (!qword_1EBA67268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67268);
  }

  return result;
}

uint64_t PlaceMark.init(address:)@<X0>(void *__src@<X0>, void *a2@<X8>)
{
  memcpy(__dst, __src, 0x110uLL);
  v44 = __dst[15];
  v45 = __dst[16];
  v4 = __dst[13];
  v3 = __dst[14];
  v6 = __dst[11];
  v5 = __dst[12];
  v42 = __dst[9];
  v43 = __dst[10];
  v7 = __dst[8];
  v8 = __dst[4];
  v37 = __dst[7];
  v39 = __dst[3];
  v9 = __dst[2];
  if (*(__dst[2] + 16))
  {

    swift_bridgeObjectRetain_n();

    v41 = v9;
    v36 = sub_1B809A010(1, v9);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1B80D1EB0;
    if (v5)
    {
      v11 = v6;
    }

    else
    {
      v11 = 0;
    }

    if (v5)
    {
      v12 = v5;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    v41 = v10;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1B80D1EB0;
    *(v13 + 32) = v11;
    *(v13 + 40) = v12;
    v36 = v13;

    swift_bridgeObjectRetain_n();
  }

  v14 = v7 == 0;
  if (v7)
  {
    v15 = v7;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  v16 = __dst[25];
  v34 = __dst[24];
  v35 = v15;
  if (v14)
  {
    v17 = 0;
  }

  else
  {
    v17 = v37;
  }

  if (v3)
  {
    v18 = v3;
  }

  else
  {
    v18 = 0xE000000000000000;
  }

  if (v3)
  {
    v19 = v4;
  }

  else
  {
    v19 = 0;
  }

  v29 = v19;
  v30 = v18;
  if (v8)
  {
    v20 = v8;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  if (v8)
  {
    v21 = v39;
  }

  else
  {
    v21 = 0;
  }

  if (v5)
  {
    v22 = v5;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  if (v5)
  {
    v23 = v6;
  }

  else
  {
    v23 = 0;
  }

  v24 = __dst[27];
  v38 = v17;
  v40 = __dst[26];
  v25 = __dst[29];
  v26 = __dst[31];
  v32 = __dst[30];
  v33 = __dst[28];
  v27 = __dst[33];
  v31 = __dst[32];

  result = sub_1B7FE0150(__dst);
  *a2 = v23;
  a2[1] = v22;
  a2[2] = v44;
  a2[3] = v45;
  a2[4] = v21;
  a2[5] = v20;
  a2[6] = v29;
  a2[7] = v30;
  a2[8] = v42;
  a2[9] = v43;
  a2[10] = v38;
  a2[11] = v35;
  a2[12] = v41;
  a2[13] = v36;
  a2[14] = v34;
  a2[15] = v16;
  a2[16] = v40;
  a2[17] = v24;
  a2[18] = v33;
  a2[19] = v25;
  a2[20] = v32;
  a2[21] = v26;
  a2[22] = v31;
  a2[23] = v27;
  return result;
}

uint64_t PlaceMark.shortDescription.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v26 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v29 = *(v0 + 48);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  v7 = *(v0 + 160);
  v36 = *(v0 + 144);
  v37 = v7;
  v38 = *(v0 + 176);
  v8 = *(v0 + 96);
  v32 = *(v0 + 80);
  v33 = v8;
  v9 = *(v0 + 128);
  v34 = *(v0 + 112);
  v35 = v9;
  v24 = v1;
  v25 = v2;
  v27 = v3;
  v28 = v4;
  v30 = v6;
  v31 = v5;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  MyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0 = _s12FindMyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0(&v24, &v12);
  v39[8] = v20;
  v39[9] = v21;
  v39[10] = v22;
  v39[11] = v23;
  v39[4] = v16;
  v39[5] = v17;
  v39[6] = v18;
  v39[7] = v19;
  v39[0] = v12;
  v39[1] = v13;
  v39[2] = v14;
  v39[3] = v15;
  sub_1B806FC7C(v39);
  if (MyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0)
  {
    return 10536;
  }

  result = 0;
  if (v5 && v2)
  {
    if (v4)
    {
      v24 = v6;
      v25 = v5;

      MEMORY[0x1B8CB7A40](8236, 0xE200000000000000);
      MEMORY[0x1B8CB7A40](v1, v2);
      MEMORY[0x1B8CB7A40](8236, 0xE200000000000000);
      MEMORY[0x1B8CB7A40](v3, v4);
      return v24;
    }
  }

  return result;
}

uint64_t PlaceMark.description.getter()
{

  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](0xD000000000000014, 0x80000001B80CE0E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D98, &qword_1B80DE6E0);
  v0 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v0);

  MEMORY[0x1B8CB7A40](0x74696C61636F6C0ALL, 0xEB00000000203A79);
  v1 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v1);

  MEMORY[0x1B8CB7A40](0x7972746E756F630ALL, 0xEA0000000000203ALL);
  v2 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v2);

  MEMORY[0x1B8CB7A40](0x203A65746174730ALL, 0xE800000000000000);
  v3 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v3);

  MEMORY[0x1B8CB7A40](0xD000000000000010, 0x80000001B80CD870);
  v4 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v4);

  MEMORY[0x1B8CB7A40](0x4E7465657274730ALL, 0xED0000203A656D61);
  v5 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v5);

  MEMORY[0x1B8CB7A40](0xD000000000000013, 0x80000001B80CE100);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DA8, &qword_1B80D1BC0);
  v6 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v6);

  MEMORY[0x1B8CB7A40](0xD000000000000021, 0x80000001B80CE120);
  v7 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v7);

  return 0;
}

uint64_t PlaceMark.locality.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PlaceMark.administrativeArea.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t PlaceMark.country.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t PlaceMark.stateCode.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t PlaceMark.streetAddress.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t PlaceMark.streetName.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

uint64_t PlaceMark.coarseAddress.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t PlaceMark.poiAddress.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t PlaceMark.smallAddress.getter()
{
  v1 = *(v0 + 144);

  return v1;
}

uint64_t PlaceMark.mediumAddress.getter()
{
  v1 = *(v0 + 160);

  return v1;
}

uint64_t PlaceMark.largeAddress.getter()
{
  v1 = *(v0 + 176);

  return v1;
}

unint64_t sub_1B80991F0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x6464416C6C616D73;
    v7 = 0x64416D756964656DLL;
    if (a1 != 10)
    {
      v7 = 0x646441656772616CLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0xD000000000000015;
    v9 = 0x6441657372616F63;
    if (a1 != 7)
    {
      v9 = 0x6572646441696F70;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x7974696C61636F6CLL;
    v2 = 0x646F436574617473;
    v3 = 0x6441746565727473;
    if (a1 != 4)
    {
      v3 = 0x614E746565727473;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0xD000000000000012;
    if (a1 != 1)
    {
      v4 = 0x7972746E756F63;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B80993BC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_1B80991F0(*a1);
  v5 = v4;
  if (v3 == sub_1B80991F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1B80C981C();
  }

  return v8 & 1;
}

uint64_t sub_1B8099444()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B80991F0(v1);
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B80994A8(uint64_t a1)
{
  sub_1B80991F0(*v1);
  sub_1B80C911C();
}

uint64_t sub_1B80994FC(uint64_t a1)
{
  v2 = *v1;
  sub_1B80C993C();
  sub_1B80991F0(v2);
  sub_1B80C911C();

  return sub_1B80C997C();
}

unint64_t sub_1B809955C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1B809B8B4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1B809958C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1B80991F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1B80995D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1B809B8B4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1B80995FC(uint64_t a1)
{
  v2 = sub_1B809B6E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B8099638(uint64_t a1)
{
  v2 = sub_1B809B6E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PlaceMark.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67270, &qword_1B80DB4F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v77 - v7;
  v9 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v9);
  sub_1B809B6E0();
  sub_1B80C99BC();
  if (v2)
  {
    v97 = v2;
    v89 = 0;
    v90 = 0;
    v87 = 0;
    v88 = 0;
    v91 = 0uLL;
    v92 = 0uLL;
    v95 = 0;
    v96 = 0;
    v93 = 0;
    v94 = 0;
    v84 = 0;
    v10 = 0;
    v86 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  else
  {
    LOBYTE(v110) = 0;
    *&v83 = sub_1B80C96AC();
    *(&v83 + 1) = v19;
    LOBYTE(v110) = 1;
    *&v82 = sub_1B80C96AC();
    *(&v82 + 1) = v20;
    LOBYTE(v110) = 2;
    v21 = a2;
    v81 = sub_1B80C96AC();
    v79 = v22;
    LOBYTE(v110) = 3;
    v23 = sub_1B80C96AC();
    v25 = v24;
    LOBYTE(v110) = 4;
    v26 = v6;
    v80 = sub_1B80C96AC();
    v84 = v27;
    LOBYTE(v110) = 5;
    v28 = sub_1B80C96AC();
    v97 = 0;
    v86 = v25;
    v30 = v29;
    v95 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
    LOBYTE(v98) = 6;
    sub_1B7FCA738(&qword_1ED8DBB80, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
    v31 = v97;
    sub_1B80C96CC();
    v94 = v30;
    if (v31)
    {
      v97 = v31;
      (*(v26 + 8))(v8, v5);
      v89 = 0;
      v90 = 0;
      v87 = 0;
      v88 = 0;
      v91 = 0uLL;
      v92 = 0uLL;
      v96 = 0;
      v93 = 0;
    }

    else
    {
      v32 = v110;
      v33 = *(&v83 + 1);
      v93 = v110;
      if (v110)
      {
        if (*(v110 + 16))
        {

          v96 = sub_1B809A010(1, v32);
        }

        else
        {
          v97 = 0;
          if (v30)
          {

            v34 = sub_1B807D780(0, 1, 1, MEMORY[0x1E69E7CC0]);
            v36 = *(v34 + 2);
            v35 = *(v34 + 3);
            v37 = (v36 + 1);
            if (v36 >= v35 >> 1)
            {
              v96 = (v36 + 1);
              v74 = sub_1B807D780((v35 > 1), v36 + 1, 1, v34);
              v37 = v96;
              v34 = v74;
            }

            v38 = v95;
            *(v34 + 2) = v37;
            v39 = &v34[16 * v36];
            *(v39 + 4) = v38;
            *(v39 + 5) = v30;
            v31 = v97;
            v33 = *(&v83 + 1);
          }

          else
          {
            v34 = MEMORY[0x1E69E7CC0];
          }

          if (v33)
          {
            v40 = v34;

            v96 = v40;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v96 = sub_1B807D780(0, *(v96 + 2) + 1, 1, v96);
            }

            v34 = v96;
            v31 = v97;
            v42 = *(v96 + 2);
            v41 = *(v96 + 3);
            v43 = v42 + 1;
            if (v42 >= v41 >> 1)
            {
              *(&v92 + 1) = v42 + 1;
              v75 = sub_1B807D780((v41 > 1), v42 + 1, 1, v96);
              v43 = *(&v92 + 1);
              v31 = v97;
              v34 = v75;
            }

            *(v34 + 2) = v43;
            v44 = &v34[16 * v42];
            v45 = *(&v83 + 1);
            *(v44 + 4) = v83;
            *(v44 + 5) = v45;
          }

          if (v25)
          {
            v46 = v34;

            v96 = v46;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v96 = sub_1B807D780(0, *(v96 + 2) + 1, 1, v96);
            }

            v34 = v96;
            v31 = v97;
            v48 = *(v96 + 2);
            v47 = *(v96 + 3);
            v49 = v48 + 1;
            if (v48 >= v47 >> 1)
            {
              *(&v92 + 1) = v48 + 1;
              v76 = sub_1B807D780((v47 > 1), v48 + 1, 1, v96);
              v49 = *(&v92 + 1);
              v31 = v97;
              v34 = v76;
            }

            *(v34 + 2) = v49;
            v50 = &v34[16 * v48];
            *(v50 + 4) = v23;
            *(v50 + 5) = v25;
          }

          v96 = v34;
        }
      }

      else
      {
        v96 = 0;
      }

      LOBYTE(v110) = 7;
      v51 = sub_1B80C96AC();
      if (!v31)
      {
        *&v92 = v51;
        *(&v92 + 1) = v52;
        LOBYTE(v110) = 8;
        *&v91 = sub_1B80C96AC();
        *(&v91 + 1) = v53;
        LOBYTE(v110) = 9;
        v88 = sub_1B80C96AC();
        v90 = v54;
        v78 = v23;
        LOBYTE(v110) = 10;
        v55 = sub_1B80C96AC();
        v97 = 0;
        v87 = v55;
        v89 = v56;
        v130 = 11;
        v57 = sub_1B80C96AC();
        v97 = 0;
        v58 = v57;
        v60 = v59;
        (*(v26 + 8))(v8, v5);
        v61 = v83;
        v98 = v83;
        v99 = v82;
        v62 = v79;
        *&v100 = v81;
        *(&v100 + 1) = v79;
        v63 = v86;
        *&v101 = v78;
        *(&v101 + 1) = v86;
        v64 = v84;
        *&v102 = v80;
        *(&v102 + 1) = v84;
        *&v103 = v95;
        *(&v103 + 1) = v94;
        *&v104 = v93;
        *(&v104 + 1) = v96;
        v105 = v92;
        v106 = v91;
        *&v107 = v88;
        *(&v107 + 1) = v90;
        *&v108 = v87;
        *(&v108 + 1) = v89;
        *&v109 = v58;
        *(&v109 + 1) = v60;
        v65 = v102;
        v66 = v103;
        v67 = v92;
        v21[6] = v104;
        v21[7] = v67;
        v21[4] = v65;
        v21[5] = v66;
        v68 = v98;
        v69 = v99;
        v70 = v101;
        v21[2] = v100;
        v21[3] = v70;
        *v21 = v68;
        v21[1] = v69;
        v71 = v106;
        v72 = v107;
        v73 = v109;
        v21[10] = v108;
        v21[11] = v73;
        v21[8] = v71;
        v21[9] = v72;
        sub_1B806FB80(&v98, &v110);
        __swift_destroy_boxed_opaque_existential_0(v85);
        v110 = v61;
        v111 = v82;
        v112 = v81;
        v113 = v62;
        v114 = v78;
        v115 = v63;
        v116 = v80;
        v117 = v64;
        v118 = v95;
        v119 = v94;
        v120 = v93;
        v121 = v96;
        v122 = v92;
        v123 = v91;
        v124 = v88;
        v125 = v90;
        v126 = v87;
        v127 = v89;
        v128 = v58;
        v129 = v60;
        return sub_1B806FC7C(&v110);
      }

      v97 = v31;
      (*(v26 + 8))(v8, v5);
      v89 = 0;
      v90 = 0;
      v87 = 0;
      v88 = 0;
      v91 = 0uLL;
      v92 = 0uLL;
    }

    v16 = *(&v83 + 1);
    v17 = v83;
    v14 = *(&v82 + 1);
    v15 = v82;
    v12 = v79;
    v11 = v23;
    v13 = v81;
    v10 = v80;
  }

  __swift_destroy_boxed_opaque_existential_0(v85);
  *&v110 = v17;
  *(&v110 + 1) = v16;
  *&v111 = v15;
  *(&v111 + 1) = v14;
  v112 = v13;
  v113 = v12;
  v114 = v11;
  v115 = v86;
  v116 = v10;
  v117 = v84;
  v118 = v95;
  v119 = v94;
  v120 = v93;
  v121 = v96;
  v122 = v92;
  v123 = v91;
  v124 = v88;
  v125 = v90;
  v126 = v87;
  v127 = v89;
  v129 = 0;
  v128 = 0;
  return sub_1B806FC7C(&v110);
}

uint64_t sub_1B809A010(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v2 = a2;
    v3 = result;
    if (result)
    {
      v4 = *(a2 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = 0;
        v7 = a2 + 40;
        v31 = *(a2 + 16);
        v27 = v4 - 1;
        v8 = MEMORY[0x1E69E7CC0];
        v30 = MEMORY[0x1E69E7CC0];
        v28 = a2 + 40;
        while (1)
        {
          v29 = v6;
          v9 = (v7 + 16 * v5);
          while (1)
          {
            if (v5 >= *(v2 + 16))
            {
              __break(1u);
              goto LABEL_32;
            }

            v10 = *(v9 - 1);
            v11 = *v9;
            v12 = v5 + 1;
            v13 = *(v8 + 16);
            if (v13 >= v3)
            {
              break;
            }

            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1B7FCF988(0, v13 + 1, 1);
            }

            v15 = *(v8 + 16);
            v14 = *(v8 + 24);
            if (v15 >= v14 >> 1)
            {
              result = sub_1B7FCF988((v14 > 1), v15 + 1, 1);
            }

            *(v8 + 16) = v15 + 1;
            v16 = v8 + 16 * v15;
            *(v16 + 32) = v10;
            *(v16 + 40) = v11;
            v9 += 2;
            v5 = v12;
            if (v31 == v12)
            {
              goto LABEL_29;
            }
          }

          if (v29 >= v13)
          {
            goto LABEL_33;
          }

          v17 = v8 + 16 * v29;
          v18 = *(v17 + 40);
          v25 = *(v17 + 32);

          v26 = v18;

          v19 = v30;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1B7FCF988(0, *(v30 + 16) + 1, 1);
            v19 = v30;
          }

          v21 = *(v19 + 16);
          v20 = *(v19 + 24);
          if (v21 >= v20 >> 1)
          {
            sub_1B7FCF988((v20 > 1), v21 + 1, 1);
            v19 = v30;
          }

          *(v19 + 16) = v21 + 1;
          v30 = v19;
          v22 = v19 + 16 * v21;
          *(v22 + 32) = v25;
          *(v22 + 40) = v26;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1B80B5740(v8);
            v8 = result;
          }

          v7 = v28;
          if (v29 >= *(v8 + 16))
          {
            goto LABEL_34;
          }

          v23 = v8 + 16 * v29;
          *(v23 + 32) = v10;
          *(v23 + 40) = v11;

          if ((v29 + 1) < v3)
          {
            v6 = v29 + 1;
          }

          else
          {
            v6 = 0;
          }

          if (v27 == v5++)
          {
            goto LABEL_29;
          }
        }
      }

      v30 = MEMORY[0x1E69E7CC0];
LABEL_29:

      return v30;
    }

    return v2;
  }

LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t PlaceMark.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67280, &qword_1B80DB4F8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v24 - v5;
  v7 = v1[2];
  v34 = v1[3];
  v35 = v7;
  v8 = v1[4];
  v32 = v1[5];
  v33 = v8;
  v9 = v1[6];
  v30 = v1[7];
  v31 = v9;
  v10 = v1[8];
  v28 = v1[9];
  v29 = v10;
  v11 = v1[11];
  v26 = v1[10];
  v27 = v11;
  v12 = v1[12];
  v13 = v1[14];
  v24[9] = v1[15];
  v25 = v12;
  v14 = v1[16];
  v24[7] = v1[17];
  v24[8] = v13;
  v15 = v1[18];
  v24[5] = v1[19];
  v24[6] = v14;
  v16 = v1[21];
  v24[2] = v1[20];
  v24[3] = v16;
  v24[4] = v15;
  v17 = v1[23];
  v24[1] = v1[22];
  v18 = a1[3];
  v19 = a1;
  v21 = v20;
  __swift_project_boxed_opaque_existential_1(v19, v18);
  sub_1B809B6E0();
  sub_1B80C99DC();
  LOBYTE(v38) = 0;
  v22 = v36;
  sub_1B80C975C();
  if (!v22)
  {
    v36 = v17;
    LOBYTE(v38) = 1;
    sub_1B80C975C();
    LOBYTE(v38) = 2;
    sub_1B80C975C();
    LOBYTE(v38) = 3;
    sub_1B80C975C();
    LOBYTE(v38) = 4;
    sub_1B80C975C();
    LOBYTE(v38) = 5;
    sub_1B80C975C();
    v38 = v25;
    v37[0] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66070, &qword_1B80D6930);
    sub_1B7FCA738(&qword_1ED8DBBF8, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1B80C977C();
    LOBYTE(v38) = 7;
    sub_1B80C975C();
    LOBYTE(v38) = 8;
    sub_1B80C975C();
    LOBYTE(v38) = 9;
    sub_1B80C975C();
    LOBYTE(v38) = 10;
    sub_1B80C975C();
    LOBYTE(v38) = 11;
    sub_1B80C975C();
  }

  return (*(v4 + 8))(v6, v21);
}

double PlaceMark.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

__n128 PlaceMark.init(locality:administrativeArea:country:stateCode:streetAddress:streetName:formattedAddressLines:formattedAddressLinesWithoutCountry:coarseAddress:poiAddress:smallAddress:mediumAddress:largeAddress:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, __int128 a11, __int128 a12, __int128 a13, __int128 a14, __int128 a15, __n128 a16, uint64_t a17, uint64_t a18)
{
  result = a16;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8;
  *(a9 + 64) = a10;
  *(a9 + 80) = a11;
  *(a9 + 96) = a12;
  *(a9 + 112) = a13;
  *(a9 + 128) = a14;
  *(a9 + 144) = a15;
  *(a9 + 160) = a16;
  *(a9 + 176) = a17;
  *(a9 + 184) = a18;
  return result;
}

uint64_t PlaceMark.init(locality:administrativeArea:country:state:streetAddress:streetName:formattedAddress:coarseAddress:poiAddress:smallAddress:mediumAddress:largeAddress:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  v30 = a24;
  v31 = a14;
  if (*(a14 + 16))
  {

    result = sub_1B809A010(1, a14);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65DD8, &qword_1B80D1EC0);
    v33 = swift_allocObject();
    *(v33 + 16) = xmmword_1B80DB4E0;
    *(v33 + 32) = a12;
    *(v33 + 40) = a13;
    *(v33 + 48) = a1;
    *(v33 + 56) = a2;
    *(v33 + 64) = a7;
    *(v33 + 72) = a8;
    *(v33 + 80) = a5;
    *(v33 + 88) = a6;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    result = swift_allocObject();
    *(result + 16) = xmmword_1B80D2130;
    *(result + 32) = a12;
    *(result + 40) = a13;
    *(result + 48) = a1;
    *(result + 56) = a2;
    *(result + 64) = a7;
    *(result + 72) = a8;
    v31 = v33;
    v30 = a24;
  }

  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  a9[10] = a12;
  a9[11] = a13;
  a9[12] = v31;
  a9[13] = result;
  a9[14] = a15;
  a9[15] = a16;
  a9[16] = a17;
  a9[17] = a18;
  a9[18] = a19;
  a9[19] = a20;
  a9[20] = a21;
  a9[21] = a22;
  a9[22] = a23;
  a9[23] = v30;
  return result;
}

uint64_t PlaceMark.hash(into:)(uint64_t a1)
{
  v2 = v1[3];
  v3 = v1[5];
  v4 = v1[9];
  v5 = v1[11];
  v15 = v1[7];
  v16 = v1[12];
  v17 = v1[13];
  v18 = v1[15];
  v6 = v1[17];
  v19 = v1[19];
  v20 = v1[21];
  v21 = v1[23];
  if (v1[1])
  {
    sub_1B80C995C();
    sub_1B80C911C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_1B80C995C();
    if (v2)
    {
LABEL_3:
      sub_1B80C995C();
      sub_1B80C911C();
      v7 = v15;
      if (v3)
      {
        goto LABEL_4;
      }

      goto LABEL_19;
    }
  }

  sub_1B80C995C();
  v7 = v15;
  if (v3)
  {
LABEL_4:
    sub_1B80C995C();
    sub_1B80C911C();
    if (v7)
    {
      goto LABEL_5;
    }

    goto LABEL_20;
  }

LABEL_19:
  sub_1B80C995C();
  if (v7)
  {
LABEL_5:
    sub_1B80C995C();
    sub_1B80C911C();
    if (v4)
    {
      goto LABEL_6;
    }

    goto LABEL_21;
  }

LABEL_20:
  sub_1B80C995C();
  if (v4)
  {
LABEL_6:
    sub_1B80C995C();
    sub_1B80C911C();
    if (v5)
    {
      goto LABEL_7;
    }

    goto LABEL_22;
  }

LABEL_21:
  sub_1B80C995C();
  if (v5)
  {
LABEL_7:
    sub_1B80C995C();
    sub_1B80C911C();
    v8 = v16;
    if (v16)
    {
      goto LABEL_8;
    }

LABEL_23:
    sub_1B80C995C();
    v11 = v17;
    if (v17)
    {
      goto LABEL_12;
    }

    goto LABEL_24;
  }

LABEL_22:
  sub_1B80C995C();
  v8 = v16;
  if (!v16)
  {
    goto LABEL_23;
  }

LABEL_8:
  sub_1B80C995C();
  MEMORY[0x1B8CB8250](*(v8 + 16));
  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = v8 + 40;
    do
    {

      sub_1B80C911C();

      v10 += 16;
      --v9;
    }

    while (v9);
  }

  v11 = v17;
  if (v17)
  {
LABEL_12:
    sub_1B80C995C();
    MEMORY[0x1B8CB8250](*(v11 + 16));
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = v11 + 40;
      do
      {

        sub_1B80C911C();

        v13 += 16;
        --v12;
      }

      while (v12);
    }

    if (v18)
    {
      goto LABEL_16;
    }

    goto LABEL_25;
  }

LABEL_24:
  sub_1B80C995C();
  if (v18)
  {
LABEL_16:
    sub_1B80C995C();
    sub_1B80C911C();
    goto LABEL_26;
  }

LABEL_25:
  sub_1B80C995C();
LABEL_26:
  if (v6)
  {
    sub_1B80C995C();
    sub_1B80C911C();
    if (v19)
    {
      goto LABEL_28;
    }
  }

  else
  {
    sub_1B80C995C();
    if (v19)
    {
LABEL_28:
      sub_1B80C995C();
      sub_1B80C911C();
      if (v20)
      {
        goto LABEL_29;
      }

LABEL_35:
      sub_1B80C995C();
      if (v21)
      {
        goto LABEL_30;
      }

      return sub_1B80C995C();
    }
  }

  sub_1B80C995C();
  if (!v20)
  {
    goto LABEL_35;
  }

LABEL_29:
  sub_1B80C995C();
  sub_1B80C911C();
  if (!v21)
  {
    return sub_1B80C995C();
  }

LABEL_30:
  sub_1B80C995C();

  return sub_1B80C911C();
}

uint64_t PlaceMark.hashValue.getter()
{
  sub_1B80C993C();
  PlaceMark.hash(into:)(v1);
  return sub_1B80C997C();
}

uint64_t sub_1B809AC90()
{
  sub_1B80C993C();
  PlaceMark.hash(into:)(v1);
  return sub_1B80C997C();
}

uint64_t sub_1B809ACD4(uint64_t a1)
{
  sub_1B80C993C();
  PlaceMark.hash(into:)(v2);
  return sub_1B80C997C();
}

BOOL _s12FindMyLocate9PlaceMarkV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v240 = a1[2];
  v230 = a1[4];
  v250 = a1[5];
  v253 = a1[3];
  v232 = a1[7];
  v221 = a1[8];
  v228 = a1[9];
  v218 = a1[10];
  v4 = a1[12];
  v224 = a1[11];
  v6 = a1[13];
  v5 = a1[14];
  v8 = a1[15];
  v7 = a1[16];
  v9 = a1[17];
  v10 = a1[18];
  v11 = a1[19];
  v12 = a1[20];
  v14 = a1[21];
  v13 = a1[22];
  v15 = a1[23];
  v16 = a2[1];
  v233 = a2[2];
  v17 = a2[3];
  v229 = a2[4];
  v248 = a2[5];
  v226 = a2[6];
  v231 = a2[7];
  v222 = a2[8];
  v227 = a2[9];
  v220 = a2[10];
  v223 = a2[11];
  v219 = a2[12];
  v19 = a2[13];
  v18 = a2[14];
  v21 = a2[15];
  v20 = a2[16];
  v22 = a2[17];
  v23 = a2[18];
  v24 = a2[19];
  v25 = a2[20];
  v26 = a2[21];
  v27 = a2[22];
  v28 = a2[23];
  if (v3)
  {
    if (!v16)
    {
      return 0;
    }

    v225 = a1[6];
    if (*a1 != *a2 || v3 != v16)
    {
      v150 = a1[16];
      v157 = a1[13];
      v142 = a1[21];
      v143 = a2[20];
      v199 = a2[22];
      v209 = a2[21];
      v182 = a1[14];
      v190 = a1[20];
      v140 = a1[23];
      v141 = a2[23];
      v164 = a2[14];
      v29 = a1[22];
      v179 = a1[15];
      v30 = a1[18];
      v31 = a1[19];
      v32 = a2[19];
      v144 = a1[12];
      v33 = a2[18];
      v34 = a1[17];
      v35 = a2[17];
      v36 = a2[16];
      v37 = sub_1B80C981C();
      v20 = v36;
      v22 = v35;
      v9 = v34;
      v23 = v33;
      v4 = v144;
      v7 = v150;
      v24 = v32;
      v11 = v31;
      v10 = v30;
      v8 = v179;
      v5 = v182;
      v13 = v29;
      v6 = v157;
      v18 = v164;
      v15 = v140;
      v28 = v141;
      v12 = v190;
      v27 = v199;
      v14 = v142;
      v25 = v143;
      v26 = v209;
      if ((v37 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v225 = a1[6];
    if (v16)
    {
      return 0;
    }
  }

  if (v253)
  {
    if (!v17)
    {
      return 0;
    }

    if (v240 != v233 || v253 != v17)
    {
      v151 = v7;
      v254 = v13;
      v38 = v10;
      v200 = v27;
      v210 = v26;
      v39 = v11;
      v191 = v12;
      v40 = v24;
      v145 = v4;
      v41 = v15;
      v172 = v21;
      v42 = v14;
      v43 = v28;
      v241 = v23;
      v158 = v6;
      v165 = v18;
      v44 = v25;
      v45 = v9;
      v183 = v5;
      v46 = v22;
      v234 = v20;
      v47 = sub_1B80C981C();
      v20 = v234;
      v23 = v241;
      v22 = v46;
      v5 = v183;
      v9 = v45;
      v25 = v44;
      v6 = v158;
      v18 = v165;
      v28 = v43;
      v14 = v42;
      v21 = v172;
      v15 = v41;
      v4 = v145;
      v7 = v151;
      v24 = v40;
      v12 = v191;
      v27 = v200;
      v11 = v39;
      v26 = v210;
      v10 = v38;
      v13 = v254;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v250)
  {
    v48 = v225;
    if (!v248)
    {
      return 0;
    }

    if (v230 != v229 || v250 != v248)
    {
      v152 = v7;
      v255 = v13;
      v49 = v10;
      v201 = v27;
      v211 = v26;
      v50 = v11;
      v192 = v12;
      v51 = v24;
      v146 = v4;
      v52 = v15;
      v173 = v21;
      v53 = v14;
      v54 = v28;
      v242 = v23;
      v159 = v6;
      v166 = v18;
      v55 = v25;
      v56 = v9;
      v184 = v5;
      v57 = v22;
      v235 = v20;
      v58 = sub_1B80C981C();
      v48 = v225;
      v20 = v235;
      v23 = v242;
      v22 = v57;
      v5 = v184;
      v9 = v56;
      v25 = v55;
      v6 = v159;
      v18 = v166;
      v28 = v54;
      v14 = v53;
      v21 = v173;
      v15 = v52;
      v4 = v146;
      v7 = v152;
      v24 = v51;
      v12 = v192;
      v27 = v201;
      v11 = v50;
      v26 = v211;
      v10 = v49;
      v13 = v255;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else
  {
    v48 = v225;
    if (v248)
    {
      return 0;
    }
  }

  if (v232)
  {
    if (!v231)
    {
      return 0;
    }

    if (v48 != v226 || v232 != v231)
    {
      v153 = v7;
      v256 = v13;
      v59 = v10;
      v202 = v27;
      v212 = v26;
      v60 = v11;
      v193 = v12;
      v61 = v24;
      v147 = v4;
      v62 = v15;
      v174 = v21;
      v63 = v14;
      v64 = v28;
      v243 = v23;
      v160 = v6;
      v167 = v18;
      v65 = v25;
      v66 = v9;
      v185 = v5;
      v67 = v22;
      v236 = v20;
      v68 = sub_1B80C981C();
      v20 = v236;
      v23 = v243;
      v22 = v67;
      v5 = v185;
      v9 = v66;
      v25 = v65;
      v6 = v160;
      v18 = v167;
      v28 = v64;
      v14 = v63;
      v21 = v174;
      v15 = v62;
      v4 = v147;
      v7 = v153;
      v24 = v61;
      v12 = v193;
      v27 = v202;
      v11 = v60;
      v26 = v212;
      v10 = v59;
      v13 = v256;
      if ((v68 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v231)
  {
    return 0;
  }

  if (v228)
  {
    if (!v227)
    {
      return 0;
    }

    if (v221 != v222 || v228 != v227)
    {
      v154 = v7;
      v257 = v13;
      v69 = v10;
      v203 = v27;
      v213 = v26;
      v70 = v11;
      v194 = v12;
      v71 = v24;
      v148 = v4;
      v72 = v15;
      v175 = v21;
      v73 = v14;
      v74 = v28;
      v244 = v23;
      v161 = v6;
      v168 = v18;
      v75 = v25;
      v76 = v9;
      v186 = v5;
      v77 = v22;
      v237 = v20;
      v78 = sub_1B80C981C();
      v20 = v237;
      v23 = v244;
      v22 = v77;
      v5 = v186;
      v9 = v76;
      v25 = v75;
      v6 = v161;
      v18 = v168;
      v28 = v74;
      v14 = v73;
      v21 = v175;
      v15 = v72;
      v4 = v148;
      v7 = v154;
      v24 = v71;
      v12 = v194;
      v27 = v203;
      v11 = v70;
      v26 = v213;
      v10 = v69;
      v13 = v257;
      if ((v78 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v227)
  {
    return 0;
  }

  if (v224)
  {
    if (!v223)
    {
      return 0;
    }

    if (v218 != v220 || v224 != v223)
    {
      v155 = v7;
      v258 = v13;
      v79 = v10;
      v204 = v27;
      v214 = v26;
      v80 = v11;
      v195 = v12;
      v81 = v24;
      v149 = v4;
      v82 = v15;
      v176 = v21;
      v83 = v14;
      v84 = v28;
      v245 = v23;
      v162 = v6;
      v169 = v18;
      v85 = v25;
      v86 = v9;
      v187 = v5;
      v87 = v22;
      v238 = v20;
      v88 = sub_1B80C981C();
      v20 = v238;
      v23 = v245;
      v22 = v87;
      v5 = v187;
      v9 = v86;
      v25 = v85;
      v6 = v162;
      v18 = v169;
      v28 = v84;
      v14 = v83;
      v21 = v176;
      v15 = v82;
      v4 = v149;
      v7 = v155;
      v24 = v81;
      v12 = v195;
      v27 = v204;
      v11 = v80;
      v26 = v214;
      v10 = v79;
      v13 = v258;
      if ((v88 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v223)
  {
    return 0;
  }

  if (v4)
  {
    if (!v219)
    {
      return 0;
    }

    v89 = v4;
    v259 = v13;
    v90 = v10;
    v249 = v11;
    v196 = v12;
    v205 = v27;
    v91 = v24;
    v92 = v15;
    v177 = v21;
    v93 = v14;
    v94 = v28;
    v246 = v23;
    v163 = v6;
    v170 = v18;
    v95 = v25;
    v96 = v7;
    v188 = v5;
    v97 = v9;
    v251 = v22;
    v180 = v8;
    v98 = v20;
    v99 = sub_1B808ADA8(v89, v219);
    v20 = v98;
    v11 = v249;
    v22 = v251;
    v9 = v97;
    v8 = v180;
    v5 = v188;
    v7 = v96;
    v25 = v95;
    v6 = v163;
    v18 = v170;
    v23 = v246;
    v28 = v94;
    v14 = v93;
    v21 = v177;
    v15 = v92;
    v24 = v91;
    v12 = v196;
    v27 = v205;
    v10 = v90;
    v13 = v259;
    if ((v99 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v219)
  {
    return 0;
  }

  if (v6)
  {
    if (!v19)
    {
      return 0;
    }

    v100 = v6;
    v260 = v13;
    v101 = v10;
    v206 = v27;
    v215 = v26;
    v102 = v11;
    v197 = v12;
    v103 = v24;
    v104 = v15;
    v178 = v21;
    v105 = v14;
    v106 = v28;
    v247 = v23;
    v107 = v25;
    v171 = v18;
    v108 = v7;
    v189 = v5;
    v109 = v9;
    v252 = v22;
    v181 = v8;
    v110 = v20;
    v111 = sub_1B808ADA8(v100, v19);
    v20 = v110;
    v22 = v252;
    v13 = v260;
    v9 = v109;
    v8 = v181;
    v5 = v189;
    v7 = v108;
    v25 = v107;
    v23 = v247;
    v28 = v106;
    v14 = v105;
    v18 = v171;
    v21 = v178;
    v15 = v104;
    v24 = v103;
    v12 = v197;
    v27 = v206;
    v11 = v102;
    v26 = v215;
    v10 = v101;
    if ((v111 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v8)
  {
    if (!v21)
    {
      return 0;
    }

    if (v5 != v18 || v8 != v21)
    {
      v156 = v7;
      v261 = v13;
      v112 = v10;
      v207 = v27;
      v216 = v26;
      v113 = v11;
      v198 = v12;
      v114 = v24;
      v115 = v15;
      v116 = v14;
      v117 = v28;
      v118 = v23;
      v119 = v25;
      v120 = v9;
      v121 = v22;
      v239 = v20;
      v122 = sub_1B80C981C();
      v20 = v239;
      v22 = v121;
      v9 = v120;
      v7 = v156;
      v25 = v119;
      v23 = v118;
      v28 = v117;
      v14 = v116;
      v15 = v115;
      v24 = v114;
      v12 = v198;
      v27 = v207;
      v11 = v113;
      v26 = v216;
      v10 = v112;
      v13 = v261;
      if ((v122 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v21)
  {
    return 0;
  }

  if (v9)
  {
    if (!v22)
    {
      return 0;
    }

    if (v7 != v20 || v9 != v22)
    {
      v123 = v13;
      v124 = v10;
      v208 = v27;
      v217 = v26;
      v125 = v11;
      v126 = v12;
      v127 = v24;
      v128 = v15;
      v129 = v14;
      v130 = v28;
      v131 = v23;
      v132 = v25;
      v133 = sub_1B80C981C();
      v25 = v132;
      v23 = v131;
      v28 = v130;
      v14 = v129;
      v15 = v128;
      v24 = v127;
      v12 = v126;
      v11 = v125;
      v27 = v208;
      v26 = v217;
      v10 = v124;
      v13 = v123;
      if ((v133 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v22)
  {
    return 0;
  }

  v134 = v25;
  if (v11)
  {
    if (!v24)
    {
      return 0;
    }

    v135 = v14;
    v136 = v28;
    v137 = v15;
    v138 = v13;
    if ((v10 != v23 || v11 != v24) && (sub_1B80C981C() & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v135 = v14;
    v136 = v28;
    v137 = v15;
    v138 = v13;
    if (v24)
    {
      return 0;
    }
  }

  if (v135)
  {
    if (!v26 || (v12 != v134 || v135 != v26) && (sub_1B80C981C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v26)
  {
    return 0;
  }

  if (v137)
  {
    return v136 && (v138 == v27 && v137 == v136 || (sub_1B80C981C() & 1) != 0);
  }

  return !v136;
}

unint64_t sub_1B809B6E0()
{
  result = qword_1EBA67278;
  if (!qword_1EBA67278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67278);
  }

  return result;
}

unint64_t sub_1B809B738()
{
  result = qword_1EBA67288;
  if (!qword_1EBA67288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67288);
  }

  return result;
}

unint64_t sub_1B809B7B0()
{
  result = qword_1EBA67290;
  if (!qword_1EBA67290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67290);
  }

  return result;
}

unint64_t sub_1B809B808()
{
  result = qword_1EBA67298;
  if (!qword_1EBA67298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67298);
  }

  return result;
}

unint64_t sub_1B809B860()
{
  result = qword_1EBA672A0;
  if (!qword_1EBA672A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA672A0);
  }

  return result;
}

unint64_t sub_1B809B8B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B80C967C();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

unint64_t GroupID.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x46746C7561666564;
  }
}

uint64_t ClientOrigin.description.getter()
{
  v1 = 0x6567617373656D2ELL;
  if (*v0 != 1)
  {
    v1 = 0x726568746F2ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x41794D646E69662ELL;
  }
}

uint64_t sub_1B809B9E4(uint64_t a1)
{
  v2 = sub_1B7FC87B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B809BA20(uint64_t a1)
{
  v2 = sub_1B7FC87B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B809BA5C(uint64_t a1)
{
  v2 = sub_1B7FCF568();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B809BA98(uint64_t a1)
{
  v2 = sub_1B7FCF568();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B809BAD4(uint64_t a1)
{
  v2 = sub_1B809BF84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B809BB10(uint64_t a1)
{
  v2 = sub_1B809BF84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B809BB4C(uint64_t a1)
{
  v2 = sub_1B809BF30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B809BB88(uint64_t a1)
{
  v2 = sub_1B809BF30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClientOrigin.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672A8, &qword_1B80DB800);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672B0, &qword_1B80DB808);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672B8, &qword_1B80DB810);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672C0, &qword_1B80DB818);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FC87B0();
  sub_1B80C99DC();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1B809BF84();
      v9 = v21;
      sub_1B80C974C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1B809BF30();
      v9 = v24;
      sub_1B80C974C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1B7FCF568();
    sub_1B80C974C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1B809BF30()
{
  result = qword_1ED8DC478;
  if (!qword_1ED8DC478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC478);
  }

  return result;
}

unint64_t sub_1B809BF84()
{
  result = qword_1ED8DC368;
  if (!qword_1ED8DC368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC368);
  }

  return result;
}

uint64_t ClientOrigin.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t sub_1B809C064(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000010;
  v3 = *a1;
  v4 = 0x80000001B80CB3E0;
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001B80CB3E0;
  }

  else
  {
    v6 = 0x80000001B80CB400;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x46746C7561666564;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xEA0000000000464DLL;
  }

  if (*a2 == 1)
  {
    v2 = 0xD000000000000013;
  }

  else
  {
    v4 = 0x80000001B80CB400;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x46746C7561666564;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xEA0000000000464DLL;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1B80C981C();
  }

  return v11 & 1;
}

uint64_t sub_1B809C144()
{
  sub_1B80C993C();
  sub_1B80C911C();

  return sub_1B80C997C();
}

uint64_t sub_1B809C1F8(uint64_t a1)
{
  sub_1B80C911C();
}

void sub_1B809C298(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000464DLL;
  v4 = 0x80000001B80CB3E0;
  v5 = 0xD000000000000013;
  if (v2 != 1)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000001B80CB400;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x46746C7561666564;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t RequestOrigin.contextBundleApp.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RequestOrigin.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);

  sub_1B80C952C();

  v4 = 0xEC00000070704173;
  v5 = 0x6567617373656D2ELL;
  if (v1 != 1)
  {
    v5 = 0x726568746F2ELL;
    v4 = 0xE600000000000000;
  }

  if (v1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x41794D646E69662ELL;
  }

  if (v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEA00000000007070;
  }

  MEMORY[0x1B8CB7A40](v6, v7);

  MEMORY[0x1B8CB7A40](0x203A64697020, 0xE600000000000000);
  v8 = sub_1B80C97FC();
  MEMORY[0x1B8CB7A40](v8);

  MEMORY[0x1B8CB7A40](0x49656C646E756220, 0xEB00000000203A44);
  if (v3)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0;
  }

  if (!v3)
  {
    v3 = 0xE000000000000000;
  }

  MEMORY[0x1B8CB7A40](v9, v3);

  MEMORY[0x1B8CB7A40](62, 0xE100000000000000);
  return 0x3A6E696769726F3CLL;
}

uint64_t sub_1B809C530@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B809D210(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B809C558(uint64_t a1)
{
  v2 = sub_1B7FCFAAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B809C594(uint64_t a1)
{
  v2 = sub_1B7FCFAAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RequestOrigin.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA672F0, &qword_1B80DB848);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[2] = *(v1 + 2);
  v11[3] = v9;
  v11[1] = *(v1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B7FCFAAC();
  sub_1B80C99DC();
  v15 = v8;
  v14 = 0;
  sub_1B808A22C();
  sub_1B80C97DC();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v13 = 1;
  sub_1B80C97BC();
  v12 = 2;
  sub_1B80C975C();
  return (*(v5 + 8))(v7, v4);
}

uint64_t RequestOrigin.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 3);
  MEMORY[0x1B8CB8250](*v1);
  MEMORY[0x1B8CB8250](v2);
  if (!v3)
  {
    return sub_1B80C995C();
  }

  sub_1B80C995C();

  return sub_1B80C911C();
}

uint64_t RequestOrigin.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 3);
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  MEMORY[0x1B8CB8250](v2);
  sub_1B80C995C();
  if (v3)
  {
    sub_1B80C911C();
  }

  return sub_1B80C997C();
}

uint64_t sub_1B809C8DC()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 3);
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  MEMORY[0x1B8CB8250](v2);
  sub_1B80C995C();
  if (v3)
  {
    sub_1B80C911C();
  }

  return sub_1B80C997C();
}

uint64_t sub_1B809C974(uint64_t a1)
{
  v2 = *(v1 + 1);
  v3 = *(v1 + 3);
  MEMORY[0x1B8CB8250](*v1);
  MEMORY[0x1B8CB8250](v2);
  if (!v3)
  {
    return sub_1B80C995C();
  }

  sub_1B80C995C();

  return sub_1B80C911C();
}

uint64_t sub_1B809C9F8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 1);
  v4 = *(v1 + 3);
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v2);
  MEMORY[0x1B8CB8250](v3);
  sub_1B80C995C();
  if (v4)
  {
    sub_1B80C911C();
  }

  return sub_1B80C997C();
}

FindMyLocate::RequestOrigin __swiftcall RequestOrigin.init(_:fakeBundleIdBasedOnOrigin:)(FindMyLocate::ClientOrigin _, Swift::Bool fakeBundleIdBasedOnOrigin)
{
  v4 = v2;
  v5 = *_;
  v6 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v7 = [v6 processIdentifier];

  if (!fakeBundleIdBasedOnOrigin)
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    v13 = 0xD000000000000010;
    v12 = 0x80000001B80CE150;
    goto LABEL_9;
  }

  if (v5 == 1)
  {
    v12 = 0x80000001B80CB350;
    v13 = 0xD000000000000013;
  }

  else
  {
LABEL_5:
    v14 = [objc_opt_self() mainBundle];
    v15 = [v14 bundleIdentifier];

    if (v15)
    {
      v13 = sub_1B80C90BC();
      v12 = v16;
    }

    else
    {
      v13 = 0;
      v12 = 0;
    }
  }

LABEL_9:
  *v4 = v5;
  *(v4 + 8) = v7;
  *(v4 + 16) = v13;
  *(v4 + 24) = v12;
  result.clientBundleIdentifier.value._object = v11;
  result.clientBundleIdentifier.value._countAndFlagsBits = v10;
  result.clientPid = v9;
  result.origin = v8;
  return result;
}

uint64_t _s12FindMyLocate13RequestOriginV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v5 = a1[3];
  v6 = a2[3];
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = a1[2] == a2[2] && v5 == v6;
    if (!v7 && (sub_1B80C981C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  return 1;
}

unint64_t sub_1B809CC38()
{
  result = qword_1EBA67300;
  if (!qword_1EBA67300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67300);
  }

  return result;
}

unint64_t sub_1B809CC90()
{
  result = qword_1ED8DC400;
  if (!qword_1ED8DC400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DC400);
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1B809CCF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_1B809CD4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

unint64_t sub_1B809CDF4()
{
  result = qword_1EBA67308;
  if (!qword_1EBA67308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67308);
  }

  return result;
}

unint64_t sub_1B809CE4C()
{
  result = qword_1EBA67310;
  if (!qword_1EBA67310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67310);
  }

  return result;
}

unint64_t sub_1B809CEA4()
{
  result = qword_1ED8DCA20;
  if (!qword_1ED8DCA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA20);
  }

  return result;
}

unint64_t sub_1B809CEFC()
{
  result = qword_1ED8DCA28;
  if (!qword_1ED8DCA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA28);
  }

  return result;
}

unint64_t sub_1B809CF54()
{
  result = qword_1ED8DCA70;
  if (!qword_1ED8DCA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA70);
  }

  return result;
}

unint64_t sub_1B809CFAC()
{
  result = qword_1ED8DCA78[0];
  if (!qword_1ED8DCA78[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ED8DCA78);
  }

  return result;
}

unint64_t sub_1B809D004()
{
  result = qword_1ED8DCA38;
  if (!qword_1ED8DCA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA38);
  }

  return result;
}

unint64_t sub_1B809D05C()
{
  result = qword_1ED8DCA40;
  if (!qword_1ED8DCA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA40);
  }

  return result;
}

unint64_t sub_1B809D0B4()
{
  result = qword_1ED8DCA48;
  if (!qword_1ED8DCA48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA48);
  }

  return result;
}

unint64_t sub_1B809D10C()
{
  result = qword_1ED8DCA50;
  if (!qword_1ED8DCA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA50);
  }

  return result;
}

unint64_t sub_1B809D164()
{
  result = qword_1ED8DCA58;
  if (!qword_1ED8DCA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA58);
  }

  return result;
}

unint64_t sub_1B809D1BC()
{
  result = qword_1ED8DCA60;
  if (!qword_1ED8DCA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8DCA60);
  }

  return result;
}

uint64_t sub_1B809D210(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E696769726FLL && a2 == 0xE600000000000000;
  if (v4 || (sub_1B80C981C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6950746E65696C63 && a2 == 0xE900000000000064 || (sub_1B80C981C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001B80CE170 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1B80C981C();

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

uint64_t sub_1B809D334(uint64_t a1, unsigned __int8 a2)
{
  sub_1B80C911C();
}

FindMyLocate::SecureLocationsStewie::ServiceState_optional __swiftcall SecureLocationsStewie.ServiceState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 10;
  if (rawValue < 0xA)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SecureLocationsStewie.PublishResult.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v6 - v2;
  v6[0] = 0;
  v6[1] = 0xE000000000000000;
  sub_1B80C952C();
  MEMORY[0x1B8CB7A40](0x6C6275507473616CLL, 0xEF203A6465687369);
  sub_1B7FD6818(v0, v3);
  v4 = sub_1B80C90EC();
  MEMORY[0x1B8CB7A40](v4);

  MEMORY[0x1B8CB7A40](0xD000000000000016, 0x80000001B80CCFD0);
  type metadata accessor for SecureLocationsStewie.PublishResult(0);
  sub_1B80C938C();
  return v6[0];
}

uint64_t type metadata accessor for SecureLocationsStewie.PublishResult(uint64_t a1)
{
  result = qword_1EBA67348;
  if (!qword_1EBA67348)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  sub_1B805DC34(a1, a2);
  result = type metadata accessor for SecureLocationsStewie.PublishResult(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1B7FD6818(a1, a3);
  sub_1B80C8DDC();
  v7 = v6;
  v8 = sub_1B80C8E2C();
  (*(*(v8 - 8) + 8))(a2, v8);
  sub_1B7FB86D4(a1, &unk_1EBA65FD0, &unk_1B80D1920);
  result = type metadata accessor for SecureLocationsStewie.PublishResult(0);
  *(a3 + *(result + 20)) = v7;
  return result;
}

uint64_t sub_1B809D76C()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6C6275507473616CLL;
  }
}

uint64_t sub_1B809D7B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6C6275507473616CLL && a2 == 0xED00006465687369;
  if (v6 || (sub_1B80C981C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001B80CE190 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1B80C981C();

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

uint64_t sub_1B809D8A4(uint64_t a1)
{
  v2 = sub_1B809E40C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B809D8E0(uint64_t a1)
{
  v2 = sub_1B809E40C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SecureLocationsStewie.PublishResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67320, &qword_1B80DBFC8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B809E40C();
  sub_1B80C99DC();
  v8[15] = 0;
  sub_1B80C8E2C();
  sub_1B7FBAD64(&qword_1ED8DC390, MEMORY[0x1E6969538]);
  sub_1B80C977C();
  if (!v1)
  {
    type metadata accessor for SecureLocationsStewie.PublishResult(0);
    v8[14] = 1;
    sub_1B80C97AC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SecureLocationsStewie.PublishResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v20 = &v18 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67330, &qword_1B80DBFD0);
  v19 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for SecureLocationsStewie.PublishResult(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B809E40C();
  sub_1B80C99BC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v11;
  v13 = v19;
  sub_1B80C8E2C();
  v22 = 0;
  sub_1B7FBAD64(&qword_1ED8DBBD8, MEMORY[0x1E6969558]);
  v14 = v20;
  sub_1B80C96CC();
  sub_1B805DC34(v14, v12);
  v21 = 1;
  sub_1B80C96FC();
  v16 = v15;
  (*(v13 + 8))(v8, v6);
  *(v12 + *(v9 + 20)) = v16;
  sub_1B809E460(v12, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_1B804B954(v12);
}

FindMyLocate::SecureLocationsStewie::Error_optional __swiftcall SecureLocationsStewie.Error.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1B80C967C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t SecureLocationsStewie.Error.rawValue.getter()
{
  v1 = *v0;
  if (v1 <= 3)
  {
    v6 = 0x636972656E6567;
    v7 = 0x4C64696C61766E69;
    if (v1 != 2)
    {
      v7 = 0x64656C6261736964;
    }

    if (*v0)
    {
      v6 = 0x656C74746F726874;
    }

    if (*v0 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v2 = 0x7373654D646E6573;
    v3 = 0xD000000000000012;
    if (v1 != 7)
    {
      v3 = 0xD000000000000014;
    }

    if (v1 != 6)
    {
      v2 = v3;
    }

    v4 = 0x696C616974696E69;
    if (v1 != 4)
    {
      v4 = 0x7550746F6E6E6163;
    }

    if (*v0 <= 5u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B809E04C()
{
  v1 = *v0;
  sub_1B80C993C();
  sub_1B809D334(v3, v1);
  return sub_1B80C997C();
}

uint64_t sub_1B809E09C(uint64_t a1)
{
  v2 = *v1;
  sub_1B80C993C();
  sub_1B809D334(v4, v2);
  return sub_1B80C997C();
}

uint64_t sub_1B809E0EC@<X0>(uint64_t *a1@<X8>)
{
  result = SecureLocationsStewie.Error.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL _s12FindMyLocate21SecureLocationsStewieO13PublishResultV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B80C8E2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D80, &unk_1B80DC400);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1B7FD6818(a1, &v21 - v13);
  sub_1B7FD6818(a2, &v14[v15]);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1B7FD6818(v14, v10);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      sub_1B7FBAD64(&qword_1EBA65D90, MEMORY[0x1E6969550]);
      v18 = sub_1B80C908C();
      v19 = *(v5 + 8);
      v19(v7, v4);
      v19(v10, v4);
      sub_1B7FB86D4(v14, &unk_1EBA65FD0, &unk_1B80D1920);
      if (v18)
      {
        goto LABEL_9;
      }

      return 0;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1B7FB86D4(v14, &qword_1EBA65D80, &unk_1B80DC400);
    return 0;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1B7FB86D4(v14, &unk_1EBA65FD0, &unk_1B80D1920);
LABEL_9:
  v20 = type metadata accessor for SecureLocationsStewie.PublishResult(0);
  return *(a1 + *(v20 + 20)) == *(a2 + *(v20 + 20));
}

unint64_t sub_1B809E40C()
{
  result = qword_1EBA67328;
  if (!qword_1EBA67328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67328);
  }

  return result;
}

uint64_t sub_1B809E460(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsStewie.PublishResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B809E4C8()
{
  result = qword_1EBA67338;
  if (!qword_1EBA67338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67338);
  }

  return result;
}

unint64_t sub_1B809E520()
{
  result = qword_1EBA67340;
  if (!qword_1EBA67340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67340);
  }

  return result;
}

void sub_1B809E5AC(uint64_t a1)
{
  sub_1B7FB8A1C(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for SecureLocationsStewie.Error(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SecureLocationsStewie.Error(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B809E774()
{
  result = qword_1EBA67358;
  if (!qword_1EBA67358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67358);
  }

  return result;
}

unint64_t sub_1B809E7CC()
{
  result = qword_1EBA67360;
  if (!qword_1EBA67360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67360);
  }

  return result;
}

unint64_t sub_1B809E824()
{
  result = qword_1EBA67368;
  if (!qword_1EBA67368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67368);
  }

  return result;
}

unint64_t sub_1B809E878()
{
  result = qword_1EBA67370;
  if (!qword_1EBA67370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67370);
  }

  return result;
}

uint64_t LocationShifter.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtC12FindMyLocate15LocationShifter_logger;
  if (qword_1EBA65AB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  v3 = __swift_project_value_buffer(v2, qword_1EBA7ACD8);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = [objc_allocWithZone(MEMORY[0x1E69A1E80]) init];
  *(v0 + OBJC_IVAR____TtC12FindMyLocate15LocationShifter_shifter) = v4;
  return v0;
}

uint64_t LocationShifter.LocationShifterError.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t LocationShifter.init()()
{
  v1 = OBJC_IVAR____TtC12FindMyLocate15LocationShifter_logger;
  if (qword_1EBA65AB0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  v3 = __swift_project_value_buffer(v2, qword_1EBA7ACD8);
  (*(*(v2 - 8) + 16))(v0 + v1, v3, v2);
  v4 = [objc_allocWithZone(MEMORY[0x1E69A1E80]) init];
  *(v0 + OBJC_IVAR____TtC12FindMyLocate15LocationShifter_shifter) = v4;
  return v0;
}

uint64_t sub_1B809EB08(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = type metadata accessor for Location(0);
  v3[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B809EBA0, 0, 0);
}

uint64_t sub_1B809EBA0()
{
  v22 = v0;
  v1 = v0[5];
  v2 = v0[3];
  v3 = objc_opt_self();
  v4 = v2 + OBJC_IVAR____TtC12FindMyLocate23LocationShiftingRequest_location;
  v5 = [v3 isLocationShiftRequiredForCoordinate_];
  v7 = v0[3];
  v6 = v0[4];
  if (v5)
  {
    v8 = swift_task_alloc();
    v0[7] = v8;
    *(v8 + 16) = v6;
    *(v8 + 24) = v7;
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = sub_1B809EE30;
    v11 = v0[5];
    v10 = v0[6];

    return MEMORY[0x1EEE6DE38](v10, 0, 0, 0x6572287466696873, 0xEF293A7473657571, sub_1B809F51C, v8, v11);
  }

  else
  {

    v12 = sub_1B80C8FEC();
    v13 = sub_1B80C93EC();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 141558275;
      *(v14 + 4) = 1752392040;
      *(v14 + 12) = 2081;
      v16 = Location.description.getter();
      v18 = sub_1B7FB84FC(v16, v17, &v21);

      *(v14 + 14) = v18;
      _os_log_impl(&dword_1B7FB5000, v12, v13, "LocationShifter: shifting not required for location %{private,mask.hash}s", v14, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v15);
      MEMORY[0x1B8CB8970](v15, -1, -1);
      MEMORY[0x1B8CB8970](v14, -1, -1);
    }

    sub_1B7FD7C58(v4, v0[2]);

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1B809EE30()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B809EFBC;
  }

  else
  {

    v2 = sub_1B809EF4C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B809EF4C()
{
  sub_1B8083A34(v0[6], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B809EFBC()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_1B809F028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67398, &qword_1B80DC528);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  (*(v6 + 16))(&v12 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  sub_1B7FD7198(a3, sub_1B809F7D4, v10);

  return result;
}

uint64_t sub_1B809F178(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v7 = type metadata accessor for Location(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - v12;
  if (a2)
  {
    v19 = a2;
    v14 = a2;
  }

  else
  {
    sub_1B809F860(a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) != 1)
    {
      sub_1B8083A34(v6, v13);
      sub_1B7FD7C58(v13, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67398, &qword_1B80DC528);
      sub_1B80C928C();
      return sub_1B7FD7CBC(v13);
    }

    sub_1B7FD7B80(v6);
    sub_1B809F8D0();
    v15 = swift_allocError();
    *v16 = 2;
    v19 = v15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67398, &qword_1B80DC528);
  return sub_1B80C927C();
}

uint64_t LocationShifter.deinit()
{
  v1 = OBJC_IVAR____TtC12FindMyLocate15LocationShifter_logger;
  v2 = sub_1B80C900C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t LocationShifter.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12FindMyLocate15LocationShifter_logger;
  v2 = sub_1B80C900C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1B809F498()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1EBA7ACD8);
  __swift_project_value_buffer(v0, qword_1EBA7ACD8);
  return sub_1B80C8FFC();
}

unint64_t sub_1B809F528()
{
  result = qword_1EBA67380;
  if (!qword_1EBA67380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67380);
  }

  return result;
}

uint64_t type metadata accessor for LocationShifter(uint64_t a1)
{
  result = qword_1EBA67388;
  if (!qword_1EBA67388)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B809F5D0(uint64_t a1)
{
  result = sub_1B80C900C();
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

uint64_t dispatch thunk of LocationShifter.shift(request:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 104) + **(*v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1B7FBA3EC;

  return v8(a1, a2);
}

uint64_t sub_1B809F7D4(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67398, &qword_1B80DC528);

  return sub_1B809F178(a1, a2);
}

uint64_t sub_1B809F860(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65D60, &unk_1B80DC530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1B809F8D0()
{
  result = qword_1EBA673A0;
  if (!qword_1EBA673A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA673A0);
  }

  return result;
}

uint64_t sub_1B809F924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B7FB8448(a3, v25 - v10, &unk_1EBA66000, &unk_1B80D2630);
  v12 = sub_1B80C92CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B7FB86D4(v11, &unk_1EBA66000, &unk_1B80D2630);
  }

  else
  {
    sub_1B80C92BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B80C926C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B80C910C() + 32;
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

uint64_t ReverseGeocoder.__allocating_init(preferredLocale:)(uint64_t a1)
{
  v2 = swift_allocObject();
  ReverseGeocoder.init(preferredLocale:)(a1);
  return v2;
}

double static ReverseGeocoder.shared.getter()
{
  if (qword_1ED8DDA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();

  return result;
}

double static ReverseGeocoder.shared.setter(uint64_t a1)
{
  if (qword_1ED8DDA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1ED8DDA80 = a1;

  return result;
}

uint64_t (*static ReverseGeocoder.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1ED8DDA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

double sub_1B809FDA4@<D0>(void *a1@<X8>)
{
  if (qword_1ED8DDA78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1ED8DDA80;

  return result;
}

double sub_1B809FE24(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1ED8DDA78;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1ED8DDA80 = v1;

  return result;
}

uint64_t ReverseGeocoder.ReverseGeocodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

uint64_t ReverseGeocoder.deinit()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v10 - v2;
  v4 = *(v0 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_workItemQueue);
  v5 = sub_1B80C92CC();
  (*(*(v5 - 8) + 56))(v3, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v4;
  swift_retain_n();
  sub_1B809F924(0, 0, v3, &unk_1B80DC548, v6);

  sub_1B7FB86D4(v3, &unk_1EBA66000, &unk_1B80D2630);
  v7 = OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_startDate;
  v8 = sub_1B80C8E2C();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);

  sub_1B7FB86D4(v0 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_locale, &qword_1EBA65E00, &qword_1B80D2160);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ReverseGeocoder.__deallocating_deinit()
{
  ReverseGeocoder.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1B80A0144(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a4;
  *(v6 + 96) = a3;
  *(v6 + 16) = a1;
  *(v6 + 56) = type metadata accessor for ReverseGeocodingRequest(0);
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80A01E4, v5, 0);
}

uint64_t sub_1B80A01E4()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Location(0);
  v3 = *(v1 + v2[8]);
  v4 = v3 >= 200.0 || v3 < 0.0;
  if (*(v1 + v2[15]) != 2)
  {
    if ((*(v0 + 96) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = *(v1 + v2[16]);
  if (v5 == 1)
  {
    if ((*(v0 + 96) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = 1;
    goto LABEL_10;
  }

  v15 = *(v0 + 96) ^ 1;
  if (v5 != 2)
  {
    v15 = 0;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v10 = *(v0 + 32);
  sub_1B80A1B24(v1, v6 + v7[5], type metadata accessor for Location);
  sub_1B7FB8448(v8 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_locale, v6 + v7[6], &qword_1EBA65E00, &qword_1B80D2160);
  *v6 = v10;
  v6[1] = v9;
  *(v6 + v7[7]) = v4;
  v11 = sub_1B7FDFE8C();

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *(v12 + 16) = v8;
  *(v12 + 24) = v6;
  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = sub_1B80A03D4;
  v14 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v14, v8, v11, 0xD000000000000011, 0x80000001B80CCB50, sub_1B8032DB4, v12, &type metadata for Address);
}

uint64_t sub_1B80A03D4()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_1B80A056C;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1B80A04FC;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B80A04FC()
{
  sub_1B80A155C(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B80A056C()
{
  v1 = *(v0 + 64);

  sub_1B80A155C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B80A05E0(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  *(v5 + 24) = a3;
  *(v5 + 32) = v4;
  *(v5 + 96) = a4;
  *(v5 + 16) = a1;
  *(v5 + 40) = type metadata accessor for ReverseGeocodingRequest(0);
  v7 = swift_task_alloc();
  v8 = *a2;
  v9 = a2[1];
  *(v5 + 48) = v7;
  *(v5 + 56) = v8;
  *(v5 + 64) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1B80A0688, v4, 0);
}

uint64_t sub_1B80A0688()
{
  v1 = *(v0 + 24);
  v2 = type metadata accessor for Location(0);
  v3 = *(v1 + v2[8]);
  v4 = v3 >= 200.0 || v3 < 0.0;
  if (*(v1 + v2[15]) != 2)
  {
    if ((*(v0 + 96) & 1) == 0)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v5 = *(v1 + v2[16]);
  if (v5 == 1)
  {
    if ((*(v0 + 96) & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v4 = 1;
    goto LABEL_10;
  }

  v15 = *(v0 + 96) ^ 1;
  if (v5 != 2)
  {
    v15 = 0;
  }

  if ((v15 & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_10:
  v7 = *(v0 + 56);
  v6 = *(v0 + 64);
  v9 = *(v0 + 40);
  v8 = *(v0 + 48);
  v10 = *(v0 + 32);
  sub_1B80A1B24(v1, v8 + v9[5], type metadata accessor for Location);
  sub_1B7FB8448(v10 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_locale, v8 + v9[6], &qword_1EBA65E00, &qword_1B80D2160);
  *v8 = v7;
  v8[1] = v6;
  *(v8 + v9[7]) = v4;
  v11 = sub_1B7FDFE8C();

  v12 = swift_task_alloc();
  *(v0 + 72) = v12;
  *(v12 + 16) = v10;
  *(v12 + 24) = v8;
  v13 = swift_task_alloc();
  *(v0 + 80) = v13;
  *v13 = v0;
  v13[1] = sub_1B80A0878;
  v14 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v14, v10, v11, 0xD000000000000011, 0x80000001B80CCB50, sub_1B80A1D38, v12, &type metadata for Address);
}

uint64_t sub_1B80A0878()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1B80A0A10;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1B80A09A0;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B80A09A0()
{
  sub_1B80A155C(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B80A0A10()
{
  v1 = *(v0 + 48);

  sub_1B80A155C(v1);

  v2 = *(v0 + 8);

  return v2();
}

double sub_1B80A0A88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v19 = a1;
  v5 = sub_1B80C8E9C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - v8;
  v10 = type metadata accessor for ReverseGeocodingRequest(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1B80C8A0C();
  sub_1B80A1B24(a3, v13, type metadata accessor for ReverseGeocodingRequest);
  (*(v7 + 16))(v9, v19, v6);
  v14 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v15 = (v12 + *(v7 + 80) + v14) & ~*(v7 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = a2;
  sub_1B80A1B8C(v13, v16 + v14);
  (*(v7 + 32))(v16 + v15, v9, v6);

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C89EC();
  sub_1B80C8A3C();

  return result;
}

uint64_t sub_1B80A0D28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[141] = a3;
  v3[140] = a2;
  v3[139] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A0D54, a1, 0);
}

uint64_t sub_1B80A0D54()
{
  sub_1B7FDE4FC(*(v0 + 1120), (v0 + 16));

  return MEMORY[0x1EEE6DFA0](sub_1B80A0DC4, 0, 0);
}

uint64_t sub_1B80A0DC4()
{
  if (sub_1B7FE01A4((v0 + 2)) == 1)
  {
    v1 = swift_task_alloc();
    v0[142] = v1;
    *v1 = v0;
    v1[1] = sub_1B80A0ED8;
    v2 = v0[140];

    return sub_1B7FDC8F4((v0 + 36), v2);
  }

  else
  {
    memcpy(v0 + 104, v0 + 2, 0x110uLL);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
    sub_1B80C928C();
    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1B80A0ED8()
{
  *(*v1 + 1144) = v0;

  if (v0)
  {
    v2 = sub_1B80A107C;
  }

  else
  {
    v2 = sub_1B80A0FEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80A0FEC()
{
  memcpy(v0 + 70, v0 + 36, 0x110uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
  sub_1B80C928C();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B80A107C()
{
  v0[138] = v0[143];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0);
  sub_1B80C927C();
  v1 = v0[1];

  return v1();
}

uint64_t sub_1B80A1104(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v4[3] = a3;
  v4[4] = v3;
  v4[2] = a1;
  v4[5] = type metadata accessor for ReverseGeocodingRequest(0);
  v6 = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  v4[6] = v6;
  v4[7] = v7;
  v4[8] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1B80A11A8, v3, 0);
}

uint64_t sub_1B80A11A8()
{
  v1 = v0[3];
  v2 = type metadata accessor for Location(0);
  v3 = *(v1 + v2[8]);
  v4 = v3 >= 200.0 || v3 < 0.0;
  if (*(v1 + v2[15]) == 2 && *(v1 + v2[16]) - 1 >= 2)
  {
    v4 = 1;
  }

  v6 = v0[7];
  v5 = v0[8];
  v8 = v0[5];
  v7 = v0[6];
  v9 = v0[4];
  sub_1B80A1B24(v1, v7 + v8[5], type metadata accessor for Location);
  sub_1B7FB8448(v9 + OBJC_IVAR____TtC12FindMyLocate15ReverseGeocoder_locale, v7 + v8[6], &qword_1EBA65E00, &qword_1B80D2160);
  *v7 = v6;
  v7[1] = v5;
  *(v7 + v8[7]) = v4;
  v10 = sub_1B7FDFE8C();

  v11 = swift_task_alloc();
  v0[9] = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = v7;
  v12 = swift_task_alloc();
  v0[10] = v12;
  *v12 = v0;
  v12[1] = sub_1B80A1374;
  v13 = v0[2];

  return MEMORY[0x1EEE6DE38](v13, v9, v10, 0xD000000000000011, 0x80000001B80CCB50, sub_1B80A1D38, v11, &type metadata for Address);
}

uint64_t sub_1B80A1374()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1B80A1D34;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1B80A1D30;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1B80A14A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FBA3EC;

  return sub_1B80133D8();
}

uint64_t sub_1B80A155C(uint64_t a1)
{
  v2 = type metadata accessor for ReverseGeocodingRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B80A15BC()
{
  result = qword_1EBA673A8;
  if (!qword_1EBA673A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA673A8);
  }

  return result;
}

uint64_t dispatch thunk of ReverseGeocoder.reverseGeocode(location:onlyNeedCoarseAddress:rateLimitKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 256) + **(*v5 + 256));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1B7FC253C;

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ReverseGeocoder.reverseGeocode(for:location:onlyNeedCoarseAddress:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 264) + **(*v4 + 264));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1B7FBA3EC;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ReverseGeocoder.reverseGeocode(for:location:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 288) + **(*v3 + 288));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1B7FC253C;

  return v10(a1, a2, a3);
}

uint64_t sub_1B80A1A88(uint64_t a1)
{
  result = type metadata accessor for Location(319);
  if (v2 <= 0x3F)
  {
    result = sub_1B80C8E2C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1B80A1B24(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B80A1B8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReverseGeocodingRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B80A1BF0()
{
  v2 = *(type metadata accessor for ReverseGeocodingRequest(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65E28, &qword_1B80DC6F0) - 8);
  v6 = (v4 + *(v5 + 80)) & ~*(v5 + 80);
  v7 = *(v0 + 16);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_1B7FC253C;

  return sub_1B80A0D28(v7, v0 + v3, v0 + v6);
}

uint64_t sub_1B80A1D3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B80A44EC(a3, v25 - v10);
  v12 = sub_1B80C92CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B7FB86D4(v11, &unk_1EBA66000, &unk_1B80D2630);
  }

  else
  {
    sub_1B80C92BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B80C926C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B80C910C() + 32;
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

      sub_1B7FB86D4(a3, &unk_1EBA66000, &unk_1B80D2630);

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

  sub_1B7FB86D4(a3, &unk_1EBA66000, &unk_1B80D2630);
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

uint64_t sub_1B80A202C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1B80A44EC(a3, v25 - v10);
  v12 = sub_1B80C92CC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1B7FB86D4(v11, &unk_1EBA66000, &unk_1B80D2630);
  }

  else
  {
    sub_1B80C92BC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1B80C926C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1B80C910C() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67408, &qword_1B80DC990);
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

      sub_1B7FB86D4(a3, &unk_1EBA66000, &unk_1B80D2630);

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

  sub_1B7FB86D4(a3, &unk_1EBA66000, &unk_1B80D2630);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA67408, &qword_1B80DC990);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t static Session.sharedSession(_:)(void *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  if (qword_1ED8DD428 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1ED8DD430);
  sub_1B7FBCB98(&qword_1ED8DD438, v1, v2, v3, v4, &v6);
  os_unfair_lock_unlock(&dword_1ED8DD430);
  return v6;
}

uint64_t Session.__allocating_init(_:)(uint64_t a1)
{
  v2 = swift_allocObject();
  Session.init(_:)(a1);
  return v2;
}

{
  swift_allocObject();
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1B80A24D0;

  return Session.init(_:)(a1);
}

uint64_t sub_1B80A24D0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_1B80A2604()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A2700, 0, 0);
}

uint64_t sub_1B80A2700()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A279C;

  return sub_1B7FB9DC4(0, 0);
}

uint64_t sub_1B80A279C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A2898, 0, 0);
}

uint64_t sub_1B80A2898()
{
  v1 = swift_task_alloc();
  *(v0 + 104) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A2934;

  return sub_1B7FBA170(0, 0);
}

uint64_t sub_1B80A2934()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 112) = v3;
  *v3 = v2;
  v3[1] = sub_1B80A2A74;

  return sub_1B7FBA2C8();
}

uint64_t sub_1B80A2A74()
{
  v1 = *v0;
  v5 = *v0;

  v2 = *(v5 + 8);
  v3 = *(v1 + 16);

  return v2(v3);
}

os_unfair_lock_s *Session.deinit()
{
  v1 = v0;
  os_unfair_lock_lock((v0 + 64));
  v3 = v0 + 72;
  v2 = *(v0 + 72);

  os_unfair_lock_unlock(v1 + 16);
  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA65FC0, &unk_1B80D2430);
    sub_1B80C935C();
  }

  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v4 = sub_1B80C900C();
  __swift_project_value_buffer(v4, qword_1ED8DDE50);
  v5 = sub_1B80C8FEC();
  v6 = sub_1B80C941C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B7FB5000, v5, v6, "deinit", v7, 2u);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  sub_1B7FB86D4(&v1[6], &qword_1EBA673C0, &qword_1B80DC758);

  sub_1B7FB86D4(v3, &qword_1EBA673C8, &qword_1B80DC760);

  return v1;
}

uint64_t Session.__deallocating_deinit()
{
  Session.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1B80A2D58()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A2E54, 0, 0);
}

uint64_t sub_1B80A2E54()
{
  v27 = v0;
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    goto LABEL_2;
  }

  v5 = v0[20];
  (*(v3 + 32))(v0[9], v1, v2);
  sub_1B80C937C();
  v0[22] = v5;
  if (v5)
  {
    v7 = v0[15];
    v6 = v0[16];
    v8 = v0[14];
    (*(v0[7] + 8))(v0[9], v0[6]);
    (*(v7 + 8))(v6, v8);

    v4 = v0[1];
    goto LABEL_5;
  }

  Strong = swift_weakLoadStrong();
  v0[23] = Strong;
  if (!Strong)
  {
    (*(v0[7] + 8))(v0[9], v0[6]);
LABEL_2:
    (*(v0[15] + 8))(v0[16], v0[14]);

    v4 = v0[1];
LABEL_5:

    return v4();
  }

  (*(v0[7] + 16))(v0[8], v0[9], v0[6]);
  v11 = sub_1B80C8FEC();
  v12 = sub_1B80C93EC();
  v13 = os_log_type_enabled(v11, v12);
  v15 = v0[7];
  v14 = v0[8];
  v16 = v0[6];
  if (v13)
  {
    v25 = v12;
    v17 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v26 = v24;
    *v17 = 136315138;
    sub_1B80A4494();
    v18 = sub_1B80C97FC();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v14, v16);
    v22 = sub_1B7FB84FC(v18, v20, &v26);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_1B7FB5000, v11, v25, "Process daemon ready notification: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v24);
    MEMORY[0x1B8CB8970](v24, -1, -1);
    MEMORY[0x1B8CB8970](v17, -1, -1);
  }

  else
  {

    v21 = *(v15 + 8);
    v21(v14, v16);
  }

  v0[24] = v21;
  v23 = swift_task_alloc();
  v0[25] = v23;
  *v23 = v0;
  v23[1] = sub_1B80A31E4;

  return sub_1B80A33C0();
}

uint64_t sub_1B80A31E4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A32E0, 0, 0);
}

uint64_t sub_1B80A32E0()
{
  v1 = v0[24];
  v2 = v0[9];
  v3 = v0[6];

  v1(v2, v3);
  v0[20] = v0[22];
  v4 = swift_task_alloc();
  v0[21] = v4;
  *v4 = v0;
  v4[1] = sub_1B80A2D58;
  v5 = v0[14];
  v6 = v0[10];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1B80A33E0()
{
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  *(v0 + 56) = __swift_project_value_buffer(v1, qword_1ED8DDE50);
  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "Received daemon ready notification, re-establishing connection...", v4, 2u);
    MEMORY[0x1B8CB8970](v4, -1, -1);
  }

  v5 = *(v0 + 48);

  v6 = *(v5 + 104);
  v7 = *(v5 + 88);
  *(v0 + 16) = *(v5 + 80);
  *(v0 + 24) = v7;
  *(v0 + 40) = v6;

  v8 = swift_task_alloc();
  *(v0 + 64) = v8;
  *v8 = v0;
  v8[1] = sub_1B80A355C;

  return sub_1B801D928(v0 + 16);
}

uint64_t sub_1B80A355C()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1B80A3A00;
  }

  else
  {
    v2 = sub_1B80A3690;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80A3690()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A3724;

  return sub_1B7FE9CDC();
}

uint64_t sub_1B80A3724()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1B80A3B5C;
  }

  else
  {
    v2 = sub_1B80A3838;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80A3838()
{
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A38CC;

  return sub_1B8050C9C();
}

uint64_t sub_1B80A38CC()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80A3CB8, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1B80A3A00()
{
  v1 = *(v0 + 72);
  v2 = v1;
  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C93FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "Error re-establishing service: %{public}@", v5, 0xCu);
    sub_1B7FB86D4(v6, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v6, -1, -1);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B80A3B5C()
{
  v1 = *(v0 + 88);
  v2 = v1;
  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C93FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "Error re-establishing service: %{public}@", v5, 0xCu);
    sub_1B7FB86D4(v6, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v6, -1, -1);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_1B80A3CB8()
{
  v1 = *(v0 + 104);
  v2 = v1;
  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C93FC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    v7 = v1;
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v8;
    *v6 = v8;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "Error re-establishing service: %{public}@", v5, 0xCu);
    sub_1B7FB86D4(v6, &qword_1EBA65EE8, &qword_1B80D2478);
    MEMORY[0x1B8CB8970](v6, -1, -1);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  else
  {
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t ClientSessionError.Category.hashValue.getter()
{
  v1 = *v0;
  sub_1B80C993C();
  MEMORY[0x1B8CB8250](v1);
  return sub_1B80C997C();
}

unint64_t ClientSessionError.description.getter()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v6 = 0x6F6C6C6F466F6E2ELL;
    if (v1 == 3)
    {
      v6 = 0xD000000000000021;
    }

    if (v1 == 2)
    {
      v6 = 0xD000000000000013;
    }

    v7 = 0xD000000000000017;
    if (!*v0)
    {
      v7 = 0xD00000000000001DLL;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0xD000000000000028;
    if (v1 != 9)
    {
      v2 = 0xD000000000000023;
    }

    if (v1 == 8)
    {
      v2 = 0xD00000000000003CLL;
    }

    v3 = 0xD000000000000023;
    v4 = 0xD00000000000003ELL;
    if (v1 != 6)
    {
      v4 = 0xD00000000000003CLL;
    }

    if (v1 != 5)
    {
      v3 = v4;
    }

    if (*v0 <= 7u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1B80A401C()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1EBA7ACF8);
  __swift_project_value_buffer(v0, qword_1EBA7ACF8);
  return sub_1B80C8FFC();
}

uint64_t sub_1B80A40A0()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1ED8DDE30);
  __swift_project_value_buffer(v0, qword_1ED8DDE30);
  return sub_1B80C8FFC();
}

uint64_t sub_1B80A4120()
{
  v0 = sub_1B80C900C();
  __swift_allocate_value_buffer(v0, qword_1EBA7AD10);
  __swift_project_value_buffer(v0, qword_1EBA7AD10);
  return sub_1B80C8FFC();
}

unint64_t sub_1B80A41A4()
{
  result = qword_1EBA673D0;
  if (!qword_1EBA673D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA673D0);
  }

  return result;
}

uint64_t dispatch thunk of Session.__allocating_init(_:)(uint64_t a1)
{
  v6 = (*(v1 + 144) + **(v1 + 144));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1B80A24D0;

  return v6(a1);
}

uint64_t sub_1B80A4344(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1B80A43D4(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1B80A4494()
{
  result = qword_1EBA67400;
  if (!qword_1EBA67400)
  {
    sub_1B80C8A8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBA67400);
  }

  return result;
}

uint64_t sub_1B80A44EC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B80A455C(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1B80A4650;

  return v5(v2 + 32);
}

uint64_t sub_1B80A4650()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1B80A4764(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1B7FC253C;

  return sub_1B80A455C(a1, v4);
}

uint64_t sub_1B80A481C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B80A483C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t sub_1B80A4870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA66000, &unk_1B80D2630);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v22 - v9;
  sub_1B80A44EC(a3, v22 - v9);
  v11 = sub_1B80C92CC();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_1B7FB86D4(v10, &unk_1EBA66000, &unk_1B80D2630);
  }

  else
  {
    sub_1B80C92BC();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_1B80C926C();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_1B80C910C() + 32;

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

      sub_1B7FB86D4(a3, &unk_1EBA66000, &unk_1B80D2630);

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

  sub_1B7FB86D4(a3, &unk_1EBA66000, &unk_1B80D2630);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t Session.forceRefreshClient()()
{
  v1[2] = v0;
  v1[3] = type metadata accessor for FenceClientRequest(0);
  v1[4] = swift_task_alloc();
  type metadata accessor for FenceResponse(0);
  v1[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B80A4BCC, 0, 0);
}

uint64_t sub_1B80A4BCC()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A4C68;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A4C68()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A4D64, 0, 0);
}

uint64_t sub_1B80A4D64()
{
  v1 = *(*(v0 + 16) + 32);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A4D88, v1, 0);
}

uint64_t sub_1B80A4D88()
{
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1B80A4E2C;
  v3 = v0[4];
  v2 = v0[5];

  return sub_1B7FBFF48(v2, v3);
}

uint64_t sub_1B80A4E2C()
{
  v2 = *v1;
  v3 = (*v1)[4];
  v2[9] = v0;

  sub_1B80A67C8(v3, type metadata accessor for FenceClientRequest);
  v4 = v2[7];
  if (v0)
  {
    v5 = sub_1B80A501C;
  }

  else
  {
    sub_1B80A67C8(v2[5], type metadata accessor for FenceResponse);
    v5 = sub_1B80A4FB0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, 0);
}

uint64_t sub_1B80A4FB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B80A501C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session.addFence(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A50AC, 0, 0);
}

uint64_t sub_1B80A50AC()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A5148;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A5148()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A5244, 0, 0);
}

uint64_t sub_1B80A5244()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8012DD4;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1B7FE1FD4(v2, v3);
}

uint64_t Session.updateFence(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A50AC, 0, 0);
}

uint64_t Session.saveFence(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A50AC, 0, 0);
}

uint64_t Session.deleteFence(id:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A5348, 0, 0);
}

uint64_t sub_1B80A5348()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A53E4;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A53E4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A54E0, 0, 0);
}

uint64_t sub_1B80A54E0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE7A0;
  v2 = *(v0 + 16);

  return sub_1B7FE2300(v2);
}

uint64_t sub_1B80A559C()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A5638;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A5638()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A5734, 0, 0);
}

uint64_t sub_1B80A5734()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B805CC14;

  return sub_1B7FE289C();
}

uint64_t Session.acceptFence(id:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A57EC, 0, 0);
}

uint64_t sub_1B80A57EC()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A5888;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A5888()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A5984, 0, 0);
}

uint64_t sub_1B80A5984()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B8012C24;
  v2 = v0[2];
  v3 = v0[3];

  return sub_1B7FE2E38(v2, v3);
}

uint64_t Session.muteFences(for:untilDate:)(uint64_t *a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v5 = swift_task_alloc();
  v6 = *a1;
  v7 = a1[1];
  v3[6] = v5;
  v3[7] = v6;
  v3[8] = v7;

  return MEMORY[0x1EEE6DFA0](sub_1B80A5AC8, 0, 0);
}

uint64_t sub_1B80A5AC8()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A5B64;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A5B64()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A5C60, 0, 0);
}

uint64_t sub_1B80A5C60()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[4];
  v0[2] = v0[7];
  v0[3] = v1;
  v4 = sub_1B80C8E2C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(v2, v3, v4);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = swift_task_alloc();
  v0[10] = v6;
  *v6 = v0;
  v6[1] = sub_1B80A5D94;
  v7 = v0[6];

  return sub_1B7FE33E8(v0 + 2, v7);
}

uint64_t sub_1B80A5D94()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 88) = v0;

  sub_1B7FB86D4(v2, &unk_1EBA65FD0, &unk_1B80D1920);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80A5F08, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B80A5F08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session.unmuteFences(for:)(uint64_t *a1)
{
  v2[4] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBA65FD0, &unk_1B80D1920);
  v4 = swift_task_alloc();
  v5 = *a1;
  v6 = a1[1];
  v2[5] = v4;
  v2[6] = v5;
  v2[7] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1B80A6014, 0, 0);
}

uint64_t sub_1B80A6014()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A60B0;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A60B0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A61AC, 0, 0);
}

uint64_t sub_1B80A61AC()
{
  v1 = v0[7];
  v2 = v0[5];
  v0[2] = v0[6];
  v0[3] = v1;
  v3 = sub_1B80C8E2C();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1B80A62A0;
  v5 = v0[5];

  return sub_1B7FE33E8(v0 + 2, v5);
}

uint64_t sub_1B80A62A0()
{
  v2 = *(*v1 + 40);
  v3 = *v1;
  *(v3 + 80) = v0;

  sub_1B7FB86D4(v2, &unk_1EBA65FD0, &unk_1B80D1920);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80A6414, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B80A6414()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session.triggerFence(id:position:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B80A649C, 0, 0);
}

uint64_t sub_1B80A649C()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A6538;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A6538()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A6634, 0, 0);
}

uint64_t sub_1B80A6634()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1B80A66D4;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_1B7FE37D0(v4, v2, v3);
}

uint64_t sub_1B80A66D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1B80A67C8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for Session.FenceError(uint64_t a1)
{
  result = qword_1EBA67418;
  if (!qword_1EBA67418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B80A6874(uint64_t a1)
{
  result = type metadata accessor for Fence.TriggerPosition(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Fence.Variant(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t Session.sendFriendshipOffer(to:from:end:isFromGroup:)(uint64_t a1, uint64_t a2, _OWORD *a3, _BYTE *a4, char a5)
{
  *(v6 + 376) = a2;
  *(v6 + 384) = v5;
  *(v6 + 440) = a5;
  *(v6 + 368) = a1;
  sub_1B80C8E9C();
  *(v6 + 392) = swift_task_alloc();
  *(v6 + 400) = type metadata accessor for FriendshipRequest(0);
  *(v6 + 408) = swift_task_alloc();
  v9 = a3[9];
  *(v6 + 144) = a3[8];
  *(v6 + 160) = v9;
  *(v6 + 176) = a3[10];
  v10 = a3[5];
  *(v6 + 80) = a3[4];
  *(v6 + 96) = v10;
  v11 = a3[7];
  *(v6 + 112) = a3[6];
  *(v6 + 128) = v11;
  v12 = a3[1];
  *(v6 + 16) = *a3;
  *(v6 + 32) = v12;
  v13 = a3[3];
  *(v6 + 48) = a3[2];
  *(v6 + 64) = v13;
  *(v6 + 441) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1B80A6A0C, 0, 0);
}

uint64_t sub_1B80A6A0C()
{
  v26 = v0;
  v1 = *(v0 + 376);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    v4 = *(v0 + 384);
    v24 = *(v0 + 440);
    v5 = v3[7];
    sub_1B805D84C(v0 + 16, v0 + 192);
    sub_1B808DE0C(v2 + v5);
    v6 = *(v4 + 80);
    v8 = *(v4 + 88);
    v7 = *(v4 + 96);
    v9 = *(v4 + 104);

    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    sub_1B80C899C();
    v10 = v2 + v3[10];
    *v10 = v6;
    *(v10 + 8) = v8;
    *(v10 + 16) = v7;
    *(v10 + 24) = v9;
    *(v2 + v3[5]) = v1;
    v11 = (v2 + v3[6]);
    v12 = *(v0 + 16);
    v13 = *(v0 + 48);
    v11[1] = *(v0 + 32);
    v11[2] = v13;
    *v11 = v12;
    v14 = *(v0 + 64);
    v15 = *(v0 + 80);
    v16 = *(v0 + 112);
    v11[5] = *(v0 + 96);
    v11[6] = v16;
    v11[3] = v14;
    v11[4] = v15;
    v17 = *(v0 + 128);
    v18 = *(v0 + 144);
    v19 = *(v0 + 176);
    v11[9] = *(v0 + 160);
    v11[10] = v19;
    v11[7] = v17;
    v11[8] = v18;
    *(v2 + v3[8]) = 0;
    *(v2 + v3[9]) = 3;
    *(v2 + v3[11]) = v24;

    v25[0] = 1;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v25);
    v20 = swift_task_alloc();
    *(v0 + 416) = v20;
    *v20 = v0;
    v20[1] = sub_1B80A6C38;

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v22 = 3;
    swift_willThrow();

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1B80A6C38()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A6D34, 0, 0);
}

uint64_t sub_1B80A6D34()
{
  v1 = swift_task_alloc();
  v0[53] = v1;
  *v1 = v0;
  v1[1] = sub_1B80A6DD4;
  v2 = v0[51];
  v3 = v0[46];

  return sub_1B800624C(v3, v2);
}

uint64_t sub_1B80A6DD4()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1B80AB758;
  }

  else
  {
    v2 = sub_1B80AB754;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t Session.sendFriendshipInvite(to:from:isFromGroup:)(uint64_t a1, __int128 *a2, _OWORD *a3, char a4)
{
  *(v5 + 736) = v4;
  *(v5 + 792) = a4;
  *(v5 + 728) = a2;
  *(v5 + 720) = a1;
  sub_1B80C8E9C();
  *(v5 + 744) = swift_task_alloc();
  *(v5 + 752) = type metadata accessor for FriendshipRequest(0);
  v8 = swift_task_alloc();
  v9 = a2[8];
  v10 = a2[9];
  v11 = a2[6];
  *(v5 + 304) = a2[7];
  *(v5 + 320) = v9;
  v12 = a2[10];
  *(v5 + 336) = v10;
  *(v5 + 352) = v12;
  v13 = a2[4];
  v14 = a2[5];
  v15 = a2[2];
  *(v5 + 240) = a2[3];
  *(v5 + 256) = v13;
  *(v5 + 760) = v8;
  *(v5 + 272) = v14;
  *(v5 + 288) = v11;
  v16 = *a2;
  *(v5 + 208) = a2[1];
  *(v5 + 224) = v15;
  v17 = a3[9];
  *(v5 + 144) = a3[8];
  *(v5 + 160) = v17;
  *(v5 + 176) = a3[10];
  *(v5 + 192) = v16;
  v18 = a3[5];
  *(v5 + 80) = a3[4];
  *(v5 + 96) = v18;
  v19 = a3[7];
  *(v5 + 112) = a3[6];
  *(v5 + 128) = v19;
  v20 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v20;
  v21 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v21;

  return MEMORY[0x1EEE6DFA0](sub_1B80A7020, 0, 0);
}

uint64_t sub_1B80A7020()
{
  v33 = v0;
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 736);
  v31 = *(v0 + 792);
  v4 = *(v0 + 728);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA66100, &qword_1B80DACB0);
  v5 = swift_allocObject();
  v5[1] = xmmword_1B80D1EB0;
  v7 = v4[1];
  v6 = v4[2];
  v5[2] = *v4;
  v5[3] = v7;
  v5[4] = v6;
  v8 = v4[6];
  v10 = v4[3];
  v9 = v4[4];
  v5[7] = v4[5];
  v5[8] = v8;
  v5[5] = v10;
  v5[6] = v9;
  v11 = v4[10];
  v13 = v4[7];
  v12 = v4[8];
  v5[11] = v4[9];
  v5[12] = v11;
  v5[9] = v13;
  v5[10] = v12;
  v14 = v2[7];
  v15 = sub_1B80C8E2C();
  (*(*(v15 - 8) + 56))(v1 + v14, 1, 1, v15);
  LOBYTE(v14) = *(v3 + 80);
  v17 = *(v3 + 88);
  v16 = *(v3 + 96);
  v18 = *(v3 + 104);
  sub_1B7FC8DA4(v0 + 192, v0 + 368);
  sub_1B805D84C(v0 + 16, v0 + 544);

  _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
  sub_1B80C899C();
  v19 = v1 + v2[10];
  *v19 = v14;
  *(v19 + 8) = v17;
  *(v19 + 16) = v16;
  *(v19 + 24) = v18;
  *(v1 + v2[5]) = v5;
  v20 = (v1 + v2[6]);
  v21 = *(v0 + 16);
  v22 = *(v0 + 48);
  v20[1] = *(v0 + 32);
  v20[2] = v22;
  *v20 = v21;
  v23 = *(v0 + 64);
  v24 = *(v0 + 80);
  v25 = *(v0 + 112);
  v20[5] = *(v0 + 96);
  v20[6] = v25;
  v20[3] = v23;
  v20[4] = v24;
  v26 = *(v0 + 128);
  v27 = *(v0 + 144);
  v28 = *(v0 + 176);
  v20[9] = *(v0 + 160);
  v20[10] = v28;
  v20[7] = v26;
  v20[8] = v27;
  *(v1 + v2[8]) = 1;
  *(v1 + v2[9]) = 3;
  *(v1 + v2[11]) = v31;
  v32 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v32);
  v29 = swift_task_alloc();
  *(v0 + 768) = v29;
  *v29 = v0;
  v29[1] = sub_1B80A7258;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A7258()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A7354, 0, 0);
}

uint64_t sub_1B80A7354()
{
  v1 = swift_task_alloc();
  v0[97] = v1;
  *v1 = v0;
  v1[1] = sub_1B80A73F4;
  v2 = v0[95];
  v3 = v0[90];

  return sub_1B800764C(v3, v2);
}

uint64_t sub_1B80A73F4()
{
  *(*v1 + 784) = v0;

  if (v0)
  {
    v2 = sub_1B80A7584;
  }

  else
  {
    v2 = sub_1B80A7508;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80A7508()
{
  sub_1B805D8BC(*(v0 + 760));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B80A7584()
{
  sub_1B805D8BC(*(v0 + 760));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session.stopSharingMyLocation(with:from:isFromGroup:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  *(v5 + 376) = a2;
  *(v5 + 384) = v4;
  *(v5 + 440) = a4;
  *(v5 + 368) = a1;
  sub_1B80C8E9C();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = type metadata accessor for FriendshipRequest(0);
  *(v5 + 408) = swift_task_alloc();
  v7 = a3[9];
  *(v5 + 144) = a3[8];
  *(v5 + 160) = v7;
  *(v5 + 176) = a3[10];
  v8 = a3[5];
  *(v5 + 80) = a3[4];
  *(v5 + 96) = v8;
  v9 = a3[7];
  *(v5 + 112) = a3[6];
  *(v5 + 128) = v9;
  v10 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v10;
  v11 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B80A76FC, 0, 0);
}

uint64_t sub_1B80A76FC()
{
  v26 = v0;
  v1 = *(v0 + 376);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    v4 = *(v0 + 384);
    v5 = *(v0 + 440);
    v6 = v3[7];
    v7 = sub_1B80C8E2C();
    (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
    LOBYTE(v6) = *(v4 + 80);
    v9 = *(v4 + 88);
    v8 = *(v4 + 96);
    v10 = *(v4 + 104);
    sub_1B805D84C(v0 + 16, v0 + 192);

    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    sub_1B80C899C();
    v11 = v2 + v3[10];
    *v11 = v6;
    *(v11 + 8) = v9;
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v2 + v3[5]) = v1;
    v12 = (v2 + v3[6]);
    v13 = *(v0 + 16);
    v14 = *(v0 + 48);
    v12[1] = *(v0 + 32);
    v12[2] = v14;
    *v12 = v13;
    v15 = *(v0 + 64);
    v16 = *(v0 + 80);
    v17 = *(v0 + 112);
    v12[5] = *(v0 + 96);
    v12[6] = v17;
    v12[3] = v15;
    v12[4] = v16;
    v18 = *(v0 + 128);
    v19 = *(v0 + 144);
    v20 = *(v0 + 176);
    v12[9] = *(v0 + 160);
    v12[10] = v20;
    v12[7] = v18;
    v12[8] = v19;
    *(v2 + v3[8]) = 2;
    *(v2 + v3[9]) = 3;
    *(v2 + v3[11]) = v5;

    v25[0] = 1;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v25);
    v21 = swift_task_alloc();
    *(v0 + 416) = v21;
    *v21 = v0;
    v21[1] = sub_1B80A7950;

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1B80A7950()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A7A4C, 0, 0);
}

uint64_t sub_1B80A7A4C()
{
  v1 = swift_task_alloc();
  v0[53] = v1;
  *v1 = v0;
  v1[1] = sub_1B80A7AEC;
  v2 = v0[51];
  v3 = v0[46];

  return sub_1B800A104(v3, v2);
}

uint64_t sub_1B80A7AEC()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_1B80A7C7C;
  }

  else
  {
    v2 = sub_1B80A7C00;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B80A7C00()
{
  sub_1B805D8BC(*(v0 + 408));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B80A7C7C()
{
  sub_1B805D8BC(*(v0 + 408));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session.sendNotNow(to:from:isFromGroup:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  *(v5 + 376) = a2;
  *(v5 + 384) = v4;
  *(v5 + 440) = a4;
  *(v5 + 368) = a1;
  sub_1B80C8E9C();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = type metadata accessor for FriendshipRequest(0);
  *(v5 + 408) = swift_task_alloc();
  v7 = a3[9];
  *(v5 + 144) = a3[8];
  *(v5 + 160) = v7;
  *(v5 + 176) = a3[10];
  v8 = a3[5];
  *(v5 + 80) = a3[4];
  *(v5 + 96) = v8;
  v9 = a3[7];
  *(v5 + 112) = a3[6];
  *(v5 + 128) = v9;
  v10 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v10;
  v11 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B80A7DF0, 0, 0);
}

uint64_t sub_1B80A7DF0()
{
  v26 = v0;
  v1 = *(v0 + 376);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    v4 = *(v0 + 384);
    v5 = *(v0 + 440);
    v6 = v3[7];
    v7 = sub_1B80C8E2C();
    (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
    LOBYTE(v6) = *(v4 + 80);
    v9 = *(v4 + 88);
    v8 = *(v4 + 96);
    v10 = *(v4 + 104);
    sub_1B805D84C(v0 + 16, v0 + 192);

    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    sub_1B80C899C();
    v11 = v2 + v3[10];
    *v11 = v6;
    *(v11 + 8) = v9;
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v2 + v3[5]) = v1;
    v12 = (v2 + v3[6]);
    v13 = *(v0 + 16);
    v14 = *(v0 + 48);
    v12[1] = *(v0 + 32);
    v12[2] = v14;
    *v12 = v13;
    v15 = *(v0 + 64);
    v16 = *(v0 + 80);
    v17 = *(v0 + 112);
    v12[5] = *(v0 + 96);
    v12[6] = v17;
    v12[3] = v15;
    v12[4] = v16;
    v18 = *(v0 + 128);
    v19 = *(v0 + 144);
    v20 = *(v0 + 176);
    v12[9] = *(v0 + 160);
    v12[10] = v20;
    v12[7] = v18;
    v12[8] = v19;
    *(v2 + v3[8]) = 2;
    *(v2 + v3[9]) = 2;
    *(v2 + v3[11]) = v5;

    v25[0] = 1;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v25);
    v21 = swift_task_alloc();
    *(v0 + 416) = v21;
    *v21 = v0;
    v21[1] = sub_1B80A8040;

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1B80A8040()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A813C, 0, 0);
}

uint64_t sub_1B80A813C()
{
  v1 = swift_task_alloc();
  v0[53] = v1;
  *v1 = v0;
  v1[1] = sub_1B80A6DD4;
  v2 = v0[51];
  v3 = v0[46];

  return sub_1B8008AF4(v3, v2);
}

uint64_t Session.approveFriendship(handles:from:isFromGroup:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  *(v5 + 376) = a2;
  *(v5 + 384) = v4;
  *(v5 + 440) = a4;
  *(v5 + 368) = a1;
  sub_1B80C8E9C();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = type metadata accessor for FriendshipRequest(0);
  *(v5 + 408) = swift_task_alloc();
  v7 = a3[9];
  *(v5 + 144) = a3[8];
  *(v5 + 160) = v7;
  *(v5 + 176) = a3[10];
  v8 = a3[5];
  *(v5 + 80) = a3[4];
  *(v5 + 96) = v8;
  v9 = a3[7];
  *(v5 + 112) = a3[6];
  *(v5 + 128) = v9;
  v10 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v10;
  v11 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B80A82D8, 0, 0);
}

uint64_t sub_1B80A82D8()
{
  v26 = v0;
  v1 = *(v0 + 376);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    v4 = *(v0 + 384);
    v5 = *(v0 + 440);
    v6 = v3[7];
    v7 = sub_1B80C8E2C();
    (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
    LOBYTE(v6) = *(v4 + 80);
    v9 = *(v4 + 88);
    v8 = *(v4 + 96);
    v10 = *(v4 + 104);
    sub_1B805D84C(v0 + 16, v0 + 192);

    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    sub_1B80C899C();
    v11 = v2 + v3[10];
    *v11 = v6;
    *(v11 + 8) = v9;
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v2 + v3[5]) = v1;
    v12 = (v2 + v3[6]);
    v13 = *(v0 + 16);
    v14 = *(v0 + 48);
    v12[1] = *(v0 + 32);
    v12[2] = v14;
    *v12 = v13;
    v15 = *(v0 + 64);
    v16 = *(v0 + 80);
    v17 = *(v0 + 112);
    v12[5] = *(v0 + 96);
    v12[6] = v17;
    v12[3] = v15;
    v12[4] = v16;
    v18 = *(v0 + 128);
    v19 = *(v0 + 144);
    v20 = *(v0 + 176);
    v12[9] = *(v0 + 160);
    v12[10] = v20;
    v12[7] = v18;
    v12[8] = v19;
    *(v2 + v3[8]) = 2;
    *(v2 + v3[9]) = 0;
    *(v2 + v3[11]) = v5;

    v25[0] = 1;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v25);
    v21 = swift_task_alloc();
    *(v0 + 416) = v21;
    *v21 = v0;
    v21[1] = sub_1B80A8040;

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t Session.declineFriendship(handles:from:isFromGroup:)(uint64_t a1, uint64_t a2, _OWORD *a3, char a4)
{
  *(v5 + 376) = a2;
  *(v5 + 384) = v4;
  *(v5 + 440) = a4;
  *(v5 + 368) = a1;
  sub_1B80C8E9C();
  *(v5 + 392) = swift_task_alloc();
  *(v5 + 400) = type metadata accessor for FriendshipRequest(0);
  *(v5 + 408) = swift_task_alloc();
  v7 = a3[9];
  *(v5 + 144) = a3[8];
  *(v5 + 160) = v7;
  *(v5 + 176) = a3[10];
  v8 = a3[5];
  *(v5 + 80) = a3[4];
  *(v5 + 96) = v8;
  v9 = a3[7];
  *(v5 + 112) = a3[6];
  *(v5 + 128) = v9;
  v10 = a3[1];
  *(v5 + 16) = *a3;
  *(v5 + 32) = v10;
  v11 = a3[3];
  *(v5 + 48) = a3[2];
  *(v5 + 64) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1B80A8624, 0, 0);
}

uint64_t sub_1B80A8624()
{
  v26 = v0;
  v1 = *(v0 + 376);
  if (*(v1 + 16))
  {
    v3 = *(v0 + 400);
    v2 = *(v0 + 408);
    v4 = *(v0 + 384);
    v5 = *(v0 + 440);
    v6 = v3[7];
    v7 = sub_1B80C8E2C();
    (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
    LOBYTE(v6) = *(v4 + 80);
    v9 = *(v4 + 88);
    v8 = *(v4 + 96);
    v10 = *(v4 + 104);
    sub_1B805D84C(v0 + 16, v0 + 192);

    _s12FindMyLocate5FenceV9TriggerIDVAEycfC_0();
    sub_1B80C899C();
    v11 = v2 + v3[10];
    *v11 = v6;
    *(v11 + 8) = v9;
    *(v11 + 16) = v8;
    *(v11 + 24) = v10;
    *(v2 + v3[5]) = v1;
    v12 = (v2 + v3[6]);
    v13 = *(v0 + 16);
    v14 = *(v0 + 48);
    v12[1] = *(v0 + 32);
    v12[2] = v14;
    *v12 = v13;
    v15 = *(v0 + 64);
    v16 = *(v0 + 80);
    v17 = *(v0 + 112);
    v12[5] = *(v0 + 96);
    v12[6] = v17;
    v12[3] = v15;
    v12[4] = v16;
    v18 = *(v0 + 128);
    v19 = *(v0 + 144);
    v20 = *(v0 + 176);
    v12[9] = *(v0 + 160);
    v12[10] = v20;
    v12[7] = v18;
    v12[8] = v19;
    *(v2 + v3[8]) = 2;
    *(v2 + v3[9]) = 1;
    *(v2 + v3[11]) = v5;

    v25[0] = 1;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v25);
    v21 = swift_task_alloc();
    *(v0 + 416) = v21;
    *v21 = v0;
    v21[1] = sub_1B80A8040;

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t Session.startUpdatingFriends(receiveInitialUpdates:)(uint64_t a1, char a2)
{
  *(v3 + 48) = a2;
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  return MEMORY[0x1EEE6DFA0](sub_1B80A8898, 0, 0);
}

uint64_t sub_1B80A8898()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A8938;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A8938()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A8A34, 0, 0);
}

uint64_t sub_1B80A8A34()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE788;
  v2 = *(v0 + 48);
  v3 = *(v0 + 16);

  return sub_1B7FEA2DC(v3, v2);
}

uint64_t sub_1B80A8AF4()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A8B94;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A8B94()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A8C90, 0, 0);
}

uint64_t sub_1B80A8C90()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B8048BB0;

  return sub_1B7FEB668();
}

uint64_t Session.allFriends()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A8D44, 0, 0);
}

uint64_t sub_1B80A8D44()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A8DE4;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A8DE4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A8EE0, 0, 0);
}

uint64_t sub_1B80A8EE0()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B7FCE7A0;
  v2 = *(v0 + 16);

  return sub_1B80008D0(v2);
}

uint64_t sub_1B80A8F9C()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A903C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A903C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A9138, 0, 0);
}

uint64_t sub_1B80A9138()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AB75C;

  return sub_1B7FE8BC0(&unk_1F2FF95D8);
}

uint64_t sub_1B80A91F8()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A9298;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A9298()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A9394, 0, 0);
}

uint64_t sub_1B80A9394()
{
  v1 = *(*(v0 + 40) + 40);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A93B8, v1, 0);
}

uint64_t sub_1B80A93B8()
{
  v6 = v0;
  swift_beginAccess();
  v5 = 1;

  v2 = sub_1B7FE6734(v1, &v5);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t Session.friendsSharingLocationsWithMe(filter:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A948C, 0, 0);
}

uint64_t sub_1B80A948C()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A952C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A952C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A9628, 0, 0);
}

uint64_t sub_1B80A9628()
{
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_1B80A96C4;
  v3 = v0[2];
  v2 = v0[3];

  return sub_1B7FF1534(v3, v2);
}

uint64_t sub_1B80A96C4(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_1B80A97E4()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A9884;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A9884()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A9980, 0, 0);
}

uint64_t sub_1B80A9980()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B805CC14;

  return sub_1B7FE8BC0(&unk_1F2FF9600);
}

uint64_t sub_1B80A9A40()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A9AE0;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A9AE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A9BDC, 0, 0);
}

uint64_t sub_1B80A9BDC()
{
  v1 = *(*(v0 + 40) + 40);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80A9C00, v1, 0);
}

uint64_t sub_1B80A9C00()
{
  v6 = v0;
  swift_beginAccess();
  v5 = 0;

  v2 = sub_1B7FE6734(v1, &v5);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_1B80A9CCC()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A9D6C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A9D6C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80A9E68, 0, 0);
}

uint64_t sub_1B80A9E68()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AB75C;

  return sub_1B7FE8BC0(&unk_1F2FF9628);
}

uint64_t sub_1B80A9F28()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80A9FC8;

  return sub_1B7FC225C();
}

uint64_t sub_1B80A9FC8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AA0C4, 0, 0);
}

uint64_t sub_1B80AA0C4()
{
  v1 = *(*(v0 + 40) + 40);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AA0E8, v1, 0);
}

uint64_t sub_1B80AA0E8()
{
  swift_beginAccess();
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1B80AA19C()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AA23C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AA23C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AA338, 0, 0);
}

uint64_t sub_1B80AA338()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AB75C;

  return sub_1B7FE8BC0(&unk_1F2FF9650);
}

uint64_t sub_1B80AA3F8()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AA498;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AA498()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AA594, 0, 0);
}

uint64_t sub_1B80AA594()
{
  v1 = *(*(v0 + 40) + 40);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AA5B8, v1, 0);
}

uint64_t sub_1B80AA5B8()
{
  swift_beginAccess();
  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_1B80AA66C()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AA70C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AA70C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AA808, 0, 0);
}

uint64_t sub_1B80AA808()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AB75C;

  return sub_1B7FE8BC0(&unk_1F2FF9678);
}

uint64_t sub_1B80AA8C8()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 48) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AA968;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AA968()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AAA64, 0, 0);
}

uint64_t sub_1B80AAA64()
{
  v1 = *(*(v0 + 40) + 40);
  *(v0 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AAA88, v1, 0);
}

uint64_t sub_1B80AAA88()
{
  v6 = v0;
  swift_beginAccess();
  v5 = 4;

  v2 = sub_1B7FE6734(v1, &v5);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t Session.friendshipState(for:isFromGroup:)(uint64_t a1, _OWORD *a2, char a3)
{
  v6 = a2[9];
  *(v3 + 144) = a2[8];
  *(v3 + 160) = v6;
  *(v3 + 176) = a2[10];
  v7 = a2[5];
  *(v3 + 80) = a2[4];
  *(v3 + 96) = v7;
  v8 = a2[7];
  *(v3 + 112) = a2[6];
  *(v3 + 128) = v8;
  v9 = a2[1];
  *(v3 + 16) = *a2;
  *(v3 + 32) = v9;
  v10 = a2[3];
  *(v3 + 48) = a2[2];
  *(v3 + 64) = v10;
  v11 = swift_task_alloc();
  *(v3 + 192) = v11;
  *v11 = v3;
  v11[1] = sub_1B80AAC18;

  return Session.friendshipState(with:isFromGroup:)(a1, (v3 + 16), a3);
}

uint64_t sub_1B80AAC18()
{
  v2 = *v1;
  *(v2 + 200) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80AAD4C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Session.offerExpiration(for:groupId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AAD8C, 0, 0);
}

uint64_t sub_1B80AAD8C()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AAE2C;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AAE2C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AAF28, 0, 0);
}

uint64_t sub_1B80AAF28()
{
  v1 = *(v0 + 200);
  v3 = v1[1];
  v2 = v1[2];
  *(v0 + 16) = *v1;
  *(v0 + 32) = v3;
  *(v0 + 48) = v2;
  v4 = v1[6];
  v6 = v1[3];
  v5 = v1[4];
  *(v0 + 96) = v1[5];
  *(v0 + 112) = v4;
  *(v0 + 64) = v6;
  *(v0 + 80) = v5;
  v7 = v1[10];
  v9 = v1[7];
  v8 = v1[8];
  *(v0 + 160) = v1[9];
  *(v0 + 176) = v7;
  *(v0 + 128) = v9;
  *(v0 + 144) = v8;
  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  *v10 = v0;
  v10[1] = sub_1B80AB000;
  v11 = *(v0 + 208);
  v12 = *(v0 + 216);
  v13 = *(v0 + 192);

  return sub_1B8004F7C(v13, (v0 + 16), v11, v12);
}

uint64_t sub_1B80AB000()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80AB134, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Session.cachedOfferExpiration(for:groupId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[27] = a4;
  v5[28] = v4;
  v5[25] = a2;
  v5[26] = a3;
  v5[24] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B80AB174, 0, 0);
}

uint64_t sub_1B80AB174()
{
  v4 = v0;
  v3 = 1;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 232) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AB214;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AB214()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AB310, 0, 0);
}

uint64_t sub_1B80AB310()
{
  v1 = *(v0 + 200);
  v2 = *(*(v0 + 224) + 40);
  *(v0 + 240) = v2;
  v3 = v1[7];
  v4 = v1[8];
  v5 = v1[10];
  *(v0 + 160) = v1[9];
  *(v0 + 176) = v5;
  *(v0 + 128) = v3;
  *(v0 + 144) = v4;
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[6];
  *(v0 + 96) = v1[5];
  *(v0 + 112) = v8;
  *(v0 + 64) = v6;
  *(v0 + 80) = v7;
  v9 = *v1;
  v10 = v1[2];
  *(v0 + 32) = v1[1];
  *(v0 + 48) = v10;
  *(v0 + 16) = v9;
  return MEMORY[0x1EEE6DFA0](sub_1B80AB368, v2, 0);
}

uint64_t sub_1B80AB368()
{
  sub_1B7FF08C0((v0 + 16), *(v0 + 208), *(v0 + 216), *(v0 + 192));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t static Session.fmfIsAllowedInRegion.getter()
{
  v4[3] = &type metadata for KoreaFeatureFlag;
  v4[4] = sub_1B807E3A8();
  v0 = sub_1B80C8A7C();
  __swift_destroy_boxed_opaque_existential_0(v4);
  if (v0)
  {
    return 1;
  }

  v2 = sub_1B80C90AC();
  v3 = MGGetBoolAnswer();

  return v3;
}

id static Session.fmfIsRestrictedInScreenTime.getter()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v1 = result;
    v2 = *MEMORY[0x1E69ADE80];
    v3 = [v1 effectiveBoolValueForSetting_];

    return (v3 == 2);
  }

  return result;
}

uint64_t static Session.hasCorrectPermissionsForLocationSharing.getter()
{
  v9[3] = &type metadata for KoreaFeatureFlag;
  v9[4] = sub_1B807E3A8();
  v0 = sub_1B80C8A7C();
  __swift_destroy_boxed_opaque_existential_0(v9);
  if (((v0 & 1) != 0 || (v1 = sub_1B80C90AC(), v2 = MGGetBoolAnswer(), v1, v2)) && ((v3 = [objc_opt_self() sharedConnection]) == 0 || (v4 = v3, v5 = *MEMORY[0x1E69ADE80], v6 = objc_msgSend(v4, sel_effectiveBoolValueForSetting_, v5), v5, v4, v6 != 2)))
  {
    MyLocate7SessionC37isiCloudProvisionedForLocationSharingSbvgZ_0 = _s12FindMyLocate7SessionC37isiCloudProvisionedForLocationSharingSbvgZ_0();
  }

  else
  {
    MyLocate7SessionC37isiCloudProvisionedForLocationSharingSbvgZ_0 = 0;
  }

  return MyLocate7SessionC37isiCloudProvisionedForLocationSharingSbvgZ_0 & 1;
}

id _s12FindMyLocate7SessionC37isiCloudProvisionedForLocationSharingSbvgZ_0()
{
  v0 = [objc_opt_self() defaultStore];
  if (v0)
  {
    v1 = v0;
    v2 = [v0 aa_primaryAppleAccountWithPreloadedDataclasses];
    if (v2)
    {
      v3 = v2;
      v4 = [v2 isProvisionedForDataclass:*MEMORY[0x1E69596E8]];

      goto LABEL_10;
    }
  }

  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v5 = sub_1B80C900C();
  __swift_project_value_buffer(v5, qword_1ED8DDE50);
  v3 = sub_1B80C8FEC();
  v6 = sub_1B80C93FC();
  if (os_log_type_enabled(v3, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1B7FB5000, v3, v6, "Missing primary account!", v7, 2u);
    MEMORY[0x1B8CB8970](v7, -1, -1);
  }

  v4 = 0;
LABEL_10:

  return v4;
}

uint64_t Session.startRefreshingLocation(forHandles:priority:reverseGeocode:clientID:)(uint64_t a1, _BYTE *a2, char a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 121) = a3;
  *(v5 + 48) = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBA660B0, &qword_1B80D2E20);
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 122) = *a2;

  return MEMORY[0x1EEE6DFA0](sub_1B80AB85C, 0, 0);
}

uint64_t sub_1B80AB85C()
{
  v4 = v0;
  v3 = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v3);
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1B80AB8F8;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AB8F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AB9F4, 0, 0);
}

uint64_t sub_1B80AB9F4()
{
  v1 = *(v0 + 64);
  *(v0 + 120) = *(v0 + 122);
  v2 = *(v1 + 104);
  v3 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v3;
  *(v0 + 40) = v2;

  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_1B80ABAD8;
  v5 = *(v0 + 88);
  v6 = *(v0 + 121);
  v7 = *(v0 + 48);
  v8 = *(v0 + 56);

  return sub_1B80178C4(v5, v7, (v0 + 120), v6, v0 + 16, v8);
}

uint64_t sub_1B80ABAD8()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = sub_1B80ABC88;
  }

  else
  {
    (*(v2[10] + 8))(v2[11], v2[9]);
    v3 = sub_1B80ABC24;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B80ABC24()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1B80ABC88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session.startRefreshingLocation(forHandles:priority:reverseGeocode:)(uint64_t a1, uint64_t a2, _BYTE *a3, char a4)
{
  *(v5 + 56) = a2;
  *(v5 + 64) = v4;
  *(v5 + 105) = a4;
  *(v5 + 48) = a1;
  type metadata accessor for ClientID(0);
  *(v5 + 72) = swift_task_alloc();
  *(v5 + 106) = *a3;

  return MEMORY[0x1EEE6DFA0](sub_1B80ABD90, 0, 0);
}

uint64_t sub_1B80ABD90()
{
  v39 = v0;
  v1 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v2 = sub_1B80C900C();
  __swift_project_value_buffer(v2, qword_1ED8DDE50);

  v3 = sub_1B80C8FEC();
  v4 = sub_1B80C941C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 56);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v37 = v7;
    *v6 = 136447235;
    *(v6 + 4) = sub_1B7FB84FC(0xD00000000000003CLL, 0x80000001B80CE640, &v37);
    *(v6 + 12) = 2160;
    *(v6 + 14) = 1752392040;
    *(v6 + 22) = 2081;
    v8 = *(v5 + 16);
    v9 = MEMORY[0x1E69E7CC0];
    if (v8)
    {
      v33 = v7;
      v34 = v4;
      v35 = v3;
      v36 = v0;
      v10 = *(v0 + 56);
      v38 = MEMORY[0x1E69E7CC0];
      sub_1B7FCF988(0, v8, 0);
      v9 = v38;
      v11 = *(v38 + 16);
      v12 = 16 * v11;
      v13 = (v10 + 40);
      do
      {
        v14 = *(v13 - 1);
        v15 = *v13;
        v38 = v9;
        v16 = *(v9 + 24);

        if (v11 >= v16 >> 1)
        {
          sub_1B7FCF988((v16 > 1), v11 + 1, 1);
          v9 = v38;
        }

        *(v9 + 16) = v11 + 1;
        v17 = v9 + v12;
        *(v17 + 32) = v14;
        *(v17 + 40) = v15;
        v12 += 16;
        v13 += 22;
        ++v11;
        --v8;
      }

      while (v8);
      v3 = v35;
      v1 = v36;
      v4 = v34;
      v7 = v33;
    }

    v18 = *(v1 + 106);
    v19 = MEMORY[0x1B8CB7B30](v9, MEMORY[0x1E69E6158]);
    v21 = v20;

    v22 = sub_1B7FB84FC(v19, v21, &v37);

    *(v6 + 24) = v22;
    *(v6 + 32) = 2082;
    v23 = 0xE800000000000000;
    v24 = 0x776F6C6C6168732ELL;
    v25 = 0xE500000000000000;
    v26 = 0x6576696C2ELL;
    if (v18 != 2)
    {
      v26 = 0xD000000000000014;
      v25 = 0x80000001B80CBF40;
    }

    if (!v18)
    {
      v24 = 0xD000000000000015;
      v23 = 0x80000001B80CBFD0;
    }

    if (v18 <= 1)
    {
      v27 = v24;
    }

    else
    {
      v27 = v26;
    }

    if (v18 <= 1)
    {
      v28 = v23;
    }

    else
    {
      v28 = v25;
    }

    v29 = *(v1 + 105);
    v30 = sub_1B7FB84FC(v27, v28, &v37);

    *(v6 + 34) = v30;
    *(v6 + 42) = 1024;
    *(v6 + 44) = v29;
    _os_log_impl(&dword_1B7FB5000, v3, v4, "%{public}s for %{private,mask.hash}s priority: %{public}s reverseGeocode: %{BOOL}d", v6, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v7, -1, -1);
    MEMORY[0x1B8CB8970](v6, -1, -1);
  }

  LOBYTE(v38) = 0;
  _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(&v38);
  v31 = swift_task_alloc();
  *(v1 + 80) = v31;
  *v31 = v1;
  v31[1] = sub_1B80AC148;

  return sub_1B7FC225C();
}

uint64_t sub_1B80AC148()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80AC244, 0, 0);
}

uint64_t sub_1B80AC244()
{
  v18 = v0;
  v1 = *(v0 + 64);
  *(v0 + 104) = *(v0 + 106);
  v2 = *(v1 + 104);
  v3 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v3;
  *(v0 + 40) = v2;
  v4 = objc_opt_self();

  v5 = [v4 mainBundle];
  v6 = [v5 bundleIdentifier];

  if (v6)
  {
    v7 = sub_1B80C90BC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = *(v0 + 72);
  v17 = 0;
  ClientID.init(identifier:connectionType:)(v7, v9, &v17, v10);
  v11 = swift_task_alloc();
  *(v0 + 88) = v11;
  *v11 = v0;
  v11[1] = sub_1B80AC3BC;
  v12 = *(v0 + 72);
  v13 = *(v0 + 105);
  v14 = *(v0 + 48);
  v15 = *(v0 + 56);

  return sub_1B80178C4(v14, v15, (v0 + 104), v13, v0 + 16, v12);
}

uint64_t sub_1B80AC3BC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(*v1 + 96) = v0;

  sub_1B7FD06B4(v2);

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B80AC548, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1B80AC548()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t Session.addHandlesToLocationStream(_:priority:reverseGeocode:clientID:)(uint64_t a1, _BYTE *a2, char a3, uint64_t a4)
{
  *(v5 + 56) = a4;
  *(v5 + 64) = v4;
  *(v5 + 97) = a3;
  *(v5 + 48) = a1;
  *(v5 + 98) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1B80AC5DC, 0, 0);
}

uint64_t sub_1B80AC5DC()
{
  v40 = v0;
  if (qword_1ED8DD6B0 != -1)
  {
    swift_once();
  }

  v1 = sub_1B80C900C();
  __swift_project_value_buffer(v1, qword_1ED8DDE50);

  v2 = sub_1B80C8FEC();
  v3 = sub_1B80C941C();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 48);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v38 = v6;
    *v5 = 136447235;
    *(v5 + 4) = sub_1B7FB84FC(0xD00000000000003FLL, 0x80000001B80CE680, &v38);
    *(v5 + 12) = 2160;
    *(v5 + 14) = 1752392040;
    *(v5 + 22) = 2081;
    v7 = *(v4 + 16);
    v8 = MEMORY[0x1E69E7CC0];
    if (v7)
    {
      v34 = v6;
      v35 = v3;
      v36 = v5;
      v37 = v2;
      v9 = *(v0 + 48);
      *v39 = MEMORY[0x1E69E7CC0];
      sub_1B7FCF988(0, v7, 0);
      v8 = *v39;
      v10 = *(*v39 + 16);
      v11 = 16 * v10;
      v12 = (v9 + 40);
      do
      {
        v13 = *(v12 - 1);
        v14 = *v12;
        *v39 = v8;
        v15 = *(v8 + 24);

        if (v10 >= v15 >> 1)
        {
          sub_1B7FCF988((v15 > 1), v10 + 1, 1);
          v8 = *v39;
        }

        *(v8 + 16) = v10 + 1;
        v16 = v8 + v11;
        *(v16 + 32) = v13;
        *(v16 + 40) = v14;
        v11 += 16;
        v12 += 22;
        ++v10;
        --v7;
      }

      while (v7);
      v2 = v37;
      v5 = v36;
      v3 = v35;
      v6 = v34;
    }

    v17 = *(v0 + 98);
    v18 = MEMORY[0x1B8CB7B30](v8, MEMORY[0x1E69E6158]);
    v20 = v19;

    v21 = sub_1B7FB84FC(v18, v20, &v38);

    *(v5 + 24) = v21;
    *(v5 + 32) = 2082;
    v22 = 0xE800000000000000;
    v23 = 0x776F6C6C6168732ELL;
    v24 = 0xE500000000000000;
    v25 = 0x6576696C2ELL;
    if (v17 != 2)
    {
      v25 = 0xD000000000000014;
      v24 = 0x80000001B80CBF40;
    }

    if (!v17)
    {
      v23 = 0xD000000000000015;
      v22 = 0x80000001B80CBFD0;
    }

    if (v17 <= 1)
    {
      v26 = v23;
    }

    else
    {
      v26 = v25;
    }

    if (v17 <= 1)
    {
      v27 = v22;
    }

    else
    {
      v27 = v24;
    }

    v28 = *(v0 + 97);
    v29 = sub_1B7FB84FC(v26, v27, &v38);

    *(v5 + 34) = v29;
    *(v5 + 42) = 1024;
    *(v5 + 44) = v28;
    _os_log_impl(&dword_1B7FB5000, v2, v3, "%{public}s for %{private,mask.hash}s priority: %{public}s reverseGeocode: %{BOOL}d", v5, 0x30u);
    swift_arrayDestroy();
    MEMORY[0x1B8CB8970](v6, -1, -1);
    MEMORY[0x1B8CB8970](v5, -1, -1);
  }

  if (*(*(v0 + 48) + 16))
  {
    v39[0] = 0;
    _s12FindMyLocate7SessionC17ensureEntitlementyyAA19ServiceEntitlementsOF_0(v39);
    v30 = swift_task_alloc();
    *(v0 + 72) = v30;
    *v30 = v0;
    v30[1] = sub_1B80ACA14;

    return sub_1B7FC225C();
  }

  else
  {
    sub_1B8010040();
    swift_allocError();
    *v32 = 3;
    swift_willThrow();
    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_1B80ACA14()
{

  return MEMORY[0x1EEE6DFA0](sub_1B80ACB10, 0, 0);
}

uint64_t sub_1B80ACB10()
{
  v1 = *(v0 + 64);
  *(v0 + 96) = *(v0 + 98);
  v2 = *(v1 + 104);
  v3 = *(v1 + 88);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 24) = v3;
  *(v0 + 40) = v2;

  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1B80ACBF0;
  v5 = *(v0 + 97);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);

  return sub_1B8018FD8(v7, (v0 + 96), v0 + 16, v5, v6);
}