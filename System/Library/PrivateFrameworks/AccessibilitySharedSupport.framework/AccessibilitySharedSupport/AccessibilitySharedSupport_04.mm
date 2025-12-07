uint64_t sub_1C0F272AC()
{
  v0 = sub_1C0F4FD30();
  __swift_allocate_value_buffer(v0, qword_1EBE78368);
  __swift_project_value_buffer(v0, qword_1EBE78368);
  return sub_1C0F4FD10();
}

uint64_t sub_1C0F27330(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78450, &qword_1C0F5B600);
  v65 = *(v3 - 8);
  v66 = v3;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v64 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78458, &qword_1C0F5B608);
  v62 = *(v8 - 8);
  v63 = v8;
  MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  v61 = &v57 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78460, &qword_1C0F5B610);
  v59 = *(v13 - 8);
  v60 = v13;
  MEMORY[0x1EEE9AC00](v13, v14, v15, v16);
  v58 = &v57 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78468, &qword_1C0F5B618);
  v19 = *(v18 - 8);
  v68 = v18;
  v69 = v19;
  MEMORY[0x1EEE9AC00](v18, v20, v21, v22);
  v24 = &v57 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78470, &qword_1C0F5B620);
  v67 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25, v26, v27, v28);
  v30 = &v57 - v29;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78478, &qword_1C0F5B628);
  v75 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71, v31, v32, v33);
  v35 = &v57 - v34;
  v36 = v1[1];
  v72 = *v1;
  v73 = v36;
  v37 = v1[2];
  v38 = *(v1 + 24);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F29D4C();
  v70 = v35;
  sub_1C0F508B0();
  v39 = v38 >> 5;
  if (v38 >> 5 > 1)
  {
    if (v39 == 2)
    {
      LOBYTE(v76) = 2;
      sub_1C0F29E48();
      v49 = v58;
      v50 = v70;
      v51 = v71;
      sub_1C0F50700();
      v76 = v72;
      v77 = v73;
      sub_1C0F29300();
      v52 = v60;
      sub_1C0F50760();
      (*(v59 + 8))(v49, v52);
      return (*(v75 + 8))(v50, v51);
    }

    v41 = v70;
    v40 = v71;
    if (v39 == 3)
    {
      LOBYTE(v76) = 3;
      sub_1C0F29DF4();
      v42 = v61;
      sub_1C0F50700();
      v76 = v72;
      v77 = v73;
      sub_1C0F29300();
      v43 = v63;
      sub_1C0F50760();
      v44 = v62;
    }

    else
    {
      LOBYTE(v76) = 4;
      sub_1C0F29DA0();
      v42 = v64;
      sub_1C0F50700();
      v76 = v72;
      v77 = v73;
      sub_1C0F29300();
      v43 = v66;
      sub_1C0F50760();
      v44 = v65;
    }

    (*(v44 + 8))(v42, v43);
    return (*(v75 + 8))(v41, v40);
  }

  v66 = v37;
  v46 = v67;
  v45 = v68;
  v47 = v25;
  v48 = v69;
  if (!v39)
  {
    LOBYTE(v76) = 0;
    sub_1C0F29EF0();
    v41 = v70;
    v40 = v71;
    sub_1C0F50700();
    v76 = v72;
    v77 = v73;
    sub_1C0F29300();
    sub_1C0F50730();
    (*(v46 + 8))(v30, v47);
    return (*(v75 + 8))(v41, v40);
  }

  LOBYTE(v76) = 1;
  sub_1C0F29E9C();
  v54 = v70;
  v55 = v71;
  sub_1C0F50700();
  v76 = v72;
  v77 = v73;
  v78 = 0;
  sub_1C0F29300();
  v56 = v74;
  sub_1C0F50760();
  if (!v56)
  {
    LOBYTE(v76) = 1;
    sub_1C0F50720();
  }

  (*(v48 + 8))(v24, v45);
  return (*(v75 + 8))(v54, v55);
}

uint64_t sub_1C0F279F0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v75 = a2;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE783F0, &qword_1C0F5B5C8);
  v73 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v3, v4, v5);
  v77 = &v65 - v6;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE783F8, &qword_1C0F5B5D0);
  v72 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69, v7, v8, v9);
  v74 = &v65 - v10;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78400, &qword_1C0F5B5D8);
  v68 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66, v11, v12, v13);
  v76 = &v65 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78408, &qword_1C0F5B5E0);
  v70 = *(v15 - 8);
  v71 = v15;
  MEMORY[0x1EEE9AC00](v15, v16, v17, v18);
  v20 = &v65 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78410, &qword_1C0F5B5E8);
  v65 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21, v22, v23, v24);
  v26 = &v65 - v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78418, &unk_1C0F5B5F0);
  v28 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27, v29, v30, v31);
  v33 = &v65 - v32;
  v34 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v34);
  sub_1C0F29D4C();
  v35 = v79;
  sub_1C0F508A0();
  if (!v35)
  {
    v36 = v26;
    *&v79 = v21;
    v38 = v76;
    v37 = v77;
    v39 = sub_1C0F506F0();
    v40 = (2 * *(v39 + 16)) | 1;
    v81 = v39;
    v82 = v39 + 32;
    v83 = 0;
    v84 = v40;
    v41 = sub_1C0F13B48();
    if (v41 != 5 && v83 == v84 >> 1)
    {
      if (v41 <= 1u)
      {
        if (!v41)
        {
          LOBYTE(v80) = 0;
          sub_1C0F29EF0();
          v49 = v36;
          sub_1C0F50670();
          sub_1C0F29204();
          v50 = v79;
          sub_1C0F506B0();
          (*(v65 + 8))(v49, v50);
          (*(v28 + 8))(v33, v27);
          swift_unknownObjectRelease();
          v58 = 0;
          v60 = 0;
          v59 = v80;
LABEL_16:
          v57 = v78;
          v51 = v75;
          goto LABEL_17;
        }

        LOBYTE(v80) = 1;
        sub_1C0F29E9C();
        sub_1C0F50670();
        v85 = 0;
        sub_1C0F29204();
        v55 = v71;
        sub_1C0F506E0();
        v61 = v33;
        v62 = v27;
        v79 = v80;
        v85 = 1;
        v58 = sub_1C0F506A0();
        v64 = v63;
        (*(v70 + 8))(v20, v55);
        (*(v28 + 8))(v61, v62);
        swift_unknownObjectRelease();
        v60 = v64 & 1 | 0x20;
        v57 = v78;
        v51 = v75;
        v59 = v79;
      }

      else
      {
        if (v41 != 2)
        {
          if (v41 == 3)
          {
            LOBYTE(v80) = 3;
            sub_1C0F29DF4();
            v42 = v74;
            sub_1C0F50670();
            sub_1C0F29204();
            v43 = v69;
            sub_1C0F506E0();
            (*(v72 + 8))(v42, v43);
            (*(v28 + 8))(v33, v27);
            swift_unknownObjectRelease();
            v58 = 0;
            v59 = v80;
            v60 = 96;
          }

          else
          {
            LOBYTE(v80) = 4;
            sub_1C0F29DA0();
            v53 = v37;
            sub_1C0F50670();
            sub_1C0F29204();
            v54 = v67;
            sub_1C0F506E0();
            (*(v73 + 8))(v53, v54);
            (*(v28 + 8))(v33, v27);
            swift_unknownObjectRelease();
            v58 = 0;
            v59 = v80;
            v60 = 0x80;
          }

          goto LABEL_16;
        }

        LOBYTE(v80) = 2;
        sub_1C0F29E48();
        sub_1C0F50670();
        v51 = v75;
        sub_1C0F29204();
        v52 = v66;
        sub_1C0F506E0();
        (*(v68 + 8))(v38, v52);
        (*(v28 + 8))(v33, v27);
        swift_unknownObjectRelease();
        v58 = 0;
        v59 = v80;
        v60 = 64;
        v57 = v78;
      }

LABEL_17:
      *v51 = v59;
      *(v51 + 16) = v58;
      *(v51 + 24) = v60;
      return __swift_destroy_boxed_opaque_existential_0(v57);
    }

    v44 = v27;
    v45 = sub_1C0F505C0();
    swift_allocError();
    v46 = v33;
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0);
    *v48 = &type metadata for AccessibilityActionRequestState;
    sub_1C0F50680();
    sub_1C0F505B0();
    (*(*(v45 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    (*(v28 + 8))(v46, v44);
    swift_unknownObjectRelease();
  }

  v57 = v78;
  return __swift_destroy_boxed_opaque_existential_0(v57);
}

uint64_t sub_1C0F283C0()
{
  v1 = *v0;
  v2 = 1953391987;
  v3 = 0x6574656C706D6F63;
  v4 = 0x64656C696166;
  if (v1 != 3)
  {
    v4 = 0x646574736F706572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x64656C646E6168;
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

uint64_t sub_1C0F28454@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C0F29A34(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C0F2847C(uint64_t a1)
{
  v2 = sub_1C0F29D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F284B8(uint64_t a1)
{
  v2 = sub_1C0F29D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F28500(uint64_t a1)
{
  v2 = sub_1C0F29E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2853C(uint64_t a1)
{
  v2 = sub_1C0F29E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F28578(uint64_t a1)
{
  v2 = sub_1C0F29DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F285B4(uint64_t a1)
{
  v2 = sub_1C0F29DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F285F0()
{
  if (*v0)
  {
    return 1701669236;
  }

  else
  {
    return 31074;
  }
}

uint64_t sub_1C0F28618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 31074 && a2 == 0xE200000000000000;
  if (v5 || (sub_1C0F50790() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C0F50790();

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

uint64_t sub_1C0F286F8(uint64_t a1)
{
  v2 = sub_1C0F29E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F28734(uint64_t a1)
{
  v2 = sub_1C0F29E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F28770@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 31074 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C0F50790();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C0F287F0(uint64_t a1)
{
  v2 = sub_1C0F29DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2882C(uint64_t a1)
{
  v2 = sub_1C0F29DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F28868()
{
  sub_1C0F50850();
  MEMORY[0x1C68EA070](0);
  return sub_1C0F50890();
}

uint64_t sub_1C0F288AC(uint64_t a1)
{
  sub_1C0F50850();
  MEMORY[0x1C68EA070](0);
  return sub_1C0F50890();
}

uint64_t sub_1C0F288F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 28532 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C0F50790();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C0F28978(uint64_t a1)
{
  v2 = sub_1C0F29EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F289B4(uint64_t a1)
{
  v2 = sub_1C0F29EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F28A20(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE783A8, &qword_1C0F5B358);
  v30 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v8 = &v24 - v7;
  v9 = *v1;
  v10 = v1[1];
  v12 = *(v1 + 1);
  v11 = *(v1 + 2);
  v13 = *(v1 + 4);
  v28 = *(v1 + 3);
  v29 = v11;
  v14 = *(v1 + 6);
  v26 = *(v1 + 5);
  v27 = v13;
  v24 = *(v1 + 7);
  v25 = v14;
  v36 = v1[64];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F2915C();
  sub_1C0F508B0();
  LOBYTE(v32) = v9;
  v15 = v8;
  BYTE1(v32) = v10;
  v33 = v12;
  v37 = 0;
  sub_1C0F292AC();
  v16 = v31;
  sub_1C0F50760();
  if (v16)
  {
    return (*(v30 + 8))(v8, v3);
  }

  v19 = v27;
  v18 = v28;
  v21 = v24;
  v20 = v25;
  v22 = v26;
  v23 = v30;
  LOBYTE(v32) = 1;
  sub_1C0F50750();
  v32 = v18;
  v33 = v19;
  v37 = 2;
  sub_1C0F29300();

  sub_1C0F50760();

  v32 = v22;
  v33 = v20;
  v34 = v21;
  v35 = v36;
  v37 = 3;
  sub_1C0F113A4(v22, v20, v21, v36);
  sub_1C0F29354();
  sub_1C0F50760();
  sub_1C0F08B10(v32, v33, v34, v35);
  return (*(v23 + 8))(v15, v3);
}

uint64_t sub_1C0F28CA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78380, &qword_1C0F5B350);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7, v8, v9);
  v11 = &v23 - v10;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F2915C();
  sub_1C0F508A0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v30) = 0;
  sub_1C0F291B0();
  sub_1C0F506E0();
  v12 = v35;
  v13 = v36;
  v49 = BYTE1(v35);
  LOBYTE(v35) = 1;
  v29 = sub_1C0F506D0();
  LOBYTE(v30) = 2;
  sub_1C0F29204();
  sub_1C0F506E0();
  v27 = v35;
  v28 = v36;
  v48 = 3;
  sub_1C0F29258();
  sub_1C0F506E0();
  (*(v6 + 8))(v11, v5);
  v26 = v44;
  v24 = *(&v45 + 1);
  v25 = v45;
  LOBYTE(v30) = v12;
  v47 = v49;
  BYTE1(v30) = v49;
  v14 = v29;
  *(&v30 + 1) = v13;
  *&v31 = v29;
  v15 = v27;
  v16 = v28;
  *(&v31 + 1) = v27;
  *&v32 = v28;
  *(&v32 + 1) = v44;
  v33 = v45;
  v17 = v46;
  v34 = v46;
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v45;
  *(a2 + 64) = v46;
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  *a2 = v18;
  *(a2 + 16) = v19;
  sub_1C0F0D80C(&v30, &v35);
  __swift_destroy_boxed_opaque_existential_0(a1);
  LOBYTE(v35) = v12;
  BYTE1(v35) = v47;
  v36 = v13;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v26;
  v41 = v25;
  v42 = v24;
  v43 = v17;
  return sub_1C0F07308(&v35);
}

uint64_t sub_1C0F29014()
{
  v1 = 1802723700;
  v2 = 0x746E65696C63;
  if (*v0 != 2)
  {
    v2 = 0x6574617473;
  }

  if (*v0)
  {
    v1 = 0x7265696669646F6DLL;
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

uint64_t sub_1C0F2908C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C0F29BE8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C0F290B4(uint64_t a1)
{
  v2 = sub_1C0F2915C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F290F0(uint64_t a1)
{
  v2 = sub_1C0F2915C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1C0F2915C()
{
  result = qword_1EBE78388;
  if (!qword_1EBE78388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78388);
  }

  return result;
}

unint64_t sub_1C0F291B0()
{
  result = qword_1EBE78390;
  if (!qword_1EBE78390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78390);
  }

  return result;
}

unint64_t sub_1C0F29204()
{
  result = qword_1EBE78398;
  if (!qword_1EBE78398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78398);
  }

  return result;
}

unint64_t sub_1C0F29258()
{
  result = qword_1EBE783A0;
  if (!qword_1EBE783A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783A0);
  }

  return result;
}

unint64_t sub_1C0F292AC()
{
  result = qword_1EBE783B0;
  if (!qword_1EBE783B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783B0);
  }

  return result;
}

unint64_t sub_1C0F29300()
{
  result = qword_1EBE783B8;
  if (!qword_1EBE783B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783B8);
  }

  return result;
}

unint64_t sub_1C0F29354()
{
  result = qword_1EBE783C0;
  if (!qword_1EBE783C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783C0);
  }

  return result;
}

uint64_t sub_1C0F293A8(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1C0F29460(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_1C0F4F790();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_1C0F4F560();
  if (v3)
  {
    result = sub_1C0F4F580();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_1C0F4F570();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1C0F293A8(v3, v7);

  return v8;
}

uint64_t sub_1C0F29544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C0F4F780();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8, v9, v10);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C0F4F770();
  if (a2)
  {
    sub_1C0F4F5A0();
    swift_allocObject();

    v13 = sub_1C0F4F550();
    (*(v7 + 16))(v12, a3, v6);
    if ((*(v7 + 88))(v12, v6) == *MEMORY[0x1E6969010])
    {
      v14 = sub_1C0F4F590();
      *v15 |= 0x8000000000000000;
      v14(v19, 0);
    }

    else
    {
      (*(v7 + 8))(v12, v6);
    }

    v17 = sub_1C0F29460(v13, a2);
  }

  else
  {
    v16 = sub_1C0F4F770();
    v16(a1, 0);

    v17 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v17;
}

unint64_t sub_1C0F2977C()
{
  result = qword_1EBE783C8;
  if (!qword_1EBE783C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783C8);
  }

  return result;
}

unint64_t sub_1C0F297D0()
{
  result = qword_1EBE783D0;
  if (!qword_1EBE783D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783D0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1C0F29848(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 25))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 24) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 24) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1C0F2989C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_1C0F29930()
{
  result = qword_1EBE783D8;
  if (!qword_1EBE783D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783D8);
  }

  return result;
}

unint64_t sub_1C0F29988()
{
  result = qword_1EBE783E0;
  if (!qword_1EBE783E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783E0);
  }

  return result;
}

unint64_t sub_1C0F299E0()
{
  result = qword_1EBE783E8;
  if (!qword_1EBE783E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE783E8);
  }

  return result;
}

uint64_t sub_1C0F29A34(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1953391987 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x64656C646E6168 && a2 == 0xE700000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE900000000000064 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64656C696166 && a2 == 0xE600000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x646574736F706572 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1C0F50790();

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

uint64_t sub_1C0F29BE8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802723700 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265696669646F6DLL && a2 == 0xED00007367616C46 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65696C63 && a2 == 0xE600000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C0F50790();

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

unint64_t sub_1C0F29D4C()
{
  result = qword_1EBE78420;
  if (!qword_1EBE78420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78420);
  }

  return result;
}

unint64_t sub_1C0F29DA0()
{
  result = qword_1EBE78428;
  if (!qword_1EBE78428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78428);
  }

  return result;
}

unint64_t sub_1C0F29DF4()
{
  result = qword_1EBE78430;
  if (!qword_1EBE78430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78430);
  }

  return result;
}

unint64_t sub_1C0F29E48()
{
  result = qword_1EBE78438;
  if (!qword_1EBE78438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78438);
  }

  return result;
}

unint64_t sub_1C0F29E9C()
{
  result = qword_1EBE78440;
  if (!qword_1EBE78440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78440);
  }

  return result;
}

unint64_t sub_1C0F29EF0()
{
  result = qword_1EBE78448;
  if (!qword_1EBE78448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78448);
  }

  return result;
}

unint64_t sub_1C0F29FA8()
{
  result = qword_1EBE78480;
  if (!qword_1EBE78480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78480);
  }

  return result;
}

unint64_t sub_1C0F2A000()
{
  result = qword_1EBE78488;
  if (!qword_1EBE78488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78488);
  }

  return result;
}

unint64_t sub_1C0F2A058()
{
  result = qword_1EBE78490;
  if (!qword_1EBE78490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78490);
  }

  return result;
}

unint64_t sub_1C0F2A0B0()
{
  result = qword_1EBE78498;
  if (!qword_1EBE78498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78498);
  }

  return result;
}

unint64_t sub_1C0F2A108()
{
  result = qword_1EBE784A0;
  if (!qword_1EBE784A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784A0);
  }

  return result;
}

unint64_t sub_1C0F2A160()
{
  result = qword_1EBE784A8;
  if (!qword_1EBE784A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784A8);
  }

  return result;
}

unint64_t sub_1C0F2A1B8()
{
  result = qword_1EBE784B0;
  if (!qword_1EBE784B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784B0);
  }

  return result;
}

unint64_t sub_1C0F2A210()
{
  result = qword_1EBE784B8;
  if (!qword_1EBE784B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784B8);
  }

  return result;
}

unint64_t sub_1C0F2A268()
{
  result = qword_1EBE784C0;
  if (!qword_1EBE784C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784C0);
  }

  return result;
}

unint64_t sub_1C0F2A2C0()
{
  result = qword_1EBE784C8;
  if (!qword_1EBE784C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784C8);
  }

  return result;
}

unint64_t sub_1C0F2A318()
{
  result = qword_1EBE784D0;
  if (!qword_1EBE784D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784D0);
  }

  return result;
}

unint64_t sub_1C0F2A370()
{
  result = qword_1EBE784D8;
  if (!qword_1EBE784D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784D8);
  }

  return result;
}

unint64_t sub_1C0F2A3C8()
{
  result = qword_1EBE784E0;
  if (!qword_1EBE784E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784E0);
  }

  return result;
}

unint64_t sub_1C0F2A420()
{
  result = qword_1EBE784E8;
  if (!qword_1EBE784E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784E8);
  }

  return result;
}

unint64_t sub_1C0F2A478()
{
  result = qword_1EBE784F0;
  if (!qword_1EBE784F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784F0);
  }

  return result;
}

unint64_t sub_1C0F2A4D0()
{
  result = qword_1EBE784F8;
  if (!qword_1EBE784F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE784F8);
  }

  return result;
}

unint64_t sub_1C0F2A528()
{
  result = qword_1EBE78500;
  if (!qword_1EBE78500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78500);
  }

  return result;
}

unint64_t sub_1C0F2A580()
{
  result = qword_1EBE78508;
  if (!qword_1EBE78508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78508);
  }

  return result;
}

uint64_t AccessibilitySystemAction.resolve(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  switch(*v2)
  {
    case 1:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.ArmApplePay;
      result = sub_1C0F2AF54();
      goto LABEL_21;
    case 2:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Camera;
      result = sub_1C0F2AF00();
      goto LABEL_21;
    case 3:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.ControlCenter;
      result = sub_1C0F2AEAC();
      goto LABEL_21;
    case 4:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.FrontCamera;
      result = sub_1C0F2AE58();
      goto LABEL_21;
    case 5:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Home;
      result = sub_1C0F2AE04();
      goto LABEL_21;
    case 6:
      sub_1C0EED570(a1, v14, &qword_1EBE78558, &qword_1C0F5BCF0);
      if (v15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78570, &qword_1C0F5BD00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78598, &qword_1C0F5BD18);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v19 = 0;
          v17 = 0u;
          v18 = 0u;
        }
      }

      else
      {
        sub_1C0EEFAA8(v14, &qword_1EBE78558, &qword_1C0F5BCF0);
        v17 = 0u;
        v18 = 0u;
        v19 = 0;
      }

      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Mute;
      *(a2 + 32) = sub_1C0F2ADB0();
      sub_1C0EED570(&v17, v14, &qword_1EBE78590, &qword_1C0F5BD10);
      v5 = v15;
      if (v15)
      {
        v6 = v16;
        __swift_project_boxed_opaque_existential_0(v14, v15);
        v7 = (*(v6 + 16))(v5, v6);
        v8 = &qword_1EBE78590;
        v9 = &qword_1C0F5BD10;
        goto LABEL_33;
      }

      v10 = &qword_1EBE78590;
      v11 = &qword_1C0F5BD10;
      goto LABEL_35;
    case 7:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.NotificationCenter;
      result = sub_1C0F2AD5C();
      goto LABEL_21;
    case 8:
      sub_1C0EED570(a1, v14, &qword_1EBE78558, &qword_1C0F5BCF0);
      if (v15)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78570, &qword_1C0F5BD00);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78578, &qword_1C0F5BD08);
        if ((swift_dynamicCast() & 1) == 0)
        {
          v19 = 0;
          v17 = 0u;
          v18 = 0u;
        }
      }

      else
      {
        sub_1C0EEFAA8(v14, &qword_1EBE78558, &qword_1C0F5BCF0);
        v17 = 0u;
        v18 = 0u;
        v19 = 0;
      }

      *(a2 + 24) = &type metadata for AccessibilitySystemAction.OrientationLock;
      *(a2 + 32) = sub_1C0F2AD08();
      sub_1C0EED570(&v17, v14, &qword_1EBE78568, &qword_1C0F5BCF8);
      v12 = v15;
      if (v15)
      {
        v13 = v16;
        __swift_project_boxed_opaque_existential_0(v14, v15);
        v7 = (*(v13 + 16))(v12, v13);
        v8 = &qword_1EBE78568;
        v9 = &qword_1C0F5BCF8;
LABEL_33:
        sub_1C0EEFAA8(&v17, v8, v9);
        result = __swift_destroy_boxed_opaque_existential_0(v14);
      }

      else
      {
        v10 = &qword_1EBE78568;
        v11 = &qword_1C0F5BCF8;
LABEL_35:
        sub_1C0EEFAA8(&v17, v10, v11);
        result = sub_1C0EEFAA8(v14, v10, v11);
        v7 = 0;
      }

      *a2 = v7 & 1;
      return result;
    case 9:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Reachability;
      result = sub_1C0F2ACB4();
      goto LABEL_21;
    case 0xA:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.RebootDevice;
      result = sub_1C0F2AC60();
      goto LABEL_21;
    case 0xB:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Siri;
      result = sub_1C0F2AC0C();
      goto LABEL_21;
    case 0xC:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.SOS;
      result = sub_1C0F2ABB8();
      goto LABEL_21;
    case 0xD:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Spotlight;
      result = sub_1C0F2AB64();
      goto LABEL_21;
    case 0xE:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.Sysdiagnose;
      result = sub_1C0F2AB10();
      goto LABEL_21;
    case 0xF:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.ToggleDock;
      result = sub_1C0F2AABC();
      goto LABEL_21;
    case 0x10:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.TypeToSiri;
      result = sub_1C0F2AA68();
      goto LABEL_21;
    case 0x11:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.VisualIntelligence;
      result = sub_1C0F2AA14();
      goto LABEL_21;
    default:
      *(a2 + 24) = &type metadata for AccessibilitySystemAction.AppSwitcher;
      result = sub_1C0F2AFA8();
LABEL_21:
      *(a2 + 32) = result;
      return result;
  }
}

unint64_t sub_1C0F2AA14()
{
  result = qword_1EBE78510;
  if (!qword_1EBE78510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78510);
  }

  return result;
}

unint64_t sub_1C0F2AA68()
{
  result = qword_1EBE78518;
  if (!qword_1EBE78518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78518);
  }

  return result;
}

unint64_t sub_1C0F2AABC()
{
  result = qword_1EBE78520;
  if (!qword_1EBE78520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78520);
  }

  return result;
}

unint64_t sub_1C0F2AB10()
{
  result = qword_1EBE78528;
  if (!qword_1EBE78528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78528);
  }

  return result;
}

unint64_t sub_1C0F2AB64()
{
  result = qword_1EBE78530;
  if (!qword_1EBE78530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78530);
  }

  return result;
}

unint64_t sub_1C0F2ABB8()
{
  result = qword_1EBE78538;
  if (!qword_1EBE78538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78538);
  }

  return result;
}

unint64_t sub_1C0F2AC0C()
{
  result = qword_1EBE78540;
  if (!qword_1EBE78540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78540);
  }

  return result;
}

unint64_t sub_1C0F2AC60()
{
  result = qword_1EBE78548;
  if (!qword_1EBE78548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78548);
  }

  return result;
}

unint64_t sub_1C0F2ACB4()
{
  result = qword_1EBE78550;
  if (!qword_1EBE78550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78550);
  }

  return result;
}

unint64_t sub_1C0F2AD08()
{
  result = qword_1EBE78560;
  if (!qword_1EBE78560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78560);
  }

  return result;
}

unint64_t sub_1C0F2AD5C()
{
  result = qword_1EBE78580;
  if (!qword_1EBE78580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78580);
  }

  return result;
}

unint64_t sub_1C0F2ADB0()
{
  result = qword_1EBE78588;
  if (!qword_1EBE78588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78588);
  }

  return result;
}

unint64_t sub_1C0F2AE04()
{
  result = qword_1EBE785A0;
  if (!qword_1EBE785A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE785A0);
  }

  return result;
}

unint64_t sub_1C0F2AE58()
{
  result = qword_1EBE785A8;
  if (!qword_1EBE785A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE785A8);
  }

  return result;
}

unint64_t sub_1C0F2AEAC()
{
  result = qword_1EBE785B0;
  if (!qword_1EBE785B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE785B0);
  }

  return result;
}

unint64_t sub_1C0F2AF00()
{
  result = qword_1EBE785B8;
  if (!qword_1EBE785B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE785B8);
  }

  return result;
}

unint64_t sub_1C0F2AF54()
{
  result = qword_1EBE785C0;
  if (!qword_1EBE785C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE785C0);
  }

  return result;
}

unint64_t sub_1C0F2AFA8()
{
  result = qword_1EBE785C8;
  if (!qword_1EBE785C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE785C8);
  }

  return result;
}

unint64_t sub_1C0F2B010(char a1)
{
  result = 0x6374697753707061;
  switch(a1)
  {
    case 1:
      result = 0x656C7070416D7261;
      break;
    case 2:
      result = 0x6172656D6163;
      break;
    case 3:
      result = 0x436C6F72746E6F63;
      break;
    case 4:
      result = 0x6D6143746E6F7266;
      break;
    case 5:
      result = 1701670760;
      break;
    case 6:
      result = 1702131053;
      break;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x7461746E6569726FLL;
      break;
    case 9:
      result = 0x6962616863616572;
      break;
    case 10:
      result = 0x6544746F6F626572;
      break;
    case 11:
      result = 1769105779;
      break;
    case 12:
      result = 7565171;
      break;
    case 13:
      result = 0x6867696C746F7073;
      break;
    case 14:
      result = 0x6E67616964737973;
      break;
    case 15:
      result = 0x6F44656C67676F74;
      break;
    case 16:
      result = 0x69536F5465707974;
      break;
    case 17:
      result = 0xD000000000000012;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C0F2B218(uint64_t a1)
{
  v2 = sub_1C0F2D174();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B254(uint64_t a1)
{
  v2 = sub_1C0F2D174();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B290(uint64_t a1)
{
  v2 = sub_1C0F2D120();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B2CC(uint64_t a1)
{
  v2 = sub_1C0F2D120();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B308(uint64_t a1)
{
  v2 = sub_1C0F2D0CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B344(uint64_t a1)
{
  v2 = sub_1C0F2D0CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B388@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C0F31120(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C0F2B3BC(uint64_t a1)
{
  v2 = sub_1C0F2CB8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B3F8(uint64_t a1)
{
  v2 = sub_1C0F2CB8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B434(uint64_t a1)
{
  v2 = sub_1C0F2D078();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B470(uint64_t a1)
{
  v2 = sub_1C0F2D078();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B4AC(uint64_t a1)
{
  v2 = sub_1C0F2D024();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B4E8(uint64_t a1)
{
  v2 = sub_1C0F2D024();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B524(uint64_t a1)
{
  v2 = sub_1C0F2CFD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B560(uint64_t a1)
{
  v2 = sub_1C0F2CFD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B59C(uint64_t a1)
{
  v2 = sub_1C0F2CF7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B5D8(uint64_t a1)
{
  v2 = sub_1C0F2CF7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B614(uint64_t a1)
{
  v2 = sub_1C0F2CF28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B650(uint64_t a1)
{
  v2 = sub_1C0F2CF28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B68C(uint64_t a1)
{
  v2 = sub_1C0F2CED4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B6C8(uint64_t a1)
{
  v2 = sub_1C0F2CED4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B704(uint64_t a1)
{
  v2 = sub_1C0F2CE80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B740(uint64_t a1)
{
  v2 = sub_1C0F2CE80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B77C(uint64_t a1)
{
  v2 = sub_1C0F2CE2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B7B8(uint64_t a1)
{
  v2 = sub_1C0F2CE2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B7F4(uint64_t a1)
{
  v2 = sub_1C0F2CDD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B830(uint64_t a1)
{
  v2 = sub_1C0F2CDD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B86C(uint64_t a1)
{
  v2 = sub_1C0F2CD84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B8A8(uint64_t a1)
{
  v2 = sub_1C0F2CD84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B8E4(uint64_t a1)
{
  v2 = sub_1C0F2CD30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B920(uint64_t a1)
{
  v2 = sub_1C0F2CD30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B95C(uint64_t a1)
{
  v2 = sub_1C0F2CCDC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2B998(uint64_t a1)
{
  v2 = sub_1C0F2CCDC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2B9D4(uint64_t a1)
{
  v2 = sub_1C0F2CC88();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2BA10(uint64_t a1)
{
  v2 = sub_1C0F2CC88();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2BA4C(uint64_t a1)
{
  v2 = sub_1C0F2CC34();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2BA88(uint64_t a1)
{
  v2 = sub_1C0F2CC34();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F2BAC4(uint64_t a1)
{
  v2 = sub_1C0F2CBE0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F2BB00(uint64_t a1)
{
  v2 = sub_1C0F2CBE0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilitySystemAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE785D0, &qword_1C0F5BD20);
  v164 = *(v4 - 8);
  v165 = v4;
  MEMORY[0x1EEE9AC00](v4, v5, v6, v7);
  v163 = &v114 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE785D8, &qword_1C0F5BD28);
  v161 = *(v9 - 8);
  v162 = v9;
  MEMORY[0x1EEE9AC00](v9, v10, v11, v12);
  v160 = &v114 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE785E0, &qword_1C0F5BD30);
  v158 = *(v14 - 8);
  v159 = v14;
  MEMORY[0x1EEE9AC00](v14, v15, v16, v17);
  v157 = &v114 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE785E8, &qword_1C0F5BD38);
  v155 = *(v19 - 8);
  v156 = v19;
  MEMORY[0x1EEE9AC00](v19, v20, v21, v22);
  v154 = &v114 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE785F0, &qword_1C0F5BD40);
  v152 = *(v24 - 8);
  v153 = v24;
  MEMORY[0x1EEE9AC00](v24, v25, v26, v27);
  v151 = &v114 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE785F8, &qword_1C0F5BD48);
  v149 = *(v29 - 8);
  v150 = v29;
  MEMORY[0x1EEE9AC00](v29, v30, v31, v32);
  v148 = &v114 - v33;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78600, &qword_1C0F5BD50);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v34, v35, v36);
  v145 = &v114 - v37;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78608, &qword_1C0F5BD58);
  v143 = *(v144 - 8);
  MEMORY[0x1EEE9AC00](v144, v38, v39, v40);
  v142 = &v114 - v41;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78610, &qword_1C0F5BD60);
  v140 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141, v42, v43, v44);
  v139 = &v114 - v45;
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78618, &qword_1C0F5BD68);
  v137 = *(v138 - 8);
  MEMORY[0x1EEE9AC00](v138, v46, v47, v48);
  v136 = &v114 - v49;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78620, &qword_1C0F5BD70);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135, v50, v51, v52);
  v133 = &v114 - v53;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78628, &qword_1C0F5BD78);
  v131 = *(v132 - 8);
  MEMORY[0x1EEE9AC00](v132, v54, v55, v56);
  v130 = &v114 - v57;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78630, &qword_1C0F5BD80);
  v128 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129, v58, v59, v60);
  v127 = &v114 - v61;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78638, &qword_1C0F5BD88);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126, v62, v63, v64);
  v124 = &v114 - v65;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78640, &qword_1C0F5BD90);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123, v66, v67, v68);
  v121 = &v114 - v69;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78648, &qword_1C0F5BD98);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120, v70, v71, v72);
  v118 = &v114 - v73;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78650, &qword_1C0F5BDA0);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117, v74, v75, v76);
  v78 = &v114 - v77;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78658, &qword_1C0F5BDA8);
  v115 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79, v80, v81, v82);
  v84 = &v114 - v83;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78660, &qword_1C0F5BDB0);
  v85 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167, v86, v87, v88);
  v90 = &v114 - v89;
  v91 = *v2;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F2CB8C();
  v166 = v90;
  sub_1C0F508B0();
  v92 = (v85 + 8);
  switch(v91)
  {
    case 1:
      v169 = 1;
      sub_1C0F2D120();
      v107 = v166;
      v108 = v167;
      sub_1C0F50700();
      (*(v116 + 8))(v78, v117);
      return (*v92)(v107, v108);
    case 2:
      v169 = 2;
      sub_1C0F2D0CC();
      v104 = v118;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v99 = *(v119 + 8);
      v100 = v104;
      v101 = &v152;
      goto LABEL_21;
    case 3:
      v169 = 3;
      sub_1C0F2D078();
      v105 = v121;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v99 = *(v122 + 8);
      v100 = v105;
      v101 = &v155;
      goto LABEL_21;
    case 4:
      v169 = 4;
      sub_1C0F2D024();
      v102 = v124;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v99 = *(v125 + 8);
      v100 = v102;
      v101 = &v158;
      goto LABEL_21;
    case 5:
      v169 = 5;
      sub_1C0F2CFD0();
      v110 = v127;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v99 = *(v128 + 8);
      v100 = v110;
      v101 = &v161;
      goto LABEL_21;
    case 6:
      v169 = 6;
      sub_1C0F2CF7C();
      v111 = v130;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v99 = *(v131 + 8);
      v100 = v111;
      v101 = &v164;
      goto LABEL_21;
    case 7:
      v169 = 7;
      sub_1C0F2CF28();
      v106 = v133;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v99 = *(v134 + 8);
      v100 = v106;
      v101 = &v167;
      goto LABEL_21;
    case 8:
      v169 = 8;
      sub_1C0F2CED4();
      v113 = v136;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v99 = *(v137 + 8);
      v100 = v113;
      v101 = &v168;
      goto LABEL_21;
    case 9:
      v169 = 9;
      sub_1C0F2CE80();
      v103 = v139;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v99 = *(v140 + 8);
      v100 = v103;
      v101 = &v170;
      goto LABEL_21;
    case 10:
      v169 = 10;
      sub_1C0F2CE2C();
      v112 = v142;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v99 = *(v143 + 8);
      v100 = v112;
      v101 = &v171;
      goto LABEL_21;
    case 11:
      v169 = 11;
      sub_1C0F2CDD8();
      v98 = v145;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v99 = *(v146 + 8);
      v100 = v98;
      v101 = &v172;
LABEL_21:
      v99(v100, *(v101 - 32));
      return (*v92)(v94, v93);
    case 12:
      v169 = 12;
      sub_1C0F2CD84();
      v95 = v148;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v97 = v149;
      v96 = v150;
      goto LABEL_17;
    case 13:
      v169 = 13;
      sub_1C0F2CD30();
      v95 = v151;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v97 = v152;
      v96 = v153;
      goto LABEL_17;
    case 14:
      v169 = 14;
      sub_1C0F2CCDC();
      v95 = v154;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v97 = v155;
      v96 = v156;
      goto LABEL_17;
    case 15:
      v169 = 15;
      sub_1C0F2CC88();
      v95 = v157;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v97 = v158;
      v96 = v159;
      goto LABEL_17;
    case 16:
      v169 = 16;
      sub_1C0F2CC34();
      v95 = v160;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v97 = v161;
      v96 = v162;
      goto LABEL_17;
    case 17:
      v169 = 17;
      sub_1C0F2CBE0();
      v95 = v163;
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      v97 = v164;
      v96 = v165;
LABEL_17:
      (*(v97 + 8))(v95, v96);
      break;
    default:
      v169 = 0;
      sub_1C0F2D174();
      v94 = v166;
      v93 = v167;
      sub_1C0F50700();
      (*(v115 + 8))(v84, v79);
      break;
  }

  return (*v92)(v94, v93);
}

unint64_t sub_1C0F2CB8C()
{
  result = qword_1EBE78668;
  if (!qword_1EBE78668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78668);
  }

  return result;
}

unint64_t sub_1C0F2CBE0()
{
  result = qword_1EBE78670;
  if (!qword_1EBE78670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78670);
  }

  return result;
}

unint64_t sub_1C0F2CC34()
{
  result = qword_1EBE78678;
  if (!qword_1EBE78678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78678);
  }

  return result;
}

unint64_t sub_1C0F2CC88()
{
  result = qword_1EBE78680;
  if (!qword_1EBE78680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78680);
  }

  return result;
}

unint64_t sub_1C0F2CCDC()
{
  result = qword_1EBE78688;
  if (!qword_1EBE78688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78688);
  }

  return result;
}

unint64_t sub_1C0F2CD30()
{
  result = qword_1EBE78690;
  if (!qword_1EBE78690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78690);
  }

  return result;
}

unint64_t sub_1C0F2CD84()
{
  result = qword_1EBE78698;
  if (!qword_1EBE78698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78698);
  }

  return result;
}

unint64_t sub_1C0F2CDD8()
{
  result = qword_1EBE786A0;
  if (!qword_1EBE786A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786A0);
  }

  return result;
}

unint64_t sub_1C0F2CE2C()
{
  result = qword_1EBE786A8;
  if (!qword_1EBE786A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786A8);
  }

  return result;
}

unint64_t sub_1C0F2CE80()
{
  result = qword_1EBE786B0;
  if (!qword_1EBE786B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786B0);
  }

  return result;
}

unint64_t sub_1C0F2CED4()
{
  result = qword_1EBE786B8;
  if (!qword_1EBE786B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786B8);
  }

  return result;
}

unint64_t sub_1C0F2CF28()
{
  result = qword_1EBE786C0;
  if (!qword_1EBE786C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786C0);
  }

  return result;
}

unint64_t sub_1C0F2CF7C()
{
  result = qword_1EBE786C8;
  if (!qword_1EBE786C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786C8);
  }

  return result;
}

unint64_t sub_1C0F2CFD0()
{
  result = qword_1EBE786D0;
  if (!qword_1EBE786D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786D0);
  }

  return result;
}

unint64_t sub_1C0F2D024()
{
  result = qword_1EBE786D8;
  if (!qword_1EBE786D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786D8);
  }

  return result;
}

unint64_t sub_1C0F2D078()
{
  result = qword_1EBE786E0;
  if (!qword_1EBE786E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786E0);
  }

  return result;
}

unint64_t sub_1C0F2D0CC()
{
  result = qword_1EBE786E8;
  if (!qword_1EBE786E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786E8);
  }

  return result;
}

unint64_t sub_1C0F2D120()
{
  result = qword_1EBE786F0;
  if (!qword_1EBE786F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786F0);
  }

  return result;
}

unint64_t sub_1C0F2D174()
{
  result = qword_1EBE786F8;
  if (!qword_1EBE786F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE786F8);
  }

  return result;
}

uint64_t AccessibilitySystemAction.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t AccessibilitySystemAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v192 = a2;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78700, &qword_1C0F5BDB8);
  v174 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191, v3, v4, v5);
  v187 = v137 - v6;
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78708, &qword_1C0F5BDC0);
  v172 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173, v7, v8, v9);
  v186 = v137 - v10;
  v171 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78710, &qword_1C0F5BDC8);
  v170 = *(v171 - 8);
  MEMORY[0x1EEE9AC00](v171, v11, v12, v13);
  v185 = v137 - v14;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78718, &qword_1C0F5BDD0);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169, v15, v16, v17);
  v184 = v137 - v18;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78720, &qword_1C0F5BDD8);
  v166 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167, v19, v20, v21);
  v183 = v137 - v22;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78728, &qword_1C0F5BDE0);
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165, v23, v24, v25);
  v182 = v137 - v26;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78730, &qword_1C0F5BDE8);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163, v27, v28, v29);
  v181 = v137 - v30;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78738, &qword_1C0F5BDF0);
  v160 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161, v31, v32, v33);
  v180 = v137 - v34;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78740, &qword_1C0F5BDF8);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159, v35, v36, v37);
  v179 = v137 - v38;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78748, &qword_1C0F5BE00);
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v39, v40, v41);
  v178 = v137 - v42;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78750, &qword_1C0F5BE08);
  v154 = *(v155 - 8);
  MEMORY[0x1EEE9AC00](v155, v43, v44, v45);
  v175 = v137 - v46;
  v152 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78758, &qword_1C0F5BE10);
  v153 = *(v152 - 8);
  MEMORY[0x1EEE9AC00](v152, v47, v48, v49);
  v190 = v137 - v50;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78760, &qword_1C0F5BE18);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151, v51, v52, v53);
  v189 = v137 - v54;
  v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78768, &qword_1C0F5BE20);
  v148 = *(v149 - 8);
  MEMORY[0x1EEE9AC00](v149, v55, v56, v57);
  v177 = v137 - v58;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78770, &qword_1C0F5BE28);
  v146 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147, v59, v60, v61);
  v176 = v137 - v62;
  v145 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78778, &qword_1C0F5BE30);
  v144 = *(v145 - 8);
  MEMORY[0x1EEE9AC00](v145, v63, v64, v65);
  v188 = v137 - v66;
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78780, &qword_1C0F5BE38);
  v142 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143, v67, v68, v69);
  v71 = v137 - v70;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78788, &qword_1C0F5BE40);
  v141 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72, v73, v74, v75);
  v77 = v137 - v76;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78790, &unk_1C0F5BE48);
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78, v80, v81, v82);
  v84 = v137 - v83;
  v85 = a1[3];
  v194 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v85);
  sub_1C0F2CB8C();
  v86 = v193;
  sub_1C0F508A0();
  if (v86)
  {
LABEL_8:
    v104 = v194;
    return __swift_destroy_boxed_opaque_existential_0(v104);
  }

  v138 = v77;
  v137[1] = v72;
  v139 = v71;
  v87 = v188;
  v88 = v189;
  v89 = v190;
  v140 = 0;
  v91 = v191;
  v90 = v192;
  v193 = v79;
  v92 = sub_1C0F506F0();
  v93 = (2 * *(v92 + 16)) | 1;
  v195[0] = v92;
  v195[1] = v92 + 32;
  v196 = 0;
  v197 = v93;
  v94 = sub_1C0F13B7C();
  if (v196 != v197 >> 1)
  {
LABEL_6:
    v101 = sub_1C0F505C0();
    swift_allocError();
    v103 = v102;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0);
    *v103 = &type metadata for AccessibilitySystemAction;
    sub_1C0F50680();
    sub_1C0F505B0();
    (*(*(v101 - 8) + 104))(v103, *MEMORY[0x1E69E6AF8], v101);
    swift_willThrow();
LABEL_7:
    (*(v193 + 8))(v84, v78);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v95 = v94;
  switch(v94)
  {
    case 0:
      v200 = 0;
      sub_1C0F2D174();
      v96 = v138;
      v97 = v140;
      sub_1C0F50670();
      if (v97)
      {
        goto LABEL_7;
      }

      v98 = *(v141 + 8);
      v99 = v96;
      v100 = &v169;
      goto LABEL_44;
    case 1:
      v200 = 1;
      sub_1C0F2D120();
      v125 = v139;
      v126 = v140;
      sub_1C0F50670();
      if (v126)
      {
        goto LABEL_7;
      }

      v98 = *(v142 + 8);
      v99 = v125;
      v100 = &v175;
      goto LABEL_44;
    case 2:
      v200 = 2;
      sub_1C0F2D0CC();
      v118 = v140;
      sub_1C0F50670();
      if (v118)
      {
        goto LABEL_7;
      }

      v98 = *(v144 + 8);
      v99 = v87;
      v100 = &v177;
      goto LABEL_44;
    case 3:
      v200 = 3;
      sub_1C0F2D078();
      v121 = v176;
      v122 = v140;
      sub_1C0F50670();
      if (v122)
      {
        goto LABEL_7;
      }

      v98 = *(v146 + 8);
      v99 = v121;
      v100 = &v179;
      goto LABEL_44;
    case 4:
      v200 = 4;
      sub_1C0F2D024();
      v112 = v177;
      v113 = v140;
      sub_1C0F50670();
      if (v113)
      {
        goto LABEL_7;
      }

      v98 = *(v148 + 8);
      v99 = v112;
      v100 = &v181;
      goto LABEL_44;
    case 5:
      v200 = 5;
      sub_1C0F2CFD0();
      v129 = v140;
      sub_1C0F50670();
      if (v129)
      {
        goto LABEL_7;
      }

      v98 = *(v150 + 8);
      v99 = v88;
      v100 = &v183;
      goto LABEL_44;
    case 6:
      v200 = 6;
      sub_1C0F2CF7C();
      v132 = v140;
      sub_1C0F50670();
      if (v132)
      {
        goto LABEL_7;
      }

      v98 = *(v153 + 8);
      v99 = v89;
      v100 = &v184;
      goto LABEL_44;
    case 7:
      v200 = 7;
      sub_1C0F2CF28();
      v123 = v175;
      v124 = v140;
      sub_1C0F50670();
      if (v124)
      {
        goto LABEL_7;
      }

      v98 = *(v154 + 8);
      v99 = v123;
      v100 = &v187;
      goto LABEL_44;
    case 8:
      v200 = 8;
      sub_1C0F2CED4();
      v135 = v178;
      v136 = v140;
      sub_1C0F50670();
      if (v136)
      {
        goto LABEL_7;
      }

      v98 = *(v156 + 8);
      v99 = v135;
      v100 = &v189;
      goto LABEL_44;
    case 9:
      v200 = 9;
      sub_1C0F2CE80();
      v116 = v179;
      v117 = v140;
      sub_1C0F50670();
      if (v117)
      {
        goto LABEL_7;
      }

      v98 = *(v158 + 8);
      v99 = v116;
      v100 = &v191;
      goto LABEL_44;
    case 10:
      v200 = 10;
      sub_1C0F2CE2C();
      v133 = v180;
      v134 = v140;
      sub_1C0F50670();
      if (v134)
      {
        goto LABEL_7;
      }

      v98 = *(v160 + 8);
      v99 = v133;
      v100 = &v193;
      goto LABEL_44;
    case 11:
      v200 = 11;
      sub_1C0F2CDD8();
      v110 = v181;
      v111 = v140;
      sub_1C0F50670();
      if (v111)
      {
        goto LABEL_7;
      }

      v98 = *(v162 + 8);
      v99 = v110;
      v100 = v195;
      goto LABEL_44;
    case 12:
      v200 = 12;
      sub_1C0F2CD84();
      v114 = v182;
      v115 = v140;
      sub_1C0F50670();
      if (v115)
      {
        goto LABEL_7;
      }

      v98 = *(v164 + 8);
      v99 = v114;
      v100 = &v196;
      goto LABEL_44;
    case 13:
      v200 = 13;
      sub_1C0F2CD30();
      v130 = v183;
      v131 = v140;
      sub_1C0F50670();
      if (v131)
      {
        goto LABEL_7;
      }

      v98 = *(v166 + 8);
      v99 = v130;
      v100 = &v198;
      goto LABEL_44;
    case 14:
      v200 = 14;
      sub_1C0F2CCDC();
      v108 = v184;
      v109 = v140;
      sub_1C0F50670();
      if (v109)
      {
        goto LABEL_7;
      }

      v98 = *(v168 + 8);
      v99 = v108;
      v100 = &v199;
      goto LABEL_44;
    case 15:
      v200 = 15;
      sub_1C0F2CC88();
      v119 = v185;
      v120 = v140;
      sub_1C0F50670();
      if (v120)
      {
        goto LABEL_7;
      }

      v98 = *(v170 + 8);
      v99 = v119;
      v100 = &v201;
      goto LABEL_44;
    case 16:
      v200 = 16;
      sub_1C0F2CC34();
      v106 = v186;
      v107 = v140;
      sub_1C0F50670();
      if (v107)
      {
        goto LABEL_7;
      }

      v98 = *(v172 + 8);
      v99 = v106;
      v100 = &v202;
LABEL_44:
      v98(v99, *(v100 - 32));
      break;
    case 17:
      v200 = 17;
      sub_1C0F2CBE0();
      v127 = v187;
      v128 = v140;
      sub_1C0F50670();
      if (v128)
      {
        goto LABEL_7;
      }

      (*(v174 + 8))(v127, v91);
      break;
    default:
      goto LABEL_6;
  }

  (*(v193 + 8))(v84, v78);
  swift_unknownObjectRelease();
  v104 = v194;
  *v90 = v95;
  return __swift_destroy_boxed_opaque_existential_0(v104);
}

uint64_t AccessibilitySystemAction.Mute.imageKey.getter()
{
  if (*v0)
  {
    return 0x756D6E556E6F6349;
  }

  else
  {
    return 0x6574754D6E6F6349;
  }
}

uint64_t sub_1C0F2E88C()
{
  if (*v0)
  {
    return 0x756D6E556E6F6349;
  }

  else
  {
    return 0x6574754D6E6F6349;
  }
}

unint64_t AccessibilitySystemAction.OrientationLock.nameKey.getter()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t AccessibilitySystemAction.OrientationLock.imageKey.getter()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C0F2EA40()
{
  sub_1C0F50850();
  sub_1C0F50870();
  return sub_1C0F50890();
}

unint64_t sub_1C0F2EA88()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000012;
  }
}

unint64_t sub_1C0F2EAC4()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_1C0F2EB00(uint64_t a1)
{
  sub_1C0F50850();
  sub_1C0F50870();
  return sub_1C0F50890();
}

unint64_t sub_1C0F2EFAC()
{
  result = qword_1EBE78798;
  if (!qword_1EBE78798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78798);
  }

  return result;
}

unint64_t sub_1C0F2F004()
{
  result = qword_1EBE787A0;
  if (!qword_1EBE787A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE787A8, &qword_1C0F5BF10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787A0);
  }

  return result;
}

unint64_t sub_1C0F2F068(uint64_t a1)
{
  result = sub_1C0F2F090();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F090()
{
  result = qword_1EBE787B0;
  if (!qword_1EBE787B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787B0);
  }

  return result;
}

unint64_t sub_1C0F2F0E8()
{
  result = qword_1EBE787B8;
  if (!qword_1EBE787B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787B8);
  }

  return result;
}

unint64_t sub_1C0F2F13C(uint64_t a1)
{
  result = sub_1C0F2F164();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F164()
{
  result = qword_1EBE787C0;
  if (!qword_1EBE787C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787C0);
  }

  return result;
}

unint64_t sub_1C0F2F1BC()
{
  result = qword_1EBE787C8;
  if (!qword_1EBE787C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787C8);
  }

  return result;
}

unint64_t sub_1C0F2F210(uint64_t a1)
{
  result = sub_1C0F2F238();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F238()
{
  result = qword_1EBE787D0;
  if (!qword_1EBE787D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787D0);
  }

  return result;
}

unint64_t sub_1C0F2F290()
{
  result = qword_1EBE787D8;
  if (!qword_1EBE787D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787D8);
  }

  return result;
}

unint64_t sub_1C0F2F2E4(uint64_t a1)
{
  result = sub_1C0F2F30C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F30C()
{
  result = qword_1EBE787E0;
  if (!qword_1EBE787E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787E0);
  }

  return result;
}

unint64_t sub_1C0F2F364()
{
  result = qword_1EBE787E8;
  if (!qword_1EBE787E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787E8);
  }

  return result;
}

unint64_t sub_1C0F2F3B8(uint64_t a1)
{
  result = sub_1C0F2F3E0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F3E0()
{
  result = qword_1EBE787F0;
  if (!qword_1EBE787F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787F0);
  }

  return result;
}

unint64_t sub_1C0F2F438()
{
  result = qword_1EBE787F8;
  if (!qword_1EBE787F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE787F8);
  }

  return result;
}

unint64_t sub_1C0F2F48C(uint64_t a1)
{
  result = sub_1C0F2F4B4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F4B4()
{
  result = qword_1EBE78800;
  if (!qword_1EBE78800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78800);
  }

  return result;
}

unint64_t sub_1C0F2F50C()
{
  result = qword_1EBE78808;
  if (!qword_1EBE78808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78808);
  }

  return result;
}

unint64_t sub_1C0F2F560(uint64_t a1)
{
  result = sub_1C0F2F588();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F588()
{
  result = qword_1EBE78810;
  if (!qword_1EBE78810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78810);
  }

  return result;
}

unint64_t sub_1C0F2F5E0()
{
  result = qword_1EBE78818;
  if (!qword_1EBE78818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78818);
  }

  return result;
}

unint64_t sub_1C0F2F634(uint64_t a1)
{
  result = sub_1C0F2F65C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F65C()
{
  result = qword_1EBE78820;
  if (!qword_1EBE78820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78820);
  }

  return result;
}

unint64_t sub_1C0F2F6B4()
{
  result = qword_1EBE78828;
  if (!qword_1EBE78828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78828);
  }

  return result;
}

unint64_t sub_1C0F2F708(uint64_t a1)
{
  result = sub_1C0F2F730();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F730()
{
  result = qword_1EBE78830;
  if (!qword_1EBE78830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78830);
  }

  return result;
}

unint64_t sub_1C0F2F788()
{
  result = qword_1EBE78838;
  if (!qword_1EBE78838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78838);
  }

  return result;
}

unint64_t sub_1C0F2F7DC(uint64_t a1)
{
  result = sub_1C0F2F804();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F804()
{
  result = qword_1EBE78840;
  if (!qword_1EBE78840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78840);
  }

  return result;
}

unint64_t sub_1C0F2F85C()
{
  result = qword_1EBE78848;
  if (!qword_1EBE78848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78848);
  }

  return result;
}

unint64_t sub_1C0F2F8B0(uint64_t a1)
{
  result = sub_1C0F2F8D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F8D8()
{
  result = qword_1EBE78850;
  if (!qword_1EBE78850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78850);
  }

  return result;
}

unint64_t sub_1C0F2F930()
{
  result = qword_1EBE78858;
  if (!qword_1EBE78858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78858);
  }

  return result;
}

unint64_t sub_1C0F2F984(uint64_t a1)
{
  result = sub_1C0F2F9AC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2F9AC()
{
  result = qword_1EBE78860;
  if (!qword_1EBE78860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78860);
  }

  return result;
}

unint64_t sub_1C0F2FA04()
{
  result = qword_1EBE78868;
  if (!qword_1EBE78868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78868);
  }

  return result;
}

unint64_t sub_1C0F2FA58(uint64_t a1)
{
  result = sub_1C0F2FA80();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2FA80()
{
  result = qword_1EBE78870;
  if (!qword_1EBE78870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78870);
  }

  return result;
}

unint64_t sub_1C0F2FAD8()
{
  result = qword_1EBE78878;
  if (!qword_1EBE78878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78878);
  }

  return result;
}

unint64_t sub_1C0F2FB2C(uint64_t a1)
{
  result = sub_1C0F2FB54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2FB54()
{
  result = qword_1EBE78880;
  if (!qword_1EBE78880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78880);
  }

  return result;
}

unint64_t sub_1C0F2FBAC()
{
  result = qword_1EBE78888;
  if (!qword_1EBE78888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78888);
  }

  return result;
}

unint64_t sub_1C0F2FC00(uint64_t a1)
{
  result = sub_1C0F2FC28();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2FC28()
{
  result = qword_1EBE78890;
  if (!qword_1EBE78890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78890);
  }

  return result;
}

unint64_t sub_1C0F2FC80()
{
  result = qword_1EBE78898;
  if (!qword_1EBE78898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78898);
  }

  return result;
}

unint64_t sub_1C0F2FCD4(uint64_t a1)
{
  result = sub_1C0F2FCFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2FCFC()
{
  result = qword_1EBE788A0;
  if (!qword_1EBE788A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788A0);
  }

  return result;
}

unint64_t sub_1C0F2FD54()
{
  result = qword_1EBE788A8;
  if (!qword_1EBE788A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788A8);
  }

  return result;
}

unint64_t sub_1C0F2FDA8(uint64_t a1)
{
  result = sub_1C0F2FDD0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2FDD0()
{
  result = qword_1EBE788B0;
  if (!qword_1EBE788B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788B0);
  }

  return result;
}

unint64_t sub_1C0F2FE28()
{
  result = qword_1EBE788B8;
  if (!qword_1EBE788B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788B8);
  }

  return result;
}

unint64_t sub_1C0F2FE7C(uint64_t a1)
{
  result = sub_1C0F2FEA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F2FEA4()
{
  result = qword_1EBE788C0;
  if (!qword_1EBE788C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788C0);
  }

  return result;
}

unint64_t sub_1C0F2FEFC()
{
  result = qword_1EBE788C8;
  if (!qword_1EBE788C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788C8);
  }

  return result;
}

uint64_t sub_1C0F2FFF4(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C0F30148(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEF)
  {
    goto LABEL_17;
  }

  if (a2 + 17 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 17) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 17;
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

      return (*a1 | (v4 << 8)) - 17;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 17;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x12;
  v8 = v6 - 18;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1C0F301D8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 17 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 17) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEF)
  {
    v4 = 0;
  }

  if (a2 > 0xEE)
  {
    v5 = ((a2 - 239) >> 8) + 1;
    *result = a2 + 17;
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
    *result = a2 + 17;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0F303BC()
{
  result = qword_1EBE788D0;
  if (!qword_1EBE788D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788D0);
  }

  return result;
}

unint64_t sub_1C0F30414()
{
  result = qword_1EBE788D8;
  if (!qword_1EBE788D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788D8);
  }

  return result;
}

unint64_t sub_1C0F3046C()
{
  result = qword_1EBE788E0;
  if (!qword_1EBE788E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788E0);
  }

  return result;
}

unint64_t sub_1C0F304C4()
{
  result = qword_1EBE788E8;
  if (!qword_1EBE788E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788E8);
  }

  return result;
}

unint64_t sub_1C0F3051C()
{
  result = qword_1EBE788F0;
  if (!qword_1EBE788F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788F0);
  }

  return result;
}

unint64_t sub_1C0F30574()
{
  result = qword_1EBE788F8;
  if (!qword_1EBE788F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE788F8);
  }

  return result;
}

unint64_t sub_1C0F305CC()
{
  result = qword_1EBE78900;
  if (!qword_1EBE78900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78900);
  }

  return result;
}

unint64_t sub_1C0F30624()
{
  result = qword_1EBE78908;
  if (!qword_1EBE78908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78908);
  }

  return result;
}

unint64_t sub_1C0F3067C()
{
  result = qword_1EBE78910;
  if (!qword_1EBE78910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78910);
  }

  return result;
}

unint64_t sub_1C0F306D4()
{
  result = qword_1EBE78918;
  if (!qword_1EBE78918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78918);
  }

  return result;
}

unint64_t sub_1C0F3072C()
{
  result = qword_1EBE78920;
  if (!qword_1EBE78920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78920);
  }

  return result;
}

unint64_t sub_1C0F30784()
{
  result = qword_1EBE78928;
  if (!qword_1EBE78928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78928);
  }

  return result;
}

unint64_t sub_1C0F307DC()
{
  result = qword_1EBE78930;
  if (!qword_1EBE78930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78930);
  }

  return result;
}

unint64_t sub_1C0F30834()
{
  result = qword_1EBE78938;
  if (!qword_1EBE78938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78938);
  }

  return result;
}

unint64_t sub_1C0F3088C()
{
  result = qword_1EBE78940;
  if (!qword_1EBE78940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78940);
  }

  return result;
}

unint64_t sub_1C0F308E4()
{
  result = qword_1EBE78948;
  if (!qword_1EBE78948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78948);
  }

  return result;
}

unint64_t sub_1C0F3093C()
{
  result = qword_1EBE78950;
  if (!qword_1EBE78950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78950);
  }

  return result;
}

unint64_t sub_1C0F30994()
{
  result = qword_1EBE78958;
  if (!qword_1EBE78958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78958);
  }

  return result;
}

unint64_t sub_1C0F309EC()
{
  result = qword_1EBE78960;
  if (!qword_1EBE78960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78960);
  }

  return result;
}

unint64_t sub_1C0F30A44()
{
  result = qword_1EBE78968;
  if (!qword_1EBE78968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78968);
  }

  return result;
}

unint64_t sub_1C0F30A9C()
{
  result = qword_1EBE78970;
  if (!qword_1EBE78970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78970);
  }

  return result;
}

unint64_t sub_1C0F30AF4()
{
  result = qword_1EBE78978;
  if (!qword_1EBE78978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78978);
  }

  return result;
}

unint64_t sub_1C0F30B4C()
{
  result = qword_1EBE78980;
  if (!qword_1EBE78980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78980);
  }

  return result;
}

unint64_t sub_1C0F30BA4()
{
  result = qword_1EBE78988;
  if (!qword_1EBE78988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78988);
  }

  return result;
}

unint64_t sub_1C0F30BFC()
{
  result = qword_1EBE78990;
  if (!qword_1EBE78990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78990);
  }

  return result;
}

unint64_t sub_1C0F30C54()
{
  result = qword_1EBE78998;
  if (!qword_1EBE78998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78998);
  }

  return result;
}

unint64_t sub_1C0F30CAC()
{
  result = qword_1EBE789A0;
  if (!qword_1EBE789A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789A0);
  }

  return result;
}

unint64_t sub_1C0F30D04()
{
  result = qword_1EBE789A8;
  if (!qword_1EBE789A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789A8);
  }

  return result;
}

unint64_t sub_1C0F30D5C()
{
  result = qword_1EBE789B0;
  if (!qword_1EBE789B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789B0);
  }

  return result;
}

unint64_t sub_1C0F30DB4()
{
  result = qword_1EBE789B8;
  if (!qword_1EBE789B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789B8);
  }

  return result;
}

unint64_t sub_1C0F30E0C()
{
  result = qword_1EBE789C0;
  if (!qword_1EBE789C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789C0);
  }

  return result;
}

unint64_t sub_1C0F30E64()
{
  result = qword_1EBE789C8;
  if (!qword_1EBE789C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789C8);
  }

  return result;
}

unint64_t sub_1C0F30EBC()
{
  result = qword_1EBE789D0;
  if (!qword_1EBE789D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789D0);
  }

  return result;
}

unint64_t sub_1C0F30F14()
{
  result = qword_1EBE789D8;
  if (!qword_1EBE789D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789D8);
  }

  return result;
}

unint64_t sub_1C0F30F6C()
{
  result = qword_1EBE789E0;
  if (!qword_1EBE789E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789E0);
  }

  return result;
}

unint64_t sub_1C0F30FC4()
{
  result = qword_1EBE789E8;
  if (!qword_1EBE789E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789E8);
  }

  return result;
}

unint64_t sub_1C0F3101C()
{
  result = qword_1EBE789F0;
  if (!qword_1EBE789F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789F0);
  }

  return result;
}

unint64_t sub_1C0F31074()
{
  result = qword_1EBE789F8;
  if (!qword_1EBE789F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE789F8);
  }

  return result;
}

unint64_t sub_1C0F310CC()
{
  result = qword_1EBE78A00;
  if (!qword_1EBE78A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A00);
  }

  return result;
}

uint64_t sub_1C0F31120(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6374697753707061 && a2 == 0xEB00000000726568;
  if (v4 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C7070416D7261 && a2 == 0xEB00000000796150 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6172656D6163 && a2 == 0xE600000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x436C6F72746E6F63 && a2 == 0xED00007265746E65 || (sub_1C0F50790() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D6143746E6F7266 && a2 == 0xEB00000000617265 || (sub_1C0F50790() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1701670760 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 1702131053 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C0F676B0 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x7461746E6569726FLL && a2 == 0xEF6B636F4C6E6F69 || (sub_1C0F50790() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6962616863616572 && a2 == 0xEC0000007974696CLL || (sub_1C0F50790() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6544746F6F626572 && a2 == 0xEC00000065636976 || (sub_1C0F50790() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1769105779 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 7565171 && a2 == 0xE300000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6867696C746F7073 && a2 == 0xE900000000000074 || (sub_1C0F50790() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x6E67616964737973 && a2 == 0xEB0000000065736FLL || (sub_1C0F50790() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x6F44656C67676F74 && a2 == 0xEA00000000006B63 || (sub_1C0F50790() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x69536F5465707974 && a2 == 0xEA00000000006972 || (sub_1C0F50790() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C0F676D0 == a2)
  {

    return 17;
  }

  else
  {
    v6 = sub_1C0F50790();

    if (v6)
    {
      return 17;
    }

    else
    {
      return 18;
    }
  }
}

unint64_t static AccessibilityAssistiveTouchAction.resolveScrollAction(direction:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 24) = &type metadata for AccessibilityAssistiveTouchAction.Scroll;
  result = sub_1C0F31790();
  *(a2 + 32) = result;
  *a2 = v3;
  return result;
}

unint64_t sub_1C0F31790()
{
  result = qword_1EBE78A08;
  if (!qword_1EBE78A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A08);
  }

  return result;
}

uint64_t sub_1C0F317F8(uint64_t a1)
{
  v2 = sub_1C0F32244();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F31834(uint64_t a1)
{
  v2 = sub_1C0F32244();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F31870()
{
  v1 = *v0;
  v2 = 28789;
  v3 = 0x7468676972;
  v4 = 7368564;
  if (v1 != 4)
  {
    v4 = 0x6D6F74746F62;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1853321060;
  if (v1 != 1)
  {
    v5 = 1952867692;
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

uint64_t sub_1C0F31900@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C0F33794(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C0F31934(uint64_t a1)
{
  v2 = sub_1C0F321F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F31970(uint64_t a1)
{
  v2 = sub_1C0F321F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F319AC(uint64_t a1)
{
  v2 = sub_1C0F32394();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F319E8(uint64_t a1)
{
  v2 = sub_1C0F32394();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F31A24(uint64_t a1)
{
  v2 = sub_1C0F32340();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F31A60(uint64_t a1)
{
  v2 = sub_1C0F32340();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F31A9C(uint64_t a1)
{
  v2 = sub_1C0F322EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F31AD8(uint64_t a1)
{
  v2 = sub_1C0F322EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F31B14(uint64_t a1)
{
  v2 = sub_1C0F32298();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F31B50(uint64_t a1)
{
  v2 = sub_1C0F32298();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F31B8C(uint64_t a1)
{
  v2 = sub_1C0F323E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F31BC8(uint64_t a1)
{
  v2 = sub_1C0F323E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityAssistiveTouchAction.ScrollDirection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A10, &qword_1C0F5D880);
  v61 = *(v3 - 8);
  v62 = v3;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v60 = &v47 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A18, &qword_1C0F5D888);
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  v57 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A20, &qword_1C0F5D890);
  v55 = *(v13 - 8);
  v56 = v13;
  MEMORY[0x1EEE9AC00](v13, v14, v15, v16);
  v54 = &v47 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A28, &qword_1C0F5D898);
  v52 = *(v18 - 8);
  v53 = v18;
  MEMORY[0x1EEE9AC00](v18, v19, v20, v21);
  v51 = &v47 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A30, &qword_1C0F5D8A0);
  v49 = *(v23 - 8);
  v50 = v23;
  MEMORY[0x1EEE9AC00](v23, v24, v25, v26);
  v48 = &v47 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A38, &qword_1C0F5D8A8);
  v47 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28, v29, v30, v31);
  v33 = &v47 - v32;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A40, &qword_1C0F5D8B0);
  v34 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63, v35, v36, v37);
  v39 = &v47 - v38;
  v40 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F321F0();
  sub_1C0F508B0();
  v41 = (v34 + 8);
  if (v40 > 2)
  {
    if (v40 == 3)
    {
      v67 = 3;
      sub_1C0F322EC();
      v42 = v54;
      v43 = v63;
      sub_1C0F50700();
      v45 = v55;
      v44 = v56;
    }

    else if (v40 == 4)
    {
      v68 = 4;
      sub_1C0F32298();
      v42 = v57;
      v43 = v63;
      sub_1C0F50700();
      v45 = v58;
      v44 = v59;
    }

    else
    {
      v69 = 5;
      sub_1C0F32244();
      v42 = v60;
      v43 = v63;
      sub_1C0F50700();
      v45 = v61;
      v44 = v62;
    }

    goto LABEL_12;
  }

  if (v40)
  {
    if (v40 == 1)
    {
      v65 = 1;
      sub_1C0F32394();
      v42 = v48;
      v43 = v63;
      sub_1C0F50700();
      v45 = v49;
      v44 = v50;
    }

    else
    {
      v66 = 2;
      sub_1C0F32340();
      v42 = v51;
      v43 = v63;
      sub_1C0F50700();
      v45 = v52;
      v44 = v53;
    }

LABEL_12:
    (*(v45 + 8))(v42, v44);
    return (*v41)(v39, v43);
  }

  v64 = 0;
  sub_1C0F323E8();
  v43 = v63;
  sub_1C0F50700();
  (*(v47 + 8))(v33, v28);
  return (*v41)(v39, v43);
}

unint64_t sub_1C0F321F0()
{
  result = qword_1EBE78A48;
  if (!qword_1EBE78A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A48);
  }

  return result;
}

unint64_t sub_1C0F32244()
{
  result = qword_1EBE78A50;
  if (!qword_1EBE78A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A50);
  }

  return result;
}

unint64_t sub_1C0F32298()
{
  result = qword_1EBE78A58;
  if (!qword_1EBE78A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A58);
  }

  return result;
}

unint64_t sub_1C0F322EC()
{
  result = qword_1EBE78A60;
  if (!qword_1EBE78A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A60);
  }

  return result;
}

unint64_t sub_1C0F32340()
{
  result = qword_1EBE78A68;
  if (!qword_1EBE78A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A68);
  }

  return result;
}

unint64_t sub_1C0F32394()
{
  result = qword_1EBE78A70;
  if (!qword_1EBE78A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A70);
  }

  return result;
}

unint64_t sub_1C0F323E8()
{
  result = qword_1EBE78A78;
  if (!qword_1EBE78A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78A78);
  }

  return result;
}

uint64_t AccessibilityAssistiveTouchAction.ScrollDirection.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v73 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A80, &qword_1C0F5D8B8);
  v70 = *(v3 - 8);
  v71 = v3;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v76 = &v60 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A88, &qword_1C0F5D8C0);
  v9 = *(v8 - 8);
  v68 = v8;
  v69 = v9;
  MEMORY[0x1EEE9AC00](v8, v10, v11, v12);
  v75 = &v60 - v13;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A90, &qword_1C0F5D8C8);
  v67 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62, v14, v15, v16);
  v74 = &v60 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78A98, &qword_1C0F5D8D0);
  v65 = *(v18 - 8);
  v66 = v18;
  MEMORY[0x1EEE9AC00](v18, v19, v20, v21);
  v72 = &v60 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78AA0, &qword_1C0F5D8D8);
  v63 = *(v23 - 8);
  v64 = v23;
  MEMORY[0x1EEE9AC00](v23, v24, v25, v26);
  v28 = &v60 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78AA8, &qword_1C0F5D8E0);
  v61 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29, v30, v31, v32);
  v34 = &v60 - v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78AB0, &unk_1C0F5D8E8);
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35, v37, v38, v39);
  v41 = &v60 - v40;
  v42 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v42);
  sub_1C0F321F0();
  v43 = v77;
  sub_1C0F508A0();
  if (!v43)
  {
    v44 = v34;
    v60 = v29;
    v77 = v28;
    v46 = v74;
    v45 = v75;
    v47 = v76;
    v48 = sub_1C0F506F0();
    v49 = (2 * *(v48 + 16)) | 1;
    v79 = v48;
    v80 = v48 + 32;
    v81 = 0;
    v82 = v49;
    v50 = sub_1C0F13BB0();
    v51 = v41;
    if (v50 == 6 || v81 != v82 >> 1)
    {
      v55 = sub_1C0F505C0();
      swift_allocError();
      v57 = v56;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0);
      *v57 = &type metadata for AccessibilityAssistiveTouchAction.ScrollDirection;
      sub_1C0F50680();
      sub_1C0F505B0();
      (*(*(v55 - 8) + 104))(v57, *MEMORY[0x1E69E6AF8], v55);
      swift_willThrow();
      (*(v36 + 8))(v41, v35);
      swift_unknownObjectRelease();
    }

    else
    {
      v83 = v50;
      if (v50 > 2u)
      {
        v59 = v73;
        if (v50 == 3)
        {
          v84 = 3;
          sub_1C0F322EC();
          sub_1C0F50670();
          (*(v67 + 8))(v46, v62);
        }

        else if (v50 == 4)
        {
          v84 = 4;
          sub_1C0F32298();
          sub_1C0F50670();
          (*(v69 + 8))(v45, v68);
        }

        else
        {
          v84 = 5;
          sub_1C0F32244();
          sub_1C0F50670();
          (*(v70 + 8))(v47, v71);
        }

        (*(v36 + 8))(v51, v35);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v50)
        {
          if (v50 == 1)
          {
            v84 = 1;
            sub_1C0F32394();
            v52 = v77;
            sub_1C0F50670();
            v54 = v63;
            v53 = v64;
          }

          else
          {
            v84 = 2;
            sub_1C0F32340();
            v52 = v72;
            sub_1C0F50670();
            v54 = v65;
            v53 = v66;
          }

          (*(v54 + 8))(v52, v53);
        }

        else
        {
          v84 = 0;
          sub_1C0F323E8();
          sub_1C0F50670();
          (*(v61 + 8))(v44, v60);
        }

        (*(v36 + 8))(v41, v35);
        swift_unknownObjectRelease();
        v59 = v73;
      }

      *v59 = v83;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v78);
}

uint64_t AccessibilityAssistiveTouchAction.Scroll.nameKey.getter()
{
  v1 = *v0;
  v2 = 0x552D6C6C6F726353;
  v3 = 0x522D6C6C6F726353;
  v4 = 0x545F4C4C4F524353;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x442D6C6C6F726353;
  if (v1 != 1)
  {
    v5 = 0x4C2D6C6C6F726353;
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

unint64_t AccessibilityAssistiveTouchAction.Scroll.imageKey.getter()
{
  v1 = 0xD00000000000001ALL;
  v2 = *v0;
  v3 = 0xD00000000000001ELL;
  if (v2 == 4)
  {
    v3 = 0xD00000000000001BLL;
  }

  if (v2 == 3)
  {
    v4 = 0xD00000000000001BLL;
  }

  else
  {
    v4 = v3;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1C0F32E1C()
{
  v1 = *v0;
  v2 = 0x552D6C6C6F726353;
  v3 = 0x522D6C6C6F726353;
  v4 = 0x545F4C4C4F524353;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x442D6C6C6F726353;
  if (v1 != 1)
  {
    v5 = 0x4C2D6C6C6F726353;
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

unint64_t sub_1C0F32F0C()
{
  result = qword_1EBE78AB8;
  if (!qword_1EBE78AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AB8);
  }

  return result;
}

unint64_t sub_1C0F32F64()
{
  result = qword_1EBE78AC0;
  if (!qword_1EBE78AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE78AC8, &qword_1C0F5D960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AC0);
  }

  return result;
}

unint64_t sub_1C0F32FC8(uint64_t a1)
{
  result = sub_1C0F32FF0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F32FF0()
{
  result = qword_1EBE78AD0;
  if (!qword_1EBE78AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AD0);
  }

  return result;
}

unint64_t sub_1C0F33048()
{
  result = qword_1EBE78AD8;
  if (!qword_1EBE78AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AD8);
  }

  return result;
}

uint64_t sub_1C0F330BC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1C0F3314C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1C0F33270()
{
  result = qword_1EBE78AE0;
  if (!qword_1EBE78AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AE0);
  }

  return result;
}

unint64_t sub_1C0F332C8()
{
  result = qword_1EBE78AE8;
  if (!qword_1EBE78AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AE8);
  }

  return result;
}

unint64_t sub_1C0F33320()
{
  result = qword_1EBE78AF0;
  if (!qword_1EBE78AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AF0);
  }

  return result;
}

unint64_t sub_1C0F33378()
{
  result = qword_1EBE78AF8;
  if (!qword_1EBE78AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78AF8);
  }

  return result;
}

unint64_t sub_1C0F333D0()
{
  result = qword_1EBE78B00;
  if (!qword_1EBE78B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B00);
  }

  return result;
}

unint64_t sub_1C0F33428()
{
  result = qword_1EBE78B08;
  if (!qword_1EBE78B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B08);
  }

  return result;
}

unint64_t sub_1C0F33480()
{
  result = qword_1EBE78B10;
  if (!qword_1EBE78B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B10);
  }

  return result;
}

unint64_t sub_1C0F334D8()
{
  result = qword_1EBE78B18;
  if (!qword_1EBE78B18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B18);
  }

  return result;
}

unint64_t sub_1C0F33530()
{
  result = qword_1EBE78B20;
  if (!qword_1EBE78B20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B20);
  }

  return result;
}

unint64_t sub_1C0F33588()
{
  result = qword_1EBE78B28;
  if (!qword_1EBE78B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B28);
  }

  return result;
}

unint64_t sub_1C0F335E0()
{
  result = qword_1EBE78B30;
  if (!qword_1EBE78B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B30);
  }

  return result;
}

unint64_t sub_1C0F33638()
{
  result = qword_1EBE78B38;
  if (!qword_1EBE78B38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B38);
  }

  return result;
}

unint64_t sub_1C0F33690()
{
  result = qword_1EBE78B40;
  if (!qword_1EBE78B40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B40);
  }

  return result;
}

unint64_t sub_1C0F336E8()
{
  result = qword_1EBE78B48;
  if (!qword_1EBE78B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B48);
  }

  return result;
}

unint64_t sub_1C0F33740()
{
  result = qword_1EBE78B50;
  if (!qword_1EBE78B50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B50);
  }

  return result;
}

uint64_t sub_1C0F33794(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 28789 && a2 == 0xE200000000000000;
  if (v3 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1853321060 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1952867692 && a2 == 0xE400000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 7368564 && a2 == 0xE300000000000000 || (sub_1C0F50790() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6D6F74746F62 && a2 == 0xE600000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1C0F50790();

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

unint64_t sub_1C0F339A8()
{
  v1 = 0x7469617274726F70;
  if (*v0)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x70616373646E616CLL;
  }
}

uint64_t sub_1C0F33A44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C0F3513C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C0F33A6C(uint64_t a1)
{
  v2 = sub_1C0F34108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F33AA8(uint64_t a1)
{
  v2 = sub_1C0F34108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F33AE4(uint64_t a1)
{
  v2 = sub_1C0F341B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F33B20(uint64_t a1)
{
  v2 = sub_1C0F341B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F33B5C(uint64_t a1)
{
  v2 = sub_1C0F3415C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F33B98(uint64_t a1)
{
  v2 = sub_1C0F3415C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F33BD4(uint64_t a1)
{
  v2 = sub_1C0F34258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F33C10(uint64_t a1)
{
  v2 = sub_1C0F34258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F33C4C(uint64_t a1)
{
  v2 = sub_1C0F34204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F33C88(uint64_t a1)
{
  v2 = sub_1C0F34204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityAssistiveTouchAction.Orientation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78B58, &qword_1C0F5E000);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v45 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78B60, &qword_1C0F5E008);
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  v42 = &v37 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78B68, &qword_1C0F5E010);
  v40 = *(v13 - 8);
  v41 = v13;
  MEMORY[0x1EEE9AC00](v13, v14, v15, v16);
  v39 = &v37 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78B70, &qword_1C0F5E018);
  v37 = *(v18 - 8);
  v38 = v18;
  MEMORY[0x1EEE9AC00](v18, v19, v20, v21);
  v23 = &v37 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78B78, &qword_1C0F5E020);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24, v26, v27, v28);
  v30 = &v37 - v29;
  v31 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F34108();
  sub_1C0F508B0();
  v32 = (v25 + 8);
  if (v31 > 1)
  {
    if (v31 == 2)
    {
      v50 = 2;
      sub_1C0F341B0();
      v33 = v42;
      sub_1C0F50700();
      v35 = v43;
      v34 = v44;
    }

    else
    {
      v51 = 3;
      sub_1C0F3415C();
      v33 = v45;
      sub_1C0F50700();
      v35 = v46;
      v34 = v47;
    }

    goto LABEL_8;
  }

  if (v31)
  {
    v49 = 1;
    sub_1C0F34204();
    v33 = v39;
    sub_1C0F50700();
    v35 = v40;
    v34 = v41;
LABEL_8:
    (*(v35 + 8))(v33, v34);
    return (*v32)(v30, v24);
  }

  v48 = 0;
  sub_1C0F34258();
  sub_1C0F50700();
  (*(v37 + 8))(v23, v38);
  return (*v32)(v30, v24);
}

unint64_t sub_1C0F34108()
{
  result = qword_1EBE78B80;
  if (!qword_1EBE78B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B80);
  }

  return result;
}

unint64_t sub_1C0F3415C()
{
  result = qword_1EBE78B88;
  if (!qword_1EBE78B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B88);
  }

  return result;
}

unint64_t sub_1C0F341B0()
{
  result = qword_1EBE78B90;
  if (!qword_1EBE78B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B90);
  }

  return result;
}

unint64_t sub_1C0F34204()
{
  result = qword_1EBE78B98;
  if (!qword_1EBE78B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78B98);
  }

  return result;
}

unint64_t sub_1C0F34258()
{
  result = qword_1EBE78BA0;
  if (!qword_1EBE78BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78BA0);
  }

  return result;
}

uint64_t AccessibilityAssistiveTouchAction.Orientation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v60 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78BA8, &qword_1C0F5E028);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56, v3, v4, v5);
  v59 = &v49 - v6;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78BB0, &qword_1C0F5E030);
  v53 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57, v7, v8, v9);
  v58 = &v49 - v10;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78BB8, &qword_1C0F5E038);
  v51 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55, v11, v12, v13);
  v15 = &v49 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78BC0, &qword_1C0F5E040);
  v52 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v17, v18, v19);
  v21 = &v49 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78BC8, &unk_1C0F5E048);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22, v24, v25, v26);
  v28 = &v49 - v27;
  v29 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v29);
  sub_1C0F34108();
  v30 = v61;
  sub_1C0F508A0();
  if (!v30)
  {
    v31 = v21;
    v49 = v16;
    v50 = 0;
    v32 = v15;
    v33 = v58;
    v34 = v59;
    v61 = v23;
    v35 = v60;
    v36 = v28;
    v37 = sub_1C0F506F0();
    v38 = (2 * *(v37 + 16)) | 1;
    v63 = v37;
    v64 = v37 + 32;
    v65 = 0;
    v66 = v38;
    v39 = sub_1C0F16508();
    if (v39 == 4 || v65 != v66 >> 1)
    {
      v41 = sub_1C0F505C0();
      swift_allocError();
      v43 = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0);
      *v43 = &type metadata for AccessibilityAssistiveTouchAction.Orientation;
      sub_1C0F50680();
      sub_1C0F505B0();
      (*(*(v41 - 8) + 104))(v43, *MEMORY[0x1E69E6AF8], v41);
      swift_willThrow();
LABEL_9:
      (*(v61 + 8))(v28, v22);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v62);
    }

    v67 = v39;
    if (v39 <= 1u)
    {
      if (v39)
      {
        v68 = 1;
        sub_1C0F34204();
        v47 = v50;
        sub_1C0F50670();
        if (!v47)
        {
          (*(v51 + 8))(v32, v55);
          goto LABEL_17;
        }
      }

      else
      {
        v68 = 0;
        sub_1C0F34258();
        v40 = v50;
        sub_1C0F50670();
        if (!v40)
        {
          (*(v52 + 8))(v31, v49);
LABEL_17:
          (*(v61 + 8))(v28, v22);
LABEL_22:
          swift_unknownObjectRelease();
          *v35 = v67;
          return __swift_destroy_boxed_opaque_existential_0(v62);
        }
      }

      goto LABEL_9;
    }

    v45 = v61;
    if (v39 == 2)
    {
      v68 = 2;
      sub_1C0F341B0();
      v46 = v50;
      sub_1C0F50670();
      if (!v46)
      {
        (*(v53 + 8))(v33, v57);
LABEL_21:
        (*(v45 + 8))(v36, v22);
        goto LABEL_22;
      }
    }

    else
    {
      v68 = 3;
      sub_1C0F3415C();
      v48 = v50;
      sub_1C0F50670();
      if (!v48)
      {
        (*(v54 + 8))(v34, v56);
        goto LABEL_21;
      }
    }

    (*(v45 + 8))(v36, v22);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0(v62);
}

unint64_t static AccessibilityAssistiveTouchAction.resolveRotateScreenAction(orientation:with:)@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  *(a2 + 24) = &type metadata for AccessibilityAssistiveTouchAction.RotateScreen;
  result = sub_1C0F349B4();
  *(a2 + 32) = result;
  *a2 = v3;
  return result;
}

unint64_t sub_1C0F349B4()
{
  result = qword_1EBE78BD0;
  if (!qword_1EBE78BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78BD0);
  }

  return result;
}

unint64_t AccessibilityAssistiveTouchAction.RotateScreen.nameKey.getter()
{
  v1 = 0xD000000000000014;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

unint64_t sub_1C0F34ADC()
{
  v1 = 0xD000000000000014;
  v2 = 0xD00000000000001ALL;
  if (*v0 != 2)
  {
    v2 = 0xD00000000000001BLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000017;
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

unint64_t sub_1C0F34B74()
{
  result = qword_1EBE78BD8;
  if (!qword_1EBE78BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78BD8);
  }

  return result;
}

unint64_t sub_1C0F34BCC()
{
  result = qword_1EBE78BE0;
  if (!qword_1EBE78BE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE78BE8, &qword_1C0F5E0C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78BE0);
  }

  return result;
}

unint64_t sub_1C0F34C30(uint64_t a1)
{
  result = sub_1C0F34C58();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C0F34C58()
{
  result = qword_1EBE78BF0;
  if (!qword_1EBE78BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78BF0);
  }

  return result;
}

unint64_t sub_1C0F34CB0()
{
  result = qword_1EBE78BF8;
  if (!qword_1EBE78BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78BF8);
  }

  return result;
}

unint64_t sub_1C0F34D78()
{
  result = qword_1EBE78C00;
  if (!qword_1EBE78C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C00);
  }

  return result;
}

unint64_t sub_1C0F34DD0()
{
  result = qword_1EBE78C08;
  if (!qword_1EBE78C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C08);
  }

  return result;
}

unint64_t sub_1C0F34E28()
{
  result = qword_1EBE78C10;
  if (!qword_1EBE78C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C10);
  }

  return result;
}

unint64_t sub_1C0F34E80()
{
  result = qword_1EBE78C18;
  if (!qword_1EBE78C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C18);
  }

  return result;
}

unint64_t sub_1C0F34ED8()
{
  result = qword_1EBE78C20;
  if (!qword_1EBE78C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C20);
  }

  return result;
}

unint64_t sub_1C0F34F30()
{
  result = qword_1EBE78C28;
  if (!qword_1EBE78C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C28);
  }

  return result;
}

unint64_t sub_1C0F34F88()
{
  result = qword_1EBE78C30;
  if (!qword_1EBE78C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C30);
  }

  return result;
}

unint64_t sub_1C0F34FE0()
{
  result = qword_1EBE78C38;
  if (!qword_1EBE78C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C38);
  }

  return result;
}

unint64_t sub_1C0F35038()
{
  result = qword_1EBE78C40;
  if (!qword_1EBE78C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C40);
  }

  return result;
}

unint64_t sub_1C0F35090()
{
  result = qword_1EBE78C48;
  if (!qword_1EBE78C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C48);
  }

  return result;
}

unint64_t sub_1C0F350E8()
{
  result = qword_1EBE78C50;
  if (!qword_1EBE78C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C50);
  }

  return result;
}

uint64_t sub_1C0F3513C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7469617274726F70 && a2 == 0xEA00000000007055;
  if (v4 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001C0F67850 == a2 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70616373646E616CLL && a2 == 0xED00007466654C65 || (sub_1C0F50790() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70616373646E616CLL && a2 == 0xEE00746867695265)
  {

    return 3;
  }

  else
  {
    v6 = sub_1C0F50790();

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

uint64_t sub_1C0F352D8(uint64_t a1)
{
  v2 = sub_1C0F36184();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F35314(uint64_t a1)
{
  v2 = sub_1C0F36184();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F35350()
{
  if (*v0)
  {
    return 0x7473655474696E75;
  }

  else
  {
    return 0x7669747369737361;
  }
}

uint64_t sub_1C0F35398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7669747369737361 && a2 == 0xEE006863756F5465;
  if (v6 || (sub_1C0F50790() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7473655474696E75 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C0F50790();

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

uint64_t sub_1C0F3547C(uint64_t a1)
{
  v2 = sub_1C0F360DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F354B8(uint64_t a1)
{
  v2 = sub_1C0F360DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F35500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C0F50790();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C0F35580(uint64_t a1)
{
  v2 = sub_1C0F36130();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F355BC(uint64_t a1)
{
  v2 = sub_1C0F36130();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityActionClient.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78C58, &qword_1C0F5E680);
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x1EEE9AC00](v3, v4, v5, v6);
  v8 = &v25 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78C60, &qword_1C0F5E688);
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x1EEE9AC00](v9, v10, v11, v12);
  v26 = &v25 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78C68, &qword_1C0F5E690);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16, v17, v18);
  v20 = &v25 - v19;
  v21 = v1[1];
  v29 = *v1;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F360DC();
  sub_1C0F508B0();
  if (v21)
  {
    v33 = 1;
    sub_1C0F36130();
    sub_1C0F50700();
    v22 = v31;
    sub_1C0F50740();
    (*(v30 + 8))(v8, v22);
  }

  else
  {
    v32 = 0;
    sub_1C0F36184();
    v24 = v26;
    sub_1C0F50700();
    (*(v27 + 8))(v24, v28);
  }

  return (*(v15 + 8))(v20, v14);
}

uint64_t AccessibilityActionClient.hash(into:)(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1C68EA070](0);
  }

  MEMORY[0x1C68EA070](1);

  return sub_1C0F50200();
}

uint64_t AccessibilityActionClient.hashValue.getter()
{
  v1 = *(v0 + 8);
  sub_1C0F50850();
  if (v1)
  {
    MEMORY[0x1C68EA070](1);
    sub_1C0F50200();
  }

  else
  {
    MEMORY[0x1C68EA070](0);
  }

  return sub_1C0F50890();
}

uint64_t AccessibilityActionClient.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v42 = a2;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78C88, &qword_1C0F5E698);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v3, v4, v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78C90, &qword_1C0F5E6A0);
  v40 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v9, v10, v11);
  v13 = &v38 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78C98, &unk_1C0F5E6A8);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16, v17, v18);
  v20 = &v38 - v19;
  v21 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v21);
  sub_1C0F360DC();
  v22 = v44;
  sub_1C0F508A0();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_0(v45);
  }

  v39 = v8;
  v23 = v43;
  v44 = v15;
  v24 = sub_1C0F506F0();
  v25 = (2 * *(v24 + 16)) | 1;
  v46 = v24;
  v47 = v24 + 32;
  v48 = 0;
  v49 = v25;
  v26 = sub_1C0F13BE4();
  if (v26 == 2 || v48 != v49 >> 1)
  {
    v31 = sub_1C0F505C0();
    swift_allocError();
    v33 = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0);
    *v33 = &type metadata for AccessibilityActionClient;
    sub_1C0F50680();
    sub_1C0F505B0();
    (*(*(v31 - 8) + 104))(v33, *MEMORY[0x1E69E6AF8], v31);
    swift_willThrow();
    (*(v44 + 8))(v20, v14);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v45);
  }

  if (v26)
  {
    v50 = 1;
    sub_1C0F36130();
    sub_1C0F50670();
    v27 = v44;
    v28 = v42;
    v29 = sub_1C0F506C0();
    v30 = v7;
    v37 = v36;
    (*(v41 + 8))(v30, v23);
    (*(v27 + 8))(v20, v14);
    swift_unknownObjectRelease();
  }

  else
  {
    v50 = 0;
    sub_1C0F36184();
    sub_1C0F50670();
    v29 = 0;
    v35 = v44;
    v28 = v42;
    (*(v40 + 8))(v13, v39);
    (*(v35 + 8))(v20, v14);
    swift_unknownObjectRelease();
    v37 = 0;
  }

  *v28 = v29;
  v28[1] = v37;
  return __swift_destroy_boxed_opaque_existential_0(v45);
}

uint64_t sub_1C0F35F10()
{
  v1 = *(v0 + 8);
  sub_1C0F50850();
  if (v1)
  {
    MEMORY[0x1C68EA070](1);
    sub_1C0F50200();
  }

  else
  {
    MEMORY[0x1C68EA070](0);
  }

  return sub_1C0F50890();
}

uint64_t sub_1C0F35F80(uint64_t a1)
{
  if (!*(v1 + 8))
  {
    return MEMORY[0x1C68EA070](0);
  }

  MEMORY[0x1C68EA070](1);

  return sub_1C0F50200();
}

uint64_t sub_1C0F35FF8(uint64_t a1)
{
  v2 = *(v1 + 8);
  sub_1C0F50850();
  if (v2)
  {
    MEMORY[0x1C68EA070](1);
    sub_1C0F50200();
  }

  else
  {
    MEMORY[0x1C68EA070](0);
  }

  return sub_1C0F50890();
}

uint64_t _s26AccessibilitySharedSupport0A12ActionClientO2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = a1[1];
  v5 = a2[1];
  if (!v4)
  {
    if (!v5)
    {
      swift_bridgeObjectRelease_n();
      return 1;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  if (*a1 == *a2 && v4 == v5)
  {
    return 1;
  }

  return sub_1C0F50790();
}

unint64_t sub_1C0F360DC()
{
  result = qword_1EBE78C70;
  if (!qword_1EBE78C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C70);
  }

  return result;
}

unint64_t sub_1C0F36130()
{
  result = qword_1EBE78C78;
  if (!qword_1EBE78C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C78);
  }

  return result;
}

unint64_t sub_1C0F36184()
{
  result = qword_1EBE78C80;
  if (!qword_1EBE78C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78C80);
  }

  return result;
}

unint64_t sub_1C0F361DC()
{
  result = qword_1EBE78CA0;
  if (!qword_1EBE78CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CA0);
  }

  return result;
}

uint64_t sub_1C0F36230(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C0F36280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1C0F362D4(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_1C0F36330()
{
  result = qword_1EBE78CA8;
  if (!qword_1EBE78CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CA8);
  }

  return result;
}

unint64_t sub_1C0F36388()
{
  result = qword_1EBE78CB0;
  if (!qword_1EBE78CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CB0);
  }

  return result;
}

unint64_t sub_1C0F363E0()
{
  result = qword_1EBE78CB8;
  if (!qword_1EBE78CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CB8);
  }

  return result;
}

unint64_t sub_1C0F36438()
{
  result = qword_1EBE78CC0;
  if (!qword_1EBE78CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CC0);
  }

  return result;
}

unint64_t sub_1C0F36490()
{
  result = qword_1EBE78CC8;
  if (!qword_1EBE78CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CC8);
  }

  return result;
}

unint64_t sub_1C0F364E8()
{
  result = qword_1EBE78CD0;
  if (!qword_1EBE78CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CD0);
  }

  return result;
}

unint64_t sub_1C0F36540()
{
  result = qword_1EBE78CD8;
  if (!qword_1EBE78CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CD8);
  }

  return result;
}

unint64_t sub_1C0F36598()
{
  result = qword_1EBE78CE0;
  if (!qword_1EBE78CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78CE0);
  }

  return result;
}

char *sub_1C0F365EC()
{
  v0 = MEMORY[0x1E69E7CC0];
  v28 = MEMORY[0x1E69E7CC0];
  sub_1C0EF8EEC(0, 12, 0);
  v1 = 0;
  v2 = v28;
  v3 = v28[2];
  do
  {
    v4 = byte_1F4053BD8[v1 + 32];
    v5 = v28[3];
    if (v3 >= v5 >> 1)
    {
      sub_1C0EF8EEC((v5 > 1), v3 + 1, 1);
    }

    ++v1;
    v28[2] = v3 + 1;
    *(v28 + v3++ + 32) = v4;
  }

  while (v1 != 12);
  sub_1C0EF8EEC(0, 6, 0);
  v6 = v0;
  v8 = *(v0 + 16);
  v7 = *(v0 + 24);
  v9 = v7 >> 1;
  v10 = v8 + 1;
  if (v7 >> 1 <= v8)
  {
    sub_1C0EF8EEC((v7 > 1), v8 + 1, 1);
    v6 = v0;
    v7 = *(v0 + 24);
    v9 = v7 >> 1;
  }

  *(v6 + 16) = v10;
  *(v6 + v8 + 32) = 0x80;
  v11 = v8 + 2;
  if (v9 < (v8 + 2))
  {
    sub_1C0EF8EEC((v7 > 1), v8 + 2, 1);
    v6 = v0;
    v7 = *(v0 + 24);
    v9 = v7 >> 1;
  }

  *(v6 + 16) = v11;
  *(v6 + v10 + 32) = -127;
  v12 = v8 + 3;
  if (v9 < (v8 + 3))
  {
    sub_1C0EF8EEC((v7 > 1), v8 + 3, 1);
  }

  v13 = v0;
  *(v0 + 16) = v12;
  *(v0 + v11 + 32) = -126;
  v14 = *(v0 + 24);
  v15 = v14 >> 1;
  v16 = v8 + 4;
  if ((v14 >> 1) < (v8 + 4))
  {
    sub_1C0EF8EEC((v14 > 1), v8 + 4, 1);
    v13 = v0;
    v14 = *(v0 + 24);
    v15 = v14 >> 1;
  }

  *(v13 + 16) = v16;
  *(v13 + v12 + 32) = -125;
  v17 = v8 + 5;
  if (v15 < (v8 + 5))
  {
    sub_1C0EF8EEC((v14 > 1), v8 + 5, 1);
    v13 = v0;
    v14 = *(v0 + 24);
    v15 = v14 >> 1;
  }

  *(v13 + 16) = v17;
  *(v13 + v16 + 32) = -124;
  if (v15 < (v8 + 6))
  {
    sub_1C0EF8EEC((v14 > 1), v8 + 6, 1);
  }

  *(v0 + 16) = v8 + 6;
  *(v0 + v17 + 32) = -123;
  sub_1C0F4454C(v0);
  v29 = v0;
  sub_1C0EF8EEC(0, 4, 0);
  v18 = v0;
  v20 = *(v0 + 16);
  v19 = *(v18 + 24);
  v21 = v19 >> 1;
  v22 = v20 + 1;
  if (v19 >> 1 <= v20)
  {
    sub_1C0EF8EEC((v19 > 1), v20 + 1, 1);
    v18 = v29;
    v19 = *(v29 + 24);
    v21 = v19 >> 1;
  }

  *(v18 + 16) = v22;
  *(v18 + v20 + 32) = 64;
  v23 = v20 + 2;
  if (v21 < (v20 + 2))
  {
    sub_1C0EF8EEC((v19 > 1), v20 + 2, 1);
    v18 = v29;
    v19 = *(v29 + 24);
    v21 = v19 >> 1;
  }

  *(v18 + 16) = v23;
  *(v18 + v22 + 32) = 65;
  v24 = v20 + 3;
  if (v21 < (v20 + 3))
  {
    sub_1C0EF8EEC((v19 > 1), v20 + 3, 1);
  }

  v25 = v29;
  *(v29 + 16) = v24;
  *(v29 + v23 + 32) = 66;
  v26 = *(v29 + 24);
  if ((v20 + 4) > (v26 >> 1))
  {
    sub_1C0EF8EEC((v26 > 1), v20 + 4, 1);
    v25 = v29;
  }

  *(v25 + 16) = v20 + 4;
  *(v25 + v24 + 32) = 67;
  result = sub_1C0F4454C(v25);
  off_1EBE78CE8 = v2;
  return result;
}

uint64_t static AccessibilityAssistiveTouchAction.allCases.getter()
{
  if (qword_1EBE771A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static AccessibilityAssistiveTouchAction.allCases.setter(void *a1)
{
  if (qword_1EBE771A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EBE78CE8 = a1;
}

uint64_t (*static AccessibilityAssistiveTouchAction.allCases.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EBE771A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1C0F36B3C@<X0>(void *a1@<X8>)
{
  if (qword_1EBE771A8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_1EBE78CE8;
}

uint64_t sub_1C0F36BBC(void **a1)
{
  v1 = *a1;
  v2 = qword_1EBE771A8;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EBE78CE8 = v1;
}

uint64_t AccessibilityAssistiveTouchAction.resolve(with:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 >> 6)
  {
    v3 = v2 & 0x3F;
    if (v2 >> 6 == 1)
    {
      a1[3] = &type metadata for AccessibilityAssistiveTouchAction.RotateScreen;
      v4 = a1;
      result = sub_1C0F349B4();
    }

    else
    {
      a1[3] = &type metadata for AccessibilityAssistiveTouchAction.Scroll;
      v4 = a1;
      result = sub_1C0F31790();
    }

    v4[4] = result;
    *v4 = v3;
  }

  else
  {
    v6 = *v1;
    return static AccessibilityAssistiveTouchAction.resolveMenuAction(_:with:)(&v6, a1);
  }

  return result;
}

uint64_t sub_1C0F36CCC()
{
  v1 = 0x6353657461746F72;
  if (*v0 != 1)
  {
    v1 = 0x6C6C6F726373;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1970169197;
  }
}

uint64_t sub_1C0F36D24@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C0F386D0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C0F36D4C(uint64_t a1)
{
  v2 = sub_1C0F37CCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F36D88(uint64_t a1)
{
  v2 = sub_1C0F37CCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F36DD0(uint64_t a1)
{
  v2 = sub_1C0F37E70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F36E0C(uint64_t a1)
{
  v2 = sub_1C0F37E70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F36E48(uint64_t a1)
{
  v2 = sub_1C0F37DC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F36E84(uint64_t a1)
{
  v2 = sub_1C0F37DC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F36EC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1C0F50790();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1C0F36F40(uint64_t a1)
{
  v2 = sub_1C0F37D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F36F7C(uint64_t a1)
{
  v2 = sub_1C0F37D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityAssistiveTouchAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78CF0, &qword_1C0F5EAC0);
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4, v5, v6, v7);
  v38 = &v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78CF8, &qword_1C0F5EAC8);
  v36 = *(v9 - 8);
  v37 = v9;
  MEMORY[0x1EEE9AC00](v9, v10, v11, v12);
  v14 = &v35 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78D00, &qword_1C0F5EAD0);
  v35 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v16, v17, v18);
  v20 = &v35 - v19;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78D08, &qword_1C0F5EAD8);
  v21 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v22, v23, v24);
  v26 = &v35 - v25;
  v27 = *v2;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F37CCC();
  sub_1C0F508B0();
  if (v27 >> 6)
  {
    v28 = v27 & 0x3F;
    if (v27 >> 6 == 1)
    {
      v45 = 1;
      sub_1C0F37DC8();
      v29 = v41;
      sub_1C0F50700();
      v44 = v28;
      sub_1C0F37E1C();
      v30 = v37;
      sub_1C0F50760();
      (*(v36 + 8))(v14, v30);
    }

    else
    {
      v47 = 2;
      sub_1C0F37D20();
      v33 = v38;
      v29 = v41;
      sub_1C0F50700();
      v46 = v28;
      sub_1C0F37D74();
      v34 = v40;
      sub_1C0F50760();
      (*(v39 + 8))(v33, v34);
    }

    return (*(v21 + 8))(v26, v29);
  }

  else
  {
    v43 = 0;
    sub_1C0F37E70();
    v31 = v41;
    sub_1C0F50700();
    v42 = v27;
    sub_1C0F37EC4();
    sub_1C0F50760();
    (*(v35 + 8))(v20, v15);
    return (*(v21 + 8))(v26, v31);
  }
}

uint64_t AccessibilityAssistiveTouchAction.hash(into:)()
{
  v1 = *v0;
  v2 = v1 >> 6;
  v3 = 1;
  if ((v1 >> 6) != 1)
  {
    v3 = 2;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1 >> 6;
  }

  if (v2)
  {
    v5 = v1 & 0x3F;
  }

  else
  {
    v5 = *v0;
  }

  MEMORY[0x1C68EA070](v4);
  return MEMORY[0x1C68EA070](v5);
}

uint64_t AccessibilityAssistiveTouchAction.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  v2 = v1 >> 6;
  v3 = 1;
  if ((v1 >> 6) != 1)
  {
    v3 = 2;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1 >> 6;
  }

  if (v2)
  {
    v1 &= 0x3Fu;
  }

  else
  {
    v1 = v1;
  }

  MEMORY[0x1C68EA070](v4);
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t AccessibilityAssistiveTouchAction.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v48 = a2;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78D48, &qword_1C0F5EAE0);
  v45 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42, v3, v4, v5);
  v47 = &v41 - v6;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78D50, &qword_1C0F5EAE8);
  v46 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44, v7, v8, v9);
  v11 = &v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78D58, &qword_1C0F5EAF0);
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13, v14, v15);
  v17 = &v41 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78D60, &unk_1C0F5EAF8);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18, v20, v21, v22);
  v24 = &v41 - v23;
  v25 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v25);
  sub_1C0F37CCC();
  v26 = v49;
  sub_1C0F508A0();
  if (!v26)
  {
    v49 = v19;
    v28 = v47;
    v27 = v48;
    v29 = sub_1C0F506F0();
    v30 = (2 * *(v29 + 16)) | 1;
    v51 = v29;
    v52 = v29 + 32;
    v53 = 0;
    v54 = v30;
    v31 = sub_1C0F13C18();
    if (v31 == 3 || v53 != v54 >> 1)
    {
      v33 = sub_1C0F505C0();
      swift_allocError();
      v34 = v24;
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0);
      *v36 = &type metadata for AccessibilityAssistiveTouchAction;
      sub_1C0F50680();
      sub_1C0F505B0();
      (*(*(v33 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v33);
      swift_willThrow();
      (*(v49 + 8))(v34, v18);
      swift_unknownObjectRelease();
    }

    else if (v31)
    {
      if (v31 == 1)
      {
        v55 = 1;
        sub_1C0F37DC8();
        sub_1C0F50670();
        sub_1C0F37F6C();
        v32 = v44;
        sub_1C0F506E0();
        (*(v46 + 1))(v11, v32);
        (*(v49 + 8))(v24, v18);
        swift_unknownObjectRelease();
        v40 = v55 | 0x40;
      }

      else
      {
        v55 = 2;
        sub_1C0F37D20();
        sub_1C0F50670();
        v46 = v24;
        sub_1C0F37F18();
        v38 = v42;
        sub_1C0F506E0();
        v39 = v49;
        (*(v45 + 8))(v28, v38);
        (*(v39 + 8))(v46, v18);
        swift_unknownObjectRelease();
        v40 = v55 | 0x80;
      }

      *v27 = v40;
    }

    else
    {
      v55 = 0;
      sub_1C0F37E70();
      sub_1C0F50670();
      sub_1C0F37FC0();
      sub_1C0F506E0();
      (*(v43 + 8))(v17, v12);
      (*(v49 + 8))(v24, v18);
      swift_unknownObjectRelease();
      *v27 = v55;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v50);
}

uint64_t sub_1C0F37BA4()
{
  v1 = *v0;
  v2 = v1 >> 6;
  v3 = 1;
  if ((v1 >> 6) != 1)
  {
    v3 = 2;
  }

  if (v2)
  {
    v4 = v3;
  }

  else
  {
    v4 = v1 >> 6;
  }

  if (v2)
  {
    v5 = v1 & 0x3F;
  }

  else
  {
    v5 = *v0;
  }

  MEMORY[0x1C68EA070](v4);
  return MEMORY[0x1C68EA070](v5);
}

uint64_t sub_1C0F37C00(uint64_t a1)
{
  v2 = *v1;
  sub_1C0F50850();
  v3 = v2 >> 6;
  v4 = 1;
  if ((v2 >> 6) != 1)
  {
    v4 = 2;
  }

  if (v3)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2 >> 6;
  }

  if (v3)
  {
    v2 &= 0x3Fu;
  }

  else
  {
    v2 = v2;
  }

  MEMORY[0x1C68EA070](v5);
  MEMORY[0x1C68EA070](v2);
  return sub_1C0F50890();
}

BOOL _s26AccessibilitySharedSupport0A20AssistiveTouchActionO2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 6;
  v6 = v3 < 0x40 && v2 == v3;
  v7 = v3 & 0xC0;
  v8 = v3 ^ v2;
  v9 = (v8 & 0x3F) == 0;
  if (v7 != 64)
  {
    v9 = 0;
  }

  v10 = (v8 & 0x3F) == 0;
  if (v7 != 128)
  {
    v10 = 0;
  }

  if (v4 == 1)
  {
    v10 = v9;
  }

  if (v4)
  {
    return v10;
  }

  else
  {
    return v6;
  }
}

unint64_t sub_1C0F37CCC()
{
  result = qword_1EBE78D10;
  if (!qword_1EBE78D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D10);
  }

  return result;
}

unint64_t sub_1C0F37D20()
{
  result = qword_1EBE78D18;
  if (!qword_1EBE78D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D18);
  }

  return result;
}

unint64_t sub_1C0F37D74()
{
  result = qword_1EBE78D20;
  if (!qword_1EBE78D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D20);
  }

  return result;
}

unint64_t sub_1C0F37DC8()
{
  result = qword_1EBE78D28;
  if (!qword_1EBE78D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D28);
  }

  return result;
}

unint64_t sub_1C0F37E1C()
{
  result = qword_1EBE78D30;
  if (!qword_1EBE78D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D30);
  }

  return result;
}

unint64_t sub_1C0F37E70()
{
  result = qword_1EBE78D38;
  if (!qword_1EBE78D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D38);
  }

  return result;
}

unint64_t sub_1C0F37EC4()
{
  result = qword_1EBE78D40;
  if (!qword_1EBE78D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D40);
  }

  return result;
}

unint64_t sub_1C0F37F18()
{
  result = qword_1EBE78D68;
  if (!qword_1EBE78D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D68);
  }

  return result;
}

unint64_t sub_1C0F37F6C()
{
  result = qword_1EBE78D70;
  if (!qword_1EBE78D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D70);
  }

  return result;
}

unint64_t sub_1C0F37FC0()
{
  result = qword_1EBE78D78;
  if (!qword_1EBE78D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D78);
  }

  return result;
}

unint64_t sub_1C0F38018()
{
  result = qword_1EBE78D80;
  if (!qword_1EBE78D80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBE78D88, &qword_1C0F5EB08);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D80);
  }

  return result;
}

unint64_t sub_1C0F38080()
{
  result = qword_1EBE78D90;
  if (!qword_1EBE78D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D90);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AccessibilityAssistiveTouchAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE)
  {
    goto LABEL_17;
  }

  if (a2 + 242 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 242) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 242;
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

      return (*a1 | (v4 << 8)) - 242;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 242;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0xC | (*a1 >> 6)) ^ 0xF;
  if (v6 >= 0xD)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t storeEnumTagSinglePayload for AccessibilityAssistiveTouchAction(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 242 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 242) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE)
  {
    v4 = 0;
  }

  if (a2 > 0xD)
  {
    v5 = ((a2 - 14) >> 8) + 1;
    *result = a2 - 14;
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
    *result = 16 * (((-a2 >> 2) & 3) - 4 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C0F382B4()
{
  result = qword_1EBE78D98;
  if (!qword_1EBE78D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78D98);
  }

  return result;
}

unint64_t sub_1C0F3830C()
{
  result = qword_1EBE78DA0;
  if (!qword_1EBE78DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DA0);
  }

  return result;
}

unint64_t sub_1C0F38364()
{
  result = qword_1EBE78DA8;
  if (!qword_1EBE78DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DA8);
  }

  return result;
}

unint64_t sub_1C0F383BC()
{
  result = qword_1EBE78DB0;
  if (!qword_1EBE78DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DB0);
  }

  return result;
}

unint64_t sub_1C0F38414()
{
  result = qword_1EBE78DB8;
  if (!qword_1EBE78DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DB8);
  }

  return result;
}

unint64_t sub_1C0F3846C()
{
  result = qword_1EBE78DC0;
  if (!qword_1EBE78DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DC0);
  }

  return result;
}

unint64_t sub_1C0F384C4()
{
  result = qword_1EBE78DC8;
  if (!qword_1EBE78DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DC8);
  }

  return result;
}

unint64_t sub_1C0F3851C()
{
  result = qword_1EBE78DD0;
  if (!qword_1EBE78DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DD0);
  }

  return result;
}

unint64_t sub_1C0F38574()
{
  result = qword_1EBE78DD8;
  if (!qword_1EBE78DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DD8);
  }

  return result;
}

unint64_t sub_1C0F385CC()
{
  result = qword_1EBE78DE0;
  if (!qword_1EBE78DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DE0);
  }

  return result;
}

unint64_t sub_1C0F38624()
{
  result = qword_1EBE78DE8;
  if (!qword_1EBE78DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DE8);
  }

  return result;
}

unint64_t sub_1C0F3867C()
{
  result = qword_1EBE78DF0;
  if (!qword_1EBE78DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78DF0);
  }

  return result;
}

uint64_t sub_1C0F386D0(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1970169197 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C0F50790() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6353657461746F72 && a2 == 0xEC0000006E656572 || (sub_1C0F50790() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6C6F726373 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C0F50790();

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

id AXSSRemoteDesktopViewer.init(delegate:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithDelegate_];
  swift_unknownObjectRelease();
  return v1;
}

{
  v3.super_class = AXSSRemoteDesktopViewer;
  v1 = objc_msgSendSuper2(&v3, sel_init);
  swift_unknownObjectRelease();
  return v1;
}

Swift::String_optional __swiftcall AXSSRemoteDesktopViewer.getRemoteId()()
{
  v0 = 0;
  v1 = 0;
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

AXSSRemoteDesktopViewer __swiftcall AXSSRemoteDesktopViewer.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for AXSSRemoteDesktopViewer()
{
  result = qword_1EBE78DF8;
  if (!qword_1EBE78DF8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EBE78DF8);
  }

  return result;
}

unint64_t AccessibilityFeatureAction.resolve(with:)@<X0>(uint64_t a1@<X8>)
{
  switch(*v1)
  {
    case 1:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.AssistiveAccess;
      result = sub_1C0F394C4();
      break;
    case 2:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.AssistiveTouch;
      result = sub_1C0F39470();
      break;
    case 3:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.BackgroundSounds;
      result = sub_1C0F3941C();
      break;
    case 4:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.ClassicInvertColors;
      result = sub_1C0F393C8();
      break;
    case 5:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.ColorFilters;
      result = sub_1C0F39374();
      break;
    case 6:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.CommandAndControl;
      result = sub_1C0F39320();
      break;
    case 7:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.DimFlashingLights;
      result = sub_1C0F392CC();
      break;
    case 8:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.HoverTextTyping;
      result = sub_1C0F391D0();
      break;
    case 9:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.FullKeyboardAccess;
      result = sub_1C0F39278();
      break;
    case 0xA:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.HapticMusic;
      result = sub_1C0F39224();
      break;
    case 0xB:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.LiveCaptions;
      result = sub_1C0F3917C();
      break;
    case 0xC:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.LiveSpeech;
      result = sub_1C0F39128();
      break;
    case 0xD:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.Magnifier;
      result = sub_1C0F390D4();
      break;
    case 0xE:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.MotionCues;
      result = sub_1C0F39080();
      break;
    case 0xF:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.NearbyDeviceControl;
      result = sub_1C0F3902C();
      break;
    case 0x10:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.SmartInvertColors;
      result = sub_1C0F38FD8();
      break;
    case 0x11:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.SpeakScreen;
      result = sub_1C0F38F84();
      break;
    case 0x12:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.SwitchControl;
      result = sub_1C0F38F30();
      break;
    case 0x13:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.VirtualTrackpad;
      result = sub_1C0F38EDC();
      break;
    case 0x14:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.VoiceControl;
      result = sub_1C0F38E88();
      break;
    case 0x15:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.VoiceOver;
      result = sub_1C0F38E34();
      break;
    case 0x16:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.WatchRemoteScreen;
      result = sub_1C0F38DE0();
      break;
    case 0x17:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.Zoom;
      result = sub_1C0F38D8C();
      break;
    case 0x18:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.ZoomController;
      result = sub_1C0F38D38();
      break;
    default:
      *(a1 + 24) = &type metadata for AccessibilityFeatureAction.AccessibilityReader;
      result = sub_1C0F39518();
      break;
  }

  *(a1 + 32) = result;
  return result;
}

unint64_t sub_1C0F38D38()
{
  result = qword_1EBE78E00;
  if (!qword_1EBE78E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E00);
  }

  return result;
}

unint64_t sub_1C0F38D8C()
{
  result = qword_1EBE78E08;
  if (!qword_1EBE78E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E08);
  }

  return result;
}

unint64_t sub_1C0F38DE0()
{
  result = qword_1EBE78E10;
  if (!qword_1EBE78E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E10);
  }

  return result;
}

unint64_t sub_1C0F38E34()
{
  result = qword_1EBE78E18;
  if (!qword_1EBE78E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E18);
  }

  return result;
}

unint64_t sub_1C0F38E88()
{
  result = qword_1EBE78E20;
  if (!qword_1EBE78E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E20);
  }

  return result;
}

unint64_t sub_1C0F38EDC()
{
  result = qword_1EBE78E28;
  if (!qword_1EBE78E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E28);
  }

  return result;
}

unint64_t sub_1C0F38F30()
{
  result = qword_1EBE78E30;
  if (!qword_1EBE78E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E30);
  }

  return result;
}

unint64_t sub_1C0F38F84()
{
  result = qword_1EBE78E38;
  if (!qword_1EBE78E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E38);
  }

  return result;
}

unint64_t sub_1C0F38FD8()
{
  result = qword_1EBE78E40;
  if (!qword_1EBE78E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E40);
  }

  return result;
}

unint64_t sub_1C0F3902C()
{
  result = qword_1EBE78E48;
  if (!qword_1EBE78E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E48);
  }

  return result;
}

unint64_t sub_1C0F39080()
{
  result = qword_1EBE78E50;
  if (!qword_1EBE78E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E50);
  }

  return result;
}

unint64_t sub_1C0F390D4()
{
  result = qword_1EBE78E58;
  if (!qword_1EBE78E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E58);
  }

  return result;
}

unint64_t sub_1C0F39128()
{
  result = qword_1EBE78E60;
  if (!qword_1EBE78E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E60);
  }

  return result;
}

unint64_t sub_1C0F3917C()
{
  result = qword_1EBE78E68;
  if (!qword_1EBE78E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E68);
  }

  return result;
}

unint64_t sub_1C0F391D0()
{
  result = qword_1EBE78E70;
  if (!qword_1EBE78E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E70);
  }

  return result;
}

unint64_t sub_1C0F39224()
{
  result = qword_1EBE78E78;
  if (!qword_1EBE78E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E78);
  }

  return result;
}

unint64_t sub_1C0F39278()
{
  result = qword_1EBE78E80;
  if (!qword_1EBE78E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E80);
  }

  return result;
}

unint64_t sub_1C0F392CC()
{
  result = qword_1EBE78E88;
  if (!qword_1EBE78E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E88);
  }

  return result;
}

unint64_t sub_1C0F39320()
{
  result = qword_1EBE78E90;
  if (!qword_1EBE78E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E90);
  }

  return result;
}

unint64_t sub_1C0F39374()
{
  result = qword_1EBE78E98;
  if (!qword_1EBE78E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78E98);
  }

  return result;
}

unint64_t sub_1C0F393C8()
{
  result = qword_1EBE78EA0;
  if (!qword_1EBE78EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78EA0);
  }

  return result;
}

unint64_t sub_1C0F3941C()
{
  result = qword_1EBE78EA8;
  if (!qword_1EBE78EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78EA8);
  }

  return result;
}

unint64_t sub_1C0F39470()
{
  result = qword_1EBE78EB0;
  if (!qword_1EBE78EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78EB0);
  }

  return result;
}

unint64_t sub_1C0F394C4()
{
  result = qword_1EBE78EB8;
  if (!qword_1EBE78EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78EB8);
  }

  return result;
}

unint64_t sub_1C0F39518()
{
  result = qword_1EBE78EC0;
  if (!qword_1EBE78EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78EC0);
  }

  return result;
}

unint64_t sub_1C0F39580(char a1)
{
  result = 0x7669747369737361;
  switch(a1)
  {
    case 1:
    case 2:
      return result;
    case 3:
      result = 0xD000000000000010;
      break;
    case 5:
      result = 0x6C6946726F6C6F63;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x7865547265766F68;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0x754D636974706168;
      break;
    case 11:
      result = 0x747061436576696CLL;
      break;
    case 12:
      result = 0x656570536576696CLL;
      break;
    case 13:
      result = 0x656966696E67616DLL;
      break;
    case 14:
      result = 0x75436E6F69746F6DLL;
      break;
    case 16:
      result = 0xD000000000000011;
      break;
    case 17:
      result = 0x7263536B61657073;
      break;
    case 18:
      result = 0x6F43686374697773;
      break;
    case 19:
      result = 0x546C617574726976;
      break;
    case 20:
      result = 0x6E6F436563696F76;
      break;
    case 21:
      result = 0x65764F6563696F76;
      break;
    case 22:
      result = 0xD000000000000011;
      break;
    case 23:
      result = 1836019578;
      break;
    case 24:
      result = 0x746E6F436D6F6F7ALL;
      break;
    default:
      result = 0xD000000000000013;
      break;
  }

  return result;
}

uint64_t sub_1C0F39858(uint64_t a1)
{
  v2 = sub_1C0F3C3A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39894(uint64_t a1)
{
  v2 = sub_1C0F3C3A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F398D0(uint64_t a1)
{
  v2 = sub_1C0F3C354();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3990C(uint64_t a1)
{
  v2 = sub_1C0F3C354();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39948(uint64_t a1)
{
  v2 = sub_1C0F3C300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39984(uint64_t a1)
{
  v2 = sub_1C0F3C300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F399C0(uint64_t a1)
{
  v2 = sub_1C0F3C2AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F399FC(uint64_t a1)
{
  v2 = sub_1C0F3C2AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39A38(uint64_t a1)
{
  v2 = sub_1C0F3C258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39A74(uint64_t a1)
{
  v2 = sub_1C0F3C258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39AB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C0F417C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C0F39AEC(uint64_t a1)
{
  v2 = sub_1C0F3BB74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39B28(uint64_t a1)
{
  v2 = sub_1C0F3BB74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39B64(uint64_t a1)
{
  v2 = sub_1C0F3C204();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39BA0(uint64_t a1)
{
  v2 = sub_1C0F3C204();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39BDC(uint64_t a1)
{
  v2 = sub_1C0F3C1B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39C18(uint64_t a1)
{
  v2 = sub_1C0F3C1B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39C54(uint64_t a1)
{
  v2 = sub_1C0F3C15C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39C90(uint64_t a1)
{
  v2 = sub_1C0F3C15C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39CCC(uint64_t a1)
{
  v2 = sub_1C0F3C0B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39D08(uint64_t a1)
{
  v2 = sub_1C0F3C0B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39D44(uint64_t a1)
{
  v2 = sub_1C0F3C060();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39D80(uint64_t a1)
{
  v2 = sub_1C0F3C060();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39DBC(uint64_t a1)
{
  v2 = sub_1C0F3C108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39DF8(uint64_t a1)
{
  v2 = sub_1C0F3C108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39E34(uint64_t a1)
{
  v2 = sub_1C0F3C00C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39E70(uint64_t a1)
{
  v2 = sub_1C0F3C00C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39EAC(uint64_t a1)
{
  v2 = sub_1C0F3BFB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39EE8(uint64_t a1)
{
  v2 = sub_1C0F3BFB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39F24(uint64_t a1)
{
  v2 = sub_1C0F3BF64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39F60(uint64_t a1)
{
  v2 = sub_1C0F3BF64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F39F9C(uint64_t a1)
{
  v2 = sub_1C0F3BF10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F39FD8(uint64_t a1)
{
  v2 = sub_1C0F3BF10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A014(uint64_t a1)
{
  v2 = sub_1C0F3BEBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A050(uint64_t a1)
{
  v2 = sub_1C0F3BEBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A08C(uint64_t a1)
{
  v2 = sub_1C0F3BE68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A0C8(uint64_t a1)
{
  v2 = sub_1C0F3BE68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A104(uint64_t a1)
{
  v2 = sub_1C0F3BE14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A140(uint64_t a1)
{
  v2 = sub_1C0F3BE14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A17C(uint64_t a1)
{
  v2 = sub_1C0F3BDC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A1B8(uint64_t a1)
{
  v2 = sub_1C0F3BDC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A1F4(uint64_t a1)
{
  v2 = sub_1C0F3BD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A230(uint64_t a1)
{
  v2 = sub_1C0F3BD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A26C(uint64_t a1)
{
  v2 = sub_1C0F3BD18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A2A8(uint64_t a1)
{
  v2 = sub_1C0F3BD18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A2E4(uint64_t a1)
{
  v2 = sub_1C0F3BCC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A320(uint64_t a1)
{
  v2 = sub_1C0F3BCC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A35C(uint64_t a1)
{
  v2 = sub_1C0F3BC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A398(uint64_t a1)
{
  v2 = sub_1C0F3BC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A3D4(uint64_t a1)
{
  v2 = sub_1C0F3BC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A410(uint64_t a1)
{
  v2 = sub_1C0F3BC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C0F3A44C(uint64_t a1)
{
  v2 = sub_1C0F3BBC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C0F3A488(uint64_t a1)
{
  v2 = sub_1C0F3BBC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AccessibilityFeatureAction.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78EC8, &qword_1C0F5F0C0);
  v216 = *(v4 - 8);
  v217 = v4;
  MEMORY[0x1EEE9AC00](v4, v5, v6, v7);
  v215 = &v146 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78ED0, &qword_1C0F5F0C8);
  v213 = *(v9 - 8);
  v214 = v9;
  MEMORY[0x1EEE9AC00](v9, v10, v11, v12);
  v212 = &v146 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78ED8, &qword_1C0F5F0D0);
  v210 = *(v14 - 8);
  v211 = v14;
  MEMORY[0x1EEE9AC00](v14, v15, v16, v17);
  v209 = &v146 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78EE0, &qword_1C0F5F0D8);
  v207 = *(v19 - 8);
  v208 = v19;
  MEMORY[0x1EEE9AC00](v19, v20, v21, v22);
  v206 = &v146 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78EE8, &qword_1C0F5F0E0);
  v204 = *(v24 - 8);
  v205 = v24;
  MEMORY[0x1EEE9AC00](v24, v25, v26, v27);
  v203 = &v146 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78EF0, &qword_1C0F5F0E8);
  v201 = *(v29 - 8);
  v202 = v29;
  MEMORY[0x1EEE9AC00](v29, v30, v31, v32);
  v200 = &v146 - v33;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78EF8, &qword_1C0F5F0F0);
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199, v34, v35, v36);
  v197 = &v146 - v37;
  v196 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F00, &qword_1C0F5F0F8);
  v195 = *(v196 - 8);
  MEMORY[0x1EEE9AC00](v196, v38, v39, v40);
  v194 = &v146 - v41;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F08, &qword_1C0F5F100);
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193, v42, v43, v44);
  v191 = &v146 - v45;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F10, &qword_1C0F5F108);
  v189 = *(v190 - 8);
  MEMORY[0x1EEE9AC00](v190, v46, v47, v48);
  v188 = &v146 - v49;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F18, &qword_1C0F5F110);
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187, v50, v51, v52);
  v185 = &v146 - v53;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F20, &qword_1C0F5F118);
  v183 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184, v54, v55, v56);
  v182 = &v146 - v57;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F28, &qword_1C0F5F120);
  v180 = *(v181 - 8);
  MEMORY[0x1EEE9AC00](v181, v58, v59, v60);
  v179 = &v146 - v61;
  v178 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F30, &qword_1C0F5F128);
  v177 = *(v178 - 8);
  MEMORY[0x1EEE9AC00](v178, v62, v63, v64);
  v176 = &v146 - v65;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F38, &qword_1C0F5F130);
  v174 = *(v175 - 8);
  MEMORY[0x1EEE9AC00](v175, v66, v67, v68);
  v173 = &v146 - v69;
  v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F40, &qword_1C0F5F138);
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172, v70, v71, v72);
  v170 = &v146 - v73;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F48, &qword_1C0F5F140);
  v168 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169, v74, v75, v76);
  v167 = &v146 - v77;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F50, &qword_1C0F5F148);
  v165 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166, v78, v79, v80);
  v164 = &v146 - v81;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F58, &qword_1C0F5F150);
  v162 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163, v82, v83, v84);
  v161 = &v146 - v85;
  v160 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F60, &qword_1C0F5F158);
  v159 = *(v160 - 8);
  MEMORY[0x1EEE9AC00](v160, v86, v87, v88);
  v158 = &v146 - v89;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F68, &qword_1C0F5F160);
  v156 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157, v90, v91, v92);
  v155 = &v146 - v93;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F70, &qword_1C0F5F168);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154, v94, v95, v96);
  v152 = &v146 - v97;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F78, &qword_1C0F5F170);
  v150 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151, v98, v99, v100);
  v149 = &v146 - v101;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F80, &qword_1C0F5F178);
  v147 = *(v148 - 8);
  MEMORY[0x1EEE9AC00](v148, v102, v103, v104);
  v106 = &v146 - v105;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F88, &qword_1C0F5F180);
  v146 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v108, v109, v110);
  v112 = &v146 - v111;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE78F90, &qword_1C0F5F188);
  v113 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219, v114, v115, v116);
  v118 = &v146 - v117;
  v119 = *v2;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_1C0F3BB74();
  v218 = v118;
  sub_1C0F508B0();
  v120 = (v113 + 8);
  switch(v119)
  {
    case 1:
      v220 = 1;
      sub_1C0F3C354();
      v136 = v218;
      v137 = v219;
      sub_1C0F50700();
      (*(v147 + 8))(v106, v148);
      return (*v120)(v136, v137);
    case 2:
      v220 = 2;
      sub_1C0F3C300();
      v132 = v149;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v150 + 8))(v132, v151);
      return (*v120)(v121, v122);
    case 3:
      v220 = 3;
      sub_1C0F3C2AC();
      v134 = v152;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v153 + 8))(v134, v154);
      return (*v120)(v121, v122);
    case 4:
      v220 = 4;
      sub_1C0F3C258();
      v126 = v155;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v156 + 8))(v126, v157);
      return (*v120)(v121, v122);
    case 5:
      v220 = 5;
      sub_1C0F3C204();
      v140 = v158;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v159 + 8))(v140, v160);
      return (*v120)(v121, v122);
    case 6:
      v220 = 6;
      sub_1C0F3C1B0();
      v142 = v161;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v162 + 8))(v142, v163);
      return (*v120)(v121, v122);
    case 7:
      v220 = 7;
      sub_1C0F3C15C();
      v135 = v164;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v165 + 8))(v135, v166);
      return (*v120)(v121, v122);
    case 8:
      v220 = 8;
      sub_1C0F3C108();
      v145 = v167;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v168 + 8))(v145, v169);
      return (*v120)(v121, v122);
    case 9:
      v220 = 9;
      sub_1C0F3C0B4();
      v128 = v170;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v171 + 8))(v128, v172);
      return (*v120)(v121, v122);
    case 10:
      v220 = 10;
      sub_1C0F3C060();
      v144 = v173;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v174 + 8))(v144, v175);
      return (*v120)(v121, v122);
    case 11:
      v220 = 11;
      sub_1C0F3C00C();
      v125 = v176;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v177 + 8))(v125, v178);
      return (*v120)(v121, v122);
    case 12:
      v220 = 12;
      sub_1C0F3BFB8();
      v127 = v179;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v180 + 8))(v127, v181);
      return (*v120)(v121, v122);
    case 13:
      v220 = 13;
      sub_1C0F3BF64();
      v141 = v182;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v183 + 8))(v141, v184);
      return (*v120)(v121, v122);
    case 14:
      v220 = 14;
      sub_1C0F3BF10();
      v124 = v185;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v186 + 8))(v124, v187);
      return (*v120)(v121, v122);
    case 15:
      v220 = 15;
      sub_1C0F3BEBC();
      v133 = v188;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v189 + 8))(v133, v190);
      return (*v120)(v121, v122);
    case 16:
      v220 = 16;
      sub_1C0F3BE68();
      v123 = v191;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v192 + 8))(v123, v193);
      return (*v120)(v121, v122);
    case 17:
      v220 = 17;
      sub_1C0F3BE14();
      v139 = v194;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v195 + 8))(v139, v196);
      return (*v120)(v121, v122);
    case 18:
      v220 = 18;
      sub_1C0F3BDC0();
      v143 = v197;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v198 + 8))(v143, v199);
      return (*v120)(v121, v122);
    case 19:
      v220 = 19;
      sub_1C0F3BD6C();
      v129 = v200;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      v131 = v201;
      v130 = v202;
      goto LABEL_27;
    case 20:
      v220 = 20;
      sub_1C0F3BD18();
      v129 = v203;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      v131 = v204;
      v130 = v205;
      goto LABEL_27;
    case 21:
      v220 = 21;
      sub_1C0F3BCC4();
      v129 = v206;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      v131 = v207;
      v130 = v208;
      goto LABEL_27;
    case 22:
      v220 = 22;
      sub_1C0F3BC70();
      v129 = v209;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      v131 = v210;
      v130 = v211;
      goto LABEL_27;
    case 23:
      v220 = 23;
      sub_1C0F3BC1C();
      v129 = v212;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      v131 = v213;
      v130 = v214;
      goto LABEL_27;
    case 24:
      v220 = 24;
      sub_1C0F3BBC8();
      v129 = v215;
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      v131 = v216;
      v130 = v217;
LABEL_27:
      (*(v131 + 8))(v129, v130);
      break;
    default:
      v220 = 0;
      sub_1C0F3C3A8();
      v121 = v218;
      v122 = v219;
      sub_1C0F50700();
      (*(v146 + 8))(v112, v107);
      break;
  }

  return (*v120)(v121, v122);
}

unint64_t sub_1C0F3BB74()
{
  result = qword_1EBE78F98;
  if (!qword_1EBE78F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78F98);
  }

  return result;
}

unint64_t sub_1C0F3BBC8()
{
  result = qword_1EBE78FA0;
  if (!qword_1EBE78FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FA0);
  }

  return result;
}

unint64_t sub_1C0F3BC1C()
{
  result = qword_1EBE78FA8;
  if (!qword_1EBE78FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FA8);
  }

  return result;
}

unint64_t sub_1C0F3BC70()
{
  result = qword_1EBE78FB0;
  if (!qword_1EBE78FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FB0);
  }

  return result;
}

unint64_t sub_1C0F3BCC4()
{
  result = qword_1EBE78FB8;
  if (!qword_1EBE78FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FB8);
  }

  return result;
}

unint64_t sub_1C0F3BD18()
{
  result = qword_1EBE78FC0;
  if (!qword_1EBE78FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FC0);
  }

  return result;
}

unint64_t sub_1C0F3BD6C()
{
  result = qword_1EBE78FC8;
  if (!qword_1EBE78FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FC8);
  }

  return result;
}

unint64_t sub_1C0F3BDC0()
{
  result = qword_1EBE78FD0;
  if (!qword_1EBE78FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FD0);
  }

  return result;
}

unint64_t sub_1C0F3BE14()
{
  result = qword_1EBE78FD8;
  if (!qword_1EBE78FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FD8);
  }

  return result;
}

unint64_t sub_1C0F3BE68()
{
  result = qword_1EBE78FE0;
  if (!qword_1EBE78FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FE0);
  }

  return result;
}

unint64_t sub_1C0F3BEBC()
{
  result = qword_1EBE78FE8;
  if (!qword_1EBE78FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FE8);
  }

  return result;
}

unint64_t sub_1C0F3BF10()
{
  result = qword_1EBE78FF0;
  if (!qword_1EBE78FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FF0);
  }

  return result;
}

unint64_t sub_1C0F3BF64()
{
  result = qword_1EBE78FF8;
  if (!qword_1EBE78FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE78FF8);
  }

  return result;
}

unint64_t sub_1C0F3BFB8()
{
  result = qword_1EBE79000;
  if (!qword_1EBE79000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79000);
  }

  return result;
}

unint64_t sub_1C0F3C00C()
{
  result = qword_1EBE79008;
  if (!qword_1EBE79008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79008);
  }

  return result;
}

unint64_t sub_1C0F3C060()
{
  result = qword_1EBE79010;
  if (!qword_1EBE79010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79010);
  }

  return result;
}

unint64_t sub_1C0F3C0B4()
{
  result = qword_1EBE79018;
  if (!qword_1EBE79018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79018);
  }

  return result;
}

unint64_t sub_1C0F3C108()
{
  result = qword_1EBE79020;
  if (!qword_1EBE79020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79020);
  }

  return result;
}

unint64_t sub_1C0F3C15C()
{
  result = qword_1EBE79028;
  if (!qword_1EBE79028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79028);
  }

  return result;
}

unint64_t sub_1C0F3C1B0()
{
  result = qword_1EBE79030;
  if (!qword_1EBE79030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79030);
  }

  return result;
}

unint64_t sub_1C0F3C204()
{
  result = qword_1EBE79038;
  if (!qword_1EBE79038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79038);
  }

  return result;
}

unint64_t sub_1C0F3C258()
{
  result = qword_1EBE79040;
  if (!qword_1EBE79040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79040);
  }

  return result;
}

unint64_t sub_1C0F3C2AC()
{
  result = qword_1EBE79048;
  if (!qword_1EBE79048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79048);
  }

  return result;
}

unint64_t sub_1C0F3C300()
{
  result = qword_1EBE79050;
  if (!qword_1EBE79050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79050);
  }

  return result;
}

unint64_t sub_1C0F3C354()
{
  result = qword_1EBE79058;
  if (!qword_1EBE79058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79058);
  }

  return result;
}

unint64_t sub_1C0F3C3A8()
{
  result = qword_1EBE79060;
  if (!qword_1EBE79060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBE79060);
  }

  return result;
}

uint64_t AccessibilityFeatureAction.hashValue.getter()
{
  v1 = *v0;
  sub_1C0F50850();
  MEMORY[0x1C68EA070](v1);
  return sub_1C0F50890();
}

uint64_t AccessibilityFeatureAction.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v253 = a2;
  v252 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79068, &qword_1C0F5F190);
  v228 = *(v252 - 8);
  MEMORY[0x1EEE9AC00](v252, v3, v4, v5);
  v248 = &v177 - v6;
  v227 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79070, &qword_1C0F5F198);
  v226 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227, v7, v8, v9);
  v247 = &v177 - v10;
  v225 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79078, &qword_1C0F5F1A0);
  v224 = *(v225 - 8);
  MEMORY[0x1EEE9AC00](v225, v11, v12, v13);
  v246 = &v177 - v14;
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79080, &qword_1C0F5F1A8);
  v222 = *(v223 - 8);
  MEMORY[0x1EEE9AC00](v223, v15, v16, v17);
  v245 = &v177 - v18;
  v221 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79088, &qword_1C0F5F1B0);
  v220 = *(v221 - 8);
  MEMORY[0x1EEE9AC00](v221, v19, v20, v21);
  v244 = &v177 - v22;
  v219 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79090, &qword_1C0F5F1B8);
  v218 = *(v219 - 8);
  MEMORY[0x1EEE9AC00](v219, v23, v24, v25);
  v243 = &v177 - v26;
  v217 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79098, &qword_1C0F5F1C0);
  v216 = *(v217 - 8);
  MEMORY[0x1EEE9AC00](v217, v27, v28, v29);
  v242 = &v177 - v30;
  v215 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790A0, &qword_1C0F5F1C8);
  v214 = *(v215 - 8);
  MEMORY[0x1EEE9AC00](v215, v31, v32, v33);
  v241 = &v177 - v34;
  v213 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790A8, &qword_1C0F5F1D0);
  v212 = *(v213 - 8);
  MEMORY[0x1EEE9AC00](v213, v35, v36, v37);
  v240 = &v177 - v38;
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790B0, &qword_1C0F5F1D8);
  v210 = *(v211 - 8);
  MEMORY[0x1EEE9AC00](v211, v39, v40, v41);
  v239 = &v177 - v42;
  v209 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790B8, &qword_1C0F5F1E0);
  v208 = *(v209 - 8);
  MEMORY[0x1EEE9AC00](v209, v43, v44, v45);
  v238 = &v177 - v46;
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790C0, &qword_1C0F5F1E8);
  v206 = *(v207 - 8);
  MEMORY[0x1EEE9AC00](v207, v47, v48, v49);
  v237 = &v177 - v50;
  v205 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790C8, &qword_1C0F5F1F0);
  v204 = *(v205 - 8);
  MEMORY[0x1EEE9AC00](v205, v51, v52, v53);
  v236 = &v177 - v54;
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790D0, &qword_1C0F5F1F8);
  v202 = *(v203 - 8);
  MEMORY[0x1EEE9AC00](v203, v55, v56, v57);
  v235 = &v177 - v58;
  v201 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790D8, &qword_1C0F5F200);
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201, v59, v60, v61);
  v234 = &v177 - v62;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790E0, &qword_1C0F5F208);
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199, v63, v64, v65);
  v233 = &v177 - v66;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790E8, &qword_1C0F5F210);
  v196 = *(v197 - 8);
  MEMORY[0x1EEE9AC00](v197, v67, v68, v69);
  v230 = &v177 - v70;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790F0, &qword_1C0F5F218);
  v195 = *(v194 - 8);
  MEMORY[0x1EEE9AC00](v194, v71, v72, v73);
  v251 = &v177 - v74;
  v193 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE790F8, &qword_1C0F5F220);
  v192 = *(v193 - 8);
  MEMORY[0x1EEE9AC00](v193, v75, v76, v77);
  v250 = &v177 - v78;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79100, &qword_1C0F5F228);
  v190 = *(v191 - 8);
  MEMORY[0x1EEE9AC00](v191, v79, v80, v81);
  v232 = &v177 - v82;
  v189 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79108, &qword_1C0F5F230);
  v188 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189, v83, v84, v85);
  v231 = &v177 - v86;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79110, &qword_1C0F5F238);
  v186 = *(v187 - 8);
  MEMORY[0x1EEE9AC00](v187, v87, v88, v89);
  v249 = &v177 - v90;
  v185 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79118, &qword_1C0F5F240);
  v184 = *(v185 - 8);
  MEMORY[0x1EEE9AC00](v185, v91, v92, v93);
  v229 = &v177 - v94;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79120, &qword_1C0F5F248);
  v182 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183, v95, v96, v97);
  v99 = &v177 - v98;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79128, &qword_1C0F5F250);
  v181 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100, v101, v102, v103);
  v105 = &v177 - v104;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE79130, &unk_1C0F5F258);
  v107 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106, v108, v109, v110);
  v112 = &v177 - v111;
  v113 = a1[3];
  v254 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v113);
  sub_1C0F3BB74();
  v114 = v255;
  sub_1C0F508A0();
  if (v114)
  {
LABEL_8:
    v130 = v254;
    return __swift_destroy_boxed_opaque_existential_0(v130);
  }

  v178 = v105;
  v177 = v100;
  v179 = v99;
  v115 = v249;
  v116 = v250;
  v117 = v251;
  v180 = 0;
  v119 = v252;
  v118 = v253;
  v255 = v107;
  v120 = v112;
  v121 = sub_1C0F506F0();
  v122 = (2 * *(v121 + 16)) | 1;
  v256 = v121;
  v257 = v121 + 32;
  v258 = 0;
  v259 = v122;
  v123 = sub_1C0F13C4C();
  if (v258 != v259 >> 1)
  {
LABEL_6:
    v127 = sub_1C0F505C0();
    swift_allocError();
    v129 = v128;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBE77C70, &qword_1C0F583A0);
    *v129 = &type metadata for AccessibilityFeatureAction;
    sub_1C0F50680();
    sub_1C0F505B0();
    (*(*(v127 - 8) + 104))(v129, *MEMORY[0x1E69E6AF8], v127);
    swift_willThrow();
LABEL_7:
    (*(v255 + 8))(v120, v106);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v124 = v123;
  switch(v123)
  {
    case 0:
      v260 = 0;
      sub_1C0F3C3A8();
      v125 = v178;
      v126 = v180;
      sub_1C0F50670();
      if (v126)
      {
        goto LABEL_7;
      }

      (*(v181 + 8))(v125, v177);
      goto LABEL_58;
    case 1:
      v260 = 1;
      sub_1C0F3C354();
      v152 = v179;
      v153 = v180;
      sub_1C0F50670();
      if (v153)
      {
        goto LABEL_7;
      }

      (*(v182 + 8))(v152, v183);
      goto LABEL_58;
    case 2:
      v260 = 2;
      sub_1C0F3C300();
      v146 = v229;
      v147 = v180;
      sub_1C0F50670();
      if (v147)
      {
        goto LABEL_7;
      }

      (*(v184 + 8))(v146, v185);
      goto LABEL_58;
    case 3:
      v260 = 3;
      sub_1C0F3C2AC();
      v150 = v180;
      sub_1C0F50670();
      if (v150)
      {
        goto LABEL_7;
      }

      (*(v186 + 8))(v115, v187);
      goto LABEL_58;
    case 4:
      v260 = 4;
      sub_1C0F3C258();
      v138 = v231;
      v139 = v180;
      sub_1C0F50670();
      if (v139)
      {
        goto LABEL_7;
      }

      (*(v188 + 8))(v138, v189);
      goto LABEL_58;
    case 5:
      v260 = 5;
      sub_1C0F3C204();
      v158 = v232;
      v159 = v180;
      sub_1C0F50670();
      if (v159)
      {
        goto LABEL_7;
      }

      (*(v190 + 8))(v158, v191);
      goto LABEL_58;
    case 6:
      v260 = 6;
      sub_1C0F3C1B0();
      v164 = v180;
      sub_1C0F50670();
      if (v164)
      {
        goto LABEL_7;
      }

      (*(v192 + 8))(v116, v193);
      goto LABEL_58;
    case 7:
      v260 = 7;
      sub_1C0F3C15C();
      v151 = v180;
      sub_1C0F50670();
      if (v151)
      {
        goto LABEL_7;
      }

      (*(v195 + 8))(v117, v194);
      goto LABEL_58;
    case 8:
      v260 = 8;
      sub_1C0F3C108();
      v169 = v230;
      v170 = v180;
      sub_1C0F50670();
      if (v170)
      {
        goto LABEL_7;
      }

      (*(v196 + 8))(v169, v197);
      goto LABEL_58;
    case 9:
      v260 = 9;
      sub_1C0F3C0B4();
      v142 = v233;
      v143 = v180;
      sub_1C0F50670();
      if (v143)
      {
        goto LABEL_7;
      }

      (*(v198 + 8))(v142, v199);
      goto LABEL_58;
    case 10:
      v260 = 10;
      sub_1C0F3C060();
      v167 = v234;
      v168 = v180;
      sub_1C0F50670();
      if (v168)
      {
        goto LABEL_7;
      }

      (*(v200 + 8))(v167, v201);
      goto LABEL_58;
    case 11:
      v260 = 11;
      sub_1C0F3C00C();
      v136 = v235;
      v137 = v180;
      sub_1C0F50670();
      if (v137)
      {
        goto LABEL_7;
      }

      (*(v202 + 8))(v136, v203);
      goto LABEL_58;
    case 12:
      v260 = 12;
      sub_1C0F3BFB8();
      v140 = v236;
      v141 = v180;
      sub_1C0F50670();
      if (v141)
      {
        goto LABEL_7;
      }

      (*(v204 + 8))(v140, v205);
      goto LABEL_58;
    case 13:
      v260 = 13;
      sub_1C0F3BF64();
      v162 = v237;
      v163 = v180;
      sub_1C0F50670();
      if (v163)
      {
        goto LABEL_7;
      }

      (*(v206 + 8))(v162, v207);
      goto LABEL_58;
    case 14:
      v260 = 14;
      sub_1C0F3BF10();
      v134 = v238;
      v135 = v180;
      sub_1C0F50670();
      if (v135)
      {
        goto LABEL_7;
      }

      (*(v208 + 8))(v134, v209);
      goto LABEL_58;
    case 15:
      v260 = 15;
      sub_1C0F3BEBC();
      v148 = v239;
      v149 = v180;
      sub_1C0F50670();
      if (v149)
      {
        goto LABEL_7;
      }

      (*(v210 + 8))(v148, v211);
      goto LABEL_58;
    case 16:
      v260 = 16;
      sub_1C0F3BE68();
      v132 = v240;
      v133 = v180;
      sub_1C0F50670();
      if (v133)
      {
        goto LABEL_7;
      }

      (*(v212 + 8))(v132, v213);
      goto LABEL_58;
    case 17:
      v260 = 17;
      sub_1C0F3BE14();
      v154 = v241;
      v155 = v180;
      sub_1C0F50670();
      if (v155)
      {
        goto LABEL_7;
      }

      (*(v214 + 8))(v154, v215);
      goto LABEL_58;
    case 18:
      v260 = 18;
      sub_1C0F3BDC0();
      v165 = v242;
      v166 = v180;
      sub_1C0F50670();
      if (v166)
      {
        goto LABEL_7;
      }

      (*(v216 + 8))(v165, v217);
      goto LABEL_58;
    case 19:
      v260 = 19;
      sub_1C0F3BD6C();
      v173 = v243;
      v174 = v180;
      sub_1C0F50670();
      if (v174)
      {
        goto LABEL_7;
      }

      (*(v218 + 8))(v173, v219);
      goto LABEL_58;
    case 20:
      v260 = 20;
      sub_1C0F3BD18();
      v156 = v244;
      v157 = v180;
      sub_1C0F50670();
      if (v157)
      {
        goto LABEL_7;
      }

      (*(v220 + 8))(v156, v221);
      goto LABEL_58;
    case 21:
      v260 = 21;
      sub_1C0F3BCC4();
      v160 = v245;
      v161 = v180;
      sub_1C0F50670();
      if (v161)
      {
        goto LABEL_7;
      }

      (*(v222 + 8))(v160, v223);
      goto LABEL_58;
    case 22:
      v260 = 22;
      sub_1C0F3BC70();
      v171 = v246;
      v172 = v180;
      sub_1C0F50670();
      if (v172)
      {
        goto LABEL_7;
      }

      (*(v224 + 8))(v171, v225);
      goto LABEL_58;
    case 23:
      v260 = 23;
      sub_1C0F3BC1C();
      v175 = v247;
      v176 = v180;
      sub_1C0F50670();
      if (v176)
      {
        goto LABEL_7;
      }

      (*(v226 + 8))(v175, v227);
LABEL_58:
      (*(v255 + 8))(v120, v106);
      swift_unknownObjectRelease();
      v130 = v254;
      goto LABEL_59;
    case 24:
      v260 = 24;
      sub_1C0F3BBC8();
      v144 = v248;
      v145 = v180;
      sub_1C0F50670();
      if (v145)
      {
        (*(v255 + 8))(v120, v106);
        swift_unknownObjectRelease();
        v130 = v254;
      }

      else
      {
        (*(v228 + 8))(v144, v119);
        (*(v255 + 8))(v120, v106);
        swift_unknownObjectRelease();
        v130 = v254;
LABEL_59:
        *v118 = v124;
      }

      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v130);
}